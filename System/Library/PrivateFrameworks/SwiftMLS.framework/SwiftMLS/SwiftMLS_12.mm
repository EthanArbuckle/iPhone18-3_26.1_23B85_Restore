unint64_t sub_26BEE0988()
{
  result = qword_28045F098;
  if (!qword_28045F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F098);
  }

  return result;
}

unint64_t sub_26BEE09F0()
{
  result = qword_28045F0A0;
  if (!qword_28045F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045F0A0);
  }

  return result;
}

uint64_t sub_26BEE0A44()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478F98);
  __swift_project_value_buffer(v0, qword_280478F98);
  return sub_26C009A4C();
}

uint64_t sub_26BEE0AC0()
{
  v1 = v0;
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = sub_26C00947C();
  v28 = sub_26BEE2EE4(&qword_28045F0C0, MEMORY[0x277D6A958]);
  v29 = v14;
  sub_26C00A3CC();
  v15 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v15 + 20), v13);
  v27 = *(v3 + 48);
  v16 = v27(v13, 1, v2);
  v25 = v6;
  v26 = v3;
  if (v16 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v3 + 8))(v6, v2);
  }

  v17 = _s21RCSParticipantKeyRollVMa();
  v18 = *(v17 + 20);
  sub_26C00959C();
  sub_26BEE2EE4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  sub_26C00A3CC();
  v19 = v1 + *(v17 + 24);
  sub_26C00A3CC();
  sub_26BEE2A7C(v19 + *(v15 + 20), v11);
  if (v27(v11, 1, v2) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v21 = v25;
    v20 = v26;
    (*(v26 + 32))(v25, v11, v2);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v20 + 8))(v21, v2);
  }

  v22 = v19 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  return sub_26C00A3CC();
}

