uint64_t sub_214890680()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_214897F28();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_2148906C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21498E5D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21489076C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_21498E5D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214890810()
{
  v1 = type metadata accessor for MASettingsRemoteView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);
  if (v7 >> 60 != 15)
  {
    sub_21489B4F8(*v6, v7);
  }

  v8 = *(v6 + 16);

  __swift_destroy_boxed_opaque_existential_1((v6 + 24));

  v9 = *(v1 + 32);
  v10 = sub_21498E5D0();
  (*(*(v10 - 8) + 8))(v6 + v9, v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214890964()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2148909B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2148909EC@<X0>(void *a1@<X8>)
{
  sub_2148AA930();
  result = sub_21498EDD0();
  *a1 = v3;
  return result;
}

uint64_t sub_214890A88()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214890AC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214890B24(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v16 = sub_21498E5D0();
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[10];

  return v17(v18, a2, v16);
}

uint64_t sub_214890D44(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A808, &unk_21499B730);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A810, qword_214993110);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v16 = sub_21498E5D0();
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[10];

  return v17(v18, a2, a2, v16);
}

uint64_t sub_214890F64()
{
  v1 = type metadata accessor for CustomRemoteContent();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v25 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = *(v0 + v3 + 8);

  v6 = v1[5];
  v7 = sub_21498E900();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v3 + v6, v7);
  v10 = v1[6];
  if (!(*(v8 + 48))(v0 + v3 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  v11 = v1[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A838, &qword_21499B640);
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v4 + v11, 1, v12))
  {
    (*(v13 + 8))(v4 + v11, v12);
  }

  v14 = v1[8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v4 + v14, 1, v15))
  {
    (*(v16 + 8))(v4 + v14, v15);
  }

  v17 = *(v4 + v1[9] + 8);

  v18 = v1[10];
  v19 = sub_21498E5D0();
  (*(*(v19 - 8) + 8))(v4 + v18, v19);
  v20 = (v4 + v1[11]);
  sub_2148B45A0(*v20, v20[1]);
  v21 = v20[2];

  v22 = *(v4 + v1[12]);

  v23 = *(v4 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v25, v2 | 7);
}

uint64_t sub_214891258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214891318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21498E350();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2148913D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_214891490(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21498E350();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_214891564()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214891A08(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[11];

  return v18(v19, a2, v17);
}

uint64_t sub_214891C88(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB0, &qword_214993E38);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABB8, &qword_214993E40);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC0, &qword_214993E48);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABC8, qword_214993E50);
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_214891F0C()
{
  v1 = sub_21498E6A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214891F94()
{
  v1 = v0;
  v2 = sub_21498E900();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = type metadata accessor for OBKLiftUIView(0);
  v56 = *(*(v7 - 1) + 64);
  v54 = *(*(v7 - 1) + 80);
  v8 = *(v3 + 8);
  v8(v1 + v5, v2);
  v55 = (v5 + v6 + v54) & ~v54;
  v9 = v1 + v55;
  v10 = *(v1 + v55 + 8);

  v57 = v8;
  v8(v1 + v55 + v7[5], v2);
  v11 = v7[6];
  if (!(*(v3 + 48))(v1 + v55 + v11, 1, v2))
  {
    v8(v9 + v11, v2);
  }

  v12 = v7[7];
  v13 = type metadata accessor for HeaderImage(0);
  if (!(*(*(v13 - 8) + 48))(v9 + v12, 1, v13))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v15 = sub_21498E6A0();
      (*(*(v15 - 8) + 8))(v9 + v12, v15);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      v57(v9 + v12, v2);
    }
  }

  v16 = (v9 + v7[8]);
  v17 = type metadata accessor for OBKLiftUIContent(0);
  if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
  {
    v40 = swift_getEnumCaseMultiPayload();
    switch(v40)
    {
      case 2:
        v43 = sub_21498E6A0();
        (*(*(v43 - 8) + 8))(v16, v43);
        v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        v46 = *(v45 - 8);
        if (!(*(v46 + 48))(&v16[v44], 1, v45))
        {
          (*(v46 + 8))(&v16[v44], v45);
        }

        break;
      case 1:
        v42 = sub_21498E6A0();
        (*(*(v42 - 8) + 8))(v16, v42);
        break;
      case 0:
        v41 = *v16;

        break;
    }
  }

  v18 = v9 + v7[10];
  v19 = type metadata accessor for OBKLiftUICaption(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = swift_getEnumCaseMultiPayload();
    if (v20 >= 2)
    {
      if (v20 != 2)
      {
        goto LABEL_14;
      }

      v57(v18, v2);
      v18 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070) + 64);
    }

    v57(v18, v2);
  }

LABEL_14:
  v53 = v2;
  v21 = v9 + v7[11];
  v22 = type metadata accessor for OBKLiftUIButton(0);
  v23 = *(*(v22 - 1) + 48);
  if (!v23(v21, 1, v22))
  {
    v49 = v7;
    v50 = v1;
    v51 = v4;
    v57(v21, v53);
    v24 = v22[5];
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v21 + v24, 1, v25))
    {
      (*(v26 + 8))(v21 + v24, v25);
    }

    v48 = v26;
    v28 = v22[6];
    if (!v27(v21 + v28, 1, v25))
    {
      (*(v48 + 8))(v21 + v28, v25);
    }

    v29 = *(v21 + v22[7]);

    v1 = v50;
    v4 = v51;
    v7 = v49;
  }

  v30 = v9 + v7[12];
  if (!v23(v30, 1, v22))
  {
    v52 = v4;
    v31 = v1;
    v57(v30, v53);
    v32 = v22[5];
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
    v34 = *(v33 - 8);
    v35 = *(v34 + 48);
    if (!v35(v30 + v32, 1, v33))
    {
      (*(v34 + 8))(v30 + v32, v33);
    }

    v36 = v22[6];
    if (!v35(v30 + v36, 1, v33))
    {
      (*(v34 + 8))(v30 + v36, v33);
    }

    v37 = *(v30 + v22[7]);

    v1 = v31;
    v4 = v52;
  }

  v38 = *(v9 + v7[13]);

  v39 = *(v9 + v7[14]);

  return MEMORY[0x2821FE8E8](v1, v55 + v56, v4 | v54 | 7);
}

uint64_t sub_2148926B8()
{
  v1 = type metadata accessor for OBKLiftUIButton(0);
  v49 = *(v1 - 1);
  v52 = *(v49 + 80);
  v2 = (v52 + 16) & ~v52;
  v3 = *(v49 + 64);
  v4 = type metadata accessor for OBKLiftUIView(0);
  v5 = *(*(v4 - 1) + 80);
  v6 = v2 + v3 + v5;
  v51 = *(*(v4 - 1) + 64);
  v56 = v0;
  v7 = v0 + v2;
  v8 = sub_21498E900();
  v9 = *(v8 - 8);
  v55 = v8;
  v54 = *(v9 + 8);
  v54(v0 + v2);
  v10 = v1[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v53 = *(v11 - 8);
  v12 = *(v53 + 48);
  if (!v12(v7 + v10, 1, v11))
  {
    (*(v53 + 8))(v7 + v10, v11);
  }

  v50 = v5;
  v13 = v6 & ~v5;
  v14 = v1[6];
  v48 = v12;
  if (!v12(v7 + v14, 1, v11))
  {
    (*(v53 + 8))(v7 + v14, v11);
  }

  v15 = *(v7 + v1[7]);

  v16 = v56;
  v17 = v56 + v13;
  v18 = *(v56 + v13 + 8);

  v19 = v55;
  v20 = v54;
  (v54)(v56 + v13 + v4[5], v55);
  v21 = v4[6];
  if (!(*(v9 + 48))(v56 + v13 + v21, 1, v55))
  {
    (v54)(v17 + v21, v55);
  }

  v22 = v4[7];
  v23 = type metadata accessor for HeaderImage(0);
  if (!(*(*(v23 - 8) + 48))(v17 + v22, 1, v23))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v25 = sub_21498E6A0();
      (*(*(v25 - 8) + 8))(v17 + v22, v25);
    }

    else if (EnumCaseMultiPayload <= 1)
    {
      (v54)(v17 + v22, v55);
    }
  }

  v26 = (v17 + v4[8]);
  v27 = type metadata accessor for OBKLiftUIContent(0);
  if (!(*(*(v27 - 8) + 48))(v26, 1, v27))
  {
    v42 = swift_getEnumCaseMultiPayload();
    switch(v42)
    {
      case 2:
        v45 = sub_21498E6A0();
        (*(*(v45 - 8) + 8))(v26, v45);
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        if (!v48(&v26[v46], 1, v11))
        {
          (*(v53 + 8))(&v26[v46], v11);
        }

        break;
      case 1:
        v44 = sub_21498E6A0();
        (*(*(v44 - 8) + 8))(v26, v44);
        break;
      case 0:
        v43 = *v26;

        break;
    }
  }

  v28 = v17 + v4[10];
  v29 = type metadata accessor for OBKLiftUICaption(0);
  if (!(*(*(v29 - 8) + 48))(v28, 1, v29))
  {
    v30 = swift_getEnumCaseMultiPayload();
    if (v30 >= 2)
    {
      if (v30 != 2)
      {
        goto LABEL_18;
      }

      (v54)(v28, v55);
      v28 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070) + 64);
    }

    (v54)(v28, v55);
  }

LABEL_18:
  v31 = v17 + v4[11];
  v32 = *(v49 + 48);
  if (!v32(v31, 1, v1))
  {
    (v54)(v31, v55);
    v33 = v1[5];
    if (!v48((v31 + v33), 1, v11))
    {
      (*(v53 + 8))(v31 + v33, v11);
    }

    v34 = v1[6];
    if (!v48((v31 + v34), 1, v11))
    {
      (*(v53 + 8))(v31 + v34, v11);
    }

    v35 = *(v31 + v1[7]);

    v16 = v56;
    v19 = v55;
    v20 = v54;
  }

  v36 = v17 + v4[12];
  if (!v32(v36, 1, v1))
  {
    v20(v36, v19);
    v37 = v1[5];
    if (!v48((v36 + v37), 1, v11))
    {
      (*(v53 + 8))(v36 + v37, v11);
    }

    v38 = v1[6];
    if (!v48((v36 + v38), 1, v11))
    {
      (*(v53 + 8))(v36 + v38, v11);
    }

    v39 = *(v36 + v1[7]);

    v16 = v56;
  }

  v40 = *(v17 + v4[13]);

  v41 = *(v17 + v4[14]);

  return MEMORY[0x2821FE8E8](v16, v13 + v51, v52 | v50 | 7);
}

double sub_214892EA4@<D0>(uint64_t a1@<X8>)
{
  result = 1.75067341e97;
  *a1 = xmmword_214994620;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_214892EC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214892F04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_214892FD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498ED90();
  *a1 = result & 1;
  return result;
}

uint64_t sub_214893064@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21498ED40();
  *a1 = result;
  return result;
}

uint64_t sub_214893090(uint64_t *a1)
{
  v1 = *a1;

  return sub_21498ED50();
}

uint64_t sub_2148930F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_214897F28();
  v4 = *(v0 + 48);

  if (*(v0 + 64))
  {

    v5 = *(v0 + 80);
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  if (*(v0 + 144))
  {

    v9 = *(v0 + 160);

    v10 = *(v0 + 176);

    v11 = *(v0 + 192);
  }

  v12 = *(v0 + 208);

  if (*(v0 + 224))
  {

    v13 = *(v0 + 240);

    v14 = *(v0 + 256);

    v15 = *(v0 + 272);
  }

  if (*(v0 + 288))
  {

    v16 = *(v0 + 304);

    v17 = *(v0 + 320);

    v18 = *(v0 + 336);
  }

  if (*(v0 + 352))
  {

    v19 = *(v0 + 368);

    v20 = *(v0 + 384);

    v21 = *(v0 + 400);
  }

  v22 = *(v0 + 408);

  return MEMORY[0x2821FE8E8](v0, 417, 7);
}

uint64_t sub_214893204()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_214897F28();
  v5 = *(v0 + 64);

  if (*(v0 + 80))
  {

    v6 = *(v0 + 96);
  }

  v7 = *(v0 + 112);

  v8 = *(v0 + 128);

  v9 = *(v0 + 144);

  if (*(v0 + 160))
  {

    v10 = *(v0 + 176);

    v11 = *(v0 + 192);

    v12 = *(v0 + 208);
  }

  v13 = *(v0 + 224);

  if (*(v0 + 240))
  {

    v14 = *(v0 + 256);

    v15 = *(v0 + 272);

    v16 = *(v0 + 288);
  }

  if (*(v0 + 304))
  {

    v17 = *(v0 + 320);

    v18 = *(v0 + 336);

    v19 = *(v0 + 352);
  }

  if (*(v0 + 368))
  {

    v20 = *(v0 + 384);

    v21 = *(v0 + 400);

    v22 = *(v0 + 416);
  }

  v23 = *(v0 + 424);

  return MEMORY[0x2821FE8E8](v0, 433, 7);
}

uint64_t sub_21489332C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_214897F28();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  v10 = *(v0 + 144);

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2148933B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_214897F28();
  v4 = *(v0 + 48);

  v5 = *(v0 + 64);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 112);

  v9 = *(v0 + 128);

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_214893424()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21489345C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214893550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21489360C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA8, &unk_214993E28);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214893778(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_21498E6A0();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_2148938FC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA1B618, qword_214995EF8);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_21498E6A0();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_214893A84()
{
  v1 = type metadata accessor for BusinessLogoView();
  v22 = *(*(v1 - 1) + 80);
  v2 = (v22 + 32) & ~v22;
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v2 + v7, v8);
  v11 = v1[6];
  if (!(*(v9 + 48))(v0 + v2 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[7]);

  v14 = *(v5 + v1[8]);

  v15 = v1[9];
  v16 = sub_21498E6A0();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = *(v5 + v1[10]);

  v18 = v5 + v1[15];
  v19 = *(v18 + 8);

  v20 = *(v0 + v12 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 16, v22 | 7);
}

uint64_t sub_214893CB4()
{
  v1 = type metadata accessor for BusinessLogoView();
  v24 = *(*(v1 - 1) + 80);
  v2 = (v24 + 32) & ~v24;
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v2 + v7, v8);
  v11 = v1[6];
  if (!(*(v9 + 48))(v0 + v2 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v5 + v1[7]);

  v15 = *(v5 + v1[8]);

  v16 = v1[9];
  v17 = sub_21498E6A0();
  (*(*(v17 - 8) + 8))(v5 + v16, v17);
  v18 = *(v5 + v1[10]);

  v19 = v5 + v1[15];
  v20 = *(v19 + 8);

  v21 = *(v0 + v12 + 8);

  v22 = *(v0 + v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v13 + 16, v24 | 7);
}

