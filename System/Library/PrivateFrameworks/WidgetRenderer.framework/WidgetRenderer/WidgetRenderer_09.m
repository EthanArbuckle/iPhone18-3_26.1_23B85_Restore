uint64_t sub_1DAE4E1DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1DAECDBFC();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v48 = a1;
    v49 = 0;
    v50 = 0;
    v22 = a1;
    sub_1DAE50204(&v48, a3, a4, a5, a6);
    sub_1DADE62C4(v48, v49, v50);
  }

  else
  {
    v44 = v19;
    v45 = v18;
    v46 = a6;
    v47 = a2;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
    v24 = 16;
    if (*(a7 + *(v23 + 44) + 8))
    {
      v24 = 24;
    }

    (*(**(*(a3 + v24) + 16) + 96))();
    sub_1DAE4E5F4();

    sub_1DAE4E8F8(*(a7 + 16), *(a7 + 24));
    v25 = *(v23 + 36);
    v26 = [objc_opt_self() defaultManager];
    v27 = sub_1DAED188C();
    sub_1DAEBC784(v27);

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v29 = sub_1DAECEDEC();
    __swift_project_value_buffer(v29, qword_1EE011748);
    v30 = v44;
    (*(v44 + 16))(v21, a8, v45);
    v31 = sub_1DAECEDCC();
    v32 = sub_1DAED200C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v42 = v33;
      v43 = swift_slowAlloc();
      v48 = v43;
      *v33 = 136315138;
      sub_1DAD8E24C(&qword_1EE00BD10, MEMORY[0x1E6968FB0]);
      v34 = v45;
      v35 = sub_1DAED287C();
      v37 = v36;
      (*(v30 + 8))(v21, v34);
      v38 = sub_1DAD6482C(v35, v37, &v48);

      v39 = v42;
      *(v42 + 1) = v38;
      v40 = v39;
      _os_log_impl(&dword_1DAD61000, v31, v32, "Saved snapshot to URL: %s", v39, 0xCu);
      v41 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1E127F100](v41, -1, -1);
      MEMORY[0x1E127F100](v40, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v21, v45);
    }

    v48 = 0;
    v49 = 0;
    v50 = 1;
    sub_1DAE50204(&v48, a3, a4, a5, v46);
  }

  return sub_1DAED0D4C();
}

uint64_t sub_1DAE4E5F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v20 - v3;
  v21 = sub_1DAECD9BC();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED1D3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED1D2C();
  v14 = sub_1DAED1CFC();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  if (v16 >> 60 == 15)
  {
    sub_1DAECD9AC();
    v17 = sub_1DAECDBFC();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v4, v0, v17);
    (*(v18 + 56))(v4, 0, 1, v17);
    sub_1DAECD9CC();
    sub_1DAD64398(v4, &unk_1ECC09EC0, &qword_1DAED7970);
    (*(v5 + 8))(v8, v21);
    return swift_willThrow();
  }

  else
  {
    v20[2] = v14;
    v20[3] = v16;
    sub_1DADA7F5C();
    sub_1DAECDB5C();
    return sub_1DADAF698(v14, v16);
  }
}

uint64_t sub_1DAE4E8F8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23 - v7;
  v27 = sub_1DAECD9BC();
  v24 = *(v27 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAED1D3C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return sub_1DAECDB6C();
  }

  v23 = v3;
  sub_1DAED1D2C();
  v17 = sub_1DAED1CFC();
  v19 = v18;
  (*(v13 + 8))(v16, v12);
  if (v19 >> 60 == 15)
  {
    sub_1DAECD9AC();
    v20 = sub_1DAECDBFC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v8, v2, v20);
    (*(v21 + 56))(v8, 0, 1, v20);
    sub_1DAECD9CC();
    sub_1DAD64398(v8, &unk_1ECC09EC0, &qword_1DAED7970);
    (*(v24 + 8))(v11, v27);
    return swift_willThrow();
  }

  else
  {
    v25 = v17;
    v26 = v19;
    sub_1DADA7F5C();
    sub_1DAECDB5C();
    return sub_1DADAF698(v17, v19);
  }
}

uint64_t sub_1DAE4EC30@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v60 = a1;
  v51 = a4;
  v57 = sub_1DAECED2C();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a2;
  v53 = a3;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - v17;
  v19 = sub_1DAED18CC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v7 + 8);
  v63 = *v7;
  v25 = *(v7 + 24);
  v54 = *(v7 + 16);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v27 = *(v26 + 36);
  v58 = v20;
  v28 = *(v20 + 16);
  v28(v23, v7 + v27, v19);
  v29 = v7 + *(v26 + 40);
  v30 = v57;
  (*(v8 + 16))(v18, v29, v57);
  v31 = v8;
  v32 = v8;
  v33 = v24;
  v34 = v61;
  (*(v31 + 56))(v18, 0, 1, v30);
  *v34 = v63;
  *(v34 + 1) = v33;
  v55 = v33;
  *(v34 + 2) = v54;
  *(v34 + 3) = v25;
  v28(&v34[*(v62 + 36)], v23, v19);
  v35 = v56;
  v36 = v18;
  sub_1DAD6495C(v18, v56, &qword_1ECC08330, &unk_1DAED6540);
  v37 = *(v32 + 48);
  if (v37(v35, 1, v30) == 1)
  {
    v54 = v19;
    sub_1DAED298C();

    v38 = v63;
    v39 = v55;
    sub_1DAED229C();

    v40 = sub_1DAED296C();
    v42 = v58;
    v41 = v59;
    if ((v40 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    v43 = __OFSUB__(0, v40);
    result = -v40;
    if (!v43)
    {
      if ((result & 0x8000000000000000) == 0)
      {
LABEL_5:
        sub_1DAECED3C();
        sub_1DAD64398(v36, &qword_1ECC08330, &unk_1DAED6540);
        (*(v42 + 8))(v23, v54);
        if (v37(v35, 1, v30) != 1)
        {
          sub_1DAD64398(v35, &qword_1ECC08330, &unk_1DAED6540);
        }

        goto LABEL_8;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  v45 = v63;
  v46 = v55;
  sub_1DAD64398(v18, &qword_1ECC08330, &unk_1DAED6540);
  (*(v58 + 8))(v23, v19);
  v41 = v59;
  (*(v32 + 32))(v59, v35, v30);
LABEL_8:
  v48 = v61;
  v47 = v62;
  (*(v32 + 32))(&v61[*(v62 + 40)], v41, v30);
  *(v48 + *(v47 + 44)) = v60;
  sub_1DAD7C48C(v48, v51, v52, v53);
  v49 = v60;

  return v49;
}

uint64_t sub_1DAE4F10C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v41 = a7;
  v42 = a8;
  v39 = a5;
  v40 = a6;
  v37 = a3;
  v43 = a9;
  v44 = a4;
  v11 = sub_1DAECDBFC();
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v35 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980);
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09180, &qword_1DAEDBB90);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v38 = v32 - v20;
  v36 = *(a1 + 24);
  sub_1DAE4EC30(v37, &qword_1ECC09180, &qword_1DAEDBB90, v32 - v20);
  v37 = *(a1 + 56);
  v32[1] = a1;
  sub_1DAD6495C(a2, v17, &qword_1ECC08338, &unk_1DAEDB980);
  v21 = v35;
  (*(v12 + 16))(v35, v44, v11);
  v22 = (*(v34 + 80) + 56) & ~*(v34 + 80);
  v23 = (v15 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v40;
  *(v25 + 2) = v39;
  *(v25 + 3) = a1;
  v27 = v41;
  v28 = v42;
  *(v25 + 4) = v26;
  *(v25 + 5) = v27;
  *(v25 + 6) = v28;
  sub_1DAD7C48C(v17, &v25[v22], &qword_1ECC08338, &unk_1DAEDB980);
  (*(v12 + 32))(&v25[v23], v21, v33);
  *&v25[v24] = v43;
  v29 = *(**(v36 + 16) + 104);

  v30 = v38;
  v29(v38, v44, v37, sub_1DAE50C88, v25);

  return sub_1DAD64398(v30, &qword_1ECC09180, &qword_1DAEDBB90);
}

uint64_t sub_1DAE4F450(uint64_t a1)
{
  v3 = sub_1DAECDBFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v1 + 32);
  v9 = *a1;
  v10 = v8;
  v11 = [v9 widget];
  v12 = [v9 metrics];
  v13 = [v10 URLForWidget:v11 metrics:v12 attributes:*(a1 + 8) createIntermediateDirectories:0];

  sub_1DAECDBBC();
  v16 = v7;
  type metadata accessor for SnapshotRequest();
  LOBYTE(v12) = sub_1DAEC94AC(sub_1DAE4F708);
  (*(v4 + 8))(v7, v3);
  return v12 & 1;
}

uint64_t sub_1DAE4F60C()
{
  v0 = sub_1DAED1D3C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DADBCF28();
  sub_1DAECDB4C();
  sub_1DAED1D2C();
  v2 = sub_1DAED1D0C();
  sub_1DAD70BB4(v4, v5);
  return v2;
}

uint64_t sub_1DAE4F710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36[0] = a2;
  v37[5] = *MEMORY[0x1E69E9840];
  v4 = sub_1DAED1D3C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1DAECDBFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v36 - v12;
  swift_beginAccess();
  v14 = *(v2 + 32);
  v15 = *a1;
  v16 = v14;
  v17 = [v15 widget];
  v18 = [v15 metrics];
  v19 = [v16 URLForWidget:v17 metrics:v18 attributes:*(a1 + 8) createIntermediateDirectories:0];

  sub_1DAECDBBC();
  sub_1DADBCF28();
  sub_1DAECDB4C();
  v26 = v37[0];
  v27 = v37[1];
  sub_1DAED1D2C();
  v28 = sub_1DAED1D0C();
  v30 = v29;
  sub_1DAD70BB4(v26, v27);
  v31 = *(a1 + 24);
  if (!v31)
  {
    if (v30)
    {
LABEL_12:

LABEL_13:
      v33 = v36[0];
      (*(v7 + 32))(v36[0], v13, v6);
      v32 = 0;
      goto LABEL_14;
    }

LABEL_2:
    v20 = [objc_opt_self() defaultManager];
    sub_1DAECDB9C();
    v21 = sub_1DAECDB8C();
    (*(v7 + 8))(v11, v6);
    v37[0] = 0;
    v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v37];

    if (v22)
    {
      v23 = v37[0];
    }

    else
    {
      v24 = v37[0];
      v25 = sub_1DAECDB1C();

      swift_willThrow();
    }

    goto LABEL_13;
  }

  if (!v30)
  {
    goto LABEL_2;
  }

  if ((v28 != *(a1 + 16) || v30 != v31) && (sub_1DAED289C() & 1) == 0)
  {
    goto LABEL_12;
  }

  (*(v7 + 8))(v13, v6);

  v32 = 1;
  v33 = v36[0];
LABEL_14:
  result = (*(v7 + 56))(v33, v32, 1, v6);
  v35 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAE4FAF8(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 48);
  os_unfair_lock_lock(*(v4 + 16));
  swift_beginAccess();
  v5 = a1;
  LOBYTE(a1) = sub_1DAE87E8C(&v10, v5);
  v6 = v10;
  swift_endAccess();

  os_unfair_lock_unlock(*(v4 + 16));
  result = 0;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v5;
    sub_1DAED0D5C();
    v9 = v5;

    return sub_1DAED0D6C();
  }

  return result;
}

void sub_1DAE4FBE4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  os_unfair_lock_lock(*(v3 + 16));
  swift_beginAccess();
  v4 = sub_1DAEC50B0(a2);
  swift_endAccess();

  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t LayerSnapshotter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_logger;
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_signposter;
  v8 = sub_1DAECED6C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_dataProtectionMonitor));
  return v0;
}

uint64_t LayerSnapshotter.__deallocating_deinit()
{
  LayerSnapshotter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE4FD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1DADD0D70);
}

uint64_t sub_1DAE4FDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RBImageSnapshotter.RBImageOptions(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1DADD0DE8);
}

uint64_t sub_1DAE500B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DAE500FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1DAE50158(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1DAE501A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAE50204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *), uint64_t a5)
{
  v66 = a5;
  v67 = a4;
  v7 = sub_1DAECED7C();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DAECED2C();
  v63 = *(v65 - 8);
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DAECED6C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(a1 + 8);
  LODWORD(v20) = *(a1 + 16);
  v21 = OBJC_IVAR____TtC14WidgetRenderer16LayerSnapshotter_signposter;
  swift_beginAccess();
  (*(v14 + 16))(v17, a2 + v21, v13);
  sub_1DADE629C(v18, v19, v20);
  sub_1DADE629C(v18, v19, v20);
  v22 = sub_1DAECED5C();
  sub_1DAECED8C();
  v60 = sub_1DAED219C();
  v64 = v22;
  if (sub_1DAED230C())
  {
    v56 = v17;
    v54 = v12;
    v53 = v14;
    v55 = v13;
    v23 = v63;
    sub_1DADE62C4(v18, v19, v20);
    v61 = v18;
    v62 = v20;
    sub_1DADE62C4(v18, v19, v20);

    v24 = v57;
    sub_1DAECEDBC();

    v26 = v58;
    v25 = v59;
    if ((*(v58 + 88))(v24, v59) == *MEMORY[0x1E69E93E8])
    {
      v27 = 0;
      v28 = "[Error] Interval already ended";
    }

    else
    {
      (*(v26 + 8))(v24, v25);
      v28 = "<snapshotTaken?>=%{name=snapshotTaken,public}s <error?>=%{name=error,public}s";
      v27 = 2;
    }

    v29 = v23;
    v30 = v56;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v69 = v32;
    *v31 = v27;
    *(v31 + 1) = v27;
    *(v31 + 2) = 2082;
    v33 = v55;
    v63 = v32;
    if (v62 != 2)
    {
      if (v62 == 1)
      {
        v34 = 0xE300000000000000;
        v35 = sub_1DAD6482C(5457241, 0xE300000000000000, &v69);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2082;
        if (!v61)
        {
          v36 = 7104878;
LABEL_13:
          v47 = sub_1DAD6482C(v36, v34, &v69);

          *(v31 + 14) = v47;
          v48 = v54;
          v49 = sub_1DAECED0C();
          v50 = v64;
          _os_signpost_emit_with_name_impl(&dword_1DAD61000, v64, v60, v49, "LayerSnapshotting", v28, v31, 0x16u);
          v20 = v63;
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v20, -1, -1);
          MEMORY[0x1E127F100](v31, -1, -1);

          (*(v29 + 8))(v48, v65);
          (*(v53 + 8))(v30, v33);
          v18 = v61;
          LOBYTE(v20) = v62;
          goto LABEL_14;
        }
      }

      else
      {
        v38 = sub_1DAD6482C(20302, 0xE200000000000000, &v69);

        *(v31 + 4) = v38;
        *(v31 + 12) = 2082;
      }

      v39 = v61;
      swift_getErrorValue();
      v40 = v68;
      v41 = v28;
      v42 = v33;
      v43 = v62;
      sub_1DADE629C(v39, v19, v62);
      v36 = sub_1DADBBC8C(v40);
      v34 = v44;
      v45 = v39;
      v30 = v56;
      v46 = v43;
      v33 = v42;
      v28 = v41;
      v29 = v23;
      sub_1DADE62C4(v45, v19, v46);
      goto LABEL_13;
    }

    v36 = 7104878;
    v70 = 673206094;
    v71 = 0xE400000000000000;
    MEMORY[0x1E127DA50](v61, v19);
    MEMORY[0x1E127DA50](41, 0xE100000000000000);
    v37 = sub_1DAD6482C(v70, v71, &v69);

    *(v31 + 4) = v37;
    *(v31 + 12) = 2082;
    v34 = 0xE300000000000000;
    goto LABEL_13;
  }

  sub_1DADE62C4(v18, v19, v20);
  sub_1DADE62C4(v18, v19, v20);
  (*(v63 + 8))(v12, v65);
  (*(v14 + 8))(v17, v13);
LABEL_14:
  v70 = v18;
  v71 = v19;
  v72 = v20;
  return v67(&v70);
}

uint64_t sub_1DAE50820()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1DAECDBFC() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DAE4F10C(*(v0 + 16), v0 + v2, *(v0 + v3), v0 + v5, *(v0 + v6), *(v0 + v7), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_46Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_1DAECDBFC();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 2);

  v9 = *(v0 + 3);

  v10 = *(v0 + 4);

  v11 = *(v0 + 6);

  v12 = &v0[v2];

  v13 = v12[3];

  v14 = v1[11];
  v15 = sub_1DAED18CC();
  (*(*(v15 - 8) + 8))(v12 + v14, v15);
  v16 = v1[12];
  v17 = sub_1DAECED2C();
  (*(*(v17 - 8) + 8))(v12 + v16, v17);

  (*(v5 + 8))(&v0[v6], v4);

  return swift_deallocObject();
}

uint64_t sub_1DAE50B68(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08338, &unk_1DAEDB980) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DAECDBFC() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v9 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1DAE4E1DC(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, v1 + v7);
}

