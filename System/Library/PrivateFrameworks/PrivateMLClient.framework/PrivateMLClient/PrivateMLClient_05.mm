uint64_t sub_21CFEF6A8@<X0>(int *a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + a1[6];
  result = sub_21D021CE4();
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 256;
  return result;
}

uint64_t sub_21CFEF758(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465F0, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFEF7F8(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121DFB8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFEF864()
{
  sub_21CFFCB6C(&qword_28121DFB8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);

  return sub_21D021EF4();
}

uint64_t sub_21CFEF8E0()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53C90);
  __swift_project_value_buffer(v0, qword_27CE53C90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CLIENT";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "SERVER";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFEFB10()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_281221290);
  __swift_project_value_buffer(v0, qword_281221290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026270;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundle_identifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "feature_identifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "request_id";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "automated_device_group";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "client_info";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFEFDA4()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          v3 = v0;
          v8 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0) + 20);
        }

        else
        {
          if (result != 2)
          {
            goto LABEL_15;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0) + 24);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            v3 = v0;
            v6 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0) + 28);
            break;
          case 4:
            v3 = v0;
            v7 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0) + 32);
            break;
          case 5:
            v3 = v0;
            v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0) + 36);
            break;
          default:
            goto LABEL_15;
        }
      }

      v0 = v3;
      sub_21D021E44();
LABEL_15:
      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFEFEAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
  if (!v4)
  {
    sub_21CFDA0E4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
    sub_21CFEF57C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
    sub_21CFE56F8(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
    sub_21CFEFFD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFEFFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFF0050@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a2 + v8);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_21CFF00F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE465F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF0198(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C2F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF0204()
{
  sub_21CFFCB6C(&qword_28121C2F8, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);

  return sub_21D021EF4();
}

uint64_t sub_21CFF0284()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_2812213F8);
  __swift_project_value_buffer(v0, qword_2812213F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026270;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "schema";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "grammar";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "partial_grammar";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v13 = *MEMORY[0x277D21888];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "schema_id";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v9();
  v16 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v16 = "grammar_id";
  *(v16 + 8) = 10;
  *(v16 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF0524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_21CFF062C(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_21CFF0BDC(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_21CFF1198(v5, a1, a2, a3);
          break;
        case 4:
          sub_21CFF1754(v5, a1, a2, a3);
          break;
        case 5:
          sub_21CFF1D10(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFF062C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46608, &qword_21D02CCD0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45420, &qword_21D023BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE46608, &qword_21D02CCD0);
      v35 = v43;
      sub_21D000BB8(v20, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_28121D490, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46608, &qword_21D02CCD0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46608, &qword_21D02CCD0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46608, &qword_21D02CCD0);
    return sub_21CF7F200(v36, &qword_27CE46608, &qword_21D02CCD0);
  }

  else
  {
    v39 = v44;
    sub_21D000BB8(v36, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46608, &qword_21D02CCD0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45420, &qword_21D023BE0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF0BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46610, &qword_21D02CCD8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45420, &qword_21D023BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE46610, &qword_21D02CCD8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45EA8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46610, &qword_21D02CCD8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46610, &qword_21D02CCD8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46610, &qword_21D02CCD8);
    return sub_21CF7F200(v36, &qword_27CE46610, &qword_21D02CCD8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46610, &qword_21D02CCD8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45420, &qword_21D023BE0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF1198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46618, &qword_21D02CCE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45420, &qword_21D023BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_21CF7F200(v28, &qword_27CE46618, &qword_21D02CCE0);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45E88, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46618, &qword_21D02CCE0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46618, &qword_21D02CCE0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46618, &qword_21D02CCE0);
    return sub_21CF7F200(v36, &qword_27CE46618, &qword_21D02CCE0);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46618, &qword_21D02CCE0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45420, &qword_21D023BE0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF1754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46620, &qword_21D02CCE8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45420, &qword_21D023BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_21CF7F200(v28, &qword_27CE46620, &qword_21D02CCE8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45E68, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46620, &qword_21D02CCE8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46620, &qword_21D02CCE8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46620, &qword_21D02CCE8);
    return sub_21CF7F200(v36, &qword_27CE46620, &qword_21D02CCE8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46620, &qword_21D02CCE8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45420, &qword_21D023BE0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF1D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46628, &qword_21D02CCF0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45420, &qword_21D023BE0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45420, &qword_21D023BE0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_21CF7F200(v28, &qword_27CE46628, &qword_21D02CCF0);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45E48, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46628, &qword_21D02CCF0);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46628, &qword_21D02CCF0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46628, &qword_21D02CCF0);
    return sub_21CF7F200(v36, &qword_27CE46628, &qword_21D02CCF0);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46628, &qword_21D02CCF0);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45420, &qword_21D023BE0);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF22CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  sub_21CF7F198(v3, &v16 - v10, &qword_27CE45420, &qword_21D023BE0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21CFF26F8(v3, a1, a2, a3);
    }

    else
    {
      sub_21CFF24C4(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_21CFF2930(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_21CFF2B68(v3, a1, a2, a3);
  }

  else
  {
    sub_21CFF2DA0(v3, a1, a2, a3);
  }

  result = sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  if (!v4)
  {
LABEL_12:
    v15 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF24C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45420, &qword_21D023BE0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45420, &qword_21D023BE0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    sub_21CFFCB6C(&qword_28121D490, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  __break(1u);
  return result;
}

uint64_t sub_21CFF26F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45420, &qword_21D023BE0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45420, &qword_21D023BE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    sub_21CFFCB6C(&qword_27CE45EA8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  __break(1u);
  return result;
}

uint64_t sub_21CFF2930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45420, &qword_21D023BE0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45420, &qword_21D023BE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
    sub_21CFFCB6C(&qword_27CE45E88, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  __break(1u);
  return result;
}

uint64_t sub_21CFF2B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45420, &qword_21D023BE0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45420, &qword_21D023BE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
    sub_21CFFCB6C(&qword_27CE45E68, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  __break(1u);
  return result;
}

uint64_t sub_21CFF2DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45420, &qword_21D023BE0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45420, &qword_21D023BE0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
    sub_21CFFCB6C(&qword_27CE45E48, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  __break(1u);
  return result;
}

uint64_t sub_21CFF3040(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46600, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF30E0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121D358, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF314C()
{
  sub_21CFFCB6C(qword_28121D358, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);

  return sub_21D021EF4();
}

uint64_t sub_21CFF320C()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFF3CD8();
    }
  }

  return result;
}

uint64_t sub_21CFF32D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46630, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF3374(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121D490, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF33E0()
{
  sub_21CFFCB6C(&qword_28121D490, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);

  return sub_21D021EF4();
}

uint64_t sub_21CFF34FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (v4[1])
  {
    v7 = *v4;
    result = sub_21D021FA4();
  }

  if (!v5)
  {
    v9 = v4 + *(a4(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF35BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46638, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF365C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45EA8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF36C8()
{
  sub_21CFFCB6C(&qword_27CE45EA8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);

  return sub_21D021EF4();
}

uint64_t sub_21CFF3818(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46640, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF38B8(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45E88, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF3924()
{
  sub_21CFFCB6C(&qword_27CE45E88, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);

  return sub_21D021EF4();
}

uint64_t sub_21CFF3A6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46648, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF3B0C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45E68, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF3B78()
{
  sub_21CFFCB6C(&qword_27CE45E68, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);

  return sub_21D021EF4();
}

uint64_t sub_21CFF3C4C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  result = MEMORY[0x223D3A110](a2, a3);
  *a4 = 0xD000000000000027;
  *a5 = 0x800000021D02F930;
  return result;
}

uint64_t sub_21CFF3CD8()
{
  result = sub_21D021E44();
  if (v0)
  {
  }

  return result;
}

uint64_t sub_21CFF3DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46650, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF3E88(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45E48, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF3EF4()
{
  sub_21CFFCB6C(&qword_27CE45E48, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);

  return sub_21D021EF4();
}

uint64_t sub_21CFF3FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_21CFF4034(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_21CFF4034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = a3;
  v48 = a4;
  v49 = a1;
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C8, &unk_21D026890);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46660, &qword_21D02CCF8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v43 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  v41 = v5;
  v28 = *(v5 + 56);
  v44 = v4;
  v28(&v37 - v26, 1, 1, v4);
  sub_21CF7F198(v49, v13, &qword_27CE452C8, &unk_21D026890);
  v38 = v15;
  v39 = v14;
  v29 = (*(v15 + 48))(v13, 1, v14);
  if (v29 == 1)
  {
    sub_21CF7F200(v13, &qword_27CE452C8, &unk_21D026890);
    v30 = v44;
  }

  else
  {
    sub_21D000BB8(v13, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
    sub_21D000BB8(v21, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
    sub_21CF7F200(v27, &qword_27CE46660, &qword_21D02CCF8);
    v31 = v42;
    sub_21D000BB8(v19, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
    sub_21D000BB8(v31, v27, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
    v30 = v44;
    v28(v27, 0, 1, v44);
  }

  sub_21CFFCB6C(qword_28121C6F0, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  v32 = v45;
  sub_21D021E84();
  v33 = v43;
  if (v32)
  {
    return sub_21CF7F200(v27, &qword_27CE46660, &qword_21D02CCF8);
  }

  sub_21CF7F198(v27, v43, &qword_27CE46660, &qword_21D02CCF8);
  if ((*(v41 + 48))(v33, 1, v30) == 1)
  {
    sub_21CF7F200(v27, &qword_27CE46660, &qword_21D02CCF8);
    return sub_21CF7F200(v33, &qword_27CE46660, &qword_21D02CCF8);
  }

  else
  {
    v35 = v40;
    sub_21D000BB8(v33, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
    if (v29 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v27, &qword_27CE46660, &qword_21D02CCF8);
    v36 = v49;
    sub_21CF7F200(v49, &qword_27CE452C8, &unk_21D026890);
    sub_21D000BB8(v35, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
    return (*(v38 + 56))(v36, 0, 1, v39);
  }
}

uint64_t sub_21CFF4580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFF45F8(v3, a1, a2, a3);
  if (!v4)
  {
    v6 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF45F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C8, &unk_21D026890);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE452C8, &unk_21D026890);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE452C8, &unk_21D026890);
  }

  sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21CFFCB6C(qword_28121C6F0, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21D021FE4();
  return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
}

uint64_t sub_21CFF4860(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46658, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF4900(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C640, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF496C()
{
  sub_21CFFCB6C(&qword_28121C640, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);

  return sub_21D021EF4();
}

uint64_t sub_21CFF49E8()
{
  result = MEMORY[0x223D3A110](0xD000000000000011, 0x800000021D02FA40);
  qword_27CE53D58 = 0xD00000000000002ALL;
  unk_27CE53D60 = 0x800000021D02F9F0;
  return result;
}

uint64_t sub_21CFF4A5C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_281221368);
  __swift_project_value_buffer(v0, qword_281221368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prompt_template_id";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt_template_variable_bindings";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "rich_variable_bindings";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF4C70()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result == 3)
      {
        break;
      }

      if (result == 2)
      {
        v3 = v0;
        type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable(0);
        sub_21CFFCB6C(&qword_28121CB08, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
LABEL_5:
        v0 = v3;
        sub_21D021E74();
        goto LABEL_6;
      }

      if (result == 1)
      {
        v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0) + 28);
        sub_21D021E44();
      }

LABEL_6:
      result = sub_21D021D74();
    }

    v3 = v0;
    type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
    sub_21CFFCB6C(&qword_28121C798, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_21CFF4DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21CFEF57C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable(0);
      sub_21CFFCB6C(&qword_28121CB08, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      sub_21D021FD4();
    }

    if (*(v5[1] + 16))
    {
      type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
      sub_21CFFCB6C(&qword_28121C798, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      sub_21D021FD4();
    }

    v8 = v5 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0) + 24);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF4F70@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  a2[1] = v4;
  v5 = a2 + *(a1 + 24);
  result = sub_21D021CE4();
  v7 = (a2 + *(a1 + 28));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_21CFF4FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_21D021CF4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21CFF5054(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_21D021CF4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21CFF50F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46668, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF5198(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121C6F0, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF5204()
{
  sub_21CFFCB6C(qword_28121C6F0, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);

  return sub_21D021EF4();
}

uint64_t sub_21CFF5284()
{
  if (qword_27CE450F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE53D58;
  v2 = qword_27CE53D60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD000000000000017, 0x800000021D02FAD0);

  qword_27CE53D68 = v1;
  unk_27CE53D70 = v2;
  return result;
}

uint64_t sub_21CFF532C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_281221380);
  __swift_project_value_buffer(v0, qword_281221380);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF5520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v8 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v6 = *(a4(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v9 = *(a4(0) + 24);
LABEL_3:
      v4 = 0;
      sub_21D021E44();
    }
  }
}

uint64_t sub_21CFF5614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_21CFD641C(v5, a1, a2, a3, a4);
  if (!v6)
  {
    sub_21CFDA0E4(v5, a1, a2, a3, a5);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF5694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_21CFF56F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46670, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF5798(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CB08, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF5804()
{
  sub_21CFFCB6C(&qword_28121CB08, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);

  return sub_21D021EF4();
}

uint64_t sub_21CFF58B0()
{
  if (qword_27CE450F8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE53D58;
  v2 = qword_27CE53D60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0xD000000000000014, 0x800000021D02FAF0);

  qword_27CE53D78 = v1;
  unk_27CE53D80 = v2;
  return result;
}

uint64_t sub_21CFF5958()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_281221308);
  __swift_project_value_buffer(v0, qword_281221308);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rich_variable";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF5B28()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0) + 20);
      sub_21D021E44();
    }

    else if (result == 2)
    {
      sub_21CFF5BD4();
    }
  }

  return result;
}

uint64_t sub_21CFF5BD4()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0) + 24);
  type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  sub_21CFFCB6C(qword_28121C848, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  return sub_21D021E84();
}

uint64_t sub_21CFF5C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
  if (!v4)
  {
    sub_21CFF5D0C(v3, a1, a2, a3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF5D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  sub_21CF7F198(a1 + *(v14 + 24), v8, &qword_27CE45298, &qword_21D023658);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE45298, &qword_21D023658);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  sub_21CFFCB6C(qword_28121C848, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
}

uint64_t sub_21CFF5F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = *(a1 + 20);
  v5 = *(a1 + 24);
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v5, 1, 1, v7);
}

uint64_t sub_21CFF6000(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46678, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF60A0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C798, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF610C()
{
  sub_21CFFCB6C(&qword_28121C798, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);

  return sub_21D021EF4();
}

uint64_t sub_21CFF618C()
{
  if (qword_27CE45108 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE53D78;
  v2 = qword_27CE53D80;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0x726156686369522ELL, 0xED0000656C626169);

  qword_27CE53D88 = v1;
  unk_27CE53D90 = v2;
  return result;
}

uint64_t sub_21CFF625C()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0);
        sub_21CFFCB6C(&qword_28121C8E8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
        sub_21D021E74();
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFF633C()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0), sub_21CFFCB6C(&qword_28121C8E8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component), result = sub_21D021FD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF6420@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  v2 = a2 + *(a1 + 20);
  return sub_21D021CE4();
}

uint64_t sub_21CFF64A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46680, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF6544(uint64_t a1)
{
  v2 = sub_21CFFCB6C(qword_28121C848, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF65B0()
{
  sub_21CFFCB6C(qword_28121C848, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);

  return sub_21D021EF4();
}

uint64_t sub_21CFF662C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_21D000C20(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21CFF66D4()
{
  if (qword_27CE45110 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE53D88;
  v2 = qword_27CE53D90;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0x656E6F706D6F432ELL, 0xEA0000000000746ELL);

  qword_27CE53D98 = v1;
  unk_27CE53DA0 = v2;
  return result;
}

uint64_t sub_21CFF677C()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_281221320);
  __swift_project_value_buffer(v0, qword_281221320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content_text";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_data";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF6984(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_21D021D74();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v9, a1, a2, a3);
    }

    else if (result == 2)
    {
      a5(v9, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_21CFF6A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46690, &qword_21D02CD00);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE452A0, &qword_21D023660);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE452A0, &qword_21D023660);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE46690, &qword_21D02CD00);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_28121CA48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46690, &qword_21D02CD00);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46690, &qword_21D02CD00);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46690, &qword_21D02CD00);
    return sub_21CF7F200(v36, &qword_27CE46690, &qword_21D02CD00);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46690, &qword_21D02CD00);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE452A0, &qword_21D023660);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF6FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46450, &qword_21D02CBD8);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE452A0, &qword_21D023660);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE452A0, &qword_21D023660);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE46450, &qword_21D02CBD8);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE46450, &qword_21D02CBD8);
  }

  sub_21CF7F198(v28, v36, &qword_27CE46450, &qword_21D02CBD8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE46450, &qword_21D02CBD8);
    return sub_21CF7F200(v36, &qword_27CE46450, &qword_21D02CBD8);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE46450, &qword_21D02CBD8);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE452A0, &qword_21D023660);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFF75A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  sub_21CF7F198(v3, &v15 - v10, &qword_27CE452A0, &qword_21D023660);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CFF7970(v3, a1, a2, a3);
  }

  else
  {
    sub_21CFF7738(v3, a1, a2, a3);
  }

  result = sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  if (!v4)
  {
LABEL_6:
    v14 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF7738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE452A0, &qword_21D023660);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE452A0, &qword_21D023660);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    sub_21CFFCB6C(&qword_28121CA48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t sub_21CFF7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE452A0, &qword_21D023660);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE452A0, &qword_21D023660);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  __break(1u);
  return result;
}

