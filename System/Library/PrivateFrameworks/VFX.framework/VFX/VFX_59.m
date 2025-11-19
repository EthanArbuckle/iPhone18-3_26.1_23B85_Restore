uint64_t sub_1AF5BF4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v15 = *(v8 + 16);
  v16 = *(v8 + 24);

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v17 = sub_1AF65A4B4(v16, a6, a7, 0, 0, &v44, v51);

  sub_1AF5C43E8(v51, sub_1AF5C4448);
  sub_1AF5C43E8(&v44, sub_1AF5C4448);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v17);
  }

  v40 = *(v12 + 120);
  v19 = *(v12 + 28);
  v20 = *(v12 + 32);
  v21 = *(v12 + 40);
  v22 = *(v21 + 200);
  v43 = *(*(v15 + 88) + 8 * v17 + 32);

  if ((v22 & 1) != 0 || *(v43 + 200) == 1)
  {
    *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v21 = *(v12 + 40);
  }

  v23 = *(v12 + 256);
  sub_1AF5B4FCC(v21, a1, a2, 0, v12);
  v42 = *(v12 + 256);
  v24 = v42 - v23;
  v41 = v23;
  if (v42 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  *&v51[0] = v25;
  v26 = *(*(v12 + 40) + 24);
  v27 = *(v26 + 16);
  if (v27)
  {
    v39 = v12;
    v28 = v26 + 32;

    for (i = 0; i != v27; ++i)
    {
      v30 = v28 + 40 * i;
      if ((*(v30 + 32) & 1) == 0)
      {
        v31 = *(v43 + 24);
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = (v31 + 32);
          while (*v33 != *v30)
          {
            v33 += 5;
            if (!--v32)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v39;
  }

  if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v24);
  }

  if (*(v12 + 184))
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v12 + 168);
  }

  v50 = 0;

  MEMORY[0x1EEE9AC00](v35, v36);
  DWORD2(v45) = -1;
  v46 = v41;
  v47 = v42;
  v48 = v41;
  v49 = v42;
  *&v44 = v41;
  *(&v44 + 1) = v42;
  *&v45 = v34;
  if (v24 >= 1)
  {
    do
    {
      sub_1AF6248A8(v17, v19 | (v20 << 32), v40, v15, &v44, a8);
    }

    while ((*(&v44 + 1) - v44) > 0);
  }

  v37 = *(v12 + 192);
  if (v37)
  {
    v38 = *(v12 + 208);
    sub_1AF75D364(v41, v42, v37);
    sub_1AF75D364(v41, v42, v38);
  }
}

uint64_t sub_1AF5BF9C8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v58 = a4;
  v60 = a2;
  v17 = *(v9 + 16);
  v18 = *(v9 + 24);

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v19 = sub_1AF65A4B4(v18, a7, a8, 0, 0, &v63, v70);

  sub_1AF5C43E8(v70, sub_1AF5C4448);
  sub_1AF5C43E8(&v63, sub_1AF5C4448);
  if (*(v12 + 240) - *(v12 + 232) == a3 && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v19);
  }

  v55 = a7;
  v56 = a8;
  v57 = a6;
  v50 = *(v12 + 120);
  v21 = *(v12 + 28);
  v22 = *(v12 + 32);
  if (v58)
  {
    v23 = v58 + 8 * a5;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v12 + 40);
  v25 = v24[200];
  v61 = *(*(v17 + 88) + 8 * v19 + 32);

  if ((v25 & 1) != 0 || *(v61 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v24 = *(v12 + 40);
  }

  v26 = v24[212];
  v53 = v23;
  if (v26)
  {
    v52 = 0;
  }

  else
  {
    v52 = *(v61 + 212);
  }

  v27 = v60;
  v51 = v24[208];
  v60 = *(v12 + 128);
  v28 = *(v12 + 256);
  sub_1AF5B5880(v24, a1, v27, a3, 0, v12);
  v29 = *(v12 + 256);
  v30 = v29 - v28;
  v54 = v28;
  if (v29 == v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v59 = v31;
  *&v70[0] = v31;
  v32 = *(*(v12 + 40) + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v48 = v29;
    v49 = v12;
    v34 = v32 + 32;
    v47[1] = v32;

    for (i = 0; i != v33; ++i)
    {
      v36 = v34 + 40 * i;
      if ((*(v36 + 32) & 1) == 0)
      {
        v37 = *(v61 + 24);
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = (v37 + 32);
          while (*v39 != *v36)
          {
            v39 += 5;
            if (!--v38)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v49;
    v29 = v48;
  }

  v40 = v54;
  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v30);
  }

  if (*(v12 + 184))
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v12 + 168);
  }

  v69 = 0;

  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v63 + 1) = v29;
  *&v64 = v41;
  DWORD2(v64) = -1;
  v65 = v54;
  v66 = v29;
  v67 = v54;
  v68 = v29;
  *&v63 = v54;
  if (v30 < 1)
  {
  }

  else
  {
    v60 = v47;
    v44 = v50;
    do
    {
      v62 = v22;
      sub_1AF6248A8(v19, v21 | (v22 << 32), v44, v17, &v63, a9);
    }

    while ((*(&v63 + 1) - v63) > 0);
  }

  v45 = *(v12 + 192);
  if (v45)
  {
    v46 = *(v12 + 208);
    sub_1AF75D364(v40, v29, v45);
    sub_1AF75D364(v40, v29, v46);
  }
}

uint64_t sub_1AF5BFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v15 = *(v8 + 16);
  v16 = *(v8 + 24);

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v17 = sub_1AF65A4B4(v16, a6, a7, 0, 0, &v44, v51);

  sub_1AF5C43E8(v51, sub_1AF5C4448);
  sub_1AF5C43E8(&v44, sub_1AF5C4448);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v17);
  }

  v40 = *(v12 + 120);
  v19 = *(v12 + 28);
  v20 = *(v12 + 32);
  v21 = *(v12 + 40);
  v22 = *(v21 + 200);
  v43 = *(*(v15 + 88) + 8 * v17 + 32);

  if ((v22 & 1) != 0 || *(v43 + 200) == 1)
  {
    *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v21 = *(v12 + 40);
  }

  v23 = *(v12 + 256);
  sub_1AF5B4FCC(v21, a1, a2, 0, v12);
  v42 = *(v12 + 256);
  v24 = v42 - v23;
  v41 = v23;
  if (v42 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  *&v51[0] = v25;
  v26 = *(*(v12 + 40) + 24);
  v27 = *(v26 + 16);
  if (v27)
  {
    v39 = v12;
    v28 = v26 + 32;

    for (i = 0; i != v27; ++i)
    {
      v30 = v28 + 40 * i;
      if ((*(v30 + 32) & 1) == 0)
      {
        v31 = *(v43 + 24);
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = (v31 + 32);
          while (*v33 != *v30)
          {
            v33 += 5;
            if (!--v32)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v39;
  }

  if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v24);
  }

  if (*(v12 + 184))
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v12 + 168);
  }

  v50 = 0;

  MEMORY[0x1EEE9AC00](v35, v36);
  DWORD2(v45) = -1;
  v46 = v41;
  v47 = v42;
  v48 = v41;
  v49 = v42;
  *&v44 = v41;
  *(&v44 + 1) = v42;
  *&v45 = v34;
  if (v24 >= 1)
  {
    do
    {
      sub_1AF6248A8(v17, v19 | (v20 << 32), v40, v15, &v44, a8);
    }

    while ((*(&v44 + 1) - v44) > 0);
  }

  v37 = *(v12 + 192);
  if (v37)
  {
    v38 = *(v12 + 208);
    sub_1AF75D364(v41, v42, v37);
    sub_1AF75D364(v41, v42, v38);
  }
}

uint64_t sub_1AF5C0700(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, void (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t))
{
  v11 = v10;
  sub_1AF5C5A68(0, a7, a8);
  v16 = v15;
  v17 = *(v10 + 16);
  v18 = *(v10 + 24);

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v55 = 0;
  memset(v54, 0, sizeof(v54));
  v19 = sub_1AF65A4B4(v18, v16, &off_1F2559388, 0, 0, &v47, v54);

  sub_1AF5C43E8(v54, sub_1AF5C4448);
  sub_1AF5C43E8(&v47, sub_1AF5C4448);
  if (*(v11 + 240) - *(v11 + 232) == a3 && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v19);
  }

  v45 = a3;
  v21 = a2;
  v43 = *(v11 + 120);
  v22 = *(v11 + 28);
  v23 = *(v11 + 32);
  v24 = *(v11 + 40);
  v25 = *(v24 + 200);
  v46 = *(*(v17 + 88) + 8 * v19 + 32);

  if ((v25 & 1) != 0 || *(v46 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v24 = *(v11 + 40);
  }

  v26 = *(v11 + 256);
  sub_1AF5B5880(v24, a1, v21, v45, 0, v11);
  v44 = *(v11 + 256);
  v27 = v44 - v26;
  if (v44 == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  *&v54[0] = v28;
  v29 = *(*(v11 + 40) + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v42 = v26;
    v31 = v29 + 32;

    for (i = 0; i != v30; ++i)
    {
      v33 = v31 + 40 * i;
      if ((*(v33 + 32) & 1) == 0)
      {
        v34 = *(v46 + 24);
        v35 = *(v34 + 16);
        if (v35)
        {
          v36 = (v34 + 32);
          while (*v36 != *v33)
          {
            v36 += 5;
            if (!--v35)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8();
        }
      }
    }

    v26 = v42;
  }

  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v11 + 72) * v27);
  }

  if (*(v11 + 184))
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v11 + 168);
  }

  v53 = 0;

  MEMORY[0x1EEE9AC00](v38, v39);
  DWORD2(v48) = -1;
  v49 = v26;
  v50 = v44;
  v51 = v26;
  v52 = v44;
  *&v47 = v26;
  *(&v47 + 1) = v44;
  *&v48 = v37;
  if (v27 >= 1)
  {
    do
    {
      sub_1AF6248A8(v19, v22 | (v23 << 32), v43, v17, &v47, a10);
    }

    while ((*(&v47 + 1) - v47) > 0);
  }

  v40 = *(v11 + 192);
  if (v40)
  {
    v41 = *(v11 + 208);
    sub_1AF75D364(v26, v44, v40);
    sub_1AF75D364(v26, v44, v41);
  }
}

uint64_t sub_1AF5C0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t), uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v10 = v9;
  sub_1AF5C5A68(0, a6, a7);
  v14 = v13;
  v15 = *(v9 + 16);
  v16 = *(v9 + 24);

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v17 = sub_1AF65A4B4(v16, v14, &off_1F2559388, 0, 0, &v44, v51);

  sub_1AF5C43E8(v51, sub_1AF5C4448);
  sub_1AF5C43E8(&v44, sub_1AF5C4448);
  if (a2 - a1 == *(v10 + 240) - *(v10 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v17);
  }

  v41 = *(v10 + 120);
  v19 = *(v10 + 28);
  v20 = *(v10 + 32);
  v21 = *(v10 + 40);
  v22 = *(v21 + 200);
  v43 = *(*(v15 + 88) + 8 * v17 + 32);

  if ((v22 & 1) != 0 || *(v43 + 200) == 1)
  {
    *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v21 = *(v10 + 40);
  }

  v23 = a1;
  v24 = *(v10 + 256);
  sub_1AF5B4FCC(v21, v23, a2, 0, v10);
  v42 = *(v10 + 256);
  v25 = v42 - v24;
  if (v42 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  *&v51[0] = v26;
  v27 = *(*(v10 + 40) + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v40 = v24;
    v29 = v27 + 32;

    for (i = 0; i != v28; ++i)
    {
      v31 = v29 + 40 * i;
      if ((*(v31 + 32) & 1) == 0)
      {
        v32 = *(v43 + 24);
        v33 = *(v32 + 16);
        if (v33)
        {
          v34 = (v32 + 32);
          while (*v34 != *v31)
          {
            v34 += 5;
            if (!--v33)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8();
        }
      }
    }

    v24 = v40;
  }

  if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v25);
  }

  if (*(v10 + 184))
  {
    v35 = 0;
  }

  else
  {
    v35 = *(v10 + 168);
  }

  v50 = 0;

  MEMORY[0x1EEE9AC00](v36, v37);
  DWORD2(v45) = -1;
  v46 = v24;
  v47 = v42;
  v48 = v24;
  v49 = v42;
  *&v44 = v24;
  *(&v44 + 1) = v42;
  *&v45 = v35;
  if (v25 >= 1)
  {
    do
    {
      sub_1AF6248A8(v17, v19 | (v20 << 32), v41, v15, &v44, a9);
    }

    while ((*(&v44 + 1) - v44) > 0);
  }

  v38 = *(v10 + 192);
  if (v38)
  {
    v39 = *(v10 + 208);
    sub_1AF75D364(v24, v42, v38);
    sub_1AF75D364(v24, v42, v39);
  }
}

uint64_t sub_1AF5C1144(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v58 = a4;
  v60 = a2;
  v17 = *(v9 + 16);
  v18 = *(v9 + 24);

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v71 = 0;
  memset(v70, 0, sizeof(v70));
  v19 = sub_1AF65A4B4(v18, a7, a8, 0, 0, &v63, v70);

  sub_1AF5C43E8(v70, sub_1AF5C4448);
  sub_1AF5C43E8(&v63, sub_1AF5C4448);
  if (*(v12 + 240) - *(v12 + 232) == a3 && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v19);
  }

  v55 = a7;
  v56 = a8;
  v57 = a6;
  v50 = *(v12 + 120);
  v21 = *(v12 + 28);
  v22 = *(v12 + 32);
  if (v58)
  {
    v23 = v58 + 4 * a5;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v12 + 40);
  v25 = v24[200];
  v61 = *(*(v17 + 88) + 8 * v19 + 32);

  if ((v25 & 1) != 0 || *(v61 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v24 = *(v12 + 40);
  }

  v26 = v24[212];
  v53 = v23;
  if (v26)
  {
    v52 = 0;
  }

  else
  {
    v52 = *(v61 + 212);
  }

  v27 = v60;
  v51 = v24[208];
  v60 = *(v12 + 128);
  v28 = *(v12 + 256);
  sub_1AF5B5880(v24, a1, v27, a3, 0, v12);
  v29 = *(v12 + 256);
  v30 = v29 - v28;
  v54 = v28;
  if (v29 == v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v59 = v31;
  *&v70[0] = v31;
  v32 = *(*(v12 + 40) + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v48 = v29;
    v49 = v12;
    v34 = v32 + 32;
    v47[1] = v32;

    for (i = 0; i != v33; ++i)
    {
      v36 = v34 + 40 * i;
      if ((*(v36 + 32) & 1) == 0)
      {
        v37 = *(v61 + 24);
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = (v37 + 32);
          while (*v39 != *v36)
          {
            v39 += 5;
            if (!--v38)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v49;
    v29 = v48;
  }

  v40 = v54;
  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v30);
  }

  if (*(v12 + 184))
  {
    v41 = 0;
  }

  else
  {
    v41 = *(v12 + 168);
  }

  v69 = 0;

  MEMORY[0x1EEE9AC00](v42, v43);
  *(&v63 + 1) = v29;
  *&v64 = v41;
  DWORD2(v64) = -1;
  v65 = v54;
  v66 = v29;
  v67 = v54;
  v68 = v29;
  *&v63 = v54;
  if (v30 < 1)
  {
  }

  else
  {
    v60 = v47;
    v44 = v50;
    do
    {
      v62 = v22;
      sub_1AF6248A8(v19, v21 | (v22 << 32), v44, v17, &v63, a9);
    }

    while ((*(&v63 + 1) - v63) > 0);
  }

  v45 = *(v12 + 192);
  if (v45)
  {
    v46 = *(v12 + 208);
    sub_1AF75D364(v40, v29, v45);
    sub_1AF75D364(v40, v29, v46);
  }
}

uint64_t sub_1AF5C1614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v15 = *(v8 + 16);
  v16 = *(v8 + 24);

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v52 = 0;
  memset(v51, 0, sizeof(v51));
  v17 = sub_1AF65A4B4(v16, a6, a7, 0, 0, &v44, v51);

  sub_1AF5C43E8(v51, sub_1AF5C4448);
  sub_1AF5C43E8(&v44, sub_1AF5C4448);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v17);
  }

  v40 = *(v12 + 120);
  v19 = *(v12 + 28);
  v20 = *(v12 + 32);
  v21 = *(v12 + 40);
  v22 = *(v21 + 200);
  v43 = *(*(v15 + 88) + 8 * v17 + 32);

  if ((v22 & 1) != 0 || *(v43 + 200) == 1)
  {
    *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v21 = *(v12 + 40);
  }

  v23 = *(v12 + 256);
  sub_1AF5B4FCC(v21, a1, a2, 0, v12);
  v42 = *(v12 + 256);
  v24 = v42 - v23;
  v41 = v23;
  if (v42 == v23)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  *&v51[0] = v25;
  v26 = *(*(v12 + 40) + 24);
  v27 = *(v26 + 16);
  if (v27)
  {
    v39 = v12;
    v28 = v26 + 32;

    for (i = 0; i != v27; ++i)
    {
      v30 = v28 + 40 * i;
      if ((*(v30 + 32) & 1) == 0)
      {
        v31 = *(v43 + 24);
        v32 = *(v31 + 16);
        if (v32)
        {
          v33 = (v31 + 32);
          while (*v33 != *v30)
          {
            v33 += 5;
            if (!--v32)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v39;
  }

  if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v24);
  }

  if (*(v12 + 184))
  {
    v34 = 0;
  }

  else
  {
    v34 = *(v12 + 168);
  }

  v50 = 0;

  MEMORY[0x1EEE9AC00](v35, v36);
  DWORD2(v45) = -1;
  v46 = v41;
  v47 = v42;
  v48 = v41;
  v49 = v42;
  *&v44 = v41;
  *(&v44 + 1) = v42;
  *&v45 = v34;
  if (v24 >= 1)
  {
    do
    {
      sub_1AF6248A8(v17, v19 | (v20 << 32), v40, v15, &v44, a8);
    }

    while ((*(&v44 + 1) - v44) > 0);
  }

  v37 = *(v12 + 192);
  if (v37)
  {
    v38 = *(v12 + 208);
    sub_1AF75D364(v41, v42, v37);
    sub_1AF75D364(v41, v42, v38);
  }
}

uint64_t sub_1AF5C1B20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v14 = sub_1AF65A4B4(v13, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v53, v60);

  sub_1AF5C43E8(v60, sub_1AF5C4448);
  sub_1AF5C43E8(&v53, sub_1AF5C4448);
  v15 = *(v7 + 192);
  if (v15 && a3)
  {
    v16 = *(v7 + 208);
    v17 = a1;
    v18 = a3;
    do
    {
      v19 = *v17++;
      *(v15 + 8 * (v19 >> 6)) |= 1 << v19;
      --v18;
    }

    while (v18);
    v20 = a1;
    v21 = a3;
    do
    {
      v22 = *v20++;
      *(v16 + 8 * (v22 >> 6)) &= (-1 << v22) - 1;
      --v21;
    }

    while (v21);
  }

  sub_1AF5C3B0C(*(v7 + 40), v7, a1, a2, a3, a6);
  if (*(v7 + 240) - *(v7 + 232) == a3 && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v14);
  }

  v24 = a1;
  v51 = a2;
  v25 = *(v7 + 120);
  v26 = *(v7 + 28);
  v27 = *(v7 + 32);
  v50 = v14;
  v28 = *(v12 + 88) + 8 * v14;
  v29 = *(v7 + 40);
  v30 = *(v29 + 200);
  v52 = *(v28 + 32);

  if ((v30 & 1) != 0 || *(v52 + 200) == 1)
  {
    *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v29 = *(v7 + 40);
  }

  v31 = *(v7 + 256);
  sub_1AF5B5880(v29, v24, v51, a3, 0, v7);
  v48 = *(v7 + 256);
  v32 = v48 - v31;
  v49 = v31;
  if (v48 == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  *&v60[0] = v33;
  v34 = *(*(v7 + 40) + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v47 = v7;
    v36 = v34 + 32;

    for (i = 0; i != v35; ++i)
    {
      v38 = v36 + 40 * i;
      if ((*(v38 + 32) & 1) == 0)
      {
        v39 = *(v52 + 24);
        v40 = *(v39 + 16);
        if (v40)
        {
          v41 = (v39 + 32);
          while (*v41 != *v38)
          {
            v41 += 5;
            if (!--v40)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }

    v7 = v47;
  }

  if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v32);
  }

  if (*(v7 + 184))
  {
    v42 = 0;
  }

  else
  {
    v42 = *(v7 + 168);
  }

  v59 = 0;

  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v53 + 1) = v48;
  *&v54 = v42;
  DWORD2(v54) = -1;
  v55 = v49;
  v56 = v48;
  v57 = v49;
  v58 = v48;
  *&v53 = v49;
  if (v32 >= 1)
  {
    do
    {
      sub_1AF6248A8(v50, v26 | (v27 << 32), v25, v12, &v53, sub_1AF5C5E08);
    }

    while ((*(&v53 + 1) - v53) > 0);
  }

  v45 = *(v7 + 192);
  if (v45)
  {
    v46 = *(v7 + 208);
    sub_1AF75D364(v49, v48, v45);
    sub_1AF75D364(v49, v48, v46);
  }
}

uint64_t sub_1AF5C204C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v8 = sub_1AF65A4B4(v7, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v40, v47);

  sub_1AF5C43E8(v47, sub_1AF5C4448);
  sub_1AF5C43E8(&v40, sub_1AF5C4448);
  v9 = *(v3 + 192);
  if (v9 && a2 != a1)
  {
    v10 = *(v3 + 208);
    v11 = a1;
    do
    {
      *(v9 + 8 * (v11 >> 6)) |= 1 << v11;
      ++v11;
    }

    while (a2 != v11);
    v12 = a1;
    do
    {
      *(v10 + 8 * (v12 >> 6)) &= (-1 << v12) - 1;
      ++v12;
    }

    while (a2 != v12);
  }

  sub_1AF705690(a1, a2);
  if (a2 - a1 == *(v3 + 240) - *(v3 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v8);
  }

  v14 = *(v3 + 120);
  v15 = *(v3 + 28);
  v16 = *(v3 + 32);
  v38 = v8;
  v17 = *(v6 + 88) + 8 * v8;
  v18 = *(v3 + 40);
  v19 = *(v18 + 200);
  v39 = *(v17 + 32);

  if ((v19 & 1) != 0 || *(v39 + 200) == 1)
  {
    *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v18 = *(v3 + 40);
  }

  v20 = *(v3 + 256);
  sub_1AF5B4FCC(v18, a1, a2, 0, v3);
  v36 = *(v3 + 256);
  v21 = v36 - v20;
  v37 = v20;
  if (v36 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  *&v47[0] = v22;
  v23 = *(*(v3 + 40) + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + 32;

    for (i = 0; i != v24; ++i)
    {
      v27 = v25 + 40 * i;
      if ((*(v27 + 32) & 1) == 0)
      {
        v28 = *(v39 + 24);
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = (v28 + 32);
          while (*v30 != *v27)
          {
            v30 += 5;
            if (!--v29)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }
  }

  if (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v3 + 72) * v21);
  }

  if (*(v3 + 184))
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v3 + 168);
  }

  v46 = 0;

  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v40 + 1) = v36;
  *&v41 = v31;
  DWORD2(v41) = -1;
  v42 = v37;
  v43 = v36;
  v44 = v37;
  v45 = v36;
  *&v40 = v37;
  if (v21 >= 1)
  {
    do
    {
      sub_1AF6248A8(v38, v15 | (v16 << 32), v14, v6, &v40, sub_1AF5C5E08);
    }

    while ((*(&v40 + 1) - v40) > 0);
  }

  v34 = *(v3 + 192);
  if (v34)
  {
    v35 = *(v3 + 208);
    sub_1AF75D364(v37, v36, v34);
    sub_1AF75D364(v37, v36, v35);
  }
}

uint64_t sub_1AF5C2558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v61 = 0;
  memset(v60, 0, sizeof(v60));
  v14 = sub_1AF65A4B4(v13, &type metadata for TextureLoadPolicy, &off_1F2543D30, 0, 0, &v53, v60);

  sub_1AF5C43E8(v60, sub_1AF5C4448);
  sub_1AF5C43E8(&v53, sub_1AF5C4448);
  v15 = *(v7 + 192);
  if (v15 && a3)
  {
    v16 = *(v7 + 208);
    v17 = a1;
    v18 = a3;
    do
    {
      v19 = *v17++;
      *(v15 + 8 * (v19 >> 6)) |= 1 << v19;
      --v18;
    }

    while (v18);
    v20 = a1;
    v21 = a3;
    do
    {
      v22 = *v20++;
      *(v16 + 8 * (v22 >> 6)) &= (-1 << v22) - 1;
      --v21;
    }

    while (v21);
  }

  sub_1AF5C3B0C(*(v7 + 40), v7, a1, a2, a3, a6);
  if (*(v7 + 240) - *(v7 + 232) == a3 && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v14);
  }

  v24 = a1;
  v51 = a2;
  v25 = *(v7 + 120);
  v26 = *(v7 + 28);
  v27 = *(v7 + 32);
  v50 = v14;
  v28 = *(v12 + 88) + 8 * v14;
  v29 = *(v7 + 40);
  v30 = *(v29 + 200);
  v52 = *(v28 + 32);

  if ((v30 & 1) != 0 || *(v52 + 200) == 1)
  {
    *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v29 = *(v7 + 40);
  }

  v31 = *(v7 + 256);
  sub_1AF5B5880(v29, v24, v51, a3, 0, v7);
  v48 = *(v7 + 256);
  v32 = v48 - v31;
  v49 = v31;
  if (v48 == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  *&v60[0] = v33;
  v34 = *(*(v7 + 40) + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v47 = v7;
    v36 = v34 + 32;

    for (i = 0; i != v35; ++i)
    {
      v38 = v36 + 40 * i;
      if ((*(v38 + 32) & 1) == 0)
      {
        v39 = *(v52 + 24);
        v40 = *(v39 + 16);
        if (v40)
        {
          v41 = (v39 + 32);
          while (*v41 != *v38)
          {
            v41 += 5;
            if (!--v40)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }

    v7 = v47;
  }

  if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v32);
  }

  if (*(v7 + 184))
  {
    v42 = 0;
  }

  else
  {
    v42 = *(v7 + 168);
  }

  v59 = 0;

  MEMORY[0x1EEE9AC00](v43, v44);
  *(&v53 + 1) = v48;
  *&v54 = v42;
  DWORD2(v54) = -1;
  v55 = v49;
  v56 = v48;
  v57 = v49;
  v58 = v48;
  *&v53 = v49;
  if (v32 >= 1)
  {
    do
    {
      sub_1AF6248A8(v50, v26 | (v27 << 32), v25, v12, &v53, sub_1AF5C5E08);
    }

    while ((*(&v53 + 1) - v53) > 0);
  }

  v45 = *(v7 + 192);
  if (v45)
  {
    v46 = *(v7 + 208);
    sub_1AF75D364(v49, v48, v45);
    sub_1AF75D364(v49, v48, v46);
  }
}

uint64_t sub_1AF5C2A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v8 = sub_1AF65A4B4(v7, &type metadata for TextureLoadPolicy, &off_1F2543D30, 0, 0, &v40, v47);

  sub_1AF5C43E8(v47, sub_1AF5C4448);
  sub_1AF5C43E8(&v40, sub_1AF5C4448);
  v9 = *(v3 + 192);
  if (v9 && a2 != a1)
  {
    v10 = *(v3 + 208);
    v11 = a1;
    do
    {
      *(v9 + 8 * (v11 >> 6)) |= 1 << v11;
      ++v11;
    }

    while (a2 != v11);
    v12 = a1;
    do
    {
      *(v10 + 8 * (v12 >> 6)) &= (-1 << v12) - 1;
      ++v12;
    }

    while (a2 != v12);
  }

  sub_1AF705690(a1, a2);
  if (a2 - a1 == *(v3 + 240) - *(v3 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v8);
  }

  v14 = *(v3 + 120);
  v15 = *(v3 + 28);
  v16 = *(v3 + 32);
  v38 = v8;
  v17 = *(v6 + 88) + 8 * v8;
  v18 = *(v3 + 40);
  v19 = *(v18 + 200);
  v39 = *(v17 + 32);

  if ((v19 & 1) != 0 || *(v39 + 200) == 1)
  {
    *(v6 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v18 = *(v3 + 40);
  }

  v20 = *(v3 + 256);
  sub_1AF5B4FCC(v18, a1, a2, 0, v3);
  v36 = *(v3 + 256);
  v21 = v36 - v20;
  v37 = v20;
  if (v36 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  *&v47[0] = v22;
  v23 = *(*(v3 + 40) + 24);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = v23 + 32;

    for (i = 0; i != v24; ++i)
    {
      v27 = v25 + 40 * i;
      if ((*(v27 + 32) & 1) == 0)
      {
        v28 = *(v39 + 24);
        v29 = *(v28 + 16);
        if (v29)
        {
          v30 = (v28 + 32);
          while (*v30 != *v27)
          {
            v30 += 5;
            if (!--v29)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }
  }

  if (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v6 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v3 + 72) * v21);
  }

  if (*(v3 + 184))
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v3 + 168);
  }

  v46 = 0;

  MEMORY[0x1EEE9AC00](v32, v33);
  *(&v40 + 1) = v36;
  *&v41 = v31;
  DWORD2(v41) = -1;
  v42 = v37;
  v43 = v36;
  v44 = v37;
  v45 = v36;
  *&v40 = v37;
  if (v21 >= 1)
  {
    do
    {
      sub_1AF6248A8(v38, v15 | (v16 << 32), v14, v6, &v40, sub_1AF5C5E08);
    }

    while ((*(&v40 + 1) - v40) > 0);
  }

  v34 = *(v3 + 192);
  if (v34)
  {
    v35 = *(v3 + 208);
    sub_1AF75D364(v37, v36, v34);
    sub_1AF75D364(v37, v36, v35);
  }
}

