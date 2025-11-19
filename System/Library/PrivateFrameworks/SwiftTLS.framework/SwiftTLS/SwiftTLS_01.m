uint64_t sub_26C0C4018()
{
  sub_26C1491AC();
  sub_26C0C3E74();
  return sub_26C14920C();
}

unint64_t sub_26C0C405C()
{
  result = qword_28047A828;
  if (!qword_28047A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A828);
  }

  return result;
}

uint64_t sub_26C0C40B0(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_26C148E8C();
      sub_26C0C4E10();
      result = sub_26C148B1C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_26C0C4230(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0C4230(uint64_t a1, uint64_t a2)
{
  result = sub_26C1487BC();
  if (!result || (result = sub_26C1487EC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26C1487DC();
      sub_26C148E8C();
      sub_26C0C4E10();
      return sub_26C148B1C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_26C0C42E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 50);
  v6 = *a2;
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 50);
  v17 = *a1;
  v18 = *(a1 + 8);
  v15 = v6;
  v16 = *(a2 + 8);
  sub_26C0BBAA4(v17, v18);
  sub_26C0BBAA4(v6, v16);
  LOBYTE(v6) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v17, &v15);
  sub_26C0BB9B0(v15, v16);
  sub_26C0BB9B0(v17, v18);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    sub_26C0BB37C(v3, v2);
    sub_26C0BB37C(v8, v7);
    if (v7 >> 60 == 15)
    {
      sub_26C0BB344(v3, v2);
      if (v5 == v10)
      {
        return v14 == v11;
      }

      return 0;
    }

    goto LABEL_8;
  }

  v17 = v3;
  *&v18 = v2;
  *(&v18 + 1) = v4;
  if (v7 >> 60 == 15)
  {
    sub_26C0BB37C(v3, v2);
    sub_26C0BB37C(v8, v7);
    sub_26C0BB37C(v3, v2);
    sub_26C0BB9B0(v3, v2);
LABEL_8:
    sub_26C0BB344(v3, v2);
    sub_26C0BB344(v8, v7);
    return 0;
  }

  v15 = v8;
  *&v16 = v7;
  *(&v16 + 1) = v9;
  sub_26C0BB37C(v3, v2);
  sub_26C0BB37C(v8, v7);
  sub_26C0BB37C(v3, v2);
  v13 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v17, &v15);
  sub_26C0BB9B0(v15, v16);
  sub_26C0BB9B0(v17, v18);
  sub_26C0BB344(v3, v2);
  result = 0;
  if ((v13 & 1) != 0 && v5 == v10)
  {
    return v14 == v11;
  }

  return result;
}

uint64_t sub_26C0C44FC(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for RawEPSK(0);
  v4 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = type metadata accessor for ImportedPSK(0);
  v7 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PSK(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A830, &qword_26C14A520);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v42 - v20;
  v22 = *(v19 + 56);
  sub_26C0C4A20(a1, &v42 - v20);
  sub_26C0C4A20(a2, &v21[v22]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26C0C4A20(v21, v14);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_26C0C4B4C(&v21[v22], v6, type metadata accessor for RawEPSK);
      *v61 = *v14;
      *&v61[8] = *(v14 + 8);
      *v58 = *v6;
      v23 = *v58;
      v44 = *(v6 + 8);
      *&v58[8] = v44;
      sub_26C0BBAA4(*v61, *&v61[8]);
      sub_26C0BBAA4(v23, v44);
      LOBYTE(v23) = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(v61, v58);
      sub_26C0BB9B0(*v58, *&v58[8]);
      sub_26C0BB9B0(*v61, *&v61[8]);
      if (v23)
      {
        v24 = MEMORY[0x26D69B8D0](&v14[*(v43 + 20)], &v6[*(v43 + 20)]);
        sub_26C0C4AEC(v6, type metadata accessor for RawEPSK);
        if (v24)
        {
          v25 = type metadata accessor for RawEPSK;
          v26 = v14;
LABEL_13:
          sub_26C0C4AEC(v26, v25);
          sub_26C0C4AEC(v21, type metadata accessor for PSK);
          return 1;
        }
      }

      else
      {
        sub_26C0C4AEC(v6, type metadata accessor for RawEPSK);
      }

      v40 = type metadata accessor for RawEPSK;
      v41 = v14;
LABEL_18:
      sub_26C0C4AEC(v41, v40);
      sub_26C0C4AEC(v21, type metadata accessor for PSK);
      return 0;
    }

    v27 = type metadata accessor for RawEPSK;
    v28 = v14;
  }

  else
  {
    sub_26C0C4A20(v21, v16);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_26C0C4B4C(&v21[v22], v9, type metadata accessor for ImportedPSK);
      v29 = *(v16 + 1);
      v54[0] = *v16;
      v54[1] = v29;
      v31 = *v16;
      v30 = *(v16 + 1);
      v54[2] = *(v16 + 2);
      v55 = *(v16 + 12);
      v50 = v31;
      v32 = *(v16 + 2);
      v51 = v30;
      v52 = v32;
      v53 = *(v16 + 12);
      v33 = *v9;
      v34 = *(v9 + 1);
      v57 = *(v9 + 12);
      v35 = *(v9 + 2);
      v56[1] = *(v9 + 1);
      v56[2] = v35;
      v36 = *v9;
      v56[0] = v33;
      v46 = v36;
      v47 = v34;
      v48 = *(v9 + 2);
      v49 = *(v9 + 12);
      sub_26C0C4BB4(v54, v45);
      sub_26C0C4BB4(v56, v45);
      v37 = sub_26C0C42E0(&v50, &v46);
      *v58 = v46;
      *&v58[16] = v47;
      v59 = v48;
      v60 = v49;
      sub_26C0C4BEC(v58);
      *v61 = v50;
      *&v61[16] = v51;
      v62 = v52;
      v63 = v53;
      sub_26C0C4BEC(v61);
      if (v37)
      {
        v38 = MEMORY[0x26D69B8D0](&v16[*(v44 + 20)], &v9[*(v44 + 20)]);
        sub_26C0C4AEC(v9, type metadata accessor for ImportedPSK);
        if (v38)
        {
          v25 = type metadata accessor for ImportedPSK;
          v26 = v16;
          goto LABEL_13;
        }
      }

      else
      {
        sub_26C0C4AEC(v9, type metadata accessor for ImportedPSK);
      }

      v40 = type metadata accessor for ImportedPSK;
      v41 = v16;
      goto LABEL_18;
    }

    v27 = type metadata accessor for ImportedPSK;
    v28 = v16;
  }

  sub_26C0C4AEC(v28, v27);
  sub_26C0C4A84(v21);
  return 0;
}

uint64_t sub_26C0C4A20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PSK(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0C4A84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A830, &qword_26C14A520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0C4AEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0C4B4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0C4C1C(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v23[0] = *a1;
  v23[1] = v4;
  v6 = *a1;
  v5 = a1[1];
  v23[2] = a1[2];
  v24 = *(a1 + 12);
  v19 = v6;
  v20 = v5;
  v21 = a1[2];
  v22 = *(a1 + 12);
  v7 = *a2;
  v8 = a2[1];
  v26 = *(a2 + 12);
  v9 = a2[2];
  v25[1] = a2[1];
  v25[2] = v9;
  v10 = *a2;
  v25[0] = v7;
  v15 = v10;
  v16 = v8;
  v17 = a2[2];
  v18 = *(a2 + 12);
  sub_26C0C4BB4(v23, v29);
  sub_26C0C4BB4(v25, v29);
  v11 = sub_26C0C42E0(&v19, &v15);
  v27[0] = v15;
  v27[1] = v16;
  v27[2] = v17;
  v28 = v18;
  sub_26C0C4BEC(v27);
  v29[0] = v19;
  v29[1] = v20;
  v29[2] = v21;
  v30 = v22;
  sub_26C0C4BEC(v29);
  if (v11)
  {
    v12 = type metadata accessor for ImportedPSK(0);
    v13 = MEMORY[0x26D69B8D0](a1 + *(v12 + 20), a2 + *(v12 + 20));
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_26C0C4D40(uint64_t a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  sub_26C0BBAA4(v7, v8);
  sub_26C0BBAA4(v5, v6);
  v2 = _s8SwiftTLS10ByteBufferV2eeoiySbAC_ACtFZ_0(&v7, &v5);
  sub_26C0BB9B0(v5, v6);
  sub_26C0BB9B0(v7, v8);
  if (v2)
  {
    v3 = *(type metadata accessor for RawEPSK(0) + 20);

    JUMPOUT(0x26D69B8D0);
  }

  return 0;
}

unint64_t sub_26C0C4E10()
{
  result = qword_28047A848;
  if (!qword_28047A848)
  {
    sub_26C148E8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A848);
  }

  return result;
}

unint64_t sub_26C0C4E68()
{
  result = qword_28047A850;
  if (!qword_28047A850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047A840, &unk_26C14A530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A850);
  }

  return result;
}

uint64_t sub_26C0C4ED0()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047A858);
  __swift_project_value_buffer(v0, qword_28047A858);
  return sub_26C148A8C();
}

uint64_t SwiftOfferedEPSK.external_identity.getter()
{
  v1 = *v0;
  sub_26C0BBAA4(*v0, *(v0 + 8));
  return v1;
}

uint64_t SwiftOfferedEPSK.context.getter()
{
  v1 = *(v0 + 16);
  sub_26C0BB37C(v1, *(v0 + 24));
  return v1;
}

