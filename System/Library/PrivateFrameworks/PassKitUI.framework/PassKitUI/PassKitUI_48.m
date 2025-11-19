uint64_t sub_1BD5432B0(char a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = sub_1BD543A80;
  }

  else
  {
    *(v4 + 337) = a1 & 1;
    v5 = sub_1BD5433DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

char *sub_1BD5433DC()
{
  v62 = v0;
  v1 = *(v0 + 312);
  if (*(v0 + 337))
  {
    v2 = v0 + 152;
    MEMORY[0x1BFB3F7A0](v1);
    if (*((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_45;
    }

    goto LABEL_3;
  }

  v2 = v0 + 304;
LABEL_5:
  v4 = *v2;
  v5 = *(v0 + 296) + 1;
  if (v5 != *(v0 + 288))
  {
    *(v0 + 296) = v5;
    *(v0 + 304) = v4;
    v34 = *(v0 + 280);
    if ((v34 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v35 = *(v34 + 8 * v5 + 32);
    }

    v46 = v35;
    *(v0 + 312) = v35;
    v60 = (*(v0 + 184) + **(v0 + 184));
    v47 = swift_task_alloc();
    *(v0 + 320) = v47;
    *v47 = v0;
    v47[1] = sub_1BD5432B0;

    return v60(v46);
  }

  v6 = *(v0 + 184);

  sub_1BD0D4744(v6);
  *(v0 + 144) = v4;
  if (*(v0 + 336) == 1)
  {
    v7 = sub_1BD03ED74(*(v0 + 256));
    v8 = *(v0 + 144);
    v9 = v8;
    if (v8 >> 62)
    {
      v10 = sub_1BE053704();
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_9:
        v61 = MEMORY[0x1E69E7CC0];
        v2 = &v61;
        result = sub_1BD03EF98(0, v10 & ~(v10 >> 63), 0);
        if ((v10 & 0x8000000000000000) == 0)
        {
          v12 = 0;
          v13 = v61;
          v14 = v9;
          v58 = v9;
          v59 = v9 & 0xC000000000000001;
          v57 = v9 & 0xFFFFFFFFFFFFFF8;
          v15 = v10;
          while (1)
          {
            v16 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              sub_1BE052774();
LABEL_3:
              v3 = *(v0 + 312);
              sub_1BE0527C4();

              goto LABEL_5;
            }

            if (v59)
            {
              v17 = MEMORY[0x1BFB40900](v12, v14);
            }

            else
            {
              if (v12 >= *(v57 + 16))
              {
                goto LABEL_44;
              }

              v17 = *(v14 + 8 * v12 + 32);
            }

            v18 = v17;
            result = [v17 uniqueID];
            if (!result)
            {
              goto LABEL_61;
            }

            v2 = result;
            v19 = sub_1BE052434();
            v21 = v20;

            if (!*(v7 + 16))
            {
              break;
            }

            v2 = sub_1BD148F70(v19, v21);
            v23 = v22;

            if ((v23 & 1) == 0)
            {
              goto LABEL_21;
            }

            v24 = (*(v7 + 56) + 16 * v2);
            v2 = *v24;
            v25 = v24[1];
            sub_1BD041A38(*v24, v25);
            v26 = v25;
            v27 = v2;
LABEL_22:
            sub_1BD02F840(v18, v27, v26, (v0 + 80));
            v61 = v13;
            v29 = *(v13 + 16);
            v28 = *(v13 + 24);
            if (v29 >= v28 >> 1)
            {
              v2 = &v61;
              sub_1BD03EF98((v28 > 1), v29 + 1, 1);
              v13 = v61;
            }

            *(v13 + 16) = v29 + 1;
            v30 = (v13 + (v29 << 6));
            v31 = *(v0 + 80);
            v32 = *(v0 + 96);
            v33 = *(v0 + 128);
            v30[4] = *(v0 + 112);
            v30[5] = v33;
            v30[2] = v31;
            v30[3] = v32;
            ++v12;
            v14 = v58;
            if (v16 == v15)
            {

              goto LABEL_48;
            }
          }

LABEL_21:
          v27 = 0;
          v26 = 0xF000000000000000;
          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_60;
      }
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_48:
    v48 = (v0 + 232);
    sub_1BE04D074();
    sub_1BE048C84();
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = *(v13 + 16);

      v52 = "PassEntityDataProvider: Returning %ld entities with snapshots";
LABEL_54:
      _os_log_impl(&dword_1BD026000, v49, v50, v52, v51, 0xCu);
      MEMORY[0x1BFB45F20](v51, -1, -1);
LABEL_56:

      v53 = *v48;
      v54 = *(v0 + 200);
      v55 = *(v0 + 208);

      (*(v55 + 8))(v53, v54);

      v56 = *(v0 + 8);

      return v56(v13);
    }

    goto LABEL_55;
  }

  v36 = *(v0 + 144);
  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_30;
    }

LABEL_51:

    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_52;
  }

  v37 = sub_1BE053704();
  if (!v37)
  {
    goto LABEL_51;
  }

LABEL_30:
  v61 = MEMORY[0x1E69E7CC0];
  result = sub_1BD03EF98(0, v37 & ~(v37 >> 63), 0);
  if ((v37 & 0x8000000000000000) == 0)
  {
    v38 = 0;
    v13 = v61;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1BFB40900](v38, v36);
      }

      else
      {
        v39 = *(v36 + 8 * v38 + 32);
      }

      sub_1BD02F840(v39, 0, 0xF000000000000000, (v0 + 16));
      v61 = v13;
      v41 = *(v13 + 16);
      v40 = *(v13 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1BD03EF98((v40 > 1), v41 + 1, 1);
        v13 = v61;
      }

      ++v38;
      *(v13 + 16) = v41 + 1;
      v42 = (v13 + (v41 << 6));
      v43 = *(v0 + 16);
      v44 = *(v0 + 32);
      v45 = *(v0 + 64);
      v42[4] = *(v0 + 48);
      v42[5] = v45;
      v42[2] = v43;
      v42[3] = v44;
    }

    while (v37 != v38);

LABEL_52:
    v48 = (v0 + 224);
    sub_1BE04D074();
    sub_1BE048C84();
    v49 = sub_1BE04D204();
    v50 = sub_1BE052C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = *(v13 + 16);

      v52 = "PassEntityDataProvider: Returning %ld entities without snapshots";
      goto LABEL_54;
    }

LABEL_55:

    goto LABEL_56;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

char *sub_1BD543A80()
{
  v1 = *(v0 + 328);
  sub_1BE04D074();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 328);
  v7 = *(v0 + 312);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BD026000, v3, v4, "PassEntityDataProvider: Encountered error filtering passes: %@", v8, 0xCu);
    sub_1BD1E236C(v9);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  v12 = *(v0 + 296) + 1;
  if (v12 != *(v0 + 288))
  {
    *(v0 + 296) = v12;
    v44 = *(v0 + 280);
    if ((v44 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x1BFB40900]();
    }

    else
    {
      v45 = *(v44 + 8 * v12 + 32);
    }

    v56 = v45;
    *(v0 + 312) = v45;
    v70 = (*(v0 + 184) + **(v0 + 184));
    v57 = swift_task_alloc();
    *(v0 + 320) = v57;
    *v57 = v0;
    v57[1] = sub_1BD5432B0;

    return v70(v56);
  }

  v13 = *(v0 + 304);
  v14 = *(v0 + 184);

  sub_1BD0D4744(v14);
  *(v0 + 144) = v13;
  if (*(v0 + 336) == 1)
  {
    v15 = sub_1BD03ED74(*(v0 + 256));
    v16 = *(v0 + 144);
    v17 = v16;
    if (v16 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
    {
      v71 = MEMORY[0x1E69E7CC0];
      result = sub_1BD03EF98(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_58;
      }

      v20 = 0;
      v21 = v71;
      v22 = v17;
      v68 = v17;
      v69 = v17 & 0xC000000000000001;
      v67 = v17 & 0xFFFFFFFFFFFFFF8;
      v17 = i;
      while (1)
      {
        v23 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v69)
        {
          v24 = MEMORY[0x1BFB40900](v20, v22);
        }

        else
        {
          if (v20 >= *(v67 + 16))
          {
            goto LABEL_43;
          }

          v24 = *(v22 + 8 * v20 + 32);
        }

        v25 = v24;
        result = [v24 uniqueID];
        if (!result)
        {
          goto LABEL_59;
        }

        v26 = result;
        v27 = sub_1BE052434();
        v29 = v28;

        if (!*(v15 + 16))
        {

LABEL_20:
          v37 = 0;
          v36 = 0xF000000000000000;
          goto LABEL_21;
        }

        v30 = sub_1BD148F70(v27, v29);
        v32 = v31;

        if ((v32 & 1) == 0)
        {
          goto LABEL_20;
        }

        v33 = (*(v15 + 56) + 16 * v30);
        v34 = *v33;
        v35 = v33[1];
        sub_1BD041A38(*v33, v35);
        v36 = v35;
        v37 = v34;
LABEL_21:
        sub_1BD02F840(v25, v37, v36, (v0 + 80));
        v39 = *(v71 + 16);
        v38 = *(v71 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1BD03EF98((v38 > 1), v39 + 1, 1);
        }

        *(v71 + 16) = v39 + 1;
        v40 = (v71 + (v39 << 6));
        v41 = *(v0 + 80);
        v42 = *(v0 + 96);
        v43 = *(v0 + 128);
        v40[4] = *(v0 + 112);
        v40[5] = v43;
        v40[2] = v41;
        v40[3] = v42;
        ++v20;
        v22 = v68;
        if (v23 == v17)
        {

          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v58 = (v0 + 232);
    sub_1BE04D074();
    sub_1BE048C84();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = *(v21 + 16);

      v62 = "PassEntityDataProvider: Returning %ld entities with snapshots";
LABEL_52:
      _os_log_impl(&dword_1BD026000, v59, v60, v62, v61, 0xCu);
      MEMORY[0x1BFB45F20](v61, -1, -1);
LABEL_54:

      v63 = *v58;
      v64 = *(v0 + 200);
      v65 = *(v0 + 208);

      (*(v65 + 8))(v63, v64);

      v66 = *(v0 + 8);

      return v66(v21);
    }

    goto LABEL_53;
  }

  v46 = *(v0 + 144);
  if (v46 >> 62)
  {
    v47 = sub_1BE053704();
    if (v47)
    {
      goto LABEL_29;
    }

LABEL_49:

    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v47)
  {
    goto LABEL_49;
  }

LABEL_29:
  v72 = MEMORY[0x1E69E7CC0];
  result = sub_1BD03EF98(0, v47 & ~(v47 >> 63), 0);
  if ((v47 & 0x8000000000000000) == 0)
  {
    v48 = 0;
    v21 = v72;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1BFB40900](v48, v46);
      }

      else
      {
        v49 = *(v46 + 8 * v48 + 32);
      }

      sub_1BD02F840(v49, 0, 0xF000000000000000, (v0 + 16));
      v51 = *(v72 + 16);
      v50 = *(v72 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1BD03EF98((v50 > 1), v51 + 1, 1);
      }

      ++v48;
      *(v72 + 16) = v51 + 1;
      v52 = (v72 + (v51 << 6));
      v53 = *(v0 + 16);
      v54 = *(v0 + 32);
      v55 = *(v0 + 64);
      v52[4] = *(v0 + 48);
      v52[5] = v55;
      v52[2] = v53;
      v52[3] = v54;
    }

    while (v47 != v48);

LABEL_50:
    v58 = (v0 + 224);
    sub_1BE04D074();
    sub_1BE048C84();
    v59 = sub_1BE04D204();
    v60 = sub_1BE052C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134217984;
      *(v61 + 4) = *(v21 + 16);

      v62 = "PassEntityDataProvider: Returning %ld entities without snapshots";
      goto LABEL_52;
    }

LABEL_53:

    goto LABEL_54;
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1BD5441F4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1BE0B7020;
  v3 = *(v1 + 16);
  *(v2 + 32) = v3;
  v4 = v3;
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_1BD5442E0;

  return sub_1BD0395F8(v2, 0, 0, 0, 1, 1);
}

uint64_t sub_1BD5442E0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD544400, 0, 0);
}

uint64_t sub_1BD544400()
{
  v1 = sub_1BD03ED74(*(v0 + 40));

  if (*(v1 + 16) && (v2 = sub_1BD148F70(**(v0 + 16), *(*(v0 + 16) + 8)), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v5 = *v4;
    v6 = v4[1];
    sub_1BD041A38(*v4, v6);
  }

  else
  {
    v5 = 0;
    v6 = 0xF000000000000000;
  }

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

uint64_t type metadata accessor for SettingsTransactionSection()
{
  result = qword_1EBD49E60;
  if (!qword_1EBD49E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD544540()
{
  sub_1BD0E5E8C(319, &qword_1EBD456C0);
  if (v0 <= 0x3F)
  {
    sub_1BD5445EC();
    if (v1 <= 0x3F)
    {
      sub_1BD544644();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD5445EC()
{
  if (!qword_1EBD49E70)
  {
    type metadata accessor for TransactionsModel();
    v0 = sub_1BE051AB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD49E70);
    }
  }
}

void sub_1BD544644()
{
  if (!qword_1EBD49E78)
  {
    sub_1BD0E5E8C(255, &qword_1EBD3CCE0);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD49E78);
    }
  }
}

uint64_t sub_1BD5446D8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for SettingsTransactionSection();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E80);
  *&v60 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v6);
  *&v59 = &v57 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E88);
  MEMORY[0x1EEE9AC00](v61, v8);
  v10 = &v57 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E90);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v67 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v63 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E98);
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v62 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v57 - v22;
  v69 = v1;
  sub_1BD545740(v1, &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EA8);
  sub_1BD0DE4F4(&qword_1EBD49EB0, &qword_1EBD49EA0);
  sub_1BD546BB8();
  v24 = v23;
  sub_1BE051A24();
  v25 = *v1;
  if ([v25 isAppleCardPass] && PKAppleCardMacTransactionHistoryEnabled())
  {
    v26 = [v25 paymentPass];
    if (v26)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
      sub_1BE051A74();
      v27 = v71;
      v28 = *(v2 + *(v3 + 24));
      LOBYTE(v70) = 0;
      v29 = v28;
      sub_1BE051694();
      v30 = v71;
      v31 = *(&v71 + 1);
      LOBYTE(v70) = 0;
      sub_1BE051694();
      v32 = v71;
      v33 = *(&v71 + 1);
      v70 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F08);
      sub_1BE051694();
      v60 = v71;
      v70 = 0;
      sub_1BE051694();
      v59 = v71;
      v70 = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0);
      sub_1BE051694();
      v34 = v59;
      v35 = v60;
      v37 = *(&v71 + 1);
      v36 = v71;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v31 = 0;
      v33 = 0;
      v36 = 0;
      v37 = 0;
      v32 = 0;
      v30 = 0;
      v35 = 0uLL;
      v34 = 0uLL;
    }

    *v10 = v27;
    *(v10 + 1) = v26;
    *(v10 + 2) = v28;
    *(v10 + 3) = v30;
    *(v10 + 4) = v31;
    *(v10 + 5) = v32;
    *(v10 + 6) = v33;
    *(v10 + 56) = v35;
    *(v10 + 72) = v34;
    *(v10 + 11) = v36;
    *(v10 + 12) = v37;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EE0);
    sub_1BD54BD94();
    sub_1BD54BE6C();
    v45 = v63;
    sub_1BE04F9A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
    sub_1BE051A74();
    v38 = v71;
    swift_getKeyPath();
    *&v71 = v38;
    sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
    sub_1BE04B594();

    v39 = *&v38[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions];
    sub_1BE048C84();

    *&v71 = v39;
    swift_getKeyPath();
    sub_1BD54BBB4(v2, &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v41 = swift_allocObject();
    sub_1BD54BC18(&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0);
    sub_1BD0DE4F4(&qword_1EBD49EC8, &qword_1EBD49EC0);
    sub_1BD54BCFC(&qword_1EBD49ED0, &qword_1EBD4AB10);
    sub_1BD54BD40();
    v42 = v59;
    sub_1BE0519C4();
    v43 = v60;
    v44 = v66;
    (*(v60 + 16))(v10, v42, v66);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EE0);
    sub_1BD54BD94();
    sub_1BD54BE6C();
    v45 = v63;
    sub_1BE04F9A4();
    (*(v43 + 8))(v42, v44);
  }

  v46 = v64;
  v47 = *(v64 + 16);
  v48 = v62;
  v49 = v24;
  v50 = v24;
  v51 = v65;
  v47(v62, v50, v65);
  v52 = v67;
  sub_1BD0DE19C(v45, v67, &qword_1EBD49E90);
  v53 = v68;
  v47(v68, v48, v51);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F00);
  sub_1BD0DE19C(v52, &v53[*(v54 + 48)], &qword_1EBD49E90);
  sub_1BD0DE53C(v45, &qword_1EBD49E90);
  v55 = *(v46 + 8);
  v55(v49, v51);
  sub_1BD0DE53C(v52, &qword_1EBD49E90);
  return (v55)(v48, v51);
}

uint64_t sub_1BD544F98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D58);
  sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
  swift_getOpaqueTypeConformance2();
  return sub_1BE051A44();
}

uint64_t sub_1BD545094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for SettingsTransactionSection();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19 - v9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58);
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v11);
  v13 = &v19 - v12;
  sub_1BE051A84();
  swift_getKeyPath();
  sub_1BE051AA4();

  (*(v7 + 8))(v10, v6);
  sub_1BE051814();
  sub_1BE051A74();
  v14 = v24;
  swift_getKeyPath();
  v24 = v14;
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  LOBYTE(v6) = v14[OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled];

  LOBYTE(v24) = v6;
  sub_1BD54BBB4(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v16 = swift_allocObject();
  sub_1BD54BC18(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
  v17 = v20;
  sub_1BE051064();

  return (*(v22 + 8))(v13, v17);
}

uint64_t sub_1BD545450@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__notificationServiceUpdatesEnabled);
  return result;
}

id sub_1BD545528@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1BD545694(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  type metadata accessor for SettingsTransactionSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
  sub_1BE051A74();
  v3 = *&v6[OBJC_IVAR____TtC9PassKitUI17TransactionsModel_pass];
  v4 = [v3 settings] & 0xFFFFFFFFFFFFFFF7;
  v5 = 8;
  if (!v2)
  {
    v5 = 0;
  }

  [v3 setSettings_];
}

id sub_1BD545740@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v50 - v10;
  v12 = *MEMORY[0x1E69B80F0];
  v13 = *(v4 + 104);
  v13(&v50 - v10, v12, v3, v9);
  result = PKPassKitBundle();
  if (result)
  {
    v15 = result;
    v16 = sub_1BE04B6F4();
    v18 = v17;

    v19 = *(v4 + 8);
    v19(v11, v3);
    v56 = v16;
    v57 = v18;
    sub_1BD0DDEBC();
    v20 = sub_1BE0506C4();
    v54 = v21;
    v53 = v22;
    v24 = v23;
    if ([*v55 isAppleCardPass])
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
LABEL_6:
      v48 = v53 & 1;
      v49 = v54;
      sub_1BD0D7F18(v20, v54, v53 & 1);
      sub_1BE048C84();
      sub_1BD1969AC(v25, v26, v27, v28);
      sub_1BD1969F0(v25, v26, v27, v28);
      LOBYTE(v56) = v48;
      *a2 = v20;
      *(a2 + 8) = v49;
      *(a2 + 16) = v48;
      *(a2 + 24) = v24;
      *(a2 + 32) = v25;
      *(a2 + 40) = v26;
      *(a2 + 48) = v27;
      *(a2 + 56) = v28;
      sub_1BD1969F0(v25, v26, v27, v28);
      sub_1BD0DDF10(v20, v49, v48);
    }

    v51 = v20;
    v55 = v24;
    v29 = v52;
    (v13)(v52, v12, v3);
    result = PKPassKitBundle();
    if (result)
    {
      v30 = result;
      v31 = sub_1BE04B6F4();
      v33 = v32;

      v19(v29, v3);
      v56 = v31;
      v57 = v33;
      v34 = sub_1BE0506C4();
      v36 = v35;
      v38 = v37;
      LODWORD(v56) = sub_1BE04FC94();
      v39 = sub_1BE050574();
      v41 = v40;
      v43 = v42;
      sub_1BD0DDF10(v34, v36, v38 & 1);

      sub_1BE050454();
      v25 = sub_1BE0505F4();
      v26 = v44;
      v46 = v45;
      v28 = v47;

      sub_1BD0DDF10(v39, v41, v43 & 1);

      v27 = v46 & 1;
      sub_1BD0D7F18(v25, v26, v46 & 1);
      sub_1BE048C84();
      v24 = v55;
      v20 = v51;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1BD545B14@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  type metadata accessor for SettingsTransactionSection();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
  sub_1BE051A74();
  *a2 = v5;
  a2[1] = v4;

  return v4;
}

uint64_t sub_1BD545B98@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7C4();
  sub_1BD545E44(a1, &v29);
  v35 = *&v30[16];
  v36 = *&v30[32];
  v37 = *&v30[48];
  v38 = *&v30[64];
  v33 = v29;
  v34 = *v30;
  v39[2] = *&v30[16];
  v39[3] = *&v30[32];
  v39[4] = *&v30[48];
  v39[5] = *&v30[64];
  v39[0] = v29;
  v39[1] = *v30;
  sub_1BD0DE19C(&v33, &v21, &qword_1EBD41CC0);
  sub_1BD0DE53C(v39, &qword_1EBD41CC0);
  *&v32[39] = v35;
  *&v32[55] = v36;
  *&v32[71] = v37;
  *&v32[87] = v38;
  *&v32[7] = v33;
  *&v32[23] = v34;
  v5 = sub_1BD96CC28(a1);
  if (v6)
  {
    *&v29 = v5;
    *(&v29 + 1) = v6;
    sub_1BD0DDEBC();
    v7 = sub_1BE0506C4();
    v9 = v8;
    v11 = v10;
    v13 = v12 & 1;
    sub_1BD0D7F18(v7, v8, v12 & 1);
    sub_1BE048C84();
  }

  else
  {
    v7 = 0;
    v9 = 0;
    v13 = 0;
    v11 = 0;
  }

  v19 = v4;
  v20[0] = 1;
  *&v20[17] = *&v32[16];
  *&v20[1] = *v32;
  *&v20[81] = *&v32[80];
  *&v20[65] = *&v32[64];
  *&v20[49] = *&v32[48];
  *&v20[96] = *&v32[95];
  *&v20[33] = *&v32[32];
  v23 = *&v20[16];
  v24 = *&v20[32];
  v28 = *&v32[95];
  v26 = *&v20[64];
  v27 = *&v20[80];
  v25 = *&v20[48];
  v21 = v4;
  v22 = *v20;
  sub_1BD0DE19C(&v19, &v29, &qword_1EBD49F50);
  sub_1BD1969AC(v7, v9, v13, v11);
  sub_1BD1969F0(v7, v9, v13, v11);
  v14 = v26;
  *(a2 + 64) = v25;
  *(a2 + 80) = v14;
  *(a2 + 96) = v27;
  v15 = v28;
  v16 = v22;
  *a2 = v21;
  *(a2 + 16) = v16;
  v17 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v17;
  *(a2 + 112) = v15;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  *(a2 + 136) = v7;
  *(a2 + 144) = v9;
  *(a2 + 152) = v13;
  *(a2 + 160) = v11;
  sub_1BD1969F0(v7, v9, v13, v11);
  v29 = v4;
  v30[0] = 1;
  *&v30[49] = *&v32[48];
  *&v30[65] = *&v32[64];
  *v31 = *&v32[80];
  *&v31[15] = *&v32[95];
  *&v30[1] = *v32;
  *&v30[17] = *&v32[16];
  *&v30[33] = *&v32[32];
  return sub_1BD0DE53C(&v29, &qword_1EBD49F50);
}

