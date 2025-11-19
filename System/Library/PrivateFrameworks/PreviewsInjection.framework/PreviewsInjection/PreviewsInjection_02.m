uint64_t sub_25F37AB34(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F37AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t sub_25F37ABD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F37AC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v78 = a9;
  v81 = a7;
  v72 = a5;
  v79 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v58 - v15;
  v16 = sub_25F3C248C();
  v74 = *(v16 - 8);
  v75 = v16;
  MEMORY[0x28223BE20](v16);
  v73 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for RenderEffects(0);
  MEMORY[0x28223BE20](v71);
  v68 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F3C378C();
  v69 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v76 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a6;
  v25 = v81;
  v26 = v77;
  (*(a8 + 48))(v80, a4, a2, v81, a8);
  v77 = v26;
  if (v26)
  {
    sub_25F353360(a4);
    sub_25F353304(v79);
    sub_25F349AA8(a2, &qword_27FD67188);
    return (*(*(v25 - 8) + 8))(a1, v25);
  }

  else
  {
    v58 = v23;
    v59 = v24;
    v60 = v21;
    v61 = v19;
    v65 = a4;
    sub_25F3440A0(v80, v78);
    (*(a8 + 24))(v25, a8);
    v28 = v68;
    sub_25F37C4A8(v79, v68, type metadata accessor for RenderEffects);
    v29 = *(a8 + 8);
    v64 = a1;
    v63 = a8 + 8;
    v62 = v29;
    v30 = v29(v25, a8);
    v66 = a2;
    v67 = a8;
    if (v31)
    {
      v32 = v70;
      v33 = v72;
      v34 = v58;
      if (v30 == 0xD000000000000010 && v31 == 0x800000025F3CBE10)
      {
        v35 = 1;
      }

      else
      {
        v35 = sub_25F3C459C();
      }

      v42 = v75;
      v43 = v71;

      v38 = v61;
      v39 = v60;
      v40 = v69;
      v41 = v59;
      v44 = v43;
      v36 = v42;
      v37 = v44;
    }

    else
    {
      v35 = 0;
      v36 = v75;
      v32 = v70;
      v37 = v71;
      v33 = v72;
      v38 = v61;
      v39 = v60;
      v40 = v69;
      v41 = v59;
      v34 = v58;
    }

    (*(v40 + 32))(v34, v76, v38);
    *(v34 + v39[5]) = v33 & 1;
    sub_25F37C510(v28, v34 + v39[6], type metadata accessor for RenderEffects);
    *(v34 + v39[7]) = v35 & 1;
    *(v34 + v39[8]) = v41;
    v45 = type metadata accessor for PreviewDisplayContext(0);
    sub_25F37C510(v34, v78 + v45[5], type metadata accessor for PreviewDisplayContext.Configuration);
    v46 = v79;
    sub_25F349944(v79 + *(v37 + 20), v32);
    v47 = v74;
    v48 = *(v74 + 48);
    v49 = v48(v32, 1, v36);
    v50 = v32;
    v51 = v64;
    if (v49 == 1)
    {
      v52 = v73;
      (*(v67 + 32))(v81);
      if (v48(v50, 1, v36) != 1)
      {
        sub_25F349AA8(v50, &qword_27FD66F00);
      }
    }

    else
    {
      v52 = v73;
      (*(v47 + 32))(v73, v50, v36);
    }

    v53 = (v78 + v45[7]);
    (*(v47 + 32))(v78 + v45[6], v52, v36);
    v54 = v81;
    v55 = v62(v81, v67);
    v57 = v56;
    sub_25F353360(v65);
    sub_25F353304(v46);
    sub_25F349AA8(v66, &qword_27FD67188);
    result = (*(*(v54 - 8) + 8))(v51, v54);
    *v53 = v55;
    v53[1] = v57;
  }

  return result;
}

uint64_t PreviewDisplayContext.Configuration.layout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F3C378C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewDisplayContext.Configuration.layout.setter(uint64_t a1)
{
  v3 = sub_25F3C378C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PreviewDisplayContext.Configuration.allowAnimations.setter(char a1)
{
  result = type metadata accessor for PreviewDisplayContext.Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t PreviewDisplayContext.description.getter()
{
  sub_25F3C445C();
  MEMORY[0x25F8DB8E0](0xD000000000000020, 0x800000025F3CBD20);
  v1 = v0 + *(type metadata accessor for PreviewDisplayContext(0) + 20);
  sub_25F3C378C();
  sub_25F3C44BC();
  MEMORY[0x25F8DB8E0](0xD000000000000010, 0x800000025F3CBD50);
  sub_25F3C248C();
  sub_25F3C44BC();
  MEMORY[0x25F8DB8E0](0xD000000000000014, 0x800000025F3CBD70);
  v2 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  if (*(v1 + v2[5]))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v1 + v2[5]))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x25F8DB8E0](v3, v4);

  MEMORY[0x25F8DB8E0](0xD000000000000012, 0x800000025F3CBD90);
  v5 = *(v1 + v2[6]);
  v6 = sub_25F3C23FC();
  v7 = MEMORY[0x25F8DB960](v5, v6);
  MEMORY[0x25F8DB8E0](v7);

  MEMORY[0x25F8DB8E0](0xD000000000000013, 0x800000025F3CBDB0);
  sub_25F3C44BC();
  MEMORY[0x25F8DB8E0](0xD000000000000010, 0x800000025F3CBDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD672D0);
  v8 = sub_25F3C43AC();
  MEMORY[0x25F8DB8E0](v8);

  MEMORY[0x25F8DB8E0](0xD000000000000016, 0x800000025F3CBDF0);
  if (*(v1 + v2[7]))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v1 + v2[7]))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x25F8DB8E0](v9, v10);

  MEMORY[0x25F8DB8E0](10, 0xE100000000000000);
  return 0;
}

uint64_t PreviewDisplayContext.SafeAreaPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_25F3C464C();
  MEMORY[0x25F8DBEC0](v1);
  return sub_25F3C466C();
}

uint64_t sub_25F37B828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_25F3C43BC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10 - 8];
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v20[-v13 - 8];
  sub_25F349E38(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F70);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v17 = (*(a3 + 24))(v14, a2, a3);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
  }

  else
  {
    v16(v11, 1, 1, AssociatedTypeWitness);
    (*(v8 + 8))(v11, v7);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _s7SwiftUI13PreviewLayoutO17PreviewsInjectionE2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C378C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67910);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v22 - v10;
  v12 = (&v22 + *(v9 + 56) - v10);
  v13 = *(v5 + 16);
  v13(&v22 - v10, a1, v4);
  v13(v12, a2, v4);
  v14 = *(v5 + 88);
  v15 = v14(v11, v4);
  v16 = v15;
  if (v15 != *MEMORY[0x277CC5748])
  {
    if ((v15 == *MEMORY[0x277CC5750] || v15 == *MEMORY[0x277CC5740]) && v14(v12, v4) == v15)
    {
      (*(v5 + 8))(v11, v4);
      return 1;
    }

    goto LABEL_11;
  }

  v13(v7, v11, v4);
  v17 = *(v5 + 96);
  v17(v7, v4);
  v19 = *v7;
  v18 = v7[1];
  if (v14(v12, v4) != v16)
  {
LABEL_11:
    sub_25F349AA8(v11, &qword_27FD67910);
    return 0;
  }

  v17(v12, v4);
  v20 = v18 == v12[1] && v19 == *v12;
  (*(v5 + 8))(v11, v4);
  return v20;
}

uint64_t _s17PreviewsInjection21PreviewDisplayContextV13ConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C378C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67910);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = (&v29 + *(v9 + 56) - v10);
  v13 = *(v5 + 16);
  v29 = a1;
  v13(&v29 - v10, a1, v4);
  v30 = a2;
  v13(v12, a2, v4);
  v14 = *(v5 + 88);
  v15 = v14(v11, v4);
  v16 = v15;
  if (v15 != *MEMORY[0x277CC5748])
  {
    if ((v15 == *MEMORY[0x277CC5750] || v15 == *MEMORY[0x277CC5740]) && v14(v12, v4) == v15)
    {
      (*(v5 + 8))(v11, v4);
      goto LABEL_12;
    }

LABEL_16:
    sub_25F349AA8(v11, &qword_27FD67910);
LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  v13(v7, v11, v4);
  v17 = *(v5 + 96);
  v17(v7, v4);
  v18 = *v7;
  v19 = v7[1];
  if (v14(v12, v4) != v16)
  {
    goto LABEL_16;
  }

  v17(v12, v4);
  v20 = *v12;
  v21 = v12[1];
  (*(v5 + 8))(v11, v4);
  if (v18 != v20 || v19 != v21)
  {
    goto LABEL_17;
  }

LABEL_12:
  v23 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  v25 = v29;
  v24 = v30;
  if (*(v29 + *(v23 + 20)) != *(v30 + *(v23 + 20)))
  {
    goto LABEL_17;
  }

  v26 = v23;
  if ((sub_25F3955AC(*(v29 + *(v23 + 24)), *(v30 + *(v23 + 24))) & 1) == 0 || *(v25 + *(v26 + 28)) != *(v24 + *(v26 + 28)))
  {
    goto LABEL_17;
  }

  v27 = *(v25 + *(v26 + 32)) ^ *(v24 + *(v26 + 32)) ^ 1;
  return v27 & 1;
}

unint64_t sub_25F37C054()
{
  result = qword_27FD678D8;
  if (!qword_27FD678D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD678D8);
  }

  return result;
}

void sub_25F37C0D0()
{
  sub_25F37C184();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PreviewDisplayContext.Configuration(319);
    if (v1 <= 0x3F)
    {
      sub_25F3C248C();
      if (v2 <= 0x3F)
      {
        sub_25F37C1E8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_25F37C184()
{
  result = qword_27FD678F0;
  if (!qword_27FD678F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FD678F0);
  }

  return result;
}

void sub_25F37C1E8()
{
  if (!qword_27FD678F8)
  {
    v0 = sub_25F3C43BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD678F8);
    }
  }
}

uint64_t sub_25F37C260()
{
  result = sub_25F3C378C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RenderEffects(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewDisplayContext.SafeAreaPolicy(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewDisplayContext.SafeAreaPolicy(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25F37C4A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F37C510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F37C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  type metadata accessor for RenderEffects(0);
  v3[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67190);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v5 = sub_25F3C287C();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = sub_25F3C256C();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = type metadata accessor for LocatedPreview();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  sub_25F3C41CC();
  v3[33] = sub_25F3C41BC();
  v8 = sub_25F3C416C();
  v3[34] = v8;
  v3[35] = v7;

  return MEMORY[0x2822009F8](sub_25F37C7B4, v8, v7);
}

uint64_t sub_25F37C7B4()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  sub_25F3C213C();
  sub_25F3C255C();
  v4 = *(v3 + 8);
  v0[36] = v4;
  v0[37] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);

  return MEMORY[0x2822009F8](sub_25F37C86C, 0, 0);
}

uint64_t sub_25F37C86C()
{
  v1 = v0[17];
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[38] = v4;
  *v4 = v0;
  v4[1] = sub_25F37C9A0;
  v5 = v0[24];
  v6 = v0[21];

  return v8(v6, v5, v2, v3);
}

uint64_t sub_25F37C9A0()
{

  return MEMORY[0x2822009F8](sub_25F37CA9C, 0, 0);
}

uint64_t sub_25F37CA9C()
{
  sub_25F3C24FC();
  v0[39] = 0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[34];
  v5 = v0[35];

  return MEMORY[0x2822009F8](sub_25F37CB68, v4, v5);
}

uint64_t sub_25F37CB68()
{
  v1 = v0[36];
  v3 = v0[31];
  v2 = v0[32];
  v4 = v0[27];
  v5 = v0[25];
  sub_25F3C213C();
  v6 = sub_25F3C254C();
  v1(v4, v5);
  sub_25F353240(v2, v3, type metadata accessor for LocatedPreview);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = v0[31];
  if (EnumCaseMultiPayload == 1)
  {
    v0[5] = type metadata accessor for RegistryPreview(0);
    v0[6] = &off_287171D40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_25F37E4C8(v8, boxed_opaque_existential_1, type metadata accessor for RegistryPreview);
    v10 = v0[5];
    v11 = v0[6];
  }

  else
  {
    v20 = *v8;
    v12 = *(v8 + 16);
    v13 = *(v8 + 40);
    v14 = swift_allocObject();
    v15 = *(v8 + 24);
    v10 = &type metadata for ProviderPreview;
    v11 = &off_2871707E0;
    v0[5] = &type metadata for ProviderPreview;
    v0[6] = &off_2871707E0;
    v0[2] = v14;
    *(v14 + 16) = v20;
    *(v14 + 32) = v12;
    *(v14 + 40) = v15;
    *(v14 + 56) = v13;
  }

  v16 = v0[32];
  v17 = v0[30];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v18 = (v11[5])(v10, v11);
  sub_25F37E33C(v18);
  v0[40] = v6;
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
  sub_25F353240(v16, v17, type metadata accessor for LocatedPreview);

  return MEMORY[0x2822009F8](sub_25F37CE30, 0, 0);
}

uint64_t sub_25F37CD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F37CE30()
{
  v1 = *(*(v0 + 136) + 8);
  *(v0 + 328) = v1;
  return MEMORY[0x2822009F8](sub_25F37CE54, v1, 0);
}

uint64_t sub_25F37CE54()
{
  v1 = v0[40];
  v2 = v0[39];
  v3 = v0[18];
  swift_beginAccess();

  sub_25F394D1C(v1, v3);
  v0[42] = v2;
  if (v2)
  {

    return MEMORY[0x2822009F8](sub_25F37D0F8, 0, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v0[43] = v4;
    *v4 = v0;
    v4[1] = sub_25F37CFA8;
    v5 = v0[32];

    return PreviewAgentServices.resolveModifiers(for:)((v0 + 7), v5);
  }
}

uint64_t sub_25F37CFA8()
{
  v2 = *v1;
  (*v1)[44] = v0;

  if (v0)
  {
    v3 = v2[30];
    sub_25F37E468(v2[18], type metadata accessor for RenderEffects);
    sub_25F37E468(v3, type metadata accessor for LocatedPreview);
    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_25F37D3D0;
  }

  else
  {
    v4 = v2[34];
    v5 = v2[35];
    v6 = sub_25F37D25C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_25F37D0F8()
{
  sub_25F37E468(v0[30], type metadata accessor for LocatedPreview);
  v1 = v0[34];
  v2 = v0[35];

  return MEMORY[0x2822009F8](sub_25F37D170, v1, v2);
}

uint64_t sub_25F37D170()
{
  v1 = *(v0 + 256);

  sub_25F37E468(v1, type metadata accessor for LocatedPreview);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F37D25C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);

  updated = type metadata accessor for PreviewEntryPoint.UpdateInputs();
  sub_25F3C214C();
  sub_25F37E468(v1, type metadata accessor for LocatedPreview);
  sub_25F37E4C8(v2, v4, type metadata accessor for LocatedPreview);
  sub_25F37E4C8(v3, v4 + *(updated + 20), type metadata accessor for RenderEffects);
  v6 = v4 + *(updated + 24);
  v7 = *(v0 + 56);
  v8 = *(v0 + 72);
  *(v6 + 32) = *(v0 + 88);
  *v6 = v7;
  *(v6 + 16) = v8;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25F37D3D0()
{
  v1 = *(v0 + 256);

  sub_25F37E468(v1, type metadata accessor for LocatedPreview);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F37D4BC@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v46 = a2;
  v40 = a3;
  v41 = a1;
  v3 = sub_25F3C21FC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3C221C();
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F3C2E1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PreviewDisplayContext(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v43;
  result = sub_25F37D9A8(v41, v15);
  if (!v16)
  {
    v36 = v10;
    v37 = v9;
    v41 = v5;
    v42 = v6;
    v38 = v8;
    v44 = &type metadata for IOSHostingParadigm;
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F10);
    sub_25F34A598(&qword_27FD66F18, &qword_27FD66F10);
    sub_25F3C2E3C();
    v43 = 0;
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F20);
    sub_25F3C2E0C();
    sub_25F3C2DFC();
    (*(v36 + 8))(v12, v37);
    v18 = v45;
    v19 = v46;
    swift_beginAccess();
    v20 = v19;
    v21 = [*(v19 + 16) previewSceneIdentifier];
    v22 = sub_25F3C3FEC();

    v23 = v15;
    sub_25F348684(v15, v22);

    [*(v20 + 16) previewMaximumSize];
    sub_25F37DD08();
    sub_25F3C247C();
    v24 = v38;
    sub_25F3C21EC();
    v37 = v18;
    swift_beginAccess();
    v41 = *(v18 + 40);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67928);
    v26 = v39;
    v27 = v40;
    v28 = v42;
    (*(v39 + 16))(v40 + *(v25 + 36), v24, v42);
    v35 = v23;
    v29 = v23[3];
    v30 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v29);
    v36 = *(v30 + 40);
    v41 = v41;
    (v36)(v29, v30);
    (*(v26 + 8))(v38, v28);
    v31 = swift_allocObject();
    v32 = v46;
    *(v31 + 16) = v37;
    *(v31 + 24) = v32;
    *v27 = v41;
    v33 = (v27 + *(v25 + 44));
    *v33 = &unk_25F3C7630;
    v33[1] = v31;

    return sub_25F37E468(v35, type metadata accessor for PreviewDisplayContext);
  }

  return result;
}

uint64_t sub_25F37D9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RenderEffects(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67188);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for LocatedPreview();
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for PreviewEntryPoint.UpdateInputs();
  v15 = updated[5];
  v14 = updated[6];
  v29 = updated[7];
  v30 = v15;
  v31 = v14;
  v36 = sub_25F3C2BCC();
  sub_25F353240(a1, v12, type metadata accessor for LocatedPreview);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = type metadata accessor for RegistryPreview(0);
    v35 = &off_287171D40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    sub_25F37E4C8(v12, boxed_opaque_existential_1, type metadata accessor for RegistryPreview);
    v17 = v34;
    v18 = v35;
  }

  else
  {
    v27 = *v12;
    v19 = *(v12 + 2);
    v28 = v9;
    v20 = *(v12 + 5);
    v17 = &type metadata for ProviderPreview;
    v18 = &off_2871707E0;
    v34 = &type metadata for ProviderPreview;
    v35 = &off_2871707E0;
    v21 = swift_allocObject();
    v33[0] = v21;
    *(v21 + 16) = v27;
    *(v21 + 32) = v19;
    *(v21 + 40) = *(v12 + 24);
    *(v21 + 56) = v20;
    v9 = v28;
  }

  v22 = __swift_project_boxed_opaque_existential_1(v33, v17);
  MEMORY[0x28223BE20](v22);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24);
  sub_25F358988(a1 + v29, v9);
  sub_25F353240(a1 + v30, v6, type metadata accessor for RenderEffects);
  sub_25F3532A8(a1 + v31, v32);
  v37 = 0;
  sub_25F37AC50(v24, v9, v6, v32, v36 & 1, &v37, v17, v18, a2);
  return __swift_destroy_boxed_opaque_existential_0Tm(v33);
}

