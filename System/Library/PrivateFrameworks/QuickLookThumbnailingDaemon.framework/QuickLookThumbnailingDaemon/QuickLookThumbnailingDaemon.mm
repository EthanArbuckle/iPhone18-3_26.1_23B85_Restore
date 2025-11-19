id _log()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 56);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 56);
  }

  return v1;
}

id _log_0()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 8);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 8);
  }

  return v1;
}

id _log_1()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 72);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 72);
  }

  return v1;
}

id _log_2()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *MEMORY[0x277CDAB78];
  if (!*MEMORY[0x277CDAB78])
  {
    QLTInitLogging();
    v1 = *v0;
  }

  return v1;
}

id _log_3()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 24);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 24);
  }

  return v1;
}

id _log_4()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 128);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 128);
  }

  return v1;
}

id _log_5()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 40);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 40);
  }

  return v1;
}

id _log_6()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 176);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 176);
  }

  return v1;
}

id _log_7()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 64);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 64);
  }

  return v1;
}

id _log_8()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 48);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 48);
  }

  return v1;
}

id _log_9()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 168);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 168);
  }

  return v1;
}

id _dbLog()
{
  v0 = MEMORY[0x277CDAB78];
  v1 = *(MEMORY[0x277CDAB78] + 88);
  if (!v1)
  {
    QLTInitLogging();
    v1 = *(v0 + 88);
  }

  return v1;
}

uint64_t sub_2615D5EE4(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26162B4FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  v18 = [a1 contentType];
  if (!v18)
  {
    return 0;
  }

  v27 = ObjectType;
  v19 = v18;
  sub_26162B47C();

  (*(v11 + 32))(v17, v15, v10);
  (*(v11 + 16))(v9, v17, v10);
  v20 = [a1 shouldUseRestrictedExtension];
  v9[*(v6 + 20)] = v20;
  *&v9[*(v6 + 24)] = a2;
  v21 = *(v2 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  MEMORY[0x28223BE20](v20);
  *(&v26 - 4) = v2;
  *(&v26 - 3) = v9;
  *(&v26 - 2) = v27;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  (*(v11 + 8))(v17, v10);
  v24 = v28;
  sub_2615D69B0(v9);
  return v24;
}

uint64_t sub_2615D6168(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2615D61A0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v48 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5358, &qword_261631110);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - v10;
  v12 = sub_26162B3BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR___QLThumbnailExtensionMonitor_matchingExtensionsCache;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (*(v18 + 16))
  {
    v19 = *(a1 + v17);

    v20 = sub_2615D66A8(a2);
    if (v21)
    {
      (*(v13 + 16))(v16, *(v18 + 56) + *(v13 + 72) * v20, v12);

      v22 = OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier;
      swift_beginAccess();
      v23 = *(a1 + v22);
      if (*(v23 + 16))
      {

        v24 = sub_2615D6A0C(v16);
        if (v25)
        {
          v26 = *(v13 + 8);
          v27 = *(*(v23 + 56) + 8 * v24);
          v26(v16, v12);

          goto LABEL_23;
        }
      }

      swift_beginAccess();
      sub_26161DF7C(a2, v11);
      sub_261620814(v11, &unk_27FEB5358, &qword_261631110);
      swift_endAccess();
      (*(v13 + 8))(v16, v12);
    }

    else
    {
    }
  }

  v28 = sub_2615DB130(a2);
  v31 = v30;
  if (v28)
  {
    v32 = v28;

    v27 = sub_26161C7C0(a2, v32);
  }

  else
  {
    v47 = v29;
    if (qword_2813686F8 != -1)
    {
      swift_once();
    }

    v33 = sub_26162B54C();
    __swift_project_value_buffer(v33, qword_281368AD0);
    sub_2615D694C(a2, v7);

    v34 = sub_26162B52C();
    v35 = sub_26162BA2C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v52 = v37;
      *v36 = 136315394;
      v38 = sub_26162B43C();
      if (v7[*(v48 + 20)])
      {
        v40 = 0x6369727473657228;
      }

      else
      {
        v40 = 0;
      }

      if (v7[*(v48 + 20)])
      {
        v41 = 0xEC00000029646574;
      }

      else
      {
        v41 = 0xE000000000000000;
      }

      v50 = v38;
      v51 = v39;

      MEMORY[0x266706AF0](v40, v41);

      v42 = v50;
      v43 = v51;
      sub_2615D69B0(v7);
      v44 = sub_2615DD1E8(v42, v43, &v52);

      *(v36 + 4) = v44;
      *(v36 + 12) = 2080;
      v45 = sub_2615DD1E8(v47, v31, &v52);

      *(v36 + 14) = v45;
      _os_log_impl(&dword_2615D3000, v34, v35, "No extension found for %s, reason: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2667082C0](v37, -1, -1);
      MEMORY[0x2667082C0](v36, -1, -1);
    }

    else
    {

      sub_2615D69B0(v7);
    }

    v27 = 0;
  }

LABEL_23:
  *v49 = v27;
}

unint64_t sub_2615D66A8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26162BCEC();
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578]);
  sub_26162B87C();
  v4 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v5 = *(a1 + *(v4 + 20));
  sub_26162BD0C();
  MEMORY[0x266706EF0](*(a1 + *(v4 + 24)));
  v6 = sub_26162BD1C();

  return sub_2615D67D0(a1, v6);
}

uint64_t sub_2615D6788(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2615D67D0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20]();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(v7 + 72);
    do
    {
      sub_2615D694C(*(v2 + 48) + v13 * v11, v9);
      if ((sub_26162B46C() & 1) != 0 && v9[*(v5 + 20)] == *(a1 + *(v5 + 20)))
      {
        v14 = *&v9[*(v5 + 24)];
        sub_2615D69B0(v9);
        if (v14 == *(a1 + *(v5 + 24)))
        {
          return v11;
        }
      }

      else
      {
        sub_2615D69B0(v9);
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_2615D694C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2615D69B0(uint64_t a1)
{
  v2 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2615D6A0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26162B3BC();
  v5 = MEMORY[0x277CC95F0];
  sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]);
  v6 = sub_26162B86C();
  return sub_2615D6AE0(a1, v6, MEMORY[0x277CC95F0], &qword_281368738, v5, MEMORY[0x277CC9610]);
}

unint64_t sub_2615D6AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_2615D6788(v24, v25);
      v20 = sub_26162B88C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

id sub_2615D6C8C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_26162B89C();

  return v6;
}

void sub_2615D84E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}

id sub_2615DB130(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26162B4FC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - v10;
  v12 = sub_26162B82C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v2 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v18 = v17;
  v19 = sub_26162B83C();
  v21 = *(v13 + 8);
  v20 = v13 + 8;
  v21(v16, v12);
  if (v19)
  {
    (*(v5 + 16))(v11, a1, v4);
    v22 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
    v77 = *(a1 + *(v22 + 24));
    v23 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
    swift_beginAccess();
    v24 = *(v2 + v23);
    v25 = *(v24 + 16);
    v83 = v11;
    v76 = v2;
    if (v25)
    {

      v26 = sub_2615DBA84(v11);
      if (v27)
      {
        v19 = *(*(v24 + 56) + 8 * v26);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }

    v79 = swift_allocObject();
    *(v79 + 16) = 1;
    v80 = swift_allocObject();
    *(v80 + 16) = 1;
    v81 = swift_allocObject();
    *(v81 + 16) = 1;
    sub_26162B4AC();
    v28 = sub_26162B4DC();
    v30 = *(v5 + 8);
    v29 = v5 + 8;
    v31 = v9;
    v32 = v30;
    v30(v31, v4);
    if (v28)
    {
      v33 = v4;

      v34 = 0;
      v35 = v83;
LABEL_70:
      v32(v35, v33);
      goto LABEL_71;
    }

    v36 = *(a1 + *(v22 + 20));
    v82 = v29;
    if (v36 != 1 || !v19)
    {
LABEL_30:
      v20 = v77;
      if (v77 != 1)
      {
        v49 = objc_opt_self();
        v50 = sub_26162B45C();
        LODWORD(v49) = [v49 contentTypeIsIWorkType_];

        if (v49)
        {
          if (v19)
          {
            v51 = v19 & 0xFFFFFFFFFFFFFF8;
            v74 = v32;
            v75 = v4;
            if (v19 >> 62)
            {
              v52 = sub_26162BBEC();
            }

            else
            {
              v52 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v52)
            {
              v53 = 0;
              v54 = v19 & 0xC000000000000001;
              v73 = v19;
              do
              {
                if (v54)
                {
                  v55 = MEMORY[0x266706D50](v53, v19);
                  v20 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (v53 >= *(v51 + 16))
                  {
                    goto LABEL_73;
                  }

                  v55 = *(v19 + 8 * v53 + 32);
                  v20 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
LABEL_48:
                    __break(1u);
                    break;
                  }
                }

                v34 = v55;
                v56 = [v34 containingBundleRecord];
                if (v56 && (v57 = v56, v58 = [v56 bundleIdentifier], v57, v58))
                {
                  sub_26162B8CC();

                  v59 = sub_261618D44();
                  v19 = v73;

                  if (v59)
                  {
                    swift_bridgeObjectRelease_n();
                    goto LABEL_65;
                  }
                }

                else
                {
                }

                ++v53;
              }

              while (v20 != v52);
            }

            v32 = v74;
            v4 = v75;
            v20 = v77;
          }
        }
      }

      v33 = v4;
      v60 = objc_opt_self();
      v61 = sub_26162B45C();
      v62 = [v60 contentTypeIsInternallyClaimed_];

      if (v62)
      {
        v34 = sub_2615DBFD8(v79, v19);

        if (v34)
        {
          v35 = v83;
        }

        else
        {
          v69 = v83;
          v34 = sub_2615DBF54(v81, v76, v83);
          v35 = v69;
        }

        goto LABEL_70;
      }

      v63 = v79;
      if (v20 == 1)
      {
        v64 = sub_2615DBFD8(v79, v19);
        if (v64)
        {
          v34 = v64;
LABEL_62:

          v35 = v83;
          goto LABEL_70;
        }
      }

      else
      {
        v65 = sub_26162B45C();
        v66 = [v60 externalGeneratorPreferredForType_];

        v67 = v80;
        if (v66)
        {
          v68 = sub_26161C62C(v80, v19);
          if (v68)
          {
            v34 = v68;

            v35 = v83;
            goto LABEL_70;
          }
        }

        v70 = sub_2615DBFD8(v63, v19);
        if (v70)
        {
          v34 = v70;
          goto LABEL_62;
        }

        v34 = sub_26161C62C(v67, v19);

        if (v34)
        {
          v35 = v83;
          goto LABEL_70;
        }
      }

      v71 = v83;
      v34 = sub_2615DBF54(v81, v76, v83);
      v35 = v71;
      goto LABEL_70;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFF8;
    v74 = v32;
    v75 = v4;
    if (!(v19 >> 62))
    {
      v37 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_14;
    }
  }

  else
  {
LABEL_74:
    __break(1u);
  }

  v37 = sub_26162BBEC();
LABEL_14:

  if (!v37)
  {
LABEL_29:

    v32 = v74;
    v4 = v75;
    goto LABEL_30;
  }

  v38 = 0;
  v78 = v19 & 0xC000000000000001;
  v39 = *MEMORY[0x277D43F08];
  while (1)
  {
    if (v78)
    {
      v40 = MEMORY[0x266706D50](v38, v19);
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      if (v38 >= *(v20 + 16))
      {
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v40 = *(v19 + 8 * v38 + 32);
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        goto LABEL_28;
      }
    }

    v34 = v40;
    v42 = [v34 extensionPointIdentifier];
    v43 = sub_26162B8CC();
    v45 = v44;

    if (v43 == sub_26162B8CC() && v45 == v46)
    {
      break;
    }

    v48 = sub_26162BC7C();

    if (v48)
    {
      goto LABEL_64;
    }

    ++v38;
    if (v41 == v37)
    {
      goto LABEL_29;
    }
  }

  swift_bridgeObjectRelease_n();

LABEL_64:

LABEL_65:
  v74(v83, v75);
LABEL_71:

  return v34;
}

uint64_t sub_2615DBA44()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_2615DBA84(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_26162B4FC();
  v5 = MEMORY[0x277D85578];
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578]);
  v6 = sub_26162B86C();
  return sub_2615D6AE0(a1, v6, MEMORY[0x277D85578], &unk_281368720, v5, MEMORY[0x277D85590]);
}