uint64_t sub_1BD545E44@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1BD96C698(a1);
  sub_1BD0DDEBC();
  v3 = sub_1BE0506C4();
  v40 = v4;
  v41 = v3;
  v6 = v5;
  v8 = v7;
  v9 = [a1 displayLocation];
  if (v9)
  {
    v10 = v9;
    sub_1BE052434();

    v11 = sub_1BE0506C4();
    v13 = v12;
    v15 = v11;
    v38 = v16;
    v42 = v14 & 1;
    sub_1BD0D7F18(v11, v16, v14 & 1);
    v37 = v13;
    sub_1BE048C84();
  }

  else
  {
    v15 = 0;
    v37 = 0;
    v38 = 0;
    v42 = 0;
  }

  v39 = v8;
  if ([a1 transactionStatus] == 2)
  {
    sub_1BD54C080(a1);
    v17 = sub_1BE0506C4();
    v18 = v6;
    v20 = v19;
    v22 = v21;
    sub_1BE04FC94();
    v23 = sub_1BE050574();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v20;
    v6 = v18;
    sub_1BD0DDF10(v17, v30, v22 & 1);

    v31 = v23;
    v32 = v25;
    v33 = v27 & 1;
    sub_1BD0D7F18(v23, v25, v27 & 1);
    v34 = v29;
    sub_1BE048C84();
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
  }

  sub_1BD0D7F18(v41, v40, v6 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v41, v40, v6 & 1);
  sub_1BE048C84();
  sub_1BD1969AC(v15, v38, v42, v37);
  sub_1BD1969AC(v31, v32, v33, v34);
  sub_1BD1969F0(v15, v38, v42, v37);
  sub_1BD1969F0(v31, v32, v33, v34);
  sub_1BD0DDF10(v41, v40, v6 & 1);

  *a2 = v41;
  *(a2 + 8) = v40;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v39;
  *(a2 + 32) = v15;
  *(a2 + 40) = v38;
  *(a2 + 48) = v42;
  *(a2 + 56) = v37;
  *(a2 + 64) = v31;
  *(a2 + 72) = v32;
  *(a2 + 80) = v33;
  *(a2 + 88) = v34;
  sub_1BD1969F0(v31, v32, v33, v34);
  sub_1BD1969F0(v15, v38, v42, v37);
  sub_1BD0DDF10(v41, v40, v6 & 1);
}

double sub_1BD546150@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = sub_1BE04F504();
  v25 = 1;
  sub_1BD545B98(v3, &v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v36 = v23;
  v38 = v23;
  v37[2] = v15;
  v37[3] = v16;
  sub_1BD0DE19C(&v26, v12, &qword_1EBD49F48);
  sub_1BD0DE53C(v37, &qword_1EBD49F48);
  *(&v24[7] + 7) = v33;
  *(&v24[8] + 7) = v34;
  *(&v24[9] + 7) = v35;
  *(&v24[10] + 7) = v36;
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  v5 = v24[6];
  *(a1 + 129) = v24[7];
  v6 = v24[9];
  *(a1 + 145) = v24[8];
  *(a1 + 161) = v6;
  *(a1 + 176) = *(&v24[9] + 15);
  v7 = v24[2];
  *(a1 + 65) = v24[3];
  v8 = v24[5];
  *(a1 + 81) = v24[4];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  result = *v24;
  v10 = v24[1];
  *(a1 + 17) = v24[0];
  *(a1 + 33) = v10;
  v11 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_1BD546328@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04F7C4();
  sub_1BD5465EC(a2, a1, &v34);
  v41 = *&v35[48];
  v42 = *&v35[64];
  v43 = *&v35[80];
  v37 = v34;
  v38 = *v35;
  v39 = *&v35[16];
  v40 = *&v35[32];
  v44[0] = v34;
  v44[1] = *v35;
  v44[2] = *&v35[16];
  v44[3] = *&v35[32];
  v44[4] = *&v35[48];
  v44[5] = *&v35[64];
  v45 = *&v35[80];
  sub_1BD0DE19C(&v37, &v26, &qword_1EBD49F18);
  sub_1BD0DE53C(v44, &qword_1EBD49F18);
  *(&v36[3] + 7) = v40;
  *(&v36[4] + 7) = v41;
  *(&v36[5] + 7) = v42;
  *(v36 + 7) = v37;
  *(&v36[1] + 7) = v38;
  *(&v36[6] + 7) = v43;
  *(&v36[2] + 7) = v39;
  v7 = [a2 valueString];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1BE052434();
    v11 = v10;

    *&v34 = v9;
    *(&v34 + 1) = v11;
    sub_1BD0DDEBC();
    v12 = sub_1BE0506C4();
    v14 = v13;
    v16 = v15;
    v18 = v17 & 1;
    sub_1BD0D7F18(v12, v13, v17 & 1);
    sub_1BE048C84();
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v18 = 0;
    v16 = 0;
  }

  v24 = v6;
  v25[0] = 1;
  *&v25[17] = v36[1];
  *&v25[1] = v36[0];
  *&v25[81] = v36[5];
  *&v25[65] = v36[4];
  *&v25[49] = v36[3];
  *&v25[96] = *(&v36[5] + 15);
  *&v25[33] = v36[2];
  v28 = *&v25[16];
  v29 = *&v25[32];
  v32 = *&v25[80];
  v33 = *(&v36[5] + 15);
  v30 = *&v25[48];
  v31 = *&v25[64];
  v26 = v6;
  v27 = *v25;
  sub_1BD0DE19C(&v24, &v34, &qword_1EBD49F20);
  sub_1BD1969AC(v12, v14, v18, v16);
  sub_1BD1969F0(v12, v14, v18, v16);
  v19 = v31;
  *(a3 + 64) = v30;
  *(a3 + 80) = v19;
  v20 = v33;
  *(a3 + 96) = v32;
  *(a3 + 112) = v20;
  v21 = v27;
  *a3 = v26;
  *(a3 + 16) = v21;
  v22 = v29;
  *(a3 + 32) = v28;
  *(a3 + 48) = v22;
  *(a3 + 128) = 0;
  *(a3 + 136) = 1;
  *(a3 + 144) = v12;
  *(a3 + 152) = v14;
  *(a3 + 160) = v18;
  *(a3 + 168) = v16;
  sub_1BD1969F0(v12, v14, v18, v16);
  *&v35[49] = v36[3];
  *&v35[65] = v36[4];
  *&v35[81] = v36[5];
  *&v35[96] = *(&v36[5] + 15);
  *&v35[1] = v36[0];
  *&v35[17] = v36[1];
  v34 = v6;
  v35[0] = 1;
  *&v35[33] = v36[2];
  return sub_1BD0DE53C(&v34, &qword_1EBD49F20);
}

uint64_t sub_1BD5465EC@<X0>(id a1@<X2>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v5 = [a1 primaryString];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1BE052434();
    v9 = v8;

    *&v54 = v7;
    *(&v54 + 1) = v9;
  }

  else
  {
    sub_1BD96C698(a2);
    *&v54 = v10;
    *(&v54 + 1) = v11;
  }

  sub_1BD0DDEBC();
  sub_1BE0506C4();
  sub_1BE04F9A4();
  sub_1BD1970E0(v54, *(&v54 + 1), v55);
  v12 = [v3 secondaryString];
  if (v12)
  {
    v13 = v12;
    sub_1BE052434();
    v49 = v3;

    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    v18 = v17;
    sub_1BE04FC94();
    v19 = sub_1BE050574();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = v18 & 1;
    v3 = v49;
    sub_1BD0DDF10(v14, v16, v26);

    v53 = v19;
    v50 = v23 & 1;
    v51 = v21;
    sub_1BD0D7F18(v19, v21, v23 & 1);
    v27 = v25;
    sub_1BE048C84();
  }

  else
  {
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v27 = 0;
  }

  v28 = [v3 tertiaryString];
  if (v28)
  {
    v29 = v28;
    sub_1BE052434();

    sub_1BD0DDEBC();
    v30 = sub_1BE0506C4();
    v32 = v31;
    v34 = v33;
    sub_1BE04FC94();
    v35 = sub_1BE050574();
    v37 = v36;
    v39 = v38;
    v41 = v40;
    sub_1BD0DDF10(v30, v32, v34 & 1);

    v42 = v39 & 1;
    v43 = v35;
    v44 = v35;
    v45 = v37;
    v46 = v42;
    sub_1BD0D7F18(v44, v37, v42);
    v47 = v41;
    sub_1BE048C84();
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  sub_1BD1970E0(v54, *(&v54 + 1), v55);
  sub_1BD1969AC(v53, v51, v50, v27);
  sub_1BD1969AC(v43, v45, v46, v47);
  sub_1BD1969F0(v53, v51, v50, v27);
  sub_1BD19711C(v54, *(&v54 + 1), v55);
  sub_1BD1969F0(v43, v45, v46, v47);
  *a3 = v54;
  *(a3 + 16) = v55;
  *(a3 + 32) = v56;
  *(a3 + 40) = v53;
  *(a3 + 48) = v51;
  *(a3 + 56) = v50;
  *(a3 + 64) = v27;
  *(a3 + 72) = v43;
  *(a3 + 80) = v45;
  *(a3 + 88) = v46;
  *(a3 + 96) = v47;
  sub_1BD1969F0(v43, v45, v46, v47);
  sub_1BD1969F0(v53, v51, v50, v27);
  return sub_1BD19711C(v54, *(&v54 + 1), v55);
}

double sub_1BD5469F4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = sub_1BE04F504();
  v26 = 1;
  sub_1BD546328(v3, v4, &v14);
  v35 = v22;
  v36 = v23;
  v37 = v24;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v38[8] = v22;
  v38[9] = v23;
  v38[10] = v24;
  v38[4] = v18;
  v38[5] = v19;
  v38[6] = v20;
  v38[7] = v21;
  v38[0] = v14;
  v38[1] = v15;
  v38[2] = v16;
  v38[3] = v17;
  sub_1BD0DE19C(&v27, &v13, &qword_1EBD49F10);
  sub_1BD0DE53C(v38, &qword_1EBD49F10);
  *&v25[119] = v34;
  *&v25[135] = v35;
  *&v25[151] = v36;
  *&v25[167] = v37;
  *&v25[55] = v30;
  *&v25[71] = v31;
  *&v25[87] = v32;
  *&v25[103] = v33;
  *&v25[7] = v27;
  *&v25[23] = v28;
  *&v25[39] = v29;
  v6 = *&v25[144];
  *(a1 + 145) = *&v25[128];
  *(a1 + 161) = v6;
  *(a1 + 177) = *&v25[160];
  v7 = *&v25[80];
  *(a1 + 81) = *&v25[64];
  *(a1 + 97) = v7;
  v8 = *&v25[112];
  *(a1 + 113) = *&v25[96];
  *(a1 + 129) = v8;
  v9 = *&v25[16];
  *(a1 + 17) = *v25;
  *(a1 + 33) = v9;
  result = *&v25[32];
  v11 = *&v25[48];
  *(a1 + 49) = *&v25[32];
  v12 = v26;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 192) = *&v25[175];
  *(a1 + 65) = v11;
  return result;
}

unint64_t sub_1BD546BB8()
{
  result = qword_1EBD49EB8;
  if (!qword_1EBD49EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49EA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD40D58);
    sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EB8);
  }

  return result;
}

uint64_t sub_1BD546CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F58);
  MEMORY[0x1EEE9AC00](v51, v3);
  v5 = &v49 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F60);
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v6);
  v50 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F68);
  v9 = *(v8 - 8);
  v55 = v8;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v60 = &v49 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F70);
  v13 = *(v12 - 8);
  v57 = v12;
  v58 = v13;
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = &v49 - v15;
  sub_1BD5473A4(v1, v5);
  v62 = *(v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  sub_1BE0516A4();
  v16 = v61;
  v17 = swift_allocObject();
  v18 = *(v1 + 80);
  *(v17 + 80) = *(v1 + 64);
  *(v17 + 96) = v18;
  *(v17 + 112) = *(v1 + 96);
  v19 = *(v1 + 16);
  *(v17 + 16) = *v1;
  *(v17 + 32) = v19;
  v20 = *(v1 + 48);
  *(v17 + 48) = *(v1 + 32);
  *(v17 + 64) = v20;
  sub_1BD54C448(v1, &v62);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F08);
  v22 = sub_1BD54C480();
  v23 = sub_1BD54C530();
  v24 = v51;
  sub_1BE051064();

  sub_1BD0DE53C(v5, &qword_1EBD49F58);
  v62 = *(v1 + 72);
  sub_1BE0516A4();
  v25 = v61;
  v26 = swift_allocObject();
  v27 = *(v1 + 80);
  *(v26 + 80) = *(v1 + 64);
  *(v26 + 96) = v27;
  *(v26 + 112) = *(v1 + 96);
  v28 = *(v1 + 16);
  *(v26 + 16) = *v1;
  *(v26 + 32) = v28;
  v29 = *(v1 + 48);
  *(v26 + 48) = *(v1 + 32);
  *(v26 + 64) = v29;
  sub_1BD54C448(v1, &v62);
  *&v62 = v24;
  *(&v62 + 1) = v21;
  v63 = v22;
  v64 = v23;
  v51 = MEMORY[0x1E6981440];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v52;
  v32 = v50;
  sub_1BE051064();

  (*(v53 + 8))(v32, v31);
  v61 = *(v2 + 40);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v33 = swift_allocObject();
  v34 = *(v2 + 80);
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = v34;
  *(v33 + 112) = *(v2 + 96);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  v36 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v36;
  sub_1BD54C448(v2, &v62);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FA8);
  *&v62 = v31;
  *(&v62 + 1) = v21;
  v63 = OpaqueTypeConformance2;
  v64 = v23;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_1BD54C5F0();
  v40 = v54;
  v41 = v55;
  v42 = v60;
  sub_1BE050F64();

  (*(v56 + 8))(v42, v41);
  v61 = *(v2 + 24);
  sub_1BE0516C4();
  v43 = swift_allocObject();
  v44 = *(v2 + 80);
  *(v43 + 80) = *(v2 + 64);
  *(v43 + 96) = v44;
  *(v43 + 112) = *(v2 + 96);
  v45 = *(v2 + 16);
  *(v43 + 16) = *v2;
  *(v43 + 32) = v45;
  v46 = *(v2 + 48);
  *(v43 + 48) = *(v2 + 32);
  *(v43 + 64) = v46;
  sub_1BD54C448(v2, &v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FE0);
  *&v62 = v41;
  *(&v62 + 1) = v37;
  v63 = v38;
  v64 = v39;
  swift_getOpaqueTypeConformance2();
  sub_1BD54C914();
  v47 = v57;
  sub_1BE050F64();

  return (*(v58 + 8))(v40, v47);
}

id sub_1BD5473A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v71 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E8);
  v78 = *(v7 - 8);
  v79 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v69 = &v68 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0F0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v73 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0F8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A100);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v77 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v68 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A108);
  v74 = *(v28 - 8);
  v75 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v72 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v68 - v33;
  v82 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0C8);
  sub_1BD54CEE4();
  v81 = v34;
  sub_1BE051A44();
  v35 = sub_1BD966A4C();
  v70 = a1;
  if (v35)
  {
    v68 = v16;
    MEMORY[0x1EEE9AC00](v35, v36);
    *(&v68 - 2) = v37;
    *(&v68 - 1) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A128);
    sub_1BD54D208();
    sub_1BE051A44();

    v16 = v68;
    (*(v17 + 32))(v27, v20, v68);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = 1;
  (*(v17 + 56))(v27, v38, 1, v16);
  v40 = sub_1BD966F28();
  if (!v40)
  {
    v56 = v79;
    v58 = v80;
    v57 = v78;
    goto LABEL_8;
  }

  v68 = &v68;
  v42 = MEMORY[0x1EEE9AC00](v40, v41);
  v43 = v70;
  v44 = v71;
  *(&v68 - 2) = v45;
  *(&v68 - 1) = v43;
  (*(v4 + 104))(v44, *MEMORY[0x1E69B80F0], v3, v42);
  result = PKPassKitBundle();
  v47 = v80;
  if (result)
  {
    v48 = result;
    v49 = sub_1BE04B6F4();
    v51 = v50;

    (*(v4 + 8))(v44, v3);
    v83 = v49;
    v84 = v51;
    sub_1BD0DDEBC();
    v83 = sub_1BE0506C4();
    v84 = v52;
    v85 = v53 & 1;
    v86 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A118);
    sub_1BD54D10C(&qword_1EBD4A120, &qword_1EBD4A118);
    v55 = v69;
    sub_1BE051A24();

    v57 = v78;
    v56 = v79;
    v58 = v47;
    (*(v78 + 32))(v47, v55, v79);
    v39 = 0;
LABEL_8:
    (*(v57 + 56))(v58, v39, 1, v56);
    v59 = v74;
    v60 = v75;
    v61 = *(v74 + 16);
    v62 = v72;
    v61(v72, v81, v75);
    v63 = v77;
    sub_1BD0DE19C(v27, v77, &qword_1EBD4A100);
    v80 = v27;
    v64 = v73;
    sub_1BD0DE19C(v58, v73, &qword_1EBD4A0F0);
    v65 = v76;
    v61(v76, v62, v60);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A110);
    sub_1BD0DE19C(v63, &v65[*(v66 + 48)], &qword_1EBD4A100);
    sub_1BD0DE19C(v64, &v65[*(v66 + 64)], &qword_1EBD4A0F0);
    sub_1BD0DE53C(v58, &qword_1EBD4A0F0);
    sub_1BD0DE53C(v80, &qword_1EBD4A100);
    v67 = *(v59 + 8);
    v67(v81, v60);
    sub_1BD0DE53C(v64, &qword_1EBD4A0F0);
    sub_1BD0DE53C(v63, &qword_1EBD4A100);
    return (v67)(v62, v60);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD547B84(uint64_t a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v8[0] = v2;
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  v8[13] = *(v2 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a1 + 96);
  v5 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v5;
  v6 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0);
  sub_1BD0DE4F4(&qword_1EBD49EC8, &qword_1EBD49EC0);
  sub_1BD54BCFC(&qword_1EBD49ED0, &qword_1EBD4AB10);
  sub_1BD54CF68();
  return sub_1BE0519C4();
}

uint64_t sub_1BD547D60(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A140);
  sub_1BD0DE4F4(&qword_1EBD4A068, &qword_1EBD4A060);
  sub_1BD54BCFC(&qword_1EBD4A070, &qword_1EBD59CA0);
  sub_1BD54D28C();
  return sub_1BE0519C4();
}

uint64_t sub_1BD547EE0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_1BE04FB64();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A058);
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v48 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A150);
  v13 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v14);
  v16 = v48 - v15;
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17, v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = [v23 startDate];
  sub_1BE04AEE4();

  v25 = sub_1BE04AE64();
  (*(v18 + 8))(v22, v17);
  v26 = PKMonthStringFromDate();

  if (v26)
  {
    v27 = sub_1BE052434();
    v29 = v28;

    v30 = swift_allocObject();
    v48[1] = v48;
    v31 = *(a2 + 80);
    *(v30 + 80) = *(a2 + 64);
    *(v30 + 96) = v31;
    v32 = *(a2 + 96);
    v33 = *(a2 + 16);
    *(v30 + 16) = *a2;
    *(v30 + 32) = v33;
    v34 = *(a2 + 48);
    *(v30 + 48) = *(a2 + 32);
    *(v30 + 64) = v34;
    *(v30 + 112) = v32;
    *(v30 + 120) = v23;
    MEMORY[0x1EEE9AC00](v30, v35);
    v48[-4] = v23;
    v48[-3] = v27;
    v48[-2] = v29;
    sub_1BD54C448(a2, v55);
    v36 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A080);
    sub_1BD54CD90();
    sub_1BE051704();

    sub_1BE04FB54();
    sub_1BD0DE4F4(&qword_1EBD4A050, &qword_1EBD4A058);
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    v37 = v50;
    v38 = v52;
    sub_1BE050894();
    (*(v51 + 8))(v8, v38);
    (*(v49 + 8))(v12, v37);
    v39 = sub_1BE051464();
    KeyPath = swift_getKeyPath();
    v41 = v53;
    v42 = &v16[*(v53 + 36)];
    *v42 = KeyPath;
    v42[1] = v39;
    v43 = v54;
    sub_1BD0DE204(v16, v54, &qword_1EBD4A150);
    v44 = 0;
    v45 = v43;
    v46 = v41;
  }

  else
  {
    v44 = 1;
    v46 = v53;
    v45 = v54;
  }

  return (*(v13 + 56))(v45, v44, 1, v46);
}

uint64_t sub_1BD5483B8(uint64_t a1, void *a2)
{
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD54841C(uint64_t a1, void *a2)
{
  if (*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    return sub_1BE0516B4();
  }

  return result;
}

uint64_t sub_1BD548480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - v7;
  v14 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  sub_1BE0516A4();
  v9 = v13;
  if (v13)
  {
    sub_1BD5485CC(v13, v8);

    sub_1BD0DE204(v8, a2, &qword_1EBD49FC0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return (*(v5 + 56))(a2, v10, 1, v4);
}

uint64_t sub_1BD5485CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v102 = a2;
  v5 = [a1 startDate];
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04AEE4();

  v11 = sub_1BE04AE64();
  (*(v7 + 8))(v10, v6);
  v12 = PKMonthAndYearStringFromDate();

  if (v12)
  {
    v13 = sub_1BE052434();
    v15 = v14;

    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0A8);
    v100 = v81;
    v98 = *(v99 - 8);
    MEMORY[0x1EEE9AC00](v99, v16);
    v97 = v81 - v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FC8);
    v96 = v81;
    v95 = v18;
    v94 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18, v19);
    v93 = v81 - v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FD0);
    v91 = v81;
    v92 = v21;
    v90 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v21, v22);
    v101 = v81 - v23;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371C8);
    v88 = *(v89 - 8);
    MEMORY[0x1EEE9AC00](v89, v24);
    v26 = v81 - v25;
    MEMORY[0x1EEE9AC00](v27, v28);
    v81[-4] = v3;
    v81[-3] = v13;
    v81[-2] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0B0);
    sub_1BD54CE54(&qword_1EBD4A0B8, &qword_1EBD4A0B0, &unk_1BE0E07A0, sub_1BD54CEE4);
    v87 = v26;
    sub_1BE0504A4();

    sub_1BE0528A4();
    v29 = a1;
    sub_1BD54C448(v3, &v104);
    v30 = sub_1BE052894();
    v31 = swift_allocObject();
    v32 = *(v3 + 32);
    *(v31 + 88) = *(v3 + 48);
    v33 = *(v3 + 80);
    *(v31 + 104) = *(v3 + 64);
    *(v31 + 120) = v33;
    v34 = *(v3 + 16);
    *(v31 + 40) = *v3;
    *(v31 + 56) = v34;
    v35 = MEMORY[0x1E69E85E0];
    *(v31 + 16) = v30;
    *(v31 + 24) = v35;
    *(v31 + 32) = v29;
    *(v31 + 136) = *(v3 + 96);
    *(v31 + 72) = v32;
    v86 = sub_1BE0528D4();
    v36 = *(v86 - 8);
    v37 = *(v36 + 64);
    MEMORY[0x1EEE9AC00](v86, v38);
    v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
    v40 = v81 - v39;
    sub_1BE0528B4();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v83 = sub_1BE04EAA4();
      v84 = v81;
      v82 = *(v83 - 8);
      MEMORY[0x1EEE9AC00](v83, v41);
      v85 = v81;
      v43 = v81 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v104 = 0;
      v105 = 0xE000000000000000;
      sub_1BE053834();

      v104 = 0xD000000000000037;
      v105 = 0x80000001BE12E070;
      v103 = 264;
      v44 = sub_1BE053B24();
      MEMORY[0x1BFB3F610](v44);

      v81[1] = v81;
      v47 = MEMORY[0x1EEE9AC00](v45, v46);
      v48 = v81 - v39;
      v49 = v81 - v39;
      v50 = v86;
      (*(v36 + 16))(v48, v49, v86, v47);
      sub_1BE04EA94();
      (*(v36 + 8))(v40, v50);
      v51 = v101;
      v52 = v89;
      (*(v88 + 32))(v101, v87, v89);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371D0);
      (*(v82 + 32))(&v51[*(v53 + 36)], v43, v83);
    }

    else
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD371D8);
      v57 = v101;
      v58 = &v101[*(v56 + 36)];
      v59 = sub_1BE04E7B4();
      (*(v36 + 32))(&v58[*(v59 + 20)], v81 - v39, v86);
      *v58 = &unk_1BE0E07B8;
      *(v58 + 1) = v31;
      v60 = v57;
      v52 = v89;
      (*(v88 + 32))(v60, v87, v89);
    }

    v61 = sub_1BE04ECF4();
    v62 = *(v61 - 8);
    MEMORY[0x1EEE9AC00](v61, v63);
    v65 = v81 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1BE051DD4();
    v66 = sub_1BD0DE4F4(&qword_1EBD49FD8, &qword_1EBD371C8);
    v104 = v52;
    v105 = v66;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    v69 = v93;
    v70 = v92;
    v71 = v101;
    sub_1BE051134();
    (*(v62 + 8))(v65, v61);
    v72 = (*(v90 + 8))(v71, v70);
    MEMORY[0x1EEE9AC00](v72, v73);
    v81[-2] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0);
    v104 = v70;
    v105 = v61;
    v106 = OpaqueTypeConformance2;
    v107 = v68;
    swift_getOpaqueTypeConformance2();
    v74 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
    v75 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    v104 = v74;
    v105 = v75;
    swift_getOpaqueTypeConformance2();
    v76 = v97;
    v77 = v95;
    sub_1BE051024();
    (*(v94 + 8))(v69, v77);
    v79 = v98;
    v78 = v99;
    v80 = v102;
    (*(v98 + 32))(v102, v76, v99);
    return (*(v79 + 56))(v80, 0, 1, v78);
  }

  else
  {
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0A8);
    return (*(*(v54 - 8) + 56))(v102, 1, 1, v54);
  }
}