uint64_t sub_214893EF8()
{
  v1 = type metadata accessor for BusinessLogoView();
  v22 = *(*(v1 - 1) + 80);
  v2 = (v22 + 16) & ~v22;
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = v1[5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v0 + v2 + v6, v7);
  v10 = v1[6];
  if (!(*(v8 + 48))(v0 + v2 + v10, 1, v7))
  {
    v9(v4 + v10, v7);
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v4 + v1[7]);

  v14 = *(v4 + v1[8]);

  v15 = v1[9];
  v16 = sub_21498E6A0();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);
  v17 = *(v4 + v1[10]);

  v18 = v4 + v1[15];
  v19 = *(v18 + 8);

  v20 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v12 + 8, v22 | 7);
}

uint64_t sub_214894130()
{
  v1 = type metadata accessor for BusinessLogoView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v21 = v0;
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v11 = v1[6];
  if (!(*(v9 + 48))(v0 + v3 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v5 + v1[7]);

  v14 = *(v5 + v1[8]);

  v15 = v1[9];
  v16 = sub_21498E6A0();
  (*(*(v16 - 8) + 8))(v5 + v15, v16);
  v17 = *(v5 + v1[10]);

  v18 = v5 + v1[15];
  v19 = *(v18 + 8);

  return MEMORY[0x2821FE8E8](v21, v12 + 8, v2 | 7);
}

uint64_t sub_214894354()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21489438C()
{
  v1 = type metadata accessor for BusinessLogoView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v20 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 24);

  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B610, &qword_214995EF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v0 + v3 + v7, v8);
  v11 = v1[6];
  if (!(*(v9 + 48))(v0 + v3 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = *(v5 + v1[7]);

  v13 = *(v5 + v1[8]);

  v14 = v1[9];
  v15 = sub_21498E6A0();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = *(v5 + v1[10]);

  v17 = v5 + v1[15];
  v18 = *(v17 + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v20, v2 | 7);
}

uint64_t sub_2148945AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214894668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19iCloudMailAssistant9MATipIconVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214894748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_21498E320();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2148947F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_21498E320();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214894898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214894954(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_214894A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21498E900();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_214894B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_21498E900();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_214894CA8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD0, &qword_2149940E0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_214894E2C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_21498E900();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ADD0, &qword_2149940E0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_214894FB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214894FF8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214895070(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_21489512C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2148951E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MALiftUISource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_214895314(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MALiftUISource(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_214895454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C020, &qword_214999818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2148954BC()
{
  v1 = type metadata accessor for MARemoteView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v0 + v3 + v1[5];
  type metadata accessor for MALiftUISource(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      sub_21489B4F8(*v7, *(v7 + 8));
      break;
    case 1:
      v13 = *(v7 + 8);

      break;
    case 0:
      v9 = sub_21498E1B0();
      (*(*(v9 - 8) + 8))(v7, v9);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);
      v11 = *(v7 + *(v10 + 48) + 8);

      v12 = *(v7 + *(v10 + 64) + 8);

      break;
  }

  v14 = (v5 + v1[6]);
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  sub_214897F28();
  v18 = (v5 + v1[7]);
  if (*v18)
  {
    v19 = v18[1];
  }

  v20 = *(v5 + v1[8]);

  v21 = v1[11];
  v22 = sub_21498E5D0();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(v5 + v21, 1, v22))
  {
    (*(v23 + 8))(v5 + v21, v22);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214895734(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_214895744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_214895800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_214895950(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0xE500000000000000;
  v5 = 0x6C6562616CLL;
  if (*v1 != 2)
  {
    v5 = 0x74616E6974736564;
    v4 = 0xEB000000006E6F69;
  }

  if (*v1)
  {
    v3 = 0x6576697463417369;
    v2 = 0xE800000000000000;
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

uint64_t sub_2148959C8()
{
  v1 = 25705;
  v2 = 0x6C6562616CLL;
  if (*v0 != 2)
  {
    v2 = 0x74616E6974736564;
  }

  if (*v0)
  {
    v1 = 0x6576697463417369;
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

uint64_t sub_214895A50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C218, &unk_21499A220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214895AB8()
{
  v1 = (type metadata accessor for MANavigationLinkView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3 + 8);

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  v9 = sub_21498E6A0();
  v10 = *(*(v9 - 8) + 8);
  v10(v0 + v3 + v8, v9);
  v10(v0 + v3 + v1[9], v9);
  v11 = *(v0 + v3 + v1[10]);

  v12 = *(v0 + v3 + v1[11]);

  v13 = *(v0 + v3 + v1[12]);

  v14 = *(v0 + v3 + v1[13]);

  v15 = *(v0 + v3 + v1[14] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_214895CA8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214895CE0()
{
  v1 = sub_21498DEE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_214895DB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C338, &qword_21499A670);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214895E54()
{
  MEMORY[0x216059B90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214895F60()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214895FB0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2148960A8()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_214896104()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21489613C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C640, &qword_21499B520);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2148961F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896230()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2148962A8()
{
  v1 = sub_21498E1B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v5);

  v11 = *(v0 + v6);

  v12 = *(v0 + v7 + 8);

  v13 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v3 | 7);
}

uint64_t sub_2148963E8()
{
  v1 = sub_21498E6C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2148964B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA08, qword_21499CE20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_214896588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1CA08, qword_21499CE20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_214896650@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21498ED60();
  *a1 = result;
  return result;
}

uint64_t sub_2148966F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896738()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  if (v0[8])
  {

    v4 = v0[10];
  }

  v5 = v0[12];

  v6 = v0[14];

  v7 = v0[16];

  if (v0[18])
  {

    v8 = v0[20];

    v9 = v0[22];

    v10 = v0[24];
  }

  v11 = v0[26];

  if (v0[28])
  {

    v12 = v0[30];

    v13 = v0[32];

    v14 = v0[34];
  }

  if (v0[36])
  {

    v15 = v0[38];

    v16 = v0[40];

    v17 = v0[42];
  }

  if (v0[44])
  {

    v18 = v0[46];

    v19 = v0[48];

    v20 = v0[50];
  }

  v21 = v0[51];

  v22 = v0[54];

  v23 = v0[56];

  v24 = v0[58];

  v25 = v0[60];

  return MEMORY[0x2821FE8E8](v0, 488, 7);
}

uint64_t sub_21489686C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_2148968B8(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 224);
  v4 = *a1;
  return v3(v2);
}

uint64_t sub_214896910()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896960()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  if (v0[13])
  {
    v7 = v0[14];
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2148969FC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_214896A64()
{
  *v0;
  sub_21498F900();
}

void sub_214896ACC(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x736E6F69746361;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_214896B00()
{
  if (*v0)
  {
    result = 0x736E6F69746361;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_214896B58()
{
  v1 = sub_21498E7C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 4);

  v8 = *(v0 + 5);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214896C30()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896C74(int8x16_t *a1)
{
  v2 = vextq_s8(*a1, *a1, 8uLL);
  v3 = vextq_s8(a1[1], a1[1], 8uLL);
  sub_21498EC80();
  return swift_getWitnessTable();
}

uint64_t sub_214896CC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214896D40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_214896DBC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214896DF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_214896E30()
{
  v1 = sub_21498EB00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_214896F04()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_214896F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214896FBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2148970B8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_214897104()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

id _MALogSystem()
{
  if (_MALogSystem_onceToken[0] != -1)
  {
    _MALogSystem_cold_1();
  }

  v1 = _MALogSystem_log;

  return v1;
}

uint64_t sub_21489726C()
{
  type metadata accessor for iCloudMailAssistantProviderSwift();
  sub_214897CD8(&qword_27CA1A0C0, type metadata accessor for iCloudMailAssistantProviderSwift);

  return sub_21498EB80();
}

__n128 sub_214897300@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  *(v6 + 32) = v5;
  sub_214897F3C();
  v7 = sub_21498EFF0();
  sub_21498F4E0();
  sub_21498EC00();
  *&v9[38] = v12;
  *&v9[22] = v11;
  *&v9[6] = v10;
  *(a1 + 18) = *v9;
  *a1 = sub_214897F30;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 17) = v7;
  *(a1 + 34) = *&v9[16];
  result = *&v9[32];
  *(a1 + 50) = *&v9[32];
  *(a1 + 64) = *(&v12 + 1);
  return result;
}

id sub_2148973F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  type metadata accessor for iCloudMailAssistantProviderSwift();
  sub_214897CD8(&qword_27CA1A0C0, type metadata accessor for iCloudMailAssistantProviderSwift);
  v5 = *(*sub_21498EB80() + 224);
  v6 = v4;
  v5(v4);

  return v6;
}

uint64_t sub_214897524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2148981A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_214897588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2148981A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2148975EC()
{
  sub_2148981A4();
  sub_21498EF90();
  __break(1u);
}

uint64_t sub_21489761C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x216058BC0](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_214897670(uint64_t a1, uint64_t a2)
{
  v3 = sub_21498FB40();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_2148976C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21498FB50();
  *a1 = result;
  return result;
}

BOOL sub_214897718(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_214897778(uint64_t a1, id *a2)
{
  result = sub_21498F850();
  *a2 = 0;
  return result;
}

uint64_t sub_2148977F0(uint64_t a1, id *a2)
{
  v3 = sub_21498F860();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_214897870@<X0>(uint64_t *a1@<X8>)
{
  sub_21498F870();
  v2 = sub_21498F840();

  *a1 = v2;
  return result;
}

uint64_t sub_2148978B4()
{
  v1 = *v0;
  v2 = sub_21498F870();
  v3 = MEMORY[0x2160589F0](v2);

  return v3;
}

uint64_t sub_2148978F0()
{
  v1 = *v0;
  sub_21498F870();
  sub_21498F900();
}

uint64_t sub_214897944()
{
  v1 = *v0;
  sub_21498F870();
  sub_214990160();
  sub_21498F900();
  v2 = sub_214990190();

  return v2;
}

void *sub_2148979B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2148979D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21498F870();
  v6 = v5;
  if (v4 == sub_21498F870() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_214897A5C()
{
  v2 = *v0;
  sub_214897CD8(&qword_27CA1A0B0, type metadata accessor for UIBackgroundTaskIdentifier);
  sub_214897CD8(&qword_27CA1A0B8, type metadata accessor for UIBackgroundTaskIdentifier);
  return sub_21498FEE0();
}

uint64_t sub_214897B18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498F840();

  *a2 = v5;
  return result;
}

uint64_t sub_214897B60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21498F870();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_214897B8C()
{
  sub_214897CD8(&qword_27CA1A020, type metadata accessor for OpenExternalURLOptionsKey);
  sub_214897CD8(&qword_27CA1A028, type metadata accessor for OpenExternalURLOptionsKey);

  return sub_21498FEE0();
}

uint64_t sub_214897CD8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_214897D7C(uint64_t a1, unint64_t *a2)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_214897F30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21489726C();
}

uint64_t sub_214897F44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_214897F8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_214897FE0()
{
  result = qword_27CA1A0C8;
  if (!qword_27CA1A0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A0D0, &qword_2149912B0);
    sub_2148980B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0C8);
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

unint64_t sub_2148980B4()
{
  result = qword_27CA1A0D8;
  if (!qword_27CA1A0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A0E0, &qword_2149912B8);
    sub_214898140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0D8);
  }

  return result;
}

unint64_t sub_214898140()
{
  result = qword_27CA1A0E8;
  if (!qword_27CA1A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0E8);
  }

  return result;
}

unint64_t sub_2148981A4()
{
  result = qword_27CA1A0F0;
  if (!qword_27CA1A0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A0F0);
  }

  return result;
}

uint64_t sub_21489820C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6F69746361;
  if (v2 != 1)
  {
    v4 = 7955819;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x636E657571657266;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000079;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736E6F69746361;
  if (*a2 != 1)
  {
    v8 = 7955819;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x636E657571657266;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_214990080();
  }

  return v11 & 1;
}

uint64_t sub_214898300()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148983A0()
{
  *v0;
  *v0;
  sub_21498F900();
}

uint64_t sub_21489842C()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148984C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_214899484();
  *a2 = result;
  return result;
}

void sub_2148984F8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0xE700000000000000;
  v5 = 0x736E6F69746361;
  if (v2 != 1)
  {
    v5 = 7955819;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x636E657571657266;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214898554()
{
  v1 = 0x736E6F69746361;
  if (*v0 != 1)
  {
    v1 = 7955819;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_2148985AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214899484();
  *a1 = result;
  return result;
}

uint64_t sub_2148985E0(uint64_t a1)
{
  v2 = sub_21489960C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21489861C(uint64_t a1)
{
  v2 = sub_21489960C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214898658(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_21489867C, 0, 0);
}

uint64_t sub_21489867C()
{
  v1 = v0[7];
  v2 = v0[9] + OBJC_IVAR____TtC19iCloudMailAssistant19IntervalGuardAction_key;
  v3 = sub_21498E8F0();
  v5 = sub_2148EDBD4(v3, v4);

  if ((v5 & 1) != 0 && (v10 = *(v0[9] + 16), v0[10] = v10, v11 = *(v10 + 16), (v0[11] = v11) != 0))
  {
    v0[12] = 0;
    if (*(v10 + 16))
    {
      sub_2148994D0(v10 + 32, (v0 + 2));
      v12 = v0[5];
      v13 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      v14 = *(MEMORY[0x277D231D0] + 4);
      v15 = swift_task_alloc();
      v0[13] = v15;
      *v15 = v0;
      v15[1] = sub_2148987EC;
      v7 = v0[8];
      v6 = v0[7];
      v8 = v12;
      v9 = v13;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2821820A8](v6, v7, v8, v9);
  }

  else
  {
    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_2148987EC()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(v2 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 16));
  if (v0)
  {
    v4 = sub_214898A38;
  }

  else
  {
    v4 = sub_214898908;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_214898908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[12] + 1;
  if (v5 == v4[11])
  {
    v6 = v4[1];

    return v6();
  }

  else
  {
    v4[12] = v5;
    v8 = v4[10];
    if (v5 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_2148994D0(v8 + 40 * v5 + 32, (v4 + 2));
      v9 = v4[5];
      v10 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
      v11 = *(MEMORY[0x277D231D0] + 4);
      v12 = swift_task_alloc();
      v4[13] = v12;
      *v12 = v4;
      v12[1] = sub_2148987EC;
      a2 = v4[8];
      a1 = v4[7];
      a3 = v9;
      a4 = v10;
    }

    return MEMORY[0x2821820A8](a1, a2, a3, a4);
  }
}

void *sub_214898A50(uint64_t *a1)
{
  v3 = *v1;
  v4 = sub_21498E900();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A2A8, &qword_2149914B0);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489960C();
  v13 = v22;
  sub_2149901B0();
  if (v13)
  {
    v15 = *(*v1 + 48);
    v16 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v20;
    v25 = 0;
    sub_214899660();
    sub_21498FFA0();
    v24 = 1;
    v1[2] = sub_21498FF50();
    v23 = 2;
    sub_2148996B4(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    v22 = v7;
    v18 = v21;
    sub_21498FFA0();
    (*(v14 + 8))(v11, v18);
    (*(v19 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant19IntervalGuardAction_key, v22, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_214898D94()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC19iCloudMailAssistant19IntervalGuardAction_key;
  v3 = sub_21498E900();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IntervalGuardAction()
{
  result = qword_27CA1A280;
  if (!qword_27CA1A280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214898E8C()
{
  result = sub_21498E900();
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

uint64_t sub_214898F38(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D231E8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_214899964;

  return MEMORY[0x2821820D8](a1, a2);
}

uint64_t sub_214898FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277D231E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_214899964;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_214899090(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_214899138;

  return sub_214898658(a1, a2);
}

uint64_t sub_214899138()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_21489939C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_214898A50(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_214899484()
{
  v0 = sub_21498FEF0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2148994D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
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

unint64_t sub_21489960C()
{
  result = qword_27CA1A2B0;
  if (!qword_27CA1A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2B0);
  }

  return result;
}

unint64_t sub_214899660()
{
  result = qword_27CA1A2B8;
  if (!qword_27CA1A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2B8);
  }

  return result;
}

uint64_t sub_2148996B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for IntervalGuardAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalGuardAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_214899860()
{
  result = qword_27CA1A2C8;
  if (!qword_27CA1A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2C8);
  }

  return result;
}

unint64_t sub_2148998B8()
{
  result = qword_27CA1A2D0;
  if (!qword_27CA1A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2D0);
  }

  return result;
}

unint64_t sub_214899910()
{
  result = qword_27CA1A2D8;
  if (!qword_27CA1A2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A2D8);
  }

  return result;
}

uint64_t type metadata accessor for MASettingsRemoteView()
{
  result = qword_27CA1A2E0;
  if (!qword_27CA1A2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2148999DC()
{
  sub_214899AC8();
  if (v0 <= 0x3F)
  {
    sub_214899B2C();
    if (v1 <= 0x3F)
    {
      sub_214899B90(319, &qword_27CA1A308, 0x277CB8F30);
      if (v2 <= 0x3F)
      {
        sub_214899B90(319, &qword_27CA1A310, 0x277CB8F48);
        if (v3 <= 0x3F)
        {
          sub_21498E5D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_214899AC8()
{
  if (!qword_27CA1A2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A2F8, &unk_214999610);
    v0 = sub_21498F440();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1A2F0);
    }
  }
}

unint64_t sub_214899B2C()
{
  result = qword_27CA1A300;
  if (!qword_27CA1A300)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CA1A300);
  }

  return result;
}

uint64_t sub_214899B90(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_214899BF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  v8 = sub_21489E320(a1);
  v16 = 0xD00000000000002ELL;
  v17 = 0x80000002149A0BD0;
  v14 = v8;
  v15 = v9;
  v14 = sub_21498F970();
  v15 = v10;
  sub_21498F920();
  sub_21498E1A0();
  v11 = sub_21498E1B0();
  v12 = *(v11 - 8);
  result = (*(v12 + 48))(v7, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v12 + 32))(a2, v7, v11);
  }

  return result;
}

uint64_t sub_214899D78@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21498E350();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21498E600();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = xmmword_214991610;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A2F8, &unk_214999610);
  sub_21498F400();
  v16 = v28;
  *a3 = v27[1];
  *(a3 + 16) = v16;
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v11, qword_281194E30);
  (*(v12 + 16))(v15, v17, v11);
  v18 = *(type metadata accessor for MASettingsRemoteView() + 32);
  sub_21498E5F0();
  sub_21498E5B0();
  (*(v12 + 8))(v15, v11);
  *(a3 + 64) = a1;
  *(a3 + 72) = a2;
  v19 = type metadata accessor for MARepositoryDefault();
  v20 = swift_allocObject();
  v21 = a1;
  v22 = a2;
  sub_21498E340();
  v23 = sub_21498E330();
  v25 = v24;
  result = (*(v7 + 8))(v10, v6);
  v20[2] = v23;
  v20[3] = v25;
  v20[4] = v22;
  v20[5] = v21;
  *(a3 + 48) = v19;
  *(a3 + 56) = &off_2826CB168;
  *(a3 + 24) = v20;
  return result;
}

uint64_t sub_21489A000@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v105 = type metadata accessor for MASettingsRemoteView();
  v101 = *(v105 - 8);
  v2 = *(v101 + 64);
  MEMORY[0x28223BE20](v105);
  v103 = v3;
  v111 = (v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v100 = v94 - v6;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A318, &qword_2149916C8);
  v7 = *(*(v113 - 8) + 64);
  MEMORY[0x28223BE20](v113);
  v9 = v94 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v110 = v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v109 = v94 - v15;
  v16 = sub_21498E510();
  v106 = *(v16 - 8);
  v107 = v16;
  v17 = *(v106 + 64);
  MEMORY[0x28223BE20](v16);
  v104 = v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v108 = (v94 - v21);
  v99 = sub_21498E1B0();
  v22 = *(v99 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v99);
  v25 = v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TracingContext(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for MALiftUISource(0);
  v102 = *(v30 - 8);
  v31 = *(v102 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = (v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = type metadata accessor for MARemoteView(0);
  v34 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v36 = (v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v1 + 16);
  v115 = *v1;
  *&v116 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A338, &qword_2149916E8);
  sub_21498F410();
  v38 = v119;
  if (v119 >> 60 == 15)
  {
    v39 = sub_21498FAE0();
    v40 = v100;
    (*(*(v39 - 8) + 56))(v100, 1, 1, v39);
    v41 = v111;
    sub_21489B888(v1, v111, type metadata accessor for MASettingsRemoteView);
    sub_21498FAB0();
    v42 = sub_21498FAA0();
    v43 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    *(v44 + 16) = v42;
    *(v44 + 24) = v45;
    sub_21489B54C(v41, v44 + v43);
    sub_214926978(0, 0, v40, &unk_2149916F8, v44);

    swift_storeEnumTagMultiPayload();
    sub_21489B6A0();
    return sub_21498EE90();
  }

  else
  {
    v103 = v9;
    v47 = v118;
    *v33 = v118;
    v33[1] = v38;
    v111 = v33;
    v48 = v29;
    v49 = v38;
    v98 = v30;
    swift_storeEnumTagMultiPayload();
    v50 = v1;
    v52 = *(v1 + 64);
    v51 = *(v1 + 72);
    v101 = v47;
    v100 = v49;
    v53 = v49;
    v54 = v48;
    sub_21489B6F8(v47, v53);
    v96 = v51;
    v55 = v52;
    sub_214899BF4(v55, v25);
    v56 = sub_21498E170();
    v58 = v57;
    (*(v22 + 8))(v25, v99);
    v59 = *(v26 + 20);
    v97 = v59;
    v60 = *(v105 + 32);
    v61 = sub_21498E5D0();
    v105 = v61;
    v62 = *(v61 - 8);
    (*(v62 + 16))(v54 + v59, v50 + v60, v61);
    v99 = *(v62 + 56);
    (v99)(v54 + v59, 0, 1, v61);
    *v54 = v56;
    v54[1] = v58;
    *v36 = v56;
    v36[1] = v58;
    v63 = v112;
    v64 = *(v112 + 20);
    v95 = type metadata accessor for MALiftUISource;
    sub_21489B888(v111, v36 + v64, type metadata accessor for MALiftUISource);
    *(v36 + v63[9]) = v96;
    *(v36 + v63[10]) = v55;
    v65 = (v36 + v63[7]);
    v66 = sub_21498E8C0();
    *v65 = 0;
    v65[1] = 0;
    v67 = *(v66 + 48);
    v68 = *(v66 + 52);
    swift_allocObject();
    v96 = v55;

    v69 = sub_21498E8B0();
    v94[1] = "Assistant19IntervalGuardAction";
    v70 = swift_allocObject();
    v72 = v106;
    v71 = v107;
    v73 = v104;
    (*(v106 + 104))(v104, *MEMORY[0x277D245A0], v107);
    LOBYTE(v65) = sub_21498E500();
    (*(v72 + 8))(v73, v71);
    *(v70 + 16) = v65 & 1;
    v74 = v108;
    *v108 = v70;
    v75 = *MEMORY[0x277D23258];
    v76 = sub_21498E7C0();
    v77 = *(v76 - 8);
    (*(v77 + 104))(v74, v75, v76);
    (*(v77 + 56))(v74, 0, 1, v76);
    sub_21498E8E0();
    v78 = v109;
    sub_21489B888(v111, v109, v95);
    (*(v102 + 56))(v78, 0, 1, v98);
    v79 = type metadata accessor for MARemoteViewModel(0);
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();

    v82 = sub_21490B164(v96, v78, v69, &v115);
    v83 = v36 + v63[6];
    *v83 = sub_21489B760;
    *(v83 + 1) = v82;
    v83[16] = 0;
    v84 = v97;
    sub_21489B768(v54 + v97, v36 + v63[11]);
    v85 = v110;
    sub_21489B768(v54 + v84, v110);
    v86 = type metadata accessor for MARemoteViewDelegate(0);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    v89 = swift_allocObject();
    v90 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
    (v99)(v89 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, 1, 1, v105);
    v91 = qword_281190DA8;

    if (v91 != -1)
    {
      swift_once();
    }

    sub_21489B904(v54, type metadata accessor for TracingContext);
    sub_21489B904(v111, type metadata accessor for MALiftUISource);
    v92 = sub_21498E600();
    __swift_project_value_buffer(v92, qword_281194E30);
    *(v89 + 16) = "LoadRemoteView";
    *(v89 + 24) = 14;
    *(v89 + 32) = 2;
    swift_beginAccess();
    sub_21489B818(v85, v89 + v90);
    swift_endAccess();
    v93 = (v89 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
    *v93 = sub_21489B7D8;
    v93[1] = v82;
    *(v36 + v63[8]) = v89;
    sub_21489B888(v36, v103, type metadata accessor for MARemoteView);
    swift_storeEnumTagMultiPayload();
    sub_21489B6A0();
    sub_21498EE90();
    sub_21489B8F0(v101, v100);
    return sub_21489B904(v36, type metadata accessor for MARemoteView);
  }
}

uint64_t sub_21489AB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a4;
  v5 = sub_21498E690();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_21498E1B0();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v11 = sub_21498E5D0();
  v4[18] = v11;
  v12 = *(v11 - 8);
  v4[19] = v12;
  v13 = *(v12 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v14 = sub_21498E600();
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  sub_21498FAB0();
  v4[25] = sub_21498FAA0();
  v18 = sub_21498FA50();
  v4[26] = v18;
  v4[27] = v17;

  return MEMORY[0x2822009F8](sub_21489AD70, v18, v17);
}

uint64_t sub_21489AD70()
{
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = v0[11];
  v8 = __swift_project_value_buffer(v3, qword_281194E30);
  (*(v2 + 16))(v1, v8, v3);
  v9 = type metadata accessor for MASettingsRemoteView();
  v34 = *(v6 + 16);
  v34(v4, v7 + *(v9 + 32), v5);
  v10 = sub_21498E5F0();
  v11 = sub_21498FC80();
  if (sub_21498FCE0())
  {
    v12 = v0[21];
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_21498E5C0();
    _os_signpost_emit_with_name_impl(&dword_21488E000, v10, v11, v14, "LoadRemoteView", "", v13, 2u);
    MEMORY[0x216059AC0](v13, -1, -1);
  }

  v15 = v0[23];
  v16 = v0[21];
  v32 = v0[22];
  v33 = v0[24];
  v18 = v0[19];
  v17 = v0[20];
  v19 = v0[17];
  v20 = v0[18];
  v21 = v0[11];

  v34(v17, v16, v20);
  v22 = sub_21498E650();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_21498E640();

  (*(v18 + 8))(v16, v20);
  (*(v15 + 8))(v33, v32);
  sub_214899BF4(*(v21 + 64), v19);
  v25 = __swift_project_boxed_opaque_existential_1((v21 + 24), *(v21 + 48));
  v26 = sub_21498E130();
  v28 = v27;
  v0[28] = v27;
  v29 = *v25;
  v30 = swift_task_alloc();
  v0[29] = v30;
  *v30 = v0;
  v30[1] = sub_21489B004;

  return sub_214937744(v26, v28, 1, 0, 0xF000000000000000);
}

uint64_t sub_21489B004(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 232);
  v8 = *(*v3 + 224);
  v9 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v10 = v6[26];
    v11 = v6[27];
    v12 = sub_21489B288;
  }

  else
  {
    v6[31] = a2;
    v6[32] = a1;
    v10 = v6[26];
    v11 = v6[27];
    v12 = sub_21489B154;
  }

  return MEMORY[0x2822009F8](v12, v10, v11);
}

uint64_t sub_21489B154()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[25];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[11];

  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v0[5] = *v7;
  v0[6] = v9;
  v0[7] = v10;
  v0[8] = v1;
  v0[9] = v2;
  sub_21489B6F8(v8, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A338, &qword_2149916E8);
  sub_21498F420();
  v11 = v0[7];
  sub_21489B8F0(v0[5], v0[6]);

  (*(v5 + 8))(v4, v6);
  v12 = v0[24];
  v13 = v0[20];
  v14 = v0[21];
  v15 = v0[17];
  v16 = v0[14];

  v17 = v0[1];

  return v17();
}

uint64_t sub_21489B288()
{
  v35 = v0;
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];

  (*(v3 + 8))(v2, v4);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v5 = v0[30];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[12];
  v9 = __swift_project_value_buffer(v8, qword_281194E18);
  (*(v7 + 16))(v6, v9, v8);
  v10 = v5;
  v11 = sub_21498E670();
  v12 = sub_21498FBB0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[30];
  v16 = v0[13];
  v15 = v0[14];
  v17 = v0[12];
  if (v13)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v34 = v19;
    *v18 = 136315138;
    swift_getErrorValue();
    v33 = v15;
    v21 = v0[2];
    v20 = v0[3];
    v22 = v0[4];
    v23 = sub_214990100();
    v25 = sub_2149079F4(v23, v24, &v34);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_21488E000, v11, v12, "Unable to load entry point: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x216059AC0](v19, -1, -1);
    MEMORY[0x216059AC0](v18, -1, -1);

    (*(v16 + 8))(v33, v17);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v26 = v0[24];
  v27 = v0[20];
  v28 = v0[21];
  v29 = v0[17];
  v30 = v0[14];

  v31 = v0[1];

  return v31();
}

uint64_t sub_21489B4F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21489B54C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MASettingsRemoteView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21489B5B0(uint64_t a1)
{
  v4 = *(type metadata accessor for MASettingsRemoteView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214899138;

  return sub_21489AB5C(a1, v6, v7, v1 + v5);
}

unint64_t sub_21489B6A0()
{
  result = qword_27CA1A340;
  if (!qword_27CA1A340)
  {
    type metadata accessor for MARemoteView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A340);
  }

  return result;
}

uint64_t sub_21489B6F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21489B70C(a1, a2);
  }

  return a1;
}

uint64_t sub_21489B70C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_21489B768(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21489B818(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21489B888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21489B8F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21489B4F8(a1, a2);
  }

  return a1;
}

uint64_t sub_21489B904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21489B964()
{
  result = qword_27CA1A350;
  if (!qword_27CA1A350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A358, &qword_214991708);
    sub_21489B6A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A350);
  }

  return result;
}

uint64_t sub_21489B9F0()
{
  v0 = *MEMORY[0x277CB89C8];
  v1 = *MEMORY[0x277CB89C8];
  return v0;
}

uint64_t sub_21489BA38()
{
  v62 = sub_21498DFB0();
  v1 = *(v62 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v59 - v6;
  v8 = sub_21498E1B0();
  v66 = *(v8 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v65 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21498E690();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnifiedRulesAPIRequest();
  v64 = v0;
  v75.receiver = v0;
  v75.super_class = v16;
  v17 = objc_msgSendSuper2(&v75, sel_urlString);
  v18 = sub_21498F870();
  v20 = v19;

  v76 = v18;
  v77 = v20;
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  v63 = v8;
  if (!v21)
  {
    v60 = v1;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v11, qword_281194E18);
    (*(v12 + 16))(v15, v22, v11);
    v23 = v64;
    v24 = sub_21498E670();
    v25 = sub_21498FBD0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v67 = v59;
      *v26 = 136315394;
      *(v26 + 4) = sub_2149079F4(0xD00000000000002FLL, 0x80000002149A0C40, &v67);
      *(v26 + 12) = 2080;

      v27 = sub_2149079F4(v18, v20, &v67);

      *(v26 + 14) = v27;
      _os_log_impl(&dword_21488E000, v24, v25, "Using fallback url for %s: %s", v26, 0x16u);
      v28 = v59;
      swift_arrayDestroy();
      MEMORY[0x216059AC0](v28, -1, -1);
      MEMORY[0x216059AC0](v26, -1, -1);
    }

    v29 = (*(v12 + 8))(v15, v11);
    v67 = sub_21498BF80(v29);
    v68 = v30;

    MEMORY[0x2160589C0](0xD000000000000024, 0x80000002149A0C70);

    v18 = v67;
    v31 = v68;
    swift_beginAccess();
    v76 = v18;
    v77 = v31;

    v20 = v31;
    v1 = v60;
    v8 = v63;
  }

  v32 = v66;
  v73 = v18;
  v74 = v20;
  v71 = 0x776574616763636DLL;
  v72 = 0xEA00000000007961;
  v69 = 6513517;
  v70 = 0xE300000000000000;
  sub_21489CA00();
  sub_21498FD20();
  v34 = v33;

  sub_21498E1A0();

  result = (*(v32 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v65;
    (*(v32 + 32))(v65, v7, v8);
    v37 = *&v64[qword_281191540];
    if (v37)
    {
      v38 = *(v37 + 16);
      v39 = MEMORY[0x277D84F90];
      if (v38)
      {
        v64 = v34;
        v60 = v1;
        v73 = MEMORY[0x277D84F90];
        sub_2148A9BB8(0, v38, 0);
        v40 = (v37 + 32);
        v39 = v73;
        v41 = 0x4E4F4D4D4F43;
        do
        {
          v43 = *v40++;
          v42 = v43;
          v44 = v43 == 1;
          if (v43 == 1)
          {
            v45 = 0x4B434F4C42;
          }

          else
          {
            v45 = 0x4954414D4F545541;
          }

          if (v44)
          {
            v46 = 0xE500000000000000;
          }

          else
          {
            v46 = 0xEA00000000004E4FLL;
          }

          if (v42)
          {
            v47 = v45;
          }

          else
          {
            v47 = v41;
          }

          if (v42)
          {
            v48 = v46;
          }

          else
          {
            v48 = 0xE600000000000000;
          }

          v73 = v39;
          v50 = *(v39 + 16);
          v49 = *(v39 + 24);
          if (v50 >= v49 >> 1)
          {
            v52 = v41;
            sub_2148A9BB8((v49 > 1), v50 + 1, 1);
            v41 = v52;
            v39 = v73;
          }

          *(v39 + 16) = v50 + 1;
          v51 = v39 + 16 * v50;
          *(v51 + 32) = v47;
          *(v51 + 40) = v48;
          --v38;
        }

        while (v38);
        v53 = v62;
        v1 = v60;
        v36 = v65;
        v32 = v66;
      }

      else
      {
        v53 = v62;
      }

      v73 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A378, &qword_214993B80);
      sub_21489CA54();
      sub_21498F810();

      v54 = v61;
      sub_21498DFA0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A380, &qword_214991820);
      v55 = *(v1 + 72);
      v56 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_214991720;
      (*(v1 + 16))(v57 + v56, v54, v53);
      sub_21498E190();

      (*(v1 + 8))(v54, v53);
      v8 = v63;
    }

    v58 = sub_21498E130();
    (*(v32 + 8))(v36, v8);

    return v58;
  }

  return result;
}

id sub_21489C1E4(void *a1)
{
  v1 = a1;
  sub_21489BA38();

  v2 = sub_21498F840();

  return v2;
}

id sub_21489C26C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedRulesAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for UnifiedRulesAPIRequest()
{
  result = qword_281191530;
  if (!qword_281191530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21489C35C()
{
  sub_214990160();
  MEMORY[0x216059200](0);
  return sub_214990190();
}

uint64_t sub_21489C3A0()
{
  sub_214990160();
  MEMORY[0x216059200](0);
  return sub_214990190();
}

uint64_t sub_21489C3E0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A370, &qword_214991818);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489C88C();
  sub_2149901C0();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
  sub_21489C934(&qword_281190D58, sub_21489C9AC);
  sub_214990040();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21489C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C75526C69616DLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_214990080();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21489C618(uint64_t a1)
{
  v2 = sub_21489C88C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21489C654(uint64_t a1)
{
  v2 = sub_21489C88C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_21489C690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_21489C6D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_21489C6D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A360, &qword_214991808);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489C88C();
  sub_2149901B0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    sub_21489C934(&qword_281190D50, sub_21489C8E0);
    sub_21498FFA0();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_21489C88C()
{
  result = qword_281191378[0];
  if (!qword_281191378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281191378);
  }

  return result;
}

unint64_t sub_21489C8E0()
{
  result = qword_281191C60;
  if (!qword_281191C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C60);
  }

  return result;
}

uint64_t sub_21489C934(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A368, &qword_214991810);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21489C9AC()
{
  result = qword_281191C68;
  if (!qword_281191C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C68);
  }

  return result;
}

unint64_t sub_21489CA00()
{
  result = qword_281190D78;
  if (!qword_281190D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D78);
  }

  return result;
}

unint64_t sub_21489CA54()
{
  result = qword_281190CF0;
  if (!qword_281190CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A378, &qword_214993B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CF0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExecutionFrequency(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ExecutionFrequency(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_21489CB9C()
{
  result = qword_27CA1A388;
  if (!qword_27CA1A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A388);
  }

  return result;
}

unint64_t sub_21489CBF4()
{
  result = qword_281191368;
  if (!qword_281191368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191368);
  }

  return result;
}

unint64_t sub_21489CC4C()
{
  result = qword_281191370;
  if (!qword_281191370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191370);
  }

  return result;
}

uint64_t sub_21489CCA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E7265746E497369;
  }

  else
  {
    v4 = 7107189;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v6 = 0x6E7265746E497369;
  }

  else
  {
    v6 = 7107189;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006C61;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_214990080();
  }

  return v9 & 1;
}

uint64_t sub_21489CD44()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21489CDC4()
{
  *v0;
  sub_21498F900();
}

uint64_t sub_21489CE30()
{
  v1 = *v0;
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21489CEAC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_21489CF0C(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x6E7265746E497369;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21489CF48()
{
  if (*v0)
  {
    result = 0x6E7265746E497369;
  }

  else
  {
    result = 7107189;
  }

  *v0;
  return result;
}

uint64_t sub_21489CF80@<X0>(char *a1@<X8>)
{
  v2 = sub_21498FEF0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21489CFE4(uint64_t a1)
{
  v2 = sub_21489E02C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21489D020(uint64_t a1)
{
  v2 = sub_21489E02C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_21489D05C(uint64_t *a1)
{
  v3 = v1;
  v5 = *v1;
  v24 = sub_21498E900();
  v22 = *(v24 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](v24);
  v23 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A3C8, &qword_214991A70);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v25);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21489E02C();
  sub_2149901B0();
  if (v2)
  {
    v16 = *(*v1 + 48);
    v17 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v5;
    v21 = v8;
    v13 = v22;
    v27 = 0;
    sub_21489E080(&qword_27CA1A2C0, MEMORY[0x277D23340]);
    v15 = v23;
    v14 = v24;
    sub_21498FFA0();
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_urlReference, v15, v14);
    v26 = 1;
    v19 = sub_21498FF30();
    (*(v21 + 8))(v11, v25);
    *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_isInternal) = (v19 == 2) | v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_21489D3B4()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_urlReference;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeeplinkAction()
{
  result = qword_27CA1A390;
  if (!qword_27CA1A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21489D4A4()
{
  result = sub_21498E900();
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

uint64_t sub_21489D53C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_214899138;

  return (sub_21489D7FC)(a1);
}

uint64_t *sub_21489D714@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_21489D05C(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_21489D7FC(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A348, &qword_214991700) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v4 = sub_21498E1B0();
  v2[20] = v4;
  v5 = *(v4 - 8);
  v2[21] = v5;
  v6 = *(v5 + 64) + 15;
  v2[22] = swift_task_alloc();
  v7 = sub_21498E690();
  v2[23] = v7;
  v8 = *(v7 - 8);
  v2[24] = v8;
  v9 = *(v8 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21489D968, 0, 0);
}

id sub_21489D968()
{
  v1 = v0[17];
  v2 = v0[18] + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_urlReference;
  v3 = sub_21498E8F0();
  if (*(v0[18] + OBJC_IVAR____TtC19iCloudMailAssistant14DeeplinkAction_isInternal) == 1)
  {
    v5 = v3;
    v6 = v4;
    if (qword_281190DA0 != -1)
    {
      swift_once();
    }

    v7 = v0[27];
    v8 = v0[23];
    v9 = v0[24];
    v10 = __swift_project_value_buffer(v8, qword_281194E18);
    (*(v9 + 16))(v7, v10, v8);
    v11 = sub_21498E670();
    v12 = sub_21498FBD0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_21488E000, v11, v12, "Opening Mail Cleanup internal link...", v13, 2u);
      MEMORY[0x216059AC0](v13, -1, -1);
    }

    v14 = v0[27];
    v15 = v0[23];
    v16 = v0[24];

    (*(v16 + 8))(v14, v15);
    v17 = [objc_opt_self() defaultCenter];
    v18 = sub_21498F840();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A3B0, &qword_214991A60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214991720;
    v0[15] = 0x6B6E696C70656564;
    v0[16] = 0xE800000000000000;
    v20 = MEMORY[0x277D837D0];
    sub_21498FDB0();
    *(inited + 96) = v20;
    *(inited + 72) = v5;
    *(inited + 80) = v6;
    sub_2148E09E0(inited);
    swift_setDeallocating();
    sub_21489DFCC(inited + 32, &qword_27CA1A3B8, &qword_214991A68);
    v21 = sub_21498F7D0();

    [v17 postNotificationName:v18 object:0 userInfo:v21];
  }

  else
  {
    v22 = v0[20];
    v23 = v0[21];
    v24 = v0[19];
    sub_21498E1A0();
    if ((*(v23 + 48))(v24, 1, v22) == 1)
    {
      v25 = v0[19];

      sub_21489DFCC(v25, &qword_27CA1A348, &qword_214991700);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v27 = v0[24];
      v26 = v0[25];
      v28 = v0[23];
      v29 = __swift_project_value_buffer(v28, qword_281194E18);
      (*(v27 + 16))(v26, v29, v28);
      v30 = sub_21498E670();
      v31 = sub_21498FBB0();
      v32 = os_log_type_enabled(v30, v31);
      v34 = v0[24];
      v33 = v0[25];
      v35 = v0[23];
      if (v32)
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_21488E000, v30, v31, "Deeplink is not a URL", v36, 2u);
        MEMORY[0x216059AC0](v36, -1, -1);
      }

      (*(v34 + 8))(v33, v35);
    }

    else
    {
      (*(v0[21] + 32))(v0[22], v0[19], v0[20]);
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v37 = v0[26];
      v38 = v0[23];
      v39 = v0[24];
      v40 = __swift_project_value_buffer(v38, qword_281194E18);
      (*(v39 + 16))(v37, v40, v38);
      v41 = sub_21498E670();
      v42 = sub_21498FBD0();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_21488E000, v41, v42, "Opening universal link...", v43, 2u);
        MEMORY[0x216059AC0](v43, -1, -1);
      }

      v44 = v0[26];
      v45 = v0[23];
      v46 = v0[24];

      (*(v46 + 8))(v44, v45);
      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v48 = result;
      v50 = v0[21];
      v49 = v0[22];
      v51 = v0[20];

      v52 = sub_21498E140();
      sub_2148E0B1C(MEMORY[0x277D84F90]);
      v53 = sub_21498F7D0();

      [v48 openSensitiveURL:v52 withOptions:v53];

      (*(v50 + 8))(v49, v51);
    }
  }

  v55 = v0[26];
  v54 = v0[27];
  v56 = v0[25];
  v57 = v0[22];
  v58 = v0[19];

  v59 = v0[1];

  return v59();
}

uint64_t sub_21489DFCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_21489E02C()
{
  result = qword_27CA1A3D0;
  if (!qword_27CA1A3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A3D0);
  }

  return result;
}

