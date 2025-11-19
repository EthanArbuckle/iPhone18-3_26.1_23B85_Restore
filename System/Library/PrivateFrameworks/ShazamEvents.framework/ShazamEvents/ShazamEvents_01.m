uint64_t Venue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89020, &qword_1E10B0AD8);
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v22 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v23 = v1[3];
  v24 = v11;
  v12 = v1[4];
  v22[0] = v1[5];
  v22[1] = v12;
  v13 = *(v1 + 6);
  v37 = *(v1 + 5);
  v38 = v13;
  v14 = *(v1 + 8);
  v39 = *(v1 + 7);
  v40 = v14;
  v15 = *(v1 + 4);
  v35 = *(v1 + 3);
  v36 = v15;
  v17 = v1[18];
  v16 = v1[19];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF742C();

  sub_1E10AEA5C();
  *&v29 = v9;
  *(&v29 + 1) = v10;
  LOBYTE(v27[0]) = 0;
  sub_1E0FED9C8();
  v19 = v41;
  sub_1E10AE8AC();
  if (v19)
  {

    return (*(v25 + 8))(v8, v3);
  }

  else
  {
    v21 = v25;

    *&v29 = v24;
    *(&v29 + 1) = v23;
    LOBYTE(v27[0]) = 1;
    sub_1E10AE85C();
    LOBYTE(v29) = 2;
    sub_1E10AE86C();
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v28 = 3;
    sub_1E0FF73BC(&v35, v27);
    sub_1E0FF7480();
    sub_1E10AE85C();
    v27[2] = v31;
    v27[3] = v32;
    v27[4] = v33;
    v27[5] = v34;
    v27[0] = v29;
    v27[1] = v30;
    sub_1E0FF0440(v27, &qword_1ECE89018, &qword_1E10B0AD0);
    v26 = 4;
    sub_1E10AE88C();
    v26 = 5;
    sub_1E10AE88C();
    return (*(v21 + 8))(v8, v3);
  }
}

uint64_t Venue.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v8 = *(v0 + 7);
  v10 = v0[18];
  v9 = v0[19];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10AE9EC();
  if (v4)
  {
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  }

  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (v8 == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v19 = *(v0 + 6);
    v20 = *(v0 + 7);
    v21 = *(v0 + 8);
    v17 = *(v0 + 4);
    v18 = *(v0 + 5);
    *&v16 = v7;
    *(&v16 + 1) = v8;
    sub_1E10AE9EC();
    v22[0] = v7;
    v22[1] = v8;
    v11 = *(v0 + 7);
    v25 = *(v0 + 6);
    v26 = v11;
    v27 = *(v0 + 8);
    v12 = *(v0 + 5);
    v23 = *(v0 + 4);
    v24 = v12;
    sub_1E0FF74D4(v22, v28);
    Venue.StructuredAddress.hash(into:)();
    v28[2] = v18;
    v28[3] = v19;
    v28[4] = v20;
    v28[5] = v21;
    v28[0] = v16;
    v28[1] = v17;
    sub_1E0FF750C(v28);
  }

  if (v10 == 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v10;
  }

  MEMORY[0x1E12EE180](*&v13);
  if (v9 == 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v9;
  }

  return MEMORY[0x1E12EE180](*&v14);
}