uint64_t sub_1AF5C2FD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v69 = a4;
  v70 = a1;
  v17 = *(v9 + 16);
  v18 = *(v9 + 24);

  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v82 = 0;
  memset(v81, 0, sizeof(v81));
  v19 = sub_1AF65A4B4(v18, a7, a8, 0, 0, &v74, v81);

  sub_1AF5C43E8(v81, sub_1AF5C4448);
  sub_1AF5C43E8(&v74, sub_1AF5C4448);
  v20 = *(v12 + 192);
  if (v20 && a3)
  {
    v21 = *(v12 + 208);
    v22 = v70;
    v23 = a3;
    do
    {
      v24 = *v22++;
      *(v20 + 8 * (v24 >> 6)) |= 1 << v24;
      --v23;
    }

    while (v23);
    v25 = v70;
    v26 = a3;
    do
    {
      v27 = *v25++;
      *(v21 + 8 * (v27 >> 6)) &= (-1 << v27) - 1;
      --v26;
    }

    while (v26);
  }

  v28 = *(v12 + 40);
  v67 = a2;
  sub_1AF5C3B0C(v28, v12, v70, a2, a3, a6);
  if (*(v12 + 240) - *(v12 + 232) == a3 && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v19);
  }

  v64 = a7;
  v65 = a8;
  v66 = a6;
  v30 = *(v12 + 120);
  v31 = *(v12 + 28);
  v32 = *(v12 + 32);
  if (v69)
  {
    v33 = v69 + 8 * a5;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v17 + 88);
  v68 = v19;
  v35 = v34 + 8 * v19;
  v36 = *(v12 + 40);
  v37 = v36[200];
  v72 = *(v35 + 32);

  if ((v37 & 1) != 0 || *(v72 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v36 = *(v12 + 40);
  }

  v38 = v36[212];
  v63 = v33;
  if (v38)
  {
    v62 = 0;
  }

  else
  {
    v62 = *(v72 + 212);
  }

  v61 = v36[208];
  v71 = *(v12 + 128);
  v39 = *(v12 + 256);
  sub_1AF5B5880(v36, v70, v67, a3, 0, v12);
  v40 = *(v12 + 256);
  v41 = v40 - v39;
  v67 = v39;
  if (v40 == v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39;
  }

  v70 = v42;
  *&v81[0] = v42;
  v43 = *(*(v12 + 40) + 24);
  v44 = *(v43 + 16);
  if (v44)
  {
    v59 = v40;
    v60 = v12;
    v45 = v43 + 32;
    v58[1] = v43;

    for (i = 0; i != v44; ++i)
    {
      v47 = v45 + 40 * i;
      if ((*(v47 + 32) & 1) == 0)
      {
        v48 = *(v72 + 24);
        v49 = *(v48 + 16);
        if (v49)
        {
          v50 = (v48 + 32);
          while (*v50 != *v47)
          {
            v50 += 5;
            if (!--v49)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
LABEL_24:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v60;
    v40 = v59;
  }

  v51 = v67;
  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v41);
  }

  if (*(v12 + 184))
  {
    v52 = 0;
  }

  else
  {
    v52 = *(v12 + 168);
  }

  v80 = 0;

  MEMORY[0x1EEE9AC00](v53, v54);
  *(&v74 + 1) = v40;
  *&v75 = v52;
  DWORD2(v75) = -1;
  v76 = v67;
  v77 = v40;
  v78 = v67;
  v79 = v40;
  *&v74 = v67;
  if (v41 < 1)
  {
  }

  else
  {
    v71 = v58;
    v55 = v68;
    do
    {
      v73 = v32;
      sub_1AF6248A8(v55, v31 | (v32 << 32), v30, v17, &v74, a9);
    }

    while ((*(&v74 + 1) - v74) > 0);
  }

  v56 = *(v12 + 192);
  if (v56)
  {
    v57 = *(v12 + 208);
    sub_1AF75D364(v51, v40, v56);
    sub_1AF75D364(v51, v40, v57);
  }
}

uint64_t sub_1AF5C3538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v15 = *(v8 + 16);
  v16 = *(v8 + 24);

  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v58 = 0;
  memset(v57, 0, sizeof(v57));
  v17 = sub_1AF65A4B4(v16, a6, a7, 0, 0, &v50, v57);

  sub_1AF5C43E8(v57, sub_1AF5C4448);
  sub_1AF5C43E8(&v50, sub_1AF5C4448);
  v18 = *(v12 + 192);
  if (v18 && a2 != a1)
  {
    v19 = *(v12 + 208);
    v20 = a1;
    do
    {
      *(v18 + 8 * (v20 >> 6)) |= 1 << v20;
      ++v20;
    }

    while (a2 != v20);
    v21 = a1;
    do
    {
      *(v19 + 8 * (v21 >> 6)) &= (-1 << v21) - 1;
      ++v21;
    }

    while (a2 != v21);
  }

  sub_1AF705690(a1, a2);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC() & 1) != 0)
  {
    return sub_1AF649D40(v17);
  }

  v23 = *(v12 + 120);
  v24 = *(v12 + 28);
  v25 = *(v12 + 32);
  v48 = v17;
  v26 = *(*(v15 + 88) + 8 * v17 + 32);
  v27 = *(v12 + 40);
  v28 = *(v27 + 200);
  v49 = v26;

  if ((v28 & 1) != 0 || *(v49 + 200) == 1)
  {
    *(v15 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v27 = *(v12 + 40);
  }

  v29 = *(v12 + 256);
  sub_1AF5B4FCC(v27, a1, a2, 0, v12);
  v47 = *(v12 + 256);
  v30 = v47 - v29;
  v46 = v29;
  if (v47 == v29)
  {
    v31 = 0;
  }

  else
  {
    v31 = v29;
  }

  *&v57[0] = v31;
  v32 = *(*(v12 + 40) + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v45 = v12;
    v34 = v32 + 32;

    for (i = 0; i != v33; ++i)
    {
      v36 = v34 + 40 * i;
      if ((*(v36 + 32) & 1) == 0)
      {
        v37 = *(v49 + 24);
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = (v37 + 32);
          while (*v39 != *v36)
          {
            v39 += 5;
            if (!--v38)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8();
        }
      }
    }

    v12 = v45;
  }

  if (*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v15 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v30);
  }

  if (*(v12 + 184))
  {
    v40 = 0;
  }

  else
  {
    v40 = *(v12 + 168);
  }

  v56 = 0;

  MEMORY[0x1EEE9AC00](v41, v42);
  DWORD2(v51) = -1;
  v52 = v46;
  v53 = v47;
  v54 = v46;
  v55 = v47;
  *&v50 = v46;
  *(&v50 + 1) = v47;
  *&v51 = v40;
  if (v30 >= 1)
  {
    do
    {
      sub_1AF6248A8(v48, v24 | (v25 << 32), v23, v15, &v50, a8);
    }

    while ((*(&v50 + 1) - v50) > 0);
  }

  v43 = *(v12 + 192);
  if (v43)
  {
    v44 = *(v12 + 208);
    sub_1AF75D364(v46, v47, v43);
    sub_1AF75D364(v46, v47, v44);
  }
}

uint64_t *sub_1AF5C3A64(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    v9 = result;
    v10 = a3;
    do
    {
      v11 = *v9++;
      *(a7 + 8 * (v11 >> 6)) |= 1 << v11;
      --v10;
    }

    while (v10);
  }

  if (a6 == 3 && a4 == 2 && !a5)
  {
    for (; a3; --a3)
    {
      v12 = *result++;
      *(a9 + 8 * (v12 >> 6)) |= 1 << v12;
    }
  }

  else
  {
    for (; a3; --a3)
    {
      v13 = *result++;
      *(a9 + 8 * (v13 >> 6)) &= (-1 << v13) - 1;
    }
  }

  return result;
}

uint64_t sub_1AF5C3B0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  if (*(result + 213) == 1)
  {
    v6 = a5;
    v9 = *(a2 + 48);
    v10 = (v9 + 32);
    v11 = *(v9 + 16) + 1;
    while (--v11)
    {
      v12 = v10 + 5;
      v13 = *v10;
      v10 += 5;
      if (v13 == &type metadata for PropagateDirtiness)
      {
        v11 = *(v12 - 2);
        break;
      }
    }

    if (a5)
    {
      v14 = *(a2 + 128) + v11;
      while (1)
      {
        v16 = *a3++;
        v15 = v16;

        if (*(a2 + 184))
        {
          break;
        }

        v18 = *(*(a2 + 168) + 4 * v15);
        v19 = (v14 + 8 * v15);
        v20 = *(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v18 + 8);

        v21 = *v19;
        v22 = v19[1];
        if (v21 != -1 || v22 != 0)
        {
          result = sub_1AF70D248(v24, v18 | (v20 << 32), v21 | (v22 << 32));
        }

        if (!--v6)
        {
          return result;
        }
      }

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

void sub_1AF5C3C90()
{
  if (!qword_1ED725EA0)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED725EA0);
    }
  }
}

uint64_t sub_1AF5C3CE0@<X0>(unsigned __int8 *a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a5 + 41;
  v30 = *(*a5 + 24);
  v21 = *(*a5 + 26);
  v29 = *(*a5 + 28);
  v22 = *(*a5 + 30);
  v9 = *(*a5 + 30) / 0x18uLL;
  v25 = *(a5 + 12);
  v26 = *(a5 + 8);
  v27 = *(a5 + 32);
  v24 = *(a5 + 16);
  v23 = *(a5 + 24);
  v10 = 16 * a4;
  v11 = a2 + 16 * a4 + 7;
  v28 = v11 & 0xFFFFFFFFFFFFFFF8;
  v12 = 16 * (v21 >> 4);
  v13 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for QueryBuffer();
  v14 = swift_allocObject();
  v18 = a4;
  v19 = sub_1AF6B7B38(a3, a4, a1, a2, (v8 + v30), v21 >> 4, v8 + v29, v9);
  result = sub_1AF6B7AA0(a1, a2, a3, a4);
  *(v14 + 16) = 0;
  *(v14 + 18) = v10;
  *(v14 + 20) = v10;
  *(v14 + 22) = a2;
  *(v14 + 24) = v28;
  *(v14 + 26) = v12;
  *(v14 + 28) = v13;
  *(v14 + 30) = 24 * v9;
  *(v14 + 32) = v19;
  v16 = v14 + 41;
  *(v14 + 40) = result & 1;
  if (v10)
  {
    v17 = v10 >> 4;
    if (v10 >> 4 >= v18)
    {
      v17 = v18;
    }

    result = memcpy((v14 + 41), a3, 16 * v17);
  }

  if (a2)
  {
    result = memcpy((v16 + v10), a1, a2);
  }

  if (v21 > 0xF)
  {
    result = memcpy((v16 + v28), (v8 + v30), 16 * (v21 >> 4));
  }

  if (v22 > 0x17)
  {
    result = memcpy((v16 + v13), (v8 + v29), 24 * v9);
  }

  *a6 = v14;
  *(a6 + 8) = v26;
  *(a6 + 12) = v25;
  *(a6 + 16) = v24;
  *(a6 + 24) = v23;
  *(a6 + 32) = v27;
  return result;
}

uint64_t sub_1AF5C3F28(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v67[7] = a4;
  v6 = a1[11];
  v5 = a1[12];
  v7 = a1[13];
  v9 = a1[1];
  v8 = a1[2];

  v10 = sub_1AF64B110(&type metadata for Skybox, &off_1F25304A0, v6, v5, v7, v8);
  v11 = sub_1AF64B110(&type metadata for IBLGenerator, &off_1F252A618, v6, v5, v7, v8);
  v12 = v58;
  sub_1AF649C6C(v9[5], &type metadata for IBLRuntime, &v63);
  if (v63 == 1)
  {
    v57 = v58;
    a2[9] = &type metadata for IBLRuntime;
    a2[10] = &off_1F252A6C8;
    v13 = sub_1AF64B110(&type metadata for IBLRuntime, &off_1F252A6C8, v6, v5, v7, v8);
    v14 = v13;
    if (v6)
    {
      if (v7)
      {
        v59 = v8;
        v15 = a1[3];
        v16 = *a1;
        do
        {
          v17 = *v6++;
          v64[0] = v16;
          v64[1] = v9;
          v64[2] = v59;
          v64[3] = v15;
          v64[4] = v17;
          a3(v64, v10, v11, v14);
          if (v12)
          {
            break;
          }

          v14 += 16;
          v11 += 4;
          ++v15;
          v10 += 32;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v60 = v8;
      v23 = a1[6];
      v24 = a1[7];
      v25 = v10 + 32 * v23;
      v26 = a1[3];
      v27 = v11 + 4 * v23;
      v28 = v13 + 16 * v23;
      do
      {
        if (v24 == v23)
        {
          break;
        }

        v29 = v23 + 1;
        v65[0] = *a1;
        v65[1] = v9;
        v65[2] = v60;
        v65[3] = v26;
        v65[4] = v23;
        a3(v65, v25, v27, v28);
        v25 += 32;
        ++v26;
        v27 += 4;
        v28 += 16;
        v23 = v29;
      }

      while (!v57);
    }
  }

  v18 = v8;
  v19 = v7;
  if (!v6)
  {
    v19 = a1[7] - a1[6];
  }

  v55 = 16 * v19;
  v20 = ecs_stack_allocator_allocate(a2[4], 16 * v19, 4);
  v21 = v5;
  if (v19)
  {
    if (v19 > 0x1B)
    {
      v22 = 0;
      v30 = 2 * (v19 - 1);
      if (&v20[v30] >= v20 && &v20[v30] + 4 >= v20 + 4 && &v20[v30 + 1] >= v20 + 1 && &v20[v30 + 1] + 4 >= v20 + 12 && !((v19 - 1) >> 60))
      {
        v22 = v19 & 0x1FFFFFFFFFFFFFF8;
        v31 = v20 + 8;
        *&v32 = 0xFFFFFFFFLL;
        *(&v32 + 1) = 0xFFFFFFFFLL;
        v33 = v19 & 0x1FFFFFFFFFFFFFF8;
        do
        {
          *(v31 - 2) = v32;
          *(v31 - 1) = v32;
          *(v31 - 4) = v32;
          *(v31 - 3) = v32;
          v31[2] = v32;
          v31[3] = v32;
          *v31 = v32;
          v31[1] = v32;
          v31 += 8;
          v33 -= 8;
        }

        while (v33);
        if (v19 == v22)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v34 = v19 - v22;
    v35 = &v20[2 * v22];
    *&v36 = 0xFFFFFFFFLL;
    *(&v36 + 1) = 0xFFFFFFFFLL;
    do
    {
      *v35++ = v36;
      --v34;
    }

    while (v34);
  }

LABEL_27:
  v53 = v19;
  v54 = v20;
  v61 = v18;
  v37 = 0;
  if (v6)
  {
    v38 = v20;
    while (v7 != v37)
    {
      v39 = v6[v37];
      v40 = v37 + 1;
      v41 = v37 + a1[3];
      v66[0] = *a1;
      v66[1] = v9;
      v66[2] = v61;
      v66[3] = v41;
      v66[4] = v39;
      a3(v66, v10, v11, v38);
      v21 = v5;
      v10 += 32;
      v11 += 4;
      v38 += 2;
      v37 = v40;
      if (v12)
      {
        goto LABEL_35;
      }
    }

    v50 = v54;
    v51 = a2;
    sub_1AF5B8104(v6, v21, v7, v54, v53, a2, &type metadata for IBLRuntime, &off_1F252A6C8, sub_1AF5C44B0);
  }

  else
  {
    v42 = a1[6];
    v43 = v10 + 32 * v42;
    v44 = v11 + 4 * v42;
    v45 = v42 - a1[7];
    v46 = v20;
    while (v45 + v37)
    {
      v47 = v42 + v37;
      v48 = v37 + 1;
      v49 = v37 + a1[3];
      v67[0] = *a1;
      v67[1] = v9;
      v67[2] = v61;
      v67[3] = v49;
      v67[4] = v47;
      a3(v67, v43, v44, v46);
      v46 += 2;
      v43 += 32;
      v44 += 4;
      v37 = v48;
      if (v12)
      {
LABEL_35:
        ecs_stack_allocator_deallocate(a2[4], v54, v55);
      }
    }

    v51 = a2;
    v50 = v54;
    sub_1AF5B85D4(v9[29], v9[30], v54, v19, a2, &type metadata for IBLRuntime, &off_1F252A6C8, sub_1AF5C5E08);
  }

  ecs_stack_allocator_deallocate(v51[4], v50, v55);
}

uint64_t sub_1AF5C43E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF5C4448()
{
  if (!qword_1ED72C1C0)
  {
    sub_1AF5C5358(255, &qword_1ED72C1D0);
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED72C1C0);
    }
  }
}

float sub_1AF5C44EC(void *a1)
{
  sub_1AF5C5A00(0, &qword_1EB63BFD0, sub_1AF5C59AC, &type metadata for IBLGenerator.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5C59AC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11 = sub_1AFDFE6C8();
    (*(v6 + 8))(v9, v5);
    if ((v11 & 0x100000000) != 0)
    {
      v2 = 1.0;
    }

    else
    {
      v2 = *&v11;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF5C46A8(void *a1)
{
  sub_1AF5C5A00(0, &qword_1EB63BFA8, sub_1AF5C5958, &type metadata for IBLRuntime.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF5C5958();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v9 = v13;
    v12 = 1;
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

void sub_1AF5C48B4(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v82 = *MEMORY[0x1E69E9840];
  LODWORD(v72) = 256;
  v61 = *(a2 + 16);
  v9 = CFXGPUDeviceGetMTLDevice(v61);
  swift_getObjectType();
  v10 = sub_1AF47625C();
  swift_unknownObjectRelease();
  v11 = *a3;
  v12 = *(a3 + 1);
  if (v10)
  {
    sub_1AFDFF308();
    v13 = v12;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v14 = sub_1AFDFF2E8();
    *&v77 = 0xD000000000000022;
    *(&v77 + 1) = 0x80000001AFF2C280;
    v78 = 0uLL;
    *&v79 = MEMORY[0x1E69E7CC0];
    *(&v79 + 1) = v14;
    v15 = sub_1AF73BD84(&v77, 0, v11, v12);
    v17 = v16;

    if (!v15)
    {
      return;
    }

    swift_getObjectType();
    [a1 setBytes:&v72 length:4 atIndex:0];
    v18 = a4;
    [a1 setTexture:a4 atIndex:0];
    [a1 setTexture:a5 atIndex:1];
    sub_1AF6F4400(v15, a5, 0);
  }

  else
  {
    v60 = a3;
    sub_1AFDFF308();
    v34 = v12;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v79 = v69;
    v80 = v70;
    v81 = v71;
    v77 = v67;
    v78 = v68;
    v35 = sub_1AFDFF2E8();
    *&v67 = 0xD00000000000002ELL;
    *(&v67 + 1) = 0x80000001AFF2C1F0;
    v68 = 0uLL;
    *&v69 = MEMORY[0x1E69E7CC0];
    *(&v69 + 1) = v35;
    v36 = sub_1AF73BD84(&v67, 0, v11, v12);
    v38 = v37;

    if (!v36)
    {
      return;
    }

    swift_getObjectType();
    [a1 setBytes:&v72 length:4 atIndex:0];
    v18 = a4;
    [a1 setTexture:a4 atIndex:0];
    swift_getObjectType();
    v39 = sub_1AF4736A0();
    if (!v39)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v39 atIndex:1];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v40 = sub_1AF4736A0();
    if (!v40)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v40 atIndex:2];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v41 = sub_1AF4736A0();
    if (!v41)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v41 atIndex:3];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v42 = sub_1AF4736A0();
    if (!v42)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v42 atIndex:4];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v43 = sub_1AF4736A0();
    if (!v43)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v43 atIndex:5];
    swift_unknownObjectRelease();
    swift_getObjectType();
    v44 = sub_1AF4736A0();
    if (!v44)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v44 atIndex:6];
    swift_unknownObjectRelease();
    sub_1AF6F4400(v36, a5, 0);
  }

  swift_unknownObjectRelease();
  swift_getObjectType();
  [a1 setTexture:v18 atIndex:0];
  v19 = CFXGPUDeviceGetMTLDevice(v61);
  swift_getObjectType();
  v20 = sub_1AF47625C();
  swift_unknownObjectRelease();
  v21 = *a3;
  v22 = *(a3 + 1);
  if (v20)
  {
    sub_1AFDFF308();
    v23 = v22;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v24 = sub_1AFDFF2E8();
    *&v72 = 0xD000000000000023;
    *(&v72 + 1) = 0x80000001AFF2C250;
    v73 = 0;
    v74 = 0;
    v75 = MEMORY[0x1E69E7CC0];
    v76 = v24;
    v25 = sub_1AF73BD84(&v72, 0, v21, v22);
    v27 = v26;

    if (!v25)
    {
      return;
    }

    v66 = 0;
    swift_getObjectType();
    v28 = [a6 mipmapLevelCount];
    if (v28)
    {
      v29 = v28;
      v30 = 0;
      do
      {
        [a6 pixelFormat];
        v31 = (v30 + 1);
        v32 = sub_1AFDFD9B8();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        [a1 setTexture:v32 atIndex:1];
        v66 = v30 | 0x10000000000;
        [a1 setBytes:&v66 length:8 atIndex:0];
        sub_1AF6F4400(v25, v33, 0);
        swift_unknownObjectRelease();
        ++v30;
      }

      while (v31 != v29);
    }

    goto LABEL_32;
  }

  sub_1AFDFF308();
  v45 = v22;

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v46 = sub_1AFDFF2E8();
  *&v72 = 0xD00000000000002FLL;
  *(&v72 + 1) = 0x80000001AFF2C220;
  v73 = 0;
  v74 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  v76 = v46;
  v47 = sub_1AF73BD84(&v72, 0, v21, v22);
  v49 = v48;

  v64 = v47;
  if (!v47)
  {
    return;
  }

  v66 = 0;
  swift_getObjectType();
  v62 = [a6 mipmapLevelCount];
  if (v62)
  {
    v50 = 0;
    do
    {
      v52 = (v50 + 1);
      [a6 pixelFormat];
      v51 = sub_1AFDFD9B8();
      if (!v51)
      {
        goto LABEL_24;
      }

      [a1 setTexture:v51 atIndex:1];
      [a6 pixelFormat];
      v53 = sub_1AFDFD9B8();
      if (!v53)
      {
        goto LABEL_24;
      }

      v54 = v53;
      [a1 setTexture:v53 atIndex:2];
      swift_unknownObjectRelease();
      [a6 pixelFormat];
      v55 = sub_1AFDFD9B8();
      if (v55)
      {
        v51 = v55;
        [a1 setTexture:v55 atIndex:3];
        swift_unknownObjectRelease();
        [a6 pixelFormat];
        v56 = sub_1AFDFD9B8();
        if (!v56)
        {
          goto LABEL_24;
        }

        v54 = v56;
        [a1 setTexture:v56 atIndex:4];
        swift_unknownObjectRelease();
        [a6 pixelFormat];
        v57 = sub_1AFDFD9B8();
        if (v57)
        {
          v51 = v57;
          [a1 setTexture:v57 atIndex:5];
          swift_unknownObjectRelease();
          [a6 pixelFormat];
          v58 = sub_1AFDFD9B8();
          if (v58)
          {
            v59 = v58;
            [a1 setTexture:v58 atIndex:6];
            swift_unknownObjectRelease();
            v51 = v59;
          }

          goto LABEL_24;
        }
      }

      v51 = v54;
LABEL_24:
      v66 = v50 | 0x10000000000;
      [a1 setBytes:&v66 length:8 atIndex:0];
      sub_1AF6F4400(v64, v51, 0);
      swift_unknownObjectRelease();
      ++v50;
    }

    while (v62 != v52);
  }

LABEL_32:
  swift_unknownObjectRelease();
}

void sub_1AF5C52A8()
{
  if (!qword_1ED7269A0)
  {
    sub_1AF5C5300();
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED7269A0);
    }
  }
}

unint64_t sub_1AF5C5300()
{
  result = qword_1ED7270C0;
  if (!qword_1ED7270C0)
  {
    sub_1AF5C5358(255, &qword_1ED7270D0);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED7270C0);
  }

  return result;
}

uint64_t sub_1AF5C5358(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AF5C53B4()
{
  if (!qword_1ED7287C0)
  {
    v0 = MEMORY[0x1E69E74A8];
    sub_1AF5C5A00(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5C5554(&unk_1ED72F720, &qword_1ED72F6E0, v0);
    v1 = type metadata accessor for BasicAnimationRuntime();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7287C0);
    }
  }
}

void sub_1AF5C5484()
{
  if (!qword_1ED7287D0)
  {
    v0 = MEMORY[0x1E69E7450];
    sub_1AF5C5A00(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5C5554(&qword_1ED72F760, &qword_1ED72F740, v0);
    v1 = type metadata accessor for BasicAnimationRuntime();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7287D0);
    }
  }
}

uint64_t sub_1AF5C5554(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1AF5C5A00(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF5C55B8()
{
  if (!qword_1ED7287D8)
  {
    v0 = MEMORY[0x1E69E7428];
    sub_1AF5C5A00(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF5C5554(&qword_1ED72F7A0, &unk_1ED72F770, v0);
    v1 = type metadata accessor for BasicAnimationRuntime();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7287D8);
    }
  }
}

void sub_1AF5C5688()
{
  if (!qword_1EB63BF88)
  {
    v0 = MEMORY[0x1E69E74A8];
    sub_1AF5C5A00(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    sub_1AF5C5554(&unk_1ED72F720, &qword_1ED72F6E0, v0);
    v1 = type metadata accessor for KeyframeAnimationRuntime();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63BF88);
    }
  }
}

void sub_1AF5C5758()
{
  if (!qword_1EB63BF90)
  {
    v0 = MEMORY[0x1E69E7450];
    sub_1AF5C5A00(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    sub_1AF5C5554(&qword_1ED72F760, &qword_1ED72F740, v0);
    v1 = type metadata accessor for KeyframeAnimationRuntime();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63BF90);
    }
  }
}

void sub_1AF5C5828()
{
  if (!qword_1EB63BF98)
  {
    v0 = MEMORY[0x1E69E7428];
    sub_1AF5C5A00(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AF5C5554(&qword_1ED72F7A0, &unk_1ED72F770, v0);
    v1 = type metadata accessor for KeyframeAnimationRuntime();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB63BF98);
    }
  }
}

void sub_1AF5C58F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], &off_1F2532E98);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF5C5958()
{
  result = qword_1EB63BFB0;
  if (!qword_1EB63BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BFB0);
  }

  return result;
}

unint64_t sub_1AF5C59AC()
{
  result = qword_1EB63BFD8;
  if (!qword_1EB63BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BFD8);
  }

  return result;
}

void sub_1AF5C5A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AF5C5A68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ScriptStateRestoration();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF5C5B60()
{
  result = qword_1EB63BFE8;
  if (!qword_1EB63BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BFE8);
  }

  return result;
}

unint64_t sub_1AF5C5BB8()
{
  result = qword_1EB63BFF0;
  if (!qword_1EB63BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BFF0);
  }

  return result;
}

unint64_t sub_1AF5C5C10()
{
  result = qword_1EB63BFF8;
  if (!qword_1EB63BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63BFF8);
  }

  return result;
}

unint64_t sub_1AF5C5C68()
{
  result = qword_1EB63C000;
  if (!qword_1EB63C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C000);
  }

  return result;
}

unint64_t sub_1AF5C5CC0()
{
  result = qword_1EB63C008;
  if (!qword_1EB63C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C008);
  }

  return result;
}

unint64_t sub_1AF5C5D18()
{
  result = qword_1EB63C010;
  if (!qword_1EB63C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C010);
  }

  return result;
}

double sub_1AF5C5D6C(float32x4_t _Q0)
{
  _S4 = _Q0.u32[1];
  _S5 = _Q0.u32[2];
  __asm { FMLS            S3, S5, V0.S[2] }

  _S6 = _Q0.u32[3];
  __asm { FMLA            S3, S6, V0.S[3] }

  v10 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  __asm
  {
    FMLA            S2, S4, V0.S[1]
    FMLA            S2, S6, V0.S[3]
    FMLA            S2, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
  }

  *(&_D3 + 1) = (v10 + (_Q0.f32[0] * _Q0.f32[1])) + (v10 + (_Q0.f32[0] * _Q0.f32[1]));
  __asm { FMLS            S5, S4, V0.S[1] }

  return _D3;
}

double sub_1AF5C5E24@<D0>(void *a1@<X0>, void (*a2)(_OWORD *__return_ptr, void *, void, uint64_t *, char *)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v6 = a1;
  v8 = *v3;
  v9 = *(*v3 + 26);
  if (v9 > 0xF)
  {
    v10 = a1[2];
    v11 = sub_1AFC0592C((v8 + *(v8 + 24) + 41), v9 >> 4);
    if (v10)
    {
      *&v16[0] = v11;

      sub_1AF48FC80(v12);
      v6 = *&v16[0];
    }

    else
    {
      v6 = v11;
    }
  }

  else
  {
  }

  a2(v16, v6 + 4, v6[2], v5, v15);

  result = *v16;
  v14 = v16[1];
  *a3 = v16[0];
  *(a3 + 16) = v14;
  *(a3 + 32) = v17;
  return result;
}

double sub_1AF5C5EFC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = *v2;
  v7 = *(*v2 + 26);
  if (v7 > 0xF)
  {
    v8 = a1[2];
    v9 = sub_1AFC0592C((v6 + *(v6 + 24) + 41), v7 >> 4);
    if (v8)
    {
      *&v13[0] = v9;

      sub_1AF48FC80(v10);
      v4 = *&v13[0];
    }

    else
    {
      v4 = v9;
    }
  }

  else
  {
  }

  sub_1AF5D0980(v4 + 4, v4[2], v3, v13);

  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  return result;
}

double sub_1AF5C5FC4@<D0>(_OWORD *a1@<X8>)
{
  result = 524288.135;
  *a1 = xmmword_1AFE62A60;
  return result;
}

uint64_t sub_1AF5C5FE0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5C60A4()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5C6154()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5C6214@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5D0B28();
  *a1 = result;
  return result;
}