uint64_t sub_25F37DD08()
{
  v0 = sub_25F3C378C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PreviewDisplayContext.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[2] = &type metadata for IOSHostingParadigm;
  v10[3] = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  v10[0] = &type metadata for IOSHostingParadigm;
  v10[1] = &protocol witness table for IOSHostingParadigm;
  swift_getKeyPath();
  sub_25F3C35DC();

  (*(v1 + 16))(v3, v6, v0);
  sub_25F37E468(v6, type metadata accessor for PreviewDisplayContext.Configuration);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == *MEMORY[0x277CC5748])
  {
    (*(v1 + 96))(v3, v0);
    return *v3;
  }

  if (v7 != *MEMORY[0x277CC5750])
  {
    if (v7 == *MEMORY[0x277CC5740])
    {
      sub_25F3C39FC();
      return v9;
    }

    (*(v1 + 8))(v3, v0);
  }

  return 0;
}

uint64_t sub_25F37DFA0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_25F37DFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return sub_25F37C578(a1, a2, a3);
}

uint64_t sub_25F37E0C4(uint64_t a1)
{
  result = sub_25F37E14C(&qword_27FD67918);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F37E108(uint64_t a1)
{
  result = sub_25F37E14C(&qword_27FD67920);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F37E14C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PreviewEntryPoint();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F37E18C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F34905C;

  return sub_25F348BB0(a1, v5, v4);
}

uint64_t type metadata accessor for PreviewEntryPoint.UpdateInputs()
{
  result = qword_27FD67940;
  if (!qword_27FD67940)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F37E284(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25F3C450C();
LABEL_9:
  result = sub_25F3C449C();
  *v1 = result;
  return result;
}

uint64_t sub_25F37E33C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_25F37A17C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_25F3C23FC();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25F37E468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F37E4C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F37E548(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_25F3C450C();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_25F3C450C();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25F37E284(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25F37E640(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25F3C450C();
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
      result = sub_25F3C450C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25F34A598(&qword_27FD67938, &qword_27FD67930);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67930);
            v9 = sub_25F358AEC(v13, i, a3);
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
        sub_25F37EACC(0, &qword_27FD67328);
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

uint64_t sub_25F37E7F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25F3C450C();
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
      result = sub_25F3C450C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25F34A598(&qword_27FD67968, &qword_27FD67960);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67960);
            v9 = sub_25F359220(v13, i, a3);
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
        sub_25F37EACC(0, &qword_27FD67958);
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

void sub_25F37E9D0()
{
  type metadata accessor for LocatedPreview();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RenderEffects(319);
    if (v1 <= 0x3F)
    {
      sub_25F37EA74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F37EA74()
{
  if (!qword_27FD67950)
  {
    sub_25F3C2AEC();
    v0 = sub_25F3C43BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67950);
    }
  }
}

uint64_t sub_25F37EACC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t SceneServices.sharedHostController<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F3C2E1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = a2;
  v11 = a2;
  v12 = a3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F10);
  sub_25F37FF00();
  sub_25F3C2E3C();
  swift_endAccess();
  type metadata accessor for PreviewHostController();
  sub_25F3C2E0C();
  sub_25F3C2DFC();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t SceneEntryPoint.update(payload:scene:role:)()
{
  sub_25F37FF64();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F37ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v8 = sub_25F3C2EBC();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = *(a5 + 8);
  updated = type metadata accessor for UpdatePayloadError();
  v6[17] = updated;
  v6[18] = *(updated - 8);
  v6[19] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[20] = AssociatedTypeWitness;
  v6[21] = *(AssociatedTypeWitness - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[24] = v11;
  v6[25] = *(v11 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  sub_25F3C41CC();
  v6[28] = sub_25F3C41BC();
  v13 = sub_25F3C416C();
  v6[29] = v13;
  v6[30] = v12;

  return MEMORY[0x2822009F8](sub_25F37EF68, v13, v12);
}

uint64_t sub_25F37EF68()
{
  (*(v0[16] + 64))(v0[8]);
  v9 = v0[11];
  (*(v0[25] + 32))(v0[27], v0[26], v0[24]);
  v8 = (*(v9 + 40) + **(v9 + 40));
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_25F37F32C;
  v2 = v0[27];
  v3 = v0[23];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];

  return v8(v3, v2, v5, v6, v4);
}

uint64_t sub_25F37F32C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_25F37F598;
  }

  else
  {
    v5 = sub_25F37F468;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_25F37F468()
{
  v1 = v0[27];
  v2 = v0[25];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];

  (*(v6 + 16))(v5, v4, v7);
  sub_25F3C2E2C();
  (*(v6 + 8))(v4, v7);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F37F598()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F37F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v21 = a2;
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  updated = type metadata accessor for SceneUpdateResult();
  v19 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v14 = &v19 - v13;
  sub_25F3C2E0C();
  sub_25F3C2DFC();
  v15 = v22;
  (*(a4 + 48))(a1, v11, v21, a3, a4);
  result = (*(v9 + 8))(v11, AssociatedTypeWitness);
  if (!v15)
  {
    MEMORY[0x28223BE20](result);
    *(&v19 - 4) = a3;
    *(&v19 - 3) = a4;
    *(&v19 - 2) = a3;
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a3;
    v18 = sub_25F3C2EBC();
    sub_25F38039C(sub_25F381898, (&v19 - 6), sub_25F3818D0, v17, updated, v18, v18, v20);

    return (*(v19 + 8))(v14, updated);
  }

  return result;
}

uint64_t SceneUpdateResult.init(viewController:preferences:hostedOutput:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  updated = type metadata accessor for SceneUpdateResult();
  v14 = updated[9];
  v15 = sub_25F3C221C();
  (*(*(v15 - 8) + 32))(&a7[v14], a2, v15);
  result = (*(*(a6 - 8) + 32))(&a7[updated[10]], a3, a6);
  v17 = &a7[updated[11]];
  *v17 = a4;
  *(v17 + 1) = a5;
  return result;
}

uint64_t sub_25F37FA40()
{
  sub_25F37FF64();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F37FA88()
{
  sub_25F3C210C();
  sub_25F381840();
  return sub_25F3C315C();
}

uint64_t SceneEntryPoint<>.prepareToUpdate(with:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  sub_25F3C41CC();
  v5[6] = sub_25F3C41BC();
  v7 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F37FBE4, v7, v6);
}

uint64_t sub_25F37FBE4()
{
  v1 = v0[3];
  v2 = v0[2];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v2, v1, AssociatedTypeWitness);
  v4 = v0[1];

  return v4();
}

void SceneEntryPoint<>.update(for:with:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v10 = *(a5 + 56);
  v11 = *(a3 + 16);
  v10(a2, v11, a1, a4, a5);
}

id SceneServices.scene.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void SceneServices.scene.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_25F37FE88()
{
  type metadata accessor for PreviewHostController();
  PreviewHostController.__allocating_init()();
  return sub_25F3C2E2C();
}

unint64_t sub_25F37FF00()
{
  result = qword_27FD66F18;
  if (!qword_27FD66F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD66F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD66F18);
  }

  return result;
}

unint64_t sub_25F37FF64()
{
  result = qword_27FD67970;
  if (!qword_27FD67970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67970);
  }

  return result;
}

uint64_t SceneServices.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t SceneUpdateResult.preferences.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_25F3C221C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SceneUpdateResult.preferences.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_25F3C221C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SceneUpdateResult.makeStaticOutput.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

uint64_t SceneUpdateResult.makeStaticOutput.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 44));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t SceneUpdateResult.init<>(viewController:preferences:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD67978);
  v6 = *(v5 + 36);
  v7 = sub_25F3C221C();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  v9 = &a3[*(v5 + 44)];
  *v9 = &unk_25F3C76D8;
  *(v9 + 1) = 0;
  return result;
}

uint64_t sub_25F38039C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v9 = v8;
  v31 = a7;
  v32 = a3;
  v33 = a4;
  v34 = a8;
  v29 = a2;
  v30 = a1;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25F3C221C();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v8;
  (*(v21 + 16))(v19, v8 + *(a5 + 36));
  v22 = *(a5 + 40);
  v28 = v20;
  v30(v9 + v22);
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9, a5);
  v23 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = *(a5 + 16);
  *(v24 + 32) = a6;
  v25 = v32;
  *(v24 + 40) = v31;
  *(v24 + 48) = v25;
  *(v24 + 56) = v33;
  (*(v12 + 32))(v24 + v23, &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a5);
  SceneUpdateResult.init(viewController:preferences:hostedOutput:makeStaticOutput:)(v28, v19, v16, &unk_25F3C7838, v24, a6, v34);
}

uint64_t sub_25F380618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a6 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3806D4, 0, 0);
}

uint64_t sub_25F3806D4()
{
  v1 = v0[5];
  v2 = (v1 + *(type metadata accessor for SceneUpdateResult() + 44));
  v6 = (*v2 + **v2);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_25F3807DC;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_25F3807DC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25F380990;
  }

  else
  {
    v2 = sub_25F3808F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F3808F0()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  (*(v0 + 24))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F380990()
{

  v1 = *(v0 + 8);

  return v1();
}

void *SceneUpdateResult.init(viewController:preferences:hostedOutput:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  updated = type metadata accessor for SceneUpdateResult();
  v16 = updated[9];
  v17 = sub_25F3C221C();
  (*(*(v17 - 8) + 32))(&a8[v16], a2, v17);
  (*(*(a6 - 8) + 32))(&a8[updated[10]], a3, a6);
  result = swift_allocObject();
  result[2] = a6;
  result[3] = a7;
  result[4] = a4;
  result[5] = a5;
  v19 = &a8[updated[11]];
  *v19 = &unk_25F3C76F0;
  *(v19 + 1) = result;
  return result;
}

uint64_t sub_25F380B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F380B38, 0, 0);
}

uint64_t sub_25F380B38()
{
  *(v0 + 40) = (*(v0 + 24))();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_25F380C2C;
  v2 = *(v0 + 16);

  return MEMORY[0x2821A0BA0](v2);
}

uint64_t sub_25F380C2C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25F380DA4;
  }

  else
  {
    v2 = sub_25F380D40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F380D40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F380DA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F380E08(uint64_t a1)
{
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F351058;

  return sub_25F380B14(a1, v5, v4);
}

uint64_t SceneUpdateResult.init<>(viewController:preferences:makeStaticOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = sub_25F3C221C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a2, v12);
  SceneUpdateResult.init(viewController:preferences:hostedOutput:makeStaticOutput:)(a1, v15, v16, a3, a4, MEMORY[0x277D84F78] + 8, a5, a6);
  return (*(v13 + 8))(a2, v12);
}

uint64_t dispatch thunk of SceneEntryPoint.prepareToUpdate(with:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F34905C;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_25F3811F8()
{
  result = sub_25F381794();
  if (v1 <= 0x3F)
  {
    result = sub_25F3C221C();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        result = sub_25F3817E0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F3812B0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_25F3C221C() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(v8 + 64) + ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    if (v7 == v14)
    {
      v25 = *(v6 + 48);

      return v25((a1 + v10 + 8) & ~v10);
    }

    else
    {
      v26 = *(v8 + 48);

      return v26((((a1 + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
    }
  }

  else
  {
    v24 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_25F3814FC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25F3C221C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(v10 + 64) + ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          if (v9 == v16)
          {
            v25 = *(v8 + 56);

            v25((a1 + v12 + 8) & ~v12, a2);
          }

          else
          {
            v26 = *(v10 + 56);

            v26((((a1 + v12 + 8) & ~v12) + v13 + v14) & ~v14, a2, v11);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(v10 + 64) + ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

unint64_t sub_25F381794()
{
  result = qword_27FD67A00;
  if (!qword_27FD67A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD67A00);
  }

  return result;
}

unint64_t sub_25F3817E0()
{
  result = qword_27FD67A08;
  if (!qword_27FD67A08)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27FD67A08);
  }

  return result;
}

unint64_t sub_25F381840()
{
  result = qword_27FD67A10;
  if (!qword_27FD67A10)
  {
    sub_25F3C210C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67A10);
  }

  return result;
}

uint64_t sub_25F38190C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(type metadata accessor for SceneUpdateResult() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25F351058;

  return sub_25F380618(a1, v8, v9, v1 + v7, v4, v5);
}

__n128 sub_25F381A58@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocatedPreview();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F355EEC(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a2[3] = type metadata accessor for RegistryPreview(0);
    a2[4] = &off_287171D40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    sub_25F355F50(v6, boxed_opaque_existential_1);
  }

  else
  {
    v12 = *v6;
    v9 = *(v6 + 2);
    v10 = *(v6 + 5);
    a2[3] = &type metadata for ProviderPreview;
    a2[4] = &off_2871707E0;
    v11 = swift_allocObject();
    *a2 = v11;
    *(v11 + 16) = v12;
    *(v11 + 32) = v9;
    result = *(v6 + 24);
    *(v11 + 40) = result;
    *(v11 + 56) = v10;
  }

  return result;
}

uint64_t sub_25F381B88(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_25F381BE8()
{
  sub_25F3C41CC();
  *(v0 + 16) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F381C7C, v2, v1);
}

uint64_t sub_25F381C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F381CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67190);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A28);
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  sub_25F3C41CC();
  v3[11] = sub_25F3C41BC();
  v7 = sub_25F3C416C();
  v3[12] = v7;
  v3[13] = v6;

  return MEMORY[0x2822009F8](sub_25F381E48, v7, v6);
}

uint64_t sub_25F381E48()
{
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v8 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_25F381F7C;
  v5 = v0[7];
  v6 = v0[3];

  return v8(v5, v6, v2, v3);
}

uint64_t sub_25F381F7C()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_25F38209C, v3, v2);
}

uint64_t sub_25F38209C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD67A30);
  sub_25F3C250C();
  (*(v5 + 8))(v4, v6);
  sub_25F3C246C();
  sub_25F3C250C();
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

unint64_t sub_25F382210(uint64_t a1)
{
  result = sub_25F382238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F382238()
{
  result = qword_27FD67A18;
  if (!qword_27FD67A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67A18);
  }

  return result;
}

unint64_t sub_25F38228C(uint64_t a1)
{
  result = sub_25F3822B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F3822B4()
{
  result = qword_27FD67A20;
  if (!qword_27FD67A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67A20);
  }

  return result;
}

uint64_t sub_25F382348@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

unint64_t sub_25F3823B8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SwiftUIAppHostProvider;
  result = sub_25F3498F0();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25F3823F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_25F355568(a3, v25 - v10, &qword_27FD67178);
  v12 = sub_25F3C41EC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_25F349AA8(v11, &qword_27FD67178);
  }

  else
  {
    sub_25F3C41DC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25F3C416C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25F3C405C() + 32;
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

      sub_25F349AA8(a3, &qword_27FD67178);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F349AA8(a3, &qword_27FD67178);
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

id sub_25F3826FC()
{
  result = [objc_allocWithZone(type metadata accessor for UVBSEndpointMonitor()) init];
  qword_281561B80 = result;
  return result;
}

char *sub_25F38272C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_25F3C354C();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3C209C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_controlAgent;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67BB8);
  *&v1[v10] = sub_25F3C34FC();
  v11 = OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_jitBootstrapAgent;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67BC0);
  *&v1[v11] = sub_25F3C34FC();
  v12 = *MEMORY[0x277D40CD0];
  v34 = *(v7 + 104);
  v34(v9, v12, v6);
  sub_25F3C207C();
  v33 = *(v7 + 8);
  v33(v9, v6);
  v13 = sub_25F3C3FDC();

  v14 = objc_opt_self();
  v15 = [v14 monitorForService_];

  *&v1[OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_controlAgentMonitor] = v15;
  if (sub_25F3C2EDC())
  {
    sub_25F3C351C();
    v16 = sub_25F3C353C();
    v17 = sub_25F3C430C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = ObjectType;
      v19 = v18;
      *v18 = 0;
      _os_log_impl(&dword_25F342000, v16, v17, "Agent process running in XTP", v18, 2u);
      v20 = v19;
      ObjectType = v30;
      MEMORY[0x25F8DC6C0](v20, -1, -1);
    }

    (*(v31 + 8))(v5, v32);
  }

  v21 = [objc_opt_self() processInfo];
  sub_25F382B58();
  v23 = v22;

  if (v23)
  {

    v34(v9, *MEMORY[0x277D40CF8], v6);
    sub_25F3C207C();
    v33(v9, v6);
    v24 = sub_25F3C3FDC();

    v23 = [v14 monitorForService_];
  }

  *&v1[OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_jitBootstrapAgentMonitor] = v23;
  v35.receiver = v1;
  v35.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v35, sel_init);
  v26 = OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_controlAgentMonitor;
  [*&v25[OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_controlAgentMonitor] setDelegate_];
  [*&v25[v26] activate];
  v27 = OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_jitBootstrapAgentMonitor;
  v28 = *&v25[OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_jitBootstrapAgentMonitor];
  if (v28)
  {
    [v28 setDelegate_];
    v28 = *&v25[v27];
  }

  [v28 activate];
  return v25;
}