uint64_t Venue.hashValue.getter()
{
  sub_1E10AE9CC();
  Venue.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t Venue.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89030, &qword_1E10B0AE0);
  v5 = *(v39 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v32 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF742C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v5;
  LOBYTE(v40) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v12 = v50;
  v13 = v51;
  LOBYTE(v40) = 1;
  sub_1E10AE7AC();
  v35 = v12;
  v14 = v50;
  v37 = v51;
  LOBYTE(v50) = 2;
  v15 = sub_1E10AE7BC();
  v36 = v16;
  v34 = v15;
  v77 = 3;
  sub_1E0FF753C();
  sub_1E10AE7AC();
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v70 = v64;
  v71 = v65;
  LOBYTE(v50) = 4;
  sub_1E10AE7DC();
  v18 = v17;
  v76 = 5;
  sub_1E10AE7DC();
  v20 = v19;
  v21 = v14;
  v33 = v14;
  (*(v38 + 8))(v10, v39);
  v23 = v34;
  v22 = v35;
  *&v40 = v35;
  *(&v40 + 1) = v13;
  *&v41 = v21;
  v25 = v36;
  v24 = v37;
  *(&v41 + 1) = v37;
  *&v42 = v34;
  *(&v42 + 1) = v36;
  v45 = v72;
  v46 = v73;
  v47 = v74;
  v48 = v75;
  v43 = v70;
  v44 = v71;
  *&v49 = v18;
  *(&v49 + 1) = v20;
  v26 = v41;
  *a2 = v40;
  a2[1] = v26;
  v27 = v45;
  a2[4] = v44;
  a2[5] = v27;
  v28 = v49;
  a2[8] = v48;
  a2[9] = v28;
  v29 = v47;
  a2[6] = v46;
  a2[7] = v29;
  v30 = v43;
  a2[2] = v42;
  a2[3] = v30;
  sub_1E0FE6720(&v40, &v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v50 = v22;
  v51 = v13;
  v52 = v33;
  v53 = v24;
  v54 = v23;
  v55 = v25;
  v58 = v72;
  v59 = v73;
  v60 = v74;
  v61 = v75;
  v56 = v70;
  v57 = v71;
  v62 = v18;
  v63 = v20;
  return sub_1E0FEDAB8(&v50);
}

uint64_t sub_1E0FF6380()
{
  sub_1E10AE9CC();
  Venue.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF63C4()
{
  sub_1E10AE9CC();
  Venue.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t Venue.StructuredAddress.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89038, &qword_1E10B0AE8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v20 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  v20[9] = v1[3];
  v20[10] = v12;
  v13 = v1[4];
  v20[7] = v1[5];
  v20[8] = v13;
  v14 = v1[6];
  v20[5] = v1[7];
  v20[6] = v14;
  v15 = v1[8];
  v20[3] = v1[9];
  v20[4] = v15;
  v16 = v1[11];
  v20[1] = v1[10];
  v20[2] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF7590();
  sub_1E10AEA5C();
  v26 = 0;
  v18 = v20[11];
  sub_1E10AE83C();
  if (v18)
  {
    return (*(v4 + 8))(v9, v3);
  }

  v25 = 1;
  sub_1E10AE83C();
  v24 = 2;
  sub_1E10AE83C();
  v23 = 3;
  sub_1E10AE83C();
  v22 = 4;
  sub_1E10AE83C();
  v21 = 5;
  sub_1E10AE83C();
  return (*(v4 + 8))(v9, v3);
}

uint64_t Venue.StructuredAddress.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v11 = v0[8];
  v7 = v0[9];
  v12 = v0[10];
  v8 = v0[11];
  if (v0[1])
  {
    v9 = *v0;
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1E10AE9EC();
    if (v2)
    {
LABEL_3:
      sub_1E10AE9EC();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  sub_1E10AE9EC();
  if (v5)
  {
LABEL_4:
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  sub_1E10AE9EC();
  if (v6)
  {
LABEL_5:
    sub_1E10AE9EC();
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_14:
    sub_1E10AE9EC();
    if (v8)
    {
      goto LABEL_7;
    }

    return sub_1E10AE9EC();
  }

LABEL_13:
  sub_1E10AE9EC();
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1E10AE9EC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v8)
  {
    return sub_1E10AE9EC();
  }

LABEL_7:
  sub_1E10AE9EC();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Venue.StructuredAddress.hashValue.getter()
{
  sub_1E10AE9CC();
  Venue.StructuredAddress.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t Venue.StructuredAddress.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89048, &qword_1E10B0AF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF7590();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v46[0]) = 0;
  v13 = sub_1E10AE78C();
  v15 = v14;
  LOBYTE(v46[0]) = 1;
  v37 = sub_1E10AE78C();
  v39 = v16;
  LOBYTE(v46[0]) = 2;
  v17 = sub_1E10AE78C();
  v38 = v18;
  v34 = v17;
  LOBYTE(v46[0]) = 3;
  v33 = sub_1E10AE78C();
  v36 = v19;
  LOBYTE(v46[0]) = 4;
  v32 = sub_1E10AE78C();
  v35 = v20;
  v47 = 5;
  v21 = sub_1E10AE78C();
  v22 = v11;
  v24 = v23;
  (*(v6 + 8))(v22, v5);
  *&v40 = v13;
  *(&v40 + 1) = v15;
  *&v41 = v37;
  *(&v41 + 1) = v39;
  *&v42 = v34;
  v25 = v38;
  *(&v42 + 1) = v38;
  *&v43 = v33;
  v26 = v36;
  *(&v43 + 1) = v36;
  *&v44 = v32;
  *(&v44 + 1) = v35;
  *&v45 = v21;
  *(&v45 + 1) = v24;
  v27 = v43;
  a2[2] = v42;
  a2[3] = v27;
  v28 = v45;
  a2[4] = v44;
  a2[5] = v28;
  v29 = v41;
  *a2 = v40;
  a2[1] = v29;
  sub_1E0FF74D4(&v40, v46);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46[0] = v13;
  v46[1] = v15;
  v46[2] = v37;
  v46[3] = v39;
  v46[4] = v34;
  v46[5] = v25;
  v46[6] = v33;
  v46[7] = v26;
  v46[8] = v32;
  v46[9] = v35;
  v46[10] = v21;
  v46[11] = v24;
  return sub_1E0FF750C(v46);
}

uint64_t sub_1E0FF6CDC()
{
  sub_1E10AE9CC();
  Venue.StructuredAddress.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF6D20()
{
  sub_1E10AE9CC();
  Venue.StructuredAddress.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents5VenueV17StructuredAddressV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];
  v12 = a1[9];
  v11 = a1[10];
  v13 = a1[11];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v21 = a2[7];
  v20 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v49 = a1[2];
      v50 = a1[11];
      v58 = a1[9];
      v61 = a2[9];
      v54 = a2[10];
      v56 = a1[8];
      v51 = a1[6];
      v52 = a2[11];
      v25 = a1[10];
      v26 = a2[8];
      v27 = a1[7];
      v28 = a2[7];
      v29 = a2[6];
      v30 = a1[5];
      v31 = a1[4];
      v64 = a2[5];
      v32 = a2[4];
      v48 = a2[2];
      v33 = sub_1E10AE8FC();
      v15 = v48;
      v4 = v49;
      v16 = v32;
      v5 = v31;
      v7 = v30;
      v18 = v29;
      v21 = v28;
      v9 = v27;
      v20 = v26;
      v11 = v25;
      v13 = v50;
      v8 = v51;
      v24 = v52;
      v22 = v54;
      v10 = v56;
      v12 = v58;
      v23 = v61;
      v19 = v64;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v59 = v18;
      v62 = v11;
      v34 = v20;
      v55 = v5;
      v57 = v9;
      v35 = v7;
      v65 = v19;
      v53 = v16;
      v36 = sub_1E10AE8FC();
      v16 = v53;
      v5 = v55;
      v11 = v62;
      v19 = v65;
      v7 = v35;
      v9 = v57;
      v18 = v59;
      v20 = v34;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v7 != v19)
    {
      v60 = v18;
      v63 = v11;
      v37 = v20;
      v38 = v9;
      v39 = sub_1E10AE8FC();
      v18 = v60;
      v11 = v63;
      v9 = v38;
      v20 = v37;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v9)
  {
    if (!v21)
    {
      return 0;
    }

    if (v8 != v18 || v9 != v21)
    {
      v40 = v24;
      v41 = v11;
      v42 = v20;
      v43 = sub_1E10AE8FC();
      v20 = v42;
      v11 = v41;
      v24 = v40;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v12)
  {
    if (!v23)
    {
      return 0;
    }

    if (v10 != v20 || v12 != v23)
    {
      v44 = v24;
      v45 = v11;
      v46 = sub_1E10AE8FC();
      v11 = v45;
      v24 = v44;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (v24 && (v11 == v22 && v13 == v24 || (sub_1E10AE8FC() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

BOOL _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 6);
  v68[2] = *(a1 + 5);
  v68[3] = v10;
  v11 = *(a1 + 8);
  v68[4] = *(a1 + 7);
  v68[5] = v11;
  v12 = *(a1 + 4);
  v68[0] = *(a1 + 3);
  v68[1] = v12;
  v14 = *(a1 + 18);
  v13 = *(a1 + 19);
  v15 = *a2;
  v16 = a2[1];
  v18 = a2[2];
  v17 = a2[3];
  v19 = a2[4];
  v20 = a2[5];
  v21 = *(a2 + 8);
  v69[4] = *(a2 + 7);
  v69[5] = v21;
  v22 = *(a2 + 6);
  v69[2] = *(a2 + 5);
  v69[3] = v22;
  v23 = *(a2 + 4);
  v69[0] = *(a2 + 3);
  v69[1] = v23;
  v25 = *(a2 + 18);
  v24 = *(a2 + 19);
  if ((v4 != v15 || v5 != v16) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (!v17 || (v6 != v18 || v8 != v17) && (sub_1E10AE8FC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if ((v7 != v19 || v9 != v20) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v26 = v68[0];
  v27 = v69[0];
  if (*(&v68[0] + 1) == 1)
  {
    if (*(&v69[0] + 1) == 1)
    {
      *&v56 = *&v68[0];
      *(&v56 + 1) = 1;
      v28 = *(a1 + 7);
      v59 = *(a1 + 6);
      v60 = v28;
      v61 = *(a1 + 8);
      v29 = *(a1 + 5);
      v57 = *(a1 + 4);
      v58 = v29;
      sub_1E0FF73BC(v68, &v50);
      sub_1E0FF73BC(v69, &v50);
      sub_1E0FF0440(&v56, &qword_1ECE89018, &qword_1E10B0AD0);
      if (v14 != v25)
      {
        return 0;
      }

      return v13 == v24;
    }

    sub_1E0FF73BC(v68, &v56);
    sub_1E0FF73BC(v69, &v56);
    goto LABEL_21;
  }

  v56 = v68[0];
  v30 = *(a1 + 7);
  v59 = *(a1 + 6);
  v60 = v30;
  v61 = *(a1 + 8);
  v31 = *(a1 + 5);
  v57 = *(a1 + 4);
  v58 = v31;
  v52 = v31;
  v53 = v59;
  v54 = v30;
  v55 = v61;
  v50 = v68[0];
  v51 = v57;
  if (*(&v69[0] + 1) == 1)
  {
    v46 = v58;
    v47 = v59;
    v48 = v60;
    v49 = v61;
    v44 = v56;
    v45 = v57;
    sub_1E0FF73BC(v68, v43);
    sub_1E0FF73BC(v69, v43);
    sub_1E0FF73BC(&v56, v43);
    sub_1E0FF750C(&v44);
LABEL_21:
    v56 = v26;
    v32 = *(a1 + 7);
    v59 = *(a1 + 6);
    v60 = v32;
    v61 = *(a1 + 8);
    v33 = *(a1 + 5);
    v57 = *(a1 + 4);
    v58 = v33;
    v62 = v27;
    v34 = *(a2 + 8);
    v66 = *(a2 + 7);
    v67 = v34;
    v35 = *(a2 + 6);
    v64 = *(a2 + 5);
    v65 = v35;
    v63 = *(a2 + 4);
    sub_1E0FF0440(&v56, &qword_1ECE89100, &qword_1E10B1000);
    return 0;
  }

  v37 = *(a2 + 7);
  v47 = *(a2 + 6);
  v48 = v37;
  v49 = *(a2 + 8);
  v38 = *(a2 + 5);
  v45 = *(a2 + 4);
  v46 = v38;
  v44 = v69[0];
  v39 = _s12ShazamEvents5VenueV17StructuredAddressV2eeoiySbAE_AEtFZ_0(&v50, &v44);
  v42[2] = v46;
  v42[3] = v47;
  v42[4] = v48;
  v42[5] = v49;
  v42[0] = v44;
  v42[1] = v45;
  sub_1E0FF73BC(v68, v43);
  sub_1E0FF73BC(v69, v43);
  sub_1E0FF73BC(&v56, v43);
  sub_1E0FF750C(v42);
  v43[2] = v52;
  v43[3] = v53;
  v43[4] = v54;
  v43[5] = v55;
  v43[0] = v50;
  v43[1] = v51;
  sub_1E0FF750C(v43);
  v44 = v26;
  v40 = *(a1 + 7);
  v47 = *(a1 + 6);
  v48 = v40;
  v49 = *(a1 + 8);
  v41 = *(a1 + 5);
  v45 = *(a1 + 4);
  v46 = v41;
  sub_1E0FF0440(&v44, &qword_1ECE89018, &qword_1E10B0AD0);
  result = 0;
  if ((v39 & 1) != 0 && v14 == v25)
  {
    return v13 == v24;
  }

  return result;
}

uint64_t sub_1E0FF73BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89018, &qword_1E10B0AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E0FF742C()
{
  result = qword_1EE17E850[0];
  if (!qword_1EE17E850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17E850);
  }

  return result;
}

unint64_t sub_1E0FF7480()
{
  result = qword_1ECE89028;
  if (!qword_1ECE89028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89028);
  }

  return result;
}

unint64_t sub_1E0FF753C()
{
  result = qword_1EE17E838;
  if (!qword_1EE17E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E838);
  }

  return result;
}

unint64_t sub_1E0FF7590()
{
  result = qword_1ECE89040;
  if (!qword_1ECE89040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89040);
  }

  return result;
}

unint64_t sub_1E0FF75E8()
{
  result = qword_1ECE89050;
  if (!qword_1ECE89050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89050);
  }

  return result;
}

unint64_t sub_1E0FF7640()
{
  result = qword_1ECE89058[0];
  if (!qword_1ECE89058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE89058);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents5VenueV17StructuredAddressVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1E0FF76E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_1E0FF772C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E0FF77A4(void *a1, __n128 a2, __n128 a3)
{
  v16[14] = 0;
  v17 = &type metadata for Venue;
  v4 = a1[2];
  if (v4)
  {
    MEMORY[0x1EEE9AC00](a2, a3);
    v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v7 = a1[3];
    *v6 = sub_1E10AE20C();
    v8 = v6 + 1;
    v9 = (a1[4] & 0xFFFFFFFFFFFFFFFELL);
    do
    {
      v10 = *v9++;
      *v8++ = sub_1E10AE20C();
      --v4;
    }

    while (v4);
    result = swift_getTupleTypeMetadata();
    if (v12 <= 0x3F)
    {
LABEL_8:
      v16[15] = 0;
      v18 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  else
  {
    v13 = a1[3];
    result = sub_1E10AE20C();
    if (v14 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v15 <= 0x3F)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1E0FF7944(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1E0FF79A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E0FF7A2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E0FF7ABC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E0FF7B80()
{
  result = qword_1ECE890E0;
  if (!qword_1ECE890E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE890E0);
  }

  return result;
}

unint64_t sub_1E0FF7BD8()
{
  result = qword_1ECE890E8;
  if (!qword_1ECE890E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE890E8);
  }

  return result;
}

unint64_t sub_1E0FF7C30()
{
  result = qword_1ECE890F0;
  if (!qword_1ECE890F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE890F0);
  }

  return result;
}

unint64_t sub_1E0FF7C88()
{
  result = qword_1ECE890F8;
  if (!qword_1ECE890F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE890F8);
  }

  return result;
}

unint64_t sub_1E0FF7CE0()
{
  result = qword_1EE17E840;
  if (!qword_1EE17E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E840);
  }

  return result;
}

unint64_t sub_1E0FF7D38()
{
  result = qword_1EE17E848;
  if (!qword_1EE17E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E848);
  }

  return result;
}

uint64_t sub_1E0FF7D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632941 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E10BF5C0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1E0FF7F90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F69676572 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x497972746E756F63 && a2 == 0xEE0065646F436F73)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t static EventCategory.== infix<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t sub_1E0FF822C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED0000656D614E64)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E0FF8338(char a1)
{
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](a1 & 1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF8380(char a1)
{
  if (a1)
  {
    return 0x657A696C61636F6CLL;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

BOOL sub_1E0FF83C4(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_1E0FF8300(*a1, *a2);
}

uint64_t sub_1E0FF83D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E0FF8338(*v1);
}

uint64_t sub_1E0FF83E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_1E0FF8310(a1, *v2);
}

uint64_t sub_1E0FF83F8(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_1E0FF8310(v7, *v2);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF8440(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E0FF8380(*v1);
}

uint64_t sub_1E0FF8450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E0FF822C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E0FF8480@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_1E0FF8CD4();
  *a2 = result;
  return result;
}

uint64_t sub_1E0FF84AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E0FF8500(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t EventCategory.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a3;
  v16[0] = a4;
  v16[1] = a5;
  type metadata accessor for EventCategory.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_1E10AE8BC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v16 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA5C();
  v18 = 0;
  v14 = v16[3];
  sub_1E10AE86C();
  if (!v14)
  {
    v17 = 1;
    sub_1E10AE83C();
  }

  return (*(v7 + 8))(v12, v6);
}

uint64_t EventCategory.init(from:)(uint64_t *a1)
{
  type metadata accessor for EventCategory.CodingKeys();
  swift_getWitnessTable();
  v3 = sub_1E10AE81C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1E10AEA3C();
  if (!v1)
  {
    v14 = 0;
    v10 = sub_1E10AE7BC();
    v13 = 1;
    sub_1E10AE78C();
    (*(v4 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1E0FF8904@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  result = EventCategory.init(from:)(a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v8;
    a3[2] = v9;
    a3[3] = v10;
  }

  return result;
}

uint64_t sub_1E0FF893C(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return EventCategory.encode(to:)(a1, *v2, v2[1], v2[2], v2[3]);
}

uint64_t EventCategory.hashValue.getter()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF89B8()
{
  v1 = *v0;
  v2 = v0[1];
  return EventCategory.hashValue.getter();
}

uint64_t sub_1E0FF89C8()
{
  sub_1E10AE9CC();
  EventCategory.hash(into:)(v2, *v0, v0[1]);
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF8A58()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E0FF8AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E0FF8AE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for TicketAttribution.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TicketAttribution.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t TicketAttribution.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TicketAttribution.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TicketAttribution() + 20);
  v4 = sub_1E10ADBBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for TicketAttribution()
{
  result = qword_1ECE89128;
  if (!qword_1ECE89128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E0FF8DD4()
{
  if (*v0)
  {
    result = 7107189;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_1E0FF8E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E0FF8EDC(uint64_t a1)
{
  v2 = sub_1E0FF9188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FF8F18(uint64_t a1)
{
  v2 = sub_1E0FF9188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static TicketAttribution.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for TicketAttribution() + 20);

  return sub_1E10ADB8C();
}

uint64_t TicketAttribution.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89108, &qword_1E10B1260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF9188();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  v17[15] = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v15 = *(type metadata accessor for TicketAttribution() + 20);
    v17[14] = 1;
    sub_1E10ADBBC();
    sub_1E0FF991C(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

unint64_t sub_1E0FF9188()
{
  result = qword_1ECE89110;
  if (!qword_1ECE89110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89110);
  }

  return result;
}

uint64_t TicketAttribution.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = *(type metadata accessor for TicketAttribution() + 20);
  sub_1E10ADBBC();
  sub_1E0FF991C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  return sub_1E10ADFFC();
}

uint64_t TicketAttribution.hashValue.getter()
{
  sub_1E10AE9CC();
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = *(type metadata accessor for TicketAttribution() + 20);
  sub_1E10ADBBC();
  sub_1E0FF991C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t TicketAttribution.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v29 = sub_1E10ADBBC();
  v26 = *(v29 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89118, &qword_1E10B1268);
  v28 = *(v30 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for TicketAttribution();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FF9188();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v22 = v28;
  v21 = v29;
  v32 = 0;
  *v19 = sub_1E10AE7BC();
  v19[1] = v23;
  v31 = 1;
  sub_1E0FF991C(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
  sub_1E10AE7FC();
  (*(v22 + 8))(v13, v30);
  (*(v26 + 32))(v19 + *(v25 + 20), v8, v21);
  sub_1E0FF9814(v19, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E0FF9878(v19);
}

uint64_t sub_1E0FF963C(uint64_t a1)
{
  sub_1E10AE9CC();
  v3 = *v1;
  v4 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v5 = *(a1 + 20);
  sub_1E10ADBBC();
  sub_1E0FF991C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF96E4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = *(a2 + 20);
  sub_1E10ADBBC();
  sub_1E0FF991C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E0FF9770(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  v4 = *v2;
  v5 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = *(a2 + 20);
  sub_1E10ADBBC();
  sub_1E0FF991C(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E0FF9814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TicketAttribution();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FF9878(uint64_t a1)
{
  v2 = type metadata accessor for TicketAttribution();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E0FF991C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E0FF9994(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);

  return sub_1E10ADB8C();
}

uint64_t sub_1E0FF9A40()
{
  result = sub_1E10ADBBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E0FF9AD0()
{
  result = qword_1ECE89138;
  if (!qword_1ECE89138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89138);
  }

  return result;
}

unint64_t sub_1E0FF9B28()
{
  result = qword_1ECE89140;
  if (!qword_1ECE89140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89140);
  }

  return result;
}

unint64_t sub_1E0FF9B80()
{
  result = qword_1ECE89148;
  if (!qword_1ECE89148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89148);
  }

  return result;
}

id sub_1E0FF9BD4()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69CDFD8]);
  v1 = sub_1E10AE04C();
  v2 = sub_1E10AE04C();
  v3 = sub_1E10AE04C();
  v4 = [v0 initWithBaseDictionaryKey:v1 profile:v2 profileVersion:v3];

  v5 = sub_1E10AE04C();
  sub_1E10AE3DC();
  v6 = sub_1E10AE04C();

  [v4 addBagKey:v5 defaultValue:{v6, 0, 0xE000000000000000}];

  v7 = sub_1E10AE04C();
  sub_1E10AE8DC();
  v8 = sub_1E10AE04C();

  [v4 addBagKey:v7 defaultValue:{v8, 5}];

  v9 = sub_1E10AE04C();
  sub_1E10AE8DC();
  v10 = sub_1E10AE04C();

  [v4 addBagKey:v9 defaultValue:{v10, 10}];

  v11 = sub_1E10AE04C();
  sub_1E10AE3DC();
  v12 = sub_1E10AE04C();

  [v4 addBagKey:v11 defaultValue:{v12, 0, 0xE000000000000000}];

  return v4;
}

uint64_t sub_1E0FF9EA4()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_1E0FF9FB8;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_18;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E0FF9FB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1E0FFB678;
  }

  else
  {
    v3 = sub_1E0FFA0C8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFA0C8()
{
  v1 = v0[27];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[29] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E0FFA240;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89158, &unk_1E10B1498);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E0FFA350;
  v0[21] = &block_descriptor_21;
  v0[22] = v4;
  [v1 doubleBackedByStringForKey:v3 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E0FFA240()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1E0FFB674;
  }

  else
  {
    v3 = sub_1E0FFB670;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFA350(uint64_t a1, void *a2, double a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v6 = swift_allocError();
    *v7 = a2;
    v8 = a2;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a3;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E0FFA448()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_1E0FFA55C;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_25;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E0FFA55C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1E0FFA958;
  }

  else
  {
    v3 = sub_1E0FFA66C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFA66C()
{
  v1 = v0[27];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[29] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E0FFA7DC;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89160, &qword_1E10B14B0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E0FFAA34;
  v0[21] = &block_descriptor_28;
  v0[22] = v4;
  [v1 integerBackedByStringForKey:v3 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E0FFA7DC()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1E0FFA9C4;
  }

  else
  {
    v3 = sub_1E0FFA8EC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFA8EC()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E0FFA958()
{
  v1 = *(v0 + 224);
  swift_willThrow();
  v2 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E0FFA9C4()
{
  v1 = v0[29];
  v2 = v0[30];
  swift_willThrow();

  v3 = v0[30];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E0FFAA34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1E0FFAB20()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_1E0FFAC34;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_11;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E0FFAC34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1E0FFB678;
  }

  else
  {
    v3 = sub_1E0FFAD44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFAD44()
{
  v1 = v0[27];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[29] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E0FFAEB4;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89160, &qword_1E10B14B0);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E0FFAA34;
  v0[21] = &block_descriptor_14;
  v0[22] = v4;
  [v1 integerBackedByStringForKey:v3 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E0FFAEB4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1E0FFB674;
  }

  else
  {
    v3 = sub_1E0FFB66C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFAFE4()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_1E0FFB0F8;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_0;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E0FFB0F8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_1E0FFA958;
  }

  else
  {
    v3 = sub_1E0FFB208;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFB208()
{
  v1 = v0[27];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[29] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E0FFB380;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89158, &unk_1E10B1498);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E0FFA350;
  v0[21] = &block_descriptor_7;
  v0[22] = v4;
  [v1 doubleBackedByStringForKey:v3 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E0FFB380()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_1E0FFA9C4;
  }

  else
  {
    v3 = sub_1E0FFB490;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E0FFB490()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);
  v3.n128_u64[0] = v1;

  return v2(v3);
}

uint64_t sub_1E0FFB50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_1E0FFB584(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E0FFB5CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E0FFB67C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89180, &qword_1E10B1658);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FFDC80();
  sub_1E10AEA5C();
  v18 = 0;
  sub_1E10AE86C();
  if (!v5)
  {
    v17 = 1;
    sub_1E10AE86C();
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E0FFB810()
{
  if (*v0)
  {
    result = 6910581;
  }

  else
  {
    result = 1953722216;
  }

  *v0;
  return result;
}

uint64_t sub_1E0FFB83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953722216 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E0FFB918(uint64_t a1)
{
  v2 = sub_1E0FFDC80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FFB954(uint64_t a1)
{
  v2 = sub_1E0FFDC80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E0FFB990@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E0FFDCD4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1E0FFB9E0()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    type metadata accessor for NetworkRunner();
    swift_allocObject();
    v1 = sub_1E107A498(2);
    v3 = *(v2 + 160);
    *(v2 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E0FFBA58(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_1E10AD9AC();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v6 = sub_1E10ADBBC();
  v2[26] = v6;
  v7 = *(v6 - 8);
  v2[27] = v7;
  v8 = *(v7 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89168, &qword_1E10B15C8) - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  v10 = type metadata accessor for AccessTokenResource();
  v2[31] = v10;
  v11 = *(v10 - 8);
  v2[32] = v11;
  v12 = *(v11 + 64) + 15;
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E0FFBC2C, v1, 0);
}

uint64_t sub_1E0FFBC2C()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[22];
  sub_1E0FFD440(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E0FF0440(v0[30], &qword_1ECE89168, &qword_1E10B15C8);
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v5 = sub_1E10ADF9C();
    v0[36] = __swift_project_value_buffer(v5, qword_1EE185540);
    v6 = sub_1E10ADF7C();
    v7 = sub_1E10AE43C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E0FDF000, v6, v7, "Generate new access token", v8, 2u);
      MEMORY[0x1E12EE9E0](v8, -1, -1);
    }

    v9 = v0[22];

    sub_1E0FF33C0(v9 + 112, (v0 + 2));
    v10 = swift_task_alloc();
    v0[37] = v10;
    *v10 = v0;
    v10[1] = sub_1E0FFBF44;
    v11 = v0[29];

    return sub_1E105E468(v11);
  }

  else
  {
    sub_1E0FFDB14(v0[30], v0[35]);
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v13 = sub_1E10ADF9C();
    __swift_project_value_buffer(v13, qword_1EE185540);
    v14 = sub_1E10ADF7C();
    v15 = sub_1E10AE43C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E0FDF000, v14, v15, "Using cached access token", v16, 2u);
      MEMORY[0x1E12EE9E0](v16, -1, -1);
    }

    v17 = v0[35];
    v18 = v0[21];

    sub_1E0FFDB14(v17, v18);
    v20 = v0[34];
    v19 = v0[35];
    v21 = v0[33];
    v23 = v0[29];
    v22 = v0[30];
    v24 = v0[28];
    v25 = v0[25];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1E0FFBF44()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v4 = *v1;
  *(v2 + 304) = v0;

  v5 = *(v2 + 176);
  sub_1E0FF3C74(v2 + 16);
  if (v0)
  {
    v6 = sub_1E0FFD384;
  }

  else
  {
    v6 = sub_1E0FFC07C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1E0FFC07C()
{
  sub_1E0FF33C0(*(v0 + 176) + 112, v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E0FFC0EC, 0, 0);
}

uint64_t sub_1E0FFC0EC()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v2 = swift_task_alloc();
  v0[39] = v2;
  *v2 = v0;
  v2[1] = sub_1E0FFC18C;

  return sub_1E1061FB4(v1);
}

uint64_t sub_1E0FFC18C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 312);
  v8 = *v3;
  v4[40] = a1;
  v4[41] = a2;
  v4[42] = v2;

  if (v2)
  {
    v6 = sub_1E0FFC550;
  }

  else
  {
    v6 = sub_1E0FFC2A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E0FFC2A4()
{
  v1 = *(v0 + 176);
  sub_1E0FF3C74(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E0FFC310, v1, 0);
}

uint64_t sub_1E0FFC310()
{
  sub_1E0FF33C0(*(v0 + 176) + 112, v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E0FFC380, 0, 0);
}

uint64_t sub_1E0FFC380()
{
  v1 = *__swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  v2 = swift_task_alloc();
  v0[43] = v2;
  *v2 = v0;
  v2[1] = sub_1E0FFC420;

  return sub_1E106214C(v1);
}

uint64_t sub_1E0FFC420(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 344);
  v7 = *v3;
  v5[44] = a2;
  v5[45] = v2;

  if (v2)
  {
    v8 = v5[41];

    v9 = sub_1E0FFC9C8;
  }

  else
  {
    v5[46] = a1;
    v9 = sub_1E0FFC690;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E0FFC550()
{
  v1 = *(v0 + 176);
  sub_1E0FF3C74(v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E0FFC5BC, v1, 0);
}

uint64_t sub_1E0FFC5BC()
{
  (*(v0[27] + 8))(v0[29], v0[26]);
  v1 = v0[42];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0FFC690()
{
  v1 = *(v0 + 176);
  sub_1E0FF3C74(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E0FFC6FC, v1, 0);
}

uint64_t sub_1E0FFC6FC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 352);
  v28 = *(v0 + 320);
  v4 = *(v0 + 200);
  (*(*(v0 + 216) + 16))(*(v0 + 224), *(v0 + 232), *(v0 + 208));
  sub_1E10AD97C();
  sub_1E10AD95C();
  sub_1E10AD98C();
  v5 = sub_1E10ADA3C();
  *(v0 + 376) = v5;
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1E10ADA2C();
  *(v0 + 136) = v28;
  *(v0 + 152) = v2;
  *(v0 + 160) = v3;
  sub_1E0FFDBD4();
  sub_1E10ADA1C();
  v8 = *(v0 + 352);
  v9 = *(v0 + 328);
  if (v1)
  {
    v29 = *(v0 + 232);
    v10 = *(v0 + 208);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v14 = *(v0 + 184);

    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v29, v10);
    v16 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 264);
    v19 = *(v0 + 232);
    v18 = *(v0 + 240);
    v20 = *(v0 + 224);
    v21 = *(v0 + 200);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 200);
    v25 = *(v0 + 176);

    sub_1E10AD99C();
    *(v0 + 384) = sub_1E0FFB9E0();
    v26 = swift_task_alloc();
    *(v0 + 392) = v26;
    *v26 = v0;
    v26[1] = sub_1E0FFCB08;
    v27 = *(v0 + 200);

    return sub_1E107A5C4(v27);
  }
}

uint64_t sub_1E0FFC9C8()
{
  v1 = *(v0 + 176);
  sub_1E0FF3C74(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1E0FFCA34, v1, 0);
}

uint64_t sub_1E0FFCA34()
{
  (*(v0[27] + 8))(v0[29], v0[26]);
  v1 = v0[45];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0FFCB08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v7 = *(*v4 + 392);
  v8 = *v4;
  v6[50] = a1;
  v6[51] = a2;
  v6[52] = v3;

  if (v3)
  {
    v9 = v6[22];
    v10 = sub_1E0FFD288;
  }

  else
  {
    v11 = v6[48];
    v12 = v6[22];

    v10 = sub_1E0FFCC50;
    v9 = v12;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1E0FFCC50()
{
  v71 = v0;
  v1 = v0[51];
  v2 = v0[52];
  v3 = v0[50];
  v4 = v0[34];
  v5 = v0[31];
  v6 = sub_1E10ADA0C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1E10AD9FC();
  sub_1E0FFDC28(&qword_1EE17F530, type metadata accessor for AccessTokenResource);
  sub_1E10AD9EC();
  v10 = v0[50];
  v9 = v0[51];
  if (v2)
  {

    sub_1E0FFDAC0(v10, v9);
    v11 = v0[29];
    v12 = v0[26];
    v13 = v0[27];
    (*(v0[24] + 8))(v0[25], v0[23]);
    (*(v13 + 8))(v11, v12);
    v15 = v0[34];
    v14 = v0[35];
    v16 = v0[33];
    v18 = v0[29];
    v17 = v0[30];
    v19 = v0[28];
    v20 = v0[25];

    v21 = v0[1];
  }

  else
  {
    v22 = v0[47];
    v23 = v0[34];
    v24 = v0[31];

    sub_1E0FFDAC0(v10, v9);
    v25 = *(v22 + 48);
    v26 = *(v22 + 52);
    swift_allocObject();
    sub_1E10ADA2C();
    sub_1E0FFDC28(&qword_1EE17F538, type metadata accessor for AccessTokenResource);
    v27 = sub_1E10ADA1C();
    v28 = v0[36];
    v30 = v0[33];
    v29 = v0[34];
    v31 = v0[22];
    v32 = v27;
    v34 = v33;

    v35 = *(v31 + 152);
    v36 = sub_1E10ADBCC();
    v37 = sub_1E10AE04C();
    [v35 setObject:v36 forKey:v37];

    sub_1E0FFDAC0(v32, v34);
    sub_1E0FF3CC8(v29, v30);
    v38 = sub_1E10ADF7C();
    v39 = sub_1E10AE43C();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[33];
    if (v40)
    {
      v42 = v0[31];
      v43 = v0[27];
      v68 = v0[26];
      v69 = v0[29];
      v44 = v0[24];
      v66 = v0[23];
      v67 = v0[25];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v70 = v46;
      *v45 = 136315138;
      v47 = *(v42 + 20);
      sub_1E10ADCBC();
      sub_1E0FFDC28(&qword_1ECE89178, MEMORY[0x1E6969530]);
      v48 = sub_1E10AE8DC();
      v50 = v49;
      sub_1E0FFDB78(v41);
      v51 = sub_1E1078CFC(v48, v50, &v70);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_1E0FDF000, v38, v39, "Successfully cached access token, valid until %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1E12EE9E0](v46, -1, -1);
      MEMORY[0x1E12EE9E0](v45, -1, -1);

      (*(v44 + 8))(v67, v66);
      (*(v43 + 8))(v69, v68);
    }

    else
    {
      v52 = v0[29];
      v53 = v0[26];
      v54 = v0[27];
      v56 = v0[24];
      v55 = v0[25];
      v57 = v0[23];

      sub_1E0FFDB78(v41);
      (*(v56 + 8))(v55, v57);
      (*(v54 + 8))(v52, v53);
    }

    sub_1E0FFDB14(v0[34], v0[21]);
    v59 = v0[34];
    v58 = v0[35];
    v60 = v0[33];
    v62 = v0[29];
    v61 = v0[30];
    v63 = v0[28];
    v64 = v0[25];

    v21 = v0[1];
  }

  return v21();
}

uint64_t sub_1E0FFD288()
{
  v1 = v0[48];

  v2 = v0[52];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[27];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v5 + 8))(v3, v4);
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];
  v12 = v0[25];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E0FFD384()
{
  v1 = v0[38];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[25];

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E0FFD440@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E10ADCBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89168, &qword_1E10B15C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for AccessTokenResource();
  v47 = *(v15 - 8);
  v16 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + 152);
  v22 = sub_1E10AE04C();
  v23 = [v21 dataForKey_];

  if (v23)
  {
    v46 = a1;
    v24 = sub_1E10ADBDC();
    v26 = v25;

    v27 = sub_1E10ADA0C();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    sub_1E0FFDC28(&qword_1EE17F530, type metadata accessor for AccessTokenResource);
    sub_1E10AD9EC();

    v36 = *(v47 + 56);
    v47 += 56;
    v36(v14, 0, 1, v15);
    sub_1E0FFDB14(v14, v20);
    v37 = *(v15 + 20);
    sub_1E10ADC9C();
    v38 = sub_1E10ADC4C();
    (*(v4 + 8))(v9, v3);
    if (v38)
    {
      sub_1E0FFDAC0(v24, v26);
      v39 = v46;
      sub_1E0FFDB14(v20, v46);
      return (v36)(v39, 0, 1, v15);
    }

    else
    {
      v40 = v36;
      if (qword_1EE180170 != -1)
      {
        swift_once();
      }

      v41 = sub_1E10ADF9C();
      __swift_project_value_buffer(v41, qword_1EE185540);
      v42 = sub_1E10ADF7C();
      v43 = sub_1E10AE43C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_1E0FDF000, v42, v43, "Cached access token expired, generate a new one", v44, 2u);
        MEMORY[0x1E12EE9E0](v44, -1, -1);
      }

      sub_1E0FFDAC0(v24, v26);

      sub_1E0FFDB78(v20);
      return v40(v46, 1, 1, v15);
    }
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v30 = sub_1E10ADF9C();
    __swift_project_value_buffer(v30, qword_1EE185540);
    v31 = sub_1E10ADF7C();
    v32 = sub_1E10AE43C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1E0FDF000, v31, v32, "No cached access token", v33, 2u);
      MEMORY[0x1E12EE9E0](v33, -1, -1);
    }

    v34 = *(v47 + 56);

    return v34(a1, 1, 1, v15);
  }
}

uint64_t sub_1E0FFDA54()
{
  sub_1E0FF3C74(v0 + 112);

  v1 = *(v0 + 160);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E0FFDAC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E0FFDB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessTokenResource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E0FFDB78(uint64_t a1)
{
  v2 = type metadata accessor for AccessTokenResource();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E0FFDBD4()
{
  result = qword_1EE17F678;
  if (!qword_1EE17F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F678);
  }

  return result;
}

uint64_t sub_1E0FFDC28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E0FFDC80()
{
  result = qword_1EE17F690;
  if (!qword_1EE17F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F690);
  }

  return result;
}

uint64_t sub_1E0FFDCD4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89188, &qword_1E10B1660);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FFDC80();
  sub_1E10AEA3C();
  if (!v1)
  {
    v14 = 0;
    v10 = sub_1E10AE7BC();
    v13 = 1;
    sub_1E10AE7BC();
    (*(v4 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1E0FFDECC()
{
  result = qword_1ECE89190;
  if (!qword_1ECE89190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89190);
  }

  return result;
}

unint64_t sub_1E0FFDF24()
{
  result = qword_1EE17F680;
  if (!qword_1EE17F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F680);
  }

  return result;
}

unint64_t sub_1E0FFDF7C()
{
  result = qword_1EE17F688;
  if (!qword_1EE17F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F688);
  }

  return result;
}

uint64_t sub_1E0FFDFD0()
{
  v0 = sub_1E10ADF9C();
  __swift_allocate_value_buffer(v0, qword_1EE185540);
  __swift_project_value_buffer(v0, qword_1EE185540);
  return sub_1E10ADF8C();
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

uint64_t sub_1E0FFE0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ticket();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10, v11);
  v14 = (&v25 - v13);
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_20:
    v23 = 0;
    return v23 & 1;
  }

  if (v15 && a1 != a2)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = a1 + v16;
    v18 = a2 + v16;
    v19 = *(v12 + 72);
    while (1)
    {
      sub_1E1006420(v17, v14, type metadata accessor for Ticket);
      sub_1E1006420(v18, v9, type metadata accessor for Ticket);
      v20 = *v14 == *v9 && v14[1] == v9[1];
      if (!v20 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v21 = v14[2] == v9[2] && v14[3] == v9[3];
      if (!v21 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v22 = *(v4 + 24);
      v23 = sub_1E10ADB8C();
      sub_1E1006488(v9, type metadata accessor for Ticket);
      sub_1E1006488(v14, type metadata accessor for Ticket);
      if (v23)
      {
        v18 += v19;
        v17 += v19;
        if (--v15)
        {
          continue;
        }
      }

      return v23 & 1;
    }

    sub_1E1006488(v9, type metadata accessor for Ticket);
    sub_1E1006488(v14, type metadata accessor for Ticket);
    goto LABEL_20;
  }

  v23 = 1;
  return v23 & 1;
}

BOOL sub_1E0FFE2DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[7];
        v16[6] = v3[6];
        v16[7] = v5;
        v16[8] = v3[8];
        v6 = v3[3];
        v16[2] = v3[2];
        v16[3] = v6;
        v7 = v3[5];
        v16[4] = v3[4];
        v16[5] = v7;
        v8 = v3[1];
        v16[0] = *v3;
        v16[1] = v8;
        v9 = v4[7];
        v17[6] = v4[6];
        v17[7] = v9;
        v17[8] = v4[8];
        v10 = v4[3];
        v17[2] = v4[2];
        v17[3] = v10;
        v11 = v4[5];
        v17[4] = v4[4];
        v17[5] = v11;
        v12 = v4[1];
        v17[0] = *v4;
        v17[1] = v12;
        sub_1E0FEDC50(v16, v15, &qword_1ECE88CE0, &qword_1E10B6B50);
        sub_1E0FEDC50(v17, v15, &qword_1ECE88CE0, &qword_1E10B6B50);
        v13 = sub_1E0FFED0C(v16, v17);
        sub_1E0FF0440(v17, &qword_1ECE88CE0, &qword_1E10B6B50);
        sub_1E0FF0440(v16, &qword_1ECE88CE0, &qword_1E10B6B50);
        if (!v13)
        {
          break;
        }

        v3 += 9;
        v4 += 9;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t sub_1E0FFE42C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E0FFE4BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E0FFE58C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v47 = v2;
  v48 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 80);
    v34 = *(v5 + 64);
    v35 = v8;
    v36 = *(v5 + 96);
    v9 = *(v5 + 16);
    v31[0] = *v5;
    v31[1] = v9;
    v10 = *(v5 + 48);
    v32 = *(v5 + 32);
    v33 = v10;
    v24 = v31[0];
    v25 = v9;
    v26 = v32;
    v27 = v10;
    v28 = v34;
    v29 = v8;
    v30 = v36;
    v11 = *(v6 + 80);
    v40 = *(v6 + 64);
    v41 = v11;
    v42 = *(v6 + 96);
    v12 = *(v6 + 16);
    v37[0] = *v6;
    v37[1] = v12;
    v13 = *(v6 + 48);
    v38 = *(v6 + 32);
    v39 = v13;
    v17 = v37[0];
    v18 = v12;
    v19 = v38;
    v20 = v13;
    v21 = v40;
    v22 = v11;
    v23 = v42;
    sub_1E0FF02C8(v31, v16);
    sub_1E0FF02C8(v37, v16);
    v14 = _s12ShazamEvents5MusicV6ArtistV2eeoiySbAE_AEtFZ_0(&v24, &v17);
    v43[4] = v21;
    v43[5] = v22;
    v44 = v23;
    v43[0] = v17;
    v43[1] = v18;
    v43[2] = v19;
    v43[3] = v20;
    sub_1E0FF0324(v43);
    v45[4] = v28;
    v45[5] = v29;
    v46 = v30;
    v45[0] = v24;
    v45[1] = v25;
    v45[2] = v26;
    v45[3] = v27;
    sub_1E0FF0324(v45);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 104;
    v5 += 104;
  }

  return 1;
}

uint64_t sub_1E0FFE6FC(uint64_t a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for Music() - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v21 - v12);
  v14 = *(a1 + 16);
  if (v14 == *(a2 + 16))
  {
    if (!v14 || a1 == a2)
    {
      v19 = 1;
    }

    else
    {
      v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = a1 + v15;
      v17 = a2 + v15;
      v18 = *(v11 + 72);
      do
      {
        sub_1E1006420(v16, v13, type metadata accessor for Music);
        sub_1E1006420(v17, v8, type metadata accessor for Music);
        v19 = _s12ShazamEvents5MusicV2eeoiySbAC_ACtFZ_0(v13, v8);
        sub_1E1006488(v8, type metadata accessor for Music);
        sub_1E1006488(v13, type metadata accessor for Music);
        if ((v19 & 1) == 0)
        {
          break;
        }

        v17 += v18;
        v16 += v18;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1E0FFE8B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2); i += 4)
    {
      v6 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v6 && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E0FFE958(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 72);
  for (i = (a2 + 40); ; i += 6)
  {
    result = 0;
    if (*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i)
    {
      break;
    }

    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = i[3];
    v9 = i[4];
    if ((*(v3 - 3) != i[1] || *(v3 - 2) != i[2]) && (sub_1E10AE8FC() & 1) == 0 || (v6 != v8 || v7 != v9) && (sub_1E10AE8FC() & 1) == 0)
    {
      return 0;
    }

    v3 += 6;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1E0FFEA58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 80)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 80);
      v23 = v7;
      v24 = *(a1 + i + 72);
      v22 = *(a1 + i + 88);
      v19 = *(a1 + i + 104);
      v20 = *(a1 + i + 96);
      v8 = *(a2 + i + 48);
      v9 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a2 + i + 80);
      v21 = *(a2 + i + 88);
      v17 = *(a2 + i + 104);
      v18 = *(a2 + i + 96);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_1E10AE8FC() & 1) == 0)
      {
        break;
      }

      if (v4 == v8 && v5 == v9)
      {
        result = 0;
      }

      else
      {
        v14 = sub_1E10AE8FC();
        result = 0;
        if ((v14 & 1) == 0)
        {
          return result;
        }
      }

      if (v6 != v10 || v24 != v11)
      {
        return result;
      }

      if ((v23 != v12 || v22 != v21) && (sub_1E10AE8FC() & 1) == 0 || (v20 != v18 || v19 != v17) && (sub_1E10AE8FC() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1E0FFEBF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1E0FEE058(v24, v15);
    sub_1E0FEE058(v27, v15);
    v13 = _s12ShazamEvents5SportV10CompetitorV2eeoiySbAE_AEtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1E0FEE090(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1E0FEE090(v31);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

BOOL sub_1E0FFED0C(__int128 *a1, uint64_t *a2)
{
  v4 = a1[5];
  v5 = a1[7];
  v6 = a1[8];
  *&v31[16] = a1[6];
  v32 = v5;
  v33 = v6;
  v7 = a1[1];
  v8 = a1[3];
  v9 = a1[4];
  v30[1] = a1[2];
  v30[2] = v8;
  v30[3] = v9;
  *v31 = v4;
  v29 = *a1;
  v30[0] = v7;
  v10 = *(a2 + 5);
  v11 = *(a2 + 7);
  v12 = *(a2 + 8);
  *&v26[16] = *(a2 + 6);
  v27 = v11;
  v28 = v12;
  v13 = *(a2 + 1);
  v14 = *(a2 + 3);
  v15 = *(a2 + 4);
  v25[1] = *(a2 + 2);
  v25[2] = v14;
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *a2;
  v19 = a2[1];
  v25[3] = v15;
  *v26 = v10;
  v24 = *a2;
  v25[0] = v13;
  if (v16 != v18 || v17 != v19) && (sub_1E10AE8FC() & 1) == 0 || (_s12ShazamEvents5SportV10CompetitorV2eeoiySbAE_AEtFZ_0(v30, v25) & 1) == 0 || ((*(a1 + 80) ^ *(a2 + 80)))
  {
    return 0;
  }

  if (*&v31[16])
  {
    if (!*&v26[16])
    {
      return 0;
    }

    if (*&v31[8] == *&v26[8])
    {
    }

    else
    {
      v21 = sub_1E10AE8FC();

      if ((v21 & 1) == 0)
      {

        return 0;
      }
    }
  }

  else if (*&v26[16])
  {
    return 0;
  }

  v22 = *(a1 + 17);
  v23 = a2[17];
  if (v22)
  {
    return v23 && *(a1 + 13) == *(a2 + 13) && *(a1 + 14) == *(a2 + 14) && *(a1 + 15) == *(a2 + 15) && (*(a1 + 16) == a2[16] && v22 == v23 || (sub_1E10AE8FC() & 1) != 0);
  }

  return !v23;
}

uint64_t Music.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Music.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Music.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Music()
{
  result = qword_1EE17EB30;
  if (!qword_1EE17EB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Music.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Music() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Music.lineup.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Music() + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t Music.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Music() + 52));
}

uint64_t Music.genres.getter()
{
  v1 = *(v0 + *(type metadata accessor for Music() + 56));
}

uint64_t Music.promotionalContent.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Music() + 60));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t Music.playlists.getter()
{
  v1 = *(v0 + *(type metadata accessor for Music() + 64));
}

uint64_t static Music.Lineup.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(*(a4 + 24) + 8);
  if ((sub_1E10AE22C() & 1) == 0)
  {
    return 0;
  }

  return sub_1E10AE22C();
}

unint64_t sub_1E0FFF364(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 1701667182;
      break;
    case 3:
      result = 1701669236;
      break;
    case 4:
      result = 0x65756E6576;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4C5255626577;
      break;
    case 7:
      result = 0x7075656E696CLL;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x7374656B636974;
      break;
    case 10:
      result = 0x7365726E6567;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x7473696C79616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E0FFF4B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1006024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E0FFF4E0(uint64_t a1)
{
  v2 = sub_1E1004A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E0FFF51C(uint64_t a1)
{
  v2 = sub_1E1004A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Music.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89198, &qword_1E10B1780);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v41 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004A00();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v59 = *v3;
  *(&v59 + 1) = v13;
  LOBYTE(v49) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v59 = *(v3 + 16);
    *(&v59 + 1) = v14;
    v60 = *(v3 + 32);
    LOBYTE(v49) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891A8, &qword_1E10B1788);
    sub_1E0FEDEAC(&qword_1ECE891B0, &qword_1ECE891A8, &qword_1E10B1788);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v59) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Music();
    v18 = v17[7];
    v69 = 3;
    type metadata accessor for Time();
    sub_1E10064E8(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v65 = v19[6];
    v66 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v67 = v19[8];
    v68 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v61 = v19[2];
    v62 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v63 = v19[4];
    v64 = v27;
    v28 = v19[1];
    v59 = *v19;
    v60 = v28;
    v55 = v65;
    v56 = v22;
    v29 = v19[9];
    v57 = v67;
    v58 = v29;
    v51 = v61;
    v52 = v26;
    v53 = v63;
    v54 = v21;
    v49 = v59;
    v50 = v25;
    v48 = 4;
    sub_1E0FE6720(&v59, v47);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v47[6] = v55;
    v47[7] = v56;
    v47[8] = v57;
    v47[9] = v58;
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53;
    v47[5] = v54;
    v47[0] = v49;
    v47[1] = v50;
    sub_1E0FEDAB8(v47);
    v30 = v17[9];
    LOBYTE(v42) = 5;
    type metadata accessor for EventAttribution();
    sub_1E10064E8(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v42) = 6;
    sub_1E10ADBBC();
    sub_1E10064E8(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
    sub_1E10AE85C();
    v32 = (v3 + v17[11]);
    v33 = v32[1];
    v42 = *v32;
    v43 = v33;
    v46 = 7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891B8, &qword_1E10B1790);
    sub_1E0FEDEAC(&qword_1ECE891C0, &qword_1ECE891B8, &qword_1E10B1790);
    sub_1E10AE8AC();

    v34 = v17[12];
    LOBYTE(v42) = 8;
    type metadata accessor for TicketAttribution();
    sub_1E10064E8(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v42 = *(v3 + v17[13]);
    v46 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E1004BC8(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
    v42 = *(v3 + v17[14]);
    v46 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891C8, &qword_1E10B1798);
    sub_1E1004C64(&qword_1ECE891D0, sub_1E1004A54);
    sub_1E10AE8AC();
    v36 = (v3 + v17[15]);
    v37 = *v36;
    v38 = v36[1];
    v40 = v36[2];
    v39 = v36[3];
    v41 = v40;
    v42 = v37;
    v70 = v39;
    v43 = v38;
    v44 = v40;
    v45 = v39;
    v46 = 11;
    sub_1E1004AA8();

    sub_1E10AE8AC();
    v70 = v42;

    v42 = *(v3 + v17[16]);
    v46 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891E8, &qword_1E10B17A0);
    sub_1E1004AFC(&qword_1ECE891F0, sub_1E1004B74);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Music.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v87 = type metadata accessor for TicketAttribution();
  v86 = *(v87 - 8);
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v81 = (&v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v85 = &v80 - v11;
  v83 = sub_1E10ADBBC();
  v84 = *(v83 - 8);
  v12 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v13, v14);
  v80 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v82 = &v80 - v19;
  v20 = type metadata accessor for EventAttribution();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v80 - v30;
  v32 = *v1;
  v33 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v34 = v1[2];
  v35 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v36 = v1[6];
  v37 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v38 = type metadata accessor for Music();
  v39 = v1 + v38[7];
  sub_1E10ADACC();
  sub_1E10064E8(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v40 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E10064E8(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v41 = (v2 + v38[8]);
  v42 = v41[7];
  v94 = v41[6];
  v95 = v42;
  v43 = v41[9];
  v96 = v41[8];
  v97 = v43;
  v44 = v41[3];
  v90 = v41[2];
  v91 = v44;
  v45 = v41[5];
  v92 = v41[4];
  v93 = v45;
  v46 = v41[1];
  v88 = *v41;
  v89 = v46;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v38[9], v31, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v21 + 48))(v31, 1, v20) == 1)
  {
    sub_1E10AE9EC();
    v47 = v83;
  }

  else
  {
    sub_1E0FEDD58(v31, v26, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v48 = *v26;
    v49 = v26[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v50 = *(v20 + 20);
    sub_1E10064E8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    v47 = v83;
    sub_1E10ADFFC();
    sub_1E1006488(v26, type metadata accessor for EventAttribution);
  }

  v51 = v82;
  sub_1E0FEDC50(v2 + v38[10], v82, &qword_1ECE88C78, &qword_1E10B5E50);
  v52 = v84;
  v53 = (*(v84 + 48))(v51, 1, v47);
  v54 = v87;
  if (v53 == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v55 = v80;
    (*(v52 + 32))(v80, v51, v47);
    sub_1E10AE9EC();
    sub_1E10064E8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    (*(v52 + 8))(v55, v47);
  }

  v56 = (v2 + v38[11]);
  v57 = v56[1];
  sub_1E0FEBE48(a1, *v56);
  sub_1E0FEBE48(a1, v57);
  v58 = v85;
  sub_1E0FEDC50(v2 + v38[12], v85, &qword_1ECE88C80, &qword_1E10AF9D0);
  if ((*(v86 + 48))(v58, 1, v54) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v59 = v81;
    sub_1E0FEDD58(v58, v81, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v60 = *v59;
    v61 = v59[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v62 = *(v54 + 20);
    sub_1E10064E8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E1006488(v59, type metadata accessor for TicketAttribution);
  }

  sub_1E0FEBCA4(a1, *(v2 + v38[13]));
  v63 = *(v2 + v38[14]);
  v64 = *(v63 + 16);
  MEMORY[0x1E12EE160](v64);
  if (v64)
  {
    v65 = (v63 + 56);
    do
    {
      v66 = *(v65 - 3);
      v67 = *(v65 - 2);
      v68 = *(v65 - 1);
      v69 = *v65;

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v65 += 4;
      --v64;
    }

    while (v64);
  }

  v70 = (v2 + v38[15]);
  v71 = v70[1];
  v72 = v70[2];
  v73 = v70[3];
  sub_1E0FEC1BC(a1, *v70);
  sub_1E0FEC1BC(a1, v71);
  sub_1E0FEC108(a1, v72);
  sub_1E0FEBFF0(a1, v73);
  v74 = *(v2 + v38[16]);
  result = MEMORY[0x1E12EE160](*(v74 + 16));
  v76 = *(v74 + 16);
  if (v76)
  {
    v77 = (v74 + 40);
    do
    {
      v78 = *(v77 - 1);
      v79 = *v77;

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v77 += 2;
      --v76;
    }

    while (v76);
  }

  return result;
}

uint64_t Music.hashValue.getter()
{
  sub_1E10AE9CC();
  Music.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Music.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v85 = v81 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v86 = v81 - v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v81 - v14;
  v16 = *(*(type metadata accessor for Time() - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89200, &qword_1E10B17A8);
  v87 = *(v88 - 8);
  v21 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = v81 - v24;
  v26 = type metadata accessor for Music();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1[3];
  v32 = a1[4];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1E1004A00();
  v89 = v25;
  v34 = v90;
  sub_1E10AEA3C();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_1(v91);
  }

  v82 = v15;
  v83 = v26;
  v90 = v31;
  LOBYTE(v92) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v36 = *(&v94 + 1);
  v37 = v90;
  *v90 = v94;
  v37[1] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891A8, &qword_1E10B1788);
  LOBYTE(v92) = 1;
  sub_1E0FEDEAC(&qword_1ECE89208, &qword_1ECE891A8, &qword_1E10B1788);
  sub_1E10AE7FC();
  v38 = *(&v94 + 1);
  v37[2] = v94;
  v37[3] = v38;
  *(v37 + 2) = v95;
  LOBYTE(v94) = 2;
  v37[6] = sub_1E10AE7BC();
  v37[7] = v39;
  LOBYTE(v94) = 3;
  sub_1E10064E8(&qword_1EE17EE88, type metadata accessor for Time);
  sub_1E10AE7FC();
  v81[1] = 0;
  v40 = v83;
  sub_1E0FEDD58(v20, v37 + v83[7], type metadata accessor for Time);
  v105 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  v41 = (v37 + v40[8]);
  v42 = v101;
  v41[6] = v100;
  v41[7] = v42;
  v43 = v103;
  v41[8] = v102;
  v41[9] = v43;
  v44 = v97;
  v41[2] = v96;
  v41[3] = v44;
  v45 = v99;
  v41[4] = v98;
  v41[5] = v45;
  v46 = v95;
  *v41 = v94;
  v41[1] = v46;
  type metadata accessor for EventAttribution();
  LOBYTE(v92) = 5;
  sub_1E10064E8(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  v47 = v82;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v47, v37 + v40[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  sub_1E10ADBBC();
  LOBYTE(v92) = 6;
  sub_1E10064E8(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
  v48 = v86;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v48, v37 + v40[10], &qword_1ECE88C78, &qword_1E10B5E50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891B8, &qword_1E10B1790);
  v104 = 7;
  sub_1E0FEDEAC(&qword_1ECE89210, &qword_1ECE891B8, &qword_1E10B1790);
  sub_1E10AE7FC();
  *(v37 + v83[11]) = v92;
  type metadata accessor for TicketAttribution();
  LOBYTE(v92) = 8;
  sub_1E10064E8(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v49 = v85;
  sub_1E10AE7AC();
  v86 = 0;
  sub_1E0FEDEF4(v49, v90 + v83[12], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v104 = 9;
  sub_1E1004BC8(&qword_1ECE88D58, &qword_1ECE88D60);
  v72 = v86;
  sub_1E10AE7FC();
  LODWORD(v85) = v72 == 0;
  v86 = v72;
  if (v72 || (*(v90 + v83[13]) = v92, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891C8, &qword_1E10B1798), v104 = 10, sub_1E1004C64(&qword_1ECE89218, sub_1E1004CDC), v73 = v86, sub_1E10AE7FC(), (v86 = v73) != 0))
  {
    (*(v87 + 8))(v89, v88);
    __swift_destroy_boxed_opaque_existential_1(v91);
    v74 = 0;
    LODWORD(v91) = 0;
  }

  else
  {
    *(v90 + v83[14]) = v92;
    v104 = 11;
    sub_1E1004D30();
    v76 = v86;
    sub_1E10AE7FC();
    v86 = v76;
    if (v76)
    {
      (*(v87 + 8))(v89, v88);
      __swift_destroy_boxed_opaque_existential_1(v91);
      LODWORD(v91) = 0;
      v74 = 1;
    }

    else
    {
      v77 = (v90 + v83[15]);
      v78 = v93;
      *v77 = v92;
      v77[1] = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE891E8, &qword_1E10B17A0);
      v104 = 12;
      sub_1E1004AFC(&qword_1ECE89230, sub_1E1004D84);
      v79 = v86;
      sub_1E10AE7FC();
      v86 = v79;
      if (!v79)
      {
        (*(v87 + 8))(v89, v88);
        v80 = v90;
        *(v90 + v83[16]) = v92;
        sub_1E1006420(v80, v84, type metadata accessor for Music);
        __swift_destroy_boxed_opaque_existential_1(v91);
        return sub_1E1006488(v80, type metadata accessor for Music);
      }

      (*(v87 + 8))(v89, v88);
      __swift_destroy_boxed_opaque_existential_1(v91);
      v74 = 1;
      LODWORD(v91) = 1;
    }
  }

  v75 = v90[1];

  v58 = v90;
  v59 = v90[3];

  v60 = v58[5];

  v61 = v83;
  v50 = v90[7];

  v62 = v90;
  sub_1E1006488(v90 + v61[7], type metadata accessor for Time);
  v51 = (v62 + v61[8]);
  v52 = v51[7];
  v100 = v51[6];
  v101 = v52;
  v53 = v51[9];
  v102 = v51[8];
  v103 = v53;
  v54 = v51[3];
  v96 = v51[2];
  v97 = v54;
  v55 = v51[5];
  v98 = v51[4];
  v99 = v55;
  v56 = v51[1];
  v94 = *v51;
  v95 = v56;
  sub_1E0FEDAB8(&v94);
  sub_1E0FF0440(v62 + v61[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  sub_1E0FF0440(v62 + v61[10], &qword_1ECE88C78, &qword_1E10B5E50);
  v63 = (v62 + v61[11]);
  v65 = *v63;
  v64 = v63[1];

  result = sub_1E0FF0440(v62 + v61[12], &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v85)
  {
    v66 = *(v62 + v61[13]);

    if (v74)
    {
LABEL_7:
      v57 = *(v62 + v61[14]);

      if (v91)
      {
        goto LABEL_11;
      }

      return result;
    }
  }

  else if (v74)
  {
    goto LABEL_7;
  }

  if (v91)
  {
LABEL_11:
    v67 = (v62 + v61[15]);
    v68 = *v67;
    v69 = v67[1];
    v71 = v67[2];
    v70 = v67[3];
  }

  return result;
}

uint64_t sub_1E10015C4()
{
  sub_1E10AE9CC();
  Music.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1001608()
{
  sub_1E10AE9CC();
  Music.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1001688(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265626D656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xEA00000000007372)
  {

    return 1;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1E100175C(char a1)
{
  if (a1)
  {
    return 0x656E696C64616568;
  }

  else
  {
    return 0x737265626D656DLL;
  }
}

uint64_t sub_1E1001798(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1E100175C(*v1);
}

uint64_t sub_1E10017A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1E1001688(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E10017D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E100182C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Music.Artist.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Music.Artist.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Music.Artist.imageAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1E0FEDC50(v8, v7, &qword_1ECE88F38, &qword_1E10B05F8);
}

uint64_t sub_1E1001940(uint64_t a1)
{
  v2 = sub_1E1004DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E100197C(uint64_t a1)
{
  v2 = sub_1E1004DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Music.Artist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89240, &qword_1E10B17B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v18 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[3];
  v18[2] = v1[2];
  v18[1] = v12;
  v13 = *(v1 + 5);
  v28 = *(v1 + 4);
  v29 = v13;
  v30 = v1[12];
  v14 = *(v1 + 3);
  v26 = *(v1 + 2);
  v27 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004DD8();

  sub_1E10AEA5C();
  *&v21 = v10;
  *(&v21 + 1) = v11;
  LOBYTE(v19[0]) = 0;
  sub_1E0FED9C8();
  v16 = v18[3];
  sub_1E10AE8AC();

  if (!v16)
  {
    LOBYTE(v21) = 1;
    sub_1E10AE86C();
    v23 = v28;
    v24 = v29;
    v25 = v30;
    v21 = v26;
    v22 = v27;
    v31 = 2;
    sub_1E0FEDC50(&v26, v19, &qword_1ECE88F38, &qword_1E10B05F8);
    sub_1E1004E2C();
    sub_1E10AE85C();
    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[1] = v22;
    v19[0] = v21;
    sub_1E0FF0440(v19, &qword_1ECE88F38, &qword_1E10B05F8);
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t Music.Artist.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v5)
  {
    return sub_1E10AE9EC();
  }

  v8 = *(v0 + 2);
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = v0[12];
  *&v9 = v0[6];
  *(&v9 + 1) = v5;
  sub_1E10AE9EC();
  v13 = *(v0 + 2);
  v14 = v0[6];
  v15 = v5;
  v6 = *(v0 + 5);
  v16 = *(v0 + 4);
  v17 = v6;
  v18 = v0[12];
  sub_1E1004E80(&v13, v19);
  Artwork.hash(into:)();
  v19[2] = v10;
  v19[3] = v11;
  v20 = v12;
  v19[0] = v8;
  v19[1] = v9;
  return sub_1E1004EDC(v19);
}

uint64_t Music.Artist.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[7];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (v5)
  {
    v8 = *(v0 + 2);
    v10 = *(v0 + 4);
    v11 = *(v0 + 5);
    v12 = v0[12];
    *&v9 = v0[6];
    *(&v9 + 1) = v5;
    sub_1E10AE9EC();
    v13 = *(v0 + 2);
    v14 = v0[6];
    v15 = v5;
    v6 = *(v0 + 5);
    v16 = *(v0 + 4);
    v17 = v6;
    v18 = v0[12];
    sub_1E1004E80(&v13, v19);
    Artwork.hash(into:)();
    v19[2] = v10;
    v19[3] = v11;
    v20 = v12;
    v19[0] = v8;
    v19[1] = v9;
    sub_1E1004EDC(v19);
  }

  else
  {
    sub_1E10AE9EC();
  }

  return sub_1E10AEA0C();
}

uint64_t Music.Artist.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89258, &qword_1E10B17B8);
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004DD8();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v31 = a2;
  LOBYTE(v32) = 0;
  sub_1E0FEDD04();
  v13 = v59;
  sub_1E10AE7FC();
  v14 = v39;
  v30 = v40;
  LOBYTE(v39) = 1;
  v27 = sub_1E10AE7BC();
  v28 = v14;
  v29 = v15;
  v48 = 2;
  sub_1E1004F30();
  sub_1E10AE7AC();
  (*(v12 + 8))(v10, v13);
  v56 = v51;
  v57 = v52;
  v16 = v53;
  v58 = v53;
  v54 = v49;
  v55 = v50;
  v18 = v27;
  v17 = v28;
  v20 = v29;
  v19 = v30;
  *&v32 = v28;
  *(&v32 + 1) = v30;
  *&v33 = v27;
  *(&v33 + 1) = v29;
  v38 = v53;
  v36 = v51;
  v37 = v52;
  v34 = v49;
  v35 = v50;
  v21 = v33;
  v22 = v31;
  *v31 = v32;
  v22[1] = v21;
  *(v22 + 12) = v16;
  v23 = v37;
  v22[4] = v36;
  v22[5] = v23;
  v24 = v35;
  v22[2] = v34;
  v22[3] = v24;
  sub_1E0FF02C8(&v32, &v39);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v39 = v17;
  v40 = v19;
  v41 = v18;
  v42 = v20;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v43 = v54;
  v44 = v55;
  return sub_1E0FF0324(&v39);
}

uint64_t sub_1E1002170@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_1E0FEDC50(v8, v7, &qword_1ECE88F38, &qword_1E10B05F8);
}

uint64_t sub_1E10021D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v5)
  {
    return sub_1E10AE9EC();
  }

  v8 = *(v0 + 2);
  v10 = *(v0 + 4);
  v11 = *(v0 + 5);
  v12 = v0[12];
  *&v9 = v0[6];
  *(&v9 + 1) = v5;
  sub_1E10AE9EC();
  v13 = *(v0 + 2);
  v14 = v0[6];
  v15 = v5;
  v6 = *(v0 + 5);
  v16 = *(v0 + 4);
  v17 = v6;
  v18 = v0[12];
  sub_1E1004E80(&v13, v19);
  Artwork.hash(into:)();
  v19[2] = v10;
  v19[3] = v11;
  v20 = v12;
  v19[0] = v8;
  v19[1] = v9;
  return sub_1E1004EDC(v19);
}

uint64_t sub_1E10022C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[7];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (v5)
  {
    v8 = *(v0 + 2);
    v10 = *(v0 + 4);
    v11 = *(v0 + 5);
    v12 = v0[12];
    *&v9 = v0[6];
    *(&v9 + 1) = v5;
    sub_1E10AE9EC();
    v13 = *(v0 + 2);
    v14 = v0[6];
    v15 = v5;
    v6 = *(v0 + 5);
    v16 = *(v0 + 4);
    v17 = v6;
    v18 = v0[12];
    sub_1E1004E80(&v13, v19);
    Artwork.hash(into:)();
    v19[2] = v10;
    v19[3] = v11;
    v20 = v12;
    v19[0] = v8;
    v19[1] = v9;
    sub_1E1004EDC(v19);
  }

  else
  {
    sub_1E10AE9EC();
  }

  return sub_1E10AEA0C();
}

uint64_t Music.Genre.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Music.Genre.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1E100246C()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1E1002494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E1002568(uint64_t a1)
{
  v2 = sub_1E1004F9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10025A4(uint64_t a1)
{
  v2 = sub_1E1004F9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E100260C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656449676E6F73 && a2 == 0xEF73726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E100269C(uint64_t a1)
{
  v2 = sub_1E1004FF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10026D8(uint64_t a1)
{
  v2 = sub_1E1004FF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1002734()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  v1[1] = 0u;
  return (*(v0 + 8))();
}

uint64_t Music.Lineup.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v18 = *(a2 + 16);
  v19 = v4;
  type metadata accessor for Music.Lineup.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1E10AE8BC();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  v11 = *v2;
  v17 = v2[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  sub_1E10AEA5C();
  v24 = v11;
  v23 = 0;
  sub_1E10AE20C();
  v22 = *(v19 + 16);
  swift_getWitnessTable();
  v13 = v21;
  sub_1E10AE8AC();
  if (v13)
  {

    return (*(v20 + 8))(v10, v5);
  }

  else
  {
    v15 = v20;

    v24 = v17;
    v23 = 1;
    sub_1E10AE8AC();
    return (*(v15 + 8))(v10, v5);
  }
}

uint64_t Music.Lineup.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(a2 + 16);
  v6 = *(*(a2 + 24) + 24);
  sub_1E10AE21C();

  return sub_1E10AE21C();
}

uint64_t Music.Lineup.hashValue.getter(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  sub_1E10AE9CC();
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 24);
  sub_1E10AE21C();
  sub_1E10AE21C();
  return sub_1E10AEA0C();
}

uint64_t Music.Lineup.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v19 = a3;
  v20 = a2;
  type metadata accessor for Music.Lineup.CodingKeys();
  swift_getWitnessTable();
  v21 = sub_1E10AE81C();
  v5 = *(v21 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA3C();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  sub_1E10AE20C();
  v23 = 0;
  v22 = *(v20 + 8);
  swift_getWitnessTable();
  v13 = v21;
  sub_1E10AE7FC();
  v14 = v24;
  v23 = 1;
  sub_1E10AE7FC();
  (*(v12 + 8))(v10, v13);
  v15 = v24;
  v16 = v19;
  *v19 = v14;
  v16[1] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E1002CF8(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  Music.Lineup.hash(into:)(v4, a2);
  return sub_1E10AEA0C();
}

uint64_t static Music.Genre.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E10AE8FC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E10AE8FC();
    }
  }

  return result;
}

uint64_t Music.Genre.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89268, &qword_1E10B17C8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v16 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v16[1] = v1[3];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004F9C();

  sub_1E10AEA5C();
  v17 = v10;
  v18 = v11;
  v19 = 0;
  sub_1E0FED9C8();
  v14 = v16[3];
  sub_1E10AE8AC();

  if (!v14)
  {
    LOBYTE(v17) = 1;
    sub_1E10AE86C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t Music.Genre.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Music.Genre.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t Music.Genre.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89278, &qword_1E10B17D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004F9C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v13 = v21;
  v19 = v20;
  LOBYTE(v20) = 1;
  v14 = sub_1E10AE7BC();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E1003290()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10032F8()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1003348()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10033DC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E10AE8FC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E10AE8FC();
    }
  }

  return result;
}

uint64_t Music.Setlist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89280, &qword_1E10B17D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004FF0();

  sub_1E10AEA5C();
  v13[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B270, &qword_1E10B17E0);
  sub_1E1005044(&qword_1ECE89290);
  sub_1E10AE8AC();

  return (*(v4 + 8))(v9, v3);
}

uint64_t Music.Setlist.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1E12EE160](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t Music.Setlist.hashValue.getter()
{
  v1 = *v0;
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1E10AEA0C();
}

uint64_t Music.Setlist.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89298, &qword_1E10B17E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1004FF0();
  sub_1E10AEA3C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B270, &qword_1E10B17E0);
    sub_1E1005044(&qword_1ECE892A0);
    sub_1E10AE7FC();
    (*(v6 + 8))(v11, v5);
    *a2 = v14[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E10038D4()
{
  v1 = *v0;
  result = MEMORY[0x1E12EE160](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1E1003950()
{
  v1 = *v0;
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents5MusicV6ArtistV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 5);
  v58 = *(a1 + 4);
  v59 = v8;
  v60 = a1[12];
  v9 = *(a1 + 3);
  v56 = *(a1 + 2);
  v57 = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v65 = a2[12];
  v14 = *(a2 + 5);
  v63 = *(a2 + 4);
  v64 = v14;
  v15 = *(a2 + 3);
  v61 = *(a2 + 2);
  v62 = v15;
  if ((v4 != v10 || v5 != v11) && (sub_1E10AE8FC() & 1) == 0 || (v6 != v12 || v7 != v13) && (sub_1E10AE8FC() & 1) == 0)
  {
    v22 = 0;
    return v22 & 1;
  }

  v16 = *(&v57 + 1);
  v17 = *(&v62 + 1);
  if (!*(&v57 + 1))
  {
    if (!*(&v62 + 1))
    {
      v45 = *(a1 + 2);
      v46 = a1[6];
      v29 = *(a1 + 5);
      v47 = *(a1 + 4);
      v48 = v29;
      v49 = a1[12];
      sub_1E0FEDC50(&v56, &v40, &qword_1ECE88F38, &qword_1E10B05F8);
      sub_1E0FEDC50(&v61, &v40, &qword_1ECE88F38, &qword_1E10B05F8);
      sub_1E0FF0440(&v45, &qword_1ECE88F38, &qword_1E10B05F8);
      v22 = 1;
      return v22 & 1;
    }

    sub_1E0FEDC50(&v56, &v45, &qword_1ECE88F38, &qword_1E10B05F8);
    sub_1E0FEDC50(&v61, &v45, &qword_1ECE88F38, &qword_1E10B05F8);
    goto LABEL_14;
  }

  v18 = a1[6];
  v45 = *(a1 + 2);
  *&v46 = v18;
  *(&v46 + 1) = *(&v57 + 1);
  v19 = *(a1 + 5);
  v47 = *(a1 + 4);
  v48 = v19;
  v49 = a1[12];
  v44 = v49;
  v42 = v47;
  v43 = v19;
  v40 = v45;
  v41 = v46;
  if (!*(&v62 + 1))
  {
    v37 = v47;
    v38 = v48;
    v39 = v49;
    v35 = v45;
    v36 = v46;
    sub_1E0FEDC50(&v56, v33, &qword_1ECE88F38, &qword_1E10B05F8);
    sub_1E0FEDC50(&v61, v33, &qword_1ECE88F38, &qword_1E10B05F8);
    sub_1E0FEDC50(&v45, v33, &qword_1ECE88F38, &qword_1E10B05F8);
    sub_1E1004EDC(&v35);
LABEL_14:
    v45 = *(a1 + 2);
    *&v46 = a1[6];
    *(&v46 + 1) = v16;
    v24 = *(a1 + 5);
    v47 = *(a1 + 4);
    v48 = v24;
    v25 = a1[12];
    v50 = *(a2 + 2);
    v26 = a2[6];
    v49 = v25;
    v51 = v26;
    v52 = v17;
    v27 = *(a2 + 4);
    v28 = *(a2 + 5);
    v55 = a2[12];
    v54 = v28;
    v53 = v27;
    sub_1E0FF0440(&v45, &unk_1ECE893A8, qword_1E10B2380);
    v22 = 0;
    return v22 & 1;
  }

  v35 = *(a2 + 2);
  v20 = a2[6];
  v21 = *(a2 + 5);
  v37 = *(a2 + 4);
  v38 = v21;
  v39 = a2[12];
  *&v36 = v20;
  *(&v36 + 1) = *(&v62 + 1);
  sub_1E0FEDC50(&v56, v33, &qword_1ECE88F38, &qword_1E10B05F8);
  sub_1E0FEDC50(&v61, v33, &qword_1ECE88F38, &qword_1E10B05F8);
  sub_1E0FEDC50(&v45, v33, &qword_1ECE88F38, &qword_1E10B05F8);
  v22 = _s12ShazamEvents7ArtworkV2eeoiySbAC_ACtFZ_0(&v40, &v35);
  v31[2] = v37;
  v31[3] = v38;
  v32 = v39;
  v31[0] = v35;
  v31[1] = v36;
  sub_1E1004EDC(v31);
  v33[2] = v42;
  v33[3] = v43;
  v34 = v44;
  v33[0] = v40;
  v33[1] = v41;
  sub_1E1004EDC(v33);
  v35 = *(a1 + 2);
  *&v36 = a1[6];
  *(&v36 + 1) = v16;
  v23 = *(a1 + 5);
  v37 = *(a1 + 4);
  v38 = v23;
  v39 = a1[12];
  sub_1E0FF0440(&v35, &qword_1ECE88F38, &qword_1E10B05F8);
  return v22 & 1;
}

uint64_t _s12ShazamEvents5MusicV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v133 = *(v4 - 8);
  v5 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v130 = (&v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v131 = (&v127 - v12);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v127 - v16;
  v18 = sub_1E10ADBBC();
  v138 = *(v18 - 8);
  v139 = v18;
  v19 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v134 = &v127 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v25);
  v135 = &v127 - v26;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F48, &qword_1E10B0608);
  v27 = *(*(v136 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28, v29);
  v137 = &v127 - v30;
  v31 = type metadata accessor for EventAttribution();
  v140 = *(v31 - 8);
  v32 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = (&v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = (&v127 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v127 - v46;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_31;
  }

  v127 = v17;
  v128 = v4;
  v129 = type metadata accessor for Music();
  v48 = v129[7];
  v49 = a1 + v48;
  v50 = a2 + v48;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v51 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v49[*(v51 + 20)], &v50[*(v51 + 20)]) & 1) == 0)
  {
    goto LABEL_31;
  }

  v52 = v129;
  v53 = (a1 + v129[8]);
  v54 = v53[5];
  v55 = v53[7];
  v167 = v53[6];
  v168 = v55;
  v56 = v53[9];
  v57 = v53[7];
  v169 = v53[8];
  v170 = v56;
  v58 = v53[3];
  v59 = v53[1];
  v163 = v53[2];
  v164 = v58;
  v60 = v53[5];
  v61 = v53[3];
  v165 = v53[4];
  v166 = v60;
  v62 = v53[1];
  v162[0] = *v53;
  v162[1] = v62;
  v156 = v165;
  v157 = v54;
  v154 = v163;
  v155 = v61;
  v63 = v53[9];
  v160 = v169;
  v161 = v63;
  v158 = v167;
  v159 = v57;
  v152 = v162[0];
  v153 = v59;
  v64 = (a2 + v129[8]);
  v65 = v64[7];
  v66 = v64[5];
  v176 = v64[6];
  v177 = v65;
  v67 = v64[7];
  v68 = v64[9];
  v178 = v64[8];
  v179 = v68;
  v69 = v64[3];
  v70 = v64[1];
  v172 = v64[2];
  v173 = v69;
  v71 = v64[3];
  v72 = v64[5];
  v174 = v64[4];
  v175 = v72;
  v73 = v64[1];
  v171[0] = *v64;
  v171[1] = v73;
  v148 = v176;
  v149 = v67;
  v74 = v64[9];
  v150 = v178;
  v151 = v74;
  v144 = v172;
  v145 = v71;
  v146 = v174;
  v147 = v66;
  v142 = v171[0];
  v143 = v70;
  sub_1E0FE6720(v162, v141);
  sub_1E0FE6720(v171, v141);
  v75 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v152, &v142);
  v180[6] = v148;
  v180[7] = v149;
  v180[8] = v150;
  v180[9] = v151;
  v180[2] = v144;
  v180[3] = v145;
  v180[4] = v146;
  v180[5] = v147;
  v180[0] = v142;
  v180[1] = v143;
  sub_1E0FEDAB8(v180);
  v181[6] = v158;
  v181[7] = v159;
  v181[8] = v160;
  v181[9] = v161;
  v181[2] = v154;
  v181[3] = v155;
  v181[4] = v156;
  v181[5] = v157;
  v181[0] = v152;
  v181[1] = v153;
  sub_1E0FEDAB8(v181);
  if (!v75)
  {
    goto LABEL_31;
  }

  v76 = v52[9];
  v77 = *(v42 + 48);
  sub_1E0FEDC50(a1 + v76, v47, &qword_1ECE88C70, &qword_1E10AF9C8);
  v78 = a2 + v76;
  v79 = v77;
  sub_1E0FEDC50(v78, &v47[v77], &qword_1ECE88C70, &qword_1E10AF9C8);
  v80 = *(v140 + 48);
  if (v80(v47, 1, v31) == 1)
  {
    if (v80(&v47[v79], 1, v31) == 1)
    {
      sub_1E0FF0440(v47, &qword_1ECE88C70, &qword_1E10AF9C8);
      goto LABEL_24;
    }

    goto LABEL_18;
  }

  sub_1E0FEDC50(v47, v41, &qword_1ECE88C70, &qword_1E10AF9C8);
  if (v80(&v47[v79], 1, v31) == 1)
  {
    sub_1E1006488(v41, type metadata accessor for EventAttribution);
LABEL_18:
    v81 = &qword_1ECE88F50;
    v82 = &qword_1E10B0610;
LABEL_19:
    v83 = v47;
LABEL_30:
    sub_1E0FF0440(v83, v81, v82);
    goto LABEL_31;
  }

  sub_1E0FEDD58(&v47[v79], v36, type metadata accessor for EventAttribution);
  if ((*v41 != *v36 || v41[1] != v36[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E1006488(v36, type metadata accessor for EventAttribution);
    sub_1E1006488(v41, type metadata accessor for EventAttribution);
    v81 = &qword_1ECE88C70;
    v82 = &qword_1E10AF9C8;
    goto LABEL_19;
  }

  v84 = *(v31 + 20);
  v85 = sub_1E10ADB8C();
  sub_1E1006488(v36, type metadata accessor for EventAttribution);
  sub_1E1006488(v41, type metadata accessor for EventAttribution);
  sub_1E0FF0440(v47, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((v85 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_24:
  v86 = v129[10];
  v87 = v137;
  v88 = *(v136 + 48);
  sub_1E0FEDC50(a1 + v86, v137, &qword_1ECE88C78, &qword_1E10B5E50);
  sub_1E0FEDC50(a2 + v86, v87 + v88, &qword_1ECE88C78, &qword_1E10B5E50);
  v90 = v138;
  v89 = v139;
  v91 = *(v138 + 48);
  if (v91(v87, 1, v139) == 1)
  {
    if (v91(v87 + v88, 1, v89) == 1)
    {
      sub_1E0FF0440(v87, &qword_1ECE88C78, &qword_1E10B5E50);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v92 = v135;
  sub_1E0FEDC50(v87, v135, &qword_1ECE88C78, &qword_1E10B5E50);
  if (v91(v87 + v88, 1, v89) == 1)
  {
    (*(v90 + 8))(v92, v89);
LABEL_29:
    v81 = &qword_1ECE88F48;
    v82 = &qword_1E10B0608;
    v83 = v87;
    goto LABEL_30;
  }

  v95 = v87 + v88;
  v96 = v134;
  (*(v90 + 32))(v134, v95, v89);
  sub_1E10064E8(&qword_1ECE88F68, MEMORY[0x1E6968FB0]);
  v97 = sub_1E10AE03C();
  v98 = *(v90 + 8);
  v98(v96, v89);
  v98(v92, v89);
  sub_1E0FF0440(v87, &qword_1ECE88C78, &qword_1E10B5E50);
  if ((v97 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  v99 = v129;
  v100 = v129[11];
  v101 = *(a1 + v100);
  v102 = *(a1 + v100 + 8);
  v103 = (a2 + v100);
  v104 = v103[1];
  if ((sub_1E0FFE58C(v101, *v103) & 1) == 0 || (sub_1E0FFE58C(v102, v104) & 1) == 0)
  {
    goto LABEL_31;
  }

  v105 = v99[12];
  v106 = *(v132 + 48);
  v107 = v127;
  sub_1E0FEDC50(a1 + v105, v127, &qword_1ECE88C80, &qword_1E10AF9D0);
  v108 = a2 + v105;
  v109 = v107;
  sub_1E0FEDC50(v108, v107 + v106, &qword_1ECE88C80, &qword_1E10AF9D0);
  v110 = *(v133 + 48);
  v111 = v128;
  if (v110(v107, 1, v128) != 1)
  {
    v112 = v131;
    sub_1E0FEDC50(v109, v131, &qword_1ECE88C80, &qword_1E10AF9D0);
    if (v110(v109 + v106, 1, v111) != 1)
    {
      v113 = v109 + v106;
      v114 = v130;
      sub_1E0FEDD58(v113, v130, type metadata accessor for TicketAttribution);
      if (*v112 == *v114 && v112[1] == v114[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v115 = *(v128 + 20);
        v116 = sub_1E10ADB8C();
        sub_1E1006488(v114, type metadata accessor for TicketAttribution);
        sub_1E1006488(v112, type metadata accessor for TicketAttribution);
        sub_1E0FF0440(v109, &qword_1ECE88C80, &qword_1E10AF9D0);
        if ((v116 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      sub_1E1006488(v114, type metadata accessor for TicketAttribution);
      sub_1E1006488(v112, type metadata accessor for TicketAttribution);
      v81 = &qword_1ECE88C80;
      v82 = &qword_1E10AF9D0;
      goto LABEL_43;
    }

    sub_1E1006488(v112, type metadata accessor for TicketAttribution);
LABEL_42:
    v81 = &qword_1ECE88F40;
    v82 = &qword_1E10B0600;
LABEL_43:
    v83 = v109;
    goto LABEL_30;
  }

  if (v110(v107 + v106, 1, v111) != 1)
  {
    goto LABEL_42;
  }

  sub_1E0FF0440(v107, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_48:
  v117 = v129;
  if (sub_1E0FFE0A4(*(a1 + v129[13]), *(a2 + v129[13])) & 1) != 0 && (sub_1E0FFE4BC(*(a1 + v117[14]), *(a2 + v117[14])))
  {
    v118 = v117[15];
    v119 = *(a1 + v118);
    v120 = *(a1 + v118 + 8);
    v122 = *(a1 + v118 + 16);
    v121 = *(a1 + v118 + 24);
    v123 = (a2 + v118);
    v124 = v123[1];
    v126 = v123[2];
    v125 = v123[3];
    if (sub_1E0FFE8B4(v119, *v123) & 1) != 0 && (sub_1E0FFE8B4(v120, v124) & 1) != 0 && (sub_1E0FFE958(v122, v126) & 1) != 0 && (sub_1E0FFEA58(v121, v125))
    {
      v93 = sub_1E0FFE42C(*(a1 + v129[16]), *(a2 + v129[16]));
      return v93 & 1;
    }
  }

LABEL_31:
  v93 = 0;
  return v93 & 1;
}

unint64_t sub_1E1004A00()
{
  result = qword_1ECE891A0;
  if (!qword_1ECE891A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE891A0);
  }

  return result;
}

unint64_t sub_1E1004A54()
{
  result = qword_1ECE891D8;
  if (!qword_1ECE891D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE891D8);
  }

  return result;
}

unint64_t sub_1E1004AA8()
{
  result = qword_1ECE891E0;
  if (!qword_1ECE891E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE891E0);
  }

  return result;
}

uint64_t sub_1E1004AFC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE891E8, &qword_1E10B17A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E1004B74()
{
  result = qword_1ECE891F8;
  if (!qword_1ECE891F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE891F8);
  }

  return result;
}

uint64_t sub_1E1004BC8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E10064E8(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1004C64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE891C8, &qword_1E10B1798);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E1004CDC()
{
  result = qword_1ECE89220;
  if (!qword_1ECE89220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89220);
  }

  return result;
}

unint64_t sub_1E1004D30()
{
  result = qword_1ECE89228;
  if (!qword_1ECE89228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89228);
  }

  return result;
}

unint64_t sub_1E1004D84()
{
  result = qword_1ECE89238;
  if (!qword_1ECE89238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89238);
  }

  return result;
}

unint64_t sub_1E1004DD8()
{
  result = qword_1ECE89248;
  if (!qword_1ECE89248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89248);
  }

  return result;
}

unint64_t sub_1E1004E2C()
{
  result = qword_1ECE89250;
  if (!qword_1ECE89250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89250);
  }

  return result;
}

unint64_t sub_1E1004F30()
{
  result = qword_1ECE89260;
  if (!qword_1ECE89260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89260);
  }

  return result;
}

unint64_t sub_1E1004F9C()
{
  result = qword_1ECE89270;
  if (!qword_1ECE89270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89270);
  }

  return result;
}

unint64_t sub_1E1004FF0()
{
  result = qword_1ECE89288;
  if (!qword_1ECE89288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89288);
  }

  return result;
}

uint64_t sub_1E1005044(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE8B270, &qword_1E10B17E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E10050B4()
{
  result = qword_1EE17EC00;
  if (!qword_1EE17EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EC00);
  }

  return result;
}

uint64_t sub_1E1005108(uint64_t a1)
{
  result = sub_1E10064E8(&qword_1EE17EB48, type metadata accessor for Music);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1005160(uint64_t a1)
{
  result = sub_1E10064E8(&qword_1EE17EB40, type metadata accessor for Music);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E1005200(void *a1)
{
  a1[1] = sub_1E10064E8(&qword_1EE17EB58, type metadata accessor for Music);
  a1[2] = sub_1E10064E8(&qword_1EE17EB70, type metadata accessor for Music);
  a1[3] = sub_1E10064E8(&qword_1EE17EB68, type metadata accessor for Music);
  result = sub_1E10064E8(&qword_1EE17EB50, type metadata accessor for Music);
  a1[4] = result;
  return result;
}

unint64_t sub_1E1005320()
{
  result = qword_1ECE892A8;
  if (!qword_1ECE892A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE892A8);
  }

  return result;
}

unint64_t sub_1E1005374(void *a1)
{
  a1[1] = sub_1E10053B4();
  a1[2] = sub_1E1005408();
  a1[3] = sub_1E100545C();
  result = sub_1E10054B0();
  a1[4] = result;
  return result;
}

unint64_t sub_1E10053B4()
{
  result = qword_1EE17EC10;
  if (!qword_1EE17EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EC10);
  }

  return result;
}

unint64_t sub_1E1005408()
{
  result = qword_1EE17EC28;
  if (!qword_1EE17EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EC28);
  }

  return result;
}