uint64_t sub_26BEE0EA8()
{
  v1 = v0;
  v2 = sub_26C0094DC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  sub_26C00B05C();
  v14 = sub_26C00947C();
  v28 = sub_26BEE2EE4(&qword_28045F0C0, MEMORY[0x277D6A958]);
  v29 = v14;
  sub_26C00A3CC();
  v15 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v15 + 20), v13);
  v16 = *(v3 + 48);
  v17 = v16(v13, 1, v2);
  v26 = v6;
  v27 = v3;
  if (v17 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v3 + 32))(v6, v13, v2);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v3 + 8))(v6, v2);
  }

  v18 = _s21RCSParticipantKeyRollVMa();
  v19 = *(v18 + 20);
  sub_26C00959C();
  sub_26BEE2EE4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  sub_26C00A3CC();
  v20 = v1 + *(v18 + 24);
  sub_26C00A3CC();
  sub_26BEE2A7C(v20 + *(v15 + 20), v11);
  if (v16(v11, 1, v2) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v22 = v26;
    v21 = v27;
    (*(v27 + 32))(v26, v11, v2);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v21 + 8))(v22, v2);
  }

  v23 = v20 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEE12A0(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = v2;
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  sub_26C00B05C();
  v16 = sub_26C00947C();
  v29 = sub_26BEE2EE4(&qword_28045F0C0, MEMORY[0x277D6A958]);
  v30 = v16;
  sub_26C00A3CC();
  v17 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v2 + *(v17 + 20), v15);
  v18 = *(v5 + 48);
  v19 = v18(v15, 1, v4);
  v27 = v8;
  v28 = v5;
  if (v19 == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v8, v15, v4);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v5 + 8))(v8, v4);
  }

  v20 = v31;
  v21 = *(v31 + 20);
  sub_26C00959C();
  sub_26BEE2EE4(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  sub_26C00A3CC();
  v22 = v3 + *(v20 + 24);
  sub_26C00A3CC();
  sub_26BEE2A7C(v22 + *(v17 + 20), v13);
  if (v18(v13, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v24 = v27;
    v23 = v28;
    (*(v28 + 32))(v27, v13, v4);
    sub_26C00B07C();
    sub_26BEE2EE4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v23 + 8))(v24, v4);
  }

  v25 = v22 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BEE1698()
{
  v1 = v0;
  sub_26C00AC1C();
  MEMORY[0x26D699090](0xD00000000000002CLL, 0x800000026C02C5C0);
  v2 = MLS.AlgorithmIdentifier.description.getter();
  MEMORY[0x26D699090](v2);

  MEMORY[0x26D699090](0x74616E676973202CLL, 0xED0000203A657275);
  v3 = _s21RCSParticipantKeyRollVMa();
  v4 = *(v3 + 20);
  sub_26C00959C();
  sub_26C00AD4C();
  MEMORY[0x26D699090](0xD000000000000010, 0x800000026C02C5F0);
  v5 = v1 + *(v3 + 24);
  v6 = MLS.SubjectPublicKeyInfo.description.getter();
  MEMORY[0x26D699090](v6);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_26BEE17DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v3 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00959C();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00934C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v14 = type metadata accessor for MLS.AlgorithmIdentifier();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  sub_26BEE2EE4(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier);
  v25 = a1;
  v18 = v26;
  result = sub_26C0096BC();
  if (!v18)
  {
    sub_26C0096AC();
    sub_26C0096BC();
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BEE2EE4(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26C0096BC();
    v20 = v22;
    sub_26BEE2E7C(v17, v22, type metadata accessor for MLS.AlgorithmIdentifier);
    v21 = _s21RCSParticipantKeyRollVMa();
    (*(v24 + 32))(v20 + *(v21 + 20), v9, v6);
    return sub_26BEE2E7C(v5, v20 + *(v21 + 24), type metadata accessor for MLS.SubjectPublicKeyInfo);
  }

  return result;
}

uint64_t sub_26BEE1B84()
{
  type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2EE4(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier);
  result = sub_26C00976C();
  if (!v0)
  {
    v2 = _s21RCSParticipantKeyRollVMa();
    v3 = *(v2 + 20);
    sub_26C00959C();
    sub_26C00976C();
    v4 = *(v2 + 24);
    type metadata accessor for MLS.SubjectPublicKeyInfo();
    sub_26BEE2EE4(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo);
    return sub_26C00976C();
  }

  return result;
}

uint64_t sub_26BEE1CA8(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t _s21RCSParticipantKeyRollVMa()
{
  result = qword_28045F0F0;
  if (!qword_28045F0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BEE1FD8(uint64_t a1)
{
  v90 = a1;
  v82 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v1 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v83 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_26C00959C();
  v87 = *(v88 - 1);
  v3 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MLS.AlgorithmIdentifier();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s18SignatureAlgorithmVMa();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v85 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s9PublicKeyVMa(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v78 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v78 - v26;
  v28 = sub_26C00978C();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C00977C();
  sub_26BEE2EE4(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo);
  v33 = v95;
  sub_26C00976C();
  if (v33)
  {
    (*(v29 + 8))(v32, v28);
  }

  else
  {
    v80 = v22;
    v90 = v25;
    v95 = v13;
    v81 = v28;
    v34 = sub_26C00971C();
    v35 = sub_26BE12418(v34);
    v37 = v36;

    v38 = _s21RCSParticipantKeyRollVMa();
    sub_26BEE2F2C(v89 + *(v38 + 24), v17, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BFCD8D0(v17, v27);
    v39 = v32;
    v78 = v35;
    v79 = v37;
    v40 = v89;
    v41 = v84;
    sub_26BEE2F2C(v89, v84, type metadata accessor for MLS.AlgorithmIdentifier);
    v42 = v95;
    sub_26BFD001C(v41, v95);
    v43 = v85;
    sub_26BEE2F2C(v42, v85, _s18SignatureAlgorithmVMa);
    v44 = v40 + *(v38 + 20);
    v45 = v86;
    (*(v87 + 16))(v86, v44, v88);
    sub_26BFE6910(v43, v45, v91);
    v46 = v29;
    v93[2] = v91[2];
    v93[3] = v91[3];
    v94 = v92;
    v93[0] = v91[0];
    v93[1] = v91[1];
    v47 = v78;
    v48 = v79;
    v49 = sub_26BED16C4(v93, v78, v79, v42);
    v50 = v81;
    if (v49)
    {
      sub_26BEC9DC0(v93);
      sub_26BE00258(v47, v48);
      sub_26BEE2F94(v42, _s18SignatureAlgorithmVMa);
      sub_26BEE2F94(v27, _s9PublicKeyVMa);
      (*(v29 + 8))(v39, v50);
    }

    else
    {
      if (qword_28045DFC8 != -1)
      {
        swift_once();
      }

      v51 = sub_26C009A5C();
      __swift_project_value_buffer(v51, qword_280478F98);
      v88 = v27;
      v52 = v90;
      sub_26BEE2F2C(v27, v90, _s9PublicKeyVMa);
      v53 = v78;
      v54 = v79;
      sub_26BE00608(v78, v79);
      sub_26BEC9F28(v93, v91);
      v55 = v53;
      v56 = sub_26C009A3C();
      v57 = sub_26C00A9FC();
      sub_26BE00258(v55, v54);
      sub_26BEC9DC0(v93);
      LODWORD(v87) = v57;
      v89 = v56;
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v91[0] = v86;
        *v58 = 136315650;
        sub_26BE00608(v55, v54);
        v59 = sub_26C00901C();
        v61 = v60;
        sub_26BE00258(v55, v54);
        v62 = sub_26BE29740(v59, v61, v91);

        *(v58 + 4) = v62;
        *(v58 + 12) = 2080;
        v63 = v80;
        sub_26BEE2F2C(v52, v80, _s9PublicKeyVMa);
        v64 = v83;
        sub_26BEE2F2C(v63, v83, _s9PublicKeyV16BackingPublicKeyOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v66 = 0x6275502E36353250;
        v67 = 0x6275502E31323550;
        v68 = 0x800000026C02C3C0;
        if (EnumCaseMultiPayload == 2)
        {
          v68 = 0xEE0079654B63696CLL;
        }

        else
        {
          v67 = 0xD000000000000011;
        }

        if (EnumCaseMultiPayload)
        {
          v66 = 0x6275502E34383350;
        }

        if (EnumCaseMultiPayload <= 1)
        {
          v69 = v66;
        }

        else
        {
          v69 = v67;
        }

        if (EnumCaseMultiPayload <= 1)
        {
          v70 = 0xEE0079654B63696CLL;
        }

        else
        {
          v70 = v68;
        }

        sub_26BEE2F94(v63, _s9PublicKeyVMa);
        sub_26BEE2F94(v52, _s9PublicKeyVMa);
        sub_26BEE2F94(v64, _s9PublicKeyV16BackingPublicKeyOMa);
        v71 = sub_26BE29740(v69, v70, v91);

        *(v58 + 14) = v71;
        *(v58 + 22) = 2080;
        if (v94)
        {
          v72 = 0x4153444445;
        }

        else
        {
          v72 = 0x4153444345;
        }

        v73 = sub_26BE29740(v72, 0xE500000000000000, v91);

        *(v58 + 24) = v73;
        v74 = v89;
        _os_log_impl(&dword_26BDFE000, v89, v87, "Verify for %s failed (key: %s, sig: %s)", v58, 0x20u);
        v75 = v86;
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v75, -1, -1);
        MEMORY[0x26D69A4E0](v58, -1, -1);

        v76 = v81;
        v46 = v29;
        v42 = v95;
        v55 = v78;
      }

      else
      {

        sub_26BEE2F94(v52, _s9PublicKeyVMa);
        v76 = v81;
      }

      type metadata accessor for MLS.IdentityError();
      sub_26BEE2EE4(&qword_28045EB48, type metadata accessor for MLS.IdentityError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_26BEC9DC0(v93);
      sub_26BE00258(v55, v79);
      sub_26BEE2F94(v42, _s18SignatureAlgorithmVMa);
      sub_26BEE2F94(v88, _s9PublicKeyVMa);
      (*(v46 + 8))(v39, v76);
    }
  }

  return 1;
}

uint64_t sub_26BEE2A7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEE2AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
  v18 = *(v13 + 48);
  sub_26BEE2A7C(a1 + v17, v16);
  sub_26BEE2A7C(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_26BEE2A7C(v16, v12);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v16[v18], v4);
      sub_26BEE2EE4(&qword_28045F0E0, MEMORY[0x277D6A988]);
      v20 = sub_26C00A43C();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_26BE2E258(v16, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
LABEL_9:
  v22 = _s21RCSParticipantKeyRollVMa();
  v23 = *(v22 + 20);
  if ((sub_26C00956C() & 1) != 0 && static MLS.AlgorithmIdentifier.== infix(_:_:)(a1 + *(v22 + 24), a2 + *(v22 + 24)))
  {
    v24 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    if (sub_26C00956C())
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_26BEE2E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEE2EE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BEE2F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEE2F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BEE3008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.AlgorithmIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_26C00959C();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_26BEE315C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLS.AlgorithmIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_26C00959C();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_26BEE32A8()
{
  result = type metadata accessor for MLS.AlgorithmIdentifier();
  if (v1 <= 0x3F)
  {
    result = sub_26C00959C();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MLS.SubjectPublicKeyInfo();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MLS.MLSMessage.wireFormat.getter@<X0>(__int16 *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEE3514(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      result = sub_26BEE494C(v7, type metadata accessor for MLS.MLSMessage.Inner);
      v10 = 1;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      result = sub_26BEE494C(v7, type metadata accessor for MLS.MLSMessage.Inner);
      v10 = 2;
    }

    else
    {
      v10 = *v7;
      result = sub_26BE00258(*(v7 + 1), *(v7 + 2));
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      result = sub_26BEE494C(v7, type metadata accessor for MLS.MLSMessage.Inner);
      v10 = 4;
    }

    else
    {
      result = sub_26BEE494C(v7, type metadata accessor for MLS.MLSMessage.Inner);
      v10 = 5;
    }
  }

  else
  {
    result = sub_26BEE494C(v7, type metadata accessor for MLS.MLSMessage.Inner);
    v10 = 3;
  }

  *a1 = v10;
  return result;
}

uint64_t sub_26BEE3514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLS.MLSMessage.init(rawValue:quiet:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = a4;
    v10 = v4;
    v11 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = a4;
    v10 = v4;
  }

  sub_26BE00608(a1, a2);
  v4 = v10;
  a4 = v9;
LABEL_7:
  sub_26BEE3C08(a4);
  if (v4)
  {
    if ((a3 & 1) == 0)
    {
      type metadata accessor for MLS.MLSMessage(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F100, &qword_26C01A558);
      v12 = sub_26C00A4FC();
      sub_26BE826C4(v12, v13, a1, a2);
    }

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
  return sub_26BE00258(a1, a2);
}

uint64_t sub_26BEE3688(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for MLS.PublicMessage();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v57 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for MLS.GroupInfo();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v57 - v14);
  LOWORD(v59) = 256;
  v16 = MEMORY[0x277D838B0];
  *(&v72 + 1) = MEMORY[0x277D838B0];
  *&v73 = MEMORY[0x277CC9C18];
  *&v71 = &v59;
  *(&v71 + 1) = &v59 + 2;
  v17 = __swift_project_boxed_opaque_existential_1(&v71, MEMORY[0x277D838B0]);
  v19 = *v17;
  v18 = v17[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v71);
  sub_26BEE3514(a1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26BEE494C(v15, type metadata accessor for MLS.MLSMessage.Inner);
      v21 = 1;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_26BEE494C(v15, type metadata accessor for MLS.MLSMessage.Inner);
      v21 = 2;
    }

    else
    {
      v21 = *v15;
      sub_26BE00258(*(v15 + 1), *(v15 + 2));
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_26BEE494C(v15, type metadata accessor for MLS.MLSMessage.Inner);
      v21 = 4;
    }

    else
    {
      sub_26BEE494C(v15, type metadata accessor for MLS.MLSMessage.Inner);
      v21 = 5;
    }
  }

  else
  {
    sub_26BEE494C(v15, type metadata accessor for MLS.MLSMessage.Inner);
    v21 = 3;
  }

  LOWORD(v59) = __rev16(v21);
  *(&v72 + 1) = v16;
  *&v73 = MEMORY[0x277CC9C18];
  *&v71 = &v59;
  *(&v71 + 1) = &v59 + 2;
  v22 = __swift_project_boxed_opaque_existential_1(&v71, v16);
  v24 = *v22;
  v23 = v22[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v71);
  sub_26BEE3514(a1, v13);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result > 2)
  {
    goto LABEL_19;
  }

  v26 = v58;
  if (!result)
  {
    goto LABEL_25;
  }

  if (result != 1)
  {
LABEL_33:
    v41 = *(v13 + 9);
    v42 = *(v13 + 7);
    v79 = *(v13 + 8);
    v80 = v41;
    v43 = *(v13 + 9);
    v81 = *(v13 + 10);
    v44 = *(v13 + 5);
    v45 = *(v13 + 3);
    v75 = *(v13 + 4);
    v76 = v44;
    v46 = *(v13 + 5);
    v47 = *(v13 + 7);
    v77 = *(v13 + 6);
    v78 = v47;
    v48 = *(v13 + 1);
    v71 = *v13;
    v72 = v48;
    v49 = *(v13 + 3);
    v51 = *v13;
    v50 = *(v13 + 1);
    v73 = *(v13 + 2);
    v74 = v49;
    v67 = v79;
    v68 = v43;
    v69 = *(v13 + 10);
    v63 = v75;
    v64 = v46;
    v65 = v77;
    v66 = v42;
    v59 = v51;
    v60 = v50;
    v82 = *(v13 + 22);
    v70 = *(v13 + 22);
    v61 = v73;
    v62 = v45;
    v52 = sub_26BE00A98(&v59);
    result = sub_26BE2E01C(&v71);
    if (v26)
    {
      goto LABEL_38;
    }

    result = v52 + 4;
    if (!__OFADD__(v52, 4))
    {
      goto LABEL_38;
    }

LABEL_40:
    __break(1u);
  }

  v27 = v13;
  v13 = v58;
  sub_26BEE48E4(v27, v8, type metadata accessor for MLS.GroupInfo);
  v28 = sub_26BED49C0(v8);
  result = sub_26BEE494C(v8, type metadata accessor for MLS.GroupInfo);
  if (!v26)
  {
    result = v28 + 4;
    if (__OFADD__(v28, 4))
    {
      __break(1u);
LABEL_19:
      v26 = v58;
      if (result == 3)
      {
LABEL_29:
        v38 = v13;
        v39 = v57;
        v13 = v26;
        sub_26BEE48E4(v38, v57, type metadata accessor for MLS.PublicMessage);
        v40 = sub_26BF80EA4(v39);
        result = sub_26BEE494C(v39, type metadata accessor for MLS.PublicMessage);
        if (v26)
        {
          goto LABEL_38;
        }

        result = v40 + 4;
        if (!__OFADD__(v40, 4))
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_33;
      }

      if (result != 4)
      {
        v53 = *(v13 + 1);
        v54 = *(v13 + 2);
        v55 = sub_26BE11228(v53, v54);
        sub_26BE00258(v53, v54);
        result = v55 + 4;
        if (!__OFADD__(v55, 4))
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_40;
      }

      v29 = *(v13 + 1);
      v30 = *(v13 + 3);
      v73 = *(v13 + 2);
      v74 = v30;
      v31 = *(v13 + 3);
      v75 = *(v13 + 4);
      v32 = *(v13 + 1);
      v71 = *v13;
      v72 = v32;
      v61 = v73;
      v62 = v31;
      v63 = *(v13 + 4);
      v59 = v71;
      v60 = v29;
      v33 = sub_26BED7438(&v59);
      result = sub_26BE6FFE0(&v71);
      if (v26)
      {
        goto LABEL_38;
      }

      result = v33 + 4;
      if (!__OFADD__(v33, 4))
      {
        goto LABEL_38;
      }

      __break(1u);
LABEL_25:
      v34 = *v13;
      v35 = *(v13 + 1);
      v36 = *(v13 + 2);
      v13 = *(v13 + 3);
      LOWORD(v71) = v34;
      *(&v71 + 1) = v35;
      *&v72 = v36;
      *(&v72 + 1) = v13;
      v37 = sub_26BE34228(&v71);

      result = sub_26BE00258(v36, v13);
      if (v26)
      {
        goto LABEL_38;
      }

      result = v37 + 4;
      if (!__OFADD__(v37, 4))
      {
        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_29;
    }
  }

LABEL_38:
  v56 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_26BEE3C08(uint64_t a1@<X8>)
{
  v105 = a1;
  v103 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v3 = *(*(v103 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v103);
  v6 = &v94[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v94[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v94[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v94[-v14];
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v94[-v17];
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v94[-v20];
  MEMORY[0x28223BE20](v19);
  v104 = &v94[-v22];
  v112 = v1;
  v23 = sub_26BEE6180();
  if ((v23 & 0x10000) != 0)
  {
    goto LABEL_37;
  }

  if (v23 != 1)
  {
LABEL_33:
    sub_26BE01600();
    swift_allocError();
    v59 = 5;
LABEL_38:
    *v58 = v59;
    goto LABEL_39;
  }

  v102 = v2;
  v24 = sub_26BEE6180();
  if ((v24 & 0x10000) != 0)
  {
    goto LABEL_37;
  }

  v25 = v24;
  if (v24 > 2u)
  {
    if (v24 != 3)
    {
      if (v24 == 4)
      {
        v44 = v102;
        sub_26BED3A64(v18);
        if (!v44)
        {
          swift_storeEnumTagMultiPayload();
          v21 = v18;
          goto LABEL_32;
        }

        return;
      }

      v26 = v112;
      if (v24 == 5)
      {
        v27 = v102;
        sub_26BE00E2C(v109);
        if (!v27)
        {
          v28 = v109[9];
          v29 = v109[10];
          v30 = v109[7];
          *(v15 + 8) = v109[8];
          *(v15 + 9) = v28;
          *(v15 + 10) = v29;
          *(v15 + 22) = v110;
          v31 = v109[5];
          *(v15 + 4) = v109[4];
          *(v15 + 5) = v31;
          *(v15 + 6) = v109[6];
          *(v15 + 7) = v30;
          v32 = v109[1];
          *v15 = v109[0];
          *(v15 + 1) = v32;
          v33 = v109[3];
          *(v15 + 2) = v109[2];
          *(v15 + 3) = v33;
          swift_storeEnumTagMultiPayload();
          v21 = v15;
LABEL_32:
          v56 = v21;
          v57 = v104;
          sub_26BEE48E4(v56, v104, type metadata accessor for MLS.MLSMessage.Inner);
          sub_26BEE48E4(v57, v105, type metadata accessor for MLS.MLSMessage.Inner);
          return;
        }

        return;
      }

      goto LABEL_22;
    }

    v37 = v112;
    v38 = sub_26BEE6180();
    if ((v38 & 0x10000) == 0)
    {
      v39 = v38;
      v40 = *v37;
      v41 = v37[1];
      v42 = v37[2];
      sub_26BE00608(*v37, v41);
      sub_26BE00608(v40, v41);
      v43 = v102;
      sub_26BF30764(v37, &v106);
      if (v43)
      {
        sub_26BE00258(*v37, v37[1]);
        *v37 = v40;
        v37[1] = v41;
        v37[2] = v42;
        swift_willThrow();
LABEL_17:
        sub_26BE00258(*v37, v37[1]);
        *v37 = v40;
        v37[1] = v41;
        v37[2] = v42;
LABEL_39:
        swift_willThrow();
        return;
      }

      v102 = 0;
      if (v107)
      {
        sub_26BE00258(*v37, v37[1]);
        *v37 = v40;
        v37[1] = v41;
        v60 = v41;
        v61 = v40;
        v37[2] = v42;
      }

      else
      {
        v96 = v42;
        v62 = v106;
        sub_26BE00258(v40, v41);
        if (v62 > 100000000)
        {
          sub_26BE01600();
          swift_allocError();
          *v63 = 5;
          swift_willThrow();
          v42 = v96;
          goto LABEL_17;
        }

        v64 = sub_26BF2A44C(v62);
        if (v65 >> 60 != 15)
        {
          v106 = v64;
          v107 = v65;
          v108 = v66;
          v101 = MEMORY[0x277D84F90];
          v97 = v41;
          v98 = v40;
          v95 = v39;
          while (1)
          {
            v67 = v65 >> 62;
            if ((v65 >> 62) > 1)
            {
              v68 = v67 == 2 ? *(v64 + 24) : 0;
            }

            else
            {
              v68 = v67 ? v64 >> 32 : BYTE6(v65);
            }

            v69 = __OFSUB__(v68, v66);
            v70 = v68 - v66;
            if (v69)
            {
              goto LABEL_76;
            }

            if (v70 < 1)
            {
              if (v67 > 1)
              {
                if (v67 == 2)
                {
                  v89 = *(v64 + 24);
                }

                else
                {
                  v89 = 0;
                }
              }

              else if (v67)
              {
                v89 = v64 >> 32;
              }

              else
              {
                v89 = BYTE6(v65);
              }

              if (__OFSUB__(v89, v66))
              {
                goto LABEL_77;
              }

              if (v89 != v66)
              {
                sub_26BE01654();
                swift_allocError();
                *v93 = 0;
                v93[112] = 1;
                swift_willThrow();

                sub_26BE00258(v106, v107);
                v42 = v96;
                goto LABEL_17;
              }

              sub_26BE00258(v64, v65);
              sub_26BE00258(v40, v41);
              v90 = v102;
              v91 = sub_26BF2F7B0();
              if (v90)
              {

                return;
              }

              *v21 = v95;
              *(v21 + 1) = v101;
              *(v21 + 2) = v91;
              *(v21 + 3) = v92;
              swift_storeEnumTagMultiPayload();
              goto LABEL_32;
            }

            v71 = v102;
            v72 = sub_26BF2F7B0();
            v100 = v73;
            if (v71)
            {
              v102 = v71;

              sub_26BE00258(v106, v107);
              v42 = v96;
              goto LABEL_17;
            }

            v74 = v72;
            v75 = sub_26BF2F7B0();
            v77 = v76;
            v78 = sub_26BF2F7B0();
            v102 = 0;
            v79 = v78;
            v81 = v80;
            sub_26BE00608(v74, v100);
            sub_26BE00608(v75, v77);
            sub_26BE00608(v79, v81);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v101 = sub_26BEECA34(0, *(v101 + 2) + 1, 1, v101);
            }

            v83 = *(v101 + 2);
            v82 = *(v101 + 3);
            v99 = v83 + 1;
            if (v83 >= v82 >> 1)
            {
              v101 = sub_26BEECA34((v82 > 1), v83 + 1, 1, v101);
            }

            v84 = v74;
            v85 = v74;
            v86 = v100;
            sub_26BE00258(v85, v100);
            sub_26BE00258(v75, v77);
            sub_26BE00258(v79, v81);
            v87 = v101;
            *(v101 + 2) = v99;
            v88 = &v87[48 * v83];
            *(v88 + 4) = v84;
            *(v88 + 5) = v86;
            *(v88 + 6) = v75;
            *(v88 + 7) = v77;
            *(v88 + 8) = v79;
            *(v88 + 9) = v81;
            v64 = v106;
            v65 = v107;
            v66 = v108;
            v37 = v112;
            v41 = v97;
            v40 = v98;
          }
        }

        v61 = *v37;
        v60 = v37[1];
        v42 = v96;
      }

      sub_26BE00258(v61, v60);
      *v37 = v40;
      v37[1] = v41;
      v37[2] = v42;
    }

LABEL_37:
    sub_26BE01600();
    swift_allocError();
    v59 = 1;
    goto LABEL_38;
  }

  if (v24 == 1)
  {
    v45 = v102;
    sub_26BF813DC(v12);
    if (!v45)
    {
      swift_storeEnumTagMultiPayload();
      v21 = v12;
      goto LABEL_32;
    }

    return;
  }

  v26 = v112;
  if (v24 != 2)
  {
LABEL_22:
    v46 = *v26;
    v47 = v26[1];
    v48 = v26[2];
    v49 = v47 >> 62;
    if ((v47 >> 62) > 1)
    {
      if (v49 == 2)
      {
        v51 = *(v46 + 24);
      }

      else
      {
        v51 = 0;
      }
    }

    else
    {
      v50 = BYTE6(v47);
      v51 = v46 >> 32;
      if (!v49)
      {
        v51 = v50;
      }
    }

    if (!__OFSUB__(v51, v48))
    {
      v52 = sub_26BF2A51C(v51 - v48);
      if (v52)
      {
        v53 = sub_26BE12418(v52);
        v55 = v54;

        *v6 = v25;
        *(v6 + 1) = v53;
        *(v6 + 2) = v55;
        swift_storeEnumTagMultiPayload();
        v21 = v6;
        goto LABEL_32;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    return;
  }

  v34 = v102;
  sub_26BED7790(v111);
  if (!v34)
  {
    v35 = v111[3];
    v9[2] = v111[2];
    v9[3] = v35;
    v9[4] = v111[4];
    v36 = v111[1];
    *v9 = v111[0];
    v9[1] = v36;
    swift_storeEnumTagMultiPayload();
    v21 = v9;
    goto LABEL_32;
  }
}

BOOL MLS.MLSMessage.successfullyParsed.getter()
{
  v1 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BEE3514(v0, v4);
  v5 = swift_getEnumCaseMultiPayload() != 5;
  sub_26BEE494C(v4, type metadata accessor for MLS.MLSMessage.Inner);
  return v5;
}

uint64_t MLS.MLSMessage.rawValue.getter()
{
  sub_26BEE3688(v0);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t sub_26BEE45FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEE4674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BEE46F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BEE4764()
{
  result = type metadata accessor for MLS.MLSMessage.Inner(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26BEE47E0()
{
  type metadata accessor for MLS.GroupInfo();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MLS.PublicMessage();
    if (v1 <= 0x3F)
    {
      sub_26BEE4884();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_26BEE4884()
{
  if (!qword_28045F128)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28045F128);
    }
  }
}

uint64_t sub_26BEE48E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BEE494C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLS.GroupSecrets.joinerSecret.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.GroupSecrets.joinerSecret.setter(uint64_t a1, uint64_t a2)
{
  result = sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_26BEE4A58(uint64_t *a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v7 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v7)
    {
      v8 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v7 != 2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v10 = *(v2 + 16);
  v9 = *(v2 + 24);
  v8 = v9 - v10;
  if (__OFSUB__(v9, v10))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_36;
    }

    v8 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v8);
  if (!v1)
  {
    v12 = result;
    sub_26BE11228(v2, v3);
    v13 = __OFADD__(v12, v8);
    v14 = v12 + v8;
    if (!v13)
    {
      if (v4 >> 60 == 15)
      {
        v33 = 0;
        v36 = MEMORY[0x277D838B0];
        v37 = MEMORY[0x277CC9C18];
        *&v34 = &v33;
        *(&v34 + 1) = &v34;
        v15 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x277D838B0]);
        v17 = *v15;
        v16 = v15[1];
        sub_26C00908C();
        v18 = __swift_destroy_boxed_opaque_existential_1(&v34);
        v19 = v14 + 1;
        if (!__OFADD__(v14, 1))
        {
LABEL_15:
          v34 = xmmword_26C00BBD0;
          v35 = 0;
          v6 = sub_26BEE5E74(0, v6);
          v18 = sub_26BF30414(v6);
          goto LABEL_32;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        v31 = v18;
        sub_26BF2A30C(&v34);
        sub_26BE00258(v34, *(&v34 + 1));
        v32 = v31 + v6;
        if (!__OFADD__(v31, v6))
        {
          result = v19 + v32;
          if (!__OFADD__(v19, v32))
          {
            goto LABEL_26;
          }

LABEL_41:
          __break(1u);
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v33 = 1;
      v36 = MEMORY[0x277D838B0];
      v37 = MEMORY[0x277CC9C18];
      *&v34 = &v33;
      *(&v34 + 1) = &v34;
      v20 = __swift_project_boxed_opaque_existential_1(&v34, MEMORY[0x277D838B0]);
      v21 = *v20;
      v22 = v20[1];
      sub_26BE00608(v5, v4);
      sub_26C00908C();
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v23 = v4 >> 62;
      if ((v4 >> 62) > 1)
      {
        if (v23 != 2)
        {
          v24 = 0;
          goto LABEL_27;
        }

        v26 = *(v5 + 16);
        v25 = *(v5 + 24);
        v24 = v25 - v26;
        if (!__OFSUB__(v25, v26))
        {
LABEL_27:
          v28 = sub_26BF30414(v24);
          sub_26BE11228(v5, v4);
          v18 = sub_26BE136AC(v5, v4);
          v29 = v28 + v24;
          if (!__OFADD__(v28, v24))
          {
            v13 = __OFADD__(v29, 1);
            v30 = v29 + 1;
            if (!v13)
            {
              v19 = v14 + v30;
              if (!__OFADD__(v14, v30))
              {
                goto LABEL_15;
              }

              goto LABEL_31;
            }

            goto LABEL_38;
          }

LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        __break(1u);
      }

      else if (!v23)
      {
        v24 = BYTE6(v4);
        goto LABEL_27;
      }

      if (__OFSUB__(HIDWORD(v5), v5))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v24 = HIDWORD(v5) - v5;
      goto LABEL_27;
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26BEE4D28@<X0>(void *a1@<X8>)
{
  v3 = v1;
  v167 = *MEMORY[0x277D85DE8];
  v5 = sub_26C00914C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v137 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_26BF2F7B0();
  if (v2)
  {
    goto LABEL_10;
  }

  v156 = result;
  v157 = v11;
  v12 = sub_26BEE62D4();
  if ((v12 & 0x100) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    v14 = 1;
    goto LABEL_9;
  }

  if (v12)
  {
    if (v12 == 1)
    {
      v16 = sub_26BF2F7B0();
      v155 = v17;
      v152 = a1;
      v153 = v5;
      goto LABEL_11;
    }

    sub_26BE01600();
    swift_allocError();
    v14 = 5;
LABEL_9:
    *v13 = v14;
    swift_willThrow();
    result = sub_26BE00258(v156, v157);
LABEL_10:
    v15 = *MEMORY[0x277D85DE8];
    return result;
  }

  v152 = a1;
  v153 = v5;
  v16 = v12;
  v155 = 0xF000000000000000;
LABEL_11:
  v19 = *v3;
  v18 = v3[1];
  v20 = v3[2];
  sub_26BE00608(*v3, v18);
  sub_26BE00608(v19, v18);
  sub_26BF30764(v3, &v160);
  v148 = v20;
  v150 = v19;
  v151 = v18;
  if (v161)
  {
    sub_26BE00258(*v3, v3[1]);
    v22 = v150;
    v21 = v151;
    *v3 = v150;
    v3[1] = v21;
    v23 = v21;
    v24 = v22;
    v25 = v148;
    v3[2] = v148;
LABEL_15:
    sub_26BE00258(v24, v23);
    *v3 = v22;
    v3[1] = v21;
    v3[2] = v25;
    sub_26BE01600();
    swift_allocError();
    *v26 = 1;
    swift_willThrow();
    sub_26BE00258(v156, v157);
    result = sub_26BE136AC(v16, v155);
    goto LABEL_10;
  }

  v154 = v16;
  v149 = 0;
  v27 = v160;
  sub_26BE00258(v150, v151);
  if (v27 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v28 = 5;
    swift_willThrow();
    v30 = v150;
    v29 = v151;
    v31 = v148;
LABEL_12:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v30;
    v3[1] = v29;
    v3[2] = v31;
    swift_willThrow();
    sub_26BE00258(v156, v157);
    result = sub_26BE136AC(v154, v155);
    goto LABEL_10;
  }

  result = sub_26BF2A44C(v27);
  if (v32 >> 60 == 15)
  {
    v24 = *v3;
    v23 = v3[1];
    v16 = v154;
    v22 = v150;
    v21 = v151;
    v25 = v148;
    goto LABEL_15;
  }

  v139 = (v6 + 8);
  v164 = result;
  v165 = v32;
  v166 = v33;
  v147 = MEMORY[0x277D84F90];
  while (1)
  {
    v34 = v32 >> 62;
    if ((v32 >> 62) > 1)
    {
      if (v34 == 2)
      {
        v35 = *(result + 24);
      }

      else
      {
        v35 = 0;
      }
    }

    else if (v34)
    {
      v35 = result >> 32;
    }

    else
    {
      v35 = BYTE6(v32);
    }

    v36 = __OFSUB__(v35, v33);
    v37 = v35 - v33;
    if (v36)
    {
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
    }

    if (v37 < 1)
    {
      if (v34 > 1)
      {
        v31 = v148;
        if (v34 == 2)
        {
          v127 = *(result + 24);
        }

        else
        {
          v127 = 0;
        }
      }

      else
      {
        v127 = BYTE6(v32);
        if (v34)
        {
          v127 = result >> 32;
        }

        v31 = v148;
      }

      if (__OFSUB__(v127, v33))
      {
        goto LABEL_202;
      }

      if (v127 == v33)
      {
        sub_26BE00258(result, v32);
        result = sub_26BE00258(v150, v151);
        v133 = v157;
        v134 = v152;
        *v152 = v156;
        v134[1] = v133;
        v135 = v155;
        v134[2] = v154;
        v134[3] = v135;
        v134[4] = v147;
        goto LABEL_10;
      }

      sub_26BE01654();
      swift_allocError();
      *v136 = 0;
      v136[112] = 1;
      swift_willThrow();

      sub_26BE00258(v164, v165);
      v30 = v150;
      v29 = v151;
      goto LABEL_12;
    }

    LOBYTE(v158) = 0;
    v38 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_184;
    }

    if (v34 <= 1)
    {
      if (v34)
      {
        v39 = result >> 32;
      }

      else
      {
        v39 = BYTE6(v32);
      }

LABEL_37:
      if (v39 < v38)
      {
        goto LABEL_155;
      }

      goto LABEL_40;
    }

    if (v34 == 2)
    {
      v39 = *(result + 24);
      goto LABEL_37;
    }

    if (v38 > 0)
    {
      goto LABEL_155;
    }

LABEL_40:
    v160 = result;
    v161 = v32;
    if (v38 < v33)
    {
      goto LABEL_185;
    }

    *&__dst = v33;
    *(&__dst + 1) = v33 + 1;
    v145 = result;
    v144 = v32;
    sub_26BE00608(result, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v40 = sub_26BE016A8();
    sub_26BE13630(&qword_28045E280, &qword_28045E270, &unk_26C00E290);
    v142 = v40;
    sub_26C008E1C();
    sub_26BE00258(v160, v161);
    v166 = v38;
    if (v158 == 1)
    {
      v44 = v145;
      v45 = v144;
      sub_26BE00608(v145, v144);
      sub_26BE00608(v44, v45);
      v46 = v149;
      sub_26BF30764(&v164, &v160);
      if (v46)
      {
        sub_26BE00258(v164, v165);
        sub_26BE00258(v44, v45);
        swift_willThrow();
        v164 = v44;
        v165 = v45;
        v166 = v38;
        goto LABEL_175;
      }

      if (v161)
      {
        sub_26BE00258(v164, v165);
        v130 = v45;
        v49 = v44;
        goto LABEL_174;
      }

      v149 = 0;
      v47 = v160;
      sub_26BE00258(v44, v45);
      v48 = v166 + v47;
      if (__OFADD__(v166, v47))
      {
        goto LABEL_194;
      }

      v49 = v164;
      v50 = v165;
      v51 = v165 >> 62;
      if ((v165 >> 62) <= 1)
      {
        if (v51)
        {
          v52 = v164 >> 32;
        }

        else
        {
          v52 = BYTE6(v165);
        }

        goto LABEL_102;
      }

      if (v51 == 2)
      {
        v52 = *(v164 + 24);
LABEL_102:
        if (v52 < v48)
        {
          goto LABEL_173;
        }
      }

      else if (v48 > 0)
      {
LABEL_173:
        v130 = v165;
LABEL_174:
        sub_26BE00258(v49, v130);
        v164 = v44;
        v165 = v45;
        v166 = v38;
        sub_26BE01600();
        swift_allocError();
        *v131 = 1;
LABEL_175:
        v30 = v150;
        v29 = v151;
        v31 = v148;
        swift_willThrow();
        goto LABEL_176;
      }

      if (v48 < v166)
      {
        goto LABEL_196;
      }

      v76 = v164;
      v77 = sub_26C00909C();
      v78 = v77;
      v80 = v79;
      v166 = v48;
      v81 = v79 >> 62;
      if ((v79 >> 62) > 1)
      {
        if (v81 != 2)
        {
LABEL_119:
          v146 = sub_26C00909C();
          v143 = v84;
          sub_26BE00258(v78, v80);
          sub_26BE00258(v44, v45);
          v144 = 0;
          v145 = 0;
          v83 = v76;
          v64 = v50;
          goto LABEL_130;
        }

        v77 = *(v77 + 16);
        v82 = *(v78 + 24);
      }

      else
      {
        if (!v81)
        {
          goto LABEL_119;
        }

        v77 = v77;
        v82 = v78 >> 32;
      }

      if (v82 < v77)
      {
        goto LABEL_198;
      }

      goto LABEL_119;
    }

    if (v158 != 2)
    {
      break;
    }

    LOBYTE(v158) = 0;
    v41 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_189;
    }

    if (v34 > 1)
    {
      v42 = v144;
      if (v34 == 2)
      {
        v43 = *(v145 + 24);
        goto LABEL_72;
      }

      if (v41 <= 0)
      {
        goto LABEL_75;
      }

LABEL_155:
      sub_26BE01600();
      swift_allocError();
      v126 = 1;
LABEL_156:
      *v125 = v126;
      swift_willThrow();
LABEL_157:
      v30 = v150;
      v29 = v151;
      v31 = v148;
      goto LABEL_176;
    }

    v42 = v144;
    if (v34)
    {
      v43 = v145 >> 32;
    }

    else
    {
      v43 = BYTE6(v144);
    }

LABEL_72:
    if (v43 < v41)
    {
      goto LABEL_155;
    }

LABEL_75:
    v160 = v145;
    v161 = v42;
    if (v41 < v38)
    {
      goto LABEL_192;
    }

    *&__dst = v38;
    *(&__dst + 1) = v38 + 1;
    sub_26BE00608(v145, v42);
    sub_26C008E1C();
    sub_26BE00258(v160, v161);
    v146 = v158;
    v166 = v38 + 1;
    v59 = v149;
    v60 = sub_26BF2F7B0();
    if (v59)
    {
      goto LABEL_157;
    }

    v143 = v60;
    v158 = 0;
    v48 = v166 + 8;
    if (__OFADD__(v166, 8))
    {
      goto LABEL_195;
    }

    v62 = v61;
    v63 = v164;
    v64 = v165;
    v65 = v165 >> 62;
    if ((v165 >> 62) > 1)
    {
      if (v65 != 2)
      {
        if (v48 > 0)
        {
LABEL_177:
          sub_26BE01600();
          swift_allocError();
          *v132 = 1;
          swift_willThrow();
          sub_26BE00258(v143, v62);
          goto LABEL_157;
        }

        goto LABEL_115;
      }

      v66 = *(v164 + 24);
    }

    else if (v65)
    {
      v66 = v164 >> 32;
    }

    else
    {
      v66 = BYTE6(v165);
    }

    if (v66 < v48)
    {
      goto LABEL_177;
    }

LABEL_115:
    v149 = 0;
    v160 = v164;
    v161 = v165;
    if (v48 < v166)
    {
      goto LABEL_197;
    }

    *&__dst = v166;
    *(&__dst + 1) = v166 + 8;
    sub_26BE00608(v164, v165);
    sub_26C008E1C();
    v83 = v63;
    sub_26BE00258(v160, v161);
    v145 = bswap64(v158);
    v166 = v48;
    v144 = v62 | 0x1000000000000000;
LABEL_130:
    sub_26BE00608(v83, v64);
    sub_26BE00608(v83, v64);
    v97 = v149;
    sub_26BF30764(&v164, &v160);
    if (v97)
    {
      v128 = v143;
      sub_26BE00258(v164, v165);
      sub_26BE00258(v83, v64);
      swift_willThrow();
      v164 = v83;
      v165 = v64;
      v166 = v48;
      goto LABEL_166;
    }

    if (v161)
    {
      v128 = v143;
      sub_26BE00258(v164, v165);
      v102 = v64;
      v101 = v83;
      goto LABEL_165;
    }

    v149 = 0;
    v98 = v160;
    v99 = v83;
    sub_26BE00258(v83, v64);
    v100 = v166 + v98;
    if (__OFADD__(v166, v98))
    {
      goto LABEL_186;
    }

    v101 = v164;
    v102 = v165;
    v103 = v165 >> 62;
    if ((v165 >> 62) <= 1)
    {
      if (v103)
      {
        v104 = v164 >> 32;
      }

      else
      {
        v104 = BYTE6(v165);
      }

LABEL_139:
      if (v104 < v100)
      {
        goto LABEL_164;
      }

      goto LABEL_142;
    }

    if (v103 == 2)
    {
      v104 = *(v164 + 24);
      goto LABEL_139;
    }

    if (v100 > 0)
    {
LABEL_164:
      v128 = v143;
      v83 = v99;
LABEL_165:
      sub_26BE00258(v101, v102);
      v164 = v83;
      v165 = v64;
      v166 = v48;
      sub_26BE01600();
      swift_allocError();
      *v129 = 1;
LABEL_166:
      v30 = v150;
      v29 = v151;
      v31 = v148;
      swift_willThrow();
      sub_26BEE5F24(v146, v128, v144, v145, sub_26BE00258);
LABEL_176:

      sub_26BE00258(v164, v165);
      goto LABEL_12;
    }

LABEL_142:
    if (v100 < v166)
    {
      goto LABEL_187;
    }

    v105 = sub_26C00909C();
    v106 = v105;
    v108 = v107;
    v166 = v100;
    v109 = v107 >> 62;
    if ((v107 >> 62) > 1)
    {
      if (v109 != 2)
      {
        goto LABEL_150;
      }

      v105 = *(v105 + 16);
      v110 = *(v106 + 24);
    }

    else
    {
      if (!v109)
      {
        goto LABEL_150;
      }

      v105 = v105;
      v110 = v106 >> 32;
    }

    if (v110 < v105)
    {
      goto LABEL_188;
    }

LABEL_150:
    v111 = sub_26C00909C();
    v113 = v112;
    sub_26BE00258(v106, v108);
    sub_26BE00258(v99, v64);
    v114 = v143;
    sub_26BEE5F24(v146, v143, v144, v145, sub_26BE00608);
    v141 = v111;
    v115 = v111;
    v116 = v113;
    sub_26BE00608(v115, v113);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_26BEEC5B8(0, *(v147 + 2) + 1, 1, v147);
    }

    v118 = *(v147 + 2);
    v117 = *(v147 + 3);
    v142 = v100;
    v140 = v118 + 1;
    if (v118 >= v117 >> 1)
    {
      v147 = sub_26BEEC5B8((v117 > 1), v118 + 1, 1, v147);
    }

    v119 = v146;
    v120 = v144;
    v121 = v145;
    sub_26BEE5F24(v146, v114, v144, v145, sub_26BE00258);
    v122 = v141;
    sub_26BE00258(v141, v116);
    v123 = v147;
    *(v147 + 2) = v140;
    v124 = &v123[48 * v118];
    *(v124 + 4) = v119;
    *(v124 + 5) = v114;
    *(v124 + 6) = v120;
    *(v124 + 7) = v121;
    *(v124 + 8) = v122;
    *(v124 + 9) = v116;
    result = v164;
    v32 = v165;
    v33 = v142;
  }

  if (v34 > 1)
  {
    v55 = v145;
    v53 = BYTE6(v144);
    if (v34 == 2)
    {
      v54 = *(v145 + 24);
    }

    else
    {
      v54 = 0;
    }
  }

  else
  {
    v53 = BYTE6(v144);
    v54 = BYTE6(v144);
    v55 = v145;
    if (v34)
    {
      v54 = v145 >> 32;
    }
  }

  v36 = __OFSUB__(v54, v38);
  v56 = v54 - v38;
  if (v36)
  {
    goto LABEL_190;
  }

  v57 = v38 + v56;
  if (__OFADD__(v38, v56))
  {
    goto LABEL_191;
  }

  if (v34 <= 1)
  {
    if (v34)
    {
      v58 = v55 >> 32;
    }

    else
    {
      v58 = v53;
    }

    goto LABEL_84;
  }

  if (v34 != 2)
  {
    if (v57 <= 0)
    {
      goto LABEL_87;
    }

LABEL_170:
    sub_26BE01600();
    swift_allocError();
    v126 = 5;
    goto LABEL_156;
  }

  v58 = *(v55 + 24);
LABEL_84:
  if (v58 < v57)
  {
    goto LABEL_170;
  }

LABEL_87:
  v146 = v158;
  if (v57 < v38)
  {
    goto LABEL_193;
  }

  result = sub_26C00909C();
  v68 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    if (v68 != 2)
    {
      goto LABEL_100;
    }

    v71 = *(result + 16);
    v70 = *(result + 24);
    v69 = v70 - v71;
    if (__OFSUB__(v70, v71))
    {
      goto LABEL_201;
    }

LABEL_97:
    if (v69)
    {
      v72 = result;
      v73 = v67;
      if (v69 < 1)
      {
        v74 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
        v74 = swift_allocObject();
        v75 = _swift_stdlib_malloc_size(v74);
        v74[2] = v69;
        v74[3] = 2 * v75 - 64;
      }

      v85 = sub_26C00902C();
      sub_26BE00258(v72, v73);
      (*v139)(v9, v153);
      if (v85 != v69)
      {
        goto LABEL_199;
      }
    }

    else
    {
LABEL_100:
      sub_26BE00258(result, v67);
      v74 = MEMORY[0x277D84F90];
    }

    v166 = v57;
    v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
    v162 = v86;
    v163 = sub_26BE13630(&qword_28045E440, &qword_28045E228, &qword_26C00CDD0);
    v160 = v74;
    v87 = __swift_project_boxed_opaque_existential_1(&v160, v86);
    v88 = *v87;
    v89 = *(*v87 + 16);
    if (v89)
    {
      if (v89 <= 0xE)
      {
        *(&__dst + 6) = 0;
        *&__dst = 0;
        BYTE14(__dst) = v89;
        memcpy(&__dst, (v88 + 32), v89);
        v143 = __dst;
        v95 = v138 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);

        v138 = v95;
      }

      else
      {
        v90 = sub_26C008EEC();
        v91 = *(v90 + 48);
        v92 = *(v90 + 52);
        swift_allocObject();

        v93 = sub_26C008E8C();
        v94 = v93;
        if (v89 >= 0x7FFFFFFF)
        {
          sub_26C00904C();
          v96 = swift_allocObject();
          *(v96 + 16) = 0;
          *(v96 + 24) = v89;
          v143 = v96;
          v95 = v94 | 0x8000000000000000;
        }

        else
        {
          v143 = v89 << 32;
          v95 = v93 | 0x4000000000000000;
        }
      }
    }

    else
    {

      v143 = 0;
      v95 = 0xC000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v160);

    v145 = 0;
    v144 = v95 | 0x2000000000000000;
    v83 = v164;
    v64 = v165;
    v48 = v166;
    goto LABEL_130;
  }

  if (!v68)
  {
    v69 = BYTE6(v67);
    goto LABEL_97;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v69 = HIDWORD(result) - result;
    goto LABEL_97;
  }

  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
  return result;
}

uint64_t sub_26BEE5E74(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 32);
  v5 = *(a2 + 16) + 1;
  while (--v5)
  {
    v6 = v4[1];
    v12[0] = *v4;
    v12[1] = v6;
    v12[2] = v4[2];
    sub_26BEE5F60(v12, &v11);
    v7 = sub_26BECC2F8(v12);
    if (v2)
    {
      goto LABEL_7;
    }

    v8 = v7;
    v4 += 3;
    sub_26BEE5FBC(v12);
    v9 = __OFADD__(a1, v8);
    a1 += v8;
    if (v9)
    {
      __break(1u);
LABEL_7:
      sub_26BEE5FBC(v12);
      return a1;
    }
  }

  return a1;
}

uint64_t sub_26BEE5F24(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v5 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v5 != 2)
    {
      return result;
    }
  }

  else if (!v5)
  {
    return a5(result, a2);
  }

  return a5(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
}

uint64_t MLS.ApplicationData.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_26BEE6028()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 4;
  if (__OFADD__(v1, 4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 <= 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v0;
  v12 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v11, v12);
  v7 = 0;
  v8 = bswap32(0);
  v0[2] = v2;
LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v8 | (v7 << 32);
}

uint64_t sub_26BEE6180()
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 2;
  if (__OFADD__(v1, 2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = 0;
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v11 = *v0;
  v12 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v11, v12);
  v7 = 0;
  v8 = bswap32(0) >> 16;
  v0[2] = v2;
LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v8 | (v7 << 16);
}

uint64_t sub_26BEE62D4()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 1;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v10 = *v0;
  v11 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v10, v11);
  v7 = 0;
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return (v7 << 8);
}

unint64_t sub_26BEE6420()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_26BEE6478();
}

unint64_t sub_26BEE6478()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[2];
  v2 = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 == 2)
    {
      if (*(v3 + 24) >= v2)
      {
        goto LABEL_7;
      }
    }

    else if (v2 < 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  if (v6 < v2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v9 = *v0;
  v10 = v0[1];
  if (v2 < v1)
  {
    goto LABEL_16;
  }

  sub_26BE00608(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
  sub_26BE016A8();
  sub_26BE016FC();
  sub_26C008E1C();
  sub_26BE00258(v9, v10);
  result = bswap64(0);
  v0[2] = v2;
LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.RatchetTree.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = 0;
  v67 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  v64 = a1;
  v65 = a2;
  v66 = v7;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v64, &v52);
  if (v3)
  {
    sub_26BE00258(v64, v65);
    v64 = a1;
    v65 = a2;
    v66 = v7;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (BYTE8(v52))
  {
    sub_26BE00258(v64, v65);
    v9 = a2;
    v10 = a1;
LABEL_13:
    sub_26BE00258(v10, v9);
    v64 = a1;
    v65 = a2;
    v66 = v7;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    goto LABEL_14;
  }

  v16 = v52;
  sub_26BE00258(a1, a2);
  if (v16 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v17 = 5;
    goto LABEL_9;
  }

  v18 = sub_26BF2A44C(v16);
  if (v19 >> 60 == 15)
  {
    v10 = v64;
    v9 = v65;
    goto LABEL_13;
  }

  v61 = v18;
  v62 = v19;
  v63 = v20;
  v21 = MEMORY[0x277D84F90];
  v40 = v7;
  while (1)
  {
    v22 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v22 == 2)
      {
        v23 = *(v18 + 24);
      }

      else
      {
        v23 = 0;
      }
    }

    else if (v22)
    {
      v23 = v18 >> 32;
    }

    else
    {
      v23 = BYTE6(v19);
    }

    v24 = __OFSUB__(v23, v20);
    v25 = v23 - v20;
    if (v24)
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
    }

    if (v25 < 1)
    {
      break;
    }

    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_60;
    }

    if (v22 <= 1)
    {
      if (v22)
      {
        v27 = v18 >> 32;
      }

      else
      {
        v27 = BYTE6(v19);
      }

LABEL_37:
      if (v27 < v26)
      {
        goto LABEL_50;
      }

      goto LABEL_40;
    }

    if (v22 == 2)
    {
      v27 = *(v18 + 24);
      goto LABEL_37;
    }

    if (v26 > 0)
    {
LABEL_50:
      sub_26BE01600();
      swift_allocError();
      *v38 = 1;
      goto LABEL_58;
    }

LABEL_40:
    *&v43 = v18;
    *(&v43 + 1) = v19;
    if (v26 < v20)
    {
      goto LABEL_61;
    }

    *&v41[0] = v20;
    *(&v41[0] + 1) = v20 + 1;
    sub_26BE00608(v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v43, *(&v43 + 1));
    v63 = v26;
    sub_26BE2E2B8(&v43);
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    v57 = v48;
    v52 = v43;
    v53 = v44;
    sub_26BECBB94(&v43, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_26BEEB900(0, v21[2] + 1, 1, v21);
    }

    v7 = v40;
    v29 = v21[2];
    v28 = v21[3];
    if (v29 >= v28 >> 1)
    {
      v21 = sub_26BEEB900((v28 > 1), v29 + 1, 1, v21);
    }

    v41[6] = v58;
    v41[7] = v59;
    v42 = v60;
    v41[2] = v54;
    v41[3] = v55;
    v41[4] = v56;
    v41[5] = v57;
    v41[0] = v52;
    v41[1] = v53;
    sub_26BE2E258(v41, &qword_28045E4C8, &unk_26C0112A0);
    v21[2] = v29 + 1;
    v30 = &v21[17 * v29];
    *(v30 + 2) = v43;
    v31 = v47;
    v33 = v44;
    v32 = v45;
    *(v30 + 5) = v46;
    *(v30 + 6) = v31;
    *(v30 + 3) = v33;
    *(v30 + 4) = v32;
    v35 = v49;
    v34 = v50;
    v36 = v48;
    v30[20] = v51;
    *(v30 + 8) = v35;
    *(v30 + 9) = v34;
    *(v30 + 7) = v36;
    v18 = v61;
    v19 = v62;
    v20 = v63;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v37 = *(v18 + 24);
    }

    else
    {
      v37 = 0;
    }
  }

  else if (v22)
  {
    v37 = v18 >> 32;
  }

  else
  {
    v37 = BYTE6(v19);
  }

  if (__OFSUB__(v37, v20))
  {
    goto LABEL_62;
  }

  if (v37 == v20)
  {
    sub_26BE00258(v18, v19);
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(v64, v65);
    *a3 = v21;
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v39 = 0;
    v39[112] = 1;
LABEL_58:
    swift_willThrow();

    sub_26BE00258(v61, v62);
LABEL_10:
    sub_26BE00258(v64, v65);
    v64 = a1;
    v65 = a2;
    v66 = v7;
LABEL_14:
    swift_willThrow();
    *&v52 = &type metadata for MLS.RatchetTree;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C0, &unk_26C011290);
    v12 = sub_26C00A4FC();
    sub_26BE826C4(v12, v13, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(v64, v65);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.KeyPackage.rawValue.getter()
{
  v2 = *(v0 + 144);
  v12[8] = *(v0 + 128);
  v12[9] = v2;
  v12[10] = *(v0 + 160);
  v13 = *(v0 + 176);
  v3 = *(v0 + 80);
  v12[4] = *(v0 + 64);
  v12[5] = v3;
  v4 = *(v0 + 112);
  v12[6] = *(v0 + 96);
  v12[7] = v4;
  v5 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v5;
  v6 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v6;
  v14 = xmmword_26C00BBD0;
  v15 = 0;
  sub_26BE00A98(v12);
  v7 = v14;
  if (v1)
  {
    return sub_26BE00258(v14, *(&v14 + 1));
  }

  v9 = *(&v14 + 1) >> 62;
  if ((*(&v14 + 1) >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v14 >> 32;
LABEL_9:
    if (v10 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v10 = *(v14 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v11 = sub_26C00909C();
  sub_26BE00258(v7, *(&v7 + 1));
  return v11;
}

uint64_t MLS.Credential.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BE03DC0(&v13);
  if (v3)
  {
    v14 = &type metadata for MLS.Credential;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F130, &qword_26C01A778);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    *a3 = v13;
  }

  return result;
}

uint64_t MLS.Credential.rawValue.getter()
{
  v9 = 0;
  v7 = *v0;
  v8 = xmmword_26C00BBD0;
  sub_26BE03BF4(&v7);
  v2 = v8;
  if (v1)
  {
    return sub_26BE00258(v8, *(&v8 + 1));
  }

  v4 = *(&v8 + 1) >> 62;
  if ((*(&v8 + 1) >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    v5 = v8 >> 32;
LABEL_9:
    if (v5 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v4 == 2)
  {
    v5 = *(v8 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v6 = sub_26C00909C();
  sub_26BE00258(v2, *(&v2 + 1));
  return v6;
}

uint64_t MLS.RatchetTree.rawValue.getter()
{
  v4 = *v0;
  sub_26BE7D80C(&v4);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v3 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v3;
}

uint64_t sub_26BEE6FEC(uint64_t a1, void (*a2)(uint64_t, __int128 *))
{
  v8 = xmmword_26C00BBD0;
  v9 = 0;
  a2(a1, &v8);
  v3 = v8;
  if (v2)
  {
    return sub_26BE00258(v8, *(&v8 + 1));
  }

  v5 = *(&v8 + 1) >> 62;
  if ((*(&v8 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v8 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v8 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v7 = sub_26C00909C();
  sub_26BE00258(v3, *(&v3 + 1));
  return v7;
}

uint64_t sub_26BEE70C8()
{
  v2 = *v0;
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v14 = xmmword_26C00BBD0;
  v15 = 0;
  LOWORD(v10) = v2;
  v11 = *(v0 + 4);
  v12 = v3;
  v13 = v4;
  sub_26BF8EBA0(&v10);
  v5 = v14;
  if (v1)
  {
    return sub_26BE00258(v14, *(&v14 + 1));
  }

  v7 = *(&v14 + 1) >> 62;
  if ((*(&v14 + 1) >> 62) <= 1)
  {
    if (!v7)
    {
      goto LABEL_11;
    }

    v8 = v14 >> 32;
LABEL_9:
    if (v8 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(v14 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v9 = sub_26C00909C();
  sub_26BE00258(v5, *(&v5 + 1));
  return v9;
}

uint64_t sub_26BEE71B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_26C00A4EC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 16);
  }

  else if (!v9)
  {
    goto LABEL_7;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v11 = sub_26BEE6180();
  if ((v11 & 0x10000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v16 = 1;
    swift_willThrow();
    goto LABEL_11;
  }

  v12 = v11;
  v13 = sub_26BF2F7B0();
  if (v3)
  {
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1C0, &qword_26C01A810);
    v17 = sub_26C00A4FC();
    sub_26BE826C4(v17, v18, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  v15 = v13;
  v28 = v14;
  v20 = sub_26BF2F7B0();
  v22 = v21;
  sub_26C00A4CC();
  v23 = sub_26C00A4AC();
  if (!v24)
  {
    sub_26BE01600();
    swift_allocError();
    *v26 = 9;
    swift_willThrow();
    sub_26BE00258(v15, v28);
    sub_26BE00258(v20, v22);
    goto LABEL_11;
  }

  v25 = v24;
  v27 = v23;
  sub_26BE00258(v20, v22);
  sub_26BE00258(a1, a2);
  result = sub_26BE00258(a1, a2);
  *a3 = v12;
  *(a3 + 8) = v15;
  *(a3 + 16) = v28;
  *(a3 + 24) = v27;
  *(a3 + 32) = v25;
  return result;
}

uint64_t Array<A>.rawValue.getter(uint64_t a1)
{
  v10 = xmmword_26C00BBD0;
  v11 = 0;
  v8 = xmmword_26C00BBD0;
  v9 = 0;
  v2 = sub_26BEEAFD8(0, a1, &v8);
  if (v1)
  {
    sub_26BE00258(v8, *(&v8 + 1));
    return sub_26BE00258(0, 0xC000000000000000);
  }

  sub_26BF30414(v2);
  sub_26BF2A30C(&v8);
  sub_26BE00258(v8, *(&v8 + 1));
  v4 = v10;
  v5 = *(&v10 + 1) >> 62;
  if ((*(&v10 + 1) >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = v10 >> 32;
LABEL_9:
    if (v6 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v5 == 2)
  {
    v6 = *(v10 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v7 = sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
  return v7;
}

uint64_t MLS.GroupInfo.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = a3;
    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
  a3 = v7;
LABEL_7:
  sub_26BED3A64(a3);
  if (v3)
  {
    type metadata accessor for MLS.GroupInfo();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA50, &qword_26C013E28);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
  }

  sub_26BE00258(a1, a2);
  return sub_26BE00258(a1, a2);
}

uint64_t MLS.Welcome.rawValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v12 = 0;
  LOWORD(v9[0]) = v2;
  v9[1] = v3;
  v10 = *(v0 + 1);
  v11 = xmmword_26C00BBD0;
  sub_26BE34228(v9);
  v4 = v11;
  if (v1)
  {
    return sub_26BE00258(v11, *(&v11 + 1));
  }

  v6 = *(&v11 + 1) >> 62;
  if ((*(&v11 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v11 >> 32;
LABEL_9:
    if (v7 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(v11 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v8 = sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
  return v8;
}

uint64_t MLS.Welcome.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  v56 = v5;
  v57 = a2;
  v58 = v7;
  v9 = sub_26BEE6180();
  if ((v9 & 0x10000) != 0)
  {
LABEL_15:
    sub_26BE01600();
    swift_allocError();
    *v15 = 1;
LABEL_16:
    swift_willThrow();
    v53 = &type metadata for MLS.Welcome;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA48, &qword_26C013E20);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, v5, a2);

    swift_willThrow();
    sub_26BE00258(v5, a2);
    return sub_26BE00258(v56, v57);
  }

  v51 = v9;
  v11 = v56;
  v10 = v57;
  v12 = v58;
  sub_26BE00608(v56, v57);
  sub_26BE00608(v56, v57);
  sub_26BF30764(&v56, &v53);
  if (v3)
  {
    sub_26BE00258(v56, v57);
    v56 = v11;
    v57 = v10;
    v58 = v12;
    goto LABEL_10;
  }

  if (v54)
  {
    sub_26BE00258(v56, v57);
    v13 = v10;
    v14 = v11;
LABEL_14:
    sub_26BE00258(v14, v13);
    v56 = v11;
    v57 = v10;
    v58 = v12;
    goto LABEL_15;
  }

  v19 = v53;
  sub_26BE00258(v11, v10);
  if (v19 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v20 = 5;
LABEL_10:
    swift_willThrow();
LABEL_11:
    sub_26BE00258(v56, v57);
    v56 = v11;
    v57 = v10;
    v58 = v12;
    goto LABEL_16;
  }

  v46 = v10;
  result = sub_26BF2A44C(v19);
  if (v21 >> 60 == 15)
  {
    v14 = v56;
    v13 = v57;
    goto LABEL_14;
  }

  v53 = result;
  v54 = v21;
  v55 = v22;
  v59 = MEMORY[0x277D84F90];
  v49 = v11;
  v50 = v12;
  v47 = v5;
  for (i = a3; ; a3 = i)
  {
    v23 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v23 == 2)
      {
        v24 = *(result + 24);
      }

      else
      {
        v24 = 0;
      }
    }

    else if (v23)
    {
      v24 = result >> 32;
    }

    else
    {
      v24 = BYTE6(v21);
    }

    v25 = __OFSUB__(v24, v22);
    v26 = v24 - v22;
    if (v25)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    if (v26 < 1)
    {
      break;
    }

    v27 = sub_26BF2F7B0();
    v52 = v28;
    v29 = v27;
    v30 = sub_26BF2F7B0();
    v32 = v31;
    v33 = sub_26BF2F7B0();
    v35 = v34;
    sub_26BE00608(v29, v52);
    sub_26BE00608(v30, v32);
    sub_26BE00608(v33, v35);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_26BEECA34(0, *(v59 + 2) + 1, 1, v59);
    }

    v37 = *(v59 + 2);
    v36 = *(v59 + 3);
    if (v37 >= v36 >> 1)
    {
      v59 = sub_26BEECA34((v36 > 1), v37 + 1, 1, v59);
    }

    sub_26BE00258(v29, v52);
    sub_26BE00258(v30, v32);
    sub_26BE00258(v33, v35);
    v38 = v59;
    *(v59 + 2) = v37 + 1;
    v39 = &v38[48 * v37];
    *(v39 + 4) = v29;
    *(v39 + 5) = v52;
    *(v39 + 6) = v30;
    *(v39 + 7) = v32;
    *(v39 + 8) = v33;
    *(v39 + 9) = v35;
    result = v53;
    v21 = v54;
    v22 = v55;
    v11 = v49;
    v12 = v50;
    v5 = v47;
  }

  if (v23 > 1)
  {
    v10 = v46;
    if (v23 == 2)
    {
      v40 = *(result + 24);
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    if (v23)
    {
      v40 = result >> 32;
    }

    else
    {
      v40 = BYTE6(v21);
    }

    v10 = v46;
  }

  if (__OFSUB__(v40, v22))
  {
    goto LABEL_49;
  }

  if (v40 != v22)
  {
    sub_26BE01654();
    swift_allocError();
    *v41 = 0;
    v41[112] = 1;
    swift_willThrow();

    sub_26BE00258(v53, v54);
    goto LABEL_11;
  }

  sub_26BE00258(result, v21);
  sub_26BE00258(v11, v10);
  v42 = sub_26BF2F7B0();
  v43 = v5;
  v45 = v44;
  sub_26BE00258(v43, a2);
  result = sub_26BE00258(v56, v57);
  *a3 = v51;
  *(a3 + 8) = v59;
  *(a3 + 16) = v42;
  *(a3 + 24) = v45;
  return result;
}

uint64_t MLS.KeyPackage.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BE00E2C(v18);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EA40, &qword_26C013E18);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    v13 = v18[9];
    *(a3 + 128) = v18[8];
    *(a3 + 144) = v13;
    *(a3 + 160) = v18[10];
    *(a3 + 176) = v19;
    v14 = v18[5];
    *(a3 + 64) = v18[4];
    *(a3 + 80) = v14;
    v15 = v18[7];
    *(a3 + 96) = v18[6];
    *(a3 + 112) = v15;
    v16 = v18[1];
    *a3 = v18[0];
    *(a3 + 16) = v16;
    v17 = v18[3];
    *(a3 + 32) = v18[2];
    *(a3 + 48) = v17;
  }

  return result;
}

uint64_t MLS.UpdatePath.rawValue.getter()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  v44 = *(v0 + 96);
  v45 = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v40 = *(v0 + 32);
  v41 = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v42 = *(v0 + 64);
  v43 = v8;
  v9 = *(v0 + 16);
  v39[0] = *v0;
  v39[1] = v9;
  v10 = *(v0 + 112);
  v34 = v44;
  v35 = v10;
  v30 = v40;
  v31 = v7;
  v11 = *(v0 + 136);
  v46 = *(v0 + 128);
  v32 = v42;
  v33 = v3;
  v37 = xmmword_26C00BBD0;
  v38 = 0;
  v36 = *(v0 + 128);
  v28 = v39[0];
  v29 = v5;
  sub_26BE00758(v39, &v19);
  sub_26BE7DD28(&v28);
  if (!v1)
  {
    v25 = v34;
    v26 = v35;
    v27 = v36;
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v19 = v28;
    v20 = v29;
    sub_26BE00854(&v19);
    v17 = xmmword_26C00BBD0;
    v18 = 0;
    v12 = sub_26BEEB0F4(0, v11);
    sub_26BF30414(v12);
    sub_26BF2A30C(&v17);
    sub_26BE00258(v17, *(&v17 + 1));
    v14 = v37;
    v15 = *(&v37 + 1) >> 62;
    if ((*(&v37 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_13:
        v2 = sub_26C00909C();
        sub_26BE00258(v14, *(&v14 + 1));
        return v2;
      }

      v16 = *(v37 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_13;
      }

      v16 = v37 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  v25 = v34;
  v26 = v35;
  v27 = v36;
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v24 = v33;
  v19 = v28;
  v20 = v29;
  sub_26BE00854(&v19);
  sub_26BE00258(v37, *(&v37 + 1));
  return v2;
}

uint64_t MLS.UpdatePath.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = v3;
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v9 = v3;
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
    v3 = v9;
  }

  v82 = a1;
  v83 = a2;
  v84 = v7;
  sub_26BE7DE38(v80);
  if (v3)
  {
LABEL_14:
    *&v80[0] = &type metadata for MLS.UpdatePath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F138, &qword_26C01A780);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(v82, v83);
  }

  v77 = v80[6];
  v78 = v80[7];
  v79 = v81;
  v73 = v80[2];
  v74 = v80[3];
  v75 = v80[4];
  v76 = v80[5];
  v71 = v80[0];
  v72 = v80[1];
  v11 = v82;
  v10 = v83;
  v12 = v84;
  sub_26BE00608(v82, v83);
  sub_26BE00608(v11, v10);
  sub_26BF30764(&v82, &v68);
  if (v69)
  {
    sub_26BE00258(v82, v83);
    v13 = v10;
    v14 = v11;
LABEL_12:
    sub_26BE00258(v14, v13);
    v82 = v11;
    v83 = v10;
    v84 = v12;
    sub_26BE01600();
    swift_allocError();
    *v15 = 1;
LABEL_13:
    swift_willThrow();
    sub_26BE00854(&v71);
    goto LABEL_14;
  }

  v60 = a3;
  v19 = v68;
  sub_26BE00258(v11, v10);
  if (v19 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v20 = 5;
    swift_willThrow();
LABEL_9:
    sub_26BE00258(v82, v83);
    v82 = v11;
    v83 = v10;
    v84 = v12;
    goto LABEL_13;
  }

  result = sub_26BF2A44C(v19);
  if (v21 >> 60 == 15)
  {
    v14 = v82;
    v13 = v83;
    goto LABEL_12;
  }

  v23 = v21;
  v68 = result;
  v69 = v21;
  v70 = v22;
  v65 = MEMORY[0x277D84F90];
  v57 = v10;
  v58 = v12;
  for (i = v11; ; v11 = i)
  {
    v24 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v25 = *(result + 24);
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      v25 = result >> 32;
    }

    else
    {
      v25 = BYTE6(v23);
    }

    v26 = __OFSUB__(v25, v22);
    v27 = v25 - v22;
    if (v26)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v27 < 1)
    {
      break;
    }

    v63 = v22;
    v28 = result;
    sub_26BE00608(result, v23);
    v85 = v28;
    sub_26BE00608(v28, v23);
    sub_26BF30764(&v68, &v66);
    if (v67)
    {
      sub_26BE00258(v68, v69);
      v31 = v23;
      v48 = v85;
      v32 = v85;
      goto LABEL_60;
    }

    v29 = v66;
    v61 = v23;
    sub_26BE00258(v85, v23);
    result = v70;
    v30 = v70 + v29;
    if (__OFADD__(v70, v29))
    {
      goto LABEL_72;
    }

    v32 = v68;
    v31 = v69;
    v33 = v69 >> 62;
    if ((v69 >> 62) <= 1)
    {
      if (v33)
      {
        v34 = v68 >> 32;
      }

      else
      {
        v34 = BYTE6(v69);
      }

LABEL_37:
      if (v34 < v30)
      {
        goto LABEL_59;
      }

      goto LABEL_40;
    }

    if (v33 == 2)
    {
      v34 = *(v68 + 24);
      goto LABEL_37;
    }

    if (v30 > 0)
    {
LABEL_59:
      v23 = v61;
      v48 = v85;
LABEL_60:
      sub_26BE00258(v32, v31);
      v68 = v48;
      v69 = v23;
      v70 = v63;
      sub_26BE01600();
      swift_allocError();
      *v49 = 1;
LABEL_61:
      swift_willThrow();
LABEL_63:

      sub_26BE00258(v68, v69);
      goto LABEL_9;
    }

LABEL_40:
    if (v30 < v70)
    {
      goto LABEL_73;
    }

    v62 = v68;
    v64 = v69;
    result = sub_26C00909C();
    v35 = result;
    v37 = v36;
    v70 = v30;
    v38 = v36 >> 62;
    if ((v36 >> 62) > 1)
    {
      if (v38 != 2)
      {
        goto LABEL_48;
      }

      result = *(result + 16);
      v39 = *(v35 + 24);
    }

    else
    {
      if (!v38)
      {
        goto LABEL_48;
      }

      result = result;
      v39 = v35 >> 32;
    }

    if (v39 < result)
    {
      goto LABEL_74;
    }

LABEL_48:
    v40 = sub_26C00909C();
    v42 = v41;
    sub_26BE00258(v35, v37);
    sub_26BE00258(v85, v61);
    sub_26BE00608(v62, v64);
    v43 = sub_26BF2FE68(&v68, sub_26BFF72A0, 0);
    if (!v43)
    {
      sub_26BE00258(v68, v69);
      v68 = v62;
      v69 = v64;
      sub_26BE01600();
      swift_allocError();
      *v50 = 1;
      swift_willThrow();
      sub_26BE00258(v40, v42);
      v12 = v58;
      v11 = i;
      goto LABEL_63;
    }

    sub_26BE00258(v62, v64);
    sub_26BE00608(v40, v42);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_26BEECC88(0, *(v65 + 2) + 1, 1, v65);
    }

    v45 = *(v65 + 2);
    v44 = *(v65 + 3);
    if (v45 >= v44 >> 1)
    {
      v65 = sub_26BEECC88((v44 > 1), v45 + 1, 1, v65);
    }

    sub_26BE00258(v40, v42);

    *(v65 + 2) = v45 + 1;
    v46 = &v65[24 * v45];
    *(v46 + 4) = v40;
    *(v46 + 5) = v42;
    *(v46 + 6) = v43;
    result = v68;
    v23 = v69;
    v22 = v70;
    v10 = v57;
    v12 = v58;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v47 = *(result + 24);
    }

    else
    {
      v47 = 0;
    }
  }

  else if (v24)
  {
    v47 = result >> 32;
  }

  else
  {
    v47 = BYTE6(v23);
  }

  if (__OFSUB__(v47, v22))
  {
LABEL_75:
    __break(1u);
    return result;
  }

  if (v47 != v22)
  {
    sub_26BE01654();
    swift_allocError();
    *v56 = 0;
    v56[112] = 1;
    goto LABEL_61;
  }

  sub_26BE00258(result, v23);
  sub_26BE00258(v11, v10);
  sub_26BE00258(a1, a2);
  result = sub_26BE00258(v82, v83);
  v51 = v78;
  *(v60 + 96) = v77;
  *(v60 + 112) = v51;
  v52 = v79;
  v53 = v74;
  *(v60 + 32) = v73;
  *(v60 + 48) = v53;
  v54 = v76;
  *(v60 + 64) = v75;
  *(v60 + 80) = v54;
  v55 = v72;
  *v60 = v71;
  *(v60 + 16) = v55;
  *(v60 + 128) = v52;
  *(v60 + 136) = v65;
  return result;
}

uint64_t sub_26BEE86E0(void (*a1)(uint64_t))
{
  a1(v1);
  if (v2)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v4 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v4;
}

uint64_t MLS.AuthenticatedContent.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MLS.AuthenticatedContent();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 24);
  v13 = type metadata accessor for MLS.FramedContentAuthData();
  (*(*(v13 - 8) + 56))(a3 + v12, 1, 1, v13);
  v14 = 0;
  v15 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v15 != 2)
    {
      goto LABEL_7;
    }

    v14 = *(a1 + 16);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_7;
    }

    v14 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v20 = a1;
  v21 = a2;
  v22 = v14;
  sub_26BF9CC74(v11);
  if (v3)
  {
    v19 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F140, &qword_26C01A788);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v20, v21);
    return sub_26BE2E258(a3 + v12, &qword_28045E4E0, &qword_26C015A80);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v20, v21);
    sub_26BE2E258(a3 + v12, &qword_28045E4E0, &qword_26C015A80);
    return sub_26BEEE52C(v11, a3, type metadata accessor for MLS.AuthenticatedContent);
  }
}

uint64_t MLS.FramedContent.Content.rawValue.getter()
{
  v2 = v0[9];
  v12[8] = v0[8];
  v12[9] = v2;
  v13[0] = v0[10];
  *(v13 + 9) = *(v0 + 169);
  v3 = v0[5];
  v12[4] = v0[4];
  v12[5] = v3;
  v4 = v0[7];
  v12[6] = v0[6];
  v12[7] = v4;
  v5 = v0[1];
  v12[0] = *v0;
  v12[1] = v5;
  v6 = v0[3];
  v12[2] = v0[2];
  v12[3] = v6;
  v14 = xmmword_26C00BBD0;
  v15 = 0;
  sub_26BEDCCE4(v12);
  v7 = v14;
  if (v1)
  {
    return sub_26BE00258(v14, *(&v14 + 1));
  }

  v9 = *(&v14 + 1) >> 62;
  if ((*(&v14 + 1) >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v14 >> 32;
LABEL_9:
    if (v10 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v10 = *(v14 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v11 = sub_26C00909C();
  sub_26BE00258(v7, *(&v7 + 1));
  return v11;
}

uint64_t MLS.Proposal.rawValue.getter()
{
  v2 = *(v0 + 144);
  v12[8] = *(v0 + 128);
  v12[9] = v2;
  v12[10] = *(v0 + 160);
  v13 = *(v0 + 176);
  v3 = *(v0 + 80);
  v12[4] = *(v0 + 64);
  v12[5] = v3;
  v4 = *(v0 + 112);
  v12[6] = *(v0 + 96);
  v12[7] = v4;
  v5 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v5;
  v6 = *(v0 + 48);
  v12[2] = *(v0 + 32);
  v12[3] = v6;
  v14 = xmmword_26C00BBD0;
  v15 = 0;
  sub_26BF31160(v12);
  v7 = v14;
  if (v1)
  {
    return sub_26BE00258(v14, *(&v14 + 1));
  }

  v9 = *(&v14 + 1) >> 62;
  if ((*(&v14 + 1) >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v14 >> 32;
LABEL_9:
    if (v10 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v9 == 2)
  {
    v10 = *(v14 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v11 = sub_26C00909C();
  sub_26BE00258(v7, *(&v7 + 1));
  return v11;
}

uint64_t MLS.Proposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BF3182C(v18);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F150, &qword_26C01A798);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    v13 = v18[9];
    *(a3 + 128) = v18[8];
    *(a3 + 144) = v13;
    *(a3 + 160) = v18[10];
    *(a3 + 176) = v19;
    v14 = v18[5];
    *(a3 + 64) = v18[4];
    *(a3 + 80) = v14;
    v15 = v18[7];
    *(a3 + 96) = v18[6];
    *(a3 + 112) = v15;
    v16 = v18[1];
    *a3 = v18[0];
    *(a3 + 16) = v16;
    v17 = v18[3];
    *(a3 + 32) = v18[2];
    *(a3 + 48) = v17;
  }

  return result;
}

uint64_t MLS.GroupSecrets.rawValue.getter()
{
  v2 = *(v0 + 32);
  v11 = xmmword_26C00BBD0;
  v12 = 0;
  v3 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v3;
  v10 = v2;
  sub_26BEE4A58(v9);
  v4 = v11;
  if (v1)
  {
    return sub_26BE00258(v11, *(&v11 + 1));
  }

  v6 = *(&v11 + 1) >> 62;
  if ((*(&v11 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v11 >> 32;
LABEL_9:
    if (v7 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(v11 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v8 = sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
  return v8;
}

uint64_t MLS.GroupSecrets.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BEE4D28(v15);
  if (v3)
  {
    v17 = &type metadata for MLS.GroupSecrets;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F158, &qword_26C01A7A0);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    return sub_26BE136AC(0, 0xF000000000000000);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(a1, a2);
    v13 = v16;
    result = sub_26BE136AC(0, 0xF000000000000000);
    v14 = v15[1];
    *a3 = v15[0];
    *(a3 + 16) = v14;
    *(a3 + 32) = v13;
  }

  return result;
}

uint64_t MLS.GroupContext.rawValue.getter()
{
  v2 = *(v0 + 48);
  v9[2] = *(v0 + 32);
  v9[3] = v2;
  v10 = *(v0 + 64);
  v3 = *(v0 + 16);
  v9[0] = *v0;
  v9[1] = v3;
  v11 = xmmword_26C00BBD0;
  v12 = 0;
  sub_26BFAF494(v9);
  v4 = v11;
  if (v1)
  {
    return sub_26BE00258(v11, *(&v11 + 1));
  }

  v6 = *(&v11 + 1) >> 62;
  if ((*(&v11 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v11 >> 32;
LABEL_9:
    if (v7 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(v11 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v8 = sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
  return v8;
}

uint64_t MLS.GroupContext.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BFAF814(v15);
  if (v3)
  {
    v17 = &type metadata for MLS.GroupContext;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F160, &qword_26C01A7A8);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    v13 = v15[3];
    *(a3 + 32) = v15[2];
    *(a3 + 48) = v13;
    *(a3 + 64) = v16;
    v14 = v15[1];
    *a3 = v15[0];
    *(a3 + 16) = v14;
  }

  return result;
}

uint64_t MLS.AddProposal.rawValue.getter()
{
  v3 = v0[9];
  v4 = v0[7];
  v51 = v0[8];
  v52 = v3;
  v5 = v0[9];
  v53 = v0[10];
  v6 = v0[5];
  v7 = v0[3];
  v47 = v0[4];
  v48 = v6;
  v8 = v0[5];
  v9 = v0[7];
  v49 = v0[6];
  v50 = v9;
  v10 = v0[1];
  v44[0] = *v0;
  v44[1] = v10;
  v11 = v0[3];
  v13 = *v0;
  v12 = v0[1];
  v45 = v0[2];
  v46 = v11;
  v42 = xmmword_26C00BBD0;
  v38 = v51;
  v39 = v5;
  v40 = v0[10];
  v34 = v47;
  v35 = v8;
  v36 = v49;
  v37 = v4;
  v30 = v13;
  v31 = v12;
  v54 = *(v0 + 22);
  v43 = 0;
  v41 = *(v0 + 22);
  v32 = v45;
  v33 = v7;
  sub_26BE2DFC0(v44, &v18);
  sub_26BE00A98(&v30);
  if (!v1)
  {
    v26 = v38;
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v22 = v34;
    v23 = v35;
    v24 = v36;
    v25 = v37;
    v18 = v30;
    v19 = v31;
    v20 = v32;
    v21 = v33;
    sub_26BE2E01C(&v18);
    v14 = v42;
    v15 = *(&v42 + 1) >> 62;
    if ((*(&v42 + 1) >> 62) > 1)
    {
      if (v15 != 2)
      {
LABEL_11:
        v2 = sub_26C00909C();
        sub_26BE00258(v14, *(&v14 + 1));
        return v2;
      }

      v16 = *(v42 + 24);
    }

    else
    {
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v42 >> 32;
    }

    if (v16 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  v26 = v38;
  v27 = v39;
  v28 = v40;
  v29 = v41;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v25 = v37;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  sub_26BE2E01C(&v18);
  sub_26BE00258(v42, *(&v42 + 1));
  return v2;
}

uint64_t MLS.AddProposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = a1;
  }

  sub_26BE00608(a1, a2);
  v3 = v9;
LABEL_7:
  v20 = a1;
  v21 = a2;
  v22 = v7;
  sub_26BE00E2C(v18);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F168, &qword_26C01A7B0);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(v20, v21);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(v20, v21);
    v13 = v18[9];
    *(a3 + 128) = v18[8];
    *(a3 + 144) = v13;
    *(a3 + 160) = v18[10];
    *(a3 + 176) = v19;
    v14 = v18[5];
    *(a3 + 64) = v18[4];
    *(a3 + 80) = v14;
    v15 = v18[7];
    *(a3 + 96) = v18[6];
    *(a3 + 112) = v15;
    v16 = v18[1];
    *a3 = v18[0];
    *(a3 + 16) = v16;
    v17 = v18[3];
    *(a3 + 32) = v18[2];
    *(a3 + 48) = v17;
  }

  return result;
}

uint64_t MLS.UpdateProposal.rawValue.getter()
{
  v3 = *(v0 + 80);
  v4 = *(v0 + 112);
  v40 = *(v0 + 96);
  v41 = v4;
  v5 = *(v0 + 16);
  v6 = *(v0 + 48);
  v36 = *(v0 + 32);
  v37 = v6;
  v7 = *(v0 + 48);
  v8 = *(v0 + 80);
  v38 = *(v0 + 64);
  v39 = v8;
  v9 = *(v0 + 16);
  v35[0] = *v0;
  v35[1] = v9;
  v33 = xmmword_26C00BBD0;
  v10 = *(v0 + 112);
  v30 = v40;
  v31 = v10;
  v26 = v36;
  v27 = v7;
  v28 = v38;
  v29 = v3;
  v42 = *(v0 + 128);
  v34 = 0;
  v32 = *(v0 + 128);
  v24 = v35[0];
  v25 = v5;
  sub_26BE00758(v35, &v15);
  sub_26BE7DD28(&v24);
  if (!v1)
  {
    v21 = v30;
    v22 = v31;
    v23 = v32;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v15 = v24;
    v16 = v25;
    sub_26BE00854(&v15);
    v11 = v33;
    v12 = *(&v33 + 1) >> 62;
    if ((*(&v33 + 1) >> 62) > 1)
    {
      if (v12 != 2)
      {
LABEL_11:
        v2 = sub_26C00909C();
        sub_26BE00258(v11, *(&v11 + 1));
        return v2;
      }

      v13 = *(v33 + 24);
    }

    else
    {
      if (!v12)
      {
        goto LABEL_11;
      }

      v13 = v33 >> 32;
    }

    if (v13 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  v21 = v30;
  v22 = v31;
  v23 = v32;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v15 = v24;
  v16 = v25;
  sub_26BE00854(&v15);
  sub_26BE00258(v33, *(&v33 + 1));
  return v2;
}

uint64_t MLS.UpdateProposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = v3;
    v7 = a1;
  }

  sub_26BE00608(a1, a2);
  v3 = v9;
LABEL_7:
  v19 = a1;
  v20 = a2;
  v21 = v7;
  sub_26BE7DE38(v17);
  if (v3)
  {
    v22 = &type metadata for MLS.UpdateProposal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F170, &qword_26C01A7B8);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(v19, v20);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(v19, v20);
    v13 = v17[7];
    *(a3 + 96) = v17[6];
    *(a3 + 112) = v13;
    *(a3 + 128) = v18;
    v14 = v17[3];
    *(a3 + 32) = v17[2];
    *(a3 + 48) = v14;
    v15 = v17[5];
    *(a3 + 64) = v17[4];
    *(a3 + 80) = v15;
    v16 = v17[1];
    *a3 = v17[0];
    *(a3 + 16) = v16;
  }

  return result;
}

uint64_t MLS.RemoveProposal.rawValue.getter()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v13 = xmmword_26C00BBD0;
  v14 = 0;
  v11 = bswap32(v1);
  v12[3] = MEMORY[0x277D838B0];
  v12[4] = MEMORY[0x277CC9C18];
  v12[0] = &v11;
  v12[1] = v12;
  v2 = __swift_project_boxed_opaque_existential_1(v12, MEMORY[0x277D838B0]);
  v4 = *v2;
  v3 = v2[1];
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v5 = v13;
  v6 = *(&v13 + 1) >> 62;
  if ((*(&v13 + 1) >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v7 = *(v13 + 24);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_8;
    }

    v7 = v13 >> 32;
  }

  if (v7 < 0)
  {
    __break(1u);
  }

LABEL_8:
  v8 = sub_26C00909C();
  sub_26BE00258(v5, *(&v5 + 1));
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t MLS.RemoveProposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 16);
  }

  else if (!v6)
  {
    goto LABEL_7;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v8 = sub_26BEE6028();
  if ((v8 & 0x100000000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F178, &qword_26C01A7C0);
    v12 = sub_26C00A4FC();
    sub_26BE826C4(v12, v13, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    v9 = v8;
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    *a3 = v9;
  }

  return result;
}

uint64_t MLS.PreSharedKeyProposal.rawValue.getter()
{
  v2 = v0[1];
  v5[0] = *v0;
  v5[1] = v2;
  v5[2] = v0[2];
  sub_26BECC2F8(v5);
  if (v1)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  v4 = sub_26C00909C();
  sub_26BE00258(0, 0xC000000000000000);
  return v4;
}

uint64_t MLS.PreSharedKeyProposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BECC664(v16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F180, &qword_26C01A7C8);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    v13 = v17;
    v14 = v18;
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    v15 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v15;
    *(a3 + 32) = v13;
    *(a3 + 40) = v14;
  }

  return result;
}

uint64_t MLS.ReInitProposal.rawValue.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 3);
  v12 = xmmword_26C00BBD0;
  v13 = 0;
  v9 = *v0;
  v10 = v2;
  v11 = v3;
  sub_26BFAE974(&v9);
  v4 = v12;
  if (v1)
  {
    return sub_26BE00258(v12, *(&v12 + 1));
  }

  v6 = *(&v12 + 1) >> 62;
  if ((*(&v12 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v12 >> 32;
LABEL_9:
    if (v7 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(v12 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v8 = sub_26C00909C();
  sub_26BE00258(v4, *(&v4 + 1));
  return v8;
}

uint64_t MLS.ReInitProposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_7;
    }

    v8 = v3;
    v9 = *(a1 + 16);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = v3;
  }

  sub_26BE00608(a1, a2);
  v3 = v8;
LABEL_7:
  sub_26BFAEB6C(&v15);
  if (v3)
  {
    v18 = &type metadata for MLS.ReInitProposal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F188, &qword_26C01A7D0);
    v10 = sub_26C00A4FC();
    sub_26BE826C4(v10, v11, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    v13 = v16;
    v14 = v17;
    *a3 = v15;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
  }

  return result;
}

void sub_26BEE9E90()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v2), v2))
  {
    __break(1u);
    return;
  }

  v5 = HIDWORD(v2) - v2;
LABEL_10:
  sub_26BF30414(v5);
  if (!v1)
  {
    sub_26BE11228(v2, v3);
    sub_26C00909C();
  }

  sub_26BE00258(0, 0xC000000000000000);
}

uint64_t sub_26BEE9FE8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v11 != 2)
    {
      goto LABEL_7;
    }

    v12 = v5;
    v13 = *(a1 + 16);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v5;
  }

  sub_26BE00608(a1, a2);
  v5 = v12;
LABEL_7:
  v14 = sub_26BF2F7B0();
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v16 = sub_26C00A4FC();
    sub_26BE826C4(v16, v17, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    return sub_26BE00258(a1, a2);
  }

  else
  {
    v19 = v14;
    v20 = v15;
    sub_26BE00258(a1, a2);
    result = sub_26BE00258(a1, a2);
    *a5 = v19;
    a5[1] = v20;
  }

  return result;
}

uint64_t MLS.GroupContextExtensionsProposal.rawValue.getter()
{
  v2 = *v0;
  v11 = xmmword_26C00BBD0;
  v12 = 0;
  v9 = xmmword_26C00BBD0;
  v10 = 0;
  v3 = sub_26BEEAC24(0, v2);
  if (v1)
  {
    sub_26BE00258(v9, *(&v9 + 1));
    return sub_26BE00258(0, 0xC000000000000000);
  }

  sub_26BF30414(v3);
  sub_26BF2A30C(&v9);
  sub_26BE00258(v9, *(&v9 + 1));
  v5 = v11;
  v6 = *(&v11 + 1) >> 62;
  if ((*(&v11 + 1) >> 62) <= 1)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = v11 >> 32;
LABEL_9:
    if (v7 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v6 == 2)
  {
    v7 = *(v11 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v8 = sub_26C00909C();
  sub_26BE00258(v5, *(&v5 + 1));
  return v8;
}

uint64_t MLS.GroupContextExtensionsProposal.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = 0;
  v68 = *MEMORY[0x277D85DE8];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v7 = *(a1 + 16);
      goto LABEL_6;
    }
  }

  else if (v8)
  {
    v7 = a1;
LABEL_6:
    sub_26BE00608(a1, a2);
  }

  v65 = a1;
  v66 = a2;
  v67 = v7;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v65, &v62);
  if (v3)
  {
    sub_26BE00258(v65, v66);
    v65 = a1;
    v66 = a2;
    v67 = v7;
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (v63)
  {
    sub_26BE00258(v65, v66);
    v9 = a2;
    v10 = a1;
LABEL_13:
    sub_26BE00258(v10, v9);
    v65 = a1;
    v66 = a2;
    v67 = v7;
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    goto LABEL_14;
  }

  v16 = v62;
  sub_26BE00258(a1, a2);
  if (v16 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v17 = 5;
    goto LABEL_9;
  }

  v18 = sub_26BF2A44C(v16);
  if (v19 >> 60 == 15)
  {
    v10 = v65;
    v9 = v66;
    goto LABEL_13;
  }

  v21 = v20;
  v62 = v18;
  v63 = v19;
  v22 = v19 >> 62;
  v52 = v18 >> 32;
  v59 = MEMORY[0x277D84F90];
  v53 = BYTE6(v19);
  v54 = v19 >> 62;
  v64 = v20;
  v56 = a3;
  v57 = v7;
  v55 = v18;
  if ((v19 >> 62) > 1)
  {
    goto LABEL_23;
  }

LABEL_21:
  v23 = v53;
  if (v22)
  {
    v23 = v52;
  }

  while (1)
  {
    v24 = __OFSUB__(v23, v21);
    v25 = v23 - v21;
    if (v24)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    if (v25 < 1)
    {
      v48 = v63 >> 62;
      if ((v63 >> 62) > 1)
      {
        if (v48 == 2)
        {
          v49 = *(v62 + 24);
        }

        else
        {
          v49 = 0;
        }
      }

      else if (v48)
      {
        v49 = v62 >> 32;
      }

      else
      {
        v49 = BYTE6(v63);
      }

      if (!__OFSUB__(v49, v21))
      {
        if (v49 != v21)
        {
          sub_26BE01654();
          swift_allocError();
          *v51 = 0;
          v51[112] = 1;
          goto LABEL_71;
        }

        sub_26BE00258(v62, v63);
        sub_26BE00258(a1, a2);
        sub_26BE00258(a1, a2);
        result = sub_26BE00258(v65, v66);
        *a3 = v59;
        goto LABEL_15;
      }

LABEL_85:
      __break(1u);
    }

    v26 = v21 + 2;
    if (__OFADD__(v21, 2))
    {
      goto LABEL_80;
    }

    v27 = v62;
    v28 = v63;
    v29 = v63 >> 62;
    if ((v63 >> 62) <= 1)
    {
      if (v29)
      {
        v30 = v62 >> 32;
      }

      else
      {
        v30 = BYTE6(v63);
      }

LABEL_35:
      if (v30 < v26)
      {
        goto LABEL_70;
      }

      goto LABEL_38;
    }

    if (v29 == 2)
    {
      v30 = *(v62 + 24);
      goto LABEL_35;
    }

    if (v26 > 0)
    {
      goto LABEL_70;
    }

LABEL_38:
    v60 = v62;
    v61 = v63;
    if (v26 < v21)
    {
      goto LABEL_81;
    }

    sub_26BE00608(v62, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E270, &unk_26C00E290);
    v58 = v27;
    sub_26BE016A8();
    sub_26BE016FC();
    sub_26C008E1C();
    sub_26BE00258(v60, v61);
    v64 = v21 + 2;
    sub_26BE00608(v27, v28);
    sub_26BE00608(v27, v28);
    sub_26BF30764(&v62, &v60);
    if (v61)
    {
      break;
    }

    v31 = v60;
    sub_26BE00258(v27, v28);
    v24 = __OFADD__(v64, v31);
    v21 = v64 + v31;
    if (v24)
    {
      goto LABEL_82;
    }

    v32 = v62;
    v33 = v63;
    v34 = v63 >> 62;
    if ((v63 >> 62) <= 1)
    {
      if (v34)
      {
        v35 = v62 >> 32;
      }

      else
      {
        v35 = BYTE6(v63);
      }

LABEL_47:
      if (v35 < v21)
      {
        goto LABEL_69;
      }

      goto LABEL_50;
    }

    if (v34 == 2)
    {
      v35 = *(v62 + 24);
      goto LABEL_47;
    }

    if (v21 > 0)
    {
      goto LABEL_69;
    }

LABEL_50:
    if (v21 < v64)
    {
      goto LABEL_83;
    }

    v36 = sub_26C00909C();
    v37 = v36;
    v39 = v38;
    v64 = v21;
    v40 = v38 >> 62;
    if ((v38 >> 62) > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_58;
      }

      v36 = *(v36 + 16);
      v41 = *(v37 + 24);
    }

    else
    {
      if (!v40)
      {
        goto LABEL_58;
      }

      v36 = v36;
      v41 = v37 >> 32;
    }

    if (v41 < v36)
    {
      goto LABEL_84;
    }

LABEL_58:
    v42 = sub_26C00909C();
    v44 = v43;
    sub_26BE00258(v37, v39);
    sub_26BE00258(v58, v28);
    sub_26BE00608(v42, v44);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_26BEEBD8C(0, *(v59 + 2) + 1, 1, v59);
    }

    v46 = *(v59 + 2);
    v45 = *(v59 + 3);
    if (v46 >= v45 >> 1)
    {
      v59 = sub_26BEEBD8C((v45 > 1), v46 + 1, 1, v59);
    }

    sub_26BE00258(v42, v44);
    *(v59 + 2) = v46 + 1;
    v47 = &v59[24 * v46];
    *(v47 + 16) = bswap32(0) >> 16;
    *(v47 + 5) = v42;
    *(v47 + 6) = v44;
    a3 = v56;
    v7 = v57;
    LODWORD(v22) = v54;
    v18 = v55;
    if (v54 <= 1)
    {
      goto LABEL_21;
    }

LABEL_23:
    if (v22 == 2)
    {
      v23 = *(v18 + 24);
    }

    else
    {
      v23 = 0;
    }
  }

  sub_26BE00258(v62, v63);
  v33 = v28;
  v32 = v27;
LABEL_69:
  sub_26BE00258(v32, v33);
  v62 = v27;
  v63 = v28;
  v64 = v26;
LABEL_70:
  sub_26BE01600();
  swift_allocError();
  *v50 = 1;
LABEL_71:
  swift_willThrow();

  sub_26BE00258(v62, v63);
LABEL_10:
  sub_26BE00258(v65, v66);
  v65 = a1;
  v66 = a2;
  v67 = v7;
LABEL_14:
  swift_willThrow();
  v62 = &type metadata for MLS.GroupContextExtensionsProposal;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F198, &qword_26C01A7E0);
  v12 = sub_26C00A4FC();
  sub_26BE826C4(v12, v13, a1, a2);

  swift_willThrow();
  sub_26BE00258(a1, a2);
  result = sub_26BE00258(v65, v66);
LABEL_15:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t MLS.Commit.rawValue.getter()
{
  v2 = *(v0 + 112);
  v11[6] = *(v0 + 96);
  v11[7] = v2;
  v11[8] = *(v0 + 128);
  v12 = *(v0 + 144);
  v3 = *(v0 + 48);
  v11[2] = *(v0 + 32);
  v11[3] = v3;
  v4 = *(v0 + 80);
  v11[4] = *(v0 + 64);
  v11[5] = v4;
  v5 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v5;
  v13 = xmmword_26C00BBD0;
  v14 = 0;
  sub_26BED61D4(v11);
  v6 = v13;
  if (v1)
  {
    return sub_26BE00258(v13, *(&v13 + 1));
  }

  v8 = *(&v13 + 1) >> 62;
  if ((*(&v13 + 1) >> 62) <= 1)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = v13 >> 32;
LABEL_9:
    if (v9 < 0)
    {
      __break(1u);
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = *(v13 + 24);
    goto LABEL_9;
  }

LABEL_11:
  v10 = sub_26C00909C();
  sub_26BE00258(v6, *(&v6 + 1));
  return v10;
}

uint64_t MLS.Commit.init(rawValue:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BE7150C(v39);
  v7 = 0;
  v35 = v39[5];
  v36 = v39[6];
  v37 = v39[7];
  v38 = v39[8];
  v31 = v39[1];
  v32 = v39[2];
  v33 = v39[3];
  v34 = v39[4];
  v8 = a2 >> 62;
  v30 = v39[0];
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_7;
    }

    v7 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v25 = a1;
  v26 = a2;
  v27 = v7;
  sub_26BED6530(v28);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1A0, &qword_26C01A7E8);
    v9 = sub_26C00A4FC();
    sub_26BE826C4(v9, v10, a1, a2);

    swift_willThrow();
    sub_26BE00258(a1, a2);
    sub_26BE00258(v25, v26);
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    return sub_26BE2E258(&v16, &qword_28045E8B0, &qword_26C012560);
  }

  else
  {
    sub_26BE00258(a1, a2);
    sub_26BE00258(v25, v26);
    v22 = v36;
    v23 = v37;
    v24 = v38;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    v21 = v35;
    v16 = v30;
    v17 = v31;
    result = sub_26BE2E258(&v16, &qword_28045E8B0, &qword_26C012560);
    v12 = v28[7];
    *(a3 + 96) = v28[6];
    *(a3 + 112) = v12;
    *(a3 + 128) = v28[8];
    *(a3 + 144) = v29;
    v13 = v28[3];
    *(a3 + 32) = v28[2];
    *(a3 + 48) = v13;
    v14 = v28[5];
    *(a3 + 64) = v28[4];
    *(a3 + 80) = v14;
    v15 = v28[1];
    *a3 = v28[0];
    *(a3 + 16) = v15;
  }

  return result;
}