uint64_t sub_25F382B58()
{
  v1 = [v0 environment];
  v2 = sub_25F3C3F7C();

  if (*(v2 + 16) && (v3 = sub_25F35C378(0xD000000000000029, 0x800000025F3CC210), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t UVBSEndpointMonitor.monitor(_:didReceive:)(void *a1, void *a2)
{
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v82 - v4;
  v5 = sub_25F3C2EBC();
  v94 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v88 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v91 = &v82 - v8;
  v9 = sub_25F3C209C();
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v87 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v82 - v12;
  v96 = sub_25F3C354C();
  v14 = *(v96 - 8);
  v15 = MEMORY[0x28223BE20](v96);
  v86 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v82 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v90 = &v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v85 = &v82 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v83 = &v82 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v82 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  sub_25F3C351C();
  v30 = a2;
  v31 = sub_25F3C353C();
  v32 = sub_25F3C433C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = v5;
    v35 = v14;
    v36 = swift_slowAlloc();
    *v33 = 138543362;
    *(v33 + 4) = v30;
    *v36 = v30;
    v37 = v30;
    _os_log_impl(&dword_25F342000, v31, v32, "UVBSEndpointMonitor did receive endpoint %{public}@", v33, 0xCu);
    sub_25F349AA8(v36, &qword_27FD67A50);
    v38 = v36;
    v14 = v35;
    v5 = v34;
    MEMORY[0x25F8DC6C0](v38, -1, -1);
    MEMORY[0x25F8DC6C0](v33, -1, -1);
  }

  v39 = *(v14 + 8);
  v40 = v96;
  v39(v29, v96);
  v41 = v95;
  if (*(v97 + OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_controlAgentMonitor) == v95)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A58);
    v55 = v92;
    v54 = v93;
    (*(v92 + 104))(v13, *MEMORY[0x277D40CD0], v93);
    v56 = v91;
    _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();
    sub_25F3C20EC();
    (*(v94 + 8))(v56, v5);
    (*(v55 + 8))(v13, v54);
    v100 = *(v97 + OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_controlAgent);
    swift_getKeyPath();
    type metadata accessor for ControlAgent();
    swift_allocObject();

    v65 = sub_25F38A8D8(v64);

    v98 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A80);
    sub_25F34A598(&unk_27FD67A88, &qword_27FD67A80);
    sub_25F3C31BC();
  }

  v42 = *(v97 + OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_jitBootstrapAgentMonitor);
  if (!v42 || v42 != v95)
  {
    v57 = v90;
    sub_25F3C351C();
    v58 = v41;
    v59 = sub_25F3C353C();
    v60 = sub_25F3C431C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v58;
      *v62 = v58;
      v63 = v58;
      _os_log_impl(&dword_25F342000, v59, v60, "Unrecognized endpoint connection monitor: %@", v61, 0xCu);
      sub_25F349AA8(v62, &qword_27FD67A50);
      MEMORY[0x25F8DC6C0](v62, -1, -1);
      MEMORY[0x25F8DC6C0](v61, -1, -1);
    }

    v71 = v57;
    return (v39)(v71, v40);
  }

  sub_25F3C351C();
  v43 = sub_25F3C353C();
  v44 = sub_25F3C42FC();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_25F342000, v43, v44, "UVBSEndpointMonitor will create shell connection for JIT bootstrap agent", v45, 2u);
    MEMORY[0x25F8DC6C0](v45, -1, -1);
  }

  v39(v27, v40);
  v46 = [objc_opt_self() processInfo];
  v47 = sub_25F382B58();
  v49 = v48;

  if (!v49)
  {
    v67 = v85;
    sub_25F3C351C();
    v68 = sub_25F3C353C();
    v69 = sub_25F3C431C();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_25F342000, v68, v69, "No JIT_BOOTSTRAP_AGENT_CONNECTION_IDENTIFIER specified.", v70, 2u);
      MEMORY[0x25F8DC6C0](v70, -1, -1);
    }

    v71 = v67;
    return (v39)(v71, v40);
  }

  v50 = v88;
  _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();
  v100 = v47;
  v101 = v49;
  v99[3] = MEMORY[0x277D837D0];
  v99[4] = MEMORY[0x277D405A0];
  v99[0] = 0xD00000000000001DLL;
  v99[1] = 0x800000025F3CBED0;
  sub_25F3C2E6C();

  __swift_destroy_boxed_opaque_existential_0Tm(v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A58);
  v52 = v92;
  v51 = v93;
  v53 = v87;
  (*(v92 + 104))(v87, *MEMORY[0x277D40CF8], v93);
  v72 = sub_25F3C20EC();
  (*(v52 + 8))(v53, v51);
  v73 = v83;
  sub_25F3C351C();
  v74 = sub_25F3C353C();
  v75 = sub_25F3C42FC();
  if (os_log_type_enabled(v74, v75))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_25F342000, v74, v75, "UVBSEndpointMonitor did create shell connection for JIT bootstrap agent", v77, 2u);
    MEMORY[0x25F8DC6C0](v77, -1, -1);
  }

  v39(v73, v40);
  v100 = *(v97 + OBJC_IVAR____TtC17PreviewsInjection19UVBSEndpointMonitor_jitBootstrapAgent);
  swift_getKeyPath();
  type metadata accessor for JITBootstrapAgent();
  v78 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v78 + 112) = v72;
  v79 = sub_25F3C41EC();
  v80 = v84;
  (*(*(v79 - 8) + 56))(v84, 1, 1, v79);
  v81 = swift_allocObject();
  v81[2] = 0;
  v81[3] = 0;
  v81[4] = v78;

  sub_25F3823F4(0, 0, v80, &unk_25F3C7950, v81);

  v98 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A68);
  sub_25F34A598(&qword_27FD67A70, &qword_27FD67A68);
  sub_25F3C31BC();

  return (*(v94 + 8))(v50, v5);
}

id UVBSEndpointMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25F383B40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F34905C;

  return sub_25F383BD0();
}

uint64_t sub_25F383BD0()
{
  v1[2] = v0;
  v2 = sub_25F3C25BC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B00);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B70);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B78);
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B80);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B88);
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F383E38, v0, 0);
}

uint64_t sub_25F383E38()
{
  sub_25F3C212C();
  sub_25F38AC80(&qword_27FD67B90, MEMORY[0x277D40DF8]);
  sub_25F3C20DC();
  sub_25F3C421C();
  v1 = sub_25F38AC80(&qword_27FD67B98, type metadata accessor for ControlAgent);
  v0[17] = v1;
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_25F383FA0;
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2822003E8](v4, v2, v1, v5);
}

uint64_t sub_25F383FA0()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25F3840B0, v1, 0);
}

uint64_t sub_25F3840B0()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[9];
    v8 = v0[2];
    sub_25F364B7C(v1, v7, &qword_27FD67B70);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = sub_25F3C2EBC();
    v0[21] = v11;
    *v10 = v0;
    v10[1] = sub_25F384294;
    v12 = v0[6];

    return MEMORY[0x2821A0DA0](v12, &unk_25F3C7B38, v9, v11);
  }
}

uint64_t sub_25F384294()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25F3843C0, v1, 0);
}

uint64_t sub_25F3843C0()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_25F3C215C();
  sub_25F3C258C();
  (*(v4 + 8))(v3, v5);
  sub_25F349AA8(v2, &qword_27FD67B00);
  sub_25F349AA8(v1, &qword_27FD67B70);
  v6 = v0[17];
  v7 = v0[2];
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_25F383FA0;
  v9 = v0[10];
  v10 = v0[11];

  return MEMORY[0x2822003E8](v9, v7, v6, v10);
}

uint64_t sub_25F384530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = sub_25F3C291C();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B70);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F384640, a3, 0);
}

uint64_t sub_25F384640()
{
  sub_25F355568(*(v0 + 24), *(v0 + 80), &qword_27FD67B70);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v16 = *(v0 + 80);
    v17 = *v16;
    *(v0 + 136) = *v16;
    v18 = v16[1];
    *(v0 + 144) = v18;
    v19 = v16[2];
    *(v0 + 152) = v19;
    *(v0 + 260) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67BA0) + 64);
    v20 = *(v0 + 32);
    if (v19)
    {
      if (v19 != 1)
      {
        if (v19 == 2)
        {
          v21 = swift_task_alloc();
          *(v0 + 208) = v21;
          *(v21 + 16) = v20;
          *(v21 + 24) = v17;
          v22 = swift_task_alloc();
          *(v0 + 216) = v22;
          *v22 = v0;
          v22[1] = sub_25F3854F4;
          v11 = *(v0 + 32);
          v12 = *(v0 + 16);
          v14 = &unk_25F3C7B68;
          v13 = 0xD000000000000015;
          v15 = 0x800000025F3CC190;
          goto LABEL_20;
        }

        v34 = swift_task_alloc();
        *(v0 + 160) = v34;
        v34[2] = v20;
        v34[3] = v17;
        v34[4] = v18;
        v34[5] = v19;
        v35 = swift_task_alloc();
        *(v0 + 168) = v35;
        *v35 = v0;
        v35[1] = sub_25F385030;
        v11 = *(v0 + 32);
        v12 = *(v0 + 16);
        v14 = &unk_25F3C7B78;
        v15 = 0x800000025F3CC1B0;
LABEL_19:
        v13 = 0xD000000000000014;
        goto LABEL_20;
      }

      v28 = "dequeueMessages()";
      v29 = swift_task_alloc();
      *(v0 + 232) = v29;
      *(v29 + 16) = v20;
      *(v29 + 24) = v17;
      v30 = swift_task_alloc();
      *(v0 + 240) = v30;
      *v30 = v0;
      v30[1] = sub_25F3856EC;
      v11 = *(v0 + 32);
      v12 = *(v0 + 16);
      v31 = &unk_25F3C7B50;
    }

    else
    {
      v28 = "scene agent creation";
      v32 = swift_task_alloc();
      *(v0 + 184) = v32;
      *(v32 + 16) = v20;
      *(v32 + 24) = v17;
      v33 = swift_task_alloc();
      *(v0 + 192) = v33;
      *v33 = v0;
      v33[1] = sub_25F385164;
      v11 = *(v0 + 32);
      v12 = *(v0 + 16);
      v31 = &unk_25F3C7B88;
    }

    v14 = v31;
    v15 = v28 | 0x8000000000000000;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 48);
    *(v0 + 256) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67BA8) + 48);
    sub_25F3C211C();
    v4 = swift_getEnumCaseMultiPayload();
    v5 = *(v3 + 32);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    if (v4 == 1)
    {
      v8 = *(v0 + 56);
      v5(v8, v2, v6);
      v9 = swift_task_alloc();
      *(v0 + 112) = v9;
      *(v9 + 16) = v7;
      *(v9 + 24) = v8;
      v10 = swift_task_alloc();
      *(v0 + 120) = v10;
      *v10 = v0;
      v10[1] = sub_25F384D48;
      v11 = *(v0 + 32);
      v12 = *(v0 + 16);
      v13 = 0xD000000000000010;
      v14 = &unk_25F3C7BA0;
      v15 = 0x800000025F3CC1F0;
LABEL_20:

      return sub_25F385E04(v12, v13, v15, v11, v14);
    }

    v24 = *(v0 + 64);
    v5(v24, v2, v6);
    v25 = swift_task_alloc();
    *(v0 + 88) = v25;
    *(v25 + 16) = v7;
    *(v25 + 24) = v24;
    v26 = swift_task_alloc();
    *(v0 + 96) = v26;
    *v26 = v0;
    v26[1] = sub_25F384B50;
    v27 = *(v0 + 16);

    return sub_25F3864F0(v27, 0x79706F63206C7275, 0xE800000000000000, &unk_25F3C7BB0);
  }

  else
  {
    v23 = *(v0 + 72);

    return MEMORY[0x2821FDEB8](v23, v23);
  }
}

uint64_t sub_25F384B50()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_25F3858E4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25F384C78;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F384C78()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);
  (*(*(v0 + 48) + 8))(*(v0 + 64), *(v0 + 40));
  v3 = sub_25F3C25BC();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F384D48()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_25F384F40;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25F384E70;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F384E70()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);
  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  v3 = sub_25F3C25BC();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F384F40()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);

  (*(v4 + 8))(v3, v5);
  v6 = sub_25F3C25BC();
  (*(*(v6 - 8) + 8))(v2 + v1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F385030()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[4];
    v4 = sub_25F38541C;
  }

  else
  {
    v5 = v2[19];
    v6 = v2[18];
    v7 = v2[4];
    sub_25F38B438(v6, v5);

    v4 = sub_25F38535C;
    v3 = v7;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F385164()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_25F38528C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25F38BBF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F38528C()
{
  v1 = *(v0 + 260);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);

  v4 = sub_25F3C25BC();
  (*(*(v4 - 8) + 8))(v3 + v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F38535C()
{
  v1 = *(v0 + 260);
  v2 = *(v0 + 80);

  v3 = sub_25F3C25BC();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F38541C()
{
  v1 = *(v0 + 260);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);
  sub_25F38B438(*(v0 + 144), *(v0 + 152));

  v4 = sub_25F3C25BC();
  (*(*(v4 - 8) + 8))(v3 + v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F3854F4()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_25F38561C;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25F38BBF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F38561C()
{
  v1 = *(v0 + 260);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);

  v4 = sub_25F3C25BC();
  (*(*(v4 - 8) + 8))(v3 + v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F3856EC()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_25F385814;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25F38BBF8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F385814()
{
  v1 = *(v0 + 260);
  v2 = *(v0 + 136);
  v3 = *(v0 + 80);

  v4 = sub_25F3C25BC();
  (*(*(v4 - 8) + 8))(v3 + v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_25F3858E4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);

  (*(v5 + 8))(v3, v4);
  v6 = sub_25F3C25BC();
  (*(*(v6 - 8) + 8))(v2 + v1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F3859D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25F3859F0, a2, 0);
}

uint64_t sub_25F3859F0()
{
  v1 = *(v0 + 16);
  v1[3] = sub_25F3C25FC();
  v1[4] = sub_25F38AC80(&qword_27FD67BB0, MEMORY[0x277D40930]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  sub_25F387A84(boxed_opaque_existential_1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F385AD4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F385AF8, a1, 0);
}

uint64_t sub_25F385AF8()
{
  sub_25F388448(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F385B74(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F34905C;

  return sub_25F38678C(a2);
}

uint64_t sub_25F385C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F351058;

  return sub_25F386B18(a2, a3, a4);
}

uint64_t sub_25F385CC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F385CE8, a1, 0);
}

uint64_t sub_25F385CE8()
{
  sub_25F387724();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F385D64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F385D88, a1, 0);
}

uint64_t sub_25F385D88()
{
  sub_25F38737C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F385E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5[9] = a3;
  v5[10] = a4;
  v5[7] = a1;
  v5[8] = a2;
  v7 = sub_25F3C354C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v10 = (a5 + *a5);
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_25F385F68;

  return v10();
}

uint64_t sub_25F385F68()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_25F3862C8;
  }

  else
  {
    v4 = sub_25F386084;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F386084()
{
  v1 = v0[10];
  v2 = sub_25F3C2EBC();
  v3 = MEMORY[0x277D40440];
  v0[5] = v2;
  v0[6] = v3;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();

  return MEMORY[0x2822009F8](sub_25F38610C, v1, 0);
}

uint64_t sub_25F38610C()
{
  v14 = v0;
  sub_25F3C351C();

  v1 = sub_25F3C353C();
  v2 = sub_25F3C42FC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  if (v3)
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_25F369EE8(v8, v7, &v13);
    _os_log_impl(&dword_25F342000, v1, v2, "ControlAgent: %{public}s succeeded", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8DC6C0](v10, -1, -1);
    MEMORY[0x25F8DC6C0](v9, -1, -1);
  }

  (*(v6 + 8))(v4, v5);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_25F3C315C();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F3862C8()
{
  v22 = v0;
  v1 = v0[16];
  sub_25F3C351C();

  v2 = v1;
  v3 = sub_25F3C353C();
  v4 = sub_25F3C431C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[12];
    v19 = v0[11];
    v20 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_25F369EE8(v7, v8, &v21);
    *(v9 + 12) = 2114;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_25F342000, v3, v4, "ControlAgent: %{public}s failed: %{public}@", v9, 0x16u);
    sub_25F349AA8(v10, &qword_27FD67A50);
    MEMORY[0x25F8DC6C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x25F8DC6C0](v11, -1, -1);
    MEMORY[0x25F8DC6C0](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_25F3864F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5[9] = a3;
  v5[10] = v4;
  v5[7] = a1;
  v5[8] = a2;
  v7 = sub_25F3C354C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_25F386660;

  return v10(v5 + 2);
}

uint64_t sub_25F386660()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_25F38BBE0;
  }

  else
  {
    v4 = sub_25F38610C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F38678C(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  v2[17] = swift_task_alloc();
  v3 = sub_25F3C2EBC();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_25F3C209C();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3868E0, v1, 0);
}

uint64_t sub_25F3868E0()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A58);
  (*(v2 + 104))(v1, *MEMORY[0x277D40D00], v3);
  _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();
  v7 = sub_25F3C20EC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v10 = sub_25F3C41EC();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  sub_25F38B094(v9 + 120, v0 + 16);
  v11 = swift_allocObject();
  v12 = *(v0 + 48);
  *(v11 + 88) = *(v0 + 64);
  v13 = *(v0 + 96);
  *(v11 + 104) = *(v0 + 80);
  *(v11 + 120) = v13;
  v14 = *(v0 + 32);
  *(v11 + 40) = *(v0 + 16);
  *(v11 + 56) = v14;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v7;
  *(v11 + 136) = *(v0 + 112);
  *(v11 + 72) = v12;
  sub_25F3823F4(0, 0, v8, &unk_25F3C7B08, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25F386B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_25F3C2EBC();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_25F3C209C();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_25F3C2DBC();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v8 = sub_25F3C354C();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F386CF0, v3, 0);
}

uint64_t sub_25F386CF0()
{
  v21 = v0;
  sub_25F3C351C();

  v1 = sub_25F3C353C();
  v2 = sub_25F3C42FC();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  if (v3)
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_25F369EE8(v8, v7, &v20);
    _os_log_impl(&dword_25F342000, v1, v2, "ControlAgent creating preview scene agent for %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8DC6C0](v10, -1, -1);
    MEMORY[0x25F8DC6C0](v9, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v11 = v0[11];
  v12 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v19 = v0[6];

  sub_25F3C2DAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A58);
  (*(v13 + 104))(v11, *MEMORY[0x277D40D08], v12);
  sub_25F38AC80(&qword_27FD67B68, MEMORY[0x277D40F20]);
  sub_25F3C315C();
  v0[18] = sub_25F3C20EC();
  (*(v15 + 8))(v14, v19);
  (*(v13 + 8))(v11, v12);
  v0[19] = sub_25F3C2C0C();
  v0[20] = sub_25F3C41CC();
  v0[21] = sub_25F3C41BC();
  v17 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F387040, v17, v16);
}

uint64_t sub_25F387040()
{
  v1 = *(v0 + 40);

  *(v0 + 176) = sub_25F3C2BFC();

  return MEMORY[0x2822009F8](sub_25F3870B8, v1, 0);
}

uint64_t sub_25F3870B8()
{
  v1 = v0[18];
  v2 = v0[5];
  v3 = swift_allocObject();
  v0[23] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  v0[24] = sub_25F3C41BC();
  v5 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F387180, v5, v4);
}

uint64_t sub_25F387180()
{
  v1 = *(v0 + 40);

  sub_25F3C2BEC();

  return MEMORY[0x2822009F8](sub_25F387238, v1, 0);
}

uint64_t sub_25F387238()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3872F0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_25F364718(a3 + 240, v7);
  type metadata accessor for PreviewSceneAgent();
  swift_allocObject();
  v5 = a1;

  sub_25F3641EC(v5, a2, v7);
}

