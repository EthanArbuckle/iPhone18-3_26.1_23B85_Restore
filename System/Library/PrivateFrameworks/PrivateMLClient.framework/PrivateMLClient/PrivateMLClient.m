uint64_t sub_21CF73BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_21D0224A4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21CF73D0C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_21D0224A4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF73E30()
{
  v1 = (type metadata accessor for PrivateCloudComputeTransport() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  v9 = sub_21D021BA4();
  (*(*(v9 - 8) + 8))(v8, v9);
  v10 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v11 = *(v8 + *(v10 + 20) + 8);

  v12 = *(v8 + *(v10 + 24));

  v13 = *(v8 + v1[7]);

  v14 = v1[8];
  v15 = sub_21D0224A4();
  (*(*(v15 - 8) + 8))(v8 + v14, v15);
  v16 = *(v0 + v4);

  v17 = *(v0 + v5 + 8);

  v18 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, v6 + 16, v2 | 7);
}

uint64_t sub_21CF73FC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_21CF73FE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CF7404C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CF740CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_21D021C54();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3, 1, v7))
  {
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v0 + v9);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_21CF74208()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  if (v0[4])
  {
    v2 = v0[5];
  }

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21CF74258()
{
  v1 = sub_21D021C24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for PrivateMLClientInputServiceRequestAsyncSequence(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_21CF743BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CF74434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A0, &qword_21D023938);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CF744EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21CF74534()
{
  v1 = *(v0 + 8);
  if (v1 >= 7)
  {
    return 2;
  }

  else
  {
    return v1 + 3;
  }
}

uint64_t sub_21CF74550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 72);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 88);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_21CF74698(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 88);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21CF747DC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21CF7487C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021A74();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_21D022774();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 104);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_21CF749A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021A74();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_21D022774();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 104);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF74ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PrivateMLRequest(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_21CF74BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE453A8, &qword_21D023940);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PrivateMLRequest(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_21CF74CD0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D0224A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for PrivateMLRequest(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D0, &qword_21D0246B0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 24);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_21CF74E34(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D0224A4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for PrivateMLRequest(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D0, &qword_21D0246B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 24) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CF74FB8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21CF75074(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE45738, &qword_21D0253D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_21CF75150@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_21CF75168@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21CF75298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21D021CE4();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_21CF752DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21CF75410(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45A68, &unk_21D026440);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21D021CF4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t _s15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigV16LLMPreprocessingOwet_0(uint64_t a1, int a2)
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

uint64_t _s15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigV16LLMPreprocessingOwst_0(uint64_t result, int a2, int a3)
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

uint64_t sub_21CF75584(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21CF755A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_21CF755C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21CF75698(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21CF75750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_21CF75828(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 2;
  }

  return result;
}

uint64_t sub_21CF75960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21CF75A88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45538, &qword_21D024220);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21D021CF4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CF75BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_21D021CF4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_21CF75C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_21D021CF4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_21CF75CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21CF75E04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF75F60(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_21D021CF4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[20]];

  return v15(v16, a2, v14);
}

char *sub_21CF760E4(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_21D021CF4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452D8, "ҷ");
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[20]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_21CF762C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[9] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[10];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_21CF76460(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21D021CF4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[9] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[10];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21CF765F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21D021CF4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_21CF76730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21D021CF4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455F0, &unk_21D026C00);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_21CF76864(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_21CF76A00(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E0, &qword_21D0246C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_21D021CF4();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455E8, &unk_21D0246D0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_21CF76BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_21D021CF4();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_21CF76CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE455D8, &qword_21D0246C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_21D021CF4();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21CF76E2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 20);
  return sub_21D021CE4();
}

uint64_t sub_21CF76FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D0224A4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21CF77014(uint64_t a1, uint64_t a2)
{
  v4 = sub_21D0224A4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21CF77084()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_21D0224A4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v4 + 8);

  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v2 | 7);
}

uint64_t sub_21CF77194()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21D0224A4();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CF77260()
{
  v1 = *(type metadata accessor for PrivateMLClientAlertService() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + 32);

  v7 = sub_21D0224A4();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21CF7733C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21CF77448@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = type metadata accessor for UserDefault();
  return UserDefault.wrappedValue.getter(v5, a3);
}

void sub_21CF77484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for UserDefault();
  sub_21D021344(a1, v6);
}

uint64_t sub_21CF774DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for CFString()
{
  if (!qword_27CE451E8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27CE451E8);
    }
  }
}

uint64_t sub_21CF7756C(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  v161 = a4;
  v162 = a3;
  v166 = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570);
  v156 = *(v169 - 8);
  v5 = *(v156 + 64);
  v6 = MEMORY[0x28223BE20](v169);
  v158 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v164 = &v146 - v9;
  MEMORY[0x28223BE20](v8);
  v155 = (&v146 - v10);
  v171 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  v170 = *(v171 - 8);
  v11 = *(v170 + 64);
  v12 = MEMORY[0x28223BE20](v171);
  v172 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v165 = &v146 - v15;
  MEMORY[0x28223BE20](v14);
  v154 = (&v146 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v153 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v167 = &v146 - v21;
  v163 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v160 = *(v163 - 8);
  v22 = *(v160 + 64);
  MEMORY[0x28223BE20](v163);
  v152 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45238, &unk_21D023550);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v151 = &v146 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v150 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v157 = &v146 - v31;
  v32 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x28223BE20](v32);
  v148 = (&v146 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v35);
  v38 = (&v146 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v147 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v149 = &v146 - v44;
  MEMORY[0x28223BE20](v43);
  v46 = &v146 - v45;
  v47 = *(a2 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0) + 20));
  v48 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  sub_21CF7F198(v47 + v48, v46, &qword_27CE45230, &qword_21D02CC30);
  v49 = *(v33 + 48);
  v168 = v32;
  LODWORD(v32) = v49(v46, 1, v32);
  sub_21CF7F200(v46, &qword_27CE45230, &qword_21D02CC30);
  if (v32 != 1)
  {
    v146 = v48;
    v50 = v47 + v48;
    v51 = v149;
    sub_21CF7F198(v50, v149, &qword_27CE45230, &qword_21D02CC30);
    if (v49(v51, 1, v168) == 1)
    {
      *v38 = MEMORY[0x277D84F90];
      v52 = v168;
      v53 = v38 + *(v168 + 20);
      sub_21D021CE4();
      v54 = v38 + v52[6];
      *v54 = 0;
      v54[4] = 1;
      v55 = v38 + v52[7];
      *v55 = 0;
      v55[4] = 1;
      v56 = v38 + v52[8];
      *v56 = 0;
      v56[8] = 1;
      v57 = v38 + v52[9];
      *v57 = 0;
      v57[8] = 1;
      v58 = v38 + v52[10];
      *v58 = 0;
      v58[8] = 1;
      v59 = v38 + v52[11];
      *v59 = 0;
      v59[8] = 1;
      v60 = v38 + v52[12];
      *v60 = 0;
      v60[8] = 1;
      v61 = v49;
      if (v49(v51, 1, v52) != 1)
      {
        sub_21CF7F200(v51, &qword_27CE45230, &qword_21D02CC30);
      }
    }

    else
    {
      v61 = v49;
      sub_21CF7F3B0(v51, v38, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    }

    v62 = *(v38 + *(v168 + 24) + 4);
    sub_21CF7F350(v38, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    if ((v62 & 1) == 0)
    {
      v63 = v61;
      v64 = v147;
      sub_21CF7F198(v47 + v146, v147, &qword_27CE45230, &qword_21D02CC30);
      if (v63(v64, 1, v168) == 1)
      {
        v65 = v148;
        *v148 = MEMORY[0x277D84F90];
        v66 = v168;
        v67 = v65 + *(v168 + 20);
        sub_21D021CE4();
        v68 = v65 + v66[6];
        *v68 = 0;
        v68[4] = 1;
        v69 = v65 + v66[7];
        *v69 = 0;
        v69[4] = 1;
        v70 = v65 + v66[8];
        *v70 = 0;
        v70[8] = 1;
        v71 = v65 + v66[9];
        *v71 = 0;
        v71[8] = 1;
        v72 = v65 + v66[10];
        *v72 = 0;
        v72[8] = 1;
        v73 = v65 + v66[11];
        *v73 = 0;
        v73[8] = 1;
        v74 = v65 + v66[12];
        *v74 = 0;
        v74[8] = 1;
        if (v63(v64, 1, v66) != 1)
        {
          sub_21CF7F200(v64, &qword_27CE45230, &qword_21D02CC30);
        }
      }

      else
      {
        v65 = v148;
        sub_21CF7F3B0(v64, v148, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
      }

      v75 = (v65 + *(v168 + 24));
      v76 = *v75;
      v77 = *(v75 + 4);
      sub_21CF7F350(v65, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
      if (v77)
      {
        v78 = 0;
      }

      else
      {
        v78 = v76;
      }

      MEMORY[0x223D39D40](v78, 0);
    }
  }

  v79 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  v80 = v157;
  sub_21CF7F198(v47 + v79, v157, &qword_27CE45250, &qword_21D02CC40);
  v81 = v47;
  v82 = *(v160 + 48);
  v83 = v163;
  v84 = v82(v80, 1, v163);
  sub_21CF7F200(v80, &qword_27CE45250, &qword_21D02CC40);
  if (v84 == 1)
  {
    v85 = v171;
    v86 = v81;
  }

  else
  {
    v87 = v150;
    sub_21CF7F198(v81 + v79, v150, &qword_27CE45250, &qword_21D02CC40);
    v88 = v82(v87, 1, v83);
    v85 = v171;
    if (v88 == 1)
    {
      v89 = v152;
      sub_21D021CE4();
      v90 = v89 + v83[5];
      *v90 = 0;
      *(v90 + 4) = 1;
      v91 = v89 + v83[6];
      *v91 = 0;
      *(v91 + 4) = 1;
      v92 = v89 + v83[7];
      *v92 = 0;
      *(v92 + 4) = 1;
      v93 = v89 + v83[8];
      *v93 = 0;
      *(v93 + 4) = 1;
      v94 = v89 + v83[9];
      *v94 = 0;
      *(v94 + 4) = 1;
      v95 = v89 + v83[10];
      *v95 = 0;
      *(v95 + 8) = 1;
      v96 = v89 + v83[11];
      *v96 = 0;
      *(v96 + 8) = 1;
      v97 = v89 + v83[12];
      *v97 = 0;
      *(v97 + 4) = 1;
      if (v82(v87, 1, v83) != 1)
      {
        sub_21CF7F200(v87, &qword_27CE45250, &qword_21D02CC40);
      }
    }

    else
    {
      v89 = v152;
      sub_21CF7F3B0(v87, v152, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    }

    v98 = sub_21D022264();
    MEMORY[0x28223BE20](v98);
    *(&v146 - 2) = v89;
    v99 = v151;
    v100 = v159;
    sub_21D0223B4();
    v159 = v100;
    sub_21CF7F350(v89, type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics);
    (*(*(v98 - 8) + 56))(v99, 0, 1, v98);
    sub_21D022154();
    v86 = v81;
  }

  v101 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
  swift_beginAccess();
  v102 = v167;
  sub_21CF7F198(v86 + v101, v167, &qword_27CE45248, &unk_21D023560);
  v103 = *(v170 + 48);
  v104 = (v103)(v102, 1, v85);
  result = sub_21CF7F200(v102, &qword_27CE45248, &unk_21D023560);
  if (v104 == 1)
  {
    return result;
  }

  v106 = v174;
  if (qword_27CE451D0 != -1)
  {
LABEL_76:
    swift_once();
  }

  swift_beginAccess();
  v107 = unk_27CE46948;
  *v106 = xmmword_27CE46938;
  v106[1] = v107;
  v174[32] = byte_27CE46958;
  sub_21CF7F198(v174, v173, &qword_27CE45260, &unk_21D0244F0);
  v108 = sub_21D0146E4();
  sub_21CF7F200(v174, &qword_27CE45260, &unk_21D0244F0);
  v109 = v86 + v101;
  v110 = v153;
  sub_21CF7F198(v109, v153, &qword_27CE45248, &unk_21D023560);
  if ((v103)(v110, 1, v85) == 1)
  {
    v111 = v154;
    *v154 = MEMORY[0x277D84F90];
    v112 = v111 + *(v85 + 20);
    sub_21D021CE4();
    v113 = (v111 + *(v85 + 24));
    *v113 = 0;
    v113[1] = 0;
    v114 = v111 + *(v85 + 28);
    *v114 = 0;
    v114[8] = 1;
    v115 = (v103)(v110, 1, v85);
    v103 = v165;
    if (v115 != 1)
    {
      sub_21CF7F200(v110, &qword_27CE45248, &unk_21D023560);
    }
  }

  else
  {
    v111 = v154;
    sub_21CF7F3B0(v110, v154, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v103 = v165;
  }

  v116 = *(v169 + 48);
  v86 = v155;
  sub_21CF7F3B0(v111, v155, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
  *(v86 + v116) = 0.0;
  v117 = sub_21CFB493C(0, 1, 1, MEMORY[0x277D84F90]);
  v119 = v117[2];
  v118 = v117[3];
  v106 = (v119 + 1);
  if (v119 >= v118 >> 1)
  {
    v117 = sub_21CFB493C(v118 > 1, v119 + 1, 1, v117);
  }

  v117[2] = v106;
  v168 = (*(v156 + 80) + 32) & ~*(v156 + 80);
  v167 = *(v156 + 72);
  sub_21CF7F260(v86, v117 + v168 + v167 * v119);
  v101 = 0x800000021D02D410;
  v160 = v108;
  v120 = v117[2];
  v163 = 0x800000021D02D410;
  while (2)
  {
    if (!v120)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v121 = v120 - 1;
    v122 = v117 + v168 + v121 * v167;
    v117[2] = v121;
    v123 = v164;
    sub_21CF7F260(v122, v164);
    v86 = *(v123 + *(v169 + 48));
    sub_21CF7F3B0(v123, v103, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v124 = (v103 + *(v85 + 24));
    v125 = v124[1];
    if (!v125)
    {
      v106 = 0xE000000000000000;
LABEL_40:
      v101 = sub_21D022B24();

      if ((v101 & 1) == 0)
      {
        if (v86 <= v160)
        {
          v127 = *(*v103 + 16);
          if (v127)
          {
            v86 = (v86 + 1);
            v128 = *v103 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
            v129 = *(v170 + 72);
            v130 = v158;
            do
            {
              v131 = *(v169 + 48);
              sub_21CF7F2D0(v128, v130);
              *(v130 + v131) = v86;
              v133 = v117[2];
              v132 = v117[3];
              v106 = (v133 + 1);
              if (v133 >= v132 >> 1)
              {
                v117 = sub_21CFB493C(v132 > 1, v133 + 1, 1, v117);
                v130 = v158;
              }

              v117[2] = v106;
              sub_21CF7F260(v130, v117 + v168 + v133 * v167);
              v128 += v129;
              --v127;
            }

            while (v127);
          }
        }

        goto LABEL_31;
      }

      goto LABEL_49;
    }

    if (v101 != v125 || *v124 != 0xD00000000000001FLL)
    {
      v106 = v124[1];
      goto LABEL_40;
    }

LABEL_49:
    v134 = v103 + *(v85 + 28);
    if (*(v134 + 8))
    {
      v135 = 0.0;
    }

    else
    {
      v135 = *v134 / 1000000.0;
    }

    MEMORY[0x223D39D70](*&v135, 0);
    v85 = *v103;
    v106 = *(*v103 + 16);
    if (!v106)
    {
      goto LABEL_69;
    }

    v103 = 0;
    v86 = (v85 + ((*(v170 + 80) + 32) & ~*(v170 + 80)));
    while (1)
    {
      if (v103 >= *(v85 + 16))
      {
        __break(1u);
        goto LABEL_75;
      }

      v136 = v172;
      sub_21CF7F2D0(v86 + *(v170 + 72) * v103, v172);
      v137 = (v136 + *(v171 + 24));
      v138 = v137[1];
      if (v138)
      {
        break;
      }

      v101 = 0xE000000000000000;
LABEL_62:
      v140 = sub_21D022B24();

      if (v140)
      {
        goto LABEL_66;
      }

      ++v103;
      sub_21CF7F350(v172, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
      if (v106 == v103)
      {
        goto LABEL_69;
      }
    }

    if (0x800000021D02D430 != v138 || *v137 != 0xD000000000000017)
    {
      v101 = v137[1];
      goto LABEL_62;
    }

LABEL_66:
    v141 = v172 + *(v171 + 28);
    v142 = *(v141 + 8);
    v143 = *v141;
    sub_21CF7F350(v172, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v144 = v143 / 1000000.0;
    if (v142)
    {
      v144 = 0.0;
    }

    *v162 = v144;
LABEL_69:
    v86 = v162;
    v145 = v161;
    *v161 = v135 - *v162;
    MEMORY[0x223D39D50](v106, 0);
    MEMORY[0x223D39D90](*v86, 0);
    MEMORY[0x223D39D80](*v145, 0);
    if (v106 >= 2 && *v145 > 0.0)
    {
      (MEMORY[0x223D39E50])((v106 - 1) * 1000.0 / *v145, 0);
    }

LABEL_31:
    v103 = v165;
    sub_21CF7F350(v165, type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics);
    v120 = v117[2];
    v85 = v171;
    v101 = v163;
    if (v120)
    {
      continue;
    }
  }
}

uint64_t sub_21CF788A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45210, &qword_21D023528);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18[-v7];
  v9 = sub_21D0220F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_21D022124();
  v19 = a2;
  sub_21D0223B4();
  sub_21D022104();
  v11 = sub_21D022394();
  v12 = swift_allocBox();
  (*(*(v11 - 8) + 16))(v13, a3, v11);
  *v8 = v12;
  v14 = *MEMORY[0x277D20C68];
  v15 = sub_21D0223A4();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v8, v14, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  return sub_21D022114();
}

uint64_t sub_21CF78B38(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  v4 = result;
  v5 = (a2 + *(result + 20));
  if ((v5[1] & 1) == 0)
  {
    v6 = *v5;
    result = sub_21D022174();
  }

  v7 = (a2 + v4[6]);
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    result = sub_21D0221F4();
  }

  v9 = (a2 + v4[7]);
  if ((v9[1] & 1) == 0)
  {
    result = MEMORY[0x223D39CE0](*v9);
  }

  v10 = (a2 + v4[8]);
  if ((v10[1] & 1) == 0)
  {
    v11 = *v10;
    result = sub_21D0221B4();
  }

  v12 = (a2 + v4[9]);
  if ((v12[1] & 1) == 0)
  {
    v13 = *v12;
    result = sub_21D0221D4();
  }

  v14 = a2 + v4[10];
  if ((*(v14 + 8) & 1) == 0)
  {
    result = MEMORY[0x223D39D00](*v14, 0);
  }

  v15 = a2 + v4[11];
  if ((*(v15 + 8) & 1) == 0)
  {
    result = MEMORY[0x223D39D20](*v15, 0);
  }

  v16 = (a2 + v4[12]);
  if ((v16[1] & 1) == 0)
  {
    return MEMORY[0x223D39C60](*v16, 0);
  }

  return result;
}

uint64_t sub_21CF78C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45210, &qword_21D023528);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16[-v7];
  v9 = sub_21D0220F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_21D022124();
  v18 = a2;
  sub_21D0223B4();
  sub_21D022104();
  sub_21D022394();
  v11 = swift_allocBox();
  v17 = a3;
  sub_21D0223B4();
  *v8 = v11;
  v12 = *MEMORY[0x277D20C68];
  v13 = sub_21D0223A4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v8, v12, v13);
  (*(v14 + 56))(v8, 0, 1, v13);
  return sub_21D022114();
}

uint64_t sub_21CF78EB4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_21D021A74();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_21D0220E4();
}

uint64_t sub_21CF78FC0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45218, &qword_21D023530);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9[-v5];
  v7 = sub_21D022354();
  v10 = a2;
  sub_21D0223B4();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return sub_21D022364();
}