uint64_t sub_1DAE50CB0()
{
  [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  type metadata accessor for WidgetSceneContentViewController();

  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1DAE50D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v229 = a2;
  v230 = sub_1DAECE43C();
  v5 = *(v230 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v230);
  v9 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v217 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v228 = (&v217 - v14);
  v15 = sub_1DAECDBFC();
  v232 = *(v15 - 8);
  v16 = *(v232 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v222 = &v217 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v235 = &v217 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v231 = &v217 - v21;
  v22 = sub_1DAED1F2C();
  v225 = *(v22 - 8);
  v226 = v22;
  v23 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v217 - v28;
  v30 = *(a1 + 56);
  if (v30)
  {
    v31 = v30;
    if (![v31 supportsInteraction])
    {
      if (qword_1EE005E88 != -1)
      {
        swift_once();
      }

      v82 = sub_1DAECEDEC();
      __swift_project_value_buffer(v82, qword_1EE0117D8);

      v83 = sub_1DAECEDCC();
      v84 = sub_1DAED201C();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v236[0] = v86;
        *v85 = 136446210;
        v87 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v88 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v89 = sub_1DAD6482C(v87, v88, v236);

        *(v85 + 4) = v89;
        _os_log_impl(&dword_1DAD61000, v83, v84, "[%{public}s] launch request ignored; doesn't support interaction", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x1E127F100](v86, -1, -1);
        MEMORY[0x1E127F100](v85, -1, -1);
      }

      goto LABEL_27;
    }
  }

  v221 = v9;
  v224 = v5;
  v32 = qword_1EE005E88;
  v33 = *(a1 + 32);
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_1DAECEDEC();
  v35 = __swift_project_value_buffer(v34, qword_1EE0117D8);

  v36 = v33;
  v233 = v35;
  v37 = sub_1DAECEDCC();
  v38 = sub_1DAED203C();

  v39 = os_log_type_enabled(v37, v38);
  v234 = a1;
  v227 = v15;
  v220 = v25;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v223 = v11;
    v42 = a3;
    v43 = v41;
    v236[0] = v41;
    *v40 = 136446466;
    v44 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v45 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

    v46 = sub_1DAD6482C(v44, v45, v236);

    *(v40 + 4) = v46;
    *(v40 + 12) = 2082;
    v47 = sub_1DAED22BC();
    v49 = sub_1DAD6482C(v47, v48, v236);

    *(v40 + 14) = v49;
    _os_log_impl(&dword_1DAD61000, v37, v38, "[%{public}s] Widget launch request: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    v50 = v43;
    a3 = v42;
    v11 = v223;
    MEMORY[0x1E127F100](v50, -1, -1);
    MEMORY[0x1E127F100](v40, -1, -1);
  }

  v51 = v235;
  v52 = [v36 containerBundleIdentifier];
  if (v52)
  {
    v53 = v52;
    v218 = sub_1DAED1CEC();
    v219 = v54;

    v55 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
    v56 = v234;
    swift_beginAccess();
    sub_1DAD6495C(v56 + v55, v29, &qword_1ECC07CD0, &qword_1DAED6560);
    v57 = sub_1DAECE55C();
    LODWORD(v55) = (*(*(v57 - 8) + 48))(v29, 1, v57);
    sub_1DAD64398(v29, &qword_1ECC07CD0, &qword_1DAED6560);
    if (v55 == 1)
    {

      v58 = v36;
      v59 = sub_1DAECEDCC();
      v60 = sub_1DAED201C();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = v36;
        v63 = a3;
        v64 = swift_slowAlloc();
        v236[0] = v64;
        *v61 = 136446466;
        v65 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v66 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v67 = sub_1DAD6482C(v65, v66, v236);

        *(v61 + 4) = v67;
        *(v61 + 12) = 2082;
        v68 = sub_1DAED22BC();
        v70 = sub_1DAD6482C(v68, v69, v236);

        *(v61 + 14) = v70;
        _os_log_impl(&dword_1DAD61000, v59, v60, "[%{public}s] Tapped widget was not flagged as visible: %{public}s", v61, 0x16u);
        swift_arrayDestroy();
        v71 = v64;
        a3 = v63;
        v36 = v62;
        MEMORY[0x1E127F100](v71, -1, -1);
        MEMORY[0x1E127F100](v61, -1, -1);
      }

      v72 = v220;
      sub_1DAED0ABC();
      v236[0] = 0x3A746567646957;
      v236[1] = 0xE700000000000000;
      v73 = sub_1DAED22BC();
      MEMORY[0x1E127DA50](v73);

      sub_1DAED0AAC();
      sub_1DAED0A9C();

      (*(v225 + 8))(v72, v226);
      v56 = v234;
      v51 = v235;
    }

    v74 = v228;
    sub_1DAD6495C(v229, v228, &unk_1ECC09EC0, &qword_1DAED7970);
    v75 = v232;
    v76 = v227;
    if ((*(v232 + 48))(v74, 1, v227) == 1)
    {
      sub_1DAD64398(v74, &unk_1ECC09EC0, &qword_1DAED7970);
      v77 = [v36 sourceDeviceIdentifier];
      if (v77)
      {
        v78 = v77;

        (*(v224 + 104))(v11, *MEMORY[0x1E6994440], v230);
LABEL_16:
        sub_1DAECE44C();
        v79 = sub_1DAECE47C();
        v80 = *(*(v79 - 8) + 56);
        v81 = a3;
LABEL_77:
        v187 = 0;
        return v80(v81, v187, 1, v79);
      }

      v137 = v219;

      v138 = sub_1DAECEDCC();
      v139 = sub_1DAED203C();

      if (os_log_type_enabled(v138, v139))
      {
        v140 = v36;
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v236[0] = v142;
        *v141 = 136446466;
        v143 = *(v234 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v144 = *(v234 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v145 = sub_1DAD6482C(v143, v144, v236);

        *(v141 + 4) = v145;
        *(v141 + 12) = 2082;
        v146 = sub_1DAD6482C(v218, v137, v236);

        *(v141 + 14) = v146;
        _os_log_impl(&dword_1DAD61000, v138, v139, "[%{public}s] Open application from tap requested: %{public}s", v141, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v142, -1, -1);
        v147 = v141;
        v36 = v140;
        v56 = v234;
        MEMORY[0x1E127F100](v147, -1, -1);
      }

      else
      {
      }

      v175 = MEMORY[0x1E127A0E0](v36);
      v176 = sub_1DAE52778(v56);
      v177 = v36;
      if (!v176)
      {
        *v11 = v175;
        (*(v224 + 104))(v11, *MEMORY[0x1E6994448], v230);
        goto LABEL_16;
      }

      v178 = v176;
      v179 = v177;

      v180 = sub_1DAECEDCC();
      v181 = sub_1DAED203C();

      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v236[0] = v183;
        *v182 = 136446210;
        v184 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v185 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v186 = sub_1DAD6482C(v184, v185, v236);

        *(v182 + 4) = v186;
        _os_log_impl(&dword_1DAD61000, v180, v181, "[%{public}s] Handled with event publisher.", v182, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v183);
        MEMORY[0x1E127F100](v183, -1, -1);
        MEMORY[0x1E127F100](v182, -1, -1);
      }

      [v178 publishOpenEventWithUserActivity_];
      [v178 deactivate];

      v79 = sub_1DAECE47C();
      v80 = *(*(v79 - 8) + 56);
      v81 = a3;
LABEL_56:
      v187 = 1;
      return v80(v81, v187, 1, v79);
    }

    v223 = v11;
    v235 = v36;
    v229 = a3;
    v100 = v231;
    (*(v75 + 32))(v231, v74, v76);
    v228 = *(v75 + 16);
    v226 = v75 + 16;
    (v228)(v51, v100, v76);

    v101 = v219;

    v102 = sub_1DAECEDCC();
    v103 = sub_1DAED203C();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = v75;
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v236[0] = v106;
      *v105 = 136446723;
      v107 = *(v234 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v108 = *(v234 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v109 = sub_1DAD6482C(v107, v108, v236);

      *(v105 + 4) = v109;
      *(v105 + 12) = 2082;
      v110 = sub_1DAD6482C(v218, v101, v236);

      *(v105 + 14) = v110;
      *(v105 + 22) = 2085;
      sub_1DAE23DD8();
      v111 = sub_1DAED287C();
      v113 = v112;
      v114 = *(v104 + 8);
      v114(v51, v76);
      v115 = sub_1DAD6482C(v111, v113, v236);

      *(v105 + 24) = v115;
      _os_log_impl(&dword_1DAD61000, v102, v103, "[%{public}s] Open application from openURL requested: %{public}s url: %{sensitive}s", v105, 0x20u);
      swift_arrayDestroy();
      v116 = v106;
      v56 = v234;
      MEMORY[0x1E127F100](v116, -1, -1);
      MEMORY[0x1E127F100](v105, -1, -1);
    }

    else
    {

      v114 = *(v75 + 8);
      v114(v51, v76);
    }

    v120 = v221;
    v121 = sub_1DAE52778(v56);
    if (v121)
    {
      v122 = v121;

      v123 = sub_1DAECEDCC();
      v124 = sub_1DAED203C();

      v125 = os_log_type_enabled(v123, v124);
      v126 = v56;
      v127 = v229;
      if (v125)
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v236[0] = v129;
        *v128 = 136446210;
        v130 = *(v126 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
        v131 = *(v126 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

        v132 = sub_1DAD6482C(v130, v131, v236);

        *(v128 + 4) = v132;
        _os_log_impl(&dword_1DAD61000, v123, v124, "[%{public}s] Handled with event publisher.", v128, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        MEMORY[0x1E127F100](v129, -1, -1);
        v133 = v128;
        v76 = v227;
        MEMORY[0x1E127F100](v133, -1, -1);
      }

      v134 = v223;
      v135 = v235;
      v136 = [v235 sourceDeviceIdentifier];
      if (v136)
      {

        (*(v224 + 104))(v134, *MEMORY[0x1E6994440], v230);
        sub_1DAECE44C();

        v114(v231, v76);
        v79 = sub_1DAECE47C();
        v80 = *(*(v79 - 8) + 56);
        v81 = v127;
        goto LABEL_77;
      }

      v173 = v231;
      v174 = sub_1DAECDB8C();
      [v122 publishOpenEventWithURL_];

      [v122 deactivate];
      v114(v173, v76);
      v79 = sub_1DAECE47C();
      v80 = *(*(v79 - 8) + 56);
      v81 = v127;
      goto LABEL_56;
    }

    (v228)(v120, v231, v76);
    v148 = *(v224 + 104);
    v148(v120, *MEMORY[0x1E6994438], v230);
    v149 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client;
    sub_1DAD648F8(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v236);
    v150 = v237;
    v151 = v238;
    __swift_project_boxed_opaque_existential_1(v236, v237);
    v152 = (*(v151 + 56))(v235, v150, v151);
    __swift_destroy_boxed_opaque_existential_1Tm(v236);
    if (v152)
    {
      v153 = [v152 entitlements];

      if (v153)
      {
        v154 = [v153 canOpenSystemURLs];

        if (v154)
        {
          v155 = v222;
          sub_1DAED148C();
          v156 = sub_1DAECDBAC();
          v114(v155, v227);
          if (v156)
          {

            v157 = sub_1DAECEDCC();
            v158 = sub_1DAED203C();

            if (os_log_type_enabled(v157, v158))
            {
              v159 = swift_slowAlloc();
              v160 = swift_slowAlloc();
              v236[0] = v160;
              *v159 = 136446210;
              v161 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
              v162 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

              v163 = sub_1DAD6482C(v161, v162, v236);

              *(v159 + 4) = v163;
              _os_log_impl(&dword_1DAD61000, v157, v158, "[%{public}s] Open URL ignored for no-op URL.", v159, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v160);
              MEMORY[0x1E127F100](v160, -1, -1);
              MEMORY[0x1E127F100](v159, -1, -1);
            }

            (*(v224 + 8))(v221, v230);
            v114(v231, v227);
            v164 = v229;
            v79 = sub_1DAECE47C();
            v80 = *(*(v79 - 8) + 56);
            v81 = v164;
            goto LABEL_56;
          }
        }
      }
    }

    v165 = v235;
    v166 = [v235 sourceDeviceIdentifier];
    if (v166)
    {

      sub_1DAECDBDC();
      v167 = v227;
      v168 = v221;
      if (v169)
      {
        v170 = sub_1DAED1D5C();
        v172 = v171;

        if (v170 == 1886680168 && v172 == 0xE400000000000000)
        {

          v167 = v227;
        }

        else
        {
          v198 = sub_1DAED289C();
          v167 = v227;
          if ((v198 & 1) != 0 || v170 == 0x7370747468 && v172 == 0xE500000000000000)
          {
          }

          else
          {
            v216 = sub_1DAED289C();

            if ((v216 & 1) == 0)
            {
              goto LABEL_76;
            }
          }
        }

        v199 = sub_1DAECEDCC();
        v200 = sub_1DAED203C();

        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          v202 = swift_slowAlloc();
          v236[0] = v202;
          *v201 = 136446210;
          v203 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
          v204 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

          v205 = sub_1DAD6482C(v203, v204, v236);
          v206 = v230;

          *(v201 + 4) = v205;
          v168 = v221;
          v207 = "[%{public}s] Remote launch http/https launch request.";
LABEL_73:
          _os_log_impl(&dword_1DAD61000, v199, v200, v207, v201, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v202);
          v212 = v202;
          v167 = v227;
          MEMORY[0x1E127F100](v212, -1, -1);
          MEMORY[0x1E127F100](v201, -1, -1);

          (*(v224 + 8))(v168, v206);
LABEL_75:
          (v228)(v168, v231, v167);
          v148(v168, *MEMORY[0x1E6994430], v230);
          goto LABEL_76;
        }

        goto LABEL_74;
      }

LABEL_76:
      v213 = v224;
      v214 = v230;
      (*(v224 + 16))(v223, v168, v230);
      v215 = v229;
      sub_1DAECE44C();
      (*(v213 + 8))(v168, v214);
      v114(v231, v167);
      v79 = sub_1DAECE47C();
      v80 = *(*(v79 - 8) + 56);
      v81 = v215;
      goto LABEL_77;
    }

    sub_1DAD648F8(v56 + v149, v236);
    v188 = v237;
    v189 = v238;
    __swift_project_boxed_opaque_existential_1(v236, v237);
    v190 = (*(v189 + 56))(v165, v188, v189);
    __swift_destroy_boxed_opaque_existential_1Tm(v236);
    v167 = v227;
    v168 = v221;
    if (!v190 || (v191 = [v190 entitlements], v190, !v191) || (v192 = objc_msgSend(v191, sel_canOpenSystemURLs), v191, (v192 & 1) == 0))
    {
      v193 = sub_1DAECDB7C();
      v195 = v194;
      v196 = *MEMORY[0x1E6994208];
      if (v193 == sub_1DAED1CEC() && v195 == v197)
      {
      }

      else
      {
        v208 = sub_1DAED289C();

        if ((v208 & 1) == 0)
        {
          goto LABEL_76;
        }
      }
    }

    v199 = sub_1DAECEDCC();
    v200 = sub_1DAED203C();

    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v236[0] = v202;
      *v201 = 136446210;
      v209 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v210 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);

      v211 = sub_1DAD6482C(v209, v210, v236);
      v206 = v230;

      *(v201 + 4) = v211;
      v168 = v221;
      v207 = "[%{public}s] Entitled url launch (can open system URLs) requested.";
      goto LABEL_73;
    }

LABEL_74:

    (*(v224 + 8))(v168, v230);
    goto LABEL_75;
  }

  v90 = v234;

  v91 = sub_1DAECEDCC();
  v92 = sub_1DAED201C();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = v36;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v236[0] = v95;
    *v94 = 136446210;
    v96 = v90 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
    v97 = *(v90 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v98 = *(v96 + 8);

    v99 = sub_1DAD6482C(v97, v98, v236);

    *(v94 + 4) = v99;
    _os_log_impl(&dword_1DAD61000, v91, v92, "[%{public}s] failed to find containing bundle", v94, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    MEMORY[0x1E127F100](v95, -1, -1);
    MEMORY[0x1E127F100](v94, -1, -1);
  }

  else
  {
  }

LABEL_27:
  v117 = sub_1DAECE47C();
  v118 = *(*(v117 - 8) + 56);

  return v118(a3, 1, 1, v117);
}

id sub_1DAE52778(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  v3 = v1;
  v4 = [v3 eventMachServiceName];
  if (v4)
  {
    v5 = v4;
    sub_1DAD648F8(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client, v28);
    v6 = v29;
    v7 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v8 = *(a1 + 32);
    v9 = (*(v7 + 56))(v8, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    if (v9)
    {
      v10 = [v9 entitlements];

      if (v10)
      {
        v11 = [v10 usesEventService];

        if (v11)
        {
          v12 = [objc_allocWithZone(MEMORY[0x1E69943A8]) initWithMachServiceName_];

          return v12;
        }
      }
    }

    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v14 = sub_1DAECEDEC();
    __swift_project_value_buffer(v14, qword_1EE0117D8);

    v15 = sub_1DAECEDCC();
    v16 = sub_1DAED201C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      v19 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
      v20 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v21 = *(v19 + 8);

      v22 = sub_1DAD6482C(v20, v21, v28);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2082;
      v23 = [v8 extensionBundleIdentifier];
      v24 = sub_1DAED1CEC();
      v26 = v25;

      v27 = sub_1DAD6482C(v24, v26, v28);

      *(v17 + 14) = v27;
      _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] missing entitlement for event service: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_1DAE52A84(uint64_t a1)
{
  v2 = sub_1DAECF0AC();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1DAECF3AC();
}

uint64_t sub_1DAE52B4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAECF8EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for InProcessListItemActivityInstanceView();
  sub_1DAE538B8(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1DAECF0AC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_1DAED202C();
    v16 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t InProcessListItemActivityInstanceView.init(instance:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for InProcessListItemActivityInstanceView() + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  result = swift_storeEnumTagMultiPayload();
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for InProcessListItemActivityInstanceView()
{
  result = qword_1ECC09C28;
  if (!qword_1ECC09C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InProcessListItemActivityInstanceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = type metadata accessor for InProcessListItemActivityInstanceView();
  v36 = *(v2 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAECF0AC();
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECDD3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _InProcessActivityInstanceView();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v20 = *(v19 + 24);
  v21 = *MEMORY[0x1E6985918];
  v22 = sub_1DAED182C();
  (*(*(v22 - 8) + 104))(&v17[v20], v21, v22);

  sub_1DAECDD2C();
  v23 = sub_1DAECDCFC();
  v25 = v24;
  (*(v10 + 8))(v13, v9);
  v40 = v23;
  v41 = v25;
  sub_1DAED076C();
  v26 = v43;
  *(v17 + 2) = v42;
  *(v17 + 6) = v26;
  *&v17[*(v14 + 28)] = v18;
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  *(v17 + 3) = v18;

  v27 = v33;
  sub_1DAE52B4C(v8);
  v28 = v34;
  sub_1DAE537F0(v27, v34, type metadata accessor for InProcessListItemActivityInstanceView);
  v29 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v30 = swift_allocObject();
  sub_1DAE535C4(v28, v30 + v29);
  sub_1DAE537A8(&qword_1ECC09B58, type metadata accessor for _InProcessActivityInstanceView);
  sub_1DAE537A8(&qword_1EE00ABA8, MEMORY[0x1E697DBD0]);
  v31 = v37;
  sub_1DAED05AC();

  (*(v38 + 8))(v8, v31);
  return sub_1DAE53858(v17, type metadata accessor for _InProcessActivityInstanceView);
}

uint64_t sub_1DAE53220(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18[-v4];
  v6 = type metadata accessor for WidgetActivityInstanceContentConfiguration();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-v12];
  v14 = *a1;
  swift_getKeyPath();
  v22 = v14;
  sub_1DAE537A8(&qword_1ECC085E0, type metadata accessor for InProcessActivityInstanceBase);
  sub_1DAECDEFC();

  v15 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__contentConfiguration;
  swift_beginAccess();
  sub_1DAE537F0(v14 + v15, v13, type metadata accessor for WidgetActivityInstanceContentConfiguration);
  sub_1DAE52B4C(v5);
  v16 = sub_1DAECF0AC();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);
  sub_1DAD69CBC(v5, &v13[*(v7 + 36)]);
  sub_1DAE537F0(v13, v10, type metadata accessor for WidgetActivityInstanceContentConfiguration);
  swift_getKeyPath();
  v19 = v14;
  v20 = v10;
  v21 = v14;
  sub_1DAECDEEC();

  sub_1DAE53858(v10, type metadata accessor for WidgetActivityInstanceContentConfiguration);
  return sub_1DAE53858(v13, type metadata accessor for WidgetActivityInstanceContentConfiguration);
}

uint64_t sub_1DAE534C8@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_1DAECF49C();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_1DAE53930;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_1DAE53538(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
  }

  sub_1DADCA8EC(v1);
  return sub_1DAECF4AC();
}

uint64_t sub_1DAE535C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InProcessListItemActivityInstanceView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE53628()
{
  v1 = *(type metadata accessor for InProcessListItemActivityInstanceView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1DAE53220(v2);
}

void sub_1DAE536CC()
{
  type metadata accessor for InProcessListItemActivityInstance();
  if (v0 <= 0x3F)
  {
    sub_1DAE53750();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAE53750()
{
  if (!qword_1ECC09C38)
  {
    sub_1DAECF0AC();
    v0 = sub_1DAECF0BC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC09C38);
    }
  }
}

uint64_t sub_1DAE537A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE537F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAE53858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAE538B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C18, &qword_1DAEDBC50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE53930()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAE5396C(uint64_t a1)
{
  v26 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v31 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED241C();
    v28 = result;
    v29 = v4;
    v30 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  v5 = -1 << *(a1 + 32);
  result = sub_1DAED23DC();
  v6 = *(a1 + 36);
  v28 = result;
  v29 = v6;
  v30 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v28;
    v10 = v29;
    v12 = v30;
    sub_1DAE0C368(v28, v29, v30, a1);
    v14 = v13;
    v15 = [v13 identity];

    sub_1DAED25CC();
    v16 = *(v31 + 16);
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v26)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_1DAED243C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C40, &qword_1DAEDBDF8);
      v8 = sub_1DAED1F8C();
      sub_1DAED24EC();
      result = v8(v27, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_1DADAE050(v28, v29, v30);
        return v31;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v17 = 1 << *(a1 + 32);
      if (v11 >= v17)
      {
        goto LABEL_32;
      }

      v18 = v11 >> 6;
      v19 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v19 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v20 = v19 & (-2 << (v11 & 0x3F));
      if (v20)
      {
        v17 = __clz(__rbit64(v20)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v18 << 6;
        v22 = v18 + 1;
        v23 = (a1 + 64 + 8 * v18);
        while (v22 < (v17 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1DADAE050(v11, v10, 0);
            v17 = __clz(__rbit64(v24)) + v21;
            goto LABEL_27;
          }
        }

        result = sub_1DADAE050(v11, v10, 0);
      }

LABEL_27:
      v28 = v17;
      v29 = v10;
      v30 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1DAE53C84(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1DAE5396C(v1);
    v5 = sub_1DADBEE50(v4);

    v6 = *(v3 + 56);

    sub_1DAE11BE0(v5);
  }

  return result;
}

uint64_t sub_1DAE53D28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 56);
    v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer27ActivityArchiveServiceStore__lock);
    v5 = *(v4 + 16);

    os_unfair_lock_lock(v5);
    sub_1DAE12374(v3, a1);
    os_unfair_lock_unlock(*(v4 + 16));
  }

  return result;
}

uint64_t sub_1DAE53DEC()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[28];
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = v0[28];
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAE5408C();
    result = sub_1DAED1F9C();
    v6 = v23;
    v5 = v24;
    v7 = v25;
    v8 = v26;
    v9 = v27;
  }

  else
  {
    v10 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v2;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v18)
    {
LABEL_20:
      sub_1DAD70B20();

      v19 = v1[28];
      v1[28] = MEMORY[0x1E69E7CD0];

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
      v20 = v1[7];

      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 8);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 13);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 18);
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 23);
      v21 = v1[28];

      return v1;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v16 = v8;
        v17 = v9;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_20;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE54034()
{
  sub_1DAE53DEC();

  return swift_deallocClassInstance();
}

unint64_t sub_1DAE5408C()
{
  result = qword_1EE005C50;
  if (!qword_1EE005C50)
  {
    sub_1DAECEE3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005C50);
  }

  return result;
}

uint64_t sub_1DAE540EC()
{
  v1 = v0;
  sub_1DAD648F8((v0 + 2), v6);
  v2 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v3 = *(v2 + 8);
  sub_1DAED144C();
  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v1 + 7);
  v4 = v1[13];

  return swift_deallocClassInstance();
}

uint64_t sub_1DAE54178(unint64_t a1)
{
  v2 = sub_1DAED1B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ActivityView();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_1DAED247C();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E127E1F0](0, a1, v13);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(a1 + 32);

LABEL_6:
    v28 = 0;

    sub_1DAED076C();
    *(v15 + 2) = v27;
    v18 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
    v19 = *(v11 + 28);
    v20 = sub_1DAECEDEC();
    (*(*(v20 - 8) + 16))(&v15[v19], v17 + v18, v20);
    type metadata accessor for ActivityViewModel();
    sub_1DADE9A50(&qword_1EE007808, type metadata accessor for ActivityViewModel);

    v21 = sub_1DAECF21C();
    v23 = v22;
    *v15 = v21;
    *(v15 + 1) = v22;
    *&v27 = sub_1DAED064C();
    *(v15 + 2) = sub_1DAED087C();
    *(v15 + 3) = 0;
    v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAE54628(v23 + v24, v10);
    if ((*(v3 + 48))(v10, 1, v2))
    {
      sub_1DAE54698(v10);
      v25 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
    }

    else
    {
      (*(v3 + 16))(v6, v10, v2);
      sub_1DAE54698(v10);
      v25 = sub_1DAED1B5C();
      (*(v3 + 8))(v6, v2);
    }

    *(v15 + 2) = v25;
    *(v15 + 3) = 0;
    sub_1DADE9A50(qword_1EE007DA0, type metadata accessor for ActivityView);
    v26 = sub_1DAED087C();

    return v26;
  }

  __break(1u);
  return result;
}

id sub_1DAE5459C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SingleActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SingleActivitySceneDelegate()
{
  result = qword_1EE006338;
  if (!qword_1EE006338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE54628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE54698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DAE547A4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];

    v6 = sub_1DAED1CBC();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1DAE5481C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1DAED1CEC();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  v9 = v8[1];
  *v8 = v6;
  v8[1] = v7;
}

