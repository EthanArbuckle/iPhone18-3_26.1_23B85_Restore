uint64_t sub_1C8339B64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v38 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D780);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = sub_1C840C99C();
  v46 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v42 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v10 + 16);
  v45 = a1;
  v43 = v20;
  v20(v14, a1, v9);
  v41 = *(v10 + 88);
  v21 = v41(v14, v9);
  v40 = *MEMORY[0x1E69DAE70];
  v39 = v4;
  if (v21 == v40)
  {
    (*(v10 + 96))(v14, v9);
    v22 = swift_projectBox();
    (*(v4 + 16))(v8, v22, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADE8])
    {
      (*(v4 + 96))(v8, v3);
      (*(v46 + 32))(v17, v8, v18);

      v23 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v23 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v17, v23, 1, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C832D574(v17, &qword_1EC29D780);
    v24 = v44;
    v25 = v45;
    v26 = v43;
    v43(v44, v45, v9);
    v27 = v41(v24, v9);
    if (v27 == v40)
    {
      (*(v10 + 96))(v24, v9);
      v28 = swift_projectBox();
      v30 = v38;
      v29 = v39;
      (*(v39 + 16))(v38, v28, v3);
      (*(v29 + 88))(v30, v3);
      (*(v29 + 8))(v30, v3);
    }

    else
    {
      (*(v10 + 8))(v24, v9);
    }

    v36 = v47;
    v47[3] = v9;
    v36[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    return v26(boxed_opaque_existential_1, v25, v9);
  }

  else
  {
    v31 = *(v46 + 32);
    v32 = v42;
    v31(v42, v17, v18);
    v33 = v47;
    v47[3] = v18;
    v33[4] = &protocol witness table for TypedValue.PrimitiveValue.PersonValue;
    v34 = __swift_allocate_boxed_opaque_existential_1(v33);
    return (v31)(v34, v32, v18);
  }
}

uint64_t sub_1C833A0B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = *(v10 + 16);
  v41 = v10 + 16;
  v42 = a1;
  v40 = v17;
  (v17)(&v36 - v15, a1, v9, v14);
  v18 = *(v10 + 88);
  v19 = v18(v16, v9);
  v20 = *MEMORY[0x1E69DAE70];
  if (v19 == *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 96))(v16, v9);
    v21 = swift_projectBox();
    (*(v4 + 16))(v8, v21, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADC0])
    {
      (*(v4 + 96))(v8, v3);
      v22 = *v8;

      v24 = v43;
      v43[3] = MEMORY[0x1E69E6370];
      v24[4] = &protocol witness table for Bool;
      *v24 = v22;
      return result;
    }

    v37 = v4;
    v38 = v3;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v37 = v4;
    v38 = v3;
    (*(v10 + 8))(v16, v9);
  }

  v25 = v42;
  v26 = v40;
  v40(v12, v42, v9);
  if (v18(v12, v9) == v20)
  {
    (*(v10 + 96))(v12, v9);
    v27 = swift_projectBox();
    v29 = v37;
    v28 = v38;
    v30 = v39;
    (*(v37 + 16))(v39, v27, v38);
    if ((*(v29 + 88))(v30, v28) == *MEMORY[0x1E69DADF0])
    {
      (*(v29 + 96))(v30, v28);
      v31 = *v30;
      v32 = v30[1];

      result = sub_1C83C6AF0(v31, v32);
      if (result != 2)
      {
        v33 = v43;
        v43[3] = MEMORY[0x1E69E6370];
        v33[4] = &protocol witness table for Bool;
        *v33 = result & 1;
        return result;
      }
    }

    else
    {
      (*(v29 + 8))(v30, v28);
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v34 = v43;
  v43[3] = v9;
  v34[4] = &protocol witness table for TypedValue;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  return v26(boxed_opaque_existential_1, v25, v9);
}

uint64_t sub_1C833A508@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v37 - v7);
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = *(v10 + 16);
  v42 = v10 + 16;
  v43 = a1;
  v41 = v17;
  (v17)(&v37 - v15, a1, v9, v14);
  v18 = *(v10 + 88);
  v19 = v18(v16, v9);
  v20 = *MEMORY[0x1E69DAE70];
  if (v19 == *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 96))(v16, v9);
    v21 = swift_projectBox();
    (*(v4 + 16))(v8, v21, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADE0])
    {
      (*(v4 + 96))(v8, v3);
      v22 = *v8;

      v24 = v44;
      v44[3] = MEMORY[0x1E69E63B0];
      v24[4] = &protocol witness table for Double;
      *v24 = v22;
      return result;
    }

    v38 = v4;
    v39 = v3;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v38 = v4;
    v39 = v3;
    (*(v10 + 8))(v16, v9);
  }

  v25 = v43;
  v26 = v41;
  v41(v12, v43, v9);
  if (v18(v12, v9) == v20)
  {
    (*(v10 + 96))(v12, v9);
    v27 = swift_projectBox();
    v29 = v38;
    v28 = v39;
    v30 = v40;
    (*(v38 + 16))(v40, v27, v39);
    if ((*(v29 + 88))(v30, v28) == *MEMORY[0x1E69DADF0])
    {
      (*(v29 + 96))(v30, v28);
      v31 = *v30;
      v32 = v30[1];

      result = sub_1C8391AC8(v31, v32);
      if ((v33 & 1) == 0)
      {
        v34 = v44;
        v44[3] = MEMORY[0x1E69E63B0];
        v34[4] = &protocol witness table for Double;
        *v34 = result;
        return result;
      }
    }

    else
    {
      (*(v29 + 8))(v30, v28);
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v35 = v44;
  v44[3] = v9;
  v35[4] = &protocol witness table for TypedValue;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  return v26(boxed_opaque_existential_1, v25, v9);
}

uint64_t sub_1C833A95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D6A8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1C840C9CC();
  v47 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v43 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v10 + 16);
  v46 = a1;
  v44 = v21;
  (v21)(v14, a1, v9, v19);
  v42 = *(v10 + 88);
  v22 = v42(v14, v9);
  v41 = *MEMORY[0x1E69DAE70];
  v40 = v4;
  if (v22 == v41)
  {
    (*(v10 + 96))(v14, v9);
    v23 = swift_projectBox();
    (*(v4 + 16))(v8, v23, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAE10])
    {
      (*(v4 + 96))(v8, v3);
      (*(v47 + 32))(v17, v8, v18);

      v24 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v24 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v17, v24, 1, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C832D574(v17, &qword_1EC29D6A8);
    v25 = v45;
    v26 = v46;
    v27 = v44;
    v44(v45, v46, v9);
    v28 = v42(v25, v9);
    if (v28 == v41)
    {
      (*(v10 + 96))(v25, v9);
      v29 = swift_projectBox();
      v31 = v39;
      v30 = v40;
      (*(v40 + 16))(v39, v29, v3);
      (*(v30 + 88))(v31, v3);
      (*(v30 + 8))(v31, v3);
    }

    else
    {
      (*(v10 + 8))(v25, v9);
    }

    v37 = v48;
    v48[3] = v9;
    v37[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    return v27(boxed_opaque_existential_1, v26, v9);
  }

  else
  {
    v32 = *(v47 + 32);
    v33 = v43;
    v32(v43, v17, v18);
    v34 = v48;
    v48[3] = v18;
    v34[4] = &protocol witness table for TypedValue.PrimitiveValue.PlacemarkValue;
    v35 = __swift_allocate_boxed_opaque_existential_1(v34);
    return (v32)(v35, v33, v18);
  }
}

uint64_t sub_1C833AEA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D688);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1C840B23C();
  v47 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v43 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v10 + 16);
  v46 = a1;
  v44 = v21;
  (v21)(v14, a1, v9, v19);
  v42 = *(v10 + 88);
  v22 = v42(v14, v9);
  v41 = *MEMORY[0x1E69DAE70];
  v40 = v4;
  if (v22 == v41)
  {
    (*(v10 + 96))(v14, v9);
    v23 = swift_projectBox();
    (*(v4 + 16))(v8, v23, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAD88])
    {
      (*(v4 + 96))(v8, v3);
      (*(v47 + 32))(v17, v8, v18);

      v24 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v24 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v17, v24, 1, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C832D574(v17, &qword_1EC29D688);
    v25 = v45;
    v26 = v46;
    v27 = v44;
    v44(v45, v46, v9);
    v28 = v42(v25, v9);
    if (v28 == v41)
    {
      (*(v10 + 96))(v25, v9);
      v29 = swift_projectBox();
      v31 = v39;
      v30 = v40;
      (*(v40 + 16))(v39, v29, v3);
      (*(v30 + 88))(v31, v3);
      (*(v30 + 8))(v31, v3);
    }

    else
    {
      (*(v10 + 8))(v25, v9);
    }

    v37 = v48;
    v48[3] = v9;
    v37[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    return v27(boxed_opaque_existential_1, v26, v9);
  }

  else
  {
    v32 = *(v47 + 32);
    v33 = v43;
    v32(v43, v17, v18);
    v34 = v48;
    v48[3] = v18;
    v34[4] = &protocol witness table for Calendar.RecurrenceRule;
    v35 = __swift_allocate_boxed_opaque_existential_1(v34);
    return (v32)(v35, v33, v18);
  }
}

uint64_t sub_1C833B3F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D690);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1C840C90C();
  v47 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v43 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v10 + 16);
  v46 = a1;
  v44 = v21;
  (v21)(v14, a1, v9, v19);
  v42 = *(v10 + 88);
  v22 = v42(v14, v9);
  v41 = *MEMORY[0x1E69DAE70];
  v40 = v4;
  if (v22 == v41)
  {
    (*(v10 + 96))(v14, v9);
    v23 = swift_projectBox();
    (*(v4 + 16))(v8, v23, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAD70])
    {
      (*(v4 + 96))(v8, v3);
      (*(v47 + 32))(v17, v8, v18);

      v24 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v24 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v17, v24, 1, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C832D574(v17, &qword_1EC29D690);
    v25 = v45;
    v26 = v46;
    v27 = v44;
    v44(v45, v46, v9);
    v28 = v42(v25, v9);
    if (v28 == v41)
    {
      (*(v10 + 96))(v25, v9);
      v29 = swift_projectBox();
      v31 = v39;
      v30 = v40;
      (*(v40 + 16))(v39, v29, v3);
      (*(v30 + 88))(v31, v3);
      (*(v30 + 8))(v31, v3);
    }

    else
    {
      (*(v10 + 8))(v25, v9);
    }

    v37 = v48;
    v48[3] = v9;
    v37[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    return v27(boxed_opaque_existential_1, v26, v9);
  }

  else
  {
    v32 = *(v47 + 32);
    v33 = v43;
    v32(v43, v17, v18);
    v34 = v48;
    v48[3] = v18;
    v34[4] = &protocol witness table for TypedValue.PrimitiveValue.PaymentMethodValue;
    v35 = __swift_allocate_boxed_opaque_existential_1(v34);
    return (v32)(v35, v33, v18);
  }
}

void sub_1C833B940(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v46 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - v15;
  v17 = *(v10 + 16);
  v48 = v10 + 16;
  v49 = a1;
  v47 = v17;
  (v17)(&v43 - v15, a1, v9, v14);
  v18 = *(v10 + 88);
  v19 = v18(v16, v9);
  v20 = *MEMORY[0x1E69DAE70];
  if (v19 == *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 96))(v16, v9);
    v21 = swift_projectBox();
    (*(v4 + 16))(v8, v21, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADF8])
    {
      (*(v4 + 96))(v8, v3);
      v51 = *v8;
      v52 = *(v8 + 4);

      type metadata accessor for Decimal(0);
      v22 = v50;
      v50[3] = v23;
      v22[4] = &protocol witness table for NSDecimal;
      *v22 = v51;
      *(v22 + 4) = v52;
      return;
    }

    v44 = v4;
    v45 = v3;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v44 = v4;
    v45 = v3;
    (*(v10 + 8))(v16, v9);
  }

  v24 = v49;
  v25 = v47;
  v47(v12, v49, v9);
  if (v18(v12, v9) == v20)
  {
    (*(v10 + 96))(v12, v9);
    v26 = swift_projectBox();
    v28 = v44;
    v27 = v45;
    v29 = v46;
    (*(v44 + 16))(v46, v26, v45);
    if ((*(v28 + 88))(v29, v27) == *MEMORY[0x1E69DADF0])
    {
      (*(v28 + 96))(v29, v27);
      v30 = *v29;
      v31 = v29[1];

      v32 = sub_1C838DABC(v30, v31);
      if ((v33 & 1) == 0)
      {
        v34 = MEMORY[0x1CCA75CD0](*&v32);
        v36 = v35;
        v38 = v37;
        type metadata accessor for Decimal(0);
        v39 = v50;
        v50[3] = v40;
        v39[4] = &protocol witness table for NSDecimal;
        *v39 = v34;
        v39[1] = v36;
        *(v39 + 4) = v38;
        return;
      }
    }

    else
    {
      (*(v28 + 8))(v29, v27);
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v41 = v50;
  v50[3] = v9;
  v41[4] = &protocol witness table for TypedValue;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  v25(boxed_opaque_existential_1, v24, v9);
}

uint64_t sub_1C833BDBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D6B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_1C840C97C();
  v47 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v43 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v10 + 16);
  v46 = a1;
  v44 = v21;
  (v21)(v14, a1, v9, v19);
  v42 = *(v10 + 88);
  v22 = v42(v14, v9);
  v41 = *MEMORY[0x1E69DAE70];
  v40 = v4;
  if (v22 == v41)
  {
    (*(v10 + 96))(v14, v9);
    v23 = swift_projectBox();
    (*(v4 + 16))(v8, v23, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADD0])
    {
      (*(v4 + 96))(v8, v3);
      (*(v47 + 32))(v17, v8, v18);

      v24 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v24 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v17, v24, 1, v18);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1C832D574(v17, &qword_1EC29D6B0);
    v25 = v45;
    v26 = v46;
    v27 = v44;
    v44(v45, v46, v9);
    v28 = v42(v25, v9);
    if (v28 == v41)
    {
      (*(v10 + 96))(v25, v9);
      v29 = swift_projectBox();
      v31 = v39;
      v30 = v40;
      (*(v40 + 16))(v39, v29, v3);
      (*(v30 + 88))(v31, v3);
      (*(v30 + 8))(v31, v3);
    }

    else
    {
      (*(v10 + 8))(v25, v9);
    }

    v37 = v48;
    v48[3] = v9;
    v37[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    return v27(boxed_opaque_existential_1, v26, v9);
  }

  else
  {
    v32 = *(v47 + 32);
    v33 = v43;
    v32(v43, v17, v18);
    v34 = v48;
    v48[3] = v18;
    v34[4] = &protocol witness table for TypedValue.PrimitiveValue.FileValue;
    v35 = __swift_allocate_boxed_opaque_existential_1(v34);
    return (v32)(v35, v33, v18);
  }
}

uint64_t sub_1C833C308@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D778);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = sub_1C840B00C();
  v60 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  v26 = *(v10 + 16);
  v58 = v10 + 16;
  v59 = a1;
  v57 = v26;
  (v26)(v14, a1, v9, v23);
  v56 = *(v10 + 88);
  v27 = v56(v14, v9);
  v55 = *MEMORY[0x1E69DAE70];
  v53 = v4;
  v54 = v3;
  if (v27 == v55)
  {
    (*(v10 + 96))(v14, v9);
    v28 = swift_projectBox();
    (*(v4 + 16))(v8, v28, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DAD80])
    {
      (*(v4 + 96))(v8, v3);
      (*(v60 + 32))(v19, v8, v20);

      v29 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v29 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v19, v29, 1, v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v31 = v61;
  if (EnumTagSinglePayload != 1)
  {
    v40 = *(v60 + 32);
    v40(v25, v19, v20);
    v41 = v62;
    v62[3] = v20;
    v41[4] = &protocol witness table for DateComponents;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    v43 = v25;
    return (v40)(boxed_opaque_existential_1, v43, v20);
  }

  sub_1C832D574(v19, &qword_1EC29D778);
  v32 = v59;
  v33 = v57;
  v57(v31, v59, v9);
  v34 = v56(v31, v9);
  if (v34 != v55)
  {
    (*(v10 + 8))(v31, v9);
    goto LABEL_16;
  }

  (*(v10 + 96))(v31, v9);
  v35 = swift_projectBox();
  v36 = v52;
  v37 = v53;
  v38 = v54;
  (*(v53 + 16))(v52, v35, v54);
  if ((*(v37 + 88))(v36, v38) != *MEMORY[0x1E69DADF0])
  {
    (*(v37 + 8))(v36, v38);

    goto LABEL_16;
  }

  (*(v37 + 96))(v36, v38);

  v39 = v51;
  DateComponents.init(textValue:)();
  if (__swift_getEnumTagSinglePayload(v39, 1, v20) != 1)
  {
    v40 = *(v60 + 32);
    v47 = v50;
    v40(v50, v39, v20);
    v48 = v62;
    v62[3] = v20;
    v48[4] = &protocol witness table for DateComponents;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    v43 = v47;
    return (v40)(boxed_opaque_existential_1, v43, v20);
  }

  sub_1C832D574(v39, &qword_1EC29D778);
LABEL_16:
  v45 = v62;
  v62[3] = v9;
  v45[4] = &protocol witness table for TypedValue;
  v46 = __swift_allocate_boxed_opaque_existential_1(v45);
  return v33(v46, v32, v9);
}

uint64_t sub_1C833C960@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v64 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54 = (&v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v51 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D770);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = sub_1C840B1AC();
  v62 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v52 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v51 - v24;
  v26 = *(v10 + 16);
  v60 = v10 + 16;
  v61 = a1;
  v59 = v26;
  (v26)(v14, a1, v9, v23);
  v58 = *(v10 + 88);
  v27 = v58(v14, v9);
  v57 = *MEMORY[0x1E69DAE70];
  v55 = v4;
  v56 = v3;
  if (v27 == v57)
  {
    (*(v10 + 96))(v14, v9);
    v28 = swift_projectBox();
    (*(v4 + 16))(v8, v28, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADC8])
    {
      (*(v4 + 96))(v8, v3);
      (*(v62 + 32))(v19, v8, v20);

      v29 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v29 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v19, v29, 1, v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v31 = v63;
  if (EnumTagSinglePayload != 1)
  {
    v42 = *(v62 + 32);
    v42(v25, v19, v20);
    v43 = v64;
    v64[3] = v20;
    v43[4] = &protocol witness table for Date;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
    v45 = v25;
    return (v42)(boxed_opaque_existential_1, v45, v20);
  }

  sub_1C832D574(v19, &qword_1EC29D770);
  v32 = v61;
  v33 = v59;
  v59(v31, v61, v9);
  v34 = v58(v31, v9);
  if (v34 != v57)
  {
    (*(v10 + 8))(v31, v9);
    goto LABEL_16;
  }

  (*(v10 + 96))(v31, v9);
  v35 = swift_projectBox();
  v36 = v54;
  v37 = v55;
  v38 = v56;
  (*(v55 + 16))(v54, v35, v56);
  if ((*(v37 + 88))(v36, v38) != *MEMORY[0x1E69DADF0])
  {
    (*(v37 + 8))(v36, v38);

    goto LABEL_16;
  }

  (*(v37 + 96))(v36, v38);
  v39 = *v36;
  v40 = v36[1];

  v41 = v53;
  Date.init(textValue:)(v39, v40, v53);
  if (__swift_getEnumTagSinglePayload(v41, 1, v20) != 1)
  {
    v42 = *(v62 + 32);
    v49 = v52;
    v42(v52, v41, v20);
    v50 = v64;
    v64[3] = v20;
    v50[4] = &protocol witness table for Date;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
    v45 = v49;
    return (v42)(boxed_opaque_existential_1, v45, v20);
  }

  sub_1C832D574(v41, &qword_1EC29D770);
LABEL_16:
  v47 = v64;
  v64[3] = v9;
  v47[4] = &protocol witness table for TypedValue;
  v48 = __swift_allocate_boxed_opaque_existential_1(v47);
  return v33(v48, v32, v9);
}