uint64_t SwiftOfferedEPSK.init(external_identity:context:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  result = a1[2];
  v7 = v5 >> 62;
  if ((v5 >> 62) > 1)
  {
    if (v7 == 2)
    {
      v8 = *(v4 + 24);
    }

    else
    {
      v8 = 0;
    }
  }

  else if (v7)
  {
    v8 = v4 >> 32;
  }

  else
  {
    v8 = BYTE6(v5);
  }

  if (v8 < result)
  {
    __break(1u);
  }

  else
  {
    v9 = *a2;
    v10 = a2[1];
    v11 = a2[2];
    v12 = sub_26C14889C();
    v14 = v13;
    result = sub_26C0BB9B0(v4, v5);
    if (v10 >> 60 == 15)
    {
      v15 = 0;
      v16 = 0xF000000000000000;
LABEL_20:
      *a3 = v12;
      a3[1] = v14;
      a3[2] = v15;
      a3[3] = v16;
      return result;
    }

    v17 = v10 >> 62;
    if ((v10 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(v9 + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = v9 >> 32;
    }

    else
    {
      v18 = BYTE6(v10);
    }

    if (v18 >= v11)
    {
      v15 = sub_26C14889C();
      v16 = v19;
      result = sub_26C0BB344(v9, v10);
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t ServerHandshakeStateMachine.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = xmmword_26C14A540;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v26 = 0;
  MEMORY[0x26D69C3B0](&v26, 8);
  v9 = v26;
  v26 = 0;
  MEMORY[0x26D69C3B0](&v26, 8);
  v10 = v26;
  v26 = 0;
  MEMORY[0x26D69C3B0](&v26, 8);
  v11 = v26;
  v26 = 0;
  MEMORY[0x26D69C3B0](&v26, 8);
  v12 = v26;
  v13 = type metadata accessor for ServerHandshakeStateMachine(0);
  v14 = (a2 + v13[8]);
  *v14 = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  sub_26C0CF4F4(a1, a2 + v13[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v15 = a2 + v13[6];
  sub_26C0CF4F4(a1, v8, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  sub_26C0CF4F4(v8, v15, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v16 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v17 = v16[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v15 + v16[6]) = 0;
  v18 = (v15 + v16[7]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (v15 + v16[8]);
  *v19 = 0;
  v19[1] = 0;
  LOBYTE(v5) = v8[*(v5 + 44)];
  sub_26C0CF494(v8, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v15 + v16[9]) = v5;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v20 = sub_26C148A9C();
  __swift_project_value_buffer(v20, qword_28047A858);
  v21 = sub_26C148A7C();
  v22 = sub_26C148FEC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26C0B5000, v21, v22, "server state machine initialized", v23, 2u);
    MEMORY[0x26D69C3A0](v23, -1, -1);
  }

  return sub_26C0CF494(a1, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t _s8SwiftTLS27ServerHandshakeStateMachineV5epsks21epskSelectionCallback13configurationACSayAA4EPSKVG_ySayAA0a7OfferedL0VG_ySi_AHSgtctcSgAC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X4>, uint64_t a6@<X8>)
{
  v93 = a5;
  v7 = v6;
  v97 = a3;
  v12 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v94 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ImportedPSK(0);
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v100 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for RawEPSK(0);
  v18 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104);
  v103 = (&v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for GeneralEPSK(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20 - 8);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v113 = &v93 - v26;
  v102 = type metadata accessor for EPSK(0);
  v27 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v30 = (&v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a6 = xmmword_26C14A540;
  *(a6 + 16) = 0;
  v96 = a6;
  *(a6 + 24) = 0;
  v118 = MEMORY[0x277D84F90];
  v31 = *(a1 + 16);
  v95 = v12;
  v112 = v31;
  v98 = a4;
  v106 = a2;
  if (v31)
  {
    v32 = 0;
    v111 = *(a4 + *(v12 + 40));
    v110 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v101 = xmmword_26C14A550;
    v107 = a1;
    v108 = v28;
    v109 = v30;
    while (v32 < *(a1 + 16))
    {
      sub_26C0CF4F4(v110 + *(v28 + 72) * v32, v30, type metadata accessor for EPSK);
      v115 = v32;
      if (v111)
      {
        v114 = v7;
        if (qword_28047A638 != -1)
        {
          swift_once();
        }

        v33 = a2;
        v34 = sub_26C148A9C();
        __swift_project_value_buffer(v34, qword_28047A858);
        v35 = sub_26C148A7C();
        v36 = sub_26C148FFC();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&dword_26C0B5000, v35, v36, "raw epsk added to server", v37, 2u);
          MEMORY[0x26D69C3A0](v37, -1, -1);
        }

        v38 = *v30;
        v39 = v30[1];
        v40 = v30[2];
        v41 = *(v102 + 20);
        v42 = *(v104 + 20);
        v43 = sub_26C148BDC();
        v44 = v30;
        v45 = v103;
        (*(*(v43 - 8) + 16))(v103 + v42, v44 + v41, v43);
        *v45 = v38;
        v45[1] = v39;
        v45[2] = v40;
        sub_26C0CF42C(v45, v113, type metadata accessor for RawEPSK);
        type metadata accessor for PSK(0);
        swift_storeEnumTagMultiPayload();
        v46 = v118;
        sub_26C0BBAA4(v38, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_26C0CE6E0(0, v46[2] + 1, 1, v46, &qword_28047A988, &qword_26C14A830, type metadata accessor for GeneralEPSK);
        }

        a2 = v33;
        v48 = v46[2];
        v47 = v46[3];
        a1 = v107;
        v7 = v114;
        v30 = v109;
        if (v48 >= v47 >> 1)
        {
          v46 = sub_26C0CE6E0(v47 > 1, v48 + 1, 1, v46, &qword_28047A988, &qword_26C14A830, type metadata accessor for GeneralEPSK);
        }

        sub_26C0CF494(v30, type metadata accessor for EPSK);
        v46[2] = v48 + 1;
        sub_26C0CF42C(v113, v46 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v48, type metadata accessor for GeneralEPSK);
        v118 = v46;
      }

      else
      {
        if (qword_28047A638 != -1)
        {
          swift_once();
        }

        v49 = sub_26C148A9C();
        __swift_project_value_buffer(v49, qword_28047A858);
        v50 = sub_26C148A7C();
        v51 = sub_26C148FFC();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_26C0B5000, v50, v51, "server importing epsk", v52, 2u);
          MEMORY[0x26D69C3A0](v52, -1, -1);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A878, &qword_26C14A5A8);
        inited = swift_initStackObject();
        *(inited + 16) = v101;
        if (qword_28047A630 != -1)
        {
          swift_once();
        }

        v54 = qword_280480308;
        *(inited + 32) = word_280480300;
        *(inited + 40) = v54;
        v55 = sub_26C0C24AC(inited, &v116);
        swift_setDeallocating();
        if (v7)
        {

          sub_26C0CEB1C(a2);
          sub_26C0CF494(v98, type metadata accessor for ServerHandshakeStateMachine.Configuration);
          sub_26C0CF494(v30, type metadata accessor for EPSK);

          v90 = v117;
          v91 = v93;
          *v93 = v116;
          *(v91 + 16) = v90;
          v92 = v96[2];
          return sub_26C0BB344(*v96, v96[1]);
        }

        v56 = *(v55 + 16);
        if (v56)
        {
          v114 = 0;
          *&v116 = MEMORY[0x277D84F90];
          sub_26C0CEB2C(0, v56, 0);
          v57 = v116;
          v58 = *(v99 + 80);
          v105 = v55;
          v59 = v55 + ((v58 + 32) & ~v58);
          v60 = *(v99 + 72);
          v61 = v100;
          do
          {
            sub_26C0CF4F4(v59, v61, type metadata accessor for ImportedPSK);
            sub_26C0CF42C(v61, v25, type metadata accessor for ImportedPSK);
            type metadata accessor for PSK(0);
            swift_storeEnumTagMultiPayload();
            *&v116 = v57;
            v63 = *(v57 + 16);
            v62 = *(v57 + 24);
            if (v63 >= v62 >> 1)
            {
              sub_26C0CEB2C(v62 > 1, v63 + 1, 1);
              v61 = v100;
              v57 = v116;
            }

            *(v57 + 16) = v63 + 1;
            sub_26C0CF42C(v25, v57 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v63, type metadata accessor for GeneralEPSK);
            v59 += v60;
            --v56;
          }

          while (v56);

          v7 = v114;
          a1 = v107;
        }

        else
        {

          v57 = MEMORY[0x277D84F90];
        }

        sub_26C0C6150(v57);
        v30 = v109;
        sub_26C0CF494(v109, type metadata accessor for EPSK);
        a2 = v106;
      }

      v32 = v115 + 1;
      v28 = v108;
      if (v115 + 1 == v112)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_30:

  if (qword_28047A638 != -1)
  {
LABEL_40:
    swift_once();
  }

  v64 = sub_26C148A9C();
  __swift_project_value_buffer(v64, qword_28047A858);
  v65 = v118;

  v66 = sub_26C148A7C();
  v67 = sub_26C148FFC();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 134217984;
    *(v68 + 4) = v65[2];

    _os_log_impl(&dword_26C0B5000, v66, v67, "server has %ld epsks", v68, 0xCu);
    MEMORY[0x26D69C3A0](v68, -1, -1);
  }

  else
  {
  }

  *&v116 = 0;
  MEMORY[0x26D69C3B0](&v116, 8);
  v69 = v116;
  *&v116 = 0;
  MEMORY[0x26D69C3B0](&v116, 8);
  v70 = v116;
  *&v116 = 0;
  MEMORY[0x26D69C3B0](&v116, 8);
  v71 = v116;
  *&v116 = 0;
  MEMORY[0x26D69C3B0](&v116, 8);
  v72 = v116;
  v73 = type metadata accessor for ServerHandshakeStateMachine(0);
  v74 = v96;
  v75 = (v96 + v73[8]);
  *v75 = v69;
  v75[1] = v70;
  v75[2] = v71;
  v75[3] = v72;
  v76 = v98;
  sub_26C0CF4F4(v98, v74 + v73[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v77 = v74 + v73[6];
  v78 = v94;
  sub_26C0CF4F4(v76, v94, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  sub_26C0CF4F4(v78, v77, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v79 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v80 = v79[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v77 + v79[6]) = v65;
  v81 = (v77 + v79[7]);
  v82 = v106;
  v83 = v97;
  *v81 = v106;
  v81[1] = v83;
  v84 = (v77 + v79[8]);
  *v84 = 0;
  v84[1] = 0;
  v85 = *(v78 + *(v95 + 36));
  sub_26C0CEB4C(v82);
  sub_26C0CF494(v78, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v77 + v79[9]) = v85;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v86 = sub_26C148A7C();
  v87 = sub_26C148FEC();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&dword_26C0B5000, v86, v87, "server state machine initialized with epsks", v88, 2u);
    MEMORY[0x26D69C3A0](v88, -1, -1);

    sub_26C0CEB1C(v82);
  }

  else
  {
    sub_26C0CEB1C(v82);
  }

  return sub_26C0CF494(v76, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t sub_26C0C6040(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    result = sub_26C148F6C();
    v3 = result;
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || *(v4 + 3) >> 1 < v6)
    {
      if (v5 <= v6)
      {
        v9 = v5 + v3;
      }

      else
      {
        v9 = v5;
      }

      v4 = sub_26C0CDAAC(isUniquelyReferenced_nonNull_native, v9, 1, v4);
      v10 = *(v4 + 3) >> 1;
    }

    v11 = *(v4 + 2);
    result = sub_26C14909C();
    if (v12)
    {
      goto LABEL_22;
    }

    v13 = result;

    if (v13 >= v3)
    {
      if (v13 < 1)
      {
LABEL_17:
        *v2 = v4;
        return result;
      }

      v14 = *(v4 + 2);
      v15 = __OFADD__(v14, v13);
      v16 = v14 + v13;
      if (!v15)
      {
        *(v4 + 2) = v16;
        goto LABEL_17;
      }

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_26C0C6150(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_26C0CE6E0(isUniquelyReferenced_nonNull_native, v16, 1, v3, &qword_28047A988, &qword_26C14A830, type metadata accessor for GeneralEPSK);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for GeneralEPSK(0);
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C0C62A0(uint64_t result, char *a2)
{
  v5 = &a2[-result];
  if (result)
  {
    v6 = &a2[-result];
  }

  else
  {
    v6 = 0;
  }

  v7 = *v2;
  v8 = *(*v2 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a2;
  v3 = result;
  v10 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || (v11 = *(v7 + 24) >> 1, v11 < v9))
  {
    if (v8 <= v9)
    {
      v12 = v8 + v6;
    }

    else
    {
      v12 = v8;
    }

    result = sub_26C0CDAAC(result, v12, 1, v7);
    v7 = result;
    v11 = *(result + 24) >> 1;
  }

  v13 = *(v7 + 16);
  v14 = v11 - v13;
  v15 = 0;
  if (v3 && v4 && v4 > v3 && v11 != v13)
  {
    if (v5 >= v14)
    {
      v15 = v11 - v13;
    }

    else
    {
      v15 = v5;
    }

    if (v15 < 0)
    {
      __break(1u);
      return result;
    }

    result = memmove((v7 + v13 + 32), v3, v15);
    v3 += v15;
  }

  if (v15 < v6)
  {
    goto LABEL_34;
  }

  if (!v15)
  {
    goto LABEL_24;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v15);
  v18 = v16 + v15;
  if (!v17)
  {
    *(v7 + 16) = v18;
LABEL_24:
    if (v15 != v14 || v3 == 0 || v3 == v4)
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  v21 = *(v7 + 16);
  v24 = *v3;
  v22 = v3 + 1;
  v23 = v24;
  while (1)
  {
    v25 = *(v7 + 24);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v21 + 1)
    {
      break;
    }

    if (v21 < v26)
    {
      goto LABEL_40;
    }

LABEL_37:
    *(v7 + 16) = v21;
  }

  result = sub_26C0CDAAC((v25 > 1), v21 + 1, 1, v7);
  v7 = result;
  v26 = *(result + 24) >> 1;
  if (v21 >= v26)
  {
    goto LABEL_37;
  }

LABEL_40:
  v27 = v21 + 32;
  while (1)
  {
    *(v7 + v27) = v23;
    if (v22 == v4)
    {
      break;
    }

    v28 = *v22++;
    v23 = v28;
    if (++v27 - v26 == 32)
    {
      v21 = v26;
      goto LABEL_37;
    }
  }

  *(v7 + 16) = v27 - 31;
LABEL_32:
  *v2 = v7;
  return result;
}

uint64_t sub_26C0C6450(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_26C0CD87C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_26C0C6548(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_26C0CDAAC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s8SwiftTLS27ServerHandshakeStateMachineV4pake13configurationACSayAA16PAKEServerRecordVG_AC13ConfigurationVtAA8TLSErrorOYKcfC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v32 = type metadata accessor for ServerHandshakeStateMachine.Configuration();
  v5 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = xmmword_26C14A540;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v8 = sub_26C148A9C();
  __swift_project_value_buffer(v8, qword_28047A858);

  v9 = sub_26C148A7C();
  v10 = sub_26C148FFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1[2];

    _os_log_impl(&dword_26C0B5000, v9, v10, "server has %ld pake records", v11, 0xCu);
    MEMORY[0x26D69C3A0](v11, -1, -1);
  }

  else
  {
  }

  v34 = 0;
  MEMORY[0x26D69C3B0](&v34, 8);
  v12 = v34;
  v34 = 0;
  MEMORY[0x26D69C3B0](&v34, 8);
  v13 = v34;
  v34 = 0;
  MEMORY[0x26D69C3B0](&v34, 8);
  v14 = v34;
  v34 = 0;
  MEMORY[0x26D69C3B0](&v34, 8);
  v15 = v34;
  v16 = type metadata accessor for ServerHandshakeStateMachine(0);
  v17 = (a3 + v16[8]);
  *v17 = v12;
  v17[1] = v13;
  v17[2] = v14;
  v17[3] = v15;
  v18 = v33;
  sub_26C0CF4F4(v33, a3 + v16[9], type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v19 = a3 + v16[6];
  sub_26C0CF4F4(v18, v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v20 = sub_26C0ED6B8(a1);
  v22 = v21;
  sub_26C0CF4F4(v7, v19, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  v23 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v24 = v23[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  swift_storeEnumTagMultiPayload();
  *(v19 + v23[6]) = 0;
  v25 = (v19 + v23[7]);
  *v25 = 0;
  v25[1] = 0;
  v26 = (v19 + v23[8]);
  *v26 = v20;
  v26[1] = v22;
  LOBYTE(v20) = v7[*(v32 + 36)];
  sub_26C0CF494(v7, type metadata accessor for ServerHandshakeStateMachine.Configuration);
  *(v19 + v23[9]) = v20;
  type metadata accessor for ServerHandshakeState(0);
  swift_storeEnumTagMultiPayload();
  v27 = sub_26C148A7C();
  v28 = sub_26C148FEC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26C0B5000, v27, v28, "server state machine initialized with pake records", v29, 2u);
    MEMORY[0x26D69C3A0](v29, -1, -1);
  }

  return sub_26C0CF494(v18, type metadata accessor for ServerHandshakeStateMachine.Configuration);
}

uint64_t *ServerHandshakeStateMachine.receivedNetworkData(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(v2 + 24);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v6 = BYTE6(v3);
    v7 = v2 >> 32;
    if (!v5)
    {
      v7 = v6;
    }
  }

  v8 = v7 - v4;
  if (__OFSUB__(v7, v4))
  {
    __break(1u);
  }

  else if (qword_28047A638 == -1)
  {
    goto LABEL_10;
  }

  swift_once();
LABEL_10:
  v9 = sub_26C148A9C();
  __swift_project_value_buffer(v9, qword_28047A858);
  v10 = sub_26C148A7C();
  v11 = sub_26C148FFC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_26C0B5000, v10, v11, "received network data (%ld bytes)", v12, 0xCu);
    MEMORY[0x26D69C3A0](v12, -1, -1);
  }

  return sub_26C0E0B74(a1);
}

uint64_t sub_26C0C6B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v3;
  v6 = v2;
  v42 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v8 = *(*(v42 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v42);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v45 = type metadata accessor for ServerHandshakeState(0);
  v14 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v17 = sub_26C148A9C();
  __swift_project_value_buffer(v17, qword_28047A858);
  v18 = sub_26C148A7C();
  v19 = sub_26C148FFC();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v41 = v13;
    v21 = a2;
    v22 = v16;
    v23 = a1;
    v24 = v20;
    *v20 = 0;
    _os_log_impl(&dword_26C0B5000, v18, v19, "server attempting step handshake", v20, 2u);
    v25 = v24;
    a1 = v23;
    v16 = v22;
    a2 = v21;
    v5 = v3;
    v13 = v41;
    MEMORY[0x26D69C3A0](v25, -1, -1);
  }

  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v6 + *(v26 + 24), v16, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v35 = type metadata accessor for PartialHandshakeResult(0);
        (*(*(v35 - 8) + 56))(a2, 2, 2, v35);
LABEL_29:
        v36 = type metadata accessor for ServerHandshakeState;
LABEL_30:
        v32 = v36;
        return sub_26C0CF494(v16, v32);
      }

      sub_26C0C92D8(&v43, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v28 = "sending server certificate verify";
        v29 = sub_26C0EFF3C;
      }

      else
      {
        v28 = "sending server finished";
        v29 = sub_26C0F0228;
      }

      sub_26C0C9098(&v43, v28, v29, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_26C0C7BFC(&v43, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      sub_26C0C70E0(&v43, a2);
      if (!v5)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_26C0C88F0(&v43, a2);
    if (!v5)
    {
      goto LABEL_29;
    }

LABEL_23:
    v30 = v44;
    *a1 = v43;
    *(a1 + 16) = v30;
    v31 = type metadata accessor for ServerHandshakeState;
    goto LABEL_24;
  }

  sub_26C0CF4F4(v16, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  v33 = v42;
  if (v13[*(v42 + 40)] == 1)
  {
    sub_26C0C9098(&v43, "sending server finished", sub_26C0F0228, a2);
    if (v5)
    {
      v34 = v13;
LABEL_37:
      sub_26C0CF494(v34, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v39 = v44;
      *a1 = v43;
      *(a1 + 16) = v39;
      return sub_26C0CF494(v16, v32);
    }

    v40 = v13;
    goto LABEL_41;
  }

  sub_26C0CF494(v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  sub_26C0CF4F4(v16, v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  if ((v11[*(v33 + 48) + 2] & 1) == 0)
  {
    sub_26C0C9098(&v43, "sending server finished", sub_26C0F0228, a2);
    if (v5)
    {
      v34 = v11;
      goto LABEL_37;
    }

    v40 = v11;
LABEL_41:
    sub_26C0CF494(v40, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    return sub_26C0CF494(v16, v32);
  }

  sub_26C0CF494(v11, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
  sub_26C0C9098(&v43, "sending server certificate", sub_26C0EFC50, a2);
  if (!v5)
  {
    v36 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    goto LABEL_30;
  }

  v38 = v44;
  *a1 = v43;
  *(a1 + 16) = v38;
  v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_24:
  v32 = v31;
  return sub_26C0CF494(v16, v32);
}

uint64_t sub_26C0C70E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v69 - v6;
  v7 = sub_26C148BDC();
  v76 = *(v7 - 8);
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v10 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ServerHandshakeState.IdleState(0);
  v12 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77);
  v14 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = type metadata accessor for ServerHandshakeState(0);
  v15 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A938, &qword_26C14A7E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v69 - v19;
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v21 = sub_26C148A9C();
  v81 = __swift_project_value_buffer(v21, qword_28047A858);
  v22 = sub_26C148A7C();
  v23 = sub_26C148FFC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = a1;
    v25 = v7;
    v26 = v14;
    v27 = v20;
    v28 = a2;
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_26C0B5000, v22, v23, "server expecting client hello", v29, 2u);
    v30 = v29;
    a2 = v28;
    v20 = v27;
    v14 = v26;
    v7 = v25;
    a1 = v24;
    MEMORY[0x26D69C3A0](v30, -1, -1);
  }

  if (v82[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v101);
  }

  else
  {
    v31 = v117;
    result = sub_26C0DE9B4(v82, v82, &v99, &v101);
    if (v31)
    {
      v33 = v100[0];
      *a1 = v99;
      *(a1 + 16) = v33;
      return result;
    }

    v117 = 0;
  }

  v97[6] = v107;
  v97[7] = v108;
  v97[2] = v103;
  v97[3] = v104;
  v97[4] = v105;
  v97[5] = v106;
  v97[0] = v101;
  v97[1] = v102;
  *&v100[80] = v107;
  *&v100[96] = v108;
  *&v100[16] = v103;
  *&v100[32] = v104;
  *&v100[48] = v105;
  *&v100[64] = v106;
  v98 = v109;
  v100[112] = v109;
  v99 = v101;
  *v100 = v102;
  if (sub_26C0CF284(&v99) != 1)
  {
    if (v100[112])
    {
      v89 = *&v100[72];
      v90[0] = *&v100[88];
      *(v90 + 9) = *&v100[97];
      v85 = *&v100[8];
      v86 = *&v100[24];
      v87 = *&v100[40];
      v88 = *&v100[56];
      sub_26C0BF530(&v100[8], &v91);
      sub_26C0CCF90(&v85);
      v95 = v89;
      v96[0] = v90[0];
      *(v96 + 9) = *(v90 + 9);
      v91 = v85;
      v92 = v86;
      v93 = v87;
      v94 = v88;
      sub_26C0BF5D0(&v91);
      *a1 = xmmword_26C14A560;
      *(a1 + 16) = 2;
      v85 = xmmword_26C14A560;
      LOBYTE(v86) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      return sub_26C0CF5C4(v97, &qword_28047A940, &qword_26C14A7E8);
    }

    v70 = a2;
    v114 = *&v100[72];
    v115 = *&v100[88];
    v116 = *&v100[104];
    v110 = *&v100[8];
    v111 = *&v100[24];
    v112 = *&v100[40];
    v113 = *&v100[56];
    v91 = *&v100[8];
    v92 = *&v100[24];
    v93 = *&v100[40];
    v94 = *&v100[56];
    *(v96 + 9) = *&v100[97];
    v95 = *&v100[72];
    v96[0] = *&v100[88];
    sub_26C0CF298(&v91, &v85);
    v38 = sub_26C148A7C();
    v39 = sub_26C148FEC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26C0B5000, v38, v39, "server got client hello", v40, 2u);
      MEMORY[0x26D69C3A0](v40, -1, -1);
    }

    v72 = a1;

    v41 = v99;
    v42 = *v100;
    v71 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
    v43 = v79;
    sub_26C0CF4F4(v82 + v71, v79, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_26C0BBAA4(v41, *(&v41 + 1));
      result = sub_26C0CF494(v43, type metadata accessor for ServerHandshakeState);
      __break(1u);
    }

    else
    {
      sub_26C0CF42C(v43, v14, type metadata accessor for ServerHandshakeState.IdleState);
      v85 = v41;
      *&v86 = v42;
      v44 = (v14 + *(v77 + 28));
      v45 = *v44;
      v46 = v44[1];
      v47 = *(v14 + *(v77 + 36));
      v81 = v41;
      sub_26C0BBAA4(v41, *(&v41 + 1));
      v79 = *(&v41 + 1);
      v48 = v78;
      v49 = v117;
      sub_26C0F0D8C(v14);
      if (v49)
      {
        sub_26C0CF5C4(v97, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0BF5D0(&v100[8]);
        sub_26C0CF494(v14, type metadata accessor for ServerHandshakeState.IdleState);
        result = sub_26C0BB9B0(v81, v79);
        v50 = v84;
        v51 = v72;
        *v72 = v83;
        *(v51 + 16) = v50;
        return result;
      }

      v52 = v81;
      v117 = 0;
      v53 = v82;
      v54 = v71;
      sub_26C0CF494(v82 + v71, type metadata accessor for ServerHandshakeState);
      sub_26C0CF4F4(v48, v53 + v54, type metadata accessor for ServerHandshakeState.ClientHelloState);
      swift_storeEnumTagMultiPayload();
      if ((*(v48 + *(v75 + 80)) & 1) == 0)
      {
        sub_26C0BF5D0(&v100[8]);
        sub_26C0BB9B0(v52, v79);
        sub_26C0CF5C4(v97, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF494(v48, type metadata accessor for ServerHandshakeState.ClientHelloState);
        sub_26C0CF494(v14, type metadata accessor for ServerHandshakeState.IdleState);
        v60 = type metadata accessor for PartialHandshakeResult(0);
        (*(*(v60 - 1) + 56))(v20, 1, 1, v60);
LABEL_25:
        type metadata accessor for PartialHandshakeResult(0);
        v65 = (*(v60 - 1) + 48);
        v66 = (*v65)(v20, 1, v60);
        v67 = (v65 + 1);
        v68 = v70;
        if (v66 == 1)
        {
          sub_26C0CF5C4(v20, &qword_28047A938, &qword_26C14A7E0);
          return (*v67)(v68, 1, 2, v60);
        }

        else
        {
          sub_26C0CF42C(v20, v70, type metadata accessor for PartialHandshakeResult);
          return (*v67)(v68, 0, 2, v60);
        }
      }

      v82 = v14;
      v55 = v48 + *(v75 + 20);
      v56 = v73;
      sub_26C0CD274(v73);
      v57 = v76;
      result = (*(v76 + 48))(v56, 1, v7);
      if (result != 1)
      {
        sub_26C0BF5D0(&v100[8]);
        sub_26C0BB9B0(v52, v79);
        sub_26C0CF5C4(v97, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF494(v48, type metadata accessor for ServerHandshakeState.ClientHelloState);
        v58 = *(v57 + 32);
        v76 = v57 + 32;
        v59 = v74;
        v58(v74, v56, v7);
        v60 = type metadata accessor for PartialHandshakeResult(0);
        v81 = v7;
        v61 = v60[5];
        v62 = type metadata accessor for EncryptionLevel(0);
        v63 = *(*(v62 - 8) + 56);
        v63(&v20[v61], 1, 1, v62);
        v64 = v60[6];
        v58(&v20[v64], v59, v81);
        swift_storeEnumTagMultiPayload();
        v63(&v20[v64], 0, 1, v62);
        *v20 = xmmword_26C14A540;
        *(v20 + 2) = 0;
        *&v20[v60[7]] = xmmword_26C14A540;
        sub_26C0CF494(v82, type metadata accessor for ServerHandshakeState.IdleState);
        (*(*(v60 - 1) + 56))(v20, 0, 1, v60);
        goto LABEL_25;
      }
    }

    __break(1u);
    return result;
  }

  v34 = sub_26C148A7C();
  v35 = sub_26C148FFC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_26C0B5000, v34, v35, "incomplete message, waiting for more data", v36, 2u);
    MEMORY[0x26D69C3A0](v36, -1, -1);
  }

  v37 = type metadata accessor for PartialHandshakeResult(0);
  return (*(*(v37 - 8) + 56))(a2, 2, 2, v37);
}

uint64_t sub_26C0C7BFC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v100 = a2;
  v121 = *MEMORY[0x277D85DE8];
  v99 = type metadata accessor for PartialHandshakeResult(0);
  v98 = *(v99 - 8);
  v2 = *(v98 + 64);
  MEMORY[0x28223BE20](v99);
  v110 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v108 = &v98 - v6;
  v107 = type metadata accessor for PAKEServerState(0);
  v106 = *(v107 - 8);
  v7 = *(v106 + 64);
  MEMORY[0x28223BE20](v107);
  v101 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v104 = &v98 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A960, "L6");
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v98 - v14;
  v102 = type metadata accessor for GeneratedEphemeralPrivateKey(0);
  v16 = *(v102 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v102);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v103 = &v98 - v21;
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v26 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v113 = &v98 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v28 = sub_26C148A9C();
  __swift_project_value_buffer(v28, qword_28047A858);
  v29 = sub_26C148A7C();
  v30 = sub_26C148FEC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_26C0B5000, v29, v30, "sending server hello", v31, 2u);
    MEMORY[0x26D69C3A0](v31, -1, -1);
  }

  v105 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v114 + *(v105 + 24), v25, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v113;
    sub_26C0CF42C(v25, v113, type metadata accessor for ServerHandshakeState.ClientHelloState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C8, &qword_26C14A770);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_26C14A550;
    v115 = 1;
    *(v33 + 32) = 1027;
    *(v33 + 40) = 1;
    *(v33 + 112) = 32;
    v34 = v112;
    sub_26C0CF314(v32 + *(v112 + 44), v15, &qword_28047A960, "L6");
    if ((*(v16 + 48))(v15, 1, v102) == 1)
    {
      sub_26C0CF5C4(v15, &qword_28047A960, "L6");
    }

    else
    {
      v43 = v103;
      sub_26C0CF42C(v15, v103, type metadata accessor for GeneratedEphemeralPrivateKey);
      sub_26C0CF4F4(v43, v20, type metadata accessor for GeneratedEphemeralPrivateKey);
      v44 = qword_26C14A848[swift_getEnumCaseMultiPayload()];
      sub_26C0CF494(v20, type metadata accessor for GeneratedEphemeralPrivateKey);
      v45 = sub_26C0DB5E8();
      v47 = v45;
      v48 = 0;
      v49 = v46 >> 62;
      if ((v46 >> 62) > 1)
      {
        if (v49 == 2)
        {
          v48 = *(v45 + 16);
        }
      }

      else if (v49)
      {
        v48 = v45;
      }

      v53 = *(v33 + 16);
      v52 = *(v33 + 24);
      if (v53 >= v52 >> 1)
      {
        v96 = v46;
        v97 = sub_26C0CD87C((v52 > 1), v53 + 1, 1, v33);
        v46 = v96;
        v33 = v97;
      }

      v54 = v46 | 0x1000000000000000;
      sub_26C0CF494(v103, type metadata accessor for GeneratedEphemeralPrivateKey);
      *(v33 + 16) = v53 + 1;
      v55 = v33 + 88 * v53;
      *(v55 + 32) = v44;
      *(v55 + 40) = v47;
      *(v55 + 48) = v54;
      *(v55 + 56) = v48;
      *(v55 + 112) = 64;
      v32 = v113;
      v34 = v112;
    }

    v56 = v104;
    sub_26C0CF314(v32 + v34[18], v104, &qword_28047A890, &qword_26C14A5C0);
    v57 = type metadata accessor for GeneralEPSK(0);
    v58 = (*(*(v57 - 8) + 48))(v56, 1, v57);
    sub_26C0CF5C4(v56, &qword_28047A890, &qword_26C14A5C0);
    if (v58 != 1)
    {
      v59 = *(v32 + v34[19]);
      v61 = *(v33 + 16);
      v60 = *(v33 + 24);
      if (v61 >= v60 >> 1)
      {
        v33 = sub_26C0CD87C((v60 > 1), v61 + 1, 1, v33);
      }

      v119[0] = 1;
      *(v33 + 16) = v61 + 1;
      v62 = v33 + 88 * v61;
      *(v62 + 32) = v59;
      *(v62 + 40) = 0;
      *(v62 + 48) = v119[0];
      *(v62 + 112) = -96;
    }

    v63 = v114;
    v64 = v108;
    sub_26C0CF314(v32 + v34[21], v108, &qword_28047A888, &qword_26C14A5B8);
    v65 = v107;
    if ((*(v106 + 48))(v64, 1, v107) == 1)
    {
      sub_26C0CF5C4(v64, &qword_28047A888, &qword_26C14A5B8);
    }

    else
    {
      v66 = v101;
      sub_26C0CF42C(v64, v101, type metadata accessor for PAKEServerState);
      v67 = (v66 + *(v65 + 24));
      v68 = v67[2];
      if (v68 >> 60 == 15)
      {
        sub_26C0CF494(v66, type metadata accessor for PAKEServerState);
        v63 = v114;
      }

      else
      {
        v69 = *v67;
        v70 = v67[1];
        v71 = v67[3];
        v72 = v67[4];
        v73 = v67[5];
        v74 = v67[6];
        v75 = v67[7];
        v76 = v67[8];
        v77 = v67[9];
        v108 = v69;
        *v119 = v69;
        *&v119[8] = v70;
        *&v119[16] = v68;
        *&v119[24] = v71;
        *&v119[32] = v72;
        *&v119[40] = v73;
        v107 = v73;
        v106 = v74;
        *&v119[48] = v74;
        *&v119[56] = v75;
        v104 = v75;
        v103 = v76;
        *&v119[64] = v76;
        *&v119[72] = v77;
        v102 = v77;
        sub_26C0CF3D0(v119, v116);
        v79 = *(v33 + 16);
        v78 = *(v33 + 24);
        if (v79 >= v78 >> 1)
        {
          v33 = sub_26C0CD87C((v78 > 1), v79 + 1, 1, v33);
        }

        LOBYTE(v116[0]) = 1;
        sub_26C0CF494(v101, type metadata accessor for PAKEServerState);
        *(v33 + 16) = v79 + 1;
        v80 = v33 + 88 * v79;
        *(v80 + 32) = v108;
        *(v80 + 40) = v70;
        *(v80 + 48) = v68;
        *(v80 + 56) = v71;
        v81 = v107;
        *(v80 + 64) = v72;
        *(v80 + 72) = v81;
        v82 = v104;
        *(v80 + 80) = v106;
        *(v80 + 88) = v82;
        v83 = v102;
        *(v80 + 96) = v103;
        *(v80 + 104) = v83;
        *(v80 + 112) = -63;
        v63 = v114;
        v32 = v113;
        v34 = v112;
      }
    }

    v84 = (v63 + *(v105 + 32));
    v85 = v32 + v34[14];
    v86 = v34[6];
    v87 = v84[1];
    *&v119[8] = *v84;
    *&v119[24] = v87;
    v88 = *(v85 + 16);
    *&v119[40] = *v85;
    v89 = *(v85 + 32);
    LOWORD(v85) = *(v32 + v86);
    *v119 = 771;
    *&v119[56] = v88;
    *&v119[72] = v89;
    LOWORD(v120) = v85;
    BYTE2(v120) = 0;
    *(&v120 + 1) = v33;
    v90 = v110;
    v91 = v109;
    sub_26C0EF0D8(v119, &v117, v110);
    v116[2] = *&v119[32];
    v116[3] = *&v119[48];
    v116[4] = *&v119[64];
    v116[5] = v120;
    v116[0] = *v119;
    v116[1] = *&v119[16];
    sub_26C0CF37C(v116);
    if (v91)
    {
      result = sub_26C0CF494(v32, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v92 = v118;
      v93 = v111;
      *v111 = v117;
      *(v93 + 16) = v92;
    }

    else
    {
      sub_26C0CF494(v32, type metadata accessor for ServerHandshakeState.ClientHelloState);
      v94 = v100;
      sub_26C0CF42C(v90, v100, type metadata accessor for PartialHandshakeResult);
      result = (*(v98 + 56))(v94, 0, 2, v99);
    }
  }

  else
  {
    sub_26C0CF494(v25, type metadata accessor for ServerHandshakeState);
    v35 = ServerHandshakeStateMachine.stateDescription.getter();
    v37 = v36;
    v38 = sub_26C148A7C();
    v39 = sub_26C14900C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v119 = v41;
      *v40 = 136315138;
      v42 = sub_26C0E5DE8(v35, v37, v119);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_26C0B5000, v38, v39, "invalid state for handleReadClientHello: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x26D69C3A0](v41, -1, -1);
      MEMORY[0x26D69C3A0](v40, -1, -1);
    }

    else
    {
    }

    v50 = v111;
    *v111 = xmmword_26C14A570;
    *(v50 + 16) = 2;
    *v119 = xmmword_26C14A570;
    v119[16] = 2;
    sub_26C0BBAF8();
    result = swift_willThrowTypedImpl();
  }

  v95 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0C88F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = v2;
  v5 = type metadata accessor for PartialHandshakeResult(0);
  v72 = *(v5 - 8);
  v73 = v5;
  v6 = *(v72 + 64);
  MEMORY[0x28223BE20](v5);
  v79 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v76 = type metadata accessor for ServerHandshakeState(0);
  v8 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v15 = sub_26C148A9C();
  __swift_project_value_buffer(v15, qword_28047A858);
  v16 = sub_26C148A7C();
  v17 = sub_26C148FEC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = v14;
    v19 = v11;
    v20 = a1;
    v21 = v4;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26C0B5000, v16, v17, "sending server EE", v22, 2u);
    v23 = v22;
    v4 = v21;
    a1 = v20;
    v11 = v19;
    v14 = v18;
    MEMORY[0x26D69C3A0](v23, -1, -1);
  }

  v24 = type metadata accessor for ServerHandshakeStateMachine(0);
  v25 = *(v24 + 24);
  sub_26C0CF4F4(v4 + v25, v10, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_26C0CF42C(v10, v14, type metadata accessor for ServerHandshakeState.ServerHelloState);
    if (v14[v11[12] + 2] == 1)
    {
      v26 = sub_26C0CD87C(0, 1, 1, MEMORY[0x277D84F90]);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v26 = sub_26C0CD87C((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v29;
      v30 = &v26[88 * v28];
      *(v30 + 4) = &unk_287CC9A98;
      v30[112] = 16;
      v31 = &v14[v11[14]];
      if ((v31[1] & 1) == 0)
      {
        *&v76 = v25;
        v32 = *v31;
        v33 = *(v26 + 3);
        v34 = v28 + 2;
        if (v34 > (v33 >> 1))
        {
          v26 = sub_26C0CD87C((v33 > 1), v34, 1, v26);
        }

        LOBYTE(v77) = 1;
        *(v26 + 2) = v34;
        v35 = &v26[88 * v29];
        *(v35 + 4) = v32;
        v35[40] = v77;
        v35[112] = 112;
        v25 = v76;
      }
    }

    else
    {
      v26 = MEMORY[0x277D84F90];
    }

    v45 = &v14[v11[8]];
    v46 = *(v45 + 1);
    if (v46)
    {
      *&v76 = v25;
      v71 = v4;
      v47 = *v45;

      v48 = a1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_26C0CD87C(0, *(v26 + 2) + 1, 1, v26);
      }

      v50 = *(v26 + 2);
      v49 = *(v26 + 3);
      if (v50 >= v49 >> 1)
      {
        v26 = sub_26C0CD87C((v49 > 1), v50 + 1, 1, v26);
      }

      LOBYTE(v77) = 1;
      *(v26 + 2) = v50 + 1;
      v51 = &v26[88 * v50];
      *(v51 + 4) = v47;
      *(v51 + 5) = v46;
      v51[48] = v77;
      v51[112] = 48;
      a1 = v48;
      v4 = v71;
    }

    v52 = v4 + *(v24 + 36);
    v53 = v52 + *(type metadata accessor for ServerHandshakeStateMachine.Configuration() + 24);
    v54 = *(v53 + 8);
    v55 = *(v53 + 8);
    if (v55 >> 60 != 15)
    {
      v76 = *(v53 + 8);
      v56 = *v53;
      sub_26C0BBAA4(*v53, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_26C0CD87C(0, *(v26 + 2) + 1, 1, v26);
      }

      v58 = *(v26 + 2);
      v57 = *(v26 + 3);
      v59 = v76;
      if (v58 >= v57 >> 1)
      {
        v69 = sub_26C0CD87C((v57 > 1), v58 + 1, 1, v26);
        v59 = v76;
        v26 = v69;
      }

      *(v26 + 2) = v58 + 1;
      v60 = &v26[88 * v58];
      *(v60 + 4) = v56;
      *(v60 + 40) = v59;
      v60[112] = 0x80;
    }

    if (v14[v11[11]] == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_26C0CD87C(0, *(v26 + 2) + 1, 1, v26);
      }

      v62 = *(v26 + 2);
      v61 = *(v26 + 3);
      if (v62 >= v61 >> 1)
      {
        v26 = sub_26C0CD87C((v61 > 1), v62 + 1, 1, v26);
      }

      LOBYTE(v77) = 1;
      *(v26 + 2) = v62 + 1;
      v63 = &v26[88 * v62];
      *(v63 + 8) = 0;
      v63[36] = v77;
      v63[112] = 80;
    }

    v64 = v79;
    v65 = v75;
    sub_26C0EF6DC(v26, &v77, v79);
    sub_26C0CF494(v14, type metadata accessor for ServerHandshakeState.ServerHelloState);
    if (v65)
    {

      v67 = v78;
      *a1 = v77;
      *(a1 + 16) = v67;
    }

    else
    {

      v68 = v74;
      sub_26C0CF42C(v64, v74, type metadata accessor for PartialHandshakeResult);
      return (*(v72 + 56))(v68, 0, 2, v73);
    }
  }

  else
  {
    v36 = a1;
    sub_26C0CF494(v10, type metadata accessor for ServerHandshakeState);
    v37 = ServerHandshakeStateMachine.stateDescription.getter();
    v39 = v38;
    v40 = sub_26C148A7C();
    v41 = sub_26C14900C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v77 = v43;
      *v42 = 136315138;
      v44 = sub_26C0E5DE8(v37, v39, &v77);

      *(v42 + 4) = v44;
      _os_log_impl(&dword_26C0B5000, v40, v41, "invalid state for sendServerEncryptedExtensions: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x26D69C3A0](v43, -1, -1);
      MEMORY[0x26D69C3A0](v42, -1, -1);
    }

    else
    {
    }

    *v36 = xmmword_26C14A570;
    *(v36 + 16) = 2;
    v77 = xmmword_26C14A570;
    v78 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  return result;
}

uint64_t sub_26C0C9098@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v7 = v4;
  v9 = type metadata accessor for PartialHandshakeResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v14 = sub_26C148A9C();
  __swift_project_value_buffer(v14, qword_28047A858);
  v15 = sub_26C148A7C();
  v16 = sub_26C148FEC();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26 = v9;
    v18 = a3;
    v19 = v10;
    v20 = a4;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_26C0B5000, v15, v16, v27, v17, 2u);
    v22 = v21;
    a4 = v20;
    v10 = v19;
    a3 = v18;
    v7 = v4;
    v9 = v26;
    MEMORY[0x26D69C3A0](v22, -1, -1);
  }

  v23 = v30 + *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  result = a3(&v28);
  if (v7)
  {
    v25 = v29;
    *a1 = v28;
    *(a1 + 16) = v25;
  }

  else
  {
    sub_26C0CF42C(v13, a4, type metadata accessor for PartialHandshakeResult);
    return (*(v10 + 56))(a4, 0, 2, v9);
  }

  return result;
}

uint64_t sub_26C0C92D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A930, qword_26C14C120);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v65 - v6;
  v8 = sub_26C148BDC();
  v77 = *(v8 - 8);
  v9 = *(v77 + 64);
  MEMORY[0x28223BE20](v8);
  v71 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v11 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for ServerHandshakeState(0);
  v17 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PartialHandshakeResult(0);
  v78 = *(v19 - 8);
  v20 = *(v78 + 64);
  MEMORY[0x28223BE20](v19);
  v72 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v22 = sub_26C148A9C();
  v79 = __swift_project_value_buffer(v22, qword_28047A858);
  v23 = sub_26C148A7C();
  v24 = sub_26C148FFC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v70 = v7;
    v26 = v13;
    v27 = v8;
    v28 = a1;
    v29 = v19;
    v30 = a2;
    v31 = v25;
    *v25 = 0;
    _os_log_impl(&dword_26C0B5000, v23, v24, "server expecting client finished", v25, 2u);
    v32 = v31;
    a2 = v30;
    v19 = v29;
    a1 = v28;
    v8 = v27;
    v13 = v26;
    v7 = v70;
    MEMORY[0x26D69C3A0](v32, -1, -1);
  }

  if (v80[1] >> 60 == 15)
  {
    sub_26C0CF2F4(&v97);
  }

  else
  {
    v33 = v106;
    result = sub_26C0DE9B4(v80, v80, &v95, &v97);
    if (v33)
    {
      v35 = v96[0];
      v36 = v95;
LABEL_21:
      *a1 = v36;
      *(a1 + 16) = v35;
      return result;
    }

    v106 = 0;
  }

  v93[6] = v103;
  v93[7] = v104;
  v93[2] = v99;
  v93[3] = v100;
  v93[4] = v101;
  v93[5] = v102;
  v93[0] = v97;
  v93[1] = v98;
  *&v96[80] = v103;
  *&v96[96] = v104;
  *&v96[16] = v99;
  *&v96[32] = v100;
  *&v96[48] = v101;
  *&v96[64] = v102;
  v94 = v105;
  v96[112] = v105;
  v95 = v97;
  *v96 = v98;
  if (sub_26C0CF284(&v95) == 1)
  {
    v37 = sub_26C148A7C();
    v38 = sub_26C148FFC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_26C0B5000, v37, v38, "incomplete message, waiting for more data", v39, 2u);
      MEMORY[0x26D69C3A0](v39, -1, -1);
    }

    v40 = 2;
    return (*(v78 + 56))(a2, v40, 2, v19);
  }

  if (v96[112] == 6)
  {
    v65 = a2;
    v67 = *&v96[24];
    v68 = *&v96[16];
    v69 = *&v96[8];
    v70 = v13;
    sub_26C0BBAA4(*&v96[8], *&v96[16]);
    v41 = sub_26C148A7C();
    v42 = sub_26C148FEC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26C0B5000, v41, v42, "server got message expecting finished", v43, 2u);
      MEMORY[0x26D69C3A0](v43, -1, -1);
    }

    v44 = v95;
    v45 = *v96;
    v66 = *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
    v46 = v75;
    sub_26C0CF4F4(v80 + v66, v75, type metadata accessor for ServerHandshakeState);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v47 = v46;
      v48 = v74;
      sub_26C0CF42C(v47, v74, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      *&v85 = v69;
      *(&v85 + 1) = v68;
      *&v86 = v67;
      v83 = v44;
      v84 = v45;
      sub_26C0BF530(&v96[8], v91);
      sub_26C0BBAA4(v44, *(&v44 + 1));
      v49 = v70;
      v50 = v106;
      sub_26C0F7398(v48, &v85, &v83, &v81, v70);
      if (v50)
      {
        sub_26C0BF5D0(&v96[8]);
        sub_26C0CF5C4(v93, &qword_28047A940, &qword_26C14A7E8);
        sub_26C0CF494(v48, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        sub_26C0BB9B0(v44, *(&v44 + 1));
        result = sub_26C0BF5D0(&v96[8]);
        v35 = v82;
        v36 = v81;
        goto LABEL_21;
      }

      v75 = *(&v44 + 1);
      v106 = 0;
      v51 = v66;
      v52 = v80;
      sub_26C0CF494(v80 + v66, type metadata accessor for ServerHandshakeState);
      sub_26C0CF4F4(v49, v52 + v51, type metadata accessor for ServerHandshakeState.ReadyState);
      swift_storeEnumTagMultiPayload();
      v53 = v49 + *(ready + 20);
      sub_26C0CD4A0(v7);
      result = (*(v77 + 48))(v7, 1, v8);
      if (result != 1)
      {
        sub_26C0BB9B0(v44, v75);
        sub_26C0BF5D0(&v96[8]);
        sub_26C0CF494(v49, type metadata accessor for ServerHandshakeState.ReadyState);
        sub_26C0CF494(v48, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v54 = *(v77 + 32);
        v77 += 32;
        v80 = v54;
        v55 = v71;
        (v54)(v71, v7, v8);
        v56 = *(v19 + 20);
        v57 = type metadata accessor for EncryptionLevel(0);
        v58 = v19;
        v59 = *(*(v57 - 8) + 56);
        v60 = v72;
        v59(&v72[v56], 1, 1, v57);
        v61 = *(v58 + 24);
        (v80)(v60 + v61, v55, v8);
        swift_storeEnumTagMultiPayload();
        v59((v60 + v61), 0, 1, v57);
        v19 = v58;
        *v60 = xmmword_26C14A540;
        *(v60 + 16) = 0;
        *(v60 + *(v58 + 28)) = xmmword_26C14A540;
        v62 = sub_26C148A7C();
        v63 = sub_26C14901C();
        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_26C0B5000, v62, v63, "server completed TLS handshake", v64, 2u);
          MEMORY[0x26D69C3A0](v64, -1, -1);
        }

        sub_26C0BF5D0(&v96[8]);

        sub_26C0CF5C4(v93, &qword_28047A940, &qword_26C14A7E8);
        a2 = v65;
        sub_26C0CF42C(v60, v65, type metadata accessor for PartialHandshakeResult);
        v40 = 0;
        return (*(v78 + 56))(a2, v40, 2, v19);
      }
    }

    else
    {
      sub_26C0BF530(&v96[8], v91);
      sub_26C0BBAA4(v44, *(&v44 + 1));
      result = sub_26C0CF494(v46, type metadata accessor for ServerHandshakeState);
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v89 = *&v96[72];
    v90[0] = *&v96[88];
    *(v90 + 9) = *&v96[97];
    v85 = *&v96[8];
    v86 = *&v96[24];
    v87 = *&v96[40];
    v88 = *&v96[56];
    sub_26C0BF530(&v96[8], v91);
    sub_26C0CCF90(&v85);
    v91[4] = v89;
    v92[0] = v90[0];
    *(v92 + 9) = *(v90 + 9);
    v91[0] = v85;
    v91[1] = v86;
    v91[2] = v87;
    v91[3] = v88;
    sub_26C0BF5D0(v91);
    *a1 = xmmword_26C14A560;
    *(a1 + 16) = 2;
    v85 = xmmword_26C14A560;
    LOBYTE(v86) = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    return sub_26C0CF5C4(v93, &qword_28047A940, &qword_26C14A7E8);
  }

  return result;
}

