uint64_t sub_2672A6B14(uint64_t a1)
{
  v2 = sub_2672A6C18(&qword_2800F9930);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672A6B7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672A6C18(&qword_2800F9930);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672A6C18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAnyEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAppleMediaProductsSubscription.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x800000026748EB60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v50;

  v1(v58, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026748EB90, v11);
  v12 = *v9;
  *v9 = v51;

  v7(v58, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x800000026748EBC0, v17);
  v18 = *v15;
  *v15 = v52;

  v13(v58, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026748EC00, v23);
  v24 = *v21;
  *v21 = v53;

  v19(v58, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026748EC30, v29);
  v30 = *v27;
  *v27 = v54;

  v25(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x800000026748EC70, v35);
  v36 = *v33;
  *v33 = v55;

  v31(v58, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002CLL, 0x800000026748ECA0, v41);
  v42 = *v39;
  *v39 = v56;

  v37(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002BLL, 0x800000026748ECD0, v47);
  v48 = *v45;
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2672A70A0(uint64_t a1)
{
  v2 = sub_2672A71A4(&qword_2800F9938);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672A7108(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672A71A4(&qword_2800F9938);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672A71A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAppleMediaProductsSubscription(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAsset.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v2 + 104);
  v11(v5, v10, v1);
  v24[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v21 = *(v13 + 56);
  v22 = v13 + 56;
  v21(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D614E6C61697274, 0xEE00656361707365);
  v14(v24, 0);
  v11(v5, v10, v1);
  v24[0] = 1;
  sub_26738114C();
  v15 = v21;
  v21(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D614E7465737361, 0xE900000000000065);
  v16(v24, 0);
  sub_266ECB294(0, &qword_2800EF8F8, 0x277D5ACA0);
  sub_266ECAF2C(&qword_2800EF900, &qword_2800EF8F8, 0x277D5ACA0);
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265567465737361, 0xEC0000006E6F6973);
  v17(v24, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266F53918();
  sub_26738120C();
  v15(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x636F4C7465737361, 0xEB00000000656C61);
  return v18(v24, 0);
}

uint64_t sub_2672A7688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672A76EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaAssistantViewMode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x800000026748ED60, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026748ED80, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026748EDA0, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026748EDC0, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026748EDE0, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x800000026748EE00, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026748EE20, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x800000026748EE40, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000018, 0x800000026748EE70, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2672A7C4C(uint64_t a1)
{
  v2 = sub_2672A7D50(&qword_2800F9940);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672A7CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672A7D50(&qword_2800F9940);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672A7D50(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAssistantViewMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAudioFirstBufferRecorded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaAudioInputRoute(0);
  sub_2672A8238();
  v20 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v19 = *(v7 + 56);
  v19(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x706E496F69647561, 0xEF6574756F527475);
  v8(v22, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v21, 0x706E496F69647561, 0xEF6574756F527475);
  v18 = *(v7 + 48);
  if (!v18(v11, 1, v6))
  {
    sub_266ECB128(&unk_287890968);
    sub_26738115C();
  }

  (v10)(v21, 0);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F9950, 0x277D5A8D8);
  sub_266ECAF2C(&qword_2800F9958, &qword_2800F9950, 0x277D5A8D8);
  sub_26738120C();
  v19(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x800000026748EED0);
  v12(v22, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0xD000000000000019, 0x800000026748EED0);
  if (!v18(v15, 1, v6))
  {
    sub_266ECB128(&unk_287890990);
    sub_26738115C();
  }

  (v14)(v21, 0);
  return v13(v22, 0);
}

uint64_t sub_2672A8174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672A81D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672A8238()
{
  result = qword_2800F9948;
  if (!qword_2800F9948)
  {
    type metadata accessor for SISchemaAudioInputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9948);
  }

  return result;
}

uint64_t static SISchemaAudioInputRoute.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x800000026748EF20, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v100;

  v1(v116, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674541A0, v11);
  v12 = *v9;
  *v9 = v101;

  v7(v116, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026748EF50, v17);
  v18 = *v15;
  *v15 = v102;

  v13(v116, 0);
  v19 = sub_266ECB128(&unk_2878909B8);
  v21 = v20;
  v22 = sub_2673810FC();
  v24 = v23;
  v25 = *v23;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v24;
  *v24 = 0x8000000000000000;
  sub_266ECD4CC(v19, v21, 2, v26);
  *v24 = v103;
  v22(v116, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x80000002674541C0, v31);
  v32 = *v29;
  *v29 = v104;

  v27(v116, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x80000002674541E0, v37);
  v38 = *v35;
  *v35 = v105;

  v33(v116, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = *v40;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x8000000267454210, v43);
  v44 = *v41;
  *v41 = v106;

  v39(v116, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = *v46;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267454230, v49);
  v50 = *v47;
  *v47 = v107;

  v45(v116, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = *v52;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267454260, v55);
  v56 = *v53;
  *v53 = v108;

  v51(v116, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = *v58;
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x8000000267454280, v61);
  v62 = *v59;
  *v59 = v109;

  v57(v116, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000032, 0x80000002674542B0, v67);
  v68 = *v65;
  *v65 = v110;

  v63(v116, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = *v70;
  v73 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000031, 0x80000002674542F0, v73);
  v74 = *v71;
  *v71 = v111;

  v69(v116, 0);
  v75 = sub_26738111C();
  v77 = v76;
  v78 = *v76;
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v77;
  *v77 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000037, 0x8000000267454330, v79);
  v80 = *v77;
  *v77 = v112;

  v75(v116, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = *v82;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x8000000267454370, v85);
  v86 = *v83;
  *v83 = v113;

  v81(v116, 0);
  v87 = sub_26738111C();
  v89 = v88;
  v90 = *v88;
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v89;
  *v89 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ELL, 0x8000000267454390, v91);
  v92 = *v89;
  *v89 = v114;

  v87(v116, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = *v94;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001FLL, 0x80000002674543B0, v97);
  v98 = *v95;
  *v95 = v115;

  return v93(v116, 0);
}

uint64_t sub_2672A8AA4(uint64_t a1)
{
  v2 = sub_2672A8BA8(&qword_2800F9970);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672A8B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672A8BA8(&qword_2800F9970);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672A8BA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAudioInputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAudioOutputRoute.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026748EFB0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v58;

  v1(v67, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026748EFE0, v11);
  v12 = *v9;
  *v9 = v59;

  v7(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026748F000, v17);
  v18 = *v15;
  *v15 = v60;

  v13(v67, 0);
  v19 = sub_266ECB128(&unk_2878909E0);
  v21 = v20;
  v22 = sub_2673810FC();
  v24 = v23;
  v25 = *v23;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v24;
  *v24 = 0x8000000000000000;
  sub_266ECD4CC(v19, v21, 2, v26);
  *v24 = v61;
  v22(v67, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = *v28;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026748F030, v31);
  v32 = *v29;
  *v29 = v62;

  v27(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = *v34;
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026748F060, v37);
  v38 = *v35;
  *v35 = v63;

  v33(v67, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = *v40;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x800000026748F090, v43);
  v44 = *v41;
  *v41 = v64;

  v39(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = *v46;
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x800000026748F0B0, v49);
  v50 = *v47;
  *v47 = v65;

  v45(v67, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = *v52;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026748F0E0, v55);
  v56 = *v53;
  *v53 = v66;

  v51(v67, 0);
  sub_266ECB128(&unk_287890A08);
  return sub_26738112C();
}

uint64_t sub_2672A90BC(uint64_t a1)
{
  v2 = sub_2672A91C0(&qword_2800F9980);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672A9124(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672A91C0(&qword_2800F9980);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672A91C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaAudioOutputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaAudioStopRecording.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaEndPointType(0);
  sub_2672A95B4(&qword_2800F9988, type metadata accessor for SISchemaEndPointType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E696F70646E65, 0xEC00000065707954);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x746E696F70646E65, 0xEC00000065707954);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287890A30);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2672A94A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672A950C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672A95B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672A95FC()
{
  result = qword_2800F9998;
  if (!qword_2800F9998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9998);
  }

  return result;
}

uint64_t static SISchemaAudioStopRecordingStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIStopRecordingReasonMajor(0);
  sub_2672A9A0C(&qword_2800F99A0, type metadata accessor for SISchemaUEIStopRecordingReasonMajor);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x73616552706F7473, 0xEF726F6A614D6E6FLL);
  v6(v9, 0);
  type metadata accessor for SISchemaUEIStopRecordingReasonMinor(0);
  sub_2672A9A0C(&qword_2800F99A8, type metadata accessor for SISchemaUEIStopRecordingReasonMinor);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73616552706F7473, 0xEF726F6E694D6E6FLL);
  return v7(v9, 0);
}

uint64_t sub_2672A9900(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672A9964(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672A9A0C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672A9A54()
{
  result = qword_2800F99B8;
  if (!qword_2800F99B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F99B8);
  }

  return result;
}

uint64_t static SISchemaAutoPunctuationEdit.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v20 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v18 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[1] = a1;
  sub_26738119C();
  v19 = "iri.uei.AutoPunctuationEdit";
  v11 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v12(v6, v11, v2);
  v21[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(*(v13 - 8) + 56);
  v14(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, v19 | 0x8000000000000000);
  v15(v21, 0);
  v12(v6, v11, v20);
  v21[0] = 1;
  sub_26738114C();
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026748F1C0);
  return v16(v21, 0);
}

uint64_t sub_2672A9DD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672A9E38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672A9E9C()
{
  result = qword_2800F99C0;
  if (!qword_2800F99C0)
  {
    sub_2672A9EF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F99C0);
  }

  return result;
}

unint64_t sub_2672A9EF4()
{
  result = qword_2800F99C8;
  if (!qword_2800F99C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F99C8);
  }

  return result;
}

uint64_t static SISchemaBluetoothCarInvocationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute(0);
  sub_2672AA38C(&qword_2800F99D0, type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574756F72, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672AA0FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute(0);
  sub_2672AA38C(&qword_2800F99D0, type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574756F72, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2672AA280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AA2E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672AA38C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672AA3D4()
{
  result = qword_2800F99E0;
  if (!qword_2800F99E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F99E0);
  }

  return result;
}

uint64_t static SISchemaBluetoothCarPreferredAudioRoute.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x800000026748F260, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026748F290, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002ELL, 0x800000026748F2C0, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672AA634(uint64_t a1)
{
  v2 = sub_2672AA738(&qword_2800F99E8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AA69C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AA738(&qword_2800F99E8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AA738(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaBluetoothCarPreferredAudioRouteChanged.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute(0);
  sub_2672AAAF8(&qword_2800F99D0, type metadata accessor for SISchemaBluetoothCarPreferredAudioRoute);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x65726F666562, 0xE600000000000000);
  v6(v9, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265746661, 0xE500000000000000);
  return v7(v9, 0);
}

uint64_t sub_2672AA9EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AAA50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672AAAF8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672AAB40()
{
  result = qword_2800F99F8;
  if (!qword_2800F99F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F99F8);
  }

  return result;
}

uint64_t static SISchemaBuildVariant.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x4D504F4C45564544, 0xEB00000000544E45, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 16721, 0xE200000000000000, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x5952524143, 0xE500000000000000, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 1145390419, 0xE400000000000000, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x49544355444F5250, 0xEA00000000004E4FLL, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672AAE60(uint64_t a1)
{
  v2 = sub_2672AAF64(&qword_2800F9A08);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AAEC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AAF64(&qword_2800F9A08);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AAF64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaBuildVariant(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaButtonInteractionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026748F390, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026748F3B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026748F3D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000019, 0x800000026748F3F0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672AB230(uint64_t a1)
{
  v2 = sub_2672AB334(&qword_2800F9A10);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AB298(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AB334(&qword_2800F9A10);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AB334(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaButtonInteractionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCallAppType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x800000026748F440, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026748F460, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026748F480, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026748F4B0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672AB5FC(uint64_t a1)
{
  v2 = sub_2672AB700(&qword_2800F9A18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AB664(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AB700(&qword_2800F9A18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AB700(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCallAppType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCallState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x800000026748F4F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026748F510, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026748F530, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026748F550, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026748F570, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000011, 0x800000026748F590, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672ABAAC(uint64_t a1)
{
  v2 = sub_2672ABBB0(&qword_2800F9A20);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672ABB14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672ABBB0(&qword_2800F9A20);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672ABBB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCallState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCallType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000010, 0x800000026748F5D0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x455059544C4C4143, 0xEE004F494455415FLL, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x455059544C4C4143, 0xEE004F454449565FLL, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672ABE10(uint64_t a1)
{
  v2 = sub_2672ABF14(&qword_2800F9A28);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672ABE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672ABF14(&qword_2800F9A28);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672ABF14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCallType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCarBluetoothHeadUnit.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v39 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v34 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34[3] = a1;
  sub_26738119C();
  v35 = "rBluetoothHeadUnit";
  v12 = *(v3 + 104);
  v38 = *MEMORY[0x277D3E530];
  v11 = v38;
  v12(v6, v38, v2);
  v36 = v12;
  v41[0] = 1;
  sub_26738114C();
  v37 = sub_26738116C();
  v13 = *(v37 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v14(v10, 0, 1, v37);
  v34[1] = v15;
  v40 = v14;
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000010, v35 | 0x8000000000000000);
  v16(v41, 0);
  v35 = "headUnitVendorId";
  v17 = v11;
  v18 = v39;
  v12(v6, v17, v39);
  v41[0] = 1;
  sub_26738114C();
  v19 = v37;
  v14(v10, 0, 1, v37);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v35 | 0x8000000000000000);
  v20(v41, 0);
  v21 = v38;
  v22 = v18;
  v23 = v36;
  v36(v6, v38, v22);
  v34[2] = v3 + 104;
  v41[0] = 1;
  sub_26738114C();
  v40(v10, 0, 1, v19);
  v24 = sub_2673811AC();
  sub_266EC637C(v10, 0x656B614D726163, 0xE700000000000000);
  v24(v41, 0);
  v25 = v39;
  v23(v6, v21, v39);
  v41[0] = 1;
  sub_26738114C();
  v26 = v37;
  v27 = v40;
  v40(v10, 0, 1, v37);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C65646F4D726163, 0xE800000000000000);
  v28(v41, 0);
  v29 = v25;
  v30 = v36;
  v36(v6, *MEMORY[0x277D3E538], v29);
  v41[0] = 1;
  sub_26738114C();
  v27(v10, 0, 1, v26);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0x72616559726163, 0xE700000000000000);
  v31(v41, 0);
  v30(v6, v38, v39);
  v41[0] = 1;
  sub_26738114C();
  v40(v10, 0, 1, v26);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026748F670);
  return v32(v41, 0);
}

uint64_t sub_2672AC5C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AC624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672AC688()
{
  result = qword_2800F9878;
  if (!qword_2800F9878)
  {
    sub_2672AC6E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9878);
  }

  return result;
}

unint64_t sub_2672AC6E0()
{
  result = qword_2800F9870;
  if (!qword_2800F9870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9870);
  }

  return result;
}

uint64_t static SISchemaCardSectionKeyboardInvocationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v17);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = *MEMORY[0x277D3E4E8];
  v15 = *(v1 + 104);
  v15(v4);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026748F6D0);
  v11(v19, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2672ACC30(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6472616F6279656BLL, 0xEE00656C61636F4CLL);
  v12(v19, 0);
  (v15)(v4, v16, v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E697473697865, 0xEC00000074786554);
  return v13(v19, 0);
}

uint64_t sub_2672ACB24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672ACB88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672ACC30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672ACC78()
{
  result = qword_2800F9A38;
  if (!qword_2800F9A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A38);
  }

  return result;
}

uint64_t static SISchemaCardSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026748F720, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x52554F5344524143, 0xEF474E49425F4543, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x800000026748F740, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672ACEE8(uint64_t a1)
{
  v2 = sub_2672ACFEC(&qword_2800F9A48);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672ACF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672ACFEC(&qword_2800F9A48);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672ACFEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCardSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCarPlayConnection.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x800000026748F790, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026748F7B0, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026748F7D0, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x800000026748F7F0, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672AD2B4(uint64_t a1)
{
  v2 = sub_2672AD3B8(&qword_2800F9A50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AD31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AD3B8(&qword_2800F9A50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AD3B8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCarPlayConnection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCarPlayHeadUnitContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v1 + 104);
  v19 = v0;
  v20 = v10;
  v10(v4, v9, v0);
  v22[0] = 1;
  sub_26738114C();
  v21 = sub_26738116C();
  v11 = *(*(v21 - 8) + 56);
  v11(v8, 0, 1, v21);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4E656C6369686576, 0xEB00000000656D61);
  v12(v22, 0);
  v13 = v0;
  v14 = v20;
  v20(v4, v9, v13);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x4D656C6369686576, 0xEC0000006C65646FLL);
  v15(v22, 0);
  v14(v4, v9, v19);
  v22[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v21);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674692D0);
  return v16(v22, 0);
}

uint64_t sub_2672AD7E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AD848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672AD8AC()
{
  result = qword_2800F9A58;
  if (!qword_2800F9A58)
  {
    sub_2672AD904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9A58);
  }

  return result;
}

unint64_t sub_2672AD904()
{
  result = qword_2800F9A60;
  if (!qword_2800F9A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A60);
  }

  return result;
}

uint64_t static SISchemaCarPlayInvocationContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v16[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x4449656C646E7562, 0xE800000000000000);
  v11(v16, 0);
  type metadata accessor for SISchemaSiriDirectAction(0);
  sub_2672ADF00(&qword_2800F5EC0, type metadata accessor for SISchemaSiriDirectAction);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6341746365726964, 0xEC0000006E6F6974);
  v12(v16, 0);
  type metadata accessor for SISchemaEnhancedVoiceTriggerMode(0);
  sub_2672ADF00(&qword_2800F5EB8, type metadata accessor for SISchemaEnhancedVoiceTriggerMode);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674692F0);
  v13(v16, 0);
  type metadata accessor for SISchemaCarPlayConnection(0);
  sub_2672ADF00(&qword_2800F5EC8, type metadata accessor for SISchemaCarPlayConnection);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267469310);
  return v14(v16, 0);
}

uint64_t sub_2672ADDF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672ADE58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672ADF00(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672ADF48()
{
  result = qword_2800F9A70;
  if (!qword_2800F9A70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A70);
  }

  return result;
}

uint64_t static SISchemaCasinoRelationship.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_26738113C();
  v21 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v20 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[1] = a2;
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v4 + 104);
  v13(v7, v12, v3);
  v23[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(*(v14 - 8) + 56);
  v15(v11, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v11, 0x7246444977656976, 0xEA00000000006D6FLL);
  v16(v23, 0);
  v13(v7, v12, v21);
  v23[0] = 1;
  sub_26738114C();
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F54444977656976, 0xE800000000000000);
  v17(v23, 0);
  type metadata accessor for SISchemaCasinoType(0);
  sub_2672AE490(&qword_2800F9A78, type metadata accessor for SISchemaCasinoType);
  sub_26738120C();
  v15(v11, 0, 1, v14);
  v18 = sub_2673811AC();
  sub_266EC637C(v11, 0x72466F6E69736163, 0xEE00657079546D6FLL);
  return v18(v23, 0);
}

uint64_t sub_2672AE384(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672AE3E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672AE490(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2672AE4D8()
{
  result = qword_2800F9A88;
  if (!qword_2800F9A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A88);
  }

  return result;
}

uint64_t static SISchemaCasinoType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026748F8F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v20;

  v1(v23, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x435F4F4E49534143, 0xEE00544341504D4FLL, v11);
  v12 = *v9;
  *v9 = v21;

  v7(v23, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x465F4F4E49534143, 0xEB000000004C4C55, v17);
  v18 = *v15;
  *v15 = v22;

  return v13(v23, 0);
}

