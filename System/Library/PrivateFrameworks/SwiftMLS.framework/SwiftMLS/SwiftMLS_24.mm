unint64_t sub_26BFCD240()
{
  result = qword_280460540;
  if (!qword_280460540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460540);
  }

  return result;
}

uint64_t sub_26BFCD298()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v1 + 16));
  return sub_26C00B0CC();
}

uint64_t sub_26BFCD314()
{
  v1 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v1 + 16));
  return sub_26C00B0CC();
}

unint64_t sub_26BFCD378()
{
  result = qword_280460548;
  if (!qword_280460548)
  {
    _s16CertificateErrorV7BackingCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460548);
  }

  return result;
}

unint64_t sub_26BFCD3DC()
{
  result = qword_280460550;
  if (!qword_280460550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460550);
  }

  return result;
}

uint64_t sub_26BFCD438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  _s16CertificateErrorV7BackingCMa();
  v12 = swift_allocObject();
  *(v12 + 16) = a6;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;

  return v12;
}

uint64_t sub_26BFCD4C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_26BFCD554(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BFCD618()
{
  result = qword_280460558;
  if (!qword_280460558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460558);
  }

  return result;
}

uint64_t sub_26BFCD698(uint64_t a1, uint64_t a2)
{
  v4 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFCD738(uint64_t a1, uint64_t a2)
{
  v4 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFCD7C8()
{
  result = _s9PublicKeyV16BackingPublicKeyOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFCD834()
{
  result = sub_26C00A18C();
  if (v1 <= 0x3F)
  {
    result = sub_26C00A25C();
    if (v2 <= 0x3F)
    {
      result = sub_26C00A2EC();
      if (v3 <= 0x3F)
      {
        result = sub_26C009BBC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFCD8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_26C009BBC();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A2EC();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A25C();
  v60 = *(v10 - 8);
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C00A18C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MLS.AlgorithmIdentifier();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCFD08(a1, v22, type metadata accessor for MLS.AlgorithmIdentifier);
  if (qword_28045DFF8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v19, qword_28045FF60);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v23, v22))
  {
    sub_26BFCFD8C(v22, type metadata accessor for MLS.AlgorithmIdentifier);
    v24 = a1 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    v62 = sub_26C00958C();
    v63 = v25;
    v64 = v26;
    v65 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
    sub_26BFCFDEC();
    v28 = v66;
    sub_26C00A17C();
    result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
    if (v28)
    {
      return result;
    }

    (*(v15 + 32))(v61, v18, v14);
    goto LABEL_21;
  }

  if (qword_28045E000 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v19, qword_28045FF78);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v30, v22))
  {
    sub_26BFCFD8C(v22, type metadata accessor for MLS.AlgorithmIdentifier);
    v31 = a1 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    v62 = sub_26C00958C();
    v63 = v32;
    v64 = v33;
    v65 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
    sub_26BFCFDEC();
    v35 = v66;
    sub_26C00A24C();
    result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
    if (v35)
    {
      return result;
    }

    (*(v60 + 32))(v61, v13, v10);
    goto LABEL_21;
  }

  if (qword_28045E008 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v19, qword_28045FF90);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v36, v22))
  {
    sub_26BFCFD8C(v22, type metadata accessor for MLS.AlgorithmIdentifier);
    v37 = a1 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    v62 = sub_26C00958C();
    v63 = v38;
    v64 = v39;
    v65 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
    sub_26BFCFDEC();
    v41 = v66;
    sub_26C00A2DC();
    result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
    if (v41)
    {
      return result;
    }

    (*(v57 + 32))(v61, v9, v58);
    goto LABEL_21;
  }

  if (qword_28045E010 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v19, qword_28045FFA8);
  v43 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v42, v22);
  sub_26BFCFD8C(v22, type metadata accessor for MLS.AlgorithmIdentifier);
  if (!v43)
  {
    v50 = MLS.AlgorithmIdentifier.description.getter();
    v52 = sub_26BFCD3CC(v50, v51, 0xD000000000000023, 0x800000026C02D7E0, 45);

    sub_26BED380C();
    swift_allocError();
    *v53 = v52;
    swift_willThrow();
    return sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
  }

  v44 = a1 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  v62 = sub_26C00958C();
  v63 = v45;
  v64 = v46;
  v65 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E410, &qword_26C021270);
  sub_26BFCFDEC();
  v48 = v59;
  v49 = v66;
  sub_26C009BAC();
  result = sub_26BFCFD8C(a1, type metadata accessor for MLS.SubjectPublicKeyInfo);
  if (!v49)
  {
    (*(v55 + 32))(v61, v48, v56);
LABEL_21:
    _s9PublicKeyV16BackingPublicKeyOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_26BFCE01C()
{
  v1 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCFD08(v0, v4, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x6275502E36353250;
  v7 = 0x6275502E31323550;
  if (EnumCaseMultiPayload != 2)
  {
    v7 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x6275502E34383350;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  sub_26BFCFD8C(v4, _s9PublicKeyV16BackingPublicKeyOMa);
  return v8;
}

uint64_t sub_26BFCE15C(uint64_t a1)
{
  v50 = a1;
  v2 = sub_26C009BBC();
  v48 = *(v2 - 8);
  v49 = v2;
  v3 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A2EC();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A25C();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C00A18C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFCFD08(v1, v22, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v30 = v46;
      v29 = v47;
      (*(v46 + 32))(v9, v22, v47);
      v31 = MEMORY[0x26D699B20](2);
      v32 = MEMORY[0x26D698D70](v31);
      v34 = v33;
      sub_26C00911C();
      sub_26BE00258(v32, v34);
      return (*(v30 + 8))(v9, v29);
    }

    else
    {
      v41 = v48;
      v40 = v49;
      (*(v48 + 32))(v5, v22, v49);
      MEMORY[0x26D699B20](3);
      v42 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v44 = v43;
      sub_26C00911C();
      sub_26BE00258(v42, v44);
      return (*(v41 + 8))(v5, v40);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v35 = v45;
    (*(v45 + 32))(v13, v22, v10);
    v36 = MEMORY[0x26D699B20](1);
    v37 = MEMORY[0x26D698CE0](v36);
    v39 = v38;
    sub_26C00911C();
    sub_26BE00258(v37, v39);
    return (*(v35 + 8))(v13, v10);
  }

  else
  {
    (*(v15 + 32))(v18, v22, v14);
    v24 = MEMORY[0x26D699B20](0);
    v25 = MEMORY[0x26D698C10](v24);
    v27 = v26;
    sub_26C00911C();
    sub_26BE00258(v25, v27);
    return (*(v15 + 8))(v18, v14);
  }
}

uint64_t sub_26BFCE5F4()
{
  sub_26C00B05C();
  sub_26BFCE15C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFCE63C()
{
  sub_26C00B05C();
  sub_26BFCE15C(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFCE6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_26C009BBC();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = *(v65 + 64);
  MEMORY[0x28223BE20](v3);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C00A2EC();
  v62 = *(v6 - 8);
  v63 = v6;
  v7 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C00A25C();
  v61 = *(v10 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C00A18C();
  v60 = *(v14 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26C00959C();
  v68 = *(v22 - 8);
  v69 = v22;
  v23 = *(v68 + 64);
  MEMORY[0x28223BE20](v22);
  v67 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MLS.AlgorithmIdentifier();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a1;
  sub_26BFCFD08(a1, v21, _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v38 = v62;
      v37 = v63;
      (*(v62 + 32))(v9, v21, v63);
      if (qword_28045E008 != -1)
      {
        swift_once();
      }

      v39 = __swift_project_value_buffer(v25, qword_28045FF90);
      v40 = sub_26BFCFD08(v39, v28, type metadata accessor for MLS.AlgorithmIdentifier);
      v41 = MEMORY[0x26D698D80](v40);
      v43 = (2 * *(sub_26BF2E8B4(v41, v42) + 16)) | 1;
      v36 = v67;
      sub_26C00957C();
      sub_26BFCFD8C(v70, _s9PublicKeyVMa);
      (*(v38 + 8))(v9, v37);
    }

    else
    {
      v50 = v64;
      v51 = v65;
      v52 = v66;
      (*(v65 + 32))(v64, v21, v66);
      if (qword_28045E010 != -1)
      {
        swift_once();
      }

      v53 = __swift_project_value_buffer(v25, qword_28045FFA8);
      sub_26BFCFD08(v53, v28, type metadata accessor for MLS.AlgorithmIdentifier);
      v54 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v56 = (2 * *(sub_26BF2E8B4(v54, v55) + 16)) | 1;
      v36 = v67;
      sub_26C00957C();
      sub_26BFCFD8C(v70, _s9PublicKeyVMa);
      (*(v51 + 8))(v50, v52);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v44 = v61;
    (*(v61 + 32))(v13, v21, v10);
    if (qword_28045E000 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v25, qword_28045FF78);
    v46 = sub_26BFCFD08(v45, v28, type metadata accessor for MLS.AlgorithmIdentifier);
    v47 = MEMORY[0x26D698CF0](v46);
    v49 = (2 * *(sub_26BF2E8B4(v47, v48) + 16)) | 1;
    v36 = v67;
    sub_26C00957C();
    sub_26BFCFD8C(v70, _s9PublicKeyVMa);
    (*(v44 + 8))(v13, v10);
  }

  else
  {
    v30 = v60;
    (*(v60 + 32))(v17, v21, v14);
    if (qword_28045DFF8 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v25, qword_28045FF60);
    v32 = sub_26BFCFD08(v31, v28, type metadata accessor for MLS.AlgorithmIdentifier);
    v33 = MEMORY[0x26D698C20](v32);
    v35 = (2 * *(sub_26BF2E8B4(v33, v34) + 16)) | 1;
    v36 = v67;
    sub_26C00957C();
    sub_26BFCFD8C(v70, _s9PublicKeyVMa);
    (*(v30 + 8))(v17, v14);
  }

  v57 = v71;
  sub_26BEE2E7C(v28, v71, type metadata accessor for MLS.AlgorithmIdentifier);
  v58 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  return (*(v68 + 32))(v57 + *(v58 + 20), v36, v69);
}

uint64_t sub_26BFCEE18@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v40 = a2;
  v4 = sub_26C00934C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C00950C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v36 = &v35 - v19;
  v20 = v10[2];
  v39 = v9;
  v21 = v9;
  v22 = v40;
  v20(v13, a1, v21);
  v23 = v5[2];
  v41 = v4;
  v23(v8, v22, v4);
  v24 = v38;
  sub_26C0097FC();
  if (v24)
  {
    v25 = v5[1];
    v26 = v41;
    v25(v22, v41);
    v27 = v10[1];
    v28 = a1;
    v29 = v39;
    v27(v28, v39);
    v25(v8, v26);
    return (v27)(v13, v29);
  }

  else
  {
    v38 = a1;
    v31 = v5[1];
    v31(v8, v41);
    v32 = v10[1];
    v33 = v39;
    v32(v13, v39);
    v34 = v36;
    sub_26BEE2E7C(v18, v36, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BFCD8D0(v34, v37);
    v31(v40, v41);
    return (v32)(v38, v33);
  }
}

uint64_t sub_26BFCF164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26BFCFD08(v3, v6, _s9PublicKeyVMa);
  sub_26BFCE6C4(v6, v10);
  v13 = v10;
  sub_26C00973C();
  return sub_26BFCFD8C(v10, type metadata accessor for MLS.SubjectPublicKeyInfo);
}

uint64_t sub_26BFCF3E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFCF4B8(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  v102 = a2;
  v2 = sub_26C009BBC();
  v99 = *(v2 - 8);
  v100 = v2;
  v3 = *(v99 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v92 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v91 = &v87 - v6;
  v7 = sub_26C00A2EC();
  v97 = *(v7 - 8);
  v98 = v7;
  v8 = *(v97 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v87 - v11;
  v12 = sub_26C00A25C();
  v95 = *(v12 - 8);
  v96 = v12;
  v13 = *(v95 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v87 - v16;
  v17 = sub_26C00A18C();
  v93 = *(v17 - 8);
  v94 = v17;
  v18 = *(v93 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v87 - v22;
  v24 = _s9PublicKeyV16BackingPublicKeyOMa(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v87 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v87 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v87 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804605A0, &qword_26C023E68);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v41 = &v87 - v40;
  v42 = *(v39 + 56);
  sub_26BFCFD08(v101, &v87 - v40, _s9PublicKeyV16BackingPublicKeyOMa);
  sub_26BFCFD08(v102, &v41[v42], _s9PublicKeyV16BackingPublicKeyOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_26BFCFD08(v41, v28, _s9PublicKeyV16BackingPublicKeyOMa);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v99 + 8))(v28, v100);
        goto LABEL_16;
      }

      v63 = v99;
      v62 = v100;
      v64 = *(v99 + 32);
      v65 = v91;
      v64(v91, v28, v100);
      v66 = v92;
      v64(v92, &v41[v42], v62);
      v67 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v69 = v68;
      v70 = _s8SwiftMLS28ED25519VerificationPublicKeyV4data10Foundation4DataVvg_0();
      v72 = v71;
      v60 = sub_26BE02DEC(v67, v69, v70, v71);
      sub_26BE00258(v70, v72);
      sub_26BE00258(v67, v69);
      v73 = *(v63 + 8);
      v73(v66, v62);
      v73(v65, v62);
LABEL_18:
      sub_26BFCFD8C(v41, _s9PublicKeyV16BackingPublicKeyOMa);
      return v60 & 1;
    }

    sub_26BFCFD08(v41, v31, _s9PublicKeyV16BackingPublicKeyOMa);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v97 + 8))(v31, v98);
      goto LABEL_16;
    }

    v45 = v97;
    v44 = v98;
    v46 = *(v97 + 32);
    v47 = v89;
    v46(v89, v31, v98);
    v48 = v90;
    v49 = (v46)(v90, &v41[v42], v44);
    v50 = MEMORY[0x26D698D70](v49);
    v52 = v51;
    v53 = MEMORY[0x26D698D70]();
LABEL_10:
    v58 = v53;
    v59 = v54;
    v60 = sub_26BE02DEC(v50, v52, v53, v54);
    sub_26BE00258(v58, v59);
    sub_26BE00258(v50, v52);
    v61 = *(v45 + 8);
    v61(v48, v44);
    v61(v47, v44);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26BFCFD08(v41, v34, _s9PublicKeyV16BackingPublicKeyOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v95 + 8))(v34, v96);
      goto LABEL_16;
    }

    v45 = v95;
    v44 = v96;
    v55 = *(v95 + 32);
    v47 = v87;
    v55(v87, v34, v96);
    v48 = v88;
    v56 = (v55)(v88, &v41[v42], v44);
    v50 = MEMORY[0x26D698CE0](v56);
    v52 = v57;
    v53 = MEMORY[0x26D698CE0]();
    goto LABEL_10;
  }

  sub_26BFCFD08(v41, v36, _s9PublicKeyV16BackingPublicKeyOMa);
  if (!swift_getEnumCaseMultiPayload())
  {
    v74 = v93;
    v75 = *(v93 + 32);
    v76 = v36;
    v77 = v94;
    v75(v23, v76, v94);
    v78 = (v75)(v21, &v41[v42], v77);
    v79 = MEMORY[0x26D698C10](v78);
    v81 = v80;
    v82 = MEMORY[0x26D698C10]();
    v84 = v83;
    v60 = sub_26BE02DEC(v79, v81, v82, v83);
    sub_26BE00258(v82, v84);
    sub_26BE00258(v79, v81);
    v85 = *(v74 + 8);
    v85(v21, v77);
    v85(v23, v77);
    goto LABEL_18;
  }

  (*(v93 + 8))(v36, v94);
LABEL_16:
  sub_26BFCFCA0(v41);
  v60 = 0;
  return v60 & 1;
}

uint64_t sub_26BFCFCA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804605A0, &qword_26C023E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFCFD08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFCFD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_26BFCFDEC()
{
  result = qword_28045E418;
  if (!qword_28045E418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E410, &qword_26C021270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E418);
  }

  return result;
}

uint64_t sub_26BFCFE74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFCFEF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s18SignatureAlgorithmVMa()
{
  result = qword_2804605B0;
  if (!qword_2804605B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFCFFB0()
{
  result = type metadata accessor for MLS.AlgorithmIdentifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFD001C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFD1808(a1, v7, type metadata accessor for MLS.AlgorithmIdentifier);
  if (qword_28045E038 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280460020);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v8, v7))
  {
    sub_26BFD1870(v7, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E030 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v9 = qword_280460008;
LABEL_25:
    v13 = __swift_project_value_buffer(v4, v9);
    return sub_26BFD1808(v13, a2, type metadata accessor for MLS.AlgorithmIdentifier);
  }

  if (qword_28045E048 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280460050);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v10, v7))
  {
    sub_26BFD1870(v7, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E040 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v9 = qword_280460038;
    goto LABEL_25;
  }

  if (qword_28045E058 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280460080);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v11, v7))
  {
    sub_26BFD1870(v7, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E050 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v9 = qword_280460068;
    goto LABEL_25;
  }

  if (qword_28045E068 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_2804600B0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v12, v7))
  {
    sub_26BFD1870(v7, type metadata accessor for MLS.AlgorithmIdentifier);
    if (qword_28045E060 != -1)
    {
      swift_once();
    }

    sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
    v9 = qword_280460098;
    goto LABEL_25;
  }

  sub_26BFD1870(a1, type metadata accessor for MLS.AlgorithmIdentifier);
  return sub_26BEC9E7C(v7, a2);
}

