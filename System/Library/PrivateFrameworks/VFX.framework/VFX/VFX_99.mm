uint64_t sub_1AF8A40DC(void *a1)
{
  v1 = [a1 members];
  sub_1AF8AB4DC();
  v2 = sub_1AFDFD418();

  if (v2 >> 62)
  {
    v3 = sub_1AFDFE108();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v89 = v2;
  if (v3)
  {
    v4 = 0;
    v93 = v2 & 0xC000000000000001;
    v91 = v2 + 32;
    v95 = MEMORY[0x1E69E7CC0];
    v92 = v3;
    while (1)
    {
      v94 = v4;
      if (v93)
      {
        v5 = MEMORY[0x1B2719C70](v4, v89);
      }

      else
      {
        v5 = *(v91 + 8 * v4);
      }

      v6 = v5;
      v7 = [v5 structType];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1AF8A40DC();

        goto LABEL_11;
      }

      v17 = [v6 arrayType];
      if (!v17)
      {
        v84 = v6;
        sub_1AF8AB110(v84, &v113);
        v85 = v114;
        if (v114)
        {
          v86 = v113;
          sub_1AF8AB7E4(0, &qword_1ED721EB0, &type metadata for ShaderArgument, MEMORY[0x1E69E6F90]);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_1AFE431C0;
          *(v9 + 32) = v86;
          *(v9 + 40) = v85;
          v87 = v116[0];
          *(v9 + 48) = v115;
          *(v9 + 64) = v87;
          *(v9 + 73) = *(v116 + 9);
        }

        else
        {
          v9 = MEMORY[0x1E69E7CC0];
        }

        v6 = v84;
        goto LABEL_11;
      }

      v90 = v6;
      v6 = v17;
      v96 = [v17 arrayLength];
      if (v96)
      {
        break;
      }

      v9 = MEMORY[0x1E69E7CC0];
LABEL_11:

      v10 = v9;
      v11 = *(v9 + 16);
      v12 = v95;
      v13 = *(v95 + 2);
      v14 = v13 + v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v14 > *(v95 + 3) >> 1)
      {
        if (v13 <= v14)
        {
          v16 = v13 + v11;
        }

        else
        {
          v16 = v13;
        }

        v12 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v16, 1, v95);
      }

      v95 = v12;
      if (*(v10 + 16))
      {
        swift_arrayInitWithCopy();

        if (v11)
        {
          *(v12 + 2) += v11;
        }
      }

      else
      {
      }

      v4 = v94 + 1;
      if (v94 + 1 == v92)
      {
        goto LABEL_127;
      }
    }

    v97 = v6;
    v18 = 0;
    v99 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v98 = v18;
      v20 = [v97 elementStructType];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1AF8A40DC();
        goto LABEL_110;
      }

      v23 = [v97 elementArrayType];
      if (!v23)
      {
        goto LABEL_129;
      }

      v101 = v23;
      v100 = [v23 arrayLength];
      if (v100)
      {
        break;
      }

      v22 = MEMORY[0x1E69E7CC0];
      v21 = v101;
LABEL_110:

      v78 = v22;
      v79 = *(v22 + 16);
      v9 = v99;
      v80 = *(v99 + 16);
      v81 = v80 + v79;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      if ((v82 & 1) == 0 || v81 > *(v99 + 24) >> 1)
      {
        if (v80 <= v81)
        {
          v83 = v80 + v79;
        }

        else
        {
          v83 = v80;
        }

        v9 = sub_1AF4265B0(v82, v83, 1, v99);
      }

      v99 = v9;
      if (*(v78 + 16))
      {
        swift_arrayInitWithCopy();

        v19 = v98;
        if (v79)
        {
          *(v9 + 16) += v79;
        }
      }

      else
      {

        v19 = v98;
      }

      v18 = v19 + 1;
      if (v18 == v96)
      {

        v6 = v97;
        goto LABEL_11;
      }
    }

    v24 = 0;
    v103 = MEMORY[0x1E69E7CC0];
    v21 = v101;
    while (1)
    {
      v102 = v24;
      v26 = [v21 elementStructType];
      if (v26)
      {
        v27 = v26;
        v28 = sub_1AF8A40DC();
        goto LABEL_34;
      }

      v35 = [v21 elementArrayType];
      if (!v35)
      {
        goto LABEL_129;
      }

      v105 = v35;
      v104 = [v35 arrayLength];
      if (v104)
      {
        break;
      }

      v28 = MEMORY[0x1E69E7CC0];
      v27 = v105;
LABEL_34:

      v29 = *(v28 + 2);
      v30 = v103;
      v31 = *(v103 + 2);
      v32 = v31 + v29;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      if ((v33 & 1) == 0 || v32 > *(v103 + 3) >> 1)
      {
        if (v31 <= v32)
        {
          v34 = v31 + v29;
        }

        else
        {
          v34 = v31;
        }

        v30 = sub_1AF4265B0(v33, v34, 1, v103);
      }

      v103 = v30;
      if (*(v28 + 2))
      {
        swift_arrayInitWithCopy();

        v25 = v102;
        if (v29)
        {
          *(v30 + 2) += v29;
        }
      }

      else
      {

        v25 = v102;
      }

      v24 = v25 + 1;
      v21 = v101;
      if (v24 == v100)
      {
        v22 = v30;
        goto LABEL_110;
      }
    }

    v36 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v27 = v105;
    while (1)
    {
      v108 = v36;
      v38 = [v27 elementStructType];
      if (!v38)
      {
        break;
      }

      v39 = v38;
      v40 = sub_1AF8A40DC();
LABEL_50:

      v41 = *(v40 + 2);
      v42 = *(v28 + 2);
      v43 = v42 + v41;
      v44 = swift_isUniquelyReferenced_nonNull_native();
      if (v44 && v43 <= *(v28 + 3) >> 1)
      {
        if (*(v40 + 2))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v42 <= v43)
        {
          v45 = v42 + v41;
        }

        else
        {
          v45 = v42;
        }

        v28 = sub_1AF4265B0(v44, v45, 1, v28);
        if (*(v40 + 2))
        {
LABEL_58:
          swift_arrayInitWithCopy();

          v37 = v108;
          if (v41)
          {
            *(v28 + 2) += v41;
          }

          goto LABEL_47;
        }
      }

      v37 = v108;
LABEL_47:
      v36 = v37 + 1;
      v27 = v105;
      if (v36 == v104)
      {
        goto LABEL_34;
      }
    }

    v46 = [v27 elementArrayType];
    if (!v46)
    {
      goto LABEL_129;
    }

    v39 = v46;
    v110 = [v46 arrayLength];
    if (!v110)
    {
      v40 = MEMORY[0x1E69E7CC0];
      goto LABEL_50;
    }

    v47 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v106 = v39;
    v107 = v28;
    while (1)
    {
      v49 = [v39 elementStructType];
      v111 = v47;
      if (!v49)
      {
        break;
      }

      v50 = v49;
      v51 = sub_1AF8A40DC();
LABEL_96:

      v73 = *(v51 + 2);
      v74 = *(v40 + 2);
      v75 = v74 + v73;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      if (v76 && v75 <= *(v40 + 3) >> 1)
      {
        if (*(v51 + 2))
        {
          goto LABEL_104;
        }
      }

      else
      {
        if (v74 <= v75)
        {
          v77 = v74 + v73;
        }

        else
        {
          v77 = v74;
        }

        v40 = sub_1AF4265B0(v76, v77, 1, v40);
        if (*(v51 + 2))
        {
LABEL_104:
          swift_arrayInitWithCopy();

          v48 = v111;
          if (v73)
          {
            *(v40 + 2) += v73;
          }

          goto LABEL_64;
        }
      }

      v48 = v111;
LABEL_64:
      v47 = v48 + 1;
      if ((v48 + 1) == v110)
      {
        goto LABEL_50;
      }
    }

    v52 = [v39 elementArrayType];
    if (v52)
    {
      v50 = v52;
      v53 = [v52 arrayLength];
      if (!v53)
      {
        v51 = MEMORY[0x1E69E7CC0];
        goto LABEL_96;
      }

      v54 = v53;
      v109 = v40;
      v55 = 0;
      v51 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v56 = [v50 elementStructType];
        if (v56)
        {
          v57 = v56;
          v58 = sub_1AF8A40DC();
        }

        else
        {
          v59 = [v50 elementArrayType];
          if (!v59)
          {
            break;
          }

          v60 = v59;
          v61 = [v59 arrayLength];
          v62 = MEMORY[0x1E69E7CC0];
          v112 = MEMORY[0x1E69E7CC0];
          if (v61)
          {
            v63 = v61;
            do
            {
              v66 = [v60 elementStructType];
              if (v66)
              {
                v64 = v66;
                v65 = sub_1AF8A40DC();
              }

              else
              {
                v67 = [v60 elementArrayType];
                if (!v67)
                {
                  goto LABEL_129;
                }

                v65 = sub_1AF8A0940(0, [v67 arrayLength], v67);
              }

              sub_1AF490A6C(v65);
              --v63;
            }

            while (v63);

            v58 = v112;
          }

          else
          {

            v58 = v62;
          }
        }

        v68 = *(v58 + 16);
        v69 = *(v51 + 2);
        v70 = v69 + v68;
        v71 = swift_isUniquelyReferenced_nonNull_native();
        if (v71 && v70 <= *(v51 + 3) >> 1)
        {
          if (*(v58 + 16))
          {
            goto LABEL_92;
          }
        }

        else
        {
          if (v69 <= v70)
          {
            v72 = v69 + v68;
          }

          else
          {
            v72 = v69;
          }

          v51 = sub_1AF4265B0(v71, v72, 1, v51);
          if (*(v58 + 16))
          {
LABEL_92:
            swift_arrayInitWithCopy();

            if (v68)
            {
              *(v51 + 2) += v68;
            }

            goto LABEL_71;
          }
        }

LABEL_71:
        if (++v55 == v54)
        {
          v39 = v106;
          v28 = v107;
          v40 = v109;
          goto LABEL_96;
        }
      }
    }

LABEL_129:
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v95 = MEMORY[0x1E69E7CC0];
LABEL_127:

    return v95;
  }

  return result;
}

uint64_t sub_1AF8A4AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7365756C6176;
  v5 = 0x80000001AFF23440;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001AFF23440;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7470697263736564;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEC000000736E6F69;
  }

  v8 = 0x7365756C6176;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7470697263736564;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000736E6F69;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8A4BB0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8A4C5C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8A4CF4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8A4D9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8A9B04();
  *a1 = result;
  return result;
}

void sub_1AF8A4DCC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000736E6F69;
  v4 = 0xE600000000000000;
  v5 = 0x7365756C6176;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001AFF23440;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7470697263736564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1AF8A4E34()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7470697263736564;
  }
}