uint64_t sub_2672AE744(uint64_t a1)
{
  v2 = sub_2672AE848(&qword_2800F9A90);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672AE7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672AE848(&qword_2800F9A90);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672AE848(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCasinoType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v175 = *(v4 - 8);
  v176 = v4;
  v5 = *(v175 + 64);
  MEMORY[0x28223BE20](v4);
  v174 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v174 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9A98, 0x277D5A808);
  sub_266ECAF2C(&qword_2800F9AA0, &qword_2800F9A98, 0x277D5A808);
  sub_26738120C();
  v11 = sub_26738116C();
  v182 = *(v11 - 8);
  v13 = v182 + 56;
  v12 = *(v182 + 56);
  v12(v10, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v10, 0x74654D746E657665, 0xED00006174616461);
  v14(v185, 0);
  sub_266ECB294(0, &qword_2800F9AA8, 0x277D5A818);
  sub_266ECAF2C(&qword_2800F9AB0, &qword_2800F9AA8, 0x277D5A818);
  sub_26738120C();
  v12(v10, 0, 1, v11);
  v15 = sub_2673811AC();
  v178 = 0xD000000000000011;
  sub_266EC637C(v10, 0xD000000000000011, 0x800000026748F940);
  v15(v185, 0);
  sub_266ECB294(0, &qword_2800F9968, 0x277D5A7A8);
  sub_266ECAF2C(&qword_2800F9960, &qword_2800F9968, 0x277D5A7A8);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026748F960);
  v16(v185, 0);
  sub_266ECB294(0, &qword_2800F9998, 0x277D5A7B0);
  sub_266ECAF2C(&qword_2800F9990, &qword_2800F9998, 0x277D5A7B0);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026748F980);
  v17(v185, 0);
  sub_266ECB294(0, &qword_2800F9AB8, 0x277D5A830);
  sub_266ECAF2C(&qword_2800F9AC0, &qword_2800F9AB8, 0x277D5A830);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026748F9A0);
  v18(v185, 0);
  sub_266ECB294(0, &qword_2800F9AC8, 0x277D5A840);
  sub_266ECAF2C(&qword_2800F9AD0, &qword_2800F9AC8, 0x277D5A840);
  sub_26738121C();
  v12(v10, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, 0x800000026748F9C0);
  v19(v185, 0);
  sub_266ECB294(0, &qword_2800F9AD8, 0x277D5A848);
  sub_266ECAF2C(&qword_2800F9AE0, &qword_2800F9AD8, 0x277D5A848);
  v181 = a1;
  sub_26738121C();
  v183 = v12;
  v12(v10, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026742B5E0);
  v20(v185, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v184, 0xD000000000000012, 0x800000026742B5E0);
  v23 = *(v182 + 48);
  v182 += 48;
  v180 = v23;
  if (!v23(v24, 1, v11))
  {
    sub_266ECB128(&unk_287890A58);
    sub_26738115C();
  }

  (v22)(v184, 0);
  v21(v185, 0);
  sub_266ECB294(0, &qword_2800F9AE8, 0x277D5A880);
  sub_266ECAF2C(&qword_2800F9AF0, &qword_2800F9AE8, 0x277D5A880);
  sub_26738121C();
  v25 = v183;
  v183(v10, 0, 1, v11);
  v26 = sub_2673811AC();
  v177 = 0xD000000000000010;
  sub_266EC637C(v10, 0xD000000000000010, 0x800000026748F9E0);
  v26(v185, 0);
  sub_266ECB294(0, &qword_2800F9AF8, 0x277D5A928);
  sub_266ECAF2C(&qword_2800F9B00, &qword_2800F9AF8, 0x277D5A928);
  sub_26738121C();
  v25(v10, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0x697461636F766E69, 0xEA00000000006E6FLL);
  v27(v185, 0);
  sub_266ECB294(0, &qword_2800F66C0, 0x277D5A950);
  sub_266ECAF2C(&qword_2800F66C8, &qword_2800F66C0, 0x277D5A950);
  sub_26738121C();
  v25(v10, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v10, 0x6E6F697461636F6CLL, 0xE800000000000000);
  v28(v185, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v184, 0x6E6F697461636F6CLL, 0xE800000000000000);
  if (!v180(v31, 1, v11))
  {
    sub_266ECB128(&unk_287890A80);
    sub_26738115C();
  }

  (v30)(v184, 0);
  v29(v185, 0);
  sub_266ECB294(0, &qword_2800F9B08, 0x277D5A9B0);
  sub_266ECAF2C(&qword_2800F9B10, &qword_2800F9B08, 0x277D5A9B0);
  sub_26738121C();
  v32 = v183;
  v183(v10, 0, 1, v11);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0x74754F68636E7570, 0xE800000000000000);
  v33(v185, 0);
  sub_266ECB294(0, &qword_2800F9B18, 0x277D5AA10);
  sub_266ECAF2C(&qword_2800F9B20, &qword_2800F9B18, 0x277D5AA10);
  sub_26738121C();
  v32(v10, 0, 1, v11);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0x65754369726973, 0xE700000000000000);
  v34(v185, 0);
  sub_266ECB294(0, &qword_2800F9B28, 0x277D5AC40);
  sub_266ECAF2C(&qword_2800F9B30, &qword_2800F9B28, 0x277D5AC40);
  sub_26738121C();
  v32(v10, 0, 1, v11);
  v35 = sub_2673811AC();
  sub_266EC637C(v10, 0x7365725072667575, 0xED00006465746E65);
  v35(v185, 0);
  sub_266ECB294(0, &qword_2800F9B38, 0x277D5AA38);
  sub_266ECAF2C(&qword_2800F9B40, &qword_2800F9B38, 0x277D5AA38);
  sub_26738121C();
  v32(v10, 0, 1, v11);
  v36 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x800000026748FA00);
  v36(v185, 0);
  sub_266ECB294(0, &qword_2800F9B48, 0x277D5AA58);
  sub_266ECAF2C(&qword_2800F9B50, &qword_2800F9B48, 0x277D5AA58);
  sub_26738121C();
  v37 = v183;
  v183(v10, 0, 1, v11);
  v38 = sub_2673811AC();
  sub_266EC637C(v10, v178, 0x800000026748FA20);
  v38(v185, 0);
  sub_266ECB294(0, &qword_2800F9B58, 0x277D5AA60);
  sub_266ECAF2C(&qword_2800F9B60, &qword_2800F9B58, 0x277D5AA60);
  sub_26738121C();
  v37(v10, 0, 1, v11);
  v39 = sub_2673811AC();
  sub_266EC637C(v10, 0x70536F5474786574, 0xEF646E4568636565);
  v39(v185, 0);
  sub_266ECB294(0, &qword_2800F9B68, 0x277D5AC20);
  sub_266ECAF2C(&qword_2800F9B70, &qword_2800F9B68, 0x277D5AC20);
  sub_26738121C();
  v37(v10, 0, 1, v11);
  v40 = sub_2673811AC();
  sub_266EC637C(v10, v178, 0x800000026748FA40);
  v40(v185, 0);
  sub_266ECB294(0, &qword_2800F9B78, 0x277D5A810);
  sub_266ECAF2C(&qword_2800F9B80, &qword_2800F9B78, 0x277D5A810);
  sub_26738121C();
  v37(v10, 0, 1, v11);
  v41 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C46746E65696C63, 0xEA0000000000776FLL);
  v41(v185, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v184, 0x6C46746E65696C63, 0xEA0000000000776FLL);
  if (!v180(v44, 1, v11))
  {
    sub_266ECB128(&unk_287890AA8);
    sub_26738115C();
  }

  (v43)(v184, 0);
  v42(v185, 0);
  sub_266ECB294(0, &qword_2800F9B88, 0x277D5A858);
  sub_266ECAF2C(&qword_2800F9B90, &qword_2800F9B88, 0x277D5A858);
  sub_26738121C();
  v183(v10, 0, 1, v11);
  v45 = sub_2673811AC();
  sub_266EC637C(v10, 0x754F676F6C616964, 0xEC00000074757074);
  v45(v185, 0);
  v46 = sub_2673811AC();
  v47 = sub_266ECB6CC(v184, 0x754F676F6C616964, 0xEC00000074757074);
  if (!v180(v48, 1, v11))
  {
    sub_266ECB128(&unk_287890AD0);
    sub_26738115C();
  }

  (v47)(v184, 0);
  v46(v185, 0);
  sub_266ECB294(0, &qword_2800F9B98, 0x277D5A890);
  sub_266ECAF2C(&qword_2800F9BA0, &qword_2800F9B98, 0x277D5A890);
  sub_26738121C();
  v49 = v183;
  v183(v10, 0, 1, v11);
  v50 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026748FA60);
  v50(v185, 0);
  sub_266ECB294(0, &qword_2800F9BA8, 0x277D5A888);
  sub_266ECAF2C(&qword_2800F9BB0, &qword_2800F9BA8, 0x277D5A888);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v51 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026748FA80);
  v51(v185, 0);
  sub_266ECB294(0, &qword_2800F9BB8, 0x277D5A860);
  sub_266ECAF2C(&qword_2800F9BC0, &qword_2800F9BB8, 0x277D5A860);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v52 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x800000026748FAA0);
  v52(v185, 0);
  sub_266ECB294(0, &qword_2800F9BC8, 0x277D5A898);
  sub_266ECAF2C(&qword_2800F9BD0, &qword_2800F9BC8, 0x277D5A898);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v53 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026748FAC0);
  v53(v185, 0);
  sub_266ECB294(0, &qword_2800F9A60, 0x277D5A7E0);
  sub_266ECAF2C(&qword_2800F9A58, &qword_2800F9A60, 0x277D5A7E0);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v54 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026748FAE0);
  v54(v185, 0);
  sub_266ECB294(0, &qword_2800F9BD8, 0x277D5AC30);
  sub_266ECAF2C(&qword_2800F9BE0, &qword_2800F9BD8, 0x277D5AC30);
  sub_26738121C();
  v49(v10, 0, 1, v11);
  v55 = sub_2673811AC();
  sub_266EC637C(v10, 0x706D6F4372667575, 0xEE006E6F6974656CLL);
  v55(v185, 0);
  v56 = sub_2673811AC();
  v57 = sub_266ECB6CC(v184, 0x706D6F4372667575, 0xEE006E6F6974656CLL);
  if (!v180(v58, 1, v11))
  {
    sub_266ECB128(&unk_287890AF8);
    sub_26738115C();
  }

  (v57)(v184, 0);
  v56(v185, 0);
  sub_266ECB294(0, &qword_2800F9BE8, 0x277D5AC58);
  sub_266ECAF2C(&qword_2800F9BF0, &qword_2800F9BE8, 0x277D5AC58);
  sub_26738121C();
  v59 = v183;
  v183(v10, 0, 1, v11);
  v60 = sub_2673811AC();
  sub_266EC637C(v10, 0x776F685372667575, 0xE90000000000006ELL);
  v60(v185, 0);
  sub_266ECB294(0, &qword_2800F9BF8, 0x277D5AC48);
  sub_266ECAF2C(&qword_2800F9C00, &qword_2800F9BF8, 0x277D5AC48);
  sub_26738121C();
  v59(v10, 0, 1, v11);
  v61 = sub_2673811AC();
  sub_266EC637C(v10, 0x6469615372667575, 0xE800000000000000);
  v61(v185, 0);
  sub_266ECB294(0, &qword_2800F9C08, 0x277D5AC38);
  sub_266ECAF2C(&qword_2800F9C10, &qword_2800F9C08, 0x277D5AC38);
  sub_26738121C();
  v59(v10, 0, 1, v11);
  v62 = sub_2673811AC();
  sub_266EC637C(v10, 0x6174614672667575, 0xEE00726F7272456CLL);
  v62(v185, 0);
  sub_266ECB294(0, &qword_2800F9C18, 0x277D5A870);
  sub_266ECAF2C(&qword_2800F9C20, &qword_2800F9C18, 0x277D5A870);
  sub_26738121C();
  v59(v10, 0, 1, v11);
  v63 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026748FB00);
  v63(v185, 0);
  sub_266ECB294(0, &qword_2800F9C28, 0x277D5A920);
  sub_266ECAF2C(&qword_2800F9C30, &qword_2800F9C28, 0x277D5A920);
  sub_26738121C();
  v179 = v13;
  v59(v10, 0, 1, v11);
  v64 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026748FB20);
  v64(v185, 0);
  v65 = sub_2673811AC();
  v66 = sub_266ECB6CC(v184, 0xD000000000000017, 0x800000026748FB20);
  if (!v180(v67, 1, v11))
  {
    sub_266ECB128(&unk_287890B20);
    sub_26738115C();
  }

  (v66)(v184, 0);
  v65(v185, 0);
  sub_266ECB294(0, &qword_2800F9A88, 0x277D5A7F8);
  sub_266ECAF2C(&qword_2800F9A80, &qword_2800F9A88, 0x277D5A7F8);
  sub_26738121C();
  v68 = v183;
  v183(v10, 0, 1, v11);
  v69 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x800000026748FB40);
  v69(v185, 0);
  sub_266ECB294(0, &qword_2800F9C38, 0x277D5AC90);
  sub_266ECAF2C(&qword_2800F9C40, &qword_2800F9C38, 0x277D5AC90);
  sub_26738121C();
  v68(v10, 0, 1, v11);
  v70 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026748FB60);
  v70(v185, 0);
  sub_266ECB294(0, &qword_2800F9C48, 0x277D5A850);
  sub_266ECAF2C(&qword_2800F9C50, &qword_2800F9C48, 0x277D5A850);
  sub_26738121C();
  v68(v10, 0, 1, v11);
  v71 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026748FB80);
  v71(v185, 0);
  sub_266ECB294(0, &qword_2800F9C58, 0x277D5AB80);
  sub_266ECAF2C(&qword_2800F9C60, &qword_2800F9C58, 0x277D5AB80);
  sub_26738121C();
  v68(v10, 0, 1, v11);
  v72 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026748FBA0);
  v72(v185, 0);
  sub_266ECB294(0, &qword_2800F99B8, 0x277D5A7B8);
  sub_266ECAF2C(&qword_2800F99B0, &qword_2800F99B8, 0x277D5A7B8);
  sub_26738121C();
  v68(v10, 0, 1, v11);
  v73 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026748FBC0);
  v73(v185, 0);
  v74 = sub_2673811AC();
  v75 = sub_266ECB6CC(v184, 0xD000000000000019, 0x800000026748FBC0);
  if (!v180(v76, 1, v11))
  {
    sub_266ECB128(&unk_287890B48);
    sub_26738115C();
  }

  (v75)(v184, 0);
  v74(v185, 0);
  sub_266ECB294(0, &qword_2800F9C68, 0x277D5AB68);
  sub_266ECAF2C(&qword_2800F9C70, &qword_2800F9C68, 0x277D5AB68);
  sub_26738121C();
  v77 = v183;
  v183(v10, 0, 1, v11);
  v78 = sub_2673811AC();
  sub_266EC637C(v10, v177, 0x800000026748FBE0);
  v78(v185, 0);
  sub_266ECB294(0, &qword_2800F9C78, 0x277D5ABF0);
  sub_266ECAF2C(&qword_2800F9C80, &qword_2800F9C78, 0x277D5ABF0);
  sub_26738121C();
  v77(v10, 0, 1, v11);
  v79 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026748FC00);
  v79(v185, 0);
  sub_266ECB294(0, &qword_2800F9C88, 0x277D5ABE0);
  sub_266ECAF2C(&qword_2800F9C90, &qword_2800F9C88, 0x277D5ABE0);
  sub_26738121C();
  v77(v10, 0, 1, v11);
  v80 = sub_2673811AC();
  sub_266EC637C(v10, 0x5252465555696575, 0xEC00000079646165);
  v80(v185, 0);
  v81 = sub_2673811AC();
  v82 = sub_266ECB6CC(v184, 0x5252465555696575, 0xEC00000079646165);
  if (!v180(v83, 1, v11))
  {
    sub_266ECB128(&unk_287890B78);
    sub_26738115C();
  }

  (v82)(v184, 0);
  v81(v185, 0);
  sub_266ECB294(0, &qword_2800F9C98, 0x277D5ABC8);
  sub_266ECAF2C(&qword_2800F9CA0, &qword_2800F9C98, 0x277D5ABC8);
  sub_26738121C();
  v84 = v183;
  v183(v10, 0, 1, v11);
  v85 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026748FC20);
  v85(v185, 0);
  sub_266ECB294(0, &qword_2800F9CA8, 0x277D5A998);
  sub_266ECAF2C(&qword_2800F9CB0, &qword_2800F9CA8, 0x277D5A998);
  sub_26738121C();
  v84(v10, 0, 1, v11);
  v86 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026748FC40);
  v86(v185, 0);
  sub_266ECB294(0, &qword_2800F9CB8, 0x277D5A990);
  sub_266ECAF2C(&qword_2800F9CC0, &qword_2800F9CB8, 0x277D5A990);
  sub_26738121C();
  v84(v10, 0, 1, v11);
  v87 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x800000026748FC60);
  v87(v185, 0);
  sub_266ECB294(0, &qword_2800F9CC8, 0x277D5A980);
  sub_266ECAF2C(&qword_2800F9CD0, &qword_2800F9CC8, 0x277D5A980);
  sub_26738121C();
  v84(v10, 0, 1, v11);
  v88 = sub_2673811AC();
  sub_266EC637C(v10, 0x6C61746146726E70, 0xED0000726F727245);
  v88(v185, 0);
  sub_266ECB294(0, &qword_2800F9CD8, 0x277D5AA78);
  sub_266ECAF2C(&qword_2800F9CE0, &qword_2800F9CD8, 0x277D5AA78);
  sub_26738121C();
  v84(v10, 0, 1, v11);
  v89 = sub_2673811AC();
  sub_266EC637C(v10, 0x5245544D6E727574, 0xEE00747365757165);
  v89(v185, 0);
  sub_266ECB294(0, &qword_2800F9CE8, 0x277D5A930);
  sub_266ECAF2C(&qword_2800F9CF0, &qword_2800F9CE8, 0x277D5A930);
  sub_26738121C();
  v84(v10, 0, 1, v11);
  v90 = sub_2673811AC();
  v91 = v178;
  sub_266EC637C(v10, v178, 0x800000026748FC90);
  v90(v185, 0);
  v92 = sub_2673811AC();
  v93 = sub_266ECB6CC(v184, v91, 0x800000026748FC90);
  if (!v180(v94, 1, v11))
  {
    sub_266ECB128(&unk_287890BA8);
    sub_26738115C();
  }

  (v93)(v184, 0);
  v92(v185, 0);
  sub_266ECB294(0, &qword_2800F9CF8, 0x277D5A8A8);
  sub_266ECAF2C(&qword_2800F9D00, &qword_2800F9CF8, 0x277D5A8A8);
  sub_26738121C();
  v183(v10, 0, 1, v11);
  v95 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000017, 0x800000026748FCB0);
  v95(v185, 0);
  v178 = a2;
  v96 = sub_2673811AC();
  v97 = sub_266ECB6CC(v184, 0xD000000000000017, 0x800000026748FCB0);
  if (!v180(v98, 1, v11))
  {
    sub_266ECB128(&unk_287890BD0);
    sub_26738115C();
  }

  (v97)(v184, 0);
  v96(v185, 0);
  sub_266ECB294(0, &qword_2800F98E8, 0x277D5A770);
  sub_266ECAF2C(&qword_2800F98E0, &qword_2800F98E8, 0x277D5A770);
  sub_26738121C();
  v99 = v183;
  v183(v10, 0, 1, v11);
  v100 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001BLL, 0x800000026748FCD0);
  v100(v185, 0);
  sub_266ECB294(0, &qword_2800F98F8, 0x277D5A778);
  sub_266ECAF2C(&qword_2800F98F0, &qword_2800F98F8, 0x277D5A778);
  sub_26738121C();
  v99(v10, 0, 1, v11);
  v101 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026748FCF0);
  v101(v185, 0);
  sub_266ECB294(0, &qword_2800F9D08, 0x277D5A878);
  sub_266ECAF2C(&qword_2800F9D10, &qword_2800F9D08, 0x277D5A878);
  sub_26738121C();
  v99(v10, 0, 1, v11);
  v102 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026748FD20);
  v102(v185, 0);
  sub_266ECB294(0, &qword_2800F9D18, 0x277D5AC60);
  sub_266ECAF2C(&qword_2800F9D20, &qword_2800F9D18, 0x277D5AC60);
  sub_26738121C();
  v99(v10, 0, 1, v11);
  v103 = sub_2673811AC();
  sub_266EC637C(v10, 0x776F685372667575, 0xEE0031726569546ELL);
  v103(v185, 0);
  v104 = sub_2673811AC();
  v105 = sub_266ECB6CC(v184, 0x776F685372667575, 0xEE0031726569546ELL);
  if (!v180(v106, 1, v11))
  {
    sub_266ECB128(&unk_287890C00);
    sub_26738115C();
  }

  (v105)(v184, 0);
  v104(v185, 0);
  sub_266ECB294(0, &qword_2800F9D28, 0x277D5AB00);
  sub_266ECAF2C(&qword_2800F9D30, &qword_2800F9D28, 0x277D5AB00);
  sub_26738121C();
  v107 = v183;
  v183(v10, 0, 1, v11);
  v108 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026748FD40);
  v108(v185, 0);
  sub_266ECB294(0, &qword_2800F9D38, 0x277D5AB18);
  sub_266ECAF2C(&qword_2800F9D40, &qword_2800F9D38, 0x277D5AB18);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v109 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026748FD70);
  v109(v185, 0);
  sub_266ECB294(0, &qword_2800F9D48, 0x277D5AAE8);
  sub_266ECAF2C(&qword_2800F9D50, &qword_2800F9D48, 0x277D5AAE8);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v110 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026748FDA0);
  v110(v185, 0);
  sub_266ECB294(0, &qword_2800F9D58, 0x277D5AAB0);
  sub_266ECAF2C(&qword_2800F9D60, &qword_2800F9D58, 0x277D5AAB0);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v111 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x800000026748FDD0);
  v111(v185, 0);
  sub_266ECB294(0, &qword_2800F9D68, 0x277D5AB30);
  sub_266ECAF2C(&qword_2800F9D70, &qword_2800F9D68, 0x277D5AB30);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v112 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x800000026748FE00);
  v112(v185, 0);
  sub_266ECB294(0, &qword_2800F9D78, 0x277D5AB48);
  sub_266ECAF2C(&qword_2800F9D80, &qword_2800F9D78, 0x277D5AB48);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v113 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000020, 0x800000026748FE20);
  v113(v185, 0);
  sub_266ECB294(0, &qword_2800F9D88, 0x277D5AB08);
  sub_266ECAF2C(&qword_2800F9D90, &qword_2800F9D88, 0x277D5AB08);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v114 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000022, 0x800000026748FE50);
  v114(v185, 0);
  sub_266ECB294(0, &qword_2800F9D98, 0x277D5AA90);
  sub_266ECAF2C(&qword_2800F9DA0, &qword_2800F9D98, 0x277D5AA90);
  sub_26738121C();
  v107(v10, 0, 1, v11);
  v115 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x800000026748FE80);
  v115(v185, 0);
  v116 = sub_2673811AC();
  v117 = sub_266ECB6CC(v184, 0xD00000000000001DLL, 0x800000026748FE80);
  if (!v180(v118, 1, v11))
  {
    sub_266ECB128(&unk_287890C30);
    sub_26738115C();
  }

  (v117)(v184, 0);
  v116(v185, 0);
  sub_266ECB294(0, &qword_2800F9DA8, 0x277D5AC50);
  sub_266ECAF2C(&qword_2800F9DB0, &qword_2800F9DA8, 0x277D5AC50);
  sub_26738121C();
  v183(v10, 0, 1, v11);
  v119 = sub_2673811AC();
  sub_266EC637C(v10, 0x656C655372667575, 0xEC00000064657463);
  v119(v185, 0);
  v120 = sub_2673811AC();
  v121 = sub_266ECB6CC(v184, 0x656C655372667575, 0xEC00000064657463);
  if (!v180(v122, 1, v11))
  {
    sub_266ECB128(&unk_287890C60);
    sub_26738115C();
  }

  (v121)(v184, 0);
  v120(v185, 0);
  sub_266ECB294(0, &qword_2800F9DB8, 0x277D5AA98);
  sub_266ECAF2C(&qword_2800F9DC0, &qword_2800F9DB8, 0x277D5AA98);
  sub_26738121C();
  v183(v10, 0, 1, v11);
  v123 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000028, 0x800000026748FEA0);
  v123(v185, 0);
  v124 = sub_2673811AC();
  v125 = sub_266ECB6CC(v184, 0xD000000000000028, 0x800000026748FEA0);
  if (!v180(v126, 1, v11))
  {
    sub_266ECB128(&unk_287890C90);
    sub_26738115C();
  }

  (v125)(v184, 0);
  v124(v185, 0);
  sub_266ECB294(0, &qword_2800F9DC8, 0x277D5ABE8);
  sub_266ECAF2C(&qword_2800F9DD0, &qword_2800F9DC8, 0x277D5ABE8);
  sub_26738121C();
  v127 = v183;
  v183(v10, 0, 1, v11);
  v128 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000016, 0x800000026748FED0);
  v128(v185, 0);
  sub_266ECB294(0, &qword_2800F9DD8, 0x277D5AAC0);
  sub_266ECAF2C(&qword_2800F9DE0, &qword_2800F9DD8, 0x277D5AAC0);
  sub_26738121C();
  v127(v10, 0, 1, v11);
  v129 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000021, 0x800000026748FEF0);
  v129(v185, 0);
  sub_266ECB294(0, &qword_2800F9DE8, 0x277D5AB90);
  sub_266ECAF2C(&qword_2800F9DF0, &qword_2800F9DE8, 0x277D5AB90);
  sub_26738121C();
  v127(v10, 0, 1, v11);
  v130 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x800000026748FF20);
  v130(v185, 0);
  sub_266ECB294(0, &qword_2800F9DF8, 0x277D5AC08);
  sub_266ECAF2C(&qword_2800F9E00, &qword_2800F9DF8, 0x277D5AC08);
  sub_26738121C();
  v127(v10, 0, 1, v11);
  v131 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000019, 0x800000026748FF40);
  v131(v185, 0);
  sub_266ECB294(0, &qword_2800F9E08, 0x277D5ABB0);
  sub_266ECAF2C(&qword_2800F9E10, &qword_2800F9E08, 0x277D5ABB0);
  sub_26738121C();
  v127(v10, 0, 1, v11);
  v132 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x800000026748FF60);
  v132(v185, 0);
  sub_266ECB294(0, &qword_2800F99F8, 0x277D5A7D0);
  sub_266ECAF2C(&qword_2800F99F0, &qword_2800F99F8, 0x277D5A7D0);
  sub_26738121C();
  v127(v10, 0, 1, v11);
  v133 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x800000026748FF80);
  v133(v185, 0);
  sub_266ECB294(0, &qword_2800F9E18, 0x277D5AAA0);
  sub_266ECAF2C(&qword_2800F9E20, &qword_2800F9E18, 0x277D5AAA0);
  sub_26738121C();
  v127(v10, 0, 1, v11);
  v134 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ELL, 0x800000026748FFA0);
  v134(v185, 0);
  v135 = sub_2673811AC();
  v136 = sub_266ECB6CC(v184, 0xD00000000000001ELL, 0x800000026748FFA0);
  if (!v180(v137, 1, v11))
  {
    sub_266ECB128(&unk_287890CB8);
    sub_26738115C();
  }

  (v136)(v184, 0);
  v135(v185, 0);
  sub_266ECB294(0, &qword_2800F9E28, 0x277D5AB28);
  sub_266ECAF2C(&qword_2800F9E30, &qword_2800F9E28, 0x277D5AB28);
  sub_26738121C();
  v138 = v183;
  v183(v10, 0, 1, v11);
  v139 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000025, 0x800000026748FFC0);
  v139(v185, 0);
  sub_266ECB294(0, &qword_2800F9E38, 0x277D5AB10);
  sub_266ECAF2C(&qword_2800F9E40, &qword_2800F9E38, 0x277D5AB10);
  sub_26738121C();
  v138(v10, 0, 1, v11);
  v140 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002CLL, 0x800000026748FFF0);
  v140(v185, 0);
  sub_266ECB294(0, &qword_2800F9E48, 0x277D5AB20);
  sub_266ECAF2C(&qword_2800F9E50, &qword_2800F9E48, 0x277D5AB20);
  sub_26738121C();
  v138(v10, 0, 1, v11);
  v141 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000026, 0x8000000267490020);
  v141(v185, 0);
  sub_266ECB294(0, &qword_2800F9E58, 0x277D5AAC8);
  sub_266ECAF2C(&qword_2800F9E60, &qword_2800F9E58, 0x277D5AAC8);
  sub_26738121C();
  v138(v10, 0, 1, v11);
  v142 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000023, 0x8000000267490050);
  v142(v185, 0);
  v143 = sub_2673811AC();
  v144 = sub_266ECB6CC(v184, 0xD000000000000023, 0x8000000267490050);
  if (!v180(v145, 1, v11))
  {
    sub_266ECB128(&unk_287890CE0);
    sub_26738115C();
  }

  (v144)(v184, 0);
  v143(v185, 0);
  sub_266ECB294(0, &qword_2800F9E68, 0x277D5AAD0);
  sub_266ECAF2C(&qword_2800F9E70, &qword_2800F9E68, 0x277D5AAD0);
  sub_26738121C();
  v183(v10, 0, 1, v11);
  v146 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000028, 0x8000000267490080);
  v146(v185, 0);
  v147 = sub_2673811AC();
  v148 = sub_266ECB6CC(v184, 0xD000000000000028, 0x8000000267490080);
  if (!v180(v149, 1, v11))
  {
    sub_266ECB128(&unk_287890D08);
    sub_26738115C();
  }

  (v148)(v184, 0);
  v147(v185, 0);
  sub_266ECB294(0, &qword_2800F9E78, 0x277D5AAD8);
  sub_266ECAF2C(&qword_2800F9E80, &qword_2800F9E78, 0x277D5AAD8);
  sub_26738121C();
  v150 = v183;
  v183(v10, 0, 1, v11);
  v151 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000002CLL, 0x80000002674900B0);
  v151(v185, 0);
  sub_266ECB294(0, &qword_2800F9E88, 0x277D5AAE0);
  sub_266ECAF2C(&qword_2800F9E90, &qword_2800F9E88, 0x277D5AAE0);
  sub_26738121C();
  v150(v10, 0, 1, v11);
  v152 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000031, 0x80000002674900E0);
  v152(v185, 0);
  v153 = sub_2673811AC();
  v154 = sub_266ECB6CC(v184, 0xD000000000000031, 0x80000002674900E0);
  if (!v180(v155, 1, v11))
  {
    sub_266ECB128(&unk_287890D38);
    sub_26738115C();
  }

  (v154)(v184, 0);
  v153(v185, 0);
  sub_266ECB294(0, &qword_2800F9E98, 0x277D5AA88);
  sub_266ECAF2C(&qword_2800F9EA0, &qword_2800F9E98, 0x277D5AA88);
  sub_26738121C();
  v156 = v183;
  v183(v10, 0, 1, v11);
  v157 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267490120);
  v157(v185, 0);
  sub_266ECB294(0, &qword_2800F9EA8, 0x277D5AB60);
  sub_266ECAF2C(&qword_2800F9EB0, &qword_2800F9EA8, 0x277D5AB60);
  sub_26738121C();
  v156(v10, 0, 1, v11);
  v158 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000012, 0x8000000267490140);
  v158(v185, 0);
  v159 = sub_2673811AC();
  v160 = sub_266ECB6CC(v184, 0xD000000000000012, 0x8000000267490140);
  if (!v180(v161, 1, v11))
  {
    sub_266ECB128(&unk_287890D60);
    sub_26738115C();
  }

  (v160)(v184, 0);
  v159(v185, 0);
  sub_266ECB294(0, &qword_2800F9EB8, 0x277D5ABB8);
  sub_266ECAF2C(&qword_2800F9EC0, &qword_2800F9EB8, 0x277D5ABB8);
  sub_26738121C();
  v162 = v183;
  v183(v10, 0, 1, v11);
  v163 = sub_2673811AC();
  sub_266EC637C(v10, 0x697263736E617274, 0xEF6E776F68537470);
  v163(v185, 0);
  sub_266ECB294(0, &qword_2800F9EC8, 0x277D5ABC0);
  sub_266ECAF2C(&qword_2800F9ED0, &qword_2800F9EC8, 0x277D5ABC0);
  sub_26738121C();
  v162(v10, 0, 1, v11);
  v164 = sub_2673811AC();
  sub_266EC637C(v10, v177, 0x8000000267490160);
  v164(v185, 0);
  v165 = v174;
  sub_26738117C();
  v166 = sub_2673811BC();
  v168 = v167;
  v169 = *v167;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v168 = v169;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v169 = sub_266ECAD54(0, v169[2] + 1, 1, v169);
    *v168 = v169;
  }

  v172 = v169[2];
  v171 = v169[3];
  if (v172 >= v171 >> 1)
  {
    v169 = sub_266ECAD54(v171 > 1, v172 + 1, 1, v169);
    *v168 = v169;
  }

  v169[2] = v172 + 1;
  (*(v175 + 32))(v169 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v172, v165, v176);
  v166(v185, 0);
  sub_266ECB128(&unk_287890D88);
  return sub_2673811CC();
}

uint64_t sub_2672B3798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672B3830()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672B38FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B3960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672B39C0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9ED8, &qword_2800F1E10, 0x277D5A800);
  a1[2] = sub_266ECAF2C(&qword_2800F9EE0, &qword_2800F1E10, 0x277D5A800);
  result = sub_266ECAF2C(&qword_2800F9EE8, &qword_2800F1E10, 0x277D5A800);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaClientEventMetadata.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4F8];
  v10 = *(v1 + 104);
  v34 = v1 + 104;
  v35 = v0;
  v33 = v10;
  v10(v4, v9, v0);
  v37[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v31 = *(v12 + 56);
  v32 = v12 + 56;
  v31(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x44496E727574, 0xE600000000000000);
  v13(v37, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v36, 0x44496E727574, 0xE600000000000000);
  v30 = *(v12 + 48);
  if (!v30(v16, 1, v11))
  {
    sub_266ECB128(&unk_287890DB8);
    sub_26738115C();
  }

  (v15)(v36, 0);
  v14(v37, 0);
  v33(v4, v9, v35);
  v37[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6976654469726973, 0xEC00000044496563);
  v17(v37, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v36, 0x6976654469726973, 0xEC00000044496563);
  if (!v30(v20, 1, v11))
  {
    sub_266ECB128(&unk_287890DE8);
    sub_26738115C();
  }

  (v19)(v36, 0);
  v18(v37, 0);
  v33(v4, *MEMORY[0x277D3E530], v35);
  v37[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x80000002674901B0);
  v21(v37, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v36, 0xD00000000000001CLL, 0x80000002674901B0);
  if (!v30(v24, 1, v11))
  {
    sub_266ECB128(&unk_287890E18);
    sub_26738115C();
  }

  (v23)(v36, 0);
  v22(v37, 0);
  v33(v4, *MEMORY[0x277D3E510], v35);
  v37[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, 0x80000002674901D0);
  v25(v37, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v36, 0xD00000000000002BLL, 0x80000002674901D0);
  if (!v30(v28, 1, v11))
  {
    sub_266ECB128(&unk_287890E40);
    sub_26738115C();
  }

  (v27)(v36, 0);
  return v26(v37, 0);
}

uint64_t sub_2672B41C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B4224(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B4288()
{
  result = qword_2800F9AA0;
  if (!qword_2800F9AA0)
  {
    sub_2672B42E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9AA0);
  }

  return result;
}

unint64_t sub_2672B42E0()
{
  result = qword_2800F9A98;
  if (!qword_2800F9A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9A98);
  }

  return result;
}

uint64_t static SISchemaClientFlow.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267490230);
  v10(v12, 0);
  sub_266ECB128(&unk_287890E68);
  return sub_2673811CC();
}

uint64_t sub_2672B4594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B45F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B465C()
{
  result = qword_2800F9B80;
  if (!qword_2800F9B80)
  {
    sub_2672B46B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9B80);
  }

  return result;
}

unint64_t sub_2672B46B4()
{
  result = qword_2800F9B78;
  if (!qword_2800F9B78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B78);
  }

  return result;
}

uint64_t static SISchemaClientTransportEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v25 = sub_26738113C();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = "tTransportEventMetadata";
  v23 = *MEMORY[0x277D3E530];
  v22 = *(v2 + 104);
  v22(v5);
  v20[2] = v2 + 104;
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v24 = *(*(v10 - 8) + 56);
  v24(v9, 0, 1, v10);
  v20[1] = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v21 | 0x8000000000000000);
  v11(v26, 0);
  v21 = "eventTransmittedTimestampRefId";
  v12 = *MEMORY[0x277D3E510];
  v13 = v25;
  v14 = v22;
  (v22)(v5, v12, v25);
  v26[0] = 1;
  sub_26738114C();
  v15 = v24;
  v24(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000002DLL, v21 | 0x8000000000000000);
  v16(v26, 0);
  v21 = "RelativeToBootTimeTimestampNs";
  (v14)(v5, v12, v13);
  v26[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v21 | 0x8000000000000000);
  v17(v26, 0);
  (v14)(v5, v23, v25);
  v26[0] = 1;
  sub_26738114C();
  v24(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267490300);
  return v18(v26, 0);
}

uint64_t sub_2672B4BEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B4C50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B4CB4()
{
  result = qword_2800F9AB0;
  if (!qword_2800F9AB0)
  {
    sub_2672B4D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9AB0);
  }

  return result;
}

unint64_t sub_2672B4D0C()
{
  result = qword_2800F9AA8;
  if (!qword_2800F9AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9AA8);
  }

  return result;
}