uint64_t sub_1BD549168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = sub_1BE04ECF4();
  v42 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FF8);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49FF0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v46 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A008);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v44 = &v35 - v17;
  v47 = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  sub_1BE0516A4();
  v18 = v50;
  if (!v50)
  {
    goto LABEL_5;
  }

  v19 = sub_1BD967304(v50);
  if (!v19)
  {

LABEL_5:
    v33 = 1;
    return (*(v15 + 56))(a2, v33, 1, v14);
  }

  v35 = &v35;
  MEMORY[0x1EEE9AC00](v19, v20);
  *(&v35 - 4) = v21;
  *(&v35 - 3) = a1;
  v36 = a1;
  *(&v35 - 2) = v18;
  v38 = v11;
  v39 = v14;
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A010);
  v37 = v10;
  sub_1BD54CE54(&qword_1EBD4A018, &qword_1EBD4A010, &unk_1BE0E0700, sub_1BD54CB34);
  sub_1BE0504A4();

  sub_1BE051DD4();
  v22 = sub_1BD0DE4F4(&qword_1EBD4A000, &qword_1EBD49FF8);
  v23 = sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  v25 = v45;
  v24 = v46;
  v26 = v43;
  sub_1BE051134();
  (v42[1])(v6, v25);
  v27 = (*(v41 + 8))(v9, v26);
  v42 = &v35;
  MEMORY[0x1EEE9AC00](v27, v28);
  *(&v35 - 2) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACE0);
  *&v47 = v26;
  *(&v47 + 1) = v25;
  v48 = v22;
  v49 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
  v14 = v39;
  v30 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
  *&v47 = v29;
  *(&v47 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v44;
  v32 = v37;
  a2 = v40;
  sub_1BE051024();

  (*(v38 + 8))(v24, v32);
  (*(v15 + 32))(a2, v31, v14);
  v33 = 0;
  return (*(v15 + 56))(a2, v33, 1, v14);
}

uint64_t sub_1BD549728(uint64_t a1, uint64_t a2)
{
  v12[13] = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A078);
  sub_1BD0DE4F4(&qword_1EBD4A068, &qword_1EBD4A060);
  sub_1BD54BCFC(&qword_1EBD4A070, &qword_1EBD59CA0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A040);
  v8 = sub_1BE04FB64();
  v9 = sub_1BD54CBE4();
  v10 = sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
  v12[0] = v7;
  v12[1] = v8;
  v12[2] = v9;
  v12[3] = v10;
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD549934(void **a1, uint64_t a2)
{
  v4 = sub_1BE04FB64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A040);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-v11];
  v13 = *a1;
  v14 = swift_allocObject();
  v15 = *(a2 + 80);
  *(v14 + 80) = *(a2 + 64);
  *(v14 + 96) = v15;
  v16 = *(a2 + 96);
  v17 = *(a2 + 16);
  *(v14 + 16) = *a2;
  *(v14 + 32) = v17;
  v18 = *(a2 + 48);
  *(v14 + 48) = *(a2 + 32);
  *(v14 + 64) = v18;
  *(v14 + 112) = v16;
  *(v14 + 120) = v13;
  v25 = v13;
  sub_1BD54C448(a2, v26);
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A080);
  sub_1BD54CD90();
  sub_1BE051704();
  v20 = sub_1BE051464();
  KeyPath = swift_getKeyPath();
  v22 = &v12[*(v9 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  sub_1BE04FB54();
  sub_1BD54CBE4();
  sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
  sub_1BE050894();
  (*(v5 + 8))(v8, v4);
  return sub_1BD0DE53C(v12, &qword_1EBD4A040);
}

uint64_t sub_1BD549BB0(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  return sub_1BE0516B4();
}

uint64_t sub_1BD549C08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A098);
  sub_1BD0DE4F4(&qword_1EBD4A090, &qword_1EBD4A098);
  return sub_1BE04E844();
}

void sub_1BD549CD8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE052404();
  v10 = PKLocalizedSettingsString(v9);

  if (v10)
  {
    sub_1BE052434();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1BE0B69E0;
    v12 = [a1 startDate];
    sub_1BE04AEE4();

    v13 = sub_1BE04AE64();
    (*(v5 + 8))(v8, v4);
    v14 = PKYearStringFromDate();

    if (v14)
    {
      v15 = sub_1BE052434();
      v17 = v16;

      *(v11 + 56) = MEMORY[0x1E69E6158];
      *(v11 + 64) = sub_1BD110550();
      *(v11 + 32) = v15;
      *(v11 + 40) = v17;
      v18 = sub_1BE052454();
      v20 = v19;

      v24[0] = v18;
      v24[1] = v20;
      sub_1BD0DDEBC();
      *a2 = sub_1BE0506C4();
      *(a2 + 8) = v21;
      *(a2 + 16) = v22 & 1;
      *(a2 + 24) = v23;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD549EF0()
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE0506C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0C8);
  sub_1BD54CEE4();
  return sub_1BE051A24();
}

uint64_t sub_1BD549FB8(uint64_t a1)
{
  v7[0] = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E0);
  sub_1BE0516A4();
  swift_getKeyPath();
  v2 = swift_allocObject();
  v3 = *(a1 + 80);
  *(v2 + 80) = *(a1 + 64);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(a1 + 96);
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  v5 = *(a1 + 48);
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = v5;
  sub_1BD54C448(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49EC0);
  sub_1BD0DE4F4(&qword_1EBD49EC8, &qword_1EBD49EC0);
  sub_1BD54BCFC(&qword_1EBD49ED0, &qword_1EBD4AB10);
  sub_1BD54CF68();
  return sub_1BE0519C4();
}

void sub_1BD54A134(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v9 = v6;
  v10 = v4;
  v11 = [v8 initWithPaymentPass_];
  v12 = [objc_opt_self() presentationInformationForTransaction:v10 transactionSource:v11 secondaryTransactionSource:0 familyMember:0 account:v7 deviceName:0 context:0];

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v12;
}

uint64_t sub_1BD54A1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v5 = sub_1BE04AF64();
  v4[29] = v5;
  v4[30] = *(v5 - 8);
  v4[31] = swift_task_alloc();
  sub_1BE0528A4();
  v4[32] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[33] = v7;
  v4[34] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD54A2F0, v7, v6);
}

uint64_t sub_1BD54A2F0()
{
  if ([*(v0 + 216) transactionCount] >= 1 && (v1 = **(v0 + 224), swift_getKeyPath(), *(v0 + 176) = v1, sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel), sub_1BE04B594(), , v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactionSourceCollection), v3 = objc_allocWithZone(MEMORY[0x1E69B8BD8]), v4 = v2, v5 = objc_msgSend(v3, sel_init), v6 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E69B8788]), sel_initWithTransactionSourceCollection_paymentDataProvider_, v4, v5), *(v0 + 280) = v6, v5, v4, v6))
  {
    v8 = *(v0 + 240);
    v7 = *(v0 + 248);
    v9 = *(v0 + 232);
    v10 = *(v0 + 216);
    v11 = [v10 startDate];
    sub_1BE04AEE4();

    v12 = sub_1BE04AE64();
    v13 = *(v8 + 8);
    v13(v7, v9);
    v14 = [v10 endDate];
    sub_1BE04AEE4();

    v15 = sub_1BE04AE64();
    v13(v7, v9);
    [v6 setLimit:0x7FFFFFFFFFFFFFFFLL startDate:v12 endDate:v15];

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 184;
    *(v0 + 24) = sub_1BD54A62C;
    v16 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BD9C18BC;
    *(v0 + 104) = &block_descriptor_119;
    *(v0 + 112) = v16;
    [v6 reloadTransactionsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1BD54A62C()
{
  v1 = *(*v0 + 272);
  v2 = *(*v0 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1BD54A734, v2, v1);
}

uint64_t sub_1BD54A734()
{

  v1 = *(v0 + 184);
  if (v1)
  {
    v2 = *(*(v0 + 224) + 88);
    *(v0 + 192) = v1;
    v3 = *(v0 + 280);
    *(v0 + 160) = v2;
    *(v0 + 144) = v2;
    sub_1BD0DE19C(v0 + 160, v0 + 200, &qword_1EBD49EC0);
    sub_1BD0DE19C(v0 + 168, v0 + 208, &qword_1EBD4A0D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E0);
    sub_1BE0516B4();

    sub_1BD0DE53C(v0 + 160, &qword_1EBD49EC0);
    sub_1BD0DE53C(v0 + 168, &qword_1EBD4A0D8);
  }

  else
  {
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BD54A888(uint64_t a1)
{
  v6 = *(a1 + 40);
  LOBYTE(v5[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v6 = *(a1 + 72);
  v5[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  sub_1BE0516B4();
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v7 = v3;
  v8 = v2;
  *&v6 = v2;
  *(&v6 + 1) = v3;
  sub_1BD0DE19C(&v8, v5, &qword_1EBD49EC0);
  sub_1BD0DE19C(&v7, v5, &qword_1EBD4A0D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0E0);
  sub_1BE0516A4();

  v5[0] = v2;
  v5[1] = v3;
  sub_1BE0516B4();
  sub_1BD0DE53C(&v8, &qword_1EBD49EC0);
  return sub_1BD0DE53C(&v7, &qword_1EBD4A0D8);
}

void sub_1BD54A9E8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1BE04AF64();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = a1;
  v23 = a2;
  v12 = [a3 startDate];
  sub_1BE04AEE4();

  v13 = sub_1BE04AE64();
  (*(v7 + 8))(v11, v6);
  v14 = PKYearStringFromDate();

  if (v14)
  {
    v15 = sub_1BE052434();
    v17 = v16;

    v24 = v15;
    v25 = v17;
    sub_1BD0DDEBC();
    v24 = sub_1BE0506C4();
    v25 = v18;
    v26 = v19 & 1;
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A028);
    sub_1BD54CB34();
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD54ABB4(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a2 + 80);
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = v4;
  *(v3 + 112) = *(a2 + 96);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  v6 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v6;
  sub_1BE048C84();
  sub_1BD54C448(a2, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A038);
  sub_1BD0DE4F4(&qword_1EBD4A068, &qword_1EBD4A060);
  sub_1BD54BCFC(&qword_1EBD4A070, &qword_1EBD59CA0);
  sub_1BD54D10C(&qword_1EBD4A030, &qword_1EBD4A038);
  return sub_1BE0519C4();
}

uint64_t sub_1BD54AD68@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE04FB64();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A040);
  MEMORY[0x1EEE9AC00](v47, v10);
  v12 = &v45 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A078);
  v13 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v14);
  v46 = &v45 - v15;
  v16 = sub_1BE04AF64();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = [v22 startDate];
  sub_1BE04AEE4();

  v24 = sub_1BE04AE64();
  (*(v17 + 8))(v21, v16);
  v25 = PKMonthStringFromDate();

  if (v25)
  {
    v26 = sub_1BE052434();
    v28 = v27;

    v29 = swift_allocObject();
    v45 = &v45;
    v30 = *(a2 + 80);
    *(v29 + 80) = *(a2 + 64);
    *(v29 + 96) = v30;
    v31 = *(a2 + 96);
    v32 = *(a2 + 16);
    *(v29 + 16) = *a2;
    *(v29 + 32) = v32;
    v33 = *(a2 + 48);
    *(v29 + 48) = *(a2 + 32);
    *(v29 + 64) = v33;
    *(v29 + 112) = v31;
    *(v29 + 120) = v22;
    MEMORY[0x1EEE9AC00](v29, v34);
    *(&v45 - 4) = v22;
    *(&v45 - 3) = v26;
    *(&v45 - 2) = v28;
    sub_1BD54C448(a2, v51);
    v35 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A080);
    sub_1BD54CD90();
    sub_1BE051704();

    v36 = sub_1BE051464();
    KeyPath = swift_getKeyPath();
    v38 = &v12[*(v47 + 36)];
    *v38 = KeyPath;
    v38[1] = v36;
    sub_1BE04FB54();
    sub_1BD54CBE4();
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    v39 = v46;
    v40 = v49;
    sub_1BE050894();
    (*(v48 + 8))(v9, v40);
    sub_1BD0DE53C(v12, &qword_1EBD4A040);
    v41 = v50;
    (*(v13 + 32))(a3, v39, v50);
    v42 = 0;
    v43 = v41;
  }

  else
  {
    v42 = 1;
    v43 = v50;
  }

  return (*(v13 + 56))(a3, v42, 1, v43);
}

uint64_t sub_1BD54B1F0(uint64_t a1, void *a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  return sub_1BE0516B4();
}

uint64_t sub_1BD54B248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A098);
  sub_1BD0DE4F4(&qword_1EBD4A090, &qword_1EBD4A098);
  return sub_1BE04E844();
}

uint64_t sub_1BD54B308@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1BE04C744();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1BE04C734();
  v33 = *(v37 - 8);
  v8 = v33;
  MEMORY[0x1EEE9AC00](v37, v9);
  v36 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = &v32 - v14;
  v38 = [a1 transactionCount];
  v38 = sub_1BE053B24();
  v39 = v16;
  sub_1BD0DDEBC();
  v17 = sub_1BE0506C4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v4 + 104))(v7, *MEMORY[0x1E69BC950], v3);
  v34 = v15;
  sub_1BE04C724();
  LOBYTE(v38) = v21 & 1;
  v24 = *(v8 + 16);
  v25 = v36;
  v26 = v37;
  v24(v36, v15, v37);
  LOBYTE(v4) = v38;
  v27 = v35;
  *v35 = v17;
  v27[1] = v19;
  *(v27 + 16) = v4;
  v27[3] = v23;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A0A0);
  v29 = v25;
  v24(v27 + *(v28 + 48), v25, v26);
  sub_1BD0D7F18(v17, v19, v4);
  v30 = *(v33 + 8);
  sub_1BE048C84();
  v30(v34, v26);
  v30(v29, v26);
  sub_1BD0DDF10(v17, v19, v38);
}

uint64_t sub_1BD54B5D0@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1BD54B63C(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB14();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

id sub_1BD54B81C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v19 = v10;
    v20 = v12;
    v13 = swift_allocObject();
    v14 = *(a1 + 80);
    *(v13 + 80) = *(a1 + 64);
    *(v13 + 96) = v14;
    *(v13 + 112) = *(a1 + 96);
    v15 = *(a1 + 16);
    *(v13 + 16) = *a1;
    *(v13 + 32) = v15;
    v16 = *(a1 + 48);
    *(v13 + 48) = *(a1 + 32);
    *(v13 + 64) = v16;
    sub_1BD54C448(a1, v18);
    sub_1BD0DDEBC();
    return sub_1BE051744();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD54B9D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49F78);
  sub_1BE0516B4();
  return sub_1BE0516B4();
}

uint64_t sub_1BD54BAD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1BD54C8C4(&qword_1EBD3DBA8, type metadata accessor for TransactionsModel);
  sub_1BE04B594();

  *a2 = *(v3 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__transactions);
  return sub_1BE048C84();
}

uint64_t sub_1BD54BBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsTransactionSection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD54BC18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsTransactionSection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1BD54BC7C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SettingsTransactionSection();

  return sub_1BD545B14(a1, a2);
}

uint64_t sub_1BD54BCFC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BD0E5E8C(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD54BD40()
{
  result = qword_1EBD49ED8;
  if (!qword_1EBD49ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49ED8);
  }

  return result;
}

unint64_t sub_1BD54BD94()
{
  result = qword_1EBD49EE8;
  if (!qword_1EBD49EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49EE0);
    sub_1BD54BE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EE8);
  }

  return result;
}

unint64_t sub_1BD54BE18()
{
  result = qword_1EBD49EF0;
  if (!qword_1EBD49EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EF0);
  }

  return result;
}

unint64_t sub_1BD54BE6C()
{
  result = qword_1EBD49EF8;
  if (!qword_1EBD49EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49E80);
    sub_1BD54BD40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49EF8);
  }

  return result;
}

uint64_t objectdestroyTm_54()
{
  v1 = (type metadata accessor for SettingsTransactionSection() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[7];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49E58);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_1BD54C000(uint64_t a1, unsigned __int8 *a2)
{
  type metadata accessor for SettingsTransactionSection();

  sub_1BD545694(a1, a2);
}

id sub_1BD54C080(void (*a1)(char *, uint64_t))
{
  v38 = a1;
  v1 = sub_1BE04AF64();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v36 - v7;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v37 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v36 - v16;
  v18 = *MEMORY[0x1E69B80F0];
  v19 = *(v10 + 104);
  v19(&v36 - v16, v18, v9, v15);
  result = PKPassKitBundle();
  if (result)
  {
    v21 = result;
    v41 = sub_1BE04B6F4();
    v23 = v22;

    v24 = *(v10 + 8);
    v24(v17, v9);
    v25 = [v38 transactionDate];
    if (v25)
    {
      v38 = v24;
      v26 = v25;
      sub_1BE04AEE4();

      (*(v39 + 32))(v8, v4, v40);
      v27 = sub_1BE04AE64();
      v28 = PKRelativeDateString();

      if (v28)
      {
        v36 = sub_1BE052434();
        v30 = v29;

        v31 = v37;
        (v19)(v37, v18, v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1BE0B6CA0;
        v33 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1BD110550();
        *(v32 + 32) = v41;
        *(v32 + 40) = v23;
        *(v32 + 96) = v33;
        *(v32 + 104) = v34;
        v35 = v36;
        *(v32 + 64) = v34;
        *(v32 + 72) = v35;
        *(v32 + 80) = v30;
        v41 = sub_1BE04B714();

        v38(v31, v9);
      }

      (*(v39 + 8))(v8, v40);
    }

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD54C480()
{
  result = qword_1EBD49F80;
  if (!qword_1EBD49F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F58);
    sub_1BD0DE4F4(&qword_1EBD49F88, &qword_1EBD49F90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49F80);
  }

  return result;
}

unint64_t sub_1BD54C530()
{
  result = qword_1EBD49F98;
  if (!qword_1EBD49F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49F08);
    sub_1BD54BCFC(&qword_1EBD49FA0, &qword_1EBD59CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49F98);
  }

  return result;
}

unint64_t sub_1BD54C5F0()
{
  result = qword_1EBD49FB0;
  if (!qword_1EBD49FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FA8);
    sub_1BD54C674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49FB0);
  }

  return result;
}

unint64_t sub_1BD54C674()
{
  result = qword_1EBD49FB8;
  if (!qword_1EBD49FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FD0);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD371C8);
    sub_1BD0DE4F4(&qword_1EBD49FD8, &qword_1EBD371C8);
    swift_getOpaqueTypeConformance2();
    sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
    sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49FB8);
  }

  return result;
}

uint64_t sub_1BD54C8C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD54C914()
{
  result = qword_1EBD49FE8;
  if (!qword_1EBD49FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49FF8);
    sub_1BE04ECF4();
    sub_1BD0DE4F4(&qword_1EBD4A000, &qword_1EBD49FF8);
    sub_1BD54C8C4(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3ACD0);
    sub_1BD0DE4F4(&qword_1EBD3ACD8, &qword_1EBD3ACD0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49FE8);
  }

  return result;
}

unint64_t sub_1BD54CB34()
{
  result = qword_1EBD4A020;
  if (!qword_1EBD4A020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A028);
    sub_1BD54D10C(&qword_1EBD4A030, &qword_1EBD4A038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A020);
  }

  return result;
}

unint64_t sub_1BD54CBE4()
{
  result = qword_1EBD4A048;
  if (!qword_1EBD4A048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A040);
    sub_1BD0DE4F4(&qword_1EBD4A050, &qword_1EBD4A058);
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A048);
  }

  return result;
}

unint64_t sub_1BD54CD90()
{
  result = qword_1EBD4A088;
  if (!qword_1EBD4A088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A080);
    sub_1BD0DE4F4(&qword_1EBD4A090, &qword_1EBD4A098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A088);
  }

  return result;
}

uint64_t sub_1BD54CE54(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD54CEE4()
{
  result = qword_1EBD4A0C0;
  if (!qword_1EBD4A0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A0C8);
    sub_1BD54CF68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A0C0);
  }

  return result;
}

unint64_t sub_1BD54CF68()
{
  result = qword_1EBD4A0D0;
  if (!qword_1EBD4A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A0D0);
  }

  return result;
}

uint64_t sub_1BD54CFBC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BD0F985C;

  return sub_1BD54A1FC(v2, v3, v4, (v0 + 5));
}

uint64_t sub_1BD54D10C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A040);
    sub_1BE04FB64();
    sub_1BD54CBE4();
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD54D208()
{
  result = qword_1EBD4A130;
  if (!qword_1EBD4A130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A128);
    sub_1BD54D28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A130);
  }

  return result;
}

unint64_t sub_1BD54D28C()
{
  result = qword_1EBD4A138;
  if (!qword_1EBD4A138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A140);
    sub_1BD54D310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A138);
  }

  return result;
}

unint64_t sub_1BD54D310()
{
  result = qword_1EBD4A148;
  if (!qword_1EBD4A148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A150);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A058);
    sub_1BE04FB64();
    sub_1BD0DE4F4(&qword_1EBD4A050, &qword_1EBD4A058);
    sub_1BD54C8C4(&qword_1EBD3F3E0, MEMORY[0x1E697C720]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD366E0, &unk_1EBD491A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A148);
  }

  return result;
}

uint64_t objectdestroy_56Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_30Tm()
{

  return swift_deallocObject();
}

Swift::Void __swiftcall UIView.applyGlassBackground()()
{
  v0 = sub_1BE04D3F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04D414();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v8[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D3E4();
  sub_1BE04D424();
  v8[3] = v2;
  v8[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v8);
  sub_1BE04D404();
  (*(v3 + 8))(v6, v2);
  sub_1BE052F84();
}

void sub_1BD54D7D0(void *a1)
{
  v2 = sub_1BE04D3F4();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1BE04D414();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1;
  sub_1BE04D3E4();
  sub_1BE04D424();
  v11[3] = v4;
  v11[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_1BE04D404();
  (*(v5 + 8))(v8, v4);
  sub_1BE052F84();
}

void sub_1BD54D978(void *a1)
{
  v1 = a1;
  UIButton.pkui_applyGlassButtonConfiguration()();
}

uint64_t sub_1BD54D9D8(void (*a1)(double))
{
  v2 = sub_1BE053104();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE053204();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v10);
  (*(v8 + 104))(v12, *MEMORY[0x1E69DC558], v7);
  sub_1BE0530F4();
  (*(v3 + 104))(v6, *MEMORY[0x1E69DC508], v2);
  return sub_1BE053124();
}

id sub_1BD54DB84(uint64_t a1, uint64_t a2, void (*a3)(double))
{
  v4 = sub_1BE053104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE053204();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE053274();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v17);
  (*(v10 + 104))(v13, *MEMORY[0x1E69DC558], v9);
  sub_1BE0530F4();
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC508], v4);
  sub_1BE053124();
  v20 = sub_1BE0531C4();
  (*(v15 + 8))(v19, v14);

  return v20;
}

uint64_t sub_1BD54DDE0(void (*a1)(double))
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3D100);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v26 - v3;
  v27 = sub_1BE053104();
  v5 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE053204();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BE053274();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = &v26 - v22;
  v28(v21);
  (*(v10 + 104))(v13, *MEMORY[0x1E69DC558], v9);
  sub_1BE0530F4();
  (*(v5 + 104))(v8, *MEMORY[0x1E69DC508], v27);
  sub_1BE053124();
  sub_1BE053244();
  v24 = *(v15 + 8);
  v24(v23, v14);
  (*(v15 + 32))(v23, v18, v14);
  (*(v15 + 16))(v4, v23, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  sub_1BE0532A4();
  return (v24)(v23, v14);
}

void sub_1BD54E114(void *a1)
{
  v1 = a1;
  UIButton.pkui_applyTintedGlassButtonConfiguration()();
}