uint64_t sub_2615DBB58(uint64_t a1, uint64_t a2)
{
  v39 = sub_26162B4FC();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
  swift_beginAccess();
  v34 = v7;
  v35 = a1;
  v8 = *(a1 + v7);
  v9 = *(v8 + 16);
  v36 = v4;
  if (v9)
  {
    v10 = sub_2615DC17C(v9, 0);
    v11 = sub_2615DC278(&v41, &v10[(*(v4 + 80) + 32) & ~*(v4 + 80)], v9, v8);
    swift_bridgeObjectRetain_n();
    sub_2615DC520();
    if (v11 != v9)
    {
      goto LABEL_35;
    }

    v4 = v36;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v41 = v10;
  sub_2615DC528(&v41);

  v12 = v41;
  v13 = v41[2];
  if (!v13)
  {
LABEL_30:

    return 0;
  }

  v14 = 0;
  v15 = v41 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v40 = v4 + 16;
  v16 = (v4 + 8);
  v9 = v38;
  v17 = v39;
  v32 = (v4 + 8);
  v33 = v41;
  v30 = v13;
  v31 = a2;
  v29 = v15;
  while (1)
  {
    if (v14 >= v12[2])
    {
      goto LABEL_34;
    }

    (*(v4 + 16))(v9, &v15[*(v4 + 72) * v14], v17);
    if ((sub_26162B4DC() & 1) == 0)
    {
      goto LABEL_8;
    }

    v18 = *(v35 + v34);
    v19 = *(v18 + 16);

    if (v19 && (v20 = sub_2615DBA84(v9), (v21 & 1) != 0))
    {
      v22 = *(*(v18 + 56) + 8 * v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v37 = v14;

    if (!(v22 >> 62))
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
        break;
      }

      goto LABEL_7;
    }

    v23 = sub_26162BBEC();
    if (v23)
    {
      break;
    }

LABEL_7:

    v13 = v30;
    v9 = v38;
    v17 = v39;
    v4 = v36;
    v14 = v37;
    v16 = v32;
    v12 = v33;
    v15 = v29;
LABEL_8:
    ++v14;
    (*v16)(v9, v17);
    if (v14 == v13)
    {
      goto LABEL_30;
    }
  }

  v24 = 0;
  while ((v22 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x266706D50](v24, v22);
    v9 = (v24 + 1);
    if (__OFADD__(v24, 1))
    {
      goto LABEL_32;
    }

LABEL_21:
    v26 = v25;
    v27 = [v26 bundleIdentifier];
    sub_26162B8CC();

    LOBYTE(v27) = sub_261618D44();

    if (v27)
    {
      (*v32)(v38, v39);

      return v26;
    }

    ++v24;
    if (v9 == v23)
    {
      goto LABEL_7;
    }
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_33;
  }

  v25 = *(v22 + 8 * v24 + 32);
  v9 = (v24 + 1);
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_21;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_2615DBF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  v5 = v3;
  if (v3 == 1)
  {
    v5 = sub_2615DBB58(a2, a3);
    swift_beginAccess();
    v6 = *v4;
    *v4 = v5;
    v7 = v5;
    sub_2615DC16C(v6);
  }

  sub_2615DD1A0(v3);
  return v5;
}

id sub_2615DBFD8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  if (v4 == 1)
  {
    if (a2)
    {
      if (a2 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v12)
      {
        v17 = v2;
        v7 = 0;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x266706D50](v7, a2);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

            goto LABEL_9;
          }

          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v8 = *(a2 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }

LABEL_9:
          v3 = v8;
          v10 = [v3 bundleIdentifier];
          sub_26162B8CC();

          LOBYTE(v10) = sub_261618D44();

          if (v10)
          {
            goto LABEL_16;
          }

          ++v7;
          if (v9 == i)
          {
            v3 = 0;
LABEL_16:
            v2 = v17;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        v12 = v2;
        i = sub_26162BBEC();
      }
    }

    v3 = 0;
LABEL_20:
    v13 = v2;
    swift_beginAccess();
    v14 = *v13;
    *v13 = v3;
    v15 = v3;
    sub_2615DC16C(v14);
  }

  else
  {
LABEL_15:
    v11 = v3;
  }

  return v3;
}

void sub_2615DC16C(id a1)
{
  if (a1 != 1)
  {
  }
}

