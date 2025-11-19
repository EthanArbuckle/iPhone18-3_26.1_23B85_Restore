uint64_t sub_1D80C754C(uint64_t a1, uint64_t a2, __n128 *a3)
{
  OUTLINED_FUNCTION_24_24(a1, a2, a3);
  OUTLINED_FUNCTION_5_68();
  sub_1D80CCB44(0, v4, v5, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  sub_1D8190994();
  v6 = sub_1D7EFC6BC();

  *v3 = v6;
  return result;
}

uint64_t sub_1D80C75C4(double *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v7 = *a4;
  v6 = a4[1];
  v8 = *(a4 + 16);
  v21 = v7;
  *&v19 = v7;
  *(&v19 + 1) = v6;
  v20 = v8;
  v9 = sub_1D8057A0C(&v21, &v18);
  OUTLINED_FUNCTION_0_192(v9, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
  v11 = v10;

  OUTLINED_FUNCTION_14_39();
  MEMORY[0x1DA712C90](v11);
  if ((v18 & 1) == 0)
  {
    v19 = *(a4 + 3);
    OUTLINED_FUNCTION_5_68();
    sub_1D80CCB44(0, v12, v13, MEMORY[0x1E6981790]);
    OUTLINED_FUNCTION_14_39();
    sub_1D8190994();
    v14 = sub_1D7EFC6BC();

    if (v14 != v5)
    {
      *&v19 = v7;
      *(&v19 + 1) = v6;
      v20 = v8;
      OUTLINED_FUNCTION_19_30();
      sub_1D8190A94();
    }
  }

  sub_1D80CAB98(&v21);

  v19 = *(a4 + 3);
  OUTLINED_FUNCTION_5_68();
  sub_1D80CCB44(0, v15, v16, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  sub_1D8190994();
  sub_1D7EFE980(v5);
}

uint64_t sub_1D80C7720(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1D80CCB44(0, &qword_1ECA10AC8, type metadata accessor for JSONSchemaValueNumber, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D7EFE980(v1);
}

uint64_t sub_1D80C7830()
{
  if (!*(v0 + 32))
  {
    return 0x3A65756C6156;
  }

  v2 = *(v0 + 24);
  sub_1D8190DB4();
  MEMORY[0x1DA713260](58, 0xE100000000000000);
  return v2;
}

uint64_t sub_1D80C7890@<X0>(void (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1D8190574();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  a1(0);
  return a2(v3);
}

uint64_t sub_1D80C78F0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  sub_1D80CA63C();
  v40 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CBAEC(0, &qword_1ECA109F8, sub_1D80CA63C, sub_1D80CA874, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  sub_1D80CA874();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1[3];
  sub_1D80CCB44(0, &qword_1ECA10A00, type metadata accessor for JSONSchemaValueString, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v14 = *(v41 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  v15 = *(v41 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8);
  sub_1D7ED06CC(v14, *(v41 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8));

  if (v15 != 255)
  {
    if (v15)
    {
      v47 = sub_1D80C7830();
      v48 = v16;
      sub_1D8191534();
      sub_1D805881C(a1, &v44);
      v17 = sub_1D8191524();
      v38 = v4;
      v18 = v17;
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E85E0];
      *(v19 + 16) = v18;
      *(v19 + 24) = v20;
      v21 = a1[1];
      *(v19 + 32) = *a1;
      *(v19 + 48) = v21;
      v22 = a1[3];
      *(v19 + 64) = a1[2];
      *(v19 + 80) = v22;
      sub_1D805881C(a1, &v44);
      v23 = sub_1D8191524();
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = MEMORY[0x1E69E85E0];
      v25 = a1[1];
      *(v24 + 32) = *a1;
      *(v24 + 48) = v25;
      v26 = a1[3];
      *(v24 + 64) = a1[2];
      *(v24 + 80) = v26;
      v27 = sub_1D8190AB4();
      v41 = v44;
      v42 = v45;
      v43 = v46;
      MEMORY[0x1EEE9AC00](v27);
      sub_1D80CA6EC();
      sub_1D80CB80C(&unk_1ECA109A0);
      sub_1D7E50D2C();
      sub_1D8190A24();
      sub_1D7ED07B8(v14, v15);
      v28 = v38;
      v29 = v40;
      (*(v38 + 16))(v9, v6, v40);
      swift_storeEnumTagMultiPayload();
      sub_1D80CCBA4(&unk_1ECA10A10);
      sub_1D80CCBA4(&unk_1ECA10A18);
      sub_1D8190634();
      return (*(v28 + 8))(v6, v29);
    }

    sub_1D7ED07B8(v14, v15);
  }

  v31 = sub_1D80C7830();
  v33 = v32;
  v44 = *a1;
  LOBYTE(v45) = *(a1 + 16);
  sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1DA712C90](&v41);
  v34 = v41;
  *v13 = v31;
  *(v13 + 1) = v33;
  v13[16] = v34;
  v35 = &v13[*(v11 + 40)];
  *v35 = sub_1D8190574();
  *(v35 + 1) = 0;
  v35[16] = 1;
  sub_1D80CAABC(0, &unk_1ECA10A08);
  sub_1D80C8150(a1, &v35[*(v36 + 44)]);
  sub_1D80CAB18(v13, v9, sub_1D80CA874);
  swift_storeEnumTagMultiPayload();
  sub_1D80CCBA4(&unk_1ECA10A10);
  sub_1D80CCBA4(&unk_1ECA10A18);
  sub_1D8190634();
  return sub_1D80CCAE4(v13, sub_1D80CA874);
}

uint64_t sub_1D80C7F30()
{
  swift_getKeyPath();
  sub_1D7EF5274(0);
  sub_1D80CC4AC(0, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
  sub_1D80CCBA4(&unk_1ECA10998);
  sub_1D80CA7DC();
  sub_1D8190DB4();
  return sub_1D8190AD4();
}

uint64_t sub_1D80C80D0@<X0>(uint64_t a1@<X8>)
{
  sub_1D8190DB4();
  sub_1D8191114();
  sub_1D7E50D2C();
  result = sub_1D8190814();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1D80C8150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  sub_1D8055EE8();
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D8055BB8();
  v60 = v5;
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8055B84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v10;
  sub_1D80CAA04();
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v59 = sub_1D81905D4();
  sub_1D8191534();
  sub_1D805881C(a1, &v66);
  v17 = sub_1D8191524();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  v20 = *(a1 + 16);
  *(v18 + 32) = *a1;
  *(v18 + 48) = v20;
  v21 = *(a1 + 48);
  *(v18 + 64) = *(a1 + 32);
  *(v18 + 80) = v21;
  sub_1D805881C(a1, &v66);
  v22 = sub_1D8191524();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = v19;
  v24 = *(a1 + 16);
  *(v23 + 32) = *a1;
  *(v23 + 48) = v24;
  v25 = *(a1 + 48);
  *(v23 + 64) = *(a1 + 32);
  *(v23 + 80) = v25;
  sub_1D8190AB4();
  sub_1D8190B64();
  v26 = *(a1 + 41);
  KeyPath = swift_getKeyPath();
  v28 = swift_allocObject();
  v29 = 1;
  *(v28 + 16) = (v26 & 1) == 0;
  v30 = v16;
  v31 = &v16[*(v12 + 44)];
  *v31 = KeyPath;
  v31[1] = sub_1D80CAC84;
  v31[2] = v28;
  v68 = *(a1 + 48);
  v66 = *(a1 + 48);
  sub_1D80CCB44(0, &qword_1ECA10A00, type metadata accessor for JSONSchemaValueString, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v32 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues);
  v33 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8);
  sub_1D7ED06CC(v32, *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_suppliedValues + 8));

  if (v33 == 255)
  {
    goto LABEL_4;
  }

  if (v33)
  {
    sub_1D7ED07B8(v32, v33);
LABEL_4:
    v34 = v60;
    v35 = v61;
    goto LABEL_6;
  }

  v36 = swift_allocObject();
  v37 = *(a1 + 16);
  v36[1] = *a1;
  v36[2] = v37;
  v38 = *(a1 + 48);
  v36[3] = *(a1 + 32);
  v36[4] = v38;
  v39 = v56;
  *v56 = v32;
  v39[1] = sub_1D80CAD38;
  v39[2] = v36;
  v40 = *(v58 + 64);
  *(v39 + v40) = swift_getKeyPath();
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1D805881C(a1, &v66);
  sub_1D8055CA4(0);
  sub_1D80CCBA4(&qword_1ECA0FD00);
  sub_1D80CCBA4(&qword_1ECA0FD08);
  v41 = v55;
  sub_1D81903B4();
  v34 = v60;
  v35 = v61;
  (*(v57 + 32))(v61, v41, v60);
  v29 = 0;
LABEL_6:
  __swift_storeEnumTagSinglePayload(v35, v29, 1, v34);
  if (((*(a1 + 40) & 1) != 0 || (v66 = *a1, LOBYTE(v67) = *(a1 + 16), sub_1D80CC34C(0, &qword_1ECA0FEF0, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x1DA712C90](&v65), v65 == 1)) && ((v66 = v68, sub_1D8190994(), v42 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations + 8), v43 = *(v65 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueString_validations + 24), , v42 != 1) || (v43 & 1) == 0))
  {
    v66 = v68;
    sub_1D8190994();
    sub_1D7EFF3B8();

    v44 = sub_1D8190944();
    v66 = v68;
    sub_1D8190994();
    sub_1D7EFF3B8();

    v46 = sub_1D8190924();
    v45 = swift_getKeyPath();
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
  }

  v47 = v30;
  v48 = v62;
  sub_1D80CAB18(v30, v62, sub_1D80CAA04);
  v49 = v63;
  sub_1D80CAB18(v35, v63, sub_1D8055B84);
  v50 = v64;
  sub_1D80CAB18(v48, v64, sub_1D80CAA04);
  sub_1D80CA9D0(0);
  v52 = v51;
  sub_1D80CAB18(v49, v50 + *(v51 + 48), sub_1D8055B84);
  v53 = (v50 + *(v52 + 64));
  sub_1D80CAC9C(v44);
  sub_1D80CACEC(v44);
  *v53 = v44;
  v53[1] = v45;
  v53[2] = v46;
  sub_1D80CCAE4(v35, sub_1D8055B84);
  sub_1D80CCAE4(v47, sub_1D80CAA04);
  sub_1D80CACEC(v44);
  sub_1D80CCAE4(v49, sub_1D8055B84);
  return sub_1D80CCAE4(v48, sub_1D80CAA04);
}

uint64_t sub_1D80C89F0(uint64_t a1, uint64_t a2, __n128 *a3)
{
  OUTLINED_FUNCTION_24_24(a1, a2, a3);
  OUTLINED_FUNCTION_7_62();
  sub_1D80CCB44(0, v4, v5, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  sub_1D8190994();
  v6 = sub_1D7EFD090();
  v8 = v7;

  *v3 = v6;
  v3[1] = v8;
  return result;
}

uint64_t sub_1D80C8A6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = a1[1];
  v8 = *a4;
  v7 = a4[1];
  v9 = *(a4 + 16);
  v26 = v8;
  *&v24 = v8;
  *(&v24 + 1) = v7;
  v25 = v9;
  v10 = sub_1D8057A0C(&v26, &v23);
  OUTLINED_FUNCTION_0_192(v10, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
  v12 = v11;

  OUTLINED_FUNCTION_14_39();
  MEMORY[0x1DA712C90](v12);
  if ((v23 & 1) == 0)
  {
    v24 = *(a4 + 3);
    OUTLINED_FUNCTION_7_62();
    sub_1D80CCB44(0, v13, v14, MEMORY[0x1E6981790]);
    OUTLINED_FUNCTION_14_39();
    sub_1D8190994();
    v15 = sub_1D7EFD090();
    v17 = v16;

    if (v15 == v5 && v17 == v6)
    {
    }

    else
    {
      v19 = sub_1D8192634();

      if ((v19 & 1) == 0)
      {
        *&v24 = v8;
        *(&v24 + 1) = v7;
        v25 = v9;
        OUTLINED_FUNCTION_19_30();
        sub_1D8190A94();
      }
    }
  }

  sub_1D80CAB98(&v26);

  v24 = *(a4 + 3);
  OUTLINED_FUNCTION_7_62();
  sub_1D80CCB44(0, v20, v21, MEMORY[0x1E6981790]);
  OUTLINED_FUNCTION_14_39();
  sub_1D8190994();
  sub_1D8190DB4();
  sub_1D7EFF07C();
}

uint64_t sub_1D80C8C1C()
{
  sub_1D80CCB44(0, &qword_1ECA10A00, type metadata accessor for JSONSchemaValueString, MEMORY[0x1E6981790]);
  sub_1D8190DB4();
  sub_1D8190994();
  sub_1D7EFF07C();
}

uint64_t sub_1D80C8CC0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D8190574();
  v3 = sub_1D8190944();
  v4 = sub_1D81908F4();
  result = swift_getKeyPath();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v3;
  *(a1 + 48) = result;
  *(a1 + 56) = v4;
  return result;
}

void sub_1D80C8DFC()
{
  if (!qword_1ECA10960)
  {
    sub_1D80CC4AC(255, &qword_1ECA0DBF8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for VerticallyLabeledContent);
    sub_1D80CB318(&unk_1ECA0DC10);
    v0 = sub_1D81909F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10960);
    }
  }
}

uint64_t sub_1D80C8ED0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  type metadata accessor for JSONSchemaPresetSelectorView();
  OUTLINED_FUNCTION_20_34();

  return sub_1D80C5D0C(v4, v5, v6, v7, v1, v2, v3, v8);
}

uint64_t sub_1D80C8F94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = *(type metadata accessor for JSONSchemaPresetSelectorView() - 8);
  v7 = *(v6 + 64);
  v8 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = *(type metadata accessor for JSONSchema.LabeledValue() - 8);
  v10 = v0 + ((v8 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1D80C6010(v0 + v8, v10, v1, v2, v3, v4, v5);
}

uint64_t sub_1D80C90C8@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1D8190574();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1D80CAABC(0, &unk_1ECA10C40);
  return a1(v2);
}

uint64_t sub_1D80C913C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for JSONSchema.SchemaType.ObjectType(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSONSchemaView();
  MEMORY[0x1EEE9AC00](v8);
  sub_1D80CC9C8();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v32 = a1;
  sub_1D80C9670(a1);
  sub_1D80CCBA4(&qword_1ECA0FE58);
  sub_1D81903B4();
  if (*(a1 + 24) & 1) != 0 || (*a1)
  {
    v34 = *(a1 + 32);
    v35 = v34;
    sub_1D80CCB44(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
    sub_1D8190994();
    sub_1D80CAB18(v33 + OBJC_IVAR____TtC5TeaUI21JSONSchemaValueObject_object, v5, type metadata accessor for JSONSchema.SchemaType.ObjectType);

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v17 = v30;
      sub_1D80CCA80(v5, v30);
      v18 = v17 + *(v6 + 20);
      if (*(v18 + 8) != 1 || (*(v18 + 24) & 1) == 0)
      {
        v34 = v35;
        sub_1D8190994();
        sub_1D7F007AC();

        v21 = sub_1D8190944();
        v34 = v35;
        sub_1D8190994();
        sub_1D7F007AC();

        v23 = sub_1D8190924();
        sub_1D80CCAE4(v17, type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject);
        KeyPath = swift_getKeyPath();

        goto LABEL_10;
      }

      v19 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject;
      v20 = v17;
    }

    else
    {
      v19 = type metadata accessor for JSONSchema.SchemaType.ObjectType;
      v20 = v5;
    }

    sub_1D80CCAE4(v20, v19);
  }

  v21 = 0;
  KeyPath = 0;
  v23 = 0;
LABEL_10:
  v24 = *(v11 + 16);
  v24(v13, v16, v10);
  v25 = v31;
  v24(v31, v13, v10);
  sub_1D80CC928();
  v27 = &v25[*(v26 + 48)];
  sub_1D80CAC9C(v21);
  sub_1D80CACEC(v21);
  *v27 = v21;
  v27[1] = KeyPath;
  v27[2] = v23;
  v28 = *(v11 + 8);
  v28(v16, v10);
  sub_1D80CACEC(v21);
  return (v28)(v13, v10);
}