id sub_1BD54E250()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v9 = [objc_allocWithZone(PKPaymentSetupBankAppDisambiguationViewController) initWithProvisioningController:v7 context:v8 delegate:0 paymentSetupProduct:*(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_product) inAppMethod:*(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_inApp) cameraCaptureMethod:*(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_cameraCapture)];

  [v9 setFlowDelegate_];
  sub_1BE052434();
  v10 = sub_1BE04BB74();

  [v9 setReporter_];

  return v9;
}

uint64_t sub_1BD54E3FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD54E438(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD54E548()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_context);
  v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_product);
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_inApp);
  objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
  sub_1BE048964();
  v5 = v3;
  v6 = v4;
  v10 = sub_1BD9DC084(v2, v5, v4);
  v7 = v1 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BAD090, v10, &off_1F3BCB048, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD54E670()
{
  v1 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v2 = sub_1BE048964();
  v6 = sub_1BD87126C(v2, 0, 0);
  v3 = v0 + OBJC_IVAR____TtC9PassKitUI37PaymentSetupAppDisambiguationFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BAD090, v6, &off_1F3BC0AB0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD54E838(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04BAC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_product);
  sub_1BE04BC34();
  v12 = sub_1BE04B9A4();
  (*(v7 + 8))(v10, v6);
  v13 = [objc_allocWithZone(PKPaymentSetupProductProvidersViewController) initWithProduct:v11 showOtherProviders:1 context:v12];
  [v13 setFlowDelegate_];
  sub_1BE052434();
  v14 = sub_1BE04BB74();

  [v13 setReporter_];

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = v13;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_1BD54EF80;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor_120;
  v17 = _Block_copy(aBlock);
  v18 = v13;
  sub_1BE048964();

  [v18 preflightWithCompletion_];
  _Block_release(v17);
}

id sub_1BD54EAA0(char a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v10 = sub_1BE04BD74();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = v37 - v17;
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return a4(1);
    }

    v21 = Strong;
    v22 = *(Strong + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController);
    *(Strong + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController) = a3;

    v23 = a3;
LABEL_11:

    return a4(1);
  }

  v37[1] = a2;
  v37[2] = a5;
  v38 = a4;
  v24 = *MEMORY[0x1E69B80D8];
  v39 = *(v11 + 104);
  v39(v37 - v17, v24, v10, v18);
  result = PKPassKitBundle();
  if (result)
  {
    v26 = result;
    sub_1BE04B6F4();

    v27 = *(v11 + 8);
    v27(v19, v10);
    v28 = sub_1BE052404();

    v21 = [objc_opt_self() alertControllerWithTitle:v28 message:0 preferredStyle:1];

    (v39)(v14, v24, v10);
    result = PKPassKitBundle();
    if (result)
    {
      v29 = result;
      sub_1BE04B6F4();

      v27(v14, v10);
      v30 = sub_1BE052404();

      v31 = [objc_opt_self() actionWithTitle:v30 style:1 handler:0];

      [v21 addAction_];
      PKApplyDefaultIconToAlertController(v21);
      swift_beginAccess();
      v32 = swift_unknownObjectWeakLoadStrong();
      a4 = v38;
      if (v32)
      {
        v33 = v32;
        v34 = v32 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v34 + 8);

          ObjectType = swift_getObjectType();
          (*(v35 + 24))(v21, ObjectType, v35);

          swift_unknownObjectRelease();
          goto LABEL_11;
        }
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD54EE44()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD54EE80(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD54EED0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController);
  if (v1 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_viewController);
  }

  v3 = v1;
  return v2;
}

id sub_1BD54EF8C(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 type];
  if (v10 <= 8)
  {
    if (((1 << v10) & 0x19F) == 0)
    {
      if (v10 == 5)
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v26 = *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_context);
          v27 = *(v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_product);
          objc_allocWithZone(type metadata accessor for PaymentSetupAppRequiredFlowItem());
          v28 = a1;
          sub_1BE048964();
          v21 = sub_1BD9DC084(v26, v27, v22);
          v22 = &off_1F3BCB048;
          goto LABEL_9;
        }
      }

      else
      {
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v29 = type metadata accessor for PaymentSetupOpenAppClipFlowItem();
          v30 = objc_allocWithZone(v29);
          *&v30[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v31 = &v30[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_identifier];
          *v31 = 0xD000000000000013;
          *(v31 + 1) = 0x80000001BE123E30;
          *&v30[OBJC_IVAR____TtC9PassKitUI31PaymentSetupOpenAppClipFlowItem_appClip] = v22;
          v34.receiver = v30;
          v34.super_class = v29;
          v32 = a1;
          v21 = objc_msgSendSuper2(&v34, sel_init);
          v22 = &off_1F3B96610;
          goto LABEL_9;
        }
      }

      v21 = 0;
      goto LABEL_9;
    }

    [a1 type];
    result = PKPaymentSupportedProvisioningMethodToString();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v12 = result;
    v13 = sub_1BE052434();
    v15 = v14;

    sub_1BE04D0E4();
    sub_1BE048C84();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C34();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      v20 = sub_1BD123690(v13, v15, &v35);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1BD026000, v16, v17, "Error: Unsupported method type: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1BFB45F20](v19, -1, -1);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v9, v4);
  }

  v21 = 0;
  v22 = 0;
LABEL_9:
  v23 = v2 + OBJC_IVAR____TtC9PassKitUI34PaymentSetupOtherProvidersFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v2, &off_1F3BAD0E8, v21, v22, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1BD54F37C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2A0);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v54 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v53 = &v48 - v8;
  v9 = sub_1BE04BD74();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2A8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = &v48 - v21;
  v23 = a1;
  v58 = a1;
  (*(v10 + 104))(v13, *MEMORY[0x1E69B80F0], v9, v20);
  result = PKPassKitBundle();
  if (result)
  {
    v25 = result;
    v26 = sub_1BE04B6F4();
    v28 = v27;

    (*(v10 + 8))(v13, v9);
    v60 = v26;
    v61 = v28;
    sub_1BD0DDEBC();
    v60 = sub_1BE0506C4();
    v61 = v29;
    v62 = v30 & 1;
    v63 = v31;
    sub_1BD54FF44(v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2B0);
    sub_1BD20FBD4(&qword_1EBD4A2B8, &qword_1EBD4A2B0);
    v51 = v22;
    v32 = sub_1BE051A34();
    MEMORY[0x1EEE9AC00](v32, v33);
    sub_1BD5507F4(v23, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
    sub_1BD12E194();
    v34 = v53;
    sub_1BE051A54();
    v49 = *(v15 + 16);
    v35 = v52;
    v49(v52, v22, v14);
    v37 = v56;
    v36 = v57;
    v50 = *(v56 + 16);
    v38 = v54;
    v50(v54, v34, v57);
    v39 = v14;
    v40 = v15;
    v41 = v34;
    v42 = v38;
    v43 = v55;
    v44 = v39;
    (v49)(v55, v35);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2C0);
    v50((v43 + *(v45 + 48)), v42, v36);
    v46 = *(v37 + 8);
    v46(v41, v36);
    v47 = *(v40 + 8);
    v47(v51, v44);
    v46(v42, v36);
    return (v47)(v35, v44);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD54F878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  v3 = sub_1BE04BD74();
  v80 = *(v3 - 8);
  v81 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v79 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v75 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v78 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v75 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v85 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v84 = &v75 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v83 = &v75 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v75 - v29;
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel___observationRegistrar;
  v92 = a1;
  sub_1BD20FC28();
  v87 = v31;
  sub_1BE04B594();

  v32 = a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo;
  v33 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v88 = v30;
  v89 = v10;
  if (v33)
  {
    v76 = v17;
    v77 = v9;
    v82 = v11;
    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    v36 = *(v32 + 8);
    v37 = v36;
    sub_1BD550B20(v33, v36, v35, v34);
    sub_1BD550B80(v33, v36, v35, v34);
    v38 = [v37 formattedStringValue];

    if (v38)
    {
      v39 = sub_1BE052434();
      v75 = v40;

      v42 = v80;
      v41 = v81;
      v43 = v77;
      (*(v80 + 104))(v77, *MEMORY[0x1E69B80F0], v81);
      result = PKPassKitBundle();
      if (!result)
      {
        __break(1u);
        goto LABEL_16;
      }

      v45 = result;
      v46 = sub_1BE04B6F4();
      v48 = v47;

      (*(v42 + 8))(v43, v41);
      v92 = v46;
      v93 = v48;
      v90 = v39;
      v91 = v75;
      sub_1BD0DDEBC();
      v49 = v76;
      sub_1BE04E834();
      v11 = v82;
      v30 = v88;
      v10 = v89;
      (*(v82 + 32))(v88, v49, v89);
      v50 = 0;
    }

    else
    {
      v50 = 1;
      v30 = v88;
      v10 = v89;
      v11 = v82;
    }
  }

  else
  {
    v50 = 1;
  }

  v51 = 1;
  v82 = *(v11 + 56);
  (v82)(v30, v50, 1, v10);
  swift_getKeyPath();
  v92 = a1;
  sub_1BE04B594();

  v52 = *v32;
  if (!*v32)
  {
    v70 = v83;
LABEL_14:
    (v82)(v70, v51, 1, v10);
    v71 = v84;
    sub_1BD550BE0(v30, v84);
    v72 = v85;
    sub_1BD550BE0(v70, v85);
    v73 = v86;
    sub_1BD550BE0(v71, v86);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D8);
    sub_1BD550BE0(v72, v73 + *(v74 + 48));
    sub_1BD550C50(v70);
    sub_1BD550C50(v30);
    sub_1BD550C50(v72);
    return sub_1BD550C50(v71);
  }

  v53 = v11;
  v55 = *(v32 + 16);
  v54 = *(v32 + 24);
  v56 = *(v32 + 8);
  v57 = v54;
  sub_1BD550B20(v52, v56, v55, v54);
  sub_1BD550B80(v52, v56, v55, v54);
  v58 = [v57 formattedStringValue];

  if (!v58)
  {
    v51 = 1;
    v10 = v89;
    v70 = v83;
    goto LABEL_13;
  }

  v59 = sub_1BE052434();
  v61 = v60;

  v63 = v79;
  v62 = v80;
  v64 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E69B80F0], v81);
  result = PKPassKitBundle();
  if (result)
  {
    v65 = result;
    v66 = sub_1BE04B6F4();
    v68 = v67;

    (*(v62 + 8))(v63, v64);
    v92 = v66;
    v93 = v68;
    v90 = v59;
    v91 = v61;
    sub_1BD0DDEBC();
    v69 = v78;
    sub_1BE04E834();
    v70 = v83;
    v10 = v89;
    (*(v53 + 32))(v83, v69, v89);
    v51 = 0;
LABEL_13:
    v30 = v88;
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_1BD54FF44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v29 = v10;
    v30 = v12;
    sub_1BD0DDEBC();
    v13 = sub_1BE0506C4();
    v15 = v14;
    LOBYTE(v9) = v16;
    LODWORD(v29) = sub_1BE04FC94();
    v17 = sub_1BE050574();
    v19 = v18;
    v21 = v20;
    sub_1BD0DDF10(v13, v15, v9 & 1);

    sub_1BE050454();
    v22 = sub_1BE0505F4();
    v24 = v23;
    LOBYTE(v10) = v25;
    v27 = v26;

    sub_1BD0DDF10(v17, v19, v21 & 1);

    *a1 = v22;
    *(a1 + 8) = v24;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD55016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_1BE04BD74();
  v85 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v79 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2C8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v78 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v82 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v81 = &v74 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v80 = &v74 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v88 = &v74 - v29;
  swift_getKeyPath();
  v30 = OBJC_IVAR____TtC9PassKitUI17TransactionsModel___observationRegistrar;
  v91 = a1;
  sub_1BD20FC28();
  v84 = v30;
  sub_1BE04B594();

  v31 = a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo;
  v32 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v86 = v11;
  v87 = v10;
  if (!v32)
  {
    v49 = 1;
LABEL_7:
    v48 = v88;
    goto LABEL_8;
  }

  v75 = v17;
  v76 = v9;
  v77 = v3;
  v34 = *(v31 + 16);
  v33 = *(v31 + 24);
  v35 = *(v31 + 8);
  v36 = v34;
  sub_1BD550B20(v32, v35, v34, v33);
  sub_1BD550B80(v32, v35, v34, v33);
  v37 = [v36 formattedStringValue];

  if (!v37)
  {
    v49 = 1;
    v11 = v86;
    v10 = v87;
    v3 = v77;
    goto LABEL_7;
  }

  v38 = sub_1BE052434();
  v74 = v39;

  v40 = v85;
  v41 = v76;
  v3 = v77;
  (*(v85 + 104))(v76, *MEMORY[0x1E69B80F0], v77);
  result = PKPassKitBundle();
  if (!result)
  {
    goto LABEL_14;
  }

  v43 = result;
  v44 = sub_1BE04B6F4();
  v46 = v45;

  (*(v40 + 8))(v41, v3);
  v91 = v44;
  v92 = v46;
  v89 = v38;
  v90 = v74;
  sub_1BD0DDEBC();
  v47 = v75;
  sub_1BE04E834();
  v11 = v86;
  v10 = v87;
  v48 = v88;
  (*(v86 + 32))(v88, v47, v87);
  v49 = 0;
LABEL_8:
  v50 = *(v11 + 56);
  v51 = 1;
  v50(v48, v49, 1, v10);
  swift_getKeyPath();
  v91 = a1;
  sub_1BE04B594();

  v52 = *v31;
  if (!*v31)
  {
    v68 = v80;
    goto LABEL_12;
  }

  v54 = *(v31 + 32);
  v53 = *(v31 + 40);
  v56 = *(v31 + 16);
  v55 = *(v31 + 24);
  v57 = v3;
  v58 = *(v31 + 8);
  sub_1BE048C84();
  sub_1BD550B20(v52, v58, v56, v55);
  v59 = v58;
  v60 = v57;
  sub_1BD550B80(v52, v59, v56, v55);
  v61 = v85;
  v62 = v79;
  (*(v85 + 104))(v79, *MEMORY[0x1E69B80F0], v57);
  result = PKPassKitBundle();
  if (result)
  {
    v63 = result;
    v64 = sub_1BE04B6F4();
    v66 = v65;

    (*(v61 + 8))(v62, v60);
    v91 = v64;
    v92 = v66;
    v89 = v54;
    v90 = v53;
    sub_1BD0DDEBC();
    v67 = v78;
    sub_1BE04E834();
    v10 = v87;
    v68 = v80;
    (*(v86 + 32))(v80, v67, v87);
    v51 = 0;
LABEL_12:
    v69 = v88;
    v50(v68, v51, 1, v10);
    v70 = v81;
    sub_1BD550BE0(v69, v81);
    v71 = v82;
    sub_1BD550BE0(v68, v82);
    v72 = v83;
    sub_1BD550BE0(v70, v83);
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D8);
    sub_1BD550BE0(v71, v72 + *(v73 + 48));
    sub_1BD550C50(v68);
    sub_1BD550C50(v69);
    sub_1BD550C50(v71);
    return sub_1BD550C50(v70);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1BD5507F4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v39 = a1;
  sub_1BD20FC28();
  sub_1BE04B594();

  v9 = (a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  v10 = *(a1 + OBJC_IVAR____TtC9PassKitUI17TransactionsModel__appleCardDetailInfo);
  if (!v10)
  {
    v30 = 0;
    v32 = 0;
    v36 = 0;
    goto LABEL_7;
  }

  v38 = v5;
  v12 = v9[2];
  v11 = v9[3];
  v13 = v9[1];
  sub_1BD550B20(v10, v13, v12, v11);
  v14 = v10;
  sub_1BD550B80(v10, v13, v12, v11);
  if (![v14 requiresDebtCollectionNotices])
  {

    v30 = 0;
    v32 = 0;
    v36 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  v37 = v14;
  v15 = v38;
  (*(v38 + 104))(v8, *MEMORY[0x1E69B80F0], v4);
  v16 = PKPassKitBundle();
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BE04B6F4();
    v20 = v19;

    (*(v15 + 8))(v8, v4);
    v39 = v18;
    v40 = v20;
    sub_1BD0DDEBC();
    v21 = sub_1BE0506C4();
    v23 = v22;
    LOBYTE(v17) = v24;
    LODWORD(v39) = sub_1BE04FC94();
    v25 = sub_1BE050574();
    v27 = v26;
    v29 = v28;
    sub_1BD0DDF10(v21, v23, v17 & 1);

    sub_1BE050454();
    v30 = sub_1BE0505F4();
    v32 = v31;
    v34 = v33;
    v10 = v35;

    sub_1BD0DDF10(v25, v27, v29 & 1);

    v36 = v34 & 1;
LABEL_7:
    *a2 = v30;
    a2[1] = v32;
    a2[2] = v36;
    a2[3] = v10;
    return;
  }

  __break(1u);
}

void *sub_1BD550B20(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v7 = result;
    v8 = a2;
    v9 = a3;
    v10 = a4;

    return sub_1BE048C84();
  }

  return result;
}

void *sub_1BD550B80(void *result, void *a2, void *a3, void *a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1BD550BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD550C50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD550CB8()
{
  sub_1BD550CF0();

  return sub_1BE04F3E4();
}

unint64_t sub_1BD550CF0()
{
  result = qword_1EBD4D510;
  if (!qword_1EBD4D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D510);
  }

  return result;
}

uint64_t sub_1BD550D68()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

BOOL sub_1BD550DE0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t sub_1BD550E58()
{
  v1 = OBJC_IVAR____TtC9PassKitUI36RemoteNetworkPaymentLoadingViewModel__loadingState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BD0D4534(v0 + OBJC_IVAR____TtC9PassKitUI36RemoteNetworkPaymentLoadingViewModel_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteNetworkPaymentLoadingViewModel()
{
  result = qword_1EBD4A2F8;
  if (!qword_1EBD4A2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD550F64()
{
  sub_1BD550FFC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD550FFC()
{
  if (!qword_1EBD4A308)
  {
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4A308);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemoteNetworkPaymentLoadingViewModel.State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RemoteNetworkPaymentLoadingViewModel.State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1BD55109C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD5510B8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1BD5510E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemoteNetworkPaymentLoadingViewModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD551128()
{
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, 4, 0);
  v0 = v31;
  v1 = sub_1BE052434();
  v4 = *(v31 + 16);
  v3 = *(v31 + 24);
  if (v4 >= v3 >> 1)
  {
    v23 = v1;
    v24 = v2;
    sub_1BD03B254((v3 > 1), v4 + 1, 1);
    v2 = v24;
    v1 = v23;
    v0 = v31;
  }

  *(v0 + 16) = v4 + 1;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  v6 = sub_1BE052434();
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  if (v9 >= v8 >> 1)
  {
    v25 = v6;
    v26 = v7;
    sub_1BD03B254((v8 > 1), v9 + 1, 1);
    v7 = v26;
    v6 = v25;
    v0 = v31;
  }

  *(v0 + 16) = v9 + 1;
  v10 = v0 + 16 * v9;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  v11 = sub_1BE052434();
  v14 = *(v0 + 16);
  v13 = *(v0 + 24);
  if (v14 >= v13 >> 1)
  {
    v27 = v11;
    v28 = v12;
    sub_1BD03B254((v13 > 1), v14 + 1, 1);
    v12 = v28;
    v11 = v27;
  }

  v15 = v31;
  *(v31 + 16) = v14 + 1;
  v16 = v31 + 16 * v14;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  v17 = sub_1BE052434();
  v20 = *(v31 + 16);
  v19 = *(v31 + 24);
  if (v20 >= v19 >> 1)
  {
    v29 = v17;
    v30 = v18;
    sub_1BD03B254((v19 > 1), v20 + 1, 1);
    v18 = v30;
    v17 = v29;
    v15 = v31;
  }

  *(v15 + 16) = v20 + 1;
  v21 = v15 + 16 * v20;
  *(v21 + 32) = v17;
  *(v21 + 40) = v18;
  swift_arrayDestroy();
  return v15;
}

id sub_1BD55131C(uint64_t a1, int64_t a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v39 - v15;
  v41 = v18;
  v42 = v17;
  v40 = v19;
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_7;
    }

LABEL_6:
    v20 = a1;
    v21 = a2;
    goto LABEL_8;
  }

  if (a2 > 1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = sub_1BE052434();
  v21 = v22;
LABEL_8:
  if (sub_1BE052434() == v20 && v23 == v21)
  {
    sub_1BD14ED40(a1, a2);

LABEL_15:

    v26 = v42;
    (*(v5 + 104))(v16, *MEMORY[0x1E69B8068], v42);
    result = PKPassKitBundle();
    if (result)
    {
      v28 = result;
      a1 = sub_1BE04B6F4();

      (*(v5 + 8))(v16, v26);
      return a1;
    }

    __break(1u);
    goto LABEL_48;
  }

  v25 = sub_1BE053B84();
  sub_1BD14ED40(a1, a2);

  if (v25)
  {
    goto LABEL_15;
  }

  if (sub_1BE052434() == v20 && v29 == v21)
  {

LABEL_24:

    v32 = v42;
    (*(v5 + 104))(v12, *MEMORY[0x1E69B8068], v42);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v33 = result;
LABEL_26:
    a1 = sub_1BE04B6F4();

    (*(v5 + 8))(v12, v32);
    return a1;
  }

  v31 = sub_1BE053B84();

  if (v31)
  {
    goto LABEL_24;
  }

  if (sub_1BE052434() == v20 && v34 == v21)
  {

LABEL_32:

    v12 = v41;
    v32 = v42;
    (*(v5 + 104))(v41, *MEMORY[0x1E69B8068], v42);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v33 = result;
    goto LABEL_26;
  }

  v35 = sub_1BE053B84();

  if (v35)
  {
    goto LABEL_32;
  }

  v36 = *MEMORY[0x1E695CB68];
  if (sub_1BE052434() == v20 && v37 == v21)
  {

    goto LABEL_38;
  }

  v41 = v36;
  v38 = sub_1BE053B84();

  if ((v38 & 1) == 0)
  {
    if (a2 > 1)
    {
      if (a2 == 2 || a2 == 3)
      {
        return sub_1BE052434();
      }
    }

    else if (a2 <= 1)
    {
      return sub_1BE052434();
    }

    sub_1BE048C84();
    return a1;
  }

LABEL_38:
  v12 = v40;
  v32 = v42;
  (*(v5 + 104))(v40, *MEMORY[0x1E69B8068], v42);
  result = PKPassKitBundle();
  if (result)
  {
    v33 = result;
    goto LABEL_26;
  }

LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_1BD551860(uint64_t a1, int64_t a2)
{
  if (a2 > 1)
  {
    if (a2 == 2 || a2 == 3)
    {
      goto LABEL_7;
    }
  }

  else if (a2 <= 1)
  {
LABEL_7:
    v4 = sub_1BE052434();
    goto LABEL_8;
  }

  v4 = a1;
LABEL_8:
  sub_1BD14ED40(a1, a2);
  return v4;
}

uint64_t sub_1BD55190C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1BD551B1C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD55193C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BE053D04();
  sub_1BDA27790(v4, v1, v2);
  return sub_1BE053D64();
}

uint64_t sub_1BD551990()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BE053D04();
  sub_1BDA27790(v4, v1, v2);
  return sub_1BE053D64();
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI20ShippingContactLabelO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BD551A04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD551A58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1BD551AC8()
{
  result = qword_1EBD4A318;
  if (!qword_1EBD4A318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A318);
  }

  return result;
}

uint64_t sub_1BD551B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_1BE052434() != a1 || v4 != a2)
  {
    v6 = sub_1BE053B84();

    if (v6)
    {
      goto LABEL_8;
    }

    if (sub_1BE052434() != v3 || v8 != a2)
    {
      v10 = sub_1BE053B84();

      if (v10)
      {
        goto LABEL_8;
      }

      if (sub_1BE052434() != v3 || v11 != a2)
      {
        v13 = sub_1BE053B84();

        if (v13)
        {
          goto LABEL_8;
        }

        if (sub_1BE052434() != v3 || v14 != a2)
        {
          v15 = sub_1BE053B84();

          if ((v15 & 1) == 0)
          {
            return v3;
          }

          goto LABEL_8;
        }
      }
    }
  }

LABEL_8:

  return 0;
}

id sub_1BD551D8C()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BBD4();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v9 = [objc_allocWithZone(PKPaymentSetupWelcomeViewController) initWithProvisioningController:v7 context:v8];

  [v9 setFlowDelegate_];
  sub_1BE052434();
  v10 = sub_1BE04BB74();

  [v9 setReporter_];

  return v9;
}