size_t sub_2615DC17C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5268, &qword_261630E80);
  v4 = *(sub_26162B4FC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2615DC278(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_26162B4FC();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2615DC528(void **a1)
{
  v2 = *(sub_26162B4FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2616201BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2615DC5D0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2615DC5D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26162BC6C();
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
        sub_26162B4FC();
        v6 = sub_26162B97C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_26162B4FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2615DC6FC(v8, v9, a1, v4);
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
    return sub_26161F868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2615DC6FC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v116 = a1;
  v9 = sub_26162B4FC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v120 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v113 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v134 = &v113 - v17;
  result = MEMORY[0x28223BE20](v16);
  v133 = &v113 - v19;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v116;
    if (!*v116)
    {
      goto LABEL_136;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_2616200C4(a4);
    }

    v108 = v6;
    v136 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v109 = v10;
      v10 = a3;
      a3 = v109;
      while (*v10)
      {
        v110 = *(result + 16 * a4);
        v111 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_26161FADC(*v10 + a3[9] * v110, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v108)
        {
        }

        if (v6 < v110)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_2616200C4(v111);
        }

        if (a4 - 2 >= *(v111 + 2))
        {
          goto LABEL_124;
        }

        v112 = &v111[16 * a4];
        *v112 = v110;
        *(v112 + 1) = v6;
        v136 = v111;
        sub_261620038(a4 - 1);
        result = v136;
        a4 = *(v136 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v21 = 0;
  v131 = (v10 + 1);
  v132 = v10 + 2;
  v130 = (v10 + 4);
  v22 = MEMORY[0x277D84F90];
  v117 = a3;
  v115 = a4;
  v135 = v9;
  while (1)
  {
    v23 = v21;
    v121 = v22;
    v118 = v21;
    if ((v21 + 1) >= v20)
    {
      v20 = (v21 + 1);
    }

    else
    {
      v114 = v6;
      v24 = *a3;
      v5 = v10[9];
      v25 = *a3 + v5 * (v21 + 1);
      v26 = v133;
      v126 = v10[2];
      v126(v133, v25, v9);
      v27 = v23;
      v28 = v134;
      sub_26162B44C();
      LODWORD(v127) = sub_26162B46C();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      result = (v30)(v26, v29);
      v31 = v27 + 2;
      v129 = v5;
      v32 = v24 + v5 * (v27 + 2);
      while (v20 != v31)
      {
        v33 = v10;
        v34 = v133;
        v35 = v135;
        v126(v133, v32, v135);
        v36 = v134;
        sub_26162B44C();
        v5 = v20;
        v37 = sub_26162B46C() & 1;
        v30(v36, v35);
        v38 = v34;
        v10 = v33;
        result = (v30)(v38, v35);
        ++v31;
        v32 += v129;
        v39 = (v127 & 1) == v37;
        v20 = v5;
        if (!v39)
        {
          v20 = v31 - 1;
          break;
        }
      }

      a3 = v117;
      v23 = v118;
      v22 = v121;
      a4 = v115;
      v9 = v135;
      v6 = v114;
      if (v127)
      {
        if (v20 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v20)
        {
          v113 = v10;
          v40 = v129 * (v20 - 1);
          v41 = v20 * v129;
          v126 = v20;
          v42 = v20;
          v43 = v118;
          v44 = v118 * v129;
          do
          {
            if (v43 != --v42)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v5 = v46 + v44;
              v47 = *v130;
              (*v130)(v120, v46 + v44, v135, v22);
              if (v44 < v40 || v5 >= v46 + v41)
              {
                v45 = v135;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v45 = v135;
                if (v44 != v40)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v47)(v46 + v40, v120, v45);
              a3 = v117;
              v23 = v118;
              v22 = v121;
            }

            ++v43;
            v40 -= v129;
            v41 -= v129;
            v44 += v129;
          }

          while (v43 < v42);
          v6 = v114;
          v10 = v113;
          a4 = v115;
          v9 = v135;
          v20 = v126;
        }
      }
    }

    v48 = a3[1];
    if (v20 < v48)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_126;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v48)
        {
          v49 = a3[1];
        }

        else
        {
          v49 = (v23 + a4);
        }

        if (v49 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v20 != v49)
        {
          break;
        }
      }
    }

    v50 = v20;
    if (v20 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v121;
    }

    else
    {
      result = sub_2615DD09C(0, *(v121 + 2) + 1, 1, v121);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v51 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v51 >> 1)
    {
      result = sub_2615DD09C((v51 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v52 = &v22[16 * a4];
    *(v52 + 4) = v23;
    *(v52 + 5) = v50;
    v53 = *v116;
    if (!*v116)
    {
      goto LABEL_135;
    }

    v122 = v50;
    if (a4)
    {
      while (1)
      {
        v54 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v55 = *(v22 + 4);
          v56 = *(v22 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_52:
          if (v58)
          {
            goto LABEL_114;
          }

          v71 = &v22[16 * v5];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_117;
          }

          v77 = &v22[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_121;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v81 = &v22[16 * v5];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_66:
        if (v76)
        {
          goto LABEL_116;
        }

        v84 = &v22[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_119;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v54 - 1;
        if (v54 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v92 = v22;
        v93 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v54 + 40];
        sub_26161FADC(*a3 + v10[9] * v93, *a3 + v10[9] * *&v22[16 * v54 + 32], *a3 + v10[9] * v5, v53);
        if (v6)
        {
        }

        if (v5 < v93)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_2616200C4(v92);
        }

        if (a4 >= *(v92 + 2))
        {
          goto LABEL_111;
        }

        v94 = &v92[16 * a4];
        *(v94 + 4) = v93;
        *(v94 + 5) = v5;
        v136 = v92;
        result = sub_261620038(v54);
        v22 = v136;
        v5 = *(v136 + 16);
        v9 = v135;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &v22[16 * v5 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_112;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_113;
      }

      v66 = &v22[16 * v5];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_115;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_118;
      }

      if (v70 >= v62)
      {
        v88 = &v22[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_122;
        }

        if (v57 < v91)
        {
          v54 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v20 = a3[1];
    v21 = v122;
    a4 = v115;
    if (v122 >= v20)
    {
      goto LABEL_95;
    }
  }

  v114 = v6;
  v95 = *a3;
  v96 = v10[9];
  v113 = v10;
  v129 = v10[2];
  v97 = v23 - v20;
  v98 = (v95 + v96 * (v20 - 1));
  a4 = -v96;
  v127 = v95;
  v119 = v96;
  v5 = v95 + v20 * v96;
  v122 = v49;
LABEL_85:
  v125 = v97;
  v126 = v20;
  v123 = v5;
  v124 = v98;
  v99 = v98;
  while (1)
  {
    v100 = v133;
    (v129)(v133, v5, v9, v22);
    v101 = v134;
    sub_26162B44C();
    v102 = sub_26162B46C();
    v103 = *v131;
    v104 = v101;
    v9 = v135;
    (*v131)(v104, v135);
    result = v103(v100, v9);
    if ((v102 & 1) == 0)
    {
LABEL_84:
      v20 = v126 + 1;
      v97 = v125 - 1;
      v98 = &v124[v119];
      v5 = v123 + v119;
      v50 = v122;
      if (v126 + 1 != v122)
      {
        goto LABEL_85;
      }

      v6 = v114;
      a3 = v117;
      v23 = v118;
      v10 = v113;
      if (v122 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v127)
    {
      break;
    }

    v105 = *v130;
    v106 = v128;
    (*v130)(v128, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v105(v99, v106, v9);
    v99 += a4;
    v5 += a4;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

char *sub_2615DD09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5380, &unk_261631128);
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

id sub_2615DD1A0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2615DD1E8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2615DD4A4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2615DD69C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t sub_2615DD2B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_2615DD374(a1, a2);
  sub_2615DD5B0(&unk_2873E1FE8);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_2615DD300(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5240, &qword_261630E50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_2615DD374(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2615DD300(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_26162BB6C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_26162B91C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2615DD300(v10, 0);
        result = sub_26162BB3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2615DD4A4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2615DD2B4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_26162BB6C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2615DD5B0(uint64_t result)
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

  result = sub_2616154C4(result, v12, 1, v3);
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

uint64_t sub_2615DD69C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_2615DDBDC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2615DDC50()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2615DDCAC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2615DDCEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2615DDD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26162B4FC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2615DDE00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_26162B4FC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2615DDEB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2615DDEF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2615DDF30()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2615DDF70@<X0>(void *a1@<X8>)
{
  result = sub_26162B64C();
  *a1 = v3;
  return result;
}

uint64_t sub_2615DDFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5480, &qword_261631338);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2615DE034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5480, &qword_261631338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2615DE09C()
{
  v1 = *(v0 + 48);

  sub_261623634(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615E3BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t traceSQL(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = MEMORY[0x277CDAB78];
  v5 = *(MEMORY[0x277CDAB78] + 8);
  if (a2)
  {
    if (!v5)
    {
      QLTInitLogging();
      v5 = *(v4 + 8);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      traceSQL_cold_1(v5, a2, a3);
    }
  }

  else
  {
    if (!v5)
    {
      QLTInitLogging();
      v5 = *(v4 + 8);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      traceSQL_cold_2();
    }
  }

  return 0;
}

void sub_2615E6F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t *OUTLINED_FUNCTION_6@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615EB0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 184), 8);
  _Block_object_dispose((v34 - 152), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t UIKitLibraryCore()
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = UIKitLibraryCore_frameworkLibrary;
  v6 = UIKitLibraryCore_frameworkLibrary;
  if (!UIKitLibraryCore_frameworkLibrary)
  {
    v7 = xmmword_279ADD388;
    v8 = *off_279ADD398;
    v9 = 0;
    v4[3] = _sl_dlopen();
    UIKitLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x277D85DE8];
  return v0;
}

void sub_2615EB880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __UIKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  UIKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t UIKitLibrary()
{
  v0 = UIKitLibraryCore();
  if (!v0)
  {
    v2 = abort_report_np();
    free(v2);
  }

  return v0;
}

id getUIImageClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getUIImageClass_softClass;
  v7 = getUIImageClass_softClass;
  if (!getUIImageClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getUIImageClass_block_invoke;
    v3[3] = &unk_279ADD3E0;
    v3[4] = &v4;
    __getUIImageClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2615EBA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getUIImageClass_block_invoke(uint64_t a1)
{
  UIKitLibrary();
  result = objc_getClass("UIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getUIImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getUIImageClass_block_invoke_cold_1();
    return getUIGraphicsBeginImageContextWithOptionsSymbolLoc(v3);
  }

  return result;
}

uint64_t getUIGraphicsBeginImageContextWithOptionsSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  v6 = getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr;
  if (!getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsBeginImageContextWithOptions");
    getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EBB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsBeginImageContextWithOptionsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsBeginImageContextWithOptions");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsBeginImageContextWithOptionsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsBeginImageContextWithOptions(uint64_t a1, double a2, double a3, double a4)
{
  UIGraphicsBeginImageContextWithOptionsSymbolLoc = getUIGraphicsBeginImageContextWithOptionsSymbolLoc();
  if (UIGraphicsBeginImageContextWithOptionsSymbolLoc)
  {
    v9.n128_f64[0] = a2;
    v10.n128_f64[0] = a3;
    v11.n128_f64[0] = a4;

    return UIGraphicsBeginImageContextWithOptionsSymbolLoc(a1, v9, v10, v11);
  }

  else
  {
    v13 = _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsGetCurrentContextSymbolLoc(v13);
  }
}

uint64_t getUIGraphicsGetCurrentContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  v6 = getUIGraphicsGetCurrentContextSymbolLoc_ptr;
  if (!getUIGraphicsGetCurrentContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsGetCurrentContext");
    getUIGraphicsGetCurrentContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EBD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsGetCurrentContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsGetCurrentContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsGetCurrentContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsGetCurrentContext()
{
  CurrentContextSymbolLoc = getUIGraphicsGetCurrentContextSymbolLoc();
  if (CurrentContextSymbolLoc)
  {

    return CurrentContextSymbolLoc();
  }

  else
  {
    v2 = _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsEndImageContextSymbolLoc(v2);
  }
}

uint64_t getUIGraphicsEndImageContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  v6 = getUIGraphicsEndImageContextSymbolLoc_ptr;
  if (!getUIGraphicsEndImageContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsEndImageContext");
    getUIGraphicsEndImageContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EBEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsEndImageContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsEndImageContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsEndImageContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsEndImageContext()
{
  UIGraphicsEndImageContextSymbolLoc = getUIGraphicsEndImageContextSymbolLoc();
  if (UIGraphicsEndImageContextSymbolLoc)
  {

    return UIGraphicsEndImageContextSymbolLoc();
  }

  else
  {
    v2 = _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsPushContextSymbolLoc(v2);
  }
}

uint64_t getUIGraphicsPushContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPushContextSymbolLoc_ptr;
  v6 = getUIGraphicsPushContextSymbolLoc_ptr;
  if (!getUIGraphicsPushContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPushContext");
    getUIGraphicsPushContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EC018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPushContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPushContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPushContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t _UIGraphicsPushContext(uint64_t a1)
{
  UIGraphicsPushContextSymbolLoc = getUIGraphicsPushContextSymbolLoc();
  if (UIGraphicsPushContextSymbolLoc)
  {

    return UIGraphicsPushContextSymbolLoc(a1);
  }

  else
  {
    v4 = _UIGraphicsBeginImageContextWithOptions_cold_1();
    return getUIGraphicsPopContextSymbolLoc(v4);
  }
}

uint64_t getUIGraphicsPopContextSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getUIGraphicsPopContextSymbolLoc_ptr;
  v6 = getUIGraphicsPopContextSymbolLoc_ptr;
  if (!getUIGraphicsPopContextSymbolLoc_ptr)
  {
    v1 = UIKitLibrary();
    v4[3] = dlsym(v1, "UIGraphicsPopContext");
    getUIGraphicsPopContextSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_2615EC198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getUIGraphicsPopContextSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = UIKitLibrary();
  result = dlsym(v2, "UIGraphicsPopContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getUIGraphicsPopContextSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

QLExtensionHostContextThumbnailOperation *_UIGraphicsPopContext()
{
  UIGraphicsPopContextSymbolLoc = getUIGraphicsPopContextSymbolLoc();
  if (UIGraphicsPopContextSymbolLoc)
  {

    return UIGraphicsPopContextSymbolLoc();
  }

  else
  {
    v2 = _UIGraphicsBeginImageContextWithOptions_cold_1();
    return [(QLExtensionHostContextThumbnailOperation *)v2 initWithAppex:v3 request:v4 completionHandler:v5, v6];
  }
}

void sub_2615EC6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2615ECFC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

BOOL file_exists(char *a1, _BYTE *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    if (v8 == a1)
    {
      v4 = 0;
    }

    else
    {
      v4 = __strlcpy_chk();
    }

    if (*a2)
    {
      if (*a1 != 47 || a1[1])
      {
        v4 = __strlcat_chk();
      }

      if (v4 > 0x3FF)
      {
        goto LABEL_12;
      }

      v4 = __strlcat_chk();
    }

    if (v4 < 0x400)
    {
      memset(&v7, 0, sizeof(v7));
      result = stat(v8, &v7) == 0;
      goto LABEL_14;
    }
  }

LABEL_12:
  result = 0;
LABEL_14:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x12u);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2615F0528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id cancelledError(void *a1)
{
  v1 = MEMORY[0x277CDAAE0];
  v2 = [a1 request];
  v3 = [v1 errorWithCode:5 request:v2 additionalUserInfo:0];

  return v3;
}

void sub_2615F4FB8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

id generationFailedErrorWithUnderlyingError(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = v8;
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA068]];
  }

  v10 = MEMORY[0x277CDAAE0];
  v11 = [v5 request];
  v12 = [v10 errorWithCode:0 request:v11 additionalUserInfo:v9];

  return v12;
}

void sub_2615F5224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2615F7084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id location)
{
  objc_destroyWeak((v27 + 80));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id generationFailedError(void *a1)
{
  v1 = MEMORY[0x277CDAAE0];
  v2 = [a1 request];
  v3 = [v1 errorWithCode:0 request:v2 additionalUserInfo:0];

  return v3;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

_BYTE *OUTLINED_FUNCTION_0_6(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_3_1(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 2u);
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

id QLGetValidCacheLocation()
{
  if (overrideCacheLocation)
  {
    [overrideCacheLocation stringByAppendingPathComponent:*MEMORY[0x277CDAB70]];
  }

  else
  {
    QLTGetDefaultCacheLocation();
  }
  v0 = ;

  return v0;
}

void sub_2615FFE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261600FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261601254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_7_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void sub_2616021C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261602AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ql_create_tables_initial(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:{@"CREATE TABLE thumbnails( docid integer not null, vol_uuid blob not null, last_hit_date integer not null, last_seen_path text not null, PRIMARY KEY (docid, vol_uuid))"}])
  {
    v4 = [v3 setUserVersion:1];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_7:

  return v4;
}

uint64_t ql_add_cache_delete(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:@"ALTER TABLE thumbnails ADD COLUMN size integer"] && objc_msgSend(v3, "execute:", @"CREATE INDEX thumbnail_last_hit_date ON thumbnails(last_hit_date)"))
  {
    v4 = [v3 setUserVersion:2];
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_8:

  return v4;
}

uint64_t ql_add_index_on_volume_uuid(void *a1, void *a2)
{
  v3 = a1;
  if ([v3 execute:@"CREATE INDEX thumbnail_vol_uuid ON thumbnails(vol_uuid)"])
  {
    v4 = [v3 setUserVersion:3];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if ((v4 & 1) == 0)
  {
    *a2 = [v3 lastError];
  }

LABEL_7:

  return v4;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261603148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261603684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_261603FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261604468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2616046C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160492C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261604C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261606700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2616068B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261606B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t QLCacheInDebugMode()
{
  if (QLCacheInDebugMode_onceToken != -1)
  {
    QLCacheInDebugMode_cold_1();
  }

  return QLCacheInDebugMode__cacheIsInDebugMode;
}

uint64_t __QLCacheInDebugMode_block_invoke()
{
  result = _os_feature_enabled_impl();
  QLCacheInDebugMode__cacheIsInDebugMode = result;
  return result;
}

__CFString *stringForCacheMode(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown mode";
  }

  else
  {
    return off_279ADDEF0[a1];
  }
}

void sub_261609148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_261609934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_261609B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160A2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160AB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26160E808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 72));
  objc_destroyWeak((v31 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_261610180(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB5188, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2616101EC(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB5188, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26161025C(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_2616102D0()
{
  v1 = *v0;
  v2 = sub_26162B8CC();
  v3 = MEMORY[0x266706B20](v2);

  return v3;
}

uint64_t sub_26161030C()
{
  v1 = *v0;
  sub_26162B8CC();
  sub_26162B8EC();
}

uint64_t sub_261610360()
{
  v1 = *v0;
  sub_26162B8CC();
  sub_26162BCEC();
  sub_26162B8EC();
  v2 = sub_26162BD1C();

  return v2;
}

uint64_t sub_2616103D4(uint64_t a1, id *a2)
{
  result = sub_26162B8AC();
  *a2 = 0;
  return result;
}

uint64_t sub_26161044C(uint64_t a1, id *a2)
{
  v3 = sub_26162B8BC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2616104CC@<X0>(uint64_t *a1@<X8>)
{
  sub_26162B8CC();
  v2 = sub_26162B89C();

  *a1 = v2;
  return result;
}

uint64_t sub_261610524()
{
  v1 = *v0;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v1);
  return sub_26162BD1C();
}

uint64_t sub_261610598()
{
  v1 = *v0;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v1);
  return sub_26162BD1C();
}

uint64_t sub_2616105EC(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_261610658(uint64_t a1)
{
  v2 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2616106C4(void *a1, uint64_t a2)
{
  v4 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_261610778(uint64_t a1, uint64_t a2)
{
  v4 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_2616107F4()
{
  v2 = *v0;
  sub_26162BCEC();
  sub_26162B87C();
  return sub_26162BD1C();
}

uint64_t sub_261610854(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26162B8CC();
  v6 = v5;
  if (v4 == sub_26162B8CC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26162BC7C();
  }

  return v9 & 1;
}

uint64_t sub_2616108E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261610B2C(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_26161096C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26162B89C();

  *a2 = v5;
  return result;
}

uint64_t sub_2616109B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26162B8CC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2616109E0(uint64_t a1)
{
  v2 = sub_261610B2C(&unk_2813685F8, type metadata accessor for QLFileThumbnailRequestOptions);
  v3 = sub_261610B2C(&qword_27FEB5160, type metadata accessor for QLFileThumbnailRequestOptions);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_261610B2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261610C3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261610C5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_261610E60()
{
  result = qword_27FEB51B0;
  if (!qword_27FEB51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB51B0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_261610F64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261610F84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_261610FC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_261611020()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5268, &qword_261630E80);
  v0 = *(sub_26162B4FC() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_261630C50;
  sub_26162B4CC();
  sub_26162B48C();
  sub_26162B4EC();
  sub_26162B49C();
  sub_26162B4BC();
  v4 = sub_261617528(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEB63F0 = v4;
  return result;
}

uint64_t sub_261611158()
{
  v0 = sub_26162B54C();
  __swift_allocate_value_buffer(v0, qword_281368A80);
  __swift_project_value_buffer(v0, qword_281368A80);
  return sub_26162B53C();
}

uint64_t sub_2616111D8()
{
  v0 = sub_26162BA4C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v2 = sub_26162B81C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_26162BA5C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261618454(0, &qword_281368610, 0x277D85C78);
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  sub_26162B80C();
  v10[1] = MEMORY[0x277D84F90];
  sub_2616185B0(&qword_281368618, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5290, &qword_261630E60);
  sub_26161849C();
  sub_26162BACC();
  result = sub_26162BA8C();
  qword_27FEB63F8 = result;
  return result;
}

uint64_t sub_26161142C()
{
  v1 = *v0;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v1);
  return sub_26162BD1C();
}

uint64_t sub_2616114A0()
{
  v1 = *v0;
  sub_26162BCEC();
  MEMORY[0x266706EF0](v1);
  return sub_26162BD1C();
}

uint64_t sub_2616114E4()
{
  v0 = qword_27FEB51E0;

  return v0;
}

uint64_t sub_261611524(uint64_t a1)
{
  v2 = sub_261617ED4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261611560(uint64_t a1)
{
  v2 = sub_261617ED4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2616115A0(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  *(v6 + 704) = v5;
  *(v6 + 696) = a5;
  *(v6 + 916) = a4;
  *(v6 + 912) = a3;
  *(v6 + 688) = a2;
  *(v6 + 680) = a1;
  v7 = sub_26162B4FC();
  *(v6 + 712) = v7;
  v8 = *(v7 - 8);
  *(v6 + 720) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 728) = swift_task_alloc();
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2616116A4, 0, 0);
}

uint64_t sub_2616116A4()
{
  v36 = v0;
  v1 = *(v0 + 688);
  v2 = [*(v0 + 680) request];
  *(v0 + 768) = v2;
  v3 = [v1 contentType];
  if (v3)
  {
    v4 = *(v0 + 760);
    v5 = v3;
    sub_26162B47C();

    if (qword_281368790 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 760);
    swift_beginAccess();
    v7 = qword_2813686F0;
    v8 = sub_26161B140(v6, [v2 shouldUseRestrictedExtension], 3);
    *(v0 + 776) = v8;

    if (v8)
    {
      if ((v8[OBJC_IVAR___QLThumbnailExtension_externalResourcesAccessAllowed] & 1) == 0)
      {
        [*(v0 + 688) setParentDirectoryWrapper_];
      }

      if (qword_281368650 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 688);
      v10 = sub_26162B54C();
      *(v0 + 784) = __swift_project_value_buffer(v10, qword_281368A80);
      v11 = v2;
      v12 = v9;
      v13 = v8;
      v14 = sub_26162B52C();
      v15 = sub_26162BA0C();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 688);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v35[0] = v34;
        *v17 = 138413058;
        *(v17 + 4) = v16;
        *v18 = v16;
        *(v17 + 12) = 2080;
        v19 = v16;
        [v11 size];
        v20 = sub_26162BA9C();
        v22 = sub_2615DD1E8(v20, v21, v35);

        *(v17 + 14) = v22;
        *(v17 + 22) = 2048;
        v23 = [v11 badgeType];

        *(v17 + 24) = v23;
        *(v17 + 32) = 2112;
        *(v17 + 34) = v13;
        v18[1] = v8;
        v24 = v13;
        _os_log_impl(&dword_2615D3000, v14, v15, "Generating thumbnail for %@ (size %s) with badge type %lu with extension %@", v17, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5210, &qword_261631170);
        swift_arrayDestroy();
        MEMORY[0x2667082C0](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x2667082C0](v34, -1, -1);
        MEMORY[0x2667082C0](v17, -1, -1);
      }

      else
      {
      }

      v33 = *&v13[OBJC_IVAR___QLThumbnailExtension_queueLock];
      *(swift_task_alloc() + 16) = v13;
      os_unfair_lock_lock((v33 + 24));
      sub_2616149E0((v33 + 16), v35);
      os_unfair_lock_unlock((v33 + 24));
      *(v0 + 792) = v35[0];

      return MEMORY[0x2822009F8](sub_261611B4C, 0, 0);
    }

    (*(*(v0 + 720) + 8))(*(v0 + 760), *(v0 + 712));
  }

  sub_261613E58();
  swift_allocError();
  *v25 = 0;
  swift_willThrow();

  v26 = *(v0 + 760);
  v27 = *(v0 + 752);
  v28 = *(v0 + 744);
  v29 = *(v0 + 736);
  v30 = *(v0 + 728);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_261611B4C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 16;
  v4 = v0 + 664;
  v5 = *(v0 + 912);
  *(v1 + 16) = v2;
  *(v1 + 56) = v4;
  *(v1 + 24) = sub_26161211C;
  v55 = v3;
  v54 = swift_continuation_init();
  v6 = MEMORY[0x277D849A8];
  if (v5)
  {
    v7 = *(v1 + 912);
    v8 = *MEMORY[0x277CDAB30];
    *(v1 + 280) = MEMORY[0x277D849A8];
    *(v1 + 256) = v7;
    sub_2616149FC((v1 + 256), (v1 + 288));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 288), v8, isUniquelyReferenced_nonNull_native);
  }

  v10 = MEMORY[0x277D839B0];
  if (*(v1 + 916) == 1)
  {
    v11 = *MEMORY[0x277CDAB50];
    *(v1 + 600) = MEMORY[0x277D839B0];
    *(v1 + 576) = 1;
    sub_2616149FC((v1 + 576), (v1 + 608));
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 608), v11, v12);
  }

  if ([*(v1 + 768) interpolationQuality])
  {
    v13 = *MEMORY[0x277CDAB38];
    v14 = [*(v1 + 768) interpolationQuality];
    *(v1 + 344) = v6;
    *(v1 + 320) = v14;
    sub_2616149FC((v1 + 320), (v1 + 352));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 352), v13, v15);
  }

  if ([*(v1 + 768) badgeType])
  {
    v16 = *MEMORY[0x277CDAB28];
    v17 = [*(v1 + 768) badgeType];
    *(v1 + 408) = MEMORY[0x277D83E88];
    *(v1 + 384) = v17;
    sub_2616149FC((v1 + 384), (v1 + 416));
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 416), v16, v18);
  }

  if ([*(v1 + 768) thirdPartyVideoDecodersAllowed])
  {
    v19 = *MEMORY[0x277CDAB48];
    v20 = [*(v1 + 768) thirdPartyVideoDecodersAllowed];
    *(v1 + 536) = v10;
    *(v1 + 512) = v20;
    sub_2616149FC((v1 + 512), (v1 + 544));
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_2616164C4((v1 + 544), v19, v21);
  }

  v22 = *(v1 + 768);
  v23 = *(v1 + 696);
  v24 = *MEMORY[0x277CDAB40];
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(v1 + 472) = sub_261618454(0, &qword_2813685E0, 0x277CCABB0);
  *(v1 + 448) = v25;
  sub_2616149FC((v1 + 448), (v1 + 480));
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_2616164C4((v1 + 480), v24, v26);
  [v22 size];
  v28 = v27;
  v30 = v29;
  [v22 minimumDimension];
  v32 = v31;
  [v22 scale];
  v34 = v33;
  v35 = *(v1 + 696);
  if (!v23)
  {
    v36 = [*(v1 + 768) externalThumbnailGeneratorData];
    sub_26162B85C();
  }

  v52 = *(v1 + 776);
  v53 = *(v1 + 792);
  v51 = *(v1 + 704);
  v37 = *(v1 + 688);
  v38 = objc_allocWithZone(MEMORY[0x277CDAAA8]);
  type metadata accessor for QLFileThumbnailRequestOptions(0);
  sub_2616185B0(&unk_2813685F8, type metadata accessor for QLFileThumbnailRequestOptions);

  v39 = sub_26162B84C();

  v40 = sub_26162B84C();

  v41 = [v38 initWithItem:v37 maximumSize:v39 minimumSize:v40 scale:v28 options:v30 generationData:{v32, v34}];

  v42 = swift_allocObject();
  *(v42 + 16) = v54;
  v43 = objc_allocWithZone(QLExtensionHostContextThumbnailOperation);
  *(v1 + 240) = sub_261616604;
  *(v1 + 248) = v42;
  *(v1 + 208) = MEMORY[0x277D85DD0];
  *(v1 + 216) = 1107296256;
  *(v1 + 224) = sub_261614A0C;
  *(v1 + 232) = &block_descriptor;
  v44 = _Block_copy((v1 + 208));
  v45 = [v43 initWithAppex:v52 request:v41 completionHandler:v44];
  _Block_release(v44);
  v46 = *(v1 + 248);

  v47 = OBJC_IVAR___QLThumbnailExtensionGenerator_operation;
  *(v1 + 800) = OBJC_IVAR___QLThumbnailExtensionGenerator_operation;
  v48 = *(v51 + v47);
  *(v51 + v47) = v45;
  v49 = v45;

  [v53 addOperation_];

  return MEMORY[0x282200938](v55);
}

uint64_t sub_26161211C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 808) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_2616130DC;
  }

  else
  {
    *(v1 + 816) = *(v1 + 664);
    v4 = sub_261612240;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261612240()
{
  v2 = v0;
  v3 = *(v0 + 816);
  v4 = *(v0 + 800);
  v5 = *(v0 + 704);
  v6 = *(v5 + v4);
  *(v5 + v4) = 0;

  v7 = [v3 metadata];
  *(v0 + 824) = v7;
  v8 = [v3 bitmapImages];
  if (v8)
  {
    v9 = v8;
    sub_261618454(0, &qword_281368778, 0x277CDAAB8);
    v10 = sub_26162B95C();

    if (v10 >> 62)
    {
      goto LABEL_50;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26162BBEC())
    {
      v159 = MEMORY[0x277D84F90];
      sub_26162BB9C();
      if (i < 0)
      {
        __break(1u);
LABEL_78:
        swift_once();
LABEL_21:
        v47 = *(v2 + 720);
        v155 = v2;
        v48 = qword_27FEB63F0;
        v147 = v47[2];
        v147(*(v2 + 744), *(v2 + 752), *(v2 + 712));
        v10 = v48 + 56;
        v49 = -1;
        v50 = -1 << *(v48 + 32);
        if (-v50 < 64)
        {
          v49 = ~(-1 << -v50);
        }

        v51 = v49 & *(v48 + 56);
        v2 = (63 - v50) >> 6;
        v151 = v48;

        v52 = 0;
        v148 = (v47 + 1);
        while (v51)
        {
          v53 = v52;
LABEL_30:
          v54 = *(v155 + 744);
          v55 = *(v155 + 736);
          v1 = *(v155 + 712);
          v56 = __clz(__rbit64(v51));
          v51 &= v51 - 1;
          v147(v55, *(v151 + 48) + v47[9] * (v56 | (v53 << 6)), v1);
          LOBYTE(v54) = sub_26162B4DC();
          v7 = v47[1];
          *(v155 + 840) = v7;
          *(v155 + 848) = (v47 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v7(v55, v1);
          if (v54)
          {
            v1 = v155;
            v57 = *(v155 + 752);
            v58 = *(v155 + 728);
            v59 = *(v155 + 712);
            v7(*(v155 + 744), v59);

            sub_26162B48C();
            LOBYTE(v57) = sub_26162B4DC();
            v7(v58, v59);
            if (v57)
            {
              v60 = *(v155 + 916);
              v61 = [objc_allocWithZone(QLTGeneratorThumbnailRequest) initWithRequest:*(v155 + 768) generationHandler:0];
              v62 = [objc_allocWithZone(QLPreviewThumbnailGenerator) initWithGeneratorRequest:v61 lowQuality:v60 thumbnailItem:v146];
              *(v155 + 856) = v62;

              if (qword_27FEB5138 != -1)
              {
                swift_once();
              }

              [v62 setGenerationQueue_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
              v63 = swift_allocObject();
              *(v155 + 864) = v63;
              *(v63 + 16) = xmmword_261630C60;
              *(v155 + 80) = v155;
              *(v155 + 120) = v155 + 672;
              *(v155 + 88) = sub_2616131BC;
              v64 = swift_continuation_init();
              *(v155 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5208, qword_261630C90);
              *(v155 + 144) = MEMORY[0x277D85DD0];
              *(v155 + 152) = 1107296256;
              *(v155 + 160) = sub_261613FEC;
              *(v155 + 168) = &block_descriptor_5;
              *(v155 + 176) = v64;
              [v62 generateThumbnailWithCompletionHandler_];

              return MEMORY[0x282200938](v155 + 80);
            }

            else
            {
              v89 = *(v155 + 816);
              v12 = [v89 iconFlavor];
              v90 = [v89 metadata];
              v91 = [v90 additionalProperties];

              if (v91)
              {
                v92 = sub_26162B85C();
              }

              else
              {
LABEL_44:
                v92 = sub_261617848(MEMORY[0x277D84F90]);
              }

              v93 = sub_2616140C4(v92);
              *(v1 + 880) = v93;

              v94 = swift_task_alloc();
              *(v1 + 888) = v94;
              *v94 = v1;
              v94[1] = sub_2616136C0;
              v95 = *(v1 + 704);
              v96 = *(v1 + 916);
              v97 = *(v1 + 680);

              return sub_2616115A0(v97, v146, v12, v96, v93);
            }
          }
        }

        while (1)
        {
          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_49;
          }

          if (v53 >= v2)
          {
            break;
          }

          v51 = *(v10 + 8 * v53);
          ++v52;
          if (v51)
          {
            v52 = v53;
            goto LABEL_30;
          }
        }

        v2 = v155;
        v78 = *(v155 + 752);
        v79 = *(v155 + 712);
        v80 = *v148;
        (*v148)(*(v155 + 744), v79);

        v80(v78, v79);
        goto LABEL_40;
      }

      v12 = 0;
      v149 = v7;
      while (1)
      {
        v13 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x266706D50](v12, v10);
          goto LABEL_11;
        }

        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v14 = *(v10 + 8 * v12 + 32);
LABEL_11:
        v15 = v14;
        v16 = v2;
        [*(v2 + 768) scale];
        v18 = v17;
        v19 = [v15 data];
        v20 = sub_26162B39C();
        v22 = v21;

        v23 = sub_26162B38C();
        sub_2616179D8(v20, v22);
        v24 = [v15 format];
        v25 = QLCreateCGImageWithDataAndFormat();

        if (!v25)
        {
          v35 = v16;
          v36 = v16[102];
          v37 = v16[99];
          v38 = v16[97];
          v39 = v16[96];
          v154 = v16[95];
          v40 = v16[90];
          v41 = v35[89];

          sub_261613E58();
          swift_allocError();
          *v42 = 2;
          swift_willThrow();

          v2 = v35;
          (*(v40 + 8))(v154, v41);

          goto LABEL_71;
        }

        v7 = [objc_opt_self() imageWithCGImage:v25 scale:1 orientation:v18];

        sub_26162BB7C();
        v1 = *(v159 + 16);
        sub_26162BBAC();
        sub_26162BBBC();
        sub_26162BB8C();
        ++v12;
        v2 = v16;
        if (v13 == i)
        {

          v26 = v159;
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      ;
    }

    v26 = MEMORY[0x277D84F90];
    goto LABEL_52;
  }

  v27 = [*(v0 + 816) ioSurface];
  if (!v27)
  {
    v149 = v7;
    v43 = [*(v0 + 816) item];
    *(v0 + 832) = v43;
    if (v43)
    {
      v146 = v43;
      v44 = [v43 contentType];
      if (v44)
      {
        v45 = *(v0 + 752);
        v46 = v44;
        sub_26162B47C();

        if (qword_27FEB5130 != -1)
        {
          goto LABEL_78;
        }

        goto LABEL_21;
      }

LABEL_40:
      v81 = *(v2 + 816);
      v82 = *(v2 + 792);
      v83 = *(v2 + 776);
      v84 = *(v2 + 768);
      v85 = *(v2 + 760);
      v86 = *(v2 + 720);
      v87 = *(v2 + 712);
      sub_261613E58();
      swift_allocError();
      *v88 = 2;
      swift_willThrow();

      (*(v86 + 8))(v85, v87);
    }

    else
    {
      v70 = *(v0 + 816);
      v71 = *(v2 + 792);
      v72 = *(v2 + 776);
      v73 = *(v2 + 768);
      v74 = *(v2 + 760);
      v75 = *(v2 + 720);
      v76 = *(v2 + 712);
      sub_261613E58();
      swift_allocError();
      *v77 = 2;
      swift_willThrow();

      (*(v75 + 8))(v74, v76);
    }

    goto LABEL_71;
  }

  v28 = v27;
  v29 = *(v0 + 768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_261630C60;
  [v29 scale];
  v31 = v30;
  v32 = CGImageCreateFromIOSurface();
  if (!v32)
  {
    v65 = *(v0 + 816);
    v66 = *(v0 + 792);
    v67 = *(v0 + 776);
    v156 = *(v0 + 760);
    v68 = *(v0 + 720);
    v150 = *(v0 + 768);
    v152 = *(v0 + 712);
    sub_261613E58();
    swift_allocError();
    *v69 = 2;
    swift_willThrow();

    v2 = v0;
    (*(v68 + 8))(v156, v152);
    *(v26 + 16) = 0;

LABEL_71:
    v137 = *(v2 + 760);
    v138 = *(v2 + 752);
    v139 = *(v2 + 744);
    v140 = *(v2 + 736);
    v141 = *(v2 + 728);

    v142 = *(v2 + 8);

    return v142();
  }

  v33 = v32;
  v34 = [objc_opt_self() imageWithCGImage:v32 scale:1 orientation:v31];

  *(v26 + 32) = v34;
LABEL_52:

  v98 = *(v2 + 768);
  [v98 minimumDimension];
  v100 = v99;
  [v98 scale];
  if (v26 >> 62)
  {
LABEL_76:
    v143 = v101;
    v144 = sub_26162BBEC();
    v101 = v143;
    v102 = v144;
  }

  else
  {
    v102 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = 0;
  v104 = v100 * v101;
  while (v102 != v103)
  {
    if ((v26 & 0xC000000000000001) != 0)
    {
      v105 = MEMORY[0x266706D50](v103, v26);
    }

    else
    {
      if (v103 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_75;
      }

      v105 = *(v26 + 8 * v103 + 32);
    }

    v106 = v105;
    if (__OFADD__(v103, 1))
    {
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    [v105 size];
    v108 = v107;
    [v106 scale];
    if (v104 > v108 * v109)
    {

LABEL_68:
      v124 = *(v2 + 784);
      swift_bridgeObjectRelease_n();
      v125 = sub_26162B52C();
      v126 = sub_26162BA2C();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        *v127 = 0;
        _os_log_impl(&dword_2615D3000, v125, v126, "Thumbnail generator returned an image smaller than the minimum size, returning no thumbnail", v127, 2u);
        MEMORY[0x2667082C0](v127, -1, -1);
      }

      v128 = *(v2 + 824);
      v129 = *(v2 + 816);
      v130 = v2;
      v131 = *(v2 + 792);
      v132 = v130[97];
      v133 = v130[96];
      v158 = v130[95];
      v134 = v130[90];
      v135 = v130[89];

      sub_261613E58();
      swift_allocError();
      *v136 = 2;
      swift_willThrow();

      v2 = v130;
      (*(v134 + 8))(v158, v135);
      goto LABEL_71;
    }

    [v106 size];
    v100 = v110;
    [v106 scale];
    v112 = v111;

    v101 = v100 * v112;
    ++v103;
    if (v104 > v100 * v112)
    {
      goto LABEL_68;
    }
  }

  v113 = *(v2 + 816);
  v114 = *(v2 + 792);
  v115 = v2;
  v116 = *(v2 + 776);
  v117 = *(v115 + 760);
  v118 = *(v115 + 752);
  v119 = *(v115 + 744);
  v153 = *(v115 + 736);
  v157 = *(v115 + 728);
  v120 = *(v115 + 720);
  v121 = *(v115 + 712);

  (*(v120 + 8))(v117, v121);

  v122 = *(v115 + 8);
  v123 = *(v115 + 824);

  return v122(v26, v123);
}

uint64_t sub_2616130DC()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 808);
  v7 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 744);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2616131BC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 872) = v2;
  if (v2)
  {
    v3 = sub_261613BFC;
  }

  else
  {
    v3 = sub_2616132CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2616132CC()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 832);
  v5 = *(v0 + 752);
  v6 = *(v0 + 712);
  *(*(v0 + 864) + 32) = *(v0 + 672);

  v3(v5, v6);
  v7 = *(v0 + 864);
  v8 = *(v0 + 768);

  [v8 minimumDimension];
  v10 = v9;
  [v8 scale];
  if (v7 >> 62)
  {
LABEL_24:
    v52 = v11;
    v53 = sub_26162BBEC();
    v11 = v52;
    v12 = v53;
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v10 * v11;
  while (v12 != v13)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x266706D50](v13, v7);
    }

    else
    {
      if (v13 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v15 size];
    v18 = v17;
    [v16 scale];
    if (v14 > v18 * v19)
    {

LABEL_17:
      v34 = *(v0 + 784);
      swift_bridgeObjectRelease_n();
      v35 = sub_26162B52C();
      v36 = sub_26162BA2C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2615D3000, v35, v36, "Thumbnail generator returned an image smaller than the minimum size, returning no thumbnail", v37, 2u);
        MEMORY[0x2667082C0](v37, -1, -1);
      }

      v38 = *(v0 + 824);
      v39 = *(v0 + 816);
      v40 = *(v0 + 792);
      v41 = *(v0 + 776);
      v42 = *(v0 + 768);
      v56 = *(v0 + 760);
      v43 = *(v0 + 720);
      v44 = *(v0 + 712);

      sub_261613E58();
      swift_allocError();
      *v45 = 2;
      swift_willThrow();

      (*(v43 + 8))(v56, v44);
      v46 = *(v0 + 760);
      v47 = *(v0 + 752);
      v48 = *(v0 + 744);
      v49 = *(v0 + 736);
      v50 = *(v0 + 728);

      v51 = *(v0 + 8);

      return v51();
    }

    [v16 size];
    v10 = v20;
    [v16 scale];
    v22 = v21;

    v11 = v10 * v22;
    ++v13;
    if (v14 > v10 * v22)
    {
      goto LABEL_17;
    }
  }

  v23 = *(v0 + 816);
  v24 = *(v0 + 792);
  v25 = *(v0 + 776);
  v26 = *(v0 + 760);
  v27 = *(v0 + 752);
  v28 = *(v0 + 744);
  v54 = *(v0 + 736);
  v55 = *(v0 + 728);
  v29 = *(v0 + 720);
  v30 = *(v0 + 712);

  (*(v29 + 8))(v26, v30);

  v31 = *(v0 + 8);
  v32 = *(v0 + 824);

  return v31(v7, v32);
}

uint64_t sub_2616136C0(uint64_t a1, void *a2)
{
  v6 = *v3;
  v7 = *(*v3 + 888);
  v8 = *v3;
  v6[112] = v2;

  v9 = v6[110];
  if (v2)
  {

    v10 = sub_261613D44;
  }

  else
  {

    v6[113] = a1;
    v10 = sub_261613818;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_261613818()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 752);
  v5 = *(v0 + 712);

  v3(v4, v5);
  v6 = *(v0 + 904);
  v7 = *(v0 + 768);

  [v7 minimumDimension];
  v9 = v8;
  [v7 scale];
  if (v6 >> 62)
  {
LABEL_24:
    v51 = v10;
    v52 = sub_26162BBEC();
    v10 = v51;
    v11 = v52;
  }

  else
  {
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v13 = v9 * v10;
  while (v11 != v12)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x266706D50](v12, v6);
    }

    else
    {
      if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v14 = *(v6 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    [v14 size];
    v17 = v16;
    [v15 scale];
    if (v13 > v17 * v18)
    {

LABEL_17:
      v33 = *(v0 + 784);
      swift_bridgeObjectRelease_n();
      v34 = sub_26162B52C();
      v35 = sub_26162BA2C();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_2615D3000, v34, v35, "Thumbnail generator returned an image smaller than the minimum size, returning no thumbnail", v36, 2u);
        MEMORY[0x2667082C0](v36, -1, -1);
      }

      v37 = *(v0 + 824);
      v38 = *(v0 + 816);
      v39 = *(v0 + 792);
      v40 = *(v0 + 776);
      v41 = *(v0 + 768);
      v55 = *(v0 + 760);
      v42 = *(v0 + 720);
      v43 = *(v0 + 712);

      sub_261613E58();
      swift_allocError();
      *v44 = 2;
      swift_willThrow();

      (*(v42 + 8))(v55, v43);
      v45 = *(v0 + 760);
      v46 = *(v0 + 752);
      v47 = *(v0 + 744);
      v48 = *(v0 + 736);
      v49 = *(v0 + 728);

      v50 = *(v0 + 8);

      return v50();
    }

    [v15 size];
    v9 = v19;
    [v15 scale];
    v21 = v20;

    v10 = v9 * v21;
    ++v12;
    if (v13 > v9 * v21)
    {
      goto LABEL_17;
    }
  }

  v22 = *(v0 + 816);
  v23 = *(v0 + 792);
  v24 = *(v0 + 776);
  v25 = *(v0 + 760);
  v26 = *(v0 + 752);
  v27 = *(v0 + 744);
  v53 = *(v0 + 736);
  v54 = *(v0 + 728);
  v28 = *(v0 + 720);
  v29 = *(v0 + 712);

  (*(v28 + 8))(v25, v29);

  v30 = *(v0 + 8);
  v31 = *(v0 + 824);

  return v30(v6, v31);
}

uint64_t sub_261613BFC()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[105];
  v6 = v0[103];
  v7 = v0[102];
  v8 = v0[99];
  v18 = v0[97];
  v19 = v0[104];
  v22 = v0[95];
  v20 = v0[96];
  v21 = v0[94];
  v9 = v0[89];
  swift_willThrow();

  v5(v21, v9);
  v5(v22, v9);
  *(v2 + 16) = 0;

  v10 = v0[109];
  v11 = v0[95];
  v12 = v0[94];
  v13 = v0[93];
  v14 = v0[92];
  v15 = v0[91];

  v16 = v0[1];

  return v16();
}

uint64_t sub_261613D44()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 776);
  v7 = *(v0 + 768);
  v18 = *(v0 + 760);
  v8 = *(v0 + 752);
  v9 = *(v0 + 712);

  v2(v8, v9);
  v2(v18, v9);
  v10 = *(v0 + 896);
  v11 = *(v0 + 760);
  v12 = *(v0 + 752);
  v13 = *(v0 + 744);
  v14 = *(v0 + 736);
  v15 = *(v0 + 728);

  v16 = *(v0 + 8);

  return v16();
}

unint64_t sub_261613E58()
{
  result = qword_27FEB51F0;
  if (!qword_27FEB51F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB51F0);
  }

  return result;
}

uint64_t sub_261613EAC(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    **(*(a3 + 64) + 40) = a1;
    v4 = a1;

    return MEMORY[0x282200950](a3);
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      type metadata accessor for QLThumbnailError(0);
      sub_261617848(MEMORY[0x277D84F90]);
      sub_2616185B0(&qword_27FEB51C0, type metadata accessor for QLThumbnailError);
      sub_26162B36C();
      v6 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5248, &qword_261630E58);
    swift_allocError();
    *v7 = v6;
    v8 = a2;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_261613FEC(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5248, &qword_261630E58);
    swift_allocError();
    *v7 = a3;
    v8 = a3;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_2616140C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5250, &qword_261630E68);
    v2 = sub_26162BC1C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2615DD69C(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2616149FC(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2616149FC(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2616149FC(v32, v33);
    v17 = *(v2 + 40);
    result = sub_26162BAEC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2616149FC(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_261614548(void *a1, void *a2, int a3, char a4, uint64_t a5, void *aBlock, void *a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  v7[5] = _Block_copy(aBlock);
  if (a5)
  {
    a5 = sub_26162B85C();
  }

  v7[6] = a5;
  v14 = a1;
  v15 = a2;
  a7;
  v16 = swift_task_alloc();
  v7[7] = v16;
  *v16 = v7;
  v16[1] = sub_26161467C;

  return sub_2616115A0(v14, v15, a3, a4 & 1, a5);
}

uint64_t sub_26161467C(uint64_t a1, void *a2)
{
  v4 = v2;
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *(*v3 + 32);
  v9 = *(*v3 + 24);
  v10 = *(*v3 + 16);
  v11 = *v3;

  v12 = *(v6 + 48);
  v13 = *(v6 + 40);

  if (v4)
  {
    v14 = sub_26162B37C();

    (v13)[2](v13, 0, 0, v14);
    _Block_release(v13);
  }

  else
  {
    sub_261618454(0, &qword_281368628, 0x277D43EA8);
    v15 = sub_26162B94C();
    (v13)[2](v13, v15, a2, 0);

    _Block_release(v13);
  }

  v16 = *(v11 + 8);

  return v16();
}

id ThumbnailExtensionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ThumbnailExtensionGenerator.init()()
{
  *&v0[OBJC_IVAR___QLThumbnailExtensionGenerator_operation] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailExtensionGenerator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ThumbnailExtensionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThumbnailExtensionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *sub_2616149FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_261614A0C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_261614A98(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_261614AE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26162BCEC();
  sub_26162B8EC();
  v6 = sub_26162BD1C();

  return sub_261614B5C(a1, a2, v6);
}

unint64_t sub_261614B5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26162BC7C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_261614C14(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_26161865C;

  return v7();
}

uint64_t sub_261614CFC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_261614DE4;

  return v8();
}

uint64_t sub_261614DE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261614ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_261618548(a3, v25 - v11, &unk_27FEB53B0, &qword_261630E00);
  v13 = sub_26162B9BC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_261618238(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26162B9AC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_26162B99C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_26162B8DC() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_261618238(a3);

    return v23;
  }

LABEL_8:
  sub_261618238(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2616151A4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26161529C;

  return v7(a1);
}

uint64_t sub_26161529C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_2616153BC(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

_BYTE **sub_261615430(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_261615468(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_2615DD1E8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_2616154C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5240, &qword_261630E50);
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

uint64_t sub_2616155B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5278, &unk_261630E90);
  v37 = a2;
  result = sub_26162BC0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_2616149FC(v23, v38);
      }

      else
      {
        sub_2615DD69C(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      sub_26162B8CC();
      sub_26162BCEC();
      sub_26162B8EC();
      v26 = sub_26162BD1C();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_2616149FC(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_261615888(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26162B3BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5230, &qword_261630DF0);
  v43 = a2;
  result = sub_26162BC0C();
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
      }

      v29 = *(v14 + 40);
      sub_2616185B0(&qword_281368740, MEMORY[0x277CC95F0]);
      result = sub_26162B86C();
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

uint64_t sub_261615C64(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_26162B4FC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5238, &qword_261630DF8);
  v43 = a2;
  result = sub_26162BC0C();
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
      }

      v29 = *(v14 + 40);
      sub_2616185B0(&qword_281368730, MEMORY[0x277D85578]);
      result = sub_26162B86C();
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

uint64_t sub_261616040(uint64_t a1, int a2)
{
  v3 = v2;
  v56 = sub_26162B3BC();
  v6 = *(v56 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v50 = *(v9 - 8);
  v51 = v9;
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5228, &qword_261630DE8);
  v52 = a2;
  result = sub_26162BC0C();
  v16 = result;
  if (*(v13 + 16))
  {
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
    v46 = v3;
    v47 = v6 + 16;
    v48 = v13;
    v49 = v6;
    v53 = (v6 + 32);
    v23 = result + 64;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v54 = *(v50 + 72);
      v30 = v29 + v54 * v28;
      if (v52)
      {
        sub_261617F28(v30, v12);
        v31 = *(v13 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 32))(v55, v31 + v32 * v28, v56);
      }

      else
      {
        sub_2615D694C(v30, v12);
        v33 = *(v13 + 56);
        v32 = *(v49 + 72);
        (*(v49 + 16))(v55, v33 + v32 * v28, v56);
      }

      v34 = *(v16 + 40);
      sub_26162BCEC();
      sub_26162B4FC();
      sub_2616185B0(&qword_281368730, MEMORY[0x277D85578]);
      sub_26162B87C();
      v35 = v51;
      v36 = v12[*(v51 + 20)];
      sub_26162BD0C();
      MEMORY[0x266706EF0](*&v12[*(v35 + 24)]);
      result = sub_26162BD1C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v23 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v23 + 8 * v39);
          if (v43 != -1)
          {
            v24 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v38) & ~*(v23 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      sub_261617F28(v12, *(v16 + 48) + v54 * v24);
      result = (*v53)(*(v16 + 56) + v32 * v24, v55, v56);
      ++*(v16 + 16);
      v13 = v48;
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

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v18, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

_OWORD *sub_2616164C4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26161DD1C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_261616BB4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_2616155B8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_26161DD1C(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for QLFileThumbnailRequestOptions(0);
      result = sub_26162BC9C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2616149FC(a1, v20);
  }

  else
  {
    sub_2616169B8(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261616624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2615D66A8(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_261617228();
      goto LABEL_7;
    }

    sub_261616040(v17, a3 & 1);
    v28 = *v4;
    v29 = sub_2615D66A8(a2);
    if ((v18 & 1) == (v30 & 1))
    {
      v14 = v29;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2615D694C(a2, v11);
      return sub_261616A20(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_26162BC9C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_26162B3BC();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_2616167EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26162B3BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_2615D6A0C(a2);
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
      sub_261616D34();
      goto LABEL_7;
    }

    sub_261615888(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_2615D6A0C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      sub_261616AFC(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    sub_26162BC9C();
    __break(1u);
    return;
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
}

_OWORD *sub_2616169B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2616149FC(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_261616A20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  sub_261617F28(a2, v8 + *(*(v9 - 8) + 72) * a1);
  v10 = a4[7];
  v11 = sub_26162B3BC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

uint64_t sub_261616AFC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26162B3BC();
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

id sub_261616BB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5278, &unk_261630E90);
  v2 = *v0;
  v3 = sub_26162BBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2615DD69C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2616149FC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_261616D34()
{
  v1 = v0;
  v32 = sub_26162B3BC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5230, &qword_261630DF0);
  v4 = *v0;
  v5 = sub_26162BBFC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

char *sub_261616FA8()
{
  v1 = v0;
  v34 = sub_26162B4FC();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5238, &qword_261630DF8);
  v4 = *v0;
  v5 = sub_26162BBFC();
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

char *sub_261617228()
{
  v1 = v0;
  v2 = sub_26162B3BC();
  v3 = *(v2 - 8);
  v40 = v2;
  v41 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5228, &qword_261630DE8);
  v9 = *v0;
  v10 = sub_26162BBFC();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = *(v38 + 72) * v25;
        sub_2615D694C(*(v9 + 48) + v26, v21);
        v28 = v40;
        v27 = v41;
        v29 = *(v41 + 72) * v25;
        v30 = v39;
        (*(v41 + 16))(v39, *(v9 + 56) + v29, v40);
        v31 = v42;
        sub_261617F28(v21, *(v42 + 48) + v26);
        result = (*(v27 + 32))(*(v31 + 56) + v29, v30, v28);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

uint64_t sub_261617528(uint64_t a1)
{
  v2 = sub_26162B4FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5270, &qword_261630E88);
    v10 = sub_26162BB2C();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2616185B0(&qword_281368730, MEMORY[0x277D85578]);
      v18 = sub_26162B86C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2616185B0(&unk_281368720, MEMORY[0x277D85578]);
          v25 = sub_26162B88C();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_261617848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5258, &qword_261630E70);
    v3 = sub_26162BC1C();
    v4 = a1 + 32;

    while (1)
    {
      sub_261618548(v4, &v13, &qword_27FEB5260, &qword_261630E78);
      v5 = v13;
      v6 = v14;
      result = sub_261614AE4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2616149FC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2616179D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t dispatch thunk of ThumbnailExtensionGenerator.generateThumbnail(thumbnailRequest:item:flavor:wantsLowQuality:generationData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x70);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_261617BC8;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_261617BC8(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t getEnumTagSinglePayload for ThumbnailExtensionGenerator.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThumbnailExtensionGenerator.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261617E80()
{
  result = qword_27FEB5218;
  if (!qword_27FEB5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5218);
  }

  return result;
}

unint64_t sub_261617ED4()
{
  result = qword_27FEB5220;
  if (!qword_27FEB5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5220);
  }

  return result;
}

uint64_t sub_261617F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261617F8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 36);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_261614DE4;

  return sub_261614548(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_26161806C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26161865C;

  return sub_261614C14(v2, v3, v5);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26161816C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26161865C;

  return sub_261614CFC(a1, v4, v5, v7);
}

uint64_t sub_261618238(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2616182A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26161865C;

  return sub_2616151A4(a1, v5);
}

uint64_t sub_261618358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_261614DE4;

  return sub_2616151A4(a1, v5);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_261618454(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_26161849C()
{
  result = qword_281368630;
  if (!qword_281368630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEB5290, &qword_261630E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281368630);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_261618548(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2616185B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261618660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v15);

    sub_2616149FC(&v15, v17);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v17);

      if (*(&v16 + 1))
      {
        sub_261620814(&v15, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v17, 0, sizeof(v17));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53A8, &unk_261631150);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261618824(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v15);

    sub_2616149FC(&v15, v17);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v17);

      if (*(&v16 + 1))
      {
        sub_261620814(&v15, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v17, 0, sizeof(v17));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_2616189D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v15);

    sub_2616149FC(&v15, v17);
  }

  else
  {

    v15 = 0u;
    v16 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v17);

      if (*(&v16 + 1))
      {
        sub_261620814(&v15, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v17, 0, sizeof(v17));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_261618B8C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 attributes];
  v7 = sub_26162B85C();

  if (*(v7 + 16) && (v8 = sub_261614AE4(a1, a2), (v9 & 1) != 0))
  {
    sub_2615DD69C(*(v7 + 56) + 32 * v8, &v17);

    sub_2616149FC(&v17, v19);
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
    v10 = [v3 nsExtensionAttributes];
    v11 = sub_26162B85C();

    if (*(v11 + 16) && (v12 = sub_261614AE4(a1, a2), (v13 & 1) != 0))
    {
      sub_2615DD69C(*(v11 + 56) + 32 * v12, v19);

      if (*(&v18 + 1))
      {
        sub_261620814(&v17, &unk_27FEB5370, &qword_261631120);
      }
    }

    else
    {

      memset(v19, 0, sizeof(v19));
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5370, &qword_261631120);
  v14 = swift_dynamicCast();
  v15 = v17;
  if (!v14)
  {
    return 0;
  }

  return v15;
}

uint64_t sub_261618D44()
{

  v0 = sub_26162B90C();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_26162B90C();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_26162BC7C();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_26162B90C();
      v3 = v5;
    }

    while (v5);
  }

  sub_26162B90C();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_261618EA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5358, &qword_261631110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_26162B3BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_261620814(a1, &unk_27FEB5358, &qword_261631110);
    sub_26161DF7C(a2, v8);
    sub_2615D69B0(a2);
    return sub_261620814(v8, &unk_27FEB5358, &qword_261631110);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_261616624(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_2615D69B0(a2);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_26161906C()
{
  v0 = [objc_allocWithZone(type metadata accessor for ThumbnailExtensionMonitor()) init];
  result = sub_261619BDC();
  qword_2813686F0 = v0;
  return result;
}

id static ThumbnailExtensionMonitor.shared.getter()
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2813686F0;

  return v0;
}

void static ThumbnailExtensionMonitor.shared.setter(uint64_t a1)
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2813686F0;
  qword_2813686F0 = a1;
}

uint64_t (*static ThumbnailExtensionMonitor.shared.modify())()
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_2616192C0@<X0>(void *a1@<X8>)
{
  if (qword_281368790 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2813686F0;
  *a1 = qword_2813686F0;

  return v2;
}

void sub_26161934C(id *a1)
{
  v1 = qword_281368790;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_2813686F0;
  qword_2813686F0 = v2;
}

uint64_t sub_2616193D4(uint64_t a1)
{
  sub_26162BCEC();
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578]);
  sub_26162B87C();
  v3 = *(v1 + *(a1 + 20));
  sub_26162BD0C();
  MEMORY[0x266706EF0](*(v1 + *(a1 + 24)));
  return sub_26162BD1C();
}

uint64_t sub_26161948C(uint64_t a1, uint64_t a2)
{
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578]);
  sub_26162B87C();
  v4 = *(v2 + *(a2 + 20));
  sub_26162BD0C();
  return MEMORY[0x266706EF0](*(v2 + *(a2 + 24)));
}

uint64_t sub_261619530(uint64_t a1, uint64_t a2)
{
  sub_26162BCEC();
  sub_26162B4FC();
  sub_2615D6788(&qword_281368730, MEMORY[0x277D85578]);
  sub_26162B87C();
  v4 = *(v2 + *(a2 + 20));
  sub_26162BD0C();
  MEMORY[0x266706EF0](*(v2 + *(a2 + 24)));
  return sub_26162BD1C();
}

uint64_t sub_2616195E4(uint64_t a1)
{
  v3 = sub_26162B43C();
  v4 = *(v1 + *(a1 + 20)) == 0;
  if (*(v1 + *(a1 + 20)))
  {
    v5 = 0x6369727473657228;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = 0xE000000000000000;
  }

  else
  {
    v6 = 0xEC00000029646574;
  }

  v8 = v3;

  MEMORY[0x266706AF0](v5, v6);

  return v8;
}

uint64_t sub_2616196E8()
{
  v0 = sub_26162B54C();
  __swift_allocate_value_buffer(v0, qword_281368AD0);
  __swift_project_value_buffer(v0, qword_281368AD0);
  return sub_26162B53C();
}

id ThumbnailExtensionMonitor.init()()
{
  v28 = sub_26162BA5C();
  v0 = *(v28 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v28);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26162BA4C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26162B81C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v27 = OBJC_IVAR___QLThumbnailExtensionMonitor_queue;
  v26[1] = sub_261618454(0, &qword_281368610, 0x277D85C78);
  sub_26162B80C();
  v31 = MEMORY[0x277D84F90];
  sub_2615D6788(&qword_281368618, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5290, &qword_261630E60);
  sub_26161B81C(&qword_281368630, &unk_27FEB5290, &qword_261630E60);
  sub_26162BACC();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v28);
  v8 = sub_26162BA8C();
  v9 = v29;
  *&v29[v27] = v8;
  v10 = MEMORY[0x277D84F98];
  *&v9[OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType] = MEMORY[0x277D84F98];
  *&v9[OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier] = v10;
  *&v9[OBJC_IVAR___QLThumbnailExtensionMonitor_matchingExtensionsCache] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5200, &qword_2616311F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_261630EA0;
  v12 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v13 = sub_26162B89C();
  v14 = [v12 initWithExtensionPointIdentifier_];

  *(v11 + 32) = v14;
  v15 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v16 = sub_26162B89C();
  v17 = [v15 initWithExtensionPointIdentifier_];

  *(v11 + 40) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v19 = sub_26162B89C();
  v20 = [v18 initWithExtensionPointIdentifier_];

  *(v11 + 48) = v20;
  v21 = objc_allocWithZone(MEMORY[0x277CC5E00]);
  sub_261618454(0, &unk_2813685D0, 0x277CC5DF8);
  v22 = sub_26162B94C();

  v23 = [v21 initWithQueries_];

  *&v9[OBJC_IVAR___QLThumbnailExtensionMonitor_queryController] = v23;
  v24 = type metadata accessor for ThumbnailExtensionMonitor();
  v30.receiver = v9;
  v30.super_class = v24;
  return objc_msgSendSuper2(&v30, sel_init);
}

uint64_t sub_261619BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v30 - v3;
  v4 = sub_26162B7FC();
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26162B81C();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813686F8 != -1)
  {
    swift_once();
  }

  v12 = sub_26162B54C();
  __swift_project_value_buffer(v12, qword_281368AD0);
  v13 = v0;
  v14 = sub_26162B52C();
  v15 = sub_26162BA1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_2615D3000, v14, v15, "Setup cache for %@", v16, 0xCu);
    sub_261620814(v17, &qword_27FEB5210, &qword_261631170);
    MEMORY[0x2667082C0](v17, -1, -1);
    MEMORY[0x2667082C0](v16, -1, -1);
  }

  v19 = *&v13[OBJC_IVAR___QLThumbnailExtensionMonitor_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  aBlock[4] = sub_261620570;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26161A1C4;
  aBlock[3] = &block_descriptor_42;
  v21 = _Block_copy(aBlock);
  v22 = v13;
  v23 = v19;
  sub_26162B80C();
  v35 = MEMORY[0x277D84F90];
  sub_2615D6788(&qword_281368648, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52D0, &qword_261630EB8);
  sub_26161B81C(&unk_281368638, &unk_27FEB52D0, &qword_261630EB8);
  sub_26162BACC();
  MEMORY[0x266706C70](0, v11, v7, v21);
  _Block_release(v21);

  (*(v33 + 8))(v7, v4);
  (*(v31 + 8))(v11, v32);

  v24 = OBJC_IVAR___QLThumbnailExtensionMonitor_queryController;
  [*&v22[OBJC_IVAR___QLThumbnailExtensionMonitor_queryController] setDelegate_];
  [*&v22[v24] resume];
  v25 = sub_26162B9BC();
  v26 = v34;
  (*(*(v25 - 8) + 56))(v34, 1, 1, v25);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v22;
  v28 = v22;
  sub_26161AA1C(0, 0, v26, &unk_261631168, v27);
}