void sub_1D80C9670(uint64_t a1)
{
  v2 = type metadata accessor for JSONSchema(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v7 = v6;
  sub_1D80CCB44(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D80CAB18(v5[1] + OBJC_IVAR____TtC5TeaUI15JSONSchemaValue_schema, v4, type metadata accessor for JSONSchema);

  v6 = v7;
  sub_1D8190994();
  sub_1D804FED8();
}

uint64_t sub_1D80C97B4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D81905C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1D81905B4();
  sub_1D81905A4();
  sub_1D8190DB4();
  sub_1D8190594();

  sub_1D81905A4();
  sub_1D80CCB44(0, &qword_1ECA10C60, type metadata accessor for JSONSchemaValueObject, MEMORY[0x1E6981790]);
  sub_1D8190994();
  sub_1D7EFC74C();

  sub_1D8190584();
  sub_1D81905A4();
  sub_1D81905E4();
  v5 = sub_1D8190804();
  v7 = v6;
  v9 = v8;
  if (a1[24] & 1) != 0 || (*a1)
  {
    sub_1D81906E4();
  }

  else
  {
    sub_1D81906F4();
  }

  v10 = sub_1D81907E4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1D80CBD04(v5, v7, v9 & 1);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v16;
  return result;
}

void *sub_1D80C9A7C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __dst[0] = *(v1 + 5);
  sub_1D80CC34C(0, &qword_1ECA0FEC8, &type metadata for SchemaViewValue, MEMORY[0x1E6981790]);
  sub_1D8190994();
  v4 = __src[0];
  switch(__src[0] >> 61)
  {
    case 1:
      v106 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueBool(v106);
      OUTLINED_FUNCTION_38_14();

      sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_9_38();
      OUTLINED_FUNCTION_3_111(v107, v145, v153, v161, v169, v177, v185, v193, v201, v209, v217, v225, v233, v234, v235);
      v242 = 1;
      LOWORD(__dst[4]) = 1;
      v116 = OUTLINED_FUNCTION_31_17(v108, v109, v110, v111, v112, v113, v114, v115, v151, v159, v167, v175, v183, v191, v199, v207, v215, v223, v231, v233);
      sub_1D8058A38(v116, v117);
      sub_1D80CC67C();
      sub_1D8058548();
      OUTLINED_FUNCTION_11_43();
      v118 = OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_21_30(v118, v119, v120, v121, v122, v123, v124, v125, v152, v160, v168, v176, v184, v192, v200, v208, v216, v224, v232, v233, *(&v233 + 1), v234, *(&v234 + 1), v235.n128_i64[0], v235.n128_i64[1], v236, v237, __src[0]);
      v240 = 0;
      OUTLINED_FUNCTION_6_76();
      sub_1D80CC4AC(0, v126, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, v127);
      OUTLINED_FUNCTION_37_14(v128, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      sub_1D8190634();
      v129 = OUTLINED_FUNCTION_22_23();
      memcpy(v129, v130, 0x42uLL);
      OUTLINED_FUNCTION_26_20();
      OUTLINED_FUNCTION_37_14(v131, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_11_43();
      OUTLINED_FUNCTION_33_16();
      sub_1D8190634();

      sub_1D8058A94(&v233);
      break;
    case 2:
      v42 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueInteger(v42);
      OUTLINED_FUNCTION_38_14();

      sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_9_38();
      v235.n128_u8[9] = 1;
      OUTLINED_FUNCTION_3_111(v43, v145, v153, v161, v169, v177, v185, v193, v201, v209, v217, v225, v233, v234, v235);
      v242 = 0;
      LOWORD(__dst[4]) = 256;
      v52 = OUTLINED_FUNCTION_31_17(v44, v45, v46, v47, v48, v49, v50, v51, v147, v155, v163, v171, v179, v187, v195, v203, v211, v219, v227, v233);
      sub_1D805897C(v52, v53);
      v54 = sub_1D8058648();
      sub_1D805869C();
      OUTLINED_FUNCTION_11_43();
      v55 = OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_21_30(v55, v56, v57, v58, v59, v60, v61, v62, v148, v156, v164, v172, v180, v188, v196, v204, v212, v220, v228, v233, *(&v233 + 1), v234, *(&v234 + 1), v235.n128_i64[0], v235.n128_i64[1], v236, v237, __src[0]);
      v240 = 1;
      OUTLINED_FUNCTION_6_76();
      sub_1D80CC4AC(0, v63, v64, v65, v66);
      OUTLINED_FUNCTION_20_34();
      sub_1D80CC4AC(v67, v68, v69, v70, v54);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      OUTLINED_FUNCTION_20_34();
      sub_1D8190634();
      v71 = OUTLINED_FUNCTION_22_23();
      memcpy(v71, v72, 0x42uLL);
      OUTLINED_FUNCTION_26_20();
      OUTLINED_FUNCTION_37_14(v73, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_11_43();
      OUTLINED_FUNCTION_33_16();
      sub_1D8190634();

      sub_1D80589D8(&v233);
      break;
    case 3:
      v74 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueNumber(v74);
      OUTLINED_FUNCTION_38_14();

      sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_9_38();
      v235.n128_u8[9] = 1;
      OUTLINED_FUNCTION_3_111(v75, v145, v153, v161, v169, v177, v185, v193, v201, v209, v217, v225, v233, v234, v235);
      v242 = 1;
      LOWORD(__dst[4]) = 257;
      v84 = OUTLINED_FUNCTION_31_17(v76, v77, v78, v79, v80, v81, v82, v83, v149, v157, v165, v173, v181, v189, v197, v205, v213, v221, v229, v233);
      sub_1D80588CC(v84, v85);
      v86 = sub_1D8058648();
      sub_1D805869C();
      OUTLINED_FUNCTION_11_43();
      v87 = OUTLINED_FUNCTION_36_14();
      OUTLINED_FUNCTION_21_30(v87, v88, v89, v90, v91, v92, v93, v94, v150, v158, v166, v174, v182, v190, v198, v206, v214, v222, v230, v233, *(&v233 + 1), v234, *(&v234 + 1), v235.n128_i64[0], v235.n128_i64[1], v236, v237, __src[0]);
      v240 = 1;
      OUTLINED_FUNCTION_6_76();
      sub_1D80CC4AC(0, v95, v96, v97, v98);
      OUTLINED_FUNCTION_20_34();
      sub_1D80CC4AC(v99, v100, v101, v102, v86);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      OUTLINED_FUNCTION_20_34();
      sub_1D8190634();
      v103 = OUTLINED_FUNCTION_22_23();
      memcpy(v103, v104, 0x42uLL);
      OUTLINED_FUNCTION_26_20();
      OUTLINED_FUNCTION_37_14(v105, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_11_43();
      OUTLINED_FUNCTION_33_16();
      sub_1D8190634();

      sub_1D8058928(&v233);
      break;
    case 4:
      v23 = OUTLINED_FUNCTION_2_123();
      type metadata accessor for JSONSchemaValueString(v23);
      OUTLINED_FUNCTION_38_14();

      sub_1D8190DB4();
      OUTLINED_FUNCTION_23_20();
      OUTLINED_FUNCTION_9_38();
      v235.n128_u8[9] = 1;
      OUTLINED_FUNCTION_3_111(v24, v145, v153, v161, v169, v177, v185, v193, v201, v209, v217, v225, v233, v234, v235);
      v240 = 0;
      LOBYTE(__dst[4]) = 0;
      v33 = OUTLINED_FUNCTION_31_17(v25, v26, v27, v28, v29, v30, v31, v32, v146, v154, v162, v170, v178, v186, v194, v202, v210, v218, v226, v233);
      sub_1D805881C(v33, v34);
      sub_1D8058320();
      sub_1D80CC39C();
      OUTLINED_FUNCTION_36_14();
      v35 = OUTLINED_FUNCTION_22_23();
      memcpy(v35, v36, 0x41uLL);
      v241 = 1;
      BYTE2(__dst[4]) = 1;
      sub_1D80CC3F0();
      OUTLINED_FUNCTION_13_38();
      OUTLINED_FUNCTION_20_34();
      sub_1D80CC4AC(v37, v38, v39, v40, v41);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_12_42();
      OUTLINED_FUNCTION_20_34();
      sub_1D8190634();

      sub_1D8058878(&v233);
      break;
    case 5:
      OUTLINED_FUNCTION_27_23();
      OUTLINED_FUNCTION_0_192(v132, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
      MEMORY[0x1DA712C90](&v233);
      v133 = v233;
      v135 = *v1;
      v134 = v1[1];
      v136 = *(v2 + 33);
      type metadata accessor for JSONSchemaValueObject(0);

      sub_1D8190DB4();
      sub_1D8190984();
      v137 = __src[0];
      v138 = __src[1];
      v239 = 1;
      LOBYTE(__dst[0]) = v133;
      OUTLINED_FUNCTION_34_17();
      *(&__dst[0] + 1) = v135;
      *&__dst[1] = v134;
      BYTE8(__dst[1]) = v136;
      BYTE9(__dst[1]) = 1;
      OUTLINED_FUNCTION_32_17();
      *&__dst[2] = v137;
      *(&__dst[2] + 1) = v138;
      __dst[3] = v233;
      LOBYTE(__dst[4]) = 1;
      sub_1D8058320();
      sub_1D80CC39C();
      sub_1D8190DB4();

      sub_1D8190634();
      v139 = OUTLINED_FUNCTION_22_23();
      memcpy(v139, v140, 0x41uLL);
      v242 = 1;
      BYTE2(__dst[4]) = 1;
      sub_1D80CC3F0();
      v141 = OUTLINED_FUNCTION_13_38();
      sub_1D80CC4AC(v141, v142, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, v143);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_12_42();
      sub_1D8190634();

      goto LABEL_8;
    default:
      OUTLINED_FUNCTION_27_23();
      OUTLINED_FUNCTION_0_192(v5, &qword_1ECA0FEF0, MEMORY[0x1E69E6370]);
      MEMORY[0x1DA712C90](&v233);
      v6 = v233;
      v8 = *v1;
      v7 = v1[1];
      v9 = *(v2 + 33);
      type metadata accessor for JSONSchemaValueArray(0);
      sub_1D8190DB4();

      sub_1D8190984();
      v10 = __src[0];
      v11 = __src[1];
      LOBYTE(v153) = 0;
      LOBYTE(__dst[0]) = v6;
      OUTLINED_FUNCTION_34_17();
      *(&__dst[0] + 1) = v8;
      *&__dst[1] = v7;
      BYTE8(__dst[1]) = v9;
      BYTE9(__dst[1]) = 1;
      OUTLINED_FUNCTION_32_17();
      *&__dst[2] = v10;
      *(&__dst[2] + 1) = v11;
      __dst[3] = v233;
      LOBYTE(__dst[4]) = 0;
      sub_1D80CC67C();
      sub_1D8058548();
      sub_1D8190DB4();

      v12 = sub_1D8190634();
      OUTLINED_FUNCTION_21_30(v12, v13, v14, v15, v16, v17, v18, v19, v145, v153, v4, v169, v177, v185, v193, v201, v209, v217, v225, v233, *(&v233 + 1), v234, *(&v234 + 1), v235.n128_i64[0], v235.n128_i64[1], v236, v237, __src[0]);
      v239 = 0;
      BYTE1(__dst[4]) = 0;
      v20 = MEMORY[0x1E697F960];
      sub_1D80CC4AC(0, &qword_1ECA10C00, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
      sub_1D80CC4AC(0, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v20);
      sub_1D80CC5D0();
      sub_1D805859C();
      OUTLINED_FUNCTION_18_36();
      sub_1D8190634();
      v21 = OUTLINED_FUNCTION_22_23();
      memcpy(v21, v22, 0x42uLL);
      v242 = 0;
      BYTE2(__dst[4]) = 0;
      sub_1D80CC3F0();
      sub_1D80CC4AC(0, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, v20);
      sub_1D80CC500();
      sub_1D80CC6D0();
      OUTLINED_FUNCTION_12_42();
      sub_1D8190634();

LABEL_8:

      break;
  }

  memcpy(__dst, __src, 0x43uLL);
  return memcpy(a1, __dst, 0x43uLL);
}

uint64_t sub_1D80CA360@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D8190544();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1D80CA56C(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1D8190364();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1D81919D4();
    v13 = sub_1D8190764();
    sub_1D818FD54();

    sub_1D8190534();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D80CA56C(uint64_t a1, uint64_t a2)
{
  sub_1D80CCB44(0, &qword_1ECA0FF70, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80CA63C()
{
  if (!qword_1ECA10980)
  {
    sub_1D80CA6EC();
    sub_1D80CB80C(&unk_1ECA109A0);
    v0 = sub_1D8190A34();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10980);
    }
  }
}

void sub_1D80CA6EC()
{
  if (!qword_1ECA10988)
  {
    sub_1D7EF5274(255);
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    sub_1D80CCBA4(&unk_1ECA10998);
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10988);
    }
  }
}

unint64_t sub_1D80CA7DC()
{
  result = qword_1ECA109A8;
  if (!qword_1ECA109A8)
  {
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA109A8);
  }

  return result;
}

void sub_1D80CA874()
{
  if (!qword_1ECA109B0)
  {
    sub_1D80CA908();
    sub_1D80CCBA4(&unk_1ECA109F0);
    v0 = type metadata accessor for VerticallyLabeledContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA109B0);
    }
  }
}

void sub_1D80CA908()
{
  if (!qword_1ECA109B8)
  {
    sub_1D80CA99C(255);
    sub_1D80CCBA4(&unk_1ECA109E8);
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA109B8);
    }
  }
}

void sub_1D80CAA04()
{
  if (!qword_1ECA109D0)
  {
    sub_1D80CC4AC(255, &qword_1ECA0FCA8, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D7D0]);
    sub_1D80CC34C(255, &qword_1ECA109D8, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = sub_1D8190414();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA109D0);
    }
  }
}

void sub_1D80CAABC(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v3 = OUTLINED_FUNCTION_35();
    v4(v3);
    v5 = sub_1D8190374();
    if (!v6)
    {
      atomic_store(v5, v2);
    }
  }
}

uint64_t sub_1D80CAB18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D80CAC2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D81904D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D80CAC9C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D80CACEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D80CAD7C(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v6 = v2;
    sub_1D80CBAEC(255, v3, v4, v5, MEMORY[0x1E697F960]);
    v7 = sub_1D8190374();
    if (!v8)
    {
      atomic_store(v7, v6);
    }
  }
}

void sub_1D80CADF8()
{
  if (!qword_1ECA10A30)
  {
    sub_1D80CAEA8();
    sub_1D80CB80C(&unk_1ECA10A48);
    v0 = sub_1D8190A34();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10A30);
    }
  }
}

void sub_1D80CAEA8()
{
  if (!qword_1ECA10A38)
  {
    sub_1D7EF8974(255);
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    sub_1D80CCBA4(&unk_1ECA10A40);
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10A38);
    }
  }
}

void sub_1D80CAF98()
{
  if (!qword_1ECA10A50)
  {
    sub_1D80CB02C();
    sub_1D80CCBA4(&unk_1ECA10AB8);
    v0 = type metadata accessor for VerticallyLabeledContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10A50);
    }
  }
}

void sub_1D80CB02C()
{
  if (!qword_1ECA10A58)
  {
    sub_1D80CB0C0(255);
    sub_1D80CCBA4(&unk_1ECA10AB0);
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10A58);
    }
  }
}

void sub_1D80CB128(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_35();
    v6(v5);
    v4(255);
    sub_1D80CCB44(255, &qword_1ECA109E0, sub_1D8055E0C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, v2);
    }
  }
}

void sub_1D80CB1DC()
{
  if (!qword_1ECA10A70)
  {
    sub_1D80CAA04();
    sub_1D80CB260();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1ECA10A70);
    }
  }
}

unint64_t sub_1D80CB260()
{
  result = qword_1ECA10A78;
  if (!qword_1ECA10A78)
  {
    sub_1D80CAA04();
    sub_1D80CB318(&unk_1ECA10A80);
    sub_1D80CB36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10A78);
  }

  return result;
}

unint64_t sub_1D80CB318(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    sub_1D80CC4AC(255, v3, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D80CB36C()
{
  result = qword_1ECA10A88;
  if (!qword_1ECA10A88)
  {
    sub_1D80CC34C(255, &qword_1ECA109D8, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10A88);
  }

  return result;
}

void sub_1D80CB458(uint64_t a1, uint64_t a2)
{
  if (!OUTLINED_FUNCTION_29_19(a1, a2))
  {
    v5 = v4;
    v6 = v3;
    v7 = OUTLINED_FUNCTION_35();
    sub_1D8055CA4(v7);
    v6(255);
    sub_1D80CCBA4(&qword_1ECA0FD00);
    sub_1D80CCBA4(v5);
    v8 = sub_1D81903C4();
    if (!v9)
    {
      atomic_store(v8, v2);
    }
  }
}

void sub_1D80CB540()
{
  if (!qword_1ECA10AA0)
  {
    v0 = type metadata accessor for JSONSchemaPresetSelectorView();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10AA0);
    }
  }
}

void sub_1D80CB66C()
{
  if (!qword_1ECA10AF8)
  {
    sub_1D80CB71C();
    sub_1D80CB80C(&unk_1ECA10B10);
    v0 = sub_1D8190A34();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10AF8);
    }
  }
}

void sub_1D80CB71C()
{
  if (!qword_1ECA10B00)
  {
    sub_1D7EF87CC(255);
    sub_1D80CC4AC(255, &qword_1ECA10990, MEMORY[0x1E6981148], MEMORY[0x1E6981148], MEMORY[0x1E697C050]);
    sub_1D80CCBA4(&unk_1ECA10B08);
    v0 = sub_1D8190AE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10B00);
    }
  }
}

unint64_t sub_1D80CB80C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    v3(255);
    sub_1D80CA7DC();
    OUTLINED_FUNCTION_4_81();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1D80CB864()
{
  if (!qword_1ECA10B18)
  {
    sub_1D80CB8F8();
    sub_1D80CCBA4(&unk_1ECA10B60);
    v0 = type metadata accessor for VerticallyLabeledContent();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10B18);
    }
  }
}

void sub_1D80CB8F8()
{
  if (!qword_1ECA10B20)
  {
    sub_1D80CB98C(255);
    sub_1D80CCBA4(&unk_1ECA10B58);
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10B20);
    }
  }
}

void sub_1D80CBA64()
{
  if (!qword_1ECA10B48)
  {
    v0 = type metadata accessor for JSONSchemaPresetSelectorView();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10B48);
    }
  }
}

void sub_1D80CBAEC(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = OUTLINED_FUNCTION_35();
    v11 = v10(v9);
    v12 = a4(255);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, v5);
    }
  }
}

uint64_t sub_1D80CBB6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D80CBBCC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_50Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D80CBD04(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D80CBD30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D80CBD70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D80CBDCC()
{
  if (!qword_1ECA10BA0)
  {
    sub_1D80CBAEC(255, &qword_1ECA10978, sub_1D80CA63C, sub_1D80CA874, MEMORY[0x1E697F960]);
    sub_1D80CBE74();
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10BA0);
    }
  }
}

unint64_t sub_1D80CBE74()
{
  result = qword_1ECA10BA8;
  if (!qword_1ECA10BA8)
  {
    sub_1D80CBAEC(255, &qword_1ECA10978, sub_1D80CA63C, sub_1D80CA874, MEMORY[0x1E697F960]);
    sub_1D80CCBA4(&unk_1ECA10A10);
    sub_1D80CCBA4(&unk_1ECA10A18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BA8);
  }

  return result;
}

void sub_1D80CBF98()
{
  if (!qword_1ECA10BB8)
  {
    sub_1D80CBAEC(255, &qword_1ECA10A28, sub_1D80CADF8, sub_1D80CAF98, MEMORY[0x1E697F960]);
    sub_1D80CC040();
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10BB8);
    }
  }
}

unint64_t sub_1D80CC040()
{
  result = qword_1ECA10BC0;
  if (!qword_1ECA10BC0)
  {
    sub_1D80CBAEC(255, &qword_1ECA10A28, sub_1D80CADF8, sub_1D80CAF98, MEMORY[0x1E697F960]);
    sub_1D80CCBA4(&unk_1ECA10AD8);
    sub_1D80CCBA4(&unk_1ECA10AE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BC0);
  }

  return result;
}

void sub_1D80CC164()
{
  if (!qword_1ECA10BD0)
  {
    sub_1D80CBAEC(255, &qword_1ECA10AF0, sub_1D80CB66C, sub_1D80CB864, MEMORY[0x1E697F960]);
    sub_1D80CC20C();
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10BD0);
    }
  }
}

unint64_t sub_1D80CC20C()
{
  result = qword_1ECA10BD8;
  if (!qword_1ECA10BD8)
  {
    sub_1D80CBAEC(255, &qword_1ECA10AF0, sub_1D80CB66C, sub_1D80CB864, MEMORY[0x1E697F960]);
    sub_1D80CCBA4(&unk_1ECA10B80);
    sub_1D80CCBA4(&unk_1ECA10B88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BD8);
  }

  return result;
}

void sub_1D80CC34C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1D80CC39C()
{
  result = qword_1ECA10BF0;
  if (!qword_1ECA10BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10BF0);
  }

  return result;
}

void sub_1D80CC3F0()
{
  if (!qword_1ECA10BF8)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1D80CC4AC(255, &qword_1ECA10C00, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D80CC4AC(255, &qword_1ECA0FD30, &type metadata for JSONSchemaIntegerValueRowControlView, &type metadata for JSONSchemaNumberValueRowControlView, v0);
    v1 = sub_1D8190644();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECA10BF8);
    }
  }
}

void sub_1D80CC4AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1D80CC548(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    v6 = v5;
    v7 = v4;
    v3(255);
    v7();
    v6();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D80CC5D0()
{
  result = qword_1ECA10C18;
  if (!qword_1ECA10C18)
  {
    sub_1D80CC4AC(255, &qword_1ECA10C00, &type metadata for JSONSchemaArrayValueRowView, &type metadata for JSONSchemaBoolValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D80CC67C();
    sub_1D8058548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10C18);
  }

  return result;
}

unint64_t sub_1D80CC67C()
{
  result = qword_1ECA10C20;
  if (!qword_1ECA10C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10C20);
  }

  return result;
}

unint64_t sub_1D80CC6D0()
{
  result = qword_1ECA10C28;
  if (!qword_1ECA10C28)
  {
    sub_1D80CC4AC(255, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, MEMORY[0x1E697F960]);
    sub_1D8058320();
    sub_1D80CC39C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10C28);
  }

  return result;
}

uint64_t sub_1D80CC78C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1D80CC7CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D80CC828()
{
  if (!qword_1ECA10C38)
  {
    sub_1D80CC3F0();
    sub_1D80CC4AC(255, &qword_1ECA10C08, &type metadata for JSONSchemaStringValueRowControlView, &type metadata for JSONSchemaObjectValueRowControlView, MEMORY[0x1E697F960]);
    v0 = sub_1D8190644();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10C38);
    }
  }
}

void sub_1D80CC928()
{
  if (!qword_1ECA10C50)
  {
    sub_1D80CC9C8();
    sub_1D80CCB44(255, &qword_1ECA109E0, sub_1D8055E0C, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA10C50);
    }
  }
}

void sub_1D80CC9C8()
{
  if (!qword_1ECA10C58)
  {
    type metadata accessor for JSONSchemaView();
    sub_1D80CCBA4(&qword_1ECA0FE58);
    v0 = sub_1D81903C4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10C58);
    }
  }
}

uint64_t sub_1D80CCA80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSONSchema.SchemaType.ObjectType.DynamicObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80CCAE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1D80CCB44(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_35();
    v9 = v8(v7);
    v10 = a4(a1, v9);
    if (!v11)
    {
      atomic_store(v10, v4);
    }
  }
}

unint64_t sub_1D80CCBA4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_28_19(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_1D80CCBE8()
{
  if (!qword_1ECA10C70)
  {
    sub_1D80CC8F4(255);
    sub_1D80CCBA4(&unk_1ECA10C78);
    v0 = sub_1D8190A14();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10C70);
    }
  }
}

uint64_t sub_1D80CCCB8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v9.val[0] = *(v3 + 80);
  v9.val[1] = v9.val[0];
  v5 = &v8;
  vst2q_f64(v5, v9);
  type metadata accessor for StackNavigator.WeakRouter();
  OUTLINED_FUNCTION_52();
  v6 = sub_1D818F9E4();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_1D80CCD94()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  return sub_1D8190DB4();
}

uint64_t sub_1D80CCDD4()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1_0();
  return sub_1D8190DB4();
}

uint64_t StackNavigator.__allocating_init()()
{
  v0 = swift_allocObject();
  StackNavigator.init()();
  return v0;
}

uint64_t StackNavigator.init()()
{
  v13.val[0] = OUTLINED_FUNCTION_13_39();
  *v1 = v13;
  v2 = &v12;
  vst2q_f64(v2, v13);
  type metadata accessor for StackNavigator.WeakRouter();
  sub_1D818F9D4();
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  *(v0 + v4) = sub_1D8190D34();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 120);
  *(v0 + v6) = sub_1D8190D34();
  *(swift_allocObject() + 16) = v11;
  OUTLINED_FUNCTION_12();
  v8 = (v0 + *(v7 + 104));
  *v8 = sub_1D80CD044;
  v8[1] = v9;
  return v0;
}

uint64_t sub_1D80CCF7C()
{
  if (qword_1EDBBB520 != -1)
  {
    swift_once();
  }

  sub_1D81919C4();
  sub_1D818FD44();
  sub_1D80CD9B4();
  swift_allocError();
  *v0 = 0;
  sub_1D80CF494();
  swift_allocObject();
  return sub_1D818FB24();
}

uint64_t StackNavigator.__allocating_init<A>(userActivityManager:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = swift_allocObject();
  StackNavigator.init<A>(userActivityManager:)(a1);
  return v2;
}

