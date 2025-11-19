uint64_t sub_21D00C080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
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
  v15 = *(a1 + v13 + 9);
  v16 = a2 + v13;
  v17 = *(a2 + v13 + 9);
  if (v15)
  {
    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v17)
    {
      return 0;
    }

    v23 = *v14;
    v24 = *v16;
    if (*(v16 + 8))
    {
      if (v24 <= 1)
      {
        if (v24)
        {
          if (v23 != 1)
          {
            return 0;
          }
        }

        else if (v23)
        {
          return 0;
        }
      }

      else if (v24 == 2)
      {
        if (v23 != 2)
        {
          return 0;
        }
      }

      else if (v24 == 3)
      {
        if (v23 != 3)
        {
          return 0;
        }
      }

      else if (v23 != 4)
      {
        return 0;
      }
    }

    else if (v23 != v24)
    {
      return 0;
    }
  }

  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 4);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 4);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v25 = v4[8];
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

  v30 = v4[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }

    if (*v31 != *v33 || v32 != v34)
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

  else if (v34)
  {
    return 0;
  }

  v37 = v4[10];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41)
    {
      return 0;
    }

    if (*v38 != *v40 || v39 != v41)
    {
      v42 = v4;
      v43 = sub_21D022B24();
      v4 = v42;
      if ((v43 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v41)
  {
    return 0;
  }

  v44 = v4[11];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 9);
  v47 = a2 + v44;
  v48 = *(a2 + v44 + 9);
  if ((v46 & 1) == 0)
  {
    if (v48)
    {
      return 0;
    }

    v50 = *v45;
    v51 = *v47;
    if (*(v47 + 8))
    {
      if (v51 <= 1)
      {
        if (!v51)
        {
          if (!v50)
          {
            goto LABEL_58;
          }

          return 0;
        }

        if (v50 != 1)
        {
          return 0;
        }
      }

      else if (v51 == 2)
      {
        if (v50 != 2)
        {
          return 0;
        }
      }

      else if (v51 == 3)
      {
        if (v50 != 3)
        {
          return 0;
        }
      }

      else if (v50 != 4)
      {
        return 0;
      }
    }

    else if (v50 != v51)
    {
      return 0;
    }

LABEL_58:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  if (v48)
  {
    goto LABEL_58;
  }

  return 0;
}

uint64_t sub_21D00C3A4(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452C0, &unk_21D023680);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v33[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46400, &qword_21D02CBA0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v33[-v13];
  v15 = *a1;
  v16 = *(a1 + 8);
  v18 = *a2;
  v17 = a2[1];
  v19 = v17 & 0x3000000000000000;
  if ((~v16 & 0x3000000000000000) != 0)
  {
    if (v19 != 0x3000000000000000)
    {
      v28 = *a1;
      v29 = *(a1 + 8);
      if ((v16 & 0x2000000000000000) != 0)
      {
        if ((v17 & 0x2000000000000000) != 0)
        {
          sub_21D00EFE8(v28, v29);
          sub_21D00EFE8(v18, v17);
          sub_21CF8F4B4(v15, v16);
          if (v15 != v18)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        }

        sub_21D00EFE8(v28, v29);
        sub_21D00EFE8(v18, v17);
        sub_21CF8F4B4(v18, v17);
      }

      else
      {
        sub_21D00EFE8(v28, v29);
        sub_21D00EFE8(v18, v17);
        if ((v17 & 0x2000000000000000) == 0)
        {
          v34 = sub_21D0035E0(v15, v16, v18, v17);
          sub_21CF8F4B4(v18, v17);
          sub_21CF8F4B4(v15, v16);
          if ((v34 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_4;
        }
      }

      v24 = v15;
      v25 = v16;
LABEL_9:
      sub_21CF8F4B4(v24, v25);
      goto LABEL_10;
    }

LABEL_8:
    sub_21D00EFE8(*a1, *(a1 + 8));
    sub_21D00EFE8(v18, v17);
    sub_21CF8F4B4(v15, v16);
    v24 = v18;
    v25 = v17;
    goto LABEL_9;
  }

  if (v19 != 0x3000000000000000)
  {
    goto LABEL_8;
  }

  sub_21D00EFE8(*a1, *(a1 + 8));
  sub_21D00EFE8(v18, v17);
  sub_21CF8F4B4(v15, v16);
LABEL_4:
  v20 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v21 = *(v20 + 24);
  v22 = *(v11 + 48);
  sub_21CF7F198(a1 + v21, v14, &qword_27CE452C0, &unk_21D023680);
  sub_21CF7F198(a2 + v21, &v14[v22], &qword_27CE452C0, &unk_21D023680);
  v23 = *(v36 + 48);
  if (v23(v14, 1, v4) == 1)
  {
    if (v23(&v14[v22], 1, v4) == 1)
    {
      sub_21CF7F200(v14, &qword_27CE452C0, &unk_21D023680);
LABEL_23:
      v32 = *(v20 + 20);
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v26 = sub_21D022574();
      return v26 & 1;
    }

    goto LABEL_18;
  }

  sub_21CF7F198(v14, v10, &qword_27CE452C0, &unk_21D023680);
  if (v23(&v14[v22], 1, v4) == 1)
  {
    sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
LABEL_18:
    sub_21CF7F200(v14, &qword_27CE46400, &qword_21D02CBA0);
    goto LABEL_10;
  }

  v30 = v35;
  sub_21D000BB8(&v14[v22], v35, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  v31 = sub_21D00C080(v10, v30);
  sub_21D000B58(v30, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21D000B58(v10, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
  sub_21CF7F200(v14, &qword_27CE452C0, &unk_21D023680);
  if (v31)
  {
    goto LABEL_23;
  }

LABEL_10:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_21D00C840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 9);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 9);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v15 = *v6;
    v16 = *v8;
    if (v8[1])
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            return 0;
          }
        }

        else if (v15 != 2)
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }
    }

    else if (v15 != v16)
    {
      return 0;
    }
  }

  v10 = v4[6];
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

  v17 = v4[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 8);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v4[8];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 8);
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
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
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

  v32 = v4[10];
  v33 = (a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  v36 = *(a2 + v32 + 8);
  if (v34)
  {
    if (!v36)
    {
      return 0;
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
      return 0;
    }
  }

  v37 = v4[11];
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38 == 2)
  {
    if (v39 == 2)
    {
      goto LABEL_51;
    }

    return 0;
  }

  if (v39 == 2 || ((v38 ^ v39) & 1) != 0)
  {
    return 0;
  }