unint64_t sub_1E100545C()
{
  result = qword_1EE17EC20;
  if (!qword_1EE17EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EC20);
  }

  return result;
}

unint64_t sub_1E10054B0()
{
  result = qword_1EE17EC08;
  if (!qword_1EE17EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EC08);
  }

  return result;
}

unint64_t sub_1E1005508()
{
  result = qword_1EE17EC18;
  if (!qword_1EE17EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17EC18);
  }

  return result;
}

unint64_t sub_1E100557C()
{
  result = qword_1ECE892B0;
  if (!qword_1ECE892B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE892B0);
  }

  return result;
}

unint64_t sub_1E10055D4()
{
  result = qword_1ECE892B8;
  if (!qword_1ECE892B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE892B8);
  }

  return result;
}

void sub_1E1005650()
{
  sub_1E1005884();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E0FEF078(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E0FEF078(319, &qword_1EE17FF78, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E1005918();
          if (v4 <= 0x3F)
          {
            sub_1E0FEF078(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1E0FEF078(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1E100598C(319, &qword_1EE17E458);
                if (v7 <= 0x3F)
                {
                  sub_1E100598C(319, &qword_1EE17E420);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E1005884()
{
  if (!qword_1ECE892C0[0])
  {
    type metadata accessor for Music();
    sub_1E10064E8(&qword_1EE17EB48, type metadata accessor for Music);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, qword_1ECE892C0);
    }
  }
}

void sub_1E1005918()
{
  if (!qword_1EE17EB78)
  {
    sub_1E10050B4();
    v0 = type metadata accessor for Music.Lineup();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE17EB78);
    }
  }
}

void sub_1E100598C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E10AE20C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1E10059D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E1005A14(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1005A5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12ShazamEvents7ArtworkVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for EventService(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EventService(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1005BB4()
{
  result = qword_1ECE89348;
  if (!qword_1ECE89348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89348);
  }

  return result;
}

unint64_t sub_1E1005C0C()
{
  result = qword_1ECE89350;
  if (!qword_1ECE89350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89350);
  }

  return result;
}

unint64_t sub_1E1005C80()
{
  result = qword_1ECE89358;
  if (!qword_1ECE89358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89358);
  }

  return result;
}

unint64_t sub_1E1005CD8()
{
  result = qword_1ECE89360;
  if (!qword_1ECE89360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89360);
  }

  return result;
}

unint64_t sub_1E1005D30()
{
  result = qword_1ECE89368;
  if (!qword_1ECE89368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89368);
  }

  return result;
}

unint64_t sub_1E1005D88()
{
  result = qword_1ECE89370;
  if (!qword_1ECE89370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89370);
  }

  return result;
}