void sub_1AF5C6244(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x7469736E65746E69;
  v4 = 0xE500000000000000;
  v5 = 0x7261654E7ALL;
  if (*v1 != 2)
  {
    v5 = 1918977658;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6152776F64616873;
    v2 = 0xEC00000073756964;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1AF5C62C4()
{
  v1 = 0x7469736E65746E69;
  v2 = 0x7261654E7ALL;
  if (*v0 != 2)
  {
    v2 = 1918977658;
  }

  if (*v0)
  {
    v1 = 0x6152776F64616873;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF5C6340@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5D0B28();
  *a1 = result;
  return result;
}

uint64_t sub_1AF5C6368(uint64_t a1)
{
  v2 = sub_1AF5D0E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C63A4(uint64_t a1)
{
  v2 = sub_1AF5D0E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF5C6464@<D0>(_OWORD *a1@<X8>)
{
  result = 524288.138;
  *a1 = xmmword_1AFE62A70;
  return result;
}

uint64_t sub_1AF5C6480()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5C6540()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5C65EC()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5C66A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5D0ADC();
  *a1 = result;
  return result;
}

void sub_1AF5C66D8(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x7469736E65746E69;
  v4 = 0xE500000000000000;
  v5 = 0x7261654E7ALL;
  if (*v1 != 2)
  {
    v5 = 1918977658;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF22AF0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1AF5C6754()
{
  v1 = 0x7469736E65746E69;
  v2 = 0x7261654E7ALL;
  if (*v0 != 2)
  {
    v2 = 1918977658;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1AF5C67CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5D0ADC();
  *a1 = result;
  return result;
}

uint64_t sub_1AF5C67F4(uint64_t a1)
{
  v2 = sub_1AF5D1138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C6830(uint64_t a1)
{
  v2 = sub_1AF5D1138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5C686C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, void (*a5)(void))
{
  sub_1AF5D180C(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3F8();
  v19 = 0;
  sub_1AFDFE8E8();
  if (!v5)
  {
    v18 = 1;
    sub_1AFDFE8E8();
    v17 = 2;
    sub_1AFDFE8E8();
    v16 = 3;
    sub_1AFDFE8E8();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1AF5C6A68@<X0>(uint64_t (*a1)(void)@<X3>, _DWORD *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_1AF5C6AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
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

uint64_t sub_1AF5C6B84(uint64_t a1)
{
  v2 = sub_1AF5D17B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C6BC0(uint64_t a1)
{
  v2 = sub_1AF5D17B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5C6BFC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v15 = a2;
  sub_1AF5D180C(0, &qword_1EB6328B0, sub_1AF5D17B8, &type metadata for AmbientLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D17B8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v15;
  sub_1AFDFE738();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  return result;
}

uint64_t sub_1AF5C6DB4(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB63C048, sub_1AF5D17B8, &type metadata for AmbientLight.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D17B8();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v7, v3);
}

double sub_1AF5C6F30@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE62A80;
  result = 524288.117;
  *(a1 + 16) = 0x412000003C23D70ALL;
  return result;
}

uint64_t sub_1AF5C6F60()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5C705C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5D0B74();
  *a1 = result;
  return result;
}

void sub_1AF5C708C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x7469736E65746E69;
  v5 = 0x676E4172656E6E69;
  v6 = 0xEA0000000000656CLL;
  v7 = 0xE500000000000000;
  v8 = 0x7261654E7ALL;
  if (v2 != 4)
  {
    v8 = 1918977658;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x80000001AFF22AF0;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x676E41726574756FLL;
    v9 = 0xEA0000000000656CLL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AF5C7150()
{
  v1 = *v0;
  v2 = 0x7469736E65746E69;
  v3 = 0x676E4172656E6E69;
  v4 = 0x7261654E7ALL;
  if (v1 != 4)
  {
    v4 = 1918977658;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x676E41726574756FLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AF5C7210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF5D0B74();
  *a1 = result;
  return result;
}

uint64_t sub_1AF5C7238(uint64_t a1)
{
  v2 = sub_1AF5D14A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C7274(uint64_t a1)
{
  v2 = sub_1AF5D14A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5C72B0(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB63C040, sub_1AF5D14A0, &type metadata for SpotLight.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D14A0();
  sub_1AFDFF3F8();
  v16 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v15 = 1;
    sub_1AFDFE8E8();
    v14 = 2;
    sub_1AFDFE8E8();
    v13 = 3;
    sub_1AFDFE8E8();
    v12 = 4;
    sub_1AFDFE8E8();
    v11 = 5;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

double sub_1AF5C74BC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF5D118C(a1, &v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

double sub_1AF5C7518@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 31) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_1AF5C7528@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v53 = *MEMORY[0x1E69E9840];
  v43 = sub_1AF19BBC0(a1);
  v42 = sub_1AF19C46C(a1);
  v10 = sub_1AF19BC08(a1);
  v40 = v11;
  v41 = v10;
  v38 = v13;
  v39 = v12;
  v14 = sub_1AF19C1FC(a1);
  v33 = sub_1AF5D18E4(a2);
  v34 = v15;
  v46 = v17;
  v48 = v16;
  v16.i64[0] = vsubq_f32(v15, vsubq_f32(0, a7)).u64[0];
  v16.f32[2] = v15.f32[2] - (0.0 - a7.f32[2]);
  v16.i32[3] = 0;
  v50 = v16;
  bzero(&__src[2], 0x250uLL);
  *&v18 = vmulq_n_f32(v43, v42 * 0.00011651).u64[0];
  *(&v18 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v42 * 0.00011651, v43, 2));
  __src[0] = v18;
  __src[1] = v50;
  *(&__src[36] + 1) = 1.0 / (v14 * v14);
  if (sub_1AF19B994(a1) && (v19 = sub_1AF19ECC8(a1)) != 0)
  {
    v20 = v19;
    v21 = 0;
    v51 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v33.n128_f32[0]), a5, v33.n128_u64[0], 1), a6, v33, 2), a7, v33, 3);
    v49 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v48.f32[0]), a5, *v48.f32, 1), a6, v48, 2), a7, v48, 3);
    v47 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v46.f32[0]), a5, *v46.f32, 1), a6, v46, 2), a7, v46, 3);
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v34.f32[0]), a5, *v34.f32, 1), a6, v34, 2), a7, v34, 3);
    v22 = &__src[3];
    do
    {
      v23 = sub_1AF5D1904(v21++);
      v54.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v23.n128_f32[0]), v49, v23.n128_u64[0], 1), v47, v23, 2), v45, v23, 3);
      v54.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v24.f32[0]), v49, *v24.f32, 1), v47, v24, 2), v45, v24, 3);
      v54.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v25.f32[0]), v49, *v25.f32, 1), v47, v25, 2), v45, v25, 3);
      v54.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v51, v26.f32[0]), v49, *v26.f32, 1), v47, v26, 2), v45, v26, 3);
      *(v22 - 1) = __invert_f4(v54);
      v22 += 4;
    }

    while (v21 != 6);
    v27 = v20[1];
    __src[30] = *v20;
    __src[31] = v27;
    v28 = v20[3];
    __src[32] = v20[2];
    __src[33] = v28;
    v29 = v20[5];
    __src[34] = v20[4];
    __src[35] = v29;
    __src[26] = v41;
    __src[27] = v40;
    __src[28] = v39;
    __src[29] = v38;
    v30 = sub_1AF19C608(a1);
    *&__src[36] = v30 * 0.01;
  }

  else
  {
    memset(&__src[30], 0, 100);
  }

  *&v31 = vmulq_f32(vmulq_n_f32(v43, v42), vdupq_n_s32(0x3ABFE803u)).u64[0];
  *(&v31 + 2) = (v43.n128_f32[2] * v42) * 0.0014641;
  HIDWORD(v31) = 0;
  __src[0] = v31;
  return memcpy(a3, __src, 0x270uLL);
}

float sub_1AF5C7818@<S0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v47 = sub_1AF19BBC0(a1);
  v46 = sub_1AF19C46C(a1);
  v10 = sub_1AF19BC08(a1);
  v54 = v11;
  v55 = v10;
  v52 = v13;
  v53 = v12;
  v14 = sub_1AF19C1FC(a1);
  v15 = sub_1AF19C9F0(a1);
  v16 = sub_1AF19BFD8(a1);
  v34 = sub_1AF5D18E4(a2);
  v36 = v17;
  v38 = v18;
  v50 = v19;
  v20 = sub_1AF19B994(a1);
  v21 = 0uLL;
  v22 = 0.0;
  if (v20)
  {
    v23 = sub_1AF19ECC8(a1);
    v21 = 0uLL;
    if (v23)
    {
      v48 = *v23;
      v24 = sub_1AF19C608(a1);
      v22 = v24 * 0.01;
      v21 = v48;
    }
  }

  v49 = v21;
  v56.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v34.n128_f32[0]), a5, v34.n128_u64[0], 1), a6, v34, 2), a7, v34, 3);
  v56.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v36.f32[0]), a5, *v36.f32, 1), a6, v36, 2), a7, v36, 3);
  v56.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v38.f32[0]), a5, *v38.f32, 1), a6, v38, 2), a7, v38, 3);
  v56.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v50.f32[0]), a5, *v50.f32, 1), a6, v50, 2), a7, v50, 3);
  v57 = __invert_f4(v56);
  v41 = v57.columns[0];
  v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v57.columns[0].f32[0]), v54, *v57.columns[0].f32, 1), v53, v57.columns[0], 2), v52, v57.columns[0], 3);
  v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v57.columns[1].f32[0]), v54, *v57.columns[1].f32, 1), v53, v57.columns[1], 2), v52, v57.columns[1], 3);
  v32 = v57.columns[3];
  v33 = v57.columns[2];
  v37 = v57.columns[1];
  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v57.columns[2].f32[0]), v54, *v57.columns[2].f32, 1), v53, v57.columns[2], 2), v52, v57.columns[2], 3);
  v35 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v55, v57.columns[3].f32[0]), v54, *v57.columns[3].f32, 1), v53, v57.columns[3], 2), v52, v57.columns[3], 3);
  v25 = 1.0 / (v14 * v14);
  v26 = cosf(((v15 * 3.1416) / 180.0) * 0.5);
  v27 = cosf(((v16 * 3.1416) / 180.0) * 0.5);
  *&v28 = vsubq_f32(v50, vsubq_f32(0, a7)).u64[0];
  *(&v28 + 2) = v50.f32[2] - (0.0 - a7.f32[2]);
  HIDWORD(v28) = 0;
  *&v29 = vdivq_f32(vmulq_f32(vmulq_n_f32(v47, v46), vdupq_n_s32(0x3ABFE803u)), vdupq_n_s32(0x40490FDAu)).u64[0];
  *(&v29 + 1) = COERCE_UNSIGNED_INT((vmuls_lane_f32(v46, v47, 2) * 0.0014641) / 3.1416);
  *a3 = v29;
  *(a3 + 16) = v28;
  *(a3 + 32) = v41;
  *(a3 + 48) = v37;
  *(a3 + 64) = v33;
  *(a3 + 80) = v32;
  *(a3 + 96) = v55;
  *(a3 + 112) = v54;
  *(a3 + 128) = v53;
  *(a3 + 144) = v52;
  v30 = 1.0 / fmaxf(v26 - v27, 0.00000011921);
  *(a3 + 160) = v45;
  *(a3 + 176) = v43;
  *(a3 + 192) = v39;
  *(a3 + 208) = v35;
  *(a3 + 224) = v49;
  *(a3 + 240) = v22;
  *(a3 + 244) = v25;
  result = -(v27 * v30);
  *(a3 + 248) = v30;
  *(a3 + 252) = result;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  return result;
}

double sub_1AF5C7B28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = a1;
  inited[5] = a2;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for Color;
  inited[9] = &off_1F252CA08;
  if (v11 > 0xF)
  {
    *&v19[0] = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v19[0];
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 3;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 3;
  *(v16 + 32) = 771;
  *(v16 + 34) = 3;
  if (v14)
  {
    *&v19[0] = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = *&v19[0];
    v15 = *(*&v19[0] + 16);
  }

  sub_1AF5C3CE0((v16 + 32), v15, inited + 4, inited[2], v6, v19);

  result = *v19;
  v18 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C7CD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for Position;
  inited[5] = &off_1F252EDF0;
  inited[6] = &type metadata for Orientation;
  inited[7] = &off_1F252C828;
  inited[8] = &type metadata for LookAt;
  inited[9] = &off_1F25620B0;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C7EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ForceField;
  inited[5] = &off_1F2560E90;
  inited[6] = &type metadata for ForceFieldRuntime;
  inited[7] = &off_1F2560F40;
  inited[8] = &type metadata for WorldTransform;
  inited[9] = &off_1F2529AF8;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C80C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ClampBox;
  inited[5] = &off_1F255F630;
  inited[6] = &type metadata for Position;
  inited[7] = &off_1F252EDF0;
  inited[8] = &type metadata for Velocity;
  inited[9] = &off_1F2530A78;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C82B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleBoxCollider;
  inited[5] = &off_1F2552780;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C84B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleCylinderCollider;
  inited[5] = &off_1F2552958;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C86A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleSDFCollider;
  inited[5] = &off_1F2553190;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

double sub_1AF5C88A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C6B0;
  inited[4] = a1;
  inited[5] = a2;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for Color;
  inited[9] = &off_1F252CA08;
  inited[10] = &type metadata for Shadow;
  inited[11] = &off_1F2530098;
  if (v11 > 0xF)
  {
    *&v19[0] = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v19[0];
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 4;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 4;
  *(v16 + 32) = 50529027;
  if (v14)
  {
    *&v19[0] = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = *&v19[0];
    v15 = *(*&v19[0] + 16);
  }

  sub_1AF5C3CE0((v16 + 32), v15, inited + 4, inited[2], v6, v19);

  result = *v19;
  v18 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v20;
  return result;
}

double sub_1AF5C8A44@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = &type metadata for AmbientLight;
  inited[5] = &off_1F252AC40;
  inited[6] = &type metadata for Color;
  inited[7] = &off_1F252CA08;
  if (v7 > 0xF)
  {
    *&v15[0] = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v15[0];
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 2;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 2;
  *(v12 + 32) = 771;
  if (v10)
  {
    *&v15[0] = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = *&v15[0];
    v11 = *(*&v15[0] + 16);
  }

  sub_1AF5C3CE0((v12 + 32), v11, inited + 4, inited[2], v2, v15);

  result = *v15;
  v14 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v14;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_1AF5C8BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SceneKitRenderer(0);
  v5 = *v2;
  v6 = *v2 + 41;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 18);
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v4;
  inited[5] = &off_1F2546F88;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  if (v8 > 0xF)
  {
    v26 = sub_1AFC0592C((v6 + v7), v8 >> 4);
    sub_1AF48FC80(inited);
    inited = v26;
  }

  v10 = *(v5 + 20);
  v11 = *(v5 + 22);
  v12 = 2;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 2;
  *(v13 + 32) = 771;
  if (v11)
  {
    v26 = sub_1AFC0587C((v6 + v10), v11);
    sub_1AF48FBC0(v13);
    v13 = v26;
    v12 = v26[2];
  }

  v14 = *v2 + 41;
  v15 = *(*v2 + 24);
  v16 = *(*v2 + 26) >> 4;
  v17 = *(*v2 + 28);
  v18 = *(*v2 + 30) / 0x18u;
  v19 = *(v2 + 2);
  v20 = *(v2 + 12);
  v21 = v2[4];
  v22 = v2[2];
  v23 = *(v2 + 24);
  v24 = sub_1AF6B7F4C(inited + 4, inited[2], (v13 + 32), v12, (v14 + v15), v16, (v14 + v17), v18);

  *a1 = v24;
  *(a1 + 8) = v19;
  *(a1 + 12) = v20;
  *(a1 + 13) = v27;
  *(a1 + 15) = v28;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 25) = v26;
  *(a1 + 28) = *(&v26 + 3);
  *(a1 + 32) = v21;
  return result;
}

uint64_t sub_1AF5C8DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = *v5 + 41;
  v13 = (*v5)[8];
  v14 = v11[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = a1;
  inited[5] = a2;
  inited[6] = a3;
  inited[7] = a4;
  if (v14 > 0xF)
  {
    v34 = sub_1AFC0592C((v12 + v13), v14 >> 4);
    sub_1AF48FC80(inited);
    inited = v34;
  }

  v16 = v12;
  v17 = v11[10];
  v18 = v11[11];
  v19 = 2;
  v20 = sub_1AFDFD488();
  *(v20 + 16) = 2;
  *(v20 + 32) = 771;
  if (v18)
  {
    v34 = sub_1AFC0587C((v16 + v17), v18);
    sub_1AF48FBC0(v20);
    v20 = v34;
    v19 = v34[2];
  }

  v21 = *v9 + 41;
  v22 = (*v9)[12];
  v23 = (*v9)[13] >> 4;
  v24 = (*v9)[14];
  v25 = (*v9)[15] / 0x18u;
  v26 = *(v9 + 2);
  v27 = *(v9 + 12);
  v28 = v9[4];
  v29 = v9[2];
  v30 = *(v9 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v20 + 32), v19, (v21 + v22), v23, (v21 + v24), v25);

  *a5 = v31;
  *(a5 + 8) = v26;
  *(a5 + 12) = v27;
  *(a5 + 13) = v35;
  *(a5 + 15) = v36;
  *(a5 + 16) = v29;
  *(a5 + 24) = v30;
  *(a5 + 25) = v34;
  *(a5 + 28) = *(&v34 + 3);
  *(a5 + 32) = v28;
  return result;
}

void sub_1AF5C94F8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v1334 = *MEMORY[0x1E69E9840];
  if (!v4)
  {
    return;
  }

  v5 = v2;
  v6 = v4;
  v913 = v3;
  v7 = *(v3 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v8 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v9 == 2 || (v9 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    v1106 = 0u;
  }

  else
  {
    v11 = (*(v7 + 16) + v8);
    v12 = v6;
    v13 = 32 * v10;
    os_unfair_lock_lock(*(*(v7 + 32) + 32 * v10 + 24));
    os_unfair_recursive_lock_unlock();
    v1106 = v11[53];
    v14 = *(v7 + 32) + v13;
    v6 = v12;
    os_unfair_lock_unlock(*(v14 + 24));
  }

  bzero(v1226, 0x65C0uLL);
  v15 = v6[41];
  v1229[6] = v6[40];
  v1229[7] = v15;
  v1230[0] = v6[42];
  *(v1230 + 9) = *(v6 + 681);
  v16 = v6[37];
  v1229[2] = v6[36];
  v1229[3] = v16;
  v17 = v6[39];
  v1229[4] = v6[38];
  v1229[5] = v17;
  v18 = v6[35];
  v1229[0] = v6[34];
  v1229[1] = v18;
  if (sub_1AF448314(v1229) == 1)
  {
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v19 = *(&v1229[0] + 1);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 152);
  swift_unknownObjectRetain();
  v22 = v21(ObjectType, v19);
  swift_unknownObjectRelease();
  v23 = *(v5 + 32);
  v1211[0] = *(v5 + 16);
  v1211[1] = v23;
  v1212 = *(v5 + 48);
  sub_1AF6B06C0(v913, v1211, v22 & 0xFFFFFFFFFFLL, &v1231);
  v24 = v1231;
  if (v1231)
  {
    v25 = v1239;
    v1033 = v1238;
    v1095 = v1237;
    v1010 = v1236;
    v1002 = v1235;
    v1123 = v1234;
    v1110 = v1232;
    v26 = BYTE12(v1231);
    v1076 = DWORD2(v1231);
    v1085 = v1233;
  }

  else
  {
    v1110 = 0;
    v1123 = 0;
    v1002 = 0;
    v1010 = 0;
    v1095 = 0;
    v1033 = 0;
    v25 = 0;
    v1085 = 0;
    v1076 = 0;
    v26 = 0;
  }

  v27 = *(v5 + 72);
  v1209[0] = *(v5 + 56);
  v1209[1] = v27;
  v1210 = *(v5 + 88);
  sub_1AF6B06C0(v913, v1209, v22 & 0xFFFFFFFFFFLL, &v1240);
  v982 = v1240;
  if (v1240)
  {
    v28 = v1248;
    v965 = v1247;
    v932 = v1246;
    v934 = v1245;
    v919 = v1244;
    v979 = v1243;
    v974 = v1241;
    v953 = DWORD2(v1240);
    v948 = BYTE12(v1240);
    v970 = v1242;
  }

  else
  {
    v974 = 0;
    v979 = 0;
    v919 = 0;
    v932 = 0;
    v934 = 0;
    v965 = 0;
    v970 = 0;
    v953 = 0;
    v948 = 0;
    v28 = 0;
  }

  v941 = v28;
  if (v28 >= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = v28;
  }

  if (v25 >= 8)
  {
    v30 = 8;
  }

  else
  {
    v30 = v25;
  }

  if (!v24)
  {
    v30 = 0;
  }

  v1226[1] = v29;
  v1226[0] = v30;
  v31 = *(v5 + 112);
  v1207[0] = *(v5 + 96);
  v1207[1] = v31;
  v1208 = *(v5 + 128);
  sub_1AF6B06C0(v913, v1207, v22 & 0xFFFFFFFFFFLL, &v1249);
  v32 = v1249;
  v904 = v1249;
  if (v1249)
  {
    v967 = v1256;
    v936 = v1254;
    v930 = v1253;
    v891 = v1252;
    v889 = v1255;
    v890 = v1250;
    v887 = BYTE12(v1249);
    LOBYTE(v888) = v1251;
    HIDWORD(v888) = DWORD2(v1249);
    if (v1257 >= 8)
    {
      v32 = 8;
    }

    else
    {
      v32 = v1257;
    }

    v901 = v1257 > 0;
  }

  else
  {
    v890 = 0;
    v891 = 0;
    v930 = 0;
    v936 = 0;
    v888 = 0;
    v889 = 0;
    v967 = 0;
    v901 = 0;
    v887 = 0;
  }

  v1226[2] = v32;
  v33 = *(v5 + 152);
  v1205[0] = *(v5 + 136);
  v1205[1] = v33;
  v1206 = *(v5 + 168);
  sub_1AF6B06C0(v913, v1205, v22 & 0xFFFFFFFFFFLL, &v1258);
  v34 = v1258;
  v929 = v1258;
  if (v1258)
  {
    v938 = v1265;
    v922 = v1264;
    v924 = v1263;
    v917 = v1262;
    v918 = v1261;
    v916 = v1259;
    v34 = v1266;
    HIDWORD(v915) = DWORD2(v1258);
    LOBYTE(v915) = BYTE12(v1258);
    v914 = v1260;
  }

  else
  {
    v916 = 0;
    v917 = 0;
    v918 = 0;
    v924 = 0;
    v922 = 0;
    v938 = 0;
    v914 = 0;
    v915 = 0;
  }

  v927 = v34;
  if (v34 >= 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v34;
  }

  v1226[3] = v35;
  v36 = *(v5 + 272);
  v1203[0] = *(v5 + 256);
  v1203[1] = v36;
  v1204 = *(v5 + 288);
  sub_1AF6B06C0(v913, v1203, v22 & 0xFFFFFFFFFFLL, &v1267);
  if (v1267)
  {
    v37 = v1274;
    v38 = v1273;
    v39 = v1272;
    v40 = v1271;
    v41 = v1270;
    v42 = v1269;
    v43 = v1268;
    if (v1273 >= 8)
    {
      v44 = 8;
    }

    else
    {
      v44 = v1273;
    }
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v37 = 0;
    v44 = 0;
    v43 = 0uLL;
    v42 = 0uLL;
    v41 = 0uLL;
    v40 = 0uLL;
  }

  v1107 = vsubq_f32(0, v1106);
  v1299 = v43;
  v1300 = v42;
  v1301 = v41;
  v1302 = v40;
  v1298 = v1267;
  v1303 = v39;
  v1304 = v38;
  v1305 = v37;
  v1226[6] = v44;
  v45 = *(v5 + 192);
  v1201[0] = *(v5 + 176);
  v1201[1] = v45;
  v1202 = *(v5 + 208);
  sub_1AF6B06C0(v913, v1201, v22 & 0xFFFFFFFFFFLL, &v1275);
  v46 = v1275;
  v903 = v1275;
  if (v1275)
  {
    v939 = v1282;
    v925 = v1280;
    v920 = v1279;
    v896 = v1278;
    v894 = v1281;
    v895 = v1276;
    v892 = BYTE12(v1275);
    LOBYTE(v893) = v1277;
    HIDWORD(v893) = DWORD2(v1275);
    if (v1283 >= 8)
    {
      v46 = 8;
    }

    else
    {
      v46 = v1283;
    }

    v902 = v1283 > 0;
  }

  else
  {
    v895 = 0;
    v896 = 0;
    v920 = 0;
    v925 = 0;
    v893 = 0;
    v894 = 0;
    v939 = 0;
    v902 = 0;
    v892 = 0;
  }

  v47 = v1107;
  v47.f32[2] = 0.0 - v1106.f32[2];
  v1108 = v47;
  v1226[4] = v46;
  v48 = *(v5 + 232);
  v1199[0] = *(v5 + 216);
  v1199[1] = v48;
  v1200 = *(v5 + 248);
  sub_1AF6B06C0(v913, v1199, v22 & 0xFFFFFFFFFFLL, &v1284);
  v49 = v1284;
  v905 = v1284;
  if (v1284)
  {
    v940 = v1291;
    v923 = v1290;
    v926 = v1289;
    v921 = v1288;
    v899 = v1285;
    v900 = v1287;
    v897 = BYTE12(v1284);
    LOBYTE(v898) = v1286;
    HIDWORD(v898) = DWORD2(v1284);
    v928 = v1292;
    if (v1292 >= 8)
    {
      v49 = 8;
    }

    else
    {
      v49 = v1292;
    }
  }

  else
  {
    v899 = 0;
    v900 = 0;
    v921 = 0;
    v926 = 0;
    v923 = 0;
    v940 = 0;
    v928 = 0;
    v898 = 0;
    v897 = 0;
  }

  _Q0 = v1108;
  _Q0.i32[3] = 1.0;
  v1109 = _Q0;
  v1226[5] = v49;
  v1162 = MEMORY[0x1E69E7CC0];
  *&v51 = 0;
  *(&v51 + 2) = 1.0 / ceilf(sqrtf((v29 + 6 * v35 + v49)));
  *(&v51 + 3) = *(&v51 + 2);
  v994 = v51;
  v1161 = v51;
  __asm { FMOV            V0.2S, #1.0 }

  v1135 = _Q0.i32[0];
  if (v24)
  {
    v56 = v941;
    if (v25 >= 1 && v1010)
    {
      v57 = *(v1033 + 32);
      v58 = *(v1095 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v1193 = v24;
      v1194 = v1076;
      v1195 = v26;
      v1196 = v1110;
      v1197 = v1085;
      v1198 = v1123;
      sub_1AF5D15C0(&v1231, v1221);
      v59 = 0;
      v60 = 0;
      v1057 = vdupq_n_s32(0x3ABFE803u);
      v992 = v58;
      v996 = v57;
      while (1)
      {
        v1040 = v60;
        v1025 = v59;
        v61 = (v1002 + 48 * v59);
        v62 = *v61;
        v63 = v61[2];
        v64 = *(v61 + 2);
        v1146 = *(v61 + 3);
        v66 = *(v61 + 4);
        v65 = *(v61 + 5);
        v1124 = v61[1];
        if (v58)
        {
          v67 = *(v65 + 376);

          os_unfair_lock_lock(v67);
          os_unfair_lock_lock(*(v65 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v57);
        v68 = *(v1033 + 64);
        v1332[0] = *(v1033 + 48);
        v1332[1] = v68;
        v1333 = *(v1033 + 80);
        v69 = *(v1033 + 32);
        v70 = *(*(*(*(v65 + 40) + 16) + 32) + 16) + 1;
        v71 = v65;

        *(v1033 + 48) = ecs_stack_allocator_allocate(v69, 48 * v70, 8);
        *(v1033 + 56) = v70;
        *(v1033 + 72) = 0;
        *(v1033 + 80) = 0;
        *(v1033 + 64) = 0;

        v72 = sub_1AF64B110(&type metadata for DirectionalLight, &off_1F252AAB0, v64, v1146, v66, v1033);
        v73 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v64, v1146, v66, v1033);
        v1017 = v71;
        v74 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v64, v1146, v66, v1033);
        v75 = v74;
        if (v64)
        {
          if (v66)
          {
            v76 = &v1226[64 * v63 + 28];
            v77 = v73 + 32;
            v78 = (v72 + 8);
            v57 = v996;
            v79 = v1025;
            do
            {
              if (v63 <= 7)
              {
                v96 = *v77;
                v97 = vabsq_f32(*v77);
                if (v97.f32[0] > 0.00000011921 || v97.f32[1] > 0.00000011921 || v97.f32[2] > 0.00000011921)
                {
                  v100 = vmulq_f32(v96, v96);
                  *&v101 = v100.f32[2] + vaddv_f32(*v100.f32);
                  *v100.f32 = vrsqrte_f32(v101);
                  *v100.f32 = vmul_f32(*v100.f32, vrsqrts_f32(v101, vmul_f32(*v100.f32, *v100.f32)));
                  v102 = vmulq_n_f32(v96, vmul_f32(*v100.f32, vrsqrts_f32(v101, vmul_f32(*v100.f32, *v100.f32))).f32[0]);
                  v102.i32[3] = v1052.i32[3];
                  v1147 = v102;
                }

                else
                {
                  v1147 = 0u;
                }

                v80 = *(v78 - 1);
                v81 = *v78;
                v82 = v78[1];
                v1111 = *v75;
                v1125 = *(v78 - 2);
                v1335.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v77 - 32))), xmmword_1AFE20160, *(v77 - 32), 1), xmmword_1AFE20180, *(v77 - 32), 2), v1109, *(v77 - 32), 3);
                v1335.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v77 - 16))), xmmword_1AFE20160, *(v77 - 16), 1), xmmword_1AFE20180, *(v77 - 16), 2), v1109, *(v77 - 16), 3);
                v1335.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v96.f32[0]), xmmword_1AFE20160, *v96.f32, 1), xmmword_1AFE20180, v96, 2), v1109, v96, 3);
                v1335.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v77 + 16))), xmmword_1AFE20160, *(v77 + 16), 1), xmmword_1AFE20180, *(v77 + 16), 2), v1109, *(v77 + 16), 3);
                v1336 = __invert_f4(v1335);
                v84 = v81 + 0.0001;
                if (v81 < -100000.0)
                {
                  v84 = -100000.0;
                }

                *v83.i32 = fmaxf(v81, -100000.0);
                if (v82 > v84)
                {
                  v84 = v82;
                }

                *v83.i32 = v84 - *v83.i32;
                *v85.i8 = vdiv_f32(__PAIR64__(LODWORD(v84), v1135), vdup_lane_s32(v83, 0));
                v86.i64[0] = 0;
                v86.i32[2] = 0;
                *&v86.i32[3] = (v80 - v80) / (-v80 - v80);
                v87.i32[0] = 0;
                v87.i32[2] = 0;
                *&v87.i32[1] = 2.0 / (v80 + v80);
                v85.i64[1] = v85.i64[0];
                v88 = vzip1q_s32(v87.u64[0], 0);
                v87.i32[3] = v86.i32[3];
                *&v89 = vmulq_f32(vmulq_n_f32(v1111, v1125), v1057).u64[0];
                *(&v89 + 2) = vmuls_lane_f32(v1125, v1111, 2) * 0.0014641;
                HIDWORD(v89) = 0;
                *(v76 - 3) = v89;
                *(v76 - 2) = v1147;
                *(v76 - 4) = v1336;
                v90 = 0;
                v91 = v87.i32[1];
                v92 = vzip2q_s32(v86, v85);
                v93 = (v76 + 12);
                vst2_f32(v93, *(&v88 - 8));
                *(v76 + 4) = vzip2q_s32(0, v88);
                v94 = vzip2q_s32(v87, xmmword_1AFE201A0);
                v95 = (v76 + 20);
                vst2_f32(v95, v92);
                *(v76 + 6) = vzip2q_s32(v92, v94);
                *(v76 + 7) = 0u;
                *(v76 + 8) = 0u;
                *(v76 + 9) = 0u;
                *(v76 + 10) = 0u;
                *(v76 + 11) = 0u;
                *(v76 + 12) = 0u;
              }

              ++v75;
              v76 += 64;
              v77 += 64;
              ++v63;
              v78 += 4;
              --v66;
            }

            while (v66);
            v60 = v1040;
            goto LABEL_97;
          }

          v60 = v1040;
        }

        else
        {
          v103 = v63 - v62;
          v104 = v63 - v62 - 1;
          v105 = v72 - 8;
          v106 = v74 - 16;
          v107 = v73 - 32;
          v60 = v1040;
LABEL_78:
          v108 = (v105 + 16 * v62);
          v109 = &v1221[16 * (v103 + v62) + 37];
          v110 = v107 + (v62 << 6);
          while (v1124 != v62)
          {
            ++v62;
            v108 += 4;
            v109 += 4;
            v110 += 64;
            if (v104 + v62 <= 7)
            {
              v111 = *v110;
              v112 = vabsq_f32(*v110);
              if (v112.f32[0] > 0.00000011921 || v112.f32[1] > 0.00000011921 || v112.f32[2] > 0.00000011921)
              {
                v115 = vmulq_f32(v111, v111);
                *&v116 = v115.f32[2] + vaddv_f32(*v115.f32);
                *v115.f32 = vrsqrte_f32(v116);
                *v115.f32 = vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32)));
                v117 = vmulq_n_f32(v111, vmul_f32(*v115.f32, vrsqrts_f32(v116, vmul_f32(*v115.f32, *v115.f32))).f32[0]);
                v117.i32[3] = v989;
                v1148 = v117;
              }

              else
              {
                v1148 = 0u;
              }

              v118 = *(v108 - 1);
              v1112 = *(v108 - 2);
              v119 = *v108;
              v120 = v108[1];
              v1041 = *(v106 + 16 * v62);
              v1337.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v110 - 32))), xmmword_1AFE20160, *(v110 - 32), 1), xmmword_1AFE20180, *(v110 - 32), 2), v1109, *(v110 - 32), 3);
              v1337.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v110 - 16))), xmmword_1AFE20160, *(v110 - 16), 1), xmmword_1AFE20180, *(v110 - 16), 2), v1109, *(v110 - 16), 3);
              v1337.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v111.f32[0]), xmmword_1AFE20160, *v111.f32, 1), xmmword_1AFE20180, v111, 2), v1109, v111, 3);
              v1337.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v110 + 16))), xmmword_1AFE20160, *(v110 + 16), 1), xmmword_1AFE20180, *(v110 + 16), 2), v1109, *(v110 + 16), 3);
              v1338 = __invert_f4(v1337);
              v122 = v119 + 0.0001;
              if (v119 < -100000.0)
              {
                v122 = -100000.0;
              }

              *v121.i32 = fmaxf(v119, -100000.0);
              if (v120 > v122)
              {
                v122 = v120;
              }

              *v121.i32 = v122 - *v121.i32;
              *v123.i8 = vdiv_f32(__PAIR64__(LODWORD(v122), v1135), vdup_lane_s32(v121, 0));
              v124.i64[0] = 0;
              v124.i32[2] = 0;
              *&v124.i32[3] = (v118 - v118) / (-v118 - v118);
              v125.i32[0] = 0;
              v125.i32[2] = 0;
              *&v125.i32[1] = 2.0 / (v118 + v118);
              v123.i64[1] = v123.i64[0];
              v126 = vzip1q_s32(v125.u64[0], 0);
              v125.i32[3] = v124.i32[3];
              v127.i64[0] = vmulq_f32(vmulq_n_f32(v1041, v1112), v1057).u64[0];
              v127.f32[2] = vmuls_lane_f32(v1112, v1041, 2) * 0.0014641;
              v127.i32[3] = 0;
              v109[-2].columns[2] = v127;
              v109[-2].columns[3] = v1148;
              v109[-1] = v1338;
              v128 = 0;
              v129 = v125.i32[1];
              v130 = vzip2q_s32(v124, v123);
              v131 = v109;
              vst2_f32(v131, *(&v126 - 8));
              v131 += 4;
              *v131 = vzip2q_s32(0, v126);
              v132 = vzip2q_s32(v125, xmmword_1AFE201A0);
              f32 = v109->columns[2].f32;
              vst2_f32(f32, v130);
              v109->columns[3] = vzip2q_s32(v130, v132);
              v109[1].columns[0] = 0u;
              v109[1].columns[1] = 0u;
              v109[1].columns[2] = 0u;
              v109[1].columns[3] = 0u;
              v109[2].columns[0] = 0u;
              v109[2].columns[1] = 0u;
              goto LABEL_78;
            }
          }
        }

        v57 = v996;
        v79 = v1025;