uint64_t sub_1DAE54BBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = *(*(v7 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

  sub_1DAE62330(v6);

  v9 = sub_1DAED1BEC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_1DAD64398(v6, &qword_1ECC08D70, &unk_1DAED8710);
LABEL_4:
    v11 = sub_1DAECDBFC();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  sub_1DAED1B4C();
  return (*(v10 + 8))(v6, v9);
}

uint64_t sub_1DAE54D9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = *&v0[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v5)
  {
    v6 = *(*(v5 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

    if (!v6)
    {
      return result;
    }

    v8 = v0;

    sub_1DAE62330(v4);

    v9 = sub_1DAED1BEC();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      sub_1DAD64398(v4, &qword_1ECC08D70, &unk_1DAED8710);
    }

    else
    {
      v11 = sub_1DAED1B9C();
      (*(v10 + 8))(v4, v9);
      if (v11)
      {
        sub_1DAD674D4(0, &qword_1ECC09E90, 0x1E69DC888);

        v12 = sub_1DAED226C();
        v13 = [v8 traitCollection];
        v14 = [v12 resolvedColorWithTraitCollection_];

        return v14;
      }
    }
  }

  return 0;
}

void sub_1DAE54FAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    swift_beginAccess();
    if (*(a3 + 16))
    {
      v19 = *(a3 + 16);

      sub_1DAECEE2C();
    }

    goto LABEL_12;
  }

  v12 = Strong;
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  if (sub_1DAECE2BC())
  {
    (*(v7 + 16))(v10, &v12[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v6);
    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DAD61000, v14, v15, "Unlocked; allowing in coversheet.", v16, 2u);
      MEMORY[0x1E127F100](v16, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v17 = *&v12[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors];
    *&v12[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors] = v17 | 8;
    if (v17 != (v17 | 8))
    {
      [objc_msgSend(v12 systemApertureElementContext)];
      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    if (*(a3 + 16))
    {
      v18 = *(a3 + 16);

      sub_1DAECEE2C();
    }

LABEL_12:
    swift_beginAccess();
    v20 = *(a3 + 16);
    *(a3 + 16) = 0;

    return;
  }
}

void sub_1DAE55278()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v1, v4);
  v7 = v0;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136446210;
    v12 = *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v13 = *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v14 = sub_1DAD6482C(v12, v13, &v43);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Disabling RenderBox update interval because background.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  (*(v2 + 8))(v6, v1);
  v15 = *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAEDC070;
    *(inited + 32) = v15;
    v17 = *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController];
    if (!v17)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v18 = inited;
    *(inited + 40) = v17;
    v19 = *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController];
    if (!v19)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    *(inited + 48) = v19;
    v20 = *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController];
    if (!v20)
    {
LABEL_29:
      __break(1u);
      return;
    }

    *(inited + 56) = v20;
    v21 = inited & 0xC000000000000001;
    v22 = v15;
    v23 = v17;
    v24 = v19;
    v25 = v20;
    if (v21)
    {
      v26 = MEMORY[0x1E127E1F0](0, v18);
    }

    else
    {
      v26 = v22;
    }

    v27 = v26;
    v28 = *(*&v26[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    swift_getObjectType();
    v29 = v28;
    swift_getWitnessTable();
    _UIHostingViewable.setBackgroundUpdateInterval()();

    if (v21)
    {
      v30 = MEMORY[0x1E127E1F0](1, v18);
    }

    else
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_25;
      }

      v30 = *(v18 + 40);
    }

    v31 = v30;
    v32 = *(*&v30[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    swift_getObjectType();
    v33 = v32;
    swift_getWitnessTable();
    _UIHostingViewable.setBackgroundUpdateInterval()();

    if (v21)
    {
      v34 = MEMORY[0x1E127E1F0](2, v18);
LABEL_17:
      v35 = v34;
      v36 = *(*&v34[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
      swift_getObjectType();
      v37 = v36;
      swift_getWitnessTable();
      _UIHostingViewable.setBackgroundUpdateInterval()();

      if (v21)
      {
        v38 = MEMORY[0x1E127E1F0](3, v18);
LABEL_21:
        v39 = v38;

        v40 = *(*&v39[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
        swift_getObjectType();
        v41 = v40;
        swift_getWitnessTable();
        _UIHostingViewable.setBackgroundUpdateInterval()();

        return;
      }

      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v38 = *(v18 + 56);
        goto LABEL_21;
      }

      goto LABEL_26;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v34 = *(v18 + 48);
      goto LABEL_17;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void sub_1DAE5572C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v71 - v7;
  v9 = sub_1DAED1BEC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DAECF8EC();
  v78 = *(v14 - 8);
  v79 = v14;
  v15 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAECEDEC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v76 = v8;
  v77 = v17;
  v75 = a4;
  v73 = v13;
  v24 = Strong;
  (*(v19 + 16))(v22, Strong + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v18);
  v25 = v24;
  v26 = sub_1DAECEDCC();
  v27 = sub_1DAED200C();
  v28 = os_log_type_enabled(v26, v27);
  v74 = v10;
  if (v28)
  {
    v72 = v9;
    v29 = swift_slowAlloc();
    *v29 = 67240448;
    *(v29 + 4) = sub_1DAE5964C() & 1;
    *(v29 + 8) = 1026;
    v30 = [v25 view];
    if (!v30)
    {
LABEL_33:

      __break(1u);
      return;
    }

    v31 = v30;
    v32 = [v30 effectiveUserInterfaceLayoutDirection];

    *(v29 + 10) = v32 == 1;
    _os_log_impl(&dword_1DAD61000, v26, v27, "widgetSupportsRTL? %{BOOL,public}d, isRTLnatively? %{BOOL,public}d", v29, 0xEu);
    MEMORY[0x1E127F100](v29, -1, -1);
    v9 = v72;
  }

  else
  {

    v26 = v25;
  }

  v33 = v77;

  (*(v19 + 8))(v22, v18);
  v34 = sub_1DAE5964C();
  v35 = [v25 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_33;
  }

  v36 = v35;
  v37 = [v35 effectiveUserInterfaceLayoutDirection];

  v38 = v80;
  if ((v34 ^ (v37 != 1)))
  {
    v39 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
      v41 = v40;
    }

    else
    {
      v40 = 0;
    }

    v45 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView);
    *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = v40;

    v46 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (v46)
    {
LABEL_14:
      v47 = *(v46 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
      v48 = v47;
      goto LABEL_18;
    }
  }

  else
  {
    v42 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (v42)
    {
      v43 = *(v42 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
      v44 = v43;
    }

    else
    {
      v43 = 0;
    }

    v49 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView);
    *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = v43;

    v46 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (v46)
    {
      goto LABEL_14;
    }
  }

  v47 = 0;
LABEL_18:
  v50 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView);
  *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView) = v47;

  sub_1DAE584BC(v38);
  v51 = *(&v25->isa + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v51 && (v52 = *(*(v51 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model), , sub_1DAE684B0(v33), , v53 = sub_1DAECF4BC(), (*(v78 + 8))(v33, v79), (v53 & 1) != 0))
  {
    [-[NSObject systemApertureElementContext](v25 systemApertureElementContext)];
  }

  else
  {
    v54 = [v25 systemApertureElementContext];
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_14;
    v55 = _Block_copy(aBlock);
    [v54 setElementNeedsUpdateWithCoordinatedAnimations_];
    _Block_release(v55);
  }

  swift_unknownObjectRelease();

  v56 = sub_1DAECEDCC();
  v57 = sub_1DAED203C();

  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v58 = 136446210;
    *(v58 + 4) = sub_1DAD6482C(*(v38 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v38 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), aBlock);
    _os_log_impl(&dword_1DAD61000, v56, v57, "[%{public}s] view entry changed - aperture element needs update", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x1E127F100](v59, -1, -1);
    MEMORY[0x1E127F100](v58, -1, -1);
  }

  v60 = v76;
  v83 = v75;
  v82 = 0;
  sub_1DAE5CE74();
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  if (aBlock[0] == v81)
  {
    sub_1DAE62330(v60);
    v61 = v74;
    if ((*(v74 + 48))(v60, 1, v9) == 1)
    {
      sub_1DAD64398(v60, &qword_1ECC08D70, &unk_1DAED8710);
    }

    else
    {
      v62 = v73;
      (*(v61 + 32))(v73, v60, v9);
      v63 = sub_1DAED1BBC();
      v65 = v64;
      v66 = v38 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated;
      v67 = *(v38 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      if (v67)
      {
        v68 = v63;
        v69 = v61;
        v70 = *(v66 + 8);

        v67(v68, v65);

        sub_1DAD660D8(v67);
        (*(v69 + 8))(v62, v9);
      }

      else
      {
        (*(v61 + 8))(v62, v9);
      }
    }
  }

  sub_1DAE56438();
}

uint64_t sub_1DAE55F54()
{
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v2)
  {
    v3 = *(*(v2 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v31 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
  if (v4)
  {
    v5 = *(*(v4 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v31 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
  if (v6)
  {
    v7 = *(*(v6 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v31 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController);
  if (v8)
  {
    v9 = *(*(v8 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
    v31 = sub_1DAED087C();
    sub_1DAECFABC();
  }

  v10 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__cancellables;
  swift_beginAccess();
  v29 = v10;
  v11 = *(v1 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {
    if (v11 < 0)
    {
      v12 = *(v1 + v10);
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAE5CE20(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    result = sub_1DAED1F9C();
    v15 = v31;
    v14 = v32;
    v16 = v33;
    v17 = v34;
    v18 = v35;
  }

  else
  {
    v19 = -1 << *(v11 + 32);
    v14 = v11 + 56;
    v16 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v18 = v21 & *(v11 + 56);
    result = swift_bridgeObjectRetain_n();
    v17 = 0;
    v15 = v11;
  }

  v22 = (v16 + 64) >> 6;
  if (v15 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v23 = v17;
    v24 = v18;
    v25 = v17;
    if (!v18)
    {
      break;
    }

LABEL_22:
    v26 = (v24 - 1) & v24;
    v27 = *(*(v15 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

    if (!v27)
    {
LABEL_28:
      sub_1DAD70B20();

      v28 = *(v1 + v29);
      *(v1 + v29) = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      sub_1DAECEE2C();

      v17 = v25;
      v18 = v26;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      if (sub_1DAED24BC())
      {
        sub_1DAECEE3C();
        swift_dynamicCast();
        v25 = v17;
        v26 = v18;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
      goto LABEL_28;
    }

    v24 = *(v14 + 8 * v25);
    ++v23;
    if (v24)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE56438()
{
  v1 = sub_1DAED09DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0A3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = *&v0[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v15)
  {
    v16 = *(*(v15 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v17 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v16 + v17, v14, &qword_1ECC07CE8, &qword_1DAED6F60);
    v18 = sub_1DAECDCEC();
    if ((*(*(v18 - 8) + 48))(v14, 1, v18) != 1)
    {
      sub_1DAD64398(v14, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v27 = sub_1DAED20EC();
      v19 = swift_allocObject();
      *(v19 + 16) = v0;
      aBlock[4] = sub_1DAE5D430;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_100;
      v20 = _Block_copy(aBlock);
      v21 = v0;

      _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1DAE5CE20(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
      v26 = v6;
      sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
      sub_1DAED23CC();
      v22 = v27;
      MEMORY[0x1E127DD70](0, v10, v5, v20);
      _Block_release(v20);

      (*(v2 + 8))(v5, v1);
      return (*(v7 + 8))(v10, v26);
    }
  }

  else
  {
    v24 = sub_1DAECDCEC();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  }

  return sub_1DAD64398(v14, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE56894(void *a1)
{
  if (qword_1EE005DF8 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0116D0);
  v3 = a1;
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = *&v3[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v10 = sub_1DAD6482C(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAD61000, v4, v5, "[%{public}s] AOD timeline invalidated by host content change.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E127F100](v7, -1, -1);
    MEMORY[0x1E127F100](v6, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong _backlightSceneEnvironment];

    if (v13)
    {
      v14 = sub_1DAED1CBC();
      [v13 invalidateAllTimelinesForReason_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1DAE56AA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v65 - v5;
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v65 - v13;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v65 - v16;
  v18 = v8[2];
  v70 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger;
  v72 = v18;
  v73 = v8 + 2;
  (v18)(&v65 - v16, &v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v7, v15);
  v71 = v1;
  v19 = v1;
  v20 = sub_1DAECEDCC();
  v21 = sub_1DAED200C();

  v22 = os_log_type_enabled(v20, v21);
  v68 = v11;
  v69 = v6;
  v75 = v19;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v67 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v76[0] = v25;
    *v24 = 136446210;
    v26 = &v19[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v66 = a1;
    v28 = *&v19[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v27 = *(v26 + 1);

    v29 = sub_1DAD6482C(v28, v27, v76);

    *(v24 + 4) = v29;
    a1 = v66;
    _os_log_impl(&dword_1DAD61000, v20, v21, "[%{public}s] Trait collection did change.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E127F100](v25, -1, -1);
    v30 = v24;
    v7 = v67;
    MEMORY[0x1E127F100](v30, -1, -1);
  }

  v31 = v8[1];
  v31(v17, v7);
  v32 = v75;
  if (a1 && [a1 _backlightLuminance] == 1)
  {
LABEL_9:
    if ([a1 _backlightLuminance] == 1)
    {
      v46 = [v32 traitCollection];
      v47 = [v46 _backlightLuminance];

      if (v47 != 1)
      {
        v48 = v68;
        v72(v68, &v71[v70], v7);
        v49 = v32;
        v50 = sub_1DAECEDCC();
        v51 = v7;
        v52 = sub_1DAED200C();

        if (os_log_type_enabled(v50, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v76[0] = v54;
          *v53 = 136446210;
          v55 = *&v49[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
          v56 = *&v49[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

          v57 = sub_1DAD6482C(v55, v56, v76);

          *(v53 + 4) = v57;
          _os_log_impl(&dword_1DAD61000, v50, v52, "[%{public}s] Trait collection: exiting AoD.", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          MEMORY[0x1E127F100](v54, -1, -1);
          MEMORY[0x1E127F100](v53, -1, -1);
        }

        v31(v48, v51);
      }
    }

    return;
  }

  v33 = [v32 traitCollection];
  v34 = [v33 _backlightLuminance];

  if (v34 != 1)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_9;
  }

  v72(v74, &v71[v70], v7);
  v35 = v32;
  v36 = sub_1DAECEDCC();
  v37 = sub_1DAED200C();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = v7;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v76[0] = v40;
    *v39 = 136446210;
    v41 = *&v35[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v42 = *&v35[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v43 = sub_1DAD6482C(v41, v42, v76);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1DAD61000, v36, v37, "[%{public}s] Trait collection: entering AoD.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E127F100](v40, -1, -1);
    MEMORY[0x1E127F100](v39, -1, -1);

    v44 = v74;
    v45 = v38;
  }

  else
  {

    v44 = v74;
    v45 = v7;
  }

  v31(v44, v45);
  v58 = *&v35[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v58)
  {
    v59 = *(*(v58 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v60 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    v61 = v59 + v60;
    v62 = v69;
    sub_1DAD6495C(v61, v69, &qword_1ECC07CE8, &qword_1DAED6F60);
    v63 = sub_1DAECDCEC();
    if ((*(*(v63 - 8) + 48))(v62, 1, v63) != 1)
    {
      sub_1DAD64398(v62, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }
  }

  else
  {
    v64 = sub_1DAECDCEC();
    v62 = v69;
    (*(*(v64 - 8) + 56))(v69, 1, 1, v64);
  }

  sub_1DAD64398(v62, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAE5903C(v35);
}

uint64_t sub_1DAE57210(uint64_t a1)
{
  v3 = sub_1DAECDA2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECEDEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v38 = MEMORY[0x1E69E7CC0];
  v35 = a1;
  v36 = &v38;
  sub_1DAE582C8(sub_1DAE5D440);
  (*(v9 + 16))(v12, v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v8);
  (*(v4 + 16))(v7, a1, v3);
  v13 = v1;
  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED200C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v34 = v8;
    v17 = v16;
    v33 = swift_slowAlloc();
    v37[0] = v33;
    *v17 = 136446722;
    v18 = *&v13[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v19 = *&v13[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v20 = sub_1DAD6482C(v18, v19, v37);

    *(v17 + 4) = v20;
    *(v17 + 12) = 2082;
    sub_1DAE5CE20(&qword_1ECC08D48, MEMORY[0x1E6968130]);
    v21 = sub_1DAED287C();
    v23 = v22;
    (*(v4 + 8))(v7, v3);
    v24 = sub_1DAD6482C(v21, v23, v37);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    swift_beginAccess();
    v25 = sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);

    v27 = MEMORY[0x1E127DB00](v26, v25);
    v29 = v28;

    v30 = sub_1DAD6482C(v27, v29, v37);

    *(v17 + 24) = v30;
    _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] AoD timeline request with dateInterval: %{public}s - timelines: %{public}s", v17, 0x20u);
    v31 = v33;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v31, -1, -1);
    MEMORY[0x1E127F100](v17, -1, -1);

    (*(v9 + 8))(v12, v34);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v8);
  }

  swift_beginAccess();
  return v38;
}

uint64_t sub_1DAE57628(uint64_t a1)
{
  v1 = *(*(a1 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
  v2 = sub_1DAECD9DC();
  v3 = [v1 _timelinesForDateInterval_];

  sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v4 = sub_1DAED1E7C();

  return sub_1DAE576DC(v4);
}

uint64_t sub_1DAE576DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1DAED247C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_1DAED247C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_1DADF9CDC();
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DAE5B124(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DAE578FC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v77 = a2;
  v78 = a3;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECDA2C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v76 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  BSDispatchQueueAssertMain();
  if (a1)
  {
    v24 = [a1 presentationInterval];
    v25 = v23;
    v26 = a1;
    v27 = v10;
    v28 = v7;
    v29 = v24;
    sub_1DAECD9EC();

    v7 = v28;
    v10 = v27;
    a1 = v26;
    v23 = v25;
    sub_1DAECDA0C();
    (*(v12 + 8))(v15, v11);
    v30 = sub_1DAECDCEC();
    (*(*(v30 - 8) + 56))(v25, 0, 1, v30);
  }

  else
  {
    v31 = sub_1DAECDCEC();
    (*(*(v31 - 8) + 56))(v23, 1, 1, v31);
  }

  (*(v7 + 16))(v10, v4 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger, v6);
  v32 = v79;
  sub_1DAD6495C(v23, v79, &qword_1ECC07CE8, &qword_1DAED6F60);
  v33 = v4;
  v34 = a1;
  v35 = v6;
  v36 = sub_1DAECEDCC();
  v37 = sub_1DAED200C();
  v75 = v34;

  if (os_log_type_enabled(v36, v37))
  {
    v68 = v36;
    v70 = v37;
    v72 = v10;
    v73 = v7;
    v74 = v35;
    v38 = 7104878;
    v39 = v32;
    v40 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v80 = v69;
    *v40 = 136446722;
    v41 = *&v33[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
    v42 = *&v33[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

    v43 = sub_1DAD6482C(v41, v42, &v80);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    v44 = v76;
    sub_1DAD6495C(v39, v76, &qword_1ECC07CE8, &qword_1DAED6F60);
    v45 = sub_1DAECDCEC();
    v46 = *(v45 - 8);
    v47 = (*(v46 + 48))(v44, 1, v45);
    v71 = a1;
    if (v47 == 1)
    {
      sub_1DAD64398(v44, &qword_1ECC07CE8, &qword_1DAED6F60);
      v48 = 0xE300000000000000;
      v49 = 7104878;
    }

    else
    {
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v51 = qword_1EE00A708;
      v52 = v44;
      v53 = sub_1DAECDC5C();
      v54 = [v51 stringFromDate_];

      v49 = sub_1DAED1CEC();
      v48 = v55;

      (*(v46 + 8))(v52, v45);
      v38 = 7104878;
    }

    sub_1DAD64398(v79, &qword_1ECC07CE8, &qword_1DAED6F60);
    v56 = sub_1DAD6482C(v49, v48, &v80);

    *(v40 + 14) = v56;
    *(v40 + 22) = 2082;
    v58 = v72;
    v57 = v73;
    if (v71)
    {
      v59 = [v75 description];
      v38 = sub_1DAED1CEC();
      v61 = v60;
    }

    else
    {
      v61 = 0xE300000000000000;
    }

    v62 = sub_1DAD6482C(v38, v61, &v80);

    *(v40 + 24) = v62;
    v63 = v68;
    _os_log_impl(&dword_1DAD61000, v68, v70, "[%{public}s] AoD update to override date: %{public}s with specifier: %{public}s", v40, 0x20u);
    v64 = v69;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v64, -1, -1);
    MEMORY[0x1E127F100](v40, -1, -1);

    v50 = (*(v57 + 8))(v58, v74);
  }

  else
  {

    sub_1DAD64398(v32, &qword_1ECC07CE8, &qword_1DAED6F60);
    v50 = (*(v7 + 8))(v10, v35);
  }

  MEMORY[0x1EEE9AC00](v50);
  *(&v67 - 2) = v23;
  sub_1DAE582C8(sub_1DAE5D438);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v65 = swift_allocObject();
  *(v65 + 16) = v77;
  *(v65 + 24) = v78;

  sub_1DAED22FC();

  return sub_1DAD64398(v23, &qword_1ECC07CE8, &qword_1DAED6F60);
}

uint64_t sub_1DAE58058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  v11 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view);
  v12 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
  swift_getObjectType();
  v13 = v12;
  swift_getWitnessTable();
  _UIHostingViewable.setNeedsSynchronousUpdate()();

  v14 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
  sub_1DAD6495C(a2, v10, &qword_1ECC07CE8, &qword_1DAED6F60);
  v15 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v14 + v15, v7, &qword_1ECC07CE8, &qword_1DAED6F60);
  swift_beginAccess();

  sub_1DAD901C4(v10, v14 + v15, &qword_1ECC07CE8, &qword_1DAED6F60);
  swift_endAccess();
  sub_1DAE64750(v7);

  sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
}

void sub_1DAE582C8(void (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAEDC070;
    *(inited + 32) = v2;
    v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (!v5)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v6 = inited;
    *(inited + 40) = v5;
    v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (!v7)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    *(inited + 48) = v7;
    v8 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController);
    if (!v8)
    {
LABEL_18:
      __break(1u);
      return;
    }

    *(inited + 56) = v8;
    v9 = v2;
    v10 = v5;
    v11 = v7;
    v12 = v8;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x1E127E1F0](0, v6);
      a1();

      v19 = MEMORY[0x1E127E1F0](1, v6);
      a1();

      v20 = MEMORY[0x1E127E1F0](2, v6);
      a1();

      v16 = MEMORY[0x1E127E1F0](3, v6);
      goto LABEL_10;
    }

    v13 = v9;
    a1();

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v14 = *(v6 + 40);
      a1();

      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v15 = *(v6 + 48);
        a1();

        if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v16 = *(v6 + 56);
LABEL_10:
          v17 = v16;

          (a1)(v17);

          return;
        }

        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1DAE584BC(uint64_t a1)
{
  v116 = a1;
  v105 = sub_1DAED184C();
  v104 = *(v105 - 8);
  v2 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v93 - v5;
  v102 = sub_1DAED17EC();
  v101 = *(v102 - 8);
  v6 = *(v101 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - v9;
  v11 = sub_1DAECF9FC();
  v114 = *(v11 - 8);
  v115 = v11;
  v12 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v113 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DAECF8EC();
  v111 = *(v14 - 8);
  v112 = v14;
  v15 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DAED1ABC();
  v109 = *(v17 - 8);
  v110 = v17;
  v18 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v106 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v108 = &v93 - v22;
  v23 = sub_1DAED19EC();
  v117 = *(v23 - 8);
  v118 = v23;
  v24 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v98 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DAECEDEC();
  v97 = *(v26 - 8);
  v27 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v96 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DAED187C();
  v93 = *(v29 - 8);
  v30 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DAED1B8C();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v93 - v40;
  v42 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController;
  v119 = v1;
  v43 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v43)
  {
    v94 = v26;
    v95 = v10;
    v44 = *(*(v43 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v45 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v44 + v45, v41, &unk_1ECC09E40, &qword_1DAED68E0);
    if ((*(v34 + 48))(v41, 1, v33))
    {
      sub_1DAD64398(v41, &unk_1ECC09E40, &qword_1DAED68E0);
      v46 = 0.0;
    }

    else
    {
      (*(v34 + 16))(v37, v41, v33);
      sub_1DAD64398(v41, &unk_1ECC09E40, &qword_1DAED68E0);
      sub_1DAED1B6C();
      (*(v34 + 8))(v37, v33);
      sub_1DAED186C();
      v46 = v47;
      (*(v93 + 8))(v32, v29);
    }

    v48 = v97;
    v49 = v96;
    v50 = v118;
    v51 = *&v119[v42];
    v10 = v95;
    v52 = v94;
    if (!v51)
    {
      goto LABEL_14;
    }

    (*(v97 + 16))(v96, *(*(v51 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v94);
    v53 = v119;
    v54 = sub_1DAECEDCC();
    v55 = sub_1DAED203C();

    if (!os_log_type_enabled(v54, v55))
    {

      (*(v48 + 8))(v49, v52);
      goto LABEL_14;
    }

    v56 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v120[0] = v97;
    *v56 = 136446466;
    v57 = *&v119[v42];
    if (v57)
    {
      v58 = (*(*(v57 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v59 = *v58;
      v60 = v58[1];
    }

    else
    {
      v60 = 0xE300000000000000;
      v59 = 7104878;
    }

    v61 = sub_1DAD6482C(v59, v60, v120);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2082;
    v62 = sub_1DAED225C();
    v64 = sub_1DAD6482C(v62, v63, v120);

    *(v56 + 14) = v64;
    _os_log_impl(&dword_1DAD61000, v54, v55, "[%{public}s]: expanded view bounds after view change: %{public}s", v56, 0x16u);
    v65 = v97;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v65, -1, -1);
    MEMORY[0x1E127F100](v56, -1, -1);

    (*(v48 + 8))(v49, v52);
  }

  else
  {
    v46 = 0.0;
  }

  v50 = v118;
LABEL_14:
  v67 = v109;
  v66 = v110;
  v68 = v116;
  v69 = v106;
  (*(v109 + 16))(v106, v116 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v110);
  v70 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  v72 = v111;
  v71 = v112;
  v73 = v68 + v70;
  v74 = v107;
  (*(v111 + 16))(v107, v73, v112);
  v75 = v113;
  sub_1DAECF3EC();
  (*(v72 + 8))(v74, v71);
  v76 = v108;
  sub_1DAED1A7C();
  (*(v114 + 8))(v75, v115);
  (*(v67 + 8))(v69, v66);
  v77 = v117;
  result = (*(v117 + 48))(v76, 1, v50);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v79 = v98;
    (*(v77 + 32))(v98, v76, v50);
    sub_1DAED19BC();
    v80 = v100;
    sub_1DAED17CC();
    v81 = *(v101 + 8);
    v82 = v102;
    v81(v10, v102);
    sub_1DAED183C();
    v84 = v83;
    v85 = *(v104 + 8);
    v86 = v80;
    v87 = v105;
    v85(v86, v105);
    v88 = v99;
    sub_1DAED19BC();
    v89 = v103;
    sub_1DAED17DC();
    v81(v88, v82);
    sub_1DAED183C();
    v91 = v90;
    v85(v89, v87);
    if (v91 >= v46)
    {
      v92 = v46;
    }

    else
    {
      v92 = v91;
    }

    [v119 setPreferredContentSize_];
    return (*(v117 + 8))(v79, v118);
  }

  return result;
}

void sub_1DAE5903C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DAEDC070;
    *(inited + 32) = v9;
    v11 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController);
    if (!v11)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v12 = inited;
    *(inited + 40) = v11;
    v13 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController);
    if (!v13)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    *(inited + 48) = v13;
    v14 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController);
    if (!v14)
    {
LABEL_27:
      __break(1u);
      return;
    }

    *(inited + 56) = v14;
    v15 = inited & 0xC000000000000001;
    v16 = v9;
    v17 = v11;
    v18 = v13;
    v19 = v14;
    v38 = v15;
    if (v15)
    {
      v20 = MEMORY[0x1E127E1F0](0, v12);
    }

    else
    {
      v20 = v16;
    }

    v21 = v20;
    v22 = *(*&v20[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

    sub_1DAECDCDC();
    v23 = sub_1DAECDCEC();
    v37 = *(*(v23 - 8) + 56);
    v37(v8, 0, 1, v23);
    v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v22 + v24, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_beginAccess();
    sub_1DAD901C4(v8, v22 + v24, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
    sub_1DAE64750(v5);
    sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);

    if (v38)
    {
      v25 = MEMORY[0x1E127E1F0](1, v12);
    }

    else
    {
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_23;
      }

      v25 = *(v12 + 40);
    }

    v26 = v25;
    v27 = *(*&v25[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

    sub_1DAECDCDC();
    v37(v8, 0, 1, v23);
    v28 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v27 + v28, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_beginAccess();
    sub_1DAD901C4(v8, v27 + v28, &qword_1ECC07CE8, &qword_1DAED6F60);
    swift_endAccess();
    sub_1DAE64750(v5);
    sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
    sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);

    if (v38)
    {
      v29 = MEMORY[0x1E127E1F0](2, v12);
LABEL_15:
      v30 = v29;
      v31 = *(*&v29[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

      sub_1DAECDCDC();
      v37(v8, 0, 1, v23);
      v32 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
      swift_beginAccess();
      sub_1DAD6495C(v31 + v32, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_beginAccess();
      sub_1DAD901C4(v8, v31 + v32, &qword_1ECC07CE8, &qword_1DAED6F60);
      swift_endAccess();
      sub_1DAE64750(v5);
      sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
      sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);

      if (v38)
      {
        v33 = MEMORY[0x1E127E1F0](3, v12);
LABEL_19:
        v34 = v33;

        v35 = *(*&v34[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);

        sub_1DAECDCDC();
        v37(v8, 0, 1, v23);
        v36 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
        swift_beginAccess();
        sub_1DAD6495C(v35 + v36, v5, &qword_1ECC07CE8, &qword_1DAED6F60);
        swift_beginAccess();
        sub_1DAD901C4(v8, v35 + v36, &qword_1ECC07CE8, &qword_1DAED6F60);
        swift_endAccess();
        sub_1DAE64750(v5);
        sub_1DAD64398(v5, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);

        return;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
      {
        v33 = *(v12 + 56);
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v29 = *(v12 + 48);
      goto LABEL_15;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_1DAE5964C()
{
  v1 = sub_1DAECF29C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E68, &qword_1DAEDC1B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - v7;
  v9 = sub_1DAECF8EC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E70, &unk_1DAEDC1C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController);
  if (v23)
  {
    v24 = *(*(v23 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model);
    v41 = v19;
    v25 = v1;
    v26 = &v41 - v21;
    v27 = v8;
    v28 = v2;
    v29 = v5;
    v30 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
    swift_beginAccess();
    v31 = v24 + v30;
    v5 = v29;
    v2 = v28;
    v8 = v27;
    v22 = v26;
    v1 = v25;
    v19 = v41;
    (*(v10 + 16))(v13, v31, v9);
    sub_1DAECF43C();
    (*(v10 + 8))(v13, v9);
    v32 = *(v2 + 56);
    v32(v22, 0, 1, v1);
  }

  else
  {
    v32 = *(v2 + 56);
    v32(&v41 - v21, 1, 1, v1);
  }

  (*(v2 + 104))(v19, *MEMORY[0x1E697E7D8], v1);
  v32(v19, 0, 1, v1);
  v33 = *(v5 + 48);
  sub_1DAD6495C(v22, v8, &unk_1ECC09E70, &unk_1DAEDC1C0);
  sub_1DAD6495C(v19, &v8[v33], &unk_1ECC09E70, &unk_1DAEDC1C0);
  v34 = *(v2 + 48);
  v35 = v34(v8, 1, v1);
  v36 = v43;
  if (v35 != 1)
  {
    sub_1DAD6495C(v8, v43, &unk_1ECC09E70, &unk_1DAEDC1C0);
    if (v34(&v8[v33], 1, v1) != 1)
    {
      v38 = v42;
      (*(v2 + 32))(v42, &v8[v33], v1);
      sub_1DAE5CE20(&qword_1EE005B48, MEMORY[0x1E697E7E0]);
      v37 = sub_1DAED1CAC();
      v39 = *(v2 + 8);
      v39(v38, v1);
      sub_1DAD64398(v19, &unk_1ECC09E70, &unk_1DAEDC1C0);
      sub_1DAD64398(v22, &unk_1ECC09E70, &unk_1DAEDC1C0);
      v39(v36, v1);
      sub_1DAD64398(v8, &unk_1ECC09E70, &unk_1DAEDC1C0);
      return v37 & 1;
    }

    sub_1DAD64398(v19, &unk_1ECC09E70, &unk_1DAEDC1C0);
    sub_1DAD64398(v22, &unk_1ECC09E70, &unk_1DAEDC1C0);
    (*(v2 + 8))(v36, v1);
    goto LABEL_9;
  }

  sub_1DAD64398(v19, &unk_1ECC09E70, &unk_1DAEDC1C0);
  sub_1DAD64398(v22, &unk_1ECC09E70, &unk_1DAEDC1C0);
  if (v34(&v8[v33], 1, v1) != 1)
  {
LABEL_9:
    sub_1DAD64398(v8, &qword_1ECC09E68, &qword_1DAEDC1B8);
    v37 = 0;
    return v37 & 1;
  }

  sub_1DAD64398(v8, &unk_1ECC09E70, &unk_1DAEDC1C0);
  v37 = 1;
  return v37 & 1;
}

void sub_1DAE59BFC()
{
  v1 = v0;
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode;
  v9 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode];
  v10 = &qword_1ECC09000;
  v11 = &qword_1ECC09000;
  if (v9 != 4)
  {
    goto LABEL_6;
  }

  v12 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  if (v12)
  {
    v13 = [v12 view];
    if (!v13)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v14 = v13;
    v15 = [v1 view];
    if (!v15)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame_];
    v9 = *&v1[v8];
    v10 = &qword_1ECC09000;
LABEL_6:
    if (v9 != 3)
    {
      goto LABEL_17;
    }

    v74 = v3;
    v25 = [v1 view];
    if (!v25)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v26 = v25;
    v27 = [v25 effectiveUserInterfaceLayoutDirection];

    if (v27 == 1)
    {
      v28 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
      if (!v28)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v29 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
      if (v29)
      {
LABEL_14:
        v30 = v28;
        v31 = v29;
        [v30 frame];
        [v30 setFrame_];

        [v31 frame];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;
        v40 = [v1 view];
        if (v40)
        {
          v41 = v40;
          [v40 bounds];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;

          v76.origin.x = v43;
          v76.origin.y = v45;
          v76.size.width = v47;
          v76.size.height = v49;
          MaxX = CGRectGetMaxX(v76);
          v77.origin.x = v33;
          v77.origin.y = v35;
          v77.size.width = v37;
          v77.size.height = v39;
          [v31 setFrame_];

          v9 = *&v1[v8];
          v3 = v74;
          v11 = &qword_1ECC09000;
          v10 = &qword_1ECC09000;
          goto LABEL_17;
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    v28 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
    if (!v28)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v29 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
    if (!v29)
    {
LABEL_39:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  v9 = 4;
LABEL_17:
  v51 = *&v1[v10[405]];
  if (v51)
  {
    [v51 setHidden_];
  }

  v52 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
  if (v52)
  {
    [v52 setHidden_];
  }

  v53 = *&v1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView];
  if (v53)
  {
    [v53 setHidden_];
  }

  v54 = v11[404];
  v55 = *&v1[v54];
  if (v55)
  {
    (*(v3 + 16))(v7, *(*(v55 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v2);
    v56 = v2;
    v57 = v1;
    v58 = sub_1DAECEDCC();
    v59 = v3;
    v60 = sub_1DAED200C();
    if (!os_log_type_enabled(v58, v60))
    {

      (*(v59 + 8))(v7, v56);
      return;
    }

    v73 = v56;
    v74 = v59;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75 = v62;
    *v61 = 136446466;
    v63 = *&v1[v54];
    if (v63)
    {
      v64 = (*(*(v63 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v66 = *v64;
      v65 = v64[1];
    }

    else
    {
      v65 = 0xE300000000000000;
      v66 = 7104878;
    }

    v67 = sub_1DAD6482C(v66, v65, &v75);

    *(v61 + 4) = v67;
    *(v61 + 12) = 2082;
    v68 = [v57 view];

    if (v68)
    {
      [v68 bounds];

      v69 = sub_1DAED224C();
      v71 = sub_1DAD6482C(v69, v70, &v75);

      *(v61 + 14) = v71;
      _os_log_impl(&dword_1DAD61000, v58, v60, "[%{public}s] self.view.bounds = %{public}s", v61, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v62, -1, -1);
      MEMORY[0x1E127F100](v61, -1, -1);

      (*(v74 + 8))(v7, v73);
      return;
    }

    goto LABEL_36;
  }
}

uint64_t type metadata accessor for SystemApertureElementViewController()
{
  result = qword_1EE00ADB8;
  if (!qword_1EE00ADB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE5A3BC()
{
  result = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1DAE5A5D4(uint64_t a1)
{
  v3 = sub_1DAED187C();
  v58 = *(v3 - 8);
  v59 = v3;
  v4 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED1B8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v17 = type metadata accessor for ActivityView();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v1;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model] = a1;
  v65 = 0;
  swift_retain_n();
  sub_1DAED076C();
  *(v20 + 2) = v66;
  v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
  v61 = v17;
  v22 = *(v17 + 28);
  v23 = sub_1DAECEDEC();
  (*(*(v23 - 8) + 16))(&v20[v22], a1 + v21, v23);
  type metadata accessor for ActivityViewModel();
  sub_1DAE5CE20(&qword_1EE007808, type metadata accessor for ActivityViewModel);

  v24 = sub_1DAECF21C();
  v26 = v25;
  *v20 = v24;
  *(v20 + 1) = v25;
  *&v66 = sub_1DAED064C();
  *(v20 + 2) = sub_1DAED087C();
  *(v20 + 3) = 0;
  v27 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v26 + v27, v16, &unk_1ECC09E40, &qword_1DAED68E0);
  v60 = *(v7 + 48);
  v28 = v60(v16, 1, v6);
  v56 = v10;
  if (v28)
  {
    sub_1DAD64398(v16, &unk_1ECC09E40, &qword_1DAED68E0);
    v29 = *(v26 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
  }

  else
  {
    (*(v7 + 16))(v10, v16, v6);
    sub_1DAD64398(v16, &unk_1ECC09E40, &qword_1DAED68E0);
    v29 = sub_1DAED1B5C();
    (*(v7 + 8))(v10, v6);
  }

  *(v20 + 2) = v29;
  *(v20 + 3) = 0;
  sub_1DAE5CE20(qword_1EE007DA0, type metadata accessor for ActivityView);
  v30 = sub_1DAED087C();
  v31 = objc_allocWithZone(type metadata accessor for SecureHostingController());
  v65 = v30;
  v32 = sub_1DAECFA9C();
  v33 = sub_1DAE5CE20(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v34 = v63;
  v35 = &v63[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController];
  *v35 = v32;
  *(v35 + 1) = v33;
  v36 = v32;
  v37 = 0.0;
  sub_1DADB25F8(1, 0);

  v38 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  v39 = v62;
  sub_1DAD6495C(a1 + v38, v62, &unk_1ECC09E40, &qword_1DAED68E0);
  if (v60(v39, 1, v6))
  {
    sub_1DAD64398(v39, &unk_1ECC09E40, &qword_1DAED68E0);
    v40 = 0.0;
    v41 = 0.0;
    v42 = 0.0;
  }

  else
  {
    v43 = v56;
    (*(v7 + 16))(v56, v39, v6);
    sub_1DAD64398(v39, &unk_1ECC09E40, &qword_1DAED68E0);
    v44 = v57;
    sub_1DAED1B6C();
    (*(v7 + 8))(v43, v6);
    sub_1DAED186C();
    v37 = v45;
    v40 = v46;
    v41 = v47;
    v42 = v48;
    (*(v58 + 8))(v44, v59);
  }

  v49 = type metadata accessor for _JindoAccessoryView();
  v64.receiver = v34;
  v64.super_class = v49;
  v50 = objc_msgSendSuper2(&v64, sel_initWithFrame_, v37, v40, v41, v42);
  v51 = *&v50[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController];
  v52 = v50;
  result = [v51 view];
  if (result)
  {
    v54 = result;
    [v52 addSubview_];

    return v52;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1DAE5AEDC()
{
  *&v0[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__subscriptions] = MEMORY[0x1E69E7CD0];
  v1 = objc_allocWithZone(type metadata accessor for _JindoAccessoryView());

  *&v0[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] = sub_1DAE5A5D4(v2);
  v7.receiver = v0;
  v7.super_class = type metadata accessor for _JindoAccessoryViewController();
  v3 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  v4 = *(*&v3[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
  v5 = v3;
  [v5 addChildViewController_];

  return v5;
}

id sub_1DAE5B07C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DAE5B124(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1DAED247C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1DAED247C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1DAD64B94(&qword_1ECC09EB8, &qword_1ECC09EB0, qword_1DAEDC1D0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EB0, qword_1DAEDC1D0);
            v9 = sub_1DAE960BC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1DAE5B2D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t *a7)
{
  v85 = a5;
  v81 = a2;
  v82 = a4;
  v80 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v74 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08890, &qword_1DAEDD970);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v72 - v16;
  v17 = sub_1DAECEDEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v78 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v72 - v22;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_contentRole] = 2;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_preferredLayoutMode] = 3;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_maximumLayoutMode] = 4;
  v24 = &v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedScenePersistenceIdentifier];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier];
  *v25 = 0;
  v25[1] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier] = 0;
  v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_attachedMinimalViewRequiresZeroPadding] = 1;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController] = 0;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors] = 1;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__cancellables] = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  v86 = v18;
  v26 = *(v18 + 16);
  v83 = a3;
  v26(&v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], a3, v17);
  v27 = &v7[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
  v28 = v85;
  *v27 = v82;
  v27[1] = v28;
  v82 = a6;
  swift_unknownObjectWeakAssign();
  v29 = type metadata accessor for SystemApertureElementViewController();
  v90.receiver = v7;
  v90.super_class = v29;
  v30 = objc_msgSendSuper2(&v90, sel_initWithNibName_bundle_, 0, 0);
  v73 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger;
  v85 = v17;
  v26(v23, &v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v17);
  sub_1DAD648F8(a7, &v88);
  v31 = sub_1DAECEDCC();
  v32 = sub_1DAED203C();
  v33 = os_log_type_enabled(v31, v32);
  v84 = a7;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 67240192;
    __swift_project_boxed_opaque_existential_1(&v88, v89);
    v35 = sub_1DAECE2BC() & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
    *(v34 + 4) = v35;
    _os_log_impl(&dword_1DAD61000, v31, v32, "Has unlocked since boot? %{BOOL,public}d", v34, 8u);
    v36 = v34;
    a7 = v84;
    MEMORY[0x1E127F100](v36, -1, -1);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  }

  v37 = v85;
  v38 = v86 + 8;
  v39 = *(v86 + 8);
  v39(v23, v85);
  v40 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  v41 = sub_1DAECE2BC();
  v86 = v38;
  v79 = v39;
  if (v41)
  {
    *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors] |= 8uLL;
  }

  else
  {
    v26(v78, &v30[v73], v37);
    v42 = sub_1DAECEDCC();
    v43 = sub_1DAED203C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1DAD61000, v42, v43, "Waiting on first unlock to show in coversheet.", v44, 2u);
      MEMORY[0x1E127F100](v44, -1, -1);
    }

    v39(v78, v37);
    v45 = swift_allocObject();
    v78 = v45;
    *(v45 + 16) = 0;
    v46 = (v45 + 16);
    v47 = a7[4];
    __swift_project_boxed_opaque_existential_1(a7, a7[3]);
    *&v88 = sub_1DAECE2CC();
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v48 = sub_1DAED20EC();
    v87 = v48;
    v49 = sub_1DAED20AC();
    v50 = v74;
    (*(*(v49 - 8) + 56))(v74, 1, 1, v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
    sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240);
    sub_1DAD88828();
    v51 = v75;
    a7 = v84;
    sub_1DAECEFBC();
    sub_1DAD64398(v50, &unk_1ECC07D20, &unk_1DAED57D0);

    v52 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1DAD648F8(a7, &v88);
    v53 = swift_allocObject();
    v54 = v78;
    *(v53 + 16) = v52;
    *(v53 + 24) = v54;
    sub_1DADD7B84(&v88, v53 + 32);
    sub_1DAD64B94(&qword_1EE00AC30, &qword_1ECC08890, &qword_1DAEDD970);

    v55 = v77;
    v56 = sub_1DAECF00C();

    (*(v76 + 8))(v51, v55);
    swift_beginAccess();
    v57 = *v46;
    *v46 = v56;
  }

  v58 = type metadata accessor for _EmptyJindoAccessoryView();
  v59 = [objc_allocWithZone(v58) initWithFrame_];
  v60 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
  *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView] = v59;

  v61 = [objc_allocWithZone(v58) initWithFrame_];
  v62 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
  *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView] = v61;

  v63 = [objc_allocWithZone(v58) initWithFrame_];
  v64 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView];
  *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView] = v63;

  v65 = &v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier];
  v66 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier + 8];
  v67 = v81;
  *v65 = v80;
  *(v65 + 1) = v67;

  v68 = [v82 _sceneIdentifier];
  if (!v68)
  {
    sub_1DAED1CEC();
    v69 = sub_1DAED1CBC();

    v68 = v69;
  }

  v70 = *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier];
  *&v30[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier] = v68;

  [objc_msgSend(v30 systemApertureElementContext)];
  swift_unknownObjectRelease();
  v79(v83, v85);
  __swift_destroy_boxed_opaque_existential_1Tm(a7);
  return v30;
}

void sub_1DAE5BBEC()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_activeLayoutMode) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_contentRole) = 2;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_preferredLayoutMode) = 3;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_maximumLayoutMode) = 4;
  v1 = (v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedScenePersistenceIdentifier);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_associatedAppBundleIdentifier);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_elementIdentifier) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_attachedMinimalViewRequiresZeroPadding) = 1;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_presentationBehaviors) = 1;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__cancellables) = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  sub_1DAED273C();
  __break(1u);
}

uint64_t sub_1DAE5BD48(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E50, &unk_1DAEDC1A8);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35[0] = v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v35 - v16;
  v18 = sub_1DAED182C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v23 = a1;
  (*(v19 + 104))(v23, *MEMORY[0x1E6985910], v18, v21);
  v24 = sub_1DAE7CAF8(v23, a3, a4);
  (*(v19 + 8))(v23, v18);
  v25 = *MEMORY[0x1E697DBA8];
  v26 = sub_1DAECF0AC();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v17, v25, v26);
  (*(v27 + 56))(v17, 0, 1, v26);
  v28 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v24 + v28, v14, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DAD901C4(v17, v24 + v28, &qword_1ECC08370, &unk_1DAED6580);
  swift_endAccess();
  sub_1DAE62CC4(v14);
  sub_1DAD64398(v14, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v17, &qword_1ECC08370, &unk_1DAED6580);
  v29 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
  *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 1;
  sub_1DAE638F4(v29);
  v38 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
  sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20);
  v30 = v35[0];
  sub_1DAECEFAC();

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v24;
  *(v32 + 32) = a1;
  sub_1DAD64B94(&unk_1EE005D60, &unk_1ECC09E50, &unk_1DAEDC1A8);

  v33 = v36;
  sub_1DAECF00C();

  (*(v37 + 8))(v30, v33);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  return v24;
}

void sub_1DAE5C23C(char *a1, void *a2, unint64_t *a3)
{
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a3;
  v112 = OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController;
  v12 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_expandedUIHostingController];
  v110 = a2;
  if (v12)
  {
    (*(v7 + 16))(v11, &a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logger], v6, v9);
    v13 = a2;
    v14 = a3;
    v15 = v13;
    v16 = v14;
    v17 = v15;
    v18 = v16;
    v109 = v17;
    v108 = v18;
    v19 = a1;
    v20 = sub_1DAECEDCC();
    a3 = sub_1DAED200C();

    v21 = os_log_type_enabled(v20, a3);
    v107 = v19;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v113 = v18;
      *v22 = 136446210;
      v23 = *&v19[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier];
      v24 = *&v19[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController__logIdentifier + 8];

      v25 = sub_1DAD6482C(v23, v24, &v113);

      *(v22 + 4) = v25;
      _os_log_impl(&dword_1DAD61000, v20, a3, "[%{public}s] Enabling RenderBox default update interval because foreground.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E127F100](v18, -1, -1);
      MEMORY[0x1E127F100](v22, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    v26 = v111;
    v27 = *&a1[v112];
    if (v27)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DAEDC070;
      *(inited + 32) = v27;
      v29 = v107;
      v30 = *&v107[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController];
      if (!v30)
      {
LABEL_39:
        v100 = v108;

        v101 = v109;
        __break(1u);
        goto LABEL_40;
      }

      v31 = inited;
      *(inited + 40) = v30;
      v18 = *&v29[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController];
      if (!v18)
      {
LABEL_40:
        v102 = v108;

        v103 = v109;
        __break(1u);
        goto LABEL_41;
      }

      *(inited + 48) = v18;
      v32 = *&v29[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController];
      if (!v32)
      {
LABEL_41:
        v104 = v108;

        v105 = v109;
        __break(1u);
        goto LABEL_42;
      }

      *(inited + 56) = v32;
      v33 = inited & 0xC000000000000001;
      v34 = v27;
      v35 = v30;
      v36 = v18;
      v37 = v32;
      if (v33)
      {
        v38 = MEMORY[0x1E127E1F0](0, v31);
      }

      else
      {
        v38 = v34;
      }

      v30 = v38;
      v18 = &qword_1ECC09000;
      v39 = *(*(v38 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
      swift_getObjectType();
      v40 = v39;
      swift_getWitnessTable();
      _UIHostingViewable.setForegroundUpdateInterval()();

      if (v33)
      {
        v41 = MEMORY[0x1E127E1F0](1, v31);
      }

      else
      {
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          __break(1u);
          goto LABEL_37;
        }

        v41 = *(v31 + 40);
      }

      v30 = v41;
      v90 = *(*(v41 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
      swift_getObjectType();
      v91 = v90;
      swift_getWitnessTable();
      _UIHostingViewable.setForegroundUpdateInterval()();

      if (v33)
      {
        v92 = MEMORY[0x1E127E1F0](2, v31);
LABEL_29:
        v30 = v92;
        v93 = *(*(v92 + OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view) + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
        swift_getObjectType();
        v94 = v93;
        swift_getWitnessTable();
        _UIHostingViewable.setForegroundUpdateInterval()();

        if (v33)
        {
          v95 = MEMORY[0x1E127E1F0](3, v31);
LABEL_33:
          v96 = v95;

          v97 = *(*&v96[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view] + OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__hostController);
          swift_getObjectType();
          v98 = v97;
          swift_getWitnessTable();
          _UIHostingViewable.setForegroundUpdateInterval()();

          goto LABEL_34;
        }

        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
        {
          v95 = *(v31 + 56);
          goto LABEL_33;
        }

        goto LABEL_38;
      }

      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
      {
        v92 = *(v31 + 48);
        goto LABEL_29;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_34:
    v99 = v110;

    return;
  }

  v42 = a2;
  v43 = a3;
  v44 = v42;
  v45 = v43;
  v46 = v44;
  v47 = v45;
  v30 = v46;
  v18 = v47;
  v20 = sub_1DAE5BD48(0, a1, v30, v18);
  v48 = type metadata accessor for _JindoAccessoryViewController();
  v49 = objc_allocWithZone(v48);

  v50 = sub_1DAE5AEDC();
  v51 = *&a1[v112];
  *&a1[v112] = v50;
  v52 = v50;

  v53 = v52;
  [a1 addChildViewController_];
  v54 = [a1 view];
  if (!v54)
  {
LABEL_42:

    __break(1u);
    goto LABEL_43;
  }

  v55 = v54;
  v56 = [v53 view];

  if (!v56)
  {
LABEL_43:

    __break(1u);
    goto LABEL_44;
  }

  [v55 addSubview_];

  v109 = v53;
  [v53 didMoveToParentViewController_];
  v112 = v20;
  sub_1DAE584BC(v20);
  v30 = v30;
  v20 = v18;
  sub_1DAE5BD48(1, a1, v30, v20);

  v57 = objc_allocWithZone(v48);
  v58 = sub_1DAE5AEDC();
  v59 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingUIHostingController] = v58;
  v60 = v58;

  v61 = *&v60[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view];
  v62 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_leadingView] = v61;
  v63 = v61;

  v64 = v60;
  [a1 addChildViewController_];
  v65 = [a1 view];
  if (!v65)
  {
LABEL_44:

    __break(1u);
    goto LABEL_45;
  }

  v66 = v65;
  v18 = [v64 view];

  if (!v18)
  {
LABEL_45:

    __break(1u);
    goto LABEL_46;
  }

  [v66 addSubview_];

  [v64 didMoveToParentViewController_];
  v30 = v30;
  v18 = v20;
  sub_1DAE5BD48(2, a1, v30, v18);

  v67 = objc_allocWithZone(v48);
  v68 = sub_1DAE5AEDC();
  v69 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingUIHostingController] = v68;
  v70 = v68;

  v71 = *&v70[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view];
  v72 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_trailingView] = v71;
  v73 = v71;

  v74 = v70;
  [a1 addChildViewController_];
  v75 = [a1 view];
  if (!v75)
  {
LABEL_46:

    __break(1u);
    goto LABEL_47;
  }

  v76 = v75;
  a3 = [v74 view];

  if (!a3)
  {
LABEL_47:

    __break(1u);
    goto LABEL_48;
  }

  [v76 addSubview_];

  [v74 didMoveToParentViewController_];
  a3 = v30;
  v30 = v18;
  sub_1DAE5BD48(3, a1, a3, v30);

  v77 = objc_allocWithZone(v48);
  v78 = sub_1DAE5AEDC();
  v79 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalUIHostingController] = v78;
  v80 = v78;

  v81 = *&v80[OBJC_IVAR____TtC14WidgetRenderer29_JindoAccessoryViewController__view];
  v82 = *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView];
  *&a1[OBJC_IVAR____TtC14WidgetRenderer35SystemApertureElementViewController_minimalView] = v81;
  v83 = v81;

  v84 = v80;
  [a1 addChildViewController_];
  v85 = [a1 view];
  if (!v85)
  {
LABEL_48:

    __break(1u);
    goto LABEL_49;
  }

  v86 = v85;
  v87 = [v84 view];

  if (!v87)
  {
LABEL_49:

    __break(1u);
    goto LABEL_50;
  }

  [v86 addSubview_];

  [v84 didMoveToParentViewController_];
  v88 = [a1 view];
  if (v88)
  {
    v89 = v88;
    [v88 setNeedsLayout];

    [objc_msgSend(a1 systemApertureElementContext)];

    swift_unknownObjectRelease();
    v26 = v111;
    goto LABEL_34;
  }

LABEL_50:

  __break(1u);
}

uint64_t sub_1DAE5CE20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAE5CE74()
{
  result = qword_1EE0056F0;
  if (!qword_1EE0056F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0056F0);
  }

  return result;
}

double sub_1DAE5CEC8()
{
  v1 = sub_1DAECEDEC();
  v48 = *(v1 - 8);
  v49 = v1;
  v2 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED187C();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED1B8C();
  v9 = *(v8 - 1);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v45 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v46 = v0;
  v19 = *&v0[OBJC_IVAR____TtC14WidgetRenderer19_JindoAccessoryView__model];
  v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  v44 = v20;
  sub_1DAD6495C(v19 + v20, v18, &unk_1ECC09E40, &qword_1DAED68E0);
  v43 = *(v9 + 48);
  if (v43(v18, 1, v8))
  {
    sub_1DAD64398(v18, &unk_1ECC09E40, &qword_1DAED68E0);
    v21 = 0.0;
  }

  else
  {
    (*(v9 + 16))(v12, v18, v8);
    sub_1DAD64398(v18, &unk_1ECC09E40, &qword_1DAED68E0);
    sub_1DAED1B6C();
    (*(v9 + 8))(v12, v8);
    sub_1DAED186C();
    v21 = v22;
    (*(v41 + 8))(v7, v42);
  }

  v24 = v47;
  v23 = v48;
  v25 = v49;
  (*(v48 + 16))(v47, v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v49);
  v26 = v46;
  v27 = sub_1DAECEDCC();
  v28 = sub_1DAED200C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50 = v30;
    *v29 = 136446722;
    v46 = v8;
    v31 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
    v32 = *(v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

    v33 = sub_1DAD6482C(v31, v32, &v50);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2082;
    v34 = sub_1DAED225C();
    v36 = sub_1DAD6482C(v34, v35, &v50);

    *(v29 + 14) = v36;
    *(v29 + 22) = 1026;
    v37 = v45;
    sub_1DAD6495C(v19 + v44, v45, &unk_1ECC09E40, &qword_1DAED68E0);
    v38 = v43(v37, 1, v46) != 1;
    sub_1DAD64398(v37, &unk_1ECC09E40, &qword_1DAED68E0);

    *(v29 + 24) = v38;
    _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] sizeThatFits: %{public}s - hasEntry? %{BOOL,public}d", v29, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v30, -1, -1);
    MEMORY[0x1E127F100](v29, -1, -1);

    (*(v48 + 8))(v47, v49);
  }

  else
  {

    (*(v23 + 8))(v24, v25);
  }

  return v21;
}

uint64_t sub_1DAE5D440(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1DAE57628(a1);
}

uint64_t sub_1DAE5D4A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09ED8, &qword_1DAEDC268);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE0, &qword_1DAEDC270);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v24 - v15;
  sub_1DAED063C();
  v17 = sub_1DAED067C();

  sub_1DAECF10C();
  v18 = sub_1DAED066C();
  KeyPath = swift_getKeyPath();
  v20 = &v16[*(v10 + 44)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = *(v5 + 16);
  v21(v8, a1, v4);
  sub_1DAE5D720(v16, v13);
  v21(a2, v8, v4);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE8, &qword_1DAEDC2A8);
  *&a2[*(v22 + 48)] = v17;
  sub_1DAE5D720(v13, &a2[*(v22 + 64)]);

  sub_1DAE5D790(v16);
  sub_1DAE5D790(v13);

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAE5D6D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1DAED091C();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09ED0, &qword_1DAEDC260);
  return sub_1DAE5D4A0(a1, a2 + *(v5 + 44));
}

uint64_t sub_1DAE5D720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE0, &qword_1DAEDC270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE5D790(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09EE0, &qword_1DAEDC270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAE5D7F8()
{
  result = qword_1EE005810;
  if (!qword_1EE005810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09EF0, &unk_1DAEDC2B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005810);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_xq_Ri_zRi0_zRi__Ri0__r0_ly18ActivityUIServices0A13LaunchRequestVytIsegnr_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAE5D880(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAE5D8C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAE5D918()
{
  v1 = v0;
  v26 = sub_1DAECF8EC();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  swift_getKeyPath();
  v30 = v6;
  sub_1DAE5DE0C();
  sub_1DAECDEFC();

  v7 = OBJC_IVAR____TtC14WidgetRenderer29InProcessActivityInstanceBase__viewModels;
  result = swift_beginAccess();
  v9 = *(v6 + v7);
  if (v9)
  {
    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (v9 < 0)
    {
      v23 = *(v6 + v7);
    }

    result = sub_1DAED247C();
    v10 = result;
    if (result)
    {
LABEL_4:
      if (v10 < 1)
      {
        __break(1u);
        return result;
      }

      v11 = *v1;
      v12 = *(v1 + 8);
      v27 = v9 & 0xC000000000000001;
      v25 = (v2 + 8);
      v13 = *(v1 + 16);

      v14 = 0;
      while (1)
      {
        if (v27)
        {
          v21 = MEMORY[0x1E127E1F0](v14, v9);
          if (!v13)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v21 = *(v9 + 8 * v14 + 32);

          if (!v13)
          {
LABEL_12:

            sub_1DAED202C();
            v22 = sub_1DAED001C();
            sub_1DAECECEC();

            sub_1DAECF8DC();
            swift_getAtKeyPath();
            sub_1DADF7140(v11, v12, 0);
            (*v25)(v5, v26);
            goto LABEL_13;
          }
        }

        *&v29 = v11;
        *(&v29 + 1) = v12;
        sub_1DADCA8EC(v11);
LABEL_13:
        if (v29)
        {
          v28 = v29;
          v15 = swift_allocObject();
          *(v15 + 16) = v28;
          v16 = sub_1DAE5DE98;
        }

        else
        {
          v16 = 0;
          v15 = 0;
        }

        ++v14;
        v17 = swift_allocObject();
        v17[2] = v21;
        v17[3] = v16;
        v17[4] = v15;
        v18 = (v21 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
        v19 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
        v20 = *(v21 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
        *v18 = sub_1DAE5DE64;
        v18[1] = v17;

        sub_1DAD660D8(v19);

        if (v10 == v14)
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DAE5DC2C(_BYTE *a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A190, qword_1DAEDD640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-v10];
  v12 = sub_1DAECE7EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a1) = *a1;
  type metadata accessor for ActivityLaunchRequestBuilder();
  v19 = a1;
  sub_1DAE22248(a3, &v19, a2, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1DAE5DEC0(v11);
  }

  (*(v13 + 32))(v16, v11, v12);
  if (a4)
  {
    a4(v16);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_1DAE5DE0C()
{
  result = qword_1ECC085E0;
  if (!qword_1ECC085E0)
  {
    type metadata accessor for InProcessActivityInstanceBase();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC085E0);
  }

  return result;
}

uint64_t sub_1DAE5DE98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DAE5DEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A190, qword_1DAEDD640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BSUIVibrancyEffectViewAdapter.init(contentView:size:vibrancyLevel:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  return result;
}

uint64_t BSUIVibrancyEffectViewAdapter.contentView.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

double BSUIVibrancyEffectViewAdapter.size.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

id BSUIVibrancyEffectViewAdapter.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(type metadata accessor for _UIComposedViewWithVibrancyFilter());

  v7 = sub_1DAE5E7AC(v6, v2, v3, v4);

  return v7;
}

void BSUIVibrancyEffectViewAdapter.updateUIViewController(_:context:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  type metadata accessor for _UIComposedViewWithVibrancyFilter();
  v5 = swift_dynamicCastClassUnconditional();
  v6 = *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_contentView];
  *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_contentView] = v1;
  swift_retain_n();

  v7 = &v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController];
  v8 = *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController];
  v9 = *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController + 8];
  swift_getObjectType();
  v10 = v8;
  sub_1DAECF9EC();

  v11 = &v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size];
  *v11 = v2;
  *(v11 + 1) = v3;
  v12 = [*v7 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

  v13 = v12;
  v14 = *v11;
  v15 = *(v11 + 1);
  [v12 setBounds_];

  v16 = [v5 view];
  if (!v16)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = *v11;
  v19 = *(v11 + 1);
  [v16 setBounds_];

  v20 = OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_vibrancyLevel;
  *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_vibrancyLevel] = v4;
  v21 = *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__effectView];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  v25 = [v24 colorWithAlphaComponent_];

  v26 = [objc_allocWithZone(MEMORY[0x1E698E810]) initWithEffectType:0 backgroundType:0 color:v25];
  [v23 setConfiguration_];
}

id sub_1DAE5E2A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = objc_allocWithZone(type metadata accessor for _UIComposedViewWithVibrancyFilter());

  v7 = sub_1DAE5E7AC(v6, v2, v3, v4);

  return v7;
}

uint64_t sub_1DAE5E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAE5E90C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1DAE5E3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAE5E90C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1DAE5E428()
{
  sub_1DAE5E90C();
  sub_1DAECFF7C();
  __break(1u);
}

void sub_1DAE5E4AC()
{
  v1 = OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__effectView;
  [v0 setView_];
  v2 = *&v0[v1];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 whiteColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [objc_allocWithZone(MEMORY[0x1E698E810]) initWithEffectType:0 backgroundType:0 color:v6];
  [v4 setConfiguration_];

  v8 = OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController;
  v9 = [*&v0[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController] view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v11 = &v0[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size];
  v12 = *&v0[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size];
  v13 = *&v0[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size + 8];
  [v9 setFrame_];

  v14 = [v0 view];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = *v11;
  v17 = *(v11 + 1);
  [v14 setFrame_];

  v18 = [*&v0[v1] contentView];
  v19 = [*&v0[v8] view];
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v20 = v19;
  [v18 addSubview_];
}

id sub_1DAE5E718()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIComposedViewWithVibrancyFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DAE5E7AC(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_contentView] = a1;
  v6 = &v4[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_size];
  *v6 = a2;
  v6[1] = a3;
  *&v4[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter_vibrancyLevel] = a4;
  v14 = a1;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F28, qword_1DAEDC548));
  swift_retain_n();
  v7 = sub_1DAECFA9C();
  v8 = sub_1DAE5E960();
  v9 = &v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__hostingController];
  *v9 = v7;
  *(v9 + 1) = v8;
  result = [v7 view];
  if (result)
  {
    v11 = result;
    [result setBackgroundColor_];

    v12 = [objc_allocWithZone(MEMORY[0x1E698E818]) init];
    *&v5[OBJC_IVAR____TtC14WidgetRendererP33_378CA5B31CE91C170433E67C5DF1045933_UIComposedViewWithVibrancyFilter__effectView] = v12;
    v13.receiver = v5;
    v13.super_class = type metadata accessor for _UIComposedViewWithVibrancyFilter();
    return objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DAE5E90C()
{
  result = qword_1ECC09F20;
  if (!qword_1ECC09F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09F20);
  }

  return result;
}

unint64_t sub_1DAE5E960()
{
  result = qword_1ECC09F30;
  if (!qword_1ECC09F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09F28, qword_1DAEDC548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09F30);
  }

  return result;
}

char *sub_1DAE5E9D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v75 = &v59 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E50, &unk_1DAEDC1A8);
  v17 = *(v74 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v59 - v19;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F40, qword_1DAEDC5C0);
  v64 = *(v72 - 8);
  v20 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v59 - v21;
  *&v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables] = MEMORY[0x1E69E7CD0];
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logger;
  v23 = sub_1DAECEDEC();
  v59 = *(v23 - 8);
  v24 = *(v59 + 16);
  v63 = a1;
  v60 = v23;
  v24(&v7[v22], a1);
  v25 = &v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier];
  *v25 = a2;
  *(v25 + 1) = a3;
  v61 = a4;
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels] = a5;
  v26 = objc_allocWithZone(type metadata accessor for SecureHostingController());
  v77 = a6;

  v62 = a6;

  *&v7[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController] = sub_1DAECFA9C();
  v27 = type metadata accessor for ActivitySceneContentViewController();
  v78.receiver = v7;
  v78.super_class = v27;
  v28 = objc_msgSendSuper2(&v78, sel_initWithNibName_bundle_, 0, 0);
  v29 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController;
  v30 = *&v28[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
  v31 = v28;
  result = [v30 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_21;
  }

  v33 = result;
  v34 = [objc_opt_self() clearColor];
  [v33 setBackgroundColor_];

  result = [*&v28[v29] view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v35 = result;
  v36 = [result layer];

  [v36 setHitTestsAsOpaque_];
  v37 = *&v28[v29];
  sub_1DADB25F8(1, 0);

  v38 = *&v28[v29];
  v39 = v31;
  [v39 addChildViewController_];
  v76 = v39;
  result = [v39 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = result;
  result = [*&v28[v29] view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v41 = result;

  [v40 addSubview_];

  v42 = *&v28[v29];
  v43 = v76;
  [v42 didMoveToParentViewController_];

  v44 = *&v43[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
  if (v44 >> 62)
  {
    goto LABEL_19;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v46 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables;

  if (v45)
  {
    v47 = 0;
    v66 = &v76[v46];
    v67 = v45;
    v69 = v44 & 0xFFFFFFFFFFFFFF8;
    v70 = v44 & 0xC000000000000001;
    v64 += 8;
    v65 = (v17 + 8);
    v68 = v44;
    v17 = v75;
    do
    {
      if (v70)
      {
        v48 = MEMORY[0x1E127E1F0](v47, v44);
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v47 >= *(v69 + 16))
        {
          __break(1u);
LABEL_19:
          v45 = sub_1DAED247C();
          goto LABEL_7;
        }

        v48 = *(v44 + 8 * v47 + 32);

        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_16;
        }
      }

      v77 = *(v48 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09E60, &unk_1DAED6D20);
      sub_1DAD64B94(&qword_1EE005CE0, &qword_1ECC09E60, &unk_1DAED6D20);
      v50 = v73;
      sub_1DAECEFAC();

      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v51 = sub_1DAED20EC();
      v77 = v51;
      v52 = sub_1DAED20AC();
      (*(*(v52 - 8) + 56))(v17, 1, 1, v52);
      sub_1DAD64B94(&unk_1EE005D60, &unk_1ECC09E50, &unk_1DAEDC1A8);
      sub_1DAD88828();
      v53 = v71;
      v54 = v74;
      sub_1DAECEFBC();
      sub_1DAD64398(v17, &unk_1ECC07D20, &unk_1DAED57D0);

      (*v65)(v50, v54);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1DAD64B94(&qword_1EE005CF0, &qword_1ECC09F40, qword_1DAEDC5C0);
      v55 = v72;
      sub_1DAECF00C();

      v56 = v55;
      v57 = v67;
      (*v64)(v53, v56);
      swift_beginAccess();
      sub_1DAECEE0C();
      swift_endAccess();

      v44 = v68;

      ++v47;
    }

    while (v49 != v57);
  }

  v58 = v76;

  (*(v59 + 8))(v63, v60);
  return v58;
}

void sub_1DAE5F204()
{
  v0 = sub_1DAED09DC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED0A3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = v9;
    v32 = v6;
    v15 = *&Strong[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
    v35 = v1;
    v36 = v0;
    v33 = v4;
    v34 = v5;
    v37 = Strong;
    if (v15 >> 62)
    {
      goto LABEL_16;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      while (1)
      {
        v17 = 0;
        while ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1E127E1F0](v17, v15);
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
            v23 = sub_1DAED20EC();
            v24 = swift_allocObject();
            v25 = v37;
            *(v24 + 16) = v37;
            aBlock[4] = sub_1DAE6151C;
            aBlock[5] = v24;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1DAD751C0;
            aBlock[3] = &block_descriptor_15;
            v26 = _Block_copy(aBlock);
            v27 = v25;

            v28 = v31;
            _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
            aBlock[0] = MEMORY[0x1E69E7CC0];
            sub_1DAE614B0(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
            sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
            v29 = v33;
            v30 = v36;
            sub_1DAED23CC();
            MEMORY[0x1E127DD70](0, v28, v29, v26);
            _Block_release(v26);

            (*(v35 + 8))(v29, v30);
            (*(v32 + 8))(v28, v34);
            return;
          }

LABEL_8:
          v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
          swift_beginAccess();
          sub_1DAE61440(v18 + v20, v13);

          v21 = sub_1DAECDCEC();
          v22 = (*(*(v21 - 8) + 48))(v13, 1, v21);
          sub_1DAD64398(v13, &qword_1ECC07CE8, &qword_1DAED6F60);
          if (v22 != 1)
          {
            goto LABEL_14;
          }

          ++v17;
          if (v19 == v16)
          {
            goto LABEL_17;
          }
        }

        if (v17 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v16 = sub_1DAED247C();
        if (!v16)
        {
          goto LABEL_17;
        }
      }

      v18 = *(v15 + 8 * v17 + 32);

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }
}

id sub_1DAE5F754()
{
  v1 = v0;
  swift_unknownObjectWeakAssign();
  v2 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController;
  result = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController) view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    [*(v1 + v2) removeFromParentViewController];
    v5 = *(v1 + v2);
    v26 = sub_1DAED087C();
    sub_1DAECFABC();

    v6 = OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__cancellables;
    swift_beginAccess();
    v24 = v6;
    v7 = *(v1 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {
      if (v7 < 0)
      {
        v8 = *(v1 + v6);
      }

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DAE614B0(&qword_1EE005C50, MEMORY[0x1E695BF10]);
      result = sub_1DAED1F9C();
      v10 = v26;
      v9 = v27;
      v11 = v28;
      v12 = v29;
      v13 = v30;
    }

    else
    {
      v14 = -1 << *(v7 + 32);
      v9 = v7 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v7 + 56);
      result = swift_bridgeObjectRetain_n();
      v12 = 0;
      v10 = v7;
    }

    v17 = (v11 + 64) >> 6;
    if (v10 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v18 = v12;
      v19 = v13;
      v20 = v12;
      if (!v13)
      {
        break;
      }

LABEL_15:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (!v22)
      {
LABEL_21:
        sub_1DAD70B20();

        v23 = *(v1 + v24);
        *(v1 + v24) = MEMORY[0x1E69E7CD0];
      }

      while (1)
      {
        sub_1DAECEE2C();

        v12 = v20;
        v13 = v21;
        if ((v10 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (sub_1DAED24BC())
        {
          sub_1DAECEE3C();
          swift_dynamicCast();
          v20 = v12;
          v21 = v13;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_21;
      }

      v19 = *(v9 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAE5FA38()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ActivitySceneContentViewController();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [*&v0[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController] view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1DAE5FB68(void *a1)
{
  v1 = a1;
  v2 = sub_1DAECEDCC();
  v3 = sub_1DAED203C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DAD6482C(*&v1[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v1[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], &v10);
    _os_log_impl(&dword_1DAD61000, v2, v3, "[%{public}s] AOD timeline invalidated by host content change.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E127F100](v5, -1, -1);
    MEMORY[0x1E127F100](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong _backlightSceneEnvironment];

    if (v8)
    {
      v9 = sub_1DAED1CBC();
      [v8 invalidateAllTimelinesForReason_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1DAE5FD10(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  v12 = v1;
  v13 = sub_1DAECEDCC();
  v14 = sub_1DAED200C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v56[0] = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1DAD6482C(*&v12[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v12[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v56);
    _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] Trait collection did change.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1E127F100](v16, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);
  }

  v17 = &selRef__registerSceneActionsHandlerArray_forKey_;
  if (!a1 || [a1 _backlightLuminance] != 1)
  {
    v18 = [v12 traitCollection];
    v19 = [v18 _backlightLuminance];

    if (v19 == 1)
    {
      v20 = v12;
      v21 = sub_1DAECEDCC();
      v22 = sub_1DAED200C();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v56[0] = v24;
        *v23 = 136446210;
        *(v23 + 4) = sub_1DAD6482C(*&v20[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v20[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v56);
        _os_log_impl(&dword_1DAD61000, v21, v22, "[%{public}s] Trait collection: entering AoD.", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E127F100](v24, -1, -1);
        MEMORY[0x1E127F100](v23, -1, -1);
      }

      v25 = *&v20[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
      v55 = MEMORY[0x1E69E7CC0];
      if (v25 >> 62)
      {
LABEL_32:
        v26 = sub_1DAED247C();
        if (v26)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
LABEL_10:
          a1 = 0;
          v17 = (v25 & 0xC000000000000001);
          v27 = v25 & 0xFFFFFFFFFFFFFF8;
          v53 = v11;
          while (1)
          {
            if (v17)
            {
              v34 = MEMORY[0x1E127E1F0](a1, v25);
              v12 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
LABEL_20:
                __break(1u);
                goto LABEL_21;
              }
            }

            else
            {
              if (a1 >= *(v27 + 16))
              {
                __break(1u);
                goto LABEL_32;
              }

              v34 = *(v25 + 8 * a1 + 32);

              v12 = (a1 + 1);
              if (__OFADD__(a1, 1))
              {
                goto LABEL_20;
              }
            }

            v35 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
            swift_beginAccess();
            sub_1DAE61440(v34 + v35, v11);
            v36 = sub_1DAECDCEC();
            if ((*(*(v36 - 8) + 48))(v11, 1, v36) == 1)
            {
              sub_1DAD64398(v11, &qword_1ECC07CE8, &qword_1DAED6F60);
              sub_1DAED25CC();
              v28 = v8;
              v29 = v27;
              v30 = v17;
              v31 = v25;
              v32 = v26;
              v33 = *(v55 + 16);
              sub_1DAED25FC();
              v26 = v32;
              v25 = v31;
              v17 = v30;
              v27 = v29;
              v8 = v28;
              v11 = v53;
              sub_1DAED260C();
              sub_1DAED25DC();
            }

            else
            {

              sub_1DAD64398(v11, &qword_1ECC07CE8, &qword_1DAED6F60);
            }

            ++a1;
            if (v12 == v26)
            {
              v43 = v55;
              if (v55 < 0)
              {
                goto LABEL_46;
              }

              goto LABEL_34;
            }
          }
        }
      }

      v43 = MEMORY[0x1E69E7CC0];
      if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
      {
        goto LABEL_46;
      }

LABEL_34:
      if ((v43 & 0x4000000000000000) != 0)
      {
        goto LABEL_46;
      }

      v45 = *(v43 + 16);
      if (!v45)
      {
        goto LABEL_47;
      }

LABEL_36:
      v46 = 0;
      v53 = v43 & 0xC000000000000001;
      while (1)
      {
        if (v53)
        {
          v47 = MEMORY[0x1E127E1F0](v46, v43);
          v48 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v46 >= *(v43 + 16))
          {
            goto LABEL_45;
          }

          v47 = *(v43 + 8 * v46 + 32);

          v48 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            v45 = sub_1DAED247C();
            if (!v45)
            {
LABEL_47:

              return;
            }

            goto LABEL_36;
          }
        }

        sub_1DAECDCDC();
        v49 = sub_1DAECDCEC();
        (*(*(v49 - 8) + 56))(v8, 0, 1, v49);
        v50 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
        swift_beginAccess();
        v51 = v54;
        sub_1DAE61440(v47 + v50, v54);
        swift_beginAccess();
        sub_1DAE101FC(v8, v47 + v50);
        swift_endAccess();
        sub_1DAE64750(v51);

        sub_1DAD64398(v51, &qword_1ECC07CE8, &qword_1DAED6F60);
        sub_1DAD64398(v8, &qword_1ECC07CE8, &qword_1DAED6F60);
        ++v46;
        if (v48 == v45)
        {
          goto LABEL_47;
        }
      }
    }

LABEL_21:
    if (!a1)
    {
      return;
    }
  }

  if ([a1 v17[119]] == 1)
  {
    v37 = [v12 traitCollection];
    v38 = [v37 v17[119]];

    if (v38 != 1)
    {
      v39 = v12;
      v54 = sub_1DAECEDCC();
      v40 = sub_1DAED200C();

      if (os_log_type_enabled(v54, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56[0] = v42;
        *v41 = 136446210;
        *(v41 + 4) = sub_1DAD6482C(*&v39[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v39[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v56);
        _os_log_impl(&dword_1DAD61000, v54, v40, "[%{public}s] Trait collection: exiting AoD.", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        MEMORY[0x1E127F100](v42, -1, -1);
        MEMORY[0x1E127F100](v41, -1, -1);
      }

      else
      {
        v44 = v54;
      }
    }
  }
}

uint64_t sub_1DAE604D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECDA2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v9 = *&v2[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
  v10 = sub_1DAECD9DC();
  v11 = [v9 _timelinesForDateInterval_];

  v12 = sub_1DAD674D4(0, &qword_1ECC09EA0, 0x1E698E508);
  v13 = sub_1DAED1E7C();

  (*(v5 + 16))(v8, a1, v4);
  v14 = v2;

  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED200C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v17 = 136446722;
    *(v17 + 4) = sub_1DAD6482C(*&v14[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v14[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], &v28);
    *(v17 + 12) = 2082;
    sub_1DAE614B0(&qword_1ECC08D48, MEMORY[0x1E6968130]);
    v18 = sub_1DAED287C();
    v20 = v19;
    (*(v5 + 8))(v8, v4);
    v21 = sub_1DAD6482C(v18, v20, &v28);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2082;
    v22 = MEMORY[0x1E127DB00](v13, v12);
    v24 = sub_1DAD6482C(v22, v23, &v28);

    *(v17 + 24) = v24;
    _os_log_impl(&dword_1DAD61000, v15, v16, "[%{public}s] AoD timeline request with dateInterval: %{public}s - timelines: %{public}s", v17, 0x20u);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v25, -1, -1);
    MEMORY[0x1E127F100](v17, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return v13;
}

uint64_t sub_1DAE60938(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v7 = sub_1DAECDA2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v55 - v20;
  BSDispatchQueueAssertMain();
  if (a1)
  {
    v22 = [a1 presentationInterval];
    sub_1DAECD9EC();

    sub_1DAECDA0C();
    (*(v8 + 8))(v11, v7);
    v23 = sub_1DAECDCEC();
    (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
  }

  else
  {
    v24 = sub_1DAECDCEC();
    (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  }

  sub_1DAE61440(v21, v18);
  v25 = v4;
  v61 = a1;
  v26 = a1;
  v27 = sub_1DAECEDCC();
  v28 = sub_1DAED200C();

  if (os_log_type_enabled(v27, v28))
  {
    v57 = v26;
    v60 = a2;
    v29 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v63[0] = v58;
    *v29 = 136446722;
    *(v29 + 4) = sub_1DAD6482C(*&v25[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier], *&v25[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__logIdentifier + 8], v63);
    *(v29 + 12) = 2082;
    sub_1DAE61440(v18, v15);
    v30 = sub_1DAECDCEC();
    v31 = *(v30 - 8);
    v32 = (*(v31 + 48))(v15, 1, v30);
    v59 = v28;
    if (v32 == 1)
    {
      sub_1DAD64398(v15, &qword_1ECC07CE8, &qword_1DAED6F60);
      v33 = 0xE300000000000000;
      v34 = 7104878;
    }

    else
    {
      v56 = v25;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v36 = qword_1EE00A708;
      v37 = sub_1DAECDC5C();
      v38 = [v36 stringFromDate_];

      v34 = sub_1DAED1CEC();
      v33 = v39;

      (*(v31 + 8))(v15, v30);
      v25 = v56;
    }

    sub_1DAD64398(v18, &qword_1ECC07CE8, &qword_1DAED6F60);
    v40 = sub_1DAD6482C(v34, v33, v63);

    *(v29 + 14) = v40;
    *(v29 + 22) = 2082;
    v35 = v62;
    a2 = v60;
    v41 = 7104878;
    if (v61)
    {
      v42 = [v57 description];
      v41 = sub_1DAED1CEC();
      v44 = v43;
    }

    else
    {
      v44 = 0xE300000000000000;
    }

    v45 = sub_1DAD6482C(v41, v44, v63);

    *(v29 + 24) = v45;
    _os_log_impl(&dword_1DAD61000, v27, v59, "[%{public}s] AoD update to override date: %{public}s with specifier: %{public}s", v29, 0x20u);
    v46 = v58;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v46, -1, -1);
    MEMORY[0x1E127F100](v29, -1, -1);
  }

  else
  {

    sub_1DAD64398(v18, &qword_1ECC07CE8, &qword_1DAED6F60);
    v35 = v62;
  }

  v47 = *&v25[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__hostingController];
  type metadata accessor for SecureHostingController();
  sub_1DAE614B0(qword_1EE00AFA0, type metadata accessor for SecureHostingController);
  v48 = v47;
  if (sub_1DAECF9AC())
  {
    objc_opt_self();
    v49 = swift_dynamicCastObjCClass();
    if (!v49)
    {

      v50 = swift_unknownObjectRelease();
      goto LABEL_20;
    }

    [v49 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
  }

LABEL_20:
  v51 = *&v25[OBJC_IVAR____TtC14WidgetRenderer34ActivitySceneContentViewController__viewModels];
  MEMORY[0x1EEE9AC00](v50);
  *(&v55 - 2) = v21;
  sub_1DADEA380(sub_1DAE614F8, (&v55 - 4), v52);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v53 = swift_allocObject();
  *(v53 + 16) = a2;
  *(v53 + 24) = v35;

  sub_1DAED22FC();

  return sub_1DAD64398(v21, &qword_1ECC07CE8, &qword_1DAED6F60);
}

uint64_t sub_1DAE61000(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = *a1;
  sub_1DAE61440(a2, &v14[-v9]);
  v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAE61440(v11 + v12, v7);
  swift_beginAccess();
  sub_1DAE101FC(v10, v11 + v12);
  swift_endAccess();
  sub_1DAE64750(v7);
  sub_1DAD64398(v7, &qword_1ECC07CE8, &qword_1DAED6F60);
  return sub_1DAD64398(v10, &qword_1ECC07CE8, &qword_1DAED6F60);
}

id sub_1DAE61220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneContentViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivitySceneContentViewController()
{
  result = qword_1EE0060C0;
  if (!qword_1EE0060C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE6136C()
{
  result = sub_1DAECEDEC();
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

uint64_t sub_1DAE61440(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE614B0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1DAE6169C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListItemSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ListItemSceneDelegate()
{
  result = qword_1EE006BA8;
  if (!qword_1EE006BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE61780(void *a1)
{
  v34 = a1;
  v2 = sub_1DAED17AC();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DAED182C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_1EE011718);
  v15 = v10[2];
  v15(v13, v14, v9);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v17 = v10[5];
  v17(v1 + v16, v13, v9);
  swift_endAccess();
  if (qword_1EE005DF0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1EE0116B8);
  v15(v13, v18, v9);
  v19 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v17(v1 + v19, v13, v9);
  swift_endAccess();
  if (qword_1EE005E08 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_1EE0116E8);
  v15(v13, v20, v9);
  v21 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v17(v1 + v21, v13, v9);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) = 1;
  v22 = v34;
  v23 = v1;
  sub_1DAE9150C(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DAED64D0;
  v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
  v37 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v38 = v25;

  MEMORY[0x1E127DA50](0x6574497473696C2DLL, 0xE90000000000006DLL);
  v26 = v37;
  v27 = v38;
  v28 = v33;
  (*(v5 + 104))(v8, *MEMORY[0x1E6985918], v33);
  v29 = v32;
  sub_1DAED178C();
  v30 = sub_1DAE770FC(v26, v27, v8, v22, v29);

  (*(v35 + 8))(v29, v36);
  (*(v5 + 8))(v8, v28);
  *(v24 + 32) = v30;
  v31 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  *(v23 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v24;

  sub_1DAE8B590(0x7463656E6E6F63, 0xE700000000000000);
}

uint64_t sub_1DAE61C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C8, &qword_1DAEDB020);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1DAD6495C(a3, v27 - v11, &qword_1ECC099C8, &qword_1DAEDB020);
  v13 = sub_1DAED1F2C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1DAD64398(v12, &qword_1ECC099C8, &qword_1DAEDB020);
  }

  else
  {
    sub_1DAED1F1C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DAED1ECC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1DAED1D7C() + 32;
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

      sub_1DAD64398(a3, &qword_1ECC099C8, &qword_1DAEDB020);

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

  sub_1DAD64398(a3, &qword_1ECC099C8, &qword_1DAEDB020);
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

unint64_t sub_1DAE61F60(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0xD000000000000017;
    if (a1 == 3)
    {
      v5 = 0xD00000000000001CLL;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0x6C616974696E69;
    if (a1)
    {
      v6 = 0x756F726765726F66;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7269766E4577656ELL;
    v2 = 0x41676E6974697865;
    v3 = 0xD000000000000031;
    if (a1 != 9)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    if (a1 != 6)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1DAE620F8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00]();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = (*(v2 + 88))(v5, a1);
  if (v6 == *MEMORY[0x1E697DBB8])
  {
    return 0x746867696CLL;
  }

  if (v6 == *MEMORY[0x1E697DBA8])
  {
    return 1802658148;
  }

  (*(v2 + 8))(v5, a1);
  return 0x6E776F6E6B6E753CLL;
}

uint64_t sub_1DAE62248()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE622BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

uint64_t sub_1DAE62330@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v3, v25, &qword_1ECC090F8, &unk_1DAED8720);
  v4 = v26;
  if (v26)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v25, v26);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](v5);
    v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v9);
    sub_1DAD64398(v25, &qword_1ECC090F8, &unk_1DAED8720);
    v10 = *v9;
    v11 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
    swift_beginAccess();
    sub_1DAD6495C(v10 + v11, v23, &qword_1ECC099C0, &qword_1DAEDCB90);
    v12 = v24;
    if (v24)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v23, v24);
      v22[1] = v22;
      v14 = *(v12 - 8);
      v15 = *(v14 + 64);
      MEMORY[0x1EEE9AC00](v13);
      v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17);
      sub_1DAD64398(v23, &qword_1ECC099C0, &qword_1DAEDCB90);
      v18 = *(*v17 + 16);
      v19 = *(v14 + 8);

      v19(v17, v12);
      (*(v6 + 8))(v9, v4);
      sub_1DAED0CDC();
    }

    sub_1DAD64398(v23, &qword_1ECC099C0, &qword_1DAEDCB90);
    (*(v6 + 8))(v9, v4);
  }

  else
  {
    sub_1DAD64398(v25, &qword_1ECC090F8, &unk_1DAED8720);
  }

  v21 = sub_1DAED1BEC();
  return (*(*(v21 - 8) + 56))(a1, 1, 1, v21);
}

uint64_t sub_1DAE6265C(uint64_t a1)
{
  v53 = a1;
  v2 = sub_1DAECF0AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v49 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v48 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  BSDispatchQueueAssertMain();
  v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
  swift_beginAccess();
  v22 = *(v17 + 56);
  sub_1DAD6495C(v53, v20, &qword_1ECC08370, &unk_1DAED6580);
  v52 = v21;
  v23 = v1 + v21;
  v24 = v1;
  v25 = v3;
  sub_1DAD6495C(v23, &v20[v22], &qword_1ECC08370, &unk_1DAED6580);
  v26 = *(v3 + 48);
  if (v26(v20, 1, v2) == 1)
  {
    if (v26(&v20[v22], 1, v2) == 1)
    {
      return sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v20, v15, &qword_1ECC08370, &unk_1DAED6580);
  if (v26(&v20[v22], 1, v2) == 1)
  {
    (*(v3 + 8))(v15, v2);
LABEL_6:
    v53 = v3;
    sub_1DAD64398(v20, &qword_1ECC089C8, &qword_1DAED7468);
    v27 = v52;
LABEL_7:

    v28 = sub_1DAECEDCC();
    v29 = sub_1DAED203C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v54 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_1DAD6482C(*(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v54);
      *(v30 + 12) = 2082;
      if (v26((v24 + v27), 1, v2))
      {
        v32 = 0xE300000000000000;
        v33 = 7104878;
      }

      else
      {
        v50 = v31;
        v38 = v53;
        v39 = *(v53 + 16);
        v40 = v48;
        v39(v48, v24 + v27, v2);
        v41 = v49;
        v39(v49, v40, v2);
        v42 = (*(v38 + 88))(v41, v2);
        if (v42 == *MEMORY[0x1E697DBB8])
        {
          (*(v38 + 8))(v40, v2);
          v32 = 0xE500000000000000;
          v33 = 0x746867696CLL;
        }

        else
        {
          v43 = v42;
          v44 = *MEMORY[0x1E697DBA8];
          v45 = *(v38 + 8);
          v45(v40, v2);
          if (v43 == v44)
          {
            v32 = 0xE400000000000000;
            v33 = 1802658148;
          }

          else
          {
            v45(v49, v2);
            v32 = 0xE90000000000003ELL;
            v33 = 0x6E776F6E6B6E753CLL;
          }
        }

        v27 = v52;
        v31 = v50;
      }

      v46 = sub_1DAD6482C(v33, v32, &v54);

      *(v30 + 14) = v46;
      _os_log_impl(&dword_1DAD61000, v28, v29, "[%{public}s] Color scheme changed: (%{public}s)", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v31, -1, -1);
      MEMORY[0x1E127F100](v30, -1, -1);
    }

    v47 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher);
    v20 = v51;
    sub_1DAD6495C(v24 + v27, v51, &qword_1ECC08370, &unk_1DAED6580);

    sub_1DAECEE6C();

    return sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
  }

  v34 = v50;
  (*(v25 + 32))(v50, &v20[v22], v2);
  sub_1DAE6D890(&qword_1EE00ABA8, MEMORY[0x1E697DBD0]);
  v35 = sub_1DAED1CAC();
  v53 = v25;
  v36 = *(v25 + 8);
  v36(v34, v2);
  v36(v15, v2);
  result = sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
  v27 = v52;
  if ((v35 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1DAE62CEC(uint64_t a1, uint64_t *a2, const char *a3)
{
  v38 = a3;
  v5 = v3;
  v7 = sub_1DAECF0AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v11 = *(*(v37 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v37);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC089C8, &qword_1DAED7468);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - v19;
  BSDispatchQueueAssertMain();
  v21 = *a2;
  swift_beginAccess();
  v22 = *(v17 + 56);
  sub_1DAD6495C(a1, v20, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD6495C(v5 + v21, &v20[v22], &qword_1ECC08370, &unk_1DAED6580);
  v23 = *(v8 + 48);
  if (v23(v20, 1, v7) == 1)
  {
    if (v23(&v20[v22], 1, v7) == 1)
    {
      sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v20, v15, &qword_1ECC08370, &unk_1DAED6580);
    if (v23(&v20[v22], 1, v7) != 1)
    {
      v31 = &v20[v22];
      v32 = v35;
      (*(v8 + 32))(v35, v31, v7);
      sub_1DAE6D890(&qword_1EE00ABA8, MEMORY[0x1E697DBD0]);
      v33 = sub_1DAED1CAC();
      v34 = *(v8 + 8);
      v34(v32, v7);
      v34(v15, v7);
      sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
      if (v33)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v8 + 8))(v15, v7);
  }

  sub_1DAD64398(v20, &qword_1ECC089C8, &qword_1DAED7468);
LABEL_7:

  v24 = sub_1DAECEDCC();
  v25 = sub_1DAED203C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v39 = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_1DAD6482C(*(v5 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v5 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v39);
    *(v26 + 12) = 2082;
    sub_1DAD6495C(v5 + v21, v36, &qword_1ECC08370, &unk_1DAED6580);
    v28 = sub_1DAED1D4C();
    v30 = sub_1DAD6482C(v28, v29, &v39);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_1DAD61000, v24, v25, v38, v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v27, -1, -1);
    MEMORY[0x1E127F100](v26, -1, -1);
  }

  sub_1DAE69370();
  sub_1DAE69B6C(6);
}

void sub_1DAE631D8(char a1, uint64_t *a2, const char *a3, int a4)
{
  v8 = a1 & 1;
  BSDispatchQueueAssertMain();
  v9 = *a2;
  if (*(v4 + *a2) != v8)
  {

    v10 = v4;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1DAD6482C(*(v10 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v10 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v15);
      *(v13 + 12) = 1026;
      *(v13 + 14) = *(v10 + v9);

      _os_log_impl(&dword_1DAD61000, v11, v12, a3, v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    else
    {
    }

    sub_1DAE69B6C(a4);
  }
}

uint64_t sub_1DAE63360(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1DAECE21C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  result = BSDispatchQueueAssertMain();
  v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay;
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) != v2)
  {

    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED203C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v15 = 136446466;
      *(v15 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v22);
      *(v15 + 12) = 1026;
      *(v15 + 14) = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);

      _os_log_impl(&dword_1DAD61000, v13, v14, "[%{public}s] isContinuityDisplay changed %{BOOL,public}d)", v15, 0x12u);
      v16 = v21;
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);
    }

    else
    {
    }

    if (*(v1 + v12))
    {
      v17 = MEMORY[0x1E6994048];
    }

    else
    {
      v17 = MEMORY[0x1E6994040];
    }

    (*(v4 + 104))(v10, *v17, v3);
    v18 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
    swift_beginAccess();
    (*(v4 + 16))(v8, v1 + v18, v3);
    swift_beginAccess();
    (*(v4 + 24))(v1 + v18, v10, v3);
    swift_endAccess();
    sub_1DAE6364C();
    v19 = *(v4 + 8);
    v19(v8, v3);
    return (v19)(v10, v3);
  }

  return result;
}

void sub_1DAE6364C()
{
  v1 = v0;
  v2 = sub_1DAECE21C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  swift_beginAccess();
  v8 = *(v3 + 16);
  v8(v6, v0 + v7, v2);
  sub_1DAE6D890(&qword_1EE00BCD8, MEMORY[0x1E6994050]);
  v9 = sub_1DAED1CAC();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v17);
      *(v12 + 12) = 2082;
      v8(v6, v1 + v7, v2);
      v14 = sub_1DAED1D4C();
      v16 = sub_1DAD6482C(v14, v15, &v17);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] keybagLockPolicy changed %{public}s)", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    sub_1DAE69B6C(4);
  }
}

void sub_1DAE638F4(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) != v3)
  {

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED203C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v9);
      *(v7 + 12) = 1026;
      *(v7 + 14) = *(v2 + v4);

      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] isForeground changed (%{BOOL,public}d)", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    else
    {
    }

    if (*(v2 + v4) == 1)
    {

      sub_1DAE69B6C(1);
    }
  }
}

void sub_1DAE63A78(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAED153C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECF8EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = sub_1DAED157C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v44 - v20;
  BSDispatchQueueAssertMain();
  v51 = a1;
  v52 = v8;
  v22 = *(v8 + 16);
  v22(v13, a1, v7);
  sub_1DAED156C();
  v23 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  v47 = v23;
  v53 = v7;
  v22(v13, v2 + v23, v7);
  sub_1DAED156C();
  sub_1DAE6D890(&qword_1EE00AB28, MEMORY[0x1E6985700]);
  LOBYTE(v7) = sub_1DAED1CAC();
  v24 = *(v15 + 8);
  v24(v19, v14);
  v24(v21, v14);
  if ((v7 & 1) == 0)
  {
    v22(v54, v51, v53);

    v25 = sub_1DAECEDCC();
    v26 = sub_1DAED203C();

    LODWORD(v51) = v26;
    v27 = os_log_type_enabled(v25, v26);
    v28 = v2;
    if (v27)
    {
      v29 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v46;
      *v29 = 136446466;
      v30 = sub_1DAD6482C(*(v28 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v28 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v56);
      v45 = v29;
      *(v29 + 4) = v30;
      *(v29 + 12) = 2082;
      v31 = v53;
      v22(v13, v54, v53);
      sub_1DAED156C();
      v22(v13, v28 + v47, v31);
      sub_1DAED14EC();
      v32 = v48;
      sub_1DAED14FC();
      v44 = v25;
      v33 = sub_1DAED14DC();
      v47 = v28;
      v34 = v33;

      (*(v49 + 8))(v32, v50);
      v35 = *(v52 + 8);
      v35(v13, v31);
      v24(v21, v14);
      v55 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08768, &qword_1DAEDCB70);
      sub_1DAD64B94(&qword_1EE00BE10, &qword_1ECC08768, &qword_1DAEDCB70);
      v36 = sub_1DAED1C8C();
      v38 = v37;

      v35(v54, v31);
      v39 = sub_1DAD6482C(v36, v38, &v56);

      v41 = v44;
      v40 = v45;
      *(v45 + 14) = v39;
      v42 = v40;
      _os_log_impl(&dword_1DAD61000, v41, v51, "[%{public}s] raw environment did change: %{public}s", v40, 0x16u);
      v43 = v46;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v43, -1, -1);
      MEMORY[0x1E127F100](v42, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v54, v53);
    }

    sub_1DAE69370();
    sub_1DAE69B6C(6);
  }
}

void sub_1DAE64024(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF8EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v9 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) != v3)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v16);
      *(v12 + 12) = 1026;
      *(v12 + 14) = *(v2 + v9);

      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] prefersUnredactedContentInLowLuminanceEnvironment changed %{BOOL,public}d)", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    else
    {
    }

    sub_1DAE684B0(v8);
    v14 = sub_1DAECF4BC();
    (*(v5 + 8))(v8, v4);
    if (v14)
    {
      sub_1DAE69B6C(9);
    }
  }
}

void sub_1DAE64238(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_1DAECF8EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v9 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance;
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) != v3)
  {

    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v17);
      *(v12 + 12) = 1026;
      *(v12 + 14) = *(v2 + v9);

      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] supports low luminance changed (%{BOOL,public}d)", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    else
    {
    }

    sub_1DAE684B0(v8);
    v14 = sub_1DAECF4BC();
    (*(v5 + 8))(v8, v4);
    if (v14)
    {
      if (*(v2 + v9))
      {
        v15 = 7;
      }

      else
      {
        v15 = 8;
      }

      sub_1DAE69B6C(v15);
    }
  }
}

BOOL sub_1DAE64458()
{
  v1 = sub_1DAED17AC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v20 - v11;
  v13 = sub_1DAED1BEC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAE62330(v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1DAD64398(v12, &qword_1ECC08D70, &unk_1DAED8710);
    return 0;
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    sub_1DAED1BAC();
    (*(v2 + 16))(v6, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v1);
    sub_1DAE6D890(&qword_1ECC08FF0, MEMORY[0x1E69858D8]);
    sub_1DAED1E4C();
    sub_1DAED1E4C();
    v19 = *(v2 + 8);
    v19(v6, v1);
    v19(v8, v1);
    (*(v14 + 8))(v17, v13);
    return v20[1] == v20[0];
  }
}

void sub_1DAE64750(uint64_t a1)
{
  v3 = sub_1DAECDCEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v63 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v63 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v67 = &v63 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC087B0, qword_1DAEDCBF0);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v63 - v22;
  BSDispatchQueueAssertMain();
  v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  v25 = *(v20 + 56);
  v72 = a1;
  sub_1DAD6495C(a1, v23, &qword_1ECC07CE8, &qword_1DAED6F60);
  v69 = v1;
  sub_1DAD6495C(v1 + v24, &v23[v25], &qword_1ECC07CE8, &qword_1DAED6F60);
  v70 = v4;
  v26 = *(v4 + 48);
  if (v26(v23, 1, v3) == 1)
  {
    v27 = v3;
    if (v26(&v23[v25], 1, v3) == 1)
    {
      sub_1DAD64398(v23, &qword_1ECC07CE8, &qword_1DAED6F60);
      return;
    }
  }

  else
  {
    sub_1DAD6495C(v23, v18, &qword_1ECC07CE8, &qword_1DAED6F60);
    if (v26(&v23[v25], 1, v3) != 1)
    {
      v71 = v26;
      v38 = v70;
      v39 = v65;
      (*(v70 + 32))(v65, &v23[v25], v3);
      sub_1DAE6D890(&qword_1EE00BCF8, MEMORY[0x1E6969530]);
      v40 = sub_1DAED1CAC();
      v41 = *(v38 + 8);
      v41(v39, v3);
      v41(v18, v3);
      v29 = v72;
      sub_1DAD64398(v23, &qword_1ECC07CE8, &qword_1DAED6F60);
      v28 = v24;
      if (v40)
      {
        return;
      }

      goto LABEL_7;
    }

    v27 = v3;
    (*(v70 + 8))(v18, v3);
  }

  v71 = v26;
  sub_1DAD64398(v23, &qword_1ECC087B0, qword_1DAEDCBF0);
  v28 = v24;
  v29 = v72;
  v3 = v27;
LABEL_7:
  v30 = v69;

  v31 = sub_1DAECEDCC();
  v32 = sub_1DAED203C();
  if (os_log_type_enabled(v31, v32))
  {
    LODWORD(v65) = v32;
    v33 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v73 = v63;
    *v33 = 136446466;
    *(v33 + 4) = sub_1DAD6482C(*(v30 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v30 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v73);
    *(v33 + 12) = 2082;
    v34 = v67;
    sub_1DAD6495C(v30 + v28, v67, &qword_1ECC07CE8, &qword_1DAED6F60);
    v35 = v71;
    if (v71(v34, 1, v3) == 1)
    {

      sub_1DAD64398(v34, &qword_1ECC07CE8, &qword_1DAED6F60);
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    else
    {
      sub_1DAD64398(v34, &qword_1ECC07CE8, &qword_1DAED6F60);
      v67 = v28;
      v42 = v30 + v28;
      v43 = v66;
      sub_1DAD6495C(v42, v66, &qword_1ECC07CE8, &qword_1DAED6F60);
      v44 = v35(v43, 1, v3);

      if (v44 == 1)
      {
        __break(1u);
        return;
      }

      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v45 = qword_1EE00A708;
      v46 = v66;
      v47 = sub_1DAECDC5C();
      v48 = [v45 stringFromDate_];

      v49 = sub_1DAED1CEC();
      v36 = v50;

      (*(v70 + 8))(v46, v3);
      v37 = v49;
      v29 = v72;
      v28 = v67;
    }

    v51 = sub_1DAD6482C(v37, v36, &v73);

    *(v33 + 14) = v51;
    _os_log_impl(&dword_1DAD61000, v31, v65, "[%{public}s] AoD override date changed (%{public}s)", v33, 0x16u);
    v52 = v63;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v52, -1, -1);
    MEMORY[0x1E127F100](v33, -1, -1);
  }

  else
  {
  }

  sub_1DAE69370();
  v53 = v71;
  if (v71(v29, 1, v3) != 1 || (v54 = v68, sub_1DAD6495C(v30 + v28, v68, &qword_1ECC07CE8, &qword_1DAED6F60), v55 = v28, v56 = v53(v54, 1, v3), sub_1DAD64398(v54, &qword_1ECC07CE8, &qword_1DAED6F60), v57 = v56 == 1, v28 = v55, v57))
  {
    if (v53(v29, 1, v3) == 1 || (v58 = v30 + v28, v59 = v64, sub_1DAD6495C(v58, v64, &qword_1ECC07CE8, &qword_1DAED6F60), v60 = v53(v59, 1, v3), sub_1DAD64398(v59, &qword_1ECC07CE8, &qword_1DAED6F60), v60 != 1))
    {
      v61 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAECEEEC();

      return;
    }

    v62 = 8;
  }

  else
  {
    v62 = 7;
  }

  sub_1DAE69B6C(v62);
}

uint64_t sub_1DAE64FB0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  return sub_1DAD6495C(v1 + v3, a1, &unk_1ECC09EC0, &qword_1DAED7970);
}

void sub_1DAE65018(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099C8, &qword_1DAEDB020);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24[-1] - v4;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = a1;
    v11 = sub_1DAECEF2C();
    if (*v12 != -1)
    {
      ++*v12;
      v11(v24, 0);

      swift_getKeyPath();
      swift_getKeyPath();
      sub_1DAECEF3C();

      v13 = v24[0];
      v14 = sub_1DAED1F2C();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
      sub_1DAED1F0C();
      v15 = v10;

      v16 = sub_1DAED1EFC();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v7;
      v17[5] = v9;
      v17[6] = v13;
      sub_1DAE61C60(0, 0, v5, &unk_1DAEDC8B0, v17);

      return;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_1EE005E78 != -1)
  {
LABEL_11:
    swift_once();
  }

  v19 = sub_1DAECEDEC();
  __swift_project_value_buffer(v19, qword_1EE0117A8);
  v20 = sub_1DAECEDCC();
  v21 = sub_1DAED201C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1DAD61000, v20, v21, "Action received is not an LNAction", v22, 2u);
    MEMORY[0x1E127F100](v22, -1, -1);
  }
}