uint64_t static SISchemaClockIsolationLevel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(1, 1162760014, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0x444554414C4F5349, 0xE800000000000000, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2672B4EE0(uint64_t a1)
{
  v2 = sub_2672B4FE4(&qword_2800F9EF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B4F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672B4FE4(&qword_2800F9EF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672B4FE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaClockIsolationLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaCommonEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_26738113C();
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F9F00, 0x277D5A958);
  sub_266ECAF2C(&qword_2800F9F08, &qword_2800F9F00, 0x277D5A958);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D617473656D6974, 0xE900000000000070);
  v13(v37, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v28[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  v28[2] = a1;
  sub_26738120C();
  v34 = v12;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x676E694674736574, 0xEF746E6972707265);
  v14(v37, 0);
  v32 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v36, 0x676E694674736574, 0xEF746E6972707265);
  v17 = *(v11 + 48);
  v35 = v11 + 48;
  v33 = v17;
  if (!v17(v18, 1, v10))
  {
    sub_266ECB128(&unk_287890E90);
    sub_26738115C();
  }

  (v16)(v36, 0);
  v15(v37, 0);
  sub_26738120C();
  v34(v9, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449746E657665, 0xE700000000000000);
  v19(v37, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v36, 0x6449746E657665, 0xE700000000000000);
  if (!v33(v22, 1, v10))
  {
    sub_266ECB128(&unk_287890EC0);
    sub_26738115C();
  }

  (v21)(v36, 0);
  v20(v37, 0);
  (*(v29 + 104))(v30, *MEMORY[0x277D3E510], v31);
  v37[0] = 1;
  sub_26738114C();
  v34(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D695474696D65, 0xED0000706D617473);
  v23(v37, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v36, 0x656D695474696D65, 0xED0000706D617473);
  if (!v33(v26, 1, v10))
  {
    sub_266ECB128(&unk_287890EF0);
    sub_26738115C();
  }

  (v25)(v36, 0);
  v24(v37, 0);
  sub_266ECB128(&unk_287890F20);
  return sub_2673811CC();
}

uint64_t sub_2672B56CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B5730(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaCompletionStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002ALL, 0x80000002674903B0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v38;

  v1(v44, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674903E0, v11);
  v12 = *v9;
  *v9 = v39;

  v7(v44, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267490400, v17);
  v18 = *v15;
  *v15 = v40;

  v13(v44, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x8000000267490420, v23);
  v24 = *v21;
  *v21 = v41;

  v19(v44, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x8000000267490440, v29);
  v30 = *v27;
  *v27 = v42;

  v25(v44, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267490460, v35);
  v36 = *v33;
  *v33 = v43;

  return v31(v44, 0);
}

uint64_t sub_2672B5B38(uint64_t a1)
{
  v2 = sub_2672B5C3C(&qword_2800F9F18);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B5BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672B5C3C(&qword_2800F9F18);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672B5C3C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCompletionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaComponentIdentifier.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 1684632949, 0xE400000000000000);
  v6(v9, 0);
  type metadata accessor for SISchemaComponentName(0);
  sub_2672B5FC8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656E6F706D6F63, 0xE900000000000074);
  return v7(v9, 0);
}

uint64_t sub_2672B5F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672B5F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672B5FC8()
{
  result = qword_2800F9F20;
  if (!qword_2800F9F20)
  {
    type metadata accessor for SISchemaComponentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9F20);
  }

  return result;
}

uint64_t static SISchemaComponentInvocationSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x80000002674904F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v86;

  v1(v100, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000029, 0x8000000267490520, v11);
  v12 = *v9;
  *v9 = v87;

  v7(v100, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267490550, v17);
  v18 = *v15;
  *v15 = v88;

  v13(v100, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267490580, v23);
  v24 = *v21;
  *v21 = v89;

  v19(v100, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x80000002674905B0, v29);
  v30 = *v27;
  *v27 = v90;

  v25(v100, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x80000002674905D0, v35);
  v36 = *v33;
  *v33 = v91;

  v31(v100, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x8000000267490600, v41);
  v42 = *v39;
  *v39 = v92;

  v37(v100, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x8000000267490630, v47);
  v48 = *v45;
  *v45 = v93;

  v43(v100, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x8000000267490660, v53);
  v54 = *v51;
  *v51 = v94;

  v49(v100, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ELL, 0x8000000267490690, v59);
  v60 = *v57;
  *v57 = v95;

  v55(v100, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x80000002674906B0, v65);
  v66 = *v63;
  *v63 = v96;

  v61(v100, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x80000002674906E0, v71);
  v72 = *v69;
  *v69 = v97;

  v67(v100, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000002ALL, 0x8000000267490710, v77);
  v78 = *v75;
  *v75 = v98;

  v73(v100, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000025, 0x8000000267490740, v83);
  v84 = *v81;
  *v81 = v99;

  return v79(v100, 0);
}

uint64_t sub_2672B675C(uint64_t a1)
{
  v2 = sub_2672B6860(&qword_2800F9F38);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B67C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672B6860(&qword_2800F9F38);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672B6860(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaComponentInvocationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaComponentName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v852 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674907A0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v852;

  v1(v974, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v853 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674907C0, v11);
  v12 = *v9;
  *v9 = v853;

  v7(v974, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v854 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x80000002674907E0, v17);
  v18 = *v15;
  *v15 = v854;

  v13(v974, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v855 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267490800, v23);
  v24 = *v21;
  *v21 = v855;

  v19(v974, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v856 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267490820, v29);
  v30 = *v27;
  *v27 = v856;

  v25(v974, 0);
  v31 = sub_266ECB128(&unk_287890F50);
  v33 = v32;
  v34 = sub_2673810FC();
  v36 = v35;
  v37 = *v35;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v857 = *v36;
  *v36 = 0x8000000000000000;
  sub_266ECD4CC(v31, v33, 4, v38);
  *v36 = v857;
  v34(v974, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = *v40;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v858 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000011, 0x8000000267490840, v43);
  v44 = *v41;
  *v41 = v858;

  v39(v974, 0);
  v45 = sub_266ECB128(&unk_287890F80);
  v47 = v46;
  v48 = sub_2673810FC();
  v50 = v49;
  v51 = *v49;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v859 = *v50;
  *v50 = 0x8000000000000000;
  sub_266ECD4CC(v45, v47, 5, v52);
  *v50 = v859;
  v48(v974, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = *v54;
  v57 = swift_isUniquelyReferenced_nonNull_native();
  v860 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x8000000267490860, v57);
  v58 = *v55;
  *v55 = v860;

  v53(v974, 0);
  v59 = sub_266ECB128(&unk_287890FB0);
  v61 = v60;
  v62 = sub_2673810FC();
  v64 = v63;
  v65 = *v63;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v861 = *v64;
  *v64 = 0x8000000000000000;
  sub_266ECD4CC(v59, v61, 6, v66);
  *v64 = v861;
  v62(v974, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v862 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x8000000267490880, v71);
  v72 = *v69;
  *v69 = v862;

  v67(v974, 0);
  v73 = sub_266ECB128(&unk_287890FE0);
  v75 = v74;
  v76 = sub_2673810FC();
  v78 = v77;
  v79 = *v77;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v863 = *v78;
  *v78 = 0x8000000000000000;
  sub_266ECD4CC(v73, v75, 7, v80);
  *v78 = v863;
  v76(v974, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = *v82;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v864 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000011, 0x80000002674908A0, v85);
  v86 = *v83;
  *v83 = v864;

  v81(v974, 0);
  v87 = sub_266ECB128(&unk_287891010);
  v89 = v88;
  v90 = sub_2673810FC();
  v92 = v91;
  v93 = *v91;
  v94 = swift_isUniquelyReferenced_nonNull_native();
  v865 = *v92;
  *v92 = 0x8000000000000000;
  sub_266ECD4CC(v87, v89, 8, v94);
  *v92 = v865;
  v90(v974, 0);
  v95 = sub_26738111C();
  v97 = v96;
  v98 = *v96;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v866 = *v97;
  *v97 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x80000002674908C0, v99);
  v100 = *v97;
  *v97 = v866;

  v95(v974, 0);
  v101 = sub_266ECB128(&unk_287891040);
  v103 = v102;
  v104 = sub_2673810FC();
  v106 = v105;
  v107 = *v105;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v867 = *v106;
  *v106 = 0x8000000000000000;
  sub_266ECD4CC(v101, v103, 9, v108);
  *v106 = v867;
  v104(v974, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v868 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x80000002674908E0, v113);
  v114 = *v111;
  *v111 = v868;

  v109(v974, 0);
  v115 = sub_266ECB128(&unk_287891070);
  v117 = v116;
  v118 = sub_2673810FC();
  v120 = v119;
  v121 = *v119;
  v122 = swift_isUniquelyReferenced_nonNull_native();
  v869 = *v120;
  *v120 = 0x8000000000000000;
  sub_266ECD4CC(v115, v117, 10, v122);
  *v120 = v869;
  v118(v974, 0);
  v123 = sub_26738111C();
  v125 = v124;
  v126 = *v124;
  v127 = swift_isUniquelyReferenced_nonNull_native();
  v870 = *v125;
  *v125 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000012, 0x8000000267490900, v127);
  v128 = *v125;
  *v125 = v870;

  v123(v974, 0);
  v129 = sub_266ECB128(&unk_2878910A0);
  v131 = v130;
  v132 = sub_2673810FC();
  v134 = v133;
  v135 = *v133;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v871 = *v134;
  *v134 = 0x8000000000000000;
  sub_266ECD4CC(v129, v131, 11, v136);
  *v134 = v871;
  v132(v974, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = *v138;
  v141 = swift_isUniquelyReferenced_nonNull_native();
  v872 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000016, 0x8000000267490920, v141);
  v142 = *v139;
  *v139 = v872;

  v137(v974, 0);
  v143 = sub_266ECB128(&unk_2878910D0);
  v145 = v144;
  v146 = sub_2673810FC();
  v148 = v147;
  v149 = *v147;
  v150 = swift_isUniquelyReferenced_nonNull_native();
  v873 = *v148;
  *v148 = 0x8000000000000000;
  sub_266ECD4CC(v143, v145, 12, v150);
  *v148 = v873;
  v146(v974, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v874 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000011, 0x8000000267490940, v155);
  v156 = *v153;
  *v153 = v874;

  v151(v974, 0);
  v157 = sub_266ECB128(&unk_287891100);
  v159 = v158;
  v160 = sub_2673810FC();
  v162 = v161;
  v163 = *v161;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v875 = *v162;
  *v162 = 0x8000000000000000;
  sub_266ECD4CC(v157, v159, 13, v164);
  *v162 = v875;
  v160(v974, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = *v166;
  v169 = swift_isUniquelyReferenced_nonNull_native();
  v876 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ALL, 0x8000000267490960, v169);
  v170 = *v167;
  *v167 = v876;

  v165(v974, 0);
  v171 = sub_266ECB128(&unk_287891130);
  v173 = v172;
  v174 = sub_2673810FC();
  v176 = v175;
  v177 = *v175;
  v178 = swift_isUniquelyReferenced_nonNull_native();
  v877 = *v176;
  *v176 = 0x8000000000000000;
  sub_266ECD4CC(v171, v173, 14, v178);
  *v176 = v877;
  v174(v974, 0);
  v179 = sub_26738111C();
  v181 = v180;
  v182 = *v180;
  v183 = swift_isUniquelyReferenced_nonNull_native();
  v878 = *v181;
  *v181 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000022, 0x8000000267490980, v183);
  v184 = *v181;
  *v181 = v878;

  v179(v974, 0);
  v185 = sub_266ECB128(&unk_287891160);
  v187 = v186;
  v188 = sub_2673810FC();
  v190 = v189;
  v191 = *v189;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v879 = *v190;
  *v190 = 0x8000000000000000;
  sub_266ECD4CC(v185, v187, 15, v192);
  *v190 = v879;
  v188(v974, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v880 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000014, 0x80000002674909B0, v197);
  v198 = *v195;
  *v195 = v880;

  v193(v974, 0);
  v199 = sub_266ECB128(&unk_287891190);
  v201 = v200;
  v202 = sub_2673810FC();
  v204 = v203;
  v205 = *v203;
  v206 = swift_isUniquelyReferenced_nonNull_native();
  v881 = *v204;
  *v204 = 0x8000000000000000;
  sub_266ECD4CC(v199, v201, 16, v206);
  *v204 = v881;
  v202(v974, 0);
  v207 = sub_26738111C();
  v209 = v208;
  v210 = *v208;
  v211 = swift_isUniquelyReferenced_nonNull_native();
  v882 = *v209;
  *v209 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000011, 0x80000002674909D0, v211);
  v212 = *v209;
  *v209 = v882;

  v207(v974, 0);
  v213 = sub_266ECB128(&unk_2878911C0);
  v215 = v214;
  v216 = sub_2673810FC();
  v218 = v217;
  v219 = *v217;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v883 = *v218;
  *v218 = 0x8000000000000000;
  sub_266ECD4CC(v213, v215, 17, v220);
  *v218 = v883;
  v216(v974, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = *v222;
  v225 = swift_isUniquelyReferenced_nonNull_native();
  v884 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000015, 0x80000002674909F0, v225);
  v226 = *v223;
  *v223 = v884;

  v221(v974, 0);
  v227 = sub_266ECB128(&unk_2878911F0);
  v229 = v228;
  v230 = sub_2673810FC();
  v232 = v231;
  v233 = *v231;
  v234 = swift_isUniquelyReferenced_nonNull_native();
  v885 = *v232;
  *v232 = 0x8000000000000000;
  sub_266ECD4CC(v227, v229, 18, v234);
  *v232 = v885;
  v230(v974, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v886 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000012, 0x8000000267490A10, v239);
  v240 = *v237;
  *v237 = v886;

  v235(v974, 0);
  v241 = sub_266ECB128(&unk_287891220);
  v243 = v242;
  v244 = sub_2673810FC();
  v246 = v245;
  v247 = *v245;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v887 = *v246;
  *v246 = 0x8000000000000000;
  sub_266ECD4CC(v241, v243, 19, v248);
  *v246 = v887;
  v244(v974, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = *v250;
  v253 = swift_isUniquelyReferenced_nonNull_native();
  v888 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000019, 0x8000000267490A30, v253);
  v254 = *v251;
  *v251 = v888;

  v249(v974, 0);
  v255 = sub_266ECB128(&unk_287891250);
  v257 = v256;
  v258 = sub_2673810FC();
  v260 = v259;
  v261 = *v259;
  v262 = swift_isUniquelyReferenced_nonNull_native();
  v889 = *v260;
  *v260 = 0x8000000000000000;
  sub_266ECD4CC(v255, v257, 20, v262);
  *v260 = v889;
  v258(v974, 0);
  v263 = sub_26738111C();
  v265 = v264;
  v266 = *v264;
  v267 = swift_isUniquelyReferenced_nonNull_native();
  v890 = *v265;
  *v265 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000014, 0x8000000267490A50, v267);
  v268 = *v265;
  *v265 = v890;

  v263(v974, 0);
  v269 = sub_266ECB128(&unk_287891280);
  v271 = v270;
  v272 = sub_2673810FC();
  v274 = v273;
  v275 = *v273;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v891 = *v274;
  *v274 = 0x8000000000000000;
  sub_266ECD4CC(v269, v271, 21, v276);
  *v274 = v891;
  v272(v974, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v892 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001CLL, 0x8000000267490A70, v281);
  v282 = *v279;
  *v279 = v892;

  v277(v974, 0);
  v283 = sub_266ECB128(&unk_2878912B0);
  v285 = v284;
  v286 = sub_2673810FC();
  v288 = v287;
  v289 = *v287;
  v290 = swift_isUniquelyReferenced_nonNull_native();
  v893 = *v288;
  *v288 = 0x8000000000000000;
  sub_266ECD4CC(v283, v285, 22, v290);
  *v288 = v893;
  v286(v974, 0);
  v291 = sub_26738111C();
  v293 = v292;
  v294 = *v292;
  v295 = swift_isUniquelyReferenced_nonNull_native();
  v894 = *v293;
  *v293 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000011, 0x8000000267490A90, v295);
  v296 = *v293;
  *v293 = v894;

  v291(v974, 0);
  v297 = sub_266ECB128(&unk_2878912E0);
  v299 = v298;
  v300 = sub_2673810FC();
  v302 = v301;
  v303 = *v301;
  v304 = swift_isUniquelyReferenced_nonNull_native();
  v895 = *v302;
  *v302 = 0x8000000000000000;
  sub_266ECD4CC(v297, v299, 23, v304);
  *v302 = v895;
  v300(v974, 0);
  v305 = sub_26738111C();
  v307 = v306;
  v308 = *v306;
  v309 = swift_isUniquelyReferenced_nonNull_native();
  v896 = *v307;
  *v307 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000015, 0x8000000267490AB0, v309);
  v310 = *v307;
  *v307 = v896;

  v305(v974, 0);
  v311 = sub_266ECB128(&unk_287891310);
  v313 = v312;
  v314 = sub_2673810FC();
  v316 = v315;
  v317 = *v315;
  v318 = swift_isUniquelyReferenced_nonNull_native();
  v897 = *v316;
  *v316 = 0x8000000000000000;
  sub_266ECD4CC(v311, v313, 24, v318);
  *v316 = v897;
  v314(v974, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v898 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000011, 0x8000000267490AD0, v323);
  v324 = *v321;
  *v321 = v898;

  v319(v974, 0);
  v325 = sub_266ECB128(&unk_287891340);
  v327 = v326;
  v328 = sub_2673810FC();
  v330 = v329;
  v331 = *v329;
  v332 = swift_isUniquelyReferenced_nonNull_native();
  v899 = *v330;
  *v330 = 0x8000000000000000;
  sub_266ECD4CC(v325, v327, 25, v332);
  *v330 = v899;
  v328(v974, 0);
  v333 = sub_26738111C();
  v335 = v334;
  v336 = *v334;
  v337 = swift_isUniquelyReferenced_nonNull_native();
  v900 = *v335;
  *v335 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000011, 0x8000000267490AF0, v337);
  v338 = *v335;
  *v335 = v900;

  v333(v974, 0);
  v339 = sub_266ECB128(&unk_287891370);
  v341 = v340;
  v342 = sub_2673810FC();
  v344 = v343;
  v345 = *v343;
  v346 = swift_isUniquelyReferenced_nonNull_native();
  v901 = *v344;
  *v344 = 0x8000000000000000;
  sub_266ECD4CC(v339, v341, 26, v346);
  *v344 = v901;
  v342(v974, 0);
  v347 = sub_26738111C();
  v349 = v348;
  v350 = *v348;
  v351 = swift_isUniquelyReferenced_nonNull_native();
  v902 = *v349;
  *v349 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000017, 0x8000000267490B10, v351);
  v352 = *v349;
  *v349 = v902;

  v347(v974, 0);
  v353 = sub_266ECB128(&unk_2878913A0);
  v355 = v354;
  v356 = sub_2673810FC();
  v358 = v357;
  v359 = *v357;
  v360 = swift_isUniquelyReferenced_nonNull_native();
  v903 = *v358;
  *v358 = 0x8000000000000000;
  sub_266ECD4CC(v353, v355, 27, v360);
  *v358 = v903;
  v356(v974, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v904 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000010, 0x8000000267490B30, v365);
  v366 = *v363;
  *v363 = v904;

  v361(v974, 0);
  v367 = sub_266ECB128(&unk_2878913D0);
  v369 = v368;
  v370 = sub_2673810FC();
  v372 = v371;
  v373 = *v371;
  v374 = swift_isUniquelyReferenced_nonNull_native();
  v905 = *v372;
  *v372 = 0x8000000000000000;
  sub_266ECD4CC(v367, v369, 28, v374);
  *v372 = v905;
  v370(v974, 0);
  v375 = sub_26738111C();
  v377 = v376;
  v378 = *v376;
  v379 = swift_isUniquelyReferenced_nonNull_native();
  v906 = *v377;
  *v377 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000011, 0x8000000267490B50, v379);
  v380 = *v377;
  *v377 = v906;

  v375(v974, 0);
  v381 = sub_266ECB128(&unk_287891400);
  v383 = v382;
  v384 = sub_2673810FC();
  v386 = v385;
  v387 = *v385;
  v388 = swift_isUniquelyReferenced_nonNull_native();
  v907 = *v386;
  *v386 = 0x8000000000000000;
  sub_266ECD4CC(v381, v383, 29, v388);
  *v386 = v907;
  v384(v974, 0);
  v389 = sub_26738111C();
  v391 = v390;
  v392 = *v390;
  v393 = swift_isUniquelyReferenced_nonNull_native();
  v908 = *v391;
  *v391 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000012, 0x8000000267490B70, v393);
  v394 = *v391;
  *v391 = v908;

  v389(v974, 0);
  v395 = sub_266ECB128(&unk_287891430);
  v397 = v396;
  v398 = sub_2673810FC();
  v400 = v399;
  v401 = *v399;
  v402 = swift_isUniquelyReferenced_nonNull_native();
  v909 = *v400;
  *v400 = 0x8000000000000000;
  sub_266ECD4CC(v395, v397, 30, v402);
  *v400 = v909;
  v398(v974, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v910 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001ELL, 0x8000000267490B90, v407);
  v408 = *v405;
  *v405 = v910;

  v403(v974, 0);
  v409 = sub_266ECB128(&unk_287891460);
  v411 = v410;
  v412 = sub_2673810FC();
  v414 = v413;
  v415 = *v413;
  v416 = swift_isUniquelyReferenced_nonNull_native();
  v911 = *v414;
  *v414 = 0x8000000000000000;
  sub_266ECD4CC(v409, v411, 31, v416);
  *v414 = v911;
  v412(v974, 0);
  v417 = sub_26738111C();
  v419 = v418;
  v420 = *v418;
  v421 = swift_isUniquelyReferenced_nonNull_native();
  v912 = *v419;
  *v419 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000001ELL, 0x8000000267490BB0, v421);
  v422 = *v419;
  *v419 = v912;

  v417(v974, 0);
  v423 = sub_266ECB128(&unk_287891490);
  v425 = v424;
  v426 = sub_2673810FC();
  v428 = v427;
  v429 = *v427;
  v430 = swift_isUniquelyReferenced_nonNull_native();
  v913 = *v428;
  *v428 = 0x8000000000000000;
  sub_266ECD4CC(v423, v425, 32, v430);
  *v428 = v913;
  v426(v974, 0);
  v431 = sub_26738111C();
  v433 = v432;
  v434 = *v432;
  v435 = swift_isUniquelyReferenced_nonNull_native();
  v914 = *v433;
  *v433 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000018, 0x8000000267490BD0, v435);
  v436 = *v433;
  *v433 = v914;

  v431(v974, 0);
  v437 = sub_266ECB128(&unk_2878914C0);
  v439 = v438;
  v440 = sub_2673810FC();
  v442 = v441;
  v443 = *v441;
  v444 = swift_isUniquelyReferenced_nonNull_native();
  v915 = *v442;
  *v442 = 0x8000000000000000;
  sub_266ECD4CC(v437, v439, 33, v444);
  *v442 = v915;
  v440(v974, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v916 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000018, 0x8000000267490BF0, v449);
  v450 = *v447;
  *v447 = v916;

  v445(v974, 0);
  v451 = sub_266ECB128(&unk_2878914F0);
  v453 = v452;
  v454 = sub_2673810FC();
  v456 = v455;
  v457 = *v455;
  v458 = swift_isUniquelyReferenced_nonNull_native();
  v917 = *v456;
  *v456 = 0x8000000000000000;
  sub_266ECD4CC(v451, v453, 34, v458);
  *v456 = v917;
  v454(v974, 0);
  v459 = sub_26738111C();
  v461 = v460;
  v462 = *v460;
  v463 = swift_isUniquelyReferenced_nonNull_native();
  v918 = *v461;
  *v461 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000010, 0x8000000267490C10, v463);
  v464 = *v461;
  *v461 = v918;

  v459(v974, 0);
  v465 = sub_266ECB128(&unk_287891520);
  v467 = v466;
  v468 = sub_2673810FC();
  v470 = v469;
  v471 = *v469;
  v472 = swift_isUniquelyReferenced_nonNull_native();
  v919 = *v470;
  *v470 = 0x8000000000000000;
  sub_266ECD4CC(v465, v467, 35, v472);
  *v470 = v919;
  v468(v974, 0);
  v473 = sub_26738111C();
  v475 = v474;
  v476 = *v474;
  v477 = swift_isUniquelyReferenced_nonNull_native();
  v920 = *v475;
  *v475 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000011, 0x8000000267490C30, v477);
  v478 = *v475;
  *v475 = v920;

  v473(v974, 0);
  v479 = sub_266ECB128(&unk_287891550);
  v481 = v480;
  v482 = sub_2673810FC();
  v484 = v483;
  v485 = *v483;
  v486 = swift_isUniquelyReferenced_nonNull_native();
  v921 = *v484;
  *v484 = 0x8000000000000000;
  sub_266ECD4CC(v479, v481, 36, v486);
  *v484 = v921;
  v482(v974, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v922 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000011, 0x8000000267490C50, v491);
  v492 = *v489;
  *v489 = v922;

  v487(v974, 0);
  v493 = sub_266ECB128(&unk_287891580);
  v495 = v494;
  v496 = sub_2673810FC();
  v498 = v497;
  v499 = *v497;
  v500 = swift_isUniquelyReferenced_nonNull_native();
  v923 = *v498;
  *v498 = 0x8000000000000000;
  sub_266ECD4CC(v493, v495, 37, v500);
  *v498 = v923;
  v496(v974, 0);
  v501 = sub_26738111C();
  v503 = v502;
  v504 = *v502;
  v505 = swift_isUniquelyReferenced_nonNull_native();
  v924 = *v503;
  *v503 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000016, 0x8000000267490C70, v505);
  v506 = *v503;
  *v503 = v924;

  v501(v974, 0);
  v507 = sub_266ECB128(&unk_2878915B0);
  v509 = v508;
  v510 = sub_2673810FC();
  v512 = v511;
  v513 = *v511;
  v514 = swift_isUniquelyReferenced_nonNull_native();
  v925 = *v512;
  *v512 = 0x8000000000000000;
  sub_266ECD4CC(v507, v509, 38, v514);
  *v512 = v925;
  v510(v974, 0);
  v515 = sub_26738111C();
  v517 = v516;
  v518 = *v516;
  v519 = swift_isUniquelyReferenced_nonNull_native();
  v926 = *v517;
  *v517 = 0x8000000000000000;
  sub_266ECD368(39, 0xD000000000000015, 0x8000000267490C90, v519);
  v520 = *v517;
  *v517 = v926;

  v515(v974, 0);
  v521 = sub_266ECB128(&unk_2878915E0);
  v523 = v522;
  v524 = sub_2673810FC();
  v526 = v525;
  v527 = *v525;
  v528 = swift_isUniquelyReferenced_nonNull_native();
  v927 = *v526;
  *v526 = 0x8000000000000000;
  sub_266ECD4CC(v521, v523, 39, v528);
  *v526 = v927;
  v524(v974, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v928 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000012, 0x8000000267490CB0, v533);
  v534 = *v531;
  *v531 = v928;

  v529(v974, 0);
  v535 = sub_266ECB128(&unk_287891610);
  v537 = v536;
  v538 = sub_2673810FC();
  v540 = v539;
  v541 = *v539;
  v542 = swift_isUniquelyReferenced_nonNull_native();
  v929 = *v540;
  *v540 = 0x8000000000000000;
  sub_266ECD4CC(v535, v537, 40, v542);
  *v540 = v929;
  v538(v974, 0);
  v543 = sub_26738111C();
  v545 = v544;
  v546 = *v544;
  v547 = swift_isUniquelyReferenced_nonNull_native();
  v930 = *v545;
  *v545 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000011, 0x8000000267490CD0, v547);
  v548 = *v545;
  *v545 = v930;

  v543(v974, 0);
  v549 = sub_266ECB128(&unk_287891640);
  v551 = v550;
  v552 = sub_2673810FC();
  v554 = v553;
  v555 = *v553;
  v556 = swift_isUniquelyReferenced_nonNull_native();
  v931 = *v554;
  *v554 = 0x8000000000000000;
  sub_266ECD4CC(v549, v551, 41, v556);
  *v554 = v931;
  v552(v974, 0);
  v557 = sub_26738111C();
  v559 = v558;
  v560 = *v558;
  v561 = swift_isUniquelyReferenced_nonNull_native();
  v932 = *v559;
  *v559 = 0x8000000000000000;
  sub_266ECD368(42, 0xD000000000000016, 0x8000000267490CF0, v561);
  v562 = *v559;
  *v559 = v932;

  v557(v974, 0);
  v563 = sub_266ECB128(&unk_287891670);
  v565 = v564;
  v566 = sub_2673810FC();
  v568 = v567;
  v569 = *v567;
  v570 = swift_isUniquelyReferenced_nonNull_native();
  v933 = *v568;
  *v568 = 0x8000000000000000;
  sub_266ECD4CC(v563, v565, 42, v570);
  *v568 = v933;
  v566(v974, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v934 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000001DLL, 0x8000000267490D10, v575);
  v576 = *v573;
  *v573 = v934;

  v571(v974, 0);
  v577 = sub_266ECB128(&unk_2878916A0);
  v579 = v578;
  v580 = sub_2673810FC();
  v582 = v581;
  v583 = *v581;
  v584 = swift_isUniquelyReferenced_nonNull_native();
  v935 = *v582;
  *v582 = 0x8000000000000000;
  sub_266ECD4CC(v577, v579, 43, v584);
  *v582 = v935;
  v580(v974, 0);
  v585 = sub_26738111C();
  v587 = v586;
  v588 = *v586;
  v589 = swift_isUniquelyReferenced_nonNull_native();
  v936 = *v587;
  *v587 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000022, 0x8000000267490D30, v589);
  v590 = *v587;
  *v587 = v936;

  v585(v974, 0);
  v591 = sub_266ECB128(&unk_2878916D0);
  v593 = v592;
  v594 = sub_2673810FC();
  v596 = v595;
  v597 = *v595;
  v598 = swift_isUniquelyReferenced_nonNull_native();
  v937 = *v596;
  *v596 = 0x8000000000000000;
  sub_266ECD4CC(v591, v593, 44, v598);
  *v596 = v937;
  v594(v974, 0);
  v599 = sub_26738111C();
  v601 = v600;
  v602 = *v600;
  v603 = swift_isUniquelyReferenced_nonNull_native();
  v938 = *v601;
  *v601 = 0x8000000000000000;
  sub_266ECD368(45, 0xD000000000000018, 0x8000000267490D60, v603);
  v604 = *v601;
  *v601 = v938;

  v599(v974, 0);
  v605 = sub_266ECB128(&unk_287891700);
  v607 = v606;
  v608 = sub_2673810FC();
  v610 = v609;
  v611 = *v609;
  v612 = swift_isUniquelyReferenced_nonNull_native();
  v939 = *v610;
  *v610 = 0x8000000000000000;
  sub_266ECD4CC(v605, v607, 45, v612);
  *v610 = v939;
  v608(v974, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = *v614;
  v617 = swift_isUniquelyReferenced_nonNull_native();
  v940 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000013, 0x8000000267490D80, v617);
  v618 = *v615;
  *v615 = v940;

  v613(v974, 0);
  v619 = sub_266ECB128(&unk_287891730);
  v621 = v620;
  v622 = sub_2673810FC();
  v624 = v623;
  v625 = *v623;
  v626 = swift_isUniquelyReferenced_nonNull_native();
  v941 = *v624;
  *v624 = 0x8000000000000000;
  sub_266ECD4CC(v619, v621, 46, v626);
  *v624 = v941;
  v622(v974, 0);
  v627 = sub_26738111C();
  v629 = v628;
  v630 = *v628;
  v631 = swift_isUniquelyReferenced_nonNull_native();
  v942 = *v629;
  *v629 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000001BLL, 0x8000000267490DA0, v631);
  v632 = *v629;
  *v629 = v942;

  v627(v974, 0);
  v633 = sub_266ECB128(&unk_287891760);
  v635 = v634;
  v636 = sub_2673810FC();
  v638 = v637;
  v639 = *v637;
  v640 = swift_isUniquelyReferenced_nonNull_native();
  v943 = *v638;
  *v638 = 0x8000000000000000;
  sub_266ECD4CC(v633, v635, 47, v640);
  *v638 = v943;
  v636(v974, 0);
  v641 = sub_26738111C();
  v643 = v642;
  v644 = *v642;
  v645 = swift_isUniquelyReferenced_nonNull_native();
  v944 = *v643;
  *v643 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000001BLL, 0x8000000267490DC0, v645);
  v646 = *v643;
  *v643 = v944;

  v641(v974, 0);
  v647 = sub_266ECB128(&unk_287891790);
  v649 = v648;
  v650 = sub_2673810FC();
  v652 = v651;
  v653 = *v651;
  v654 = swift_isUniquelyReferenced_nonNull_native();
  v945 = *v652;
  *v652 = 0x8000000000000000;
  sub_266ECD4CC(v647, v649, 48, v654);
  *v652 = v945;
  v650(v974, 0);
  v655 = sub_26738111C();
  v657 = v656;
  v658 = *v656;
  v659 = swift_isUniquelyReferenced_nonNull_native();
  v946 = *v657;
  *v657 = 0x8000000000000000;
  sub_266ECD368(49, 0xD00000000000001CLL, 0x8000000267490DE0, v659);
  v660 = *v657;
  *v657 = v946;

  v655(v974, 0);
  v661 = sub_266ECB128(&unk_2878917C0);
  v663 = v662;
  v664 = sub_2673810FC();
  v666 = v665;
  v667 = *v665;
  v668 = swift_isUniquelyReferenced_nonNull_native();
  v947 = *v666;
  *v666 = 0x8000000000000000;
  sub_266ECD4CC(v661, v663, 49, v668);
  *v666 = v947;
  v664(v974, 0);
  v669 = sub_26738111C();
  v671 = v670;
  v672 = *v670;
  v673 = swift_isUniquelyReferenced_nonNull_native();
  v948 = *v671;
  *v671 = 0x8000000000000000;
  sub_266ECD368(50, 0xD00000000000001ELL, 0x8000000267490E00, v673);
  v674 = *v671;
  *v671 = v948;

  v669(v974, 0);
  v675 = sub_266ECB128(&unk_2878917F0);
  v677 = v676;
  v678 = sub_2673810FC();
  v680 = v679;
  v681 = *v679;
  v682 = swift_isUniquelyReferenced_nonNull_native();
  v949 = *v680;
  *v680 = 0x8000000000000000;
  sub_266ECD4CC(v675, v677, 50, v682);
  *v680 = v949;
  v678(v974, 0);
  v683 = sub_26738111C();
  v685 = v684;
  v686 = *v684;
  v687 = swift_isUniquelyReferenced_nonNull_native();
  v950 = *v685;
  *v685 = 0x8000000000000000;
  sub_266ECD368(51, 0xD00000000000001DLL, 0x8000000267490E20, v687);
  v688 = *v685;
  *v685 = v950;

  v683(v974, 0);
  v689 = sub_266ECB128(&unk_287891820);
  v691 = v690;
  v692 = sub_2673810FC();
  v694 = v693;
  v695 = *v693;
  v696 = swift_isUniquelyReferenced_nonNull_native();
  v951 = *v694;
  *v694 = 0x8000000000000000;
  sub_266ECD4CC(v689, v691, 51, v696);
  *v694 = v951;
  v692(v974, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = *v698;
  v701 = swift_isUniquelyReferenced_nonNull_native();
  v952 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(52, 0xD00000000000001ALL, 0x8000000267490E40, v701);
  v702 = *v699;
  *v699 = v952;

  v697(v974, 0);
  v703 = sub_266ECB128(&unk_287891850);
  v705 = v704;
  v706 = sub_2673810FC();
  v708 = v707;
  v709 = *v707;
  v710 = swift_isUniquelyReferenced_nonNull_native();
  v953 = *v708;
  *v708 = 0x8000000000000000;
  sub_266ECD4CC(v703, v705, 52, v710);
  *v708 = v953;
  v706(v974, 0);
  v711 = sub_26738111C();
  v713 = v712;
  v714 = *v712;
  v715 = swift_isUniquelyReferenced_nonNull_native();
  v954 = *v713;
  *v713 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000018, 0x8000000267490E60, v715);
  v716 = *v713;
  *v713 = v954;

  v711(v974, 0);
  v717 = sub_266ECB128(&unk_287891880);
  v719 = v718;
  v720 = sub_2673810FC();
  v722 = v721;
  v723 = *v721;
  v724 = swift_isUniquelyReferenced_nonNull_native();
  v955 = *v722;
  *v722 = 0x8000000000000000;
  sub_266ECD4CC(v717, v719, 53, v724);
  *v722 = v955;
  v720(v974, 0);
  v725 = sub_26738111C();
  v727 = v726;
  v728 = *v726;
  v729 = swift_isUniquelyReferenced_nonNull_native();
  v956 = *v727;
  *v727 = 0x8000000000000000;
  sub_266ECD368(54, 0xD00000000000001FLL, 0x8000000267490E80, v729);
  v730 = *v727;
  *v727 = v956;

  v725(v974, 0);
  v731 = sub_266ECB128(&unk_2878918B0);
  v733 = v732;
  v734 = sub_2673810FC();
  v736 = v735;
  v737 = *v735;
  v738 = swift_isUniquelyReferenced_nonNull_native();
  v957 = *v736;
  *v736 = 0x8000000000000000;
  sub_266ECD4CC(v731, v733, 54, v738);
  *v736 = v957;
  v734(v974, 0);
  v739 = sub_26738111C();
  v741 = v740;
  v742 = *v740;
  v743 = swift_isUniquelyReferenced_nonNull_native();
  v958 = *v741;
  *v741 = 0x8000000000000000;
  sub_266ECD368(55, 0xD000000000000019, 0x8000000267490EA0, v743);
  v744 = *v741;
  *v741 = v958;

  v739(v974, 0);
  v745 = sub_266ECB128(&unk_2878918E0);
  v747 = v746;
  v748 = sub_2673810FC();
  v750 = v749;
  v751 = *v749;
  v752 = swift_isUniquelyReferenced_nonNull_native();
  v959 = *v750;
  *v750 = 0x8000000000000000;
  sub_266ECD4CC(v745, v747, 55, v752);
  *v750 = v959;
  v748(v974, 0);
  v753 = sub_26738111C();
  v755 = v754;
  v756 = *v754;
  v757 = swift_isUniquelyReferenced_nonNull_native();
  v960 = *v755;
  *v755 = 0x8000000000000000;
  sub_266ECD368(56, 0xD000000000000011, 0x8000000267490EC0, v757);
  v758 = *v755;
  *v755 = v960;

  v753(v974, 0);
  v759 = sub_266ECB128(&unk_287891910);
  v761 = v760;
  v762 = sub_2673810FC();
  v764 = v763;
  v765 = *v763;
  v766 = swift_isUniquelyReferenced_nonNull_native();
  v961 = *v764;
  *v764 = 0x8000000000000000;
  sub_266ECD4CC(v759, v761, 56, v766);
  *v764 = v961;
  v762(v974, 0);
  v767 = sub_26738111C();
  v769 = v768;
  v770 = *v768;
  v771 = swift_isUniquelyReferenced_nonNull_native();
  v962 = *v769;
  *v769 = 0x8000000000000000;
  sub_266ECD368(57, 0xD000000000000010, 0x8000000267490EE0, v771);
  v772 = *v769;
  *v769 = v962;

  v767(v974, 0);
  v773 = sub_266ECB128(&unk_287891940);
  v775 = v774;
  v776 = sub_2673810FC();
  v778 = v777;
  v779 = *v777;
  v780 = swift_isUniquelyReferenced_nonNull_native();
  v963 = *v778;
  *v778 = 0x8000000000000000;
  sub_266ECD4CC(v773, v775, 57, v780);
  *v778 = v963;
  v776(v974, 0);
  v781 = sub_26738111C();
  v783 = v782;
  v784 = *v782;
  v785 = swift_isUniquelyReferenced_nonNull_native();
  v964 = *v783;
  *v783 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000019, 0x8000000267490F00, v785);
  v786 = *v783;
  *v783 = v964;

  v781(v974, 0);
  v787 = sub_266ECB128(&unk_287891970);
  v789 = v788;
  v790 = sub_2673810FC();
  v792 = v791;
  v793 = *v791;
  v794 = swift_isUniquelyReferenced_nonNull_native();
  v965 = *v792;
  *v792 = 0x8000000000000000;
  sub_266ECD4CC(v787, v789, 58, v794);
  *v792 = v965;
  v790(v974, 0);
  v795 = sub_26738111C();
  v797 = v796;
  v798 = *v796;
  v799 = swift_isUniquelyReferenced_nonNull_native();
  v966 = *v797;
  *v797 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000020, 0x8000000267490F20, v799);
  v800 = *v797;
  *v797 = v966;

  v795(v974, 0);
  v801 = sub_266ECB128(&unk_2878919A0);
  v803 = v802;
  v804 = sub_2673810FC();
  v806 = v805;
  v807 = *v805;
  v808 = swift_isUniquelyReferenced_nonNull_native();
  v967 = *v806;
  *v806 = 0x8000000000000000;
  sub_266ECD4CC(v801, v803, 59, v808);
  *v806 = v967;
  v804(v974, 0);
  v809 = sub_26738111C();
  v811 = v810;
  v812 = *v810;
  v813 = swift_isUniquelyReferenced_nonNull_native();
  v968 = *v811;
  *v811 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000020, 0x8000000267490F50, v813);
  v814 = *v811;
  *v811 = v968;

  v809(v974, 0);
  v815 = sub_266ECB128(&unk_2878919D0);
  v817 = v816;
  v818 = sub_2673810FC();
  v820 = v819;
  v821 = *v819;
  v822 = swift_isUniquelyReferenced_nonNull_native();
  v969 = *v820;
  *v820 = 0x8000000000000000;
  sub_266ECD4CC(v815, v817, 61, v822);
  *v820 = v969;
  v818(v974, 0);
  v823 = sub_26738111C();
  v825 = v824;
  v826 = *v824;
  v827 = swift_isUniquelyReferenced_nonNull_native();
  v970 = *v825;
  *v825 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000011, 0x8000000267490F80, v827);
  v828 = *v825;
  *v825 = v970;

  v823(v974, 0);
  v829 = sub_266ECB128(&unk_287891A00);
  v831 = v830;
  v832 = sub_2673810FC();
  v834 = v833;
  v835 = *v833;
  v836 = swift_isUniquelyReferenced_nonNull_native();
  v971 = *v834;
  *v834 = 0x8000000000000000;
  sub_266ECD4CC(v829, v831, 62, v836);
  *v834 = v971;
  v832(v974, 0);
  v837 = sub_26738111C();
  v839 = v838;
  v840 = *v838;
  v841 = swift_isUniquelyReferenced_nonNull_native();
  v972 = *v839;
  *v839 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000016, 0x8000000267490FA0, v841);
  v842 = *v839;
  *v839 = v972;

  v837(v974, 0);
  v843 = sub_266ECB128(&unk_287891A30);
  v845 = v844;
  v846 = sub_2673810FC();
  v848 = v847;
  v849 = *v847;
  v850 = swift_isUniquelyReferenced_nonNull_native();
  v973 = *v848;
  *v848 = 0x8000000000000000;
  sub_266ECD4CC(v843, v845, 63, v850);
  *v848 = v973;
  v846(v974, 0);
  sub_266ECB128(&unk_287891A60);
  return sub_26738112C();
}

