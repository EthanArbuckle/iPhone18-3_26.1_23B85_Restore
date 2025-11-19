uint64_t sub_2612723D8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2613A1EBC();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261272498);
}

uint64_t sub_261272498()
{
  v1 = v0[7];
  v2 = v0[3];
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  v5 = *(v0[4] + 16);
  v0[8] = v5;
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;

  v7 = MEMORY[0x277D83B88];
  sub_2612529C0(v1);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2612725BC;
  v9 = v0[7];

  return sub_261252A34((v0 + 2), v9, sub_261274418, v6, v5, v7);
}

uint64_t sub_2612725BC()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = v2[9];
  v6 = v2[8];
  v7 = v2[7];
  v8 = v2[6];
  v9 = v2[5];
  if (v0)
  {

    (*(v8 + 8))(v7, v9);
    v10 = sub_26127281C;
  }

  else
  {
    (*(v8 + 8))(v2[7], v2[5]);

    v10 = sub_2612727A4;
  }

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_2612727A4()
{
  v1 = v0[2];
  v2 = v0[7];
  v3 = v0[11] != 0;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_26127281C()
{
  v1 = v0[7];
  v2 = v0[11] != 0;

  v3 = v0[1];

  return v3(0, v2);
}

uint64_t sub_261272890@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v20 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F280, &unk_2613A42B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v19 - v12);
  v14 = sub_26139F13C();
  v15 = *(*(v14 - 8) + 56);
  v15(v13, 1, 1, v14);
  v15(v11, 1, 1, v14);
  v16 = v21;
  v17 = sub_261253720(a1, a2, a3, v13, v11);
  sub_26124C718(v11, &qword_27FE9F280, &unk_2613A42B0);
  result = sub_26124C718(v13, &qword_27FE9F280, &unk_2613A42B0);
  if (!v16)
  {
    *v20 = v17;
  }

  return result;
}

uint64_t sub_261272A24(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 36;
  }

  if (a2 == 1)
  {
    return 37;
  }

  return qword_2613A4CF8[a1];
}

uint64_t sub_261272A54(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SessionManager();

  MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
  LOBYTE(a1) = sub_2612F8524(a1, a2);

  return a1 & 1;
}

uint64_t sub_261272AD4()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_261272B0C(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_2613A211C();

    v6 = 0xD000000000000010;
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    v6 = 0x7272454244666173;
LABEL_5:
    v2 = sub_2613A23EC();
    MEMORY[0x2666FFEA0](v2);

    MEMORY[0x2666FFEA0](41, 0xE100000000000000);
    return v6;
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x41746F4E64616572;
    }
  }

  else
  {
    v4 = 0xD00000000000001ELL;
    if (a1 != 5)
    {
      v4 = 0xD000000000000011;
    }

    v5 = 0xD000000000000017;
    if (a1 == 3)
    {
      v5 = 0x7265646165526F6ELL;
    }

    if (a1 <= 4)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_261272CF4(uint64_t a1, uint64_t a2)
{
  v81 = a1;
  v3 = sub_26139FAAC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v76 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v80 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v76 - v18;
  v20 = sub_2612F9F2C();
  v21 = *v20;
  v22 = *(*v20 + 32);
  if (!v22)
  {
    v34 = sub_26129B8EC();
    sub_26125A870(v34, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v35 = sub_2613A124C();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v41 = sub_2613A122C();
      v42 = sub_2613A1D8C();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v79 = v7;
        v44 = v43;
        *v43 = 0;
        _os_log_impl(&dword_261243000, v41, v42, "Could not retrieve boot ID from system", v43, 2u);
        v45 = v44;
        v7 = v79;
        MEMORY[0x266701350](v45, -1, -1);
      }

      (*(v36 + 8))(v12, v35);
    }

    (*(v4 + 104))(v7, *MEMORY[0x277D43850], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    goto LABEL_22;
  }

  v76 = v19;
  v77 = v4;
  v78 = v3;
  v79 = v7;
  v23 = *(v21 + 24);
  v24 = *(*a2 + 280);

  v26 = v24(v25);
  v28 = v27;

  v30 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {

    v37 = sub_26129B8EC();
    sub_26125A870(v37, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v38 = sub_2613A124C();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v15, 1, v38) == 1)
    {
      sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
      v4 = v77;
      v3 = v78;
    }

    else
    {
      v46 = sub_2613A122C();
      v47 = sub_2613A1D8C();
      v48 = os_log_type_enabled(v46, v47);
      v4 = v77;
      v3 = v78;
      if (v48)
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_261243000, v46, v47, "Could not retrieve boot ID from previous session", v49, 2u);
        MEMORY[0x266701350](v49, -1, -1);
      }

      (*(v39 + 8))(v15, v38);
    }

    v7 = v79;
    (*(v4 + 104))(v79, *MEMORY[0x277D43850], v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
LABEL_22:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    v51 = sub_26139F2CC();
    *(inited + 32) = sub_26139F28C();
    *(inited + 40) = v52;
    v53 = sub_26139FA9C();
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v53;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v54 = objc_allocWithZone(v51);
    v33 = sub_26139F2DC();
    (*(v4 + 8))(v7, v3);
    *&v92[0] = v33;
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
LABEL_23:
    swift_willThrowTypedImpl();
    return v33;
  }

  v31 = v24(v29);
  v33 = v32;
  if (v31 != v23 || v22 != v32)
  {
    v40 = sub_2613A241C();

    if (v40)
    {
      return v33;
    }

    v57 = *(v81 + 80);
    v56 = *(v81 + 88);
    type metadata accessor for SessionManager();
    *&v82 = v57;
    *(&v82 + 1) = v56;

    MEMORY[0x2666FFEA0](1717662510, 0xE400000000000000);
    v58 = v82;
    v59 = sub_261273E7C();
    v60 = sub_261273ED0();
    sub_2612F7868(v58, *(&v58 + 1), &type metadata for StoreAndForwardSession, v59, v60, &v82);

    *(v91 + 9) = *(v89 + 9);
    v90[6] = v88;
    v91[0] = v89[0];
    v90[2] = v84;
    v90[3] = v85;
    v90[4] = v86;
    v90[5] = v87;
    v90[0] = v82;
    v90[1] = v83;
    v92[6] = v88;
    v93[0] = v89[0];
    *(v93 + 9) = *(v91 + 9);
    v92[2] = v84;
    v92[3] = v85;
    v92[4] = v86;
    v92[5] = v87;
    v92[0] = v82;
    v92[1] = v83;
    if (sub_261273F24(v92) == 1)
    {
      v61 = sub_26129B8EC();
      v62 = v80;
      sub_26125A870(v61, v80, &qword_27FE9F560, &qword_2613A3CB0);
      v63 = sub_2613A124C();
      v64 = *(v63 - 8);
      if ((*(v64 + 48))(v62, 1, v63) == 1)
      {
        sub_26124C718(v62, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v69 = sub_2613A122C();
        v70 = sub_2613A1D8C();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_261243000, v69, v70, "SAF session cannot be created without a previous online synchronization", v71, 2u);
          MEMORY[0x266701350](v71, -1, -1);
        }

        (*(v64 + 8))(v62, v63);
      }
    }

    else
    {
      sub_26124C718(v90, &qword_27FE9F458, &unk_2613A4BE0);
      v65 = sub_26129B8EC();
      v66 = v76;
      sub_26125A870(v65, v76, &qword_27FE9F560, &qword_2613A3CB0);
      v67 = sub_2613A124C();
      v68 = *(v67 - 8);
      if ((*(v68 + 48))(v66, 1, v67) == 1)
      {
        sub_26124C718(v66, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v72 = sub_2613A122C();
        v73 = sub_2613A1D8C();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&dword_261243000, v72, v73, "Device rebooted and SAF session was invalidated", v74, 2u);
          MEMORY[0x266701350](v74, -1, -1);
        }

        (*(v68 + 8))(v76, v67);
      }
    }

    v75 = objc_allocWithZone(sub_26139F2CC());
    v33 = sub_26139F2DC();
    *&v82 = v33;
    sub_2612746B0(&qword_27FE9F430, MEMORY[0x277D43618]);
    goto LABEL_23;
  }

  return v33;
}

uint64_t sub_2612736DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  v10 = sub_26129B8EC();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v13 = sub_2613A122C();
    v14 = sub_2613A1D7C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = 1;
      _os_log_impl(&dword_261243000, v13, v14, "Updating online session SAF active flag as [ %{BOOL}d ]", v15, 8u);
      MEMORY[0x266701350](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  (*(*a3 + 312))(1);
  return sub_26125B1E4(a1, a2, a3);
}

id sub_2612738E0(uint64_t *a1)
{
  v2 = sub_26139FAAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v46 - v12;
  v51 = a1;
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
  v15 = sub_26139F2CC();
  if (swift_dynamicCast())
  {
    v16 = v50;
    v17 = sub_26129B8EC();
    sub_26125A870(v17, v13, &qword_27FE9F560, &qword_2613A3CB0);
    v18 = sub_2613A124C();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) == 1)
    {
      sub_26124C718(v13, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v16 = v16;
      v23 = sub_2613A122C();
      v24 = sub_2613A1D8C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v51 = v26;
        *v25 = 136315138;
        sub_26139F2BC();
        v27 = sub_26139F2EC();
        v29 = sub_26124C11C(v27, v28, &v51);

        *(v25 + 4) = v29;
        _os_log_impl(&dword_261243000, v23, v24, "[SAF] Returning error: [ %s ]", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x266701350](v26, -1, -1);
        MEMORY[0x266701350](v25, -1, -1);
      }

      (*(v19 + 8))(v13, v18);
    }
  }

  else
  {
    v20 = sub_26129B8EC();
    sub_26125A870(v20, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v21 = sub_2613A124C();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v11, 1, v21) == 1)
    {
      sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v49 = v2;
      v30 = a1;
      v31 = sub_2613A122C();
      v32 = sub_2613A1D8C();

      v48 = v32;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v47 = v31;
        v34 = v33;
        v35 = swift_slowAlloc();
        v50 = a1;
        v51 = v35;
        *v34 = 136315138;
        v36 = a1;
        v37 = sub_2613A195C();
        v39 = sub_26124C11C(v37, v38, &v51);

        *(v34 + 4) = v39;
        v40 = v47;
        _os_log_impl(&dword_261243000, v47, v48, "[SAF] Unexpected error: [ %s ]", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x266701350](v35, -1, -1);
        MEMORY[0x266701350](v34, -1, -1);
      }

      else
      {
      }

      v2 = v49;
      (*(v22 + 8))(v11, v21);
    }

    (*(v3 + 104))(v6, *MEMORY[0x277D43838], v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2613A4310;
    *(inited + 32) = sub_26139F28C();
    *(inited + 40) = v42;
    v43 = sub_26139FA9C();
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v43;
    sub_261259E78(inited);
    swift_setDeallocating();
    sub_26124C718(inited + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    v44 = objc_allocWithZone(v15);
    v16 = sub_26139F2DC();
    (*(v3 + 8))(v6, v2);
  }

  return v16;
}

unint64_t sub_261273E7C()
{
  result = qword_27FE9F438;
  if (!qword_27FE9F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F438);
  }

  return result;
}

unint64_t sub_261273ED0()
{
  result = qword_27FE9F440;
  if (!qword_27FE9F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F440);
  }

  return result;
}

uint64_t sub_261273F24(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_261273F3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_261273F80()
{
  result = qword_27FE9F448;
  if (!qword_27FE9F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F448);
  }

  return result;
}

unint64_t sub_261274084()
{
  result = qword_27FE9F450;
  if (!qword_27FE9F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F450);
  }

  return result;
}

uint64_t sub_261274104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoreAndForwardReadResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_261274168(uint64_t a1, void *a2)
{
  v6 = *(type metadata accessor for StoreAndForwardReadResult() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_26139F13C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_261252DC4(a2, v2 + v7, v2 + v10);
  if (!v3)
  {
    type metadata accessor for Mock();
    v12 = sub_26129B284(33);
    if (v12 >= 1)
    {
      sub_261257948(a2, (v2 + v7), (v2 + v10), v12 - 1, a1, v11);
    }
  }
}

void sub_26127430C(void *a1@<X1>, void *a2@<X8>)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = MEMORY[0x266700BB0]();
  sub_261271318(a1, v6, v7, v8, (v10 + 16), &v12, &v13, v9);
  objc_autoreleasePoolPop(v11);
  if (!v3)
  {
    *a2 = v13;
  }
}

BOOL sub_2612743D8@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = sub_261255BA4(a1, *(v2 + 16), *(v2 + 24));
  if (!v3)
  {
    *a2 = result;
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

uint64_t getEnumTagSinglePayload for CardReadFailedReason(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CardReadFailedReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2612744F8(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_261274510(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = sub_26139F13C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2612746B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261274710(char a1)
{
  if (!a1)
  {
    return 0x6164696C61766E69;
  }

  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_261274774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000018;
  v4 = 0x80000002613B8760;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000002613B8760;
  }

  else
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6164696C61766E69;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEB00000000646574;
  }

  v8 = 0xD000000000000018;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6164696C61766E69;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2613A241C();
  }

  return v11 & 1;
}

uint64_t sub_261274874()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261274924()
{
  *v0;
  *v0;
  sub_2613A19DC();
}

uint64_t sub_2612749C0()
{
  v1 = *v0;
  sub_2613A256C();
  sub_2613A19DC();

  return sub_2613A25CC();
}

uint64_t sub_261274A6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_26127BB94();
  *a2 = result;
  return result;
}

void sub_261274A9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0x80000002613B8760;
  v5 = 0xD000000000000018;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6164696C61766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261274B3C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void *sub_261274B7C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void sub_261274BC0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = a1;
}

uint64_t sub_261274C08()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  return swift_unknownObjectRetain();
}

uint64_t sub_261274C40(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 72);
  *(v1 + 72) = a1;
  return swift_unknownObjectRelease();
}

void sub_261274CC0(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void sub_261274D44(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_261274D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  sub_261279B10(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_261274EA0(uint64_t a1, void *a2, char a3)
{
  v7 = *v3;
  swift_beginAccess();
  *(v3 + 16) = 1;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = *(v7 + 80);
  v9[3] = *(v7 + 88);
  v9[4] = v8;
  if (a3)
  {

    v10 = sub_261276D98(sub_26127BC34, v3);
    sub_2612757A8(v10, a1, sub_26127BC2C, v9);
  }

  else
  {
    v10 = sub_261276D98(0, 0);
    sub_2612754B4(v10, a1, a2, sub_26127BC2C, v9);
  }
}

uint64_t sub_26127500C(int a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_26129B6C4();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v9 = sub_2613A122C();
    v10 = sub_2613A1D8C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      HIDWORD(v17) = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v13 = 0xD000000000000018;
        }

        else
        {
          v13 = 0x6E776F6E6B6E75;
        }

        if (a1 == 1)
        {
          v14 = 0x80000002613B8760;
        }

        else
        {
          v14 = 0xE700000000000000;
        }
      }

      else
      {
        v14 = 0xEB00000000646574;
        v13 = 0x6164696C61766E69;
      }

      v15 = sub_26124C11C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_261243000, v9, v10, "invalidationHandler - errorCode = %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);

      a1 = HIDWORD(v17);
    }

    else
    {
    }

    (*(v8 + 8))(v5, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261275DC0(a1);
  }

  return result;
}

uint64_t sub_2612752B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  v6 = sub_26129B684();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v9 = sub_2613A122C();
    v10 = sub_2613A1D7C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v15 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_26124C11C(*(a1 + 32), *(a1 + 40), &v15);
      _os_log_impl(&dword_261243000, v9, v10, "%{public}s connection invalidated", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  return sub_261275DC0(0);
}

void sub_2612754B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[6];
  v13 = v6[7];
  v14 = objc_allocWithZone(MEMORY[0x277D66BD8]);
  v15 = sub_2613A189C();
  v16 = sub_2613A189C();
  v17 = [v14 initWithServiceName:v15 viewControllerClassName:v16];

  type metadata accessor for RemoteAlertInvalidationHandler();

  v18 = sub_2612F6038(v10, v11, a4, a5);
  v19 = v6[14];
  v6[14] = v18;
  v20 = v18;

  v21 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
  [v21 setXpcEndpoint_];
  swift_unknownObjectRelease();
  sub_261258410(a2);
  v22 = sub_2613A17EC();

  [v21 setUserInfo_];

  v23 = [objc_opt_self() newHandleWithDefinition:v17 configurationContext:v21];
  [v23 registerObserver_];
  v31 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
  if (a3)
  {
    v24 = objc_opt_self();
    v25 = a3;
    v26 = [v24 processHandleForNSXPCConnection_];
    v27 = [objc_opt_self() predicateForProcess_];
    v28 = [objc_allocWithZone(MEMORY[0x277D66C08]) initWithTargetPredicate_];
    [v28 setShouldDismissOnUILock_];
    [v28 setShouldDismissInSwitcher_];
    [v31 setPresentationTarget_];
  }

  [v23 activateWithContext_];
}

uint64_t sub_2612757A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  type metadata accessor for RemoteSceneUIHandle();
  v15 = *(v4 + 120);

  v16 = sub_2612F3E4C(v15, a3, a4);
  if (v16)
  {
    v17 = v16;
    v18 = sub_26129B89C();
    sub_26125A870(v18, v14, &qword_27FE9F560, &qword_2613A3CB0);
    v19 = sub_2613A124C();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v14, 1, v19) == 1)
    {
      sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v25 = sub_2613A122C();
      v26 = sub_2613A1D9C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_261243000, v25, v26, "opening remote scene UI", v27, 2u);
        MEMORY[0x266701350](v27, -1, -1);
      }

      (*(v20 + 8))(v14, v19);
    }

    sub_261258410(a2);
    (*(*v17 + 152))();
  }

  else
  {
    v21 = sub_26129B89C();
    sub_26125A870(v21, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v22 = sub_2613A124C();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v28 = sub_2613A122C();
      v29 = sub_2613A1D8C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_261243000, v28, v29, "Unable to create ui service", v30, 2u);
        MEMORY[0x266701350](v30, -1, -1);
      }

      return (*(v23 + 8))(v12, v22);
    }
  }
}

uint64_t sub_261275B28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v18 - v4;
  v6 = sub_26129B684();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
    if (v1[3])
    {
LABEL_3:

      sub_2613A179C();

      v9 = v1[3];
    }
  }

  else
  {

    v10 = sub_2613A122C();
    v11 = sub_2613A1D9C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_26124C11C(v1[4], v1[5], &v19);
      *(v12 + 12) = 2080;
      if (v1[3])
      {
        v14 = 0x29286C65636E6163;
      }

      else
      {
        v14 = 7104878;
      }

      if (v1[3])
      {
        v15 = 0xE800000000000000;
      }

      else
      {
        v15 = 0xE300000000000000;
      }

      v16 = sub_26124C11C(v14, v15, &v19);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_261243000, v10, v11, "%{public}s deferred cleanup - %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266701350](v13, -1, -1);
      MEMORY[0x266701350](v12, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
    if (v1[3])
    {
      goto LABEL_3;
    }
  }

  v1[3] = 0;
}