uint64_t sub_21CFF7C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46688, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF7CA0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121C8E8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF7D0C()
{
  sub_21CFFCB6C(&qword_28121C8E8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);

  return sub_21D021EF4();
}

uint64_t sub_21CFF7D8C()
{
  if (qword_27CE45118 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE53D98;
  v2 = qword_27CE53DA0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223D3A110](0x746E65746E6F432ELL, 0xEC00000074786554);

  qword_27CE53DA8 = v1;
  unk_27CE53DB0 = v2;
  return result;
}

uint64_t sub_21CFF7E38()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_281221338);
  __swift_project_value_buffer(v0, qword_281221338);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "is_self_attention";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v11 = *MEMORY[0x277D21888];
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF8008()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0) + 20);
      sub_21D021E44();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0) + 24);
      sub_21D021D94();
    }
  }

  return result;
}

uint64_t sub_21CFF80C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
  if (!v4)
  {
    sub_21CFF815C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

uint64_t sub_21CFF81DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5) = 2;
  return result;
}

uint64_t sub_21CFF8240(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_21CFF82D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE46698, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF8370(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_28121CA48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF83DC()
{
  sub_21CFFCB6C(&qword_28121CA48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);

  return sub_21D021EF4();
}

uint64_t sub_21CFF8458()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53DB8);
  __swift_project_value_buffer(v0, qword_27CE53DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0252E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tokens";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metadata";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF866C()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_21CFF88BC();
        break;
      case 2:
        sub_21CFF8810();
        break;
      case 1:
        sub_21CFF8724();
        break;
    }
  }

  return result;
}

uint64_t sub_21CFF88BC()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0) + 24);
  type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  return sub_21D021E84();
}

uint64_t sub_21CFF8970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  if ((~v8 & 0x3000000000000000) != 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      result = sub_21CFF8AAC(v3);
      if (v4)
      {
        return result;
      }
    }

    else
    {
      result = sub_21CFF8A24(v3);
      if (v4)
      {
        return result;
      }
    }
  }

  result = sub_21CFF8AF8(v3, a1, a2, a3);
  if (!v4)
  {
    v10 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t *sub_21CFF8A24(uint64_t *result)
{
  v1 = result[1];
  if ((v1 & 0x2000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *result;
    sub_21D00EFFC(*result, v1);
    sub_21D021F54();
    return sub_21CF8F4B4(v2, v1);
  }

  return result;
}

unsigned int *sub_21CFF8AAC(unsigned int *result)
{
  v1 = *(result + 1);
  v2 = ~v1 & 0x3000000000000000;
  v3 = v1 & 0x2000000000000000;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    return sub_21D021F74();
  }

  return result;
}

uint64_t sub_21CFF8AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  sub_21CF7F198(a1 + *(v14 + 24), v8, &qword_27CE452C0, &unk_21D023680);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_21CF7F200(v8, &qword_27CE452C0, &unk_21D023680);
  }

  sub_21D000BB8(v8, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21D021FE4();
  return sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
}

uint64_t sub_21CFF8D18@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = xmmword_21D0235C0;
  v4 = &a2[*(a1 + 20)];
  sub_21D021CE4();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_21CFF8DF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466A0, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF8E90(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF8EFC()
{
  sub_21CFFCB6C(&qword_27CE45DB8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);

  return sub_21D021EF4();
}

uint64_t sub_21CFF8F78()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53DD0);
  __swift_project_value_buffer(v0, qword_27CE53DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D0262B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_format";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "width_in_pixels";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "height_in_pixels";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "on_device_ocr";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "on_device_tokenizer";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "transmitted_image_format";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFF9280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_21D021D74();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        v12 = v4;
        switch(result)
        {
          case 1:
            v11 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0) + 20);
LABEL_5:
            v4 = v12;
            sub_21D021E44();
            break;
          case 2:
            sub_21CFE4ED0(a1, v5, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, sub_21D00F158);
            break;
          case 3:
            v14 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0) + 28);
LABEL_20:
            v4 = v12;
            sub_21D021E54();
            break;
        }
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            v12 = v4;
            v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0) + 36);
            goto LABEL_5;
          }

          v12 = v4;
          v15 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0) + 32);
          goto LABEL_20;
        }

        if (result == 6)
        {
          v12 = v4;
          v16 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0) + 40);
          goto LABEL_5;
        }

        if (result == 7)
        {
          sub_21CFF9430();
        }
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFF9430()
{
  v0 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0) + 44);
  sub_21D00F158();
  return sub_21D021DA4();
}

uint64_t sub_21CFF94A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  if (!v4)
  {
    sub_21CFE5638(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, sub_21D00F158);
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, 3, MEMORY[0x277D21860]);
    sub_21CFE6378(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata, MEMORY[0x277D21860]);
    sub_21CFEFFD4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    sub_21CFF963C(v3);
    sub_21CFF96B4(v3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFF963C(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_21D021FA4();
  }

  return result;
}

uint64_t sub_21CFF96B4(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v3 = (a1 + *(result + 44));
  if ((*(v3 + 9) & 1) == 0)
  {
    v4 = *v3;
    v5 = v3[1] & 1;
    sub_21D00F158();
    return sub_21D021F44();
  }

  return result;
}

uint64_t sub_21CFF975C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 256;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = (a2 + a1[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v11);
  *v13 = 0;
  v13[1] = 0;
  v14 = a2 + a1[11];
  *v14 = 0;
  *(v14 + 8) = 256;
  return result;
}

uint64_t sub_21CFF9830(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466A8, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF98D0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF993C()
{
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);

  return sub_21D021EF4();
}

uint64_t sub_21CFF99BC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53DE8);
  __swift_project_value_buffer(v0, qword_27CE53DE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21D026270;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "NOT_SET";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PNG";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "JPEG";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "HEIF";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "BMP";
  *(v14 + 8) = 3;
  *(v14 + 16) = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFF9C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466B8, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF9D28(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF9D94()
{
  sub_21CFFCB6C(&qword_27CE45D78, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);

  return sub_21D021EF4();
}

uint64_t sub_21CFF9E1C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21D022024();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21D022014();
}

uint64_t sub_21CFF9E64()
{
  do
  {
    result = sub_21D021D74();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_21CFF9EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466C0, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFF9F7C(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFF9FE8()
{
  sub_21CFFCB6C(&qword_27CE45D58, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);

  return sub_21D021EF4();
}

uint64_t sub_21CFFA064()
{
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21CFFA0EC()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53E30);
  __swift_project_value_buffer(v0, qword_27CE53E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21D026270;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "media_id";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_21D021FF4();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "total_chunks";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "total_size";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 10;
  *v13 = "image_metadata";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 11;
  *v14 = "audio_metadata";
  *(v14 + 8) = 14;
  *(v14 + 16) = 2;
  v8();
  return sub_21D022004();
}

uint64_t sub_21CFFA374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_21D021D74();
    if (v4 || (v11 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v13 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0) + 24);
        sub_21D021E44();
      }

      else if (result == 2)
      {
        v12 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0) + 28);
        sub_21D021DF4();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v9 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0) + 32);
          sub_21D021E04();
          break;
        case 10:
          sub_21CFFA4B4(v5, a1, a2, a3);
          break;
        case 11:
          sub_21CFFAA70(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_21CFFA4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45538, &qword_21D024220);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45538, &qword_21D024220);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
      v33 = v48;
    }

    else
    {
      sub_21CF7F200(v28, &qword_27CE452C0, &unk_21D023680);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE452C0, &unk_21D023680);
  }

  sub_21CF7F198(v28, v36, &qword_27CE452C0, &unk_21D023680);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE452C0, &unk_21D023680);
    return sub_21CF7F200(v36, &qword_27CE452C0, &unk_21D023680);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE452C0, &unk_21D023680);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45538, &qword_21D024220);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFFAA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE466D0, &qword_21D02CD08);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_21CF7F198(a1, v14, &qword_27CE45538, &qword_21D024220);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_21CF7F200(v14, &qword_27CE45538, &qword_21D024220);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_21D000BB8(v14, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    sub_21D000BB8(v22, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CF7F200(v28, &qword_27CE466D0, &qword_21D02CD08);
      v35 = v44;
      sub_21D000BB8(v20, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
      sub_21D000BB8(v35, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  v37 = v47;
  sub_21D021E84();
  if (v37)
  {
    return sub_21CF7F200(v28, &qword_27CE466D0, &qword_21D02CD08);
  }

  sub_21CF7F198(v28, v36, &qword_27CE466D0, &qword_21D02CD08);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_21CF7F200(v28, &qword_27CE466D0, &qword_21D02CD08);
    return sub_21CF7F200(v36, &qword_27CE466D0, &qword_21D02CD08);
  }

  else
  {
    v39 = v43;
    sub_21D000BB8(v36, v43, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    if (v32 != 1)
    {
      sub_21D021D84();
    }

    sub_21CF7F200(v28, &qword_27CE466D0, &qword_21D02CD08);
    v40 = v42;
    sub_21CF7F200(v42, &qword_27CE45538, &qword_21D024220);
    sub_21D000BB8(v39, v40, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_21CFFB02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  result = sub_21CFDA0E4(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
  if (!v4)
  {
    sub_21CFCA508(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, 2, MEMORY[0x277D21848]);
    sub_21CFE8B40(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader, 3, MEMORY[0x277D21850]);
    sub_21CF7F198(v3, v11, &qword_27CE45538, &qword_21D024220);
    v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CFFB4B4(v3, a1, a2, a3);
      }

      else
      {
        sub_21CFFB27C(v3, a1, a2, a3);
      }

      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    }

    v14 = v3 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFFB27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45538, &qword_21D024220);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45538, &qword_21D024220);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    sub_21CFFCB6C(&qword_27CE45D98, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  __break(1u);
  return result;
}

uint64_t sub_21CFFB4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CF7F198(a1, v8, &qword_27CE45538, &qword_21D024220);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_21CF7F200(v8, &qword_27CE45538, &qword_21D024220);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D000BB8(v8, v12, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
    sub_21D021FE4();
    return sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  }

  result = sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  __break(1u);
  return result;
}

uint64_t sub_21CFFB6F0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + a1[5];
  result = sub_21D021CE4();
  v7 = a1[7];
  v8 = (a2 + a1[6]);
  *v8 = 0;
  v8[1] = 0;
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + a1[8];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_21CFFB7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466C8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFFB880(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFFB8EC()
{
  sub_21CFFCB6C(&qword_27CE45D38, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);

  return sub_21D021EF4();
}

uint64_t sub_21CFFB968()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53E48);
  __swift_project_value_buffer(v0, qword_27CE53E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026250;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "media_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunk_index";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "chunk_data";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_last_chunk";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFFBBB0()
{
  while (1)
  {
    result = sub_21D021D74();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0) + 28);
        sub_21D021DD4();
      }

      else if (result == 4)
      {
        v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0) + 32);
        sub_21D021D94();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0) + 20);
      sub_21D021E44();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0) + 24);
      sub_21D021DF4();
    }
  }

  return result;
}