uint64_t sub_1D80CD090(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v83 = a5;
  v84 = a6;
  v81 = a3;
  v82.n128_u64[0] = a4;
  v85 = a2;
  v94.val[0] = *(*v7 + 80);
  v94.val[1] = v94.val[0];
  v88 = v94.val[0];
  v89 = v94.val[0];
  v10 = &v91;
  vst2q_f64(v10, v94);
  type metadata accessor for StackNavigator.WeakRouter();
  OUTLINED_FUNCTION_52();
  v78 = v11;
  sub_1D818F9E4();
  OUTLINED_FUNCTION_2();
  v87 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_21_31().n128_u64[0];
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v74 - v18;
  *&v88.f64[0] = OUTLINED_FUNCTION_21_31().n128_u64[1];
  type metadata accessor for Route();
  OUTLINED_FUNCTION_2();
  v79 = v21;
  v80 = v20;
  OUTLINED_FUNCTION_44();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v74 - v24;
  v26 = *(v16 + 16);
  v86 = a1;
  v26(v19, a1, v14, v23);
  sub_1D7E7B91C(v85, &v91);
  v27 = a3;
  v28 = v82.n128_u64[0];
  sub_1D7E19F24(v27);
  v30 = v83;
  v29 = v84;
  sub_1D7E19F24(v83);
  v85 = v25;
  v31 = v19;
  v32 = v87;
  v83 = v14;
  sub_1D8061A40(v31, v81, v28, v30, v29, &v91, v14, v25);
  OUTLINED_FUNCTION_17_33();
  OUTLINED_FUNCTION_16_40();
  v33 = sub_1D818F9B4();
  v36 = *(v32 + 8);
  v35 = v32 + 8;
  v34 = v36;
  v37 = OUTLINED_FUNCTION_131();
  result = (v36)(v37);
  v39 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    sub_1D818F974();
    v40 = OUTLINED_FUNCTION_131();
    *&v88.f64[0] = v34;
    v34(v40);
    sub_1D80CE214();
    v84 = 0;
    v82 = xmmword_1D81A1B70;
    while (2)
    {
      v41 = v93;
      if (!v93)
      {
LABEL_23:
        sub_1D80CD9B4();
        OUTLINED_FUNCTION_121();
        OUTLINED_FUNCTION_30_22(v63, 1);
        OUTLINED_FUNCTION_1_138();
LABEL_24:
        sub_1D80CE214();
        goto LABEL_25;
      }

      while (1)
      {

        if (sub_1D80CDA08())
        {
          break;
        }

        OUTLINED_FUNCTION_11_10();
        swift_beginAccess();
        sub_1D818F994();
        v42 = v90;
        swift_endAccess();

        v43 = __OFSUB__(v39--, 1);
        if (v43)
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v39 < 0)
        {

          goto LABEL_23;
        }

        OUTLINED_FUNCTION_17_33();
        OUTLINED_FUNCTION_26_21();

        v44 = OUTLINED_FUNCTION_131();
        (*&v88.f64[0])(v44);

        v41 = v91;
        v93 = v91;
        if (!v91)
        {
          goto LABEL_23;
        }
      }

      v87 = v35;
      (*(v41 + 32))(&v91, v85);
      LODWORD(v81) = v91;
      if (qword_1EDBBB520 != -1)
      {
        OUTLINED_FUNCTION_2_124();
        swift_once();
      }

      v77 = qword_1EDBC6088;
      v76 = sub_1D81919E4();
      v45 = OUTLINED_FUNCTION_0_193();
      sub_1D7E13630(v45, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], v46);
      v48 = OUTLINED_FUNCTION_28_20(v47);
      OUTLINED_FUNCTION_11_44(v48, v82);
      v90 = v41;
      OUTLINED_FUNCTION_6_77();
      v74[0] = swift_getWitnessTable();
      sub_1D8192604();
      v49 = v91;
      v75 = v92;
      v48[3].n128_u64[1] = MEMORY[0x1E69E6158];
      v50 = sub_1D7E13BF4();
      v48[4].n128_u64[0] = v50;
      v51 = v75;
      v48[2].n128_u64[0] = v49;
      v48[2].n128_u64[1] = v51;
      v91 = 0;
      v92 = 0xE000000000000000;
      LOBYTE(v90) = v81;
      sub_1D8192334();
      v52 = v91;
      v53 = v92;
      v48[6].n128_u64[0] = MEMORY[0x1E69E6158];
      v48[6].n128_u64[1] = v50;
      v48[4].n128_u64[1] = v52;
      v48[5].n128_u64[0] = v53;
      v91 = 0;
      v92 = 0xE000000000000000;
      sub_1D81925F4();
      v42 = v50;
      v54 = v91;
      v55 = v92;
      v48[8].n128_u64[1] = MEMORY[0x1E69E6158];
      v48[9].n128_u64[0] = v50;
      v48[7].n128_u64[0] = v54;
      v48[7].n128_u64[1] = v55;
      sub_1D818FD44();

      if ((v81 - 1) < 2)
      {
        v43 = __OFSUB__(v39--, 1);
        v35 = v87;
        if (v43)
        {
          goto LABEL_31;
        }

        if (v39 < 0)
        {
          sub_1D81919C4();
          OUTLINED_FUNCTION_12_43();
          sub_1D818FD44();
          sub_1D80CD9B4();
          OUTLINED_FUNCTION_121();
          OUTLINED_FUNCTION_30_22(v66, 3);

          OUTLINED_FUNCTION_1_138();
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_17_33();
        OUTLINED_FUNCTION_26_21();
        v56 = OUTLINED_FUNCTION_131();
        (*&v88.f64[0])(v56);

        v93 = v91;
LABEL_20:
        if (v84 != 99)
        {
          ++v84;

          continue;
        }

        sub_1D81919C4();
        OUTLINED_FUNCTION_12_43();
        sub_1D818FD44();
        sub_1D80CD9B4();
        OUTLINED_FUNCTION_121();
        *v65 = 2;
        swift_willThrow();

        OUTLINED_FUNCTION_1_138();
        sub_1D80CE214();
LABEL_25:

        OUTLINED_FUNCTION_19_31();
        return v64(v85);
      }

      break;
    }

    v35 = v87;
    if (v81)
    {
LABEL_29:
      LODWORD(v88.f64[0]) = sub_1D81919E4();
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1D819FAC0;
      v91 = 0;
      v92 = 0xE000000000000000;
      sub_1D81925F4();
      v68 = v91;
      v69 = v92;
      v70 = MEMORY[0x1E69E6158];
      *(v67 + 56) = MEMORY[0x1E69E6158];
      *(v67 + 64) = v42;
      *(v67 + 32) = v68;
      *(v67 + 40) = v69;
      v91 = 0;
      v92 = 0xE000000000000000;
      v90 = v41;
      sub_1D8192604();
      v71 = v91;
      v72 = v92;
      *(v67 + 96) = v70;
      *(v67 + 104) = v42;
      *(v67 + 72) = v71;
      *(v67 + 80) = v72;
      OUTLINED_FUNCTION_12_43();
      sub_1D818FD44();

      OUTLINED_FUNCTION_1_138();
      sub_1D80CE214();

      OUTLINED_FUNCTION_19_31();
      return v73(v85);
    }

    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    sub_1D818F974();
    v57 = OUTLINED_FUNCTION_131();
    v58 = v88.f64[0];
    (*&v88.f64[0])(v57);

    v81 = v91;
    v93 = v91;
    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    v59 = sub_1D818F9B4();
    v60 = OUTLINED_FUNCTION_131();
    result = (*&v58)(v60);
    if (__OFSUB__(v59, 1))
    {
      goto LABEL_32;
    }

    if (v59 - 1 == v39)
    {
      sub_1D81919C4();
      sub_1D818FD44();
    }

    OUTLINED_FUNCTION_17_33();
    OUTLINED_FUNCTION_16_40();
    v61 = sub_1D818F9B4();
    v62 = OUTLINED_FUNCTION_131();
    result = (*&v88.f64[0])(v62);
    v39 = v61 - 1;
    if (!__OFSUB__(v61, 1))
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D80CD9B4()
{
  result = qword_1EDBB0C90;
  if (!qword_1EDBB0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBB0C90);
  }

  return result;
}

BOOL sub_1D80CDA08()
{

  v0 = sub_1D818F034();

  return (v0 & 1) == 0;
}

void sub_1D80CDA70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCE80]) init];
  v7 = v6;
  if (!v5)
  {
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_24_25();
    *(v12 - 16) = v3;
    sub_1D7E0A1A8(0, qword_1EDBBC7E0);
    sub_1D818FC24();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v13 = sub_1D8191AB4();
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v7;
    v14 = v7;
    OUTLINED_FUNCTION_7_63();

    v11 = sub_1D818FA14();
    goto LABEL_7;
  }

  if (v5 == 1)
  {
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_24_25();
    *(v8 - 16) = v4;
    sub_1D7E0A1A8(0, qword_1EDBBC7E0);
    sub_1D818FC24();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v9 = sub_1D8191AB4();
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v7;
    v10 = v7;
    OUTLINED_FUNCTION_7_63();

    v11 = sub_1D818FA14();
LABEL_7:
    sub_1D818FB04();

LABEL_8:
    OUTLINED_FUNCTION_1_138();
    sub_1D80CE214();

    return;
  }

  if (v3 | v4)
  {
    MEMORY[0x1EEE9AC00](v6);
    sub_1D7E0A1A8(0, qword_1EDBBC7E0);
    sub_1D818FC24();
    sub_1D7E0A1A8(0, &qword_1EDBBC7C0);
    v15 = sub_1D8191AB4();
    OUTLINED_FUNCTION_0_8();
    *(swift_allocObject() + 16) = v7;
    v16 = v7;
    OUTLINED_FUNCTION_7_63();

    v11 = sub_1D818FA14();
    goto LABEL_7;
  }

  type metadata accessor for StackNavigator();
  swift_getWitnessTable();
  Navigator.navigate(to:)();
  if (!v2)
  {
    goto LABEL_8;
  }

  if (qword_1EDBBB520 != -1)
  {
    OUTLINED_FUNCTION_2_124();
    swift_once();
  }

  sub_1D81919C4();
  v17 = OUTLINED_FUNCTION_0_193();
  sub_1D7E13630(v17, v18, v19, v20, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D819FAB0;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  sub_1D8192334();
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1D7E13BF4();
  *(v22 + 32) = 0;
  *(v22 + 40) = 0xE000000000000000;
  sub_1D818FD44();

  swift_willThrow();
}

void sub_1D80CDFB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a1;
  v8 = [objc_opt_self() sharedApplication];
  v10[4] = a3;
  v10[5] = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D806D054;
  v10[3] = a4;
  v9 = _Block_copy(v10);
  [v8 requestSceneSessionActivation:0 userActivity:v7 options:a2 errorHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1D80CE0D0()
{
  if (qword_1EDBBB520 != -1)
  {
    OUTLINED_FUNCTION_2_124();
    swift_once();
  }

  sub_1D81919C4();
  v0 = OUTLINED_FUNCTION_0_193();
  sub_1D7E13630(v0, v1, v2, v3, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D819FAB0;
  sub_1D7E0631C(0, &qword_1EDBB2BC0);
  sub_1D8192334();
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D7E13BF4();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  sub_1D818FD44();
}

uint64_t sub_1D80CE214()
{
  OUTLINED_FUNCTION_12();
  v0();
  OUTLINED_FUNCTION_0_115();
  swift_getFunctionTypeMetadata1();
  OUTLINED_FUNCTION_52();
  sub_1D8191484();
  swift_getWitnessTable();
  sub_1D8191224();
}

uint64_t sub_1D80CE400(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v88 = a5;
  v89 = a6;
  v87.n128_u64[0] = a4;
  v85 = a2;
  v98.val[0] = *(*v6 + 80);
  v98.val[1] = v98.val[0];
  v92 = v98.val[0];
  v93 = v98.val[0];
  v9 = &v95;
  vst2q_f64(v9, v98);
  type metadata accessor for StackNavigator.WeakRouter();
  OUTLINED_FUNCTION_52();
  v81 = v10;
  sub_1D818F9E4();
  OUTLINED_FUNCTION_2();
  v91 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_31().n128_u64[0];
  OUTLINED_FUNCTION_2();
  v15 = v14;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v77 - v17;
  v84 = v77 - v17;
  v86 = OUTLINED_FUNCTION_21_31().n128_u64[1];
  type metadata accessor for Route();
  OUTLINED_FUNCTION_2();
  v82 = v20;
  v83 = v19;
  OUTLINED_FUNCTION_44();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = v77 - v23;
  v25 = *(v15 + 16);
  v90 = a1;
  v25(v18, a1, v13, v22);
  sub_1D7E7B91C(v85, &v95);
  v26 = a3;
  v27 = a3;
  v28 = v87.n128_u64[0];
  sub_1D7E19F24(v26);
  v30 = v88;
  v29 = v89;
  sub_1D7E19F24(v88);
  *&v92.f64[0] = v24;
  v89 = v13;
  v31 = v13;
  v32 = v91;
  sub_1D8061A40(v84, v27, v28, v30, v29, &v95, v31, v24);
  OUTLINED_FUNCTION_29_20();
  v33 = sub_1D818F9B4();
  v36 = v32[1];
  v34 = v32 + 1;
  v35 = v36;
  v37 = OUTLINED_FUNCTION_22_24();
  v36(v37);
  v38 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_29_20();
  sub_1D818F974();
  v39 = OUTLINED_FUNCTION_22_24();
  v35(v39);
  v88 = 0;
  v87 = xmmword_1D81A1B70;
  while (2)
  {
    v40 = v97;
    if (!v97)
    {
LABEL_17:
      if (qword_1EDBBB520 == -1)
      {
LABEL_18:
        v56 = OUTLINED_FUNCTION_0_193();
        sub_1D7E13630(v56, v57, v58, v59, v60);
        v61 = swift_allocObject();
        OUTLINED_FUNCTION_11_44(v61, xmmword_1D819FAB0);
        sub_1D81925F4();
        v62 = v95;
        v63 = v96;
        v61[3].n128_u64[1] = MEMORY[0x1E69E6158];
        v61[4].n128_u64[0] = sub_1D7E13BF4();
        v61[2].n128_u64[0] = v62;
        v61[2].n128_u64[1] = v63;
        sub_1D81919E4();
        sub_1D818FD44();

        sub_1D80CD9B4();
        OUTLINED_FUNCTION_121();
        OUTLINED_FUNCTION_30_22(v64, 1);
        goto LABEL_19;
      }

LABEL_29:
      OUTLINED_FUNCTION_2_124();
      swift_once();
      goto LABEL_18;
    }

    while (1)
    {

      if (sub_1D80CDA08())
      {
        break;
      }

      OUTLINED_FUNCTION_11_10();
      swift_beginAccess();
      sub_1D818F994();
      swift_endAccess();

      v41 = __OFSUB__(v38--, 1);
      if (v41)
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v38 < 0)
      {

        goto LABEL_17;
      }

      OUTLINED_FUNCTION_29_20();
      OUTLINED_FUNCTION_27_24();

      v42 = OUTLINED_FUNCTION_22_24();
      v35(v42);

      v40 = v95;
      v97 = v95;
      if (!v95)
      {
        goto LABEL_17;
      }
    }

    v91 = v34;
    v40[6](&v95, *&v92.f64[0]);
    v86 = v95;
    if (qword_1EDBBB520 != -1)
    {
      OUTLINED_FUNCTION_2_124();
      swift_once();
    }

    v85 = qword_1EDBC6088;
    LODWORD(v84) = sub_1D81919E4();
    v43 = OUTLINED_FUNCTION_0_193();
    sub_1D7E13630(v43, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], v44);
    v46 = OUTLINED_FUNCTION_28_20(v45);
    OUTLINED_FUNCTION_11_44(v46, v87);
    v94 = v40;
    OUTLINED_FUNCTION_6_77();
    v77[0] = swift_getWitnessTable();
    sub_1D8192604();
    v79 = v95;
    v78 = v96;
    v46[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v47 = sub_1D7E13BF4();
    v46[4].n128_u64[0] = v47;
    v80 = v47;
    v48 = v78;
    v46[2].n128_u64[0] = v79;
    v46[2].n128_u64[1] = v48;
    v95 = 0;
    v96 = 0xE000000000000000;
    v94 = v86;
    sub_1D8192334();
    v49 = v95;
    v50 = v96;
    v46[6].n128_u64[0] = MEMORY[0x1E69E6158];
    v46[6].n128_u64[1] = v47;
    v46[4].n128_u64[1] = v49;
    v46[5].n128_u64[0] = v50;
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_1D81925F4();
    v51 = v80;
    v52 = v95;
    v53 = v96;
    v46[8].n128_u64[1] = MEMORY[0x1E69E6158];
    v46[9].n128_u64[0] = v51;
    v46[7].n128_u64[0] = v52;
    v46[7].n128_u64[1] = v53;
    sub_1D818FD44();

    if (v86)
    {
      if (v86 != 1)
      {
        v68 = v86;
        v91 = v86;
        sub_1D81919E4();
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_1D819FAC0;
        v95 = 0;
        v96 = 0xE000000000000000;
        sub_1D81925F4();
        v70 = v95;
        v71 = v96;
        v72 = MEMORY[0x1E69E6158];
        *(v69 + 56) = MEMORY[0x1E69E6158];
        *(v69 + 64) = v51;
        *(v69 + 32) = v70;
        *(v69 + 40) = v71;
        v95 = 0;
        v96 = 0xE000000000000000;
        v94 = v40;
        sub_1D8192604();
        v73 = v95;
        v74 = v96;
        *(v69 + 96) = v72;
        *(v69 + 104) = v51;
        *(v69 + 72) = v73;
        *(v69 + 80) = v74;
        OUTLINED_FUNCTION_23_21();
        sub_1D818FD44();

        sub_1D80CECD8(v68);

        OUTLINED_FUNCTION_19_31();
        v75(*&v92.f64[0]);
        return v91;
      }

      sub_1D81919E4();
      OUTLINED_FUNCTION_23_21();
      sub_1D818FD44();
      sub_1D80CD9B4();
      OUTLINED_FUNCTION_121();
      v67 = 4;
      goto LABEL_25;
    }

    v41 = __OFSUB__(v38--, 1);
    if (v41)
    {
      __break(1u);
      return result;
    }

    if (v38 < 0)
    {
      sub_1D81919E4();
      OUTLINED_FUNCTION_23_21();
      sub_1D818FD44();
      sub_1D80CD9B4();
      OUTLINED_FUNCTION_121();
      v67 = 5;
LABEL_25:
      OUTLINED_FUNCTION_30_22(v66, v67);

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_27_24();
    v55 = OUTLINED_FUNCTION_22_24();
    v34 = v91;
    v35(v55);

    v97 = v95;
    if (v88 != 99)
    {
      ++v88;

      continue;
    }

    break;
  }

  sub_1D81919C4();
  OUTLINED_FUNCTION_23_21();
  sub_1D818FD44();
  sub_1D80CD9B4();
  OUTLINED_FUNCTION_121();
  *v76 = 2;
  swift_willThrow();

LABEL_19:

LABEL_20:
  OUTLINED_FUNCTION_19_31();
  return v65(*&v92.f64[0]);
}

void sub_1D80CECD8(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t StackNavigator.deinit()
{
  v1 = *(*v0 + 96);
  v5.val[0] = OUTLINED_FUNCTION_13_39();
  vst2q_f64(v2, v5);
  type metadata accessor for StackNavigator.WeakRouter();
  OUTLINED_FUNCTION_52();
  v3 = sub_1D818F9E4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  OUTLINED_FUNCTION_12();

  return v0;
}

uint64_t StackNavigator.__deallocating_deinit()
{
  StackNavigator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80CEFA8()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = (*(v0 + 64))();
    *(v0 + 16) = v1;
    *(v0 + 24) = v2;
    sub_1D8190DB4();
  }

  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D80CF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a7 + 24))(a1, a5, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D80CF0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a7 + 32))(a1, a5, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D80CF160()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0x636F6C6C6165643CLL;
  }

  v5 = Strong;
  sub_1D7E0631C(0, &unk_1EDBB2D18);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v3, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v1 = sub_1D81925B4();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  else
  {
    v4 = 0;
    memset(v3, 0, sizeof(v3));
    sub_1D80CF3D4(v3);
    swift_getObjectType();
    v1 = sub_1D8192914();
    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_1D80CF2A4()
{

  sub_1D818F064();
}

uint64_t sub_1D80CF2E4()
{

  return v0;
}

uint64_t sub_1D80CF324()
{
  sub_1D80CF2E4();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80CF3D4(uint64_t a1)
{
  sub_1D7E13630(0, &qword_1EDBB2D10, &unk_1EDBB2D18, MEMORY[0x1E69E6F68], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D80CF494()
{
  if (!qword_1ECA0F1D0)
  {
    sub_1D7E0A1A8(255, qword_1EDBBC7E0);
    v0 = sub_1D818FBB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA0F1D0);
    }
  }
}

uint64_t sub_1D80CF540(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing);
  if (v2 != (result & 1))
  {
    v3 = v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v1, v2, ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D80CF5EC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing);
  *(v1 + OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing) = a1;
  return sub_1D80CF540(v2);
}

id sub_1D80CF6A4(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC5TeaUI25BlueprintLiveResizingView_isLiveResizing] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1D80CF770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v6 = sub_1D8190EE4();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithStyle_reuseIdentifier_, 1, v6);

  return v7;
}

unint64_t CommandContainer.description.getter()
{
  v1 = v0;
  sub_1D81921A4();

  MEMORY[0x1DA713260](v1[9], v1[10]);
  MEMORY[0x1DA713260](0x3D6469202CLL, 0xE500000000000000);
  MEMORY[0x1DA713260](v1[11], v1[12]);
  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return 0xD000000000000016;
}

uint64_t CommandContainer.__allocating_init(name:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  CommandContainer.init(name:commandCenter:tracker:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t CommandContainer.init(name:commandCenter:tracker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v12 = [v11 UUIDString];

  v13 = sub_1D8190F14();
  v15 = v14;

  v16 = MEMORY[0x1E69E7CC0];
  *(v5 + 96) = v15;
  *(v5 + 104) = v16;
  *(v5 + 80) = a2;
  *(v5 + 88) = v13;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  v17 = *(a5 + 16);
  *(v5 + 32) = *a5;
  *(v5 + 48) = v17;
  *(v5 + 64) = *(a5 + 32);
  *(v5 + 72) = a1;
  return v5;
}

uint64_t CommandContainer.registerCommandObserver(_:handler:)()
{
  OUTLINED_FUNCTION_2_125();
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = *(v4 + 104);

  v7(v10, v3, sub_1D80CFEBC, v6, MEMORY[0x1E69E7CA8] + 8, ObjectType, v4);

  OUTLINED_FUNCTION_1_139();
  sub_1D7E642AC();
  OUTLINED_FUNCTION_0_194();
  v8 = *(v0 + 104);
  *(v8 + 16) = v4 + 105;
  sub_1D7E05450(v10, v8 + 40 * (v4 + 104) + 32);
  *(v0 + 104) = v8;
  return swift_endAccess();
}

uint64_t CommandContainer.disableCommand(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  v5 = v2[3];
  ObjectType = swift_getObjectType();
  (*(v5 + 56))(v9, a1, nullsub_1, 0, OUTLINED_FUNCTION_0_2, 0, MEMORY[0x1E69E7CA8] + 8, ObjectType, v5);
  OUTLINED_FUNCTION_1_139();
  sub_1D7E642AC();
  OUTLINED_FUNCTION_0_194();
  v7 = v2[13];
  *(v7 + 16) = v4 + 1;
  sub_1D7E05450(v9, v7 + 40 * v4 + 32);
  v2[13] = v7;
  return swift_endAccess();
}

Swift::Void __swiftcall CommandContainer.unregisterCommands()()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  (*(v1 + 24))(v0, ObjectType, v1);
  swift_beginAccess();
  v3 = *(v0 + 104);
  *(v0 + 104) = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_1D7E0E768(v5, v6);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_1D818ED94();
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      v5 += 40;
      --v4;
    }

    while (v4);
  }
}