uint64_t sub_2672B9F28(uint64_t a1)
{
  v2 = sub_2672BA02C(&qword_2800F9F40);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672B9F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672BA02C(&qword_2800F9F40);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672BA02C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaComponentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaConnectionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267490FF0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v92;

  v1(v107, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267491020, v11);
  v12 = *v9;
  *v9 = v93;

  v7(v107, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267491040, v17);
  v18 = *v15;
  *v15 = v94;

  v13(v107, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267491060, v23);
  v24 = *v21;
  *v21 = v95;

  v19(v107, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x8000000267491080, v29);
  v30 = *v27;
  *v27 = v96;

  v25(v107, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674910A0, v35);
  v36 = *v33;
  *v33 = v97;

  v31(v107, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000015, 0x80000002674910C0, v41);
  v42 = *v39;
  *v39 = v98;

  v37(v107, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x80000002674910E0, v47);
  v48 = *v45;
  *v45 = v99;

  v43(v107, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x8000000267491100, v53);
  v54 = *v51;
  *v51 = v100;

  v49(v107, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267491120, v59);
  v60 = *v57;
  *v57 = v101;

  v55(v107, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001DLL, 0x8000000267491140, v65);
  v66 = *v63;
  *v63 = v102;

  v61(v107, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000012, 0x8000000267491160, v71);
  v72 = *v69;
  *v69 = v103;

  v67(v107, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000017, 0x8000000267491180, v77);
  v78 = *v75;
  *v75 = v104;

  v73(v107, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000012, 0x80000002674911A0, v83);
  v84 = *v81;
  *v81 = v105;

  v79(v107, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000014, 0x80000002674911C0, v89);
  v90 = *v87;
  *v87 = v106;

  return v85(v107, 0);
}

uint64_t sub_2672BA7D8(uint64_t a1)
{
  v2 = sub_2672BA8DC(&qword_2800F9F50);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672BA840(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672BA8DC(&qword_2800F9F50);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672BA8DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaConversationTrace.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4F8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x73756F6976657270, 0xEE0044496E727554);
  return v10(v12, 0);
}

uint64_t sub_2672BAB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672BABDC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672BAC40()
{
  result = qword_2800F9AC0;
  if (!qword_2800F9AC0)
  {
    sub_2672BAC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9AC0);
  }

  return result;
}

unint64_t sub_2672BAC98()
{
  result = qword_2800F9AB8;
  if (!qword_2800F9AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9AB8);
  }

  return result;
}