uint64_t sub_26BEEAC24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 48);
  v6 = *(a2 + 16) + 1;
  while (--v6)
  {
    v7 = *(v5 - 1);
    v8 = *v5;
    LOWORD(v32[0]) = bswap32(*(v5 - 8)) >> 16;
    v35 = MEMORY[0x277D838B0];
    v36 = MEMORY[0x277CC9C18];
    v33 = v32;
    v34 = v32 + 2;
    v9 = __swift_project_boxed_opaque_existential_1(&v33, MEMORY[0x277D838B0]);
    v10 = *v9;
    v11 = v9[1];
    sub_26BE00608(v7, v8);
    sub_26C00908C();
    __swift_destroy_boxed_opaque_existential_1(&v33);
    v12 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v12 == 2)
      {
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        v13 = v14 - v15;
        if (__OFSUB__(v14, v15))
        {
          goto LABEL_38;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else if (v12)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_39;
      }

      v13 = HIDWORD(v7) - v7;
    }

    else
    {
      v13 = BYTE6(v8);
    }

    v16 = sub_26BF30414(v13);
    if (v3)
    {
      goto LABEL_34;
    }

    v31 = v16;
    v35 = MEMORY[0x277CC9318];
    v36 = MEMORY[0x277CC9300];
    v33 = v7;
    v34 = v8;
    v17 = __swift_project_boxed_opaque_existential_1(&v33, MEMORY[0x277CC9318]);
    v18 = *v17;
    v19 = v17[1];
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 != 2)
      {
        memset(v32, 0, 14);
        sub_26BE00608(v7, v8);
        goto LABEL_28;
      }

      v30 = v13;
      v21 = *(v18 + 16);
      v28 = *(v18 + 24);
      sub_26BE00608(v7, v8);
      if (sub_26C008E9C() && __OFSUB__(v21, sub_26C008ECC()))
      {
        goto LABEL_42;
      }

      if (__OFSUB__(v28, v21))
      {
        goto LABEL_41;
      }

      sub_26C008EBC();
      sub_26C00908C();
    }

    else
    {
      if (!v20)
      {
        v32[0] = *v17;
        LOWORD(v32[1]) = v19;
        BYTE2(v32[1]) = BYTE2(v19);
        BYTE3(v32[1]) = BYTE3(v19);
        BYTE4(v32[1]) = BYTE4(v19);
        BYTE5(v32[1]) = BYTE5(v19);
        sub_26BE00608(v7, v8);
LABEL_28:
        sub_26C00908C();
        goto LABEL_29;
      }

      v29 = a1;
      v22 = v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_40;
      }

      v30 = v13;
      sub_26BE00608(v7, v8);
      if (sub_26C008E9C() && __OFSUB__(v22, sub_26C008ECC()))
      {
        goto LABEL_43;
      }

      sub_26C008EBC();
      sub_26C00908C();
      a1 = v29;
    }

    v13 = v30;
    v3 = 0;