LABEL_51:
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00CA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 9);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 9);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }

    v15 = *v6;
    v16 = *v8;
    if (v8[1])
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            return 0;
          }
        }

        else if (v15 != 2)
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }
    }

    else if (v15 != v16)
    {
      return 0;
    }
  }

  v10 = v4[6];
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

  v17 = v4[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 9);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 9);
  if (v19)
  {
    if (v21)
    {
      goto LABEL_17;
    }
  }

  else if ((v21 & 1) == 0)
  {
    v27 = *v18;
    v28 = *v20;
    if (v20[1])
    {
      if (v28)
      {
        if (v28 == 1)
        {
          if (v27 != 1)
          {
            return 0;
          }
        }

        else if (v27 != 2)
        {
          return 0;
        }
      }

      else if (v27)
      {
        return 0;
      }
    }

    else if (v27 != v28)
    {
      return 0;
    }

LABEL_17:
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

    v29 = v4[9];
    v30 = (a1 + v29);
    v31 = *(a1 + v29 + 4);
    v32 = (a2 + v29);
    v33 = *(a2 + v29 + 4);
    if (v31)
    {
      if (!v33)
      {
        return 0;
      }
    }

    else
    {
      if (*v30 != *v32)
      {
        LOBYTE(v33) = 1;
      }

      if (v33)
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

uint64_t sub_21D00CC74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  v5 = v4[5];
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

  v10 = v4[6];
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

  v15 = v4[7];
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

  v20 = v4[8];
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

  v25 = v4[9];
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

  v30 = v4[10];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v31 ^ v32) & 1) != 0)
  {
    return 0;
  }

  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00CE40(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v38 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464C0, &qword_21D02CC60);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v38 - v27;
  v29 = *(v26 + 56);
  sub_21D00BC48(a1, &v38 - v27, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  sub_21D00BC48(v39, &v28[v29], type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21D00BC48(v28, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21D000BB8(&v28[v29], v9, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
        v31 = sub_21D00C840(v21, v9);
        v32 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics;
        sub_21D000B58(v9, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics);
        v33 = v21;
LABEL_13:
        sub_21D000B58(v33, v32);
        sub_21D000B58(v28, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
        return v31 & 1;
      }

      v34 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DraftTokenMetrics;
      v35 = v21;
    }

    else
    {
      sub_21D00BC48(v28, v18, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v38;
        sub_21D000BB8(&v28[v29], v38, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
        v31 = sub_21D00CA74(v18, v36);
        v32 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics;
        sub_21D000B58(v36, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics);
        v33 = v18;
        goto LABEL_13;
      }

      v34 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.DeterministicTokenMetrics;
      v35 = v18;
    }
  }

  else
  {
    sub_21D00BC48(v28, v23, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_21D000BB8(&v28[v29], v13, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
      v31 = sub_21D00CC74(v23, v13);
      v32 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics;
      sub_21D000B58(v13, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics);
      v33 = v23;
      goto LABEL_13;
    }

    v34 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.TargetTokenMetrics;
    v35 = v23;
  }

  sub_21D000B58(v35, v34);
  sub_21CF7F200(v28, &qword_27CE464C0, &qword_21D02CC60);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_21D00D2C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE464B8, &qword_21D02CC58);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - v15;
  v17 = type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics(0);
  v18 = v17[6];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 2)
  {
    if (v20 != 2)
    {
      goto LABEL_54;
    }
  }

  else if (v20 == 2 || ((v19 ^ v20) & 1) != 0)
  {
    goto LABEL_54;
  }

  v21 = v17[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = *(a2 + v21 + 8);
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v22 != *v24)
    {
      LOBYTE(v25) = 1;
    }

    if (v25)
    {
      goto LABEL_54;
    }
  }

  v26 = v17[8];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = *(a2 + v26 + 8);
  if (v28)
  {
    if (!v30)
    {
      goto LABEL_54;
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
      goto LABEL_54;
    }
  }

  v31 = v17[9];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      goto LABEL_54;
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
      goto LABEL_54;
    }
  }

  v36 = v17[10];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      goto LABEL_54;
    }
  }

  v41 = v17[11];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = *(a2 + v41 + 8);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v45) = 1;
    }

    if (v45)
    {
      goto LABEL_54;
    }
  }

  v46 = v17[12];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 4);
  v49 = (a2 + v46);
  v50 = *(a2 + v46 + 4);
  if (v48)
  {
    if (!v50)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v47 != *v49)
    {
      LOBYTE(v50) = 1;
    }

    if (v50)
    {
      goto LABEL_54;
    }
  }

  v51 = v17[13];
  v52 = (a1 + v51);
  v53 = *(a1 + v51 + 4);
  v54 = (a2 + v51);
  v55 = *(a2 + v51 + 4);
  if (v53)
  {
    if (!v55)
    {
      goto LABEL_54;
    }
  }

  else
  {
    if (*v52 != *v54)
    {
      LOBYTE(v55) = 1;
    }

    if (v55)
    {
      goto LABEL_54;
    }
  }

  v63 = v17;
  v56 = *(v13 + 48);
  sub_21CF7F198(a1, v16, &qword_27CE45A68, &unk_21D026440);
  sub_21CF7F198(a2, &v16[v56], &qword_27CE45A68, &unk_21D026440);
  v57 = *(v5 + 48);
  if (v57(v16, 1, v4) == 1)
  {
    if (v57(&v16[v56], 1, v4) == 1)
    {
      sub_21CF7F200(v16, &qword_27CE45A68, &unk_21D026440);
LABEL_57:
      v61 = v63[5];
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v58 = sub_21D022574();
      return v58 & 1;
    }

    goto LABEL_53;
  }

  sub_21CF7F198(v16, v12, &qword_27CE45A68, &unk_21D026440);
  if (v57(&v16[v56], 1, v4) == 1)
  {
    sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
LABEL_53:
    sub_21CF7F200(v16, &qword_27CE464B8, &qword_21D02CC58);
    goto LABEL_54;
  }

  sub_21D000BB8(&v16[v56], v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  v60 = sub_21D00CE40(v12, v8);
  sub_21D000B58(v8, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  sub_21D000B58(v12, type metadata accessor for Apple_Cloudml_Inference_Tie_TokenLevelInferenceMetrics.OneOf_TokenMetrics);
  sub_21CF7F200(v16, &qword_27CE45A68, &unk_21D026440);
  if (v60)
  {
    goto LABEL_57;
  }

LABEL_54:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_21D00D7BC(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v5 = v4[6];
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

  v10 = v4[7];
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

  v30 = v4;
  if ((sub_21D00223C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v31 = v30[11];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = *(a2 + v31 + 8);
  if (v33)
  {
    if (!v35)
    {
      return 0;
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
      return 0;
    }
  }

  v36 = v30[12];
  v37 = (a1 + v36);
  v38 = *(a1 + v36 + 8);
  v39 = (a2 + v36);
  v40 = *(a2 + v36 + 8);
  if (v38)
  {
    if (!v40)
    {
      return 0;
    }
  }

  else
  {
    if (*v37 != *v39)
    {
      LOBYTE(v40) = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  v42 = v30[5];
  sub_21D021CF4();
  sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
  return sub_21D022574() & 1;
}

uint64_t sub_21D00D9DC(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v83 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = (&v83 - v8);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46470, &qword_21D02CBF8);
  v9 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v88 = &v83 - v10;
  v11 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v89 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v91 = &v83 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v93 = &v83 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46478, &qword_21D02CC00);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v90 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v92 = &v83 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v83 - v34;
  v94 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v36 = *(v94 + 20);
  v96 = v25;
  v97 = a1;
  v37 = *(v25 + 48);
  sub_21CF7F198(a1 + v36, v35, &qword_27CE45208, &qword_21D023520);
  sub_21CF7F198(v98 + v36, &v35[v37], &qword_27CE45208, &qword_21D023520);
  v38 = *(v12 + 48);
  if (v38(v35, 1, v11) == 1)
  {
    if (v38(&v35[v37], 1, v11) == 1)
    {
      sub_21CF7F200(v35, &qword_27CE45208, &qword_21D023520);
      goto LABEL_8;
    }

LABEL_6:
    v39 = &qword_27CE46478;
    v40 = &qword_21D02CC00;
    v41 = v35;
LABEL_26:
    sub_21CF7F200(v41, v39, v40);
    goto LABEL_27;
  }

  sub_21CF7F198(v35, v24, &qword_27CE45208, &qword_21D023520);
  if (v38(&v35[v37], 1, v11) == 1)
  {
    sub_21D000B58(v24, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    goto LABEL_6;
  }

  v42 = v95;
  sub_21D000BB8(&v35[v37], v95, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  v43 = sub_21D00E794(v24, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v24, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CF7F200(v35, &qword_27CE45208, &qword_21D023520);
  if ((v43 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  v44 = v94;
  v45 = *(v94 + 24);
  v46 = *(v96 + 48);
  sub_21CF7F198(v97 + v45, v33, &qword_27CE45208, &qword_21D023520);
  sub_21CF7F198(v98 + v45, &v33[v46], &qword_27CE45208, &qword_21D023520);
  if (v38(v33, 1, v11) == 1)
  {
    if (v38(&v33[v46], 1, v11) == 1)
    {
      sub_21CF7F200(v33, &qword_27CE45208, &qword_21D023520);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v47 = v93;
  sub_21CF7F198(v33, v93, &qword_27CE45208, &qword_21D023520);
  if (v38(&v33[v46], 1, v11) == 1)
  {
    sub_21D000B58(v47, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
LABEL_13:
    v39 = &qword_27CE46478;
    v40 = &qword_21D02CC00;
    v41 = v33;
    goto LABEL_26;
  }

  v48 = v95;
  sub_21D000BB8(&v33[v46], v95, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  v49 = v47;
  v50 = sub_21D00E794(v47, v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D000B58(v49, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21CF7F200(v33, &qword_27CE45208, &qword_21D023520);
  if ((v50 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_15:
  v51 = v44[7];
  v52 = *(v96 + 48);
  v53 = v92;
  sub_21CF7F198(v97 + v51, v92, &qword_27CE45208, &qword_21D023520);
  sub_21CF7F198(v98 + v51, v53 + v52, &qword_27CE45208, &qword_21D023520);
  if (v38(v53, 1, v11) == 1)
  {
    if (v38((v53 + v52), 1, v11) != 1)
    {
LABEL_25:
      v39 = &qword_27CE46478;
      v40 = &qword_21D02CC00;
      v41 = v53;
      goto LABEL_26;
    }

    sub_21CF7F200(v53, &qword_27CE45208, &qword_21D023520);
  }

  else
  {
    v54 = v91;
    sub_21CF7F198(v53, v91, &qword_27CE45208, &qword_21D023520);
    if (v38((v53 + v52), 1, v11) == 1)
    {
LABEL_24:
      sub_21D000B58(v54, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      goto LABEL_25;
    }

    v55 = v53 + v52;
    v56 = v95;
    sub_21D000BB8(v55, v95, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v57 = sub_21D00E794(v54, v56, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    sub_21D000B58(v56, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    sub_21D000B58(v54, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    sub_21CF7F200(v53, &qword_27CE45208, &qword_21D023520);
    if ((v57 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v58 = v44[8];
  v59 = *(v96 + 48);
  v53 = v90;
  sub_21CF7F198(v97 + v58, v90, &qword_27CE45208, &qword_21D023520);
  v60 = v98;
  sub_21CF7F198(v98 + v58, v53 + v59, &qword_27CE45208, &qword_21D023520);
  if (v38(v53, 1, v11) != 1)
  {
    v54 = v89;
    sub_21CF7F198(v53, v89, &qword_27CE45208, &qword_21D023520);
    if (v38((v53 + v59), 1, v11) != 1)
    {
      v63 = v53 + v59;
      v64 = v95;
      sub_21D000BB8(v63, v95, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      v65 = sub_21D00E794(v54, v64, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      sub_21D000B58(v64, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      sub_21D000B58(v54, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      sub_21CF7F200(v53, &qword_27CE45208, &qword_21D023520);
      if ((v65 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    goto LABEL_24;
  }

  if (v38((v53 + v59), 1, v11) != 1)
  {
    goto LABEL_25;
  }

  sub_21CF7F200(v53, &qword_27CE45208, &qword_21D023520);
LABEL_30:
  v66 = v44[9];
  v67 = v97;
  v68 = (v97 + v66);
  v69 = *(v97 + v66 + 8);
  v70 = (v60 + v66);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_21D022B24() & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (v71)
  {
    goto LABEL_27;
  }

  v72 = v44[10];
  v73 = *(v85 + 48);
  v74 = v88;
  sub_21CF7F198(v67 + v72, v88, &qword_27CE45200, &qword_21D023518);
  v75 = v60 + v72;
  v76 = v74;
  sub_21CF7F198(v75, v74 + v73, &qword_27CE45200, &qword_21D023518);
  v77 = v87;
  v78 = *(v86 + 48);
  if (v78(v74, 1, v87) == 1)
  {
    if (v78(v74 + v73, 1, v77) == 1)
    {
      sub_21CF7F200(v74, &qword_27CE45200, &qword_21D023518);
LABEL_44:
      sub_21D021CF4();
      sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
      v61 = sub_21D022574();
      return v61 & 1;
    }

    goto LABEL_42;
  }

  v79 = v84;
  sub_21CF7F198(v76, v84, &qword_27CE45200, &qword_21D023518);
  if (v78(v76 + v73, 1, v77) == 1)
  {
    sub_21D000B58(v79, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
LABEL_42:
    v39 = &qword_27CE46470;
    v40 = &qword_21D02CBF8;
    v41 = v76;
    goto LABEL_26;
  }

  v80 = v76 + v73;
  v81 = v83;
  sub_21D000BB8(v80, v83, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  v82 = sub_21D00E628(v79, v81);
  sub_21D000B58(v81, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  sub_21D000B58(v79, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
  sub_21CF7F200(v76, &qword_27CE45200, &qword_21D023518);
  if (v82)
  {
    goto LABEL_44;
  }

LABEL_27:
  v61 = 0;
  return v61 & 1;
}

uint64_t sub_21D00E628(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v5 = v4[7];
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

  v11 = v4[8];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 9);
  v14 = a2 + v11;
  v15 = *(a2 + v11 + 9);
  if (v13)
  {
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v15)
    {
      return 0;
    }

    v18 = *v12;
    v19 = *v14;
    if (v14[8])
    {
      if (v19)
      {
        if (v19 == 1)
        {
          if (v18 != 1)
          {
            return 0;
          }
        }

        else if (v18 != 2)
        {
          return 0;
        }
      }

      else if (v18)
      {
        return 0;
      }
    }

    else if (v18 != v19)
    {
      return 0;
    }
  }

  if (sub_21D0023F4(*a1, *a2) & 1) != 0 && (sub_21D0021AC(a1[1], a2[1]))
  {
    v16 = v4[6];
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

uint64_t sub_21D00E794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_21D022B24();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  v18 = v17[1];
  if (v16)
  {
    if (v18)
    {
      v19 = *v15 == *v17 && v16 == v18;
      if (v19 || (sub_21D022B24() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v18)
  {
LABEL_17:
    sub_21D021CF4();
    sub_21CFFCB6C(&qword_27CE462E8, MEMORY[0x277D216C8]);
    return sub_21D022574() & 1;
  }

  return 0;
}

char *sub_21D00E8C4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46380, &qword_21D02CB28);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v74 = &v62 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46390, &qword_21D02CB30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v64 = &v62 - v14;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = 0;
  *(v1 + 5) = 0xF000000000000000;
  v15 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  v63 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  v16 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  v18 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts] = MEMORY[0x277D84F90];
  v19 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics] = 2;
  v20 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  v65 = v19;
  v66 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  v21 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  (*(*(v21 - 8) + 56))(&v1[v20], 1, 1, v21);
  v67 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  *&v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters] = v18;
  v22 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  v68 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  v23 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  (*(*(v23 - 8) + 56))(&v1[v22], 1, 1, v23);
  v69 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  *&v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment] = v18;
  v24 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  v71 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  v25 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.OneOf_StreamingRequestType(0);
  (*(*(v25 - 8) + 56))(&v1[v24], 1, 1, v25);
  v26 = &v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode];
  v72 = &v1[OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode];
  *v26 = 0;
  *(v26 + 4) = 256;
  swift_beginAccess();
  v27 = a1[2];
  v28 = a1[3];
  swift_beginAccess();
  *(v1 + 2) = v27;
  *(v1 + 3) = v28;
  swift_beginAccess();
  v29 = a1[4];
  v30 = a1[5];
  swift_beginAccess();
  v31 = *(v1 + 4);
  v32 = *(v1 + 5);
  *(v1 + 4) = v29;
  *(v1 + 5) = v30;

  sub_21CF9EDB8(v29, v30);
  sub_21CF94FCC(v31, v32);
  v33 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v34 = v64;
  sub_21CF7F198(a1 + v33, v64, &qword_27CE452B0, &qword_21D023670);
  v35 = v63;
  swift_beginAccess();
  sub_21CF8F4D4(v34, &v1[v35], &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v36 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__prompts;
  swift_beginAccess();
  v37 = *(a1 + v36);
  swift_beginAccess();
  v38 = *&v1[v17];
  *&v1[v17] = v37;

  v39 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  LOBYTE(v39) = *(a1 + v39);
  v40 = v65;
  swift_beginAccess();
  v1[v40] = v39;
  v41 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
  swift_beginAccess();
  v42 = v70;
  sub_21CF7F198(a1 + v41, v70, &qword_27CE45290, &qword_21D023650);
  v43 = v66;
  swift_beginAccess();
  sub_21CF8F4D4(v42, &v1[v43], &qword_27CE45290, &qword_21D023650);
  swift_endAccess();
  v44 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
  swift_beginAccess();
  v45 = *(a1 + v44);
  v46 = v67;
  swift_beginAccess();
  v47 = *&v1[v46];
  *&v1[v46] = v45;

  v48 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__promptTemplate;
  swift_beginAccess();
  v49 = v73;
  sub_21CF7F198(a1 + v48, v73, &qword_27CE46390, &qword_21D02CB30);
  v50 = v68;
  swift_beginAccess();
  sub_21CF8F4D4(v49, &v1[v50], &qword_27CE46390, &qword_21D02CB30);
  swift_endAccess();
  v51 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__attachment;
  swift_beginAccess();
  v52 = *(a1 + v51);
  v53 = v69;
  swift_beginAccess();
  v54 = *&v1[v53];
  *&v1[v53] = v52;

  v55 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__streamingRequestType;
  swift_beginAccess();
  v56 = v74;
  sub_21CF7F198(a1 + v55, v74, &qword_27CE46380, &qword_21D02CB28);
  v57 = v71;
  swift_beginAccess();
  sub_21CF8F4D4(v56, &v1[v57], &qword_27CE46380, &qword_21D02CB28);
  swift_endAccess();
  v58 = a1 + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
  swift_beginAccess();
  v59 = *v58;
  LOBYTE(v54) = v58[8];
  LOBYTE(v58) = v58[9];
  v60 = v72;
  swift_beginAccess();
  *v60 = v59;
  v60[8] = v54;
  v60[9] = v58;
  return v1;
}

uint64_t sub_21D00EFE8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0x3000000000000000) != 0)
  {
    return sub_21D00EFFC(a1, a2);
  }

  return a1;
}

uint64_t sub_21D00EFFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) == 0)
  {
    return sub_21CF8F3E0(a1, a2);
  }

  return a1;
}

unint64_t sub_21D00F008()
{
  result = qword_27CE46560;
  if (!qword_27CE46560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46560);
  }

  return result;
}

unint64_t sub_21D00F05C()
{
  result = qword_27CE465C8;
  if (!qword_27CE465C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE465C8);
  }

  return result;
}

unint64_t sub_21D00F0B0()
{
  result = qword_27CE465D8;
  if (!qword_27CE465D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE465D8);
  }

  return result;
}

unint64_t sub_21D00F104()
{
  result = qword_28121DFE0[0];
  if (!qword_28121DFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28121DFE0);
  }

  return result;
}

unint64_t sub_21D00F158()
{
  result = qword_27CE466B0;
  if (!qword_27CE466B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE466B0);
  }

  return result;
}

unint64_t sub_21D00F1AC()
{
  result = qword_27CE466E8;
  if (!qword_27CE466E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE466E8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_167Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D021CF4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_168Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D021CF4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D00F314()
{
  result = sub_21D021CF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21D00F384()
{
  result = qword_27CE46700;
  if (!qword_27CE46700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46700);
  }

  return result;
}

unint64_t sub_21D00F3DC()
{
  result = qword_27CE46708;
  if (!qword_27CE46708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46708);
  }

  return result;
}

unint64_t sub_21D00F434()
{
  result = qword_27CE46710;
  if (!qword_27CE46710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46710);
  }

  return result;
}

unint64_t sub_21D00F488()
{
  result = qword_27CE46718;
  if (!qword_27CE46718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE46718);
  }

  return result;
}

uint64_t type metadata accessor for PrivateMLClientAlertService()
{
  result = qword_28121D900;
  if (!qword_28121D900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D00F628()
{
  result = sub_21D0224A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21D00F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21CF7F198(a3, v27 - v11, &qword_27CE45310, &qword_21D0236E0);
  v13 = sub_21D022774();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21CF7F200(v12, &qword_27CE45310, &qword_21D0236E0);
  }

  else
  {
    sub_21D022764();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21D022734();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21D0225E4() + 32;
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

      sub_21CF7F200(a3, &qword_27CE45310, &qword_21D0236E0);

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

  sub_21CF7F200(a3, &qword_27CE45310, &qword_21D0236E0);
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

void sub_21D00F99C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v72 = a5;
  v11 = type metadata accessor for PrivateMLClientAlertService();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6B0 == 1)
  {
    v70 = a1;

    v15 = sub_21D022484();
    v16 = sub_21D0228B4();

    v17 = os_log_type_enabled(v15, v16);
    v71 = a3;
    v69 = v12;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v74[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_21CF9703C(v70, a2, v74);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_21CF9703C(a3, a4, v74);
      _os_log_impl(&dword_21CF72000, v15, v16, "displayPrivateMLClientFailedDialogIfInternal: %s RequestID:%s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v19, -1, -1);
      MEMORY[0x223D3ADE0](v18, -1, -1);
    }

    v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v21 = sub_21D022584();
    v22 = [v20 initWithSuiteName_];

    if (v22)
    {
      v23 = sub_21D022584();
      v24 = sub_21D022584();
      [v22 setObject:v23 forKey:v24];

      if (qword_27CE45188 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v74[0] = xmmword_27CE467C0;
      v74[1] = unk_27CE467D0;
      v75 = byte_27CE467E0;
      sub_21CF7F198(v74, v73, &qword_27CE45288, &qword_21D023970);
      v25 = sub_21D01561C();
      sub_21CF7F200(v74, &qword_27CE45288, &qword_21D023970);
      if (v25)
      {
        v26 = sub_21D022484();
        v27 = sub_21D0228A4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_21CF72000, v26, v27, "Ignore tap to radar per user default settings", v28, 2u);
          MEMORY[0x223D3ADE0](v28, -1, -1);
        }
      }

      else
      {
        v68 = v22;
        v32 = type metadata accessor for PrivateMLClientAlert();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        v35 = swift_allocObject();
        sub_21D022494();
        *(v35 + 16) = 0xD00000000000001DLL;
        *(v35 + 24) = 0x800000021D02FDE0;
        *(v35 + 32) = 0xD00000000000002DLL;
        *(v35 + 40) = 0x800000021D02FE00;
        strcpy((v35 + 48), "File a Radar");
        *(v35 + 61) = 0;
        *(v35 + 62) = -5120;
        *(v35 + 64) = 0x7373696D736944;
        *(v35 + 72) = 0xE700000000000000;
        v67 = v35;
        v66 = type metadata accessor for PrivateMLClientAlertService;
        sub_21D0114F8(v6, &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrivateMLClientAlertService);
        v36 = *(v69 + 80);
        v65 = a4;
        v37 = (v36 + 16) & ~v36;
        v69 = v6;
        v38 = (v37 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
        v40 = a2;
        v41 = (v39 + 23) & 0xFFFFFFFFFFFFFFF8;
        v42 = swift_allocObject();
        sub_21D010EA0(&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v37);
        v43 = (v42 + v38);
        v44 = v69;
        *v43 = v70;
        v43[1] = v40;
        v45 = (v42 + v39);
        v46 = v72;
        v47 = v65;
        *v45 = v71;
        v45[1] = v47;
        *(v42 + v41) = v46;
        sub_21D0114F8(v44, v14, v66);
        v48 = swift_allocObject();
        sub_21D010EA0(v14, v48 + v37);

        v49 = sub_21D022484();
        v50 = sub_21D0228B4();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          *v51 = 0;
          _os_log_impl(&dword_21CF72000, v49, v50, "Display Alert Box started", v51, 2u);
          MEMORY[0x223D3ADE0](v51, -1, -1);
        }

        v52 = v67;
        sub_21CF980B0(sub_21D010F04, v42, sub_21D010FC0);

        v53 = sub_21D022484();
        v54 = sub_21D0228B4();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_21CF72000, v53, v54, "Display Alert Box finished", v55, 2u);
          MEMORY[0x223D3ADE0](v55, -1, -1);

          swift_setDeallocating();
          v56 = OBJC_IVAR____TtC15PrivateMLClient20PrivateMLClientAlert_logger;
          v57 = sub_21D0224A4();
          (*(*(v57 - 8) + 8))(v52 + v56, v57);
          v58 = *(*v52 + 48);
          v59 = *(*v52 + 52);
          swift_deallocClassInstance();
        }

        else
        {

          swift_setDeallocating();
          v60 = OBJC_IVAR____TtC15PrivateMLClient20PrivateMLClientAlert_logger;
          v61 = sub_21D0224A4();
          (*(*(v61 - 8) + 8))(v52 + v60, v61);
          v62 = *(*v52 + 48);
          v63 = *(*v52 + 52);
          swift_deallocClassInstance();
        }
      }
    }

    else
    {
      v29 = sub_21D022484();
      v30 = sub_21D0228C4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_21CF72000, v29, v30, "Failed to write requestID to userdefaults", v31, 2u);
        MEMORY[0x223D3ADE0](v31, -1, -1);
      }
    }
  }
}

uint64_t sub_21D010228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v66 = a6;
  v67 = a7;
  v64 = a4;
  v65 = a5;
  v63 = a3;
  v72 = a2;
  v7 = type metadata accessor for PrivateMLClientAlertService();
  v8 = v7 - 8;
  v69 = *(v7 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = v10;
  v71 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v61 - v16;
  v18 = type metadata accessor for TapToRadarDraft();
  v73 = swift_allocBox();
  v20 = v19;
  *v19 = 0x4449656C646E7542;
  *(v19 + 8) = 0xE800000000000000;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  strcpy((v19 + 72), "Classification");
  *(v19 + 87) = -18;
  *(v19 + 88) = 10;
  *(v19 + 96) = 0x6375646F72706552;
  *(v19 + 104) = 0xEF7974696C696269;
  *(v19 + 112) = 6;
  *(v19 + 120) = 0x656C746954;
  *(v19 + 128) = 0xE500000000000000;
  *(v19 + 136) = 0;
  *(v19 + 144) = 0;
  *(v19 + 152) = 0x7470697263736544;
  *(v19 + 160) = 0xEB000000006E6F69;
  *(v19 + 168) = 0;
  *(v19 + 176) = 0;
  *(v19 + 184) = 0x7364726F7779654BLL;
  *(v19 + 192) = 0xE800000000000000;
  v21 = MEMORY[0x277D84F90];
  *(v19 + 200) = MEMORY[0x277D84F90];
  v22 = (v19 + v18[11]);
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8) + 36);
  v62 = v23;
  v24 = sub_21D021A34();
  v25 = *(v24 - 8);
  v61[0] = *(v25 + 56);
  v61[1] = v25 + 56;
  (v61[0])(v22 + v23, 1, 1, v24);
  *v22 = 0x7349664F656D6954;
  v22[1] = 0xEB00000000657573;
  v26 = (v20 + v18[12]);
  *v26 = 0x656D686361747441;
  v26[1] = 0xEB0000000073746ELL;
  v26[2] = v21;
  v27 = (v20 + v18[13]);
  *v27 = 0xD000000000000011;
  v27[1] = 0x800000021D02FE30;
  v27[2] = v21;
  v28 = (v20 + v18[14]);
  *v28 = 0xD000000000000014;
  v28[1] = 0x800000021D02FE50;
  v28[2] = v21;
  v29 = (v20 + v18[15]);
  strcpy(v29, "DeleteOnAttach");
  v29[15] = -18;
  v29[16] = 0;
  v30 = (v20 + v18[16]);
  *v30 = 0x4449656369766544;
  v30[1] = 0xE900000000000073;
  v30[2] = v21;
  v31 = v20 + v18[17];
  strcpy(v31, "DeviceClasses");
  *(v31 + 14) = -4864;
  *(v31 + 16) = v21;
  v32 = v20 + v18[18];
  strcpy(v32, "DeviceModels");
  *(v32 + 13) = 0;
  *(v32 + 14) = -5120;
  *(v32 + 16) = v21;
  v33 = (v20 + v18[19]);
  *v33 = 0xD000000000000016;
  v33[1] = 0x800000021D02FE70;
  v33[2] = 0;
  v34 = v20 + v18[20];
  *v34 = 0xD00000000000001ALL;
  *(v34 + 8) = 0x800000021D02FE90;
  *(v34 + 16) = 0;
  v35 = v20 + v18[21];
  *v35 = 0x676169446F747541;
  *(v35 + 8) = 0xEF73636974736F6ELL;
  *(v35 + 16) = 0;
  v36 = (v20 + v18[22]);
  *v36 = 0xD00000000000001BLL;
  v36[1] = 0x800000021D02FEB0;
  v36[2] = v21;
  v37 = (v20 + v18[23]);
  *v37 = 0xD000000000000018;
  v37[1] = 0x800000021D02FED0;
  v37[2] = 0;
  v37[3] = 0;
  v38 = (v20 + v18[24]);
  *v38 = 0xD000000000000012;
  v38[1] = 0x800000021D02FEF0;
  v38[2] = 0;
  v38[3] = 0;
  *(v20 + 32) = *(v72 + *(v8 + 28));
  *(v20 + 40) = xmmword_21D02CE70;
  *(v20 + 56) = xmmword_21D02CE80;
  *(v20 + 88) = 6;
  *(v20 + 112) = 5;
  v40 = v63;
  v39 = v64;
  *(v20 + 136) = v63;
  *(v20 + 144) = v39;
  v74 = 0;
  v75 = 0xE000000000000000;

  sub_21D0229A4();
  MEMORY[0x223D3A110](0xD000000000000084, 0x800000021D02FF10);
  MEMORY[0x223D3A110](v65, v66);
  MEMORY[0x223D3A110](0xD000000000000020, 0x800000021D02FFA0);
  MEMORY[0x223D3A110](v40, v39);
  MEMORY[0x223D3A110](10, 0xE100000000000000);
  v41 = v75;
  v42 = *(v20 + 176);
  *(v20 + 168) = v74;
  *(v20 + 176) = v41;

  sub_21D021A24();
  (v61[0])(v17, 0, 1, v24);
  sub_21D011220(v17, v22 + v62);
  v43 = v28[2];
  if (*(v67 + 16))
  {
    v28[2] = v67;
  }

  else
  {
    v28[2] = &unk_282E91E30;
  }

  v44 = v72;
  v45 = sub_21D022484();
  v46 = sub_21D0228B4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v76 = v48;
    *v47 = 136315138;
    swift_beginAccess();
    v49 = *(v20 + v18[14] + 16);

    v51 = MEMORY[0x223D3A1D0](v50, MEMORY[0x277D837D0]);
    v53 = v52;

    v54 = sub_21CF9703C(v51, v53, &v76);

    *(v47 + 4) = v54;
    _os_log_impl(&dword_21CF72000, v45, v46, "Using DiagnosticExtension: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x223D3ADE0](v48, -1, -1);
    MEMORY[0x223D3ADE0](v47, -1, -1);
  }

  v55 = sub_21D022774();
  v56 = v68;
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  v57 = v71;
  sub_21D0114F8(v44, v71, type metadata accessor for PrivateMLClientAlertService);
  v58 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v59 = swift_allocObject();
  v59[2] = 0;
  v59[3] = 0;
  v59[4] = v73;
  sub_21D010EA0(v57, v59 + v58);

  sub_21D00F69C(0, 0, v56, &unk_21D02CEC8, v59);
}

uint64_t sub_21D010A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a5;
  v6 = *(*(type metadata accessor for TapToRadarDraft() - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_21D010AF0, 0, 0);
}

uint64_t sub_21D010AF0()
{
  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_21D0114F8(v2, v1, type metadata accessor for TapToRadarDraft);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_21D010BB8;
  v4 = v0[6];

  return sub_21CFBAD18();
}

uint64_t sub_21D010BB8()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[9] = v0;

  sub_21D011560(v3);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21D010D1C, 0, 0);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_21D010D1C()
{
  v1 = *(v0 + 40);
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "PrivateMLClient failure -- failed to open Tap To Radar3", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

void sub_21D010DFC()
{
  oslog = sub_21D022484();
  v0 = sub_21D0228B4();
  if (os_log_type_enabled(oslog, v0))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_21CF72000, oslog, v0, "Dismiss user notification for Tap-To-Radar", v1, 2u);
    MEMORY[0x223D3ADE0](v1, -1, -1);
  }
}

uint64_t sub_21D010EA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClientAlertService();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D010F04(uint64_t a1)
{
  v3 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_21D010228(a1, v1 + v4, v8, v9, v10, v11, v12);
}

void sub_21D010FC0()
{
  v0 = *(*(type metadata accessor for PrivateMLClientAlertService() - 8) + 80);

  sub_21D010DFC();
}

uint64_t sub_21D011030(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D011128;

  return v7(a1);
}

uint64_t sub_21D011128()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21D011220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45730, &qword_21D0253D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D011290(uint64_t a1)
{
  v4 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21CF83390;

  return sub_21D010A50(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21D011388(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CF95398;

  return sub_21D011030(a1, v5);
}

uint64_t sub_21D011440(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21CF83390;

  return sub_21D011030(a1, v5);
}

uint64_t sub_21D0114F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D011560(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TransparencyReporterLogger.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v7 = sub_21D0224A4();
  (*(*(v7 - 8) + 32))(v5 + v6, a1, v7);
  return v5;
}

uint64_t TransparencyReporterLogger.init(logger:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v4 = sub_21D0224A4();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

void sub_21D0116C8(uint64_t a1, unint64_t a2, const char *a3)
{

  oslog = sub_21D022484();
  v6 = sub_21D0228B4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136380675;
    *(v7 + 4) = sub_21CF9703C(a1, a2, &v10);
    _os_log_impl(&dword_21CF72000, oslog, v6, a3, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223D3ADE0](v8, -1, -1);
    MEMORY[0x223D3ADE0](v7, -1, -1);
  }
}

void sub_21D0117E4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{

  oslog = sub_21D022484();
  v8 = sub_21D0228B4();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_21CF9703C(a1, a2, &v12);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_21CF9703C(a3, a4, &v12);
    _os_log_impl(&dword_21CF72000, oslog, v8, "TransparencyReporterLogger: modelName=%{public}smodelVersion=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v10, -1, -1);
    MEMORY[0x223D3ADE0](v9, -1, -1);
  }
}

uint64_t TransparencyReporterLogger.deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TransparencyReporterLogger.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient26TransparencyReporterLogger_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TransparencyReporterLogger()
{
  result = qword_27CE46728;
  if (!qword_27CE46728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransparencyReporterImpl.__allocating_init(logger:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  TransparencyReporterImpl.init(logger:configuration:)(a1, a2);
  return v7;
}

uint64_t TransparencyReporterImpl.init(logger:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21D0224A4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v73 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_21D022414();
  v72 = *(v74 - 8);
  v10 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46738, &unk_21D02CF80);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v68 - v14;
  v16 = sub_21D021A74();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_response);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) = 0;
  v78 = v7;
  v79 = v6;
  v24 = *(v7 + 16);
  v24(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_logger, a1, v6);
  v25 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_configuration;
  v26 = sub_21D021CC4();
  v75 = *(v26 - 8);
  v76 = v26;
  (*(v75 + 16))(v3 + v25, a2);
  sub_21D021C94();
  v69 = v17;
  v70 = v16;
  (*(v17 + 32))(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_requestIdentifier, v20, v16);
  v27 = sub_21D021CB4();
  v28 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
  *v28 = v27;
  v28[1] = v29;
  sub_21D021CA4();
  v30 = sub_21D0224E4();
  v31 = a1;
  v32 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
  *v32 = v30;
  v32[1] = v33;
  v77 = a2;
  sub_21D021C84();
  v34 = sub_21D021C74();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v15, 1, v34);
  if (v36 == 1)
  {
    sub_21D012360(v15);
    v37 = 0;
  }

  else
  {
    v37 = sub_21D021C64();
    (*(v35 + 8))(v15, v34);
  }

  v38 = v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID;
  *v38 = v37;
  *(v38 + 4) = v36 == 1;
  v39 = v31;
  v40 = v79;
  v24(v73, v31, v79);
  v41 = v71;
  sub_21D0223F4();
  (*(v72 + 32))(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_signPoster, v41, v74);
  v42 = sub_21D022514();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_transparencyReport) = sub_21D022504();

  v45 = sub_21D022484();
  v46 = sub_21D0228D4();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v74 = v39;
    v48 = v47;
    v49 = swift_slowAlloc();
    v82[0] = v49;
    *v48 = 136315907;
    v51 = v69;
    v50 = v70;
    (*(v69 + 16))(v20, v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_requestIdentifier, v70);
    sub_21CF97660();
    v52 = sub_21D022B04();
    v54 = v53;
    (*(v51 + 8))(v20, v50);
    v55 = sub_21CF9703C(v52, v54, v82);

    *(v48 + 4) = v55;
    *(v48 + 12) = 2082;
    v56 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
    v57 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);

    v58 = sub_21CF9703C(v56, v57, v82);

    *(v48 + 14) = v58;
    *(v48 + 22) = 2081;
    v59 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8);
    v80 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
    v81 = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
    v60 = sub_21D0225D4();
    v62 = sub_21CF9703C(v60, v61, v82);

    *(v48 + 24) = v62;
    *(v48 + 32) = 2081;
    v63 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID + 4);
    LODWORD(v80) = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID);
    BYTE4(v80) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
    v64 = sub_21D0225D4();
    v66 = sub_21CF9703C(v64, v65, v82);

    *(v48 + 34) = v66;
    _os_log_impl(&dword_21CF72000, v45, v46, "%s Initialized TransparencyReporter. modelName=%{public}s clientIdentifier=%{private}s userID=%{private}s)", v48, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v49, -1, -1);
    MEMORY[0x223D3ADE0](v48, -1, -1);

    (*(v75 + 8))(v77, v76);
    (*(v78 + 8))(v74, v79);
  }

  else
  {

    (*(v75 + 8))(v77, v76);
    (*(v78 + 8))(v39, v40);
  }

  return v3;
}

uint64_t sub_21D012360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46738, &unk_21D02CF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D0123C8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
  v4 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData + 8);
  *v3 = a1;
  v3[1] = a2;

  *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) = 0;
  return result;
}

uint64_t sub_21D012414(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x223D3A110](a1, a2);
  swift_endAccess();
}

uint64_t sub_21D01248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
  v8 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);
  *v7 = a1;
  v7[1] = a2;

  v9 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
  v10 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion + 8);
  *v9 = a3;
  v9[1] = a4;
}