uint64_t sub_261275DC0(int a1)
{
  v2 = v1;
  v103 = a1;
  v88 = *v1;
  v3 = sub_2613A177C();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v94 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v95 = &v86 - v7;
  v8 = sub_2613A172C();
  v92 = *(v8 - 8);
  v93 = v8;
  v9 = *(v92 + 64);
  MEMORY[0x28223BE20](v8);
  v91 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2613A171C();
  v11 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v90 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v98 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v86 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v87 = &v86 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v86 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v86 - v24;
  v26 = sub_26129B684();
  sub_26125A870(v26, v25, &qword_27FE9F560, &qword_2613A3CB0);
  v27 = sub_2613A124C();
  v28 = *(v27 - 8);
  v102 = *(v28 + 48);
  v29 = v102(v25, 1, v27);
  v100 = v28;
  v101 = v2;
  if (v29 == 1)
  {
    v30 = v27;
    sub_26124C718(v25, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v31 = sub_26125A798();
    v32 = sub_261291AA8();
    sub_26129BC3C(v31 & 1, v2, 0xD000000000000015, 0x80000002613B8AE0, v32, v33);

    v30 = v27;
    (*(v28 + 8))(v25, v27);
  }

  if (v103 && v103 == 1)
  {

LABEL_8:
    sub_26125A870(v26, v23, &qword_27FE9F560, &qword_2613A3CB0);
    if (v102(v23, 1, v30) == 1)
    {
      v35 = sub_26124C718(v23, &qword_27FE9F560, &qword_2613A3CB0);
      v36 = v101;
    }

    else
    {
      v36 = v101;

      v37 = sub_2613A122C();
      v38 = sub_2613A1D8C();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        *v39 = 136446210;
        *(v39 + 4) = sub_26124C11C(v36[4], v36[5], aBlock);
        _os_log_impl(&dword_261243000, v37, v38, "%{public}s cannot be presented, cleaning up", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v40);
        MEMORY[0x266701350](v40, -1, -1);
        MEMORY[0x266701350](v39, -1, -1);
      }

      v35 = (*(v100 + 8))(v23, v30);
    }

    return (*(*v36 + 448))(v35);
  }

  v34 = sub_2613A241C();

  if (v34)
  {
    goto LABEL_8;
  }

  if (v103)
  {
    v42 = sub_2613A241C();

    if ((v42 & 1) == 0)
    {
      v43 = v87;
      sub_26125A870(v26, v87, &qword_27FE9F560, &qword_2613A3CB0);
      v44 = v102(v43, 1, v30);
      v46 = v100;
      v45 = v101;
      if (v44 == 1)
      {
        sub_26124C718(v43, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {

        v81 = sub_2613A122C();
        v82 = sub_2613A1D8C();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          aBlock[0] = v84;
          *v83 = 136446210;
          *(v83 + 4) = sub_26124C11C(v45[4], v45[5], aBlock);
          _os_log_impl(&dword_261243000, v81, v82, "%{public}s invalidated with unexpected error", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          MEMORY[0x266701350](v84, -1, -1);
          MEMORY[0x266701350](v83, -1, -1);
        }

        (*(v46 + 8))(v43, v30);
      }

      v85 = sub_261275B28();
      return (*(*v45 + 448))(v85);
    }
  }

  else
  {
  }

  v47 = v99;
  sub_26125A870(v26, v99, &qword_27FE9F560, &qword_2613A3CB0);
  v48 = v30;
  v49 = v102;
  v50 = v102(v47, 1, v30);
  v51 = v100;
  v52 = v101;
  if (v50 == 1)
  {
    v53 = sub_26124C718(v47, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v54 = sub_2613A122C();
    v55 = sub_2613A1D8C();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_26124C11C(v52[4], v52[5], aBlock);
      _os_log_impl(&dword_261243000, v54, v55, "%{public}s invalidated normally with .handleRequested event", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x266701350](v57, -1, -1);
      v58 = v56;
      v47 = v99;
      MEMORY[0x266701350](v58, -1, -1);
    }

    v53 = (*(v51 + 8))(v47, v48);
  }

  if ((*(*v52 + 192))(v53))
  {
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = swift_allocObject();
    v61 = v88;
    v60[2] = *(v88 + 80);
    v60[3] = *(v61 + 88);
    v60[4] = v59;
    aBlock[4] = sub_26127DF94;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_261276D54;
    aBlock[3] = &block_descriptor_162;
    _Block_copy(aBlock);
    v104 = MEMORY[0x277D84F90];
    sub_26127E054(&qword_27FE9F4B0, MEMORY[0x277D85198]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
    sub_26127DF9C(&qword_27FE9F4B8, &unk_27FE9F640, &unk_2613AA600);
    sub_2613A203C();
    v62 = sub_2613A17AC();
    v63 = *(v62 + 48);
    v64 = *(v62 + 52);
    swift_allocObject();
    v65 = sub_2613A178C();

    v66 = v52[3];
    v52[3] = v65;

    sub_26127BBE0();
    v68 = v91;
    v67 = v92;
    v69 = v93;
    (*(v92 + 104))(v91, *MEMORY[0x277D851C8], v93);
    v70 = sub_2613A1E3C();
    (*(v67 + 8))(v68, v69);
    v71 = v94;
    sub_2613A176C();
    v72 = v95;
    sub_2613A17CC();
    v73 = *(v96 + 8);
    v74 = v71;
    v75 = v97;
    v73(v74, v97);
    sub_2613A1DFC();

    return (v73)(v72, v75);
  }

  else
  {
    v76 = v98;
    sub_26125A870(v26, v98, &qword_27FE9F560, &qword_2613A3CB0);
    if (v49(v76, 1, v48) == 1)
    {
      return sub_26124C718(v76, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {

      v77 = sub_2613A122C();
      v78 = sub_2613A1D8C();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        aBlock[0] = v80;
        *v79 = 136446210;
        *(v79 + 4) = sub_26124C11C(v52[4], v52[5], aBlock);
        _os_log_impl(&dword_261243000, v77, v78, "%{public}s already closed, no deferred cleanup needed", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v80);
        MEMORY[0x266701350](v80, -1, -1);
        MEMORY[0x266701350](v79, -1, -1);
      }

      return (*(v51 + 8))(v98, v48);
    }
  }
}

uint64_t sub_261276AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15 - v2;
  v4 = sub_26129B684();
  sub_26125A870(v4, v3, &qword_27FE9F560, &qword_2613A3CB0);
  v5 = sub_2613A124C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_26124C718(v3, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v7 = sub_2613A122C();
    v8 = sub_2613A1D8C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136446210;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v12 = *(Strong + 40);
        v16 = *(Strong + 32);

        Strong = v16;
      }

      else
      {
        v12 = 0xE000000000000000;
      }

      v13 = sub_26124C11C(Strong, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_261243000, v7, v8, "%{public}s deferred cleanup triggered", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x266701350](v10, -1, -1);
      MEMORY[0x266701350](v9, -1, -1);
    }

    (*(v6 + 8))(v3, v5);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 448))(result);
  }

  return result;
}

uint64_t sub_261276D54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_261276D98(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() anonymousListener];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;

  sub_26124A17C(a1);
  v7 = *sub_2612E788C();
  v8 = v5;

  v9 = nullsub_1(v8, sub_26127E09C);
  sub_2612E81B8(v9, v10, v11);

  v12 = [v8 endpoint];

  return v12;
}

void sub_261276EAC(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - v11;
  v13 = sub_26129B684();
  sub_26125A870(v13, v12, &qword_27FE9F560, &qword_2613A3CB0);
  v14 = sub_2613A124C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v32 = v8;

    v16 = sub_2613A122C();
    v17 = sub_2613A1D7C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      aBlock = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_26124C11C(v4[4], v4[5], &aBlock);
      _os_log_impl(&dword_261243000, v16, v17, "%{public}s configuring connection", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x266701350](v20, -1, -1);
      v21 = v19;
      a3 = v31;
      MEMORY[0x266701350](v21, -1, -1);
    }

    (*(v15 + 8))(v12, v14);
    v8 = v32;
  }

  [a1 setExportedInterface_];
  [a1 setExportedObject_];
  [a1 setRemoteObjectInterface_];
  v38 = sub_26127DF74;
  v39 = v4;
  aBlock = MEMORY[0x277D85DD0];
  v35 = 1107296256;
  v36 = sub_261277574;
  v37 = &block_descriptor_0;
  v22 = _Block_copy(&aBlock);

  v23 = [a1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v22);
  sub_2613A202C();
  swift_unknownObjectRelease();
  v24 = *(v8 + 80);
  if (swift_dynamicCast())
  {
    v25 = v33;
  }

  else
  {
    v25 = 0;
  }

  swift_beginAccess();
  v26 = v4[9];
  v4[9] = v25;
  swift_unknownObjectRelease();
  if (a2)
  {
    v38 = a2;
    v39 = a3;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_261276D54;
    v37 = &block_descriptor_155;
    v27 = _Block_copy(&aBlock);
    sub_26124A17C(a2);

    [a1 setInvalidationHandler_];
    _Block_release(v27);
    sub_26124A228(a2);
  }

  [a1 resume];
  swift_beginAccess();
  v28 = v4[8];
  v4[8] = a1;
  v29 = a1;
}

uint64_t sub_261277300(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_26129B684();
  sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
  v9 = sub_2613A124C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v11 = a1;
    v12 = sub_2613A122C();
    v13 = sub_2613A1D8C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_26124C11C(*(a2 + 32), *(a2 + 40), &v21);
      *(v14 + 12) = 2082;
      swift_getErrorValue();
      v16 = sub_2613A24FC();
      v18 = sub_26124C11C(v16, v17, &v21);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_261243000, v12, v13, "%{public}s connection invalidated with error: %{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266701350](v15, -1, -1);
      MEMORY[0x266701350](v14, -1, -1);
    }

    (*(v10 + 8))(v7, v9);
  }

  return sub_261275DC0(0);
}

void sub_261277574(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_2612775DC()
{
  v1 = (*(*v0 + 240))();
  [v1 invalidate];

  swift_beginAccess();
  v2 = v0[8];
  v0[8] = 0;
}

uint64_t sub_261277658(const char *a1, char a2)
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_26129B684();
  sub_26125A870(v10, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v11 = sub_2613A124C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v13 = sub_2613A122C();
    v14 = sub_2613A1D9C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_26124C11C(*(v5 + 32), *(v5 + 40), &v19);
      _os_log_impl(&dword_261243000, v13, v14, a1, v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x266701350](v16, -1, -1);
      MEMORY[0x266701350](v15, -1, -1);
    }

    (*(v12 + 8))(v9, v11);
  }

  result = swift_beginAccess();
  *(v5 + 16) = a2;
  return result;
}

void *sub_2612778B4(SEL *a1)
{
  result = (*(*v1 + 264))();
  if (result)
  {
    [result *a1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261277974()
{

  sub_26127BEAC();
}

uint64_t sub_2612779B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);
  swift_unknownObjectRelease();

  MEMORY[0x266701400](v0 + 96);
  MEMORY[0x266701400](v0 + 104);

  return v0;
}

uint64_t sub_261277A20()
{
  sub_2612779B0();

  return swift_deallocClassInstance();
}

uint64_t sub_261277BB0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for UIContextType(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26139F64C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F61C();
  sub_26139F5DC();
  (*(v17 + 8))(v20, v16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F468, &unk_2613A4D80);
  v22 = *(v21 + 48);
  v23 = *(v21 + 64);
  *v15 = a1;
  v24 = sub_26139F97C();
  (*(*(v24 - 8) + 16))(&v15[v22], a2, v24);
  v15[v23] = a3;
  swift_storeEnumTagMultiPayload();
  v25 = a1;
  if (sub_26127C0E8(v15))
  {
    v4[128] = 1;
    (*(*v4 + 384))();

    return sub_26127D754(v15);
  }

  else
  {
    v27 = sub_26129B6C4();
    sub_26125A870(v27, v11, &qword_27FE9F560, &qword_2613A3CB0);
    v28 = sub_2613A124C();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v11, 1, v28) == 1)
    {
      sub_26127D754(v15);
      return sub_26124C718(v11, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v30 = sub_2613A122C();
      v31 = sub_2613A1D8C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_261243000, v30, v31, "daemon | Context data not available, closing UI", v32, 2u);
        MEMORY[0x266701350](v32, -1, -1);
      }

      sub_26127D754(v15);
      return (*(v29 + 8))(v11, v28);
    }
  }
}

uint64_t sub_261277F38(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v5 = v4;
  v31 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30[-v11];
  v13 = type metadata accessor for UIContextType(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_26139F64C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26139F3BC();
  sub_26139F5DC();
  (*(v18 + 8))(v21, v17);
  *v16 = a1;
  *(v16 + 1) = a2;
  *(v16 + 2) = a3;
  v16[24] = v31;
  swift_storeEnumTagMultiPayload();

  v22 = a3;
  if (sub_26127C0E8(v16))
  {
    v5[128] = 3;
    (*(*v5 + 384))();

    return sub_26127D754(v16);
  }

  else
  {
    v24 = sub_26129B704();
    sub_26125A870(v24, v12, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v12, 1, v25) == 1)
    {
      sub_26127D754(v16);
      return sub_26124C718(v12, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "daemon | Context data not available, closing UI", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      sub_26127D754(v16);
      return (*(v26 + 8))(v12, v25);
    }
  }
}

void sub_2612782A8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v19[-v5 - 8];
  if (v0[128] != 3)
  {
    v7 = (*(*v0 + 240))(v4);
    if (v7)
    {
      v8 = v7;
      sub_26128DAD8(v8, v19);
      sub_26127D7B0(v19);
      if ((v19[84] & 1) == 0)
      {
        v11 = sub_26129B6C4();
        sub_26125A870(v11, v6, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) == 1)
        {
          v14 = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v15 = sub_2613A122C();
          v16 = sub_2613A1D8C();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_261243000, v15, v16, "daemon | Invalid entitlement, closing UI", v17, 2u);
            MEMORY[0x266701350](v17, -1, -1);
          }

          v14 = (*(v13 + 8))(v6, v12);
        }

        (*(*v1 + 464))(v14);
LABEL_13:

        return;
      }
    }

    v9 = sub_261277658("%{public}s did load", 1);
    v10 = (*(*v0 + 288))(v9);
    if (!v10)
    {
      return;
    }

    v8 = v10;
    sub_261318F10();
    goto LABEL_13;
  }
}

void sub_26127854C(char a1)
{
  v3 = (*(*v1 + 288))();
  if (v3)
  {
    v4 = v3;
    v5 = (*(*v1 + 544))();
    sub_261319DDC(a1 & 1, v5 & 1);
  }

  v1[128] = 0;
  sub_26127BC3C();
}

uint64_t sub_261278600(_BYTE *a1, uint64_t a2, int a3)
{
  v5 = *(*a1 + 288);

  v6 = v5();
  if (v6)
  {
    v7 = v6;
    v8 = (*(*a1 + 544))();
    sub_261319DDC(a3, v8 & 1);
  }

  a1[128] = 0;
  sub_26127BC3C();
}

uint64_t sub_2612786D4()
{
  v1 = sub_261277658("%{public}s invalidated", 0);
  result = (*(*v0 + 288))(v1);
  if (result)
  {
    v3 = result;
    if (v0[128] == 3)
    {
      v4 = sub_2613A0DDC();
    }

    else
    {
      v4 = sub_2613A0DEC();
    }

    sub_261318724(v4, v5);
  }

  return result;
}

uint64_t sub_261278788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21 = sub_2613A1E0C();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2613A1DDC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_2613A175C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = swift_allocObject();
  *(v14 + 128) = 0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v14 + 112) = 0;
  v15 = sub_26127BBE0();
  v20[0] = "stFailed";
  v20[1] = v15;
  sub_2613A174C();
  v28 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v21);
  *(v14 + 120) = sub_2613A1E2C();
  v16 = v23;
  *(v14 + 32) = v22;
  *(v14 + 40) = v16;
  v17 = v25;
  *(v14 + 48) = v24;
  *(v14 + 56) = v17;
  v18 = v27;
  *(v14 + 80) = v26;
  *(v14 + 88) = v18;
  return v14;
}

uint64_t sub_261278A40()
{
  sub_2612779B0();

  return swift_deallocClassInstance();
}

uint64_t sub_26127910C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v39[1] = a4;
  v42 = a3;
  v41 = a1;
  v40 = HIWORD(a5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39[0] = v39 - v8;
  v9 = type metadata accessor for UIContextType(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v39 - v15;
  v17 = sub_26139EF7C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_26139F64C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26139F4FC();
  sub_26139F5DC();
  (*(v23 + 8))(v26, v22);
  sub_261291238(v40);
  sub_26128FAFC(52, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_26124C718(v16, &qword_27FE9F220, qword_2613A5530);
  }

  else
  {
    (*(v18 + 8))(v21, v17);
    (*(v18 + 32))(v21, v16, v17);
  }

  v27 = sub_26139EEAC();
  *v12 = v41;
  *(v12 + 1) = a2;
  v12[16] = v42 & 1;
  *(v12 + 3) = v27;
  *(v12 + 4) = v28;
  v29 = *MEMORY[0x277D43810];
  v30 = sub_26139FA8C();
  (*(*(v30 - 8) + 104))(v12, v29, v30);
  swift_storeEnumTagMultiPayload();
  if (sub_26127C0E8(v12))
  {
    (*(*v39[2] + 384))();

    sub_26127D754(v12);
    return (*(v18 + 8))(v21, v17);
  }

  else
  {
    v32 = sub_26129B744();
    v33 = v39[0];
    sub_26125A870(v32, v39[0], &qword_27FE9F560, &qword_2613A3CB0);
    v34 = sub_2613A124C();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_26127D754(v12);
      (*(v18 + 8))(v21, v17);
      return sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v36 = sub_2613A122C();
      v37 = sub_2613A1D8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_261243000, v36, v37, "daemon | Context data not available, closing UI", v38, 2u);
        MEMORY[0x266701350](v38, -1, -1);
      }

      sub_26127D754(v12);
      (*(v18 + 8))(v21, v17);
      return (*(v35 + 8))(v33, v34);
    }
  }
}

void sub_26127964C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29[-v8 - 8];
  v10 = (*(*v0 + 240))(v7);
  if (!v10)
  {
LABEL_4:
    v12 = (*(*v0 + 288))();
    if (v12)
    {
      v13 = v12;
      sub_261277658("%{public}s did load", 1);
      sub_26131D770();
    }

    else
    {
      v18 = sub_26129B4AC();
      sub_26125A870(v18, v6, &qword_27FE9F560, &qword_2613A3CB0);
      v19 = sub_2613A124C();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v6, 1, v19) == 1)
      {
        v21 = sub_26124C718(v6, &qword_27FE9F560, &qword_2613A3CB0);
      }

      else
      {
        v25 = sub_2613A122C();
        v26 = sub_2613A1D9C();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_261243000, v25, v26, "No delegate to notify about RegUI load, closing UI", v27, 2u);
          MEMORY[0x266701350](v27, -1, -1);
        }

        v21 = (*(v20 + 8))(v6, v19);
      }

      (*(*v1 + 464))(v21);
    }

    return;
  }

  v11 = v10;
  sub_26128DAD8(v11, v29);
  sub_26127D7B0(v29);
  if (v29[85])
  {

    goto LABEL_4;
  }

  v14 = sub_26129B4AC();
  sub_26125A870(v14, v9, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    v17 = sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v22 = sub_2613A122C();
    v23 = sub_2613A1D9C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_261243000, v22, v23, "Invalid entitlement, closing UI", v24, 2u);
      MEMORY[0x266701350](v24, -1, -1);
    }

    v17 = (*(v16 + 8))(v9, v15);
  }

  (*(*v1 + 464))(v17);
}

uint64_t sub_261279A5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_261279AA0()
{
  v1 = (*(*v0 + 288))();
  if (v1)
  {
    v2 = v1;
    sub_26131D5E4();
  }

  return sub_261277658("%{public}s invalidated", 0);
}