LABEL_29:
    __swift_destroy_boxed_opaque_existential_1(&v33);
    sub_26BE00258(v7, v8);
    v23 = v31 + v13;
    if (__OFADD__(v31, v13))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v24 = __OFADD__(v23, 2);
    v25 = v23 + 2;
    if (v24)
    {
      goto LABEL_37;
    }

    v5 += 3;
    v24 = __OFADD__(a1, v25);
    a1 += v25;
    if (v24)
    {
      __break(1u);
LABEL_34:
      sub_26BE00258(v7, v8);
      break;
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_26BEEAFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 + 80);
      v9 = *(v7 + 112);
      v27 = *(v7 + 96);
      v28 = v9;
      v10 = *(v7 + 16);
      v11 = *(v7 + 48);
      v23 = *(v7 + 32);
      v24 = v11;
      v12 = *(v7 + 48);
      v13 = *(v7 + 80);
      v25 = *(v7 + 64);
      v26 = v13;
      v14 = *(v7 + 16);
      v22[0] = *v7;
      v22[1] = v14;
      v15 = *(v7 + 112);
      v20[6] = v27;
      v20[7] = v15;
      v20[2] = v23;
      v20[3] = v12;
      v20[4] = v25;
      v20[5] = v8;
      v29 = *(v7 + 128);
      v21 = *(v7 + 128);
      v20[0] = v22[0];
      v20[1] = v10;
      sub_26BECBB94(v22, v19);
      v16 = sub_26BE7D9CC(a3, v20);
      result = sub_26BE2E258(v22, &qword_28045E4C8, &unk_26C0112A0);
      if (v3)
      {
        break;
      }

      v18 = __OFADD__(a1, v16);
      a1 += v16;
      if (v18)
      {
        __break(1u);
        return result;
      }

      v7 += 136;
      --v5;
    }

    while (v5);
  }

  return a1;
}