uint64_t sub_1DAE65340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  v7 = sub_1DAECE3DC();
  v6[20] = v7;
  v8 = *(v7 - 8);
  v6[21] = v8;
  v9 = *(v8 + 64) + 15;
  v6[22] = swift_task_alloc();
  sub_1DAED1F0C();
  v6[23] = sub_1DAED1EFC();
  v11 = sub_1DAED1ECC();
  v6[24] = v11;
  v6[25] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1DAE65438, v11, v10);
}

uint64_t sub_1DAE65438()
{
  v28 = v0;
  v1 = *(v0 + 136);
  v2 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v2, v0 + 56, &qword_1ECC090F8, &unk_1DAED8720);
  if (*(v0 + 80))
  {
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    sub_1DAD657D8((v0 + 56), v0 + 16);
    v7 = *(v4 + 104);
    v7(v3, *MEMORY[0x1E6994178], v5);
    if ((*(v6 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) & 1) != 0 || *(*(v0 + 136) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) == 1)
    {
      v8 = *(v0 + 176);
      v9 = *(v0 + 160);
      (*(*(v0 + 168) + 8))(v8, v9);
      v7(v8, *MEMORY[0x1E6994180], v9);
    }

    v10 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = sub_1DAE657B4;
    v12 = *(v0 + 176);
    v13 = *(v0 + 144);

    return sub_1DAE3F520(v13, v12);
  }

  else
  {
    v15 = *(v0 + 184);
    v16 = *(v0 + 136);

    sub_1DAD64398(v0 + 56, &qword_1ECC090F8, &unk_1DAED8720);

    v17 = sub_1DAECEDCC();
    v18 = sub_1DAED203C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 136);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1DAD6482C(*(v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v19 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v27);
      _os_log_impl(&dword_1DAD61000, v17, v18, "[%{public}s] Unable to perform interaction - no session key found.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1E127F100](v21, -1, -1);
      MEMORY[0x1E127F100](v20, -1, -1);
    }

    v22 = *(v0 + 152);
    v23 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (*(v0 + 120) == v22)
    {
      v24 = *(v0 + 136);
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 128) = 0;

      sub_1DAECEF4C();
    }

    v25 = *(v0 + 176);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1DAE657B4()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  v5 = *(v2 + 200);
  v6 = *(v2 + 192);
  if (v0)
  {
    v7 = sub_1DAE65B1C;
  }

  else
  {
    v7 = sub_1DAE658F0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1DAE658F0()
{
  v19 = v0;
  v1 = v0[23];
  v2 = v0[17];

  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  if (v5)
  {
    v9 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_1DAD6482C(*(v9 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v9 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v18);
    _os_log_impl(&dword_1DAD61000, v3, v4, "[%{public}s] Finished executing LNAction", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v12 = v0[19];
  v13 = v0[17];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (v0[15] == v12)
  {
    v14 = v0[17];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[16] = 0;

    sub_1DAECEF4C();
  }

  v15 = v0[22];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1DAE65B1C()
{
  v25 = v0;
  v1 = v0[27];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[17];

  (*(v5 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v7 = v1;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED201C();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  if (v10)
  {
    v12 = v0[17];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v13 = 136446466;
    *(v13 + 4) = sub_1DAD6482C(*(v12 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v12 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v24);
    *(v13 + 12) = 2114;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Failed to execute LNAction with error: %{public}@", v13, 0x16u);
    sub_1DAD64398(v14, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  else
  {
  }

  v18 = v0[19];
  v19 = v0[17];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  if (v0[15] == v18)
  {
    v20 = v0[17];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[16] = 0;

    sub_1DAECEF4C();
  }

  v21 = v0[22];

  v22 = v0[1];

  return v22();
}

uint64_t sub_1DAE65DC4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v1, &v16, &qword_1ECC090F8, &unk_1DAED8720);
  if (!v17)
  {
    sub_1DAD64398(&v16, &qword_1ECC090F8, &unk_1DAED8720);
LABEL_6:
    v13 = 1;
    return v13 & 1;
  }

  sub_1DAD657D8(&v16, v18);
  v2 = *__swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v3 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v3, &v16, &qword_1ECC099C0, &qword_1DAEDCB90);
  v4 = v17;
  if (!v17)
  {
    sub_1DAD64398(&v16, &qword_1ECC099C0, &qword_1DAEDCB90);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    goto LABEL_6;
  }

  v5 = __swift_project_boxed_opaque_existential_1(&v16, v17);
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v10, v8);
  sub_1DAD64398(&v16, &qword_1ECC099C0, &qword_1DAEDCB90);
  v11 = *(*v10 + 16);
  v12 = *(v6 + 8);

  v12(v10, v4);
  v13 = sub_1DAED0CFC();

  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return v13 & 1;
}

uint64_t sub_1DAE65FD8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAE6608C();
  }

  return result;
}

uint64_t sub_1DAE66030()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DAE69B6C(5);
  }

  return result;
}

uint64_t sub_1DAE6608C()
{
  v135 = sub_1DAECDEBC();
  v134 = *(v135 - 8);
  v1 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v131 = v109 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1DAECDE7C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v129 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v132 = *(v133 - 8);
  v6 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v130 = v109 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v145 = v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F60, &qword_1DAEDCB78);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v109 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v140 = v109 - v18;
  v142 = sub_1DAED22EC();
  v141 = *(v142 - 8);
  v19 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v138 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F68, &qword_1DAEDCB88);
  v143 = *(v144 - 8);
  v21 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v139 = v109 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v127 = *(v23 - 8);
  v24 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v126 = v109 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v123 = v109 - v28;
  v122 = sub_1DAED17AC();
  v121 = *(v122 - 8);
  v29 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v122);
  v120 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1DAED1ABC();
  v118 = *(v119 - 8);
  v31 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v33 = v109 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1DAED0F0C();
  v137 = *(v125 - 8);
  v34 = v137[8];
  v35 = MEMORY[0x1EEE9AC00](v125);
  v124 = v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v136 = v109 - v37;
  v38 = sub_1DAECDE4C();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x1EEE9AC00](v38);
  v128 = v109 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = v109 - v43;
  v45 = sub_1DAED0B1C();
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = v109 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v47);
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed) & 1) == 0)
  {
    v116 = v109 - v51;
    v111 = v52;
    v112 = result;
    v110 = v23;
    v117 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed;
    v113 = v15;
    v114 = v12;
    v115 = v11;
    v53 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v53, &v150, &qword_1ECC090F8, &unk_1DAED8720);
    v54 = v151;
    sub_1DAD64398(&v150, &qword_1ECC090F8, &unk_1DAED8720);
    if (!v54)
    {
      v55 = *(v39 + 16);
      v109[1] = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor;
      v56 = v38;
      v109[3] = v39 + 16;
      v109[2] = v55;
      v55(v44, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v38);
      v57 = v116;
      sub_1DAE68BDC(v116);
      v58 = v0;
      (*(v39 + 8))(v44, v56);
      (*(v118 + 16))(v33, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v119);
      (*(v121 + 16))(v120, v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v122);
      sub_1DAECE31C();
      v59 = v136;
      sub_1DAED0EFC();
      (*(v111 + 16))(v49, v57, v112);
      v60 = v125;
      (v137[2])(v124, v59, v125);
      v61 = MEMORY[0x1E6993CE0];
      sub_1DAE6D890(&qword_1EE00AB60, MEMORY[0x1E6993CE0]);
      sub_1DAE6D890(&qword_1EE00AB68, v61);
      v62 = MEMORY[0x1E6993E40];
      sub_1DAE6D890(&qword_1EE00AB40, MEMORY[0x1E6993E40]);
      sub_1DAE6D890(&qword_1EE00AB48, v62);
      v63 = v126;
      sub_1DAED0E3C();
      v64 = *__swift_project_boxed_opaque_existential_1((v58 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory), *(v58 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory + 24));
      sub_1DAE4005C(v63, &v150);
      sub_1DAD648F8(&v150, &v148);
      swift_beginAccess();
      sub_1DAD94438(&v148, v58 + v53, &qword_1ECC090F8, &unk_1DAED8720);
      swift_endAccess();
      v65 = *__swift_project_boxed_opaque_existential_1(&v150, v151);
      sub_1DAE3E3BC();
      v66 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver;
      if (*(v58 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver))
      {
        v67 = *(v58 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver);

        sub_1DAECEE2C();
      }

      (*(v127 + 8))(v63, v110);
      (v137[1])(v136, v60);
      (*(v111 + 8))(v116, v112);
      v68 = *(v58 + v66);
      *(v58 + v66) = 0;

      __swift_destroy_boxed_opaque_existential_1Tm(&v150);
      v0 = v58;
    }

    sub_1DAD6495C(v0 + v53, &v148, &qword_1ECC090F8, &unk_1DAED8720);
    if (v149)
    {
      v69 = v0;
      sub_1DAD657D8(&v148, &v150);
      v70 = *__swift_project_boxed_opaque_existential_1(&v150, v151);
      v71 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession_environmentProvider;
      swift_beginAccess();
      sub_1DAD6495C(v70 + v71, &v148, &qword_1ECC099D0, &qword_1DAEDB028);
      v72 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
      swift_beginAccess();
      sub_1DAD94438(&v148, v69 + v72, &qword_1ECC099D0, &qword_1DAEDB028);
      swift_endAccess();
      sub_1DAE68294();
      sub_1DAD6495C(v69 + v72, &v148, &qword_1ECC099D0, &qword_1DAEDB028);
      v73 = v149;
      if (v149)
      {
        v74 = __swift_project_boxed_opaque_existential_1(&v148, v149);
        v137 = v109;
        v75 = *(v73 - 8);
        v76 = *(v75 + 64);
        MEMORY[0x1EEE9AC00](v74);
        v78 = v109 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v75 + 16))(v78);
        sub_1DAD64398(&v148, &qword_1ECC099D0, &qword_1DAEDB028);
        v79 = sub_1DAED10FC();
        v136 = v79;
        (*(v75 + 8))(v78, v73);
        v147 = v79;
        v80 = v138;
        sub_1DAED22DC();
        v81 = [objc_opt_self() mainRunLoop];
        v146 = v81;
        v82 = sub_1DAED22CC();
        v83 = v140;
        (*(*(v82 - 8) + 56))(v140, 1, 1, v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
        sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
        sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
        sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0);
        v84 = v139;
        sub_1DAECEFCC();
        sub_1DAD64398(v83, &qword_1ECC07D08, &qword_1DAEDCB80);

        (*(v141 + 8))(v80, v142);

        sub_1DAD64B94(&unk_1EE005D50, &qword_1ECC09F68, &qword_1DAEDCB88);
        v85 = v144;
        v86 = sub_1DAECEF6C();
        (*(v143 + 8))(v84, v85);
        *&v148 = v86;
        v87 = swift_allocObject();
        swift_weakInit();
        v88 = swift_allocObject();
        *(v88 + 16) = sub_1DAE6D9AC;
        *(v88 + 24) = v87;
        sub_1DAECF00C();

        swift_beginAccess();
        sub_1DAECEE0C();
        swift_endAccess();
      }

      else
      {
        sub_1DAD64398(&v148, &qword_1ECC099D0, &qword_1DAEDB028);
      }

      v89 = *__swift_project_boxed_opaque_existential_1(&v150, v151);
      v90 = OBJC_IVAR____TtC14WidgetRenderer31_DefaultActivityRendererSession__activityEntryAssertion;
      swift_beginAccess();
      sub_1DAD6495C(v89 + v90, &v148, &qword_1ECC099C0, &qword_1DAEDCB90);
      v91 = v149;
      if (v149)
      {
        v92 = __swift_project_boxed_opaque_existential_1(&v148, v149);
        v93 = *(v91 - 8);
        v94 = *(v93 + 64);
        MEMORY[0x1EEE9AC00](v92);
        v96 = v109 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v93 + 16))(v96);
        sub_1DAD64398(&v148, &qword_1ECC099C0, &qword_1DAEDCB90);
        v97 = *(*v96 + 16);
        v98 = *(v93 + 8);

        v98(v96, v91);
        v99 = sub_1DAED0CBC();

        *&v148 = v99;
        sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
        v100 = sub_1DAED20EC();
        v146 = v100;
        v101 = sub_1DAED20AC();
        v102 = v145;
        (*(*(v101 - 8) + 56))(v145, 1, 1, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F78, &unk_1DAEDCB98);
        sub_1DAD64B94(&qword_1EE005CB0, &qword_1ECC09F78, &unk_1DAEDCB98);
        sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
        v103 = v113;
        sub_1DAECEFBC();
        sub_1DAD64398(v102, &unk_1ECC07D20, &unk_1DAED57D0);

        swift_allocObject();
        swift_weakInit();
        sub_1DAD64B94(&qword_1EE005D28, &qword_1ECC09F60, &qword_1DAEDCB78);
        v104 = v115;
        sub_1DAECF00C();

        (*(v114 + 8))(v103, v104);
        swift_beginAccess();
        sub_1DAECEE0C();
        swift_endAccess();
      }

      else
      {
        sub_1DAD64398(&v148, &qword_1ECC099C0, &qword_1DAEDCB90);
      }

      v105 = sub_1DAECEDCC();
      v106 = sub_1DAED203C();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *&v148 = v108;
        *v107 = 136446210;
        *(v107 + 4) = sub_1DAD6482C(*(v69 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v69 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v148);
        _os_log_impl(&dword_1DAD61000, v105, v106, "[%{public}s] Created or found activity entry", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v108);
        MEMORY[0x1E127F100](v108, -1, -1);
        MEMORY[0x1E127F100](v107, -1, -1);
      }

      *(v69 + v117) = 1;
      return __swift_destroy_boxed_opaque_existential_1Tm(&v150);
    }

    else
    {
      return sub_1DAD64398(&v148, &qword_1ECC090F8, &unk_1DAED8720);
    }
  }

  return result;
}