uint64_t sub_261279B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21 = sub_2613A1E0C();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2613A1DDC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_2613A175C();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v6 + 112) = 0;
  v15 = sub_26127BBE0();
  v20[0] = "stFailed";
  v20[1] = v15;
  sub_2613A174C();
  v28 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  (*(v7 + 104))(v10, *MEMORY[0x277D85268], v21);
  *(v6 + 120) = sub_2613A1E2C();
  v16 = v23;
  *(v6 + 32) = v22;
  *(v6 + 40) = v16;
  v17 = v25;
  *(v6 + 48) = v24;
  *(v6 + 56) = v17;
  v18 = v27;
  *(v6 + 80) = v26;
  *(v6 + 88) = v18;
  return v6;
}

uint64_t sub_261279DB0(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_26129B744();
  sub_26125A870(v11, v10, &qword_27FE9F560, &qword_2613A3CB0);
  v12 = sub_2613A124C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    v38 = v13;

    v15 = sub_2613A122C();
    v16 = sub_2613A1D9C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v36 = a2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v37 = a1;
      v20 = v19;
      v40 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_26124C11C(v37, v36, &v40);
      _os_log_impl(&dword_261243000, v15, v16, "daemon | notifyRegUIResult - %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v21 = v20;
      a1 = v37;
      MEMORY[0x266701350](v21, -1, -1);
      MEMORY[0x266701350](v18, -1, -1);
    }

    v13 = v38;
    (*(v38 + 8))(v10, v12);
  }

  sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
  if (v14(v8, 1, v12) == 1)
  {
    v22 = sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    v23 = v39;
  }

  else
  {
    v24 = v39;

    v23 = v24;
    v25 = sub_2613A122C();
    v26 = sub_2613A1D9C();

    if (os_log_type_enabled(v25, v26))
    {
      v37 = a1;
      v38 = v13;
      v27 = 0xD000000000000017;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v29;
      *v28 = 136315138;
      if ((*(*v24 + 264))())
      {
        swift_unknownObjectRelease();
        v30 = "daemon | optional failed";
      }

      else
      {
        v30 = "tlessReaderUI.scene.xpc";
        v27 = 0xD000000000000018;
      }

      v31 = sub_26124C11C(v27, v30 | 0x8000000000000000, &v40);

      *(v28 + 4) = v31;
      _os_log_impl(&dword_261243000, v25, v26, "daemon | %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x266701350](v29, -1, -1);
      MEMORY[0x266701350](v28, -1, -1);

      v13 = v38;
      v23 = v39;
    }

    else
    {
    }

    v22 = (*(v13 + 8))(v8, v12);
  }

  result = (*(*v23 + 264))(v22);
  if (result)
  {
    v33 = result;
    v34 = sub_2613A189C();
    [v33 notifyRegUIResultWithResult_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26127A41C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*a1 + 288);

  v5 = v4();
  if (v5)
  {
    v6 = v5;
    a3();
  }
}

uint64_t sub_26127A4AC(uint64_t a1)
{
  v3 = type metadata accessor for UIContextType(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26139FEEC();
  (*(*(v7 - 8) + 16))(v6, a1, v7);
  swift_storeEnumTagMultiPayload();
  if (sub_26127C0E8(v6))
  {
    (*(*v1 + 384))();
  }

  return sub_26127D754(v6);
}

uint64_t sub_26127A5D4()
{
  v1 = (*(*v0 + 312))();
  if (v1)
  {
    v2 = v1;
    sub_26134AE24(0);
  }

  return sub_261277658("%{public}s invalidated", 0);
}

uint64_t sub_26127A64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v21 = sub_2613A1E0C();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2613A1DDC();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v12 = sub_2613A175C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v14 + 112) = 0;
  v15 = sub_26127BBE0();
  v20[0] = "stFailed";
  v20[1] = v15;
  sub_2613A174C();
  v28 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
  sub_2613A203C();
  (*(v6 + 104))(v9, *MEMORY[0x277D85268], v21);
  *(v14 + 120) = sub_2613A1E2C();
  v16 = v23;
  *(v14 + 32) = v22;
  *(v14 + 40) = v16;
  v17 = v25;
  *(v14 + 48) = v24;
  *(v14 + 56) = v17;
  v18 = v27;
  *(v14 + 80) = v26;
  *(v14 + 88) = v18;
  return v14;
}

uint64_t sub_26127A900()
{
  sub_2612779B0();

  return swift_deallocClassInstance();
}

uint64_t sub_26127A93C(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(*a1 + 264);

  v8 = v6(v7);
  if (v8)
  {
    [v8 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26127A9E0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v5 = *(*a1 + 264);
  v6 = a3;

  v8 = v5(v7);
  if (v8)
  {
    [v8 *a4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_26127ABCC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *(*a1 + 312);

  v7 = v6();
  if (v7)
  {
    v8 = v7;
    a4(a3);
  }
}

uint64_t sub_26127ADB8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UIContextType(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = a1;
  v8[1] = a2;
  v9 = *MEMORY[0x277D43808];
  v10 = sub_26139FA8C();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  swift_storeEnumTagMultiPayload();

  if (sub_26127C0E8(v8))
  {
    (*(*v2 + 384))();
  }

  return sub_26127D754(v8);
}

void *sub_26127AEF8()
{
  v1 = (*v0 + 264);
  v2 = *v1;
  v3 = (*v1)();
  if (v3)
  {
    [v3 closeUI];
    v3 = swift_unknownObjectRelease();
  }

  result = (v2)(v3);
  if (result)
  {
    [result closeUI];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26127AFB0(uint64_t a1)
{
  v1 = *(*a1 + 264);

  v3 = v1(v2);
  if (v3)
  {
    [v3 closeUI];
    v3 = swift_unknownObjectRelease();
  }

  v4 = v1(v3);
  if (v4)
  {
    [v4 closeUI];
    swift_unknownObjectRelease();
  }
}

void sub_26127B064()
{
  v1 = sub_261277658("%{public}s did load", 1);
  v2 = (*(*v0 + 312))(v1);
  if (v2)
  {
    v3 = v2;
    sub_261356784();
  }
}

uint64_t sub_26127B0F8(uint64_t a1)
{

  v2 = sub_261277658("%{public}s did load", 1);
  v3 = (*(*a1 + 312))(v2);
  if (v3)
  {
    v4 = v3;
    sub_261356784();
  }
}

void sub_26127B18C()
{
  if ((*(*v0 + 192))())
  {
    v1 = (*(*v0 + 312))();
    if (v1)
    {
      v2 = v1;
      sub_261253D6C();
      sub_26134B8A0();
    }
  }

  sub_26127BC3C();
}

uint64_t sub_26127B224(uint64_t a1)
{
  v2 = *(*a1 + 192);

  if (v2())
  {
    v3 = (*(*a1 + 312))();
    if (v3)
    {
      v4 = v3;
      sub_261253D6C();
      sub_26134B8A0();
    }
  }

  sub_26127BC3C();
}

uint64_t sub_26127B2E0()
{
  v1 = (*(*v0 + 312))();
  if (v1)
  {
    v2 = v1;
    sub_261357180();
  }

  return sub_261277658("%{public}s invalidated", 0);
}

uint64_t sub_26127B448(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = *(*a1 + 312);

  v5 = v4();
  if (v5)
  {
    v6 = v5;
    a3();
  }
}

uint64_t sub_26127B4E0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v30 = sub_2613A1E0C();
  v5 = *(v30 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v30);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2613A1DDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2613A175C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_2613A0D4C();
  v32 = v13;
  v33 = v12;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v16 = objc_opt_self();
      v29 = [v16 interfaceWithProtocol_];
      v28 = [v16 interfaceWithProtocol_];
      type metadata accessor for IdentityUIManager(0);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 64) = 0;
      *(v15 + 72) = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      *(v15 + 112) = 0;
      v27 = sub_26127BBE0();
      sub_2613A174C();
      v35 = MEMORY[0x277D84F90];
      sub_26127E054(&qword_281451970, MEMORY[0x277D85230]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
      sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
      goto LABEL_6;
    }

    v27 = 0x80000002613B8800;
    v21 = objc_opt_self();
    v29 = [v21 interfaceWithProtocol_];
    v28 = [v21 interfaceWithProtocol_];
    type metadata accessor for IdentityRegUIManager(0);
LABEL_9:
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 64) = 0;
    *(v15 + 72) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v15 + 112) = 0;
    v26 = sub_26127BBE0();
    sub_2613A174C();
    v35 = MEMORY[0x277D84F90];
    sub_26127E054(&qword_281451970, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
    sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
    sub_2613A203C();
    (*(v5 + 104))(v31, *MEMORY[0x277D85268], v30);
    v22 = sub_2613A1E2C();
    v19 = v27;
    *(v15 + 120) = v22;
    v18 = 0xD000000000000030;
    goto LABEL_10;
  }

  if (a1)
  {
    v27 = 0x80000002613B8800;
    v20 = objc_opt_self();
    v29 = [v20 interfaceWithProtocol_];
    v28 = [v20 interfaceWithProtocol_];
    type metadata accessor for RegistrationUIManager(0);
    goto LABEL_9;
  }

  v14 = objc_opt_self();
  v29 = [v14 interfaceWithProtocol_];
  v28 = [v14 interfaceWithProtocol_];
  type metadata accessor for TransactionUIManager(0);
  v15 = swift_allocObject();
  *(v15 + 128) = 0;
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v15 + 112) = 0;
  v27 = sub_26127BBE0();
  sub_2613A174C();
  v35 = MEMORY[0x277D84F90];
  sub_26127E054(&qword_281451970, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F460, qword_2613A4D60);
  sub_26127DF9C(qword_281451988, &qword_27FE9F460, qword_2613A4D60);
LABEL_6:
  sub_2613A203C();
  (*(v5 + 104))(v31, *MEMORY[0x277D85268], v30);
  v17 = sub_2613A1E2C();
  v18 = 0;
  *(v15 + 120) = v17;
  v19 = 0xE000000000000000;
LABEL_10:
  v23 = v32;
  *(v15 + 32) = v33;
  *(v15 + 40) = v23;
  *(v15 + 48) = v18;
  *(v15 + 56) = v19;
  v24 = v28;
  *(v15 + 80) = v29;
  *(v15 + 88) = v24;
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_26127BB94()
{
  v0 = sub_2613A228C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_26127BBE0()
{
  result = qword_281451968;
  if (!qword_281451968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281451968);
  }

  return result;
}

void sub_26127BC3C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16[-v4];
  v6 = sub_26129B684();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_26124C11C(*(v1 + 32), *(v1 + 40), &v17);
      _os_log_impl(&dword_261243000, v9, v10, "%{public}s finished", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  swift_beginAccess();
  *(v1 + 16) = 0;
  v13 = sub_261275B28();
  v14 = (*(*v1 + 240))(v13);
  [v14 invalidate];

  swift_beginAccess();
  v15 = *(v1 + 64);
  *(v1 + 64) = 0;
}

void sub_26127BEAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_26129B684();
  sub_26125A870(v6, v5, &qword_27FE9F560, &qword_2613A3CB0);
  v7 = sub_2613A124C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_26124C718(v5, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {

    v9 = sub_2613A122C();
    v10 = sub_2613A1D9C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_26124C11C(*(v1 + 32), *(v1 + 40), &v14);
      _os_log_impl(&dword_261243000, v9, v10, "%{public}s finished", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x266701350](v12, -1, -1);
      MEMORY[0x266701350](v11, -1, -1);
    }

    (*(v8 + 8))(v5, v7);
  }

  swift_beginAccess();
  *(v1 + 16) = 0;
  sub_261275B28();
  sub_2612775DC();
}

unint64_t sub_26127C0E8(uint64_t a1)
{
  v225[107] = *MEMORY[0x277D85DE8];
  v2 = sub_26139FEEC();
  v223 = *(v2 - 8);
  v224 = v2;
  v3 = *(v223 + 64);
  MEMORY[0x28223BE20](v2);
  v222 = &v207[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v218 = sub_26139FA8C();
  v213 = *(v218 - 8);
  v5 = *(v213 + 64);
  MEMORY[0x28223BE20](v218);
  v217 = &v207[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v207[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v210 = &v207[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v207[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v207[-v18];
  MEMORY[0x28223BE20](v17);
  v211 = &v207[-v20];
  v21 = sub_26139F8EC();
  v220 = *(v21 - 8);
  v221 = v21;
  v22 = *(v220 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v212 = &v207[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v216 = &v207[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v215 = &v207[-v28];
  v29 = MEMORY[0x28223BE20](v27);
  v214 = &v207[-v30];
  MEMORY[0x28223BE20](v29);
  v219 = &v207[-v31];
  v32 = sub_26139F97C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v207[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v37 = type metadata accessor for UIContextType(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v40 = &v207[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26127DFF0(a1, v40);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v223 + 32))(v222, v40, v224);
      sub_26127E054(&qword_27FE9F4C0, MEMORY[0x277D439D0]);
      v106 = sub_26124AEF8(0, 0);
      if (v107 >> 60 != 15)
      {
        v217 = v106;
        v218 = v107;
        type metadata accessor for Mock();
        LODWORD(v212) = sub_26129B0F4(14);
        if (sub_26129B0F4(16))
        {
          v213 = 60;
        }

        else
        {
          v213 = sub_2613A0D0C();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2613A4D40;
        v140 = v219;
        v141 = v220;
        v142 = *(v220 + 104);
        v143 = v221;
        v142(v219, *MEMORY[0x277D43750], v221);
        v144 = sub_26139F8DC();
        v146 = v145;
        v147 = *(v141 + 8);
        v147(v140, v143);
        *(inited + 32) = v144;
        v220 = inited + 32;
        *(inited + 40) = v146;
        v148 = sub_2613A026C();
        *(inited + 72) = MEMORY[0x277D83B88];
        *(inited + 48) = v148;
        v149 = v214;
        v142(v214, *MEMORY[0x277D43758], v143);
        v150 = sub_26139F8DC();
        v152 = v151;
        v147(v149, v143);
        *(inited + 80) = v150;
        *(inited + 88) = v152;
        *(inited + 120) = MEMORY[0x277CC9318];
        v153 = v217;
        v154 = v218;
        *(inited + 96) = v217;
        *(inited + 104) = v154;
        v155 = v215;
        v142(v215, *MEMORY[0x277D43740], v143);
        sub_26124C778(v153, v154);
        v156 = sub_26139F8DC();
        v158 = v157;
        v147(v155, v143);
        *(inited + 128) = v156;
        *(inited + 136) = v158;
        *(inited + 168) = MEMORY[0x277D839B0];
        *(inited + 144) = v212 & 1;
        v159 = v216;
        v142(v216, *MEMORY[0x277D43748], v143);
        v160 = sub_26139F8DC();
        v162 = v161;
        v147(v159, v143);
        *(inited + 176) = v160;
        *(inited + 184) = v162;
        *(inited + 216) = MEMORY[0x277D83B88];
        *(inited + 192) = v213;
        v197 = sub_261259E78(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
        swift_arrayDestroy();
        sub_26124A168(v217, v218);
        (*(v223 + 8))(v222, v224);
        goto LABEL_30;
      }

      v108 = sub_26129BB98();
      sub_26125A870(v108, v16, &qword_27FE9F560, &qword_2613A3CB0);
      v109 = sub_2613A124C();
      v110 = *(v109 - 8);
      if ((*(v110 + 48))(v16, 1, v109) != 1)
      {
        v136 = sub_2613A122C();
        v137 = sub_2613A1D8C();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = swift_slowAlloc();
          *v138 = 0;
          _os_log_impl(&dword_261243000, v136, v137, "Unable to encode identity request", v138, 2u);
          MEMORY[0x266701350](v138, -1, -1);
        }

        (*(v223 + 8))(v222, v224);
        (*(v110 + 8))(v16, v109);
        goto LABEL_38;
      }

      (*(v223 + 8))(v222, v224);
      v63 = v16;
      goto LABEL_21;
    }

    v55 = v213;
    v56 = v217;
    v57 = v218;
    (*(v213 + 32))(v217, v40, v218);
    sub_26127E054(&qword_27FE9F4C8, MEMORY[0x277D43818]);
    v58 = sub_26124AEF8(0, 0);
    if (v59 >> 60 == 15)
    {
      v60 = sub_26129B744();
      sub_26125A870(v60, v19, &qword_27FE9F560, &qword_2613A3CB0);
      v61 = sub_2613A124C();
      v62 = *(v61 - 8);
      if ((*(v62 + 48))(v19, 1, v61) != 1)
      {
        v133 = sub_2613A122C();
        v134 = sub_2613A1D8C();
        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          *v135 = 0;
          _os_log_impl(&dword_261243000, v133, v134, "Unable to encode registration request", v135, 2u);
          MEMORY[0x266701350](v135, -1, -1);
        }

        (*(v55 + 8))(v56, v57);
        (*(v62 + 8))(v19, v61);
        goto LABEL_38;
      }

      (*(v55 + 8))(v56, v57);
      v63 = v19;
      goto LABEL_21;
    }

    v111 = v58;
    v112 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_2613A4310;
    v114 = v219;
    v115 = v220;
    v116 = v55;
    v117 = v221;
    (*(v220 + 104))(v219, *MEMORY[0x277D43730], v221);
    v118 = sub_26139F8DC();
    v120 = v119;
    (*(v115 + 8))(v114, v117);
    *(v113 + 32) = v118;
    *(v113 + 72) = MEMORY[0x277CC9318];
    *(v113 + 40) = v120;
    *(v113 + 48) = v111;
    *(v113 + 56) = v112;
    v121 = sub_261259E78(v113);
    swift_setDeallocating();
    sub_26124C718(v113 + 32, &qword_27FE9F2F0, &qword_2613A4BD0);
    (*(v116 + 8))(v217, v218);
    result = v121;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v42 = *v40;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F468, &unk_2613A4D80);
      v44 = v40[*(v43 + 64)];
      (*(v33 + 32))(v36, &v40[*(v43 + 48)], v32);
      v45 = objc_opt_self();
      v225[0] = 0;
      v46 = [v45 archivedDataWithRootObject:v42 requiringSecureCoding:1 error:v225];
      v47 = v225[0];
      if (v46)
      {
        v48 = sub_26139F01C();
        v50 = v49;

        v51 = sub_26139ECEC();
        v52 = *(v51 + 48);
        v53 = *(v51 + 52);
        swift_allocObject();
        sub_26139ECDC();
        sub_26127E054(&qword_27FE9F4D0, MEMORY[0x277D43798]);
        v54 = sub_26139ECCC();
        v224 = v48;
        v222 = v54;
        v218 = v163;

        type metadata accessor for Mock();
        LODWORD(v210) = sub_26129B0F4(14);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
        v164 = swift_initStackObject();
        v217 = v36;
        v165 = v164;
        *(v164 + 16) = xmmword_2613A4D50;
        v166 = *MEMORY[0x277D43750];
        v167 = v220;
        v211 = v42;
        v168 = *(v220 + 104);
        v209 = v32;
        v169 = v219;
        v213 = v33;
        v170 = v221;
        v168(v219, v166, v221);
        v171 = sub_26139F8DC();
        v223 = v50;
        v173 = v172;
        v208 = v44;
        v174 = *(v167 + 8);
        v174(v169, v170);
        *(v165 + 32) = v171;
        v220 = v165 + 32;
        *(v165 + 40) = v173;
        v175 = sub_2613A026C();
        *(v165 + 72) = MEMORY[0x277D83B88];
        *(v165 + 48) = v175;
        v176 = v214;
        v168(v214, *MEMORY[0x277D43728], v170);
        v177 = sub_26139F8DC();
        v179 = v178;
        v174(v176, v170);
        *(v165 + 80) = v177;
        *(v165 + 88) = v179;
        *(v165 + 120) = MEMORY[0x277CC9318];
        v181 = v223;
        v180 = v224;
        *(v165 + 96) = v224;
        *(v165 + 104) = v181;
        v182 = v215;
        v168(v215, *MEMORY[0x277D43760], v170);
        sub_26124C778(v180, v181);
        v183 = sub_26139F8DC();
        v185 = v184;
        v174(v182, v170);
        *(v165 + 128) = v183;
        *(v165 + 136) = v185;
        *(v165 + 168) = MEMORY[0x277CC9318];
        v186 = v222;
        v187 = v218;
        *(v165 + 144) = v222;
        *(v165 + 152) = v187;
        v188 = v216;
        v168(v216, *MEMORY[0x277D43738], v170);
        sub_26124C778(v186, v187);
        v189 = sub_26139F8DC();
        v191 = v190;
        v174(v188, v170);
        v192 = MEMORY[0x277D839B0];
        *(v165 + 176) = v189;
        *(v165 + 184) = v191;
        *(v165 + 216) = v192;
        *(v165 + 192) = v208;
        v193 = v212;
        v168(v212, *MEMORY[0x277D43740], v170);
        v194 = sub_26139F8DC();
        v196 = v195;
        v174(v193, v170);
        *(v165 + 224) = v194;
        *(v165 + 232) = v196;
        *(v165 + 264) = v192;
        *(v165 + 240) = v210 & 1;
        v197 = sub_261259E78(v165);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
        swift_arrayDestroy();

        sub_26124C6C4(v224, v223);
        sub_26124C6C4(v222, v218);
        (*(v213 + 8))(v217, v209);
LABEL_30:
        result = v197;
        goto LABEL_39;
      }

      v122 = v47;
      v123 = sub_26139EE7C();

      swift_willThrow();
      v124 = sub_26129B6C4();
      v125 = v210;
      sub_26125A870(v124, v210, &qword_27FE9F560, &qword_2613A3CB0);
      v126 = sub_2613A124C();
      v127 = *(v126 - 8);
      if ((*(v127 + 48))(v125, 1, v126) != 1)
      {
        v198 = sub_2613A122C();
        v199 = sub_2613A1D8C();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = v42;
          v201 = swift_slowAlloc();
          *v201 = 0;
          _os_log_impl(&dword_261243000, v198, v199, "Unable to encode transaction request", v201, 2u);
          MEMORY[0x266701350](v201, -1, -1);
          v202 = v200;
          v125 = v210;
        }

        else
        {
          v202 = v198;
          v198 = v42;
        }

        (*(v33 + 8))(v36, v32);
        (*(v127 + 8))(v125, v126);
        goto LABEL_38;
      }

      (*(v33 + 8))(v36, v32);

      v63 = v125;
LABEL_21:
      sub_26124C718(v63, &qword_27FE9F560, &qword_2613A3CB0);
LABEL_38:
      result = 0;
      goto LABEL_39;
    }

    v65 = *v40;
    v64 = *(v40 + 1);
    v66 = *(v40 + 2);
    v67 = v40[24];
    v68 = objc_opt_self();
    v225[0] = 0;
    v69 = [v68 archivedDataWithRootObject:v66 requiringSecureCoding:1 error:v225];
    v70 = v225[0];
    if (!v69)
    {
      v128 = v70;

      v129 = sub_26139EE7C();

      swift_willThrow();
      v130 = sub_26129B704();
      sub_26125A870(v130, v11, &qword_27FE9F560, &qword_2613A3CB0);
      v131 = sub_2613A124C();
      v132 = *(v131 - 8);
      if ((*(v132 + 48))(v11, 1, v131) != 1)
      {
        v203 = sub_2613A122C();
        v204 = sub_2613A1D8C();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          *v205 = 0;
          _os_log_impl(&dword_261243000, v203, v204, "Unable to encode pin configuration", v205, 2u);
          MEMORY[0x266701350](v205, -1, -1);
        }

        (*(v132 + 8))(v11, v131);
        goto LABEL_38;
      }

      v63 = v11;
      goto LABEL_21;
    }

    v71 = sub_26139F01C();
    v223 = v72;
    v224 = v71;

    type metadata accessor for Mock();
    LODWORD(v218) = sub_26129B0F4(14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2E8, &unk_2613A43A0);
    v73 = swift_initStackObject();
    *(v73 + 16) = xmmword_2613A4D50;
    v74 = *MEMORY[0x277D43750];
    LODWORD(v217) = v67;
    v76 = v219;
    v75 = v220;
    v213 = v64;
    v222 = v66;
    v77 = *(v220 + 104);
    v211 = v65;
    v78 = v221;
    v77(v219, v74, v221);
    v79 = sub_26139F8DC();
    v81 = v80;
    v82 = *(v75 + 8);
    v82(v76, v78);
    *(v73 + 32) = v79;
    v220 = v73 + 32;
    *(v73 + 40) = v81;
    v83 = sub_2613A026C();
    *(v73 + 72) = MEMORY[0x277D83B88];
    *(v73 + 48) = v83;
    v84 = v214;
    v77(v214, *MEMORY[0x277D43768], v78);
    v85 = sub_26139F8DC();
    v87 = v86;
    v82(v84, v78);
    *(v73 + 80) = v85;
    *(v73 + 88) = v87;
    *(v73 + 120) = MEMORY[0x277D837D0];
    v88 = v213;
    *(v73 + 96) = v211;
    *(v73 + 104) = v88;
    v89 = v215;
    v77(v215, *MEMORY[0x277D43770], v78);
    v90 = sub_26139F8DC();
    v92 = v91;
    v82(v89, v78);
    *(v73 + 128) = v90;
    *(v73 + 136) = v92;
    *(v73 + 168) = MEMORY[0x277CC9318];
    v94 = v223;
    v93 = v224;
    *(v73 + 144) = v224;
    *(v73 + 152) = v94;
    v95 = v216;
    v77(v216, *MEMORY[0x277D43738], v78);
    sub_26124C778(v93, v94);
    v96 = sub_26139F8DC();
    v98 = v97;
    v82(v95, v78);
    v99 = MEMORY[0x277D839B0];
    *(v73 + 176) = v96;
    *(v73 + 184) = v98;
    *(v73 + 216) = v99;
    *(v73 + 192) = v217;
    v100 = v212;
    v77(v212, *MEMORY[0x277D43740], v78);
    v101 = sub_26139F8DC();
    v103 = v102;
    v82(v100, v78);
    *(v73 + 224) = v101;
    *(v73 + 232) = v103;
    *(v73 + 264) = v99;
    *(v73 + 240) = v218 & 1;
    v104 = sub_261259E78(v73);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F2F0, &qword_2613A4BD0);
    swift_arrayDestroy();

    sub_26124C6C4(v224, v223);
    result = v104;
  }

LABEL_39:
  v206 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26127D754(uint64_t a1)
{
  v2 = type metadata accessor for UIContextType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26127D884(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26127D8C0()
{
  result = qword_27FE9F470;
  if (!qword_27FE9F470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F470);
  }

  return result;
}

unint64_t sub_26127D918()
{
  result = qword_27FE9F478;
  if (!qword_27FE9F478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F478);
  }

  return result;
}

unint64_t sub_26127D970()
{
  result = qword_27FE9F480;
  if (!qword_27FE9F480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F480);
  }

  return result;
}

unint64_t sub_26127D9C8()
{
  result = qword_27FE9F488;
  if (!qword_27FE9F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F488);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SEEnvironmentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SEEnvironmentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26127DD28()
{
  sub_26127DDFC();
  if (v0 <= 0x3F)
  {
    sub_26127DE78();
    if (v1 <= 0x3F)
    {
      sub_26127DEEC(319, &qword_27FE9F4A0, MEMORY[0x277D43818]);
      if (v2 <= 0x3F)
      {
        sub_26127DEEC(319, &qword_27FE9F4A8, MEMORY[0x277D439D0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_26127DDFC()
{
  if (!qword_27FE9F490)
  {
    sub_26139FD4C();
    sub_26139F97C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FE9F490);
    }
  }
}

void sub_26127DE78()
{
  if (!qword_27FE9F498)
  {
    sub_26139FA7C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27FE9F498);
    }
  }
}

void sub_26127DEEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26127DF9C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26127DFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIContextType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26127E054(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_26127E09C(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  sub_261276EAC(a1, v2, v3);
}

BOOL sub_26127E13C()
{
  v2 = *(v0 + 120);
  sub_2612FF320();
  sub_261273F80();
  return (sub_2613A185C() & 1) == 0;
}

unint64_t sub_26127E19C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x44656761726F7473;
    v6 = 0x797269707865;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x4449656C646E7562;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x746E61686372656DLL;
    v3 = 0x4972656E74726170;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x496E6F6973736573;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_26127E300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26127EB54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26127E328(uint64_t a1)
{
  v2 = sub_26127EA58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26127E364(uint64_t a1)
{
  v2 = sub_26127EA58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26127E3A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F4D8, &qword_2613A51E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26127EA58();
  sub_2613A262C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v29) = 0;
  sub_2613A238C();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v29) = 1;
    sub_2613A238C();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v29) = 2;
    sub_2613A238C();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v29) = 3;
    sub_2613A238C();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v29) = 4;
    sub_2613A238C();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v29) = 5;
    sub_2613A238C();
    v23 = v3[12];
    v24 = v3[13];
    LOBYTE(v29) = 6;
    sub_2613A238C();
    v25 = v3[14];
    LOBYTE(v29) = 7;
    sub_2613A23AC();
    v29 = *(v3 + 15);
    v28[15] = 8;
    sub_26127EAAC();
    sub_2613A23CC();
    v26 = *(v3 + 136);
    LOBYTE(v29) = 9;
    sub_2613A239C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26127E660()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2613A19DC();
  v3 = v0[2];
  v4 = v0[3];
  sub_2613A19DC();
  v5 = v0[4];
  v6 = v0[5];
  sub_2613A19DC();
  v7 = v0[6];
  v8 = v0[7];
  sub_2613A19DC();
  v9 = v0[8];
  v10 = v0[9];
  sub_2613A19DC();
  v11 = v0[10];
  v12 = v0[11];
  sub_2613A19DC();
  v13 = v0[12];
  v14 = v0[13];
  sub_2613A19DC();
  v15 = *(v0 + 14);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x266700A30](*&v15);
  v18 = *(v0 + 15);
  sub_26127EB00();
  sub_2613A183C();
  v16 = *(v0 + 136);
  return sub_2613A258C();
}

uint64_t sub_26127E734@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, int a16, char a17)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a12;
  *(a9 + 80) = a13;
  *(a9 + 96) = a14;
  *(a9 + 104) = a15;
  *(a9 + 112) = a10;
  *(a9 + 120) = a16;
  *(a9 + 128) = a11;
  *(a9 + 136) = a17;
  return result;
}