uint64_t sub_21489E080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for DeeplinkAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeeplinkAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21489E21C()
{
  result = qword_27CA1A3D8;
  if (!qword_27CA1A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A3D8);
  }

  return result;
}

unint64_t sub_21489E274()
{
  result = qword_27CA1A3E0;
  if (!qword_27CA1A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A3E0);
  }

  return result;
}

unint64_t sub_21489E2CC()
{
  result = qword_27CA1A3E8[0];
  if (!qword_27CA1A3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA1A3E8);
  }

  return result;
}

unint64_t sub_21489E320(void *a1)
{
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 propertiesForDataclass_];
  if (v7)
  {
    v8 = v7;
    v9 = sub_21498F7E0();

    v18 = 0xD000000000000020;
    v19 = 0x80000002149A0D20;
    sub_21498FDB0();
    if (*(v9 + 16) && (v10 = sub_214908014(v20), (v11 & 1) != 0))
    {
      sub_21489E614(*(v9 + 56) + 32 * v10, v21);
      sub_21489E5C0(v20);

      if (swift_dynamicCast())
      {
        return v18;
      }
    }

    else
    {

      sub_21489E5C0(v20);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v6, v13, v2);
  v14 = sub_21498E670();
  v15 = sub_21498FB90();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_21488E000, v14, v15, "[AccountBagKeys] getDomain - domain is empty", v16, 2u);
    MEMORY[0x216059AC0](v16, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_21489E614(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21489E6E8(uint64_t a1)
{
  v2 = *(v1 + qword_281190E68);
  *(v1 + qword_281190E68) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_21489E6FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_281190E48;
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  type metadata accessor for MSRequest.RequestBody();
  v8 = sub_21498FCF0();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

id sub_21489E7D0()
{
  v1 = *(v0 + qword_281190E68);
  if (v1)
  {
    v2 = *(v0 + qword_281190E68);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = *(v0 + qword_281190E68);
  *(v0 + qword_281190E68) = v4;

  result = [v3 defaultStore];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_21489E86C()
{
  v1 = qword_281190E50;
  v2 = *(v0 + qword_281190E50);
  if (v2)
  {
    v3 = *(v0 + qword_281190E50);
  }

  else
  {
    sub_21489F128(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21489E8D0()
{
  v0 = sub_21498FEF0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21489E91C(unsigned __int8 a1)
{
  v1 = 5522759;
  v2 = 5526864;
  if (a1 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (a1)
  {
    v1 = 1414745936;
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

uint64_t sub_21489E97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21489E9F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_21489EA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21489EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21489EB3C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21489E8D0();
  *a2 = result;
  return result;
}

uint64_t sub_21489EB6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21489E91C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21489EB98()
{
  v1 = sub_21498E690();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v4);
  v9 = v8;
  v11 = v10;
  v12 = [*(v0 + qword_281190E60) propertiesForDataclass_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_21498F7E0();

    v31 = v9;
    v32 = v11;

    sub_21498FDB0();
    if (*(v14 + 16) && (v15 = sub_214908014(v33), (v16 & 1) != 0))
    {
      sub_21489E614(*(v14 + 56) + 32 * v15, v34);
      sub_21489E5C0(v33);

      if (swift_dynamicCast())
      {

        return v31;
      }
    }

    else
    {

      sub_21489E5C0(v33);
    }
  }

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v1, qword_281194E18);
  (*(v2 + 16))(v6, v18, v1);
  v19 = v7;

  v20 = sub_21498E670();
  v21 = sub_21498FBB0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = v1;
    v23 = v2;
    v24 = v22;
    v25 = swift_slowAlloc();
    v33[0] = v25;
    *v24 = 136315394;

    v26 = sub_2149079F4(v9, v11, v33);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v27 = sub_21498F870();
    v29 = sub_2149079F4(v27, v28, v33);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_21488E000, v20, v21, "Account bag has no value for key: %s in %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v25, -1, -1);
    MEMORY[0x216059AC0](v24, -1, -1);

    (*(v23 + 8))(v6, v30);
  }

  else
  {

    (*(v2 + 8))(v6, v1);
  }

  return 0;
}

id sub_21489EF60(void *a1)
{
  v1 = a1;
  sub_21489EB98();

  v2 = sub_21498F840();

  return v2;
}

uint64_t sub_21489F024()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return type metadata accessor for MSAPIResponse();
}

uint64_t sub_21489F030()
{
  swift_getObjCClassMetadata();
  sub_21489F024();

  return swift_getObjCClassFromMetadata();
}

void sub_21489F128(uint64_t a1)
{
  v2 = sub_21489E7D0();
  v3 = sub_21489E7D0();
  v4 = [v3 aida:*(a1 + qword_281190E60) accountForiCloudAccount:?];

  v5 = objc_allocWithZone(MEMORY[0x277CEC808]);
  v6 = sub_21498F840();
  v7 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:v6];

  if (!v7)
  {
    __break(1u);
  }
}

id sub_21489F1F0(void *a1)
{
  v2 = sub_21498DEE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_21489F2E8(v6);

  v8 = sub_21498DE70();
  (*(v3 + 8))(v6, v2);

  return v8;
}

void sub_21489F2E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v69 = a1;
  v76 = *MEMORY[0x277D85DE8];
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = sub_21498E690();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v67 = &v66[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v66[-v11];
  v13 = *((v5 & v3) + 0x50);
  v14 = *((v5 & v3) + 0x58);
  v15 = type metadata accessor for MSRequest();
  v70.receiver = v2;
  v70.super_class = v15;
  v16 = objc_msgSendSuper2(&v70, sel_urlRequest);
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  [v16 mutableCopy];

  sub_21498FD40();
  swift_unknownObjectRelease();
  sub_214899B90(0, &qword_27CA1A4D8, 0x277CCAB70);
  v18 = swift_dynamicCast();
  v19 = v72;
  if ((*((*v4 & *v2) + 0x100))(v18))
  {
    v20 = sub_21489E86C();
    [v20 setUseAltDSID_];

    if (([*(v2 + qword_281190E50) signURLRequest:v19 isUserInitiated:1] & 1) == 0)
    {
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v6, qword_281194E18);
      (*(v68 + 16))(v12, v21, v6);
      v22 = sub_21498E670();
      v23 = sub_21498FBB0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_21488E000, v22, v23, "Unable to sign grandslam request", v24, 2u);
        v25 = v24;
        v4 = MEMORY[0x277D85000];
        MEMORY[0x216059AC0](v25, -1, -1);
      }

      (*(v68 + 8))(v12, v6);
    }

    v26 = [v19 aa:*(v2 + qword_281190E60) addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
  }

  else
  {
    v26 = [v19 aa:*(v2 + qword_281190E60) addAuthTokenOrBasicAuthHeaderWithAccount:0 preferUsingPassword:?];
  }

  (*((*v4 & *v2) + 0xF8))(v26);
  v27 = sub_21498F840();

  [v19 setHTTPMethod_];

  sub_21489E6FC(&v72);
  if (v73[24] == 255)
  {
    v30 = v6;
    type metadata accessor for MSRequest.RequestBody();
    v33 = sub_21498FCF0();
    (*(*(v33 - 8) + 8))(&v72, v33);
  }

  else
  {
    v74 = v72;
    v75[0] = *v73;
    *(v75 + 9) = *&v73[9];
    v28 = type metadata accessor for MSRequest.RequestBody();
    v29 = *(v28 - 8);
    (*(v29 + 16))(&v72, &v74, v28);
    if (v73[24])
    {
      v30 = v6;
      v31 = v72;
      v32 = sub_21498E1C0();
      [v19 setHTTPBody_];
      sub_21489B4F8(v31, *(&v31 + 1));

      (*(v29 + 8))(&v74, v28);
    }

    else
    {
      sub_2148970B8(&v72, v71);
      __swift_project_boxed_opaque_existential_1(v71, v71[3]);
      v30 = v6;
      v34 = sub_21489FF88();
      v36 = v35;
      v37 = sub_21498E1C0();
      sub_21489B4F8(v34, v36);
      [v19 setHTTPBody_];

      (*(v29 + 8))(&v74, v28);
      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    v4 = MEMORY[0x277D85000];
  }

  v38 = sub_21498F840();
  v39 = sub_21498F840();
  [v19 setValue:v38 forHTTPHeaderField:v39];

  v40 = [objc_allocWithZone(MEMORY[0x277CEC7B8]) init];
  v41 = [v40 udid];

  v42 = sub_21498F840();
  [v19 setValue:v41 forHTTPHeaderField:v42];

  v43 = *(v2 + qword_281190E40);
  v44 = *(v2 + qword_281190E40 + 8);

  v45 = sub_21498F840();

  v46 = sub_21498F840();
  [v19 setValue:v45 forHTTPHeaderField:v46];

  if ((*((*v4 & *v2) + 0x108))())
  {
    v47 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
    *&v74 = 0;
    v48 = [v47 anisetteDataWithError_];
    if (v48)
    {
      v49 = v48;
      v50 = v74;
      v51 = [v49 machineID];
      v52 = sub_21498F840();
      [v19 setValue:v51 forHTTPHeaderField:v52];

      v53 = [v49 oneTimePassword];
      v54 = sub_21498F840();
      [v19 setValue:v53 forHTTPHeaderField:v54];

      *&v74 = [v49 routingInfo];
      sub_214990050();
      v55 = sub_21498F840();

      v56 = sub_21498F840();
      [v19 setValue:v55 forHTTPHeaderField:v56];
    }

    else
    {
      v57 = v74;
      v58 = sub_21498E100();

      swift_willThrow();
      if (qword_281190DA0 != -1)
      {
        swift_once();
      }

      v59 = __swift_project_value_buffer(v30, qword_281194E18);
      v60 = v68;
      v61 = v67;
      (*(v68 + 16))(v67, v59, v30);
      v62 = sub_21498E670();
      v63 = sub_21498FBB0();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_21488E000, v62, v63, "Can't get anisette data", v64, 2u);
        MEMORY[0x216059AC0](v64, -1, -1);
      }

      (*(v60 + 8))(v61, v30);
    }
  }

  sub_21498DE80();

  v65 = *MEMORY[0x277D85DE8];
}

uint64_t sub_21489FF88()
{
  v0 = sub_21498DF70();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_21498DF60();
  v3 = sub_21498DF50();

  return v3;
}

void sub_2148A0018(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2148A372C();
}

uint64_t sub_2148A0088(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];

  v4 = qword_281190E48;
  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  type metadata accessor for MSRequest.RequestBody();
  v7 = sub_21498FCF0();
  (*(*(v7 - 8) + 8))(&a1[v4], v7);

  v8 = *&a1[qword_281190E40 + 8];
}

uint64_t sub_2148A019C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for MSResult();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2148A0230@<X0>(void *a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v101 = a3;
  v91 = sub_21498E1B0();
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  v9 = MEMORY[0x28223BE20](v91);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4;
  v102 = v4[10];
  v88 = *(v102 - 8);
  v12 = *(v88 + 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21498E690();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - v24;
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v95 = v14;
  v26 = __swift_project_value_buffer(v15, qword_281194E18);
  v27 = v16[2];
  v97 = v26;
  v98 = v27;
  v99 = v16 + 2;
  (v27)(v25);
  v28 = sub_21498E670();
  v29 = sub_21498FBD0();
  v30 = os_log_type_enabled(v28, v29);
  v100 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v92 = v11;
    v33 = v32;
    v103 = v32;
    *v31 = 136315138;
    v34 = sub_2149901F0();
    v96 = a2;
    v36 = v15;
    v37 = sub_2149079F4(v34, v35, &v103);
    a2 = v96;

    *(v31 + 4) = v37;
    v15 = v36;
    _os_log_impl(&dword_21488E000, v28, v29, "Parsing response %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v38 = v33;
    a4 = v100;
    v11 = v92;
    MEMORY[0x216059AC0](v38, -1, -1);
    MEMORY[0x216059AC0](v31, -1, -1);
  }

  v39 = v16[1];
  v39(v25, v15);
  if (!swift_conformsToProtocol2())
  {
    v92 = a1;
    v45 = sub_21498DF10();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_21498DF00();
    v48 = v11[11];
    v49 = v95;
    v50 = a2;
    v51 = v101;
    sub_21498DEF0();
    v96 = 0;

    v82 = v102;
    v83 = (v100 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v88 + 4))(v100, v49, v82);
    *v83 = v50;
    v83[1] = v51;
    type metadata accessor for MSResult();
    swift_storeEnumTagMultiPayload();
    v43 = v50;
    v44 = v51;
    return sub_21489B70C(v43, v44);
  }

  if ([a1 statusCode] - 200 <= 0x63)
  {
    v40 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    swift_dynamicCast();
    v41 = v101;
    *v40 = a2;
    v40[1] = v41;
    v42 = v11[11];
    type metadata accessor for MSResult();
    swift_storeEnumTagMultiPayload();
    v43 = a2;
    v44 = v41;
    return sub_21489B70C(v43, v44);
  }

  v88 = v39;
  v95 = v16;
  v52 = v15;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = [objc_opt_self() bundleForClass_];
  v103 = 2777980912;
  v104 = 0xA400000000000000;
  MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v55 = sub_21498E0A0();
  v57 = v56;

  sub_2148A2800();
  v58 = swift_allocError();
  *v59 = v55;
  *(v59 + 8) = v57;
  *(v59 + 16) = 0;
  *(v59 + 24) = 1;
  *(v59 + 32) = 0;
  *(v59 + 40) = 1;
  v96 = v58;
  swift_willThrow();
  v60 = [a1 allHeaderFields];
  v61 = sub_21498F7E0();

  sub_2148A1314(v61);

  v62 = sub_21498DF10();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_21498DF00();
  sub_2148A3F10();
  sub_21498DEF0();

  v66 = v103;
  v65 = v104;
  v67 = v89;
  v68 = v52;
  v98(v89, v97, v52);
  v69 = a1;

  v70 = sub_21498E670();
  v71 = sub_21498FBB0();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v92 = v11;
    v73 = a4;
    v74 = v72;
    v75 = swift_slowAlloc();
    v103 = v75;
    *v74 = 134218242;
    *(v74 + 4) = [v69 statusCode];

    *(v74 + 12) = 2080;

    v76 = sub_2149079F4(v66, v65, &v103);
    *&v101 = v66;
    v77 = v68;
    v78 = v76;

    *(v74 + 14) = v78;
    _os_log_impl(&dword_21488E000, v70, v71, "[%ld] %s", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x216059AC0](v75, -1, -1);
    v79 = v74;
    a4 = v73;
    v11 = v92;
    MEMORY[0x216059AC0](v79, -1, -1);

    v80 = v67;
    v81 = v77;
    v66 = v101;
  }

  else
  {

    v80 = v67;
    v81 = v68;
  }

  v88(v80, v81);
  v85 = [v69 statusCode];

  *a4 = v66;
  *(a4 + 8) = v65;
  *(a4 + 16) = v85;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v86 = v11[11];
  type metadata accessor for MSResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2148A1314(uint64_t a1)
{
  v36 = sub_21498E690();
  v35 = *(v36 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &qword_214992018;
  while (1)
  {
    v11 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_2148A411C(*(a1 + 48) + 40 * v12, v44);
    sub_21489E614(*(a1 + 56) + 32 * v12, v45);
    sub_2148A411C(v44, &v37);
    if (swift_dynamicCast())
    {
      v41 = v40;
      sub_21489E614(v45, &v42);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
    }

    v6 &= v6 - 1;
    sub_21489DFCC(v44, &qword_27CA1A4A8, &qword_214992010);
    if (*(&v41 + 1))
    {
      v37 = v41;
      v38 = v42;
      v39 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_2148A934C(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v33 = v14 + 1;
        v19 = sub_2148A934C((v13 > 1), v14 + 1, 1, v9);
        v15 = v33;
        v9 = v19;
      }

      v9[2] = v15;
      v16 = &v9[6 * v14];
      v17 = v37;
      v18 = v39;
      v16[3] = v38;
      v16[4] = v18;
      v16[2] = v17;
    }

    else
    {
      sub_21489DFCC(&v41, &qword_27CA1A4B0, &qword_214992018);
    }
  }

  while (1)
  {
    v8 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
    v20 = sub_21498FEC0();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  a1 = v36;
  v7 = v35;
  v10 = v34;
  v44[0] = v20;

  sub_2148A2D3C(v21, 1, v44);

  sub_2148A30F8(v44[0]);

  if (qword_281190DA0 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v22 = __swift_project_value_buffer(a1, qword_281194E18);
  (*(v7 + 16))(v10, v22, a1);

  v23 = sub_21498E670();
  v24 = sub_21498FBB0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44[0] = v26;
    *v25 = 136380675;
    v27 = sub_21498F7F0();
    v29 = v28;

    v30 = sub_2149079F4(v27, v29, v44);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_21488E000, v23, v24, "Response headers: %{private}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x216059AC0](v26, -1, -1);
    MEMORY[0x216059AC0](v25, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v10, a1);
}

uint64_t sub_2148A181C(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_21498E1D0();
  v11 = v10;

  sub_2148A378C(v7, v9, v11, a5);
  v13 = v12;
  sub_21489B4F8(v9, v11);

  return v13;
}

uint64_t sub_2148A18B0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_21498E1D0();
  v9 = v8;

  sub_2148A395C(v5, v7, v9);
  v11 = v10;
  sub_21489B4F8(v7, v9);

  return v11;
}

uint64_t sub_2148A1930(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_21498E1D0();
  v12 = v11;

  v13 = sub_21498F870();
  v15 = v14;

  sub_2148A3B20(v7, v10, v12, v13, v15);
  v17 = v16;

  sub_21489B4F8(v10, v12);

  return v17;
}

uint64_t sub_2148A19EC(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_21498F8E0();
  v7 = v6;
  v8 = *a2;
  v9 = a2[1];
  if (v5 == sub_21498F8E0() && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_214990080();
  }

  return v12 & 1;
}

id sub_2148A1AF4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2148A1B6C(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v5 = type metadata accessor for MSResult();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v2], v5);
}

uint64_t getEnumTagSinglePayload for UnsubscribeEmailParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnsubscribeEmailParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2148A1DC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    result = sub_2148A2138();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2148A1E50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 41;
  if (((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x29)
  {
    v4 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_2148A1F74(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 0x29)
  {
    v5 = 41;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

ValueMetadata *sub_2148A2138()
{
  result = qword_281190FA8;
  if (!qword_281190FA8)
  {
    result = &type metadata for MSError;
    atomic_store(&type metadata for MSError, &qword_281190FA8);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2148A217C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2148A21C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2148A2220()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2148A2290(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2148A22CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2148A2318(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_2148A2358()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A23CC()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A2468@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21498FEF0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2148A24C0(uint64_t a1)
{
  v2 = sub_2148A3EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148A24FC(uint64_t a1)
{
  v2 = sub_2148A3EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2148A2538@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2148A3D2C(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_2148A257C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A480, &unk_214992000);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A3EBC();
  sub_2149901C0();
  sub_214990000();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2148A26D4()
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  MEMORY[0x2160589C0](0xD000000000000015, 0x80000002149A0E50);
  MEMORY[0x2160589C0](2777980912, 0xA400000000000000);
  v2 = sub_21498E0A0();
  v4 = v3;

  qword_27CA30F98 = v2;
  unk_27CA30FA0 = v4;
  qword_27CA30FA8 = 0;
  byte_27CA30FB0 = 1;
  qword_27CA30FB8 = 0;
  byte_27CA30FC0 = 1;
  return result;
}

unint64_t sub_2148A2800()
{
  result = qword_281190F98;
  if (!qword_281190F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190F98);
  }

  return result;
}

uint64_t sub_2148A2854()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A28C8()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2148A2928@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21498FEF0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2148A29B4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_21498FEF0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_2148A2A0C(uint64_t a1)
{
  v2 = sub_2148A4400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148A2A48(uint64_t a1)
{
  v2 = sub_2148A4400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148A2A84@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4F8, &qword_214992210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A4400();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_21498FF60();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_2148A2C00(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A508, &qword_214992218);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A4400();
  sub_2149901C0();
  sub_214990000();
  return (*(v4 + 8))(v7, v3);
}

void sub_2148A2D3C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_2148A41A8(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_2148A4198(v48, v43);
  v9 = *a3;
  v10 = sub_214907F9C(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_214955F74(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_214907F9C(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_2149900F0();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_2149857A4();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_2148A4198(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_2148A41A8(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_2148A4198(v48, v43);
      v30 = *a3;
      v31 = sub_214907F9C(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_214955F74(v35, 1);
        v37 = *a3;
        v31 = sub_214907F9C(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_2148A4198(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_21498FE00();
  MEMORY[0x2160589C0](0xD00000000000001BLL, 0x80000002149A0F60);
  sub_21498FE70();
  MEMORY[0x2160589C0](39, 0xE100000000000000);
  sub_21498FE80();
  __break(1u);
}

uint64_t sub_2148A30F8(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2148A3258(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_2148A3464(v9, v4, v2);
  result = MEMORY[0x216059AC0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_2148A3258(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v31 = v4;
    v11 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;
    sub_21489E614(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v19 = sub_21489E614(v30, &v29);
    MEMORY[0x28223BE20](v19);
    v22[2] = v28;
    swift_bridgeObjectRetain_n();
    v20 = v31;
    LOBYTE(v17) = sub_214923544(sub_2148A4178, v22, &unk_2826C4140);
    v4 = v20;
    swift_arrayDestroy();
    sub_21489DFCC(v28, &qword_27CA1A4C0, &qword_214992028);
    __swift_destroy_boxed_opaque_existential_1(v30);

    v9 = v27;
    if (v17)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_2148A34DC(v24, v23, v25, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_2148A34DC(v24, v23, v25, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v31 = v4;
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2148A3464(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2148A3258(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_2148A34DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4B8, &qword_214992020);
  result = sub_21498FEC0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_21489E614(v17 + 32 * v16, v34);
    sub_2148A4198(v34, v33);
    v21 = *(v9 + 40);
    sub_214990160();

    sub_21498F900();
    result = sub_214990190();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_2148A4198(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2148A378C(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v21 = a4;
  swift_getObjectType();
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v11 = type metadata accessor for MSResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  sub_2148A0230(a1, a2, a3, &v20[-v14]);
  (*(v12 + 32))(&v5[*((*MEMORY[0x277D85000] & *v5) + 0x60)], v15, v11);
  v16 = a1;
  v17 = sub_21498E1C0();
  v18 = type metadata accessor for MSAPIResponse();
  v22.receiver = v5;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_initWithHTTPResponse_data_bodyIsPlist_, v16, v17, v21 & 1);

  if (!v19)
  {
    __break(1u);
  }
}

void sub_2148A395C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v10 = type metadata accessor for MSResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_2148A0230(a1, a2, a3, &v19 - v13);
  (*(v11 + 32))(&v4[*((*MEMORY[0x277D85000] & *v4) + 0x60)], v14, v10);
  v15 = a1;
  v16 = sub_21498E1C0();
  v17 = type metadata accessor for MSAPIResponse();
  v19.receiver = v4;
  v19.super_class = v17;
  v18 = objc_msgSendSuper2(&v19, sel_initWithHTTPResponse_data_, v15, v16);

  if (!v18)
  {
    __break(1u);
  }
}

void sub_2148A3B20(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v23 = a5;
  swift_getObjectType();
  v10 = *((*MEMORY[0x277D85000] & *v5) + 0x50);
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
  v12 = type metadata accessor for MSResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_2148A0230(a1, a2, a3, &v22 - v15);
  (*(v13 + 32))(&v6[*((*MEMORY[0x277D85000] & *v6) + 0x60)], v16, v12);
  v17 = a1;
  v18 = sub_21498E1C0();
  v19 = sub_21498F840();
  v20 = type metadata accessor for MSAPIResponse();
  v24.receiver = v6;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, sel_initWithHTTPResponse_data_mediaType_, v17, v18, v19, v22, v23);

  if (!v21)
  {
    __break(1u);
  }
}

uint64_t sub_2148A3D2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A470, &qword_214991FF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148A3EBC();
  sub_2149901B0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_21498FF60();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

unint64_t sub_2148A3EBC()
{
  result = qword_27CA1A478;
  if (!qword_27CA1A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A478);
  }

  return result;
}

unint64_t sub_2148A3F10()
{
  result = qword_281190FA0;
  if (!qword_281190FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FA0);
  }

  return result;
}

unint64_t sub_2148A3F64()
{
  result = qword_281190CA0;
  if (!qword_281190CA0)
  {
    sub_214899B90(255, &qword_281190CA8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190CA0);
  }

  return result;
}

unint64_t sub_2148A3FCC()
{
  result = qword_281190D70;
  if (!qword_281190D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D70);
  }

  return result;
}

unint64_t sub_2148A4020()
{
  result = qword_27CA1A490;
  if (!qword_27CA1A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A490);
  }

  return result;
}

unint64_t sub_2148A4074()
{
  result = qword_27CA1A498;
  if (!qword_27CA1A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A498);
  }

  return result;
}

unint64_t sub_2148A40C8()
{
  result = qword_27CA1A4A0;
  if (!qword_27CA1A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4A0);
  }

  return result;
}

_OWORD *sub_2148A4198(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2148A41A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4C8, &unk_214992030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2148A4254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2148A429C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_2148A42FC()
{
  result = qword_27CA1A4E0;
  if (!qword_27CA1A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4E0);
  }

  return result;
}

unint64_t sub_2148A4354()
{
  result = qword_27CA1A4E8;
  if (!qword_27CA1A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4E8);
  }

  return result;
}

unint64_t sub_2148A43AC()
{
  result = qword_27CA1A4F0;
  if (!qword_27CA1A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A4F0);
  }

  return result;
}

unint64_t sub_2148A4400()
{
  result = qword_27CA1A500;
  if (!qword_27CA1A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A500);
  }

  return result;
}

unint64_t sub_2148A4468()
{
  result = qword_27CA1A510;
  if (!qword_27CA1A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A510);
  }

  return result;
}

unint64_t sub_2148A44C0()
{
  result = qword_27CA1A518;
  if (!qword_27CA1A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A518);
  }

  return result;
}

unint64_t sub_2148A4518()
{
  result = qword_27CA1A520;
  if (!qword_27CA1A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A520);
  }

  return result;
}

uint64_t sub_2148A457C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_2148A45C4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x736D657469;
    v6 = 0xD000000000000016;
    if (a1 != 2)
    {
      v6 = 0xD000000000000018;
    }

    if (a1)
    {
      v5 = 0x6C69616D65;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7365636375536E6FLL;
    v2 = 0x726F7272456E6FLL;
    if (a1 != 7)
    {
      v2 = 0x656C706D6F436E6FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001ALL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2148A46F8()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DA734();
  return sub_214990190();
}

uint64_t sub_2148A4748()
{
  v1 = *v0;
  sub_214990160();
  sub_2148DA734();
  return sub_214990190();
}

uint64_t sub_2148A478C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2148AADF0();
  *a2 = result;
  return result;
}

unint64_t sub_2148A47BC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2148A45C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2148A4804@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2148AADF0();
  *a1 = result;
  return result;
}

uint64_t sub_2148A4838(uint64_t a1)
{
  v2 = sub_2148AA984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148A4874(uint64_t a1)
{
  v2 = sub_2148AA984();

  return MEMORY[0x2821FE720](a1, v2);
}

void (**sub_2148A48B0(uint64_t *a1))(char *, uint64_t, uint64_t)
{
  v2 = v1;
  v95 = *v2;
  v91 = sub_21498E890();
  v88 = *(v91 - 8);
  v4 = *(v88 + 64);
  MEMORY[0x28223BE20](v91);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A578, &qword_2149924B8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v89 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v83 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v83 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A580, &unk_2149924C0);
  v94 = *(v17 - 8);
  v18 = *(v94 + 64);
  MEMORY[0x28223BE20](v17);
  v93 = &v83 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5D0, &unk_214992530);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v83 - v23;
  v2[2] = MEMORY[0x277D84FA0];
  v2[3] = 0;
  v96 = a1;
  v97 = v2;
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148AA984();
  v26 = v98;
  sub_2149901B0();
  if (v26)
  {
    v98 = v26;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = v97;
    goto LABEL_4;
  }

  v27 = v16;
  v98 = v14;
  v87 = v21;
  LOBYTE(v99[0]) = 0;
  sub_2148AA9D8(&qword_27CA1A5E0, &qword_27CA1A580, &unk_2149924C0);
  v28 = v93;
  sub_21498FFA0();
  v29 = v17;
  v37 = v97;
  (*(v94 + 32))(v97 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_items, v28, v17);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A560, &qword_2149923D8);
  LOBYTE(v99[0]) = 3;
  sub_2148AA9D8(&qword_27CA1A5E8, &qword_27CA1A560, &qword_2149923D8);
  v93 = v45;
  sub_21498FF40();
  sub_2148AAA2C(v27, v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs);
  LOBYTE(v99[0]) = 2;
  v46 = v98;
  sub_21498FF40();
  sub_2148AAA2C(v46, v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs);
  LOBYTE(v99[0]) = 4;
  v47 = v90;
  sub_21498FF40();
  sub_2148AAA2C(v47, v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs);
  LOBYTE(v99[0]) = 5;
  v48 = v89;
  sub_21498FF40();
  sub_2148AAA2C(v48, v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v100) = 6;
  v50 = sub_2148AAA9C();
  v51 = 0;
  sub_21498FF40();
  v86 = v50;
  v89 = v49;
  if (*&v99[0])
  {
    v52 = *&v99[0];
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
  }

  v53 = *(v52 + 16);
  v84 = v24;
  v85 = v20;
  if (v53)
  {
    v98 = 0;
    v83 = v29;
    v100 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v53, 0);
    v54 = v100;
    v93 = *(v88 + 16);
    v55 = v52 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v90 = *(v88 + 72);
    v56 = (v88 + 8);
    v58 = v91;
    v57 = v92;
    do
    {
      (v93)(v57, v55, v58);
      sub_21498E880();
      v57 = v92;
      (*v56)(v92, v58);
      v100 = v54;
      v60 = *(v54 + 16);
      v59 = *(v54 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_2148A9BD8((v59 > 1), v60 + 1, 1);
        v57 = v92;
        v54 = v100;
      }

      *(v54 + 16) = v60 + 1;
      sub_2148970B8(v99, v54 + 40 * v60 + 32);
      v58 = v91;
      v55 += v90;
      --v53;
    }

    while (v53);

    v37 = v97;
    v51 = v98;
    v20 = v85;
    v61 = v54;
    v29 = v83;
    v24 = v84;
  }

  else
  {

    v61 = MEMORY[0x277D84F90];
    v58 = v91;
  }

  *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onSuccessActions) = v61;
  LOBYTE(v100) = 7;
  sub_21498FF40();
  if (v51)
  {
    v98 = v51;
    v17 = v29;
    (*(v87 + 8))(v24, v20);
    v36 = 0;
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    goto LABEL_4;
  }

  if (*&v99[0])
  {
    v62 = *&v99[0];
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  v63 = *(v62 + 16);
  if (v63)
  {
    v98 = 0;
    v83 = v29;
    v100 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v63, 0);
    v64 = v100;
    v93 = *(v88 + 16);
    v65 = v62 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v90 = *(v88 + 72);
    v66 = (v88 + 8);
    v67 = v92;
    do
    {
      (v93)(v67, v65, v58);
      sub_21498E880();
      v67 = v92;
      (*v66)(v92, v58);
      v100 = v64;
      v69 = *(v64 + 16);
      v68 = *(v64 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_2148A9BD8((v68 > 1), v69 + 1, 1);
        v67 = v92;
        v64 = v100;
      }

      *(v64 + 16) = v69 + 1;
      sub_2148970B8(v99, v64 + 40 * v69 + 32);
      v58 = v91;
      v65 += v90;
      --v63;
    }

    while (v63);
    v70 = v64;

    v29 = v83;
    v24 = v84;
    v37 = v97;
    v51 = v98;
    v20 = v85;
  }

  else
  {

    v70 = MEMORY[0x277D84F90];
  }

  *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions) = v70;
  LOBYTE(v100) = 8;
  sub_21498FF40();
  v98 = v51;
  if (v51)
  {
    v17 = v29;
    (*(v87 + 8))(v24, v20);
    v30 = 1;
    v31 = 1;
    v32 = 1;
    v33 = 1;
    v34 = 1;
    v35 = 1;
    v36 = 1;
LABEL_4:
    v38 = v37[2];

    v39 = v37[3];

    if (v30)
    {
      (*(v94 + 8))(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_items, v17);
      if (!v31)
      {
LABEL_6:
        if (!v32)
        {
          goto LABEL_7;
        }

        goto LABEL_16;
      }
    }

    else if (!v31)
    {
      goto LABEL_6;
    }

    sub_21489DFCC(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v32)
    {
LABEL_7:
      if (!v33)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_21489DFCC(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v33)
    {
LABEL_8:
      if (!v34)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }

LABEL_17:
    sub_21489DFCC(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v34)
    {
LABEL_9:
      if (!v35)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_21489DFCC(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs, &qword_27CA1A578, &qword_2149924B8);
    if (!v35)
    {
LABEL_10:
      if (!v36)
      {
LABEL_12:
        v41 = *(*v37 + 12);
        v42 = *(*v37 + 26);
        swift_deallocPartialClassInstance();
        __swift_destroy_boxed_opaque_existential_1(v96);
        return v37;
      }

LABEL_11:
      v40 = *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);

      goto LABEL_12;
    }

LABEL_19:
    v44 = *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onSuccessActions);

    if (!v36)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (*&v99[0])
  {
    v71 = *&v99[0];
  }

  else
  {
    v71 = MEMORY[0x277D84F90];
  }

  v72 = *(v71 + 16);
  if (v72)
  {
    v100 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v72, 0);
    v73 = v100;
    v75 = *(v88 + 16);
    v74 = v88 + 16;
    v94 = v71;
    v95 = v75;
    v76 = v71 + ((*(v88 + 80) + 32) & ~*(v88 + 80));
    v97 = *(v88 + 72);
    v77 = (v88 + 8);
    v78 = v92;
    do
    {
      v79 = v91;
      v80 = v74;
      v95(v78, v76, v91);
      sub_21498E880();
      v78 = v92;
      (*v77)(v92, v79);
      v100 = v73;
      v82 = *(v73 + 16);
      v81 = *(v73 + 24);
      if (v82 >= v81 >> 1)
      {
        sub_2148A9BD8((v81 > 1), v82 + 1, 1);
        v78 = v92;
        v73 = v100;
      }

      *(v73 + 16) = v82 + 1;
      sub_2148970B8(v99, v73 + 40 * v82 + 32);
      v76 += v97;
      --v72;
      v74 = v80;
    }

    while (v72);
    (*(v87 + 8))(v84, v85);
  }

  else
  {

    (*(v87 + 8))(v84, v85);
    v73 = MEMORY[0x277D84F90];
  }

  *(v37 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions) = v73;
  __swift_destroy_boxed_opaque_existential_1(v96);
  return v37;
}

uint64_t sub_2148A5614@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v6 = *(v2 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onSuccessActions);
  v31 = *(v2 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);

  sub_2148A8A04(v7);
  v8 = *(v2 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions);

  sub_2148A8A04(v9);
  v10 = v31;
  result = sub_2148994D0(a1, &v25);
  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = v10 + 32;
    while (v13 < *(v10 + 16))
    {
      sub_2148994D0(v14, v24);
      v15 = v24[4];
      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v16 = *(v15 + 8);
      sub_21498E7E0();
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1(&v25);

        v21 = v24;
        return __swift_destroy_boxed_opaque_existential_1(v21);
      }

      ++v13;
      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = sub_2148970B8(&v23, &v25);
      v14 += 40;
      if (v12 == v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_2148970B8(&v25, v28);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    swift_getKeyPath();
    v19 = type metadata accessor for MARemoteViewModel(255);
    v20 = sub_2148AAB50(&qword_27CA1A5B0, type metadata accessor for MARemoteViewModel);
    *&v25 = v17;
    *(&v25 + 1) = v19;
    v26 = v18;
    v27 = v20;
    a2[3] = swift_getOpaqueTypeMetadata2();
    *&v25 = v17;
    *(&v25 + 1) = v19;
    v26 = v18;
    v27 = v20;
    a2[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a2);

    sub_21498F1C0();

    v21 = v28;
    return __swift_destroy_boxed_opaque_existential_1(v21);
  }

  return result;
}

uint64_t sub_2148A58AC@<X0>(void *a1@<X8>)
{
  sub_2148AA930();
  result = sub_21498EDD0();
  *a1 = v3;
  return result;
}

uint64_t sub_2148A58FC(uint64_t *a1)
{
  v2 = *a1;
  sub_2148AA930();

  return sub_21498EDE0();
}

uint64_t sub_2148A595C(uint64_t a1, uint64_t a2)
{
  v3[60] = a2;
  v3[61] = v2;
  v3[59] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0) - 8) + 64) + 15;
  v3[62] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A578, &qword_2149924B8) - 8) + 64) + 15;
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v7 = sub_21498E7C0();
  v3[68] = v7;
  v8 = *(v7 - 8);
  v3[69] = v8;
  v9 = *(v8 + 64) + 15;
  v3[70] = swift_task_alloc();
  v10 = sub_21498E690();
  v3[71] = v10;
  v11 = *(v10 - 8);
  v3[72] = v11;
  v12 = *(v11 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2148A5B78, 0, 0);
}