uint64_t sub_25F38737C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v1 - 8);
  v21 = &v20 - v2;
  v24 = sub_25F3C2EBC();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3C209C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A58);
  v11 = *MEMORY[0x277D40D28];
  v12 = sub_25F3C208C();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  (*(v7 + 104))(v9, *MEMORY[0x277D40CE8], v6);
  _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();
  v13 = sub_25F3C20EC();
  if (v0)
  {
    (*(v3 + 8))(v5, v24);
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v15 = v13;
    (*(v3 + 8))(v5, v24);
    (*(v7 + 8))(v9, v6);
    v16 = *(v20 + 224);
    v23[3] = v10;
    v23[4] = sub_25F34A598(&qword_27FD67B60, &qword_27FD67A58);
    v23[0] = v15;
    v17 = sub_25F3C41EC();
    v18 = v21;
    (*(*(v17 - 8) + 56))(v21, 1, 1, v17);
    sub_25F349E38(v23, v22);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v16;
    sub_25F3440A0(v22, (v19 + 5));

    sub_25F3823F4(0, 0, v18, &unk_25F3C7B00, v19);

    return __swift_destroy_boxed_opaque_existential_0Tm(v23);
  }
}

uint64_t sub_25F387724()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = v19 - v2;
  v3 = sub_25F3C2EBC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3C209C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67A58);
  (*(v8 + 104))(v10, *MEMORY[0x277D40CF0], v7);
  _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();
  v12 = sub_25F3C20EC();
  if (v0)
  {
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    v14 = v12;
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    v15 = *(v19[1] + 232);
    v21[3] = v11;
    v21[4] = sub_25F34A598(&qword_27FD67B60, &qword_27FD67A58);
    v21[0] = v14;
    v16 = sub_25F3C41EC();
    v17 = v22;
    (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
    sub_25F349E38(v21, v20);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v15;
    sub_25F3440A0(v20, (v18 + 5));

    sub_25F3823F4(0, 0, v17, &unk_25F3C7AF8, v18);

    return __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }
}

uint64_t sub_25F387A84@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v85 = type metadata accessor for ControlAgent.FailedToCopyURLError(0);
  MEMORY[0x28223BE20](v85);
  v84 = &v75[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_25F3C354C();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  v93 = &v75[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_25F3C1F4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v75[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_25F3C1F2C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v75[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v91 = &v75[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75[-v15];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75[-v18];
  MEMORY[0x28223BE20](v17);
  v21 = &v75[-v20];
  sub_25F3C290C();
  if (sub_25F3C1F0C())
  {
    v81 = objc_opt_self();
    v22 = [v81 defaultManager];
    v23 = [v22 temporaryDirectory];
    v89 = v9;
    v24 = v23;

    sub_25F3C1EFC();
    v25 = sub_25F3C1EBC();
    v90 = v8;
    v27 = v26;
    sub_25F3C1F3C();
    sub_25F38AC80(&qword_27FD67B50, MEMORY[0x277CC95F0]);
    v94[0] = sub_25F3C455C();
    v94[1] = v28;
    (*(v5 + 8))(v7, v4);
    MEMORY[0x25F8DB8E0](95, 0xE100000000000000);
    MEMORY[0x25F8DB8E0](v25, v27);
    v29 = v90;

    sub_25F3C1E8C();

    sub_25F3C351C();
    v30 = v89;
    v31 = v89 + 16;
    v32 = *(v89 + 16);
    v82 = v21;
    v32(v91, v21, v29);
    v86 = v16;
    v80 = v31;
    v79 = v32;
    v32(v92, v16, v29);
    v33 = sub_25F3C353C();
    v34 = sub_25F3C42FC();
    v35 = v19;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v78 = v19;
      v37 = v36;
      v77 = swift_slowAlloc();
      v94[0] = v77;
      *v37 = 136315394;
      v38 = v91;
      v39 = sub_25F3C1F1C();
      v41 = v40;
      v76 = v34;
      v42 = *(v30 + 8);
      (v42)(v38, v90);
      v43 = sub_25F369EE8(v39, v41, v94);
      v29 = v90;

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      v44 = v92;
      v45 = sub_25F3C1F1C();
      v47 = v46;
      v92 = v42;
      (v42)(v44, v29);
      v48 = sub_25F369EE8(v45, v47, v94);

      *(v37 + 14) = v48;
      _os_log_impl(&dword_25F342000, v33, v76, "Attempting copy of %s to %s", v37, 0x16u);
      v49 = v77;
      swift_arrayDestroy();
      MEMORY[0x25F8DC6C0](v49, -1, -1);
      v50 = v37;
      v35 = v78;
      MEMORY[0x25F8DC6C0](v50, -1, -1);
    }

    else
    {

      v53 = *(v30 + 8);
      (v53)(v92, v29);
      v92 = v53;
      (v53)(v91, v29);
    }

    (*(v87 + 8))(v93, v88);
    v54 = [v81 defaultManager];
    v55 = v82;
    v56 = sub_25F3C1ECC();
    v57 = v86;
    v58 = sub_25F3C1ECC();
    v94[0] = 0;
    v59 = [v54 copyItemAtURL:v56 toURL:v58 error:v94];

    if (v59)
    {
      v60 = v94[0];
      sub_25F3C1F1C();
      sub_25F3C25EC();
      v61 = v92;
      (v92)(v57, v29);
      v61(v35, v29);
      sub_25F3C1EEC();
      return (v61)(v55, v29);
    }

    else
    {
      v62 = v94[0];
      v63 = sub_25F3C1E7C();

      swift_willThrow();
      v64 = v84;
      v65 = v79;
      v79(v84, v55, v29);
      v65(v64 + *(v85 + 20), v57, v29);
      v66 = v63;
      sub_25F38AC80(&qword_27FD67B58, type metadata accessor for ControlAgent.FailedToCopyURLError);
      sub_25F3C2FEC();

      sub_25F38AE68(v64);
      v67 = v95;
      v68 = __swift_project_boxed_opaque_existential_1(v94, v95);
      v69 = *(v67 - 8);
      MEMORY[0x28223BE20](v68);
      v71 = &v75[-((v70 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v69 + 16))(v71);
      if (sub_25F3C456C())
      {
        (*(v69 + 8))(v71, v67);
      }

      else
      {
        swift_allocError();
        (*(v69 + 32))(v72, v71, v67);
      }

      swift_willThrow();

      v73 = v90;
      v74 = v92;
      (v92)(v86, v90);
      v74(v35, v73);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      sub_25F3C1EEC();
      return (v74)(v55, v73);
    }
  }

  else
  {
    type metadata accessor for ControlAgent.FailedToAccessSecurityScopedResourceError(0);
    sub_25F38AC80(&qword_27FD67B48, type metadata accessor for ControlAgent.FailedToAccessSecurityScopedResourceError);
    swift_allocError();
    (*(v9 + 16))(v51, v21, v8);
    swift_willThrow();
    return (*(v9 + 8))(v21, v8);
  }
}

uint64_t sub_25F388448(uint64_t a1)
{
  v3 = sub_25F3C354C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F3C291C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F3C1F2C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v38 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  sub_25F3C290C();
  if (sub_25F3C1F0C())
  {
    v37 = v9;
    (*(v6 + 16))(v8, a1, v5);
    swift_beginAccess();
    v15 = *(v1 + 344);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 344) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_25F37A2D8(0, v15[2] + 1, 1, v15);
      *(v1 + 344) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_25F37A2D8(v17 > 1, v18 + 1, 1, v15);
    }

    v15[2] = v18 + 1;
    (*(v6 + 32))(v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v8, v5);
    *(v1 + 344) = v15;
    swift_endAccess();
    v19 = v42;
    sub_25F3C351C();
    v20 = v37;
    v21 = v38;
    (*(v10 + 16))(v38, v14, v37);
    v22 = sub_25F3C353C();
    v23 = sub_25F3C42FC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41[0] = v25;
      *v24 = 136315138;
      v26 = sub_25F3C1F1C();
      v28 = v27;
      v36 = *(v10 + 8);
      v29 = v21;
      v30 = v37;
      v36(v29, v37);
      v31 = sub_25F369EE8(v26, v28, v41);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_25F342000, v22, v23, "Consumed execute permissions extension for: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x25F8DC6C0](v25, -1, -1);
      MEMORY[0x25F8DC6C0](v24, -1, -1);

      (*(v39 + 8))(v42, v40);
      return (v36)(v14, v30);
    }

    else
    {

      v34 = *(v10 + 8);
      v34(v21, v20);
      (*(v39 + 8))(v19, v40);
      return (v34)(v14, v20);
    }
  }

  else
  {
    type metadata accessor for ControlAgent.FailedToAccessSecurityScopedResourceError(0);
    sub_25F38AC80(&qword_27FD67B48, type metadata accessor for ControlAgent.FailedToAccessSecurityScopedResourceError);
    swift_allocError();
    (*(v10 + 16))(v33, v14, v9);
    swift_willThrow();
    return (*(v10 + 8))(v14, v9);
  }
}

unint64_t sub_25F38896C()
{
  sub_25F3C445C();

  v0 = sub_25F3C1F1C();
  MEMORY[0x25F8DB8E0](v0);

  return 0xD000000000000011;
}

uint64_t sub_25F3889EC(uint64_t a1)
{
  v2 = sub_25F38AC80(&qword_27FD67C38, type metadata accessor for ControlAgent.FailedToAccessSecurityScopedResourceError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F388A58(uint64_t a1)
{
  v2 = sub_25F38AC80(&qword_27FD67C38, type metadata accessor for ControlAgent.FailedToAccessSecurityScopedResourceError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F388AC4()
{
  sub_25F3C445C();

  v0 = sub_25F3C1F1C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](544175136, 0xE400000000000000);
  type metadata accessor for ControlAgent.FailedToCopyURLError(0);
  v1 = sub_25F3C1F1C();
  MEMORY[0x25F8DB8E0](v1);

  return 0x742064656C696146;
}

uint64_t sub_25F388B98(uint64_t a1)
{
  v2 = sub_25F38AC80(&qword_27FD67B58, type metadata accessor for ControlAgent.FailedToCopyURLError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F388C04(uint64_t a1)
{
  v2 = sub_25F38AC80(&qword_27FD67B58, type metadata accessor for ControlAgent.FailedToCopyURLError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F388C70()
{

  sub_25F38B628(v0 + 120);

  sub_25F36486C(v0 + 240);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F388CD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F351058;

  return sub_25F388D60();
}

uint64_t sub_25F388D60()
{
  v1[2] = v0;
  v2 = sub_25F3C25BC();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B00);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B08);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B10);
  v1[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B18);
  v1[11] = v4;
  v1[12] = *(v4 - 8);
  v1[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B20);
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F388FC8, v0, 0);
}

uint64_t sub_25F388FC8()
{
  sub_25F3C216C();
  sub_25F38AC80(&qword_27FD67B28, MEMORY[0x277D40E20]);
  sub_25F3C20DC();
  sub_25F3C421C();
  v1 = sub_25F38AC80(&qword_27FD67B30, type metadata accessor for JITBootstrapAgent);
  v0[17] = v1;
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_25F389130;
  v4 = v0[10];
  v5 = v0[11];

  return MEMORY[0x2822003E8](v4, v2, v1, v5);
}

uint64_t sub_25F389130()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25F389240, v1, 0);
}

uint64_t sub_25F389240()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) == 1)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[14];
    (*(v0[12] + 8))(v0[13], v0[11]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[9];
    v8 = v0[2];
    sub_25F364B7C(v1, v7, &qword_27FD67B08);
    v9 = swift_task_alloc();
    v0[19] = v9;
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = sub_25F3C2EBC();
    v0[21] = v11;
    *v10 = v0;
    v10[1] = sub_25F389424;
    v12 = v0[6];

    return MEMORY[0x2821A0DA0](v12, &unk_25F3C7AD8, v9, v11);
  }
}

uint64_t sub_25F389424()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](sub_25F389550, v1, 0);
}

uint64_t sub_25F389550()
{
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  sub_25F3C215C();
  sub_25F3C258C();
  (*(v4 + 8))(v3, v5);
  sub_25F349AA8(v2, &qword_27FD67B00);
  sub_25F349AA8(v1, &qword_27FD67B08);
  v6 = v0[17];
  v7 = v0[2];
  v8 = swift_task_alloc();
  v0[18] = v8;
  *v8 = v0;
  v8[1] = sub_25F389130;
  v9 = v0[10];
  v10 = v0[11];

  return MEMORY[0x2822003E8](v9, v7, v6, v10);
}

uint64_t sub_25F3896C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = sub_25F3C20CC();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B08);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F3897C4, a3, 0);
}

uint64_t sub_25F3897C4()
{
  sub_25F355568(*(v0 + 24), *(v0 + 72), &qword_27FD67B08);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v1 = *(v0 + 72);
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *v1;
    *(v0 + 80) = *v1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67B38);
    v8 = *(v7 + 48);
    *(v0 + 112) = *(v7 + 64);
    (*(v3 + 32))(v2, &v1[v8], v4);
    v9 = swift_task_alloc();
    *(v0 + 88) = v9;
    v9[2] = v5;
    v9[3] = v6;
    v9[4] = v2;
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v10[1] = sub_25F389970;
    v11 = *(v0 + 16);

    return sub_25F389D74(v11, 0x6E6E6F632054494ALL, 0xEE006E6F69746365, &unk_25F3C7AF0);
  }

  else
  {
    v13 = *(v0 + 64);

    return MEMORY[0x2821FDEB8](v13, v13);
  }
}

uint64_t sub_25F389970()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_25F389B78;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_25F389A98;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F389A98()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);

  (*(v4 + 8))(v3, v5);
  v6 = sub_25F3C25BC();
  (*(*(v6 - 8) + 8))(v2 + v1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F389B78()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 40);

  (*(v4 + 8))(v3, v5);
  v6 = sub_25F3C25BC();
  (*(*(v6 - 8) + 8))(v2 + v1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25F389C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25F389C84, a2, 0);
}

uint64_t sub_25F389C84()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = sub_25F3C20BC();
  v2[4] = sub_25F38AC80(&qword_27FD67B40, MEMORY[0x277D40D58]);
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_25F38A3F4(v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F389D74(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v5[9] = a3;
  v5[10] = v4;
  v5[7] = a1;
  v5[8] = a2;
  v7 = sub_25F3C354C();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v5[15] = v8;
  *v8 = v5;
  v8[1] = sub_25F389EE4;

  return v10(v5 + 2);
}

uint64_t sub_25F389EE4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_25F38A1CC;
  }

  else
  {
    v4 = sub_25F38A010;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F38A010()
{
  v14 = v0;
  sub_25F3C351C();

  v1 = sub_25F3C353C();
  v2 = sub_25F3C42FC();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  if (v3)
  {
    v8 = v0[8];
    v7 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_25F369EE8(v8, v7, &v13);
    _os_log_impl(&dword_25F342000, v1, v2, "JITBootstrapAgent: %{public}s succeeded", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x25F8DC6C0](v10, -1, -1);
    MEMORY[0x25F8DC6C0](v9, -1, -1);
  }

  (*(v6 + 8))(v4, v5);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_25F3C315C();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));

  v11 = v0[1];

  return v11();
}

uint64_t sub_25F38A1CC()
{
  v22 = v0;
  v1 = v0[16];
  sub_25F3C351C();

  v2 = v1;
  v3 = sub_25F3C353C();
  v4 = sub_25F3C431C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = v0[12];
    v19 = v0[11];
    v20 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_25F369EE8(v7, v8, &v21);
    *(v9 + 12) = 2114;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    *v10 = v13;
    _os_log_impl(&dword_25F342000, v3, v4, "JITBootstrapAgent: %{public}s failed: %{public}@", v9, 0x16u);
    sub_25F349AA8(v10, &qword_27FD67A50);
    MEMORY[0x25F8DC6C0](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x25F8DC6C0](v11, -1, -1);
    MEMORY[0x25F8DC6C0](v9, -1, -1);

    (*(v6 + 8))(v20, v19);
  }

  else
  {
    v15 = v0[12];
    v14 = v0[13];
    v16 = v0[11];

    (*(v15 + 8))(v14, v16);
  }

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_25F38A3F4(uint64_t a1)
{
  v3 = sub_25F3C354C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C352C();
  v7 = sub_25F3C353C();
  v8 = sub_25F3C42FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_25F342000, v7, v8, "Received request to connect JIT.", v9, 2u);
    MEMORY[0x25F8DC6C0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (qword_27FD66ED8 != -1)
  {
    swift_once();
  }

  result = sub_25F37A77C(a1);
  if (!v1)
  {
    return sub_25F3C20AC();
  }

  return result;
}

uint64_t sub_25F38A594()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F38A5CC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_25F38A604(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t _s17PreviewsInjection19UVBSEndpointMonitorC08activateD0yyFZ_0()
{
  v0 = sub_25F3C354C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v4 = sub_25F3C353C();
  v5 = sub_25F3C433C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F342000, v4, v5, "UVBSEndpointMonitor activating", v6, 2u);
    MEMORY[0x25F8DC6C0](v6, -1, -1);
  }

  result = (*(v1 + 8))(v3, v0);
  if (qword_281561B78 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_25F38A800()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F351058;

  return sub_25F388CD0();
}

void *sub_25F38A8D8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  swift_defaultActor_initialize();
  v7 = MEMORY[0x277D84F90];
  v2[43] = MEMORY[0x277D84F90];
  v2[14] = a1;
  v8 = type metadata accessor for RegistryLocator();
  v9 = swift_allocObject();

  swift_defaultActor_initialize();
  v9[14] = 0;
  v9[15] = sub_25F353BA8(v7);
  v9[16] = 0;
  type metadata accessor for DynamicProductLoader();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = MEMORY[0x277D84FA0];
  *(v10 + 32) = sub_25F3544D4(v7);
  type metadata accessor for EntryPointIndex();
  swift_allocObject();
  v11 = sub_25F3A4BA0();
  type metadata accessor for ModifierContextCache();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_25F35350C(v7);
  *(v12 + 24) = v7;
  v2[36] = v8;
  v2[37] = &off_287171D20;
  v2[33] = v9;
  v2[41] = &type metadata for PreviewLocator;
  v2[42] = &off_287170158;
  v13 = swift_allocObject();
  v2[38] = v13;
  v13[5] = v8;
  v13[6] = &off_287171D20;
  v13[2] = v9;
  v2[30] = v10;
  v2[31] = v11;
  v2[32] = v12;
  sub_25F364718((v2 + 30), (v2 + 15));
  type metadata accessor for HostMessagePipeAgent();
  v14 = swift_allocObject();
  type metadata accessor for AgentCache();
  v15 = swift_allocObject();
  v21[1] = MEMORY[0x277D84F98];
  swift_retain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67BC8);
  *(v15 + 16) = sub_25F3C34FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67BD0);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v11;
  *(v14 + 16) = sub_25F3C228C();
  v2[28] = v14;
  type metadata accessor for ShellMessagePipeAgent();
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD67BD8);

  *(v17 + 16) = sub_25F3C228C();
  v2[29] = v17;
  v18 = sub_25F3C41EC();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v2;

  sub_25F3823F4(0, 0, v6, &unk_25F3C7BF8, v19);

  return v2;
}