LABEL_97:
        sub_1AF630994(v1033, &v1193, v1332);
        sub_1AF62D29C(v1017);
        ecs_stack_allocator_pop_snapshot(v57);
        v58 = v992;
        if (v992)
        {
          os_unfair_lock_unlock(*(v1017 + 344));
          os_unfair_lock_unlock(*(v1017 + 376));
        }

        v59 = v79 + 1;
        if (v59 == v1010)
        {
          sub_1AF5D1564(&v1231);
          goto LABEL_103;
        }
      }
    }

    v60 = 0;
    v134 = v982;
    if (!v982)
    {
      goto LABEL_161;
    }

LABEL_104:
    if (v56 >= 1 && v934)
    {
      v962 = v965[4];
      v958 = *(v932 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v1187 = v134;
      v1188 = v953;
      v1189 = v948;
      v1190 = v974;
      v1191 = v970;
      v1192 = v979;
      sub_1AF5D15C0(&v1240, v1221);
      v135 = 0;
      v136 = MEMORY[0x1E69E7CC0];
      v983 = vdupq_n_s32(0x3ABFE803u);
      while (1)
      {
        v1042 = v60;
        v954 = v135;
        v137 = (v919 + 48 * v135);
        v138 = *v137;
        v139 = v137[1];
        v140 = v137[2];
        v142 = *(v137 + 2);
        v141 = *(v137 + 3);
        v143 = *(v137 + 4);
        v144 = *(v137 + 5);
        if (v958)
        {
          v145 = *(v144 + 376);

          os_unfair_lock_lock(v145);
          os_unfair_lock_lock(*(v144 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v962);

        sub_1AF630914(v146, v965, v1293);

        LOBYTE(v1221[0]) = 1;
        v1320[0] = v932;
        v1320[1] = v144;
        v1320[2] = v965;
        v1321 = v140;
        v1322 = (v139 - v138 + v140);
        v1323 = v941;
        v1324 = v138;
        v1325 = v139;
        v1326 = 0;
        v1327 = 0;
        v1328 = 1;
        v1329 = v142;
        v1330 = v141;
        v1331 = v143;
        v60 = v1042;
        v147 = sub_1AF705A48(v144, v1320);
        v148 = sub_1AF705994(v144, v1320);
        v149 = sub_1AF70596C(v144, v1320);
        v150 = sub_1AF705944(v144, v1320);
        if (!v1329)
        {
          break;
        }

        v151 = v1331;
        if (v1331)
        {
          v980 = v149;
          v943 = v144;
          v949 = v1042;
          v152 = 0;
          v153 = (v150 + 8);
          v154 = v147 + 4;
          v155 = (v148 + 32);
          v975 = v1331;
          do
          {
            v165 = v152 + v1321;
            if (v152 + v1321 <= 7)
            {
              v166 = *v155;
              v167 = vabsq_f32(*v155);
              if (v167.f32[0] > 0.00000011921 || v167.f32[1] > 0.00000011921 || v167.f32[2] > 0.00000011921)
              {
                v170 = vmulq_f32(v166, v166);
                *&v171 = v170.f32[2] + vaddv_f32(*v170.f32);
                *v170.f32 = vrsqrte_f32(v171);
                *v170.f32 = vmul_f32(*v170.f32, vrsqrts_f32(v171, vmul_f32(*v170.f32, *v170.f32)));
                v172 = vmulq_n_f32(v166, vmul_f32(*v170.f32, vrsqrts_f32(v171, vmul_f32(*v170.f32, *v170.f32))).f32[0]);
                v172.i32[3] = v972;
                v1126 = v172;
              }

              else
              {
                v1126 = 0u;
              }

              v173 = *v154;
              v1149.i64[0] = *(v154 + 4);
              v1058 = *(v980 + 16 * v152);
              v1067 = *(v154 - 4);
              v174 = *(v153 - 2);
              v175 = *v153;
              v1077 = v155[-1];
              v1086 = v155[-2];
              v1341.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1086.f32[0]), xmmword_1AFE20160, *v1086.f32, 1), xmmword_1AFE20180, v1086, 2), v1109, v1086, 3);
              v1341.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1077.f32[0]), xmmword_1AFE20160, *v1077.f32, 1), xmmword_1AFE20180, v1077, 2), v1109, v1077, 3);
              v1113 = *v155;
              v1341.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v166.f32[0]), xmmword_1AFE20160, *v166.f32, 1), xmmword_1AFE20180, v166, 2), v1109, v166, 3);
              v1096 = v155[1];
              v1341.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1096.f32[0]), xmmword_1AFE20160, *v1096.f32, 1), xmmword_1AFE20180, v1096, 2), v1109, v1096, 3);
              v1342 = __invert_f4(v1341);
              v1043 = v1342.columns[1];
              v1052 = v1342.columns[0];
              v1026 = v1342.columns[3];
              v1034 = v1342.columns[2];
              v1213 = 0u;
              v1214 = 0u;
              v1215 = 0u;
              memset(v1216, 0, 28);
              v176 = v1149.f32[0] + 0.0001;
              if (v1149.f32[0] < -100000.0)
              {
                v176 = -100000.0;
              }

              if (v1149.f32[1] > v176)
              {
                v176 = v1149.f32[1];
              }

              v1019 = v176;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v136 = sub_1AF4229F8(0, *(v136 + 2) + 1, 1, v136);
              }

              v178 = *(v136 + 2);
              v177 = *(v136 + 3);
              if (v178 >= v177 >> 1)
              {
                v136 = sub_1AF4229F8(v177 > 1, v178 + 1, 1, v136);
              }

              v156.i32[1] = v1149.i32[1];
              *v156.i32 = v1019 - fmaxf(v1149.f32[0], -100000.0);
              *v157.i8 = vdiv_f32(__PAIR64__(LODWORD(v1019), v1135), vdup_lane_s32(v156, 0));
              v158.i64[0] = 0;
              v158.i32[2] = 0;
              *&v158.i32[3] = (v173 - v173) / (-v173 - v173);
              v159.i32[0] = 0;
              v159.i32[2] = 0;
              *&v159.i32[1] = 2.0 / (v173 + v173);
              v157.i64[1] = v157.i64[0];
              v160 = vzip2q_s32(v158, v157);
              v159.i32[3] = v158.i32[3];
              v161 = vzip2q_s32(v159, xmmword_1AFE201A0);
              v1011 = vzip1q_s32(v160, v161);
              v1018 = vzip2q_s32(v159.u32[1], vzip1q_s32(v159.u64[0], 0));
              v997 = v159.u32[1];
              v1003 = vzip2q_s32(v160, v161);
              *&v162 = vmulq_f32(vmulq_n_f32(v1058, v1067), v983).u64[0];
              *(&v162 + 2) = vmuls_lane_f32(v1067, v1058, 2) * 0.0014641;
              HIDWORD(v162) = 0;
              v1066 = v162;
              v1339.columns[1] = v1077;
              v1339.columns[0] = v1086;
              v1339.columns[2] = v1113;
              v1339.columns[3] = v1096;
              v1340 = __invert_f4(v1339);
              *(v136 + 2) = v178 + 1;
              v163 = &v136[160 * v178];
              *(v163 + 32) = v1340;
              *(v163 + 6) = v997;
              *(v163 + 7) = v1018;
              *(v163 + 8) = v1011;
              *(v163 + 9) = v1003;
              *(v163 + 20) = v1149.i64[0];
              *(v163 + 11) = v994;
              v1162 = v136;
              v1340.columns[0] = *(v175 + 32);
              v164 = &v1226[64 * v165 + 528];
              *v164 = v1066;
              *(v164 + 1) = v1126;
              *(v164 + 2) = v1052;
              *(v164 + 3) = v1043;
              *(v164 + 4) = v1034;
              *(v164 + 5) = v1026;
              *(v164 + 6) = v997;
              *(v164 + 7) = v1018;
              *(v164 + 8) = v1011;
              *(v164 + 9) = v1003;
              *(v164 + 10) = v1340.columns[0];
              v164[44] = v174;
              v1340.columns[1] = v1214;
              *(v164 + 45) = v1213;
              *(v164 + 15) = *(v1216 + 12);
              v1340.columns[2] = v1215;
              *(v164 + 57) = v1216[0];
              *(v164 + 53) = v1340.columns[2];
              *(v164 + 49) = v1340.columns[1];
              v151 = v975;
            }

            ++v152;
            v153 += 2;
            v154 += 16;
            v155 += 4;
          }

          while (v151 != v152);
          v144 = v943;
LABEL_135:
          v60 = v949;
        }

        sub_1AF630994(v965, &v1187, v1293);
        sub_1AF62D29C(v144);
        ecs_stack_allocator_pop_snapshot(v962);
        if (v958)
        {
          os_unfair_lock_unlock(*(v144 + 344));
          os_unfair_lock_unlock(*(v144 + 376));
        }

        v135 = v954 + 1;
        if (v954 + 1 == v934)
        {
          sub_1AF5D1564(&v1240);
          goto LABEL_161;
        }
      }

      v949 = v1042;
      v179 = v1324;
      v180 = -v1325;
      v181 = v1321 - v1324;
      v182 = v1321 - v1324 - 1;
      v183 = v148 - 32;
      v184 = v149 - 16;
LABEL_139:
      v185 = -v179;
      v186 = v182 + v179;
      v187 = &v1226[64 * (v181 + v179) + 509];
      v188 = v150;
      v189 = v184;
      v190 = v147;
      v191 = (v183 + (v179 << 6));
      while (v180 != v185)
      {
        v190 += 16;
        --v185;
        ++v186;
        v187 += 64;
        v191 += 4;
        v189 += 16;
        v188 += 16;
        if (v186 <= 7)
        {
          v192 = *v191;
          v193 = vabsq_f32(*v191);
          v195 = v193.f32[0] > 0.00000011921 || v193.f32[1] > 0.00000011921 || v193.f32[2] > 0.00000011921;
          v1127 = v150;
          v944 = v144;
          v1114 = v181;
          v1097 = v182;
          if (v195)
          {
            v196 = vmulq_f32(v192, v192);
            *&v197 = v196.f32[2] + vaddv_f32(*v196.f32);
            *v196.f32 = vrsqrte_f32(v197);
            *v196.f32 = vmul_f32(*v196.f32, vrsqrts_f32(v197, vmul_f32(*v196.f32, *v196.f32)));
            v198 = vmulq_n_f32(v192, vmul_f32(*v196.f32, vrsqrts_f32(v197, vmul_f32(*v196.f32, *v196.f32))).f32[0]);
            v198.i32[3] = v906;
            v1059 = v198;
          }

          else
          {
            v1059 = 0u;
          }

          v199 = v188 + 16 * v179;
          v200 = v190 + 16 * v179;
          v201 = *(v200 - 12);
          v1150 = *(v200 - 8);
          v1020 = *(v189 + 16 * v179);
          v1027 = *(v200 - 16);
          v202 = *(v199 - 16);
          v203 = *(v199 - 8);
          v1035 = v191[-1];
          v1044 = v191[-2];
          v1343.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1044.f32[0]), xmmword_1AFE20160, *v1044.f32, 1), xmmword_1AFE20180, v1044, 2), v1109, v1044, 3);
          v1343.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1035.f32[0]), xmmword_1AFE20160, *v1035.f32, 1), xmmword_1AFE20180, v1035, 2), v1109, v1035, 3);
          v1068 = *v191;
          v1343.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v192.f32[0]), xmmword_1AFE20160, *v192.f32, 1), xmmword_1AFE20180, v192, 2), v1109, v192, 3);
          v1052 = v191[1];
          v1343.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1052.f32[0]), xmmword_1AFE20160, *v1052.f32, 1), xmmword_1AFE20180, v1052, 2), v1109, v1052, 3);
          v1344 = __invert_f4(v1343);
          v1004 = v1344.columns[1];
          v1012 = v1344.columns[0];
          v998 = v1344.columns[2];
          v981 = v1344.columns[3];
          v1217 = 0u;
          v1218 = 0u;
          v1219 = 0u;
          memset(v1220, 0, 28);
          v204 = *&v1150 + 0.0001;
          if (*&v1150 < -100000.0)
          {
            v204 = -100000.0;
          }

          if (*(&v1150 + 1) > v204)
          {
            v204 = *(&v1150 + 1);
          }

          v976 = v204;
          v1087 = v183;
          v205 = v147;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v136 = sub_1AF4229F8(0, *(v136 + 2) + 1, 1, v136);
          }

          v207 = *(v136 + 2);
          v206 = *(v136 + 3);
          if (v207 >= v206 >> 1)
          {
            v136 = sub_1AF4229F8(v206 > 1, v207 + 1, 1, v136);
          }

          v179 = -v185;
          v208.i32[1] = HIDWORD(v1150);
          *v208.i32 = v976 - fmaxf(*&v1150, -100000.0);
          *v209.i8 = vdiv_f32(__PAIR64__(LODWORD(v976), v1135), vdup_lane_s32(v208, 0));
          v210.i64[0] = 0;
          v210.i32[2] = 0;
          *&v210.i32[3] = (v201 - v201) / (-v201 - v201);
          v211.i32[0] = 0;
          v211.i32[2] = 0;
          *&v211.i32[1] = 2.0 / (v201 + v201);
          v209.i64[1] = v209.i64[0];
          v212 = vzip2q_s32(v210, v209);
          v211.i32[3] = v210.i32[3];
          v213 = vzip2q_s32(v211, xmmword_1AFE201A0);
          v977 = vzip2q_s32(v211.u32[1], vzip1q_s32(v211.u64[0], 0));
          v910 = vzip1q_s32(v212, v213);
          v907 = v211.u32[1];
          v908 = vzip2q_s32(v212, v213);
          *&v214 = vmulq_f32(vmulq_n_f32(v1020, v1027), v983).u64[0];
          *(&v214 + 2) = vmuls_lane_f32(v1027, v1020, 2) * 0.0014641;
          HIDWORD(v214) = 0;
          v1028 = v214;
          v1345.columns[1] = v1035;
          v1345.columns[0] = v1044;
          v1345.columns[2] = v1068;
          v1345.columns[3] = v1052;
          v1346 = __invert_f4(v1345);
          *(v136 + 2) = v207 + 1;
          v215 = &v136[160 * v207];
          *(v215 + 32) = v1346;
          *(v215 + 6) = v907;
          *(v215 + 7) = v977;
          *(v215 + 8) = v910;
          *(v215 + 9) = v908;
          *(v215 + 20) = v1150;
          *(v215 + 11) = v994;
          v1162 = v136;
          v1346.columns[0] = *(v203 + 32);
          *(v187 - 45) = v1028;
          *(v187 - 41) = v1059;
          *(v187 - 37) = v1012;
          *(v187 - 33) = v1004;
          *(v187 - 29) = v998;
          *(v187 - 25) = v981;
          *(v187 - 21) = v907;
          *(v187 - 17) = v977;
          *(v187 - 13) = v910;
          *(v187 - 9) = v908;
          *(v187 - 5) = v1346.columns[0];
          *(v187 - 1) = v202;
          *(v187 + 15) = *(v1220 + 12);
          v1346.columns[0] = v1220[0];
          *(v187 + 2) = v1219;
          *(v187 + 3) = v1346.columns[0];
          v1346.columns[1] = v1218;
          *v187 = v1217;
          *(v187 + 1) = v1346.columns[1];
          v150 = v1127;
          v144 = v944;
          v147 = v205;
          v181 = v1114;
          v182 = v1097;
          v183 = v1087;
          goto LABEL_139;
        }
      }

      goto LABEL_135;
    }

    goto LABEL_161;
  }

  v60 = 0;
LABEL_103:
  v56 = v941;
  v134 = v982;
  if (v982)
  {
    goto LABEL_104;
  }

LABEL_161:
  if (v904 != 0 && v901 && v936)
  {
    v216 = *(v967 + 32);
    v217 = *(v889 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v1181 = v904;
    v1182 = HIDWORD(v888);
    v1183 = v887;
    v1184 = v890;
    v1185 = v888;
    v1186 = v891;
    sub_1AF5D15C0(&v1249, v1221);
    v218 = 0;
    v1069 = v217;
    v1078 = v216;
    while (1)
    {
      v1045 = v60;
      v1088 = v218;
      v219 = (v930 + 48 * v218);
      v1151 = *v219;
      v220 = v219[2];
      v1136 = v219[1];
      v221 = *(v219 + 2);
      v222 = *(v219 + 3);
      v224 = *(v219 + 4);
      v223 = *(v219 + 5);
      if (v217)
      {
        v225 = *(v223 + 376);

        os_unfair_lock_lock(v225);
        os_unfair_lock_lock(*(v223 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v216);
      v226 = *(v967 + 64);
      v1318[0] = *(v967 + 48);
      v1318[1] = v226;
      v1319 = *(v967 + 80);
      v227 = *(v967 + 32);
      v228 = *(*(*(*(v223 + 40) + 16) + 32) + 16) + 1;

      *(v967 + 48) = ecs_stack_allocator_allocate(v227, 48 * v228, 8);
      *(v967 + 56) = v228;
      *(v967 + 72) = 0;
      *(v967 + 80) = 0;
      *(v967 + 64) = 0;

      v229 = sub_1AF64B110(&type metadata for PointLight, &off_1F252AB60, v221, v222, v224, v967);
      v230 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v221, v222, v224, v967);
      v231 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v221, v222, v224, v967);
      v234 = v231;
      if (v221)
      {
        if (v224)
        {
          v235 = (v230 + 48);
          v236 = &v1226[156 * v220 + 1186];
          v237 = v229 + 8;
          v216 = v1078;
          v238 = v1088;
          do
          {
            if (v220 <= 7)
            {
              v239 = *(v237 - 8);
              v240 = *(v237 - 4);
              LODWORD(v233) = *(v237 + 4);
              v1137 = *v235;
              v1152 = *v234;
              *&v232 = fmaxf(*v237, 0.0001);
              if (*&v233 <= (*&v232 + 0.0001))
              {
                *&v233 = *&v232 + 0.0001;
              }

              sub_1AF6A6AFC(1, v232, v233, xmmword_1AFE62A90);
              v241 = vsubq_f32(v1137, v1106);
              v241.i32[3] = 0;
              *&v242 = vmulq_n_f32(v1152, v239 * 0.00011651).u64[0];
              *(&v242 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v239 * 0.00011651, v1152, 2));
              *(v236 - 146) = v242;
              *(v236 - 142) = v241;
              bzero(v236 - 138, 0x224uLL);
              *(v236 - 1) = 1.0 / (v240 * v240);
              HIDWORD(v232) = 0;
              *v236 = 0u;
              *(v236 + 1) = 0u;
              *(v236 + 4) = 0;
            }

            ++v234;
            v235 += 4;
            v236 += 156;
            v237 += 16;
            ++v220;
            --v224;
          }

          while (v224);
          goto LABEL_185;
        }

        v216 = v1078;
      }

      else
      {
        v243 = (v230 + (v1151 << 6) + 48);
        v244 = v1136 - v1151;
        v245 = &v1226[156 * v220 + 1186];
        v246 = v229 + 16 * v1151 + 8;
        v247 = (v231 + 16 * v1151);
        v216 = v1078;
        while (v244)
        {
          if (v220 < 8)
          {
            v248 = *(v246 - 8);
            v249 = *(v246 - 4);
            LODWORD(v233) = *(v246 + 4);
            v1138 = *v243;
            v1153 = *v247;
            *&v232 = fmaxf(*v246, 0.0001);
            if (*&v233 <= (*&v232 + 0.0001))
            {
              *&v233 = *&v232 + 0.0001;
            }

            sub_1AF6A6AFC(1, v232, v233, xmmword_1AFE62A90);
            v250 = vsubq_f32(v1138, v1106);
            v250.i32[3] = 0;
            *&v251 = vmulq_n_f32(v1153, v248 * 0.00011651).u64[0];
            *(&v251 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v248 * 0.00011651, v1153, 2));
            *(v245 - 146) = v251;
            *(v245 - 142) = v250;
            bzero(v245 - 138, 0x224uLL);
            *(v245 - 1) = 1.0 / (v249 * v249);
            HIDWORD(v232) = 0;
            *v245 = 0u;
            *(v245 + 1) = 0u;
            *(v245 + 4) = 0;
          }

          v243 += 4;
          --v244;
          ++v220;
          v245 += 156;
          v246 += 16;
          ++v247;
        }
      }

      v238 = v1088;
LABEL_185:
      v60 = v1045;
      sub_1AF630994(v967, &v1181, v1318);
      sub_1AF62D29C(v223);
      ecs_stack_allocator_pop_snapshot(v216);
      v217 = v1069;
      if (v1069)
      {
        os_unfair_lock_unlock(*(v223 + 344));
        os_unfair_lock_unlock(*(v223 + 376));
      }

      v218 = v238 + 1;
      if (v218 == v936)
      {
        sub_1AF5D1564(&v1249);
        break;
      }
    }
  }

  if (v929 && v927 >= 1 && v924)
  {
    v252 = v938[4];
    v935 = *(v922 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    sub_1AF5D15C0(&v1258, v1221);
    v253 = 0;
    v254 = vrsqrteq_f32(xmmword_1AFE208C0);
    v255 = vmulq_f32(v254, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v254, v254)));
    v993 = vmulq_f32(v255, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v255, v255)));
    v256 = vmulq_f32(v993, xmmword_1AFE20650);
    v257 = v256.f32[2];
    v986 = vextq_s8(vuzp1q_s32(v256, v256), v256, 0xCuLL);
    v258 = vmlaq_f32(vmulq_f32(v986, xmmword_1AFE213C0), xmmword_1AFE20180, v256);
    v259 = vextq_s8(vuzp1q_s32(v258, v258), v258, 0xCuLL);
    v260 = vmulq_f32(v258, v258);
    v971 = v260.f32[2];
    v973 = v260.i64[0];
    v978 = v259;
    v968 = v260.f32[1];
    v990 = v256;
    v963 = vnegq_f32(v256);
    v966 = vextq_s8(vextq_s8(v256, v256, 0xCuLL), v256, 8uLL);
    v937 = v252;
    while (1)
    {
      v261 = v60;
      v933 = v253;
      v262 = (v917 + 48 * v253);
      v263 = *v262;
      v264 = v262[1];
      v265 = v262[2];
      v266 = *(v262 + 2);
      v267 = *(v262 + 3);
      v268 = *(v262 + 4);
      v269 = *(v262 + 5);
      if (v935)
      {
        v270 = *(v269 + 376);

        os_unfair_lock_lock(v270);
        os_unfair_lock_lock(*(v269 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v937);

      sub_1AF630914(v271, v938, v1294);

      LOBYTE(v1221[0]) = 1;
      v1306[0] = v922;
      v1306[1] = v269;
      v1306[2] = v938;
      v1307 = v265;
      v1308 = (v264 - v263 + v265);
      v1309 = v927;
      v1310 = v263;
      v1311 = v264;
      v1312 = 0;
      v1313 = 0;
      v1314 = 1;
      v1315 = v266;
      v1316 = v267;
      v1317 = v268;
      v60 = v261;
      v272 = sub_1AF705A20(v269, v1306);
      v273 = sub_1AF705994(v269, v1306);
      v274 = sub_1AF70596C(v269, v1306);
      v931 = v269;
      v275 = sub_1AF705944(v269, v1306);
      if (!v1315)
      {
        break;
      }

      v276 = v1317;
      if (v1317)
      {
        v277 = 0;
        v278 = v1307;
        v955 = v273;
        v959 = v272;
        v945 = v275;
        v950 = v274;
        while (v278 + v277 > 0)
        {
LABEL_199:
          if (++v277 == v276)
          {
            goto LABEL_317;
          }
        }

        v279 = v275 + 16 * v277;
        v280 = (v273 + (v277 << 6));
        v281 = (v272 + 16 * v277);
        v282 = *v281;
        v283 = v281[1];
        v284 = v281[2];
        v285 = v281[3];
        v1139 = v280[1];
        v1154 = *v280;
        v289 = *(v274 + 16 * v277);
        v288 = v280[3];
        v1115 = v289;
        v1128 = v280[2];
        v1098 = v288;
        v286 = *v279;
        v287 = *(v279 + 8);
        v288.f32[0] = fmaxf(v284, 0.0001);
        v289.f32[0] = v288.f32[0] + 0.0001;
        if (v285 > (v288.f32[0] + 0.0001))
        {
          v289.f32[0] = v281[3];
        }

        v290.n128_f64[0] = sub_1AF6A6AFC(1, *v288.i64, *v289.i64, xmmword_1AFE62A90);
        v1060 = v291;
        v1070 = v290;
        v1079 = v293;
        v1089 = v292;
        v294 = vsubq_f32(v1098, v1106);
        v294.i32[3] = 0;
        v1046 = v294;
        bzero(&v1221[2], 0x250uLL);
        *&v295 = vmulq_n_f32(v1115, v282 * 0.00011651).u64[0];
        *(&v295 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v282 * 0.00011651, v1115, 2));
        v1221[0] = v295;
        v1221[1] = v1046;
        *(&v1221[36] + 1) = 1.0 / (v283 * v283);
        sub_1AF5D1624(0, &qword_1EB638540, type metadata accessor for simd_quatf);
        v296 = swift_allocObject();
        v297 = v296;
        v298.i32[1] = HIDWORD(v973);
        *v298.i32 = v968 + (v971 + *&v973);
        v299 = vdupq_lane_s32(v298, 0);
        v299.i32[3] = 0;
        v300 = vrsqrteq_f32(v299);
        v301 = vmulq_f32(v300, vrsqrtsq_f32(v299, vmulq_f32(v300, v300)));
        v302 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v298.i32 != 0.0)), 0x1FuLL));
        v302.i32[3] = 0;
        v303 = vbslq_s8(vcltzq_s32(v302), vmulq_f32(vmulq_f32(v301, vrsqrtsq_f32(v299, vmulq_f32(v301, v301))), v978), v966);
        v304 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v303, v303), v303, 0xCuLL), v963), v303, v986);
        v305 = vextq_s8(vuzp1q_s32(v304, v304), v304, 0xCuLL);
        v306 = vmulq_f32(v304, v304);
        *&v307 = v306.f32[1] + (v306.f32[2] + v306.f32[0]);
        *v306.f32 = vrsqrte_f32(v307);
        *v306.f32 = vmul_f32(*v306.f32, vrsqrts_f32(v307, vmul_f32(*v306.f32, *v306.f32)));
        v308 = vmulq_n_f32(v305, vmul_f32(*v306.f32, vrsqrts_f32(v307, vmul_f32(*v306.f32, *v306.f32))).f32[0]);
        v309 = v257 + (v303.f32[0] + *&v308.i32[1]);
        if (v309 > 0.0)
        {
          v310 = sqrtf(v309 + 1.0);
          v311 = vzip2q_s32(v308, vuzp1q_s32(v308, v990));
          v311.i32[2] = v303.i32[1];
          v312 = vtrn2q_s32(v990, vzip2q_s32(v990, v303));
          v312.i32[2] = v308.i32[0];
          v313 = vsubq_f32(v311, v312);
          v311.f32[3] = v310;
          v312.f32[3] = v310;
          v313.i32[3] = vmulq_f32(v311, v312).i32[3];
          v314 = vmulq_n_f32(v313, 0.5 / v310);
          v315 = v993;
          v317 = xmmword_1AFE20180;
          v316 = xmmword_1AFE213C0;
          goto LABEL_212;
        }

        v315 = v993;
        v317 = xmmword_1AFE20180;
        v316 = xmmword_1AFE213C0;
        if (v303.f32[0] >= v257 && v303.f32[0] >= *&v308.i32[1])
        {
          v318 = sqrtf(((v303.f32[0] + 1.0) - *&v308.i32[1]) - v257);
          v319 = vdup_lane_s32(*v308.i8, 0);
          v320 = vadd_f32(*v303.f32, v319);
          v319.f32[0] = v318;
          v321.i32[0] = vmul_f32(__PAIR64__(v303.u32[1], LODWORD(v318)), v319).u32[0];
          v321.i32[1] = v320.i32[1];
          v321.f32[2] = *v990.i32 + v303.f32[2];
          v321.f32[3] = *&v308.i32[2] - *&v990.i32[1];
          goto LABEL_211;
        }

        v322 = vextq_s8(v303, v303, 8uLL).u64[0];
        if (*&v308.i32[1] <= v257)
        {
          v318 = sqrtf(((v257 + 1.0) - v303.f32[0]) - *&v308.i32[1]);
          v325 = vzip1_s32(v322, *&vextq_s8(v308, v308, 8uLL));
          v326 = __PAIR64__(v303.u32[1], LODWORD(v318));
          v327 = vdup_lane_s32(*v308.i8, 0);
          *v321.f32 = vadd_f32(*v990.i8, v325);
          v328 = vsub_f32(*v303.f32, v327);
          v327.f32[0] = v318;
          v327.i32[0] = vmul_f32(v326, v327).u32[0];
          v327.i32[1] = v328.i32[1];
          *&v321.u32[2] = v327;
LABEL_211:
          v314 = vmulq_n_f32(v321, 0.5 / v318);
        }

        else
        {
          v323 = sqrtf(((*&v308.i32[1] + 1.0) - v303.f32[0]) - v257);
          v324.f32[0] = v303.f32[1] + *v308.i32;
          v324.f32[1] = v323 * v323;
          *&v324.u32[2] = vext_s8(vadd_f32(*v990.i8, vdup_laneq_s32(v308, 2)), vsub_f32(*v990.i8, v322), 4uLL);
          v314 = vmulq_n_f32(v324, 0.5 / v323);
        }