uint64_t sub_2148A5B78()
{
  v124 = v0;
  if (qword_281190DA0 != -1)
  {
LABEL_75:
    swift_once();
  }

  v1 = *(v0 + 616);
  v2 = *(v0 + 576);
  v3 = __swift_project_value_buffer(*(v0 + 568), qword_281194E18);
  *(v0 + 624) = v3;
  v4 = *(v2 + 16);
  *(v0 + 632) = v4;
  *(v0 + 640) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v113 = v3;
  v4(v1);
  v5 = sub_21498E670();
  v6 = sub_21498FBA0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21488E000, v5, v6, "[MAUnsubscribeAction] performAction", v7, 2u);
    MEMORY[0x216059AC0](v7, -1, -1);
  }

  v8 = *(v0 + 616);
  v9 = *(v0 + 576);
  v10 = *(v0 + 568);
  v11 = *(v0 + 488);
  v12 = *(v0 + 472);

  v13 = *(v9 + 8);
  *(v0 + 648) = v13;
  v13(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A580, &unk_2149924C0);
  sub_2148A8ED0();
  sub_21498E750();
  v111 = v13;
  v112 = v4;
  v15 = *(v0 + 416);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v0 + 552);
    v19 = *(v17 + 16);
    v18 = v17 + 16;
    v115 = v19;
    v20 = v15 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v21 = *(v18 + 56);
    v22 = MEMORY[0x277D84F90];
    do
    {
      v23 = *(v0 + 560);
      v115(v23, v20, *(v0 + 544));
      sub_2148AAE40(v23, v117);
      (*(v18 - 8))(*(v0 + 560), *(v0 + 544));
      v121 = v117[2];
      v122 = v117[3];
      v123 = v118;
      v119 = v117[0];
      v120 = v117[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_2148A91D4(0, *(v22 + 2) + 1, 1, v22);
      }

      v25 = *(v22 + 2);
      v24 = *(v22 + 3);
      if (v25 >= v24 >> 1)
      {
        v22 = sub_2148A91D4((v24 > 1), v25 + 1, 1, v22);
      }

      *(v22 + 2) = v25 + 1;
      v26 = &v22[72 * v25];
      *(v26 + 2) = v119;
      v27 = v120;
      v28 = v121;
      v29 = v122;
      *(v26 + 12) = v123;
      *(v26 + 4) = v28;
      *(v26 + 5) = v29;
      *(v26 + 3) = v27;
      v20 += v21;
      --v16;
    }

    while (v16);

    v30 = *(v22 + 2);
    if (v30)
    {
      goto LABEL_17;
    }