uint64_t sub_26BFD0404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s18SignatureAlgorithmVMa();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.AlgorithmIdentifier();
  v9 = *(v8 + 20);
  v10 = sub_26C0094DC();
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  sub_26BFD1808(a1, v7, _s18SignatureAlgorithmVMa);
  if (qword_28045E148 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_280479188);
  if (sub_26BFD18D0(v11, v7))
  {
    goto LABEL_7;
  }

  if (qword_28045E170 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v4, qword_280479200);
  if (sub_26BFD18D0(v12, v7))
  {
LABEL_7:
    sub_26BFD1870(v7, _s18SignatureAlgorithmVMa);
    if (qword_28045E088 != -1)
    {
      swift_once();
    }

    v13 = qword_280460110;
LABEL_10:
    sub_26BFD1870(a1, _s18SignatureAlgorithmVMa);
    v14 = __swift_project_value_buffer(v8, v13);
    sub_26BE2E258(a2 + v9, &qword_28045EE48, &unk_26C022430);
    return sub_26BFD1808(v14, a2, type metadata accessor for MLS.AlgorithmIdentifier);
  }

  if (qword_28045E150 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v4, qword_2804791A0);
  if (sub_26BFD18D0(v16, v7))
  {
    goto LABEL_17;
  }

  if (qword_28045E178 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_280479218);
  if (sub_26BFD18D0(v17, v7))
  {
LABEL_17:
    sub_26BFD1870(v7, _s18SignatureAlgorithmVMa);
    if (qword_28045E098 != -1)
    {
      swift_once();
    }

    v13 = qword_280460140;
    goto LABEL_10;
  }

  if (qword_28045E158 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v4, qword_2804791B8);
  if (sub_26BFD18D0(v18, v7))
  {
    goto LABEL_26;
  }

  if (qword_28045E180 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v4, qword_280479230);
  if (sub_26BFD18D0(v19, v7))
  {
LABEL_26:
    sub_26BFD1870(v7, _s18SignatureAlgorithmVMa);
    if (qword_28045E0A8 != -1)
    {
      swift_once();
    }

    v13 = qword_280460170;
    goto LABEL_10;
  }

  if (qword_28045E168 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v4, qword_2804791E8);
  v21 = sub_26BFD18D0(v20, v7);
  sub_26BFD1870(v7, _s18SignatureAlgorithmVMa);
  if (v21)
  {
    if (qword_28045E080 != -1)
    {
      swift_once();
    }

    v13 = qword_2804600F8;
    goto LABEL_10;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_26C00AC1C();

  v25 = 0xD000000000000025;
  v26 = 0x800000026C02D9A0;
  v22 = sub_26BFD12E4();
  MEMORY[0x26D699090](v22);

  v23 = sub_26BFCD3D4(v25, v26, 0xD000000000000021, 0x800000026C02D9D0, 150);

  sub_26BED380C();
  swift_allocError();
  *v24 = v23;
  swift_willThrow();
  sub_26BFD1870(a1, _s18SignatureAlgorithmVMa);
  return sub_26BE2E258(a2 + v9, &qword_28045EE48, &unk_26C022430);
}

uint64_t sub_26BFD0A2C(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for MLS.AlgorithmIdentifier();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s18SignatureAlgorithmVMa();
  __swift_allocate_value_buffer(v11, a2);
  v12 = __swift_project_value_buffer(v11, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, a4);
  sub_26BFD1808(v13, v10, type metadata accessor for MLS.AlgorithmIdentifier);
  return sub_26BFD001C(v10, v12);
}

uint64_t sub_26BFD0C3C()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFD1BE8(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_26C00B07C();
    sub_26BFD1BE8(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFD0E78()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26C00947C();
  sub_26BFD1BE8(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_26C00B07C();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_26C00B07C();
  sub_26BFD1BE8(&qword_28045F0C8, MEMORY[0x277D6A988]);
  sub_26C00A3CC();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_26BFD10A4()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v12 - v8;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFD1BE8(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_26C00B07C();
    sub_26BFD1BE8(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v2 + 8))(v5, v1);
  }

  return sub_26C00B0CC();
}

unint64_t sub_26BFD12E4()
{
  v1 = v0;
  v2 = _s18SignatureAlgorithmVMa();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFD1808(v1, v5, _s18SignatureAlgorithmVMa);
  if (qword_28045E148 != -1)
  {
    swift_once();
  }

  v6 = 0xD000000000000022;
  v7 = __swift_project_value_buffer(v2, qword_280479188);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v7, v5))
  {
    goto LABEL_11;
  }

  if (qword_28045E150 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_2804791A0);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v8, v5))
  {
    goto LABEL_11;
  }

  if (qword_28045E158 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_2804791B8);
  if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v9, v5))
  {
LABEL_11:
    sub_26BFD1870(v5, _s18SignatureAlgorithmVMa);
  }

  else
  {
    if (qword_28045E160 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v2, qword_2804791D0);
    if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v11, v5))
    {
      sub_26BFD1870(v5, _s18SignatureAlgorithmVMa);
      return 0xD00000000000001ALL;
    }

    else
    {
      if (qword_28045E168 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v2, qword_2804791E8);
      if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v12, v5))
      {
        sub_26BFD1870(v5, _s18SignatureAlgorithmVMa);
        return 0xD000000000000028;
      }

      else
      {
        if (qword_28045E170 != -1)
        {
          swift_once();
        }

        v13 = __swift_project_value_buffer(v2, qword_280479200);
        if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v13, v5))
        {
          goto LABEL_24;
        }

        if (qword_28045E178 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v2, qword_280479218);
        if (_s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v14, v5))
        {
LABEL_24:
          sub_26BFD1870(v5, _s18SignatureAlgorithmVMa);
        }

        else
        {
          if (qword_28045E180 != -1)
          {
            swift_once();
          }

          v15 = __swift_project_value_buffer(v2, qword_280479230);
          v16 = _s8SwiftMLS0B0O19AlgorithmIdentifierV2eeoiySbAE_AEtFZ_0(v15, v5);
          sub_26BFD1870(v5, _s18SignatureAlgorithmVMa);
          if (!v16)
          {
            v18 = 0;
            v19 = 0xE000000000000000;
            sub_26C00AC1C();

            v18 = 0xD000000000000013;
            v19 = 0x800000026C02D810;
            v17 = MLS.AlgorithmIdentifier.description.getter();
            MEMORY[0x26D699090](v17);

            MEMORY[0x26D699090](41, 0xE100000000000000);
            return v18;
          }
        }

        return 0xD00000000000002ALL;
      }
    }
  }

  return v6;
}

uint64_t sub_26BFD1808(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFD1870(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_26BFD18D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((sub_26C00945C() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
  v18 = *(v13 + 48);
  sub_26BEE2A7C(a1 + v17, v16);
  sub_26BEE2A7C(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
      return 1;
    }

    goto LABEL_7;
  }

  sub_26BEE2A7C(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_26BE2E258(v16, &qword_28045F0D8, &unk_26C01A530);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_26BFD1BE8(&qword_28045F0E0, MEMORY[0x277D6A988]);
  v21 = sub_26C00A43C();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
  return (v21 & 1) != 0;
}

uint64_t sub_26BFD1BE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFD1C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s14descr287CB9999C9AttributeVMa();
  v9 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a2 + 16);
  if (v33)
  {
    v31 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v4;
    v28 = v5 + 16;
    v25[1] = a1;
    v26 = (v5 + 8);
    v13 = *(v10 + 72);
    v29 = v5;
    v30 = v13;
    v25[0] = a2;

    v14 = 0;
    v15 = 0;
    v32 = v12;
    v16 = v26;
    do
    {
      v35 = v15;
      v36 = v14;
      sub_26BFD2BC0(v31 + v30 * v15, v12);
      sub_26C00B0DC();
      sub_26C00947C();
      sub_26BFD2C80(&qword_28045F0C0, MEMORY[0x277D6A958]);
      sub_26C00A3CC();
      v19 = *&v12[*(v34 + 20)];
      v20 = *(v19 + 16);
      if (v20)
      {
        v17 = 0;
        v21 = v19 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
        v37 = *(v29 + 72);
        v22 = *(v29 + 16);
        v23 = v27;
        do
        {
          v22(v8, v21, v23);
          sub_26C00B0DC();
          sub_26C0094AC();
          (*v16)(v8, v23);
          v55 = v40;
          v56 = v41;
          v57 = v42;
          v53 = v38;
          v54 = v39;
          v17 ^= sub_26C00B0BC();
          v21 += v37;
          --v20;
        }

        while (v20);
      }

      else
      {
        v17 = 0;
      }

      v15 = v35 + 1;
      MEMORY[0x26D699B20](v17);
      v50 = v45;
      v51 = v46;
      v52 = v47;
      v48 = v43;
      v49 = v44;
      v18 = sub_26C00B0BC();
      v12 = v32;
      sub_26BFD2C24(v32);
      v14 = v18 ^ v36;
    }

    while (v15 != v33);
  }

  else
  {
    v14 = 0;
  }

  return MEMORY[0x26D699B20](v14);
}

uint64_t sub_26BFD1F84()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26BFD1C44(v3, v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFD1FD4()
{
  v1 = *v0;
  sub_26C00B05C();
  sub_26BFD1C44(v3, v1);
  return sub_26C00B0CC();
}

void (*sub_26BFD2024(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(_s14descr287CB9999C9AttributeVMa() - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFD2BC0(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_26BFD2120;
  }

  __break(1u);
  return result;
}

void sub_26BFD2120(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFD2C24(*a1);

  free(v1);
}

uint64_t sub_26BFD215C()
{
  v1 = sub_26BFB63DC(*v0);

  return v1;
}

uint64_t sub_26BFD219C(uint64_t a1)
{
  v23 = _s14descr287CB9999C9AttributeVMa();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_26C00AC1C();

  strcpy(v26, "Attributes([");
  BYTE5(v26[1]) = 0;
  HIWORD(v26[1]) = -5120;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v25 = MEMORY[0x277D84F90];
    sub_26BECB834(0, v9, 0);
    v10 = v25;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = *(v2 + 72);
    do
    {
      sub_26BFD2BC0(v11, v8);
      sub_26BFD2BC0(v8, v6);
      v12 = sub_26C00A51C();
      v14 = v13;
      sub_26BFD2C24(v8);
      v25 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_26BECB834((v15 > 1), v16 + 1, 1);
        v10 = v25;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
      v11 += v24;
      --v9;
    }

    while (v9);
  }

  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE13630(&qword_28045E4B8, &qword_28045E4B0, &qword_26C00ECE0);
  v18 = sub_26C00A3EC();
  v20 = v19;

  MEMORY[0x26D699090](v18, v20);

  MEMORY[0x26D699090](10589, 0xE200000000000000);
  return v26[0];
}

unint64_t sub_26BFD2478()
{
  result = qword_2804605D8;
  if (!qword_2804605D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804605D8);
  }

  return result;
}

unint64_t sub_26BFD2514()
{
  result = qword_2804605F0;
  if (!qword_2804605F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804605F0);
  }

  return result;
}

unint64_t sub_26BFD25B0()
{
  result = qword_280460600;
  if (!qword_280460600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460600);
  }

  return result;
}

uint64_t sub_26BFD2650(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804605E8, &qword_26C023FE0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFD26C8()
{
  result = qword_280460610;
  if (!qword_280460610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460610);
  }

  return result;
}

unint64_t sub_26BFD2720()
{
  result = qword_280460618;
  if (!qword_280460618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460618);
  }

  return result;
}