unint64_t sub_1E1005DE0()
{
  result = qword_1ECE89378;
  if (!qword_1ECE89378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89378);
  }

  return result;
}

unint64_t sub_1E1005E38()
{
  result = qword_1ECE89380;
  if (!qword_1ECE89380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89380);
  }

  return result;
}

unint64_t sub_1E1005EC8()
{
  result = qword_1ECE89388;
  if (!qword_1ECE89388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89388);
  }

  return result;
}

unint64_t sub_1E1005F20()
{
  result = qword_1ECE89390;
  if (!qword_1ECE89390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89390);
  }

  return result;
}

unint64_t sub_1E1005F78()
{
  result = qword_1ECE89398;
  if (!qword_1ECE89398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89398);
  }

  return result;
}

unint64_t sub_1E1005FD0()
{
  result = qword_1ECE893A0;
  if (!qword_1ECE893A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893A0);
  }

  return result;
}

uint64_t sub_1E1006024(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10BF480 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7075656E696CLL && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E10BF4A0 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7374656B636974 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7365726E6567 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E10BF780 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7473696C79616C70 && a2 == 0xE900000000000073)
  {

    return 12;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1E1006420(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1006488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E10064E8(unint64_t *a1, void (*a2)(uint64_t))
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

id VersionXPCValueContainer.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1E1008254(a1);
  v5 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
  v6 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v4;
}

id VersionXPCValueContainer.init(coder:)(void *a1)
{
  swift_getObjectType();
  v3 = sub_1E1008254(a1);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1E10066FC(void *a1)
{
  v2 = sub_1E10ADA3C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1E10ADA2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89520, &qword_1E10B26A0);
  sub_1E0FEDEAC(&qword_1ECE89598, &qword_1ECE89520, &qword_1E10B26A0);
  v5 = sub_1E10ADA1C();
  v7 = v6;

  v8 = sub_1E10ADBCC();
  v9 = sub_1E10AE04C();
  [a1 encodeObject:v8 forKey:v9];

  return sub_1E0FFDAC0(v5, v7);
}

uint64_t sub_1E10069C4(void *a1, void *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v11 = sub_1E10ADA3C();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1E10ADA2C();
  v14 = v5 + *a2;
  v21 = *v14;
  v22 = *(v14 + 8);
  v23 = *(v14 + 16);
  sub_1E100A474(*v14, v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_1E0FEDEAC(a5, a3, a4);
  v15 = sub_1E10ADA1C();
  v17 = v16;
  sub_1E100A408(v21, v22, v23);

  v18 = sub_1E10ADBCC();
  v19 = sub_1E10AE04C();
  [a1 encodeObject:v18 forKey:v19];

  return sub_1E0FFDAC0(v15, v17);
}

uint64_t _s12ShazamEvents30VenueScheduleXPCValueContainerC6encode4withySo7NSCoderC_tF_0(void *a1)
{
  v3 = sub_1E10ADA3C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1E10ADA2C();
  v6 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 128);
  v7 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 96);
  v41 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 112);
  v42 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 128);
  v43[0] = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 144);
  *(v43 + 9) = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 153);
  v9 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 48);
  v10 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 80);
  v38 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 64);
  v39 = v10;
  v11 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 80);
  v40 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 96);
  v12 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 16);
  v35[0] = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value);
  v35[1] = v12;
  v13 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 48);
  v15 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value);
  v14 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 16);
  v36 = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 32);
  v37 = v13;
  v32 = v41;
  v33 = v8;
  v34[0] = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 144);
  *(v34 + 9) = *(v1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 153);
  v29 = v38;
  v30 = v11;
  v31 = v7;
  v25 = v15;
  v26 = v14;
  v27 = v36;
  v28 = v9;
  sub_1E0FEDC50(v35, v23, &qword_1ECE89518, &qword_1E10B2698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89518, &qword_1E10B2698);
  sub_1E0FEDEAC(&qword_1ECE89540, &qword_1ECE89518, &qword_1E10B2698);
  v16 = sub_1E10ADA1C();
  v23[8] = v33;
  v24[0] = v34[0];
  *(v24 + 9) = *(v34 + 9);
  v23[4] = v29;
  v23[5] = v30;
  v23[6] = v31;
  v23[7] = v32;
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  v17 = v16;
  v19 = v18;
  sub_1E0FF0440(v23, &qword_1ECE89518, &qword_1E10B2698);

  v20 = sub_1E10ADBCC();
  v21 = sub_1E10AE04C();
  [a1 encodeObject:v20 forKey:v21];

  return sub_1E0FFDAC0(v17, v19);
}

id EventXPCValueContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E1007324(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getObjectType();
  v4 = a2(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1E10073AC(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  swift_getObjectType();
  v6 = a4(a3);
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t sub_1E1007714(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89508, &qword_1E10B2690);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  v10 = v1[7];
  v39 = v1[6];
  v40 = v10;
  v11 = v1[9];
  v41 = v1[8];
  v42 = v11;
  v12 = v1[3];
  v35 = v1[2];
  v36 = v12;
  v13 = v1[5];
  v37 = v1[4];
  v38 = v13;
  v14 = v1[1];
  v33 = *v1;
  v34 = v14;
  v18 = *(v1 + 20);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E0FE6720(&v33, &v23);
  sub_1E100A338();
  sub_1E10AEA5C();
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v32 = v42;
  v25 = v35;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v23 = v33;
  v24 = v34;
  v22 = 0;
  sub_1E0FEDA64();
  sub_1E10AE8AC();
  v21[6] = v29;
  v21[7] = v30;
  v21[8] = v31;
  v21[9] = v32;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v21[0] = v23;
  v21[1] = v24;
  sub_1E0FEDAB8(v21);
  if (!v2)
  {
    v20 = v18;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893C0, qword_1E10B23B0);
    sub_1E10097B0();
    sub_1E10AE8AC();
  }

  return (*(v43 + 8))(v9, v4);
}

uint64_t sub_1E100798C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE894F0, &qword_1E10B2688);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E100A338();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v5;
  v61 = 0;
  sub_1E0FEDDC0();
  v13 = v25;
  sub_1E10AE7FC();
  v56 = v46;
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v52 = v42;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v50 = v40;
  v51 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893C0, qword_1E10B23B0);
  v60 = 1;
  sub_1E10096D4();
  sub_1E10AE7FC();
  (*(v12 + 8))(v10, v13);
  v14 = v39;
  v15 = v56;
  v32 = v56;
  v33 = v57;
  v34 = v58;
  v35 = v59;
  v16 = v52;
  v28 = v52;
  v29 = v53;
  v30 = v54;
  v31 = v55;
  v26 = v50;
  v27 = v51;
  v36 = v39;
  *(a2 + 160) = v39;
  v17 = v33;
  *(a2 + 96) = v15;
  *(a2 + 112) = v17;
  v18 = v35;
  *(a2 + 128) = v34;
  *(a2 + 144) = v18;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  *(a2 + 32) = v16;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v21;
  v22 = v27;
  *a2 = v26;
  *(a2 + 16) = v22;
  sub_1E100A38C(&v26, v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v37[6] = v56;
  v37[7] = v57;
  v37[8] = v58;
  v37[9] = v59;
  v37[2] = v52;
  v37[3] = v53;
  v37[4] = v54;
  v37[5] = v55;
  v37[0] = v50;
  v37[1] = v51;
  v38 = v14;
  return sub_1E100A3C4(v37);
}