uint64_t static SISchemaCountryCode.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1508 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267491240, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v1508;

  v1(v1759, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v1509 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x435952544E554F43, 0xEE0046415F45444FLL, v11);
  v12 = *v9;
  *v9 = v1509;

  v7(v1759, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v1510 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x435952544E554F43, 0xEE0058415F45444FLL, v17);
  v18 = *v15;
  *v15 = v1510;

  v13(v1759, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v1511 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x435952544E554F43, 0xEE004C415F45444FLL, v23);
  v24 = *v21;
  *v21 = v1511;

  v19(v1759, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v1512 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0x435952544E554F43, 0xEE005A445F45444FLL, v29);
  v30 = *v27;
  *v27 = v1512;

  v25(v1759, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v1513 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0x435952544E554F43, 0xEE0053415F45444FLL, v35);
  v36 = *v33;
  *v33 = v1513;

  v31(v1759, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v1514 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0x435952544E554F43, 0xEE0044415F45444FLL, v41);
  v42 = *v39;
  *v39 = v1514;

  v37(v1759, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v1515 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0x435952544E554F43, 0xEE004F415F45444FLL, v47);
  v48 = *v45;
  *v45 = v1515;

  v43(v1759, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v1516 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0x435952544E554F43, 0xEE0049415F45444FLL, v53);
  v54 = *v51;
  *v51 = v1516;

  v49(v1759, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = *v56;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v1517 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(9, 0x435952544E554F43, 0xEE0051415F45444FLL, v59);
  v60 = *v57;
  *v57 = v1517;

  v55(v1759, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = *v62;
  v65 = swift_isUniquelyReferenced_nonNull_native();
  v1518 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(10, 0x435952544E554F43, 0xEE0047415F45444FLL, v65);
  v66 = *v63;
  *v63 = v1518;

  v61(v1759, 0);
  v67 = sub_26738111C();
  v69 = v68;
  v70 = *v68;
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v1519 = *v69;
  *v69 = 0x8000000000000000;
  sub_266ECD368(11, 0x435952544E554F43, 0xEE0052415F45444FLL, v71);
  v72 = *v69;
  *v69 = v1519;

  v67(v1759, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = *v74;
  v77 = swift_isUniquelyReferenced_nonNull_native();
  v1520 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(12, 0x435952544E554F43, 0xEE004D415F45444FLL, v77);
  v78 = *v75;
  *v75 = v1520;

  v73(v1759, 0);
  v79 = sub_26738111C();
  v81 = v80;
  v82 = *v80;
  v83 = swift_isUniquelyReferenced_nonNull_native();
  v1521 = *v81;
  *v81 = 0x8000000000000000;
  sub_266ECD368(13, 0x435952544E554F43, 0xEE0057415F45444FLL, v83);
  v84 = *v81;
  *v81 = v1521;

  v79(v1759, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = *v86;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v1522 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(14, 0x435952544E554F43, 0xEE0055415F45444FLL, v89);
  v90 = *v87;
  *v87 = v1522;

  v85(v1759, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v1523 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(15, 0x435952544E554F43, 0xEE0054415F45444FLL, v95);
  v96 = *v93;
  *v93 = v1523;

  v91(v1759, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = *v98;
  v101 = swift_isUniquelyReferenced_nonNull_native();
  v1524 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(16, 0x435952544E554F43, 0xEE005A415F45444FLL, v101);
  v102 = *v99;
  *v99 = v1524;

  v97(v1759, 0);
  v103 = sub_26738111C();
  v105 = v104;
  v106 = *v104;
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v1525 = *v105;
  *v105 = 0x8000000000000000;
  sub_266ECD368(17, 0x435952544E554F43, 0xEE0053425F45444FLL, v107);
  v108 = *v105;
  *v105 = v1525;

  v103(v1759, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = *v110;
  v113 = swift_isUniquelyReferenced_nonNull_native();
  v1526 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(18, 0x435952544E554F43, 0xEE0048425F45444FLL, v113);
  v114 = *v111;
  *v111 = v1526;

  v109(v1759, 0);
  v115 = sub_26738111C();
  v117 = v116;
  v118 = *v116;
  v119 = swift_isUniquelyReferenced_nonNull_native();
  v1527 = *v117;
  *v117 = 0x8000000000000000;
  sub_266ECD368(19, 0x435952544E554F43, 0xEE0044425F45444FLL, v119);
  v120 = *v117;
  *v117 = v1527;

  v115(v1759, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = *v122;
  v125 = swift_isUniquelyReferenced_nonNull_native();
  v1528 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(20, 0x435952544E554F43, 0xEE0042425F45444FLL, v125);
  v126 = *v123;
  *v123 = v1528;

  v121(v1759, 0);
  v127 = sub_26738111C();
  v129 = v128;
  v130 = *v128;
  v131 = swift_isUniquelyReferenced_nonNull_native();
  v1529 = *v129;
  *v129 = 0x8000000000000000;
  sub_266ECD368(21, 0x435952544E554F43, 0xEE0059425F45444FLL, v131);
  v132 = *v129;
  *v129 = v1529;

  v127(v1759, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v1530 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(22, 0x435952544E554F43, 0xEE0045425F45444FLL, v137);
  v138 = *v135;
  *v135 = v1530;

  v133(v1759, 0);
  v139 = sub_26738111C();
  v141 = v140;
  v142 = *v140;
  v143 = swift_isUniquelyReferenced_nonNull_native();
  v1531 = *v141;
  *v141 = 0x8000000000000000;
  sub_266ECD368(23, 0x435952544E554F43, 0xEE005A425F45444FLL, v143);
  v144 = *v141;
  *v141 = v1531;

  v139(v1759, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = *v146;
  v149 = swift_isUniquelyReferenced_nonNull_native();
  v1532 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(24, 0x435952544E554F43, 0xEE004A425F45444FLL, v149);
  v150 = *v147;
  *v147 = v1532;

  v145(v1759, 0);
  v151 = sub_26738111C();
  v153 = v152;
  v154 = *v152;
  v155 = swift_isUniquelyReferenced_nonNull_native();
  v1533 = *v153;
  *v153 = 0x8000000000000000;
  sub_266ECD368(25, 0x435952544E554F43, 0xEE004D425F45444FLL, v155);
  v156 = *v153;
  *v153 = v1533;

  v151(v1759, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = *v158;
  v161 = swift_isUniquelyReferenced_nonNull_native();
  v1534 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(26, 0x435952544E554F43, 0xEE0054425F45444FLL, v161);
  v162 = *v159;
  *v159 = v1534;

  v157(v1759, 0);
  v163 = sub_26738111C();
  v165 = v164;
  v166 = *v164;
  v167 = swift_isUniquelyReferenced_nonNull_native();
  v1535 = *v165;
  *v165 = 0x8000000000000000;
  sub_266ECD368(27, 0x435952544E554F43, 0xEE004F425F45444FLL, v167);
  v168 = *v165;
  *v165 = v1535;

  v163(v1759, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = *v170;
  v173 = swift_isUniquelyReferenced_nonNull_native();
  v1536 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(28, 0x435952544E554F43, 0xEE0051425F45444FLL, v173);
  v174 = *v171;
  *v171 = v1536;

  v169(v1759, 0);
  v175 = sub_26738111C();
  v177 = v176;
  v178 = *v176;
  v179 = swift_isUniquelyReferenced_nonNull_native();
  v1537 = *v177;
  *v177 = 0x8000000000000000;
  sub_266ECD368(29, 0x435952544E554F43, 0xEE0041425F45444FLL, v179);
  v180 = *v177;
  *v177 = v1537;

  v175(v1759, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = *v182;
  v185 = swift_isUniquelyReferenced_nonNull_native();
  v1538 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(30, 0x435952544E554F43, 0xEE0057425F45444FLL, v185);
  v186 = *v183;
  *v183 = v1538;

  v181(v1759, 0);
  v187 = sub_26738111C();
  v189 = v188;
  v190 = *v188;
  v191 = swift_isUniquelyReferenced_nonNull_native();
  v1539 = *v189;
  *v189 = 0x8000000000000000;
  sub_266ECD368(31, 0x435952544E554F43, 0xEE0056425F45444FLL, v191);
  v192 = *v189;
  *v189 = v1539;

  v187(v1759, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = *v194;
  v197 = swift_isUniquelyReferenced_nonNull_native();
  v1540 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(32, 0x435952544E554F43, 0xEE0052425F45444FLL, v197);
  v198 = *v195;
  *v195 = v1540;

  v193(v1759, 0);
  v199 = sub_26738111C();
  v201 = v200;
  v202 = *v200;
  v203 = swift_isUniquelyReferenced_nonNull_native();
  v1541 = *v201;
  *v201 = 0x8000000000000000;
  sub_266ECD368(33, 0x435952544E554F43, 0xEE004F495F45444FLL, v203);
  v204 = *v201;
  *v201 = v1541;

  v199(v1759, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = *v206;
  v209 = swift_isUniquelyReferenced_nonNull_native();
  v1542 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(34, 0x435952544E554F43, 0xEE004E425F45444FLL, v209);
  v210 = *v207;
  *v207 = v1542;

  v205(v1759, 0);
  v211 = sub_26738111C();
  v213 = v212;
  v214 = *v212;
  v215 = swift_isUniquelyReferenced_nonNull_native();
  v1543 = *v213;
  *v213 = 0x8000000000000000;
  sub_266ECD368(35, 0x435952544E554F43, 0xEE0047425F45444FLL, v215);
  v216 = *v213;
  *v213 = v1543;

  v211(v1759, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = *v218;
  v221 = swift_isUniquelyReferenced_nonNull_native();
  v1544 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(36, 0x435952544E554F43, 0xEE0046425F45444FLL, v221);
  v222 = *v219;
  *v219 = v1544;

  v217(v1759, 0);
  v223 = sub_26738111C();
  v225 = v224;
  v226 = *v224;
  v227 = swift_isUniquelyReferenced_nonNull_native();
  v1545 = *v225;
  *v225 = 0x8000000000000000;
  sub_266ECD368(37, 0x435952544E554F43, 0xEE0049425F45444FLL, v227);
  v228 = *v225;
  *v225 = v1545;

  v223(v1759, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = *v230;
  v233 = swift_isUniquelyReferenced_nonNull_native();
  v1546 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(38, 0x435952544E554F43, 0xEE0056435F45444FLL, v233);
  v234 = *v231;
  *v231 = v1546;

  v229(v1759, 0);
  v235 = sub_26738111C();
  v237 = v236;
  v238 = *v236;
  v239 = swift_isUniquelyReferenced_nonNull_native();
  v1547 = *v237;
  *v237 = 0x8000000000000000;
  sub_266ECD368(39, 0x435952544E554F43, 0xEE00484B5F45444FLL, v239);
  v240 = *v237;
  *v237 = v1547;

  v235(v1759, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = *v242;
  v245 = swift_isUniquelyReferenced_nonNull_native();
  v1548 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(40, 0x435952544E554F43, 0xEE004D435F45444FLL, v245);
  v246 = *v243;
  *v243 = v1548;

  v241(v1759, 0);
  v247 = sub_26738111C();
  v249 = v248;
  v250 = *v248;
  v251 = swift_isUniquelyReferenced_nonNull_native();
  v1549 = *v249;
  *v249 = 0x8000000000000000;
  sub_266ECD368(41, 0x435952544E554F43, 0xEE0041435F45444FLL, v251);
  v252 = *v249;
  *v249 = v1549;

  v247(v1759, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = *v254;
  v257 = swift_isUniquelyReferenced_nonNull_native();
  v1550 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(42, 0x435952544E554F43, 0xEE00594B5F45444FLL, v257);
  v258 = *v255;
  *v255 = v1550;

  v253(v1759, 0);
  v259 = sub_26738111C();
  v261 = v260;
  v262 = *v260;
  v263 = swift_isUniquelyReferenced_nonNull_native();
  v1551 = *v261;
  *v261 = 0x8000000000000000;
  sub_266ECD368(43, 0x435952544E554F43, 0xEE0046435F45444FLL, v263);
  v264 = *v261;
  *v261 = v1551;

  v259(v1759, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = *v266;
  v269 = swift_isUniquelyReferenced_nonNull_native();
  v1552 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(44, 0x435952544E554F43, 0xEE0044545F45444FLL, v269);
  v270 = *v267;
  *v267 = v1552;

  v265(v1759, 0);
  v271 = sub_26738111C();
  v273 = v272;
  v274 = *v272;
  v275 = swift_isUniquelyReferenced_nonNull_native();
  v1553 = *v273;
  *v273 = 0x8000000000000000;
  sub_266ECD368(45, 0x435952544E554F43, 0xEE004C435F45444FLL, v275);
  v276 = *v273;
  *v273 = v1553;

  v271(v1759, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = *v278;
  v281 = swift_isUniquelyReferenced_nonNull_native();
  v1554 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(46, 0x435952544E554F43, 0xEE004E435F45444FLL, v281);
  v282 = *v279;
  *v279 = v1554;

  v277(v1759, 0);
  v283 = sub_26738111C();
  v285 = v284;
  v286 = *v284;
  v287 = swift_isUniquelyReferenced_nonNull_native();
  v1555 = *v285;
  *v285 = 0x8000000000000000;
  sub_266ECD368(47, 0x435952544E554F43, 0xEE0058435F45444FLL, v287);
  v288 = *v285;
  *v285 = v1555;

  v283(v1759, 0);
  v289 = sub_26738111C();
  v291 = v290;
  v292 = *v290;
  v293 = swift_isUniquelyReferenced_nonNull_native();
  v1556 = *v291;
  *v291 = 0x8000000000000000;
  sub_266ECD368(48, 0x435952544E554F43, 0xEE0043435F45444FLL, v293);
  v294 = *v291;
  *v291 = v1556;

  v289(v1759, 0);
  v295 = sub_26738111C();
  v297 = v296;
  v298 = *v296;
  v299 = swift_isUniquelyReferenced_nonNull_native();
  v1557 = *v297;
  *v297 = 0x8000000000000000;
  sub_266ECD368(49, 0x435952544E554F43, 0xEE004F435F45444FLL, v299);
  v300 = *v297;
  *v297 = v1557;

  v295(v1759, 0);
  v301 = sub_26738111C();
  v303 = v302;
  v304 = *v302;
  v305 = swift_isUniquelyReferenced_nonNull_native();
  v1558 = *v303;
  *v303 = 0x8000000000000000;
  sub_266ECD368(50, 0x435952544E554F43, 0xEE004D4B5F45444FLL, v305);
  v306 = *v303;
  *v303 = v1558;

  v301(v1759, 0);
  v307 = sub_26738111C();
  v309 = v308;
  v310 = *v308;
  v311 = swift_isUniquelyReferenced_nonNull_native();
  v1559 = *v309;
  *v309 = 0x8000000000000000;
  sub_266ECD368(51, 0x435952544E554F43, 0xEE0044435F45444FLL, v311);
  v312 = *v309;
  *v309 = v1559;

  v307(v1759, 0);
  v313 = sub_26738111C();
  v315 = v314;
  v316 = *v314;
  v317 = swift_isUniquelyReferenced_nonNull_native();
  v1560 = *v315;
  *v315 = 0x8000000000000000;
  sub_266ECD368(52, 0x435952544E554F43, 0xEE0047435F45444FLL, v317);
  v318 = *v315;
  *v315 = v1560;

  v313(v1759, 0);
  v319 = sub_26738111C();
  v321 = v320;
  v322 = *v320;
  v323 = swift_isUniquelyReferenced_nonNull_native();
  v1561 = *v321;
  *v321 = 0x8000000000000000;
  sub_266ECD368(53, 0x435952544E554F43, 0xEE004B435F45444FLL, v323);
  v324 = *v321;
  *v321 = v1561;

  v319(v1759, 0);
  v325 = sub_26738111C();
  v327 = v326;
  v328 = *v326;
  v329 = swift_isUniquelyReferenced_nonNull_native();
  v1562 = *v327;
  *v327 = 0x8000000000000000;
  sub_266ECD368(54, 0x435952544E554F43, 0xEE0052435F45444FLL, v329);
  v330 = *v327;
  *v327 = v1562;

  v325(v1759, 0);
  v331 = sub_26738111C();
  v333 = v332;
  v334 = *v332;
  v335 = swift_isUniquelyReferenced_nonNull_native();
  v1563 = *v333;
  *v333 = 0x8000000000000000;
  sub_266ECD368(55, 0x435952544E554F43, 0xEE0049435F45444FLL, v335);
  v336 = *v333;
  *v333 = v1563;

  v331(v1759, 0);
  v337 = sub_26738111C();
  v339 = v338;
  v340 = *v338;
  v341 = swift_isUniquelyReferenced_nonNull_native();
  v1564 = *v339;
  *v339 = 0x8000000000000000;
  sub_266ECD368(56, 0x435952544E554F43, 0xEE0052485F45444FLL, v341);
  v342 = *v339;
  *v339 = v1564;

  v337(v1759, 0);
  v343 = sub_26738111C();
  v345 = v344;
  v346 = *v344;
  v347 = swift_isUniquelyReferenced_nonNull_native();
  v1565 = *v345;
  *v345 = 0x8000000000000000;
  sub_266ECD368(57, 0x435952544E554F43, 0xEE0055435F45444FLL, v347);
  v348 = *v345;
  *v345 = v1565;

  v343(v1759, 0);
  v349 = sub_26738111C();
  v351 = v350;
  v352 = *v350;
  v353 = swift_isUniquelyReferenced_nonNull_native();
  v1566 = *v351;
  *v351 = 0x8000000000000000;
  sub_266ECD368(58, 0x435952544E554F43, 0xEE0057435F45444FLL, v353);
  v354 = *v351;
  *v351 = v1566;

  v349(v1759, 0);
  v355 = sub_26738111C();
  v357 = v356;
  v358 = *v356;
  v359 = swift_isUniquelyReferenced_nonNull_native();
  v1567 = *v357;
  *v357 = 0x8000000000000000;
  sub_266ECD368(59, 0x435952544E554F43, 0xEE0059435F45444FLL, v359);
  v360 = *v357;
  *v357 = v1567;

  v355(v1759, 0);
  v361 = sub_26738111C();
  v363 = v362;
  v364 = *v362;
  v365 = swift_isUniquelyReferenced_nonNull_native();
  v1568 = *v363;
  *v363 = 0x8000000000000000;
  sub_266ECD368(60, 0x435952544E554F43, 0xEE005A435F45444FLL, v365);
  v366 = *v363;
  *v363 = v1568;

  v361(v1759, 0);
  v367 = sub_26738111C();
  v369 = v368;
  v370 = *v368;
  v371 = swift_isUniquelyReferenced_nonNull_native();
  v1569 = *v369;
  *v369 = 0x8000000000000000;
  sub_266ECD368(61, 0x435952544E554F43, 0xEE004B445F45444FLL, v371);
  v372 = *v369;
  *v369 = v1569;

  v367(v1759, 0);
  v373 = sub_26738111C();
  v375 = v374;
  v376 = *v374;
  v377 = swift_isUniquelyReferenced_nonNull_native();
  v1570 = *v375;
  *v375 = 0x8000000000000000;
  sub_266ECD368(62, 0x435952544E554F43, 0xEE004A445F45444FLL, v377);
  v378 = *v375;
  *v375 = v1570;

  v373(v1759, 0);
  v379 = sub_26738111C();
  v381 = v380;
  v382 = *v380;
  v383 = swift_isUniquelyReferenced_nonNull_native();
  v1571 = *v381;
  *v381 = 0x8000000000000000;
  sub_266ECD368(63, 0x435952544E554F43, 0xEE004D445F45444FLL, v383);
  v384 = *v381;
  *v381 = v1571;

  v379(v1759, 0);
  v385 = sub_26738111C();
  v387 = v386;
  v388 = *v386;
  v389 = swift_isUniquelyReferenced_nonNull_native();
  v1572 = *v387;
  *v387 = 0x8000000000000000;
  sub_266ECD368(64, 0x435952544E554F43, 0xEE004F445F45444FLL, v389);
  v390 = *v387;
  *v387 = v1572;

  v385(v1759, 0);
  v391 = sub_26738111C();
  v393 = v392;
  v394 = *v392;
  v395 = swift_isUniquelyReferenced_nonNull_native();
  v1573 = *v393;
  *v393 = 0x8000000000000000;
  sub_266ECD368(65, 0x435952544E554F43, 0xEE0047455F45444FLL, v395);
  v396 = *v393;
  *v393 = v1573;

  v391(v1759, 0);
  v397 = sub_26738111C();
  v399 = v398;
  v400 = *v398;
  v401 = swift_isUniquelyReferenced_nonNull_native();
  v1574 = *v399;
  *v399 = 0x8000000000000000;
  sub_266ECD368(66, 0x435952544E554F43, 0xEE0056535F45444FLL, v401);
  v402 = *v399;
  *v399 = v1574;

  v397(v1759, 0);
  v403 = sub_26738111C();
  v405 = v404;
  v406 = *v404;
  v407 = swift_isUniquelyReferenced_nonNull_native();
  v1575 = *v405;
  *v405 = 0x8000000000000000;
  sub_266ECD368(67, 0x435952544E554F43, 0xEE0052455F45444FLL, v407);
  v408 = *v405;
  *v405 = v1575;

  v403(v1759, 0);
  v409 = sub_26738111C();
  v411 = v410;
  v412 = *v410;
  v413 = swift_isUniquelyReferenced_nonNull_native();
  v1576 = *v411;
  *v411 = 0x8000000000000000;
  sub_266ECD368(68, 0x435952544E554F43, 0xEE0045455F45444FLL, v413);
  v414 = *v411;
  *v411 = v1576;

  v409(v1759, 0);
  v415 = sub_26738111C();
  v417 = v416;
  v418 = *v416;
  v419 = swift_isUniquelyReferenced_nonNull_native();
  v1577 = *v417;
  *v417 = 0x8000000000000000;
  sub_266ECD368(69, 0x435952544E554F43, 0xEE005A535F45444FLL, v419);
  v420 = *v417;
  *v417 = v1577;

  v415(v1759, 0);
  v421 = sub_26738111C();
  v423 = v422;
  v424 = *v422;
  v425 = swift_isUniquelyReferenced_nonNull_native();
  v1578 = *v423;
  *v423 = 0x8000000000000000;
  sub_266ECD368(70, 0x435952544E554F43, 0xEE0054455F45444FLL, v425);
  v426 = *v423;
  *v423 = v1578;

  v421(v1759, 0);
  v427 = sub_26738111C();
  v429 = v428;
  v430 = *v428;
  v431 = swift_isUniquelyReferenced_nonNull_native();
  v1579 = *v429;
  *v429 = 0x8000000000000000;
  sub_266ECD368(71, 0x435952544E554F43, 0xEE004B465F45444FLL, v431);
  v432 = *v429;
  *v429 = v1579;

  v427(v1759, 0);
  v433 = sub_26738111C();
  v435 = v434;
  v436 = *v434;
  v437 = swift_isUniquelyReferenced_nonNull_native();
  v1580 = *v435;
  *v435 = 0x8000000000000000;
  sub_266ECD368(72, 0x435952544E554F43, 0xEE004F465F45444FLL, v437);
  v438 = *v435;
  *v435 = v1580;

  v433(v1759, 0);
  v439 = sub_26738111C();
  v441 = v440;
  v442 = *v440;
  v443 = swift_isUniquelyReferenced_nonNull_native();
  v1581 = *v441;
  *v441 = 0x8000000000000000;
  sub_266ECD368(73, 0x435952544E554F43, 0xEE004A465F45444FLL, v443);
  v444 = *v441;
  *v441 = v1581;

  v439(v1759, 0);
  v445 = sub_26738111C();
  v447 = v446;
  v448 = *v446;
  v449 = swift_isUniquelyReferenced_nonNull_native();
  v1582 = *v447;
  *v447 = 0x8000000000000000;
  sub_266ECD368(74, 0x435952544E554F43, 0xEE0049465F45444FLL, v449);
  v450 = *v447;
  *v447 = v1582;

  v445(v1759, 0);
  v451 = sub_26738111C();
  v453 = v452;
  v454 = *v452;
  v455 = swift_isUniquelyReferenced_nonNull_native();
  v1583 = *v453;
  *v453 = 0x8000000000000000;
  sub_266ECD368(75, 0x435952544E554F43, 0xEE0052465F45444FLL, v455);
  v456 = *v453;
  *v453 = v1583;

  v451(v1759, 0);
  v457 = sub_26738111C();
  v459 = v458;
  v460 = *v458;
  v461 = swift_isUniquelyReferenced_nonNull_native();
  v1584 = *v459;
  *v459 = 0x8000000000000000;
  sub_266ECD368(76, 0x435952544E554F43, 0xEE0046475F45444FLL, v461);
  v462 = *v459;
  *v459 = v1584;

  v457(v1759, 0);
  v463 = sub_26738111C();
  v465 = v464;
  v466 = *v464;
  v467 = swift_isUniquelyReferenced_nonNull_native();
  v1585 = *v465;
  *v465 = 0x8000000000000000;
  sub_266ECD368(77, 0x435952544E554F43, 0xEE0046505F45444FLL, v467);
  v468 = *v465;
  *v465 = v1585;

  v463(v1759, 0);
  v469 = sub_26738111C();
  v471 = v470;
  v472 = *v470;
  v473 = swift_isUniquelyReferenced_nonNull_native();
  v1586 = *v471;
  *v471 = 0x8000000000000000;
  sub_266ECD368(78, 0x435952544E554F43, 0xEE0046545F45444FLL, v473);
  v474 = *v471;
  *v471 = v1586;

  v469(v1759, 0);
  v475 = sub_26738111C();
  v477 = v476;
  v478 = *v476;
  v479 = swift_isUniquelyReferenced_nonNull_native();
  v1587 = *v477;
  *v477 = 0x8000000000000000;
  sub_266ECD368(79, 0x435952544E554F43, 0xEE0041475F45444FLL, v479);
  v480 = *v477;
  *v477 = v1587;

  v475(v1759, 0);
  v481 = sub_26738111C();
  v483 = v482;
  v484 = *v482;
  v485 = swift_isUniquelyReferenced_nonNull_native();
  v1588 = *v483;
  *v483 = 0x8000000000000000;
  sub_266ECD368(80, 0x435952544E554F43, 0xEE004D475F45444FLL, v485);
  v486 = *v483;
  *v483 = v1588;

  v481(v1759, 0);
  v487 = sub_26738111C();
  v489 = v488;
  v490 = *v488;
  v491 = swift_isUniquelyReferenced_nonNull_native();
  v1589 = *v489;
  *v489 = 0x8000000000000000;
  sub_266ECD368(81, 0x435952544E554F43, 0xEE0045475F45444FLL, v491);
  v492 = *v489;
  *v489 = v1589;

  v487(v1759, 0);
  v493 = sub_26738111C();
  v495 = v494;
  v496 = *v494;
  v497 = swift_isUniquelyReferenced_nonNull_native();
  v1590 = *v495;
  *v495 = 0x8000000000000000;
  sub_266ECD368(82, 0x435952544E554F43, 0xEE0045445F45444FLL, v497);
  v498 = *v495;
  *v495 = v1590;

  v493(v1759, 0);
  v499 = sub_26738111C();
  v501 = v500;
  v502 = *v500;
  v503 = swift_isUniquelyReferenced_nonNull_native();
  v1591 = *v501;
  *v501 = 0x8000000000000000;
  sub_266ECD368(83, 0x435952544E554F43, 0xEE0048475F45444FLL, v503);
  v504 = *v501;
  *v501 = v1591;

  v499(v1759, 0);
  v505 = sub_26738111C();
  v507 = v506;
  v508 = *v506;
  v509 = swift_isUniquelyReferenced_nonNull_native();
  v1592 = *v507;
  *v507 = 0x8000000000000000;
  sub_266ECD368(84, 0x435952544E554F43, 0xEE0049475F45444FLL, v509);
  v510 = *v507;
  *v507 = v1592;

  v505(v1759, 0);
  v511 = sub_26738111C();
  v513 = v512;
  v514 = *v512;
  v515 = swift_isUniquelyReferenced_nonNull_native();
  v1593 = *v513;
  *v513 = 0x8000000000000000;
  sub_266ECD368(85, 0x435952544E554F43, 0xEE004C475F45444FLL, v515);
  v516 = *v513;
  *v513 = v1593;

  v511(v1759, 0);
  v517 = sub_26738111C();
  v519 = v518;
  v520 = *v518;
  v521 = swift_isUniquelyReferenced_nonNull_native();
  v1594 = *v519;
  *v519 = 0x8000000000000000;
  sub_266ECD368(86, 0x435952544E554F43, 0xEE0044475F45444FLL, v521);
  v522 = *v519;
  *v519 = v1594;

  v517(v1759, 0);
  v523 = sub_26738111C();
  v525 = v524;
  v526 = *v524;
  v527 = swift_isUniquelyReferenced_nonNull_native();
  v1595 = *v525;
  *v525 = 0x8000000000000000;
  sub_266ECD368(87, 0x435952544E554F43, 0xEE0050475F45444FLL, v527);
  v528 = *v525;
  *v525 = v1595;

  v523(v1759, 0);
  v529 = sub_26738111C();
  v531 = v530;
  v532 = *v530;
  v533 = swift_isUniquelyReferenced_nonNull_native();
  v1596 = *v531;
  *v531 = 0x8000000000000000;
  sub_266ECD368(88, 0x435952544E554F43, 0xEE0055475F45444FLL, v533);
  v534 = *v531;
  *v531 = v1596;

  v529(v1759, 0);
  v535 = sub_26738111C();
  v537 = v536;
  v538 = *v536;
  v539 = swift_isUniquelyReferenced_nonNull_native();
  v1597 = *v537;
  *v537 = 0x8000000000000000;
  sub_266ECD368(89, 0x435952544E554F43, 0xEE0054475F45444FLL, v539);
  v540 = *v537;
  *v537 = v1597;

  v535(v1759, 0);
  v541 = sub_26738111C();
  v543 = v542;
  v544 = *v542;
  v545 = swift_isUniquelyReferenced_nonNull_native();
  v1598 = *v543;
  *v543 = 0x8000000000000000;
  sub_266ECD368(90, 0x435952544E554F43, 0xEE0047475F45444FLL, v545);
  v546 = *v543;
  *v543 = v1598;

  v541(v1759, 0);
  v547 = sub_26738111C();
  v549 = v548;
  v550 = *v548;
  v551 = swift_isUniquelyReferenced_nonNull_native();
  v1599 = *v549;
  *v549 = 0x8000000000000000;
  sub_266ECD368(91, 0x435952544E554F43, 0xEE004E475F45444FLL, v551);
  v552 = *v549;
  *v549 = v1599;

  v547(v1759, 0);
  v553 = sub_26738111C();
  v555 = v554;
  v556 = *v554;
  v557 = swift_isUniquelyReferenced_nonNull_native();
  v1600 = *v555;
  *v555 = 0x8000000000000000;
  sub_266ECD368(92, 0x435952544E554F43, 0xEE0057475F45444FLL, v557);
  v558 = *v555;
  *v555 = v1600;

  v553(v1759, 0);
  v559 = sub_26738111C();
  v561 = v560;
  v562 = *v560;
  v563 = swift_isUniquelyReferenced_nonNull_native();
  v1601 = *v561;
  *v561 = 0x8000000000000000;
  sub_266ECD368(93, 0x435952544E554F43, 0xEE0059475F45444FLL, v563);
  v564 = *v561;
  *v561 = v1601;

  v559(v1759, 0);
  v565 = sub_26738111C();
  v567 = v566;
  v568 = *v566;
  v569 = swift_isUniquelyReferenced_nonNull_native();
  v1602 = *v567;
  *v567 = 0x8000000000000000;
  sub_266ECD368(94, 0x435952544E554F43, 0xEE0054485F45444FLL, v569);
  v570 = *v567;
  *v567 = v1602;

  v565(v1759, 0);
  v571 = sub_26738111C();
  v573 = v572;
  v574 = *v572;
  v575 = swift_isUniquelyReferenced_nonNull_native();
  v1603 = *v573;
  *v573 = 0x8000000000000000;
  sub_266ECD368(95, 0x435952544E554F43, 0xEE0041565F45444FLL, v575);
  v576 = *v573;
  *v573 = v1603;

  v571(v1759, 0);
  v577 = sub_26738111C();
  v579 = v578;
  v580 = *v578;
  v581 = swift_isUniquelyReferenced_nonNull_native();
  v1604 = *v579;
  *v579 = 0x8000000000000000;
  sub_266ECD368(96, 0x435952544E554F43, 0xEE004E485F45444FLL, v581);
  v582 = *v579;
  *v579 = v1604;

  v577(v1759, 0);
  v583 = sub_26738111C();
  v585 = v584;
  v586 = *v584;
  v587 = swift_isUniquelyReferenced_nonNull_native();
  v1605 = *v585;
  *v585 = 0x8000000000000000;
  sub_266ECD368(97, 0x435952544E554F43, 0xEE004B485F45444FLL, v587);
  v588 = *v585;
  *v585 = v1605;

  v583(v1759, 0);
  v589 = sub_26738111C();
  v591 = v590;
  v592 = *v590;
  v593 = swift_isUniquelyReferenced_nonNull_native();
  v1606 = *v591;
  *v591 = 0x8000000000000000;
  sub_266ECD368(98, 0x435952544E554F43, 0xEE0055485F45444FLL, v593);
  v594 = *v591;
  *v591 = v1606;

  v589(v1759, 0);
  v595 = sub_26738111C();
  v597 = v596;
  v598 = *v596;
  v599 = swift_isUniquelyReferenced_nonNull_native();
  v1607 = *v597;
  *v597 = 0x8000000000000000;
  sub_266ECD368(99, 0x435952544E554F43, 0xEE0053495F45444FLL, v599);
  v600 = *v597;
  *v597 = v1607;

  v595(v1759, 0);
  v601 = sub_26738111C();
  v603 = v602;
  v604 = *v602;
  v605 = swift_isUniquelyReferenced_nonNull_native();
  v1608 = *v603;
  *v603 = 0x8000000000000000;
  sub_266ECD368(100, 0x435952544E554F43, 0xEE004E495F45444FLL, v605);
  v606 = *v603;
  *v603 = v1608;

  v601(v1759, 0);
  v607 = sub_26738111C();
  v609 = v608;
  v610 = *v608;
  v611 = swift_isUniquelyReferenced_nonNull_native();
  v1609 = *v609;
  *v609 = 0x8000000000000000;
  sub_266ECD368(101, 0x435952544E554F43, 0xEE0044495F45444FLL, v611);
  v612 = *v609;
  *v609 = v1609;

  v607(v1759, 0);
  v613 = sub_26738111C();
  v615 = v614;
  v616 = *v614;
  v617 = swift_isUniquelyReferenced_nonNull_native();
  v1610 = *v615;
  *v615 = 0x8000000000000000;
  sub_266ECD368(102, 0x435952544E554F43, 0xEE0052495F45444FLL, v617);
  v618 = *v615;
  *v615 = v1610;

  v613(v1759, 0);
  v619 = sub_26738111C();
  v621 = v620;
  v622 = *v620;
  v623 = swift_isUniquelyReferenced_nonNull_native();
  v1611 = *v621;
  *v621 = 0x8000000000000000;
  sub_266ECD368(103, 0x435952544E554F43, 0xEE0051495F45444FLL, v623);
  v624 = *v621;
  *v621 = v1611;

  v619(v1759, 0);
  v625 = sub_26738111C();
  v627 = v626;
  v628 = *v626;
  v629 = swift_isUniquelyReferenced_nonNull_native();
  v1612 = *v627;
  *v627 = 0x8000000000000000;
  sub_266ECD368(104, 0x435952544E554F43, 0xEE0045495F45444FLL, v629);
  v630 = *v627;
  *v627 = v1612;

  v625(v1759, 0);
  v631 = sub_26738111C();
  v633 = v632;
  v634 = *v632;
  v635 = swift_isUniquelyReferenced_nonNull_native();
  v1613 = *v633;
  *v633 = 0x8000000000000000;
  sub_266ECD368(105, 0x435952544E554F43, 0xEE004D495F45444FLL, v635);
  v636 = *v633;
  *v633 = v1613;

  v631(v1759, 0);
  v637 = sub_26738111C();
  v639 = v638;
  v640 = *v638;
  v641 = swift_isUniquelyReferenced_nonNull_native();
  v1614 = *v639;
  *v639 = 0x8000000000000000;
  sub_266ECD368(106, 0x435952544E554F43, 0xEE004C495F45444FLL, v641);
  v642 = *v639;
  *v639 = v1614;

  v637(v1759, 0);
  v643 = sub_26738111C();
  v645 = v644;
  v646 = *v644;
  v647 = swift_isUniquelyReferenced_nonNull_native();
  v1615 = *v645;
  *v645 = 0x8000000000000000;
  sub_266ECD368(107, 0x435952544E554F43, 0xEE0054495F45444FLL, v647);
  v648 = *v645;
  *v645 = v1615;

  v643(v1759, 0);
  v649 = sub_26738111C();
  v651 = v650;
  v652 = *v650;
  v653 = swift_isUniquelyReferenced_nonNull_native();
  v1616 = *v651;
  *v651 = 0x8000000000000000;
  sub_266ECD368(108, 0x435952544E554F43, 0xEE00454A5F45444FLL, v653);
  v654 = *v651;
  *v651 = v1616;

  v649(v1759, 0);
  v655 = sub_26738111C();
  v657 = v656;
  v658 = *v656;
  v659 = swift_isUniquelyReferenced_nonNull_native();
  v1617 = *v657;
  *v657 = 0x8000000000000000;
  sub_266ECD368(109, 0x435952544E554F43, 0xEE004F4A5F45444FLL, v659);
  v660 = *v657;
  *v657 = v1617;

  v655(v1759, 0);
  v661 = sub_26738111C();
  v663 = v662;
  v664 = *v662;
  v665 = swift_isUniquelyReferenced_nonNull_native();
  v1618 = *v663;
  *v663 = 0x8000000000000000;
  sub_266ECD368(110, 0x435952544E554F43, 0xEE005A4B5F45444FLL, v665);
  v666 = *v663;
  *v663 = v1618;

  v661(v1759, 0);
  v667 = sub_26738111C();
  v669 = v668;
  v670 = *v668;
  v671 = swift_isUniquelyReferenced_nonNull_native();
  v1619 = *v669;
  *v669 = 0x8000000000000000;
  sub_266ECD368(111, 0x435952544E554F43, 0xEE00454B5F45444FLL, v671);
  v672 = *v669;
  *v669 = v1619;

  v667(v1759, 0);
  v673 = sub_26738111C();
  v675 = v674;
  v676 = *v674;
  v677 = swift_isUniquelyReferenced_nonNull_native();
  v1620 = *v675;
  *v675 = 0x8000000000000000;
  sub_266ECD368(112, 0x435952544E554F43, 0xEE00494B5F45444FLL, v677);
  v678 = *v675;
  *v675 = v1620;

  v673(v1759, 0);
  v679 = sub_26738111C();
  v681 = v680;
  v682 = *v680;
  v683 = swift_isUniquelyReferenced_nonNull_native();
  v1621 = *v681;
  *v681 = 0x8000000000000000;
  sub_266ECD368(113, 0x435952544E554F43, 0xEE00504B5F45444FLL, v683);
  v684 = *v681;
  *v681 = v1621;

  v679(v1759, 0);
  v685 = sub_26738111C();
  v687 = v686;
  v688 = *v686;
  v689 = swift_isUniquelyReferenced_nonNull_native();
  v1622 = *v687;
  *v687 = 0x8000000000000000;
  sub_266ECD368(114, 0x435952544E554F43, 0xEE00524B5F45444FLL, v689);
  v690 = *v687;
  *v687 = v1622;

  v685(v1759, 0);
  v691 = sub_26738111C();
  v693 = v692;
  v694 = *v692;
  v695 = swift_isUniquelyReferenced_nonNull_native();
  v1623 = *v693;
  *v693 = 0x8000000000000000;
  sub_266ECD368(115, 0x435952544E554F43, 0xEE00574B5F45444FLL, v695);
  v696 = *v693;
  *v693 = v1623;

  v691(v1759, 0);
  v697 = sub_26738111C();
  v699 = v698;
  v700 = *v698;
  v701 = swift_isUniquelyReferenced_nonNull_native();
  v1624 = *v699;
  *v699 = 0x8000000000000000;
  sub_266ECD368(116, 0x435952544E554F43, 0xEE00474B5F45444FLL, v701);
  v702 = *v699;
  *v699 = v1624;

  v697(v1759, 0);
  v703 = sub_26738111C();
  v705 = v704;
  v706 = *v704;
  v707 = swift_isUniquelyReferenced_nonNull_native();
  v1625 = *v705;
  *v705 = 0x8000000000000000;
  sub_266ECD368(117, 0x435952544E554F43, 0xEE00414C5F45444FLL, v707);
  v708 = *v705;
  *v705 = v1625;

  v703(v1759, 0);
  v709 = sub_26738111C();
  v711 = v710;
  v712 = *v710;
  v713 = swift_isUniquelyReferenced_nonNull_native();
  v1626 = *v711;
  *v711 = 0x8000000000000000;
  sub_266ECD368(118, 0x435952544E554F43, 0xEE00564C5F45444FLL, v713);
  v714 = *v711;
  *v711 = v1626;

  v709(v1759, 0);
  v715 = sub_26738111C();
  v717 = v716;
  v718 = *v716;
  v719 = swift_isUniquelyReferenced_nonNull_native();
  v1627 = *v717;
  *v717 = 0x8000000000000000;
  sub_266ECD368(119, 0x435952544E554F43, 0xEE00424C5F45444FLL, v719);
  v720 = *v717;
  *v717 = v1627;

  v715(v1759, 0);
  v721 = sub_26738111C();
  v723 = v722;
  v724 = *v722;
  v725 = swift_isUniquelyReferenced_nonNull_native();
  v1628 = *v723;
  *v723 = 0x8000000000000000;
  sub_266ECD368(120, 0x435952544E554F43, 0xEE00534C5F45444FLL, v725);
  v726 = *v723;
  *v723 = v1628;

  v721(v1759, 0);
  v727 = sub_26738111C();
  v729 = v728;
  v730 = *v728;
  v731 = swift_isUniquelyReferenced_nonNull_native();
  v1629 = *v729;
  *v729 = 0x8000000000000000;
  sub_266ECD368(121, 0x435952544E554F43, 0xEE00524C5F45444FLL, v731);
  v732 = *v729;
  *v729 = v1629;

  v727(v1759, 0);
  v733 = sub_26738111C();
  v735 = v734;
  v736 = *v734;
  v737 = swift_isUniquelyReferenced_nonNull_native();
  v1630 = *v735;
  *v735 = 0x8000000000000000;
  sub_266ECD368(122, 0x435952544E554F43, 0xEE00594C5F45444FLL, v737);
  v738 = *v735;
  *v735 = v1630;

  v733(v1759, 0);
  v739 = sub_26738111C();
  v741 = v740;
  v742 = *v740;
  v743 = swift_isUniquelyReferenced_nonNull_native();
  v1631 = *v741;
  *v741 = 0x8000000000000000;
  sub_266ECD368(123, 0x435952544E554F43, 0xEE00494C5F45444FLL, v743);
  v744 = *v741;
  *v741 = v1631;

  v739(v1759, 0);
  v745 = sub_26738111C();
  v747 = v746;
  v748 = *v746;
  v749 = swift_isUniquelyReferenced_nonNull_native();
  v1632 = *v747;
  *v747 = 0x8000000000000000;
  sub_266ECD368(124, 0x435952544E554F43, 0xEE00544C5F45444FLL, v749);
  v750 = *v747;
  *v747 = v1632;

  v745(v1759, 0);
  v751 = sub_26738111C();
  v753 = v752;
  v754 = *v752;
  v755 = swift_isUniquelyReferenced_nonNull_native();
  v1633 = *v753;
  *v753 = 0x8000000000000000;
  sub_266ECD368(125, 0x435952544E554F43, 0xEE00554C5F45444FLL, v755);
  v756 = *v753;
  *v753 = v1633;

  v751(v1759, 0);
  v757 = sub_26738111C();
  v759 = v758;
  v760 = *v758;
  v761 = swift_isUniquelyReferenced_nonNull_native();
  v1634 = *v759;
  *v759 = 0x8000000000000000;
  sub_266ECD368(126, 0x435952544E554F43, 0xEE004F4D5F45444FLL, v761);
  v762 = *v759;
  *v759 = v1634;

  v757(v1759, 0);
  v763 = sub_26738111C();
  v765 = v764;
  v766 = *v764;
  v767 = swift_isUniquelyReferenced_nonNull_native();
  v1635 = *v765;
  *v765 = 0x8000000000000000;
  sub_266ECD368(127, 0x435952544E554F43, 0xEE004B4D5F45444FLL, v767);
  v768 = *v765;
  *v765 = v1635;

  v763(v1759, 0);
  v769 = sub_26738111C();
  v771 = v770;
  v772 = *v770;
  v773 = swift_isUniquelyReferenced_nonNull_native();
  v1636 = *v771;
  *v771 = 0x8000000000000000;
  sub_266ECD368(128, 0x435952544E554F43, 0xEE00474D5F45444FLL, v773);
  v774 = *v771;
  *v771 = v1636;

  v769(v1759, 0);
  v775 = sub_26738111C();
  v777 = v776;
  v778 = *v776;
  v779 = swift_isUniquelyReferenced_nonNull_native();
  v1637 = *v777;
  *v777 = 0x8000000000000000;
  sub_266ECD368(129, 0x435952544E554F43, 0xEE00574D5F45444FLL, v779);
  v780 = *v777;
  *v777 = v1637;

  v775(v1759, 0);
  v781 = sub_26738111C();
  v783 = v782;
  v784 = *v782;
  v785 = swift_isUniquelyReferenced_nonNull_native();
  v1638 = *v783;
  *v783 = 0x8000000000000000;
  sub_266ECD368(130, 0x435952544E554F43, 0xEE00594D5F45444FLL, v785);
  v786 = *v783;
  *v783 = v1638;

  v781(v1759, 0);
  v787 = sub_26738111C();
  v789 = v788;
  v790 = *v788;
  v791 = swift_isUniquelyReferenced_nonNull_native();
  v1639 = *v789;
  *v789 = 0x8000000000000000;
  sub_266ECD368(131, 0x435952544E554F43, 0xEE00564D5F45444FLL, v791);
  v792 = *v789;
  *v789 = v1639;

  v787(v1759, 0);
  v793 = sub_26738111C();
  v795 = v794;
  v796 = *v794;
  v797 = swift_isUniquelyReferenced_nonNull_native();
  v1640 = *v795;
  *v795 = 0x8000000000000000;
  sub_266ECD368(132, 0x435952544E554F43, 0xEE004C4D5F45444FLL, v797);
  v798 = *v795;
  *v795 = v1640;

  v793(v1759, 0);
  v799 = sub_26738111C();
  v801 = v800;
  v802 = *v800;
  v803 = swift_isUniquelyReferenced_nonNull_native();
  v1641 = *v801;
  *v801 = 0x8000000000000000;
  sub_266ECD368(133, 0x435952544E554F43, 0xEE00544D5F45444FLL, v803);
  v804 = *v801;
  *v801 = v1641;

  v799(v1759, 0);
  v805 = sub_26738111C();
  v807 = v806;
  v808 = *v806;
  v809 = swift_isUniquelyReferenced_nonNull_native();
  v1642 = *v807;
  *v807 = 0x8000000000000000;
  sub_266ECD368(134, 0x435952544E554F43, 0xEE00484D5F45444FLL, v809);
  v810 = *v807;
  *v807 = v1642;

  v805(v1759, 0);
  v811 = sub_26738111C();
  v813 = v812;
  v814 = *v812;
  v815 = swift_isUniquelyReferenced_nonNull_native();
  v1643 = *v813;
  *v813 = 0x8000000000000000;
  sub_266ECD368(135, 0x435952544E554F43, 0xEE00514D5F45444FLL, v815);
  v816 = *v813;
  *v813 = v1643;

  v811(v1759, 0);
  v817 = sub_26738111C();
  v819 = v818;
  v820 = *v818;
  v821 = swift_isUniquelyReferenced_nonNull_native();
  v1644 = *v819;
  *v819 = 0x8000000000000000;
  sub_266ECD368(136, 0x435952544E554F43, 0xEE00524D5F45444FLL, v821);
  v822 = *v819;
  *v819 = v1644;

  v817(v1759, 0);
  v823 = sub_26738111C();
  v825 = v824;
  v826 = *v824;
  v827 = swift_isUniquelyReferenced_nonNull_native();
  v1645 = *v825;
  *v825 = 0x8000000000000000;
  sub_266ECD368(137, 0x435952544E554F43, 0xEE00554D5F45444FLL, v827);
  v828 = *v825;
  *v825 = v1645;

  v823(v1759, 0);
  v829 = sub_26738111C();
  v831 = v830;
  v832 = *v830;
  v833 = swift_isUniquelyReferenced_nonNull_native();
  v1646 = *v831;
  *v831 = 0x8000000000000000;
  sub_266ECD368(138, 0x435952544E554F43, 0xEE0054595F45444FLL, v833);
  v834 = *v831;
  *v831 = v1646;

  v829(v1759, 0);
  v835 = sub_26738111C();
  v837 = v836;
  v838 = *v836;
  v839 = swift_isUniquelyReferenced_nonNull_native();
  v1647 = *v837;
  *v837 = 0x8000000000000000;
  sub_266ECD368(139, 0x435952544E554F43, 0xEE00584D5F45444FLL, v839);
  v840 = *v837;
  *v837 = v1647;

  v835(v1759, 0);
  v841 = sub_26738111C();
  v843 = v842;
  v844 = *v842;
  v845 = swift_isUniquelyReferenced_nonNull_native();
  v1648 = *v843;
  *v843 = 0x8000000000000000;
  sub_266ECD368(140, 0x435952544E554F43, 0xEE004D465F45444FLL, v845);
  v846 = *v843;
  *v843 = v1648;

  v841(v1759, 0);
  v847 = sub_26738111C();
  v849 = v848;
  v850 = *v848;
  v851 = swift_isUniquelyReferenced_nonNull_native();
  v1649 = *v849;
  *v849 = 0x8000000000000000;
  sub_266ECD368(141, 0x435952544E554F43, 0xEE00444D5F45444FLL, v851);
  v852 = *v849;
  *v849 = v1649;

  v847(v1759, 0);
  v853 = sub_26738111C();
  v855 = v854;
  v856 = *v854;
  v857 = swift_isUniquelyReferenced_nonNull_native();
  v1650 = *v855;
  *v855 = 0x8000000000000000;
  sub_266ECD368(142, 0x435952544E554F43, 0xEE00434D5F45444FLL, v857);
  v858 = *v855;
  *v855 = v1650;

  v853(v1759, 0);
  v859 = sub_26738111C();
  v861 = v860;
  v862 = *v860;
  v863 = swift_isUniquelyReferenced_nonNull_native();
  v1651 = *v861;
  *v861 = 0x8000000000000000;
  sub_266ECD368(143, 0x435952544E554F43, 0xEE004E4D5F45444FLL, v863);
  v864 = *v861;
  *v861 = v1651;

  v859(v1759, 0);
  v865 = sub_26738111C();
  v867 = v866;
  v868 = *v866;
  v869 = swift_isUniquelyReferenced_nonNull_native();
  v1652 = *v867;
  *v867 = 0x8000000000000000;
  sub_266ECD368(144, 0x435952544E554F43, 0xEE00454D5F45444FLL, v869);
  v870 = *v867;
  *v867 = v1652;

  v865(v1759, 0);
  v871 = sub_26738111C();
  v873 = v872;
  v874 = *v872;
  v875 = swift_isUniquelyReferenced_nonNull_native();
  v1653 = *v873;
  *v873 = 0x8000000000000000;
  sub_266ECD368(145, 0x435952544E554F43, 0xEE00534D5F45444FLL, v875);
  v876 = *v873;
  *v873 = v1653;

  v871(v1759, 0);
  v877 = sub_26738111C();
  v879 = v878;
  v880 = *v878;
  v881 = swift_isUniquelyReferenced_nonNull_native();
  v1654 = *v879;
  *v879 = 0x8000000000000000;
  sub_266ECD368(146, 0x435952544E554F43, 0xEE00414D5F45444FLL, v881);
  v882 = *v879;
  *v879 = v1654;

  v877(v1759, 0);
  v883 = sub_26738111C();
  v885 = v884;
  v886 = *v884;
  v887 = swift_isUniquelyReferenced_nonNull_native();
  v1655 = *v885;
  *v885 = 0x8000000000000000;
  sub_266ECD368(147, 0x435952544E554F43, 0xEE005A4D5F45444FLL, v887);
  v888 = *v885;
  *v885 = v1655;

  v883(v1759, 0);
  v889 = sub_26738111C();
  v891 = v890;
  v892 = *v890;
  v893 = swift_isUniquelyReferenced_nonNull_native();
  v1656 = *v891;
  *v891 = 0x8000000000000000;
  sub_266ECD368(148, 0x435952544E554F43, 0xEE004D4D5F45444FLL, v893);
  v894 = *v891;
  *v891 = v1656;

  v889(v1759, 0);
  v895 = sub_26738111C();
  v897 = v896;
  v898 = *v896;
  v899 = swift_isUniquelyReferenced_nonNull_native();
  v1657 = *v897;
  *v897 = 0x8000000000000000;
  sub_266ECD368(149, 0x435952544E554F43, 0xEE00414E5F45444FLL, v899);
  v900 = *v897;
  *v897 = v1657;

  v895(v1759, 0);
  v901 = sub_26738111C();
  v903 = v902;
  v904 = *v902;
  v905 = swift_isUniquelyReferenced_nonNull_native();
  v1658 = *v903;
  *v903 = 0x8000000000000000;
  sub_266ECD368(150, 0x435952544E554F43, 0xEE00524E5F45444FLL, v905);
  v906 = *v903;
  *v903 = v1658;

  v901(v1759, 0);
  v907 = sub_26738111C();
  v909 = v908;
  v910 = *v908;
  v911 = swift_isUniquelyReferenced_nonNull_native();
  v1659 = *v909;
  *v909 = 0x8000000000000000;
  sub_266ECD368(151, 0x435952544E554F43, 0xEE00504E5F45444FLL, v911);
  v912 = *v909;
  *v909 = v1659;

  v907(v1759, 0);
  v913 = sub_26738111C();
  v915 = v914;
  v916 = *v914;
  v917 = swift_isUniquelyReferenced_nonNull_native();
  v1660 = *v915;
  *v915 = 0x8000000000000000;
  sub_266ECD368(152, 0x435952544E554F43, 0xEE004C4E5F45444FLL, v917);
  v918 = *v915;
  *v915 = v1660;

  v913(v1759, 0);
  v919 = sub_26738111C();
  v921 = v920;
  v922 = *v920;
  v923 = swift_isUniquelyReferenced_nonNull_native();
  v1661 = *v921;
  *v921 = 0x8000000000000000;
  sub_266ECD368(153, 0x435952544E554F43, 0xEE00434E5F45444FLL, v923);
  v924 = *v921;
  *v921 = v1661;

  v919(v1759, 0);
  v925 = sub_26738111C();
  v927 = v926;
  v928 = *v926;
  v929 = swift_isUniquelyReferenced_nonNull_native();
  v1662 = *v927;
  *v927 = 0x8000000000000000;
  sub_266ECD368(154, 0x435952544E554F43, 0xEE005A4E5F45444FLL, v929);
  v930 = *v927;
  *v927 = v1662;

  v925(v1759, 0);
  v931 = sub_26738111C();
  v933 = v932;
  v934 = *v932;
  v935 = swift_isUniquelyReferenced_nonNull_native();
  v1663 = *v933;
  *v933 = 0x8000000000000000;
  sub_266ECD368(155, 0x435952544E554F43, 0xEE00494E5F45444FLL, v935);
  v936 = *v933;
  *v933 = v1663;

  v931(v1759, 0);
  v937 = sub_26738111C();
  v939 = v938;
  v940 = *v938;
  v941 = swift_isUniquelyReferenced_nonNull_native();
  v1664 = *v939;
  *v939 = 0x8000000000000000;
  sub_266ECD368(156, 0x435952544E554F43, 0xEE00454E5F45444FLL, v941);
  v942 = *v939;
  *v939 = v1664;

  v937(v1759, 0);
  v943 = sub_26738111C();
  v945 = v944;
  v946 = *v944;
  v947 = swift_isUniquelyReferenced_nonNull_native();
  v1665 = *v945;
  *v945 = 0x8000000000000000;
  sub_266ECD368(157, 0x435952544E554F43, 0xEE00474E5F45444FLL, v947);
  v948 = *v945;
  *v945 = v1665;

  v943(v1759, 0);
  v949 = sub_26738111C();
  v951 = v950;
  v952 = *v950;
  v953 = swift_isUniquelyReferenced_nonNull_native();
  v1666 = *v951;
  *v951 = 0x8000000000000000;
  sub_266ECD368(158, 0x435952544E554F43, 0xEE00554E5F45444FLL, v953);
  v954 = *v951;
  *v951 = v1666;

  v949(v1759, 0);
  v955 = sub_26738111C();
  v957 = v956;
  v958 = *v956;
  v959 = swift_isUniquelyReferenced_nonNull_native();
  v1667 = *v957;
  *v957 = 0x8000000000000000;
  sub_266ECD368(159, 0x435952544E554F43, 0xEE00464E5F45444FLL, v959);
  v960 = *v957;
  *v957 = v1667;

  v955(v1759, 0);
  v961 = sub_26738111C();
  v963 = v962;
  v964 = *v962;
  v965 = swift_isUniquelyReferenced_nonNull_native();
  v1668 = *v963;
  *v963 = 0x8000000000000000;
  sub_266ECD368(160, 0x435952544E554F43, 0xEE004F4E5F45444FLL, v965);
  v966 = *v963;
  *v963 = v1668;

  v961(v1759, 0);
  v967 = sub_26738111C();
  v969 = v968;
  v970 = *v968;
  v971 = swift_isUniquelyReferenced_nonNull_native();
  v1669 = *v969;
  *v969 = 0x8000000000000000;
  sub_266ECD368(161, 0x435952544E554F43, 0xEE004D4F5F45444FLL, v971);
  v972 = *v969;
  *v969 = v1669;

  v967(v1759, 0);
  v973 = sub_26738111C();
  v975 = v974;
  v976 = *v974;
  v977 = swift_isUniquelyReferenced_nonNull_native();
  v1670 = *v975;
  *v975 = 0x8000000000000000;
  sub_266ECD368(162, 0x435952544E554F43, 0xEE004B505F45444FLL, v977);
  v978 = *v975;
  *v975 = v1670;

  v973(v1759, 0);
  v979 = sub_26738111C();
  v981 = v980;
  v982 = *v980;
  v983 = swift_isUniquelyReferenced_nonNull_native();
  v1671 = *v981;
  *v981 = 0x8000000000000000;
  sub_266ECD368(163, 0x435952544E554F43, 0xEE0057505F45444FLL, v983);
  v984 = *v981;
  *v981 = v1671;

  v979(v1759, 0);
  v985 = sub_26738111C();
  v987 = v986;
  v988 = *v986;
  v989 = swift_isUniquelyReferenced_nonNull_native();
  v1672 = *v987;
  *v987 = 0x8000000000000000;
  sub_266ECD368(164, 0x435952544E554F43, 0xEE0053505F45444FLL, v989);
  v990 = *v987;
  *v987 = v1672;

  v985(v1759, 0);
  v991 = sub_26738111C();
  v993 = v992;
  v994 = *v992;
  v995 = swift_isUniquelyReferenced_nonNull_native();
  v1673 = *v993;
  *v993 = 0x8000000000000000;
  sub_266ECD368(165, 0x435952544E554F43, 0xEE0041505F45444FLL, v995);
  v996 = *v993;
  *v993 = v1673;

  v991(v1759, 0);
  v997 = sub_26738111C();
  v999 = v998;
  v1000 = *v998;
  v1001 = swift_isUniquelyReferenced_nonNull_native();
  v1674 = *v999;
  *v999 = 0x8000000000000000;
  sub_266ECD368(166, 0x435952544E554F43, 0xEE0047505F45444FLL, v1001);
  v1002 = *v999;
  *v999 = v1674;

  v997(v1759, 0);
  v1003 = sub_26738111C();
  v1005 = v1004;
  v1006 = *v1004;
  v1007 = swift_isUniquelyReferenced_nonNull_native();
  v1675 = *v1005;
  *v1005 = 0x8000000000000000;
  sub_266ECD368(167, 0x435952544E554F43, 0xEE0059505F45444FLL, v1007);
  v1008 = *v1005;
  *v1005 = v1675;

  v1003(v1759, 0);
  v1009 = sub_26738111C();
  v1011 = v1010;
  v1012 = *v1010;
  v1013 = swift_isUniquelyReferenced_nonNull_native();
  v1676 = *v1011;
  *v1011 = 0x8000000000000000;
  sub_266ECD368(168, 0x435952544E554F43, 0xEE0048505F45444FLL, v1013);
  v1014 = *v1011;
  *v1011 = v1676;

  v1009(v1759, 0);
  v1015 = sub_26738111C();
  v1017 = v1016;
  v1018 = *v1016;
  v1019 = swift_isUniquelyReferenced_nonNull_native();
  v1677 = *v1017;
  *v1017 = 0x8000000000000000;
  sub_266ECD368(169, 0x435952544E554F43, 0xEE004E505F45444FLL, v1019);
  v1020 = *v1017;
  *v1017 = v1677;

  v1015(v1759, 0);
  v1021 = sub_26738111C();
  v1023 = v1022;
  v1024 = *v1022;
  v1025 = swift_isUniquelyReferenced_nonNull_native();
  v1678 = *v1023;
  *v1023 = 0x8000000000000000;
  sub_266ECD368(170, 0x435952544E554F43, 0xEE004C505F45444FLL, v1025);
  v1026 = *v1023;
  *v1023 = v1678;

  v1021(v1759, 0);
  v1027 = sub_26738111C();
  v1029 = v1028;
  v1030 = *v1028;
  v1031 = swift_isUniquelyReferenced_nonNull_native();
  v1679 = *v1029;
  *v1029 = 0x8000000000000000;
  sub_266ECD368(171, 0x435952544E554F43, 0xEE0054505F45444FLL, v1031);
  v1032 = *v1029;
  *v1029 = v1679;

  v1027(v1759, 0);
  v1033 = sub_26738111C();
  v1035 = v1034;
  v1036 = *v1034;
  v1037 = swift_isUniquelyReferenced_nonNull_native();
  v1680 = *v1035;
  *v1035 = 0x8000000000000000;
  sub_266ECD368(172, 0x435952544E554F43, 0xEE0052505F45444FLL, v1037);
  v1038 = *v1035;
  *v1035 = v1680;

  v1033(v1759, 0);
  v1039 = sub_26738111C();
  v1041 = v1040;
  v1042 = *v1040;
  v1043 = swift_isUniquelyReferenced_nonNull_native();
  v1681 = *v1041;
  *v1041 = 0x8000000000000000;
  sub_266ECD368(173, 0x435952544E554F43, 0xEE0041515F45444FLL, v1043);
  v1044 = *v1041;
  *v1041 = v1681;

  v1039(v1759, 0);
  v1045 = sub_26738111C();
  v1047 = v1046;
  v1048 = *v1046;
  v1049 = swift_isUniquelyReferenced_nonNull_native();
  v1682 = *v1047;
  *v1047 = 0x8000000000000000;
  sub_266ECD368(174, 0x435952544E554F43, 0xEE004F525F45444FLL, v1049);
  v1050 = *v1047;
  *v1047 = v1682;

  v1045(v1759, 0);
  v1051 = sub_26738111C();
  v1053 = v1052;
  v1054 = *v1052;
  v1055 = swift_isUniquelyReferenced_nonNull_native();
  v1683 = *v1053;
  *v1053 = 0x8000000000000000;
  sub_266ECD368(175, 0x435952544E554F43, 0xEE0055525F45444FLL, v1055);
  v1056 = *v1053;
  *v1053 = v1683;

  v1051(v1759, 0);
  v1057 = sub_26738111C();
  v1059 = v1058;
  v1060 = *v1058;
  v1061 = swift_isUniquelyReferenced_nonNull_native();
  v1684 = *v1059;
  *v1059 = 0x8000000000000000;
  sub_266ECD368(176, 0x435952544E554F43, 0xEE0057525F45444FLL, v1061);
  v1062 = *v1059;
  *v1059 = v1684;

  v1057(v1759, 0);
  v1063 = sub_26738111C();
  v1065 = v1064;
  v1066 = *v1064;
  v1067 = swift_isUniquelyReferenced_nonNull_native();
  v1685 = *v1065;
  *v1065 = 0x8000000000000000;
  sub_266ECD368(177, 0x435952544E554F43, 0xEE0048535F45444FLL, v1067);
  v1068 = *v1065;
  *v1065 = v1685;

  v1063(v1759, 0);
  v1069 = sub_26738111C();
  v1071 = v1070;
  v1072 = *v1070;
  v1073 = swift_isUniquelyReferenced_nonNull_native();
  v1686 = *v1071;
  *v1071 = 0x8000000000000000;
  sub_266ECD368(178, 0x435952544E554F43, 0xEE004E4B5F45444FLL, v1073);
  v1074 = *v1071;
  *v1071 = v1686;

  v1069(v1759, 0);
  v1075 = sub_26738111C();
  v1077 = v1076;
  v1078 = *v1076;
  v1079 = swift_isUniquelyReferenced_nonNull_native();
  v1687 = *v1077;
  *v1077 = 0x8000000000000000;
  sub_266ECD368(179, 0x435952544E554F43, 0xEE00434C5F45444FLL, v1079);
  v1080 = *v1077;
  *v1077 = v1687;

  v1075(v1759, 0);
  v1081 = sub_26738111C();
  v1083 = v1082;
  v1084 = *v1082;
  v1085 = swift_isUniquelyReferenced_nonNull_native();
  v1688 = *v1083;
  *v1083 = 0x8000000000000000;
  sub_266ECD368(180, 0x435952544E554F43, 0xEE00464D5F45444FLL, v1085);
  v1086 = *v1083;
  *v1083 = v1688;

  v1081(v1759, 0);
  v1087 = sub_26738111C();
  v1089 = v1088;
  v1090 = *v1088;
  v1091 = swift_isUniquelyReferenced_nonNull_native();
  v1689 = *v1089;
  *v1089 = 0x8000000000000000;
  sub_266ECD368(181, 0x435952544E554F43, 0xEE004D505F45444FLL, v1091);
  v1092 = *v1089;
  *v1089 = v1689;

  v1087(v1759, 0);
  v1093 = sub_26738111C();
  v1095 = v1094;
  v1096 = *v1094;
  v1097 = swift_isUniquelyReferenced_nonNull_native();
  v1690 = *v1095;
  *v1095 = 0x8000000000000000;
  sub_266ECD368(182, 0x435952544E554F43, 0xEE0043565F45444FLL, v1097);
  v1098 = *v1095;
  *v1095 = v1690;

  v1093(v1759, 0);
  v1099 = sub_26738111C();
  v1101 = v1100;
  v1102 = *v1100;
  v1103 = swift_isUniquelyReferenced_nonNull_native();
  v1691 = *v1101;
  *v1101 = 0x8000000000000000;
  sub_266ECD368(183, 0x435952544E554F43, 0xEE0053575F45444FLL, v1103);
  v1104 = *v1101;
  *v1101 = v1691;

  v1099(v1759, 0);
  v1105 = sub_26738111C();
  v1107 = v1106;
  v1108 = *v1106;
  v1109 = swift_isUniquelyReferenced_nonNull_native();
  v1692 = *v1107;
  *v1107 = 0x8000000000000000;
  sub_266ECD368(184, 0x435952544E554F43, 0xEE004D535F45444FLL, v1109);
  v1110 = *v1107;
  *v1107 = v1692;

  v1105(v1759, 0);
  v1111 = sub_26738111C();
  v1113 = v1112;
  v1114 = *v1112;
  v1115 = swift_isUniquelyReferenced_nonNull_native();
  v1693 = *v1113;
  *v1113 = 0x8000000000000000;
  sub_266ECD368(185, 0x435952544E554F43, 0xEE0054535F45444FLL, v1115);
  v1116 = *v1113;
  *v1113 = v1693;

  v1111(v1759, 0);
  v1117 = sub_26738111C();
  v1119 = v1118;
  v1120 = *v1118;
  v1121 = swift_isUniquelyReferenced_nonNull_native();
  v1694 = *v1119;
  *v1119 = 0x8000000000000000;
  sub_266ECD368(186, 0x435952544E554F43, 0xEE0041535F45444FLL, v1121);
  v1122 = *v1119;
  *v1119 = v1694;

  v1117(v1759, 0);
  v1123 = sub_26738111C();
  v1125 = v1124;
  v1126 = *v1124;
  v1127 = swift_isUniquelyReferenced_nonNull_native();
  v1695 = *v1125;
  *v1125 = 0x8000000000000000;
  sub_266ECD368(187, 0x435952544E554F43, 0xEE0053525F45444FLL, v1127);
  v1128 = *v1125;
  *v1125 = v1695;

  v1123(v1759, 0);
  v1129 = sub_26738111C();
  v1131 = v1130;
  v1132 = *v1130;
  v1133 = swift_isUniquelyReferenced_nonNull_native();
  v1696 = *v1131;
  *v1131 = 0x8000000000000000;
  sub_266ECD368(188, 0x435952544E554F43, 0xEE0043535F45444FLL, v1133);
  v1134 = *v1131;
  *v1131 = v1696;

  v1129(v1759, 0);
  v1135 = sub_26738111C();
  v1137 = v1136;
  v1138 = *v1136;
  v1139 = swift_isUniquelyReferenced_nonNull_native();
  v1697 = *v1137;
  *v1137 = 0x8000000000000000;
  sub_266ECD368(189, 0x435952544E554F43, 0xEE004C535F45444FLL, v1139);
  v1140 = *v1137;
  *v1137 = v1697;

  v1135(v1759, 0);
  v1141 = sub_26738111C();
  v1143 = v1142;
  v1144 = *v1142;
  v1145 = swift_isUniquelyReferenced_nonNull_native();
  v1698 = *v1143;
  *v1143 = 0x8000000000000000;
  sub_266ECD368(190, 0x435952544E554F43, 0xEE0047535F45444FLL, v1145);
  v1146 = *v1143;
  *v1143 = v1698;

  v1141(v1759, 0);
  v1147 = sub_26738111C();
  v1149 = v1148;
  v1150 = *v1148;
  v1151 = swift_isUniquelyReferenced_nonNull_native();
  v1699 = *v1149;
  *v1149 = 0x8000000000000000;
  sub_266ECD368(191, 0x435952544E554F43, 0xEE004B535F45444FLL, v1151);
  v1152 = *v1149;
  *v1149 = v1699;

  v1147(v1759, 0);
  v1153 = sub_26738111C();
  v1155 = v1154;
  v1156 = *v1154;
  v1157 = swift_isUniquelyReferenced_nonNull_native();
  v1700 = *v1155;
  *v1155 = 0x8000000000000000;
  sub_266ECD368(192, 0x435952544E554F43, 0xEE0049535F45444FLL, v1157);
  v1158 = *v1155;
  *v1155 = v1700;

  v1153(v1759, 0);
  v1159 = sub_26738111C();
  v1161 = v1160;
  v1162 = *v1160;
  v1163 = swift_isUniquelyReferenced_nonNull_native();
  v1701 = *v1161;
  *v1161 = 0x8000000000000000;
  sub_266ECD368(193, 0x435952544E554F43, 0xEE0042535F45444FLL, v1163);
  v1164 = *v1161;
  *v1161 = v1701;

  v1159(v1759, 0);
  v1165 = sub_26738111C();
  v1167 = v1166;
  v1168 = *v1166;
  v1169 = swift_isUniquelyReferenced_nonNull_native();
  v1702 = *v1167;
  *v1167 = 0x8000000000000000;
  sub_266ECD368(194, 0x435952544E554F43, 0xEE004F535F45444FLL, v1169);
  v1170 = *v1167;
  *v1167 = v1702;

  v1165(v1759, 0);
  v1171 = sub_26738111C();
  v1173 = v1172;
  v1174 = *v1172;
  v1175 = swift_isUniquelyReferenced_nonNull_native();
  v1703 = *v1173;
  *v1173 = 0x8000000000000000;
  sub_266ECD368(195, 0x435952544E554F43, 0xEE00415A5F45444FLL, v1175);
  v1176 = *v1173;
  *v1173 = v1703;

  v1171(v1759, 0);
  v1177 = sub_26738111C();
  v1179 = v1178;
  v1180 = *v1178;
  v1181 = swift_isUniquelyReferenced_nonNull_native();
  v1704 = *v1179;
  *v1179 = 0x8000000000000000;
  sub_266ECD368(196, 0x435952544E554F43, 0xEE0053475F45444FLL, v1181);
  v1182 = *v1179;
  *v1179 = v1704;

  v1177(v1759, 0);
  v1183 = sub_26738111C();
  v1185 = v1184;
  v1186 = *v1184;
  v1187 = swift_isUniquelyReferenced_nonNull_native();
  v1705 = *v1185;
  *v1185 = 0x8000000000000000;
  sub_266ECD368(197, 0x435952544E554F43, 0xEE0053535F45444FLL, v1187);
  v1188 = *v1185;
  *v1185 = v1705;

  v1183(v1759, 0);
  v1189 = sub_26738111C();
  v1191 = v1190;
  v1192 = *v1190;
  v1193 = swift_isUniquelyReferenced_nonNull_native();
  v1706 = *v1191;
  *v1191 = 0x8000000000000000;
  sub_266ECD368(198, 0x435952544E554F43, 0xEE0053455F45444FLL, v1193);
  v1194 = *v1191;
  *v1191 = v1706;

  v1189(v1759, 0);
  v1195 = sub_26738111C();
  v1197 = v1196;
  v1198 = *v1196;
  v1199 = swift_isUniquelyReferenced_nonNull_native();
  v1707 = *v1197;
  *v1197 = 0x8000000000000000;
  sub_266ECD368(199, 0x435952544E554F43, 0xEE004B4C5F45444FLL, v1199);
  v1200 = *v1197;
  *v1197 = v1707;

  v1195(v1759, 0);
  v1201 = sub_26738111C();
  v1203 = v1202;
  v1204 = *v1202;
  v1205 = swift_isUniquelyReferenced_nonNull_native();
  v1708 = *v1203;
  *v1203 = 0x8000000000000000;
  sub_266ECD368(200, 0x435952544E554F43, 0xEE0044535F45444FLL, v1205);
  v1206 = *v1203;
  *v1203 = v1708;

  v1201(v1759, 0);
  v1207 = sub_26738111C();
  v1209 = v1208;
  v1210 = *v1208;
  v1211 = swift_isUniquelyReferenced_nonNull_native();
  v1709 = *v1209;
  *v1209 = 0x8000000000000000;
  sub_266ECD368(201, 0x435952544E554F43, 0xEE0052535F45444FLL, v1211);
  v1212 = *v1209;
  *v1209 = v1709;

  v1207(v1759, 0);
  v1213 = sub_26738111C();
  v1215 = v1214;
  v1216 = *v1214;
  v1217 = swift_isUniquelyReferenced_nonNull_native();
  v1710 = *v1215;
  *v1215 = 0x8000000000000000;
  sub_266ECD368(202, 0x435952544E554F43, 0xEE004A535F45444FLL, v1217);
  v1218 = *v1215;
  *v1215 = v1710;

  v1213(v1759, 0);
  v1219 = sub_26738111C();
  v1221 = v1220;
  v1222 = *v1220;
  v1223 = swift_isUniquelyReferenced_nonNull_native();
  v1711 = *v1221;
  *v1221 = 0x8000000000000000;
  sub_266ECD368(203, 0x435952544E554F43, 0xEE0045535F45444FLL, v1223);
  v1224 = *v1221;
  *v1221 = v1711;

  v1219(v1759, 0);
  v1225 = sub_26738111C();
  v1227 = v1226;
  v1228 = *v1226;
  v1229 = swift_isUniquelyReferenced_nonNull_native();
  v1712 = *v1227;
  *v1227 = 0x8000000000000000;
  sub_266ECD368(204, 0x435952544E554F43, 0xEE0048435F45444FLL, v1229);
  v1230 = *v1227;
  *v1227 = v1712;

  v1225(v1759, 0);
  v1231 = sub_26738111C();
  v1233 = v1232;
  v1234 = *v1232;
  v1235 = swift_isUniquelyReferenced_nonNull_native();
  v1713 = *v1233;
  *v1233 = 0x8000000000000000;
  sub_266ECD368(205, 0x435952544E554F43, 0xEE0059535F45444FLL, v1235);
  v1236 = *v1233;
  *v1233 = v1713;

  v1231(v1759, 0);
  v1237 = sub_26738111C();
  v1239 = v1238;
  v1240 = *v1238;
  v1241 = swift_isUniquelyReferenced_nonNull_native();
  v1714 = *v1239;
  *v1239 = 0x8000000000000000;
  sub_266ECD368(206, 0x435952544E554F43, 0xEE0057545F45444FLL, v1241);
  v1242 = *v1239;
  *v1239 = v1714;

  v1237(v1759, 0);
  v1243 = sub_26738111C();
  v1245 = v1244;
  v1246 = *v1244;
  v1247 = swift_isUniquelyReferenced_nonNull_native();
  v1715 = *v1245;
  *v1245 = 0x8000000000000000;
  sub_266ECD368(207, 0x435952544E554F43, 0xEE004A545F45444FLL, v1247);
  v1248 = *v1245;
  *v1245 = v1715;

  v1243(v1759, 0);
  v1249 = sub_26738111C();
  v1251 = v1250;
  v1252 = *v1250;
  v1253 = swift_isUniquelyReferenced_nonNull_native();
  v1716 = *v1251;
  *v1251 = 0x8000000000000000;
  sub_266ECD368(208, 0x435952544E554F43, 0xEE005A545F45444FLL, v1253);
  v1254 = *v1251;
  *v1251 = v1716;

  v1249(v1759, 0);
  v1255 = sub_26738111C();
  v1257 = v1256;
  v1258 = *v1256;
  v1259 = swift_isUniquelyReferenced_nonNull_native();
  v1717 = *v1257;
  *v1257 = 0x8000000000000000;
  sub_266ECD368(209, 0x435952544E554F43, 0xEE0048545F45444FLL, v1259);
  v1260 = *v1257;
  *v1257 = v1717;

  v1255(v1759, 0);
  v1261 = sub_26738111C();
  v1263 = v1262;
  v1264 = *v1262;
  v1265 = swift_isUniquelyReferenced_nonNull_native();
  v1718 = *v1263;
  *v1263 = 0x8000000000000000;
  sub_266ECD368(210, 0x435952544E554F43, 0xEE004C545F45444FLL, v1265);
  v1266 = *v1263;
  *v1263 = v1718;

  v1261(v1759, 0);
  v1267 = sub_26738111C();
  v1269 = v1268;
  v1270 = *v1268;
  v1271 = swift_isUniquelyReferenced_nonNull_native();
  v1719 = *v1269;
  *v1269 = 0x8000000000000000;
  sub_266ECD368(211, 0x435952544E554F43, 0xEE0047545F45444FLL, v1271);
  v1272 = *v1269;
  *v1269 = v1719;

  v1267(v1759, 0);
  v1273 = sub_26738111C();
  v1275 = v1274;
  v1276 = *v1274;
  v1277 = swift_isUniquelyReferenced_nonNull_native();
  v1720 = *v1275;
  *v1275 = 0x8000000000000000;
  sub_266ECD368(212, 0x435952544E554F43, 0xEE004B545F45444FLL, v1277);
  v1278 = *v1275;
  *v1275 = v1720;

  v1273(v1759, 0);
  v1279 = sub_26738111C();
  v1281 = v1280;
  v1282 = *v1280;
  v1283 = swift_isUniquelyReferenced_nonNull_native();
  v1721 = *v1281;
  *v1281 = 0x8000000000000000;
  sub_266ECD368(213, 0x435952544E554F43, 0xEE004F545F45444FLL, v1283);
  v1284 = *v1281;
  *v1281 = v1721;

  v1279(v1759, 0);
  v1285 = sub_26738111C();
  v1287 = v1286;
  v1288 = *v1286;
  v1289 = swift_isUniquelyReferenced_nonNull_native();
  v1722 = *v1287;
  *v1287 = 0x8000000000000000;
  sub_266ECD368(214, 0x435952544E554F43, 0xEE0054545F45444FLL, v1289);
  v1290 = *v1287;
  *v1287 = v1722;

  v1285(v1759, 0);
  v1291 = sub_26738111C();
  v1293 = v1292;
  v1294 = *v1292;
  v1295 = swift_isUniquelyReferenced_nonNull_native();
  v1723 = *v1293;
  *v1293 = 0x8000000000000000;
  sub_266ECD368(215, 0x435952544E554F43, 0xEE004E545F45444FLL, v1295);
  v1296 = *v1293;
  *v1293 = v1723;

  v1291(v1759, 0);
  v1297 = sub_26738111C();
  v1299 = v1298;
  v1300 = *v1298;
  v1301 = swift_isUniquelyReferenced_nonNull_native();
  v1724 = *v1299;
  *v1299 = 0x8000000000000000;
  sub_266ECD368(216, 0x435952544E554F43, 0xEE0052545F45444FLL, v1301);
  v1302 = *v1299;
  *v1299 = v1724;

  v1297(v1759, 0);
  v1303 = sub_26738111C();
  v1305 = v1304;
  v1306 = *v1304;
  v1307 = swift_isUniquelyReferenced_nonNull_native();
  v1725 = *v1305;
  *v1305 = 0x8000000000000000;
  sub_266ECD368(217, 0x435952544E554F43, 0xEE004D545F45444FLL, v1307);
  v1308 = *v1305;
  *v1305 = v1725;

  v1303(v1759, 0);
  v1309 = sub_26738111C();
  v1311 = v1310;
  v1312 = *v1310;
  v1313 = swift_isUniquelyReferenced_nonNull_native();
  v1726 = *v1311;
  *v1311 = 0x8000000000000000;
  sub_266ECD368(218, 0x435952544E554F43, 0xEE0043545F45444FLL, v1313);
  v1314 = *v1311;
  *v1311 = v1726;

  v1309(v1759, 0);
  v1315 = sub_26738111C();
  v1317 = v1316;
  v1318 = *v1316;
  v1319 = swift_isUniquelyReferenced_nonNull_native();
  v1727 = *v1317;
  *v1317 = 0x8000000000000000;
  sub_266ECD368(219, 0x435952544E554F43, 0xEE0056545F45444FLL, v1319);
  v1320 = *v1317;
  *v1317 = v1727;

  v1315(v1759, 0);
  v1321 = sub_26738111C();
  v1323 = v1322;
  v1324 = *v1322;
  v1325 = swift_isUniquelyReferenced_nonNull_native();
  v1728 = *v1323;
  *v1323 = 0x8000000000000000;
  sub_266ECD368(220, 0x435952544E554F43, 0xEE0047555F45444FLL, v1325);
  v1326 = *v1323;
  *v1323 = v1728;

  v1321(v1759, 0);
  v1327 = sub_26738111C();
  v1329 = v1328;
  v1330 = *v1328;
  v1331 = swift_isUniquelyReferenced_nonNull_native();
  v1729 = *v1329;
  *v1329 = 0x8000000000000000;
  sub_266ECD368(221, 0x435952544E554F43, 0xEE0041555F45444FLL, v1331);
  v1332 = *v1329;
  *v1329 = v1729;

  v1327(v1759, 0);
  v1333 = sub_26738111C();
  v1335 = v1334;
  v1336 = *v1334;
  v1337 = swift_isUniquelyReferenced_nonNull_native();
  v1730 = *v1335;
  *v1335 = 0x8000000000000000;
  sub_266ECD368(222, 0x435952544E554F43, 0xEE0045415F45444FLL, v1337);
  v1338 = *v1335;
  *v1335 = v1730;

  v1333(v1759, 0);
  v1339 = sub_26738111C();
  v1341 = v1340;
  v1342 = *v1340;
  v1343 = swift_isUniquelyReferenced_nonNull_native();
  v1731 = *v1341;
  *v1341 = 0x8000000000000000;
  sub_266ECD368(223, 0x435952544E554F43, 0xEE0042475F45444FLL, v1343);
  v1344 = *v1341;
  *v1341 = v1731;

  v1339(v1759, 0);
  v1345 = sub_26738111C();
  v1347 = v1346;
  v1348 = *v1346;
  v1349 = swift_isUniquelyReferenced_nonNull_native();
  v1732 = *v1347;
  *v1347 = 0x8000000000000000;
  sub_266ECD368(224, 0x435952544E554F43, 0xEE004D555F45444FLL, v1349);
  v1350 = *v1347;
  *v1347 = v1732;

  v1345(v1759, 0);
  v1351 = sub_26738111C();
  v1353 = v1352;
  v1354 = *v1352;
  v1355 = swift_isUniquelyReferenced_nonNull_native();
  v1733 = *v1353;
  *v1353 = 0x8000000000000000;
  sub_266ECD368(225, 0x435952544E554F43, 0xEE0053555F45444FLL, v1355);
  v1356 = *v1353;
  *v1353 = v1733;

  v1351(v1759, 0);
  v1357 = sub_26738111C();
  v1359 = v1358;
  v1360 = *v1358;
  v1361 = swift_isUniquelyReferenced_nonNull_native();
  v1734 = *v1359;
  *v1359 = 0x8000000000000000;
  sub_266ECD368(226, 0x435952544E554F43, 0xEE0059555F45444FLL, v1361);
  v1362 = *v1359;
  *v1359 = v1734;

  v1357(v1759, 0);
  v1363 = sub_26738111C();
  v1365 = v1364;
  v1366 = *v1364;
  v1367 = swift_isUniquelyReferenced_nonNull_native();
  v1735 = *v1365;
  *v1365 = 0x8000000000000000;
  sub_266ECD368(227, 0x435952544E554F43, 0xEE005A555F45444FLL, v1367);
  v1368 = *v1365;
  *v1365 = v1735;

  v1363(v1759, 0);
  v1369 = sub_26738111C();
  v1371 = v1370;
  v1372 = *v1370;
  v1373 = swift_isUniquelyReferenced_nonNull_native();
  v1736 = *v1371;
  *v1371 = 0x8000000000000000;
  sub_266ECD368(228, 0x435952544E554F43, 0xEE0055565F45444FLL, v1373);
  v1374 = *v1371;
  *v1371 = v1736;

  v1369(v1759, 0);
  v1375 = sub_26738111C();
  v1377 = v1376;
  v1378 = *v1376;
  v1379 = swift_isUniquelyReferenced_nonNull_native();
  v1737 = *v1377;
  *v1377 = 0x8000000000000000;
  sub_266ECD368(229, 0x435952544E554F43, 0xEE0045565F45444FLL, v1379);
  v1380 = *v1377;
  *v1377 = v1737;

  v1375(v1759, 0);
  v1381 = sub_26738111C();
  v1383 = v1382;
  v1384 = *v1382;
  v1385 = swift_isUniquelyReferenced_nonNull_native();
  v1738 = *v1383;
  *v1383 = 0x8000000000000000;
  sub_266ECD368(230, 0x435952544E554F43, 0xEE004E565F45444FLL, v1385);
  v1386 = *v1383;
  *v1383 = v1738;

  v1381(v1759, 0);
  v1387 = sub_26738111C();
  v1389 = v1388;
  v1390 = *v1388;
  v1391 = swift_isUniquelyReferenced_nonNull_native();
  v1739 = *v1389;
  *v1389 = 0x8000000000000000;
  sub_266ECD368(231, 0x435952544E554F43, 0xEE0047565F45444FLL, v1391);
  v1392 = *v1389;
  *v1389 = v1739;

  v1387(v1759, 0);
  v1393 = sub_26738111C();
  v1395 = v1394;
  v1396 = *v1394;
  v1397 = swift_isUniquelyReferenced_nonNull_native();
  v1740 = *v1395;
  *v1395 = 0x8000000000000000;
  sub_266ECD368(232, 0x435952544E554F43, 0xEE0049565F45444FLL, v1397);
  v1398 = *v1395;
  *v1395 = v1740;

  v1393(v1759, 0);
  v1399 = sub_26738111C();
  v1401 = v1400;
  v1402 = *v1400;
  v1403 = swift_isUniquelyReferenced_nonNull_native();
  v1741 = *v1401;
  *v1401 = 0x8000000000000000;
  sub_266ECD368(233, 0x435952544E554F43, 0xEE0046575F45444FLL, v1403);
  v1404 = *v1401;
  *v1401 = v1741;

  v1399(v1759, 0);
  v1405 = sub_26738111C();
  v1407 = v1406;
  v1408 = *v1406;
  v1409 = swift_isUniquelyReferenced_nonNull_native();
  v1742 = *v1407;
  *v1407 = 0x8000000000000000;
  sub_266ECD368(234, 0x435952544E554F43, 0xEE0048455F45444FLL, v1409);
  v1410 = *v1407;
  *v1407 = v1742;

  v1405(v1759, 0);
  v1411 = sub_26738111C();
  v1413 = v1412;
  v1414 = *v1412;
  v1415 = swift_isUniquelyReferenced_nonNull_native();
  v1743 = *v1413;
  *v1413 = 0x8000000000000000;
  sub_266ECD368(235, 0x435952544E554F43, 0xEE0045595F45444FLL, v1415);
  v1416 = *v1413;
  *v1413 = v1743;

  v1411(v1759, 0);
  v1417 = sub_26738111C();
  v1419 = v1418;
  v1420 = *v1418;
  v1421 = swift_isUniquelyReferenced_nonNull_native();
  v1744 = *v1419;
  *v1419 = 0x8000000000000000;
  sub_266ECD368(236, 0x435952544E554F43, 0xEE004D5A5F45444FLL, v1421);
  v1422 = *v1419;
  *v1419 = v1744;

  v1417(v1759, 0);
  v1423 = sub_26738111C();
  v1425 = v1424;
  v1426 = *v1424;
  v1427 = swift_isUniquelyReferenced_nonNull_native();
  v1745 = *v1425;
  *v1425 = 0x8000000000000000;
  sub_266ECD368(237, 0x435952544E554F43, 0xEE00575A5F45444FLL, v1427);
  v1428 = *v1425;
  *v1425 = v1745;

  v1423(v1759, 0);
  v1429 = sub_26738111C();
  v1431 = v1430;
  v1432 = *v1430;
  v1433 = swift_isUniquelyReferenced_nonNull_native();
  v1746 = *v1431;
  *v1431 = 0x8000000000000000;
  sub_266ECD368(238, 0x435952544E554F43, 0xEE0043455F45444FLL, v1433);
  v1434 = *v1431;
  *v1431 = v1746;

  v1429(v1759, 0);
  v1435 = sub_26738111C();
  v1437 = v1436;
  v1438 = *v1436;
  v1439 = swift_isUniquelyReferenced_nonNull_native();
  v1747 = *v1437;
  *v1437 = 0x8000000000000000;
  sub_266ECD368(239, 0x435952544E554F43, 0xEE0051475F45444FLL, v1439);
  v1440 = *v1437;
  *v1437 = v1747;

  v1435(v1759, 0);
  v1441 = sub_26738111C();
  v1443 = v1442;
  v1444 = *v1442;
  v1445 = swift_isUniquelyReferenced_nonNull_native();
  v1748 = *v1443;
  *v1443 = 0x8000000000000000;
  sub_266ECD368(240, 0x435952544E554F43, 0xEE0052475F45444FLL, v1445);
  v1446 = *v1443;
  *v1443 = v1748;

  v1441(v1759, 0);
  v1447 = sub_26738111C();
  v1449 = v1448;
  v1450 = *v1448;
  v1451 = swift_isUniquelyReferenced_nonNull_native();
  v1749 = *v1449;
  *v1449 = 0x8000000000000000;
  sub_266ECD368(241, 0x435952544E554F43, 0xEE004D485F45444FLL, v1451);
  v1452 = *v1449;
  *v1449 = v1749;

  v1447(v1759, 0);
  v1453 = sub_26738111C();
  v1455 = v1454;
  v1456 = *v1454;
  v1457 = swift_isUniquelyReferenced_nonNull_native();
  v1750 = *v1455;
  *v1455 = 0x8000000000000000;
  sub_266ECD368(242, 0x435952544E554F43, 0xEE004D4A5F45444FLL, v1457);
  v1458 = *v1455;
  *v1455 = v1750;

  v1453(v1759, 0);
  v1459 = sub_26738111C();
  v1461 = v1460;
  v1462 = *v1460;
  v1463 = swift_isUniquelyReferenced_nonNull_native();
  v1751 = *v1461;
  *v1461 = 0x8000000000000000;
  sub_266ECD368(243, 0x435952544E554F43, 0xEE00504A5F45444FLL, v1463);
  v1464 = *v1461;
  *v1461 = v1751;

  v1459(v1759, 0);
  v1465 = sub_26738111C();
  v1467 = v1466;
  v1468 = *v1466;
  v1469 = swift_isUniquelyReferenced_nonNull_native();
  v1752 = *v1467;
  *v1467 = 0x8000000000000000;
  sub_266ECD368(244, 0x435952544E554F43, 0xEE004B585F45444FLL, v1469);
  v1470 = *v1467;
  *v1467 = v1752;

  v1465(v1759, 0);
  v1471 = sub_26738111C();
  v1473 = v1472;
  v1474 = *v1472;
  v1475 = swift_isUniquelyReferenced_nonNull_native();
  v1753 = *v1473;
  *v1473 = 0x8000000000000000;
  sub_266ECD368(245, 0x435952544E554F43, 0xEE00504D5F45444FLL, v1475);
  v1476 = *v1473;
  *v1473 = v1753;

  v1471(v1759, 0);
  v1477 = sub_26738111C();
  v1479 = v1478;
  v1480 = *v1478;
  v1481 = swift_isUniquelyReferenced_nonNull_native();
  v1754 = *v1479;
  *v1479 = 0x8000000000000000;
  sub_266ECD368(246, 0x435952544E554F43, 0xEE0045505F45444FLL, v1481);
  v1482 = *v1479;
  *v1479 = v1754;

  v1477(v1759, 0);
  v1483 = sub_26738111C();
  v1485 = v1484;
  v1486 = *v1484;
  v1487 = swift_isUniquelyReferenced_nonNull_native();
  v1755 = *v1485;
  *v1485 = 0x8000000000000000;
  sub_266ECD368(247, 0x435952544E554F43, 0xEE0045525F45444FLL, v1487);
  v1488 = *v1485;
  *v1485 = v1755;

  v1483(v1759, 0);
  v1489 = sub_26738111C();
  v1491 = v1490;
  v1492 = *v1490;
  v1493 = swift_isUniquelyReferenced_nonNull_native();
  v1756 = *v1491;
  *v1491 = 0x8000000000000000;
  sub_266ECD368(248, 0x435952544E554F43, 0xEE004C425F45444FLL, v1493);
  v1494 = *v1491;
  *v1491 = v1756;

  v1489(v1759, 0);
  v1495 = sub_26738111C();
  v1497 = v1496;
  v1498 = *v1496;
  v1499 = swift_isUniquelyReferenced_nonNull_native();
  v1757 = *v1497;
  *v1497 = 0x8000000000000000;
  sub_266ECD368(249, 0x435952544E554F43, 0xEE004E535F45444FLL, v1499);
  v1500 = *v1497;
  *v1497 = v1757;

  v1495(v1759, 0);
  v1501 = sub_26738111C();
  v1503 = v1502;
  v1504 = *v1502;
  v1505 = swift_isUniquelyReferenced_nonNull_native();
  v1758 = *v1503;
  *v1503 = 0x8000000000000000;
  sub_266ECD368(250, 0x435952544E554F43, 0xEE0058535F45444FLL, v1505);
  v1506 = *v1503;
  *v1503 = v1758;

  return v1501(v1759, 0);
}

uint64_t sub_2672C1B80(uint64_t a1)
{
  v2 = sub_2672C1C84(&qword_2800F9F58);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C1BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C1C84(&qword_2800F9F58);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C1C84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaCountryCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDailyDeviceStatus.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v94 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v4 + 104);
  v101 = *MEMORY[0x277D3E530];
  v104 = v4 + 104;
  v105 = v3;
  v103 = v12;
  (v12)(v7);
  v108[0] = 1;
  v100 = v7;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v99 = *(v14 + 56);
  v106 = v14 + 56;
  v99(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0x6976654469726973, 0xEC00000044496563);
  v15(v108, 0);
  v102 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v107, 0x6976654469726973, 0xEC00000044496563);
  v18 = *(v14 + 48);
  v98 = v13;
  v95 = v18;
  v96 = v14 + 48;
  if (!v18(v19, 1, v13))
  {
    sub_266ECB128(&unk_287891A90);
    sub_26738115C();
  }

  (v17)(v107, 0);
  v16(v108, 0);
  v103(v100, v101, v105);
  v108[0] = 1;
  sub_26738114C();
  v20 = v98;
  v99(v11, 0, 1, v98);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6565705369726973, 0xEC00000044496863);
  v21(v108, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v107, 0x6565705369726973, 0xEC00000044496863);
  if (!v95(v24, 1, v20))
  {
    sub_266ECB128(&unk_287891AC0);
    sub_26738115C();
  }

  (v23)(v107, 0);
  v22(v108, 0);
  v103(v100, v101, v105);
  v108[0] = 1;
  sub_26738114C();
  v25 = v98;
  v99(v11, 0, 1, v98);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0x7355646572616873, 0xEC00000064497265);
  v26(v108, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v107, 0x7355646572616873, 0xEC00000064497265);
  if (!v95(v29, 1, v25))
  {
    sub_266ECB128(&unk_287891AF0);
    sub_26738115C();
  }

  (v28)(v107, 0);
  v27(v108, 0);
  v30 = *MEMORY[0x277D3E510];
  v31 = v100;
  v32 = v103;
  v103(v100, v30, v105);
  v108[0] = 1;
  sub_26738114C();
  v34 = v98;
  v33 = v99;
  v99(v11, 0, 1, v98);
  v35 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, 0x8000000267491290);
  v35(v108, 0);
  v94 = "clientDeviceSamplingTimestampMs";
  v36 = v30;
  v37 = v105;
  v32(v31, v36, v105);
  v108[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v34);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000021, v94 | 0x8000000000000000);
  v38(v108, 0);
  v39 = v37;
  v40 = v103;
  v103(v31, v101, v39);
  v108[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v34);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0x656C61636F6CLL, 0xE600000000000000);
  v41(v108, 0);
  v42 = v101;
  v43 = v105;
  v40(v31, v101, v105);
  v108[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v34);
  v44 = sub_2673811AC();
  sub_266EC637C(v11, 0x7954656369766564, 0xEA00000000006570);
  v44(v108, 0);
  v45 = v100;
  v40(v100, v42, v43);
  v108[0] = 1;
  sub_26738114C();
  v33(v11, 0, 1, v34);
  v46 = sub_2673811AC();
  sub_266EC637C(v11, 0x734F656369766564, 0xE800000000000000);
  v46(v108, 0);
  v40(v45, v101, v43);
  v108[0] = 1;
  sub_26738114C();
  v47 = v98;
  v33(v11, 0, 1, v98);
  v48 = v33;
  v49 = sub_2673811AC();
  sub_266EC637C(v11, 0x7542656369766564, 0xEB00000000646C69);
  v49(v108, 0);
  sub_266ECB294(0, &qword_2800F9F60, 0x277D5A8A0);
  sub_266ECAF2C(&qword_2800F9F68, &qword_2800F9F60, 0x277D5A8A0);
  sub_26738120C();
  v33(v11, 0, 1, v47);
  v50 = sub_2673811AC();
  sub_266EC637C(v11, 0x5364656C62616E65, 0xED00007375746174);
  v50(v108, 0);
  sub_266ECB294(0, &qword_2800F9888, 0x277D5A758);
  sub_266ECAF2C(&qword_2800F9880, &qword_2800F9888, 0x277D5A758);
  sub_26738120C();
  v33(v11, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v11, 0x7453657669746361, 0xEC00000073757461);
  v51(v108, 0);
  sub_266ECB294(0, &qword_2800F9F70, 0x277D5A9A0);
  sub_266ECAF2C(&qword_2800F9F78, &qword_2800F9F70, 0x277D5A9A0);
  sub_26738120C();
  v33(v11, 0, 1, v47);
  v52 = sub_2673811AC();
  sub_266EC637C(v11, 0x6C616E6F73726570, 0xEF6E6F6974617A69);
  v52(v108, 0);
  sub_266ECB294(0, &qword_2800F9F80, 0x277D5A968);
  sub_266ECAF2C(&qword_2800F9F88, &qword_2800F9F80, 0x277D5A968);
  sub_26738120C();
  v53 = v47;
  v33(v11, 0, 1, v47);
  v54 = sub_2673811AC();
  sub_266EC637C(v11, 0x65735569746C756DLL, 0xEE00657461745372);
  v54(v108, 0);
  v94 = "ublishTimestampMs";
  v55 = *MEMORY[0x277D3E4E8];
  v56 = v100;
  v57 = v105;
  v58 = v103;
  v103(v100, v55, v105);
  v108[0] = 1;
  sub_26738114C();
  v48(v11, 0, 1, v53);
  v59 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001FLL, v94 | 0x8000000000000000);
  v59(v108, 0);
  v58(v56, v55, v57);
  v108[0] = 1;
  sub_26738114C();
  v60 = v98;
  v48(v11, 0, 1, v98);
  v61 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000002DLL, 0x8000000267491300);
  v61(v108, 0);
  type metadata accessor for SISchemaSpokenNotificationsWhitelistSetting(0);
  sub_2672C3A20(&qword_2800F9F90, type metadata accessor for SISchemaSpokenNotificationsWhitelistSetting);
  sub_26738120C();
  v48(v11, 0, 1, v60);
  v62 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000024, 0x8000000267491330);
  v62(v108, 0);
  sub_266ECB294(0, &qword_2800F98D8, 0x277D5A768);
  sub_266ECAF2C(&qword_2800F98D0, &qword_2800F98D8, 0x277D5A768);
  sub_26738120C();
  v48(v11, 0, 1, v60);
  v63 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, 0x8000000267491360);
  v63(v108, 0);
  sub_266ECB294(0, &qword_2800F9F98, 0x277D5A940);
  sub_266ECAF2C(&qword_2800F9FA0, &qword_2800F9F98, 0x277D5A940);
  sub_26738122C();
  v48(v11, 0, 1, v60);
  v64 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x8000000267491380);
  v64(v108, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_2672C3A20(&qword_2800EEFA8, type metadata accessor for SISchemaLocale);
  sub_26738120C();
  v48(v11, 0, 1, v60);
  v65 = sub_2673811AC();
  sub_266EC637C(v11, 0x75706E4969726973, 0xEF656C61636F4C74);
  v65(v108, 0);
  sub_266ECB294(0, &qword_2800F9FA8, 0x277D5A960);
  sub_266ECAF2C(&qword_2800F9FB0, &qword_2800F9FA8, 0x277D5A960);
  sub_26738120C();
  v48(v11, 0, 1, v60);
  v66 = sub_2673811AC();
  sub_266EC637C(v11, 0x65735569746C756DLL, 0xEE00707574655372);
  v66(v108, 0);
  v103(v100, *MEMORY[0x277D3E540], v105);
  v108[0] = 1;
  sub_26738114C();
  v48(v11, 0, 1, v60);
  v67 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000019, 0x80000002674913A0);
  v67(v108, 0);
  type metadata accessor for SISchemaCountryCode(0);
  sub_2672C3A20(&qword_2800F0420, type metadata accessor for SISchemaCountryCode);
  sub_26738120C();
  v48(v11, 0, 1, v60);
  v68 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674913C0);
  v68(v108, 0);
  v69 = sub_2673811AC();
  v70 = sub_266ECB6CC(v107, 0xD000000000000010, 0x80000002674913C0);
  if (!v95(v71, 1, v60))
  {
    sub_266ECB128(&unk_287891B20);
    sub_26738115C();
  }

  (v70)(v107, 0);
  v69(v108, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948);
  sub_26738122C();
  v72 = v98;
  v73 = v99;
  v99(v11, 0, 1, v98);
  v74 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x800000026746A200);
  v74(v108, 0);
  v75 = *MEMORY[0x277D3E538];
  v76 = v105;
  v77 = v100;
  v78 = v103;
  (v103)();
  v108[0] = 1;
  sub_26738114C();
  v73(v11, 0, 1, v72);
  v79 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x80000002674913E0);
  v79(v108, 0);
  v96 = "deviceCapacityInGB";
  v80 = v76;
  v78(v77, *MEMORY[0x277D3E518], v76);
  v108[0] = 1;
  sub_26738114C();
  v81 = v72;
  v82 = v72;
  v83 = v99;
  v99(v11, 0, 1, v82);
  v84 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001ALL, v96 | 0x8000000000000000);
  v84(v108, 0);
  v85 = v103;
  v103(v77, v101, v80);
  v108[0] = 1;
  sub_26738114C();
  v83(v11, 0, 1, v81);
  v86 = sub_2673811AC();
  sub_266EC637C(v11, 0x6D754E6C65646F6DLL, 0xEB00000000726562);
  v86(v108, 0);
  v87 = v101;
  v88 = v105;
  v85(v77, v101, v105);
  v108[0] = 1;
  sub_26738114C();
  v89 = v99;
  v99(v11, 0, 1, v81);
  v90 = sub_2673811AC();
  sub_266EC637C(v11, 0x6E496E6F69676572, 0xEA00000000006F66);
  v90(v108, 0);
  v103(v77, v87, v88);
  v108[0] = 1;
  sub_26738114C();
  v89(v11, 0, 1, v81);
  v91 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F726665726F7473, 0xEC0000006449746ELL);
  v91(v108, 0);
  type metadata accessor for SISchemaVoiceName(0);
  sub_2672C3A20(&qword_2800F6410, type metadata accessor for SISchemaVoiceName);
  sub_26738122C();
  v89(v11, 0, 1, v81);
  v92 = sub_2673811AC();
  sub_266EC637C(v11, 0x656C6C6174736E69, 0xEF736563696F5664);
  v92(v108, 0);
  sub_266ECB128(&unk_287891B48);
  return sub_2673811CC();
}

uint64_t sub_2672C37F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672C3890()
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672C395C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C39C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672C3A20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2672C3A68(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F9FB8, &qword_2800F9FC0, 0x277D5A838);
  a1[2] = sub_266ECAF2C(&qword_2800F9FC8, &qword_2800F9FC0, 0x277D5A838);
  result = sub_266ECAF2C(&qword_2800F9FD0, &qword_2800F9FC0, 0x277D5A838);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaDataCollectionRedactionType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x535F45544F4D4552, 0xEE00454741524F54, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v14;

  v1(v16, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x555F45544F4D4552, 0xED000044414F4C50, v11);
  v12 = *v9;
  *v9 = v15;

  return v7(v16, 0);
}

uint64_t sub_2672C3D10(uint64_t a1)
{
  v2 = sub_2672C3E14(&qword_2800F9FE8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C3D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C3E14(&qword_2800F9FE8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C3E14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDataCollectionRedactionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDataSharingOptInState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x4E574F4E4B4E55, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v26;

  v1(v30, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0x4E495F444554504FLL, 0xE800000000000000, v11);
  v12 = *v9;
  *v9 = v27;

  v7(v30, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0x554F5F444554504FLL, 0xE900000000000054, v17);
  v18 = *v15;
  *v15 = v28;

  v13(v30, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0x455353494D534944, 0xE900000000000044, v23);
  v24 = *v21;
  *v21 = v29;

  return v19(v30, 0);
}

uint64_t sub_2672C40D4(uint64_t a1)
{
  v2 = sub_2672C41D8(&qword_2800F9FF0);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C413C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C41D8(&qword_2800F9FF0);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C41D8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDataSharingOptInState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDeviceDynamicContext.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v23 = v0;
  v24 = v1;
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F66C0, 0x277D5A950);
  sub_266ECAF2C(&qword_2800F66C8, &qword_2800F66C0, 0x277D5A950);
  sub_26738120C();
  v9 = sub_26738116C();
  v22 = *(v9 - 8);
  v10 = *(v22 + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F697461636F6CLL, 0xE800000000000000);
  v11(v26, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = v23;
  v14 = *(v24 + 104);
  v24 += 104;
  v14(v4, v12, v23);
  v26[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x437972746E756F63, 0xEB0000000065646FLL);
  v15(v26, 0);
  v14(v4, *MEMORY[0x277D3E518], v13);
  v26[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026742B790);
  v16(v26, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v25, 0xD000000000000015, 0x800000026742B790);
  if (!(*(v22 + 48))(v19, 1, v9))
  {
    sub_266ECB128(&unk_287891B78);
    sub_26738115C();
  }

  (v18)(v25, 0);
  return v17(v26, 0);
}

uint64_t sub_2672C46C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C4728(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDeviceFamily.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x80000002674914F0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v56;

  v1(v65, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x8000000267491510, v11);
  v12 = *v9;
  *v9 = v57;

  v7(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x8000000267491530, v17);
  v18 = *v15;
  *v15 = v58;

  v13(v65, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000011, 0x8000000267491550, v23);
  v24 = *v21;
  *v21 = v59;

  v19(v65, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267491570, v29);
  v30 = *v27;
  *v27 = v60;

  v25(v65, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = *v32;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267491590, v35);
  v36 = *v33;
  *v33 = v61;

  v31(v65, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = *v38;
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000010, 0x80000002674915B0, v41);
  v42 = *v39;
  *v39 = v62;

  v37(v65, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = *v44;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000014, 0x80000002674915D0, v47);
  v48 = *v45;
  *v45 = v63;

  v43(v65, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000013, 0x80000002674915F0, v53);
  v54 = *v51;
  *v51 = v64;

  return v49(v65, 0);
}

uint64_t sub_2672C4C84(uint64_t a1)
{
  v2 = sub_2672C4D88(&qword_2800F9FF8);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C4CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C4D88(&qword_2800F9FF8);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C4D88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDeviceFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDeviceFixedContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v52[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v52 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v2 + 104);
  v54 = *MEMORY[0x277D3E530];
  v55 = v2 + 104;
  v56 = v1;
  v53 = v10;
  v10(v5);
  v61[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v52[2] = v12 + 56;
  v58 = v13;
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954656369766564, 0xEA00000000006570);
  v14(v61, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v60, 0x7954656369766564, 0xEA00000000006570);
  v17 = *(v12 + 48);
  v59 = v12 + 48;
  v57 = v17;
  if (!v17(v18, 1, v11))
  {
    sub_266ECB128(&unk_287891BA0);
    sub_26738115C();
  }

  (v16)(v60, 0);
  v15(v61, 0);
  v53(v5, v54, v56);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x75426D6574737973, 0xEB00000000646C69);
  v19(v61, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v60, 0x75426D6574737973, 0xEB00000000646C69);
  if (!v57(v22, 1, v11))
  {
    sub_266ECB128(&unk_287891BC8);
    sub_26738115C();
  }

  (v21)(v60, 0);
  v20(v61, 0);
  v53(v5, v54, v56);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267491640);
  v23(v61, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v60, 0xD000000000000011, 0x8000000267491640);
  if (!v57(v26, 1, v11))
  {
    sub_266ECB128(&unk_287891BF0);
    sub_26738115C();
  }

  (v25)(v60, 0);
  v24(v61, 0);
  v53(v5, v54, v56);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267491660);
  v27(v61, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v60, 0xD000000000000011, 0x8000000267491660);
  if (!v57(v30, 1, v11))
  {
    sub_266ECB128(&unk_287891C18);
    sub_26738115C();
  }

  (v29)(v60, 0);
  v28(v61, 0);
  v53(v5, v54, v56);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v11);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v31(v61, 0);
  v32 = sub_2673811AC();
  v33 = sub_266ECB6CC(v60, 0x6F4C6D6574737973, 0xEC000000656C6163);
  if (!v57(v34, 1, v11))
  {
    sub_266ECB128(&unk_287891C40);
    sub_26738115C();
  }

  (v33)(v60, 0);
  v32(v61, 0);
  v53(v5, v54, v56);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v11);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x6976654469726973, 0xEC00000044496563);
  v35(v61, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v60, 0x6976654469726973, 0xEC00000044496563);
  if (!v57(v38, 1, v11))
  {
    sub_266ECB128(&unk_287891C68);
    sub_26738115C();
  }

  (v37)(v60, 0);
  v36(v61, 0);
  v53(v5, v54, v56);
  v61[0] = 1;
  sub_26738114C();
  v58(v9, 0, 1, v11);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0x4449686365657073, 0xE800000000000000);
  v39(v61, 0);
  v40 = sub_2673811AC();
  v41 = sub_266ECB6CC(v60, 0x4449686365657073, 0xE800000000000000);
  if (!v57(v42, 1, v11))
  {
    sub_266ECB128(&unk_287891C98);
    sub_26738115C();
  }

  (v41)(v60, 0);
  v40(v61, 0);
  sub_266ECB294(0, &qword_2800FA000, 0x277D5AA20);
  sub_266ECAF2C(&qword_2800FA008, &qword_2800FA000, 0x277D5AA20);
  sub_26738120C();
  v58(v9, 0, 1, v11);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0x6553495569726973, 0xEE0073676E697474);
  v43(v61, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v60, 0x6553495569726973, 0xEE0073676E697474);
  if (!v57(v46, 1, v11))
  {
    sub_266ECB128(&unk_287891CC8);
    sub_26738115C();
  }

  (v45)(v60, 0);
  v44(v61, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8);
  sub_26738120C();
  v58(v9, 0, 1, v11);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, 0x7465536563696F76, 0xED000073676E6974);
  v47(v61, 0);
  v48 = sub_2673811AC();
  v49 = sub_266ECB6CC(v60, 0x7465536563696F76, 0xED000073676E6974);
  if (!v57(v50, 1, v11))
  {
    sub_266ECB128(&unk_287891CF0);
    sub_26738115C();
  }

  (v49)(v60, 0);
  return v48(v61, 0);
}