__n128 sub_26127E770@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_26127EE98(a1, v8);
  if (!v2)
  {
    v5 = v9[0];
    *(a2 + 96) = v8[6];
    *(a2 + 112) = v5;
    *(a2 + 121) = *(v9 + 9);
    v6 = v8[3];
    *(a2 + 32) = v8[2];
    *(a2 + 48) = v6;
    v7 = v8[5];
    *(a2 + 64) = v8[4];
    *(a2 + 80) = v7;
    result = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_26127E7E4()
{
  sub_2613A256C();
  sub_26127E660();
  return sub_2613A25CC();
}

uint64_t sub_26127E828()
{
  sub_2613A256C();
  sub_26127E660();
  return sub_2613A25CC();
}

uint64_t sub_26127E864@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26127E870(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 121);
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v13[6] = a2[6];
  v14[0] = v6;
  *(v14 + 9) = *(a2 + 121);
  v7 = a2[3];
  v13[2] = a2[2];
  v13[3] = v7;
  v8 = a2[5];
  v13[4] = a2[4];
  v13[5] = v8;
  v9 = a2[1];
  v13[0] = *a2;
  v13[1] = v9;
  return sub_26127E8F8(v11, v13) & 1;
}

uint64_t sub_26127E8F8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (sub_2613A241C()) && (*(a1 + 16) == *(a2 + 16) ? (v5 = *(a1 + 24) == *(a2 + 24)) : (v5 = 0), (v5 || (sub_2613A241C()) && (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (sub_2613A241C())) && (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56) || (sub_2613A241C()) && (*(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72) || (sub_2613A241C()) && (*(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88) || (sub_2613A241C()) && (*(a1 + 96) == *(a2 + 96) && *(a1 + 104) == *(a2 + 104) || (sub_2613A241C()) && *(a1 + 112) == *(a2 + 112) && sub_2612FF3B8(*(a1 + 120), *(a2 + 120), *(a1 + 128), *(a2 + 128)))
  {
    v6 = *(a1 + 136) ^ *(a2 + 136) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

unint64_t sub_26127EA58()
{
  result = qword_27FEA2300[0];
  if (!qword_27FEA2300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2300);
  }

  return result;
}

unint64_t sub_26127EAAC()
{
  result = qword_27FE9F4E0;
  if (!qword_27FE9F4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4E0);
  }

  return result;
}

unint64_t sub_26127EB00()
{
  result = qword_27FE9F4E8;
  if (!qword_27FE9F4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4E8);
  }

  return result;
}

uint64_t sub_26127EB54(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2613A241C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044 || (sub_2613A241C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E61686372656DLL && a2 == 0xEA00000000004449 || (sub_2613A241C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000044 || (sub_2613A241C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002613B7ED0 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002613B8F50 == a2 || (sub_2613A241C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x44656761726F7473 && a2 == 0xEF6E6F6974617275 || (sub_2613A241C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x797269707865 && a2 == 0xE600000000000000 || (sub_2613A241C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002613B8F70 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_2613A241C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_26127EE98@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F4F8, &unk_2613A5460);
  v5 = *(v46 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v46);
  v8 = &v34 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26127EA58();
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v45 = a2;
  LOBYTE(v55) = 0;
  v10 = sub_2613A22DC();
  v44 = v11;
  LOBYTE(v55) = 1;
  v12 = sub_2613A22DC();
  v43 = v13;
  v39 = v12;
  LOBYTE(v55) = 2;
  v38 = sub_2613A22DC();
  v42 = v14;
  LOBYTE(v55) = 3;
  v37 = sub_2613A22DC();
  v41 = v15;
  LOBYTE(v55) = 4;
  v36 = sub_2613A22DC();
  v40 = v16;
  LOBYTE(v55) = 5;
  *&v35 = sub_2613A22DC();
  *(&v35 + 1) = v17;
  LOBYTE(v55) = 6;
  *&v34 = sub_2613A22DC();
  *(&v34 + 1) = v18;
  LOBYTE(v55) = 7;
  sub_2613A22FC();
  v20 = v19;
  LOBYTE(v47) = 8;
  sub_26127F6C4();
  sub_2613A231C();
  v71 = v55;
  v21 = v56;
  v72 = 9;
  v22 = sub_2613A22EC();
  (*(v5 + 8))(v8, v46);
  LODWORD(v46) = v22 & 1;
  v24 = v43;
  v23 = v44;
  *&v47 = v10;
  *(&v47 + 1) = v44;
  *&v48 = v39;
  *(&v48 + 1) = v43;
  v25 = v41;
  v26 = v42;
  *&v49 = v38;
  *(&v49 + 1) = v42;
  *&v50 = v37;
  *(&v50 + 1) = v41;
  v27 = v40;
  *&v51 = v36;
  *(&v51 + 1) = v40;
  v52 = v35;
  v53 = v34;
  *&v54[0] = v20;
  DWORD2(v54[0]) = v71;
  *&v54[1] = v21;
  BYTE8(v54[1]) = v46;
  sub_261274028(&v47, &v55);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v55 = v10;
  v56 = v23;
  v57 = v39;
  v58 = v24;
  v59 = v38;
  v60 = v26;
  v61 = v37;
  v62 = v25;
  v63 = v36;
  v64 = v27;
  v65 = v35;
  v66 = v34;
  v67 = v20;
  v68 = v71;
  v69 = v21;
  v70 = v46;
  result = sub_261273FD4(&v55);
  v29 = v54[0];
  v30 = v45;
  v45[6] = v53;
  v30[7] = v29;
  *(v30 + 121) = *(v54 + 9);
  v31 = v50;
  v30[2] = v49;
  v30[3] = v31;
  v32 = v52;
  v30[4] = v51;
  v30[5] = v32;
  v33 = v48;
  *v30 = v47;
  v30[1] = v33;
  return result;
}

unint64_t sub_26127F468()
{
  result = qword_27FE9F4F0;
  if (!qword_27FE9F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F4F0);
  }

  return result;
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26127F4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_26127F538(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26127F5C0()
{
  result = qword_27FEA2690[0];
  if (!qword_27FEA2690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2690);
  }

  return result;
}

unint64_t sub_26127F618()
{
  result = qword_27FEA27A0;
  if (!qword_27FEA27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEA27A0);
  }

  return result;
}

unint64_t sub_26127F670()
{
  result = qword_27FEA27A8[0];
  if (!qword_27FEA27A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA27A8);
  }

  return result;
}

unint64_t sub_26127F6C4()
{
  result = qword_27FE9F500;
  if (!qword_27FE9F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F500);
  }

  return result;
}

uint64_t sub_26127F718(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = (v7 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v7 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId);
  *v9 = a1;
  v9[1] = a2;
  sub_26139F9FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
  *(v7 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_serializer) = sub_26139F8BC();
  return v7;
}

uint64_t sub_26127F7B4(uint64_t a1, uint64_t a2)
{
  v30[1] = a2;
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v4 = v30 - v3;
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = v30 - v6;
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F508, &qword_2613A5488) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v10 = v30 - v9;
  v11 = sub_26139FEAC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = (MEMORY[0x28223BE20])();
  v15 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v30 - v16;
  v18 = sub_2612816AC(&qword_27FE9F510, MEMORY[0x277D439B0]);
  nullsub_1(v11, v18);
  sub_26124B218(v11, v11, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_26124C718(v10, &qword_27FE9F508, &qword_2613A5488);
    v19 = sub_26129B97C();
    sub_26125A870(v19, v4, &qword_27FE9F560, &qword_2613A3CB0);
    v20 = sub_2613A124C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v4, 1, v20) == 1)
    {
      return sub_26124C718(v4, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v27 = sub_2613A122C();
      v28 = sub_2613A1D8C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_261243000, v27, v28, "DiscoveryAnalyticsManager - sendAnalytics - unable to decode analytics data", v29, 2u);
        MEMORY[0x266701350](v29, -1, -1);
      }

      return (*(v21 + 8))(v4, v20);
    }
  }

  else
  {
    v23 = *(v12 + 32);
    v23(v17, v10, v11);
    v24 = sub_2613A1C1C();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    (*(v12 + 16))(v15, v17, v11);
    v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v23((v26 + v25), v15, v11);
    *(v26 + ((v13 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30[0];

    sub_261266800(0, 0, v7, &unk_2613A5498, v26);

    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t sub_26127FC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[86] = a5;
  v5[85] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v5[87] = swift_task_alloc();
  v7 = sub_26139FE6C();
  v5[88] = v7;
  v8 = *(v7 - 8);
  v5[89] = v8;
  v9 = *(v8 + 64) + 15;
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26127FD60);
}

uint64_t sub_26127FD60()
{
  v120 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 680);
  sub_26139FE4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F408, &unk_2613A4AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2613A5470;
  *(inited + 32) = sub_2613A087C();
  *(inited + 40) = v6;
  sub_26139FE9C();
  v7 = sub_26139FE5C();
  v9 = v8;
  v10 = *(v2 + 8);
  *(v0 + 736) = v10;
  *(v0 + 744) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v118 = v10;
  v10(v1, v3);
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 80) = sub_2613A07EC();
  *(inited + 88) = v12;
  v13 = sub_26139FE3C();
  *(inited + 120) = v11;
  *(inited + 96) = v13;
  *(inited + 104) = v14;
  *(inited + 128) = sub_2613A085C();
  *(inited + 136) = v15;
  v16 = sub_26139FE7C();
  *(inited + 168) = v11;
  *(inited + 144) = v16;
  *(inited + 152) = v17;
  *(inited + 176) = sub_2613A06CC();
  *(inited + 184) = v18;
  v19 = sub_26139FE0C();
  *(inited + 216) = v11;
  *(inited + 192) = v19;
  *(inited + 200) = v20;
  *(inited + 224) = sub_2613A064C();
  *(inited + 232) = v21;
  v22 = sub_26139FDFC();
  *(inited + 264) = v11;
  *(inited + 240) = v22;
  *(inited + 248) = v23;
  *(inited + 272) = sub_2613A063C();
  *(inited + 280) = v24;
  v25 = sub_26139FDEC();
  *(inited + 312) = v11;
  *(inited + 288) = v25;
  *(inited + 296) = v26;
  v27 = sub_261268144(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F410, &qword_2613A54F0);
  swift_arrayDestroy();
  if (sub_26139FDDC())
  {
    v28 = *(v0 + 688);
    v29 = sub_2613A07BC();
    v31 = v30;
    v32 = *(v28 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId);
    v33 = *(v28 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId + 8);
    *(v0 + 552) = v11;
    *(v0 + 528) = v32;
    *(v0 + 536) = v33;
    sub_26125A7B0((v0 + 528), (v0 + 560));

    LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
    v119 = v27;
    v34 = *(v0 + 584);
    v35 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 560, v34);
    v36 = *(v34 - 8);
    v37 = *(v36 + 64) + 15;
    v38 = swift_task_alloc();
    (*(v36 + 16))(v38, v35, v34);
    sub_261267EDC(*v38, v38[1], v29, v31, v33, &v119);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 560));

    v27 = v119;
  }

  v39 = *(v0 + 680);
  v40 = sub_26139FE1C();
  if (v40 != 2)
  {
    v41 = v40;
    v42 = sub_2613A070C();
    v44 = v43;
    *(v0 + 488) = MEMORY[0x277D839B0];
    *(v0 + 464) = v41 & 1;
    sub_26125A7B0((v0 + 464), (v0 + 496));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = v27;
    v46 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 496, *(v0 + 520));
    sub_2612814D0(*v46, v42, v44, isUniquelyReferenced_nonNull_native, &v119);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 496));
    v27 = v119;
  }

  v47 = *(v0 + 680);
  v48 = sub_26139FE2C();
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    v52 = sub_2613A077C();
    v54 = v53;
    *(v0 + 424) = v11;
    *(v0 + 400) = v50;
    *(v0 + 408) = v51;
    sub_26125A7B0((v0 + 400), (v0 + 432));
    LOBYTE(v50) = swift_isUniquelyReferenced_nonNull_native();
    v119 = v27;
    v55 = *(v0 + 456);
    v56 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 432, v55);
    v57 = *(v55 - 8);
    v58 = *(v57 + 64) + 15;
    v59 = swift_task_alloc();
    (*(v57 + 16))(v59, v56, v55);
    sub_261267EDC(*v59, v59[1], v52, v54, v50, &v119);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 432));

    v27 = v119;
  }

  v60 = *(v0 + 680);
  v61 = sub_26139FE8C();
  if (v62)
  {
    v63 = v61;
    v64 = v62;
    v65 = sub_2613A086C();
    v67 = v66;
    *(v0 + 360) = v11;
    *(v0 + 336) = v63;
    *(v0 + 344) = v64;
    sub_26125A7B0((v0 + 336), (v0 + 368));
    LOBYTE(v63) = swift_isUniquelyReferenced_nonNull_native();
    v119 = v27;
    v68 = *(v0 + 392);
    v69 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 368, v68);
    v70 = *(v68 - 8);
    v71 = *(v70 + 64) + 15;
    v72 = swift_task_alloc();
    (*(v70 + 16))(v72, v69, v68);
    sub_261267EDC(*v72, v72[1], v65, v67, v63, &v119);

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 368));

    v27 = v119;
  }

  *(v0 + 752) = v27;
  v73 = *(v0 + 728);
  v74 = *(v0 + 720);
  v75 = *(v0 + 712);
  v76 = *(v0 + 704);
  v77 = *(v0 + 680);
  sub_26139FE9C();
  v78 = *MEMORY[0x277D43990];
  v79 = *(v75 + 104);
  *(v0 + 760) = v79;
  *(v0 + 768) = (v75 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v79(v74, v78, v76);
  *(v0 + 776) = sub_2612816AC(&qword_27FE9F518, MEMORY[0x277D439A0]);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v118(v74, v76);
  v118(v73, v76);
  if (*(v0 + 616) == *(v0 + 624))
  {
    goto LABEL_11;
  }

  v80 = *(v0 + 728);
  v81 = *(v0 + 720);
  v82 = *(v0 + 704);
  v83 = *(v0 + 680);
  sub_26139FE9C();
  v117 = *MEMORY[0x277D43998];
  (v79)(v81);
  sub_2613A1B1C();
  sub_2613A1B1C();
  v118(v81, v82);
  v118(v80, v82);
  if (*(v0 + 632) == *(v0 + 640))
  {
LABEL_11:
    v84 = *(v0 + 688);
    v85 = *(v0 + 680);
    v86 = sub_2613A090C();
    v88 = v87;
    *(v0 + 784) = v87;
    v89 = sub_26139FE0C();
    v91 = v90;
    *(v0 + 792) = v90;
    v92 = *(MEMORY[0x277D437B0] + 4);
    v93 = swift_task_alloc();
    *(v0 + 800) = v93;
    *v93 = v0;
    v93[1] = sub_261280664;

    return MEMORY[0x2821A5168](v86, v88, v89, v91);
  }

  else
  {
    v94 = *(v0 + 776);
    v95 = *(v0 + 768);
    v96 = *(v0 + 760);
    v97 = *(v0 + 744);
    v98 = *(v0 + 736);
    v99 = *(v0 + 728);
    v100 = *(v0 + 720);
    v101 = *(v0 + 704);
    v102 = *(v0 + 680);
    sub_26139FE9C();
    v96(v100, *MEMORY[0x277D43988], v101);
    sub_2613A1B1C();
    sub_2613A1B1C();
    v98(v100, v101);
    v98(v99, v101);
    if (*(v0 + 648) == *(v0 + 656))
    {
      v103 = 1;
    }

    else
    {
      v104 = *(v0 + 776);
      v105 = *(v0 + 768);
      v106 = *(v0 + 760);
      v107 = *(v0 + 744);
      v108 = *(v0 + 736);
      v109 = *(v0 + 728);
      v110 = *(v0 + 720);
      v111 = *(v0 + 704);
      v112 = *(v0 + 680);
      sub_26139FE9C();
      v106(v110, v117, v111);
      sub_2613A1B1C();
      sub_2613A1B1C();
      v108(v110, v111);
      v108(v109, v111);
      v103 = *(v0 + 664) == *(v0 + 672);
    }

    v113 = swift_task_alloc();
    *(v0 + 816) = v113;
    *v113 = v0;
    v113[1] = sub_261280B4C;
    v114 = *(v0 + 752);
    v115 = *(v0 + 688);

    return sub_2612816F4(v114, v103);
  }
}