uint64_t sub_1E1007C94()
{
  if (*v0)
  {
    result = 0x65736E6F70736572;
  }

  else
  {
    result = 0x65756E6576;
  }

  *v0;
  return result;
}

uint64_t sub_1E1007CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756E6576 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E1007DB0(uint64_t a1)
{
  v2 = sub_1E100A338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1007DEC(uint64_t a1)
{
  v2 = sub_1E100A338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1008024(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  swift_getObjectType();
  v6 = a2(a1);
  swift_deallocPartialClassInstance();
  return v6;
}

id _s12ShazamEvents22EventXPCValueContainerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E1008254(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89520, &qword_1E10B26A0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  sub_1E100A428();
  v11 = sub_1E10AE48C();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E10ADA0C();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    v16 = v12;
    v17 = sub_1E10ADBDC();
    v19 = v18;

    sub_1E0FEDEAC(&qword_1ECE895A0, &qword_1ECE89520, &qword_1E10B26A0);
    sub_1E10AD9EC();
    sub_1E0FFDAC0(v17, v19);

    sub_1E0FEDC50(v10, v6, &qword_1ECE89520, &qword_1E10B26A0);
    v20 = type metadata accessor for VersionXPCValueContainer();
    v21 = objc_allocWithZone(v20);
    sub_1E0FEDC50(v6, v21 + OBJC_IVAR____TtC12ShazamEvents24VersionXPCValueContainer_value, &qword_1ECE89520, &qword_1E10B26A0);
    v25.receiver = v21;
    v25.super_class = v20;
    v22 = objc_msgSendSuper2(&v25, sel_init);

    sub_1E0FF0440(v6, &qword_1ECE89520, &qword_1E10B26A0);
    sub_1E0FF0440(v10, &qword_1ECE89520, &qword_1E10B26A0);
    return v22;
  }

  else
  {

    return 0;
  }
}

id sub_1E10085CC(void *a1)
{
  sub_1E100A428();
  v2 = sub_1E10AE48C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E10ADA0C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89580, &qword_1E10B26C8);
    v7 = v3;
    v8 = sub_1E10ADBDC();
    v10 = v9;

    sub_1E0FEDEAC(&qword_1ECE89590, &qword_1ECE89580, &qword_1E10B26C8);
    sub_1E10AD9EC();
    sub_1E0FFDAC0(v8, v10);

    v11 = v19;
    v12 = v20;
    LOBYTE(v10) = v21;
    v13 = type metadata accessor for EventXPCValueContainer();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC12ShazamEvents22EventXPCValueContainer_value];
    *v15 = v19;
    *(v15 + 1) = v12;
    v15[16] = v10;
    sub_1E100A474(v11, v12, v10);
    v18.receiver = v14;
    v18.super_class = v13;
    v16 = objc_msgSendSuper2(&v18, sel_init);

    sub_1E100A408(v19, v20, v21);
    return v16;
  }

  else
  {

    return 0;
  }
}