uint64_t sub_2672C5BE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C5C48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDeviceLockStateChanged.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E4E8], v0);
  v12[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = sub_2673811AC();
  sub_266EC637C(v8, 0x6563697665447369, 0xEE0064656B636F4CLL);
  return v10(v12, 0);
}

uint64_t sub_2672C5F44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C5FA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672C600C()
{
  result = qword_2800F9C50;
  if (!qword_2800F9C50)
  {
    sub_2672C6064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9C50);
  }

  return result;
}

unint64_t sub_2672C6064()
{
  result = qword_2800F9C48;
  if (!qword_2800F9C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C48);
  }

  return result;
}

uint64_t static SISchemaDeviceSensitivityState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674916E0, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v162;

  v1(v185, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267491710, v11);
  v12 = *v9;
  *v9 = v163;

  v7(v185, 0);
  v13 = sub_266ECB128(&unk_287891D20);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = *v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 1, v20);
  *v18 = v164;
  v16(v185, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = *v22;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267491730, v25);
  v26 = *v23;
  *v23 = v165;

  v21(v185, 0);
  v27 = sub_266ECB128(&unk_287891D50);
  v29 = v28;
  v30 = sub_2673810FC();
  v32 = v31;
  v33 = *v31;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v32;
  *v32 = 0x8000000000000000;
  sub_266ECD4CC(v27, v29, 2, v34);
  *v32 = v166;
  v30(v185, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = *v36;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267491760, v39);
  v40 = *v37;
  *v37 = v167;

  v35(v185, 0);
  v41 = sub_266ECB128(&unk_287891D80);
  v43 = v42;
  v44 = sub_2673810FC();
  v46 = v45;
  v47 = *v45;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v46;
  *v46 = 0x8000000000000000;
  sub_266ECD4CC(v41, v43, 3, v48);
  *v46 = v168;
  v44(v185, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = *v50;
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000029, 0x8000000267491790, v53);
  v54 = *v51;
  *v51 = v169;

  v49(v185, 0);
  v55 = sub_266ECB128(&unk_287891DB0);
  v57 = v56;
  v58 = sub_2673810FC();
  v60 = v59;
  v61 = *v59;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v60;
  *v60 = 0x8000000000000000;
  sub_266ECD4CC(v55, v57, 4, v62);
  *v60 = v170;
  v58(v185, 0);
  v63 = sub_26738111C();
  v65 = v64;
  v66 = *v64;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v65;
  *v65 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ELL, 0x80000002674917C0, v67);
  v68 = *v65;
  *v65 = v171;

  v63(v185, 0);
  v69 = sub_266ECB128(&unk_287891DE8);
  v71 = v70;
  v72 = sub_2673810FC();
  v74 = v73;
  v75 = *v73;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v74;
  *v74 = 0x8000000000000000;
  sub_266ECD4CC(v69, v71, 5, v76);
  *v74 = v172;
  v72(v185, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = *v78;
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x80000002674917F0, v81);
  v82 = *v79;
  *v79 = v173;

  v77(v185, 0);
  v83 = sub_266ECB128(&unk_287891E20);
  v85 = v84;
  v86 = sub_2673810FC();
  v88 = v87;
  v89 = *v87;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v88;
  *v88 = 0x8000000000000000;
  sub_266ECD4CC(v83, v85, 6, v90);
  *v88 = v174;
  v86(v185, 0);
  v91 = sub_26738111C();
  v93 = v92;
  v94 = *v92;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v93;
  *v93 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x8000000267491830, v95);
  v96 = *v93;
  *v93 = v175;

  v91(v185, 0);
  v97 = sub_266ECB128(&unk_287891E58);
  v99 = v98;
  v100 = sub_2673810FC();
  v102 = v101;
  v103 = *v101;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v102;
  *v102 = 0x8000000000000000;
  sub_266ECD4CC(v97, v99, 7, v104);
  *v102 = v176;
  v100(v185, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = *v106;
  v109 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x8000000267491860, v109);
  v110 = *v107;
  *v107 = v177;

  v105(v185, 0);
  v111 = sub_266ECB128(&unk_287891E90);
  v113 = v112;
  v114 = sub_2673810FC();
  v116 = v115;
  v117 = *v115;
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v116;
  *v116 = 0x8000000000000000;
  sub_266ECD4CC(v111, v113, 8, v118);
  *v116 = v178;
  v114(v185, 0);
  v119 = sub_26738111C();
  v121 = v120;
  v122 = *v120;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v121;
  *v121 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x8000000267491890, v123);
  v124 = *v121;
  *v121 = v179;

  v119(v185, 0);
  v125 = sub_266ECB128(&unk_287891EC0);
  v127 = v126;
  v128 = sub_2673810FC();
  v130 = v129;
  v131 = *v129;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v130;
  *v130 = 0x8000000000000000;
  sub_266ECD4CC(v125, v127, 9, v132);
  *v130 = v180;
  v128(v185, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = *v134;
  v137 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001CLL, 0x80000002674918C0, v137);
  v138 = *v135;
  *v135 = v181;

  v133(v185, 0);
  v139 = sub_266ECB128(&unk_287891EF0);
  v141 = v140;
  v142 = sub_2673810FC();
  v144 = v143;
  v145 = *v143;
  v146 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v144;
  *v144 = 0x8000000000000000;
  sub_266ECD4CC(v139, v141, 10, v146);
  *v144 = v182;
  v142(v185, 0);
  v147 = sub_26738111C();
  v149 = v148;
  v150 = *v148;
  v151 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v149;
  *v149 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000003ALL, 0x80000002674918E0, v151);
  v152 = *v149;
  *v149 = v183;

  v147(v185, 0);
  v153 = sub_266ECB128(&unk_287891F20);
  v155 = v154;
  v156 = sub_2673810FC();
  v158 = v157;
  v159 = *v157;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v158;
  *v158 = 0x8000000000000000;
  sub_266ECD4CC(v153, v155, 11, v160);
  *v158 = v184;
  return v156(v185, 0);
}