uint64_t sub_1C833CFB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v40 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v37 - v7);
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = *(v10 + 16);
  v42 = v10 + 16;
  v43 = a1;
  v41 = v17;
  (v17)(&v37 - v15, a1, v9, v14);
  v18 = *(v10 + 88);
  v19 = v18(v16, v9);
  v20 = *MEMORY[0x1E69DAE70];
  if (v19 == *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 96))(v16, v9);
    v21 = swift_projectBox();
    (*(v4 + 16))(v8, v21, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADB0])
    {
      (*(v4 + 96))(v8, v3);
      v22 = *v8;

      v24 = v44;
      v44[3] = MEMORY[0x1E69E6530];
      v24[4] = &protocol witness table for Int;
      *v24 = v22;
      return result;
    }

    v38 = v4;
    v39 = v3;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v38 = v4;
    v39 = v3;
    (*(v10 + 8))(v16, v9);
  }

  v25 = v43;
  v26 = v41;
  v41(v12, v43, v9);
  if (v18(v12, v9) == v20)
  {
    (*(v10 + 96))(v12, v9);
    v27 = swift_projectBox();
    v29 = v38;
    v28 = v39;
    v30 = v40;
    (*(v38 + 16))(v40, v27, v39);
    if ((*(v29 + 88))(v30, v28) == *MEMORY[0x1E69DADF0])
    {
      (*(v29 + 96))(v30, v28);
      v31 = *v30;
      v32 = v30[1];

      result = sub_1C83C6BB0(v31, v32);
      if ((v33 & 1) == 0)
      {
        v34 = v44;
        v44[3] = MEMORY[0x1E69E6530];
        v34[4] = &protocol witness table for Int;
        *v34 = result;
        return result;
      }
    }

    else
    {
      (*(v29 + 8))(v30, v28);
    }
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v35 = v44;
  v44[3] = v9;
  v35[4] = &protocol witness table for TypedValue;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  return v26(boxed_opaque_existential_1, v25, v9);
}

uint64_t sub_1C833D404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v20 = sub_1C840B13C();
  v60 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v50 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v49 - v24;
  v26 = *(v10 + 16);
  v58 = v10 + 16;
  v59 = a1;
  v57 = v26;
  (v26)(v14, a1, v9, v23);
  v56 = *(v10 + 88);
  v27 = v56(v14, v9);
  v55 = *MEMORY[0x1E69DAE70];
  v53 = v4;
  v54 = v3;
  if (v27 == v55)
  {
    (*(v10 + 96))(v14, v9);
    v28 = swift_projectBox();
    (*(v4 + 16))(v8, v28, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADB8])
    {
      (*(v4 + 96))(v8, v3);
      (*(v60 + 32))(v19, v8, v20);

      v29 = 0;
      goto LABEL_7;
    }

    (*(v4 + 8))(v8, v3);
  }

  else
  {
    (*(v10 + 8))(v14, v9);
  }

  v29 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v19, v29, 1, v20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v20);
  v31 = v61;
  if (EnumTagSinglePayload != 1)
  {
    v40 = *(v60 + 32);
    v40(v25, v19, v20);
    v41 = v62;
    v62[3] = v20;
    v41[4] = &protocol witness table for URL;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    v43 = v25;
    return (v40)(boxed_opaque_existential_1, v43, v20);
  }

  sub_1C832D574(v19, &qword_1EC29D4C8);
  v32 = v59;
  v33 = v57;
  v57(v31, v59, v9);
  v34 = v56(v31, v9);
  if (v34 != v55)
  {
    (*(v10 + 8))(v31, v9);
    goto LABEL_16;
  }

  (*(v10 + 96))(v31, v9);
  v35 = swift_projectBox();
  v36 = v52;
  v37 = v53;
  v38 = v54;
  (*(v53 + 16))(v52, v35, v54);
  if ((*(v37 + 88))(v36, v38) != *MEMORY[0x1E69DADF0])
  {
    (*(v37 + 8))(v36, v38);

    goto LABEL_16;
  }

  (*(v37 + 96))(v36, v38);

  v39 = v51;
  URL.init(textValue:)(v51);
  if (__swift_getEnumTagSinglePayload(v39, 1, v20) != 1)
  {
    v40 = *(v60 + 32);
    v47 = v50;
    v40(v50, v39, v20);
    v48 = v62;
    v62[3] = v20;
    v48[4] = &protocol witness table for URL;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
    v43 = v47;
    return (v40)(boxed_opaque_existential_1, v43, v20);
  }

  sub_1C832D574(v39, &qword_1EC29D4C8);
LABEL_16:
  v45 = v62;
  v62[3] = v9;
  v45[4] = &protocol witness table for TypedValue;
  v46 = __swift_allocate_boxed_opaque_existential_1(v45);
  return v33(v46, v32, v9);
}

uint64_t sub_1C833DA5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v60 = a2;
  v3 = sub_1C840B07C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C840C9DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = sub_1C840CA1C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D6B8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v47 - v18;
  v20 = sub_1C840B04C();
  v59 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v55 = &v47 - v24;
  v25 = *(v12 + 16);
  v58 = a1;
  v56 = v25;
  (v25)(v16, a1, v11, v23);
  v54 = *(v12 + 88);
  v26 = v54(v16, v11);
  v53 = *MEMORY[0x1E69DAE70];
  v51 = v6;
  v52 = v5;
  if (v26 == v53)
  {
    (*(v12 + 96))(v16, v11);
    v27 = swift_projectBox();
    (*(v6 + 16))(v10, v27, v5);
    if ((*(v6 + 88))(v10, v5) == *MEMORY[0x1E69DAD98])
    {
      (*(v6 + 96))(v10, v5);
      (*(v59 + 32))(v19, v10, v20);

      v28 = 0;
      goto LABEL_7;
    }

    (*(v6 + 8))(v10, v5);
  }

  else
  {
    (*(v12 + 8))(v16, v11);
  }

  v28 = 1;
LABEL_7:
  __swift_storeEnumTagSinglePayload(v19, v28, 1, v20);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C832D574(v19, &qword_1EC29D6B8);
    v29 = v57;
    v30 = v58;
    v31 = v56;
    v56(v57, v58, v11);
    v32 = v54(v29, v11);
    if (v32 == v53)
    {
      (*(v12 + 96))(v29, v11);
      v33 = swift_projectBox();
      v35 = v50;
      v34 = v51;
      v36 = v52;
      (*(v51 + 16))(v50, v33, v52);
      if ((*(v34 + 88))(v35, v36) == *MEMORY[0x1E69DADF0])
      {
        (*(v34 + 96))(v35, v36);

        sub_1C840B06C();
        v37 = v48;
        sub_1C840B05C();
        v38 = v60;
        v60[3] = v20;
        v38[4] = &protocol witness table for AttributedString;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
        return (*(v59 + 32))(boxed_opaque_existential_1, v37, v20);
      }

      (*(v34 + 8))(v35, v36);
    }

    else
    {
      (*(v12 + 8))(v29, v11);
    }

    v45 = v60;
    v60[3] = v11;
    v45[4] = &protocol witness table for TypedValue;
    v46 = __swift_allocate_boxed_opaque_existential_1(v45);
    return v31(v46, v30, v11);
  }

  else
  {
    v41 = *(v59 + 32);
    v42 = v55;
    v41(v55, v19, v20);
    v43 = v60;
    v60[3] = v20;
    v43[4] = &protocol witness table for AttributedString;
    v44 = __swift_allocate_boxed_opaque_existential_1(v43);
    return (v41)(v44, v42, v20);
  }
}

uint64_t sub_1C833E0A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v39 = a2;
  v3 = sub_1C840C9DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v32 - v7);
  v9 = sub_1C840CA1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - v15;
  v37 = *(v10 + 16);
  v38 = a1;
  v37(&v32 - v15, a1, v9, v14);
  v36 = *(v10 + 88);
  v17 = v36(v16, v9);
  v18 = *MEMORY[0x1E69DAE70];
  if (v17 == *MEMORY[0x1E69DAE70])
  {
    (*(v10 + 96))(v16, v9);
    v19 = swift_projectBox();
    (*(v4 + 16))(v8, v19, v3);
    if ((*(v4 + 88))(v8, v3) == *MEMORY[0x1E69DADF0])
    {
      (*(v4 + 96))(v8, v3);
      v20 = *v8;
      v21 = v8[1];
LABEL_9:

      v29 = v39;
      v39[3] = MEMORY[0x1E69E6158];
      v29[4] = &protocol witness table for String;
      *v29 = v20;
      v29[1] = v21;
      return result;
    }

    v33 = v4;
    v34 = v3;
    (*(v4 + 8))(v8, v3);
  }

  else
  {
    v33 = v4;
    v34 = v3;
    (*(v10 + 8))(v16, v9);
  }

  v23 = v37;
  v22 = v38;
  (v37)(v12, v38, v9);
  if (v36(v12, v9) == v18)
  {
    (*(v10 + 96))(v12, v9);
    v24 = swift_projectBox();
    v26 = v33;
    v25 = v34;
    v27 = v35;
    (*(v33 + 16))(v35, v24, v34);
    if ((*(v26 + 88))(v27, v25) == *MEMORY[0x1E69DADF0])
    {
      (*(v26 + 96))(v27, v25);
      v20 = *v27;
      v21 = *(v27 + 1);
      goto LABEL_9;
    }

    (*(v26 + 8))(v27, v25);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  v30 = v39;
  v39[3] = v9;
  v30[4] = &protocol witness table for TypedValue;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  return v23(boxed_opaque_existential_1, v22, v9);
}

uint64_t sub_1C833E4C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_1C840C9DC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C840CA1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D698);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1C840C8CC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 16);
  v42 = a1;
  v40 = v19;
  (v19)(v10, a1, v5, v16);
  v20 = *(v6 + 88);
  if (v20(v10, v5) == *MEMORY[0x1E69DAE58])
  {
    (*(v6 + 96))(v10, v5);
    v21 = swift_projectBox();
    (*(v15 + 16))(v13, v21, v14);

    v22 = 0;
  }

  else
  {
    (*(v6 + 8))(v10, v5);
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v22, 1, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C832D574(v13, &qword_1EC29D698);
    v24 = v41;
    v23 = v42;
    v25 = v40;
    v40(v41, v42, v5);
    if (v20(v24, v5) == *MEMORY[0x1E69DAE70])
    {
      (*(v6 + 96))(v24, v5);
      v26 = swift_projectBox();
      v28 = v37;
      v27 = v38;
      v29 = v39;
      (*(v38 + 16))(v37, v26, v39);
      (*(v27 + 88))(v28, v29);
      (*(v27 + 8))(v28, v29);
    }

    else
    {
      (*(v6 + 8))(v24, v5);
    }

    v34 = v43;
    v43[3] = v5;
    v34[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    return v25(boxed_opaque_existential_1, v23, v5);
  }

  else
  {
    v30 = *(v15 + 32);
    v30(v18, v13, v14);
    v31 = v43;
    v43[3] = v14;
    v31[4] = &protocol witness table for TypedValue.EntityValue;
    v32 = __swift_allocate_boxed_opaque_existential_1(v31);
    return (v30)(v32, v18, v14);
  }
}

uint64_t sub_1C833E954@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = sub_1C840C9DC();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C840CA1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D6A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_1C840C88C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 16);
  v42 = a1;
  v40 = v19;
  (v19)(v10, a1, v5, v16);
  v20 = *(v6 + 88);
  if (v20(v10, v5) == *MEMORY[0x1E69DAE20])
  {
    (*(v6 + 96))(v10, v5);
    v21 = swift_projectBox();
    (*(v15 + 16))(v13, v21, v14);

    v22 = 0;
  }

  else
  {
    (*(v6 + 8))(v10, v5);
    v22 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v22, 1, v14);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C832D574(v13, &qword_1EC29D6A0);
    v24 = v41;
    v23 = v42;
    v25 = v40;
    v40(v41, v42, v5);
    if (v20(v24, v5) == *MEMORY[0x1E69DAE70])
    {
      (*(v6 + 96))(v24, v5);
      v26 = swift_projectBox();
      v28 = v37;
      v27 = v38;
      v29 = v39;
      (*(v38 + 16))(v37, v26, v39);
      (*(v27 + 88))(v28, v29);
      (*(v27 + 8))(v28, v29);
    }

    else
    {
      (*(v6 + 8))(v24, v5);
    }

    v34 = v43;
    v43[3] = v5;
    v34[4] = &protocol witness table for TypedValue;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    return v25(boxed_opaque_existential_1, v23, v5);
  }

  else
  {
    v30 = *(v15 + 32);
    v30(v18, v13, v14);
    v31 = v43;
    v43[3] = v14;
    v31[4] = &protocol witness table for TypedValue.EnumerationValue;
    v32 = __swift_allocate_boxed_opaque_existential_1(v31);
    return (v30)(v32, v18, v14);
  }
}

void OUTLINED_FUNCTION_15_1()
{
  v1 = *(v0 - 408);
  *(v0 - 224) = *(v0 - 416);
  *(v0 - 216) = v1;
}

uint64_t sub_1C833EE24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for VariablePillView();
  sub_1C832D46C(v1 + *(v13 + 40), v12, &qword_1EC29E6B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C840B5EC();
    OUTLINED_FUNCTION_6();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_1C840D17C();
    v16 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_1C833F008()
{
  v1 = sub_1C840BB2C();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  v8 = v0 + *(type metadata accessor for VariablePillView() + 44);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_1C840D17C();
    v10 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C831E878(v9, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v9) = v12;
  }

  return v9 & 1;
}

id VariablePillView.init(name:icon:font:available:height:isFloating:controlState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v18 = type metadata accessor for VariablePillView();
  v19 = v18[10];
  *(a8 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  v20 = a8 + v18[11];
  *v20 = swift_getKeyPath();
  *(v20 + 8) = 0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a5;
  *(a8 + 32) = a9;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  v21 = objc_allocWithZone(type metadata accessor for VariablePillLayoutMetrics());
  v22 = a3;

  result = VariablePillLayoutMetrics.init(name:icon:font:height:)(a9, a1, a2, a3, a4);
  *(a8 + v18[12]) = result;
  return result;
}

uint64_t type metadata accessor for VariablePillView()
{
  result = qword_1EC29D7D0;
  if (!qword_1EC29D7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VariablePillView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C840B8AC();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v7 = (v6 - v5);
  v8 = *(v1 + *(type metadata accessor for VariablePillView() + 48));
  v9 = 0.0;
  if (*(v1 + 40))
  {
    v9 = 2.0;
  }

  v10 = *(v8 + OBJC_IVAR___WFVariablePillLayoutMetrics_cornerRadius) + v9;
  v11 = *(v4 + 28);
  v12 = *MEMORY[0x1E697F468];
  sub_1C840BB8C();
  OUTLINED_FUNCTION_6();
  (*(v13 + 104))(v7 + v11, v12);
  *v7 = v10;
  v7[1] = v10;
  v14 = *(v8 + OBJC_IVAR___WFVariablePillLayoutMetrics_spacing);
  *a1 = sub_1C840BB7C();
  *(a1 + 8) = v14;
  *(a1 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D788);
  sub_1C833F5E0(v1, (a1 + *(v15 + 44)));
  sub_1C840BDFC();
  sub_1C840B57C();
  OUTLINED_FUNCTION_20();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D790);
  OUTLINED_FUNCTION_1_5(v16);
  sub_1C840BE1C();
  sub_1C840B57C();
  OUTLINED_FUNCTION_20();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D798);
  OUTLINED_FUNCTION_1_5(v17);
  v18 = sub_1C833FC2C();
  KeyPath = swift_getKeyPath();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D7A0) + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = sub_1C840C5FC();
  v23 = v22;
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D7A8) + 36);
  sub_1C833FD1C(v7, v24);
  v25 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D7B0) + 36));
  *v25 = v21;
  v25[1] = v23;
  v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D7B8) + 36);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D7C0);
  sub_1C840B91C();
  v28 = MEMORY[0x1E697EAF0];
  sub_1C8340D5C(v7, v26, MEMORY[0x1E697EAF0]);
  *(v26 + *(v27 + 36)) = 0;
  sub_1C8396A28();
  sub_1C840C5FC();
  sub_1C840B69C();
  v29 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D7C8) + 36));
  *v29 = v31;
  v29[1] = v32;
  v29[2] = v33;
  return sub_1C8340DBC(v7, v28);
}

uint64_t sub_1C833F5E0@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D850);
  v3 = MEMORY[0x1EEE9AC00](v58);
  v61 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v49 - v5;
  v7 = a1[2];
  v59 = v7;
  if (!v7)
  {
    v53 = 0;
    v52 = 0;
    v55 = 0;
    v54 = 0;
    v57 = 0;
    v51 = 0;
    v50 = 0;
    v56 = 0;
    v11 = 0;
    goto LABEL_14;
  }

  v8 = v7;
  if ([v8 hasClearBackground])
  {
    v9 = 1;
  }

  else
  {
    if (([v8 hasTransparentBackground] & 1) == 0)
    {
      v10 = 0;
      v9 = 0;
      goto LABEL_10;
    }

    v9 = 0;
    if (a1[6] != 2)
    {
      v10 = 0;
      goto LABEL_10;
    }
  }

  v10 = sub_1C833FAF4();
LABEL_10:
  v12 = (*(a1 + *(type metadata accessor for VariablePillView() + 48)) + OBJC_IVAR___WFVariablePillLayoutMetrics_iconSize);
  v13 = *v12;
  v14 = v12[1];
  KeyPath = swift_getKeyPath();
  v16 = v8;
  sub_1C831F57C(v10);
  v17 = [v16 hasClearBackground];
  if (v17)
  {
    sub_1C840BF1C();
    v11 = v18;

    v19 = v10;
    sub_1C831F58C(v10);
  }

  else
  {

    v19 = v10;
    sub_1C831F58C(v10);
    v11 = 0;
  }

  v55 = v19;
  v57 = v17 ^ 1;
  v56 = 32;
  v50 = 256;
  v51 = v9;
  v53 = v13;
  v52 = v14;
  v54 = KeyPath;
LABEL_14:
  v20 = a1[1];
  v63 = *a1;
  v64 = v20;
  sub_1C833644C();

  v21 = sub_1C840C08C();
  v23 = v22;
  v25 = v24;
  v26 = *(*(a1 + *(type metadata accessor for VariablePillView() + 48)) + OBJC_IVAR___WFVariablePillLayoutMetrics_textFont);
  sub_1C840BFFC();
  v27 = sub_1C840C07C();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_1C832D564(v21, v23, v25 & 1);

  v34 = &v6[*(v58 + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D858) + 28);
  v36 = *MEMORY[0x1E6980FA8];
  v37 = sub_1C840C05C();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  *v6 = v27;
  *(v6 + 1) = v29;
  v6[16] = v31 & 1;
  v38 = v50 | v51;
  v58 = v50 | v51;
  *(v6 + 3) = v33;
  v39 = v61;
  sub_1C832D46C(v6, v61, &qword_1EC29D850);
  v40 = v59;
  v41 = v53;
  __src[0] = v59;
  __src[1] = v53;
  v42 = v52;
  v43 = v56;
  __src[2] = v52;
  __src[3] = v56;
  v51 = v6;
  v44 = v55;
  __src[4] = v55;
  __src[5] = v38;
  v45 = v54;
  __src[6] = v54;
  __src[7] = v11;
  LOBYTE(v23) = v57;
  LOBYTE(__src[8]) = v57;
  v46 = v60;
  memcpy(v60, __src, 0x41uLL);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D860);
  sub_1C832D46C(v39, v46 + *(v47 + 48), &qword_1EC29D850);
  sub_1C832D46C(__src, &v63, &qword_1EC29D868);
  sub_1C832D574(v51, &qword_1EC29D850);
  sub_1C832D574(v39, &qword_1EC29D850);
  v63 = v40;
  v64 = v41;
  v65 = v42;
  v66 = v43;
  v67 = v44;
  v68 = v58;
  v69 = v45;
  v70 = v11;
  v71 = v23;
  return sub_1C832D574(&v63, &qword_1EC29D868);
}