uint64_t sub_21CF790DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45220, &qword_21D023538);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v107 = &v96 - v6;
  v110 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v7 = *(v110 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v110);
  v103 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v101 = &v96 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v99 = &v96 - v14;
  MEMORY[0x28223BE20](v13);
  v97 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v102 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v106 = &v96 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v96 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v105 = &v96 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v98 = &v96 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v104 = &v96 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v96 = &v96 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v96 - v32;
  v34 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v35 = *(v34 + 36);
  v109 = a2;
  v36 = (a2 + v35);
  if (v36[1])
  {
    v37 = *v36;
    v38 = v36[1];

    sub_21D022314();
  }

  v108 = a1;
  v111 = v34;
  v39 = *(v34 + 20);
  v40 = v109;
  sub_21CF7F198(v109 + v39, v33, &qword_27CE45208, &qword_21D023520);
  v41 = *(v7 + 48);
  v42 = v110;
  v43 = v41(v33, 1, v110);
  sub_21CF7F200(v33, &qword_27CE45208, &qword_21D023520);
  if (v43 == 1)
  {
    v44 = v41;
    v45 = v40;
    v46 = v111;
  }

  else
  {
    v47 = v96;
    sub_21CF7F198(v40 + v39, v96, &qword_27CE45208, &qword_21D023520);
    if (v41(v47, 1, v42) == 1)
    {
      v48 = v97;
      sub_21D021CE4();
      v49 = (v48 + *(v42 + 20));
      *v49 = 0;
      v49[1] = 0;
      v50 = (v48 + *(v42 + 24));
      *v50 = 0;
      v50[1] = 0;
      v44 = v41;
      v51 = v41(v47, 1, v42);
      v52 = v112;
      v46 = v111;
      if (v51 != 1)
      {
        sub_21CF7F200(v47, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v44 = v41;
      v48 = v97;
      sub_21CF7F3B0(v47, v97, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      v52 = v112;
      v46 = v111;
    }

    v53 = *(v48 + *(v110 + 20) + 8);
    sub_21CF7F350(v48, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v53)
    {
      v54 = sub_21D0222F4();
      MEMORY[0x28223BE20](v54);
      v45 = v109;
      *(&v96 - 2) = v109;
      v55 = v107;
      sub_21D0223B4();
      v112 = v52;
      (*(*(v54 - 8) + 56))(v55, 0, 1, v54);
      sub_21D022334();
    }

    else
    {
      v45 = v109;
    }
  }

  v56 = *(v46 + 24);
  v57 = v104;
  sub_21CF7F198(v45 + v56, v104, &qword_27CE45208, &qword_21D023520);
  v58 = v110;
  v59 = v44(v57, 1, v110);
  sub_21CF7F200(v57, &qword_27CE45208, &qword_21D023520);
  if (v59 == 1)
  {
    v60 = v44;
    v61 = v111;
  }

  else
  {
    v62 = v98;
    sub_21CF7F198(v45 + v56, v98, &qword_27CE45208, &qword_21D023520);
    v60 = v44;
    if (v44(v62, 1, v58) == 1)
    {
      v63 = v99;
      sub_21D021CE4();
      v64 = (v63 + *(v58 + 20));
      *v64 = 0;
      v64[1] = 0;
      v65 = (v63 + *(v58 + 24));
      *v65 = 0;
      v65[1] = 0;
      v66 = v44(v62, 1, v58);
      v61 = v111;
      if (v66 != 1)
      {
        sub_21CF7F200(v62, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v63 = v99;
      sub_21CF7F3B0(v62, v99, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      v61 = v111;
    }

    v67 = *(v63 + *(v58 + 20) + 8);
    sub_21CF7F350(v63, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v67)
    {
      v68 = sub_21D0222F4();
      MEMORY[0x28223BE20](v68);
      *(&v96 - 2) = v45;
      v69 = v107;
      v70 = v112;
      sub_21D0223B4();
      v112 = v70;
      (*(*(v68 - 8) + 56))(v69, 0, 1, v68);
      sub_21D022324();
    }
  }

  v71 = *(v61 + 32);
  v72 = v105;
  sub_21CF7F198(v45 + v71, v105, &qword_27CE45208, &qword_21D023520);
  v73 = v60(v72, 1, v58);
  sub_21CF7F200(v72, &qword_27CE45208, &qword_21D023520);
  if (v73 == 1)
  {
    v74 = v111;
  }

  else
  {
    v75 = v100;
    sub_21CF7F198(v45 + v71, v100, &qword_27CE45208, &qword_21D023520);
    if (v60(v75, 1, v58) == 1)
    {
      v76 = v101;
      sub_21D021CE4();
      v77 = (v76 + *(v58 + 20));
      *v77 = 0;
      v77[1] = 0;
      v78 = (v76 + *(v58 + 24));
      *v78 = 0;
      v78[1] = 0;
      if (v60(v75, 1, v58) != 1)
      {
        sub_21CF7F200(v75, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v76 = v101;
      sub_21CF7F3B0(v75, v101, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v79 = *(v76 + *(v58 + 20) + 8);
    sub_21CF7F350(v76, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v45 = v109;
    v74 = v111;
    if (v79)
    {
      v80 = sub_21D0222F4();
      MEMORY[0x28223BE20](v80);
      *(&v96 - 2) = v45;
      v81 = v107;
      v82 = v112;
      sub_21D0223B4();
      v112 = v82;
      (*(*(v80 - 8) + 56))(v81, 0, 1, v80);
      sub_21D022344();
    }
  }

  v83 = *(v74 + 28);
  v84 = v45 + v83;
  v85 = v45;
  v86 = v106;
  sub_21CF7F198(v84, v106, &qword_27CE45208, &qword_21D023520);
  v87 = v60(v86, 1, v58);
  result = sub_21CF7F200(v86, &qword_27CE45208, &qword_21D023520);
  if (v87 != 1)
  {
    v89 = v102;
    sub_21CF7F198(v85 + v83, v102, &qword_27CE45208, &qword_21D023520);
    if (v60(v89, 1, v58) == 1)
    {
      v90 = v103;
      sub_21D021CE4();
      v91 = (v90 + *(v58 + 20));
      *v91 = 0;
      v91[1] = 0;
      v92 = (v90 + *(v58 + 24));
      *v92 = 0;
      v92[1] = 0;
      if (v60(v89, 1, v58) != 1)
      {
        sub_21CF7F200(v89, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v90 = v103;
      sub_21CF7F3B0(v89, v103, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v93 = *(v90 + *(v58 + 20) + 8);
    result = sub_21CF7F350(v90, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v93)
    {
      v94 = sub_21D0222F4();
      MEMORY[0x28223BE20](v94);
      *(&v96 - 2) = v85;
      v95 = v107;
      sub_21D0223B4();
      (*(*(v94 - 8) + 56))(v95, 0, 1, v94);
      return sub_21D022304();
    }
  }

  return result;
}

uint64_t sub_21CF79CAC(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 20);
  v45 = a2;
  sub_21CF7F198(a2 + v44, v11, &qword_27CE45208, &qword_21D023520);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    sub_21D021CE4();
    v23 = &v21[*(v12 + 20)];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v21[*(v12 + 24)];
    *v24 = 0;
    *(v24 + 1) = 0;
    if (v22(v11, 1, v12) != 1)
    {
      sub_21CF7F200(v11, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v11, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v25 = &v21[*(v12 + 20)];
  v26 = *v25;
  v27 = *(v25 + 1);

  sub_21CF7F350(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v29 = v44;
  v28 = v45;
  sub_21CF7F198(v45 + v44, v9, &qword_27CE45208, &qword_21D023520);
  if (v22(v9, 1, v12) == 1)
  {
    sub_21D021CE4();
    v30 = &v19[*(v12 + 20)];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v19[*(v12 + 24)];
    *v31 = 0;
    *(v31 + 1) = 0;
    if (v22(v9, 1, v12) != 1)
    {
      sub_21CF7F200(v9, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v9, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v32 = *&v19[*(v12 + 24) + 8];
  result = sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v32)
  {
    v34 = v43;
    sub_21CF7F198(v28 + v29, v43, &qword_27CE45208, &qword_21D023520);
    if (v22(v34, 1, v12) == 1)
    {
      v35 = v42;
      sub_21D021CE4();
      v36 = (v35 + *(v12 + 20));
      *v36 = 0;
      v36[1] = 0;
      v37 = (v35 + *(v12 + 24));
      *v37 = 0;
      v37[1] = 0;
      if (v22(v34, 1, v12) != 1)
      {
        sub_21CF7F200(v34, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v35 = v42;
      sub_21CF7F3B0(v34, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v38 = (v35 + *(v12 + 24));
    v40 = *v38;
    v39 = v38[1];

    sub_21CF7F350(v35, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7A154(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 24);
  v45 = a2;
  sub_21CF7F198(a2 + v44, v11, &qword_27CE45208, &qword_21D023520);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    sub_21D021CE4();
    v23 = &v21[*(v12 + 20)];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v21[*(v12 + 24)];
    *v24 = 0;
    *(v24 + 1) = 0;
    if (v22(v11, 1, v12) != 1)
    {
      sub_21CF7F200(v11, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v11, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v25 = &v21[*(v12 + 20)];
  v26 = *v25;
  v27 = *(v25 + 1);

  sub_21CF7F350(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v29 = v44;
  v28 = v45;
  sub_21CF7F198(v45 + v44, v9, &qword_27CE45208, &qword_21D023520);
  if (v22(v9, 1, v12) == 1)
  {
    sub_21D021CE4();
    v30 = &v19[*(v12 + 20)];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v19[*(v12 + 24)];
    *v31 = 0;
    *(v31 + 1) = 0;
    if (v22(v9, 1, v12) != 1)
    {
      sub_21CF7F200(v9, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v9, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v32 = *&v19[*(v12 + 24) + 8];
  result = sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v32)
  {
    v34 = v43;
    sub_21CF7F198(v28 + v29, v43, &qword_27CE45208, &qword_21D023520);
    if (v22(v34, 1, v12) == 1)
    {
      v35 = v42;
      sub_21D021CE4();
      v36 = (v35 + *(v12 + 20));
      *v36 = 0;
      v36[1] = 0;
      v37 = (v35 + *(v12 + 24));
      *v37 = 0;
      v37[1] = 0;
      if (v22(v34, 1, v12) != 1)
      {
        sub_21CF7F200(v34, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v35 = v42;
      sub_21CF7F3B0(v34, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v38 = (v35 + *(v12 + 24));
    v40 = *v38;
    v39 = v38[1];

    sub_21CF7F350(v35, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7A5FC(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 32);
  v45 = a2;
  sub_21CF7F198(a2 + v44, v11, &qword_27CE45208, &qword_21D023520);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    sub_21D021CE4();
    v23 = &v21[*(v12 + 20)];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v21[*(v12 + 24)];
    *v24 = 0;
    *(v24 + 1) = 0;
    if (v22(v11, 1, v12) != 1)
    {
      sub_21CF7F200(v11, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v11, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v25 = &v21[*(v12 + 20)];
  v26 = *v25;
  v27 = *(v25 + 1);

  sub_21CF7F350(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v29 = v44;
  v28 = v45;
  sub_21CF7F198(v45 + v44, v9, &qword_27CE45208, &qword_21D023520);
  if (v22(v9, 1, v12) == 1)
  {
    sub_21D021CE4();
    v30 = &v19[*(v12 + 20)];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v19[*(v12 + 24)];
    *v31 = 0;
    *(v31 + 1) = 0;
    if (v22(v9, 1, v12) != 1)
    {
      sub_21CF7F200(v9, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v9, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v32 = *&v19[*(v12 + 24) + 8];
  result = sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v32)
  {
    v34 = v43;
    sub_21CF7F198(v28 + v29, v43, &qword_27CE45208, &qword_21D023520);
    if (v22(v34, 1, v12) == 1)
    {
      v35 = v42;
      sub_21D021CE4();
      v36 = (v35 + *(v12 + 20));
      *v36 = 0;
      v36[1] = 0;
      v37 = (v35 + *(v12 + 24));
      *v37 = 0;
      v37[1] = 0;
      if (v22(v34, 1, v12) != 1)
      {
        sub_21CF7F200(v34, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v35 = v42;
      sub_21CF7F3B0(v34, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v38 = (v35 + *(v12 + 24));
    v40 = *v38;
    v39 = v38[1];

    sub_21CF7F350(v35, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7AAA4(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v43 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v12 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v44 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 28);
  v45 = a2;
  sub_21CF7F198(a2 + v44, v11, &qword_27CE45208, &qword_21D023520);
  v22 = *(v13 + 48);
  if (v22(v11, 1, v12) == 1)
  {
    sub_21D021CE4();
    v23 = &v21[*(v12 + 20)];
    *v23 = 0;
    *(v23 + 1) = 0;
    v24 = &v21[*(v12 + 24)];
    *v24 = 0;
    *(v24 + 1) = 0;
    if (v22(v11, 1, v12) != 1)
    {
      sub_21CF7F200(v11, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v11, v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v25 = &v21[*(v12 + 20)];
  v26 = *v25;
  v27 = *(v25 + 1);

  sub_21CF7F350(v21, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  sub_21D0222D4();
  v29 = v44;
  v28 = v45;
  sub_21CF7F198(v45 + v44, v9, &qword_27CE45208, &qword_21D023520);
  if (v22(v9, 1, v12) == 1)
  {
    sub_21D021CE4();
    v30 = &v19[*(v12 + 20)];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v19[*(v12 + 24)];
    *v31 = 0;
    *(v31 + 1) = 0;
    if (v22(v9, 1, v12) != 1)
    {
      sub_21CF7F200(v9, &qword_27CE45208, &qword_21D023520);
    }
  }

  else
  {
    sub_21CF7F3B0(v9, v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  }

  v32 = *&v19[*(v12 + 24) + 8];
  result = sub_21CF7F350(v19, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
  if (v32)
  {
    v34 = v43;
    sub_21CF7F198(v28 + v29, v43, &qword_27CE45208, &qword_21D023520);
    if (v22(v34, 1, v12) == 1)
    {
      v35 = v42;
      sub_21D021CE4();
      v36 = (v35 + *(v12 + 20));
      *v36 = 0;
      v36[1] = 0;
      v37 = (v35 + *(v12 + 24));
      *v37 = 0;
      v37[1] = 0;
      if (v22(v34, 1, v12) != 1)
      {
        sub_21CF7F200(v34, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v35 = v42;
      sub_21CF7F3B0(v34, v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v38 = (v35 + *(v12 + 24));
    v40 = *v38;
    v39 = v38[1];

    sub_21CF7F350(v35, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    return sub_21D0222E4();
  }

  return result;
}

uint64_t sub_21CF7AF4C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo(0);
  v331 = *(v4 - 8);
  v5 = *(v331 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v293 = &v286 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v305 = &v286 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v304 = &v286 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v317 = &v286 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v325 = &v286 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v291 = &v286 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v301 = &v286 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v300 = &v286 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v315 = &v286 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v323 = &v286 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v289 = &v286 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v298 = &v286 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v312 = &v286 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v311 = &v286 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v321 = &v286 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v287 = &v286 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v308 = &v286 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v296 = &v286 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v307 = &v286 - v43;
  MEMORY[0x28223BE20](v42);
  v319 = &v286 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45208, &qword_21D023520);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v292 = &v286 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v303 = &v286 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v302 = &v286 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v316 = &v286 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v324 = &v286 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v328 = &v286 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v290 = &v286 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v299 = &v286 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v314 = &v286 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v313 = &v286 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v322 = &v286 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v327 = &v286 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v288 = &v286 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v297 = &v286 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v310 = &v286 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v309 = &v286 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v320 = &v286 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v326 = &v286 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v286 = &v286 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v295 = &v286 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v294 = &v286 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v306 = &v286 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v318 = &v286 - v92;
  MEMORY[0x28223BE20](v91);
  v94 = &v286 - v93;
  v332 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0);
  v95 = v332[9];
  v330 = a2;
  v96 = (a2 + v95);
  v97 = v96[1];
  if (v97)
  {
    v98 = *v96;
    v99 = a1[1];
    v100 = v96[1];

    *a1 = v98;
    a1[1] = v97;
  }

  v101 = v332[5];
  v102 = v330;
  sub_21CF7F198(v330 + v101, v94, &qword_27CE45208, &qword_21D023520);
  v103 = *(v331 + 6);
  v104 = v103(v94, 1, v4);
  v329 = a1;
  v105 = v104;
  sub_21CF7F200(v94, &qword_27CE45208, &qword_21D023520);
  v331 = v103;
  if (v105 != 1)
  {
    v106 = v101;
    v107 = v318;
    sub_21CF7F198(v102 + v101, v318, &qword_27CE45208, &qword_21D023520);
    if (v103(v107, 1, v4) == 1)
    {
      v108 = v319;
      sub_21D021CE4();
      v109 = (v108 + *(v4 + 20));
      *v109 = 0;
      v109[1] = 0;
      v110 = (v108 + *(v4 + 24));
      *v110 = 0;
      v110[1] = 0;
      if (v103(v107, 1, v4) != 1)
      {
        sub_21CF7F200(v107, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v108 = v319;
      sub_21CF7F3B0(v107, v319, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v111 = *(v108 + *(v4 + 20) + 8);
    sub_21CF7F350(v108, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v102 = v330;
    v103 = v331;
    if (v111)
    {
      v112 = v306;
      sub_21CF7F198(v330 + v106, v306, &qword_27CE45208, &qword_21D023520);
      if (v103(v112, 1, v4) == 1)
      {
        v113 = v307;
        sub_21D021CE4();
        v114 = (v113 + *(v4 + 20));
        *v114 = 0;
        v114[1] = 0;
        v115 = (v113 + *(v4 + 24));
        *v115 = 0;
        v115[1] = 0;
        v116 = v103(v112, 1, v4);
        v117 = v308;
        if (v116 != 1)
        {
          sub_21CF7F200(v112, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v113 = v307;
        sub_21CF7F3B0(v112, v307, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        v117 = v308;
      }

      v118 = *(v113 + *(v4 + 24) + 8);
      sub_21CF7F350(v113, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v118)
      {
        v119 = v330;
        v120 = v294;
        sub_21CF7F198(v330 + v106, v294, &qword_27CE45208, &qword_21D023520);
        if (v103(v120, 1, v4) == 1)
        {
          v121 = v296;
          sub_21D021CE4();
          v122 = (v121 + *(v4 + 20));
          *v122 = 0;
          v122[1] = 0;
          v123 = (v121 + *(v4 + 24));
          *v123 = 0;
          v123[1] = 0;
          if (v103(v120, 1, v4) != 1)
          {
            sub_21CF7F200(v120, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v121 = v296;
          sub_21CF7F3B0(v120, v296, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v128 = (v121 + *(v4 + 20));
        v129 = v121;
        v131 = *v128;
        v130 = v128[1];

        sub_21CF7F350(v129, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v130)
        {
          v132 = v130;
        }

        else
        {
          v131 = 0;
          v132 = 0xE000000000000000;
        }

        v133 = v119 + v106;
        v134 = v295;
        sub_21CF7F198(v133, v295, &qword_27CE45208, &qword_21D023520);
        if (v103(v134, 1, v4) == 1)
        {
          sub_21D021CE4();
          v135 = (v117 + *(v4 + 20));
          *v135 = 0;
          v135[1] = 0;
          v136 = (v117 + *(v4 + 24));
          *v136 = 0;
          v136[1] = 0;
          if (v103(v134, 1, v4) != 1)
          {
            sub_21CF7F200(v134, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          sub_21CF7F3B0(v134, v117, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v137 = (v117 + *(v4 + 24));
        v138 = *v137;
        v139 = v137[1];

        sub_21CF7F350(v117, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v139)
        {
          v138 = 0;
          v139 = 0xE000000000000000;
        }

        v140 = v329;
        v141 = v329[4];
        v142 = v329[5];
        sub_21CF7D9E8(v329[2], v329[3]);
        v140[2] = v131;
        v140[3] = v132;
        v140[4] = v138;
        v140[5] = v139;
      }

      else
      {
        v124 = v286;
        sub_21CF7F198(v330 + v106, v286, &qword_27CE45208, &qword_21D023520);
        if (v103(v124, 1, v4) == 1)
        {
          v125 = v287;
          sub_21D021CE4();
          v126 = (v125 + *(v4 + 20));
          *v126 = 0;
          v126[1] = 0;
          v127 = (v125 + *(v4 + 24));
          *v127 = 0;
          v127[1] = 0;
          if (v103(v124, 1, v4) != 1)
          {
            sub_21CF7F200(v124, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v125 = v287;
          sub_21CF7F3B0(v124, v287, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v143 = (v125 + *(v4 + 20));
        v144 = *v143;
        v145 = v143[1];

        sub_21CF7F350(v125, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v145)
        {
          v144 = 0;
          v145 = 0xE000000000000000;
        }

        v146 = v329;
        v147 = v329[4];
        v148 = v329[5];
        sub_21CF7D9E8(v329[2], v329[3]);
        v146[2] = v144;
        v146[3] = v145;
        v146[4] = 0;
        v146[5] = 0;
      }

      v102 = v330;
      v103 = v331;
    }
  }

  v149 = v332[6];
  v150 = v326;
  sub_21CF7F198(v102 + v149, v326, &qword_27CE45208, &qword_21D023520);
  v151 = v103(v150, 1, v4);
  sub_21CF7F200(v150, &qword_27CE45208, &qword_21D023520);
  if (v151 != 1)
  {
    v152 = v320;
    sub_21CF7F198(v102 + v149, v320, &qword_27CE45208, &qword_21D023520);
    if (v103(v152, 1, v4) == 1)
    {
      v153 = v321;
      sub_21D021CE4();
      v154 = (v153 + *(v4 + 20));
      *v154 = 0;
      v154[1] = 0;
      v155 = (v153 + *(v4 + 24));
      *v155 = 0;
      v155[1] = 0;
      if (v103(v152, 1, v4) != 1)
      {
        sub_21CF7F200(v152, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v153 = v321;
      sub_21CF7F3B0(v152, v321, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v156 = *(v153 + *(v4 + 20) + 8);
    sub_21CF7F350(v153, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    v103 = v331;
    if (v156)
    {
      v157 = v309;
      sub_21CF7F198(v102 + v149, v309, &qword_27CE45208, &qword_21D023520);
      if (v103(v157, 1, v4) == 1)
      {
        v158 = v311;
        sub_21D021CE4();
        v159 = (v158 + *(v4 + 20));
        *v159 = 0;
        v159[1] = 0;
        v160 = (v158 + *(v4 + 24));
        *v160 = 0;
        v160[1] = 0;
        v161 = v103(v157, 1, v4) == 1;
        v162 = v312;
        v163 = v157;
        v164 = v310;
        if (!v161)
        {
          sub_21CF7F200(v163, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v158 = v311;
        sub_21CF7F3B0(v157, v311, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        v162 = v312;
        v164 = v310;
      }

      v165 = v158;
      v166 = *(v158 + *(v4 + 24) + 8);
      sub_21CF7F350(v165, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v166)
      {
        sub_21CF7F198(v102 + v149, v164, &qword_27CE45208, &qword_21D023520);
        v167 = v331;
        if (v331(v164, 1, v4) == 1)
        {
          sub_21D021CE4();
          v168 = (v162 + *(v4 + 20));
          *v168 = 0;
          v168[1] = 0;
          v169 = (v162 + *(v4 + 24));
          *v169 = 0;
          v169[1] = 0;
          if (v167(v164, 1, v4) != 1)
          {
            sub_21CF7F200(v164, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          sub_21CF7F3B0(v164, v162, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v175 = (v162 + *(v4 + 20));
        v177 = *v175;
        v176 = v175[1];

        sub_21CF7F350(v162, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v176)
        {
          v178 = v176;
        }

        else
        {
          v177 = 0;
          v178 = 0xE000000000000000;
        }

        v179 = v297;
        sub_21CF7F198(v102 + v149, v297, &qword_27CE45208, &qword_21D023520);
        v180 = v331;
        if (v331(v179, 1, v4) == 1)
        {
          v181 = v298;
          sub_21D021CE4();
          v182 = (v181 + *(v4 + 20));
          *v182 = 0;
          v182[1] = 0;
          v183 = (v181 + *(v4 + 24));
          *v183 = 0;
          v183[1] = 0;
          if (v180(v179, 1, v4) != 1)
          {
            sub_21CF7F200(v179, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v181 = v298;
          sub_21CF7F3B0(v179, v298, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v184 = (v181 + *(v4 + 24));
        v186 = *v184;
        v185 = v184[1];

        sub_21CF7F350(v181, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v185)
        {
          v186 = 0;
          v185 = 0xE000000000000000;
        }

        v187 = v329;
        v188 = v329[8];
        v189 = v329[9];
        sub_21CF7D9E8(v329[6], v329[7]);
        v187[6] = v177;
        v187[7] = v178;
        v187[8] = v186;
        v187[9] = v185;
      }

      else
      {
        v170 = v288;
        sub_21CF7F198(v102 + v149, v288, &qword_27CE45208, &qword_21D023520);
        v171 = v331;
        if (v331(v170, 1, v4) == 1)
        {
          v172 = v289;
          sub_21D021CE4();
          v173 = (v172 + *(v4 + 20));
          *v173 = 0;
          v173[1] = 0;
          v174 = (v172 + *(v4 + 24));
          *v174 = 0;
          v174[1] = 0;
          if (v171(v170, 1, v4) != 1)
          {
            sub_21CF7F200(v170, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v172 = v289;
          sub_21CF7F3B0(v170, v289, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v190 = (v172 + *(v4 + 20));
        v192 = *v190;
        v191 = v190[1];

        sub_21CF7F350(v172, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v191)
        {
          v192 = 0;
          v191 = 0xE000000000000000;
        }

        v193 = v329;
        v194 = v329[8];
        v195 = v329[9];
        sub_21CF7D9E8(v329[6], v329[7]);
        v193[6] = v192;
        v193[7] = v191;
        v193[8] = 0;
        v193[9] = 0;
      }

      v103 = v331;
    }
  }

  v196 = v332[8];
  v197 = v327;
  sub_21CF7F198(v102 + v196, v327, &qword_27CE45208, &qword_21D023520);
  v198 = v103(v197, 1, v4);
  sub_21CF7F200(v197, &qword_27CE45208, &qword_21D023520);
  if (v198 != 1)
  {
    v199 = v322;
    sub_21CF7F198(v102 + v196, v322, &qword_27CE45208, &qword_21D023520);
    if (v103(v199, 1, v4) == 1)
    {
      v200 = v323;
      sub_21D021CE4();
      v201 = (v200 + *(v4 + 20));
      *v201 = 0;
      v201[1] = 0;
      v202 = (v200 + *(v4 + 24));
      *v202 = 0;
      v202[1] = 0;
      if (v103(v199, 1, v4) != 1)
      {
        sub_21CF7F200(v199, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v200 = v323;
      sub_21CF7F3B0(v199, v323, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v203 = *(v200 + *(v4 + 20) + 8);
    sub_21CF7F350(v200, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v203)
    {
      v204 = v313;
      sub_21CF7F198(v102 + v196, v313, &qword_27CE45208, &qword_21D023520);
      if (v103(v204, 1, v4) == 1)
      {
        v205 = v315;
        sub_21D021CE4();
        v206 = (v205 + *(v4 + 20));
        *v206 = 0;
        v206[1] = 0;
        v207 = (v205 + *(v4 + 24));
        *v207 = 0;
        v207[1] = 0;
        v161 = v103(v204, 1, v4) == 1;
        v208 = v204;
        v209 = v314;
        if (!v161)
        {
          sub_21CF7F200(v208, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v205 = v315;
        sub_21CF7F3B0(v204, v315, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        v209 = v314;
      }

      v210 = v205;
      v211 = *(v205 + *(v4 + 24) + 8);
      sub_21CF7F350(v210, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v211)
      {
        sub_21CF7F198(v102 + v196, v209, &qword_27CE45208, &qword_21D023520);
        if (v103(v209, 1, v4) == 1)
        {
          v212 = v300;
          sub_21D021CE4();
          v213 = (v212 + *(v4 + 20));
          *v213 = 0;
          v213[1] = 0;
          v214 = (v212 + *(v4 + 24));
          *v214 = 0;
          v214[1] = 0;
          if (v103(v209, 1, v4) != 1)
          {
            sub_21CF7F200(v209, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v212 = v300;
          sub_21CF7F3B0(v209, v300, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v219 = (v212 + *(v4 + 20));
        v220 = v212;
        v222 = *v219;
        v221 = v219[1];

        sub_21CF7F350(v220, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v221)
        {
          v223 = v221;
        }

        else
        {
          v222 = 0;
          v223 = 0xE000000000000000;
        }

        v224 = v102 + v196;
        v225 = v299;
        sub_21CF7F198(v224, v299, &qword_27CE45208, &qword_21D023520);
        if (v103(v225, 1, v4) == 1)
        {
          v226 = v301;
          sub_21D021CE4();
          v227 = (v226 + *(v4 + 20));
          *v227 = 0;
          v227[1] = 0;
          v228 = (v226 + *(v4 + 24));
          *v228 = 0;
          v228[1] = 0;
          if (v103(v225, 1, v4) != 1)
          {
            sub_21CF7F200(v225, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v226 = v301;
          sub_21CF7F3B0(v225, v301, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v229 = (v226 + *(v4 + 24));
        v230 = v226;
        v232 = *v229;
        v231 = v229[1];

        sub_21CF7F350(v230, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v231)
        {
          v232 = 0;
          v231 = 0xE000000000000000;
        }

        v233 = v329;
        v234 = v329[12];
        v235 = v329[13];
        sub_21CF7D9E8(v329[10], v329[11]);
        v233[10] = v222;
        v233[11] = v223;
        v233[12] = v232;
        v233[13] = v231;
      }

      else
      {
        v215 = v290;
        sub_21CF7F198(v102 + v196, v290, &qword_27CE45208, &qword_21D023520);
        if (v103(v215, 1, v4) == 1)
        {
          v216 = v291;
          sub_21D021CE4();
          v217 = (v216 + *(v4 + 20));
          *v217 = 0;
          v217[1] = 0;
          v218 = (v216 + *(v4 + 24));
          *v218 = 0;
          v218[1] = 0;
          if (v103(v215, 1, v4) != 1)
          {
            sub_21CF7F200(v215, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v216 = v291;
          sub_21CF7F3B0(v215, v291, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v236 = (v216 + *(v4 + 20));
        v238 = *v236;
        v237 = v236[1];

        sub_21CF7F350(v216, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v237)
        {
          v238 = 0;
          v237 = 0xE000000000000000;
        }

        v239 = v329;
        v240 = v329[12];
        v241 = v329[13];
        sub_21CF7D9E8(v329[10], v329[11]);
        v239[10] = v238;
        v239[11] = v237;
        v239[12] = 0;
        v239[13] = 0;
      }
    }
  }

  v242 = v332[7];
  v243 = v328;
  sub_21CF7F198(v102 + v242, v328, &qword_27CE45208, &qword_21D023520);
  v244 = v103(v243, 1, v4);
  result = sub_21CF7F200(v243, &qword_27CE45208, &qword_21D023520);
  if (v244 != 1)
  {
    v246 = v324;
    sub_21CF7F198(v102 + v242, v324, &qword_27CE45208, &qword_21D023520);
    if (v103(v246, 1, v4) == 1)
    {
      v247 = v325;
      sub_21D021CE4();
      v248 = (v247 + *(v4 + 20));
      *v248 = 0;
      v248[1] = 0;
      v249 = (v247 + *(v4 + 24));
      *v249 = 0;
      v249[1] = 0;
      if (v103(v246, 1, v4) != 1)
      {
        sub_21CF7F200(v246, &qword_27CE45208, &qword_21D023520);
      }
    }

    else
    {
      v247 = v325;
      sub_21CF7F3B0(v246, v325, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    }

    v250 = *(v247 + *(v4 + 20) + 8);
    result = sub_21CF7F350(v247, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
    if (v250)
    {
      v251 = v316;
      sub_21CF7F198(v102 + v242, v316, &qword_27CE45208, &qword_21D023520);
      if (v103(v251, 1, v4) == 1)
      {
        v252 = v317;
        sub_21D021CE4();
        v253 = (v252 + *(v4 + 20));
        *v253 = 0;
        v253[1] = 0;
        v254 = (v252 + *(v4 + 24));
        *v254 = 0;
        v254[1] = 0;
        if (v103(v251, 1, v4) != 1)
        {
          sub_21CF7F200(v251, &qword_27CE45208, &qword_21D023520);
        }
      }

      else
      {
        v252 = v317;
        sub_21CF7F3B0(v251, v317, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      }

      v255 = v252;
      v256 = *(v252 + *(v4 + 24) + 8);
      sub_21CF7F350(v255, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
      if (v256)
      {
        v257 = v302;
        sub_21CF7F198(v102 + v242, v302, &qword_27CE45208, &qword_21D023520);
        if (v103(v257, 1, v4) == 1)
        {
          v258 = v304;
          sub_21D021CE4();
          v259 = (v258 + *(v4 + 20));
          *v259 = 0;
          v259[1] = 0;
          v260 = (v258 + *(v4 + 24));
          *v260 = 0;
          v260[1] = 0;
          if (v103(v257, 1, v4) != 1)
          {
            sub_21CF7F200(v257, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v258 = v304;
          sub_21CF7F3B0(v257, v304, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v265 = (v258 + *(v4 + 20));
        v266 = v258;
        v268 = *v265;
        v267 = v265[1];

        sub_21CF7F350(v266, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (v267)
        {
          v269 = v267;
        }

        else
        {
          v268 = 0;
          v269 = 0xE000000000000000;
        }

        v270 = v303;
        sub_21CF7F198(v102 + v242, v303, &qword_27CE45208, &qword_21D023520);
        if (v103(v270, 1, v4) == 1)
        {
          v271 = v305;
          sub_21D021CE4();
          v272 = (v271 + *(v4 + 20));
          *v272 = 0;
          v272[1] = 0;
          v273 = (v271 + *(v4 + 24));
          *v273 = 0;
          v273[1] = 0;
          if (v103(v270, 1, v4) != 1)
          {
            sub_21CF7F200(v270, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v271 = v305;
          sub_21CF7F3B0(v270, v305, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v274 = (v271 + *(v4 + 24));
        v276 = *v274;
        v275 = v274[1];

        sub_21CF7F350(v271, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v275)
        {
          v276 = 0;
          v275 = 0xE000000000000000;
        }

        v277 = v329;
        v278 = v329[16];
        v279 = v329[17];
        result = sub_21CF7D9E8(v329[14], v329[15]);
        v277[14] = v268;
        v277[15] = v269;
        v277[16] = v276;
        v277[17] = v275;
      }

      else
      {
        v261 = v292;
        sub_21CF7F198(v102 + v242, v292, &qword_27CE45208, &qword_21D023520);
        if (v103(v261, 1, v4) == 1)
        {
          v262 = v293;
          sub_21D021CE4();
          v263 = (v262 + *(v4 + 20));
          *v263 = 0;
          v263[1] = 0;
          v264 = (v262 + *(v4 + 24));
          *v264 = 0;
          v264[1] = 0;
          if (v103(v261, 1, v4) != 1)
          {
            sub_21CF7F200(v261, &qword_27CE45208, &qword_21D023520);
          }
        }

        else
        {
          v262 = v293;
          sub_21CF7F3B0(v261, v293, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        }

        v280 = (v262 + *(v4 + 20));
        v282 = *v280;
        v281 = v280[1];

        sub_21CF7F350(v262, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.AssetInfo);
        if (!v281)
        {
          v282 = 0;
          v281 = 0xE000000000000000;
        }

        v283 = v329;
        v284 = v329[16];
        v285 = v329[17];
        result = sub_21CF7D9E8(v329[14], v329[15]);
        v283[14] = v282;
        v283[15] = v281;
        v283[16] = 0;
        v283[17] = 0;
      }
    }
  }

  return result;
}

uint64_t sub_21CF7CDB8(uint64_t a1, uint64_t a2)
{
  v109 = a1;
  v3 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v108 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v106 = (&v98 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v98 = (&v98 - v11);
  v12 = MEMORY[0x28223BE20](v10);
  v103 = &v98 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v100 = (&v98 - v15);
  MEMORY[0x28223BE20](v14);
  v101 = (&v98 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45200, &qword_21D023518);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v107 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v105 = &v98 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v104 = &v98 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v102 = &v98 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v99 = &v98 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v98 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v98 - v32;
  v34 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo(0) + 40);
  sub_21CF7F198(a2 + v34, v33, &qword_27CE45200, &qword_21D023518);
  v35 = *(v4 + 48);
  v36 = v3;
  LODWORD(v3) = v35(v33, 1, v3);
  result = sub_21CF7F200(v33, &qword_27CE45200, &qword_21D023518);
  if (v3 != 1)
  {
    v38 = v34;
    sub_21CF7F198(a2 + v34, v31, &qword_27CE45200, &qword_21D023518);
    v39 = a2;
    v40 = v36;
    if (v35(v31, 1, v36) == 1)
    {
      v41 = MEMORY[0x277D84F90];
      v42 = v101;
      *v101 = MEMORY[0x277D84F90];
      v42[1] = v41;
      v43 = v42 + v40[6];
      sub_21D021CE4();
      v44 = (v42 + v40[7]);
      *v44 = 0;
      v44[1] = 0;
      v45 = v42 + v40[8];
      *v45 = 0;
      *(v45 + 4) = 256;
      v46 = v35(v31, 1, v40);
      v47 = v109;
      if (v46 != 1)
      {
        sub_21CF7F200(v31, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      v42 = v101;
      sub_21CF7F3B0(v31, v101, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      v47 = v109;
    }

    v48 = *(v42 + v40[7] + 8);
    sub_21CF7F350(v42, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    v49 = v38;
    v50 = v39;
    v51 = v103;
    if (v48)
    {
      v52 = v99;
      sub_21CF7F198(v50 + v49, v99, &qword_27CE45200, &qword_21D023518);
      if (v35(v52, 1, v40) == 1)
      {
        v53 = MEMORY[0x277D84F90];
        v54 = v100;
        *v100 = MEMORY[0x277D84F90];
        v54[1] = v53;
        v55 = v54 + v40[6];
        sub_21D021CE4();
        v56 = (v54 + v40[7]);
        *v56 = 0;
        v56[1] = 0;
        v57 = v54 + v40[8];
        *v57 = 0;
        *(v57 + 4) = 256;
        if (v35(v52, 1, v40) != 1)
        {
          sub_21CF7F200(v52, &qword_27CE45200, &qword_21D023518);
        }
      }

      else
      {
        v54 = v100;
        sub_21CF7F3B0(v52, v100, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      }

      v58 = (v54 + v40[7]);
      v59 = v54;
      v61 = *v58;
      v60 = v58[1];

      sub_21CF7F350(v59, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      if (!v60)
      {
        v61 = 0;
        v60 = 0xE000000000000000;
      }

      v62 = *(v47 + 8);

      *v47 = v61;
      *(v47 + 8) = v60;
    }

    v63 = v102;
    sub_21CF7F198(v50 + v49, v102, &qword_27CE45200, &qword_21D023518);
    if (v35(v63, 1, v40) == 1)
    {
      v64 = MEMORY[0x277D84F90];
      *v51 = MEMORY[0x277D84F90];
      v51[1] = v64;
      v65 = v51 + v40[6];
      sub_21D021CE4();
      v66 = (v51 + v40[7]);
      *v66 = 0;
      v66[1] = 0;
      v67 = v51 + v40[8];
      *v67 = 0;
      *(v67 + 4) = 256;
      v68 = v35(v63, 1, v40);
      v69 = v104;
      if (v68 != 1)
      {
        sub_21CF7F200(v63, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      sub_21CF7F3B0(v63, v51, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      v69 = v104;
    }

    v70 = *(v51 + v40[8] + 9);
    sub_21CF7F350(v51, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    if ((v70 & 1) == 0)
    {
      sub_21CF7F198(v50 + v49, v69, &qword_27CE45200, &qword_21D023518);
      if (v35(v69, 1, v40) == 1)
      {
        v71 = MEMORY[0x277D84F90];
        v72 = v98;
        *v98 = MEMORY[0x277D84F90];
        v72[1] = v71;
        v73 = v72 + v40[6];
        sub_21D021CE4();
        v74 = (v72 + v40[7]);
        *v74 = 0;
        v74[1] = 0;
        v75 = v72 + v40[8];
        *v75 = 0;
        *(v75 + 4) = 256;
        if (v35(v69, 1, v40) != 1)
        {
          sub_21CF7F200(v69, &qword_27CE45200, &qword_21D023518);
        }
      }

      else
      {
        v72 = v98;
        sub_21CF7F3B0(v69, v98, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      }

      v76 = v72 + v40[8];
      v77 = v72;
      v78 = *v76;
      v79 = v76[8];
      v80 = v76[9];
      sub_21CF7F350(v77, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      if ((v80 & 1) == 0 && (v79 & 1) != 0 && v78)
      {
        *(v47 + 32) = v78 != 1;
      }
    }

    v81 = v105;
    sub_21CF7F198(v50 + v49, v105, &qword_27CE45200, &qword_21D023518);
    if (v35(v81, 1, v40) == 1)
    {
      v82 = MEMORY[0x277D84F90];
      v83 = v106;
      *v106 = MEMORY[0x277D84F90];
      v83[1] = v82;
      v84 = v83 + v40[6];
      sub_21D021CE4();
      v85 = (v83 + v40[7]);
      *v85 = 0;
      v85[1] = 0;
      v86 = v83 + v40[8];
      *v86 = 0;
      *(v86 + 4) = 256;
      v87 = v35(v81, 1, v40);
      v88 = v108;
      if (v87 != 1)
      {
        sub_21CF7F200(v81, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      v83 = v106;
      sub_21CF7F3B0(v81, v106, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
      v88 = v108;
    }

    v89 = *v83;

    sub_21CF7F350(v83, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    v90 = *(v47 + 24);

    *(v47 + 24) = v89;
    v91 = v107;
    sub_21CF7F198(v50 + v49, v107, &qword_27CE45200, &qword_21D023518);
    if (v35(v91, 1, v40) == 1)
    {
      v92 = MEMORY[0x277D84F90];
      *v88 = MEMORY[0x277D84F90];
      v88[1] = v92;
      v93 = v88 + v40[6];
      sub_21D021CE4();
      v94 = (v88 + v40[7]);
      *v94 = 0;
      v94[1] = 0;
      v95 = v88 + v40[8];
      *v95 = 0;
      *(v95 + 4) = 256;
      if (v35(v91, 1, v40) != 1)
      {
        sub_21CF7F200(v91, &qword_27CE45200, &qword_21D023518);
      }
    }

    else
    {
      sub_21CF7F3B0(v91, v88, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    }

    v96 = v88[1];

    sub_21CF7F350(v88, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceEnvironmentInfo.RenderedPrompt);
    v97 = *(v47 + 16);

    *(v47 + 16) = v96;
  }

  return result;
}

uint64_t sub_21CF7D77C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21D021B84();
}

uint64_t sub_21CF7D7C8()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_21D021B74();
}

uint64_t sub_21CF7D820()
{
  sub_21D022C04();
  v1 = *v0;
  swift_getWitnessTable();
  sub_21D021B74();
  return sub_21D022C24();
}

uint64_t sub_21CF7D888(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_21D021B64();
}

uint64_t sub_21CF7D95C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t sub_21CF7D9E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21CF7DAF0(uint64_t a1, uint64_t a2)
{
  v174 = a2;
  v187 = a1;
  v183 = sub_21D0223E4();
  v182 = *(v183 - 8);
  v3 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_21D021A74();
  v177 = *(v178 - 8);
  v5 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v176 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_21D0224A4();
  v172 = *(v173 - 8);
  v7 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_21D022414();
  v179 = *(v180 - 8);
  v9 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v184 = &v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45230, &qword_21D02CC30);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v170 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v167 = &v158 - v15;
  v161 = type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics(0);
  v168 = *(v161 - 8);
  v16 = *(v168 + 64);
  v17 = MEMORY[0x28223BE20](v161);
  v169 = (&v158 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v166 = &v158 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45238, &unk_21D023550);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v165 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v186 = &v158 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v164 = &v158 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v163 = &v158 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v162 = &v158 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v158 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v160 = &v158 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v158 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45240, &unk_21D0246E0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39 - 8);
  v42 = &v158 - v41;
  v189 = sub_21D022394();
  v175 = *(v189 - 8);
  v43 = *(v175 + 64);
  MEMORY[0x28223BE20](v189);
  v188 = &v158 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45248, &unk_21D023560);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x28223BE20](v45 - 8);
  v48 = &v158 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45250, &qword_21D02CC40);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v52 = &v158 - v51;
  v53 = *(v2 + *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateResponse.FinalResponse.DebugInfo(0) + 20));
  v54 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__speculativeDecodingMetrics;
  swift_beginAccess();
  sub_21CF7F198(v53 + v54, v52, &qword_27CE45250, &qword_21D02CC40);
  v55 = type metadata accessor for Apple_Cloudml_Inference_Tie_SpeculativeDecodingMetrics(0);
  LODWORD(v54) = (*(*(v55 - 8) + 48))(v52, 1, v55);
  result = sub_21CF7F200(v52, &qword_27CE45250, &qword_21D02CC40);
  if (v54 == 1)
  {
    v57 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__perfMetrics;
    swift_beginAccess();
    sub_21CF7F198(v53 + v57, v48, &qword_27CE45248, &unk_21D023560);
    v58 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
    LODWORD(v57) = (*(*(v58 - 8) + 48))(v48, 1, v58);
    result = sub_21CF7F200(v48, &qword_27CE45248, &unk_21D023560);
    if (v57 == 1)
    {
      return result;
    }
  }

  v185 = v53;
  v191 = 0;
  v192 = 0;
  MEMORY[0x28223BE20](result);
  *(&v158 - 4) = v2;
  *(&v158 - 3) = &v192;
  *(&v158 - 2) = &v191;
  v59 = v188;
  sub_21D0223B4();
  v60 = sub_21D0224D4();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_21D0224C4();
  MEMORY[0x28223BE20](v63);
  *(&v158 - 2) = v187;
  *(&v158 - 1) = v59;
  sub_21D0224B4();
  v64 = v162;

  v65 = sub_21D022134();
  (*(*(v65 - 8) + 56))(v42, 0, 1, v65);
  v66 = sub_21CF7F200(v42, &qword_27CE45240, &unk_21D0246E0);
  v67 = COERCE_DOUBLE(MEMORY[0x223D39D60](v66));
  v69 = 0.0;
  if (v68)
  {
    v70 = 0.0;
  }

  else
  {
    v70 = v67;
  }

  v71 = COERCE_DOUBLE(MEMORY[0x223D39E40]());
  if (v72)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = v71;
  }

  sub_21D022144();
  v74 = sub_21D022264();
  v75 = *(v74 - 8);
  v76 = *(v75 + 48);
  if (v76(v38, 1, v74) == 1)
  {
    sub_21CF7F200(v38, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v77 = sub_21D022164();
    (*(v75 + 8))(v38, v74);
    if ((v77 & 0x100000000) == 0)
    {
      v69 = *&v77;
    }
  }

  v78 = v160;
  sub_21D022144();
  v79 = v76(v78, 1, v74);
  v80 = v164;
  if (v79 == 1)
  {
    sub_21CF7F200(v78, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v81 = sub_21D0221E4();
    v82 = v78;
    v83 = v81;
    (*(v75 + 8))(v82, v74);
    if ((v83 & 0x100000000) == 0)
    {
      goto LABEL_17;
    }
  }

  v83 = 0;
LABEL_17:
  sub_21D022144();
  if (v76(v34, 1, v74) == 1)
  {
    sub_21CF7F200(v34, &qword_27CE45238, &unk_21D023550);
    v84 = v161;
  }

  else
  {
    v85 = sub_21D022204();
    (*(v75 + 8))(v34, v74);
    v84 = v161;
    if ((v85 & 0x100000000) == 0)
    {
      goto LABEL_21;
    }
  }

  v85 = 0;
LABEL_21:
  v162 = v85;
  sub_21D022144();
  if (v76(v64, 1, v74) == 1)
  {
    sub_21CF7F200(v64, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v86 = sub_21D0221A4();
    (*(v75 + 8))(v64, v74);
    if ((v86 & 0x100000000) == 0)
    {
      goto LABEL_25;
    }
  }

  v86 = 0;
LABEL_25:
  v161 = v86;
  v87 = v163;
  sub_21D022144();
  if (v76(v87, 1, v74) == 1)
  {
    sub_21CF7F200(v87, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v88 = sub_21D0221C4();
    (*(v75 + 8))(v87, v74);
    if ((v88 & 0x100000000) == 0)
    {
      goto LABEL_29;
    }
  }

  v88 = 0;
LABEL_29:
  v160 = v88;
  v163 = v83;
  sub_21D022144();
  if (v76(v80, 1, v74) == 1)
  {
    sub_21CF7F200(v80, &qword_27CE45238, &unk_21D023550);
LABEL_32:
    v159 = 0;
    goto LABEL_34;
  }

  v89 = MEMORY[0x223D39CF0]();
  v91 = v90;
  (*(v75 + 8))(v80, v74);
  if (v91)
  {
    goto LABEL_32;
  }

  v159 = v89;
LABEL_34:
  v92 = v178;
  sub_21D022144();
  v93 = v186;
  v94 = v76(v186, 1, v74);
  v95 = v185;
  if (v94 == 1)
  {
    sub_21CF7F200(v93, &qword_27CE45238, &unk_21D023550);
  }

  else
  {
    v164 = MEMORY[0x223D39D10]();
    v97 = v96;
    (*(v75 + 8))(v93, v74);
    if ((v97 & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  v164 = 0;
LABEL_38:
  v98 = v165;
  sub_21D022144();
  v99 = v92;
  if (v76(v98, 1, v74) == 1)
  {
    sub_21CF7F200(v98, &qword_27CE45238, &unk_21D023550);
    v100 = v168;
    v101 = v167;
    v102 = v166;
    v103 = v170;
LABEL_41:
    v186 = 0;
    goto LABEL_42;
  }

  v186 = MEMORY[0x223D39C50]();
  v105 = v104;
  (*(v75 + 8))(v98, v74);
  v100 = v168;
  v101 = v167;
  v102 = v166;
  v103 = v170;
  if (v105)
  {
    goto LABEL_41;
  }

LABEL_42:
  v106 = OBJC_IVAR____TtCVVV15PrivateMLClient44Apple_Cloudml_Inference_Tie_GenerateResponse13FinalResponse9DebugInfoP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceMetrics;
  swift_beginAccess();
  sub_21CF7F198(v95 + v106, v101, &qword_27CE45230, &qword_21D02CC30);
  v107 = *(v100 + 48);
  v108 = v107(v101, 1, v84);
  v109 = MEMORY[0x277D84F90];
  if (v108 == 1)
  {
    *v102 = MEMORY[0x277D84F90];
    v110 = v102 + v84[5];
    sub_21D021CE4();
    v111 = v102 + v84[6];
    *v111 = 0;
    v111[4] = 1;
    v112 = v102 + v84[7];
    *v112 = 0;
    v112[4] = 1;
    v113 = v102 + v84[8];
    *v113 = 0;
    v113[8] = 1;
    v114 = v102 + v84[9];
    *v114 = 0;
    v114[8] = 1;
    v115 = v102 + v84[10];
    *v115 = 0;
    v115[8] = 1;
    v116 = v102 + v84[11];
    *v116 = 0;
    v116[8] = 1;
    v117 = v102 + v84[12];
    *v117 = 0;
    v117[8] = 1;
    if (v107(v101, 1, v84) != 1)
    {
      sub_21CF7F200(v101, &qword_27CE45230, &qword_21D02CC30);
    }
  }

  else
  {
    sub_21CF7F3B0(v101, v102, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  }

  v118 = v102 + v84[6];
  v119 = *v118;
  v120 = v118[4];
  sub_21CF7F350(v102, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  if (v120)
  {
    v121 = 0;
  }

  else
  {
    v121 = v119;
  }

  LODWORD(v168) = v121;
  sub_21CF7F198(v185 + v106, v103, &qword_27CE45230, &qword_21D02CC30);
  if (v107(v103, 1, v84) == 1)
  {
    v122 = v169;
    *v169 = v109;
    v123 = v122;
    v124 = v122 + v84[5];
    sub_21D021CE4();
    v125 = v123 + v84[6];
    *v125 = 0;
    v125[4] = 1;
    v126 = v123 + v84[7];
    *v126 = 0;
    v126[4] = 1;
    v127 = v123 + v84[8];
    *v127 = 0;
    v127[8] = 1;
    v128 = v123 + v84[9];
    *v128 = 0;
    v128[8] = 1;
    v129 = v123 + v84[10];
    *v129 = 0;
    v129[8] = 1;
    v130 = v123 + v84[11];
    *v130 = 0;
    v130[8] = 1;
    v131 = v123 + v84[12];
    *v131 = 0;
    v131[8] = 1;
    v132 = v107(v103, 1, v84);
    v133 = v177;
    v134 = v176;
    if (v132 != 1)
    {
      sub_21CF7F200(v103, &qword_27CE45230, &qword_21D02CC30);
    }
  }

  else
  {
    v123 = v169;
    sub_21CF7F3B0(v103, v169, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
    v133 = v177;
    v134 = v176;
  }

  v135 = v123 + v84[7];
  LODWORD(v185) = *v135;
  v136 = v135[4];
  sub_21CF7F350(v123, type metadata accessor for Apple_Cloudml_Inference_Tie_InferenceMetrics);
  (*(v172 + 16))(v171, v174, v173);
  v137 = v184;
  sub_21D0223F4();
  (*(v133 + 16))(v134, v187, v99);
  sub_21CF7F0A4();
  sub_21CF78AC8();
  sub_21CF774DC(v138);
  sub_21CF78AC8();
  sub_21CF774DC(v139);
  sub_21CF78AC8();
  sub_21CF774DC(v140);
  sub_21CF78AC8();
  sub_21CF774DC(v141);
  sub_21CF7F0F8();
  sub_21CF78AC8();
  sub_21CF774DC(v142);
  sub_21CF78AC8();
  sub_21CF774DC(v143);
  sub_21CF78AC8();
  sub_21CF774DC(v144);
  sub_21CF78AC8();
  sub_21CF774DC(v145);
  sub_21CF78AC8();
  sub_21CF774DC(v146);
  v147 = v181;
  sub_21D0223D4();
  v148 = sub_21D022404();
  v149 = sub_21D022904();
  if (sub_21D022914())
  {
    v150 = v185;
    if (v136)
    {
      v150 = 0;
    }

    LODWORD(v187) = v150;
    v151 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v190 = v152;
    *v151 = 136449794;
    v153 = v134;
    v154 = sub_21D021A54();
    v156 = sub_21CF9703C(v154, v155, &v190);

    *(v151 + 4) = v156;
    (*(v133 + 8))(v153, v99);
    *(v151 + 12) = 2050;
    swift_beginAccess();
    *(v151 + 14) = v192;
    *(v151 + 22) = 2050;
    swift_beginAccess();
    *(v151 + 24) = v191;
    *(v151 + 32) = 2050;
    *(v151 + 34) = v70;
    *(v151 + 42) = 2050;
    *(v151 + 44) = v73;
    *(v151 + 52) = 2050;
    *(v151 + 54) = v69;
    *(v151 + 62) = 1026;
    *(v151 + 64) = v163;
    *(v151 + 68) = 1026;
    *(v151 + 70) = v162;
    *(v151 + 74) = 1026;
    *(v151 + 76) = v161;
    *(v151 + 80) = 1026;
    *(v151 + 82) = v160;
    *(v151 + 86) = 2050;
    *(v151 + 88) = v159;
    *(v151 + 96) = 2050;
    *(v151 + 98) = v164;
    *(v151 + 106) = 2050;
    *(v151 + 108) = v186;
    *(v151 + 116) = 1026;
    *(v151 + 118) = v168;
    *(v151 + 122) = 1026;
    *(v151 + 124) = v187;
    v157 = sub_21D0223C4();
    _os_signpost_emit_with_name_impl(&dword_21CF72000, v148, v149, v157, "PrivateCloudMetrics", "requestIdentifier=%{public, signpost.description=attribute,public}s timeToFirstTokenMillis=%{public, signpost.description=attribute,public}f extendLatencyMillis=%{public, signpost.description=attribute,public}f totalInferenceMillis=%{public, signpost.description=attribute,public}f tokenRate=%{public, signpost.description=attribute,public}f speculativeDecodingAcceptanceRate=%{public, signpost.description=attribute,public}f draftModelInferenceCallCount=%{public, signpost.description=attribute,public}u targetModelInferenceCallCount=%{public, signpost.description=attribute,public}u draftOutputTokenCount=%{public, signpost.description=attribute,public}u targetOutputTokenCount=%{public, signpost.description=attribute,public}u draftModelTotalInferenceLatencyMillis=%{public, signpost.description=attribute,public}llu targetModelTotalInferenceLatencyMillis=%{public, signpost.description=attribute,public}llu draftSteps=%{public, signpost.description=attribute,public}llu inputTokensCount=%{public, signpost.description=attribute,public}u outputTokensCount=%{public, signpost.description=attribute,public}u", v151, 0x80u);
    __swift_destroy_boxed_opaque_existential_0(v152);
    MEMORY[0x223D3ADE0](v152, -1, -1);
    MEMORY[0x223D3ADE0](v151, -1, -1);

    (*(v182 + 8))(v147, v183);
    (*(v179 + 8))(v184, v180);
  }

  else
  {

    (*(v182 + 8))(v147, v183);
    (*(v133 + 8))(v134, v99);
    (*(v179 + 8))(v137, v180);
  }

  return (*(v175 + 8))(v188, v189);
}

unint64_t sub_21CF7F0A4()
{
  result = qword_28121B0F8;
  if (!qword_28121B0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121B0F8);
  }

  return result;
}

unint64_t sub_21CF7F0F8()
{
  result = qword_28121B0E8;
  if (!qword_28121B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28121B0E8);
  }

  return result;
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

uint64_t sub_21CF7F198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21CF7F200(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21CF7F260(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45258, &unk_21D023570);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF7F2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Cloudml_Inference_Tie_PerfMetrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CF7F350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CF7F3B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Logger.create<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_21CF7F488(a1, a2);

  return sub_21D022494();
}

uint64_t sub_21CF7F488(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = *(v4 + 16);
  v9(&v12 - v10, a1, a2);
  if (swift_dynamicCast())
  {
    return v12;
  }

  v9(v8, a1, a2);
  return sub_21D0225D4();
}

uint64_t sub_21CF7F5B8()
{
  result = os_variant_has_internal_content();
  byte_28121B6B0 = result;
  return result;
}

uint64_t (*static OSVariant.isInternalBuild.modify())()
{
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_21CF7F6B0()
{
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_28121B6C0 = (byte_28121B6B0 & 1) == 0;
  return result;
}

uint64_t sub_21CF7F758(void *a1, unsigned __int8 *a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *a2;
}

uint64_t sub_21CF7F7D4(char a1, void *a2, _BYTE *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = a1 & 1;
  return result;
}

uint64_t (*static OSVariant.isCustomerBuild.modify())()
{
  if (qword_28121B6B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_21CF7F8C4@<X0>(void *a1@<X3>, _BYTE *a2@<X4>, _BYTE *a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a3 = *a2;
  return result;
}

uint64_t sub_21CF7F928(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v7 = *a1;
  if (*a5 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a6 = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for OSVariant(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for OSVariant(_WORD *result, int a2, int a3)
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

uint64_t type metadata accessor for PrivateCloudComputeTransport()
{
  result = qword_28121DCB0;
  if (!qword_28121DCB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CF7FAF0()
{
  result = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(319);
  if (v1 <= 0x3F)
  {
    result = sub_21D021BE4();
    if (v2 <= 0x3F)
    {
      result = sub_21D0224A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21CF7FB9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CF9D5E8(&unk_282E91618);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452E8, &qword_21D0236A8);
  result = swift_arrayDestroy();
  v6 = floor(a1 / 250.0);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((v6 * 250) >> 64 != (250 * v6) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (((v6 + 1) * 250) >> 64 != (250 * (v6 + 1)) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = sub_21D022B04();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_21CFA3AC4(v7, v9, 0xD000000000000027, 0x800000021D02D0F0, isUniquelyReferenced_nonNull_native);
  v11 = sub_21D022B04();
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v24 = v4;
  result = sub_21CFA3AC4(v11, v13, 0xD000000000000023, 0x800000021D02D120, v14);
  v15 = floor(a2 / 15.0);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v15 * 15) >> 64 != (15 * v15) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((v15 + 1) * 15) >> 64 == (15 * (v15 + 1)) >> 63)
  {
    v16 = sub_21D022B04();
    v18 = v17;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CFA3AC4(v16, v18, 0xD00000000000002FLL, 0x800000021D02D150, v19);
    v20 = sub_21D022B04();
    v22 = v21;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_21CFA3AC4(v20, v22, 0xD00000000000002BLL, 0x800000021D02D180, v23);
    return v24;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_21CF7FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[16] = a8;
  v9[17] = v8;
  v9[14] = a6;
  v9[15] = a7;
  v9[12] = a4;
  v9[13] = a5;
  v9[10] = a2;
  v9[11] = a3;
  v9[9] = a1;
  v10 = sub_21D021A74();
  v9[18] = v10;
  v11 = *(v10 - 8);
  v9[19] = v11;
  v12 = *(v11 + 64) + 15;
  v9[20] = swift_task_alloc();
  v9[21] = swift_task_alloc();
  v13 = type metadata accessor for PrivateMLRequest(0);
  v9[22] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v9[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF7FFD8, 0, 0);
}

uint64_t sub_21CF7FFD8()
{
  v108 = v0;
  v1 = *(v0 + 136);
  v2 = type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0);
  *(v0 + 192) = v2;
  v3 = *(v2 + 24);
  if (*(v1 + v3))
  {
    v4 = *(v1 + v3);
  }

  else
  {
    v4 = sub_21CF9D5E8(MEMORY[0x277D84F90]);
  }

  *(v0 + 56) = v4;
  v5 = *(v4 + 16);

  if (v5 && (v6 = sub_21CF9D320(0x6C65646F6DLL, 0xE500000000000000), (v7 & 1) != 0))
  {
    v8 = (*(v4 + 56) + 16 * v6);
  }

  else
  {
    v8 = (*(v0 + 80) + *(*(v0 + 176) + 24));
  }

  v9 = *v8;
  v10 = v8[1];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v107 = v4;
  sub_21CFA3AC4(v9, v10, 0x6C65646F6DLL, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  if (*(v4 + 16) && (v12 = sub_21CF9D320(0x72657470616461, 0xE700000000000000), (v13 & 1) != 0))
  {
    v14 = (*(v4 + 56) + 16 * v12);
    v15 = *(v0 + 176);
    v16 = *(v0 + 80);
  }

  else
  {
    v15 = *(v0 + 176);
    v16 = *(v0 + 80);
    v14 = (v16 + *(v15 + 32));
  }

  v17 = *v14;
  v18 = v14[1];

  v19 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v4;
  sub_21CFA3AC4(v17, v18, 0x72657470616461, 0xE700000000000000, v19);
  *(v0 + 56) = v4;
  v20 = (v16 + *(v15 + 48));
  v21 = *v20;
  v22 = v20[1];
  v23 = sub_21D021A84();
  v25 = v24;
  v26 = v23;
  if (*(v4 + 16))
  {
    v27 = sub_21CF9D320(0x636E657265666E69, 0xEC00000064692D65);
    if (v28)
    {
      v29 = (*(v4 + 56) + 16 * v27);
      v26 = *v29;
      v30 = v29[1];

      v25 = v30;
    }
  }

  v31 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v4;
  sub_21CFA3AC4(v26, v25, 0x636E657265666E69, 0xEC00000064692D65, v31);
  if (*(v4 + 16) && (v32 = sub_21CF9D320(0x65662D656C707061, 0xEF64696572757461), (v33 & 1) != 0))
  {
    v34 = (*(v4 + 56) + 16 * v32);
  }

  else
  {
    v34 = (*(v0 + 80) + *(*(v0 + 176) + 20));
  }

  v35 = *v34;
  v36 = v34[1];

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v107 = v4;
  sub_21CFA3AC4(v35, v36, 0x65662D656C707061, 0xEF64696572757461, v37);
  *(v0 + 56) = v4;
  if (*(v4 + 16) && (v38 = sub_21CF9D320(0xD000000000000010, 0x800000021D02D470), (v39 & 1) != 0))
  {
    v40 = (*(v4 + 56) + 16 * v38);
    v42 = *v40;
    v41 = v40[1];

    v44 = v42;
  }

  else
  {
    v45 = (*(v0 + 80) + *(*(v0 + 176) + 68));
    if (*(v45 + 4))
    {
      v46 = 0;
    }

    else
    {
      v46 = *v45;
    }

    *(v0 + 448) = v46;
    v44 = sub_21D022B04();
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 80);
  v49 = sub_21CF82460(v44, v43);
  if (v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = v49;
  }

  v52 = sub_21CF7FB9C(*(v48 + *(v47 + 112)), v51);
  if (*(v52 + 16) && (v53 = sub_21CF9D320(0xD000000000000027, 0x800000021D02D0F0), (v54 & 1) != 0))
  {
    v55 = (*(v52 + 56) + 16 * v53);
    v57 = *v55;
    v56 = v55[1];

    v59 = v57;
  }

  else
  {
    v59 = 0;
    v58 = 0;
  }

  sub_21CF9FC9C(v59, v58, 0xD000000000000027, 0x800000021D02D0F0);
  if (*(v52 + 16) && (v60 = sub_21CF9D320(0xD000000000000023, 0x800000021D02D120), (v61 & 1) != 0))
  {
    v62 = (*(v52 + 56) + 16 * v60);
    v64 = *v62;
    v63 = v62[1];

    v66 = v64;
  }

  else
  {
    v66 = 0;
    v65 = 0;
  }

  sub_21CF9FC9C(v66, v65, 0xD000000000000023, 0x800000021D02D120);
  if (*(v52 + 16) && (v67 = sub_21CF9D320(0xD00000000000002FLL, 0x800000021D02D150), (v68 & 1) != 0))
  {
    v69 = (*(v52 + 56) + 16 * v67);
    v71 = *v69;
    v70 = v69[1];

    v73 = v71;
  }

  else
  {
    v73 = 0;
    v72 = 0;
  }

  sub_21CF9FC9C(v73, v72, 0xD00000000000002FLL, 0x800000021D02D150);
  if (*(v52 + 16) && (v74 = sub_21CF9D320(0xD00000000000002BLL, 0x800000021D02D180), (v75 & 1) != 0))
  {
    v76 = (*(v52 + 56) + 16 * v74);
    v77 = *v76;
    v78 = v76[1];
  }

  else
  {
    v77 = 0;
    v78 = 0;
  }

  sub_21CF9FC9C(v77, v78, 0xD00000000000002BLL, 0x800000021D02D180);
  if (qword_28121E108[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_28121B6B0)
  {
    v79 = *(v0 + 184);
    v80 = *(v0 + 136);
    v81 = *(v0 + 80);
    v82 = *(type metadata accessor for PrivateCloudComputeTransport() + 24);
    sub_21CF8F644(v81, v79, type metadata accessor for PrivateMLRequest);
    v83 = sub_21D022484();
    v84 = sub_21D0228D4();
    v85 = os_log_type_enabled(v83, v84);
    v86 = *(v0 + 184);
    if (v85)
    {
      v87 = *(v0 + 144);
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v107 = v89;
      *v88 = 136315138;
      sub_21CF8F5F8(&qword_28121E098, MEMORY[0x277CC95F0]);
      v90 = sub_21D022B04();
      v92 = v91;
      sub_21CF8F53C(v86, type metadata accessor for PrivateMLRequest);
      v93 = sub_21CF9703C(v90, v92, &v107);

      *(v88 + 4) = v93;
      _os_log_impl(&dword_21CF72000, v83, v84, "%s Running internal build, applying overrides.", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x223D3ADE0](v89, -1, -1);
      MEMORY[0x223D3ADE0](v88, -1, -1);
    }

    else
    {

      sub_21CF8F53C(v86, type metadata accessor for PrivateMLRequest);
    }

    v95 = *(v0 + 80);
    v96 = sub_21D021A54();
    v94 = sub_21CFB6F58(v96, v97, *(v0 + 56));

    *(v0 + 56) = v94;
  }

  else
  {
    v94 = *(v0 + 56);
  }

  *(v0 + 200) = v94;
  v98 = sub_21CF82760(v94);
  *(v0 + 208) = 0;
  *(v0 + 216) = v98;
  *(v0 + 224) = v99;
  v100 = *(v0 + 136);
  v101 = type metadata accessor for PrivateCloudComputeTransport();
  *(v0 + 232) = v101;
  *(v0 + 452) = *(v101 + 24);
  v102 = sub_21D022484();
  v103 = sub_21D0228B4();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_21CF72000, v102, v103, "withPrivateMLRequest: Attempting to dequeue a connection.", v104, 2u);
    MEMORY[0x223D3ADE0](v104, -1, -1);
  }

  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }

  v105 = qword_27CE537D8;
  *(v0 + 240) = qword_27CE537D8;

  return MEMORY[0x2822009F8](sub_21CF80910, v105, 0);
}

uint64_t sub_21CF80910()
{
  v1 = v0[30];
  v0[31] = sub_21CF9A318(v0[27], v0[28]);

  return MEMORY[0x2822009F8](sub_21CF8098C, 0, 0);
}

uint64_t sub_21CF8098C()
{
  v1 = *(v0 + 452);
  v2 = *(v0 + 136);
  if (*(v0 + 248))
  {

    v3 = sub_21D022484();
    v4 = sub_21D0228B4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "Using Cached Connection.", v5, 2u);
      MEMORY[0x223D3ADE0](v5, -1, -1);
    }

    if (qword_27CE44EC8 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 176);
    v7 = *(v0 + 80);
    v8 = qword_27CE537E0;
    *(v0 + 256) = qword_27CE537E0;
    v9 = v7 + *(v6 + 88);
    *(v0 + 264) = sub_21D021A54();
    *(v0 + 272) = v10;
    v11 = sub_21CF80DAC;
  }

  else
  {
    v12 = sub_21D022484();
    v13 = sub_21D0228B4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21CF72000, v12, v13, "Running No Cached Connection.", v14, 2u);
      MEMORY[0x223D3ADE0](v14, -1, -1);
    }

    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 168);
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(v0 + 136);
    v21 = *(v0 + 80);

    v22 = sub_21D021C54();
    *(v0 + 304) = v22;
    v23 = *(v22 - 8);
    *(v0 + 312) = v23;
    v24 = *(v23 + 64) + 15;
    *(v0 + 320) = swift_task_alloc();
    v25 = *(v18 + 16);
    v25(v17, v21, v19);
    v26 = (v20 + *(v16 + 20));
    v56 = v26[1];
    v57 = *v26;
    v27 = *(v15 + 16);

    if (v27 && (v28 = *(v0 + 200), v29 = sub_21CF9D320(0x65662D656C707061, 0xEF64696572757461), (v30 & 1) != 0))
    {
      v31 = (*(*(v0 + 200) + 56) + 16 * v29);
      v32 = *(v0 + 176);
      v33 = *(v0 + 80);
    }

    else
    {
      v32 = *(v0 + 176);
      v33 = *(v0 + 80);
      v31 = (v33 + *(v32 + 20));
    }

    v34 = *(v0 + 160);
    v35 = *(v0 + 144);
    v36 = v31[1];
    v55 = *v31;
    v37 = *(v32 + 88);
    *(v0 + 456) = v37;

    v25(v34, v33 + v37, v35);
    if (*(v15 + 16) && (v38 = *(v0 + 200), v39 = sub_21CF9D320(0x75622D656C707061, 0xEE006469656C646ELL), (v40 & 1) != 0))
    {
      v41 = (*(*(v0 + 200) + 56) + 16 * v39);
      v42 = v41[1];
      v43 = *(v0 + 176);
      v44 = *(v0 + 80);
    }

    else
    {
      v43 = *(v0 + 176);
      v44 = *(v0 + 80);
      v41 = (v44 + *(v43 + 132));
      v45 = v41[1];
      v46 = *(v0 + 200);
    }

    v48 = *(v0 + 160);
    v47 = *(v0 + 168);
    v49 = *v41;
    v50 = (v44 + *(v43 + 136));
    v52 = *v50;
    v51 = v50[1];

    sub_21D021BF4();
    if (qword_27CE44EC8 != -1)
    {
      swift_once();
    }

    v8 = qword_27CE537E0;
    *(v0 + 328) = qword_27CE537E0;
    *(v0 + 336) = sub_21D021A54();
    *(v0 + 344) = v53;
    v11 = sub_21CF8106C;
  }

  return MEMORY[0x2822009F8](v11, v8, 0);
}

uint64_t sub_21CF80DAC()
{
  v1 = v0[32];
  v2 = v0[26];
  sub_21CFA0500(v0[31], v0[33], v0[34]);
  v0[35] = v2;
  v3 = v0[34];
  if (v2)
  {

    return MEMORY[0x2822009F8](sub_21CF81BAC, 0, 0);
  }

  else
  {
    v4 = v0[31];

    v5 = swift_task_alloc();
    v0[36] = v5;
    *v5 = v0;
    v5[1] = sub_21CF80EC8;
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[9];
    v16 = v0[16];

    return sub_21CF82A08(v13, v4, v11, v12, v9, v10, v7, v8);
  }
}

uint64_t sub_21CF80EC8()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_21CF81D40;
  }

  else
  {
    v3 = sub_21CF80FDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CF80FDC()
{
  v1 = v0[31];
  v2 = v0[25];

  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_21CF8106C()
{
  v1 = v0[41];
  v0[44] = sub_21CFA18E8(v0[42], v0[43]);

  return MEMORY[0x2822009F8](sub_21CF810E8, 0, 0);
}

uint64_t sub_21CF810E8()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 136) + *(v0 + 452);
  v3 = sub_21D022484();
  v4 = sub_21D0228B4();
  v5 = os_log_type_enabled(v3, v4);
  if (v1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "Using cached session...", v6, 2u);
      MEMORY[0x223D3ADE0](v6, -1, -1);
    }

    v7 = swift_task_alloc();
    *(v0 + 360) = v7;
    *v7 = v0;
    v7[1] = sub_21CF813AC;
    v8 = *(v0 + 136);
    v9 = *(v0 + 112);
    v10 = *(v0 + 120);
    v11 = *(v0 + 96);
    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v15 = *(v0 + 72);
    v31 = *(v0 + 128);

    return sub_21CF82A08(v15, v1, v13, v14, v11, v12, v9, v10);
  }

  else
  {
    if (v5)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_21CF72000, v3, v4, "No cached Session.", v17, 2u);
      MEMORY[0x223D3ADE0](v17, -1, -1);
    }

    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = *(v0 + 304);
    v21 = *(v0 + 232);
    v22 = *(v0 + 136);

    v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620) - 8) + 64) + 15;
    v24 = swift_task_alloc();
    *(v0 + 376) = v24;
    (*(v19 + 16))();
    (*(v19 + 56))(v24, 0, 1, v20);
    v25 = *(v22 + *(v21 + 20));
    v26 = type metadata accessor for PrivateMLClientCloudComputeConnection(0);
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v29 = swift_task_alloc();
    *(v0 + 384) = v29;
    *v29 = v0;
    v29[1] = sub_21CF8157C;

    return sub_21CF90F00(v24, v25, 0, 0);
  }
}

uint64_t sub_21CF813AC()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_21CF81ED4;
  }

  else
  {
    v3 = sub_21CF814C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CF814C0()
{
  v1 = v0[44];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[25];

  (*(v3 + 8))(v2, v4);

  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21CF8157C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v8 = *v2;
  v3[49] = a1;
  v3[50] = v1;

  if (v1)
  {
    v5 = sub_21CF81824;
  }

  else
  {
    v6 = v3[47];

    v5 = sub_21CF81698;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21CF81698()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 80) + *(v0 + 456);
  *(v0 + 408) = sub_21D021A54();
  *(v0 + 416) = v3;

  return MEMORY[0x2822009F8](sub_21CF81710, v1, 0);
}

uint64_t sub_21CF81710()
{
  v1 = v0[50];
  v2 = v0[41];
  sub_21CFA0500(v0[49], v0[51], v0[52]);
  v0[53] = v1;
  v3 = v0[52];

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_21CF8208C, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[54] = v4;
    *v4 = v0;
    v4[1] = sub_21CF819DC;
    v5 = v0[49];
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[12];
    v10 = v0[13];
    v11 = v0[10];
    v12 = v0[11];
    v13 = v0[9];
    v16 = v0[16];

    return sub_21CF82A08(v13, v5, v11, v12, v9, v10, v7, v8);
  }
}

uint64_t sub_21CF81824()
{
  v1 = *(v0 + 376);

  v2 = *(v0 + 400);
  v3 = *(v0 + 452);
  v4 = *(v0 + 136);
  v5 = v2;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "failed in no cached connection due to: %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 200);

  swift_willThrow();
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21CF819DC()
{
  v2 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {
    v3 = sub_21CF82244;
  }

  else
  {
    v3 = sub_21CF81AF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CF81AF0()
{
  v1 = v0[49];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[25];

  (*(v3 + 8))(v2, v4);

  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[21];

  v9 = v0[1];

  return v9();
}

uint64_t sub_21CF81BAC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 452);
  v4 = *(v0 + 136);

  v5 = v1;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "failed cached connection due to error: %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v12 = *(v0 + 248);
  v13 = *(v0 + 200);

  swift_willThrow();

  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21CF81D40()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v3 = *(v0 + 452);
  v4 = *(v0 + 136);

  v5 = v1;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "failed cached connection due to error: %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v12 = *(v0 + 248);
  v13 = *(v0 + 200);

  swift_willThrow();

  v14 = *(v0 + 184);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_21CF81ED4()
{
  v1 = *(v0 + 352);

  v2 = *(v0 + 368);
  v3 = *(v0 + 452);
  v4 = *(v0 + 136);
  v5 = v2;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "failed in no cached connection due to: %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 200);

  swift_willThrow();
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21CF8208C()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 424);
  v3 = *(v0 + 452);
  v4 = *(v0 + 136);
  v5 = v2;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "failed in no cached connection due to: %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 200);

  swift_willThrow();
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21CF82244()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 440);
  v3 = *(v0 + 452);
  v4 = *(v0 + 136);
  v5 = v2;
  v6 = sub_21D022484();
  v7 = sub_21D0228C4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21CF72000, v6, v7, "failed in no cached connection due to: %@", v8, 0xCu);
    sub_21CF7F200(v9, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v9, -1, -1);
    MEMORY[0x223D3ADE0](v8, -1, -1);
  }

  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = *(v0 + 200);

  swift_willThrow();
  (*(v13 + 8))(v12, v14);

  v16 = *(v0 + 184);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_21CF823FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_21CF9D320(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

uint64_t sub_21CF82460(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_21D0229D4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_21CF8E878(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_21CF82760(uint64_t a1)
{
  v1 = 0xD000000000000023;
  v2 = "NO_PREPROCESSING";
  if (*(a1 + 16) && (v4 = sub_21CF9D320(0x65662D656C707061, 0xEF64696572757461), (v5 & 1) != 0))
  {
    v2 = " no apple-featureid";
    if (*(a1 + 16))
    {
      v6 = (*(a1 + 56) + 16 * v4);
      v8 = *v6;
      v7 = v6[1];

      v9 = sub_21CF9D320(0x6C65646F6DLL, 0xE500000000000000);
      if (v10)
      {
        v2 = "generateCacheKey no model";
        if (*(a1 + 16))
        {
          v11 = (*(a1 + 56) + 16 * v9);
          v13 = *v11;
          v12 = v11[1];

          v14 = sub_21CF9D320(0x72657470616461, 0xE700000000000000);
          if (v15)
          {
            v16 = (*(a1 + 56) + 16 * v14);
            v18 = *v16;
            v17 = v16[1];
            v19 = *(a1 + 16);

            if (v19)
            {
              v20 = sub_21CF9D320(0x636E657265666E69, 0xEC00000064692D65);
              if (v21)
              {
                v22 = (*(a1 + 56) + 16 * v20);
                v23 = v22[1];
                v27 = *v22;

                MEMORY[0x223D3A110](v13, v12);

                MEMORY[0x223D3A110](v18, v17);

                MEMORY[0x223D3A110](v27, v23);

                return v8;
              }
            }

            v2 = "generateCacheKey no adaptor";
            v25 = 4;
          }

          else
          {
            v25 = 3;
            v1 = 0xD00000000000001BLL;
          }
        }

        else
        {
          v25 = 3;
          v1 = 0xD00000000000001BLL;
        }
      }

      else
      {
        v25 = 2;
        v1 = 0xD000000000000019;
      }
    }

    else
    {
      v25 = 2;
      v1 = 0xD000000000000019;
    }
  }

  else
  {
    v25 = 1;
  }

  sub_21CF8F278();
  swift_allocError();
  *v26 = v1;
  *(v26 + 8) = v2 | 0x8000000000000000;
  *(v26 + 16) = v25;
  return swift_willThrow();
}

uint64_t sub_21CF82A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[6] = v19;
  v9[7] = v8;
  v9[4] = a7;
  v9[5] = a8;
  v9[2] = a1;
  v9[3] = a2;
  v14 = *(*(type metadata accessor for PrivateMLRequest.Response(0) - 8) + 64) + 15;
  v15 = swift_task_alloc();
  v9[8] = v15;
  v16 = swift_task_alloc();
  v9[9] = v16;
  *v16 = v9;
  v16[1] = sub_21CF82B18;

  return sub_21CF903E0(v15, a3, a4, a5, a6);
}

uint64_t sub_21CF82B18()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_21CF82F80;
  }

  else
  {
    v3 = sub_21CF82C2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21CF82C2C()
{
  v1 = *(v0 + 56);
  v2 = v1 + *(type metadata accessor for PrivateCloudComputeTransport() + 24);
  v3 = sub_21D022484();
  v4 = sub_21D0228B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21CF72000, v3, v4, "Succeded in creating privateMLResponse.", v5, 2u);
    MEMORY[0x223D3ADE0](v5, -1, -1);
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 24);
  v17 = *(v0 + 32);

  v10 = swift_task_alloc();
  *(v0 + 88) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v17;
  *(v10 + 40) = v6;
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v9;
  v12 = *(MEMORY[0x277D85A10] + 4);
  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_21CF82DD8;
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);

  return MEMORY[0x282200830](v15, &unk_21D023640, v10, sub_21CF8F38C, v11, 0, 0, v14);
}

uint64_t sub_21CF82DD8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_21CF830EC;
  }

  else
  {
    v6 = *(v2 + 88);
    v5 = *(v2 + 96);

    v4 = sub_21CF82EFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CF82EFC()
{
  sub_21CF8F53C(*(v0 + 64), type metadata accessor for PrivateMLRequest.Response);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CF82F80()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = *(type metadata accessor for PrivateCloudComputeTransport() + 24);
  v4 = v1;
  v5 = sub_21D022484();
  v6 = sub_21D0228C4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_21CF72000, v5, v6, "failed no cached connection due to error: %@", v7, 0xCu);
    sub_21CF7F200(v8, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v8, -1, -1);
    MEMORY[0x223D3ADE0](v7, -1, -1);
  }

  v11 = v0[8];

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_21CF830EC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];

  sub_21CF8F53C(v3, type metadata accessor for PrivateMLRequest.Response);
  v4 = v0[14];
  v5 = v0[7];
  v6 = *(type metadata accessor for PrivateCloudComputeTransport() + 24);
  v7 = v4;
  v8 = sub_21D022484();
  v9 = sub_21D0228C4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_21CF72000, v8, v9, "failed no cached connection due to error: %@", v10, 0xCu);
    sub_21CF7F200(v11, &qword_27CE45280, &qword_21D0239D0);
    MEMORY[0x223D3ADE0](v11, -1, -1);
    MEMORY[0x223D3ADE0](v10, -1, -1);
  }

  v14 = v0[8];

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_21CF83288(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21CF83390;

  return v10(a1, a4);
}

uint64_t sub_21CF83390()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_21CF83484(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for PrivateCloudComputeTransport() + 24);
  v2 = sub_21D022484();
  v3 = sub_21D0228B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21CF72000, v2, v3, "Cancelling non cached task.", v4, 2u);
    MEMORY[0x223D3ADE0](v4, -1, -1);
  }

  if (qword_27CE451C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7[0] = xmmword_27CE46910;
  v7[1] = unk_27CE46920;
  v8 = byte_27CE46930;
  sub_21CF7F198(v7, &v6, &qword_27CE45288, &qword_21D023970);
  v5 = sub_21D01561C();
  sub_21CF7F200(v7, &qword_27CE45288, &qword_21D023970);
  if ((v5 & 1) == 0)
  {
    sub_21CF90D60();
  }
}

uint64_t sub_21CF835DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 456) = a8;
  *(v9 + 464) = v8;
  *(v9 + 57) = v35;
  *(v9 + 440) = a6;
  *(v9 + 448) = a7;
  *(v9 + 424) = a4;
  *(v9 + 432) = a5;
  *(v9 + 408) = a2;
  *(v9 + 416) = a3;
  *(v9 + 400) = a1;
  v10 = sub_21D021A74();
  *(v9 + 472) = v10;
  v11 = *(v10 - 8);
  *(v9 + 480) = v11;
  v12 = *(v11 + 64) + 15;
  *(v9 + 488) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45228, &unk_21D023540) - 8) + 64) + 15;
  *(v9 + 496) = swift_task_alloc();
  v14 = sub_21D021B14();
  *(v9 + 504) = v14;
  v15 = *(v14 - 8);
  *(v9 + 512) = v15;
  v16 = *(v15 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  *(v9 + 528) = swift_task_alloc();
  v17 = sub_21D021B34();
  *(v9 + 536) = v17;
  v18 = *(v17 - 8);
  *(v9 + 544) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 552) = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452F8, &qword_21D0236C8);
  *(v9 + 560) = v20;
  v21 = *(v20 - 8);
  *(v9 + 568) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 576) = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45300, &qword_21D0236D0);
  *(v9 + 584) = v23;
  v24 = *(v23 - 8);
  *(v9 + 592) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 600) = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45308, &qword_21D0236D8) - 8) + 64) + 15;
  *(v9 + 608) = swift_task_alloc();
  v27 = sub_21D021B54();
  *(v9 + 616) = v27;
  v28 = *(v27 - 8);
  *(v9 + 624) = v28;
  v29 = *(v28 + 64) + 15;
  *(v9 + 632) = swift_task_alloc();
  v30 = type metadata accessor for PrivateCloudComputeTransport();
  *(v9 + 640) = v30;
  v31 = *(v30 - 8);
  *(v9 + 648) = v31;
  *(v9 + 656) = *(v31 + 64);
  *(v9 + 664) = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45310, &qword_21D0236E0) - 8) + 64) + 15;
  *(v9 + 672) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21CF839B4, 0, 0);
}

uint64_t sub_21CF839B4()
{
  v204 = v0;
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];
  v5 = v0[57];
  v6 = v0[58];
  v196 = v0[56];
  v7 = v0[54];
  v198 = v0[53];
  v200 = v1;
  v8 = v0[52];
  v9 = sub_21D022774();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  sub_21CF8F644(v6, v2, type metadata accessor for PrivateCloudComputeTransport);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = (v3 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  v14 = v13 + v10;
  v15 = v0;
  sub_21CF8F6AC(v2, v14, type metadata accessor for PrivateCloudComputeTransport);
  *(v13 + v11) = v8;
  v16 = (v13 + v12);
  *v16 = v196;
  v16[1] = v5;
  v17 = (v13 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v17 = v198;
  v17[1] = v7;

  sub_21D00F69C(0, 0, v200, &unk_21D0236F0, v13);

  if (!*(v8 + 16) || (v18 = v0[52], v19 = sub_21CF9D320(0x636E657265666E69, 0xEC00000064692D65), (v20 & 1) == 0))
  {
    v27 = v0[58] + *(v0[80] + 24);
    v28 = sub_21D022484();
    v29 = sub_21D0228B4();
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_7:

      goto LABEL_8;
    }

    v30 = swift_slowAlloc();
    *v30 = 134218240;
    *(v30 + 4) = 2048;
    *(v30 + 12) = 2048;
    *(v30 + 14) = 2048;
    _os_log_impl(&dword_21CF72000, v28, v29, "PrivateCloudComputePrivatedMLClientTransport prewarm - fallback to default inputTokenCountEstimate=%ld and default heuristicInputTokenCount=%ld", v30, 0x16u);
    v31 = v30;
LABEL_6:
    MEMORY[0x223D3ADE0](v31, -1, -1);
    goto LABEL_7;
  }

  v21 = (*(v0[52] + 56) + 16 * v19);
  v23 = *v21;
  v22 = v21[1];
  v24 = sub_21D021AC4();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();

  sub_21D021AB4();
  sub_21D021AA4();

  if (!v0[22])
  {
    v141 = v0[80];
    v142 = v0[58];
    sub_21CF7F200((v15 + 19), &qword_27CE45320, &qword_21D023700);
    v143 = *(v141 + 24);

    v28 = sub_21D022484();
    v144 = sub_21D0228B4();

    if (!os_log_type_enabled(v28, v144))
    {

      goto LABEL_8;
    }

    v145 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v203[0] = v146;
    *v145 = 136315138;
    v147 = sub_21CF9703C(v23, v22, v203);

    *(v145 + 4) = v147;
    _os_log_impl(&dword_21CF72000, v28, v144, "Failed to get resource bundle for inferenceID:%s", v145, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v146);
    MEMORY[0x223D3ADE0](v146, -1, -1);
    v31 = v145;
    goto LABEL_6;
  }

  v45 = v0[78];
  v46 = v15[77];
  v47 = v15[76];

  sub_21CF73FC8((v15 + 19), (v15 + 14));
  sub_21CF8F87C((v15 + 14), (v15 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45328, &qword_21D023708);
  v48 = swift_dynamicCast();
  v49 = *(v45 + 56);
  if (v48)
  {
    v50 = v15[79];
    v51 = v15[78];
    v52 = v15[77];
    v53 = v15[76];
    v54 = v15[75];
    v55 = v15[74];
    v56 = v15[73];
    v49(v53, 0, 1, v52);
    (*(v51 + 32))(v50, v53, v52);
    sub_21D021B44();
    sub_21D021AE4();
    (*(v55 + 8))(v54, v56);
    if (v15[37])
    {
      v57 = v15[72];
      sub_21CF73FC8(v15 + 17, (v15 + 29));
      v58 = v15[33];
      __swift_project_boxed_opaque_existential_1(v15 + 29, v15[32]);
      v59 = *(v58 + 8);
      sub_21D021AD4();
      v164 = v15[58];
      v165 = *(v15[80] + 24);
      v166 = sub_21D022484();
      v167 = sub_21D0228B4();
      if (os_log_type_enabled(v166, v167))
      {
        v169 = swift_slowAlloc();
        *v169 = 0;
        _os_log_impl(&dword_21CF72000, v166, v167, "Successfully fetched asset server configuration", v169, 2u);
        MEMORY[0x223D3ADE0](v169, -1, -1);
      }

      v170 = v15[72];
      v171 = v15[70];
      v172 = v15[69];

      sub_21D021A94();
      v173 = sub_21D022484();
      v174 = sub_21D0228B4();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        *v175 = 0;
        _os_log_impl(&dword_21CF72000, v173, v174, "Successfully got serverAsset metadata", v175, 2u);
        MEMORY[0x223D3ADE0](v175, -1, -1);
      }

      v199 = v15[77];
      v202 = v15[79];
      v195 = v15[72];
      v197 = v15[78];
      v193 = v15[71];
      v194 = v15[70];
      v176 = v15[69];
      v177 = v15[68];
      v192 = v15[67];
      v178 = v15[66];
      v179 = v15[65];
      v180 = v15[63];
      v181 = v15[64];

      v182 = sub_21D021B24();
      v183 = MEMORY[0x223D395C0](v182);
      v185 = v184;
      v186 = *(v181 + 8);
      v186(v178, v180);
      if (v185)
      {
        v69 = 2048;
      }

      else
      {
        v69 = v183;
      }

      v187 = sub_21D021B24();
      v188 = MEMORY[0x223D395D0](v187);
      v190 = v189;
      v186(v179, v180);
      (*(v177 + 8))(v176, v192);
      (*(v193 + 8))(v195, v194);
      (*(v197 + 8))(v202, v199);
      __swift_destroy_boxed_opaque_existential_0(v15 + 14);
      if (v190)
      {
        v191 = 2048;
      }

      else
      {
        v191 = v188;
      }

      __swift_destroy_boxed_opaque_existential_0(v15 + 29);
      v15[85] = 0;
      if (qword_28121E0C0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v60 = unk_28121B261;
      v61 = *&qword_28121B258;
      *(v15 + 1) = xmmword_28121B248;
      *(v15 + 2) = v61;
      *(v15 + 41) = v60;
      sub_21CF7F198((v15 + 2), (v15 + 8), &qword_27CE45318, &qword_21D0236F8);
      v62 = sub_21D016038();
      v64 = v63;
      sub_21CF7F200((v15 + 2), &qword_27CE45318, &qword_21D0236F8);
      if ((v64 & 1) == 0)
      {
        v65 = v15[58] + *(v15[80] + 24);
        v66 = sub_21D022484();
        v67 = sub_21D0228B4();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 134217984;
          *(v68 + 4) = v62;
          _os_log_impl(&dword_21CF72000, v66, v67, "Setting input token count estimate from user default inputTokenCountEstimate=%ld", v68, 0xCu);
          MEMORY[0x223D3ADE0](v68, -1, -1);
        }

        v69 = v62;
      }

      v15[48] = v15[52];

      v70 = sub_21CF7FB9C(v69, 4096);
      v15[86] = v70;
      if (*(v70 + 16) && (v71 = sub_21CF9D320(0xD000000000000027, 0x800000021D02D0F0), (v72 & 1) != 0))
      {
        v73 = (*(v70 + 56) + 16 * v71);
        v75 = *v73;
        v74 = v73[1];

        v77 = v75;
      }

      else
      {
        v77 = 0;
        v76 = 0;
      }

      sub_21CF9FC9C(v77, v76, 0xD000000000000027, 0x800000021D02D0F0);
      if (*(v70 + 16) && (v78 = sub_21CF9D320(0xD000000000000023, 0x800000021D02D120), (v79 & 1) != 0))
      {
        v80 = (*(v70 + 56) + 16 * v78);
        v82 = *v80;
        v81 = v80[1];

        v84 = v82;
      }

      else
      {
        v84 = 0;
        v83 = 0;
      }

      sub_21CF9FC9C(v84, v83, 0xD000000000000023, 0x800000021D02D120);
      if (*(v70 + 16) && (v85 = sub_21CF9D320(0xD00000000000002FLL, 0x800000021D02D150), (v86 & 1) != 0))
      {
        v87 = (*(v70 + 56) + 16 * v85);
        v89 = *v87;
        v88 = v87[1];

        v91 = v89;
      }

      else
      {
        v91 = 0;
        v90 = 0;
      }

      sub_21CF9FC9C(v91, v90, 0xD00000000000002FLL, 0x800000021D02D150);
      if (*(v70 + 16) && (v92 = sub_21CF9D320(0xD00000000000002BLL, 0x800000021D02D180), (v93 & 1) != 0))
      {
        v94 = (*(v70 + 56) + 16 * v92);
        v96 = *v94;
        v95 = v94[1];

        v98 = v96;
      }

      else
      {
        v98 = 0;
        v97 = 0;
      }

      v99 = *(v15 + 57);
      sub_21CF9FC9C(v98, v97, 0xD00000000000002BLL, 0x800000021D02D180);
      v15[49] = 4096;
      v100 = sub_21D022B04();
      v102 = v101;
      v103 = v15[48];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v203[0] = v15[48];
      sub_21CFA3AC4(v100, v102, 0xD000000000000010, 0x800000021D02D470, isUniquelyReferenced_nonNull_native);
      v15[48] = v203[0];
      if (v99)
      {
        v105 = sub_21CF7FB9C(v191, 4096);
        if (*(v105 + 16) && (v106 = sub_21CF9D320(0xD000000000000027, 0x800000021D02D0F0), (v107 & 1) != 0))
        {
          v108 = (*(v105 + 56) + 16 * v106);
          v110 = *v108;
          v109 = v108[1];

          v112 = v110;
        }

        else
        {
          v112 = 0;
          v111 = 0;
        }

        sub_21CF9FC9C(v112, v111, 0xD000000000000031, 0x800000021D02D610);
        if (*(v105 + 16) && (v113 = sub_21CF9D320(0xD000000000000023, 0x800000021D02D120), (v114 & 1) != 0))
        {
          v115 = (*(v105 + 56) + 16 * v113);
          v116 = *v115;
          v117 = v115[1];
        }

        else
        {
          v116 = 0;
          v117 = 0;
        }

        v118 = v15[80];
        v119 = v15[58];

        sub_21CF9FC9C(v116, v117, 0xD00000000000002DLL, 0x800000021D02D650);
        v120 = v119 + *(v118 + 24);
        v121 = sub_21D022484();
        v122 = sub_21D0228B4();
        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          v203[0] = v124;
          *v123 = 136315138;
          swift_beginAccess();
          v125 = v15[48];

          v126 = sub_21D022534();
          v128 = v127;

          v129 = sub_21CF9703C(v126, v128, v203);

          *(v123 + 4) = v129;
          _os_log_impl(&dword_21CF72000, v121, v122, "PrivateCloudComputePrivatedMLClientTransport imminent prewarm overridenWorkloadParameters=%s", v123, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v124);
          MEMORY[0x223D3ADE0](v124, -1, -1);
          MEMORY[0x223D3ADE0](v123, -1, -1);
        }
      }

      v130 = v15[58];
      v15[87] = *(v130 + *(v15[80] + 20));
      v131 = (v130 + *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 20));
      v132 = *v131;
      v133 = v131[1];
      swift_beginAccess();
      v134 = v15[48];
      v15[88] = v134;
      v135 = *(MEMORY[0x277D41300] + 4);

      v136 = swift_task_alloc();
      v15[89] = v136;
      *v136 = v15;
      v136[1] = sub_21CF84A24;
      v137 = v15[56];
      v138 = v15[57];
      v139 = v15[53];
      v140 = v15[54];

      return MEMORY[0x2821A1E30](v132, v133, v134, v137, v138, v139, v140);
    }

    v155 = v15[80];
    v156 = v15[58];
    sub_21CF7F200((v15 + 34), &qword_27CE45330, &qword_21D023710);
    v157 = v156 + *(v155 + 24);
    v158 = sub_21D022484();
    v159 = sub_21D0228B4();
    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      *v160 = 0;
      _os_log_impl(&dword_21CF72000, v158, v159, "Failed to get server configuration", v160, 2u);
      MEMORY[0x223D3ADE0](v160, -1, -1);
    }

    v161 = v15[79];
    v162 = v15[78];
    v163 = v15[77];

    (*(v162 + 8))(v161, v163);
  }

  else
  {
    v148 = v15[80];
    v149 = v15[76];
    v150 = v15[58];
    v49(v149, 1, 1, v15[77]);
    sub_21CF7F200(v149, &qword_27CE45308, &qword_21D0236D8);
    v151 = v150 + *(v148 + 24);
    v152 = sub_21D022484();
    v153 = sub_21D0228B4();
    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_21CF72000, v152, v153, "Failed to cast bundle to LLMBundle", v154, 2u);
      MEMORY[0x223D3ADE0](v154, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v15 + 14);
LABEL_8:
  v32 = v15[84];
  v33 = v15[83];
  v34 = v15[79];
  v35 = v15[76];
  v36 = v15[75];
  v37 = v15[72];
  v38 = v15[69];
  v39 = v15[66];
  v40 = v15[65];
  v41 = v15;
  v42 = v15[62];
  v201 = v41[61];

  v43 = v41[1];

  return v43();
}

uint64_t sub_21CF84A24()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_21CF84B3C, 0, 0);
}

uint64_t sub_21CF84B3C()
{
  if ((*(v0 + 57) & 1) == 0)
  {
    v24 = *(v0 + 688);
    v25 = *(v0 + 640);
    v26 = *(v0 + 464);

    v27 = v26 + *(v25 + 24);
    v28 = sub_21D022484();
    v29 = sub_21D0228B4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21CF72000, v28, v29, "PrivateCloudComputePrivatedMLClientTransport prewarm - default", v30, 2u);
      MEMORY[0x223D3ADE0](v30, -1, -1);
    }

    v31 = *(v0 + 704);

    goto LABEL_14;
  }

  v1 = *(v0 + 496);
  v3 = *(v0 + 472);
  v2 = *(v0 + 480);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = sub_21D021C54();
  *(v0 + 720) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v0 + 728) = v7;
  v9 = *(v7 + 64) + 15;
  v69 = swift_task_alloc();
  *(v0 + 736) = v69;
  sub_21D021A44();
  result = (*(v2 + 48))(v1, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v11 = *(v0 + 704);
  v12 = *(v0 + 688);
  v13 = *(v0 + 480);
  v14 = *(v0 + 488);
  v15 = *(v0 + 472);
  v16 = *(v0 + 440);

  (*(v13 + 16))(v14, v16, v15);
  v17 = *(v11 + 16);

  v65 = v8;
  v66 = v6;
  if (v17 && (v18 = *(v0 + 704), v19 = sub_21CF9D320(0x75622D656C707061, 0xEE006469656C646ELL), (v20 & 1) != 0))
  {
    v21 = (*(*(v0 + 704) + 56) + 16 * v19);
    v22 = v21[1];
    v23 = *(v0 + 456);
  }

  else
  {
    v32 = *(v0 + 456);
    v21 = (v0 + 448);
  }

  v33 = *(v0 + 704);
  v67 = *v21;
  v68 = *(v0 + 680);
  v35 = *(v0 + 488);
  v34 = *(v0 + 496);
  v36 = *(v0 + 448);
  v38 = *(v0 + 424);
  v37 = *(v0 + 432);

  sub_21D021BF4();

  *(v0 + 744) = sub_21CF82760(v39);
  *(v0 + 752) = v40;
  v41 = *(v0 + 704);
  if (v68)
  {

    v42 = *(v0 + 464) + *(*(v0 + 640) + 24);
    v43 = sub_21D022484();
    v44 = sub_21D0228C4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_21CF72000, v43, v44, "PrivateCloudComputePrivatedMLClientTransport prewarm - failed pccc connection", v45, 2u);
      MEMORY[0x223D3ADE0](v45, -1, -1);
    }

    v46 = *(v0 + 704);
    (*(*(v0 + 728) + 8))(*(v0 + 736), *(v0 + 720));

LABEL_14:
    v47 = *(v0 + 672);
    v48 = *(v0 + 664);
    v49 = *(v0 + 632);
    v50 = *(v0 + 608);
    v51 = *(v0 + 600);
    v52 = *(v0 + 576);
    v53 = *(v0 + 552);
    v54 = *(v0 + 528);
    v55 = *(v0 + 520);
    v56 = *(v0 + 496);
    v70 = *(v0 + 488);

    v57 = *(v0 + 8);

    return v57();
  }

  v58 = *(v0 + 696);

  v59 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45278, &unk_21D023620) - 8) + 64) + 15;
  v60 = swift_task_alloc();
  *(v0 + 760) = v60;
  (*(v65 + 16))(v60, v69, v66);
  (*(v65 + 56))(v60, 0, 1, v66);
  v61 = type metadata accessor for PrivateMLClientCloudComputeConnection(0);
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();

  v64 = swift_task_alloc();
  *(v0 + 768) = v64;
  *v64 = v0;
  v64[1] = sub_21CF8509C;

  return sub_21CF90F00(v60, v58, 0, 0);
}

uint64_t sub_21CF8509C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 768);
  v9 = *v2;
  v3[97] = a1;
  v3[98] = v1;

  if (v1)
  {
    v5 = v3[94];

    v6 = sub_21CF852FC;
  }

  else
  {
    v7 = v3[95];

    v6 = sub_21CF851C4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_21CF851C4()
{
  if (qword_27CE44EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CE537D8;
  *(v0 + 792) = qword_27CE537D8;

  return MEMORY[0x2822009F8](sub_21CF8525C, v1, 0);
}

uint64_t sub_21CF8525C()
{
  v1 = v0[99];
  v2 = v0[98];
  sub_21CF98B58(v0[97], v0[93], v0[94]);
  v0[100] = v2;
  v3 = v0[94];

  if (v2)
  {
    v4 = sub_21CF855EC;
  }

  else
  {
    v4 = sub_21CF854B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21CF852FC()
{
  v1 = v0[95];

  v2 = v0[98];
  v3 = v0[58] + *(v0[80] + 24);
  v4 = sub_21D022484();
  v5 = sub_21D0228C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21CF72000, v4, v5, "PrivateCloudComputePrivatedMLClientTransport prewarm - failed pccc connection", v6, 2u);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }

  v7 = v0[88];
  (*(v0[91] + 8))(v0[92], v0[90]);

  v8 = v0[84];
  v9 = v0[83];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[72];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[62];
  v20 = v0[61];

  v18 = v0[1];

  return v18();
}

uint64_t sub_21CF854B8()
{
  v1 = v0[97];

  v2 = v0[88];
  (*(v0[91] + 8))(v0[92], v0[90]);

  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[79];
  v6 = v0[76];
  v7 = v0[75];
  v8 = v0[72];
  v9 = v0[69];
  v10 = v0[66];
  v11 = v0[65];
  v12 = v0[62];
  v15 = v0[61];

  v13 = v0[1];

  return v13();
}

uint64_t sub_21CF855EC()
{
  v1 = v0[97];

  v2 = v0[100];
  v3 = v0[58] + *(v0[80] + 24);
  v4 = sub_21D022484();
  v5 = sub_21D0228C4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_21CF72000, v4, v5, "PrivateCloudComputePrivatedMLClientTransport prewarm - failed pccc connection", v6, 2u);
    MEMORY[0x223D3ADE0](v6, -1, -1);
  }

  v7 = v0[88];
  (*(v0[91] + 8))(v0[92], v0[90]);

  v8 = v0[84];
  v9 = v0[83];
  v10 = v0[79];
  v11 = v0[76];
  v12 = v0[75];
  v13 = v0[72];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[65];
  v17 = v0[62];
  v20 = v0[61];

  v18 = v0[1];

  return v18();
}

uint64_t sub_21CF857A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_21CF857D8, 0, 0);
}

uint64_t sub_21CF857D8()
{
  v1 = v0[2];
  v2 = *(v1 + *(type metadata accessor for PrivateCloudComputeTransport() + 20));
  v3 = (v1 + *(type metadata accessor for PrivateMLClient.Configuration.Transport.PrivateComputeConfiguration(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(MEMORY[0x277D412F8] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_21CF858AC;
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];

  return MEMORY[0x2821A1E28](v4, v5, v12, v10, v11, v8, v9);
}

uint64_t sub_21CF858AC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21CF859A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, unint64_t a5@<X8>)
{
  v1487 = a4;
  v1455 = a2;
  v1456 = a3;
  v1527 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45290, &qword_21D023650);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v1416 = &v1410 - v8;
  v1420 = type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata(0);
  v1415 = *(v1420 - 8);
  v9 = *(v1415 + 64);
  v10 = MEMORY[0x28223BE20](v1420);
  v1417 = &v1410 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v1419 = &v1410 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE45298, &qword_21D023658);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v1518 = &v1410 - v15;
  v1537 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable(0);
  v1436 = *(v1537 - 8);
  v16 = *(v1436 + 64);
  MEMORY[0x28223BE20](v1537);
  v1517 = (&v1410 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1530 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata(0);
  v1435 = *(v1530 - 8);
  v18 = *(v1435 + 64);
  v19 = MEMORY[0x28223BE20](v1530);
  v1492 = &v1410 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v1511 = &v1410 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v1510 = &v1410 - v24;
  MEMORY[0x28223BE20](v23);
  v1521 = &v1410 - v25;
  v1516 = type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData(0);
  v26 = *(*(v1516 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v1516);
  v1506 = (&v1410 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v1512 = &v1410 - v30;
  MEMORY[0x28223BE20](v29);
  v1499 = &v1410 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A0, &qword_21D023660);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v1505 = &v1410 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v1498 = &v1410 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v1497 = &v1410 - v39;
  MEMORY[0x28223BE20](v38);
  v1496 = &v1410 - v40;
  v1495 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText(0);
  v41 = *(*(v1495 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v1495);
  v1494 = &v1410 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v1493 = &v1410 - v44;
  v1522 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component(0);
  v1515 = *(v1522 - 8);
  v45 = *(v1515 + 64);
  v46 = MEMORY[0x28223BE20](v1522);
  v1535 = &v1410 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v1547 = (&v1410 - v48);
  v1482 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding(0);
  v1478 = *(v1482 - 8);
  v49 = *(v1478 + 64);
  v50 = MEMORY[0x28223BE20](v1482);
  v1489 = &v1410 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v1538 = &v1410 - v52;
  v1422 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate(0);
  v53 = *(*(v1422 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v1422);
  v1423 = &v1410 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v1424 = &v1410 - v56;
  v1500 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable(0);
  v1490 = *(v1500 - 1);
  v57 = v1490[8];
  v58 = MEMORY[0x28223BE20](v1500);
  v1513 = (&v1410 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  v1509 = (&v1410 - v60);
  v1439 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1(0);
  v61 = *(*(v1439 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v1439);
  v1421 = &v1410 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v1491 = (&v1410 - v64);
  v1546 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter(0);
  v1545 = *(v1546 - 1);
  v65 = v1545[8];
  MEMORY[0x28223BE20](v1546);
  v1565 = &v1410 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1502 = type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints(0);
  v1477 = *(v1502 - 8);
  v67 = *(v1477 + 64);
  MEMORY[0x28223BE20](v1502);
  v1479 = &v1410 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1540 = type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling(0);
  v69 = *(*(v1540 - 8) + 64);
  MEMORY[0x28223BE20](v1540);
  v1457 = &v1410 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1539 = type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling(0);
  v71 = *(*(v1539 - 8) + 64);
  MEMORY[0x28223BE20](v1539);
  v1442 = &v1410 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452A8, &qword_21D023668);
  v74 = *(*(v73 - 8) + 64);
  v75 = MEMORY[0x28223BE20](v73 - 8);
  v1438 = &v1410 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v75);
  v1437 = &v1410 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v1524 = (&v1410 - v80);
  v81 = MEMORY[0x28223BE20](v79);
  v1476 = &v1410 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v1474 = &v1410 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v1471 = &v1410 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v1468 = &v1410 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v1484 = (&v1410 - v90);
  v91 = MEMORY[0x28223BE20](v89);
  v1434 = &v1410 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v1462 = &v1410 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v1460 = &v1410 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v1536 = &v1410 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v1428 = &v1410 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v1544 = &v1410 - v102;
  MEMORY[0x28223BE20](v101);
  v1430 = &v1410 - v103;
  v1549 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions(0);
  v1534 = *(v1549 - 8);
  v104 = v1534[8];
  v105 = MEMORY[0x28223BE20](v1549);
  v1441 = &v1410 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x28223BE20](v105);
  v1440 = &v1410 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v1508 = (&v1410 - v110);
  v111 = MEMORY[0x28223BE20](v109);
  v1475 = &v1410 - v112;
  v113 = MEMORY[0x28223BE20](v111);
  v1472 = &v1410 - v114;
  v115 = MEMORY[0x28223BE20](v113);
  v1469 = &v1410 - v116;
  v117 = MEMORY[0x28223BE20](v115);
  v1466 = &v1410 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v1464 = &v1410 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v1433 = &v1410 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v1461 = &v1410 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v1458 = &v1410 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v1427 = &v1410 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v1426 = &v1410 - v130;
  MEMORY[0x28223BE20](v129);
  v1425 = &v1410 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B0, &qword_21D023670);
  v133 = *(*(v132 - 8) + 64);
  v134 = MEMORY[0x28223BE20](v132 - 8);
  v1504 = &v1410 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = MEMORY[0x28223BE20](v134);
  v1446 = &v1410 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v1445 = &v1410 - v139;
  v140 = MEMORY[0x28223BE20](v138);
  v1444 = &v1410 - v141;
  v142 = MEMORY[0x28223BE20](v140);
  v1443 = &v1410 - v143;
  v144 = MEMORY[0x28223BE20](v142);
  v1520 = &v1410 - v145;
  v146 = MEMORY[0x28223BE20](v144);
  v1454 = &v1410 - v147;
  v148 = MEMORY[0x28223BE20](v146);
  v1452 = &v1410 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v1450 = &v1410 - v151;
  v152 = MEMORY[0x28223BE20](v150);
  v1448 = &v1410 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v1473 = &v1410 - v155;
  v156 = MEMORY[0x28223BE20](v154);
  v1470 = &v1410 - v157;
  v158 = MEMORY[0x28223BE20](v156);
  v1467 = &v1410 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v1465 = &v1410 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v1483 = &v1410 - v163;
  v164 = MEMORY[0x28223BE20](v162);
  v1432 = &v1410 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v1459 = &v1410 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v1533 = &v1410 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v1541 = &v1410 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v1429 = &v1410 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v1532 = &v1410 - v175;
  MEMORY[0x28223BE20](v174);
  v177 = &v1410 - v176;
  v1543 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig(0);
  v1529 = *(v1543 - 8);
  v178 = v1529[8];
  v179 = MEMORY[0x28223BE20](v1543);
  v1414 = &v1410 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = MEMORY[0x28223BE20](v179);
  v1411 = &v1410 - v182;
  v183 = MEMORY[0x28223BE20](v181);
  v1410 = &v1410 - v184;
  v185 = MEMORY[0x28223BE20](v183);
  v1413 = &v1410 - v186;
  v187 = MEMORY[0x28223BE20](v185);
  v1412 = &v1410 - v188;
  v189 = MEMORY[0x28223BE20](v187);
  v1418 = &v1410 - v190;
  v191 = MEMORY[0x28223BE20](v189);
  v1519 = &v1410 - v192;
  v193 = MEMORY[0x28223BE20](v191);
  v1486 = &v1410 - v194;
  v195 = MEMORY[0x28223BE20](v193);
  v1485 = &v1410 - v196;
  v197 = MEMORY[0x28223BE20](v195);
  v1481 = &v1410 - v198;
  v199 = MEMORY[0x28223BE20](v197);
  v1480 = &v1410 - v200;
  v201 = MEMORY[0x28223BE20](v199);
  v1523 = (&v1410 - v202);
  v203 = MEMORY[0x28223BE20](v201);
  v1453 = &v1410 - v204;
  v205 = MEMORY[0x28223BE20](v203);
  v1451 = &v1410 - v206;
  v207 = MEMORY[0x28223BE20](v205);
  v1449 = &v1410 - v208;
  v209 = MEMORY[0x28223BE20](v207);
  v1447 = &v1410 - v210;
  v211 = MEMORY[0x28223BE20](v209);
  v1507 = &v1410 - v212;
  v213 = MEMORY[0x28223BE20](v211);
  v1528 = (&v1410 - v214);
  v215 = MEMORY[0x28223BE20](v213);
  v1503 = &v1410 - v216;
  v217 = MEMORY[0x28223BE20](v215);
  v1501 = &v1410 - v218;
  v219 = MEMORY[0x28223BE20](v217);
  v1525 = (&v1410 - v220);
  v221 = MEMORY[0x28223BE20](v219);
  v1463 = &v1410 - v222;
  v223 = MEMORY[0x28223BE20](v221);
  v1514 = &v1410 - v224;
  v225 = MEMORY[0x28223BE20](v223);
  v1488 = &v1410 - v226;
  v227 = MEMORY[0x28223BE20](v225);
  v1531 = &v1410 - v228;
  v229 = MEMORY[0x28223BE20](v227);
  v1431 = &v1410 - v230;
  MEMORY[0x28223BE20](v229);
  v232 = (&v1410 - v231);
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE452B8, &qword_21D023678);
  v234 = *(*(v233 - 8) + 64);
  v235 = MEMORY[0x28223BE20](v233 - 8);
  v237 = &v1410 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = MEMORY[0x28223BE20](v235);
  v240 = (&v1410 - v239);
  MEMORY[0x28223BE20](v238);
  v242 = &v1410 - v241;
  sub_21D021CE4();
  v243 = *(type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest(0) + 20);
  if (qword_27CE44F18 != -1)
  {
LABEL_502:
    swift_once();
  }

  v244 = qword_27CE459B0;
  v1548 = a5;
  v1542 = v243;
  *(a5 + v243) = qword_27CE459B0;
  v1526 = type metadata accessor for PrivateMLRequest(0);
  v245 = (v1527 + v1526[16]);
  v246 = *v245;
  v247 = *(v245 + 8);
  if (!v247)
  {

    v263 = v1442;
    sub_21D021CE4();
    v264 = v263 + *(v1539 + 20);
    *v264 = v246;
    *(v264 + 8) = 0;
    sub_21CF8F644(v263, v240, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    v265 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v265 - 8) + 56))(v240, 0, 1, v265);
    v266 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v267 = v1429;
    sub_21CF7F198(v244 + v266, v1429, &qword_27CE452B0, &qword_21D023670);
    v268 = v1529[6];
    v269 = v1543;
    v1540 = (v1529 + 6);
    v1539 = v268;
    if (v268(v267, 1, v1543) == 1)
    {
      v270 = v1431;
      sub_21D021CE4();
      v271 = *(v269 + 20);
      v272 = v1428;
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v270 + v271) = qword_28121D280;
      v273 = (v1539)(v267, 1, v269);

      if (v273 != 1)
      {
        sub_21CF7F200(v267, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v270 = v1431;
      sub_21CF8F6AC(v267, v1431, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v272 = v1428;
    }

    v314 = v269;
    v315 = *(v269 + 20);
    v316 = *(v270 + v315);
    v317 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF7F198(v316 + v317, v272, &qword_27CE452A8, &qword_21D023668);
    v318 = v1534[6];
    v319 = v272;
    v320 = v272;
    v321 = v1549;
    v322 = v318(v319, 1, v1549);
    v1541 = v318;
    if (v322 == 1)
    {
      v323 = v1426;
      sub_21CFC2680(v1426);
      v324 = v318(v320, 1, v321);
      v325 = v323;
      v270 = v1431;
      if (v324 != 1)
      {
        sub_21CF7F200(v320, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v325 = v1426;
      sub_21CF8F6AC(v320, v1426, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    sub_21CF8F4D4(v240, &v325[*(v1549 + 20)], &qword_27CE452B8, &qword_21D023678);
    v326 = *(v270 + v315);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v328 = *(v270 + v315);
    v255 = v314;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v329 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v330 = *(v329 + 48);
      v331 = *(v329 + 52);
      swift_allocObject();
      v328 = sub_21CFC4358(v328);
      *(v270 + v315) = v328;
    }

    v300 = v1548;
    v258 = v1542;
    v1540 = v1540 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v332 = v325;
    v333 = v1544;
    sub_21CF8F6AC(v332, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    v1536 = v1534[7];
    (v1536)(v333, 0, 1, v1549);
    v334 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v333, v328 + v334, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v335 = *&v258[v300];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_21CF8F53C(v1442, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
    }

    else
    {
      v336 = *&v258[v300];
      v337 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v338 = *(v337 + 48);
      v339 = *(v337 + 52);
      swift_allocObject();

      v341 = sub_21D00E8C4(v340);

      sub_21CF8F53C(v1442, type metadata accessor for Apple_Cloudml_Inference_Tie_NucleusSampling);
      v342 = *&v258[v300];
      *&v258[v300] = v341;
    }

    v313 = *&v258[v300];
    v312 = v270;
    goto LABEL_41;
  }

  if (v247 == 1)
  {

    v248 = v1457;
    sub_21D021CE4();
    v249 = v248 + *(v1540 + 20);
    *v249 = v246;
    *(v249 + 4) = 0;
    sub_21CF8F644(v248, v237, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    v250 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v250 - 8) + 56))(v237, 0, 1, v250);
    v251 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v252 = v244 + v251;
    v253 = v1541;
    sub_21CF7F198(v252, v1541, &qword_27CE452B0, &qword_21D023670);
    v254 = v1529[6];
    v255 = v1543;
    v1540 = (v1529 + 6);
    v1539 = v254;
    if (v254(v253, 1, v1543) == 1)
    {
      v256 = v1531;
      sub_21D021CE4();
      v257 = *(v255 + 20);
      v258 = v1542;
      v259 = v1549;
      v260 = v1534;
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *&v256[v257] = qword_28121D280;
      v261 = v1541;
      v262 = (v1539)(v1541, 1, v255);

      if (v262 != 1)
      {
        sub_21CF7F200(v261, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v256 = v1531;
      sub_21CF8F6AC(v253, v1531, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v258 = v1542;
      v259 = v1549;
      v260 = v1534;
    }

    v283 = *(v255 + 20);
    v284 = *&v256[v283];
    v285 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v286 = v284 + v285;
    v287 = v1536;
    sub_21CF7F198(v286, v1536, &qword_27CE452A8, &qword_21D023668);
    v288 = v260[6];
    v289 = v288(v287, 1, v259);
    v1541 = v288;
    if (v289 == 1)
    {
      v290 = v1427;
      sub_21CFC2680(v1427);
      v291 = v290;
      if (v288(v1536, 1, v259) != 1)
      {
        sub_21CF7F200(v1536, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v291 = v1427;
      sub_21CF8F6AC(v1536, v1427, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    sub_21CF8F4D4(v237, &v291[*(v259 + 20)], &qword_27CE452B8, &qword_21D023678);
    v292 = v1531;
    v293 = *&v1531[v283];
    v294 = swift_isUniquelyReferenced_nonNull_native();
    v295 = *&v292[v283];
    v296 = v1534;
    if ((v294 & 1) == 0)
    {
      v297 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v298 = *(v297 + 48);
      v299 = *(v297 + 52);
      swift_allocObject();
      v295 = sub_21CFC4358(v295);
      *&v292[v283] = v295;
    }

    v300 = v1548;
    v1540 = v1540 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v301 = v291;
    v302 = v1544;
    sub_21CF8F6AC(v301, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    v1536 = v296[7];
    (v1536)(v302, 0, 1, v1549);
    v303 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v302, v295 + v303, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v304 = *&v258[v300];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_21CF8F53C(v1457, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
    }

    else
    {
      v305 = *&v258[v300];
      v306 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v307 = *(v306 + 48);
      v308 = *(v306 + 52);
      swift_allocObject();

      v310 = sub_21D00E8C4(v309);

      sub_21CF8F53C(v1457, type metadata accessor for Apple_Cloudml_Inference_Tie_TopKSampling);
      v311 = *&v258[v300];
      *&v258[v300] = v310;
    }

    v312 = v1531;
    v313 = *&v258[v300];
LABEL_41:
    v343 = v1532;
    sub_21CF8F6AC(v312, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v1531 = v1529[7];
    (v1531)(v343, 0, 1, v255);
    v344 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v343, v313 + v344, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v345 = v258;
    goto LABEL_52;
  }

  *v242 = 1;
  v274 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v274 - 8) + 56))(v242, 0, 1, v274);
  v275 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v276 = v177;
  sub_21CF7F198(v244 + v275, v177, &qword_27CE452B0, &qword_21D023670);
  v277 = v1529[6];
  v278 = v177;
  v279 = v1543;
  v1540 = (v1529 + 6);
  v1539 = v277;
  if (v277(v278, 1, v1543) == 1)
  {

    sub_21D021CE4();
    v280 = *(v279 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v232 + v280) = qword_28121D280;
    v281 = (v1539)(v276, 1, v279);

    v282 = v1549;
    if (v281 != 1)
    {
      sub_21CF7F200(v276, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    sub_21CF8F6AC(v276, v232, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

    v282 = v1549;
  }

  v346 = *(v279 + 20);
  v347 = *(v232 + v346);
  v348 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v349 = v1430;
  sub_21CF7F198(v347 + v348, v1430, &qword_27CE452A8, &qword_21D023668);
  v350 = v1534;
  v351 = v1534[6];
  v352 = v351(v349, 1, v282);
  v1541 = v351;
  if (v352 == 1)
  {
    v353 = v1425;
    sub_21CFC2680(v1425);
    v354 = v351(v349, 1, v282);
    v355 = v353;
    v350 = v1534;
    if (v354 != 1)
    {
      sub_21CF7F200(v349, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v355 = v1425;
    sub_21CF8F6AC(v349, v1425, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  sub_21CF8F4D4(v242, &v355[*(v282 + 20)], &qword_27CE452B8, &qword_21D023678);
  v356 = *(v232 + v346);
  v357 = swift_isUniquelyReferenced_nonNull_native();
  v358 = *(v232 + v346);
  if ((v357 & 1) == 0)
  {
    v359 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v360 = *(v359 + 48);
    v361 = *(v359 + 52);
    swift_allocObject();
    v358 = sub_21CFC4358(v358);
    *(v232 + v346) = v358;
  }

  v1540 = v1540 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v362 = v355;
  v363 = v1544;
  sub_21CF8F6AC(v362, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v1536 = v350[7];
  (v1536)(v363, 0, 1, v282);
  v364 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v363, v358 + v364, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v345 = v1542;
  v300 = v1548;
  v365 = *(v1542 + v1548);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v366 = *&v345[v300];
    v367 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v368 = *(v367 + 48);
    v369 = *(v367 + 52);
    swift_allocObject();

    v371 = sub_21D00E8C4(v370);

    *&v345[v300] = v371;
  }

  v372 = *&v345[v300];
  v373 = v1532;
  sub_21CF8F6AC(v232, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v374 = v1543;
  v1531 = v1529[7];
  (v1531)(v373, 0, 1, v1543);
  v375 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v376 = v373;
  v255 = v374;
  sub_21CF8F4D4(v376, v372 + v375, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
LABEL_52:
  v377 = v1549;
  LODWORD(v1457) = *(v1527 + v1526[13]);
  v378 = v345;
  v379 = *&v345[v300];
  v380 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v381 = v379 + v380;
  v382 = v1533;
  sub_21CF7F198(v381, v1533, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v382, 1, v255) == 1)
  {
    v383 = v1488;
    sub_21D021CE4();
    v384 = *(v255 + 20);
    v385 = v1460;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v383 + v384) = qword_28121D280;
    v386 = v1533;
    v387 = (v1539)(v1533, 1, v255);

    if (v387 != 1)
    {
      sub_21CF7F200(v386, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v383 = v1488;
    sub_21CF8F6AC(v382, v1488, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v385 = v1460;
  }

  v388 = *(v255 + 20);
  v389 = *(v383 + v388);
  v390 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v389 + v390, v385, &qword_27CE452A8, &qword_21D023668);
  v391 = (v1534 + 6);
  v392 = v377;
  v393 = v1541;
  v394 = (v1541)(v385, 1, v377);
  v1533 = v391;
  if (v394 == 1)
  {
    v395 = v1458;
    sub_21CFC2680(v1458);
    v396 = v378;
    if (v393(v385, 1, v392) != 1)
    {
      sub_21CF7F200(v385, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v395 = v1458;
    sub_21CF8F6AC(v385, v1458, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    v396 = v378;
  }

  v397 = &v395[*(v392 + 28)];
  *v397 = v1457;
  v397[4] = 0;
  v398 = v1488;
  v399 = *(v1488 + v388);
  v400 = swift_isUniquelyReferenced_nonNull_native();
  v401 = *(v398 + v388);
  v402 = v1543;
  if ((v400 & 1) == 0)
  {
    v403 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v404 = *(v403 + 48);
    v405 = *(v403 + 52);
    swift_allocObject();
    v401 = sub_21CFC4358(v401);
    *(v398 + v388) = v401;
  }

  v406 = v1544;
  sub_21CF8F6AC(v395, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  v1534 += 7;
  (v1536)(v406, 0, 1, v392);
  v407 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v406, v401 + v407, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v408 = v1548;
  v409 = *&v396[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v410 = *&v396[v408];
    v411 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v412 = *(v411 + 48);
    v413 = *(v411 + 52);
    swift_allocObject();

    v415 = sub_21D00E8C4(v414);

    *&v396[v408] = v415;
  }

  v416 = *&v396[v408];
  v417 = v398;
  v418 = v1532;
  sub_21CF8F6AC(v417, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v1529 += 7;
  (v1531)(v418, 0, 1, v402);
  v419 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v418, v416 + v419, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v420 = *(v1527 + v1526[15]);
  v421 = *&v396[v408];
  v422 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v423 = v421 + v422;
  v424 = v1543;
  v425 = v1459;
  sub_21CF7F198(v423, v1459, &qword_27CE452B0, &qword_21D023670);
  v426 = (v1539)(v425, 1, v424);
  v427 = v1514;
  if (v426 == 1)
  {
    sub_21D021CE4();
    v428 = *(v424 + 20);
    v429 = v1462;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v427 + v428) = qword_28121D280;
    v430 = (v1539)(v425, 1, v424);

    v431 = v425;
    v432 = v1542;
    v433 = v1549;
    if (v430 != 1)
    {
      sub_21CF7F200(v431, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    sub_21CF8F6AC(v425, v1514, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v432 = v1542;
    v433 = v1549;
    v429 = v1462;
  }

  v434 = *(v424 + 20);
  v435 = *(v427 + v434);
  v436 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v435 + v436, v429, &qword_27CE452A8, &qword_21D023668);
  v437 = v1541;
  if ((v1541)(v429, 1, v433) == 1)
  {
    v438 = v1461;
    sub_21CFC2680(v1461);
    if (v437(v429, 1, v433) != 1)
    {
      sub_21CF7F200(v429, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v438 = v1461;
    sub_21CF8F6AC(v429, v1461, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v439 = &v438[v433[8]];
  *v439 = v420;
  v439[4] = 0;
  v440 = v1514;
  v441 = *(v1514 + v434);
  v442 = swift_isUniquelyReferenced_nonNull_native();
  v443 = *(v440 + v434);
  v444 = v1543;
  if ((v442 & 1) == 0)
  {
    v445 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v446 = *(v445 + 48);
    v447 = *(v445 + 52);
    swift_allocObject();
    v443 = sub_21CFC4358(v443);
    *(v440 + v434) = v443;
  }

  v448 = v1544;
  sub_21CF8F6AC(v438, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1536)(v448, 0, 1, v433);
  v449 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v448, v443 + v449, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v450 = v1548;
  v451 = *&v432[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v452 = *&v432[v450];
    v453 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v454 = *(v453 + 48);
    v455 = *(v453 + 52);
    swift_allocObject();

    v457 = sub_21D00E8C4(v456);

    *&v432[v450] = v457;
  }

  v458 = *&v432[v450];
  v459 = v1532;
  sub_21CF8F6AC(v1514, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v459, 0, 1, v444);
  v460 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v459, v458 + v460, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v461 = v1527;
  v462 = (v1527 + v1526[17]);
  v463 = v450;
  v464 = v1484;
  if ((v462[1] & 1) == 0)
  {
    v465 = *v462;
    v466 = *&v432[v463];
    v467 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v468 = v1432;
    sub_21CF7F198(v466 + v467, v1432, &qword_27CE452B0, &qword_21D023670);
    if ((v1539)(v468, 1, v444) == 1)
    {
      v469 = v1463;
      sub_21D021CE4();
      v470 = *(v444 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v469 + v470) = qword_28121D280;
      v471 = (v1539)(v468, 1, v444);

      if (v471 != 1)
      {
        sub_21CF7F200(v468, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v469 = v1463;
      sub_21CF8F6AC(v468, v1463, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v472 = *(v444 + 20);
    v473 = *(v469 + v472);
    v474 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v475 = v1434;
    sub_21CF7F198(v473 + v474, v1434, &qword_27CE452A8, &qword_21D023668);
    v476 = v1541;
    if ((v1541)(v475, 1, v433) == 1)
    {
      v477 = v1433;
      sub_21CFC2680(v1433);
      if (v476(v475, 1, v433) != 1)
      {
        sub_21CF7F200(v475, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v477 = v1433;
      sub_21CF8F6AC(v475, v1433, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v478 = &v477[v433[9]];
    *v478 = v465;
    v478[4] = 0;
    v479 = v1463;
    v480 = *(v1463 + v472);
    v481 = swift_isUniquelyReferenced_nonNull_native();
    v482 = *(v479 + v472);
    v483 = v1543;
    if ((v481 & 1) == 0)
    {
      v484 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v485 = *(v484 + 48);
      v486 = *(v484 + 52);
      swift_allocObject();
      v482 = sub_21CFC4358(v482);
      *(v479 + v472) = v482;
    }

    v487 = v1544;
    sub_21CF8F6AC(v477, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1536)(v487, 0, 1, v433);
    v488 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v487, v482 + v488, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v489 = v1548;
    v490 = *&v432[v1548];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v491 = *&v432[v489];
      v492 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v493 = *(v492 + 48);
      v494 = *(v492 + 52);
      swift_allocObject();

      v496 = sub_21D00E8C4(v495);

      *&v432[v489] = v496;
    }

    v497 = *&v432[v489];
    v498 = v1532;
    sub_21CF8F6AC(v479, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1531)(v498, 0, 1, v483);
    v444 = v483;
    v499 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v498, v497 + v499, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v461 = v1527;
    v463 = v489;
    v464 = v1484;
  }

  v500 = *(v461 + v1526[18]);
  v501 = *&v432[v463];
  v502 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v503 = v501 + v502;
  v504 = v1483;
  sub_21CF7F198(v503, v1483, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v504, 1, v444) == 1)
  {
    v505 = v1525;
    sub_21D021CE4();
    v506 = *(v444 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v505 + v506) = qword_28121D280;
    v507 = v1483;
    v508 = (v1539)(v1483, 1, v444);

    if (v508 != 1)
    {
      sub_21CF7F200(v507, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v505 = v1525;
    sub_21CF8F6AC(v504, v1525, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  }

  v509 = *(v444 + 20);
  v510 = *(v505 + v509);
  v511 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v510 + v511, v464, &qword_27CE452A8, &qword_21D023668);
  v512 = v1541;
  if ((v1541)(v464, 1, v433) == 1)
  {
    v513 = v1464;
    sub_21CFC2680(v1464);
    if (v512(v464, 1, v433) != 1)
    {
      sub_21CF7F200(v464, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v513 = v1464;
    sub_21CF8F6AC(v464, v1464, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v514 = &v513[v433[10]];
  *v514 = v500;
  v514[4] = 0;
  v515 = v1525;
  v516 = *(v1525 + v509);
  v517 = swift_isUniquelyReferenced_nonNull_native();
  v518 = *(v515 + v509);
  v519 = v1543;
  if ((v517 & 1) == 0)
  {
    v520 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v521 = *(v520 + 48);
    v522 = *(v520 + 52);
    swift_allocObject();
    v518 = sub_21CFC4358(v518);
    *(v515 + v509) = v518;
  }

  v523 = v1548;
  v524 = v1544;
  sub_21CF8F6AC(v513, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1536)(v524, 0, 1, v433);
  v525 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v524, v518 + v525, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v526 = *&v432[v523];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v527 = *&v432[v523];
    v528 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v529 = *(v528 + 48);
    v530 = *(v528 + 52);
    swift_allocObject();

    v532 = sub_21D00E8C4(v531);

    *&v432[v523] = v532;
  }

  v533 = *&v432[v523];
  v534 = v1532;
  sub_21CF8F6AC(v1525, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v534, 0, 1, v519);
  v535 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v534, v533 + v535, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v536 = *(v1527 + v1526[19]);
  v537 = *&v432[v523];
  v538 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v539 = v537 + v538;
  v540 = v1543;
  v541 = v1465;
  sub_21CF7F198(v539, v1465, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v541, 1, v540) == 1)
  {
    v542 = v1501;
    sub_21D021CE4();
    v543 = *(v540 + 20);
    v544 = v1466;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *&v542[v543] = qword_28121D280;
    v545 = (v1539)(v541, 1, v540);

    v546 = v1549;
    if (v545 != 1)
    {
      sub_21CF7F200(v541, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v542 = v1501;
    sub_21CF8F6AC(v541, v1501, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v546 = v1549;
    v544 = v1466;
  }

  v547 = *(v540 + 20);
  v548 = *&v542[v547];
  v549 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v550 = v1468;
  sub_21CF7F198(v548 + v549, v1468, &qword_27CE452A8, &qword_21D023668);
  v551 = v1541;
  if ((v1541)(v550, 1, v546) == 1)
  {
    sub_21CFC2680(v544);
    if (v551(v550, 1, v546) != 1)
    {
      sub_21CF7F200(v550, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    sub_21CF8F6AC(v550, v544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v552 = &v544[*(v546 + 44)];
  *v552 = v536;
  v552[4] = 0;
  v553 = v1501;
  v554 = *&v1501[v547];
  v555 = swift_isUniquelyReferenced_nonNull_native();
  v556 = *&v553[v547];
  if ((v555 & 1) == 0)
  {
    v557 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v558 = *(v557 + 48);
    v559 = *(v557 + 52);
    swift_allocObject();
    v556 = sub_21CFC4358(v556);
    *&v553[v547] = v556;
  }

  v560 = v1544;
  sub_21CF8F6AC(v544, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1536)(v560, 0, 1, v546);
  v561 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v560, v556 + v561, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v562 = v1548;
  v563 = v1542;
  v564 = *(v1542 + v1548);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v565 = *&v563[v562];
    v566 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v567 = *(v566 + 48);
    v568 = *(v566 + 52);
    swift_allocObject();

    v570 = sub_21D00E8C4(v569);

    *&v563[v562] = v570;
  }

  v571 = *&v563[v562];
  v572 = v1532;
  sub_21CF8F6AC(v553, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v572, 0, 1, v1543);
  v573 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v572, v571 + v573, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v574 = *(v1527 + v1526[20]);
  v575 = *&v563[v562];
  v576 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v577 = v575 + v576;
  v578 = v1543;
  v579 = v1467;
  sub_21CF7F198(v577, v1467, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v579, 1, v578) == 1)
  {
    v580 = v1503;
    sub_21D021CE4();
    v581 = *(v578 + 20);
    v582 = v1471;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *&v580[v581] = qword_28121D280;
    v583 = (v1539)(v579, 1, v578);

    v584 = v579;
    v585 = v1542;
    v586 = v1549;
    if (v583 != 1)
    {
      sub_21CF7F200(v584, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v580 = v1503;
    sub_21CF8F6AC(v579, v1503, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v585 = v1542;
    v586 = v1549;
    v582 = v1471;
  }

  v587 = *(v578 + 20);
  v588 = *&v580[v587];
  v589 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v588 + v589, v582, &qword_27CE452A8, &qword_21D023668);
  v590 = v1541;
  if ((v1541)(v582, 1, v586) == 1)
  {
    v591 = v1469;
    sub_21CFC2680(v1469);
    if (v590(v582, 1, v586) != 1)
    {
      sub_21CF7F200(v582, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v591 = v1469;
    sub_21CF8F6AC(v582, v1469, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v592 = &v591[*(v586 + 48)];
  *v592 = v574;
  v592[4] = 0;
  v593 = v1503;
  v594 = *&v1503[v587];
  v595 = swift_isUniquelyReferenced_nonNull_native();
  v596 = *&v593[v587];
  v597 = v1543;
  if ((v595 & 1) == 0)
  {
    v598 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v599 = *(v598 + 48);
    v600 = *(v598 + 52);
    swift_allocObject();
    v596 = sub_21CFC4358(v596);
    *&v593[v587] = v596;
  }

  v601 = v1544;
  sub_21CF8F6AC(v591, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1536)(v601, 0, 1, v586);
  v602 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v601, v596 + v602, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v603 = v1548;
  v604 = *&v585[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v605 = *&v585[v603];
    v606 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v607 = *(v606 + 48);
    v608 = *(v606 + 52);
    swift_allocObject();

    v610 = sub_21D00E8C4(v609);

    *&v585[v603] = v610;
  }

  v611 = *&v585[v603];
  v612 = v1532;
  sub_21CF8F6AC(v593, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v612, 0, 1, v597);
  v613 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v612, v611 + v613, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v614 = *(v1527 + v1526[21]);
  v615 = *&v585[v603];
  v616 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v617 = v615 + v616;
  v618 = v1543;
  v619 = v1470;
  sub_21CF7F198(v617, v1470, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v619, 1, v618) == 1)
  {
    v620 = v1528;
    sub_21D021CE4();
    v621 = *(v618 + 20);
    v622 = v1474;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v620 + v621) = qword_28121D280;
    v623 = (v1539)(v619, 1, v618);

    v624 = v619;
    v625 = v1542;
    v626 = v1549;
    if (v623 != 1)
    {
      sub_21CF7F200(v624, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v620 = v1528;
    sub_21CF8F6AC(v619, v1528, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v625 = v1542;
    v626 = v1549;
    v622 = v1474;
  }

  v627 = *(v618 + 20);
  v628 = *(v620 + v627);
  v629 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF7F198(v628 + v629, v622, &qword_27CE452A8, &qword_21D023668);
  v630 = v1541;
  if ((v1541)(v622, 1, v626) == 1)
  {
    v631 = v1472;
    sub_21CFC2680(v1472);
    if (v630(v622, 1, v626) != 1)
    {
      sub_21CF7F200(v622, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v631 = v1472;
    sub_21CF8F6AC(v622, v1472, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v632 = &v631[*(v626 + 52)];
  *v632 = v614;
  v632[8] = 0;
  v633 = v1528;
  v634 = *(v1528 + v627);
  v635 = swift_isUniquelyReferenced_nonNull_native();
  v636 = *(v633 + v627);
  v637 = v1543;
  if ((v635 & 1) == 0)
  {
    v638 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v639 = *(v638 + 48);
    v640 = *(v638 + 52);
    swift_allocObject();
    v636 = sub_21CFC4358(v636);
    *(v633 + v627) = v636;
  }

  v641 = v1544;
  sub_21CF8F6AC(v631, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1536)(v641, 0, 1, v626);
  v642 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v641, v636 + v642, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v643 = v1548;
  v644 = *&v625[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v645 = *&v625[v643];
    v646 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v647 = *(v646 + 48);
    v648 = *(v646 + 52);
    swift_allocObject();

    v650 = sub_21D00E8C4(v649);

    *&v625[v643] = v650;
  }

  v651 = *&v625[v643];
  v652 = v1532;
  sub_21CF8F6AC(v1528, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v652, 0, 1, v637);
  v653 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v652, v651 + v653, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v1528 = *(v1527 + v1526[23]);
  v654 = *&v625[v643];
  v655 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v656 = v654 + v655;
  v657 = v1543;
  v658 = v1473;
  sub_21CF7F198(v656, v1473, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v658, 1, v657) == 1)
  {
    v659 = v1507;
    sub_21D021CE4();
    v660 = *(v657 + 20);
    v661 = v1523;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v659 + v660) = qword_28121D280;
    v662 = (v1539)(v658, 1, v657);

    v663 = v1542;
    v664 = v1549;
    if (v662 != 1)
    {
      sub_21CF7F200(v658, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v659 = v1507;
    sub_21CF8F6AC(v658, v1507, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v663 = v1542;
    v664 = v1549;
    v661 = v1523;
  }

  v665 = *(v657 + 20);
  v666 = *(v659 + v665);
  v667 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  v668 = v1476;
  sub_21CF7F198(v666 + v667, v1476, &qword_27CE452A8, &qword_21D023668);
  v669 = v1541;
  if ((v1541)(v668, 1, v664) == 1)
  {
    v670 = v1475;
    sub_21CFC2680(v1475);
    if (v669(v668, 1, v664) != 1)
    {
      sub_21CF7F200(v668, &qword_27CE452A8, &qword_21D023668);
    }
  }

  else
  {
    v670 = v1475;
    sub_21CF8F6AC(v668, v1475, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  }

  v671 = &v670[*(v664 + 60)];
  *v671 = v1528;
  v671[8] = 0;
  v672 = v1507;
  v673 = *&v1507[v665];
  v674 = swift_isUniquelyReferenced_nonNull_native();
  v675 = *(v672 + v665);
  v676 = v1543;
  if ((v674 & 1) == 0)
  {
    v677 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v678 = *(v677 + 48);
    v679 = *(v677 + 52);
    swift_allocObject();
    v675 = sub_21CFC4358(v675);
    *(v672 + v665) = v675;
  }

  v680 = v670;
  v681 = v1544;
  sub_21CF8F6AC(v680, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
  (v1536)(v681, 0, 1, v664);
  v682 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
  swift_beginAccess();
  sub_21CF8F4D4(v681, v675 + v682, &qword_27CE452A8, &qword_21D023668);
  swift_endAccess();
  v683 = v1548;
  v684 = *&v663[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v685 = *&v663[v683];
    v686 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v687 = *(v686 + 48);
    v688 = *(v686 + 52);
    swift_allocObject();

    v690 = sub_21D00E8C4(v689);

    *&v663[v683] = v690;
  }

  v691 = *&v663[v683];
  v692 = v1532;
  sub_21CF8F6AC(v672, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v692, 0, 1, v676);
  v693 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v692, v691 + v693, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v694 = *(v1527 + v1526[24]);
  v695 = v694 + 56;
  v696 = 1 << *(v694 + 32);
  v697 = -1;
  if (v696 < 64)
  {
    v697 = ~(-1 << v696);
  }

  v698 = v697 & *(v694 + 56);
  v699 = ((v696 + 63) >> 6);
  v1501 = (v1477 + 56);
  v1514 = v694;

  v700 = 0;
  v701 = v1520;
  v1507 = v695;
  v1503 = v699;
  while (v698)
  {
    v705 = v661;
    v706 = v1543;
LABEL_177:
    v708 = *(v1514 + 48) + ((v700 << 10) | (16 * __clz(__rbit64(v698))));
    v709 = *(v708 + 8);
    v1528 = *v708;
    v710 = *(v1542 + v1548);
    v711 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF7F198(v710 + v711, v701, &qword_27CE452B0, &qword_21D023670);
    v712 = (v1539)(v701, 1, v706);
    v1525 = v709;
    if (v712 == 1)
    {

      v713 = v705;
      sub_21D021CE4();
      v714 = *(v706 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v705 + v714) = qword_28121D280;
      v715 = (v1539)(v701, 1, v706);

      v716 = v1549;
      if (v715 != 1)
      {
        sub_21CF7F200(v701, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      sub_21CF8F6AC(v701, v705, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
      v713 = v705;

      v716 = v1549;
    }

    v717 = *(v706 + 20);
    v718 = *(v713 + v717);
    v719 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v720 = v718 + v719;
    v721 = v1524;
    sub_21CF7F198(v720, v1524, &qword_27CE452A8, &qword_21D023668);
    v722 = v1541;
    if ((v1541)(v721, 1, v716) == 1)
    {
      v723 = v1508;
      *v1508 = MEMORY[0x277D84F90];
      v724 = v716[5];
      v725 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions.OneOf_SamplingStrategy(0);
      v726 = v723 + v724;
      v727 = v1524;
      (*(*(v725 - 8) + 56))(v726, 1, 1, v725);
      v728 = v723 + v716[6];
      sub_21D021CE4();
      v729 = v723 + v716[7];
      *v729 = 0;
      v729[4] = 1;
      v730 = v723 + v716[8];
      *v730 = 0;
      v730[4] = 1;
      v731 = v723 + v716[9];
      *v731 = 0;
      v731[4] = 1;
      v732 = v723 + v716[10];
      *v732 = 0;
      v732[4] = 1;
      v733 = v723 + v716[11];
      *v733 = 0;
      v733[4] = 1;
      v734 = v723 + v716[12];
      *v734 = 0;
      v734[4] = 1;
      v735 = v723 + v716[13];
      *v735 = 0;
      v735[8] = 1;
      v736 = v723 + v716[14];
      *v736 = 0;
      v736[8] = 1;
      v737 = v723 + v716[15];
      *v737 = 0;
      v737[8] = 1;
      v738 = v723 + v716[16];
      *v738 = 0;
      v738[4] = 1;
      v739 = v723 + v716[17];
      *v739 = 0;
      v739[4] = 1;
      *(v723 + v716[18]) = 2;
      v740 = v723 + v716[19];
      *v740 = 0;
      v740[4] = 1;
      (*v1501)(v723 + v716[20], 1, 1, v1502);
      if (v722(v727, 1, v716) != 1)
      {
        sub_21CF7F200(v727, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v723 = v1508;
      sub_21CF8F6AC(v721, v1508, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v741 = *v723;
    v742 = swift_isUniquelyReferenced_nonNull_native();
    v661 = v1523;
    if ((v742 & 1) == 0)
    {
      v741 = sub_21CFB4D00(0, *(v741 + 2) + 1, 1, v741);
    }

    v744 = *(v741 + 2);
    v743 = *(v741 + 3);
    v745 = v1525;
    if (v744 >= v743 >> 1)
    {
      v764 = v1525;
      v741 = sub_21CFB4D00((v743 > 1), v744 + 1, 1, v741);
      v745 = v764;
      v661 = v1523;
    }

    *(v741 + 2) = v744 + 1;
    v746 = &v741[16 * v744];
    *(v746 + 4) = v1528;
    *(v746 + 5) = v745;
    *v723 = v741;
    v747 = *(v661 + v717);
    v748 = swift_isUniquelyReferenced_nonNull_native();
    v749 = *(v661 + v717);
    if ((v748 & 1) == 0)
    {
      v750 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v751 = *(v750 + 48);
      v752 = *(v750 + 52);
      swift_allocObject();
      v749 = sub_21CFC4358(v749);
      *(v661 + v717) = v749;
    }

    v753 = v1549;
    v754 = v1544;
    sub_21CF8F6AC(v723, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1536)(v754, 0, 1, v753);
    v755 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v754, v749 + v755, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v756 = v1548;
    v664 = v1542;
    v757 = *(v1542 + v1548);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v758 = *(v756 + v664);
      v759 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v760 = *(v759 + 48);
      v761 = *(v759 + 52);
      swift_allocObject();

      v763 = sub_21D00E8C4(v762);

      *(v756 + v664) = v763;
    }

    v698 &= v698 - 1;
    v702 = *(v756 + v664);
    v703 = v1532;
    sub_21CF8F6AC(v661, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1531)(v703, 0, 1, v1543);
    v704 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v703, v702 + v704, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v701 = v1520;
    v695 = v1507;
    v699 = v1503;
  }

  v706 = v1543;
  while (1)
  {
    v707 = v700 + 1;
    if (__OFADD__(v700, 1))
    {
      __break(1u);
      goto LABEL_472;
    }

    if (v707 >= v699)
    {
      break;
    }

    v698 = *(v695 + 8 * v707);
    ++v700;
    if (v698)
    {
      v705 = v661;
      v700 = v707;
      goto LABEL_177;
    }
  }

  v765 = (v1527 + v1526[6]);
  v766 = *v765;
  v767 = v765[1];
  v768 = v1542;
  v769 = *(v1542 + v1548);
  v770 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v771 = v769 + v770;
  v772 = v1543;
  v773 = v1448;
  sub_21CF7F198(v771, v1448, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v773, 1, v772) == 1)
  {

    v774 = v1447;
    sub_21D021CE4();
    v775 = *(v772 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v774 + v775) = qword_28121D280;
    v776 = (v1539)(v773, 1, v772);

    if (v776 != 1)
    {
      sub_21CF7F200(v773, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v774 = v1447;
    sub_21CF8F6AC(v773, v1447, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  }

  v777 = *(v772 + 20);
  v778 = *(v774 + v777);
  v779 = swift_isUniquelyReferenced_nonNull_native();
  v780 = *(v774 + v777);
  if ((v779 & 1) == 0)
  {
    v781 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v782 = *(v781 + 48);
    v783 = *(v781 + 52);
    swift_allocObject();
    v780 = sub_21CFC4358(v780);
    *(v774 + v777) = v780;
  }

  swift_beginAccess();
  v784 = v780[3];
  v780[2] = v766;
  v780[3] = v767;

  v785 = v1548;
  v786 = *&v768[v1548];
  v787 = swift_isUniquelyReferenced_nonNull_native();
  v788 = v1543;
  if ((v787 & 1) == 0)
  {
    v789 = *&v768[v785];
    v790 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v791 = *(v790 + 48);
    v792 = *(v790 + 52);
    swift_allocObject();

    v794 = sub_21D00E8C4(v793);

    *&v768[v785] = v794;
  }

  v795 = *&v768[v785];
  v796 = v774;
  v797 = v768;
  v798 = v1532;
  sub_21CF8F6AC(v796, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v798, 0, 1, v788);
  v799 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v798, v795 + v799, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v800 = v1527 + v1526[7];
  v801 = *(v800 + 8);
  v1528 = *v800;
  v802 = *&v797[v785];
  v803 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v804 = v802 + v803;
  v805 = v1450;
  sub_21CF7F198(v804, v1450, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v805, 1, v788) == 1)
  {

    v806 = v1449;
    sub_21D021CE4();
    v807 = *(v788 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v806 + v807) = qword_28121D280;
    v808 = (v1539)(v805, 1, v788);

    v809 = v1542;
    if (v808 != 1)
    {
      sub_21CF7F200(v805, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v806 = v1449;
    sub_21CF8F6AC(v805, v1449, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

    v809 = v1542;
  }

  v810 = *(v1543 + 20);
  v811 = *(v806 + v810);
  v812 = swift_isUniquelyReferenced_nonNull_native();
  v813 = *(v806 + v810);
  if ((v812 & 1) == 0)
  {
    v814 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v815 = *(v814 + 48);
    v816 = *(v814 + 52);
    swift_allocObject();
    v813 = sub_21CFC4358(v813);
    *(v806 + v810) = v813;
  }

  v817 = v1528;
  swift_beginAccess();
  v818 = v813[7];
  v813[6] = v817;
  v813[7] = v801;

  v819 = v1548;
  v820 = *&v809[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v821 = *&v809[v819];
    v822 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v823 = *(v822 + 48);
    v824 = *(v822 + 52);
    swift_allocObject();

    v826 = sub_21D00E8C4(v825);

    *&v809[v819] = v826;
  }

  v827 = *&v809[v819];
  v828 = v1532;
  sub_21CF8F6AC(v806, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v829 = v1543;
  (v1531)(v828, 0, 1, v1543);
  v830 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v828, v827 + v830, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v831 = (v1527 + v1526[9]);
  v833 = *v831;
  v832 = v831[1];
  v834 = *&v809[v819];
  v835 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v836 = v834 + v835;
  v837 = v1452;
  sub_21CF7F198(v836, v1452, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v837, 1, v829) == 1)
  {

    v838 = v1451;
    sub_21D021CE4();
    v839 = *(v829 + 20);
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v838 + v839) = qword_28121D280;
    v840 = (v1539)(v837, 1, v829);

    v841 = v1542;
    if (v840 != 1)
    {
      sub_21CF7F200(v837, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v838 = v1451;
    sub_21CF8F6AC(v837, v1451, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);

    v841 = v1542;
  }

  v842 = *(v1543 + 20);
  v843 = *(v838 + v842);
  v844 = swift_isUniquelyReferenced_nonNull_native();
  v845 = *(v838 + v842);
  if ((v844 & 1) == 0)
  {
    v846 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v847 = *(v846 + 48);
    v848 = *(v846 + 52);
    swift_allocObject();
    v845 = sub_21CFC4358(v845);
    *(v838 + v842) = v845;
  }

  swift_beginAccess();
  v849 = v845[9];
  v845[8] = v833;
  v845[9] = v832;

  v850 = v1548;
  v851 = *&v841[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v852 = *&v841[v850];
    v853 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v854 = *(v853 + 48);
    v855 = *(v853 + 52);
    swift_allocObject();

    v857 = sub_21D00E8C4(v856);

    *&v841[v850] = v857;
  }

  v858 = *&v841[v850];
  v859 = v1532;
  sub_21CF8F6AC(v838, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  v860 = v841;
  v861 = v1543;
  (v1531)(v859, 0, 1, v1543);
  v862 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v859, v858 + v862, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v863 = v1527 + v1526[26];
  v864 = sub_21D022764();
  v865 = *&v860[v850];
  v866 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  v867 = v865 + v866;
  v868 = v861;
  v869 = v1454;
  sub_21CF7F198(v867, v1454, &qword_27CE452B0, &qword_21D023670);
  if ((v1539)(v869, 1, v861) == 1)
  {
    v870 = v1453;
    sub_21D021CE4();
    v871 = *(v861 + 20);
    v872 = v1481;
    if (qword_28121D278 != -1)
    {
      swift_once();
    }

    *(v870 + v871) = qword_28121D280;
    v873 = (v1539)(v869, 1, v868);

    v874 = v1542;
    if (v873 != 1)
    {
      sub_21CF7F200(v869, &qword_27CE452B0, &qword_21D023670);
    }
  }

  else
  {
    v870 = v1453;
    sub_21CF8F6AC(v869, v1453, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v874 = v1542;
    v872 = v1481;
  }

  v875 = v864;
  v876 = *(v868 + 20);
  v877 = *(v870 + v876);
  v878 = swift_isUniquelyReferenced_nonNull_native();
  v879 = *(v870 + v876);
  if ((v878 & 1) == 0)
  {
    v880 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v881 = *(v880 + 48);
    v882 = *(v880 + 52);
    swift_allocObject();
    v879 = sub_21CFC4358(v879);
    *(v870 + v876) = v879;
  }

  v664 = v1548;
  v883 = v879 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__taskPriority;
  swift_beginAccess();
  *v883 = v875;
  v883[8] = 0;
  v884 = *&v874[v664];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v885 = *&v874[v664];
    v886 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v887 = *(v886 + 48);
    v888 = *(v886 + 52);
    swift_allocObject();

    v890 = sub_21D00E8C4(v889);

    *&v874[v664] = v890;
  }

  v891 = *&v874[v664];
  v892 = v1532;
  sub_21CF8F6AC(v870, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v892, 0, 1, v868);
  v893 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v892, v891 + v893, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  v894 = v1527;
  v895 = (v1527 + v1526[8]);
  v896 = *v895;
  v897 = v895[1];
  v898 = HIBYTE(v897) & 0xF;
  if ((v897 & 0x2000000000000000) == 0)
  {
    v898 = v896 & 0xFFFFFFFFFFFFLL;
  }

  if (v898)
  {
    v899 = *&v874[v664];
    v900 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v901 = v899 + v900;
    v902 = v1543;
    v903 = v1443;
    sub_21CF7F198(v901, v1443, &qword_27CE452B0, &qword_21D023670);
    if ((v1539)(v903, 1, v902) == 1)
    {

      v904 = v1480;
      sub_21D021CE4();
      v905 = *(v902 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v904 + v905) = qword_28121D280;
      v906 = v1443;
      v907 = (v1539)(v1443, 1, v902);

      v872 = v1481;
      if (v907 != 1)
      {
        sub_21CF7F200(v906, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v904 = v1480;
      sub_21CF8F6AC(v903, v1480, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v908 = *(v902 + 20);
    v909 = *(v904 + v908);
    v910 = swift_isUniquelyReferenced_nonNull_native();
    v911 = *(v904 + v908);
    if ((v910 & 1) == 0)
    {
      v912 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v913 = *(v912 + 48);
      v914 = *(v912 + 52);
      swift_allocObject();
      v911 = sub_21CFC4358(v911);
      *(v904 + v908) = v911;
    }

    swift_beginAccess();
    v915 = v911[5];
    v911[4] = v896;
    v911[5] = v897;

    v916 = *&v874[v664];
    v917 = swift_isUniquelyReferenced_nonNull_native();
    v868 = v1543;
    if ((v917 & 1) == 0)
    {
      v918 = *&v874[v664];
      v919 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v920 = *(v919 + 48);
      v921 = *(v919 + 52);
      swift_allocObject();

      v923 = sub_21D00E8C4(v922);

      *&v874[v664] = v923;
    }

    v924 = *&v874[v664];
    v925 = v1532;
    sub_21CF8F6AC(v1480, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1531)(v925, 0, 1, v868);
    v926 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v925, v924 + v926, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v894 = v1527;
  }

  v927 = (v894 + v1526[27]);
  v928 = *v927;
  v929 = v927[1];
  v930 = HIBYTE(v929) & 0xF;
  if ((v929 & 0x2000000000000000) == 0)
  {
    v930 = v928 & 0xFFFFFFFFFFFFLL;
  }

  if (v930)
  {
    v931 = *&v874[v664];
    v932 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v933 = v931 + v932;
    v934 = v1543;
    v935 = v1444;
    sub_21CF7F198(v933, v1444, &qword_27CE452B0, &qword_21D023670);
    if ((v1539)(v935, 1, v934) == 1)
    {

      sub_21D021CE4();
      v936 = *(v934 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v872 + v936) = qword_28121D280;
      v937 = v1444;
      v938 = (v1539)(v1444, 1);

      if (v938 != 1)
      {
        sub_21CF7F200(v937, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      sub_21CF8F6AC(v935, v872, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v939 = *(v1543 + 20);
    v940 = *(v872 + v939);
    v941 = swift_isUniquelyReferenced_nonNull_native();
    v942 = *(v872 + v939);
    if ((v941 & 1) == 0)
    {
      v943 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v944 = *(v943 + 48);
      v945 = *(v943 + 52);
      swift_allocObject();
      v942 = sub_21CFC4358(v942);
      *(v872 + v939) = v942;
    }

    v946 = (v942 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__tokenizerName);
    swift_beginAccess();
    v947 = v946[1];
    *v946 = v928;
    v946[1] = v929;

    v948 = *&v874[v664];
    v949 = swift_isUniquelyReferenced_nonNull_native();
    v868 = v1543;
    if ((v949 & 1) == 0)
    {
      v950 = *&v874[v664];
      v951 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v952 = *(v951 + 48);
      v953 = *(v951 + 52);
      swift_allocObject();

      v955 = sub_21D00E8C4(v954);

      *&v874[v664] = v955;
    }

    v956 = *&v874[v664];
    v957 = v1532;
    sub_21CF8F6AC(v872, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1531)(v957, 0, 1, v868);
    v958 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v957, v956 + v958, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v894 = v1527;
  }

  v959 = *(v894 + v1526[11]);
  if (v959)
  {
    v960 = *&v874[v664];
    v961 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v962 = v960 + v961;
    v963 = v1445;
    sub_21CF7F198(v962, v1445, &qword_27CE452B0, &qword_21D023670);
    if ((v1539)(v963, 1, v868) == 1)
    {
      v964 = v1485;
      sub_21D021CE4();
      v965 = *(v868 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v964 + v965) = qword_28121D280;
      v966 = v1445;
      v967 = (v1539)(v1445, 1, v868);

      if (v967 != 1)
      {
        sub_21CF7F200(v966, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v964 = v1485;
      sub_21CF8F6AC(v963, v1485, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v968 = *(v868 + 20);
    v969 = *(v964 + v968);
    v970 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v971 = v969 + v970;
    v972 = v1437;
    sub_21CF7F198(v971, v1437, &qword_27CE452A8, &qword_21D023668);
    v973 = v1549;
    v974 = v1541;
    if ((v1541)(v972, 1, v1549) == 1)
    {
      v975 = v1440;
      sub_21CFC2680(v1440);
      if (v974(v972, 1, v973) != 1)
      {
        sub_21CF7F200(v972, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v975 = v1440;
      sub_21CF8F6AC(v972, v1440, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v976 = &v975[*(v1549 + 76)];
    *v976 = v959;
    v976[4] = 0;
    v977 = v1485;
    v978 = *(v1485 + v968);
    v979 = swift_isUniquelyReferenced_nonNull_native();
    v980 = *(v977 + v968);
    if ((v979 & 1) == 0)
    {
      v981 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v982 = *(v981 + 48);
      v983 = *(v981 + 52);
      swift_allocObject();
      v980 = sub_21CFC4358(v980);
      *(v977 + v968) = v980;
    }

    v868 = v1543;
    v984 = v1544;
    sub_21CF8F6AC(v975, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1536)(v984, 0, 1, v1549);
    v985 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v984, v980 + v985, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v664 = v1548;
    v986 = *&v874[v1548];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v987 = *&v874[v664];
      v988 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v989 = *(v988 + 48);
      v990 = *(v988 + 52);
      swift_allocObject();

      v992 = sub_21D00E8C4(v991);

      *&v874[v664] = v992;
    }

    v993 = *&v874[v664];
    v994 = v1532;
    sub_21CF8F6AC(v1485, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1531)(v994, 0, 1, v868);
    v995 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v994, v993 + v995, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v894 = v1527;
  }

  v996 = v894 + v1526[35];
  v997 = *(v996 + 16);
  if (v997 != 255)
  {
    v1552 = *v996;
    LOBYTE(v1553) = v997;
    sub_21CF97934(&v1552, v1479);
    v998 = *&v874[v664];
    v999 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v1000 = v998 + v999;
    v1001 = v1446;
    sub_21CF7F198(v1000, v1446, &qword_27CE452B0, &qword_21D023670);
    if ((v1539)(v1001, 1, v868) == 1)
    {
      v1002 = v1486;
      sub_21D021CE4();
      v1003 = *(v868 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v1002 + v1003) = qword_28121D280;
      v1004 = v1446;
      v1005 = (v1539)(v1446, 1, v868);

      if (v1005 != 1)
      {
        sub_21CF7F200(v1004, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v1002 = v1486;
      sub_21CF8F6AC(v1001, v1486, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v1006 = *(v868 + 20);
    v1007 = *(v1002 + v1006);
    v1008 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    v1009 = v1007 + v1008;
    v1010 = v1438;
    sub_21CF7F198(v1009, v1438, &qword_27CE452A8, &qword_21D023668);
    v1011 = v1549;
    v1012 = v1541;
    if ((v1541)(v1010, 1, v1549) == 1)
    {
      v1013 = v1012;
      v1014 = v1441;
      sub_21CFC2680(v1441);
      v1015 = v1011;
      v1016 = v1014;
      if (v1013(v1010, 1, v1015) != 1)
      {
        sub_21CF7F200(v1010, &qword_27CE452A8, &qword_21D023668);
      }
    }

    else
    {
      v1016 = v1441;
      sub_21CF8F6AC(v1010, v1441, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    }

    v1017 = *(v1549 + 80);
    sub_21CF7F200(&v1016[v1017], &qword_27CE452D8, "ҷ");
    sub_21CF8F6AC(v1479, &v1016[v1017], type metadata accessor for Apple_Cloudml_Inference_Tie_Constraints);
    (*v1501)(&v1016[v1017], 0, 1, v1502);
    v1018 = v1486;
    v1019 = *(v1486 + v1006);
    v1020 = swift_isUniquelyReferenced_nonNull_native();
    v1021 = *(v1018 + v1006);
    if ((v1020 & 1) == 0)
    {
      v1022 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v1023 = *(v1022 + 48);
      v1024 = *(v1022 + 52);
      swift_allocObject();
      v1021 = sub_21CFC4358(v1021);
      *(v1018 + v1006) = v1021;
    }

    v1025 = v1543;
    v1026 = v1016;
    v1027 = v1544;
    sub_21CF8F6AC(v1026, v1544, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig.GenerationOptions);
    (v1536)(v1027, 0, 1, v1549);
    v1028 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__options;
    swift_beginAccess();
    sub_21CF8F4D4(v1027, v1021 + v1028, &qword_27CE452A8, &qword_21D023668);
    swift_endAccess();
    v1029 = *&v874[v664];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1030 = *&v874[v664];
      v1031 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v1032 = *(v1031 + 48);
      v1033 = *(v1031 + 52);
      swift_allocObject();

      v1035 = sub_21D00E8C4(v1034);

      *&v874[v664] = v1035;
    }

    v1036 = *&v874[v664];
    v1037 = v1532;
    sub_21CF8F6AC(v1486, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    (v1531)(v1037, 0, 1, v1025);
    v1038 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    sub_21CF8F4D4(v1037, v1036 + v1038, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
  }

  v1040 = v1455;
  v1039 = v1456;
  v1041 = HIBYTE(v1456) & 0xF;
  if ((v1456 & 0x2000000000000000) == 0)
  {
    v1041 = v1455 & 0xFFFFFFFFFFFFLL;
  }

  if (v1041)
  {
    v1042 = *&v874[v664];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1043 = *&v874[v664];
      v1044 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v1045 = *(v1044 + 48);
      v1046 = *(v1044 + 52);
      swift_allocObject();

      v1048 = sub_21D00E8C4(v1047);

      *&v874[v664] = v1048;
    }

    v1049 = *&v874[v664];
    swift_beginAccess();
    v1050 = *(v1049 + 24);
    *(v1049 + 16) = v1040;
    *(v1049 + 24) = v1039;
  }

  v1051 = v1487;
  v1052 = *(v1487 + 2);
  if (v1052)
  {
    v1053 = sub_21CF8F5F8(&qword_28121C4D8, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
    v1549 = v1053;
    v1054 = (v1051 + 48);
    v664 = &unk_27CE45000;
    v237 = v1548;
    v1055 = v1542;
    do
    {
      v1059 = *(v1054 - 2);
      v1060 = *(v1054 - 1);
      v1061 = *v1054;
      MEMORY[0x28223BE20](v1053);
      *(&v1410 - 4) = v1062;
      *(&v1410 - 3) = v1060;
      *(&v1410 - 4) = v1063;

      v1064 = v1550;
      sub_21D021F04();
      v1550 = v1064;

      v1065 = *&v1055[v237];
      v1066 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
      swift_beginAccess();
      v1067 = *(v1065 + v1066);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1067 = sub_21CFB4CD8(0, v1067[2] + 1, 1, v1067);
      }

      v1069 = v1067[2];
      v1068 = v1067[3];
      if (v1069 >= v1068 >> 1)
      {
        v1067 = sub_21CFB4CD8(v1068 > 1, v1069 + 1, 1, v1067);
      }

      v1067[2] = v1069 + 1;
      sub_21CF8F6AC(v1565, v1067 + ((*(v1545 + 80) + 32) & ~*(v1545 + 80)) + v1545[9] * v1069, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest.Delimiter);
      v237 = v1548;
      v1055 = v1542;
      v1070 = *(v1542 + v1548);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1071 = *&v1055[v237];
        v1072 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
        v1073 = *(v1072 + 48);
        v1074 = *(v1072 + 52);
        swift_allocObject();

        v1076 = sub_21D00E8C4(v1075);

        *&v1055[v237] = v1076;
      }

      v1054 += 6;
      v1056 = *&v1055[v237];
      v1057 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__delimiters;
      swift_beginAccess();
      v1058 = *(v1056 + v1057);
      *(v1056 + v1057) = v1067;

      --v1052;
    }

    while (v1052);
  }

  else
  {
    v237 = v1548;
    v1055 = v1542;
  }

  v1077 = *&v1055[v237];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1078 = *&v1055[v237];
    v1079 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v1080 = *(v1079 + 48);
    v1081 = *(v1079 + 52);
    swift_allocObject();

    v1083 = sub_21D00E8C4(v1082);

    *&v1055[v237] = v1083;
  }

  v1084 = *&v1055[v237];
  v1085 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  *(v1084 + v1085) = 1;
  v1086 = v1526;
  v1087 = v1527;
  v1088 = (v1527 + v1526[29]);
  v1089 = *v1088;
  a5 = v1088[1];
  v1090 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v1090 = v1089 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1090)
  {
    goto LABEL_403;
  }

  v232 = v1491;
  v242 = MEMORY[0x277D84F90];
  *v1491 = MEMORY[0x277D84F90];
  v232[1] = v242;
  v1091 = v1439;
  v1092 = v232 + *(v1439 + 24);
  v1093 = v1087;
  v1094 = v1086;
  sub_21D021CE4();
  v1095 = (v232 + *(v1091 + 28));
  *v1095 = v1089;
  v1095[1] = a5;
  v1096 = *(v1093 + v1094[30]);
  v240 = (v1096 + 64);
  v1097 = 1 << *(v1096 + 32);
  v1098 = -1;
  if (v1097 < 64)
  {
    v1098 = ~(-1 << v1097);
  }

  v237 = v1098 & *(v1096 + 64);
  v243 = (v1097 + 63) >> 6;

  v1549 = v1096;

  v1099 = 0;
  v177 = v242;
  v1546 = (v1096 + 64);
  if (v237)
  {
    while (1)
    {
      v1565 = v177;
LABEL_324:
      v1101 = (v1099 << 10) | (16 * __clz(__rbit64(v237)));
      v1102 = (*(v1549 + 48) + v1101);
      v1103 = *v1102;
      v1104 = v1102[1];
      v1105 = (*(v1549 + 56) + v1101);
      v1106 = *v1105;
      v1107 = v1105[1];

      v232 = v1509;
      sub_21D021CE4();
      v1108 = v1500;
      v1109 = (v232 + v1500[5]);
      *v1109 = 0;
      v1109[1] = 0;
      v1110 = (v232 + v1108[6]);
      *v1109 = v1103;
      v1109[1] = v1104;
      *v1110 = v1106;
      v1110[1] = v1107;
      sub_21CF8F644(v232, v1513, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      v177 = v1565;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v177 = sub_21CFB4CB0(0, *(v177 + 2) + 1, 1, v177);
      }

      v242 = *(v177 + 2);
      v1111 = *(v177 + 3);
      a5 = v242 + 1;
      v240 = v1546;
      if (v242 >= v1111 >> 1)
      {
        v177 = sub_21CFB4CB0(v1111 > 1, v242 + 1, 1, v177);
      }

      v237 &= v237 - 1;
      *(v177 + 2) = a5;
      sub_21CF8F6AC(v1513, &v177[((*(v1490 + 80) + 32) & ~*(v1490 + 80)) + v1490[9] * v242], type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      *v1491 = v177;
      sub_21CF8F53C(v1509, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.PromptTemplateVariable);
      if (!v237)
      {
        goto LABEL_320;
      }
    }
  }

  while (1)
  {
LABEL_320:
    v1100 = v1099 + 1;
    if (__OFADD__(v1099, 1))
    {
      __break(1u);
LABEL_492:
      __break(1u);
LABEL_493:
      __break(1u);
LABEL_494:
      __break(1u);
LABEL_495:
      __break(1u);
LABEL_496:
      __break(1u);
LABEL_497:
      __break(1u);
LABEL_498:
      __break(1u);
LABEL_499:
      __break(1u);
LABEL_500:
      __break(1u);
LABEL_501:
      __break(1u);
      goto LABEL_502;
    }

    if (v1100 >= v243)
    {
      break;
    }

    v237 = v240[v1100];
    ++v1099;
    if (v237)
    {
      v1565 = v177;
      v1099 = v1100;
      goto LABEL_324;
    }
  }

  v1112 = *(v1527 + v1526[32]);
  v1113 = v1112 + 64;
  v1114 = 1 << *(v1112 + 32);
  v1115 = -1;
  if (v1114 < 64)
  {
    v1115 = ~(-1 << v1114);
  }

  v177 = (v1115 & *(v1112 + 64));
  v240 = ((v1114 + 63) >> 6);
  v1525 = (v1436 + 56);
  v1503 = "tie_server_token_nanos1";
  v1513 = (v1435 + 56);
  v1514 = v1436 + 48;
  v1488 = v1112;

  v1116 = 0;
  v232 = &qword_21D023660;
  v1502 = xmmword_21D0235C0;
  v1490 = MEMORY[0x277D84F90];
  v237 = v1548;
  v1485 = v1113;
  v1484 = v240;
  v664 = v1537;
  if (v177)
  {
LABEL_337:
    while (1)
    {
      v1487 = v177;
      v1486 = v1116;
      v1118 = __clz(__rbit64(v177)) | (v1116 << 6);
      v1119 = *(v1488 + 56);
      v1120 = (*(v1488 + 48) + 16 * v1118);
      v1121 = v1120[1];
      v1565 = *v1120;
      v1122 = *(v1119 + 8 * v1118);

      v237 = v1538;
      sub_21D021CE4();
      v1123 = v1482;
      v1124 = (v237 + *(v1482 + 20));
      *v1124 = 0;
      v1124[1] = 0;
      v1125 = *v1525;
      v1536 = *(v1123 + 24);
      v1524 = v1125;
      (v1125)(v237 + v1536, 1, 1, v664);
      v1126 = v1122;
      *v1124 = v1565;
      v1124[1] = v1121;
      v1523 = *(v1122 + 2);
      if (v1523)
      {
        break;
      }

LABEL_396:

      sub_21CF8F644(v1538, v1489, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1490 = sub_21CFB4C88(0, v1490[2] + 1, 1, v1490);
      }

      v1221 = v1487;
      a5 = v1490[2];
      v1222 = v1490[3];
      if (a5 >= v1222 >> 1)
      {
        v1490 = sub_21CFB4C88(v1222 > 1, a5 + 1, 1, v1490);
      }

      v177 = ((v1221 - 1) & v1221);
      v1223 = v1490;
      v1490[2] = a5 + 1;
      sub_21CF8F6AC(v1489, v1223 + ((*(v1478 + 80) + 32) & ~*(v1478 + 80)) + *(v1478 + 72) * a5, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      v1491[1] = v1223;
      sub_21CF8F53C(v1538, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
      v1113 = v1485;
      v240 = v1484;
      v1116 = v1486;
      v237 = v1548;
      if (!v177)
      {
        goto LABEL_333;
      }
    }

    v240 = 0;
    v1127 = (v1122 + 48);
    v177 = v1530;
    a5 = v1547;
    v1520 = v1126;
    while (1)
    {
      if (v240 >= *(v1126 + 2))
      {
        goto LABEL_492;
      }

      v1534 = v240;
      v1128 = *(v1127 - 2);
      v1129 = *(v1127 - 1);
      v1533 = v1127;
      v1130 = *v1127;
      v1131 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content(0);
      v1132 = *(v1131 - 8);
      v1133 = *(v1132 + 56);
      v1549 = v1131;
      v1545 = v1133;
      v1544 = v1132 + 56;
      (v1133)(a5, 1, 1);
      v1134 = *(v1522 + 20);
      v1546 = v1128;
      v1565 = v1129;
      sub_21CF8F3B4(v1128, v1129, v1130);
      sub_21D021CE4();
      LODWORD(v1541) = v1130;
      if (!(v1130 >> 6))
      {
        break;
      }

      if (v1130 >> 6 == 1)
      {
        v1135 = v1498;
        sub_21CF7F198(a5, v1498, &qword_27CE452A0, &qword_21D023660);
        v1136 = *(v1132 + 48);
        v1137 = v1549;
        v1528 = (v1132 + 48);
        v1509 = v1136;
        if ((v1136)(v1135, 1, v1549) == 1)
        {
          v1138 = v1546;
          sub_21CF8F3E0(v1546, v1565);
          sub_21CF7F200(v1135, &qword_27CE452A0, &qword_21D023660);
          v1139 = v1516;
          v1140 = v1499;
          v237 = v1138;
          goto LABEL_358;
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v1139 = v1516;
        v1140 = v1499;
        v237 = v1546;
        if (EnumCaseMultiPayload == 1)
        {
          sub_21CF8F6AC(v1135, v1499, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
          sub_21CF8F3E0(v237, v1565);
        }

        else
        {
          sub_21CF8F3E0(v1546, v1565);
          sub_21CF8F53C(v1135, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
LABEL_358:
          *v1140 = v1502;
          v1172 = v1140 + *(v1139 + 20);
          sub_21D021CE4();
          (*v1513)(v1140 + *(v1139 + 24), 1, 1, v177);
        }

        v1173 = v1505;
        v1174 = v1541 & 0x3F;
        sub_21CF8F4B4(*v1140, *(v1140 + 8));
        v1175 = v1565;
        *v1140 = v237;
        *(v1140 + 8) = v1175;
        v1176 = v1547;
        sub_21CF7F200(v1547, &qword_27CE452A0, &qword_21D023660);
        sub_21CF8F6AC(v1140, v1176, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
        swift_storeEnumTagMultiPayload();
        (v1545)(v1176, 0, 1, v1137);
        v1177 = v1521;
        sub_21D021CE4();
        v1178 = (v1177 + *(v177 + 5));
        *v1178 = 0;
        v1178[1] = 0;
        v1179 = (v1177 + *(v177 + 6));
        *v1179 = 0;
        v1508 = v1179;
        *(v1179 + 4) = 256;
        v1180 = (v1177 + *(v177 + 7));
        *v1180 = 0;
        v1501 = v1180;
        v1180[4] = 1;
        v1181 = v1177 + *(v177 + 8);
        *v1181 = 0;
        v1500 = v1181;
        *(v1181 + 4) = 1;
        v1182 = (v1177 + *(v177 + 9));
        *v1182 = 0;
        v1182[1] = 0;
        v1183 = (v1177 + *(v177 + 10));
        *v1183 = 0;
        v1183[1] = 0;
        v1184 = v1177 + *(v177 + 11);
        *v1184 = 0;
        *(v1184 + 8) = 256;
        v1185 = 2 * (v1174 == 1);
        if (!v1174)
        {
          v1185 = 1;
        }

        v1507 = v1185;
        if (qword_27CE451B0 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v1563[0] = xmmword_27CE46898;
        v1563[1] = unk_27CE468A8;
        v1564 = byte_27CE468B8;
        sub_21CF7F198(v1563, &v1552, &qword_27CE45288, &qword_21D023970);
        v1186 = sub_21D01561C();
        sub_21CF7F200(v1563, &qword_27CE45288, &qword_21D023970);
        v1187 = v1506;
        if (v1186)
        {
          v1188 = type metadata accessor for ImageParser();
          v1189 = *(v1188 + 48);
          v1190 = *(v1188 + 52);
          v243 = swift_allocObject();
          sub_21D022494();
          v1551[0] = 0;
          v1191 = v1550;
          sub_21CF9C6A0(v1551, &v1552);
          if (v1191)
          {

            swift_setDeallocating();
            ImageParser.__deallocating_deinit();
            swift_willThrow();

            sub_21CF8F434(v1546, v1565, v1541);
            v1319 = v1521;
            goto LABEL_438;
          }

          v1550 = 0;
          v177 = *(&v1552 + 1);
          a5 = v1552;
          v1192 = v1553;
          v237 = v1554;
          *v1184 = 4;
          *(v1184 + 8) = 1;
          sub_21CF8F3E0(a5, v177);
          v1193 = v1512;
          v232 = v1547;
          sub_21CFC1F90(v1512);
          swift_setDeallocating();
          ImageParser.__deallocating_deinit();
          sub_21CF8F4B4(*v1193, *(v1193 + 1));
          *v1193 = __PAIR128__(v177, a5);
          v240 = &qword_27CE452A0;
          sub_21CF7F200(v232, &qword_27CE452A0, &qword_21D023660);
          sub_21CF8F6AC(v1193, v232, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
          v242 = v1549;
          swift_storeEnumTagMultiPayload();
          (v1545)(v232, 0, 1, v242);
          sub_21CF8F460(a5, v177);
          if ((v1192 & 0x8000000000000000) != 0)
          {
            goto LABEL_498;
          }

          if (HIDWORD(v1192))
          {
            goto LABEL_499;
          }

          v1194 = v1501;
          *v1501 = v1192;
          v1194[4] = 0;
          if ((v237 & 0x8000000000000000) != 0)
          {
            goto LABEL_500;
          }

          if (HIDWORD(v237))
          {
            goto LABEL_501;
          }

          v1195 = v1500;
          *v1500 = v237;
          *(v1195 + 4) = 0;
          v242 = v1518;
          v177 = v1530;
          v1187 = v1506;
          v1173 = v1505;
          v237 = v1546;
          v1137 = v1549;
        }

        else
        {
          v242 = v1518;
        }

        v1196 = v1508;
        *v1508 = v1507;
        *(v1196 + 4) = 1;
        sub_21CF8F644(v1521, v1510, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
        v232 = &qword_21D023660;
        sub_21CF7F198(v1547, v1173, &qword_27CE452A0, &qword_21D023660);
        v1197 = (v1509)(v1173, 1, v1137);
        v1198 = v1516;
        if (v1197 == 1)
        {
          sub_21CF7F200(v1173, &qword_27CE452A0, &qword_21D023660);
          goto LABEL_385;
        }

        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21CF8F53C(v1521, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
          sub_21CF8F6AC(v1173, v1187, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
          v1199 = v1513;
        }

        else
        {
          sub_21CF8F53C(v1173, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
LABEL_385:
          *v1187 = v1502;
          v1207 = v1187 + *(v1198 + 20);
          sub_21D021CE4();
          sub_21CF8F53C(v1521, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
          v1199 = v1513;
          (*v1513)(v1187 + *(v1198 + 24), 1, 1, v177);
        }

        v1208 = *(v1198 + 24);
        sub_21CF7F200(v1187 + v1208, &qword_27CE452C0, &unk_21D023680);
        sub_21CF8F6AC(v1510, v1187 + v1208, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
        (*v1199)(v1187 + v1208, 0, 1, v177);
        v1209 = v1547;
        sub_21CF7F200(v1547, &qword_27CE452A0, &qword_21D023660);
        v1210 = v1187;
        v1165 = v1209;
        sub_21CF8F6AC(v1210, v1209, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
        v1167 = v1514;
        goto LABEL_387;
      }

      v1146 = v1511;
      sub_21D021CE4();
      v1147 = (v1146 + *(v177 + 5));
      *v1147 = 0;
      v1147[1] = 0;
      v1148 = (v1146 + *(v177 + 6));
      *v1148 = 0;
      *(v1148 + 4) = 256;
      v237 = v1146 + *(v177 + 7);
      *v237 = 0;
      *(v237 + 4) = 1;
      v242 = v1146 + *(v177 + 8);
      *v242 = 0;
      *(v242 + 4) = 1;
      v1149 = (v1146 + *(v177 + 9));
      *v1149 = 0;
      v1149[1] = 0;
      v1150 = (v1146 + *(v177 + 10));
      *v1150 = 0;
      v1150[1] = 0;
      v1151 = v1146 + *(v177 + 11);
      *v1151 = 0;
      *(v1151 + 8) = 256;
      v1152 = type metadata accessor for ImageParser();
      v1153 = *(v1152 + 48);
      v1154 = *(v1152 + 52);
      v243 = swift_allocObject();
      sub_21D022494();
      v1155 = v1546;
      v1156 = v1550;
      sub_21CF9BEE4(v1546, &v1552);
      v1550 = v1156;
      if (v1156)
      {

        swift_setDeallocating();
        ImageParser.__deallocating_deinit();
        swift_willThrow();

        sub_21CF8F434(v1155, v1565, v1541);
        v1319 = v1511;
LABEL_438:
        sub_21CF8F53C(v1319, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
        sub_21CF8F53C(v1547, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
        sub_21CF8F53C(v1538, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding);
        sub_21CF8F53C(v1491, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
        goto LABEL_439;
      }

      v1528 = v1148;
      a5 = *(&v1552 + 1);
      v177 = v1552;
      *v1151 = 2;
      *(v1151 + 8) = 1;
      sub_21CF8F3E0(v177, a5);
      v1157 = v1512;
      v240 = v1547;
      sub_21CFC1F90(v1512);
      sub_21CF8F4B4(*v1157, *(v1157 + 1));
      *v1157 = __PAIR128__(a5, v177);
      sub_21CF7F200(v240, &qword_27CE452A0, &qword_21D023660);
      sub_21CF8F6AC(v1157, v240, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v232 = v1549;
      swift_storeEnumTagMultiPayload();
      (v1545)(v240, 0, 1, v232);
      v1158 = [v1155 width];
      if ((v1158 & 0x8000000000000000) != 0)
      {
        goto LABEL_494;
      }

      if (HIDWORD(v1158))
      {
        goto LABEL_495;
      }

      *v237 = v1158;
      *(v237 + 4) = 0;
      v237 = [v1546 height];
      sub_21CF8F460(v177, a5);
      swift_setDeallocating();
      v240 = v243;
      ImageParser.__deallocating_deinit();
      if ((v237 & 0x8000000000000000) != 0)
      {
        goto LABEL_496;
      }

      if (HIDWORD(v237))
      {
        goto LABEL_497;
      }

      *v242 = v237;
      *(v242 + 4) = 0;
      v1159 = v1528;
      *v1528 = 2;
      *(v1159 + 4) = 1;
      v1160 = v1511;
      v1161 = v1492;
      sub_21CF8F644(v1511, v1492, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v1162 = v1512;
      v1163 = v1547;
      sub_21CFC1F90(v1512);
      v1164 = v1160;
      v1165 = v1163;
      sub_21CF8F53C(v1164, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      v1166 = *(v1516 + 24);
      sub_21CF7F200(&v1162[v1166], &qword_27CE452C0, &unk_21D023680);
      sub_21CF8F6AC(v1161, &v1162[v1166], type metadata accessor for Apple_Cloudml_Inference_Tie_ImageMetadata);
      (*v1513)(&v1162[v1166], 0, 1, v1530);
      v232 = &qword_21D023660;
      sub_21CF7F200(v1165, &qword_27CE452A0, &qword_21D023660);
      sub_21CF8F6AC(v1162, v1165, type metadata accessor for Apple_Cloudml_Inference_Tie_ImageData);
      v242 = v1518;
      v1167 = v1514;
      v237 = v1546;
LABEL_383:
      v1137 = v1549;
LABEL_387:
      swift_storeEnumTagMultiPayload();
      (v1545)(v1165, 0, 1, v1137);
      sub_21CF8F644(v1165, v1535, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
      sub_21CF7F198(v1538 + v1536, v242, &qword_27CE45298, &qword_21D023658);
      v1211 = *v1167;
      v1212 = v1537;
      if ((*v1167)(v242, 1, v1537) == 1)
      {
        v243 = v1517;
        *v1517 = MEMORY[0x277D84F90];
        v1213 = v243 + *(v1212 + 20);
        sub_21D021CE4();
        if (v1211(v242, 1, v1212) != 1)
        {
          sub_21CF7F200(v242, &qword_27CE45298, &qword_21D023658);
        }
      }

      else
      {
        v243 = v1517;
        sub_21CF8F6AC(v242, v1517, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      }

      v1214 = *v243;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1214 = sub_21CFB4C60(0, v1214[2] + 1, 1, v1214);
      }

      v1216 = v1214[2];
      v1215 = v1214[3];
      if (v1216 >= v1215 >> 1)
      {
        v1214 = sub_21CFB4C60(v1215 > 1, v1216 + 1, 1, v1214);
      }

      v1217 = (v1534 + 1);
      sub_21CF8F434(v237, v1565, v1541);
      v1214[2] = v1216 + 1;
      sub_21CF8F6AC(v1535, v1214 + ((*(v1515 + 80) + 32) & ~*(v1515 + 80)) + *(v1515 + 72) * v1216, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
      *v243 = v1214;
      v1218 = v1538;
      v1219 = v1536;
      sub_21CF7F200(v1538 + v1536, &qword_27CE45298, &qword_21D023658);
      sub_21CF8F6AC(v243, v1218 + v1219, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable);
      v1220 = v1218 + v1219;
      v240 = v1217;
      v664 = v1537;
      (v1524)(v1220, 0, 1, v1537);
      a5 = v1547;
      sub_21CF8F53C(v1547, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component);
      v1127 = v1533 + 24;
      v177 = v1530;
      v1126 = v1520;
      if (v1523 == v240)
      {
        goto LABEL_396;
      }
    }

    v1141 = a5;
    v1142 = v1496;
    sub_21CF7F198(v1141, v1496, &qword_27CE452A0, &qword_21D023660);
    v1143 = *(v1132 + 48);
    v1528 = (v1132 + 48);
    if (v1143(v1142, 1, v1549) == 1)
    {

      sub_21CF7F200(v1142, &qword_27CE452A0, &qword_21D023660);
      v1144 = v1497;
      v1145 = v1495;
      v242 = v1518;
    }

    else
    {
      v1169 = swift_getEnumCaseMultiPayload();
      v1144 = v1497;
      v1145 = v1495;
      v242 = v1518;
      if (v1169 != 1)
      {
        v1170 = v1493;
        sub_21CF8F6AC(v1142, v1493, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);

LABEL_376:
        v1200 = (v1170 + *(v1145 + 20));
        v1201 = v1200[1];

        v1202 = v1565;
        *v1200 = v1546;
        v1200[1] = v1202;
        v1165 = v1547;
        v232 = &qword_21D023660;
        sub_21CF7F200(v1547, &qword_27CE452A0, &qword_21D023660);
        sub_21CF8F6AC(v1170, v1165, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
        v1203 = v1549;
        swift_storeEnumTagMultiPayload();
        (v1545)(v1165, 0, 1, v1203);
        sub_21CF7F198(v1165, v1144, &qword_27CE452A0, &qword_21D023660);
        if (v1143(v1144, 1, v1203) == 1)
        {
          sub_21CF7F200(v1144, &qword_27CE452A0, &qword_21D023660);
          v1204 = v1494;
        }

        else
        {
          v1205 = swift_getEnumCaseMultiPayload();
          v1204 = v1494;
          if (v1205 != 1)
          {
            sub_21CF8F6AC(v1144, v1494, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
            v1167 = v1514;
            v237 = v1546;
            goto LABEL_382;
          }

          sub_21CF8F53C(v1144, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
        }

        v237 = v1546;
        sub_21D021CE4();
        v1206 = (v1204 + *(v1145 + 20));
        *v1206 = 0;
        v1206[1] = 0;
        *(v1204 + *(v1145 + 24)) = 2;
        v1167 = v1514;
LABEL_382:
        *(v1204 + *(v1145 + 24)) = v1541 & 1;
        sub_21CF7F200(v1165, &qword_27CE452A0, &qword_21D023660);
        sub_21CF8F6AC(v1204, v1165, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.ContentText);
        goto LABEL_383;
      }

      sub_21CF8F53C(v1142, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1.RichVariableBinding.RichVariable.Component.OneOf_Content);
    }

    v1170 = v1493;
    sub_21D021CE4();
    v1171 = (v1170 + *(v1145 + 20));
    *v1171 = 0;
    v1171[1] = 0;
    *(v1170 + *(v1145 + 24)) = 2;
    goto LABEL_376;
  }

  while (1)
  {
LABEL_333:
    v1117 = v1116 + 1;
    if (__OFADD__(v1116, 1))
    {
      goto LABEL_493;
    }

    if (v1117 >= v240)
    {
      break;
    }

    v177 = *(v1113 + 8 * v1117);
    ++v1116;
    if (v177)
    {
      v1116 = v1117;
      goto LABEL_337;
    }
  }

  v1224 = type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.OneOf_PromptTemplateType(0);
  v1225 = *(*(v1224 - 8) + 56);
  v1226 = v1424;
  v1225(v1424, 1, 1, v1224);
  v1227 = v1226 + *(v1422 + 20);
  sub_21D021CE4();
  v1228 = v1491;
  v1229 = v1421;
  sub_21CF8F644(v1491, v1421, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  sub_21CF7F200(v1226, &qword_27CE452C8, &unk_21D026890);
  sub_21CF8F6AC(v1229, v1226, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  v1225(v1226, 0, 1, v1224);
  v1230 = v1423;
  sub_21CF8F644(v1226, v1423, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CFC2150(v1230);
  sub_21CF8F53C(v1226, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate);
  sub_21CF8F53C(v1228, type metadata accessor for Apple_Cloudml_Inference_Tie_PromptTemplate.PromptTemplateV1);
  v1087 = v1527;
  v1055 = v1542;
  v1086 = v1526;
LABEL_403:
  v1231 = *(v1087 + v1086[31]);
  v1232 = &unk_27CE45000;
  if (!sub_21CFB6EB8(v1231) || (v1233 = sub_21CFB6EB8(v1231)) == 0)
  {
    v1234 = v1055;
    goto LABEL_423;
  }

  if (v1233 < 1)
  {
    __break(1u);
    goto LABEL_504;
  }

  v1234 = v1055;
  v1235 = (v1231 + 40);
  v1236 = v1543;
  do
  {
    v1565 = v1233;
    v1242 = *v1235;
    v1549 = *(v1235 - 1);
    v1547 = v1235;
    v1243 = *&v1234[v237];
    v1244 = v1232[316];
    swift_beginAccess();
    v1245 = v1243 + v1244;
    v1246 = v1504;
    sub_21CF7F198(v1245, v1504, &qword_27CE452B0, &qword_21D023670);
    if ((v1539)(v1246, 1, v1236) == 1)
    {

      v1247 = v1519;
      sub_21D021CE4();
      v1248 = *(v1236 + 20);
      if (qword_28121D278 != -1)
      {
        swift_once();
      }

      *(v1247 + v1248) = qword_28121D280;
      v1249 = (v1539)(v1246, 1, v1236);

      if (v1249 != 1)
      {
        sub_21CF7F200(v1246, &qword_27CE452B0, &qword_21D023670);
      }
    }

    else
    {
      v1247 = v1519;
      sub_21CF8F6AC(v1246, v1519, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    }

    v1250 = *(v1543 + 20);
    v1251 = *(v1247 + v1250);
    v1252 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
    swift_beginAccess();
    v1253 = *(v1251 + v1252);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1253 = sub_21CFB4D00(0, *(v1253 + 2) + 1, 1, v1253);
    }

    v1254 = v1549;
    v1256 = *(v1253 + 2);
    v1255 = *(v1253 + 3);
    if (v1256 >= v1255 >> 1)
    {
      v1253 = sub_21CFB4D00((v1255 > 1), v1256 + 1, 1, v1253);
    }

    *(v1253 + 2) = v1256 + 1;
    v1257 = &v1253[16 * v1256];
    *(v1257 + 4) = v1254;
    *(v1257 + 5) = v1242;
    v1258 = v1519;
    v1259 = *(v1519 + v1250);
    v1260 = swift_isUniquelyReferenced_nonNull_native();
    v1261 = *(v1258 + v1250);
    if ((v1260 & 1) == 0)
    {
      v1262 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
      v1263 = *(v1262 + 48);
      v1264 = *(v1262 + 52);
      swift_allocObject();
      v1261 = sub_21CFC4358(v1261);
      *(v1258 + v1250) = v1261;
    }

    v237 = v1548;
    v1265 = v1542;
    v1266 = OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__locale;
    swift_beginAccess();
    v1267 = *(v1261 + v1266);
    *(v1261 + v1266) = v1253;

    v1268 = *&v1265[v237];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1269 = *&v1265[v237];
      v1270 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v1271 = *(v1270 + 48);
      v1272 = *(v1270 + 52);
      swift_allocObject();

      v1274 = sub_21D00E8C4(v1273);

      *&v1265[v237] = v1274;
    }

    v1237 = *&v1265[v237];
    v1238 = v1258;
    v1239 = v1532;
    sub_21CF8F6AC(v1238, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
    v1236 = v1543;
    (v1531)(v1239, 0, 1, v1543);
    v1232 = &unk_27CE45000;
    v1240 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
    swift_beginAccess();
    v1241 = v1237 + v1240;
    v1234 = v1265;
    sub_21CF8F4D4(v1239, v1241, &qword_27CE452B0, &qword_21D023670);
    swift_endAccess();
    v1235 = v1547 + 2;
    v1233 = v1565 - 1;
  }

  while (v1565 != 1);
LABEL_423:
  v1275 = v1234;
  if (qword_28121B2A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1561[0] = xmmword_28121B2B0;
  v1561[1] = unk_28121B2C0;
  v1562 = byte_28121B2D0;
  sub_21CF7F198(v1561, &v1552, &qword_27CE45288, &qword_21D023970);
  v1276 = sub_21D01561C();
  sub_21CF7F200(v1561, &qword_27CE45288, &qword_21D023970);
  v1277 = *&v1234[v237];
  v1278 = swift_isUniquelyReferenced_nonNull_native();
  v1279 = v1550;
  v664 = v1543;
  if ((v1278 & 1) == 0)
  {
    v1280 = *&v1234[v237];
    v1281 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v1282 = *(v1281 + 48);
    v1283 = *(v1281 + 52);
    swift_allocObject();

    v1285 = sub_21D00E8C4(v1284);

    *&v1275[v237] = v1285;
  }

  v1286 = *&v1275[v237];
  v1287 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__includePerfMetrics;
  swift_beginAccess();
  *(v1286 + v1287) = v1276 & 1;
  v1288 = (v1527 + v1526[12]);
  v1289 = *v1288;
  v1290 = v1288[1];
  v1291 = sub_21D021A84();
  if (v1279)
  {
LABEL_439:
    sub_21CF8F53C(v1548, type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest);
    return sub_21CF8F53C(v1527, type metadata accessor for PrivateMLRequest);
  }

  v1293 = v1292;
  v1294 = v1291;
  v1295 = v1418;
  sub_21CFC1C4C(v1418);
  v1296 = *(v664 + 20);
  v1297 = *(v1295 + v1296);
  v1298 = swift_isUniquelyReferenced_nonNull_native();
  v1299 = *(v1295 + v1296);
  if ((v1298 & 1) == 0)
  {
    v1300 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
    v1301 = *(v1300 + 48);
    v1302 = *(v1300 + 52);
    swift_allocObject();
    v1299 = sub_21CFC4358(v1299);
    *(v1295 + v1296) = v1299;
  }

  v1303 = (v1299 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__inferenceID);
  swift_beginAccess();
  v1304 = v1303[1];
  *v1303 = v1294;
  v1303[1] = v1293;

  v1305 = v1548;
  v1306 = *&v1275[v1548];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1307 = *&v1275[v1305];
    v1308 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
    v1309 = *(v1308 + 48);
    v1310 = *(v1308 + 52);
    swift_allocObject();

    v1312 = sub_21D00E8C4(v1311);

    *&v1275[v1305] = v1312;
  }

  v1313 = *&v1275[v1305];
  v1314 = v1532;
  sub_21CF8F6AC(v1295, v1532, type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig);
  (v1531)(v1314, 0, 1, v664);
  v1315 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__modelConfig;
  swift_beginAccess();
  sub_21CF8F4D4(v1314, v1313 + v1315, &qword_27CE452B0, &qword_21D023670);
  swift_endAccess();
  if (qword_28121B6B8 != -1)
  {
LABEL_504:
    swift_once();
  }

  swift_beginAccess();
  if ((byte_28121B6C0 & 1) == 0)
  {
    v1316 = (v1527 + v1526[33]);
    if (v1316[1])
    {
      v1317 = *v1316;
      v1318 = v1316[1];
    }

    else
    {
      v1318 = 0x800000021D02D4F0;
      v1317 = 0xD00000000000001FLL;
    }

    v1321 = v1419;
    v1322 = v1548;
    sub_21CFC22C8(v1419);
    v1323 = (v1321 + *(v1420 + 20));
    v1324 = v1323[1];

    *v1323 = v1317;
    v1323[1] = v1318;
    v1325 = v1542;
    v1326 = *(v1542 + v1322);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1327 = *&v1325[v1322];
      v1328 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
      v1329 = *(v1328 + 48);
      v1330 = *(v1328 + 52);
      swift_allocObject();

      v1332 = sub_21D00E8C4(v1331);

      *&v1325[v1322] = v1332;
    }

    v1333 = *&v1325[v1322];
    v1334 = v1416;
    sub_21CF8F6AC(v1419, v1416, type metadata accessor for Apple_Cloudml_Inference_Tie_RequestMetadata);
    v1335 = v1420;
    (*(v1415 + 56))(v1334, 0, 1, v1420);
    v1336 = OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__requestMetadata;
    swift_beginAccess();
    sub_21CF8F4D4(v1334, v1333 + v1336, &qword_27CE45290, &qword_21D023650);
    swift_endAccess();
    v1337 = (v1527 + v1526[5]);
    v1339 = *v1337;
    v1338 = v1337[1];

    v1340 = v1417;
    sub_21CFC22C8(v1417);
    v1341 = (v1340 + *(v1335 + 24));
    v1342 = v1341[1];

    *v1341 = v1339;
    v1341[1] = v1338;
    sub_21CFC247C(v1340);
    if (qword_28121B278 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1559[0] = xmmword_28121B280;
    v1559[1] = *&qword_28121B290;
    v1560 = byte_28121B2A0;
    sub_21CF7F198(v1559, &v1552, &qword_27CE452D0, &unk_21D023690);
    v1343 = sub_21D015100();
    sub_21CF7F200(v1559, &qword_27CE452D0, &unk_21D023690);
    v1345 = v1412;
    v1344 = v1413;
    if (v1343)
    {
      if (*(v1343 + 16))
      {
        v1346 = sub_21CF823FC(0xD000000000000010, 0x800000021D02D510, v1343);
        v1348 = v1347;

        if (v1348)
        {
          if (v1346 == 0xD000000000000010 && v1348 == 0x800000021D02D530 || (sub_21D022B24() & 1) != 0)
          {
            sub_21CFC1C4C(v1345);
            v1349 = *(v664 + 20);
            v1350 = *(v1345 + v1349);
            v1351 = swift_isUniquelyReferenced_nonNull_native();
            v1352 = *(v1345 + v1349);
            if ((v1351 & 1) == 0)
            {
              v1353 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              v1354 = *(v1353 + 48);
              v1355 = *(v1353 + 52);
              swift_allocObject();
              v1352 = sub_21CFC4358(v1352);
              *(v1345 + v1349) = v1352;
            }

            v1356 = v1352 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1356 = 1;
            *(v1356 + 4) = 1;
            sub_21CFC1E18(v1345);
          }

          if (v1346 == 0x43495645445F4E4FLL && v1348 == 0xE900000000000045 || (sub_21D022B24() & 1) != 0)
          {
            sub_21CFC1C4C(v1344);
            v1357 = *(v664 + 20);
            v1358 = *(v1344 + v1357);
            v1359 = swift_isUniquelyReferenced_nonNull_native();
            v1360 = *(v1344 + v1357);
            if ((v1359 & 1) == 0)
            {
              v1361 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              v1362 = *(v1361 + 48);
              v1363 = *(v1361 + 52);
              swift_allocObject();
              v1360 = sub_21CFC4358(v1360);
              *(v1344 + v1357) = v1360;
            }

            v1364 = v1360 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1364 = 2;
            *(v1364 + 4) = 1;
            sub_21CFC1E18(v1344);
          }

          if (v1346 == 0x45565245535F4E4FLL && v1348 == 0xE900000000000052 || (sub_21D022B24() & 1) != 0)
          {
            v1365 = v1410;
            sub_21CFC1C4C(v1410);
            v1366 = *(v664 + 20);
            v1367 = *(v1365 + v1366);
            v1368 = swift_isUniquelyReferenced_nonNull_native();
            v1369 = *(v1365 + v1366);
            if ((v1368 & 1) == 0)
            {
              v1370 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              v1371 = *(v1370 + 48);
              v1372 = *(v1370 + 52);
              swift_allocObject();
              v1369 = sub_21CFC4358(v1369);
              *(v1365 + v1366) = v1369;
            }

            v1373 = v1369 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1373 = 3;
            *(v1373 + 4) = 1;
            sub_21CFC1E18(v1365);
          }

          if (v1346 == 0x45565245535F4E4FLL && v1348 == 0xED00004947545F52)
          {

            goto LABEL_473;
          }

LABEL_472:
          v1374 = sub_21D022B24();

          if (v1374)
          {
LABEL_473:
            v1375 = v1411;
            sub_21CFC1C4C(v1411);
            v1376 = *(v664 + 20);
            v1377 = *(v1375 + v1376);
            v1378 = swift_isUniquelyReferenced_nonNull_native();
            v1379 = *(v1375 + v1376);
            if ((v1378 & 1) == 0)
            {
              v1380 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
              v1381 = *(v1380 + 48);
              v1382 = *(v1380 + 52);
              swift_allocObject();
              v1379 = sub_21CFC4358(v1379);
              *(v1375 + v1376) = v1379;
            }

            v1383 = v1379 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__llmPreprocessing;
            swift_beginAccess();
            *v1383 = 4;
            *(v1383 + 4) = 1;
            sub_21CFC1E18(v1375);
          }
        }
      }

      else
      {
      }
    }

    if (qword_28121B308 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1557[0] = xmmword_28121B310;
    v1557[1] = unk_28121B320;
    v1558 = byte_28121B330;
    sub_21CF7F198(v1557, &v1552, &qword_27CE45288, &qword_21D023970);
    v1384 = sub_21D01561C();
    sub_21CF7F200(v1557, &qword_27CE45288, &qword_21D023970);
    v1385 = v1414;
    if (v1384)
    {
      v1386 = (v1527 + v1526[10]);
      v1388 = *v1386;
      v1387 = v1386[1];
      v1389 = HIBYTE(v1387) & 0xF;
      if ((v1387 & 0x2000000000000000) == 0)
      {
        v1389 = v1388 & 0xFFFFFFFFFFFFLL;
      }

      if (v1389)
      {

        sub_21CFC1C4C(v1385);
        v1390 = *(v664 + 20);
        v1391 = *(v1385 + v1390);
        v1392 = swift_isUniquelyReferenced_nonNull_native();
        v1393 = *(v1385 + v1390);
        if ((v1392 & 1) == 0)
        {
          v1394 = type metadata accessor for Apple_Cloudml_Inference_Tie_ModelConfig._StorageClass(0);
          v1395 = *(v1394 + 48);
          v1396 = *(v1394 + 52);
          swift_allocObject();
          v1393 = sub_21CFC4358(v1393);
          *(v1385 + v1390) = v1393;
        }

        v1397 = (v1393 + OBJC_IVAR____TtCV15PrivateMLClient39Apple_Cloudml_Inference_Tie_ModelConfigP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__draftModelName);
        swift_beginAccess();
        v1398 = v1397[1];
        *v1397 = v1388;
        v1397[1] = v1387;

        sub_21CFC1E18(v1385);
      }
    }

    if (qword_27CE451C8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1555[0] = xmmword_27CE46910;
    v1555[1] = unk_27CE46920;
    v1556 = byte_27CE46930;
    sub_21CF7F198(v1555, &v1552, &qword_27CE45288, &qword_21D023970);
    v1399 = sub_21D01561C();
    sub_21CF7F200(v1555, &qword_27CE45288, &qword_21D023970);
    v1400 = v1542;
    if (v1399)
    {
      v1401 = v1548;
      v1402 = *(v1542 + v1548);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1403 = *&v1400[v1401];
        v1404 = type metadata accessor for Apple_Cloudml_Inference_Tie_GenerateRequest._StorageClass(0);
        v1405 = *(v1404 + 48);
        v1406 = *(v1404 + 52);
        swift_allocObject();

        v1408 = sub_21D00E8C4(v1407);

        *&v1400[v1401] = v1408;
      }

      v1409 = *&v1400[v1401] + OBJC_IVAR____TtCV15PrivateMLClient43Apple_Cloudml_Inference_Tie_GenerateRequestP33_CD5DC485B54DF4FF6F4BE768FEF8257713_StorageClass__mode;
      swift_beginAccess();
      *v1409 = 3;
      *(v1409 + 8) = 1;
    }
  }

  return sub_21CF8F53C(v1527, type metadata accessor for PrivateMLRequest);
}