uint64_t sub_26BEEB0F4(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = result;
  v5 = (a2 + 48);
  v6 = *(a2 + 16) + 1;
  while (1)
  {
    v7 = v6 - 1;
    if (!v7)
    {
      return v4;
    }

    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v11 = v9 >> 62;
    v28 = v7;
    if ((v9 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v12 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
        goto LABEL_28;
      }

      v12 = HIDWORD(v8) - v8;
    }

    else
    {
      v12 = BYTE6(v9);
    }

    sub_26BE00608(v8, v9);

    v15 = sub_26BF30414(v12);
    if (v3)
    {
      sub_26BE00258(v8, v9);

      return v4;
    }

    v16 = v15;
    v17 = v9;
    v31 = v4;
    v18 = v8;
    v19 = v8;
    v20 = v17;
    result = sub_26BE11228(v19, v17);
    v21 = v16 + v12;
    if (__OFADD__(v16, v12))
    {
      break;
    }

    v29 = xmmword_26C00BBD0;
    v30 = 0;
    v22 = sub_26BEEB2E4(0, v10);
    v23 = v22;
    v3 = 0;
    v24 = sub_26BF30414(v22);
    sub_26BF2A30C(&v29);
    sub_26BE00258(v29, *(&v29 + 1));
    sub_26BE00258(v18, v20);

    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      goto LABEL_25;
    }

    v26 = __OFADD__(v21, v25);
    v27 = v21 + v25;
    if (v26)
    {
      goto LABEL_26;
    }

    v5 += 3;
    v4 = v31 + v27;
    v6 = v28;
    if (__OFADD__(v31, v27))
    {
      __break(1u);
      sub_26BE00258(v29, *(&v29 + 1));
      sub_26BE00258(v18, v20);

      return v31;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_26BEEB2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v52 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 56);
  v6 = *(a2 + 16) + 1;
  while (--v6)
  {
    v7 = *(v5 - 3);
    v8 = *(v5 - 2);
    v9 = *(v5 - 1);
    v10 = *v5;
    v11 = v8 >> 62;
    v43 = v5;
    if ((v8 >> 62) > 1)
    {
      if (v11 == 2)
      {
        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        v12 = v13 - v14;
        if (__OFSUB__(v13, v14))
        {
          goto LABEL_66;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else if (v11)
    {
      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_65;
      }

      v12 = HIDWORD(v7) - v7;
    }

    else
    {
      v12 = BYTE6(v8);
    }

    sub_26BE00608(v7, v8);
    sub_26BE00608(v9, v10);
    v15 = sub_26BF30414(v12);
    if (v3)
    {
      goto LABEL_60;
    }

    v16 = v15;
    v45 = v10;
    v50 = MEMORY[0x277CC9318];
    v51 = MEMORY[0x277CC9300];
    v48 = v7;
    v49 = v8;
    v47 = v8;
    v17 = __swift_project_boxed_opaque_existential_1(&v48, MEMORY[0x277CC9318]);
    v18 = *v17;
    v19 = v17[1] >> 62;
    v46 = v9;
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v40 = v6;
        v20 = a1;
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        sub_26BE00608(v7, v8);
        if (sub_26C008E9C() && __OFSUB__(v21, sub_26C008ECC()))
        {
          goto LABEL_73;
        }

        if (__OFSUB__(v22, v21))
        {
          goto LABEL_68;
        }

LABEL_26:
        sub_26C008EBC();
        sub_26C00908C();
        a1 = v20;
        v6 = v40;
        v9 = v46;
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      v40 = v6;
      v20 = a1;
      v23 = v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_26BE00608(v7, v8);
      if (sub_26C008E9C() && __OFSUB__(v23, sub_26C008ECC()))
      {
        goto LABEL_74;
      }

      goto LABEL_26;
    }

    sub_26BE00608(v7, v8);
    sub_26C00908C();
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(&v48);
    v8 = v16 + v12;
    if (__OFADD__(v16, v12))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
    }

    v24 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v24 == 2)
      {
        v27 = *(v9 + 16);
        v26 = *(v9 + 24);
        v25 = v26 - v27;
        if (__OFSUB__(v26, v27))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else if (v24)
    {
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_69;
      }

      v25 = HIDWORD(v9) - v9;
    }

    else
    {
      v25 = BYTE6(v10);
    }

    v28 = sub_26BF30414(v25);
    v50 = MEMORY[0x277CC9318];
    v51 = MEMORY[0x277CC9300];
    v48 = v9;
    v49 = v10;
    v29 = __swift_project_boxed_opaque_existential_1(&v48, MEMORY[0x277CC9318]);
    v30 = *v29;
    v31 = v29[1] >> 62;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v41 = a1;
        v32 = *(v30 + 16);
        v44 = *(v30 + 24);
        sub_26BE00608(v46, v10);
        if (sub_26C008E9C())
        {
          if (__OFSUB__(v32, sub_26C008ECC()))
          {
            goto LABEL_75;
          }

          v33 = v6;
        }

        else
        {
          v33 = v6;
        }

        if (__OFSUB__(v44, v32))
        {
          goto LABEL_72;
        }

        sub_26C008EBC();
        sub_26C00908C();
        a1 = v41;
        v6 = v33;
LABEL_54:
        v10 = v45;
        v9 = v46;
        goto LABEL_55;
      }
    }

    else if (v31)
    {
      v42 = v6;
      v34 = v30;
      if (v30 >> 32 < v30)
      {
        goto LABEL_71;
      }

      sub_26BE00608(v46, v10);
      if (sub_26C008E9C() && __OFSUB__(v34, sub_26C008ECC()))
      {
        goto LABEL_76;
      }

      sub_26C008EBC();
      sub_26C00908C();
      v6 = v42;
      goto LABEL_54;
    }

    v9 = v46;
    sub_26BE00608(v46, v10);
    sub_26C00908C();