id sub_1C833FAF4()
{
  v1 = *(v0 + 48);
  if (v1 < 2)
  {
    if (*(v0 + 24) == 1)
    {
      v2 = [objc_opt_self() wf_accentColor];
      goto LABEL_7;
    }

    v7 = objc_allocWithZone(MEMORY[0x1E69E09E0]);

    return [v7 initWithSystemColor_];
  }

  else
  {
    if (v1 == 2)
    {
      v6 = [objc_opt_self() whiteColor];
    }

    else
    {
      if (v1 == 3)
      {
        v2 = [objc_opt_self() wf_secondaryLabelColor];
LABEL_7:
        v3 = v2;
        v4 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithPlatformColor_];

        return v4;
      }

      v6 = [objc_opt_self() blackColor];
    }

    return v6;
  }
}

uint64_t sub_1C833FC2C()
{
  if (sub_1C833F008())
  {
LABEL_2:
    v1 = [objc_opt_self() tintColor];

    return sub_1C840C26C();
  }

  v3 = *(v0 + 48);
  if (v3 < 2)
  {
    if (*(v0 + 24) == 1)
    {
      goto LABEL_2;
    }

    return MEMORY[0x1EEDE3F18]();
  }

  else if (v3 == 2)
  {

    return sub_1C840C2CC();
  }

  else if (v3 == 3)
  {

    return MEMORY[0x1EEDE40F8]();
  }

  else
  {

    return sub_1C840C2AC();
  }
}

double sub_1C833FD1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E800);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = sub_1C833FE6C();
  sub_1C8340D5C(a1, v7, MEMORY[0x1E697EAF0]);
  *&v7[*(v5 + 60)] = v8;
  *&v7[*(v5 + 64)] = 256;
  sub_1C840C5FC();
  sub_1C840B69C();
  sub_1C8340E14(v7, a2);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D848) + 36));
  v10 = v12[1];
  *v9 = v12[0];
  v9[1] = v10;
  result = *&v13;
  v9[2] = v13;
  return result;
}

uint64_t sub_1C833FE6C()
{
  if (*(v0 + 40) == 1)
  {

    return sub_1C833FFF0();
  }

  else if (sub_1C833F008())
  {

    return sub_1C840C2CC();
  }

  else
  {
    switch(*(v0 + 48))
    {
      case 0:
      case 1:
        sub_1C833FC2C();
        v4 = sub_1C840C2DC();

        result = v4;
        break;
      case 2:
        if (*(v0 + 24) == 1)
        {
          v2 = [objc_opt_self() tintColor];

          goto LABEL_13;
        }

        result = MEMORY[0x1EEDE3F18]();
        break;
      case 3:
        v3 = [objc_opt_self() wf_tertiarySystemGroupedBackgroundColor];

LABEL_13:
        result = sub_1C840C26C();
        break;
      default:

        result = sub_1C840C2AC();
        break;
    }
  }

  return result;
}

uint64_t sub_1C833FFF0()
{
  v0 = sub_1C840C27C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C840B5EC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  sub_1C833EE24(&v13 - v9);
  (*(v5 + 104))(v8, *MEMORY[0x1E697DBB8], v4);
  sub_1C840B5DC();
  v11 = *(v5 + 8);
  v11(v8, v4);
  v11(v10, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  return sub_1C840C35C();
}

char *sub_1C8340218(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6, double a7)
{
  v14 = type metadata accessor for VariablePillView();
  v15 = (v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v21 = v15[12];
  *&v20[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  v22 = &v20[v15[13]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *v20 = a1;
  *(v20 + 1) = a2;
  *(v20 + 2) = a3;
  v20[24] = a5;
  *(v20 + 4) = a7;
  v20[40] = 0;
  *(v20 + 6) = a6;
  objc_allocWithZone(type metadata accessor for VariablePillLayoutMetrics());
  v23 = a3;
  v24 = a4;

  *&v20[v15[14]] = VariablePillLayoutMetrics.init(name:icon:font:height:)(a7, a1, a2, a3, a4);
  sub_1C8340D5C(v20, v18, type metadata accessor for VariablePillView);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D840));
  v26 = sub_1C840B84C();
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAutoresizingMask_];
  v27 = v32;
  *&v32[OBJC_IVAR___WFVariablePillHostingView_contentView] = v26;
  v28 = type metadata accessor for VariablePillHostingView();
  v33.receiver = v27;
  v33.super_class = v28;
  v29 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v29 addSubview_];

  sub_1C8340DBC(v20, type metadata accessor for VariablePillView);
  return v29;
}

id sub_1C8340618()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariablePillHostingView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C834065C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEmphasized.getter();
  *a1 = result & 1;
  return result;
}

void sub_1C83406F8()
{
  sub_1C834088C(319, &qword_1EC29D7E0, sub_1C8340848, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for WFVariableControlState(319);
    if (v1 <= 0x3F)
    {
      sub_1C834088C(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1C83408F0();
        if (v3 <= 0x3F)
        {
          type metadata accessor for VariablePillLayoutMetrics();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C8340848()
{
  result = qword_1EC29D7E8;
  if (!qword_1EC29D7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29D7E8);
  }

  return result;
}

void sub_1C834088C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C83408F0()
{
  if (!qword_1EC29CE28)
  {
    v0 = sub_1C840B60C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC29CE28);
    }
  }
}

unint64_t sub_1C8340964()
{
  result = qword_1EC29D7F8;
  if (!qword_1EC29D7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D7C8);
    sub_1C83409F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D7F8);
  }

  return result;
}

unint64_t sub_1C83409F0()
{
  result = qword_1EC29D800;
  if (!qword_1EC29D800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D7B8);
    sub_1C8340AA8();
    sub_1C830D3C0(&qword_1ED7EE780, &qword_1EC29D7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D800);
  }

  return result;
}

unint64_t sub_1C8340AA8()
{
  result = qword_1EC29D808;
  if (!qword_1EC29D808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D7A8);
    sub_1C8340B60();
    sub_1C830D3C0(&qword_1EC29D838, &qword_1EC29D7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D808);
  }

  return result;
}

unint64_t sub_1C8340B60()
{
  result = qword_1EC29D810;
  if (!qword_1EC29D810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D7A0);
    sub_1C8340C18();
    sub_1C830D3C0(&qword_1ED7EE960, &qword_1EC29D3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D810);
  }

  return result;
}

unint64_t sub_1C8340C18()
{
  result = qword_1EC29D818;
  if (!qword_1EC29D818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D798);
    sub_1C8340CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D818);
  }

  return result;
}

unint64_t sub_1C8340CA4()
{
  result = qword_1EC29D820;
  if (!qword_1EC29D820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D790);
    sub_1C830D3C0(&qword_1EC29D828, &qword_1EC29D830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D820);
  }

  return result;
}

uint64_t sub_1C8340D5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C8340DBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8340E14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E800);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8340E84(uint64_t a1)
{
  v2 = sub_1C840C05C();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1C840B9FC();
}

uint64_t EnvironmentValues.isEmphasized.getter()
{
  sub_1C8340FC8();
  sub_1C840BB3C();
  return v1;
}

unint64_t sub_1C8340FC8()
{
  result = qword_1EC29D870;
  if (!qword_1EC29D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D870);
  }

  return result;
}

uint64_t (*EnvironmentValues.isEmphasized.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1C8340FC8();
  sub_1C840BB3C();
  *(a1 + 16) = *(a1 + 17);
  return sub_1C83410C0;
}

unint64_t sub_1C83410F8()
{
  result = qword_1EC29D878;
  if (!qword_1EC29D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D878);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmphasizedModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for EmphasizedModifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C83412EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D880);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D888);
  v9 = a3 + *(result + 36);
  *v9 = KeyPath;
  *(v9 + 8) = a2;
  return result;
}

unint64_t sub_1C83413A0()
{
  result = qword_1EC29D890;
  if (!qword_1EC29D890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D888);
    sub_1C830D3C0(&qword_1EC29D898, &qword_1EC29D880);
    sub_1C830D3C0(&qword_1EC29D8A0, &qword_1EC29D8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D890);
  }

  return result;
}

uint64_t ParameterSummaryError.hashValue.getter()
{
  sub_1C840D77C();
  MEMORY[0x1CCA76180](0);
  return sub_1C840D7CC();
}

uint64_t sub_1C8341524()
{
  sub_1C840D77C();
  MEMORY[0x1CCA76180](0);
  return sub_1C840D7CC();
}

double ParameterSummaryParameter.parameterSummaryValue(for:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1C83415AC()
{
  result = qword_1EC29D8B0;
  if (!qword_1EC29D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D8B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ParameterSummaryError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of ParameterSummaryParameter.asTypedValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 120) + **(a3 + 120));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C8311C5C;

  return v9(a1, a2, a3);
}

double static ShapeStyle<>.solidColorForeground.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 1;
  *a1 = xmmword_1C8414670;
  return result;
}

id sub_1C8341954()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  sub_1C83442F8(v1, v2);
  sub_1C840B2DC();

  result = [*(v0 + 16) backgroundColor];
  if (result)
  {
    return sub_1C840C26C();
  }

  return result;
}

uint64_t sub_1C8341A2C()
{
  swift_getKeyPath();
  sub_1C8342100();
}

void sub_1C8341AA0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1C8344B48();

    v2 = sub_1C840D25C();
  }

  [v3 setBackgroundColor_];
}

uint64_t sub_1C8341B10()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_1();
  sub_1C83442F8(v1, v2);
  sub_1C840B2DC();

  v3 = [*(v0 + 16) traitCollection];
  [v3 userInterfaceStyle];

  return sub_1C840B5FC();
}

uint64_t sub_1C8341BDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C8344AB4(a1, &v6 - v3, &qword_1EC29D8C0);
  return sub_1C8341C88(v4);
}

uint64_t sub_1C8341C88(uint64_t a1)
{
  swift_getKeyPath();
  sub_1C8342100();

  return sub_1C832D574(a1, &qword_1EC29D8C0);
}

id sub_1C8341D0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C840B5EC();
  v21 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v20 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - v14;
  v16 = *(a1 + 16);
  sub_1C8344AB4(a2, &v20 - v14, &qword_1EC29D8C0);
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) != 1)
  {
    v18 = v21;
    (*(v21 + 32))(v6, v15, v4);
    (*(v18 + 16))(v13, v6, v4);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v4);
    sub_1C8344AB4(v13, v10, &qword_1EC29D8C0);
    v17 = sub_1C840D23C();
    sub_1C832D574(v13, &qword_1EC29D8C0);
    (*(v18 + 8))(v6, v4);
  }

  [v16 setOverrideUserInterfaceStyle_];
  return [v16 updateTraitsIfNeeded];
}

void sub_1C8341F78(uint64_t a1, uint64_t a2)
{
  v4 = [*(v2 + 16) visualStylingProviderForCategory_];
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = v4;
  v6 = [v4 _visualStylingForStyle_];

  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if ([v6 color])
  {
    sub_1C840C26C();
    [v6 alpha];
    sub_1C840C2DC();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1C8342044()
{
  v1 = v0;
  sub_1C840B2EC();
  v2 = [objc_allocWithZone(MEMORY[0x1E69AE168]) init];
  *(v1 + 16) = v2;
  sub_1C8344B48();
  v3 = v2;

  v4 = sub_1C840D25C();
  [v3 setBackgroundColor_];

  return v1;
}

uint64_t sub_1C8342100()
{
  OUTLINED_FUNCTION_0_1();
  sub_1C83442F8(v0, v1);
  return sub_1C840B2CC();
}

uint64_t sub_1C83421A8()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices24SolidColorThemeTampoline___observationRegistrar;
  sub_1C840B2FC();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C834224C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C8342244();
  *a1 = result;
  return result;
}

uint64_t sub_1C8342298@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C840B5EC();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t sub_1C83422E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C8344634();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C8342348()
{
  sub_1C8342C34();

  return sub_1C840BB3C();
}

uint64_t sub_1C8342390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C8344AB4(a1, &v5 - v3, &qword_1EC29D8C0);
  sub_1C8342C34();
  sub_1C840BB4C();
  return sub_1C832D574(a1, &qword_1EC29D8C0);
}

uint64_t sub_1C8342458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C8345018();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C83424DC(void (*a1)(void))
{
  a1();
  sub_1C840BB3C();
  return v2;
}

uint64_t sub_1C834256C()
{
  v1 = v0[1];
  if (*v0 == 2)
  {
    switch(v1)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        v3 = &unk_1EC29D9E0;
        v4 = OUTLINED_FUNCTION_12();
        __swift_instantiateConcreteTypeFromMangledNameV2(v4);
        v5 = &unk_1EC29D9E8;
        goto LABEL_9;
      default:
        goto LABEL_10;
    }
  }

  switch(v1)
  {
    case 0:

      result = sub_1C840B6AC();
      break;
    case 1:
    case 2:
    case 3:
      v3 = &unk_1EC29D9F0;
      v6 = OUTLINED_FUNCTION_12();
      __swift_instantiateConcreteTypeFromMangledNameV2(v6);
      v5 = &unk_1EC29D9F8;
LABEL_9:
      sub_1C830D3C0(v5, v3);
      result = sub_1C840B6AC();
      break;
    default:
LABEL_10:
      result = sub_1C840D50C();
      __break(1u);
      break;
  }

  return result;
}

uint64_t SolidColorMaterialStyle.resolve(in:)()
{
  v1 = sub_1C840B5EC();
  OUTLINED_FUNCTION_5();
  v37 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v36 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8B8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v38 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v33[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v33[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v33[-v19];
  v21 = v0[1];
  v39 = *v0;
  sub_1C8342BE0();
  sub_1C840BB3C();
  if (!v40)
  {
    goto LABEL_15;
  }

  sub_1C8341B10();
  OUTLINED_FUNCTION_3_3(v20);
  if (!v23)
  {
    v35 = v21;
    sub_1C832D574(v20, &qword_1EC29D8C0);
    sub_1C8341B10();
    sub_1C8342C34();
    sub_1C840BB3C();
    v22 = *(v6 + 48);
    sub_1C8344AB4(v18, v9, &qword_1EC29D8C0);
    sub_1C8344AB4(v15, &v9[v22], &qword_1EC29D8C0);
    OUTLINED_FUNCTION_3_3(v9);
    if (v23)
    {
      OUTLINED_FUNCTION_7_3(v15);
      OUTLINED_FUNCTION_7_3(v18);
      OUTLINED_FUNCTION_3_3(&v9[v22]);
      v21 = v35;
      if (v23)
      {
        sub_1C832D574(v9, &qword_1EC29D8C0);
LABEL_18:
        sub_1C8341F78(v39, v21);
        v40 = v32;
        v26 = sub_1C840B6AC();

        return v26;
      }
    }

    else
    {
      v24 = v38;
      sub_1C8344AB4(v9, v38, &qword_1EC29D8C0);
      OUTLINED_FUNCTION_3_3(&v9[v22]);
      v21 = v35;
      if (!v25)
      {
        v28 = v37;
        v29 = &v9[v22];
        v30 = v36;
        (*(v37 + 32))(v36, v29, v1);
        sub_1C83442F8(&qword_1ED7EE9E8, MEMORY[0x1E697DBD0]);
        v34 = sub_1C840CD8C();
        v31 = *(v28 + 8);
        v31(v30, v1);
        sub_1C832D574(v15, &qword_1EC29D8C0);
        sub_1C832D574(v18, &qword_1EC29D8C0);
        v31(v38, v1);
        sub_1C832D574(v9, &qword_1EC29D8C0);
        if (v34)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      OUTLINED_FUNCTION_7_3(v15);
      OUTLINED_FUNCTION_7_3(v18);
      (*(v37 + 8))(v24, v1);
    }

    sub_1C832D574(v9, &qword_1EC29D8B8);
LABEL_14:

    goto LABEL_15;
  }

  sub_1C832D574(v20, &qword_1EC29D8C0);
LABEL_15:
  v40 = v39;
  v41 = v21;
  return sub_1C834256C();
}

unint64_t sub_1C8342BE0()
{
  result = qword_1EC29D8C8;
  if (!qword_1EC29D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D8C8);
  }

  return result;
}

unint64_t sub_1C8342C34()
{
  result = qword_1EC29D8D0;
  if (!qword_1EC29D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D8D0);
  }

  return result;
}

uint64_t sub_1C8342CA8@<X0>(uint64_t *a1@<X8>)
{
  result = SolidColorMaterialStyle.resolve(in:)();
  *a1 = result;
  return result;
}

double static ShapeStyle<>.solidColorBackground.getter@<D0>(_OWORD *a1@<X8>)
{
  *&result = 2;
  *a1 = xmmword_1C8416120;
  return result;
}

uint64_t sub_1C8342CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D980);
  MEMORY[0x1EEE9AC00](v46);
  v6 = &v34 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D988);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v34 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D990);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v34 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D998);
  MEMORY[0x1EEE9AC00](v45);
  v43 = &v34 - v9;
  v10 = sub_1C840BB2C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v44 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v16 = *(v2 + 8);
  v39 = v2;
  v17 = *(v2 + 16);

  if ((v17 & 1) == 0)
  {
    sub_1C840D17C();
    v18 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v11 + 8))(v15, v10);
    v16 = v47;
  }

  if (!v16)
  {
    goto LABEL_9;
  }

  v19 = sub_1C8341954();
  if (!v19)
  {

LABEL_9:
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D9A0);
    (*(*(v31 - 8) + 16))(v6, a1, v31);
    swift_storeEnumTagMultiPayload();
    sub_1C83448F0();
    sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
    return sub_1C840BC6C();
  }

  v20 = v19;
  v34 = a1;
  v35 = v11;
  v37 = a2;
  v21 = v39;
  sub_1C83433E8();
  sub_1C840C2FC();
  v22 = sub_1C840C30C();
  v23 = WFCGColorPerceivedLightness(v22);

  v36 = v10;
  if (v23 < 0.15 || v23 > 0.95)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D9A0);
    (*(*(v33 - 8) + 16))(v42, v34, v33);
    swift_storeEnumTagMultiPayload();
    sub_1C83449A8();
    sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
    v30 = v43;
    sub_1C840BC6C();
  }

  else
  {
    sub_1C8341F78(2, *v21);
    v47 = v24;

    v25 = sub_1C840C5AC();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D9A0);
    v27 = *(*(v26 - 8) + 16);
    v39 = v20;
    v28 = v38;
    v27(v38, v34, v26);
    v29 = v42;
    *(v28 + *(v41 + 36)) = v25;
    sub_1C8344AB4(v28, v29, &qword_1EC29D990);
    swift_storeEnumTagMultiPayload();
    sub_1C83449A8();
    sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
    v30 = v43;
    sub_1C840BC6C();

    sub_1C832D574(v28, &qword_1EC29D990);
  }

  sub_1C8344AB4(v30, v6, &qword_1EC29D998);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D9A0);
  sub_1C83448F0();
  sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
  sub_1C840BC6C();

  sub_1C832D574(v30, &qword_1EC29D998);
  return (*(v35 + 8))(v44, v36);
}

uint64_t sub_1C83433E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = sub_1C840B5EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C840BB1C();
  sub_1C8341B10();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    type metadata accessor for SolidColorThemeListRowModifier(0);
    sub_1C831B8A0(&qword_1EC29E6B0, MEMORY[0x1E697DBD0], v6);
    if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
    {
      sub_1C832D574(v2, &qword_1EC29D8C0);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
  }

  return sub_1C840B9AC();
}