void sub_21D01250C()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished;
  if ((*(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) & 1) == 0)
  {
    v2 = v0;
    v3 = (v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
    v4 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
    v5 = v3[1];
    v6 = (v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_response);
    swift_beginAccess();
    v7 = *v6;
    v8 = v6[1];

    sub_21D0128C4(v4, v5, v7, v8);

    *(v2 + v1) = 1;
    swift_retain_n();
    v9 = sub_21D022484();
    v10 = sub_21D0228D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136316675;
      sub_21D021A74();
      sub_21CF97660();
      v13 = sub_21D022B04();
      v15 = sub_21CF9703C(v13, v14, &v36);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2082;
      v16 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
      v17 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);

      v18 = sub_21CF9703C(v16, v17, &v36);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2082;
      v19 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
      v20 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion + 8);

      v21 = sub_21CF9703C(v19, v20, &v36);

      *(v11 + 24) = v21;
      *(v11 + 32) = 2081;
      v34 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
      v35 = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
      v22 = sub_21D0225D4();
      v24 = sub_21CF9703C(v22, v23, &v36);

      *(v11 + 34) = v24;
      *(v11 + 42) = 2081;
      LODWORD(v34) = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID);
      BYTE4(v34) = *(v2 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID + 4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
      v25 = sub_21D0225D4();
      v27 = sub_21CF9703C(v25, v26, &v36);

      *(v11 + 44) = v27;
      *(v11 + 52) = 2048;
      if (v3[1])
      {
        v28 = *v3;
        v29 = v3[1];

        v30 = sub_21D022624();
      }

      else
      {

        v30 = 0;
      }

      *(v11 + 54) = v30;

      *(v11 + 62) = 2048;
      v31 = *v6;
      v32 = v6[1];

      v33 = sub_21D022624();

      *(v11 + 64) = v33;

      _os_log_impl(&dword_21CF72000, v9, v10, "%s Finishing TransparencyReporter. modelName=%{public}s modelVersion=%{public}s clientIdentifier=%{private}s userID=%{private}s len(userData)=%ld\nlen(response)=%ld", v11, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v12, -1, -1);
      MEMORY[0x223D3ADE0](v11, -1, -1);
    }

    else
    {
    }
  }
}