uint64_t CommandContainer.unregisterCommand<A>(for:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v4 + 32))(v1, a1, *(v3 + 88), ObjectType, v4);
}

uint64_t CommandContainer.deinit()
{
  swift_unknownObjectRelease();
  sub_1D7E64060(v0 + 32);

  return v0;
}

uint64_t CommandContainer.__deallocating_deinit()
{
  CommandContainer.deinit();

  return swift_deallocClassInstance();
}

void sub_1D80CFF60(id *a1)
{
  v1 = *a1;
  sub_1D7E50694(*a1);
  BlueprintPrewarmState.state.setter(v1);
}

void (*BlueprintPrewarmState.state.modify(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 16);

  v3[5] = sub_1D818F524();
  return sub_1D7FED5F4;
}

uint64_t BlueprintPrewarmState.__allocating_init()()
{
  v0 = swift_allocObject();
  BlueprintPrewarmState.init()();
  return v0;
}

uint64_t BlueprintPrewarmState.__deallocating_deinit()
{
  BlueprintPrewarmState.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80D00C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3E && *(a1 + 8))
    {
      v2 = *a1 + 61;
    }

    else
    {
      v2 = (((*a1 >> 58) >> 4) | (4 * ((*a1 >> 58) & 0xC | (*a1 >> 1) & 3))) ^ 0x3F;
      if (v2 >= 0x3D)
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

uint64_t sub_1D80D011C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xF | (16 * (-a2 & 0x3F));
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1D80D0170(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF9 | (a2 << 62);
  }

  else
  {
    v2 = (4 * (a2 - 2)) & 0x3FFFFFFF8 | (a2 - 2) & 1 | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

void static TimelineReloadPolicy.after(_:jitteredUpTo:)(double a1)
{
  v2 = sub_1D818E754();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D80D0398(v6, 0.0, a1);
  sub_1D818E6F4();
  sub_1D8190D04();
  (*(v3 + 8))(v5, v2);
  sub_1D7E1A4D0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D81A1B70;
  sub_1D80D043C();
  v8 = sub_1D81925B4();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D7E13BF4();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = MEMORY[0x1E69E6438];
  *(v7 + 96) = MEMORY[0x1E69E63B0];
  *(v7 + 104) = v13;
  *(v7 + 72) = a1;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1D8190D14();
  sub_1D8192334();
  v14 = v17;
  v15 = v18;
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v14;
  *(v7 + 120) = v15;
  sub_1D7E13588();
  v16 = sub_1D8191E44();
  sub_1D81919E4();
  sub_1D818FD44();
}

uint64_t sub_1D80D0398(uint64_t result, double a2, double a3)
{
  if (a2 == a3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3 - a2;
  if (COERCE__INT64(fabs(a3 - a2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = 0;
  result = MEMORY[0x1DA715D20](&v7, 8);
  if (v5 * vcvtd_n_f64_u64(v7 & 0x1FFFFFFFFFFFFFLL, 0x35uLL) + a2 == a3)
  {
    return sub_1D80D0398(v6, a2, a3);
  }

  return result;
}

unint64_t sub_1D80D043C()
{
  result = qword_1EDBBD078;
  if (!qword_1EDBBD078)
  {
    sub_1D818E754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBD078);
  }

  return result;
}

void sub_1D80D04EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  v6 = a3(a2);
  v7 = 0;
  while (v6 != v7)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](v7, a2);
    }

    else
    {
      if (v7 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v8 = *(a2 + 8 * v7 + 32);
    }

    v9 = v8;
    a4(0);
    v10 = sub_1D8191CC4();

    if (v10)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1D80D05DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1D8192634() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t TabBarNavigationController.identifier.getter()
{
  OUTLINED_FUNCTION_0_195();
  swift_getObjectType();
  return sub_1D818EF94();
}

uint64_t TabBarNavigationController.viewControllers.getter()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_viewControllers);
  sub_1D7E194D0();
  v2 = sub_1D8191314();

  return v2;
}

id TabBarNavigationController.__allocating_init(rootViewController:commandCenter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  v7 = OUTLINED_FUNCTION_47();
  return TabBarNavigationController.init(rootViewController:commandCenter:)(v7, a2, a3);
}

uint64_t TabBarNavigationController.shouldSelectOnCollapse.getter()
{
  OUTLINED_FUNCTION_0_195();
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 24))(ObjectType, v1) & 1;
}

uint64_t TabBarNavigationController.isValidForCachingRestoreState.getter()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, sel_viewControllers);
  sub_1D7E194D0();
  OUTLINED_FUNCTION_47();
  v2 = sub_1D8191314();

  if (!sub_1D7E36AB8(v2))
  {

LABEL_13:
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_14;
  }

  sub_1D7E33DD8(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA714420](0, v2);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  v4 = v3;

  v16[0] = v4;
  sub_1D7E0631C(0, &qword_1EDBBC530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!*(&v14 + 1))
  {
LABEL_14:
    sub_1D80D2890(&v13, &qword_1EDBBC520, &qword_1EDBBC530, MEMORY[0x1E69D6488]);
    return 0;
  }

  sub_1D7E05450(&v13, v16);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v5 = sub_1D818EF94();
  v7 = v6;
  OUTLINED_FUNCTION_8_4();
  swift_getObjectType();
  if (v5 == sub_1D818EF94() && v7 == v8)
  {

    goto LABEL_18;
  }

  v10 = sub_1D8192634();

  if (v10)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    return 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return 0;
}

void TabBarNavigationController.viewControllers.setter()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  sub_1D7E194D0();
  v2 = sub_1D8191304();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, sel_setViewControllers_, v2);

  sub_1D80D0CE4();
}

id TabBarNavigationController.rootViewController.getter()
{
  OUTLINED_FUNCTION_0_195();
  v1 = *v0;
  v2 = *v0;
  return v1;
}

id TabBarNavigationController.init(rootViewController:commandCenter:)(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot] = 0;
  *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth] = 0;
  swift_getObjectType();
  v8 = dynamic_cast_existential_1_unconditional(a1);
  v9 = &v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  *v9 = v8;
  v9[1] = v10;
  v11 = &v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_commandCenter];
  *v11 = a2;
  *(v11 + 1) = a3;
  v15.receiver = v3;
  v15.super_class = ObjectType;
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = objc_msgSendSuper2(&v15, sel_initWithRootViewController_, v12);
  [v13 _setAllowsInteractivePopWhenNavigationBarHidden_];

  swift_unknownObjectRelease();
  return v13;
}

void sub_1D80D0B84()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot) = 0;
  *(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth) = 0;
  sub_1D81923A4();
  __break(1u);
}

void sub_1D80D0CE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 ts_bottomViewController];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  swift_getObjectType();
  v5 = dynamic_cast_existential_1_conditional(v4);
  if (!v5)
  {

LABEL_10:
    sub_1D81921A4();
    MEMORY[0x1DA713260](0xD000000000000056, 0x80000001D81D4950);
    [v1 ts_bottomViewController];
    sub_1D7E192B0(0);
    v15 = sub_1D8190F84();
    MEMORY[0x1DA713260](v15);

    sub_1D81923A4();
    __break(1u);
    return;
  }

  v7 = v5;
  v8 = v6;
  v9 = &v1[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  swift_beginAccess();
  v10 = *v9;
  *v9 = v7;
  *(v9 + 1) = v8;
  v11 = v4;

  v12 = swift_getObjectType();
  v18 = v7;
  (*(v8 + 16))(&v17, v12, v8);

  if (v17 && (v17 == 1 || (v16.receiver = v1, v16.super_class = ObjectType, v13 = objc_msgSendSuper2(&v16, sel_viewControllers), OUTLINED_FUNCTION_7_64(), OUTLINED_FUNCTION_14(), v14 = sub_1D8191314(), &v18, sub_1D7E36AB8(v14), OUTLINED_FUNCTION_47(), , &v18 == 1)))
  {
    [v1 setNavigationBarHidden:1 animated:0];
  }

  else
  {
    [v1 setNavigationBarHidden:0 animated:0];
  }
}

void (*TabBarNavigationController.viewControllers.modify(objc_super **a1))(objc_super **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v3[4].receiver = ObjectType;
  v3->receiver = v1;
  v3->super_class = ObjectType;
  v5 = [(objc_super *)v3 viewControllers];
  v3[4].super_class = OUTLINED_FUNCTION_7_64();
  v6 = sub_1D8191314();

  v3[3].receiver = v6;
  return sub_1D80D0FC0;
}

void sub_1D80D0FC0(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[4].receiver;
  super_class = (*a1)[3].super_class;
  if (a2)
  {
    sub_1D8190DB4();
    v5 = sub_1D8191304();

    v2[1].receiver = super_class;
    v2[1].super_class = receiver;
    objc_msgSendSuper2(v2 + 1, sel_setViewControllers_, v5);
  }

  else
  {
    v6 = sub_1D8191304();

    v2[2].receiver = super_class;
    v2[2].super_class = receiver;
    objc_msgSendSuper2(v2 + 2, sel_setViewControllers_, v6);

    sub_1D80D0CE4();
  }

  free(v2);
}

id TabBarNavigationController.tabBarItem.getter()
{
  v1 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController;
  OUTLINED_FUNCTION_8_4();
  v2 = [*(v0 + v1) tabBarItem];

  return v2;
}

uint64_t TabBarNavigationController.description.getter()
{
  ObjectType = swift_getObjectType();
  sub_1D7EBB4A4(0, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D819FAC0;
  *(v2 + 56) = ObjectType;
  *(v2 + 64) = sub_1D80D2828(&qword_1ECA10CB8);
  *(v2 + 32) = v0;
  v3 = v0;
  v4 = TabBarNavigationController.identifier.getter();
  v6 = v5;
  *(v2 + 96) = MEMORY[0x1E69E6158];
  *(v2 + 104) = sub_1D7E13BF4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v6;

  return sub_1D8190F54();
}

id TabBarNavigationController.__allocating_init(rootViewController:navigationBarClass:)(void *a1, uint64_t a2)
{
  if (a2)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [objc_allocWithZone(v2) initWithRootViewController:a1 navigationBarClass:ObjCClassFromMetadata];

  return v5;
}

id TabBarNavigationController.__allocating_init(rootViewController:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithRootViewController_];

  return v1;
}

void sub_1D80D146C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot);
}

id TabBarNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TabBarNavigationController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  [v0 setDelegate_];
}

Swift::Void __swiftcall TabBarNavigationController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  OUTLINED_FUNCTION_8_4();
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = swift_getObjectType();
  v16 = v6;
  (*(v7 + 16))(&v15, v8, v7);
  if (v15 && (v15 == 1 || (v14.receiver = v2, v14.super_class = ObjectType, v9 = objc_msgSendSuper2(&v14, sel_viewControllers), OUTLINED_FUNCTION_7_64(), OUTLINED_FUNCTION_14(), v10 = sub_1D8191314(), &v16, sub_1D7E36AB8(v10), OUTLINED_FUNCTION_47(), , &v16 == 1)))
  {
    v11 = OUTLINED_FUNCTION_6_78();
    v13 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_6_78();
    v13 = 0;
  }

  [v11 v12];
}

Swift::Void __swiftcall TabBarNavigationController.viewDidAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidAppear_, a1);
  sub_1D80D17AC();
}

void sub_1D80D17AC()
{
  ObjectType = swift_getObjectType();
  v2 = [v0 splitViewController];
  if (!v2)
  {
    return;
  }

  v17 = v2;
  v3 = [v2 viewControllers];
  sub_1D7E194D0();
  v4 = sub_1D8191314();

  v5 = sub_1D7E36AB8(v4);

  if (v5 >= 2)
  {
    v6 = [v17 viewControllers];
    v7 = sub_1D8191314();

    sub_1D7E33DD8(1, (v7 & 0xC000000000000001) == 0, v7);
    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](1, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = *(v7 + 40);
    }

    if (v8 == v0)
    {
      v24.receiver = v0;
      v24.super_class = ObjectType;
      v9 = objc_msgSendSuper2(&v24, sel_viewControllers);
      v10 = sub_1D8191314();

      v11 = sub_1D7E36AB8(v10);

      if (v11 <= 1)
      {
        v12 = [v0 topViewController];
        if (v12)
        {
          v13 = v12;
          sub_1D80957E4(v12, &v18);

          if (*(&v19 + 1))
          {
            sub_1D7E05450(&v18, v21);
            v14 = v22;
            v15 = v23;
            __swift_project_boxed_opaque_existential_1(v21, v22);
            v16 = (*(v15 + 8))(v14, v15);
            __swift_destroy_boxed_opaque_existential_1Tm(v21);
LABEL_16:
            [v17 setPresentsWithGesture_];

            return;
          }
        }

        else
        {
          v20 = 0;
          v18 = 0u;
          v19 = 0u;
        }

        sub_1D80D2890(&v18, &qword_1ECA10D30, &qword_1ECA10510, &protocol descriptor for TabBarSplitViewGestureProviding);
        v16 = 1;
        goto LABEL_16;
      }

      v16 = 0;
      goto LABEL_16;
    }
  }
}

id TabBarNavigationController.show(_:sender:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v6 = [v3 tabBarController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 tabBar];
    v9 = [v8 isHidden];

    if ((v9 & 1) == 0 && [v2 hidesBottomBarWhenPushed])
    {
      result = [v7 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;
      v12 = [result window];

      if (v12)
      {
        v13 = [v7 tabBar];
        [v13 frame];

        v14 = OUTLINED_FUNCTION_2_126();
        v17 = [v15 v16];
        if (v17)
        {
          v18 = v17;
          v19 = OUTLINED_FUNCTION_2_126();
          [v20 v21];

          v7 = *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot];
          *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot] = v18;
        }

        else
        {
        }
      }
    }
  }

  sub_1D7E7B91C(a2, v30);
  v22 = v31;
  if (v31)
  {
    v23 = __swift_project_boxed_opaque_existential_1(v30, v31);
    v24 = *(v22 - 8);
    v25 = MEMORY[0x1EEE9AC00](v23);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v27, v25);
    v28 = sub_1D8192614();
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    v28 = 0;
  }

  v29.receiver = v3;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, sel_showViewController_sender_, v2, v28);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall TabBarNavigationController.navigationController(_:willShow:animated:)(UINavigationController *_, UIViewController *willShow, Swift::Bool animated)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_rootViewController];
  OUTLINED_FUNCTION_8_4();
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = swift_getObjectType();
  aBlock[0] = v9;
  (*(v10 + 16))(&v46, v11, v10);
  if (v46 && (v46 == 1 || (v42.receiver = v4, v42.super_class = ObjectType, v12 = [(UINavigationController *)&v42 viewControllers], OUTLINED_FUNCTION_7_64(), OUTLINED_FUNCTION_14(), v13 = sub_1D8191314(), aBlock, v14 = sub_1D7E36AB8(v13), , v14 == 1)))
  {
    v15 = OUTLINED_FUNCTION_6_78();
    [v15 v16];
  }

  else
  {
    v17 = OUTLINED_FUNCTION_6_78();
    [v17 v18];
    v19 = [(UINavigationController *)_ navigationBar];
    [(UINavigationBar *)v19 setNeedsLayout];
  }

  v20 = *&v4[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot];
  if (v20)
  {
    *&v4[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_animateAlongsideTabBarSnapshot] = 0;
    v21 = [(UIViewController *)willShow transitionCoordinator];
    if (!v21)
    {
      v33 = v20;
      goto LABEL_20;
    }

    v22 = v21;
    v45.receiver = v4;
    v45.super_class = ObjectType;
    v23 = [(UINavigationController *)&v45 viewControllers];
    v24 = sub_1D7E194D0();
    v25 = sub_1D8191314();

    sub_1D80D04EC(willShow, v25, sub_1D7E36AB8, sub_1D7E194D0);
    v27 = v26;
    LOBYTE(v23) = v28;

    if ((v23 & 1) == 0)
    {
      v29 = __OFSUB__(v27, 1);
      v30 = v27 - 1;
      if (v29)
      {
        __break(1u);
        goto LABEL_23;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        v44.receiver = v4;
        v44.super_class = ObjectType;
        v31 = [(UINavigationController *)&v44 viewControllers];
        v24 = sub_1D8191314();

        sub_1D7E33DD8(v30, (v24 & 0xC000000000000001) == 0, v24);
        if ((v24 & 0xC000000000000001) == 0)
        {
          v32 = *(v24 + 8 * v30 + 32);
LABEL_13:
          v33 = v32;

          v34 = [v33 view];
          if (!v34)
          {
            __break(1u);
            return;
          }

          v35 = v34;
          [v34 addSubview_];

          v36 = [v4 tabBarController];
          if (v36)
          {
            v37 = v36;
            v38 = [v36 tabBar];

            [v38 setHidden_];
          }

          v39 = swift_allocObject();
          *(v39 + 16) = v20;
          aBlock[4] = sub_1D80D27D4;
          aBlock[5] = v39;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D7F6900C;
          aBlock[3] = &block_descriptor_72;
          v40 = _Block_copy(aBlock);
          v41 = v20;

          [v22 animateAlongsideTransition:0 completion:v40];
          _Block_release(v40);

          goto LABEL_18;
        }

LABEL_23:
        v32 = MEMORY[0x1DA714420](v30, v24);
        goto LABEL_13;
      }
    }

    v33 = v20;
LABEL_18:
    swift_unknownObjectRelease();
LABEL_20:
  }
}

Swift::Void __swiftcall TabBarNavigationController.navigationController(_:didShow:animated:)(UINavigationController *_, UIViewController *didShow, Swift::Bool animated)
{
  ObjectType = swift_getObjectType();
  v18.receiver = v3;
  v18.super_class = ObjectType;
  v5 = [(UINavigationController *)&v18 viewControllers];
  sub_1D7E194D0();
  v6 = sub_1D8191314();

  v7 = sub_1D7E36AB8(v6);

  v8 = OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth;
  v9 = *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_viewControllerDepth];
  v10 = [objc_opt_self() defaultCenter];
  if (v9 >= v7)
  {
    if (qword_1EDBAE510 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDBAE518;
  }

  else
  {
    if (qword_1EDBAE4F8 != -1)
    {
      swift_once();
    }

    v11 = &qword_1EDBAE500;
  }

  [v10 postNotificationName:*v11 object:v3];

  v17.receiver = v3;
  v17.super_class = ObjectType;
  v12 = [(UINavigationController *)&v17 viewControllers];
  v13 = sub_1D8191314();

  v14 = sub_1D7E36AB8(v13);

  *&v3[v8] = v14;
  sub_1D80D17AC();
  v15 = *&v3[OBJC_IVAR____TtC5TeaUI26TabBarNavigationController_commandCenter + 8];
  v16 = swift_getObjectType();
  if (qword_1EDBB3708 != -1)
  {
    swift_once();
  }

  (*(v15 + 144))(qword_1EDBB3710, MEMORY[0x1E69E7CA8] + 8, v16, v15);
}