uint64_t sub_1C83435B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a1;
  v49 = sub_1C840B5EC();
  MEMORY[0x1EEE9AC00](v49);
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C840BB2C();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CardBackgroundColorModifier(0);
  v9 = v8 - 8;
  v47 = *(v8 - 8);
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = sub_1C840B8AC();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  v18 = *(v15 + 20);
  v19 = *MEMORY[0x1E697F468];
  v20 = sub_1C840BB8C();
  (*(*(v20 - 8) + 104))(&v17[v18], v19, v20);
  __asm { FMOV            V0.2D, #21.0 }

  *v17 = _Q0;
  sub_1C8344740(v17, v14, MEMORY[0x1E697EAF0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D938);
  sub_1C83442F8(&qword_1EC29D940, MEMORY[0x1E697EAF0]);
  sub_1C840BDAC();
  sub_1C83446E8(v17, MEMORY[0x1E697EAF0]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D948);
  (*(*(v26 - 8) + 16))(a2, v48, v26);
  KeyPath = swift_getKeyPath();
  sub_1C8344740(v3, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CardBackgroundColorModifier);
  v28 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v29 = swift_allocObject();
  sub_1C834479C(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
  v30 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D950) + 36));
  *v30 = KeyPath;
  v30[1] = sub_1C8344800;
  v30[2] = v29;
  v31 = swift_getKeyPath();
  v32 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D958) + 36));
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D960) + 28);
  sub_1C831B8A0(&qword_1EC29E6B0, MEMORY[0x1E697DBD0], v32 + v33);
  __swift_storeEnumTagSinglePayload(v32 + v33, 0, 1, v49);
  *v32 = v31;
  v34 = swift_getKeyPath();
  v35 = *(v3 + *(v9 + 32));
  v36 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D968) + 36));
  *v36 = v34;
  v36[1] = v35;
  v37 = swift_getKeyPath();
  if (*v3)
  {

    v38 = v43;
    sub_1C840BB1C();
    sub_1C831B8A0(&qword_1EC29E6B0, MEMORY[0x1E697DBD0], v44);
    sub_1C840B9AC();
    sub_1C840C2FC();
    (*(v45 + 8))(v38, v46);
    v39 = sub_1C840C37C();
  }

  else
  {

    v39 = 0;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D970);
  v41 = (a2 + *(result + 36));
  *v41 = v37;
  v41[1] = v39;
  return result;
}

uint64_t sub_1C8343B3C(uint64_t a1, void *a2)
{
  v4 = sub_1C840BB2C();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C840B5EC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v23 - v15;
  result = type metadata accessor for CardBackgroundColorModifier(0);
  if (*(a2 + *(result + 24)))
  {
    (*(v8 + 16))(v16, a1, v7);
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v7);
    result = sub_1C8341C88(v16);
  }

  if (*a2)
  {
    v23 = v13;
    v24 = a1;
    v18 = *(v8 + 8);

    v18(a1, v7);
    sub_1C840BB1C();
    sub_1C831B8A0(&qword_1EC29E6B0, MEMORY[0x1E697DBD0], v11);
    sub_1C840B9AC();
    sub_1C840C2FC();
    (*(v25 + 8))(v6, v26);
    v19 = sub_1C840C30C();
    IsPerceivedLight = WFCGColorIsPerceivedLight(v19);

    v21 = MEMORY[0x1E697DBB8];
    if (!IsPerceivedLight)
    {
      v21 = MEMORY[0x1E697DBA8];
    }

    v22 = v23;
    (*(v8 + 104))(v23, *v21, v7);
    return (*(v8 + 32))(v24, v22, v7);
  }

  return result;
}

uint64_t sub_1C8343E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D8C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1C8344AB4(a1, &v6 - v3, &qword_1EC29D8C0);
  return sub_1C8342390(v4);
}

uint64_t sub_1C8343FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CardBackgroundColorModifier(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = (v9 - v8);
  v12 = *(v11 + 20);
  *(v10 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  *v10 = a1;
  if (a1)
  {
    type metadata accessor for SolidColorThemeTampoline(0);
    v13 = swift_allocObject();
    swift_retain_n();
    sub_1C8342044();
  }

  else
  {
    v13 = 0;
  }

  *(v10 + *(v6 + 24)) = v13;
  MEMORY[0x1CCA74BF0](v10, a2, v6, a3);
  return sub_1C83446E8(v10, type metadata accessor for CardBackgroundColorModifier);
}

uint64_t View.listRowBackground(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SolidColorThemeListRowModifier(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  *(v10 + 8) = swift_getKeyPath();
  *(v10 + 16) = 0;
  v11 = *(v6 + 24);
  *(v10 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  *v10 = a1;
  MEMORY[0x1CCA74BF0](v10, a2, v6, a3);
  return sub_1C83446E8(v10, type metadata accessor for SolidColorThemeListRowModifier);
}

uint64_t sub_1C8344248()
{
  result = sub_1C840B2FC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C83442F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C8344388()
{
  sub_1C8312328();
  if (v0 <= 0x3F)
  {
    sub_1C8313320(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1C8313320(319, &qword_1EC29D908, type metadata accessor for SolidColorThemeTampoline, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C83444AC()
{
  type metadata accessor for MTVisualStyle(319);
  if (v0 <= 0x3F)
  {
    sub_1C8344578();
    if (v1 <= 0x3F)
    {
      sub_1C8313320(319, &qword_1EC29CE38, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8344578()
{
  if (!qword_1EC29D920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D928);
    v0 = sub_1C840B60C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC29D920);
    }
  }
}

unint64_t sub_1C8344634()
{
  result = qword_1EC29D930;
  if (!qword_1EC29D930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D8C0);
    sub_1C83442F8(&qword_1ED7EE9E8, MEMORY[0x1E697DBD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D930);
  }

  return result;
}

uint64_t sub_1C83446E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8344740(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_12();
  v5(v4);
  return a2;
}

uint64_t sub_1C834479C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardBackgroundColorModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C8344800(uint64_t a1)
{
  v3 = *(type metadata accessor for CardBackgroundColorModifier(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1C8343B3C(a1, v4);
}

unint64_t sub_1C8344898()
{
  result = qword_1EC29D978;
  if (!qword_1EC29D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D978);
  }

  return result;
}

unint64_t sub_1C83448F0()
{
  result = qword_1EC29D9A8;
  if (!qword_1EC29D9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D998);
    sub_1C83449A8();
    sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D9A8);
  }

  return result;
}

unint64_t sub_1C83449A8()
{
  result = qword_1EC29D9B0;
  if (!qword_1EC29D9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D990);
    sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
    sub_1C830D3C0(&qword_1EC29D9C0, &qword_1EC29D9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29D9B0);
  }

  return result;
}

uint64_t sub_1C8344AB4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_12();
  v5(v4);
  return a2;
}

unint64_t sub_1C8344B48()
{
  result = qword_1EC29D9D8;
  if (!qword_1EC29D9D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29D9D8);
  }

  return result;
}

unint64_t sub_1C8344B9C()
{
  result = qword_1EC29DA00;
  if (!qword_1EC29DA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D970);
    sub_1C8344C54();
    sub_1C830D3C0(&qword_1ED7EE960, &qword_1EC29D3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA00);
  }

  return result;
}

unint64_t sub_1C8344C54()
{
  result = qword_1EC29DA08;
  if (!qword_1EC29DA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D968);
    sub_1C8344D0C();
    sub_1C830D3C0(&qword_1EC29DA58, &qword_1EC29DA60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA08);
  }

  return result;
}

unint64_t sub_1C8344D0C()
{
  result = qword_1EC29DA10;
  if (!qword_1EC29DA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D958);
    sub_1C8344DC4();
    sub_1C830D3C0(&qword_1EC29DA50, &qword_1EC29D960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA10);
  }

  return result;
}

unint64_t sub_1C8344DC4()
{
  result = qword_1EC29DA18;
  if (!qword_1EC29DA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D950);
    sub_1C8344E7C();
    sub_1C830D3C0(&qword_1EC29DA40, &qword_1EC29DA48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA18);
  }

  return result;
}

unint64_t sub_1C8344E7C()
{
  result = qword_1EC29DA20;
  if (!qword_1EC29DA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D938);
    sub_1C830D3C0(&qword_1EC29DA28, &qword_1EC29D948);
    sub_1C830D3C0(&qword_1EC29DA30, &qword_1EC29DA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA20);
  }

  return result;
}

unint64_t sub_1C8344F60()
{
  result = qword_1EC29DA68;
  if (!qword_1EC29DA68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DA70);
    sub_1C83448F0();
    sub_1C830D3C0(&qword_1EC29D9B8, &qword_1EC29D9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA68);
  }

  return result;
}

unint64_t sub_1C8345018()
{
  result = qword_1EC29DA78;
  if (!qword_1EC29DA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DA80);
    sub_1C834509C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA78);
  }

  return result;
}

unint64_t sub_1C834509C()
{
  result = qword_1EC29DA88;
  if (!qword_1EC29DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DA88);
  }

  return result;
}

char *sub_1C83450FC()
{
  OUTLINED_FUNCTION_3_4();
  v1 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_baseBackdrop;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v2 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_outerBorderLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979398]) &selRef_primaryColor];
  v3 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_shadowLayer;
  v4 = type metadata accessor for WFSDFLayer();
  *(v0 + v3) = [objc_allocWithZone(v4) &selRef_primaryColor];
  v5 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesBackdrop;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E6979310]) &selRef_primaryColor];
  v6 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesDisplacementLayer;
  *(v0 + v6) = [objc_allocWithZone(v4) &selRef_primaryColor];
  v7 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceBackdrop;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E6979310]) &selRef_primaryColor];
  v8 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceLayer;
  *(v0 + v8) = [objc_allocWithZone(v4) &selRef_primaryColor];
  v9 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceMask;
  *(v0 + v9) = [objc_allocWithZone(v4) &selRef_primaryColor];
  v10 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_highlightLayer;
  *(v0 + v10) = [objc_allocWithZone(v4) &selRef_primaryColor];
  type metadata accessor for WFGlassView();
  v11 = OUTLINED_FUNCTION_2();
  v14 = objc_msgSendSuper2(v12, v13, v11);
  v15 = [v14 layer];
  [v15 setBorderOffset_];

  v16 = [v14 &selRef_maximumLineHeight];
  [v16 setBorderWidth_];

  v17 = [v14 &selRef_maximumLineHeight];
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent_];

  v21 = [v20 CGColor];
  [v17 setBorderColor_];

  v22 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_outerBorderLayer;
  [*&v14[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_outerBorderLayer] setBorderOffset_];
  [*&v14[v22] setBorderWidth_];
  v23 = *&v14[v22];
  v24 = [v18 blackColor];
  v25 = [v24 colorWithAlphaComponent_];

  v26 = [v25 CGColor];
  [v23 setBorderColor_];

  v27 = [v14 layer];
  [v27 addSublayer_];

  v28 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_baseBackdrop;
  [*&v14[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_baseBackdrop] setEnabled_];
  v29 = *&v14[v28];
  sub_1C8346FEC(0x70756F7247, 0xE500000000000000, v29);

  v30 = [v14 layer];
  [v30 &selRef_associatedLogo];

  v31 = [v14 layer];
  [v31 &selRef_associatedLogo];

  v32 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesBackdrop;
  [*&v14[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesBackdrop] &selRef_shadowOffset];
  v33 = *&v14[v32];
  sub_1C8346FEC(0x70756F7247, 0xE500000000000000, v33);

  v34 = [v14 &selRef_maximumLineHeight];
  [v34 &selRef_associatedLogo];

  v35 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesDisplacementLayer;
  v36 = OUTLINED_FUNCTION_14_2();
  sub_1C8347088(v36, 0xEC000000746E656DLL, v37, &selRef_setName_);
  v38 = *&v14[v35];
  v39 = objc_allocWithZone(MEMORY[0x1E6979458]);
  v40 = v38;
  v41 = [v39 init];
  [v40 setEffect_];

  [*&v14[v32] &selRef_associatedLogo];
  v42 = sub_1C8347044();
  sub_1C840CDDC();
  v43 = sub_1C8396C48();
  sub_1C8347088(1920298082, 0xE400000000000000, v43, &selRef_setName_);
  v44 = sub_1C840D02C();
  v45 = sub_1C840CD9C();
  [v43 setValue:v44 forKey:v45];

  v46 = sub_1C840D0EC();
  v47 = OUTLINED_FUNCTION_6_5();
  v98 = v43;
  [v43 setValue:v46 forKey:v47];

  [v43 setEnabled_];
  sub_1C840CDDC();
  v48 = sub_1C8396C48();
  sub_1C8347088(0x6563616C70736964, 0xEC000000746E656DLL, v48, &selRef_setName_);
  v49 = sub_1C840CD9C();
  v50 = sub_1C840CD9C();
  v51 = OUTLINED_FUNCTION_12_2();
  [v51 v52];

  v53 = OUTLINED_FUNCTION_5_3();
  v54 = OUTLINED_FUNCTION_12_2();
  [v54 v55];

  [v48 setEnabled_];
  sub_1C840CDDC();
  v100 = sub_1C8396C48();
  v56 = OUTLINED_FUNCTION_13_2();
  sub_1C8347088(v56, v57, v58, &selRef_setName_);
  v59 = *&v14[v32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29F060);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1C8414660;
  *(v60 + 56) = v42;
  *(v60 + 32) = v48;
  v99 = v48;
  sub_1C83A5950(v60, v59);
  v61 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceBackdrop;
  [*&v14[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceBackdrop] &selRef_shadowOffset];
  sub_1C8347088(0x70756F7247, 0xE500000000000000, *&v14[v61], &selRef_setGroupName_);
  v62 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceLayer;
  [*&v14[v61] addSublayer_];
  v63 = OUTLINED_FUNCTION_14_2();
  sub_1C8347088(v63, 0xEC000000746E656DLL, v64, &selRef_setName_);
  v65 = *&v14[v62];
  v66 = objc_allocWithZone(MEMORY[0x1E6979458]);
  v67 = v65;
  v68 = [v66 init];
  [v67 setEffect_];

  v69 = [v14 layer];
  [v69 addSublayer_];

  sub_1C840CDDC();
  v70 = sub_1C8396C48();
  sub_1C8347088(1920298082, 0xE400000000000000, v70, &selRef_setName_);
  v71 = sub_1C840D02C();
  v72 = sub_1C840CD9C();
  OUTLINED_FUNCTION_11_3(v72);

  v73 = sub_1C840D0EC();
  v74 = OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_11_3(v74);

  [v70 setEnabled_];
  sub_1C840CDDC();
  v75 = sub_1C8396C48();
  sub_1C8347088(0x6563616C70736964, 0xEC000000746E656DLL, v75, &selRef_setName_);
  v76 = sub_1C840CD9C();
  v77 = sub_1C840CD9C();
  v78 = OUTLINED_FUNCTION_12_2();
  [v78 v79];

  v80 = OUTLINED_FUNCTION_5_3();
  v81 = OUTLINED_FUNCTION_12_2();
  [v81 v82];

  [v75 setEnabled_];
  sub_1C840CDDC();
  v83 = sub_1C8396C48();
  v84 = OUTLINED_FUNCTION_13_2();
  sub_1C8347088(v84, v85, v83, &selRef_setName_);
  v86 = *&v14[v61];
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_1C8416630;
  *(v87 + 32) = v83;
  *(v87 + 56) = v42;
  *(v87 + 64) = v70;
  *(v87 + 120) = v42;
  *(v87 + 88) = v42;
  *(v87 + 96) = v75;
  v88 = v83;
  v89 = v70;
  v90 = v75;
  sub_1C83A5950(v87, v86);
  [*&v14[v61] setMask_];
  v91 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_highlightLayer;
  v92 = *&v14[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_highlightLayer];
  v93 = objc_allocWithZone(MEMORY[0x1E6979460]);
  v94 = v92;
  v95 = [v93 init];
  [v94 setEffect_];

  v96 = [v14 layer];
  [v96 addSublayer_];

  sub_1C8345E44();
  return v14;
}

void sub_1C8345BBC()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for WFGlassView();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC29EB80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C8416640;
  v2 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_outerBorderLayer];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_baseBackdrop];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_shadowLayer];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesBackdrop];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesDisplacementLayer];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceBackdrop];
  *(inited + 72) = v7;
  v8 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceLayer];
  *(inited + 80) = v8;
  v25 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceMask];
  *(inited + 88) = v25;
  v24 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_highlightLayer];
  *(inited + 96) = v24;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v25;
  v17 = v24;
  v18 = 0;
  while (1)
  {
    if (v18 == 9)
    {
      swift_setDeallocating();
      sub_1C8346F44();
      return;
    }

    if ((inited & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x1CCA75DF0](v18, inited);
LABEL_6:
    v20 = v19;
    ++v18;
    [v0 bounds];
    [v20 setFrame_];
    v21 = [v0 layer];
    [v21 cornerRadius];
    v23 = v22;

    [v20 setCornerRadius_];
  }

  if (v18 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(inited + 8 * v18 + 32);
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C8345E44()
{
  [*(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_baseBackdrop) setMarginWidth_];
  v2 = [objc_allocWithZone(MEMORY[0x1E6979488]) init];
  v56 = objc_opt_self();
  v3 = [v56 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v4 CGColor];
  [v2 setColor_];

  [v2 setRadius_];
  [v2 setOffset_];
  [v2 setPunchout_];
  [v2 setInvert_];
  v6 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_shadowLayer);
  [v6 setEffect_];
  [v6 setSmoothness_];
  [*(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesDisplacementLayer) __block_descriptor_56_e8_32s40s48r_e5_v8__0ls32l8s40l8r48l8];
  v7 = sub_1C840B30C();
  v8 = OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_16_3();

  v9 = sub_1C840B30C();
  v10 = sub_1C840CD9C();
  OUTLINED_FUNCTION_16_3();

  OUTLINED_FUNCTION_15_2(v11, v12, v13);
  v14 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesBackdrop);
  v15 = objc_opt_self();
  v16 = [v15 valueWithCAColorMatrix_];
  v17 = sub_1C840CD9C();
  OUTLINED_FUNCTION_0_2(v17);

  v18 = sub_1C840B30C();
  v19 = sub_1C840CD9C();
  OUTLINED_FUNCTION_0_2(v19);

  v20 = sub_1C840D0EC();
  v21 = sub_1C840CD9C();
  OUTLINED_FUNCTION_0_2(v21);

  [v14 setMarginWidth_];
  [*(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceLayer) setSmoothness_];
  v22 = sub_1C840B30C();
  v23 = OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_0_2(v23);

  v24 = sub_1C840B30C();
  v25 = sub_1C840CD9C();
  OUTLINED_FUNCTION_0_2(v25);

  OUTLINED_FUNCTION_15_2(v26, v27, v28);
  v29 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceBackdrop);
  v30 = [v15 valueWithCAColorMatrix_];
  v31 = sub_1C840CD9C();
  OUTLINED_FUNCTION_9_4(v31);

  v32 = sub_1C840B30C();
  v33 = sub_1C840CD9C();
  [v29 setValue:v32 forKeyPath:v33];

  v34 = sub_1C840B30C();
  v35 = sub_1C840CD9C();
  OUTLINED_FUNCTION_9_4(v35);

  [v29 setMarginWidth_];
  v36 = [objc_allocWithZone(MEMORY[0x1E6979488]) init];
  v37 = [v56 blackColor];
  v38 = [v37 CGColor];

  [v36 setColor_];
  [v36 setRadius_];
  [v36 setOffset_];
  v39 = *(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceMask);
  [v39 setEffect_];
  [v39 setSmoothness_];
  [v39 setEffectOffset_];
  [*(v0 + OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_highlightLayer) setSmoothness_];
  v40 = sub_1C840B30C();
  v41 = OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_10_5(v41, sel_setValue_forKeyPath_);

  v42 = sub_1C840B30C();
  v43 = sub_1C840CD9C();
  v44 = OUTLINED_FUNCTION_8_4();
  [v44 v45];

  v46 = sub_1C840B30C();
  v47 = sub_1C840CD9C();
  v48 = OUTLINED_FUNCTION_8_4();
  [v48 v49];

  v50 = sub_1C840B30C();
  v51 = sub_1C840CD9C();
  v52 = OUTLINED_FUNCTION_8_4();
  [v52 v53];

  sub_1C840B30C();
  OUTLINED_FUNCTION_4_2();
  v54 = sub_1C840CD9C();
  OUTLINED_FUNCTION_10_5(v54, &selRef_setHidden_);

  CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  OUTLINED_FUNCTION_4_2();
  v55 = sub_1C840CD9C();
  OUTLINED_FUNCTION_10_5(v55, &selRef_setHidden_);
}