uint64_t sub_26161A0C4(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___QLThumbnailExtensionMonitor_queryController) queries];
  if (!v1)
  {
    sub_261618454(0, &unk_2813685D0, 0x277CC5DF8);
    sub_26162B95C();
    v1 = sub_26162B94C();
  }

  v2 = [objc_opt_self() executeQueries_];

  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  v3 = sub_26162B95C();

  sub_26161B98C(v3);
}

uint64_t sub_26161A1C4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26161A208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_26162B7FC();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_26162B81C();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v10 = *(v9 + 64) + 15;
  v4[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53C0, &qword_261631190) - 8) + 64) + 15;
  v4[16] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB53C8, &qword_261631198);
  v4[17] = v12;
  v13 = *(v12 - 8);
  v4[18] = v13;
  v14 = *(v13 + 64) + 15;
  v4[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53D0, &qword_2616311A0);
  v4[20] = v15;
  v16 = *(v15 - 8);
  v4[21] = v16;
  v17 = *(v16 + 64) + 15;
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26161A42C, 0, 0);
}

uint64_t sub_26161A42C()
{
  v1 = v0[22];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_26162B3EC();
  sub_26162B9CC();
  (*(v3 + 8))(v2, v4);
  v0[23] = OBJC_IVAR___QLThumbnailExtensionMonitor_queue;
  v5 = *(MEMORY[0x277D85798] + 4);
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_26161A524;
  v7 = v0[22];
  v8 = v0[20];
  v9 = v0[16];

  return MEMORY[0x2822003E8](v9, 0, 0, v8);
}