id TabBarNavigationController.navigationController(_:animationControllerFor:from:to:)(uint64_t a1, uint64_t a2, id a3, id a4)
{
  v4 = a3;
  if (a2 == 2)
  {
    v9 = [a3 transitioningDelegate];
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    if ([v9 respondsToSelector_])
    {
      v11 = [v10 animationControllerForDismissedController_];
      OUTLINED_FUNCTION_16_1();
      goto LABEL_9;
    }

LABEL_10:
    swift_unknownObjectRelease();
    return 0;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v7 = [a4 transitioningDelegate];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (([v7 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = [v8 animationControllerForPresentedController:a4 presentingController:v4 sourceController:a1];
LABEL_9:
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1D80D26F8()
{
  result = sub_1D8190EE4();
  qword_1EDBAE500 = result;
  return result;
}

uint64_t sub_1D80D2754()
{
  result = sub_1D8190EE4();
  qword_1EDBAE518 = result;
  return result;
}

uint64_t sub_1D80D27E4(uint64_t a1)
{
  result = sub_1D80D2828(&unk_1ECA10CC0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D80D2828(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TabBarNavigationController();
    OUTLINED_FUNCTION_14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D80D2890(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D7EBB4A4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

id ModalHostViewStyler.config.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void ModalHostViewStyler.config.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

TeaUI::ModalHostViewStyler __swiftcall ModalHostViewStyler.init(config:)(TeaUI::ModalHostViewStyler config)
{
  v2 = *(config.config.backgroundColor.super.isa + 1);
  *v1 = *config.config.backgroundColor.super.isa;
  v1[1] = v2;
  return config;
}

Swift::Void __swiftcall ModalHostViewStyler.style(closeButton:)(UIButton *closeButton)
{
  sub_1D7F89D40();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = sub_1D80D2D38(closeButton, *v1);
  sub_1D7E0A1A8(0, &qword_1EDBB2F68);
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 systemBackgroundColor];
  v11 = sub_1D8191CC4();

  sub_1D7E49240();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D81A5090;
  v13 = &selRef_attemptTransitionToState_animated_;
  if (v11)
  {
    v14 = [v8 secondaryLabelColor];
    v15 = objc_opt_self();
    v16 = [v15 traitCollectionWithUserInterfaceStyle_];
    v17 = [v14 resolvedColorWithTraitCollection_];

    v13 = &selRef_attemptTransitionToState_animated_;
    *(v12 + 32) = v17;
    v18 = [v8 secondarySystemFillColor];
  }

  else
  {
    *(v12 + 32) = UIColor.legibleForeground.getter();
    v18 = [v8 secondarySystemFillColor];
    v15 = objc_opt_self();
  }

  v19 = [v15 v13[315]];
  v20 = [v18 resolvedColorWithTraitCollection_];

  *(v12 + 40) = v20;
  v21 = sub_1D80D2DF0();

  sub_1D8190B24();
  sub_1D7E0A1A8(0, &qword_1EDBB2F60);
  sub_1D8190DB4();
  v22 = sub_1D7E47238();
  if (v22)
  {
    v23 = v22;

    v27 = [v23 imageByApplyingSymbolConfiguration_];

    [(UIButton *)closeButton setImage:v27 forState:0];
    if (sub_1D8190B24())
    {
      sub_1D8191DB4();
      v24 = sub_1D8191E04();
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v24);
      sub_1D8191E24();
    }

    else
    {

      v25 = v27;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D80D2D38(void *a1, void *a2)
{
  if ([a1 overrideUserInterfaceStyle])
  {

    return [a1 overrideUserInterfaceStyle];
  }

  else
  {
    v5 = [objc_opt_self() whiteColor];
    v6 = [a2 _isSimilarToColor_withinPercentage_];

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

id sub_1D80D2DF0()
{
  sub_1D7E0A1A8(0, &qword_1EDBB3050);
  sub_1D8190DB4();
  v0 = sub_1D806A548();
  if (sub_1D8190B24())
  {
    return v0;
  }

  v2 = [objc_opt_self() configurationWithPointSize:7 weight:3 scale:20.0];
  v3 = [v2 configurationByApplyingConfiguration_];

  return v3;
}

uint64_t PillViewModel.title.getter()
{
  v1 = *(v0 + 16);
  sub_1D8190DB4();
  return v1;
}

void *PillViewModel.titleColor.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_1D80D2F28(uint64_t a1, uint64_t a2)
{
  sub_1D80D2F8C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D80D2F8C()
{
  if (!qword_1ECA10D38)
  {
    type metadata accessor for PillViewImage();
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10D38);
    }
  }
}

__n128 PillViewModel.size.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 32);
  result = *(v1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size);
  v4 = *(v1 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size + 16);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t PillViewModel.__allocating_init(title:titleColor:icon:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  PillViewModel.init(title:titleColor:icon:size:)(a1, a2, a3, a4, a5);
  return v10;
}

void *PillViewModel.init(title:titleColor:icon:size:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 32);
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  sub_1D80D30D8(a4, v5 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon);
  v8 = v5 + OBJC_IVAR____TtC5TeaUI13PillViewModel_size;
  v9 = *(a5 + 16);
  *v8 = *a5;
  *(v8 + 1) = v9;
  v8[32] = v7;
  return v5;
}

uint64_t sub_1D80D30D8(uint64_t a1, uint64_t a2)
{
  sub_1D80D2F8C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PillViewModel.deinit()
{

  sub_1D80D3174(v0 + OBJC_IVAR____TtC5TeaUI13PillViewModel_icon);
  return v0;
}

uint64_t sub_1D80D3174(uint64_t a1)
{
  sub_1D80D2F8C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PillViewModel.__deallocating_deinit()
{
  PillViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PillViewModel()
{
  result = qword_1ECA10D40;
  if (!qword_1ECA10D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D80D327C()
{
  sub_1D80D2F8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void BlueprintViewportMonitor.add(observer:scrollView:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v26 = v3;
  v5 = v4;
  ObjectType = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = (v11 - v10);
  sub_1D7E11E0C();
  *v12 = sub_1D8191AB4();
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], ObjectType);
  v13 = sub_1D8190CA4();
  (*(v8 + 8))(v12, ObjectType);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  ObjectType = swift_getObjectType();
  v1 = *(v5 + 16);
  if ((v1(ObjectType, v5) & 1) == 0)
  {
    v14 = OUTLINED_FUNCTION_9_39();
    if ((v15(v14) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  type metadata accessor for BlueprintViewportMonitorObserverProxy();
  swift_allocObject();
  v16 = swift_unknownObjectRetain();
  sub_1D814BE3C(v16, v5);
  v17 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
  v18 = swift_beginAccess();
  MEMORY[0x1DA713500](v18);
  sub_1D7E2893C(*((*(v2 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  swift_endAccess();
  v12 = *(v2 + OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options);
  if ((v12 & 2) != 0)
  {
    v19 = OUTLINED_FUNCTION_9_39();
    if (v20(v19))
    {
      if (qword_1EDBBB700 == -1)
      {
LABEL_7:
        v21 = MotionManager.motionEnabled.getter();
        (*(v5 + 40))(v2, v21 & 1, ObjectType, v5);
        goto LABEL_8;
      }

LABEL_14:
      OUTLINED_FUNCTION_3_17();
      goto LABEL_7;
    }
  }

LABEL_8:
  if (v12)
  {
    v22 = OUTLINED_FUNCTION_9_39();
    if ((v1)(v22))
    {
      if (v26)
      {
        type metadata accessor for BlueprintViewportScrollData();
        v23 = swift_allocObject();
        *(v23 + 16) = v26;
        v24 = *(v5 + 24);
        v25 = v26;
        v24(v2, v23, ObjectType, v5);
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_100();
}

void BlueprintViewportMonitor.remove(observer:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v0;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_40();
  *v2 = sub_1D8191AB4();
  v10 = OUTLINED_FUNCTION_10_52();
  v11(v10);
  v12 = sub_1D8190CA4();
  (*(v8 + 8))(v2, v6);
  if (v12)
  {
    ObjectType = swift_getObjectType();
    if (((*(v5 + 16))(ObjectType, v5) & 1) == 0)
    {
      v14 = OUTLINED_FUNCTION_4_8();
      if ((v15(v14) & 1) == 0)
      {
LABEL_18:
        OUTLINED_FUNCTION_100();
        return;
      }
    }

    v16 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_11_45();
    v17 = *(v3 + v16);
    v22 = MEMORY[0x1E69E7CC0];
    v18 = sub_1D7E36AB8(v17);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v18 == i)
      {

        *(v3 + v16) = v22;

        goto LABEL_18;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_12_44();
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        OUTLINED_FUNCTION_5_69();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v21 = Strong, swift_unknownObjectRelease(), v21 == v1))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

TeaUI::BlueprintViewportMonitor::Options sub_1D80D3894@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = BlueprintViewportMonitor.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1D80D38D4@<X0>(uint64_t *a1@<X8>)
{
  result = BlueprintViewportMonitor.Options.rawValue.getter();
  *a1 = result;
  return result;
}

id BlueprintViewportMonitor.init(options:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  *&v1[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall BlueprintViewportMonitor.stopUpdates()()
{
  v1 = v0;
  v2 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v8 = (v7 - v6);
  sub_1D7E11E0C();
  *v8 = sub_1D8191AB4();
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v2);
  v9 = sub_1D8190CA4();
  (*(v4 + 8))(v8, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    OUTLINED_FUNCTION_3_17();
    goto LABEL_4;
  }

  if ((*(v1 + OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options) & 2) == 0)
  {
    return;
  }

  if (qword_1EDBBB700 != -1)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_1D80D490C();
}

void BlueprintViewportMonitor.notify(block:)()
{
  OUTLINED_FUNCTION_120();
  v3 = v0;
  v4 = OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_40();
  *v2 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_10_52();
  v9(v8);
  v10 = sub_1D8190CA4();
  v12 = *(v6 + 8);
  v11 = v6 + 8;
  v12(v2, v4);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_8_4();
    v14 = *(v3 + v13);
    if (!sub_1D7E36AB8(v14))
    {
LABEL_12:
      OUTLINED_FUNCTION_100();
      return;
    }

    OUTLINED_FUNCTION_14_40();
    if (v15 == v16)
    {
      sub_1D8190DB4();
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_12_44();
          v11 = v18;
        }

        else
        {
          OUTLINED_FUNCTION_5_69();
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v1(Strong, *(v11 + 24));
          swift_unknownObjectRelease();
        }

        ++v17;
      }

      while (v4 != v17);

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id BlueprintViewportMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BlueprintViewportMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D80D3D1C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for BlueprintViewportScrollData();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    swift_beginAccess();
    *a1 = v4;
    v6 = a2;
  }

  return v4;
}

void BlueprintViewportMonitor.motionManager(_:didUpdateMotionData:)()
{
  OUTLINED_FUNCTION_120();
  v5 = v4;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_140();
  if ((v0[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] & 2) == 0)
  {
    goto LABEL_17;
  }

  v22 = 0;
  sub_1D7E11E0C();
  v7 = v0;

  *v1 = sub_1D8191AB4();
  v8 = OUTLINED_FUNCTION_4_82();
  v9(v8);
  v10 = sub_1D8190CA4();
  v11 = OUTLINED_FUNCTION_4_8();
  v12(v11);
  if (v10)
  {
    v13 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
    OUTLINED_FUNCTION_8_4();
    v14 = *&v7[v13];
    if (!sub_1D7E36AB8(v14))
    {

LABEL_16:

LABEL_17:
      OUTLINED_FUNCTION_100();
      return;
    }

    OUTLINED_FUNCTION_14_40();
    if (v15 == v16)
    {
      sub_1D8190DB4();
      v17 = 0;
      do
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          OUTLINED_FUNCTION_12_44();
          v2 = v18;
        }

        else
        {
          OUTLINED_FUNCTION_5_69();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v2 + 24);
          swift_getObjectType();
          OUTLINED_FUNCTION_15_38();
          if (v20())
          {
            v21 = sub_1D80D3FE4(&v22, v5);
            (*(v19 + 32))(v7, v21, v3, v19);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v17 = (v17 + 1);
      }

      while (v1 != v17);

      goto LABEL_16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D80D3FE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    type metadata accessor for BlueprintViewportMotionData();
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    swift_beginAccess();
    *a1 = v4;
  }

  return v4;
}

void BlueprintViewportMonitor.motionManager(_:motionEnabled:)()
{
  OUTLINED_FUNCTION_120();
  v4 = v3;
  sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_140();
  if ((v0[OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_options] & 2) == 0)
  {
    goto LABEL_16;
  }

  sub_1D7E11E0C();
  v8 = v0;
  *v1 = sub_1D8191AB4();
  v9 = OUTLINED_FUNCTION_4_82();
  v10(v9);
  v11 = sub_1D8190CA4();
  v12 = v6 + 8;
  v13 = OUTLINED_FUNCTION_4_8();
  v14(v13);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = OBJC_IVAR____TtC5TeaUI24BlueprintViewportMonitor_observers;
  OUTLINED_FUNCTION_8_4();
  v16 = *&v8[v15];
  if (!sub_1D7E36AB8(v16))
  {

LABEL_16:
    OUTLINED_FUNCTION_100();
    return;
  }

  OUTLINED_FUNCTION_14_40();
  if (v17 == v18)
  {
    sub_1D8190DB4();
    v19 = 0;
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_12_44();
        v12 = v20;
      }

      else
      {
        OUTLINED_FUNCTION_5_69();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v21 = *(v12 + 24);
        swift_getObjectType();
        OUTLINED_FUNCTION_15_38();
        if (v22())
        {
          (*(v21 + 40))(v8, v4 & 1, v2, v21);
        }

        swift_unknownObjectRelease();
      }

      v19 = (v19 + 1);
    }

    while (v1 != v19);

    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
}

void sub_1D80D425C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D8190C74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7E11E0C();
  *v9 = sub_1D8191AB4();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v10 = sub_1D8190CA4();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (![*(a3 + 32) isDeviceMotionAvailable])
    {
      BlueprintViewportMonitor.motionManager(_:motionEnabled:)();
      return;
    }

    v20 = a2;
    swift_beginAccess();
    v11 = *(a3 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v12 = sub_1D7E36AB8(v11);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v12 == i)
      {

        *(a3 + 16) = v21;

        type metadata accessor for MotionManagerObserverProxy();
        v16 = swift_allocObject();
        v17 = a1;
        sub_1D80D4AE8(v17, v20, v16, &protocol witness table for BlueprintViewportMonitor);
        v18 = swift_beginAccess();
        MEMORY[0x1DA713500](v18);
        sub_1D7E2893C(*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1D8191404();
        swift_endAccess();
        sub_1D8157E18();
        return;
      }

      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v15 = Strong, swift_unknownObjectRelease(), v15 == a1))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
}

void sub_1D80D455C()
{
  OUTLINED_FUNCTION_120();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D8190C74();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_13_40();
  *v0 = sub_1D8191AB4();
  v11 = OUTLINED_FUNCTION_10_52();
  v12(v11);
  v13 = sub_1D8190CA4();
  (*(v9 + 8))(v0, v7);
  if (v13)
  {
    if (![*(v2 + 32) isDeviceMotionAvailable])
    {
LABEL_17:
      OUTLINED_FUNCTION_100();
      return;
    }

    v21 = v4;
    OUTLINED_FUNCTION_11_45();
    v14 = *(v2 + 16);
    v22 = MEMORY[0x1E69E7CC0];
    v15 = sub_1D7E36AB8(v14);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v15 == i)
      {

        *(v2 + 16) = v22;

        type metadata accessor for MotionManagerObserverProxy();
        v19 = swift_allocObject();
        sub_1D80D4AE8(v6, v21, v19, &protocol witness table for MotionDebugView);
        v20 = swift_beginAccess();
        MEMORY[0x1DA713500](v20);
        sub_1D7E2893C(*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1D8191404();
        swift_endAccess();
        sub_1D8157E18();
        goto LABEL_17;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA714420](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v18 = Strong, swift_unknownObjectRelease(), v18 == v6))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D80D480C()
{
  result = qword_1ECA10D68;
  if (!qword_1ECA10D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA10D68);
  }

  return result;
}

unint64_t sub_1D80D4864()
{
  result = qword_1ECA10D70[0];
  if (!qword_1ECA10D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA10D70);
  }

  return result;
}

void sub_1D80D490C()
{
  OUTLINED_FUNCTION_120();
  v3 = v2;
  OUTLINED_FUNCTION_17_34();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_140();
  sub_1D7E11E0C();
  *v1 = sub_1D8191AB4();
  v5 = OUTLINED_FUNCTION_4_82();
  v6(v5);
  v7 = sub_1D8190CA4();
  v8 = OUTLINED_FUNCTION_4_8();
  v9(v8);
  if (v7)
  {
    OUTLINED_FUNCTION_11_45();
    v10 = *(v3 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    v11 = sub_1D7E36AB8(v10);
    sub_1D8190DB4();
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {

        *(v3 + 16) = v15;

        OUTLINED_FUNCTION_100();
        return;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_12_44();
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        OUTLINED_FUNCTION_5_69();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v14 = Strong, swift_unknownObjectRelease(), v14 == v0))
      {
      }

      else
      {
        sub_1D8192274();
        sub_1D81922B4();
        sub_1D81922C4();
        sub_1D8192284();
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D80D4AE8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a3 + 24) = a4;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  return a3;
}

uint64_t sub_1D80D4B60(const void *a1)
{
  v2 = v1;
  memcpy(v8, a1, sizeof(v8));
  memcpy(v9, (v2 + 1896), 0x235uLL);
  memcpy(v7, (v2 + 1896), sizeof(v7));
  memcpy(v6, a1, 0x235uLL);
  sub_1D7E222B8(v9, &v5);
  BlueprintLayoutOptions.validate(layoutOptions:)(v6);
  sub_1D7E4C1A0(v9);

  return v2;
}

uint64_t sub_1D80D4DE4(uint64_t a1)
{
  swift_weakAssign();
  memcpy(__dst, (a1 + 1896), 0x235uLL);
  memcpy(__src, (a1 + 1896), 0x235uLL);
  sub_1D7E222B8(__dst, v4);
  sub_1D80D4F1C(__src, v4);
  __src[0] = *(v1 + 2488);
  sub_1D818EE04();

  sub_1D818F884();
}

double sub_1D80D4F1C@<D0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(__dst, __src, 0x235uLL);
  v3 = __dst[1];
  v4 = __dst[47];
  v5 = __dst[49];
  sub_1D7E4C1A0(__dst);
  result = *&__dst[21];
  v7 = __dst[23];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = result;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1D80D4F8C()
{
  swift_beginAccess();

  type metadata accessor for BlueprintLayoutTransition.SidecarKey();
  swift_getWitnessTable();
  sub_1D8190E14();
  sub_1D8190E34();
  return swift_endAccess();
}

uint64_t sub_1D80D50A4()
{
  swift_beginAccess();
  type metadata accessor for BlueprintLayoutTransition.SidecarKey();
  type metadata accessor for BlueprintLayoutTransition();
  swift_getWitnessTable();
  sub_1D8190E24();
  return swift_endAccess();
}

BOOL sub_1D80D51D8(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  if (a1[4] == a2[4])
  {
    return a1[3] == a2[3];
  }

  return 0;
}

uint64_t sub_1D80D5220()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA714A20](*&v1);
  sub_1D7F18BF0(v0[1], v0[2]);
  v2 = v0[3];
  v3 = v0[4];

  return sub_1D7F18BF0(v2, v3);
}

uint64_t sub_1D80D52BC()
{
  sub_1D81927E4();
  sub_1D80D5220();
  return sub_1D8192824();
}

uint64_t sub_1D80D5318(double a1, double a2)
{
  sub_1D81927E4();
  sub_1D7F18BF0(a1, a2);
  return sub_1D8192824();
}

uint64_t sub_1D80D5410()
{
  sub_1D81927E4();
  sub_1D80D5220();
  return sub_1D8192824();
}

BOOL sub_1D80D5468(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1D80D51D8(v5, v7);
}

uint64_t sub_1D80D54E8()
{
  sub_1D81927E4();
  sub_1D7F18BF0(*v0, v0[1]);
  return sub_1D8192824();
}

uint64_t sub_1D80D554C(uint64_t a1, int a2)
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

uint64_t sub_1D80D556C(uint64_t result, int a2, int a3)
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

uint64_t sub_1D80D55A0()
{
  v1 = *(*v0 + 16);
  sub_1D8190DB4();
  return v1;
}

uint64_t sub_1D80D55E8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id RadialGradientView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

void RadialGradientView.gradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x90uLL);
  OUTLINED_FUNCTION_0_196();
  sub_1D80D69EC(__dst, v4);
  sub_1D80D5808();
}

void sub_1D80D5720()
{
  if (!qword_1ECA10E00)
  {
    v0 = sub_1D8191E84();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECA10E00);
    }
  }
}

uint64_t RadialGradientView.gradientLayer.getter()
{
  v1 = [v0 layer];
  type metadata accessor for RadialGradientLayer();

  return swift_dynamicCastClassUnconditional();
}

void sub_1D80D5808()
{
  v1 = [v0 layer];
  type metadata accessor for RadialGradientLayer();
  swift_dynamicCastClassUnconditional();
  v2 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  swift_beginAccess();
  memcpy(__dst, &v0[v2], sizeof(__dst));
  memcpy(v4, &v0[v2], sizeof(v4));
  sub_1D80D58F4(__dst, v3);
  RadialGradientLayer.gradientDescriptor.setter(v4);
}

uint64_t sub_1D80D58F4(uint64_t a1, uint64_t a2)
{
  sub_1D80D5720();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RadialGradientLayer.gradientDescriptor.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  v4 = swift_beginAccess();
  OUTLINED_FUNCTION_1_141(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10], v14[11], v14[12], v14[13], v14[14], v14[15], v14[16], v14[17], v14[18], v14[19], v14[20], __src[0]);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy((v1 + v3), a1, 0x90uLL);
  sub_1D80D58F4(__src, v14);
  sub_1D80D69EC(__dst, sub_1D80D5720);
  memcpy(v14, __src, 0x90uLL);
  sub_1D80D5DBC(v14);
  return sub_1D80D69EC(__src, sub_1D80D5720);
}

void (*RadialGradientView.gradientDescriptor.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80D5A7C;
}

void sub_1D80D5A7C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1D80D5808();
  }
}

id RadialGradientView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  sub_1D80D60F0(v16);
  OUTLINED_FUNCTION_7_65((v0 + v2), v3, v4, v5, v6, v7, v8, v9, v14, v15, v16[0]);
  v10 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v11, v12, v10, v0, ObjectType);
}

id RadialGradientView.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

id RadialGradientView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC5TeaUI18RadialGradientView_gradientDescriptor;
  sub_1D80D60F0(v15);
  OUTLINED_FUNCTION_7_65(&v1[v4], v5, v6, v7, v8, v9, v10, v11, v14.receiver, v14.super_class, v15[0]);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);

  if (v12)
  {
  }

  return v12;
}

uint64_t sub_1D80D5C94@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_141(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9], v15[10], v15[11], v15[12], v15[13], v15[14], v15[15], v15[16], v15[17], v15[18], v15[19], v15[20], v16[0]);
  memcpy(a2, (v2 + v4), 0x90uLL);
  return sub_1D80D58F4(v16, v15);
}

uint64_t sub_1D80D5CF4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_1_141(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8], v16[9], v16[10], v16[11], v16[12], v16[13], v16[14], v16[15], v16[16], v16[17], v16[18], v16[19], v16[20], v17[0]);
  memcpy(a3, (v4 + v5), 0x90uLL);
  return sub_1D80D58F4(v17, v16);
}

uint64_t sub_1D80D5D58(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D80D58F4(__dst, &v8);
  return a5(__src);
}

id sub_1D80D5DBC(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  swift_beginAccess();
  memcpy(v18, &v1[v2], sizeof(v18));
  memcpy(__srca, __dst, 0x90uLL);
  memcpy(&__srca[144], &v1[v2], 0x90uLL);
  memcpy(v19, __dst, sizeof(v19));
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v19) == 1)
  {
    memcpy(v14, &__srca[144], 0x90uLL);
    if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v14) == 1)
    {
      memcpy(v15, __srca, sizeof(v15));
      sub_1D80D58F4(__dst, v13);
      sub_1D80D58F4(v18, v13);
      v3 = v15;
      return sub_1D80D69EC(v3, sub_1D80D5720);
    }

    sub_1D80D58F4(__dst, v15);
    sub_1D80D58F4(v18, v15);
    goto LABEL_7;
  }

  memcpy(v15, __srca, sizeof(v15));
  v4 = v15[0];
  v5 = v15[1];
  memcpy(v14, &__srca[144], 0x90uLL);
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(v14) == 1)
  {
    v13[0] = v4;
    v13[1] = v5;
    memcpy(&v13[2], &__srca[16], 0x80uLL);
    sub_1D80D58F4(__dst, v12);
    sub_1D80D58F4(v18, v12);
    sub_1D80D58F4(v15, v12);
    sub_1D80D6AB0(v13);
LABEL_7:
    memcpy(v14, __srca, sizeof(v14));
    sub_1D80D69EC(v14, sub_1D80D6A4C);
    return [v1 setNeedsDisplay];
  }

  memcpy(v13, &__srca[144], sizeof(v13));
  if (v4 == v13[0] && v5 == v13[1])
  {
    sub_1D80D58F4(__dst, v12);
    sub_1D80D58F4(v18, v12);
    sub_1D80D58F4(v15, v12);
    sub_1D80D69EC(v13, sub_1D80D5720);
    v9 = v4;
    v10 = v5;
    memcpy(v11, &__srca[16], sizeof(v11));
    sub_1D80D6AB0(&v9);
    memcpy(v12, __srca, sizeof(v12));
    v3 = v12;
    return sub_1D80D69EC(v3, sub_1D80D5720);
  }

  v8 = sub_1D8192634();
  sub_1D80D58F4(__dst, v12);
  sub_1D80D58F4(v18, v12);
  sub_1D80D58F4(v15, v12);
  sub_1D80D69EC(v13, sub_1D80D5720);
  v9 = v4;
  v10 = v5;
  memcpy(v11, &__srca[16], sizeof(v11));
  sub_1D80D6AB0(&v9);
  memcpy(v12, __srca, sizeof(v12));
  result = sub_1D80D69EC(v12, sub_1D80D5720);
  if ((v8 & 1) == 0)
  {
    return [v1 setNeedsDisplay];
  }

  return result;
}