LABEL_212:
        v296[2] = v314;
        v329 = vmulq_f32(v315, xmmword_1AFE20150);
        v330 = vextq_s8(vuzp1q_s32(v329, v329), v329, 0xCuLL);
        v331 = vmlaq_f32(vmulq_f32(v330, v316), v317, v329);
        v332 = vextq_s8(vuzp1q_s32(v331, v331), v331, 0xCuLL);
        v333 = vmulq_f32(v331, v331);
        v333.f32[0] = v333.f32[1] + (v333.f32[2] + v333.f32[0]);
        v334 = vdupq_lane_s32(*v333.f32, 0);
        v334.i32[3] = 0;
        v335 = vrsqrteq_f32(v334);
        v336 = vmulq_f32(v335, vrsqrtsq_f32(v334, vmulq_f32(v335, v335)));
        v337 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v333.f32[0] != 0.0)), 0x1FuLL));
        v337.i32[3] = 0;
        v338 = vbslq_s8(vcltzq_s32(v337), vmulq_f32(v332, vmulq_f32(v336, vrsqrtsq_f32(v334, vmulq_f32(v336, v336)))), vextq_s8(vextq_s8(v329, v329, 0xCuLL), v329, 8uLL));
        v339 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v338, v338), v338, 0xCuLL), vnegq_f32(v329)), v338, v330);
        v340 = vextq_s8(vuzp1q_s32(v339, v339), v339, 0xCuLL);
        v341 = vmulq_f32(v339, v339);
        *&v342 = v341.f32[1] + (v341.f32[2] + v341.f32[0]);
        *v341.f32 = vrsqrte_f32(v342);
        *v341.f32 = vmul_f32(*v341.f32, vrsqrts_f32(v342, vmul_f32(*v341.f32, *v341.f32)));
        v343 = vmulq_n_f32(v340, vmul_f32(*v341.f32, vrsqrts_f32(v342, vmul_f32(*v341.f32, *v341.f32))).f32[0]);
        v344 = v329.f32[2] + (v338.f32[0] + *&v343.i32[1]);
        if (v344 <= 0.0)
        {
          if (v338.f32[0] < v329.f32[2] || v338.f32[0] < *&v343.i32[1])
          {
            v353 = vextq_s8(v338, v338, 8uLL).u64[0];
            if (*&v343.i32[1] <= v329.f32[2])
            {
              v356 = vzip1_s32(v353, *&vextq_s8(v343, v343, 8uLL));
              v357 = __PAIR64__(v338.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v329.f32[2] + 1.0) - v338.f32[0]) - *&v343.i32[1])));
              v358 = vdup_lane_s32(*v343.i8, 0);
              *v359.f32 = vadd_f32(*v329.f32, v356);
              v360 = vsub_f32(*v338.f32, v358);
              v358.i32[0] = v357.i32[0];
              v358.i32[0] = vmul_f32(v357, v358).u32[0];
              v358.i32[1] = v360.i32[1];
              *&v359.u32[2] = v358;
              v348 = vmulq_n_f32(v359, 0.5 / v357.f32[0]);
            }

            else
            {
              v354 = sqrtf(((*&v343.i32[1] + 1.0) - v338.f32[0]) - v329.f32[2]);
              v355.f32[0] = v338.f32[1] + *v343.i32;
              v355.f32[1] = v354 * v354;
              *&v355.u32[2] = vext_s8(vadd_f32(*v329.f32, vdup_laneq_s32(v343, 2)), vsub_f32(*v329.f32, v353), 4uLL);
              v348 = vmulq_n_f32(v355, 0.5 / v354);
            }
          }

          else
          {
            v349 = sqrtf(((v338.f32[0] + 1.0) - *&v343.i32[1]) - v329.f32[2]);
            v350 = vdup_lane_s32(*v343.i8, 0);
            v351 = vadd_f32(*v338.f32, v350);
            v350.f32[0] = v349;
            v352.i32[0] = vmul_f32(__PAIR64__(v338.u32[1], LODWORD(v349)), v350).u32[0];
            v352.i32[1] = v351.i32[1];
            v352.f32[2] = v329.f32[0] + v338.f32[2];
            v352.f32[3] = *&v343.i32[2] - v329.f32[1];
            v348 = vmulq_n_f32(v352, 0.5 / v349);
          }
        }

        else
        {
          v345 = vzip2q_s32(v343, vuzp1q_s32(v343, v329));
          v345.i32[2] = v338.i32[1];
          v346 = vtrn2q_s32(v329, vzip2q_s32(v329, v338));
          v346.i32[2] = v343.i32[0];
          v347 = vsubq_f32(v345, v346);
          v345.i32[3] = sqrtf(v344 + 1.0);
          v346.i32[3] = v345.i32[3];
          v347.i32[3] = vmulq_f32(v345, v346).i32[3];
          v348 = vmulq_n_f32(v347, 0.5 / v345.f32[3]);
        }

        v296[3] = v348;
        v361 = vmulq_f32(v315, xmmword_1AFE20B60);
        v362 = vextq_s8(vuzp1q_s32(v361, v361), v361, 0xCuLL);
        v363 = vmlaq_f32(vmulq_f32(v362, xmmword_1AFE213B0), xmmword_1AFE20150, v361);
        v364 = vextq_s8(vuzp1q_s32(v363, v363), v363, 0xCuLL);
        v365 = vmulq_f32(v363, v363);
        v365.f32[0] = v365.f32[1] + (v365.f32[2] + v365.f32[0]);
        v366 = vdupq_lane_s32(*v365.f32, 0);
        v366.i32[3] = 0;
        v367 = vrsqrteq_f32(v366);
        v368 = vmulq_f32(v367, vrsqrtsq_f32(v366, vmulq_f32(v367, v367)));
        v369 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v365.f32[0] != 0.0)), 0x1FuLL));
        v369.i32[3] = 0;
        v370 = vbslq_s8(vcltzq_s32(v369), vmulq_f32(v364, vmulq_f32(v368, vrsqrtsq_f32(v366, vmulq_f32(v368, v368)))), vextq_s8(vextq_s8(v361, v361, 0xCuLL), v361, 8uLL));
        v371 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v370, v370), v370, 0xCuLL), vnegq_f32(v361)), v370, v362);
        v372 = vextq_s8(vuzp1q_s32(v371, v371), v371, 0xCuLL);
        v373 = vmulq_f32(v371, v371);
        *&v374 = v373.f32[1] + (v373.f32[2] + v373.f32[0]);
        *v373.f32 = vrsqrte_f32(v374);
        *v373.f32 = vmul_f32(*v373.f32, vrsqrts_f32(v374, vmul_f32(*v373.f32, *v373.f32)));
        v375 = vmulq_n_f32(v372, vmul_f32(*v373.f32, vrsqrts_f32(v374, vmul_f32(*v373.f32, *v373.f32))).f32[0]);
        v376 = v361.f32[2] + (v370.f32[0] + *&v375.i32[1]);
        if (v376 > 0.0)
        {
          v377 = sqrtf(v376 + 1.0);
          v378 = vzip2q_s32(v375, vuzp1q_s32(v375, v361));
          v378.i32[2] = v370.i32[1];
          v379 = vtrn2q_s32(v361, vzip2q_s32(v361, v370));
          v379.i32[2] = v375.i32[0];
          v380 = vsubq_f32(v378, v379);
          v378.f32[3] = v377;
          v379.f32[3] = v377;
          v380.i32[3] = vmulq_f32(v378, v379).i32[3];
          goto LABEL_222;
        }

        if (v370.f32[0] < v361.f32[2] || v370.f32[0] < *&v375.i32[1])
        {
          v386 = vextq_s8(v370, v370, 8uLL).u64[0];
          if (*&v375.i32[1] <= v361.f32[2])
          {
            v377 = sqrtf(((v361.f32[2] + 1.0) - v370.f32[0]) - *&v375.i32[1]);
            v416 = vzip1_s32(v386, *&vextq_s8(v375, v375, 8uLL));
            v417 = __PAIR64__(v370.u32[1], LODWORD(v377));
            v418 = vdup_lane_s32(*v375.i8, 0);
            *v380.f32 = vadd_f32(*v361.f32, v416);
            v419 = vsub_f32(*v370.f32, v418);
            v418.f32[0] = v377;
            v418.i32[0] = vmul_f32(v417, v418).u32[0];
            v418.i32[1] = v419.i32[1];
            *&v380.u32[2] = v418;
LABEL_222:
            v381 = vmulq_n_f32(v380, 0.5 / v377);
          }

          else
          {
            v387 = sqrtf(((*&v375.i32[1] + 1.0) - v370.f32[0]) - v361.f32[2]);
            v388.f32[0] = v370.f32[1] + *v375.i32;
            v388.f32[1] = v387 * v387;
            *&v388.u32[2] = vext_s8(vadd_f32(*v361.f32, vdup_laneq_s32(v375, 2)), vsub_f32(*v361.f32, v386), 4uLL);
            v381 = vmulq_n_f32(v388, 0.5 / v387);
          }
        }

        else
        {
          v382 = sqrtf(((v370.f32[0] + 1.0) - *&v375.i32[1]) - v361.f32[2]);
          v383 = vdup_lane_s32(*v375.i8, 0);
          v384 = vadd_f32(*v370.f32, v383);
          v383.f32[0] = v382;
          v385.i32[0] = vmul_f32(__PAIR64__(v370.u32[1], LODWORD(v382)), v383).u32[0];
          v385.i32[1] = v384.i32[1];
          v385.f32[2] = v361.f32[0] + v370.f32[2];
          v385.f32[3] = *&v375.i32[2] - v361.f32[1];
          v381 = vmulq_n_f32(v385, 0.5 / v382);
        }

        v296[4] = v381;
        v389 = vmulq_f32(v315, xmmword_1AFE20160);
        v390 = vextq_s8(vuzp1q_s32(v389, v389), v389, 0xCuLL);
        v391 = vmlaq_f32(vmulq_f32(v390, xmmword_1AFE62AC0), xmmword_1AFE20650, v389);
        v392 = vextq_s8(vuzp1q_s32(v391, v391), v391, 0xCuLL);
        v393 = vmulq_f32(v391, v391);
        v393.f32[0] = v393.f32[1] + (v393.f32[2] + v393.f32[0]);
        v394 = vdupq_lane_s32(*v393.f32, 0);
        v394.i32[3] = 0;
        v395 = vrsqrteq_f32(v394);
        v396 = vmulq_f32(v395, vrsqrtsq_f32(v394, vmulq_f32(v395, v395)));
        v397 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v393.f32[0] != 0.0)), 0x1FuLL));
        v397.i32[3] = 0;
        v398 = vbslq_s8(vcltzq_s32(v397), vmulq_f32(v392, vmulq_f32(v396, vrsqrtsq_f32(v394, vmulq_f32(v396, v396)))), vextq_s8(vextq_s8(v389, v389, 0xCuLL), v389, 8uLL));
        v399 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v398, v398), v398, 0xCuLL), vnegq_f32(v389)), v398, v390);
        v400 = vextq_s8(vuzp1q_s32(v399, v399), v399, 0xCuLL);
        v401 = vmulq_f32(v399, v399);
        *&v402 = v401.f32[1] + (v401.f32[2] + v401.f32[0]);
        *v401.f32 = vrsqrte_f32(v402);
        *v401.f32 = vmul_f32(*v401.f32, vrsqrts_f32(v402, vmul_f32(*v401.f32, *v401.f32)));
        v403 = vmulq_n_f32(v400, vmul_f32(*v401.f32, vrsqrts_f32(v402, vmul_f32(*v401.f32, *v401.f32))).f32[0]);
        v404 = v389.f32[2] + (v398.f32[0] + *&v403.i32[1]);
        if (v404 <= 0.0)
        {
          if (v398.f32[0] < v389.f32[2] || v398.f32[0] < *&v403.i32[1])
          {
            v413 = vextq_s8(v398, v398, 8uLL).u64[0];
            if (*&v403.i32[1] <= v389.f32[2])
            {
              v420 = vzip1_s32(v413, *&vextq_s8(v403, v403, 8uLL));
              v421 = __PAIR64__(v398.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v389.f32[2] + 1.0) - v398.f32[0]) - *&v403.i32[1])));
              v422 = vdup_lane_s32(*v403.i8, 0);
              *v423.f32 = vadd_f32(*v389.f32, v420);
              v424 = vsub_f32(*v398.f32, v422);
              v422.i32[0] = v421.i32[0];
              v422.i32[0] = vmul_f32(v421, v422).u32[0];
              v422.i32[1] = v424.i32[1];
              *&v423.u32[2] = v422;
              v408 = vmulq_n_f32(v423, 0.5 / v421.f32[0]);
            }

            else
            {
              v414 = sqrtf(((*&v403.i32[1] + 1.0) - v398.f32[0]) - v389.f32[2]);
              v415.f32[0] = v398.f32[1] + *v403.i32;
              v415.f32[1] = v414 * v414;
              *&v415.u32[2] = vext_s8(vadd_f32(*v389.f32, vdup_laneq_s32(v403, 2)), vsub_f32(*v389.f32, v413), 4uLL);
              v408 = vmulq_n_f32(v415, 0.5 / v414);
            }
          }

          else
          {
            v409 = sqrtf(((v398.f32[0] + 1.0) - *&v403.i32[1]) - v389.f32[2]);
            v410 = vdup_lane_s32(*v403.i8, 0);
            v411 = vadd_f32(*v398.f32, v410);
            v410.f32[0] = v409;
            v412.i32[0] = vmul_f32(__PAIR64__(v398.u32[1], LODWORD(v409)), v410).u32[0];
            v412.i32[1] = v411.i32[1];
            v412.f32[2] = v389.f32[0] + v398.f32[2];
            v412.f32[3] = *&v403.i32[2] - v389.f32[1];
            v408 = vmulq_n_f32(v412, 0.5 / v409);
          }
        }

        else
        {
          v405 = vzip2q_s32(v403, vuzp1q_s32(v403, v389));
          v405.i32[2] = v398.i32[1];
          v406 = vtrn2q_s32(v389, vzip2q_s32(v389, v398));
          v406.i32[2] = v403.i32[0];
          v407 = vsubq_f32(v405, v406);
          v405.i32[3] = sqrtf(v404 + 1.0);
          v406.i32[3] = v405.i32[3];
          v407.i32[3] = vmulq_f32(v405, v406).i32[3];
          v408 = vmulq_n_f32(v407, 0.5 / v405.f32[3]);
        }

        v296[5] = v408;
        v425 = vmulq_f32(v315, xmmword_1AFE206C0);
        v426 = vextq_s8(vuzp1q_s32(v425, v425), v425, 0xCuLL);
        v427 = vmlaq_f32(vmulq_f32(v426, v316), v317, v425);
        v428 = vextq_s8(vuzp1q_s32(v427, v427), v427, 0xCuLL);
        v429 = vmulq_f32(v427, v427);
        v429.f32[0] = v429.f32[1] + (v429.f32[2] + v429.f32[0]);
        v430 = vdupq_lane_s32(*v429.f32, 0);
        v430.i32[3] = 0;
        v431 = vrsqrteq_f32(v430);
        v432 = vmulq_f32(v431, vrsqrtsq_f32(v430, vmulq_f32(v431, v431)));
        v433 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v429.f32[0] != 0.0)), 0x1FuLL));
        v433.i32[3] = 0;
        v434 = vbslq_s8(vcltzq_s32(v433), vmulq_f32(v428, vmulq_f32(v432, vrsqrtsq_f32(v430, vmulq_f32(v432, v432)))), vextq_s8(vextq_s8(v425, v425, 0xCuLL), v425, 8uLL));
        v435 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v434, v434), v434, 0xCuLL), vnegq_f32(v425)), v434, v426);
        v436 = vextq_s8(vuzp1q_s32(v435, v435), v435, 0xCuLL);
        v437 = vmulq_f32(v435, v435);
        *&v438 = v437.f32[1] + (v437.f32[2] + v437.f32[0]);
        *v437.f32 = vrsqrte_f32(v438);
        *v437.f32 = vmul_f32(*v437.f32, vrsqrts_f32(v438, vmul_f32(*v437.f32, *v437.f32)));
        v439 = vmulq_n_f32(v436, vmul_f32(*v437.f32, vrsqrts_f32(v438, vmul_f32(*v437.f32, *v437.f32))).f32[0]);
        v440 = v425.f32[2] + (v434.f32[0] + *&v439.i32[1]);
        if (v440 <= 0.0)
        {
          if (v434.f32[0] < v425.f32[2] || v434.f32[0] < *&v439.i32[1])
          {
            v449 = vextq_s8(v434, v434, 8uLL).u64[0];
            if (*&v439.i32[1] <= v425.f32[2])
            {
              v452 = vzip1_s32(v449, *&vextq_s8(v439, v439, 8uLL));
              v453 = __PAIR64__(v434.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v425.f32[2] + 1.0) - v434.f32[0]) - *&v439.i32[1])));
              v454 = vdup_lane_s32(*v439.i8, 0);
              *v455.f32 = vadd_f32(*v425.f32, v452);
              v456 = vsub_f32(*v434.f32, v454);
              v454.i32[0] = v453.i32[0];
              v454.i32[0] = vmul_f32(v453, v454).u32[0];
              v454.i32[1] = v456.i32[1];
              *&v455.u32[2] = v454;
              v444 = vmulq_n_f32(v455, 0.5 / v453.f32[0]);
            }

            else
            {
              v450 = sqrtf(((*&v439.i32[1] + 1.0) - v434.f32[0]) - v425.f32[2]);
              v451.f32[0] = v434.f32[1] + *v439.i32;
              v451.f32[1] = v450 * v450;
              *&v451.u32[2] = vext_s8(vadd_f32(*v425.f32, vdup_laneq_s32(v439, 2)), vsub_f32(*v425.f32, v449), 4uLL);
              v444 = vmulq_n_f32(v451, 0.5 / v450);
            }
          }

          else
          {
            v445 = sqrtf(((v434.f32[0] + 1.0) - *&v439.i32[1]) - v425.f32[2]);
            v446 = vdup_lane_s32(*v439.i8, 0);
            v447 = vadd_f32(*v434.f32, v446);
            v446.f32[0] = v445;
            v448.i32[0] = vmul_f32(__PAIR64__(v434.u32[1], LODWORD(v445)), v446).u32[0];
            v448.i32[1] = v447.i32[1];
            v448.f32[2] = v425.f32[0] + v434.f32[2];
            v448.f32[3] = *&v439.i32[2] - v425.f32[1];
            v444 = vmulq_n_f32(v448, 0.5 / v445);
          }
        }

        else
        {
          v441 = vzip2q_s32(v439, vuzp1q_s32(v439, v425));
          v441.i32[2] = v434.i32[1];
          v442 = vtrn2q_s32(v425, vzip2q_s32(v425, v434));
          v442.i32[2] = v439.i32[0];
          v443 = vsubq_f32(v441, v442);
          v441.i32[3] = sqrtf(v440 + 1.0);
          v442.i32[3] = v441.i32[3];
          v443.i32[3] = vmulq_f32(v441, v442).i32[3];
          v444 = vmulq_n_f32(v443, 0.5 / v441.f32[3]);
        }

        v296[6] = v444;
        v457 = vmulq_f32(v315, v317);
        v458 = vextq_s8(vuzp1q_s32(v457, v457), v457, 0xCuLL);
        v459 = vmlaq_f32(vmulq_f32(v458, v316), v317, v457);
        v460 = vextq_s8(vuzp1q_s32(v459, v459), v459, 0xCuLL);
        v461 = vmulq_f32(v459, v459);
        v461.f32[0] = v461.f32[1] + (v461.f32[2] + v461.f32[0]);
        v462 = vdupq_lane_s32(*v461.f32, 0);
        v462.i32[3] = 0;
        v463 = vrsqrteq_f32(v462);
        v464 = vmulq_f32(v463, vrsqrtsq_f32(v462, vmulq_f32(v463, v463)));
        v465 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v461.f32[0] != 0.0)), 0x1FuLL));
        v465.i32[3] = 0;
        v466 = vbslq_s8(vcltzq_s32(v465), vmulq_f32(v460, vmulq_f32(v464, vrsqrtsq_f32(v462, vmulq_f32(v464, v464)))), vextq_s8(vextq_s8(v457, v457, 0xCuLL), v457, 8uLL));
        v467 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v466, v466), v466, 0xCuLL), vnegq_f32(v457)), v466, v458);
        v468 = vextq_s8(vuzp1q_s32(v467, v467), v467, 0xCuLL);
        v469 = vmulq_f32(v467, v467);
        *&v470 = v469.f32[1] + (v469.f32[2] + v469.f32[0]);
        *v469.f32 = vrsqrte_f32(v470);
        *v469.f32 = vmul_f32(*v469.f32, vrsqrts_f32(v470, vmul_f32(*v469.f32, *v469.f32)));
        v471 = vmulq_n_f32(v468, vmul_f32(*v469.f32, vrsqrts_f32(v470, vmul_f32(*v469.f32, *v469.f32))).f32[0]);
        v472 = v457.f32[2] + (v466.f32[0] + *&v471.i32[1]);
        if (v472 <= 0.0)
        {
          if (v466.f32[0] < v457.f32[2] || v466.f32[0] < *&v471.i32[1])
          {
            v482 = vextq_s8(v466, v466, 8uLL).u64[0];
            v477 = v1098;
            if (*&v471.i32[1] <= v457.f32[2])
            {
              v485 = vzip1_s32(v482, *&vextq_s8(v471, v471, 8uLL));
              v486 = __PAIR64__(v466.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v457.f32[2] + 1.0) - v466.f32[0]) - *&v471.i32[1])));
              v487 = vdup_lane_s32(*v471.i8, 0);
              *v488.f32 = vadd_f32(*v457.f32, v485);
              v489 = vsub_f32(*v466.f32, v487);
              v487.i32[0] = v486.i32[0];
              v487.i32[0] = vmul_f32(v486, v487).u32[0];
              v487.i32[1] = v489.i32[1];
              *&v488.u32[2] = v487;
              v476 = vmulq_n_f32(v488, 0.5 / v486.f32[0]);
            }

            else
            {
              v483 = sqrtf(((*&v471.i32[1] + 1.0) - v466.f32[0]) - v457.f32[2]);
              v484.f32[0] = v466.f32[1] + *v471.i32;
              v484.f32[1] = v483 * v483;
              *&v484.u32[2] = vext_s8(vadd_f32(*v457.f32, vdup_laneq_s32(v471, 2)), vsub_f32(*v457.f32, v482), 4uLL);
              v476 = vmulq_n_f32(v484, 0.5 / v483);
            }
          }

          else
          {
            v478 = sqrtf(((v466.f32[0] + 1.0) - *&v471.i32[1]) - v457.f32[2]);
            v479 = vdup_lane_s32(*v471.i8, 0);
            v480 = vadd_f32(*v466.f32, v479);
            v479.f32[0] = v478;
            v481.i32[0] = vmul_f32(__PAIR64__(v466.u32[1], LODWORD(v478)), v479).u32[0];
            v481.i32[1] = v480.i32[1];
            v481.f32[2] = v457.f32[0] + v466.f32[2];
            v481.f32[3] = *&v471.i32[2] - v457.f32[1];
            v476 = vmulq_n_f32(v481, 0.5 / v478);
            v477 = v1098;
          }
        }

        else
        {
          v473 = vzip2q_s32(v471, vuzp1q_s32(v471, v457));
          v473.i32[2] = v466.i32[1];
          v474 = vtrn2q_s32(v457, vzip2q_s32(v457, v466));
          v474.i32[2] = v471.i32[0];
          v475 = vsubq_f32(v473, v474);
          v473.i32[3] = sqrtf(v472 + 1.0);
          v474.i32[3] = v473.i32[3];
          v475.i32[3] = vmulq_f32(v473, v474).i32[3];
          v476 = vmulq_n_f32(v475, 0.5 / v473.f32[3]);
          v477 = v1098;
        }

        v1155 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1154.f32[0]), xmmword_1AFE20160, *v1154.f32, 1), xmmword_1AFE20180, v1154, 2), v1109, v1154, 3);
        v1140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1139.f32[0]), xmmword_1AFE20160, *v1139.f32, 1), xmmword_1AFE20180, v1139, 2), v1109, v1139, 3);
        v1116 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v477.f32[0]), xmmword_1AFE20160, *v477.f32, 1), xmmword_1AFE20180, v477, 2), v1109, v477, 3);
        v1129 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1128.f32[0]), xmmword_1AFE20160, *v1128.f32, 1), xmmword_1AFE20180, v1128, 2), v1109, v1128, 3);
        v477.i32[3] = v1052.i32[3];
        v1099 = v477;
        v296[7] = v476;
        v490 = &v1221[3];
        for (i = 2; i != 8; ++i)
        {
          *v492.i64 = sub_1AF5B1F1C(v297[i]);
          v1347.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1155, v492.f32[0]), v1140, *v492.f32, 1), v1129, v492, 2), v1116, v492, 3);
          v1347.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1155, v493.f32[0]), v1140, *v493.f32, 1), v1129, v493, 2), v1116, v493, 3);
          v1347.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1155, v494.f32[0]), v1140, *v494.f32, 1), v1129, v494, 2), v1116, v494, 3);
          v1347.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1155, v495.f32[0]), v1140, *v495.f32, 1), v1129, v495, 2), v1116, v495, 3);
          *(v490 - 1) = __invert_f4(v1347);
          v490 += 4;
        }

        swift_getKeyPath();
        v496 = swift_modifyAtWritableKeyPath();
        *&v497 = v282;
        *&v498 = v283;
        sub_1AF5CE944(v499, 6, &v1162, v297, &v1161, v287, v1099, v1070, v1089, v1060, v1079, v497, v498, v284, v500, v501, LODWORD(v285));
        v496(v1296, 0);
        swift_setDeallocating();
        swift_deallocClassInstance();

        v1221[26] = v1070;
        v1221[27] = v1089;
        v1221[28] = v1060;
        v1221[29] = v1079;
        LODWORD(v1221[36]) = v286;
        memcpy(&v1226[156 * v278 + 2288 + 156 * v277], v1221, 0x270uLL);
        v1052.i32[3] = v1099.i32[3];
        v273 = v955;
        v272 = v959;
        v275 = v945;
        v274 = v950;
        goto LABEL_199;
      }