uint64_t sub_25F38AC80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F38ACC8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F351058;

  return sub_25F3896C0(a1, v5, v4);
}

uint64_t sub_25F38AD74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F351058;

  return sub_25F389C64(a1, v4, v5, v6);
}

uint64_t sub_25F38AE68(uint64_t a1)
{
  v2 = type metadata accessor for ControlAgent.FailedToCopyURLError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F38AEC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F351058;

  return sub_25F35F168(a1, v4, v5, v6, (v1 + 5));
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_25F38AFCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F351058;

  return sub_25F36DA78(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25F38B0F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F351058;

  return sub_25F38D344(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_25F38B1B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F351058;

  return sub_25F384530(a1, v5, v4);
}

uint64_t sub_25F38B25C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25F351058;

  return sub_25F385D64(v2, v3);
}

uint64_t sub_25F38B2F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25F351058;

  return sub_25F385CC4(v2, v3);
}

uint64_t sub_25F38B38C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25F351058;

  return sub_25F385C10(v2, v3, v5, v4);
}

uint64_t sub_25F38B438(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_25F38B44C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25F351058;

  return sub_25F385B74(v2, v3);
}

uint64_t sub_25F38B4E4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25F351058;

  return sub_25F385AD4(v2, v3);
}

uint64_t sub_25F38B57C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F34905C;

  return sub_25F3859D0(a1, v5, v4);
}

uint64_t objectdestroy_34Tm()
{

  return swift_deallocObject();
}

uint64_t sub_25F38B6BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F351058;

  return sub_25F36CF28(a1, a2, v7, v6);
}

uint64_t sub_25F38B76C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F351058;

  return sub_25F35ED04(a1, a2, v2);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_25F38B854()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25F34905C;

  return sub_25F383B40();
}

uint64_t sub_25F38B930()
{
  result = sub_25F3C1F2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F38B9C4()
{
  result = sub_25F3C1F2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F38BC24()
{
  sub_25F38CFA0();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_25F38BC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x2822009F8](sub_25F38BCB0, 0, 0);
}

uint64_t sub_25F38BCB0()
{
  *(v0 + 48) = sub_25F3C41BC();
  v2 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F38BD3C, v2, v1);
}

uint64_t sub_25F38BD3C()
{
  v1 = *(v0 + 24);

  v1(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25F38BDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F34905C;

  return NonUIEntryPoint.update(with:services:)(a1, a2, v10, a4, a5);
}

uint64_t NonUIEntryPoint.update(with:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a4;
  v6[3] = a1;
  return MEMORY[0x2822009F8](sub_25F38BEBC, 0, 0);
}

uint64_t sub_25F38BEBC()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_25F3C41CC();
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 48);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  swift_getAssociatedTypeWitness();
  v5 = sub_25F3C320C();
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_25F38BFF4;

  return (sub_25F38BC8C)(v0 + 16, v5, sub_25F38CCC0, v3, v5);
}

uint64_t sub_25F38BFF4()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_25F38C328;
  }

  else
  {

    v2 = sub_25F38C110;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F38C110()
{
  v0[11] = v0[2];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_25F38C1B0;
  v2 = v0[3];

  return MEMORY[0x2821A0BA0](v2);
}

uint64_t sub_25F38C1B0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_25F38C38C;
  }

  else
  {
    v2 = sub_25F38C2C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F38C2C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38C328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38C38C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v8 = sub_25F3C2EBC();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = *(a5 + 8);
  updated = type metadata accessor for UpdatePayloadError();
  v6[17] = updated;
  v6[18] = *(updated - 8);
  v6[19] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[20] = AssociatedTypeWitness;
  v6[21] = *(AssociatedTypeWitness - 8);
  v6[22] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v6[23] = v11;
  v6[24] = *(v11 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F38C648, 0, 0);
}

uint64_t sub_25F38C648()
{
  (*(v0[16] + 64))(v0[8]);
  v9 = v0[11];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);
  v8 = (*(v9 + 24) + **(v9 + 24));
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_25F38C9E4;
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[10];

  return v8(v3, v2, v5, v6, v4);
}

uint64_t sub_25F38C9E4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_25F38CC08;
  }

  else
  {
    v2 = sub_25F38CAF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F38CAF8()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  (*(v0[16] + 72))(v4);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F38CC08()
{
  (*(v0[24] + 8))(v0[26], v0[23]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F38CCC0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1[3] + 32))(v1[5], v1[2]);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t dispatch thunk of NonUIEntryPoint.init()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25F34905C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of NonUIEntryPoint.update(with:services:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F34905C;

  return v13(a1, a2, a3, a4, a5);
}

unint64_t sub_25F38CFA0()
{
  result = qword_27FD67CA0;
  if (!qword_27FD67CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67CA0);
  }

  return result;
}

uint64_t sub_25F38D01C()
{
  v1 = v0;
  v2 = sub_25F3C354C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C351C();
  v6 = sub_25F3C353C();
  v7 = sub_25F3C430C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_25F342000, v6, v7, "RunningAppEntryPoint init", v8, 2u);
    MEMORY[0x25F8DC6C0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v1;
}

uint64_t sub_25F38D184@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_25F38D01C();
  *a1 = v2;
  return result;
}

uint64_t sub_25F38D1C0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD67978);
  result = sub_25F3C220C();
  *a1 = v2;
  v5 = (a1 + *(v3 + 44));
  *v5 = &unk_25F3C76D8;
  v5[1] = 0;
  return result;
}

uint64_t sub_25F38D26C(uint64_t a1)
{
  result = sub_25F38D2F4(&qword_27FD67CA8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F38D2B0(uint64_t a1)
{
  result = sub_25F38D2F4(&qword_27FD67CB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25F38D2F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RunningAppEntryPoint();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F38D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[53] = a4;
  v5[54] = a5;
  v6 = sub_25F3C2EBC();
  v5[55] = v6;
  v7 = *(v6 - 8);
  v5[56] = v7;
  v5[57] = *(v7 + 64);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v8 = sub_25F3C253C();
  v5[60] = v8;
  v9 = *(v8 - 8);
  v5[61] = v9;
  v5[62] = *(v9 + 64);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v10 = sub_25F3C271C();
  v5[65] = v10;
  v11 = *(v10 - 8);
  v5[66] = v11;
  v5[67] = *(v11 + 64);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  v5[70] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67178);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v12 = sub_25F3C25BC();
  v5[77] = v12;
  v5[78] = *(v12 - 8);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  v13 = sub_25F3C2B8C();
  v5[81] = v13;
  v14 = *(v13 - 8);
  v5[82] = v14;
  v5[83] = *(v14 + 64);
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CB8);
  v5[86] = v15;
  v5[87] = *(v15 - 8);
  v5[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CC0);
  v5[89] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CC8);
  v5[90] = v16;
  v5[91] = *(v16 - 8);
  v5[92] = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CD0);
  v5[93] = v17;
  v5[94] = *(v17 - 8);
  v5[95] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F38D7C0, 0, 0);
}

uint64_t sub_25F38D7C0()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  sub_25F3C2D8C();
  sub_25F38E7E4();
  sub_25F3C20DC();
  sub_25F3C421C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[96] = v4;
  *v4 = v0;
  v4[1] = sub_25F38D8D8;
  v5 = v0[93];
  v6 = v0[89];

  return MEMORY[0x2822003E8](v6, 0, 0, v5);
}

uint64_t sub_25F38D8D8()
{

  return MEMORY[0x2822009F8](sub_25F38D9D4, 0, 0);
}

uint64_t sub_25F38D9D4()
{
  v1 = *(v0 + 712);
  if ((*(*(v0 + 696) + 48))(v1, 1, *(v0 + 688)) == 1)
  {
    (*(*(v0 + 752) + 8))(*(v0 + 760), *(v0 + 744));

    v2 = *(v0 + 8);

    return v2();
  }

  sub_25F38E83C(v1, *(v0 + 704));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v42 = *(v0 + 704);
      v43 = *(v0 + 680);
      v119 = *(v0 + 672);
      v44 = *(v0 + 656);
      v45 = *(v0 + 648);
      v46 = *(v0 + 640);
      v47 = *(v0 + 624);
      v48 = *(v0 + 616);
      v115 = *(v0 + 608);
      v129 = *(v0 + 600);
      v116 = *(v0 + 432);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CF0) + 48);
      v124 = *(v44 + 32);
      v124(v43, v42, v45);
      (*(v47 + 32))(v46, v42 + v49, v48);
      v50 = sub_25F3C41EC();
      v51 = *(v50 - 8);
      (*(v51 + 56))(v115, 1, 1, v50);
      sub_25F38B094(v116, v0 + 224);
      v52 = v43;
      v53 = v45;
      (*(v44 + 16))(v119, v52, v45);
      v54 = (*(v44 + 80) + 136) & ~*(v44 + 80);
      v55 = swift_allocObject();
      *(v55 + 16) = 0;
      *(v55 + 24) = 0;
      v56 = *(v0 + 304);
      *(v55 + 96) = *(v0 + 288);
      *(v55 + 112) = v56;
      *(v55 + 128) = *(v0 + 320);
      v57 = *(v0 + 240);
      *(v55 + 32) = *(v0 + 224);
      *(v55 + 48) = v57;
      v58 = *(v0 + 272);
      *(v55 + 64) = *(v0 + 256);
      *(v55 + 80) = v58;
      v124(v55 + v54, v119, v53);
      sub_25F350A90(v115, v129);
      LODWORD(v47) = (*(v51 + 48))(v129, 1, v50);

      v59 = *(v0 + 600);
      if (v47 == 1)
      {
        sub_25F349AA8(*(v0 + 600), &qword_27FD67178);
      }

      else
      {
        sub_25F3C41DC();
        (*(v51 + 8))(v59, v50);
      }

      v69 = *(v55 + 16);
      swift_unknownObjectRetain();

      if (v69)
      {
        swift_getObjectType();
        v70 = sub_25F3C416C();
        v72 = v71;
        swift_unknownObjectRelease();
      }

      else
      {
        v70 = 0;
        v72 = 0;
      }

      sub_25F349AA8(*(v0 + 608), &qword_27FD67178);
      if (v72 | v70)
      {
        *(v0 + 392) = 0;
        *(v0 + 400) = 0;
        *(v0 + 408) = v70;
        *(v0 + 416) = v72;
      }

      v89 = *(v0 + 680);
      v90 = *(v0 + 656);
      v91 = *(v0 + 648);
      v92 = *(v0 + 640);
      v93 = *(v0 + 624);
      v94 = *(v0 + 616);
      swift_task_create();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67180);
      sub_25F3C259C();

      (*(v93 + 8))(v92, v94);
      (*(v90 + 8))(v89, v91);
    }

    else
    {
      v5 = *(v0 + 704);
      v122 = *(v0 + 584);
      v126 = *(v0 + 592);
      v6 = *(v0 + 560);
      v7 = *(v0 + 528);
      v8 = *(v0 + 520);
      v9 = *(v0 + 512);
      v107 = *(v0 + 552);
      v110 = *(v0 + 504);
      v10 = *(v0 + 488);
      v113 = *(v0 + 536);
      v11 = *(v0 + 480);
      v105 = *(v0 + 432);
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CE8) + 48);
      v120 = *(v7 + 32);
      v120(v6, v5, v8);
      v117 = *(v10 + 32);
      v103 = v11;
      v117(v9, v5 + v12, v11);
      v13 = sub_25F3C41EC();
      v112 = *(v13 - 8);
      (*(v112 + 56))(v126, 1, 1, v13);
      sub_25F38B094(v105, v0 + 120);
      (*(v7 + 16))(v107, v6, v8);
      (*(v10 + 16))(v110, v9, v11);
      v14 = (*(v7 + 80) + 136) & ~*(v7 + 80);
      v15 = (v113 + *(v10 + 80) + v14) & ~*(v10 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      v17 = *(v0 + 168);
      v18 = *(v0 + 200);
      *(v16 + 96) = *(v0 + 184);
      *(v16 + 112) = v18;
      *(v16 + 128) = *(v0 + 216);
      v19 = *(v0 + 136);
      *(v16 + 32) = *(v0 + 120);
      *(v16 + 48) = v19;
      *(v16 + 64) = *(v0 + 152);
      *(v16 + 80) = v17;
      v120(v16 + v14, v107, v8);
      v117(v16 + v15, v110, v103);
      sub_25F350A90(v126, v122);
      LODWORD(v15) = (*(v112 + 48))(v122, 1, v13);

      v20 = *(v0 + 584);
      if (v15 == 1)
      {
        sub_25F349AA8(*(v0 + 584), &qword_27FD67178);
      }

      else
      {
        sub_25F3C41DC();
        (*(v112 + 8))(v20, v13);
      }

      v61 = *(v16 + 16);
      swift_unknownObjectRetain();

      if (v61)
      {
        swift_getObjectType();
        v62 = sub_25F3C416C();
        v64 = v63;
        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0;
        v64 = 0;
      }

      sub_25F349AA8(*(v0 + 592), &qword_27FD67178);
      v73 = swift_allocObject();
      *(v73 + 16) = &unk_25F3C8138;
      *(v73 + 24) = v16;
      if (v64 | v62)
      {
        *(v0 + 360) = 0;
        *(v0 + 368) = 0;
        *(v0 + 376) = v62;
        *(v0 + 384) = v64;
      }

      v75 = *(v0 + 560);
      v76 = *(v0 + 528);
      v77 = *(v0 + 520);
      v78 = *(v0 + 512);
      v79 = *(v0 + 480);
      v80 = *(v0 + 488);
      swift_task_create();

      (*(v80 + 8))(v78, v79);
      (*(v76 + 8))(v75, v77);
    }

LABEL_38:
    v95 = swift_task_alloc();
    *(v0 + 768) = v95;
    *v95 = v0;
    v95[1] = sub_25F38D8D8;
    v96 = *(v0 + 744);
    v97 = *(v0 + 712);

    return MEMORY[0x2822003E8](v97, 0, 0, v96);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v21 = *(v0 + 704);
    v108 = *(v0 + 632);
    v22 = *(v0 + 624);
    v101 = *(v0 + 616);
    v127 = *(v0 + 576);
    v121 = *(v0 + 568);
    v23 = *(v0 + 544);
    v99 = v23;
    v24 = *(v0 + 528);
    v25 = *(v0 + 520);
    v26 = *(v0 + 472);
    v104 = *(v0 + 552);
    v106 = *(v0 + 464);
    v27 = *(v0 + 448);
    v111 = *(v0 + 536);
    v123 = *(v0 + 440);
    v100 = *(v0 + 432);
    v118 = *v21;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CE0);
    v29 = v21 + *(v28 + 48);
    v30 = *(v28 + 64);
    v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674D8) + 48);
    v114 = *(v24 + 32);
    v31 = v23;
    v32 = v25;
    v114(v31, v29, v25);
    (*(v22 + 32))(v108, v21 + v30, v101);
    v109 = *(v27 + 32);
    v109(v26, &v29[v98], v123);
    v33 = sub_25F3C41EC();
    v102 = *(v33 - 8);
    (*(v102 + 56))(v127, 1, 1, v33);
    sub_25F38B094(v100, v0 + 16);
    (*(v24 + 16))(v104, v99, v32);
    (*(v27 + 16))(v106, v26, v123);
    v34 = (*(v24 + 80) + 144) & ~*(v24 + 80);
    v35 = (v111 + *(v27 + 80) + v34) & ~*(v27 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v37 = *(v0 + 96);
    *(v36 + 96) = *(v0 + 80);
    *(v36 + 112) = v37;
    v38 = *(v0 + 112);
    v39 = *(v0 + 32);
    *(v36 + 32) = *(v0 + 16);
    *(v36 + 48) = v39;
    v40 = *(v0 + 64);
    *(v36 + 64) = *(v0 + 48);
    *(v36 + 80) = v40;
    *(v36 + 128) = v38;
    *(v36 + 136) = v118;
    v114(v36 + v34, v104, v32);
    v109(v36 + v35, v106, v123);
    sub_25F350A90(v127, v121);
    LODWORD(v34) = (*(v102 + 48))(v121, 1, v33);
    v128 = v118;

    v41 = *(v0 + 568);
    if (v34 == 1)
    {
      sub_25F349AA8(*(v0 + 568), &qword_27FD67178);
    }

    else
    {
      sub_25F3C41DC();
      (*(v102 + 8))(v41, v33);
    }

    v65 = *(v36 + 16);
    swift_unknownObjectRetain();

    if (v65)
    {
      swift_getObjectType();
      v66 = sub_25F3C416C();
      v68 = v67;
      swift_unknownObjectRelease();
    }

    else
    {
      v66 = 0;
      v68 = 0;
    }

    sub_25F349AA8(*(v0 + 576), &qword_27FD67178);
    v74 = swift_allocObject();
    *(v74 + 16) = &unk_25F3C8110;
    *(v74 + 24) = v36;
    if (v68 | v66)
    {
      *(v0 + 328) = 0;
      *(v0 + 336) = 0;
      *(v0 + 344) = v66;
      *(v0 + 352) = v68;
    }

    v81 = *(v0 + 632);
    v82 = *(v0 + 624);
    v83 = *(v0 + 616);
    v125 = *(v0 + 544);
    v84 = *(v0 + 528);
    v85 = *(v0 + 520);
    v86 = *(v0 + 472);
    v88 = *(v0 + 440);
    v87 = *(v0 + 448);
    swift_task_create();
    sub_25F3C25AC();

    (*(v87 + 8))(v86, v88);
    (*(v82 + 8))(v81, v83);
    (*(v84 + 8))(v125, v85);
    goto LABEL_38;
  }

  v60 = *(v0 + 688);

  return MEMORY[0x2821FDEB8](v60, v60);
}

unint64_t sub_25F38E7E4()
{
  result = qword_27FD67CD8;
  if (!qword_27FD67CD8)
  {
    sub_25F3C2D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67CD8);
  }

  return result;
}

uint64_t sub_25F38E83C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67CB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F38E8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_25F34905C;

  return sub_25F38E95C(a1, a5);
}

uint64_t sub_25F38E95C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_25F3C2EBC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67508);
  v3[13] = swift_task_alloc();
  v5 = sub_25F3C2B6C();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F38EAB4, 0, 0);
}

uint64_t sub_25F38EAB4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  sub_25F3C2B7C();
  sub_25F3C2B5C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_25F38EB94;
  v5 = v0[13];

  return sub_25F36EE50(v5);
}