void (*RadialGradientLayer.gradientDescriptor.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x2F0uLL);
  *a1 = v3;
  v3[93] = v1;
  v4 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  OUTLINED_FUNCTION_8_4();
  memcpy(v3, (v1 + v4), 0x90uLL);
  memcpy(v3 + 18, (v1 + v4), 0x90uLL);
  sub_1D80D58F4(v3, (v3 + 36));
  return sub_1D80D6194;
}

void sub_1D80D6194(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_8_51((v2 + 432));
    OUTLINED_FUNCTION_8_51(v4);
    sub_1D80D58F4(v2 + 432, v2 + 576);
    RadialGradientLayer.gradientDescriptor.setter(v4);
    OUTLINED_FUNCTION_8_51((v2 + 288));
    OUTLINED_FUNCTION_0_196();
    sub_1D80D69EC(v2 + 288, v3);
  }

  else
  {
    OUTLINED_FUNCTION_8_51(v4);
    RadialGradientLayer.gradientDescriptor.setter(v4);
  }

  free(v2);
}

id RadialGradientLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RadialGradientLayer.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  sub_1D80D60F0(v13);
  OUTLINED_FUNCTION_7_65(&v0[v2], v3, v4, v5, v6, v7, v8, v9, v12.receiver, v12.super_class, v13[0]);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  [v10 setNeedsDisplayOnBoundsChange_];
  return v10;
}

id RadialGradientLayer.__allocating_init(layer:)()
{
  v1 = objc_allocWithZone(OUTLINED_FUNCTION_16_1());
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = [v1 initWithLayer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0);
  return v2;
}

char *RadialGradientLayer.init(layer:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  sub_1D80D60F0(__src);
  memcpy(&v2[v5], __src, 0x90uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1D8192614();
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v18, sel_initWithLayer_, v6);
  swift_unknownObjectRelease();
  v8 = v7;
  [v8 setNeedsDisplayOnBoundsChange_];
  sub_1D7E1C664(a1, &v17);
  if (swift_dynamicCast())
  {
    v9 = v16;
    v10 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
    OUTLINED_FUNCTION_8_4();
    memcpy(__dst, &v16[v10], sizeof(__dst));
    sub_1D80D58F4(__dst, v15);

    v11 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
    swift_beginAccess();
    memcpy(v15, &v8[v11], sizeof(v15));
    memcpy(&v8[v11], __dst, 0x90uLL);
    OUTLINED_FUNCTION_0_196();
    sub_1D80D69EC(v15, v12);
  }

  return v8;
}

id RadialGradientLayer.__allocating_init(coder:)()
{
  v1 = [objc_allocWithZone(OUTLINED_FUNCTION_16_1()) initWithCoder_];

  return v1;
}

id RadialGradientLayer.init(coder:)()
{
  OUTLINED_FUNCTION_16_1();
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  sub_1D80D60F0(v14);
  OUTLINED_FUNCTION_7_65(&v1[v3], v4, v5, v6, v7, v8, v9, v10, v13.receiver, v13.super_class, v14[0]);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

Swift::Void __swiftcall RadialGradientLayer.draw(in:)(CGContextRef in)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5TeaUI19RadialGradientLayer_gradientDescriptor;
  OUTLINED_FUNCTION_8_4();
  memcpy(__dst, &v2[v4], sizeof(__dst));
  memcpy(__src, &v2[v4], sizeof(__src));
  if (get_enum_tag_for_layout_string_5TeaUI10JSONSchemaV6ErrorsO_0(__src) != 1)
  {
    memcpy(v61, __dst, sizeof(v61));
    sub_1D7FCE31C(v61, v60);
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    memcpy(v60, __src, sizeof(v60));
    v6 = RadialGradientDescriptor.cfColors.getter();
    if (__src[17])
    {
      v7 = (__src[17] + 32);
    }

    else
    {
      v7 = 0;
    }

    v8 = CGGradientCreateWithColors(DeviceRGB, v6, v7);

    if (v8)
    {
      v9 = *&__src[2];
      v10 = *&__src[3];
      v11 = *&__src[4];
      v12 = *&__src[5];
      v48 = *&__src[6];
      startRadius = *&__src[7];
      v13 = __src[8];
      OUTLINED_FUNCTION_3_112();
      Width = CGRectGetWidth(v66);
      OUTLINED_FUNCTION_3_112();
      Height = CGRectGetHeight(v67);
      v57 = *&__src[9];
      v59 = *&__src[10];
      v15 = *&__src[11];
      v49 = *&__src[13];
      v50 = *&__src[14];
      v51 = *&__src[12];
      v16 = __src[15];
      OUTLINED_FUNCTION_3_112();
      v55 = CGRectGetWidth(v68);
      OUTLINED_FUNCTION_0_196();
      sub_1D80D69EC(__dst, v17);
      OUTLINED_FUNCTION_3_112();
      v52 = CGRectGetHeight(v69);
      OUTLINED_FUNCTION_3_112();
      if (v13)
      {
        v22 = v18;
        v23 = v19;
        v24 = v20;
        v25 = v21;
        v47 = v9;
        v26 = vabdd_f64(v11, v48) * CGRectGetWidth(*&v18);
        v27 = v12;
        v28 = Width;
        v29 = v10;
        v30 = vabdd_f64(v27, startRadius);
        v70.origin.x = v22;
        v70.origin.y = v23;
        v70.size.width = v24;
        v70.size.height = v25;
        v31 = v30 * CGRectGetHeight(v70);
        v10 = v29;
        Width = v28;
        v32 = v26 * v26;
        v9 = v47;
        startRadiusa = sqrt(v32 + v31 * v31);
      }

      else
      {
        startRadiusa = v11;
      }

      v34 = v9 * Width;
      v35 = v10 * Height;
      v36 = v57 * v55;
      [v2 bounds];
      if (v16)
      {
        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        v58 = vabdd_f64(v15, v49) * CGRectGetWidth(*&v37);
        v71.origin.x = v41;
        v71.origin.y = v42;
        v71.size.width = v43;
        v71.size.height = v44;
        v45 = vabdd_f64(v51, v50) * CGRectGetHeight(v71);
        v46 = sqrt(v58 * v58 + v45 * v45);
      }

      else
      {
        v46 = v15;
      }

      v64.x = v34;
      v64.y = v35;
      v65.x = v36;
      v65.y = v59 * v52;
      CGContextDrawRadialGradient(in, v8, v64, startRadiusa, v65, v46, 3u);
    }

    else
    {

      OUTLINED_FUNCTION_0_196();
      sub_1D80D69EC(__dst, v33);
    }
  }
}

uint64_t sub_1D80D69EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D80D6A4C()
{
  if (!qword_1ECA10E10)
  {
    sub_1D80D5720();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECA10E10);
    }
  }
}

uint64_t sub_1D80D6B1C()
{
  if ((*(v0 + 32) & 1) == 0)
  {
    *(v0 + 32) = 1;
    return (*(v0 + 40))(v0, 2);
  }

  return result;
}

uint64_t sub_1D80D6B60(char a1)
{
  if (a1 == 2)
  {
    return 0x656C6C65636E6163;
  }

  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1DA713260](v3, v4);

  return 0x6574656C706D6F63;
}

uint64_t sub_1D80D6C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  return v4;
}

uint64_t sub_1D80D6C74(uint64_t result)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = result;
    *(v1 + 32) = 1;
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2 & 1;

    sub_1D818FD04();
  }

  return result;
}

uint64_t sub_1D80D6D28()
{

  return v0;
}

uint64_t sub_1D80D6D50()
{
  sub_1D80D6D28();

  return swift_deallocClassInstance();
}

unsigned __int8 *getEnumTagSinglePayload for BlueprintInfiniteScrollRequest.Result(unsigned __int8 *result, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for BlueprintInfiniteScrollRequest.Result(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D80D6FA4()
{
  sub_1D81927E4();
  sub_1D8190FF4();
  return sub_1D8192824();
}

uint64_t sub_1D80D7030()
{
  sub_1D81927E4();
  sub_1D80D6F9C();
  return sub_1D8192824();
}

uint64_t sub_1D80D7070(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D8192634();
  }
}

uint64_t sub_1D80D70C4()
{
  sub_1D81921A4();
  MEMORY[0x1DA713260](0xD000000000000042, 0x80000001D81D4BC0);
  if (*(v0 + 32))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x1DA713260](v1, v2);

  MEMORY[0x1DA713260](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_1D80D71D4(uint64_t a1)
{
  result = sub_1D80D7218(qword_1EDBB5F40);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D80D7218(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BlueprintInfiniteScrollRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL BlueprintViewportScrollData.isOverscrolled.getter()
{
  v1 = *(v0 + 16);
  [v1 contentOffset];
  v3 = v2;
  [v1 adjustedContentInset];
  return v3 < v4;
}

uint64_t BlueprintViewportScrollData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1D80D7434(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1D8190EE4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath_];

  return v3;
}

Swift::Void __swiftcall ScaleContentSelectionStyle.willSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  if (_)
  {
    v6 = OUTLINED_FUNCTION_0_198(_, view);
    v7 = sub_1D8190EE4();
    [v6 removeAnimationForKey_];

    [objc_opt_self() flush];
    v8 = v5;
    v9 = sub_1D80D75EC(v8);
    v10 = [v3 (v4 + 2168)];
    sub_1D80D7A40(v9, 0x656C616373, 0xE500000000000000, v10);
  }
}

id sub_1D80D75EC(float a1)
{
  sub_1D7E0A1A8(0, &unk_1ECA11F80);
  v2 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  [v2 setDuration_];
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v4 = a1;
  v5 = [v3 initWithFloat_];
  [v2 setToValue_];

  v6 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v7) = 1036831949;
  LODWORD(v8) = 0.25;
  LODWORD(v9) = 0.75;
  LODWORD(v10) = 1.0;
  v11 = [v6 initWithControlPoints__:v8 :{v7, v9, v10}];
  [v2 setTimingFunction_];

  [v2 setFillMode_];
  [v2 setRemovedOnCompletion_];

  return v2;
}

Swift::Void __swiftcall ScaleContentSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  if (!_)
  {
    v6 = OUTLINED_FUNCTION_0_198(_, view);
    v7 = [v6 presentationLayer];

    if (v7)
    {
      v8 = sub_1D8190EE4();
      v9 = [v7 valueForKeyPath_];

      if (v9)
      {
        sub_1D8191F34();
        swift_unknownObjectRelease();
        sub_1D7E1C664(&v12, &v13);
        swift_dynamicCast();
        *&v13 = v5;
        v10 = sub_1D80D7888();
        v11 = [v3 (v4 + 2168)];
        sub_1D80D7A40(v10, 0x656C616373, 0xE500000000000000, v11);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1D80D7888()
{
  sub_1D7E0A1A8(0, &unk_1ECA0DCF0);
  v0 = sub_1D80D7434(0x726F66736E617274, 0xEF656C6163732E6DLL);
  [v0 setMass_];
  [v0 setStiffness_];
  [v0 setDamping_];
  [v0 setInitialVelocity_];
  v1 = v0;
  [v1 settlingDuration];
  [v1 setDuration_];
  v2 = v1;
  v3 = sub_1D818ED14();
  [v2 setFromValue_];

  v4 = sub_1D818ED14();
  [v2 setToValue_];

  [v2 setFillMode_];
  [v2 setRemovedOnCompletion_];

  return v2;
}

void sub_1D80D7A40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1D8190EE4();

  [a4 addAnimation:a1 forKey:v6];
}

__n128 OpenInNewWindowCommandHandler.__allocating_init(navigator:sceneProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(v4 + 24) = *a2;
  *(v4 + 40) = v6;
  *(v4 + 56) = *(a2 + 32);
  return result;
}

uint64_t OpenInNewWindowCommandHandler.init(navigator:sceneProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v3 = *(a2 + 16);
  *(v2 + 24) = *a2;
  *(v2 + 40) = v3;
  *(v2 + 56) = *(a2 + 32);
  return v2;
}

void *OpenInNewWindowCommandHandler.handle(commandCenter:command:with:source:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D80899B8(v4 + 24, &v10);
  v6 = v13;
  if (v13)
  {
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(&v10, v13);
    v8 = (*(v7 + 24))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(&v10);
  }

  else
  {
    sub_1D8089A48(&v10);
    v8 = 0;
  }

  v10 = v8;
  v11 = 0;
  v12 = 0;
  sub_1D80CDA70(a4, &v10);
  return sub_1D7FF1564(v10, v11, v12);
}

uint64_t OpenInNewWindowCommandHandler.deinit()
{

  sub_1D8089A48(v0 + 24);
  return v0;
}

uint64_t OpenInNewWindowCommandHandler.__deallocating_deinit()
{
  OpenInNewWindowCommandHandler.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BackgroundSelectionStyle.didSetHighlighted(_:view:selectedBackgroundView:)(Swift::Bool _, UIView *view, UIView *selectedBackgroundView)
{
  v4 = !_ && [(UIView *)selectedBackgroundView isHidden];

  [(UIView *)selectedBackgroundView setHidden:v4];
}

_BYTE *storeEnumTagSinglePayload for BackgroundSelectionStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t PageSessionManager.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for PageViewSession();
  *(v0 + 16) = sub_1D8190D94();
  return v0;
}

uint64_t PageSessionManager.init()()
{
  type metadata accessor for PageViewSession();
  *(v0 + 16) = sub_1D8190D94();
  return v0;
}

uint64_t PageSessionManager.startSession(for:durationThreshold:trigger:)(void *a1, unsigned __int8 *a2, double a3)
{
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v6, v7, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  v38 = v34 - v10;
  v11 = sub_1D818E794();
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v14 = v13 - v12;
  v15 = type metadata accessor for PageViewSession();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v19 = v18 - v17;
  v35 = *a2;
  if (qword_1EDBB34C8 != -1)
  {
    OUTLINED_FUNCTION_2_127();
  }

  v34[1] = qword_1EDBC6060;
  OUTLINED_FUNCTION_1_142();
  sub_1D80D8F80(0, v20, v21, MEMORY[0x1E69E6F90]);
  v22 = OUTLINED_FUNCTION_174();
  *(v22 + 16) = xmmword_1D819FAB0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_72_0();
  v23 = sub_1D818EF94();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1D7E13BF4();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1D81919E4();
  sub_1D818FD44();

  v26 = *(v15 + 28);
  v27 = sub_1D818E754();
  __swift_storeEnumTagSinglePayload(v19 + v26, 1, 1, v27);
  sub_1D818E784();
  v28 = sub_1D818E764();
  v30 = v29;
  (*(v36 + 8))(v14, v37);
  sub_1D818E744();
  *v19 = v28;
  *(v19 + 8) = v30;
  *(v19 + 16) = a3;
  *(v19 + *(v15 + 32)) = v35;
  OUTLINED_FUNCTION_7_66();
  (*(v31 + 16))(v19, v30, v25);
  OUTLINED_FUNCTION_72_0();
  sub_1D818EF94();
  v32 = v38;
  sub_1D80D846C(v19, v38);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v15);
  swift_beginAccess();
  sub_1D7EE6270();
  swift_endAccess();
  return sub_1D80D84D0(v19);
}

uint64_t sub_1D80D846C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageViewSession();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D80D84D0(uint64_t a1)
{
  v2 = type metadata accessor for PageViewSession();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PageSessionManager.resignSession(for:)()
{
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_70();
  OUTLINED_FUNCTION_16_41();
  OUTLINED_FUNCTION_9_40();
  v10 = OUTLINED_FUNCTION_72_0();
  sub_1D7EDF4C0(v10, v11, v12);

  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v0, v13, v14);
    return swift_endAccess();
  }

  else
  {
    sub_1D80D87AC(v0, v9);
    swift_endAccess();
    if (qword_1EDBB34C8 != -1)
    {
      OUTLINED_FUNCTION_2_127();
    }

    OUTLINED_FUNCTION_1_142();
    sub_1D80D8F80(0, v16, v17, MEMORY[0x1E69E6F90]);
    v18 = OUTLINED_FUNCTION_174();
    *(v18 + 16) = xmmword_1D819FAB0;
    v19 = OUTLINED_FUNCTION_16_41();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D7E13BF4();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1D81919E4();
    OUTLINED_FUNCTION_14_41();

    OUTLINED_FUNCTION_5_70();
    v22 = OUTLINED_FUNCTION_11_0();
    v23(v22);
    return sub_1D80D84D0(v9);
  }
}

uint64_t sub_1D80D8744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D80D8F80(0, a2, a3, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D80D87AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageViewSession();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PageSessionManager.resumeSession(for:)()
{
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v1, v2, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v3);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_39();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_5_70();
  OUTLINED_FUNCTION_16_41();
  OUTLINED_FUNCTION_9_40();
  v10 = OUTLINED_FUNCTION_72_0();
  sub_1D7EDF4C0(v10, v11, v12);

  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v0, v13, v14);
    return swift_endAccess();
  }

  else
  {
    sub_1D80D87AC(v0, v9);
    swift_endAccess();
    if (qword_1EDBB34C8 != -1)
    {
      OUTLINED_FUNCTION_2_127();
    }

    OUTLINED_FUNCTION_1_142();
    sub_1D80D8F80(0, v16, v17, MEMORY[0x1E69E6F90]);
    v18 = OUTLINED_FUNCTION_174();
    *(v18 + 16) = xmmword_1D819FAB0;
    v19 = OUTLINED_FUNCTION_16_41();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D7E13BF4();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1D81919E4();
    OUTLINED_FUNCTION_14_41();

    OUTLINED_FUNCTION_5_70();
    v22 = OUTLINED_FUNCTION_11_0();
    v23(v22);
    return sub_1D80D84D0(v9);
  }
}

uint64_t PageSessionManager.endSession(for:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_4_83();
  v4 = MEMORY[0x1E69E6720];
  sub_1D80D8F80(0, v5, v6, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v7);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v63 - v9;
  OUTLINED_FUNCTION_0_199();
  sub_1D80D8F80(0, v11, v12, v4);
  v14 = OUTLINED_FUNCTION_50(v13);
  MEMORY[0x1EEE9AC00](v14);
  v64 = v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v63 - v17;
  v19 = type metadata accessor for PageViewSession();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v25 = v63 - v24;
  v26 = a1[4];
  v27 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = *(v26 + 8);
  v65 = v27;
  v66 = v28;
  v29 = sub_1D818EF94();
  v31 = v30;
  swift_beginAccess();
  sub_1D7EDF4C0(v29, v31, *(v2 + 16));

  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v18, v32, v33);
    return swift_endAccess();
  }

  else
  {
    sub_1D80D87AC(v18, v25);
    swift_endAccess();
    if (*(v25 + 2) >= PageViewSession.duration.getter())
    {
      if (qword_1EDBB34C8 != -1)
      {
        OUTLINED_FUNCTION_2_127();
      }

      v48 = qword_1EDBC6060;
      OUTLINED_FUNCTION_1_142();
      sub_1D80D8F80(0, v49, v50, MEMORY[0x1E69E6F90]);
      v51 = OUTLINED_FUNCTION_174();
      *(v51 + 16) = xmmword_1D819FAB0;
      v52 = sub_1D818EF94();
      v54 = v53;
      *(v51 + 56) = MEMORY[0x1E69E6158];
      *(v51 + 64) = sub_1D7E13BF4();
      *(v51 + 32) = v52;
      *(v51 + 40) = v54;
      sub_1D81919E4();
      sub_1D818FD44();

      OUTLINED_FUNCTION_7_66();
      (*(v55 + 48))(v25, v48, v51);
    }

    else
    {
      if (qword_1EDBB34C8 != -1)
      {
        OUTLINED_FUNCTION_2_127();
      }

      v63[1] = qword_1EDBC6060;
      OUTLINED_FUNCTION_1_142();
      sub_1D80D8F80(0, v35, v36, MEMORY[0x1E69E6F90]);
      v37 = OUTLINED_FUNCTION_174();
      *(v37 + 16) = xmmword_1D819FAB0;
      v38 = sub_1D818EF94();
      v40 = v39;
      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1D7E13BF4();
      *(v37 + 32) = v38;
      *(v37 + 40) = v40;
      sub_1D81919E4();
      sub_1D818FD44();

      sub_1D7FA9E88(&v25[v19[7]], v10);
      v41 = sub_1D818E754();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v41);
      OUTLINED_FUNCTION_4_83();
      sub_1D80D8744(v10, v43, v44);
      if (EnumTagSinglePayload == 1)
      {
        EnumTagSinglePayload = *v25;
        v10 = *(v25 + 1);
        (*(*(v41 - 8) + 16))(v22 + v19[6], &v25[v19[6]], v41);
        v45 = v19[7];
        sub_1D8190DB4();
        sub_1D818E744();
        __swift_storeEnumTagSinglePayload(v22 + v45, 0, 1, v41);
        v46 = v19[8];
        v47 = v25[v46];
        *v22 = EnumTagSinglePayload;
        v22[1] = v10;
        v22[2] = 0;
        *(v22 + v46) = v47;
      }

      else
      {
        sub_1D80D846C(v25, v22);
      }

      OUTLINED_FUNCTION_7_66();
      (*(v56 + 40))(v22, v10, EnumTagSinglePayload);
      sub_1D80D84D0(v22);
    }

    sub_1D818EF94();
    swift_beginAccess();
    v57 = v64;
    v58 = OUTLINED_FUNCTION_11_0();
    sub_1D7F03ECC(v58, v59, v60);
    swift_endAccess();

    OUTLINED_FUNCTION_0_199();
    sub_1D80D8744(v57, v61, v62);
    return sub_1D80D84D0(v25);
  }
}