LABEL_30:
    v32 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v22 = MEMORY[0x277D84F90];
  v30 = *(MEMORY[0x277D84F90] + 16);
  if (!v30)
  {
    goto LABEL_30;
  }

LABEL_17:
  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  while (2)
  {
    v33 = &v22[72 * v31 + 32];
    v34 = v31;
    while (1)
    {
      if (v34 >= *(v22 + 2))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v35 = *(v33 + 16);
      v36 = *(v33 + 32);
      v37 = *(v33 + 48);
      *(v0 + 80) = *(v33 + 64);
      *(v0 + 48) = v36;
      *(v0 + 64) = v37;
      *(v0 + 32) = v35;
      *(v0 + 16) = *v33;
      v31 = v34 + 1;
      if (*(v0 + 40))
      {
        break;
      }

      v33 += 72;
      ++v34;
      if (v30 == v31)
      {
        goto LABEL_31;
      }
    }

    sub_2148A8F4C(v0 + 16, v0 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v119 = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2148A9B98(0, *(v32 + 16) + 1, 1);
      v32 = v119;
    }

    v40 = *(v32 + 16);
    v39 = *(v32 + 24);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      sub_2148A9B98((v39 > 1), v40 + 1, 1);
      v41 = v40 + 1;
      v32 = v119;
    }

    *(v32 + 16) = v41;
    v42 = v32 + 72 * v40;
    *(v42 + 32) = *(v0 + 16);
    v43 = *(v0 + 32);
    v44 = *(v0 + 48);
    v45 = *(v0 + 64);
    *(v42 + 96) = *(v0 + 80);
    *(v42 + 64) = v44;
    *(v42 + 80) = v45;
    *(v42 + 48) = v43;
    if (v30 - 1 != v34)
    {
      continue;
    }

    break;
  }