void sub_1C8346504()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_baseBackdrop;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v2 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_outerBorderLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v3 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_shadowLayer;
  v4 = type metadata accessor for WFSDFLayer();
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  v5 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesBackdrop;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v6 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_edgesDisplacementLayer;
  *(v0 + v6) = [objc_allocWithZone(v4) init];
  v7 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceBackdrop;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E6979310]) init];
  v8 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceLayer;
  *(v0 + v8) = [objc_allocWithZone(v4) init];
  v9 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_surfaceMask;
  *(v0 + v9) = [objc_allocWithZone(v4) init];
  v10 = OBJC_IVAR____TtC18WorkflowUIServices11WFGlassView_highlightLayer;
  *(v0 + v10) = [objc_allocWithZone(v4) init];
  OUTLINED_FUNCTION_7_4();
  __break(1u);
}

uint64_t sub_1C8346790()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFSDFView();
  v1 = objc_msgSendSuper2(&v3, sel_layer);
  type metadata accessor for WFSDFLayer();
  return swift_dynamicCastClassUnconditional();
}

id WFSDFView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_3_4();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_2();

  return [v2 v3];
}

id WFSDFView.init(frame:)()
{
  OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for WFSDFView();
  v1 = OUTLINED_FUNCTION_2();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id WFSDFView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFSDFView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

char *sub_1C8346984()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices10WFSDFLayer_elementLayer;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WFSDFLayer();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [v2 addSublayer_];
  return v2;
}

id sub_1C8346A84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSDFLayer();
  return objc_msgSendSuper2(&v2, sel_frame);
}

id sub_1C8346B30()
{
  OUTLINED_FUNCTION_3_4();
  v5 = type metadata accessor for WFSDFLayer();
  v1 = OUTLINED_FUNCTION_2();
  objc_msgSendSuper2(v2, v3, v1, v0, v5);
  return sub_1C8346B80();
}

id sub_1C8346B80()
{
  v1 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices10WFSDFLayer_elementLayer];
  [v0 bounds];

  return [v1 setFrame_];
}

id sub_1C8346C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFSDFLayer();
  return objc_msgSendSuper2(&v2, sel_cornerRadius);
}

id sub_1C8346C9C(double a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WFSDFLayer();
  objc_msgSendSuper2(&v4, sel_setCornerRadius_, a1);
  return sub_1C8346CE4();
}

id sub_1C8346CE4()
{
  v1 = *&v0[OBJC_IVAR____TtC18WorkflowUIServices10WFSDFLayer_elementLayer];
  [v0 cornerRadius];

  return [v1 setCornerRadius_];
}

id WFSDFLayer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void WFSDFLayer.init(coder:)()
{
  v1 = OBJC_IVAR____TtC18WorkflowUIServices10WFSDFLayer_elementLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979438]) init];
  OUTLINED_FUNCTION_7_4();
  __break(1u);
}

id WFSDFLayer.__allocating_init(layer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

id sub_1C8346EFC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C8346F44()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1C8346FEC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C840CD9C();
  [a3 setGroupName_];
}

unint64_t sub_1C8347044()
{
  result = qword_1EC29DAE0;
  if (!qword_1EC29DAE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC29DAE0);
  }

  return result;
}

void sub_1C8347088(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1C840CD9C();

  [a3 *a4];
}

uint64_t OUTLINED_FUNCTION_15_2(__n128 a1, __n128 a2, __n128 a3)
{
  a1.n128_u32[0] = 1.0;
  a2.n128_u32[0] = 1.0;
  a3.n128_u32[0] = 1.0;

  return MEMORY[0x1EEDD5DB0](a1, a2, a3);
}

uint64_t sub_1C8347130()
{
  v0 = sub_1C840CDDC();
  v2 = v1;
  if (v0 == sub_1C840CDDC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_16_4();
  }

  return v5 & 1;
}

uint64_t sub_1C83471B4(unsigned __int8 a1, char a2)
{
  v2 = 0xEF65727574616E67;
  v3 = 0x6953657361726870;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001C841E790;
    }

    else
    {
      v6 = 0x80000001C841E7B0;
    }
  }

  else
  {
    v5 = 0x6953657361726870;
    v6 = 0xEF65727574616E67;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001C841E790;
    }

    else
    {
      v2 = 0x80000001C841E7B0;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C840D69C();
  }

  return v8 & 1;
}

uint64_t sub_1C83472A8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x79654B746E6974;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000079654BLL;
  }

  if (a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x79654B746E6974;
  }

  if (a2)
  {
    v6 = 0xEB0000000079654BLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_4();
  }

  return v8 & 1;
}

uint64_t sub_1C8347344(unsigned __int8 a1, char a2)
{
  v2 = 1953393012;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x746E656964617267;
    }

    else
    {
      v4 = 0x47646E41746E6974;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEF746E6569646172;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1953393012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x746E656964617267;
    }

    else
    {
      v2 = 0x47646E41746E6974;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEF746E6569646172;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_4();
  }

  return v8 & 1;
}

uint64_t sub_1C8347448(unsigned __int8 a1, char a2)
{
  v2 = 0x6E69616C70;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6E69616C70;
  switch(v4)
  {
    case 1:
      v5 = 0x43657474656C6170;
      v3 = 0xEC000000726F6C6FLL;
      break;
    case 2:
      v5 = 0x6F6C6F4374616C66;
      v3 = 0xE900000000000072;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v3 = 0x80000001C841E730;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x43657474656C6170;
      v6 = 0xEC000000726F6C6FLL;
      break;
    case 2:
      v2 = 0x6F6C6F4374616C66;
      v6 = 0xE900000000000072;
      break;
    case 3:
      v2 = 0xD000000000000011;
      v6 = 0x80000001C841E730;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_16_4();
  }

  return v8 & 1;
}

uint64_t sub_1C834759C(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6F6C6F4374786574;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x707369446E6F6369;
    }

    else
    {
      v5 = 0x756F72676B636162;
    }

    if (v4 == 1)
    {
      v6 = 0xEF65646F4D79616CLL;
    }

    else
    {
      v6 = 0xEF726F6C6F43646ELL;
    }
  }

  else
  {
    v5 = 0x6F6C6F4374786574;
    v6 = 0xE900000000000072;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x707369446E6F6369;
    }

    else
    {
      v3 = 0x756F72676B636162;
    }

    if (a2 == 1)
    {
      v2 = 0xEF65646F4D79616CLL;
    }

    else
    {
      v2 = 0xEF726F6C6F43646ELL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C840D69C();
  }

  return v8 & 1;
}

double AppIconView.init(icon:size:animated:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  *(a4 + 48) = swift_getKeyPath();
  *(a4 + 88) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E7B0);
  sub_1C840C50C();
  result = *&v11;
  *(a4 + 96) = v11;
  *a4 = a1;
  *(a4 + 8) = v7;
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;
  *(a4 + 112) = a3;
  return result;
}

CGSize __swiftcall IconDisplaySizeWithPadding(_:)(CGSize a1)
{
  v1 = a1.width / 0.8;
  v2 = a1.height / 0.8;
  result.height = v2;
  result.width = v1;
  return result;
}

double IconSize.cornerRadiusRatio.getter()
{
  if ((*(v0 + 16) & 0xE0) != 0x60)
  {
    return *MEMORY[0x1E69E0FE0];
  }

  v1 = *(v0 + 8);
  if ((*(v0 + 16) & 1) == 0)
  {
    return *(v0 + 8);
  }

  if (!v1)
  {
    return *MEMORY[0x1E69E0FE0];
  }

  result = 0.0;
  if (v1 != 1)
  {
    return 0.5;
  }

  return result;
}

double IconCornerRadiusRatio.value.getter()
{
  v1 = *v0;
  if (v0[8] != 1)
  {
    return *v0;
  }

  if (!v1)
  {
    return *MEMORY[0x1E69E0FE0];
  }

  result = 0.0;
  if (v1 != 1)
  {
    return 0.5;
  }

  return result;
}

uint64_t static IconSize.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4 >> 5)
  {
    case 1u:
      if ((v7 & 0xE0) != 0x20)
      {
        return 0;
      }

      return v2 == *(a2 + 8) && v3 == v6;
    case 2u:
      if ((v7 & 0xE0) != 0x40)
      {
        return 0;
      }

      return v3 == v6;
    case 3u:
      if ((v7 & 0xE0) != 0x60 || v3 != v6)
      {
        return 0;
      }

      if (v4)
      {
        if (v2 == 0.0)
        {
          if ((v7 & 1) == 0 || v5 != 0.0)
          {
            return 0;
          }
        }

        else if (*&v2 == 1)
        {
          if ((v7 & 1) == 0 || *&v5 != 1)
          {
            return 0;
          }
        }

        else if ((v7 & 1) == 0 || *&v5 <= 1uLL)
        {
          return 0;
        }
      }

      else if ((v7 & 1) != 0 || v2 != v5)
      {
        return 0;
      }

      return OUTLINED_FUNCTION_25();
    case 4u:
      if (*&v2 | *&v3 || v4 != 128)
      {
        v10 = *&v3 == 1 && *&v2 == 0;
        if (v10 && v4 == 128)
        {
          v8 = (v7 & 0xE0) == 0x80 && *&v6 == 1;
        }

        else
        {
          v11 = *&v3 == 2 && *&v2 == 0;
          if (v11 && v4 == 128)
          {
            v8 = (v7 & 0xE0) == 0x80 && *&v6 == 2;
          }

          else
          {
            v8 = (v7 & 0xE0) == 0x80 && *&v6 == 3;
          }
        }
      }

      else
      {
        v8 = (v7 & 0xE0) == 128;
        *&v5 |= *&v6;
      }

      v12 = v8 && *&v5 == 0;
      if (v12 && v7 == 128)
      {
        return OUTLINED_FUNCTION_25();
      }

      return 0;
    default:
      if (v7 >= 0x20)
      {
        return 0;
      }

      return v3 == v6;
  }
}

uint64_t static IconCornerRadiusRatio.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == *a2;
    }

    return 0;
  }

  if (v2 == 0.0)
  {
    v4 = *&v3 == 0;
  }

  else
  {
    if (*&v2 != 1)
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return OUTLINED_FUNCTION_25();
      }

      return 0;
    }

    v4 = *&v3 == 1;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    return OUTLINED_FUNCTION_25();
  }

  return 0;
}

uint64_t IconSize.hashValue.getter()
{
  OUTLINED_FUNCTION_9();
  IconSize.hash(into:)();
  return sub_1C840D7CC();
}

uint64_t sub_1C8347AE0()
{
  sub_1C840D77C();
  IconSize.hash(into:)();
  return sub_1C840D7CC();
}

uint64_t IconCornerRadiusRatio.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    return MEMORY[0x1CCA76180](v2);
  }

  else
  {
    MEMORY[0x1CCA76180](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x1CCA761A0](v3);
  }
}

uint64_t IconCornerRadiusRatio.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_9();
  if (v2 == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1CCA76180](v3);
  }

  else
  {
    MEMORY[0x1CCA76180](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1CCA761A0](v4);
  }

  return sub_1C840D7CC();
}

uint64_t sub_1C8347C34()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1C840D77C();
  if (v2 == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1CCA76180](v3);
  }

  else
  {
    MEMORY[0x1CCA76180](3);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1CCA761A0](v4);
  }

  return sub_1C840D7CC();
}

uint64_t sub_1C8347CC4()
{
  OUTLINED_FUNCTION_14();
  v3 = v1 == 0x726F6C6F63 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_12_3() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x6B63614277617264 && v0 == 0xEE00646E756F7267)
  {

    return 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_12_3();

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

uint64_t sub_1C8347D74(char a1)
{
  OUTLINED_FUNCTION_9();
  MEMORY[0x1CCA76180](a1 & 1);
  return sub_1C840D7CC();
}

uint64_t sub_1C8347DB4(char a1)
{
  if (a1)
  {
    return 0x6B63614277617264;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

uint64_t sub_1C8347DF4()
{
  OUTLINED_FUNCTION_14();
  v3 = v1 == OUTLINED_FUNCTION_26_0() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_12_3() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6F436D6F74737563 && v0 == 0xEB00000000726F6CLL;
    if (v5 || (OUTLINED_FUNCTION_12_3() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x6C6562616CLL && v0 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v7 = OUTLINED_FUNCTION_12_3();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C8347ED4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_26_0();
  }

  if (a1 == 1)
  {
    return 0x6F436D6F74737563;
  }

  return 0x6C6562616CLL;
}

uint64_t sub_1C8347F4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8347CC4();
  *a1 = result;
  return result;
}

uint64_t sub_1C8347F80(uint64_t a1)
{
  v2 = sub_1C834F7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8347FBC(uint64_t a1)
{
  v2 = sub_1C834F7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C8348008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C8347DF4();
  *a1 = result;
  return result;
}

uint64_t sub_1C834803C(uint64_t a1)
{
  v2 = sub_1C834F75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C8348078(uint64_t a1)
{
  v2 = sub_1C834F75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IconView.DisplayMode.encode(to:)(void *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DAE8);
  OUTLINED_FUNCTION_5();
  v26 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_1();
  v24 = v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DAF0);
  OUTLINED_FUNCTION_5();
  v25 = v6;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DAF8);
  OUTLINED_FUNCTION_5();
  v12 = v11;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = *v1;
  v23[3] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C834F75C();
  sub_1C840D7FC();
  if (!v16)
  {
    v30 = 0;
    OUTLINED_FUNCTION_26_0();
    goto LABEL_5;
  }

  if (v16 == 1)
  {
    v34 = 2;
LABEL_5:
    sub_1C840D60C();
    return (*(v12 + 8))(v15, v10);
  }

  v33 = 1;
  sub_1C834F7B0();
  sub_1C840D5EC();
  sub_1C8312180(0, &qword_1EC29CF10);
  v17 = v16;
  sub_1C840B35C();
  v32 = 0;
  sub_1C83527D8(&qword_1EC29DB10, &qword_1EC29DAE8);
  v18 = v27;
  v19 = v29;
  sub_1C840D64C();
  v20 = OUTLINED_FUNCTION_32_0();
  v21(v20);
  if (!v19)
  {
    v31 = 1;
    sub_1C840D61C();
  }

  (*(v25 + 8))(v9, v18);
  return (*(v12 + 8))(v15, v10);
}

uint64_t IconView.DisplayMode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DAE8);
  OUTLINED_FUNCTION_5();
  v42 = v4;
  v43 = v3;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB18);
  OUTLINED_FUNCTION_5();
  v44 = v9;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB20);
  OUTLINED_FUNCTION_5();
  v45 = v14;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C834F75C();
  v18 = v47;
  sub_1C840D7EC();
  if (v18)
  {
    goto LABEL_2;
  }

  v41 = v7;
  v47 = a1;
  v22 = v45;
  v21 = v46;
  v23 = sub_1C840D5DC();
  if (!*(v23 + 16))
  {

    v28 = sub_1C840D42C();
    swift_allocError();
    v30 = v29;
    sub_1C840D56C();
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1C840D3DC();

    v48 = 0xD000000000000028;
    v49 = 0x80000001C841F310;
    v50 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB30);
    v31 = sub_1C840CDFC();
    MEMORY[0x1CCA75890](v31);

    MEMORY[0x1CCA75890](46, 0xE100000000000000);
    sub_1C840D41C();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6B00], v28);
    swift_willThrow();
    (*(v22 + 8))(v17, v13);
    a1 = v47;
LABEL_2:
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  v24 = *(v23 + 32);

  if (v24)
  {
    if (v24 == 1)
    {
      LOBYTE(v48) = 1;
      sub_1C834F7B0();
      sub_1C840D55C();
      LOBYTE(v48) = 0;
      sub_1C83527D8(&qword_1EC29DB28, &qword_1EC29DAE8);
      v25 = v41;
      v26 = v12;
      v27 = v43;
      v40 = v26;
      sub_1C840D5CC();
      v39 = v17;
      v38 = sub_1C840B34C();
      (*(v42 + 8))(v25, v27);
      LOBYTE(v48) = 1;
      LOBYTE(v26) = sub_1C840D59C();
      (*(v44 + 8))(v40, v8);
      (*(v22 + 8))(v39, v13);
      v36 = v26 & 1;
      v19 = v47;
      v37 = v38;
    }

    else
    {
      v34 = OUTLINED_FUNCTION_34_0();
      v35(v34);
      v36 = 0;
      v37 = 1;
      v19 = v47;
    }
  }

  else
  {
    v32 = OUTLINED_FUNCTION_34_0();
    v33(v32);
    v37 = 0;
    v36 = 0;
    v19 = v47;
  }

  *v21 = v37;
  *(v21 + 8) = v36;
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t IconView.DisplayMode.hash(into:)()
{
  if (!*v0)
  {
    v1 = 0;
    return MEMORY[0x1CCA76180](v1);
  }

  if (*v0 == 1)
  {
    v1 = 2;
    return MEMORY[0x1CCA76180](v1);
  }

  MEMORY[0x1CCA76180](1);
  sub_1C840D27C();
  return sub_1C840D79C();
}

uint64_t IconView.DisplayMode.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1CCA76180](1);
      sub_1C840D27C();
      sub_1C840D79C();
      return sub_1C840D7CC();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1CCA76180](v2);
  return sub_1C840D7CC();
}

uint64_t sub_1C8348AB0()
{
  sub_1C840D77C();
  IconView.DisplayMode.hash(into:)();
  return sub_1C840D7CC();
}

__n128 IconView.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 24);
  result = *(v1 + 8);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

id IconView.displayMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = *(v1 + 40);
  return sub_1C831F57C(v2);
}

id sub_1C8348B68()
{
  result = [objc_allocWithZone(MEMORY[0x1E695DEE0]) init];
  qword_1EC29CF08 = result;
  return result;
}

double sub_1C8348B9C()
{
  v1 = sub_1C840BB2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    return *(v0 + 32);
  }

  sub_1C840D17C();
  v7 = sub_1C840BD9C();
  sub_1C840B3CC();

  sub_1C840BB1C();
  swift_getAtKeyPath();
  sub_1C831E878(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_1C8348CE8(uint64_t a1)
{
  v2 = sub_1C840BB2C();
  v3 = *(v2 - 8);
  result = MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    sub_1C8317A78();
    if (v12 == 1)
    {
      v13 = v10[0];
      v14 = v10[1];
      v15 = v11;
    }

    else
    {
      sub_1C840D17C();
      v7 = sub_1C840BD9C();
      sub_1C840B3CC();

      sub_1C840BB1C();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
    }

    if (*(&v14 + 1))
    {
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      v9 = sub_1C8348ECC();
      (*(v8 + 16))(v9);

      return __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    else
    {
      return sub_1C8352B5C(&v13, &unk_1EC29DE58);
    }
  }

  return result;
}

void sub_1C8348F20(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB48);
  sub_1C840C51C();
  v2 = a1;
  sub_1C840C52C();
  sub_1C8348CE8(v3);
}