uint64_t sub_1AF8A4E98@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8A9B04();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8A4EC0(uint64_t a1)
{
  v2 = sub_1AF8AB5B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8A4EFC(uint64_t a1)
{
  v2 = sub_1AF8AB5B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8A4F38(void *a1)
{
  v3 = v1;
  sub_1AF8AC5D0(0, &qword_1EB63FDD0, sub_1AF8AB5B0, &type metadata for CustomParameters.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AB5B0();
  sub_1AFDFF3F8();
  v14 = v3[2];
  v13 = 0;
  sub_1AF8AB7E4(0, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
  sub_1AF8AB924();
  sub_1AFDFE918();
  if (!v2)
  {
    v14 = v3[3];
    v13 = 1;
    sub_1AF8AB7E4(0, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    sub_1AF8ABA14();
    sub_1AFDFE918();
    v14 = v3[4];
    v13 = 2;
    sub_1AF8AB7E4(0, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
    sub_1AF8ABB04();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF8A51C4(void *a1)
{
  sub_1AF8AC5D0(0, &unk_1ED721EF0, sub_1AF8AB5B0, &type metadata for CustomParameters.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v18 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v17 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AB5B0();
  v8 = v19;
  v9 = v1;
  sub_1AFDFF3B8();
  if (v8)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v18;
    sub_1AF8AB7E4(0, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
    v20 = 0;
    sub_1AF8AB604();
    sub_1AFDFE768();
    v11 = v7;
    *(v1 + 16) = v21;
    sub_1AF8AB7E4(0, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    v20 = 1;
    sub_1AF8AB6F4();
    sub_1AFDFE768();
    v12 = v10;
    *(v1 + 24) = v21;
    v14 = a1[3];
    v15 = a1[4];
    sub_1AF441150(a1, v14);
    if (sub_1AF694FF8(2021, v14, v15))
    {
      sub_1AF8AB7E4(0, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
      v20 = 2;
      sub_1AF8AB834();
      sub_1AFDFE6E8();
      if (v21)
      {
        v16 = v21;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      (*(v12 + 8))(v11, v4);
    }

    else
    {
      (*(v12 + 8))(v11, v4);
      v16 = MEMORY[0x1E69E7CC0];
    }

    *(v9 + 32) = v16;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t getEnumTagSinglePayload for ShaderParameter(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 65))
  {
    return (*a1 + 15);
  }

  v3 = ((*(a1 + 64) >> 3) & 0xE | (*(a1 + 64) >> 7)) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ShaderParameter(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 64) = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t initializeWithCopy for ShaderArgument(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for ShaderArgument(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *(a1 + 24) = v4;
  return a1;
}

uint64_t assignWithTake for ShaderArgument(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderArgument(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ShaderArgument(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for ShaderArguments()
{

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for ShaderArguments(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  *(a1 + 48) = *(a2 + 48);

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  return a1;
}

uint64_t assignWithCopy for ShaderArguments(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 initializeWithTake for ShaderArguments(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for ShaderArguments(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for ShaderArguments(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for ShaderArguments(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF8A5B04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_1AF8A51C4(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_1AF8A5B80(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v4;
  v7[4] = v6;
  v8 = *(v4 + 2);
  if (v8)
  {

    v9 = 0;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AFC0D990(v4);
      }

      v10 = &v4[v9];
      if (v4[v9 + 96] < 0)
      {
        v13 = *(v10 + 4);
        ObjectType = swift_getObjectType();
        (*(a2 + 8))(&v13, 0, ObjectType, a2);
        *(v10 + 4) = v13;
        v10[96] = v5 & 0xF | 0x80;
        LOBYTE(v5) = v5 & 0xF | 0x80;
      }

      v9 += 80;
      --v8;
    }

    while (v8);
    v7[3] = v4;
  }

  else
  {
  }

  return v7;
}

void sub_1AF8A5CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v341 = a5;
  v342 = a3;
  v369 = *MEMORY[0x1E69E9840];
  sub_1AF0D4E74();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v14, v15);
  v19 = &v312 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    return;
  }

  v332.i64[0] = v17;
  v333 = v19;
  v334 = v16;
  v343 = v5;
  v20 = *(a1 + 8);
  v21 = *(v20 + 176);
  v22 = *(v20 + 200);
  v23 = *(v20 + 208);
  v24 = *(a4 + 16);

  MinConstantBufferAlignment = CFXGPUDeviceGetMinConstantBufferAlignment(v24, v25, v26, v27);
  v29 = (MinConstantBufferAlignment - 1 + v21) & -MinConstantBufferAlignment;
  v30 = (MinConstantBufferAlignment - 1 + v22) & -MinConstantBufferAlignment;
  if (v23)
  {
    v30 = 0;
  }

  if (v29 + v30 < 1)
  {

    return;
  }

  v330 = v13;
  v331 = v10;
  sub_1AF8BA308(v29 + v30, a4);
  v32 = *(v20 + 160);
  v31 = *(v20 + 168);
  v33 = *(v20 + 176);
  v34 = *(v20 + 184);
  v35 = *(v20 + 192);
  v36 = *(v20 + 208);
  v337 = v31;
  v335 = v34;
  v336 = v35;
  if (v36 != 1)
  {
    v55 = *(v20 + 200);
    if (v33 <= 0)
    {
      if (v55 < 1)
      {
        goto LABEL_42;
      }

      swift_unknownObjectRetain();
      v326 = v32;

      swift_unknownObjectRetain();

      v76 = 0;
LABEL_203:
      v216 = *(a2 + 152);
      if (!v216 || (v217 = *(a2 + 168) + 24 * *(a2 + 184), v220 = *(v217 + 32), v219 = v217 + 32, (v218 = v220) == 0))
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v230 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v308 = v230;
          swift_once();
          v230 = v308;
        }

        *&v359 = 0;
        sub_1AF0D4F18(v230, &v359, 0xD00000000000002FLL, 0x80000001AFF38DC0);
        goto LABEL_293;
      }

      v221 = v35;
      v340.i32[0] = v76;
      v315 = *(v219 + 8);
      v222 = (v55 + *(a2 + 176) - 1) & -*(a2 + 176);
      v223 = *(a2 + 144);
      v224 = v223 + *(a2 + 160);
      *(a2 + 144) = v222 + v223;
      v320 = v218;
      swift_unknownObjectRetain();
      v324 = v222;
      if (!v221)
      {
        v342 = v224;
        v231 = [swift_unknownObjectRetain() storageMode];
        swift_unknownObjectRelease();
        LOBYTE(v76) = v340.i8[0];
        if (v231 == 2)
        {
          swift_unknownObjectRelease();

LABEL_294:
          swift_unknownObjectRelease();
          goto LABEL_295;
        }

        *&v314 = v223;
        v232 = [swift_unknownObjectRetain() contents];
        v233 = v216;
        v234 = v343;
        v235 = *(v343 + 16);
        if (*(v235 + 16))
        {
          v327 = a2;
          v329 = a4;
          v236 = 0;
          v237 = 32;
          v238 = 32;
          v239 = v232 + v342;
          do
          {
            v241 = (v235 + v238);
            v242 = *v241;
            v243 = v241[1];
            v244 = v241[2];
            *(v366 + 9) = *(v241 + 41);
            v365 = v243;
            v366[0] = v244;
            v364 = v242;
            v245 = (*(v234 + 24) + v237);
            v354 = *v245;
            v355 = v245[1];
            v356 = v245[2];
            v357 = v245[3];
            v358 = v245[4].i8[0];
            *v353 = v241[2];
            *&v353[9] = *(v241 + 41);
            v351 = *v241;
            v352 = v241[1];
            v359 = v351;
            v360 = v352;
            v362[2] = v356;
            v362[3] = v357;
            v363 = v358;
            v361[0] = *v353;
            v361[1] = *&v353[16];
            v362[0] = v354;
            v362[1] = v355;
            if ((v353[24] & 1) != 0 || v363 < 0)
            {
              sub_1AF8A9E80(&v364, &v351);
            }

            else
            {
              v246 = *(&v361[0] + 1);
              *v367 = v362[0];
              *&v367[16] = v362[1];
              *&v367[32] = v362[2];
              *&v367[48] = v362[3];
              v368 = v363;
              if (v363 == 14 && v362[0].u32[0] == 0xFFFFFFFFLL)
              {
                sub_1AF8A9E80(&v364, &v351);
                v234 = v343;
              }

              else
              {
                sub_1AF8A9E80(&v364, &v351);
                sub_1AF87CFFC(v367, v239, v246);
                v234 = v343;
              }
            }

            ++v236;
            sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
            v235 = *(v234 + 16);
            v238 += 64;
            v237 += 80;
            v240 = v324;
          }

          while (v236 != *(v235 + 16));
          a2 = v327;
        }

        else
        {
          v240 = v324;
        }

        goto LABEL_292;
      }

      *&v314 = v223;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v225 = v221;
      sub_1AF471B58(v216, v224, 0);
      v226 = *(a2 + 136);
      v325.i64[0] = a2 + 136;
      if ((v226 & 0x8000000000000000) != 0)
      {
        v227 = v343;
      }

      else
      {
        v227 = v343;
        if ((v226 & 0x4000000000000000) == 0)
        {
          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          v226 = *v325.i64[0];
          if (isUniquelyReferenced_nonNull_bridgeObject)
          {
            if (v226 >> 62)
            {
              v229 = sub_1AFDFE108();
            }

            else
            {
              v229 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            sub_1AF64E3CC(0, v229);
LABEL_234:
            LOBYTE(v76) = v340.i8[0];
            v249 = *(v227 + 16);
            if (*(v249 + 16))
            {
              v319 = v342 + OBJC_IVAR____TtC3VFX13EntityManager__entries;
              v318 = "Unsupported texture type ";
              *&v317 = v332.i64[0] + 32;
              v250 = 1;
              v251 = 32;
              v316 = xmmword_1AFE431C0;
              v252 = 32;
              v329 = a4;
              v327 = a2;
              while (1)
              {
                v338.i64[0] = v252;
                v253 = (v249 + v252);
                v254 = *v253;
                v255 = v253[1];
                v256 = v253[2];
                *&v367[41] = *(v253 + 41);
                *&v367[16] = v255;
                *&v367[32] = v256;
                *v367 = v254;
                v257 = (*(v227 + 24) + v251);
                v354 = *v257;
                v355 = v257[1];
                v356 = v257[2];
                v357 = v257[3];
                v358 = v257[4].i8[0];
                *v353 = v253[2];
                *&v353[9] = *(v253 + 41);
                v351 = *v253;
                v352 = v253[1];
                v359 = v351;
                v360 = v352;
                v362[2] = v356;
                v362[3] = v357;
                v363 = v358;
                v361[0] = *v353;
                v361[1] = *&v353[16];
                v362[0] = v354;
                v362[1] = v355;
                v340.i64[0] = v250;
                v339.i64[0] = v251;
                if ((v358 & 0x80) == 0)
                {
                  v258 = v362[1].i64[0];
                  v259 = v354.i32[0];
                  switch(v358)
                  {
                    case 1:
                      v294 = v360;
                      v332 = v354;
                      sub_1AF8A9E80(v367, &v351);
                      v295 = [v225 constantDataAtIndex_];
                      *v295 = v332.i64[0];
                      break;
                    case 2:
                    case 3:
                    case 4:
                      v260 = v360;
                      v332 = v354;
                      sub_1AF8A9E80(v367, &v351);
                      v261 = [v225 constantDataAtIndex_];
                      *v261 = v332;
                      break;
                    case 5:
                    case 6:
                      v279 = v360;
                      v332 = v354;
                      v328 = v362[1];
                      sub_1AF8A9E80(v367, &v351);
                      v280 = [v225 constantDataAtIndex_];
                      v281 = v328;
                      *v280 = v332;
                      v280[1] = v281;
                      break;
                    case 7:
                      v297 = v360;
                      v332 = v354;
                      sub_1AF8A9E80(v367, &v351);
                      v298 = [v225 constantDataAtIndex_];
                      *v298 = v332;
                      v298[1].i64[0] = v258;
                      break;
                    case 8:
                    case 9:
                      v286 = v360;
                      v332 = v354;
                      v328 = v362[1];
                      v323 = v362[2];
                      sub_1AF8A9E80(v367, &v351);
                      v287 = [v225 constantDataAtIndex_];
                      v288 = v328;
                      *v287 = v332;
                      v287[1] = v288;
                      v287[2] = v323;
                      break;
                    case 10:
                      v323 = vextq_s8(v354, v354, 8uLL);
                      v291 = v360;
                      v332 = v354;
                      v328 = v362[1];
                      sub_1AF8A9E80(v367, &v351);
                      v292 = [v225 constantDataAtIndex_];
                      *&v293 = v332.i64[0];
                      *(&v293 + 1) = v323.i64[0];
                      *v292 = v293;
                      v292[2] = v258;
                      v292[3] = v328.i64[1];
                      break;
                    case 11:
                    case 12:
                      v282 = v360;
                      v332 = v354;
                      v328 = v362[1];
                      v322 = v362[3];
                      v323 = v362[2];
                      sub_1AF8A9E80(v367, &v351);
                      v283 = [v225 constantDataAtIndex_];
                      v284 = v328;
                      *v283 = v332;
                      v283[1] = v284;
                      v285 = v322;
                      v283[2] = v323;
                      v283[3] = v285;
                      break;
                    case 13:
                      v344 = v354.i16[0];
                      v289 = v354.i8[0] & 1;
                      v290 = v360;
                      sub_1AF8A9E80(v367, &v351);
                      *[v225 constantDataAtIndex_] = v289;
                      break;
                    case 14:
                      if (v354.i32[0] != -1)
                      {
                        goto LABEL_272;
                      }

                      sub_1AF8A9E80(v367, &v351);
                      break;
                    default:
LABEL_272:
                      v296 = v360;
                      sub_1AF8A9E80(v367, &v351);
                      *[v225 constantDataAtIndex_] = v259;
                      break;
                  }

                  sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
                  v227 = v343;
                  goto LABEL_287;
                }

                v262 = v354.u32[0];
                v263 = v354.u32[1];
                if (BYTE8(v361[1]))
                {
                  v173 = *(&v360 + 1);
                }

                else
                {
                  v173 = 0;
                }

                sub_1AF8A9E80(v367, &v351);
                v264 = sub_1AF8D93C8(v262 | (v263 << 32), &v351, v342, a4);
                if (!v264)
                {
                  if (v173 > 4)
                  {
                    v225 = v336;
                    if (v173 == 5)
                    {

                      v267 = sub_1AF7097AC();
                    }

                    else
                    {
                      if (v173 != 7)
                      {
                        goto LABEL_308;
                      }

                      v267 = sub_1AF7094F0();
                    }
                  }

                  else
                  {
                    v225 = v336;
                    if (v173)
                    {
                      if (v173 != 2)
                      {
                        goto LABEL_308;
                      }

                      v267 = sub_1AF70924C();
                    }

                    else
                    {

                      v267 = sub_1AF708F90();
                    }
                  }

                  v266 = v267;

                  swift_unknownObjectRetain();
                  goto LABEL_279;
                }

                v265 = v264;
                if ([v264 textureType] == v173)
                {
                  swift_unknownObjectRetain();
                  v266 = v265;
                  if (v262 == -1)
                  {
                    goto LABEL_256;
                  }
                }

                else
                {
                  v332.i64[0] = v173;
                  v328.i64[0] = v263;
                  if (qword_1ED730EA0 != -1)
                  {
                    swift_once();
                  }

                  *&v351 = 0;
                  *(&v351 + 1) = 0xE000000000000000;
                  sub_1AFDFE218();
                  MEMORY[0x1B2718AE0](0xD000000000000024, v318 | 0x8000000000000000);
                  *&v364 = v360;
                  v268 = sub_1AFDFEA08();
                  MEMORY[0x1B2718AE0](v268);

                  MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
                  *&v364 = [v265 textureType];
                  type metadata accessor for MTLTextureType(0);
                  sub_1AFDFE458();
                  MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
                  *&v364 = v332.i64[0];
                  sub_1AFDFE458();
                  MEMORY[0x1B2718AE0](41, 0xE100000000000000);
                  v269 = v351;
                  v270 = sub_1AFDFDA08();
                  if (qword_1ED731058 != -1)
                  {
                    swift_once();
                  }

                  v322.i64[0] = v265;
                  v323.i64[0] = v262;
                  if (qword_1ED730E98 != -1)
                  {
                    swift_once();
                  }

                  sub_1AF6EFB60();
                  v271 = swift_allocObject();
                  *(v271 + 16) = v316;
                  *(v271 + 56) = MEMORY[0x1E69E6158];
                  *(v271 + 64) = sub_1AF0D544C();
                  *(v271 + 32) = v269;

                  sub_1AFDFC4C8();

                  v262 = v333;
                  sub_1AFDFC288();
                  v272 = v331[12];
                  v321.i64[0] = *(&v269 + 1);
                  v273 = v331[16];
                  v274 = v270;
                  v275 = v330;
                  v276 = &v330[v331[20]];
                  (*v317)(v330, v262, v334);
                  *(v275 + v272) = v274;
                  *(v275 + v273) = 0;
                  v277 = v321.i64[0];
                  *v276 = v269;
                  *(v276 + 1) = v277;
                  sub_1AFDFC608();

                  sub_1AF8AB47C(v275, sub_1AF0D4E74);
                  a4 = v329;

                  v266 = sub_1AF8DC0E8(v332.i64[0]);

                  a2 = v327;
                  LODWORD(v263) = v328.i32[0];
                  v227 = v343;
                  LODWORD(v262) = v323.i32[0];
                  if (v323.i32[0] == -1)
                  {
LABEL_256:
                    if (!v263)
                    {
                      goto LABEL_262;
                    }
                  }
                }

                if ((v262 & 0x80000000) == 0 && *(v319 + 8) > v262)
                {
                  v278 = *v319 + 12 * v262;
                  v225 = v336;
                  if (v263 == -1 || *(v278 + 8) == v263)
                  {
                    v301 = *(*(*(v342 + 88) + 8 * *(v278 + 6) + 32) + 16);
                    v302 = *(v301 + 128);
                    if (*(v302 + 16) && (v303 = sub_1AF449CB8(&type metadata for MovieFileAsset), (v304 & 1) != 0))
                    {
                      v305 = *(*(v301 + 24) + 16 * *(*(v302 + 56) + 8 * v303) + 32);
                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                      LOBYTE(v76) = v305 == &type metadata for MovieFileAsset;
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                      LOBYTE(v76) = 0;
                    }

                    v227 = v343;
                  }

                  else
                  {
                    swift_unknownObjectRetain();
                    swift_unknownObjectRelease();
                    LOBYTE(v76) = 0;
                  }

                  goto LABEL_279;
                }

LABEL_262:
                swift_unknownObjectRetain();
                swift_unknownObjectRelease();
                LOBYTE(v76) = 0;
                v225 = v336;
LABEL_279:
                v299 = [v225 setTexture:v266 atIndex:v360];
                v300 = v325.i64[0];
                MEMORY[0x1B2718E00](v299);
                if (*((*v300 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v300 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1AFDFD458();
                  v227 = v343;
                }

                sub_1AFDFD4B8();
                sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
                swift_unknownObjectRelease();
LABEL_287:
                v249 = *(v227 + 16);
                if (v340.i64[0] == *(v249 + 16))
                {
                  break;
                }

                v250 = v340.i64[0] + 1;
                v252 = v338.i64[0] + 64;
                v251 = v339.i64[0] + 80;
              }
            }

            swift_unknownObjectRelease();
            v240 = v324;
LABEL_292:
            *&v359 = v320;
            *(&v359 + 1) = &v315[v314];
            v360 = v240;
            LOBYTE(v361[0]) = 0;
            sub_1AF88BB90(&v359, 2, 0);
            swift_unknownObjectRelease();
LABEL_293:

            swift_unknownObjectRelease();
            goto LABEL_294;
          }
        }
      }

      if (v226 >> 62)
      {
        v311 = sub_1AFDFE108();
        sub_1AFDFE108();
        sub_1AFDFE108();
        v247 = v311;
      }

      else
      {
        v247 = *((v226 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      v248 = sub_1AFC892CC(0, v247);

      *v325.i64[0] = v248;
      goto LABEL_234;
    }

    v329 = a4;
    v56 = v32;
    v57 = *(a2 + 152);
    if (v57 && (v58 = *(a2 + 168) + 24 * *(a2 + 184), v61 = *(v58 + 32), v59 = v58 + 32, (v60 = v61) != 0))
    {
      v319 = v55;
      v313 = *(v59 + 8);
      v62 = (v33 + *(a2 + 176) - 1) & -*(a2 + 176);
      v63 = *(a2 + 144);
      v64 = v60;
      v65 = v31;
      v66 = v63 + *(a2 + 160);
      v312 = v63;
      *(a2 + 144) = v62 + v63;

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      v318 = v64;
      swift_unknownObjectRetain();
      v323.i64[0] = v62;
      v326 = v56;
      if (v65)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1AF471B58(v57, v66, 0);
        v67 = *(a2 + 136);
        v324 = (a2 + 136);
        v68 = v65;
        if ((v67 & 0x8000000000000000) != 0)
        {
          v69 = v343;
        }

        else
        {
          v69 = v343;
          if ((v67 & 0x4000000000000000) == 0)
          {
            v70 = swift_isUniquelyReferenced_nonNull_bridgeObject();
            v67 = *v324;
            if (v70)
            {
              if (v67 >> 62)
              {
                v71 = sub_1AFDFE108();
              }

              else
              {
                v71 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              sub_1AF64E3CC(0, v71);
LABEL_136:
              v35 = v336;
              v158 = *(v69 + 16);
              if (*(v158 + 16))
              {
                v76 = 0;
                *&v317 = v342 + OBJC_IVAR____TtC3VFX13EntityManager__entries;
                v315 = (v332.i64[0] + 32);
                *&v316 = "Unsupported texture type ";
                v159 = 1;
                v160 = 32;
                v314 = xmmword_1AFE431C0;
                v161 = 32;
                a4 = v329;
                v327 = a2;
                while (1)
                {
                  v338.i64[0] = v161;
                  v162 = (v158 + v161);
                  v163 = *v162;
                  v164 = v162[1];
                  v165 = v162[2];
                  *&v367[41] = *(v162 + 41);
                  *&v367[16] = v164;
                  *&v367[32] = v165;
                  *v367 = v163;
                  v166 = (*(v69 + 24) + v160);
                  v354 = *v166;
                  v355 = v166[1];
                  v356 = v166[2];
                  v357 = v166[3];
                  v358 = v166[4].i8[0];
                  *v353 = v162[2];
                  *&v353[9] = *(v162 + 41);
                  v351 = *v162;
                  v352 = v162[1];
                  v359 = v351;
                  v360 = v352;
                  v362[2] = v356;
                  v362[3] = v357;
                  v363 = v358;
                  v361[0] = *v353;
                  v361[1] = *&v353[16];
                  v362[0] = v354;
                  v362[1] = v355;
                  v340.i64[0] = v159;
                  v339.i64[0] = v160;
                  if ((v358 & 0x80) == 0)
                  {
                    v167 = v362[1].i64[0];
                    v168 = v354.i32[0];
                    switch(v358)
                    {
                      case 1:
                        v204 = v360;
                        v328 = v354;
                        sub_1AF8A9E80(v367, &v351);
                        v205 = [v68 constantDataAtIndex_];
                        *v205 = v328.i64[0];
                        break;
                      case 2:
                      case 3:
                      case 4:
                        v169 = v360;
                        v328 = v354;
                        sub_1AF8A9E80(v367, &v351);
                        v170 = [v68 constantDataAtIndex_];
                        *v170 = v328;
                        break;
                      case 5:
                      case 6:
                        v189 = v360;
                        v328 = v354;
                        v325 = v362[1];
                        sub_1AF8A9E80(v367, &v351);
                        v190 = [v68 constantDataAtIndex_];
                        v191 = v325;
                        *v190 = v328;
                        v190[1] = v191;
                        break;
                      case 7:
                        v207 = v360;
                        v328 = v354;
                        sub_1AF8A9E80(v367, &v351);
                        v208 = [v68 constantDataAtIndex_];
                        *v208 = v328;
                        v208[1].i64[0] = v167;
                        break;
                      case 8:
                      case 9:
                        v196 = v360;
                        v328 = v354;
                        v325 = v362[1];
                        v322 = v362[2];
                        sub_1AF8A9E80(v367, &v351);
                        v197 = [v68 constantDataAtIndex_];
                        v198 = v325;
                        *v197 = v328;
                        v197[1] = v198;
                        v197[2] = v322;
                        break;
                      case 10:
                        v322 = vextq_s8(v354, v354, 8uLL);
                        v201 = v360;
                        v328 = v354;
                        v325 = v362[1];
                        sub_1AF8A9E80(v367, &v351);
                        v202 = [v68 constantDataAtIndex_];
                        *&v203 = v328.i64[0];
                        *(&v203 + 1) = v322.i64[0];
                        *v202 = v203;
                        v202[2] = v167;
                        v202[3] = v325.i64[1];
                        break;
                      case 11:
                      case 12:
                        v192 = v360;
                        v328 = v354;
                        v325 = v362[1];
                        v321 = v362[3];
                        v322 = v362[2];
                        sub_1AF8A9E80(v367, &v351);
                        v193 = [v68 constantDataAtIndex_];
                        v194 = v325;
                        *v193 = v328;
                        v193[1] = v194;
                        v195 = v321;
                        v193[2] = v322;
                        v193[3] = v195;
                        break;
                      case 13:
                        v346 = v354.i16[0];
                        v199 = v354.i8[0] & 1;
                        v200 = v360;
                        sub_1AF8A9E80(v367, &v351);
                        *[v68 constantDataAtIndex_] = v199;
                        break;
                      case 14:
                        if (v354.i32[0] != -1)
                        {
                          goto LABEL_174;
                        }

                        sub_1AF8A9E80(v367, &v351);
                        break;
                      default:
LABEL_174:
                        v206 = v360;
                        sub_1AF8A9E80(v367, &v351);
                        *[v68 constantDataAtIndex_] = v168;
                        break;
                    }

                    sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
                    v69 = v343;
                    goto LABEL_189;
                  }

                  v171 = v354.u32[0];
                  v172 = v354.u32[1];
                  if (BYTE8(v361[1]))
                  {
                    v173 = *(&v360 + 1);
                  }

                  else
                  {
                    v173 = 0;
                  }

                  sub_1AF8A9E80(v367, &v351);
                  v174 = sub_1AF8D93C8(v171 | (v172 << 32), &v351, v342, a4);
                  if (!v174)
                  {
                    if (v173 > 4)
                    {
                      v35 = v336;
                      v68 = v337;
                      if (v173 == 5)
                      {

                        v177 = sub_1AF7097AC();
                      }

                      else
                      {
                        if (v173 != 7)
                        {
LABEL_308:
                          *&v351 = 0;
                          *(&v351 + 1) = 0xE000000000000000;

                          sub_1AFDFE218();
                          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38E30);
                          *&v364 = v173;
                          type metadata accessor for MTLTextureType(0);
                          goto LABEL_310;
                        }

                        v177 = sub_1AF7094F0();
                      }
                    }

                    else
                    {
                      v35 = v336;
                      v68 = v337;
                      if (v173)
                      {
                        if (v173 != 2)
                        {
                          goto LABEL_308;
                        }

                        v177 = sub_1AF70924C();
                      }

                      else
                      {

                        v177 = sub_1AF708F90();
                      }
                    }

                    v176 = v177;

                    swift_unknownObjectRetain();
                    goto LABEL_181;
                  }

                  v175 = v174;
                  if ([v174 textureType] == v173)
                  {
                    swift_unknownObjectRetain();
                    v176 = v175;
                    if (v171 == -1)
                    {
                      goto LABEL_158;
                    }
                  }

                  else
                  {
                    v328.i64[0] = v173;
                    v325.i64[0] = v172;
                    if (qword_1ED730EA0 != -1)
                    {
                      swift_once();
                    }

                    *&v351 = 0;
                    *(&v351 + 1) = 0xE000000000000000;
                    sub_1AFDFE218();
                    MEMORY[0x1B2718AE0](0xD000000000000024, v316 | 0x8000000000000000);
                    *&v364 = v360;
                    v178 = sub_1AFDFEA08();
                    MEMORY[0x1B2718AE0](v178);

                    MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
                    *&v364 = [v175 textureType];
                    type metadata accessor for MTLTextureType(0);
                    sub_1AFDFE458();
                    MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
                    *&v364 = v328.i64[0];
                    sub_1AFDFE458();
                    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
                    v179 = v351;
                    v180 = sub_1AFDFDA08();
                    if (qword_1ED731058 != -1)
                    {
                      swift_once();
                    }

                    v321.i64[0] = v175;
                    v322.i64[0] = v171;
                    if (qword_1ED730E98 != -1)
                    {
                      swift_once();
                    }

                    sub_1AF6EFB60();
                    v181 = swift_allocObject();
                    *(v181 + 16) = v314;
                    *(v181 + 56) = MEMORY[0x1E69E6158];
                    *(v181 + 64) = sub_1AF0D544C();
                    *(v181 + 32) = v179;

                    sub_1AFDFC4C8();

                    v171 = v333;
                    sub_1AFDFC288();
                    v182 = v331[12];
                    v320 = *(&v179 + 1);
                    v183 = v331[16];
                    v184 = v180;
                    v185 = v330;
                    v186 = &v330[v331[20]];
                    (*v315)(v330, v171, v334);
                    *(v185 + v182) = v184;
                    *(v185 + v183) = 0;
                    v187 = v320;
                    *v186 = v179;
                    *(v186 + 1) = v187;
                    sub_1AFDFC608();

                    sub_1AF8AB47C(v185, sub_1AF0D4E74);
                    a4 = v329;

                    v176 = sub_1AF8DC0E8(v328.i64[0]);

                    a2 = v327;
                    v69 = v343;
                    LODWORD(v172) = v325.i32[0];
                    LODWORD(v171) = v322.i32[0];
                    if (v322.i32[0] == -1)
                    {
LABEL_158:
                      if (!v172)
                      {
                        goto LABEL_164;
                      }
                    }
                  }

                  if ((v171 & 0x80000000) == 0 && *(v317 + 8) > v171)
                  {
                    v188 = *v317 + 12 * v171;
                    v35 = v336;
                    if (v172 == -1 || *(v188 + 8) == v172)
                    {
                      v211 = *(*(*(v342 + 88) + 8 * *(v188 + 6) + 32) + 16);
                      v212 = *(v211 + 128);
                      if (*(v212 + 16) && (v213 = sub_1AF449CB8(&type metadata for MovieFileAsset), (v214 & 1) != 0))
                      {
                        v215 = *(*(v212 + 56) + 8 * v213);
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        v76 = *(*(v211 + 24) + 16 * v215 + 32) == &type metadata for MovieFileAsset;
                      }

                      else
                      {
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        v76 = 0;
                      }

                      v68 = v337;
                      v69 = v343;
                    }

                    else
                    {
                      swift_unknownObjectRetain();
                      swift_unknownObjectRelease();
                      v76 = 0;
                      v68 = v337;
                    }

                    goto LABEL_181;
                  }

LABEL_164:
                  swift_unknownObjectRetain();
                  swift_unknownObjectRelease();
                  v76 = 0;
                  v35 = v336;
                  v68 = v337;
LABEL_181:
                  v209 = [v68 setTexture:v176 atIndex:v360];
                  v210 = v324;
                  MEMORY[0x1B2718E00](v209);
                  if (*((*v210 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v210 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1AFDFD458();
                    v69 = v343;
                  }

                  sub_1AFDFD4B8();
                  sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
                  swift_unknownObjectRelease();
LABEL_189:
                  v158 = *(v69 + 16);
                  if (v340.i64[0] == *(v158 + 16))
                  {
                    swift_unknownObjectRelease();
                    v102 = v323.i64[0];
                    goto LABEL_202;
                  }

                  v159 = v340.i64[0] + 1;
                  v161 = v338.i64[0] + 64;
                  v160 = v339.i64[0] + 80;
                }
              }

              swift_unknownObjectRelease();
              v76 = 0;
              v102 = v323.i64[0];
              goto LABEL_201;
            }
          }
        }

        if (v67 >> 62)
        {
          v310 = sub_1AFDFE108();
          sub_1AFDFE108();
          sub_1AFDFE108();
          v156 = v310;
          v68 = v337;
        }

        else
        {
          v156 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        }

        v157 = sub_1AFC892CC(0, v156);

        *v324 = v157;
        goto LABEL_136;
      }

      v78 = [swift_unknownObjectRetain() storageMode];
      swift_unknownObjectRelease();
      if (v78 != 2)
      {
        v94 = [swift_unknownObjectRetain() contents];
        v95 = v57;
        v96 = *(v343 + 16);
        if (*(v96 + 16))
        {
          v327 = a2;
          v97 = 0;
          v98 = 32;
          v99 = 32;
          v100 = &v94[v66];
          v101 = v343;
          v35 = v336;
          a4 = v329;
          do
          {
            v103 = (v96 + v99);
            v104 = *v103;
            v105 = v103[1];
            v106 = v103[2];
            *&v367[41] = *(v103 + 41);
            *&v367[16] = v105;
            *&v367[32] = v106;
            *v367 = v104;
            v107 = (*(v101 + 24) + v98);
            v354 = *v107;
            v355 = v107[1];
            v356 = v107[2];
            v357 = v107[3];
            v358 = v107[4].i8[0];
            *v353 = v103[2];
            *&v353[9] = *(v103 + 41);
            v351 = *v103;
            v352 = v103[1];
            v359 = v351;
            v360 = v352;
            v362[2] = v356;
            v362[3] = v357;
            v363 = v358;
            v361[0] = *v353;
            v361[1] = *&v353[16];
            v362[0] = v354;
            v362[1] = v355;
            if ((v353[24] & 1) != 0 || v363 < 0)
            {
              sub_1AF8A9E80(v367, &v351);
            }

            else
            {
              v108 = *(&v361[0] + 1);
              v109 = v362[0].i32[0];
              switch(v363)
              {
                case 1:
                  v340 = v362[0];
                  sub_1AF8A9E80(v367, &v351);
                  *&v100[v108] = v340.i64[0];
                  break;
                case 2:
                case 3:
                case 4:
                  v340 = v362[0];
                  sub_1AF8A9E80(v367, &v351);
                  *&v100[v108] = v340;
                  break;
                case 5:
                case 6:
                case 10:
                  v110 = &v100[*(&v361[0] + 1)];
                  v339 = v362[1];
                  v340 = v362[0];
                  sub_1AF8A9E80(v367, &v351);
                  v111 = v339;
                  *v110 = v340;
                  v110[1] = v111;
                  break;
                case 7:
                  v338 = vextq_s8(v362[0], v362[0], 8uLL);
                  v339 = v362[1];
                  v117 = &v100[*(&v361[0] + 1)];
                  v340 = v362[0];
                  sub_1AF8A9E80(v367, &v351);
                  v118 = v339.i64[0];
                  *&v119 = v340.i64[0];
                  *(&v119 + 1) = v338.i64[0];
                  *v117 = v119;
                  *(v117 + 2) = v118;
                  break;
                case 8:
                case 9:
                  v115 = &v100[*(&v361[0] + 1)];
                  v339 = v362[1];
                  v340 = v362[0];
                  v338 = v362[2];
                  sub_1AF8A9E80(v367, &v351);
                  v116 = v339;
                  *v115 = v340;
                  v115[1] = v116;
                  v115[2] = v338;
                  break;
                case 11:
                case 12:
                  v112 = &v100[*(&v361[0] + 1)];
                  v339 = v362[1];
                  v340 = v362[0];
                  v338 = v362[2];
                  v328 = v362[3];
                  sub_1AF8A9E80(v367, &v351);
                  v113 = v339;
                  *v112 = v340;
                  v112[1] = v113;
                  v114 = v328;
                  v112[2] = v338;
                  v112[3] = v114;
                  break;
                case 13:
                  v345 = v362[0].i16[0];
                  v120 = v362[0].i8[0] & 1;
                  sub_1AF8A9E80(v367, &v351);
                  v100[v108] = v120;
                  break;
                case 14:
                  if (v362[0].i32[0] != -1)
                  {
                    goto LABEL_72;
                  }

                  sub_1AF8A9E80(v367, &v351);
                  break;
                case 15:
LABEL_72:
                  sub_1AF8A9E80(v367, &v351);
                  *&v100[v108] = v109;
                  break;
                default:
                  v340 = v362[0];
                  sub_1AF8A9E80(v367, &v351);
                  *&v100[v108] = v340.i32[0];
                  break;
              }

              v35 = v336;
            }

            ++v97;
            sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
            v101 = v343;
            v96 = *(v343 + 16);
            v99 += 64;
            v98 += 80;
            v102 = v323.i64[0];
          }

          while (v97 != *(v96 + 16));
          v76 = 0;
          a2 = v327;
LABEL_202:
          *&v348 = v318;
          *(&v348 + 1) = v312 + v313;
          v349 = v102;
          LOBYTE(v350[0]) = 0;
          sub_1AF88BB90(&v348, 2, 0);
          swift_unknownObjectRelease();
          v55 = v319;
          if (v319 <= 0)
          {
            goto LABEL_219;
          }

          goto LABEL_203;
        }

        v76 = 0;
        v102 = v323.i64[0];
        v35 = v336;
LABEL_201:
        a4 = v329;
        goto LABEL_202;
      }

      swift_unknownObjectRelease();
      v55 = v319;
      if (v319 > 0)
      {
        v76 = 0;
        v35 = v336;
        a4 = v329;
        goto LABEL_203;
      }
    }

    else
    {
      v74 = qword_1ED730EA0;

      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (v74 != -1)
      {
        swift_once();
      }

      v75 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v307 = v75;
        swift_once();
        v75 = v307;
      }

      *&v359 = 0;
      sub_1AF0D4F18(v75, &v359, 0xD00000000000002FLL, 0x80000001AFF38DC0);
      if (v55 > 0)
      {
        v326 = v56;
        v76 = 0;
        a4 = v329;
        goto LABEL_203;
      }
    }

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_46:

    LOBYTE(v76) = 0;
    goto LABEL_295;
  }

  if (v33 <= 0)
  {
LABEL_42:
    LOBYTE(v76) = 0;
LABEL_295:
    *(a2 + 209) = v76;
    if (*(a2 + 152))
    {
      if (*(a2 + 164))
      {
        sub_1AF8BA608();
      }
    }

    return;
  }

  v37 = *(a2 + 152);
  if (!v37 || (v38 = *(a2 + 168) + 24 * *(a2 + 184), v41 = *(v38 + 32), v39 = v38 + 32, (v40 = v41) == 0))
  {
    v72 = qword_1ED730EA0;

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    if (v72 != -1)
    {
      swift_once();
    }

    v73 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v306 = v73;
      swift_once();
      v73 = v306;
    }

    *&v359 = 0;
    sub_1AF0D4F18(v73, &v359, 0xD00000000000002FLL, 0x80000001AFF38DC0);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_42;
  }

  v329 = a4;
  v42 = *(v39 + 8);
  v43 = *(a2 + 160);
  v44 = a2;
  v45 = (v33 + *(a2 + 176) - 1) & -*(a2 + 176);
  v46 = *(v44 + 144);
  v47 = v31;
  v48 = &v46[v43];
  v315 = v46;
  *&v316 = v42;
  *(v44 + 144) = &v46[v45];

  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v321.i64[0] = v40;
  swift_unknownObjectRetain();
  v328.i64[0] = v45;
  if (!v47)
  {
    a2 = v44;
    v342 = v48;
    v77 = [swift_unknownObjectRetain() storageMode];
    swift_unknownObjectRelease();
    if (v77 != 2)
    {
      v326 = v32;
      v79 = [swift_unknownObjectRetain() contents];
      v80 = v37;
      v81 = v343;
      v82 = *(v343 + 16);
      if (*(v82 + 16))
      {
        v327 = v44;
        v83 = 0;
        v84 = 32;
        v85 = 32;
        v86 = v79 + v342;
        do
        {
          v88 = (v82 + v85);
          v89 = *v88;
          v90 = v88[1];
          v91 = v88[2];
          *(v366 + 9) = *(v88 + 41);
          v365 = v90;
          v366[0] = v91;
          v364 = v89;
          v92 = (*(v81 + 24) + v84);
          v354 = *v92;
          v355 = v92[1];
          v356 = v92[2];
          v357 = v92[3];
          v358 = v92[4].i8[0];
          *v353 = v88[2];
          *&v353[9] = *(v88 + 41);
          v351 = *v88;
          v352 = v88[1];
          v359 = v351;
          v360 = v352;
          v362[2] = v356;
          v362[3] = v357;
          v363 = v358;
          v361[0] = *v353;
          v361[1] = *&v353[16];
          v362[0] = v354;
          v362[1] = v355;
          if ((v353[24] & 1) != 0 || v363 < 0)
          {
            sub_1AF8A9E80(&v364, &v351);
          }

          else
          {
            v93 = *(&v361[0] + 1);
            *v367 = v362[0];
            *&v367[16] = v362[1];
            *&v367[32] = v362[2];
            *&v367[48] = v362[3];
            v368 = v363;
            if (v363 == 14 && v362[0].u32[0] == 0xFFFFFFFFLL)
            {
              sub_1AF8A9E80(&v364, &v351);
              v81 = v343;
            }

            else
            {
              sub_1AF8A9E80(&v364, &v351);
              sub_1AF87CFFC(v367, v86, v93);
              v81 = v343;
            }
          }

          ++v83;
          sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
          v82 = *(v81 + 16);
          v85 += 64;
          v84 += 80;
          v87 = v328.i64[0];
        }

        while (v83 != *(v82 + 16));
        LOBYTE(v76) = 0;
        a2 = v327;
      }

      else
      {
        LOBYTE(v76) = 0;
        v87 = v328.i64[0];
      }

      goto LABEL_196;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_46;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1AF471B58(v37, v48, 0);
  v49 = *(v44 + 136);
  v325.i64[0] = v44 + 136;
  v50 = v47;
  a2 = v44;
  if ((v49 & 0x8000000000000000) != 0)
  {
    v51 = v343;
    v52 = v329;
  }

  else
  {
    v51 = v343;
    v52 = v329;
    if ((v49 & 0x4000000000000000) == 0)
    {
      v53 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v49 = *v325.i64[0];
      if (v53)
      {
        if (v49 >> 62)
        {
          v54 = sub_1AFDFE108();
        }

        else
        {
          v54 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF64E3CC(0, v54);
        goto LABEL_83;
      }
    }
  }

  if (v49 >> 62)
  {
    v309 = sub_1AFDFE108();
    sub_1AFDFE108();
    sub_1AFDFE108();
    v121 = v309;
    v50 = v337;
  }

  else
  {
    v121 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  }

  v122 = sub_1AFC892CC(0, v121);

  *v325.i64[0] = v122;
LABEL_83:
  v326 = v32;
  v123 = *(v51 + 16);
  if (!*(v123 + 16))
  {
    swift_unknownObjectRelease();
    LOBYTE(v76) = 0;
    v87 = v328.i64[0];
LABEL_196:
    *&v359 = v321.i64[0];
    *(&v359 + 1) = &v315[v316];
    v360 = v87;
    LOBYTE(v361[0]) = 0;
    sub_1AF88BB90(&v359, 2, 0);
    sub_1AF88BB90(&v359, 2, 0);
    swift_unknownObjectRelease();
LABEL_219:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_295;
  }

  LOBYTE(v76) = 0;
  v320 = (v342 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v318 = v332.i64[0] + 32;
  v319 = "Unsupported texture type ";
  v124 = 1;
  v125 = 32;
  v317 = xmmword_1AFE431C0;
  v126 = 32;
  v127 = v325.i64[0];
  v327 = a2;
  while (1)
  {
    v338.i64[0] = v126;
    v128 = (v123 + v126);
    v129 = *v128;
    v130 = v128[1];
    v131 = v128[2];
    *(v350 + 9) = *(v128 + 41);
    v349 = v130;
    v350[0] = v131;
    v348 = v129;
    v132 = (*(v51 + 24) + v125);
    v354 = *v132;
    v355 = v132[1];
    v356 = v132[2];
    v357 = v132[3];
    v358 = v132[4].i8[0];
    *v353 = v128[2];
    *&v353[9] = *(v128 + 41);
    v351 = *v128;
    v352 = v128[1];
    v359 = v351;
    v360 = v352;
    v362[2] = v356;
    v362[3] = v357;
    v363 = v358;
    v361[0] = *v353;
    v361[1] = *&v353[16];
    v362[0] = v354;
    v362[1] = v355;
    v364 = v351;
    v365 = v352;
    v366[0] = *v353;
    *(v366 + 9) = *(v361 + 9);
    v133 = v354.i64[0];
    v340.i64[0] = v124;
    v339.i64[0] = v125;
    if ((v358 & 0x80000000) == 0)
    {
      *&v367[8] = *(v362 + 8);
      *&v367[24] = *(&v362[1] + 8);
      *&v367[40] = *(&v362[2] + 8);
      *v367 = v362[0].i64[0];
      *&v367[56] = v362[3].i64[1];
      v368 = v358;
      if (v358 == 14 && v362[0].u32[0] == 0xFFFFFFFFLL)
      {
        sub_1AF8A9E80(&v348, &v351);
      }

      else
      {
        swift_unknownObjectRetain();
        sub_1AF8A9E80(&v348, &v351);
        sub_1AF87CE38(v367, &v364, v50);
        swift_unknownObjectRelease();
      }

      sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
      goto LABEL_123;
    }

    if (BYTE8(v361[1]))
    {
      v134 = *(&v360 + 1);
    }

    else
    {
      v134 = 0;
    }

    sub_1AF8A9E80(&v348, &v351);
    v135 = sub_1AF8D93C8(v133, &v351, v342, v52);
    if (v135)
    {
      v136 = v135;
      if ([v135 textureType] == v134)
      {
        swift_unknownObjectRetain();
        v137 = v136;
      }

      else
      {
        v332.i64[0] = v134;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v351 = 0;
        *(&v351 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000024, v319 | 0x8000000000000000);
        v347 = v360;
        v139 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v139);

        MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
        v347 = [v136 textureType];
        type metadata accessor for MTLTextureType(0);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](540877088, 0xE400000000000000);
        v347 = v332.i64[0];
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](41, 0xE100000000000000);
        v140 = v351;
        v141 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v324 = v136;
        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AF6EFB60();
        v142 = swift_allocObject();
        *(v142 + 16) = v317;
        *(v142 + 56) = MEMORY[0x1E69E6158];
        *(v142 + 64) = sub_1AF0D544C();
        *(v142 + 32) = v140;

        sub_1AFDFC4C8();

        v323.i64[0] = v140;
        v143 = v333;
        sub_1AFDFC288();
        v144 = v331[12];
        v322.i64[0] = *(&v140 + 1);
        v145 = v331[16];
        v146 = v141;
        v147 = v330;
        v148 = &v330[v331[20]];
        (*v318)(v330, v143, v334);
        *(v147 + v144) = v146;
        *(v147 + v145) = 0;
        v149 = v322.i64[0];
        *v148 = v323.i64[0];
        *(v148 + 1) = v149;
        sub_1AFDFC608();

        sub_1AF8AB47C(v147, sub_1AF0D4E74);
        v52 = v329;

        v137 = sub_1AF8DC0E8(v332.i64[0]);

        v51 = v343;
        v127 = v325.i64[0];
      }

      if (v133 != 0xFFFFFFFF && (v133 & 0x80000000) == 0 && v133 < v320[1] && ((v150 = *v320 + 12 * v133, HIDWORD(v133) == 0xFFFFFFFF) || *(v150 + 8) == HIDWORD(v133)))
      {
        v151 = *(*(*(v342 + 88) + 8 * *(v150 + 6) + 32) + 16);
        v152 = *(v151 + 128);
        if (*(v152 + 16) && (v153 = sub_1AF449CB8(&type metadata for MovieFileAsset), (v154 & 1) != 0))
        {
          v155 = *(*(v151 + 24) + 16 * *(*(v152 + 56) + 8 * v153) + 32);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          LOBYTE(v76) = v155 == &type metadata for MovieFileAsset;
        }

        else
        {
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          LOBYTE(v76) = 0;
        }

        v50 = v337;
        v51 = v343;
      }

      else
      {
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        LOBYTE(v76) = 0;
        v50 = v337;
      }

      goto LABEL_120;
    }

    if (v134 <= 4)
    {
      v50 = v337;
      if (v134)
      {
        if (v134 != 2)
        {
          goto LABEL_309;
        }

        v138 = sub_1AF70924C();
      }

      else
      {

        v138 = sub_1AF708F90();
      }

      goto LABEL_119;
    }

    v50 = v337;
    if (v134 != 5)
    {
      break;
    }

    v138 = sub_1AF7097AC();
LABEL_119:
    v137 = v138;

    swift_unknownObjectRetain();
LABEL_120:
    MEMORY[0x1B2718E00]([v50 setTexture:v137 atIndex:v360]);
    if (*((*v127 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v127 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
      v51 = v343;
    }

    sub_1AFDFD4B8();
    sub_1AF8AB47C(&v359, sub_1AF8ABBF4);
    swift_unknownObjectRelease();
    a2 = v327;
LABEL_123:
    v123 = *(v51 + 16);
    if (v340.i64[0] == *(v123 + 16))
    {
      swift_unknownObjectRelease();
      v87 = v328.i64[0];
      goto LABEL_196;
    }

    v124 = v340.i64[0] + 1;
    v126 = v338.i64[0] + 64;
    v125 = v339.i64[0] + 80;
  }

  if (v134 == 7)
  {

    v138 = sub_1AF7094F0();
    goto LABEL_119;
  }

LABEL_309:
  *&v351 = 0;
  *(&v351 + 1) = 0xE000000000000000;

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38E30);
  v347 = v134;
  type metadata accessor for MTLTextureType(0);
LABEL_310:
  sub_1AFDFE458();
  sub_1AFDFE518();
  __break(1u);
}

uint64_t sub_1AF8A8BA0(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 96);
  v5 = (v2 + 96);
  while (1)
  {
    v6 = *v5;
    v5 += 80;
    if (v6 < 0 && *(v4 - 8) == a1)
    {
      break;
    }

    v4 = v5;
    if (!--v3)
    {
      return 0;
    }
  }

  return 1;
}

void (*sub_1AF8A8C08(uint64_t *a1, uint64_t *a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x1A1uLL);
  }

  *a1 = v5;
  v6 = *a2;
  v7 = *v2;
  v8 = (*(*v2 + 16) + (*a2 << 6));
  v10 = v8[3];
  v9 = v8[4];
  v11 = *(v8 + 73);
  *(v5 + 136) = v8[2];
  *(v5 + 177) = v11;
  *(v5 + 168) = v9;
  *(v5 + 152) = v10;
  v12 = *(v7 + 24) + 80 * v6;
  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  v15 = *(v12 + 80);
  LOBYTE(v7) = *(v12 + 96);
  *(v5 + 416) = v7;
  *(v5 + 384) = v14;
  *(v5 + 400) = v15;
  *(v5 + 368) = v13;
  *(v5 + 352) = *(v12 + 32);
  v16 = *(v5 + 152);
  *v5 = *(v5 + 136);
  *(v5 + 16) = v16;
  *(v5 + 32) = *(v5 + 168);
  *(v5 + 41) = *(v5 + 177);
  v17 = *(v5 + 352);
  v18 = *(v5 + 368);
  v19 = *(v5 + 384);
  v20 = *(v5 + 400);
  *(v5 + 128) = v7;
  *(v5 + 96) = v19;
  *(v5 + 112) = v20;
  *(v5 + 64) = v17;
  *(v5 + 80) = v18;
  sub_1AF8A9E80(v5 + 136, v5 + 208);
  return sub_1AF8A8D10;
}

void sub_1AF8A8D10(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 112);
  v1[19] = *(*a1 + 96);
  v1[20] = v2;
  *(v1 + 336) = *(v1 + 128);
  v3 = v1[3];
  v1[15] = v1[2];
  v1[16] = v3;
  v4 = v1[5];
  v1[17] = v1[4];
  v1[18] = v4;
  v5 = v1[1];
  v1[13] = *v1;
  v1[14] = v5;
  sub_1AF8AB47C((v1 + 13), sub_1AF8ABBF4);

  free(v1);
}

uint64_t sub_1AF8A8D88@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *a2 = *a1;
  *(a2 + 16) = v3;
}

uint64_t sub_1AF8A8DA0@<X0>(void *a1@<X8>)
{
  v2 = *(*(*v1 + 16) + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t *sub_1AF8A8DCC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = a2 - 1;
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v6 = *a3;
    if (*a3 - v4 < v5)
    {
      v5 = *a3 - v4;
    }

    if (v5 + 1 >= 3)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFFELL;
      v4 += v7;
      v9 = v7;
      do
      {
        v9 -= 2;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    v10 = a2 - v7;
    while (1)
    {
      v8 = v6 == v4;
      if (v6 == v4)
      {
        break;
      }

      ++v4;
      if (!--v10)
      {
        goto LABEL_14;
      }
    }

    v4 = 0;
  }

LABEL_14:
  *a4 = v4;
  *(a4 + 8) = v8;
  return result;
}

void *sub_1AF8A8E54()
{
  v1 = sub_1AFC05718(*v0);

  return v1;
}

uint64_t sub_1AF8A8EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *(v7 + 24);

  v10 = sub_1AF8A0370(a1, a2, v9);

  v11 = *(v7 + 32);
  v12 = swift_allocObject();
  v12[2] = v8;
  v12[3] = v10;
  v12[4] = v11;
  *a3 = v12;
}

void sub_1AF8A907C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for CustomParameters();
    v8 = sub_1AF8AC588(&qword_1EB63FD90, v7, type metadata accessor for CustomParameters);
    v9 = a3(a1, v6, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF8A9180(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1AF8AC588(&qword_1ED722900, a2, type metadata accessor for CustomParameters);
  result = sub_1AF8AC588(&unk_1ED722908, v3, type metadata accessor for CustomParameters);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1AF8A9208()
{
  result = qword_1ED7229D0;
  if (!qword_1ED7229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229D0);
  }

  return result;
}

id sub_1AF8A925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a1 + 64);
  if (v8 < 0)
  {
    result = sub_1AF8D93C8(v7, &v17, a3, a4);
    if (result)
    {
      [v4 setTexture:result atIndex:a2];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v10 = *(a1 + 8);
    v9 = *(a1 + 16);
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    switch(v8)
    {
      case 1:
        result = [v4 setBytes:&v17 length:8 atIndex:{a2, v7, v18, v19, v20, v21, v22, v23, v24}];
        break;
      case 2:
      case 3:
      case 4:
        result = [v4 setBytes:&v17 length:16 atIndex:{a2, v7, v10, v19, v20, v21, v22, v23, v24}];
        break;
      case 5:
      case 6:
      case 10:
        result = [v4 setBytes:&v17 length:32 atIndex:{a2, v7, v10, v9, v11, v21, v22, v23, v24}];
        break;
      case 7:
        result = [v4 setBytes:&v17 length:24 atIndex:{a2, v7, v10, v9, v20, v21, v22, v23, v24}];
        break;
      case 8:
      case 9:
        result = [v4 setBytes:&v17 length:48 atIndex:{a2, v7, v10, v9, v11, v12, v13, v23, v24}];
        break;
      case 11:
      case 12:
        result = [v4 setBytes:&v17 length:64 atIndex:{a2, v7, v10, v9, v11, v12, v13, v14, v15}];
        break;
      case 13:
        LOBYTE(v17) = v7;
        result = [v4 setBytes:&v17 length:1 atIndex:{a2, v17, v18, v19, v20, v21, v22, v23, v24}];
        break;
      default:
        LODWORD(v17) = v7;
        result = [v4 setBytes:&v17 length:4 atIndex:{a2, v17, v18, v19, v20, v21, v22, v23, v24}];
        break;
    }
  }

  return result;
}

uint64_t sub_1AF8A9464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    if (a2 != a5)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3 == a6)
  {
    return sub_1AFB7B338(a1, a4);
  }

  return 0;
}

uint64_t sub_1AF8A94D0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42C1B0(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 40;
    v7 = -v4;
    do
    {
      v8 = (v6 + 16 * v5++);
      while (1)
      {
        v10 = *(v8 - 1);
        v9 = *v8;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v12 = sub_1AF0D3F10(v10);
        v14 = v13;
        v15 = v3[2] + ((v13 & 1) == 0);
        if (v3[3] >= v15)
        {
          break;
        }

        sub_1AF82C648(v15, isUniquelyReferenced_nonNull_native);
        v12 = sub_1AF0D3F10(v10);
        if ((v14 & 1) != (v16 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v14 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        v8 += 2;
        *(v3[7] + 8 * v12) = v9;

        ++v5;
        if (v7 + v5 == 1)
        {
          return v3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v17 = v12;
      sub_1AF84466C();
      v12 = v17;
      if (v14)
      {
        goto LABEL_9;
      }

LABEL_12:
      v3[(v12 >> 6) + 8] |= 1 << v12;
      *(v3[6] + 8 * v12) = v10;
      *(v3[7] + 8 * v12) = v9;
      ++v3[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF41FB20(0, *(v2 + 2) + 1, 1, v2);
      }

      v19 = *(v2 + 2);
      v18 = *(v2 + 3);
      if (v19 >= v18 >> 1)
      {
        v2 = sub_1AF41FB20(v18 > 1, v19 + 1, 1, v2);
      }

      *(v2 + 2) = v19 + 1;
      *&v2[8 * v19 + 32] = v10;
    }

    while (v7 + v5);
  }

  return v3;
}

uint64_t sub_1AF8A96E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = 0;
  if (a2)
  {
    if (a2 != a5)
    {
      goto LABEL_7;
    }
  }

  else if (a5)
  {
    goto LABEL_7;
  }

  if (a3 == a6)
  {
    result = sub_1AFB7B338(a1, a4);
  }

LABEL_7:
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = result & 1;
  return result;
}

uint64_t sub_1AF8A9770(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A695361746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656D6E67696C61 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF8A98D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1668506980 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF8A99EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795461746164 && a2 == 0xE800000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68747065447369 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

uint64_t sub_1AF8A9B04()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF8A9B50(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF43ADB0(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 48;
    v7 = -v4;
    v24 = a1 + 48;
    do
    {
      v8 = (v6 + 24 * v5++);
      while (1)
      {
        v9 = *(v8 - 2);
        v10 = *(v8 - 1);
        v11 = *v8;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = sub_1AF0D3F10(v9);
        v15 = v14;
        v16 = v3[2] + ((v14 & 1) == 0);
        if (v3[3] >= v16)
        {
          break;
        }

        sub_1AF82F63C(v16, isUniquelyReferenced_nonNull_native);
        v13 = sub_1AF0D3F10(v9);
        if ((v15 & 1) != (v17 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        v18 = (v3[7] + 16 * v13);
        v8 += 3;
        *v18 = v10;
        v18[1] = v11;

        ++v5;
        if (v7 + v5 == 1)
        {
          return v3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v19 = v13;
      sub_1AF846294();
      v13 = v19;
      if (v15)
      {
        goto LABEL_9;
      }

LABEL_12:
      v3[(v13 >> 6) + 8] |= 1 << v13;
      *(v3[6] + 8 * v13) = v9;
      v20 = (v3[7] + 16 * v13);
      *v20 = v10;
      v20[1] = v11;
      ++v3[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF41FB20(0, *(v2 + 2) + 1, 1, v2);
      }

      v6 = v24;
      v22 = *(v2 + 2);
      v21 = *(v2 + 3);
      if (v22 >= v21 >> 1)
      {
        v2 = sub_1AF41FB20(v21 > 1, v22 + 1, 1, v2);
      }

      *(v2 + 2) = v22 + 1;
      *&v2[8 * v22 + 32] = v9;
    }

    while (v7 + v5);
  }

  return v3;
}

void sub_1AF8A9D74()
{
  if (!qword_1ED721F58)
  {
    v0 = MEMORY[0x1E69E6EF0];
    sub_1AF8AB7E4(255, &qword_1ED721F40, &type metadata for ShaderArgument, MEMORY[0x1E69E6EF0]);
    sub_1AF8A9E30(&qword_1ED721F48, &qword_1ED721F40, v0);
    v1 = sub_1AFDFE468();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED721F58);
    }
  }
}

uint64_t sub_1AF8A9E30(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF8AB7E4(255, a2, &type metadata for ShaderArgument, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AF8A9E80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v5;
  *(a2 + 24) = v4;

  return a2;
}

unint64_t sub_1AF8A9ED4()
{
  result = qword_1ED7229E0;
  if (!qword_1ED7229E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229E0);
  }

  return result;
}

uint64_t sub_1AF8A9F28(uint64_t a1, uint64_t a2)
{
  sub_1AF8AB7E4(0, &qword_1EB63FDC8, &type metadata for ShaderArgument, MEMORY[0x1E69E6EE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF8A9FB0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF4403AC(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v7 = *i;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_1AF0D3F10(v6);
      v11 = v10;
      v12 = v3[2] + ((v10 & 1) == 0);
      if (v3[3] < v12)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_9;
      }

      v16 = v9;
      sub_1AF84E5F8();
      v9 = v16;
      if ((v11 & 1) == 0)
      {
LABEL_10:
        v3[(v9 >> 6) + 8] |= 1 << v9;
        *(v3[6] + 8 * v9) = v6;
        *(v3[7] + 8 * v9) = v7;
        ++v3[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_1AF41FB20(0, *(v2 + 2) + 1, 1, v2);
        }

        v15 = *(v2 + 2);
        v14 = *(v2 + 3);
        if (v15 >= v14 >> 1)
        {
          v2 = sub_1AF41FB20(v14 > 1, v15 + 1, 1, v2);
        }

        *(v2 + 2) = v15 + 1;
        *&v2[8 * v15 + 32] = v6;
        goto LABEL_4;
      }

LABEL_3:
      *(v3[7] + 8 * v9) = v7;
LABEL_4:
      if (!--v4)
      {
        return v3;
      }
    }

    sub_1AF83EEF4(v12, isUniquelyReferenced_nonNull_native);
    v9 = sub_1AF0D3F10(v6);
    if ((v11 & 1) != (v13 & 1))
    {
      result = sub_1AFDFF1A8();
      __break(1u);
      return result;
    }

LABEL_9:
    if ((v11 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_3;
  }

  return v3;
}

uint64_t sub_1AF8AA1BC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = MEMORY[0x1E69E7CC0];
  v8 = a2(MEMORY[0x1E69E7CC0]);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a1 + 40;
    v28 = *(a1 + 16);
    v26 = a4;
    v27 = a1 + 40;
    do
    {
      v12 = v9 - v10;
      for (i = (v11 + 16 * v10++); ; i += 2)
      {
        v15 = *(i - 1);
        v14 = *i;
        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_1AF0D3F10(v15);
        v19 = v18;
        v20 = v8[2] + ((v18 & 1) == 0);
        if (v8[3] >= v20)
        {
          break;
        }

        a3(v20, isUniquelyReferenced_nonNull_native);
        v17 = sub_1AF0D3F10(v15);
        if ((v19 & 1) != (v21 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        *(v8[7] + 8 * v17) = v14;

        ++v10;
        if (!--v12)
        {
          return v8;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v22 = v17;
      v26();
      v17 = v22;
      if (v19)
      {
        goto LABEL_9;
      }

LABEL_12:
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + 8 * v17) = v15;
      *(v8[7] + 8 * v17) = v14;
      ++v8[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1AF41FB20(0, *(v7 + 2) + 1, 1, v7);
      }

      v9 = v28;
      v24 = *(v7 + 2);
      v23 = *(v7 + 3);
      if (v24 >= v23 >> 1)
      {
        v7 = sub_1AF41FB20(v23 > 1, v24 + 1, 1, v7);
      }

      *(v7 + 2) = v24 + 1;
      *&v7[8 * v24 + 32] = v15;
      v11 = v27;
    }

    while (v12 != 1);
  }

  return v8;
}

uint64_t sub_1AF8AA3F0(void *a1)
{
  sub_1AF8AC5D0(0, &qword_1ED721F28, sub_1AF8AC4E0, &type metadata for ShaderArgument.BufferDesc.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF8AC4E0();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11[31] = 0;
    v9 = sub_1AFDFE748();
    type metadata accessor for MTLDataType(0);
    v11[30] = 1;
    sub_1AF8AC588(&qword_1ED721FC8, 255, type metadata accessor for MTLDataType);
    sub_1AFDFE768();
    v11[29] = 2;
    sub_1AFDFE748();
    v11[28] = 3;
    sub_1AFDFE748();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF8AA678(void *a1)
{
  sub_1AF8AC5D0(0, &unk_1ED721F10, sub_1AF8AC534, &type metadata for ShaderArgument.TextureDesc.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF8AC534();
  sub_1AFDFF3B8();
  if (!v1)
  {
    type metadata accessor for MTLTextureType(0);
    v12 = 0;
    sub_1AF8AC588(&unk_1ED721FB0, 255, type metadata accessor for MTLTextureType);
    sub_1AFDFE768();
    v9 = v13;
    type metadata accessor for MTLDataType(0);
    v12 = 1;
    sub_1AF8AC588(&qword_1ED721FC8, 255, type metadata accessor for MTLDataType);
    sub_1AFDFE768();
    LOBYTE(v13) = 2;
    sub_1AFDFE718();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AF8AA928@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1AF8AC5D0(0, &qword_1ED721F08, sub_1AF8AC16C, &type metadata for ShaderArgument.Desc.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8AC16C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v11 = v15;
  v19 = 0;
  sub_1AF8AC1C0();
  sub_1AFDFE768();
  (*(v6 + 8))(v9, v5);
  v14 = v16;
  v13 = v17;
  v12 = v18;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v11 = v14;
  *(v11 + 16) = v13;
  *(v11 + 24) = v12;
  *(v11 + 32) = 0;
  return result;
}

uint64_t sub_1AF8AABE0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  sub_1AF8AC5D0(0, &qword_1ED721F20, sub_1AF8ABC58, &type metadata for ShaderArgument.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v21 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ABC58();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v24;
  LOBYTE(v28[0]) = 0;
  v12 = sub_1AFDFE708();
  v14 = v13;
  v15 = v12;
  LOBYTE(v28[0]) = 1;
  v23 = sub_1AFDFE748();
  v35 = 2;
  sub_1AF8ABCAC();
  sub_1AFDFE768();
  (*(v10 + 8))(v9, v5);
  v22 = v30;
  v16 = *(&v31 + 1);
  v21 = v31;
  v17 = v32;
  LOBYTE(v10) = v33;
  v34 = v33;
  *&v25 = v15;
  *(&v25 + 1) = v14;
  v18 = v23;
  *&v26 = v23;
  *(&v26 + 1) = v30;
  *v27 = v31;
  *&v27[16] = v32;
  v27[24] = v33;
  sub_1AF8A9E80(&v25, v28);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v28[0] = v15;
  v28[1] = v14;
  v28[2] = v18;
  v28[3] = v22;
  v28[4] = v21;
  v28[5] = v16;
  v28[6] = v17;
  v29 = v10;
  result = sub_1AF8AB528(v28);
  v20 = v26;
  *v11 = v25;
  v11[1] = v20;
  v11[2] = *v27;
  *(v11 + 41) = *&v27[9];
  return result;
}

uint64_t sub_1AF8AAEC8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 48;
    v7 = -v4;
    v24 = a1 + 48;
    do
    {
      for (i = (v6 + 24 * v5++); ; i += 3)
      {
        v10 = *(i - 2);
        v9 = *(i - 1);
        v11 = *i;

        swift_retain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = sub_1AF419914(v10, v9);
        v15 = v14;
        v16 = v3[2] + ((v14 & 1) == 0);
        if (v3[3] >= v16)
        {
          break;
        }

        sub_1AF82CE44(v16, isUniquelyReferenced_nonNull_native);
        v13 = sub_1AF419914(v10, v9);
        if ((v15 & 1) != (v17 & 1))
        {
          result = sub_1AFDFF1A8();
          __break(1u);
          return result;
        }

LABEL_8:
        if ((v15 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_9:
        *(v3[7] + 8 * v13) = v11;

        ++v5;
        if (v7 + v5 == 1)
        {
          return v3;
        }
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v18 = v13;
      sub_1AF844B24();
      v13 = v18;
      if (v15)
      {
        goto LABEL_9;
      }

LABEL_12:
      v3[(v13 >> 6) + 8] |= 1 << v13;
      v19 = (v3[6] + 16 * v13);
      *v19 = v10;
      v19[1] = v9;
      *(v3[7] + 8 * v13) = v11;
      ++v3[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1AF420554(0, *(v2 + 2) + 1, 1, v2);
      }

      v21 = *(v2 + 2);
      v20 = *(v2 + 3);
      if (v21 >= v20 >> 1)
      {
        v2 = sub_1AF420554(v20 > 1, v21 + 1, 1, v2);
      }

      *(v2 + 2) = v21 + 1;
      v22 = &v2[16 * v21];
      *(v22 + 4) = v10;
      *(v22 + 5) = v9;
      v6 = v24;
    }

    while (v7 + v5);
  }

  return v3;
}

void sub_1AF8AB110(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 argumentIndex];
  v5 = [a1 name];
  v6 = sub_1AFDFCEF8();
  v8 = v7;

  v9 = [a1 textureReferenceType];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 textureType];
    v12 = [v10 textureDataType];
    LODWORD(v14) = [v10 isDepthTexture];

    v13 = 0;
    v14 = v14;
    v17 = 1;
  }

  else
  {
    v15 = [a1 pointerType];
    if (v15)
    {
      v16 = v15;
      v11 = [v15 dataSize];
      v12 = [v16 elementType];
      v13 = [v16 alignment];

      v14 = 0;
      v17 = 0;
    }

    else
    {
      v11 = sub_1AF470DA4();
      v12 = [a1 dataType];
      v14 = [a1 offset];

      v17 = 0;
      v13 = v11;
    }
  }

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v13;
  *(a2 + 56) = v17;
}

char *sub_1AF8AB2CC(uint64_t a1, uint64_t a2, id a3)
{
  v3 = a2 - a1;
  if (a2 != a1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = [a3 elementStructType];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1AF8A40DC();
      }

      else
      {
        v10 = [a3 elementArrayType];
        if (!v10)
        {
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

        v8 = v10;
        v9 = sub_1AF8A3F20(v10);
      }

      v11 = v9;

      v12 = *(v11 + 16);
      v13 = *(v4 + 2);
      v14 = v13 + v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v14 <= *(v4 + 3) >> 1)
      {
        if (*(v11 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v13 <= v14)
        {
          v16 = v13 + v12;
        }

        else
        {
          v16 = v13;
        }

        v4 = sub_1AF4265B0(isUniquelyReferenced_nonNull_native, v16, 1, v4);
        if (*(v11 + 16))
        {
LABEL_19:
          swift_arrayInitWithCopy();

          if (v12)
          {
            *(v4 + 2) += v12;
          }

          goto LABEL_6;
        }
      }

LABEL_6:
      if (!--v3)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF8AB47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF8AB4DC()
{
  result = qword_1ED723130;
  if (!qword_1ED723130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED723130);
  }

  return result;
}

uint64_t sub_1AF8AB554(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1AF8AB7E4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1AF8AB5B0()
{
  result = qword_1ED722918;
  if (!qword_1ED722918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722918);
  }

  return result;
}

unint64_t sub_1AF8AB604()
{
  result = qword_1ED722020;
  if (!qword_1ED722020)
  {
    sub_1AF8AB7E4(255, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
    sub_1AF8AB6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722020);
  }

  return result;
}

unint64_t sub_1AF8AB6A0()
{
  result = qword_1ED7229C8;
  if (!qword_1ED7229C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229C8);
  }

  return result;
}

unint64_t sub_1AF8AB6F4()
{
  result = qword_1ED721FF8;
  if (!qword_1ED721FF8)
  {
    sub_1AF8AB7E4(255, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    sub_1AF8AB790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED721FF8);
  }

  return result;
}

unint64_t sub_1AF8AB790()
{
  result = qword_1ED7229A0;
  if (!qword_1ED7229A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229A0);
  }

  return result;
}

void sub_1AF8AB7E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF8AB834()
{
  result = qword_1ED721FF0;
  if (!qword_1ED721FF0)
  {
    sub_1AF8AB7E4(255, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
    sub_1AF8AB8D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED721FF0);
  }

  return result;
}

unint64_t sub_1AF8AB8D0()
{
  result = qword_1ED7228E8;
  if (!qword_1ED7228E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7228E8);
  }

  return result;
}

unint64_t sub_1AF8AB924()
{
  result = qword_1EB63FDD8;
  if (!qword_1EB63FDD8)
  {
    sub_1AF8AB7E4(255, &qword_1ED722030, &type metadata for ShaderArgument, MEMORY[0x1E69E62F8]);
    sub_1AF8AB9C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FDD8);
  }

  return result;
}

unint64_t sub_1AF8AB9C0()
{
  result = qword_1EB63FDE0;
  if (!qword_1EB63FDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FDE0);
  }

  return result;
}

unint64_t sub_1AF8ABA14()
{
  result = qword_1EB63FDE8;
  if (!qword_1EB63FDE8)
  {
    sub_1AF8AB7E4(255, &qword_1ED722000, &type metadata for ShaderParameter, MEMORY[0x1E69E62F8]);
    sub_1AF8ABAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FDE8);
  }

  return result;
}

unint64_t sub_1AF8ABAB0()
{
  result = qword_1EB63FDF0;
  if (!qword_1EB63FDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FDF0);
  }

  return result;
}

unint64_t sub_1AF8ABB04()
{
  result = qword_1EB63FDF8;
  if (!qword_1EB63FDF8)
  {
    sub_1AF8AB7E4(255, &unk_1ED723240, &type metadata for FunctionConstant, MEMORY[0x1E69E62F8]);
    sub_1AF8ABBA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FDF8);
  }

  return result;
}

unint64_t sub_1AF8ABBA0()
{
  result = qword_1EB63FE00;
  if (!qword_1EB63FE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE00);
  }

  return result;
}

void sub_1AF8ABBF4()
{
  if (!qword_1ED722A20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED722A20);
    }
  }
}

unint64_t sub_1AF8ABC58()
{
  result = qword_1ED722A68;
  if (!qword_1ED722A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A68);
  }

  return result;
}

unint64_t sub_1AF8ABCAC()
{
  result = qword_1ED7229F0;
  if (!qword_1ED7229F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229F0);
  }

  return result;
}

unint64_t sub_1AF8ABD00()
{
  result = qword_1EB63FE10;
  if (!qword_1EB63FE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArgument.Desc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for ShaderArgument.Desc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t destroy for PerStageShaderArguments()
{

  return swift_unknownObjectRelease();
}

void *sub_1AF8ABE5C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for PerStageShaderArguments(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[2] = a2[2];
  return a1;
}

uint64_t assignWithTake for PerStageShaderArguments(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

unint64_t sub_1AF8ABF60()
{
  result = qword_1EB63FE18;
  if (!qword_1EB63FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE18);
  }

  return result;
}

unint64_t sub_1AF8ABFB8()
{
  result = qword_1EB63FE20;
  if (!qword_1EB63FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE20);
  }

  return result;
}

unint64_t sub_1AF8AC010()
{
  result = qword_1ED722A58;
  if (!qword_1ED722A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A58);
  }

  return result;
}

unint64_t sub_1AF8AC068()
{
  result = qword_1ED722A60;
  if (!qword_1ED722A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A60);
  }

  return result;
}

unint64_t sub_1AF8AC0C0()
{
  result = qword_1ED722928;
  if (!qword_1ED722928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722928);
  }

  return result;
}

unint64_t sub_1AF8AC118()
{
  result = qword_1ED722930;
  if (!qword_1ED722930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722930);
  }

  return result;
}

unint64_t sub_1AF8AC16C()
{
  result = qword_1ED722A10;
  if (!qword_1ED722A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A10);
  }

  return result;
}

unint64_t sub_1AF8AC1C0()
{
  result = qword_1ED722A78;
  if (!qword_1ED722A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A78);
  }

  return result;
}

unint64_t sub_1AF8AC214()
{
  result = qword_1ED722A30;
  if (!qword_1ED722A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A30);
  }

  return result;
}

unint64_t sub_1AF8AC268()
{
  result = qword_1EB63FE38;
  if (!qword_1EB63FE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE38);
  }

  return result;
}

unint64_t sub_1AF8AC2BC()
{
  result = qword_1EB63FE40;
  if (!qword_1EB63FE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShaderArgument.TextureDesc(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ShaderArgument.TextureDesc(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AF8AC3DC()
{
  result = qword_1EB63FE50;
  if (!qword_1EB63FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE50);
  }

  return result;
}

unint64_t sub_1AF8AC434()
{
  result = qword_1ED7229F8;
  if (!qword_1ED7229F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7229F8);
  }

  return result;
}

unint64_t sub_1AF8AC48C()
{
  result = qword_1ED722A00;
  if (!qword_1ED722A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A00);
  }

  return result;
}

unint64_t sub_1AF8AC4E0()
{
  result = qword_1ED722AA0;
  if (!qword_1ED722AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722AA0);
  }

  return result;
}

unint64_t sub_1AF8AC534()
{
  result = qword_1ED722A48;
  if (!qword_1ED722A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A48);
  }

  return result;
}

uint64_t sub_1AF8AC588(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF8AC5D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1AF8AC65C()
{
  result = qword_1EB63FE78;
  if (!qword_1EB63FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE78);
  }

  return result;
}

unint64_t sub_1AF8AC6B4()
{
  result = qword_1EB63FE80;
  if (!qword_1EB63FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FE80);
  }

  return result;
}

unint64_t sub_1AF8AC70C()
{
  result = qword_1ED722A38;
  if (!qword_1ED722A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A38);
  }

  return result;
}

unint64_t sub_1AF8AC764()
{
  result = qword_1ED722A40;
  if (!qword_1ED722A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A40);
  }

  return result;
}

unint64_t sub_1AF8AC7BC()
{
  result = qword_1ED722A88;
  if (!qword_1ED722A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A88);
  }

  return result;
}

unint64_t sub_1AF8AC814()
{
  result = qword_1ED722A90;
  if (!qword_1ED722A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED722A90);
  }

  return result;
}

uint64_t sub_1AF8AC8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF8AC930(uint64_t a1)
{
  v2 = sub_1AF8ADD88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8AC96C(uint64_t a1)
{
  v2 = sub_1AF8ADD88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8AC9A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF8ADDDC(0, &qword_1EB63FEA8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ADD88();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v11 = sub_1AFDFE708();
  v13 = v12;
  (*(v7 + 8))(v10, v6);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1AF8ACB34(void *a1)
{
  sub_1AF8ADDDC(0, &qword_1EB63FEB8, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8ADD88();
  sub_1AFDFF3F8();
  sub_1AFDFE8B8();
  return (*(v4 + 8))(v7, v3);
}

id sub_1AF8ACC80(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v111 = *MEMORY[0x1E69E9840];
  sub_1AF0D0E3C(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v91 - v12;
  v14 = sub_1AFDFC128();
  v95 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v102 = v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v91 - v19;
  v21 = *v2;
  if (*(v21 + 16))
  {
    v22 = sub_1AF419914(a1, a2);
    if (v23)
    {
      v24 = *(*(v21 + 56) + 8 * v22);
      swift_unknownObjectRetain();
      return v24;
    }
  }

  v25 = v3[2];
  if (!v25)
  {
    return 0;
  }

  v103 = v13;
  v104 = v14;
  v94 = v20;
  v105 = v9;
  v92 = v3;
  v26 = objc_allocWithZone(MEMORY[0x1E6974438]);
  swift_unknownObjectRetain();
  v27 = [v26 initWithDevice_];
  sub_1AF0D0E3C(0, &qword_1EB63FE90, sub_1AF8ADBE8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v91[1] = v25;
  v29 = inited;
  *(inited + 16) = xmmword_1AFE4C680;
  v30 = *MEMORY[0x1E69743E8];
  *(inited + 32) = *MEMORY[0x1E69743E8];
  v101 = a1;
  v31 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v32 = v30;
  v33 = [v31 initWithBool_];
  v34 = *MEMORY[0x1E6974408];
  v29[5] = v33;
  v29[6] = v34;
  v35 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v36 = v34;
  v37 = [v35 initWithUnsignedInteger_];
  v38 = *MEMORY[0x1E6974400];
  v29[7] = v37;
  v29[8] = v38;
  v39 = v101;
  v40 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v41 = v38;
  v29[9] = [v40 initWithUnsignedInteger_];
  v42 = sub_1AF43F9F0(v29);
  swift_setDeallocating();
  sub_1AF8ADBE8();
  swift_arrayDestroy();
  v43 = v39;
  v44 = sub_1AFDFCEC8();
  v45 = [objc_opt_self() mainBundle];
  sub_1AF3D9DE4(v42);
  type metadata accessor for Option(0);
  v47 = v46;
  v48 = sub_1AF8ADC68();
  v49 = sub_1AFDFCBE8();

  v109 = 0;
  v24 = [v27 newTextureWithName:v44 scaleFactor:v45 bundle:v49 options:&v109 error:1.0];

  v50 = v109;
  if (!v24)
  {
    v106 = v48;
    v107 = v47;
    v93 = v42;
    v51 = v50;
    v52 = sub_1AFDFBF58();

    swift_willThrow();
    v53 = v92[1];
    v108 = v27;
    if (v53 >> 62)
    {
      v89 = v53;
      v90 = sub_1AFDFE108();
      v53 = v89;
      v54 = v90;
    }

    else
    {
      v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = MEMORY[0x1E69E7CA0];
    v56 = v43;
    v57 = v93;
    if (v54)
    {
      v58 = 0;
      v100 = v53 & 0xC000000000000001;
      v99 = (v95 + 7);
      v98 = (v95 + 6);
      v59 = (v95 + 1);
      v95 += 4;
      v97 = v53;
      v96 = v54;
      do
      {
        if (v100)
        {
          v60 = MEMORY[0x1B2719C70](v58);
        }

        else
        {
          v60 = *(v53 + 8 * v58 + 32);
        }

        v61 = v60;
        v62 = sub_1AFDFCEC8();
        v63 = v61;
        sub_1AF3D9DE4(v57);
        v64 = sub_1AFDFCBE8();

        v109 = 0;
        v24 = [v108 newTextureWithName:v62 scaleFactor:v63 bundle:v64 options:&v109 error:1.0];

        v65 = v109;
        if (v24)
        {

          swift_unknownObjectRetain_n();

          sub_1AF824548(v24, v56, a2);
          swift_unknownObjectRelease();

          goto LABEL_7;
        }

        v66 = v65;
        v67 = sub_1AFDFBF58();

        swift_willThrow();
        v68 = [v63 resourceURL];
        if (v68)
        {
          v69 = v105;
          v70 = v68;
          sub_1AFDFC0B8();

          v71 = 0;
        }

        else
        {
          v71 = 1;
          v69 = v105;
        }

        v72 = v103;
        v73 = v104;
        (*v99)(v69, v71, 1, v104);
        sub_1AF6EE3D0(v69, v72);
        if ((*v98)(v72, 1, v73) == 1)
        {

          sub_1AF8ADCC0(v72, &qword_1ED7315E0, MEMORY[0x1E6968FB0], sub_1AF0D0E3C);
        }

        else
        {
          v74 = v102;
          v75 = a2;
          sub_1AFDFC088();
          v76 = *v59;
          (*v59)(v72, v73);
          v77 = v57;
          v78 = v94;
          (*v95)(v94, v74, v73);
          v79 = sub_1AFDFC048();
          sub_1AF3D9DE4(v77);
          v80 = sub_1AFDFCBE8();

          v109 = 0;
          v24 = [v108 newTextureWithContentsOfURL:v79 options:v80 error:&v109];

          v81 = v109;
          if (v24)
          {

            v88 = swift_unknownObjectRetain();
            sub_1AF824548(v88, v101, v75);
            swift_unknownObjectRelease();

            v76(v78, v73);
            return v24;
          }

          v82 = v81;
          v83 = sub_1AFDFBF58();

          swift_willThrow();
          v76(v78, v73);

          a2 = v75;
          v56 = v101;
          v57 = v93;
        }

        v55 = MEMORY[0x1E69E7CA0];
        ++v58;
        v53 = v97;
      }

      while (v96 != v58);
    }

    sub_1AF8ADD38(0, &qword_1ED722EE0, v55 + 8, MEMORY[0x1E69E6F90]);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1AFE431C0;
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_1AFDFE218();

    v109 = 0xD00000000000001DLL;
    v110 = 0x80000001AFF38F00;
    MEMORY[0x1B2718AE0](v56, a2);
    v85 = v109;
    v86 = v110;
    *(v84 + 56) = MEMORY[0x1E69E6158];
    *(v84 + 32) = v85;
    *(v84 + 40) = v86;
    sub_1AFDFF258();
    swift_unknownObjectRelease();

    return 0;
  }

  swift_unknownObjectRetain_n();

  sub_1AF824548(v24, v43, a2);
  swift_unknownObjectRelease();

LABEL_7:
  swift_unknownObjectRelease();
  return v24;
}

void *sub_1AF8AD64C@<X0>(void *a1@<X8>)
{
  result = sub_1AF8ADB00();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_1AF8AD678(uint64_t a1)
{
  v3 = *(a1 + 184);

  sub_1AF6D34A4(&type metadata for AssetCatalog, &off_1F2541758, v3);

  v4 = *(v1 + 16);
  v5 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v6 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v5 + 40));
  sub_1AF6B1714(a1, v4);

  sub_1AF6B1B20(a1, v6, v4);
  v7 = *(v5 + 40);

  os_unfair_lock_unlock(v7);
}

void sub_1AF8AD76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 32);
  v21[0] = *(a3 + 16);
  v21[1] = v6;
  v22 = *(a3 + 48);
  sub_1AF6B06C0(a2, v21, 0x200000000, &v7);
  if (v7)
  {
    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v15 = v8;
    v16 = v9;
    v14 = v7;

    sub_1AFD247C4(&v14, a1, a4);

    sub_1AF8ADCC0(&v7, &qword_1ED725EA0, &type metadata for QueryResult, sub_1AF8ADD38);
  }
}

uint64_t sub_1AF8AD8FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result, a2);
    v9 = *(v8 + 184);
    MEMORY[0x1EEE9AC00](v8, v10);

    sub_1AF6D655C(&type metadata for AssetCatalog, &off_1F2541758, v9, a7);
  }

  return result;
}

uint64_t sub_1AF8AD9DC()
{
  v0 = swift_allocObject();
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED73B840;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = 2;
  v16 = 0;
  sub_1AF703390(1, &v6);
  v1 = v7;
  v2 = v8;
  v3 = v10;
  v4 = v9 | 4;
  *(v0 + 16) = v6;
  *(v0 + 24) = v1;
  *(v0 + 28) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = 2;
  *(v0 + 48) = v3;
  return v0;
}

void *sub_1AF8ADB00()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1AF0D65E4(MEMORY[0x1E69E7CC0]);
  v5 = v0;
  sub_1AF0D4478(0, &qword_1ED7307E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  MEMORY[0x1B2718E00]();
  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  return v1;
}

void sub_1AF8ADBE8()
{
  if (!qword_1EB63FE98)
  {
    type metadata accessor for Option(255);
    sub_1AF0D4478(255, &qword_1ED721F80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63FE98);
    }
  }
}

unint64_t sub_1AF8ADC68()
{
  result = qword_1EB637E30;
  if (!qword_1EB637E30)
  {
    type metadata accessor for Option(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB637E30);
  }

  return result;
}

uint64_t sub_1AF8ADCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t, void))
{
  v5 = a4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF8ADD38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF8ADD88()
{
  result = qword_1EB63FEB0;
  if (!qword_1EB63FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FEB0);
  }

  return result;
}

void sub_1AF8ADDDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF8ADD88();
    v7 = a3(a1, &type metadata for TextureNamedAsset.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t destroy for AssetCatalog()
{

  return swift_unknownObjectRelease();
}

void *sub_1AF8ADE94(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for AssetCatalog(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for AssetCatalog(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_1AF8ADFC0()
{
  result = qword_1EB63FEC0;
  if (!qword_1EB63FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FEC0);
  }

  return result;
}

unint64_t sub_1AF8AE018()
{
  result = qword_1EB63FEC8;
  if (!qword_1EB63FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FEC8);
  }

  return result;
}

unint64_t sub_1AF8AE070()
{
  result = qword_1EB63FED0;
  if (!qword_1EB63FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FED0);
  }

  return result;
}

void *sub_1AF8AE0E4(uint64_t a1, uint64_t *a2)
{
  v134 = a2;
  v139[9] = *MEMORY[0x1E69E9840];
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v124 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v118 - v8;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v127 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v118 = &v118 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v119 = &v118 - v19;
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v118 - v23;
  v121 = OBJC_IVAR____TtC3VFX16AssetFileManager_lock;
  [*(a1 + OBJC_IVAR____TtC3VFX16AssetFileManager_lock) lock];
  v130 = sub_1AF43F898(MEMORY[0x1E69E7CC0]);
  v25 = [objc_opt_self() defaultManager];
  v26 = *(v11 + 16);
  v138 = a1;
  v123 = OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory;
  v131 = v26;
  v132 = v11 + 16;
  v26(v24, a1 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory, v10);
  sub_1AFDFC0D8();
  v129 = v11;
  v27 = *(v11 + 8);
  v126 = v11 + 8;
  v125 = v27;
  v27(v24, v10);
  v28 = sub_1AFDFCEC8();

  v139[0] = 0;
  v29 = [v25 contentsOfDirectoryAtPath:v28 error:v139];

  v30 = v139[0];
  if (v29)
  {
    v31 = sub_1AFDFD418();
    v32 = v30;
  }

  else
  {
    v33 = v139[0];
    v34 = sub_1AFDFBF58();

    swift_willThrow();
    v122 = 0;
    v31 = MEMORY[0x1E69E7CC0];
  }

  v35 = *(v31 + 16);
  v133 = v10;
  v137 = v35;
  if (!v35)
  {
LABEL_32:

    v72 = *(v138 + OBJC_IVAR____TtC3VFX16AssetFileManager_referencesToWrite);
    v73 = 1 << *(v72 + 32);
    if (v73 < 64)
    {
      v74 = ~(-1 << v73);
    }

    else
    {
      v74 = -1;
    }

    v75 = v74 & *(v72 + 56);
    v76 = (v73 + 63) >> 6;
    v135 = v129 + 32;
    v136 = OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy;

    v77 = 0;
    while (1)
    {
      do
      {
        if (!v75)
        {
          while (1)
          {
            v79 = v77 + 1;
            if (v77 + 1 >= v76)
            {
              break;
            }

            v78 = *(v72 + 8 * v77++ + 64);
            if (v78)
            {
              v77 = v79;
              goto LABEL_43;
            }
          }

          [*(v138 + v121) unlock];
          return v130;
        }

        v78 = v75;
LABEL_43:
        v75 = (v78 - 1) & v78;
        v80 = *v134;
      }

      while (!*(*v134 + 16));
      v137 = (v78 - 1) & v78;
      v81 = (*(v72 + 48) + ((v77 << 10) | (16 * __clz(__rbit64(v78)))));
      v83 = *v81;
      v82 = v81[1];
      sub_1AFDFF288();

      sub_1AFDFD038();
      v84 = sub_1AFDFF2F8();
      v85 = -1 << *(v80 + 32);
      v86 = v84 & ~v85;
      if (((*(v80 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
      {
        break;
      }

      v87 = ~v85;
      while (1)
      {
        v88 = (*(v80 + 48) + 16 * v86);
        v89 = *v88 == v83 && v88[1] == v82;
        if (v89 || (sub_1AFDFEE28() & 1) != 0)
        {
          break;
        }

        v86 = (v86 + 1) & v87;
        if (((*(v80 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v90 = *(v138 + v136);
      if (*(v90 + 16) && (v91 = sub_1AF419914(v83, v82), (v92 & 1) != 0))
      {
        v93 = v129;
        v94 = *(v90 + 56) + *(v129 + 72) * v91;
        v95 = v118;
        v96 = v133;
        v131(v118, v94, v133);
        (*(v93 + 32))(v119, v95, v96);
        v97 = objc_allocWithZone(MEMORY[0x1E696AC38]);
        v98 = sub_1AFDFC048();
        v139[0] = 0;
        v99 = [v97 initWithURL:v98 options:0 error:v139];

        if (!v99)
        {
          v117 = v139[0];

          sub_1AFDFBF58();

          swift_willThrow();

          v55 = v133;
          v116 = &v140;
          goto LABEL_68;
        }

        v100 = v139[0];
        v101 = sub_1AFDFCEC8();
        [v99 setPreferredFilename_];

        v102 = v130;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v139[0] = v102;
        v104 = sub_1AF419914(v83, v82);
        v106 = v105;
        v107 = v102[2] + ((v105 & 1) == 0);
        if (v102[3] >= v107)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v113 = v104;
            sub_1AF84D4C0();
            v104 = v113;
          }
        }

        else
        {
          sub_1AF83CCB4(v107, isUniquelyReferenced_nonNull_native);
          v104 = sub_1AF419914(v83, v82);
          if ((v106 & 1) != (v108 & 1))
          {
            goto LABEL_70;
          }
        }

        v109 = v139[0];
        v130 = v139[0];
        if (v106)
        {
          v110 = *(v139[0] + 7);
          v111 = *(v110 + 8 * v104);
          *(v110 + 8 * v104) = v99;
        }

        else
        {
          *(v139[0] + (v104 >> 6) + 8) |= 1 << v104;
          v112 = (v109[6] + 16 * v104);
          *v112 = v83;
          v112[1] = v82;
          *(v109[7] + 8 * v104) = v99;
          ++v109[2];
        }

        v125(v119, v133);
        v75 = v137;
      }

      else
      {
LABEL_37:

        v75 = v137;
      }
    }

LABEL_36:

    goto LABEL_37;
  }

  v36 = 0;
  v136 = OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy;
  v120 = v31;
  v135 = v31 + 32;
  v37 = (v129 + 56);
  v128 = v9;
  while (1)
  {
    v39 = (v135 + 16 * v36);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(v138 + v136);
    v43 = *(v42 + 16);

    if (!v43)
    {
      break;
    }

    v44 = sub_1AF419914(v41, v40);
    if ((v45 & 1) == 0)
    {
      break;
    }

    v38 = v129;
    v131(v9, *(v42 + 56) + *(v129 + 72) * v44, v10);
    (*(v38 + 56))(v9, 0, 1, v10);

    sub_1AF8B08E4(v9, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
LABEL_7:
    if (++v36 == v137)
    {
      goto LABEL_32;
    }
  }

  v46 = *v37;
  (*v37)(v9, 1, 1, v10);
  sub_1AF8B08E4(v9, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  v47 = *v134;
  if (!*(*v134 + 16))
  {

    goto LABEL_7;
  }

  sub_1AFDFF288();

  sub_1AFDFD038();
  v48 = sub_1AFDFF2F8();
  v49 = -1 << *(v47 + 32);
  v50 = v48 & ~v49;
  if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
  {
LABEL_19:

    v10 = v133;
LABEL_31:
    v9 = v128;
    goto LABEL_7;
  }

  v51 = ~v49;
  while (1)
  {
    v52 = (*(v47 + 48) + 16 * v50);
    v53 = *v52 == v41 && v52[1] == v40;
    if (v53 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v50 = (v50 + 1) & v51;
    if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v54 = v124;
  v55 = v133;
  v131(v124, v138 + v123, v133);
  v46(v54, 0, 1, v55);
  sub_1AFDFC008();
  sub_1AF8B08E4(v54, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  v56 = objc_allocWithZone(MEMORY[0x1E696AC38]);
  v57 = sub_1AFDFC048();
  v139[0] = 0;
  v58 = [v56 initWithURL:v57 options:0 error:v139];

  if (v58)
  {
    v59 = v139[0];
    v60 = v130;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v139[0] = v60;
    v62 = sub_1AF419914(v41, v40);
    v64 = v63;
    v65 = v60[2] + ((v63 & 1) == 0);
    if (v60[3] >= v65)
    {
      if ((v61 & 1) == 0)
      {
        sub_1AF84D4C0();
      }
    }

    else
    {
      sub_1AF83CCB4(v65, v61);
      v66 = sub_1AF419914(v41, v40);
      if ((v64 & 1) != (v67 & 1))
      {
LABEL_70:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v62 = v66;
    }

    v10 = v133;
    v68 = v139[0];
    v130 = v139[0];
    if (v64)
    {
      v69 = *(v139[0] + 7);
      v70 = *(v69 + 8 * v62);
      *(v69 + 8 * v62) = v58;
    }

    else
    {
      *(v139[0] + (v62 >> 6) + 8) |= 1 << v62;
      v71 = (v68[6] + 16 * v62);
      *v71 = v41;
      v71[1] = v40;
      *(v68[7] + 8 * v62) = v58;
      ++v68[2];
    }

    v125(v127, v10);
    goto LABEL_31;
  }

  v115 = v139[0];

  sub_1AFDFBF58();

  swift_willThrow();
  v116 = &v141;
LABEL_68:
  v125(*(v116 - 32), v55);
  return [*(v138 + v121) unlock];
}

uint64_t sub_1AF8AED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    LOBYTE(v20) = 1;
    sub_1AF8AF2FC(a1, a2, 0x100000000, v9);

    v12 = sub_1AFDFC128();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v9, 1, v12) != 1)
    {
      return (*(v13 + 32))(a3, v9, v12);
    }
  }

  else
  {
    v15 = sub_1AFDFC128();
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  sub_1AF8B08E4(v9, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v20 = 0;
  v21 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000035, 0x80000001AFF390C0);
  MEMORY[0x1B2718AE0](a1, a2);
  v17 = v20;
  v16 = v21;
  v18 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v19 = v18;
    swift_once();
    v18 = v19;
  }

  v20 = 0;
  sub_1AF0D4F18(v18, &v20, v17, v16);

  return sub_1AFDFC018();
}

char *sub_1AF8AF06C()
{
  *&v0[OBJC_IVAR____TtC3VFX12AssetManager_pathResolver] = 0;
  v1 = OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory;
  *&v0[v1] = sub_1AF43FDE8(MEMORY[0x1E69E7CC0]);
  *&v0[OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager] = 0;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AssetManager();
  v2 = objc_msgSendSuper2(&v10, sel_init);
  v3 = type metadata accessor for AssetManagerPathResolver();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9.receiver = v4;
  v9.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v9, sel_init);
  v7 = *&v5[OBJC_IVAR____TtC3VFX12AssetManager_pathResolver];
  *&v5[OBJC_IVAR____TtC3VFX12AssetManager_pathResolver] = v6;

  return v5;
}

uint64_t sub_1AF8AF2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a3;
  v73 = a4;
  v6 = MEMORY[0x1E69E6720];
  sub_1AF0D0EA0(0, &qword_1EB630918, sub_1AF8B0860, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v68 = &v64 - v9;
  v72 = sub_1AFDFC128();
  v10 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v11);
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v67 = &v64 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v69 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v64 = &v64 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v65 = &v64 - v24;
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], v6);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v28 = &v64 - v27;
  v29 = sub_1AFDFBFC8();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v76 = a1;
  v77 = a2;
  v74 = 47;
  v75 = 0xE100000000000000;
  sub_1AF770DF0();
  sub_1AF770E44();
  if (sub_1AFDFCD68())
  {
    (*(v30 + 104))(v33, *MEMORY[0x1E6968F68], v29);
    v35 = *(v10 + 56);
    v36 = v72;
    v35(v28, 1, 1, v72);

    v37 = v73;
    sub_1AFDFC108();
    return (v35)(v37, 0, 1, v36);
  }

  v39 = v10;
  v40 = v72;
  v41 = v73;
  v42 = v70;
  v43 = v71;
  if ((v70 & 0x100000000) != 0 || (LOBYTE(v76) = 0, sub_1AF80F414(0) == v42) || (v44 = *(v43 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory), !*(v44 + 16)) || (LOBYTE(v76) = 0, v45 = sub_1AF41A190(v42), (v46 & 1) == 0))
  {
    v53 = v41;
    if (*(v43 + OBJC_IVAR____TtC3VFX12AssetManager_authoringFileManager))
    {

      v54 = v69;
      sub_1AF8AF968(v34, a2, v69);
      sub_1AFDFBF98();

      (*(v39 + 8))(v54, v40);
      return (*(v39 + 56))(v53, 0, 1, v40);
    }

    v55 = v68;
    sub_1AF8CC608(*(v43 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory), v68);
    sub_1AF8B0860();
    v57 = v56;
    if ((*(*(v56 - 8) + 48))(v55, 1, v56) == 1)
    {
      sub_1AF8B08E4(v55, &qword_1EB630918, sub_1AF8B0860);
      return (*(v39 + 56))(v53, 1, 1, v40);
    }

    v58 = *(v39 + 32);
    v59 = v55 + *(v57 + 48);
    v60 = v66;
    v58(v66, v59, v40);
    v61 = v67;
    v58(v67, v60, v40);
    v62 = v69;
    sub_1AFDFC078();
    sub_1AFDFBF98();
    v63 = *(v39 + 8);
    v63(v62, v40);
    v63(v61, v40);
    v51 = *(v39 + 56);
    v52 = v53;
  }

  else
  {
    v47 = v64;
    (*(v39 + 16))(v64, *(v44 + 56) + *(v39 + 72) * v45, v40);
    v48 = v65;
    (*(v39 + 32))(v65, v47, v40);
    v49 = v69;
    sub_1AFDFC078();
    sub_1AFDFBF98();
    v50 = *(v39 + 8);
    v50(v49, v40);
    v50(v48, v40);
    v51 = *(v39 + 56);
    v52 = v41;
  }

  return v51(v52, 0, 1, v40);
}

id sub_1AF8AF968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v25 = a3;
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = MEMORY[0x1EEE9AC00](v12, v13).n128_u64[0];
  v16 = &v24 - v15;
  v17 = OBJC_IVAR____TtC3VFX16AssetFileManager_lock;
  [*(v3 + OBJC_IVAR____TtC3VFX16AssetFileManager_lock) lock];
  v18 = *(v3 + OBJC_IVAR____TtC3VFX16AssetFileManager_referencesToWrite);

  v19 = sub_1AF70265C(a1, a2, v18);

  if (v19 & 1) != 0 && (v20 = *(v4 + OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy), *(v20 + 16)) && (v21 = sub_1AF419914(a1, a2), (v22))
  {
    (*(v8 + 16))(v16, *(v20 + 56) + *(v8 + 72) * v21, v7);
    (*(v8 + 32))(v25, v16, v7);
  }

  else
  {
    (*(v8 + 16))(v11, v4 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory, v7);
    sub_1AFDFC078();
    (*(v8 + 8))(v11, v7);
  }

  return [*(v4 + v17) unlock];
}

uint64_t sub_1AF8AFB74(unsigned int a1, unsigned int a2, uint64_t a3)
{
  v37 = a1;
  sub_1AF0D0EA0(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - v11;
  v13 = sub_1AFDFC128();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v36 - v20;
  v22 = *(a3 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory);
  if (*(v22 + 16) && (v42 = 0, v23 = sub_1AF41A190(a2), (v24 & 1) != 0))
  {
    v25 = *(v14 + 72);
    v26 = *(v22 + 56) + v25 * v23;
    v36 = *(v14 + 16);
    v36(v17, v26, v13);
    (*(v14 + 32))(v21, v17, v13);
    v27 = *(v38 + OBJC_IVAR____TtC3VFX12AssetManager_effectIDToAssetsDirectory);
    if (*(v27 + 16))
    {
      v40 = 0;
      v28 = v37;
      v29 = sub_1AF41A190(v37);
      if (v30)
      {
        v36(v12, *(v27 + 56) + v29 * v25, v13);
        v31 = *(v14 + 8);

        v31(v21, v13);

        (*(v14 + 56))(v12, 0, 1, v13);
        return sub_1AF8B08E4(v12, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
      }
    }

    else
    {
      v28 = v37;
    }

    v34 = *(v14 + 56);
    v34(v12, 1, 1, v13);
    sub_1AF8B08E4(v12, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
    v36(v8, v21, v13);
    v34(v8, 0, 1, v13);
    v39 = 0;
    sub_1AF825B54(v8, v28);
    return (*(v14 + 8))(v21, v13);
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v33 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v35 = v33;
      swift_once();
      v33 = v35;
    }

    v41 = 0;
    return sub_1AF0D4F18(v33, &v41, 0xD000000000000034, 0x80000001AFF39080);
  }
}

id sub_1AF8AFFA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1AF8B005C(char *a1)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1AFDFC318();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AFDFC128();
  v42 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v41 - v18;
  *(v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_isPerformingChangesLevel) = 0;
  v20 = OBJC_IVAR____TtC3VFX16AssetFileManager_lock;
  v21 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v43 = v1;
  *(v1 + v20) = v21;
  v22 = *(v8 + 16);
  v45 = OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory;
  v46 = v22;
  v49 = a1;
  v22((v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory), a1, v7);
  v44 = objc_opt_self();
  v23 = [v44 defaultManager];
  v24 = [v23 temporaryDirectory];

  sub_1AFDFC0B8();
  sub_1AFDFC078();
  v25 = *(v8 + 8);
  v26 = v11;
  v27 = v42;
  v25(v26, v42);
  sub_1AFDFC308();
  sub_1AFDFC2B8();
  v28 = v6;
  v29 = v43;
  (*(v47 + 8))(v28, v48);
  sub_1AFDFC078();

  v25(v15, v27);
  (*(v8 + 32))(v29 + OBJC_IVAR____TtC3VFX16AssetFileManager_temporaryDirectory, v19, v27);
  v30 = [v44 defaultManager];
  v46(v19, v29 + v45, v27);
  sub_1AFDFC0D8();
  v25(v19, v27);
  v31 = sub_1AFDFCEC8();

  v50[0] = 0;
  v32 = [v30 contentsOfDirectoryAtPath:v31 error:v50];

  v33 = v50[0];
  if (v32)
  {
    v34 = sub_1AFDFD418();
    v35 = v33;
  }

  else
  {
    v36 = v50[0];
    v37 = sub_1AFDFBF58();

    swift_willThrow();
    v34 = MEMORY[0x1E69E7CC0];
  }

  v38 = sub_1AF0D20CC(v34);

  *(v29 + OBJC_IVAR____TtC3VFX16AssetFileManager_referencesToWrite) = v38;
  v39 = sub_1AF43FFB8(MEMORY[0x1E69E7CC0]);
  v25(v49, v27);
  *(v29 + OBJC_IVAR____TtC3VFX16AssetFileManager_allReferencesWithTemporaryCopy) = v39;
  return v29;
}

uint64_t sub_1AF8B04DC()
{
  v1 = v0;
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1AFDFC128();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() defaultManager];
  v8 = OBJC_IVAR____TtC3VFX16AssetFileManager_temporaryDirectory;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_temporaryDirectory, v2);
  v9 = sub_1AFDFC048();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v17[0] = 0;
  v11 = [v7 removeItemAtURL:v9 error:v17];

  if (v11)
  {
    v12 = v17[0];
  }

  else
  {
    v13 = v17[0];
    v14 = sub_1AFDFBF58();

    swift_willThrow();
  }

  v10((v1 + v8), v2);
  v10((v1 + OBJC_IVAR____TtC3VFX16AssetFileManager_persistedDirectory), v2);

  return v1;
}

uint64_t sub_1AF8B06F8()
{
  sub_1AF8B04DC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssetFileManager()
{
  result = qword_1ED722960;
  if (!qword_1ED722960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1AF8B07A4()
{
  result = sub_1AFDFC128();
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

void sub_1AF8B0860()
{
  if (!qword_1EB630920)
  {
    sub_1AF6B740C(255, &qword_1ED7268C0);
    sub_1AFDFC128();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB630920);
    }
  }
}

uint64_t sub_1AF8B08E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF0D0EA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF8B0954(uint64_t a1, char a2)
{
  v55 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v87 = qword_1ED73B840;
  v88 = 0;
  v89 = 2;
  v90 = 0;
  v91 = 2;
  v92 = 0;
  sub_1AF705030(1, &v56);
  v4 = v56;
  v5 = v57;
  v6 = v58;
  v7 = v60;
  v8 = v61;
  v9 = v59 | 1;
  v81 = v56;
  v82 = v57;
  v83 = v58;
  v84 = v59 | 1;
  v85 = v60;
  v86 = v61;
  if (a2)
  {
    sub_1AF0D0EA0(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AFE431C0;
    *(inited + 32) = &type metadata for DoNotExport;
    *(inited + 40) = &off_1F253CF60;
    sub_1AF5D1EC0(inited, &v62);
    sub_1AF820124(&v56);
    swift_setDeallocating();
    v4 = v62;
    v5 = v63;
    v6 = v64;
    v9 = v65;
    v7 = v66;
    v8 = v67;
  }

  v75 = v4;
  v76 = v5;
  v77 = v6;
  v78 = v9;
  v79 = v7;
  v80 = v8;
  sub_1AF6B06C0(a1, &v75, 0x200000000, v68);
  if (*v68)
  {
    if (v71 > 0 && (v49 = *(&v69 + 1)) != 0)
    {
      v48 = *&v68[40];
      v11 = *(&v70 + 1);
      v12 = *(v70 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v13 = *(*(&v70 + 1) + 32);
      v72 = *v68;
      v73 = *&v68[8];
      v74 = *&v68[24];
      v54[2] = *&v68[32];
      v54[3] = v69;
      v54[4] = v70;
      v54[5] = v71;
      v54[0] = *v68;
      v54[1] = *&v68[16];
      sub_1AF5DD298(v54, v52);
      v14 = 0;
      v47 = v12;
      v46 = v13;
      do
      {
        v50 = v14;
        v15 = (v48 + 48 * v14);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        v20 = *(v15 + 4);
        v21 = *(v15 + 5);
        if (v12)
        {
          v22 = *(v21 + 376);

          os_unfair_lock_lock(v22);
          os_unfair_lock_lock(*(v21 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v13);
        v23 = *(v11 + 64);
        v52[0] = *(v11 + 48);
        v52[1] = v23;
        v53 = *(v11 + 80);
        v24 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
        *(v11 + 48) = ecs_stack_allocator_allocate(*(v11 + 32), 48 * v24, 8);
        *(v11 + 56) = v24;
        *(v11 + 72) = 0;
        *(v11 + 80) = 0;
        *(v11 + 64) = 0;
        v25 = sub_1AF64B110(&type metadata for VirtualFileAsset, &off_1F2545DB8, v19, v18, v20, v11);
        if (v19)
        {
          if (v20)
          {
            v26 = (v25 + 24);
            do
            {
              v27 = *(v26 - 1);
              v28 = *v26;
              swift_bridgeObjectRetain_n();
              sub_1AF0D2164(&v51, v27, v28);

              sub_1AF649C6C(*(v21 + 40), &type metadata for MeshFileAsset, &v51);
              if (v51 == 1)
              {
                v29 = sub_1AFDFCEC8();
                v30 = [v29 stringByDeletingPathExtension];

                if (!v30)
                {
                  sub_1AFDFCEF8();
                  v30 = sub_1AFDFCEC8();
                }

                v31 = sub_1AFDFCEC8();
                v32 = [v30 stringByAppendingPathExtension_];

                if (v32)
                {
                  v27 = sub_1AFDFCEF8();
                  v34 = v33;

                  v28 = v34;
                }

                else
                {
                }

                sub_1AF0D2164(&v51, v27, v28);
              }

              v26 += 6;
              --v20;
            }

            while (v20);
          }
        }

        else if (v16 != v17)
        {
          v35 = (v25 + 48 * v16 + 24);
          v36 = v17 - v16;
          do
          {
            v37 = *(v35 - 1);
            v38 = *v35;
            swift_bridgeObjectRetain_n();
            sub_1AF0D2164(&v51, v37, v38);

            sub_1AF649C6C(*(v21 + 40), &type metadata for MeshFileAsset, &v51);
            if (v51 == 1)
            {
              v39 = sub_1AFDFCEC8();
              v40 = [v39 stringByDeletingPathExtension];

              if (!v40)
              {
                sub_1AFDFCEF8();
                v40 = sub_1AFDFCEC8();
              }

              v41 = sub_1AFDFCEC8();
              v42 = [v40 stringByAppendingPathExtension_];

              if (v42)
              {
                v37 = sub_1AFDFCEF8();
                v44 = v43;

                v38 = v44;
              }

              else
              {
              }

              sub_1AF0D2164(&v51, v37, v38);
            }

            v35 += 6;
            --v36;
          }

          while (v36);
        }

        sub_1AF630994(v11, &v72, v52);
        sub_1AF62D29C(v21);
        v13 = v46;
        ecs_stack_allocator_pop_snapshot(v46);
        v12 = v47;
        if (v47)
        {
          os_unfair_lock_unlock(*(v21 + 344));
          os_unfair_lock_unlock(*(v21 + 376));
        }

        v14 = v50 + 1;
      }

      while (v50 + 1 != v49);

      sub_1AF5D1564(v68);
    }

    else
    {
    }

    sub_1AF5D1564(v68);
  }

  else
  {
  }

  return v55;
}

void **assignWithCopy for AssetManagerInstance(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **assignWithTake for AssetManagerInstance(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

void sub_1AF8B1024(void **a1, void *a2)
{
  v4 = *a1;
  v5 = a2;

  *a1 = a2;
}

uint64_t sub_1AF8B106C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v14) = a4;
  sub_1AF8B5B44(0, &qword_1EB63FF00, sub_1AF8B5AF0, &type metadata for ColorRampComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8B5AF0();
  sub_1AFDFF3F8();
  v15 = a2;
  v16 = a3;
  v17 = BYTE4(v14);
  sub_1AF80BC20();
  sub_1AFDFE918();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF8B11F8(uint64_t a1)
{
  v2 = sub_1AF8B5AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8B1234(uint64_t a1)
{
  v2 = sub_1AF8B5AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF8B1270@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF8B51DC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF8B12C4@<D0>(uint64_t a1@<X8>)
{
  sub_1AF43A038();
  v2 = swift_allocObject();
  __asm { FMOV            V1.4S, #1.0 }

  v2[1] = xmmword_1AFE4C620;
  v2[2] = _Q1;
  result = 0.0;
  v2[3] = xmmword_1AFE201A0;
  *a1 = v2;
  *(a1 + 8) = &unk_1F24EDC70;
  *(a1 + 16) = 1;
  return result;
}

double sub_1AF8B1334@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_1AF8B1340(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for ColorRampsState, &off_1F2541CC0, v4);

  v5 = v2[2];
  v6 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  swift_getObjectType();
  v7 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v5);

  sub_1AF6B1B20(a1, v7, v5);
  os_unfair_lock_unlock(*(v6 + 40));
  v8 = v2[7];
  swift_getObjectType();
  v9 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v8);

  sub_1AF6B1B20(a1, v9, v8);
  os_unfair_lock_unlock(*(v6 + 40));
  v10 = v2[12];
  swift_getObjectType();
  v11 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v10);

  sub_1AF6B1B20(a1, v11, v10);
  os_unfair_lock_unlock(*(v6 + 40));
  v12 = v2[17];
  swift_getObjectType();
  v13 = sub_1AF6D6B58();
  os_unfair_lock_lock(*(v6 + 40));
  sub_1AF6B1714(a1, v12);

  sub_1AF6B1B20(a1, v13, v12);
  v14 = *(v6 + 40);

  os_unfair_lock_unlock(v14);
}

uint64_t sub_1AF8B1588(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v445 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 56);
  v7 = *(a3 + 72);
  v384 = *(a3 + 88);
  v383[0] = v6;
  v383[1] = v7;
  sub_1AF6B06C0(a2, v383, 0x200000000, &v385);
  if (v385)
  {
    if (v392 < 1 || (v344 = v389) == 0)
    {
LABEL_318:
      sub_1AF5D1564(&v385);
      goto LABEL_319;
    }

    v8 = 0;
    v342 = v388;
    v9 = v391;
    v10 = *(v390 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v348 = *(v391 + 32);
    v364 = v385;
    v365 = v386;
    v366 = v387;
    v341 = v10;
    while (1)
    {
      v351 = v5;
      v11 = (v342 + 48 * v8);
      v12 = *v11;
      v357 = *(v11 + 2);
      v360 = v11[1];
      v13 = *(v11 + 5);
      v354 = *(v11 + 4);
      v346 = v8;
      if (v10)
      {
        v14 = *(v13 + 376);

        os_unfair_lock_lock(v14);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v348);
      v15 = *(v9 + 64);
      v443[0] = *(v9 + 48);
      v443[1] = v15;
      v444 = *(v9 + 80);
      v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      *(v9 + 48) = ecs_stack_allocator_allocate(*(v9 + 32), 48 * v16, 8);
      *(v9 + 56) = v16;
      *(v9 + 72) = 0;
      *(v9 + 80) = 0;
      *(v9 + 64) = 0;
      if (v357)
      {
        if (v354)
        {
          v17 = 0;
          while (1)
          {
            v361 = *(v357 + 8 * v17);
            v26 = *(*(v13 + 40) + 16);
            v27 = *(v26 + 128);
            if (*(v27 + 16))
            {
              v28 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotUpload);
              if ((v29 & 1) != 0 && *(*(v26 + 24) + 16 * *(*(v27 + 56) + 8 * v28) + 32) == &type metadata for TextureGPURepresentationDoNotUpload)
              {
                goto LABEL_52;
              }
            }

            v431 = &type metadata for TextureGPURepresentationDoNotUpload;
            *&v432 = &off_1F25461B8;
            LOBYTE(v434) = 0;
            v30 = *(v9 + 104);
            v31 = *(v30 + 16);
            if (!v31)
            {

LABEL_47:
              v45 = *(v13 + 240) - *(v13 + 232);
              v46 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v45, 8);
              *v46 = v361;
              sub_1AF63515C(&v431, &v418);
              *v421 = v46;
              *&v421[8] = v45;
              *&v421[16] = 1;
              v47 = *(v9 + 104);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v47;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v47 = sub_1AF420EA0(0, v47[2] + 1, 1, v47);
                *(v9 + 104) = v47;
              }

              v50 = v47[2];
              v49 = v47[3];
              if (v50 >= v49 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v49 > 1, v50 + 1, 1, v47);
              }

              sub_1AF635250(&v431);
              v51 = *(v9 + 104);
              *(v51 + 16) = v50 + 1;
              v52 = v51 + 72 * v50;
              *(v52 + 32) = v418;
              v54 = v420;
              v53 = *v421;
              v55 = v419;
              *(v52 + 96) = *&v421[16];
              *(v52 + 64) = v54;
              *(v52 + 80) = v53;
              *(v52 + 48) = v55;
              *(v9 + 104) = v51;
              goto LABEL_52;
            }

            v32 = v30 + 32;

            v33 = 0;
            while (1)
            {
              sub_1AF8B5A00(v32, v438, sub_1AF43A540);
              sub_1AF63515C(v438, &v418);
              sub_1AF63515C(&v431, v421);
              if (BYTE8(v420) <= 2u)
              {
                if (!BYTE8(v420))
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40])
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_33;
                }

                if (BYTE8(v420) == 1)
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40] != 1)
                  {
                    goto LABEL_20;
                  }

LABEL_33:
                  v36 = v424;
                  v37 = *v421;
                  sub_1AF635250(&v418);
                  if (v36 == v37)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_21;
                }

                sub_1AF63515C(&v418, &v424);
                if (v421[40] != 2)
                {
LABEL_19:
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
LABEL_20:
                  sub_1AF8B5918(&v418, sub_1AF635194);
                  goto LABEL_21;
                }

                goto LABEL_38;
              }

              if (BYTE8(v420) == 3)
              {
                sub_1AF63515C(&v418, &v424);
                if (v421[40] != 3)
                {
                  goto LABEL_19;
                }

LABEL_38:
                sub_1AF616568(&v424, &v412);
                sub_1AF616568(v421, &v402);
                v38 = *(&v413 + 1);
                v39 = v414;
                sub_1AF441150(&v412, *(&v413 + 1));
                LOBYTE(v38) = sub_1AF640C98(&v402, v38, v39);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
                sub_1AF8B5918(v438, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
                sub_1AF635250(&v418);
                if (v38)
                {
                  goto LABEL_43;
                }

                goto LABEL_21;
              }

              if (BYTE8(v420) != 4)
              {
                break;
              }

              sub_1AF8B5918(v438, sub_1AF43A540);
              sub_1AF63515C(&v418, &v424);
              if (v421[40] != 4)
              {
                goto LABEL_20;
              }

              v34 = v424;
              v35 = v421[0];
              sub_1AF635250(&v418);
              if (v34 == v35)
              {
                goto LABEL_43;
              }

LABEL_21:
              ++v33;
              v32 += 72;
              if (v31 == v33)
              {
                goto LABEL_47;
              }
            }

            sub_1AF8B5918(v438, sub_1AF43A540);
            if (v421[40] != 5)
            {
              goto LABEL_20;
            }

            v40 = vorrq_s8(*&v421[8], *&v421[24]);
            if (*&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | *v421)
            {
              goto LABEL_20;
            }

            sub_1AF635250(&v418);
LABEL_43:
            v42 = sub_1AFBFCA08(&v418);
            v43 = *(v41 + 48);
            if (v43)
            {
              v44 = *(v41 + 64);
              *(v43 + 8 * v44) = v361;
              *(v41 + 64) = v44 + 1;
            }

            (v42)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_52:
            v56 = *(*(v13 + 40) + 16);
            v57 = *(v56 + 128);
            if (*(v57 + 16))
            {
              v58 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotDownload);
              if ((v59 & 1) != 0 && *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v58) + 32) == &type metadata for TextureGPURepresentationDoNotDownload)
              {
                goto LABEL_90;
              }
            }

            v431 = &type metadata for TextureGPURepresentationDoNotDownload;
            *&v432 = &off_1F2546118;
            LOBYTE(v434) = 0;
            v60 = *(v9 + 104);
            v61 = *(v60 + 16);
            if (!v61)
            {

LABEL_85:
              v75 = *(v13 + 240) - *(v13 + 232);
              v76 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v75, 8);
              *v76 = v361;
              sub_1AF63515C(&v431, &v418);
              *v421 = v76;
              *&v421[8] = v75;
              *&v421[16] = 1;
              v77 = *(v9 + 104);
              v78 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v77;
              if ((v78 & 1) == 0)
              {
                v77 = sub_1AF420EA0(0, v77[2] + 1, 1, v77);
                *(v9 + 104) = v77;
              }

              v80 = v77[2];
              v79 = v77[3];
              if (v80 >= v79 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v79 > 1, v80 + 1, 1, v77);
              }

              sub_1AF635250(&v431);
              v81 = *(v9 + 104);
              *(v81 + 16) = v80 + 1;
              v82 = v81 + 72 * v80;
              *(v82 + 32) = v418;
              v84 = v420;
              v83 = *v421;
              v85 = v419;
              *(v82 + 96) = *&v421[16];
              *(v82 + 64) = v84;
              *(v82 + 80) = v83;
              *(v82 + 48) = v85;
              *(v9 + 104) = v81;
              goto LABEL_90;
            }

            v62 = v60 + 32;

            v63 = 0;
            while (2)
            {
              sub_1AF8B5A00(v62, v438, sub_1AF43A540);
              sub_1AF63515C(v438, &v418);
              sub_1AF63515C(&v431, v421);
              if (BYTE8(v420) <= 2u)
              {
                if (!BYTE8(v420))
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40])
                  {
                    goto LABEL_58;
                  }

LABEL_71:
                  v66 = v424;
                  v67 = *v421;
                  sub_1AF635250(&v418);
                  if (v66 == v67)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_59;
                }

                if (BYTE8(v420) == 1)
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40] == 1)
                  {
                    goto LABEL_71;
                  }

LABEL_58:
                  sub_1AF8B5918(&v418, sub_1AF635194);
LABEL_59:
                  ++v63;
                  v62 += 72;
                  if (v61 == v63)
                  {
                    goto LABEL_85;
                  }

                  continue;
                }

                sub_1AF63515C(&v418, &v424);
                if (v421[40] == 2)
                {
LABEL_76:
                  sub_1AF616568(&v424, &v412);
                  sub_1AF616568(v421, &v402);
                  v68 = *(&v413 + 1);
                  v69 = v414;
                  sub_1AF441150(&v412, *(&v413 + 1));
                  LOBYTE(v68) = sub_1AF640C98(&v402, v68, v69);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
                  sub_1AF635250(&v418);
                  if (v68)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_59;
                }

LABEL_57:
                sub_1AF8B5918(v438, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
                goto LABEL_58;
              }

              break;
            }

            if (BYTE8(v420) == 3)
            {
              sub_1AF63515C(&v418, &v424);
              if (v421[40] == 3)
              {
                goto LABEL_76;
              }

              goto LABEL_57;
            }

            if (BYTE8(v420) == 4)
            {
              sub_1AF8B5918(v438, sub_1AF43A540);
              sub_1AF63515C(&v418, &v424);
              if (v421[40] != 4)
              {
                goto LABEL_58;
              }

              v64 = v424;
              v65 = v421[0];
              sub_1AF635250(&v418);
              if (v64 == v65)
              {
                goto LABEL_81;
              }

              goto LABEL_59;
            }

            sub_1AF8B5918(v438, sub_1AF43A540);
            if (v421[40] != 5)
            {
              goto LABEL_58;
            }

            v70 = vorrq_s8(*&v421[8], *&v421[24]);
            if (*&vorr_s8(*v70.i8, *&vextq_s8(v70, v70, 8uLL)) | *v421)
            {
              goto LABEL_58;
            }

            sub_1AF635250(&v418);