LABEL_31:
  *(v0 + 656) = v32;
  v46 = *(v0 + 536);
  v47 = *(v0 + 488);

  sub_2148AA824(v47 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayUnsubscribeLinkMs, v46, &qword_27CA1A578, &qword_2149924B8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A560, &qword_2149923D8);
  v49 = *(v48 - 8);
  v50 = *(v49 + 48);
  if (v50(v46, 1, v48) == 1)
  {
    sub_21489DFCC(*(v0 + 536), &qword_27CA1A578, &qword_2149924B8);
    v51 = 0;
  }

  else
  {
    v52 = *(v0 + 472);
    sub_21498E750();
    result = (*(v49 + 8))(*(v0 + 536), v48);
    v51 = *(v0 + 424);
    if (v51 < 0)
    {
      __break(1u);
      goto LABEL_77;
    }
  }

  *(v0 + 664) = v51;
  v53 = *(v0 + 528);
  sub_2148AA824(*(v0 + 488) + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayPostUnsubscribeMs, v53, &qword_27CA1A578, &qword_2149924B8);
  if (v50(v53, 1, v48) == 1)
  {
    sub_21489DFCC(*(v0 + 528), &qword_27CA1A578, &qword_2149924B8);
    v54 = 0;
    goto LABEL_37;
  }

  v55 = *(v0 + 472);
  sub_21498E750();
  result = (*(v49 + 8))(*(v0 + 528), v48);
  v54 = *(v0 + 432);
  if (v54 < 0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

LABEL_37:
  *(v0 + 672) = v54;
  v56 = *(v0 + 520);
  sub_2148AA824(*(v0 + 488) + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_delayMailtoUnsubscribeMs, v56, &qword_27CA1A578, &qword_2149924B8);
  if (v50(v56, 1, v48) == 1)
  {
    sub_21489DFCC(*(v0 + 520), &qword_27CA1A578, &qword_2149924B8);
    v57 = 0;
    goto LABEL_40;
  }

  v58 = *(v0 + 472);
  sub_21498E750();
  result = (*(v49 + 8))(*(v0 + 520), v48);
  v57 = *(v0 + 440);
  if (v57 < 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

LABEL_40:
  *(v0 + 680) = v57;
  v59 = *(v0 + 512);
  sub_2148AA824(*(v0 + 488) + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_mailtoUnsubscribeTimeoutMs, v59, &qword_27CA1A578, &qword_2149924B8);
  if (v50(v59, 1, v48) == 1)
  {
    sub_21489DFCC(*(v0 + 512), &qword_27CA1A578, &qword_2149924B8);
    v60 = v113;
    v62 = v111;
    v61 = v112;
    v63 = 5000;
    goto LABEL_43;
  }

  v64 = *(v0 + 472);
  sub_21498E750();
  v60 = v113;
  v62 = v111;
  v61 = v112;
  result = (*(v49 + 8))(*(v0 + 512), v48);
  v63 = *(v0 + 448);
  if (v63 < 0)
  {
LABEL_79:
    __break(1u);
    return result;
  }

LABEL_43:
  *(v0 + 688) = v63;
  v65 = *(*(v0 + 488) + 24);
  if (v65)
  {
    sub_2148994D0(v65 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository, v0 + 296);
    sub_2148970B8((v0 + 296), v0 + 256);
    v66 = *(v32 + 16);
    if (v66)
    {
      v67 = 0;
      v68 = v32 + 48;
      v69 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v67 >= *(v32 + 16))
        {
          goto LABEL_70;
        }

        v70 = *v68;
        v71 = *(*v68 + 16);
        v72 = *(v69 + 2);
        v73 = v72 + v71;
        if (__OFADD__(v72, v71))
        {
          goto LABEL_71;
        }

        v74 = *v68;

        v75 = swift_isUniquelyReferenced_nonNull_native();
        if (v75 && v73 <= *(v69 + 3) >> 1)
        {
          if (!*(v70 + 16))
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v72 <= v73)
          {
            v76 = v72 + v71;
          }

          else
          {
            v76 = v72;
          }

          v69 = sub_2148A90C8(v75, v76, 1, v69);
          if (!*(v70 + 16))
          {
LABEL_46:

            if (v71)
            {
              goto LABEL_72;
            }

            goto LABEL_47;
          }
        }

        if ((*(v69 + 3) >> 1) - *(v69 + 2) < v71)
        {
          goto LABEL_73;
        }

        swift_arrayInitWithCopy();

        if (v71)
        {
          v77 = *(v69 + 2);
          v78 = __OFADD__(v77, v71);
          v79 = v77 + v71;
          if (v78)
          {
            goto LABEL_74;
          }

          *(v69 + 2) = v79;
        }

LABEL_47:
        ++v67;
        v68 += 72;
        if (v66 == v67)
        {
          goto LABEL_66;
        }
      }
    }

    v69 = MEMORY[0x277D84F90];