uint64_t sub_21CFFBCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CFD641C(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
  if (!v4)
  {
    sub_21CFD1D54(v3, a1, a2, a3, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk, 2, MEMORY[0x277D21848]);
    sub_21CFFBDBC(v3);
    sub_21CFFBE5C(v3);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFFBDBC(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v3 = a1 + *(result + 28);
  v4 = *(v3 + 8);
  if (v4 >> 60 != 15)
  {
    v5 = *v3;
    sub_21CF8F3E0(*v3, *(v3 + 8));
    sub_21D021F54();
    return sub_21CF94FCC(v5, v4);
  }

  return result;
}

uint64_t sub_21CFFBE5C(uint64_t a1)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_21D021F34();
  }

  return result;
}

double sub_21CFFBED8@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D021CE4();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  result = 0.0;
  v8 = a1[8];
  *(a2 + a1[7]) = xmmword_21D024230;
  *(a2 + v8) = 2;
  return result;
}

uint64_t sub_21CFFBF50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21D021CF4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21CFFBFB8(uint64_t a1)
{
  v3 = sub_21D021CF4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_21CFFC050(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466D8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFFC0F0(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFFC15C()
{
  sub_21CFFCB6C(&qword_27CE45D18, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);

  return sub_21D021EF4();
}

uint64_t sub_21CFFC1F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_21D022024();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21D0238C0;
  v14 = v13 + v12 + v10[14];
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_21D021FF4();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_21D022004();
}

uint64_t sub_21CFFC368()
{
  result = sub_21D021D74();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_21D00F1AC();
        sub_21D021DB4();
      }

      result = sub_21D021D74();
    }
  }

  return result;
}

uint64_t sub_21CFFC408()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_21D00F1AC(), result = sub_21D021F44(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0) + 20);
    return sub_21D021CD4();
  }

  return result;
}

uint64_t sub_21CFFC4BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return sub_21D021CE4();
}