uint64_t sub_25F38EB94()
{
  v2 = *(*v1 + 104);
  *(*v1 + 144) = v0;

  sub_25F349AA8(v2, &qword_27FD67508);
  if (v0)
  {
    v3 = sub_25F38F160;
  }

  else
  {
    v3 = sub_25F38ECD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F38ECD4()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_25F38ED74;
  v2 = *(v0 + 64);

  return sub_25F3A4C50(v0 + 16, v2);
}

uint64_t sub_25F38ED74()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25F38F1E0;
  }

  else
  {
    v2 = sub_25F38EE88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F38EE88()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  sub_25F3C2B0C();
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_25F38EF64;
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[7];

  return sub_25F38C410(v6, v4, v5, v1, v2);
}

uint64_t sub_25F38EF64()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_25F38F260;
  }

  else
  {
    v5 = sub_25F38F0D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F38F0D4()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38F160()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38F1E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38F260()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F38F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25F38F30C, 0, 0);
}

uint64_t sub_25F38F30C()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F38F3A8;
  v3 = v0[3];
  v2 = v0[4];

  return sub_25F3A5C8C(v3, v2);
}

uint64_t sub_25F38F3A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F38F49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = type metadata accessor for EntryPointIndex.PendingShellResource(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F38F534, 0, 0);
}

uint64_t sub_25F38F534()
{
  v1 = *(*(v0 + 16) + 8);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_25F38F558, v1, 0);
}

uint64_t sub_25F38F558()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD674E0) + 48);
  *v1 = v3;
  v5 = sub_25F3C2EBC();
  (*(*(v5 - 8) + 16))(&v1[v4], v2, v5);
  swift_storeEnumTagMultiPayload();
  v6 = v3;
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_25F38F67C;
  v8 = v0[7];
  v9 = v0[4];

  return sub_25F3A9964(v8, v9);
}

uint64_t sub_25F38F67C()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  sub_25F35F740(v1);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F38F794(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25F3C271C() - 8);
  v6 = (*(v5 + 80) + 144) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25F3C2EBC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[17];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F351058;

  return sub_25F38F49C(a1, v10, v11, (v1 + 4), v12, v1 + v6, v1 + v9);
}

uint64_t sub_25F38F8F8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F38F9F0;

  return v6(a1);
}

uint64_t sub_25F38F9F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F38FAE8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_25F3C271C() - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25F3C253C() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F34905C;

  return sub_25F38F2E8(a1, v10, v11, v1 + 32, v1 + v6, v1 + v9);
}

uint64_t sub_25F38FC3C(uint64_t a1)
{
  v4 = *(sub_25F3C2B8C() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F34905C;

  return sub_25F38E8AC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_25F38FD40(uint64_t a1, char a2)
{
  v3 = v2;
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  MEMORY[0x28223BE20](updated);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D18);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - v11;
  result = type metadata accessor for CFunctionEntryPoint.UpdateState(0);
  v14 = *(result + 20);
  v15 = *(v3 + v14);
  v16 = v15 + 1;
  if (v15 == -1)
  {
    __break(1u);
  }

  else
  {
    *(v3 + v14) = v16;
    sub_25F392F74(v3, v8);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_25F392FD8(v8);
    }

    else
    {
      (*(v10 + 32))(v12, v8, v9);
      sub_25F3C41AC();
      sub_25F3931C4(&qword_27FD67D50, MEMORY[0x277D85678]);
      v17 = swift_allocError();
      sub_25F3C3F5C();
      v19[1] = v17;
      sub_25F3C418C();
      (*(v10 + 8))(v12, v9);
    }

    sub_25F392FD8(v3);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D30) + 48);
    (*(v10 + 16))(v3, a1, v9);
    *(v3 + v18) = a2 & 1;
    swift_storeEnumTagMultiPayload();
    return v16;
  }

  return result;
}

uint64_t sub_25F38FFA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28);
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = sub_25F3C2EBC();
  v35 = *(v8 - 8);
  v36 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D18);
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  v17 = MEMORY[0x28223BE20](updated);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v21 = (&v32 - v20);
  result = type metadata accessor for CFunctionEntryPoint.UpdateState(0);
  if (*(v3 + *(result + 20)) == a2)
  {
    sub_25F392F74(v3, v21);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result == 2)
      {
        v25 = v33;
        (*(v33 + 32))(v7, v21, v5);
        sub_25F3C243C();
        return (*(v25 + 8))(v7, v5);
      }
    }

    else if (result)
    {
      v26 = *v21;
      v28 = v34;
      v27 = v35;
      v29 = v36;
      (*(v35 + 16))(v34, v37, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_25F37A300(0, v26[2] + 1, 1, v26);
      }

      v31 = v26[2];
      v30 = v26[3];
      if (v31 >= v30 >> 1)
      {
        v26 = sub_25F37A300(v30 > 1, v31 + 1, 1, v26);
      }

      v26[2] = v31 + 1;
      (*(v27 + 32))(v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v31, v28, v29);
      sub_25F392FD8(v3);
      *v3 = v26;
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      v23 = *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D30) + 48));
      v24 = v32;
      (*(v32 + 32))(v15, v21, v13);
      (*(v35 + 16))(v12, v37, v36);
      sub_25F3C419C();
      (*(v24 + 8))(v15, v13);
      if (v23 == 1)
      {
        *v19 = MEMORY[0x277D84F90];
      }

      swift_storeEnumTagMultiPayload();
      return sub_25F393034(v19, v3);
    }
  }

  return result;
}

uint64_t sub_25F390420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = sub_25F3C41CC();
  v4[6] = sub_25F3C41BC();
  v6 = sub_25F3C416C();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_25F3904C0, v6, v5);
}

uint64_t sub_25F3904C0()
{
  v8 = *(v0 + 24);
  v1 = sub_25F3C41BC();
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v2[1] = vextq_s8(v8, v8, 8uLL);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_25F3C2EBC();
  *v3 = v0;
  v3[1] = sub_25F3905E4;
  v5 = *(v0 + 16);
  v6 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v5, v1, v6, 0xD000000000000016, 0x800000025F3CC290, sub_25F3925D4, v2, v4);
}

uint64_t sub_25F3905E4()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_25F39076C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_25F390708;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_25F390708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F39076C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_25F3907E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F3C354C();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25F3C2EBC();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25F3C25CC();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F3C325C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[7] = a2;
  v16 = a2;

  sub_25F3C326C();
  v41 = a1;
  v42 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D08);
  v34 = sub_25F392634();
  v35 = v17;
  sub_25F3C31CC();
  v18 = *(v13 + 8);
  v36 = v13 + 8;
  v37 = v12;
  v32 = v18;
  v18(v15, v12);
  v19 = aBlock[0];
  v20 = sub_25F3C26AC();
  v22 = v21;
  sub_25F3C26DC();
  v23 = v16;
  v24 = sub_25F392D4C(v20, v22, v11);

  (*(v9 + 8))(v11, v40);
  v25 = v29;
  sub_25F3C26BC();
  sub_25F3C2E8C();
  (*(v30 + 8))(v25, v31);
  v26 = sub_25F3C3F6C();

  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  *(v27 + 24) = v19;
  aBlock[4] = sub_25F392EF4;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F3913CC;
  aBlock[3] = &block_descriptor;
  v28 = _Block_copy(aBlock);

  v24(v26, v28);
  _Block_release(v28);
}

uint64_t sub_25F390E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F3C325C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a3;

  sub_25F3C326C();
  v14 = a2;
  v15 = a4;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D08);
  sub_25F392634();
  sub_25F3C31CC();
  (*(v9 + 8))(v11, v8);
}

uint64_t sub_25F390FDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D18);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v25 - v7;
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  MEMORY[0x28223BE20](updated);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_25F3C2EBC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  if (a2)
  {
    result = type metadata accessor for CFunctionEntryPoint.UpdateState(0);
    if (*(a1 + *(result + 20)) == a3)
    {
      v19 = a1;
      sub_25F392F74(a1, v10);
      result = swift_getEnumCaseMultiPayload();
      if (result > 1)
      {
        if (result == 2)
        {
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28);
          return (*(*(v24 - 8) + 8))(v10, v24);
        }
      }

      else if (result)
      {
        return sub_25F392FD8(v10);
      }

      else
      {
        v20 = v25;
        v21 = v26;
        v22 = v28;
        (*(v26 + 32))(v25, v10, v28);
        v30 = v27;
        v23 = v27;
        sub_25F3C418C();
        (*(v21 + 8))(v20, v22);
        sub_25F392FD8(v19);
        return swift_storeEnumTagMultiPayload();
      }
    }
  }

  else
  {
    if (v29)
    {

      sub_25F3C2E7C();
      (*(v15 + 56))(v13, 0, 1, v14);
      (*(v15 + 32))(v17, v13, v14);
    }

    else
    {
      (*(v15 + 56))(v13, 1, 1, v14);
      _s17PreviewsInjection10EntryPointPAAyt12StaticOutputRtzrlE6encode06staticF00A12FoundationOS12PropertyListVyt_tFZ_0();
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        sub_25F349AA8(v13, &qword_27FD67D20);
      }
    }

    sub_25F38FFA8(v17, a3);
    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_25F3913CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_25F3C3F7C();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_25F391478(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D18);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - v8;
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  MEMORY[0x28223BE20](updated);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for CFunctionEntryPoint.UpdateState(0);
  if (*(a1 + *(result + 20)) == a3)
  {
    sub_25F392F74(a1, v12);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result == 2)
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28);
        return (*(*(v15 - 8) + 8))(v12, v15);
      }
    }

    else if (result)
    {
      return sub_25F392FD8(v12);
    }

    else
    {
      (*(v7 + 32))(v9, v12, v6);
      v16[1] = a2;
      v14 = a2;
      sub_25F3C418C();
      (*(v7 + 8))(v9, v6);
      sub_25F392FD8(a1);
      return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t sub_25F39169C()
{
  v0 = sub_25F3C2A8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F3C2A7C();
  sub_25F3931C4(&qword_27FD67D58, MEMORY[0x277D40C50]);
  sub_25F3C40CC();
  sub_25F3C40CC();
  if (v6[2] == v6[0] && v6[3] == v6[1])
  {
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v4 = sub_25F3C459C();
    (*(v1 + 8))(v3, v0);

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  sub_25F3C2EBC();
  sub_25F3C241C();

  sub_25F3C31EC();

  return 1;
}

uint64_t sub_25F3918A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C325C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a2;

  sub_25F3C326C();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D08);
  sub_25F392634();
  sub_25F3C31CC();
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_25F391A0C(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F3C2EBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  MEMORY[0x28223BE20](updated);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F392F74(a1, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      return result;
    }

    v13 = &qword_27FD67D28;
    goto LABEL_6;
  }

  if (!result)
  {
    v13 = &qword_27FD67D18;
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v13);
    return (*(*(v14 - 8) + 8))(v11, v14);
  }

  v15 = *v11;
  v16 = *(*v11 + 16);
  if (v16)
  {
    v24[2] = updated;
    v25 = a1;
    v26 = v2;
    v19 = *(v6 + 16);
    v17 = v6 + 16;
    v18 = v19;
    v20 = (*(v17 + 64) + 32) & ~*(v17 + 64);
    v24[1] = v15;
    v21 = v15 + v20;
    v22 = *(v17 + 56);
    do
    {
      v18(v8, v21, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28);
      sub_25F3C243C();
      (*(v17 - 8))(v8, v5);
      v21 += v22;
      --v16;
    }

    while (v16);

    a1 = v25;
  }

  else
  {
  }

  sub_25F392FD8(a1);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D28);
  (*(*(v23 - 8) + 16))(a1, a2, v23);
  return swift_storeEnumTagMultiPayload();
}

void *sub_25F391CB4@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  result = dlopen(a1, 2);
  *a2 = result;
  return result;
}

void *sub_25F391CE8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5[0] = a1;
      v5[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      v3 = v5;
      return dlopen(v3, 2);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return dlopen(v3, 2);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D40);
  result = sub_25F3C444C();
  if (!v2)
  {
    return v5[3];
  }

  return result;
}

void *sub_25F391DB0(uint64_t a1, uint64_t a2, void *__handle)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *__symbol = a1;
      v7 = a2 & 0xFFFFFFFFFFFFFFLL;
      v4 = __symbol;
      return dlsym(__handle, v4);
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      return dlsym(__handle, v4);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67D40);
  result = sub_25F3C444C();
  if (!v3)
  {
    return v8;
  }

  return result;
}

unint64_t sub_25F391E7C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 <= 1)
  {
    if (*(v0 + 32))
    {
      sub_25F3C445C();

      v4 = 0xD00000000000001ELL;
      goto LABEL_10;
    }

    sub_25F3C445C();

    v14 = 0xD000000000000026;
    MEMORY[0x25F8DB8E0](v1, v2);
    v5 = 39;
    v6 = 0xE100000000000000;
LABEL_11:
    MEMORY[0x25F8DB8E0](v5, v6);
    return v14;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      sub_25F3C445C();

      v4 = 0xD00000000000002BLL;
LABEL_10:
      v14 = v4;
      v5 = v1;
      v6 = v2;
      goto LABEL_11;
    }

    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v14 = 0;
    sub_25F3C445C();
    MEMORY[0x25F8DB8E0](0xD000000000000023, 0x800000025F3CC3C0);
    MEMORY[0x25F8DB8E0](v1, v2);
    MEMORY[0x25F8DB8E0](0xD000000000000018, 0x800000025F3CC3F0);
    v5 = v12;
    v6 = v11;
    goto LABEL_11;
  }

  sub_25F3C445C();

  v14 = 0xD00000000000001ELL;
  v7 = [v1 description];
  v8 = sub_25F3C3FEC();
  v10 = v9;

  MEMORY[0x25F8DB8E0](v8, v10);

  return v14;
}

uint64_t sub_25F392110(uint64_t a1)
{
  v2 = sub_25F393124();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F39214C(uint64_t a1)
{
  v2 = sub_25F393124();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F392188(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for CFunctionEntryPoint.UpdateState(0);
  v1[4] = swift_task_alloc();
  sub_25F3C41CC();
  v1[5] = sub_25F3C41BC();
  v3 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F392250, v3, v2);
}

uint64_t sub_25F392250()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 20)) = 0;
  *v3 = sub_25F3C34FC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F3922F4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F34905C;

  return sub_25F390420(a1, a2, v7, v6);
}

uint64_t sub_25F3923A4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_25F3C41CC();
  v3[5] = sub_25F3C41BC();
  v5 = sub_25F3C416C();

  return MEMORY[0x2822009F8](sub_25F392440, v5, v4);
}

uint64_t sub_25F392440()
{

  v1 = sub_25F39169C();
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

unint64_t sub_25F3924DC(uint64_t a1)
{
  result = sub_25F392504();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F392504()
{
  result = qword_27FD67CF8;
  if (!qword_27FD67CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67CF8);
  }

  return result;
}

unint64_t sub_25F392558(uint64_t a1)
{
  result = sub_25F392580();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F392580()
{
  result = qword_27FD67D00;
  if (!qword_27FD67D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67D00);
  }

  return result;
}

uint64_t sub_25F3925DC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_25F3C26CC();
  result = sub_25F38FD40(v3, v4 & 1);
  *a1 = result;
  return result;
}

unint64_t sub_25F392634()
{
  result = qword_27FD67D10;
  if (!qword_27FD67D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67D08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67D10);
  }

  return result;
}

char *sub_25F392698(uint64_t a1)
{
  v2 = sub_25F3C325C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F3C25CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D408D0])
  {
    (*(v7 + 96))(v9, v6);
    v11 = *v9;
    v12 = v9[1];
    v13 = objc_opt_self();
    v14 = [v13 allBundles];
    sub_25F393178();
    v15 = sub_25F3C40EC();

    v16 = [v13 allFrameworks];
    v5 = sub_25F3C40EC();

    v53[0] = v15;
    sub_25F37E530(v5);
    v17 = v53[0];
    if (v53[0] >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25F3C450C())
    {
      v19 = 0;
      v46 = v17 & 0xFFFFFFFFFFFFFF8;
      v47 = v17 & 0xC000000000000001;
      while (1)
      {
        if (v47)
        {
          v20 = MEMORY[0x25F8DBCF0](v19, v17);
        }

        else
        {
          if (v19 >= *(v46 + 16))
          {
            goto LABEL_30;
          }

          v20 = *(v17 + 8 * v19 + 32);
        }

        v5 = v20;
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v22 = [v20 bundleIdentifier];
        if (v22)
        {
          v56 = v5;
          v23 = v11;
          v24 = v12;
          v25 = v22;
          v26 = sub_25F3C3FEC();
          v28 = v27;

          v12 = v24;
          if (v26 == v23 && v28 == v24)
          {

            return v56;
          }

          v11 = v23;
          v30 = sub_25F3C459C();

          v5 = v56;
          if (v30)
          {

            return v5;
          }
        }

        ++v19;
        if (v21 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:

    sub_25F393098();
    swift_allocError();
    *v43 = v11;
    *(v43 + 8) = v12;
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    *(v43 + 32) = 0;
    swift_willThrow();
  }

  else if (v10 == *MEMORY[0x277D408D8])
  {
    (*(v7 + 96))(v9, v6);
    v31 = *v9;
    v32 = v9[1];
    v33 = v45[1];
    v34 = sub_25F35E778();
    if (v33)
    {
      v48 = v31;
      v49 = v32;
      v50 = 0;
      v51 = 0;
      v52 = 1;
      v35 = v33;
      sub_25F393124();
      sub_25F3C2FEC();

      v36 = v54;
      v37 = v55;
      v38 = __swift_project_boxed_opaque_existential_1(v53, v54);
      v39 = *(v36 - 8);
      MEMORY[0x28223BE20](v38);
      v41 = v45 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v39 + 16))(v41);
      v5 = *(*(v37 + 8) + 8);
      if (sub_25F3C456C())
      {
        (*(v39 + 8))(v41, v36);
      }

      else
      {
        swift_allocError();
        (*(v39 + 32))(v42, v41, v36);
      }

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    else
    {
      v5 = v34;
    }
  }

  else if (v10 == *MEMORY[0x277D408C8])
  {
    return [objc_opt_self() mainBundle];
  }

  else
  {
    sub_25F3C326C();
    sub_25F3C2F4C();
    (*(v3 + 8))(v5, v2);
    sub_25F3C318C();
    sub_25F3931C4(&qword_27FD676A8, MEMORY[0x277D404F8]);
    swift_allocError();
    sub_25F3C317C();
    swift_willThrow();
    (*(v7 + 8))(v9, v6);
  }

  return v5;
}

uint64_t sub_25F392D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25F392698(a3);
  if (!v3)
  {
    v8 = v7;
    v4 = 0;
    v9 = [v7 executablePath];
    if (v9)
    {
      v10 = v9;
      v11 = sub_25F3C3FEC();
      v13 = v12;

      v14 = sub_25F391CE8(v11, v13);
      if (v14)
      {
        v15 = sub_25F391DB0(a1, a2, v14);
        if (v15)
        {
          v4 = v15;
        }

        else
        {
          sub_25F393098();
          v4 = swift_allocError();
          *v19 = a1;
          *(v19 + 8) = a2;
          *(v19 + 16) = v11;
          *(v19 + 24) = v13;
          *(v19 + 32) = 4;
          swift_willThrow();
        }
      }

      else
      {
        sub_25F393098();
        swift_allocError();
        *v17 = v11;
        *(v17 + 8) = v13;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 32) = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_25F393098();
      swift_allocError();
      *v16 = v8;
      *(v16 + 8) = 0;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 2;
      swift_willThrow();
    }
  }

  return v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F392F74(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_25F392FD8(uint64_t a1)
{
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_25F393034(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(0);
  (*(*(updated - 8) + 40))(a2, a1, updated);
  return a2;
}

unint64_t sub_25F393098()
{
  result = qword_27FD67D38;
  if (!qword_27FD67D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67D38);
  }

  return result;
}

void *sub_25F3930EC@<X0>(char *__symbol@<X0>, void *a2@<X8>)
{
  result = dlsym(*(v2 + 16), __symbol);
  *a2 = result;
  return result;
}

unint64_t sub_25F393124()
{
  result = qword_27FD67D48;
  if (!qword_27FD67D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67D48);
  }

  return result;
}

unint64_t sub_25F393178()
{
  result = qword_27FD67958;
  if (!qword_27FD67958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD67958);
  }

  return result;
}