uint64_t sub_1BD551F04()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD551F40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD5521A0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_context);
  v3 = sub_1BE04BBD4();
  v4 = [v3 associatedCredentials];

  if (v4)
  {
    sub_1BD0E5E8C(0, &qword_1EBD444C0);
    v5 = sub_1BE052744();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = type metadata accessor for PaymentSetupCredentialsFlowItem();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem__privacyDisclosures] = &type metadata for PrivacyDisclosures;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_identifier];
  *v8 = 0xD00000000000001FLL;
  v8[1] = 0x80000001BE1229B0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_context] = v2;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_credentials] = v5;
  v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_allowManualEntry] = 0;
  *&v7[OBJC_IVAR____TtC9PassKitUI31PaymentSetupCredentialsFlowItem_product] = 0;
  v13.receiver = v7;
  v13.super_class = v6;
  sub_1BE048964();
  v9 = objc_msgSendSuper2(&v13, sel_init);
  v10 = v1 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v1, &off_1F3BAD340, v9, &off_1F3BCA500, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD552364()
{
  v1 = objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v2 = sub_1BE048964();
  v6 = sub_1BD87126C(v2, 1, 1);
  v3 = v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v0, &off_1F3BAD340, v6, &off_1F3BC0AB0, ObjectType, v4);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD552458(void *a1, unint64_t a2)
{
  v3 = v2;
  v6 = [a1 identifier];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BE052434();
    v10 = v9;

    v11 = sub_1BE052434();
    if (v10)
    {
      if (v8 == v11 && v10 == v12)
      {
      }

      else
      {
        v14 = sub_1BE053B84();

        if ((v14 & 1) == 0)
        {
          if (a2)
          {
LABEL_9:
            v15 = *(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_context);
            type metadata accessor for PaymentSetupProductsFlowSection();
            swift_allocObject();
            sub_1BE048C84();
            sub_1BE048964();
            v16 = a1;
            v17 = sub_1BD0DB670(v15, a1, a2);

            type metadata accessor for UIFlowModifier();
            v18 = swift_allocObject();
            v19 = byte_1EBDAB281;
            *(v18 + 32) = byte_1EBDAB280;
            *(v18 + 33) = v19;
            *(v18 + 48) = 0;
            swift_unknownObjectWeakInit();
            *(v18 + 16) = v17;
            *(v18 + 24) = &off_1F3B98C00;
            *(v18 + 32) = 1;
            v20 = &off_1F3BAC7A0;
            goto LABEL_16;
          }

          goto LABEL_12;
        }
      }

      objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
      v21 = sub_1BE048964();
      v22 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    sub_1BE052434();
  }

  if (a2)
  {
    goto LABEL_9;
  }

LABEL_12:
  objc_allocWithZone(type metadata accessor for ProvisioningManualEntryFlowSection());
  v21 = sub_1BE048964();
  v22 = 0;
LABEL_15:
  v18 = sub_1BD87126C(v21, v22, 0);
  v20 = &off_1F3BC0AB0;
LABEL_16:
  v23 = v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupWelcomeFlowItem_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v3, &off_1F3BAD340, v18, v20, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1BD5527B0()
{
  v1 = sub_1BE04BA14();
  v77 = *(v1 - 8);
  v78 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v69 - v7;
  v81 = sub_1BE04B9C4();
  v9 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v10);
  v12 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = v69 - v15;
  v16 = sub_1BE04BAC4();
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v21 = v0;
  sub_1BD12F824(1, v21, KeyPath);

  v22 = *&v21[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_verificationController];
  v23 = [v22 verificationRecord];
  v24 = off_1E8005000;
  v25 = &selRef_initWithIdentifier_;
  if (v23)
  {
    v26 = v23;
    v27 = [v23 verificationStatus];
    if (v27 > 1)
    {
      if (v27 != 2)
      {
LABEL_12:

LABEL_13:
        v24 = off_1E8005000;
        goto LABEL_14;
      }

      v74 = v26;
      v75 = v12;
      v48 = objc_allocWithZone(PKPaymentVerificationMethodsViewController);
      v76 = v22;
      v49 = [v48 initWithVerificationController_];
      v37 = v49;
      if (v49)
      {
        [v49 setFlowItemDelegate_];
      }

      v73 = *&v21[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_context];
      sub_1BE04BC34();
      v50 = v80;
      sub_1BE04BAA4();
      v69[0] = *(v79 + 8);
      v69[1] = v79 + 8;
      (v69[0])(v19, v16);
      v51 = *MEMORY[0x1E69B7FB0];
      v52 = *(v9 + 104);
      v71 = v16;
      v53 = v75;
      v54 = v9;
      v55 = v81;
      v52(v75, v51, v81);
      v70 = sub_1BE04B9B4();
      v72 = v54;
      v56 = *(v54 + 8);
      v56(v53, v55);
      v56(v50, v55);
      if (v70)
      {
        v57 = 1;
        v16 = v71;
      }

      else
      {
        sub_1BE04BC34();
        sub_1BE04BA24();
        v16 = v71;
        (v69[0])(v19, v71);
        v58 = *MEMORY[0x1E69B7FE0];
        v59 = sub_1BE04B9D4();
        (*(*(v59 - 8) + 104))(v4, v58, v59);
        v61 = v77;
        v60 = v78;
        (*(v77 + 104))(v4, *MEMORY[0x1E69B8020], v78);
        v57 = MEMORY[0x1BFB38A90](v8, v4);
        v62 = *(v61 + 8);
        v62(v4, v60);
        v62(v8, v60);
      }

      [v37 setAlwaysPerformExternalVerificationInline_];
      v9 = v72;
      v12 = v75;
      v22 = v76;
      if (v37)
      {
        sub_1BE052434();
        v45 = v37;
        v46 = sub_1BE04BB74();

        [v45 setReporter_];

        goto LABEL_16;
      }

LABEL_32:
      v25 = &selRef_initWithIdentifier_;
      goto LABEL_13;
    }

    if (v27 != 1)
    {
      goto LABEL_12;
    }

    v28 = [v26 requiredVerificationFields];
    if (!v28)
    {
      goto LABEL_12;
    }

    v29 = v28;
    v76 = v22;
    v30 = v16;
    sub_1BD5538A4();
    v31 = sub_1BE052744();

    if (v31 >> 62)
    {
      v32 = sub_1BE053704();
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v30;
    if (!v32)
    {

      v22 = v76;
      goto LABEL_32;
    }

    v33 = [v26 requiredVerificationFields];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1BE052744();

      sub_1BD3F0574(v35);

      v36 = sub_1BE052724();
      v16 = v30;
    }

    else
    {
      v36 = 0;
    }

    v22 = v76;
    v46 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) initWithPaymentSetupFields_];

    if (!v46)
    {

      goto LABEL_32;
    }

    v74 = v26;
    v63 = [objc_allocWithZone(PKPaymentVerificationMethodsViewController) initWithVerificationController:v22 fieldsModel:v46];
    v25 = &selRef_initWithIdentifier_;
    if (v63)
    {
      v37 = v63;
      sub_1BE04BC34();
      v64 = v80;
      sub_1BE04BAA4();
      (*(v79 + 8))(v19, v16);
      v65 = v81;
      (*(v9 + 104))(v12, *MEMORY[0x1E69B7FB0], v81);
      v66 = sub_1BE04B9B4();
      v67 = *(v9 + 8);
      v67(v12, v65);
      v67(v64, v65);
      [v37 setAlwaysPerformExternalVerificationInline_];
      [v37 setFlowItemDelegate_];
      sub_1BE052434();
      v68 = v37;
      v45 = sub_1BE04BB74();

      [v68 setReporter_];

      goto LABEL_16;
    }

    v24 = off_1E8005000;
  }

LABEL_14:
  v37 = [objc_allocWithZone(v24[451]) v25[511]];
  if (v37)
  {
    sub_1BE04BC34();
    v38 = v12;
    v39 = v80;
    sub_1BE04BAA4();
    (*(v79 + 8))(v19, v16);
    v40 = *(v9 + 104);
    v41 = v9;
    v42 = v81;
    v40(v38, *MEMORY[0x1E69B7FB0], v81);
    v43 = sub_1BE04B9B4();
    v44 = *(v41 + 8);
    v44(v38, v42);
    v44(v39, v42);
    [v37 setAlwaysPerformExternalVerificationInline_];
    [v37 setFlowItemDelegate_];
    sub_1BE052434();
    v45 = v37;
    v46 = sub_1BE04BB74();

    [v45 setReporter_];
LABEL_16:
  }

  return v37;
}

uint64_t sub_1BD5530C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD5530FC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1BD553318(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
  v5 = *&a2[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
  objc_allocWithZone(type metadata accessor for ProvisioningVerificationMethodsFlowItem());
  sub_1BE048964();
  v6 = v5;
  v7 = a2;
  v11 = sub_1BD5537A8(v4, v6);

  v8 = &v7[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    sub_1BD865948(a1, &off_1F3BAD3B8, v11, &off_1F3BAD3B8, ObjectType, v9);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1BD553448(uint64_t a1, void *a2, char *a3)
{
  v36 = a1;
  v40 = sub_1BE04B9C4();
  v5 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v37 = &v35 - v10;
  v38 = sub_1BE04BAC4();
  v11 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&a3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_context];
  v16 = *&a3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_provisionedPasses];
  v17 = *&a3[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_verificationController];
  v18 = objc_allocWithZone(type metadata accessor for ProvisioningPerformVerificationFlowSection());
  sub_1BE048964();
  v19 = v16;
  v20 = v17;
  v21 = a2;
  v22 = a3;
  v23 = sub_1BD724E68(v15, v19, v21, v20);

  sub_1BE04BC34();
  v24 = v37;
  sub_1BE04BAA4();
  (*(v11 + 8))(v14, v38);
  v26 = v39;
  v25 = v40;
  (*(v5 + 104))(v39, *MEMORY[0x1E69B7FB0], v40);
  LOBYTE(v21) = sub_1BE04B9B4();
  v27 = *(v5 + 8);
  v27(v26, v25);
  v27(v24, v25);
  v28 = &off_1F3BB88B0;
  if (v21)
  {
    type metadata accessor for UIFlowModifier();
    v29 = swift_allocObject();
    v30 = byte_1EBDAB281;
    *(v29 + 32) = byte_1EBDAB280;
    *(v29 + 33) = v30;
    *(v29 + 48) = 0;
    swift_unknownObjectWeakInit();
    *(v29 + 16) = v23;
    *(v29 + 24) = &off_1F3BB88B0;
    *(v29 + 32) = 1;
    v28 = &off_1F3BAC7A0;
    v23 = v29;
  }

  v31 = &v22[OBJC_IVAR____TtC9PassKitUI35ProvisioningVerificationFlowSection_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 1);
    ObjectType = swift_getObjectType();
    sub_1BD865948(v36, &off_1F3BAD3B8, v23, v28, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1BD5537A8(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_identifier];
  *v6 = 0xD00000000000001BLL;
  *(v6 + 1) = 0x80000001BE12E460;
  *&v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem__hasSeenMethodsScreen] = &type metadata for ProvisioningVerificationHasSeenMethodsScreenKey;
  *&v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_context] = a1;
  *&v2[OBJC_IVAR____TtC9PassKitUI39ProvisioningVerificationMethodsFlowItem_verificationController] = a2;
  swift_unknownObjectWeakAssign();
  v9.receiver = v2;
  v9.super_class = ObjectType;
  sub_1BE048964();
  v7 = a2;
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_1BD5538A4()
{
  result = qword_1EBD4E6C0;
  if (!qword_1EBD4E6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4E6C0);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FDICSignage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FDICSignage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

id sub_1BD5539AC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = [objc_allocWithZone(PKFDICSignageView) initWithFeature:v1 displayingBankName:v2];
  [v4 setForceFixedHalfWrapping_];
  return v4;
}

uint64_t sub_1BD553A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD553B08();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD553A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD553B08();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD553ADC()
{
  sub_1BD553B08();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD553B08()
{
  result = qword_1EBD4A448;
  if (!qword_1EBD4A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A448);
  }

  return result;
}

uint64_t type metadata accessor for PaymentOfferSelectorTile()
{
  result = qword_1EBD4A458;
  if (!qword_1EBD4A458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD553BD0()
{
  sub_1BD553D88(319, &qword_1EBD4A468, type metadata accessor for PaymentOfferSelectorModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD553D88(319, &qword_1EBD4A470, type metadata accessor for PKAccessibilityIdentifier, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD23BBFC();
      if (v2 <= 0x3F)
      {
        sub_1BD553DEC(319, &qword_1EBD43D70, &unk_1EBD45160, &unk_1BE0C25A0, MEMORY[0x1E6981948]);
        if (v3 <= 0x3F)
        {
          sub_1BD1030A8();
          if (v4 <= 0x3F)
          {
            sub_1BD553DEC(319, &qword_1EBD39020, &qword_1EBD579E0, "0^\r", MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BD553D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD553DEC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1BD553E64()
{
  result = qword_1EBD4A478;
  if (!qword_1EBD4A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A478);
  }

  return result;
}

uint64_t sub_1BD553EB8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A480);
  MEMORY[0x1EEE9AC00](v53, v3);
  v56 = (&v45 - v4);
  v5 = sub_1BE04EDE4();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1BE0518C4();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A488);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A490);
  v54 = *(v17 - 8);
  v55 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v58 = &v45 - v19;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A498);
  MEMORY[0x1EEE9AC00](v50, v20);
  v49 = &v45 - v21;
  v22 = *(v2 + 136);
  if (v22)
  {
    v23 = 0x4042000000000000;
  }

  else
  {
    if (qword_1EBD36C90 != -1)
    {
      swift_once();
    }

    v23 = qword_1EBD4A450;
  }

  *v16 = sub_1BE04F7C4();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4A0);
  sub_1BD5544A0(v2, &v16[*(v24 + 44)]);
  v48 = v13;
  v25 = &v16[*(v13 + 36)];
  v26 = v5;
  v27 = *(v5 + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1BE04F684();
  v30 = *(*(v29 - 8) + 104);
  v30(v25 + v27, v28, v29);
  *v25 = v23;
  v25[1] = v23;
  *(v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)) = 256;
  if (v22)
  {
    sub_1BE051894();
  }

  else
  {
    sub_1BE0518B4();
  }

  v31 = v8 + *(v26 + 20);
  v47 = v28;
  v30(v31, v28, v29);
  v46 = v30;
  *v8 = v23;
  v8[1] = v23;
  sub_1BD559828();
  sub_1BD55B02C(&qword_1EBD3BB58, MEMORY[0x1E697EAF0]);
  sub_1BE050994();
  sub_1BD1E4B74(v8);
  (*(v51 + 8))(v12, v52);
  sub_1BD0DE53C(v16, &qword_1EBD4A488);
  v32 = sub_1BE051CD4();
  v51 = v33;
  v52 = v32;
  v34 = v56;
  v30(v56 + *(v26 + 20), v28, v29);
  *v34 = v23;
  v34[1] = v23;
  *(v34 + *(v53 + 36)) = sub_1BE051404();
  v35 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  sub_1BE0511C4();
  v36 = v49;
  v37 = &v49[*(v50 + 36)];
  v38 = sub_1BE051454();

  v39 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4C0) + 36));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4C8);
  v41 = (v39 + *(v40 + 52));
  v46(v41 + *(v26 + 20), v47, v29);
  *v41 = v23;
  v41[1] = v23;
  *v39 = v38;
  *(v39 + *(v40 + 56)) = 256;
  sub_1BD0DE204(v34, v37, &qword_1EBD4A480);
  v42 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4D0) + 36));
  v43 = v51;
  *v42 = v52;
  v42[1] = v43;
  (*(v54 + 32))(v36, v58, v55);
  return sub_1BD0DE204(v36, v57, &qword_1EBD4A498);
}

uint64_t sub_1BD5544A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v33[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v33[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4E8);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v33[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v33[-v24];
  *v25 = sub_1BE04F504();
  *(v25 + 1) = 0;
  v25[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4F0);
  sub_1BD554B18(a1, &v25[*(v26 + 44)]);
  *&v25[*(v18 + 44)] = 256;
  v27 = *(a1 + 160);
  v28 = *(a1 + 168);
  v35 = *(a1 + 152);
  v36 = v27;
  v37 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v34, v29);
  if (v34 == 1)
  {
    sub_1BD5547E0(v8);
    sub_1BD0DE204(v8, v16, &qword_1EBD4A4D8);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  (*(v5 + 56))(v16, v30, 1, v4);
  sub_1BD0DE19C(v25, v21, &qword_1EBD4A4E8);
  sub_1BD0DE19C(v16, v12, &qword_1EBD4A4E0);
  sub_1BD0DE19C(v21, a2, &qword_1EBD4A4E8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A4F8);
  sub_1BD0DE19C(v12, a2 + *(v31 + 48), &qword_1EBD4A4E0);
  sub_1BD0DE53C(v16, &qword_1EBD4A4E0);
  sub_1BD0DE53C(v25, &qword_1EBD4A4E8);
  sub_1BD0DE53C(v12, &qword_1EBD4A4E0);
  return sub_1BD0DE53C(v21, &qword_1EBD4A4E8);
}

uint64_t sub_1BD5547E0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A500);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A508);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A510);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15, v16);
  v20 = &v31 - v19;
  v21 = *(v1 + 128);
  if (v21)
  {
    v33 = a1;
    v34 = v17;
    v22 = *(v1 + 112);
    v32 = v22;
    sub_1BE048C84();
    *v6 = sub_1BE04F7B4();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A518);
    sub_1BD555F3C(v22, v21, v1, &v6[*(v23 + 44)]);
    v24 = *(v1 + 160);
    v25 = *(v1 + 168);
    v36 = *(v1 + 152);
    v37 = v24;
    v38 = v25;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
    MEMORY[0x1BFB3E970](&v35, v26);

    if (v35)
    {
      v27 = 1.0;
    }

    else
    {
      v27 = 0.0;
    }

    sub_1BD0DE204(v6, v10, &qword_1EBD4A500);
    *&v10[*(v7 + 36)] = v27;
    sub_1BD0DE204(v10, v14, &qword_1EBD4A508);
    sub_1BD0DE204(v14, v20, &qword_1EBD4A510);
    v28 = v33;
    sub_1BD0DE204(v20, v33, &qword_1EBD4A510);
    return (*(v34 + 56))(v28, 0, 1, v11);
  }

  else
  {
    v30 = *(v17 + 56);

    return v30(a1, 1, 1, v11, v18);
  }
}

uint64_t sub_1BD554B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = type metadata accessor for PaymentOfferSelectorTile();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5C8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v23 - v10;
  v23[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5D0);
  v12 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0], v13);
  v15 = v23 - v14;
  sub_1BD559924(a1, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v17 = swift_allocObject();
  sub_1BD559988(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v23[4] = a1;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5D8);
  sub_1BD55A724();
  sub_1BE051704();
  v19 = sub_1BD0DE4F4(&qword_1EBD4A608, &qword_1EBD4A5C8);
  v20 = sub_1BD55A894();
  sub_1BE0508A4();
  (*(v8 + 8))(v11, v7);
  if (*(v18 + 144))
  {
    sub_1BE052434();
  }

  v23[6] = v7;
  v23[7] = &type metadata for PaymentOfferSelectorTile.TileButtonStyle;
  v23[8] = v19;
  v23[9] = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v23[0];
  sub_1BE050DE4();

  return (*(v12 + 8))(v15, v21);
}

uint64_t sub_1BD554E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A600);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5F0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - v11;
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0x402A000000000000;
  v7[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A618);
  sub_1BD555034(a1, &v7[*(v13 + 44)]);
  LOBYTE(a1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1BD0DE204(v7, v12, &qword_1EBD4A600);
  v22 = &v12[*(v9 + 44)];
  *v22 = a1;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  sub_1BD0DE204(v12, a2, &qword_1EBD4A5F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5D8);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_1BD555034@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A620);
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94, v4);
  v85 = &v84 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A628);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v93 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v95 = &v84 - v11;
  v12 = sub_1BE04FEB4();
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
  v86 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A630);
  v89 = *(v20 - 8);
  v90 = v20;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v84 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A638);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v92 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v84 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A640);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v97 = &v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = (&v84 - v36);
  sub_1BD555A58(v111);
  *v37 = sub_1BE051CD4();
  v37[1] = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A648);
  sub_1BD557690(a1, v37 + *(v39 + 44));
  KeyPath = swift_getKeyPath();
  v41 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A650) + 36);
  *v41 = KeyPath;
  v41[8] = 0;
  LODWORD(KeyPath) = sub_1BE04FC74();
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A658) + 36);
  v96 = v37;
  *(v37 + v42) = KeyPath;
  if (*(a1 + 105) == 1)
  {
    sub_1BE04E4F4();
    sub_1BE04FEA4();
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    v84 = a1;
    sub_1BD55B02C(&qword_1EBD4A670, MEMORY[0x1E697C9C8]);
    v43 = v88;
    sub_1BE050804();
    (*(v87 + 8))(v15, v43);
    (*(v86 + 8))(v19, v16);
    v44 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A678) + 36)];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ABF0) + 28);
    v46 = *MEMORY[0x1E697DC28];
    v47 = sub_1BE04E364();
    (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
    *v44 = swift_getKeyPath();
    v48 = sub_1BE051494();
    v49 = swift_getKeyPath();
    v50 = v90;
    v51 = &v23[*(v90 + 36)];
    *v51 = v49;
    v51[1] = v48;
    a1 = v84;
    sub_1BD0DE204(v23, v30, &qword_1EBD4A630);
    v52 = 0;
    v53 = v30;
    v54 = v50;
  }

  else
  {
    v52 = 1;
    v53 = v30;
    v54 = v90;
  }

  (*(v89 + 56))(v53, v52, 1, v54);
  v55 = 1;
  if (*(a1 + 136) == 1)
  {
    v56 = (a1 + *(type metadata accessor for PaymentOfferSelectorTile() + 44));
    v57 = *v56;
    if (*v56)
    {
      v58 = v56[1];
      v59 = swift_allocObject();
      *(v59 + 16) = v57;
      *(v59 + 24) = v58;
      sub_1BD0D44B8(v57);
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41088);
      sub_1BD55A998();
      v60 = v85;
      sub_1BE051704();
      v61 = [objc_opt_self() tertiaryLabelColor];
      v62 = sub_1BE0511C4();
      v63 = swift_getKeyPath();
      *&v110[0] = v62;
      sub_1BE048964();
      v64 = sub_1BE04E5F4();
      sub_1BD0D4744(v57);

      v65 = v95;
      v66 = (v60 + *(v94 + 36));
      *v66 = v63;
      v66[1] = v64;
      sub_1BD0DE204(v60, v65, &qword_1EBD4A620);
      v55 = 0;
    }

    else
    {
      v55 = 1;
    }
  }

  v67 = v95;
  (*(v91 + 56))(v95, v55, 1, v94);
  v106 = v111[8];
  v107 = v111[9];
  v108 = v111[10];
  v102 = v111[4];
  v103 = v111[5];
  v104 = v111[6];
  v105 = v111[7];
  v98 = v111[0];
  v99 = v111[1];
  v100 = v111[2];
  v101 = v111[3];
  v68 = v97;
  sub_1BD0DE19C(v96, v97, &qword_1EBD4A640);
  v69 = v92;
  sub_1BD0DE19C(v53, v92, &qword_1EBD4A638);
  v94 = v53;
  v70 = v93;
  sub_1BD0DE19C(v67, v93, &qword_1EBD4A628);
  v71 = v107;
  v109[8] = v106;
  v109[9] = v107;
  v72 = v108;
  v109[10] = v108;
  v73 = v102;
  v74 = v103;
  v109[4] = v102;
  v109[5] = v103;
  v76 = v104;
  v75 = v105;
  v109[6] = v104;
  v109[7] = v105;
  v77 = v98;
  v78 = v99;
  v109[0] = v98;
  v109[1] = v99;
  v80 = v100;
  v79 = v101;
  v109[2] = v100;
  v109[3] = v101;
  a2[8] = v106;
  a2[9] = v71;
  a2[10] = v72;
  a2[4] = v73;
  a2[5] = v74;
  a2[6] = v76;
  a2[7] = v75;
  *a2 = v77;
  a2[1] = v78;
  a2[2] = v80;
  a2[3] = v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A660);
  sub_1BD0DE19C(v68, a2 + v81[12], &qword_1EBD4A640);
  v82 = a2 + v81[16];
  *v82 = 0;
  v82[8] = 1;
  sub_1BD0DE19C(v69, a2 + v81[20], &qword_1EBD4A638);
  sub_1BD0DE19C(v70, a2 + v81[24], &qword_1EBD4A628);
  sub_1BD55A8E8(v109, v110);
  sub_1BD0DE53C(v67, &qword_1EBD4A628);
  sub_1BD0DE53C(v94, &qword_1EBD4A638);
  sub_1BD0DE53C(v96, &qword_1EBD4A640);
  sub_1BD0DE53C(v70, &qword_1EBD4A628);
  sub_1BD0DE53C(v69, &qword_1EBD4A638);
  sub_1BD0DE53C(v97, &qword_1EBD4A640);
  v110[8] = v106;
  v110[9] = v107;
  v110[10] = v108;
  v110[4] = v102;
  v110[5] = v103;
  v110[6] = v104;
  v110[7] = v105;
  v110[0] = v98;
  v110[1] = v99;
  v110[2] = v100;
  v110[3] = v101;
  return sub_1BD55A944(v110);
}