LABEL_317:
      v1175 = v929;
      v1176 = HIDWORD(v915);
      v1177 = v915;
      v1178 = v916;
      v1179 = v914;
      v1180 = v918;
      sub_1AF630994(v938, &v1175, v1294);
      sub_1AF62D29C(v931);
      ecs_stack_allocator_pop_snapshot(v937);
      if (v935)
      {
        os_unfair_lock_unlock(*(v931 + 344));
        os_unfair_lock_unlock(*(v931 + 376));
      }

      v253 = v933 + 1;
      if (v933 + 1 == v924)
      {
        sub_1AF5D1564(&v1258);
        goto LABEL_320;
      }
    }

    v502 = v1310;
    v503 = v1307 - v1310;
    v504 = v1307 - v1310 - 1;
    v505 = v1311;
    v506 = v272 - 8;
    v507 = v275 - 8;
    v508 = v273 - 32;
    v509 = v274 - 16;
    while (2)
    {
      v510 = (v506 + 16 * v502);
      v511 = &v1226[156 * v503 + 2132 + 156 * v502];
      v512 = (v507 + 16 * v502);
      v513 = (v508 + (v502 << 6));
      do
      {
        if (v505 == v502)
        {
          goto LABEL_317;
        }

        ++v502;
        v510 += 4;
        v511 += 156;
        v512 += 2;
        v513 += 4;
      }

      while (v504 + v502 > 0);
      v956 = v507;
      v960 = v506;
      v514 = *(v510 - 2);
      v515 = *(v510 - 1);
      v516 = *v510;
      v517 = v510[1];
      v1141 = v513[-1];
      v1156 = v513[-2];
      v946 = v509;
      v520 = *(v509 + 16 * v502);
      v519 = v513[1];
      v1117 = v520;
      v1130 = *v513;
      v1100 = v519;
      v518 = *(v512 - 2);
      v911 = *v512;
      v519.f32[0] = fmaxf(*v510, 0.0001);
      v520.f32[0] = v519.f32[0] + 0.0001;
      if (v517 > (v519.f32[0] + 0.0001))
      {
        v520.f32[0] = v510[1];
      }

      v521.n128_f64[0] = sub_1AF6A6AFC(1, *v519.i64, *v520.i64, xmmword_1AFE62A90);
      v1061 = v522;
      v1071 = v521;
      v1080 = v524;
      v1090 = v523;
      v525 = vsubq_f32(v1100, v1106);
      v525.i32[3] = 0;
      v909 = v525;
      bzero(&v1221[2], 0x250uLL);
      *&v526 = vmulq_n_f32(v1117, v514 * 0.00011651).u64[0];
      *(&v526 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v514 * 0.00011651, v1117, 2));
      v1221[0] = v526;
      v1221[1] = v909;
      *(&v1221[36] + 1) = 1.0 / (v515 * v515);
      sub_1AF5D1624(0, &qword_1EB638540, type metadata accessor for simd_quatf);
      v527 = swift_allocObject();
      v528 = v527;
      v529.i32[1] = HIDWORD(v973);
      *v529.i32 = v968 + (v971 + *&v973);
      v530 = vdupq_lane_s32(v529, 0);
      v530.i32[3] = 0;
      v531 = vrsqrteq_f32(v530);
      v532 = vmulq_f32(v531, vrsqrtsq_f32(v530, vmulq_f32(v531, v531)));
      v533 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v529.i32 != 0.0)), 0x1FuLL));
      v533.i32[3] = 0;
      v534 = vbslq_s8(vcltzq_s32(v533), vmulq_f32(vmulq_f32(v532, vrsqrtsq_f32(v530, vmulq_f32(v532, v532))), v978), v966);
      v535 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v534, v534), v534, 0xCuLL), v963), v534, v986);
      v536 = vextq_s8(vuzp1q_s32(v535, v535), v535, 0xCuLL);
      v537 = vmulq_f32(v535, v535);
      *&v538 = v537.f32[1] + (v537.f32[2] + v537.f32[0]);
      *v537.f32 = vrsqrte_f32(v538);
      *v537.f32 = vmul_f32(*v537.f32, vrsqrts_f32(v538, vmul_f32(*v537.f32, *v537.f32)));
      v539 = vmulq_n_f32(v536, vmul_f32(*v537.f32, vrsqrts_f32(v538, vmul_f32(*v537.f32, *v537.f32))).f32[0]);
      v540 = v257 + (v534.f32[0] + *&v539.i32[1]);
      if (v540 > 0.0)
      {
        v541 = sqrtf(v540 + 1.0);
        v542 = vzip2q_s32(v539, vuzp1q_s32(v539, v990));
        v542.i32[2] = v534.i32[1];
        v543 = vtrn2q_s32(v990, vzip2q_s32(v990, v534));
        v543.i32[2] = v539.i32[0];
        v544 = vsubq_f32(v542, v543);
        v542.f32[3] = v541;
        v543.f32[3] = v541;
        v544.i32[3] = vmulq_f32(v542, v543).i32[3];
        v545 = vmulq_n_f32(v544, 0.5 / v541);
        v546 = v993;
        v548 = xmmword_1AFE20180;
        v547 = xmmword_1AFE213C0;
        goto LABEL_272;
      }

      v546 = v993;
      v548 = xmmword_1AFE20180;
      v547 = xmmword_1AFE213C0;
      if (v534.f32[0] < v257 || v534.f32[0] < *&v539.i32[1])
      {
        if (*&v539.i32[1] > v257)
        {
          v553 = sqrtf(((*&v539.i32[1] + 1.0) - v534.f32[0]) - v257);
          v552.f32[0] = v534.f32[1] + *v539.i32;
          v552.f32[1] = v553 * v553;
          *&v552.u32[2] = vext_s8(vadd_f32(*v990.i8, vdup_laneq_s32(v539, 2)), vsub_f32(*v990.i8, *&vextq_s8(v534, v534, 8uLL)), 4uLL);
          v554 = 0.5 / v553;
LABEL_271:
          v545 = vmulq_n_f32(v552, v554);
LABEL_272:
          v527[2] = v545;
          v559 = vmulq_f32(v546, xmmword_1AFE20150);
          v560 = vextq_s8(vuzp1q_s32(v559, v559), v559, 0xCuLL);
          v561 = vmlaq_f32(vmulq_f32(v560, v547), v548, v559);
          v562 = vextq_s8(vuzp1q_s32(v561, v561), v561, 0xCuLL);
          v563 = vmulq_f32(v561, v561);
          v563.f32[0] = v563.f32[1] + (v563.f32[2] + v563.f32[0]);
          v564 = vdupq_lane_s32(*v563.f32, 0);
          v564.i32[3] = 0;
          v565 = vrsqrteq_f32(v564);
          v566 = vmulq_f32(v565, vrsqrtsq_f32(v564, vmulq_f32(v565, v565)));
          v567 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v563.f32[0] != 0.0)), 0x1FuLL));
          v567.i32[3] = 0;
          v568 = vbslq_s8(vcltzq_s32(v567), vmulq_f32(v562, vmulq_f32(v566, vrsqrtsq_f32(v564, vmulq_f32(v566, v566)))), vextq_s8(vextq_s8(v559, v559, 0xCuLL), v559, 8uLL));
          v569 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v568, v568), v568, 0xCuLL), vnegq_f32(v559)), v568, v560);
          v570 = vextq_s8(vuzp1q_s32(v569, v569), v569, 0xCuLL);
          v571 = vmulq_f32(v569, v569);
          *&v572 = v571.f32[1] + (v571.f32[2] + v571.f32[0]);
          *v571.f32 = vrsqrte_f32(v572);
          *v571.f32 = vmul_f32(*v571.f32, vrsqrts_f32(v572, vmul_f32(*v571.f32, *v571.f32)));
          v573 = vmulq_n_f32(v570, vmul_f32(*v571.f32, vrsqrts_f32(v572, vmul_f32(*v571.f32, *v571.f32))).f32[0]);
          v574 = v559.f32[2] + (v568.f32[0] + *&v573.i32[1]);
          if (v574 <= 0.0)
          {
            if (v568.f32[0] < v559.f32[2] || v568.f32[0] < *&v573.i32[1])
            {
              if (*&v573.i32[1] <= v559.f32[2])
              {
                v585 = vzip1_s32(*&vextq_s8(v568, v568, 8uLL), *&vextq_s8(v573, v573, 8uLL));
                v586 = __PAIR64__(v568.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v559.f32[2] + 1.0) - v568.f32[0]) - *&v573.i32[1])));
                v587 = vdup_lane_s32(*v573.i8, 0);
                *v588.f32 = vadd_f32(*v559.f32, v585);
                v589 = vsub_f32(*v568.f32, v587);
                v587.i32[0] = v586.i32[0];
                v587.i32[0] = vmul_f32(v586, v587).u32[0];
                v587.i32[1] = v589.i32[1];
                *&v588.u32[2] = v587;
                v578 = vmulq_n_f32(v588, 0.5 / v586.f32[0]);
              }

              else
              {
                v583 = sqrtf(((*&v573.i32[1] + 1.0) - v568.f32[0]) - v559.f32[2]);
                v584.f32[0] = v568.f32[1] + *v573.i32;
                v584.f32[1] = v583 * v583;
                *&v584.u32[2] = vext_s8(vadd_f32(*v559.f32, vdup_laneq_s32(v573, 2)), vsub_f32(*v559.f32, *&vextq_s8(v568, v568, 8uLL)), 4uLL);
                v578 = vmulq_n_f32(v584, 0.5 / v583);
              }
            }

            else
            {
              v579 = sqrtf(((v568.f32[0] + 1.0) - *&v573.i32[1]) - v559.f32[2]);
              v580 = vdup_lane_s32(*v573.i8, 0);
              v581 = vadd_f32(*v568.f32, v580);
              v580.f32[0] = v579;
              v582.i32[0] = vmul_f32(__PAIR64__(v568.u32[1], LODWORD(v579)), v580).u32[0];
              v582.i32[1] = v581.i32[1];
              v582.f32[2] = v559.f32[0] + v568.f32[2];
              v582.f32[3] = *&v573.i32[2] - v559.f32[1];
              v578 = vmulq_n_f32(v582, 0.5 / v579);
            }
          }

          else
          {
            v575 = vzip2q_s32(v573, vuzp1q_s32(v573, v559));
            v575.i32[2] = v568.i32[1];
            v576 = vtrn2q_s32(v559, vzip2q_s32(v559, v568));
            v576.i32[2] = v573.i32[0];
            v577 = vsubq_f32(v575, v576);
            v575.i32[3] = sqrtf(v574 + 1.0);
            v576.i32[3] = v575.i32[3];
            v577.i32[3] = vmulq_f32(v575, v576).i32[3];
            v578 = vmulq_n_f32(v577, 0.5 / v575.f32[3]);
          }

          v527[3] = v578;
          v590 = vmulq_f32(v546, xmmword_1AFE20B60);
          v591 = vextq_s8(vuzp1q_s32(v590, v590), v590, 0xCuLL);
          v592 = vmlaq_f32(vmulq_f32(v591, xmmword_1AFE213B0), xmmword_1AFE20150, v590);
          v593 = vextq_s8(vuzp1q_s32(v592, v592), v592, 0xCuLL);
          v594 = vmulq_f32(v592, v592);
          v594.f32[0] = v594.f32[1] + (v594.f32[2] + v594.f32[0]);
          v595 = vdupq_lane_s32(*v594.f32, 0);
          v595.i32[3] = 0;
          v596 = vrsqrteq_f32(v595);
          v597 = vmulq_f32(v596, vrsqrtsq_f32(v595, vmulq_f32(v596, v596)));
          v598 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v594.f32[0] != 0.0)), 0x1FuLL));
          v598.i32[3] = 0;
          v599 = vbslq_s8(vcltzq_s32(v598), vmulq_f32(v593, vmulq_f32(v597, vrsqrtsq_f32(v595, vmulq_f32(v597, v597)))), vextq_s8(vextq_s8(v590, v590, 0xCuLL), v590, 8uLL));
          v600 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v599, v599), v599, 0xCuLL), vnegq_f32(v590)), v599, v591);
          v601 = vextq_s8(vuzp1q_s32(v600, v600), v600, 0xCuLL);
          v602 = vmulq_f32(v600, v600);
          *&v603 = v602.f32[1] + (v602.f32[2] + v602.f32[0]);
          *v602.f32 = vrsqrte_f32(v603);
          *v602.f32 = vmul_f32(*v602.f32, vrsqrts_f32(v603, vmul_f32(*v602.f32, *v602.f32)));
          v604 = vmulq_n_f32(v601, vmul_f32(*v602.f32, vrsqrts_f32(v603, vmul_f32(*v602.f32, *v602.f32))).f32[0]);
          v605 = v590.f32[2] + (v599.f32[0] + *&v604.i32[1]);
          if (v605 > 0.0)
          {
            v606 = sqrtf(v605 + 1.0);
            v607 = vzip2q_s32(v604, vuzp1q_s32(v604, v590));
            v607.i32[2] = v599.i32[1];
            v608 = vtrn2q_s32(v590, vzip2q_s32(v590, v599));
            v608.i32[2] = v604.i32[0];
            v609 = vsubq_f32(v607, v608);
            v607.f32[3] = v606;
            v608.f32[3] = v606;
            v609.i32[3] = vmulq_f32(v607, v608).i32[3];
LABEL_282:
            v610 = vmulq_n_f32(v609, 0.5 / v606);
LABEL_289:
            v527[4] = v610;
            v617 = vmulq_f32(v546, xmmword_1AFE20160);
            v618 = vextq_s8(vuzp1q_s32(v617, v617), v617, 0xCuLL);
            v619 = vmlaq_f32(vmulq_f32(v618, xmmword_1AFE62AC0), xmmword_1AFE20650, v617);
            v620 = vextq_s8(vuzp1q_s32(v619, v619), v619, 0xCuLL);
            v621 = vmulq_f32(v619, v619);
            v621.f32[0] = v621.f32[1] + (v621.f32[2] + v621.f32[0]);
            v622 = vdupq_lane_s32(*v621.f32, 0);
            v622.i32[3] = 0;
            v623 = vrsqrteq_f32(v622);
            v624 = vmulq_f32(v623, vrsqrtsq_f32(v622, vmulq_f32(v623, v623)));
            v625 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v621.f32[0] != 0.0)), 0x1FuLL));
            v625.i32[3] = 0;
            v626 = vbslq_s8(vcltzq_s32(v625), vmulq_f32(v620, vmulq_f32(v624, vrsqrtsq_f32(v622, vmulq_f32(v624, v624)))), vextq_s8(vextq_s8(v617, v617, 0xCuLL), v617, 8uLL));
            v627 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v626, v626), v626, 0xCuLL), vnegq_f32(v617)), v626, v618);
            v628 = vextq_s8(vuzp1q_s32(v627, v627), v627, 0xCuLL);
            v629 = vmulq_f32(v627, v627);
            *&v630 = v629.f32[1] + (v629.f32[2] + v629.f32[0]);
            *v629.f32 = vrsqrte_f32(v630);
            *v629.f32 = vmul_f32(*v629.f32, vrsqrts_f32(v630, vmul_f32(*v629.f32, *v629.f32)));
            v631 = vmulq_n_f32(v628, vmul_f32(*v629.f32, vrsqrts_f32(v630, vmul_f32(*v629.f32, *v629.f32))).f32[0]);
            v632 = v617.f32[2] + (v626.f32[0] + *&v631.i32[1]);
            if (v632 <= 0.0)
            {
              if (v626.f32[0] < v617.f32[2] || v626.f32[0] < *&v631.i32[1])
              {
                if (*&v631.i32[1] <= v617.f32[2])
                {
                  v647 = vzip1_s32(*&vextq_s8(v626, v626, 8uLL), *&vextq_s8(v631, v631, 8uLL));
                  v648 = __PAIR64__(v626.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v617.f32[2] + 1.0) - v626.f32[0]) - *&v631.i32[1])));
                  v649 = vdup_lane_s32(*v631.i8, 0);
                  *v650.f32 = vadd_f32(*v617.f32, v647);
                  v651 = vsub_f32(*v626.f32, v649);
                  v649.i32[0] = v648.i32[0];
                  v649.i32[0] = vmul_f32(v648, v649).u32[0];
                  v649.i32[1] = v651.i32[1];
                  *&v650.u32[2] = v649;
                  v636 = vmulq_n_f32(v650, 0.5 / v648.f32[0]);
                }

                else
                {
                  v641 = sqrtf(((*&v631.i32[1] + 1.0) - v626.f32[0]) - v617.f32[2]);
                  v642.f32[0] = v626.f32[1] + *v631.i32;
                  v642.f32[1] = v641 * v641;
                  *&v642.u32[2] = vext_s8(vadd_f32(*v617.f32, vdup_laneq_s32(v631, 2)), vsub_f32(*v617.f32, *&vextq_s8(v626, v626, 8uLL)), 4uLL);
                  v636 = vmulq_n_f32(v642, 0.5 / v641);
                }
              }

              else
              {
                v637 = sqrtf(((v626.f32[0] + 1.0) - *&v631.i32[1]) - v617.f32[2]);
                v638 = vdup_lane_s32(*v631.i8, 0);
                v639 = vadd_f32(*v626.f32, v638);
                v638.f32[0] = v637;
                v640.i32[0] = vmul_f32(__PAIR64__(v626.u32[1], LODWORD(v637)), v638).u32[0];
                v640.i32[1] = v639.i32[1];
                v640.f32[2] = v617.f32[0] + v626.f32[2];
                v640.f32[3] = *&v631.i32[2] - v617.f32[1];
                v636 = vmulq_n_f32(v640, 0.5 / v637);
              }
            }

            else
            {
              v633 = vzip2q_s32(v631, vuzp1q_s32(v631, v617));
              v633.i32[2] = v626.i32[1];
              v634 = vtrn2q_s32(v617, vzip2q_s32(v617, v626));
              v634.i32[2] = v631.i32[0];
              v635 = vsubq_f32(v633, v634);
              v633.i32[3] = sqrtf(v632 + 1.0);
              v634.i32[3] = v633.i32[3];
              v635.i32[3] = vmulq_f32(v633, v634).i32[3];
              v636 = vmulq_n_f32(v635, 0.5 / v633.f32[3]);
            }

            v527[5] = v636;
            v652 = vmulq_f32(v546, xmmword_1AFE206C0);
            v653 = vextq_s8(vuzp1q_s32(v652, v652), v652, 0xCuLL);
            v654 = vmlaq_f32(vmulq_f32(v653, v547), v548, v652);
            v655 = vextq_s8(vuzp1q_s32(v654, v654), v654, 0xCuLL);
            v656 = vmulq_f32(v654, v654);
            v656.f32[0] = v656.f32[1] + (v656.f32[2] + v656.f32[0]);
            v657 = vdupq_lane_s32(*v656.f32, 0);
            v657.i32[3] = 0;
            v658 = vrsqrteq_f32(v657);
            v659 = vmulq_f32(v658, vrsqrtsq_f32(v657, vmulq_f32(v658, v658)));
            v660 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v656.f32[0] != 0.0)), 0x1FuLL));
            v660.i32[3] = 0;
            v661 = vbslq_s8(vcltzq_s32(v660), vmulq_f32(v655, vmulq_f32(v659, vrsqrtsq_f32(v657, vmulq_f32(v659, v659)))), vextq_s8(vextq_s8(v652, v652, 0xCuLL), v652, 8uLL));
            v662 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v661, v661), v661, 0xCuLL), vnegq_f32(v652)), v661, v653);
            v663 = vextq_s8(vuzp1q_s32(v662, v662), v662, 0xCuLL);
            v664 = vmulq_f32(v662, v662);
            *&v665 = v664.f32[1] + (v664.f32[2] + v664.f32[0]);
            *v664.f32 = vrsqrte_f32(v665);
            *v664.f32 = vmul_f32(*v664.f32, vrsqrts_f32(v665, vmul_f32(*v664.f32, *v664.f32)));
            v666 = vmulq_n_f32(v663, vmul_f32(*v664.f32, vrsqrts_f32(v665, vmul_f32(*v664.f32, *v664.f32))).f32[0]);
            v667 = v652.f32[2] + (v661.f32[0] + *&v666.i32[1]);
            if (v667 <= 0.0)
            {
              if (v661.f32[0] < v652.f32[2] || v661.f32[0] < *&v666.i32[1])
              {
                if (*&v666.i32[1] <= v652.f32[2])
                {
                  v678 = vzip1_s32(*&vextq_s8(v661, v661, 8uLL), *&vextq_s8(v666, v666, 8uLL));
                  v679 = __PAIR64__(v661.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v652.f32[2] + 1.0) - v661.f32[0]) - *&v666.i32[1])));
                  v680 = vdup_lane_s32(*v666.i8, 0);
                  *v681.f32 = vadd_f32(*v652.f32, v678);
                  v682 = vsub_f32(*v661.f32, v680);
                  v680.i32[0] = v679.i32[0];
                  v680.i32[0] = vmul_f32(v679, v680).u32[0];
                  v680.i32[1] = v682.i32[1];
                  *&v681.u32[2] = v680;
                  v671 = vmulq_n_f32(v681, 0.5 / v679.f32[0]);
                }

                else
                {
                  v676 = sqrtf(((*&v666.i32[1] + 1.0) - v661.f32[0]) - v652.f32[2]);
                  v677.f32[0] = v661.f32[1] + *v666.i32;
                  v677.f32[1] = v676 * v676;
                  *&v677.u32[2] = vext_s8(vadd_f32(*v652.f32, vdup_laneq_s32(v666, 2)), vsub_f32(*v652.f32, *&vextq_s8(v661, v661, 8uLL)), 4uLL);
                  v671 = vmulq_n_f32(v677, 0.5 / v676);
                }
              }

              else
              {
                v672 = sqrtf(((v661.f32[0] + 1.0) - *&v666.i32[1]) - v652.f32[2]);
                v673 = vdup_lane_s32(*v666.i8, 0);
                v674 = vadd_f32(*v661.f32, v673);
                v673.f32[0] = v672;
                v675.i32[0] = vmul_f32(__PAIR64__(v661.u32[1], LODWORD(v672)), v673).u32[0];
                v675.i32[1] = v674.i32[1];
                v675.f32[2] = v652.f32[0] + v661.f32[2];
                v675.f32[3] = *&v666.i32[2] - v652.f32[1];
                v671 = vmulq_n_f32(v675, 0.5 / v672);
              }
            }

            else
            {
              v668 = vzip2q_s32(v666, vuzp1q_s32(v666, v652));
              v668.i32[2] = v661.i32[1];
              v669 = vtrn2q_s32(v652, vzip2q_s32(v652, v661));
              v669.i32[2] = v666.i32[0];
              v670 = vsubq_f32(v668, v669);
              v668.i32[3] = sqrtf(v667 + 1.0);
              v669.i32[3] = v668.i32[3];
              v670.i32[3] = vmulq_f32(v668, v669).i32[3];
              v671 = vmulq_n_f32(v670, 0.5 / v668.f32[3]);
            }

            v527[6] = v671;
            v683 = vmulq_f32(v546, v548);
            v684 = vextq_s8(vuzp1q_s32(v683, v683), v683, 0xCuLL);
            v685 = vmlaq_f32(vmulq_f32(v684, v547), v548, v683);
            v686 = vextq_s8(vuzp1q_s32(v685, v685), v685, 0xCuLL);
            v687 = vmulq_f32(v685, v685);
            v687.f32[0] = v687.f32[1] + (v687.f32[2] + v687.f32[0]);
            v688 = vdupq_lane_s32(*v687.f32, 0);
            v688.i32[3] = 0;
            v689 = vrsqrteq_f32(v688);
            v690 = vmulq_f32(v689, vrsqrtsq_f32(v688, vmulq_f32(v689, v689)));
            v691 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v687.f32[0] != 0.0)), 0x1FuLL));
            v691.i32[3] = 0;
            v692 = vbslq_s8(vcltzq_s32(v691), vmulq_f32(v686, vmulq_f32(v690, vrsqrtsq_f32(v688, vmulq_f32(v690, v690)))), vextq_s8(vextq_s8(v683, v683, 0xCuLL), v683, 8uLL));
            v693 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v692, v692), v692, 0xCuLL), vnegq_f32(v683)), v692, v684);
            v694 = vextq_s8(vuzp1q_s32(v693, v693), v693, 0xCuLL);
            v695 = vmulq_f32(v693, v693);
            *&v696 = v695.f32[1] + (v695.f32[2] + v695.f32[0]);
            *v695.f32 = vrsqrte_f32(v696);
            *v695.f32 = vmul_f32(*v695.f32, vrsqrts_f32(v696, vmul_f32(*v695.f32, *v695.f32)));
            v697 = vmulq_n_f32(v694, vmul_f32(*v695.f32, vrsqrts_f32(v696, vmul_f32(*v695.f32, *v695.f32))).f32[0]);
            v698 = v683.f32[2] + (v692.f32[0] + *&v697.i32[1]);
            v1047 = v503;
            v951 = v508;
            if (v698 <= 0.0)
            {
              if (v692.f32[0] < v683.f32[2] || v692.f32[0] < *&v697.i32[1])
              {
                v703 = v1100;
                if (*&v697.i32[1] <= v683.f32[2])
                {
                  v710 = vzip1_s32(*&vextq_s8(v692, v692, 8uLL), *&vextq_s8(v697, v697, 8uLL));
                  v711 = __PAIR64__(v692.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v683.f32[2] + 1.0) - v692.f32[0]) - *&v697.i32[1])));
                  v712 = vdup_lane_s32(*v697.i8, 0);
                  *v713.f32 = vadd_f32(*v683.f32, v710);
                  v714 = vsub_f32(*v692.f32, v712);
                  v712.i32[0] = v711.i32[0];
                  v712.i32[0] = vmul_f32(v711, v712).u32[0];
                  v712.i32[1] = v714.i32[1];
                  *&v713.u32[2] = v712;
                  v702 = vmulq_n_f32(v713, 0.5 / v711.f32[0]);
                }

                else
                {
                  v708 = sqrtf(((*&v697.i32[1] + 1.0) - v692.f32[0]) - v683.f32[2]);
                  v709.f32[0] = v692.f32[1] + *v697.i32;
                  v709.f32[1] = v708 * v708;
                  *&v709.u32[2] = vext_s8(vadd_f32(*v683.f32, vdup_laneq_s32(v697, 2)), vsub_f32(*v683.f32, *&vextq_s8(v692, v692, 8uLL)), 4uLL);
                  v702 = vmulq_n_f32(v709, 0.5 / v708);
                }
              }

              else
              {
                v704 = sqrtf(((v692.f32[0] + 1.0) - *&v697.i32[1]) - v683.f32[2]);
                v705 = vdup_lane_s32(*v697.i8, 0);
                v706 = vadd_f32(*v692.f32, v705);
                v705.f32[0] = v704;
                v707.i32[0] = vmul_f32(__PAIR64__(v692.u32[1], LODWORD(v704)), v705).u32[0];
                v707.i32[1] = v706.i32[1];
                v707.f32[2] = v683.f32[0] + v692.f32[2];
                v707.f32[3] = *&v697.i32[2] - v683.f32[1];
                v702 = vmulq_n_f32(v707, 0.5 / v704);
                v703 = v1100;
              }
            }

            else
            {
              v699 = vzip2q_s32(v697, vuzp1q_s32(v697, v683));
              v699.i32[2] = v692.i32[1];
              v700 = vtrn2q_s32(v683, vzip2q_s32(v683, v692));
              v700.i32[2] = v697.i32[0];
              v701 = vsubq_f32(v699, v700);
              v699.i32[3] = sqrtf(v698 + 1.0);
              v700.i32[3] = v699.i32[3];
              v701.i32[3] = vmulq_f32(v699, v700).i32[3];
              v702 = vmulq_n_f32(v701, 0.5 / v699.f32[3]);
              v703 = v1100;
            }

            v1157 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1156.f32[0]), xmmword_1AFE20160, *v1156.f32, 1), xmmword_1AFE20180, v1156, 2), v1109, v1156, 3);
            v1142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1141.f32[0]), xmmword_1AFE20160, *v1141.f32, 1), xmmword_1AFE20180, v1141, 2), v1109, v1141, 3);
            v1118 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v703.f32[0]), xmmword_1AFE20160, *v703.f32, 1), xmmword_1AFE20180, v703, 2), v1109, v703, 3);
            v1131 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1130.f32[0]), xmmword_1AFE20160, *v1130.f32, 1), xmmword_1AFE20180, v1130, 2), v1109, v1130, 3);
            v703.i32[3] = v912;
            v1101 = v703;
            v527[7] = v702;
            v715 = &v1221[3];
            for (j = 2; j != 8; ++j)
            {
              *v717.i64 = sub_1AF5B1F1C(v528[j]);
              v1348.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1157, v717.f32[0]), v1142, *v717.f32, 1), v1131, v717, 2), v1118, v717, 3);
              v1348.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1157, v718.f32[0]), v1142, *v718.f32, 1), v1131, v718, 2), v1118, v718, 3);
              v1348.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1157, v719.f32[0]), v1142, *v719.f32, 1), v1131, v719, 2), v1118, v719, 3);
              v1348.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1157, v720.f32[0]), v1142, *v720.f32, 1), v1131, v720, 2), v1118, v720, 3);
              *(v715 - 1) = __invert_f4(v1348);
              v715 += 4;
            }

            swift_getKeyPath();
            v721 = swift_modifyAtWritableKeyPath();
            *&v722 = v514;
            *&v723 = v515;
            sub_1AF5CE944(v724, 6, &v1162, v528, &v1161, v911, v1101, v1071, v1090, v1061, v1080, v722, v723, v516, v725, v726, LODWORD(v517));
            v721(v1296, 0);
            swift_setDeallocating();
            swift_deallocClassInstance();

            v1221[26] = v1071;
            v1221[27] = v1090;
            v1221[28] = v1061;
            v1221[29] = v1080;
            LODWORD(v1221[36]) = v518;
            memcpy(v511, v1221, 0x270uLL);
            v912 = v1101.i32[3];
            v503 = v1047;
            v507 = v956;
            v506 = v960;
            v509 = v946;
            v508 = v951;
            continue;
          }

          if (v599.f32[0] < v590.f32[2] || v599.f32[0] < *&v604.i32[1])
          {
            if (*&v604.i32[1] <= v590.f32[2])
            {
              v606 = sqrtf(((v590.f32[2] + 1.0) - v599.f32[0]) - *&v604.i32[1]);
              v643 = vzip1_s32(*&vextq_s8(v599, v599, 8uLL), *&vextq_s8(v604, v604, 8uLL));
              v644 = __PAIR64__(v599.u32[1], LODWORD(v606));
              v645 = vdup_lane_s32(*v604.i8, 0);
              *v609.f32 = vadd_f32(*v590.f32, v643);
              v646 = vsub_f32(*v599.f32, v645);
              v645.f32[0] = v606;
              v645.i32[0] = vmul_f32(v644, v645).u32[0];
              v645.i32[1] = v646.i32[1];
              *&v609.u32[2] = v645;
              goto LABEL_282;
            }

            v616 = sqrtf(((*&v604.i32[1] + 1.0) - v599.f32[0]) - v590.f32[2]);
            v614.f32[0] = v599.f32[1] + *v604.i32;
            v614.f32[1] = v616 * v616;
            *&v614.u32[2] = vext_s8(vadd_f32(*v590.f32, vdup_laneq_s32(v604, 2)), vsub_f32(*v590.f32, *&vextq_s8(v599, v599, 8uLL)), 4uLL);
            v615 = 0.5 / v616;
          }

          else
          {
            v611 = sqrtf(((v599.f32[0] + 1.0) - *&v604.i32[1]) - v590.f32[2]);
            v612 = vdup_lane_s32(*v604.i8, 0);
            v613 = vadd_f32(*v599.f32, v612);
            v612.f32[0] = v611;
            v614.i32[0] = vmul_f32(__PAIR64__(v599.u32[1], LODWORD(v611)), v612).u32[0];
            v614.i32[1] = v613.i32[1];
            v614.f32[2] = v590.f32[0] + v599.f32[2];
            v614.f32[3] = *&v604.i32[2] - v590.f32[1];
            v615 = 0.5 / v611;
          }

          v610 = vmulq_n_f32(v614, v615);
          goto LABEL_289;
        }

        v549 = sqrtf(((v257 + 1.0) - v534.f32[0]) - *&v539.i32[1]);
        v555 = vzip1_s32(*&vextq_s8(v534, v534, 8uLL), *&vextq_s8(v539, v539, 8uLL));
        v556 = __PAIR64__(v534.u32[1], LODWORD(v549));
        v557 = vdup_lane_s32(*v539.i8, 0);
        *v552.f32 = vadd_f32(*v990.i8, v555);
        v558 = vsub_f32(*v534.f32, v557);
        v557.f32[0] = v549;
        v557.i32[0] = vmul_f32(v556, v557).u32[0];
        v557.i32[1] = v558.i32[1];
        *&v552.u32[2] = v557;
      }

      else
      {
        v549 = sqrtf(((v534.f32[0] + 1.0) - *&v539.i32[1]) - v257);
        v550 = vdup_lane_s32(*v539.i8, 0);
        v551 = vadd_f32(*v534.f32, v550);
        v550.f32[0] = v549;
        v552.i32[0] = vmul_f32(__PAIR64__(v534.u32[1], LODWORD(v549)), v550).u32[0];
        v552.i32[1] = v551.i32[1];
        v552.f32[2] = *v990.i32 + v534.f32[2];
        v552.f32[3] = *&v539.i32[2] - *&v990.i32[1];
      }

      break;
    }

    v554 = 0.5 / v549;
    goto LABEL_271;
  }