LABEL_55:
    __swift_destroy_boxed_opaque_existential_1(&v48);
    sub_26BE00258(v7, v47);
    sub_26BE00258(v9, v10);
    v35 = v28 + v25;
    if (__OFADD__(v28, v25))
    {
      goto LABEL_63;
    }

    v36 = __OFADD__(v8, v35);
    v37 = v8 + v35;
    if (v36)
    {
      goto LABEL_64;
    }

    v5 = v43 + 4;
    v36 = __OFADD__(a1, v37);
    a1 += v37;
    v3 = 0;
    if (v36)
    {
      __break(1u);
LABEL_60:
      sub_26BE00258(v7, v8);
      sub_26BE00258(v9, v10);
      break;
    }
  }

  v38 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_26BEEB900(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2C0, &qword_26C0224A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[17 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 136 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4C8, &unk_26C0112A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEBA84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F268, &qword_26C01A8A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEBBA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_26BEEBC98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F200, &qword_26C01A848);
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

char *sub_26BEEBD8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F258, &qword_26C01A898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEBEAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2A8, &unk_26C0245F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_26BEEC03C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2B0, &unk_26C0245D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEC18C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_26BEEC288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1C8, &qword_26C01A818);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEC394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1E0, &qword_26C01A828);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_26BEEC498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1D8, &qword_26C01A820);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEC5B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1E8, &qword_26C01A830);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26BEEC6D8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F298, &qword_26C01A8D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E718, &qword_26C011380);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEC80C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E570, &unk_26C0245A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_26BEEC910(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F230, &qword_26C01A870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 208);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[208 * v8])
    {
      memmove(v12, v13, 208 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECA34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F228, &qword_26C01A868);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECB7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E568, &qword_26C00E4D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECC88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2A0, &unk_26C01A8E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F290, &qword_26C01A8D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEECEC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_26BEECFC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1B0, &qword_26C01A800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED0EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F280, &qword_26C01A8C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED214(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8C8, &qword_26C012570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26BEED320(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F278, &qword_26C01A8B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E708, &unk_26C011370) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_26BEED510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F270, &qword_26C01A8B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 184);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[184 * v8])
    {
      memmove(v12, v13, 184 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F2B8, &unk_26C024630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 200);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[200 * v8])
    {
      memmove(v12, v13, 200 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED79C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 184);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[184 * v10])
    {
      memmove(v14, v15, 184 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_26BEED8C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F238, &qword_26C01A878);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEED9D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1B8, &qword_26C01A808);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEDAF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E548, &qword_26C00E4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26BEEDC00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1F0, &qword_26C01A838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26BEEDD50(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_26BEEDF8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v47 = a3;
  v10 = type metadata accessor for MLS.MLSMessage(0);
  v40 = *(v10 - 8);
  v11 = *(v40 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = 0;
  v18 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_7;
    }

    v17 = *(a1 + 16);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_7;
    }

    v17 = a1;
  }

  sub_26BE00608(a1, a2);