LABEL_81:
            v72 = sub_1AFBFCA08(&v418);
            v73 = *(v71 + 48);
            if (v73)
            {
              v74 = *(v71 + 64);
              *(v73 + 8 * v74) = v361;
              *(v71 + 64) = v74 + 1;
            }

            (v72)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_90:
            v86 = *(*(v13 + 40) + 16);
            v87 = *(v86 + 128);
            if (*(v87 + 16))
            {
              v88 = sub_1AF449CB8(&type metadata for TextureRequireCPURepresentation);
              if ((v89 & 1) != 0 && *(*(v86 + 24) + 16 * *(*(v87 + 56) + 8 * v88) + 32) == &type metadata for TextureRequireCPURepresentation)
              {
                goto LABEL_128;
              }
            }

            v431 = &type metadata for TextureRequireCPURepresentation;
            *&v432 = &off_1F2544440;
            LOBYTE(v434) = 0;
            v90 = *(v9 + 104);
            v91 = *(v90 + 16);
            if (!v91)
            {

LABEL_123:
              v105 = *(v13 + 240) - *(v13 + 232);
              v106 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v105, 8);
              *v106 = v361;
              sub_1AF63515C(&v431, &v418);
              *v421 = v106;
              *&v421[8] = v105;
              *&v421[16] = 1;
              v107 = *(v9 + 104);
              v108 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v107;
              if ((v108 & 1) == 0)
              {
                v107 = sub_1AF420EA0(0, v107[2] + 1, 1, v107);
                *(v9 + 104) = v107;
              }

              v110 = v107[2];
              v109 = v107[3];
              if (v110 >= v109 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v109 > 1, v110 + 1, 1, v107);
              }

              sub_1AF635250(&v431);
              v111 = *(v9 + 104);
              *(v111 + 16) = v110 + 1;
              v112 = v111 + 72 * v110;
              *(v112 + 32) = v418;
              v114 = v420;
              v113 = *v421;
              v115 = v419;
              *(v112 + 96) = *&v421[16];
              *(v112 + 64) = v114;
              *(v112 + 80) = v113;
              *(v112 + 48) = v115;
              *(v9 + 104) = v111;
              goto LABEL_128;
            }

            v92 = v90 + 32;

            v93 = 0;
            while (2)
            {
              sub_1AF8B5A00(v92, v438, sub_1AF43A540);
              sub_1AF63515C(v438, &v418);
              sub_1AF63515C(&v431, v421);
              if (BYTE8(v420) <= 2u)
              {
                if (!BYTE8(v420))
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40])
                  {
                    goto LABEL_96;
                  }