uint64_t sub_26161A524()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26161A620, 0, 0);
}

uint64_t sub_26161A620()
{
  v1 = v0[16];
  v2 = sub_26162B3DC();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[12];
  if (v3 == 1)
  {
    v5 = v0[19];
    v6 = v0[15];
    (*(v0[21] + 8))(v0[22], v0[20]);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[15];
    v24 = v0[14];
    v25 = v0[13];
    v10 = v0[10];
    v23 = v0[11];
    v26 = v1;
    v11 = v0[9];
    v12 = *&v11[v0[23]];
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v0[6] = sub_26162080C;
    v0[7] = v13;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_26161A1C4;
    v0[5] = &block_descriptor_63;
    v14 = _Block_copy(v0 + 2);
    v15 = v12;
    v16 = v11;
    sub_26162B80C();
    v0[8] = MEMORY[0x277D84F90];
    sub_2615D6788(&qword_281368648, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52D0, &qword_261630EB8);
    sub_26161B81C(&unk_281368638, &unk_27FEB52D0, &qword_261630EB8);
    sub_26162BACC();
    MEMORY[0x266706C70](0, v9, v4, v14);
    _Block_release(v14);

    (*(v23 + 8))(v4, v10);
    (*(v24 + 8))(v9, v25);
    v17 = v0[7];

    sub_261620814(v26, &qword_27FEB53C0, &qword_261631190);
    v18 = *(MEMORY[0x277D85798] + 4);
    v19 = swift_task_alloc();
    v0[24] = v19;
    *v19 = v0;
    v19[1] = sub_26161A524;
    v20 = v0[22];
    v21 = v0[20];
    v22 = v0[16];

    return MEMORY[0x2822003E8](v22, 0, 0, v21);
  }
}