void sub_21D0128C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = sub_21D0220D4();
  v71 = *(v9 - 8);
  isa = v71[8].isa;
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21D021CC4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 | a4)
  {
    v22 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_transparencyReport);
    v68 = v16;
    v69 = v22;
    (*(v14 + 16))(v18, v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_configuration, v16);
    if (a2)
    {
      v23 = a1;
    }

    else
    {
      v23 = 0;
    }

    v66 = v23;
    v67 = v9;
    if (a2)
    {
      v24 = a2;
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    if (a4)
    {
      v25 = a3;
    }

    else
    {
      v25 = 0;
    }

    v64 = v25;
    v65 = v24;
    if (a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = 0xE000000000000000;
    }

    v27 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);
    v62 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
    v63 = v26;
    v58 = a3;
    v59 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
    v28 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
    v29 = *(v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion + 8);
    v60 = (v4 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
    v61 = v28;
    v70 = v4;
    v30 = v71;
    (v71[13].isa)(v12, *MEMORY[0x277D20980], v9);

    sub_21D0224F4();

    v31 = v70;

    (v30[1].isa)(v12, v67);
    (*(v14 + 8))(v18, v68);
    swift_retain_n();
    v32 = a4;
    swift_bridgeObjectRetain_n();
    v33 = sub_21D022484();
    v34 = sub_21D0228B4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v74 = v36;
      *v35 = 136447747;
      v37 = sub_21D021A54();
      v39 = sub_21CF9703C(v37, v38, &v74);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      v40 = *v59;
      v41 = v59[1];

      v42 = sub_21CF9703C(v40, v41, &v74);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2082;
      v43 = *v60;
      v44 = v60[1];

      v45 = sub_21CF9703C(v43, v44, &v74);

      *(v35 + 24) = v45;
      *(v35 + 32) = 2082;
      if (*(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8))
      {
        v46 = *(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier);
        v47 = *(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8);
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
      }

      v48 = sub_21CF9703C(v46, v47, &v74);

      *(v35 + 34) = v48;
      *(v35 + 42) = 2081;
      v49 = *(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID + 4);
      v72 = *(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userID);
      v73 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45660, &qword_21D02CF90);
      v50 = sub_21D0225D4();
      v52 = sub_21CF9703C(v50, v51, &v74);

      *(v35 + 44) = v52;
      *(v35 + 52) = 2081;
      v53 = *(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData + 8);
      if (v53)
      {
        v54 = *(v31 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
        v55 = v53;
      }

      else
      {
        v54 = 0;
        v55 = 0xE000000000000000;
      }

      v56 = sub_21CF9703C(v54, v55, &v74);

      *(v35 + 54) = v56;
      *(v35 + 62) = 2049;
      if (v32)
      {
        v57 = sub_21D022624();
      }

      else
      {
        v57 = 0;
      }

      *(v35 + 64) = v57;

      _os_log_impl(&dword_21CF72000, v33, v34, "requestIdentifier=%{public}s modelName=%{public}s modelVersion=%{public}s clientIdentifier=%{public}s userID=%{private}s userData=%{private}s responseLen=%{private}ld", v35, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v36, -1, -1);
      MEMORY[0x223D3ADE0](v35, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v71 = sub_21D022484();
    v19 = sub_21D0228D4();
    if (os_log_type_enabled(v71, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21CF72000, v71, v19, "Caller failed to provide a prompt or response", v20, 2u);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    v21 = v71;
  }
}

uint64_t TransparencyReporterImpl.deinit()
{
  v1 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_logger;
  v2 = sub_21D0224A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_configuration;
  v4 = sub_21D021CC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_signPoster;
  v6 = sub_21D022414();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_requestIdentifier;
  v8 = sub_21D021A74();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_clientIdentifier + 8);

  v10 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_transparencyReport);

  v11 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);

  v12 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion + 8);

  v13 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData + 8);

  v14 = *(v0 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_response + 8);

  return v0;
}

uint64_t TransparencyReporterImpl.__deallocating_deinit()
{
  TransparencyReporterImpl.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_21D0130C8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = (v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData);
  v5 = *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_userData + 8);
  *v4 = a1;
  v4[1] = a2;

  *(v3 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_finished) = 0;
}

uint64_t sub_21D013128(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();

  MEMORY[0x223D3A110](a1, a2);
  swift_endAccess();
}

uint64_t sub_21D0131A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = (v7 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName);
  v9 = *(v7 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelName + 8);
  *v8 = a1;
  v8[1] = a2;

  v10 = (v7 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion);
  v11 = *(v7 + OBJC_IVAR____TtC15PrivateMLClient24TransparencyReporterImpl_modelVersion + 8);
  *v10 = a3;
  v10[1] = a4;
}

uint64_t type metadata accessor for TransparencyReporterImpl()
{
  result = qword_28121D790;
  if (!qword_28121D790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D013280()
{
  result = sub_21D0224A4();
  if (v1 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_21D021CC4();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = sub_21D022414();
      if (v3 <= 0x3F)
      {
        v7 = *(result - 8) + 64;
        result = sub_21D021A74();
        if (v4 <= 0x3F)
        {
          v8 = *(result - 8) + 64;
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t static NSUserDefaults.perfMetricsMaxDepth.getter()
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46938;
  v3[1] = unk_27CE46948;
  v4 = byte_27CE46958;
  sub_21CF7F198(v3, &v2, &qword_27CE45260, &unk_21D0244F0);
  v0 = sub_21D0146E4();
  sub_21CF7F200(v3, &qword_27CE45260, &unk_21D0244F0);
  return v0;
}

uint64_t static NSUserDefaults.enableLLC.getter()
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46910;
  v3[1] = unk_27CE46920;
  v4 = byte_27CE46930;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.inputTokenCountEstimate.getter()
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B248;
  v4[0] = *&qword_28121B258;
  *(v4 + 9) = unk_28121B261;
  sub_21CF7F198(&v3, v2, &qword_27CE45318, &qword_21D0236F8);
  v0 = sub_21D016038();
  sub_21CF7F200(&v3, &qword_27CE45318, &qword_21D0236F8);
  return v0;
}

uint64_t static NSUserDefaults.convertJpgToBitmap.getter()
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46898;
  v3[1] = unk_27CE468A8;
  v4 = byte_27CE468B8;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.enablePerfMetrics.getter()
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B2B0;
  v3[1] = unk_28121B2C0;
  v4 = byte_28121B2D0;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.modelOptionOverride.getter()
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B280;
  v3[1] = *&qword_28121B290;
  v4 = byte_28121B2A0;
  sub_21CF7F198(v3, &v2, &qword_27CE452D0, &unk_21D023690);
  v0 = sub_21D015100();
  sub_21CF7F200(v3, &qword_27CE452D0, &unk_21D023690);
  return v0;
}

uint64_t static NSUserDefaults.enableDraftModel.getter()
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B310;
  v3[1] = unk_28121B320;
  v4 = byte_28121B330;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t static NSUserDefaults.logInfoTieInferenceRequestAsJson.getter()
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B188;
  v3[1] = unk_28121B198;
  v4 = byte_28121B1A8;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

double static NSUserDefaults.taptoRadarTimeoutSecs.getter()
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4[0] = xmmword_27CE467E8;
  v4[1] = *&qword_27CE467F8;
  v5 = byte_27CE46808;
  sub_21CF7F198(v4, &v3, &qword_27CE45438, &qword_21D023C50);
  sub_21D016558();
  v1 = v0;
  sub_21CF7F200(v4, &qword_27CE45438, &qword_21D023C50);
  return v1;
}

uint64_t static NSUserDefaults.immimentDelay.getter()
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46810;
  v3[1] = unk_27CE46820;
  v4 = byte_27CE46830;
  sub_21CF7F198(v3, &v2, &qword_27CE45260, &unk_21D0244F0);
  v0 = sub_21D0146E4();
  sub_21CF7F200(v3, &qword_27CE45260, &unk_21D0244F0);
  return v0;
}

uint64_t static NSUserDefaults.jpgCompressionQuality.getter()
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE468C0;
  v3[1] = unk_27CE468D0;
  v4 = byte_27CE468E0;
  sub_21CF7F198(v3, v2, &qword_27CE45488, &qword_21D023E00);
  v0 = sub_21D015B00();
  sub_21CF7F200(v3, &qword_27CE45488, &qword_21D023E00);
  return v0 | ((HIDWORD(v0) & 1) << 32);
}

uint64_t static NSUserDefaults.tLLCDelay.getter()
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE468E8;
  v3[1] = unk_27CE468F8;
  v4 = byte_27CE46908;
  sub_21CF7F198(v3, &v2, &qword_27CE45260, &unk_21D0244F0);
  v0 = sub_21D0146E4();
  sub_21CF7F200(v3, &qword_27CE45260, &unk_21D0244F0);
  return v0;
}

uint64_t static NSUserDefaults.taptoRadarDiagExtension.getter()
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27CE46790;
  v4[0] = *&qword_27CE467A0;
  *(v4 + 9) = *(&qword_27CE467A8 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.workloadParameterModelOverride.getter()
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B1B0;
  v4[0] = *&qword_28121B1C0;
  *(v4 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.workloadParameterModelAdapterOverride.getter()
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B120;
  v4[0] = *&qword_28121B130;
  *(v4 + 9) = *(&qword_28121B138 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.workloadParameterInferenceIdOverride.getter()
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B150;
  v4[0] = *&qword_28121B160;
  *(v4 + 9) = *(&qword_28121B168 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.pipelineOverride.getter()
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B2E0;
  v3[1] = *&qword_28121B2F0;
  v4 = byte_28121B300;
  sub_21CF7F198(v3, &v2, &qword_27CE452D0, &unk_21D023690);
  v0 = sub_21D015100();
  sub_21CF7F200(v3, &qword_27CE452D0, &unk_21D023690);
  return v0;
}

uint64_t static NSUserDefaults.routingLayerNameOverride.getter()
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B1E8;
  v4[0] = *&qword_28121B1F8;
  *(v4 + 9) = *(&qword_28121B200 + 1);
  sub_21CF7F198(&v3, v2, &qword_27CE45600, &qword_21D0246F8);
  v0 = sub_21D014BC8();
  sub_21CF7F200(&v3, &qword_27CE45600, &qword_21D0246F8);
  return v0;
}

uint64_t static NSUserDefaults.ignoreTaptoRadar.getter()
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE467C0;
  v3[1] = unk_27CE467D0;
  v4 = byte_27CE467E0;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D01443C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B1B0;
  v8[0] = *&qword_28121B1C0;
  *(v8 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D014518(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_28121E0B8;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_28121B1D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.workloadParameterModelOverride.setter()
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B1D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t sub_21D0146E4()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 32) & 1) == 0)
  {
    return *v1;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[1];
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    return *v1;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v31, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v17 = sub_21D0224A4();
    __swift_project_value_buffer(v17, qword_27CE469B0);
    sub_21CF978C0(v31, v30);
    sub_21CF7F198(v1, v29, &qword_27CE45260, &unk_21D0244F0);
    v18 = sub_21D022484();
    v19 = sub_21D0228C4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);
      v22 = sub_21CF9703C(v4, v3, &v28);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      sub_21CF978C0(v30, v29);
      v23 = sub_21D0225D4();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v26 = sub_21CF9703C(v23, v25, &v28);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_21CF9703C(0x3233746E4955, 0xE600000000000000, &v28);
      _os_log_impl(&dword_21CF72000, v18, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
    return *v1;
  }

  v7 = LODWORD(v30[0]);
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21D0224A4();
  __swift_project_value_buffer(v8, qword_27CE469B0);
  sub_21CF7F198(v1, v29, &qword_27CE45260, &unk_21D0244F0);
  v9 = sub_21D022484();
  v10 = sub_21D0228A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);
    v13 = sub_21CF9703C(v4, v3, v29);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    LODWORD(v30[0]) = v7;
    v14 = sub_21D0225D4();
    v16 = sub_21CF9703C(v14, v15, v29);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v12, -1, -1);
    MEMORY[0x223D3ADE0](v11, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45260, &unk_21D0244F0);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v7;
}