LABEL_109:
                  v96 = v424;
                  v97 = *v421;
                  sub_1AF635250(&v418);
                  if (v96 == v97)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_97;
                }

                if (BYTE8(v420) == 1)
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40] == 1)
                  {
                    goto LABEL_109;
                  }

LABEL_96:
                  sub_1AF8B5918(&v418, sub_1AF635194);
LABEL_97:
                  ++v93;
                  v92 += 72;
                  if (v91 == v93)
                  {
                    goto LABEL_123;
                  }

                  continue;
                }

                sub_1AF63515C(&v418, &v424);
                if (v421[40] == 2)
                {
LABEL_114:
                  sub_1AF616568(&v424, &v412);
                  sub_1AF616568(v421, &v402);
                  v98 = *(&v413 + 1);
                  v99 = v414;
                  sub_1AF441150(&v412, *(&v413 + 1));
                  LOBYTE(v98) = sub_1AF640C98(&v402, v98, v99);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
                  sub_1AF635250(&v418);
                  if (v98)
                  {
                    goto LABEL_119;
                  }

                  goto LABEL_97;
                }

LABEL_95:
                sub_1AF8B5918(v438, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
                goto LABEL_96;
              }

              break;
            }

            if (BYTE8(v420) == 3)
            {
              sub_1AF63515C(&v418, &v424);
              if (v421[40] == 3)
              {
                goto LABEL_114;
              }

              goto LABEL_95;
            }

            if (BYTE8(v420) == 4)
            {
              sub_1AF8B5918(v438, sub_1AF43A540);
              sub_1AF63515C(&v418, &v424);
              if (v421[40] != 4)
              {
                goto LABEL_96;
              }

              v94 = v424;
              v95 = v421[0];
              sub_1AF635250(&v418);
              if (v94 == v95)
              {
                goto LABEL_119;
              }

              goto LABEL_97;
            }

            sub_1AF8B5918(v438, sub_1AF43A540);
            if (v421[40] != 5)
            {
              goto LABEL_96;
            }

            v100 = vorrq_s8(*&v421[8], *&v421[24]);
            if (*&vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL)) | *v421)
            {
              goto LABEL_96;
            }

            sub_1AF635250(&v418);