uint64_t sub_1DAE677F4()
{
  v0 = sub_1DAECF8EC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
    swift_beginAccess();
    sub_1DAD6495C(v9 + v10, &v14, &qword_1ECC099D0, &qword_1DAEDB028);
    if (v15)
    {
      sub_1DAD657D8(&v14, v16);
      __swift_project_boxed_opaque_existential_1(v16, v16[3]);
      sub_1DAED10EC();
      v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
      swift_beginAccess();
      (*(v1 + 16))(v5, v9 + v11, v0);
      swift_beginAccess();
      (*(v1 + 24))(v9 + v11, v7, v0);
      swift_endAccess();
      sub_1DAE63A78(v5);

      v12 = *(v1 + 8);
      v12(v5, v0);
      v12(v7, v0);
      return __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    else
    {

      return sub_1DAD64398(&v14, &qword_1ECC099D0, &qword_1DAEDB028);
    }
  }

  return result;
}

uint64_t sub_1DAE67A44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = sub_1DAECEDCC();
    v3 = sub_1DAED203C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
      v7 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

      v8 = sub_1DAD6482C(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1DAD61000, v2, v3, "[%{public}s] view collection did change.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x1E127F100](v5, -1, -1);
      MEMORY[0x1E127F100](v4, -1, -1);
    }

    sub_1DAE69B6C(2);
  }

  return result;
}