uint64_t _s8SwiftTLS27ServerHandshakeStateMachineV07processD0AA07PartialD6ResultVSgyAA8TLSErrorOYKF@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = v2;
  v32 = a2;
  v4 = type metadata accessor for ServerHandshakeStateMachine.StepResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    if (qword_28047A638 != -1)
    {
      swift_once();
    }

    v8 = sub_26C148A9C();
    __swift_project_value_buffer(v8, qword_28047A858);
    v9 = sub_26C148A7C();
    v10 = sub_26C148FFC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_26C0B5000, v9, v10, "server attempting process step", v11, 2u);
      MEMORY[0x26D69C3A0](v11, -1, -1);
    }

    sub_26C0C6B10(&v29, v7);
    if (v3)
    {
      break;
    }

    v3 = 0;
    v12 = type metadata accessor for PartialHandshakeResult(0);
    v13 = *(v12 - 8);
    v14 = (*(v13 + 48))(v7, 2, v12);
    if (v14 != 1)
    {
      if (v14)
      {
        v16 = 1;
        v15 = v32;
      }

      else
      {
        v15 = v32;
        sub_26C0CF42C(v7, v32, type metadata accessor for PartialHandshakeResult);
        v16 = 0;
      }

      return (*(v13 + 56))(v15, v16, 1, v12);
    }
  }

  v17 = v29;
  v18 = v30;
  v19 = v31;
  sub_26C0CF018(v29, v30, v31);
  v20 = sub_26C148A7C();
  v21 = sub_26C14900C();
  sub_26C0CF030(v17, v18, v19);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    sub_26C0BBAF8();
    swift_allocError();
    *v24 = v17;
    *(v24 + 8) = v18;
    *(v24 + 16) = v19;
    sub_26C0CF018(v17, v18, v19);
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_26C0B5000, v20, v21, "processing message failed due to error %@", v22, 0xCu);
    sub_26C0CF5C4(v23, &qword_28047A880, &qword_26C14A5B0);
    MEMORY[0x26D69C3A0](v23, -1, -1);
    MEMORY[0x26D69C3A0](v22, -1, -1);
  }

  v26 = v28;
  *v28 = v17;
  v26[1] = v18;
  *(v26 + 16) = v19;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t ServerHandshakeStateMachine.peerQUICTransportParameters.getter@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v1 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v55 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v3 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v53 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v5 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ServerHandshakeState(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v56 + *(v27 + 24), v26, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v22 = v53;
        sub_26C0CF42C(v26, v53, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v42 = &v22[*(v52 + 24)];
        v32 = *v42;
        v33 = v42[1];
        v34 = v42[2];
        sub_26C0BB37C(*v42, v33);
        v43 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v22 = v55;
        sub_26C0CF42C(v26, v55, type metadata accessor for ServerHandshakeState.ReadyState);
        v48 = &v22[*(ready + 24)];
        v32 = *v48;
        v33 = v48[1];
        v34 = v48[2];
        sub_26C0BB37C(*v48, v33);
        v43 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v26, v10, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v31 = &v10[*(v7 + 28)];
        v32 = *v31;
        v33 = v31[1];
        v34 = v31[2];
        sub_26C0BB37C(*v31, v33);
        v35 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v36 = v10;
LABEL_18:
        result = sub_26C0CF494(v36, v35);
        v49 = v57;
        *v57 = v32;
        v49[1] = v33;
        v49[2] = v34;
        return result;
      }

      v22 = v51;
      sub_26C0CF42C(v26, v51, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v45 = &v22[*(v50 + 24)];
      v32 = *v45;
      v33 = v45[1];
      v34 = v45[2];
      sub_26C0BB37C(*v45, v33);
      v43 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

LABEL_17:
    v35 = v43;
    v36 = v22;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v29 = v57;
      *v57 = xmmword_26C14A540;
      v29[2] = 0;
      return sub_26C0CF494(v26, type metadata accessor for ServerHandshakeState);
    }

    sub_26C0CF42C(v26, v22, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v44 = &v22[*(v19 + 60)];
    v32 = *v44;
    v33 = v44[1];
    v34 = v44[2];
    sub_26C0BB37C(*v44, v33);
    v43 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_26C0CF42C(v26, v18, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v37 = &v18[*(v15 + 28)];
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    sub_26C0BB37C(*v37, v39);
    result = sub_26C0CF494(v18, type metadata accessor for ServerHandshakeState.ServerHelloState);
    v41 = v57;
    *v57 = v38;
  }

  else
  {
    sub_26C0CF42C(v26, v14, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v46 = &v14[*(v11 + 28)];
    v47 = *v46;
    v39 = v46[1];
    v40 = v46[2];
    sub_26C0BB37C(*v46, v39);
    result = sub_26C0CF494(v14, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v41 = v57;
    *v57 = v47;
  }

  v41[1] = v39;
  v41[2] = v40;
  return result;
}

uint64_t ServerHandshakeStateMachine.negotiatedCiphersuite.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v38 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v40 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v28 = *&v9[*(v34 + 36)];
        v30 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v31 = v9;
      }

      else
      {
        sub_26C0CF42C(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = *&v6[*(v35 + 32)];
        v30 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v31 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      sub_26C0CF42C(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = *&v13[*(v37 + 32)];
      v32 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      sub_26C0CF42C(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = *&v13[*(ready + 32)];
      v32 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = *&v17[*(v14 + 36)];
      v30 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v31 = v17;
LABEL_17:
      sub_26C0CF494(v31, v30);
      v29 = 0;
      return v28 | (v29 << 16);
    }

    sub_26C0CF42C(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = *&v13[*(v10 + 36)];
    v32 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v30 = v32;
    v31 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = *&v21[*(v18 + 24)];
    v30 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v31 = v21;
    goto LABEL_17;
  }

  sub_26C0CF494(v25, type metadata accessor for ServerHandshakeState);
  v28 = 0;
  v29 = 1;
  return v28 | (v29 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedPAKE.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A888, &qword_26C14A5B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v42 + *(v25 + 24), v24, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_26C0CF42C(v24, v4, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v33 = &v4[*(v39 + 40)];
      v28 = *v33;
      v29 = v33[2];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v32 = v4;
    }

    else
    {
      v35 = v40;
      sub_26C0CF42C(v24, v40, type metadata accessor for ServerHandshakeState.ReadyState);
      v36 = v35 + *(ready + 40);
      v28 = *v36;
      v29 = *(v36 + 2);
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
      v32 = v35;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_26C0CF42C(v24, v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
        sub_26C0CF314(&v20[*(v17 + 84)], v16, &qword_28047A888, &qword_26C14A5B8);
        sub_26C0CF494(v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
        v27 = type metadata accessor for PAKEServerState(0);
        if ((*(*(v27 - 8) + 48))(v16, 1, v27) != 1)
        {
          v28 = *&v16[*(v27 + 32)];
          sub_26C0CF494(v16, type metadata accessor for PAKEServerState);
          v29 = 0;
          return v28 | (v29 << 16);
        }

        sub_26C0CF5C4(v16, &qword_28047A888, &qword_26C14A5B8);
        goto LABEL_8;
      }

LABEL_7:
      sub_26C0CF494(v24, type metadata accessor for ServerHandshakeState);
LABEL_8:
      v28 = 0;
      v29 = 1;
      return v28 | (v29 << 16);
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v24, v12, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v30 = &v12[*(v9 + 48)];
      v28 = *v30;
      v29 = v30[2];
      v31 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v32 = v12;
    }

    else
    {
      sub_26C0CF42C(v24, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v34 = &v8[*(v5 + 48)];
      v28 = *v34;
      v29 = v34[2];
      v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v32 = v8;
    }
  }

  sub_26C0CF494(v32, v31);
  if (v29)
  {
    v28 = 0;
  }

  return v28 | (v29 << 16);
}

uint64_t ServerHandshakeStateMachine.negotiatedEPSK.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v34 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A890, &qword_26C14A5C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ServerHandshakeState(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v36 + *(v25 + 24), v24, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      sub_26C0CF42C(v24, v4, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v4[*(v33 + 48)];
      v29 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      v30 = v4;
    }

    else
    {
      v31 = v34;
      sub_26C0CF42C(v24, v34, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = *(v31 + *(ready + 48));
      v29 = type metadata accessor for ServerHandshakeState.ReadyState;
      v30 = v31;
    }

LABEL_13:
    sub_26C0CF494(v30, v29);
    return v28;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v24, v12, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v12[*(v9 + 40)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v12;
    }

    else
    {
      sub_26C0CF42C(v24, v8, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
      v28 = v8[*(v5 + 40)];
      v29 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v30 = v8;
    }

    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_6:
    sub_26C0CF494(v24, type metadata accessor for ServerHandshakeState);
    return 0;
  }

  sub_26C0CF42C(v24, v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
  sub_26C0CF314(&v20[*(v17 + 72)], v16, &qword_28047A890, &qword_26C14A5C0);
  sub_26C0CF494(v20, type metadata accessor for ServerHandshakeState.ClientHelloState);
  v27 = type metadata accessor for GeneralEPSK(0);
  v28 = (*(*(v27 - 8) + 48))(v16, 1, v27) != 1;
  sub_26C0CF5C4(v16, &qword_28047A890, &qword_26C14A5C0);
  return v28;
}

uint64_t ServerHandshakeStateMachine.epskOffered.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v38 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v40 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v28 = v9[*(v34 + 48)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v9;
      }

      else
      {
        sub_26C0CF42C(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = v6[*(v35 + 44)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v30 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      sub_26C0CF42C(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v13[*(v37 + 52)];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      sub_26C0CF42C(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = v13[*(ready + 52)];
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v17[*(v14 + 60)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v17;
LABEL_17:
      sub_26C0CF494(v30, v29);
      return v28;
    }

    sub_26C0CF42C(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = v13[*(v10 + 56)];
    v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v29 = v31;
    v30 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = v21[*(v18 + 68)];
    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v21;
    goto LABEL_17;
  }

  sub_26C0CF494(v25, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.pakeOffered.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v38 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v40 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v28 = v9[*(v34 + 52)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v9;
      }

      else
      {
        sub_26C0CF42C(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = v6[*(v35 + 48)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v30 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      sub_26C0CF42C(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v13[*(v37 + 60)];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      sub_26C0CF42C(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = v13[*(ready + 56)];
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v17[*(v14 + 68)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v17;
LABEL_17:
      sub_26C0CF494(v30, v29);
      return v28;
    }

    sub_26C0CF42C(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = v13[*(v10 + 64)];
    v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v29 = v31;
    v30 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = v21[*(v18 + 92)];
    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v21;
    goto LABEL_17;
  }

  sub_26C0CF494(v25, type metadata accessor for ServerHandshakeState);
  return 0;
}

uint64_t ServerHandshakeStateMachine.negotiatedGroup.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v50 = &v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v51 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v21 = v48;
        sub_26C0CF42C(v25, v48, type metadata accessor for ServerHandshakeState.ServerFinishedState);
        v32 = &v21[*(v47 + 44)];
        if (v32[2])
        {
          v33 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
LABEL_23:
          v28 = v33;
          v29 = v21;
          goto LABEL_24;
        }

        v57 = *v32;
        v39 = NamedGroup.metadataDescription.getter();
        v43 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
      }

      else
      {
        v21 = v50;
        sub_26C0CF42C(v25, v50, type metadata accessor for ServerHandshakeState.ReadyState);
        v37 = &v21[*(ready + 44)];
        if (v37[2])
        {
          v33 = type metadata accessor for ServerHandshakeState.ReadyState;
          goto LABEL_23;
        }

        v58 = *v37;
        v39 = NamedGroup.metadataDescription.getter();
        v43 = type metadata accessor for ServerHandshakeState.ReadyState;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v30 = &v9[*(v6 + 44)];
        if (v30[2])
        {
          v28 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
          v29 = v9;
          goto LABEL_24;
        }

        v55 = *v30;
        v39 = NamedGroup.metadataDescription.getter();
        v40 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v41 = v9;
        goto LABEL_33;
      }

      v21 = v46;
      sub_26C0CF42C(v25, v46, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
      v35 = &v21[*(v45 + 40)];
      if (v35[2])
      {
        v33 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        goto LABEL_23;
      }

      v56 = *v35;
      v39 = NamedGroup.metadataDescription.getter();
      v43 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v28 = type metadata accessor for ServerHandshakeState;
      v29 = v25;
LABEL_24:
      sub_26C0CF494(v29, v28);
      return 0;
    }

    sub_26C0CF42C(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v34 = &v21[*(v18 + 28)];
    if (v34[2])
    {
      v33 = type metadata accessor for ServerHandshakeState.ClientHelloState;
      goto LABEL_23;
    }

    v52 = *v34;
    v39 = NamedGroup.metadataDescription.getter();
    v43 = type metadata accessor for ServerHandshakeState.ClientHelloState;
LABEL_32:
    v40 = v43;
    v41 = v21;
LABEL_33:
    sub_26C0CF494(v41, v40);
    return v39;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_26C0CF42C(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v36 = &v13[*(v10 + 52)];
    if (v36[2])
    {
      v28 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
      v29 = v13;
      goto LABEL_24;
    }

    v54 = *v36;
    v39 = NamedGroup.metadataDescription.getter();
    v40 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
    v41 = v13;
    goto LABEL_33;
  }

  sub_26C0CF42C(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
  v31 = &v17[*(v14 + 52)];
  if (v31[2])
  {
    v28 = type metadata accessor for ServerHandshakeState.ServerHelloState;
    v29 = v17;
    goto LABEL_24;
  }

  v53 = *v31;
  v42 = NamedGroup.metadataDescription.getter();
  sub_26C0CF494(v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
  return v42;
}

uint64_t ServerHandshakeStateMachine.earlyDataAccepted.getter()
{
  ready = type metadata accessor for ServerHandshakeState.ReadyState(0);
  v0 = *(*(ready - 8) + 64);
  MEMORY[0x28223BE20](ready);
  v38 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for ServerHandshakeState.ServerFinishedState(0);
  v2 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ServerHandshakeState.ServerCertificateState(0);
  v7 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ServerHandshakeState.ServerHelloState(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ServerHandshakeState.ClientHelloState(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ServerHandshakeState(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v40 + *(v26 + 24), v25, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_26C0CF42C(v25, v9, type metadata accessor for ServerHandshakeState.ServerCertificateState);
        v28 = v9[*(v34 + 40)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateState;
        v30 = v9;
      }

      else
      {
        sub_26C0CF42C(v25, v6, type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState);
        v28 = v6[*(v35 + 36)];
        v29 = type metadata accessor for ServerHandshakeState.ServerCertificateVerifyState;
        v30 = v6;
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v13 = v36;
      sub_26C0CF42C(v25, v36, type metadata accessor for ServerHandshakeState.ServerFinishedState);
      v28 = v13[*(v37 + 36)];
      v31 = type metadata accessor for ServerHandshakeState.ServerFinishedState;
    }

    else
    {
      v13 = v38;
      sub_26C0CF42C(v25, v38, type metadata accessor for ServerHandshakeState.ReadyState);
      v28 = v13[*(ready + 36)];
      v31 = type metadata accessor for ServerHandshakeState.ReadyState;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_26C0CF42C(v25, v17, type metadata accessor for ServerHandshakeState.ServerHelloState);
      v28 = v17[*(v14 + 44)];
      v29 = type metadata accessor for ServerHandshakeState.ServerHelloState;
      v30 = v17;
LABEL_17:
      sub_26C0CF494(v30, v29);
      return v28;
    }

    sub_26C0CF42C(v25, v13, type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState);
    v28 = v13[*(v10 + 44)];
    v31 = type metadata accessor for ServerHandshakeState.ServerEncryptedExtensionsState;
LABEL_16:
    v29 = v31;
    v30 = v13;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_26C0CF42C(v25, v21, type metadata accessor for ServerHandshakeState.ClientHelloState);
    v28 = v21[*(v18 + 80)];
    v29 = type metadata accessor for ServerHandshakeState.ClientHelloState;
    v30 = v21;
    goto LABEL_17;
  }

  sub_26C0CF494(v25, type metadata accessor for ServerHandshakeState);
  return 2;
}

uint64_t ServerHandshakeStateMachine.stateDescription.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v0 + *(v5 + 24), v4, type metadata accessor for ServerHandshakeState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = 1701602409;
  v8 = 0x6946726576726573;
  if (EnumCaseMultiPayload != 6)
  {
    v8 = 0x726F467964616572;
  }

  v9 = 0xD000000000000017;
  if (EnumCaseMultiPayload == 4)
  {
    v9 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    v8 = v9;
  }

  v10 = 0xD000000000000019;
  if (EnumCaseMultiPayload == 2)
  {
    v10 = 0x6548726576726573;
  }

  if (EnumCaseMultiPayload)
  {
    v7 = 0x6548746E65696C63;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v7 = v10;
  }

  if (EnumCaseMultiPayload <= 3)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  sub_26C0CF494(v4, type metadata accessor for ServerHandshakeState);
  return v11;
}

BOOL ServerHandshakeStateMachine.handshakeComplete.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v0 + *(v5 + 24), v4, type metadata accessor for ServerHandshakeState);
  v6 = swift_getEnumCaseMultiPayload() > 6;
  sub_26C0CF494(v4, type metadata accessor for ServerHandshakeState);
  return v6;
}

uint64_t ServerHandshakeStateMachine.handshakeStarted.getter()
{
  v1 = type metadata accessor for ServerHandshakeState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ServerHandshakeStateMachine(0);
  sub_26C0CF4F4(v0 + *(v5 + 24), v4, type metadata accessor for ServerHandshakeState);
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = 1;
  }

  else
  {
    v6 = *(v0 + 24);
  }

  sub_26C0CF494(v4, type metadata accessor for ServerHandshakeState);
  return v6;
}

void sub_26C0CCF90(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = v1 + *(type metadata accessor for ServerHandshakeStateMachine(0) + 24);
  v4 = sub_26C0EEF0C();
  v6 = 0x6548746E65696C63;
  v7 = 0xE800000000000000;
  v8 = 0x64656873696E6966;
  if (v2 != 6)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000026C15A4C0;
  }

  v9 = 0xEB00000000657461;
  v10 = 0x6369666974726563;
  if (v2 != 4)
  {
    v10 = 0xD000000000000011;
    v9 = 0x800000026C15A4E0;
  }

  if (v2 <= 5)
  {
    v8 = v10;
    v7 = v9;
  }

  v11 = 0x800000026C15A520;
  v12 = 0xD000000000000012;
  if (v2 == 2)
  {
    v12 = 0xD000000000000013;
  }

  else
  {
    v11 = 0x800000026C15A500;
  }

  if (v2)
  {
    v6 = 0x6548726576726573;
  }

  if (v2 <= 1)
  {
    v11 = 0xEB000000006F6C6CLL;
  }

  else
  {
    v6 = v12;
  }

  v13 = v2 <= 3;
  if (v2 <= 3)
  {
    v14 = v6;
  }

  else
  {
    v14 = v8;
  }

  if (v13)
  {
    v15 = v11;
  }

  else
  {
    v15 = v7;
  }

  v16 = v4;
  v17 = v5;
  if (qword_28047A638 != -1)
  {
    swift_once();
  }

  v18 = sub_26C148A9C();
  __swift_project_value_buffer(v18, qword_28047A858);

  oslog = sub_26C148A7C();
  v19 = sub_26C14900C();

  if (os_log_type_enabled(oslog, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315394;
    v22 = sub_26C0E5DE8(v14, v15, &v25);

    *(v20 + 4) = v22;
    *(v20 + 12) = 2080;
    v23 = sub_26C0E5DE8(v16, v17, &v25);

    *(v20 + 14) = v23;
    _os_log_impl(&dword_26C0B5000, oslog, v19, "unexpected message %s in state %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69C3A0](v21, -1, -1);
    MEMORY[0x26D69C3A0](v20, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_26C0CD274@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A948, &qword_26C14A7F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  sub_26C0CF314(v2, &v18 - v10, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 3)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v11, v7, &qword_28047A948, &qword_26C14A7F0);
      v13 = *(v4 + 44);
      v14 = sub_26C148BDC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, &v7[v13], v14);
      sub_26C0CF5C4(v7, &qword_28047A948, &qword_26C14A7F0);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  else
  {
    sub_26C0CF5C4(v11, &qword_28047A870, &qword_26C14A5A0);
  }

  v17 = sub_26C148BDC();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

uint64_t sub_26C0CD4A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A968, &unk_26C14A810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A970, "DG");
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  sub_26C0CF314(v2, &v24 - v14, &qword_28047A870, &qword_26C14A5A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_26C0CF55C(v15, v7, &qword_28047A968, &unk_26C14A810);
      v17 = sub_26C148BDC();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v7, v17);
      sub_26C0CF5C4(v7, &qword_28047A968, &unk_26C14A810);
      return (*(v18 + 56))(a1, 0, 1, v17);
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload < 2)
  {
    sub_26C0CF5C4(v15, &qword_28047A870, &qword_26C14A5A0);
LABEL_6:
    v20 = sub_26C148BDC();
    return (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  sub_26C0CF55C(v15, v11, &qword_28047A970, "DG");
  v21 = *(v8 + 48);
  v22 = sub_26C148BDC();
  v23 = *(v22 - 8);
  (*(v23 + 16))(a1, &v11[v21], v22);
  sub_26C0CF5C4(v11, &qword_28047A970, "DG");
  return (*(v23 + 56))(a1, 0, 1, v22);
}

uint64_t sub_26C0CD7D0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_26C0CD81C(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_26C0CD87C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C8, &qword_26C14A770);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_26C0CD9A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A928, &unk_26C14A7D0);
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

char *sub_26C0CDAAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8C0, qword_26C14C170);
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

char *sub_26C0CDBF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A978, &qword_26C14A820);
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

char *sub_26C0CDCF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A950, &qword_26C14A7F8);
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

char *sub_26C0CDDF0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A958, &unk_26C14A800);
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

char *sub_26C0CDF10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A910, &qword_26C14A7B8);
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

char *sub_26C0CE01C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A908, &qword_26C14A7B0);
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

char *sub_26C0CE13C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8A8, &qword_26C14A748);
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

char *sub_26C0CE248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8E0, &qword_26C14A788);
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

char *sub_26C0CE39C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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

char *sub_26C0CE4AC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_26C0CE5CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

size_t sub_26C0CE6E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_26C0CE8BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8B0, &unk_26C14A750);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A840, &unk_26C14A530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_26C0CE9F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_26C0CEA20(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_26C0CEA40(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_26C0CEA50(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26C0CEB1C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

size_t sub_26C0CEB2C(size_t a1, int64_t a2, char a3)
{
  result = sub_26C0CEB9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26C0CEB4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_26C0CEB5C(char *a1, int64_t a2, char a3)
{
  result = sub_26C0CED74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_26C0CEB7C(char *a1, int64_t a2, char a3)
{
  result = sub_26C0CEE70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_26C0CEB9C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A988, &qword_26C14A830);
  v10 = *(type metadata accessor for GeneralEPSK(0) - 8);
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
  v15 = *(type metadata accessor for GeneralEPSK(0) - 8);
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

char *sub_26C0CED74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A980, &qword_26C14A828);
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

char *sub_26C0CEE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A8D0, &qword_26C14A778);
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

uint64_t sub_26C0CEF7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26C148FAC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D69BCC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_26C0CF018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_26C0CF030(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0CF070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26C0CF0C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_26C0CF14C()
{
  result = type metadata accessor for ServerHandshakeState(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ServerHandshakeStateMachine.Configuration();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26C0CF228()
{
  v0 = type metadata accessor for PartialHandshakeResult(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_26C0CF284(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 > 7)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

double sub_26C0CF2F4(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = -1;
  return result;
}

uint64_t sub_26C0CF314(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C0CF42C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0CF494(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26C0CF4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26C0CF55C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_26C0CF5C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t PartialHandshakeResult.handshakeBytesToSend.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  return sub_26C0BB37C(v2, v3);
}

__n128 PartialHandshakeResult.handshakeBytesToSend.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_i64[0];
  v3 = v1[2];
  sub_26C0BB344(*v1, v1[1]);
  result = v5;
  *v1 = v5;
  v1[2] = v2;
  return result;
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return sub_26C0CF768(v3, a1);
}

uint64_t sub_26C0CF768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.newWriteEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 20);

  return sub_26C0CF81C(a1, v3);
}

uint64_t sub_26C0CF81C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A998, &qword_26C14A860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return sub_26C0CF768(v3, a1);
}

uint64_t PartialHandshakeResult.newReadEncryptionLevel.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PartialHandshakeResult(0) + 24);

  return sub_26C0CF81C(a1, v3);
}

uint64_t PartialHandshakeResult.sessionTicket.getter()
{
  v1 = v0 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  v2 = *v1;
  sub_26C0BB37C(*v1, *(v1 + 8));
  return v2;
}

uint64_t PartialHandshakeResult.sessionTicket.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for PartialHandshakeResult(0) + 28);
  result = sub_26C0BB344(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t EncryptionLevel.description.getter()
{
  v1 = type metadata accessor for EncryptionLevel(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0CFBBC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = sub_26C148BDC();
  (*(*(v6 - 8) + 8))(v4, v6);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return 0x6B616873646E6168;
    }

    v8 = 0x63696C707061;
  }

  else
  {
    v8 = 0x44796C726165;
  }

  return v8 & 0xFFFFFFFFFFFFLL | 0x7461000000000000;
}

uint64_t sub_26C0CFBBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EncryptionLevel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_26C0CFC48()
{
  sub_26C0CFD5C(319, &qword_281591F48);
  if (v0 <= 0x3F)
  {
    sub_26C0CFD04();
    if (v1 <= 0x3F)
    {
      sub_26C0CFD5C(319, &qword_281592480);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26C0CFD04()
{
  if (!qword_281591618[0])
  {
    type metadata accessor for EncryptionLevel(255);
    v0 = sub_26C14902C();
    if (!v1)
    {
      atomic_store(v0, qword_281591618);
    }
  }
}

void sub_26C0CFD5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_26C14902C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_26C0CFDA8()
{
  sub_26C0CFE0C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_26C0CFE0C()
{
  if (!qword_281590340)
  {
    v0 = sub_26C148BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_281590340);
    }
  }
}

uint64_t sub_26C0CFEBC()
{
  result = type metadata accessor for PeerCertificateBundle.Bundle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C0CFF50()
{
  v0 = sub_26C148E2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_26C0CFFA8()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047A9A0);
  __swift_project_value_buffer(v0, qword_28047A9A0);
  return sub_26C148A8C();
}

uint64_t sub_26C0D0028@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v8 = a1;
  v9 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[3];
  if (v8 != 2)
  {
    sub_26C0BB9B0(*a2, a2[1]);

    if (a1)
    {
      if (qword_28047A640 != -1)
      {
        swift_once();
      }

      v24 = sub_26C148A9C();
      __swift_project_value_buffer(v24, qword_28047A9A0);
      v25 = sub_26C148A7C();
      v26 = sub_26C14900C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v58 = v28;
        *v27 = 136315138;
        v29 = sub_26C0DA5DC(a1);
        v31 = sub_26C0E5DE8(v29, v30, &v58);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_26C0B5000, v25, v26, "unsupported certificate type from peer: %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x26D69C3A0](v28, -1, -1);
        MEMORY[0x26D69C3A0](v27, -1, -1);
      }

      v32 = xmmword_26C14A560;
    }

    else
    {
      if (qword_28047A640 != -1)
      {
        swift_once();
      }

      v38 = sub_26C148A9C();
      __swift_project_value_buffer(v38, qword_28047A9A0);
      v39 = sub_26C148A7C();
      v40 = sub_26C14900C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_26C0B5000, v39, v40, "invalid attempt to negotiate x.509 auth", v41, 2u);
        MEMORY[0x26D69C3A0](v41, -1, -1);
      }

      v32 = xmmword_26C14A8E0;
    }

    goto LABEL_25;
  }

  if (v15[2] != 1)
  {
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v33 = sub_26C148A9C();
    __swift_project_value_buffer(v33, qword_28047A9A0);
    sub_26C0BBAA4(v13, v14);

    v34 = sub_26C148A7C();
    v35 = sub_26C14900C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134217984;
      v37 = v15[2];
      sub_26C0BB9B0(v13, v14);

      *(v36 + 4) = v37;
      sub_26C0BB9B0(v13, v14);

      _os_log_impl(&dword_26C0B5000, v34, v35, "invalid number of public key entries: %ld", v36, 0xCu);
      MEMORY[0x26D69C3A0](v36, -1, -1);
    }

    else
    {
      sub_26C0BB9B0(v13, v14);

      sub_26C0BB9B0(v13, v14);
    }

    v32 = xmmword_26C14A8F0;
LABEL_25:
    v42 = v60;
    *v60 = v32;
    *(v42 + 16) = 2;
    v58 = v32;
    v59 = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  *&v57 = a4;
  v16 = v15[5];
  v17 = v15[6];
  v18 = v15[7];
  v19 = v15[4];
  sub_26C0BBAA4(v19, v16);

  sub_26C0BB9B0(v13, v14);

  if (*(v18 + 16))
  {
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v20 = sub_26C148A9C();
    __swift_project_value_buffer(v20, qword_28047A9A0);
    sub_26C0BBAA4(v19, v16);

    v21 = sub_26C148A7C();
    v22 = sub_26C14900C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = *(v18 + 16);
      sub_26C0BB9B0(v19, v16);

      _os_log_impl(&dword_26C0B5000, v21, v22, "invalid number of extensions: %ld", v23, 0xCu);
      MEMORY[0x26D69C3A0](v23, -1, -1);
    }

    else
    {
      sub_26C0BB9B0(v19, v16);
    }

    v51 = v60;
    *v60 = xmmword_26C14A8F0;
    *(v51 + 16) = 2;
    v58 = xmmword_26C14A8F0;
    v59 = 2;
    sub_26C0BBAF8();
    swift_willThrowTypedImpl();
    sub_26C0BB9B0(v19, v16);
  }

  else
  {
    v56 = v17;
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v44 = sub_26C148A9C();
    __swift_project_value_buffer(v44, qword_28047A9A0);
    v45 = sub_26C148A7C();
    v46 = sub_26C148FFC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_26C0B5000, v45, v46, "constructing public key from peer bytes", v47, 2u);
      MEMORY[0x26D69C3A0](v47, -1, -1);
    }

    v48 = v16 >> 62;
    v49 = v57;
    if ((v16 >> 62) > 1)
    {
      result = v56;
      if (v48 == 2)
      {
        v50 = *(v19 + 24);
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      if (v48)
      {
        v50 = v19 >> 32;
      }

      else
      {
        v50 = BYTE6(v16);
      }

      result = v56;
    }

    if (v50 < result)
    {
      __break(1u);
    }

    else
    {
      *&v58 = sub_26C14889C();
      *(&v58 + 1) = v52;
      sub_26C0D3AE8();
      sub_26C148DEC();
      if (v4)
      {

        v57 = xmmword_26C14A900;
        v58 = xmmword_26C14A900;
        v59 = 2;
        sub_26C0BBAF8();
        swift_willThrowTypedImpl();
        sub_26C0BB9B0(v19, v16);

        v53 = v60;
        *v60 = v57;
        *(v53 + 16) = 2;
      }

      else
      {
        sub_26C0BB9B0(v19, v16);

        v54 = sub_26C148E2C();
        (*(*(v54 - 8) + 56))(v12, 0, 1, v54);
        return sub_26C0D3B3C(v12, v49);
      }
    }
  }

  return result;
}

uint64_t sub_26C0D07CC(void *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v71 = a4;
  v69 = a3;
  v65 = a2;
  v6 = sub_26C148DBC();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v68 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26C148E2C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v20 = a1[1];
  v19 = a1[2];
  v21 = a1[3];
  sub_26C0D37A0(v4, v17);
  result = (*(v10 + 48))(v17, 1, v9);
  if (result != 1)
  {
    v23 = *(v10 + 32);
    v76 = v13;
    v23(v13, v17, v9);
    v24 = v9;
    if (v18 != 1027)
    {
      if (qword_28047A640 != -1)
      {
        swift_once();
      }

      v33 = sub_26C148A9C();
      __swift_project_value_buffer(v33, qword_28047A9A0);
      sub_26C0BBAA4(v20, v19);
      v34 = sub_26C148A7C();
      v35 = sub_26C14900C();
      sub_26C0BB9B0(v20, v19);
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = v24;
        v38 = swift_slowAlloc();
        *&v74 = v38;
        *v36 = 136315138;
        v39 = sub_26C0D7D74(v18);
        v41 = sub_26C0E5DE8(v39, v40, &v74);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_26C0B5000, v34, v35, "unsupported algorithm from peer: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v42 = v38;
        v24 = v37;
        MEMORY[0x26D69C3A0](v42, -1, -1);
        MEMORY[0x26D69C3A0](v36, -1, -1);
      }

      v27 = v76;
      v43 = v71;
      *v71 = xmmword_26C14A8E0;
      *(v43 + 16) = 2;
      v74 = xmmword_26C14A8E0;
      LOBYTE(v75) = 2;
      sub_26C0BBAF8();
      swift_willThrowTypedImpl();
      (*(v10 + 8))(v27, v24);
      return v27 & 1;
    }

    v63[1] = v4;
    v64 = v9;
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v25 = sub_26C148A9C();
    v26 = __swift_project_value_buffer(v25, qword_28047A9A0);
    v27 = sub_26C148A7C();
    v28 = sub_26C148FFC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26C0B5000, v27, v28, "validating signature from peer server", v29, 2u);
      MEMORY[0x26D69C3A0](v29, -1, -1);
    }

    LOBYTE(v27) = v69;
    v30 = v70;
    result = sub_26C0D257C(&v72, &v74);
    if (v30)
    {
      (*(v10 + 8))(v76, v64);
      v31 = v73;
      v32 = v71;
      *v71 = v72;
      *(v32 + 16) = v31;
      return v27 & 1;
    }

    v44 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v44 == 2)
      {
        v45 = *(v20 + 24);
      }

      else
      {
        v45 = 0;
      }
    }

    else if (v44)
    {
      v45 = v20 >> 32;
    }

    else
    {
      v45 = BYTE6(v19);
    }

    *&v70 = v26;
    if (v45 < v21)
    {
      __break(1u);
    }

    else
    {
      v47 = *(&v74 + 1);
      v46 = v74;
      v48 = v75;
      *&v74 = sub_26C14889C();
      *(&v74 + 1) = v49;
      sub_26C0BE710();
      v50 = v68;
      result = sub_26C148DAC();
      v51 = v47 >> 62;
      v52 = v76;
      if ((v47 >> 62) > 1)
      {
        v53 = v46;
        if (v51 == 2)
        {
          v54 = *(v46 + 24);
        }

        else
        {
          v54 = 0;
        }
      }

      else
      {
        v53 = v46;
        if (v51)
        {
          v54 = v46 >> 32;
        }

        else
        {
          v54 = BYTE6(v47);
        }
      }

      if (v54 >= v48)
      {
        *&v74 = sub_26C14889C();
        *(&v74 + 1) = v55;
        v56 = sub_26C148DCC();
        sub_26C0BB9B0(v74, *(&v74 + 1));
        v27 = sub_26C148A7C();
        if (v56)
        {
          v57 = sub_26C148FFC();
          if (os_log_type_enabled(v27, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&dword_26C0B5000, v27, v57, "validation succeeded", v58, 2u);
            MEMORY[0x26D69C3A0](v58, -1, -1);
          }

          LOBYTE(v27) = sub_26C0D0F0C(v65);
        }

        else
        {
          v59 = sub_26C14900C();
          if (os_log_type_enabled(v27, v59))
          {
            v60 = swift_slowAlloc();
            *v60 = 0;
            _os_log_impl(&dword_26C0B5000, v27, v59, "signature validation failed", v60, 2u);
            MEMORY[0x26D69C3A0](v60, -1, -1);
          }

          LOBYTE(v27) = 0;
        }

        v62 = v66;
        v61 = v67;
        sub_26C0BB9B0(v53, v47);
        (*(v62 + 8))(v50, v61);
        (*(v10 + 8))(v52, v64);
        return v27 & 1;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0D0F0C(uint64_t a1)
{
  v2 = v1;
  v73[3] = *MEMORY[0x277D85DE8];
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v63 - v10;
  v12 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0D37A0(v2, v15);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    goto LABEL_69;
  }

  (*(v5 + 32))(v11, v15, v4);
  v16 = *(a1 + 16);
  if (!v16)
  {
    v58 = 0;
    (*(v5 + 8))(v11, v4);
    goto LABEL_60;
  }

  v19 = *(v5 + 16);
  v18 = v5 + 16;
  v17 = v19;
  v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
  v21 = *(v18 + 56);
  v69 = 0;
  v70 = v21;
  v71 = v18;
  v22 = (v18 - 8);
  v66 = v11;
  v67 = v4;
  v65 = v19;
  for (i = v19(v9, v20, v4); ; i = v17(v9, v20, v4))
  {
    v25 = MEMORY[0x26D69BB30](i);
    v27 = v26;
    v28 = MEMORY[0x26D69BB30]();
    v30 = v27 >> 62;
    v31 = v29 >> 62;
    if (v27 >> 62 == 3)
    {
      v32 = 0;
      if (!v25 && v27 == 0xC000000000000000 && v29 >> 62 == 3)
      {
        v32 = 0;
        if (!v28 && v29 == 0xC000000000000000)
        {
          sub_26C0BB9B0(0, 0xC000000000000000);
          v59 = 0;
          v60 = 0xC000000000000000;
          goto LABEL_58;
        }
      }

LABEL_25:
      if (v31 > 1)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

    if (v30 <= 1)
    {
      if (!v30)
      {
        v32 = BYTE6(v27);
        if (v31 > 1)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      LODWORD(v32) = HIDWORD(v25) - v25;
      if (__OFSUB__(HIDWORD(v25), v25))
      {
        goto LABEL_64;
      }

      v32 = v32;
      goto LABEL_25;
    }

    if (v30 == 2)
    {
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      v35 = __OFSUB__(v33, v34);
      v32 = v33 - v34;
      if (v35)
      {
        goto LABEL_63;
      }

      goto LABEL_25;
    }

    v32 = 0;
    if (v31 > 1)
    {
LABEL_31:
      if (v31 != 2)
      {
        if (!v32)
        {
          break;
        }

LABEL_5:
        sub_26C0BB9B0(v28, v29);
        sub_26C0BB9B0(v25, v27);
        v24 = *v22;
        (*v22)(v9, v4);
        goto LABEL_6;
      }

      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      v35 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v35)
      {
        goto LABEL_62;
      }

      goto LABEL_33;
    }

LABEL_26:
    if (!v31)
    {
      v36 = BYTE6(v29);
      goto LABEL_33;
    }

    LODWORD(v36) = HIDWORD(v28) - v28;
    if (__OFSUB__(HIDWORD(v28), v28))
    {
      __break(1u);
LABEL_62:
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
    }

    v36 = v36;
LABEL_33:
    if (v32 != v36)
    {
      goto LABEL_5;
    }

    if (v32 < 1)
    {
      break;
    }

    if (v30 > 1)
    {
      v43 = v28;
      v68 = v29;
      if (v30 != 2)
      {
        memset(v73, 0, 14);
        v40 = v68;
        v57 = v69;
        sub_26C0BE04C(v73, v28, v68, &v72);
        v69 = v57;
        v42 = v43;
        goto LABEL_51;
      }

      v44 = *(v25 + 16);
      v64 = *(v25 + 24);
      v45 = sub_26C1487BC();
      if (v45)
      {
        v46 = sub_26C1487EC();
        if (__OFSUB__(v44, v46))
        {
          goto LABEL_67;
        }

        v45 += v44 - v46;
      }

      if (__OFSUB__(v64, v44))
      {
        goto LABEL_66;
      }

      sub_26C1487DC();
      v47 = v45;
      v49 = v68;
      v48 = v69;
      sub_26C0BE04C(v47, v43, v68, v73);
      v69 = v48;
      v50 = v43;
    }

    else
    {
      if (!v30)
      {
        v73[0] = v25;
        LOWORD(v73[1]) = v27;
        BYTE2(v73[1]) = BYTE2(v27);
        BYTE3(v73[1]) = BYTE3(v27);
        BYTE4(v73[1]) = BYTE4(v27);
        BYTE5(v73[1]) = BYTE5(v27);
        v39 = v28;
        v40 = v29;
        v41 = v69;
        sub_26C0BE04C(v73, v28, v29, &v72);
        v69 = v41;
        v42 = v39;
LABEL_51:
        sub_26C0BB9B0(v42, v40);
        sub_26C0BB9B0(v25, v27);
        v56 = v72;
        goto LABEL_52;
      }

      if (v25 >> 32 < v25)
      {
        goto LABEL_65;
      }

      v64 = v28;
      v68 = v29;
      v51 = sub_26C1487BC();
      if (v51)
      {
        v52 = sub_26C1487EC();
        if (__OFSUB__(v25, v52))
        {
          goto LABEL_68;
        }

        v51 += v25 - v52;
      }

      sub_26C1487DC();
      v53 = v51;
      v54 = v64;
      v49 = v68;
      v55 = v69;
      sub_26C0BE04C(v53, v64, v68, v73);
      v69 = v55;
      v50 = v54;
    }

    sub_26C0BB9B0(v50, v49);
    sub_26C0BB9B0(v25, v27);
    v56 = v73[0];
LABEL_52:
    v24 = *v22;
    v4 = v67;
    (*v22)(v9, v67);
    v17 = v65;
    if (v56)
    {
      v58 = 1;
      v11 = v66;
      goto LABEL_59;
    }

    v11 = v66;
LABEL_6:
    v20 += v70;
    if (!--v16)
    {
      v58 = 0;
      goto LABEL_59;
    }
  }

  sub_26C0BB9B0(v28, v29);
  v59 = v25;
  v60 = v27;
LABEL_58:
  sub_26C0BB9B0(v59, v60);
  v24 = *v22;
  (*v22)(v9, v4);
  v58 = 1;
LABEL_59:
  v24(v11, v4);
LABEL_60:
  v61 = *MEMORY[0x277D85DE8];
  return v58;
}

uint64_t sub_26C0D1520(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = sub_26C148E2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C0D37A0(a1, v10);
  if ((*(v3 + 48))(v10, 1, v2) != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    LOBYTE(v35) = 0;
    v15 = MEMORY[0x277D838B0];
    v16 = MEMORY[0x277CC9C18];
    v38 = MEMORY[0x277D838B0];
    v39 = MEMORY[0x277CC9C18];
    v36 = &v35;
    v37 = (&v35 + 1);
    v17 = __swift_project_boxed_opaque_existential_1(&v36, MEMORY[0x277D838B0]);
    v19 = *v17;
    v18 = v17[1];
    sub_26C14888C();
    v20 = __swift_destroy_boxed_opaque_existential_1(&v36);
    v21 = MEMORY[0x26D69BB30](v20);
    v23 = v21;
    v24 = v22;
    v25 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_14;
      }

      v28 = *(v21 + 16);
      v27 = *(v21 + 24);
      v29 = __OFSUB__(v27, v28);
      v26 = v27 - v28;
      if (!v29)
      {
LABEL_12:
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        __break(1u);
LABEL_14:
        v26 = 0;
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v25)
    {
      v26 = BYTE6(v22);
LABEL_15:
      v38 = v15;
      v39 = v16;
      v35 = bswap64(v26);
      v36 = &v35;
      v37 = &v36;
      v30 = __swift_project_boxed_opaque_existential_1(&v36, v15);
      v32 = *v30;
      v31 = v30[1];
      sub_26C14888C();
      __swift_destroy_boxed_opaque_existential_1(&v36);
      sub_26C0E1E48(v23, v24);
      sub_26C0BB9B0(v23, v24);
      result = (*(v3 + 8))(v6, v2);
      goto LABEL_16;
    }

    LODWORD(v26) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
    }

    v26 = v26;
    goto LABEL_12;
  }

  LOBYTE(v35) = 1;
  v38 = MEMORY[0x277D838B0];
  v39 = MEMORY[0x277CC9C18];
  v36 = &v35;
  v37 = (&v35 + 1);
  v11 = __swift_project_boxed_opaque_existential_1(&v36, MEMORY[0x277D838B0]);
  v13 = *v11;
  v12 = v11[1];
  sub_26C14888C();
  result = __swift_destroy_boxed_opaque_existential_1(&v36);
LABEL_16:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D1800@<X0>(__int128 *a1@<X0>, char *a2@<X8>)
{
  v41 = a1;
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9F0, &qword_26C14A9C0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = sub_26C1368E8();
  if ((v19 & 0x100) != 0)
  {
    goto LABEL_10;
  }

  if (v19 == 1)
  {
    (*(v5 + 56))(a2, 1, 1, v4);
LABEL_18:
    v31 = type metadata accessor for PeerCertificateBundle(0);
    return (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
  }

  if (v19)
  {
    if (qword_28047A640 != -1)
    {
      swift_once();
    }

    v25 = sub_26C148A9C();
    __swift_project_value_buffer(v25, qword_28047A9A0);
    v26 = sub_26C148A7C();
    v27 = sub_26C14900C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26C0B5000, v26, v27, "invalid serialized session", v28, 2u);
      MEMORY[0x26D69C3A0](v28, -1, -1);
    }

    v29 = v41;
    *v41 = xmmword_26C14A910;
    *(v29 + 16) = 2;
    v39 = xmmword_26C14A910;
    LOBYTE(v40) = 2;
    sub_26C0BBAF8();
    return swift_willThrowTypedImpl();
  }

  result = sub_26C136A68();
  if (v21)
  {
LABEL_7:
    v23 = *(v5 + 56);
    v23(v18, 1, 1, v4);
LABEL_8:
    sub_26C0CF55C(v18, v16, &qword_28047A9F0, &qword_26C14A9C0);
    if ((*(v5 + 48))(v16, 1, v4) == 1)
    {
      sub_26C0CF5C4(v16, &qword_28047A9F0, &qword_26C14A9C0);
LABEL_10:
      v24 = type metadata accessor for PeerCertificateBundle(0);
      return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
    }

    v30 = *(v5 + 32);
    v30(v9, v16, v4);
    v30(a2, v9, v4);
    v23(a2, 0, 1, v4);
    goto LABEL_18;
  }

  if (result < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  result = sub_26C0DE248(result, &v39);
  v22 = *(&v39 + 1);
  if (*(&v39 + 1) >> 60 == 15)
  {
    goto LABEL_7;
  }

  v32 = *(&v39 + 1) >> 62;
  if ((*(&v39 + 1) >> 62) > 1)
  {
    if (v32 == 2)
    {
      v33 = *(v39 + 24);
    }

    else
    {
      v33 = 0;
    }
  }

  else if (v32)
  {
    v33 = v39 >> 32;
  }

  else
  {
    v33 = BYTE14(v39);
  }

  if (v33 < v40)
  {
    goto LABEL_31;
  }

  v37 = v39;
  *&v38 = v40;
  *&v39 = sub_26C14889C();
  *(&v39 + 1) = v34;
  sub_26C148E0C();
  if (!v2)
  {
    sub_26C0BB344(v37, v22);
    (*(v5 + 32))(v18, v11, v4);
    v23 = *(v5 + 56);
    v23(v18, 0, 1, v4);
    goto LABEL_8;
  }

  sub_26C0BB344(v37, v22);
  v38 = xmmword_26C14A900;
  v39 = xmmword_26C14A900;
  LOBYTE(v40) = 2;
  sub_26C0BBAF8();
  result = swift_willThrowTypedImpl();
  v35 = v41;
  *v41 = v38;
  *(v35 + 16) = 2;
  return result;
}

unint64_t sub_26C0D1D1C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9D8, &qword_26C14A9A8);
  if (!swift_dynamicCast())
  {
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_26C0CF5C4(v41, &qword_28047A9E0, &qword_26C14A9B0);
    result = sub_26C0D3484(a1, a2);
    if ((result & 1) == 0)
    {
      goto LABEL_68;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v7 = a1 & 0xFFFFFFFFFFFFLL;
    }

LABEL_8:
    v8 = *v2;
    v9 = v2[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_18;
      }

      v13 = v8 + 16;
      v8 = *(v8 + 16);
      v11 = *(v13 + 8);
      v12 = v11 - v8;
      if (!__OFSUB__(v11, v8))
      {
LABEL_18:
        if (__OFADD__(v11, v7))
        {
          __break(1u);
        }

        else if (v11 + v7 >= v11)
        {
          if ((v11 & 0x8000000000000000) == 0)
          {
            v14 = sub_26C14886C();
            MEMORY[0x28223BE20](v14);
            v15 = sub_26C0D2B5C(sub_26C0D3C74);
            v19 = v16;
            if (v18 == v7)
            {
              v20 = v15;
              v21 = v17;
              if ((v16 & 0x2000000000000000) != 0)
              {
                v22 = HIBYTE(v16) & 0xF;
              }

              else
              {
                v22 = v15 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 7) = 0;
              *&v41[0] = 0;
              if (4 * v22 == v17 >> 14)
              {
LABEL_67:

                goto LABEL_68;
              }

              LOBYTE(v23) = 0;
              v24 = (v15 >> 59) & 1;
              if ((v16 & 0x1000000000000000) == 0)
              {
                LOBYTE(v24) = 1;
              }

              v25 = 4 << v24;
              v39 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
              v40 = v16 & 0xFFFFFFFFFFFFFFLL;
              while (1)
              {
                v26 = v21 & 0xC;
                v27 = v21;
                if (v26 == v25)
                {
                  v27 = sub_26C0CEF7C(v21, v20, v19);
                }

                v28 = v27 >> 16;
                if (v27 >> 16 >= v22)
                {
                  __break(1u);
LABEL_70:
                  __break(1u);
LABEL_71:
                  __break(1u);
LABEL_72:
                  v7 = sub_26C148F6C();
                  goto LABEL_8;
                }

                if ((v19 & 0x1000000000000000) != 0)
                {
                  v30 = sub_26C148F9C();
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else if ((v19 & 0x2000000000000000) != 0)
                {
                  *&v43 = v20;
                  *(&v43 + 1) = v40;
                  v30 = *(&v43 + v28);
                  if (v26 != v25)
                  {
                    goto LABEL_40;
                  }
                }

                else
                {
                  v29 = v39;
                  if ((v20 & 0x1000000000000000) == 0)
                  {
                    v29 = sub_26C1490AC();
                  }

                  v30 = *(v29 + v28);
                  if (v26 != v25)
                  {
LABEL_40:
                    if ((v19 & 0x1000000000000000) != 0)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_41;
                  }
                }

                v21 = sub_26C0CEF7C(v21, v20, v19);
                if ((v19 & 0x1000000000000000) != 0)
                {
LABEL_44:
                  if (v22 <= v21 >> 16)
                  {
                    goto LABEL_71;
                  }

                  v21 = sub_26C148F7C();
                  goto LABEL_46;
                }

LABEL_41:
                v21 = (v21 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_46:
                *(v41 + v23) = v30;
                v23 = v23 + 1;
                if ((v23 >> 8))
                {
                  goto LABEL_70;
                }

                if (v23 == 14)
                {
                  *&v43 = *&v41[0];
                  *(&v43 + 6) = *(v41 + 6);
                  sub_26C14888C();
                  LOBYTE(v23) = 0;
                }

                if (4 * v22 == v21 >> 14)
                {
                  if (v23)
                  {
                    *&v43 = *&v41[0];
                    *(&v43 + 6) = *(v41 + 6);
                    sub_26C14888C();
                  }

                  goto LABEL_67;
                }
              }
            }

            v31 = 0;
            v32 = *v2;
            v33 = v2[1];
            v34 = v33 >> 62;
            if ((v33 >> 62) > 1)
            {
              if (v34 == 2)
              {
                v31 = *(v32 + 16);
              }
            }

            else if (v34)
            {
              v31 = v32;
            }

            v35 = __OFADD__(v31, v12);
            v36 = v31 + v12;
            if (!v35)
            {
              if (!__OFADD__(v36, v18))
              {
                if (v34 > 1)
                {
                  if (v34 == 2)
                  {
                    v37 = *(v32 + 24);
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else if (v34)
                {
                  v37 = v32 >> 32;
                }

                else
                {
                  v37 = BYTE6(v33);
                }

                if (v37 >= v36 + v18)
                {
                  sub_26C14887C();
                  goto LABEL_67;
                }

                goto LABEL_78;
              }

LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }

LABEL_76:
            __break(1u);
            goto LABEL_77;
          }

LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        __break(1u);
        goto LABEL_75;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v11 = BYTE6(v9);
      v12 = BYTE6(v9);
      goto LABEL_18;
    }

    if (__OFSUB__(HIDWORD(v8), v8))
    {
      goto LABEL_79;
    }

    v12 = HIDWORD(v8) - v8;
    v11 = v8 >> 32;
    goto LABEL_18;
  }

  sub_26C0D3CB0(v41, &v43);
  v5 = __swift_project_boxed_opaque_existential_1(&v43, v44);
  MEMORY[0x28223BE20](v5);
  sub_26C14880C();
  result = __swift_destroy_boxed_opaque_existential_1(&v43);
LABEL_68:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D21F8(uint64_t a1)
{
  v28[5] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9E8, &qword_26C14A9B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9D8, &qword_26C14A9A8);
  if (!swift_dynamicCast())
  {
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_26C0CF5C4(v26, &qword_28047A9E0, &qword_26C14A9B0);
    v5 = *v1;
    v6 = v1[1];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      v8 = 0;
      v9 = 0;
      if (v7 != 2)
      {
        goto LABEL_12;
      }

      v10 = v5 + 16;
      v5 = *(v5 + 16);
      v8 = *(v10 + 8);
      v9 = v8 - v5;
      if (!__OFSUB__(v8, v5))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v7)
    {
      v8 = BYTE6(v6);
      v9 = BYTE6(v6);
      goto LABEL_12;
    }

    if (__OFSUB__(HIDWORD(v5), v5))
    {
      goto LABEL_52;
    }

    v9 = HIDWORD(v5) - v5;
    v8 = v5 >> 32;
LABEL_12:
    if (!__OFADD__(v8, a1))
    {
      if (v8 + a1 < v8)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (v8 < 0)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v11 = sub_26C14886C();
      MEMORY[0x28223BE20](v11);
      result = sub_26C0D2F00(sub_26C0D3D80);
      if (v14 != a1)
      {
        v18 = 0;
        v19 = *v1;
        v20 = v1[1];
        v21 = v20 >> 62;
        if ((v20 >> 62) > 1)
        {
          if (v21 == 2)
          {
            v18 = *(v19 + 16);
          }
        }

        else if (v21)
        {
          v18 = v19;
        }

        v22 = __OFADD__(v18, v9);
        v23 = v18 + v9;
        if (!v22)
        {
          if (!__OFADD__(v23, v14))
          {
            if (v21 > 1)
            {
              if (v21 == 2)
              {
                v24 = *(v19 + 24);
              }

              else
              {
                v24 = 0;
              }
            }

            else if (v21)
            {
              v24 = v19 >> 32;
            }

            else
            {
              v24 = BYTE6(v20);
            }

            if (v24 >= v23 + v14)
            {
              result = sub_26C14887C();
              goto LABEL_42;
            }

            goto LABEL_51;
          }

LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      memset(v28, 0, 15);
      if (v13 == result)
      {
        goto LABEL_42;
      }

      if ((v13 & 0x8000000000000000) == 0 && v13 < result)
      {
        v15 = v12;
        LOBYTE(v16) = 0;
        for (i = v13 - result + 1; i != 1; ++i)
        {
          *(v28 + v16) = v15;
          v16 = v16 + 1;
          if ((v16 & 0x100) != 0)
          {
            goto LABEL_45;
          }

          if (v16 == 14)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = sub_26C14888C();
            if (!i)
            {
              goto LABEL_42;
            }

            LOBYTE(v16) = 0;
          }

          else if (!i)
          {
            *&v26[0] = v28[0];
            *(v26 + 6) = *(v28 + 6);
            result = sub_26C14888C();
            goto LABEL_42;
          }
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
    }

    __break(1u);
    goto LABEL_47;
  }

  sub_26C0D3CB0(v26, v28);
  v3 = __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  MEMORY[0x28223BE20](v3);
  sub_26C14880C();
  result = __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_42:
  v25 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9C8, &qword_26C14D2A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_26C0D3BA0(v4, &v23 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_26C0CF55C(v16, v9, &qword_28047A9C8, &qword_26C14D2A0);
      sub_26C0D28AC(a2);
      return sub_26C0CF5C4(v9, &qword_28047A9C8, &qword_26C14D2A0);
    }

    goto LABEL_5;
  }

  if ((EnumCaseMultiPayload - 2) < 2)
  {
LABEL_5:
    sub_26C0CF5C4(v16, &qword_28047A870, &qword_26C14A5A0);
  }

  if (qword_28047A770 != -1)
  {
    swift_once();
  }

  v18 = sub_26C148A9C();
  __swift_project_value_buffer(v18, qword_28047AD78);
  sub_26C0D3BA0(v4, v14);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 <= 1)
  {
    if (v19)
    {
      v21 = 0x6B616873646E6168;
    }

    else
    {
      v21 = 0x636553796C726165;
    }

    if (v19)
    {
      v20 = 0xEF74657263655365;
    }

    else
    {
      v20 = 0xEB00000000746572;
    }
  }

  else if (v19 == 2)
  {
    v20 = 0xEC00000074657263;
    v21 = 0x655372657473616DLL;
  }

  else
  {
    if (v19 != 3)
    {
      v20 = 0xE400000000000000;
      v21 = 1701602409;
      goto LABEL_21;
    }

    v20 = 0xEA00000000007374;
    v21 = 0x65726365536C6C61;
  }

  sub_26C0CF5C4(v14, &qword_28047A870, &qword_26C14A5A0);
LABEL_21:
  sub_26C125B0C(v21, v20, 0xD00000000000001DLL, 0x800000026C15A560);

  *a1 = xmmword_26C14A570;
  *(a1 + 16) = 2;
  v23 = xmmword_26C14A570;
  v24 = 2;
  sub_26C0BBAF8();
  return swift_willThrowTypedImpl();
}

uint64_t sub_26C0D28AC@<X0>(uint64_t a1@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = sub_26C148B6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v19 = xmmword_26C14A1B0;
  *&v19[16] = 0;
  sub_26C0D21F8(64);
  sub_26C0D1D1C(0xD000000000000021, 0x800000026C15A580);
  if (("dataToSignInCertificateVerify" & 0x1000000000000000) != 0)
  {
    sub_26C148F6C();
  }

  v17 = 0;
  v18[3] = MEMORY[0x277D838B0];
  v18[4] = MEMORY[0x277CC9C18];
  v18[0] = &v17;
  v18[1] = v18;
  v7 = __swift_project_boxed_opaque_existential_1(v18, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_26C148E9C();
  sub_26C0D3C2C(&qword_281590328, MEMORY[0x277CC5550]);
  v10 = sub_26C148B2C();
  MEMORY[0x28223BE20](v10);
  *&v16[-16] = v19;
  sub_26C0D3C2C(&qword_28047A9D0, MEMORY[0x277CC52C8]);
  sub_26C14880C();
  (*(v3 + 8))(v6, v2);
  v11 = *v19;
  *a1 = *v19;
  v12 = *&v19[8];
  *(a1 + 8) = *&v19[8];
  v13 = v12;
  sub_26C0BBAA4(v11, v12);
  result = sub_26C0BB9B0(v11, v13);
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26C0D2B5C(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26C0BB9B0(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26C0BB9B0(v6, v5);
    *v3 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C1487BC() && __OFSUB__(v6, sub_26C1487EC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26C1487FC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26C14879C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_26C0D3318(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26C0BB9B0(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    sub_26C14881C();
    result = sub_26C0D3318(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26C0D2F00(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v23 = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_26C0BB9B0(v6, v5);
      v20[0] = v6;
      LOWORD(v20[1]) = v5;
      BYTE2(v20[1]) = BYTE2(v5);
      BYTE3(v20[1]) = BYTE3(v5);
      BYTE4(v20[1]) = BYTE4(v5);
      BYTE5(v20[1]) = BYTE5(v5);
      BYTE6(v20[1]) = BYTE6(v5);
      result = a1(&v21, v20, v20 + BYTE6(v5));
      if (!v2)
      {
        result = v21;
      }

      v9 = LODWORD(v20[1]) | ((WORD2(v20[1]) | (BYTE6(v20[1]) << 16)) << 32);
      *v3 = v20[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_26C0BB9B0(v6, v5);
    *v3 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_26C1487BC() && __OFSUB__(v6, sub_26C1487EC()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_26C1487FC();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_26C14879C();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_26C0D33CC(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_26C0BB9B0(v6, v5);
    v21 = v6;
    v22 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_26C14A1B0;
    sub_26C0BB9B0(0, 0xC000000000000000);
    sub_26C14881C();
    result = sub_26C0D33CC(v21[2], v21[3], a1);
    v10 = v22 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v21;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v21;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v20, 0, 15);
  result = a1(&v21, v20, v20);
  if (!v2)
  {
    result = v21;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_26C0D32AC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_26C0D3318(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C1487BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C1487EC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26C1487DC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

char *sub_26C0D33CC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_26C1487BC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_26C1487EC();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_26C1487DC();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_26C0D3484(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1000000000000000;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0 && (a1 & 0x1000000000000000) == 0)
    {
      sub_26C1490AC();
    }

    sub_26C14888C();
  }

  return v2 >> 60;
}

uint64_t sub_26C0D3518(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9B8, &qword_26C14A9A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v30 - v15;
  v17 = *(v14 + 56);
  sub_26C0D37A0(a1, &v30 - v15);
  sub_26C0D37A0(a2, &v16[v17]);
  v18 = *(v5 + 48);
  LODWORD(a2) = v18(v16, 1, v4);
  result = v18(&v16[v17], 1, v4);
  if (a2 == 1)
  {
    if (result == 1)
    {
      return result;
    }

    sub_26C0D3804(&v16[v17]);
  }

  else if (result == 1)
  {
    (*(v5 + 8))(v16, v4);
  }

  else
  {
    v20 = *(v5 + 32);
    v20(v11, v16, v4);
    v21 = (v20)(v9, &v16[v17], v4);
    v22 = MEMORY[0x26D69BB30](v21);
    v24 = v23;
    v25 = MEMORY[0x26D69BB30]();
    v27 = v26;
    v28 = sub_26C0E6464(v22, v24, v25, v26);
    sub_26C0BB9B0(v25, v27);
    sub_26C0BB9B0(v22, v24);
    v29 = *(v5 + 8);
    v29(v9, v4);
    v29(v11, v4);
    if (v28)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_26C0D37A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0D3804(uint64_t a1)
{
  v2 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0D3860(uint64_t a1, uint64_t a2)
{
  v4 = sub_26C148E2C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A9B8, &qword_26C14A9A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v31 - v15;
  v17 = *(v14 + 56);
  sub_26C0D37A0(a1, &v31 - v15);
  sub_26C0D37A0(a2, &v16[v17]);
  v18 = v5[6];
  LODWORD(a2) = v18(v16, 1, v4);
  v19 = v18(&v16[v17], 1, v4);
  if (a2 != 1)
  {
    if (v19 != 1)
    {
      v21 = v5[4];
      v21(v11, v16, v4);
      v22 = (v21)(v9, &v16[v17], v4);
      v23 = MEMORY[0x26D69BB30](v22);
      v25 = v24;
      v26 = MEMORY[0x26D69BB30]();
      v28 = v27;
      v20 = sub_26C0E6464(v23, v25, v26, v27);
      sub_26C0BB9B0(v26, v28);
      sub_26C0BB9B0(v23, v25);
      v29 = v5[1];
      v29(v9, v4);
      v29(v11, v4);
      return v20 & 1;
    }

    (v5[1])(v16, v4);
    goto LABEL_7;
  }

  if (v19 != 1)
  {
    sub_26C0D3804(&v16[v17]);
LABEL_7:
    v20 = 0;
    return v20 & 1;
  }

  v20 = 1;
  return v20 & 1;
}

unint64_t sub_26C0D3AE8()
{
  result = qword_28047A9C0;
  if (!qword_28047A9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A9C0);
  }

  return result;
}

uint64_t sub_26C0D3B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerCertificateBundle.Bundle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0D3BA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047A870, &qword_26C14A5A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C0D3C2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C0D3C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 32);
  v7 = *v6;
  v8 = v6[1];
  result = sub_26C0D3CE4(a1, a2, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
    a3[1] = v10;
    a3[2] = v11;
    a3[3] = v12;
  }

  return result;
}

uint64_t sub_26C0D3CB0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26C0D3CE4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    goto LABEL_6;
  }

  if (__OFSUB__(a2 - result, a3))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26C14909C();
  if ((v3 & 1) == 0)
  {

    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26C0D3D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_26C0D3DC4(a1, a2, *(v3 + 16), **(v3 + 32), *(*(v3 + 32) + 8));
  if (!v4)
  {
    *a3 = result;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
  }

  return result;
}

uint64_t sub_26C0D3DC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int8 a5)
{
  if (!result)
  {
    return a4;
  }

  v5 = a2 - result - a3;
  if (!__OFSUB__(a2 - result, a3))
  {
    if (v5)
    {
      if (v5 < 1)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (a4)
      {
        v6 = (result + a3);
        v7 = a4 & ~(a4 >> 63);
        v8 = ~a3 + a2 - result;
        v9 = a4 - 1;
        if (v7 < a4 - 1)
        {
          v9 = a4 & ~(a4 >> 63);
        }

        if (v8 >= v9)
        {
          v8 = v9;
        }

        if (v8 >= 0x10)
        {
          v12 = v8 + 1;
          v13 = v12 & 0xF;
          if ((v12 & 0xF) == 0)
          {
            v13 = 16;
          }

          v10 = v12 - v13;
          v11 = v10 + 1;
          v14 = (v6 + v10);
          v15 = vdupq_n_s8(a5);
          v16 = v10;
          do
          {
            *v6++ = v15;
            v16 -= 16;
          }

          while (v16);
          v6 = v14;
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }

        while (v10 != v7)
        {
          v10 = v11;
          v6->i8[0] = a5;
          if (v5 != v11)
          {
            v6 = (v6 + 1);
            ++v11;
            if (a4 + 1 != v10 + 1)
            {
              continue;
            }
          }

          return a4;
        }

        goto LABEL_24;
      }
    }

    return a4;
  }

LABEL_25:
  __break(1u);
  return result;
}

_WORD *sub_26C0D3F1C@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_26C0D3FB4()
{
  v1 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

uint64_t sub_26C0D4028()
{
  v1 = *v0;
  sub_26C1491AC();
  sub_26C1491DC();
  return sub_26C14920C();
}

unint64_t PAKEScheme.description.getter()
{
  result = 0xD000000000000010;
  v2 = *v0;
  if (v2 == 0xFFFF)
  {
    return 0xD000000000000013;
  }

  if (v2 != 32150)
  {
    sub_26C14908C();

    v3 = sub_26C14911C();
    MEMORY[0x26D69BC90](v3);

    MEMORY[0x26D69BC90](41, 0xE100000000000000);
    return 0xD000000000000015;
  }

  return result;
}

unint64_t sub_26C0D4168()
{
  result = qword_28047A9F8;
  if (!qword_28047A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047A9F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NamedGroup(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
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

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for NamedGroup(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_26C0D42FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C0D431C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t sub_26C0D4360()
{
  v0 = sub_26C148A9C();
  __swift_allocate_value_buffer(v0, qword_28047AA00);
  __swift_project_value_buffer(v0, qword_28047AA00);
  return sub_26C148A8C();
}

double sub_26C0D43E0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v17 = 0u;
      v18 = 0u;
      sub_26C0D4564(a1, a2, &v17, v19);
      sub_26C0BB9B0(a1, a2);
      v11 = 0;
      goto LABEL_20;
    }

    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    v10 = __OFSUB__(v8, v9);
    v7 = v8 - v9;
    if (!v10)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a2);
    goto LABEL_10;
  }

  LODWORD(v7) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v7 = v7;
LABEL_10:
  if (v7 > 32)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = 0u;
  v18 = 0u;
  sub_26C0D4564(a1, a2, &v17, v19);
  if (v6 == 2)
  {
    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    sub_26C0BB9B0(a1, a2);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v6 != 1)
  {
LABEL_19:
    sub_26C0BB9B0(a1, a2);
    v11 = BYTE6(a2);
    goto LABEL_20;
  }

  sub_26C0BB9B0(a1, a2);
  LODWORD(v11) = HIDWORD(a1) - a1;
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_23;
  }

  v11 = v11;
LABEL_20:
  result = *&v17;
  v15 = v18;
  *a3 = v17;
  *(a3 + 16) = v15;
  *(a3 + 32) = v11;
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D4564(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA30, qword_26C14ABB8);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v17[-v11];
  v19 = a1;
  v20 = a2;
  if (!a3)
  {
    return result;
  }

  MEMORY[0x28223BE20](result);
  *&v17[-32] = &v19;
  *&v17[-24] = a3;
  *&v17[-16] = a4;
  *&v17[-8] = a3;
  result = sub_26C0D4EAC(sub_26C0D5044, &v17[-48], a1, a2);
  if ((result & 1) == 0)
  {
    return result;
  }

  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_9;
    }

    v14 = *(v19 + 16);
  }

  else if (!v13)
  {
    goto LABEL_9;
  }

  sub_26C0BBAA4(v19, v20);
LABEL_9:
  sub_26C1488EC();
  sub_26C1488DC();
  sub_26C0D5064();
  result = sub_26C14903C();
  v15 = 0;
  if (v18)
  {
LABEL_13:
    *&v12[*(v8 + 36)] = v15;
    return sub_26C0D50BC(v12);
  }

  else
  {
    v16 = 0;
    while (1)
    {
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      *(a3 + v16) = v17[6];
      result = sub_26C14903C();
      ++v16;
      if (v18 == 1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C0D472C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v5);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  return sub_26C14920C();
}

uint64_t sub_26C0D47BC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  MEMORY[0x26D69BEF0](v0[4]);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  return MEMORY[0x26D69BF30](v4);
}

uint64_t sub_26C0D4820()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_26C1491AC();
  MEMORY[0x26D69BEF0](v5);
  MEMORY[0x26D69BF30](v1);
  MEMORY[0x26D69BF30](v2);
  MEMORY[0x26D69BF30](v3);
  MEMORY[0x26D69BF30](v4);
  return sub_26C14920C();
}

unint64_t sub_26C0D48F0()
{
  result = qword_28047AA18;
  if (!qword_28047AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA18);
  }

  return result;
}

unint64_t sub_26C0D4944(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = v1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(v3 + 24);
    }
  }

  else if (v5)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v4);
  }

  LOBYTE(v27[0]) = 0;
  v30 = MEMORY[0x277D838B0];
  v31 = MEMORY[0x277CC9C18];
  v29[0] = v27;
  v29[1] = v27 + 1;
  v7 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x277D838B0]);
  v9 = *v7;
  v8 = v7[1];
  sub_26C14888C();
  __swift_destroy_boxed_opaque_existential_1(v29);
  v10 = *(a1 + 16);
  v27[0] = *a1;
  v27[1] = v10;
  v11 = sub_26C0DBAC8(*(a1 + 32), v27, v28);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA20, &qword_26C14ABB0);
  v30 = v18;
  v31 = sub_26C0D4DFC();
  v19 = swift_allocObject();
  v29[0] = v19;
  v19[2] = v11;
  v19[3] = v13;
  v19[4] = v15;
  v19[5] = v17;
  v20 = __swift_project_boxed_opaque_existential_1(v29, v18);
  v21 = MEMORY[0x28223BE20](v20);
  v22 = v21[1];
  v28[0] = *v21;
  v28[1] = v22;
  sub_26C14919C();
  __swift_destroy_boxed_opaque_existential_1(v29);
  v23 = v17 - v15;
  if (!v15)
  {
    v23 = 0;
  }

  if (v11 < 0 || v23 < v11)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v13 < 0 || v23 < v13)
  {
    goto LABEL_17;
  }

  v24 = v13 - v11;
  if (v13 - v11 < 0)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (v24 > 0xFF)
  {
    goto LABEL_19;
  }

  sub_26C100778(v13 - v11, v6);
  v25 = *MEMORY[0x277D85DE8];
  return v24 + 1;
}

void sub_26C0D4B74(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v9 = *(v5 + 24);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = BYTE6(v6);
    if (v8)
    {
      v9 = v5 >> 32;
    }
  }

  v10 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v10 <= 32)
  {
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v16 = *(v5 + 24);
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v15 = BYTE6(v6);
      v16 = v5 >> 32;
      if (!v8)
      {
        v16 = v15;
      }
    }

    if (__OFSUB__(v16, v7))
    {
      __break(1u);
    }

    else
    {
      sub_26C0DE248(v16 - v7, &v25);
      v17 = *(&v25 + 1);
      if (*(&v25 + 1) >> 60 == 15)
      {
LABEL_36:
        __break(1u);
        return;
      }

      v18 = v25;
      v19 = *(&v25 + 1) >> 62;
      if ((*(&v25 + 1) >> 62) > 1)
      {
        if (v19 == 2)
        {
          v20 = *(v25 + 24);
        }

        else
        {
          v20 = 0;
        }
      }

      else if (v19)
      {
        v20 = v25 >> 32;
      }

      else
      {
        v20 = BYTE14(v25);
      }

      if (v20 >= v26)
      {
        v21 = sub_26C14889C();
        v23 = v22;
        sub_26C0BB344(v18, v17);
        sub_26C0D43E0(v21, v23, v27);
        v24 = v27[1];
        *a3 = v27[0];
        *(a3 + 16) = v24;
        *(a3 + 32) = v28;
        return;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  if (qword_28047A648 != -1)
  {
LABEL_33:
    swift_once();
  }

  v11 = sub_26C148A9C();
  __swift_project_value_buffer(v11, qword_28047AA00);
  v12 = sub_26C148A7C();
  v13 = sub_26C14900C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&dword_26C0B5000, v12, v13, "reading legacy session id: too many bytes %ld, but expected <= 32", v14, 0xCu);
    MEMORY[0x26D69C3A0](v14, -1, -1);
  }

  *a2 = xmmword_26C149860;
  *(a2 + 16) = 2;
  v25 = xmmword_26C149860;
  LOBYTE(v26) = 2;
  sub_26C0BBAF8();
  swift_willThrowTypedImpl();
}

unint64_t sub_26C0D4DFC()
{
  result = qword_28047AA28;
  if (!qword_28047AA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28047AA20, &qword_26C14ABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA28);
  }

  return result;
}

uint64_t sub_26C0D4E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (!a3)
  {
    v4 = 0;
  }

  if (result < 0 || v4 < result)
  {
    __break(1u);
  }

  else if ((a2 & 0x8000000000000000) == 0 && v4 >= a2)
  {
    return a2 - result;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0D4EAC(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v6)
    {
      *v11 = a3;
      *&v11[8] = a4;
      v11[10] = BYTE2(a4);
      v11[11] = BYTE3(a4);
      v11[12] = BYTE4(a4);
      v11[13] = BYTE5(a4);
      result = (a1)(&v12, v11, BYTE6(a4));
      if (v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v8 = a3;
    v9 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_26C0D5124(v8, v9, a4 & 0x3FFFFFFFFFFFFFFFLL, a1);
    if (v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v6 == 2)
  {
    v8 = *(a3 + 16);
    v9 = *(a3 + 24);
    goto LABEL_8;
  }

  memset(v11, 0, sizeof(v11));
  result = (a1)(&v12, v11, 0);
  if (v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  LOBYTE(result) = 0;
LABEL_13:
  result &= 1u;
LABEL_14:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C0D5000(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  a3(&var1, a1, v3);
  return 0;
}

void *sub_26C0D5044(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

unint64_t sub_26C0D5064()
{
  result = qword_28047AA38;
  if (!qword_28047AA38)
  {
    sub_26C1488DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA38);
  }

  return result;
}

uint64_t sub_26C0D50BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28047AA30, qword_26C14ABB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0D5124(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  result = sub_26C1487BC();
  v8 = result;
  if (result)
  {
    result = sub_26C1487EC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_26C1487DC();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26C0D5000(v8, v14, a4) & 1;
}

uint64_t sub_26C0D51CC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D522C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491CC();
  return sub_26C1491CC();
}

uint64_t sub_26C0D526C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26C1491AC();
  sub_26C1491CC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D52F0(__int16 a1)
{
  if (a1 != 3)
  {
LABEL_10:
    sub_26C14908C();

    v2 = sub_26C14911C();
    MEMORY[0x26D69BC90](v2);

    MEMORY[0x26D69BC90](0x3A726F6E696D202CLL, 0xE900000000000020);
    v3 = sub_26C14911C();
    MEMORY[0x26D69BC90](v3);

    MEMORY[0x26D69BC90](41, 0xE100000000000000);
    return 0xD000000000000017;
  }

  if (HIBYTE(a1) <= 1u)
  {
    if (HIBYTE(a1))
    {
      if (HIBYTE(a1) == 1)
      {
        return 0x303176736C742ELL;
      }

      goto LABEL_10;
    }

    return 0x33766C73732ELL;
  }

  else
  {
    switch(HIBYTE(a1))
    {
      case 2u:
        return 0x313176736C742ELL;
      case 3u:
        return 0x323176736C742ELL;
      case 4u:
        return 0x333176736C742ELL;
      default:
        goto LABEL_10;
    }
  }
}

unint64_t sub_26C0D54B8()
{
  result = qword_28047AA40;
  if (!qword_28047AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA40);
  }

  return result;
}

uint64_t sub_26C0D557C()
{
  v1 = *v0;
  sub_26C1491AC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t sub_26C0D55F0()
{
  v1 = *v0;
  sub_26C1491AC();
  sub_26C1491CC();
  return sub_26C14920C();
}

uint64_t HandshakeType.description.getter()
{
  v1 = *v0;
  if (v1 <= 0xA)
  {
    if (*v0 <= 3u)
    {
      if (v1 == 1)
      {
        return 0x48746E65696C632ELL;
      }

      if (v1 == 2)
      {
        return 0x487265767265732ELL;
      }
    }

    else
    {
      switch(v1)
      {
        case 4u:
          return 0xD000000000000011;
        case 5u:
          return 0x6145664F646E652ELL;
        case 8u:
          return 0xD000000000000014;
      }
    }
  }

  else if (*v0 > 0x13u)
  {
    switch(v1)
    {
      case 0x14u:
        return 0x656873696E69662ELL;
      case 0x18u:
        return 0x6164705579656B2ELL;
      case 0xFEu:
        return 0x6567617373656D2ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 0xBu:
        return 0x696669747265632ELL;
      case 0xDu:
        return 0xD000000000000013;
      case 0xFu:
        return 0xD000000000000012;
    }
  }

  sub_26C14908C();

  v3 = sub_26C14911C();
  MEMORY[0x26D69BC90](v3);

  MEMORY[0x26D69BC90](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_26C0D589C()
{
  result = qword_28047AA48;
  if (!qword_28047AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28047AA48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandshakeType(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for HandshakeType(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}