LABEL_66:
    *(v0 + 696) = v69;
    v104 = sub_2148AA3C0(*(v0 + 472), v32);
    v106 = v105;
    v108 = v107;
    *(v0 + 704) = v105;
    *(v0 + 712) = v107;
    v109 = *__swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));

    v110 = swift_task_alloc();
    *(v0 + 720) = v110;
    *v110 = v0;
    v110[1] = sub_2148A684C;

    return sub_214936B2C(v69, v104, v106, v108);
  }

  else
  {
    v80 = *(v0 + 600);
    v81 = *(v0 + 568);

    v61(v80, v60, v81);
    v82 = sub_21498E670();
    v83 = sub_21498FBB0();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_21488E000, v82, v83, "No repository found", v84, 2u);
      MEMORY[0x216059AC0](v84, -1, -1);
    }

    v85 = *(v0 + 600);
    v86 = *(v0 + 576);
    v87 = *(v0 + 568);
    v88 = *(v0 + 480);
    v89 = *(v0 + 488);
    v90 = *(v0 + 472);

    v62(v85, v87);
    v91 = *(v89 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);
    sub_21498FA20();
    v92 = *(v89 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions);
    sub_21498FA20();
    v93 = *(v0 + 616);
    v94 = *(v0 + 608);
    v95 = *(v0 + 600);
    v96 = *(v0 + 592);
    v97 = *(v0 + 584);
    v98 = *(v0 + 560);
    v99 = *(v0 + 536);
    v100 = *(v0 + 528);
    v101 = *(v0 + 520);
    v102 = *(v0 + 512);
    v114 = *(v0 + 504);
    v116 = *(v0 + 496);

    v103 = *(v0 + 8);

    return v103();
  }
}