uint64_t sub_1DAE67BAC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v2, v40, &qword_1ECC090F8, &unk_1DAED8720);
  if (v41)
  {
    sub_1DAD648F8(v40, v38);
    sub_1DAD64398(v40, &qword_1ECC090F8, &unk_1DAED8720);
    v3 = *__swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1DAE3FA28();
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
  }

  else
  {
    sub_1DAD64398(v40, &qword_1ECC090F8, &unk_1DAED8720);
  }

  v4 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource);
  *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = 0;

  v5 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable;
  swift_beginAccess();
  v37 = v5;
  v6 = *(v1 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *(v1 + v5);
    }

    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAECEE3C();
    sub_1DAE6D890(&qword_1EE005C50, MEMORY[0x1E695BF10]);
    result = sub_1DAED1F9C();
    v10 = v40[0];
    v9 = v40[1];
    v11 = v40[2];
    v12 = v41;
    v13 = v42;
  }

  else
  {
    v14 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v6 + 56);
    result = swift_bridgeObjectRetain_n();
    v12 = 0;
    v10 = v6;
  }

  v17 = (v11 + 64) >> 6;
  if (v10 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_17:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v10 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v22)
    {
LABEL_23:
      sub_1DAD70B20();

      v24 = *(v1 + v37);
      *(v1 + v37) = MEMORY[0x1E69E7CD0];

      v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver;
      if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver))
      {
        v26 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver);

        sub_1DAECEE2C();

        v27 = *(v1 + v25);
      }

      *(v1 + v25) = 0;

      v28 = (v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      v29 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
      v30 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
      *v28 = 0;
      v28[1] = 0;
      sub_1DAD660D8(v29);
      v31 = (v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      v32 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
      v33 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated + 8);
      *v31 = 0;
      v31[1] = 0;
      sub_1DAD660D8(v32);
      v34 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher);
      LOBYTE(v39) = 1;

      sub_1DAECEE5C();

      v35 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher);
      LOBYTE(v39) = 1;

      sub_1DAECEE5C();

      v36 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher);
      LOBYTE(v39) = 1;

      sub_1DAECEE5C();
    }

    while (1)
    {
      sub_1DAECEE2C();

      v12 = v20;
      v13 = v21;
      if ((v10 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v23 = sub_1DAED24BC();
      if (v23)
      {
        v38[5] = v23;
        sub_1DAECEE3C();
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v39)
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_23;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAE67F8C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-v7];
  v9 = sub_1DAECDBFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_1DAED181C();
  if (result)
  {
    goto LABEL_4;
  }

  v15 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v15, v8, &unk_1ECC09EC0, &qword_1DAED7970);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_1DAD64398(v8, &unk_1ECC09EC0, &qword_1DAED7970);
LABEL_4:
    v16 = v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler;
    v17 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
    if (v17)
    {
      v18 = *(v16 + 8);
      v23 = 0;
      (*(v10 + 56))(v5, 1, 1, v9);

      v17(&v23, v5);
      sub_1DAD660D8(v17);
      return sub_1DAD64398(v5, &unk_1ECC09EC0, &qword_1DAED7970);
    }

    return result;
  }

  (*(v10 + 32))(v13, v8, v9);
  v19 = v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler;
  v20 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  if (v20)
  {
    v21 = *(v19 + 8);
    v23 = 1;
    (*(v10 + 16))(v5, v13, v9);
    (*(v10 + 56))(v5, 0, 1, v9);

    v20(&v23, v5);
    sub_1DAD660D8(v20);
    sub_1DAD64398(v5, &unk_1ECC09EC0, &qword_1DAED7970);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1DAE68294()
{
  v1 = v0;
  v2 = sub_1DAECF8EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
  swift_beginAccess();
  sub_1DAD6495C(v1 + v10, &v15, &qword_1ECC099D0, &qword_1DAEDB028);
  if (!v16)
  {
    return sub_1DAD64398(&v15, &qword_1ECC099D0, &qword_1DAEDB028);
  }

  sub_1DAD657D8(&v15, v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_1DAED10EC();
  v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  (*(v3 + 16))(v7, v1 + v11, v2);
  swift_beginAccess();
  (*(v3 + 24))(v1 + v11, v9, v2);
  swift_endAccess();
  sub_1DAE63A78(v7);
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v17);
}

uint64_t sub_1DAE684B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = sub_1DAECF32C();
  v46 = *(v57 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECE21C();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECE23C();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v46 - v14;
  v47 = sub_1DAECF0AC();
  v49 = *(v47 - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DAED17AC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v46 - v25;
  BSDispatchQueueAssertMain();
  v27 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  swift_beginAccess();
  v28 = sub_1DAECF8EC();
  (*(*(v28 - 8) + 16))(a1, v2 + v27, v28);
  v29 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v29, v26, &qword_1ECC07CE8, &qword_1DAED6F60);
  v30 = sub_1DAECDCEC();
  (*(*(v30 - 8) + 48))(v26, 1, v30);
  v31 = v26;
  v32 = v47;
  sub_1DAD64398(v31, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAECF4CC();
  (*(v19 + 16))(v22, v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v18);
  sub_1DAECF68C();
  v33 = v49;
  v34 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v2 + v34, v15, &qword_1ECC08370, &unk_1DAED6580);
  v35 = *(v33 + 48);
  if (v35(v15, 1, v32) == 1)
  {
    sub_1DAECF39C();
    if (v35(v15, 1, v32) != 1)
    {
      sub_1DAD64398(v15, &qword_1ECC08370, &unk_1DAED6580);
    }
  }

  else
  {
    (*(v33 + 32))(v48, v15, v32);
  }

  sub_1DAECF3AC();
  v36 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider), *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 24));
  v37 = v50;
  sub_1DAECE29C();
  v38 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  swift_beginAccess();
  v40 = v53;
  v39 = v54;
  v41 = v55;
  (*(v54 + 16))(v53, v2 + v38, v55);
  LOBYTE(v38) = sub_1DAECE22C();
  (*(v39 + 8))(v40, v41);
  (*(v51 + 8))(v37, v52);
  if (v38)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
    v42 = *(v46 + 72);
    v43 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1DAED6200;
    sub_1DAECF31C();
    v58 = v44;
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  sub_1DAE6D890(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAED23CC();
  return sub_1DAECF47C();
}