void sub_1BD555A58(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *&v46 = *v1;
  *(&v46 + 1) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A778);
  sub_1BE0516A4();
  v4 = sub_1BD227B28();

  v5 = *(v1 + 24);
  v6 = *(v1 + 136);
  if (v6 == 1)
  {
    v7 = *(v1 + 104);
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v1 + 16);
  v50 = 0xC05E000000000000;
  sub_1BE048C84();
  sub_1BE051694();
  v9 = *(&v46 + 1);
  v10 = v46;
  v11 = v4[2];
  if (v11 > 1)
  {
    v44 = v5;
    v45 = *(&v46 + 1);
    v43 = v7;
    v42 = v8;
    if (v11 == 2)
    {
      v13 = v4[9];
      v12 = v4[10];
      v14 = v4[8];
      v15 = v4[5];
      v16 = v4[19];
      v17 = v4[20];
      v18 = v4[23];
      v19 = v4[24];
      v20 = v4[25];
      *&v46 = v4[4];
      *(&v46 + 1) = v15;
      *&v47 = v14;
      *(&v47 + 1) = v13;
      *v48 = v12;
      *&v48[8] = v16;
      *&v48[16] = v17;
      *&v48[24] = v18;
      *&v48[32] = v19;
      *&v48[40] = v20;
      memset(&v48[48], 0, 40);
      sub_1BD55AC84(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
      v5 = v44;
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BE048964();
      v7 = v43;
      sub_1BE048C84();
      v8 = v42;
      sub_1BE048C84();
LABEL_13:
      sub_1BE048964();
      v9 = v45;
      goto LABEL_14;
    }

    if (v11 == 3)
    {
      v25 = v4[5];
      v26 = v4[8];
      v27 = v4[9];
      v28 = v4[10];
      v29 = v4[24];
      v30 = v4[23];
      v31 = v4[19];
      v32 = v4[20];
      v33 = v4[34];
      v34 = v4[35];
      v35 = v4[38];
      v39 = v4[25];
      v40 = v4[39];
      v41 = v4[40];
      *&v46 = v4[4];
      *(&v46 + 1) = v25;
      *&v47 = v26;
      *(&v47 + 1) = v27;
      *v48 = v28;
      *&v48[8] = v31;
      *&v48[16] = v32;
      *&v48[24] = v30;
      *&v48[32] = v29;
      *&v48[40] = v39;
      *&v48[48] = v33;
      *&v48[56] = v34;
      *&v48[64] = v35;
      *&v48[72] = v40;
      *&v48[80] = v41;
      sub_1BD55AC78(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
      sub_1BE048C84();
      sub_1BE048C84();
      v8 = v42;
      sub_1BE048964();
      sub_1BE048C84();
      v7 = v43;
      sub_1BE048C84();
      sub_1BE048964();
      v5 = v44;
      sub_1BE048C84();
      sub_1BE048C84();
      goto LABEL_13;
    }
  }

  else
  {
    if (!v11)
    {
      sub_1BD55AC98(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
LABEL_14:
      v36 = *&v49[80];
      *(a1 + 91) = *&v49[64];
      *(a1 + 107) = v36;
      *(a1 + 123) = *&v49[96];
      *(a1 + 137) = *&v49[110];
      v37 = *&v49[16];
      *(a1 + 27) = *v49;
      *(a1 + 43) = v37;
      v38 = *&v49[48];
      *(a1 + 59) = *&v49[32];
      *a1 = v4;
      *(a1 + 8) = v8;
      *(a1 + 16) = v5;
      *(a1 + 24) = v6;
      *(a1 + 25) = v7;
      *(a1 + 26) = v6;
      *(a1 + 75) = v38;
      *(a1 + 160) = v10;
      *(a1 + 168) = v9;
      return;
    }

    v45 = *(&v46 + 1);
    if (v11 == 1)
    {
      v21 = v4[5];
      v22 = v4[8];
      v23 = v4[9];
      v24 = v4[10];
      *&v46 = v4[4];
      *(&v46 + 1) = v21;
      *&v47 = v22;
      *(&v47 + 1) = v23;
      *v48 = v24;
      memset(&v48[8], 0, 80);
      sub_1BD55AC90(&v46);
      *&v49[69] = *&v48[32];
      *&v49[85] = *&v48[48];
      *&v49[101] = *&v48[64];
      *&v49[110] = *&v48[73];
      *&v49[5] = v46;
      *&v49[21] = v47;
      *&v49[37] = *v48;
      *&v49[53] = *&v48[16];
      sub_1BE048C84();
      sub_1BE048C84();
      goto LABEL_13;
    }
  }

  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD555E5C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE051574();
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41088) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EFB0) + 28);
  v5 = *MEMORY[0x1E69816C0];
  v6 = sub_1BE0515D4();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1BD555F3C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v116 = a4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A520);
  MEMORY[0x1EEE9AC00](v108, v7);
  v111 = (&v103 - v8);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A528);
  MEMORY[0x1EEE9AC00](v110, v9);
  v113 = &v103 - v10;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A530);
  MEMORY[0x1EEE9AC00](v112, v11);
  v115 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v109 = &v103 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v114 = &v103 - v18;
  v19 = type metadata accessor for PaymentOfferSelectorTile();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8, v22);
  v23 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v103 - v26;
  v117 = a3;
  if (a1)
  {
    v105 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v107 = a2;
    v28 = v20;
    v29 = *MEMORY[0x1E69DDD80];
    v30 = *MEMORY[0x1E69DDC40];
    v31 = a1;
    v104 = PKFontForDefaultDesign(v29, v30);
    v103 = sub_1BE051494();
    sub_1BD559924(a3, v27);
    v106 = v28;
    v32 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v33 = swift_allocObject();
    sub_1BD559988(v27, v33 + v32);
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    v35[3] = 0;
    v35[4] = 0;
    v35[2] = 0;
    v35[5] = sub_1BD559CF4;
    v35[6] = v33;
    *&v145 = sub_1BD3A376C;
    *(&v145 + 1) = v35;
    *&v143 = MEMORY[0x1E69E9820];
    *(&v143 + 1) = 1107296256;
    *&v144 = sub_1BD198918;
    *(&v144 + 1) = &block_descriptor_121;
    v36 = _Block_copy(&v143);
    sub_1BE048964();

    v37 = [v34 hyperlinkSourcesFromApplyFooter:v31 linkTapped:v36];
    _Block_release(v36);
    if (v37)
    {
      sub_1BD559F34();
      v38 = sub_1BE052744();
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    v40 = [v31 footerText];
    v41 = sub_1BE052434();
    v43 = v42;

    v44 = sub_1BE0501C4();
    v39 = v117;
    sub_1BE04E1F4();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    LOBYTE(v133[0]) = 0;
    LOBYTE(v119) = 0;
    sub_1BE051CE4();
    sub_1BE04EE54();

    *&v118[55] = v141[11];
    *&v118[71] = v141[12];
    *&v118[87] = v141[13];
    *&v118[103] = v142;
    *&v118[7] = v141[8];
    *&v118[23] = v141[9];
    *&v118[39] = v141[10];
    *&v135 = v38;
    *(&v135 + 1) = 4;
    LOBYTE(v136) = 0;
    *(&v136 + 1) = v41;
    *&v137 = v43;
    *(&v137 + 1) = v104;
    *&v138 = v103;
    BYTE8(v138) = v44;
    *&v139 = v46;
    *(&v139 + 1) = v48;
    *&v140 = v50;
    *(&v140 + 1) = v52;
    LOBYTE(v141[0]) = 0;
    *(&v141[4] + 1) = *&v118[64];
    *(&v141[5] + 1) = *&v118[80];
    *(&v141[6] + 1) = *&v118[96];
    *&v141[7] = *(&v142 + 1);
    *(v141 + 1) = *v118;
    *(&v141[1] + 1) = *&v118[16];
    *(&v141[2] + 1) = *&v118[32];
    *(&v141[3] + 1) = *&v118[48];
    PKEdgeInsetsMake(&v135, v53);
    v153 = v141[4];
    v154 = v141[5];
    v155 = v141[6];
    v156 = *&v141[7];
    v149 = v141[0];
    v150 = v141[1];
    v151 = v141[2];
    v152 = v141[3];
    v145 = v137;
    v146 = v138;
    v147 = v139;
    v148 = v140;
    v143 = v135;
    v144 = v136;
    v20 = v106;
    a2 = v107;
    v23 = v105;
  }

  else
  {
    sub_1BD316EB8(&v143);
    v39 = a3;
  }

  v54 = sub_1BE04F7B4();
  v55 = v111;
  *v111 = v54;
  *(v55 + 8) = 0x4020000000000000;
  *(v55 + 16) = 0;
  v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A538) + 44);
  *&v135 = a2;
  swift_getKeyPath();
  sub_1BD559924(v39, v23);
  v56 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v57 = swift_allocObject();
  sub_1BD559988(v23, v57 + v56);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A548);
  sub_1BD0DE4F4(&qword_1EBD4A550, &qword_1EBD4A540);
  sub_1BD559A6C();
  sub_1BD559AC0();
  sub_1BE0519C4();
  v58 = sub_1BE0501E4();
  sub_1BE04E1F4();
  v59 = v55 + *(v108 + 36);
  *v59 = v58;
  *(v59 + 8) = v60;
  *(v59 + 16) = v61;
  *(v59 + 24) = v62;
  *(v59 + 32) = v63;
  *(v59 + 40) = 0;
  v64 = sub_1BE0501C4();
  sub_1BE04E1F4();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v113;
  sub_1BD0DE204(v55, v113, &qword_1EBD4A520);
  v74 = v73 + *(v110 + 36);
  *v74 = v64;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  v75 = sub_1BE0501F4();
  sub_1BE04E1F4();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v73;
  v85 = v109;
  sub_1BD0DE204(v84, v109, &qword_1EBD4A528);
  v86 = v85 + *(v112 + 36);
  *v86 = v75;
  *(v86 + 8) = v77;
  *(v86 + 16) = v79;
  *(v86 + 24) = v81;
  *(v86 + 32) = v83;
  *(v86 + 40) = 0;
  v87 = v114;
  sub_1BD0DE204(v85, v114, &qword_1EBD4A530);
  v130 = v154;
  v131 = v155;
  v126 = v150;
  v127 = v151;
  v128 = v152;
  v129 = v153;
  v122 = v146;
  v123 = v147;
  v124 = v148;
  v125 = v149;
  v119 = v143;
  v132 = v156;
  v120 = v144;
  v121 = v145;
  v88 = v115;
  sub_1BD0DE19C(v87, v115, &qword_1EBD4A530);
  v89 = v128;
  v133[10] = v129;
  v133[11] = v130;
  v90 = v130;
  v133[12] = v131;
  v91 = v125;
  v92 = v124;
  v133[6] = v125;
  v133[7] = v126;
  v93 = v126;
  v94 = v127;
  v133[8] = v127;
  v133[9] = v128;
  v95 = v121;
  v96 = v120;
  v133[2] = v121;
  v133[3] = v122;
  v97 = v122;
  v98 = v123;
  v133[4] = v123;
  v133[5] = v124;
  v99 = v119;
  v133[0] = v119;
  v133[1] = v120;
  v100 = v116;
  *(v116 + 160) = v129;
  *(v100 + 176) = v90;
  *(v100 + 192) = v131;
  *(v100 + 96) = v91;
  *(v100 + 112) = v93;
  *(v100 + 128) = v94;
  *(v100 + 144) = v89;
  *(v100 + 32) = v95;
  *(v100 + 48) = v97;
  *(v100 + 64) = v98;
  *(v100 + 80) = v92;
  v134 = v132;
  *(v100 + 208) = v132;
  *v100 = v99;
  *(v100 + 16) = v96;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A590);
  sub_1BD0DE19C(v88, v100 + *(v101 + 48), &qword_1EBD4A530);
  sub_1BD0DE19C(v133, &v135, &qword_1EBD4A598);
  sub_1BD0DE53C(v87, &qword_1EBD4A530);
  sub_1BD0DE53C(v88, &qword_1EBD4A530);
  v141[4] = v129;
  v141[5] = v130;
  v141[6] = v131;
  v141[0] = v125;
  v141[1] = v126;
  v141[2] = v127;
  v141[3] = v128;
  v137 = v121;
  v138 = v122;
  *&v141[7] = v132;
  v139 = v123;
  v140 = v124;
  v135 = v119;
  v136 = v120;
  return sub_1BD0DE53C(&v135, &qword_1EBD4A598);
}

uint64_t sub_1BD556914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45160);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = sub_1BE04AA64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = type metadata accessor for MultiHyperLinkDetailSheet();
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
  type metadata accessor for PaymentOfferSelectorTile();
  sub_1BD0DE19C(v9, v5, &unk_1EBD45160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8);
  sub_1BE0518F4();
  return sub_1BD0DE53C(v9, &unk_1EBD45160);
}

uint64_t sub_1BD556AA8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a3;
  v39 = sub_1BE04ECE4();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PaymentOfferSelectorTile();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  v12 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A578);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v38 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5A0);
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v18);
  v20 = &v38 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A570);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v43 = &v38 - v23;
  v44 = a2;
  LOBYTE(a1) = *a1;
  sub_1BD559924(a2, v12);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = v24 + v10;
  v26 = swift_allocObject();
  sub_1BD559988(v12, v26 + v24);
  *(v26 + v25) = a1;
  v27 = v39;
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5A8);
  sub_1BD55A014();
  sub_1BE051704();
  sub_1BE04ECD4();
  v28 = sub_1BD0DE4F4(&qword_1EBD4A580, &qword_1EBD4A578);
  v29 = sub_1BD55B02C(&qword_1EBD4A588, MEMORY[0x1E697C1D8]);
  sub_1BE050894();
  (*(v41 + 8))(v7, v27);
  (*(v14 + 8))(v17, v13);
  if (sub_1BD55A458(a1))
  {
    sub_1BE052434();
  }

  v47 = v13;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v42;
  v31 = v43;
  sub_1BE050DE4();

  (*(v40 + 8))(v20, v30);
  if (v44[136] == 1)
  {
    if (v44[105])
    {
      v32 = 1;
    }

    else
    {
      v32 = v44[106];
    }
  }

  else
  {
    v32 = 0;
  }

  KeyPath = swift_getKeyPath();
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = v45;
  sub_1BD0DE204(v31, v45, &qword_1EBD4A570);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A548);
  v37 = (v35 + *(result + 36));
  *v37 = KeyPath;
  v37[1] = sub_1BD55A470;
  v37[2] = v34;
  return result;
}

uint64_t sub_1BD556FDC@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v37, v1);
  v3 = &v35 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5B8);
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v5);
  v7 = &v35 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5C0);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v8);
  v10 = &v35 - v9;
  *&v43 = sub_1BD5574C4();
  *(&v43 + 1) = v11;
  sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = sub_1BE0501D4();
  sub_1BE04E1F4();
  v42 = v16 & 1;
  v41 = 0;
  *&v43 = v12;
  *(&v43 + 1) = v14;
  LOBYTE(v44) = v16 & 1;
  *(&v44 + 1) = v18;
  LOBYTE(v45) = v19;
  *(&v45 + 1) = v20;
  *v46 = v21;
  *&v46[8] = v22;
  *&v46[16] = v23;
  v46[24] = 0;
  sub_1BE050384();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF90);
  v25 = sub_1BD2A275C();
  sub_1BE050854();
  v49[2] = v45;
  v50[0] = *v46;
  *(v50 + 9) = *&v46[9];
  v49[0] = v43;
  v49[1] = v44;
  sub_1BD0DE53C(v49, &unk_1EBD3DF90);
  v26 = *MEMORY[0x1E697E6C8];
  v27 = sub_1BE04EB24();
  (*(*(v27 - 8) + 104))(v3, v26, v27);
  sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    *&v43 = v24;
    *(&v43 + 1) = v25;
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v29 = v36;
    sub_1BE050B34();
    sub_1BD0DE53C(v3, &qword_1EBD3C1D0);
    (*(v4 + 8))(v7, v29);
    sub_1BE051CD4();
    sub_1BE04EE54();
    v30 = v40;
    (*(v38 + 32))(v40, v10, v39);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A5A8);
    v31 = (v30 + *(result + 36));
    v32 = v47;
    v31[4] = *&v46[16];
    v31[5] = v32;
    v31[6] = v48;
    v33 = v44;
    *v31 = v43;
    v31[1] = v33;
    v34 = *v46;
    v31[2] = v45;
    v31[3] = v34;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD5574C4()
{
  v0 = sub_1BE04BD74();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x1EEE9AC00](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x1E69B8078], v0, v3);
  v6 = sub_1BE04B714();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_1BD557690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A680);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A688);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v25 - v19;
  *v20 = sub_1BE04F7C4();
  *(v20 + 1) = 0x4010000000000000;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A690);
  sub_1BD5578E8(a1, &v20[*(v21 + 44)]);
  *v12 = sub_1BE04F7C4();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A698);
  sub_1BD557D6C(a1, &v12[*(v22 + 44)]);
  *&v12[*(v5 + 44)] = 0;
  sub_1BD0DE19C(v20, v16, &qword_1EBD4A688);
  sub_1BD0DE19C(v12, v8, &qword_1EBD4A680);
  sub_1BD0DE19C(v16, a2, &qword_1EBD4A688);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6A0);
  sub_1BD0DE19C(v8, a2 + *(v23 + 48), &qword_1EBD4A680);
  sub_1BD0DE53C(v12, &qword_1EBD4A680);
  sub_1BD0DE53C(v20, &qword_1EBD4A688);
  sub_1BD0DE53C(v8, &qword_1EBD4A680);
  return sub_1BD0DE53C(v16, &qword_1EBD4A688);
}

uint64_t sub_1BD5578E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6A8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A768);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v44 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v44 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B8);
  v45 = *(v21 - 8);
  v46 = v21;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v44 - v27;
  *v20 = sub_1BE04F504();
  *(v20 + 1) = 0x4018000000000000;
  v20[16] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6C0);
  sub_1BD5580D8(a1, &v20[*(v29 + 44)]);
  sub_1BE050394();
  sub_1BD0DE4F4(&qword_1EBD4A6C8, &qword_1EBD4A6B0);
  v44 = v28;
  sub_1BE050854();
  sub_1BD0DE53C(v20, &qword_1EBD4A6B0);
  v30 = *(a1 + 96);
  if (v30)
  {
    v31 = *(a1 + 88);
    *v6 = sub_1BE04F504();
    *(v6 + 1) = 0x4018000000000000;
    v6[16] = 0;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6D0);
    sub_1BD5588C4(a1, v31, v30, &v6[*(v32 + 44)]);
    sub_1BD0DE204(v6, v13, &qword_1EBD4A6A8);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  (*(v49 + 56))(v13, v33, 1, v50);
  v34 = v47;
  sub_1BD0DE204(v13, v47, &qword_1EBD4A768);
  v36 = v44;
  v35 = v45;
  v37 = *(v45 + 16);
  v38 = v46;
  v37(v24, v44, v46);
  v39 = v48;
  sub_1BD0DE19C(v34, v48, &qword_1EBD4A768);
  v40 = v51;
  v37(v51, v24, v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A770);
  sub_1BD0DE19C(v39, &v40[*(v41 + 48)], &qword_1EBD4A768);
  sub_1BD0DE53C(v34, &qword_1EBD4A768);
  v42 = *(v35 + 8);
  v42(v36, v38);
  sub_1BD0DE53C(v39, &qword_1EBD4A768);
  return (v42)(v24, v38);
}

uint64_t sub_1BD557D6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6A8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6B8);
  v14 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v15);
  v33 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v31 - v19;
  *v13 = sub_1BE04F504();
  *(v13 + 1) = 0x4018000000000000;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6C0);
  sub_1BD5580D8(a1, &v13[*(v21 + 44)]);
  sub_1BE050394();
  sub_1BD0DE4F4(&qword_1EBD4A6C8, &qword_1EBD4A6B0);
  v32 = v20;
  sub_1BE050854();
  sub_1BD0DE53C(v13, &qword_1EBD4A6B0);
  *v9 = sub_1BE04F504();
  *(v9 + 1) = 0x4018000000000000;
  v9[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6D0);
  sub_1BD5588C4(a1, 0, 0xE000000000000000, &v9[*(v22 + 44)]);
  v23 = *(v14 + 16);
  v24 = v33;
  v25 = v34;
  v23(v33, v20, v34);
  v26 = v35;
  sub_1BD0DE19C(v9, v35, &qword_1EBD4A6A8);
  v27 = v36;
  v23(v36, v24, v25);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6D8);
  sub_1BD0DE19C(v26, &v27[*(v28 + 48)], &qword_1EBD4A6A8);
  sub_1BD0DE53C(v9, &qword_1EBD4A6A8);
  v29 = *(v14 + 8);
  v29(v32, v25);
  sub_1BD0DE53C(v26, &qword_1EBD4A6A8);
  return (v29)(v24, v25);
}