uint64_t sub_2148A684C()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  v2[91] = v0;

  v5 = v2[89];
  if (v0)
  {
    v6 = v2[87];

    v7 = sub_2148A6B38;
  }

  else
  {
    v8 = v2[88];
    v9 = v2[87];

    swift_bridgeObjectRelease_n();

    v7 = sub_2148A69AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2148A69AC()
{
  v1 = *(v0 + 640);
  (*(v0 + 632))(*(v0 + 608), *(v0 + 624), *(v0 + 568));
  v2 = sub_21498E670();
  v3 = sub_21498FBD0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21488E000, v2, v3, "MAUnsubscribeAction: Accepted", v4, 2u);
    MEMORY[0x216059AC0](v4, -1, -1);
  }

  v5 = *(v0 + 648);
  v6 = *(v0 + 608);
  v7 = *(v0 + 576);
  v8 = *(v0 + 568);

  v5(v6, v8);
  v9 = swift_allocObject();
  *(v0 + 736) = v9;
  *(v9 + 16) = *MEMORY[0x277D767B0];
  *(v0 + 744) = objc_opt_self();
  sub_21498FAB0();
  *(v0 + 752) = sub_21498FAA0();
  v11 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148A7130, v11, v10);
}

uint64_t sub_2148A6B38()
{
  v73 = v0;
  v1 = *(v0 + 728);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);

  *(v0 + 456) = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 640);
    v6 = *(v0 + 632);
    v7 = *(v0 + 624);
    v8 = *(v0 + 592);
    v9 = *(v0 + 568);

    v11 = *(v0 + 208);
    v10 = *(v0 + 216);
    v6(v8, v7, v9);

    v12 = sub_21498E670();
    v13 = sub_21498FBB0();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 648);
    v16 = *(v0 + 592);
    v17 = *(v0 + 576);
    v18 = *(v0 + 568);
    if (v14)
    {
      v70 = *(v0 + 592);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v72 = v20;
      *v19 = 136315138;

      v69 = v15;
      v21 = v11;
      v22 = sub_2149079F4(v11, v10, &v72);

      *(v19 + 4) = v22;
      v11 = v21;
      _os_log_impl(&dword_21488E000, v12, v13, "MAUnsubscribeAction: MSError %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x216059AC0](v20, -1, -1);
      MEMORY[0x216059AC0](v19, -1, -1);

      v69(v70, v18);
    }

    else
    {

      v15(v16, v18);
    }

    v41 = *(v0 + 552);
    v42 = *(v0 + 544);
    v43 = *(v0 + 488);
    v44 = *(v0 + 496);
    v45 = *(v0 + 472);
    v46 = *(v0 + 480);
    v47 = swift_allocObject();
    *(v47 + 16) = v11;
    *(v47 + 24) = v10;
    *v44 = v47;
    (*(v41 + 104))(v44, *MEMORY[0x277D232A0], v42);
    (*(v41 + 56))(v44, 0, 1, v42);
    sub_21498E8E0();
    v48 = *(v43 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);
    sub_21498FA20();
    v49 = *(v43 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions);
    sub_21498FA20();
    v50 = *(v0 + 456);
  }

  else
  {
    v23 = *(v0 + 728);
    v24 = *(v0 + 640);
    v25 = *(v0 + 632);
    v26 = *(v0 + 624);
    v27 = *(v0 + 584);
    v28 = *(v0 + 568);

    *(v0 + 400) = 0;
    *(v0 + 408) = 0xE000000000000000;
    *(v0 + 464) = v23;
    sub_21498FE70();
    v30 = *(v0 + 400);
    v29 = *(v0 + 408);
    v25(v27, v26, v28);

    v31 = sub_21498E670();
    v32 = sub_21498FBB0();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 648);
    v35 = *(v0 + 584);
    v36 = *(v0 + 576);
    v37 = *(v0 + 568);
    if (v33)
    {
      v71 = *(v0 + 648);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v72 = v39;
      *v38 = 136315138;
      v40 = sub_2149079F4(v30, v29, &v72);

      *(v38 + 4) = v40;
      _os_log_impl(&dword_21488E000, v31, v32, "MAUnsubscribeAction: Unknown Error %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x216059AC0](v39, -1, -1);
      MEMORY[0x216059AC0](v38, -1, -1);

      v71(v35, v37);
    }

    else
    {

      v34(v35, v37);
    }

    v51 = *(v0 + 728);
    v52 = *(v0 + 480);
    v53 = *(v0 + 488);
    v54 = *(v0 + 472);
    v55 = *(v53 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onErrorActions);
    sub_21498FA20();
    v56 = *(v53 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions);
    sub_21498FA20();
    v50 = v51;
  }

  v57 = *(v0 + 640);
  (*(v0 + 632))(*(v0 + 608), *(v0 + 624), *(v0 + 568));
  v58 = sub_21498E670();
  v59 = sub_21498FBD0();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_21488E000, v58, v59, "MAUnsubscribeAction: Accepted", v60, 2u);
    MEMORY[0x216059AC0](v60, -1, -1);
  }

  v61 = *(v0 + 648);
  v62 = *(v0 + 608);
  v63 = *(v0 + 576);
  v64 = *(v0 + 568);

  v61(v62, v64);
  v65 = swift_allocObject();
  *(v0 + 736) = v65;
  *(v65 + 16) = *MEMORY[0x277D767B0];
  *(v0 + 744) = objc_opt_self();
  sub_21498FAB0();
  *(v0 + 752) = sub_21498FAA0();
  v67 = sub_21498FA50();

  return MEMORY[0x2822009F8](sub_2148A7130, v67, v66);
}

uint64_t sub_2148A7130()
{
  v1 = v0[94];
  v2 = v0[93];

  v0[95] = [v2 sharedApplication];

  return MEMORY[0x2822009F8](sub_2148A71B8, 0, 0);
}

uint64_t sub_2148A71B8()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 736);
  v29 = *(v0 + 656);
  v3 = *(v0 + 504);
  v4 = *(v0 + 480);
  v5 = *(v0 + 488);
  v6 = *(v0 + 472);
  v27 = *(v0 + 680);
  v28 = *(v0 + 664);
  v7 = sub_21498F840();
  *(v0 + 192) = sub_2148AA6B8;
  *(v0 + 200) = v2;
  *(v0 + 160) = MEMORY[0x277D85DD0];
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_2148A457C;
  *(v0 + 184) = &block_descriptor;
  v8 = _Block_copy((v0 + 160));
  v9 = *(v0 + 200);

  v10 = [v1 beginBackgroundTaskWithName:v7 expirationHandler:v8];
  _Block_release(v8);

  swift_beginAccess();
  *(v2 + 16) = v10;
  v11 = sub_21498FAE0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  sub_2148994D0(v0 + 256, v0 + 336);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v29;
  sub_2148970B8((v0 + 336), v12 + 40);
  *(v12 + 80) = v28;
  *(v12 + 96) = v27;
  *(v12 + 112) = v2;

  sub_214926978(0, 0, v3, &unk_2149924D8, v12);

  v13 = *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onSuccessActions);
  sub_21498FA20();
  v14 = *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant19MAUnsubscribeAction_onCompletionActions);
  sub_21498FA20();

  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 584);
  v20 = *(v0 + 560);
  v21 = *(v0 + 536);
  v22 = *(v0 + 528);
  v23 = *(v0 + 520);
  v24 = *(v0 + 512);
  *&v28 = *(v0 + 504);
  v30 = *(v0 + 496);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2148A74C4(uint64_t a1)
{
  v2 = sub_21498E690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_281194E18);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_21498E670();
  v9 = sub_21498FBD0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21488E000, v8, v9, "MAUnsubscribeAction: Background Task Timeout (30s)", v10, 2u);
    MEMORY[0x216059AC0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  result = swift_beginAccess();
  v12 = *MEMORY[0x277D767B0];
  if (*(a1 + 16) != *MEMORY[0x277D767B0])
  {
    v13 = [objc_opt_self() sharedApplication];
    swift_beginAccess();
    [v13 endBackgroundTask_];

    result = swift_beginAccess();
    *(a1 + 16) = v12;
  }

  return result;
}

uint64_t sub_2148A76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[49] = v14;
  v8[50] = v15;
  v8[47] = a7;
  v8[48] = a8;
  v8[45] = a5;
  v8[46] = a6;
  v8[44] = a4;
  v9 = sub_21498E690();
  v8[51] = v9;
  v10 = *(v9 - 8);
  v8[52] = v10;
  v11 = *(v10 + 64) + 15;
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2148A77E0, 0, 0);
}

uint64_t sub_2148A77E0()
{
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 440);
  v2 = *(v0 + 408);
  v3 = *(v0 + 416);
  v4 = __swift_project_value_buffer(v2, qword_281194E18);
  *(v0 + 448) = v4;
  v5 = *(v3 + 16);
  *(v0 + 456) = v5;
  *(v0 + 464) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_21498E670();
  v7 = sub_21498FBD0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21488E000, v6, v7, "MAUnsubscribeAction: Background Task Started", v8, 2u);
    MEMORY[0x216059AC0](v8, -1, -1);
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 408);
  v11 = *(v0 + 416);
  v12 = *(v0 + 352);

  v13 = *(v11 + 8);
  *(v0 + 472) = v13;
  v13(v9, v10);
  v14 = *(v12 + 16);
  *(v0 + 480) = v14;
  if (v14)
  {
    v16 = *(v0 + 352);
    v15 = *(v0 + 360);
    *(v0 + 488) = 0;
    v17 = *(v16 + 48);
    v18 = *(v16 + 64);
    v19 = *(v16 + 80);
    *(v0 + 152) = *(v16 + 96);
    *(v0 + 136) = v19;
    *(v0 + 120) = v18;
    *(v0 + 104) = v17;
    *(v0 + 88) = *(v16 + 32);
    v21 = *(v16 + 64);
    v20 = *(v16 + 80);
    v22 = *(v16 + 48);
    *(v0 + 80) = *(v16 + 96);
    *(v0 + 48) = v21;
    *(v0 + 64) = v20;
    *(v0 + 32) = v22;
    *(v0 + 16) = *(v16 + 32);
    v23 = __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v24 = *(v0 + 64);
    *(v0 + 192) = *(v0 + 48);
    *(v0 + 208) = v24;
    *(v0 + 224) = *(v0 + 80);
    v25 = *(v0 + 32);
    *(v0 + 160) = *(v0 + 16);
    *(v0 + 176) = v25;
    v26 = *v23;
    sub_2148A8F4C(v0 + 88, v0 + 232);
    v27 = swift_task_alloc();
    *(v0 + 496) = v27;
    *v27 = v0;
    v27[1] = sub_2148A7B4C;
    v28 = *(v0 + 384);
    v29 = *(v0 + 392);
    v30 = *(v0 + 368);
    v31 = *(v0 + 376);

    return sub_2149346F4(v0 + 160, 0, v30, v31, v28, v29);
  }

  else
  {
    v33 = *(v0 + 464);
    (*(v0 + 456))(*(v0 + 432), *(v0 + 448), *(v0 + 408));
    v34 = sub_21498E670();
    v35 = sub_21498FBD0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21488E000, v34, v35, "MAUnsubscribeAction: Background Task Completed", v36, 2u);
      MEMORY[0x216059AC0](v36, -1, -1);
    }

    v37 = *(v0 + 472);
    v38 = *(v0 + 432);
    v39 = *(v0 + 408);
    v40 = *(v0 + 416);

    v37(v38, v39);
    *(v0 + 512) = objc_opt_self();
    sub_21498FAB0();
    *(v0 + 520) = sub_21498FAA0();
    v42 = sub_21498FA50();

    return MEMORY[0x2822009F8](sub_2148A820C, v42, v41);
  }
}