uint64_t sub_261280664(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[74] = v2;
  v4[75] = a1;
  v4[76] = a2;
  v5 = v3[100];
  v6 = v3[99];
  v7 = v3[98];
  v9 = *v2;
  v4[101] = a2;

  return MEMORY[0x2822009F8](sub_2612807A8);
}

uint64_t sub_2612807A8()
{
  v1 = v0[101];
  if (v1)
  {
    v2 = (v0[86] + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID);
    v3 = v2[1];
    *v2 = v0[75];
    v2[1] = v1;

    v4 = v0[97];
    v5 = v0[96];
    v6 = v0[95];
    v7 = v0[93];
    v8 = v0[92];
    v9 = v0[91];
    v10 = v0[90];
    v11 = v0[88];
    v12 = v0[85];
    sub_26139FE9C();
    v6(v10, *MEMORY[0x277D43988], v11);
    sub_2613A1B1C();
    sub_2613A1B1C();
    v8(v10, v11);
    v8(v9, v11);
    if (v0[81] == v0[82])
    {
      v13 = 1;
    }

    else
    {
      v19 = v0[97];
      v20 = v0[96];
      v21 = v0[95];
      v22 = v0[93];
      v23 = v0[92];
      v24 = v0[91];
      v25 = v0[90];
      v26 = v0[88];
      v27 = v0[85];
      sub_26139FE9C();
      v21(v25, *MEMORY[0x277D43998], v26);
      sub_2613A1B1C();
      sub_2613A1B1C();
      v23(v25, v26);
      v23(v24, v26);
      v13 = v0[83] == v0[84];
    }

    v28 = swift_task_alloc();
    v0[102] = v28;
    *v28 = v0;
    v28[1] = sub_261280B4C;
    v29 = v0[94];
    v30 = v0[86];

    return sub_2612816F4(v29, v13);
  }

  else
  {
    v14 = v0[94];
    v15 = v0[87];

    v16 = sub_26129B97C();
    sub_26125A870(v16, v15, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = sub_2613A124C();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v15, 1, v17) == 1)
    {
      sub_26124C718(v0[87], &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v32 = v0[87];
      v33 = sub_2613A122C();
      v34 = sub_2613A1D8C();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_261243000, v33, v34, "DiscoveryAnalyticsManager - sendEvent - could not create analytics session", v35, 2u);
        MEMORY[0x266701350](v35, -1, -1);
      }

      v36 = v0[87];

      (*(v18 + 8))(v36, v17);
    }

    v37 = v0[91];
    v38 = v0[90];
    v39 = v0[87];

    v40 = v0[1];

    return v40();
  }
}

uint64_t sub_261280B4C()
{
  v1 = *(*v0 + 816);
  v2 = *(*v0 + 752);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_261280C64);
}

uint64_t sub_261280C64()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[87];

  v4 = v0[1];

  return v4();
}

uint64_t sub_261280CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 112) = a6;
  *(v6 + 80) = a4;
  *(v6 + 88) = a5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261280D80);
}

uint64_t sub_261280D80()
{
  v35 = v0;
  v1 = *(v0 + 64);
  v2 = sub_2613A087C();
  if (*(v1 + 16))
  {
    v4 = *(v0 + 64);
    v5 = sub_26124E5EC(v2, v3);
    v7 = v6;

    if (v7)
    {
      sub_26124C994(*(*(v0 + 64) + 56) + 32 * v5, v0 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F520, &unk_2613AA870);
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 96);
        v10 = *(v0 + 48);
        v9 = *(v0 + 56);
        v11 = sub_26129B97C();
        sub_26125A870(v11, v8, &qword_27FE9F560, &qword_2613A3CB0);
        v12 = sub_2613A124C();
        v13 = *(v12 - 8);
        v14 = (*(v13 + 48))(v8, 1, v12);
        v15 = *(v0 + 96);
        if (v14 == 1)
        {

          sub_26124C718(v15, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v23 = *(v0 + 64);

          v24 = sub_2613A122C();
          v25 = sub_2613A1D7C();

          if (os_log_type_enabled(v24, v25))
          {
            v33 = *(v0 + 64);
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v34 = v27;
            *v26 = 136315394;
            v28 = sub_26124C11C(v10, v9, &v34);

            *(v26 + 4) = v28;
            *(v26 + 12) = 2080;
            v29 = sub_2613A180C();
            v31 = sub_26124C11C(v29, v30, &v34);

            *(v26 + 14) = v31;
            _os_log_impl(&dword_261243000, v24, v25, "Sending event: [%s] [%s]", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266701350](v27, -1, -1);
            MEMORY[0x266701350](v26, -1, -1);
          }

          else
          {
          }

          (*(v13 + 8))(*(v0 + 96), v12);
        }
      }
    }
  }

  else
  {
  }

  v16 = *(v0 + 72);
  v17 = *(MEMORY[0x277D437D8] + 4);
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *v18 = v0;
  v18[1] = sub_2612810E4;
  v19 = *(v0 + 112);
  v21 = *(v0 + 80);
  v20 = *(v0 + 88);
  v22 = *(v0 + 64);

  return MEMORY[0x2821A5190](v21, v20, v22, v19);
}

uint64_t sub_2612810E4()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2612811F8()
{
  v1 = OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_manager;
  v2 = sub_26139FA0C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_serializer);

  v4 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_appId + 8);

  v5 = *(v0 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID + 8);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2612812CC()
{
  v2 = *(sub_26139FEAC() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_261262AA4;

  return sub_26127FC58(v5, v6, v7, v0 + v3, v4);
}

uint64_t type metadata accessor for DiscoveryAnalyticsManager()
{
  result = qword_27FEA2850;
  if (!qword_27FEA2850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261281420()
{
  result = sub_26139FA0C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_OWORD *sub_2612814D0(char a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v24) = a1;
  v25 = MEMORY[0x277D839B0];
  v9 = *a5;
  v11 = sub_26124E5EC(a2, a3);
  v12 = v9[2];
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v9[3];
  if (v16 >= v14 && (a4 & 1) != 0)
  {
LABEL_7:
    v17 = *a5;
    if (v15)
    {
LABEL_8:
      v18 = (v17[7] + 32 * v11);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      return sub_26125A7B0(&v24, v18);
    }

    goto LABEL_11;
  }

  if (v16 >= v14 && (a4 & 1) == 0)
  {
    sub_261267D38();
    goto LABEL_7;
  }

  sub_261267A80(v14, a4 & 1);
  v20 = *a5;
  v21 = sub_26124E5EC(a2, a3);
  if ((v15 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

  v11 = v21;
  v17 = *a5;
  if (v15)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_0(&v24, MEMORY[0x277D839B0]);
  sub_261281628(v11, a2, a3, *v23, v17);

  return __swift_destroy_boxed_opaque_existential_0Tm(&v24);
}

_OWORD *sub_261281628(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  LOBYTE(v11) = a4;
  v12 = MEMORY[0x277D839B0];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26125A7B0(&v11, (a5[7] + 32 * a1));
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

uint64_t sub_2612816AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2612816F4(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261281794);
}

uint64_t sub_261281794()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID + 8);
  if (v2)
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 16);
    v5 = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_analyticsSessionID);
    *(v0 + 40) = *(v1 + OBJC_IVAR____TtC21ProximityReaderDaemon25DiscoveryAnalyticsManager_serializer);
    v6 = swift_allocObject();
    *(v0 + 48) = v6;
    *(v6 + 16) = v4;
    *(v6 + 24) = v1;
    *(v6 + 32) = v5;
    *(v6 + 40) = v2;
    *(v6 + 48) = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F400, &unk_2613A4A90);
    sub_261268774();
    sub_2613A1BCC();

    return MEMORY[0x2822009F8](sub_261281A0C);
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = sub_26129B97C();
    sub_26125A870(v8, v7, &qword_27FE9F560, &qword_2613A3CB0);
    v9 = sub_2613A124C();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_26124C718(*(v0 + 32), &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v11 = *(v0 + 32);
      v12 = sub_2613A122C();
      v13 = sub_2613A1D8C();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261243000, v12, v13, "DiscoveryAnalyticsManager - sendEvent - analytics session not found", v14, 2u);
        MEMORY[0x266701350](v14, -1, -1);
      }

      v15 = *(v0 + 32);

      (*(v10 + 8))(v15, v9);
    }

    v16 = *(v0 + 32);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_261281A0C()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_26139F8AC();

  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_261281A94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_261262AA4;

  return sub_261280CDC(v7, v2, v3, v4, v5, v6);
}

uint64_t type metadata accessor for TransactionContainer()
{
  result = qword_27FEA29F0;
  if (!qword_27FEA29F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261281B9C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_26139F13C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v71 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))();
  v6 = type metadata accessor for TransactionContainer();
  v7 = v6[6];
  v8 = (v1 + v6[5]);
  v9 = v8[1];
  v70 = *v8;
  v10 = v6[15];
  v11 = (v1 + v6[16]);
  v12 = *v11;
  v56 = v11[1];
  v57 = v9;
  v13 = *(v1 + v7 + 8);
  v68 = *(v1 + v7);
  v69 = v12;
  v73 = v13;
  v14 = v6[8];
  v15 = (v1 + v6[7]);
  v16 = v15[1];
  v67 = *v15;
  v53 = v16;
  v17 = v6[9];
  v18 = (v1 + v6[10]);
  v19 = v18[1];
  v51 = *v18;
  v20 = v51;
  v21 = *(v1 + v14 + 8);
  v66 = *(v1 + v14);
  v49 = v21;
  v22 = *(v1 + v17 + 8);
  v65 = *(v1 + v17);
  v23 = (v1 + v6[11]);
  v24 = *v23;
  v25 = v23[1];
  v26 = (v1 + v6[12]);
  v28 = *v26;
  v27 = v26[1];
  v63 = v28;
  v64 = v24;
  v50 = v27;
  v29 = v6[14];
  v30 = (v1 + v6[13]);
  v31 = v30[1];
  v62 = *v30;
  LODWORD(v24) = *(v1 + v29);
  v60 = *(v1 + v10);
  v61 = v24;
  LODWORD(v10) = *(v1 + v6[18]);
  v58 = *(v1 + v6[19]);
  v59 = v10;
  v32 = v6[21];
  v55 = *(v1 + v6[20]);
  v33 = *(v1 + v32 + 8);
  v54 = *(v1 + v32);
  v46 = v33;
  v34 = (v1 + v6[22]);
  v35 = (v1 + v6[25]);
  v36 = (v1 + v6[26]);
  v37 = v34[1];
  v52 = *v34;
  v38 = v35[1];
  v48 = *v35;
  v39 = v36[1];
  v47 = *v36;

  sub_26124C778(v20, v19);
  v40 = v49;

  v41 = v50;

  v42 = v46;

  v43 = sub_26125A798();
  return sub_2612CC02C(v71, v70, v57, 4, v69, v56, 8, v68, v72, v73, v67, v53, v51, v19, v66, v40, v65, v22, v64, v25, v63, v41, v62, v31, v61, v60, 1, v59, v58, v55, v54, v42, 0, v52, v37, 0, v48, v38, 0, 1, 0, 1, v47, v39, v43 & 1);
}

