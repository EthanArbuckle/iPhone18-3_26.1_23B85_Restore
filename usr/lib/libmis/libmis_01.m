void sub_1B9DADDBC(uint64_t *a1)
{
  v2 = v1;
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B9DD2728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B9DD28D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1B9DA843C())
  {
    v14 = sub_1B9DA9F20();
    (*(v10 + 16))(v13, v14, v9);
    v15 = *(v5 + 16);
    v46 = a1;
    v15(v8, a1, v4);
    v16 = sub_1B9DD28B8();
    v17 = sub_1B9DD2AB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v43 = v16;
      v19 = v18;
      v44 = swift_slowAlloc();
      *&v48 = v44;
      *v19 = 136446210;
      v42 = v17;
      v20 = sub_1B9DD26F8();
      v45 = v1;
      v22 = v21;
      (*(v5 + 8))(v8, v4);
      v23 = sub_1B9D9D588(v20, v22, &v48);
      v2 = v45;

      *(v19 + 4) = v23;
      v24 = v43;
      _os_log_impl(&dword_1B9D96000, v43, v42, "Performing warning lookup for bundle: %{public}s", v19, 0xCu);
      v25 = v44;
      sub_1B9D9DB30(v44);
      MEMORY[0x1BFAE80B0](v25, -1, -1);
      MEMORY[0x1BFAE80B0](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    (*(v10 + 8))(v13, v9);
    v26 = sub_1B9DAA058(v46);
    if (!v2)
    {
      v29 = v27;
      v30 = v28;
      v49[0] = 0;
      v31 = v26;
      sub_1B9D9DB90(v27, v28);
      v32 = sub_1B9DD2778();
      sub_1B9D9D534(v29, v30);
      v33 = sub_1B9DD122C(v31, v32, v49);

      if (v33)
      {
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_1B9DD2B88();

        *&v48 = 0xD000000000000011;
        *(&v48 + 1) = 0x80000001B9DDDF10;
        v47 = v33;
        v34 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v34);

        v35 = v48;
        sub_1B9DAEA6C();
        swift_allocError();
        *v36 = v35;
      }

      else
      {
        v37 = v49[0];
        if (v49[0])
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v48 = xmmword_1B9DD5980;
            v38 = v37;
            sub_1B9DD2788();

            if (*(&v48 + 1) >> 60 != 15)
            {
              sub_1B9D9D534(v29, v30);

              goto LABEL_14;
            }
          }
        }

        sub_1B9DAEA6C();
        swift_allocError();
        *v39 = 0xD000000000000029;
        v39[1] = 0x80000001B9DDDF30;
      }

      swift_willThrow();
      sub_1B9D9D534(v29, v30);
    }
  }

LABEL_14:
  v40 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B9DAE2A0(int a1, uint64_t a2)
{
  LODWORD(v73) = a1;
  v3 = sub_1B9DD28D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v77 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v66 - v8;
  v10 = sub_1B9DD2728();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v10);
  v70 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v66 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = v66 - v18;
  sub_1B9DAC98C(a2, v66 - v18);
  v20 = sub_1B9DA9F20();
  v78 = v4;
  v21 = *(v4 + 16);
  v68 = v20;
  v69 = v4 + 16;
  v76 = v3;
  v67 = v21;
  (v21)(v9);
  v66[0] = v11[2];
  v66[1] = v11 + 2;
  (v66[0])(v17, v19, v10);
  v22 = sub_1B9DD28B8();
  v23 = sub_1B9DD2AD8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v74 = v11;
    v25 = v24;
    v26 = swift_slowAlloc();
    v72 = v10;
    v27 = v26;
    v79 = v26;
    *v25 = 136446466;
    v28 = sub_1B9DD26F8();
    v71 = v19;
    v30 = v29;
    v31 = v74[1];
    v31(v17, v72);
    v32 = sub_1B9D9D588(v28, v30, &v79);
    v19 = v71;

    *(v25 + 4) = v32;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v73 & 1;
    _os_log_impl(&dword_1B9D96000, v22, v23, "Setting user override: %{public}s to %{BOOL}d", v25, 0x12u);
    sub_1B9D9DB30(v27);
    v33 = v27;
    v10 = v72;
    MEMORY[0x1BFAE80B0](v33, -1, -1);
    v34 = v25;
    v11 = v74;
    MEMORY[0x1BFAE80B0](v34, -1, -1);
  }

  else
  {

    v31 = v11[1];
    v31(v17, v10);
  }

  v35 = *(v78 + 8);
  v36 = v76;
  v35(v9, v76);
  type metadata accessor for LaunchWarningMark();
  v37 = v75;
  v38 = sub_1B9D9E680(v19);
  v39 = v77;
  if (!v37)
  {
    if (v38)
    {
      v41 = sub_1B9DD10FC(*(v38 + 24), v73 & 1);
      if (v41 == 16)
      {
        sub_1B9DAEA6C();
        swift_allocError();
        *v58 = 0;
        v58[1] = 0;
      }

      else
      {
        if (v41 == 1024)
        {
          v31(v19, v10);
        }

        v79 = 0;
        v80 = 0xE000000000000000;
        v59 = v31;
        v60 = v41;
        sub_1B9DD2B88();

        v79 = 0xD000000000000011;
        v80 = 0x80000001B9DDDF10;
        v81 = v60;
        v61 = sub_1B9DD2C08();
        MEMORY[0x1BFAE6A10](v61);

        v62 = v79;
        v63 = v80;
        sub_1B9DAEA6C();
        swift_allocError();
        *v64 = v62;
        v64[1] = v63;
        v31 = v59;
      }

      swift_willThrow();
    }

    else
    {
      v74 = v11;
      v67(v77, v68, v36);
      v42 = v70;
      (v66[0])(v70, v19, v10);
      v43 = sub_1B9DD28B8();
      v44 = sub_1B9DD2AC8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v75 = v31;
        v46 = v45;
        v47 = swift_slowAlloc();
        v71 = v19;
        v48 = v47;
        v79 = v47;
        *v46 = 136446210;
        v73 = v43;
        v49 = sub_1B9DD26F8();
        v51 = v50;
        v75(v42, v10);
        v52 = sub_1B9D9D588(v49, v51, &v79);

        *(v46 + 4) = v52;
        v53 = v73;
        _os_log_impl(&dword_1B9D96000, v73, v44, "Setting override for unknown bundle: %{public}s", v46, 0xCu);
        sub_1B9D9DB30(v48);
        v54 = v48;
        v19 = v71;
        MEMORY[0x1BFAE80B0](v54, -1, -1);
        v55 = v46;
        v31 = v75;
        MEMORY[0x1BFAE80B0](v55, -1, -1);

        v56 = v77;
        v57 = v76;
      }

      else
      {

        v31(v42, v10);
        v56 = v39;
        v57 = v36;
      }

      v35(v56, v57);
      sub_1B9DAEA6C();
      swift_allocError();
      *v65 = xmmword_1B9DD5BE0;
      swift_willThrow();
    }
  }

  return (v31)(v19, v10);
}

uint64_t sub_1B9DAE968(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1B9DAE980(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B9DAE98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9DAE9E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B9DAEA3C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B9DAEA6C()
{
  result = qword_1EBBE33D0;
  if (!qword_1EBBE33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBE33D0);
  }

  return result;
}

uint64_t sub_1B9DAEAC0(uint64_t a1)
{
  v2 = sub_1B9D9B898(&qword_1EBBE3358, &qword_1B9DD5750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9DAEB28(uint64_t a1, uint64_t a2)
{
  v4 = _s18LaunchWarningEntryVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9DAEB8C(uint64_t a1)
{
  v2 = _s18LaunchWarningEntryVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9DAEBE8(uint64_t a1, id a2)
{
  v4 = [a2 profileUUID];
  v5 = sub_1B9DD2998();
  v7 = v6;

  (*(*a1 + 184))(v5, v7, 1);

  v8 = [a2 cdHash];
  v9 = sub_1B9DD2798();
  v11 = v10;

  (*(*a1 + 120))(v9, v11, 2);
  sub_1B9D9D534(v9, v11);
  v12 = [a2 gracePeriod];
  v13 = *(*a1 + 152);
  v13(v12, 3);
  v13([a2 lastSuccessMonotonicTime], 4);
  v13([a2 lastSuccessResetCount], 5);
  v13([a2 isRejected], 6);
  return (v13)([a2 isRejectedByWholeProfile], 7);
}

uint64_t sub_1B9DAEEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = *(*a1 + 152);
  v15(a2, 1);
  v15(a3, 2);
  (*(*a1 + 184))(a4, a5, 3);
  (*(*a1 + 120))(a6, a7, 4);
  return (v15)(a8, 5);
}

uint64_t sub_1B9DAF118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    v9 = 0xD000000000000024;
  }

  else
  {
    v9 = 0xD000000000000085;
  }

  if (a5)
  {
    v10 = "ted_by_whole_profile = 0";
  }

  else
  {
    v10 = ", cdhash) DO NOTHING";
  }

  sub_1B9DD2B88();
  MEMORY[0x1BFAE6A10](0xD0000000000000D6, 0x80000001B9DDE360);
  MEMORY[0x1BFAE6A10](v9, v10 | 0x8000000000000000);

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_1B9D9DB90(a3, a4);
  sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB2CFC, v11, 0, 0);
}

id sub_1B9DAF36C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v40[1] = *MEMORY[0x1E69E9840];
  v12 = sub_1B9DD28D8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v17 = sub_1B9DD2968();
  v18 = sub_1B9DD2778();
  v40[0] = 0;
  v38 = a5;
  LODWORD(v6) = [v6 recordIndeterminateEntryWithProfileUUID:v17 cdHash:v18 onConflictDoNothing:a5 & 1 error:v40];

  v19 = v40[0];
  if (v6)
  {
    v20 = *MEMORY[0x1E69E9840];

    return v19;
  }

  else
  {
    v39 = v40[0];
    v22 = v40[0];
    v23 = sub_1B9DD2698();

    swift_willThrow();
    v24 = sub_1B9DA9E4C();
    v25 = v13;
    v26 = *(v13 + 16);
    v39 = v12;
    v26(v16, v24, v12);

    sub_1B9D9DB90(a3, a4);
    v27 = sub_1B9DD28B8();
    v28 = sub_1B9DD2AC8();

    sub_1B9D9D534(a3, a4);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = v23;
      v31 = swift_slowAlloc();
      v40[0] = v31;
      *v29 = 136446722;
      *(v29 + 4) = sub_1B9D9D588(v37, a2, v40);
      *(v29 + 12) = 2082;
      v32 = sub_1B9DAC708(a3, a4);
      v34 = sub_1B9D9D588(v32, v33, v40);

      *(v29 + 14) = v34;
      *(v29 + 22) = 1024;
      *(v29 + 24) = v38 & 1;
      _os_log_impl(&dword_1B9D96000, v27, v28, "Error recording indeterminate entry %{public}s, %{public}s, %{BOOL}d", v29, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1BFAE80B0](v31, -1, -1);
      MEMORY[0x1BFAE80B0](v29, -1, -1);
      v35 = v30;
    }

    else
    {
      v35 = v23;
    }

    result = (*(v25 + 8))(v16, v39);
    v36 = *MEMORY[0x1E69E9840];
  }

  return result;
}

id sub_1B9DAF878(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1B9DD28D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B9DD2968();
  v27[0] = 0;
  LODWORD(v4) = [v4 setGracePeriodWithProfileUUID:v13 gracePeriod:a3 error:v27];

  v14 = v27[0];
  if (v4)
  {
    v15 = *MEMORY[0x1E69E9840];

    return v14;
  }

  else
  {
    v26 = v27[0];
    v17 = v27[0];
    v18 = sub_1B9DD2698();

    swift_willThrow();
    v19 = sub_1B9DA9E4C();
    (*(v9 + 16))(v12, v19, v8);

    v20 = sub_1B9DD28B8();
    v21 = sub_1B9DD2AC8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      LODWORD(v26) = a3;
      v23 = v22;
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_1B9D9D588(a1, a2, v27);
      *(v23 + 12) = 1024;
      *(v23 + 14) = v26;
      _os_log_impl(&dword_1B9D96000, v20, v21, "Error setting grace period for %{public}s, %d", v23, 0x12u);
      sub_1B9D9DB30(v24);
      MEMORY[0x1BFAE80B0](v24, -1, -1);
      MEMORY[0x1BFAE80B0](v23, -1, -1);
    }

    result = (*(v9 + 8))(v12, v8);
    v25 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1B9DAFBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  (*(*a1 + 184))(a2, a3, 1);
  (*(*a1 + 120))(a4, a5, 2);
  return (*(*a1 + 152))(a6 & 1, 3);
}

void sub_1B9DAFFC8(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = (*(*a1 + 128))(1);
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = *(*a1 + 160);
    v10 = v9(2);
    if (v10 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else
    {
      v11 = v10;
      if (v10 <= 0x7FFFFFFF)
      {
        v21 = v9(3);
        v20 = v9(4);
        v12 = v9(5) != 0;
        v13 = v9(6) != 0;
        v14 = objc_allocWithZone(MISOnlineAuthEntry);
        v15 = sub_1B9DD2968();

        v16 = sub_1B9DD2778();
        LOBYTE(v19) = v13;
        v17 = [v14 initWithProfileUUID:v15 cdHash:v16 gracePeriod:v11 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v20 isRejected:v12 isRejectedByWholeProfile:v19];

        sub_1B9D9D520(v7, v8);
        swift_beginAccess();
        v18 = *(a2 + 16);
        *(a2 + 16) = v17;

        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
}

void *sub_1B9DB01C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_1B9DD28D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;

  sub_1B9D9DB90(a3, a4);

  sub_1B9DB3518(0xD0000000000000D0, 0x80000001B9DDE660, sub_1B9DB2CFC, v11, sub_1B9DB2D18, v10);

  swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = v12;

  return v12;
}

uint64_t sub_1B9DB05A4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  v2 = v1 + 16;

  sub_1B9DB3518(0xD0000000000000B0, 0x80000001B9DDE740, 0, 0, sub_1B9DB2620, v1);

  if (!v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 16);
  }

  return v2;
}

void sub_1B9DB068C(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 192))(0);
  if (v4)
  {
    v5 = (*(*a1 + 128))(1);
    if (v6 >> 60 != 15)
    {
      v7 = v5;
      v8 = v6;
      v9 = *(*a1 + 160);
      v10 = (*a1 + 160);
      v11 = v9(2);
      if (v11 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else
      {
        v12 = v11;
        if (v11 <= 0x7FFFFFFF)
        {
          v21 = v9(3);
          v22 = a2;
          v13 = v9(4);
          v14 = v9(5) != 0;
          v15 = v9(6) != 0;
          v16 = objc_allocWithZone(MISOnlineAuthEntry);
          v17 = sub_1B9DD2968();

          v18 = sub_1B9DD2778();
          LOBYTE(v20) = v15;
          v19 = [v16 initWithProfileUUID:v17 cdHash:v18 gracePeriod:v12 lastSuccessMonotonicTime:v21 lastSuccessResetCount:v13 isRejected:v14 isRejectedByWholeProfile:v20];

          sub_1B9D9D520(v7, v8);
          swift_beginAccess();
          v10 = v19;
          MEMORY[0x1BFAE6A70]();
          if (*((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v22 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_6:
            sub_1B9DD2AA8();
            swift_endAccess();

            return;
          }

LABEL_9:
          sub_1B9DD2A98();
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1B9DB08E8()
{
  v0 = sub_1B9DD28D8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CC0];

  sub_1B9DB3518(0xD0000000000000B0, 0x80000001B9DDE740, 0, 0, sub_1B9DB2D30, v2);

  swift_beginAccess();
  v3 = *(v2 + 16);

  return v3;
}

uint64_t sub_1B9DB0BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  if (a7)
  {
    sub_1B9DD2B88();
    MEMORY[0x1BFAE6A10](0xD000000000000033, 0x80000001B9DDE990);
    v10 = sub_1B9DD2C08();
    MEMORY[0x1BFAE6A10](v10);

    MEMORY[0x1BFAE6A10](0xD000000000000010, 0x80000001B9DDE9D0);
    MEMORY[0x1BFAE6A10](0, 0xE000000000000000);

    v12 = 0xD000000000000022;
    v11 = 0x80000001B9DDE960;
  }

  else
  {
    v11 = 0x80000001B9DDE800;
    v12 = 0xD000000000000060;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  if (a4)
  {
    if (a6 >> 60 == 15)
    {

      sub_1B9DD2B88();
      MEMORY[0x1BFAE6A10](0xD000000000000021, 0x80000001B9DDE870);
      MEMORY[0x1BFAE6A10](v12, v11);

      MEMORY[0x1BFAE6A10](0xD000000000000023, 0x80000001B9DDE8F0);
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = a1;
      v14[4] = a3;
      v14[5] = a4;

      sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB2764, v14, sub_1B9D9BAE8, v13);
      v15 = v23;

      goto LABEL_9;
    }

    sub_1B9D9DB7C(a5, a6);
    sub_1B9DD2B88();
    MEMORY[0x1BFAE6A10](0xD000000000000021, 0x80000001B9DDE870);
    MEMORY[0x1BFAE6A10](v12, v11);

    MEMORY[0x1BFAE6A10](0xD000000000000033, 0x80000001B9DDE920);
    v17 = swift_allocObject();
    v17[2] = a2;
    v17[3] = a1;
    v17[4] = a3;
    v17[5] = a4;
    v17[6] = a5;
    v17[7] = a6;

    sub_1B9D9DB7C(a5, a6);
    sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB2814, v17, sub_1B9D9BAE8, v13);
    if (v23)
    {

      sub_1B9D9D520(a5, a6);
      goto LABEL_14;
    }

    sub_1B9D9D520(a5, a6);
LABEL_16:
    swift_beginAccess();
    LOBYTE(a4) = *(v13 + 16);

    return a4 & 1;
  }

  if (a6 >> 60 != 15)
  {
    sub_1B9D9DB90(a5, a6);
    sub_1B9DD2B88();
    MEMORY[0x1BFAE6A10](0xD000000000000021, 0x80000001B9DDE870);
    MEMORY[0x1BFAE6A10](v12, v11);

    MEMORY[0x1BFAE6A10](0xD000000000000025, 0x80000001B9DDE8C0);
    LOBYTE(a4) = 0;
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a1;
    v18[4] = a5;
    v18[5] = a6;

    sub_1B9D9DB7C(a5, a6);
    sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB26B4, v18, sub_1B9D9BAE8, v13);

    sub_1B9D9D520(a5, a6);
    if (v23)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  sub_1B9DD2B88();
  MEMORY[0x1BFAE6A10](0xD000000000000021, 0x80000001B9DDE870);
  MEMORY[0x1BFAE6A10](v12, v11);

  MEMORY[0x1BFAE6A10](0xD000000000000015, 0x80000001B9DDE8A0);
  LOBYTE(a4) = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a1;

  sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB2D00, v16, sub_1B9D9BAE8, v13);
  v15 = v23;

LABEL_9:

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_14:

  return a4 & 1;
}

uint64_t sub_1B9DB11EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = v8 + 16;
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;

  sub_1B9D9DB90(a3, a4);

  sub_1B9DB3518(0xD00000000000009FLL, 0x80000001B9DDE9F0, sub_1B9DB2978, v10, sub_1B9D9AE2C, v8);

  if (!v12)
  {
    swift_beginAccess();
    v9 = *(v8 + 16);
  }

  return v9 & 1;
}

uint64_t sub_1B9DB1338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9DD28D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD00000000000006ALL, 0x80000001B9DDEA90, sub_1B9D9BB18, v7, sub_1B9D9BB34, v6);

  swift_beginAccess();
  v8 = *(v6 + 16);

  return v8;
}

uint64_t sub_1B9DB1658(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  sub_1B9DB3518(0xD000000000000032, 0x80000001B9DDEB00, sub_1B9D9BB18, v7, sub_1B9D9BAE8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

uint64_t sub_1B9DB1788(uint64_t a1, unint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_1B9D9DB90(a1, a2);

  sub_1B9DB3518(0xD00000000000002FLL, 0x80000001B9DDEB40, sub_1B9DB297C, v7, sub_1B9D9BAE8, v5);

  if (!v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16);
  }

  return v6 & 1;
}

id sub_1B9DB19F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v36[1] = *MEMORY[0x1E69E9840];
  v10 = sub_1B9DD28D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B9DD2968();
  v16 = sub_1B9DD2778();
  v36[0] = 0;
  LODWORD(v5) = [v5 deleteOnlineAuthEntryWithProfileUUID:v15 cdHash:v16 error:v36];

  v17 = v36[0];
  if (v5)
  {
    v18 = *MEMORY[0x1E69E9840];

    return v17;
  }

  else
  {
    v35 = v36[0];
    v20 = v36[0];
    v21 = sub_1B9DD2698();

    swift_willThrow();
    v22 = sub_1B9DA9E4C();
    (*(v11 + 16))(v14, v22, v10);

    sub_1B9D9DB90(a3, a4);
    v23 = sub_1B9DD28B8();
    v24 = sub_1B9DD2AC8();

    sub_1B9D9D534(a3, a4);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = v10;
      v26 = v25;
      v27 = swift_slowAlloc();
      v34 = v21;
      v28 = v27;
      v36[0] = v27;
      *v26 = 136446466;
      *(v26 + 4) = sub_1B9D9D588(a1, a2, v36);
      *(v26 + 12) = 2082;
      v29 = sub_1B9DAC708(a3, a4);
      v31 = sub_1B9D9D588(v29, v30, v36);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_1B9D96000, v23, v24, "Error deleting online auth entry %{public}s, %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAE80B0](v28, -1, -1);
      MEMORY[0x1BFAE80B0](v26, -1, -1);

      result = (*(v11 + 8))(v14, v35);
    }

    else
    {

      result = (*(v11 + 8))(v14, v10);
    }

    v32 = *MEMORY[0x1E69E9840];
  }

  return result;
}