uint64_t AppIconView.body.getter()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB38);
  OUTLINED_FUNCTION_5();
  v31 = v3;
  v32 = v4;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_1();
  v35 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB40);
  OUTLINED_FUNCTION_5();
  v33 = v7;
  v34 = v8;
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_1();
  v36 = v10;
  v39[0] = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB48);
  sub_1C840C51C();
  v11 = sub_1C8348B9C();
  v12 = *(v0 + 16);
  v30 = *(v0 + 8);
  v13 = *(v0 + 24);
  KeyPath = swift_getKeyPath();
  v15 = swift_getKeyPath();
  v16 = swift_getKeyPath();
  v38 = 0;
  sub_1C83361FC(v2, v39);
  OUTLINED_FUNCTION_15_3();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_46(v17);
  *&v37[1] = v11;
  v37[2] = v30;
  v37[3] = v12;
  LOBYTE(v37[4]) = v13;
  BYTE1(v37[4]) = 1;
  v37[5] = 0;
  v37[6] = KeyPath;
  LOBYTE(v37[7]) = 0;
  v37[8] = v15;
  LOBYTE(v37[9]) = 0;
  v37[10] = v16;
  LOBYTE(v37[11]) = 0;
  v37[12] = sub_1C834F830;
  v37[13] = v1;
  v37[14] = 0;
  v37[15] = 0;
  sub_1C8348B9C();
  sub_1C83361FC(v2, v39);
  OUTLINED_FUNCTION_15_3();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_46(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB50);
  v20 = sub_1C834F854();
  v21 = sub_1C834F934();
  sub_1C840C20C();

  memcpy(v39, v37, 0x80uLL);
  sub_1C8352B5C(v39, &qword_1EC29DB50);
  v22 = *v2;
  sub_1C83361FC(v2, v37);
  OUTLINED_FUNCTION_15_3();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_47(v23);
  v24 = sub_1C8312180(0, &unk_1ED7EE930);
  v25 = v22;
  v37[0] = v19;
  v37[1] = MEMORY[0x1E69E7DE0];
  v37[2] = v20;
  v37[3] = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_1C834F988();
  sub_1C840C20C();

  (*(v32 + 8))(v35, v31);
  sub_1C83361FC(v2, v37);
  OUTLINED_FUNCTION_15_3();
  v28 = swift_allocObject();
  OUTLINED_FUNCTION_47(v28);
  v37[0] = v31;
  v37[1] = v24;
  v37[2] = OpaqueTypeConformance2;
  v37[3] = v27;
  swift_getOpaqueTypeConformance2();
  sub_1C834F9F0();
  sub_1C840C20C();

  return (*(v34 + 8))(v36, v33);
}

Swift::Void __swiftcall AppIconView.reloadImage()()
{
  v1 = v0;
  if (qword_1EC29CF00 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC29CF08;
  v3 = *v0;
  v4 = [*v0 bundleIdentifier];
  v5 = sub_1C840CDDC();
  v7 = v6;

  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  sub_1C8312180(0, &qword_1EC29CD50);
  v27 = v9;
  LOBYTE(v28) = v10;
  sub_1C840D77C();
  IconSize.hash(into:)();
  sub_1C840D7CC();
  v11 = sub_1C840D65C();
  v13 = v12;
  *&__src[0] = v5;
  *(&__src[0] + 1) = v7;

  MEMORY[0x1CCA75890](v11, v13);

  v14 = sub_1C8349968();

  v15 = [v2 objectForKey_];

  if (v15)
  {
    sub_1C8348F20(v15);
  }

  else
  {
    v16 = [v3 bundleIdentifier];
    if (!v16)
    {
      sub_1C840CDDC();
      v16 = sub_1C840CD9C();
    }

    v17 = objc_opt_self();
    v18 = *(v1 + 24);
    __src[0] = *(v1 + 8);
    LOBYTE(__src[1]) = v18;
    v19 = sub_1C8348B9C();
    v20 = sub_1C8320690(v19, 1.0);
    [v20 size];
    v22 = v21;

    v23 = sub_1C8348B9C();
    sub_1C83361FC(v1, __src);
    OUTLINED_FUNCTION_15_3();
    v24 = swift_allocObject();
    memcpy((v24 + 16), __src, 0x71uLL);
    v30 = sub_1C834FAB8;
    v31 = v24;
    v26 = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1C83498FC;
    v29 = &block_descriptor;
    v25 = _Block_copy(&v26);

    [v17 applicationIconImageForBundleIdentifier:v16 length:v25 scale:v22 completionHandler:v23];
    _Block_release(v25);
  }
}

void sub_1C8349750(void *a1, id *a2)
{
  if (a1 && (v3 = [a1 CGImage]) != 0)
  {
    v4 = v3;
    v5 = v3;
    sub_1C8348F20(v4);
    if (qword_1EC29CF00 != -1)
    {
      swift_once();
    }

    v6 = qword_1EC29CF08;
    v7 = [*a2 bundleIdentifier];
    v8 = sub_1C840CDDC();
    v10 = v9;

    sub_1C8312180(0, &qword_1EC29CD50);
    sub_1C840D77C();
    IconSize.hash(into:)();
    sub_1C840D7CC();
    v11 = sub_1C840D65C();
    v13 = v12;

    MEMORY[0x1CCA75890](v11, v13);

    v14 = sub_1C8349968();

    [v6 setObject:v5 forKey:{v14, v8, v10}];
  }

  else
  {
    sub_1C8348F20(0);
  }
}

void sub_1C83498FC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_1C8349968()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C840CD9C();

  v2 = [v0 initWithString_];

  return v2;
}

uint64_t sub_1C83499E0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = [*v1 image];
  v8 = [v7 CGImage];

  if (v8)
  {
    v9 = v8;
    v10 = [v3 image];
    [v10 scale];
    v12 = v11;

    v13 = [v3 image];
    v14 = [v13 displayStyle];

    KeyPath = swift_getKeyPath();
    v16 = swift_getKeyPath();
    result = swift_getKeyPath();
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v14 = 0;
    KeyPath = 0;
    v16 = 0;
    result = 0;
    v6 = 0;
    v12 = 0;
    v8 = 1;
  }

  *a1 = v8;
  *(a1 + 8) = v12;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v14;
  *(a1 + 48) = KeyPath;
  *(a1 + 56) = 0;
  *(a1 + 64) = v16;
  *(a1 + 72) = 0;
  *(a1 + 80) = result;
  *(a1 + 88) = 0;
  return result;
}

uint64_t sub_1C8349B70@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCA0);
  MEMORY[0x1EEE9AC00](v109);
  v7 = v105 - v6;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC98);
  v8 = MEMORY[0x1EEE9AC00](v136);
  v110 = v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v105 - v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCA8);
  MEMORY[0x1EEE9AC00](v134);
  v135 = v105 - v12;
  v13 = sub_1C840BB6C();
  v127 = *(v13 - 8);
  v128 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v125 = v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v126 = v105 - v16;
  v17 = sub_1C840C27C();
  v107 = *(v17 - 8);
  v108 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v106 = v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C840C3FC();
  v115 = *(v19 - 8);
  v116 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v114 = v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C840C3EC();
  v112 = *(v21 - 8);
  v113 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v111 = v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC38);
  MEMORY[0x1EEE9AC00](v118);
  v117 = v105 - v23;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC30);
  MEMORY[0x1EEE9AC00](v120);
  v121 = v105 - v24;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC28);
  MEMORY[0x1EEE9AC00](v119);
  v123 = v105 - v25;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC20);
  v26 = MEMORY[0x1EEE9AC00](v133);
  v122 = v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v124 = v105 - v28;
  v29 = sub_1C840BB2C();
  v130 = *(v29 - 8);
  v131 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v129 = v105 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1C840B8AC();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = (v105 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v36 = (v105 - v35);
  memcpy(v142, v3, 0x59uLL);
  v37 = MEMORY[0x1E69E0FE0];
  v38 = MEMORY[0x1E697F468];
  v132 = v142[0];
  if (!v142[0] || (BYTE1(v142[4]) & 1) == 0)
  {
    if (v142[5] != 1)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_1C83514E8();
    goto LABEL_21;
  }

  v39 = 0.0;
  HasTransparentPixelAtPoint = CGImageHasTransparentPixelAtPoint(v142[0], 0.0, 0.0);
  if (v142[5] == 1)
  {
    goto LABEL_7;
  }

  if (HasTransparentPixelAtPoint)
  {
    goto LABEL_20;
  }

LABEL_8:
  v144 = *(v3 + 88);
  v41 = *(v3 + 80);
  v143 = v41;
  if (v144 == 1)
  {
    v39 = 0.0;
    if ((v41 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_12:
    if ((v142[4] & 0xE0) == 0x60)
    {
      if ((v142[4] & 1) == 0)
      {
        v46 = *&v142[3];
        goto LABEL_19;
      }

      if (v142[3])
      {
        v46 = 0.0;
        if (v142[3] != 1)
        {
          v46 = 0.5;
        }

        goto LABEL_19;
      }
    }

    v46 = *v37;
LABEL_19:
    v39 = v46 * a2;
    goto LABEL_20;
  }

  sub_1C840D17C();
  v105[0] = v7;
  v42 = v11;
  v43 = sub_1C840BD9C();
  sub_1C840B3CC();

  v38 = MEMORY[0x1E697F468];
  v44 = v129;
  sub_1C840BB1C();
  swift_getAtKeyPath();
  sub_1C8352B5C(&v143, &unk_1EC29DCC8);
  v45 = v44;
  v11 = v42;
  v7 = v105[0];
  (*(v130 + 8))(v45, v131);
  v39 = 0.0;
  if (v139 == 1)
  {
    goto LABEL_12;
  }

LABEL_20:
  v47 = *(v31 + 20);
  v48 = v31;
  v49 = v34;
  v50 = v11;
  v51 = v7;
  v52 = a1;
  v53 = *v38;
  v54 = sub_1C840BB8C();
  v55 = v53;
  a1 = v52;
  v7 = v51;
  v11 = v50;
  v34 = v49;
  v31 = v48;
  (*(*(v54 - 8) + 104))(v36 + v47, v55, v54);
  *v36 = v39;
  v36[1] = v39;
  sub_1C83513B8(&qword_1EC29CDC0, MEMORY[0x1E697EAF0]);
LABEL_21:
  v56 = sub_1C840C5BC();
  if (!v132)
  {
    if ((v142[4] & 0xE0) == 0x60)
    {
      v67 = v7;
      if ((v142[4] & 1) == 0)
      {
        v68 = v11;
        v69 = *&v142[3];
        goto LABEL_41;
      }

      if (v142[3])
      {
        v68 = v11;
        v69 = 0.0;
        if (v142[3] != 1)
        {
          v69 = 0.5;
        }

        goto LABEL_41;
      }
    }

    else
    {
      v67 = v7;
    }

    v68 = v11;
    v69 = *MEMORY[0x1E69E0FE0];
LABEL_41:
    v94 = v69 * a2;
    v95 = *(v31 + 20);
    v96 = *v38;
    v97 = sub_1C840BB8C();
    (*(*(v97 - 8) + 104))(v34 + v95, v96, v97);
    *v34 = v94;
    v34[1] = v94;
    sub_1C840C2EC();
    v98 = sub_1C840C2DC();

    KeyPath = swift_getKeyPath();
    sub_1C8351588();
    v100 = &v67[*(v109 + 36)];
    *v100 = KeyPath;
    v100[1] = v98;
    sub_1C840C5FC();
    sub_1C840B69C();
    v101 = v110;
    sub_1C832247C();
    v102 = &v101[*(v136 + 36)];
    v103 = v140;
    *v102 = v139;
    *(v102 + 1) = v103;
    *(v102 + 2) = v141;
    v91 = &qword_1EC29DC98;
    sub_1C832247C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8350C58();
    sub_1C8351244();
    sub_1C840BC6C();

    v93 = v68;
    return sub_1C8352B5C(v93, v91);
  }

  v132 = v132;
  sub_1C840C3CC();
  v58 = v111;
  v57 = v112;
  v59 = v113;
  (*(v112 + 104))(v111, *MEMORY[0x1E6981630], v113);
  sub_1C840C46C();

  (*(v57 + 8))(v58, v59);
  v61 = v114;
  v60 = v115;
  v62 = v116;
  (*(v115 + 104))(v114, *MEMORY[0x1E6981648], v116);
  v113 = sub_1C840C40C();

  (*(v60 + 8))(v61, v62);
  sub_1C840C5FC();
  sub_1C840B69C();
  LOBYTE(v147) = 1;
  *&v138[6] = v139;
  *&v138[22] = v140;
  *&v138[38] = v141;
  v63 = v142[8];
  v145 = v142[8];
  v146 = v142[9];
  LOBYTE(v62) = v142[9];

  if ((v62 & 1) == 0)
  {
    sub_1C840D17C();
    v64 = sub_1C840BD9C();
    sub_1C840B3CC();

    v65 = v129;
    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C8352B5C(&v145, &unk_1EC29DCB0);
    (*(v130 + 8))(v65, v131);
    v63 = v147;
  }

  v105[1] = a1;
  v66 = v117;
  if (v63)
  {
    v116 = v63;
  }

  else
  {
    v147 = sub_1C840C2BC();
    v116 = sub_1C840B6AC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCB8);
  sub_1C840B92C();
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1C8416750;

  sub_1C840B91C();
  sub_1C840B8EC();
  sub_1C840B8FC();
  sub_1C840B90C();
  v147 = v70;
  v71 = &v66[*(v118 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC80);
  sub_1C83513B8(&qword_1ED7EE988, MEMORY[0x1E697ECE8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCC0);
  sub_1C83527D8(&qword_1ED7EE950, &qword_1EC29DCC0);
  sub_1C840D37C();
  *v71 = v56;
  v71[8] = 0;
  v72 = *&v138[16];
  *(v66 + 18) = *v138;
  *v66 = v113;
  *(v66 + 1) = 0;
  v66[16] = 1;
  v66[17] = 0;
  *(v66 + 34) = v72;
  *(v66 + 50) = *&v138[32];
  *(v66 + 8) = *&v138[46];
  *(v66 + 36) = 256;
  *(v66 + 10) = v116;
  *(v66 + 11) = v56;
  *(v66 + 48) = 256;
  v148 = v142[7];
  v147 = v142[6];
  v73 = v142[6];
  v74 = LOBYTE(v142[7]);

  if (v74 != 1)
  {
    sub_1C8317A78();
    sub_1C840D17C();
    v76 = sub_1C840BD9C();
    sub_1C840B3CC();

    v77 = v129;
    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C8352B5C(&v147, &unk_1EC29DCC8);
    (*(v130 + 8))(v77, v131);
    if (v137 != 1)
    {
      goto LABEL_34;
    }

LABEL_36:
    v75 = sub_1C840C2CC();
    goto LABEL_37;
  }

  if (v73)
  {
    goto LABEL_36;
  }

LABEL_34:
  (*(v107 + 104))(v106, *MEMORY[0x1E69814D8], v108);
  v75 = sub_1C840C36C();
LABEL_37:
  v78 = v75;
  v79 = v121;
  sub_1C832247C();
  *&v79[*(v120 + 36)] = v78;
  v80 = sub_1C840C5FC();
  v82 = v81;
  v83 = &v123[*(v119 + 36)];
  v84 = v132;
  sub_1C834AD28(v142, v132, v83, a2);
  v85 = (v83 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC88) + 36));
  *v85 = v80;
  v85[1] = v82;
  sub_1C832247C();
  v86 = v126;
  sub_1C840BB5C();
  v88 = v127;
  v87 = v128;
  (*(v127 + 16))(v125, v86, v128);
  sub_1C83513B8(&qword_1ED7EE980, MEMORY[0x1E697F260]);
  v89 = sub_1C840B6BC();
  (*(v88 + 8))(v86, v87);
  v90 = v122;
  sub_1C832247C();
  *&v90[*(v133 + 36)] = v89;
  v91 = &qword_1EC29DC20;
  v92 = v124;
  sub_1C832247C();
  sub_1C8317A78();
  swift_storeEnumTagMultiPayload();
  sub_1C8350C58();
  sub_1C8351244();
  sub_1C840BC6C();

  v93 = v92;
  return sub_1C8352B5C(v93, v91);
}

uint64_t sub_1C834AD28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v43 = a2;
  v44 = a3;
  v6 = sub_1C840B8AC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCD0);
  MEMORY[0x1EEE9AC00](v42);
  v10 = &v42 - v9;
  v11 = type metadata accessor for BlendedBorderView();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  if ((v15 & 0xE0) == 0x60)
  {
    if ((*(a1 + 32) & 1) == 0)
    {
      v16 = MEMORY[0x1E69E0FE0];
      v17 = *(a1 + 24);
      goto LABEL_8;
    }

    if (v14 != 0.0)
    {
      v16 = MEMORY[0x1E69E0FE0];
      v17 = 0.0;
      if (*&v14 != 1)
      {
        v17 = 0.5;
      }

      goto LABEL_8;
    }
  }

  v16 = MEMORY[0x1E69E0FE0];
  v17 = *MEMORY[0x1E69E0FE0];
LABEL_8:
  v18 = v17 * a4;
  v45 = 0;
  sub_1C840C50C();
  v19 = v47;
  v13[16] = v46;
  *(v13 + 3) = v19;
  v45 = 0;
  sub_1C840C50C();
  v20 = v47;
  v13[32] = v46;
  *(v13 + 5) = v20;
  v21 = v11[8];
  *&v13[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  swift_storeEnumTagMultiPayload();
  v22 = &v13[v11[9]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v13[v11[10]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *v13 = v18;
  v24 = v43;
  *(v13 + 1) = v43;
  if ((v15 & 0xE0) != 0x60)
  {
    goto LABEL_13;
  }

  if ((v15 & 1) == 0)
  {
    v25 = v14;
    goto LABEL_15;
  }

  if (v14 == 0.0)
  {
LABEL_13:
    v25 = *v16;
  }

  else
  {
    v25 = 0.0;
    if (*&v14 != 1)
    {
      v25 = 0.5;
    }
  }

LABEL_15:
  v26 = v25 * a4 + 0.05;
  v27 = *(v6 + 20);
  v28 = *MEMORY[0x1E697F468];
  v29 = sub_1C840BB8C();
  (*(*(v29 - 8) + 104))(v8 + v27, v28, v29);
  *v8 = v26;
  v8[1] = v26;
  v30 = v24;
  v31 = sub_1C840BDCC();
  sub_1C840B57C();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_1C8351588();
  v40 = &v10[*(v42 + 36)];
  *v40 = v31;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DCD8);
  sub_1C832247C();
  return sub_1C8351588();
}

uint64_t sub_1C834B0E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DBF8);
  MEMORY[0x1EEE9AC00](v46);
  v39 = &v39 - v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC00);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC08);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v39 - v6;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC10);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v39 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DC18);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v39 - v9;
  v10 = *v1;
  v11 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v14 = *(v1 + 32);
  v15 = *(v1 + 33);
  *&v48 = v13;
  *(&v48 + 1) = v12;
  LOBYTE(v49) = v14;
  v16 = sub_1C8320690(v11, 1.0);
  [v16 size];
  v18 = v17;

  v19 = v14 >> 5;
  if (v10 && (v15 & 1) != 0)
  {
    v20 = v10;
    Height = CGImageGetHeight(v20);
    CGImageHasTransparentPixelAtPoint(v20, 0.0, (Height / 2));
  }

  *&v48 = v10;
  *(&v48 + 1) = v11;
  *&v49 = v13;
  *(&v49 + 1) = v12;
  LOBYTE(v50[0]) = v14;
  HIBYTE(v50[0]) = v15;
  *&v50[1] = *(v2 + 34);
  *&v50[9] = *(v2 + 50);
  v51[0] = *(v2 + 66);
  *(v51 + 15) = *(v2 + 81);
  sub_1C8349B70(v41, v18);
  v22 = sub_1C840BDCC();
  sub_1C840B57C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1C832247C();
  v31 = &v8[*(v40 + 36)];
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_1C840C5FC();
  sub_1C840B69C();
  v32 = v43;
  sub_1C832247C();
  v33 = (v32 + *(v42 + 36));
  v34 = *(&v51[2] + 14);
  *v33 = *(&v51[1] + 14);
  v33[1] = v34;
  v33[2] = *(&v51[3] + 14);
  if (v19 == 2)
  {
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8350AB4();
    sub_1C8351400();
    sub_1C840BC6C();
  }

  else
  {
    sub_1C840C5FC();
    sub_1C840B69C();
    v35 = v39;
    sub_1C8317A78();
    v36 = (v35 + *(v46 + 36));
    v37 = v49;
    *v36 = v48;
    v36[1] = v37;
    v36[2] = *v50;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8350AB4();
    sub_1C8351400();
    sub_1C840BC6C();
    sub_1C8352B5C(v35, &qword_1EC29DBF8);
  }

  return sub_1C8352B5C(v32, &qword_1EC29DC18);
}