uint64_t sub_2672C6B98(uint64_t a1)
{
  v2 = sub_2672C6C9C(&qword_2800FA010);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C6C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C6C9C(&qword_2800FA010);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C6C9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDeviceSensitivityState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDeviceThermalState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  v4 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267491950, isUniquelyReferenced_nonNull_native);
  v6 = *v3;
  *v3 = v32;

  v1(v37, 0);
  v7 = sub_26738111C();
  v9 = v8;
  v10 = *v8;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v9;
  *v9 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267491970, v11);
  v12 = *v9;
  *v9 = v33;

  v7(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = *v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267491990, v17);
  v18 = *v15;
  *v15 = v34;

  v13(v37, 0);
  v19 = sub_26738111C();
  v21 = v20;
  v22 = *v20;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v21;
  *v21 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674919B0, v23);
  v24 = *v21;
  *v21 = v35;

  v19(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = *v26;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x80000002674919D0, v29);
  v30 = *v27;
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2672C6FDC(uint64_t a1)
{
  v2 = sub_2672C70E0(&qword_2800FA018);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672C7044(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672C70E0(&qword_2800FA018);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672C70E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaDeviceThermalState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaDialogOutput.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v4, *MEMORY[0x277D3E530], v0);
  v17[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x444977656976, 0xE600000000000000);
  v11(v17, 0);
  v16 = "iri.uei.DialogOutput";
  sub_266ECB294(0, &qword_2800FA020, 0x277D5A9C0);
  sub_266ECAF2C(&qword_2800FA028, &qword_2800FA020, 0x277D5A9C0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v16 | 0x8000000000000000);
  v12(v17, 0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267491A40);
  v13(v17, 0);
  sub_266ECB128(&unk_287891F50);
  return sub_2673811CC();
}