unint64_t sub_261281F14(char a1)
{
  result = 0x746361736E617274;
  switch(a1)
  {
    case 1:
      result = 0x6B726F7774656ELL;
      break;
    case 2:
      result = 0xD00000000000001BLL;
      break;
    case 3:
    case 19:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x436C6172656E6567;
      break;
    case 7:
      result = 0x64496B656BLL;
      break;
    case 8:
      result = 0x746E756F6D61;
      break;
    case 9:
      result = 0x79636E6572727563;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0x69757165526E6970;
      break;
    case 12:
      result = 0x6C757365526D7663;
      break;
    case 13:
      result = 0x6974617269707865;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x626C6C6146726F66;
      break;
    case 17:
      result = 0x6B6361626C6C6166;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0xD00000000000001DLL;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x7954707041796170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2612821EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26128CE20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_261282220(uint64_t a1)
{
  v2 = sub_261282860();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26128225C(uint64_t a1)
{
  v2 = sub_261282860();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261282298(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F530, &qword_2613A5520);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v66[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261282860();
  sub_2613A262C();
  LOBYTE(v67) = 0;
  sub_26139F13C();
  sub_26128DA8C(&qword_27FE9F538, MEMORY[0x277CC95F0]);
  sub_2613A23CC();
  if (!v2)
  {
    v11 = type metadata accessor for TransactionContainer();
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v67) = 1;
    sub_2613A238C();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v67) = 2;
    sub_2613A238C();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v67) = 3;
    sub_2613A238C();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v67) = 4;
    sub_2613A238C();
    v24 = (v3 + v11[9]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v67) = 5;
    sub_2613A238C();
    v27 = (v3 + v11[10]);
    v28 = v27[1];
    v67 = *v27;
    v68 = v28;
    v66[15] = 6;
    sub_26124C778(v67, v28);
    sub_2612828B4();
    sub_2613A23CC();
    sub_26124C6C4(v67, v68);
    v29 = (v3 + v11[11]);
    v30 = *v29;
    v31 = v29[1];
    LOBYTE(v67) = 7;
    sub_2613A238C();
    v32 = (v3 + v11[12]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v67) = 8;
    sub_2613A238C();
    v35 = (v3 + v11[13]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v67) = 9;
    sub_2613A238C();
    v38 = *(v3 + v11[14]);
    LOBYTE(v67) = 10;
    sub_2613A239C();
    v39 = *(v3 + v11[15]);
    LOBYTE(v67) = 11;
    sub_2613A239C();
    v40 = (v3 + v11[16]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v67) = 12;
    sub_2613A238C();
    v43 = *(v3 + v11[17]);
    LOBYTE(v67) = 13;
    sub_2613A23AC();
    v44 = *(v3 + v11[18]);
    LOBYTE(v67) = 14;
    sub_2613A239C();
    v45 = *(v3 + v11[19]);
    LOBYTE(v67) = 15;
    sub_2613A239C();
    v46 = *(v3 + v11[20]);
    LOBYTE(v67) = 16;
    sub_2613A239C();
    v47 = (v3 + v11[21]);
    v48 = *v47;
    v49 = v47[1];
    LOBYTE(v67) = 17;
    sub_2613A238C();
    v50 = (v3 + v11[22]);
    v51 = *v50;
    v52 = v50[1];
    LOBYTE(v67) = 18;
    sub_2613A238C();
    v53 = (v3 + v11[23]);
    v54 = *v53;
    v55 = v53[1];
    LOBYTE(v67) = 19;
    sub_2613A234C();
    v56 = (v3 + v11[24]);
    v57 = *v56;
    v58 = v56[1];
    LOBYTE(v67) = 20;
    sub_2613A234C();
    v59 = (v3 + v11[25]);
    v60 = *v59;
    v61 = v59[1];
    LOBYTE(v67) = 21;
    sub_2613A238C();
    v62 = (v3 + v11[26]);
    v63 = *v62;
    v64 = v62[1];
    LOBYTE(v67) = 22;
    sub_2613A238C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_261282860()
{
  result = qword_27FEA2868[0];
  if (!qword_27FEA2868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FEA2868);
  }

  return result;
}

unint64_t sub_2612828B4()
{
  result = qword_27FE9F540;
  if (!qword_27FE9F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F540);
  }

  return result;
}

uint64_t sub_261282908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = sub_26139F13C();
  v73 = *(v4 - 8);
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F548, &qword_2613A5528);
  v76 = *(v7 - 8);
  v77 = v7;
  v8 = *(v76 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v70 - v9;
  v11 = type metadata accessor for TransactionContainer();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261282860();
  v78 = v10;
  sub_2613A260C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v16 = v74;
  v71 = v11;
  v72 = v14;
  LOBYTE(v79) = 0;
  sub_26128DA8C(&qword_27FE9F550, MEMORY[0x277CC95F0]);
  v17 = v75;
  sub_2613A231C();
  v18 = v72;
  v19 = *(v73 + 32);
  v75 = v4;
  v19(v72, v17, v4);
  LOBYTE(v79) = 1;
  v20 = sub_2613A22DC();
  v21 = v71;
  v22 = &v18[v71[5]];
  *v22 = v20;
  v22[1] = v23;
  LOBYTE(v79) = 2;
  v70[1] = 0;
  v24 = sub_2613A22DC();
  v25 = &v18[v21[6]];
  *v25 = v24;
  v25[1] = v26;
  LOBYTE(v79) = 3;
  v27 = sub_2613A22DC();
  v28 = &v18[v21[7]];
  *v28 = v27;
  v28[1] = v29;
  LOBYTE(v79) = 4;
  v30 = sub_2613A22DC();
  v31 = &v18[v21[8]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v79) = 5;
  v33 = sub_2613A22DC();
  v34 = &v18[v21[9]];
  *v34 = v33;
  v34[1] = v35;
  v80 = 6;
  sub_261283714();
  sub_2613A231C();
  *&v18[v21[10]] = v79;
  LOBYTE(v79) = 7;
  v36 = sub_2613A22DC();
  v37 = &v72[v71[11]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v79) = 8;
  v39 = sub_2613A22DC();
  v40 = &v72[v71[12]];
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v79) = 9;
  v42 = sub_2613A22DC();
  v43 = &v72[v71[13]];
  *v43 = v42;
  v43[1] = v44;
  LOBYTE(v79) = 10;
  v72[v71[14]] = sub_2613A22EC() & 1;
  LOBYTE(v79) = 11;
  v72[v71[15]] = sub_2613A22EC() & 1;
  LOBYTE(v79) = 12;
  v45 = sub_2613A22DC();
  v46 = &v72[v71[16]];
  *v46 = v45;
  v46[1] = v47;
  LOBYTE(v79) = 13;
  sub_2613A22FC();
  *&v72[v71[17]] = v48;
  LOBYTE(v79) = 14;
  v72[v71[18]] = sub_2613A22EC() & 1;
  LOBYTE(v79) = 15;
  v72[v71[19]] = sub_2613A22EC() & 1;
  LOBYTE(v79) = 16;
  v72[v71[20]] = sub_2613A22EC() & 1;
  LOBYTE(v79) = 17;
  v49 = sub_2613A22DC();
  v50 = &v72[v71[21]];
  *v50 = v49;
  v50[1] = v51;
  LOBYTE(v79) = 18;
  v52 = sub_2613A22DC();
  v53 = &v72[v71[22]];
  *v53 = v52;
  v53[1] = v54;
  LOBYTE(v79) = 19;
  v55 = sub_2613A229C();
  v56 = &v72[v71[23]];
  *v56 = v55;
  v56[1] = v57;
  LOBYTE(v79) = 20;
  v58 = sub_2613A229C();
  v59 = &v72[v71[24]];
  *v59 = v58;
  v59[1] = v60;
  LOBYTE(v79) = 21;
  v61 = sub_2613A22DC();
  v62 = &v72[v71[25]];
  *v62 = v61;
  v62[1] = v63;
  LOBYTE(v79) = 22;
  v64 = sub_2613A22DC();
  v66 = v65;
  (*(v76 + 8))(v78, v77);
  v67 = v72;
  v68 = &v72[v71[26]];
  *v68 = v64;
  v68[1] = v66;
  sub_26128C5AC(v67, v16, type metadata accessor for TransactionContainer);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_26128C614(v67, type metadata accessor for TransactionContainer);
}

unint64_t sub_261283714()
{
  result = qword_27FE9F558;
  if (!qword_27FE9F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE9F558);
  }

  return result;
}

void *sub_261283798(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  v4[16] = a1;
  v4[17] = a2;
  v5 = MEMORY[0x277D84F98];
  v4[14] = MEMORY[0x277D84F98];
  v4[15] = v5;
  return v4;
}

uint64_t sub_2612837F0(char *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = sub_26139F13C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v47 = v3;
  v21 = v50;
  result = sub_2612848F4(a2);
  if (!v21)
  {
    v45 = v18;
    v46 = v14;
    v50 = 0;
    v23 = v48;
    v43 = *(v14 + 16);
    v44 = v13;
    v43(v20, v48, v13);
    sub_26128C5AC(a2, v12, type metadata accessor for TransactionContainer);
    v24 = type metadata accessor for TransactionContainer();
    (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
    swift_beginAccess();
    sub_261283E48(v12, v20);
    swift_endAccess();
    v25 = *(a2 + *(v24 + 68));
    sub_261286AD4(v23);
    v26 = sub_26129B5FC();
    sub_26125A870(v26, v8, &qword_27FE9F560, &qword_2613A3CB0);
    v27 = sub_2613A124C();
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(v8, 1, v27) == 1)
    {
      return sub_26124C718(v8, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = v44;
      v30 = v45;
      v43(v45, v48, v44);
      v31 = sub_2613A122C();
      v32 = sub_2613A1D7C();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v48 = v8;
        v49[0] = v34;
        v35 = v34;
        *v33 = 136315138;
        sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
        v36 = sub_2613A23EC();
        v37 = v30;
        v39 = v38;
        (*(v46 + 8))(v37, v29);
        v40 = sub_26124C11C(v36, v39, v49);

        *(v33 + 4) = v40;
        _os_log_impl(&dword_261243000, v31, v32, "Inserting: [ %s ] on cache", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        v41 = v35;
        v8 = v48;
        MEMORY[0x266701350](v41, -1, -1);
        MEMORY[0x266701350](v33, -1, -1);
      }

      else
      {

        (*(v46 + 8))(v30, v29);
      }

      return (*(v28 + 8))(v8, v27);
    }
  }

  return result;
}

uint64_t sub_261283C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v2;
    sub_26128B698(a1, a2, isUniquelyReferenced_nonNull_native);
    v8 = sub_26139F13C();
    result = (*(*(v8 - 8) + 8))(a2, v8);
    *v2 = v24;
  }

  else
  {
    v10 = *v2;
    v11 = sub_26128A6E4(a2);
    if (v12)
    {
      v13 = v11;
      v14 = *v3;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v3;
      v25 = *v3;
      if (!v15)
      {
        sub_26128BDA0();
        v16 = v25;
      }

      v17 = *(v16 + 48);
      v18 = sub_26139F13C();
      v19 = *(v18 - 8);
      v20 = *(v19 + 8);
      v20(v17 + *(v19 + 72) * v13, v18);
      v21 = *(*(v16 + 56) + 8 * v13);
      swift_unknownObjectRelease();
      sub_26128B034(v13, v16);
      result = (v20)(a2, v18);
      *v3 = v16;
    }

    else
    {
      v22 = sub_26139F13C();
      v23 = *(*(v22 - 8) + 8);

      return v23(a2, v22);
    }
  }

  return result;
}

uint64_t sub_261283E48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for TransactionContainer();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26124C718(a1, &qword_27FE9F568, &unk_2613AC620);
    sub_26128A55C(a2, v8);
    v14 = sub_26139F13C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_26124C718(v8, &qword_27FE9F568, &unk_2613AC620);
  }

  else
  {
    sub_26128A77C(a1, v12);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_26128B864(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_26139F13C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_261284054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  if (*(v5 + 16))
  {

    v6 = sub_26128A6E4(a1);
    if (v7)
    {
      v8 = v6;
      v9 = *(v5 + 56);
      v10 = type metadata accessor for TransactionContainer();
      v11 = *(v10 - 8);
      sub_26128C5AC(v9 + *(v11 + 72) * v8, a2, type metadata accessor for TransactionContainer);

      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  v13 = type metadata accessor for TransactionContainer();
  return (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
}

uint64_t sub_2612841B0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v51 - v6;
  v60 = sub_26139F13C();
  v7 = *(v60 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v60);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - v16;
  v18 = type metadata accessor for TransactionContainer();
  v61 = *(v18 - 8);
  v19 = *(v61 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v62 = &v51 - v23;
  result = swift_beginAccess();
  v25 = *(v1 + 112);
  if (*(v25 + 16))
  {

    v58 = a1;
    v26 = sub_26128A6E4(a1);
    if (v27)
    {
      sub_26128C5AC(*(v25 + 56) + *(v61 + 72) * v26, v22, type metadata accessor for TransactionContainer);

      sub_26128A77C(v22, v62);
      v28 = sub_26129B5FC();
      sub_26125A870(v28, v17, &qword_27FE9F560, &qword_2613A3CB0);
      v29 = sub_2613A124C();
      v30 = *(v29 - 8);
      if ((*(v30 + 48))(v17, 1, v29) == 1)
      {
        sub_26124C718(v17, &qword_27FE9F560, &qword_2613A3CB0);
        v31 = *(v7 + 16);
        v32 = v60;
      }

      else
      {
        v33 = *(v7 + 16);
        v55 = v29;
        v56 = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v32 = v60;
        v57 = v33;
        v33(v13, v58, v60);
        v34 = sub_2613A122C();
        v54 = sub_2613A1D7C();
        if (os_log_type_enabled(v34, v54))
        {
          v35 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v63 = v53;
          *v35 = 136315138;
          sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
          v52 = v34;
          v51 = sub_2613A23EC();
          v37 = v36;
          (*(v7 + 8))(v13, v60);
          v38 = sub_26124C11C(v51, v37, &v63);

          v39 = v35;
          v32 = v60;
          *(v39 + 1) = v38;
          v40 = v52;
          v41 = v39;
          _os_log_impl(&dword_261243000, v52, v54, "Removing: [ %s ] from cache", v39, 0xCu);
          v42 = v53;
          __swift_destroy_boxed_opaque_existential_0Tm(v53);
          MEMORY[0x266701350](v42, -1, -1);
          MEMORY[0x266701350](v41, -1, -1);
        }

        else
        {

          (*(v7 + 8))(v13, v32);
        }

        (*(v30 + 8))(v17, v55);
        v31 = v57;
      }

      v43 = v58;
      v31(v11, v58, v32);
      v44 = v59;
      (*(v61 + 56))(v59, 1, 1, v18);
      swift_beginAccess();
      sub_261283E48(v44, v11);
      swift_endAccess();
      swift_beginAccess();
      v45 = *(v2 + 120);
      if (*(v45 + 16))
      {
        v46 = *(v2 + 120);

        v47 = sub_26128A6E4(v43);
        if (v48)
        {
          v49 = *(*(v45 + 56) + 8 * v47);
          swift_unknownObjectRetain();

          swift_getObjectType();
          sub_2613A1E8C();
          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      v31(v11, v43, v32);
      swift_beginAccess();
      sub_261283C88(0, v11);
      swift_endAccess();
      v50 = v62;
      sub_261285364(v62);
      return sub_26128C614(v50, type metadata accessor for TransactionContainer);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2612847FC@<X0>(uint64_t a1@<X8>)
{
  v9 = sub_26139F0DC();
  v11 = v3;
  MEMORY[0x2666FFEA0](46, 0xE100000000000000);
  MEMORY[0x2666FFEA0](6513780, 0xE300000000000000);
  v4 = v9;
  v5 = v11;
  v10 = *(v1 + 128);
  v12 = *(v1 + 136);

  MEMORY[0x2666FFEA0](v4, v5);

  sub_26139EECC();

  v6 = sub_26139EF7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 0, 1, v6);
}

uint64_t sub_2612848F4(uint64_t a1)
{
  v89 = sub_26139F87C();
  v87 = *(v89 - 8);
  v2 = *(v87 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TransactionContainer();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v86 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v90 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  MEMORY[0x28223BE20](v14);
  v91 = (&v78 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v78 - v20;
  v22 = sub_26139EF7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612847FC(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_26124C718(v21, &qword_27FE9F220, qword_2613A5530);
    goto LABEL_5;
  }

  (*(v23 + 32))(v26, v21, v22);
  sub_26128DA8C(&unk_27FE9F660, type metadata accessor for TransactionContainer);
  v27 = v4;
  v28 = v23;
  v85 = sub_26124A620(v27);
  v30 = v22;
  v31 = v26;
  if (v29 >> 60 == 15)
  {
    (*(v28 + 8))(v26, v22);
LABEL_5:
    v32 = sub_26129B5FC();
    sub_26125A870(v32, v16, &qword_27FE9F560, &qword_2613A3CB0);
    v33 = sub_2613A124C();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v16, 1, v33) == 1)
    {
      return sub_26124C718(v16, &qword_27FE9F560, &qword_2613A3CB0);
    }

    sub_26128C5AC(a1, v8, type metadata accessor for TransactionContainer);
    v36 = sub_2613A122C();
    v37 = sub_2613A1D8C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v94 = v91;
      *v38 = 136315138;
      sub_26139F13C();
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      v39 = sub_2613A23EC();
      v41 = v40;
      sub_26128C614(v8, type metadata accessor for TransactionContainer);
      v42 = sub_26124C11C(v39, v41, &v94);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_261243000, v36, v37, "Could not save cache data: [%s]", v38, 0xCu);
      v43 = v91;
      __swift_destroy_boxed_opaque_existential_0Tm(v91);
      MEMORY[0x266701350](v43, -1, -1);
      MEMORY[0x266701350](v38, -1, -1);
    }

    else
    {

      sub_26128C614(v8, type metadata accessor for TransactionContainer);
    }

    return (*(v34 + 8))(v16, v33);
  }

  v44 = v29;
  v82 = v28;
  v80 = sub_26129B5FC();
  v45 = v91;
  sub_26125A870(v80, v91, &qword_27FE9F560, &qword_2613A3CB0);
  v46 = sub_2613A124C();
  v81 = *(v46 - 8);
  v47 = *(v81 + 48);
  v84 = v46;
  v79 = v47;
  v48 = (v47)(v45, 1);
  v83 = v44;
  if (v48 == 1)
  {
    sub_26124C718(v45, &qword_27FE9F560, &qword_2613A3CB0);
    v49 = v92;
    v50 = v90;
    v51 = v85;
    v52 = v88;
  }

  else
  {
    v53 = v86;
    sub_26128C5AC(a1, v86, type metadata accessor for TransactionContainer);
    v54 = sub_2613A122C();
    v55 = sub_2613A1D7C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v94 = v78;
      *v56 = 136315138;
      sub_26139F13C();
      v57 = v53;
      v58 = v30;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      v59 = sub_2613A23EC();
      v61 = v60;
      sub_26128C614(v57, type metadata accessor for TransactionContainer);
      v62 = sub_26124C11C(v59, v61, &v94);
      v30 = v58;

      *(v56 + 4) = v62;
      _os_log_impl(&dword_261243000, v54, v55, "Saving cache data: [%s] to FS", v56, 0xCu);
      v63 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      MEMORY[0x266701350](v63, -1, -1);
      v64 = v56;
      v45 = v91;
      MEMORY[0x266701350](v64, -1, -1);
    }

    else
    {

      sub_26128C614(v53, type metadata accessor for TransactionContainer);
    }

    v49 = v92;
    v50 = v90;
    v44 = v83;
    v52 = v88;
    (*(v81 + 8))(v45, v84);
    v51 = v85;
  }

  sub_26139F86C();
  v65 = v49;
  sub_26139F83C();
  v66 = (v87 + 8);
  if (v65)
  {
    (*v66)(v52, v89);
    sub_26125A870(v80, v50, &qword_27FE9F560, &qword_2613A3CB0);
    if (v79(v50, 1, v84) == 1)
    {
      sub_26124C718(v50, &qword_27FE9F560, &qword_2613A3CB0);
      v67 = v82;
      v68 = v83;
    }

    else
    {
      v69 = v65;
      v70 = sub_2613A122C();
      v71 = sub_2613A1D8C();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v93 = v65;
        v94 = v92;
        *v72 = 136315138;
        v73 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F650, &qword_2613A57C0);
        v74 = sub_2613A195C();
        v76 = sub_26124C11C(v74, v75, &v94);

        *(v72 + 4) = v76;
        v51 = v85;
        _os_log_impl(&dword_261243000, v70, v71, "Could not save cache data: [%s]", v72, 0xCu);
        v77 = v92;
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        MEMORY[0x266701350](v77, -1, -1);
        MEMORY[0x266701350](v72, -1, -1);
      }

      v67 = v82;
      v68 = v83;
      (*(v81 + 8))(v50, v84);
    }

    swift_willThrow();
    sub_26124A168(v51, v68);
    return (*(v67 + 8))(v31, v30);
  }

  else
  {
    sub_26124A168(v51, v44);
    (*v66)(v52, v89);
    return (*(v82 + 8))(v31, v30);
  }
}

uint64_t sub_261285364(uint64_t a1)
{
  v2 = type metadata accessor for TransactionContainer();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v56 = &v49 - v10;
  v11 = sub_26139F87C();
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v49 - v17;
  v19 = sub_26139EF7C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2612847FC(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_26124C718(v18, &qword_27FE9F220, qword_2613A5530);
    v24 = sub_26129B5FC();
    sub_26125A870(v24, v9, &qword_27FE9F560, &qword_2613A3CB0);
    v25 = sub_2613A124C();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v9, 1, v25) == 1)
    {
      return sub_26124C718(v9, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v29 = sub_2613A122C();
      v30 = sub_2613A1D8C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_261243000, v29, v30, "Cache data file does not exist, cannot be removed", v31, 2u);
        MEMORY[0x266701350](v31, -1, -1);
      }

      return (*(v26 + 8))(v9, v25);
    }
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    sub_26139F86C();
    if (sub_26139F85C())
    {
      v28 = v58;
      sub_26139F84C();
      if (v28)
      {
        (*(v57 + 8))(v14, v11);
        return (*(v20 + 8))(v23, v19);
      }

      else
      {
        v32 = sub_26129B5FC();
        v33 = v56;
        sub_26125A870(v32, v56, &qword_27FE9F560, &qword_2613A3CB0);
        v34 = sub_2613A124C();
        v35 = *(v34 - 8);
        v36 = *(v35 + 48);
        v54 = v34;
        if (v36(v33, 1) == 1)
        {
          (*(v57 + 8))(v14, v11);
          (*(v20 + 8))(v23, v19);
          return sub_26124C718(v33, &qword_27FE9F560, &qword_2613A3CB0);
        }

        else
        {
          v37 = a1;
          v38 = v55;
          sub_26128C5AC(v37, v55, type metadata accessor for TransactionContainer);
          v39 = sub_2613A122C();
          v53 = sub_2613A1D7C();
          if (os_log_type_enabled(v39, v53))
          {
            v40 = swift_slowAlloc();
            v51 = v35;
            v41 = v40;
            v52 = swift_slowAlloc();
            v59 = v52;
            *v41 = 136315138;
            sub_26139F13C();
            v58 = 0;
            sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
            v50 = v39;
            v42 = sub_2613A23EC();
            v44 = v43;
            sub_26128C614(v38, type metadata accessor for TransactionContainer);
            v45 = sub_26124C11C(v42, v44, &v59);

            v46 = v41;
            v49 = v41;
            *(v41 + 4) = v45;
            v47 = v50;
            v35 = v51;
            _os_log_impl(&dword_261243000, v50, v53, "Deleted cache data: [%s] from FS", v46, 0xCu);
            v48 = v52;
            __swift_destroy_boxed_opaque_existential_0Tm(v52);
            MEMORY[0x266701350](v48, -1, -1);
            MEMORY[0x266701350](v49, -1, -1);
          }

          else
          {

            sub_26128C614(v38, type metadata accessor for TransactionContainer);
          }

          (*(v57 + 8))(v14, v11);
          (*(v20 + 8))(v23, v19);
          return (*(v35 + 8))(v56, v54);
        }
      }
    }

    else
    {
      (*(v57 + 8))(v14, v11);
      return (*(v20 + 8))(v23, v19);
    }
  }
}