void sub_1DAE68BDC(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08BD0, &qword_1DAED79B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v54 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08390, &unk_1DAED7DA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v50 - v6;
  v51 = sub_1DAECDE5C();
  v55 = *(v51 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v58 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECDEBC();
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - v13;
  v15 = sub_1DAECDE7C();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v59 = *(v22 - 8);
  v60 = v22;
  v23 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v50 - v24;
  v26 = sub_1DAECDE1C();
  if (v27)
  {
    v56 = v26;
    v28 = v61;
    sub_1DAECDDFC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1DAE6D948(v19);
      v29 = sub_1DAED0D2C();
      sub_1DAE6D890(&qword_1EE0057E8, MEMORY[0x1E6993D60]);
      swift_allocError();
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x1E6993D50], v29);
      swift_willThrow();
      return;
    }

    v43 = v52;
    (*(v28 + 32))(v52, v19, v9);
    sub_1DAED21EC();
    sub_1DAECDE9C();
    sub_1DAECE24C();
    sub_1DAECDE9C();
    v44 = v54;
    sub_1DAECE24C();
    (*(v59 + 56))(v44, 0, 1, v60);
    v42 = sub_1DAED21DC();
    (*(v28 + 8))(v43, v9);
    goto LABEL_8;
  }

  v31 = v55;
  sub_1DAECDDFC();
  sub_1DAECDE6C();
  sub_1DAE6D948(v21);
  sub_1DAECDE9C();
  (*(v61 + 8))(v14, v9);
  v32 = v25;
  sub_1DAECE24C();
  v33 = *(v56 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider + 24);
  v34 = __swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider), v33);
  v35 = *(v33 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v50 - v37;
  (*(v35 + 16))(&v50 - v37);
  v39 = sub_1DAED12EC();
  (*(v35 + 8))(v38, v33);
  if (v39)
  {
    v40 = v58;
    sub_1DAECDE0C();
    v41 = sub_1DAED102C();

    (*(v31 + 8))(v40, v51);
    if (v41)
    {
      v42 = [v41 extensionIdentity];

      (*(v59 + 8))(v32, v60);
LABEL_8:
      v45 = v42;
      sub_1DAECDE0C();
      sub_1DAECDE3C();
      sub_1DAED0ADC();

      return;
    }
  }

  v46 = sub_1DAED0D2C();
  sub_1DAE6D890(&qword_1EE0057E8, MEMORY[0x1E6993D60]);
  swift_allocError();
  v48 = v47;
  v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F58, &unk_1DAEDCB60) + 48);
  sub_1DAECDEAC();
  *(v48 + v49) = MEMORY[0x1E69E7CC0];
  (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E6993D58], v46);
  swift_willThrow();
  (*(v59 + 8))(v32, v60);
}