id sub_1E10088C0(void *a1)
{
  sub_1E100A428();
  v2 = sub_1E10AE48C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E10ADA0C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89568, &qword_1E10B26C0);
    v7 = v3;
    v8 = sub_1E10ADBDC();
    v10 = v9;

    sub_1E0FEDEAC(&qword_1ECE89578, &qword_1ECE89568, &qword_1E10B26C0);
    sub_1E10AD9EC();
    sub_1E0FFDAC0(v8, v10);

    v11 = v19;
    v12 = v20;
    LOBYTE(v10) = v21;
    v13 = type metadata accessor for GroupScheduleXPCValueContainer();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC12ShazamEvents30GroupScheduleXPCValueContainer_value];
    *v15 = v19;
    *(v15 + 1) = v12;
    v15[16] = v10;
    sub_1E100A474(v11, v12, v10);
    v18.receiver = v14;
    v18.super_class = v13;
    v16 = objc_msgSendSuper2(&v18, sel_init);

    sub_1E100A408(v19, v20, v21);
    return v16;
  }

  else
  {

    return 0;
  }
}

id sub_1E1008BB4(void *a1)
{
  sub_1E100A428();
  v2 = sub_1E10AE48C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E10ADA0C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89550, &qword_1E10B26B8);
    v7 = v3;
    v8 = sub_1E10ADBDC();
    v10 = v9;

    sub_1E0FEDEAC(&qword_1ECE89560, &qword_1ECE89550, &qword_1E10B26B8);
    sub_1E10AD9EC();
    sub_1E0FFDAC0(v8, v10);

    v11 = v19;
    v12 = v20;
    LOBYTE(v10) = v21;
    v13 = type metadata accessor for ParticipantScheduleXPCValueContainer();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC12ShazamEvents36ParticipantScheduleXPCValueContainer_value];
    *v15 = v19;
    *(v15 + 1) = v12;
    v15[16] = v10;
    sub_1E100A474(v11, v12, v10);
    v18.receiver = v14;
    v18.super_class = v13;
    v16 = objc_msgSendSuper2(&v18, sel_init);

    sub_1E100A408(v19, v20, v21);
    return v16;
  }

  else
  {

    return 0;
  }
}

id sub_1E1008EA8(void *a1)
{
  sub_1E100A428();
  v2 = sub_1E10AE48C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E10ADA0C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89518, &qword_1E10B2698);
    v7 = v3;
    v8 = sub_1E10ADBDC();
    v10 = v9;

    sub_1E0FEDEAC(&qword_1ECE89548, &qword_1ECE89518, &qword_1E10B2698);
    sub_1E10AD9EC();
    sub_1E0FFDAC0(v8, v10);

    v31 = v43;
    v32[0] = v44[0];
    *(v32 + 9) = *(v44 + 9);
    v27 = v39;
    v28 = v40;
    v29 = v41;
    v30 = v42;
    v25[0] = v35;
    v25[1] = v36;
    v25[2] = v37;
    v26 = v38;
    v11 = type metadata accessor for VenueScheduleXPCValueContainer();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value];
    v15 = v36;
    v14 = v37;
    *v13 = v35;
    *(v13 + 1) = v15;
    *(v13 + 2) = v14;
    v16 = v29;
    v18 = v26;
    v17 = v27;
    *(v13 + 5) = v28;
    *(v13 + 6) = v16;
    *(v13 + 3) = v18;
    *(v13 + 4) = v17;
    v20 = v31;
    v19 = v32[0];
    v21 = v30;
    *(v13 + 153) = *(v32 + 9);
    *(v13 + 8) = v20;
    *(v13 + 9) = v19;
    *(v13 + 7) = v21;
    sub_1E0FEDC50(v25, v33, &qword_1ECE89518, &qword_1E10B2698);
    v24.receiver = v12;
    v24.super_class = v11;
    v22 = objc_msgSendSuper2(&v24, sel_init);

    v33[8] = v43;
    v34[0] = v44[0];
    *(v34 + 9) = *(v44 + 9);
    v33[4] = v39;
    v33[5] = v40;
    v33[6] = v41;
    v33[7] = v42;
    v33[0] = v35;
    v33[1] = v36;
    v33[2] = v37;
    v33[3] = v38;
    sub_1E0FF0440(v33, &qword_1ECE89518, &qword_1E10B2698);
    return v22;
  }

  else
  {

    return 0;
  }
}

id sub_1E1009250(void *a1)
{
  sub_1E100A428();
  v2 = sub_1E10AE48C();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E10ADA0C();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    sub_1E10AD9FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89528, &unk_1E10B26A8);
    v7 = v3;
    v8 = sub_1E10ADBDC();
    v10 = v9;

    sub_1E0FEDEAC(&qword_1ECE89538, &qword_1ECE89528, &unk_1E10B26A8);
    sub_1E10AD9EC();
    sub_1E0FFDAC0(v8, v10);

    v11 = v19;
    v12 = v20;
    LOBYTE(v10) = v21;
    v13 = type metadata accessor for PartialEventXPCValueContainer();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtC12ShazamEvents29PartialEventXPCValueContainer_value];
    *v15 = v19;
    *(v15 + 1) = v12;
    v15[16] = v10;
    sub_1E100A474(v11, v12, v10);
    v18.receiver = v14;
    v18.super_class = v13;
    v16 = objc_msgSendSuper2(&v18, sel_init);

    sub_1E100A408(v19, v20, v21);
    return v16;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1E1009544()
{
  result = qword_1EE1800E0;
  if (!qword_1EE1800E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800E0);
  }

  return result;
}

unint64_t sub_1E1009598()
{
  result = qword_1EE1800E8[0];
  if (!qword_1EE1800E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1800E8);
  }

  return result;
}

unint64_t sub_1E10095EC()
{
  result = qword_1EE1800D0;
  if (!qword_1EE1800D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1800D0);
  }

  return result;
}

unint64_t sub_1E10096D4()
{
  result = qword_1ECE893B8;
  if (!qword_1ECE893B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE893C0, qword_1E10B23B0);
    sub_1E1009758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893B8);
  }

  return result;
}

unint64_t sub_1E1009758()
{
  result = qword_1ECE893C8;
  if (!qword_1ECE893C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893C8);
  }

  return result;
}

unint64_t sub_1E10097B0()
{
  result = qword_1ECE893D0;
  if (!qword_1ECE893D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE893C0, qword_1E10B23B0);
    sub_1E1009834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893D0);
  }

  return result;
}

unint64_t sub_1E1009834()
{
  result = qword_1ECE893D8;
  if (!qword_1ECE893D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893D8);
  }

  return result;
}

unint64_t sub_1E100988C()
{
  result = qword_1ECE893E0;
  if (!qword_1ECE893E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE893E8, qword_1E10B23D8);
    sub_1E1009910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893E0);
  }

  return result;
}

unint64_t sub_1E1009910()
{
  result = qword_1ECE893F0;
  if (!qword_1ECE893F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893F0);
  }

  return result;
}

unint64_t sub_1E1009968()
{
  result = qword_1ECE893F8;
  if (!qword_1ECE893F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE893E8, qword_1E10B23D8);
    sub_1E10099EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE893F8);
  }

  return result;
}

unint64_t sub_1E10099EC()
{
  result = qword_1ECE89400;
  if (!qword_1ECE89400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89400);
  }

  return result;
}

unint64_t sub_1E1009A44()
{
  result = qword_1ECE89408;
  if (!qword_1ECE89408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89410, qword_1E10B2400);
    sub_1E1009AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89408);
  }

  return result;
}

unint64_t sub_1E1009AC8()
{
  result = qword_1ECE89418;
  if (!qword_1ECE89418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89418);
  }

  return result;
}

unint64_t sub_1E1009B20()
{
  result = qword_1ECE89420;
  if (!qword_1ECE89420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89410, qword_1E10B2400);
    sub_1E1009BA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89420);
  }

  return result;
}

unint64_t sub_1E1009BA4()
{
  result = qword_1ECE89428;
  if (!qword_1ECE89428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89428);
  }

  return result;
}

unint64_t sub_1E1009BFC()
{
  result = qword_1ECE89430;
  if (!qword_1ECE89430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89430);
  }

  return result;
}

unint64_t sub_1E1009C54()
{
  result = qword_1ECE89438;
  if (!qword_1ECE89438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89438);
  }

  return result;
}

unint64_t sub_1E1009CAC()
{
  result = qword_1ECE89440;
  if (!qword_1ECE89440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE89448, qword_1E10B2440);
    sub_1E0FEDD04();
    sub_1E1009D70(&qword_1ECE89458, &qword_1ECE89468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89440);
  }

  return result;
}

uint64_t sub_1E1009D70(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89460, &qword_1E10B9540);
    sub_1E1009ED4(a2, type metadata accessor for PartialEventResource);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E1009E10()
{
  result = qword_1ECE89470;
  if (!qword_1ECE89470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECE89448, qword_1E10B2440);
    sub_1E0FED9C8();
    sub_1E1009D70(&qword_1ECE89480, &unk_1ECE89488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89470);
  }

  return result;
}