LABEL_320:
  v727 = sub_1AF5CEBA8(&v1227, &v1228, &v1298);
  if (v903 != 0 && v902 && v925)
  {
    v729 = *(v939 + 32);
    v730 = *(v894 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v1169 = v903;
    v1170 = HIDWORD(v893);
    v1171 = v892;
    v1172 = v895;
    v1173 = v893;
    v1174 = v896;
    sub_1AF5D15C0(&v1275, v1221);
    v731 = 0;
    v1005 = vdupq_n_s32(0x40490FDAu);
    v1013 = vdupq_n_s32(0x3ABFE803u);
    v984 = v730;
    v987 = v729;
    do
    {
      v991 = v731;
      v732 = (v920 + 48 * v731);
      v1143 = *v732;
      v733 = v732[2];
      v1132 = v732[1];
      v735 = *(v732 + 2);
      v734 = *(v732 + 3);
      v737 = *(v732 + 4);
      v736 = *(v732 + 5);
      if (v730)
      {
        v738 = *(v736 + 376);

        os_unfair_lock_lock(v738);
        os_unfair_lock_lock(*(v736 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v729);
      v739 = *(v939 + 64);
      v1296[0] = *(v939 + 48);
      v1296[1] = v739;
      v1297 = *(v939 + 80);
      v740 = *(v939 + 32);
      v741 = *(*(*(*(v736 + 40) + 16) + 32) + 16) + 1;

      *(v939 + 48) = ecs_stack_allocator_allocate(v740, 48 * v741, 8);
      *(v939 + 56) = v741;
      *(v939 + 72) = 0;
      *(v939 + 80) = 0;
      *(v939 + 64) = 0;

      v742 = sub_1AF64B110(&type metadata for SpotLight, &off_1F252AC10, v735, v734, v737, v939);
      v743 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v735, v734, v737, v939);
      v744 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v735, v734, v737, v939);
      v745 = v744;
      if (v735)
      {
        if (v737)
        {
          v746 = &v1226[72 * v733];
          v747 = (v743 + 32);
          v748 = (v742 + 12);
          v729 = v987;
          do
          {
            if (v733 <= 7)
            {
              v749 = *(v748 - 3);
              v750 = *(v748 - 2);
              v751 = *(v748 - 1);
              v752 = *v748;
              v753 = v748[1];
              v754 = v748[2];
              v755 = *v747[2].f32;
              v756.i64[0] = vdivq_f32(vmulq_f32(vmulq_n_f32(*v745, v749), v1013), v1005).u64[0];
              v756.f32[2] = (vmuls_lane_f32(v749, *v745, 2) * 0.0014641) / 3.1416;
              v756.i32[3] = 0;
              v1102 = v756;
              v757 = vsubq_f32(v755, v1106);
              v1349.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v747[-4].f32)), xmmword_1AFE20160, v747[-4], 1), xmmword_1AFE20180, *v747[-4].f32, 2), v1109, *v747[-4].f32, 3);
              v1349.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v747[-2].f32)), xmmword_1AFE20160, v747[-2], 1), xmmword_1AFE20180, *v747[-2].f32, 2), v1109, *v747[-2].f32, 3);
              v1349.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v747->f32)), xmmword_1AFE20160, *v747, 1), xmmword_1AFE20180, *v747->f32, 2), v1109, *v747->f32, 3);
              v1349.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v755.f32[0]), xmmword_1AFE20160, *v755.f32, 1), xmmword_1AFE20180, v755, 2), v1109, v755, 3);
              v757.i32[3] = 0;
              v1091 = v757;
              v1119 = __invert_f4(v1349);
              v758 = fmaxf(v753, 0.0001);
              if (v754 <= (v758 + 0.0001))
              {
                v754 = v758 + 0.0001;
              }

              v759 = v751 * 0.5;
              *&v760 = 1.0 / tanf(v759);
              *&v761 = v758;
              *&v762 = v754;
              *v763.i64 = sub_1AF6A6AFC(1, v761, v762, v760);
              v1036 = v764;
              v1048 = v763;
              v1081 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v763, v1119.columns[0].f32[0]), v764, *v1119.columns[0].f32, 1), v765, v1119.columns[0], 2), v766, v1119.columns[0], 3);
              v1021 = v766;
              v1029 = v765;
              v1072 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v763, v1119.columns[1].f32[0]), v764, *v1119.columns[1].f32, 1), v765, v1119.columns[1], 2), v766, v1119.columns[1], 3);
              v1062 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v763, v1119.columns[2].f32[0]), v764, *v1119.columns[2].f32, 1), v765, v1119.columns[2], 2), v766, v1119.columns[2], 3);
              v1053 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v763, v1119.columns[3].f32[0]), v764, *v1119.columns[3].f32, 1), v765, v1119.columns[3], 2), v766, v1119.columns[3], 3);
              v767 = cosf(v759);
              v768 = cosf(v752 * 0.5);
              *(v746 + 611) = v1102;
              *(v746 + 612) = v1091;
              *(v746 + 2452) = v1119;
              *(v746 + 617) = v1048;
              *(v746 + 618) = v1036;
              *(v746 + 619) = v1029;
              *(v746 + 620) = v1021;
              *(v746 + 621) = v1081;
              v769 = 1.0 / fmaxf(v768 - v767, 0.00000011921);
              *(v746 + 622) = v1072;
              *(v746 + 623) = v1062;
              *(v746 + 624) = v1053;
              *(v746 + 625) = 0u;
              v746[2504] = 0;
              *(v746 + 2505) = 1.0 / (v750 * v750);
              *(v746 + 2506) = v769;
              *(v746 + 2507) = -(v767 * v769);
              *(v746 + 628) = 0u;
              *(v746 + 627) = 0u;
            }

            ++v745;
            v746 += 72;
            v747 += 8;
            ++v733;
            v748 += 6;
            --v737;
          }

          while (v737);
        }

        else
        {
          v729 = v987;
        }
      }

      else
      {
        v770 = v1132 - v1143;
        v771 = &v1226[72 * v733];
        v772 = v742 + 24 * v1143 + 12;
        v773 = (v744 + 16 * v1143);
        v774 = (v743 + (v1143 << 6) + 32);
        v729 = v987;
        while (v770)
        {
          if (v733 < 8)
          {
            v775 = *(v772 - 12);
            v776 = *(v772 - 8);
            v777 = *(v772 - 4);
            v778 = *v772;
            v779 = *(v772 + 4);
            v780 = *(v772 + 8);
            v781 = *v774[2].f32;
            v782.i64[0] = vdivq_f32(vmulq_f32(vmulq_n_f32(*v773, v775), v1013), v1005).u64[0];
            v782.f32[2] = (vmuls_lane_f32(v775, *v773, 2) * 0.0014641) / 3.1416;
            v782.i32[3] = 0;
            v1103 = v782;
            v783 = vsubq_f32(v781, v1106);
            v1350.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v774[-4].f32)), xmmword_1AFE20160, v774[-4], 1), xmmword_1AFE20180, *v774[-4].f32, 2), v1109, *v774[-4].f32, 3);
            v1350.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v774[-2].f32)), xmmword_1AFE20160, v774[-2], 1), xmmword_1AFE20180, *v774[-2].f32, 2), v1109, *v774[-2].f32, 3);
            v1350.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v774->f32)), xmmword_1AFE20160, *v774, 1), xmmword_1AFE20180, *v774->f32, 2), v1109, *v774->f32, 3);
            v1350.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v781.f32[0]), xmmword_1AFE20160, *v781.f32, 1), xmmword_1AFE20180, v781, 2), v1109, v781, 3);
            v783.i32[3] = 0;
            v1092 = v783;
            v1120 = __invert_f4(v1350);
            v784 = fmaxf(v779, 0.0001);
            if (v780 <= (v784 + 0.0001))
            {
              v780 = v784 + 0.0001;
            }

            v785 = v777 * 0.5;
            *&v786 = 1.0 / tanf(v785);
            *&v787 = v784;
            *&v788 = v780;
            *v789.i64 = sub_1AF6A6AFC(1, v787, v788, v786);
            v1037 = v790;
            v1049 = v789;
            v1082 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v789, v1120.columns[0].f32[0]), v790, *v1120.columns[0].f32, 1), v791, v1120.columns[0], 2), v792, v1120.columns[0], 3);
            v1022 = v792;
            v1030 = v791;
            v1073 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v789, v1120.columns[1].f32[0]), v790, *v1120.columns[1].f32, 1), v791, v1120.columns[1], 2), v792, v1120.columns[1], 3);
            v1063 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v789, v1120.columns[2].f32[0]), v790, *v1120.columns[2].f32, 1), v791, v1120.columns[2], 2), v792, v1120.columns[2], 3);
            v1054 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v789, v1120.columns[3].f32[0]), v790, *v1120.columns[3].f32, 1), v791, v1120.columns[3], 2), v792, v1120.columns[3], 3);
            v793 = cosf(v785);
            v794 = cosf(v778 * 0.5);
            *(v771 + 611) = v1103;
            *(v771 + 612) = v1092;
            *(v771 + 2452) = v1120;
            *(v771 + 617) = v1049;
            *(v771 + 618) = v1037;
            *(v771 + 619) = v1030;
            *(v771 + 620) = v1022;
            *(v771 + 621) = v1082;
            v795 = 1.0 / fmaxf(v794 - v793, 0.00000011921);
            *(v771 + 622) = v1073;
            *(v771 + 623) = v1063;
            *(v771 + 624) = v1054;
            *(v771 + 625) = 0u;
            v771[2504] = 0;
            *(v771 + 2505) = 1.0 / (v776 * v776);
            *(v771 + 2506) = v795;
            *(v771 + 2507) = -(v793 * v795);
            *(v771 + 628) = 0u;
            *(v771 + 627) = 0u;
          }

          --v770;
          ++v733;
          v771 += 72;
          v772 += 24;
          ++v773;
          v774 += 8;
        }
      }

      sub_1AF630994(v939, &v1169, v1296);
      sub_1AF62D29C(v736);
      ecs_stack_allocator_pop_snapshot(v729);
      v730 = v984;
      if (v984)
      {
        os_unfair_lock_unlock(*(v736 + 344));
        os_unfair_lock_unlock(*(v736 + 376));
      }

      v731 = v991 + 1;
    }

    while (v991 + 1 != v925);
    v727 = sub_1AF5D1564(&v1275);
  }

  if (v905 && v928 >= 1 && v926)
  {
    v796 = v940[4];
    v797 = *(v923 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v1163 = v905;
    v1164 = HIDWORD(v898);
    v1165 = v897;
    v1166 = v899;
    v1167 = v898;
    v1168 = v900;
    sub_1AF5D15C0(&v1284, v1221);
    v798 = 0;
    v985 = vdupq_n_s32(0x40490FDAu);
    v988 = vdupq_n_s32(0x3ABFE803u);
    v942 = v797;
    v947 = v796;
    do
    {
      v1158 = v60;
      v961 = v798;
      v799 = (v921 + 48 * v798);
      v800 = *v799;
      v801 = v799[1];
      v802 = v799[2];
      v804 = *(v799 + 2);
      v803 = *(v799 + 3);
      v806 = *(v799 + 4);
      v805 = *(v799 + 5);
      if (v797)
      {
        v807 = *(v805 + 376);

        os_unfair_lock_lock(v807);
        os_unfair_lock_lock(*(v805 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v796);

      sub_1AF630914(v808, v940, v1295);

      *&v1221[0] = v923;
      *(&v1221[0] + 1) = v805;
      *&v1221[1] = v940;
      *(&v1221[1] + 1) = v802;
      *&v1221[2] = (v801 - v800 + v802);
      *(&v1221[2] + 1) = v928;
      *&v1221[3] = v800;
      *(&v1221[3] + 1) = v801;
      v1221[4] = 0uLL;
      LOBYTE(v1221[5]) = 1;
      *(&v1221[5] + 1) = v804;
      *&v1221[6] = v803;
      *(&v1221[6] + 1) = v806;
      v809 = v1158;
      v810 = sub_1AF7059F8(v805, v1221);
      v811 = sub_1AF705994(v805, v1221);
      v1159 = sub_1AF70596C(v805, v1221);
      v957 = v805;
      v812 = sub_1AF705944(v805, v1221);
      v813 = v812;
      v952 = v809;
      if (*(&v1221[5] + 1))
      {
        v814 = *(&v1221[6] + 1);
        v815 = v1159;
        if (*(&v1221[6] + 1))
        {
          v816 = 0;
          v817 = (v812 + 8);
          v818 = v810 + 8;
          v819 = (v811 + 32);
          v969 = *(&v1221[6] + 1);
          do
          {
            v825 = v816 + *(&v1221[1] + 1);
            if (v816 + *(&v1221[1] + 1) <= 7)
            {
              v826 = *(v818 - 4);
              v827 = *v818;
              v828 = *(v818 + 4);
              v1144.i64[0] = *(v818 + 8);
              v829 = v819[-2];
              v830 = v819[-1];
              v831 = *v819;
              v832 = v819[1];
              v1007 = *(v815 + 16 * v816);
              v1015 = *(v818 - 8);
              v833 = *(v817 - 2);
              v834 = *v817;
              v1222 = 0u;
              v1223 = 0u;
              v1038 = v830;
              v1050 = v829;
              v1353.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v829.f32[0]), xmmword_1AFE20160, *v829.f32, 1), xmmword_1AFE20180, v829, 2), v1109, v829, 3);
              v1353.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v830.f32[0]), xmmword_1AFE20160, *v830.f32, 1), xmmword_1AFE20180, v830, 2), v1109, v830, 3);
              v1023 = v832;
              v1031 = v831;
              v1353.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v831.f32[0]), xmmword_1AFE20160, *v831.f32, 1), xmmword_1AFE20180, v831, 2), v1109, v831, 3);
              v1353.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v832.f32[0]), xmmword_1AFE20160, *v832.f32, 1), xmmword_1AFE20180, v832, 2), v1109, v832, 3);
              v1354 = __invert_f4(v1353);
              v1121 = v1354.columns[1];
              v1133 = v1354.columns[0];
              v1093 = v1354.columns[3];
              v1104 = v1354.columns[2];
              v835 = fmaxf(v1144.f32[0], 0.0001);
              if (v1144.f32[1] > (v835 + 0.0001))
              {
                v836 = v1144.f32[1];
              }

              else
              {
                v836 = v835 + 0.0001;
              }

              v837 = v827 * 0.5;
              *&v838 = 1.0 / tanf(v837);
              *&v839 = v835;
              *&v840 = v836;
              *v841.i64 = sub_1AF6A6AFC(1, v839, v840, v838);
              v1074 = v842;
              v1083 = v841;
              v1055 = v844;
              v1064 = v843;
              v845 = cosf(v837);
              v846 = cosf(v828 * 0.5);
              v999 = v1161;
              v847 = v1162;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v847 = sub_1AF4229F8(0, *(v847 + 2) + 1, 1, v847);
              }

              v849 = *(v847 + 2);
              v848 = *(v847 + 3);
              if (v849 >= v848 >> 1)
              {
                v847 = sub_1AF4229F8(v848 > 1, v849 + 1, 1, v847);
              }

              v820.i64[0] = vdivq_f32(vmulq_f32(vmulq_n_f32(v1007, v1015), v988), v985).u64[0];
              v820.f32[2] = (vmuls_lane_f32(v1015, v1007, 2) * 0.0014641) / 3.1416;
              v820.i32[3] = 0;
              v1351.columns[3] = v1023;
              v821 = vsubq_f32(v1023, v1106);
              v821.i32[3] = 0;
              v1006 = v821;
              v1014 = v820;
              v822 = 1.0 / fmaxf(v846 - v845, 0.00000011921);
              v1351.columns[1] = v1038;
              v1351.columns[0] = v1050;
              v1351.columns[2] = v1031;
              v1352 = __invert_f4(v1351);
              *(v847 + 2) = v849 + 1;
              v823 = &v847[160 * v849];
              *(v823 + 32) = v1352;
              *(v823 + 6) = v1083;
              *(v823 + 7) = v1074;
              *(v823 + 8) = v1064;
              *(v823 + 9) = v1055;
              *(v823 + 20) = v1144.i64[0];
              *(v823 + 11) = v999;
              v1162 = v847;
              v1352.columns[0] = *(v834 + 32);
              v824 = &v1226[72 * v825 + 3020];
              *v824 = v1014;
              v824[1] = v1006;
              v824[2] = v1133;
              v824[3] = v1121;
              v824[4] = v1104;
              v824[5] = v1093;
              v824[6] = v1083;
              v824[7] = v1074;
              v824[8] = v1064;
              v824[9] = v1055;
              v824[10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1083, v1133.f32[0]), v1074, *v1133.f32, 1), v1064, v1133, 2), v1055, v1133, 3);
              v824[11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1083, v1121.f32[0]), v1074, *v1121.f32, 1), v1064, v1121, 2), v1055, v1121, 3);
              v824[12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1083, v1104.f32[0]), v1074, *v1104.f32, 1), v1064, v1104, 2), v1055, v1104, 3);
              v824[13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1083, v1093.f32[0]), v1074, *v1093.f32, 1), v1064, v1093, 2), v1055, v1093, 3);
              v824[14] = v1352.columns[0];
              v824[15].i32[0] = v833;
              v824[15].f32[1] = 1.0 / (v826 * v826);
              v824[15].f32[2] = v822;
              v824[15].f32[3] = -(v845 * v822);
              v1352.columns[0] = v1223;
              v824[16] = v1222;
              v824[17] = v1352.columns[0];
              v815 = v1159;
              v814 = v969;
            }

            ++v816;
            v817 += 2;
            v818 += 24;
            v819 += 4;
          }

          while (v814 != v816);
        }
      }

      else
      {
        v850 = *(&v1221[1] + 1);
        v851 = v810 + 24 * *&v1221[3] + 8;
        v852 = *(&v1221[3] + 1) - *&v1221[3];
        v853 = &v1226[72 * *(&v1221[1] + 1)];
        v854 = (v811 + (*&v1221[3] << 6) + 32);
        v964 = 16 * *&v1221[3];
        v855 = v1159;
        while (v852)
        {
          if (v850 < 8)
          {
            v860 = *(v851 - 4);
            v861 = *v851;
            v862 = *(v851 + 4);
            v1145 = *(v851 + 8);
            v863 = v854[-2];
            v864 = v854[-1];
            v865 = *v854;
            v866 = v854[1];
            v1160 = v855;
            v1001 = *(v855 + v964);
            v1009 = *(v851 - 8);
            v867 = *(v813 + v964);
            v1051 = *(v813 + v964 + 8);
            v1224 = 0u;
            v1225 = 0u;
            v1032 = v864;
            v1039 = v863;
            v1357.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v863.f32[0]), xmmword_1AFE20160, *v863.f32, 1), xmmword_1AFE20180, v863, 2), v1109, v863, 3);
            v1357.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v864.f32[0]), xmmword_1AFE20160, *v864.f32, 1), xmmword_1AFE20180, v864, 2), v1109, v864, 3);
            v1016 = v866;
            v1024 = v865;
            v1357.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v865.f32[0]), xmmword_1AFE20160, *v865.f32, 1), xmmword_1AFE20180, v865, 2), v1109, v865, 3);
            v1357.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v866.f32[0]), xmmword_1AFE20160, *v866.f32, 1), xmmword_1AFE20180, v866, 2), v1109, v866, 3);
            v1358 = __invert_f4(v1357);
            v1122 = v1358.columns[1];
            v1134 = v1358.columns[0];
            v1094 = v1358.columns[3];
            v1105 = v1358.columns[2];
            v868 = fmaxf(*&v1145, 0.0001);
            if (*(&v1145 + 1) > (v868 + 0.0001))
            {
              v869 = *(&v1145 + 1);
            }

            else
            {
              v869 = v868 + 0.0001;
            }

            v870 = v861 * 0.5;
            *&v871 = 1.0 / tanf(v870);
            *&v872 = v868;
            *&v873 = v869;
            *v874.i64 = sub_1AF6A6AFC(1, v872, v873, v871);
            v1075 = v875;
            v1084 = v874;
            v1056 = v877;
            v1065 = v876;
            v878 = cosf(v870);
            v879 = cosf(v862 * 0.5);
            v995 = v1161;
            v880 = v1162;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v880 = sub_1AF4229F8(0, *(v880 + 2) + 1, 1, v880);
            }

            v882 = *(v880 + 2);
            v881 = *(v880 + 3);
            if (v882 >= v881 >> 1)
            {
              v880 = sub_1AF4229F8(v881 > 1, v882 + 1, 1, v880);
            }

            *&v856 = vdivq_f32(vmulq_f32(vmulq_n_f32(v1001, v1009), v988), v985).u64[0];
            *(&v856 + 2) = (vmuls_lane_f32(v1009, v1001, 2) * 0.0014641) / 3.1416;
            HIDWORD(v856) = 0;
            v1355.columns[3] = v1016;
            v857 = vsubq_f32(v1016, v1106);
            v857.i32[3] = 0;
            v1000 = v857;
            v1008 = v856;
            v858 = 1.0 / fmaxf(v879 - v878, 0.00000011921);
            v1355.columns[1] = v1032;
            v1355.columns[0] = v1039;
            v1355.columns[2] = v1024;
            v1356 = __invert_f4(v1355);
            *(v880 + 2) = v882 + 1;
            v859 = &v880[160 * v882];
            *(v859 + 32) = v1356;
            *(v859 + 6) = v1084;
            *(v859 + 7) = v1075;
            *(v859 + 8) = v1065;
            *(v859 + 9) = v1056;
            *(v859 + 20) = v1145;
            *(v859 + 11) = v995;
            v1162 = v880;
            v1356.columns[0] = *(v1051 + 32);
            *(v853 + 755) = v1008;
            *(v853 + 756) = v1000;
            *(v853 + 757) = v1134;
            *(v853 + 758) = v1122;
            *(v853 + 759) = v1105;
            *(v853 + 760) = v1094;
            *(v853 + 761) = v1084;
            *(v853 + 762) = v1075;
            *(v853 + 763) = v1065;
            *(v853 + 764) = v1056;
            *(v853 + 765) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1084, v1134.f32[0]), v1075, *v1134.f32, 1), v1065, v1134, 2), v1056, v1134, 3);
            *(v853 + 766) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1084, v1122.f32[0]), v1075, *v1122.f32, 1), v1065, v1122, 2), v1056, v1122, 3);
            *(v853 + 767) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1084, v1105.f32[0]), v1075, *v1105.f32, 1), v1065, v1105, 2), v1056, v1105, 3);
            *(v853 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1084, v1094.f32[0]), v1075, *v1094.f32, 1), v1065, v1094, 2), v1056, v1094, 3);
            *(v853 + 769) = v1356.columns[0];
            v853[3080] = v867;
            *(v853 + 3081) = 1.0 / (v860 * v860);
            *(v853 + 3082) = v858;
            *(v853 + 3083) = -(v878 * v858);
            v1356.columns[1] = v1224;
            *(v853 + 772) = v1225;
            *(v853 + 771) = v1356.columns[1];
            v855 = v1160;
          }

          v851 += 24;
          --v852;
          ++v850;
          v853 += 72;
          v854 += 4;
          v855 += 16;
          v813 += 16;
        }
      }

      v60 = v952;
      sub_1AF630994(v940, &v1163, v1295);
      sub_1AF62D29C(v957);
      v796 = v947;
      ecs_stack_allocator_pop_snapshot(v947);
      v797 = v942;
      if (v942)
      {
        os_unfair_lock_unlock(*(v957 + 344));
        os_unfair_lock_unlock(*(v957 + 376));
      }

      v798 = v961 + 1;
    }

    while (v961 + 1 != v926);
    v727 = sub_1AF5D1564(&v1284);
  }

  MEMORY[0x1EEE9AC00](v727, v728);
  v883 = *(v913 + 184);

  sub_1AF6D655C(&type metadata for ShadowState, &off_1F2530360, v883, sub_1AF5D14F4);

  MEMORY[0x1EEE9AC00](v884, v885);
  v886 = *(v913 + 184);

  sub_1AF6D2ADC(&type metadata for LightsUniforms, &off_1F252B0E8, v886, sub_1AF5D1544);

  sub_1AF5D1564(&v1240);
  sub_1AF5D1564(&v1231);
  sub_1AF5D1564(&v1249);
  sub_1AF5D1564(&v1258);
  sub_1AF5D1564(&v1267);
  sub_1AF5D1564(&v1275);
  sub_1AF5D1564(&v1284);
}

void sub_1AF5CE944(__int128 *a1, uint64_t a2, char **a3, float32x4_t *a4, __int128 *a5, uint64_t a6, simd_float4 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, double a12, double a13, float a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  if (a2)
  {
    v19 = a2;
    a7.i32[3] = 1.0;
    v47 = a7;
    v48 = __PAIR64__(a17, LODWORD(a14));
    v21 = a4 + 2;
    v22 = (a6 + 32);
    v24 = *(a6 + 44) == 1.0 && *(a6 + 40) == 1.0;
    v42 = v24;
    do
    {
      v49 = *v21;
      v50 = *a5;
      v25 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1AF4229F8(0, *(v25 + 2) + 1, 1, v25);
        *a3 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1AF4229F8(v27 > 1, v28 + 1, 1, v25);
        *a3 = v25;
      }

      v29 = v49;
      v30 = vmulq_f32(v29, v29);
      v31 = vmulq_laneq_f32(v29, v29, 3);
      v32 = vmuls_lane_f32(v29.f32[0], *v29.f32, 1);
      v33 = vmuls_lane_f32(v49.f32[1], v49, 2);
      v29.f32[0] = vmuls_lane_f32(v29.f32[0], v29, 2);
      v34 = v30.f32[1];
      v35.i32[3] = 0;
      v35.f32[0] = (0.5 - v30.f32[1]) - v30.f32[2];
      v35.f32[1] = v32 + v31.f32[2];
      v35.f32[2] = v29.f32[0] - v31.f32[1];
      v51.columns[0] = vaddq_f32(v35, v35);
      v36 = 0.5 - v30.f32[0];
      v37.i32[3] = 0;
      v37.f32[0] = v32 - v31.f32[2];
      v37.f32[1] = (0.5 - v30.f32[0]) - v30.f32[2];
      v37.f32[2] = v33 + v31.f32[0];
      v51.columns[1] = vaddq_f32(v37, v37);
      v31.f32[0] = v33 - v31.f32[0];
      v38.i32[3] = 0;
      v38.f32[0] = v29.f32[0] + v31.f32[1];
      v38.i32[1] = v31.i32[0];
      v38.f32[2] = v36 - v34;
      v51.columns[2] = vaddq_f32(v38, v38);
      v51.columns[3] = v47;
      v52 = __invert_f4(v51);
      *(v25 + 2) = v28 + 1;
      v39 = &v25[160 * v28];
      *(v39 + 32) = v52;
      *(v39 + 6) = a8;
      *(v39 + 7) = a9;
      *(v39 + 8) = a10;
      *(v39 + 9) = a11;
      *(v39 + 20) = v48;
      *(v39 + 11) = v50;
      if (v42)
      {
        v40 = *a5;
        *a1 = *a5;
        *a5 = *&v40 + *(&v40 + 2);
        if ((*&v40 + *(&v40 + 2)) >= 1.0)
        {
          *(&v41 + 1) = *(&v40 + 1);
          LODWORD(v41) = 0;
          *(&v41 + 1) = *(&v40 + 1) + *(&v40 + 3);
          *a5 = v41;
        }
      }

      else
      {
        *a1 = *v22;
      }

      ++a1;
      ++v22;
      ++v21;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1AF5CEBA8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*a3)
  {
    if (*(a3 + 80) >= 1)
    {
      v32 = *(a3 + 56);
      if (v32)
      {
        v5 = result;
        v6 = 0;
        v31 = *(a3 + 40);
        v7 = *(a3 + 72);
        v8 = *(v7 + 32);
        v9 = *(*(a3 + 64) + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v36 = *a3;
        v10 = *(a3 + 24);
        v37 = *(a3 + 8);
        v38 = v10;
        v29 = v9;
        v30 = v8;
        do
        {
          v41 = v4;
          v11 = (v31 + 48 * v6);
          v34 = *v11;
          v35 = v6;
          v12 = v11[2];
          v33 = v11[1];
          v13 = *(v11 + 2);
          v14 = *(v11 + 3);
          v16 = *(v11 + 4);
          v15 = *(v11 + 5);
          if (v9)
          {
            v17 = *(v15 + 376);

            os_unfair_lock_lock(v17);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v8);
          v18 = *(v7 + 64);
          v39[0] = *(v7 + 48);
          v39[1] = v18;
          v40 = *(v7 + 80);
          v19 = *(v7 + 32);
          v20 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

          *(v7 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
          *(v7 + 56) = v20;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;

          v21 = sub_1AF64B110(&type metadata for AmbientLight, &off_1F252ACC0, v13, v14, v16, v7);
          v22 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v13, v14, v16, v7);
          if (v13)
          {
            for (; v16; --v16)
            {
              if (v12 <= 7)
              {
                *&v24 = vmulq_n_f32(*v22, *v21).u64[0];
                *(&v24 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(*v21, *v22, 2));
                *(v5 + 16 * v12) = v24;
              }

              ++v22;
              ++v21;
              ++v12;
            }
          }

          else
          {
            v25 = &v21[v34];
            v26 = v33 - v34;
            v27 = &v22[v34];
            while (v26)
            {
              if (v12 < 8)
              {
                *&v28 = vmulq_n_f32(*v27, *v25).u64[0];
                *(&v28 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(*v25, *v27, 2));
                *(v5 + 16 * v12) = v28;
              }

              ++v25;
              ++v27;
              ++v12;
              --v26;
            }
          }

          v23 = v41;
          sub_1AF630994(v7, &v36, v39);
          v4 = v23;
          sub_1AF62D29C(v15);
          v8 = v30;
          ecs_stack_allocator_pop_snapshot(v30);
          v9 = v29;
          if (v29)
          {
            os_unfair_lock_unlock(*(v15 + 344));
            os_unfair_lock_unlock(*(v15 + 376));
          }

          v6 = v35 + 1;
        }

        while (v35 + 1 != v32);
      }
    }
  }

  return result;
}

void *sub_1AF5CEE5C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v15 = *MEMORY[0x1E69E9840];
  v8 = *v4 + *(v4 + 1);
  v9 = vaddvq_s32(*(v4 + 8)) + *(v4 + 6) + v8;
  v10 = *(v2 + 232);
  memcpy(v14, v4, 0x65C0uLL);
  *v7 = CFXBufferAllocatorPerFrameAllocateWithBytes(v10, v14, 0x65C0uLL);
  *(v7 + 8) = v11;
  *(v7 + 34) = v5[1] + 6 * v5[3] + v5[5] > 0;
  *(v7 + 33) = v8 > 0;
  *(v7 + 32) = v9 > 0;
  sub_1AF5B4B24(v14);
  result = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v3 + 232), v14, 0xD0uLL);
  *(v7 + 16) = result;
  *(v7 + 24) = v13;
  return result;
}

uint64_t sub_1AF5CEF9C()
{

  return v0;
}

uint64_t sub_1AF5CEFEC()
{
  sub_1AF5CEF9C();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF5CF084()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED73B840;
  v30 = 0;
  v31 = 2;
  v32 = 0;
  v33 = 2;
  v34 = 0;
  sub_1AF5C7B28(&type metadata for DirectionalLight, &off_1F252AA30, v12);
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Shadow;
  *(inited + 40) = &off_1F2530098;
  sub_1AF5C5E24(inited, sub_1AF5D06EC, v13);
  sub_1AF5D16DC(v12, &qword_1ED723988);
  swift_setDeallocating();
  v2 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v14;
  sub_1AF5C88A0(&type metadata for DirectionalLight, &off_1F252AA30, v15);
  v3 = v15[1];
  *(v0 + 56) = v15[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v16;
  sub_1AF5C7B28(&type metadata for PointLight, &off_1F252AAE0, v17);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = &type metadata for Shadow;
  *(v4 + 40) = &off_1F2530098;
  sub_1AF5C5E24(v4, sub_1AF5D06EC, v18);
  sub_1AF5D16DC(v17, qword_1ED7239D8);
  swift_setDeallocating();
  v5 = v18[1];
  *(v0 + 96) = v18[0];
  *(v0 + 112) = v5;
  *(v0 + 128) = v19;
  sub_1AF5C88A0(&type metadata for PointLight, &off_1F252AAE0, v20);
  v6 = v20[1];
  *(v0 + 136) = v20[0];
  *(v0 + 152) = v6;
  *(v0 + 168) = v21;
  sub_1AF5C7B28(&type metadata for SpotLight, &off_1F252AB90, v22);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for Shadow;
  *(v7 + 40) = &off_1F2530098;
  sub_1AF5C5E24(v7, sub_1AF5D06EC, v23);
  sub_1AF5D16DC(v22, &qword_1ED723960);
  swift_setDeallocating();
  v8 = v23[1];
  *(v0 + 176) = v23[0];
  *(v0 + 192) = v8;
  *(v0 + 208) = v24;
  sub_1AF5C88A0(&type metadata for SpotLight, &off_1F252AB90, v25);
  v9 = v25[1];
  *(v0 + 216) = v25[0];
  *(v0 + 232) = v9;
  *(v0 + 248) = v26;
  sub_1AF5C8A44(v27);
  v10 = v27[1];
  *(v0 + 256) = v27[0];
  *(v0 + 272) = v10;
  *(v0 + 288) = v28;
  return v0;
}

uint64_t sub_1AF5CF390()
{
  v0 = swift_allocObject();
  sub_1AF5CF084();
  return v0;
}

uint64_t sub_1AF5CF3E4(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for LightsUniforms, &off_1F252B0E8, v1);
}