LABEL_119:
            v102 = sub_1AFBFCA08(&v418);
            v103 = *(v101 + 48);
            if (v103)
            {
              v104 = *(v101 + 64);
              *(v103 + 8 * v104) = v361;
              *(v101 + 64) = v104 + 1;
            }

            (v102)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_128:
            v116 = *(*(v13 + 40) + 16);
            v117 = *(v116 + 128);
            if (*(v117 + 16))
            {
              v118 = sub_1AF449CB8(&type metadata for TextureRequireGPURepresentation);
              if ((v119 & 1) != 0 && *(*(v116 + 24) + 16 * *(*(v117 + 56) + 8 * v118) + 32) == &type metadata for TextureRequireGPURepresentation)
              {
                goto LABEL_166;
              }
            }

            v431 = &type metadata for TextureRequireGPURepresentation;
            *&v432 = &off_1F25442D0;
            LOBYTE(v434) = 0;
            v120 = *(v9 + 104);
            v121 = *(v120 + 16);
            if (!v121)
            {

LABEL_161:
              v135 = *(v13 + 240) - *(v13 + 232);
              v136 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v135, 8);
              *v136 = v361;
              sub_1AF63515C(&v431, &v418);
              *v421 = v136;
              *&v421[8] = v135;
              *&v421[16] = 1;
              v137 = *(v9 + 104);
              v138 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v137;
              if ((v138 & 1) == 0)
              {
                v137 = sub_1AF420EA0(0, v137[2] + 1, 1, v137);
                *(v9 + 104) = v137;
              }

              v140 = v137[2];
              v139 = v137[3];
              if (v140 >= v139 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v139 > 1, v140 + 1, 1, v137);
              }

              sub_1AF635250(&v431);
              v141 = *(v9 + 104);
              *(v141 + 16) = v140 + 1;
              v142 = v141 + 72 * v140;
              *(v142 + 32) = v418;
              v144 = v420;
              v143 = *v421;
              v145 = v419;
              *(v142 + 96) = *&v421[16];
              *(v142 + 64) = v144;
              *(v142 + 80) = v143;
              *(v142 + 48) = v145;
              *(v9 + 104) = v141;
              goto LABEL_166;
            }

            v122 = v120 + 32;

            v123 = 0;
            while (2)
            {
              sub_1AF8B5A00(v122, v438, sub_1AF43A540);
              sub_1AF63515C(v438, &v418);
              sub_1AF63515C(&v431, v421);
              if (BYTE8(v420) <= 2u)
              {
                if (!BYTE8(v420))
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40])
                  {
                    goto LABEL_134;
                  }