uint64_t sub_261285A98()
{
  v1 = sub_26139F0BC();
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = *(v70 + 64);
  MEMORY[0x28223BE20](v1);
  v69 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F220, qword_2613A5530);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v64 - v6;
  v8 = sub_26139EF7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v79 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v78 = &v64 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v76 = &v64 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v64 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v64 - v20;
  v22 = sub_26139F87C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = (&v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26139F86C();
  v27 = *(v0 + 128);
  v28 = *(v0 + 136);
  v72 = v0;
  v29 = v27;
  sub_26139EF5C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_26124C718(v7, &qword_27FE9F220, qword_2613A5530);
    return (*(v23 + 8))(v26, v22);
  }

  v77 = v29;
  v80 = *(v9 + 32);
  v81 = v9 + 32;
  (v80)(v21, v7, v8);
  if ((sub_26139F85C() & 1) == 0 || (result = sub_26139F81C()) == 0)
  {
    (*(v9 + 8))(v21, v8);
    return (*(v23 + 8))(v26, v22);
  }

  v75 = v8;
  v65 = v21;
  v66 = v23;
  v67 = v22;
  v73 = *(result + 16);
  v74 = v26;
  if (v73)
  {
    v31 = 0;
    v32 = (result + 40);
    v33 = MEMORY[0x277D84F90];
    while (v31 < *(result + 16))
    {
      v34 = result;
      v35 = *(v32 - 1);
      v36 = *v32;
      v82 = v77;
      v83 = v28;

      MEMORY[0x2666FFEA0](v35, v36);
      sub_26139EECC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_26128A380(0, *(v33 + 2) + 1, 1, v33, &qword_27FE9F620, &qword_2613A57B0, MEMORY[0x277CC9260]);
      }

      v38 = *(v33 + 2);
      v37 = *(v33 + 3);
      if (v38 >= v37 >> 1)
      {
        v33 = sub_26128A380(v37 > 1, v38 + 1, 1, v33, &qword_27FE9F620, &qword_2613A57B0, MEMORY[0x277CC9260]);
      }

      ++v31;
      *(v33 + 2) = v38 + 1;
      (v80)(&v33[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v38], v19, v75);
      v32 += 2;
      result = v34;
      if (v73 == v31)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_18:

  v77 = *(v33 + 2);
  if (v77)
  {
    v39 = 0;
    v73 = v9 + 16;
    v68 = (v9 + 8);
    v40 = MEMORY[0x277D84F90];
    v41 = v75;
    v42 = v76;
    while (1)
    {
      if (v39 >= *(v33 + 2))
      {
        goto LABEL_47;
      }

      v43 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v44 = *(v9 + 72);
      (*(v9 + 16))(v42, &v33[v43 + v44 * v39], v41);
      if (sub_26139EE9C() == 6513780 && v45 == 0xE300000000000000)
      {
        break;
      }

      v46 = sub_2613A241C();

      if (v46)
      {
        goto LABEL_27;
      }

      result = (*v68)(v42, v41);
LABEL_21:
      if (v77 == ++v39)
      {
        goto LABEL_33;
      }
    }

LABEL_27:
    (v80)(v79, v42, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = v40;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26128C338(0, *(v40 + 16) + 1, 1);
      v40 = v82;
    }

    v49 = *(v40 + 16);
    v48 = *(v40 + 24);
    if (v49 >= v48 >> 1)
    {
      sub_26128C338(v48 > 1, v49 + 1, 1);
      v40 = v82;
    }

    *(v40 + 16) = v49 + 1;
    result = (v80)(v40 + v43 + v49 * v44, v79, v41);
    v42 = v76;
    goto LABEL_21;
  }

  v40 = MEMORY[0x277D84F90];
  v41 = v75;
LABEL_33:

  v50 = v69;
  sub_26139F0AC();
  sub_26139F07C();
  v52 = v51;
  result = (*(v70 + 8))(v50, v71);
  v53 = *(v40 + 16);
  if (!v53)
  {
LABEL_45:

    (*(v9 + 8))(v65, v41);

    v23 = v66;
    v22 = v67;
    v26 = v74;
    return (*(v23 + 8))(v26, v22);
  }

  v54 = 0;
  v80 = v53 - 1;
  v55 = MEMORY[0x277D84F90];
LABEL_35:
  v81 = v55;
  v56 = v54;
  v57 = v72;
  while (v56 < *(v40 + 16))
  {
    v58 = v78;
    (*(v9 + 16))(v78, v40 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v56, v41);
    v54 = (v56 + 1);
    sub_261286300(v58, v74, v57, v52);
    LOBYTE(v82) = 0;
    result = (*(v9 + 8))(v58, v41);
    if ((v82 & 1) == 0)
    {
      v59 = v81;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26128A28C(0, *(v59 + 16) + 1, 1, v59);
        v59 = result;
      }

      v61 = *(v59 + 16);
      v60 = *(v59 + 24);
      v62 = v59;
      v63 = v61 + 1;
      if (v61 >= v60 >> 1)
      {
        result = sub_26128A28C((v60 > 1), v61 + 1, 1, v59);
        v62 = result;
      }

      v55 = v62;
      *(v62 + 16) = v63;
      if (v80 != v56)
      {
        goto LABEL_35;
      }

      goto LABEL_45;
    }

    ++v56;
    if (v53 == v54)
    {
      goto LABEL_45;
    }
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_261286300(uint64_t a1, uint64_t *a2, uint64_t a3, double a4)
{
  v74 = a3;
  v75 = sub_26139F13C();
  v73 = *(v75 - 8);
  v7 = *(v73 + 64);
  MEMORY[0x28223BE20](v75);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v67 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v67 - v21;
  v23 = type metadata accessor for TransactionContainer();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v67 - v29;
  v77 = a1;
  v78 = a2;
  v31 = sub_26139F82C();
  v68 = v28;
  v69 = v15;
  v71 = v9;
  v72 = v30;
  v70 = v20;
  v32 = v75;
  v33 = v31;
  v35 = v34;
  sub_26128DA8C(&qword_27FE9F618, type metadata accessor for TransactionContainer);
  sub_26124B218(v23, v23, v22);
  sub_26124C6C4(v33, v35);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v36 = v76;
    sub_26124C718(v22, &qword_27FE9F568, &unk_2613AC620);
LABEL_3:
    v37 = sub_26129B5FC();
    sub_26125A870(v37, v36, &qword_27FE9F560, &qword_2613A3CB0);
    v38 = sub_2613A124C();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v36, 1, v38) == 1)
    {
      sub_26124C718(v36, &qword_27FE9F560, &qword_2613A3CB0);
    }

    else
    {
      v40 = sub_2613A122C();
      v41 = sub_2613A1D9C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261243000, v40, v41, "Sanitizing previous cache data", v42, 2u);
        MEMORY[0x266701350](v42, -1, -1);
      }

      (*(v39 + 8))(v36, v38);
    }

    return sub_26139F84C();
  }

  v44 = v23;
  v45 = v72;
  sub_26128A77C(v22, v72);
  if (*(v45 + *(v23 + 68)) + -0.5 <= a4)
  {
    sub_26128C614(v45, type metadata accessor for TransactionContainer);
    v36 = v76;
    goto LABEL_3;
  }

  v46 = sub_26129B5FC();
  v47 = v69;
  sub_26125A870(v46, v69, &qword_27FE9F560, &qword_2613A3CB0);
  v48 = sub_2613A124C();
  v49 = *(v48 - 8);
  if ((*(v49 + 48))(v47, 1, v48) == 1)
  {
    sub_26124C718(v47, &qword_27FE9F560, &qword_2613A3CB0);
    v50 = v71;
    v51 = v32;
    v52 = v73;
  }

  else
  {
    v53 = v45;
    v54 = v68;
    sub_26128C5AC(v53, v68, type metadata accessor for TransactionContainer);
    v55 = sub_2613A122C();
    v56 = sub_2613A1D7C();
    v51 = v32;
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = v78;
      *v57 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      LODWORD(v77) = v56;
      v58 = sub_2613A23EC();
      v59 = v54;
      v60 = v58;
      v62 = v61;
      sub_26128C614(v59, type metadata accessor for TransactionContainer);
      v63 = sub_26124C11C(v60, v62, &v79);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_261243000, v55, v77, "Loading cache data from FS: [%s]", v57, 0xCu);
      v64 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(v78);
      MEMORY[0x266701350](v64, -1, -1);
      MEMORY[0x266701350](v57, -1, -1);
    }

    else
    {

      sub_26128C614(v54, type metadata accessor for TransactionContainer);
    }

    v52 = v73;
    (*(v49 + 8))(v47, v48);
    v50 = v71;
  }

  v65 = v70;
  v66 = v72;
  (*(v52 + 16))(v50, v72, v51);
  sub_26128C5AC(v66, v65, type metadata accessor for TransactionContainer);
  (*(v24 + 56))(v65, 0, 1, v44);
  swift_beginAccess();
  sub_261283E48(v65, v50);
  swift_endAccess();
  sub_261286AD4(v66);
  return sub_26128C614(v66, type metadata accessor for TransactionContainer);
}

uint64_t sub_261286AD4(uint64_t a1)
{
  v99 = a1;
  v2 = sub_2613A170C();
  v96 = *(v2 - 8);
  v97 = v2;
  v3 = *(v96 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v95 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v94 = &v73[-v6];
  v7 = sub_2613A177C();
  v92 = *(v7 - 8);
  v93 = v7;
  v8 = *(v92 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v90 = &v73[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v91 = &v73[-v11];
  v89 = sub_26139F0BC();
  v88 = *(v89 - 8);
  v12 = *(v88 + 64);
  MEMORY[0x28223BE20](v89);
  v87 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_2613A171C();
  v85 = *(v86 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v83 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v84 = sub_2613A175C();
  v82 = *(v84 - 8);
  v16 = *(v82 + 64);
  MEMORY[0x28223BE20](v84);
  v81 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = sub_2613A1E5C();
  v78 = *(v80 - 8);
  v18 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v20 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_26139F13C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v79 = &v73[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v26 = &v73[-v25];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v73[-v29];
  swift_beginAccess();
  v98 = v1;
  v31 = *(v1 + 120);
  if (*(v31 + 16))
  {

    v32 = sub_26128A6E4(v99);
    if (v33)
    {
      v34 = *(*(v31 + 56) + 8 * v32);
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_2613A1E8C();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v35 = sub_26129B5FC();
  sub_26125A870(v35, v30, &qword_27FE9F560, &qword_2613A3CB0);
  v36 = sub_2613A124C();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v30, 1, v36) == 1)
  {
    sub_26124C718(v30, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    (*(v22 + 16))(v26, v99, v21);
    v38 = sub_2613A122C();
    v39 = sub_2613A1D7C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v77 = v21;
      v41 = v40;
      v76 = swift_slowAlloc();
      aBlock[0] = v76;
      *v41 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      v75 = v38;
      v42 = sub_2613A23EC();
      v74 = v39;
      v44 = v43;
      (*(v22 + 8))(v26, v77);
      v45 = sub_26124C11C(v42, v44, aBlock);

      v46 = v41;
      v21 = v77;
      *(v46 + 1) = v45;
      v47 = v75;
      _os_log_impl(&dword_261243000, v75, v74, "Scheduling timer to remove cache data: [%s]", v46, 0xCu);
      v48 = v76;
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x266701350](v48, -1, -1);
      MEMORY[0x266701350](v46, -1, -1);
    }

    else
    {

      (*(v22 + 8))(v26, v21);
    }

    (*(v37 + 8))(v30, v36);
  }

  sub_26128D8D4();
  sub_2613A1E4C();
  v49 = sub_2613A1E6C();
  (*(v78 + 8))(v20, v80);
  v77 = v49;
  ObjectType = swift_getObjectType();
  v51 = v79;
  (*(v22 + 16))(v79, v99, v21);
  v52 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v53 = swift_allocObject();
  (*(v22 + 32))(v53 + v52, v51, v21);
  *(v53 + ((v23 + v52 + 7) & 0xFFFFFFFFFFFFFFF8)) = v98;
  aBlock[4] = sub_26128D920;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261276D54;
  aBlock[3] = &block_descriptor_1;
  v54 = _Block_copy(aBlock);

  v55 = v81;
  sub_2613A173C();
  v56 = v83;
  v80 = ObjectType;
  sub_261287B10();
  sub_2613A1E7C();
  _Block_release(v54);
  (*(v85 + 8))(v56, v86);
  (*(v82 + 8))(v55, v84);

  v57 = v87;
  sub_26139F0AC();
  sub_26139F07C();
  (*(v88 + 8))(v57, v89);
  v58 = v90;
  sub_2613A176C();
  v59 = v91;
  sub_2613A17CC();
  v92 = *(v92 + 8);
  v60 = v58;
  v61 = v93;
  (v92)(v60, v93);
  v63 = v96;
  v62 = v97;
  v64 = *(v96 + 104);
  v65 = v94;
  v64(v94, *MEMORY[0x277D85180], v97);
  v66 = v95;
  *v95 = 0;
  v64(v66, *MEMORY[0x277D85168], v62);
  v67 = v77;
  MEMORY[0x266700370](v59, v65, v66, v80);
  v68 = *(v63 + 8);
  v68(v66, v62);
  v68(v65, v62);
  (v92)(v59, v61);
  sub_2613A1E9C();
  v69 = v98;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v70 = *(v69 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(v69 + 120);
  *(v69 + 120) = 0x8000000000000000;
  sub_26128B698(v67, v99, isUniquelyReferenced_nonNull_native);
  *(v69 + 120) = v100;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_2612875D4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v35 = sub_26129B5FC();
  sub_26125A870(v35, v14, &qword_27FE9F560, &qword_2613A3CB0);
  v15 = sub_2613A124C();
  v16 = *(v15 - 8);
  v34 = *(v16 + 48);
  if (v34(v14, 1, v15) == 1)
  {
    sub_26124C718(v14, &qword_27FE9F560, &qword_2613A3CB0);
    v17 = a1;
  }

  else
  {
    v32 = v16;
    v33 = v15;
    v18 = *(v4 + 16);
    v31 = a1;
    v18(v7, a1, v3);
    v19 = sub_2613A122C();
    v20 = sub_2613A1D7C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v21 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      v22 = sub_2613A23EC();
      v30 = v12;
      v24 = v23;
      (*(v4 + 8))(v7, v3);
      v25 = sub_26124C11C(v22, v24, &v37);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_261243000, v19, v20, "Timer expired, removing cache data: [%s]", v21, 0xCu);
      v26 = v29;
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x266701350](v26, -1, -1);
      MEMORY[0x266701350](v21, -1, -1);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    (*(v32 + 8))(v14, v33);
    v17 = v31;
  }

  return (*(*v36 + 184))(v17);
}

uint64_t sub_261287B10()
{
  sub_2613A171C();
  sub_26128DA8C(&qword_27FE9F4B0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F640, &unk_2613AA600);
  sub_26128D9C4();
  return sub_2613A203C();
}

uint64_t sub_261287BC8()
{
  v1 = v0[14];

  v2 = v0[15];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_261287C1C()
{
  type metadata accessor for TransactionDataManager();
  v0 = swift_allocObject();
  result = sub_261287CA8();
  qword_27FEAEC68 = v0;
  return result;
}

uint64_t *sub_261287C58()
{
  if (qword_27FEA2860 != -1)
  {
    swift_once();
  }

  return &qword_27FEAEC68;
}

uint64_t sub_261287CA8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  *(v0 + 16) = MEMORY[0x277D84F90];
  sub_2613A121C();
  v6 = sub_2613A11EC();
  v8 = v7;
  type metadata accessor for TransactionContainerCache();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v9[16] = v6;
  v9[17] = v8;
  v10 = MEMORY[0x277D84F98];
  v9[14] = MEMORY[0x277D84F98];
  v9[15] = v10;
  *(v1 + 24) = v9;
  v11 = sub_2613A1C1C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  sub_261287FE0(0, 0, v5, &unk_2613A5788, v13);

  return v1;
}

uint64_t sub_261287E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_261287E48);
}

uint64_t sub_261287E48()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    *(v0 + 64) = v3;

    v4 = (*v3 + 216) & 0xFFFFFFFFFFFFLL | 0x42A7000000000000;
    *(v0 + 72) = *(*v3 + 216);
    *(v0 + 80) = v4;

    return MEMORY[0x2822009F8](sub_261287F44);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_261287F44()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  (*(v0 + 72))();

  return MEMORY[0x2822009F8](sub_261287FB8);
}