uint64_t sub_1E1009ED4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for VersionXPCValueContainer()
{
  result = qword_1EE180008;
  if (!qword_1EE180008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E1009F70()
{
  sub_1E100A018();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1E100A018()
{
  if (!qword_1ECE89498)
  {
    type metadata accessor for EventService.Version();
    sub_1E1009ED4(&qword_1EE1800A8, type metadata accessor for EventService.Version);
    sub_1E1009ED4(&qword_1EE1800B0, type metadata accessor for EventService.Version);
    sub_1E1009544();
    sub_1E1009598();
    v0 = type metadata accessor for ValueResult();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE89498);
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1E100A278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1E100A2C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E100A338()
{
  result = qword_1ECE894F8;
  if (!qword_1ECE894F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE894F8);
  }

  return result;
}

uint64_t sub_1E100A3F4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_1E100A408(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1E100A3F4(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1E100A414(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

unint64_t sub_1E100A428()
{
  result = qword_1EE17E410;
  if (!qword_1EE17E410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE17E410);
  }

  return result;
}

uint64_t sub_1E100A474(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1E100A414(a1, a2);
  }

  else
  {
  }
}

unint64_t sub_1E100A494()
{
  result = qword_1ECE895A8;
  if (!qword_1ECE895A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE895A8);
  }

  return result;
}

unint64_t sub_1E100A4EC()
{
  result = qword_1ECE895B0;
  if (!qword_1ECE895B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE895B0);
  }

  return result;
}

unint64_t sub_1E100A544()
{
  result = qword_1ECE895B8;
  if (!qword_1ECE895B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE895B8);
  }

  return result;
}

uint64_t sub_1E100A5E8(uint64_t a1)
{
  v2 = sub_1E100A874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E100A624(uint64_t a1)
{
  v2 = sub_1E100A874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E100A688(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89630, &qword_1E10B2870);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E100A874();
  sub_1E10AEA5C();
  return (*(v3 + 8))(v8, v2);
}

unint64_t sub_1E100A79C(uint64_t a1)
{
  *(a1 + 8) = sub_1E100A7CC();
  result = sub_1E100A820();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E100A7CC()
{
  result = qword_1ECE89620;
  if (!qword_1ECE89620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89620);
  }

  return result;
}

unint64_t sub_1E100A820()
{
  result = qword_1ECE89628;
  if (!qword_1ECE89628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89628);
  }

  return result;
}

unint64_t sub_1E100A874()
{
  result = qword_1ECE89638;
  if (!qword_1ECE89638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89638);
  }

  return result;
}

unint64_t sub_1E100A8DC()
{
  result = qword_1ECE89640;
  if (!qword_1ECE89640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89640);
  }

  return result;
}

unint64_t sub_1E100A934()
{
  result = qword_1ECE89648;
  if (!qword_1ECE89648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89648);
  }

  return result;
}

uint64_t EventService.GeoRequest.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double EventService.GeoRequest.region.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 48);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  *(a1 + 32) = result;
  return result;
}

uint64_t EventService.GeoRequest.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EventService.GeoRequest() + 24);

  return sub_1E100AA5C(v3, a1);
}

uint64_t type metadata accessor for EventService.GeoRequest()
{
  result = qword_1EE17FC40;
  if (!qword_1EE17FC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E100AA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Time();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EventService.GeoRequest.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventService.GeoRequest() + 28);
  v4 = sub_1E10ADACC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventService.GeoRequest.init(region:time:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E10ADCFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 4);
  sub_1E10ADCEC();
  v14 = sub_1E10ADCDC();
  v16 = v15;
  v17 = *(v7 + 8);
  v18 = *a1;
  v24 = a1[1];
  v25 = v18;
  v17(v12, v6);
  *a3 = v14;
  *(a3 + 8) = v16;
  v19 = v24;
  *(a3 + 16) = v25;
  *(a3 + 32) = v19;
  *(a3 + 48) = v13;
  v20 = type metadata accessor for EventService.GeoRequest();
  sub_1E100AA5C(a2, a3 + *(v20 + 24));
  v21 = *(v20 + 28);
  v22 = sub_1E10ADACC();
  (*(*(v22 - 8) + 16))(a3 + v21, a2, v22);
  return sub_1E100ACB0(a2);
}

uint64_t sub_1E100ACB0(uint64_t a1)
{
  v2 = type metadata accessor for Time();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EventService.GeoRequest.init(region:dateInterval:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89650, &qword_1E10B2930) - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v53 = &v48 - v8;
  v54 = sub_1E10ADE6C();
  v52 = *(v54 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E10ADACC();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E10ADCFC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 4);
  sub_1E10ADCEC();
  v28 = sub_1E10ADCDC();
  v30 = v29;
  v31 = *(v21 + 8);
  v32 = *a1;
  v50 = a1[1];
  v51 = v32;
  v31(v26, v20);
  *a3 = v28;
  *(a3 + 8) = v30;
  v33 = v19;
  v35 = v52;
  v34 = v53;
  v36 = v50;
  *(a3 + 16) = v51;
  *(a3 + 32) = v36;
  *(a3 + 48) = v27;
  v37 = v14[2];
  *&v51 = v13;
  v37(v33, v55, v13);
  sub_1E10ADE4C();
  v38 = v54;
  result = (*(v35 + 48))(v34, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v40 = *(v35 + 32);
    v41 = v49;
    v40(v49, v34, v38);
    v42 = type metadata accessor for EventService.GeoRequest();
    v43 = a3 + *(v42 + 24);
    v44 = v14[4];
    v45 = v33;
    v46 = v51;
    v44(v43, v45, v51);
    v47 = type metadata accessor for Time();
    v40((v43 + *(v47 + 20)), v41, v38);
    return v44(a3 + *(v42 + 28), v55, v46);
  }

  return result;
}

uint64_t EventService.GeoRequest.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E12EE180](*&v4);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  MEMORY[0x1E12EE180](*&v7);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1E12EE180](*&v8);
  v9 = type metadata accessor for EventService.GeoRequest();
  v10 = v0 + *(v9 + 24);
  sub_1E10ADACC();
  sub_1E100C0A4(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v11 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E100C0A4(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v12 = v1 + *(v9 + 28);
  return sub_1E10ADFFC();
}

uint64_t EventService.GeoRequest.hashValue.getter()
{
  sub_1E10AE9CC();
  EventService.GeoRequest.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E100B24C()
{
  sub_1E10AE9CC();
  EventService.GeoRequest.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E100B290()
{
  sub_1E10AE9CC();
  EventService.GeoRequest.hash(into:)();
  return sub_1E10AEA0C();
}

double EventService.GeoRequest.Region.center.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

void EventService.GeoRequest.Region.init(center:latitudinalMeters:longitudinalMeters:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a4;
  a1[4] = a5;
}

void EventService.GeoRequest.Region.init(center:radius:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a4;
  a1[4] = a4;
}

uint64_t EventService.GeoRequest.Region.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E12EE180](*&v1);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x1E12EE180](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  return MEMORY[0x1E12EE180](*&v5);
}

uint64_t EventService.PartialEventResult.events.getter(void *a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v7 = *(a2 + 16);
  if (v7)
  {
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](a3, a4);
    v9 = (v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = *(a2 + 24);
    v11 = *(a2 + 40);
    type metadata accessor for PartialEvent();
    v12 = 0;
    *v9 = sub_1E10AE20C();
    v13 = *(a2 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v14 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v15 = v12;
      v16 = *(v13 + 8 * v12);
      v17 = *(v14 + 8 * v12);
      type metadata accessor for PartialEvent();
      ++v12;
      v9[v15 + 1] = sub_1E10AE20C();
    }

    while (v7 != v12);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  else
  {
    v21 = *(a2 + 24);
    v22 = *(a2 + 40);
    type metadata accessor for PartialEvent();
    TupleTypeMetadata = sub_1E10AE20C();
  }

  v23 = *(*(TupleTypeMetadata - 8) + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v4 + *(a2 + 60), TupleTypeMetadata);
  if (!v7)
  {
    return *v25;
  }

  result = *&v25[*(TupleTypeMetadata + 32)];
  v28 = (TupleTypeMetadata + 48);
  do
  {
    v30 = *a1++;
    v29 = v30;
    v31 = *v28;
    v28 += 4;
    *v29 = *&v25[v31];
    --v7;
  }

  while (v7);
  return result;
}

uint64_t sub_1E100B584@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>)
{
  v46 = a2;
  v47 = a1;
  v17 = a9;
  if (a4)
  {
    v45 = a9;
    v42[1] = v42;
    MEMORY[0x1EEE9AC00](a10, a11);
    v19 = (v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v43 = a5;
    v44 = a7;
    type metadata accessor for PartialEvent();
    v20 = 0;
    *v19 = sub_1E10AE20C();
    v21 = a6;
    v22 = a6 & 0xFFFFFFFFFFFFFFFELL;
    v23 = a8;
    v24 = a8 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v25 = v20;
      v26 = *(v22 + 8 * v20);
      v27 = *(v24 + 8 * v20);
      type metadata accessor for PartialEvent();
      ++v20;
      v19[v25 + 1] = sub_1E10AE20C();
    }

    while (a4 != v20);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a7 = v44;
    v17 = v45;
    a8 = v23;
    a6 = v21;
    a5 = v43;
  }

  else
  {
    type metadata accessor for PartialEvent();
    TupleTypeMetadata = sub_1E10AE20C();
  }

  v31 = *(TupleTypeMetadata - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29, v30);
  v34 = (v42 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    *(v34 + *(TupleTypeMetadata + 32)) = v46;
    v35 = (TupleTypeMetadata + 48);
    v36 = a4;
    do
    {
      v38 = *v35;
      v35 += 4;
      v37 = v38;
      v39 = *a3++;
      *(v34 + v37) = *v39;
      --v36;
    }

    while (v36);
  }

  else
  {
    *v34 = v46;
  }

  sub_1E100C5C4(v47, v17);
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = a7;
  v52 = a8;
  v40 = type metadata accessor for EventService.PartialEventResult();
  return (*(v31 + 32))(v17 + *(v40 + 60), v34, TupleTypeMetadata);
}

uint64_t EventService.PartialEventResults.next()(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x1E69E87B0] + 4);
  v6 = swift_task_alloc();
  *(v2 + 56) = v6;
  v7 = *(a2 + 24);
  v8 = *(a2 + 40);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 24) = v7;
  *(v2 + 40) = v8;
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v9 = sub_1E10AE3AC();
  *v6 = v2;
  v6[1] = sub_1E100B8D8;

  return MEMORY[0x1EEE6DB98](a1, v9);
}

uint64_t sub_1E100B8D8()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1E100BA00(uint64_t a1)
{
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v2 = sub_1E10AE3BC();
  sub_1E10AE37C();
  return (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_1E100BAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EventService.PartialEventResults.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1E100BB18(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E0FE5FDC;

  return EventService.PartialEventResults.next()(a1, a2);
}

uint64_t sub_1E100BBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x1E69E85D8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_1E100BC94;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1E100BC94()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t EventService.GeoRequest.Region.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1E10AE9CC();
  EventService.GeoRequest.Region.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E100BDF8()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1E10AE9CC();
  EventService.GeoRequest.Region.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E100BE50()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  sub_1E10AE9CC();
  EventService.GeoRequest.Region.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents12EventServiceV10GeoRequestV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v7 = type metadata accessor for EventService.GeoRequest();
  v8 = *(v7 + 24);
  v9 = a1 + v8;
  v10 = a2 + v8;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](v9 + *(v11 + 20), v10 + *(v11 + 20)) & 1) == 0)
  {
    return 0;
  }

  v12 = *(v7 + 28);

  return sub_1E10ADA7C();
}

uint64_t sub_1E100BFD8(uint64_t a1)
{
  *(a1 + 8) = sub_1E100C0A4(&qword_1EE17FC60, type metadata accessor for EventService.GeoRequest);
  result = sub_1E100C0A4(&qword_1EE17FC50, type metadata accessor for EventService.GeoRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E100C0A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E100C118()
{
  result = qword_1ECE89658;
  if (!qword_1ECE89658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE89658);
  }

  return result;
}

uint64_t sub_1E100C1A8()
{
  result = type metadata accessor for Time();
  if (v1 <= 0x3F)
  {
    result = sub_1E10ADACC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E100C244(uint64_t a1, int a2)
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

uint64_t sub_1E100C264(uint64_t result, int a2, int a3)
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

unint64_t sub_1E100C2A8(void *a1)
{
  result = sub_1E100C468();
  if (v5 <= 0x3F)
  {
    v22[14] = 0;
    v23 = result;
    v6 = a1[2];
    if (v6)
    {
      MEMORY[0x1EEE9AC00](v3, v4);
      v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v9 = a1[3];
      v10 = a1[5];
      type metadata accessor for PartialEvent();
      v11 = 0;
      *v8 = sub_1E10AE20C();
      v12 = a1[4] & 0xFFFFFFFFFFFFFFFELL;
      v13 = a1[6] & 0xFFFFFFFFFFFFFFFELL;
      do
      {
        v14 = v11;
        v15 = *(v12 + 8 * v11);
        v16 = *(v13 + 8 * v11);
        type metadata accessor for PartialEvent();
        ++v11;
        v8[v14 + 1] = sub_1E10AE20C();
      }

      while (v6 != v11);
      result = swift_getTupleTypeMetadata();
      if (v17 <= 0x3F)
      {
LABEL_9:
        v22[15] = 0;
        v24 = result;
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }

    else
    {
      v18 = a1[3];
      v19 = a1[5];
      type metadata accessor for PartialEvent();
      result = sub_1E10AE20C();
      if (v20 <= 0x3F)
      {
        result = swift_checkMetadataState();
        if (v21 <= 0x3F)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1E100C468()
{
  result = qword_1EE17FDE0[0];
  if (!qword_1EE17FDE0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE17FDE0);
  }

  return result;
}

uint64_t sub_1E100C4CC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  type metadata accessor for EventService.PartialEventResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  result = sub_1E10AE3AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E100C5C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t Theater.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Theater.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Theater.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Theater()
{
  result = qword_1EE17E748;
  if (!qword_1EE17E748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Theater.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Theater() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Theater.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Theater() + 44));
}

unint64_t sub_1E100C884()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  if (v1 != 6)
  {
    v3 = 0x7374656B636974;
  }

  v4 = 0x65756E6576;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 2)
  {
    v5 = 1701669236;
  }

  if (*v0)
  {
    v2 = 0x79726F6765746163;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E100C970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E100F1E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E100C998(uint64_t a1)
{
  v2 = sub_1E100E8E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E100C9D4(uint64_t a1)
{
  v2 = sub_1E100E8E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Theater.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89660, &qword_1E10B2BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E100E8E4();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v47 = *v3;
  *(&v47 + 1) = v13;
  LOBYTE(v37) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v47 = *(v3 + 16);
    *(&v47 + 1) = v14;
    v48 = *(v3 + 32);
    LOBYTE(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89670, &qword_1E10B2BE0);
    sub_1E100E938(&qword_1ECE89678);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v47) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Theater();
    v18 = v17[7];
    v57 = 3;
    type metadata accessor for Time();
    sub_1E100ECA8(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v53 = v19[6];
    v54 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v55 = v19[8];
    v56 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v49 = v19[2];
    v50 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v51 = v19[4];
    v52 = v27;
    v28 = v19[1];
    v47 = *v19;
    v48 = v28;
    v43 = v53;
    v44 = v22;
    v29 = v19[9];
    v45 = v55;
    v46 = v29;
    v39 = v49;
    v40 = v26;
    v41 = v51;
    v42 = v21;
    v37 = v47;
    v38 = v25;
    v36 = 4;
    sub_1E0FE6720(&v47, v35);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v35[6] = v43;
    v35[7] = v44;
    v35[8] = v45;
    v35[9] = v46;
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_1E0FEDAB8(v35);
    v30 = v17[9];
    LOBYTE(v34) = 5;
    type metadata accessor for EventAttribution();
    sub_1E100ECA8(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v34) = 6;
    type metadata accessor for TicketAttribution();
    sub_1E100ECA8(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v34 = *(v3 + v17[11]);
    v33[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E100E988(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Theater.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for TicketAttribution();
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v49 - v11;
  v12 = type metadata accessor for EventAttribution();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *v1;
  v25 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v26 = v1[2];
  v27 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v28 = v1[6];
  v29 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v30 = type metadata accessor for Theater();
  v31 = v1 + v30[7];
  sub_1E10ADACC();
  sub_1E100ECA8(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v32 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E100ECA8(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v33 = (v2 + v30[8]);
  v34 = v33[7];
  v59 = v33[6];
  v60 = v34;
  v35 = v33[9];
  v61 = v33[8];
  v62 = v35;
  v36 = v33[3];
  v55 = v33[2];
  v56 = v36;
  v37 = v33[5];
  v57 = v33[4];
  v58 = v37;
  v38 = v33[1];
  v53 = *v33;
  v54 = v38;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v30[9], v23, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v23, v18, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v39 = *v18;
    v40 = v18[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v41 = *(v12 + 20);
    sub_1E10ADBBC();
    sub_1E100ECA8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E100EA8C(v18, type metadata accessor for EventAttribution);
  }

  v42 = v50;
  sub_1E0FEDC50(v2 + v30[10], v50, &qword_1ECE88C80, &qword_1E10AF9D0);
  v43 = v52;
  if ((*(v51 + 48))(v42, 1, v52) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v44 = v49;
    sub_1E0FEDD58(v42, v49, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v45 = *v44;
    v46 = v44[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v47 = *(v43 + 20);
    sub_1E10ADBBC();
    sub_1E100ECA8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E100EA8C(v44, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v30[11]));
}