uint64_t sub_2672C7508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C756C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationAlternativeSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v25 = "nAlternativeSelected";
  v10 = *MEMORY[0x277D3E508];
  v11 = *(v2 + 104);
  v26 = v2 + 104;
  v22 = v10;
  v23 = v1;
  v11(v5, v10, v1);
  v28[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v24 = v13 + 56;
  v14(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v25 | 0x8000000000000000);
  v15(v28, 0);
  v25 = "countOfWordsReplaced";
  v11(v5, v10, v1);
  v28[0] = 1;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v25 | 0x8000000000000000);
  v16(v28, 0);
  v11(v5, v22, v23);
  v28[0] = 1;
  sub_26738114C();
  v17 = v14;
  v14(v9, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267491AE0);
  v18(v28, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948);
  sub_26738120C();
  v17(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267491B00);
  return v19(v28, 0);
}

uint64_t sub_2672C7AF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C7B5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationAlternativesPresent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v25 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v25[1] = a2;
  sub_26738119C();
  v28 = "nAlternativesPresent";
  v12 = *MEMORY[0x277D3E508];
  v13 = *(v4 + 104);
  v33 = v4 + 104;
  v31 = v3;
  v13(v7, v12, v3);
  v30 = v13;
  v34[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v15 = *(v14 - 8);
  v26 = *(v15 + 56);
  v16 = v15 + 56;
  v29 = v14;
  v26(v11, 0, 1, v14);
  v27 = v16;
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v28 | 0x8000000000000000);
  v17(v34, 0);
  v13(v7, v12, v3);
  v34[0] = 1;
  sub_26738114C();
  v18 = v14;
  v19 = v26;
  v26(v11, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, 0x8000000267491B80);
  v20(v34, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948);
  sub_26738120C();
  v21 = v29;
  v19(v11, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x8000000267491B00);
  v22(v34, 0);
  v30(v7, *MEMORY[0x277D3E4E8], v31);
  v34[0] = 1;
  sub_26738114C();
  v19(v11, 0, 1, v21);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, 0x8000000267491BA0);
  return v23(v34, 0);
}

uint64_t sub_2672C80F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C8158(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationAlternativesViewed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = a1;
  v1 = sub_26738113C();
  v19 = v1;
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v17 = "numberOfUnderlines";
  v10 = *MEMORY[0x277D3E508];
  v18 = *(v2 + 104);
  v18(v5, v10, v1);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v17 | 0x8000000000000000);
  v13(v21, 0);
  v18(v5, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x8000000267491AC0);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267491B00);
  return v15(v21, 0);
}

uint64_t sub_2672C8610(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C8674(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationContentEdited.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v5, *MEMORY[0x277D3E4E8], v1);
  v21[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800F99C8, 0x277D5A7C0);
  sub_266ECAF2C(&qword_2800F99C0, &qword_2800F99C8, 0x277D5A7C0);
  sub_26738122C();
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x8000000267491C30);
  v14(v21, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v20, 0xD000000000000014, 0x8000000267491C30);
  if (!(*(v11 + 48))(v17, 1, v10))
  {
    sub_266ECB128(&unk_287891F80);
    sub_26738115C();
  }

  (v16)(v20, 0);
  return v15(v21, 0);
}

uint64_t sub_2672C8AF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672C8B54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaDictationContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v32 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *(v4 + 104);
  v37 = *MEMORY[0x277D3E530];
  v41 = v4 + 104;
  v42 = v3;
  v36 = v12;
  v12(v7);
  v46[0] = 1;
  v40 = v7;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v38 = *(v14 + 56);
  v39 = v14 + 56;
  v38(v11, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x8000000267491C80);
  v15(v46, 0);
  v43 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v45, 0xD000000000000010, 0x8000000267491C80);
  if (!(*(v14 + 48))(v18, 1, v13))
  {
    sub_266ECB128(&unk_287891FA8);
    sub_26738115C();
  }

  (v17)(v45, 0);
  v16(v46, 0);
  sub_266ECB294(0, &qword_2800F61B8, 0x277D5A948);
  v19 = sub_266ECAF2C(&qword_2800F61C0, &qword_2800F61B8, 0x277D5A948);
  sub_26738120C();
  v20 = v38;
  v38(v11, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0x6472616F6279656BLL, 0xEE00656C61636F4CLL);
  v21(v46, 0);
  sub_26738120C();
  v35 = v13;
  v20(v11, 0, 1, v13);
  v22 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F69746174636964, 0xEF656C61636F4C6ELL);
  v22(v46, 0);
  sub_26738120C();
  v20(v11, 0, 1, v13);
  v23 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x8000000267453030);
  v23(v46, 0);
  v33 = "keyboardLanguage";
  v34 = v19;
  sub_26738120C();
  v24 = v35;
  v20(v11, 0, 1, v35);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, v33 | 0x8000000000000000);
  v25(v46, 0);
  v33 = "siriSelectedLocale";
  sub_26738122C();
  v20(v11, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000016, v33 | 0x8000000000000000);
  v26(v46, 0);
  sub_26738122C();
  v20(v11, 0, 1, v24);
  v27 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000017, 0x8000000267491CE0);
  v27(v46, 0);
  v36(v40, v37, v42);
  v46[0] = 1;
  sub_26738114C();
  v28 = v24;
  v20(v11, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v11, 0x6449656C646E7562, 0xE800000000000000);
  v29(v46, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78);
  sub_26738120C();
  v20(v11, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000012, 0x8000000267491D00);
  return v30(v46, 0);
}