uint64_t sub_21D014BC8()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 40) & 1) != 0)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v34, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
      if (swift_dynamicCast())
      {
        v7 = v33[0];
        v8 = v33[1];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v9 = sub_21D0224A4();
        __swift_project_value_buffer(v9, qword_27CE469B0);
        sub_21D020580(v7, v8);
        sub_21D020580(v7, v8);
        sub_21CF7F198(v1, v32, &qword_27CE45600, &qword_21D0246F8);
        v10 = sub_21D022484();
        v11 = sub_21D0228A4();
        sub_21D020594(v7, v8);
        if (!os_log_type_enabled(v10, v11))
        {

          sub_21D020594(v7, v8);
          sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v33[0] = v13;
        *v12 = 136315394;

        sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);
        v14 = sub_21CF9703C(v4, v3, v33);

        *(v12 + 4) = v14;
        *(v12 + 12) = 2080;
        v32[0] = v7;
        v32[1] = v8;
        v15 = sub_21D0225D4();
        v17 = sub_21CF9703C(v15, v16, v33);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_21CF72000, v10, v11, "Using UserDefaults override. key=%s value=%s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v13, -1, -1);
        v18 = v12;
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v20 = sub_21D0224A4();
        __swift_project_value_buffer(v20, qword_27CE469B0);
        v7 = *v1;
        v21 = v1[1];
        sub_21CF978C0(v34, v33);
        sub_21CF7F198(v1, v32, &qword_27CE45600, &qword_21D0246F8);

        v10 = sub_21D022484();
        v22 = sub_21D0228C4();
        if (!os_log_type_enabled(v10, v22))
        {
          sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);

          __swift_destroy_boxed_opaque_existential_0(v33);
          goto LABEL_19;
        }

        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v31 = v24;
        *v23 = 136315650;

        sub_21CF7F200(v1, &qword_27CE45600, &qword_21D0246F8);
        v25 = sub_21CF9703C(v4, v3, &v31);

        *(v23 + 4) = v25;
        *(v23 + 12) = 2080;
        sub_21CF978C0(v33, v32);
        v26 = sub_21D0225D4();
        v28 = v27;
        __swift_destroy_boxed_opaque_existential_0(v33);
        v29 = sub_21CF9703C(v26, v28, &v31);

        *(v23 + 14) = v29;
        *(v23 + 22) = 2080;
        *(v23 + 24) = sub_21CF9703C(0xD000000000000010, 0x800000021D0302D0, &v31);
        _os_log_impl(&dword_21CF72000, v10, v22, "Mismatched defaults type. key=%s value=%s type=%s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v24, -1, -1);
        v18 = v23;
      }

      MEMORY[0x223D3ADE0](v18, -1, -1);

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v34);
      return v7;
    }
  }

  v7 = *v1;
  v19 = v1[1];

  return v7;
}

uint64_t sub_21D015100()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 32) & 1) != 0)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    v4 = *(v0 + 8);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v31, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
      if (swift_dynamicCast())
      {
        v7 = v30[0];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v8 = sub_21D0224A4();
        __swift_project_value_buffer(v8, qword_27CE469B0);
        sub_21D0205A8(v7);
        sub_21D0205A8(v7);
        sub_21CF7F198(v1, v29, &qword_27CE452D0, &unk_21D023690);
        v9 = sub_21D022484();
        v10 = sub_21D0228A4();
        sub_21D0205B8(v7);
        if (!os_log_type_enabled(v9, v10))
        {

          sub_21D0205B8(v7);
          sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);
          goto LABEL_19;
        }

        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v29[0] = v12;
        *v11 = 136315394;

        sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);
        v13 = sub_21CF9703C(v4, v3, v29);

        *(v11 + 4) = v13;
        *(v11 + 12) = 2080;
        v30[0] = v7;
        v14 = sub_21D0225D4();
        v16 = sub_21CF9703C(v14, v15, v29);

        *(v11 + 14) = v16;
        _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v12, -1, -1);
        v17 = v11;
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v18 = sub_21D0224A4();
        __swift_project_value_buffer(v18, qword_27CE469B0);
        v7 = *v1;
        sub_21CF978C0(v31, v30);
        sub_21CF7F198(v1, v29, &qword_27CE452D0, &unk_21D023690);

        v9 = sub_21D022484();
        v19 = sub_21D0228C4();
        if (!os_log_type_enabled(v9, v19))
        {
          sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);

          __swift_destroy_boxed_opaque_existential_0(v30);
          goto LABEL_19;
        }

        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v28 = v21;
        *v20 = 136315650;

        sub_21CF7F200(v1, &qword_27CE452D0, &unk_21D023690);
        v22 = sub_21CF9703C(v4, v3, &v28);

        *(v20 + 4) = v22;
        *(v20 + 12) = 2080;
        sub_21CF978C0(v30, v29);
        v23 = sub_21D0225D4();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v30);
        v26 = sub_21CF9703C(v23, v25, &v28);

        *(v20 + 14) = v26;
        *(v20 + 22) = 2080;
        *(v20 + 24) = sub_21CF9703C(0xD000000000000024, 0x800000021D0303A0, &v28);
        _os_log_impl(&dword_21CF72000, v9, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D3ADE0](v21, -1, -1);
        v17 = v20;
      }

      MEMORY[0x223D3ADE0](v17, -1, -1);

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v31);
      return v7;
    }
  }

  v7 = *v1;

  return v7;
}

uint64_t sub_21D01561C()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + 8);
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    goto LABEL_19;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v31, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v17 = sub_21D0224A4();
    __swift_project_value_buffer(v17, qword_27CE469B0);
    sub_21CF978C0(v31, v30);
    sub_21CF7F198(v1, v29, &qword_27CE45288, &qword_21D023970);
    v18 = sub_21D022484();
    v19 = sub_21D0228C4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);
      v22 = sub_21CF9703C(v4, v3, &v28);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      sub_21CF978C0(v30, v29);
      v23 = sub_21D0225D4();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v26 = sub_21CF9703C(v23, v25, &v28);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_21CF9703C(1819242306, 0xE400000000000000, &v28);
      _os_log_impl(&dword_21CF72000, v18, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_19:
    v7 = *v1;
    return v7 & 1;
  }

  v7 = v30[0];
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21D0224A4();
  __swift_project_value_buffer(v8, qword_27CE469B0);
  sub_21CF7F198(v1, v29, &qword_27CE45288, &qword_21D023970);
  v9 = sub_21D022484();
  v10 = sub_21D0228A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);
    v13 = sub_21CF9703C(v4, v3, v29);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    LOBYTE(v30[0]) = v7 & 1;
    v14 = sub_21D0225D4();
    v16 = sub_21CF9703C(v14, v15, v29);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v12, -1, -1);
    MEMORY[0x223D3ADE0](v11, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45288, &qword_21D023970);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v7 & 1;
}

unint64_t sub_21D015B00()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (v0[8] & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v1 + 1);
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    goto LABEL_19;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v35, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v20 = sub_21D0224A4();
    __swift_project_value_buffer(v20, qword_27CE469B0);
    sub_21CF978C0(v35, v34);
    sub_21CF7F198(v1, v33, &qword_27CE45488, &qword_21D023E00);
    v21 = sub_21D022484();
    v22 = sub_21D0228C4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32 = v24;
      *v23 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);
      v25 = sub_21CF9703C(v4, v3, &v32);

      *(v23 + 4) = v25;
      *(v23 + 12) = 2080;
      sub_21CF978C0(v34, v33);
      v26 = sub_21D0225D4();
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_0(v34);
      v29 = sub_21CF9703C(v26, v28, &v32);

      *(v23 + 14) = v29;
      *(v23 + 22) = 2080;
      *(v23 + 24) = sub_21CF9703C(0x6C616E6F6974704FLL, 0xEF3E74616F6C463CLL, &v32);
      _os_log_impl(&dword_21CF72000, v21, v22, "Mismatched defaults type. key=%s value=%s type=%s", v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v24, -1, -1);
      MEMORY[0x223D3ADE0](v23, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);

      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_19:
    v9 = *v1;
    v10 = *(v1 + 4);
    return v9 | (v10 << 32);
  }

  v7 = BYTE4(v34[0]);
  v8 = LODWORD(v34[0]) | (BYTE4(v34[0]) << 32);
  v9 = LODWORD(v34[0]);
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v10 = v7 & 1;
  v11 = sub_21D0224A4();
  __swift_project_value_buffer(v11, qword_27CE469B0);
  sub_21CF7F198(v1, v33, &qword_27CE45488, &qword_21D023E00);
  v12 = sub_21D022484();
  v13 = sub_21D0228A4();
  if (os_log_type_enabled(v12, v13))
  {
    v31 = BYTE4(v8);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33[0] = v15;
    *v14 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);
    v16 = sub_21CF9703C(v4, v3, v33);

    *(v14 + 4) = v16;
    *(v14 + 12) = 2080;
    LODWORD(v34[0]) = v9;
    BYTE4(v34[0]) = v31 & 1;
    v17 = sub_21D0225D4();
    v19 = sub_21CF9703C(v17, v18, v33);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_21CF72000, v12, v13, "Using UserDefaults override. key=%s value=%s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v15, -1, -1);
    MEMORY[0x223D3ADE0](v14, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45488, &qword_21D023E00);
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v9 | (v10 << 32);
}

uint64_t sub_21D016038()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 40) & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = *(v1 + 16);
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    goto LABEL_19;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v35, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v18 = sub_21D0224A4();
    __swift_project_value_buffer(v18, qword_27CE469B0);
    sub_21CF978C0(v35, &v33);
    sub_21CF7F198(v1, &v31, &qword_27CE45318, &qword_21D0236F8);
    v19 = sub_21D022484();
    v20 = sub_21D0228C4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);
      v23 = sub_21CF9703C(v4, v3, &v30);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2080;
      sub_21CF978C0(&v33, &v31);
      v24 = sub_21D0225D4();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_0(&v33);
      v27 = sub_21CF9703C(v24, v26, &v30);

      *(v21 + 14) = v27;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_21CF9703C(0x6C616E6F6974704FLL, 0xED00003E746E493CLL, &v30);
      _os_log_impl(&dword_21CF72000, v19, v20, "Mismatched defaults type. key=%s value=%s type=%s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v22, -1, -1);
      MEMORY[0x223D3ADE0](v21, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);

      __swift_destroy_boxed_opaque_existential_0(&v33);
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
LABEL_19:
    result = *v1;
    v29 = *(v1 + 8);
    return result;
  }

  v7 = v33;
  v8 = v34;
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v9 = sub_21D0224A4();
  __swift_project_value_buffer(v9, qword_27CE469B0);
  sub_21CF7F198(v1, &v31, &qword_27CE45318, &qword_21D0236F8);
  v10 = sub_21D022484();
  v11 = sub_21D0228A4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v33 = v13;
    *v12 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);
    v14 = sub_21CF9703C(v4, v3, &v33);

    *(v12 + 4) = v14;
    *(v12 + 12) = 2080;
    v31 = v7;
    v32 = v8 & 1;
    v15 = sub_21D0225D4();
    v17 = sub_21CF9703C(v15, v16, &v33);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_21CF72000, v10, v11, "Using UserDefaults override. key=%s value=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v13, -1, -1);
    MEMORY[0x223D3ADE0](v12, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45318, &qword_21D0236F8);
  }

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v7;
}

void sub_21D016558()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (*(v0 + 32) & 1) == 0)
  {
    goto LABEL_19;
  }

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[1];
  v5 = sub_21D022584();
  v6 = [v2 objectForKey_];

  if (!v6)
  {
    goto LABEL_19;
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v31, v29);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v17 = sub_21D0224A4();
    __swift_project_value_buffer(v17, qword_27CE469B0);
    sub_21CF978C0(v31, v30);
    sub_21CF7F198(v1, v29, &qword_27CE45438, &qword_21D023C50);
    v18 = sub_21D022484();
    v19 = sub_21D0228C4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315650;

      sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);
      v22 = sub_21CF9703C(v4, v3, &v28);

      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      sub_21CF978C0(v30, v29);
      v23 = sub_21D0225D4();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_0(v30);
      v26 = sub_21CF9703C(v23, v25, &v28);

      *(v20 + 14) = v26;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_21CF9703C(0x656C62756F44, 0xE600000000000000, &v28);
      _os_log_impl(&dword_21CF72000, v18, v19, "Mismatched defaults type. key=%s value=%s type=%s", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v21, -1, -1);
      MEMORY[0x223D3ADE0](v20, -1, -1);
    }

    else
    {
      sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);

      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    __swift_destroy_boxed_opaque_existential_0(v31);
LABEL_19:
    v27 = *v1;
    return;
  }

  v7 = v30[0];
  if (qword_27CE451E0 != -1)
  {
    swift_once();
  }

  v8 = sub_21D0224A4();
  __swift_project_value_buffer(v8, qword_27CE469B0);
  sub_21CF7F198(v1, v29, &qword_27CE45438, &qword_21D023C50);
  v9 = sub_21D022484();
  v10 = sub_21D0228A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29[0] = v12;
    *v11 = 136315394;

    sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);
    v13 = sub_21CF9703C(v4, v3, v29);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v30[0] = v7;
    v14 = sub_21D0225D4();
    v16 = sub_21CF9703C(v14, v15, v29);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_21CF72000, v9, v10, "Using UserDefaults override. key=%s value=%s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D3ADE0](v12, -1, -1);
    MEMORY[0x223D3ADE0](v11, -1, -1);
  }

  else
  {

    sub_21CF7F200(v1, &qword_27CE45438, &qword_21D023C50);
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
}

uint64_t sub_21D016A44()
{
  v1 = v0;
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 != 1 || (*(v0 + 40) & 1) != 0)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = *(v0 + 16);
    v5 = sub_21D022584();
    v6 = [v2 objectForKey_];

    if (v6)
    {
      sub_21D022944();
      swift_unknownObjectRelease();
      sub_21CF978C0(v31, v29);
      if (swift_dynamicCast())
      {
        v7 = v30[0];
        v8 = v30[1];
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v9 = sub_21D0224A4();
        __swift_project_value_buffer(v9, qword_27CE469B0);
        swift_bridgeObjectRetain_n();
        sub_21CF7F198(v1, v29, &qword_27CE46970, &qword_21D02D098);
        v10 = sub_21D022484();
        v11 = sub_21D0228A4();

        if (!os_log_type_enabled(v10, v11))
        {

          sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30[0] = v13;
        *v12 = 136315394;

        sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);
        v14 = sub_21CF9703C(v4, v3, v30);

        *(v12 + 4) = v14;
        *(v12 + 12) = 2080;
        v29[0] = v7;
        v29[1] = v8;
        v15 = sub_21D0225D4();
        v17 = sub_21CF9703C(v15, v16, v30);

        *(v12 + 14) = v17;
        _os_log_impl(&dword_21CF72000, v10, v11, "Using UserDefaults override. key=%s value=%s", v12, 0x16u);
      }

      else
      {
        if (qword_27CE451E0 != -1)
        {
          swift_once();
        }

        v19 = sub_21D0224A4();
        __swift_project_value_buffer(v19, qword_27CE469B0);
        v7 = *v1;
        v20 = v1[1];
        sub_21CF978C0(v31, v30);
        sub_21CF7F198(v1, v29, &qword_27CE46970, &qword_21D02D098);

        v10 = sub_21D022484();
        v21 = sub_21D0228C4();
        if (!os_log_type_enabled(v10, v21))
        {
          sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);

          __swift_destroy_boxed_opaque_existential_0(v30);
          goto LABEL_19;
        }

        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v28 = v13;
        *v12 = 136315650;

        sub_21CF7F200(v1, &qword_27CE46970, &qword_21D02D098);
        v22 = sub_21CF9703C(v4, v3, &v28);

        *(v12 + 4) = v22;
        *(v12 + 12) = 2080;
        sub_21CF978C0(v30, v29);
        v23 = sub_21D0225D4();
        v25 = v24;
        __swift_destroy_boxed_opaque_existential_0(v30);
        v26 = sub_21CF9703C(v23, v25, &v28);

        *(v12 + 14) = v26;
        *(v12 + 22) = 2080;
        *(v12 + 24) = sub_21CF9703C(0x676E69727453, 0xE600000000000000, &v28);
        _os_log_impl(&dword_21CF72000, v10, v21, "Mismatched defaults type. key=%s value=%s type=%s", v12, 0x20u);
      }

      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v13, -1, -1);
      MEMORY[0x223D3ADE0](v12, -1, -1);

