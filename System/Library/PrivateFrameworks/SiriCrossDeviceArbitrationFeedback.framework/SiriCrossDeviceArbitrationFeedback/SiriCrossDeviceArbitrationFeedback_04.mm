void static ParticipantModel.== infix(_:_:)()
{
  OUTLINED_FUNCTION_31();
  v4 = v3;
  v6 = v5;
  v7 = sub_266ABD7A4();
  v8 = OUTLINED_FUNCTION_1_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2AA8, &unk_266AC5F80);
  OUTLINED_FUNCTION_16(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_3();
  sub_266A6F9C8(v6, v107, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v107[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (OUTLINED_FUNCTION_41_1())
    {
      v21 = v106[0];
      goto LABEL_6;
    }
  }

  else
  {
    sub_266A798F4(v107, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  v21 = 0x9000000000000;
LABEL_6:
  sub_266A6F9C8(v4, v107, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v107[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (OUTLINED_FUNCTION_41_1())
    {
      v24 = v106[0];
      goto LABEL_11;
    }
  }

  else
  {
    sub_266A798F4(v107, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  v24 = 0x9000000000000;
LABEL_11:
  if ((v21 & 0xFF000000000000) == 0x9000000000000)
  {
    if ((v24 & 0xFF000000000000) != 0x9000000000000)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v107[0] = v21;
    if ((v24 & 0xFF000000000000) == 0x9000000000000 || !OUTLINED_FUNCTION_24_5(v24, v22, v23))
    {
      goto LABEL_62;
    }
  }

  v99 = v10;
  v25 = sub_266A70978(*(v6 + 40));
  v100 = v4;
  v26 = sub_266A70978(*(v4 + 40));
  if (v25)
  {
    if (!v26)
    {
      goto LABEL_61;
    }

    v27 = sub_266A836C8(v25, v26);

    if ((v27 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v26)
  {
    goto LABEL_61;
  }

  sub_266A6FFD8(v6 + 48, &v113);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  if (swift_dynamicCast())
  {
    memcpy(v107, v112, 0xA8uLL);
    nullsub_1(v107);
    OUTLINED_FUNCTION_57(v114);
  }

  else
  {
    sub_266A83CC4(v114);
  }

  sub_266A6FFD8(v4 + 48, &v110);
  if (swift_dynamicCast())
  {
    memcpy(v107, v109, 0xA8uLL);
    nullsub_1(v107);
    OUTLINED_FUNCTION_57(v111);
  }

  else
  {
    sub_266A83CC4(v111);
  }

  memcpy(v107, v114, 0xA8uLL);
  memcpy(&v107[21], v111, 0xA8uLL);
  memcpy(v108, v114, sizeof(v108));
  if (sub_266A82390(v108) == 1)
  {
    memcpy(v106, &v107[21], 0xA8uLL);
    if (sub_266A82390(v106) == 1)
    {
      OUTLINED_FUNCTION_57(v105);
      sub_266A798F4(v105, &qword_2800B1E98, &qword_266AC13B0);
      goto LABEL_36;
    }

LABEL_33:
    memcpy(v106, v107, sizeof(v106));
    v28 = &unk_2800B1E90;
    v29 = &unk_266AC13A8;
    v30 = v106;
LABEL_34:
    sub_266A798F4(v30, v28, v29);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_57(v105);
  OUTLINED_FUNCTION_57(v104);
  memcpy(v106, &v107[21], 0xA8uLL);
  if (sub_266A82390(v106) == 1)
  {
    OUTLINED_FUNCTION_57(v103);
    sub_266A6F9C8(v105, v102, &qword_2800B1E98, &qword_266AC13B0);
    sub_266A72578(v103);
    goto LABEL_33;
  }

  memcpy(v103, &v107[21], sizeof(v103));
  sub_266A6F9C8(v105, v102, &qword_2800B1E98, &qword_266AC13B0);
  v31 = static DeviceModel.== infix(_:_:)(v104, v103);
  memcpy(v101, v103, sizeof(v101));
  sub_266A72578(v101);
  memcpy(v102, v104, sizeof(v102));
  sub_266A72578(v102);
  OUTLINED_FUNCTION_57(v103);
  sub_266A798F4(v103, &qword_2800B1E98, &qword_266AC13B0);
  if ((v31 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_36:
  v32 = *(v6 + 96);
  v33 = *(v4 + 96);
  if (v32)
  {
    if (!v33)
    {
      goto LABEL_62;
    }

    v34 = *(v6 + 88) == *(v4 + 88) && v32 == v33;
    if (!v34 && (sub_266ABE1C4() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v33)
  {
    goto LABEL_62;
  }

  v35 = *(v6 + 104);
  sub_266A70C04();
  v37 = v36;
  v38 = *(v4 + 104);
  sub_266A70C04();
  if (v37)
  {
    if (!v39)
    {
      goto LABEL_61;
    }

    v40 = sub_266A8377C(v37, v39);

    if ((v40 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v39)
  {
    goto LABEL_61;
  }

  if (*(v6 + 112) != *(v4 + 112))
  {
    goto LABEL_62;
  }

  v41 = *(v4 + 114);
  if (*(v6 + 114))
  {
    if ((*(v4 + 114) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if ((*(v4 + 114) & 1) != 0 || *(v6 + 113) != *(v4 + 113))
  {
    goto LABEL_62;
  }

  v42 = type metadata accessor for ParticipantModel();
  v43 = v42[11];
  if ((sub_266ABD764() & 1) == 0)
  {
    goto LABEL_62;
  }

  v44 = sub_266A70D6C(*(v6 + v42[12]));
  v98 = v42;
  v45 = sub_266A70D6C(*(v100 + v42[12]));
  if (!v44)
  {
    if (!v45)
    {
      goto LABEL_64;
    }

LABEL_61:

    goto LABEL_62;
  }

  if (!v45)
  {
    goto LABEL_61;
  }

  v48 = sub_266A8388C(v44, v45, v46, v47);

  if ((v48 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  if ((sub_266A8394C(*(v6 + v42[13]), *(v100 + v42[13])) & 1) == 0)
  {
    goto LABEL_62;
  }

  v49 = v42[14];
  v50 = *(v100 + v49 + 8);
  if (*(v6 + v49 + 8))
  {
    if (!v50)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_31_3((v6 + v49));
    v53 = v34 && v51 == v52;
    if (!v53 && (sub_266ABE1C4() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v50)
  {
    goto LABEL_62;
  }

  v54 = v42[15];
  v55 = *(v17 + 48);
  sub_266A6F9C8(v6 + v54, v1, &qword_2800B1DB8, "h9");
  sub_266A6F9C8(v100 + v54, v1 + v55, &qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_77(v1, 1, v7);
  if (v34)
  {
    OUTLINED_FUNCTION_77(v1 + v55, 1, v7);
    if (v34)
    {
      sub_266A798F4(v1, &qword_2800B1DB8, "h9");
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  sub_266A6F9C8(v1, v2, &qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_77(v1 + v55, 1, v7);
  if (v56)
  {
    (*(v99 + 8))(v2, v7);
LABEL_82:
    v28 = &qword_2800B2AA8;
    v29 = &unk_266AC5F80;
    v30 = v1;
    goto LABEL_34;
  }

  (*(v99 + 32))(v0, v1 + v55, v7);
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v57, v58);
  v59 = sub_266ABD9F4();
  v60 = *(v99 + 8);
  v60(v0, v7);
  v60(v2, v7);
  sub_266A798F4(v1, &qword_2800B1DB8, "h9");
  if ((v59 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_84:
  v61 = v98[17];
  OUTLINED_FUNCTION_22_4();
  if (v64)
  {
    if (!v62)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_31_3(v63);
    v67 = v34 && v65 == v66;
    if (!v67 && (sub_266ABE1C4() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v62)
  {
    goto LABEL_62;
  }

  v68 = v98[18];
  OUTLINED_FUNCTION_22_4();
  if (v71)
  {
    if (!v69)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_31_3(v70);
    v74 = v34 && v72 == v73;
    if (!v74 && (sub_266ABE1C4() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v69)
  {
    goto LABEL_62;
  }

  sub_266A6F9C8(v6 + v98[16], v107, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v107[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (OUTLINED_FUNCTION_41_1())
    {
      v75 = v106[0];
      goto LABEL_107;
    }
  }

  else
  {
    sub_266A798F4(v107, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  v75 = 0x9000000000000;
LABEL_107:
  sub_266A6F9C8(v100 + v98[16], v107, &qword_2800B1CC8, &unk_266AC0FD0);
  if (!v107[3])
  {
    sub_266A798F4(v107, &qword_2800B1CC8, &unk_266AC0FD0);
    goto LABEL_111;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
  if ((OUTLINED_FUNCTION_41_1() & 1) == 0)
  {
LABEL_111:
    v78 = 0x9000000000000;
    goto LABEL_112;
  }

  v78 = v106[0];
LABEL_112:
  if ((v75 & 0xFF000000000000) == 0x9000000000000)
  {
    if ((v78 & 0xFF000000000000) != 0x9000000000000)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v107[0] = v75;
    if ((v78 & 0xFF000000000000) == 0x9000000000000 || !OUTLINED_FUNCTION_24_5(v78, v76, v77))
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_17_5(v98[20]);
  if (!v34)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_17_5(v98[19]);
  if (!v34)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_17_5(v98[21]);
  if (!v34)
  {
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_17_5(v98[22]);
  if (!v34)
  {
    goto LABEL_62;
  }

  v79 = v98[23];
  OUTLINED_FUNCTION_22_4();
  if (v82)
  {
    if (!v80)
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_31_3(v81);
    v85 = v34 && v83 == v84;
    if (!v85 && (sub_266ABE1C4() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v80)
  {
    goto LABEL_62;
  }

  v86 = v98[24];
  OUTLINED_FUNCTION_55();
  if (v90)
  {
    if ((v89 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if ((v89 & 1) != 0 || *v87 != *v88)
  {
    goto LABEL_62;
  }

  v91 = v98[25];
  OUTLINED_FUNCTION_55();
  if ((v95 & 1) == 0 && (v94 & 1) == 0)
  {
    v96 = *v92;
    v97 = *v93;
  }

LABEL_62:
  OUTLINED_FUNCTION_30();
}

void ParticipantModel.hash(into:)()
{
  OUTLINED_FUNCTION_31();
  v3 = v0;
  OUTLINED_FUNCTION_30_4();
  v4 = sub_266ABD7A4();
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v38 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v37 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_21(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_78();
  if (sub_266A70978(*(v0 + 40)))
  {
    v15 = OUTLINED_FUNCTION_49();
    sub_266A9CDF0(v15, v16);
  }

  sub_266A6FFD8(v0 + 48, &v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  if (swift_dynamicCast())
  {
    memcpy(v40, v41, sizeof(v40));
    if (v40[14])
    {
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_61();
    }

    else
    {
      OUTLINED_FUNCTION_62();
    }

    if (v40[1])
    {
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_61();
    }

    else
    {
      OUTLINED_FUNCTION_62();
    }

    sub_266A72578(v40);
  }

  if (*(v0 + 96))
  {
    v17 = *(v0 + 88);
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_61();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  v18 = *(v0 + 104);
  sub_266A70C04();
  if (v19)
  {
    v20 = OUTLINED_FUNCTION_49();
    sub_266A9CD14(v20, v21);
  }

  MEMORY[0x26D5E8B00](*(v0 + 112));
  if ((*(v0 + 114) & 1) == 0)
  {
    v22 = *(v0 + 113);
    OUTLINED_FUNCTION_58();
  }

  sub_266ABE264();
  v23 = type metadata accessor for ParticipantModel();
  v24 = v23[11];
  OUTLINED_FUNCTION_0_7();
  sub_266A6F7D0(v25, v26);
  sub_266ABD9D4();
  if (sub_266A70D6C(*(v3 + v23[12])))
  {
    OUTLINED_FUNCTION_49();
    sub_266A9CC84();
  }

  sub_266A9CC44(v1, *(v3 + v23[13]));
  v27 = (v3 + v23[14]);
  if (v27[1])
  {
    v28 = *v27;
    OUTLINED_FUNCTION_58();
    sub_266ABDB04();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  v29 = (v3 + v23[17]);
  if (v29[1])
  {
    v30 = *v29;
    OUTLINED_FUNCTION_58();
    sub_266ABDB04();
  }

  else
  {
    OUTLINED_FUNCTION_62();
  }

  sub_266A6F9C8(v3 + v23[15], v2, &qword_2800B1DB8, "h9");
  OUTLINED_FUNCTION_77(v2, 1, v4);
  if (v31)
  {
    OUTLINED_FUNCTION_62();
  }

  else
  {
    (*(v38 + 32))(v37, v2, v4);
    OUTLINED_FUNCTION_58();
    sub_266ABD9D4();
    (*(v38 + 8))(v37, v4);
  }

  sub_266A6F9C8(v3 + v23[16], v41, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v41[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v32 = BYTE1(v40[0]);
      v39 = BYTE6(v40[0]);
      sub_266ABE264();
      MEMORY[0x26D5E8B00](v32);
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](v39);
      sub_266ABE264();
    }
  }

  else
  {
    sub_266A798F4(v41, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  MEMORY[0x26D5E8B00](*(v3 + v23[20]));
  MEMORY[0x26D5E8B00](*(v3 + v23[19]));
  MEMORY[0x26D5E8B00](*(v3 + v23[21]));
  MEMORY[0x26D5E8B00](*(v3 + v23[22]));
  v33 = (v3 + v23[23]);
  if (v33[1])
  {
    v34 = *v33;
    sub_266ABDB04();
  }

  v35 = v3 + v23[24];
  if ((*(v35 + 8) & 1) == 0)
  {
    MEMORY[0x26D5E8B00](*v35);
  }

  v36 = v3 + v23[25];
  if ((*(v36 + 8) & 1) == 0)
  {
    MEMORY[0x26D5E8B00](*v36);
  }

  OUTLINED_FUNCTION_30();
}

uint64_t ParticipantModel.hashValue.getter()
{
  sub_266ABE244();
  ParticipantModel.hash(into:)();
  return sub_266ABE2A4();
}

uint64_t sub_266AB00CC()
{
  sub_266ABE244();
  ParticipantModel.hash(into:)();
  return sub_266ABE2A4();
}

void ParticipantModel.collatesToRequest(request:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = type metadata accessor for ParticipantModel();
  v12 = OUTLINED_FUNCTION_1_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_54();
  v17 = v4[3];
  v18 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v17);
  v19 = (*(v18 + 32))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266AC0EB0;
  *(inited + 56) = v11;
  OUTLINED_FUNCTION_28_4();
  *(inited + 64) = sub_266A6F7D0(v21, v22);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_266A6E9E4(v2, boxed_opaque_existential_1);
  *&v45[0] = v19;
  sub_266A7F950(inited);
  v24 = *(*&v45[0] + 16);
  if (v24)
  {
    v43[1] = *&v45[0];
    v25 = *&v45[0] + 32;
    v26 = MEMORY[0x277D84F90];
    do
    {
      sub_266A6FFD8(v25, v45);
      sub_266A6DBC4(v45, &v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
      v27 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v10, v27 ^ 1u, 1, v11);
      OUTLINED_FUNCTION_77(v10, 1, v11);
      if (v28)
      {
        sub_266A798F4(v10, &qword_2800B1CB0, &qword_266AC0FB8);
      }

      else
      {
        sub_266A7977C(v10, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = *(v26 + 16);
          OUTLINED_FUNCTION_21_0();
          sub_266A98500();
          v26 = v35;
        }

        v31 = *(v26 + 16);
        v30 = *(v26 + 24);
        if (v31 >= v30 >> 1)
        {
          OUTLINED_FUNCTION_14(v30);
          sub_266A98500();
          v26 = v36;
        }

        *(v26 + 16) = v31 + 1;
        v32 = *(v14 + 80);
        OUTLINED_FUNCTION_21_4();
        sub_266A7977C(v1, v26 + v33 + *(v14 + 72) * v31);
      }

      v25 += 40;
      --v24;
    }

    while (v24);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  *&v45[0] = v26;
  sub_266AAA5AC();
  sub_266AAA8D0();
  v38 = v37;
  sub_266A94558();
  v44 = v39;
  sub_266A7F950(v38);
  sub_266AAAECC();

  sub_266AAB528();
  v41 = v40;

  v42 = *(v41 + 16);

  OUTLINED_FUNCTION_30();
}

unint64_t sub_266AB0470()
{
  result = qword_2800B29C8;
  if (!qword_2800B29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B29C8);
  }

  return result;
}

unint64_t sub_266AB04C4()
{
  result = qword_2800B29D8;
  if (!qword_2800B29D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29D0, &qword_266AC5F58);
    sub_266AA8F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B29D8);
  }

  return result;
}

unint64_t sub_266AB0548()
{
  result = qword_2800B29E8;
  if (!qword_2800B29E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29E0, &qword_266AC5F60);
    sub_266A8233C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B29E8);
  }

  return result;
}

unint64_t sub_266AB05CC()
{
  result = qword_2800B29F0;
  if (!qword_2800B29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B29F0);
  }

  return result;
}

unint64_t sub_266AB0620()
{
  result = qword_2800B2A08;
  if (!qword_2800B2A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A00, &qword_266AC5F68);
    sub_266AB0470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A08);
  }

  return result;
}

unint64_t sub_266AB06A4()
{
  result = qword_2800B2A18;
  if (!qword_2800B2A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A10, &qword_266AC5F70);
    sub_266AB0728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A18);
  }

  return result;
}

unint64_t sub_266AB0728()
{
  result = qword_2800B2A20;
  if (!qword_2800B2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A20);
  }

  return result;
}

unint64_t sub_266AB077C()
{
  result = qword_2800B2A28;
  if (!qword_2800B2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A28);
  }

  return result;
}

unint64_t sub_266AB07D0()
{
  result = qword_2800B2A30;
  if (!qword_2800B2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A30);
  }

  return result;
}

unint64_t sub_266AB0824()
{
  result = qword_2800B2A38;
  if (!qword_2800B2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A38);
  }

  return result;
}

unint64_t sub_266AB0878()
{
  result = qword_2800B2A40;
  if (!qword_2800B2A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A40);
  }

  return result;
}

unint64_t sub_266AB08CC()
{
  result = qword_2800B2A50;
  if (!qword_2800B2A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29D0, &qword_266AC5F58);
    sub_266AA8FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A50);
  }

  return result;
}

unint64_t sub_266AB0950()
{
  result = qword_2800B2A58;
  if (!qword_2800B2A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B29E0, &qword_266AC5F60);
    sub_266A71BAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A58);
  }

  return result;
}

unint64_t sub_266AB09D4()
{
  result = qword_2800B2A70;
  if (!qword_2800B2A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A00, &qword_266AC5F68);
    sub_266A70EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A70);
  }

  return result;
}

unint64_t sub_266AB0A58()
{
  result = qword_2800B2A80;
  if (!qword_2800B2A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2A10, &qword_266AC5F70);
    sub_266AB0ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A80);
  }

  return result;
}

unint64_t sub_266AB0ADC()
{
  result = qword_2800B2A88;
  if (!qword_2800B2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2A88);
  }

  return result;
}

unint64_t sub_266AB0B30()
{
  v1 = *(v0 + 40);
  sub_266ABE244();
  sub_266ABDB04();
  sub_266ABE2A4();
  v2 = OUTLINED_FUNCTION_79();

  return sub_266AB0D48(v2, v3, v4);
}

unint64_t sub_266AB0BA4(unint64_t a1)
{
  v3 = *(v1 + 40);
  sub_266ABE244();
  sub_266AB4FC0(v6, a1);
  v4 = sub_266ABE2A4();

  return sub_266AB0DFC(a1, v4);
}

unint64_t sub_266AB0C10(unint64_t a1)
{
  v3 = a1 >> 8;
  v4 = HIWORD(a1);
  v5 = *(v1 + 40);
  sub_266ABE244();
  sub_266ABE264();
  MEMORY[0x26D5E8B00](BYTE1(a1));
  sub_266ABE264();
  sub_266ABE264();
  sub_266ABE274();
  MEMORY[0x26D5E8B00](BYTE6(a1));
  sub_266ABE264();
  v6 = sub_266ABE2A4();

  return sub_266AB0ECC(a1 & 0xFF00FFFFFFFF0000 | (v4 << 48) | (v3 << 8) | a1, v6);
}

unint64_t sub_266AB0D04(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_266ABDE34();

  return sub_266AB0FA0(a1, v5);
}

unint64_t sub_266AB0D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_266ABE1C4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_266AB0DFC(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xFF000000000000;
    do
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if ((v8 & 0xFF000000000000) == 0x9000000000000)
      {
        if (v7 == 0x9000000000000)
        {
          return result;
        }
      }

      else if (v7 != 0x9000000000000)
      {
        v9 = a1 == v8 && ((v8 ^ a1) & 0xFF00) == 0;
        v10 = v9 && BYTE2(v8) == BYTE2(a1);
        v11 = v10 && BYTE3(v8) == BYTE3(a1);
        v12 = v11 && WORD2(v8) == WORD2(a1);
        v13 = (v8 ^ a1) >> 48;
        if (v12 && v13 == 0)
        {
          return result;
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_266AB0ECC(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 8 * result);
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v12 = *(v7 + 2);
      v13 = v7[6];
      v14 = v7[7];
      if (v8 == a1 && BYTE1(a1) == v9 && BYTE2(a1) == v10 && BYTE3(a1) == v11 && WORD2(a1) == v12 && BYTE6(a1) == v13 && HIBYTE(a1) == v14)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_266AB0FA0(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_266AB50EC(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x26D5E86F0](v8, a1);
    sub_266A79218(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_266AB1100(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_266ABE184();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_266ABDC74();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_266AB121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = sub_266ABD7A4();
  v8 = *(*(v39 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v27 - v14;
  v28 = a2;
  if (a3 != a2)
  {
    v16 = (v13 + 8);
    v32 = *a4;
    v17 = v32 + 40 * a3;
    v18 = a1 - a3;
    while (2)
    {
      v30 = v17;
      v31 = a3;
      v29 = v18;
      do
      {
        sub_266A6FFD8(v17, &v36);
        sub_266A6FFD8(v17 - 40, v33);
        v19 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, v37);
        (*(v20 + 88))(v19, v20);
        v21 = v34;
        v22 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        (*(v22 + 88))(v21, v22);
        LOBYTE(v21) = sub_266ABD724();
        v23 = *v16;
        v24 = v39;
        (*v16)(v11, v39);
        v23(v15, v24);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v36);
        if ((v21 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return result;
        }

        sub_266A6DBC4(v17, &v36);
        v25 = *(v17 - 24);
        *v17 = *(v17 - 40);
        *(v17 + 16) = v25;
        *(v17 + 32) = *(v17 - 8);
        result = sub_266A6DBC4(&v36, v17 - 40);
        v17 -= 40;
      }

      while (!__CFADD__(v18++, 1));
      a3 = v31 + 1;
      v17 = v30 + 40;
      v18 = v29 - 1;
      if (v31 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_266AB1470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v63 = sub_266ABD7A4();
  v8 = *(*(v63 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v63);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v9);
  v15 = &v39[-v14];
  v40 = a2;
  if (a3 != a2)
  {
    v16 = (v13 + 8);
    v44 = *a4;
    v17 = v44 + 40 * a3;
    v18 = a1 - a3;
    while (2)
    {
      v43 = a3;
      v41 = v18;
      v42 = v17;
      v19 = v17;
      while (1)
      {
        sub_266A6FFD8(v19, &v60);
        sub_266A6FFD8(v19 - 40, v57);
        v21 = v61;
        v20 = v62;
        __swift_project_boxed_opaque_existential_1(&v60, v61);
        v22 = (*(v20 + 16))(v21, v20);
        if (*(v22 + 16))
        {
          sub_266A6FFD8(v22 + 32, &v51);
        }

        else
        {
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
        }

        if (!*(&v52 + 1))
        {
          sub_266A798F4(&v51, &qword_2800B1D78, "^X");
          goto LABEL_19;
        }

        sub_266A6DBC4(&v51, v54);
        v23 = v58;
        v24 = v59;
        __swift_project_boxed_opaque_existential_1(v57, v58);
        v25 = (*(v24 + 16))(v23, v24);
        if (*(v25 + 16))
        {
          sub_266A6FFD8(v25 + 32, &v48);
        }

        else
        {
          v50 = 0;
          v49 = 0u;
          v48 = 0u;
        }

        if (!*(&v49 + 1))
        {
          break;
        }

        sub_266A6DBC4(&v48, &v51);
        v26 = v55;
        v27 = v56;
        __swift_project_boxed_opaque_existential_1(v54, v55);
        (*(v27 + 32))(&v48, v26, v27);
        v28 = *(&v49 + 1);
        v29 = v50;
        __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
        (*(v29 + 88))(v28, v29);
        v30 = *(&v52 + 1);
        v31 = v53;
        __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
        (*(v31 + 32))(v45, v30, v31);
        v32 = v46;
        v33 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v33 + 88))(v32, v33);
        v34 = sub_266ABD724();
        v35 = *v16;
        v36 = v63;
        (*v16)(v11, v63);
        v35(v15, v36);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        __swift_destroy_boxed_opaque_existential_1Tm(&v48);
        __swift_destroy_boxed_opaque_existential_1Tm(&v51);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        result = __swift_destroy_boxed_opaque_existential_1Tm(&v60);
        if (v34)
        {
          if (!v44)
          {
            __break(1u);
            return result;
          }

          sub_266A6DBC4(v19, &v60);
          v37 = *(v19 - 24);
          *v19 = *(v19 - 40);
          *(v19 + 16) = v37;
          *(v19 + 32) = *(v19 - 8);
          result = sub_266A6DBC4(&v60, v19 - 40);
          v19 -= 40;
          if (!__CFADD__(v18++, 1))
          {
            continue;
          }
        }

        goto LABEL_20;
      }

      sub_266A798F4(&v48, &qword_2800B1D78, "^X");
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v60);
LABEL_20:
      a3 = v43 + 1;
      v17 = v42 + 40;
      v18 = v41 - 1;
      if (v43 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_266AB18F0(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v114 = a1;
  v131 = sub_266ABD7A4();
  v6 = *(*(v131 - 1) + 64);
  v7 = MEMORY[0x28223BE20](v131);
  v124 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v123 = &v110 - v10;
  v118 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v13 = MEMORY[0x277D84F90];
LABEL_92:
    v131 = *v114;
    if (!v131)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_94;
    }

    goto LABEL_129;
  }

  v111 = a4;
  v12 = 0;
  v122 = (v9 + 8);
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    v14 = v12++;
    if (v12 < v11)
    {
      v15 = *v118;
      sub_266A6FFD8(&(*v118)[40 * v12], &v128);
      sub_266A6FFD8(&v15[40 * v14], v125);
      v16 = v120;
      LODWORD(v121) = sub_266A7EC68(&v128, v125);
      v120 = v16;
      if (v16)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        __swift_destroy_boxed_opaque_existential_1Tm(&v128);
LABEL_104:

        return;
      }

      v112 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v125);
      __swift_destroy_boxed_opaque_existential_1Tm(&v128);
      v117 = 40 * v14;
      v13 = &v15[40 * v14 + 80];
      v113 = v14;
      v17 = v14 + 2;
      while (1)
      {
        v18 = v17;
        v19 = v12 + 1;
        if (v19 >= v11)
        {
          break;
        }

        sub_266A6FFD8(v13, &v128);
        sub_266A6FFD8((v13 - 40), v125);
        v119 = v19;
        v20 = v11;
        v21 = v129;
        v22 = v130;
        __swift_project_boxed_opaque_existential_1(&v128, v129);
        v23 = v123;
        (*(v22 + 88))(v21, v22);
        v24 = v126;
        v25 = v127;
        __swift_project_boxed_opaque_existential_1(v125, v126);
        v26 = v124;
        (*(v25 + 88))(v24, v25);
        v27 = sub_266ABD724() & 1;
        v28 = *v122;
        v29 = v131;
        (*v122)(v26, v131);
        v30 = v29;
        v11 = v20;
        v12 = v119;
        v28(v23, v30);
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        __swift_destroy_boxed_opaque_existential_1Tm(&v128);
        v13 += 40;
        v17 = v18 + 1;
        if ((v121 & 1) != v27)
        {
          goto LABEL_10;
        }
      }

      v12 = v11;
LABEL_10:
      if (v121)
      {
        if (v12 < v113)
        {
          goto LABEL_128;
        }

        if (v113 >= v12)
        {
          v13 = v112;
          v14 = v113;
          goto LABEL_23;
        }

        if (v11 >= v18)
        {
          v31 = v18;
        }

        else
        {
          v31 = v11;
        }

        v32 = 40 * v31 - 40;
        v33 = v12;
        v34 = v113;
        v35 = v117;
        do
        {
          if (v34 != --v33)
          {
            v36 = *v118;
            if (!*v118)
            {
              goto LABEL_133;
            }

            v37 = &v36[v35];
            v38 = &v36[v32];
            v39 = v35;
            sub_266A6DBC4(&v36[v35], &v128);
            v40 = *(v38 + 32);
            v41 = *(v38 + 16);
            *v37 = *v38;
            *(v37 + 1) = v41;
            *(v37 + 4) = v40;
            sub_266A6DBC4(&v128, v38);
            v35 = v39;
          }

          ++v34;
          v32 -= 40;
          v35 += 40;
        }

        while (v34 < v33);
      }

      v13 = v112;
      v14 = v113;
    }

LABEL_23:
    v42 = v118[1];
    if (v12 < v42)
    {
      if (__OFSUB__(v12, v14))
      {
        goto LABEL_125;
      }

      if (v12 - v14 < v111)
      {
        break;
      }
    }

LABEL_39:
    if (v12 < v14)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v99 = *(v13 + 2);
      sub_266A981C8();
      v13 = v100;
    }

    v57 = *(v13 + 2);
    v58 = v57 + 1;
    if (v57 >= *(v13 + 3) >> 1)
    {
      sub_266A981C8();
      v13 = v101;
    }

    *(v13 + 2) = v58;
    v59 = v13 + 32;
    v60 = &v13[16 * v57 + 32];
    *v60 = v14;
    *(v60 + 1) = v12;
    v121 = *v114;
    if (!v121)
    {
      goto LABEL_134;
    }

    if (v57)
    {
      while (1)
      {
        v61 = v58 - 1;
        v62 = &v59[16 * v58 - 16];
        v63 = &v13[16 * v58];
        if (v58 >= 4)
        {
          break;
        }

        if (v58 == 3)
        {
          v64 = *(v13 + 4);
          v65 = *(v13 + 5);
          v74 = __OFSUB__(v65, v64);
          v66 = v65 - v64;
          v67 = v74;
LABEL_59:
          if (v67)
          {
            goto LABEL_111;
          }

          v79 = *v63;
          v78 = *(v63 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_114;
          }

          v83 = *(v62 + 1);
          v84 = v83 - *v62;
          if (__OFSUB__(v83, *v62))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v81, v84))
          {
            goto LABEL_119;
          }

          if (v81 + v84 >= v66)
          {
            if (v66 < v84)
            {
              v61 = v58 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v58 < 2)
        {
          goto LABEL_113;
        }

        v86 = *v63;
        v85 = *(v63 + 1);
        v74 = __OFSUB__(v85, v86);
        v81 = v85 - v86;
        v82 = v74;
LABEL_74:
        if (v82)
        {
          goto LABEL_116;
        }

        v88 = *v62;
        v87 = *(v62 + 1);
        v74 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v74)
        {
          goto LABEL_118;
        }

        if (v89 < v81)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v61 - 1 >= v58)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
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
          goto LABEL_127;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v93 = v13;
        v94 = &v59[16 * v61 - 16];
        v95 = *v94;
        v13 = &v59[16 * v61];
        v96 = *(v13 + 1);
        v97 = v120;
        sub_266AB2F88(&(*v118)[40 * *v94], &(*v118)[40 * *v13], &(*v118)[40 * v96], v121);
        v120 = v97;
        if (v97)
        {
          goto LABEL_104;
        }

        if (v96 < v95)
        {
          goto LABEL_106;
        }

        v98 = *(v93 + 2);
        if (v61 > v98)
        {
          goto LABEL_107;
        }

        *v94 = v95;
        *(v94 + 1) = v96;
        if (v61 >= v98)
        {
          goto LABEL_108;
        }

        v58 = v98 - 1;
        memmove(&v59[16 * v61], v13 + 16, 16 * (v98 - 1 - v61));
        v13 = v93;
        *(v93 + 2) = v98 - 1;
        if (v98 <= 2)
        {
          goto LABEL_88;
        }
      }

      v68 = &v59[16 * v58];
      v69 = *(v68 - 8);
      v70 = *(v68 - 7);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_109;
      }

      v73 = *(v68 - 6);
      v72 = *(v68 - 5);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_110;
      }

      v75 = *(v63 + 1);
      v76 = v75 - *v63;
      if (__OFSUB__(v75, *v63))
      {
        goto LABEL_112;
      }

      v74 = __OFADD__(v66, v76);
      v77 = v66 + v76;
      if (v74)
      {
        goto LABEL_115;
      }

      if (v77 >= v71)
      {
        v91 = *v62;
        v90 = *(v62 + 1);
        v74 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v74)
        {
          goto LABEL_123;
        }

        if (v66 < v92)
        {
          v61 = v58 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v11 = v118[1];
    if (v12 >= v11)
    {
      goto LABEL_92;
    }
  }

  v43 = (v14 + v111);
  if (__OFADD__(v14, v111))
  {
    goto LABEL_126;
  }

  if (v43 >= v42)
  {
    v43 = v118[1];
  }

  if (v43 < v14)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    v13 = sub_266AB36C4(v13);
LABEL_94:
    v102 = v13 + 16;
    v103 = *(v13 + 2);
    while (v103 >= 2)
    {
      if (!*v118)
      {
        goto LABEL_132;
      }

      v104 = v13;
      v105 = &v13[16 * v103];
      v106 = *v105;
      v13 = &v102[2 * v103];
      v107 = *(v13 + 1);
      v108 = v120;
      sub_266AB2F88(&(*v118)[40 * *v105], &(*v118)[40 * *v13], &(*v118)[40 * v107], v131);
      v120 = v108;
      if (v108)
      {
        break;
      }

      if (v107 < v106)
      {
        goto LABEL_120;
      }

      if (v103 - 2 >= *v102)
      {
        goto LABEL_121;
      }

      *v105 = v106;
      *(v105 + 1) = v107;
      v109 = *v102 - v103;
      if (*v102 < v103)
      {
        goto LABEL_122;
      }

      v103 = *v102 - 1;
      memmove(v13, v13 + 16, 16 * v109);
      *v102 = v103;
      v13 = v104;
    }

    goto LABEL_104;
  }

  if (v12 == v43)
  {
    goto LABEL_39;
  }

  v112 = v13;
  v121 = *v118;
  v44 = &v121[40 * v12];
  v113 = v14;
  v45 = v14 - v12;
  v115 = v43;
LABEL_32:
  v119 = v12;
  v116 = v45;
  v117 = v44;
  while (1)
  {
    sub_266A6FFD8(v44, &v128);
    sub_266A6FFD8((v44 - 40), v125);
    v46 = v129;
    v47 = v130;
    __swift_project_boxed_opaque_existential_1(&v128, v129);
    v48 = v123;
    (*(v47 + 88))(v46, v47);
    v49 = v126;
    v50 = v127;
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v51 = v124;
    (*(v50 + 88))(v49, v50);
    v52 = sub_266ABD724();
    v53 = *v122;
    v54 = v131;
    (*v122)(v51, v131);
    v53(v48, v54);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    __swift_destroy_boxed_opaque_existential_1Tm(&v128);
    if ((v52 & 1) == 0)
    {
LABEL_37:
      v12 = v119 + 1;
      v44 = (v117 + 40);
      v45 = v116 - 1;
      if (v119 + 1 == v115)
      {
        v12 = v115;
        v13 = v112;
        v14 = v113;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v121)
    {
      break;
    }

    sub_266A6DBC4(v44, &v128);
    v55 = *(v44 - 24);
    *v44 = *(v44 - 40);
    *(v44 + 1) = v55;
    *(v44 + 4) = *(v44 - 1);
    sub_266A6DBC4(&v128, (v44 - 40));
    v44 -= 40;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

void sub_266AB21D4(char **a1, uint64_t a2, char **a3, uint64_t a4)
{
  v142 = a1;
  v151 = sub_266ABD7A4();
  v6 = *(*(v151 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v151);
  v9 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v170 = &v139 - v11;
  v146 = a3;
  v12 = a3[1];
  if (v12 < 1)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_118:
    v170 = *v142;
    if (!v170)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_120;
    }

    goto LABEL_154;
  }

  v139 = a4;
  v13 = 0;
  v150 = (v10 + 8);
  v14 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v13;
    v16 = v13 + 1;
    if (v16 >= v12)
    {
      v148 = v16;
      goto LABEL_36;
    }

    v17 = *v146;
    v18 = v16;
    sub_266A6FFD8(&(*v146)[40 * v16], &v167);
    sub_266A6FFD8(&v17[40 * v15], &v164);
    v19 = v147;
    v20 = sub_266A7FBA0(&v167, &v164);
    v147 = v19;
    if (v19)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v164);
      __swift_destroy_boxed_opaque_existential_1Tm(&v167);
LABEL_129:

      return;
    }

    v21 = v20;
    v140 = v14;
    __swift_destroy_boxed_opaque_existential_1Tm(&v164);
    __swift_destroy_boxed_opaque_existential_1Tm(&v167);
    v145 = 40 * v15;
    v22 = &v17[40 * v15 + 80];
    v141 = v15;
    v23 = v15 + 2;
    v149 = v12;
    while (1)
    {
      v24 = v23;
      if (v18 + 1 >= v12)
      {
        break;
      }

      v148 = v18;
      sub_266A6FFD8(v22, &v167);
      sub_266A6FFD8(v22 - 40, &v164);
      v25 = v168;
      v26 = v169;
      __swift_project_boxed_opaque_existential_1(&v167, v168);
      v27 = (*(v26 + 16))(v25, v26);
      if (*(v27 + 16))
      {
        sub_266A6FFD8(v27 + 32, &v158);
      }

      else
      {
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
      }

      if (!*(&v159 + 1))
      {
        sub_266A798F4(&v158, &qword_2800B1D78, "^X");
LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }

      sub_266A6DBC4(&v158, v161);
      v28 = v165;
      v29 = v166;
      __swift_project_boxed_opaque_existential_1(&v164, v165);
      v30 = (*(v29 + 16))(v28, v29);
      if (*(v30 + 16))
      {
        sub_266A6FFD8(v30 + 32, &v155);
      }

      else
      {
        v157 = 0;
        v156 = 0u;
        v155 = 0u;
      }

      if (!*(&v156 + 1))
      {
        sub_266A798F4(&v155, &qword_2800B1D78, "^X");
        __swift_destroy_boxed_opaque_existential_1Tm(v161);
        goto LABEL_18;
      }

      sub_266A6DBC4(&v155, &v158);
      v31 = v162;
      v32 = v163;
      __swift_project_boxed_opaque_existential_1(v161, v162);
      (*(v32 + 32))(&v155, v31, v32);
      v33 = *(&v156 + 1);
      v34 = v157;
      __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
      v35 = v170;
      (*(v34 + 88))(v33, v34);
      v36 = *(&v159 + 1);
      v37 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      (*(v37 + 32))(v152, v36, v37);
      v38 = v153;
      v39 = v154;
      __swift_project_boxed_opaque_existential_1(v152, v153);
      (*(v39 + 88))(v38, v39);
      v14 = sub_266ABD724();
      v40 = *v150;
      v41 = v21;
      v42 = v151;
      (*v150)(v9, v151);
      v43 = v35;
      v12 = v149;
      v44 = v42;
      v21 = v41;
      v40(v43, v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v152);
      __swift_destroy_boxed_opaque_existential_1Tm(&v155);
      __swift_destroy_boxed_opaque_existential_1Tm(&v158);
      __swift_destroy_boxed_opaque_existential_1Tm(v161);
LABEL_19:
      __swift_destroy_boxed_opaque_existential_1Tm(&v164);
      __swift_destroy_boxed_opaque_existential_1Tm(&v167);
      v22 += 40;
      v18 = v148 + 1;
      v23 = v24 + 1;
      if ((v21 & 1) != (v14 & 1))
      {
        goto LABEL_23;
      }
    }

    v18 = v12;
LABEL_23:
    v148 = v18;
    if ((v21 & 1) == 0)
    {
LABEL_34:
      v14 = v140;
      v15 = v141;
      goto LABEL_36;
    }

    v45 = v141;
    if (v18 < v141)
    {
      goto LABEL_153;
    }

    if (v141 < v18)
    {
      if (v12 >= v24)
      {
        v46 = v24;
      }

      else
      {
        v46 = v12;
      }

      v47 = 40 * v46 - 40;
      v48 = v18;
      v49 = v145;
      do
      {
        if (v45 != --v48)
        {
          v50 = *v146;
          if (!*v146)
          {
            goto LABEL_158;
          }

          v51 = &v50[v49];
          v52 = &v50[v47];
          sub_266A6DBC4(&v50[v49], &v167);
          v53 = *(v52 + 32);
          v54 = *(v52 + 16);
          *v51 = *v52;
          *(v51 + 1) = v54;
          *(v51 + 4) = v53;
          sub_266A6DBC4(&v167, v52);
        }

        ++v45;
        v47 -= 40;
        v49 += 40;
      }

      while (v45 < v48);
      goto LABEL_34;
    }

    v14 = v140;
    v15 = v141;
LABEL_36:
    v55 = v146[1];
    if (v148 < v55)
    {
      if (__OFSUB__(v148, v15))
      {
        goto LABEL_150;
      }

      if (v148 - v15 < v139)
      {
        break;
      }
    }

LABEL_65:
    if (v148 < v15)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v127 = *(v14 + 16);
      sub_266A981C8();
      v14 = v128;
    }

    v80 = *(v14 + 16);
    v81 = v80 + 1;
    if (v80 >= *(v14 + 24) >> 1)
    {
      sub_266A981C8();
      v14 = v129;
    }

    *(v14 + 16) = v81;
    v82 = v14 + 32;
    v83 = (v14 + 32 + 16 * v80);
    v84 = v148;
    *v83 = v15;
    v83[1] = v84;
    v149 = *v142;
    if (!v149)
    {
      goto LABEL_159;
    }

    v85 = v9;
    if (v80)
    {
      while (1)
      {
        v86 = v81 - 1;
        v87 = (v82 + 16 * (v81 - 1));
        v88 = (v14 + 16 * v81);
        if (v81 >= 4)
        {
          break;
        }

        if (v81 == 3)
        {
          v89 = *(v14 + 32);
          v90 = *(v14 + 40);
          v99 = __OFSUB__(v90, v89);
          v91 = v90 - v89;
          v92 = v99;
LABEL_85:
          if (v92)
          {
            goto LABEL_136;
          }

          v104 = *v88;
          v103 = v88[1];
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_139;
          }

          v108 = v87[1];
          v109 = v108 - *v87;
          if (__OFSUB__(v108, *v87))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v106, v109))
          {
            goto LABEL_144;
          }

          if (v106 + v109 >= v91)
          {
            if (v91 < v109)
            {
              v86 = v81 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v81 < 2)
        {
          goto LABEL_138;
        }

        v111 = *v88;
        v110 = v88[1];
        v99 = __OFSUB__(v110, v111);
        v106 = v110 - v111;
        v107 = v99;
LABEL_100:
        if (v107)
        {
          goto LABEL_141;
        }

        v113 = *v87;
        v112 = v87[1];
        v99 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v99)
        {
          goto LABEL_143;
        }

        if (v114 < v106)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v86 - 1 >= v81)
        {
          __break(1u);
LABEL_131:
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v146)
        {
          goto LABEL_156;
        }

        v118 = v14;
        v119 = (v82 + 16 * (v86 - 1));
        v120 = *v119;
        v121 = (v82 + 16 * v86);
        v14 = v121[1];
        v122 = v147;
        sub_266AB33C8(&(*v146)[40 * *v119], &(*v146)[40 * *v121], &(*v146)[40 * v14], v149);
        v147 = v122;
        if (v122)
        {
          goto LABEL_129;
        }

        if (v14 < v120)
        {
          goto LABEL_131;
        }

        v123 = v82;
        v124 = v85;
        v125 = v118;
        v126 = *(v118 + 16);
        if (v86 > v126)
        {
          goto LABEL_132;
        }

        *v119 = v120;
        v119[1] = v14;
        if (v86 >= v126)
        {
          goto LABEL_133;
        }

        v81 = v126 - 1;
        memmove(v121, v121 + 2, 16 * (v126 - 1 - v86));
        v14 = v125;
        *(v125 + 16) = v126 - 1;
        v85 = v124;
        v82 = v123;
        if (v126 <= 2)
        {
          goto LABEL_114;
        }
      }

      v93 = v82 + 16 * v81;
      v94 = *(v93 - 64);
      v95 = *(v93 - 56);
      v99 = __OFSUB__(v95, v94);
      v96 = v95 - v94;
      if (v99)
      {
        goto LABEL_134;
      }

      v98 = *(v93 - 48);
      v97 = *(v93 - 40);
      v99 = __OFSUB__(v97, v98);
      v91 = v97 - v98;
      v92 = v99;
      if (v99)
      {
        goto LABEL_135;
      }

      v100 = v88[1];
      v101 = v100 - *v88;
      if (__OFSUB__(v100, *v88))
      {
        goto LABEL_137;
      }

      v99 = __OFADD__(v91, v101);
      v102 = v91 + v101;
      if (v99)
      {
        goto LABEL_140;
      }

      if (v102 >= v96)
      {
        v116 = *v87;
        v115 = v87[1];
        v99 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v99)
        {
          goto LABEL_148;
        }

        if (v91 < v117)
        {
          v86 = v81 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v12 = v146[1];
    v13 = v148;
    v9 = v85;
    if (v148 >= v12)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v15, v139))
  {
    goto LABEL_151;
  }

  if (v15 + v139 >= v55)
  {
    v56 = v146[1];
  }

  else
  {
    v56 = v15 + v139;
  }

  if (v56 < v15)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    v14 = sub_266AB36C4(v14);
LABEL_120:
    v130 = v14;
    v131 = (v14 + 16);
    v132 = *(v14 + 16);
    while (v132 >= 2)
    {
      if (!*v146)
      {
        goto LABEL_157;
      }

      v14 = v130;
      v133 = (v130 + 16 * v132);
      v134 = *v133;
      v135 = &v131[2 * v132];
      v136 = v135[1];
      v137 = v147;
      sub_266AB33C8(&(*v146)[40 * *v133], &(*v146)[40 * *v135], &(*v146)[40 * v136], v170);
      v147 = v137;
      if (v137)
      {
        break;
      }

      if (v136 < v134)
      {
        goto LABEL_145;
      }

      if (v132 - 2 >= *v131)
      {
        goto LABEL_146;
      }

      *v133 = v134;
      v133[1] = v136;
      v138 = *v131 - v132;
      if (*v131 < v132)
      {
        goto LABEL_147;
      }

      v132 = *v131 - 1;
      memmove(v135, v135 + 2, 16 * v138);
      *v131 = v132;
      v130 = v14;
    }

    goto LABEL_129;
  }

  v57 = v148;
  if (v148 == v56)
  {
    goto LABEL_65;
  }

  v140 = v14;
  v149 = *v146;
  v58 = &v149[40 * v148];
  v141 = v15;
  v59 = v15 - v148;
  v143 = v56;
  while (2)
  {
    v148 = v57;
    v144 = v59;
    v145 = v58;
LABEL_47:
    sub_266A6FFD8(v58, &v167);
    sub_266A6FFD8(v58 - 40, &v164);
    v60 = v168;
    v61 = v169;
    __swift_project_boxed_opaque_existential_1(&v167, v168);
    v62 = (*(v61 + 16))(v60, v61);
    if (*(v62 + 16))
    {
      sub_266A6FFD8(v62 + 32, &v158);
    }

    else
    {
      v160 = 0;
      v158 = 0u;
      v159 = 0u;
    }

    if (!*(&v159 + 1))
    {
      sub_266A798F4(&v158, &qword_2800B1D78, "^X");
LABEL_62:
      __swift_destroy_boxed_opaque_existential_1Tm(&v164);
      __swift_destroy_boxed_opaque_existential_1Tm(&v167);
LABEL_63:
      v57 = v148 + 1;
      v58 = (v145 + 40);
      v59 = v144 - 1;
      if (v148 + 1 == v143)
      {
        v148 = v143;
        v14 = v140;
        v15 = v141;
        goto LABEL_65;
      }

      continue;
    }

    break;
  }

  sub_266A6DBC4(&v158, v161);
  v63 = v165;
  v64 = v166;
  __swift_project_boxed_opaque_existential_1(&v164, v165);
  v65 = (*(v64 + 16))(v63, v64);
  if (*(v65 + 16))
  {
    sub_266A6FFD8(v65 + 32, &v155);
  }

  else
  {
    v157 = 0;
    v156 = 0u;
    v155 = 0u;
  }

  if (!*(&v156 + 1))
  {
    sub_266A798F4(&v155, &qword_2800B1D78, "^X");
    __swift_destroy_boxed_opaque_existential_1Tm(v161);
    goto LABEL_62;
  }

  sub_266A6DBC4(&v155, &v158);
  v66 = v162;
  v67 = v163;
  __swift_project_boxed_opaque_existential_1(v161, v162);
  (*(v67 + 32))(&v155, v66, v67);
  v68 = *(&v156 + 1);
  v69 = v157;
  __swift_project_boxed_opaque_existential_1(&v155, *(&v156 + 1));
  v70 = v170;
  (*(v69 + 88))(v68, v69);
  v71 = *(&v159 + 1);
  v72 = v160;
  __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
  (*(v72 + 32))(v152, v71, v72);
  v73 = v153;
  v74 = v154;
  __swift_project_boxed_opaque_existential_1(v152, v153);
  (*(v74 + 88))(v73, v74);
  v75 = sub_266ABD724();
  v76 = *v150;
  v77 = v151;
  (*v150)(v9, v151);
  v76(v70, v77);
  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  __swift_destroy_boxed_opaque_existential_1Tm(&v155);
  __swift_destroy_boxed_opaque_existential_1Tm(&v158);
  __swift_destroy_boxed_opaque_existential_1Tm(v161);
  __swift_destroy_boxed_opaque_existential_1Tm(&v164);
  __swift_destroy_boxed_opaque_existential_1Tm(&v167);
  if ((v75 & 1) == 0)
  {
    goto LABEL_63;
  }

  if (v149)
  {
    sub_266A6DBC4(v58, &v167);
    v78 = *(v58 - 24);
    *v58 = *(v58 - 40);
    v58[1] = v78;
    *(v58 + 4) = *(v58 - 1);
    sub_266A6DBC4(&v167, v58 - 40);
    v58 = (v58 - 40);
    if (__CFADD__(v59++, 1))
    {
      goto LABEL_63;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

uint64_t sub_266AB2F88(char *a1, char *a2, unint64_t a3, char *a4)
{
  v58 = sub_266ABD7A4();
  v8 = *(*(v58 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v58);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = (a2 - a1) / 40;
  v56 = (v14 + 8);
  v15 = (a3 - a2) / 40;
  if (v13 < v15)
  {
    sub_266A9D164(a1, (a2 - a1) / 40, a4);
    v65 = &a4[40 * v13];
    while (1)
    {
      if (a4 >= v65 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v17 = a3;
      sub_266A6FFD8(a2, v62);
      sub_266A6FFD8(a4, v59);
      v18 = v63;
      v19 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v19 + 88))(v18, v19);
      v20 = v60;
      v21 = v61;
      __swift_project_boxed_opaque_existential_1(v59, v60);
      v22 = v57;
      (*(v21 + 88))(v20, v21);
      LOBYTE(v20) = sub_266ABD724();
      v23 = *v56;
      v24 = v22;
      v25 = v58;
      (*v56)(v24, v58);
      v23(v12, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v26 = a2;
      v27 = a1 == a2;
      a2 += 40;
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 += 40;
      a3 = v17;
    }

    v26 = a4;
    v27 = a1 == a4;
    a4 += 40;
    if (v27)
    {
      goto LABEL_13;
    }

LABEL_12:
    v28 = *v26;
    v29 = *(v26 + 1);
    *(a1 + 4) = *(v26 + 4);
    *a1 = v28;
    *(a1 + 1) = v29;
    goto LABEL_13;
  }

  sub_266A9D164(a2, (a3 - a2) / 40, a4);
  v30 = &a4[40 * v15];
  v53 = a4;
  v54 = a1;
LABEL_15:
  v31 = (a2 - 40);
  a3 -= 40;
  v32 = (v30 - 40);
  v55 = a2;
  while (1)
  {
    v65 = (v32 + 40);
    if (v32 + 40 <= a4 || a2 <= a1)
    {
      break;
    }

    sub_266A6FFD8(v32, v62);
    v34 = v31;
    sub_266A6FFD8(v31, v59);
    v36 = v63;
    v35 = v64;
    __swift_project_boxed_opaque_existential_1(v62, v63);
    (*(v35 + 88))(v36, v35);
    v37 = v60;
    v38 = v61;
    __swift_project_boxed_opaque_existential_1(v59, v60);
    v39 = v12;
    v40 = v57;
    (*(v38 + 88))(v37, v38);
    v41 = sub_266ABD724();
    v42 = *v56;
    v43 = v40;
    v12 = v39;
    v44 = v58;
    (*v56)(v43, v58);
    v42(v39, v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v62);
    if (v41)
    {
      v30 = (v32 + 40);
      a1 = v54;
      a2 = v34;
      a4 = v53;
      if ((a3 + 40) != v55)
      {
        v47 = *v34;
        v48 = *(v34 + 1);
        *(a3 + 32) = *(v34 + 4);
        *a3 = v47;
        *(a3 + 16) = v48;
        a2 = v34;
      }

      goto LABEL_15;
    }

    if (v65 != (a3 + 40))
    {
      v45 = *v32;
      v46 = *(v32 + 16);
      *(a3 + 32) = *(v32 + 32);
      *a3 = v45;
      *(a3 + 16) = v46;
    }

    a3 -= 40;
    v32 -= 40;
    a4 = v53;
    a1 = v54;
    a2 = v55;
    v31 = v34;
  }

LABEL_28:
  v49 = (v65 - a4) / 40;
  if (a2 != a4 || a2 >= &a4[40 * v49])
  {
    memmove(a2, a4, 40 * v49);
  }

  return 1;
}

uint64_t sub_266AB33C8(char *__src, char *a2, unint64_t a3, void *__dst)
{
  v5 = __dst;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = (a2 - __src) / 40;
  v10 = (a3 - a2) / 40;
  if (v9 < v10)
  {
    sub_266A9D164(__src, (a2 - __src) / 40, __dst);
    v11 = v5 + 40 * v9;
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v34 = v8;
        goto LABEL_30;
      }

      sub_266A6FFD8(v7, v45);
      sub_266A6FFD8(v5, v44);
      v13 = sub_266A7FBA0(v45, v44);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        v38 = (v11 - v5) / 40;
        v39 = v8 < v5 || v8 >= v5 + 40 * v38;
        if (v39 || v8 != v5)
        {
          v37 = 40 * v38;
          v34 = v8;
LABEL_42:
          v40 = v5;
LABEL_49:
          memmove(v34, v40, v37);
        }

        return 1;
      }

      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      if ((v14 & 1) == 0)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 40;
      if (!v16)
      {
        goto LABEL_13;
      }

LABEL_14:
      v8 += 40;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 40;
    if (v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    v17 = *v15;
    v18 = *(v15 + 1);
    *(v8 + 4) = *(v15 + 4);
    *v8 = v17;
    *(v8 + 1) = v18;
    goto LABEL_14;
  }

  sub_266A9D164(a2, (a3 - a2) / 40, __dst);
  v19 = v5 + 40 * v10;
  v20 = -v5;
  v43 = -v5;
LABEL_16:
  v46 = v7;
  v21 = (v7 - 40);
  v6 -= 40;
  v22 = v19 - 40;
  for (i = v20 + v19; ; i -= 40)
  {
    v11 = v22 + 40;
    if (v22 + 40 <= v5 || v46 <= v8)
    {
      v34 = v46;
LABEL_30:
      v35 = (v11 - v5) / 40;
      v36 = v34 < v5 || v34 >= v5 + 40 * v35;
      if (v36 || v34 != v5)
      {
        v37 = 40 * v35;
        goto LABEL_42;
      }

      return 1;
    }

    v25 = v5;
    sub_266A6FFD8(v22, v45);
    v26 = v21;
    sub_266A6FFD8(v21, v44);
    v27 = sub_266A7FBA0(v45, v44);
    if (v4)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    if (v28)
    {
      v19 = v22 + 40;
      v31 = v26;
      v7 = v26;
      v20 = v43;
      v5 = v25;
      if (v6 + 40 != v46)
      {
        v32 = *v31;
        v33 = v31[1];
        *(v6 + 32) = *(v31 + 4);
        *v6 = v32;
        *(v6 + 16) = v33;
        v7 = v31;
      }

      goto LABEL_16;
    }

    if (v11 != v6 + 40)
    {
      v29 = *v22;
      v30 = *(v22 + 16);
      *(v6 + 32) = *(v22 + 32);
      *v6 = v29;
      *(v6 + 16) = v30;
    }

    v6 -= 40;
    v22 -= 40;
    v21 = v26;
    v5 = v25;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  v34 = v46;
  v41 = v46 < v25 || v46 >= v25 + 40 * (i / 40);
  if (v41 || v46 != v25)
  {
    v37 = 40 * (i / 40);
    v40 = v25;
    goto LABEL_49;
  }

  return 1;
}

char *sub_266AB36DC(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_266AB3708(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B22E0, &unk_266AC3570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_266AB3808(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B48, &qword_266AC6358);
  v38 = a2;
  v7 = sub_266ABDFB4();
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return;
  }

  v36 = v3;
  v37 = v5;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  OUTLINED_FUNCTION_14_6();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v7 + 64;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v16)
      {
        break;
      }

      v20 = v10[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_11;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_266AB3D70(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v8 << 6);
    v22 = *(*(v5 + 48) + 8 * v21);
    v23 = *(*(v5 + 56) + 8 * v21);
    if ((v38 & 1) == 0)
    {
    }

    v24 = *(v7 + 40);
    sub_266ABE244();
    if ((v22 & 0xFF000000000000) != 0x9000000000000)
    {
      sub_266ABE264();
      sub_266ABE264();
      MEMORY[0x26D5E8B00](BYTE1(v22));
      v5 = v37;
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](BYTE6(v22));
    }

    sub_266ABE264();
    v25 = sub_266ABE2A4();
    v26 = -1 << *(v7 + 32);
    v27 = v25 & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    v30 = v23;
LABEL_24:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    *(*(v7 + 48) + 8 * v29) = v22;
    *(*(v7 + 56) + 8 * v29) = v30;
    ++*(v7 + 16);
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  v31 = 0;
  v32 = (63 - v26) >> 6;
  v30 = v23;
  while (++v28 != v32 || (v31 & 1) == 0)
  {
    v33 = v28 == v32;
    if (v28 == v32)
    {
      v28 = 0;
    }

    v31 |= v33;
    v34 = *(v17 + 8 * v28);
    if (v34 != -1)
    {
      v29 = __clz(__rbit64(~v34)) + (v28 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

double sub_266AB3B10@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_266AB0B30();
  if (v6)
  {
    v7 = v5;
    v8 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v9 = *(*v2 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B50, &qword_266AC6368);
    sub_266ABDF34();
    v10 = *(*(v12 + 48) + 16 * v7 + 8);

    sub_266A6DBC4((*(v12 + 56) + 40 * v7), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    sub_266ABDF44();
    *v2 = v12;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_266AB3C0C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_266AB3F20(v9, v4, v2);
      MEMORY[0x26D5E9280](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_266AB3D70(0, v4, v5);
  v6 = sub_266AB3DD4(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_266AB3D70(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266AC5F30;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_266AB3DD4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(a3 + 56);
    v21 = *(*(a3 + 48) + 8 * v14);
    v16 = *(v15 + 8 * v14);

    v17 = sub_266A7F060(&v21, v16);

    if (v17)
    {
      *(v20 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_266AB3F98(v20, a2, v4, a3);
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
      return sub_266AB3F98(v20, a2, v4, a3);
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

void *sub_266AB3F20(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_266AB3DD4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_266AB3F98(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B48, &qword_266AC6358);
  result = sub_266ABDFC4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    v30 = *(v17 + 8 * v16);
    v19 = *(v9 + 40);
    sub_266ABE244();
    if ((v18 & 0xFF000000000000) != 0x9000000000000)
    {
      sub_266ABE264();
      sub_266ABE264();
      MEMORY[0x26D5E8B00](BYTE1(v18));
      sub_266ABE264();
      sub_266ABE264();
      sub_266ABE274();
      MEMORY[0x26D5E8B00](BYTE6(v18));
    }

    sub_266ABE264();
    result = sub_266ABE2A4();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_32;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v18;
    result = v30;
    *(*(v9 + 56) + 8 * v23) = v30;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_33;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_266AB4240(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_266AB0C10(a2);
  OUTLINED_FUNCTION_23_0();
  if (__OFADD__(v9, v10))
  {
    __break(1u);
LABEL_14:
    result = sub_266ABE1F4();
    __break(1u);
    return result;
  }

  v11 = v7;
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
  if (sub_266ABDF34())
  {
    v13 = *v3;
    sub_266AB0C10(a2);
    OUTLINED_FUNCTION_46();
    if (!v15)
    {
      goto LABEL_14;
    }

    v11 = v14;
  }

  if (v12)
  {
    v16 = *(*v3 + 56);
    v17 = type metadata accessor for ParticipantModel();
    OUTLINED_FUNCTION_21(v17);
    v19 = v16 + *(v18 + 72) * v11;

    return sub_266A81518(a1, v19);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_79();

    return sub_266AB44F8(v21, v22, a1, v23);
  }
}

uint64_t sub_266AB4368(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_266AB0B30();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B50, &qword_266AC6368);
  if ((sub_266ABDF34() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_266AB0B30();
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_266ABE1F4();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = (v16[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return sub_266A6DBC4(a1, v17);
  }

  else
  {
    sub_266AB45BC(v11, a2, a3, a1, v16);
  }
}

unint64_t sub_266AB44B4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_266AB44F8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ParticipantModel();
  OUTLINED_FUNCTION_21(v8);
  result = sub_266A7977C(a3, v7 + *(v9 + 72) * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_266AB45BC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_266A6DBC4(a4, a5[7] + 40 * a1);
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

uint64_t sub_266AB462C(uint64_t a1)
{
  result = sub_266A6F7D0(&qword_2800B2AC0, type metadata accessor for ParticipantModel);
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266AB46EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AB4728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_266AB4774(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_266AB4A28()
{
  sub_266AB4D9C(319, &qword_2800B2AE0, &qword_2800B1CD0, &unk_266AC12E0, MEMORY[0x277D83D88]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_266AB4D9C(319, &qword_2800B2AE8, &qword_2800B22E8, &unk_266AC5F40, MEMORY[0x277D83940]);
    if (v4 > 0x3F)
    {
      return v3;
    }

    v3 = sub_266AB4D40();
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_266AB4E58(319, &qword_2800B2AF8, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_266AB4D9C(319, &qword_2800B2B00, &qword_2800B1E00, &qword_266AC13A0, MEMORY[0x277D83940]);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_266AB4E58(319, &qword_2800B2B08, MEMORY[0x277D84B78], MEMORY[0x277D83D88]);
    if (v9 > 0x3F)
    {
      return v3;
    }

    v3 = sub_266ABD7A4();
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_266AB4D9C(319, &qword_2800B2B10, &qword_2800B1CD0, &unk_266AC12E0, MEMORY[0x277D83940]);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_266AB4E58(319, &qword_2800B2B18, &type metadata for TrumpReason, MEMORY[0x277D83940]);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_266AB4E00();
    if (v13 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_266AB4E58(319, &qword_2800B2B28, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      v1 = v14;
      if (v15 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

unint64_t sub_266AB4D40()
{
  result = qword_2800B2AF0;
  if (!qword_2800B2AF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2800B2AF0);
  }

  return result;
}

void sub_266AB4D9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_266AB4E00()
{
  if (!qword_2800B2B20)
  {
    sub_266ABD7A4();
    v0 = sub_266ABDDF4();
    if (!v1)
    {
      atomic_store(v0, &qword_2800B2B20);
    }
  }
}

void sub_266AB4E58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_266AB4EBC()
{
  result = qword_2800B2B30;
  if (!qword_2800B2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B30);
  }

  return result;
}

unint64_t sub_266AB4F14()
{
  result = qword_2800B2B38;
  if (!qword_2800B2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B38);
  }

  return result;
}

unint64_t sub_266AB4F6C()
{
  result = qword_2800B2B40;
  if (!qword_2800B2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B40);
  }

  return result;
}

uint64_t sub_266AB4FC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xFF000000000000) != 0x9000000000000)
  {
    sub_266ABE264();
    sub_266ABE264();
    MEMORY[0x26D5E8B00](BYTE1(a2));
    sub_266ABE264();
    sub_266ABE264();
    sub_266ABE274();
    MEMORY[0x26D5E8B00](BYTE6(a2));
  }

  return sub_266ABE264();
}

uint64_t sub_266AB50A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_32(a1, a2, a3, a4);
  OUTLINED_FUNCTION_16(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_9_2();
  v9(v8);
  return v4;
}

BOOL OUTLINED_FUNCTION_24_5@<W0>(uint64_t a1@<X8>, uint8x8_t a2@<D0>, uint8x8_t a3@<D1>)
{
  *(v3 + 864) = a1;

  return static AdvertisementModel.== infix(_:_:)(v3 + 1200, v3 + 864, a2, a3);
}

void OUTLINED_FUNCTION_29_5()
{
  v2 = *(v0 - 136);
  v3 = *(v0 - 128);

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_52(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_53@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void *OUTLINED_FUNCTION_57(void *a1)
{

  return memcpy(a1, (v1 + 1200), 0xA8uLL);
}

uint64_t OUTLINED_FUNCTION_58()
{

  return sub_266ABE264();
}

uint64_t OUTLINED_FUNCTION_59()
{

  return type metadata accessor for ParticipantModel();
}

uint64_t OUTLINED_FUNCTION_61()
{

  return sub_266ABDB04();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_266ABE264();
}

uint64_t OUTLINED_FUNCTION_63@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1 + 8);
}

uint64_t OUTLINED_FUNCTION_64()
{
  v1 = *(v0 - 104);
  __swift_project_boxed_opaque_existential_1((v0 - 136), *(v0 - 112));
  v2 = *(v1 + 8);

  return sub_266ABE1A4();
}

uint64_t OUTLINED_FUNCTION_71()
{
  result = 0;
  *(v0 - 120) = 0;
  *(v0 - 112) = 0;
  *(v0 - 128) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_72@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = *(a1 + 8);
  return result;
}

void OUTLINED_FUNCTION_76(uint64_t a1@<X8>)
{
  v4 = v2 + a1;
  *v4 = v3;
  *(v4 + 8) = v1 & 1;
}

uint64_t OUTLINED_FUNCTION_81(uint64_t *a1)
{
  v2 = *a1;

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_83()
{

  JUMPOUT(0x26D5E83C0);
}

void OUTLINED_FUNCTION_84()
{

  JUMPOUT(0x26D5E83C0);
}

uint64_t OUTLINED_FUNCTION_85(unsigned __int8 *a1)
{
  v2 = *a1;

  return type metadata accessor for ParticipantModel();
}

SiriCrossDeviceArbitrationFeedback::Version_optional __swiftcall Version.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266ABDFD4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t Version.rawValue.getter()
{
  if (*v0)
  {
    return 3157554;
  }

  else
  {
    return 3157553;
  }
}

unint64_t sub_266AB54F4()
{
  result = qword_2800B2B58;
  if (!qword_2800B2B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B58);
  }

  return result;
}

uint64_t sub_266AB556C@<X0>(uint64_t *a1@<X8>)
{
  result = Version.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

_BYTE *storeEnumTagSinglePayload for Version(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AB5760()
{
  result = qword_2800B2B60;
  if (!qword_2800B2B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B60);
  }

  return result;
}

uint64_t sub_266AB583C()
{
  OUTLINED_FUNCTION_32_2();
  sub_266ABDB04();
  return sub_266ABE2A4();
}

uint64_t sub_266AB5884()
{
  OUTLINED_FUNCTION_32_2();
  sub_266A79E4C();
  return sub_266ABE2A4();
}

uint64_t sub_266AB58D0(uint64_t a1)
{
  OUTLINED_FUNCTION_32_2();
  MEMORY[0x26D5E8B00](a1);
  return sub_266ABE2A4();
}

uint64_t sub_266AB5928(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_32_2();
  a2(a1);
  OUTLINED_FUNCTION_4_11();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5990()
{
  sub_266ABE244();
  sub_266A79E4C();
  return sub_266ABE2A4();
}

uint64_t sub_266AB59EC()
{
  sub_266ABE244();
  sub_266ABDB04();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5A80(uint64_t a1, uint64_t a2)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a2);
  return sub_266ABE2A4();
}

uint64_t sub_266AB5B2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_266ABE244();
  a3(a2);
  OUTLINED_FUNCTION_4_11();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5B80()
{
  sub_266ABE244();
  sub_266ABDB04();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5C2C()
{
  sub_266ABE244();
  sub_266ABDB04();
  return sub_266ABE2A4();
}

uint64_t sub_266AB5C78()
{
  sub_266ABE244();
  sub_266ABDB04();

  return sub_266ABE2A4();
}

uint64_t sub_266AB5CD4(uint64_t a1, unsigned __int8 a2)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a2);
  return sub_266ABE2A4();
}

void sub_266AB5D18(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v67[3] = a1;
  v3 = *(a1 + 16);
  v4 = a1 + 32;

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = v4;
  while (v3 != v5)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    sub_266A6FFD8(v7, &v63);
    v8 = v64;
    v9 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, v64);
    (*(v9 + 72))(&v60, v8, v9);
    if (v60 == 3)
    {
      sub_266A6DBC4(&v63, &v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = *(v6 + 16);
        sub_266A98BE8();
        v6 = v66;
      }

      v12 = *(v6 + 16);
      if (v12 >= *(v6 + 24) >> 1)
      {
        sub_266A98BE8();
      }

      v13 = v61;
      v14 = v62;
      __swift_mutable_project_boxed_opaque_existential_1(&v60, v61);
      OUTLINED_FUNCTION_2_1();
      v16 = *(v15 + 64);
      MEMORY[0x28223BE20](v17);
      v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_266A9E8BC(v12, v19, &v66, v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(&v60);
      v6 = v66;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    }

    v7 += 40;
    ++v5;
  }

  if (*(v6 + 16) != 1)
  {

    if (qword_280BB6C30 == -1)
    {
LABEL_30:
      v40 = sub_266ABD8D4();
      __swift_project_value_buffer(v40, qword_280BB7028);
      v41 = sub_266ABD8C4();
      v42 = sub_266ABDD64();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        OUTLINED_FUNCTION_7_11(&dword_266A65000, v44, v45, "There should be exactly one winner in an arbitraiton. Returning nil arbitration.");
        MEMORY[0x26D5E9280](v43, -1, -1);
      }

LABEL_38:
      v52 = v59;
      *(v59 + 64) = 0;
      v52[2] = 0u;
      v52[3] = 0u;
      *v52 = 0u;
      v52[1] = 0u;
      return;
    }

LABEL_48:
    OUTLINED_FUNCTION_10();
    goto LABEL_30;
  }

  sub_266A79954(v6, &v63);
  if (v64)
  {

    sub_266A6DBC4(&v63, v68);
    v21 = v68[4];
    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    v22 = *(v21 + 16);
    v23 = OUTLINED_FUNCTION_16_0();
    v24(v23);
    if (!v61)
    {

      sub_266AB7210(&v60);
      if (qword_280BB6C30 != -1)
      {
        OUTLINED_FUNCTION_10();
      }

      v46 = sub_266ABD8D4();
      __swift_project_value_buffer(v46, qword_280BB7028);
      v47 = sub_266ABD8C4();
      v48 = sub_266ABDD64();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        OUTLINED_FUNCTION_7_11(&dword_266A65000, v50, v51, "There should always be one winning advertisement. Returning nil arbitration.");
        MEMORY[0x26D5E9280](v49, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      goto LABEL_38;
    }

    sub_266A6DBC4(&v60, &v63);
    v25 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, v64);
    v26 = *(v25 + 16);
    v27 = OUTLINED_FUNCTION_16_0();
    v67[0] = v28(v27);
    v67[1] = v29;
    if (v3)
    {
      v30 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_266A6FFD8(v4, &v60);
        v31 = v61;
        v32 = v62;
        __swift_project_boxed_opaque_existential_1(&v60, v61);
        v33 = (*(v32 + 48))(v31, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(&v60);
        v34 = *(v33 + 16);
        v35 = *(v30 + 16);
        if (__OFADD__(v35, v34))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v35 + v34 > *(v30 + 24) >> 1)
        {
          sub_266A98098();
          v30 = v36;
        }

        if (*(v33 + 16))
        {
          if ((*(v30 + 24) >> 1) - *(v30 + 16) < v34)
          {
            goto LABEL_46;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
          swift_arrayInitWithCopy();

          if (v34)
          {
            v37 = *(v30 + 16);
            v38 = __OFADD__(v37, v34);
            v39 = v37 + v34;
            if (v38)
            {
              goto LABEL_47;
            }

            *(v30 + 16) = v39;
          }
        }

        else
        {

          if (v34)
          {
            goto LABEL_45;
          }
        }

        v4 += 40;
        if (!--v3)
        {
          goto LABEL_39;
        }
      }

LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_39:

    sub_266A70C04();
    v54 = v53;

    if (v54)
    {
      v55 = sub_266A96DE4(v54);
      v56 = sub_266A96EBC(v55);
      v57 = sub_266A6DA98(v56);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    v58 = v59;
    v67[2] = v57;
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    sub_266A841B0(v67, v58);
    sub_266A8420C(v67);
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArbitrationModel.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ArbitrationModel.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ArbitrationModel.nearbyDevices.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t ArbitrationModel.participants.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t ArbitrationModel.winner.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));

  return sub_266A6DBC4(a1, v1 + 32);
}

uint64_t sub_266AB648C()
{
  v0 = sub_266ABDFD4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266AB64E0(char a1)
{
  if (a1)
  {
    return 0x654479627261656ELL;
  }

  else
  {
    return 0x7069636974726170;
  }
}

uint64_t sub_266AB6560@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_266AB648C();
  *a2 = result;
  return result;
}

uint64_t sub_266AB6590@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266AB64E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266AB65C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266AB648C();
  *a1 = result;
  return result;
}

uint64_t sub_266AB65F8(uint64_t a1)
{
  v2 = sub_266AB6DBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266AB6634(uint64_t a1)
{
  v2 = sub_266AB6DBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void ArbitrationModel.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B68, &qword_266AC6490);
  OUTLINED_FUNCTION_2_1();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = v73 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266AB6DBC();
  sub_266ABE2B4();
  if (v2)
  {
    v14 = 0;
    v15 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (v14)
    {
    }

    if (v15)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v87);
    }

    return;
  }

  v79 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B78, &qword_266AC6498);
  LOBYTE(v80) = 0;
  sub_266AB7278(&qword_2800B2B80, &qword_2800B1C88);
  sub_266ABE084();
  v75 = v12;
  v76 = v7;
  v77 = v5;
  v73[1] = 0;
  v78 = a1;
  sub_266A94558();
  v17 = v16;

  v86[3] = v17;
  v18 = *(v17 + 16);
  v19 = v17 + 32;

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v74 = v17 + 32;
  while (v18 != v20)
  {
    if (v20 >= *(v17 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    sub_266A6FFD8(v19, &v83);
    v22 = v85;
    __swift_project_boxed_opaque_existential_1(&v83, v84);
    v23 = *(v22 + 72);
    v24 = OUTLINED_FUNCTION_16_0();
    v25(v24);
    if (v80 == 3)
    {
      sub_266A6DBC4(&v83, &v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = *(v21 + 16);
        sub_266A98BE8();
        v21 = v88;
      }

      v28 = *(v21 + 16);
      if (v28 >= *(v21 + 24) >> 1)
      {
        sub_266A98BE8();
      }

      v29 = v81;
      v30 = v82;
      __swift_mutable_project_boxed_opaque_existential_1(&v80, v81);
      OUTLINED_FUNCTION_2_1();
      v32 = *(v31 + 64);
      MEMORY[0x28223BE20](v33);
      v35 = v73 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v35);
      sub_266A9E8BC(v28, v35, &v88, v29, v30);
      __swift_destroy_boxed_opaque_existential_1Tm(&v80);
      v21 = v88;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v83);
    }

    v19 += 40;
    ++v20;
  }

  if (*(v21 + 16) != 1)
  {

    sub_266AB71BC();
    swift_allocError();
    *v60 = 0xD000000000000050;
    v60[1] = 0x8000000266AC0840;
    swift_willThrow();
    v61 = OUTLINED_FUNCTION_3_10();
    v62(v61);
    v15 = 0;
    v14 = 1;
LABEL_38:
    a1 = v78;
    goto LABEL_4;
  }

  sub_266A79954(v21, &v83);
  if (!v84)
  {
LABEL_48:
    __break(1u);
    return;
  }

  sub_266A6DBC4(&v83, v87);
  v37 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v38 = *(v37 + 16);
  v39 = OUTLINED_FUNCTION_16_0();
  v40(v39);
  v41 = v74;
  if (!v81)
  {
    sub_266AB7210(&v80);
    sub_266AB71BC();
    swift_allocError();
    *v63 = 0xD00000000000004CLL;
    v63[1] = 0x8000000266AC08A0;
    swift_willThrow();
    v64 = OUTLINED_FUNCTION_3_10();
    v65(v64);
    v14 = 1;
    v15 = 1;
    goto LABEL_38;
  }

  sub_266A6DBC4(&v80, &v83);
  v42 = v85;
  __swift_project_boxed_opaque_existential_1(&v83, v84);
  v43 = *(v42 + 16);
  v44 = OUTLINED_FUNCTION_16_0();
  v86[0] = v45(v44);
  v86[1] = v46;
  v47 = *(v17 + 16);
  if (v47)
  {
    v48 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_266A6FFD8(v41, &v80);
      v49 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      v50 = *(v49 + 48);
      v51 = OUTLINED_FUNCTION_16_0();
      v53 = v52(v51);
      __swift_destroy_boxed_opaque_existential_1Tm(&v80);
      v54 = *(v53 + 16);
      v55 = *(v48 + 16);
      if (__OFADD__(v55, v54))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v55 + v54 > *(v48 + 24) >> 1)
      {
        sub_266A98098();
        v48 = v56;
      }

      if (*(v53 + 16))
      {
        if ((*(v48 + 24) >> 1) - *(v48 + 16) < v54)
        {
          goto LABEL_46;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
        swift_arrayInitWithCopy();

        if (v54)
        {
          v57 = *(v48 + 16);
          v58 = __OFADD__(v57, v54);
          v59 = v57 + v54;
          if (v58)
          {
            goto LABEL_47;
          }

          *(v48 + 16) = v59;
        }
      }

      else
      {

        if (v54)
        {
          goto LABEL_45;
        }
      }

      v41 += 40;
      if (!--v47)
      {
        goto LABEL_39;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_39:
  sub_266A70C04();
  v67 = v66;

  if (v67)
  {
    v68 = sub_266A96DE4(v67);
    v69 = sub_266A96EBC(v68);
    v70 = sub_266A6DA98(v69);
  }

  else
  {
    v70 = MEMORY[0x277D84F90];
  }

  v71 = v78;
  v72 = v79;
  (*(v76 + 8))(v75, v77);
  v86[2] = v70;
  __swift_destroy_boxed_opaque_existential_1Tm(&v83);
  sub_266A841B0(v86, v72);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  sub_266A8420C(v86);
}

unint64_t sub_266AB6DBC()
{
  result = qword_2800B2B70;
  if (!qword_2800B2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B70);
  }

  return result;
}

uint64_t ArbitrationModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B90, &qword_266AC64A0);
  OUTLINED_FUNCTION_2_1();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = &v16[-v9];
  v11 = *(v1 + 24);
  sub_266A95358();
  if (v12)
  {
    v13 = v12;
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_266AB6DBC();
    sub_266ABE2C4();
    v17 = v13;
    v16[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2B78, &qword_266AC6498);
    sub_266AB7278(&qword_2800B2B98, &qword_2800B2158);
    sub_266ABE154();
    (*(v5 + 8))(v10, v3);
  }

  else
  {
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t static ArbitrationModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  sub_266A95358();
  v5 = v4;
  v6 = *(a2 + 24);
  sub_266A95358();
  if (v5)
  {
    if (v7)
    {
      v8 = sub_266A83AC4(v5, v7);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v8 = 1;
      return v8 & 1;
    }

    v8 = 0;
  }

  return v8 & 1;
}

void ArbitrationModel.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  sub_266A95358();
  if (v4)
  {
    sub_266A9CB98(a1, v4);
  }
}

uint64_t ArbitrationModel.hashValue.getter()
{
  OUTLINED_FUNCTION_32_2();
  v1 = *(v0 + 24);
  sub_266A95358();
  if (v2)
  {
    sub_266A9CB98(v4, v2);
  }

  return sub_266ABE2A4();
}

uint64_t sub_266AB7164()
{
  sub_266ABE244();
  v1 = *(v0 + 24);
  sub_266A95358();
  if (v2)
  {
    sub_266A9CB98(v4, v2);
  }

  return sub_266ABE2A4();
}

unint64_t sub_266AB71BC()
{
  result = qword_2800B2B88;
  if (!qword_2800B2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2B88);
  }

  return result;
}

uint64_t sub_266AB7210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC8, &unk_266AC0FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266AB7278(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B2B78, &qword_266AC6498);
    sub_266A8DC7C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266AB7304()
{
  result = qword_2800B2BA0;
  if (!qword_2800B2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2BA0);
  }

  return result;
}

uint64_t sub_266AB73B0(uint64_t a1, int a2)
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

uint64_t sub_266AB73F0(uint64_t result, int a2, int a3)
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

uint64_t sub_266AB744C(uint64_t a1, int a2)
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

uint64_t sub_266AB748C(uint64_t result, int a2, int a3)
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

_BYTE *sub_266AB74D4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266AB75B0()
{
  result = qword_2800B2BA8;
  if (!qword_2800B2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2BA8);
  }

  return result;
}

unint64_t sub_266AB7608()
{
  result = qword_2800B2BB0;
  if (!qword_2800B2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2BB0);
  }

  return result;
}

unint64_t sub_266AB7660()
{
  result = qword_2800B2BB8;
  if (!qword_2800B2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800B2BB8);
  }

  return result;
}

uint64_t static Mock.devices(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v12 = MEMORY[0x277D84F90];
      v3 = OUTLINED_FUNCTION_3();
      sub_266A6BD88(v3, v4, v5);
      v2 = v12;
      do
      {
        static Mock.device()();
        v12 = v2;
        v7 = *(v2 + 16);
        v6 = *(v2 + 24);
        if (v7 >= v6 >> 1)
        {
          OUTLINED_FUNCTION_14(v6);
          OUTLINED_FUNCTION_33();
          sub_266A6BD88(v8, v9, v10);
          v2 = v12;
        }

        *(v2 + 16) = v7 + 1;
        memcpy((v2 + 168 * v7 + 32), v11, 0xA8uLL);
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

void static Mock.device()()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v60 - v4;
  v72 = sub_266ABD864();
  v6 = OUTLINED_FUNCTION_1_0(v72);
  v62 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  v61 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v69 = &v60 - v13;
  v14 = sub_266ABD8B4();
  v15 = OUTLINED_FUNCTION_1_0(v14);
  v70 = v16;
  v71 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2();
  v73 = v20 - v19;
  v68 = sub_266ABD7F4();
  v21 = OUTLINED_FUNCTION_1_0(v68);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v28 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2BC0, &qword_266AC6818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266AC67C0;
  *(inited + 32) = &unk_28783F130;
  *(inited + 40) = &unk_28783F160;
  *(inited + 48) = &unk_28783F190;
  *(inited + 56) = &unk_28783F1C0;
  *(inited + 64) = &unk_28783F1F0;
  *(inited + 72) = &unk_28783F220;
  *(inited + 80) = &unk_28783F250;
  *(inited + 88) = &unk_28783F280;
  *(inited + 96) = &unk_28783F2B0;
  *(inited + 104) = &unk_28783F2E0;
  *(inited + 112) = &unk_28783F310;
  *(inited + 120) = &unk_28783F340;
  *(inited + 128) = &unk_28783F370;
  *(inited + 136) = &unk_28783F3B0;
  *(inited + 144) = &unk_28783F3F0;
  *(inited + 152) = &unk_28783F430;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2338, &unk_266AC35C0);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_266AC67D0;
  *(v30 + 32) = 0x45433542423923;
  *(v30 + 40) = 0xE700000000000000;
  *(v30 + 48) = 0x37354235433523;
  *(v30 + 56) = 0xE700000000000000;
  *(v30 + 64) = 0x39433545394623;
  *(v30 + 72) = 0xE700000000000000;
  *(v30 + 80) = 0x30463546354623;
  *(v30 + 88) = 0xE700000000000000;
  *(v30 + 96) = 0x45344635303523;
  *(v30 + 104) = 0xE700000000000000;
  *(v30 + 112) = 0x43374535313223;
  *(v30 + 120) = 0xE700000000000000;
  *(v30 + 128) = 0x37324531373123;
  *(v30 + 136) = 0xE700000000000000;
  *(v30 + 144) = 0x38443045414623;
  *(v30 + 152) = 0xE700000000000000;
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_266AC67E0;
  *(v31 + 32) = 1835100492;
  *(v31 + 40) = 0xE400000000000000;
  *(v31 + 48) = 0x5220676E6976694CLL;
  *(v31 + 56) = 0xEB000000006D6F6FLL;
  *(v31 + 64) = 0x6E65686374694BLL;
  *(v31 + 72) = 0xE700000000000000;
  *(v31 + 80) = 6383949;
  *(v31 + 88) = 0xE300000000000000;
  *(v31 + 96) = 6387265;
  *(v31 + 104) = 0xE300000000000000;
  *(v31 + 112) = 0x79726E6548;
  *(v31 + 120) = 0xE500000000000000;
  *(v31 + 128) = 0x68616A696C45;
  *(v31 + 136) = 0xE600000000000000;
  *(v31 + 144) = 0x79656C6952;
  *(v31 + 152) = 0xE500000000000000;
  *(v31 + 160) = 0x617373656E6156;
  *(v31 + 168) = 0xE700000000000000;
  *(v31 + 176) = 0x797472614DLL;
  *(v31 + 184) = 0xE500000000000000;
  v32 = sub_266AB99D0(v31, inited);
  if (v32)
  {
    v33 = v32;
    v63 = sub_266AB9964(v32, v30);
    if (v34)
    {
      v35 = v34;
      swift_setDeallocating();
      sub_266AB98C0();
      swift_setDeallocating();
      v36 = sub_266AB9920();
      v37 = sub_266AB9964(v36, v31);
      v66 = v38;
      v67 = v37;
      swift_setDeallocating();
      sub_266AB9920();
      sub_266ABD7E4();
      v39 = sub_266ABD7C4();
      v64 = v40;
      v65 = v39;
      (*(v23 + 8))(v28, v68);
      if (v33[2])
      {
        v41 = v33[4];
        v42 = v33[5];

        v43._countAndFlagsBits = v41;
        v43._object = v42;
        DeviceClass.init(model:)(v43);
        v74 = 0;
        v44 = DeviceClass.displayName(productType:)(&v74);
        countAndFlagsBits = v44._countAndFlagsBits;
        object = v44._object;
      }

      else
      {
        object = 0xEB00000000657365;
        countAndFlagsBits = 0x6874666F656E6F6ELL;
      }

      v48 = v72;
      v47 = v73;
      v49 = v69;
      sub_266ABD884();
      sub_266ABD8A4();
      if (__swift_getEnumTagSinglePayload(v5, 1, v48) == 1)
      {
        (*(v70 + 8))(v47, v71);
        sub_266A798F4(v5, &qword_2800B1D88, &qword_266AC20D0);
      }

      else
      {
        v50 = v62;
        (*(v62 + 32))(v49, v5, v48);
        v51 = v61;
        (*(v50 + 16))(v61, v49, v48);
        if ((*(v50 + 88))(v51, v48) == *MEMORY[0x277D85508])
        {
          (*(v50 + 96))(v51, v48);
          v52 = sub_266AA6004(*v51, v51[1], v51[2]);
          v53 = v50;
          v55 = v54;
          (*(v53 + 8))(v49, v48);
          (*(v70 + 8))(v73, v71);

          v35 = v55;
LABEL_12:
          *v1 = 0u;
          *(v1 + 16) = 0u;
          *(v1 + 32) = v52;
          *(v1 + 40) = v35;
          *(v1 + 48) = 0;
          *(v1 + 56) = 0;
          v57 = v66;
          *(v1 + 64) = v67;
          *(v1 + 72) = v57;
          *(v1 + 80) = countAndFlagsBits;
          *(v1 + 88) = object;
          *(v1 + 96) = v33;
          *(v1 + 104) = 0;
          v58 = v64;
          v59 = v65;
          *(v1 + 112) = 0;
          *(v1 + 120) = v59;
          *(v1 + 128) = v58;
          *(v1 + 136) = 0u;
          *(v1 + 152) = 0u;
          OUTLINED_FUNCTION_30();
          return;
        }

        v56 = *(v50 + 8);
        v56(v49, v48);
        (*(v70 + 8))(v73, v71);
        v56(v51, v48);
      }

      v52 = v63;
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t static Mock.boosts(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x277D84F90];
    if (result)
    {
      v21 = MEMORY[0x277D84F90];
      v5 = OUTLINED_FUNCTION_3();
      sub_266A70BE4(v5, v6, v7);
      v4 = v21;
      do
      {
        v20 = 0;
        MEMORY[0x26D5E92A0](&v20, 8);
        v8 = &unk_28783F470 + 24 * (v20 >> 62);
        v9 = *(v8 + 2);
        v10 = *(v8 + 6);
        OUTLINED_FUNCTION_15_6();
        if (v13)
        {
          OUTLINED_FUNCTION_14(v11);
          OUTLINED_FUNCTION_33();
          v19 = v15;
          sub_266A70BE4(v16, v17, v18);
          v12 = v19;
          v4 = v21;
        }

        *(v4 + 16) = v1;
        v14 = v4 + 24 * v2;
        *(v14 + 32) = v12;
        *(v14 + 48) = v10;
        --v3;
      }

      while (v3);
    }

    return v4;
  }

  return result;
}

unint64_t static Mock.boost()@<X0>(uint64_t a1@<X8>)
{
  result = sub_266AB9A2C(4uLL);
  if (result > 3)
  {
    __break(1u);
  }

  else
  {
    v3 = &unk_28783F4F0 + 24 * result;
    v4 = *(v3 + 6);
    *a1 = *(v3 + 2);
    *(a1 + 16) = v4;
  }

  return result;
}

uint64_t static Mock.advertisements(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = MEMORY[0x277D84F90];
    if (result)
    {
      v23 = MEMORY[0x277D84F90];
      v6 = OUTLINED_FUNCTION_3();
      sub_266A6AFB0(v6, v7, v8);
      v5 = v23;
      do
      {
        static Mock.advertisement(goodnessScore:)(256, &v19);
        v3.i32[0] = v19;
        v9 = v20;
        v10 = v21;
        v11 = v22;
        OUTLINED_FUNCTION_15_6();
        if (v13)
        {
          OUTLINED_FUNCTION_14(v12);
          OUTLINED_FUNCTION_33();
          sub_266A6AFB0(v16, v17, v18);
          v5 = v23;
        }

        v14 = vmovl_u8(v3).u64[0];
        *(v5 + 16) = v1;
        v15 = v5 + 8 * v2;
        *(v15 + 32) = vuzp1_s8(v14, v14).u32[0];
        *(v15 + 36) = v9;
        *(v15 + 38) = v10;
        *(v15 + 39) = v11;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  return result;
}

void static Mock.advertisement(goodnessScore:)(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_5_8();
  v4 = sub_266AB9A2C(0xBuLL);
  if (v4 > 0xA)
  {
    __break(1u);
  }

  else
  {
    v5 = byte_28783E5D8[v4 + 32];
    if ((a1 & 0x100) != 0)
    {
      OUTLINED_FUNCTION_5_8();
      LOBYTE(a1) = v6;
    }

    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_5_8();
    *a2 = v6;
    *(a2 + 1) = v5;
    *(a2 + 2) = 0;
    *(a2 + 3) = a1;
    *(a2 + 4) = v6;
    *(a2 + 6) = 0;
    *(a2 + 7) = v6;
  }
}

void static Mock.participants(count:)(uint64_t a1)
{
  v3 = type metadata accessor for ParticipantModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    v8 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_3();
    sub_266A98B68();
    do
    {
      static Mock.participant(participation:triggerType:)();
      v7 = *(v8 + 16);
      v6 = *(v8 + 24);
      if (v7 >= v6 >> 1)
      {
        OUTLINED_FUNCTION_14(v6);
        sub_266A98B68();
      }

      *(v8 + 16) = v7 + 1;
      sub_266A7977C(v1, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v7);
      --a1;
    }

    while (a1);
  }
}

void static Mock.participant(participation:triggerType:)()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v113 = sub_266ABD7F4();
  v6 = OUTLINED_FUNCTION_1_0(v113);
  v108 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  v110 = v10 - v11;
  v13 = MEMORY[0x28223BE20](v12);
  v112 = &v100 - v14;
  MEMORY[0x28223BE20](v13);
  v109 = &v100 - v15;
  v16 = sub_266ABD7A4();
  v17 = OUTLINED_FUNCTION_1_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v100 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = *v3;
  v31 = *v1;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v33 = &v100 - v32;
  __swift_storeEnumTagSinglePayload(&v100 - v32, 1, 1, v16);
  v34 = sub_266ABD794();
  sub_266AB9AB8(v34, 0.0, 2.0);
  v114 = v27;
  sub_266ABD734();
  v35 = *(v19 + 8);
  v116 = v16;
  v107 = v35;
  v35(v24, v16);
  v111 = v30;
  HIDWORD(v115) = v31;
  switch(v30)
  {
    case 2:
      *(&v121 + 1) = &type metadata for AdvertisementModel;
      v39 = sub_266A6D9F0();
      v122 = v39;
      static Mock.advertisement(goodnessScore:)(256, &v120);
      sub_266A791A4(&v120, &v123, &qword_2800B1CC8, &unk_266AC0FD0);
      *(&v121 + 1) = &type metadata for AdvertisementModel;
      v122 = v39;
      static Mock.advertisement(goodnessScore:)(256, &v120);
      sub_266A798F4(&v126, &qword_2800B1CC8, &unk_266AC0FD0);
      v126 = v120;
      v127 = v121;
      v128 = v122;
      v40 = static Mock.advertisements(count:)(5);
      v37 = sub_266A6E3AC(v40);

      sub_266A6F918(&v123, &v120, &qword_2800B1CC8, &unk_266AC0FD0);
      if (!*(&v121 + 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      v36 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = *(v37 + 16);
        sub_266A986CC();
        v37 = v96;
      }

      v41 = HIDWORD(v115);
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_14(v42);
        sub_266A986CC();
        v37 = v97;
      }

      OUTLINED_FUNCTION_8_10();
      sub_266A6F918(&v126, &v120, &qword_2800B1CC8, &unk_266AC0FD0);
      if (!*(&v121 + 1))
      {
        goto LABEL_26;
      }

      v45 = *(v37 + 24);
      v46 = v43 + 2;
      if (v46 > (v45 >> 1))
      {
        OUTLINED_FUNCTION_14(v45);
        OUTLINED_FUNCTION_33();
        sub_266A986CC();
        v37 = v99;
      }

      *(v37 + 16) = v46;
      sub_266A6DBC4(&v120, v37 + 40 * v44 + 32);
      if (v41 == 2)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 3:
      *(&v121 + 1) = &type metadata for AdvertisementModel;
      v122 = sub_266A6D9F0();
      static Mock.advertisement(goodnessScore:)(256, &v120);
      OUTLINED_FUNCTION_17_6(&v126);
      sub_266A791A4(&v120, &v123, &qword_2800B1CC8, &unk_266AC0FD0);
      sub_266A6F918(&v123, &v126, &qword_2800B1CC8, &unk_266AC0FD0);
      sub_266A6F918(&v123, &v120, &qword_2800B1CC8, &unk_266AC0FD0);
      if (*(&v121 + 1))
      {
        v36 = v33;
        sub_266A986CC();
        v37 = v47;
        v48 = *(v47 + 24);
        if (*(v47 + 16) >= v48 >> 1)
        {
          OUTLINED_FUNCTION_14(v48);
          sub_266A986CC();
          v37 = v98;
        }

        OUTLINED_FUNCTION_8_10();
        if (v31 == 2)
        {

          v49 = static Mock.advertisements(count:)(3);
          v37 = sub_266A6E3AC(v49);

LABEL_18:
          sub_266A798F4(v36, &qword_2800B1DB8, "h9");
          (*(v19 + 16))(v36, v114, v116);
          v38 = 0;
LABEL_19:
          __swift_storeEnumTagSinglePayload(v36, v38, 1, v116);
        }

LABEL_20:
        v105 = v37;
        sub_266A6F918(&v123, &v120, &qword_2800B1CC8, &unk_266AC0FD0);
        v50 = static Mock.boosts(count:)(4);
        sub_266A946BC(v50, v51, v52, v53, v54, v55, v56, v57, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
        v59 = v58;

        v118 = &type metadata for DeviceModel;
        v119 = sub_266A6DA44();
        OUTLINED_FUNCTION_14_7();
        *&v117 = swift_allocObject();
        static Mock.device()();
        v60 = static Mock.devices(count:)(10);
        v61 = sub_266A6DA98(v60);

        v62 = *(&v124 + 1);
        v106 = v19 + 8;
        v104 = v59;
        v103 = v61;
        if (*(&v124 + 1))
        {
          v63 = v125;
          v64 = __swift_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
          v65 = *(v62 - 8);
          v66 = *(v65 + 64);
          MEMORY[0x28223BE20](v64);
          OUTLINED_FUNCTION_2();
          v69 = v68 - v67;
          (*(v65 + 16))(v68 - v67);
          HIDWORD(v102) = (*(v63 + 48))(v62, v63);
          (*(v65 + 8))(v69, v62);
        }

        else
        {
          HIDWORD(v102) = 0;
        }

        LODWORD(v102) = v62 == 0;
        v101 = 0x8000000266AC08F0;
        v70 = type metadata accessor for ParticipantModel();
        v71 = v114;
        v72 = v116;
        (*(v19 + 16))(v5 + v70[11], v114, v116);
        sub_266A6F918(v36, v5 + v70[15], &qword_2800B1DB8, "h9");
        sub_266A6F918(&v126, v5 + v70[16], &qword_2800B1CC8, &unk_266AC0FD0);
        v73 = v109;
        sub_266ABD7E4();
        *(&v100 + 1) = sub_266ABD7C4();
        *&v100 = v74;
        v75 = *(v108 + 8);
        v76 = v36;
        v77 = v113;
        v75(v73, v113);
        v78 = v112;
        sub_266ABD7E4();
        v79 = sub_266ABD7C4();
        v108 = v80;
        v75(v78, v77);
        v81 = v110;
        sub_266ABD7E4();
        v112 = sub_266ABD7C4();
        v109 = v82;
        v75(v81, v77);
        v107(v71, v72);
        sub_266A798F4(v76, &qword_2800B1DB8, "h9");
        sub_266A798F4(&v126, &qword_2800B1CC8, &unk_266AC0FD0);
        v83 = v121;
        *v5 = v120;
        *(v5 + 16) = v83;
        v84 = v104;
        *(v5 + 32) = v122;
        *(v5 + 40) = v84;
        sub_266A6DBC4(&v117, v5 + 48);
        *(v5 + 88) = 0xD000000000000061;
        v85 = v103;
        *(v5 + 96) = v101;
        *(v5 + 104) = v85;
        *(v5 + 112) = v111;
        *(v5 + 113) = BYTE4(v102);
        *(v5 + 114) = v102;
        *(v5 + v70[12]) = v105;
        *(v5 + v70[13]) = MEMORY[0x277D84F90];
        *(v5 + v70[14]) = xmmword_266AC67F0;
        v86 = (v5 + v70[17]);
        v87 = v100;
        *v86 = *(&v100 + 1);
        v86[1] = v87;
        v88 = (v5 + v70[18]);
        v89 = v108;
        *v88 = v79;
        v88[1] = v89;
        *(v5 + v70[19]) = 0;
        *(v5 + v70[20]) = 0;
        *(v5 + v70[21]) = 0;
        *(v5 + v70[22]) = BYTE4(v115);
        v90 = (v5 + v70[23]);
        *v90 = 0;
        v90[1] = 0;
        v91 = v5 + v70[24];
        *v91 = 0;
        *(v91 + 8) = 1;
        v92 = v5 + v70[25];
        *v92 = 0;
        *(v92 + 8) = 1;
        v93 = (v5 + v70[26]);
        v94 = v109;
        *v93 = v112;
        v93[1] = v94;
        OUTLINED_FUNCTION_17_6(&v123);
        OUTLINED_FUNCTION_30();
      }

      else
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
      }

      return;
    default:
      OUTLINED_FUNCTION_17_6(&v126);
      OUTLINED_FUNCTION_17_6(&v123);
      v123 = 0u;
      v124 = 0u;
      v125 = 0;
      v126 = 0u;
      v127 = 0u;
      v128 = 0;
      v36 = v33;
      sub_266A798F4(v33, &qword_2800B1DB8, "h9");
      v37 = MEMORY[0x277D84F90];
      v38 = 1;
      goto LABEL_19;
  }
}

void static Mock.arbitrations(count:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = type metadata accessor for ParticipantModel();
  v4 = OUTLINED_FUNCTION_16(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!v2)
    {
LABEL_10:
      OUTLINED_FUNCTION_30();
      return;
    }

    v23 = MEMORY[0x277D84F90];
    v8 = OUTLINED_FUNCTION_3();
    sub_266A98B88(v8, v9, v10);
    v11 = v23;
    while (1)
    {
      v20[0] = v7;
      sub_266A98BE8();
      v12 = v20[0];
      v22[0] = byte_28783F590;
      v21 = byte_28783F591;
      static Mock.participant(participation:triggerType:)();
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_14(v13);
        sub_266A98BE8();
        v12 = v20[0];
      }

      *&v22[24] = v3;
      *&v22[32] = sub_266A81304();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
      sub_266A6E9E4(v0, boxed_opaque_existential_1);
      *(v12 + 16) = v14 + 1;
      sub_266A6DBC4(v22, v12 + 40 * v14 + 32);
      sub_266A6A63C(v0);

      sub_266AB5D18(v16, v20);
      if (!v20[1])
      {
        break;
      }

      memcpy(v22, v20, sizeof(v22));
      v23 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = OUTLINED_FUNCTION_14(v17);
        sub_266A98B88(v19, v18 + 1, 1);
        v11 = v23;
      }

      *(v11 + 16) = v18 + 1;
      memcpy((v11 + 72 * v18 + 32), v22, 0x48uLL);
      if (!--v2)
      {
        goto LABEL_10;
      }
    }
  }

  __break(1u);
}

void static Mock.arbitration(participants:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for ParticipantModel();
  v6 = OUTLINED_FUNCTION_16(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  v9 = *(v2 + 16);
  if (v9)
  {
    v19 = MEMORY[0x277D84F90];
    sub_266A98BE8();
    v10 = v19;
    v11 = (v2 + 33);
    do
    {
      v12 = *v11;
      v17[0] = *(v11 - 1);
      v18 = v12;
      static Mock.participant(participation:triggerType:)();
      v19 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_14(v13);
        sub_266A98BE8();
        v10 = v19;
      }

      v11 += 2;
      *&v17[24] = v5;
      *&v17[32] = sub_266A81304();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
      sub_266A6E9E4(v0, boxed_opaque_existential_1);
      *(v10 + 16) = v14 + 1;
      sub_266A6DBC4(v17, v10 + 40 * v14 + 32);
      sub_266A6A63C(v0);
      --v9;
    }

    while (v9);
  }

  sub_266AB5D18(v16, v17);
  if (*&v17[8])
  {

    memcpy(v4, v17, 0x48uLL);
    OUTLINED_FUNCTION_30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t static Mock.requests(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v10 = MEMORY[0x277D84F90];
      v3 = OUTLINED_FUNCTION_3();
      sub_266A98CA8(v3, v4, v5);
      v2 = v10;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2318, &qword_266AC35A0);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_266AC0EB0;
        *(v6 + 56) = &type metadata for ArbitrationModel;
        *(v6 + 64) = &protocol witness table for ArbitrationModel;
        OUTLINED_FUNCTION_13_5();
        *(v6 + 32) = swift_allocObject();
        static Mock.arbitration(participants:)();
        v8 = *(v10 + 16);
        v7 = *(v10 + 24);
        if (v8 >= v7 >> 1)
        {
          v9 = OUTLINED_FUNCTION_14(v7);
          sub_266A98CA8(v9, v8 + 1, 1);
        }

        *(v10 + 16) = v8 + 1;
        *(v10 + 8 * v8 + 32) = v6;
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

void static Mock.feedbacks(count:)()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v3 = sub_266ABD7F4();
  v4 = OUTLINED_FUNCTION_1_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_11_7();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v23 = MEMORY[0x277D84F90];
      v9 = OUTLINED_FUNCTION_3();
      sub_266A98CC8(v9, v10, v11);
      v12 = (v6 + 8);
      v13 = v23;
      do
      {
        sub_266ABD7E4();
        v14 = sub_266ABD7C4();
        v16 = v15;
        (*v12)(v0, v3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2318, &qword_266AC35A0);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_266AC0EB0;
        *(v17 + 56) = &type metadata for ArbitrationModel;
        *(v17 + 64) = &protocol witness table for ArbitrationModel;
        OUTLINED_FUNCTION_13_5();
        *(v17 + 32) = swift_allocObject();
        static Mock.arbitration(participants:)();
        v22[12] = &protocol witness table for RequestModel;
        v22[11] = &type metadata for RequestModel;
        v22[8] = v17;
        v21[3] = &type metadata for DeviceModel;
        v21[4] = sub_266A6DA44();
        OUTLINED_FUNCTION_14_7();
        v21[0] = swift_allocObject();
        static Mock.device()();
        v22[17] = &type metadata for UserInputModel;
        v22[18] = &protocol witness table for UserInputModel;
        v22[14] = swift_allocObject();
        static Mock.userInput()(v22[14] + 16);
        memset(&v22[3], 0, 40);
        v22[0] = v14;
        v22[1] = v16;
        LOBYTE(v22[2]) = 1;
        sub_266A791A4(v21, &v22[3], &qword_2800B1E08, &qword_266AC1370);
        LOBYTE(v22[13]) = 1;
        LOBYTE(v22[19]) = 0;
        v23 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          v20 = OUTLINED_FUNCTION_14(v18);
          sub_266A98CC8(v20, v19 + 1, 1);
          v13 = v23;
        }

        *(v13 + 16) = v19 + 1;
        memcpy((v13 + 160 * v19 + 32), v22, 0x99uLL);
        --v2;
      }

      while (v2);
    }

    OUTLINED_FUNCTION_30();
  }
}

uint64_t static Mock.feedback()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_266ABD7F4();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  sub_266ABD7E4();
  v11 = sub_266ABD7C4();
  v13 = v12;
  (*(v5 + 8))(v10, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2318, &qword_266AC35A0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266AC0EB0;
  *(v14 + 56) = &type metadata for ArbitrationModel;
  *(v14 + 64) = &protocol witness table for ArbitrationModel;
  OUTLINED_FUNCTION_13_5();
  *(v14 + 32) = swift_allocObject();
  static Mock.arbitration(participants:)();
  *(a1 + 88) = &type metadata for RequestModel;
  *(a1 + 96) = &protocol witness table for RequestModel;
  *(a1 + 64) = v14;
  v18[3] = &type metadata for DeviceModel;
  v18[4] = sub_266A6DA44();
  OUTLINED_FUNCTION_14_7();
  v18[0] = swift_allocObject();
  static Mock.device()();
  *(a1 + 136) = &type metadata for UserInputModel;
  *(a1 + 144) = &protocol witness table for UserInputModel;
  v15 = swift_allocObject();
  *(a1 + 112) = v15;
  static Mock.userInput()(v15 + 16);
  OUTLINED_FUNCTION_7_12();
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 16) = 1;
  result = sub_266A791A4(v18, v16, &qword_2800B1E08, &qword_266AC1370);
  *(a1 + 104) = 1;
  *(a1 + 152) = 0;
  return result;
}

double static Mock.userInput()@<D0>(uint64_t a1@<X8>)
{
  v4[3] = type metadata accessor for ParticipantModel();
  v4[4] = sub_266A81304();
  __swift_allocate_boxed_opaque_existential_1(v4);
  static Mock.participant(participation:triggerType:)();
  OUTLINED_FUNCTION_7_12();
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = -1;
  *(a1 + 8) = 0x4037000000000000;
  *(a1 + 16) = 0;
  *a1 = 1;
  sub_266A791A4(v4, v2, &qword_2800B1C48, &unk_266AC1310);
  *(a1 + 64) = 1;
  sub_266A8CEE4(*(a1 + 72), *(a1 + 80), *(a1 + 88));
  result = 1.4987574e161;
  *(a1 + 72) = xmmword_266AC6800;
  *(a1 + 88) = 259;
  return result;
}

uint64_t static Mock.userInputs(count:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (result)
    {
      v13 = MEMORY[0x277D84F90];
      v3 = OUTLINED_FUNCTION_3();
      sub_266A98CE8(v3, v4, v5);
      v2 = v13;
      v6 = type metadata accessor for ParticipantModel();
      v7 = sub_266A81304();
      do
      {
        v11[3] = v6;
        v11[4] = v7;
        __swift_allocate_boxed_opaque_existential_1(v11);
        static Mock.participant(participation:triggerType:)();
        memset(&__src[3], 0, 40);
        *&__src[9] = 0uLL;
        LOBYTE(__src[11]) = -1;
        __src[1] = 0x4037000000000000;
        LOBYTE(__src[2]) = 0;
        LOBYTE(__src[0]) = 1;
        sub_266A791A4(v11, &__src[3], &qword_2800B1C48, &unk_266AC1310);
        LOBYTE(__src[8]) = 1;
        sub_266A8CEE4(__src[9], __src[10], __src[11]);
        *&__src[9] = xmmword_266AC6800;
        LOWORD(__src[11]) = 259;
        v13 = v2;
        v9 = *(v2 + 16);
        v8 = *(v2 + 24);
        if (v9 >= v8 >> 1)
        {
          v10 = OUTLINED_FUNCTION_14(v8);
          sub_266A98CE8(v10, v9 + 1, 1);
          v2 = v13;
        }

        *(v2 + 16) = v9 + 1;
        memcpy((v2 + 96 * v9 + 32), __src, 0x5AuLL);
        --v1;
      }

      while (v1);
    }

    return v2;
  }

  return result;
}

uint64_t sub_266AB9878()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266AB98C0()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_266AB9920()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_266AB9964(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_266AB9A2C(*(a2 + 16));
  if (result < v2)
  {
    v5 = a2 + 16 * result;
    v6 = *(v5 + 32);
    v7 = *(v5 + 40);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t sub_266AB99D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = sub_266AB9A2C(*(a2 + 16));
  if (result >= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 8 * result + 32);
  }

  return result;
}

unint64_t sub_266AB9A2C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D5E92A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D5E92A0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266AB9AB8(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x26D5E92A0](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_266AB9AB8(v6, a2, a3);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Mock(_BYTE *result, int a2, int a3)
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