uint64_t sub_1DAE69370()
{
  v50 = sub_1DAECF8EC();
  v49 = *(v50 - 8);
  v1 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DAECF0AC();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v53);
  v51 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v47 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v47 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v47 - v23;
  BSDispatchQueueAssertMain();
  v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v25, v24, &qword_1ECC07CE8, &qword_1DAED6F60);
  v26 = sub_1DAECDCEC();
  LODWORD(v25) = (*(*(v26 - 8) + 48))(v24, 1, v26);
  sub_1DAD64398(v24, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v25 != 1)
  {
    v37 = v53;
    (*(v3 + 104))(v20, *MEMORY[0x1E697DBA8], v53);
    (*(v3 + 56))(v20, 0, 1, v37);
    v38 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v38, v18, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v20, v0 + v38);
    swift_endAccess();
    sub_1DAE6265C(v18);
    sub_1DAD64398(v18, &qword_1ECC08370, &unk_1DAED6580);
    v36 = v20;
    return sub_1DAD64398(v36, &qword_1ECC08370, &unk_1DAED6580);
  }

  v27 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v27, v15, &qword_1ECC08370, &unk_1DAED6580);
  v28 = *(v3 + 48);
  if (v28(v15, 1, v53) == 1)
  {
    sub_1DAD64398(v15, &qword_1ECC08370, &unk_1DAED6580);
    v29 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v29, v12, &qword_1ECC08370, &unk_1DAED6580);
    if (v28(v12, 1, v53) == 1)
    {
      sub_1DAD64398(v12, &qword_1ECC08370, &unk_1DAED6580);
      v30 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
      swift_beginAccess();
      v31 = v49;
      v32 = v48;
      v33 = v50;
      (*(v49 + 16))(v48, v0 + v30, v50);
      v34 = v0;
      sub_1DAECF39C();
      (*(v31 + 8))(v32, v33);
      (*(v3 + 56))(v20, 0, 1, v53);
      v35 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
      swift_beginAccess();
      sub_1DAD6495C(v34 + v35, v18, &qword_1ECC08370, &unk_1DAED6580);
      swift_beginAccess();
      sub_1DADE9908(v20, v34 + v35);
      swift_endAccess();
      sub_1DAE6265C(v18);
      sub_1DAD64398(v18, &qword_1ECC08370, &unk_1DAED6580);
      v36 = v20;
      return sub_1DAD64398(v36, &qword_1ECC08370, &unk_1DAED6580);
    }

    v43 = v51;
    v44 = v12;
    v45 = v53;
    (*(v3 + 32))(v51, v44, v53);
    (*(v3 + 16))(v20, v43, v45);
    (*(v3 + 56))(v20, 0, 1, v45);
    v46 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v46, v18, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v20, v0 + v46);
    swift_endAccess();
    sub_1DAE6265C(v18);
    sub_1DAD64398(v18, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
    return (*(v3 + 8))(v43, v45);
  }

  else
  {
    v40 = v52;
    v41 = v53;
    (*(v3 + 32))(v52, v15, v53);
    (*(v3 + 16))(v20, v40, v41);
    (*(v3 + 56))(v20, 0, 1, v41);
    v42 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v42, v18, &qword_1ECC08370, &unk_1DAED6580);
    swift_beginAccess();
    sub_1DADE9908(v20, v0 + v42);
    swift_endAccess();
    sub_1DAE6265C(v18);
    sub_1DAD64398(v18, &qword_1ECC08370, &unk_1DAED6580);
    sub_1DAD64398(v20, &qword_1ECC08370, &unk_1DAED6580);
    return (*(v3 + 8))(v40, v41);
  }
}