LABEL_147:
                  v126 = v424;
                  v127 = *v421;
                  sub_1AF635250(&v418);
                  if (v126 == v127)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_135;
                }

                if (BYTE8(v420) == 1)
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40] == 1)
                  {
                    goto LABEL_147;
                  }

LABEL_134:
                  sub_1AF8B5918(&v418, sub_1AF635194);
LABEL_135:
                  ++v123;
                  v122 += 72;
                  if (v121 == v123)
                  {
                    goto LABEL_161;
                  }

                  continue;
                }

                sub_1AF63515C(&v418, &v424);
                if (v421[40] == 2)
                {
LABEL_152:
                  sub_1AF616568(&v424, &v412);
                  sub_1AF616568(v421, &v402);
                  v128 = *(&v413 + 1);
                  v129 = v414;
                  sub_1AF441150(&v412, *(&v413 + 1));
                  LOBYTE(v128) = sub_1AF640C98(&v402, v128, v129);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
                  sub_1AF635250(&v418);
                  if (v128)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_135;
                }

LABEL_133:
                sub_1AF8B5918(v438, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
                goto LABEL_134;
              }

              break;
            }

            if (BYTE8(v420) == 3)
            {
              sub_1AF63515C(&v418, &v424);
              if (v421[40] == 3)
              {
                goto LABEL_152;
              }

              goto LABEL_133;
            }

            if (BYTE8(v420) == 4)
            {
              sub_1AF8B5918(v438, sub_1AF43A540);
              sub_1AF63515C(&v418, &v424);
              if (v421[40] != 4)
              {
                goto LABEL_134;
              }

              v124 = v424;
              v125 = v421[0];
              sub_1AF635250(&v418);
              if (v124 == v125)
              {
                goto LABEL_157;
              }

              goto LABEL_135;
            }

            sub_1AF8B5918(v438, sub_1AF43A540);
            if (v421[40] != 5)
            {
              goto LABEL_134;
            }

            v130 = vorrq_s8(*&v421[8], *&v421[24]);
            if (*&vorr_s8(*v130.i8, *&vextq_s8(v130, v130, 8uLL)) | *v421)
            {
              goto LABEL_134;
            }

            sub_1AF635250(&v418);