uint64_t sub_26BFD2774(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v49 = *(v4 - 8);
  v5 = *(v49 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v39 - v9;
  v50 = _s14descr287CB9999C9AttributeVMa();
  v10 = *(v50 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v50);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
    return 0;
  }

  if (!v14)
  {
    v38 = 1;
LABEL_22:

    return v38;
  }

  v15 = 0;
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = *(v10 + 72);
  v18 = a1 + v16;
  v19 = a2 + v16;
  v55 = (v49 + 8);
  v56 = v49 + 16;
  v41 = a2;
  v42 = a1;
  v47 = v14;
  v48 = v13;
  v45 = a2 + v16;
  v46 = v17;
  v39 = a1 + v16;
  while (2)
  {
    v40 = v15 + 1;
    sub_26BFD2BC0(v18 + v17 * v15, v13);
    v53 = sub_26C00947C();
    v52 = sub_26BFD2C80(&qword_280460230, MEMORY[0x277D6A958]);

    v20 = 0;
    while (1)
    {
      v54 = v20;
      v21 = v19 + v20 * v17;
      result = sub_26C00A43C();
      if (result)
      {
        v23 = *(v50 + 20);
        v24 = *(v21 + v23);
        v25 = *(v24 + 16);
        v26 = *&v13[v23];
        if (v25 == *(v26 + 16))
        {
          break;
        }
      }

LABEL_6:
      v20 = v54 + 1;
      if (v54 + 1 == v14)
      {

        sub_26BFD2C24(v13);
        v38 = 0;
        goto LABEL_22;
      }
    }

    if (!v25)
    {
LABEL_17:

      sub_26BFD2C24(v13);
      v38 = 1;
      v18 = v39;
      v15 = v40;
      if (v40 != v14)
      {
        continue;
      }

      goto LABEL_22;
    }

    break;
  }

  v27 = 0;
  v43 = *(v24 + 16);
  v44 = v24;
  while (2)
  {
    if (v27 < *(v24 + 16))
    {
      v28 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v29 = *(v49 + 72);
      v30 = v27;
      v31 = *(v49 + 16);
      result = v31(v57, v24 + v28 + v29 * v27, v4);
      v51 = v30 + 1;
      v32 = v26 + v28;
      v33 = -*(v26 + 16);
      v34 = -1;
      do
      {
        if (v33 + v34 == -1)
        {
          (*v55)(v57, v4);
          v14 = v47;
          v13 = v48;
          v19 = v45;
          v17 = v46;
          goto LABEL_6;
        }

        if (++v34 >= *(v26 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v35 = v32 + v29;
        (v31)(v8);
        sub_26BFD2C80(&qword_28045F0E0, MEMORY[0x277D6A988]);
        v36 = sub_26C00A43C();
        v37 = *v55;
        result = (*v55)(v8, v4);
        v32 = v35;
      }

      while ((v36 & 1) == 0);
      result = v37(v57, v4);
      v24 = v44;
      v27 = v51;
      v14 = v47;
      v13 = v48;
      v19 = v45;
      v17 = v46;
      if (v51 != v43)
      {
        continue;
      }

      goto LABEL_17;
    }

    break;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_26BFD2BC0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr287CB9999C9AttributeVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFD2C24(uint64_t a1)
{
  v2 = _s14descr287CB9999C9AttributeVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFD2C80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFD2CDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460620, &unk_26C0241E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFD2D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460620, &unk_26C0241E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s25RelativeDistinguishedNameVMa()
{
  result = qword_280460628;
  if (!qword_280460628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26BFD2E30()
{
  sub_26BFD2E9C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26BFD2E9C()
{
  if (!qword_280460638)
  {
    _s9AttributeVMa(255);
    v0 = type metadata accessor for _TinyArray();
    if (!v1)
    {
      atomic_store(v0, &qword_280460638);
    }
  }
}

uint64_t sub_26BFD2EF8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  sub_26BE2E1F0(v3, &v16 - v11, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(*v12 + 16);
  }

  else
  {
    result = sub_26BE2E258(v12, &qword_28045E520, &unk_26C016B80);
    v13 = 1;
  }

  if (v13 < a1)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v3, v10, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = *(*v10 + 16);
    }

    else
    {
      result = sub_26BE2E258(v10, &qword_28045E520, &unk_26C016B80);
      v15 = 1;
    }

    if (v15 >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD3088@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = _s9AttributeVMa(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v17 - v13;
  sub_26BE2E1F0(v3, v17 - v13, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(*v14 + 16) > a1)
    {
      sub_26BFD630C(*v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1, a2, _s9AttributeVMa);
    }

    __break(1u);
    goto LABEL_10;
  }

  sub_26BFD98B0(v14, v10, _s9AttributeVMa);
  if (a1)
  {
LABEL_10:
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_26C00AC1C();

    v18 = 0x207865646E69;
    v19 = 0xE600000000000000;
    v17[1] = a1;
    v16 = sub_26C00AEFC();
    MEMORY[0x26D699090](v16);

    MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
    result = sub_26C00AD6C();
    __break(1u);
    return result;
  }

  return sub_26BFD98B0(v10, a2, _s9AttributeVMa);
}

uint64_t sub_26BFD3330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - v10;
  sub_26BE2E1F0(v4, &v15 - v10, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(*v11 + 16);
  }

  else
  {
    result = sub_26BE2E258(v11, &qword_28045E520, &unk_26C016B80);
    v12 = 1;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (v12 >= a2)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460660, &qword_26C024370);
    result = sub_26BFD630C(v4, a3 + *(v14 + 40), _s25RelativeDistinguishedNameVMa);
    *a3 = a1;
    a3[1] = a2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD3478(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v135 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v130 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v119 = &v116 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v122 = &v116 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v116 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v125 = &v116 - v13;
  MEMORY[0x28223BE20](v12);
  v134 = &v116 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EEF0, &unk_26C0212A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v133 = (&v116 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E588, &qword_26C00E4E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v136 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v116 - v22;
  v24 = _s9AttributeVMa(0);
  v131 = *(v24 - 8);
  v25 = *(v131 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v129 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v128 = &v116 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v117 = &v116 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v118 = &v116 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v120 = &v116 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v121 = &v116 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v116 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v116 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v124 = &v116 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v123 = &v116 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v127 = &v116 - v49;
  MEMORY[0x28223BE20](v48);
  v51 = &v116 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v55 = (&v116 - v54);
  sub_26BE2E1F0(v132, &v116 - v54, &qword_28045E520, &unk_26C016B80);
  v126 = v52;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v137 = v24;
  if (EnumCaseMultiPayload != 1)
  {
    sub_26BFD98B0(v55, v51, _s9AttributeVMa);
    v63 = v133;
    sub_26BE2E1F0(v135, v133, &qword_28045EEF0, &unk_26C0212A0);
    v64 = v63;
    v65 = v134;
    sub_26BFD98B0(v64, v134, _s9AttributeVMa);
    v66 = v131;
    v67 = v131 + 56;
    v68 = *(v131 + 56);
    v68(v65, 0, 1, v24);
    v68(v23, 1, 1, v24);
    sub_26BE33EC0(v65, v23);
    v69 = v125;
    sub_26BFA724C(v23, v125);
    v135 = v68;
    v136 = v67;
    v68(v23, 1, 1, v24);
    v133 = *(v66 + 48);
    v134 = v66 + 48;
    if ((v133)(v69, 1, v24) != 1)
    {
      v71 = v66;
      v72 = v24;
      sub_26BE2E258(v132, &qword_28045E520, &unk_26C016B80);
      sub_26BFD98B0(v69, v127, _s9AttributeVMa);
      v73 = sub_26BEECB54(0, 2, 0, MEMORY[0x277D84F90]);
      v130 = v51;
      sub_26BFD630C(v51, v123, _s9AttributeVMa);
      v75 = v73[2];
      v74 = v73[3];
      v76 = v75 + 1;
      if (v75 >= v74 >> 1)
      {
        v73 = sub_26BEECB54(v74 > 1, v75 + 1, 1, v73);
      }

      v73[2] = v76;
      v77 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v78 = *(v71 + 72);
      sub_26BFD98B0(v123, v73 + v77 + v78 * v75, _s9AttributeVMa);
      sub_26BFD630C(v127, v124, _s9AttributeVMa);
      v79 = v73[3];
      v80 = v75 + 2;
      if (v80 > (v79 >> 1))
      {
        v73 = sub_26BEECB54(v79 > 1, v80, 1, v73);
      }

      v73[2] = v80;
      sub_26BFD98B0(v124, v73 + v77 + v78 * v76, _s9AttributeVMa);
      sub_26BFA724C(v23, v11);
      v135(v23, 1, 1, v72);
      v81 = v11;
      for (i = v72; (v133)(v81, 1, i) != 1; i = v85)
      {
        sub_26BFD98B0(v11, v43, _s9AttributeVMa);
        sub_26BFD630C(v43, v40, _s9AttributeVMa);
        v84 = v73[2];
        v83 = v73[3];
        if (v84 >= v83 >> 1)
        {
          v73 = sub_26BEECB54(v83 > 1, v84 + 1, 1, v73);
        }

        sub_26BFD9850(v43, _s9AttributeVMa);
        v73[2] = v84 + 1;
        sub_26BFD98B0(v40, v73 + v77 + v84 * v78, _s9AttributeVMa);
        sub_26BFA724C(v23, v11);
        v85 = v137;
        v135(v23, 1, 1, v137);
        v81 = v11;
      }

      sub_26BE2E258(v11, &qword_28045E528, &qword_26C00E4B0);
      sub_26BFD9850(v127, _s9AttributeVMa);
      sub_26BFD9850(v130, _s9AttributeVMa);
      sub_26BE2E258(v23, &qword_28045E588, &qword_26C00E4E8);
      *v132 = v73;
      return swift_storeEnumTagMultiPayload();
    }

    sub_26BFD9850(v51, _s9AttributeVMa);
    sub_26BE2E258(v23, &qword_28045E588, &qword_26C00E4E8);
    v70 = v69;
    return sub_26BE2E258(v70, &qword_28045E528, &qword_26C00E4B0);
  }

  v58 = v133;
  v57 = v134;
  v59 = v135;
  v60 = v131;
  v138 = *v55;
  v61 = v138;
  if (v138[2])
  {
    v62 = v132;
    sub_26BE2E258(v132, &qword_28045E520, &unk_26C016B80);
    sub_26BE2E1F0(v59, v58, &qword_28045EEF0, &unk_26C0212A0);
    sub_26BF9EA00(v58);
    *v62 = v138;
    return swift_storeEnumTagMultiPayload();
  }

  sub_26BE2E1F0(v135, v133, &qword_28045EEF0, &unk_26C0212A0);
  sub_26BFD98B0(v58, v57, _s9AttributeVMa);
  v87 = *(v60 + 56);
  v88 = v137;
  v87(v57, 0, 1, v137);
  v89 = v136;
  v87(v136, 1, 1, v88);
  sub_26BE33EC0(v57, v89);
  v90 = v122;
  sub_26BFA724C(v89, v122);
  v87(v89, 1, 1, v88);
  v91 = *(v60 + 48);
  if (v91(v90, 1, v88) == 1)
  {
    sub_26BE2E258(v89, &qword_28045E588, &qword_26C00E4E8);

    v70 = v90;
    return sub_26BE2E258(v70, &qword_28045E528, &qword_26C00E4B0);
  }

  sub_26BE2E258(v132, &qword_28045E520, &unk_26C016B80);
  v92 = v121;
  sub_26BFD98B0(v90, v121, _s9AttributeVMa);
  v93 = v119;
  sub_26BFA724C(v89, v119);
  v87(v89, 1, 1, v88);
  v135 = v91;
  v94 = v91(v93, 1, v88);
  if (v94 != 1)
  {
    v95 = v92;
    sub_26BFD98B0(v93, v120, _s9AttributeVMa);
    v96 = v61[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v96 >= v61[3] >> 1)
    {
      v61 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v96 + 1, 0, v61);
    }

    v98 = v117;
    sub_26BFD630C(v95, v118, _s9AttributeVMa);
    v100 = v61[2];
    v99 = v61[3];
    v101 = v100 + 1;
    if (v100 >= v99 >> 1)
    {
      v61 = sub_26BEECB54(v99 > 1, v100 + 1, 1, v61);
    }

    v61[2] = v101;
    v102 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v103 = *(v60 + 72);
    sub_26BFD98B0(v118, v61 + v102 + v103 * v100, _s9AttributeVMa);
    sub_26BFD630C(v120, v98, _s9AttributeVMa);
    v104 = v61[3];
    v105 = v100 + 2;
    if (v105 > (v104 >> 1))
    {
      v61 = sub_26BEECB54(v104 > 1, v105, 1, v61);
    }

    v61[2] = v105;
    sub_26BFD98B0(v98, v61 + v102 + v103 * v101, _s9AttributeVMa);
    v138 = v61;
    v106 = v136;
    v107 = v130;
    sub_26BFA724C(v136, v130);
    v87(v106, 1, 1, v88);
    if ((v135)(v107, 1, v88) != 1)
    {
      v108 = v128;
      v109 = v129;
      do
      {
        sub_26BFD98B0(v107, v108, _s9AttributeVMa);
        sub_26BFD630C(v108, v109, _s9AttributeVMa);
        v111 = v61[2];
        v110 = v61[3];
        if (v111 >= v110 >> 1)
        {
          v61 = sub_26BEECB54(v110 > 1, v111 + 1, 1, v61);
        }

        v108 = v128;
        sub_26BFD9850(v128, _s9AttributeVMa);
        v61[2] = v111 + 1;
        v112 = v61 + v102 + v111 * v103;
        v109 = v129;
        sub_26BFD98B0(v129, v112, _s9AttributeVMa);
        v113 = v136;
        v107 = v130;
        sub_26BFA724C(v136, v130);
        v114 = v113;
        v115 = v137;
        v87(v114, 1, 1, v137);
      }

      while ((v135)(v107, 1, v115) != 1);
    }

    sub_26BE2E258(v107, &qword_28045E528, &qword_26C00E4B0);
    sub_26BFD9850(v120, _s9AttributeVMa);
    sub_26BFD9850(v121, _s9AttributeVMa);
    sub_26BE2E258(v136, &qword_28045E588, &qword_26C00E4E8);
    *v132 = v61;
    return swift_storeEnumTagMultiPayload();
  }

  sub_26BE2E258(v89, &qword_28045E588, &qword_26C00E4E8);

  sub_26BE2E258(v93, &qword_28045E528, &qword_26C00E4B0);
  sub_26BFD98B0(v92, v132, _s9AttributeVMa);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFD4328(uint64_t a1)
{
  v3 = _s9AttributeVMa(0);
  v64 = *(v3 - 8);
  v4 = *(v64 + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v60 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v57 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v57 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v57 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v57 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v57 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v57 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v65 = &v57 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v57 - v30);
  v33 = v32;
  sub_26BE2E1F0(v1, &v57 - v30, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = *v31;
    v17 = v66;
    if (v66[2])
    {
      sub_26BE2E258(v1, &qword_28045E520, &unk_26C016B80);

      sub_26BF9F0F8(v34);
      *v1 = v66;
      return swift_storeEnumTagMultiPayload();
    }

    v44 = *(a1 + 16);
    if (v44)
    {
      v45 = v1;
      v37 = v64;
      v23 = ((*(v64 + 80) + 32) & ~*(v64 + 80));
      v57 = a1;
      sub_26BE2E258(v45, &qword_28045E520, &unk_26C016B80);
      v46 = v63;
      sub_26BFD630C(&v23[a1], v63, _s9AttributeVMa);
      if (v44 == 1)
      {

        sub_26BFD98B0(v46, v45, _s9AttributeVMa);
        return swift_storeEnumTagMultiPayload();
      }

      v35 = v37[9];
      sub_26BFD630C(&v23[a1 + v35], v62, _s9AttributeVMa);
      v50 = *(v17 + 16);
      v51 = v50 + v44;
      if (__OFADD__(v50, v44))
      {
        __break(1u);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        a1 = v59;
        v37 = v60;
        if (!isUniquelyReferenced_nonNull_native || v51 > *(v17 + 24) >> 1)
        {
          if (v50 <= v51)
          {
            v53 = v50 + v44;
          }

          else
          {
            v53 = v50;
          }

          v17 = sub_26BEECB54(isUniquelyReferenced_nonNull_native, v53, 0, v17);
        }

        sub_26BFD630C(v63, v61, _s9AttributeVMa);
        v51 = *(v17 + 16);
        v49 = *(v17 + 24);
        v50 = v51 + 1;
        if (v51 < v49 >> 1)
        {
LABEL_30:
          *(v17 + 16) = v50;
          sub_26BFD98B0(v61, &v23[v17 + v51 * v35], _s9AttributeVMa);
          sub_26BFD630C(v62, a1, _s9AttributeVMa);
          v54 = *(v17 + 24);
          v39 = v51 + 2;
          if (v39 > (v54 >> 1))
          {
            v17 = sub_26BEECB54(v54 > 1, v39, 1, v17);
          }

          *(v17 + 16) = v39;
          sub_26BFD98B0(a1, &v23[v17 + v50 * v35], _s9AttributeVMa);
          v66 = v17;
          v40 = v44 - 2;
          if (v44 == 2)
          {
LABEL_33:
            sub_26BFD9850(v62, _s9AttributeVMa);
            sub_26BFD9850(v63, _s9AttributeVMa);
            *v45 = v17;
          }

          else
          {
            v38 = &v23[2 * v35];
            v20 = v57 + v38;
            while (v40)
            {
              sub_26BFD630C(v20, v37, _s9AttributeVMa);
              v56 = *(v17 + 16);
              v55 = *(v17 + 24);
              v39 = v56 + 1;
              if (v56 >= v55 >> 1)
              {
                v17 = sub_26BEECB54(v55 > 1, v56 + 1, 1, v17);
              }

              *(v17 + 16) = v39;
              sub_26BFD98B0(v37, &v23[v17 + v56 * v35], _s9AttributeVMa);
              v20 += v35;
              if (!--v40)
              {
                goto LABEL_33;
              }
            }

            while (1)
            {
              __break(1u);
LABEL_42:
              v37 = sub_26BEECB54(v38 > 1, v40, 1, v37);
LABEL_6:
              v37[2] = v40;
              v41 = *(v64 + 72);
              sub_26BFD98B0(v23, v37 + v33 + v41 * v39, _s9AttributeVMa);
              sub_26BFD630C(v65, v20, _s9AttributeVMa);
              v42 = v37[3];
              v39 += 2;
              if (v39 > (v42 >> 1))
              {
                v37 = sub_26BEECB54(v42 > 1, v39, 1, v37);
              }

              v37[2] = v39;
              sub_26BFD98B0(v20, v37 + v33 + v41 * v40, _s9AttributeVMa);
              if (v35 == 1)
              {
                break;
              }

              v38 = v41 + v33;
              v20 = v57 + v41 + v33;
              v40 = 1;
              while (1)
              {
                v23 = (v40 + 1);
                if (__OFADD__(v40, 1))
                {
                  break;
                }

                sub_26BFD630C(v20, v17, _s9AttributeVMa);
                v48 = v37[2];
                v47 = v37[3];
                v39 = v48 + 1;
                if (v48 >= v47 >> 1)
                {
                  v37 = sub_26BEECB54(v47 > 1, v48 + 1, 1, v37);
                }

                v37[2] = v39;
                sub_26BFD98B0(v17, v37 + v33 + v48 * v41, _s9AttributeVMa);
                ++v40;
                v20 += v41;
                if (v23 == v35)
                {
                  goto LABEL_9;
                }
              }

              __break(1u);
            }

LABEL_9:
            sub_26BFD9850(v65, _s9AttributeVMa);
            sub_26BFD9850(v62, _s9AttributeVMa);
            *v58 = v37;
          }

          return swift_storeEnumTagMultiPayload();
        }
      }

      v17 = sub_26BEECB54(v49 > 1, v50, 1, v17);
      goto LABEL_30;
    }
  }

  else
  {
    sub_26BFD98B0(v31, v27, _s9AttributeVMa);
    v35 = *(a1 + 16);
    if (v35)
    {
      v63 = v33;
      v33 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v36 = v1;
      sub_26BE2E258(v1, &qword_28045E520, &unk_26C016B80);
      v57 = a1;
      sub_26BFD630C(a1 + v33, v65, _s9AttributeVMa);
      v37 = sub_26BEECB54(0, (v35 + 1), 0, MEMORY[0x277D84F90]);
      v62 = v27;
      sub_26BFD630C(v27, v23, _s9AttributeVMa);
      v39 = v37[2];
      v38 = v37[3];
      v40 = v39 + 1;
      v58 = v36;
      if (v39 < v38 >> 1)
      {
        goto LABEL_6;
      }

      goto LABEL_42;
    }

    return sub_26BFD9850(v27, _s9AttributeVMa);
  }
}

uint64_t sub_26BFD4B74()
{
  sub_26C00B05C();
  sub_26BFDBB64(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFD4BB8()
{
  sub_26C00B05C();
  sub_26BFDBB64(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFD4BF8@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = __OFSUB__(*a1, 1);
  v11 = *a1 - 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v2, v9, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = *(*v9 + 16);
    }

    else
    {
      result = sub_26BE2E258(v9, &qword_28045E520, &unk_26C016B80);
      v12 = 1;
    }

    if (v11 < v12)
    {
      *a2 = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD4D00(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *a1 - 1;
  if (__OFSUB__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v1, v7, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *(*v7 + 16);
    }

    else
    {
      result = sub_26BE2E258(v7, &qword_28045E520, &unk_26C016B80);
      v9 = 1;
    }

    if (v8 < v9)
    {
      *a1 = v8;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD4E08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = __OFADD__(*a1, a2);
  v13 = *a1 + a2;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    sub_26BE2E1F0(v3, v11, &qword_28045E520, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *(*v11 + 16);
    }

    else
    {
      result = sub_26BE2E258(v11, &qword_28045E520, &unk_26C016B80);
      v14 = 1;
    }

    if (v13 <= v14)
    {
      *a3 = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFD4F14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_26BFB2C98(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_26BFD4F6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_26BE2E1F0(v2, &v10 - v6, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(*v7 + 16);
  }

  else
  {
    result = sub_26BE2E258(v7, &qword_28045E520, &unk_26C016B80);
    v8 = 1;
  }

  *a1 = v8;
  return result;
}

void (*sub_26BFD5058(uint64_t *a1, unint64_t *a2))(uint64_t *a1)
{
  v4 = *(*(_s9AttributeVMa(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  *a1 = v5;
  sub_26BFD3088(*a2, v5);
  return sub_26BFD50EC;
}

void sub_26BFD50EC(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFD9850(*a1, _s9AttributeVMa);

  free(v1);
}

uint64_t sub_26BFD5148@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_26BE2E1F0(v2, &v10 - v6, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *(*v7 + 16);
  }

  else
  {
    result = sub_26BE2E258(v7, &qword_28045E520, &unk_26C016B80);
    v8 = 1;
  }

  *a1 = 0;
  a1[1] = v8;
  return result;
}

BOOL sub_26BFD5234()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_26BE2E1F0(v0, &v7 - v3, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(*v4 + 16);

    return v5 == 0;
  }

  else
  {
    sub_26BE2E258(v4, &qword_28045E520, &unk_26C016B80);
    return 0;
  }
}

uint64_t sub_26BFD531C@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = *a1;
  sub_26BE2E1F0(v3, &v13 - v8, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(*v9 + 16);
  }

  else
  {
    result = sub_26BE2E258(v9, &qword_28045E520, &unk_26C016B80);
    v11 = 1;
  }

  if (v10 >= v11)
  {
    __break(1u);
  }

  else
  {
    *a2 = v10 + 1;
  }

  return result;
}

uint64_t sub_26BFD5428(unint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *a1;
  sub_26BE2E1F0(v2, &v11 - v6, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = *(*v7 + 16);
  }

  else
  {
    result = sub_26BE2E258(v7, &qword_28045E520, &unk_26C016B80);
    v9 = 1;
  }

  if (v8 >= v9)
  {
    __break(1u);
  }

  else
  {
    *a1 = v8 + 1;
  }

  return result;
}

uint64_t sub_26BFD5530@<X0>(uint64_t a1@<X8>)
{
  sub_26BFD98B0(v1, a1, _s25RelativeDistinguishedNameVMa);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E530, &unk_26C022480);
  *(a1 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26BFD5590()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_26BE2E1F0(v0, &v7 - v3, &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(*v4 + 16);
  }

  else
  {
    sub_26BE2E258(v4, &qword_28045E520, &unk_26C016B80);
    v5 = 1;
  }

  return sub_26BFD2EF8(0, v5);
}

size_t sub_26BFD567C()
{
  v1 = sub_26BFB61A0(v0);
  sub_26BFD9850(v0, _s25RelativeDistinguishedNameVMa);
  return v1;
}

uint64_t sub_26BFD56C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26BFCB798();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BFD56F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460698, &qword_26C024578);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606A0, &unk_26C024580);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_26BFD630C(v0, v4, _s25RelativeDistinguishedNameVMa);
  sub_26BFD98B0(v4, v8, _s25RelativeDistinguishedNameVMa);
  v9 = &v8[*(v5 + 44)];
  *v9 = sub_26BFD56C8;
  v9[1] = 0;
  sub_26BFD9918();
  v10 = sub_26C00A3EC();
  sub_26BE2E258(v8, &qword_2804606A0, &unk_26C024580);
  return v10;
}

uint64_t sub_26BFD5864()
{
  sub_26BFD9B68(&qword_280460310, _s25RelativeDistinguishedNameVMa);
  sub_26C00AEFC();
  return sub_26C00A51C();
}

unint64_t sub_26BFD58E0()
{
  v1 = sub_26C00978C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  sub_26C00977C();
  _s9AttributeVMa(0);
  sub_26BFD9B68(&qword_280460500, _s9AttributeVMa);
  sub_26C00976C();
  if (v0)
  {
    (*(v2 + 8))(v8, v1);
  }

  else
  {
    v10 = sub_26C00971C();
    v29 = 0;
    v30 = v10;
    sub_26C00977C();
    v11 = *(v2 + 8);
    v11(v8, v1);
    (*(v2 + 32))(v8, v6, v1);
    v12 = v29;
    sub_26C00976C();
    if (v12)
    {
      v11(v8, v1);
    }

    else
    {
      result = sub_26C00971C();
      v14 = result;
      v15 = 0;
      v16 = *(v30 + 16);
      while (v16 != v15)
      {
        v17 = *(result + 16);
        if (v15 == v17)
        {
          break;
        }

        if (v15 >= v17)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v18 = *(v30 + v15 + 32);
        v19 = *(result + v15 + 32);
        if (v18 < v19)
        {
          v11(v8, v1);

          v9 = 1;
          return v9 & 1;
        }

        ++v15;
        if (v19 < v18)
        {
          v11(v8, v1);

LABEL_15:
          v9 = 0;
          return v9 & 1;
        }
      }

      result = sub_26BFCAE8C(v16, v14);
      v23 = v22 >> 1;
      v24 = (v22 >> 1) - v21;
      if (__OFSUB__(v22 >> 1, v21))
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if (v22 >> 1 == v21)
      {
        v11(v8, v1);
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      if (v21 > v23)
      {
        v23 = v21;
      }

      v25 = v23 - v21;
      v26 = (v20 + v21);
      while (v24)
      {
        if (!v25)
        {
          goto LABEL_27;
        }

        v27 = *v26++;
        --v25;
        --v24;
        if (v27)
        {
          swift_unknownObjectRelease();
          v11(v8, v1);
          v9 = 1;
          return v9 & 1;
        }
      }

      swift_unknownObjectRelease();
      v11(v8, v1);
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_26BFD5C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _s9AttributeVMa(0);
  sub_26BFD9B68(&qword_2804604F8, _s9AttributeVMa);
  v7 = sub_26C0097DC();
  if (!v3)
  {
    *a3 = MEMORY[0x277D84F90];
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
    swift_storeEnumTagMultiPayload();
    sub_26BFD4328(v8);

    sub_26BFD99CC(a3);
  }

  v9 = sub_26C00934C();
  (*(*(v9 - 8) + 8))(a2, v9);
  v10 = sub_26C00950C();
  return (*(*(v10 - 8) + 8))(a1, v10);
}

uint64_t sub_26BFD5DC0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460620, &unk_26C0241E0);
  sub_26BE13630(&qword_2804606B0, &qword_280460620, &unk_26C0241E0);
  sub_26BFD9B68(&qword_280460500, _s9AttributeVMa);
  return sub_26C00970C();
}

uint64_t sub_26BFD6228(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460660, &qword_26C024370);
    sub_26BFD9B68(a2, _s25RelativeDistinguishedNameVMa);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26BFD630C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_26BFD6374(char *result, int64_t a2, char a3, char *a4)
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

void *sub_26BFD6480(void *result, int64_t a2, char a3, void *a4)
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

char *sub_26BFD65C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4D0, &unk_26C00E2B0);
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

char *sub_26BFD66D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F210, &unk_26C024620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26BFD67E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E578, &unk_26C024610);
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

char *sub_26BFD68EC(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD69F0(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD6B18(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD6C24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606E0, &unk_26C024640);
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
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_26BFD6D24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606E8, &qword_26C024678);
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

void *sub_26BFD6E30(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606C0, &unk_26C0245B0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE08, &qword_26C016570);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26BFD6F88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_26BFD7170(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD7274(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1D0, &unk_26C024650);
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

char *sub_26BFD7394(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_26BFD74A0(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD75DC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_26BFD76D8(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD7800(char *result, int64_t a2, char a3, char *a4)
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

void *sub_26BFD7920(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606D8, &unk_26C024600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA28, &qword_26C01D618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_26BFD7A68(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606B8, &unk_26C024590);
  v10 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() - 8);
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
  v15 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() - 8);
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

char *sub_26BFD7C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804606C8, &unk_26C0245C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_26BFD7D3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F260, &qword_26C01A8A0);
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

char *sub_26BFD7E68(char *result, int64_t a2, char a3, char *a4)
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

char *sub_26BFD7F90(char *result, int64_t a2, char a3, char *a4)
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

uint64_t sub_26BFD80BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26C00AEEC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        _s9AttributeVMa(0);
        v6 = sub_26C00A74C();
        *(v6 + 16) = v5;
      }

      v7 = *(_s9AttributeVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26BFD8448(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26BFD81E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26BFD81E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = _s9AttributeVMa(0);
  v9 = *(*(v36 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v36);
  v35 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v28 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_4:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_26BFD630C(v24, v18, _s9AttributeVMa);
      sub_26BFD630C(v21, v14, _s9AttributeVMa);
      v25 = sub_26BFD58E0();
      sub_26BFD9850(v14, _s9AttributeVMa);
      result = sub_26BFD9850(v18, _s9AttributeVMa);
      if (v4)
      {
        break;
      }

      if (v25)
      {
        if (!v34)
        {
          __break(1u);
          return result;
        }

        v26 = v35;
        sub_26BFD98B0(v24, v35, _s9AttributeVMa);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26BFD98B0(v26, v21, _s9AttributeVMa);
        v21 += v22;
        v24 += v22;
        if (!__CFADD__(v23++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v21 = v32 + v28;
      v23 = v31 - 1;
      v24 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_26BFD8448(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v127 = _s9AttributeVMa(0);
  v9 = *(v127 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v127);
  v124 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v126 = &v109 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v114 = &v109 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v120 = &v109 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v109 - v22;
  result = MEMORY[0x28223BE20](v21);
  v28 = &v109 - v25;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v122;
    if (*v122)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_130;
      }

      goto LABEL_99;
    }

    goto LABEL_139;
  }

  v128 = v27;
  v125 = v26;
  v116 = a4;
  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v118 = &v109 - v25;
  v119 = v23;
  v123 = a3;
  v115 = v9;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v38 = v30 + 1;
    }

    else
    {
      v130 = v29;
      v32 = *a3;
      v33 = *(v9 + 72);
      v5 = v32 + v33 * (v30 + 1);
      sub_26BFD630C(v5, v28, _s9AttributeVMa);
      v131 = v32;
      sub_26BFD630C(v32 + v33 * v30, v23, _s9AttributeVMa);
      LODWORD(v129) = sub_26BFD58E0();
      if (v6)
      {
        sub_26BFD9850(v23, _s9AttributeVMa);
        sub_26BFD9850(v28, _s9AttributeVMa);
      }

      sub_26BFD9850(v23, _s9AttributeVMa);
      result = sub_26BFD9850(v28, _s9AttributeVMa);
      v117 = v30;
      v34 = v30 + 2;
      v35 = v131 + v33 * (v30 + 2);
      v36 = v120;
      v37 = v33;
      v131 = v33;
      while (1)
      {
        v38 = v130;
        if (v130 == v34)
        {
          break;
        }

        v39 = v128;
        sub_26BFD630C(v35, v128, _s9AttributeVMa);
        sub_26BFD630C(v5, v36, _s9AttributeVMa);
        v40 = sub_26BFD58E0();
        sub_26BFD9850(v36, _s9AttributeVMa);
        result = sub_26BFD9850(v39, _s9AttributeVMa);
        ++v34;
        v37 = v131;
        v35 += v131;
        v5 += v131;
        if ((v129 ^ v40))
        {
          v38 = v34 - 1;
          break;
        }
      }

      v6 = 0;
      v9 = v115;
      v30 = v117;
      if ((v129 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v38 < v117)
      {
        goto LABEL_133;
      }

      if (v117 < v38)
      {
        v41 = v38;
        v42 = v37 * (v38 - 1);
        v43 = v41 * v37;
        v130 = v41;
        v44 = v117 * v37;
        do
        {
          if (v30 != --v41)
          {
            v45 = *v123;
            if (!*v123)
            {
              goto LABEL_137;
            }

            v5 = v45 + v44;
            sub_26BFD98B0(v45 + v44, v124, _s9AttributeVMa);
            if (v44 < v42 || v5 >= v45 + v43)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v44 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_26BFD98B0(v124, v45 + v42, _s9AttributeVMa);
            v37 = v131;
          }

          ++v30;
          v42 -= v37;
          v43 -= v37;
          v44 += v37;
        }

        while (v30 < v41);
        v6 = 0;
        a3 = v123;
        v9 = v115;
        v30 = v117;
        v38 = v130;
      }

      else
      {
LABEL_24:
        a3 = v123;
      }
    }

    v46 = a3[1];
    if (v38 >= v46)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v38, v30))
    {
      goto LABEL_129;
    }

    if (v38 - v30 >= v116)
    {
      goto LABEL_36;
    }

    if (__OFADD__(v30, v116))
    {
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v130 = v38;
    if (v30 + v116 >= v46)
    {
      v47 = v46;
    }

    else
    {
      v47 = v30 + v116;
    }

    if (v47 < v30)
    {
      goto LABEL_132;
    }

    if (v130 == v47)
    {
      v38 = v130;
LABEL_36:
      if (v38 < v30)
      {
        goto LABEL_128;
      }

      goto LABEL_37;
    }

    v93 = v6;
    v94 = *a3;
    v95 = *(v9 + 72);
    v96 = *a3 + v95 * (v130 - 1);
    v129 = -v95;
    v117 = v30;
    v97 = v30 - v130;
    v131 = v94;
    v110 = v95;
    v5 = v94 + v130 * v95;
    v98 = v114;
    v121 = v47;
    do
    {
      v111 = v5;
      v112 = v97;
      v113 = v96;
      v99 = v96;
      do
      {
        sub_26BFD630C(v5, v98, _s9AttributeVMa);
        v100 = v125;
        sub_26BFD630C(v99, v125, _s9AttributeVMa);
        v101 = sub_26BFD58E0();
        if (v93)
        {
          sub_26BFD9850(v100, _s9AttributeVMa);
          sub_26BFD9850(v98, _s9AttributeVMa);
        }

        v102 = v101;
        sub_26BFD9850(v100, _s9AttributeVMa);
        result = sub_26BFD9850(v98, _s9AttributeVMa);
        if ((v102 & 1) == 0)
        {
          break;
        }

        if (!v131)
        {
          goto LABEL_135;
        }

        v103 = v126;
        sub_26BFD98B0(v5, v126, _s9AttributeVMa);
        swift_arrayInitWithTakeFrontToBack();
        sub_26BFD98B0(v103, v99, _s9AttributeVMa);
        v99 += v129;
        v5 += v129;
      }

      while (!__CFADD__(v97++, 1));
      v96 = v113 + v110;
      v97 = v112 - 1;
      v5 = v111 + v110;
      v38 = v121;
      ++v130;
    }

    while (v130 != v121);
    v6 = 0;
    a3 = v123;
    v9 = v115;
    v30 = v117;
    if (v121 < v117)
    {
      goto LABEL_128;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26BEEC164(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v49 = *(v31 + 2);
    v48 = *(v31 + 3);
    v5 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_26BEEC164((v48 > 1), v49 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v5;
    v50 = &v31[16 * v49];
    *(v50 + 4) = v30;
    *(v50 + 5) = v38;
    v51 = *v122;
    if (!*v122)
    {
      goto LABEL_138;
    }

    v121 = v38;
    if (v49)
    {
      break;
    }

LABEL_3:
    v29 = a3[1];
    v30 = v121;
    v28 = v118;
    v23 = v119;
    if (v121 >= v29)
    {
      goto LABEL_97;
    }
  }

  while (1)
  {
    v52 = v5 - 1;
    if (v5 >= 4)
    {
      v57 = &v31[16 * v5 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_115;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_116;
      }

      v64 = &v31[16 * v5];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_118;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_121;
      }

      if (v68 >= v60)
      {
        v86 = &v31[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_127;
        }

        if (v55 < v89)
        {
          v52 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v5 == 3)
    {
      v53 = *(v31 + 4);
      v54 = *(v31 + 5);
      v63 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      v56 = v63;
LABEL_56:
      if (v56)
      {
        goto LABEL_117;
      }

      v69 = &v31[16 * v5];
      v71 = *v69;
      v70 = *(v69 + 1);
      v72 = __OFSUB__(v70, v71);
      v73 = v70 - v71;
      v74 = v72;
      if (v72)
      {
        goto LABEL_120;
      }

      v75 = &v31[16 * v52 + 32];
      v77 = *v75;
      v76 = *(v75 + 1);
      v63 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v63)
      {
        goto LABEL_123;
      }

      if (__OFADD__(v73, v78))
      {
        goto LABEL_124;
      }

      if (v73 + v78 >= v55)
      {
        if (v55 < v78)
        {
          v52 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v79 = &v31[16 * v5];
    v81 = *v79;
    v80 = *(v79 + 1);
    v63 = __OFSUB__(v80, v81);
    v73 = v80 - v81;
    v74 = v63;
LABEL_70:
    if (v74)
    {
      goto LABEL_119;
    }

    v82 = &v31[16 * v52];
    v84 = *(v82 + 4);
    v83 = *(v82 + 5);
    v63 = __OFSUB__(v83, v84);
    v85 = v83 - v84;
    if (v63)
    {
      goto LABEL_122;
    }

    if (v85 < v73)
    {
      goto LABEL_3;
    }

LABEL_77:
    v90 = v52 - 1;
    if (v52 - 1 >= v5)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_134;
    }

    v5 = *&v31[16 * v90 + 32];
    v91 = *&v31[16 * v52 + 40];
    sub_26BFD8ED4(*a3 + *(v9 + 72) * v5, *a3 + *(v9 + 72) * *&v31[16 * v52 + 32], *a3 + *(v9 + 72) * v91, v51);
    if (v6)
    {
    }

    if (v91 < v5)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_26BFD9590(v31);
    }

    if (v90 >= *(v31 + 2))
    {
      goto LABEL_114;
    }

    v92 = &v31[16 * v90];
    *(v92 + 4) = v5;
    *(v92 + 5) = v91;
    v132 = v31;
    result = sub_26BFD9504(v52);
    v31 = v132;
    v5 = *(v132 + 2);
    if (v5 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_26BFD9590(v31);
  v31 = result;
LABEL_99:
  v132 = v31;
  v105 = *(v31 + 2);
  if (v105 < 2)
  {
  }

  v106 = v9;
  while (*a3)
  {
    v9 = *&v31[16 * v105];
    v107 = *&v31[16 * v105 + 24];
    sub_26BFD8ED4(*a3 + *(v106 + 72) * v9, *a3 + *(v106 + 72) * *&v31[16 * v105 + 16], *a3 + *(v106 + 72) * v107, v5);
    if (v6)
    {
    }

    if (v107 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_26BFD9590(v31);
    }

    if (v105 - 2 >= *(v31 + 2))
    {
      goto LABEL_126;
    }

    v108 = &v31[16 * v105];
    *v108 = v9;
    *(v108 + 1) = v107;
    v132 = v31;
    result = sub_26BFD9504(v105 - 1);
    v31 = v132;
    v105 = *(v132 + 2);
    if (v105 <= 1)
    {
    }
  }

LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_26BFD8ED4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v65 = _s9AttributeVMa(0);
  v9 = *(*(v65 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v65);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v54 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v54 - v15;
  result = MEMORY[0x28223BE20](v14);
  v20 = &v54 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_64;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_65;
  }

  v24 = (a2 - a1) / v22;
  v68 = a1;
  v67 = a4;
  v64 = v22;
  if (v24 >= v23 / v22)
  {
    v27 = v23 / v22 * v22;
    v60 = v18;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v28 = v13;
    }

    else
    {
      v28 = v13;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v37 = a4 + v27;
    v38 = v4;
    if (v27 >= 1)
    {
      v39 = -v64;
      v40 = a4 + v27;
      v57 = a4;
      v58 = a1;
      v56 = -v64;
      do
      {
        v54 = v37;
        v41 = a2 + v39;
        v59 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v68 = a2;
            v66 = v54;
            goto LABEL_62;
          }

          v63 = a3;
          v64 = v40;
          v55 = v37;
          v62 = (v40 + v39);
          sub_26BFD630C(v40 + v39, v28, _s9AttributeVMa);
          v44 = v28;
          v45 = v60;
          sub_26BFD630C(v41, v60, _s9AttributeVMa);
          v46 = sub_26BFD58E0();
          if (v38)
          {
            sub_26BFD9850(v45, _s9AttributeVMa);
            sub_26BFD9850(v44, _s9AttributeVMa);
            v68 = v59;
            v66 = v55;
            goto LABEL_62;
          }

          v47 = v46;
          v61 = 0;
          v48 = v41;
          v49 = v63;
          v50 = v63 + v39;
          sub_26BFD9850(v45, _s9AttributeVMa);
          sub_26BFD9850(v44, _s9AttributeVMa);
          v28 = v44;
          if (v47)
          {
            break;
          }

          v51 = v62;
          v37 = v62;
          a3 = v49 + v39;
          if (v49 < v64 || v50 >= v64)
          {
            v42 = v62;
            swift_arrayInitWithTakeFrontToBack();
            v37 = v42;
            v41 = v48;
            v38 = v61;
          }

          else
          {
            v52 = v49 == v64;
            v41 = v48;
            v38 = v61;
            if (!v52)
            {
              v53 = v62;
              swift_arrayInitWithTakeBackToFront();
              v37 = v53;
            }
          }

          v40 = v37;
          a1 = v58;
          v43 = v51 > v57;
          v39 = v56;
          a2 = v59;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v49 + v39;
        if (v49 < v59 || v50 >= v59)
        {
          a2 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v61;
          v39 = v56;
        }

        else
        {
          a2 = v48;
          v38 = v61;
          v39 = v56;
          if (v49 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v58;
        v40 = v64;
        v37 = v55;
      }

      while (v64 > v57);
    }

LABEL_58:
    v68 = a2;
    v66 = v37;
  }

  else
  {
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v26 = v4;
    }

    else
    {
      v26 = v4;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v63 = a4 + v25;
    v66 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v30 = v64;
      v61 = v20;
      v62 = v16;
      while (1)
      {
        v31 = a3;
        sub_26BFD630C(a2, v20, _s9AttributeVMa);
        sub_26BFD630C(a4, v16, _s9AttributeVMa);
        v32 = sub_26BFD58E0();
        if (v26)
        {
          break;
        }

        v33 = v32;
        v34 = v16;
        v35 = a4;
        sub_26BFD9850(v34, _s9AttributeVMa);
        sub_26BFD9850(v20, _s9AttributeVMa);
        if (v33)
        {
          v36 = a2 + v30;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v30;
          if (a1 < v35 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v31;
          }

          else
          {
            a3 = v31;
            if (a1 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = v35 + v30;
        }

        v16 = v62;
        v30 = v64;
        a1 += v64;
        v68 = a1;
        v20 = v61;
        if (a4 >= v63 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_26BFD9850(v16, _s9AttributeVMa);
      sub_26BFD9850(v20, _s9AttributeVMa);
    }
  }

LABEL_62:
  sub_26BFD95A4(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_26BFD9504(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BFD9590(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_26BFD95A4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = _s9AttributeVMa(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26BFD9688(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F1A8, &qword_26C01A7F8);
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

uint64_t sub_26BFD9850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BFD98B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_26BFD9918()
{
  result = qword_2804606A8;
  if (!qword_2804606A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804606A0, &unk_26C024580);
    sub_26BFD9B68(&qword_280460678, _s25RelativeDistinguishedNameVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804606A8);
  }

  return result;
}

uint64_t sub_26BFD99CC(void *a1)
{
  v2 = *(_s9AttributeVMa(0) - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-v5];
  sub_26BE2E1F0(a1, &v10[-v5], &qword_28045E520, &unk_26C016B80);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_26BE2E258(v6, &qword_28045E520, &unk_26C016B80);
  }

  sub_26BE2E258(a1, &qword_28045E520, &unk_26C016B80);
  v7 = *v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_26BE58884(v7);
  }

  v8 = v7[2];
  v11[0] = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v11[1] = v8;
  sub_26BFD80BC(v11);
  *a1 = v7;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26BFD9B68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFD9BD4(uint64_t a1)
{
  sub_26C00B05C();
  v2 = *(a1 + 16);
  MEMORY[0x26D699B20](v2);
  if (v2)
  {
    v3 = *(_s11GeneralNameOMa(0) - 8);
    v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      sub_26BFE2AF0(v7);
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFD9CA0(uint64_t a1)
{
  v3 = _s11GeneralNameOMa(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  result = MEMORY[0x26D699B20](*(*v1 + 16));
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_26BFDB350(v11, v7);
      sub_26BFE2AF0(a1);
      result = sub_26BFDB3B4(v7);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_26BFD9D9C()
{
  v1 = _s11GeneralNameOMa(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *v0;
  sub_26C00B05C();
  MEMORY[0x26D699B20](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_26BFDB350(v8, v5);
      sub_26BFE2AF0(v12);
      sub_26BFDB3B4(v5);
      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return sub_26C00B0CC();
}

uint64_t sub_26BFD9EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s11GeneralNameOMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_26BFDB350(a1, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_26C00A51C();
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_26BFD9F54()
{
  v3 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460768, &unk_26C024AD0);
  sub_26BFDB410();
  v1 = sub_26C00A3EC();

  return v1;
}

unint64_t sub_26BFD9FF0()
{
  sub_26C00AC1C();

  sub_26BE85EDC();
  v0 = sub_26C00AEFC();
  MEMORY[0x26D699090](v0);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_26BFDA09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460778, &qword_26C024AE8);
  return sub_26C00A70C();
}

size_t sub_26BFDA194(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26BE5885C(v5);
  v5 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < v5[2])
  {
    v7 = *(_s11GeneralNameOMa(0) - 8);
    result = sub_26BFDB494(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*sub_26BFDA260(void *a1, unint64_t *a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *(_s11GeneralNameOMa(0) - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[1] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[1] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v11 = *a2;
  v7[2] = result;
  v7[3] = v11;
  v12 = *v2;
  v7[4] = *v2;
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v12 + 16))
  {
    v13 = *(v8 + 80);
    *(v7 + 12) = v13;
    v14 = v12 + ((v13 + 32) & ~v13);
    v15 = *(v8 + 72);
    v7[5] = v15;
    sub_26BFDB350(v14 + v15 * v11, result);
    return sub_26BFDA3B8;
  }

  __break(1u);
  return result;
}

void sub_26BFDA3B8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    sub_26BFDB350(v2[2], v2[1]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_26BE5885C(v2[4]);
    }

    v6 = v2[3];
    if (v6 < v5[2])
    {
      v8 = v2[1];
      v7 = v2[2];
      v9 = *v2;
      sub_26BFDB494(v8, v5 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v6);
      *v9 = v5;
      sub_26BFDB3B4(v7);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = *(*a1 + 32);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v5 = v2[4];
  if ((v11 & 1) == 0)
  {
LABEL_13:
    v5 = sub_26BE5885C(v5);
  }

  v12 = v2[3];
  if (v12 >= v5[2])
  {
    __break(1u);
    return;
  }

  v8 = v2[1];
  v7 = v2[2];
  v13 = *v2;
  sub_26BFDB494(v7, v5 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * v12);
  *v13 = v5;
LABEL_9:
  free(v7);
  free(v8);

  free(v2);
}

uint64_t sub_26BFDA4E8(int64_t *a1, uint64_t a2)
{
  sub_26BFB6130(v2, *a2, *(a2 + 8), *a1, a1[1], a1[2]);
}

void (*sub_26BFDA534(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = sub_26BFB3584(v4, *a2, a2[1]);
  return sub_26BFB333C;
}

uint64_t sub_26BFDA5AC@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_26BFB6D74(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_26BFDA5E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_26BFDA09C(*a1, a1[1], a2, a3);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_26BFDA664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FF58, &qword_26C024AE0);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = (&v12 - v9);
  v13 = MEMORY[0x277D84F90];
  if (!a2)
  {
    result = sub_26BFDB3B4(a1);
    v11 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    *v10 = a2;
    sub_26BFDB5CC(a1, v10 + *(result + 28));
    result = sub_26BFB4414(v10);
    v11 = v13;
LABEL_5:
    *a3 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BFDA740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_26BFDB4F8(a1, a2);
  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_26BFDA7AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(*v1 + 16);
  sub_26BFDB5CC(a1, &v12 - v8);
  sub_26BFDB630(v9, v7);
  sub_26BE56570(v10, v10, v7);
  return sub_26BFDB6A0(v9);
}

uint64_t sub_26BFDA888(uint64_t a1, unint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  v11 = *a2;
  sub_26BFDB5CC(a1, &v13 - v9);
  sub_26BFDB630(v10, v8);
  sub_26BE56570(v11, v11, v8);
  return sub_26BFDB6A0(v10);
}

uint64_t sub_26BFDA978@<X0>(uint64_t a1@<X8>)
{
  v2 = _s11GeneralNameOMa(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_26BFDA9E4(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(*v1 + 16))
  {
    v4 = *(_s11GeneralNameOMa(0) - 8);
    sub_26BFDB350(v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), a1);

    sub_26BE5B05C(0, 1);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_26BFDAA78(unint64_t result)
{
  if (!result)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  result = sub_26BFB76E8(0, result, *(*v1 + 16), *v1);
  if (v2)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_26BE5B05C(0, result);
}

unint64_t sub_26BFDAAE0(char a1)
{
  if (a1)
  {
    v2 = *(*v1 + 16);

    return sub_26BE5B05C(0, v2);
  }

  else
  {

    *v1 = MEMORY[0x277D84F90];
  }

  return result;
}

int64_t sub_26BFDAB30(uint64_t a1, uint64_t a2)
{
  result = sub_26BFB7430(a1, a2);
  if (!v3)
  {
    v5 = *(*v2 + 16);
    if (v5 < result)
    {
      __break(1u);
    }

    else
    {
      return sub_26BE5B05C(result, v5);
    }
  }

  return result;
}

void (*sub_26BFDAB74(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  v5 = *(_s11GeneralNameOMa(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_26BFDB350(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result);
    return sub_26BFDAC70;
  }

  __break(1u);
  return result;
}

void sub_26BFDAC70(uint64_t *a1)
{
  v1 = *a1;
  sub_26BFDB3B4(*a1);

  free(v1);
}

uint64_t sub_26BFDACAC()
{
  v1 = sub_26BFB641C(*v0);

  return v1;
}

void sub_26BFDACEC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    if (v5 == v4)
    {
      break;
    }

    v6 = *(_s11GeneralNameOMa(0) - 8);
    v7 = v4 + 1;
    v8 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4;
    sub_26BFDB724();
    sub_26C00976C();
    v4 = v7;
  }

  while (!v2);
}

uint64_t sub_26BFDADC8()
{
  v1 = sub_26C00934C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  v9 = v6;
  sub_26C00973C();
  return (*(v2 + 8))(v5, v1);
}

unint64_t sub_26BFDAF1C()
{
  result = qword_280460700;
  if (!qword_280460700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460700);
  }

  return result;
}

unint64_t sub_26BFDAFB8()
{
  result = qword_280460718;
  if (!qword_280460718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460718);
  }

  return result;
}

unint64_t sub_26BFDB054()
{
  result = qword_280460728;
  if (!qword_280460728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460728);
  }

  return result;
}

unint64_t sub_26BFDB0F0()
{
  result = qword_280460738;
  if (!qword_280460738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460738);
  }

  return result;
}

unint64_t sub_26BFDB18C()
{
  result = qword_280460748;
  if (!qword_280460748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460748);
  }

  return result;
}

uint64_t sub_26BFDB22C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460710, &qword_26C024758);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26BFDB2A4()
{
  result = qword_280460758;
  if (!qword_280460758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460758);
  }

  return result;
}

unint64_t sub_26BFDB2FC()
{
  result = qword_280460760;
  if (!qword_280460760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460760);
  }

  return result;
}

uint64_t sub_26BFDB350(uint64_t a1, uint64_t a2)
{
  v4 = _s11GeneralNameOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB3B4(uint64_t a1)
{
  v2 = _s11GeneralNameOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFDB410()
{
  result = qword_280460770;
  if (!qword_280460770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280460768, &unk_26C024AD0);
    sub_26BFDB054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460770);
  }

  return result;
}

uint64_t sub_26BFDB494(uint64_t a1, uint64_t a2)
{
  v4 = _s11GeneralNameOMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB4F8(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s11GeneralNameOMa(0);
  return sub_26C00A7CC();
}

uint64_t sub_26BFDB5CC(uint64_t a1, uint64_t a2)
{
  v4 = _s11GeneralNameOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDB6A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E6F0, &unk_26C011350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26BFDB724()
{
  result = qword_280460780;
  if (!qword_280460780)
  {
    _s11GeneralNameOMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280460780);
  }

  return result;
}

unint64_t sub_26BFDB780@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    result = 0;
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    result = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v7)
  {
    result = BYTE6(a2);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    return result;
  }

  result = HIDWORD(v5) - v5;
LABEL_10:
  sub_26BF30414(result);
  if (v3)
  {
    return sub_26BE00258(0, 0xC000000000000000);
  }

  sub_26BE11228(v5, a2);
  v10 = sub_26C00909C();
  v12 = v11;
  result = sub_26BE00258(0, 0xC000000000000000);
  *a3 = -4090;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_26BFDB8C0(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_7;
    }

    v2 = *(v3 + 16);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v2 = v3;
  }

  sub_26BE00608(*(a1 + 8), v4);
LABEL_7:
  v25 = v3;
  v26 = v4;
  v27 = v2;
  sub_26BE00608(v3, v4);
  sub_26BE00608(v3, v4);
  sub_26BF30764(&v25, &v23);
  if (v1)
  {
    sub_26BE00258(v25, v26);
    swift_willThrow();
    sub_26BE00258(v3, v4);
    v25 = v3;
    v26 = v4;
    v27 = v2;
LABEL_25:
    swift_willThrow();
    v23 = MEMORY[0x277CC9318];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280460788, &unk_26C024AF0);
    v19 = sub_26C00A4FC();
    sub_26BE826C4(v19, v20, v3, v4);

    swift_willThrow();
    return sub_26BE00258(v25, v26);
  }

  if (v24)
  {
    sub_26BE00258(v25, v26);
    v6 = v4;
    v7 = v3;
LABEL_24:
    sub_26BE00258(v7, v6);
    v25 = v3;
    v26 = v4;
    v27 = v2;
    sub_26BE01600();
    swift_allocError();
    *v18 = 1;
    goto LABEL_25;
  }

  v8 = v23;
  sub_26BE00258(v3, v4);
  result = v27;
  v10 = v27 + v8;
  if (__OFADD__(v27, v8))
  {
    __break(1u);
    goto LABEL_33;
  }

  v7 = v25;
  v6 = v26;
  v11 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v11 != 2)
    {
      if (v10 > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v12 = *(v25 + 24);
  }

  else if (v11)
  {
    v12 = v25 >> 32;
  }

  else
  {
    v12 = BYTE6(v26);
  }

  if (v12 < v10)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v10 >= v27)
  {
    v13 = sub_26C00909C();
    v14 = v13;
    v16 = v15;
    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v17 != 2)
      {
LABEL_31:
        v22 = sub_26C00909C();
        sub_26BE00258(v14, v16);
        sub_26BE00258(v3, v4);
        sub_26BE00258(v7, v6);
        return v22;
      }

      v13 = *(v13 + 16);
      v21 = *(v14 + 24);
    }

    else
    {
      if (!v17)
      {
        goto LABEL_31;
      }

      v13 = v13;
      v21 = v14 >> 32;
    }

    if (v21 < v13)
    {
      __break(1u);
    }

    goto LABEL_31;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_26BFDBB64(uint64_t a1)
{
  v2 = v1;
  v73 = a1;
  v63 = sub_26C0094DC();
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = _s9AttributeV5ValueV7StorageOMa(0);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v71 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = _s9AttributeVMa(0);
  v64 = *(v68 - 8);
  v7 = *(v64 + 64);
  v8 = MEMORY[0x28223BE20](v68);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607B8, &qword_26C024C40);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v69 = &v59 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v59 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v59 - v29;
  sub_26BE2E1F0(v1, &v59 - v29, &qword_28045E520, &unk_26C016B80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v67 = v15;
  if (EnumCaseMultiPayload == 1)
  {
    v32 = *(*v30 + 16);
  }

  else
  {
    sub_26BE2E258(v30, &qword_28045E520, &unk_26C016B80);
    v32 = 1;
  }

  v33 = sub_26BFD9BBC(0, v32);
  MEMORY[0x26D699B20](v33);
  v34 = &qword_28045E520;
  v35 = v69;
  sub_26BE2E1F0(v2, v69, &qword_28045E520, &unk_26C016B80);
  v36 = 0;
  v65 = *(v67 + 36);
  *(v35 + v65) = 0;
  v67 = v64 + 56;
  v37 = v60;
  v60 += 8;
  v61 = (v37 + 32);
  while (1)
  {
    sub_26BE2E1F0(v35, v28, v34, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = *(*v28 + 16);

      if (v36 == v41)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_26BE2E258(v28, v34, &unk_26C016B80);
      if (v36 == 1)
      {
LABEL_25:
        sub_26BE2E258(v35, &qword_2804607B8, &qword_26C024C40);
        return (*v67)(v72, 1, 1, v68);
      }
    }

    sub_26BE2E1F0(v35, v25, v34, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v36 >= *(*v25 + 16))
      {
        goto LABEL_27;
      }

      sub_26BFDDE8C(*v25 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v36, v72, _s9AttributeVMa);

      v35 = v69;
    }

    else
    {
      sub_26BFDDE24(v25, v11, _s9AttributeVMa);
      if (v36)
      {
        goto LABEL_28;
      }

      sub_26BFDDE24(v11, v72, _s9AttributeVMa);
    }

    sub_26BE2E1F0(v35, v22, v34, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *(*v22 + 16);
    }

    else
    {
      sub_26BE2E258(v22, v34, &unk_26C016B80);
      v42 = 1;
    }

    if (v36 >= v42)
    {
      break;
    }

    v43 = v34;
    v44 = v28;
    v45 = v25;
    v46 = v22;
    v47 = v18;
    v48 = v11;
    *(v35 + v65) = v36 + 1;
    v49 = v68;
    v50 = v72;
    (*v67)(v72, 0, 1, v68);
    v51 = v70;
    sub_26BFDDE24(v50, v70, _s9AttributeVMa);
    sub_26C00947C();
    sub_26BFDDEF4(&qword_28045F0C0, MEMORY[0x277D6A958]);
    sub_26C00A3CC();
    sub_26BFDDE8C(v51 + *(v49 + 20), v71, _s9AttributeV5ValueV7StorageOMa);
    v52 = swift_getEnumCaseMultiPayload();
    if (!v52)
    {
      v38 = *v71;
      v39 = v71[1];
      v40 = 0;
LABEL_6:
      MEMORY[0x26D699B20](v40);
      sub_26C00A58C();

      goto LABEL_7;
    }

    if (v52 == 1)
    {
      v53 = *v71;
      v54 = v71[1];
      v40 = 1;
      goto LABEL_6;
    }

    v55 = v62;
    v56 = v63;
    (*v61)(v62, v71, v63);
    MEMORY[0x26D699B20](2);
    sub_26BFDDEF4(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*v60)(v55, v56);
LABEL_7:
    sub_26BFDDF3C(v70, _s9AttributeVMa);
    ++v36;
    v11 = v48;
    v18 = v47;
    v22 = v46;
    v25 = v45;
    v28 = v44;
    v34 = v43;
    v35 = v69;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_26C00AC1C();

  v75 = 0x207865646E69;
  v76 = 0xE600000000000000;
  v74 = v36;
  v58 = sub_26C00AEFC();
  MEMORY[0x26D699090](v58);

  MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

uint64_t MLS.CertificationRequestInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = _s25RelativeDistinguishedNameVMa();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D699B20](*v1);
  v9 = v1[1];
  MEMORY[0x26D699B20](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_26BFDDE8C(v11, v8, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(a1);
      sub_26BFDDF3C(v8, _s25RelativeDistinguishedNameVMa);
      v11 += v12;
      --v10;
    }

    while (v10);
  }

  v13 = type metadata accessor for MLS.CertificationRequestInfo();
  v14 = v1 + *(v13 + 24);
  sub_26BFCE15C(a1);
  return sub_26BFD1C44(a1, *(v2 + *(v13 + 28)));
}

uint64_t MLS.CertificationRequestInfo.hashValue.getter()
{
  v1 = v0;
  v2 = _s25RelativeDistinguishedNameVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_26C00B05C();
  MEMORY[0x26D699B20](*v0);
  v7 = v0[1];
  MEMORY[0x26D699B20](*(v7 + 16));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_26BFDDE8C(v9, v6, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(v15);
      sub_26BFDDF3C(v6, _s25RelativeDistinguishedNameVMa);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  v11 = type metadata accessor for MLS.CertificationRequestInfo();
  v12 = v0 + *(v11 + 24);
  sub_26BFCE15C(v15);
  sub_26BFD1C44(v15, *(v1 + *(v11 + 28)));
  return sub_26C00B0CC();
}

uint64_t sub_26BFDC6B0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = _s25RelativeDistinguishedNameVMa();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_26C00B05C();
  MEMORY[0x26D699B20](*v2);
  v10 = v2[1];
  MEMORY[0x26D699B20](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_26BFDDE8C(v12, v9, _s25RelativeDistinguishedNameVMa);
      sub_26BFDBB64(v17);
      sub_26BFDDF3C(v9, _s25RelativeDistinguishedNameVMa);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = v2 + *(a2 + 24);
  sub_26BFCE15C(v17);
  sub_26BFD1C44(v17, *(v4 + *(a2 + 28)));
  return sub_26C00B0CC();
}

uint64_t MLS.CertificationRequestInfo.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.CertificationRequestInfo();
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BFDC910@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = a1;
  v29 = a2;
  v32 = sub_26C00930C();
  v30 = *(v32 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v4 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9PublicKeyVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C00934C();
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  sub_26C0096AC();
  v18 = v35;
  result = sub_26C0096BC();
  if (!v18)
  {
    v35 = v15;
    v28 = v11;
    v20 = v37;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BFBF280();
    sub_26C0096BC();
    v27 = v20;
    v21 = v37;
    _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
    sub_26BFDDEF4(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26C0096BC();
    sub_26BFCD8D0(v6, v10);
    _s14descr287CB9999C9AttributeVMa();
    (*(v30 + 104))(v31, *MEMORY[0x277D6A898], v32);
    v22 = v35;
    sub_26C0092EC();
    sub_26BFDDEF4(&qword_280460218, _s14descr287CB9999C9AttributeVMa);
    v23 = sub_26C0097CC();
    (*(v33 + 8))(v22, v28);
    v24 = sub_26BFDD7D8(v23);

    v25 = type metadata accessor for MLS.CertificationRequestInfo();
    v26 = v29;
    result = sub_26BFDDE24(v10, v29 + *(v25 + 24), _s9PublicKeyVMa);
    *v26 = v27;
    v26[1] = v21;
    *(v26 + *(v25 + 28)) = v24;
  }

  return result;
}

uint64_t sub_26BFDCE2C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C00930C();
  v27 = *(v3 - 8);
  v28 = v3;
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00934C();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s9PublicKeyVMa(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a2;
  v19 = v30;
  result = sub_26C00976C();
  if (!v19)
  {
    v30 = v15;
    v24 = v6;
    v25 = v10;
    v26 = v7;
    v31 = a2[1];
    sub_26BE85F4C();
    sub_26C00976C();
    v21 = type metadata accessor for MLS.CertificationRequestInfo();
    sub_26BFDDE8C(a2 + *(v21 + 24), v14, _s9PublicKeyVMa);
    sub_26BFCE6C4(v14, v18);
    sub_26BFDDEF4(&qword_28045EA88, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26C00976C();
    sub_26BFDDF3C(v18, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v31 = *(a2 + *(v21 + 28));
    (*(v27 + 104))(v24, *MEMORY[0x277D6A898], v28);

    v22 = v25;
    sub_26C0092EC();
    sub_26BFD2478();
    sub_26BFDDEF4(&qword_280460220, _s14descr287CB9999C9AttributeVMa);
    sub_26C00970C();
    (*(v29 + 8))(v22, v26);
  }

  return result;
}

uint64_t sub_26BFDD1EC(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t _s8SwiftMLS0B0O24CertificationRequestInfoV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if ((sub_26BFB126C(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MLS.CertificationRequestInfo();
  if ((sub_26BFCF4B8(a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_26BFD2774(v6, v7);
}

uint64_t type metadata accessor for MLS.CertificationRequestInfo()
{
  result = qword_2804607A0;
  if (!qword_2804607A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26BFDD5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = _s9PublicKeyVMa(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26BFDD6A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = _s9PublicKeyVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26BFDD74C()
{
  result = _s9PublicKeyVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFDD7D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607B0, &unk_26C024C30);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - v7;
  v9 = sub_26C00947C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = _s14descr287CB9999C9AttributeVMa();
  v14 = *(*(v52 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v52);
  v40 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v44 = &v39 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v53 = &v39 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  result = MEMORY[0x277D84F90];
  v54 = MEMORY[0x277D84F90];
  v51 = *(a1 + 16);
  if (!v51)
  {
    return result;
  }

  v25 = 0;
  v45 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v50 = a1 + v45;
  v26 = *(v21 + 72);
  v48 = (v21 + 56);
  v49 = (v10 + 16);
  v46 = (v10 + 8);
  v47 = (v21 + 48);
  v42 = &v39 - v22;
  v43 = v6;
  v41 = v9;
  while (1)
  {
    sub_26BFDDE8C(v50 + v26 * v25, v23, _s14descr287CB9999C9AttributeVMa);
    (*v49)(v13, v23, v9);
    sub_26BFDDE24(v23, v8, _s14descr287CB9999C9AttributeVMa);
    v28 = v52;
    (*v48)(v8, 0, 1, v52);
    sub_26BE2E1F0(v8, v6, &qword_2804607B0, &unk_26C024C30);
    if ((*v47)(v6, 1, v28) == 1)
    {
      sub_26BE2E258(v6, &qword_2804607B0, &unk_26C024C30);
      v29 = v54[2];
      if (v29)
      {
        v30 = 0;
        v31 = v54 + v45;
        while ((sub_26C00945C() & 1) == 0)
        {
          ++v30;
          v31 += v26;
          if (v29 == v30)
          {
            goto LABEL_4;
          }
        }

        v27 = v40;
        sub_26BFA7534(v30, v40);
        sub_26BFDDF3C(v27, _s14descr287CB9999C9AttributeVMa);
      }

LABEL_4:
      sub_26BE2E258(v8, &qword_2804607B0, &unk_26C024C30);
      goto LABEL_5;
    }

    sub_26BFDDE24(v6, v53, _s14descr287CB9999C9AttributeVMa);
    result = sub_26C00945C();
    if ((result & 1) == 0)
    {
      break;
    }

    v32 = v9;
    v33 = v54;
    v34 = v54[2];
    if (v34)
    {
      v35 = 0;
      v36 = v45;
      while ((sub_26C00945C() & 1) == 0)
      {
        ++v35;
        v36 += v26;
        if (v34 == v35)
        {
          goto LABEL_17;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_26BE588FC(v33);
      }

      v9 = v32;
      result = sub_26BE2E258(v8, &qword_2804607B0, &unk_26C024C30);
      v6 = v43;
      if (v35 >= v33[2])
      {
        goto LABEL_29;
      }

      sub_26BFDDDC0(v53, v33 + v36);
      v54 = v33;
    }

    else
    {
LABEL_17:
      sub_26BFDDE8C(v53, v44, _s14descr287CB9999C9AttributeVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_26BEEDD28(0, v33[2] + 1, 1, v33);
      }

      v38 = v33[2];
      v37 = v33[3];
      v6 = v43;
      if (v38 >= v37 >> 1)
      {
        v33 = sub_26BEEDD28(v37 > 1, v38 + 1, 1, v33);
      }

      sub_26BFDDF3C(v53, _s14descr287CB9999C9AttributeVMa);
      sub_26BE2E258(v8, &qword_2804607B0, &unk_26C024C30);
      v33[2] = v38 + 1;
      sub_26BFDDE24(v44, v33 + v45 + v38 * v26, _s14descr287CB9999C9AttributeVMa);
      v54 = v33;
      v9 = v41;
      v23 = v42;
    }

LABEL_5:
    ++v25;
    (*v46)(v13, v9);
    if (v25 == v51)
    {
      return v54;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26BFDDDC0(uint64_t a1, uint64_t a2)
{
  v4 = _s14descr287CB9999C9AttributeVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDDE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFDDE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BFDDEF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFDDF3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MLS.SubjectPublicKeyInfo.init(algorithmIdentifier:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26BEC9E7C(a1, a3);
  v5 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  v6 = sub_26C00959C();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3 + v5, a2, v6);
}

{
  sub_26BE13564(a1, a3);
  v6 = (2 * *(a2 + 16)) | 1;
  v7 = a3 + *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  sub_26C00957C();

  return sub_26BFBBEA0(a1);
}

uint64_t type metadata accessor for MLS.SubjectPublicKeyInfo()
{
  result = qword_2804607D0;
  if (!qword_2804607D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLS.SubjectPublicKeyInfo.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  v4 = sub_26C00959C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.SubjectPublicKeyInfo.init(derEncoded:withIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MLS.SubjectPublicKeyInfo();
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t MLS.SubjectPublicKeyInfo.key.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  v4 = sub_26C00959C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_26BFDE334@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = sub_26C00959C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C00934C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8SwiftMLS0B0O8ValidityV17defaultIdentifier0A12ASN1Internal0fE0VvgZ_0();
  sub_26BFDF7D0(&qword_28045EEC0, type metadata accessor for MLS.AlgorithmIdentifier);
  result = sub_26C0096BC();
  if (!v1)
  {
    v18 = v3;
    v15 = v19;
    sub_26C0096AC();
    sub_26C0096BC();
    sub_26BEC9E7C(v13, v15);
    v16 = type metadata accessor for MLS.SubjectPublicKeyInfo();
    return (*(v18 + 32))(v15 + *(v16 + 20), v6, v2);
  }

  return result;
}

uint64_t sub_26BFDE61C()
{
  type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BFDF7D0(&qword_28045EE50, type metadata accessor for MLS.AlgorithmIdentifier);
  result = sub_26C00976C();
  if (!v0)
  {
    v2 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
    sub_26C00959C();
    return sub_26C00976C();
  }

  return result;
}

uint64_t sub_26BFDE6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.AlgorithmIdentifier();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MLS.SubjectPublicKeyInfo.hash(into:)()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_26C00947C();
  sub_26BFDF7D0(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_26C00B07C();
    sub_26BFDF7D0(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v2 + 8))(v5, v1);
  }

  v11 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  sub_26C00959C();
  sub_26BFDF7D0(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  return sub_26C00A3CC();
}

uint64_t MLS.SubjectPublicKeyInfo.hashValue.getter()
{
  v1 = sub_26C0094DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFDF7D0(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v10 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v0 + *(v10 + 20), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_26C00B07C();
    sub_26BFDF7D0(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v2 + 8))(v5, v1);
  }

  v11 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
  sub_26C00959C();
  sub_26BFDF7D0(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t sub_26BFDEC70(uint64_t a1, uint64_t a2)
{
  sub_26C0097FC();
  v4 = sub_26C00934C();
  (*(*(v4 - 8) + 8))(a2, v4);
  v5 = sub_26C00950C();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t sub_26BFDED8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_26C00B05C();
  sub_26C00947C();
  sub_26BFDF7D0(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  v13 = type metadata accessor for MLS.AlgorithmIdentifier();
  sub_26BEE2A7C(v2 + *(v13 + 20), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    sub_26C00B07C();
    sub_26BFDF7D0(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v5 + 8))(v8, v4);
  }

  v14 = *(a2 + 20);
  sub_26C00959C();
  sub_26BFDF7D0(&qword_28045F0D0, MEMORY[0x277D6A9E0]);
  sub_26C00A3CC();
  return sub_26C00B0CC();
}

uint64_t _s8SwiftMLS0B0O20SubjectPublicKeyInfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C0094DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F0D8, &unk_26C01A530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  if ((sub_26C00945C() & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = *(type metadata accessor for MLS.AlgorithmIdentifier() + 20);
  v18 = *(v13 + 48);
  sub_26BEE2A7C(a1 + v17, v16);
  sub_26BEE2A7C(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
LABEL_11:
      v24 = *(type metadata accessor for MLS.SubjectPublicKeyInfo() + 20);
      v20 = sub_26C00956C();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  sub_26BEE2A7C(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_7:
    sub_26BE2E258(v16, &qword_28045F0D8, &unk_26C01A530);
    goto LABEL_8;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_26BFDF7D0(&qword_28045F0E0, MEMORY[0x277D6A988]);
  v22 = sub_26C00A43C();
  v23 = *(v5 + 8);
  v23(v8, v4);
  v23(v12, v4);
  sub_26BE2E258(v16, &qword_28045EE48, &unk_26C022430);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_26BFDF54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MLS.AlgorithmIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_26C00959C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26BFDF650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MLS.AlgorithmIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_26C00959C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_26BFDF74C()
{
  result = type metadata accessor for MLS.AlgorithmIdentifier();
  if (v1 <= 0x3F)
  {
    result = sub_26C00959C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26BFDF7D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFDF830()
{
  v1 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFDFF70(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = 0x6972502E36353250;
  v7 = 0x6972502E31323550;
  v8 = 0xD00000000000001DLL;
  if (EnumCaseMultiPayload != 3)
  {
    v8 = 0xD000000000000012;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v7 = v8;
  }

  if (EnumCaseMultiPayload)
  {
    v6 = 0x6972502E34383350;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  sub_26BFE09A0(v4);
  return v9;
}

uint64_t sub_26BFDF9D8(uint64_t a1)
{
  v55 = a1;
  v1 = sub_26C009B7C();
  v52 = *(v1 - 8);
  v53 = v1;
  v2 = *(v52 + 64);
  MEMORY[0x28223BE20](v1);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C009D3C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00A27C();
  v9 = *(v8 - 8);
  v47 = v8;
  v48 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C00A1EC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26C00A0EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BFDFF70(v54, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v14 + 32))(v17, v26, v13);
      MEMORY[0x26D699B20](1);
      v43 = sub_26C00A1AC();
      v45 = v44;
      sub_26C00911C();
      sub_26BE00258(v43, v45);
      return (*(v14 + 8))(v17, v13);
    }

    else
    {
      (*(v19 + 32))(v22, v26, v18);
      MEMORY[0x26D699B20](0);
      v32 = sub_26C00A05C();
      v34 = v33;
      sub_26C00911C();
      sub_26BE00258(v32, v34);
      return (*(v19 + 8))(v22, v18);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v36 = v47;
    v37 = v48;
    (*(v48 + 32))(v12, v26, v47);
    MEMORY[0x26D699B20](2);
    v38 = sub_26C00A26C();
    v40 = v39;
    sub_26C00911C();
    sub_26BE00258(v38, v40);
    return (*(v37 + 8))(v12, v36);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v29 = v49;
      v28 = v50;
      (*(v49 + 32))(v7, v26, v50);
      MEMORY[0x26D699B20](4);
      v30 = sub_26C009CBC();
    }

    else
    {
      v7 = v51;
      v29 = v52;
      v28 = v53;
      (*(v52 + 32))(v51, v26, v53);
      MEMORY[0x26D699B20](5);
      v30 = sub_26C009B3C();
    }

    v41 = v30;
    v42 = v31;
    sub_26C00911C();
    sub_26BE00258(v41, v42);
    return (*(v29 + 8))(v7, v28);
  }
}

uint64_t sub_26BFDFF0C()
{
  sub_26C00B05C();
  sub_26BFDF9D8(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFDFF70(uint64_t a1, uint64_t a2)
{
  v4 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BFDFFD8()
{
  sub_26C00B05C();
  sub_26BFDF9D8(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFE0018(uint64_t a1, uint64_t a2)
{
  v127 = a1;
  v128 = a2;
  v2 = sub_26C009B7C();
  v120 = *(v2 - 8);
  v121 = v2;
  v3 = *(v120 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v113 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v106 - v6;
  v7 = sub_26C009D3C();
  v118 = *(v7 - 8);
  v119 = v7;
  v8 = *(v118 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v111 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v106 - v11;
  v12 = sub_26C00A27C();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v109 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v108 = &v106 - v16;
  v17 = sub_26C00A1EC();
  v125 = *(v17 - 8);
  v126 = v17;
  v18 = *(v125 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v107 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v124 = &v106 - v21;
  v22 = sub_26C00A0EC();
  v122 = *(v22 - 8);
  v123 = v22;
  v23 = *(v122 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v106 - v27;
  v29 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v115 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v114 = &v106 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v106 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v106 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v106 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607E8, &unk_26C024E10);
  v44 = *(*(v43 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v43 - 8);
  v47 = &v106 - v46;
  v48 = *(v45 + 56);
  sub_26BFDFF70(v127, &v106 - v46);
  v49 = v48;
  sub_26BFDFF70(v128, &v47[v48]);
  v50 = v47;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v127 = v28;
    v128 = v26;
    v62 = v122;
    v63 = v123;
    v65 = v124;
    v64 = v125;
    v66 = v126;
    if (EnumCaseMultiPayload)
    {
      sub_26BFDFF70(v50, v40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v78 = v64;
        v79 = *(v64 + 32);
        v80 = v65;
        v81 = v66;
        v79(v65, v40, v66);
        v82 = v107;
        v79(v107, (v50 + v49), v66);
        v83 = v80;
        v84 = sub_26C00A1AC();
        v86 = v85;
        v87 = sub_26C00A1AC();
        v89 = v88;
        v76 = sub_26BE02DEC(v84, v86, v87, v88);
        sub_26BE00258(v87, v89);
        sub_26BE00258(v84, v86);
        v90 = *(v78 + 8);
        v90(v82, v81);
        v90(v83, v81);
        sub_26BFE09A0(v50);
        return v76 & 1;
      }

      (*(v64 + 8))(v40, v66);
    }

    else
    {
      sub_26BFDFF70(v50, v42);
      if (!swift_getEnumCaseMultiPayload())
      {
        v94 = v62;
        v95 = *(v62 + 32);
        v96 = v127;
        v95(v127, v42, v63);
        v97 = v128;
        v95(v128, (v50 + v49), v63);
        v98 = sub_26C00A05C();
        v100 = v99;
        v101 = v50;
        v102 = sub_26C00A05C();
        v104 = v103;
        v76 = sub_26BE02DEC(v98, v100, v102, v103);
        sub_26BE00258(v102, v104);
        sub_26BE00258(v98, v100);
        v105 = *(v94 + 8);
        v105(v97, v63);
        v105(v96, v63);
        sub_26BFE09A0(v101);
        return v76 & 1;
      }

      (*(v62 + 8))(v42, v63);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_26BFDFF70(v47, v37);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v53 = v116;
      v52 = v117;
      v67 = *(v116 + 32);
      v55 = v108;
      v67(v108, v37, v117);
      v56 = v109;
      v67(v109, (v50 + v48), v52);
      v57 = sub_26C00A26C();
      v59 = v68;
      v60 = sub_26C00A26C();
      goto LABEL_14;
    }

    (*(v116 + 8))(v37, v117);
LABEL_23:
    sub_26BFE0938(v50);
    v76 = 0;
    return v76 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v69 = v115;
    sub_26BFDFF70(v47, v115);
    v70 = swift_getEnumCaseMultiPayload();
    if (v70 == 4)
    {
      v53 = v120;
      v52 = v121;
      v71 = *(v120 + 32);
      v55 = v112;
      v71(v112, v69, v121);
      v56 = v113;
      v71(v113, v50 + v48, v52);
      v57 = sub_26C009B3C();
      v59 = v72;
      v60 = sub_26C009B3C();
      goto LABEL_14;
    }

    v92 = v120;
    v91 = v121;
    goto LABEL_20;
  }

  v69 = v114;
  sub_26BFDFF70(v47, v114);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v92 = v118;
    v91 = v119;
LABEL_20:
    (*(v92 + 8))(v69, v91);
    goto LABEL_23;
  }

  v53 = v118;
  v52 = v119;
  v54 = *(v118 + 32);
  v55 = v110;
  v54(v110, v69, v119);
  v56 = v111;
  v54(v111, v50 + v48, v52);
  v57 = sub_26C009CBC();
  v59 = v58;
  v60 = sub_26C009CBC();
LABEL_14:
  v73 = v60;
  v74 = v50;
  v75 = v61;
  v76 = sub_26BE02DEC(v57, v59, v60, v61);
  sub_26BE00258(v73, v75);
  sub_26BE00258(v57, v59);
  v77 = *(v53 + 8);
  v77(v56, v52);
  v77(v55, v52);
  sub_26BFE09A0(v74);
  return v76 & 1;
}

uint64_t sub_26BFE0938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804607E8, &unk_26C024E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFE09A0(uint64_t a1)
{
  v2 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26BFE09FC()
{
  result = sub_26C00A0EC();
  if (v1 <= 0x3F)
  {
    result = sub_26C00A1EC();
    if (v2 <= 0x3F)
    {
      result = sub_26C00A27C();
      if (v3 <= 0x3F)
      {
        result = sub_26C009D3C();
        if (v4 <= 0x3F)
        {
          result = sub_26C009B7C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_26BFE0AC0(uint64_t a1, uint64_t a2)
{
  v4 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26BFE0B40(uint64_t a1, uint64_t a2)
{
  v4 = _s10PrivateKeyV17BackingPrivateKeyOMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_26BFE0BB0()
{
  result = _s10PrivateKeyV17BackingPrivateKeyOMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26BFE0C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26BFE0D4C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26C00930C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26C00934C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  (*(v4 + 104))(v7, *MEMORY[0x277D6A898], v3);
  return sub_26C0092EC();
}

uint64_t sub_26BFE0E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v170 = a2;
  v3 = sub_26C00930C();
  v159 = *(v3 - 8);
  v160 = v3;
  v4 = *(v159 + 64);
  MEMORY[0x28223BE20](v3);
  v158 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C0095CC();
  v165 = *(v6 - 8);
  v166 = v6;
  v7 = *(v165 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v156 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v163 = &v146 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v146 - v13;
  MEMORY[0x28223BE20](v12);
  v169 = &v146 - v14;
  v172 = _s11GeneralNameO9OtherNameVMa(0);
  v15 = *(*(v172 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v172);
  v174 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v173 = &v146 - v18;
  v19 = sub_26C00950C();
  v175 = *(v19 - 8);
  v176 = v19;
  v20 = *(v175 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v153 = &v146 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v155 = &v146 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v161 = &v146 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v162 = &v146 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v168 = &v146 - v32;
  MEMORY[0x28223BE20](v31);
  v171 = &v146 - v33;
  v34 = _s11GeneralNameOMa(0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v149 = &v146 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v152 = &v146 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v157 = &v146 - v41;
  MEMORY[0x28223BE20](v40);
  v167 = &v146 - v42;
  v43 = sub_26C00934C();
  v177 = *(v43 - 8);
  v44 = *(v177 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v148 = &v146 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v147 = &v146 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v151 = &v146 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v154 = &v146 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v55 = &v146 - v54;
  v56 = MEMORY[0x28223BE20](v53);
  v58 = &v146 - v57;
  v59 = MEMORY[0x28223BE20](v56);
  v61 = &v146 - v60;
  MEMORY[0x28223BE20](v59);
  v63 = &v146 - v62;
  v178 = a1;
  sub_26C0094EC();
  if (qword_28045E188 != -1)
  {
    swift_once();
  }

  v64 = __swift_project_value_buffer(v43, qword_280479248);
  sub_26BFE5820(&qword_28045ED78, MEMORY[0x277D6A8A8]);
  if (sub_26C00A43C())
  {
    v65 = v177;
    v168 = *(v177 + 8);
    v169 = v34;
    (v168)(v63, v43);
    v66 = v175;
    v67 = v176;
    v68 = v171;
    (*(v175 + 16))(v171, v178, v176);
    (*(v65 + 16))(v61, v64, v43);
    v69 = *(v172 + 20);
    v70 = sub_26C0094DC();
    v71 = *(*(v70 - 8) + 56);
    v72 = v173;
    v177 = v69;
    v71(&v173[v69], 1, 1, v70);
    v73 = v179;
    sub_26C0097FC();
    v179 = v73;
    if (v73)
    {
      v74 = *(v66 + 8);
      v74(v178, v67);
      (v168)(v61, v43);
      v74(v68, v67);
      return sub_26BE2E258(v72 + v177, &qword_28045EE48, &unk_26C022430);
    }

    else
    {
      v92 = *(v66 + 8);
      v92(v178, v67);
      (v168)(v61, v43);
      v92(v68, v67);
      sub_26BE2E258(v72 + v177, &qword_28045EE48, &unk_26C022430);
      sub_26BFE5940(v174, v72, _s11GeneralNameO9OtherNameVMa);
      v93 = v72;
      v94 = v167;
      sub_26BFE5940(v93, v167, _s11GeneralNameO9OtherNameVMa);
      swift_storeEnumTagMultiPayload();
      return sub_26BFE5940(v94, v170, _s11GeneralNameOMa);
    }
  }

  if (qword_28045E190 != -1)
  {
    swift_once();
  }

  v76 = __swift_project_value_buffer(v43, qword_280479260);
  if (sub_26C00A43C())
  {
    v77 = v177;
    (*(v177 + 8))(v63, v43);
    v78 = v175;
    v79 = v176;
    v80 = v178;
    (*(v175 + 16))(v168, v178, v176);
    (*(v77 + 16))(v58, v76, v43);
    v81 = v169;
    v82 = v179;
    sub_26C0095AC();
    if (v82)
    {
      v83 = *(v78 + 8);
      v84 = v80;
      return v83(v84, v79);
    }

    v100 = v164;
    v101 = v165;
    v102 = v81;
    v103 = v81;
    v104 = v166;
    (*(v165 + 16))(v164, v102, v166);
    v105 = MEMORY[0x26D699010](v100);
    v106 = v78;
    v107 = v105;
    v109 = v108;
    (*(v106 + 8))(v80, v79);
    (*(v101 + 8))(v103, v104);
    v110 = v170;
    *v170 = v107;
    v110[1] = v109;
    return swift_storeEnumTagMultiPayload();
  }

  v169 = v34;
  if (qword_28045E198 != -1)
  {
    swift_once();
  }

  v85 = __swift_project_value_buffer(v43, qword_280479278);
  v86 = sub_26C00A43C();
  v87 = v178;
  if (v86)
  {
    v88 = v177;
    (*(v177 + 8))(v63, v43);
    v89 = v175;
    v79 = v176;
    (*(v175 + 16))(v162, v87, v176);
    (*(v88 + 16))(v55, v85, v43);
    v90 = v163;
    v91 = v179;
    sub_26C0095AC();
    if (v91)
    {
      v83 = *(v89 + 8);
      v84 = v87;
      return v83(v84, v79);
    }

    v113 = v164;
    v114 = v165;
    v115 = v166;
    (*(v165 + 16))(v164, v90, v166);
    v116 = MEMORY[0x26D699010](v113);
    v117 = v89;
    v118 = v116;
    v120 = v119;
    (*(v117 + 8))(v87, v79);
    (*(v114 + 8))(v90, v115);
    v121 = v170;
    *v170 = v118;
    v121[1] = v120;
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_28045E1A0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v43, qword_280479290);
  v95 = sub_26C00A43C();
  v96 = v179;
  v97 = v177;
  if (v95)
  {
LABEL_21:
    (*(v97 + 8))(v63, v43);
    v98 = v175;
    v99 = v176;
    (*(v175 + 16))(v161, v87, v176);
    sub_26C00948C();
    (*(v98 + 8))(v87, v99);
    return swift_storeEnumTagMultiPayload();
  }

  if (qword_28045E1A8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v43, qword_2804792A8);
  if ((sub_26C00A43C() & 1) == 0)
  {
    if (qword_28045E1B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v43, qword_2804792C0);
    v122 = sub_26C00A43C();
    v97 = v177;
    if (v122)
    {
      goto LABEL_21;
    }

    if (qword_28045E1B8 != -1)
    {
      swift_once();
    }

    v123 = __swift_project_value_buffer(v43, qword_2804792D8);
    if (sub_26C00A43C())
    {
      v124 = v177;
      (*(v177 + 8))(v63, v43);
      v125 = v175;
      (*(v175 + 16))(v155, v87, v176);
      (*(v124 + 16))(v154, v123, v43);
      v126 = v156;
      sub_26C0095AC();
      if (v96)
      {
        return (*(v125 + 8))(v87, v176);
      }

      v136 = v164;
      v137 = v165;
      v138 = v166;
      (*(v165 + 16))(v164, v126, v166);
      v139 = MEMORY[0x26D699010](v136);
      v140 = v125;
      v141 = v139;
      v143 = v142;
      (*(v140 + 8))(v87, v176);
      (*(v137 + 8))(v126, v138);
      v144 = v170;
      *v170 = v141;
      v144[1] = v143;
      return swift_storeEnumTagMultiPayload();
    }

    if (qword_28045E1C0 != -1)
    {
      swift_once();
    }

    v127 = __swift_project_value_buffer(v43, qword_2804792F0);
    if (sub_26C00A43C())
    {
      v128 = v177;
      (*(v177 + 8))(v63, v43);
      v129 = v175;
      v130 = v176;
      (*(v175 + 16))(v153, v87, v176);
      (*(v128 + 16))(v151, v127, v43);
      v131 = v152;
      sub_26C00938C();
      if (!v96)
      {
LABEL_51:
        (*(v129 + 8))(v87, v130);
        swift_storeEnumTagMultiPayload();
        return sub_26BFE5940(v131, v170, _s11GeneralNameOMa);
      }
    }

    else
    {
      if (qword_28045E1C8 != -1)
      {
        swift_once();
      }

      v132 = __swift_project_value_buffer(v43, qword_280479308);
      v133 = sub_26C00A43C();
      v134 = v177;
      v135 = *(v177 + 8);
      v135(v63, v43);
      if ((v133 & 1) == 0)
      {
        v145 = v148;
        sub_26C0094EC();
        sub_26C00955C();
        sub_26BFE5820(&qword_28045ED80, MEMORY[0x277D6A9C0]);
        swift_allocError();
        sub_26C00954C();
        v135(v145, v43);
        swift_willThrow();
        return (*(v175 + 8))(v87, v176);
      }

      v129 = v175;
      v130 = v176;
      (*(v175 + 16))(v150, v87, v176);
      (*(v134 + 16))(v147, v132, v43);
      v131 = v149;
      sub_26C00943C();
      if (!v96)
      {
        goto LABEL_51;
      }
    }

    return (*(v129 + 8))(v87, v130);
  }

  (*(v177 + 8))(v63, v43);
  sub_26C00933C();
  v111 = v158;
  sub_26C00932C();
  v112 = v157;
  sub_26C00979C();
  (*(v175 + 8))(v87, v176);
  if (v96)
  {
    return (*(v159 + 8))(v111, v160);
  }

  (*(v159 + 8))(v111, v160);
  return sub_26BFE5940(v112, v170, _s11GeneralNameOMa);
}

uint64_t sub_26BFE219C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_26C00950C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_26BFBF280();
  result = sub_26C0096EC();
  if (!v2)
  {
    *a2 = v10[1];
    _s11GeneralNameOMa(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_26BFE22B4(uint64_t a1)
{
  v65 = a1;
  v1 = sub_26C00947C();
  v60 = *(v1 - 8);
  v61 = v1;
  v2 = *(v60 + 64);
  MEMORY[0x28223BE20](v1);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26C0093DC();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C0094DC();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = sub_26C0095CC();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v56 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v56 - v22;
  v24 = _s11GeneralNameO9OtherNameVMa(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _s11GeneralNameOMa(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (&v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFE5A18(v66, v31, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v40 = *v31;
        v41 = v31[1];
        v42 = v67;
        result = sub_26C0095DC();
        if (!v42)
        {
          if (qword_28045E198 != -1)
          {
            swift_once();
          }

          v43 = sub_26C00934C();
          __swift_project_value_buffer(v43, qword_280479278);
          sub_26C0095BC();
          return (*(v62 + 8))(v21, v63);
        }
      }

      else
      {
        v53 = v64;
        (*(v64 + 32))(v13, v31, v7);
        sub_26C0094CC();
        return (*(v53 + 8))(v13, v7);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v49 = *v31;
      v50 = v31[1];
      v51 = v67;
      result = sub_26C0095DC();
      if (!v51)
      {
        if (qword_28045E190 != -1)
        {
          swift_once();
        }

        v52 = sub_26C00934C();
        __swift_project_value_buffer(v52, qword_280479260);
        sub_26C0095BC();
        return (*(v62 + 8))(v23, v63);
      }
    }

    else
    {
      sub_26BFE5940(v31, v27, _s11GeneralNameO9OtherNameVMa);
      if (qword_28045E188 != -1)
      {
        swift_once();
      }

      v37 = sub_26C00934C();
      v38 = __swift_project_value_buffer(v37, qword_280479248);
      MEMORY[0x28223BE20](v38);
      *(&v56 - 2) = v27;
      sub_26C00973C();
      return sub_26BFE5A80(v27, _s11GeneralNameO9OtherNameVMa);
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v68 = *v31;
      if (qword_28045E1A8 != -1)
      {
        swift_once();
      }

      v44 = sub_26C00934C();
      __swift_project_value_buffer(v44, qword_2804792A8);
      sub_26BE85F4C();
      sub_26C00975C();
    }

    else
    {
      v55 = v64;
      (*(v64 + 32))(v11, v31, v7);
      sub_26C0094CC();
      return (*(v55 + 8))(v11, v7);
    }
  }

  else if (EnumCaseMultiPayload == 6)
  {
    v45 = *v31;
    v46 = v31[1];
    v47 = v67;
    result = sub_26C0095DC();
    if (!v47)
    {
      if (qword_28045E1B8 != -1)
      {
        swift_once();
      }

      v48 = sub_26C00934C();
      __swift_project_value_buffer(v48, qword_2804792D8);
      sub_26C0095BC();
      return (*(v62 + 8))(v18, v63);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 7)
    {
      v33 = v56;
      v34 = v57;
      v35 = v58;
      (*(v57 + 32))(v56, v31, v58);
      if (qword_28045E1C0 != -1)
      {
        swift_once();
      }

      v36 = sub_26C00934C();
      __swift_project_value_buffer(v36, qword_2804792F0);
      sub_26C0093CC();
    }

    else
    {
      v33 = v59;
      v34 = v60;
      v35 = v61;
      (*(v60 + 32))(v59, v31, v61);
      if (qword_28045E1C8 != -1)
      {
        swift_once();
      }

      v54 = sub_26C00934C();
      __swift_project_value_buffer(v54, qword_280479308);
      sub_26C00946C();
    }

    return (*(v34 + 8))(v33, v35);
  }

  return result;
}

uint64_t sub_26BFE2AF0(uint64_t a1)
{
  v60 = a1;
  v2 = sub_26C00947C();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26C0093DC();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s25RelativeDistinguishedNameVMa();
  v53 = *(v10 - 8);
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26C0094DC();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x28223BE20](v14);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE48, &unk_26C022430);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v53 - v19;
  v21 = _s11GeneralNameO9OtherNameVMa(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _s11GeneralNameOMa(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = (&v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFE5A18(v1, v28, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v30 = v54;
          (*(v54 + 32))(v9, v28, v6);
          MEMORY[0x26D699B20](7);
          sub_26BFE5820(&qword_280460870, MEMORY[0x277D6A8E8]);
          sub_26C00A3CC();
          return (*(v30 + 8))(v9, v6);
        }

        else
        {
          v51 = v55;
          v50 = v56;
          (*(v55 + 32))(v5, v28, v56);
          MEMORY[0x26D699B20](8);
          sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958]);
          sub_26C00A3CC();
          return (*(v51 + 8))(v5, v50);
        }
      }

      v42 = *v28;
      v43 = v28[1];
      v36 = 6;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v37 = *v28;
      v38 = v60;
      MEMORY[0x26D699B20](4);
      MEMORY[0x26D699B20](*(v37 + 16));
      v39 = *(v37 + 16);
      if (v39)
      {
        v40 = v37 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v41 = *(v53 + 72);
        do
        {
          sub_26BFE5A18(v40, v13, _s25RelativeDistinguishedNameVMa);
          sub_26BFDBB64(v38);
          sub_26BFE5A80(v13, _s25RelativeDistinguishedNameVMa);
          v40 += v41;
          --v39;
        }

        while (v39);
      }
    }

    v47 = v57;
    v46 = v58;
    v48 = v59;
    (*(v58 + 32))(v57, v28, v59);
    v49 = 5;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = *v28;
      v35 = v28[1];
      v36 = 2;
LABEL_18:
      MEMORY[0x26D699B20](v36);
LABEL_20:
      sub_26C00A58C();
    }

    v47 = v57;
    v46 = v58;
    v48 = v59;
    (*(v58 + 32))(v57, v28, v59);
    v49 = 3;
LABEL_25:
    MEMORY[0x26D699B20](v49);
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    return (*(v46 + 8))(v47, v48);
  }

  if (EnumCaseMultiPayload)
  {
    v44 = *v28;
    v45 = v28[1];
    MEMORY[0x26D699B20](1);
    goto LABEL_20;
  }

  sub_26BFE5940(v28, v24, _s11GeneralNameO9OtherNameVMa);
  MEMORY[0x26D699B20](0);
  sub_26BFE5820(&qword_28045F0C0, MEMORY[0x277D6A958]);
  sub_26C00A3CC();
  sub_26BEE2A7C(&v24[*(v21 + 20)], v20);
  v33 = v58;
  v32 = v59;
  if ((*(v58 + 48))(v20, 1, v59) == 1)
  {
    sub_26C00B07C();
  }

  else
  {
    v52 = v57;
    (*(v33 + 32))(v57, v20, v32);
    sub_26C00B07C();
    sub_26BFE5820(&qword_28045F0C8, MEMORY[0x277D6A988]);
    sub_26C00A3CC();
    (*(v33 + 8))(v52, v32);
  }

  return sub_26BFE5A80(v24, _s11GeneralNameO9OtherNameVMa);
}

uint64_t sub_26BFE3290()
{
  sub_26C00B05C();
  sub_26BFE2AF0(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFE32D4()
{
  sub_26C00B05C();
  sub_26BFE2AF0(v1);
  return sub_26C00B0CC();
}

uint64_t sub_26BFE3344()
{
  v1 = sub_26C00947C();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v59 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - v5;
  v6 = _s11GeneralNameO9OtherNameVMa(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_26C0093DC();
  v64 = *(v13 - 8);
  v65 = v13;
  v14 = *(v64 + 64);
  MEMORY[0x28223BE20](v13);
  v63 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26C0094DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v58 - v22;
  v24 = _s11GeneralNameOMa(0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24);
  v27 = (&v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26BFE5A18(v0, v27, _s11GeneralNameOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_26BFE5940(v27, v12, _s11GeneralNameO9OtherNameVMa);
        strcpy(v68, "OtherName(");
        BYTE3(v68[1]) = 0;
        HIDWORD(v68[1]) = -369098752;
        sub_26BFE5A18(v12, v10, _s11GeneralNameO9OtherNameVMa);
        v38 = sub_26C00A51C();
        MEMORY[0x26D699090](v38);

        MEMORY[0x26D699090](41, 0xE100000000000000);
        v39 = v68[0];
        sub_26BFE5A80(v12, _s11GeneralNameO9OtherNameVMa);
        return v39;
      }

      v40 = *v27;
      v41 = v27[1];
      v42 = 0x614E323238434652;
      v43 = 0xEB0000000028656DLL;
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v40 = *v27;
      v41 = v27[1];
      v42 = 0x28656D614E534E44;
      v43 = 0xE800000000000000;
LABEL_16:
      v68[0] = v42;
      v68[1] = v43;
      v66 = v40;
      v67 = v41;
      v45 = sub_26C00A51C();
      goto LABEL_17;
    }

    (*(v17 + 32))(v23, v27, v16);
    strcpy(v68, "X400Address(");
    BYTE5(v68[1]) = 0;
    HIWORD(v68[1]) = -5120;
    (*(v17 + 16))(v21, v23, v16);
    v46 = sub_26C00A51C();
LABEL_21:
    MEMORY[0x26D699090](v46);

    MEMORY[0x26D699090](41, 0xE100000000000000);
    v39 = v68[0];
    (*(v17 + 8))(v23, v16);
    return v39;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v44 = *v27;
      v68[0] = 0;
      v68[1] = 0xE000000000000000;
      sub_26C00AC1C();

      strcpy(v68, "DirectoryName(");
      HIBYTE(v68[1]) = -18;
      v66 = v44;
      v45 = sub_26C00A51C();
LABEL_17:
      MEMORY[0x26D699090](v45);

      MEMORY[0x26D699090](41, 0xE100000000000000);
      return v68[0];
    }

    (*(v17 + 32))(v23, v27, v16);
    v68[0] = 0;
    v68[1] = 0xE000000000000000;
    sub_26C00AC1C();

    strcpy(v68, "EDIPartyName(");
    HIWORD(v68[1]) = -4864;
    (*(v17 + 16))(v21, v23, v16);
    v46 = sub_26C00A51C();
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v40 = *v27;
    v41 = v27[1];
    v42 = 675893845;
    v43 = 0xE400000000000000;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v30 = v63;
    v29 = v64;
    v31 = v65;
    (*(v64 + 32))(v63, v27, v65);
    strcpy(v68, "IPAddress(");
    BYTE3(v68[1]) = 0;
    HIDWORD(v68[1]) = -369098752;
    v35 = sub_26C0093BC();
    if (v34)
    {
      v51 = v34;
      v52 = v33;
      v53 = v32;
      sub_26C00AF4C();
      swift_unknownObjectRetain_n();
      v54 = swift_dynamicCastClass();
      if (!v54)
      {
        swift_unknownObjectRelease();
        v54 = MEMORY[0x277D84F90];
      }

      v55 = *(v54 + 16);

      if (__OFSUB__(v51 >> 1, v52))
      {
        __break(1u);
      }

      else if (v55 == (v51 >> 1) - v52)
      {
        v37 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v37)
        {
LABEL_29:
          v66 = v37;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
          v56 = sub_26C00A51C();
          MEMORY[0x26D699090](v56);

          MEMORY[0x26D699090](41, 0xE100000000000000);
          v39 = v68[0];
          (*(v29 + 8))(v30, v31);
          return v39;
        }

        v37 = MEMORY[0x277D84F90];
LABEL_28:
        swift_unknownObjectRelease();
        goto LABEL_29;
      }

      swift_unknownObjectRelease();
      v34 = v51;
      v33 = v52;
      v32 = v53;
    }

    sub_26BFB6580(v35, v32, v33, v34);
    v37 = v36;
    goto LABEL_28;
  }

  v48 = v60;
  v47 = v61;
  v49 = v62;
  (*(v61 + 32))(v60, v27, v62);
  v68[0] = 0;
  v68[1] = 0xE000000000000000;
  sub_26C00AC1C();

  strcpy(v68, "RegisteredID(");
  HIWORD(v68[1]) = -4864;
  (*(v47 + 16))(v59, v48, v49);
  v50 = sub_26C00A51C();
  MEMORY[0x26D699090](v50);

  MEMORY[0x26D699090](41, 0xE100000000000000);
  v39 = v68[0];
  (*(v47 + 8))(v48, v49);
  return v39;
}