LABEL_19:
      __swift_destroy_boxed_opaque_existential_0(v31);
      return v7;
    }
  }

  v7 = *v1;
  v18 = v1[1];

  return v7;
}

uint64_t (*static NSUserDefaults.workloadParameterModelOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B1B0;
  v5 = *&qword_28121B1C0;
  *(v3 + 25) = *(&qword_28121B1C8 + 1);
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D014BC8();
  *(v3 + 80) = v8;
  return sub_21D0205C8;
}

void sub_21D017010()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B1B0 = 0uLL;
    qword_28121B1C0 = 0xD00000000000001ELL;
    qword_28121B1C8 = 0x800000021D030170;
    qword_28121B1D0 = v2;
    byte_28121B1D8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

uint64_t static NSUserDefaults.privatemlClientUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  result = sub_21D022A24();
  __break(1u);
  return result;
}

id static NSUserDefaults.$workloadParameterModelOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B1C8;
  v6 = qword_28121B1D0;
  v2 = qword_28121B1D0;
  v4 = byte_28121B1D8;
  *a1 = xmmword_28121B1B0;
  *(a1 + 8) = *(&xmmword_28121B1B0 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D01729C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B120;
  v8[0] = *&qword_28121B130;
  *(v8 + 9) = *(&qword_28121B138 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D017378(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_28121B118;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_28121B140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.workloadParameterModelAdapterOverride.setter()
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.workloadParameterModelAdapterOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B120;
  v5 = *&qword_28121B130;
  *(v3 + 25) = *(&qword_28121B138 + 1);
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D014BC8();
  *(v3 + 80) = v8;
  return sub_21D0205C8;
}

void sub_21D017624()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B120 = 0uLL;
    qword_28121B130 = 0xD000000000000025;
    qword_28121B138 = 0x800000021D0302A0;
    qword_28121B140 = v2;
    byte_28121B148 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$workloadParameterModelAdapterOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B138;
  v6 = qword_28121B140;
  v2 = qword_28121B140;
  v4 = byte_28121B148;
  *a1 = xmmword_28121B120;
  *(a1 + 8) = *(&xmmword_28121B120 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D0177E0@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B150;
  v8[0] = *&qword_28121B160;
  *(v8 + 9) = *(&qword_28121B168 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D0178BC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_28121E0B0;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_28121B170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.workloadParameterInferenceIdOverride.setter()
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B170;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.workloadParameterInferenceIdOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B150;
  v5 = *&qword_28121B160;
  *(v3 + 25) = *(&qword_28121B168 + 1);
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D014BC8();
  *(v3 + 80) = v8;
  return sub_21D0205C8;
}

void sub_21D017B68()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B150 = 0uLL;
    qword_28121B160 = 0xD000000000000024;
    qword_28121B168 = 0x800000021D030270;
    qword_28121B170 = v2;
    byte_28121B178 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$workloadParameterInferenceIdOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B168;
  v6 = qword_28121B170;
  v2 = qword_28121B170;
  v4 = byte_28121B178;
  *a1 = xmmword_28121B150;
  *(a1 + 8) = *(&xmmword_28121B150 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t static NSUserDefaults.enableFallBack.getter()
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B340;
  v3[1] = unk_28121B350;
  v4 = byte_28121B360;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D017DF0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B340;
  v5[1] = unk_28121B350;
  v6 = byte_28121B360;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D017EC4(char *a1)
{
  v1 = *a1;
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B358;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enableFallBack.setter()
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B358;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enableFallBack.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B360;
  v5 = unk_28121B350;
  *v3 = xmmword_28121B340;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D01814C;
}

void sub_21D018150()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B340) = 0;
    *(&xmmword_28121B340 + 1) = 0x6146656C62616E65;
    unk_28121B350 = 0xEE006B6361426C6CLL;
    qword_28121B358 = v2;
    byte_28121B360 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enableFallBack.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B338 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B340 + 1);
  v2 = unk_28121B350;
  v7 = qword_28121B358;
  v4 = qword_28121B358;
  v5 = byte_28121B360;
  *a1 = xmmword_28121B340;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D018304@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B2E0;
  v5[1] = *&qword_28121B2F0;
  v6 = byte_28121B300;
  sub_21CF7F198(v5, &v4, &qword_27CE452D0, &unk_21D023690);
  v2 = sub_21D015100();
  result = sub_21CF7F200(v5, &qword_27CE452D0, &unk_21D023690);
  *a1 = v2;
  return result;
}

void sub_21D0183D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28121B2D8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B2F8;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.pipelineOverride.setter(uint64_t a1)
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B2F8;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.pipelineOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B300;
  v5 = *&qword_28121B2F0;
  *v3 = xmmword_28121B2E0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  *(v3 + 64) = sub_21D015100();
  return sub_21D01867C;
}

void sub_21D018680()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B2E0 = xmmword_21D02D050;
    qword_28121B2F0 = 0xE800000000000000;
    qword_28121B2F8 = v2;
    byte_28121B300 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$pipelineOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B2D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B2F0;
  v6 = qword_28121B2F8;
  v2 = qword_28121B2F8;
  v4 = byte_28121B300;
  *a1 = xmmword_28121B2E0;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t static NSUserDefaults.serverScope.getter()
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_28121B370;
  v4[0] = *&qword_28121B380;
  *(v4 + 9) = unk_28121B389;
  sub_21CF7F198(&v3, v2, &qword_27CE46970, &qword_21D02D098);
  v0 = sub_21D016A44();
  sub_21CF7F200(&v3, &qword_27CE46970, &qword_21D02D098);
  return v0;
}

uint64_t sub_21D0188FC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B370;
  v8[0] = *&qword_28121B380;
  *(v8 + 9) = unk_28121B389;
  sub_21CF7F198(&v7, v6, &qword_27CE46970, &qword_21D02D098);
  v2 = sub_21D016A44();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE46970, &qword_21D02D098);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D0189D8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_28121B368;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_28121B390;
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.serverScope.setter()
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B390;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void (*static NSUserDefaults.serverScope.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B370;
  v5 = *&qword_28121B380;
  *(v3 + 25) = unk_28121B389;
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D016A44();
  *(v3 + 80) = v8;
  return sub_21D018C64;
}

void sub_21D018C64(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 88) = *(*a1 + 72);
  v4 = v2[14];
  v3 = v2[15];
  v5 = v2[13];
  v2[12] = v2[10];
  if (a2)
  {

    v6 = sub_21D022B44();
    v7 = sub_21D022584();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
    v8 = v2[10];

    swift_endAccess();
  }

  else
  {
    v9 = sub_21D022B44();
    v10 = sub_21D022584();
    [v5 setObject:v9 forKey:v10];
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_21D018D7C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_28121B370 = 0;
    *(&xmmword_28121B370 + 1) = 0xE000000000000000;
    qword_28121B380 = 0x6353726576726553;
    unk_28121B388 = 0xEB0000000065706FLL;
    qword_28121B390 = v2;
    byte_28121B398 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$serverScope.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B368 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_28121B370 + 1);
  v3 = qword_28121B380;
  v4 = unk_28121B388;
  v8 = qword_28121B390;
  v5 = qword_28121B390;
  v6 = byte_28121B398;
  *a1 = xmmword_28121B370;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t sub_21D018F40@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B1E8;
  v8[0] = *&qword_28121B1F8;
  *(v8 + 9) = *(&qword_28121B200 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D01901C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_28121B1E0;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_28121B208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.routingLayerNameOverride.setter()
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B208;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.routingLayerNameOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B1E8;
  v5 = *&qword_28121B1F8;
  *(v3 + 25) = *(&qword_28121B200 + 1);
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D014BC8();
  *(v3 + 80) = v8;
  return sub_21D0205C8;
}

void sub_21D0192C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B1E8 = 0uLL;
    qword_28121B1F8 = 0xD000000000000018;
    qword_28121B200 = 0x800000021D030250;
    qword_28121B208 = v2;
    byte_28121B210 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$routingLayerNameOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B200;
  v6 = qword_28121B208;
  v2 = qword_28121B208;
  v4 = byte_28121B210;
  *a1 = xmmword_28121B1E8;
  *(a1 + 8) = *(&xmmword_28121B1E8 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D01947C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B2B0;
  v5[1] = unk_28121B2C0;
  v6 = byte_28121B2D0;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D019550(char *a1)
{
  v1 = *a1;
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B2C8;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enablePerfMetrics.setter()
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B2C8;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enablePerfMetrics.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B2D0;
  v5 = unk_28121B2C0;
  *v3 = xmmword_28121B2B0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D0197D8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B2B0) = 1;
    *(&xmmword_28121B2B0 + 1) = 0xD000000000000011;
    unk_28121B2C0 = 0x800000021D0303F0;
    qword_28121B2C8 = v2;
    byte_28121B2D0 = 1;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enablePerfMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B2B0 + 1);
  v2 = unk_28121B2C0;
  v7 = qword_28121B2C8;
  v4 = qword_28121B2C8;
  v5 = byte_28121B2D0;
  *a1 = xmmword_28121B2B0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01997C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B280;
  v5[1] = *&qword_28121B290;
  v6 = byte_28121B2A0;
  sub_21CF7F198(v5, &v4, &qword_27CE452D0, &unk_21D023690);
  v2 = sub_21D015100();
  result = sub_21CF7F200(v5, &qword_27CE452D0, &unk_21D023690);
  *a1 = v2;
  return result;
}

void sub_21D019A4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_28121B278;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B298;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.modelOptionOverride.setter(uint64_t a1)
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B298;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.modelOptionOverride.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B2A0;
  v5 = *&qword_28121B290;
  *v3 = xmmword_28121B280;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  *(v3 + 64) = sub_21D015100();
  return sub_21D0205D0;
}

void sub_21D019CF4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_28121B280 = xmmword_21D02D060;
    qword_28121B290 = 0x800000021D0303D0;
    qword_28121B298 = v2;
    byte_28121B2A0 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$modelOptionOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B278 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B290;
  v6 = qword_28121B298;
  v2 = qword_28121B298;
  v4 = byte_28121B2A0;
  *a1 = xmmword_28121B280;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t static NSUserDefaults.overrideModelCatalog.getter()
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46740;
  v3[1] = *&qword_27CE46750;
  v4 = byte_27CE46760;
  sub_21CF7F198(v3, &v2, &qword_27CE452D0, &unk_21D023690);
  v0 = sub_21D015100();
  sub_21CF7F200(v3, &qword_27CE452D0, &unk_21D023690);
  return v0;
}

uint64_t sub_21D019F74@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46740;
  v5[1] = *&qword_27CE46750;
  v6 = byte_27CE46760;
  sub_21CF7F198(v5, &v4, &qword_27CE452D0, &unk_21D023690);
  v2 = sub_21D015100();
  result = sub_21CF7F200(v5, &qword_27CE452D0, &unk_21D023690);
  *a1 = v2;
  return result;
}

void sub_21D01A044(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27CE45170;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE46758;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.overrideModelCatalog.setter(uint64_t a1)
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46758;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.overrideModelCatalog.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46760;
  v5 = *&qword_27CE46750;
  *v3 = xmmword_27CE46740;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  *(v3 + 64) = sub_21D015100();
  return sub_21D0205D0;
}

void sub_21D01A2EC(void **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 8;
  v2[9] = *v3;
  v5 = v2[11];
  v4 = v2[12];
  v6 = v2[10];
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
    v7 = sub_21D022B44();
    v8 = sub_21D022584();
    [v6 setObject:v7 forKey:v8];

    swift_unknownObjectRelease();
    v9 = *v3;

    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46968, &qword_21D02D090);
    v10 = sub_21D022B44();
    v11 = sub_21D022584();
    [v6 setObject:v10 forKey:v11];
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_21D01A41C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_27CE46740 = xmmword_21D02D070;
    qword_27CE46750 = 0x800000021D030210;
    qword_27CE46758 = v2;
    byte_27CE46760 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$overrideModelCatalog.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45170 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE46750;
  v6 = qword_27CE46758;
  v2 = qword_27CE46758;
  v4 = byte_27CE46760;
  *a1 = xmmword_27CE46740;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;

  return v6;
}

uint64_t sub_21D01A5D0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B310;
  v5[1] = unk_28121B320;
  v6 = byte_28121B330;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01A6A4(char *a1)
{
  v1 = *a1;
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B328;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enableDraftModel.setter()
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B328;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enableDraftModel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B330;
  v5 = unk_28121B320;
  *v3 = xmmword_28121B310;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01A92C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B310) = 0;
    *(&xmmword_28121B310 + 1) = 0xD000000000000010;
    unk_28121B320 = 0x800000021D030380;
    qword_28121B328 = v2;
    byte_28121B330 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enableDraftModel.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B308 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B310 + 1);
  v2 = unk_28121B320;
  v7 = qword_28121B328;
  v4 = qword_28121B328;
  v5 = byte_28121B330;
  *a1 = xmmword_28121B310;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.convertSchemasToGrammars.getter()
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_28121B220;
  v3[1] = unk_28121B230;
  v4 = byte_28121B240;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D01AB9C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B220;
  v5[1] = unk_28121B230;
  v6 = byte_28121B240;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01AC70(char *a1)
{
  v1 = *a1;
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B238;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.convertSchemasToGrammars.setter()
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B238;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.convertSchemasToGrammars.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B240;
  v5 = unk_28121B230;
  *v3 = xmmword_28121B220;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01AEF8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B220) = 0;
    *(&xmmword_28121B220 + 1) = 0xD000000000000018;
    unk_28121B230 = 0x800000021D0301F0;
    qword_28121B238 = v2;
    byte_28121B240 = 1;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$convertSchemasToGrammars.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B218 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B220 + 1);
  v2 = unk_28121B230;
  v7 = qword_28121B238;
  v4 = qword_28121B238;
  v5 = byte_28121B240;
  *a1 = xmmword_28121B220;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01B09C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_28121B188;
  v5[1] = unk_28121B198;
  v6 = byte_28121B1A8;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01B170(char *a1)
{
  v1 = *a1;
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28121B1A0;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.logInfoTieInferenceRequestAsJson.setter()
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B1A0;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.logInfoTieInferenceRequestAsJson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_28121B1A8;
  v5 = unk_28121B198;
  *v3 = xmmword_28121B188;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01B3F8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_28121B188) = 0;
    *(&xmmword_28121B188 + 1) = 0xD000000000000020;
    unk_28121B198 = 0x800000021D030350;
    qword_28121B1A0 = v2;
    byte_28121B1A8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$logInfoTieInferenceRequestAsJson.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121B180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_28121B188 + 1);
  v2 = unk_28121B198;
  v7 = qword_28121B1A0;
  v4 = qword_28121B1A0;
  v5 = byte_28121B1A8;
  *a1 = xmmword_28121B188;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.taptoRadarNoNetworkTest.getter()
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3[0] = xmmword_27CE46768;
  v3[1] = unk_27CE46778;
  v4 = byte_27CE46788;
  sub_21CF7F198(v3, &v2, &qword_27CE45288, &qword_21D023970);
  v0 = sub_21D01561C();
  sub_21CF7F200(v3, &qword_27CE45288, &qword_21D023970);
  return v0 & 1;
}