LABEL_157:
            v132 = sub_1AFBFCA08(&v418);
            v133 = *(v131 + 48);
            if (v133)
            {
              v134 = *(v131 + 64);
              *(v133 + 8 * v134) = v361;
              *(v131 + 64) = v134 + 1;
            }

            (v132)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_166:
            v146 = *(*(v13 + 40) + 16);
            v147 = *(v146 + 128);
            if (*(v147 + 16))
            {
              v148 = sub_1AF449CB8(&type metadata for TextureLoadingOptions);
              if ((v149 & 1) != 0 && *(*(v146 + 24) + 16 * *(*(v147 + 56) + 8 * v148) + 32) == &type metadata for TextureLoadingOptions)
              {
                *v438 = &type metadata for TextureLoadingOptions;
                *&v438[8] = &off_1F2543FE0;
                LOBYTE(v439) = 1;
                v150 = *(v9 + 104);
                v151 = *(v150 + 16);

                if (v151)
                {
                  v152 = 0;
                  v153 = v150 + 32;
                  while (1)
                  {
                    sub_1AF8B5A00(v153, &v418, sub_1AF43A540);
                    v154 = sub_1AF6346E0(&v418, v438);
                    sub_1AF8B5918(&v418, sub_1AF43A540);
                    if (v154)
                    {
                      break;
                    }

                    ++v152;
                    v153 += 72;
                    if (v151 == v152)
                    {
                      goto LABEL_12;
                    }
                  }

                  v156 = sub_1AFBFCA08(&v418);
                  v157 = *(v155 + 48);
                  if (v157)
                  {
                    v158 = *(v155 + 64);
                    *(v157 + 8 * v158) = v361;
                    *(v155 + 64) = v158 + 1;
                  }

                  (v156)(&v418, 0);

                  sub_1AF635250(v438);
                }

                else
                {
LABEL_12:
                  v18 = *(v13 + 240) - *(v13 + 232);
                  v19 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v18, 8);
                  *v19 = v361;
                  sub_1AF63515C(v438, &v418);
                  *v421 = v19;
                  *&v421[8] = v18;
                  *&v421[16] = 1;
                  sub_1AFCEF4F8();
                  v20 = *(*(v9 + 104) + 16);
                  sub_1AFCEF5E0(v20);

                  sub_1AF635250(v438);
                  v21 = *(v9 + 104);
                  *(v21 + 16) = v20 + 1;
                  v22 = v21 + 72 * v20;
                  *(v22 + 32) = v418;
                  v24 = v420;
                  v23 = *v421;
                  v25 = v419;
                  *(v22 + 96) = *&v421[16];
                  *(v22 + 64) = v24;
                  *(v22 + 80) = v23;
                  *(v22 + 48) = v25;
                  *(v9 + 104) = v21;
                }
              }
            }

            if (++v17 == v354)
            {
              goto LABEL_178;
            }
          }
        }

        goto LABEL_178;
      }

      if (v12 != v360)
      {
        break;
      }

LABEL_178:
      sub_1AF630994(v9, &v364, v443);
      v5 = v351;
      sub_1AF62D29C(v13);
      ecs_stack_allocator_pop_snapshot(v348);
      v10 = v341;
      if (v341)
      {
        os_unfair_lock_unlock(*(v13 + 344));
        os_unfair_lock_unlock(*(v13 + 376));
      }

      v8 = v346 + 1;
      if (v346 + 1 == v344)
      {
        goto LABEL_318;
      }
    }

LABEL_182:
    v167 = *(*(v13 + 40) + 16);
    v168 = *(v167 + 128);
    if (*(v168 + 16))
    {
      v169 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotUpload);
      if ((v170 & 1) != 0 && *(*(v167 + 24) + 16 * *(*(v168 + 56) + 8 * v169) + 32) == &type metadata for TextureGPURepresentationDoNotUpload)
      {
        goto LABEL_220;
      }
    }

    v431 = &type metadata for TextureGPURepresentationDoNotUpload;
    *&v432 = &off_1F25461B8;
    LOBYTE(v434) = 0;
    v171 = *(v9 + 104);
    v172 = *(v171 + 16);
    if (!v172)
    {

LABEL_215:
      v186 = *(v13 + 240) - *(v13 + 232);
      v187 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v186, 8);
      *v187 = v12;
      sub_1AF63515C(&v431, &v418);
      *v421 = v187;
      *&v421[8] = v186;
      *&v421[16] = 1;
      v188 = *(v9 + 104);
      v189 = swift_isUniquelyReferenced_nonNull_native();
      *(v9 + 104) = v188;
      if ((v189 & 1) == 0)
      {
        v188 = sub_1AF420EA0(0, v188[2] + 1, 1, v188);
        *(v9 + 104) = v188;
      }

      v191 = v188[2];
      v190 = v188[3];
      if (v191 >= v190 >> 1)
      {
        *(v9 + 104) = sub_1AF420EA0(v190 > 1, v191 + 1, 1, v188);
      }

      sub_1AF635250(&v431);
      v192 = *(v9 + 104);
      *(v192 + 16) = v191 + 1;
      v193 = v192 + 72 * v191;
      *(v193 + 32) = v418;
      v195 = v420;
      v194 = *v421;
      v196 = v419;
      *(v193 + 96) = *&v421[16];
      *(v193 + 64) = v195;
      *(v193 + 80) = v194;
      *(v193 + 48) = v196;
      *(v9 + 104) = v192;
      goto LABEL_220;
    }

    v173 = v171 + 32;

    v174 = 0;
    while (1)
    {
      sub_1AF8B5A00(v173, v438, sub_1AF43A540);
      sub_1AF63515C(v438, &v418);
      sub_1AF63515C(&v431, v421);
      if (BYTE8(v420) <= 2u)
      {
        break;
      }

      if (BYTE8(v420) == 3)
      {
        sub_1AF63515C(&v418, &v424);
        if (v421[40] != 3)
        {
          goto LABEL_187;
        }

LABEL_206:
        sub_1AF616568(&v424, &v412);
        sub_1AF616568(v421, &v402);
        v179 = *(&v413 + 1);
        v180 = v414;
        sub_1AF441150(&v412, *(&v413 + 1));
        LOBYTE(v179) = sub_1AF640C98(&v402, v179, v180);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
        sub_1AF8B5918(v438, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
        sub_1AF635250(&v418);
        if (v179)
        {
          goto LABEL_211;
        }

        goto LABEL_189;
      }

      if (BYTE8(v420) != 4)
      {
        sub_1AF8B5918(v438, sub_1AF43A540);
        if (v421[40] == 5)
        {
          v181 = vorrq_s8(*&v421[8], *&v421[24]);
          if (!(*&vorr_s8(*v181.i8, *&vextq_s8(v181, v181, 8uLL)) | *v421))
          {
            sub_1AF635250(&v418);
LABEL_211:
            v183 = sub_1AFBFCA08(&v418);
            v184 = *(v182 + 48);
            if (v184)
            {
              v185 = *(v182 + 64);
              *(v184 + 8 * v185) = v12;
              *(v182 + 64) = v185 + 1;
            }

            (v183)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_220:
            v197 = *(*(v13 + 40) + 16);
            v198 = *(v197 + 128);
            if (*(v198 + 16))
            {
              v199 = sub_1AF449CB8(&type metadata for TextureGPURepresentationDoNotDownload);
              if ((v200 & 1) != 0 && *(*(v197 + 24) + 16 * *(*(v198 + 56) + 8 * v199) + 32) == &type metadata for TextureGPURepresentationDoNotDownload)
              {
                goto LABEL_258;
              }
            }

            v431 = &type metadata for TextureGPURepresentationDoNotDownload;
            *&v432 = &off_1F2546118;
            LOBYTE(v434) = 0;
            v201 = *(v9 + 104);
            v202 = *(v201 + 16);
            if (!v202)
            {

LABEL_253:
              v216 = *(v13 + 240) - *(v13 + 232);
              v217 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v216, 8);
              *v217 = v12;
              sub_1AF63515C(&v431, &v418);
              *v421 = v217;
              *&v421[8] = v216;
              *&v421[16] = 1;
              v218 = *(v9 + 104);
              v219 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v218;
              if ((v219 & 1) == 0)
              {
                v218 = sub_1AF420EA0(0, v218[2] + 1, 1, v218);
                *(v9 + 104) = v218;
              }

              v221 = v218[2];
              v220 = v218[3];
              if (v221 >= v220 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v220 > 1, v221 + 1, 1, v218);
              }

              sub_1AF635250(&v431);
              v222 = *(v9 + 104);
              *(v222 + 16) = v221 + 1;
              v223 = v222 + 72 * v221;
              *(v223 + 32) = v418;
              v225 = v420;
              v224 = *v421;
              v226 = v419;
              *(v223 + 96) = *&v421[16];
              *(v223 + 64) = v225;
              *(v223 + 80) = v224;
              *(v223 + 48) = v226;
              *(v9 + 104) = v222;
              goto LABEL_258;
            }

            v203 = v201 + 32;

            v204 = 0;
            while (2)
            {
              sub_1AF8B5A00(v203, v438, sub_1AF43A540);
              sub_1AF63515C(v438, &v418);
              sub_1AF63515C(&v431, v421);
              if (BYTE8(v420) <= 2u)
              {
                if (!BYTE8(v420))
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40])
                  {
                    goto LABEL_226;
                  }

LABEL_239:
                  v207 = v424;
                  v208 = *v421;
                  sub_1AF635250(&v418);
                  if (v207 == v208)
                  {
                    goto LABEL_249;
                  }

                  goto LABEL_227;
                }

                if (BYTE8(v420) == 1)
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40] == 1)
                  {
                    goto LABEL_239;
                  }

LABEL_226:
                  sub_1AF8B5918(&v418, sub_1AF635194);
LABEL_227:
                  ++v204;
                  v203 += 72;
                  if (v202 == v204)
                  {
                    goto LABEL_253;
                  }

                  continue;
                }

                sub_1AF63515C(&v418, &v424);
                if (v421[40] == 2)
                {
LABEL_244:
                  sub_1AF616568(&v424, &v412);
                  sub_1AF616568(v421, &v402);
                  v209 = *(&v413 + 1);
                  v210 = v414;
                  sub_1AF441150(&v412, *(&v413 + 1));
                  LOBYTE(v209) = sub_1AF640C98(&v402, v209, v210);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
                  sub_1AF635250(&v418);
                  if (v209)
                  {
                    goto LABEL_249;
                  }

                  goto LABEL_227;
                }

LABEL_225:
                sub_1AF8B5918(v438, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
                goto LABEL_226;
              }

              break;
            }

            if (BYTE8(v420) == 3)
            {
              sub_1AF63515C(&v418, &v424);
              if (v421[40] == 3)
              {
                goto LABEL_244;
              }

              goto LABEL_225;
            }

            if (BYTE8(v420) == 4)
            {
              sub_1AF8B5918(v438, sub_1AF43A540);
              sub_1AF63515C(&v418, &v424);
              if (v421[40] != 4)
              {
                goto LABEL_226;
              }

              v205 = v424;
              v206 = v421[0];
              sub_1AF635250(&v418);
              if (v205 == v206)
              {
                goto LABEL_249;
              }

              goto LABEL_227;
            }

            sub_1AF8B5918(v438, sub_1AF43A540);
            if (v421[40] != 5)
            {
              goto LABEL_226;
            }

            v211 = vorrq_s8(*&v421[8], *&v421[24]);
            if (*&vorr_s8(*v211.i8, *&vextq_s8(v211, v211, 8uLL)) | *v421)
            {
              goto LABEL_226;
            }

            sub_1AF635250(&v418);
LABEL_249:
            v213 = sub_1AFBFCA08(&v418);
            v214 = *(v212 + 48);
            if (v214)
            {
              v215 = *(v212 + 64);
              *(v214 + 8 * v215) = v12;
              *(v212 + 64) = v215 + 1;
            }

            (v213)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_258:
            v227 = *(*(v13 + 40) + 16);
            v228 = *(v227 + 128);
            if (*(v228 + 16))
            {
              v229 = sub_1AF449CB8(&type metadata for TextureRequireCPURepresentation);
              if ((v230 & 1) != 0 && *(*(v227 + 24) + 16 * *(*(v228 + 56) + 8 * v229) + 32) == &type metadata for TextureRequireCPURepresentation)
              {
                goto LABEL_296;
              }
            }

            v431 = &type metadata for TextureRequireCPURepresentation;
            *&v432 = &off_1F2544440;
            LOBYTE(v434) = 0;
            v231 = *(v9 + 104);
            v232 = *(v231 + 16);
            if (!v232)
            {

LABEL_291:
              v246 = *(v13 + 240) - *(v13 + 232);
              v247 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v246, 8);
              *v247 = v12;
              sub_1AF63515C(&v431, &v418);
              *v421 = v247;
              *&v421[8] = v246;
              *&v421[16] = 1;
              v248 = *(v9 + 104);
              v249 = swift_isUniquelyReferenced_nonNull_native();
              *(v9 + 104) = v248;
              if ((v249 & 1) == 0)
              {
                v248 = sub_1AF420EA0(0, v248[2] + 1, 1, v248);
                *(v9 + 104) = v248;
              }

              v251 = v248[2];
              v250 = v248[3];
              if (v251 >= v250 >> 1)
              {
                *(v9 + 104) = sub_1AF420EA0(v250 > 1, v251 + 1, 1, v248);
              }

              sub_1AF635250(&v431);
              v252 = *(v9 + 104);
              *(v252 + 16) = v251 + 1;
              v253 = v252 + 72 * v251;
              *(v253 + 32) = v418;
              v255 = v420;
              v254 = *v421;
              v256 = v419;
              *(v253 + 96) = *&v421[16];
              *(v253 + 64) = v255;
              *(v253 + 80) = v254;
              *(v253 + 48) = v256;
              *(v9 + 104) = v252;
              goto LABEL_296;
            }

            v233 = v231 + 32;

            v234 = 0;
            while (2)
            {
              sub_1AF8B5A00(v233, v438, sub_1AF43A540);
              sub_1AF63515C(v438, &v418);
              sub_1AF63515C(&v431, v421);
              if (BYTE8(v420) <= 2u)
              {
                if (!BYTE8(v420))
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40])
                  {
                    goto LABEL_264;
                  }

LABEL_277:
                  v237 = v424;
                  v238 = *v421;
                  sub_1AF635250(&v418);
                  if (v237 == v238)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_265;
                }

                if (BYTE8(v420) == 1)
                {
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  sub_1AF63515C(&v418, &v424);
                  if (v421[40] == 1)
                  {
                    goto LABEL_277;
                  }

LABEL_264:
                  sub_1AF8B5918(&v418, sub_1AF635194);
LABEL_265:
                  ++v234;
                  v233 += 72;
                  if (v232 == v234)
                  {
                    goto LABEL_291;
                  }

                  continue;
                }

                sub_1AF63515C(&v418, &v424);
                if (v421[40] == 2)
                {
LABEL_282:
                  sub_1AF616568(&v424, &v412);
                  sub_1AF616568(v421, &v402);
                  v239 = *(&v413 + 1);
                  v240 = v414;
                  sub_1AF441150(&v412, *(&v413 + 1));
                  LOBYTE(v239) = sub_1AF640C98(&v402, v239, v240);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v402);
                  sub_1AF8B5918(v438, sub_1AF43A540);
                  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v412);
                  sub_1AF635250(&v418);
                  if (v239)
                  {
                    goto LABEL_287;
                  }

                  goto LABEL_265;
                }

LABEL_263:
                sub_1AF8B5918(v438, sub_1AF43A540);
                _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
                goto LABEL_264;
              }

              break;
            }

            if (BYTE8(v420) == 3)
            {
              sub_1AF63515C(&v418, &v424);
              if (v421[40] == 3)
              {
                goto LABEL_282;
              }

              goto LABEL_263;
            }

            if (BYTE8(v420) == 4)
            {
              sub_1AF8B5918(v438, sub_1AF43A540);
              sub_1AF63515C(&v418, &v424);
              if (v421[40] != 4)
              {
                goto LABEL_264;
              }

              v235 = v424;
              v236 = v421[0];
              sub_1AF635250(&v418);
              if (v235 == v236)
              {
                goto LABEL_287;
              }

              goto LABEL_265;
            }

            sub_1AF8B5918(v438, sub_1AF43A540);
            if (v421[40] != 5)
            {
              goto LABEL_264;
            }

            v241 = vorrq_s8(*&v421[8], *&v421[24]);
            if (*&vorr_s8(*v241.i8, *&vextq_s8(v241, v241, 8uLL)) | *v421)
            {
              goto LABEL_264;
            }

            sub_1AF635250(&v418);
LABEL_287:
            v243 = sub_1AFBFCA08(&v418);
            v244 = *(v242 + 48);
            if (v244)
            {
              v245 = *(v242 + 64);
              *(v244 + 8 * v245) = v12;
              *(v242 + 64) = v245 + 1;
            }

            (v243)(&v418, 0);

            sub_1AF635250(&v431);
LABEL_296:
            v257 = *(*(v13 + 40) + 16);
            v258 = *(v257 + 128);
            if (!*(v258 + 16) || (v259 = sub_1AF449CB8(&type metadata for TextureRequireGPURepresentation), (v260 & 1) == 0) || *(*(v257 + 24) + 16 * *(*(v258 + 56) + 8 * v259) + 32) != &type metadata for TextureRequireGPURepresentation)
            {
              *v438 = &type metadata for TextureRequireGPURepresentation;
              *&v438[8] = &off_1F25442D0;
              LOBYTE(v439) = 0;
              v261 = *(v9 + 104);
              v262 = *(v261 + 16);

              if (v262)
              {
                v263 = 0;
                v264 = v261 + 32;
                while (1)
                {
                  sub_1AF8B5A00(v264, &v418, sub_1AF43A540);
                  v265 = sub_1AF6346E0(&v418, v438);
                  sub_1AF8B5918(&v418, sub_1AF43A540);
                  if (v265)
                  {
                    break;
                  }

                  ++v263;
                  v264 += 72;
                  if (v262 == v263)
                  {
                    goto LABEL_303;
                  }
                }

                v275 = sub_1AFBFCA08(&v418);
                v276 = *(v274 + 48);
                if (v276)
                {
                  v277 = *(v274 + 64);
                  *(v276 + 8 * v277) = v12;
                  *(v274 + 64) = v277 + 1;
                }

                (v275)(&v418, 0);

                sub_1AF635250(v438);
              }

              else
              {
LABEL_303:
                v266 = *(v13 + 240) - *(v13 + 232);
                v267 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v266, 8);
                *v267 = v12;
                sub_1AF63515C(v438, &v418);
                *v421 = v267;
                *&v421[8] = v266;
                *&v421[16] = 1;
                sub_1AFCEF4F8();
                v268 = *(*(v9 + 104) + 16);
                sub_1AFCEF5E0(v268);

                sub_1AF635250(v438);
                v269 = *(v9 + 104);
                *(v269 + 16) = v268 + 1;
                v270 = v269 + 72 * v268;
                *(v270 + 32) = v418;
                v272 = v420;
                v271 = *v421;
                v273 = v419;
                *(v270 + 96) = *&v421[16];
                *(v270 + 64) = v272;
                *(v270 + 80) = v271;
                *(v270 + 48) = v273;
                *(v9 + 104) = v269;
              }
            }

            v278 = *(*(v13 + 40) + 16);
            v279 = *(v278 + 128);
            if (*(v279 + 16))
            {
              v280 = sub_1AF449CB8(&type metadata for TextureLoadingOptions);
              if ((v281 & 1) != 0 && *(*(v278 + 24) + 16 * *(*(v279 + 56) + 8 * v280) + 32) == &type metadata for TextureLoadingOptions)
              {
                *v438 = &type metadata for TextureLoadingOptions;
                *&v438[8] = &off_1F2543FE0;
                LOBYTE(v439) = 1;
                v282 = *(v9 + 104);
                v283 = *(v282 + 16);

                if (v283)
                {
                  v284 = 0;
                  v285 = v282 + 32;
                  while (1)
                  {
                    sub_1AF8B5A00(v285, &v418, sub_1AF43A540);
                    v286 = sub_1AF6346E0(&v418, v438);
                    sub_1AF8B5918(&v418, sub_1AF43A540);
                    if (v286)
                    {
                      break;
                    }

                    ++v284;
                    v285 += 72;
                    if (v283 == v284)
                    {
                      goto LABEL_180;
                    }
                  }

                  v288 = sub_1AFBFCA08(&v418);
                  v289 = *(v287 + 48);
                  if (v289)
                  {
                    v290 = *(v287 + 64);
                    *(v289 + 8 * v290) = v12;
                    *(v287 + 64) = v290 + 1;
                  }

                  (v288)(&v418, 0);

                  sub_1AF635250(v438);
                }

                else
                {
LABEL_180:
                  v159 = *(v13 + 240) - *(v13 + 232);
                  v160 = ecs_stack_allocator_allocate(*(v9 + 32), 8 * v159, 8);
                  *v160 = v12;
                  sub_1AF63515C(v438, &v418);
                  *v421 = v160;
                  *&v421[8] = v159;
                  *&v421[16] = 1;
                  sub_1AFCEF4F8();
                  v161 = *(*(v9 + 104) + 16);
                  sub_1AFCEF5E0(v161);

                  sub_1AF635250(v438);
                  v162 = *(v9 + 104);
                  *(v162 + 16) = v161 + 1;
                  v163 = v162 + 72 * v161;
                  *(v163 + 32) = v418;
                  v165 = v420;
                  v164 = *v421;
                  v166 = v419;
                  *(v163 + 96) = *&v421[16];
                  *(v163 + 64) = v165;
                  *(v163 + 80) = v164;
                  *(v163 + 48) = v166;
                  *(v9 + 104) = v162;
                }
              }
            }

            if (++v12 == v360)
            {
              goto LABEL_178;
            }

            goto LABEL_182;
          }
        }

        goto LABEL_188;
      }

      sub_1AF8B5918(v438, sub_1AF43A540);
      sub_1AF63515C(&v418, &v424);
      if (v421[40] != 4)
      {
        goto LABEL_188;
      }

      v175 = v424;
      v176 = v421[0];
      sub_1AF635250(&v418);
      if (v175 == v176)
      {
        goto LABEL_211;
      }

LABEL_189:
      ++v174;
      v173 += 72;
      if (v172 == v174)
      {
        goto LABEL_215;
      }
    }

    if (!BYTE8(v420))
    {
      sub_1AF8B5918(v438, sub_1AF43A540);
      sub_1AF63515C(&v418, &v424);
      if (v421[40])
      {
        goto LABEL_188;
      }

      goto LABEL_201;
    }

    if (BYTE8(v420) == 1)
    {
      sub_1AF8B5918(v438, sub_1AF43A540);
      sub_1AF63515C(&v418, &v424);
      if (v421[40] != 1)
      {
        goto LABEL_188;
      }

LABEL_201:
      v177 = v424;
      v178 = *v421;
      sub_1AF635250(&v418);
      if (v177 == v178)
      {
        goto LABEL_211;
      }

      goto LABEL_189;
    }

    sub_1AF63515C(&v418, &v424);
    if (v421[40] != 2)
    {
LABEL_187:
      sub_1AF8B5918(v438, sub_1AF43A540);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v424);
LABEL_188:
      sub_1AF8B5918(&v418, sub_1AF635194);
      goto LABEL_189;
    }

    goto LABEL_206;
  }