uint64_t sub_25F3931C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F39323C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 33))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F393284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

void sub_25F3932E4()
{
  sub_25F3933A4();
  if (v0 <= 0x3F)
  {
    sub_25F393474(319, &qword_27FD67D78, sub_25F39341C);
    if (v1 <= 0x3F)
    {
      sub_25F393474(319, &qword_27FD67D88, sub_25F3934C0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_25F3933A4()
{
  if (!qword_27FD67D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD67D18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD67D70);
    }
  }
}

void sub_25F39341C()
{
  if (!qword_27FD67D80)
  {
    sub_25F3C2EBC();
    v0 = sub_25F3C415C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67D80);
    }
  }
}

void sub_25F393474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_25F3934C0()
{
  if (!qword_27FD67D90)
  {
    sub_25F3C2EBC();
    v0 = sub_25F3C244C();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD67D90);
    }
  }
}

uint64_t sub_25F393548()
{
  result = type metadata accessor for CFunctionEntryPoint.UpdateState.Phase(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_25F3935C4()
{
  result = qword_27FD67DA8;
  if (!qword_27FD67DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67DA8);
  }

  return result;
}

unint64_t sub_25F39361C()
{
  result = qword_27FD67DB0;
  if (!qword_27FD67DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD67DB0);
  }

  return result;
}

uint64_t sub_25F393670(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67170);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_25F3C2E1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_25F349AA8(a1, &qword_27FD67170);
    v13 = sub_25F35C194(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_25F3BC2E8();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_25F3989F4(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_25F349AA8(v8, &qword_27FD67170);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_25F35CA04(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

unint64_t sub_25F3938C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_25F35CD4C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_25F35C194(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_25F3BC578();
        v13 = v15;
      }

      result = sub_25F398BA0(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_25F393984(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F3440A0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25F35CE84(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25F3C23FC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_25F349AA8(a1, &qword_27FD67E08);
    sub_25F3983CC(a2, v9);
    v7 = sub_25F3C23FC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_25F349AA8(v9, &qword_27FD67E08);
  }

  return result;
}

uint64_t sub_25F393AA0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67DF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  updated = type metadata accessor for EntryPointIndex.UpdateState(0);
  MEMORY[0x28223BE20](updated);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_25F349AA8(a1, &qword_27FD67DF0);
    sub_25F3984F4(a2, v7);
    v12 = sub_25F3C271C();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_25F349AA8(v7, &qword_27FD67DF0);
  }

  else
  {
    sub_25F35E370(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_25F35D318(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_25F3C271C();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_25F393CAC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F3440A0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25F35D500(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25F3C271C();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_25F349AA8(a1, &qword_27FD67DF8);
    sub_25F39867C(a2, v9);
    v7 = sub_25F3C271C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_25F349AA8(v9, &qword_27FD67DF8);
  }

  return result;
}

uint64_t sub_25F393DC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F3440A0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25F35D8F4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25F3C22BC();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_25F349AA8(a1, &qword_27FD67DE8);
    sub_25F3987A4(a2, v9);
    v7 = sub_25F3C22BC();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_25F349AA8(v9, &qword_27FD67DE8);
  }

  return result;
}

uint64_t sub_25F393EE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_25F3440A0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_25F35DCC4(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_25F3C271C();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_25F349AA8(a1, &qword_27FD67E00);
    sub_25F3988CC(a2, v9);
    v7 = sub_25F3C271C();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_25F349AA8(v9, &qword_27FD67E00);
  }

  return result;
}

uint64_t sub_25F394000@<X0>(unint64_t *a1@<X8>)
{
  v2 = _s9TransformVMa_1(0);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_25F3C248C();
  v80 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s9TransformVMa_0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_25F3C380C();
  v85 = *(v78 - 1);
  MEMORY[0x28223BE20](v78);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_25F3C23FC();
  v8 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s9TransformVMa(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F3C368C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = sub_25F3539B8(MEMORY[0x277D84F90]);
  v18 = *MEMORY[0x277CDF3C0];
  v83 = *(v15 + 104);
  v83(v17, v18, v14);
  v82 = *(v15 + 32);
  (v82)(v13, v17, v14);
  sub_25F3C22CC();
  sub_25F395F88(v13, v10);
  v19 = *(v8 + 8);
  v19(v10, v87);
  v86 = v8 + 8;
  sub_25F3999C8(v13, _s9TransformVMa);
  v83(v17, *MEMORY[0x277CDF3D0], v14);
  (v82)(v13, v17, v14);
  sub_25F3C22DC();
  sub_25F395F88(v13, v10);
  v20 = v87;
  v84 = v19;
  v19(v10, v87);
  sub_25F3999C8(v13, _s9TransformVMa);
  v21 = *MEMORY[0x277CDF9F8];
  v22 = v85;
  v23 = (v85 + 104);
  v83 = *(v85 + 104);
  v25 = v77;
  v24 = v78;
  v83(v77, v21, v78);
  v81 = v23;
  v79 = *(v22 + 32);
  v26 = v73;
  v79(v73, v25, v24);
  v85 = v22 + 32;
  sub_25F3C23CC();
  sub_25F39659C(v26, v10);
  v19(v10, v20);
  v82 = _s9TransformVMa_0;
  sub_25F3999C8(v26, _s9TransformVMa_0);
  v27 = v25;
  v28 = v25;
  v29 = v83;
  v83(v28, *MEMORY[0x277CDF9E0], v24);
  v30 = v24;
  v31 = v79;
  v79(v26, v27, v24);
  sub_25F3C239C();
  sub_25F39659C(v26, v10);
  v32 = v87;
  v84(v10, v87);
  sub_25F3999C8(v26, v82);
  v29(v27, *MEMORY[0x277CDF9E8], v24);
  v31(v26, v27, v24);
  sub_25F3C23AC();
  sub_25F39659C(v26, v10);
  v33 = v84;
  v84(v10, v32);
  v34 = v82;
  sub_25F3999C8(v26, v82);
  v35 = v83;
  v83(v27, *MEMORY[0x277CDF9D8], v24);
  v79(v26, v27, v24);
  sub_25F3C238C();
  sub_25F39659C(v26, v10);
  v33(v10, v87);
  sub_25F3999C8(v26, v34);
  v35(v27, *MEMORY[0x277CDF9F0], v24);
  v36 = v79;
  v79(v26, v27, v30);
  sub_25F3C23BC();
  sub_25F39659C(v26, v10);
  v37 = v87;
  v84(v10, v87);
  sub_25F3999C8(v26, v34);
  v83(v27, *MEMORY[0x277CDFA00], v30);
  v36(v26, v27, v30);
  sub_25F3C23DC();
  sub_25F39659C(v26, v10);
  v38 = v84;
  v84(v10, v37);
  sub_25F3999C8(v26, v34);
  v39 = v83;
  v83(v27, *MEMORY[0x277CDFA10], v30);
  v36(v26, v27, v30);
  v40 = v36;
  sub_25F3C23EC();
  sub_25F39659C(v26, v10);
  v38(v10, v87);
  v41 = v82;
  sub_25F3999C8(v26, v82);
  v39(v27, *MEMORY[0x277CDF988], v30);
  v40(v26, v27, v30);
  sub_25F3C233C();
  sub_25F39659C(v26, v10);
  v42 = v87;
  v43 = v84;
  v84(v10, v87);
  sub_25F3999C8(v26, v41);
  v45 = v77;
  v44 = v78;
  v39(v77, *MEMORY[0x277CDF998], v78);
  v46 = v45;
  v47 = v79;
  v79(v26, v45, v44);
  sub_25F3C234C();
  sub_25F39659C(v26, v10);
  v48 = v43;
  v43(v10, v42);
  sub_25F3999C8(v26, v82);
  v49 = v46;
  v50 = v46;
  v51 = v83;
  v83(v50, *MEMORY[0x277CDF9A8], v44);
  v47(v26, v49, v44);
  sub_25F3C235C();
  sub_25F39659C(v26, v10);
  v48(v10, v87);
  v52 = v82;
  sub_25F3999C8(v26, v82);
  v51(v49, *MEMORY[0x277CDF9B8], v44);
  v47(v26, v49, v44);
  sub_25F3C236C();
  sub_25F39659C(v26, v10);
  v53 = v87;
  v54 = v84;
  v84(v10, v87);
  sub_25F3999C8(v26, v52);
  v55 = v78;
  v83(v49, *MEMORY[0x277CDF9D0], v78);
  v47(v26, v49, v55);
  sub_25F3C237C();
  sub_25F39659C(v26, v10);
  v56 = v53;
  v54(v10, v53);
  sub_25F3999C8(v26, v82);
  v57 = *MEMORY[0x277D40798];
  v58 = v80;
  v59 = (v80 + 104);
  v85 = *(v80 + 104);
  v60 = v74;
  v61 = v75;
  (v85)(v74, v57, v75);
  v83 = v59;
  v79 = *(v58 + 32);
  v62 = v76;
  v79(v76, v60, v61);
  v82 = (v58 + 32);
  v63 = *(v58 + 56);
  v80 = v58 + 56;
  v78 = v63;
  (v63)(v62, 0, 1, v61);
  sub_25F3C231C();
  sub_25F396BB0(v62, v10);
  v64 = v84;
  v84(v10, v56);
  v81 = _s9TransformVMa_1;
  sub_25F3999C8(v62, _s9TransformVMa_1);
  (v85)(v60, *MEMORY[0x277D40790], v61);
  v65 = v79;
  v79(v62, v60, v61);
  v66 = v78;
  (v78)(v62, 0, 1, v61);
  sub_25F3C230C();
  sub_25F396BB0(v62, v10);
  v64(v10, v87);
  v67 = v64;
  sub_25F3999C8(v62, v81);
  v68 = v85;
  (v85)(v60, *MEMORY[0x277D40780], v61);
  v65(v62, v60, v61);
  v66(v62, 0, 1, v61);
  sub_25F3C22EC();
  sub_25F396BB0(v62, v10);
  v69 = v87;
  v67(v10, v87);
  v70 = v81;
  sub_25F3999C8(v62, v81);
  v68(v60, *MEMORY[0x277D40788], v61);
  v79(v62, v60, v61);
  v66(v62, 0, 1, v61);
  sub_25F3C22FC();
  sub_25F396BB0(v62, v10);
  v67(v10, v69);
  sub_25F3999C8(v62, v70);
  sub_25F3C232C();
  sub_25F3971C4(v10);
  return (v67)(v10, v69);
}

uint64_t sub_25F394D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v84 = sub_25F3C23FC();
  v4 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F00);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v76 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = &v73 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v83 = &v73 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v73 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v73 - v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v73 - v19;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v78 = a1;
  if (!v20)
  {
LABEL_10:
    v36 = *(v21 + 16);

    v84 = v21;
    v82 = (v21 + 32);
    if (v36)
    {
      v37 = 0;
      v38 = (v21 + 32);
      while (1)
      {
        v40 = v38[3];
        v39 = v38[4];
        __swift_project_boxed_opaque_existential_1(v38, v40);
        v41 = v98;
        (*(v39 + 24))(v40, v39);
        sub_25F399B04(v41, v18);
        v42 = sub_25F3C248C();
        v43 = (*(*(v42 - 8) + 48))(v18, 1, v42);
        result = sub_25F349AA8(v18, &qword_27FD66F00);
        if (v43 != 1)
        {
          break;
        }

        ++v37;
        v38 += 5;
        if (v36 == v37)
        {
          goto LABEL_16;
        }
      }

      v36 = v37;
LABEL_16:
      v21 = v84;
    }

    v44 = *(v21 + 16);
    if (v36 == v44)
    {
      v45 = sub_25F3C248C();
      (*(*(v45 - 8) + 56))(v79, 1, 1, v45);
LABEL_26:
      v62 = v82;

      v93 = MEMORY[0x277CDF6D0];
      v94 = MEMORY[0x277CDF6C8];
      sub_25F349E38(&v92, &v89);
      for (i = *(v21 + 16); i; --i)
      {
        sub_25F349E38(v62, &v95);
        v64 = v90;
        v65 = v91;
        __swift_project_boxed_opaque_existential_1(&v89, v90);
        v66 = v96;
        v67 = v97;
        v68 = __swift_project_boxed_opaque_existential_1(&v95, v96);
        v69 = *(v67 + 16);
        *&v85 = v64;
        *(&v85 + 1) = v66;
        v86 = v65;
        v87 = v69;
        v87 = type metadata accessor for CompoundViewModifier();
        WitnessTable = swift_getWitnessTable();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v85);
        sub_25F34FCEC(v68, v64, v66, v65, v69, boxed_opaque_existential_1);
        __swift_destroy_boxed_opaque_existential_0Tm(&v95);
        __swift_destroy_boxed_opaque_existential_0Tm(&v89);
        sub_25F3440A0(&v85, &v89);
        v62 += 40;
      }

      sub_25F3440A0(&v89, &v95);
      __swift_destroy_boxed_opaque_existential_0Tm(&v92);
      v71 = v77;
      *v77 = v78;
      v72 = type metadata accessor for RenderEffects(0);
      sub_25F399B04(v79, v71 + *(v72 + 20));
      sub_25F3440A0(&v95, v71 + *(v72 + 24));
    }

    if (v44)
    {
      v46 = v44 - 1;
      v47 = (v21 + 40 * v44 - 8);
      while (1)
      {
        v48 = v47[3];
        v49 = v47[4];
        __swift_project_boxed_opaque_existential_1(v47, v48);
        v50 = v98;
        (*(v49 + 24))(v48, v49);
        v51 = v83;
        sub_25F399B04(v50, v83);
        v52 = sub_25F3C248C();
        v53 = *(v52 - 8);
        v54 = *(v53 + 48);
        v55 = v54(v51, 1, v52);
        sub_25F349AA8(v51, &qword_27FD66F00);
        if (v55 != 1)
        {
          break;
        }

        --v46;
        v47 -= 5;
        if (v46 >= v44)
        {
          __break(1u);
          break;
        }
      }

      v56 = v47[3];
      v57 = v47[4];
      __swift_project_boxed_opaque_existential_1(v47, v56);
      v58 = v56;
      v59 = v75;
      (*(v57 + 24))(v58, v57);
      v60 = v76;
      sub_25F349944(v59, v76);
      result = v54(v60, 1, v52);
      if (result != 1)
      {
        v61 = v79;
        (*(v53 + 32))(v79, v60, v52);
        sub_25F349AA8(v59, &qword_27FD66F00);
        (*(v53 + 56))(v61, 0, 1, v52);
        v21 = v84;
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v74 = v18;
  v22 = *v2;
  *&v89 = MEMORY[0x277D84F90];
  sub_25F349B10(0, v20, 0);
  v21 = v89;
  v24 = *(v4 + 16);
  v23 = v4 + 16;
  v82 = v24;
  v25 = a1 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
  v26 = v23;
  v81 = (v23 - 8);
  v80 = *(v23 + 56);
  while (1)
  {
    v27 = v26;
    v82(v6, v25, v84);
    if (!*(v22 + 16))
    {
      break;
    }

    v28 = sub_25F35C0C0(v6);
    if ((v29 & 1) == 0)
    {
      break;
    }

    sub_25F349E38(*(v22 + 56) + 40 * v28, &v92);
    (*v81)(v6, v84);
    sub_25F3440A0(&v92, &v95);
    *&v89 = v21;
    v31 = *(v21 + 16);
    v30 = *(v21 + 24);
    v32 = v21;
    if (v31 >= v30 >> 1)
    {
      sub_25F349B10((v30 > 1), v31 + 1, 1);
      v32 = v89;
    }

    *(v32 + 16) = v31 + 1;
    sub_25F3440A0(&v95, v32 + 40 * v31 + 32);
    v25 += v80;
    --v20;
    v21 = v32;
    v26 = v27;
    if (!v20)
    {
      v18 = v74;
      goto LABEL_10;
    }
  }

  type metadata accessor for UnsupportedRenderEffectError(0);
  sub_25F399634(&qword_27FD67E30, type metadata accessor for UnsupportedRenderEffectError);
  swift_allocError();
  v33 = v84;
  v82(v34, v6, v84);
  swift_willThrow();
  (*v81)(v6, v33);
}

uint64_t sub_25F3955AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F3C23FC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_25F399634(&qword_27FD673D8, MEMORY[0x277D40728]);
    v21 = sub_25F3C3FCC();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t static RenderEffects.empty.getter@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for RenderEffects(0);
  v3 = *(v2 + 20);
  v4 = sub_25F3C248C();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v6 = MEMORY[0x277CDF6C8];
  v7 = &a1[*(v2 + 24)];
  *(v7 + 3) = MEMORY[0x277CDF6D0];
  *(v7 + 4) = v6;
  *a1 = MEMORY[0x277D84F90];
  return result;
}

uint64_t RenderEffects.applied<A>(to:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (v2 + *(type metadata accessor for RenderEffects(0) + 24));
  v6 = v5[3];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  a2[3] = sub_25F3C382C();
  a2[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_25F34BB9C(a1, v6);
}

void RenderEffects.description.getter()
{
  sub_25F3C23FC();

  JUMPOUT(0x25F8DB960);
}

void sub_25F39599C()
{
  sub_25F3C23FC();

  JUMPOUT(0x25F8DB960);
}

uint64_t RenderEffectTransform.orientationOverride.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25F3C248C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_25F395A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F3C43BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v39 - v11;
  v45 = *(v9 - 8);
  v13 = v45;
  v14 = MEMORY[0x28223BE20](v10);
  v44 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v39 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v19);
  (*(v23 + 16))(&v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v24 = swift_dynamicCast();
  v25 = v7;
  v26 = *(v7 + 56);
  v26(v21, v24 ^ 1u, 1, a2);
  (*(v25 + 16))(v18, v47, a2);
  v26(v18, 0, 1, a2);
  v27 = *(TupleTypeMetadata2 + 48);
  v46 = v21;
  v47 = v13;
  v28 = v13;
  v29 = v9;
  v30 = *(v28 + 16);
  v30(v12, v21, v29);
  v30(&v12[v27], v18, v29);
  v43 = v25;
  v31 = *(v25 + 48);
  if (v31(v12, 1, a2) != 1)
  {
    v30(v44, v12, v29);
    if (v31(&v12[v27], 1, a2) != 1)
    {
      v34 = v43;
      v35 = v40;
      (*(v43 + 32))(v40, &v12[v27], a2);
      v36 = v44;
      v33 = sub_25F3C3FCC();
      v37 = *(v34 + 8);
      v37(v35, a2);
      v32 = *(v45 + 8);
      v32(v18, v29);
      v37(v36, a2);
      v32(v12, v29);
      goto LABEL_8;
    }

    v32 = *(v45 + 8);
    v32(v18, v29);
    (*(v43 + 8))(v44, a2);
    goto LABEL_6;
  }

  v32 = *(v45 + 8);
  v32(v18, v29);
  if (v31(&v12[v27], 1, a2) != 1)
  {
LABEL_6:
    (*(v42 + 8))(v12, TupleTypeMetadata2);
    v33 = 0;
    goto LABEL_8;
  }

  v32(v12, v29);
  v33 = 1;
LABEL_8:
  v32(v46, v29);
  return v33 & 1;
}

uint64_t sub_25F395F88(uint64_t a1, uint64_t a2)
{
  v5 = _s9TransformVMa(0);
  v6 = MEMORY[0x28223BE20](v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v8;
  v9 = sub_25F3C354C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F3C23FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = *v2;
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_25F35C0C0(a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v46 = v10;
  v47 = v9;
  sub_25F349E38(*(v18 + 56) + 40 * v19, v54);
  sub_25F3440A0(v54, v55);
  v21 = v56;
  v22 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  sub_25F399634(&qword_27FD67E28, _s9TransformVMa);
  if (sub_25F395A60(a1, v21, v5, v22))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
LABEL_5:
    (*(v13 + 16))(v17, a2, v12);
    v56 = v5;
    v57 = sub_25F399634(&qword_27FD67E28, _s9TransformVMa);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    sub_25F399A7C(a1, boxed_opaque_existential_1, _s9TransformVMa);
    return sub_25F393984(v55, v17);
  }

  v25 = v51;
  sub_25F3C350C();
  v26 = v50;
  sub_25F399A7C(a1, v50, _s9TransformVMa);
  v27 = v49;
  (*(v13 + 16))(v49, a2, v12);
  sub_25F349E38(v55, v54);
  v28 = sub_25F3C353C();
  v29 = sub_25F3C432C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v30 = 136315650;
    sub_25F399A7C(v26, v48, _s9TransformVMa);
    v31 = sub_25F3C404C();
    v32 = v27;
    v34 = v33;
    sub_25F3999C8(v26, _s9TransformVMa);
    v35 = sub_25F369EE8(v31, v34, &v53);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    sub_25F399634(&qword_27FD67DB8, MEMORY[0x277D40728]);
    v36 = sub_25F3C455C();
    v38 = v37;
    (*(v13 + 8))(v32, v12);
    v39 = sub_25F369EE8(v36, v38, &v53);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    sub_25F349E38(v54, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F90);
    v40 = sub_25F3C404C();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v43 = sub_25F369EE8(v40, v42, &v53);

    *(v30 + 24) = v43;
    _os_log_impl(&dword_25F342000, v28, v29, "Can't register %s for %s -- already registered: %s", v30, 0x20u);
    v44 = v45;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v44, -1, -1);
    MEMORY[0x25F8DC6C0](v30, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    (*(v13 + 8))(v27, v12);
    sub_25F3999C8(v26, _s9TransformVMa);
  }

  (*(v46 + 8))(v25, v47);
  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

uint64_t sub_25F39659C(uint64_t a1, uint64_t a2)
{
  v5 = _s9TransformVMa_0(0);
  v6 = MEMORY[0x28223BE20](v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v8;
  v9 = sub_25F3C354C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F3C23FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = *v2;
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_25F35C0C0(a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v46 = v10;
  v47 = v9;
  sub_25F349E38(*(v18 + 56) + 40 * v19, v54);
  sub_25F3440A0(v54, v55);
  v21 = v56;
  v22 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  sub_25F399634(&qword_27FD67E20, _s9TransformVMa_0);
  if (sub_25F395A60(a1, v21, v5, v22))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
LABEL_5:
    (*(v13 + 16))(v17, a2, v12);
    v56 = v5;
    v57 = sub_25F399634(&qword_27FD67E20, _s9TransformVMa_0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    sub_25F399A7C(a1, boxed_opaque_existential_1, _s9TransformVMa_0);
    return sub_25F393984(v55, v17);
  }

  v25 = v51;
  sub_25F3C350C();
  v26 = v50;
  sub_25F399A7C(a1, v50, _s9TransformVMa_0);
  v27 = v49;
  (*(v13 + 16))(v49, a2, v12);
  sub_25F349E38(v55, v54);
  v28 = sub_25F3C353C();
  v29 = sub_25F3C432C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v30 = 136315650;
    sub_25F399A7C(v26, v48, _s9TransformVMa_0);
    v31 = sub_25F3C404C();
    v32 = v27;
    v34 = v33;
    sub_25F3999C8(v26, _s9TransformVMa_0);
    v35 = sub_25F369EE8(v31, v34, &v53);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    sub_25F399634(&qword_27FD67DB8, MEMORY[0x277D40728]);
    v36 = sub_25F3C455C();
    v38 = v37;
    (*(v13 + 8))(v32, v12);
    v39 = sub_25F369EE8(v36, v38, &v53);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    sub_25F349E38(v54, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F90);
    v40 = sub_25F3C404C();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v43 = sub_25F369EE8(v40, v42, &v53);

    *(v30 + 24) = v43;
    _os_log_impl(&dword_25F342000, v28, v29, "Can't register %s for %s -- already registered: %s", v30, 0x20u);
    v44 = v45;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v44, -1, -1);
    MEMORY[0x25F8DC6C0](v30, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    (*(v13 + 8))(v27, v12);
    sub_25F3999C8(v26, _s9TransformVMa_0);
  }

  (*(v46 + 8))(v25, v47);
  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

uint64_t sub_25F396BB0(uint64_t a1, uint64_t a2)
{
  v5 = _s9TransformVMa_1(0);
  v6 = MEMORY[0x28223BE20](v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v8;
  v9 = sub_25F3C354C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F3C23FC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - v16;
  v18 = *v2;
  if (!*(v18 + 16))
  {
    goto LABEL_5;
  }

  v19 = sub_25F35C0C0(a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v46 = v10;
  v47 = v9;
  sub_25F349E38(*(v18 + 56) + 40 * v19, v54);
  sub_25F3440A0(v54, v55);
  v21 = v56;
  v22 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  sub_25F399634(&qword_27FD67E18, _s9TransformVMa_1);
  if (sub_25F395A60(a1, v21, v5, v22))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v55);
LABEL_5:
    (*(v13 + 16))(v17, a2, v12);
    v56 = v5;
    v57 = sub_25F399634(&qword_27FD67E18, _s9TransformVMa_1);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    sub_25F399A7C(a1, boxed_opaque_existential_1, _s9TransformVMa_1);
    return sub_25F393984(v55, v17);
  }

  v25 = v51;
  sub_25F3C350C();
  v26 = v50;
  sub_25F399A7C(a1, v50, _s9TransformVMa_1);
  v27 = v49;
  (*(v13 + 16))(v49, a2, v12);
  sub_25F349E38(v55, v54);
  v28 = sub_25F3C353C();
  v29 = sub_25F3C432C();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v53 = v45;
    *v30 = 136315650;
    sub_25F399A7C(v26, v48, _s9TransformVMa_1);
    v31 = sub_25F3C404C();
    v32 = v27;
    v34 = v33;
    sub_25F3999C8(v26, _s9TransformVMa_1);
    v35 = sub_25F369EE8(v31, v34, &v53);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    sub_25F399634(&qword_27FD67DB8, MEMORY[0x277D40728]);
    v36 = sub_25F3C455C();
    v38 = v37;
    (*(v13 + 8))(v32, v12);
    v39 = sub_25F369EE8(v36, v38, &v53);

    *(v30 + 14) = v39;
    *(v30 + 22) = 2080;
    sub_25F349E38(v54, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F90);
    v40 = sub_25F3C404C();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    v43 = sub_25F369EE8(v40, v42, &v53);

    *(v30 + 24) = v43;
    _os_log_impl(&dword_25F342000, v28, v29, "Can't register %s for %s -- already registered: %s", v30, 0x20u);
    v44 = v45;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v44, -1, -1);
    MEMORY[0x25F8DC6C0](v30, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    (*(v13 + 8))(v27, v12);
    sub_25F3999C8(v26, _s9TransformVMa_1);
  }

  (*(v46 + 8))(v25, v47);
  return __swift_destroy_boxed_opaque_existential_0Tm(v55);
}

uint64_t sub_25F3971C4(uint64_t a1)
{
  v3 = sub_25F3C354C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F3C23FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  v14 = *v1;
  if (!*(v14 + 16))
  {
    goto LABEL_5;
  }

  v15 = sub_25F35C0C0(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_5;
  }

  v36 = v4;
  v37 = v3;
  sub_25F349E38(*(v14 + 56) + 40 * v15, v40);
  sub_25F3440A0(v40, v41);
  v17 = v42;
  v18 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  v19 = sub_25F399A28();
  if (sub_25F395A60(v19, v17, &type metadata for AssistiveAccessTransform, v18))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
LABEL_5:
    (*(v8 + 16))(v13, a1, v7);
    v42 = &type metadata for AssistiveAccessTransform;
    v43 = sub_25F399A28();
    return sub_25F393984(v41, v13);
  }

  sub_25F3C350C();
  (*(v8 + 16))(v11, a1, v7);
  sub_25F349E38(v41, v40);
  v21 = sub_25F3C353C();
  v22 = sub_25F3C432C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v39 = v24;
    *v23 = 136315650;
    v25 = sub_25F3C404C();
    v27 = sub_25F369EE8(v25, v26, &v39);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_25F399634(&qword_27FD67DB8, MEMORY[0x277D40728]);
    v28 = sub_25F3C455C();
    v30 = v29;
    (*(v8 + 8))(v11, v7);
    v31 = sub_25F369EE8(v28, v30, &v39);

    *(v23 + 14) = v31;
    *(v23 + 22) = 2080;
    sub_25F349E38(v40, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F90);
    v32 = sub_25F3C404C();
    v34 = v33;
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    v35 = sub_25F369EE8(v32, v34, &v39);

    *(v23 + 24) = v35;
    _os_log_impl(&dword_25F342000, v21, v22, "Can't register %s for %s -- already registered: %s", v23, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v24, -1, -1);
    MEMORY[0x25F8DC6C0](v23, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    (*(v8 + 8))(v11, v7);
  }

  (*(v36 + 8))(v6, v37);
  return __swift_destroy_boxed_opaque_existential_0Tm(v41);
}

uint64_t RenderEffectRegistry.register<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v59 = a4;
  v61 = a1;
  v60 = sub_25F3C23FC();
  v7 = *(v60 - 8);
  v8 = MEMORY[0x28223BE20](v60);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v58 = &v53 - v12;
  v13 = *(a3 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v56 = &v53 - v17;
  v18 = sub_25F3C354C();
  v57 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v4;
  if (!*(v21 + 16) || (v22 = sub_25F35C0C0(a2), (v23 & 1) == 0))
  {
    v28 = v59;
    goto LABEL_6;
  }

  v54 = v16;
  v55 = v18;
  sub_25F349E38(*(v21 + 56) + 40 * v22, v64);
  sub_25F3440A0(v64, v65);
  v24 = v66;
  v25 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v26 = v61;
  v27 = v25;
  v28 = v59;
  if (sub_25F395A60(v61, v24, a3, v27))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v65);
LABEL_6:
    (*(v7 + 16))(v10, a2, v60);
    v66 = a3;
    v67 = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
    (*(v13 + 16))(boxed_opaque_existential_1, v61, a3);
    return sub_25F393984(v65, v10);
  }

  v31 = v20;
  sub_25F3C350C();
  v32 = *(v13 + 16);
  v33 = v56;
  v32(v56, v26, a3);
  v34 = v58;
  v35 = v60;
  (*(v7 + 16))(v58, a2, v60);
  sub_25F349E38(v65, v64);
  v36 = sub_25F3C353C();
  LODWORD(v61) = sub_25F3C432C();
  if (os_log_type_enabled(v36, v61))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59 = v31;
    v53 = v38;
    v63 = v38;
    *v37 = 136315650;
    v32(v54, v33, a3);
    v39 = sub_25F3C404C();
    v41 = v40;
    (*(v13 + 8))(v33, a3);
    v42 = sub_25F369EE8(v39, v41, &v63);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    sub_25F399634(&qword_27FD67DB8, MEMORY[0x277D40728]);
    v43 = v58;
    v44 = sub_25F3C455C();
    v46 = v45;
    (*(v7 + 8))(v43, v35);
    v47 = sub_25F369EE8(v44, v46, &v63);

    *(v37 + 14) = v47;
    *(v37 + 22) = 2080;
    sub_25F349E38(v64, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD66F90);
    v48 = sub_25F3C404C();
    v50 = v49;
    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    v51 = sub_25F369EE8(v48, v50, &v63);

    *(v37 + 24) = v51;
    _os_log_impl(&dword_25F342000, v36, v61, "Can't register %s for %s -- already registered: %s", v37, 0x20u);
    v52 = v53;
    swift_arrayDestroy();
    MEMORY[0x25F8DC6C0](v52, -1, -1);
    MEMORY[0x25F8DC6C0](v37, -1, -1);

    (*(v57 + 8))(v59, v55);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v64);
    (*(v7 + 8))(v34, v35);
    (*(v13 + 8))(v33, a3);
    (*(v57 + 8))(v31, v55);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v65);
}