uint64_t sub_21D01B66C@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46768;
  v5[1] = unk_27CE46778;
  v6 = byte_27CE46788;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01B740(char *a1)
{
  v1 = *a1;
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46780;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.taptoRadarNoNetworkTest.setter()
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46780;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.taptoRadarNoNetworkTest.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46788;
  v5 = unk_27CE46778;
  *v3 = xmmword_27CE46768;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01B9C8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE46768) = 0;
    *(&xmmword_27CE46768 + 1) = 0xD000000000000017;
    unk_27CE46778 = 0x800000021D0301D0;
    qword_27CE46780 = v2;
    byte_27CE46788 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$taptoRadarNoNetworkTest.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45178 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46768 + 1);
  v2 = unk_27CE46778;
  v7 = qword_27CE46780;
  v4 = qword_27CE46780;
  v5 = byte_27CE46788;
  *a1 = xmmword_27CE46768;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01BB68@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_27CE46790;
  v8[0] = *&qword_27CE467A0;
  *(v8 + 9) = *(&qword_27CE467A8 + 1);
  sub_21CF7F198(&v7, v6, &qword_27CE45600, &qword_21D0246F8);
  v2 = sub_21D014BC8();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45600, &qword_21D0246F8);
  *a1 = v2;
  a1[1] = v4;
  return result;
}

void sub_21D01BC44(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = qword_27CE45180;

  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = qword_27CE467B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v5 = sub_21D022B44();
  v6 = sub_21D022584();
  [v4 setObject:v5 forKey:v6];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.taptoRadarDiagExtension.setter()
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE467B0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.taptoRadarDiagExtension.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27CE46790;
  v5 = *&qword_27CE467A0;
  *(v3 + 25) = *(&qword_27CE467A8 + 1);
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D014BC8();
  *(v3 + 80) = v8;
  return sub_21D01BEF0;
}

void sub_21D01BEF4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(*a1 + 88) = *(*a1 + 72);
  v4 = v2[14];
  v3 = v2[15];
  v5 = v2[13];
  v2[12] = v2[10];
  if (a2)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
    v6 = sub_21D022B44();
    v7 = sub_21D022584();
    [v5 setObject:v6 forKey:v7];

    swift_unknownObjectRelease();
    v8 = v2[10];

    swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE457D8, &qword_21D025420);
    v9 = sub_21D022B44();
    v10 = sub_21D022584();
    [v5 setObject:v9 forKey:v10];
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v2);
}

void sub_21D01C02C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    xmmword_27CE46790 = xmmword_21D02D080;
    qword_27CE467A0 = 0xD000000000000017;
    qword_27CE467A8 = 0x800000021D0302F0;
    qword_27CE467B0 = v2;
    byte_27CE467B8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$taptoRadarDiagExtension.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45180 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE467A8;
  v6 = qword_27CE467B0;
  v2 = qword_27CE467B0;
  v4 = byte_27CE467B8;
  *a1 = xmmword_27CE46790;
  *(a1 + 8) = *(&xmmword_27CE46790 + 8);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  *(a1 + 40) = v4;

  return v6;
}

uint64_t sub_21D01C1E8@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE467C0;
  v5[1] = unk_27CE467D0;
  v6 = byte_27CE467E0;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01C2BC(char *a1)
{
  v1 = *a1;
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE467D8;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.ignoreTaptoRadar.setter()
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE467D8;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.ignoreTaptoRadar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE467E0;
  v5 = unk_27CE467D0;
  *v3 = xmmword_27CE467C0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01C544()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE467C0) = 0;
    *(&xmmword_27CE467C0 + 1) = 0xD000000000000010;
    unk_27CE467D0 = 0x800000021D030230;
    qword_27CE467D8 = v2;
    byte_27CE467E0 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$ignoreTaptoRadar.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45188 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE467C0 + 1);
  v2 = unk_27CE467D0;
  v7 = qword_27CE467D8;
  v4 = qword_27CE467D8;
  v5 = byte_27CE467E0;
  *a1 = xmmword_27CE467C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01C6E8@<X0>(void *a1@<X8>)
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6[0] = xmmword_27CE467E8;
  v6[1] = *&qword_27CE467F8;
  v7 = byte_27CE46808;
  sub_21CF7F198(v6, &v5, &qword_27CE45438, &qword_21D023C50);
  sub_21D016558();
  v3 = v2;
  result = sub_21CF7F200(v6, &qword_27CE45438, &qword_21D023C50);
  *a1 = v3;
  return result;
}

void sub_21D01C7C0(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46800;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v1}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.taptoRadarTimeoutSecs.setter(double a1)
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46800;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, *&a1}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void (*static NSUserDefaults.taptoRadarTimeoutSecs.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46808;
  v5 = *&qword_27CE467F8;
  *v3 = xmmword_27CE467E8;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  sub_21D016558();
  *(v3 + 64) = v8;
  return sub_21D01CA50;
}

void sub_21D01CA50(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 80);
  *(*a1 + 72) = *(*a1 + 64);
  v7 = sub_21D022B44();
  v8 = sub_21D022584();
  [v6 setObject:v7 forKey:v8];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01CB18()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_27CE467E8 = 0x403B000000000000;
    *(&xmmword_27CE467E8 + 1) = 0xD000000000000015;
    qword_27CE467F8 = 0x800000021D030330;
    qword_27CE46800 = v2;
    byte_27CE46808 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$taptoRadarTimeoutSecs.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45190 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE467E8 + 1);
  v2 = qword_27CE467F8;
  v7 = qword_27CE46800;
  v4 = qword_27CE46800;
  v5 = byte_27CE46808;
  *a1 = xmmword_27CE467E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01CCB8@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46810;
  v5[1] = unk_27CE46820;
  v6 = byte_27CE46830;
  sub_21CF7F198(v5, &v4, &qword_27CE45260, &unk_21D0244F0);
  v2 = sub_21D0146E4();
  result = sub_21CF7F200(v5, &qword_27CE45260, &unk_21D0244F0);
  *a1 = v2;
  return result;
}

void sub_21D01CD88(int *a1)
{
  v1 = *a1;
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46828;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.immimentDelay.setter()
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46828;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.immimentDelay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x60uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46830;
  v5 = unk_27CE46820;
  *v3 = xmmword_27CE46810;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 36) = sub_21D0146E4();
  return sub_21D01D008;
}

void sub_21D01D00C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE46810) = 1000;
    *(&xmmword_27CE46810 + 1) = 0x746E656D696D6D69;
    unk_27CE46820 = 0xED000079616C6544;
    qword_27CE46828 = v2;
    byte_27CE46830 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$immimentDelay.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE45198 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46810 + 1);
  v2 = unk_27CE46820;
  v7 = qword_27CE46828;
  v4 = qword_27CE46828;
  v5 = byte_27CE46830;
  *a1 = xmmword_27CE46810;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.contextLengthDefault.getter()
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27CE46838;
  v4[0] = *&qword_27CE46848;
  *(v4 + 9) = unk_27CE46851;
  sub_21CF7F198(&v3, v2, &qword_27CE45318, &qword_21D0236F8);
  v0 = sub_21D016038();
  sub_21CF7F200(&v3, &qword_27CE45318, &qword_21D0236F8);
  return v0;
}

uint64_t sub_21D01D298@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_27CE46838;
  v8[0] = *&qword_27CE46848;
  *(v8 + 9) = unk_27CE46851;
  sub_21CF7F198(&v7, v6, &qword_27CE45318, &qword_21D0236F8);
  v2 = sub_21D016038();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45318, &qword_21D0236F8);
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_21D01D37C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE46858;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:v5];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.contextLengthDefault.setter()
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46858;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.contextLengthDefault.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27CE46838;
  v5 = *&qword_27CE46848;
  *(v3 + 25) = unk_27CE46851;
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D016038();
  *(v3 + 80) = v8 & 1;
  return sub_21D01D638;
}

void sub_21D01D63C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_27CE46838 = 0;
    BYTE8(xmmword_27CE46838) = 1;
    qword_27CE46848 = 0xD000000000000014;
    unk_27CE46850 = 0x800000021D0301B0;
    qword_27CE46858 = v2;
    byte_27CE46860 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$contextLengthDefault.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE8(xmmword_27CE46838);
  v4 = qword_27CE46848;
  v3 = unk_27CE46850;
  v8 = qword_27CE46858;
  v5 = qword_27CE46858;
  v6 = byte_27CE46860;
  *a1 = xmmword_27CE46838;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t static NSUserDefaults.overrideContextLength.getter()
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = xmmword_27CE46868;
  v4[0] = *&qword_27CE46878;
  *(v4 + 9) = unk_27CE46881;
  sub_21CF7F198(&v3, v2, &qword_27CE45318, &qword_21D0236F8);
  v0 = sub_21D016038();
  sub_21CF7F200(&v3, &qword_27CE45318, &qword_21D0236F8);
  return v0;
}

uint64_t sub_21D01D8C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_27CE46868;
  v8[0] = *&qword_27CE46878;
  *(v8 + 9) = unk_27CE46881;
  sub_21CF7F198(&v7, v6, &qword_27CE45318, &qword_21D0236F8);
  v2 = sub_21D016038();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45318, &qword_21D0236F8);
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_21D01D9A4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE46888;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:v5];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.overrideContextLength.setter()
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46888;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.overrideContextLength.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_27CE46868;
  v5 = *&qword_27CE46878;
  *(v3 + 25) = unk_27CE46881;
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D016038();
  *(v3 + 80) = v8 & 1;
  return sub_21D0205D4;
}

void sub_21D01DC60()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_27CE46868 = 0;
    BYTE8(xmmword_27CE46868) = 1;
    qword_27CE46878 = 0xD000000000000015;
    unk_27CE46880 = 0x800000021D030190;
    qword_27CE46888 = v2;
    byte_27CE46890 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$overrideContextLength.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE8(xmmword_27CE46868);
  v4 = qword_27CE46878;
  v3 = unk_27CE46880;
  v8 = qword_27CE46888;
  v5 = qword_27CE46888;
  v6 = byte_27CE46890;
  *a1 = xmmword_27CE46868;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t sub_21D01DE10@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46898;
  v5[1] = unk_27CE468A8;
  v6 = byte_27CE468B8;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01DEE4(char *a1)
{
  v1 = *a1;
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE468B0;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.convertJpgToBitmap.setter()
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE468B0;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.convertJpgToBitmap.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE468B8;
  v5 = unk_27CE468A8;
  *v3 = xmmword_27CE46898;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01E16C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE46898) = 0;
    *(&xmmword_27CE46898 + 1) = 0xD000000000000012;
    unk_27CE468A8 = 0x800000021D030410;
    qword_27CE468B0 = v2;
    byte_27CE468B8 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$convertJpgToBitmap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451B0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46898 + 1);
  v2 = unk_27CE468A8;
  v7 = qword_27CE468B0;
  v4 = qword_27CE468B0;
  v5 = byte_27CE468B8;
  *a1 = xmmword_27CE46898;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01E30C@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = xmmword_28121B248;
  v8[0] = *&qword_28121B258;
  *(v8 + 9) = unk_28121B261;
  sub_21CF7F198(&v7, v6, &qword_27CE45318, &qword_21D0236F8);
  v2 = sub_21D016038();
  v4 = v3;
  result = sub_21CF7F200(&v7, &qword_27CE45318, &qword_21D0236F8);
  *a1 = v2;
  *(a1 + 8) = v4 & 1;
  return result;
}

void sub_21D01E3F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_28121B268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:v5];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.inputTokenCountEstimate.setter()
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28121B268;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.inputTokenCountEstimate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x80uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = xmmword_28121B248;
  v5 = *&qword_28121B258;
  *(v3 + 25) = unk_28121B261;
  *v3 = v4;
  *(v3 + 16) = v5;
  v6 = *(v3 + 24);
  v7 = *(v3 + 16);
  *(v3 + 104) = *(v3 + 32);
  *(v3 + 112) = v7;
  *(v3 + 120) = v6;
  *(v3 + 72) = sub_21D016038();
  *(v3 + 80) = v8 & 1;
  return sub_21D0205D4;
}

void sub_21D01E6AC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 112);
  v5 = *(*a1 + 120);
  v7 = *(*a1 + 104);
  *(*a1 + 88) = *(*a1 + 72);
  v3[96] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46978, &qword_21D02D0A0);
  v8 = sub_21D022B44();
  v9 = sub_21D022584();
  [v7 setObject:v8 forKey:v9];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01E790()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    *&xmmword_28121B248 = 0;
    BYTE8(xmmword_28121B248) = 1;
    qword_28121B258 = 0xD000000000000017;
    unk_28121B260 = 0x800000021D030430;
    qword_28121B268 = v2;
    byte_28121B270 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$inputTokenCountEstimate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28121E0C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE8(xmmword_28121B248);
  v4 = qword_28121B258;
  v3 = unk_28121B260;
  v8 = qword_28121B268;
  v5 = qword_28121B268;
  v6 = byte_28121B270;
  *a1 = xmmword_28121B248;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return v8;
}

uint64_t sub_21D01E940@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE468C0;
  v5[1] = unk_27CE468D0;
  v6 = byte_27CE468E0;
  sub_21CF7F198(v5, &v4, &qword_27CE45488, &qword_21D023E00);
  v2 = sub_21D015B00();
  result = sub_21CF7F200(v5, &qword_27CE45488, &qword_21D023E00);
  *a1 = v2;
  *(a1 + 4) = BYTE4(v2) & 1;
  return result;
}

void sub_21D01EA18(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE468D8;
  LODWORD(v6) = v1;
  BYTE4(v6) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  v4 = sub_21D022B44();
  v5 = sub_21D022584();
  [v3 setObject:v4 forKey:{v5, v6}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.jpgCompressionQuality.setter(uint64_t a1)
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE468D8;
  LODWORD(v5) = a1;
  BYTE4(v5) = BYTE4(a1) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:{v4, v5}];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void (*static NSUserDefaults.jpgCompressionQuality.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x68uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE468E0;
  v5 = unk_27CE468D0;
  *v3 = xmmword_27CE468C0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 80) = *(v3 + 24);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  v8 = sub_21D015B00();
  *(v3 + 36) = v8;
  *(v3 + 40) = BYTE4(v8) & 1;
  return sub_21D01ECD0;
}