LABEL_319:
  sub_1AF6B06C0(a2, v383, 0x200000000, v393);
  if (!*v393)
  {
    v294 = a1[3];
    if (v294)
    {
      v295 = *(a3 + 152);
      *v438 = *(a3 + 136);
      *&v438[16] = v295;
      *&v438[32] = *(a3 + 168);
      swift_unknownObjectRetain();
      sub_1AF6B06C0(a2, v438, 0x200000000, v410);
      v296 = *&v410[0];
      if (!*&v410[0])
      {
        return swift_unknownObjectRelease();
      }

      v352 = v5;
      v297 = v410;
      goto LABEL_341;
    }

    return sub_1AF5D1564(v393);
  }

  v291 = v394;
  *&v438[8] = *&v393[8];
  *&v438[24] = *&v393[24];
  v439 = *&v393[40];
  v440 = *&v393[56];
  *v438 = *v393;
  v441 = *&v393[72];
  v442 = v394;
  v292 = a1[3];
  v420 = *&v393[32];
  *v421 = *&v393[48];
  *&v421[16] = *&v393[64];
  *&v421[32] = v394;
  v418 = *v393;
  v419 = *&v393[16];
  sub_1AF5DD298(&v418, &v431);
  if (v292)
  {
    v293 = [v292 arrayLength];
  }

  else
  {
    v293 = 0;
  }

  *&v412 = v293;
  sub_1AFD06FC0(v438, &v412);
  v353 = v5;
  v298 = v293 + v291;
  v299 = ((v293 + v291) << 11);
  v300 = *(a4 + 16);
  v301 = sub_1AF6F35A0(v299, 0, 0x6D6152726F6C6F43, 0xEA00000000007370);
  v303 = v302;
  v305 = v304;
  swift_unknownObjectRelease();
  *a1 = v301;
  a1[1] = v303;
  a1[2] = v305;
  CFXTextureDescriptorMakeDefault(&v418);
  sub_1AF466BDC(1, &v418);
  sub_1AF46748C(115, &v418);
  sub_1AF8B59F4(&v418);
  sub_1AF7156F0(&v418);
  sub_1AF5C44D4(&v418);
  sub_1AF48F3EC(&v418);
  sub_1AF4674BC(&v418);
  if (v298 <= 1)
  {
    v306 = 1;
  }

  else
  {
    v306 = v298;
  }

  sub_1AF4674C8(v306, &v418);
  sub_1AF5F7474(2, &v418);
  sub_1AF4674E4(&v418);
  v307 = BYTE2(v418);
  v308 = BYTE3(v418);
  v309 = DWORD2(v418);
  v310 = HIDWORD(v418);
  v311 = BYTE2(v419);
  v312 = v419;
  *(&v432 + 11) = *(&v419 + 3);
  HIBYTE(v432) = BYTE7(v419);
  v355 = DWORD1(v418);
  v358 = v418;
  v431 = v418;
  v349 = BYTE1(v418);
  *&v432 = *(&v418 + 1);
  BYTE10(v432) = BYTE2(v419);
  WORD4(v432) = v419;
  Texture = CFXGPUDeviceCreateTexture(v300, &v431);
  swift_unknownObjectRelease();
  a1[3] = Texture;
  if (Texture)
  {
    v314 = sub_1AFDFCEC8();
    [Texture setLabel_];
  }

  v315 = *(a3 + 32);
  v381[0] = *(a3 + 16);
  v381[1] = v315;
  v382 = *(a3 + 48);
  sub_1AF6B06C0(a2, v381, 0x200000000, &v395);
  if (!v395)
  {
    v316 = v353;
    if (Texture)
    {
      goto LABEL_333;
    }

    goto LABEL_336;
  }

  v434 = v398;
  v435 = v399;
  v436 = v400;
  v432 = v396;
  v433 = v397;
  v437 = v401;
  v431 = v395;
  sub_1AFD06FEC(&v431, a1, v358 | (v349 << 8) | (v307 << 16) | (v308 << 24) | (v355 << 32), v309 | (v310 << 32), (v312 | (v311 << 16)) & 0xFFFFFF);
  v316 = v353;
  sub_1AF5D1564(&v395);
  if (!Texture)
  {
LABEL_336:
    sub_1AF5D1564(v393);
    return sub_1AF5D1564(v393);
  }

LABEL_333:
  swift_unknownObjectRetain();
  sub_1AF6B06C0(a2, v381, 0x200000000, &v402);
  if (v402)
  {
    v427 = v405;
    v428 = v406;
    v429 = v407;
    v425 = v403;
    v426 = v404;
    v430 = v408;
    v424 = v402;
    swift_unknownObjectRetain();
    sub_1AFD24AA8(&v424, Texture);
    swift_unknownObjectRelease();
    sub_1AF5D1564(v393);
    swift_unknownObjectRelease();
    sub_1AF5D1564(&v402);
  }

  else
  {
    sub_1AF5D1564(v393);
    swift_unknownObjectRelease();
  }

  v294 = a1[3];
  if (!v294)
  {
    return sub_1AF5D1564(v393);
  }

  v317 = *(a3 + 112);
  v379[0] = *(a3 + 96);
  v379[1] = v317;
  v380 = *(a3 + 128);
  swift_unknownObjectRetain();
  sub_1AF6B06C0(a2, v379, 0x200000000, v409);
  v296 = *&v409[0];
  if (!*&v409[0])
  {
    goto LABEL_354;
  }

  v352 = v316;
  v297 = v409;
LABEL_341:
  v318 = v297 + 8;
  v319 = *(v318 + 1);
  *&v363[8] = *v318;
  *&v363[24] = v319;
  *&v363[88] = *(v318 + 10);
  v320 = *(v318 + 4);
  *&v363[56] = *(v318 + 3);
  *&v363[72] = v320;
  *&v363[40] = *(v318 + 2);
  *v363 = v296;
  v412 = *v363;
  v413 = *&v363[16];
  v416 = *&v363[64];
  v417 = *&v363[80];
  v414 = *&v363[32];
  v415 = *&v363[48];
  v350 = *(&v320 + 1);
  if (*(&v320 + 1) >= 1)
  {
    v321 = *&v363[56];
    if (*&v363[56])
    {
      v343 = v294;
      v362 = *&v363[72];
      v322 = *(*&v363[72] + 32);
      v323 = *&v363[40];
      v347 = *&v363[64];
      v324 = *(*&v363[64] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      sub_1AF8B5A00(v363, &v418, sub_1AF8B5978);
      v325 = (v323 + 24);
      v345 = v324;
      while (1)
      {
        v326 = *(v325 - 6);
        v327 = *(v325 - 5);
        v328 = *(v325 - 4);
        v329 = *(v325 - 1);
        v330 = v325[2];
        v356 = v325[1];
        v359 = *v325;
        if (v324)
        {
          v331 = *(v330 + 376);

          os_unfair_lock_lock(v331);
          os_unfair_lock_lock(*(v330 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v322);

        sub_1AF630914(v332, v362, v411);

        LOBYTE(v373) = 1;
        *&v418 = v347;
        *(&v418 + 1) = v330;
        *&v419 = v362;
        *(&v419 + 1) = v328;
        *&v420 = (v327 - v326 + v328);
        *(&v420 + 1) = v350;
        *v421 = v326;
        *&v421[8] = v327;
        *&v421[16] = 0;
        *&v421[24] = 0;
        v421[32] = 1;
        *&v421[40] = v329;
        v422 = v359;
        v423 = v356;
        sub_1AFD11A90(&v418, a1);
        if (v352)
        {
          break;
        }

        v367 = *v363;
        v368 = *&v363[8];
        v369 = v363[12];
        v370 = *&v363[16];
        v371 = v363[24];
        v372 = *&v363[32];
        sub_1AF630994(v362, &v367, v411);
        v352 = 0;
        sub_1AF62D29C(v330);
        ecs_stack_allocator_pop_snapshot(v322);
        v324 = v345;
        if (v345)
        {
          os_unfair_lock_unlock(*(v330 + 344));
          os_unfair_lock_unlock(*(v330 + 376));
        }

        v325 += 6;
        if (!--v321)
        {
          sub_1AF8B5918(v363, sub_1AF8B5978);
          v294 = v343;
          goto LABEL_352;
        }
      }

      v373 = *v363;
      v374 = *&v363[8];
      v375 = v363[12];
      v376 = *&v363[16];
      v377 = v363[24];
      v378 = *&v363[32];
      sub_1AF630994(v362, &v373, v411);
      sub_1AF62D29C(v330);
      ecs_stack_allocator_pop_snapshot(v322);
      os_unfair_lock_unlock(*(v330 + 344));
      os_unfair_lock_unlock(*(v330 + 376));
      __break(1u);
      goto LABEL_358;
    }
  }

LABEL_352:

  v333 = sub_1AF6F3F0C();
  if (!v352)
  {
    v334 = v333;
    v335 = sub_1AFDFCEC8();
    [v334 pushDebugGroup_];

    sub_1AF6F3BD8();
    sub_1AF8B55A4(v334, &v412, v294, a1);
    swift_unknownObjectRelease();
    [v334 popDebugGroup];

    swift_unknownObjectRelease();
    sub_1AF8B5918(v363, sub_1AF8B5978);
LABEL_354:
    swift_unknownObjectRelease();
    return sub_1AF5D1564(v393);
  }

LABEL_358:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF8B450C()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v22 = qword_1ED73B840;
  v23 = 0;
  v24 = 2;
  v25 = 0;
  v26 = 2;
  v27 = 0;
  sub_1AF7032D0(1, v10);
  v1 = v10[1];
  *(v0 + 16) = v10[0];
  *(v0 + 32) = v1;
  *(v0 + 48) = v11;
  sub_1AF7032E4(1, v12);
  sub_1AF5C52A8();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for ColorRampRuntime;
  *(inited + 40) = &off_1F2541978;
  sub_1AF5D1EC0(inited, v13);
  sub_1AF8B5918(v12, sub_1AF8B5A80);
  swift_setDeallocating();
  v3 = v13[1];
  *(v0 + 56) = v13[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v14;
  sub_1AFCC3A84(1, 1, v15);
  v4 = v15[1];
  *(v0 + 96) = v15[0];
  *(v0 + 112) = v4;
  *(v0 + 128) = v16;
  sub_1AFCC3A84(1, 1, &v17);
  v5 = v18;
  v6 = v19;
  v7 = v21;
  v8 = v20 | 4;
  *(v0 + 136) = v17;
  *(v0 + 144) = v5;
  *(v0 + 148) = v6;
  *(v0 + 152) = v8;
  *(v0 + 160) = 2;
  *(v0 + 168) = v7;
  return v0;
}

uint64_t sub_1AF8B46D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result, a2);
    v8 = *(v7 + 184);

    sub_1AF6D655C(&type metadata for ColorRampsState, &off_1F2541CC0, v8, a6);
  }

  return result;
}

uint64_t sub_1AF8B4794()
{
  v0 = swift_allocObject();
  sub_1AF8B450C();
  return v0;
}

void *sub_1AF8B47E4(float32x4_t *a1, uint64_t a2, char a3)
{
  sub_1AFDFF288();
  sub_1AF8B4F0C(&v34, a1);
  sub_1AF8B4EA4(&v34, a2);
  sub_1AFDFF2A8();
  v7 = sub_1AFDFF2F8();
  v8 = v7;
  v9 = *(v3 + 24);
  if (*(v9 + 16) && (v10 = sub_1AF449CB8(v7), (v11 & 1) != 0))
  {
    Texture = *(*(v9 + 56) + 8 * v10);
    swift_unknownObjectRetain();
  }

  else
  {
    CFXTextureDescriptorMakeDefault(&v32);
    sub_1AF466BDC(0, &v32);
    sub_1AF46748C(125, &v32);
    sub_1AF8B59F4(&v32);
    sub_1AF7156F0(&v32);
    sub_1AF5C44D4(&v32);
    sub_1AF48F3EC(&v32);
    sub_1AF4674BC(&v32);
    sub_1AF4674C8(1, &v32);
    sub_1AF5F7474(0, &v32);
    sub_1AF4674E4(&v32);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + 16);

      v34 = v32;
      *&v35 = v33;
      Texture = CFXGPUDeviceCreateTexture(v14, v34.i8);
    }

    else
    {
      Texture = 0;
    }

    v15 = sub_1AF445CA8(&v32);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v17 = v15;
      v31 = MEMORY[0x1E69E7CC0];
      sub_1AFC07518(0, v15 & ~(v15 >> 63), 0);
      v18 = 0;
      v16 = v31;
      do
      {
        v34 = v32;
        *&v35 = v33;
        v19.n128_f32[0] = v18 / (sub_1AF445CA8(&v34) - 1);
        sub_1AF6513B4(a1, a2, a3, v19);
        v22 = *(v31 + 16);
        v21 = *(v31 + 24);
        if (v22 >= v21 >> 1)
        {
          v28 = v20;
          sub_1AFC07518(v21 > 1, v22 + 1, 1);
          v20 = v28;
        }

        ++v18;
        *(v31 + 16) = v22 + 1;
        *(v31 + 16 * v22 + 32) = v20;
      }

      while (v17 != v18);
    }

    if (Texture)
    {
      swift_unknownObjectRetain();
      v34 = v32;
      *&v35 = v33;
      v23 = sub_1AF445CA8(&v34);
      sub_1AF8B5AD8(v23, &v34);
      v24 = v36;
      v25 = v37;
      v29 = v35;
      v30 = v34;
      v34 = v32;
      *&v35 = v33;
      v26 = sub_1AF445CA8(&v34);
      v34 = v30;
      v35 = v29;
      v36 = v24;
      v37 = v25;
      [Texture replaceRegion:&v34 mipmapLevel:0 withBytes:v16 + 32 bytesPerRow:16 * v26];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRetain();
    sub_1AF826180(Texture, v8);
  }

  return Texture;
}

double sub_1AF8B4B2C@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  sub_1AFDFF288();
  sub_1AF8B4F0C(v53, a1);
  sub_1AF8B4EA4(v53, a2);
  sub_1AFDFF2A8();
  v10 = sub_1AFDFF2F8();
  v11 = v10;
  v12 = *(*(v4 + 704) + 16);
  if (*(v12 + 16) && (v13 = sub_1AF449CB8(v10), (v14 & 1) != 0))
  {
    v15 = (*(v12 + 56) + (v13 << 6));
    v17 = v15[2];
    v16 = v15[3];
    v18 = v15[1];
    *v53 = *v15;
    *&v53[16] = v18;
    v54 = v17;
    v55 = v16;
    v19 = v15[1];
    v48 = *v15;
    *v49 = v19;
    v20 = v15[3];
    *&v49[16] = v15[2];
    *&v49[32] = v20;
    sub_1AF44222C(v53, &v43);
  }

  else
  {
    v40 = v11;
    CFXTextureDescriptorMakeDefault(&v50);
    *&v53[7] = v50;
    *&v53[23] = v51;
    *(v52 + 15) = *&v53[15];
    v52[0] = *v53;
    *v49 = 0;
    v48 = 0uLL;
    v49[8] = 0;
    *&v49[9] = *v53;
    *&v49[24] = *(v52 + 15);
    v21 = MEMORY[0x1E69E7CC0];
    *&v49[40] = MEMORY[0x1E69E7CC0];
    sub_1AF466BDC(0, &v49[16]);
    sub_1AF8B59F4(&v49[16]);
    sub_1AF46748C(125, &v49[16]);
    v47 = v21;
    sub_1AFC07518(0, 256, 0);
    for (i = 0; i != 256; ++i)
    {
      v22.n128_f32[0] = i / 255.0;
      sub_1AF6513B4(a1, a2, a3, v22);
      v47 = v21;
      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        v39 = v22;
        sub_1AFC07518(v24 > 1, v25 + 1, 1);
        v22 = v39;
        v21 = v47;
      }

      v21[2] = v25 + 1;
      *&v21[2 * v25 + 4] = v22;
    }

    v26 = *(v5 + 16);
    v43 = *&v49[16];
    *&v44 = *&v49[32];
    *v53 = *&v49[16];
    *&v53[16] = *&v49[32];
    v27 = sub_1AF467494(v53);
    v28 = sub_1AF445CA8(&v43);
    if (v27 - 160 <= 0x3A && ((1 << (v27 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
    {
      if ((v27 - 186) > 0x20u)
      {
        LODWORD(v29) = 1;
      }

      else
      {
        v29 = qword_1AFE7F890[(v27 - 186)];
      }

      v30 = v40;
      v31 = 16 * ((v29 + v28 - 1) / v29);
    }

    else
    {
      v31 = sub_1AF47289C(v27) * v28;
      v30 = v40;
    }

    BufferWithBytes = CFXGPUDeviceCreateBufferWithBytes(v26, v21 + 4, v31, 0);

    if (BufferWithBytes)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }

    v48 = BufferWithBytes;
    *v49 = v33;
    v34 = *(v5 + 704);
    v54 = *&v49[16];
    v55 = *&v49[32];
    *v53 = BufferWithBytes;
    *&v53[16] = *v49;
    sub_1AF44222C(v53, &v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = *(v34 + 16);
    *(v34 + 16) = 0x8000000000000000;
    sub_1AF857BC4(v53, v30, isUniquelyReferenced_nonNull_native);
    *(v34 + 16) = v43;
    v42[2] = *&v49[16];
    v42[3] = *&v49[32];
    v42[0] = v48;
    v42[1] = *v49;
    v45 = *&v49[16];
    v46 = *&v49[32];
    v43 = v48;
    v44 = *v49;
    sub_1AF44222C(v42, v41);
    sub_1AF478A6C(&v43);
  }

  v36 = *v49;
  *a4 = v48;
  a4[1] = v36;
  result = *&v49[16];
  v38 = *&v49[32];
  a4[2] = *&v49[16];
  a4[3] = v38;
  return result;
}

uint64_t sub_1AF8B4EA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 4;
      result = sub_1AFDFF2C8();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF8B4F0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      v5 += 16;
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      result = sub_1AFDFF2C8();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF8B4FC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = a2 + 49;
    do
    {
      v5 += 24;
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2C8();
      sub_1AFDFF2A8();
      result = sub_1AFDFF2A8();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AF8B50A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1B271ACB0](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x1B271ACB0](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = v7 + 40;
        do
        {

          sub_1AFDFD038();

          v9 += 16;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

BOOL sub_1AF8B516C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  return (sub_1AFB7B0BC(*a1, *a2) & 1) == 0 || !sub_1AFB7B128(v2, v4) || v3 != v5;
}

void *sub_1AF8B51DC(void *a1)
{
  sub_1AF8B5B44(0, &qword_1ED722FC8, sub_1AF8B5AF0, &type metadata for ColorRampComponent.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF8B5AF0();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF80A7AC();
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

uint64_t sub_1AF8B53A8(uint64_t a1, int *a2, uint64_t a3)
{
  v23 = MEMORY[0x1E69E7CC0];
  sub_1AFC07518(0, 256, 0);
  v7 = 0;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  do
  {
    v6.n128_f32[0] = v7 / 255.0;
    sub_1AF6513B4(v8, v9, v10, v6);
    v12 = *(v23 + 16);
    v11 = *(v23 + 24);
    if (v12 >= v11 >> 1)
    {
      v21 = v6;
      sub_1AFC07518(v11 > 1, v12 + 1, 1);
      v6 = v21;
    }

    ++v7;
    *(v23 + 16) = v12 + 1;
    *(v23 + 16 * v12 + 32) = v6;
  }

  while (v7 != 256);
  v13 = *a3;
  if (*a3)
  {
    v14 = *(a3 + 8);
    v15 = *a2;
    swift_unknownObjectRetain();
    if ([swift_unknownObjectRetain_n() storageMode] == 2)
    {

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease_n();
    }

    v17 = [v13 contents];
    v18 = v13;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v19 = &v17[2048 * v15 + 4 + v14];
    for (i = 2; i != 258; ++i)
    {
      v22 = *(v23 + 16 * i);
      *(v19 - 2) = sub_1AF1F2B14(v22.n128_f32[0]);
      *(v19 - 1) = sub_1AF1F2B14(v22.n128_f32[1]);
      *v19 = sub_1AF1F2B14(v22.n128_f32[2]);
      *(v19 + 1) = sub_1AF1F2B14(v22.n128_f32[3]);
      v19 += 8;
    }
  }
}

void sub_1AF8B55A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1AF8B5A68(&v50);
  if (*(a2 + 80) >= 1)
  {
    v35 = *(a2 + 56);
    if (v35)
    {
      v8 = v50;
      v42 = v51;
      v9 = *(a2 + 72);
      v10 = *(v9 + 32);
      v41 = *(*(a2 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v11 = *(a2 + 16);
      v48[0] = *a2;
      v48[1] = v11;
      v33 = *(a2 + 40);
      v49 = *(a2 + 32);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v12 = 0;
      v13 = 0;
      v34 = v10;
      do
      {
        v14 = v10;
        v39 = v13;
        v40 = v12;
        v15 = (v33 + 48 * v12);
        v37 = *v15;
        v36 = v15[1];
        v16 = *(v15 + 2);
        v38 = *(v15 + 3);
        v18 = *(v15 + 4);
        v17 = *(v15 + 5);
        if (v41)
        {
          v19 = *(v17 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v17 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v14);
        v20 = *(v9 + 64);
        v50 = *(v9 + 48);
        v51 = v20;
        v52 = *(v9 + 80);
        v21 = *(v9 + 32);
        v22 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;

        *(v9 + 48) = ecs_stack_allocator_allocate(v21, 48 * v22, 8);
        *(v9 + 56) = v22;
        *(v9 + 72) = 0;
        *(v9 + 80) = 0;
        *(v9 + 64) = 0;

        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        sub_1AF64B110(&type metadata for ColorRampComponent, &off_1F2541AA8, v16, v38, v18, v9);
        v23 = sub_1AF64B110(&type metadata for ColorRampRuntime, &off_1F25419F8, v16, v38, v18, v9);
        v24 = v23;
        if (v16)
        {
          for (; v18; --v18)
          {
            v25 = *a4;
            if (*a4)
            {
              v26 = *v24;
              v27 = a4[1] + (v26 << 11);
              v46 = v8;
              v47 = v42;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              [a1 copyFromBuffer:v25 sourceOffset:v27 sourceBytesPerRow:2048 sourceBytesPerImage:2048 sourceSize:&v46 toTexture:a3 destinationSlice:v26 destinationLevel:0 destinationOrigin:&v43];
            }

            ++v24;
          }
        }

        else if (v37 != v36)
        {
          v28 = (v23 + 4 * v37);
          v29 = v36 - v37;
          do
          {
            v30 = *a4;
            if (*a4)
            {
              v31 = *v28;
              v32 = a4[1] + (v31 << 11);
              v46 = v8;
              v47 = v42;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              [a1 copyFromBuffer:v30 sourceOffset:v32 sourceBytesPerRow:2048 sourceBytesPerImage:2048 sourceSize:&v46 toTexture:a3 destinationSlice:v31 destinationLevel:0 destinationOrigin:&v43];
            }

            ++v28;
            --v29;
          }

          while (v29);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v13 = v39;
        sub_1AF630994(v9, v48, &v50);
        sub_1AF62D29C(v17);
        v10 = v34;
        ecs_stack_allocator_pop_snapshot(v34);
        if (v41)
        {
          os_unfair_lock_unlock(*(v17 + 344));
          os_unfair_lock_unlock(*(v17 + 376));
        }

        v12 = v40 + 1;
      }

      while (v40 + 1 != v35);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1AF8B5918(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF8B5978()
{
  if (!qword_1ED725A70)
  {
    Result2 = type metadata accessor for QueryResult2();
    if (!v1)
    {
      atomic_store(Result2, &qword_1ED725A70);
    }
  }
}

uint64_t sub_1AF8B5A00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AF8B5A68@<D0>(uint64_t a1@<X8>)
{
  *&result = 256;
  *a1 = xmmword_1AFE7F5B0;
  *(a1 + 16) = 1;
  return result;
}

void sub_1AF8B5A80()
{
  if (!qword_1ED723D40)
  {
    v0 = type metadata accessor for Query1();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED723D40);
    }
  }
}

int64x2_t sub_1AF8B5AD8@<Q0>(uint64_t a1@<X0>, int64x2_t *a2@<X8>)
{
  a2->i64[0] = 0;
  a2->i64[1] = 0;
  a2[1].i64[0] = 0;
  a2[1].i64[1] = a1;
  result = vdupq_n_s64(1uLL);
  a2[2] = result;
  return result;
}

unint64_t sub_1AF8B5AF0()
{
  result = qword_1ED725360;
  if (!qword_1ED725360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725360);
  }

  return result;
}

void sub_1AF8B5B44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t destroy for ColorRampsState()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t initializeWithCopy for ColorRampsState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return a1;
}

void *assignWithCopy for ColorRampsState(void *a1, void *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return a1;
}

uint64_t assignWithTake for ColorRampsState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRelease();
  return a1;
}

unint64_t sub_1AF8B5D14()
{
  result = qword_1EB63FF08;
  if (!qword_1EB63FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FF08);
  }

  return result;
}

unint64_t sub_1AF8B5D6C()
{
  result = qword_1ED725350;
  if (!qword_1ED725350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725350);
  }

  return result;
}

unint64_t sub_1AF8B5DC4()
{
  result = qword_1ED725358;
  if (!qword_1ED725358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED725358);
  }

  return result;
}

uint64_t sub_1AF8B5E34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = a5;
  sub_1AF8BA0F4(0, &unk_1EB63FF10, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8BA04C();
  sub_1AFDFF3F8();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v17;
  sub_1AF8BA0A0(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  sub_1AF8BA158(&qword_1EB63F018);
  sub_1AFDFE918();
  return (*(v11 + 8))(v14, v10);
}