uint64_t sub_261287FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26125A870(a3, v27 - v11, &unk_27FE9F580, &qword_2613A5480);
  v13 = sub_2613A1C1C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26124C718(v12, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2613A1BCC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2613A198C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2612882F4(uint64_t a1)
{
  v3 = sub_26139F13C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v13 = *(v1 + 16);
  v11 = (v1 + 16);
  v12 = v13;
  v14 = v13[2];
  if (v14 > 9)
  {
    sub_26128D698(0, 1);
    (*(v4 + 16))(v8, a1, v3);
    v12 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_26128A380(0, v12[2] + 1, 1, v12, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
      *v11 = v12;
    }

    v17 = v12[2];
    v20 = v12[3];
    v18 = v17 + 1;
    if (v17 >= v20 >> 1)
    {
      v12 = sub_26128A380(v20 > 1, v17 + 1, 1, v12, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
    }

    v10 = v8;
  }

  else
  {
    (*(v4 + 16))(&v22 - v9, a1, v3);
    v15 = swift_isUniquelyReferenced_nonNull_native();
    *v11 = v12;
    if ((v15 & 1) == 0)
    {
      v12 = sub_26128A380(0, v14 + 1, 1, v12, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
      *v11 = v12;
    }

    v17 = v12[2];
    v16 = v12[3];
    v18 = v17 + 1;
    if (v17 >= v16 >> 1)
    {
      v12 = sub_26128A380(v16 > 1, v17 + 1, 1, v12, &qword_27FE9F310, qword_2613A44C0, MEMORY[0x277CC95F0]);
    }
  }

  v12[2] = v18;
  result = (*(v4 + 32))(v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v10, v3);
  *v11 = v12;
  return result;
}

uint64_t sub_2612885B8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F568, &unk_2613AC620) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = type metadata accessor for TransactionContainer();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = sub_26139F13C();
  v3[9] = v8;
  v9 = *(v8 - 8);
  v3[10] = v9;
  v10 = *(v9 + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261288748);
}

uint64_t sub_261288748()
{
  v24 = v0;
  v1 = v0[12];
  v2 = sub_26129B5FC();
  sub_26125A870(v2, v1, &qword_27FE9F560, &qword_2613A3CB0);
  v3 = sub_2613A124C();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    sub_26124C718(v0[12], &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
    v7 = sub_2613A122C();
    v8 = sub_2613A1D7C();
    v9 = os_log_type_enabled(v7, v8);
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    if (v9)
    {
      v22 = v8;
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v13 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      v14 = sub_2613A23EC();
      v16 = v15;
      (*(v11 + 8))(v10, v12);
      v17 = sub_26124C11C(v14, v16, &v23);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_261243000, v7, v22, "Retrieving: [%s] from cache", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      MEMORY[0x266701350](v21, -1, -1);
      MEMORY[0x266701350](v13, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v10, v12);
    }

    (*(v4 + 8))(v0[12], v3);
  }

  v18 = *(v0[4] + 24);
  v0[13] = v18;
  v19 = (*v18 + 176) & 0xFFFFFFFFFFFFLL | 0x8B93000000000000;
  v0[14] = *(*v18 + 176);
  v0[15] = v19;

  return MEMORY[0x2822009F8](sub_261288A10);
}

uint64_t sub_261288A10()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 40);
  (*(v0 + 112))(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_261288A84);
}

uint64_t sub_261288A84()
{
  v1 = v0[5];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    sub_26124C718(v1, &qword_27FE9F568, &unk_2613AC620);
    v2 = v0[11];
    v3 = v0[12];
    v4 = v0[8];
    v5 = v0[5];
    (*(v0[7] + 56))(v0[2], 1, 1, v0[6]);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[13];
    sub_26128A77C(v1, v0[8]);
    v9 = (*v8 + 184) & 0xFFFFFFFFFFFFLL | 0xF994000000000000;
    v0[16] = *(*v8 + 184);
    v0[17] = v9;

    return MEMORY[0x2822009F8](sub_261288BD4);
  }
}

uint64_t sub_261288BD4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  (*(v0 + 128))(*(v0 + 24));

  return MEMORY[0x2822009F8](sub_261288C6C);
}

uint64_t sub_261288C6C()
{
  sub_26128A77C(v0[8], v0[2]);
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[5];
  (*(v0[7] + 56))(v0[2], 0, 1, v0[6]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_261288D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), uint64_t (*a5)())
{
  v176 = a5;
  v169 = a2;
  v170 = a4;
  v178 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v179 = &v156 - v8;
  v9 = type metadata accessor for TransactionContainer();
  v171 = *(v9 - 1);
  v10 = *(v171 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v172 = v12;
  v173 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v156 - v13;
  v15 = sub_26139F0BC();
  v167 = *(v15 - 8);
  v168 = v15;
  v16 = *(v167 + 64);
  MEMORY[0x28223BE20](v15);
  v166 = &v156 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_26139F13C();
  v180 = *(v18 - 8);
  v181 = v18;
  v19 = *(v180 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v177 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v21;
  MEMORY[0x28223BE20](v20);
  v182 = &v156 - v22;
  v23 = type metadata accessor for TransactionData(0);
  v24 = *(*(v23 - 1) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F560, &qword_2613A3CB0);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v165 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v156 - v31;
  v163 = sub_26129B5FC();
  sub_26125A870(v163, v32, &qword_27FE9F560, &qword_2613A3CB0);
  v33 = sub_2613A124C();
  v174 = *(v33 - 8);
  v34 = *(v174 + 48);
  v162 = v174 + 48;
  v161 = v34;
  v35 = v34(v32, 1, v33);
  v164 = v33;
  if (v35 == 1)
  {
    sub_26124C718(v32, &qword_27FE9F560, &qword_2613A3CB0);
  }

  else
  {
    sub_26128C5AC(a1, v26, type metadata accessor for TransactionData);
    v36 = sub_2613A122C();
    v37 = sub_2613A1D7C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v159 = v38;
      v160 = swift_slowAlloc();
      v184 = v160;
      *v38 = 136315138;
      sub_26128DA8C(&qword_27FE9F570, MEMORY[0x277CC95F0]);
      LODWORD(v158) = v37;
      v39 = sub_2613A23EC();
      v41 = v40;
      sub_26128C614(v26, type metadata accessor for TransactionData);
      v42 = sub_26124C11C(v39, v41, &v184);

      v43 = v159;
      *(v159 + 1) = v42;
      v44 = v43;
      _os_log_impl(&dword_261243000, v36, v158, "Storing: [%s] in cache", v43, 0xCu);
      v45 = v160;
      __swift_destroy_boxed_opaque_existential_0Tm(v160);
      MEMORY[0x266701350](v45, -1, -1);
      MEMORY[0x266701350](v44, -1, -1);
    }

    else
    {

      sub_26128C614(v26, type metadata accessor for TransactionData);
    }

    (*(v174 + 8))(v32, v33);
  }

  v46 = v182;
  v47 = v181;
  v48 = v180 + 16;
  v49 = *(v180 + 16);
  v49(v182, a1);
  v50 = *(v183 + 16);

  v51 = v46;
  LOBYTE(v46) = sub_2612899E4(v46, v50);

  if (v46)
  {
    v52 = v165;
    sub_26125A870(v163, v165, &qword_27FE9F560, &qword_2613A3CB0);
    v53 = v164;
    if (v161(v52, 1, v164) == 1)
    {
      sub_26124C718(v52, &qword_27FE9F560, &qword_2613A3CB0);
      v54 = v180;
    }

    else
    {
      v144 = sub_2613A122C();
      v145 = sub_2613A1D7C();
      v146 = os_log_type_enabled(v144, v145);
      v54 = v180;
      if (v146)
      {
        v147 = swift_slowAlloc();
        *v147 = 0;
        _os_log_impl(&dword_261243000, v144, v145, "Transaction ID already saved", v147, 2u);
        MEMORY[0x266701350](v147, -1, -1);
      }

      (*(v174 + 8))(v52, v53);
    }

    v148 = sub_2613A1C1C();
    v149 = v179;
    (*(*(v148 - 8) + 56))(v179, 1, 1, v148);
    v150 = swift_allocObject();
    swift_weakInit();
    v151 = v177;
    v152 = v181;
    v143 = v182;
    (v49)(v177, v182, v181);
    v142 = v152;
    v153 = (*(v54 + 80) + 40) & ~*(v54 + 80);
    v154 = swift_allocObject();
    *(v154 + 2) = 0;
    *(v154 + 3) = 0;
    *(v154 + 4) = v150;
    (*(v54 + 32))(&v154[v153], v151, v142);
    sub_261289D40(0, 0, v149, &unk_2613A5560, v154);
  }

  else
  {
    v55 = v166;
    sub_26139F0AC();
    sub_26139F07C();
    v57 = v56;
    (*(v167 + 8))(v55, v168);
    v156 = v48;
    v58 = v49;
    (v49)(v14, v51, v47);
    v59 = (a1 + v23[5]);
    v60 = *v59;
    v174 = v59[1];
    v61 = v174;
    v62 = v23[10];
    v63 = (a1 + v23[9]);
    v64 = *v63;
    v167 = v63[1];
    v65 = v167;
    v66 = (a1 + v62);
    v67 = v23[11];
    v68 = v23[12];
    v70 = v23[13];
    v69 = v23[14];
    v72 = v23[15];
    v71 = v23[16];
    v74 = v23[17];
    v73 = v23[18];
    v75 = v23[7];
    v77 = v23[20];
    v76 = v23[21];
    v79 = v23[22];
    v78 = v23[23];
    v80 = v23[27];
    v81 = v23[29];
    v82 = v23[32];
    v83 = &v14[v9[5]];
    *v83 = v60;
    *(v83 + 1) = v61;
    v84 = *v66;
    v164 = v66[1];
    v85 = v164;
    v86 = (a1 + v68);
    v87 = &v14[v9[6]];
    *v87 = v64;
    *(v87 + 1) = v65;
    v88 = *v86;
    v163 = v86[1];
    v89 = v163;
    v90 = &v14[v9[7]];
    *v90 = v84;
    *(v90 + 1) = v85;
    v91 = *(a1 + v70);
    v92 = *(a1 + v70 + 8);
    v160 = v92;
    v93 = (a1 + v67);
    v94 = &v14[v9[8]];
    *v94 = v88;
    *(v94 + 1) = v89;
    v162 = *v93;
    v95 = v162;
    v161 = v93[1];
    v96 = v161;
    v97 = (a1 + v69);
    v98 = &v14[v9[9]];
    *v98 = v91;
    *(v98 + 1) = v92;
    v99 = *v97;
    v168 = v97[1];
    v100 = v168;
    v101 = (a1 + v72);
    v102 = &v14[v9[10]];
    *v102 = v95;
    v102[1] = v96;
    v103 = &v14[v9[11]];
    *v103 = v99;
    *(v103 + 1) = v100;
    v104 = *v101;
    v166 = v101[1];
    v105 = v166;
    v106 = (a1 + v71);
    v107 = &v14[v9[12]];
    *v107 = v104;
    *(v107 + 1) = v105;
    v108 = *v106;
    v165 = v106[1];
    v109 = v165;
    v110 = &v14[v9[13]];
    *v110 = v108;
    *(v110 + 1) = v109;
    v14[v9[14]] = *(a1 + v74);
    v111 = (a1 + v75);
    v14[v9[15]] = *(a1 + v73);
    v112 = *v111;
    v159 = v111[1];
    v113 = v159;
    v114 = &v14[v9[16]];
    *v114 = v112;
    *(v114 + 1) = v113;
    LOBYTE(v77) = *(a1 + v77);
    *&v14[v9[17]] = v57 + 55.0;
    v14[v9[18]] = v77;
    v14[v9[19]] = *(a1 + v76);
    v14[v9[20]] = *(a1 + v79);
    v115 = (a1 + v78);
    v116 = *v115;
    v158 = v115[1];
    v117 = v158;
    v118 = (a1 + v80);
    v119 = (a1 + v81);
    v120 = (a1 + v82);
    v121 = &v14[v9[21]];
    *v121 = v116;
    *(v121 + 1) = v117;
    v122 = *v118;
    v157 = v118[1];
    v123 = v157;
    v124 = &v14[v9[22]];
    *v124 = v122;
    *(v124 + 1) = v123;
    v125 = &v14[v9[23]];
    *v125 = v169;
    *(v125 + 1) = v178;
    v126 = &v14[v9[24]];
    *v126 = v170;
    v127 = *v119;
    v169 = v119[1];
    v128 = v169;
    v126[1] = v176;
    v129 = &v14[v9[25]];
    *v129 = v127;
    *(v129 + 1) = v128;
    v130 = v120[1];
    v131 = &v14[v9[26]];
    *v131 = *v120;
    *(v131 + 1) = v130;
    v132 = sub_2613A1C1C();
    (*(*(v132 - 8) + 56))(v179, 1, 1, v132);
    v133 = swift_allocObject();
    swift_weakInit();
    v134 = v177;
    v135 = v181;
    v58(v177, v182, v181);
    v170 = type metadata accessor for TransactionContainer;
    v136 = v173;
    sub_26128C5AC(v14, v173, type metadata accessor for TransactionContainer);
    v137 = v180;
    v138 = (*(v180 + 80) + 40) & ~*(v180 + 80);
    v139 = (v175 + *(v171 + 80) + v138) & ~*(v171 + 80);
    v140 = swift_allocObject();
    v140[2] = 0;
    v140[3] = 0;
    v140[4] = v133;
    v141 = v140 + v138;
    v142 = v135;
    (*(v137 + 32))(v141, v134, v135);
    sub_26128A77C(v136, v140 + v139);

    sub_26124C778(v162, v161);

    sub_261289D40(0, 0, v179, &unk_2613A5550, v140);

    v143 = v182;
    sub_2612882F4(v182);
    sub_26128C614(v14, v170);
    v54 = v137;
  }

  return (*(v54 + 8))(v143, v142);
}

BOOL sub_2612899E4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_26139F13C() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_26128DA8C(&unk_281451E70, MEMORY[0x277CC95F0]);
  }

  while ((sub_2613A188C() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_261289AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return MEMORY[0x2822009F8](sub_261289B14);
}

uint64_t sub_261289B14()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    *(v0 + 80) = v3;

    v4 = (*v3 + 168) & 0xFFFFFFFFFFFFLL | 0xB04F000000000000;
    *(v0 + 88) = *(*v3 + 168);
    *(v0 + 96) = v4;

    return MEMORY[0x2822009F8](sub_261289C14);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_261289C14()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  (*(v0 + 88))(*(v0 + 56), *(v0 + 64));
  *(v0 + 104) = 0;
  v3 = *(v0 + 80);

  return MEMORY[0x2822009F8](sub_261289CB0);
}

uint64_t sub_261289CDC()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_261289D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F580, &qword_2613A5480);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26125A870(a3, v24 - v10, &unk_27FE9F580, &qword_2613A5480);
  v12 = sub_2613A1C1C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26124C718(v11, &unk_27FE9F580, &qword_2613A5480);
  }

  else
  {
    sub_2613A1C0C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2613A1BCC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2613A198C() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26124C718(a3, &unk_27FE9F580, &qword_2613A5480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE9F600, &unk_2613AD080);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_261289FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26128A020);
}

uint64_t sub_26128A020()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = *(Strong + 24);
    *(v0 + 72) = v3;

    v4 = (*v3 + 184) & 0xFFFFFFFFFFFFLL | 0xF994000000000000;
    *(v0 + 80) = *(*v3 + 184);
    *(v0 + 88) = v4;

    return MEMORY[0x2822009F8](sub_26128A120);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_26128A120()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  (*(v0 + 80))(*(v0 + 56));
  *(v0 + 96) = 0;
  v3 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_26128A1BC);
}

uint64_t sub_26128A1E8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_26128A24C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

char *sub_26128A28C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F610, &qword_2613A57A8);
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

size_t sub_26128A380(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_26128A55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26128A6E4(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26128C020();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26139F13C();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for TransactionContainer();
    v22 = *(v15 - 8);
    sub_26128A77C(v14 + *(v22 + 72) * v8, a2);
    sub_26128B354(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for TransactionContainer();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_26128A6E4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26139F13C();
  sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0]);
  v5 = sub_2613A182C();

  return sub_26128BBE0(a1, v5);
}

uint64_t sub_26128A77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26128A7E0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26139F13C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F628, &qword_2613A57B8);
  v43 = a2;
  result = sub_2613A223C();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0]);
      result = sub_2613A182C();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_26128ABBC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for TransactionContainer();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26139F13C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F658, &unk_2613A57C8);
  v48 = a2;
  result = sub_2613A223C();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26128A77C(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_26128C5AC(v33 + v32 * v28, v52, type metadata accessor for TransactionContainer);
      }

      v34 = *(v16 + 40);
      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0]);
      result = sub_2613A182C();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_26128A77C(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

unint64_t sub_26128B034(int64_t a1, uint64_t a2)
{
  v43 = sub_26139F13C();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_2613A205C();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0]);
      v26 = sub_2613A182C();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_26128B354(int64_t a1, uint64_t a2)
{
  v4 = sub_26139F13C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_2613A205C();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_26128DA8C(&qword_281451E80, MEMORY[0x277CC95F0]);
      v24 = sub_2613A182C();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for TransactionContainer() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_26128B698(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26128A6E4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26128BDA0();
      goto LABEL_7;
    }

    sub_26128A7E0(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_26128A6E4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26128BA4C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_26128B864(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26139F13C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26128A6E4(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_26128C020();
      goto LABEL_7;
    }

    sub_26128ABBC(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_26128A6E4(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_26128BB04(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2613A249C();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for TransactionContainer() - 8) + 72) * v15;

  return sub_26128DA28(a1, v23);
}

uint64_t sub_26128BA4C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26139F13C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
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

uint64_t sub_26128BB04(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26139F13C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for TransactionContainer();
  result = sub_26128A77C(a3, v10 + *(*(v11 - 8) + 72) * a1);
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

unint64_t sub_26128BBE0(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_26139F13C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_26128DA8C(&unk_281451E70, MEMORY[0x277CC95F0]);
      v16 = sub_2613A188C();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

char *sub_26128BDA0()
{
  v1 = v0;
  v34 = sub_26139F13C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F628, &qword_2613A57B8);
  v4 = *v0;
  v5 = sub_2613A222C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;
        result = swift_unknownObjectRetain();
        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_26128C020()
{
  v1 = v0;
  v2 = type metadata accessor for TransactionContainer();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_26139F13C();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE9F658, &unk_2613A57C8);
  v7 = *v0;
  v8 = sub_2613A222C();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_26128C5AC(*(v7 + 56) + v28, v37, type metadata accessor for TransactionContainer);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_26128A77C(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

size_t sub_26128C338(size_t a1, int64_t a2, char a3)
{
  result = sub_26128CA40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_26128C37C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_26139F13C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TransactionContainer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_261265144;

  return sub_261289AF0(a1, v11, v12, v10, v1 + v6, v1 + v9);
}

uint64_t sub_26128C4C8(uint64_t a1)
{
  v4 = *(sub_26139F13C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_261262AA4;

  return sub_261289FFC(a1, v7, v8, v6, v1 + v5);
}

uint64_t sub_26128C5AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26128C614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26128C69C()
{
  sub_26139F13C();
  if (v0 <= 0x3F)
  {
    sub_26128C774();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26128C774()
{
  if (!qword_27FE9F590)
  {
    v0 = sub_2613A1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FE9F590);
    }
  }
}

uint64_t getEnumTagSinglePayload for TransactionContainer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TransactionContainer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}