uint64_t sub_1C834B6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 33);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v16 = *(a2 + 57);
  if (v15 || (v21 = *(a2 + 16), v22 = *(a1 + 16), v17 = sub_1C840D69C(), v9 = v21, v2 = v22, v18 = v17, result = 0, (v18 & 1) != 0))
  {
    v25 = v2;
    v26 = v3;
    v23 = v9;
    v24 = v10;
    if (static IconSize.== infix(_:_:)(&v25, &v23) & 1) == 0 || ((v4 ^ v11))
    {
      return 0;
    }

    else
    {
      result = 0;
      if (v5 == v12 && v6 == v13)
      {
        if ((v7 ^ v14))
        {
          return 0;
        }

        else
        {
          return v8 ^ v16 ^ 1u;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C834B7EC()
{
  sub_1C840D77C();
  sub_1C8323F14();
  return sub_1C840D7CC();
}

uint64_t sub_1C834B850()
{
  sub_1C840D77C();
  sub_1C8323F14();
  return sub_1C840D7CC();
}

uint64_t sub_1C834B8AC()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t RoundedBackgroundIconView.init(size:background:iconView:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  *(a5 + 48) = swift_getKeyPath();
  *(a5 + 56) = 0;
  *(a5 + 64) = swift_getKeyPath();
  *(a5 + 72) = 0;
  v12 = *(type metadata accessor for RoundedBackgroundIconView() + 52);
  *(a5 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB58);
  result = swift_storeEnumTagMultiPayload();
  *a5 = v9;
  *(a5 + 8) = v10;
  *(a5 + 16) = v11;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void SymbolRenderingMode.init(from:)(void *a1)
{
  sub_1C840CDDC();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_36();
  v4 = v4 && v1 == v3;
  if (v4)
  {

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_48();

  if (v2)
  {
LABEL_23:
    sub_1C840BBEC();
    goto LABEL_24;
  }

  sub_1C840CDDC();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_36();
  if (v4 && v1 == v5)
  {

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_48();

  if (v2)
  {
LABEL_28:
    sub_1C840BBFC();
    goto LABEL_24;
  }

  sub_1C840CDDC();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_36();
  if (v4 && v1 == v7)
  {

    goto LABEL_30;
  }

  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_48();

  if (v2)
  {
LABEL_30:
    sub_1C840BC0C();
    goto LABEL_24;
  }

  sub_1C840CDDC();
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_36();
  if (!v4 || v1 != v9)
  {
    OUTLINED_FUNCTION_5_4();
    OUTLINED_FUNCTION_48();

    if (v2)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

LABEL_32:
  sub_1C840BC1C();
LABEL_24:
}

uint64_t sub_1C834BB48()
{
  OUTLINED_FUNCTION_22_0();
  result = sub_1C840B9BC();
  *v0 = v2;
  return result;
}

uint64_t sub_1C834BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C83509DC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.symbolIconFontWeight.modify(void *a1))(void **a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1C831E3F8();
  sub_1C840BB3C();
  v4 = *(v3 + 24);
  *v3 = v3[2];
  *(v3 + 8) = v4;
  return sub_1C834BC88;
}

void sub_1C834BC88(void **a1)
{
  v2 = *(*a1 + 8);
  v1 = *a1;
  *(v1 + 2) = **a1;
  v1[24] = v2;
  sub_1C840BB4C();

  free(v1);
}

uint64_t sub_1C834BCE4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD40);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10[-v2];
  v4 = *(v0 + 32);
  v11[1] = *(v0 + 16);
  v12[0] = v4;
  v11[0] = *v0;
  *(v12 + 9) = *(v0 + 41);
  if (v4 && (*&v12[0] == 1 || (BYTE8(v12[0]) & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    v5 = [*&v11[0] background];
  }

  v6 = swift_allocObject();
  v7 = *(v0 + 16);
  v6[1] = *v0;
  v6[2] = v7;
  v6[3] = *(v0 + 32);
  *(v6 + 57) = *(v0 + 41);
  *(v3 + 6) = swift_getKeyPath();
  v3[56] = 0;
  *(v3 + 8) = swift_getKeyPath();
  v3[72] = 0;
  v8 = *(v1 + 52);
  *&v3[v8] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB58);
  swift_storeEnumTagMultiPayload();
  *v3 = *(v0 + 8);
  v3[16] = *(v0 + 24);
  *(v3 + 3) = v5;
  *(v3 + 4) = sub_1C83519E4;
  *(v3 + 5) = v6;
  sub_1C832247C();
  return sub_1C83519EC(v11, v10);
}

void sub_1C834BEA4(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1C840BB2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 32);
  v28 = v12;
  v29 = *(a1 + 40);
  v13 = 0.75;
  if (v12 && (v12 == 1 || (v29 & 1) == 0))
  {
    v13 = 1.0;
  }

  if ((*(a1 + 24) & 0xE0) == 0x40)
  {
    v14 = *MEMORY[0x1E69E1340];
  }

  else
  {
    v14 = v13 * a3;
  }

  v15 = [*a1 glyph];
  v16 = objc_allocWithZone(MEMORY[0x1E69E0E00]);
  v17 = sub_1C834FAD8(9, v15, 0, 0xF000000000000000);
  v18 = *(a1 + 48);
  v26 = v18;
  v27 = *(a1 + 56);
  if (v27 == 1)
  {
    v19 = v18;
  }

  else
  {

    sub_1C840D17C();
    v20 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C8352B5C(&v26, &unk_1EC29DD48);
    (*(v9 + 8))(v11, v8);
    v19 = *v25;
    v12 = v28;
  }

  if (v12 == 1)
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E69E09E0]) initWithSystemColor_];
  }

  else
  {
    if (v12)
    {
      goto LABEL_16;
    }

    v21 = [objc_opt_self() whiteColor];
  }

  v12 = v21;
LABEL_16:
  v22 = objc_opt_self();
  sub_1C831C970(&v28, v25);
  v23 = [v22 imageWithIcon:v17 size:v12 scale:0 padding:v14 glyphColor:v13 * a4 background:{v19, 0.0, 0.0}];

  if (v23)
  {
    v24 = WFImage.image.getter();
  }

  else
  {
    v24 = 0;
  }

  *a2 = v24;
}

uint64_t sub_1C834C194()
{
  v1 = sub_1C840BB2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 64);
  if (*(v0 + 72) != 1)
  {

    sub_1C840D17C();
    v6 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C831E878(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1C834C2DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C840BB2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DB58);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1C8317A78();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1C840C62C();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_1C840D17C();
    v11 = sub_1C840BD9C();
    sub_1C840B3CC();

    sub_1C840BB1C();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1C834C4E4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v30[1] = a3;
  v31 = a2;
  v32 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DDD0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE28);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_1C840B8AC();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD80);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v30 - v17;
  type metadata accessor for RoundedBackgroundIconView();
  if (sub_1C834C194())
  {
    if ((*(a1 + 16) & 0xE0) == 0x60)
    {
      v19 = *(a1 + 8);
      v20 = v31;
      if (*(a1 + 16))
      {
        if (v19)
        {
          v21 = 0.5;
          if (v19 != 2)
          {
            v21 = 0.0;
          }
        }

        else
        {
          v21 = *MEMORY[0x1E69E0FE0];
        }
      }

      else
      {
        v21 = *(a1 + 8);
      }
    }

    else
    {
      v21 = *MEMORY[0x1E69E0FE0];
      v20 = v31;
    }

    v24 = v21 * a5;
    v25 = v21 * a6;
    v26 = *(v13 + 20);
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1C840BB8C();
    (*(*(v28 - 8) + 104))(v15 + v26, v27, v28);
    *v15 = v24;
    v15[1] = v25;
    sub_1C834C85C(v20, v18);
    sub_1C83520B0(v15);
    v22 = &qword_1EC29DD80;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8351AC4();
    sub_1C8351DA8();
    sub_1C840BC6C();
    v23 = v18;
  }

  else
  {
    sub_1C834D244(v31, v11);
    v22 = &qword_1EC29DDD0;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8351AC4();
    sub_1C8351DA8();
    sub_1C840BC6C();
    v23 = v11;
  }

  return sub_1C8352B5C(v23, v22);
}

uint64_t sub_1C834C85C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v65 = sub_1C840B8AC();
  v54 = *(v65 - 8);
  v3 = v54[8];
  MEMORY[0x1EEE9AC00](v65);
  v53 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5D8);
  MEMORY[0x1EEE9AC00](v60);
  v5 = (&v53 - v4);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE30);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v53 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE38);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v53 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD90);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v53 - v8;
  v9 = sub_1C840C62C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8E0);
  MEMORY[0x1EEE9AC00](v55);
  v14 = (&v53 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DDA0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v53 - v19;
  objc_opt_self();
  v20 = a1;
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v54 = v20;
    v23 = [v22 color];
    v24 = [v23 platformColor];
    v25 = sub_1C840C26C();

    v26 = [v22 blendMode];
    v27 = MEMORY[0x1E6981DA0];
    v28 = MEMORY[0x1E6981DB8];
    if (v26 != 1)
    {
      v28 = MEMORY[0x1E6981DF0];
    }

    if (v26 != 2)
    {
      v27 = v28;
    }

    (*(v10 + 104))(v12, *v27, v9);
    (*(v10 + 32))(v14 + v55[9], v12, v9);
    *v14 = v25;
    sub_1C83525BC();
    sub_1C832247C();
    *&v18[*(v15 + 56)] = 256;
    v29 = v56;
    sub_1C832247C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C83527D8(&qword_1EC29DD98, &qword_1EC29DDA0);
    sub_1C8351C38();
    v30 = v59;
    sub_1C840BC6C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8351B80();
    sub_1C83513B8(&unk_1ED7EE990, MEMORY[0x1E697EAF0]);
    sub_1C840BC6C();

    sub_1C8352B5C(v30, &qword_1EC29DD90);
    v31 = v29;
    v32 = &qword_1EC29DDA0;
  }

  else
  {
    v33 = v54;
    v56 = v15;
    objc_opt_self();
    v34 = swift_dynamicCastObjCClass();
    if (!v34)
    {
      sub_1C83525BC();
      swift_storeEnumTagMultiPayload();
      sub_1C8351B80();
      sub_1C83513B8(&unk_1ED7EE990, MEMORY[0x1E697EAF0]);
      return sub_1C840BC6C();
    }

    v35 = v34;
    v55 = v20;
    v36 = [v35 gradient];
    sub_1C83525BC();
    v37 = ((*(v33 + 80) + 16) & ~*(v33 + 80)) + v3;
    v38 = swift_allocObject();
    sub_1C8351588();
    *(v38 + v37) = 0;
    v39 = v5;
    *v5 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
    swift_storeEnumTagMultiPayload();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7D0);
    v41 = v40[9];
    *(v5 + v41) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5A0);
    swift_storeEnumTagMultiPayload();
    *(v5 + v40[10]) = v36;
    v42 = (v5 + v40[11]);
    *v42 = sub_1C833635C;
    v42[1] = v38;
    v43 = v36;
    Gradient.init(_:)(v43);
    sub_1C840B78C();
    v44 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7E0) + 36);
    v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5E0) + 36)];
    sub_1C83525BC();
    *&v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E7F0) + 36)] = 256;
    v46 = v67;
    *v44 = v66;
    *(v44 + 1) = v46;
    *(v44 + 4) = v68;
    v47 = sub_1C840C5FC();
    v49 = v48;

    v50 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D5E8) + 36)];
    *v50 = v47;
    v50[1] = v49;
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C83527D8(&qword_1EC29DD98, &qword_1EC29DDA0);
    sub_1C8351C38();
    v51 = v59;
    sub_1C840BC6C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8351B80();
    sub_1C83513B8(&unk_1ED7EE990, MEMORY[0x1E697EAF0]);
    sub_1C840BC6C();

    sub_1C8352B5C(v51, &qword_1EC29DD90);
    v31 = v39;
    v32 = &qword_1EC29D5D8;
  }

  return sub_1C8352B5C(v31, v32);
}

uint64_t sub_1C834D244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE00);
  MEMORY[0x1EEE9AC00](v46);
  v4 = (&v37 - v3);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE40);
  MEMORY[0x1EEE9AC00](v44);
  v45 = &v37 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DE48);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v37 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DDE0);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v37 - v7;
  v8 = sub_1C840C62C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC29E8E0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v37 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DDF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v37 - v19;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = v20;
    v37 = a1;
    v22 = [v21 color];
    v23 = [v22 platformColor];
    v24 = sub_1C840C26C();

    v25 = [v21 blendMode];
    v26 = MEMORY[0x1E6981DA0];
    v27 = MEMORY[0x1E6981DB8];
    if (v25 != 1)
    {
      v27 = MEMORY[0x1E6981DF0];
    }

    if (v25 != 2)
    {
      v26 = v27;
    }

    (*(v9 + 104))(v11, *v26, v8);
    (*(v9 + 32))(v14 + *(v12 + 36), v11, v8);
    *v14 = v24;
    sub_1C832247C();
    *&v18[*(v15 + 56)] = 256;
    v28 = v38;
    sub_1C832247C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C83527D8(&qword_1EC29DDE8, &qword_1EC29DDF0);
    sub_1C8351EEC();
    v29 = v41;
    sub_1C840BC6C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8351E34();
    sub_1C835205C();
    sub_1C840BC6C();

    sub_1C8352B5C(v29, &qword_1EC29DDE0);
    v30 = v28;
    v31 = &qword_1EC29DDF0;
  }

  else
  {
    v32 = v41;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (!v33)
    {
      swift_storeEnumTagMultiPayload();
      sub_1C8351E34();
      sub_1C835205C();
      return sub_1C840BC6C();
    }

    v34 = v33;
    v38 = a1;
    v35 = [v34 gradient];
    sub_1C8331024(v35, 0, v4);

    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C83527D8(&qword_1EC29DDE8, &qword_1EC29DDF0);
    sub_1C8351EEC();
    sub_1C840BC6C();
    sub_1C8317A78();
    swift_storeEnumTagMultiPayload();
    sub_1C8351E34();
    sub_1C835205C();
    sub_1C840BC6C();

    sub_1C8352B5C(v32, &qword_1EC29DDE0);
    v30 = v4;
    v31 = &qword_1EC29DE00;
  }

  return sub_1C8352B5C(v30, v31);
}

uint64_t sub_1C834D91C@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for BlendedBorderView();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v15[1] = v3;
  sub_1C840B5EC();
  OUTLINED_FUNCTION_5();
  v17 = v4;
  v18 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DEE0);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v15 - v9;
  v16 = v1;
  sub_1C834DC04(v1, v15 - v9);
  sub_1C831BA8C(v7);
  sub_1C83525BC();
  swift_allocObject();
  OUTLINED_FUNCTION_45_0();
  sub_1C8352618();
  sub_1C83513B8(&qword_1ED7EE9E8, MEMORY[0x1E697DBD0]);
  v11 = v19;
  v12 = v17;
  sub_1C840C21C();

  (*(v18 + 8))(v7, v12);
  sub_1C8327680(v10);
  sub_1C83525BC();
  swift_allocObject();
  OUTLINED_FUNCTION_45_0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF00);
  v14 = (v11 + *(result + 36));
  *v14 = sub_1C8352DD8;
  v14[1] = v3;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

uint64_t sub_1C834DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C840B5EC();
  v77 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v74 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v63 - v7;
  v9 = sub_1C840C62C();
  v75 = *(v9 - 8);
  v76 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v73 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1C840B8AC();
  MEMORY[0x1EEE9AC00](v67);
  v69 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DEF8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DEF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v70 = v63 - v16;
  v17 = sub_1C840BB2C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for BlendedBorderView();
  v21 = a1 + *(v78 + 36);
  v22 = *v21;
  if (*(v21 + 8) != 1)
  {

    sub_1C840D17C();
    v23 = sub_1C840BD9C();
    v66 = v17;
    v24 = a1;
    v25 = a2;
    v26 = v18;
    v27 = v8;
    v28 = v13;
    v29 = v23;
    sub_1C840B3CC();

    v13 = v28;
    v8 = v27;
    v18 = v26;
    a2 = v25;
    a1 = v24;
    v17 = v66;
    sub_1C840BB1C();
    swift_getAtKeyPath();
    sub_1C831E878(v22, 0);
    (*(v18 + 8))(v20, v17);
    LOBYTE(v22) = v80;
  }

  if (v22 == 2)
  {
    v30 = 1;
  }

  else
  {
    v65 = v13;
    v64 = v4;
    v66 = a2;
    v31 = *(a1 + 32);
    v32 = *(a1 + 40);
    LOBYTE(v80) = v31;
    *(&v80 + 1) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF10);
    sub_1C840C51C();
    if (v79 == 1 && (v22 & 1) != 0 || (v33 = *(a1 + 24), LOBYTE(v80) = *(a1 + 16), *(&v80 + 1) = v33, sub_1C840C51C(), v79 != 1))
    {
      v30 = 1;
      a2 = v66;
      v13 = v65;
    }

    else
    {
      v63[1] = sub_1C834E4C4(a1);
      LOBYTE(v80) = v31;
      *(&v80 + 1) = v32;
      sub_1C840C51C();
      v34 = [objc_opt_self() mainScreen];
      [v34 scale];

      v35 = *a1;
      v36 = *(v67 + 20);
      v37 = *MEMORY[0x1E697F468];
      v38 = sub_1C840BB8C();
      v39 = v69;
      (*(*(v38 - 8) + 104))(&v69[v36], v37, v38);
      *v39 = v35;
      v39[1] = v35;
      v40 = a1 + *(v78 + 40);
      v41 = *v40;
      if (*(v40 + 8) != 1)
      {

        sub_1C840D17C();
        v42 = sub_1C840BD9C();
        sub_1C840B3CC();

        sub_1C840BB1C();
        swift_getAtKeyPath();
        sub_1C831E878(v41, 0);
        (*(v18 + 8))(v20, v17);
      }

      a2 = v66;
      v43 = v64;
      v44 = sub_1C840C2DC();
      sub_1C840B61C();
      v45 = v72;
      sub_1C83525BC();
      v46 = *&v80 * 0.5;
      v47 = &v45[*(v68 + 68)];
      sub_1C83525BC();
      *&v47[*(sub_1C840B89C() + 20)] = v46;
      v48 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF18) + 36)];
      v49 = v81;
      *v48 = v80;
      *(v48 + 1) = v49;
      *(v48 + 4) = v82;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF20);
      *&v47[*(v50 + 52)] = v44;
      *&v47[*(v50 + 56)] = 256;
      v51 = sub_1C840C5FC();
      v53 = v52;
      sub_1C83520B0(v39);
      v54 = &v47[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF28) + 36)];
      *v54 = v51;
      v54[1] = v53;
      sub_1C831BA8C(v8);
      v55 = v77;
      v56 = v74;
      (*(v77 + 104))(v74, *MEMORY[0x1E697DBB8], v43);
      LOBYTE(v51) = sub_1C840B5DC();

      v57 = *(v55 + 8);
      v57(v56, v43);
      v57(v8, v43);
      v58 = v75;
      v59 = MEMORY[0x1E6981DE8];
      if ((v51 & 1) == 0)
      {
        v59 = MEMORY[0x1E6981E00];
      }

      v60 = v73;
      v61 = v76;
      (*(v75 + 104))(v73, *v59, v76);
      v13 = v65;
      (*(v58 + 32))(&v71[*(v65 + 36)], v60, v61);
      sub_1C832247C();
      sub_1C832247C();
      sub_1C832247C();
      v30 = 0;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, v30, 1, v13);
}