id sub_1B9DB1EFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1B9DD28D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B9DD2778();
  v27[0] = 0;
  LODWORD(v3) = [v3 deleteOnlineAuthEntryWithCdHash:v11 error:v27];

  v12 = v27[0];
  if (v3)
  {
    v13 = *MEMORY[0x1E69E9840];

    return v12;
  }

  else
  {
    v26 = v27[0];
    v15 = v27[0];
    v16 = sub_1B9DD2698();

    swift_willThrow();
    v17 = sub_1B9DA9E4C();
    (*(v7 + 16))(v10, v17, v6);
    sub_1B9D9DB90(a1, a2);
    v18 = sub_1B9DD28B8();
    v19 = sub_1B9DD2AC8();
    sub_1B9D9D534(a1, a2);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136446210;
      v22 = sub_1B9DAC708(a1, a2);
      v24 = sub_1B9D9D588(v22, v23, v27);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1B9D96000, v18, v19, "Error deleting online auth entry %{public}s", v20, 0xCu);
      sub_1B9D9DB30(v21);
      MEMORY[0x1BFAE80B0](v21, -1, -1);
      MEMORY[0x1BFAE80B0](v20, -1, -1);
    }

    result = (*(v7 + 8))(v10, v6);
    v25 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t MISDBManager.addMonotonicTimeOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x80000001B9DDEC40;
  }

  sub_1B9DD2B88();
  MEMORY[0x1BFAE6A10](0xD000000000000056, 0x80000001B9DDEBE0);
  MEMORY[0x1BFAE6A10](v6, v7);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1B9D9DB7C(a2, a3);
  sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB2980, v8, 0, 0);
}

uint64_t MISDBManager.addRTCResetCountOffset(_:cdHash:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (a3 >> 60 == 15)
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0x80000001B9DDEC40;
  }

  sub_1B9DD2B88();
  MEMORY[0x1BFAE6A10](0xD000000000000050, 0x80000001B9DDEC60);
  MEMORY[0x1BFAE6A10](v6, v7);

  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1B9D9DB7C(a2, a3);
  sub_1B9DB3518(0, 0xE000000000000000, sub_1B9DB2D04, v8, 0, 0);
}

uint64_t sub_1B9DB250C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, void *, unint64_t))
{
  v7 = a4;
  if (a4)
  {
    v10 = a1;
    v11 = v7;
    v7 = sub_1B9DD2798();
    v13 = v12;
  }

  else
  {
    v14 = a1;
    v13 = 0xF000000000000000;
  }

  a6(a3, v7, v13);

  sub_1B9D9D520(v7, v13);
  return 1;
}