void sub_1D80D8F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

BOOL PageSessionManager.hasSession(for:)(void *a1)
{
  v2 = v1;
  sub_1D80D8F80(0, qword_1EDBBAFE8, type metadata accessor for PageViewSession, MEMORY[0x1E69E6720]);
  OUTLINED_FUNCTION_50(v4);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D818EF94();
  v10 = v9;
  swift_beginAccess();
  sub_1D7EDF4C0(v8, v10, *(v2 + 16));
  swift_endAccess();

  v11 = type metadata accessor for PageViewSession();
  v12 = __swift_getEnumTagSinglePayload(v7, 1, v11) != 1;
  sub_1D80D8744(v7, qword_1EDBBAFE8, type metadata accessor for PageViewSession);
  return v12;
}

uint64_t PageSessionManager.session(for:)@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = OUTLINED_FUNCTION_11_0(), v6 = sub_1D7E11428(v4, v5), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v3 + 56);
    v10 = type metadata accessor for PageViewSession();
    OUTLINED_FUNCTION_8();
    sub_1D80D846C(v9 + *(v11 + 72) * v8, a1);
    v12 = a1;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v14 = type metadata accessor for PageViewSession();
    v12 = a1;
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v13, 1, v14);
  return swift_endAccess();
}

uint64_t PageSessionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ForwardingTouchView.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = inside.y;
  x = inside.x;
  ObjectType = swift_getObjectType();
  v6 = [v2 subviews];
  sub_1D7F9F0F0();
  v7 = sub_1D8191314();

  v8 = sub_1D7E36AB8(v7);
  v9 = v8;
  for (i = 0; ; ++i)
  {
    if (v9 == i)
    {

      v15.receiver = v2;
      v15.super_class = ObjectType;
      LOBYTE(v8) = objc_msgSendSuper2(&v15, sel_pointInside_withEvent_, isa, x, y);
      return v8;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1DA714420](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(v7 + 8 * i + 32);
    }

    v11 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v8 pointInside:isa withEvent:{x, y}];

    if (v12)
    {

      LOBYTE(v8) = 1;
      return v8;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return v8;
}

id ForwardingTouchView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_80();

  return [v2 v3];
}

id ForwardingTouchView.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  ObjectType = swift_getObjectType();
  v1 = OUTLINED_FUNCTION_80();
  return objc_msgSendSuper2(v2, v3, v1, v0, ObjectType);
}

id ForwardingTouchView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ForwardingTouchView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id ForwardingTouchView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t StateCommandContextValue.value(for:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v35 = a2;
  v38 = a1;
  v5 = *(a3 + 24);
  sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v36 = v7;
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  OUTLINED_FUNCTION_2();
  v34 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 + 16);
  v15 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  OUTLINED_FUNCTION_2();
  v22 = v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, v38, v15, v24);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    (*(v17 + 8))(v20, v15);
LABEL_5:
    v29 = *(a3 + 52);
    sub_1D8191E84();
    OUTLINED_FUNCTION_3_0();
    return (*(v30 + 16))(v39, v40 + v29);
  }

  (*(v22 + 32))(v26, v20, v14);
  v27 = v36;
  v28 = v37;
  (*(v36 + 16))(v9, v35, v37);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    (*(v22 + 8))(v26, v14);
    (*(v27 + 8))(v9, v28);
    goto LABEL_5;
  }

  v32 = v34;
  (*(v34 + 32))(v13, v9, v5);
  (*v40)(v26, v13);
  (*(v32 + 8))(v13, v5);
  return (*(v22 + 8))(v26, v14);
}

uint64_t (*StateCommandContextValue.init(default:block:)@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t (**a8)(uint64_t a1, uint64_t a2)@<X8>))(uint64_t a1, uint64_t a2)
{
  v26 = a6;
  v27 = a7;
  v28 = a2;
  v15 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v25 - v19;
  __swift_storeEnumTagSinglePayload(&v25 - v19, 1, 1, a5);
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  type metadata accessor for StateCommandContextValue();
  v21 = v28;
  v28(a1, v20);
  OUTLINED_FUNCTION_3_0();
  (*(v22 + 8))(a1, a4);
  (*(v17 + 8))(v20, v15);
  result = swift_allocObject();
  *(result + 2) = a4;
  *(result + 3) = a5;
  v24 = v27;
  *(result + 4) = v26;
  *(result + 5) = v24;
  *(result + 6) = v21;
  *(result + 7) = a3;
  *a8 = sub_1D80D9EC8;
  a8[1] = result;
  return result;
}

uint64_t sub_1D80D9D80(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1D8191E84();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(*(a6 - 8) + 16))(&v16 - v13, a2, a6, v12);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, a6);
  a3(a1, v14);
  return (*(v11 + 8))(v14, v10);
}

uint64_t (*StateCommandContextValue<>.init(off:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)(unsigned __int8 *a1)@<X8>))(unsigned __int8 *a1)
{
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[0] = MEMORY[0x1E69E6370];
  v25[1] = v16;
  v25[2] = v17;
  v25[3] = &protocol witness table for Bool;
  v18 = *(type metadata accessor for StateCommandContextValue() + 52);
  (*(v11 + 16))(a5 + v18, a1, a4);
  __swift_storeEnumTagSinglePayload(a5 + v18, 0, 1, a4);
  v19 = *(v11 + 32);
  v19(v15, a1, a4);
  v20 = *(v11 + 80);
  v21 = (v20 + 32) & ~v20;
  v22 = (v13 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v19((v23 + v21), a2, a4);
  v19((v23 + v22), v15, a4);
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = sub_1D80DA12C;
  *(result + 5) = v23;
  *a5 = sub_1D80DA194;
  a5[1] = result;
  return result;
}

uint64_t sub_1D80DA0B0@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if ((a1 & 1) == 0)
  {
    a2 = a3;
  }

  (*(*(a4 - 8) + 16))(a5, a2, a4);

  return __swift_storeEnumTagSinglePayload(a5, 0, 1, a4);
}

uint64_t (*StateCommandContextValue<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(unsigned __int8 *)@<X8>))(unsigned __int8 *)
{
  OUTLINED_FUNCTION_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v13 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = MEMORY[0x1E69E6370];
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = &protocol witness table for Bool;
  v16 = *(type metadata accessor for StateCommandContextValue() + 52);
  (*(v9 + 16))(a4 + v16, a1, a3);
  __swift_storeEnumTagSinglePayload(a4 + v16, 0, 1, a3);
  v17 = *(v9 + 32);
  v17(v13, a1, a3);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  v17((v19 + v18), v13, a3);
  result = swift_allocObject();
  *(result + 2) = a2;
  *(result + 3) = a3;
  *(result + 4) = sub_1D80DA3E0;
  *(result + 5) = v19;
  *a4 = sub_1D80DA948;
  a4[1] = result;
  return result;
}

uint64_t sub_1D80DA368@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, a1, a2);

  return __swift_storeEnumTagSinglePayload(a3, 0, 1, a2);
}

unint64_t sub_1D80DA41C()
{
  result = sub_1D7E31228();
  if (v1 <= 0x3F)
  {
    result = sub_1D8191E84();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D80DA4A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = v10 + ((v9 + 16) & ~v9);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 16) & ~v9, v6, v4);
        if (EnumTagSinglePayload >= 2)
        {
          return EnumTagSinglePayload - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_28;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_1D80DA658(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 16) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_62:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v10 & 0x80000000) != 0)
          {
            v25 = (&a1[v12 + 16] & ~v12);
            if (v10 >= a2)
            {
              v29 = a2 + 1;
              v30 = &a1[v12 + 16] & ~v12;

              __swift_storeEnumTagSinglePayload(v30, v29, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v26 = ~(-1 << (8 * v14));
              }

              else
              {
                v26 = -1;
              }

              if (v14)
              {
                v27 = v26 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v28 = v14;
                }

                else
                {
                  v28 = 4;
                }

                bzero(v25, v14);
                switch(v28)
                {
                  case 2:
                    *v25 = v27;
                    break;
                  case 3:
                    *v25 = v27;
                    v25[2] = BYTE2(v27);
                    break;
                  case 4:
                    *v25 = v27;
                    break;
                  default:
                    *v25 = v27;
                    break;
                }
              }
            }
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v24 = a2 & 0x7FFFFFFF;
              *(a1 + 1) = 0;
            }

            else
            {
              v24 = a2 - 1;
            }

            *a1 = v24;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_62;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t EmptyStateView.emptyPosition.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
  result = OUTLINED_FUNCTION_8_4();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t EmptyStateView.emptyPosition.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t EmptyStateView.keyboardInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo;
  OUTLINED_FUNCTION_8_4();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  return swift_unknownObjectRetain();
}

uint64_t sub_1D80DAAD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo;
  swift_beginAccess();
  v5 = *(v3 + 32);
  v4 = *(v3 + 40);
  v6 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v4;
  return swift_unknownObjectRetain();
}

id sub_1D80DAB30(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v6 = v2;
  v7 = v1;
  swift_unknownObjectRetain();
  return EmptyStateView.keyboardInfo.setter(v5);
}

id EmptyStateView.keyboardInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  *(v5 + 5) = v4;
  swift_unknownObjectRelease();
  return [v1 setNeedsLayout];
}

id (*EmptyStateView.keyboardInfo.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return sub_1D80DAC4C;
}

id sub_1D80DAC4C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

char *EmptyStateView.init(model:styler:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition] = 2;
  v11 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_label;
  *&v3[v11] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v12 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView;
  *&v3[v12] = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCEF8]), sel_initWithFrame_);
  *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_minimalTopPadding] = 0x4042000000000000;
  v13 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo];
  v13[1] = 0u;
  v13[2] = 0u;
  *v13 = 0u;
  v14 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model];
  *v14 = v6;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = v8;
  v14[4] = v10;
  sub_1D7E0E768(a2, &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler]);
  v15 = a2[3];
  v16 = a2[4];
  v44 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v15);
  v17 = *(v16 + 16);
  v18 = v10;
  sub_1D8190DB4();
  sub_1D8190DB4();
  v19 = v17(v15, v16);
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  }

  else
  {
    v21 = 0;
  }

  *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_visualEffectView] = v21;
  v22 = v18;
  if (v10)
  {

    v23 = [v18 imageWithRenderingMode_];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

    *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView] = v24;
    if (v24)
    {
      [v24 frame];
      v43 = v25;
      v45 = v26;

      *&v27 = v43;
      *(&v27 + 1) = v45;
    }

    else
    {

      v27 = 0uLL;
    }

    v29 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
    *v29 = v27;
    v29[16] = 0;
  }

  else
  {

    *&v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView] = 0;
    v28 = &v3[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
    *v28 = 0;
    *(v28 + 1) = 0;
    v28[16] = 1;
  }

  v47.receiver = v3;
  v47.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v47, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v43);
  v31 = v44[3];
  v32 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v31);
  v33 = *(v32 + 8);
  v34 = v30;
  v35 = v33(v31, v32);
  [v34 setBackgroundColor_];

  if (*&v34[OBJC_IVAR____TtC5TeaUI14EmptyStateView_visualEffectView])
  {
    [v34 addSubview_];
  }

  v36 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView;
  [v34 addSubview_];
  v37 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_label;
  [*&v34[OBJC_IVAR____TtC5TeaUI14EmptyStateView_label] setNumberOfLines_];
  [*&v34[v37] setTextAlignment_];
  [*&v34[v37] setAutoresizingMask_];
  [*&v34[v36] addSubview_];
  v38 = [*&v34[v36] topEdgeEffect];
  [v38 setHidden_];

  OUTLINED_FUNCTION_1_7([*&v34[v36] bottomEdgeEffect]);
  OUTLINED_FUNCTION_1_7([*&v34[v36] leftEdgeEffect]);

  OUTLINED_FUNCTION_1_7([*&v34[v36] rightEdgeEffect]);
  v39 = *&v34[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView];
  if (v39)
  {
    v40 = *&v34[v36];
    v41 = v39;
    [v40 addSubview_];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  return v34;
}

id EmptyStateView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void EmptyStateView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition) = 2;
  v1 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_label;
  *(v0 + v1) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCC10]), sel_initWithFrame_);
  v2 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView;
  *(v0 + v2) = OUTLINED_FUNCTION_4(objc_allocWithZone(MEMORY[0x1E69DCEF8]), sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_minimalTopPadding) = 0x4042000000000000;
  v3 = (v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo);
  v3[1] = 0u;
  v3[2] = 0u;
  *v3 = 0u;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall EmptyStateView.layoutSubviews()()
{
  v1 = v0;
  v86.receiver = v0;
  v86.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v86, sel_layoutSubviews);
  v2 = &v0[OBJC_IVAR____TtC5TeaUI14EmptyStateView_keyboardInfo];
  OUTLINED_FUNCTION_8_4();
  Height = 0.0;
  if (*(v2 + 5))
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = v2[2];
    v7 = v2[3];
    swift_unknownObjectRetain();
    v8 = OUTLINED_FUNCTION_5_13();
    [v9 v10];
    OUTLINED_FUNCTION_0_99();
    [v0 bounds];
    v110.origin.x = v4;
    v110.origin.y = v5;
    v110.size.width = v6;
    v110.size.height = v7;
    CGRectIntersection(v87, v110);
    OUTLINED_FUNCTION_0_99();
    IsNull = CGRectIsNull(v88);
    swift_unknownObjectRelease();
    if (!IsNull)
    {
      v89.origin.x = OUTLINED_FUNCTION_5_13();
      Height = CGRectGetHeight(v89);
    }
  }

  v12 = *&v0[OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView];
  [v1 bounds];
  v13 = &selRef_attemptTransitionToState_animated_;
  v85 = v12;
  [v12 setFrame_];
  v14 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_visualEffectView];
  if (v14)
  {
    v15 = v14;
    [v85 frame];
    [v15 setFrame_];
  }

  v16 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_label];
  v17 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler];
  v18 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler + 24];
  v19 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler + 32];
  __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_styler], v18);
  v20 = (*(v19 + 24))(*&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model], *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model + 8], *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model + 16], *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_model + 24], v18, v19);
  [v16 setAttributedText_];

  [v16 sizeToFit];
  sub_1D7F3C638();
  [v16 setPreferredMaxLayoutWidth_];
  LODWORD(v21) = 0.25;
  [v16 ts:v21 setHyphenationFactor:?];
  v22 = *&v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView];
  if (v22)
  {
    v23 = *(v17 + 4);
    __swift_project_boxed_opaque_existential_1(v17, *(v17 + 3));
    v24 = *(v23 + 32);
    v25 = v22;
    v24();
    v26 = v25;
    [v26 frame];
    [v1 bounds];
    [v26 frame];
    OUTLINED_FUNCTION_3_113();
    v91 = CGRectIntegral(v90);
    x = v91.origin.x;
    width = v91.size.width;
    v29 = v91.size.height;
    v30 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
    OUTLINED_FUNCTION_8_4();
    v31 = v1[v30];
    v32 = [v1 &selRef_keyboardOrActionSwitchToNextViewController];
    v33 = v32;
    switch(v31)
    {
      case 1:

        v13 = &selRef_attemptTransitionToState_animated_;
        goto LABEL_16;
      case 2:
        v34 = [v32 horizontalSizeClass];

        v13 = &selRef_attemptTransitionToState_animated_;
        if (v34 == 2)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      case 3:
        v38 = [v32 horizontalSizeClass];

        v13 = &selRef_attemptTransitionToState_animated_;
        if (v38 == 1)
        {
          [v1 safeAreaInsets];
          v40 = 36.0;
          if (v39 > 36.0)
          {
            v40 = v39;
          }
        }

        else
        {
LABEL_16:
          [v1 safeAreaInsets];
          v36 = v41 + 36.0;
          [v85 frame];
          v37 = CGRectGetHeight(v93) / 3.0;
LABEL_17:
          if (v36 > v37)
          {
            v40 = v36;
          }

          else
          {
            v40 = v37;
          }
        }

        [v26 v13[234]];

        break;
      default:

        v13 = &selRef_attemptTransitionToState_animated_;
LABEL_10:
        [v1 safeAreaInsets];
        v36 = v35;
        [v85 frame];
        v37 = CGRectGetHeight(v92) * 0.5 - v29 * 0.5;
        goto LABEL_17;
    }
  }

  v42 = swift_allocObject();
  [v16 frame];
  [v16 preferredMaxLayoutWidth];
  [v16 intrinsicContentSize];
  [v1 bounds];
  CGRectGetWidth(v94);
  [v16 preferredMaxLayoutWidth];
  OUTLINED_FUNCTION_3_113();
  *(v42 + 16) = CGRectIntegral(v95);
  v43 = sub_1D80DBBD4(v1, (v42 + 16), 22.0);
  sub_1D80DBC7C(Height > 0.0, v1);
  v45 = v44;
  v46 = OBJC_IVAR____TtC5TeaUI14EmptyStateView_emptyPosition;
  if (v22)
  {
    v47 = v22;
    OUTLINED_FUNCTION_8_4();
    v48 = v1[v46];
    v49 = [v1 &selRef_keyboardOrActionSwitchToNextViewController];
    v50 = v49;
    switch(v48)
    {
      case 1:

        goto LABEL_36;
      case 2:
        v54 = [v49 horizontalSizeClass];

        if (v54 == 2)
        {
          goto LABEL_27;
        }

        goto LABEL_36;
      case 3:
        v66 = [v49 horizontalSizeClass];

        if (v66 == 1)
        {
          goto LABEL_49;
        }

LABEL_36:
        v67 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
        if (v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize + 16])
        {
          [v1 safeAreaInsets];
          if (v68 > 36.0)
          {
            v69 = v68;
          }

          else
          {
            v69 = 36.0;
          }
        }

        else
        {
          v71 = *v67;
          v70 = v67[1];
          v72 = v47;
          v73 = sub_1D80DBDFC(v1, v43, v45);
          v74 = v72;
          [v74 frame];
          [v74 v13 + 2424];
          [v74 frame];

          OUTLINED_FUNCTION_3_113();
          MaxY = CGRectGetMaxY(v102);

          v69 = MaxY + 22.0;
        }

        OUTLINED_FUNCTION_2_128();
        *(v42 + 24) = v69;
        goto LABEL_54;
      default:

LABEL_27:
        if (v45 < v43)
        {
          goto LABEL_49;
        }

        v55 = 0.0;
        if (Height > 0.0)
        {
          [v1 safeAreaInsets];
        }

        v56 = (v45 - v43) * 0.5 + v55;
        v57 = v47;
        [v57 frame];
        v58 = CGRectGetHeight(v96);

        v59 = v56 + v58 + 22.0;
        v60 = &v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize];
        if ((v1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize + 16] & 1) == 0)
        {
          v62 = *v60;
          v61 = v60[1];
          [v57 frame];
          [v57 v13[234]];
        }

        v98.origin.x = OUTLINED_FUNCTION_7_3();
        MinX = CGRectGetMinX(v98);
        v99.origin.x = OUTLINED_FUNCTION_7_3();
        v64 = CGRectGetWidth(v99);
        v100.origin.x = OUTLINED_FUNCTION_7_3();
        v65 = CGRectGetHeight(v100);
        OUTLINED_FUNCTION_2_128();
        *(v42 + 16) = MinX;
        *(v42 + 24) = v59;
        break;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
    v51 = v1[v46];
    v52 = [v1 traitCollection];
    v53 = v52;
    switch(v51)
    {
      case 1:

        goto LABEL_51;
      case 2:
        v76 = [v52 horizontalSizeClass];

        if (v76 == 2)
        {
          goto LABEL_43;
        }

        goto LABEL_51;
      case 3:
        v80 = [v52 horizontalSizeClass];

        if (v80 == 1)
        {
          goto LABEL_49;
        }

LABEL_51:
        [v1 safeAreaInsets];
        v82 = v81;
        [v1 bounds];
        v83 = CGRectGetHeight(v106) / 3.0;
        if (v82 > v83)
        {
          v83 = v82;
        }

        *(v42 + 24) = v83;
        goto LABEL_54;
      default:

LABEL_43:
        if (v45 < v43)
        {
LABEL_49:
          sub_1D80DBCDC(v1, v42, 22.0);
          goto LABEL_54;
        }

        v77 = 0.0;
        if (Height > 0.0)
        {
          [v1 safeAreaInsets];
        }

        v78 = (v45 - v43) * 0.5 + v77;
        v103.origin.x = OUTLINED_FUNCTION_7_3();
        v79 = CGRectGetMinX(v103);
        v104.origin.x = OUTLINED_FUNCTION_7_3();
        v64 = CGRectGetWidth(v104);
        v105.origin.x = OUTLINED_FUNCTION_7_3();
        v65 = CGRectGetHeight(v105);
        OUTLINED_FUNCTION_2_128();
        *(v42 + 16) = v79;
        *(v42 + 24) = v78;
        break;
    }
  }

  *(v42 + 32) = v64;
  *(v42 + 40) = v65;