uint64_t sub_1C834E4C4(uint64_t a1)
{
  v2 = sub_1C840C27C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C840B5EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11];
  type metadata accessor for BlendedBorderView();
  sub_1C831BA8C(v12);
  (*(v7 + 104))(v9, *MEMORY[0x1E697DBB8], v6);
  v13 = sub_1C840B5DC();
  v14 = *(v7 + 8);
  v14(v9, v6);
  v14(v12, v6);
  if ((v13 & 1) == 0)
  {
    v15 = *(a1 + 40);
    v17[16] = *(a1 + 32);
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF10);
    sub_1C840C51C();
  }

  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  return sub_1C840C36C();
}

uint64_t sub_1C834E748()
{
  v0 = type metadata accessor for BlendedBorderView();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  sub_1C840D06C();
  v4 = sub_1C840D08C();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  sub_1C83525BC();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_1C8351588();
  sub_1C83AA108(0, 0, v3, &unk_1C8417B30, v5);

  return sub_1C8352B5C(v3, &qword_1EC29DF08);
}

uint64_t sub_1C834E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for BlendedBorderView() - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF08);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C834EA00, 0, 0);
}

uint64_t sub_1C834EA00()
{
  v0[7] = *(v0[2] + 8);
  v1 = sub_1C834ED24();
  v0[8] = v1;
  if (v1)
  {
    v0[9] = sub_1C840D05C();
    v0[10] = sub_1C840D04C();
    v3 = sub_1C840D03C();

    return MEMORY[0x1EEE6DFA0](sub_1C834EAEC, v3, v2);
  }

  else
  {

    OUTLINED_FUNCTION_41();

    return v4();
  }
}

uint64_t sub_1C834EAEC()
{
  v1 = *(v0 + 64);

  *(v0 + 88) = sub_1C834ED70(v1) & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C834EB6C, 0, 0);
}

uint64_t sub_1C834EB6C()
{
  v1 = *(v0 + 64);
  Height = CGImageGetHeight(*(v0 + 56));
  v3 = sub_1C834F2E8(v1, 0, Height / 2);
  if (v3)
  {
    v4 = sub_1C835148C(v3, &unk_1F4804348);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 88);
  v17 = *(v0 + 64);
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = sub_1C840D08C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_1C83525BC();
  v10 = sub_1C840D04C();
  v11 = ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v8;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_1C8351588();
  v14 = (v12 + v11);
  *v14 = v5;
  v14[1] = v4 & 1;
  sub_1C83BE2BC();

  OUTLINED_FUNCTION_41();

  return v15();
}

CFDataRef sub_1C834ED24()
{
  v1 = CGImageGetDataProvider(v0);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CGDataProviderCopyData(v1);

  if (!v3)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1C834ED70(const __CFData *a1)
{
  v64 = sub_1C840BB2C();
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29E6B0);
  MEMORY[0x1EEE9AC00](v65);
  v6 = &v60 - v5;
  v7 = sub_1C840B5EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v66 = v1;
  v14 = *(v1 + 8);
  Height = CGImageGetHeight(v14);
  *&v16 = COERCE_DOUBLE(sub_1C834F5A4(a1, 0, Height / 2));
  if ((v17 & 1) == 0)
  {
    v18 = *&v16;
    v19 = CGImageGetHeight(v14);
    *&v20 = COERCE_DOUBLE(sub_1C834F5A4(a1, 2uLL, v19 / 2));
    if ((v21 & 1) == 0)
    {
      v22 = *&v20;
      Width = CGImageGetWidth(v14);
      v24 = sub_1C834F5A4(a1, Width / 2, 0);
      if ((v25 & 1) == 0)
      {
        v62 = v3;
        v26 = *&v24;
        v27 = CGImageGetWidth(v14);
        v28 = sub_1C834F5A4(a1, v27 / 2, 2uLL);
        v29 = v26;
        v3 = v62;
        if ((v30 & 1) == 0 && vabdd_f64(v18, v22) > 0.1 && vabdd_f64(v29, *&v28) > 0.1)
        {
          return 0;
        }
      }
    }
  }

  v31 = CGImageGetHeight(v14);
  if (CGImageHasTransparentPixelAtPoint(v14, 0.0, (v31 / 3)))
  {
    return 0;
  }

  v32 = CGImageGetHeight(v14);
  v68 = sub_1C834F5A4(a1, 0, v32 / 2);
  v69[0] = v33 & 1;
  v34 = CGImageGetWidth(v14);
  v35 = CGImageGetHeight(v14);
  v70 = sub_1C834F5A4(a1, v34, v35 / 2);
  v71 = v36 & 1;
  v37 = CGImageGetWidth(v14);
  v72 = sub_1C834F5A4(a1, v37 / 2, 0);
  v73 = v38 & 1;
  v39 = CGImageGetWidth(v14) / 2;
  v40 = CGImageGetHeight(v14);
  v41 = sub_1C834F5A4(a1, v39, v40);
  v42 = 0;
  v74 = v41;
  v75 = v43 & 1;
  v62 = v3 + 1;
  v61 = (v8 + 32);
  v44 = *MEMORY[0x1E697DBA8];
  v45 = (v8 + 104);
  v46 = (v8 + 8);
  v60 = (v8 + 8);
  while (1)
  {
    if ((v69[v42] & 1) == 0)
    {
      v47 = *&v67[v42 + 32];
      type metadata accessor for BlendedBorderView();
      sub_1C8317A78();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v61)(v13, v6, v7);
      }

      else
      {
        sub_1C840D17C();
        v48 = v45;
        v49 = v7;
        v50 = v13;
        v51 = v10;
        v52 = v6;
        v53 = v44;
        v54 = sub_1C840BD9C();
        sub_1C840B3CC();

        v44 = v53;
        v6 = v52;
        v10 = v51;
        v13 = v50;
        v7 = v49;
        v45 = v48;
        v46 = v60;
        v55 = v63;
        sub_1C840BB1C();
        swift_getAtKeyPath();

        (*v62)(v55, v64);
      }

      (*v45)(v10, v44, v7);
      v56 = sub_1C840B5DC();
      v57 = *v46;
      (*v46)(v10, v7);
      v57(v13, v7);
      v58 = v47 > 0.85;
      if (v56)
      {
        v58 = v47 < 0.2;
      }

      if (v58)
      {
        break;
      }
    }

    v42 += 16;
    if (v42 == 64)
    {
      return 0;
    }
  }

  return 1;
}

size_t sub_1C834F2E8(const __CFData *a1, size_t a2, size_t a3)
{
  v4 = v3;
  result = CFDataGetBytePtr(a1);
  if (result)
  {
    v8 = result;
    result = CGImageGetWidth(v4);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (result <= a2)
      {
        return 0;
      }

      result = CGImageGetHeight(v4);
      if ((result & 0x8000000000000000) == 0)
      {
        if (result > a3)
        {
          result = CGImageGetBytesPerRow(v4);
          v9 = a3 * result;
          if ((a3 * result) >> 64 == (a3 * result) >> 63)
          {
            result = CGImageGetBitsPerPixel(v4);
            if ((a2 * result) >> 64 == (a2 * result) >> 63)
            {
              v11 = (a2 * result) / 8;
              v12 = v9 + v11;
              if (!__OFADD__(v9, v11))
              {
                v13 = v12 + 2;
                if (!__OFADD__(v12, 2))
                {
                  v14 = (v8 + v12);
                  LOBYTE(v10) = v14[1];
                  *&v15 = v10;
                  v16 = *&v15 / 255.0;
                  LOBYTE(v15) = *v14;
                  *&v17 = v15;
                  v18 = *&v17 / 255.0;
                  LOBYTE(v17) = *(v8 + v13);
                  v19 = v17 / 255.0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D2C0);
                  result = swift_allocObject();
                  *(result + 16) = xmmword_1C8416630;
                  *(result + 32) = v18;
                  *(result + 40) = v16;
                  *(result + 48) = v19;
                  return result;
                }

                goto LABEL_18;
              }

LABEL_17:
              __break(1u);
LABEL_18:
              __break(1u);
              return result;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

        return 0;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1C834F430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 50) = a6;
  *(v6 + 49) = a5;
  *(v6 + 32) = a4;
  sub_1C840D05C();
  *(v6 + 40) = sub_1C840D04C();
  v8 = sub_1C840D03C();

  return MEMORY[0x1EEE6DFA0](sub_1C834F4D0, v8, v7);
}

uint64_t sub_1C834F4D0()
{
  v1 = *(v0 + 50);
  v2 = *(v0 + 49);
  v3 = *(v0 + 32);

  v4 = *(v3 + 24);
  *(v0 + 16) = *(v3 + 16);
  *(v0 + 24) = v4;
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DF10);
  sub_1C840C52C();
  v5 = *(v3 + 40);
  *(v0 + 16) = *(v3 + 32);
  *(v0 + 24) = v5;
  *(v0 + 48) = v1;
  sub_1C840C52C();
  OUTLINED_FUNCTION_41();

  return v6();
}

uint64_t sub_1C834F5A4(const __CFData *a1, size_t a2, size_t a3)
{
  *&result = COERCE_DOUBLE(sub_1C834F2E8(a1, a2, a3));
  if (*&result != 0.0)
  {
    v4 = *(result + 16);
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 >= 3)
        {
          v6 = vmulq_f64(*(result + 40), xmmword_1C8416760);
          v5 = *(result + 32) * 0.299 + v6.f64[0];

          *&result = v5 + v6.f64[1];
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1C834F64C()
{
  OUTLINED_FUNCTION_22_0();
  result = EnvironmentValues.clipsCorners.getter();
  *v0 = result & 1;
  return result;
}

unint64_t sub_1C834F75C()
{
  result = qword_1EC29DB00;
  if (!qword_1EC29DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DB00);
  }

  return result;
}

unint64_t sub_1C834F7B0()
{
  result = qword_1EC29DB08;
  if (!qword_1EC29DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DB08);
  }

  return result;
}

unint64_t sub_1C834F854()
{
  result = qword_1ED7EE9E0;
  if (!qword_1ED7EE9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB50);
    sub_1C834F8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9E0);
  }

  return result;
}

unint64_t sub_1C834F8E0()
{
  result = qword_1ED7EEAA8;
  if (!qword_1ED7EEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EEAA8);
  }

  return result;
}

unint64_t sub_1C834F934()
{
  result = qword_1ED7EEAC8;
  if (!qword_1ED7EEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EEAC8);
  }

  return result;
}

unint64_t sub_1C834F988()
{
  result = qword_1ED7EE920;
  if (!qword_1ED7EE920)
  {
    sub_1C8312180(255, &unk_1ED7EE930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE920);
  }

  return result;
}

unint64_t sub_1C834F9F0()
{
  result = qword_1ED7EE9F0;
  if (!qword_1ED7EE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9F0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  sub_1C831E878(*(v0 + 48), *(v0 + 56));
  if (*(v0 + 104))
  {
    if (*(v0 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 64);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_15_3();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1C834FAD8(uint64_t a1, unsigned __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_1C840B15C();
    sub_1C8315114(a3, a4);
  }

  v10 = [v4 initWithPaletteColor:a1 glyphCharacter:a2 customImageData:v7];

  return v10;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1C834FBA8()
{
  result = qword_1EC29DB70;
  if (!qword_1EC29DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DB70);
  }

  return result;
}

unint64_t sub_1C834FC00()
{
  result = qword_1EC29DB78;
  if (!qword_1EC29DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DB78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconSize(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 17))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
      if (v2 >= 0x7B)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for IconSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 16) = 0;
    *result = a2 - 124;
    *(result + 8) = 0;
    if (a3 >= 0x7C)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconCornerRadiusRatio(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IconCornerRadiusRatio(uint64_t result, int a2, int a3)
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

uint64_t sub_1C834FD60(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 42))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C834FDA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C834FDEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C834FE40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for IconView.BorderStyle(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IconView.BorderStyle(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C8350030(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_18WorkflowUIServices15AsyncViewWaiter_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C8350078(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 113))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C83500B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C8350140()
{
  result = qword_1EC29C8E8;
  if (!qword_1EC29C8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DB88);
    sub_1C8321BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C8E8);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C83501E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 58))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8350220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C8350284(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C83502C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C8350324(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C8350364(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C83503B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C83503F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C8350458(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 89))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C83504AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IconView.DisplayMode.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IconView.DisplayMode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IconView.DisplayMode.CodingKeys.CustomColorCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C835077C()
{
  result = qword_1EC29DBB0;
  if (!qword_1EC29DBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBB0);
  }

  return result;
}

unint64_t sub_1C83507D4()
{
  result = qword_1EC29DBB8;
  if (!qword_1EC29DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBB8);
  }

  return result;
}

unint64_t sub_1C8350880()
{
  result = qword_1EC29DBC0;
  if (!qword_1EC29DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBC0);
  }

  return result;
}

unint64_t sub_1C83508D8()
{
  result = qword_1EC29DBC8;
  if (!qword_1EC29DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBC8);
  }

  return result;
}

unint64_t sub_1C8350930()
{
  result = qword_1EC29DBD0;
  if (!qword_1EC29DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBD0);
  }

  return result;
}

unint64_t sub_1C8350988()
{
  result = qword_1EC29DBD8;
  if (!qword_1EC29DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBD8);
  }

  return result;
}

unint64_t sub_1C83509DC()
{
  result = qword_1EC29DBE0;
  if (!qword_1EC29DBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DBE8);
    sub_1C8350A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBE0);
  }

  return result;
}

unint64_t sub_1C8350A60()
{
  result = qword_1EC29DBF0;
  if (!qword_1EC29DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DBF0);
  }

  return result;
}

unint64_t sub_1C8350AB4()
{
  result = qword_1EC29CE08;
  if (!qword_1EC29CE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC18);
    sub_1C8350B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CE08);
  }

  return result;
}

unint64_t sub_1C8350B40()
{
  result = qword_1EC29CE18;
  if (!qword_1EC29CE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC10);
    sub_1C8350BCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CE18);
  }

  return result;
}

unint64_t sub_1C8350BCC()
{
  result = qword_1EC29CD88;
  if (!qword_1EC29CD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC08);
    sub_1C8350C58();
    sub_1C8351244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CD88);
  }

  return result;
}

unint64_t sub_1C8350C58()
{
  result = qword_1EC29CDC8;
  if (!qword_1EC29CDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC20);
    sub_1C8350D10();
    sub_1C83527D8(&qword_1ED7EE970, &unk_1EC29DC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDC8);
  }

  return result;
}

unint64_t sub_1C8350D10()
{
  result = qword_1EC29CDD0;
  if (!qword_1EC29CDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC28);
    sub_1C8350DC8();
    sub_1C83527D8(&qword_1EC29CDB8, &unk_1EC29DC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDD0);
  }

  return result;
}

unint64_t sub_1C8350DC8()
{
  result = qword_1EC29CDD8;
  if (!qword_1EC29CDD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC30);
    sub_1C8350E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDD8);
  }

  return result;
}

unint64_t sub_1C8350E54()
{
  result = qword_1EC29CDE0;
  if (!qword_1EC29CDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC38);
    sub_1C8350F0C();
    sub_1C83527D8(&qword_1EC29CD80, &unk_1EC29DC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDE0);
  }

  return result;
}

unint64_t sub_1C8350F0C()
{
  result = qword_1EC29CDE8;
  if (!qword_1EC29CDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC40);
    sub_1C8350FC4();
    sub_1C83527D8(&qword_1EC29CE20, &unk_1EC29DC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDE8);
  }

  return result;
}

unint64_t sub_1C8350FC4()
{
  result = qword_1EC29CDF0;
  if (!qword_1EC29CDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC48);
    sub_1C835107C();
    sub_1C83527D8(&qword_1EC29CD70, &unk_1EC29DC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDF0);
  }

  return result;
}

unint64_t sub_1C835107C()
{
  result = qword_1EC29CDF8;
  if (!qword_1EC29CDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC50);
    sub_1C8351134();
    sub_1C83527D8(&qword_1EC29CD78, &unk_1EC29DC68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CDF8);
  }

  return result;
}

unint64_t sub_1C8351134()
{
  result = qword_1ED7EE9A0;
  if (!qword_1ED7EE9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC58);
    sub_1C83511C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9A0);
  }

  return result;
}

unint64_t sub_1C83511C0()
{
  result = qword_1ED7EE9C0;
  if (!qword_1ED7EE9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9C0);
  }

  return result;
}

unint64_t sub_1C8351244()
{
  result = qword_1ED7EE9A8;
  if (!qword_1ED7EE9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DC98);
    sub_1C83512D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9A8);
  }

  return result;
}

unint64_t sub_1C83512D0()
{
  result = qword_1ED7EE9D8;
  if (!qword_1ED7EE9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DCA0);
    sub_1C83513B8(&unk_1ED7EE990, MEMORY[0x1E697EAF0]);
    sub_1C83527D8(&qword_1ED7EE960, &qword_1EC29D3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7EE9D8);
  }

  return result;
}

uint64_t sub_1C83513B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C8351400()
{
  result = qword_1EC29CE00;
  if (!qword_1EC29CE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DBF8);
    sub_1C8350AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29CE00);
  }

  return result;
}

uint64_t sub_1C835148C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C83514E8()
{
  result = qword_1EC29C8E0;
  if (!qword_1EC29C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29C8E0);
  }

  return result;
}

uint64_t type metadata accessor for BlendedBorderView()
{
  result = qword_1ED7EEA98;
  if (!qword_1ED7EEA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8351588()
{
  OUTLINED_FUNCTION_14();
  v1(0);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_12();
  v3(v2);
  return v0;
}

uint64_t sub_1C83515E0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C8351610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29D4C0);
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C8317A78();
  return sub_1C840BA6C();
}

uint64_t sub_1C83516B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  OUTLINED_FUNCTION_40_0(v15, v13);
  sub_1C8317708();
  OUTLINED_FUNCTION_43_0();
  if (v19)
  {
    __break(1u);
    goto LABEL_13;
  }

  v20 = v17;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD60);
  if ((sub_1C840D4EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = sub_1C8317708();
  if ((v21 & 1) != (v23 & 1))
  {
LABEL_13:
    result = sub_1C840D6DC();
    __break(1u);
    return result;
  }

  v20 = v22;
LABEL_5:
  if (v21)
  {
    sub_1C840CADC();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_44();

    return v27(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
  }

  else
  {
    sub_1C83B7B04(v20, v14, v12, v16, *v10);
    OUTLINED_FUNCTION_44();
  }
}

uint64_t sub_1C8351804()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_40_0(v5, v3);
  sub_1C8317708();
  OUTLINED_FUNCTION_43_0();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC29DD58);
  if ((sub_1C840D4EC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1C8317708();
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1C840D6DC();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v0;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = v6;
    OUTLINED_FUNCTION_44();
  }

  else
  {
    sub_1C83B7B88(v10, v4, v2, v6, v14);
    OUTLINED_FUNCTION_44();
  }
}

uint64_t sub_1C8351924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1C8351A38()
{
  result = qword_1EC29DD70;
  if (!qword_1EC29DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DD68);
    sub_1C8351AC4();
    sub_1C8351DA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD70);
  }

  return result;
}

unint64_t sub_1C8351AC4()
{
  result = qword_1EC29DD78;
  if (!qword_1EC29DD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DD80);
    sub_1C8351B80();
    sub_1C83513B8(&unk_1ED7EE990, MEMORY[0x1E697EAF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD78);
  }

  return result;
}

unint64_t sub_1C8351B80()
{
  result = qword_1EC29DD88;
  if (!qword_1EC29DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29DD90);
    sub_1C83527D8(&qword_1EC29DD98, &unk_1EC29DDA0);
    sub_1C8351C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DD88);
  }

  return result;
}

unint64_t sub_1C8351C38()
{
  result = qword_1EC29DDA8;
  if (!qword_1EC29DDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC29D5D8);
    sub_1C8351CC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC29DDA8);
  }

  return result;
}