uint64_t sub_1B9DB264C(uint64_t a1)
{
  v2 = sub_1B9D9B898(&qword_1EBBE31D8, "Xa");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9DB26B4(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(*a1 + 152);
  v6(v1[2], 1);
  v6(v3, 2);
  return (*(*a1 + 120))(v4, v5, 3);
}

uint64_t sub_1B9DB2764(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(*a1 + 152);
  v6(v1[2], 1);
  v6(v3, 2);
  return (*(*a1 + 184))(v4, v5, 3);
}

uint64_t sub_1B9DB2814(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(*a1 + 152);
  v8(v1[2], 1);
  v8(v3, 2);
  (*(*a1 + 184))(v4, v5, 3);
  return (*(*a1 + 120))(v6, v7, 4);
}

uint64_t sub_1B9DB2904(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(*a1 + 152);
  v3(*(v1 + 16), 1);
  return v3(v2, 2);
}

uint64_t sub_1B9DB2984()
{
  v1 = *(v0 + 32);
  if (v1 >> 60 != 15)
  {
    sub_1B9D9D534(*(v0 + 24), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9DB29CC(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  (*(*a1 + 152))(v1[2], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

uint64_t sub_1B9DB2A58(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  (*(*a1 + 184))(v1[2], v1[3], 1);
  return (*(*a1 + 120))(v3, v4, 2);
}

unint64_t sub_1B9DB2AE4()
{
  result = qword_1EBBE31E8;
  if (!qword_1EBBE31E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBE31E8);
  }

  return result;
}

uint64_t sub_1B9DB2B30()
{
  sub_1B9D9D534(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9DB2BB8(uint64_t a1)
{
  v3 = v1[3];

  sub_1B9D9D534(v1[4], v1[5]);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B9DB2C14(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(*a1 + 184))(*(v1 + 16), *(v1 + 24), 1);
  return (*(*a1 + 152))(v3, 2);
}

uint64_t sub_1B9DB2C9C(uint64_t a1)
{
  v3 = v1[5];

  sub_1B9D9D534(v1[6], v1[7]);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B9DB2D90(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B9DB2DD0(uint64_t a1, unint64_t a2, int a3)
{
  if (a2 >> 60 == 15)
  {
    v5 = (*(*v3 + 88))();

    return sqlite3_bind_null(v5, a3);
  }

  else
  {

    sub_1B9D9DB7C(a1, a2);
    sub_1B9DB3A00(a1, a2, v3, a3);

    return sub_1B9D9D520(a1, a2);
  }
}

uint64_t sub_1B9DB2EB0(const void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(*a3 + 88))();
  if (a1)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    if (qword_1EBBE3FE8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  v11 = v7;
  swift_once();
  v7 = v11;
LABEL_7:
  v9 = qword_1EBBE4108;

  return sqlite3_bind_blob(v7, a4, a1, v8, v9);
}

_BYTE *sub_1B9DB2F94(int a1)
{
  v3 = *(*v1 + 88);
  v4 = v3();
  result = sqlite3_column_blob(v4, a1);
  if (result)
  {
    v6 = result;
    v7 = v3();
    v8 = sqlite3_column_bytes(v7, a1);
    return sub_1B9DABD5C(v6, v8);
  }

  return result;
}

uint64_t sub_1B9DB3020(uint64_t a1, int a2)
{
  result = sub_1B9DD2858();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = v5;
  v7 = (*(*v2 + 88))(result);

  return sqlite3_bind_int64(v7, a2, v6);
}

uint64_t sub_1B9DB30DC(int a1)
{
  v3 = (*(*v1 + 88))();
  v4.n128_f64[0] = sqlite3_column_int64(v3, a1);

  return MEMORY[0x1EEDC4D00](v4);
}

uint64_t sub_1B9DB314C(sqlite3_int64 a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1);
}

sqlite3_int64 sub_1B9DB31B4(int a1)
{
  v3 = (*(*v1 + 88))();

  return sqlite3_column_int64(v3, a1);
}

uint64_t sub_1B9DB320C(char a1, int a2)
{
  v5 = (*(*v2 + 88))();

  return sqlite3_bind_int64(v5, a2, a1 & 1);
}

uint64_t sub_1B9DB32C8(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v6 = result;

    return sub_1B9DB3324(v6, a2, v3, a3);
  }

  return result;
}

uint64_t sub_1B9DB3324(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *v12 = a1;
    v13 = a2 & 0xFFFFFFFFFFFFFFLL;
    v6 = (*(*a3 + 88))();
    if (qword_1EBBE3FE8 != -1)
    {
      v10 = v6;
      swift_once();
      v6 = v10;
    }

    v7 = qword_1EBBE4108;
    v8 = v12;
    goto LABEL_10;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_12:
    sub_1B9DD2B78();
  }

  v5 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v6 = (*(*a3 + 88))();
  if (qword_1EBBE3FE8 != -1)
  {
    v11 = v6;
    swift_once();
    v6 = v11;
  }

  v7 = qword_1EBBE4108;
  v8 = (v5 + 32);
LABEL_10:
  sqlite3_bind_text(v6, a4, v8, -1, v7);
}

const unsigned __int8 *sub_1B9DB34AC(int a1)
{
  v3 = (*(*v1 + 88))();
  result = sqlite3_column_text(v3, a1);
  if (result)
  {
    return sub_1B9DD2A18();
  }

  return result;
}

uint64_t sub_1B9DB3518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v20 = sub_1B9DD2968();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v26 = sub_1B9DB3CAC;
  v27 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1B9DB3790;
  v25 = &unk_1F37DA320;
  v11 = _Block_copy(&aBlock);
  sub_1B9D99E90(a3);

  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = v9;
  v26 = sub_1B9DB3D54;
  v27 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1B9DB37E4;
  v25 = &unk_1F37DA370;
  v13 = _Block_copy(&aBlock);
  sub_1B9D99E90(a5);

  v14 = [v21 executeQuery:v20 withBind:v11 withResults:v13];
  _Block_release(v13);
  _Block_release(v11);

  if (v14)
  {
    sub_1B9D9B9C4();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
LABEL_5:
    swift_willThrow();
  }

  swift_beginAccess();
  v16 = *(v9 + 16);
  if (v16)
  {
    v17 = v16;
    goto LABEL_5;
  }
}

uint64_t sub_1B9DB3790(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1B9DB37E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1B9DB3EF4();
  v5 = sub_1B9DD2958();

  v4(a2, v5);
}

void sub_1B9DB3874(void (*a1)(uint64_t))
{
  v3 = v1;
  v5 = [v1 transactionSemaphore];
  sub_1B9DD2AE8();

  v6 = sub_1B9DB3518(0xD000000000000011, 0x80000001B9DDEDB0, 0, 0, 0, 0);
  if (!v2)
  {
    a1(v6);
    sub_1B9DB3518(0xD000000000000012, 0x80000001B9DDEDF0, 0, 0, 0, 0);
    v7 = [v3 transactionSemaphore];
    sub_1B9DD2AF8();
  }
}

uint64_t sub_1B9DB3A00(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v6 = BYTE6(a2);
  v27[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v27, 0, 14);
      a1 = (*(*a3 + 88))();
      if (qword_1EBBE3FE8 == -1)
      {
LABEL_25:
        v9 = qword_1EBBE4108;
        v10 = a4;
        v11 = 0;
LABEL_26:
        sqlite3_bind_blob(a1, v10, v27, v11, v9);
        goto LABEL_27;
      }

LABEL_29:
      v26 = a1;
      swift_once();
      a1 = v26;
      goto LABEL_25;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
    a1 = sub_1B9DD2628();
    v14 = a1;
    if (a1)
    {
      a1 = sub_1B9DD2658();
      if (__OFSUB__(v12, a1))
      {
        __break(1u);
        goto LABEL_31;
      }

      v14 += v12 - a1;
    }

    v15 = __OFSUB__(v13, v12);
    v16 = v13 - v12;
    if (!v15)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v7)
  {
    v27[0] = a1;
    LOWORD(v27[1]) = a2;
    BYTE2(v27[1]) = BYTE2(a2);
    BYTE3(v27[1]) = BYTE3(a2);
    BYTE4(v27[1]) = BYTE4(a2);
    BYTE5(v27[1]) = BYTE5(a2);
    a1 = (*(*a3 + 88))();
    v8 = v6;
    if (qword_1EBBE3FE8 != -1)
    {
      v25 = a1;
      swift_once();
      a1 = v25;
    }

    v9 = qword_1EBBE4108;
    v10 = a4;
    v11 = v8;
    goto LABEL_26;
  }

  v17 = a1;
  v16 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v14 = sub_1B9DD2628();
  if (v14)
  {
    v18 = sub_1B9DD2658();
    if (!__OFSUB__(v17, v18))
    {
      v14 += v17 - v18;
      goto LABEL_17;
    }

LABEL_31:
    __break(1u);
  }

LABEL_17:
  v19 = sub_1B9DD2648();
  if (v19 >= v16)
  {
    v20 = v16;
  }

  else
  {
    v20 = v19;
  }

  v21 = &v14[v20];
  if (v14)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  sub_1B9DB2EB0(v14, v22, a3, a4);
LABEL_27:

  v24 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB3CAC(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 24);
    type metadata accessor for SQLStatement();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;

    v2(v5);

    return sub_1B9D99EE8(v2);
  }

  return result;
}

uint64_t sub_1B9DB3D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B9DB3D54(uint64_t result)
{
  v2 = v1[2];
  if (v2)
  {
    v3 = result;
    v4 = v1[3];
    v5 = v1[4];
    type metadata accessor for SQLStatement();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;

    v2(v6);

    return sub_1B9D99EE8(v2);
  }

  return result;
}

__n128 sub_1B9DB3E10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B9DB3E24(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B9DB3E6C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B9DB3EF4()
{
  result = qword_1EBBE33D8;
  if (!qword_1EBBE33D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBE33D8);
  }

  return result;
}

uint64_t sub_1B9DB3F40(const char *a1)
{
  v3 = *(v1 + 24);
  v4 = (*(**(v1 + 16) + 88))();
  if (qword_1EBBE3FE8 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  return sqlite3_bind_text(v4, v3, a1, -1, qword_1EBBE4108);
}

uint64_t sub_1B9DB3FFC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B9DD28D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = *(v2 + OBJC_IVAR____TtC3mis25LegacyUserTrustOperations_utdb);
  v8 = sub_1B9DA7674(a1, a2);
  if (!v9)
  {
    return 0;
  }

  v12 = v10;
  v13 = v8;
  v14 = v11;
  v15 = v9;
  sub_1B9D9DB90(v10, v11);
  sub_1B9DA4478(v13, v15, v12, v14);
  return v12;
}

id sub_1B9DB44AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LegacyUserTrustOperations();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t amfi_interface_cdhash_in_trustcache(__int128 *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  result = 22;
  if (a1 && a2 == 20 && a3)
  {
    *a3 = 0;
    v7 = *a1;
    v8 = *(a1 + 4);
    result = __sandbox_ms();
    if (result)
    {
      result = *__error();
    }

    else
    {
      *a3 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_query_bootarg_state(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  *a1 = 0;
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  *a1 = 0;
  return result;
}

uint64_t amfi_interface_get_local_signing_private_key(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (a1)
  {
    a1[144] = 0;
    *(a1 + 7) = 0uLL;
    *(a1 + 8) = 0uLL;
    *(a1 + 5) = 0uLL;
    *(a1 + 6) = 0uLL;
    *(a1 + 3) = 0uLL;
    *(a1 + 4) = 0uLL;
    *(a1 + 1) = 0uLL;
    *(a1 + 2) = 0uLL;
    *a1 = 0uLL;
    result = __sandbox_ms();
    if (!result)
    {
      result = 2 * (memcmp(a1, __s2, 0x91uLL) == 0);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_get_local_signing_public_key(_BYTE *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (a1)
  {
    a1[96] = 0;
    *(a1 + 4) = 0uLL;
    *(a1 + 5) = 0uLL;
    *(a1 + 2) = 0uLL;
    *(a1 + 3) = 0uLL;
    *a1 = 0uLL;
    *(a1 + 1) = 0uLL;
    result = __sandbox_ms();
    if (!result)
    {
      result = 2 * (memcmp(a1, __s2, 0x61uLL) == 0);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_set_local_signing_public_key(_OWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v12 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (!a1 || !memcmp(a1, __s2, 0x61uLL))
  {
    result = 22;
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = *(a1 + 96);
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    result = __sandbox_ms();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t amfi_interface_authorize_local_signing(__int128 *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 4);
  result = __sandbox_ms();
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL amfi_developer_mode_status()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v3, 0, 0) && v2 == 1;
}

BOOL amfi_developer_mode_resolved()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_resolved", &v2, &v3, 0, 0) && v2 == 1;
}

uint64_t amfi_launch_constraint_set_spawnattr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 1) <= 0x3FFE)
  {
    return MEMORY[0x1EEE72EF0]();
  }

  else
  {
    return 22;
  }
}

uint64_t amfi_launch_constraint_matches_process(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11[128] = *MEMORY[0x1E69E9840];
  if (!a2 || !a3)
  {
    if (a4)
    {
      result = 0;
      *a4 = 5;
      strcpy((a4 + 4), "No Constraint provided");
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a3 <= 0x4000)
  {
    bzero(v11, 0x400uLL);
    v10 = 5;
    if (!v4)
    {
      v4 = &v10;
    }

    v8 = *a1;
    v9 = a1[1];
    if (!__sandbox_ms() && !*v4)
    {
      result = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = 0;
  *a4 = 5;
  strcpy((a4 + 4), "Constraint too large");
LABEL_13:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t X509PolicySetFlagsForCommonNames(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v6[0] = 0xAAAAAAAAAAAAAAAALL;
  v6[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  result = X509CertificateSubjectNameGetCommonName(v2, v6);
  if (!result)
  {
    result = compare_octet_string(&iPhoneCAName, v6);
    if (!result)
    {
      v4 = 3840;
      goto LABEL_13;
    }

    result = compare_octet_string(&CodeSigningCAName, v6);
    if (!result)
    {
      v4 = 0x800000000008;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AccessoryCAName, v6);
    if (!result)
    {
      v4 = 0x400000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4AttestationCAName, v6);
    if (!result)
    {
      v4 = 0x800000000;
      goto LABEL_13;
    }

    result = compare_octet_string_partial(&MFi4ProvisioningCAName, v6);
    if (!result)
    {
      v4 = 0x1000000000;
LABEL_13:
      *(a1 + 240) |= v4;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void X509PolicySetFlagsForMFI(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 104);
  v7[0] = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = 0xAAAAAAAAAAAAAAAALL;
  if (v2 > a1 + 120)
  {
    __break(0x5519u);
  }

  if (!X509CertificateSubjectNameGetCommonName(v2, v7))
  {
    if (!compare_octet_string_partial(&MFICommonNamePrefix, v7))
    {
      v6 = 0;
      if (X509CertificateGetNotBefore(a1, &v6))
      {
        goto LABEL_9;
      }

      memset(&v5, 0, sizeof(v5));
      strptime("2006-05-31", "%F", &v5);
      v3 = timegm(&v5);
      if (difftime(v3, v6) >= 0.0)
      {
        goto LABEL_9;
      }

      *(a1 + 240) |= 0x8000000uLL;
    }

    if (!compare_octet_string_partial(&MFi4ProvisioningHostNamePrefix, v7))
    {
      *(a1 + 240) |= 0x1000000000uLL;
    }
  }

LABEL_9:
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t X509PolicySetFlagsForRoots(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 16) == 1)
  {
    v4 = numAppleProdRoots;
    if (numAppleProdRoots)
    {
      if (a2 + 88 <= (a2 + 104))
      {
        v5 = AppleRootSPKIs;
        while (1)
        {
          v6 = v5 + 1;
          v7 = v5 < AppleRootSPKIs || v6 > &rsaEncryption;
          if (v7 || v5 >= v6)
          {
            break;
          }

          result = compare_octet_string(a2 + 88, *v5);
          if (!result)
          {
            *(a2 + 240) |= 0xD8E30653FFF8uLL;
            goto LABEL_17;
          }

          ++v5;
          if (!--v4)
          {
            goto LABEL_17;
          }
        }
      }

      goto LABEL_50;
    }
  }

LABEL_17:
  v9 = *(v3 + 8);
  if ((v9 & 0x1000000) != 0)
  {
    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &UcrtRootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1000000;
      goto LABEL_27;
    }
  }

  else
  {
    if ((v9 & 0x1C00000000) == 0)
    {
      goto LABEL_28;
    }

    result = a2 + 88;
    if (a2 + 88 > (a2 + 104))
    {
      goto LABEL_50;
    }

    result = compare_octet_string(result, &MFi4RootSPKI);
    if (!result)
    {
      v10 = *(a2 + 240) | 0x1C00000000;
LABEL_27:
      *(a2 + 240) = v10;
      goto LABEL_28;
    }
  }

  if (*(v3 + 17) == 1)
  {
    result = sub_1B9DB4FB4(v3, a2);
  }

LABEL_28:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1 && numAppleProdRoots < numAppleRoots)
  {
    if (a2 + 88 <= (a2 + 104))
    {
      v11 = &AppleRootSPKIs[numAppleProdRoots];
      v12 = numAppleRoots - numAppleProdRoots;
      while (1)
      {
        v13 = v11 + 1;
        v14 = v11 < AppleRootSPKIs || v13 > &rsaEncryption;
        if (v14 || v11 >= v13)
        {
          break;
        }

        result = compare_octet_string(a2 + 88, *v11);
        if (!result)
        {
          *(a2 + 240) |= 0xD8E30653FFF8uLL;
          goto LABEL_44;
        }

        ++v11;
        if (!--v12)
        {
          goto LABEL_44;
        }
      }
    }

    goto LABEL_50;
  }

LABEL_44:
  if (*(v3 + 16) == 1 && *(v3 + 17) == 1)
  {
    result = a2 + 88;
    if (a2 + 88 <= (a2 + 104))
    {
      result = compare_octet_string(result, &TestAppleRootECCSPKI);
      if (!result)
      {
        *(a2 + 240) |= 0x6400000uLL;
      }

      return result;
    }

LABEL_50:
    __break(0x5519u);
  }

  return result;
}

uint64_t sub_1B9DB4FB4(void *a1, uint64_t a2)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2 + 88 > (a2 + 104))
  {
    __break(0x5519u);
  }

  result = X509CertificateParseSPKI((a2 + 88), v7, 0, v6);
  if (!result)
  {
    result = compare_octet_string(a1[4], v7);
    if (!result)
    {
      result = compare_octet_string(a1[3], v6);
      if (!result)
      {
        *(a2 + 240) |= a1[1];
      }
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t X509PolicyCheckForBlockedKeys(uint64_t a1)
{
  result = a1 + 88;
  if (result > a1 + 104)
  {
    __break(0x5519u);
  }

  else
  {
    result = compare_octet_string(result, &BlockedYonkersSPKI);
    if (!result)
    {
      *(a1 + 240) &= 0xFFFFFFFFFFF3FFFFLL;
    }
  }

  return result;
}

uint64_t CTEvaluateAMFICodeSignatureCMS_MaxDigestType(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, void *a7, void *a8, uint64_t *a9, int *a10, _DWORD *a11, void *a12, void *a13)
{
  v43 = *MEMORY[0x1E69E9840];
  memset(&v41[14], 170, 24);
  *&v21 = 0xAAAAAAAAAAAAAAAALL;
  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v41[10] = v21;
  *&v41[12] = v21;
  *&v41[6] = v21;
  *&v41[8] = v21;
  *&v41[2] = v21;
  *&v41[4] = v21;
  *v41 = v21;
  memset(__b, 170, sizeof(__b));
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[0] = v22;
  v40[1] = v22;
  v38 = v22;
  v39 = v22;
  v36[4] = v22;
  v37 = v22;
  v36[2] = v22;
  v36[3] = v22;
  v36[0] = v22;
  v36[1] = v22;
  v35 = v22;
  result = sub_1B9DB52C4(v41, a1, a2, a3, a4, __b, 0);
  if (result)
  {
    goto LABEL_3;
  }

  result = sub_1B9DB538C(v41, &v35, &v41[15], 0, a6);
  if (result)
  {
    goto LABEL_3;
  }

  v34 = 0;
  v31 = 0xAAAAAAAA0000AA01;
  v30 = xmmword_1B9DDAE30;
  BYTE1(v31) = a5;
  v32 = 0u;
  v33 = 0u;
  v25 = X509ChainCheckPathWithOptions(29, v40 + 1, &v30, &v34);
  if (a10)
  {
    digest = find_digest(v36 + 8);
    if (!digest)
    {
      result = 327682;
      goto LABEL_3;
    }

    *a10 = *digest;
  }

  if (!a9 || v25)
  {
    if (!a9)
    {
      goto LABEL_13;
    }

    v27 = 0;
  }

  else
  {
    v27 = v34;
  }

  *a9 = v27;
LABEL_13:
  if (a8 && a7 && *(&v40[0] + 1))
  {
    v28 = *(*(&v40[0] + 1) + 8);
    *a7 = **(&v40[0] + 1);
    *a8 = v28;
  }

  result = 0;
  if (a11 && a12 && a13)
  {
    result = 0;
    *a11 = DWORD2(v37);
    v29 = *(&v38 + 1);
    *a12 = v38;
    *a13 = v29;
  }

LABEL_3:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B9DB52C4(unint64_t result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  *(result + 112) = 0;
  *(result + 80) = 0u;
  *(result + 96) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  if (result + 120 < result || (v7 = result, *(result + 24) = 0, result + 24 > result + 32) || (*(result + 32) = result + 24, *result = 4, *(result + 8) = a6, *(result + 96) = a7, a3 < 0))
  {
LABEL_12:
    __break(0x5519u);
    return result;
  }

  result = CMSParseContentInfoSignedData(a2, a3, result);
  if (!result)
  {
    if (!a5)
    {
      return 0;
    }

    result = 131091;
    if (!*(v7 + 72) && !*(v7 + 80))
    {
      if ((a5 & 0x8000000000000000) == 0)
      {
        result = 0;
        *(v7 + 72) = a4;
        *(v7 + 80) = a5;
        return result;
      }

      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1B9DB538C(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a2 + 176 < a2 || (*(result + 56) = a2, *(result + 64) = 1, *a3 = 0, *(a3 + 8) = 0, a3 + 16 < a3))
  {
    __break(0x5519u);
  }

  else
  {
    *a3 = a4;
    *(a2 + 168) = 458753;
    *(a3 + 8) = a5;
    result = CMSParseSignerInfos(result, a3, validateSignerInfoAndChain);
    if (!result)
    {
      return *(a2 + 168);
    }
  }

  return result;
}

uint64_t CTEvaluateAMFICodeSignatureCMSPubKey(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8, void *a9, void *a10)
{
  v38 = *MEMORY[0x1E69E9840];
  memset(&v36[14], 170, 24);
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v36[10] = v18;
  *&v36[12] = v18;
  *&v36[6] = v18;
  *&v36[8] = v18;
  *&v36[2] = v18;
  *&v36[4] = v18;
  *v36 = v18;
  memset(__b, 170, sizeof(__b));
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34 = v19;
  v35 = v19;
  v32 = v19;
  v33 = v19;
  v30[4] = v19;
  v31 = v19;
  v30[3] = v19;
  v30[1] = v19;
  v30[2] = v19;
  v29 = v19;
  v30[0] = v19;
  result = sub_1B9DB52C4(v36, a1, a2, a3, a4, __b, 16);
  if (result)
  {
    goto LABEL_12;
  }

  v28[0] = a5;
  v28[1] = a6;
  result = oidForPubKeyLength();
  if (result)
  {
    v21 = result;
  }

  else
  {
    v21 = &null_octet;
  }

  v27[0] = 1;
  v27[1] = 0;
  v27[3] = v28;
  v27[2] = 0xAAAAAAAA00000000;
  v22 = &ecPublicKey;
  if (!result)
  {
    v22 = &rsaEncryption;
  }

  v23 = (result + 16);
  if (!result)
  {
    v23 = algn_1B9DDAF48;
  }

  v27[4] = v22;
  if (v21 + 1 <= v23 && v21 <= v21 + 1)
  {
    v27[5] = v21;
    v27[6] = 0;
    result = sub_1B9DB538C(v36, &v29, &v36[15], v27, 16);
    if (result)
    {
LABEL_12:
      v24 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (a7)
    {
      digest = find_digest(v30 + 8);
      if (!digest)
      {
        result = 327682;
        goto LABEL_12;
      }

      *a7 = *digest;
    }

    result = 0;
    if (a8 && a9)
    {
      if (a10)
      {
        result = 0;
        *a8 = DWORD2(v31);
        v26 = *(&v32 + 1);
        *a9 = v32;
        *a10 = v26;
      }
    }

    goto LABEL_12;
  }

  __break(0x5519u);
  return result;
}

uint64_t CTEvaluateProvisioningProfile(char *a1, uint64_t a2, char a3, void *a4, void *a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = -1431655766;
  v12 = &null_octet;
  v8 = 1;
  v7 = xmmword_1B9DDAE40;
  v9 = a3;
  v10 = 0;
  v13 = &null_octet;
  v14 = &null_octet;
  v15 = &null_octet;
  result = CMSVerifyAndReturnSignedData(a1, a2, a4, a5, &v7);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTAmfiInitializeContext(unint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5)
{
  v24 = *MEMORY[0x1E69E9840];
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  if (a1 + 104 < a1)
  {
    __break(0x5519u);
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 20) = a5;
  v22[0] = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v6;
  v16 = v6;
  v14[6] = v6;
  v14[7] = v6;
  v14[4] = v6;
  v14[5] = v6;
  v14[2] = v6;
  v14[3] = v6;
  v14[0] = v6;
  v14[1] = v6;
  v13 = v6;
  memset(v17, 0, sizeof(v17));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0;
  result = sub_1B9DB5844(v17, &v13, v22, __b, a1, CMSBuildPath);
  if (!result)
  {
    digest = find_digest(v14 + 8);
    if (digest)
    {
      *(a1 + 80) = *digest;
      if (*(&v18 + 1))
      {
        v10 = v19;
        if (v19)
        {
          *(a1 + 40) = *(&v18 + 1);
          *(a1 + 48) = v10;
        }
      }

      v11 = *(&v15 + 1);
      result = 0;
      if (*(&v15 + 1))
      {
        v12 = *(*(&v15 + 1) + 8);
        *(a1 + 24) = **(&v15 + 1);
        *(a1 + 32) = v12;
        *(a1 + 88) = *(v11 + 240);
      }
    }

    else
    {
      result = 327682;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB5844(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, __int128 *))
{
  *(result + 24) = 0;
  if (result + 24 > (result + 32))
  {
    goto LABEL_8;
  }

  v7 = result;
  *(result + 32) = result + 24;
  *result = 4;
  *(result + 8) = a4;
  *(result + 96) = *(a5 + 16);
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (a2 + 176 < a2 || (*(result + 56) = a2, *(result + 64) = 1, *(a2 + 168) = 327681, *a3 = 0, *(a3 + 8) = 0, a3 + 16 < a3))
  {
LABEL_8:
    __break(0x5519u);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = *(a5 + 16);
    *(a3 + 12) = *(a5 + 84);
    result = CMSParseContentInfoSignedData(*a5, *(a5 + 8), result);
    if (!result)
    {
      result = CMSParseSignerInfos(v7, a3, a6);
      if (!result)
      {
        return *(a2 + 168);
      }
    }
  }

  return result;
}

uint64_t CTAmfiVerifyCMS(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20[0] = 0xAAAAAAAAAAAAAAAALL;
  v20[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14 = v6;
  v15 = v6;
  v12 = v6;
  v13 = v6;
  v10[5] = v6;
  v11 = v6;
  v10[3] = v6;
  v10[4] = v6;
  v10[1] = v6;
  v10[2] = v6;
  v10[0] = v6;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v18 = a2;
  v19 = a3;
  result = sub_1B9DB5844(v16, v10, v20, __b, a1, validateSignerInfo);
  if (!result)
  {
    *(a1 + 56) = DWORD2(v11);
    v8 = *(&v12 + 1);
    *(a1 + 64) = v12;
    *(a1 + 72) = v8;
    *(a1 + 84) = v14;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTAmfiVerifyCertificateChain(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v2;
  v11[1] = v2;
  v10[7] = v2;
  v10[8] = v2;
  v10[5] = v2;
  v10[6] = v2;
  v10[3] = v2;
  v10[4] = v2;
  v10[1] = v2;
  v10[2] = v2;
  v10[0] = v2;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  result = sub_1B9DB5844(v12, v10, v14, __b, a1, sub_1B9DB5B68);
  if (!result)
  {
    v9 = 0;
    v6 = 0xAAAAAAAAAAAAAA01;
    v5 = xmmword_1B9DDAE30;
    BYTE1(v6) = *(a1 + 20);
    WORD1(v6) = 0;
    v7 = 0u;
    v8 = 0u;
    result = X509ChainCheckPathWithOptions(29, v11 + 1, &v5, &v9);
    if (result)
    {
      *(a1 + 96) = 0;
      result = X509ChainCheckPathWithOptions(29, v11 + 1, 0, 0);
    }

    else
    {
      *(a1 + 96) = v9;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB5B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 12) && *(a1 + 12) != *(a3 + 144))
  {
    return 327710;
  }

  else
  {
    return CMSBuildPath(a1, a2, a3);
  }
}

uint64_t CTAmfiContextGetLeaf(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 32);
  *a2 = *(a1 + 24);
  *a3 = v3;
  return 0;
}

uint64_t CTAmfiContextGetContent(uint64_t a1, void *a2, void *a3)
{
  v3 = *(a1 + 48);
  *a2 = *(a1 + 40);
  *a3 = v3;
  return 0;
}

uint64_t CTAmfiContextGetHashAgility(uint64_t a1, _DWORD *a2, void *a3, void *a4)
{
  *a2 = *(a1 + 56);
  v4 = *(a1 + 72);
  *a3 = *(a1 + 64);
  *a4 = v4;
  return 0;
}

uint64_t CTParseAmfiCMS(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, void *a6, void *a7, _DWORD *a8, void *a9)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v19[0] = a1;
  v19[1] = a2;
  LODWORD(v20) = a3;
  result = CTAmfiInitializeContext(v19, a1, a2, a3, 0);
  if (result)
  {
    goto LABEL_19;
  }

  if (!a7 || !a6 || (v15 = *(&v21 + 1)) == 0 || (v16 = v22) == 0)
  {
    if (!a6 || !a7)
    {
      goto LABEL_10;
    }

    v15 = 0;
    v16 = 0;
  }

  *a6 = v15;
  *a7 = v16;
LABEL_10:
  if (a5)
  {
    if (a4)
    {
      if (*(&v20 + 1))
      {
        v17 = v21;
        if (v21)
        {
          *a4 = *(&v20 + 1);
          *a5 = v17;
        }
      }
    }
  }

  if (a9)
  {
    *a9 = *(&v24 + 1);
  }

  if (a8)
  {
    *a8 = v24;
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTVerifyAmfiCMS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, void *a7, void *a8)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v14[0] = a1;
  v14[1] = a2;
  LODWORD(v15) = a5;
  result = CTAmfiVerifyCMS(v14, a3, a4);
  if (!result && a6 && a7 && a8)
  {
    *a6 = DWORD2(v17);
    v12 = *(&v18 + 1);
    *a7 = v18;
    *a8 = v12;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTVerifyAmfiCertificateChain(uint64_t a1, uint64_t a2, char a3, int a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v8[0] = a1;
  v8[1] = a2;
  LODWORD(v9) = a4;
  BYTE4(v9) = a3;
  result = CTAmfiVerifyCertificateChain(v8);
  if (a5 && !result)
  {
    *a5 = v14;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

int *find_digest(uint64_t a1)
{
  v2 = 0;
  while (1)
  {
    result = &dword_1F37DA428[v2 / 4 + 2];
    if (result > &dword_1F37DA428[v2 / 4 + 6])
    {
      __break(0x5519u);
      goto LABEL_9;
    }

    result = compare_octet_string_raw(result, *a1, *(a1 + 8));
    if (!result)
    {
      break;
    }

    v2 += 32;
    if (v2 == 160)
    {
      return 0;
    }
  }

  if (v2 <= ~dword_1F37DA428)
  {
    return &dword_1F37DA428[v2 / 4];
  }

LABEL_9:
  __break(0x5513u);
  return result;
}

int *find_digest_by_type(int *result)
{
  v1 = 0;
  while (dword_1F37DA428[v1 / 4] != result)
  {
    v1 += 32;
    if (v1 == 160)
    {
      return 0;
    }
  }

  if (v1 <= ~dword_1F37DA428)
  {
    return &dword_1F37DA428[v1 / 4];
  }

  __break(0x5513u);
  return result;
}

uint64_t find_digestOID_for_signingOID(uint64_t a1, void *a2)
{
  if (!compare_octet_string_raw(a1, &sha1WithRSA_oid, 9uLL) || !compare_octet_string_raw(a1, &sha1WithECDSA_oid, 7uLL))
  {
    v6 = &CTOidSha1;
    v4 = 5;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha256WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha256;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha256WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha256;
LABEL_18:
    v4 = 9;
    goto LABEL_11;
  }

  v4 = 9;
  if (!compare_octet_string_raw(a1, &sha384WithRSA_oid, 9uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_11;
  }

  if (!compare_octet_string_raw(a1, &sha384WithECDSA_oid, 8uLL))
  {
    v6 = &CTOidSha384;
    goto LABEL_18;
  }

  v4 = 9;
  if (compare_octet_string_raw(a1, &sha512WithRSA_oid, 9uLL))
  {
    if (compare_octet_string_raw(a1, &sha512WithECDSA_oid, 8uLL))
    {
      return 0;
    }

    v6 = &CTOidSha512;
    goto LABEL_18;
  }

  v6 = &CTOidSha512;
LABEL_11:
  *a2 = v6;
  a2[1] = v4;
  return 1;
}

unint64_t validateSignatureRSA(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = 0;
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  if (!result)
  {
    goto LABEL_24;
  }

  if (!a2)
  {
    goto LABEL_24;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_24;
  }

  if (a5 + 7 > a5 + 9)
  {
    goto LABEL_34;
  }

  v8 = result;
  result = compare_octet_string(&rsaEncryption, (a5 + 7));
  if (result)
  {
    result = sub_1B9DB62E0(&off_1E7ED7D90, (a5 + 3), (a5 + 7));
    if (!result)
    {
      goto LABEL_23;
    }
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v10 = a5[9];
  v9 = a5[10];
  if (__CFADD__(v10, v9))
  {
    goto LABEL_35;
  }

  if (v10 > v10 + v9)
  {
    goto LABEL_34;
  }

  v25 = a5[9];
  v26 = v10 + v9;
  if (v9)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (__CFADD__(v8, a2))
  {
    goto LABEL_35;
  }

  if (v8 + a2 < v8)
  {
    goto LABEL_34;
  }

  result = ccder_decode_rsa_pub_n();
  if (!result)
  {
LABEL_23:
    v5 = 0;
LABEL_24:
    v15 = *MEMORY[0x1E69E9840];
    return v5 & 1;
  }

  v11 = result;
  if (!(result >> 58))
  {
    v12 = result << 6;
    if (result << 6 >= 0x400)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      v30 = -21846;
      v28 = 6;
      if (&vars0 == 82)
      {
        goto LABEL_35;
      }

      v13 = a5[4];
      LOBYTE(v29) = v13;
      if (&v28 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_35;
      }

      if (v13 < 0xA)
      {
        v14 = a5[3];
        result = __memcpy_chk();
        if (result <= result + v13)
        {
          if (v12 > 0x1068)
          {
            goto LABEL_23;
          }

          result = MEMORY[0x1EEE9AC00](result);
          v18 = (&v24 - 4 * v17);
          v19 = 0;
          *&v20 = 0xAAAAAAAAAAAAAAAALL;
          *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
          do
          {
            v21 = &v18[v19 / 8];
            *v21 = v20;
            *(v21 + 1) = v20;
            v19 += 32;
          }

          while ((v16 & 0x7FFFFFFFFFFFFFE0) != v19);
          if (v18 + 4 <= &v24 && v18 <= v18 + 4)
          {
            *v18 = v11;
            if (ccrsa_import_pub())
            {
              v5 = 0;
            }

            else
            {
              v23 = a5[11];
              v22 = a5[12];
              if (ccrsa_verify_pkcs1v15_allowshortsigs())
              {
                v5 = 0;
                v27 = 0;
              }

              else
              {
                v5 = v27;
              }
            }

            goto LABEL_24;
          }
        }
      }

LABEL_34:
      __break(0x5519u);
LABEL_35:
      __break(0x5513u);
      goto LABEL_36;
    }

    goto LABEL_23;
  }

LABEL_36:
  __break(0x550Cu);
  return result;
}

uint64_t sub_1B9DB62E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 1;
  while (v5 < v5 + 16)
  {
    result = compare_octet_string(v5, a2);
    if (result)
    {
      goto LABEL_11;
    }

    if (v5 + 16 > v5 + 32)
    {
      break;
    }

    result = compare_octet_string(v5 + 16, a3);
    if (result)
    {
LABEL_11:
      v7 = v6 < 3;
      v5 += 32;
      if (++v6 != 4)
      {
        continue;
      }
    }

    return v7;
  }

  __break(0x5519u);
  return result;
}

_UNKNOWN **oidForPubKeyLength()
{
  v0 = ccec_x963_import_pub_size();
  is_supported = ccec_keysize_is_supported();
  v2 = &CTOidSECP256r1;
  v3 = &CTOidSECP521r1;
  v4 = &CTOidSECP384r1;
  if (v0 != 384)
  {
    v4 = 0;
  }

  if (v0 != 521)
  {
    v3 = v4;
  }

  if (v0 != 256)
  {
    v2 = v3;
  }

  if (is_supported)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t *validateSignatureEC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v21 = 0;
  if (!result)
  {
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_31;
  }

  v5 = 0;
  if (!a3 || !a4 || !a5)
  {
    goto LABEL_31;
  }

  v7 = a5 + 72;
  if (a5 + 56 > (a5 + 72))
  {
    goto LABEL_32;
  }

  result = compare_octet_string(&ecPublicKey, a5 + 56);
  if (result)
  {
    result = sub_1B9DB62E0(&off_1E7ED7E10, a5 + 24, a5 + 56);
    if (!result)
    {
      goto LABEL_27;
    }
  }

  if (v7 > a5 + 88)
  {
    goto LABEL_32;
  }

  result = sub_1B9DB6620((a5 + 72));
  if (!result)
  {
LABEL_27:
    v5 = 0;
LABEL_31:
    v19 = *MEMORY[0x1E69E9840];
    return (v5 & 1);
  }

  if (result >= result + 4)
  {
    goto LABEL_32;
  }

  v8 = *result;
  if (*result >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
    goto LABEL_33;
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_34;
  }

  result = MEMORY[0x1EEE9AC00](result);
  v14 = &v20[-16 * v13];
  v15 = 0;
  do
  {
    v16 = &v14[v15 / 8];
    *v16 = 0xAAAAAAAAAAAAAAAALL;
    v16[1] = 0xAAAAAAAAAAAAAAAALL;
    v15 += 16;
  }

  while ((v12 & 0xFFFFFFFFFFFFFFF0) != v15);
  if (v12 < 0x10)
  {
    goto LABEL_35;
  }

  *v14 = result;
  if (v14 + 2 > v20 || v14 > v14 + 2)
  {
LABEL_32:
    __break(0x5519u);
LABEL_33:
    __break(0x550Cu);
LABEL_34:
    __break(0x5500u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (MEMORY[0x1BFAE7690]())
  {
    goto LABEL_30;
  }

  result = ccec_x963_import_pub_size();
  if (result != 256 || *(a5 + 96) != 64)
  {
    v18 = *(a5 + 88);
    if (ccec_verify())
    {
LABEL_29:
      v21 = 0;
    }

LABEL_30:
    v5 = v21;
    goto LABEL_31;
  }

  if (*(a5 + 88) < 0xFFFFFFFFFFFFFFE0)
  {
    v17 = *(a5 + 88);
    if (!ccec_verify_composite())
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_36:
  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DB6620(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x1BFAE7650);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x1BFAE7660);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return MEMORY[0x1EEE6F3C8]();
}

uint64_t compressECPublicKey(void *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B9DB6620(a2);
  if (!v7)
  {
    result = 655366;
    goto LABEL_19;
  }

  v8 = v7;
  if (v7 >= v7 + 4)
  {
LABEL_20:
    __break(0x5519u);
LABEL_21:
    __break(0x550Cu);
    goto LABEL_22;
  }

  v9 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v9, 3uLL))
  {
    goto LABEL_21;
  }

  v10 = 24 * v9;
  v11 = __CFADD__(v10, 16);
  v12 = v10 + 16;
  if (v11 || v12 >= 0xFFFFFFFFFFFFFFF0)
  {
LABEL_22:
    __break(0x5500u);
  }

  result = MEMORY[0x1EEE9AC00](v7);
  v16 = &v20[-2 * v15];
  v17 = 0;
  do
  {
    v18 = &v16[v17 / 8];
    *v18 = 0xAAAAAAAAAAAAAAAALL;
    v18[1] = 0xAAAAAAAAAAAAAAAALL;
    v17 += 16;
  }

  while ((v14 & 0xFFFFFFFFFFFFFFF0) != v17);
  if (v14 >= 0x10)
  {
    *v16 = v8;
    if (v16 + 2 <= v20 && v16 <= v16 + 2)
    {
      result = MEMORY[0x1BFAE7690](v8, a1[1], *a1, v16);
      if (result)
      {
LABEL_19:
        v19 = *MEMORY[0x1E69E9840];
        return result;
      }

      if (ccec_compressed_x962_export_pub_size() != a4)
      {
        result = 393220;
        goto LABEL_19;
      }

      if (!a3 || a4)
      {
        result = ccec_compressed_x962_export_pub();
        goto LABEL_19;
      }
    }

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

uint64_t decompressECPublicKey(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1B9DB6620(a2);
  if (!v7)
  {
    v20 = 655366;
    goto LABEL_22;
  }

  if (v7 >= v7 + 4)
  {
LABEL_23:
    __break(0x5519u);
    goto LABEL_24;
  }

  v8 = *v7;
  if (*v7 >> 61 || !is_mul_ok(8 * v8, 3uLL))
  {
LABEL_25:
    __break(0x550Cu);
  }

  v9 = 24 * v8;
  v10 = __CFADD__(v9, 16);
  v11 = v9 + 16;
  if (v10 || v11 >= 0xFFFFFFFFFFFFFFF0)
  {
    goto LABEL_24;
  }

  result = MEMORY[0x1EEE9AC00](v7);
  v15 = &v24[-2 * v14];
  v16 = 0;
  do
  {
    v17 = &v15[v16 / 8];
    *v17 = 0xAAAAAAAAAAAAAAAALL;
    v17[1] = 0xAAAAAAAAAAAAAAAALL;
    v16 += 16;
  }

  while ((v13 & 0xFFFFFFFFFFFFFFF0) != v16);
  if (v13 >= 0x10)
  {
    *v15 = result;
    if (v15 + 2 <= v24 && v15 <= v15 + 2)
    {
      v19 = *a1;
      v18 = a1[1];
      v20 = ccec_compressed_x962_import_pub();
      if (!v20)
      {
        v21 = *v15;
        v22 = cczp_bitlen();
        if (v22 < 0xFFFFFFFFFFFFFFF9)
        {
          if (!a3 || a4)
          {
            if ((((v22 + 7) >> 2) | 1) == a4)
            {
              v20 = 0;
            }

            else
            {
              v20 = 393220;
            }

            ccec_export_pub();
            goto LABEL_22;
          }

          goto LABEL_23;
        }

LABEL_24:
        __break(0x5500u);
        goto LABEL_25;
      }

LABEL_22:
      v23 = *MEMORY[0x1E69E9840];
      return v20;
    }

    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t CMSParseContentInfoSignedDataWithOptions(char *a1, uint64_t a2, unint64_t *a3, char a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_110;
  }

  if (&a1[a2] < a1)
  {
    goto LABEL_108;
  }

  v4 = 65537;
  v28 = a1;
  v29 = &a1[a2];
  v27 = 0;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v7 = sub_1B9DB7098(&v28, 0x2000000000000010, &v27 + 1, &v26);
  result = 65537;
  if (v7)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v28, v26))
    {
      goto LABEL_110;
    }

    if (v28 > &v28[v26] || &v28[v26] > v29)
    {
      goto LABEL_108;
    }

    v24 = v28;
    v25 = &v28[v26];
    if (!ccder_blob_decode_tl())
    {
      result = 65538;
      goto LABEL_13;
    }

    if (v25 < v24 || v26 > v25 - v24)
    {
      goto LABEL_108;
    }

    if (compare_octet_string_raw(&off_1E7ED7E90, v24, v26))
    {
      result = 65539;
      goto LABEL_13;
    }

    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v24 += v26;
    if (!sub_1B9DB7098(&v24, 0xA000000000000000, &v27, &v26))
    {
      result = 65540;
      goto LABEL_13;
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v24, v26))
    {
      goto LABEL_110;
    }

    if (v24 > &v24[v26] || &v24[v26] > v25)
    {
      goto LABEL_108;
    }

    v22 = v24;
    v23 = &v24[v26];
    v31 = 0;
    memset(v30, 170, sizeof(v30));
    if ((sub_1B9DB7098(&v22, 0x2000000000000010, &v31 + 1, v30) & 1) == 0)
    {
      result = 131073;
      goto LABEL_13;
    }

    if (__CFADD__(v22, v30[0]))
    {
      goto LABEL_110;
    }

    v10 = 131080;
    if (&v22[v30[0]] != v23)
    {
      result = 131082;
      goto LABEL_13;
    }

    if (!ccder_blob_decode_uint64())
    {
      result = 131074;
      goto LABEL_13;
    }

    v11 = a3[11];
    result = 131092;
    if (v11 <= 4 && ((1 << v11) & 0x1A) != 0)
    {
      if (!sub_1B9DB8D50(&v22, 0x2000000000000011, 0, 125))
      {
        result = 131075;
        goto LABEL_13;
      }

      v35 = 0;
      v34 = 0;
      if ((sub_1B9DB7098(&v22, 0x2000000000000010, &v35, &v34) & 1) == 0)
      {
        v10 = 131076;
        goto LABEL_44;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (__CFADD__(v22, v34))
      {
        goto LABEL_110;
      }

      if (v22 > &v22[v34] || &v22[v34] > v23)
      {
        goto LABEL_108;
      }

      v32 = v22;
      v33 = &v22[v34];
      if (!ccder_blob_decode_tl())
      {
        v10 = 131077;
        goto LABEL_44;
      }

      if (v33 < v32 || v34 > v33 - v32)
      {
        goto LABEL_108;
      }

      if (compare_octet_string_raw(&off_1E7ED7EA0, v32, v34))
      {
        v10 = 131078;
LABEL_44:
        result = v10;
        goto LABEL_13;
      }

      if (__CFADD__(v32, v34))
      {
        goto LABEL_110;
      }

      v12 = &v32[v34];
      if (v32 > &v32[v34] || v12 > v33)
      {
        goto LABEL_108;
      }

      v32 += v34;
      v13 = v35;
      if (v12 != v33 || (v35 & 1) != 0)
      {
        v40 = 0;
        v38 = v33;
        v39 = 0;
        v37 = v12;
        if (sub_1B9DB7098(&v37, 0xA000000000000000, &v40, &v39))
        {
          if ((v13 & 1) == 0)
          {
            if (__CFADD__(v37, v39))
            {
              goto LABEL_110;
            }

            if (&v37[v39] != v33)
            {
              goto LABEL_44;
            }
          }

          if (v37 > v38)
          {
            goto LABEL_108;
          }

          v32 = v37;
          v33 = v38;
          v36 = 0;
          v16 = v40;
          if (v40 == 1 && !sub_1B9DB7098(&v32, 0x2000000000000004, &v36, &v39))
          {
            v10 = 131079;
            goto LABEL_44;
          }

          v41 = 0;
          if (!ccder_blob_decode_tl())
          {
            v10 = 131090;
            goto LABEL_44;
          }

          v17 = v32;
          v18 = v33;
          if (v33 < v32)
          {
            goto LABEL_108;
          }

          v19 = v41;
          if (v41 > v33 - v32)
          {
            goto LABEL_108;
          }

          a3[9] = v32;
          a3[10] = v19;
          if (__CFADD__(v17, v19))
          {
LABEL_110:
            __break(0x5513u);
            goto LABEL_111;
          }

          v20 = &v17[v19];
          if (v20 > v18 || v17 > v20)
          {
            goto LABEL_108;
          }

          v32 = v20;
          if ((sub_1B9DB7138(&v32, v36) & 1) == 0)
          {
            v10 = 131089;
            goto LABEL_44;
          }
        }

        else
        {
          if (!v13)
          {
            goto LABEL_44;
          }

          v16 = v40;
        }

        if ((sub_1B9DB7138(&v32, v16 & 1) & 1) == 0)
        {
          v10 = 131088;
          goto LABEL_44;
        }

        v12 = v32;
      }

      if (v12 > v23 || v22 > v12)
      {
        goto LABEL_108;
      }

      v22 = v12;
      if ((sub_1B9DB7138(&v22, v13) & 1) == 0)
      {
        v10 = 131081;
        goto LABEL_44;
      }

      v37 = 0xAAAAAAAAAAAAAAAALL;
      v38 = 0xAAAAAAAAAAAAAAAALL;
      if (v22 > v23)
      {
        goto LABEL_108;
      }

      v37 = v22;
      v38 = v23;
      if ((sub_1B9DB7098(&v37, 0xA000000000000000, &v31, v30) & 1) == 0)
      {
        v14 = v22;
        v15 = v23;
        goto LABEL_85;
      }

      v32 = 0xAAAAAAAAAAAAAAAALL;
      v33 = 0xAAAAAAAAAAAAAAAALL;
      if (!__CFADD__(v37, v30[0]))
      {
        if (v37 > &v37[v30[0]] || &v37[v30[0]] > v38)
        {
          goto LABEL_108;
        }

        v32 = v37;
        v33 = &v37[v30[0]];
        if (!sub_1B9DB8A80(&v32, a3[1], *a3, a3 + 3, a3 + 2))
        {
          result = 131085;
          goto LABEL_13;
        }

        if (!sub_1B9DB7138(&v32, v31))
        {
          result = 131086;
          goto LABEL_13;
        }

        v14 = v32;
        if (v32 >= v37 != v32 - v37 < 0)
        {
          if (v37 > v32)
          {
            goto LABEL_108;
          }

          v15 = v38;
          if (v32 > v38)
          {
            goto LABEL_108;
          }

          v22 = v32;
          v23 = v38;
LABEL_85:
          if (v14 <= v15)
          {
            v37 = v14;
            v38 = v15;
            if (sub_1B9DB8D50(&v37, 0xA000000000000001, 0, 125))
            {
              if (v37 > v38)
              {
                goto LABEL_108;
              }

              v22 = v37;
              v23 = v38;
            }

            if (!sub_1B9DB8D50(&v22, 0x2000000000000011, &v30[1], 125))
            {
              result = 131083;
              goto LABEL_13;
            }

            if (v30[2] >= v30[1])
            {
              v21 = &v22[-v30[1]];
              if (&v22[-v30[1]] <= v30[2] - v30[1])
              {
                a3[5] = v30[1];
                a3[6] = v21;
                if ((sub_1B9DB7138(&v22, HIBYTE(v31)) & 1) == 0)
                {
                  result = 131084;
                  goto LABEL_13;
                }

                if (!sub_1B9DB7138(&v22, v27))
                {
                  result = 65541;
                  goto LABEL_13;
                }

                if (v22 <= v25 && v24 <= v22)
                {
                  v24 = v22;
                  if (sub_1B9DB7138(&v24, HIBYTE(v27)))
                  {
                    if ((a4 & 1) == 0 && v24 != v29)
                    {
                      result = 65543;
                      goto LABEL_13;
                    }

LABEL_111:
                    result = 0;
                    goto LABEL_13;
                  }

LABEL_109:
                  result = (v4 + 5);
                  goto LABEL_13;
                }
              }
            }
          }

LABEL_108:
          __break(0x5519u);
          goto LABEL_109;
        }
      }

      goto LABEL_110;
    }
  }

LABEL_13:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB7098(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (v8 && a2 == 0xAAAAAAAAAAAAAAAALL)
  {
    result = sub_1B9DB88BC(a1, a3, a4);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB7138(unint64_t *a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_9;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v7 = *MEMORY[0x1E69E9840];
    return result;
  }

  v4 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    v5 = v4 - 0x5555555555555556;
    if (v4 <= v4 - 0x5555555555555556 && v5 <= a1[1])
    {
      *a1 = v5;
LABEL_9:
      result = 1;
      goto LABEL_10;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSParseSignerInfos(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __int128 *))
{
  v84 = *MEMORY[0x1E69E9840];
  v82 = 0xAAAAAAAAAAAAAAAALL;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (__CFADD__(v4, v3))
  {
    goto LABEL_94;
  }

  if (v4 > v4 + v3)
  {
LABEL_93:
    __break(0x5519u);
LABEL_94:
    __break(0x5513u);
LABEL_95:
    __break(0x5500u);
  }

  v82 = *(a1 + 40);
  v83 = v4 + v3;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  if (v4 >= v4 + v3)
  {
    v48 = 0;
    result = 0;
    if (!v3)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v8 = 0;
  v60 = 0;
  v9 = 196871;
  v10 = 256;
  while (1)
  {
    v69 = 0;
    v80 = 0u;
    v81 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    DWORD2(v81) = 327681;
    LOBYTE(v80) = v8 + 1;
    if ((sub_1B9DB7098(&v82, 0x2000000000000010, &v69, &v70) & 1) == 0)
    {
      result = (v9 - 6);
      goto LABEL_84;
    }

    v67 = 0xAAAAAAAAAAAAAAAALL;
    v68 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v82, v70))
    {
      goto LABEL_94;
    }

    if (v82 > v82 + v70 || v82 + v70 > v83)
    {
      goto LABEL_93;
    }

    v67 = v82;
    v68 = v82 + v70;
    if ((ccder_blob_decode_uint64() & 1) == 0)
    {
      result = (v9 - 5);
      goto LABEL_84;
    }

    v11 = v67;
    v12 = v68;
    v65 = 0xAAAAAAAAAAAAAAAALL;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v65 = v67;
    v66 = v68;
    v63 = v67;
    v64 = v68;
    if (ccder_blob_decode_tl())
    {
      v13 = v67;
    }

    else
    {
      if (ccder_blob_decode_tl())
      {
        v13 = v65;
        v14 = v66;
      }

      else
      {
        if (!ccder_blob_decode_tl())
        {
          v59 = 196611;
          goto LABEL_92;
        }

        v13 = v63;
        v14 = v64;
      }

      if (v13 > v14)
      {
        goto LABEL_93;
      }

      v67 = v13;
      v68 = v14;
    }

    if (__CFADD__(v70, v13 - v11))
    {
      goto LABEL_95;
    }

    if (v70 + v13 - v11 > v12 - v11)
    {
      goto LABEL_93;
    }

    *(&v71 + 1) = v11;
    *&v72 = v70 + v13 - v11;
    if (__CFADD__(v13, v70))
    {
      goto LABEL_94;
    }

    if (v13 > v13 + v70 || v13 + v70 > v68)
    {
      goto LABEL_93;
    }

    v67 = v13 + v70;
    if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v72 + 1))
    {
      v59 = 196612;
LABEL_92:
      result = (v59 + v10);
      goto LABEL_84;
    }

    v61 = 0xAAAAAAAAAAAAAAAALL;
    v62 = 0xAAAAAAAAAAAAAAAALL;
    if (v67 > v68)
    {
      goto LABEL_93;
    }

    v61 = v67;
    v62 = v68;
    if (ccder_blob_decode_tl())
    {
      if (v62 < v61 || v70 > v62 - v61)
      {
        goto LABEL_93;
      }

      *(&v73 + 1) = v61;
      *&v74 = v70;
      if (__CFADD__(v61, v70))
      {
        goto LABEL_94;
      }

      if (v61 + v70 > v62 || v61 > v61 + v70)
      {
        goto LABEL_93;
      }

      v67 = v61 + v70;
      v68 = v62;
    }

    else
    {
      *(&v73 + 1) = 0;
      *&v74 = 0;
    }

    if ((ccder_blob_decode_AlgorithmIdentifierNULL(&v67, &v74 + 1) & 1) == 0)
    {
      result = (v9 - 2);
      goto LABEL_84;
    }

    if ((ccder_blob_decode_tl() & 1) == 0)
    {
      result = (v9 - 1);
      goto LABEL_84;
    }

    if (v68 < v67 || v70 > v68 - v67)
    {
      goto LABEL_93;
    }

    *(&v76 + 1) = v67;
    *&v77 = v70;
    if (__CFADD__(v67, v70))
    {
      goto LABEL_94;
    }

    v15 = v67 + v70;
    if (v67 + v70 > v68 || v67 > v15)
    {
      goto LABEL_93;
    }

    v67 += v70;
    v61 = v15;
    v62 = v68;
    if (sub_1B9DB8D50(&v61, 0xA000000000000001, 0, 125))
    {
      if (v61 > v62)
      {
        goto LABEL_93;
      }

      v67 = v61;
      v68 = v62;
    }

    if (!sub_1B9DB7138(&v67, v69))
    {
      result = v9;
      goto LABEL_84;
    }

    digest = find_digest(&v72 + 8);
    if (!digest)
    {
      goto LABEL_73;
    }

    v17 = digest;
    v18 = *(a1 + 96);
    if (v18)
    {
      if (*digest > v18)
      {
        goto LABEL_73;
      }
    }

    result = a3(a2, a1, &v71);
    if (result == 327710)
    {
      goto LABEL_73;
    }

    if (result)
    {
      goto LABEL_84;
    }

    v20 = *(a1 + 64);
    if (v20 <= v60)
    {
      if (v20)
      {
        v32 = *(a1 + 56);
        v33 = 176 * v60 - 176;
        if (__CFADD__(v32, v33))
        {
          goto LABEL_94;
        }

        v34 = v32 + v33;
        if (v32 + v33 < v32 || v34 + 176 > v32 + 176 * v20 || v34 > v34 + 176 || v34 + 24 > v34 + 40)
        {
          goto LABEL_93;
        }

        v35 = find_digest(v34 + 24);
        if (v35)
        {
          if (*v17 > *v35)
          {
            v36 = *(a1 + 96);
            if (!v36 || *v17 <= v36)
            {
              v37 = *(a1 + 56);
              if (__CFADD__(v37, v33))
              {
                goto LABEL_94;
              }

              v38 = 176 * *(a1 + 64);
              if ((v38 - v33) < 0xB0)
              {
                goto LABEL_93;
              }

              v39 = (v37 + v33);
              if (v37 + v33 > v37 + v38)
              {
                goto LABEL_93;
              }

              if (v37 > v39)
              {
                goto LABEL_93;
              }

              v40 = v71;
              v41 = v73;
              v39[1] = v72;
              v39[2] = v41;
              *v39 = v40;
              v42 = v74;
              v43 = v75;
              v44 = v77;
              v39[5] = v76;
              v39[6] = v44;
              v39[3] = v42;
              v39[4] = v43;
              v45 = v78;
              v46 = v79;
              v47 = v81;
              v39[9] = v80;
              v39[10] = v47;
              v39[7] = v45;
              v39[8] = v46;
              if (v39 >= v39 + 11)
              {
                goto LABEL_93;
              }
            }
          }
        }
      }

      goto LABEL_73;
    }

    v21 = *(a1 + 96);
    if (!v21 || *v17 <= v21)
    {
      break;
    }

LABEL_73:
    if (v67 > v83 || v82 > v67)
    {
      goto LABEL_93;
    }

    v82 = v67;
    v48 = v8 + 1;
    if (v8 <= 6)
    {
      v10 += 256;
      v9 = (v9 + 256);
      ++v8;
      if (v67 < v83)
      {
        continue;
      }
    }

    if (v67 == v83)
    {
      if (v60)
      {
        goto LABEL_81;
      }

      if (!*(a1 + 64))
      {
        goto LABEL_81;
      }

      v49 = *(a1 + 56);
      v50 = v71;
      v51 = v73;
      v49[1] = v72;
      v49[2] = v51;
      *v49 = v50;
      v52 = v74;
      v53 = v75;
      v54 = v77;
      v49[5] = v76;
      v49[6] = v54;
      v49[3] = v52;
      v49[4] = v53;
      v55 = v78;
      v56 = v79;
      v57 = v81;
      v49[9] = v80;
      v49[10] = v57;
      v49[7] = v55;
      v49[8] = v56;
      if (v49 < v49 + 11)
      {
LABEL_81:
        result = 0;
LABEL_84:
        v58 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_93;
    }

LABEL_83:
    result = (v48 << 8) + 196616;
    goto LABEL_84;
  }

  v22 = *(a1 + 56);
  if (__CFADD__(v22, 176 * v60))
  {
    goto LABEL_94;
  }

  if (176 * (v20 - v60) < 0xB0)
  {
    goto LABEL_93;
  }

  v23 = (v22 + 176 * v60);
  v24 = v71;
  v25 = v73;
  v23[1] = v72;
  v23[2] = v25;
  *v23 = v24;
  v26 = v74;
  v27 = v75;
  v28 = v77;
  v23[5] = v76;
  v23[6] = v28;
  v23[3] = v26;
  v23[4] = v27;
  v29 = v78;
  v30 = v79;
  v31 = v81;
  v23[9] = v80;
  v23[10] = v31;
  v23[7] = v29;
  v23[8] = v30;
  if (v23 >= v23 + 11)
  {
    goto LABEL_93;
  }

  if (v60 != 0xFF)
  {
    ++v60;
    goto LABEL_73;
  }

  __break(0x5507u);
  return result;
}

uint64_t CMSBuildPath(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a3[1];
  v4 = a3[2];
  if (__CFADD__(v3, v4))
  {
LABEL_55:
    __break(0x5513u);
  }

  v5 = v3 + v4;
  if (v3 > v5)
  {
    goto LABEL_54;
  }

  v20 = a3[1];
  v21 = v5;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (*a3 == 3)
  {
    if (*(a2 + 88) == 1)
    {
      v8 = 524298;
      goto LABEL_53;
    }

    v18[2] = 0xAAAAAAAAAAAAAAAALL;
    v18[3] = 0xAAAAAAAAAAAAAAAALL;
    v18[0] = v3;
    v18[1] = v5;
    if (ccder_blob_decode_tl())
    {
      v11 = v20;
      v12 = v21;
    }

    else
    {
      if (!ccder_blob_decode_tl() || !ccder_blob_decode_tl())
      {
        v8 = 524294;
        goto LABEL_53;
      }

      v11 = v18[0];
      v12 = v18[1];
      if (v18[0] > v18[1])
      {
        goto LABEL_54;
      }

      v20 = v18[0];
      v21 = v18[1];
    }

    if (v12 < v11 || v19 > v12 - v11)
    {
      goto LABEL_54;
    }

    v18[2] = v11;
    v18[3] = v19;
    if (__CFADD__(v11, v19))
    {
      goto LABEL_55;
    }

    if (v11 + v19 > v12 || v11 > v11 + v19)
    {
      goto LABEL_54;
    }

    v20 = v11 + v19;
    CertificateUsingKeyIdentifier = X509ChainGetCertificateUsingKeyIdentifier((a2 + 24), &v18[2]);
    if (!CertificateUsingKeyIdentifier)
    {
      v8 = 524295;
      goto LABEL_53;
    }

LABEL_38:
    if (v20 != v21)
    {
      v8 = 524543;
      goto LABEL_53;
    }

    if (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && a2 + 24 <= (a2 + 40))
    {
      v13 = a3 + 19;
      v14 = a3 + 21;
      if (v13 <= v14)
      {
        v15 = X509ChainBuildPath(CertificateUsingKeyIdentifier, (a2 + 24), v13);
        v8 = v15;
        if (*v14 == 327681)
        {
          *v14 = v15;
        }

        goto LABEL_53;
      }
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

  if (*a3 == 1)
  {
    v8 = 524290;
    memset(v18, 170, sizeof(v18));
    if (ccder_blob_decode_tl())
    {
      if (ccder_blob_decode_tl())
      {
        if (v21 < v20 || v19 > v21 - v20)
        {
          goto LABEL_54;
        }

        v18[0] = v20;
        v18[1] = v19;
        if (__CFADD__(v20, v19))
        {
          goto LABEL_55;
        }

        if (v20 + v19 > v21 || v20 > v20 + v19)
        {
          goto LABEL_54;
        }

        v20 += v19;
        if (ccder_blob_decode_tl())
        {
          if (v21 < v20 || v19 > v21 - v20)
          {
            goto LABEL_54;
          }

          v18[2] = v20;
          v18[3] = v19;
          if (__CFADD__(v20, v19))
          {
            goto LABEL_55;
          }

          if (v20 + v19 > v21)
          {
            goto LABEL_54;
          }

          if (v20 > v20 + v19)
          {
            goto LABEL_54;
          }

          v20 += v19;
          v9 = (a2 + 24);
          if (a2 + 24 > (a2 + 40))
          {
            goto LABEL_54;
          }

          CertificateUsingKeyIdentifier = *v9;
          if (*v9)
          {
            while (CertificateUsingKeyIdentifier < CertificateUsingKeyIdentifier + 38 && CertificateUsingKeyIdentifier + 15 <= CertificateUsingKeyIdentifier + 17)
            {
              if (!compare_octet_string(v18, (CertificateUsingKeyIdentifier + 15)))
              {
                if (CertificateUsingKeyIdentifier + 17 > CertificateUsingKeyIdentifier + 19)
                {
                  goto LABEL_54;
                }

                if (!compare_octet_string(&v18[2], (CertificateUsingKeyIdentifier + 17)))
                {
                  goto LABEL_38;
                }
              }

              CertificateUsingKeyIdentifier = CertificateUsingKeyIdentifier[34];
              if (!CertificateUsingKeyIdentifier)
              {
                goto LABEL_26;
              }
            }

            goto LABEL_54;
          }

LABEL_26:
          v8 = 524293;
        }

        else
        {
          v8 = 524292;
        }
      }

      else
      {
        v8 = 524291;
      }
    }
  }

  else
  {
    v8 = 524289;
  }

LABEL_53:
  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t validateSignerInfo(unint64_t a1, void *a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = (a3 + 24);
  v4 = (a3 + 40);
  if (a3 + 24 > (a3 + 40))
  {
    goto LABEL_183;
  }

  digest = find_digest(a3 + 24);
  if (!digest)
  {
    result = 327682;
    goto LABEL_181;
  }

  v9 = (*(digest + 3))();
  v10 = v9;
  memset(v95, 0, sizeof(v95));
  v11 = a2[13];
  v12 = a2[14];
  if (!v11 || !v12)
  {
    if (a2[9] && a2[10])
    {
      v11 = v95;
      v13 = ccdigest();
      v12 = *v10;
      if (*v10 >= 0x41)
      {
        goto LABEL_183;
      }

      goto LABEL_14;
    }

    if (!v11)
    {
      goto LABEL_144;
    }
  }

  if (*v9 != v12)
  {
LABEL_144:
    *(a3 + 168) = 327710;
    result = 327710;
    goto LABEL_181;
  }

  if (v12 >= 0x41)
  {
    goto LABEL_183;
  }

  v15 = a2[13];
  v16 = a2[14];
  v13 = __memcpy_chk();
  if (v13 > v13 + v12)
  {
    goto LABEL_183;
  }

LABEL_14:
  v17 = a1 + 16;
  *(a3 + 128) = v11;
  *(a3 + 136) = v12;
  v18 = (a3 + 128);
  v19 = *(a3 + 48);
  if (!v19)
  {
    goto LABEL_157;
  }

  if (v17 < a1)
  {
    goto LABEL_183;
  }

  v80 = a1 + 16;
  v81 = v10;
  v89 = 0xAAAAAAAAAAAAAAAALL;
  v90 = 0xAAAAAAAAAAAAAAAALL;
  v20 = *v4;
  if (__CFADD__(*v4, v19))
  {
    goto LABEL_184;
  }

  v21 = &v20[v19];
  if (v20 > v21)
  {
    goto LABEL_183;
  }

  v89 = *v4;
  v90 = v21;
  v88 = 0xAAAAAAAAAAAAAAAALL;
  if (v20 >= v21)
  {
LABEL_145:
    result = 262156;
    goto LABEL_179;
  }

  v22 = 0;
  v23 = 0x96463F78648862ALL;
  v84 = 0x2000000000000010;
  v79 = 262146;
  v83 = 262147;
  v82 = 262148;
  do
  {
    if (!ccder_blob_decode_tl())
    {
      result = 262145;
      goto LABEL_179;
    }

    if (__CFADD__(v89, v88))
    {
      goto LABEL_184;
    }

    v24 = &v89[v88];
    v87 = 0xAAAAAAAAAAAAAAAALL;
    v86 = 0xAAAAAAAAAAAAAAAALL;
    if (v89 > &v89[v88] || v24 > v90)
    {
      goto LABEL_183;
    }

    v86 = v89;
    v87 = &v89[v88];
    if (!ccder_blob_decode_tl())
    {
      result = v79;
      goto LABEL_179;
    }

    v26 = v86;
    if (__CFADD__(v86, v88))
    {
      goto LABEL_184;
    }

    if (&v86[v88] > v87 || v86 > &v86[v88])
    {
      goto LABEL_183;
    }

    v86 += v88;
    if (v88 != 9)
    {
      goto LABEL_147;
    }

    if ((v87 - v26) < 9)
    {
      goto LABEL_183;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 3)
    {
      if (v22)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v37 = ccder_blob_decode_tl();
      result = v83;
      if (v37)
      {
        if (sub_1B9DB8E90(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 1u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 4)
    {
      if ((v22 & 2) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v40 = ccder_blob_decode_tl();
      result = v83;
      if (v40)
      {
        if (sub_1B9DB8F48(&v86, v38, v39, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 2u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 2)
    {
      if ((v22 & 0x10) != 0)
      {
        goto LABEL_149;
      }

      v93 = 0xAAAAAAAAAAAAAAAALL;
      v41 = ccder_blob_decode_tl();
      result = v83;
      if (v41)
      {
        v42 = v86;
        v43 = v87;
        if (v86 >= v87)
        {
LABEL_110:
          if (v42 == v43)
          {
            result = 0;
          }

          else
          {
            result = 262155;
          }
        }

        else
        {
          v78 = a1;
          while (1)
          {
            if (!ccder_blob_decode_tl())
            {
              result = 262157;
              goto LABEL_132;
            }

            v94[0] = 0xAAAAAAAAAAAAAAAALL;
            v94[1] = 0xAAAAAAAAAAAAAAAALL;
            if (__CFADD__(v86, v93))
            {
              goto LABEL_184;
            }

            if (v86 > &v86[v93] || &v86[v93] > v87)
            {
              goto LABEL_183;
            }

            v45 = v23;
            v94[0] = v86;
            v94[1] = &v86[v93];
            if ((ccder_blob_decode_tl() & 1) == 0)
            {
              result = 262151;
              goto LABEL_131;
            }

            v91 = 0xAAAAAAAAAAAAAAAALL;
            v92 = 0xAAAAAAAAAAAAAAAALL;
            if (v94[1] < v94[0] || v93 > v94[1] - v94[0])
            {
              goto LABEL_183;
            }

            v91 = v94[0];
            v92 = v93;
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            if (v94[0] + v93 > v94[1] || v94[0] > v94[0] + v93)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (!ccder_blob_decode_tl())
            {
              result = 262152;
              goto LABEL_131;
            }

            v46 = v94[0];
            if (__CFADD__(v94[0], v93))
            {
              goto LABEL_184;
            }

            v47 = v94[1];
            v48 = v94[0] + v93;
            if (v94[0] + v93 > v94[1] || v94[0] > v48)
            {
              goto LABEL_183;
            }

            v94[0] += v93;
            if (v48 != v94[1])
            {
              break;
            }

            v49 = find_digest(&v91);
            if (v49)
            {
              v50 = *v49;
              if (*v49 > *(a3 + 104))
              {
                v51 = *(v78 + 8);
                if (!v51 || v50 <= v51)
                {
                  *(a3 + 104) = v50;
                  v52 = v93;
                  if (v93 > v47 - v46)
                  {
                    goto LABEL_183;
                  }

                  *(a3 + 112) = v46;
                  *(a3 + 120) = v52;
                }
              }
            }

            v42 = v94[0];
            v43 = v87;
            if (v94[0] > v87 || v86 > v94[0])
            {
              goto LABEL_183;
            }

            v86 = v94[0];
            v23 = v45;
            if (v94[0] >= v87)
            {
              a1 = v78;
              goto LABEL_110;
            }
          }

          result = 262153;
LABEL_131:
          v23 = v45;
LABEL_132:
          a1 = v78;
        }
      }

      v22 |= 0x10u;
      goto LABEL_134;
    }

    if (*v26 == 0x9010DF78648862ALL && v26[8] == 5)
    {
      if ((v22 & 4) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v53 = ccder_blob_decode_tl();
      result = v83;
      if (v53)
      {
        if (sub_1B9DB906C(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 4u;
      goto LABEL_134;
    }

    if (*v26 == v23 && v26[8] == 1)
    {
      if ((v22 & 8) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v56 = ccder_blob_decode_tl();
      result = v83;
      if (v56)
      {
        if (sub_1B9DB913C(&v86, v54, v55, a3))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 8u;
LABEL_134:
      if (result)
      {
        goto LABEL_179;
      }

      goto LABEL_135;
    }

    if (*v26 != 0x9010DF78648862ALL || v26[8] != 52)
    {
      v33 = *v26;
      v34 = v26[8];
      if (v33 != 0x9010DF78648862ALL || v34 != 15)
      {
LABEL_147:
        result = 262150;
        goto LABEL_179;
      }

      if ((v22 & 0x40) != 0)
      {
        goto LABEL_149;
      }

      v94[0] = 0xAAAAAAAAAAAAAAAALL;
      v36 = ccder_blob_decode_tl();
      result = v83;
      if (v36)
      {
        if (sub_1B9DB91F4(&v86))
        {
          result = 0;
        }

        else
        {
          result = v82;
        }
      }

      v22 |= 0x40u;
      goto LABEL_134;
    }

    if ((v22 & 0x20) != 0)
    {
LABEL_149:
      result = 262149;
      goto LABEL_179;
    }

    v22 |= 0x20u;
LABEL_135:
    if (v24 > v90 || v89 > v24)
    {
      goto LABEL_183;
    }

    v89 = v24;
  }

  while (v24 < v90);
  if ((~v22 & 3) != 0)
  {
    goto LABEL_145;
  }

  v58 = ccder_sizeof_tag();
  v59 = *(a3 + 48);
  result = ccder_sizeof_len();
  v60 = __CFADD__(v58, result);
  v61 = v58 + result;
  v10 = v81;
  if (v60)
  {
    goto LABEL_185;
  }

  if (v61 > 0x14)
  {
    result = 327689;
    goto LABEL_179;
  }

  memset(v94, 170, 20);
  if (__CFADD__(v94, v61))
  {
LABEL_184:
    __break(0x5513u);
  }

  v91 = v94;
  v92 = v94 + v61;
  result = ccder_blob_encode_tl();
  if (!result)
  {
    result = 327688;
    goto LABEL_179;
  }

  v62 = v81[1];
  v60 = __CFADD__(v62, 8);
  v63 = v62 + 8;
  if (v60 || (v64 = v81[2], v60 = __CFADD__(v63, v64), v65 = v63 + v64, v60) || (v60 = __CFADD__(v65, 4), v66 = v65 + 4, v60) || v66 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_185:
    __break(0x5500u);
    return result;
  }

  MEMORY[0x1EEE9AC00](result);
  v68 = &v77 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v68, 170, ((v69 - 9) & 0xFFFFFFFFFFFFFFF8) + 8);
  ccdigest_init();
  ccdigest_update();
  v71 = *(a3 + 40);
  v70 = *(a3 + 48);
  ccdigest_update();
  v13 = (v10[7])(v10, v68, v95);
  v17 = v80;
LABEL_157:
  if (v17 <= a1)
  {
LABEL_183:
    __break(0x5519u);
    goto LABEL_184;
  }

  result = CMSBuildPath(v13, a2, a3);
  if (result <= 524294)
  {
    if (!result)
    {
      goto LABEL_169;
    }

    if (result != 524293)
    {
      goto LABEL_179;
    }

    goto LABEL_166;
  }

  switch(result)
  {
    case 0x80007:
LABEL_166:
      *(a3 + 168) = result;
      result = 0;
      goto LABEL_181;
    case 0x80009:
      v72 = 524297;
LABEL_168:
      *(a3 + 168) = v72;
      break;
    case 0x80008:
      if (*(a3 + 168) == 458753)
      {
        v72 = 524296;
        goto LABEL_168;
      }

      break;
    default:
      goto LABEL_179;
  }

LABEL_169:
  v73 = *v10;
  if (*v10 > 0x40)
  {
    goto LABEL_183;
  }

  v85[0] = v95;
  v85[1] = v73;
  v74 = *(a3 + 152);
  if (v74 >= v74 + 304)
  {
    goto LABEL_183;
  }

  result = X509CertificateCheckSignatureDigest(29, v74, v85, v3, (a3 + 88));
  if (!result || result == 655648 || result == 655632)
  {
    v75 = *(a3 + 168);
    if (!v75 || v75 == 458753 || v75 == 327681)
    {
      *(a3 + 168) = result;
    }

    result = 0;
  }

LABEL_179:
  if (*v18 == v95)
  {
    *v18 = 0;
    *(a3 + 136) = 0;
  }

LABEL_181:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t validateSignerInfoAndChain(uint64_t *a1, void *a2, uint64_t a3)
{
  result = validateSignerInfo(a1, a2, a3);
  v6 = result;
  if (result)
  {
    return v6;
  }

  v7 = (a3 + 152);
  v8 = (a3 + 168);
  if (v7 <= v8)
  {
    v9 = X509ChainCheckPath(29, v7, *a1);
    if (v9)
    {
      if (!*v8)
      {
        *v8 = v9;
      }
    }

    return v6;
  }

  __break(0x5519u);
  return result;
}

uint64_t CMSVerifySignedDataWithLeaf(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v10[1] = *MEMORY[0x1E69E9840];
  result = sub_1B9DB8610(a1, a2, a3, a4, a5, a6, a7, &v9, v10);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB8610(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31[0] = 0;
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  v26 = 0;
  v24 = 0u;
  v25 = &v24 + 8;
  v31[1] = 0;
  memset(__b, 170, sizeof(__b));
  v23[0] = 4;
  v23[1] = __b;
  v21 = 0u;
  v22 = 0u;
  memset(v20, 0, sizeof(v20));
  v28 = v20;
  *&v29[0] = 1;
  DWORD2(v22) = 327681;
  if (a2 < 0)
  {
    goto LABEL_20;
  }

  result = CMSParseContentInfoSignedDataWithOptions(a1, a2, v23, 0);
  if (result)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    result = 131091;
    if (*(v29 + 8) != 0)
    {
      goto LABEL_9;
    }

    if (a4 < 0)
    {
      goto LABEL_20;
    }

    *(&v29[0] + 1) = a3;
    *&v29[1] = a4;
  }

  v31[0] = a5;
  DWORD2(v22) = 458753;
  result = CMSParseSignerInfos(v23, v31, validateSignerInfoAndChain);
  if (result)
  {
    goto LABEL_9;
  }

  result = DWORD2(v22);
  if (DWORD2(v22))
  {
    goto LABEL_9;
  }

  if (a6 && a7)
  {
    if (*(&v21 + 1) < (*(&v21 + 1) + 304))
    {
      result = X509CertificateParseKey(*(&v21 + 1), a6, a7);
      goto LABEL_14;
    }

LABEL_20:
    __break(0x5519u);
  }

LABEL_14:
  if (!a4)
  {
    if (a8)
    {
      if (a9)
      {
        v19 = *&v29[1];
        if (*&v29[1])
        {
          if (*(&v29[0] + 1))
          {
            *a8 = *(&v29[0] + 1);
            *a9 = v19;
          }
        }
      }
    }
  }

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSVerifySignedData(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = 0;
  result = sub_1B9DB8610(a1, a2, a3, a4, a5, &v7, &v8, &v9, v10);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CMSVerifyAndReturnSignedData(char *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8[0] = 0;
  result = sub_1B9DB8610(a1, a2, 0, 0, a5, &v7, v8, a3, a4);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB88BC(uint64_t result, _BYTE *a2, unint64_t *a3)
{
  *a2 = 0;
  v3 = *result;
  if (!*result)
  {
    return 0;
  }

  v4 = *(result + 8);
  if (v3 >= v4)
  {
    return 0;
  }

  if (v3 == -1)
  {
    goto LABEL_48;
  }

  v5 = v3 + 1;
  if (v3 >= v3 + 1 || v5 > v4)
  {
    goto LABEL_47;
  }

  *result = v5;
  v7 = *v3;
  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = 0;
  v9 = *v3;
  if (v9 > 0x81)
  {
    if (v9 == 130)
    {
      if ((v4 - v5) < 2)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          v10 = v3 + 3;
          if (v5 <= v3 + 3 && v10 <= v4)
          {
            v11 = v3[1] << 8;
            v12 = v3[2];
            goto LABEL_45;
          }
        }
      }
    }

    else
    {
      if (v9 != 131)
      {
        return v8;
      }

      if ((v4 - v5) < 3)
      {
        return 0;
      }

      if (v5 < v4)
      {
        if (v3 == -2)
        {
          goto LABEL_48;
        }

        if (v3 + 2 >= v5 && (v3 + 2) < v4)
        {
          if (v5 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_48;
          }

          if (v3 + 3 >= v5 && (v3 + 3) < v4)
          {
            if (v5 > 0xFFFFFFFFFFFFFFFCLL)
            {
              goto LABEL_48;
            }

            v10 = v3 + 4;
            if (v5 <= v3 + 4 && v10 <= v4)
            {
              v11 = (v3[1] << 16) | (v3[2] << 8);
              v12 = v3[3];
LABEL_45:
              v7 = v11 | v12;
              *result = v10;
              goto LABEL_46;
            }
          }
        }
      }
    }

LABEL_47:
    __break(0x5519u);
    goto LABEL_48;
  }

  if (v9 == 128)
  {
    v7 = v4 - v5;
    *a2 = 1;
    goto LABEL_9;
  }

  if (v9 != 129)
  {
    return v8;
  }

  if ((v4 - v5) < 1)
  {
    return 0;
  }

  if (v3 != -2)
  {
    v10 = v3 + 2;
    if (v5 <= v3 + 2 && v10 <= v4)
    {
      *result = v10;
      v7 = *v5;
LABEL_46:
      v5 = v10;
LABEL_9:
      if (v4 - v5 >= v7)
      {
        *a3 = v7;
        return 1;
      }

      return 0;
    }

    goto LABEL_47;
  }

LABEL_48:
  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DB8A80(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v32[3] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  a4[1] = 0;
  if (a4 + 2 < a4 || (memset(v32, 170, 24), v6 = *a1, v7 = a1[1], *a1 > v7))
  {
LABEL_48:
    __break(0x5519u);
LABEL_49:
    __break(0x5513u);
  }

  v32[0] = *a1;
  v32[1] = v7;
  if (v6 < v7 && a3 != 0)
  {
    v11 = 0;
    v12 = 304 * a3;
    v13 = a2 + 304 * a3;
    v27 = ~a2;
    v14 = a4 + 1;
    v15 = a2 + 304;
    while (1)
    {
      v31 = 0;
      if (!ccder_blob_decode_tag())
      {
        goto LABEL_46;
      }

      if (!v32[2])
      {
        goto LABEL_9;
      }

      if (!sub_1B9DB88BC(v32, &v31, &v30) || (v31 & 1) != 0 || v32[2] != 0x2000000000000010)
      {
LABEL_46:
        result = 0;
        goto LABEL_47;
      }

      if ((v11 * 304) >> 64 != (304 * v11) >> 63 || 304 * v11 > v27)
      {
        goto LABEL_49;
      }

      v16 = (v15 - 304);
      if (v15 - 304 > v13)
      {
        goto LABEL_48;
      }

      if (v16 < a2)
      {
        goto LABEL_48;
      }

      v17 = v12 >= 0x130;
      v12 -= 304;
      if (!v17)
      {
        goto LABEL_48;
      }

      *(v15 - 32) = 0u;
      *(v15 - 16) = 0u;
      *(v15 - 64) = 0u;
      *(v15 - 48) = 0u;
      *(v15 - 96) = 0u;
      *(v15 - 80) = 0u;
      *(v15 - 128) = 0u;
      *(v15 - 112) = 0u;
      *(v15 - 160) = 0u;
      *(v15 - 144) = 0u;
      *(v15 - 192) = 0u;
      *(v15 - 176) = 0u;
      *(v15 - 224) = 0u;
      *(v15 - 208) = 0u;
      *(v15 - 256) = 0u;
      *(v15 - 240) = 0u;
      *(v15 - 288) = 0u;
      *(v15 - 272) = 0u;
      *v16 = 0u;
      if (v16 > v15)
      {
        goto LABEL_48;
      }

      if (v11)
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        *(v15 - 32) = 0;
        v18 = *v14;
        *(v15 - 24) = *v14;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *v18 = v16;
        *v14 = v15 - 32;
        if (v15 != 304)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v15 > v13)
        {
          goto LABEL_48;
        }

        v19 = *a4;
        *(v15 - 32) = *a4;
        v20 = v15 - 32;
        v21 = (v15 - 24);
        if (v19)
        {
          if (v20 > v21)
          {
            goto LABEL_48;
          }

          v22 = (v19 + 280);
        }

        else
        {
          v22 = v14;
          if (v20 > v21)
          {
            goto LABEL_48;
          }
        }

        *v22 = v20;
        if (v16 > v15)
        {
          goto LABEL_48;
        }

        *a4 = v16;
        if (v14 < a4)
        {
          goto LABEL_48;
        }

        *v21 = a4;
        if (v15 != 304)
        {
LABEL_37:
          if (v15 > v13 || v16 > v15)
          {
            goto LABEL_48;
          }
        }
      }

      if (X509CertificateParseImplicit(v15 - 304, v32, 0, 0))
      {
        goto LABEL_46;
      }

      v23 = v32[0];
      v24 = v32[0] - v6;
      if (v32[0] - v6 > v7 - v6)
      {
        goto LABEL_48;
      }

      if (v15 > v13)
      {
        goto LABEL_48;
      }

      *v16 = v6;
      *(v15 - 296) = v24;
      v7 = v32[1];
      if (v23 > v32[1])
      {
        goto LABEL_48;
      }

      *a1 = v23;
      a1[1] = v7;
      ++v11;
      if (v23 < v7)
      {
        v15 += 304;
        v6 = v23;
        if (v11 < a3)
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v11 = 0;
LABEL_9:
  if (a5)
  {
    *a5 = v11;
  }

  result = 1;
LABEL_47:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB8D50(unint64_t *a1, uint64_t a2, unint64_t *a3, int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v8 = ccder_blob_decode_tag();
  result = 0;
  if (!v8 || v15 != a2)
  {
    goto LABEL_17;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_1B9DB88BC(a1, &v16, &v14);
  if ((result & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v10 = a1[1];
    if (*a1 > v10)
    {
LABEL_18:
      __break(0x5519u);
      goto LABEL_19;
    }

    *a3 = *a1;
    a3[1] = v10;
  }

  if (v16 == 1)
  {
    if (a4 < 1)
    {
      goto LABEL_11;
    }

    result = sub_1B9DB8D50(a1, 0, 0, (a4 - 1));
    if (!result)
    {
LABEL_17:
      v13 = *MEMORY[0x1E69E9840];
      return result;
    }

    if ((sub_1B9DB7138(a1, 1) & 1) == 0)
    {
LABEL_11:
      result = 0;
      goto LABEL_17;
    }

LABEL_16:
    result = 1;
    goto LABEL_17;
  }

  v11 = *a1;
  if (!__CFADD__(*a1, v14))
  {
    v12 = v11 + v14;
    if (v11 <= v11 + v14 && v12 <= a1[1])
    {
      *a1 = v12;
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DB8E90(char **a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_7;
  }

  v3 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v3 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_7:
      v4 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (v3 <= v3 - 0x5555555555555556)
    {
      result = compare_octet_string_raw(&off_1E7ED7EA0, v3, 0xAAAAAAAAAAAAAAAALL) == 0;
      goto LABEL_7;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B9DB8F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_16;
  }

  if (*a1 >= 0x5555555555555556uLL)
  {
    __break(0x5513u);
  }

  else
  {
    if (*a1 - 0x5555555555555556 != *(a1 + 8))
    {
      result = 0;
LABEL_16:
      v10 = *MEMORY[0x1E69E9840];
      return result;
    }

    result = a4 + 24;
    if (a4 + 24 <= (a4 + 40))
    {
      result = find_digest(result);
      if (!result)
      {
        goto LABEL_16;
      }

      if (*(a4 + 136) != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      result = (*(result + 24))();
      if (*result != 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8);
      v8 = v7 >= *a1;
      v9 = v7 - *a1;
      if (v8 && *(a4 + 136) >= 0xAAAAAAAAAAAAAAAALL && v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        if (!memcmp(*(a4 + 128), *a1, 0xAAAAAAAAAAAAAAAALL))
        {
LABEL_15:
          result = 1;
          goto LABEL_16;
        }

LABEL_14:
        *(a4 + 168) = 458754;
        goto LABEL_15;
      }
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B9DB906C(unint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*a1 > a1[1])
  {
    goto LABEL_10;
  }

  v5 = *a1;
  v6 = a1[1];
  result = ccder_blob_decode_tl();
  if (result)
  {
    v3 = *a1;
    goto LABEL_7;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_9:
    v4 = *MEMORY[0x1E69E9840];
    return result;
  }

  v3 = v5;
  if (v5 > v6)
  {
LABEL_10:
    __break(0x5519u);
  }

  *a1 = v5;
  a1[1] = v6;
LABEL_7:
  if (v3 < 0x5555555555555556)
  {
    result = v3 - 0x5555555555555556 == a1[1];
    goto LABEL_9;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DB913C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    __break(0x5513u);
  }

  else
  {
    if (v7 - 0x5555555555555556 != a1[1])
    {
      result = 0;
LABEL_9:
      v8 = *MEMORY[0x1E69E9840];
      return result;
    }

    if (*(a4 + 104))
    {
LABEL_8:
      result = 1;
      goto LABEL_9;
    }

    if (v7 <= v7 - 0x5555555555555556)
    {
      *(a4 + 112) = v7;
      *(a4 + 120) = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_8;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B9DB91F4(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_4;
  }

  if (*a1 < 0x5555555555555556uLL)
  {
    result = *a1 - 0x5555555555555556 == a1[1];
LABEL_4:
    v3 = *MEMORY[0x1E69E9840];
    return result;
  }

  __break(0x5513u);
  return result;
}

uint64_t compare_octet_string(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return memcmp(*a1, *a2, v2);
  }

  if (v2 > v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_raw(uint64_t a1, const void *a2, size_t a3)
{
  v3 = *(a1 + 8);
  if (v3 == a3)
  {
    return memcmp(*a1, a2, a3);
  }

  if (v3 > a3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t compare_octet_string_partial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 <= *(a2 + 8))
  {
    return memcmp(*a2, *a1, v2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccder_blob_decode_AlgorithmIdentifierNULL(unint64_t *a1, unint64_t *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (*a1 > a1[1])
    {
      goto LABEL_20;
    }

    v6 = *a1;
    v7 = *a1;
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (a2)
      {
        if (v7 < v6)
        {
          goto LABEL_20;
        }

        *a2 = v6;
        a2[1] = 0;
      }

      if (v6 == v7)
      {
        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
LABEL_18:
          result = 1;
          goto LABEL_19;
        }

LABEL_20:
        __break(0x5519u);
      }

      if (v6 > v7)
      {
        goto LABEL_20;
      }

      result = ccder_blob_decode_tl();
      if (result)
      {
        if (v6 != v7)
        {
          result = 0;
          goto LABEL_19;
        }

        if (v6 <= a1[1] && *a1 <= v6)
        {
          *a1 = v6;
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }
  }

LABEL_19:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_Time(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*a1 > a1[1])
  {
    goto LABEL_7;
  }

  v4 = *a1;
  if ((ccder_blob_decode_tl() & 1) == 0)
  {
    if (*a1 <= a1[1])
    {
      v5 = *a1;
      ccder_blob_decode_tl();
      result = 0;
      goto LABEL_6;
    }

LABEL_7:
    __break(0x5519u);
  }

  result = 0;
LABEL_6:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_decode_GeneralName(unint64_t *a1, int *a2, unint64_t *a3)
{
  result = 0;
  v22 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    *a3 = 0;
    a3[1] = 0;
    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v11 = *a1;
    if (ccder_blob_decode_tl())
    {
      *a2 = 0;
LABEL_6:
      v7 = v11;
LABEL_16:
      if (v7 <= a1[1] && *a1 <= v7)
      {
        *a1 = v7;
        result = 1;
        goto LABEL_19;
      }

LABEL_42:
      __break(0x5519u);
    }

    if (*a1 > a1[1])
    {
      goto LABEL_42;
    }

    v12 = *a1;
    v17 = a1[1];
    if (ccder_blob_decode_tl())
    {
      v7 = v12;
      if (v17 < v12)
      {
        goto LABEL_42;
      }

      *a3 = v12;
      a3[1] = 0;
      v8 = 1;
    }

    else
    {
      if (*a1 > a1[1])
      {
        goto LABEL_42;
      }

      v13 = *a1;
      v18 = a1[1];
      if (!ccder_blob_decode_tl())
      {
        if (*a1 > a1[1])
        {
          goto LABEL_42;
        }

        v11 = *a1;
        if (ccder_blob_decode_tl())
        {
          v10 = 3;
        }

        else
        {
          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v14 = *a1;
          v19 = a1[1];
          if (ccder_blob_decode_tl())
          {
            v7 = v14;
            if (v19 < v14)
            {
              goto LABEL_42;
            }

            *a3 = v14;
            a3[1] = 0;
            v8 = 4;
            goto LABEL_15;
          }

          if (*a1 > a1[1])
          {
            goto LABEL_42;
          }

          v11 = *a1;
          if (ccder_blob_decode_tl())
          {
            v10 = 5;
          }

          else
          {
            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v15 = *a1;
            v20 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v15;
              if (v20 < v15)
              {
                goto LABEL_42;
              }

              *a3 = v15;
              a3[1] = 0;
              v8 = 6;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v16 = *a1;
            v21 = a1[1];
            if (ccder_blob_decode_tl())
            {
              v7 = v16;
              if (v21 < v16)
              {
                goto LABEL_42;
              }

              *a3 = v16;
              a3[1] = 0;
              v8 = 7;
              goto LABEL_15;
            }

            if (*a1 > a1[1])
            {
              goto LABEL_42;
            }

            v11 = *a1;
            result = ccder_blob_decode_tl();
            if (!result)
            {
              goto LABEL_19;
            }

            v10 = 8;
          }
        }

        *a2 = v10;
        goto LABEL_6;
      }

      v7 = v13;
      if (v18 < v13)
      {
        goto LABEL_42;
      }

      *a3 = v13;
      a3[1] = 0;
      v8 = 2;
    }

LABEL_15:
    *a2 = v8;
    goto LABEL_16;
  }

LABEL_19:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ccder_blob_check_null()
{
  v2 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTParseCertificateSet(unint64_t a1, unint64_t a2, _OWORD *a3, uint64_t a4, void *a5)
{
  v6 = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (a1 < a2 && a4)
  {
    v8 = 0;
    v9 = a4 - 1;
    v10 = a3;
    v11 = &a3[a4];
    while (1)
    {
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18[17] = v12;
      v18[18] = v12;
      v18[15] = v12;
      v18[16] = v12;
      v18[13] = v12;
      v18[14] = v12;
      v18[11] = v12;
      v18[12] = v12;
      v18[9] = v12;
      v18[10] = v12;
      v18[7] = v12;
      v18[8] = v12;
      v18[5] = v12;
      v18[6] = v12;
      v18[3] = v12;
      v18[4] = v12;
      v18[1] = v12;
      v18[2] = v12;
      v18[0] = v12;
      v16 = a1;
      v17 = a2;
      result = X509CertificateParse(v18, &v16);
      if (result)
      {
        break;
      }

      a1 = v16;
      a2 = v17;
      if (v16 > v17 || v10 < a3 || (v10 + 1) > v11 || v10 > v10 + 1)
      {
        __break(0x5519u);
      }

      *v10 = v18[0];
      v6 = v8 + 1;
      if (a1 < a2)
      {
        ++v10;
        if (v9 != v8++)
        {
          continue;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
LABEL_12:
    result = 0;
    if (a5)
    {
      *a5 = v6;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTParseExtensionValue(unint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, void *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_11;
  }

  v11[0] = a1;
  v11[1] = a1 + a2;
  result = X509CertificateParseWithExtension(v12, v11, a3, a4);
  if (!result)
  {
    result = 720914;
    if (*(&v13 + 1))
    {
      v10 = v14;
      if (v14)
      {
        result = 0;
        if (a5)
        {
          if (a6)
          {
            result = 0;
            *a5 = *(&v13 + 1);
            *a6 = v10;
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTParseKey(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_7:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_7;
  }

  v8[0] = a1;
  v8[1] = a1 + a2;
  result = X509CertificateParse(v9, v8);
  if (!result)
  {
    result = X509CertificateParseKey(v9, a3, a4);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DB9C40(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, void *a6, _BYTE *a7, uint64_t a8, const void *a9, size_t a10, BOOL *a11, uint64_t a12, uint64_t a13)
{
  __b[152] = *MEMORY[0x1E69E9840];
  memset(__b, 170, 0x4C0uLL);
  memset(v37, 170, sizeof(v37));
  v35 = 0xAAAAAAAAAAAAAAAALL;
  v36 = 0;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
    goto LABEL_42;
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_41;
  }

  v34 = a1;
  v35 = a1 + a2;
  CommonName = X509ChainParseCertificateSet(&v34, __b, 4, &v37[2], &v36);
  if (CommonName)
  {
LABEL_4:
    v22 = CommonName;
    goto LABEL_25;
  }

  v22 = 327690;
  if (v34 != v35)
  {
    goto LABEL_25;
  }

  if (v36 != 2)
  {
    v22 = 327692;
    goto LABEL_25;
  }

  X509ChainResetChain(v37, &v37[2]);
  __b[74] = v37[0];
  v23 = v37[0] ? (v37[0] + 296) : &v37[1];
  *v23 = &__b[74];
  if ((&__b[38] + 1) != 0 && __b >= 0xFFFFFFFFFFFFFECFLL)
  {
LABEL_42:
    __break(0x5513u);
  }

  v37[0] = &__b[38];
  __b[75] = v37;
  __b[36] = 0;
  __b[37] = v37[1];
  *v37[1] = __b;
  v37[1] = &__b[36];
  CommonName = X509ChainCheckPathWithOptions(12, v37, a12, 0);
  if (CommonName)
  {
    goto LABEL_4;
  }

  v24 = **(v37[1] + 8);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v32 = a3;
  v33 = a4;
  v25 = oidForPubKeyLength();
  if (v24 > v24 + 304)
  {
    goto LABEL_41;
  }

  if (v24 + 16 > v24 + 32)
  {
    goto LABEL_41;
  }

  v26 = (v24 + 56);
  if (v24 + 40 > v24 + 56 || v26 > v24 + 72)
  {
    goto LABEL_41;
  }

  CommonName = X509CertificateCheckSignatureWithPublicKey(&v32, &ecPublicKey, v25, (v24 + 16), (v24 + 40), v26);
  if (CommonName)
  {
    goto LABEL_4;
  }

  if (a9 && a10)
  {
    if ((a10 & 0x8000000000000000) != 0 || v24 + 248 > v24 + 264)
    {
      goto LABEL_41;
    }

    if (compare_octet_string_raw(v24 + 248, a9, a10))
    {
      v22 = 590085;
      goto LABEL_25;
    }
  }

  v29 = v37[0];
  if (v37[0] >= v37[0] + 304)
  {
LABEL_41:
    __break(0x5519u);
    goto LABEL_42;
  }

  v30 = X509CertificateParseKey(v37[0], a5, a6);
  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = 327691;
  }

  if (v29 && !v30)
  {
    if (a11)
    {
      *a11 = (*(v29 + 240) & a13) != 0;
    }

    if (!a7 || !a8)
    {
      goto LABEL_40;
    }

    v31[0] = 0;
    v31[1] = 0;
    if (v29 + 104 <= v29 + 120)
    {
      CommonName = X509CertificateSubjectNameGetCommonName((v29 + 104), v31);
      if (CommonName)
      {
        goto LABEL_4;
      }

      if ((a8 & 0x8000000000000000) == 0)
      {
        CommonName = sub_1B9DBAE7C(v31, a7, a8);
        if (CommonName)
        {
          goto LABEL_4;
        }

LABEL_40:
        v22 = 0;
        goto LABEL_25;
      }
    }

    goto LABEL_41;
  }

LABEL_25:
  v27 = *MEMORY[0x1E69E9840];
  return v22;
}

uint64_t CTEvaluateCertsForPolicy(unint64_t a1, uint64_t a2, char a3, int a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9, void *a10, __int128 *a11)
{
  v46 = *MEMORY[0x1E69E9840];
  memset(v42, 170, sizeof(v42));
  bzero(v43, 0x4C0uLL);
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_47:
    __break(0x5513u);
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  if (a1 + a2 < a1)
  {
    goto LABEL_46;
  }

  v39 = a1;
  v40 = a1 + a2;
  result = X509ChainParseCertificateSet(&v39, v43, 4, &v42[2], &v41);
  if (result)
  {
    goto LABEL_34;
  }

  if (v39 != v40)
  {
    result = 327690;
    goto LABEL_34;
  }

  if ((a4 & 1) == 0 && !v44)
  {
    X509ChainResetChain(v42, &v42[2]);
    v20 = v42[0];
    v21 = (v42[0] + 296);
    if (!v42[0])
    {
      v21 = &v42[1];
    }

    *v21 = v45;
    v42[0] = v43;
    v45[0] = v20;
    v45[1] = v42;
LABEL_23:
    v38[0] = a7;
    v38[1] = a8;
    if (a7)
    {
      v24 = a8 == 0;
    }

    else
    {
      v24 = 1;
    }

    *&v25 = 0xAAAAAAAAAAAAAAAALL;
    *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    v35 = v25;
    v36 = v25;
    v34 = *a11;
    LOBYTE(v35) = *(a11 + 16);
    if (v24)
    {
      v26 = a3;
    }

    else
    {
      v26 = 1;
    }

    BYTE1(v35) = v26;
    WORD1(v35) = *(a11 + 9);
    if (!v24)
    {
      v27 = *(a11 + 4);
      *(&v35 + 1) = v38;
      *&v36 = v27;
      v28 = oidForPubKeyLength();
LABEL_33:
      v30 = *(a11 + 6);
      *(&v36 + 1) = v28;
      v37 = v30;
      result = X509ChainCheckPathWithOptions(12, v42, &v34, 0);
      if (result)
      {
        goto LABEL_34;
      }

      v32 = v42[0];
      if (!a5 || !a6 || !v42[0])
      {
        goto LABEL_40;
      }

      if (v42[0] < v42[0] + 304)
      {
        result = X509CertificateParseKey(v42[0], a5, a6);
        if (result)
        {
          goto LABEL_34;
        }

LABEL_40:
        if (a10 && v32)
        {
          v33 = v32[32];
          *a10 = v32[31];
          a10[1] = v33;
        }

        result = 0;
        if (a9 && v32)
        {
          result = 0;
          *a9 = v32[30];
        }

        goto LABEL_34;
      }

      goto LABEL_46;
    }

    if (*(a11 + 3) < (*(a11 + 3) + 16))
    {
      v29 = *(a11 + 4);
      v28 = *(a11 + 5);
      *(&v35 + 1) = *(a11 + 3);
      *&v36 = v29;
      goto LABEL_33;
    }

LABEL_46:
    __break(0x5519u);
    goto LABEL_47;
  }

  if (v43[265] != 1)
  {
    v23 = &v46;
    v22 = v43;
    goto LABEL_20;
  }

  if (!v42[2])
  {
    v22 = 0;
    goto LABEL_22;
  }

  v22 = v42[2];
  do
  {
    if ((v22[265] & 1) == 0)
    {
      v23 = (v22 + 304);
      if (v22 < v22 + 304)
      {
        goto LABEL_20;
      }

      goto LABEL_46;
    }

    v22 = *(v22 + 34);
  }

  while (v22);
  v23 = (v42[2] + 304);
  v22 = v42[2];
LABEL_20:
  if (v22 + 304 > v23 || v22 > v22 + 304)
  {
    goto LABEL_46;
  }

LABEL_22:
  result = X509ChainBuildPathPartial(v22, &v42[2], v42, a4 ^ 1u);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_34:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluatePragueSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_1B9DDAF50;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateKDLSignatureCMS(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v13 = *MEMORY[0x1E69E9840];
  v10 = 0xAAAAAAAA0000AA01;
  v9 = xmmword_1B9DDAF60;
  BYTE1(v10) = a5;
  v11 = 0u;
  v12 = 0u;
  result = CMSVerifySignedDataWithLeaf(a1, a2, a3, a4, &v9, a6, a7);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTVerifyAppleMarkerExtension(void *a1, uint64_t a2)
{
  result = 327700;
  v4 = a1[31];
  v5 = a1[32];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 327707;
  }

  v7 = a1[30];
  if ((v7 & 0x100000000) == 0)
  {
    if ((v7 & 0x200000000) == 0)
    {
      return result;
    }

    if (!__CFADD__(v4, v5))
    {
      v11 = v4 + v5;
      if (v4 + v5 != -1)
      {
        if (v5 > 0x13)
        {
          return 327704;
        }

        v15 = (v11 - 1);
        if (v11 - 1 >= v4)
        {
          v16 = 0;
          v10 = 0;
          v17 = 0;
          while (v15 < v11)
          {
            v18 = *v15;
            if ((v18 - 58) < 0xFFFFFFF6)
            {
              return 327705;
            }

            v19 = (&powersOfTen + v16);
            if ((&powersOfTen + v16) < &powersOfTen || v19 + 1 > &CTOidCommonName || v19 > v19 + 1)
            {
              break;
            }

            if (v16 == 160 || (v17 & 0x1FFFFFFFFFFFFFFFLL) == 0x14)
            {
              goto LABEL_42;
            }

            v20 = v18 & 0xF;
            v21 = *v19;
            if (!is_mul_ok(v20, v21))
            {
              goto LABEL_43;
            }

            v22 = v20 * v21;
            v14 = __CFADD__(v10, v22);
            v10 += v22;
            if (v14)
            {
              goto LABEL_41;
            }

            ++v17;
            --v15;
            v16 += 8;
            if (v15 < v4)
            {
              goto LABEL_23;
            }
          }

LABEL_40:
          __break(0x5519u);
LABEL_41:
          __break(0x5500u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(0x550Cu);
          goto LABEL_44;
        }

        goto LABEL_13;
      }
    }

LABEL_44:
    __break(0x5513u);
    return result;
  }

  if (__CFADD__(v4, v5))
  {
    goto LABEL_44;
  }

  v8 = v4 + v5;
  if (v4 + v5 == -1)
  {
    goto LABEL_44;
  }

  v9 = (v8 - 1);
  if (v8 - 1 >= v4)
  {
    LOBYTE(v12) = 0;
    v10 = 0;
    while (v9 < v8)
    {
      v13 = (*v9 & 0x7F) << (7 * v12);
      v14 = __CFADD__(v10, v13);
      v10 += v13;
      if (v14)
      {
        goto LABEL_41;
      }

      if (--v9 >= v4)
      {
        v12 = (v12 + 1);
        if (v12 < 9)
        {
          continue;
        }
      }

      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_13:
  v10 = 0;
LABEL_23:
  if (v10 == a2)
  {
    return 0;
  }

  else
  {
    return 589829;
  }
}

uint64_t CTVerifyHostname(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 327702;
  if (*(a1 + 232) && *(a1 + 224))
  {
    v8[1] = a3;
    v9 = 0xAAAAAAAAAAAAAA00;
    v8[0] = a2;
    v4 = X509CertificateParseGeneralNamesContent(a1, sub_1B9DBA710, v8);
    if (v9)
    {
      v5 = 0;
    }

    else
    {
      v5 = 327706;
    }

    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B9DBA710(uint64_t result, uint64_t *a2, void *a3)
{
  if (result != 2)
  {
    return 1;
  }

  v3 = *a3;
  v4 = a3[1];
  v5 = ~*a3;
  if (v4 > v5)
  {
    goto LABEL_55;
  }

  v6 = &v3[v4];
  if (&v3[v4] == -1)
  {
    goto LABEL_55;
  }

  v7 = v6 - 1;
  if (v6)
  {
    v8 = v7 >= v3;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    goto LABEL_54;
  }

  if (a3 + 3 < a3)
  {
    goto LABEL_54;
  }

  v9 = a3 + 2;
  if (a3 + 2 < a3)
  {
    goto LABEL_54;
  }

  v11 = *v7;
  result = compare_octet_string(a2, a3);
  if (!result)
  {
    goto LABEL_53;
  }

  if (v11 != 46)
  {
    goto LABEL_16;
  }

  v12 = v4 - 1;
  if (v4)
  {
    if (v12 <= v4)
    {
      result = compare_octet_string_raw(a2, v3, v12);
      if (result)
      {
LABEL_16:
        v13 = a2[1];
        if (v13 < 3)
        {
          return 1;
        }

        v14 = *a2;
        if (**a2 != 42)
        {
          return 1;
        }

        if (v14 != -1)
        {
          if (v14[1] == 46)
          {
            v15 = -2;
            if (v14 < 0xFFFFFFFFFFFFFFFELL)
            {
              v15 = *a2;
            }

            v16 = -v15;
            v17 = 2;
            result = 1;
            while (v16 != v17)
            {
              if (v14[v17] == 46)
              {
                if (v13 == v17)
                {
                  return 1;
                }

                v18 = 0;
                if (v4)
                {
                  while (1)
                  {
                    v19 = &v3[v18];
                    if (&v3[v18] >= v6 || v19 < v3)
                    {
                      goto LABEL_54;
                    }

                    if (*v19 == 46)
                    {
                      break;
                    }

                    if (v4 == ++v18)
                    {
                      v18 = v4;
                      break;
                    }
                  }
                }

                v21 = v13 - 1;
                v8 = v4 >= v18;
                v22 = v4 - v18;
                if (!v8)
                {
                  goto LABEL_56;
                }

                if (v21 == v22)
                {
                  if (v18 > v5)
                  {
                    goto LABEL_55;
                  }

                  v23 = &v3[v18];
                  if (&v3[v18] > v6 || v3 > v23)
                  {
                    goto LABEL_54;
                  }

                  result = memcmp(v14 + 1, v23, v13 - 1);
                  if (!result)
                  {
                    goto LABEL_53;
                  }
                }

                if (v11 != 46)
                {
                  return 1;
                }

                if (!v22)
                {
                  goto LABEL_56;
                }

                if (v21 != v22 - 1)
                {
                  return 1;
                }

                if (v18 > v5)
                {
                  goto LABEL_55;
                }

                v24 = &v3[v18];
                if (&v3[v18] > v6 || v3 > v24 || v21 > v22)
                {
                  goto LABEL_54;
                }

                if (!memcmp(v14 + 1, v24, v21))
                {
                  goto LABEL_53;
                }

                return 1;
              }

              if (v13 == ++v17)
              {
                return result;
              }
            }

            goto LABEL_55;
          }

          return 1;
        }

LABEL_55:
        __break(0x5513u);
        goto LABEL_56;
      }

LABEL_53:
      result = 0;
      *v9 = 1;
      return result;
    }

LABEL_54:
    __break(0x5519u);
    goto LABEL_55;
  }

LABEL_56:
  __break(0x5515u);
  return result;
}

uint64_t CTEvaluateAppleSSLWithOptionalTemporalCheck(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  v26 = *MEMORY[0x1E69E9840];
  v21 = 0xAAAAAAAA00AAAA01;
  v22 = &null_octet;
  v20 = xmmword_1B9DDAF70;
  BYTE1(v21) = a6;
  BYTE2(v21) = a7;
  v23 = &null_octet;
  v24 = &null_octet;
  v25 = &CTOctetServerAuthEKU;
  v18 = 0;
  v19 = 0;
  result = CTEvaluateCertsForPolicy(a1, a2, a6, 1, &v18, &v19, 0, 0, 0, 0, &v20);
  if (result)
  {
LABEL_6:
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[17] = v13;
  v17[18] = v13;
  v17[15] = v13;
  v17[16] = v13;
  v17[13] = v13;
  v17[14] = v13;
  v17[11] = v13;
  v17[12] = v13;
  v17[9] = v13;
  v17[10] = v13;
  v17[7] = v13;
  v17[8] = v13;
  v17[6] = v13;
  v17[4] = v13;
  v17[5] = v13;
  v17[2] = v13;
  v17[3] = v13;
  v17[0] = v13;
  v17[1] = v13;
  memset(v16, 170, sizeof(v16));
  if (!__CFADD__(a1, a2))
  {
    v15[0] = a1;
    v15[1] = a1 + a2;
    result = X509ChainParseCertificateSet(v15, v17, 1, &v16[1], v16);
    if (!result)
    {
      result = CTVerifyAppleMarkerExtension(v17, a5);
      if (!result)
      {
        result = CTVerifyHostname(v17, a3, a4);
      }
    }

    goto LABEL_6;
  }

  __break(0x5513u);
  return result;
}

uint64_t CTGetSEKType(unint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  if (__CFADD__(a1, a2))
  {
    __break(0x5513u);
LABEL_10:
    __break(0x5519u);
  }

  if (a1 + a2 < a1)
  {
    goto LABEL_10;
  }

  v4[0] = a1;
  v4[1] = a1 + a2;
  if (X509CertificateParse(v5, v4))
  {
    result = 0;
  }

  else if (compare_octet_string(&v5[10] + 8, &SEKTestRootSKID))
  {
    result = compare_octet_string(&v5[10] + 8, &SEKProdRootSKID) == 0;
  }

  else
  {
    result = 2;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateSEK(char a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = 327712;
  if ((a1 & 3) != 0)
  {
    if ((a1 & 1) == 0 || (result = CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, 0, 0, 0, 0, xmmword_1E7ED8050), result))
    {
      if ((a1 & 2) != 0)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, &unk_1B9DD658D, 97, 0, 0, xmmword_1E7ED8050);
      }
    }
  }

  return result;
}

uint64_t CTGetICDPFederationType(unint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(a1, a2))
  {
LABEL_20:
    __break(0x5513u);
  }

  if (a1 + a2 < a1)
  {
LABEL_19:
    __break(0x5519u);
    goto LABEL_20;
  }

  v9 = a1;
  v10 = a1 + a2;
  if (X509CertificateParse(v11, &v9) || (v4 = numICDPRoots, !numICDPRoots))
  {
LABEL_4:
    result = 0;
  }

  else
  {
    v5 = icdpFederationAnchors;
    while (1)
    {
      v6 = v5 + 3;
      if (v5 < icdpFederationAnchors || v6 > off_1E7ED8258 || v5 >= v6)
      {
        goto LABEL_19;
      }

      if (!compare_octet_string(&v11[10] + 8, *v5))
      {
        break;
      }

      v5 += 3;
      if (!--v4)
      {
        goto LABEL_4;
      }
    }

    result = v5[2];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CTEvaluateICDPFederation(uint64_t result, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if ((result & 0x7F) == 0)
  {
    return 327712;
  }

  v5 = numICDPRoots;
  if (!numICDPRoots)
  {
    return 327712;
  }

  v6 = 0;
  v7 = 0;
  v8 = off_1E7ED81C8;
  while (1)
  {
    v9 = v8 - 3 < icdpFederationAnchors || v8 > off_1E7ED8258;
    if (v9 || v8 - 3 >= v8)
    {
      break;
    }

    if (*(v8 - 1) == result)
    {
      v6 = *(v8 - 2);
      v7 = (v6 + 2);
    }

    v8 += 3;
    if (!--v5)
    {
      if (!v6)
      {
        return 327712;
      }

      if ((v6 + 2) <= v7)
      {
        return CTEvaluateCertsForPolicy(a2, a3, 0, 0, a4, a5, *v6, v6[1], 0, 0, xmmword_1E7ED8088);
      }

      break;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t sub_1B9DBAE7C(uint64_t result, _BYTE *a2, uint64_t a3)
{
  v5 = *result;
  v4 = *(result + 8);
  if (__CFADD__(*result, v4))
  {
    goto LABEL_31;
  }

  v6 = v5 + v4;
  v7 = *result;
  if (v5 < v6)
  {
    while (v7 >= v5)
    {
      v3 = *v7;
      if (v3 != 45 && ++v7 < v6)
      {
        continue;
      }

      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_6:
  if (v7 == -1)
  {
    goto LABEL_31;
  }

  v8 = v7 + 1;
  v3 = 327693;
  result = 327693;
  if ((v7 + 1) >= v6)
  {
    return result;
  }

  if (a3 < 0 || v5 > v8)
  {
LABEL_34:
    __break(0x5519u);
    return result;
  }

  if (__CFADD__(v8, v6 - v8))
  {
    goto LABEL_31;
  }

  if (v6 - v8 != 2 * a3)
  {
    return (v3 + 1);
  }

  if (__CFADD__(a2, a3) || v7 == -2)
  {
LABEL_31:
    __break(0x5513u);
    return (v3 + 1);
  }

  v9 = v7 + 2;
  v10 = a2;
  while (1)
  {
    result = 0;
    if (v9 >= v6 || v10 >= &a2[a3])
    {
      return result;
    }

    v11 = v9 - 1;
    if ((v9 - 1) >= v6 || v11 < v8)
    {
      goto LABEL_34;
    }

    v12 = &asciiNibbleToByte[*v11];
    result = &CTOidAppleImg4Manifest;
    if (v12 >= &CTOidAppleImg4Manifest || v12 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    if (v11 < v7)
    {
      goto LABEL_34;
    }

    v14 = &asciiNibbleToByte[*v9];
    result = &CTOidAppleImg4Manifest;
    if (v14 >= &CTOidAppleImg4Manifest || v14 < asciiNibbleToByte)
    {
      goto LABEL_34;
    }

    v15 = *v12;
    result = 327695;
    if (v15 > 0xF)
    {
      return result;
    }

    v16 = *v14;
    if (v16 > 0xF)
    {
      return result;
    }

    if (v10 < a2)
    {
      goto LABEL_34;
    }

    *v10++ = v16 | (16 * v15);
    v9 += 2;
    if (!v9)
    {
      goto LABEL_31;
    }
  }
}

uint64_t X509CertificateParseImplicit(unint64_t a1, unint64_t *a2, const void *a3, size_t a4)
{
  v72 = *MEMORY[0x1E69E9840];
  v69 = 0;
  v70 = 0;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 > v5)
  {
    goto LABEL_189;
  }

  v67 = *a2;
  v68 = v5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  if (a1 + 304 < a1)
  {
    goto LABEL_189;
  }

  v10 = 720915;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_56;
  }

  v12 = v70;
  v13 = v67;
  v14 = v70 + v67 - v4;
  if (__CFADD__(v70, v67 - v4))
  {
    goto LABEL_191;
  }

  if (v14 > v5 - v4)
  {
    goto LABEL_189;
  }

  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v13, v12))
  {
    goto LABEL_190;
  }

  v15 = v13 + v12;
  if (v13 > v15 || v15 > v68)
  {
    goto LABEL_189;
  }

  v65 = v13;
  v66 = v15;
  v63 = v13;
  v64 = v15;
  result = ccder_blob_decode_tl();
  if (result)
  {
    if (__CFADD__(v63, v69))
    {
      goto LABEL_190;
    }

    if (!ccder_blob_decode_uint64() || v63 != v63 + v69)
    {
      v10 = 720916;
      goto LABEL_56;
    }

    if (v63 + v69 > v64)
    {
      goto LABEL_189;
    }

    v65 = v63;
    v66 = v64;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720917;
    goto LABEL_56;
  }

  v16 = v65;
  v17 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v18 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 136) = v65;
  *(a1 + 144) = v18;
  if (__CFADD__(v16, v18))
  {
    goto LABEL_190;
  }

  v19 = v16 + v18;
  if (v19 > v17)
  {
    goto LABEL_189;
  }

  if (v16 > v19)
  {
    goto LABEL_189;
  }

  v65 = v19;
  if (a1 + 152 > a1 + 168)
  {
    goto LABEL_189;
  }

  if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v65, (a1 + 152)))
  {
    v10 = 720918;
    goto LABEL_56;
  }

  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720919;
    goto LABEL_56;
  }

  v20 = v65;
  v21 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v22 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 120) = v65;
  *(a1 + 128) = v22;
  if (__CFADD__(v20, v22))
  {
    goto LABEL_190;
  }

  v23 = v20 + v22;
  if (v23 > v21 || v20 > v23)
  {
    goto LABEL_189;
  }

  v65 = v23;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720920;
    goto LABEL_56;
  }

  v24 = v65;
  v25 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v26 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 72) = v65;
  *(a1 + 80) = v26;
  if (__CFADD__(v24, v26))
  {
    goto LABEL_190;
  }

  v27 = v24 + v26;
  if (v27 > v25 || v24 > v27)
  {
    goto LABEL_189;
  }

  v65 = v27;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720921;
    goto LABEL_56;
  }

  v28 = v65;
  v29 = v66;
  if (v66 < v65)
  {
    goto LABEL_189;
  }

  v30 = v69;
  if (v69 > v66 - v65)
  {
    goto LABEL_189;
  }

  *(a1 + 104) = v65;
  *(a1 + 112) = v30;
  if (__CFADD__(v28, v30))
  {
    goto LABEL_190;
  }

  v31 = v28 + v30;
  if (v28 + v30 > v29 || v28 > v31)
  {
    goto LABEL_189;
  }

  v65 = v28 + v30;
  result = ccder_blob_decode_tl();
  if (!result)
  {
    v10 = 720922;
    goto LABEL_56;
  }

  v32 = v65;
  v33 = v69;
  v34 = v65 - v31 + v69;
  if (__CFADD__(v65 - v31, v69))
  {
    goto LABEL_191;
  }

  if (v34 > v29 - v31)
  {
    goto LABEL_189;
  }

  *(a1 + 88) = v31;
  *(a1 + 96) = v34;
  if (__CFADD__(v32, v33))
  {
LABEL_190:
    __break(0x5513u);
    goto LABEL_191;
  }

  v35 = v32 + v33;
  if (v32 > v35 || v35 > v66)
  {
    goto LABEL_189;
  }

  v64 = v66;
  v65 = v35;
  v63 = v35;
  if (ccder_blob_decode_tl())
  {
    v10 = 720923;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  if (ccder_blob_decode_tl())
  {
    v10 = 720924;
    goto LABEL_56;
  }

  if (v65 > v66)
  {
    goto LABEL_189;
  }

  v63 = v65;
  v64 = v66;
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_167:
    if (*(a1 + 32) < 3uLL)
    {
      if (v65 != v66)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v66 > a2[1] || *a2 > v66)
      {
        goto LABEL_189;
      }

      *a2 = v66;
    }

    if (!__CFADD__(v67, v70))
    {
      if (v67 > v67 + v70 || v67 + v70 > v68)
      {
        goto LABEL_189;
      }

      v67 += v70;
      if (!ccder_blob_decode_AlgorithmIdentifierNULL(&v67, (a1 + 40)))
      {
        v10 = 720937;
        goto LABEL_56;
      }

      *&v71[0] = 0xAAAAAAAAAAAAAAAALL;
      *(&v71[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v61 = 0;
      result = ccder_blob_decode_bitstring();
      if (!result)
      {
        v10 = 720938;
        goto LABEL_56;
      }

      if (v61 < 0xFFFFFFFFFFFFFFF9)
      {
        if (*(&v71[0] + 1) >= *&v71[0])
        {
          v52 = (v61 + 7) >> 3;
          if (v52 <= *(&v71[0] + 1) - *&v71[0])
          {
            *(a1 + 56) = *&v71[0];
            *(a1 + 64) = v52;
            v53 = v68;
            if (v67 <= v68)
            {
              v10 = 0;
              *a2 = v67;
              a2[1] = v53;
              goto LABEL_56;
            }
          }
        }

        goto LABEL_189;
      }

LABEL_191:
      __break(0x5500u);
LABEL_192:
      __break(0x5507u);
      return result;
    }

    goto LABEL_190;
  }

  v61 = 0xAAAAAAAAAAAAAAAALL;
  v62 = 0xAAAAAAAAAAAAAAAALL;
  if (__CFADD__(v63, v69))
  {
    goto LABEL_190;
  }

  if (v63 > v63 + v69 || v63 + v69 > v64)
  {
    goto LABEL_189;
  }

  v61 = v63;
  v62 = v63 + v69;
  result = ccder_blob_decode_tl();
  if (!result || !v69)
  {
    goto LABEL_163;
  }

  v37 = v61;
  if (__CFADD__(v61, v69))
  {
    goto LABEL_190;
  }

  v38 = v61 + v69;
  if (v61 > v61 + v69 || v38 > v62)
  {
    goto LABEL_189;
  }

  v62 = v61 + v69;
  *(a1 + 266) = 0;
  memset(&v71[2], 0, 128);
  if (a3)
  {
    v39 = a4 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = !v39;
  memset(v71, 0, 32);
  if (v37 >= v38)
  {
LABEL_162:
    if (v37 != v38)
    {
LABEL_163:
      v10 = 720925;
      goto LABEL_56;
    }

    if (v37 > v66 || v65 > v37)
    {
LABEL_189:
      __break(0x5519u);
    }

    v65 = v38;
    goto LABEL_167;
  }

  v54 = 0;
  v41 = 0;
  while (1)
  {
    v59 = 0xAAAAAAAAAAAAAAAALL;
    v60 = 0xAAAAAAAAAAAAAAAALL;
    v58 = 0;
    v57 = 0;
    result = ccder_blob_decode_tl();
    if ((result & 1) == 0)
    {
LABEL_184:
      v10 = 720926;
      goto LABEL_56;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    if (v61 > v61 + v57 || v61 + v57 > v62)
    {
      goto LABEL_189;
    }

    v55 = v61;
    v56 = v61 + v57;
    result = ccder_blob_decode_tl();
    if (!result)
    {
      v10 = 720927;
      goto LABEL_56;
    }

    if (v56 < v55 || v69 > v56 - v55)
    {
      goto LABEL_189;
    }

    v59 = v55;
    v60 = v69;
    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v55 + v69 > v56 || v55 > v55 + v69)
    {
      goto LABEL_189;
    }

    v55 += v69;
    if (!sub_1B9DBB974(&v55, 1, &v58))
    {
      break;
    }

    result = ccder_blob_decode_tl();
    if (!result)
    {
      goto LABEL_185;
    }

    if (__CFADD__(v55, v69))
    {
      goto LABEL_190;
    }

    if (v56 != v55 + v69)
    {
LABEL_185:
      v10 = 720929;
      goto LABEL_56;
    }

    if (v40)
    {
      result = compare_octet_string_raw(&v59, a3, a4);
      if (!result)
      {
        if (v56 < v55)
        {
          goto LABEL_189;
        }

        v43 = v69;
        if (v69 > v56 - v55)
        {
          goto LABEL_189;
        }

        *(a1 + 248) = v55;
        *(a1 + 256) = v43;
      }
    }

    if (v60 == 3)
    {
      if (*v59 == 7509 && *(v59 + 2) == 15)
      {
        v50 = 720930;
        if (v41)
        {
          goto LABEL_187;
        }

        result = sub_1B9DBBA8C(&v55);
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 1u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 19)
      {
        v50 = 720931;
        if ((v41 & 2) != 0)
        {
          goto LABEL_187;
        }

        result = sub_1B9DBBB5C(&v55, (a1 + 200), (a1 + 265));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 2u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 35)
      {
        v50 = 720932;
        if ((v41 & 4) != 0)
        {
          goto LABEL_187;
        }

        result = sub_1B9DBBC30(&v55, (a1 + 168), (a1 + 176));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 4u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 14)
      {
        v50 = 720933;
        if ((v41 & 8) != 0)
        {
          goto LABEL_187;
        }

        result = sub_1B9DBBD58(&v55, (a1 + 184), (a1 + 192));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 8u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 37)
      {
        v50 = 720934;
        if ((v41 & 0x10) != 0)
        {
          goto LABEL_187;
        }

        result = sub_1B9DBBE1C(&v55, (a1 + 208), (a1 + 216));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x10u;
        goto LABEL_157;
      }

      if (*v59 == 7509 && *(v59 + 2) == 17)
      {
        v50 = 720935;
        if ((v41 & 0x20) != 0)
        {
          goto LABEL_187;
        }

        result = sub_1B9DBBF2C(&v55, (a1 + 224), (a1 + 232));
        if ((result & 1) == 0)
        {
          goto LABEL_187;
        }

        v41 |= 0x20u;
        goto LABEL_157;
      }

LABEL_133:
      if (__CFADD__(v55, v69))
      {
        goto LABEL_190;
      }

      if (v55 > v55 + v69 || v55 + v69 > v56)
      {
        goto LABEL_189;
      }

      v55 += v69;
      if (v58 == 1)
      {
        *(a1 + 266) = v58;
      }

      goto LABEL_157;
    }

    if (v60 < 8)
    {
      goto LABEL_133;
    }

    if (*v59 != -2042067414 || *(v59 + 3) != 1684273030)
    {
      goto LABEL_133;
    }

    v50 = 720936;
    if (!sub_1B9DBC000(&v59, v71, v54) || (result = sub_1B9DBC08C(&v55, v59, v60, (a1 + 240), (a1 + 248), v40), !result))
    {
LABEL_187:
      v10 = v50;
      goto LABEL_56;
    }

    if (v54 == 0xFF)
    {
      goto LABEL_192;
    }

    ++v54;
LABEL_157:
    if (v55 != v56)
    {
      goto LABEL_184;
    }

    if (__CFADD__(v61, v57))
    {
      goto LABEL_190;
    }

    v37 = v61 + v57;
    if (v61 > v61 + v57)
    {
      goto LABEL_189;
    }

    v38 = v62;
    if (v37 > v62)
    {
      goto LABEL_189;
    }

    v61 += v57;
    if (v37 >= v62)
    {
      goto LABEL_162;
    }
  }

  v10 = 720928;
LABEL_56:
  v36 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t sub_1B9DBB974(uint64_t *a1, int a2, _BYTE *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (*a1 > a1[1])
  {
    __break(0x5519u);
  }

  v7 = *a1;
  v8 = a1[1];
  if ((ccder_blob_decode_tl() & 1) != 0 || !a2)
  {
    result = 0;
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
    }

    result = 1;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DBBA8C(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_bitstring();
  if (result)
  {
    *(a1 + 8);
    result = 0;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DBBB5C(uint64_t *a1, void *a2, _BYTE *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (result)
  {
    result = sub_1B9DBB974(a1, 1, a3);
    if (result)
    {
      if (ccder_blob_decode_uint64())
      {
        if (*a3 != 1)
        {
          result = 0;
          goto LABEL_8;
        }

        *a2 = 0xAAAAAAAAAAAAAAAALL;
        *a2 = 0xAAAAAAAAAAAAAAABLL;
      }

      result = 1;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B9DBBC30(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_14;
  }

  v7 = *a1;
  if (*a1 >= 0x5555555555555556)
  {
    goto LABEL_15;
  }

  if (v7 - 0x5555555555555556 != a1[1])
  {
    result = 0;
LABEL_14:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v7 <= v7 - 0x5555555555555556)
  {
    v11 = *a1;
    v12 = a1[1];
    result = ccder_blob_decode_tl();
    if (result)
    {
      if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_16;
      }

      *a2 = v11;
      *a3 = 0xAAAAAAAAAAAAAAAALL;
    }

    v8 = *a1;
    if (*a1 < 0x5555555555555556)
    {
      v9 = v8 - 0x5555555555555556;
      if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
      {
        *a1 = v9;
        result = 1;
        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(0x5513u);
  }

LABEL_16:
  __break(0x5519u);
  return result;
}

uint64_t sub_1B9DBBD58(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (!result)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DBBE1C(unint64_t *a1, unint64_t *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = ccder_blob_decode_tl();
  result = 0;
  if (!v6)
  {
    goto LABEL_10;
  }

  if (*a1 > a1[1])
  {
    goto LABEL_11;
  }

  v11 = *a1;
  v12 = a1[1];
  result = ccder_blob_decode_tl();
  if (!result)
  {
LABEL_10:
    v10 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (v12 < v11 || v12 - v11 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_11:
    __break(0x5519u);
  }

  *a2 = v11;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v9 = v8 - 0x5555555555555556;
    if (v8 <= v8 - 0x5555555555555556 && v9 <= a1[1])
    {
      *a1 = v9;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DBBF2C(unint64_t *a1, unint64_t *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  result = ccder_blob_decode_tl();
  if (result != 1)
  {
    goto LABEL_12;
  }

  v7 = a1[1];
  v8 = v7 >= *a1;
  v9 = v7 - *a1;
  if (!v8 || v9 < 0xAAAAAAAAAAAAAAAALL)
  {
LABEL_13:
    __break(0x5519u);
  }

  *a2 = *a1;
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *a1;
  if (*a1 < 0x5555555555555556)
  {
    v12 = v11 - 0x5555555555555556;
    if (v11 <= v11 - 0x5555555555555556 && v12 <= a1[1])
    {
      *a1 = v12;
LABEL_12:
      v14 = *MEMORY[0x1E69E9840];
      return result;
    }

    goto LABEL_13;
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DBC000(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 > 9)
  {
    return 0;
  }

  v5 = result;
  v6 = 0;
  v7 = ~a2;
  while (v7 >= 16 * v6)
  {
    result = compare_octet_string(v5, a2 + 16 * v6);
    if (!result)
    {
      return result;
    }

    if (a3 <= v6++)
    {
      v9 = v5[1];
      v10 = (a2 + 16 * a3);
      *v10 = *v5;
      v10[1] = v9;
      return 1;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t sub_1B9DBC08C(uint64_t result, unint64_t a2, unint64_t a3, uint64_t *a4, unint64_t *a5, int a6)
{
  v67 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    a5 = 0;
  }

  if (a3 == 9)
  {
    if (*a2 == 0xB6463F78648862ALL && *(a2 + 8) == 1)
    {
      v57 = *MEMORY[0x1E69E9840];

      return sub_1B9DBDCF0(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 49)
    {
      v66 = 0;
      result = sub_1B9DBB974(result, 0, &v66);
      if (result)
      {
        v58 = 0x20000040001;
        if (v66)
        {
          v58 = 0x10000080002;
        }

        *a4 |= v58;
      }

      goto LABEL_284;
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 44)
    {
      v60 = *MEMORY[0x1E69E9840];

      return sub_1B9DBDE2C(result, a4, a5);
    }

    if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 36)
    {
      v61 = *MEMORY[0x1E69E9840];

      return sub_1B9DBDFDC(result);
    }

    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 22)
    {
      if (*a2 == 0xC6463F78648862ALL && *(a2 + 8) == 19)
      {
        result = ccder_blob_check_null();
        if (result)
        {
          v14 = *a4 | 0x8000000000;
          goto LABEL_282;
        }

        goto LABEL_284;
      }

      if (*a2 != 0xA6463F78648862ALL || *(a2 + 8) != 1)
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 29)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000000;
            goto LABEL_282;
          }
        }

        else
        {
          if (*a2 != 0xC6463F78648862ALL || *(a2 + 8) != 14)
          {
            if (*a2 != 0x86463F78648862ALL || *(a2 + 8) != 3)
            {
              goto LABEL_249;
            }

            v46 = *MEMORY[0x1E69E9840];

            return sub_1B9DBE410(result, a4, a5);
          }

          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000000;
            goto LABEL_282;
          }
        }

        goto LABEL_284;
      }

      *a4 |= 0x1000000uLL;
LABEL_249:
      v54 = *result;
      v53 = *(result + 8);
LABEL_250:
      if (v54 <= v53)
      {
        *result = v53;
LABEL_283:
        result = 1;
        goto LABEL_284;
      }

      goto LABEL_288;
    }

    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 1048584;
LABEL_204:
    v14 = v55 | v56;
    goto LABEL_282;
  }

  if (a3 != 10)
  {
    if (a3 == 11)
    {
      if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10901066463F786)
      {
        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x400000000000;
      }

      else
      {
        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10301066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x200;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x10601066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x800;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11801066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x2000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x12401066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x100000000000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 == 0x66463F78648862ALL && *(a2 + 3) == 0x11901066463F786)
        {
          result = ccder_blob_check_null();
          if (result)
          {
            v14 = *a4 | 0x4000;
            goto LABEL_282;
          }

          goto LABEL_284;
        }

        if (*a2 != 0x66463F78648862ALL || *(a2 + 3) != 0x21901066463F786)
        {
LABEL_164:
          v35 = 0;
          goto LABEL_165;
        }

        result = ccder_blob_check_null();
        if (!result)
        {
          goto LABEL_284;
        }

        v14 = *a4 | 0x8000;
      }

LABEL_282:
      *a4 = v14;
      goto LABEL_283;
    }

    if (a3 < 0xA)
    {
      goto LABEL_249;
    }

    if ((a3 & 0x8000000000000000) != 0)
    {
      goto LABEL_288;
    }

    goto LABEL_164;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 5122)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x800000100000;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 258)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 0x58600003F0D0;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1538)
  {
    goto LABEL_214;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4610)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0xF00;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 278)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x800000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3073)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1793)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3329)
  {
LABEL_214:
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x20;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 2305)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x40;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 513)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1025)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x10000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 769)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x100;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 1537)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 6145)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x1000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 9217)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x80000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8193)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x2000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 8705)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x4000000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 315)
  {
    v63 = *MEMORY[0x1E69E9840];

    return sub_1B9DBE0C8(result, a4, a5);
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3074)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x300000000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 304)
  {
    v65 = *MEMORY[0x1E69E9840];

    return sub_1B9DBE1AC();
  }

  v35 = 1;
LABEL_165:
  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 27)
  {
    v59 = *MEMORY[0x1E69E9840];

    return sub_1B9DBE340(result, a2, a3, a4, a5);
  }

  if (!v35)
  {
    goto LABEL_249;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 832)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v14 = *a4 | 0x400000;
      goto LABEL_282;
    }

    goto LABEL_284;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 3586)
  {
    result = ccder_blob_check_null();
    if (!result)
    {
      goto LABEL_284;
    }

    v55 = *a4;
    v56 = 37748736;
    goto LABEL_204;
  }

  if (*a2 == 0x66463F78648862ALL && *(a2 + 8) == 4354)
  {
    result = ccder_blob_check_null();
    if (result)
    {
      v55 = *a4;
      v56 = 0x8004000000;
      goto LABEL_204;
    }

LABEL_284:
    v64 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 327)
  {
    if (*a2 != 0x66463F78648862ALL || *(a2 + 8) != 3841)
    {
      goto LABEL_249;
    }

    v54 = *result;
    v53 = *(result + 8);
    if (!a5)
    {
LABEL_194:
      *a4 |= 0x80000000uLL;
      goto LABEL_250;
    }

    if (v54 <= v53)
    {
      *a5 = v54;
      a5[1] = v53 - v54;
      goto LABEL_194;
    }

LABEL_288:
    __break(0x5519u);
    return result;
  }

  v62 = *MEMORY[0x1E69E9840];

  return sub_1B9DBE564(result, a4, a5);
}

uint64_t X509CertificateParseWithExtension(unint64_t *a1, unint64_t *a2, const void *a3, size_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 720939;
  v9 = *a2;
  v10 = a2[1];
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_9;
  }

  v11 = *a2;
  result = X509CertificateParseImplicit(a1, a2, a3, a4);
  v8 = result;
  if (result)
  {
    goto LABEL_9;
  }

  if (v11 >= 0x5555555555555556)
  {
    __break(0x5513u);
LABEL_11:
    __break(0x5500u);
    goto LABEL_12;
  }

  v8 = 720939;
  if (*a2 != v11 - 0x5555555555555556)
  {
LABEL_9:
    v14 = *MEMORY[0x1E69E9840];
    return v8;
  }

  v13 = v11 - v9 - 0x5555555555555556;
  if (v11 - v9 >= 0x5555555555555556)
  {
    goto LABEL_11;
  }

  if (v10 >= v9 && v13 <= v10 - v9)
  {
    *a1 = v9;
    a1[1] = v13;
    X509PolicyCheckForBlockedKeys(a1);
    v8 = 0;
    goto LABEL_9;
  }

LABEL_12:
  __break(0x5519u);
  return result;
}

uint64_t X509CertificateParseSPKI(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = a1[1];
  if (__CFADD__(*a1, v5))
  {
    goto LABEL_31;
  }

  v6 = v4 + v5;
  if (v4 > v6)
  {
    goto LABEL_30;
  }

  v10 = 655361;
  v15 = *a1;
  v16 = v6;
  if (!ccder_blob_decode_tl())
  {
    goto LABEL_29;
  }

  if (!ccder_blob_decode_tl())
  {
    v10 = 655363;
    goto LABEL_29;
  }

  if (v15 >= 0x5555555555555556)
  {
LABEL_31:
    __break(0x5513u);
  }

  if (v15 > v15 - 0x5555555555555556 || v15 - 0x5555555555555556 > v16)
  {
    goto LABEL_30;
  }

  v14 = v15 - 0x5555555555555556;
  if (!ccder_blob_decode_tl())
  {
    v10 = 655362;
    goto LABEL_29;
  }

  if (a2)
  {
    if (v14 >= v15)
    {
      *a2 = v15;
      a2[1] = 0xAAAAAAAAAAAAAAAALL;
      goto LABEL_12;
    }

LABEL_30:
    __break(0x5519u);
    goto LABEL_31;
  }

LABEL_12:
  v11 = v15 - 0x5555555555555556;
  if (v15 > v15 - 0x5555555555555556 || v11 > v14)
  {
    goto LABEL_30;
  }

  if (v11 == v14)
  {
    if (a3)
    {
      *a3 = 0;
      a3[1] = 0;
    }
  }

  else if (a3)
  {
    *a3 = v11;
    a3[1] = v14 - v11;
  }

  if (v14 > v16 || v15 > v14)
  {
    goto LABEL_30;
  }

  if (ccder_blob_decode_bitstring())
  {
    *a4 = 0;
    a4[1] = 0;
    if (v14 == v16)
    {
      v10 = 0;
    }

    else
    {
      v10 = 655365;
    }
  }

  else
  {
    v10 = 655364;
  }

LABEL_29:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}