uint64_t sub_25F397C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67EE0) + 36);
  v7 = sub_25F3C368C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(a2 + v6, v3, v7);
  (*(v8 + 56))(a2 + v6, 0, 1, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67EE8);
  v10 = *(*(v9 - 8) + 16);

  return v10(a2, a1, v9);
}

uint64_t sub_25F397D2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25F3C248C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_25F397D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67EF0);
  sub_25F34A598(&qword_27FD67EF8, &qword_27FD67EF0);
  return sub_25F3C3D1C();
}

uint64_t sub_25F397E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67F00);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25F397ED4()
{
  sub_25F3C445C();
  MEMORY[0x25F8DB8E0](0xD000000000000012, 0x800000025F3CC500);
  sub_25F3C23FC();
  sub_25F399634(&qword_27FD67DB8, MEMORY[0x277D40728]);
  v0 = sub_25F3C455C();
  MEMORY[0x25F8DB8E0](v0);

  MEMORY[0x25F8DB8E0](0xD000000000000022, 0x800000025F3CC520);
  return 0;
}

uint64_t sub_25F397FCC(uint64_t a1)
{
  v2 = sub_25F399634(&qword_27FD67EC8, type metadata accessor for UnsupportedRenderEffectError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F398038(uint64_t a1)
{
  v2 = sub_25F399634(&qword_27FD67EC8, type metadata accessor for UnsupportedRenderEffectError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F3980A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD67ED0);
  sub_25F34A598(&qword_27FD67ED8, &qword_27FD67ED0);
  return sub_25F3C3D0C();
}

void sub_25F398160()
{
  sub_25F39825C(319, &qword_27FD67DD0, MEMORY[0x277D40728], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_25F39825C(319, &qword_27FD67DD8, MEMORY[0x277D407A0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25F3982C0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25F39825C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25F3982C0()
{
  result = qword_27FD67DE0;
  if (!qword_27FD67DE0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FD67DE0);
  }

  return result;
}

uint64_t sub_25F398338(uint64_t *a1, int a2)
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

uint64_t sub_25F398380(uint64_t result, int a2, int a3)
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

double sub_25F3983CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F35C0C0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F3BC6C8();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F3C23FC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25F3440A0((*(v9 + 56) + 40 * v7), a2);
    sub_25F399374(v7, v9, MEMORY[0x277D40728], &qword_27FD673D0, MEMORY[0x277D40728], MEMORY[0x277D40730]);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25F3984F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F35C4C4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F3BCBAC();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F3C271C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    updated = type metadata accessor for EntryPointIndex.UpdateState(0);
    v20 = *(updated - 8);
    sub_25F35E370(v12 + *(v20 + 72) * v7, a2);
    sub_25F398D10(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = updated;
  }

  else
  {
    v18 = type metadata accessor for EntryPointIndex.UpdateState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_25F39867C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F35C4C4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F3BCEB0();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F3C271C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25F3440A0((*(v9 + 56) + 40 * v7), a2);
    sub_25F399374(v7, v9, MEMORY[0x277D40A08], &qword_27FD673C0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_25F3987A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F35C2A4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F3BD684();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F3C22BC();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25F3440A0((*(v9 + 56) + 40 * v7), a2);
    sub_25F399374(v7, v9, MEMORY[0x277D40708], &qword_27FD673A0, MEMORY[0x277D40708], MEMORY[0x277D40710]);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_25F3988CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_25F35C4C4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F3BD940();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_25F3C271C();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_25F3440A0((*(v9 + 56) + 40 * v7), a2);
    sub_25F399374(v7, v9, MEMORY[0x277D40A08], &qword_27FD673C0, MEMORY[0x277D40A08], MEMORY[0x277D40A10]);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_25F3989F4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F3C43DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25F3C463C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_25F3C2E1C() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F398BA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F3C43DC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_25F3C463C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 16 * v3);
          v17 = (v15 + 16 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F398D10(int64_t a1, uint64_t a2)
{
  v4 = sub_25F3C271C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_25F3C43DC();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_25F399634(&qword_27FD673C0, MEMORY[0x277D40A08]);
      v22 = sub_25F3C3FBC();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for EntryPointIndex.UpdateState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25F399054(int64_t a1, uint64_t a2)
{
  v40 = sub_25F3C271C();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_25F3C43DC();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_25F399634(&qword_27FD673C0, MEMORY[0x277D40A08]);
      v23 = sub_25F3C3FBC();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}