void sub_1AF5CF44C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v26[3256] = *MEMORY[0x1E69E9840];
  v4 = sub_1AF12DDCC(v2);
  v5 = sub_1AF1D00F8(v4);
  v6 = sub_1AF12F10C(v3);
  *&v7 = vsub_f32(0, COERCE_FLOAT32X2_T(sub_1AF1B9F08(v6)));
  *(&v7 + 2) = 0.0 - v8;
  HIDWORD(v7) = 1.0;
  v24 = v7;
  bzero(v26, 0x65C0uLL);
  v9 = swift_allocObject();
  *(v9 + 16) = v26;
  *(v9 + 24) = v5;
  *(v9 + 32) = xmmword_1AFE20150;
  *(v9 + 48) = xmmword_1AFE20160;
  v10 = v24;
  *(v9 + 64) = xmmword_1AFE20180;
  *(v9 + 80) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1AF5D1874;
  *(v11 + 24) = v9;
  v25[4] = sub_1AF5D1884;
  v25[5] = v11;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1AF5D04C0;
  v25[3] = &unk_1F24E5EC0;
  v12 = _Block_copy(v25);
  v13 = v5;

  sub_1AF13AD80(v13, v3, v12);
  _Block_release(v12);
  swift_isEscapingClosureAtFileLocation();

  *&v24 = v4;
  v14 = sub_1AF1CF8AC(v4);
  v15 = *(sub_1AF0FB884(v14) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  sub_1AF130C80(v3, v16, v17, v18);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {

    v23[1] = v23;
    MEMORY[0x1EEE9AC00](v20, v21);
    v23[0] = v6;
    v22 = *(v15 + 184);

    sub_1AF6D2ADC(&type metadata for LightsUniforms, &off_1F252B0E8, v22, sub_1AF5D18C4);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void sub_1AF5CF7CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v192 = *MEMORY[0x1E69E9840];
  v154 = xmmword_1AFE20150;
  v155 = xmmword_1AFE20160;
  v156 = xmmword_1AFE20180;
  v157 = xmmword_1AFE201A0;
  v158 = xmmword_1AFE20150;
  v159 = xmmword_1AFE20160;
  v160 = xmmword_1AFE20180;
  v161 = xmmword_1AFE201A0;
  v162 = xmmword_1AFE20150;
  v163 = xmmword_1AFE20160;
  v164 = xmmword_1AFE20180;
  v165 = xmmword_1AFE201A0;
  v166 = xmmword_1AFE20150;
  v167 = xmmword_1AFE20160;
  v168 = xmmword_1AFE20180;
  v169 = xmmword_1AFE201A0;
  v170 = xmmword_1AFE20150;
  v171 = xmmword_1AFE20160;
  v172 = xmmword_1AFE20180;
  v173 = xmmword_1AFE201A0;
  v174 = xmmword_1AFE20150;
  v175 = xmmword_1AFE20160;
  v176 = xmmword_1AFE20180;
  v177 = xmmword_1AFE201A0;
  v130 = xmmword_1AFE20150;
  v131 = xmmword_1AFE20160;
  v132 = xmmword_1AFE20180;
  v133 = xmmword_1AFE201A0;
  v134 = xmmword_1AFE20150;
  v135 = xmmword_1AFE20160;
  v136 = xmmword_1AFE20180;
  v137 = xmmword_1AFE201A0;
  v138 = xmmword_1AFE20150;
  v139 = xmmword_1AFE20160;
  v140 = xmmword_1AFE20180;
  v141 = xmmword_1AFE201A0;
  v142 = xmmword_1AFE20150;
  v143 = xmmword_1AFE20160;
  v144 = xmmword_1AFE20180;
  v145 = xmmword_1AFE201A0;
  v146 = xmmword_1AFE20150;
  v147 = xmmword_1AFE20160;
  v148 = xmmword_1AFE20180;
  v149 = xmmword_1AFE201A0;
  v150 = xmmword_1AFE20150;
  v151 = xmmword_1AFE20160;
  v152 = xmmword_1AFE20180;
  v153 = xmmword_1AFE201A0;
  if (a1)
  {
    v13 = 0;
    v112 = a4 + 3596;
    v83 = a4 + 2444;
    v82 = a4 + 3020;
    v81 = a4 + 1040;
    v80 = a4 + 2288;
    v78 = a4 + 528;
    v79 = a4 + 16;
    v119 = vdupq_n_s32(0x3ABFE803u);
    v111 = vdupq_n_s32(0x40490FDAu);
    do
    {
      v14 = *(a3 + 8 * v13);
      v15 = *(a2 + 8 * v13);
      v16 = v14;
      v17 = sub_1AF19CBB4(v16);
      v18 = sub_1AF19B994(v16);

      if (v17 > 2)
      {
        if (v17 <= 4)
        {
          if (v17 != 3)
          {
            goto LABEL_82;
          }

          if (v18)
          {
            v29 = a4[5];
            if (v29 < 9)
            {
              sub_1AF5C7818(v16, v15, v190, a6, a7, a8, a9);

              memcpy(&v82[72 * v29], v190, 0x120uLL);
              ++a4[5];
              goto LABEL_5;
            }
          }

          else
          {
            v40 = a4[4];
            if (v40 < 9)
            {
              sub_1AF5C7818(v16, v15, v191, a6, a7, a8, a9);

              memcpy(&v83[72 * v40], v191, 0x120uLL);
              ++a4[4];
              goto LABEL_5;
            }
          }

          goto LABEL_4;
        }

        if (v17 == 5)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v20 = sub_1AFDFDA28();
          sub_1AFDFF308();
          sub_1AFDFF2A8();
          sub_1AFDFD038();
          v180 = v127;
          v181 = v128;
          v182 = v129;
          v179 = v126;
          v178 = v125;
          v21 = sub_1AFDFF2E8();
          if (qword_1ED725CB8 != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&dword_1EB634368);
          if (qword_1ED7259C0 != -1)
          {
            swift_once();
          }

          v22 = off_1ED7259C8;
          if (!*(off_1ED7259C8 + 2) || (v23 = sub_1AFDFF278(), v24 = -1 << v22[32], v25 = v23 & ~v24, ((*&v22[((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v25) & 1) == 0))
          {
LABEL_25:
            sub_1AF70D168(&v124, v21);
            os_unfair_lock_unlock(&dword_1EB634368);
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v125 = 1;
            sub_1AF0D4F18(v20, &v125, 0xD00000000000002ALL, 0x80000001AFF2C460);
            goto LABEL_4;
          }

          v26 = ~v24;
          while (*(*(v22 + 6) + 8 * v25) != v21)
          {
            v25 = (v25 + 1) & v26;
            if (((*&v22[((v25 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v25) & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          if (v17 != 6)
          {
LABEL_82:
            sub_1AFDFE518();
            __break(1u);
            return;
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v33 = sub_1AFDFDA28();
          sub_1AFDFF308();
          sub_1AFDFF2A8();
          sub_1AFDFD038();
          v185 = v127;
          v186 = v128;
          v187 = v129;
          v184 = v126;
          v183 = v125;
          v34 = sub_1AFDFF2E8();
          if (qword_1ED725CB8 != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&dword_1EB634368);
          if (qword_1ED7259C0 != -1)
          {
            swift_once();
          }

          v35 = off_1ED7259C8;
          if (!*(off_1ED7259C8 + 2) || (v36 = sub_1AFDFF278(), v37 = -1 << v35[32], v38 = v36 & ~v37, ((*&v35[((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v38) & 1) == 0))
          {
LABEL_53:
            sub_1AF70D168(&v124, v34);
            os_unfair_lock_unlock(&dword_1EB634368);
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v125 = 1;
            sub_1AF0D4F18(v33, &v125, 0xD000000000000029, 0x80000001AFF2C430);
            goto LABEL_4;
          }

          v39 = ~v37;
          while (*(*(v35 + 6) + 8 * v38) != v34)
          {
            v38 = (v38 + 1) & v39;
            if (((*&v35[((v38 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v38) & 1) == 0)
            {
              goto LABEL_53;
            }
          }
        }

        os_unfair_lock_unlock(&dword_1EB634368);
      }

      else if (v17)
      {
        if (v17 == 1)
        {
          if (v18)
          {
            v19 = a4[3];
            if (v19 < 9)
            {
              sub_1AF5C7528(v16, v15, __src, a6, a7, a8, a9);

              memcpy(&v80[156 * v19], __src, 0x270uLL);
              ++a4[3];
              goto LABEL_5;
            }
          }

          else
          {
            v41 = a4[2];
            if (v41 < 9)
            {
              sub_1AF5C7528(v16, v15, v189, a6, a7, a8, a9);

              memcpy(&v81[156 * v41], v189, 0x270uLL);
              ++a4[2];
              goto LABEL_5;
            }
          }
        }

        else
        {
          if (v17 != 2)
          {
            goto LABEL_82;
          }

          if (v18)
          {
            v30 = a4[1];
            if (v30 < 9)
            {
              sub_1AF13AA04(a5, v15, &v154, &v130, 0, 0, 0);
              v114 = v131;
              v117 = v130;
              v106 = v133;
              v108 = v132;
              v88 = v154;
              v92 = v155;
              v84 = v156;
              v96 = v157;
              v104 = sub_1AF19BBC0(v16);
              v31 = sub_1AF19C46C(v16);
              v32 = vabsq_f32(v84);
              v102 = v31;
              if (v32.f32[0] > 0.00000011921 || v32.f32[1] > 0.00000011921 || v32.f32[2] > 0.00000011921)
              {
                v57 = vmulq_f32(v84, v84);
                *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
                *v57.f32 = vrsqrte_f32(v58);
                *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
                v59 = vmulq_n_f32(v84, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
                v59.i32[3] = v76;
                v100 = v59;
              }

              else
              {
                v100 = 0u;
              }

              v193.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v88.f32[0]), a7, *v88.f32, 1), a8, v88, 2), a9, v88, 3);
              v193.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v92.f32[0]), a7, *v92.f32, 1), a8, v92, 2), a9, v92, 3);
              v193.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v84.f32[0]), a7, *v84.f32, 1), a8, v84, 2), a9, v84, 3);
              v193.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v96.f32[0]), a7, *v96.f32, 1), a8, v96, 2), a9, v96, 3);
              v194 = __invert_f4(v193);
              v94 = v194.columns[1];
              v98 = v194.columns[0];
              v86 = v194.columns[3];
              v90 = v194.columns[2];
              if (sub_1AF19B994(v16) && (v60 = sub_1AF19ECC8(v16)) != 0)
              {
                v74 = *v60;
                v61 = sub_1AF19C608(v16);

                v62 = v74;
                v63 = v61;
                v64 = v63 * 0.01;
              }

              else
              {

                v62 = 0uLL;
                v64 = 0.0;
              }

              *&v65 = vmulq_f32(vmulq_n_f32(v104, v102), v119).u64[0];
              *(&v65 + 2) = vmuls_lane_f32(v102, v104, 2) * 0.0014641;
              HIDWORD(v65) = 0;
              v66 = &v78[64 * v30];
              *v66 = v65;
              *(v66 + 1) = v100;
              *(v66 + 2) = v98;
              *(v66 + 3) = v94;
              *(v66 + 4) = v90;
              *(v66 + 5) = v86;
              *(v66 + 6) = v117;
              *(v66 + 7) = v114;
              *(v66 + 8) = v108;
              *(v66 + 9) = v106;
              *(v66 + 10) = v62;
              *(v66 + 44) = v64;
              *(v66 + 49) = 0u;
              *(v66 + 53) = 0u;
              *(v66 + 57) = 0u;
              *(v66 + 15) = 0u;
              *(v66 + 45) = 0u;
              ++a4[1];
              goto LABEL_5;
            }
          }

          else
          {
            v42 = *a4;
            if (v42 < 9)
            {
              v43 = sub_1AF19BC08(v16);
              v115 = v44;
              v118 = v43;
              v107 = v46;
              v109 = v45;
              v89 = sub_1AF5D18E4(v15);
              v93 = v47;
              v85 = v48;
              v97 = v49;
              v105 = sub_1AF19BBC0(v16);
              v50 = sub_1AF19C46C(v16);
              v51 = vabsq_f32(v85);
              v53 = v51.f32[0] > 0.00000011921 || v51.f32[1] > 0.00000011921 || v51.f32[2] > 0.00000011921;
              v103 = v50;
              if (v53)
              {
                v54 = vmulq_f32(v85, v85);
                *&v55 = v54.f32[2] + vaddv_f32(*v54.f32);
                *v54.f32 = vrsqrte_f32(v55);
                *v54.f32 = vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32)));
                v56 = vmulq_n_f32(v85, vmul_f32(*v54.f32, vrsqrts_f32(v55, vmul_f32(*v54.f32, *v54.f32))).f32[0]);
                v56.i32[3] = v77;
                v101 = v56;
              }

              else
              {
                v101 = 0u;
              }

              v195.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v89.n128_f32[0]), a7, v89.n128_u64[0], 1), a8, v89, 2), a9, v89, 3);
              v195.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v93.f32[0]), a7, *v93.f32, 1), a8, v93, 2), a9, v93, 3);
              v195.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v85.f32[0]), a7, *v85.f32, 1), a8, v85, 2), a9, v85, 3);
              v195.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v97.f32[0]), a7, *v97.f32, 1), a8, v97, 2), a9, v97, 3);
              v196 = __invert_f4(v195);
              v95 = v196.columns[1];
              v99 = v196.columns[0];
              v87 = v196.columns[3];
              v91 = v196.columns[2];
              if (sub_1AF19B994(v16) && (v67 = sub_1AF19ECC8(v16)) != 0)
              {
                v75 = *v67;
                v68 = sub_1AF19C608(v16);

                v69 = v75;
                v70 = v68;
                v71 = v70 * 0.01;
              }

              else
              {

                v71 = 0.0;
                v69 = 0uLL;
              }

              *&v72 = vmulq_f32(vmulq_n_f32(v105, v103), v119).u64[0];
              *(&v72 + 2) = vmuls_lane_f32(v103, v105, 2) * 0.0014641;
              HIDWORD(v72) = 0;
              v73 = &v79[64 * v42];
              *v73 = v72;
              *(v73 + 1) = v101;
              *(v73 + 2) = v99;
              *(v73 + 3) = v95;
              *(v73 + 4) = v91;
              *(v73 + 5) = v87;
              *(v73 + 6) = v118;
              *(v73 + 7) = v115;
              *(v73 + 8) = v109;
              *(v73 + 9) = v107;
              *(v73 + 10) = v69;
              *(v73 + 44) = v71;
              *(v73 + 45) = 0u;
              *(v73 + 49) = 0u;
              *(v73 + 53) = 0u;
              *(v73 + 57) = 0u;
              *(v73 + 15) = 0u;
              ++*a4;
              goto LABEL_5;
            }
          }
        }
      }

      else
      {
        v27 = a4[6];
        if (v27 < 9)
        {
          v116 = sub_1AF19BBC0(v16);
          v113 = sub_1AF19C46C(v16);

          *&v28 = vdivq_f32(vmulq_f32(vmulq_n_f32(v116, v113), v119), v111).u64[0];
          *(&v28 + 1) = COERCE_UNSIGNED_INT((vmuls_lane_f32(v113, v116, 2) * 0.0014641) / 3.1416);
          *&v112[4 * v27] = v28;
          ++a4[6];
          goto LABEL_5;
        }
      }

LABEL_4:

LABEL_5:
      ++v13;
    }

    while (v13 != a1);
  }
}

void sub_1AF5D04F4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v31 = *MEMORY[0x1E69E9840];
  v10 = *v6 + *(v6 + 1);
  v11 = vaddvq_s32(*(v6 + 8)) + *(v6 + 6) + v10;
  v12 = *(v4 + 232);
  memcpy(__dst, v6, sizeof(__dst));
  *v9 = CFXBufferAllocatorPerFrameAllocateWithBytes(v12, __dst, 0x65C0uLL);
  *(v9 + 8) = v13;
  *(v9 + 34) = v7[1] + 6 * v7[3] + v7[5] > 0;
  *(v9 + 33) = v10 > 0;
  *(v9 + 32) = v11 > 0;
  v14 = sub_1AF12DDCC(v3);
  if (v14)
  {
    v15 = v14;
    v16 = sub_1AF1D005C(v14, 0);
    if (v16)
    {
      v17 = v16;
      v18 = sub_1AF166598(v17);
      *&v19 = sub_1AF1673D0(v17);
      v28 = v20;
      v29 = v19;
      v27 = v21;

      v22 = *(v5 + 232);
      __dst[0] = v29;
      __dst[1] = v28;
      __dst[2] = v27;
      *&__dst[3] = v18;
      *(&__dst[3] + 4) = 0u;
      *(&__dst[4] + 4) = 0u;
      *(&__dst[5] + 4) = 0u;
      *(&__dst[6] + 4) = 0u;
      *(&__dst[7] + 4) = 0u;
      *(&__dst[8] + 4) = 0u;
      *(&__dst[9] + 4) = 0u;
      *(&__dst[10] + 4) = 0u;
      *(&__dst[11] + 4) = 0u;
      __dst[12] = 0u;
      v23 = v22;
      v24 = CFXBufferAllocatorPerFrameAllocateWithBytes(v23, __dst, 0xD0uLL);
      v26 = v25;

      *(v9 + 16) = v24;
      *(v9 + 24) = v26;
    }

    else
    {
    }
  }
}

uint64_t sub_1AF5D06EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  v34 = *(a3 + 2);
  v33 = *(a3 + 12);
  v32 = a3[2];
  v31 = *(a3 + 24);
  v30 = a3[4];
  v6 = *(*a3 + 18);
  v7 = (v5 + 41 + *(v5 + 16));
  v8 = *(*a3 + 22);
  v9 = (v5 + 41 + *(v5 + 20));
  v29 = *(*a3 + 30);
  v10 = *(*a3 + 30) / 0x18uLL;
  v11 = 16 * (v6 >> 4);
  v12 = 16 * a2;
  v36 = (v8 + v11 + 7) & 0x3FFF8;
  v13 = ((v8 + v11 + 7) & 0xFFF8) + 16 * a2;
  v35 = 24 * v10;
  v22 = *(*a3 + 28);
  v23 = *a3 + 41;
  v26 = v36 + 16 * a2;
  v27 = sub_1AF6B7B38(v7, v6 >> 4, v9, v8, a1, a2, v23 + v22, v10);
  __src = v7;
  v28 = v6;
  if (v8)
  {
    if (v6 >= 0x10)
    {
      v15 = &v7[2 * (v6 >> 4)];
      v16 = v9;
      do
      {
        if (((*(v7[1] + 48))(*v7) & 1) != 0 && (*v16 & 0xFE) == 2)
        {
          v14 = 1;
          goto LABEL_11;
        }

        v7 += 2;
        ++v16;
      }

      while (v7 != v15);
      v14 = 0;
LABEL_11:
      v13 = v26;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for QueryBuffer();
  result = swift_allocObject();
  v18 = result;
  *(result + 16) = 0;
  *(result + 18) = v11;
  *(result + 20) = v11;
  *(result + 22) = v8;
  *(result + 24) = (v8 + v11 + 7) & 0xFFF8;
  *(result + 26) = v12;
  *(result + 28) = v13;
  *(result + 30) = v35;
  *(result + 32) = v27;
  v19 = result + 41;
  *(result + 40) = v14;
  if (v28 >= 0x10)
  {
    result = memcpy((result + 41), __src, v11);
  }

  if (v8)
  {
    result = memcpy((v19 + v11), v9, v8);
  }

  if (v12)
  {
    v20 = v12 >> 4;
    if (v12 >> 4 >= a2)
    {
      v20 = a2;
    }

    result = memcpy((v19 + v36), a1, 16 * v20);
  }

  if (v29 > 0x17)
  {
    result = memcpy((v19 + v26), (v23 + v22), v35);
  }

  *a4 = v18;
  *(a4 + 8) = v34;
  *(a4 + 12) = v33;
  *(a4 + 16) = v32;
  *(a4 + 24) = v31;
  *(a4 + 32) = v30;
  return result;
}

uint64_t sub_1AF5D0980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF6B7F4C((*a3 + 41 + *(*a3 + 16)), *(*a3 + 18) >> 4, (*a3 + 41 + *(*a3 + 20)), *(*a3 + 22), a1, a2, (*a3 + 41 + *(*a3 + 28)), *(*a3 + 30) / 0x18u);
  v7 = *(a3 + 8);
  v8 = *(a3 + 12);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 12) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  return result;
}

uint64_t sub_1AF5D0A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 12);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  result = sub_1AF6B7F4C((*a3 + 41 + *(*a3 + 16)), *(*a3 + 18) >> 4, (*a3 + 41 + *(*a3 + 20)), *(*a3 + 22), a1, a2, (*a3 + 41 + *(*a3 + 28)), *(*a3 + 30) / 0x18u);
  *a4 = result;
  *(a4 + 8) = v5;
  *(a4 + 12) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  return result;
}

uint64_t sub_1AF5D0ADC()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF5D0B28()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF5D0B74()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

float sub_1AF5D0BC0(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB633130, sub_1AF5D0E60, &type metadata for DirectionalLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v14 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D0E60();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v18 = 0;
    v10 = sub_1AFDFE6C8();
    if ((v10 & 0x100000000) != 0)
    {
      v2 = 2145.7;
    }

    else
    {
      v2 = *&v10;
    }

    v11 = a1[3];
    v12 = a1[4];
    sub_1AF441150(a1, v11);
    if (sub_1AF694FF8(1047, v11, v12))
    {
      v15 = 1;
      sub_1AFDFE738();
    }

    v17 = 2;
    sub_1AFDFE6C8();
    v16 = 3;
    sub_1AFDFE6C8();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF5D0E60()
{
  result = qword_1EB633770;
  if (!qword_1EB633770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633770);
  }

  return result;
}

float sub_1AF5D0EB4(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB6328C0, sub_1AF5D1138, &type metadata for PointLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D1138();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v16 = 0;
    v10 = sub_1AFDFE6C8();
    if ((v10 & 0x100000000) != 0)
    {
      v2 = 2145.7;
    }

    else
    {
      v2 = *&v10;
    }

    v15 = 1;
    sub_1AFDFE6C8();
    v14 = 2;
    sub_1AFDFE6C8();
    v13 = 3;
    sub_1AFDFE6C8();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF5D1138()
{
  result = qword_1EB633040;
  if (!qword_1EB633040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633040);
  }

  return result;
}

uint64_t sub_1AF5D118C@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v25 = a2;
  sub_1AF5D180C(0, &qword_1EB63C030, sub_1AF5D14A0, &type metadata for SpotLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v24 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D14A0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v25;
  v31 = 0;
  v11 = sub_1AFDFE6C8();
  if ((v11 & 0x100000000) != 0)
  {
    v12 = 2145.7;
  }

  else
  {
    v12 = *&v11;
  }

  v30 = 1;
  v13 = sub_1AFDFE6C8();
  if ((v13 & 0x100000000) != 0)
  {
    v14 = 10.0;
  }

  else
  {
    v14 = *&v13;
  }

  v29 = 2;
  v15 = sub_1AFDFE6C8();
  if ((v15 & 0x100000000) != 0)
  {
    v16 = 1.0472;
  }

  else
  {
    v16 = *&v15;
  }

  v28 = 3;
  v17 = sub_1AFDFE6C8();
  if ((v17 & 0x100000000) != 0)
  {
    v18 = 0.7854;
  }

  else
  {
    v18 = *&v17;
  }

  v27 = 4;
  v19 = sub_1AFDFE6C8();
  v26 = 5;
  v21 = sub_1AFDFE6C8();
  if ((v19 & 0x100000000) != 0)
  {
    v22 = 0.01;
  }

  else
  {
    v22 = *&v19;
  }

  (*(v6 + 8))(v9, v5);
  if ((v21 & 0x100000000) != 0)
  {
    v23 = 10.0;
  }

  else
  {
    v23 = *&v21;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v12;
  v10[1] = v14;
  v10[2] = v16;
  v10[3] = v18;
  v10[4] = v22;
  v10[5] = v23;
  return result;
}

unint64_t sub_1AF5D14A0()
{
  result = qword_1EB63C038;
  if (!qword_1EB63C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C038);
  }

  return result;
}

uint64_t sub_1AF5D14F4(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1AF5D1564(uint64_t a1)
{
  sub_1AF5C3C90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF5D15C0(uint64_t a1, uint64_t a2)
{
  sub_1AF5C3C90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF5D1624(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF5D1678()
{
  result = qword_1ED7270D0;
  if (!qword_1ED7270D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7270D0);
  }

  return result;
}

uint64_t sub_1AF5D16DC(uint64_t a1, unint64_t *a2)
{
  sub_1AF5D1738(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF5D1738(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Query3();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1AF5D17B8()
{
  result = qword_1EB632FE8;
  if (!qword_1EB632FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632FE8);
  }

  return result;
}

void sub_1AF5D180C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF5D18AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1AF5D1904(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = &xmmword_1AFE63420;
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = &xmmword_1AFE633E0;
      return *v1;
    }

LABEL_12:
    v1 = &xmmword_1AFE632E0;
    return *v1;
  }

  if (a1 == 2)
  {
    v1 = &xmmword_1AFE633A0;
    return *v1;
  }

  if (a1 == 3)
  {
    v1 = &xmmword_1AFE63360;
    return *v1;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v1 = &xmmword_1AFE63320;
  return *v1;
}

__n128 initializeWithTake for GraphScriptGroup.Reference(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LightsUniforms(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for LightsUniforms(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1AF5D1AA0()
{
  result = qword_1EB63C050;
  if (!qword_1EB63C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C050);
  }

  return result;
}

unint64_t sub_1AF5D1AF8()
{
  result = qword_1EB63C058;
  if (!qword_1EB63C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C058);
  }

  return result;
}

unint64_t sub_1AF5D1B50()
{
  result = qword_1EB63C060;
  if (!qword_1EB63C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C060);
  }

  return result;
}

unint64_t sub_1AF5D1BA8()
{
  result = qword_1EB63C068;
  if (!qword_1EB63C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C068);
  }

  return result;
}

unint64_t sub_1AF5D1C00()
{
  result = qword_1EB632FD8;
  if (!qword_1EB632FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632FD8);
  }

  return result;
}

unint64_t sub_1AF5D1C58()
{
  result = qword_1EB632FE0;
  if (!qword_1EB632FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632FE0);
  }

  return result;
}

unint64_t sub_1AF5D1CB0()
{
  result = qword_1EB63C070;
  if (!qword_1EB63C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C070);
  }

  return result;
}

unint64_t sub_1AF5D1D08()
{
  result = qword_1EB63C078;
  if (!qword_1EB63C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C078);
  }

  return result;
}

unint64_t sub_1AF5D1D60()
{
  result = qword_1EB633030;
  if (!qword_1EB633030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633030);
  }

  return result;
}

unint64_t sub_1AF5D1DB8()
{
  result = qword_1EB633038;
  if (!qword_1EB633038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633038);
  }

  return result;
}

unint64_t sub_1AF5D1E10()
{
  result = qword_1EB633760;
  if (!qword_1EB633760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633760);
  }

  return result;
}

unint64_t sub_1AF5D1E68()
{
  result = qword_1EB633768;
  if (!qword_1EB633768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633768);
  }

  return result;
}

uint64_t sub_1AF5D1EC4(void *a1, float a2, float a3)
{
  sub_1AF5D3370(0, &qword_1EB63C0E0, sub_1AF5D32C8, &type metadata for GenericLOD.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D32C8();
  sub_1AFDFF3F8();
  *&v13[2] = a2;
  *&v13[3] = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF5D208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001AFF2C4E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AF5D2120(uint64_t a1)
{
  v2 = sub_1AF5D32C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D215C(uint64_t a1)
{
  v2 = sub_1AF5D32C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF5D2198(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AF5D2BF8(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF5D21E0@<D0>(void *a1@<X8>)
{
  result = 6.56066616e69;
  *a1 = 0x4E6E6B2800000000;
  return result;
}

uint64_t sub_1AF5D21F0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  v2 = *(v0 + 32);
  if (v2)
  {
    MEMORY[0x1B271DEA0](v2, -1, -1);
  }

  return swift_deallocClassInstance();
}

void *assignWithCopy for LODRenderer(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for LODRenderer(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RenderGraphDiagnostics.RendererInfo(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RenderGraphDiagnostics.RendererInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AF5D23C8(void *a1, float a2, float a3)
{
  sub_1AF5D3370(0, &qword_1EB63C090, sub_1AF5D3018, &type metadata for LODState.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14[-v11];
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D3018();
  sub_1AFDFF3F8();
  v15 = a2;
  v16 = a3;
  v14[15] = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0);
  sub_1AFDFE918();
  if (!v3)
  {
    v14[14] = 1;
    sub_1AFDFE948();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF5D25A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x49646F4C7473616CLL;
  }

  else
  {
    v3 = 0x676E61527473616CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEC0000007865646ELL;
  }

  if (*a2)
  {
    v5 = 0x49646F4C7473616CLL;
  }

  else
  {
    v5 = 0x676E61527473616CLL;
  }

  if (*a2)
  {
    v6 = 0xEC0000007865646ELL;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF5D265C()
{
  if (*v0)
  {
    return 0x49646F4C7473616CLL;
  }

  else
  {
    return 0x676E61527473616CLL;
  }
}

uint64_t sub_1AF5D26A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E61527473616CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49646F4C7473616CLL && a2 == 0xEC0000007865646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF5D278C(uint64_t a1)
{
  v2 = sub_1AF5D3018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D27C8(uint64_t a1)
{
  v2 = sub_1AF5D3018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D2804@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_1AF5D2DEC(a1);
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_1AF5D2864(uint64_t a1)
{
  v2 = sub_1AF5D306C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D28A0(uint64_t a1)
{
  v2 = sub_1AF5D306C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D292C(uint64_t a1)
{
  v2 = sub_1AF5D33D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D2968(uint64_t a1)
{
  v2 = sub_1AF5D33D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D29F4(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF5D3370(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF5D2B30(uint64_t a1)
{
  v2 = sub_1AF5D331C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D2B6C(uint64_t a1)
{
  v2 = sub_1AF5D331C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

float sub_1AF5D2BF8(void *a1)
{
  sub_1AF5D3370(0, &qword_1EB63C0D0, sub_1AF5D32C8, &type metadata for GenericLOD.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D32C8();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    (*(v6 + 8))(v9, v5);
    v2 = v12;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF5D2DEC(void *a1)
{
  sub_1AF5D3370(0, &qword_1EB63C080, sub_1AF5D3018, &type metadata for LODState.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v12[-v7];
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AF5D3018();
  v10 = v9;
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF48C324();
    v12[15] = 0;
    sub_1AF48C3D0(&qword_1ED7231A0);
    sub_1AFDFE768();
    v12[14] = 1;
    v10 = sub_1AFDFE798();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v10;
}

unint64_t sub_1AF5D3018()
{
  result = qword_1EB63C088;
  if (!qword_1EB63C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C088);
  }

  return result;
}

unint64_t sub_1AF5D306C()
{
  result = qword_1EB63C0A0;
  if (!qword_1EB63C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63C0A0);
  }

  return result;
}