LABEL_54:
  OUTLINED_FUNCTION_8_4();
  v107 = CGRectIntegral(*(v42 + 16));
  [v16 v13[234]];
  [v1 bounds];
  v84 = CGRectGetWidth(v108);
  [v16 frame];
  [v85 setContentSize_];
}

double sub_1D80DBBD4(uint64_t a1, CGFloat *a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView);
  if (v4)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    v9 = a2[3];
    v10 = v4;
    v18.origin.x = v6;
    v18.origin.y = v7;
    v18.size.width = v8;
    v18.size.height = v9;
    v11 = CGRectGetHeight(v18) + a3;
    [v10 frame];
    Height = CGRectGetHeight(v19);

    return v11 + Height;
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    v16 = *(a2 + 2);
    v17 = *(a2 + 3);

    return CGRectGetHeight(*&v14);
  }
}

void sub_1D80DBC7C(char a1, id a2)
{
  [a2 bounds];
  CGRectGetHeight(v4);
  if (a1)
  {
    [a2 safeAreaInsets];
  }
}

uint64_t sub_1D80DBCDC(char *a1, uint64_t a2, double a3)
{
  v5 = *&a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageView];
  if (v5 && (v6 = &a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize], (a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_imageSize + 16] & 1) == 0))
  {
    v11 = *v6;
    v10 = v6[1];
    v12 = v5;
    [v12 frame];
    MinX = CGRectGetMinX(v18);
    [a1 safeAreaInsets];
    v15 = 36.0;
    if (v14 > 36.0)
    {
      v15 = v14;
    }

    [v12 setFrame_];
    [v12 frame];
    MaxY = CGRectGetMaxY(v19);

    v8 = MaxY + a3;
  }

  else
  {
    [a1 safeAreaInsets];
    if (v7 > 36.0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 36.0;
    }
  }

  result = swift_beginAccess();
  *(a2 + 24) = v8;
  return result;
}

double sub_1D80DBDFC(char *a1, double a2, double a3)
{
  [a1 safeAreaInsets];
  v7 = v6 + 36.0;
  if (a3 < a2)
  {
    [*&a1[OBJC_IVAR____TtC5TeaUI14EmptyStateView_scrollView] frame];
    v8 = CGRectGetHeight(v10) / 3.0;
    if (v7 <= v8)
    {
      return v8;
    }
  }

  return v7;
}

id EmptyStateView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id EmptyStateView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id (*sub_1D80DC06C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1D80DAC4C;
}

uint64_t EmptyStateView.accessibilityLabel.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC5TeaUI14EmptyStateView_label) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D8190F14();

  return v3;
}

uint64_t (*EmptyStateView.accessibilityLabel.modify(uint64_t *a1))()
{
  *a1 = EmptyStateView.accessibilityLabel.getter();
  a1[1] = v2;
  return sub_1D7F3CB0C;
}

uint64_t MotionView.motionTransform.getter@<X0>(void *a1@<X8>)
{
  v3 = qword_1ECA10E68;
  OUTLINED_FUNCTION_10();
  *a1 = *(v1 + v3);
}

uint64_t MotionView.motionTransform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1ECA10E68;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t MotionView.motionDisabledTransform.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1ECA10E70;
  OUTLINED_FUNCTION_8_4();
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;
  return sub_1D7F387E8(v4, v5);
}

uint64_t sub_1D80DC4EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_1ECA10E70;
  swift_beginAccess();
  v4 = *v3;
  *a2 = *v3;
  v5 = *(v3 + 8);
  *(a2 + 8) = v5;
  return sub_1D7F387E8(v4, v5);
}

id sub_1D80DC54C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_1D7F387E8(v3, v1);
  return MotionView.motionDisabledTransform.setter(&v3);
}

id MotionView.motionDisabledTransform.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v1[qword_1ECA10E70];
  swift_beginAccess();
  v5 = *v4;
  *v4 = v2;
  v6 = v4[8];
  v4[8] = v3;
  sub_1D7F38800(v5, v6);
  return [v1 setNeedsLayout];
}

uint64_t MotionView.motionDisabledTransform.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t MotionView.isMotionEnabled.getter()
{
  v1 = qword_1ECA10E78;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t sub_1D80DC694@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECA10E78;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t MotionView.isMotionEnabled.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t MotionView.isMotionAllowed.getter()
{
  v1 = qword_1ECA10E80;
  OUTLINED_FUNCTION_10();
  return *(v0 + v1);
}

uint64_t sub_1D80DC78C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = qword_1ECA10E80;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1D80DC7F0(char a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  *(v2 + v5) = a1;
  return sub_1D80DC848(a2);
}

uint64_t sub_1D80DC848(uint64_t *a1)
{
  swift_getObjectType();
  v3 = *a1;
  result = OUTLINED_FUNCTION_8_4();
  if ((v1[v3] & 1) == 0)
  {
    v5 = [*&v1[qword_1ECA10E88] layer];
    [v1 bounds];
    OUTLINED_FUNCTION_9_0();
    v6 = &v1[qword_1ECA10E70];
    OUTLINED_FUNCTION_8_4();
    v9 = *v6;
    v10 = v6[8];
    sub_1D7F387E8(*v6, v10);
    OUTLINED_FUNCTION_8_0();
    MotionTransformable.transform(layer:bounds:motionDisabled:)(v7, v8);

    return sub_1D7F38800(v9, v10);
  }

  return result;
}

uint64_t MotionView.isMotionAllowed.modify(uint64_t a1)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_7_1();
  return OUTLINED_FUNCTION_23_1();
}

uint64_t sub_1D80DC998(uint64_t a1, char a2, uint64_t *a3)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1D80DC848(a3);
  }

  return result;
}

id MotionView.init(backingView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1ECA10E68] = 0x8000000000000000;
  v4 = &v1[qword_1ECA10E70];
  *v4 = 0;
  v4[8] = 2;
  v1[qword_1ECA10E78] = 1;
  v1[qword_1ECA10E80] = 1;
  *&v1[qword_1ECA10E88] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v6 addSubview_];

  return v6;
}

void sub_1D80DCAF8()
{
  *(v0 + qword_1ECA10E68) = 0x8000000000000000;
  v1 = v0 + qword_1ECA10E70;
  *v1 = 0;
  *(v1 + 8) = 2;
  *(v0 + qword_1ECA10E78) = 1;
  *(v0 + qword_1ECA10E80) = 1;
  sub_1D81923A4();
  __break(1u);
}

Swift::Void __swiftcall MotionView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[qword_1ECA10E88];
  [v0 bounds];
  [v1 ts_setFrameUsingCenterAndBounds_];
  v2 = qword_1ECA10E78;
  OUTLINED_FUNCTION_8_4();
  if (v0[v2] != 1 || (v3 = qword_1ECA10E80, OUTLINED_FUNCTION_10(), (v0[v3] & 1) == 0))
  {
    v4 = [v1 layer];
    [v0 bounds];
    OUTLINED_FUNCTION_9_0();
    v5 = &v0[qword_1ECA10E70];
    OUTLINED_FUNCTION_8_4();
    v8 = *v5;
    v9 = v5[8];
    sub_1D7F387E8(*v5, v9);
    OUTLINED_FUNCTION_8_0();
    MotionTransformable.transform(layer:bounds:motionDisabled:)(v6, v7);

    sub_1D7F38800(v8, v9);
  }
}

void sub_1D80DCCFC(void *a1)
{
  v1 = a1;
  MotionView.layoutSubviews()();
}

id MotionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id MotionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D80DCE20(uint64_t a1)
{

  sub_1D7F38800(*(a1 + qword_1ECA10E70), *(a1 + qword_1ECA10E70 + 8));
  v2 = *(a1 + qword_1ECA10E88);
}

uint64_t (*sub_1D80DCE90(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.motionTransform.modify();
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80DCEF4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.motionDisabledTransform.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80DCF58(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.isMotionEnabled.modify(v2);
  return sub_1D7F41FE0;
}

uint64_t (*sub_1D80DCFBC(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = MotionView.isMotionAllowed.modify(v2);
  return sub_1D7F413B4;
}

uint64_t MotionView.transform(motionData:)()
{
  swift_getObjectType();
  v1 = qword_1ECA10E78;
  result = OUTLINED_FUNCTION_8_4();
  if (v0[v1] == 1)
  {
    v3 = qword_1ECA10E80;
    result = OUTLINED_FUNCTION_8_4();
    if (v0[v3] == 1)
    {
      v4 = [*&v0[qword_1ECA10E88] layer];
      [v0 bounds];
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_10();

      OUTLINED_FUNCTION_8_0();
      MotionTransformable.transform(motionData:layer:bounds:motionTransform:)();
    }
  }

  return result;
}

uint64_t ModernPageBlueprintPrewarmer.__allocating_init(blueprintProvider:prewarmerProvider:prewarmRange:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = swift_allocObject();
  ModernPageBlueprintPrewarmer.init(blueprintProvider:prewarmerProvider:prewarmRange:options:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ModernPageBlueprintPrewarmer.init(blueprintProvider:prewarmerProvider:prewarmRange:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = *(*v5 + 144);
  sub_1D7F330C0();
  *(v5 + v11) = sub_1D8190D94();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v12 + 32))(v5 + v13, a1);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_48_0();
  (*(v14 + 32))(v5 + v15, a2);
  OUTLINED_FUNCTION_12();
  v17 = (v5 + *(v16 + 128));
  *v17 = a3;
  v17[1] = a4;
  OUTLINED_FUNCTION_12();
  *(v5 + *(v18 + 136)) = v10;
  return v5;
}

uint64_t ModernPageBlueprintPrewarmer.prewarmPages(neighboring:)(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for PageBlueprint();
  WitnessTable = swift_getWitnessTable();
  v56 = sub_1D81927A4();
  OUTLINED_FUNCTION_2();
  v55 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v54 - v9;
  v10 = sub_1D8191E84();
  OUTLINED_FUNCTION_2();
  v57 = v11;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  OUTLINED_FUNCTION_2();
  v60 = v15;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v16);
  v59 = &v54 - v17;
  OUTLINED_FUNCTION_2();
  v61 = v18;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  result = sub_1D80DDA08();
  if ((result & 1) == 0)
  {
    return result;
  }

  (*(v3 + 24))(v4, v3);
  sub_1D818F154();

  sub_1D818EF94();
  PageBlueprint.page(for:)();

  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    v23 = OUTLINED_FUNCTION_3_114();
    v24(v23);
    return (*(v57 + 8))(v14, v10);
  }

  v26 = v59;
  v25 = v60;
  (*(v60 + 32))(v59, v14, AssociatedTypeWitness);
  sub_1D81918C4();
  if ((v65 & 1) == 0)
  {
    v67 = *(v1 + *(*v1 + 128));
    v68 = v64;
    sub_1D80C17D4();
    sub_1D8190EB4();
    v31 = v64;
    v30 = v65;
    result = sub_1D8191834();
    v32 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      if (v32 < 0)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      if (v32 >= v31)
      {
        v33 = v31;
      }

      else
      {
        v33 = result - 1;
      }

      if (v31 < 0)
      {
        v33 = 0;
      }

      if (v32 >= v30)
      {
        v32 = v30 & ~(v30 >> 63);
      }

      v64 = v33;
      v65 = v32;
      sub_1D7EB88FC();
      WitnessTable = v21;
      sub_1D81918A4();
      v34 = *(*v1 + 144);
      swift_beginAccess();
      v35 = *(v2 + v34) + 64;
      OUTLINED_FUNCTION_4_84();
      v38 = v37 & v36;
      v40 = (v39 + 63) >> 6;
      v62 = v41;
      result = swift_bridgeObjectRetain_n();
      for (i = 0; v38; result = sub_1D80DE474(&v64, v49))
      {
        v43 = i;
LABEL_21:
        v44 = __clz(__rbit64(v38));
        v38 &= v38 - 1;
        v45 = v44 | (v43 << 6);
        v46 = (*(v62 + 48) + 16 * v45);
        v47 = *v46;
        v48 = v46[1];
        sub_1D7E0E768(*(v62 + 56) + 40 * v45, v66);
        v64 = v47;
        v65 = v48;
        sub_1D8190DB4();
        sub_1D80DDA84(v47, v48, v66);
        OUTLINED_FUNCTION_0_200();
      }

      while (1)
      {
        v43 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v43 >= v40)
        {
          v50 = v62;

          MEMORY[0x1EEE9AC00](v51);
          *(&v54 - 2) = v50;
          *(&v54 - 1) = v2;
          v52 = v56;
          swift_getWitnessTable();
          v53 = v63;
          sub_1D8191224();

          (*(v60 + 8))(v59, AssociatedTypeWitness);
          (*(v61 + 8))(WitnessTable, v6);
          v29 = *(v55 + 8);
          v27 = v53;
          v28 = v52;
          return v29(v27, v28);
        }

        v38 = *(v35 + 8 * v43);
        ++i;
        if (v38)
        {
          i = v43;
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  (*(v25 + 8))(v26, AssociatedTypeWitness);
  v27 = OUTLINED_FUNCTION_3_114();
  return v29(v27, v28);
}

uint64_t sub_1D80DDA08()
{
  if ((*(v0 + *(*v0 + 136)) & 1) == 0)
  {
    return 1;
  }

  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  return v3 ^ 1;
}

uint64_t sub_1D80DDA84(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PageBlueprint();
  swift_getWitnessTable();
  sub_1D81927A4();
  swift_getWitnessTable();
  result = sub_1D8191234();
  if ((result & 1) == 0)
  {
    v5 = a3[3];
    v6 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v5);
    (*(v6 + 16))(v5, v6);
    swift_beginAccess();
    sub_1D8190DB4();
    sub_1D7EE6484();
    return swift_endAccess();
  }

  return result;
}

void sub_1D80DDC6C()
{
  if (!qword_1ECA10F10[0])
  {
    sub_1D7F330C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ECA10F10);
    }
  }
}

uint64_t sub_1D80DDCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  if (sub_1D818EF94() == a2 && v5 == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D8192634();
  }

  return v7 & 1;
}

uint64_t sub_1D80DDDBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_1D818EF94();
  sub_1D7EE2804(&v13, v6, v7, a2);

  v8 = v14;
  result = sub_1D80DE474(&v13, sub_1D7F33178);
  if (!v8)
  {
    (*(*(v5 + 104) + 24))(v12, a1, *(v5 + 88));
    if (v12[3])
    {
      sub_1D7E32DEC(v12, &v13);
      sub_1D818EF94();
      sub_1D7E0E768(&v13, v12);
      swift_beginAccess();
      sub_1D7EE6484();
      swift_endAccess();
      v10 = v14;
      v11 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, v14);
      (*(v11 + 8))(v10, v11);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v13);
    }

    else
    {
      return sub_1D80DE474(v12, sub_1D7F33178);
    }
  }

  return result;
}

uint64_t ModernPageBlueprintPrewarmer.deinit()
{
  v1 = *(*v0 + 144);
  swift_beginAccess();
  v25 = v1;
  v26 = v0;
  v2 = *(v0 + v1) + 64;
  OUTLINED_FUNCTION_4_84();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  v27 = v8;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v5; result = sub_1D80DE474(v28, v20))
  {
    v11 = i;
LABEL_7:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v11 << 6);
    v14 = (*(v27 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D7E0E768(*(v27 + 56) + 40 * v13, v29);
    v28[0] = v16;
    v28[1] = v15;
    v18 = v30;
    v17 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    v19 = *(v17 + 16);
    sub_1D8190DB4();
    v19(v18, v17);
    OUTLINED_FUNCTION_0_200();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      sub_1D7F330C0();
      *(v26 + v25) = sub_1D8190D94();

      OUTLINED_FUNCTION_48_0();
      (*(v21 + 8))(v26 + v22);
      OUTLINED_FUNCTION_48_0();
      (*(v23 + 8))(v26 + v24);

      return v26;
    }

    v5 = *(v2 + 8 * v11);
    ++i;
    if (v5)
    {
      i = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t ModernPageBlueprintPrewarmer.__deallocating_deinit()
{
  ModernPageBlueprintPrewarmer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D80DE338()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D80DE474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D80DE4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {
    v10 = sub_1D818E974();
    if (v10 != sub_1D818E974() || ((v11 = sub_1D818E964(), v11 >= v6) ? (v12 = v5 < v11) : (v12 = 1), !v12))
    {
      v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
LABEL_15:
      v13 = [v9 initWithDropOperation_];
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  if (!(v6 | v5))
  {
    v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDropOperation:3 intent:0];
    goto LABEL_17;
  }

  if (!(v6 ^ 1 | v5))
  {
LABEL_12:
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    goto LABEL_13;
  }

  v7 = sub_1D818E974();
  v8 = sub_1D818E974();
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (v7 != v8)
  {
    goto LABEL_15;
  }

LABEL_13:
  v13 = [v9 initWithDropOperation:3 intent:1];
LABEL_17:
  v14 = v13;
  v15 = sub_1D818E994();
  v16 = *(*(v15 - 8) + 8);
  v16(a3, v15);
  v16(a2, v15);
  return v14;
}

BOOL static DropProposal.== infix(_:_:)(uint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (*(a1 + 16) == 1)
  {
    if (v3 | v2)
    {
      if (v3 ^ 1 | v2)
      {
        return *(a2 + 16) && __PAIR128__(v4, v5) >= 2;
      }

      if (!*(a2 + 16))
      {
        return 0;
      }

      v5 ^= 1uLL;
    }

    else if (!*(a2 + 16))
    {
      return 0;
    }

    return !(v5 | v4);
  }

  if (a2[2])
  {
    return 0;
  }

  return v3 == v5 && v2 == v4;
}

uint64_t getEnumTagSinglePayload for DropProposal(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DropProposal(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1D80DE748(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D80DE764(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t static PillViewSystemImage.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1D8192634(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {
        sub_1D7E9F44C();
        v7 = v3;
        v8 = v2;
        v9 = sub_1D8191CC4();

        if (v9)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t PillViewSystemImage.name.getter()
{
  v1 = *v0;
  sub_1D8190DB4();
  return v1;
}

void *PillViewSystemImage.color.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

TeaUI::PillViewSystemImage __swiftcall PillViewSystemImage.init(name:color:)(TeaUI::PillViewSystemImage name, UIColor_optional color)
{
  *v2 = name.name;
  v2[1]._countAndFlagsBits = color.value.super.isa;
  name.color = color;
  return name;
}

TeaUI::PillViewColorPalette __swiftcall PillViewColorPalette.init(iconColor:titleColor:backgroundColor:selectedColor:)(UIColor iconColor, UIColor titleColor, UIColor backgroundColor, UIColor selectedColor)
{
  v4->super.isa = iconColor.super.isa;
  v4[1].super.isa = titleColor.super.isa;
  v4[2].super.isa = backgroundColor.super.isa;
  v4[3].super.isa = selectedColor.super.isa;
  result.selectedColor = selectedColor;
  result.backgroundColor = backgroundColor;
  result.titleColor = titleColor;
  result.iconColor = iconColor;
  return result;
}

id sub_1D80DE904()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 labelColor];
  v3 = [v0 secondarySystemBackgroundColor];
  result = [v0 systemPinkColor];
  qword_1ECA10F98 = v1;
  unk_1ECA10FA0 = v2;
  qword_1ECA10FA8 = v3;
  unk_1ECA10FB0 = result;
  return result;
}

id static PillViewColorPalette.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_1ECA0C3B8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ECA10F98;
  v3 = unk_1ECA10FA0;
  v5 = qword_1ECA10FA8;
  v4 = unk_1ECA10FB0;
  v10 = unk_1ECA10FB0;
  *a1 = qword_1ECA10F98;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
  v6 = v2;
  v7 = v3;
  v8 = v5;

  return v10;
}

uint64_t PageViewControllerDelegateType.pageBlueprint(_:mapPage:from:)@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1D80DEBF4()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1D80DEC50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D80DEDC8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            if (a2 >= v9)
            {
              if (v11 <= 3)
              {
                v22 = ~(-1 << (8 * v11));
              }

              else
              {
                v22 = -1;
              }

              if (v11)
              {
                v23 = v22 & (a2 - v9);
                if (v11 <= 3)
                {
                  v24 = v11;
                }

                else
                {
                  v24 = 4;
                }

                bzero(a1, v11);
                switch(v24)
                {
                  case 2:
                    *a1 = v23;
                    break;
                  case 3:
                    *a1 = v23;
                    a1[2] = BYTE2(v23);
                    break;
                  case 4:
                    *a1 = v23;
                    break;
                  default:
                    *a1 = v23;
                    break;
                }
              }
            }

            else
            {
              v21 = a2 + 1;

              __swift_storeEnumTagSinglePayload(a1, v21, v9, v7);
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

uint64_t MultiCollectionViewDelegate.removeDelegate<A>(_:)(uint64_t a1)
{
  [*(v1 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) removeObject_];
  v2 = OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_respondsToSelectorCache;
  OUTLINED_FUNCTION_12_15();
  *(v1 + v2) = MEMORY[0x1E69E7CC8];
}

id MultiCollectionViewDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MultiCollectionViewDelegate.replaceDelegate<A>(_:withDelegate:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates);
  [v4 removeObject_];
  [v4 addObject_];
  v5 = OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_respondsToSelectorCache;
  OUTLINED_FUNCTION_12_15();
  *(v2 + v5) = MEMORY[0x1E69E7CC8];
}

id sub_1D80DF1A0(int a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_1D818E584();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [*(a3 + OBJC_IVAR____TtC5TeaUI27MultiCollectionViewDelegate_delegates) allObjects];
  if (result)
  {
    v14 = result;
    sub_1D8191C94();

    while (1)
    {
      sub_1D818E574();
      if (!v20)
      {
        break;
      }

      sub_1D7E1C664(&v19, &v17);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v15 = sub_1D8192614();
      __swift_destroy_boxed_opaque_existential_1Tm(&v17);
      if ([v15 respondsToSelector_])
      {
        v16 = [v15 scrollViewShouldScrollToTop_];
        swift_unknownObjectRelease();
        if (((v16 ^ a1) & 1) == 0)
        {
          a2 = v16;
          break;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    (*(v9 + 8))(v12, v8);

    return (a2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}