uint64_t sub_1BD5580D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v3);
  v73 = v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E8);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v72 = v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6F0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v79 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v89 = v69 - v13;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v87, v14);
  v16 = v69 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A758);
  MEMORY[0x1EEE9AC00](v86, v17);
  v76 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v82 = v69 - v21;
  v88 = a1;
  v22 = *(a1 + 72);
  v23 = *(a1 + 80);
  v90 = v22;
  v91 = v23;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v24 = sub_1BE0506C4();
  v26 = v25;
  v28 = v27;
  sub_1BE050324();
  v29 = sub_1BE0505F4();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_1BD0DDF10(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v83 = v31;
  v84 = v29;
  v90 = v29;
  v91 = v31;
  v37 = v33 & 1;
  LOBYTE(v92) = v33 & 1;
  v85 = v35;
  v93 = v35;
  v94 = KeyPath;
  v81 = KeyPath;
  v95 = 1;
  v96 = 0;
  v38 = *MEMORY[0x1E697E6C8];
  v39 = sub_1BE04EB24();
  v40 = *(v39 - 8);
  v41 = *(v40 + 104);
  v42 = v40 + 104;
  v41(v16, v38, v39);
  v43 = sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    v69[1] = v43;
    v69[2] = v42;
    v70 = v41;
    v71 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C108);
    sub_1BD1B9C50();
    v45 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v46 = v82;
    v47 = v87;
    sub_1BE050B34();
    sub_1BD0DE53C(v16, &qword_1EBD3C1D0);
    sub_1BD0DDF10(v84, v83, v37);

    *&v46[*(v86 + 36)] = sub_1BE04FC74();
    v48 = v46;
    if (*(v88 + 96))
    {
      v49 = 1;
      v50 = v79;
      v51 = v89;
LABEL_6:
      v54 = v77;
      v53 = v78;
LABEL_7:
      (*(v54 + 56))(v51, v49, 1, v53);
      v55 = v76;
      sub_1BD0DE19C(v48, v76, &qword_1EBD4A758);
      sub_1BD0DE19C(v51, v50, &qword_1EBD4A6F0);
      v56 = v80;
      sub_1BD0DE19C(v55, v80, &qword_1EBD4A758);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A760);
      sub_1BD0DE19C(v50, v56 + *(v57 + 48), &qword_1EBD4A6F0);
      sub_1BD0DE53C(v51, &qword_1EBD4A6F0);
      sub_1BD0DE53C(v48, &qword_1EBD4A758);
      sub_1BD0DE53C(v50, &qword_1EBD4A6F0);
      return sub_1BD0DE53C(v55, &qword_1EBD4A758);
    }

    v52 = v45;
    v51 = v89;
    if (*(v88 + 136))
    {
      v49 = 1;
      v50 = v79;
      goto LABEL_6;
    }

    v58 = v47;
    v59 = sub_1BE051574();
    v60 = sub_1BE04FC94();
    v61 = sub_1BE050324();
    v62 = swift_getKeyPath();
    v88 = v59;
    v90 = v59;
    LODWORD(v91) = v60;
    v92 = v62;
    v93 = v61;
    v86 = v61;
    v70(v16, v71, v39);
    result = sub_1BE052334();
    if (result)
    {
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A710);
      v64 = sub_1BD55AA50();
      v65 = v73;
      sub_1BE050B34();
      sub_1BD0DE53C(v16, &qword_1EBD3C1D0);

      sub_1BE050384();
      v90 = v63;
      v91 = v58;
      v92 = v64;
      v93 = v52;
      swift_getOpaqueTypeConformance2();
      v66 = v72;
      v67 = v75;
      sub_1BE050854();
      (*(v74 + 8))(v65, v67);
      v54 = v77;
      v68 = v78;
      (*(v77 + 32))(v51, v66, v78);
      v53 = v68;
      v49 = 0;
      v50 = v79;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD5588C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v65, v7);
  v9 = v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E0);
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v64 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6E8);
  v69 = *(v13 - 8);
  v70 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v63 = v62 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6F0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v73 = v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A6F8);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23, v25);
  v68 = v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = (v62 - v29);
  *v30 = sub_1BE051CE4();
  v30[1] = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A700);
  sub_1BD558F20(a1, a2, a3, v30 + *(v32 + 44));
  v33 = sub_1BE051D94();
  v34 = *(a1 + 160);
  v35 = *(a1 + 168);
  v74 = *(a1 + 152);
  v75 = v34;
  LOBYTE(v76) = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
  MEMORY[0x1BFB3E970](&v78, v36);
  v37 = v78;
  v38 = v30 + *(v24 + 44);
  *v38 = v33;
  v38[8] = v37;
  v39 = *(a1 + 136);
  v71 = v19;
  if (v39)
  {
    v40 = 1;
    v42 = v69;
    v41 = v70;
LABEL_5:
    v57 = v73;
    (*(v42 + 56))(v73, v40, 1, v41);
    v58 = v68;
    sub_1BD0DE19C(v30, v68, &qword_1EBD4A6F8);
    v59 = v71;
    sub_1BD0DE19C(v57, v71, &qword_1EBD4A6F0);
    v60 = v72;
    sub_1BD0DE19C(v58, v72, &qword_1EBD4A6F8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A708);
    sub_1BD0DE19C(v59, v60 + *(v61 + 48), &qword_1EBD4A6F0);
    sub_1BD0DE53C(v57, &qword_1EBD4A6F0);
    sub_1BD0DE53C(v30, &qword_1EBD4A6F8);
    sub_1BD0DE53C(v59, &qword_1EBD4A6F0);
    return sub_1BD0DE53C(v58, &qword_1EBD4A6F8);
  }

  v43 = sub_1BE051574();
  v44 = sub_1BE04FC94();
  v45 = sub_1BE050324();
  KeyPath = swift_getKeyPath();
  v62[1] = v43;
  v74 = v43;
  LODWORD(v75) = v44;
  v76 = KeyPath;
  v77 = v45;
  v47 = *MEMORY[0x1E697E6C8];
  v48 = sub_1BE04EB24();
  (*(*(v48 - 8) + 104))(v9, v47, v48);
  sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if (result)
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A710);
    v51 = sub_1BD55AA50();
    v52 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    v54 = v64;
    v53 = v65;
    sub_1BE050B34();
    sub_1BD0DE53C(v9, &qword_1EBD3C1D0);

    sub_1BE050384();
    v74 = v50;
    v75 = v53;
    v76 = v51;
    v77 = v52;
    swift_getOpaqueTypeConformance2();
    v55 = v63;
    v56 = v67;
    sub_1BE050854();
    (*(v66 + 8))(v54, v56);
    v42 = v69;
    v41 = v70;
    (*(v69 + 32))(v73, v55, v70);
    v40 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD558F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A730);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v68 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C1D0);
  MEMORY[0x1EEE9AC00](v69, v12);
  v14 = v68 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A738);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v15);
  v70 = v68 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A740);
  v74 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v73 = v68 - v19;
  v20 = *(a1 + 136) == 1;
  v75 = v8;
  v68[1] = a4;
  if (v20)
  {
    v21 = *(a1 + 160);
    v22 = *(a1 + 168);
    *&v83 = *(a1 + 152);
    *(&v83 + 1) = v21;
    LOBYTE(v84) = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4DFE0);
    MEMORY[0x1BFB3E970](&v76, v23);
    if (v76)
    {
      *&v83 = a2;
      *(&v83 + 1) = a3;
      sub_1BD0DDEBC();
      sub_1BE048C84();
      v24 = sub_1BE0506C4();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      KeyPath = swift_getKeyPath();
      v32 = sub_1BE050324();
      v33 = swift_getKeyPath();
      v82 = v28 & 1;
      v81 = 0;
      *&v76 = v24;
      *(&v76 + 1) = v26;
      LOBYTE(v77) = v28 & 1;
      *(&v77 + 1) = v30;
      *&v78 = KeyPath;
      *(&v78 + 1) = 2;
      LOBYTE(v79) = 0;
      *(&v79 + 1) = v33;
      v80 = v32;
      v34 = *MEMORY[0x1E697E6C8];
      v35 = sub_1BE04EB24();
      (*(*(v35 - 8) + 104))(v14, v34, v35);
      sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730]);
      result = sub_1BE052334();
      if (result)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A748);
        v38 = sub_1BD55ABC0();
        v39 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
        v40 = v70;
        v41 = v69;
        sub_1BE050B34();
        sub_1BD0DE53C(v14, &qword_1EBD3C1D0);
        v86 = v79;
        v87 = v80;
        v84 = v77;
        v85 = v78;
        v83 = v76;
        sub_1BD0DE53C(&v83, &qword_1EBD4A748);
        sub_1BE050384();
        *&v76 = v37;
        *(&v76 + 1) = v41;
        *&v77 = v38;
        *(&v77 + 1) = v39;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v43 = v73;
        v44 = v72;
        sub_1BE050854();
        (*(v71 + 8))(v40, v44);
        v45 = v74;
        (*(v74 + 16))(v11, v43, v17);
        swift_storeEnumTagMultiPayload();
        *&v76 = v44;
        *(&v76 + 1) = OpaqueTypeConformance2;
        swift_getOpaqueTypeConformance2();
        sub_1BE04F9A4();
        return (*(v45 + 8))(v43, v17);
      }

      goto LABEL_10;
    }
  }

  v68[0] = v17;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v46 = sub_1BE0506C4();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = swift_getKeyPath();
  v54 = sub_1BE050324();
  v55 = swift_getKeyPath();
  v82 = v50 & 1;
  v81 = 0;
  *&v76 = v46;
  *(&v76 + 1) = v48;
  LOBYTE(v77) = v50 & 1;
  *(&v77 + 1) = v52;
  *&v78 = v53;
  *(&v78 + 1) = 1;
  LOBYTE(v79) = 0;
  *(&v79 + 1) = v55;
  v80 = v54;
  v56 = *MEMORY[0x1E697E6C8];
  v57 = sub_1BE04EB24();
  (*(*(v57 - 8) + 104))(v14, v56, v57);
  sub_1BD55B02C(&qword_1EBD3C218, MEMORY[0x1E697E730]);
  result = sub_1BE052334();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A748);
  v59 = sub_1BD55ABC0();
  v60 = sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
  v61 = v70;
  v62 = v69;
  sub_1BE050B34();
  sub_1BD0DE53C(v14, &qword_1EBD3C1D0);
  v86 = v79;
  v87 = v80;
  v84 = v77;
  v85 = v78;
  v83 = v76;
  sub_1BD0DE53C(&v83, &qword_1EBD4A748);
  sub_1BE050384();
  *&v76 = v58;
  *(&v76 + 1) = v62;
  *&v77 = v59;
  *(&v77 + 1) = v60;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v73;
  v65 = v72;
  sub_1BE050854();
  (*(v71 + 8))(v61, v65);
  v66 = v74;
  v67 = v68[0];
  (*(v74 + 16))(v11, v64, v68[0]);
  swift_storeEnumTagMultiPayload();
  *&v76 = v65;
  *(&v76 + 1) = v63;
  swift_getOpaqueTypeConformance2();
  sub_1BE04F9A4();
  return (*(v66 + 8))(v64, v67);
}

unint64_t sub_1BD559828()
{
  result = qword_1EBD4A4A8;
  if (!qword_1EBD4A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A488);
    sub_1BD0DE4F4(&qword_1EBD4A4B0, &qword_1EBD4A4B8);
    sub_1BD0DE4F4(&qword_1EBD3B468, &qword_1EBD3FC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A4A8);
  }

  return result;
}

double sub_1BD55990C()
{
  result = 26.0;
  qword_1EBD4A450 = 0x403A000000000000;
  return result;
}

uint64_t sub_1BD559924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferSelectorTile();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD559988(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferSelectorTile();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD5599EC@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PaymentOfferSelectorTile() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD556AA8(a1, v6, a2);
}

unint64_t sub_1BD559A6C()
{
  result = qword_1EBD4A558;
  if (!qword_1EBD4A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A558);
  }

  return result;
}

unint64_t sub_1BD559AC0()
{
  result = qword_1EBD4A560;
  if (!qword_1EBD4A560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A548);
    sub_1BD559B78();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A560);
  }

  return result;
}

unint64_t sub_1BD559B78()
{
  result = qword_1EBD4A568;
  if (!qword_1EBD4A568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A570);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A578);
    sub_1BE04ECE4();
    sub_1BD0DE4F4(&qword_1EBD4A580, &qword_1EBD4A578);
    sub_1BD55B02C(&qword_1EBD4A588, MEMORY[0x1E697C1D8]);
    swift_getOpaqueTypeConformance2();
    sub_1BD55B02C(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A568);
  }

  return result;
}

uint64_t sub_1BD559CF4(uint64_t a1)
{
  type metadata accessor for PaymentOfferSelectorTile();

  return sub_1BD556914(a1);
}

uint64_t sub_1BD559D64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04FE04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7A0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v19 - v10;
  sub_1BE04FE14();
  if (sub_1BE04FE24())
  {
    v12 = 0.4;
  }

  else
  {
    v12 = 1.0;
  }

  (*(v3 + 32))(v11, v6, v2);
  *&v11[*(v8 + 44)] = v12;
  v13 = sub_1BE04FE24();
  v14.n128_u64[0] = 0.5;
  if (v13)
  {
    v14.n128_f64[0] = 0.0;
  }

  v15 = MEMORY[0x1BFB3EDF0](v14, 1.0, 0.0);
  v16 = sub_1BE04FE24();
  sub_1BD0DE204(v11, a1, &qword_1EBD4A7A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7A8);
  v18 = a1 + *(result + 36);
  *v18 = v15;
  *(v18 + 8) = v16 & 1;
  return result;
}

unint64_t sub_1BD559F34()
{
  result = qword_1EBD43EA8;
  if (!qword_1EBD43EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD43EA8);
  }

  return result;
}

uint64_t sub_1BD559F80()
{
  v1 = type metadata accessor for PaymentOfferSelectorTile();
  v2 = *(v1 - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  return (*(v3 + *(v1 + 40)))(*(v3 + *(v2 + 64)));
}

unint64_t sub_1BD55A014()
{
  result = qword_1EBD4A5B0;
  if (!qword_1EBD4A5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD3C1D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBD3DF90);
    sub_1BD2A275C();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD3C220, &qword_1EBD3C1D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A5B0);
  }

  return result;
}

uint64_t sub_1BD55A178@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F224();
  *a1 = result;
  return result;
}

uint64_t sub_1BD55A1CC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1BFB3C340]();
  *a1 = result;
  return result;
}

uint64_t sub_1BD55A224@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE04F364();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BD55A2E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BE04F3A4();
  *a1 = result;
  return result;
}

uint64_t sub_1BD55A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a6(v11);
}

uint64_t objectdestroyTm_55()
{
  v1 = type metadata accessor for PaymentOfferSelectorTile();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 128))
  {
  }

  v3 = v2 + *(v1 + 36);

  v4 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD393E8) + 32));
  v5 = type metadata accessor for MultiHyperLinkDetailSheet();
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = sub_1BE04AA64();
      (*(*(v6 - 8) + 8))(v4, v6);
    }

    else
    {
    }
  }

  if (*(v2 + *(v1 + 44)))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_1BD55A724()
{
  result = qword_1EBD4A5E0;
  if (!qword_1EBD4A5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5D8);
    sub_1BD55A7DC();
    sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A5E0);
  }

  return result;
}

unint64_t sub_1BD55A7DC()
{
  result = qword_1EBD4A5E8;
  if (!qword_1EBD4A5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A5F0);
    sub_1BD0DE4F4(&qword_1EBD4A5F8, &qword_1EBD4A600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A5E8);
  }

  return result;
}

unint64_t sub_1BD55A894()
{
  result = qword_1EBD4A610;
  if (!qword_1EBD4A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A610);
  }

  return result;
}

unint64_t sub_1BD55A998()
{
  result = qword_1EBD4A668;
  if (!qword_1EBD4A668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD41088);
    sub_1BD0DE4F4(&qword_1EBD3EFC8, &qword_1EBD3EFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A668);
  }

  return result;
}

unint64_t sub_1BD55AA50()
{
  result = qword_1EBD4A718;
  if (!qword_1EBD4A718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A710);
    sub_1BD55AB08();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A718);
  }

  return result;
}

unint64_t sub_1BD55AB08()
{
  result = qword_1EBD4A720;
  if (!qword_1EBD4A720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A728);
    sub_1BD0DE4F4(&unk_1EBD4E900, &qword_1EBD3ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A720);
  }

  return result;
}

unint64_t sub_1BD55ABC0()
{
  result = qword_1EBD4A750;
  if (!qword_1EBD4A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A748);
    sub_1BD1B9C50();
    sub_1BD0DE4F4(&qword_1EBD38BC8, &unk_1EBD49190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A750);
  }

  return result;
}

double sub_1BD55AC98(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 3;
  return result;
}

unint64_t sub_1BD55ACCC()
{
  result = qword_1EBD4A780;
  if (!qword_1EBD4A780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A788);
    sub_1BD55AD58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A780);
  }

  return result;
}

unint64_t sub_1BD55AD58()
{
  result = qword_1EBD4A790;
  if (!qword_1EBD4A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A498);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A488);
    sub_1BE04EDE4();
    sub_1BD559828();
    sub_1BD55B02C(&qword_1EBD3BB58, MEMORY[0x1E697EAF0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD4A798, &qword_1EBD4A4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A790);
  }

  return result;
}

unint64_t sub_1BD55AEB8()
{
  result = qword_1EBD4A7B0;
  if (!qword_1EBD4A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7A8);
    sub_1BD55AF70();
    sub_1BD0DE4F4(&unk_1EBD36780, &unk_1EBD51F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A7B0);
  }

  return result;
}

unint64_t sub_1BD55AF70()
{
  result = qword_1EBD4A7B8;
  if (!qword_1EBD4A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7A0);
    sub_1BD55B02C(&qword_1EBD3EFA8, MEMORY[0x1E697C8D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A7B8);
  }

  return result;
}

uint64_t sub_1BD55B02C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AddContactSheet()
{
  result = qword_1EBD4A7C0;
  if (!qword_1EBD4A7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD55B0E8()
{
  sub_1BD55B248(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1BD55B248(319, &qword_1EBD469B0, sub_1BD55B2AC, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BD1030A8();
      if (v2 <= 0x3F)
      {
        sub_1BD327BD8(319, &qword_1EBD40458);
        if (v3 <= 0x3F)
        {
          sub_1BD327BD8(319, &qword_1EBD496E0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BD55B248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD55B2AC()
{
  result = qword_1EBD3E6C8;
  if (!qword_1EBD3E6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3E6C8);
  }

  return result;
}

unint64_t sub_1BD55B30C()
{
  result = qword_1EBD4A7D0;
  if (!qword_1EBD4A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A7D0);
  }

  return result;
}

uint64_t sub_1BD55B360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BD0DE19C(v2, &v16 - v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1BD55B57C@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for AddContactSheet();
  v3 = *(v2 - 8);
  v53 = v2 - 8;
  v56 = v3;
  v55 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v54 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04ECF4();
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7D8);
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7E0);
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v42 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7E8);
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v18);
  v20 = &v42 - v19;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7F0);
  MEMORY[0x1EEE9AC00](v48, v21);
  v44 = &v42 - v22;
  v43 = v1;
  v59 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A7F8);
  sub_1BD0DE4F4(&qword_1EBD4A800, &qword_1EBD4A7F8);
  sub_1BE0504A4();
  v58 = v1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A808);
  v24 = sub_1BD0DE4F4(&qword_1EBD4A810, &qword_1EBD4A7D8);
  v25 = sub_1BD0DE4F4(&qword_1EBD4A818, &qword_1EBD4A808);
  sub_1BE051024();
  (*(v45 + 8))(v13, v10);
  *&v61 = v10;
  *(&v61 + 1) = v23;
  v62 = v24;
  v63 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050AC4();
  (*(v46 + 8))(v17, v14);
  v27 = v50;
  sub_1BE051DD4();
  *&v61 = v14;
  *(&v61 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BD55D1AC();
  v28 = v44;
  v29 = v47;
  v30 = v51;
  sub_1BE051134();
  (*(v52 + 8))(v27, v30);
  (*(v49 + 8))(v20, v29);
  v31 = sub_1BE051274();
  v32 = sub_1BE0501D4();
  v33 = v28 + *(v48 + 36);
  *v33 = v31;
  *(v33 + 8) = v32;
  v34 = v43;
  v35 = v43 + *(v53 + 48);
  v36 = *v35;
  v37 = *(v35 + 16);
  v61 = v36;
  v62 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v61 = v60;
  v38 = v54;
  sub_1BD55D204(v34, v54);
  v39 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v40 = swift_allocObject();
  sub_1BD55D268(v38, v40 + v39);
  sub_1BD55D34C();
  sub_1BE051064();

  return sub_1BD08599C(v28);
}

uint64_t sub_1BD55BC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A838);
  return sub_1BD55BC7C(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_1BD55BC7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41590);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v3);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = type metadata accessor for AddContactSheet();
  v10 = (a1 + v9[7]);
  v11 = v10[1];
  v65 = *v10;
  v66 = v11;
  v12 = (a1 + v9[10]);
  v45 = a1;
  v14 = v12[1];
  v15 = v12[2];
  *&v51 = *v12;
  v13 = v51;
  *(&v51 + 1) = v14;
  *&v52 = v15;
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516C4();
  v44 = v59;
  v16 = (a1 + v9[8]);
  v17 = v16[1];
  v56 = *v16;
  v57 = v17;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  sub_1BE0506C4();
  v47 = v8;
  sub_1BE051E24();
  v56 = v13;
  v57 = v14;
  v58 = v15;
  sub_1BE0516A4();
  LOBYTE(a1) = sub_1BD55C0DC(v51, *(&v51 + 1));

  v18 = 0;
  if (a1)
  {
    goto LABEL_6;
  }

  v56 = v13;
  v57 = v14;
  v58 = v15;
  sub_1BE0516A4();
  v19 = v51;

  v20 = HIBYTE(*(&v19 + 1)) & 0xFLL;
  if ((*(&v19 + 1) & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
LABEL_6:
    v45 = 0;
    KeyPath = 0;
    v21 = 0;
    v31 = 0;
    v26 = 0;
    v28 = 0;
    v30 = 0;
  }

  else
  {
    v45 = sub_1BE051574();
    v21 = sub_1BE0513B4();
    KeyPath = swift_getKeyPath();
    v23 = sub_1BE0501C4();
    sub_1BE04E1F4();
    v18 = v24;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    LOBYTE(v56) = 0;
    v31 = v23;
  }

  v32 = v49;
  v33 = *(v49 + 16);
  v34 = v48;
  v35 = v47;
  v36 = v50;
  v33(v48, v47, v50);
  v37 = v46;
  v33(v46, v34, v36);
  v38 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A840) + 48)];
  v39 = v45;
  *&v51 = v45;
  *(&v51 + 1) = KeyPath;
  *&v52 = v21;
  *(&v52 + 1) = v31;
  *&v53 = v18;
  *(&v53 + 1) = v26;
  *&v54 = v28;
  *(&v54 + 1) = v30;
  v55 = 0;
  v38[64] = 0;
  v40 = v52;
  *v38 = v51;
  *(v38 + 1) = v40;
  v41 = v54;
  *(v38 + 2) = v53;
  *(v38 + 3) = v41;
  sub_1BD0DE19C(&v51, &v56, &qword_1EBD4A848);
  v42 = *(v32 + 8);
  v42(v35, v36);
  v56 = v39;
  v57 = KeyPath;
  v58 = v21;
  v59 = v31;
  v60 = v18;
  v61 = v26;
  v62 = v28;
  v63 = v30;
  v64 = 0;
  sub_1BD55D7A0(&v56);
  return (v42)(v34, v36);
}

id sub_1BD55C0DC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = type metadata accessor for AddContactSheet();
  v4 = *(v2 + *(v3 + 20));
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + *(v3 + 24)))
  {
    v5 = objc_allocWithZone(MEMORY[0x1E695CF50]);
    v6 = v4;
    v7 = sub_1BE052404();
    v8 = [v5 initWithStringValue_];

    v9 = [v8 digits];
    if (!v9)
    {
      sub_1BE052434();
      v9 = sub_1BE052404();
    }

    v10 = [objc_allocWithZone(MEMORY[0x1E695CF50]) initWithStringValue_];

    v11 = [v6 phoneNumberIsValid:v10 forCountryCode:0];
  }

  else
  {
    v8 = v4;
    v10 = sub_1BE052404();
    v11 = [v8 emailAddressIsValid_];
  }

  return v11;
}

uint64_t sub_1BD55C234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A828);
  MEMORY[0x1EEE9AC00](v23, v3);
  v21 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A830);
  v5 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v6);
  v8 = &v21 - v7;
  v9 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3ACD0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  sub_1BE04FB04();
  v26 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE04E424();
  sub_1BE04FAC4();
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  sub_1BD3BAA6C();
  sub_1BE04E424();
  v16 = *(v23 + 48);
  v17 = v21;
  (*(v12 + 16))(v21, v15, v11);
  v18 = &v17[v16];
  v19 = v22;
  (*(v5 + 16))(v18, v8, v22);
  sub_1BE04F854();
  (*(v5 + 8))(v8, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1BD55C580(uint64_t a1)
{
  v2 = type metadata accessor for AddContactSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  sub_1BD55D204(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_1BD55D268(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_1BE051704();
}

uint64_t sub_1BD55C6AC(uint64_t a1)
{
  v18 = sub_1BE04F3D4();
  v2 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = sub_1BE04E664();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v9, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v18);
  }

  sub_1BE04E654();
  return (*(v11 + 8))(v14, v10);
}

id sub_1BD55C928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD55CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AddContactSheet();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4, v8);
  sub_1BD55D204(a1, &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1BD55D268(&v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  sub_1BE051704();
  v11 = a1 + *(v5 + 52);
  v12 = *v11;
  v13 = *(v11 + 8);
  v18[16] = v12;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  LOBYTE(v6) = v18[15];
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v6 & 1) == 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  v17 = (a2 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = sub_1BD10DF54;
  v17[2] = v15;
  return result;
}

uint64_t sub_1BD55CC74(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04D214();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for AddContactSheet();
  v10 = (a1 + *(v24 + 40));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v31 = *v10;
  v32 = v11;
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFA8);
  sub_1BE0516A4();
  v26 = a1;
  v14 = sub_1BD55C0DC(v29, v30);

  if (v14)
  {
    sub_1BE04D1E4();
    v16 = sub_1BE04D204();
    v17 = sub_1BE052C54();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1BD026000, v16, v17, "Hit save with valid contact", v18, 2u);
      MEMORY[0x1BFB45F20](v18, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    v31 = v12;
    v32 = v11;
    v33 = v13;
    sub_1BE0516A4();
    v19 = sub_1BE052404();

    v20 = [objc_opt_self() contactWithDisplayName:0 emailOrPhoneNumber:v19];

    [v20 setValueSource_];
    v21 = *(v26 + *(v24 + 36));
    v22 = v20;
    v21(v20);

    v23 = v25;
    sub_1BD55B360(v25);
    sub_1BE04E654();

    return (*(v27 + 8))(v23, v28);
  }

  return result;
}

id sub_1BD55CF84@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD55D0F0(uint64_t a1, uint64_t *a2)
{
  sub_1BD55C0DC(*a2, a2[1]);
  type metadata accessor for AddContactSheet();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  return sub_1BE0516B4();
}

unint64_t sub_1BD55D1AC()
{
  result = qword_1EBD3ACB0;
  if (!qword_1EBD3ACB0)
  {
    sub_1BE04ECF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD3ACB0);
  }

  return result;
}