void sub_21D01ECD0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 40);
  v6 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  *(*a1 + 44) = *(*a1 + 36);
  v3[48] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46980, &qword_21D02D0A8);
  v8 = sub_21D022B44();
  v9 = sub_21D022584();
  [v7 setObject:v8 forKey:v9];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01EDB4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE468C0) = 1065353216;
    BYTE4(xmmword_27CE468C0) = 0;
    *(&xmmword_27CE468C0 + 1) = 0xD000000000000015;
    unk_27CE468D0 = 0x800000021D030310;
    qword_27CE468D8 = v2;
    byte_27CE468E0 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$jpgCompressionQuality.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = BYTE4(xmmword_27CE468C0);
  v4 = *(&xmmword_27CE468C0 + 1);
  v3 = unk_27CE468D0;
  v8 = qword_27CE468D8;
  v5 = qword_27CE468D8;
  v6 = byte_27CE468E0;
  *a1 = xmmword_27CE468C0;
  *(a1 + 4) = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;

  return v8;
}

uint64_t sub_21D01EF64@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE468E8;
  v5[1] = unk_27CE468F8;
  v6 = byte_27CE46908;
  sub_21CF7F198(v5, &v4, &qword_27CE45260, &unk_21D0244F0);
  v2 = sub_21D0146E4();
  result = sub_21CF7F200(v5, &qword_27CE45260, &unk_21D0244F0);
  *a1 = v2;
  return result;
}

void sub_21D01F034(int *a1)
{
  v1 = *a1;
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46900;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.tLLCDelay.setter()
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46900;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.tLLCDelay.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x60uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46908;
  v5 = unk_27CE468F8;
  *v3 = xmmword_27CE468E8;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 36) = sub_21D0146E4();
  return sub_21D0205D8;
}

void sub_21D01F2B4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE468E8) = 20000;
    *(&xmmword_27CE468E8 + 1) = 0x616C6544434C4C74;
    unk_27CE468F8 = 0xE900000000000079;
    qword_27CE46900 = v2;
    byte_27CE46908 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$tLLCDelay.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE468E8 + 1);
  v2 = unk_27CE468F8;
  v7 = qword_27CE46900;
  v4 = qword_27CE46900;
  v5 = byte_27CE46908;
  *a1 = xmmword_27CE468E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01F464@<X0>(_BYTE *a1@<X8>)
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46910;
  v5[1] = unk_27CE46920;
  v6 = byte_27CE46930;
  sub_21CF7F198(v5, &v4, &qword_27CE45288, &qword_21D023970);
  v2 = sub_21D01561C();
  result = sub_21CF7F200(v5, &qword_27CE45288, &qword_21D023970);
  *a1 = v2 & 1;
  return result;
}

void sub_21D01F538(char *a1)
{
  v1 = *a1;
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46928;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.enableLLC.setter()
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46928;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.enableLLC.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x58uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46930;
  v5 = unk_27CE46920;
  *v3 = xmmword_27CE46910;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 33) = sub_21D01561C() & 1;
  return sub_21D0205CC;
}

void sub_21D01F7C0(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 64);
  *(*a1 + 34) = *(*a1 + 33);
  v7 = sub_21D022B44();
  v8 = sub_21D022584();
  [v6 setObject:v7 forKey:v8];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01F884()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LOBYTE(xmmword_27CE46910) = 0;
    *(&xmmword_27CE46910 + 1) = 0x4C4C656C62616E65;
    unk_27CE46920 = 0xE900000000000043;
    qword_27CE46928 = v2;
    byte_27CE46930 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$enableLLC.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46910 + 1);
  v2 = unk_27CE46920;
  v7 = qword_27CE46928;
  v4 = qword_27CE46928;
  v5 = byte_27CE46930;
  *a1 = xmmword_27CE46910;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t sub_21D01FA30@<X0>(_DWORD *a1@<X8>)
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5[0] = xmmword_27CE46938;
  v5[1] = unk_27CE46948;
  v6 = byte_27CE46958;
  sub_21CF7F198(v5, &v4, &qword_27CE45260, &unk_21D0244F0);
  v2 = sub_21D0146E4();
  result = sub_21CF7F200(v5, &qword_27CE45260, &unk_21D0244F0);
  *a1 = v2;
  return result;
}

void sub_21D01FB00(int *a1)
{
  v1 = *a1;
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE46950;
  v3 = sub_21D022B44();
  v4 = sub_21D022584();
  [v2 setObject:v3 forKey:v4];
  swift_endAccess();
  swift_unknownObjectRelease();
}

void static NSUserDefaults.perfMetricsMaxDepth.setter()
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE46950;
  v1 = sub_21D022B44();
  v2 = sub_21D022584();
  [v0 setObject:v1 forKey:v2];
  swift_endAccess();
  swift_unknownObjectRelease();
}

uint64_t (*static NSUserDefaults.perfMetricsMaxDepth.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x60uLL);
  }

  v3 = v2;
  *a1 = v2;
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = byte_27CE46958;
  v5 = unk_27CE46948;
  *v3 = xmmword_27CE46938;
  *(v3 + 16) = v5;
  *(v3 + 32) = v4;
  v6 = *(v3 + 16);
  v7 = *(v3 + 8);
  *(v3 + 64) = *(v3 + 24);
  *(v3 + 72) = v7;
  *(v3 + 80) = v6;
  *(v3 + 36) = sub_21D0146E4();
  return sub_21D0205D8;
}

void sub_21D01FD80(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 64);
  *(*a1 + 88) = *(*a1 + 36);
  v7 = sub_21D022B44();
  v8 = sub_21D022584();
  [v6 setObject:v7 forKey:v8];
  if (a2)
  {

    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_21D01FE48()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    LODWORD(xmmword_27CE46938) = 3;
    *(&xmmword_27CE46938 + 1) = 0xD000000000000013;
    unk_27CE46948 = 0x800000021D030450;
    qword_27CE46950 = v2;
    byte_27CE46958 = 0;
  }

  else
  {
    sub_21D022A24();
    __break(1u);
  }
}

id static NSUserDefaults.$perfMetricsMaxDepth.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CE451D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *(&xmmword_27CE46938 + 1);
  v2 = unk_27CE46948;
  v7 = qword_27CE46950;
  v4 = qword_27CE46950;
  v5 = byte_27CE46958;
  *a1 = xmmword_27CE46938;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return v7;
}

uint64_t static NSUserDefaults.privatemlClientUserDefaultsJSONString()()
{
  v0 = sub_21D0225C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_21D021834();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_21D021874();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_21D021864();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45618, &unk_21D025B00);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21D0238C0;
  sub_21D021824();
  v25[0] = v10;
  sub_21CFBEE70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45620, &qword_21D024720);
  sub_21CFB53E4();
  sub_21D022964();
  sub_21D021844();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46988, &qword_21D02D0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21D0238C0;
  *(inited + 32) = 0xD00000000000001ELL;
  *(inited + 40) = 0x800000021D030170;
  if (qword_28121E0B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = xmmword_28121B1B0;
  v27[0] = *&qword_28121B1C0;
  *(v27 + 9) = *(&qword_28121B1C8 + 1);
  sub_21CF7F198(&v26, v25, &qword_27CE45600, &qword_21D0246F8);
  v12 = sub_21D014BC8();
  v14 = v13;
  sub_21CF7F200(&v26, &qword_27CE45600, &qword_21D0246F8);
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v15 = sub_21CF9DD98(inited);
  swift_setDeallocating();
  sub_21CF7F200(inited + 32, &qword_27CE46990, &qword_21D02D0B8);
  v25[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE46998, &qword_21D02D0C0);
  sub_21D020478();
  v16 = v28;
  v17 = sub_21D021854();
  if (v16)
  {
  }

  else
  {
    v20 = v17;
    v21 = v18;

    sub_21D0225B4();
    v22 = sub_21D0225A4();
    v24 = v23;
    sub_21CF8F460(v20, v21);

    if (v24)
    {
      return v22;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }
}

void sub_21D0203AC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21D022584();
  v2 = [v0 initWithSuiteName_];

  qword_27CE46960 = v2;
}

uint64_t static NSUserDefaults.group.getter()
{
  if (qword_27CE451D8 != -1)
  {
    swift_once();
  }

  v0 = qword_27CE46960;
  v1 = qword_27CE46960;
  return v0;
}

unint64_t sub_21D020478()
{
  result = qword_27CE469A0;
  if (!qword_27CE469A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE46998, &qword_21D02D0C0);
    sub_21D020504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE469A0);
  }

  return result;
}

unint64_t sub_21D020504()
{
  result = qword_27CE469A8;
  if (!qword_27CE469A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE457D8, &qword_21D025420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE469A8);
  }

  return result;
}

uint64_t sub_21D020580(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21D020594(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21D0205A8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21D0205B8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t UserDefault.wrappedValue.getter@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 1);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v87 = &v80[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v88 = &v80[-v8];
  v10 = *(v9 + 24);
  v11 = sub_21D022924();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v80[-v15];
  v17 = *(v10 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v85 = &v80[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v80[-v22];
  MEMORY[0x28223BE20](v21);
  v89 = &v80[-v24];
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6C0 == 1 && (v91[a1[9]] & 1) == 0)
  {
    return (*(v17 + 16))(a2, v91, v10);
  }

  v86 = v23;
  v25 = v4;
  v90 = a2;
  v26 = a1[7];
  v27 = *&v91[a1[8]];
  v28 = v91;
  v29 = *&v91[v26];
  v30 = *&v91[v26 + 8];
  v31 = sub_21D022584();
  v32 = [v27 objectForKey_];

  if (!v32)
  {
    return (*(v17 + 16))(v90, v28, v10);
  }

  sub_21D022944();
  swift_unknownObjectRelease();
  sub_21CF978C0(v95, v94);
  v33 = swift_dynamicCast();
  v34 = *(v17 + 56);
  v35 = v25;
  if (v33)
  {
    v36 = v17;
    v34(v16, 0, 1, v10);
    v37 = (v17 + 32);
    v38 = *(v17 + 32);
    v39 = v89;
    v87 = v37;
    v84 = v38;
    v38(v89, v16, v10);
    v40 = v36;
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v41 = sub_21D0224A4();
    __swift_project_value_buffer(v41, qword_27CE469B0);
    v42 = v88;
    (*(v35 + 16))(v88, v91, a1);
    v91 = *(v36 + 16);
    (v91)(v86, v39, v10);
    v43 = sub_21D022484();
    v44 = sub_21D0228A4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v82 = v43;
      v46 = v45;
      v83 = swift_slowAlloc();
      v94[0] = v83;
      *v46 = 136315394;
      v47 = &v42[a1[7]];
      v81 = v44;
      v48 = *v47;
      v49 = v47[1];
      v50 = *(v35 + 8);

      v50(v42, a1);
      v51 = sub_21CF9703C(v48, v49, v94);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2080;
      v52 = v86;
      (v91)(v85, v86, v10);
      v53 = sub_21D0225D4();
      v55 = v54;
      (*(v40 + 8))(v52, v10);
      v56 = sub_21CF9703C(v53, v55, v94);

      *(v46 + 14) = v56;
      v57 = v82;
      _os_log_impl(&dword_21CF72000, v82, v81, "Using UserDefaults override. key=%s value=%s", v46, 0x16u);
      v39 = v89;
      v58 = v83;
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v58, -1, -1);
      MEMORY[0x223D3ADE0](v46, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v86, v10);
      (*(v35 + 8))(v42, a1);
    }

    __swift_destroy_boxed_opaque_existential_0(v95);
    return v84(v90, v39, v10);
  }

  else
  {
    v34(v16, 1, 1, v10);
    (*(v12 + 8))(v16, v11);
    if (qword_27CE451E0 != -1)
    {
      swift_once();
    }

    v60 = sub_21D0224A4();
    __swift_project_value_buffer(v60, qword_27CE469B0);
    v61 = v87;
    (*(v25 + 16))(v87, v91, a1);
    sub_21CF978C0(v95, v94);
    v62 = sub_21D022484();
    v63 = sub_21D0228C4();
    v64 = v17;
    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      LODWORD(v88) = v63;
      v66 = v65;
      v89 = swift_slowAlloc();
      v93 = v89;
      *v66 = 136315650;
      v67 = &v61[a1[7]];
      v68 = *v67;
      v69 = v67[1];
      v70 = *(v35 + 8);

      v70(v61, a1);
      v71 = sub_21CF9703C(v68, v69, &v93);

      *(v66 + 4) = v71;
      *(v66 + 12) = 2080;
      sub_21CF978C0(v94, v92);
      v72 = sub_21D0225D4();
      v74 = v73;
      __swift_destroy_boxed_opaque_existential_0(v94);
      v75 = sub_21CF9703C(v72, v74, &v93);

      *(v66 + 14) = v75;
      *(v66 + 22) = 2080;
      v76 = sub_21D022C74();
      v78 = sub_21CF9703C(v76, v77, &v93);

      *(v66 + 24) = v78;
      _os_log_impl(&dword_21CF72000, v62, v88, "Mismatched defaults type. key=%s value=%s type=%s", v66, 0x20u);
      v79 = v89;
      swift_arrayDestroy();
      MEMORY[0x223D3ADE0](v79, -1, -1);
      MEMORY[0x223D3ADE0](v66, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v94);
      (*(v35 + 8))(v61, a1);
    }

    __swift_destroy_boxed_opaque_existential_0(v95);
    return (*(v64 + 16))(v90, v91, v10);
  }
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_21D021344(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t UserDefault.init(key:defaultValue:container:customerBuildEnabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for UserDefault();
  v15 = (a7 + v14[7]);
  *v15 = a1;
  v15[1] = a2;
  result = (*(*(a6 - 8) + 32))(a7, a3, a6);
  *(a7 + v14[8]) = a4;
  *(a7 + v14[9]) = a5;
  return result;
}

uint64_t sub_21D020FF8()
{
  v0 = sub_21D0224A4();
  __swift_allocate_value_buffer(v0, qword_27CE469B0);
  __swift_project_value_buffer(v0, qword_27CE469B0);
  return sub_21D022494();
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_21D0211B8;
}

void sub_21D0211B8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = **a1;
  v7 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_21D021344(v3, v8);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_21D021344((*a1)[5], v8);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = (v1 + *(v0 + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = sub_21D022584();
  [v2 removeObjectForKey_];
}

uint64_t sub_21D021308(void (*a1)(void))
{
  a1();

  return sub_21D022C74();
}

void sub_21D021344(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + *(a2 + 32));
  v5 = *(a2 + 16);
  v6 = sub_21D022B14();
  v7 = (v2 + *(a2 + 28));
  v8 = *v7;
  v9 = v7[1];
  v10 = sub_21D022584();
  [v4 setObject:v6 forKey:v10];
  swift_unknownObjectRelease();
}

unint64_t sub_21D0213E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_21D0217C8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D021480(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_21D0215DC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          v18[1] = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

unint64_t sub_21D0217C8()
{
  result = qword_28121B110;
  if (!qword_28121B110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28121B110);
  }

  return result;
}