uint64_t sub_26161A988(uint64_t a1)
{
  v1 = [*(a1 + OBJC_IVAR___QLThumbnailExtensionMonitor_queryController) extensionIdentities];
  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  v2 = sub_26162B95C();

  sub_26161B98C(v2);
}

uint64_t sub_26161AA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB53B0, &qword_261630E00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26162062C(a3, v27 - v11);
  v13 = sub_26162B9BC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_261620814(v12, &unk_27FEB53B0, &qword_261630E00);
  }

  else
  {
    sub_26162B9AC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26162B99C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26162B8DC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_261620814(a3, &unk_27FEB53B0, &qword_261630E00);

      return v25;
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

  sub_261620814(a3, &unk_27FEB53B0, &qword_261630E00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

BOOL sub_26161AD0C(uint64_t a1, double a2, double a3)
{
  v5 = COERCE_DOUBLE(sub_26161AEB0(a1));
  if (v6)
  {
    return 0;
  }

  if (a2 == 0.0 && a3 == 0.0)
  {
    return 1;
  }

  if (v5 <= a2)
  {
    return v5 <= a3;
  }

  return 0;
}

uint64_t sub_26161AEB0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26162B4FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26162B48C();
  v14 = sub_26162B4DC();
  (*(v10 + 8))(v13, v9);
  if (v14)
  {
    return 0x4031000000000000;
  }

  if (qword_27FEB5140 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_27FEB6400);
  if (sub_26162B4DC())
  {
    return 0x4031000000000000;
  }

  v16 = (*(v10 + 16))(v8, a1, v9);
  v8[*(v5 + 20)] = 0;
  *&v8[*(v5 + 24)] = 3;
  v17 = *(v2 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  MEMORY[0x28223BE20](v16);
  v22[-4] = v2;
  v22[-3] = v8;
  v22[-2] = ObjectType;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  v20 = v22[1];
  sub_2615D69B0(v8);
  if (!v20)
  {
    return 0;
  }

  v21 = *&v20[OBJC_IVAR___QLThumbnailExtension_minimumThumbnailDimension];

  return v21;
}

uint64_t sub_26161B140(uint64_t a1, char a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_26162B4FC();
  (*(*(v13 - 8) + 16))(v12, a1, v13);
  v12[*(v9 + 28)] = a2;
  *&v12[*(v9 + 32)] = a3;
  v14 = *(v3 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  v19 = v3;
  v20 = v12;
  v21 = ObjectType;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52C0, &qword_261630EB0);
  sub_26162BA6C();

  v16 = v22;
  sub_2615D69B0(v12);
  return v16;
}

uint64_t sub_26161B49C(void *a1)
{
  v3 = sub_26162B7FC();
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26162B81C();
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR___QLThumbnailExtensionMonitor_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_26161B7FC;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26161A1C4;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v1;
  v16 = a1;
  sub_26162B80C();
  v21 = MEMORY[0x277D84F90];
  sub_2615D6788(&qword_281368648, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB52D0, &qword_261630EB8);
  sub_26161B81C(&unk_281368638, &unk_27FEB52D0, &qword_261630EB8);
  sub_26162BACC();
  MEMORY[0x266706C70](0, v10, v6, v13);
  _Block_release(v13);

  (*(v20 + 8))(v6, v3);
  (*(v7 + 8))(v10, v19);
}

uint64_t sub_26161B76C(int a1, id a2)
{
  v2 = [a2 extensionIdentities];
  sub_261618454(0, &qword_281368608, 0x277CC5DD8);
  v3 = sub_26162B95C();

  sub_26161B98C(v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26161B81C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26161B98C(unint64_t isUniquelyReferenced_nonNull_native)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5388, &qword_261631138);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v102 - v6;
  v8 = sub_26162B4FC();
  v114 = *(v8 - 8);
  v9 = *(v114 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v120 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v102 - v12;
  v117 = sub_26162B3BC();
  v103 = *(v117 - 8);
  v13 = v103[8];
  v14 = MEMORY[0x28223BE20](v117);
  v116 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v102 = &v102 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v109 = &v102 - v19;
  MEMORY[0x28223BE20](v18);
  v115 = &v102 - v20;
  v21 = sub_26162B82C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  LOBYTE(v26) = sub_26162B83C();
  (*(v22 + 8))(v25, v21);
  if ((v26 & 1) == 0)
  {
    goto LABEL_40;
  }

  v131 = MEMORY[0x277D84FA0];
  v28 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
  v124 = OBJC_IVAR___QLThumbnailExtensionMonitor_identitiesByType;
  swift_beginAccess();
  if (*(*(v2 + v28) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v130 = *&v124[v2];
    *&v124[v2] = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEB5398, &qword_261631140);
    sub_26162BBDC();
    *&v124[v2] = v130;
  }

  v125 = v2;
  swift_endAccess();
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_41;
  }

  v29 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v29; i = 0)
  {
    v31 = 0;
    v112 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v111 = "abled for this file type";
    v105 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v104 = isUniquelyReferenced_nonNull_native + 32;
    v108 = (v103 + 1);
    v122 = (v114 + 48);
    v123 = v114 + 56;
    v119 = (v114 + 32);
    v113 = v114 + 16;
    v118 = (v114 + 8);
    v106 = isUniquelyReferenced_nonNull_native;
    v107 = v29;
    while (1)
    {
      if (v112)
      {
        v32 = MEMORY[0x266706D50](v31, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        if (v31 >= *(v105 + 16))
        {
          goto LABEL_39;
        }

        v32 = *(v104 + 8 * v31);
      }

      v33 = v32;
      v34 = __OFADD__(v31++, 1);
      if (v34)
      {
        break;
      }

      v35 = sub_261618660(0xD000000000000017, v111 | 0x8000000000000000);
      if (v35)
      {
        v36 = v35;
        v37 = isUniquelyReferenced_nonNull_native;
        v38 = [v33 uniqueIdentifier];
        v39 = v109;
        sub_26162B3AC();

        isUniquelyReferenced_nonNull_native = v33;
        v40 = v115;
        sub_26161EA34(v115, v39);
        (*v108)(v40, v117);
        v128 = *(v36 + 16);
        if (v128)
        {
          v121 = isUniquelyReferenced_nonNull_native;
          v110 = v31;
          v127 = objc_opt_self();
          v41 = 0;
          v42 = (v36 + 40);
          v43 = &unk_279ADE000;
          while (v41 < *(v36 + 16))
          {
            v47 = *(v42 - 1);
            v46 = *v42;

            isUniquelyReferenced_nonNull_native = sub_26162B89C();

            v48 = [v127 v43[138]];

            if (v48)
            {
              (*v123)(v7, 1, 1, v8);
              sub_2615D6788(&qword_2813687A0, MEMORY[0x277D85578]);
              sub_26162BC4C();

              if ((*v122)(v7, 1, v8) != 1)
              {
                v49 = v120;
                v50 = *v119;
                v51 = i;
                v52 = v7;
                (*v119)(v120, v7, v8);
                v7 = v126;
                v50(v126, v49, v8);
                v53 = v124;
                v54 = v125;
                swift_beginAccess();
                sub_261620560(v51);
                v55 = *&v53[v54];
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v130 = *&v53[v54];
                v56 = v130;
                *&v53[v54] = 0x8000000000000000;
                v57 = sub_2615DBA84(v7);
                v59 = v56[2];
                v60 = (v58 & 1) == 0;
                v34 = __OFADD__(v59, v60);
                v61 = v59 + v60;
                if (v34)
                {
                  goto LABEL_36;
                }

                v62 = v58;
                if (v56[3] >= v61)
                {
                  v7 = v52;
                  v43 = &unk_279ADE000;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    isUniquelyReferenced_nonNull_native = v57;
                    sub_261616FA8();
                    v57 = isUniquelyReferenced_nonNull_native;
                    v56 = v130;
                  }
                }

                else
                {
                  sub_261615C64(v61, isUniquelyReferenced_nonNull_native);
                  v56 = v130;
                  v57 = sub_2615DBA84(v126);
                  v43 = &unk_279ADE000;
                  if ((v62 & 1) != (v63 & 1))
                  {
                    goto LABEL_65;
                  }

                  v7 = v52;
                }

                *&v124[v125] = v56;
                if ((v62 & 1) == 0)
                {
                  v56[(v57 >> 6) + 8] |= 1 << v57;
                  v64 = v57;
                  (*(v114 + 16))(v56[6] + *(v114 + 72) * v57, v126, v8);
                  *(v56[7] + 8 * v64) = MEMORY[0x277D84F90];
                  v65 = v56[2];
                  v34 = __OFADD__(v65, 1);
                  v66 = v65 + 1;
                  if (v34)
                  {
                    goto LABEL_37;
                  }

                  v57 = v64;
                  v56[2] = v66;
                }

                v44 = (v56[7] + 8 * v57);
                v45 = v121;
                MEMORY[0x266706B30]();
                if (*((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  isUniquelyReferenced_nonNull_native = *((*v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_26162B96C();
                }

                sub_26162B98C();
                swift_endAccess();
                (*v118)(v126, v8);
                i = sub_26161C61C;
              }
            }

            v41 = (v41 + 1);
            v42 += 2;
            if (v128 == v41)
            {

              isUniquelyReferenced_nonNull_native = v106;
              v29 = v107;
              v31 = v110;
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          break;
        }

        isUniquelyReferenced_nonNull_native = v37;
        v29 = v107;
      }

      else
      {
      }

LABEL_8:
      if (v31 == v29)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    v29 = sub_26162BBEC();
  }

LABEL_42:
  v118 = i;
  v67 = OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier;
  v68 = v125;
  swift_beginAccess();
  v69 = *(v68 + v67);
  v70 = (v69 + 64);
  v71 = 1 << *(v69 + 32);
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & *(v69 + 64);
  v74 = ((v71 + 63) >> 6);
  v126 = (v103 + 2);
  v120 = (v103 + 4);
  v128 = (v103 + 1);
  v123 = v69;

  v75 = 0;
  v121 = v74;
  v122 = v70;
  v119 = v67;
  if (v73)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v76 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v76 >= v74)
    {

      return sub_261620560(v118);
    }

    v73 = v70[v76];
    ++v75;
    if (v73)
    {
      v75 = v76;
      do
      {
LABEL_50:
        v77 = __clz(__rbit64(v73));
        v73 &= v73 - 1;
        v78 = *(v123 + 48);
        v79 = v103;
        v127 = v103[9];
        v80 = v102;
        v81 = v117;
        v124 = v103[2];
        (v124)(v102, v78 + v127 * (v77 | (v75 << 6)), v117);
        (v79[4])(v116, v80, v81);
        v82 = v131;
        if (*(v131 + 16) && (v83 = *(v131 + 40), sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]), v84 = sub_26162B86C(), v85 = -1 << *(v82 + 32), v86 = v84 & ~v85, ((*(v82 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) != 0))
        {
          v87 = ~v85;
          while (1)
          {
            v88 = v115;
            v89 = v117;
            (v124)(v115, *(v82 + 48) + v86 * v127, v117);
            sub_2615D6788(&qword_281368738, MEMORY[0x277CC95F0]);
            v90 = sub_26162B88C();
            v91 = *v128;
            (*v128)(v88, v89);
            if (v90)
            {
              break;
            }

            v86 = (v86 + 1) & v87;
            if (((*(v82 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          v91(v116, v117);
        }

        else
        {
LABEL_55:
          v92 = v125;
          v93 = v119;
          swift_beginAccess();
          v94 = *&v93[v92];
          v95 = sub_2615D6A0C(v116);
          if (v96)
          {
            v97 = v95;
            v98 = *&v93[v92];
            v99 = swift_isUniquelyReferenced_nonNull_native();
            v100 = *&v93[v92];
            v129 = v100;
            *&v93[v92] = 0x8000000000000000;
            if (!v99)
            {
              sub_261616D34();
              v100 = v129;
            }

            (*v128)(*(v100 + 48) + v97 * v127, v117);

            sub_26161E104(v97, v100);
            *&v93[v92] = v100;
          }

          swift_endAccess();
          (*v128)(v116, v117);
        }

        v74 = v121;
        v70 = v122;
      }

      while (v73);
    }
  }

  __break(1u);
LABEL_65:
  result = sub_26162BC9C();
  __break(1u);
  return result;
}

id sub_26161C62C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  if (v4 == 1)
  {
    if (a2)
    {
      if (a2 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v12)
      {
        v17 = v2;
        v7 = 0;
        while (1)
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x266706D50](v7, a2);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_14:
              __break(1u);
              goto LABEL_15;
            }

            goto LABEL_9;
          }

          if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v8 = *(a2 + 8 * v7 + 32);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_14;
          }

LABEL_9:
          v3 = v8;
          v10 = [v3 bundleIdentifier];
          sub_26162B8CC();

          LOBYTE(v10) = sub_261618D44();

          if ((v10 & 1) == 0)
          {
            goto LABEL_16;
          }

          ++v7;
          if (v9 == i)
          {
            v3 = 0;
LABEL_16:
            v2 = v17;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_18:
        v12 = v2;
        i = sub_26162BBEC();
      }
    }

    v3 = 0;
LABEL_20:
    v13 = v2;
    swift_beginAccess();
    v14 = *v13;
    *v13 = v3;
    v15 = v3;
    sub_2615DC16C(v14);
  }

  else
  {
LABEL_15:
    v11 = v3;
  }

  return v3;
}

uint64_t sub_26161C7C0(uint64_t a1, void *a2)
{
  v3 = v2;
  v53 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5358, &qword_261631110);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v49 - v7;
  v9 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_26162B3BC();
  v55 = *(v52 - 8);
  v12 = *(v55 + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v49 - v16;
  v18 = sub_26162B82C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(v3 + OBJC_IVAR___QLThumbnailExtensionMonitor_queue);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  v25 = sub_26162B83C();
  result = (*(v19 + 8))(v22, v18);
  if (v25)
  {
    v27 = [a2 uniqueIdentifier];
    sub_26162B3AC();

    v28 = OBJC_IVAR___QLThumbnailExtensionMonitor_extensionByIdentifier;
    swift_beginAccess();
    v29 = *(v3 + v28);
    v30 = v55;
    if (*(v29 + 16))
    {
      v31 = *(v3 + v28);

      v32 = sub_2615D6A0C(v17);
      if (v33)
      {
        v34 = *(v30 + 8);
        v35 = *(*(v29 + 56) + 8 * v32);
        v36 = v17;
        v37 = v52;
        v34(v36, v52);

LABEL_7:
        v47 = v54;
        sub_2615D694C(v53, v54);
        v48 = [a2 uniqueIdentifier];
        sub_26162B3AC();

        (*(v30 + 56))(v8, 0, 1, v37);
        swift_beginAccess();
        sub_261618EA0(v8, v47);
        swift_endAccess();
        return v35;
      }
    }

    v50 = *(v30 + 8);
    v51 = v8;
    v38 = v17;
    v37 = v52;
    v50(v38, v52);
    v39 = objc_allocWithZone(type metadata accessor for ThumbnailExtension(0));
    v40 = a2;
    v41 = sub_26162021C(v40);

    v42 = [v40 uniqueIdentifier];
    sub_26162B3AC();

    v30 = v55;
    swift_beginAccess();
    v43 = v41;
    v44 = *(v3 + v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v3 + v28);
    *(v3 + v28) = 0x8000000000000000;
    sub_2616167EC(v43, v15, isUniquelyReferenced_nonNull_native);
    v46 = v15;
    v35 = v43;
    v50(v46, v37);
    v8 = v51;
    *(v3 + v28) = v56;
    swift_endAccess();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26161CCCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEB5388, &qword_261631138);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_26162B4FC();
  __swift_allocate_value_buffer(v4, qword_27FEB6400);
  v5 = __swift_project_value_buffer(v4, qword_27FEB6400);
  sub_26162B50C();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_26161CDFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746C7561666564;
  if (v2 != 1)
  {
    v4 = 1751607656;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 7827308;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746C7561666564;
  if (*a2 != 1)
  {
    v8 = 1751607656;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 7827308;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26162BC7C();
  }

  return v11 & 1;
}

uint64_t sub_26161CEE8()
{
  v1 = *v0;
  sub_26162BCEC();
  sub_26162B8EC();

  return sub_26162BD1C();
}

uint64_t sub_26161CF7C()
{
  *v0;
  *v0;
  sub_26162B8EC();
}

uint64_t sub_26161CFFC()
{
  v1 = *v0;
  sub_26162BCEC();
  sub_26162B8EC();

  return sub_26162BD1C();
}

uint64_t sub_26161D08C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2616201D0();
  *a2 = result;
  return result;
}

void sub_26161D0BC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746C7561666564;
  if (v2 != 1)
  {
    v5 = 1751607656;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 7827308;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ThumbnailExtension.generatorIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier);
  v2 = *(v0 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier + 8);

  return v1;
}

uint64_t ThumbnailExtension.generatorVersion.getter()
{
  v1 = *(v0 + OBJC_IVAR___QLThumbnailExtension_generatorVersion);
  v2 = *(v0 + OBJC_IVAR___QLThumbnailExtension_generatorVersion + 8);

  return v1;
}

uint64_t sub_26161D304()
{
  v1 = v0;
  v2 = [v0 description];
  v3 = sub_26162B8CC();
  v5 = v4;

  MEMORY[0x266706AF0](v3, v5);

  MEMORY[0x266706AF0](8250, 0xE200000000000000);
  MEMORY[0x266706AF0](*&v1[OBJC_IVAR___QLThumbnailExtension_generatorIdentifier], *&v1[OBJC_IVAR___QLThumbnailExtension_generatorIdentifier + 8]);
  MEMORY[0x266706AF0](2112032, 0xE300000000000000);
  sub_26162B41C();
  sub_26162BBCC();
  return 0;
}

id sub_26161D41C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (*a1)
  {
    *a3 = v4;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    sub_26162BB4C();

    MEMORY[0x266706AF0](*(a2 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier), *(a2 + OBJC_IVAR___QLThumbnailExtension_generatorIdentifier + 8));
    v8 = sub_26162B89C();

    [v7 setName_];

    [v7 setMaxConcurrentOperationCount_];
    *a1 = v7;
    *a3 = v7;
    v9 = v7;
    v4 = 0;
  }

  return v4;
}

id ThumbnailExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_26161D604(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_26161D880()
{
  result = sub_26162B41C();
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

uint64_t getEnumTagSinglePayload for ThumbnailExtension.ConcurrencyLevel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThumbnailExtension.ConcurrencyLevel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_26161DBAC()
{
  sub_26162B4FC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for QLExtensionMatchingType(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26161DC84()
{
  result = qword_27FEB5348;
  if (!qword_27FEB5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEB5348);
  }

  return result;
}

unint64_t sub_26161DCD8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26162BAEC();

  return sub_26161DDB0(a1, v5);
}

unint64_t sub_26161DD1C(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26162B8CC();
  sub_26162BCEC();
  sub_26162B8EC();
  v4 = sub_26162BD1C();

  return sub_26161DE78(a1, v4);
}

unint64_t sub_26161DDB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_261620874(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266706CF0](v9, a1);
      sub_2616208D0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26161DE78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26162B8CC();
      v9 = v8;
      if (v7 == sub_26162B8CC() && v9 == v10)
      {
        break;
      }

      v12 = sub_26162BC7C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_26161DF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_2615D66A8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_261617228();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for ThumbnailExtensionMonitor.Predicate(0);
    sub_2615D69B0(v12 + *(*(v13 - 8) + 72) * v8);
    v14 = *(v11 + 56);
    v15 = sub_26162B3BC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a2, v14 + *(v22 + 72) * v8, v15);
    sub_26161E424(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_26162B3BC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

unint64_t sub_26161E104(int64_t a1, uint64_t a2)
{
  v43 = sub_26162B3BC();
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
    v13 = sub_26162BADC();
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
      sub_2615D6788(&qword_281368740, MEMORY[0x277CC95F0]);
      v26 = sub_26162B86C();
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