LABEL_7:
  v44 = a1;
  v45 = a2;
  v46 = v17;
  sub_26BE00608(a1, a2);
  sub_26BE00608(a1, a2);
  sub_26BF30764(&v44, &v41);
  if (!v5)
  {
    if (v42)
    {
      sub_26BE00258(v44, v45);
      v19 = a2;
      v20 = a1;
    }

    else
    {
      v38 = a5;
      v25 = v41;
      sub_26BE00258(a1, a2);
      if (v25 > 100000000)
      {
        sub_26BE01600();
        swift_allocError();
        *v26 = 5;
        swift_willThrow();
        a5 = v38;
        goto LABEL_9;
      }

      result = sub_26BF2A44C(v25);
      if (v27 >> 60 != 15)
      {
        v41 = result;
        v42 = v27;
        v43 = v28;
        a5 = MEMORY[0x277D84F90];
        for (i = a4; ; a4 = i)
        {
          v29 = v27 >> 62;
          if ((v27 >> 62) > 1)
          {
            v30 = v29 == 2 ? *(result + 24) : 0;
          }

          else
          {
            v30 = v29 ? result >> 32 : BYTE6(v27);
          }

          v31 = __OFSUB__(v30, v28);
          v32 = v30 - v28;
          if (v31)
          {
            break;
          }

          if (v32 < 1)
          {
            if (v29 > 1)
            {
              if (v29 == 2)
              {
                v35 = *(result + 24);
              }

              else
              {
                v35 = 0;
              }
            }

            else if (v29)
            {
              v35 = result >> 32;
            }

            else
            {
              v35 = BYTE6(v27);
            }

            if (!__OFSUB__(v35, v28))
            {
              if (v35 != v28)
              {
                sub_26BE01654();
                swift_allocError();
                *v36 = 0;
                v36[112] = 1;
                swift_willThrow();

                sub_26BE00258(v41, v42);
                a5 = v38;
                goto LABEL_9;
              }

              sub_26BE00258(result, v27);
              sub_26BE00258(a1, a2);
              sub_26BE00258(a1, a2);
              sub_26BE00258(v44, v45);
              return a5;
            }

LABEL_46:
            __break(1u);
            return result;
          }

          sub_26BEE3C08(v16);
          sub_26BEEE46C(v16, v14);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a5 = sub_26BEEDD50(0, a5[2] + 1, 1, a5, &qword_28045F248, &qword_26C01A888, type metadata accessor for MLS.MLSMessage);
          }

          v34 = a5[2];
          v33 = a5[3];
          if (v34 >= v33 >> 1)
          {
            a5 = sub_26BEEDD50(v33 > 1, v34 + 1, 1, a5, &qword_28045F248, &qword_26C01A888, type metadata accessor for MLS.MLSMessage);
          }

          sub_26BEEE4D0(v16);
          a5[2] = v34 + 1;
          sub_26BEEE52C(v14, a5 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, type metadata accessor for MLS.MLSMessage);
          result = v41;
          v27 = v42;
          v28 = v43;
        }

        __break(1u);
        goto LABEL_46;
      }

      v20 = v44;
      v19 = v45;
      a5 = v38;
    }

    sub_26BE00258(v20, v19);
    v44 = a1;
    v45 = a2;
    v46 = v17;
    sub_26BE01600();
    swift_allocError();
    *v21 = 1;
    goto LABEL_13;
  }

  sub_26BE00258(v44, v45);
  v44 = a1;
  v45 = a2;
  v46 = v17;
  swift_willThrow();
LABEL_9:
  sub_26BE00258(v44, v45);
  v44 = a1;
  v45 = a2;
  v46 = v17;
LABEL_13:
  swift_willThrow();
  v41 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v22 = sub_26C00A4FC();
  sub_26BE826C4(v22, v23, a1, a2);

  swift_willThrow();
  sub_26BE00258(a1, a2);
  sub_26BE00258(v44, v45);
  return a5;
}

uint64_t sub_26BEEE46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BEEE4D0(uint64_t a1)
{
  v2 = type metadata accessor for MLS.MLSMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BEEE52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BEEE594()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D85DE8];

  return sub_26BEE6420();
}

uint64_t sub_26BEEE6A4()
{
  if (*v0)
  {
    result = 0x69746E6564657263;
  }

  else
  {
    result = 0x746E65696C63;
  }

  *v0;
  return result;
}

uint64_t sub_26BEEE6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65696C63 && a2 == 0xE600000000000000;
  if (v6 || (sub_26C00AF2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C00AF2C();

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