uint64_t sub_21CFFC504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21D021CF4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21CFFC578(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_21D021CF4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21CFFC61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CFFCB6C(&qword_27CE466E0, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CFFC6BC(uint64_t a1)
{
  v2 = sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CFFC728()
{
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

uint64_t sub_21CFFC780()
{
  sub_21CFFCB6C(&qword_27CE45CF8, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);

  return sub_21D021EF4();
}

uint64_t sub_21CFFC7FC()
{
  sub_21D022C04();
  sub_21D022554();
  return sub_21D022C24();
}

uint64_t sub_21CFFC854()
{
  v0 = sub_21D022024();
  __swift_allocate_value_buffer(v0, qword_27CE53E78);
  __swift_project_value_buffer(v0, qword_27CE53E78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D0, &qword_21D02CAC0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE462D8, &qword_21D02CAC8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21D026290;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_SET";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21D021FF4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PCM_24K";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_21D022004();
}

uint64_t sub_21CFFCA40@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21D022024();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_21CFFCB6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21D000A74(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21D000B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D000BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D000C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v8 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F0, &qword_21D02CB90);
  v10 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v89 = &v71 - v11;
  v85 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v12 = *(v85 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v85);
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v87 = &v71 - v17;
  MEMORY[0x28223BE20](v16);
  v83 = &v71 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v71 - v21;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F8, &qword_21D02CB98);
  v23 = *(*(v84 - 8) + 64);
  MEMORY[0x28223BE20](v84);
  v25 = &v71 - v24;
  v82 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0);
  v26 = *(*(v82 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v82);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v32 = &v71 - v31;
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
    goto LABEL_42;
  }

  if (!v33 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v80 = v22;
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = (v12 + 48);
  v77 = *(v30 + 72);
  v74 = v29;
  v75 = &v71 - v31;
  v71 = v7;
  v72 = v37;
  v73 = v25;
  while (1)
  {
    v86 = v35;
    sub_21D00BC48(v35, v32, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    v88 = v33;
    sub_21D00BC48(v36, v29, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    v38 = *(v84 + 48);
    sub_21CF7F198(v32, v25, &qword_27CE452A0, &qword_21D023660);
    sub_21CF7F198(v29, &v25[v38], &qword_27CE452A0, &qword_21D023660);
    v39 = *v37;
    v40 = v85;
    if ((*v37)(v25, 1, v85) != 1)
    {
      break;
    }

    v41 = v39(&v25[v38], 1, v40);
    v42 = v88;
    if (v41 != 1)
    {
      goto LABEL_36;
    }

LABEL_29:
    sub_21CF7F200(v25, &qword_27CE452A0, &qword_21D023660);
    v63 = *(v82 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v64 = sub_21D022574();
    sub_21D000B58(v29, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    sub_21D000B58(v32, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
    if (v64)
    {
      v36 += v77;
      v35 = v86 + v77;
      v33 = v42 - 1;
      if (v33)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  v43 = v80;
  sub_21CF7F198(v25, v80, &qword_27CE452A0, &qword_21D023660);
  if (v39(&v25[v38], 1, v40) == 1)
  {
    sub_21D000B58(v43, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    v29 = v74;
LABEL_36:
    v65 = &qword_27CE463F8;
    v66 = &qword_21D02CB98;
    goto LABEL_41;
  }

  v44 = v87;
  v45 = v83;
  sub_21D000BB8(&v25[v38], v83, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v46 = *(v79 + 48);
  v47 = v43;
  v48 = v89;
  sub_21D00BC48(v47, v89, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D00BC48(v45, v48 + v46, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D00BC48(v89, v44, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v42 = v88;
    if (EnumCaseMultiPayload == 1)
    {
      v67 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText;
      v68 = v87;
      goto LABEL_39;
    }

    v54 = v81;
    sub_21D000BB8(v89 + v46, v81, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    v55 = *(v78 + 20);
    v56 = (v87 + v55);
    v57 = *(v87 + v55 + 8);
    v58 = (v54 + v55);
    v59 = v58[1];
    v25 = v73;
    v29 = v74;
    if (v57)
    {
      v32 = v75;
      v37 = v72;
      if (!v59 || (*v56 != *v58 || v57 != v59) && (sub_21D022B24() & 1) == 0)
      {
LABEL_33:
        sub_21D000B58(v81, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
        sub_21D000B58(v87, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
LABEL_34:
        sub_21D000B58(v89, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
        goto LABEL_40;
      }
    }

    else
    {
      v32 = v75;
      v37 = v72;
      if (v59)
      {
        goto LABEL_33;
      }
    }

    v60 = *(v78 + 24);
    v61 = *(v87 + v60);
    v62 = *(v81 + v60);
    if (v61 == 2)
    {
      if (v62 != 2)
      {
        goto LABEL_33;
      }
    }

    else if (v62 == 2 || ((v61 ^ v62) & 1) != 0)
    {
      goto LABEL_33;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    if ((sub_21D022574() & 1) == 0)
    {
      goto LABEL_33;
    }

    sub_21D000B58(v81, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    sub_21D000B58(v87, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
    goto LABEL_28;
  }

  v49 = v76;
  sub_21D00BC48(v89, v76, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v50 = swift_getEnumCaseMultiPayload();
  v42 = v88;
  if (v50 == 1)
  {
    v51 = v71;
    sub_21D000BB8(v89 + v46, v71, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v52 = sub_21D00C3A4(v49, v51);
    sub_21D000B58(v51, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D000B58(v49, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v29 = v74;
    v32 = v75;
    v37 = v72;
    v25 = v73;
    if ((v52 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_28:
    sub_21D000B58(v89, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    sub_21D000B58(v83, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    sub_21D000B58(v80, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    goto LABEL_29;
  }

  v67 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData;
  v68 = v49;
LABEL_39:
  sub_21D000B58(v68, v67);
  v25 = v73;
  v29 = v74;
  sub_21CF7F200(v89, &qword_27CE463F0, &qword_21D02CB90);
LABEL_40:
  v69 = v80;
  sub_21D000B58(v83, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D000B58(v69, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v65 = &qword_27CE452A0;
  v66 = &qword_21D023660;
LABEL_41:
  sub_21CF7F200(v25, v65, v66);
  sub_21D000B58(v29, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
  sub_21D000B58(v75, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
LABEL_42:
  v64 = 0;
  return v64 & 1;
}

uint64_t sub_21D0015EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_21D00BC48(v14, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        sub_21D00BC48(v15, v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        v17 = *(v4 + 20);
        v18 = &v11[v17];
        v19 = *&v11[v17 + 8];
        v20 = &v8[v17];
        v21 = *(v20 + 1);
        if (v19)
        {
          if (!v21 || (*v18 == *v20 ? (v22 = v19 == v21) : (v22 = 0), !v22 && (sub_21D022B24() & 1) == 0))
          {
LABEL_27:
            sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
            sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
            goto LABEL_28;
          }
        }

        else if (v21)
        {
          goto LABEL_27;
        }

        v23 = *(v4 + 24);
        v24 = &v11[v23];
        v25 = *&v11[v23 + 8];
        v26 = &v8[v23];
        v27 = *(v26 + 1);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_27;
          }

          v28 = *v24 == *v26 && v25 == v27;
          if (!v28 && (sub_21D022B24() & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else if (v27)
        {
          goto LABEL_27;
        }

        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
        v29 = sub_21D022574();
        sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
        if (v29)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_28:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_21D0018B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v47 - v11);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E8, &qword_21D02CB88);
  v13 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - v14;
  v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  v15 = *(*(v58 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v58);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    goto LABEL_28;
  }

  if (!v22 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v53 = (v5 + 48);
  v54 = v4;
  v26 = *(v19 + 72);
  v50 = v12;
  v51 = v26;
  v48 = v8;
  v49 = v18;
  v52 = &v47 - v20;
  while (1)
  {
    sub_21D00BC48(v24, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    sub_21D00BC48(v25, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    v27 = *(v58 + 20);
    v28 = &v21[v27];
    v29 = *&v21[v27 + 8];
    v30 = &v18[v27];
    v31 = *(v30 + 1);
    if (v29)
    {
      if (!v31)
      {
        goto LABEL_27;
      }

      v32 = *v28 == *v30 && v29 == v31;
      if (!v32 && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v31)
    {
      goto LABEL_27;
    }

    v57 = v24;
    v33 = *(v58 + 24);
    v34 = v55;
    v35 = *(v56 + 48);
    sub_21CF7F198(&v21[v33], v55, &qword_27CE45298, &qword_21D023658);
    sub_21CF7F198(&v18[v33], v34 + v35, &qword_27CE45298, &qword_21D023658);
    v36 = v54;
    v37 = *v53;
    if ((*v53)(v34, 1, v54) != 1)
    {
      break;
    }

    v38 = v37(v34 + v35, 1, v36);
    v21 = v52;
    if (v38 != 1)
    {
      goto LABEL_25;
    }

    sub_21CF7F200(v34, &qword_27CE45298, &qword_21D023658);
    v39 = v57;
LABEL_20:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v45 = sub_21D022574();
    sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
    if (v45)
    {
      v25 += v51;
      v24 = v39 + v51;
      if (--v22)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  v40 = v50;
  sub_21CF7F198(v34, v50, &qword_27CE45298, &qword_21D023658);
  if (v37(v34 + v35, 1, v36) == 1)
  {
    sub_21D000B58(v40, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    v18 = v49;
    v21 = v52;
LABEL_25:
    sub_21CF7F200(v34, &qword_27CE463E8, &qword_21D02CB88);
    goto LABEL_27;
  }

  v41 = v48;
  sub_21D000BB8(v34 + v35, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  v42 = sub_21D000C20(*v40, *v41);
  v21 = v52;
  if (v42)
  {
    v43 = *(v54 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v44 = sub_21D022574();
    sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21D000B58(v40, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21CF7F200(v34, &qword_27CE45298, &qword_21D023658);
    v18 = v49;
    v39 = v57;
    if ((v44 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  sub_21D000B58(v40, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
  sub_21CF7F200(v34, &qword_27CE45298, &qword_21D023658);
  v18 = v49;
LABEL_27:
  sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
  sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
LABEL_28:
  v45 = 0;
  return v45 & 1;
}

uint64_t sub_21D001EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v5 = *(*(v4 - 1) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v11 = (&v31 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (v12 && a1 != a2)
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      while (1)
      {
        sub_21D00BC48(v14, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        sub_21D00BC48(v15, v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        v17 = v4[6];
        v18 = (v11 + v17);
        v19 = *(v11 + v17 + 8);
        v20 = (v8 + v17);
        v21 = v20[1];
        if (v19)
        {
          if (!v21)
          {
            goto LABEL_25;
          }

          v22 = *v18 == *v20 && v19 == v21;
          if (!v22 && (sub_21D022B24() & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v21)
        {
          goto LABEL_25;
        }

        v23 = v4[7];
        v24 = (v11 + v23);
        v25 = *(v11 + v23 + 8);
        v26 = (v8 + v23);
        v27 = *(v8 + v23 + 8);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
LABEL_25:
            sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
            goto LABEL_26;
          }
        }

        if ((sub_21D001EE0(*v11, *v8) & 1) == 0)
        {
          goto LABEL_25;
        }

        v28 = v4[5];
        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
        v29 = sub_21D022574();
        sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
        if (v29)
        {
          v15 += v16;
          v14 += v16;
          if (--v12)
          {
            continue;
          }
        }

        return v29 & 1;
      }
    }

    v29 = 1;
  }

  else
  {
LABEL_26:
    v29 = 0;
  }

  return v29 & 1;
}

uint64_t sub_21D0021AC(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_21D022B24() & 1) == 0)
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

uint64_t sub_21D00223C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_21D00BC48(v14, v11, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        sub_21D00BC48(v15, v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        v17 = sub_21D00D2C0(v11, v8);
        sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21D0023F4(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D002450(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v54 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E0, &qword_21D0236A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46430, &qword_21D02CBD0);
  v12 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56);
  v55 = &v50 - v13;
  v59 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v14 = *(*(v59 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v59);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = &v50 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    goto LABEL_31;
  }

  if (!v21 || a1 == a2)
  {
    v46 = 1;
    return v46 & 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v52 = (v5 + 48);
  v53 = v4;
  v50 = *(v18 + 72);
  v51 = &v50 - v19;
  while (1)
  {
    sub_21D00BC48(v23, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    v57 = v24;
    v58 = v23;
    v25 = v11;
    sub_21D00BC48(v24, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    v26 = *(v59 + 20);
    v27 = v55;
    v28 = *(v56 + 48);
    sub_21CF7F198(&v20[v26], v55, &qword_27CE452E0, &qword_21D0236A0);
    sub_21CF7F198(&v17[v26], v27 + v28, &qword_27CE452E0, &qword_21D0236A0);
    v29 = v53;
    v30 = *v52;
    if ((*v52)(v27, 1, v53) == 1)
    {
      break;
    }

    sub_21CF7F198(v27, v25, &qword_27CE452E0, &qword_21D0236A0);
    if (v30(v27 + v28, 1, v29) == 1)
    {
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
      sub_21D000B58(v51, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
      v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken;
      v48 = v25;
      goto LABEL_30;
    }

    v31 = v27 + v28;
    v32 = v54;
    sub_21D000BB8(v31, v54, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    v33 = *(v29 + 20);
    v34 = (v25 + v33);
    v35 = *(v25 + v33 + 8);
    v36 = (v32 + v33);
    v37 = v36[1];
    v11 = v25;
    v20 = v51;
    if (v35)
    {
      if (!v37 || (*v34 != *v36 || v35 != v37) && (sub_21D022B24() & 1) == 0)
      {
LABEL_26:
        sub_21D000B58(v54, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
        sub_21D000B58(v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
        sub_21CF7F200(v27, &qword_27CE452E0, &qword_21D0236A0);
LABEL_27:
        sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
        sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
        goto LABEL_31;
      }
    }

    else if (v37)
    {
      goto LABEL_26;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v38 = v27;
    v39 = v54;
    v40 = sub_21D022574();
    sub_21D000B58(v39, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    sub_21CF7F200(v38, &qword_27CE452E0, &qword_21D0236A0);
    if ((v40 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_17:
    v41 = *(v59 + 24);
    v42 = &v20[v41];
    v43 = v20[v41 + 4];
    v44 = &v17[v41];
    v45 = v44[4];
    if (v43)
    {
      if ((v44[4] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((v44[4] & 1) != 0 || *v42 != *v44)
    {
      goto LABEL_27;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v46 = sub_21D022574();
    sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    sub_21D000B58(v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    if (v46)
    {
      v24 = v57 + v50;
      v23 = v58 + v50;
      if (--v21)
      {
        continue;
      }
    }

    return v46 & 1;
  }

  if (v30(v27 + v28, 1, v29) == 1)
  {
    sub_21CF7F200(v27, &qword_27CE452E0, &qword_21D0236A0);
    v11 = v25;
    v20 = v51;
    goto LABEL_17;
  }

  sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
  v48 = v51;
  v47 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter;
LABEL_30:
  sub_21D000B58(v48, v47);
  sub_21CF7F200(v27, &qword_27CE46430, &qword_21D02CBD0);
LABEL_31:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_21D002ADC(uint64_t a1, uint64_t a2)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46420, &qword_21D02CBC0);
  v4 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v6 = &v59 - v5;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v59 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46428, &qword_21D02CBC8);
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v59 - v17;
  v18 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v72 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v25 = &v59 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    goto LABEL_23;
  }

  if (!v26 || a1 == a2)
  {
    v55 = 1;
    return v55 & 1;
  }

  v66 = v22;
  v59 = v11;
  v60 = v7;
  v61 = v6;
  v62 = &v59 - v24;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v30 = (v8 + 48);
  v31 = *(v23 + 72);
  v63 = v15;
  v64 = v31;
  v32 = &qword_27CE45AC8;
  v33 = &qword_21D026570;
  v34 = v72;
  v65 = v30;
  v35 = v68;
  while (1)
  {
    v70 = v28;
    sub_21D00BC48(v28, v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    v71 = v26;
    sub_21D00BC48(v29, v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    v36 = *(v69 + 48);
    sub_21CF7F198(v25, v35, v32, v33);
    sub_21CF7F198(v34, v35 + v36, v32, v33);
    v37 = v33;
    v38 = v32;
    v39 = *v30;
    if ((*v30)(v35, 1, v7) != 1)
    {
      break;
    }

    if (v39(v35 + v36, 1, v7) != 1)
    {
      sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
      v56 = v25;
      v57 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment;
      goto LABEL_22;
    }

    v32 = v38;
    v40 = v38;
    v33 = v37;
    sub_21CF7F200(v35, v40, v37);
LABEL_10:
    v48 = *(v66 + 24);
    v49 = &v25[v48];
    v50 = v25[v48 + 4];
    v51 = v34 + v48;
    v52 = *(v51 + 4);
    if (v50)
    {
      v53 = v71;
      if ((*(v51 + 4) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v53 = v71;
      if ((*(v51 + 4) & 1) != 0 || *v49 != *v51)
      {
LABEL_19:
        sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
        sub_21D000B58(v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
        goto LABEL_23;
      }
    }

    v54 = *(v66 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v34 = v72;
    v55 = sub_21D022574();
    sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    sub_21D000B58(v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
    if (v55)
    {
      v30 = v65;
      v29 += v64;
      v28 = v70 + v64;
      v26 = v53 - 1;
      if (v26)
      {
        continue;
      }
    }

    return v55 & 1;
  }

  v41 = v63;
  sub_21CF7F198(v35, v63, v38, v37);
  if (v39(v35 + v36, 1, v7) != 1)
  {
    v42 = v59;
    sub_21D000BB8(v35 + v36, v59, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    v43 = *(v67 + 48);
    v44 = v61;
    sub_21D00BC48(v41, v61, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21D00BC48(v42, v44 + v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    v45 = sub_21D00C3A4(v44, (v44 + v43));
    sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    v46 = v44 + v43;
    v34 = v72;
    sub_21D000B58(v46, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    v47 = v44;
    v7 = v60;
    sub_21D000B58(v47, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
    sub_21D000B58(v41, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
    sub_21CF7F200(v35, v38, v37);
    v25 = v62;
    v32 = v38;
    v33 = v37;
    if ((v45 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
  sub_21D000B58(v62, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment);
  v57 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content;
  v56 = v41;
LABEL_22:
  sub_21D000B58(v56, v57);
  sub_21CF7F200(v35, &qword_27CE46428, &qword_21D02CBC8);
LABEL_23:
  v55 = 0;
  return v55 & 1;
}

uint64_t sub_21D003168@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21D021934();
    if (v10)
    {
      v11 = sub_21D021954();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21D021944();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21D021934();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21D021954();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21D021944();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21D003398(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21D003528(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21CF8F460(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_21D003168(v14, a3, a4, &v13);
  v10 = v4;
  sub_21CF8F460(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_21D003528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21D021934();
  v11 = result;
  if (result)
  {
    result = sub_21D021954();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21D021944();
  sub_21D003168(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_21D0035E0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21CF8F3E0(a3, a4);
          return sub_21D003398(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21D003748(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ConstrainedDecodingMetrics(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[8];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[11];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[12];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 4);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 4);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[13];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  v45 = v4[14];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v49 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v49)
    {
      return 0;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v49) = 1;
    }

    if (v49)
    {
      return 0;
    }
  }

  v50 = v4;
  if (sub_21D0023F4(*a1, *a2))
  {
    v51 = v50[5];
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D0039D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F8, &qword_21D0246F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46458, &qword_21D02CBE0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21CF7F198(a1, &v24 - v16, &qword_27CE455F8, &qword_21D0246F0);
  sub_21CF7F198(a2, &v17[v18], &qword_27CE455F8, &qword_21D0246F0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v17, &qword_27CE455F8, &qword_21D0246F0);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse(0) + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v20 = sub_21D022574();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v17, v12, &qword_27CE455F8, &qword_21D0246F0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
LABEL_6:
    sub_21CF7F200(v17, &qword_27CE46458, &qword_21D02CBE0);
    goto LABEL_7;
  }

  sub_21D000BB8(&v17[v18], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  v21 = sub_21D005270(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  sub_21CF7F200(v17, &qword_27CE455F8, &qword_21D0246F0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21D003D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46468, &qword_21D02CBF0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0) + 20);
  v18 = *(v13 + 56);
  v24[1] = a1;
  sub_21CF7F198(a1 + v17, v16, &qword_27CE455F0, &unk_21D026C00);
  sub_21CF7F198(a2 + v17, &v16[v18], &qword_27CE455F0, &unk_21D026C00);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v16, &qword_27CE455F0, &unk_21D026C00);
LABEL_9:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v20 = sub_21D022574();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v16, v11, &qword_27CE455F0, &unk_21D026C00);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
LABEL_6:
    sub_21CF7F200(v16, &qword_27CE46468, &qword_21D02CBF0);
    goto LABEL_7;
  }

  v21 = v24[0];
  sub_21D000BB8(&v16[v18], v24[0], type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  v22 = sub_21D00D9DC(v11, v21);
  sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
  sub_21CF7F200(v16, &qword_27CE455F0, &unk_21D026C00);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21D004070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45540, &qword_21D024228);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464E0, &qword_21D02CC80);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21CF7F198(a1, &v24 - v16, &qword_27CE45540, &qword_21D024228);
  sub_21CF7F198(a2, &v17[v18], &qword_27CE45540, &qword_21D024228);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v17, &qword_27CE45540, &qword_21D024228);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0) + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v20 = sub_21D022574();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v17, v12, &qword_27CE45540, &qword_21D024228);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
LABEL_6:
    sub_21CF7F200(v17, &qword_27CE464E0, &qword_21D02CC80);
    goto LABEL_7;
  }

  sub_21D000BB8(&v17[v18], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  v21 = sub_21D0043B4(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  sub_21CF7F200(v17, &qword_27CE45540, &qword_21D024228);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21D0043B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464E8, &qword_21D02CC88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_21D00BC48(a1, &v31 - v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  sub_21D00BC48(a2, &v23[v24], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D00BC48(v23, v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000BB8(&v23[v24], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v25 = sub_21D00BE38(v16, v7);
      sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v26 = v16;
      v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
LABEL_9:
      sub_21D000B58(v26, v27);
      sub_21D000B58(v23, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
      return v25 & 1;
    }

    v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
    v29 = v16;
  }

  else
  {
    sub_21D00BC48(v23, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse.OneOf_Payload);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D000BB8(&v23[v24], v11, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v25 = sub_21D00A608(v18, v11);
      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
      v26 = v18;
      v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
    v29 = v18;
  }

  sub_21D000B58(v29, v28);
  sub_21CF7F200(v23, &qword_27CE464E8, &qword_21D02CC88);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_21D004720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464D0, &qword_21D02CC70);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - v6;
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464D8, &qword_21D02CC78);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  v21 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v22 = v21[6];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 9);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 9);
  if (v24)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (v26)
    {
      goto LABEL_35;
    }

    v34 = *v23;
    v35 = *v25;
    if (v25[1])
    {
      if (v35)
      {
        if (v35 == 1)
        {
          if (v34 != 1)
          {
            goto LABEL_35;
          }
        }

        else if (v34 != 2)
        {
          goto LABEL_35;
        }
      }

      else if (v34)
      {
        goto LABEL_35;
      }
    }

    else if (v34 != v35)
    {
      goto LABEL_35;
    }
  }

  v27 = v21[7];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_35;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v59 = v9;
      v32 = v21;
      v33 = sub_21D022B24();
      v21 = v32;
      v9 = v59;
      if ((v33 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v31)
  {
    goto LABEL_35;
  }

  v36 = v21[8];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_35;
    }

    if (*v37 != *v39 || v38 != v40)
    {
      v59 = v9;
      v41 = v21;
      v42 = sub_21D022B24();
      v21 = v41;
      v9 = v59;
      if ((v42 & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else if (v40)
  {
    goto LABEL_35;
  }

  v43 = v21[9];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 4);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 4);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_35;
    }
  }

  v58 = v21;
  v50 = *(v17 + 48);
  sub_21CF7F198(a1, v20, &qword_27CE455D8, &qword_21D0246C0);
  v59 = v50;
  sub_21CF7F198(a2, &v20[v50], &qword_27CE455D8, &qword_21D0246C0);
  v51 = *(v9 + 48);
  if (v51(v20, 1, v8) == 1)
  {
    if (v51(&v20[v59], 1, v8) == 1)
    {
      sub_21CF7F200(v20, &qword_27CE455D8, &qword_21D0246C0);
      goto LABEL_44;
    }

LABEL_42:
    sub_21CF7F200(v20, &qword_27CE464D8, &qword_21D02CC78);
    v48 = 0;
    return v48 & 1;
  }

  sub_21CF7F198(v20, v16, &qword_27CE455D8, &qword_21D0246C0);
  if (v51(&v20[v59], 1, v8) == 1)
  {
    sub_21D000B58(v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
    goto LABEL_42;
  }

  sub_21D000BB8(&v20[v59], v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  v52 = *(v4 + 48);
  sub_21D00BC48(v16, v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21D00BC48(v12, &v7[v52], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  v53 = sub_21D004CDC(v7, &v7[v52]);
  sub_21D000B58(&v7[v52], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21D000B58(v16, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.OneOf_StatusDetails);
  sub_21CF7F200(v20, &qword_27CE455D8, &qword_21D0246C0);
  if (v53)
  {
LABEL_44:
    v54 = v58[10];
    v55 = *(a1 + v54);
    v56 = *(a2 + v54);
    if (v55 == 2)
    {
      if (v56 == 2)
      {
LABEL_49:
        v57 = v58[5];
        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
        v48 = sub_21D022574();
        return v48 & 1;
      }
    }

    else if (v56 != 2 && ((v55 ^ v56) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

LABEL_35:
  v48 = 0;
  return v48 & 1;
}

uint64_t sub_21D004CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse.TokenLimitReached(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D004E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46468, &qword_21D02CBF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_25;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v22)
  {
    goto LABEL_25;
  }

  v24 = v17[6];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_25;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v28)
  {
    goto LABEL_25;
  }

  v30 = v17[7];
  v31 = *(v13 + 48);
  sub_21CF7F198(a1 + v30, v16, &qword_27CE455F0, &unk_21D026C00);
  v32 = a2 + v30;
  v33 = a2;
  v34 = v31;
  sub_21CF7F198(v32, &v16[v31], &qword_27CE455F0, &unk_21D026C00);
  v35 = *(v5 + 48);
  if (v35(v16, 1, v4) != 1)
  {
    sub_21CF7F198(v16, v12, &qword_27CE455F0, &unk_21D026C00);
    if (v35(&v16[v34], 1, v4) != 1)
    {
      sub_21D000BB8(&v16[v34], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
      v38 = sub_21D00D9DC(v12, v8);
      sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
      sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
      sub_21CF7F200(v16, &qword_27CE455F0, &unk_21D026C00);
      if ((v38 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_28;
    }

    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo);
LABEL_24:
    sub_21CF7F200(v16, &qword_27CE46468, &qword_21D02CBF0);
    goto LABEL_25;
  }

  if (v35(&v16[v34], 1, v4) != 1)
  {
    goto LABEL_24;
  }

  sub_21CF7F200(v16, &qword_27CE455F0, &unk_21D026C00);
LABEL_28:
  v39 = v17[8];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (v33 + v39);
  v43 = v42[1];
  if (v41)
  {
    if (v43 && (*v40 == *v42 && v41 == v43 || (sub_21D022B24() & 1) != 0))
    {
      goto LABEL_35;
    }
  }

  else if (!v43)
  {
LABEL_35:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v36 = sub_21D022574();
    return v36 & 1;
  }

LABEL_25:
  v36 = 0;
  return v36 & 1;
}

uint64_t sub_21D005270(uint64_t a1, uint64_t a2)
{
  v75 = a1;
  v76 = a2;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse(0);
  v5 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v68 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v74 = &v67 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v67 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v67 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v67 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v67 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46460, &qword_21D02CBE8);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v42 = &v67 - v41;
  v43 = *(v40 + 56);
  sub_21D00BC48(v75, &v67 - v41, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  sub_21D00BC48(v76, &v42[v43], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_21D00BC48(v42, v35, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v45 = &v42[v43];
          v46 = v68;
          sub_21D000BB8(v45, v68, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
          v47 = sub_21D005B64(v35, v46);
          v48 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse;
          sub_21D000B58(v46, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse);
          v49 = v35;
LABEL_31:
          v65 = v48;
          goto LABEL_32;
        }

        v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse;
        v59 = v35;
      }

      else
      {
        sub_21D00BC48(v42, v32, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v62 = &v42[v43];
          v63 = v69;
          sub_21D000BB8(v62, v69, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          v47 = sub_21D004720(v32, v63);
          v48 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse;
          sub_21D000B58(v63, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse);
          v49 = v32;
          goto LABEL_31;
        }

        v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.StatusResponse;
        v59 = v32;
      }
    }

    else
    {
      sub_21D00BC48(v42, v37, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_21D000BB8(&v42[v43], v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
        v47 = sub_21D004E40(v37, v19);
        v48 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse;
        sub_21D000B58(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse);
        v49 = v37;
        goto LABEL_31;
      }

      v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextTokenResponse;
      v59 = v37;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_21D00BC48(v42, v29, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v60 = &v42[v43];
      v61 = v70;
      sub_21D000BB8(v60, v70, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v47 = sub_21D003D14(v29, v61);
      v48 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse;
      sub_21D000B58(v61, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse);
      v49 = v29;
      goto LABEL_31;
    }

    v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceEnvironmentResponse;
    v59 = v29;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v50 = v74;
    sub_21D00BC48(v42, v74, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v51 = &v42[v43];
      v52 = v73;
      sub_21D000BB8(v51, v73, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
      v53 = *(v71 + 20);
      v54 = (v50 + v53);
      v55 = *(v50 + v53 + 8);
      v56 = (v52 + v53);
      v57 = v56[1];
      if (v55)
      {
        if (!v57 || (*v54 != *v56 || v55 != v57) && (sub_21D022B24() & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else if (v57)
      {
LABEL_37:
        sub_21D000B58(v52, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v50, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        goto LABEL_29;
      }

      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      if (sub_21D022574())
      {
        sub_21D000B58(v52, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v50, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse);
        sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
        v47 = 1;
        return v47 & 1;
      }

      goto LABEL_37;
    }

    v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.InferenceCompleteResponse;
    v59 = v50;
  }

  else
  {
    sub_21D00BC48(v42, v24, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v64 = v72;
      sub_21D000BB8(&v42[v43], v72, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      v47 = sub_21D004070(v24, v64);
      sub_21D000B58(v64, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse);
      v49 = v24;
      v65 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse;
LABEL_32:
      sub_21D000B58(v49, v65);
      sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.OneOf_ResponseType);
      return v47 & 1;
    }

    v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.NextMediaResponse;
    v59 = v24;
  }

LABEL_28:
  sub_21D000B58(v59, v58);
  sub_21CF7F200(v42, &qword_27CE46460, &qword_21D02CBE8);
LABEL_29:
  v47 = 0;
  return v47 & 1;
}

uint64_t sub_21D005B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v64 - v10;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46480, &qword_21D02CC08);
  v11 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71);
  v13 = &v64 - v12;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46488, &qword_21D02CC10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v64 - v25;
  v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse(0);
  v28 = a1;
  v29 = v27;
  v30 = *(v27 + 24);
  v31 = (v28 + v30);
  v32 = *(v28 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_25;
    }

    v69 = v22;
    if (*v31 != *v33 || v32 != v34)
    {
      v35 = v18;
      v36 = v28;
      v37 = sub_21D022B24();
      v28 = v36;
      v18 = v35;
      if ((v37 & 1) == 0)
      {
        goto LABEL_25;
      }
    }
  }

  else
  {
    v69 = v22;
    if (v34)
    {
      goto LABEL_25;
    }
  }

  v66 = v29;
  v67 = v13;
  v65 = v7;
  v38 = a2;
  v39 = *(v29 + 28);
  v40 = *(v23 + 48);
  v68 = v28;
  sub_21CF7F198(v28 + v39, v26, &qword_27CE455E8, &unk_21D0246D0);
  sub_21CF7F198(v38 + v39, &v26[v40], &qword_27CE455E8, &unk_21D0246D0);
  v41 = *(v15 + 48);
  if (v41(v26, 1, v14) != 1)
  {
    v42 = v69;
    sub_21CF7F198(v26, v69, &qword_27CE455E8, &unk_21D0246D0);
    if (v41(&v26[v40], 1, v14) != 1)
    {
      sub_21D000BB8(&v26[v40], v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v46 = *(v14 + 20);
      v47 = v42;
      v48 = *(v42 + v46);
      v49 = *&v18[v46];
      if (v48 == v49 || (v50 = *(v42 + v46), , , v51 = sub_21CFE2928(v48, v49), , , v51))
      {
        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
        v52 = sub_21D022574();
        sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        sub_21D000B58(v47, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
        sub_21CF7F200(v26, &qword_27CE455E8, &unk_21D0246D0);
        if ((v52 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_18;
      }

      sub_21D000B58(v18, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      sub_21D000B58(v47, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
      v43 = &qword_27CE455E8;
      v44 = &unk_21D0246D0;
LABEL_14:
      v45 = v26;
LABEL_24:
      sub_21CF7F200(v45, v43, v44);
      goto LABEL_25;
    }

    sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo);
LABEL_13:
    v43 = &qword_27CE46488;
    v44 = &qword_21D02CC10;
    goto LABEL_14;
  }

  if (v41(&v26[v40], 1, v14) != 1)
  {
    goto LABEL_13;
  }

  sub_21CF7F200(v26, &qword_27CE455E8, &unk_21D0246D0);
LABEL_18:
  v53 = *(v71 + 48);
  v54 = v67;
  sub_21CF7F198(v68, v67, &qword_27CE455E0, &qword_21D0246C8);
  sub_21CF7F198(v38, v54 + v53, &qword_27CE455E0, &qword_21D0246C8);
  v55 = v73;
  v56 = *(v72 + 48);
  if (v56(v54, 1, v73) == 1)
  {
    if (v56(v54 + v53, 1, v55) == 1)
    {
      sub_21CF7F200(v54, &qword_27CE455E0, &qword_21D0246C8);
LABEL_28:
      v63 = *(v66 + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v58 = sub_21D022574();
      return v58 & 1;
    }

    goto LABEL_23;
  }

  v57 = v70;
  sub_21CF7F198(v54, v70, &qword_27CE455E0, &qword_21D0246C8);
  if (v56(v54 + v53, 1, v55) == 1)
  {
    sub_21D000B58(v57, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
LABEL_23:
    v43 = &qword_27CE46480;
    v44 = &qword_21D02CC08;
    v45 = v54;
    goto LABEL_24;
  }

  v60 = v54 + v53;
  v61 = v65;
  sub_21D000BB8(v60, v65, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  v62 = sub_21D0064F8(v57, v61);
  sub_21D000B58(v61, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21D000B58(v57, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21CF7F200(v54, &qword_27CE455E0, &qword_21D0246C8);
  if (v62)
  {
    goto LABEL_28;
  }

LABEL_25:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_21D0062C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  v35 = v4[11];
  v36 = (a1 + v35);
  v37 = *(a1 + v35 + 8);
  v38 = (a2 + v35);
  v39 = *(a2 + v35 + 8);
  if (v37)
  {
    if (!v39)
    {
      return 0;
    }
  }

  else
  {
    if (*v36 != *v38)
    {
      LOBYTE(v39) = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  v40 = v4[12];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 4);
  v43 = (a2 + v40);
  v44 = *(a2 + v40 + 4);
  if (v42)
  {
    if (!v44)
    {
      return 0;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D0064F8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence(0);
  v6 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v49 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v49 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464C8, &qword_21D02CC68);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v32 = &v49 - v31;
  v33 = *(v30 + 56);
  sub_21D00BC48(a1, &v49 - v31, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  sub_21D00BC48(v54, &v32[v33], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_21D00BC48(v32, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v35 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation;
        v36 = v19;
        goto LABEL_20;
      }

      v47 = v52;
      sub_21D000BB8(&v32[v33], v52, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v44 = sub_21D022574();
      v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation;
      sub_21D000B58(v47, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.FinishedFirstTokenComputation);
      v46 = v19;
      goto LABEL_23;
    }

    sub_21D00BC48(v32, v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v35 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence;
      v36 = v22;
      goto LABEL_20;
    }

    v37 = v53;
    sub_21D000BB8(&v32[v33], v53, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
    v38 = *(v50 + 20);
    v39 = &v22[v38];
    v40 = *&v22[v38 + 8];
    v41 = (v37 + v38);
    v42 = v41[1];
    if (v40)
    {
      if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v42)
    {
LABEL_28:
      sub_21D000B58(v37, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v32, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      goto LABEL_21;
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    if (sub_21D022574())
    {
      sub_21D000B58(v37, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopSequence);
      sub_21D000B58(v32, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
      v44 = 1;
      return v44 & 1;
    }

    goto LABEL_28;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D00BC48(v32, v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v35 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken;
      v36 = v25;
      goto LABEL_20;
    }

    v43 = v51;
    sub_21D000BB8(&v32[v33], v51, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v44 = sub_21D022574();
    v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken;
    sub_21D000B58(v43, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.EncounteredStopToken);
    v46 = v25;
LABEL_23:
    sub_21D000B58(v46, v45);
    sub_21D000B58(v32, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
    return v44 & 1;
  }

  sub_21D00BC48(v32, v27, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OneOf_CompletionReason);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(&v32[v33], v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v44 = sub_21D022574();
    v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached;
    sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached);
    v46 = v27;
    goto LABEL_23;
  }

  v35 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.OutputTokenLimitReached;
  v36 = v27;
LABEL_20:
  sub_21D000B58(v36, v35);
  sub_21CF7F200(v32, &qword_27CE464C8, &qword_21D02CC68);
LABEL_21:
  v44 = 0;
  return v44 & 1;
}

uint64_t sub_21D006C84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_21D022B24();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_21D022B24();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v35 = v4;
      v36 = sub_21D022B24();
      v4 = v35;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v37 = v4[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_21D022B24() & 1) != 0))
    {
      goto LABEL_42;
    }
  }

  else if (!v41)
  {
LABEL_42:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D006EB0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 8);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D006F78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E0, &qword_21D0236A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46430, &qword_21D02CBD0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v39 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v40 = a1;
  v17 = *(v39 + 20);
  v18 = *(v13 + 56);
  sub_21CF7F198(a1 + v17, v16, &qword_27CE452E0, &qword_21D0236A0);
  sub_21CF7F198(a2 + v17, &v16[v18], &qword_27CE452E0, &qword_21D0236A0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v16, &qword_27CE452E0, &qword_21D0236A0);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_21CF7F198(v16, v11, &qword_27CE452E0, &qword_21D0236A0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
LABEL_9:
    v25 = &qword_27CE46430;
    v26 = &qword_21D02CBD0;
LABEL_25:
    sub_21CF7F200(v16, v25, v26);
LABEL_26:
    v35 = 0;
    return v35 & 1;
  }

  v27 = v38;
  sub_21D000BB8(&v16[v18], v38, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  v28 = *(v4 + 20);
  v29 = &v11[v28];
  v30 = *&v11[v28 + 8];
  v31 = (v27 + v28);
  v32 = v31[1];
  if (!v30)
  {
    if (!v32)
    {
      goto LABEL_17;
    }

LABEL_24:
    sub_21D000B58(v27, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
    v25 = &qword_27CE452E0;
    v26 = &qword_21D0236A0;
    goto LABEL_25;
  }

  if (!v32)
  {
    goto LABEL_24;
  }

  v33 = *v29 == *v31 && v30 == v32;
  if (!v33 && (sub_21D022B24() & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  v34 = sub_21D022574();
  sub_21D000B58(v27, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter.SpecialToken);
  sub_21CF7F200(v16, &qword_27CE452E0, &qword_21D0236A0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_4:
  v20 = *(v39 + 24);
  v21 = (v40 + v20);
  v22 = *(v40 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      goto LABEL_26;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  v35 = sub_21D022574();
  return v35 & 1;
}

uint64_t sub_21D0073CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(a3(0) + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      v10 = *v6 == *v8 && v7 == v9;
      if (v10 || (sub_21D022B24() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v9)
  {
LABEL_8:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D0074A8(uint64_t a1, uint64_t a2)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46420, &qword_21D02CBC0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v35 - v5;
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45AC8, &qword_21D026570);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46428, &qword_21D02CBC8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v19 = &v35 - v18;
  v20 = *(v17 + 56);
  v37 = a1;
  sub_21CF7F198(a1, &v35 - v18, &qword_27CE45AC8, &qword_21D026570);
  v38 = a2;
  sub_21CF7F198(a2, &v19[v20], &qword_27CE45AC8, &qword_21D026570);
  v21 = *(v8 + 48);
  if (v21(v19, 1, v7) != 1)
  {
    sub_21CF7F198(v19, v14, &qword_27CE45AC8, &qword_21D026570);
    if (v21(&v19[v20], 1, v7) != 1)
    {
      v24 = &v19[v20];
      v25 = v36;
      sub_21D000BB8(v24, v36, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      v26 = *(v35 + 48);
      sub_21D00BC48(v14, v6, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      sub_21D00BC48(v25, &v6[v26], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      v27 = sub_21D00C3A4(v6, &v6[v26]);
      sub_21D000B58(&v6[v26], type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      sub_21D000B58(v25, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
      sub_21CF7F200(v19, &qword_27CE45AC8, &qword_21D026570);
      if ((v27 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_21D000B58(v14, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment.OneOf_Content);
LABEL_6:
    sub_21CF7F200(v19, &qword_27CE46428, &qword_21D02CBC8);
    goto LABEL_7;
  }

  if (v21(&v19[v20], 1, v7) != 1)
  {
    goto LABEL_6;
  }

  sub_21CF7F200(v19, &qword_27CE45AC8, &qword_21D026570);
LABEL_10:
  v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Attachment(0);
  v29 = *(v28 + 24);
  v30 = (v37 + v29);
  v31 = *(v37 + v29 + 4);
  v32 = (v38 + v29);
  v33 = *(v38 + v29 + 4);
  if (v31)
  {
    if (v33)
    {
LABEL_16:
      v34 = *(v28 + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v22 = sub_21D022574();
      return v22 & 1;
    }
  }

  else
  {
    if (*v30 != *v32)
    {
      LOBYTE(v33) = 1;
    }

    if ((v33 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_21D0078F4(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  v2 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v46 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46408, &qword_21D02CBA8);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v46 - v32;
  v34 = *(v31 + 56);
  sub_21D00BC48(v48, &v46 - v32, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  sub_21D00BC48(v49, &v33[v34], type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21D00BC48(v33, v23, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
        v37 = v23;
        goto LABEL_15;
      }

      v38 = &v33[v34];
      v39 = v46;
      sub_21D000BB8(v38, v46, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v40 = sub_21D00BE38(v23, v39);
      sub_21D000B58(v39, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk);
      v41 = v23;
      v42 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk;
LABEL_18:
      sub_21D000B58(v41, v42);
      sub_21D000B58(v33, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
      return v40 & 1;
    }

    sub_21D00BC48(v33, v20, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd;
      v37 = v20;
      goto LABEL_15;
    }

    v44 = v47;
    sub_21D000BB8(&v33[v34], v47, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v40 = sub_21D022574();
    v43 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd;
    sub_21D000B58(v44, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingEnd);
    v41 = v20;
LABEL_17:
    v42 = v43;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D00BC48(v33, v26, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
      v37 = v26;
      goto LABEL_15;
    }

    sub_21D000BB8(&v33[v34], v11, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    v40 = sub_21D00A608(v26, v11);
    v43 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader;
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader);
    v41 = v26;
    goto LABEL_17;
  }

  sub_21D00BC48(v33, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(&v33[v34], v15, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v40 = sub_21D022574();
    v43 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig;
    sub_21D000B58(v15, type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig);
    v41 = v28;
    goto LABEL_17;
  }

  v36 = type metadata accessor for Apple_Cloudml_Inference_Tie_StreamingConfig;
  v37 = v28;
LABEL_15:
  sub_21D000B58(v37, v36);
  sub_21CF7F200(v33, &qword_27CE46408, &qword_21D02CBA8);
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_21D007F20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E0, &qword_21D02CB80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = (&v20 - v7);
  v9 = (&v20 + *(v6 + 56) - v7);
  sub_21D00BC48(a1, &v20 - v7, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21D00BC48(a2, v9, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);
  v11 = *(v10 + 28);
  v12 = (v8 + v11);
  v13 = *(v8 + v11 + 8);
  v14 = (v9 + v11);
  v15 = v14[1];
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = *v12 == *v14 && v13 == v15;
    if (!v16 && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v15)
  {
LABEL_14:
    v18 = 0;
    goto LABEL_15;
  }

  if ((sub_21D0015EC(*v8, *v9) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_21D0018B4(v8[1], v9[1]) & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(v10 + 24);
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  if ((sub_21D022574() & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = 1;
LABEL_15:
  sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  return v18;
}

uint64_t sub_21D0080E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C8, &unk_21D026890);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463D8, &qword_21D02CB78);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21CF7F198(a1, &v24 - v16, &qword_27CE452C8, &unk_21D026890);
  sub_21CF7F198(a2, &v17[v18], &qword_27CE452C8, &unk_21D026890);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v17, &qword_27CE452C8, &unk_21D026890);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0) + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v20 = sub_21D022574();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v17, v12, &qword_27CE452C8, &unk_21D026890);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
LABEL_6:
    sub_21CF7F200(v17, &qword_27CE463D8, &qword_21D02CB78);
    goto LABEL_7;
  }

  sub_21D000BB8(&v17[v18], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  v21 = sub_21D007F20(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType);
  sub_21CF7F200(v17, &qword_27CE452C8, &unk_21D026890);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21D00842C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (v37 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463E8, &qword_21D02CB88);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v37 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_18;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_21D022B24();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_18;
  }

  v26 = a1;
  v27 = a2;
  v28 = *(v17 + 24);
  v29 = *(v13 + 48);
  v37[1] = v26;
  sub_21CF7F198(v26 + v28, v16, &qword_27CE45298, &qword_21D023658);
  sub_21CF7F198(v27 + v28, &v16[v29], &qword_27CE45298, &qword_21D023658);
  v30 = *(v5 + 48);
  if (v30(v16, 1, v4) != 1)
  {
    sub_21CF7F198(v16, v12, &qword_27CE45298, &qword_21D023658);
    if (v30(&v16[v29], 1, v4) == 1)
    {
      sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      goto LABEL_16;
    }

    sub_21D000BB8(&v16[v29], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    if ((sub_21D000C20(*v12, *v8) & 1) == 0)
    {
      sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      v32 = &qword_27CE45298;
      v33 = &qword_21D023658;
      goto LABEL_17;
    }

    v35 = *(v4 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v36 = sub_21D022574();
    sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
    sub_21CF7F200(v16, &qword_27CE45298, &qword_21D023658);
    if (v36)
    {
      goto LABEL_13;
    }

LABEL_18:
    v31 = 0;
    return v31 & 1;
  }

  if (v30(&v16[v29], 1, v4) != 1)
  {
LABEL_16:
    v32 = &qword_27CE463E8;
    v33 = &qword_21D02CB88;
LABEL_17:
    sub_21CF7F200(v16, v32, v33);
    goto LABEL_18;
  }

  sub_21CF7F200(v16, &qword_27CE45298, &qword_21D023658);
LABEL_13:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  v31 = sub_21D022574();
  return v31 & 1;
}

uint64_t sub_21D008884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F8, &qword_21D02CB98);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21CF7F198(a1, &v24 - v16, &qword_27CE452A0, &qword_21D023660);
  sub_21CF7F198(a2, &v17[v18], &qword_27CE452A0, &qword_21D023660);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v17, &qword_27CE452A0, &qword_21D023660);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0) + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v20 = sub_21D022574();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v17, v12, &qword_27CE452A0, &qword_21D023660);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
LABEL_6:
    sub_21CF7F200(v17, &qword_27CE463F8, &qword_21D02CB98);
    goto LABEL_7;
  }

  sub_21D000BB8(&v17[v18], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  v21 = sub_21D008BC8(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21CF7F200(v17, &qword_27CE452A0, &qword_21D023660);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21D008BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE463F0, &qword_21D02CB90);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v31 - v22;
  v24 = *(v21 + 56);
  sub_21D00BC48(a1, &v31 - v22, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  sub_21D00BC48(a2, &v23[v24], type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21D00BC48(v23, v16, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21D000BB8(&v23[v24], v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v25 = sub_21D00C3A4(v16, v7);
      sub_21D000B58(v7, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v26 = v16;
      v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData;
LABEL_9:
      sub_21D000B58(v26, v27);
      sub_21D000B58(v23, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
      return v25 & 1;
    }

    v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData;
    v29 = v16;
  }

  else
  {
    sub_21D00BC48(v23, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D000BB8(&v23[v24], v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
      v25 = sub_21D008F34(v18, v11);
      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
      v26 = v18;
      v27 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText;
      goto LABEL_9;
    }

    v28 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText;
    v29 = v18;
  }

  sub_21D000B58(v29, v28);
  sub_21CF7F200(v23, &qword_27CE463F0, &qword_21D02CB90);
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_21D008F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14 != 2)
  {
    if (v15 != 2 && ((v14 ^ v15) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v15 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D009050(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (sub_21D0015EC(*a1, *a2) & 1) != 0 && (sub_21D0018B4(a1[1], a2[1]))
  {
    v11 = *(v4 + 24);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D009154(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0) + 20);
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D009234(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 4);
  if (v6)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v7)
    {
      LOBYTE(v8) = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

unint64_t sub_21D0092FC()
{
  result = qword_27CE46310;
  if (!qword_27CE46310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46310);
  }

  return result;
}

uint64_t sub_21D009350(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_21D022B24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 8);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  if (sub_21D001EE0(*a1, *a2))
  {
    v16 = v4[5];
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D009478(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {
    v10 = *(a1 + v7);

    v11 = a4(v8, v9);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00956C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.ImageTokenizationOptions(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 9);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 9);
  if (v12)
  {
    if (v14)
    {
      goto LABEL_9;
    }
  }

  else if ((v14 & 1) == 0)
  {
    v20 = *v11;
    v21 = *v13;
    if (v13[1])
    {
      if (v21)
      {
        if (v21 == 1)
        {
          if (v20 != 1)
          {
            return 0;
          }
        }

        else if (v20 != 2)
        {
          return 0;
        }
      }

      else if (v20)
      {
        return 0;
      }
    }

    else if (v20 != v21)
    {
      return 0;
    }

LABEL_9:
    v15 = v4[7];
    v16 = (a1 + v15);
    v17 = *(a1 + v15 + 4);
    v18 = (a2 + v15);
    v19 = *(a2 + v15 + 4);
    if (v17)
    {
      if (!v19)
      {
        return 0;
      }
    }

    else
    {
      if (*v16 != *v18)
      {
        LOBYTE(v19) = 1;
      }

      if (v19)
      {
        return 0;
      }
    }

    v22 = v4[8];
    v23 = (a1 + v22);
    v24 = *(a1 + v22 + 4);
    v25 = (a2 + v22);
    v26 = *(a2 + v22 + 4);
    if (v24)
    {
      if (!v26)
      {
        return 0;
      }
    }

    else
    {
      if (*v23 != *v25)
      {
        LOBYTE(v26) = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    v27 = v4[9];
    v28 = (a1 + v27);
    v29 = *(a1 + v27 + 4);
    v30 = (a2 + v27);
    v31 = *(a2 + v27 + 4);
    if (v29)
    {
      if (!v31)
      {
        return 0;
      }
    }

    else
    {
      if (*v28 != *v30)
      {
        LOBYTE(v31) = 1;
      }

      if (v31)
      {
        return 0;
      }
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D009738(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v110 = *(v4 - 8);
  v5 = *(v110 + 64);
  MEMORY[0x28223BE20](v4);
  v109 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v107 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46328, &qword_21D02CAF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v111 = &v107 - v13;
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v112 = *(v14 - 8);
  v15 = *(v112 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v107 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46330, &qword_21D02CAF8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v107 - v24;
  v26 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v27 = v26[7];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 4);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 4);
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_80;
    }
  }

  v32 = v26[8];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 4);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 4);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_80;
    }
  }

  v37 = v26[9];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 4);
  v40 = (a2 + v37);
  v41 = *(a2 + v37 + 4);
  if (v39)
  {
    if (!v41)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v38 != *v40)
    {
      LOBYTE(v41) = 1;
    }

    if (v41)
    {
      goto LABEL_80;
    }
  }

  v42 = v26[10];
  v43 = (a1 + v42);
  v44 = *(a1 + v42 + 4);
  v45 = (a2 + v42);
  v46 = *(a2 + v42 + 4);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v43 != *v45)
    {
      LOBYTE(v46) = 1;
    }

    if (v46)
    {
      goto LABEL_80;
    }
  }

  v47 = v26[11];
  v48 = (a1 + v47);
  v49 = *(a1 + v47 + 4);
  v50 = (a2 + v47);
  v51 = *(a2 + v47 + 4);
  if (v49)
  {
    if (!v51)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v48 != *v50)
    {
      LOBYTE(v51) = 1;
    }

    if (v51)
    {
      goto LABEL_80;
    }
  }

  v52 = v26[12];
  v53 = (a1 + v52);
  v54 = *(a1 + v52 + 4);
  v55 = (a2 + v52);
  v56 = *(a2 + v52 + 4);
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v53 != *v55)
    {
      LOBYTE(v56) = 1;
    }

    if (v56)
    {
      goto LABEL_80;
    }
  }

  v57 = v26[13];
  v58 = (a1 + v57);
  v59 = *(a1 + v57 + 8);
  v60 = (a2 + v57);
  v61 = *(a2 + v57 + 8);
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      goto LABEL_80;
    }
  }

  v62 = v26[14];
  v63 = (a1 + v62);
  v64 = *(a1 + v62 + 8);
  v65 = (a2 + v62);
  v66 = *(a2 + v62 + 8);
  if (v64)
  {
    if (!v66)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v63 != *v65)
    {
      LOBYTE(v66) = 1;
    }

    if (v66)
    {
      goto LABEL_80;
    }
  }

  v67 = v26[15];
  v68 = (a1 + v67);
  v69 = *(a1 + v67 + 8);
  v70 = (a2 + v67);
  v71 = *(a2 + v67 + 8);
  if (v69)
  {
    if (!v71)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v68 != *v70)
    {
      LOBYTE(v71) = 1;
    }

    if (v71)
    {
      goto LABEL_80;
    }
  }

  v108 = v26;
  if ((sub_21D0021AC(*a1, *a2) & 1) == 0)
  {
    goto LABEL_80;
  }

  v72 = v108[16];
  v73 = (a1 + v72);
  v74 = *(a1 + v72 + 4);
  v75 = (a2 + v72);
  v76 = *(a2 + v72 + 4);
  if (v74)
  {
    if (!v76)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v73 != *v75)
    {
      LOBYTE(v76) = 1;
    }

    if (v76)
    {
      goto LABEL_80;
    }
  }

  v77 = v108[17];
  v78 = (a1 + v77);
  v79 = *(a1 + v77 + 4);
  v80 = (a2 + v77);
  v81 = *(a2 + v77 + 4);
  if (v79)
  {
    if (!v81)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v78 != *v80)
    {
      LOBYTE(v81) = 1;
    }

    if (v81)
    {
      goto LABEL_80;
    }
  }

  v82 = v108[18];
  v83 = *(a1 + v82);
  v84 = *(a2 + v82);
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      goto LABEL_80;
    }
  }

  else if (v84 == 2 || ((v83 ^ v84) & 1) != 0)
  {
    goto LABEL_80;
  }

  v107 = v108[5];
  v85 = *(v22 + 48);
  sub_21CF7F198(a1 + v107, v25, &qword_27CE452B8, &qword_21D023678);
  v86 = a2 + v107;
  v107 = v85;
  sub_21CF7F198(v86, &v25[v85], &qword_27CE452B8, &qword_21D023678);
  v112 = *(v112 + 48);
  if ((v112)(v25, 1, v14) != 1)
  {
    sub_21CF7F198(v25, v21, &qword_27CE452B8, &qword_21D023678);
    if ((v112)(&v25[v107], 1, v14) != 1)
    {
      sub_21D000BB8(&v25[v107], v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      v92 = sub_21D00A044(v21, v17);
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      sub_21CF7F200(v25, &qword_27CE452B8, &qword_21D023678);
      if ((v92 & 1) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_83;
    }

    sub_21D000B58(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
LABEL_78:
    v87 = &qword_27CE46330;
    v88 = &qword_21D02CAF8;
    v89 = v25;
LABEL_79:
    sub_21CF7F200(v89, v87, v88);
    goto LABEL_80;
  }

  if ((v112)(&v25[v107], 1, v14) != 1)
  {
    goto LABEL_78;
  }

  sub_21CF7F200(v25, &qword_27CE452B8, &qword_21D023678);
LABEL_83:
  v93 = v108[19];
  v94 = (a1 + v93);
  v95 = *(a1 + v93 + 4);
  v96 = (a2 + v93);
  v97 = *(a2 + v93 + 4);
  if (v95)
  {
    if (!v97)
    {
      goto LABEL_80;
    }
  }

  else
  {
    if (*v94 != *v96)
    {
      LOBYTE(v97) = 1;
    }

    if (v97)
    {
      goto LABEL_80;
    }
  }

  v98 = v108[20];
  v99 = *(v11 + 48);
  v100 = v111;
  sub_21CF7F198(a1 + v98, v111, &qword_27CE452D8, "ҷ");
  sub_21CF7F198(a2 + v98, v100 + v99, &qword_27CE452D8, "ҷ");
  v101 = *(v110 + 48);
  if (v101(v100, 1, v4) == 1)
  {
    if (v101(v111 + v99, 1, v4) == 1)
    {
      sub_21CF7F200(v111, &qword_27CE452D8, "ҷ");
LABEL_96:
      v106 = v108[6];
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v90 = sub_21D022574();
      return v90 & 1;
    }

    goto LABEL_94;
  }

  v102 = v111;
  sub_21CF7F198(v111, v10, &qword_27CE452D8, "ҷ");
  if (v101(v102 + v99, 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
LABEL_94:
    v87 = &qword_27CE46328;
    v88 = &qword_21D02CAF0;
    v89 = v111;
    goto LABEL_79;
  }

  v103 = v111;
  v104 = v109;
  sub_21D000BB8(v111 + v99, v109, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  v105 = sub_21D00AEC0(v10, v104);
  sub_21D000B58(v104, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
  sub_21CF7F200(v103, &qword_27CE452D8, "ҷ");
  if (v105)
  {
    goto LABEL_96;
  }

LABEL_80:
  v90 = 0;
  return v90 & 1;
}

uint64_t sub_21D00A044(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  v4 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46338, &qword_21D02CB00);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v49 - v22;
  v24 = *(v21 + 56);
  sub_21D00BC48(a1, &v49 - v22, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  sub_21D00BC48(a2, &v23[v24], type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D00BC48(v23, v16, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v51;
        sub_21D000BB8(&v23[v24], v51, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
        v27 = *(v6 + 20);
        v28 = &v16[v27];
        v29 = v16[v27 + 8];
        v30 = (v26 + v27);
        v31 = *(v26 + v27 + 8);
        if (v29)
        {
          if (!v31)
          {
LABEL_6:
            sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
LABEL_22:
            v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling;
            v46 = v16;
LABEL_30:
            sub_21D000B58(v46, v45);
            sub_21D000B58(v23, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
            goto LABEL_31;
          }
        }

        else
        {
          if (*v28 != *v30)
          {
            LOBYTE(v31) = 1;
          }

          if (v31)
          {
            goto LABEL_6;
          }
        }

        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
        v42 = sub_21D022574();
        sub_21D000B58(v26, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
        if ((v42 & 1) == 0)
        {
          goto LABEL_22;
        }

        v43 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling;
        v44 = v16;
        goto LABEL_28;
      }

      v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling;
      v41 = v16;
      goto LABEL_15;
    }

    sub_21D00BC48(v23, v13, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling;
      v41 = v13;
LABEL_15:
      sub_21D000B58(v41, v40);
      goto LABEL_16;
    }

    v34 = v52;
    sub_21D000BB8(&v23[v24], v52, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    v35 = *(v50 + 20);
    v36 = &v13[v35];
    v37 = v13[v35 + 4];
    v38 = (v34 + v35);
    v39 = *(v34 + v35 + 4);
    if (v37)
    {
      if (!v39)
      {
LABEL_12:
        sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
        goto LABEL_29;
      }
    }

    else
    {
      if (*v36 != *v38)
      {
        LOBYTE(v39) = 1;
      }

      if (v39)
      {
        goto LABEL_12;
      }
    }

    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    v47 = sub_21D022574();
    sub_21D000B58(v34, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    if (v47)
    {
      v43 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling;
      v44 = v13;
LABEL_28:
      sub_21D000B58(v44, v43);
      sub_21D000B58(v23, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
      v33 = 1;
      return v33 & 1;
    }

LABEL_29:
    v45 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling;
    v46 = v13;
    goto LABEL_30;
  }

  sub_21D00BC48(v23, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_16:
    sub_21CF7F200(v23, &qword_27CE46338, &qword_21D02CB00);
LABEL_31:
    v33 = 0;
    return v33 & 1;
  }

  v32 = *v18 ^ v23[v24];
  sub_21D000B58(v23, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy);
  v33 = v32 ^ 1;
  return v33 & 1;
}

uint64_t sub_21D00A608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46410, &qword_21D02CBB0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader(0);
  v18 = v17[6];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_28;
    }

    if (*v19 != *v21 || v20 != v22)
    {
      v24 = v17;
      v25 = sub_21D022B24();
      v17 = v24;
      if ((v25 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v22)
  {
    goto LABEL_28;
  }

  v26 = v17[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 4);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 4);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v27 != *v29)
    {
      LOBYTE(v30) = 1;
    }

    if (v30)
    {
      goto LABEL_28;
    }
  }

  v31 = v17[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v32 != *v34)
    {
      LOBYTE(v35) = 1;
    }

    if (v35)
    {
      goto LABEL_28;
    }
  }

  v43 = v17;
  v36 = *(v13 + 48);
  sub_21CF7F198(a1, v16, &qword_27CE45538, &qword_21D024220);
  sub_21CF7F198(a2, &v16[v36], &qword_27CE45538, &qword_21D024220);
  v37 = *(v5 + 48);
  if (v37(v16, 1, v4) == 1)
  {
    if (v37(&v16[v36], 1, v4) == 1)
    {
      sub_21CF7F200(v16, &qword_27CE45538, &qword_21D024220);
LABEL_31:
      v41 = v43[5];
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v38 = sub_21D022574();
      return v38 & 1;
    }

    goto LABEL_27;
  }

  sub_21CF7F198(v16, v12, &qword_27CE45538, &qword_21D024220);
  if (v37(&v16[v36], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
LABEL_27:
    sub_21CF7F200(v16, &qword_27CE46410, &qword_21D02CBB0);
    goto LABEL_28;
  }

  sub_21D000BB8(&v16[v36], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  v40 = sub_21D00AA24(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  sub_21CF7F200(v16, &qword_27CE45538, &qword_21D024220);
  if (v40)
  {
    goto LABEL_31;
  }

LABEL_28:
  v38 = 0;
  return v38 & 1;
}

uint64_t sub_21D00AA24(uint64_t a1, uint64_t a2)
{
  v33 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46418, &qword_21D02CBB8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v32 - v21;
  v23 = *(v20 + 56);
  sub_21D00BC48(a1, &v32 - v21, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  sub_21D00BC48(a2, &v22[v23], type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21D00BC48(v22, v17, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D000BB8(&v22[v23], v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v28 = sub_21D00C080(v17, v10);
      sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      sub_21D000B58(v17, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
      return v28 & 1;
    }

    v26 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata;
    v27 = v17;
LABEL_12:
    sub_21D000B58(v27, v26);
    sub_21CF7F200(v22, &qword_27CE46418, &qword_21D02CBB8);
LABEL_18:
    v28 = 0;
    return v28 & 1;
  }

  sub_21D00BC48(v22, v15, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v26 = type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata;
    v27 = v15;
    goto LABEL_12;
  }

  sub_21D000BB8(&v22[v23], v6, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  v24 = *v15;
  v25 = *v6;
  if (v15[8])
  {
    v24 = *v15 != 0;
  }

  if (v6[8] == 1)
  {
    if (v25)
    {
      if (v24 != 1)
      {
LABEL_8:
        sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
LABEL_17:
        sub_21D000B58(v15, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
        sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
        goto LABEL_18;
      }
    }

    else if (v24)
    {
      goto LABEL_8;
    }
  }

  else if (v24 != v25)
  {
    goto LABEL_8;
  }

  v29 = *(v33 + 20);
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  v30 = sub_21D022574();
  sub_21D000B58(v6, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_21D000B58(v15, type metadata accessor for Apple_Cloudml_Inference_Tie_AudioMetadata);
  sub_21D000B58(v22, type metadata accessor for Apple_Cloudml_Inference_Tie_MediaHeader.OneOf_MediaMetadata);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_21D00AEC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45420, &qword_21D023BE0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46340, &qword_21D02CB08);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_21CF7F198(a1, &v24 - v16, &qword_27CE45420, &qword_21D023BE0);
  sub_21CF7F198(a2, &v17[v18], &qword_27CE45420, &qword_21D023BE0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_21CF7F200(v17, &qword_27CE45420, &qword_21D023BE0);
LABEL_9:
      v22 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0) + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v20 = sub_21D022574();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_21CF7F198(v17, v12, &qword_27CE45420, &qword_21D023BE0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
LABEL_6:
    sub_21CF7F200(v17, &qword_27CE46340, &qword_21D02CB08);
    goto LABEL_7;
  }

  sub_21D000BB8(&v17[v18], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  v21 = sub_21D00B204(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  sub_21CF7F200(v17, &qword_27CE45420, &qword_21D023BE0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_21D00B204(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v77 = a2;
  v69 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID(0);
  v2 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v72 = (&v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID(0);
  v4 = *(*(v68 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = (&v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar(0);
  v6 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v70 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v75 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v74 = (&v66 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v73 = (&v66 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v66 - v25);
  MEMORY[0x28223BE20](v24);
  v28 = (&v66 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46348, &qword_21D02CB10);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v66 - v32;
  v34 = *(v31 + 56);
  sub_21D00BC48(v76, &v66 - v32, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  sub_21D00BC48(v77, &v33[v34], type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v36 = v74;
        sub_21D00BC48(v33, v74, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v37 = v71;
          sub_21D000BB8(&v33[v34], v71, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID);
          v38 = v36[1];
          v39 = v37[1];
          if (v38)
          {
            if (!v39 || (*v36 != *v37 || v38 != v39) && (sub_21D022B24() & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v39)
          {
            goto LABEL_54;
          }

          v55 = *(v68 + 20);
          sub_21D021CF4();
          sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
          if (sub_21D022574())
          {
            v53 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
            v56 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
            v57 = v37;
LABEL_59:
            sub_21D000B58(v57, v53);
            v61 = v36;
LABEL_70:
            sub_21D000B58(v61, v56);
            sub_21D000B58(v33, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
            return 1;
          }

LABEL_54:
          v54 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
          v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
          v59 = v37;
LABEL_62:
          sub_21D000B58(v59, v54);
          v62 = v36;
LABEL_72:
          sub_21D000B58(v62, v58);
          sub_21D000B58(v33, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
          return 0;
        }

        v49 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.SchemaID;
        goto LABEL_38;
      }

      v36 = v75;
      sub_21D00BC48(v33, v75, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v42 = v72;
        sub_21D000BB8(&v33[v34], v72, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID);
        v45 = v36[1];
        v46 = v42[1];
        if (v45)
        {
          if (!v46 || (*v36 != *v42 || v45 != v46) && (sub_21D022B24() & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        else if (v46)
        {
          goto LABEL_60;
        }

        v60 = *(v69 + 20);
        sub_21D021CF4();
        sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
        if (sub_21D022574())
        {
          v53 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
          goto LABEL_58;
        }

LABEL_60:
        v54 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
        goto LABEL_61;
      }

      v49 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.GrammarID;
LABEL_38:
      v40 = v49;
      v41 = v36;
      goto LABEL_40;
    }

    v36 = v73;
    sub_21D00BC48(v33, v73, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v49 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
      goto LABEL_38;
    }

    v42 = v70;
    sub_21D000BB8(&v33[v34], v70, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar);
    v43 = v36[1];
    v44 = v42[1];
    if (v43)
    {
      if (!v44 || (*v36 != *v42 || v43 != v44) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v44)
    {
      goto LABEL_50;
    }

    v52 = *(v67 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    if (sub_21D022574())
    {
      v53 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
LABEL_58:
      v56 = v53;
      v57 = v42;
      goto LABEL_59;
    }

LABEL_50:
    v54 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.PartialGrammar;
LABEL_61:
    v58 = v54;
    v59 = v42;
    goto LABEL_62;
  }

  if (EnumCaseMultiPayload)
  {
    sub_21D00BC48(v33, v26, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
      v41 = v26;
      goto LABEL_40;
    }

    sub_21D000BB8(&v33[v34], v11, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    v47 = v26[1];
    v48 = v11[1];
    if (v47)
    {
      if (!v48 || (*v26 != *v11 || v47 != v48) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (v48)
    {
      goto LABEL_66;
    }

    v63 = *(v8 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    if (sub_21D022574())
    {
      v56 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
      sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
      v61 = v26;
      goto LABEL_70;
    }

LABEL_66:
    v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar;
    sub_21D000B58(v11, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Grammar);
    v62 = v26;
    goto LABEL_72;
  }

  sub_21D00BC48(v33, v28, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.OneOf_ConstraintType);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_21D000BB8(&v33[v34], v15, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    v50 = v28[1];
    v51 = v15[1];
    if (v50)
    {
      if (!v51 || (*v28 != *v15 || v50 != v51) && (sub_21D022B24() & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    else if (v51)
    {
      goto LABEL_71;
    }

    v64 = *(v12 + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    if (sub_21D022574())
    {
      v56 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
      sub_21D000B58(v15, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
      v61 = v28;
      goto LABEL_70;
    }

LABEL_71:
    v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
    sub_21D000B58(v15, type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema);
    v62 = v28;
    goto LABEL_72;
  }

  v40 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints.Schema;
  v41 = v28;
LABEL_40:
  sub_21D000B58(v41, v40);
  sub_21CF7F200(v33, &qword_27CE46348, &qword_21D02CB10);
  return 0;
}

uint64_t sub_21D00BC48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21D00BCB0()
{
  result = qword_27CE46370;
  if (!qword_27CE46370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46370);
  }

  return result;
}

unint64_t sub_21D00BD04()
{
  result = qword_27CE46388;
  if (!qword_27CE46388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46388);
  }

  return result;
}

uint64_t sub_21D00BD58(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = a1[1];
  v6 = a2[1];
  if (v5)
  {
    if (v6)
    {
      v7 = *a1;
      if (*a1 == *a2 && v5 == v6)
      {
        goto LABEL_8;
      }

      v9 = a3;
      v10 = *a2;
      v11 = sub_21D022B24();
      a3 = v9;
      if (v11)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v6)
  {
LABEL_8:
    v12 = *(a3(0) + 20);
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D00BE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_MediaChunk(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_21D022B24();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 4);
  v16 = (a2 + v13);
  v17 = *(a2 + v13 + 4);
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }
  }

  else
  {
    if (*v14 != *v16)
    {
      LOBYTE(v17) = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v20 = *(a1 + v18);
  v19 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v23 = *v21;
  v22 = v21[1];
  if (v19 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      v24 = v4;
      sub_21CF9EDB8(v20, v19);
      sub_21CF9EDB8(v23, v22);
      sub_21CF94FCC(v20, v19);
      v25 = v24;
      goto LABEL_23;
    }

LABEL_20:
    sub_21CF9EDB8(v20, v19);
    sub_21CF9EDB8(v23, v22);
    sub_21CF94FCC(v20, v19);
    sub_21CF94FCC(v23, v22);
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    goto LABEL_20;
  }

  v25 = v4;
  sub_21CF9EDB8(v20, v19);
  sub_21CF9EDB8(v23, v22);
  v27 = sub_21D0035E0(v20, v19, v23, v22);
  sub_21CF94FCC(v23, v22);
  sub_21CF94FCC(v20, v19);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v28 = v25[8];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 2)
  {
    if (v30 == 2)
    {
      goto LABEL_28;
    }

    return 0;
  }

  if (v30 == 2 || ((v29 ^ v30) & 1) != 0)
  {
    return 0;
  }

LABEL_28:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}