uint64_t sub_1BD55D204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddContactSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD55D268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddContactSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD55D2CC(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for AddContactSheet();

  return sub_1BD55D0F0(a1, a2);
}

unint64_t sub_1BD55D34C()
{
  result = qword_1EBD4A820;
  if (!qword_1EBD4A820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7E8);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A7D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A808);
    sub_1BD0DE4F4(&qword_1EBD4A810, &qword_1EBD4A7D8);
    sub_1BD0DE4F4(&qword_1EBD4A818, &qword_1EBD4A808);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD55D1AC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4A820);
  }

  return result;
}

uint64_t objectdestroyTm_56()
{
  v1 = type metadata accessor for AddContactSheet();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1BE04E664();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD55D72C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddContactSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD55D7A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1BD55D808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v1 = -v3;
  if (*v0 < -v3)
  {
    v1 = *v0;
  }

  result = v1 / *v0;
  if (result <= 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1BD55D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A898);
  MEMORY[0x1EEE9AC00](v28, v4);
  v26 = (&v24 - v5);
  v6 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v7 = sub_1BE051854();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860);
  v11 = sub_1BE04EBD4();
  v27 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v24 - v17;
  v30 = v6;
  v31 = *(a1 + 24);
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = v2;
  sub_1BE04F7B4();
  sub_1BE051844();
  v19 = v26;
  sub_1BD55DE4C(v26);
  sub_1BE051CD4();
  WitnessTable = swift_getWitnessTable();
  sub_1BD562710();
  sub_1BE050834();
  sub_1BD0DE53C(v19, &qword_1EBD4A898);
  (*(v25 + 8))(v10, v7);
  v21 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860);
  v35 = WitnessTable;
  v36 = v21;
  swift_getWitnessTable();
  sub_1BD147308(v14);
  v22 = *(v27 + 8);
  v22(v14, v11);
  sub_1BD147308(v18);
  return (v22)(v18, v11);
}

uint64_t sub_1BD55DC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v25 - v13;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v21 = type metadata accessor for PaymentSheetContentContainer();
  sub_1BD147308(a1 + *(v21 + 72));
  v22 = sub_1BD55D808();
  (*(v8 + 16))(v10, v14, a2);
  v27 = v22;
  v28 = v10;
  v29 = &v27;
  v26[0] = a2;
  v26[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A858);
  v25[1] = a5;
  v25[2] = sub_1BD562674(&qword_1EBD36868, &qword_1EBD4A858, &unk_1BE0E1658, sub_1BD0EEEE0);
  sub_1BD13A4C4(&v28, 2uLL, v26);
  v23 = *(v8 + 8);
  v23(v14, a2);
  return (v23)(v10, a2);
}

uint64_t sub_1BD55DE4C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1BE051404();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888) + 36);
  sub_1BE051BD4();
  v4 = sub_1BE0501D4();
  v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0) + 36)] = v4;
  *a1 = v2;
  v5 = sub_1BD55D808();
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A8A0) + 36)) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A898);
  v7 = (a1 + *(result + 36));
  *v7 = 0;
  v7[1] = v8;
  return result;
}

uint64_t sub_1BD55DF6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A870);
  MEMORY[0x1EEE9AC00](v28, v4);
  v6 = &v24 - v5;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  v7 = *(a1 + 32);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  v8 = sub_1BE051854();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868);
  v12 = sub_1BE04EBD4();
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v25 = &v24 - v18;
  v30 = *(a1 + 16);
  v31 = v7;
  v32 = *(a1 + 40);
  v33 = *(a1 + 56);
  v34 = v2;
  sub_1BE04F7B4();
  sub_1BE051844();
  sub_1BD55E588(a1, v6);
  sub_1BE051CD4();
  WitnessTable = swift_getWitnessTable();
  sub_1BD562674(&qword_1EBD36810, &qword_1EBD4A870, &unk_1BE0E1670, sub_1BD56243C);
  sub_1BE050834();
  sub_1BD0DE53C(v6, &qword_1EBD4A870);
  (*(v26 + 8))(v11, v8);
  v20 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868);
  v35 = WitnessTable;
  v36 = v20;
  swift_getWitnessTable();
  v21 = v25;
  sub_1BD147308(v15);
  v22 = *(v27 + 8);
  v22(v15, v12);
  sub_1BD147308(v21);
  return (v22)(v21, v12);
}

uint64_t sub_1BD55E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v30 - v15;
  v33 = v17;
  v34 = v18;
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v22;
  v23 = type metadata accessor for PaymentSheetContentContainer();
  v24 = (a1 + *(v23 + 104));
  v25 = *v24;
  v26 = v24[1];
  v33 = v25;
  v34 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v27 = v31[0];
  sub_1BD147308(a1 + *(v23 + 80));
  v32 = v27;
  v33 = &v32;
  (*(v10 + 16))(v12, v16, a4);
  v34 = v12;
  v31[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A858);
  v31[1] = a4;
  v30[1] = sub_1BD562674(&qword_1EBD36868, &qword_1EBD4A858, &unk_1BE0E1658, sub_1BD0EEEE0);
  v30[2] = a7;
  sub_1BD13A4C4(&v33, 2uLL, v31);
  v28 = *(v10 + 8);
  v28(v16, a4);
  return (v28)(v12, a4);
}

uint64_t sub_1BD55E588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BD55E630(v2, a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A870);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1BD55E630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27[0] = a1;
  v27[1] = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A890);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v27 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4A888);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (v27 - v20);
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = a6;
  v27[7] = a7;
  v22 = *(v27[0] + *(type metadata accessor for PaymentSheetContentContainer() + 84));
  if (v22)
  {
    *v17 = v22;
    swift_storeEnumTagMultiPayload();
    sub_1BD56254C();
    sub_1BE048964();
    return sub_1BE04F9A4();
  }

  else
  {
    v24 = sub_1BE051404();
    v25 = v21 + *(v18 + 36);
    sub_1BE051BD4();
    v26 = sub_1BE0501D4();
    v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD596C0) + 36)] = v26;
    *v21 = v24;
    sub_1BD562604(v21, v17);
    swift_storeEnumTagMultiPayload();
    sub_1BD56254C();
    sub_1BE04F9A4();
    return sub_1BD0DE53C(v21, &qword_1EBD4A888);
  }
}

uint64_t sub_1BD55E848@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1[3];
  v43 = a2;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v41 = a1[6];
  v94 = v41;
  WitnessTable = swift_getWitnessTable();
  v36 = MEMORY[0x1E697F940];
  v92 = WitnessTable;
  v93 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v4 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  v5 = sub_1BE04EBD4();
  v47 = a1[2];
  v39 = a1[5];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = swift_getWitnessTable();
  v91 = MEMORY[0x1E697EBF8];
  v31[1] = v4;
  v88 = swift_getWitnessTable();
  v89 = v93;
  v6 = v5;
  v7 = swift_getWitnessTable();
  *&v95 = v6;
  v46 = v6;
  *(&v95 + 1) = OpaqueTypeMetadata2;
  *&v96 = v7;
  v44 = v7;
  *(&v96 + 1) = swift_getOpaqueTypeConformance2();
  v8 = MEMORY[0x1E697CE30];
  v34 = swift_getOpaqueTypeMetadata2();
  v37 = a1;
  v9 = a1[7];
  v45 = a1[4];
  v38 = v9;
  swift_getOpaqueTypeMetadata2();
  v31[2] = v8;
  swift_getOpaqueTypeConformance2();
  v31[3] = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860);
  sub_1BE04EBD4();
  v86 = swift_getWitnessTable();
  v87 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  sub_1BE04EBD4();
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868);
  sub_1BE04EBD4();
  v84 = swift_getWitnessTable();
  v85 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868);
  swift_getWitnessTable();
  sub_1BE04F6A4();
  v10 = sub_1BE04EBD4();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = v7;
  v83 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v81 = swift_getWitnessTable();
  v31[0] = v10;
  v11 = swift_getWitnessTable();
  *&v95 = v6;
  *(&v95 + 1) = MEMORY[0x1E6981CD8];
  *&v96 = OpaqueTypeMetadata2;
  *(&v96 + 1) = v10;
  *&v97 = v7;
  *(&v97 + 1) = MEMORY[0x1E6981CD0];
  *&v98 = OpaqueTypeConformance2;
  *(&v98 + 1) = v11;
  v32 = v11;
  v34 = MEMORY[0x1E6981460];
  v12 = swift_getOpaqueTypeMetadata2();
  v36 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v31 - v18;
  v20 = v40;
  sub_1BD55F130(v37, v21, &v69);
  v66 = v77;
  v67 = v78;
  v68 = v79;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v65 = v76;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v61 = v72;
  sub_1BE051C64();
  *&v22 = v47;
  *(&v22 + 1) = v42;
  *&v23 = v45;
  *(&v23 + 1) = v39;
  v53 = v22;
  v54 = v23;
  v55 = v41;
  v56 = v38;
  v57 = v20;
  v48 = v22;
  v49 = v23;
  v50 = v41;
  v51 = v38;
  v52 = v20;
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v26 = swift_checkMetadataState();
  v27 = OpaqueTypeConformance2;
  v28 = v44;
  sub_1BE0510B4();
  v103 = v66;
  v104 = v67;
  v105 = v68;
  v99 = v62;
  v100 = v63;
  v101 = v64;
  v102 = v65;
  v95 = v58;
  v96 = v59;
  v97 = v60;
  v98 = v61;
  (*(*(v24 - 8) + 8))(&v95, v24);
  *&v69 = v24;
  *(&v69 + 1) = MEMORY[0x1E6981CD8];
  *&v70 = v25;
  *(&v70 + 1) = v26;
  *&v71 = v28;
  *(&v71 + 1) = MEMORY[0x1E6981CD0];
  *&v72 = v27;
  *(&v72 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v15);
  v29 = *(v36 + 8);
  v29(v15, v12);
  sub_1BD147308(v19);
  return (v29)(v19, v12);
}

uint64_t sub_1BD55F130@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1, a2);
  v69 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v60 - v9;
  v12 = (v3 + *(v11 + 92));
  v72 = v3;
  v13 = *v12;
  v14 = v12[1];
  *&v122 = v13;
  *(&v122 + 1) = v14;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  v15 = v111;
  v16 = *(v5 + 16);
  v79 = v5 + 16;
  v80 = v16;
  v65 = v10;
  v16(v10, v3, a1);
  v17 = *(v5 + 80);
  v66 = (v17 + 72) & ~v17;
  v18 = swift_allocObject();
  v19 = a1;
  v20 = a1[2];
  v74 = a1[3];
  v21 = v74;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  v22 = a1[4];
  v76 = v19[5];
  v23 = v76;
  v77 = v20;
  *(v18 + 4) = v22;
  *(v18 + 5) = v23;
  v61 = v22;
  v24 = v19[7];
  v73 = v19[6];
  v75 = v24;
  *(v18 + 6) = v73;
  *(v18 + 7) = v24;
  *(v18 + 8) = v15;
  v25 = *(v5 + 32);
  v26 = v19;
  v71 = v19;
  v25(&v18[(v17 + 72) & ~v17], v10, v19);
  v63 = v25;
  v64 = v5 + 32;
  v27 = v69;
  v80(v69, v72, v26);
  v62 = v17;
  v28 = (v17 + 64) & ~v17;
  v29 = swift_allocObject();
  v30 = v76;
  v31 = v74;
  *(v29 + 2) = v77;
  *(v29 + 3) = v31;
  *(v29 + 4) = v22;
  *(v29 + 5) = v30;
  v32 = v73;
  v33 = v75;
  *(v29 + 6) = v73;
  *(v29 + 7) = v33;
  v34 = v71;
  v25(&v29[v28], v27, v71);
  sub_1BE0534B4();
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v98 = v32;
  WitnessTable = swift_getWitnessTable();
  v68 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v96 = WitnessTable;
  v97 = v68;
  v60[1] = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  PKEdgeInsetsMake(sub_1BD562840, v18);
  *&v122 = v36;
  *(&v122 + 1) = v37;
  *&v123 = v38;
  *(&v123 + 1) = v39;
  v40 = v72;
  v60[0] = sub_1BD561580(v34);
  sub_1BE051CD4();
  type metadata accessor for OffsetScrollView();
  v59 = swift_getWitnessTable();
  sub_1BE050F54();

  v105 = v117;
  v106 = v118;
  v107 = v119;
  v101 = v113;
  v102 = v114;
  v103 = v115;
  v104 = v116;
  v99 = v111;
  v100 = v112;
  v41 = v71;
  v42 = (v40 + *(v71 + 25));
  v43 = *v42;
  v44 = v42[1];
  *&v122 = v43;
  *(&v122 + 1) = v44;
  sub_1BE0516A4();
  v45 = v83;
  v46 = v65;
  v47 = v40;
  v48 = v41;
  v80(v65, v47, v41);
  v49 = v66;
  v50 = swift_allocObject();
  v51 = v74;
  *(v50 + 2) = v77;
  *(v50 + 3) = v51;
  v52 = v76;
  *(v50 + 4) = v61;
  *(v50 + 5) = v52;
  v53 = v75;
  *(v50 + 6) = v73;
  *(v50 + 7) = v53;
  *(v50 + 8) = v45;
  v63(&v50[v49], v46, v48);
  v54 = sub_1BE04EBD4();
  v94 = v59;
  v95 = MEMORY[0x1E697EBF8];
  v55 = swift_getWitnessTable();
  sub_1BD561470(sub_1BD562B10, v50);

  v110[6] = v105;
  v110[7] = v106;
  v110[8] = v107;
  v110[2] = v101;
  v110[3] = v102;
  v110[4] = v103;
  v110[5] = v104;
  v110[0] = v99;
  v110[1] = v100;
  (*(*(v54 - 8) + 8))(v110, v54);
  v91 = v130;
  v92 = v131;
  v93 = v132;
  v87 = v126;
  v88 = v127;
  v89 = v128;
  v90 = v129;
  v83 = v122;
  v84 = v123;
  v85 = v124;
  v86 = v125;
  v56 = sub_1BE04EBD4();
  v81 = v55;
  v82 = v68;
  swift_getWitnessTable();
  sub_1BD147308(&v83);
  v119 = v91;
  v120 = v92;
  v121 = v93;
  v115 = v87;
  v116 = v88;
  v117 = v89;
  v118 = v90;
  v111 = v83;
  v112 = v84;
  v113 = v85;
  v114 = v86;
  v57 = *(*(v56 - 8) + 8);
  v57(&v111, v56);
  v91 = v107;
  v92 = v108;
  v93 = v109;
  v87 = v103;
  v88 = v104;
  v89 = v105;
  v90 = v106;
  v83 = v99;
  v84 = v100;
  v85 = v101;
  v86 = v102;
  sub_1BD147308(&v83);
  v130 = v91;
  v131 = v92;
  v132 = v93;
  v126 = v87;
  v127 = v88;
  v128 = v89;
  v129 = v90;
  v122 = v83;
  v123 = v84;
  v124 = v85;
  v125 = v86;
  return (v57)(&v122, v56);
}

uint64_t sub_1BD55F878@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v64 = a5;
  *(&v64 + 1) = a8;
  v58 = a7;
  v59 = a4;
  v60 = a2;
  v61 = a9;
  v54 = a1;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v96 = a7;
  WitnessTable = swift_getWitnessTable();
  v95 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  swift_getWitnessTable();
  type metadata accessor for OffsetScrollView();
  sub_1BE04EBD4();
  v12 = sub_1BE04EBD4();
  v53 = a3;
  v62 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697EBF8];
  v90 = swift_getWitnessTable();
  v91 = v95;
  v14 = v12;
  v15 = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v79 = v14;
  *(&v79 + 1) = OpaqueTypeMetadata2;
  v46[0] = v14;
  v46[1] = OpaqueTypeMetadata2;
  *&v80 = v15;
  *(&v80 + 1) = OpaqueTypeConformance2;
  v46[2] = v15;
  v55 = MEMORY[0x1E697CE30];
  v63 = swift_getOpaqueTypeMetadata2();
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v17);
  v51 = v46 - v18;
  v19 = v64;
  v79 = v64;
  v20 = swift_getOpaqueTypeMetadata2();
  v48 = v20;
  *&v79 = v14;
  *(&v79 + 1) = OpaqueTypeMetadata2;
  *&v80 = v15;
  *(&v80 + 1) = OpaqueTypeConformance2;
  v21 = swift_getOpaqueTypeConformance2();
  v50 = v21;
  v79 = v19;
  v49 = swift_getOpaqueTypeConformance2();
  *&v79 = v63;
  *(&v79 + 1) = v20;
  *&v80 = v21;
  *(&v80 + 1) = v49;
  v22 = swift_getOpaqueTypeMetadata2();
  v56 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v47 = v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v52 = v46 - v27;
  v28 = v54[9];
  v87 = v54[8];
  v88 = v28;
  v89 = v54[10];
  v29 = v54[5];
  v83 = v54[4];
  v84 = v29;
  v30 = v54[7];
  v85 = v54[6];
  v86 = v30;
  v31 = v54[1];
  v79 = *v54;
  v80 = v31;
  v32 = v54[3];
  v81 = v54[2];
  v82 = v32;
  v33 = v53;
  v34 = v58;
  v35 = v59;
  v72 = v53;
  v73 = v59;
  v74 = v19;
  v75 = v62;
  v76 = v58;
  v77 = *(&v19 + 1);
  v36 = v60;
  v78 = v60;
  sub_1BE04F7B4();
  swift_checkMetadataState();
  swift_checkMetadataState();
  v37 = v51;
  sub_1BE050954();
  v65 = v33;
  v66 = v35;
  v67 = v64;
  v68 = v62;
  v69 = v34;
  v70 = *(&v64 + 1);
  v71 = v36;
  sub_1BE04F7B4();
  v38 = swift_checkMetadataState();
  v39 = v49;
  v40 = v50;
  v41 = v47;
  v42 = v63;
  sub_1BE050954();
  (*(v57 + 8))(v37, v42);
  *&v79 = v42;
  *(&v79 + 1) = v38;
  *&v80 = v40;
  *(&v80 + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v43 = v52;
  sub_1BD147308(v41);
  v44 = *(v56 + 8);
  v44(v41, v22);
  sub_1BD147308(v43);
  return (v44)(v43, v22);
}

uint64_t sub_1BD55FE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a6;
  v28 = a7;
  v26 = a4;
  v29 = a1;
  v31 = a8;
  v30 = sub_1BE04F714();
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  v33 = a5;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v26 - v22;
  v32 = a2;
  v33 = a3;
  v34 = v26;
  v35 = a5;
  v36 = v27;
  v37 = v28;
  type metadata accessor for PaymentSheetContentContainer();
  sub_1BE04F704();
  sub_1BE050CB4();
  (*(v11 + 8))(v14, v30);
  v32 = a2;
  v33 = a5;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v19);
  v24 = *(v16 + 8);
  v24(v19, OpaqueTypeMetadata2);
  sub_1BD147308(v23);
  return (v24)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1BD56009C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a5;
  v28 = a6;
  v26 = a3;
  v29 = a1;
  v31 = a8;
  v30 = sub_1BE04F714();
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a4;
  v33 = a7;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v26 - v22;
  v32 = a2;
  v33 = v26;
  v34 = a4;
  v35 = v27;
  v36 = v28;
  v37 = a7;
  type metadata accessor for PaymentSheetContentContainer();
  sub_1BE04F704();
  sub_1BE050CB4();
  (*(v11 + 8))(v14, v30);
  v32 = a4;
  v33 = a7;
  swift_getOpaqueTypeConformance2();
  sub_1BD147308(v19);
  v24 = *(v16 + 8);
  v24(v19, OpaqueTypeMetadata2);
  sub_1BD147308(v23);
  return (v24)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1BD5602FC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v70 = a5;
  v71 = a8;
  v62 = a7;
  v65 = a2;
  v66 = a6;
  v64 = a4;
  v57 = a3;
  v67 = a9;
  sub_1BE0534B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD45B60);
  sub_1BE04EBD4();
  v111 = a7;
  WitnessTable = swift_getWitnessTable();
  v69 = MEMORY[0x1E697F940];
  v63 = sub_1BD0DE4F4(&qword_1EBD45B68, &qword_1EBD45B60);
  v109 = WitnessTable;
  v110 = v63;
  v68 = MEMORY[0x1E697E858];
  swift_getWitnessTable();
  v59 = type metadata accessor for OffsetScrollView();
  v61 = sub_1BE04EBD4();
  v51 = sub_1BE04EBD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860);
  v12 = sub_1BE04EBD4();
  v107 = swift_getWitnessTable();
  v108 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860);
  v56 = v12;
  v55 = swift_getWitnessTable();
  v58 = sub_1BE04F6A4();
  v47 = sub_1BE04EBD4();
  v60 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v13);
  v53 = v45 - v14;
  v15 = v70;
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868);
  v16 = sub_1BE04EBD4();
  v17 = swift_getWitnessTable();
  v18 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868);
  v105 = v17;
  v106 = v18;
  v50 = v16;
  v48 = swift_getWitnessTable();
  v52 = sub_1BE04F6A4();
  v54 = sub_1BE04EBD4();
  v69 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v19);
  v46 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v49 = v45 - v23;
  v24 = a1[9];
  v102 = a1[8];
  v103 = v24;
  v104 = a1[10];
  v25 = a1[5];
  v98 = a1[4];
  v99 = v25;
  v26 = a1[7];
  v100 = a1[6];
  v101 = v26;
  v27 = a1[1];
  v94 = *a1;
  v95 = v27;
  v28 = a1[3];
  v96 = a1[2];
  v97 = v28;
  v29 = v57;
  v30 = v64;
  v31 = v65;
  v79 = v57;
  v80 = v64;
  v32 = v66;
  v81 = v15;
  v82 = v66;
  v33 = v62;
  v83 = v62;
  v84 = v71;
  v85 = v65;
  v45[1] = sub_1BE04F7B4();
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697EBF8];
  v90 = swift_getWitnessTable();
  v91 = v63;
  v34 = swift_getWitnessTable();
  v35 = v53;
  sub_1BE050A44();
  v72 = v29;
  v73 = v30;
  v74 = v70;
  v75 = v32;
  v76 = v33;
  v77 = v71;
  v78 = v31;
  sub_1BE04F7B4();
  v36 = swift_getWitnessTable();
  v88 = v34;
  v89 = v36;
  v37 = v47;
  v44 = swift_getWitnessTable();
  v38 = v46;
  sub_1BE050A44();
  (*(v60 + 8))(v35, v37);
  v39 = swift_getWitnessTable();
  v86 = v44;
  v87 = v39;
  v40 = v54;
  swift_getWitnessTable();
  v41 = v49;
  sub_1BD147308(v38);
  v42 = *(v69 + 8);
  v42(v38, v40);
  sub_1BD147308(v41);
  return (v42)(v41, v40);
}

uint64_t sub_1BD5609D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a1;
  v30 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A860);
  v13 = sub_1BE04EBD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v27 - v20;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v28;
  v22 = type metadata accessor for PaymentSheetContentContainer();
  sub_1BD55D898(v22, v17);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1BD0DE4F4(&qword_1EBD36758, &qword_1EBD4A860);
  v31 = WitnessTable;
  v32 = v24;
  swift_getWitnessTable();
  sub_1BD147308(v17);
  v25 = *(v14 + 8);
  v25(v17, v13);
  sub_1BD147308(v21);
  return (v25)(v21, v13);
}

uint64_t sub_1BD560C44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a7;
  v29 = a1;
  v30 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A858);
  swift_getTupleTypeMetadata2();
  sub_1BE051E34();
  swift_getWitnessTable();
  sub_1BE051854();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4A868);
  v13 = sub_1BE04EBD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v27 - v20;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v37 = a6;
  v38 = v28;
  v22 = type metadata accessor for PaymentSheetContentContainer();
  sub_1BD55DF6C(v22, v17);
  WitnessTable = swift_getWitnessTable();
  v24 = sub_1BD0DE4F4(&qword_1EBD36760, &qword_1EBD4A868);
  v31 = WitnessTable;
  v32 = v24;
  swift_getWitnessTable();
  sub_1BD147308(v17);
  v25 = *(v14 + 8);
  v25(v17, v13);
  sub_1BD147308(v21);
  return (v25)(v21, v13);
}

uint64_t sub_1BD560EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
  sub_1BE0516A4();
  sub_1BE0516A4();
  sub_1BE0516A4();
  return sub_1BE0516B4();
}

uint64_t sub_1BD560FE4(double a1, double a2)
{
  if (a2 != a1)
  {
    type metadata accessor for PaymentSheetContentContainer();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD43BD0);
    sub_1BE0516B4();
    return sub_1BD560EB8();
  }

  return result;
}