uint64_t *sub_18904B9E4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = v3;
  *(a3 + 56) = v4;
  *(a3 + 64) = a2;
  return result;
}

uint64_t *static UICornerConfiguration.uniformEdges(topRadius:bottomRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 32) = v5;
  *(a3 + 40) = v6;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 64) = &unk_1EFAB8D80;
  return result;
}

uint64_t *static UICornerConfiguration.uniformEdges(leftRadius:rightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  *(a3 + 64) = &unk_1EFAB8DB0;
  return result;
}

uint64_t *static UICornerConfiguration.uniformTopRadius(_:bottomLeftRadius:bottomRightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = *result;
  *(a4 + 8) = v5;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = &unk_1EFAB8DE0;
  return result;
}

uint64_t *static UICornerConfiguration.uniformBottomRadius(_:topLeftRadius:topRightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  *a4 = *a2;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = v4;
  *(a4 + 56) = v5;
  *(a4 + 64) = &unk_1EFAB8E08;
  return result;
}

uint64_t *static UICornerConfiguration.uniformLeftRadius(_:topRightRadius:bottomRightRadius:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  *a4 = *result;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
  *(a4 + 32) = v4;
  *(a4 + 40) = v5;
  *(a4 + 48) = v8;
  *(a4 + 56) = v9;
  *(a4 + 64) = &unk_1EFAB8E30;
  return result;
}

uint64_t *static UICornerConfiguration.uniformRightRadius(_:topLeftRadius:bottomLeftRadius:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(a2 + 8);
  v7 = *a3;
  v8 = *(a3 + 8);
  *a4 = *a2;
  *(a4 + 8) = v6;
  *(a4 + 16) = v4;
  *(a4 + 24) = v5;
  *(a4 + 32) = v7;
  *(a4 + 40) = v8;
  *(a4 + 48) = v4;
  *(a4 + 56) = v5;
  *(a4 + 64) = &unk_1EFAB8E58;
  return result;
}

uint64_t UICornerConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = v0[6];
  v7 = *(v0 + 56);
  v8 = v0[8];
  if (v1 == 255)
  {
    sub_18A4A88A8();
    if (v3 != 255)
    {
      goto LABEL_11;
    }

LABEL_6:
    sub_18A4A88A8();
    if (v5 != 255)
    {
      goto LABEL_15;
    }

LABEL_7:
    sub_18A4A88A8();
    if (v7 != 255)
    {
      goto LABEL_19;
    }

LABEL_8:
    result = sub_18A4A88A8();
    v11 = *(v8 + 16);
    if (!v11)
    {
      return result;
    }

    goto LABEL_23;
  }

  v9 = *v0;
  sub_18A4A88A8();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v9 = 0;
  }

  MEMORY[0x18CFE37E0]((v1 & 1) != 0);
  MEMORY[0x18CFE3810](v9);
  if (v3 == 255)
  {
    goto LABEL_6;
  }

LABEL_11:
  sub_18A4A88A8();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v12 = v2;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x18CFE37E0]((v3 & 1) != 0);
  MEMORY[0x18CFE3810](v12);
  if (v5 == 255)
  {
    goto LABEL_7;
  }

LABEL_15:
  sub_18A4A88A8();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v4;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x18CFE37E0]((v5 & 1) != 0);
  MEMORY[0x18CFE3810](v13);
  if (v7 == 255)
  {
    goto LABEL_8;
  }

LABEL_19:
  sub_18A4A88A8();
  if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v14 = v6;
  }

  else
  {
    v14 = 0;
  }

  MEMORY[0x18CFE37E0]((v7 & 1) != 0);
  result = MEMORY[0x18CFE3810](v14);
  v11 = *(v8 + 16);
  if (v11)
  {
LABEL_23:
    result = 0;
    v15 = v8 + 32;
    do
    {
      v16 = *(v15 + 8 * result);
      v17 = result + 1;
      MEMORY[0x18CFE37E0]();
      MEMORY[0x18CFE37E0](v16);
      result = v17;
    }

    while (v11 != v17);
  }

  return result;
}

uint64_t UICornerConfiguration.description.getter()
{
  v1 = *v0;
  v2 = 0xEB00000000646569;
  v3 = *(v0 + 8);
  v4 = 0x6669636570736E75;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 40);
  v20 = *(v0 + 32);
  v21 = *(v0 + 48);
  v8 = *(v0 + 56);
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000026, 0x800000018A6A1670);
  if (v3 == 255)
  {
    v9 = 0x6669636570736E75;
    v11 = 0xEB00000000646569;
  }

  else
  {
    v9 = sub_188E6B000(v1, v3 & 1);
    v11 = v10;
  }

  MEMORY[0x18CFE22D0](v9, v11);

  MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6A16A0);
  if (v6 == 255)
  {
    v12 = 0x6669636570736E75;
    v14 = 0xEB00000000646569;
  }

  else
  {
    v12 = sub_188E6B000(v5, v6 & 1);
    v14 = v13;
  }

  MEMORY[0x18CFE22D0](v12, v14);

  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6A16C0);
  if (v7 == 255)
  {
    v15 = 0x6669636570736E75;
    v17 = 0xEB00000000646569;
  }

  else
  {
    v15 = sub_188E6B000(v20, v7 & 1);
    v17 = v16;
  }

  MEMORY[0x18CFE22D0](v15, v17);

  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6A16E0);
  if (v8 != 255)
  {
    v4 = sub_188E6B000(v21, v8 & 1);
    v2 = v18;
  }

  MEMORY[0x18CFE22D0](v4, v2);

  MEMORY[0x18CFE22D0](41, 0xE100000000000000);
  return 0;
}

{
  v1 = 0xEB00000000646569;
  v2 = 0x6669636570736E75;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000018, 0x800000018A6A1700);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000012, 0x800000018A6A1720);
  v3 = v0 + OBJC_IVAR___UICornerConfiguration_impl;
  v4 = *(v0 + OBJC_IVAR___UICornerConfiguration_impl + 8);
  if (v4 == 255)
  {
    v5 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  else
  {
    v5 = sub_188E6B000(*v3, v4 & 1);
    v7 = v6;
  }

  MEMORY[0x18CFE22D0](v5, v7);

  MEMORY[0x18CFE22D0](0xD000000000000013, 0x800000018A6A1740);
  v8 = *(v3 + 24);
  if (v8 == 255)
  {
    v9 = 0x6669636570736E75;
    v11 = 0xEB00000000646569;
  }

  else
  {
    v9 = sub_188E6B000(*(v3 + 16), v8 & 1);
    v11 = v10;
  }

  MEMORY[0x18CFE22D0](v9, v11);

  MEMORY[0x18CFE22D0](0xD000000000000015, 0x800000018A6A1760);
  v12 = *(v3 + 40);
  if (v12 == 255)
  {
    v13 = 0x6669636570736E75;
    v15 = 0xEB00000000646569;
  }

  else
  {
    v13 = sub_188E6B000(*(v3 + 32), v12 & 1);
    v15 = v14;
  }

  MEMORY[0x18CFE22D0](v13, v15);

  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6A1780);
  v16 = *(v3 + 56);
  if (v16 != 255)
  {
    v2 = sub_188E6B000(*(v3 + 48), v16 & 1);
    v1 = v17;
  }

  MEMORY[0x18CFE22D0](v2, v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t UICornerConfiguration.hashValue.getter()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_18904BFBC()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_18904C000()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_18904C098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    v5 = -1;
    if (a2)
    {
LABEL_3:
      v6 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
      v7 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      v9 = -1;
      if (a4)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0;
      v11 = -1;
      goto LABEL_10;
    }
  }

  v6 = 0;
  v7 = -1;
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
  v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = *(a4 + OBJC_IVAR___UICornerRadius_impl);
  v11 = *(a4 + OBJC_IVAR___UICornerRadius_impl + 8);
LABEL_10:
  v12 = [objc_allocWithZone(UICornerConfiguration) init];
  v13 = &v12[OBJC_IVAR___UICornerConfiguration_impl];
  v19[0] = *&v12[OBJC_IVAR___UICornerConfiguration_impl];
  v15 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v14 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v16 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v20 = *&v12[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v19[2] = v15;
  v19[3] = v14;
  v19[1] = v16;
  *v13 = v4;
  v13[8] = v5;
  *(v13 + 2) = v6;
  v13[24] = v7;
  *(v13 + 4) = v8;
  v13[40] = v9;
  *(v13 + 6) = v10;
  v13[56] = v11;
  *(v13 + 8) = MEMORY[0x1E69E7CC0];
  v17 = v12;
  sub_188E4342C(v19);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C2F4(double a1)
{
  v2 = [objc_allocWithZone(UICornerConfiguration) init];
  v3 = &v2[OBJC_IVAR___UICornerConfiguration_impl];
  v9[0] = *&v2[OBJC_IVAR___UICornerConfiguration_impl];
  v5 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v4 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v6 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v10 = *&v2[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v9[2] = v5;
  v9[3] = v4;
  v9[1] = v6;
  *v3 = a1;
  *(v3 + 8) = 0;
  v3[2] = a1;
  *(v3 + 24) = 0;
  v3[4] = a1;
  *(v3 + 40) = 0;
  v3[6] = a1;
  *(v3 + 56) = 0;
  *(v3 + 8) = MEMORY[0x1E69E7CC0];
  v7 = v2;
  sub_188E4342C(v9);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C408(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v4 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v5 = [objc_allocWithZone(UICornerConfiguration) init];
  v6 = &v5[OBJC_IVAR___UICornerConfiguration_impl];
  v12[0] = *&v5[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v7 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v9 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v13 = *&v5[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v12[2] = v8;
  v12[3] = v7;
  v12[1] = v9;
  *v6 = v3;
  v6[8] = v4;
  *(v6 + 2) = v3;
  v6[24] = v4;
  *(v6 + 4) = v3;
  v6[40] = v4;
  *(v6 + 6) = v3;
  v6[56] = v4;
  *(v6 + 8) = a2;
  v10 = v5;
  sub_188E4342C(v12);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C53C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v3 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
  v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  v6 = [objc_allocWithZone(UICornerConfiguration) init];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  v13[0] = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v9 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v8 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v10 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v14 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v13[2] = v9;
  v13[3] = v8;
  v13[1] = v10;
  *v7 = v2;
  v7[8] = v3;
  *(v7 + 2) = v2;
  v7[24] = v3;
  *(v7 + 4) = v4;
  v7[40] = v5;
  *(v7 + 6) = v4;
  v7[56] = v5;
  *(v7 + 8) = &unk_1EFAB8EA8;
  v11 = v6;
  sub_188E4342C(v13);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C648(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v3 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
  v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  v6 = [objc_allocWithZone(UICornerConfiguration) init];
  v7 = &v6[OBJC_IVAR___UICornerConfiguration_impl];
  v13[0] = *&v6[OBJC_IVAR___UICornerConfiguration_impl];
  v9 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v8 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v10 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v14 = *&v6[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v13[2] = v9;
  v13[3] = v8;
  v13[1] = v10;
  *v7 = v2;
  v7[8] = v3;
  *(v7 + 2) = v4;
  v7[24] = v5;
  *(v7 + 4) = v2;
  v7[40] = v3;
  *(v7 + 6) = v4;
  v7[56] = v5;
  *(v7 + 8) = &unk_1EFAB8ED8;
  v11 = v6;
  sub_188E4342C(v13);

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_18904C754(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(id, id))
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  v10 = a5(v8, v9);

  return v10;
}

uint64_t sub_18904C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v6;
  v11[8] = v7;
  *(v11 + 2) = v6;
  v11[24] = v7;
  *(v11 + 4) = v4;
  v11[40] = v5;
  *(v11 + 6) = v8;
  v11[56] = v9;
  *(v11 + 8) = &unk_1EFAB8F08;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904C918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v4;
  v11[8] = v5;
  *(v11 + 2) = v8;
  v11[24] = v9;
  *(v11 + 4) = v6;
  v11[40] = v7;
  *(v11 + 6) = v6;
  v11[56] = v7;
  *(v11 + 8) = &unk_1EFAB8F30;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904CA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v6;
  v11[8] = v7;
  *(v11 + 2) = v4;
  v11[24] = v5;
  *(v11 + 4) = v6;
  v11[40] = v7;
  *(v11 + 6) = v8;
  v11[56] = v9;
  *(v11 + 8) = &unk_1EFAB8F58;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904CB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR___UICornerRadius_impl);
  if (a2)
  {
    v4 = *(a2 + OBJC_IVAR___UICornerRadius_impl);
    v5 = *(a2 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = 0;
    v5 = -1;
  }

  v6 = *v3;
  v7 = *(v3 + 8);
  if (a3)
  {
    v8 = *(a3 + OBJC_IVAR___UICornerRadius_impl);
    v9 = *(a3 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = 0;
    v9 = -1;
  }

  v10 = [objc_allocWithZone(UICornerConfiguration) init];
  v11 = &v10[OBJC_IVAR___UICornerConfiguration_impl];
  v17[0] = *&v10[OBJC_IVAR___UICornerConfiguration_impl];
  v13 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v12 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v14 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v18 = *&v10[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v17[2] = v13;
  v17[3] = v12;
  v17[1] = v14;
  *v11 = v4;
  v11[8] = v5;
  *(v11 + 2) = v6;
  v11[24] = v7;
  *(v11 + 4) = v8;
  v11[40] = v9;
  *(v11 + 6) = v6;
  v11[56] = v7;
  *(v11 + 8) = &unk_1EFAB8F80;
  v15 = v10;
  sub_188E4342C(v17);

  return swift_dynamicCastUnknownClassUnconditional();
}

id sub_18904CCD8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id, void *, void *))
{
  swift_getObjCClassMetadata();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6(v10, a4, a5);

  return v13;
}

uint64_t sub_18904CD78(uint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(UICornerConfiguration) init];
  v5 = &v4[OBJC_IVAR___UICornerConfiguration_impl];
  v11[0] = *&v4[OBJC_IVAR___UICornerConfiguration_impl];
  v7 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v6 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v8 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v12 = *&v4[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v11[2] = v7;
  v11[3] = v6;
  v11[1] = v8;
  *v5 = a1;
  v5[8] = a2;
  *(v5 + 2) = a1;
  v5[24] = a2;
  *(v5 + 4) = a1;
  v5[40] = a2;
  *(v5 + 6) = a1;
  v5[56] = a2;
  *(v5 + 8) = MEMORY[0x1E69E7CC0];
  v9 = v4;
  sub_188E4342C(v11);

  return swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18904CE88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR___UICornerRadius_impl);
  v3 = (a2 << 63 >> 63) & v2;
  if (a2)
  {
    v4 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v4 = -1;
  }

  v5 = v2 & (a2 << 62 >> 63);
  if ((a2 & 2) != 0)
  {
    v6 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v6 = -1;
  }

  v7 = v2 & (a2 << 61 >> 63);
  if ((a2 & 4) != 0)
  {
    v8 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v8 = -1;
  }

  v9 = v2 & (a2 << 60 >> 63);
  if ((a2 & 8) != 0)
  {
    v10 = *(a1 + OBJC_IVAR___UICornerRadius_impl + 8);
  }

  else
  {
    v10 = -1;
  }

  v11 = [objc_allocWithZone(UICornerConfiguration) init];
  v12 = &v11[OBJC_IVAR___UICornerConfiguration_impl];
  v18[0] = *&v11[OBJC_IVAR___UICornerConfiguration_impl];
  v14 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v13 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v15 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v19 = *&v11[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v18[2] = v14;
  v18[3] = v13;
  v18[1] = v15;
  *v12 = v3;
  v12[8] = v4;
  *(v12 + 2) = v5;
  v12[24] = v6;
  *(v12 + 4) = v7;
  v12[40] = v8;
  *(v12 + 6) = v9;
  v12[56] = v10;
  *(v12 + 8) = MEMORY[0x1E69E7CC0];
  v16 = v11;
  sub_188E4342C(v18);

  return swift_dynamicCastUnknownClassUnconditional();
}

void sub_18904D1AC(void *a1)
{
  v3 = (v1 + OBJC_IVAR___UICornerConfiguration_impl);
  v4 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 8);
  if (v4 == 255)
  {
    v6 = 0;
  }

  else
  {
    v5 = *v3;
    v6 = [objc_allocWithZone(UICornerRadius) init];
    v7 = &v6[OBJC_IVAR___UICornerRadius_impl];
    *v7 = v5;
    v7[8] = v4 & 1;
  }

  v8 = sub_18A4A7258();
  [a1 encodeObject:v6 forKey:v8];

  v9 = *(v3 + 24);
  if (v9 == 255)
  {
    v11 = 0;
  }

  else
  {
    v10 = v3[2];
    v11 = [objc_allocWithZone(UICornerRadius) init];
    v12 = &v11[OBJC_IVAR___UICornerRadius_impl];
    *v12 = v10;
    v12[8] = v9 & 1;
  }

  v13 = sub_18A4A7258();
  [a1 encodeObject:v11 forKey:v13];

  v14 = *(v3 + 40);
  if (v14 == 255)
  {
    v16 = 0;
  }

  else
  {
    v15 = v3[4];
    v16 = [objc_allocWithZone(UICornerRadius) init];
    v17 = &v16[OBJC_IVAR___UICornerRadius_impl];
    *v17 = v15;
    v17[8] = v14 & 1;
  }

  v18 = sub_18A4A7258();
  [a1 encodeObject:v16 forKey:v18];

  v19 = *(v3 + 56);
  if (v19 == 255)
  {
    v21 = 0;
  }

  else
  {
    v20 = v3[6];
    v21 = [objc_allocWithZone(UICornerRadius) init];
    v22 = &v21[OBJC_IVAR___UICornerRadius_impl];
    *v22 = v20;
    v22[8] = v19 & 1;
  }

  v23 = sub_18A4A7258();
  [a1 encodeObject:v21 forKey:v23];

  v24 = v3[8];
  v25 = *(v24 + 16);
  if (v25)
  {

    sub_18A4A8208();
    v26 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v26 += 8;
      --v25;
    }

    while (v25);
  }

  sub_188A34624(0, &qword_1ED48FD80);
  v27 = sub_18A4A7518();

  v28 = sub_18A4A7258();
  [a1 encodeObject:v27 forKey:v28];
}

uint64_t UICornerConfiguration.hash.getter()
{
  sub_18A4A8888();
  UICornerConfiguration.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t UICornerConfiguration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_188C85D28(a1, v36);
  if (!v37)
  {
    sub_188A553EC(v36);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v13 = 0;
    return v13 & 1;
  }

  v3 = v35;
  v4 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 16);
  v5 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 48);
  v26 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 32);
  v27 = v5;
  v28 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 64);
  v6 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 16);
  v25[0] = *(v1 + OBJC_IVAR___UICornerConfiguration_impl);
  v25[1] = v6;
  v7 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 48);
  v22 = v26;
  v23 = v7;
  v24 = *(v1 + OBJC_IVAR___UICornerConfiguration_impl + 64);
  v20 = v25[0];
  v21 = v4;
  v29[0] = *&v35[OBJC_IVAR___UICornerConfiguration_impl];
  v8 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v9 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v10 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v30 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v29[2] = v9;
  v29[3] = v10;
  v29[1] = v8;
  v11 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 48];
  v17 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 32];
  v18 = v11;
  v19 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 64];
  v12 = *&v35[OBJC_IVAR___UICornerConfiguration_impl + 16];
  v15 = *&v35[OBJC_IVAR___UICornerConfiguration_impl];
  v16 = v12;
  v13 = _s5UIKit21UICornerConfigurationV2eeoiySbAC_ACtFZ_0(&v20, &v15);
  sub_188E41F80(v25, v33);
  sub_188E41F80(v29, v33);

  v31[2] = v17;
  v31[3] = v18;
  v32 = v19;
  v31[0] = v15;
  v31[1] = v16;
  sub_188E4342C(v31);
  v33[2] = v22;
  v33[3] = v23;
  v34 = v24;
  v33[0] = v20;
  v33[1] = v21;
  sub_188E4342C(v33);
  return v13 & 1;
}

uint64_t _s5UIKit21UICornerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v16 = *(a2 + 40);
  v17 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 64);
  if (v4 == 255)
  {
    if (v12 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v12 == 255)
    {
      return 0;
    }

    if (v4)
    {
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (*a1 != *a2)
    {
      return 0;
    }
  }

  if (v6 == 255)
  {
    if (v14 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v14 == 255)
    {
      return 0;
    }

    if (v6)
    {
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v14)
    {
      return 0;
    }

    if (v5 != v13)
    {
      return 0;
    }
  }

  if (v8 == 255)
  {
    if (v16 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v16 == 255)
    {
      return 0;
    }

    if (v8)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    if (v7 != v15)
    {
      return 0;
    }
  }

  if (v10 == 255)
  {
    if (v18 == 255)
    {
      return sub_1890152AC(v11, v19);
    }
  }

  else if (v18 != 255)
  {
    if (v10)
    {
      if ((v18 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    if (v9 == v17)
    {
      return sub_1890152AC(v11, v19);
    }
  }

  return 0;
}

unint64_t sub_18904DC48()
{
  result = qword_1EA93ABC0;
  if (!qword_1EA93ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABC0);
  }

  return result;
}

uint64_t sub_18904DC9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18904DCE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_18904DD58()
{
  type metadata accessor for UICornerRadius(0);
  v29 = sub_18A4A7C18();
  v30 = sub_18A4A7C18();
  v1 = sub_18A4A7C18();
  v2 = sub_18A4A7C18();
  sub_188A34624(0, &qword_1ED48FD80);
  v3 = sub_18A4A7C28();
  v31 = v0;
  if (v3)
  {
    v4 = v3;
    v27 = v1;
    v5 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_19;
    }

    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v6; i = v2)
    {
      v2 = 0;
      v7 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = sub_188E48F84(v2, v4);
        }

        else
        {
          if (v2 >= *(v5 + 16))
          {
            goto LABEL_18;
          }

          v8 = *(v4 + 8 * v2 + 32);
        }

        v9 = v8;
        v10 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        v11 = [v8 unsignedIntegerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_188E4C8BC(0, *(v7 + 2) + 1, 1, v7);
        }

        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          v7 = sub_188E4C8BC((v12 > 1), v13 + 1, 1, v7);
        }

        *(v7 + 2) = v13 + 1;
        *&v7[8 * v13 + 32] = v11;
        ++v2;
        if (v10 == v6)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v6 = sub_18A4A7F68();
    }

    v7 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v1 = v27;
    v2 = i;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v29)
  {
    v14 = *&v29[OBJC_IVAR___UICornerRadius_impl];
    v15 = v29[OBJC_IVAR___UICornerRadius_impl + 8];

    v16 = v30;
    if (v30)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = 0;
    v15 = -1;
    v16 = v30;
    if (v30)
    {
LABEL_24:
      v17 = *&v16[OBJC_IVAR___UICornerRadius_impl];
      v18 = v16[OBJC_IVAR___UICornerRadius_impl + 8];

      if (v1)
      {
        goto LABEL_25;
      }

LABEL_29:
      v19 = 0;
      v21 = -1;
      if (v2)
      {
        goto LABEL_26;
      }

LABEL_30:
      v22 = 0;
      v24 = -1;
      goto LABEL_31;
    }
  }

  v17 = 0;
  v18 = -1;
  if (!v1)
  {
    goto LABEL_29;
  }

LABEL_25:
  v19 = *(v1 + OBJC_IVAR___UICornerRadius_impl);
  v20 = v1;
  v21 = *(v1 + OBJC_IVAR___UICornerRadius_impl + 8);

  if (!v2)
  {
    goto LABEL_30;
  }

LABEL_26:
  v22 = *(v2 + OBJC_IVAR___UICornerRadius_impl);
  v23 = v2;
  v24 = *(v2 + OBJC_IVAR___UICornerRadius_impl + 8);

LABEL_31:
  v25 = &v31[OBJC_IVAR___UICornerConfiguration_impl];
  *v25 = v14;
  v25[8] = v15;
  *(v25 + 2) = v17;
  v25[24] = v18;
  *(v25 + 4) = v19;
  v25[40] = v21;
  *(v25 + 6) = v22;
  v25[56] = v24;
  *(v25 + 8) = v7;
  v32.receiver = v31;
  v32.super_class = UICornerConfiguration;
  return objc_msgSendSuper2(&v32, sel_init);
}

uint64_t _UIWindowSceneBackgroundPlacement.hashValue.getter()
{
  sub_18A4A8888();
  sub_18A4A7C98();
  return sub_18A4A88E8();
}

uint64_t sub_18904E180@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_allocWithZone(_UIWindowSceneBackgroundPlacement) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ABD8);
  result = swift_allocObject();
  *(result + 16) = v2;
  *a1 = result;
  return result;
}

unint64_t sub_18904E1E4(uint64_t a1)
{
  result = sub_18904E20C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18904E20C()
{
  result = qword_1EA93ABE0;
  if (!qword_1EA93ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABE0);
  }

  return result;
}

unint64_t sub_18904E264()
{
  result = qword_1EA93ABE8;
  if (!qword_1EA93ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABE8);
  }

  return result;
}

unint64_t sub_18904E2BC()
{
  result = qword_1EA93ABF0;
  if (!qword_1EA93ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93ABF0);
  }

  return result;
}

uint64_t sub_18904E324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  v5 = *(a3 + 376);
  v6 = sub_189053460(&unk_1EA930C08, type metadata accessor for _MaterialRenderingMode);
  return v5(&v8, &type metadata for _UITraitColorMaterialRenderingMode, &type metadata for _UITraitColorMaterialRenderingMode, &off_1EE439290, v6, a2, a3);
}

void sub_18904E400(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_18A4A7288();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_18904E470()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_1ED4A3620 = result;
  return result;
}

uint64_t sub_18904E4F4()
{
  if (qword_1ED48FCC0 != -1)
  {
    swift_once();
  }

  return byte_1ED4A3620;
}

uint64_t sub_18904E544()
{
  v0 = sub_188B8AD8C(&unk_1EFAB8FA8);
  result = swift_arrayDestroy();
  qword_1EA930C40 = v0;
  return result;
}

id sub_18904E590(void *a1, double a2)
{
  if ([a1 accessibilityContrast] == 1)
  {
    v3 = 120.0;
  }

  else
  {
    v3 = 195.0;
  }

  if (a2 * 255.0 <= v3)
  {
    v4 = &selRef_whiteColor;
  }

  else
  {
    v4 = &selRef_blackColor;
  }

  v5 = [objc_opt_self() *v4];

  return v5;
}

uint64_t sub_18904E7E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64FD70;
  v1 = objc_opt_self();
  v2 = [v1 labelColor];
  v3 = [v2 _systemColorName];

  v4 = sub_18A4A7288();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = [v1 secondaryLabelColor];
  v8 = [v7 _systemColorName];

  v9 = sub_18A4A7288();
  v11 = v10;

  *(inited + 48) = v9;
  *(inited + 56) = v11;
  v12 = [v1 tertiaryLabelColor];
  v13 = [v12 _systemColorName];

  v14 = sub_18A4A7288();
  v16 = v15;

  *(inited + 64) = v14;
  *(inited + 72) = v16;
  v17 = [v1 quaternaryLabelColor];
  v18 = [v17 _systemColorName];

  v19 = sub_18A4A7288();
  v21 = v20;

  *(inited + 80) = v19;
  *(inited + 88) = v21;
  v22 = [v1 systemFillColor];
  v23 = [v22 _systemColorName];

  v24 = sub_18A4A7288();
  v26 = v25;

  *(inited + 96) = v24;
  *(inited + 104) = v26;
  v27 = [v1 secondarySystemFillColor];
  v28 = [v27 _systemColorName];

  v29 = sub_18A4A7288();
  v31 = v30;

  *(inited + 112) = v29;
  *(inited + 120) = v31;
  v32 = [v1 tertiarySystemFillColor];
  v33 = [v32 _systemColorName];

  v34 = sub_18A4A7288();
  v36 = v35;

  *(inited + 128) = v34;
  *(inited + 136) = v36;
  v37 = [v1 quaternarySystemFillColor];
  v38 = [v37 _systemColorName];

  v39 = sub_18A4A7288();
  v41 = v40;

  *(inited + 144) = v39;
  *(inited + 152) = v41;
  v42 = sub_188B8AD8C(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_1ED48C4E8 = v42;
  return result;
}

id sub_18904EAF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA939660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A65FA30;
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  v3 = [v2 _systemColorName];

  v48 = v3;
  *(inited + 32) = sub_18A4A7288();
  *(inited + 40) = v4;
  v5 = [v1 systemGroupedBackgroundColor];
  v6 = [v5 _systemColorName];

  v47 = v6;
  *(inited + 48) = sub_18A4A7288();
  *(inited + 56) = v7;
  v8 = [v1 secondarySystemBackgroundColor];
  v9 = [v8 _systemColorName];

  v46 = v9;
  *(inited + 64) = sub_18A4A7288();
  *(inited + 72) = v10;
  v11 = [v1 secondarySystemGroupedBackgroundColor];
  v12 = [v11 _systemColorName];

  *(inited + 80) = sub_18A4A7288();
  *(inited + 88) = v13;
  v14 = [v1 tertiarySystemBackgroundColor];
  v15 = [v14 _systemColorName];

  *(inited + 96) = sub_18A4A7288();
  *(inited + 104) = v16;
  v17 = [v1 tertiarySystemGroupedBackgroundColor];
  v18 = [v17 _systemColorName];

  *(inited + 112) = sub_18A4A7288();
  *(inited + 120) = v19;
  v20 = [v1 groupTableViewBackgroundColor];
  v21 = [v20 _systemColorName];

  *(inited + 128) = sub_18A4A7288();
  *(inited + 136) = v22;
  result = [v1 tableBackgroundColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v24 = result;
  v25 = [result _systemColorName];

  *(inited + 144) = sub_18A4A7288();
  *(inited + 152) = v26;
  result = [v1 tableCellPlainBackgroundColor];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v27 = result;
  v28 = [result _systemColorName];

  *(inited + 160) = sub_18A4A7288();
  *(inited + 168) = v29;
  result = [v1 tableCellGroupedBackgroundColor];
  if (result)
  {
    v30 = result;

    v31 = [v30 _systemColorName];
    v32 = sub_18A4A7288();
    v34 = v33;

    *(inited + 176) = v32;
    *(inited + 184) = v34;
    v35 = [v1 tableCellPlainSelectedBackgroundColor];
    v36 = [v35 _systemColorName];

    v37 = sub_18A4A7288();
    v39 = v38;

    *(inited + 192) = v37;
    *(inited + 200) = v39;
    v40 = [v1 tableCellGroupedSelectedBackgroundColor];
    v41 = [v40 _systemColorName];

    v42 = sub_18A4A7288();
    v44 = v43;

    *(inited + 208) = v42;
    *(inited + 216) = v44;
    v45 = sub_188B8AD8C(inited);
    swift_setDeallocating();
    result = swift_arrayDestroy();
    qword_1EA93AC00 = v45;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_18904EF30()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A2DB8();
  sub_188E904A0();
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_18904EFA8()
{
  sub_18A4A7348();
  sub_18A4A2DB8();
  sub_188E904A0();
  return sub_18A4A71A8();
}

uint64_t sub_18904F004()
{
  sub_18A4A8888();
  sub_18A4A7348();
  sub_18A4A2DB8();
  sub_188E904A0();
  sub_18A4A71A8();
  return sub_18A4A88E8();
}

uint64_t sub_18904F078(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_18A4A86C8() & 1) != 0)
  {
    return MEMORY[0x18CFDDCF0](a1 + *(a3 + 20), a2 + *(a3 + 20)) & 1;
  }

  else
  {
    return 0;
  }
}

id sub_18904F10C()
{
  v0 = sub_18A4A6228();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A4A6238();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18A4A6248();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x1E6981AD8] || v8 == *MEMORY[0x1E6981AE8])
  {
    (*(v5 + 96))(v7, v4);
    v10 = v7[1];
    v23 = *v7;
    v22 = v10;
    v11 = v7[3];
    v21 = v7[2];
    v20 = v11;
    v19 = v7[4];
    v12 = objc_opt_self();
    v30 = v23;
    *v31 = v22;
    *&v31[16] = v21;
    v32 = v20;
    v33 = v19;
    return [v12 _vibrantColorMatrixConfigurationWithColorMatrix_maxColorComponent_preservesHue_];
  }

  else if (v8 == *MEMORY[0x1E6981AE0])
  {
    (*(v5 + 96))(v7, v4);
    (*(v1 + 32))(v3, v7, v0);
    sub_18A4A6218();
    sub_18A4A61F8();
    v15 = v14;
    v16 = sub_18A4A6208();
    v17 = objc_opt_self();
    v24 = v30;
    v25 = *v31;
    v26 = *&v31[8];
    v27 = *&v31[24];
    v28 = v32;
    v29 = v33;
    v18 = [v17 _vibrantColorMatrixConfigurationWithColorMatrix_maxColorComponent_preservesHue_];
    (*(v1 + 8))(v3, v0);
    return v18;
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

void sub_18904F42C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_18A4A6B98();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_18A4A4428();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_18A4A6258();
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_18A4A5318();
  v48 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v61 = &v47 - v13;
  v47 = [a1 userInterfaceStyle];
  CAColorMatrixMakeColorSourceOver();
  v62 = [objc_opt_self() _vibrantColorMatrixConfigurationWithColorMatrix_maxColorComponent_preservesHue_];
  v14 = [a2 resolvedColorWithTraitCollection_];
  v15 = sub_188B56C3C(v14);
  v17 = v16;
  v19 = v18;

  if (v19)
  {
    __break(1u);
  }

  else
  {
    v64[0] = v15;
    v64[1] = v17;
    v65 = 2143289344;
    v20 = sub_18A4A2DB8();
    v60 = &v47;
    v21 = *(v20 - 8);
    MEMORY[0x1EEE9AC00](v20);
    v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
    v59 = &v47;
    MEMORY[0x1EEE9AC00](v24 - 8);
    v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v27);
    v29 = &v47 - v28;
    v30 = v21;
    sub_188A3F29C(a3, &v47 - v28, &qword_1EA935D70);
    v31 = *(v21 + 48);
    if (v31(v29, 1, v20) == 1)
    {
      v32 = v30;
      v33 = sub_188B56DB8();
      if (v33)
      {
        v34 = v33;
        (*(v32 + 16))(v26, v33 + *((*MEMORY[0x1E69E7D40] & *v33) + 0x60), v20);

        v35 = 0;
      }

      else
      {
        v35 = 1;
      }

      (*(v32 + 56))(v26, v35, 1, v20);
      v30 = v32;
      if (v31(v29, 1, v20) != 1)
      {
        sub_188A3F5FC(v29, &qword_1EA935D70);
      }
    }

    else
    {
      (*(v30 + 32))(v26, v29, v20);
      (*(v30 + 56))(v26, 0, 1, v20);
    }

    if (v31(v26, 1, v20) == 1)
    {
      sub_188A3F5FC(v26, &qword_1EA935D70);
    }

    else
    {
      v36 = v23;
      (*(v30 + 32))(v23, v26, v20);
      v37 = v61;
      sub_188B0C0A4(a1);
      v38 = v54;
      v39 = MEMORY[0x1E697DBA8];
      if (v47 != 2)
      {
        v39 = MEMORY[0x1E697DBB8];
      }

      v40 = v51;
      v41 = v56;
      (*(v54 + 104))(v51, *v39, v56);
      v42 = v48;
      (*(v48 + 16))(v49, v37, v63);
      v43 = v30;
      v44 = v55;
      sub_18A4A6B58();
      v45 = v50;
      sub_18A4A2D98();
      (*(v57 + 8))(v44, v58);
      (*(v38 + 8))(v40, v41);
      v46 = sub_18904F10C();
      (*(v52 + 8))(v45, v53);
      (*(v42 + 8))(v61, v63);
      (*(v43 + 8))(v36, v20);
      if (v46)
      {
      }
    }
  }
}

uint64_t sub_18904FB90(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t *a5)
{
  v157 = a5;
  v147 = a3;
  v146 = a2;
  v148 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AC18);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v128 = &v113 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v113 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v137 = (&v113 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v135 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v136 = (&v113 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v134 = &v113 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AC20);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v145 = &v113 - v25;
  v143 = sub_18A4A6B98();
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v130 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v139 = &v113 - v28;
  v149 = sub_18A4A5318();
  v155 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v30 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v144 = &v113 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v154 = &v113 - v34;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_188E36ADC;
  *(v35 + 24) = 0;
  v164 = sub_188EB96AC;
  v165 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v161 = 1107296256;
  v162 = sub_188A7AC24;
  v163 = &block_descriptor_28;
  v36 = _Block_copy(&aBlock);

  v159 = [a4 traitCollectionByModifyingTraits_];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    v38 = swift_allocObject();
    *(v38 + 16) = sub_188E36AE0;
    *(v38 + 24) = 0;
    v164 = sub_188EB96AC;
    v165 = v38;
    aBlock = MEMORY[0x1E69E9820];
    v161 = 1107296256;
    v162 = sub_188A7AC24;
    v163 = &block_descriptor_35_3;
    v39 = _Block_copy(&aBlock);

    v156 = [a4 traitCollectionByModifyingTraits_];
    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v133 = v30;
      v125 = v13;
      v126 = v8;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
      v153 = &v113;
      v42 = *(*(v41 - 8) + 64);
      MEMORY[0x1EEE9AC00](v41 - 8);
      v43 = &v113 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      v44 = sub_18A4A2DB8();
      v45 = *(v44 - 8);
      v46 = *(v45 + 16);
      v141 = v45 + 16;
      v140 = v46;
      v46(v43, v157, v44);
      v47 = *(v45 + 56);
      v48 = v47(v43, 0, 1, v44);
      v152 = &v113;
      MEMORY[0x1EEE9AC00](v48);
      v131 = v49;
      v150 = &v113 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      MEMORY[0x1EEE9AC00](v50);
      v132 = v42;
      MEMORY[0x1EEE9AC00](v51);
      v151 = v43;
      sub_188A3F29C(v43, v43, &qword_1EA935D70);
      v52 = *(v45 + 48);
      v158 = v45 + 48;
      if (v52(v43, 1, v44) == 1)
      {
        v53 = v52;
        v54 = v44;
        v55 = sub_188B56DB8();
        if (v55)
        {
          v56 = v55;
          v140(v43, v55 + *((*MEMORY[0x1E69E7D40] & *v55) + 0x60), v54);

          v57 = 0;
        }

        else
        {
          v57 = 1;
        }

        v47(v43, v57, 1, v54);
        v58 = v53(v43, 1, v54);
        v44 = v54;
        v52 = v53;
        if (v58 != 1)
        {
          sub_188A3F5FC(v43, &qword_1EA935D70);
        }
      }

      else
      {
        (*(v45 + 32))(v43, v43, v44);
        v47(v43, 0, 1, v44);
      }

      if (v52(v43, 1, v44) == 1)
      {

        sub_188A3F5FC(v151, &qword_1EA935D70);
        sub_188A3F5FC(v43, &qword_1EA935D70);
        return 0;
      }

      v123 = v47;
      v124 = v45 + 56;
      v129 = v45;
      v61 = *(v45 + 32);
      v59 = v45 + 32;
      v60 = v61;
      v138 = v44;
      v61(v150, v43, v44);
      v62 = v154;
      sub_188B0C0A4(v159);
      v63 = *(v155 + 16);
      v64 = v149;
      v121 = v155 + 16;
      v119 = v63;
      v63(v144, v62, v149);
      v65 = v139;
      sub_18A4A6B58();
      v66 = sub_18A4A6CF8();
      v67 = *(v66 - 8);
      v68 = *(v67 + 16);
      v69 = v145;
      v118 = v67 + 16;
      v117 = v68;
      v68(v145, v146, v66);
      v70 = *(v67 + 56);
      v120 = v66;
      v116 = v70;
      v70(v69, 0, 1, v66);
      sub_18A4A6B88();
      if (v147)
      {
        v71 = v134;
        sub_18A4A2D88();
        v72 = v71;
        v73 = &v166;
      }

      else
      {
        v71 = v135;
        MEMORY[0x18CFDDCC0](v148, v65);
        v72 = v71;
        v73 = &v167;
      }

      v74 = *(v73 - 32);
      sub_188A3F29C(v72, v74, &qword_1EA93AC18);
      v75 = sub_18A4A6258();
      v76 = *(v75 - 8);
      if ((*(v76 + 48))(v74, 1, v75) == 1)
      {

        sub_188A3F5FC(v71, &qword_1EA93AC18);
        (*(v142 + 8))(v65, v143);
        (*(v155 + 8))(v154, v64);
        (*(v129 + 8))(v150, v138);
        sub_188A3F5FC(v151, &qword_1EA935D70);
        sub_188A3F5FC(v74, &qword_1EA93AC18);
        return 0;
      }

      v114 = v60;
      v115 = v59;
      v122 = sub_18904F10C();
      sub_188A3F5FC(v71, &qword_1EA93AC18);
      v77 = *(v142 + 8);
      v77(v65, v143);
      v78 = *(v155 + 8);
      v78(v154, v64);
      v79 = *(v129 + 8);
      v79(v150, v138);
      sub_188A3F5FC(v151, &qword_1EA935D70);
      v80 = (*(v76 + 8))(v74, v75);
      v81 = v122;
      if (v122)
      {
        v136 = v77;
        v137 = v78;
        v139 = v79;
        v154 = &v113;
        v82 = v132;
        v83 = MEMORY[0x1EEE9AC00](v80);
        v84 = &v113 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
        v85 = v138;
        (v140)(v84, v157, v138, v83);
        v86 = v123;
        v87 = (v123)(v84, 0, 1, v85);
        v157 = &v113;
        MEMORY[0x1EEE9AC00](v87);
        v150 = &v113 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
        v152 = &v113;
        MEMORY[0x1EEE9AC00](v89);
        v90 = v84;
        v151 = &v113;
        MEMORY[0x1EEE9AC00](v91);
        v92 = v84;
        v153 = v84;
        sub_188A3F29C(v84, v84, &qword_1EA935D70);
        if (v52(v84, 1, v85) == 1)
        {
          v93 = sub_188B56DB8();
          v94 = v133;
          if (v93)
          {
            v95 = v93;
            v96 = v138;
            v140(v90, v93 + *((*MEMORY[0x1E69E7D40] & *v93) + 0x60), v138);

            v97 = 0;
          }

          else
          {
            v97 = 1;
            v96 = v138;
          }

          v123(v90, v97, 1, v96);
          v85 = v96;
          if (v52(v92, 1, v96) != 1)
          {
            sub_188A3F5FC(v92, &qword_1EA935D70);
          }
        }

        else
        {
          v114(v84, v84, v85);
          v86(v84, 0, 1, v85);
          v94 = v133;
        }

        if (v52(v90, 1, v85) == 1)
        {

          sub_188A3F5FC(v153, &qword_1EA935D70);
          sub_188A3F5FC(v90, &qword_1EA935D70);
          return 0;
        }

        v98 = v150;
        v114(v150, v90, v85);
        sub_188B0C0A4(v156);
        v99 = v94;
        v119(v144, v94, v149);
        v100 = v130;
        sub_18A4A6B58();
        v101 = v145;
        v102 = v120;
        v117(v145, v146, v120);
        v116(v101, 0, 1, v102);
        sub_18A4A6B88();
        if (v147)
        {
          v103 = v127;
          sub_18A4A2D88();
          v104 = v103;
          v105 = &v157;
        }

        else
        {
          v103 = v128;
          MEMORY[0x18CFDDCC0](v148, v100);
          v104 = v103;
          v105 = &v158;
        }

        v106 = *(v105 - 32);
        sub_188A3F29C(v104, v106, &qword_1EA93AC18);
        v107 = sub_18A4A6258();
        v108 = *(v107 - 8);
        if ((*(v108 + 48))(v106, 1, v107) == 1)
        {

          sub_188A3F5FC(v103, &qword_1EA93AC18);
          v136(v100, v143);
          v137(v99, v149);
          (v139)(v98, v138);
          sub_188A3F5FC(v153, &qword_1EA935D70);
          sub_188A3F5FC(v106, &qword_1EA93AC18);
          return 0;
        }

        v109 = sub_18904F10C();
        sub_188A3F5FC(v103, &qword_1EA93AC18);
        v136(v100, v143);
        v137(v99, v149);
        (v139)(v98, v138);
        sub_188A3F5FC(v153, &qword_1EA935D70);
        (*(v108 + 8))(v106, v107);
        v110 = v122;
        if (v109)
        {
          v111 = [objc_opt_self() _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];
          v112 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];

          return v112;
        }
      }

      return 0;
    }
  }

  __break(1u);
  return result;
}

id sub_189050FD0(void *a1, uint64_t *a2)
{
  v4 = sub_18A4A6CF8();
  v5 = *(v4 - 1);
  v271 = v4;
  v272 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v270 = (&v262 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = _s8CacheKeyVMa();
  v8 = *(v7 - 8);
  v280 = v7;
  v281 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v262 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v262 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v273 = (&v262 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93AC08);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v276 = &v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v262 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v262 - v22;
  v24 = sub_18A4A2DB8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v262 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v262 - v29;
  v277 = a2;
  v31 = sub_188B56DB8();
  if (!v31)
  {
    return 0;
  }

  v265 = v10;
  v269 = v13;
  v279 = v23;
  v32 = a1;
  v33 = v25 + 16;
  v34 = *(v25 + 16);
  v35 = v31;
  v34(v30, v31 + *((*MEMORY[0x1E69E7D40] & *v31) + 0x60), v24);

  v274 = v25;
  (*(v25 + 32))(v27, v30, v24);
  v267 = v32;
  v36 = [v32 _systemColorName];
  v37 = sub_18A4A7288();
  v39 = v38;

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v275 = v24;
  if (v40)
  {
    v41 = v24;
    v42 = v279;
    v43 = v280;
    v44 = v33;
    v34(v279 + *(v280 + 20), v27, v41);
    *v42 = v37;
    v42[1] = v39;
    v45 = v281;
    (*(v281 + 56))(v42, 0, 1, v43);
    v46 = v39;
  }

  else
  {
    v44 = v33;
    v46 = v39;
    v45 = v281;
    (*(v281 + 56))(v279, 1, 1, v280);
  }

  v47 = v34;
  if (qword_1ED48C4E0 != -1)
  {
    swift_once();
  }

  v48 = v46;
  v49 = sub_188A551E4(v37, v46, qword_1ED48C4E8);
  v278 = v27;
  v268 = v37;
  v50 = v44;
  v266 = v47;
  if (v49)
  {
    goto LABEL_10;
  }

  if (!_UIMaterialPresentationsEnabled())
  {
    goto LABEL_15;
  }

  if (qword_1EA931E68 != -1)
  {
    swift_once();
  }

  if (sub_188A551E4(v37, v46, qword_1EA93AC00))
  {
LABEL_10:
    v51 = 0;
    v52 = 1;
  }

  else
  {
LABEL_15:
    if (qword_1ED491B40 != -1)
    {
      swift_once();
    }

    if (qword_1ED491AF0 != -1)
    {
      swift_once();
    }

    v53 = off_1ED491B48;
    os_unfair_lock_lock(*(off_1ED491B48 + 2));
    sub_18901BD20(&type metadata for _UITraitColorMaterialRenderingMode, sub_188EB2F58);
    os_unfair_lock_unlock(v53[2]);
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934860);
    v54 = sub_188A74A44();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v55 = [v277 _valueForNSIntegerTraitToken_];
    swift_unknownObjectRelease();
    if (v55 == 2)
    {
      v52 = 0;
      v51 = 1;
    }

    else
    {
      if (qword_1EA930C38 != -1)
      {
        swift_once();
      }

      v56 = qword_1EA930C40;
      v57 = [v267 _systemColorName];
      v58 = sub_18A4A7288();
      v60 = v59;

      v51 = sub_188A551E4(v58, v60, v56);

      v52 = 0;
    }

    v45 = v281;
  }

  sub_188A3F29C(v279, v20, &unk_1EA93AC08);
  v63 = *(v45 + 48);
  v61 = v45 + 48;
  v62 = v63;
  if ((v63)(v20, 1, v280) == 1)
  {
    sub_188A3F5FC(v20, &unk_1EA93AC08);
    v281 = v61;
    if (v52)
    {
      goto LABEL_27;
    }

LABEL_38:

    if ((v51 & 1) == 0)
    {
      v76 = 0;
      v100 = v274;
      goto LABEL_53;
    }

    v273 = v62;
    v62 = v275;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_188E36ADC;
    *(v77 + 24) = 0;
    v286 = sub_188A86D40;
    v287 = v77;
    aBlock = MEMORY[0x1E69E9820];
    v283 = 1107296256;
    v271 = &v284;
    v284 = sub_188A7AC24;
    v285 = &block_descriptor_85;
    v78 = _Block_copy(&aBlock);

    v79 = [v277 traitCollectionByModifyingTraits_];
    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if (v78)
    {
      __break(1u);
    }

    else
    {
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
      v81 = MEMORY[0x1EEE9AC00](v80 - 8);
      v264 = v82;
      v48 = (&v262 - v82);
      v77 = v266;
      v266(&v262 - v82, v278, v62, v81);
      v268 = *(v274 + 56);
      (v268)(v48, 0, 1, v62);
      v272 = v50;
      v83 = v267;
      sub_18904F42C(v79, v267, v48);
      v270 = v84;

      sub_188A3F5FC(v48, &qword_1EA935D70);
      v85 = swift_allocObject();
      *(v85 + 16) = sub_188E36AE0;
      *(v85 + 24) = 0;
      v286 = sub_188EB96AC;
      v287 = v85;
      aBlock = MEMORY[0x1E69E9820];
      v283 = 1107296256;
      v284 = sub_188A7AC24;
      v285 = &block_descriptor_7_1;
      v86 = _Block_copy(&aBlock);

      v37 = [v277 traitCollectionByModifyingTraits_];
      _Block_release(v86);
      LOBYTE(v86) = swift_isEscapingClosureAtFileLocation();

      if ((v86 & 1) == 0)
      {
        v88 = MEMORY[0x1EEE9AC00](v87);
        v89 = (&v262 - v264);
        (v77)(&v262 - v264, v278, v62, v88);
        (v268)(v89, 0, 1, v62);
        sub_18904F42C(v37, v83, v89);
        v91 = v90;

        sub_188A3F5FC(v89, &qword_1EA935D70);
        v92 = objc_opt_self();
        v93 = v270;
        v94 = [v92 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];

        v76 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];
LABEL_51:
        v62 = v273;
        v100 = v274;
LABEL_53:
        v101 = v269;
        v71 = v276;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_92;
  }

  v37 = v273;
  sub_189053248(v20, v273);
  if (qword_1ED48C4D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v72 = off_1ED48C4D8;
  if (*(off_1ED48C4D8 + 2))
  {
    v73 = sub_188E8BC8C(v37);
    if (v74)
    {
      v75 = *(v72[7] + 8 * v73);
      swift_endAccess();
      v76 = v75;

      sub_1890532AC(v37);
      sub_188A3F5FC(v279, &unk_1EA93AC08);
      (*(v274 + 8))(v278, v275);
      if ((v52 | v51))
      {
        return v76;
      }

      return 0;
    }
  }

  swift_endAccess();
  sub_1890532AC(v37);
  v281 = v61;
  if (!v52)
  {
    goto LABEL_38;
  }

LABEL_27:
  v37 = objc_opt_self();
  v64 = [v37 labelColor];
  v65 = [v64 _systemColorName];

  v66 = sub_18A4A7288();
  v68 = v67;

  if (v66 == v268 && v68 == v48)
  {
    v69 = v37;

    v70 = v278;
    v71 = v276;
LABEL_44:

    v97 = v271;
    v96 = v272;
    v98 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F20], v271);
    v99 = v277;
    v76 = sub_18904FB90(0, v98, 1, v277, v70);
    (*(v96 + 8))(v98, v97);
    v100 = v274;
    v101 = v269;
    if (v76)
    {
      goto LABEL_54;
    }

    v273 = v62;
    v102 = v275;
    v271 = [v69 blackColor];
    v268 = [v69 whiteColor];
    v103 = swift_allocObject();
    *(v103 + 16) = sub_188E36ADC;
    *(v103 + 24) = 0;
    v286 = sub_188EB96AC;
    v287 = v103;
    aBlock = MEMORY[0x1E69E9820];
    v283 = 1107296256;
    v270 = &v284;
    v284 = sub_188A7AC24;
    v285 = &block_descriptor_14_4;
    v104 = _Block_copy(&aBlock);

    v48 = [v99 traitCollectionByModifyingTraits_];
    _Block_release(v104);
    LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

    if (v104)
    {
      __break(1u);
    }

    else
    {
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
      v106 = MEMORY[0x1EEE9AC00](v105 - 8);
      v263 = v107;
      v108 = &v262 - v107;
      v109 = v266;
      v266(&v262 - v107, v278, v102, v106);
      v272 = v50;
      v264 = *(v274 + 56);
      (v264)(v108, 0, 1, v102);
      sub_18904F42C(v48, v271, v108);
      v267 = v110;

      sub_188A3F5FC(v108, &qword_1EA935D70);
      v48 = swift_allocObject();
      v48[2] = sub_188E36AE0;
      v48[3] = 0;
      v286 = sub_188EB96AC;
      v287 = v48;
      aBlock = MEMORY[0x1E69E9820];
      v283 = 1107296256;
      v284 = sub_188A7AC24;
      v285 = &block_descriptor_21_1;
      v111 = _Block_copy(&aBlock);

      v69 = [v99 traitCollectionByModifyingTraits_];
      _Block_release(v111);
      LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

      if ((v111 & 1) == 0)
      {
        v113 = v268;
        v114 = v271;
        if (v268)
        {
          v115 = v268;
        }

        else
        {
          v115 = v271;
        }

        v116 = MEMORY[0x1EEE9AC00](v112);
        v117 = &v262 - v263;
        v118 = v275;
        v109(&v262 - v263, v278, v275, v116);
        (v264)(v117, 0, 1, v118);
        sub_18904F42C(v69, v115, v117);
        v120 = v119;

        sub_188A3F5FC(v117, &qword_1EA935D70);
        v121 = objc_opt_self();
        v122 = v267;
        v123 = [v121 _vibrantEffectWithLightVibrantColorMatrix_darkVibrantColorMatrix_alpha_];

        v76 = [objc_allocWithZone(_UIMaterial) initWithVibrantVisualEffect_];
        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_97;
  }

  v95 = sub_18A4A86C8();

  if (v95)
  {
    v69 = v37;
    v71 = v276;
    v70 = v278;
    goto LABEL_44;
  }

  v130 = [v37 secondaryLabelColor];
  v131 = [v130 _systemColorName];

  v132 = sub_18A4A7288();
  v134 = v133;

  if (v132 == v268 && v134 == v48)
  {

    v71 = v276;
    v135 = v277;
LABEL_67:

    v137 = MEMORY[0x1E6981F20];
LABEL_68:
    v139 = v271;
    v138 = v272;
    v140 = v270;
    (*(v272 + 104))(v270, *v137, v271);
    v141 = 1;
LABEL_69:
    v76 = sub_18904FB90(v141, v140, 1, v135, v278);
    (*(v138 + 8))(v140, v139);
    v100 = v274;
    v101 = v269;
    goto LABEL_54;
  }

  v136 = sub_18A4A86C8();

  v135 = v277;
  if (v136)
  {
    v71 = v276;
    goto LABEL_67;
  }

  v142 = [v37 tertiaryLabelColor];
  v143 = [v142 _systemColorName];

  v144 = sub_18A4A7288();
  v146 = v145;

  if (v144 == v268 && v146 == v48)
  {

LABEL_74:
    v71 = v276;

    v139 = v271;
    v138 = v272;
    v140 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F20], v271);
    v141 = 2;
    goto LABEL_69;
  }

  v147 = sub_18A4A86C8();

  if (v147)
  {
    goto LABEL_74;
  }

  v148 = [v37 quaternaryLabelColor];
  v149 = [v148 _systemColorName];

  v150 = sub_18A4A7288();
  v152 = v151;

  if (v150 == v268 && v152 == v48)
  {

LABEL_79:
    v71 = v276;

    v139 = v271;
    v138 = v272;
    v140 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F20], v271);
    v141 = 3;
    goto LABEL_69;
  }

  v153 = sub_18A4A86C8();

  if (v153)
  {
    goto LABEL_79;
  }

  v154 = [v37 systemFillColor];
  v155 = [v154 _systemColorName];

  v156 = sub_18A4A7288();
  v158 = v157;

  if (v156 == v268 && v158 == v48)
  {

LABEL_84:
    v71 = v276;

    v139 = v271;
    v138 = v272;
    v140 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
    v141 = 0;
    goto LABEL_69;
  }

  v159 = sub_18A4A86C8();

  if (v159)
  {
    goto LABEL_84;
  }

  v160 = [v37 secondarySystemFillColor];
  v161 = [v160 _systemColorName];

  v162 = sub_18A4A7288();
  v164 = v163;

  v77 = v268;
  if (v162 == v268 && v164 == v48)
  {

LABEL_89:
    v71 = v276;

    v137 = MEMORY[0x1E6981F18];
    goto LABEL_68;
  }

  v165 = sub_18A4A86C8();

  if (v165)
  {
    goto LABEL_89;
  }

LABEL_92:
  v99 = v62;
  v69 = v37;
  v166 = [v37 tertiarySystemFillColor];
  v167 = [v166 _systemColorName];

  v168 = sub_18A4A7288();
  v170 = v169;

  if (v168 == v77 && v170 == v48)
  {
    goto LABEL_94;
  }

LABEL_97:
  v171 = sub_18A4A86C8();

  if (v171)
  {
    goto LABEL_98;
  }

  v178 = [v69 quaternarySystemFillColor];
  v179 = [v178 _systemColorName];

  v180 = sub_18A4A7288();
  v182 = v181;

  if (v180 == v268 && v182 == v48)
  {

LABEL_106:

    v173 = v271;
    v172 = v272;
    v174 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
    v175 = 3;
    goto LABEL_99;
  }

  v183 = sub_18A4A86C8();

  if (v183)
  {
    goto LABEL_106;
  }

  v184 = [v69 systemBackgroundColor];
  v185 = [v184 _systemColorName];

  v186 = sub_18A4A7288();
  v188 = v187;

  if (v186 == v268 && v188 == v48)
  {
    goto LABEL_109;
  }

  v189 = sub_18A4A86C8();

  if (v189)
  {
    goto LABEL_111;
  }

  v190 = [v69 systemGroupedBackgroundColor];
  v191 = [v190 _systemColorName];

  v192 = sub_18A4A7288();
  v194 = v193;

  if (v192 == v268 && v194 == v48)
  {
    goto LABEL_109;
  }

  v195 = sub_18A4A86C8();

  if (v195)
  {
    goto LABEL_111;
  }

  v196 = [v69 groupTableViewBackgroundColor];
  v197 = [v196 _systemColorName];

  v198 = sub_18A4A7288();
  v200 = v199;

  if (v198 == v268 && v200 == v48)
  {
LABEL_109:

LABEL_111:

    v173 = v271;
    v172 = v272;
    v174 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
    v175 = 0;
LABEL_112:
    v176 = v174;
    v177 = 0;
    goto LABEL_100;
  }

  v201 = sub_18A4A86C8();

  if (v201)
  {
    goto LABEL_111;
  }

  v202 = [v69 secondarySystemBackgroundColor];
  v203 = [v202 _systemColorName];

  v204 = sub_18A4A7288();
  v206 = v205;

  if (v204 == v268 && v206 == v48)
  {
    goto LABEL_146;
  }

  v207 = sub_18A4A86C8();

  if (v207)
  {
LABEL_123:

    v173 = v271;
    v172 = v272;
    v174 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
    v175 = 1;
    goto LABEL_112;
  }

  v208 = [v69 secondarySystemGroupedBackgroundColor];
  v209 = [v208 _systemColorName];

  v210 = sub_18A4A7288();
  v212 = v211;

  if (v210 == v268 && v212 == v48)
  {
LABEL_146:

    goto LABEL_123;
  }

  v213 = sub_18A4A86C8();

  if (v213)
  {
    goto LABEL_123;
  }

  v214 = [v69 tertiarySystemBackgroundColor];
  v215 = [v214 _systemColorName];

  v216 = sub_18A4A7288();
  v218 = v217;

  if (v216 == v268 && v218 == v48)
  {
    goto LABEL_132;
  }

  v219 = sub_18A4A86C8();

  if (v219)
  {
LABEL_133:

    v173 = v271;
    v172 = v272;
    v174 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
    v175 = 2;
    goto LABEL_112;
  }

  v220 = [v69 tertiarySystemGroupedBackgroundColor];
  v221 = [v220 _systemColorName];

  v222 = sub_18A4A7288();
  v224 = v223;

  if (v222 == v268 && v224 == v48)
  {
LABEL_132:

    goto LABEL_133;
  }

  v225 = sub_18A4A86C8();

  if (v225)
  {
    goto LABEL_133;
  }

  result = [v69 tableBackgroundColor];
  if (!result)
  {
    __break(1u);
    goto LABEL_162;
  }

  v226 = result;
  v227 = [result _systemColorName];

  v228 = sub_18A4A7288();
  v230 = v229;

  if (v228 == v268 && v230 == v48)
  {
    goto LABEL_109;
  }

  v231 = sub_18A4A86C8();

  if (v231)
  {
    goto LABEL_111;
  }

  result = [v69 tableCellPlainBackgroundColor];
  if (!result)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v232 = result;
  v233 = [result _systemColorName];

  v234 = sub_18A4A7288();
  v236 = v235;

  if (v234 == v268 && v236 == v48)
  {
    goto LABEL_109;
  }

  v237 = sub_18A4A86C8();

  if (v237)
  {
    goto LABEL_111;
  }

  result = [v69 tableCellGroupedBackgroundColor];
  if (result)
  {
    v238 = result;
    v239 = [result _systemColorName];

    v240 = sub_18A4A7288();
    v242 = v241;

    if (v240 == v268 && v242 == v48)
    {
      goto LABEL_146;
    }

    v243 = sub_18A4A86C8();

    if (v243)
    {
      goto LABEL_123;
    }

    v244 = [v69 tableCellPlainSelectedBackgroundColor];
    v245 = [v244 _systemColorName];

    v246 = sub_18A4A7288();
    v248 = v247;

    if (v246 != v268 || v248 != v48)
    {
      v249 = sub_18A4A86C8();

      if (v249)
      {
        goto LABEL_98;
      }

      v250 = [v69 tableCellPlainSelectedBackgroundColor];
      v251 = [v250 _systemColorName];

      v252 = sub_18A4A7288();
      v254 = v253;

      if (v252 != v268 || v254 != v48)
      {
        v255 = sub_18A4A86C8();

        if ((v255 & 1) == 0)
        {
          v256 = [v69 tableCellGroupedSelectedBackgroundColor];
          v257 = [v256 _systemColorName];

          v258 = sub_18A4A7288();
          v260 = v259;

          if (v258 == v268 && v260 == v48)
          {
          }

          else
          {
            v261 = sub_18A4A86C8();

            if ((v261 & 1) == 0)
            {
              v76 = 0;
              goto LABEL_101;
            }
          }

          v173 = v271;
          v172 = v272;
          v174 = v270;
          (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
          v175 = 1;
          goto LABEL_99;
        }

        goto LABEL_98;
      }
    }

LABEL_94:

LABEL_98:

    v173 = v271;
    v172 = v272;
    v174 = v270;
    (*(v272 + 104))(v270, *MEMORY[0x1E6981F18], v271);
    v175 = 2;
LABEL_99:
    v176 = v174;
    v177 = 1;
LABEL_100:
    v76 = sub_18904FB90(v175, v176, v177, v277, v278);
    (*(v172 + 8))(v174, v173);
LABEL_101:
    v100 = v274;
    v101 = v269;
    v71 = v276;
    v62 = v99;
LABEL_54:
    v124 = v279;
    sub_188A3F29C(v279, v71, &unk_1EA93AC08);
    if ((v62)(v71, 1, v280) == 1)
    {
      sub_188A3F5FC(v124, &unk_1EA93AC08);
      (*(v100 + 8))(v278, v275);
      sub_188A3F5FC(v71, &unk_1EA93AC08);
    }

    else
    {
      sub_189053248(v71, v101);
      if (v76)
      {
        v125 = qword_1ED48C4D0;
        v126 = v76;
        if (v125 != -1)
        {
          swift_once();
        }

        v127 = v265;
        sub_189053308(v101, v265);
        swift_beginAccess();
        v128 = v126;
        sub_188F29154(v76, v127);
        swift_endAccess();
      }

      sub_1890532AC(v101);
      sub_188A3F5FC(v124, &unk_1EA93AC08);
      (*(v100 + 8))(v278, v275);
    }

    return v76;
  }

LABEL_163:
  __break(1u);
  return result;
}

uint64_t _s8CacheKeyVMa()
{
  result = qword_1ED48D3A8;
  if (!qword_1ED48D3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_189053248(uint64_t a1, uint64_t a2)
{
  v4 = _s8CacheKeyVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1890532AC(uint64_t a1)
{
  v2 = _s8CacheKeyVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_189053308(uint64_t a1, uint64_t a2)
{
  v4 = _s8CacheKeyVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18905339C()
{
  result = sub_18A4A2DB8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_189053460(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1890534C0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  v4 = sub_18A4A2D48();
  v5 = *(*(v4 - 8) + 104);
  if (v3 > 6)
  {
    v6 = MEMORY[0x1E6999C30];
  }

  else
  {
    v6 = qword_1E70F1F68[v3];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t _UITransitionOverlayView.transitionCompletionBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_188A52E38(*v1);
  return v2;
}

uint64_t _UITransitionOverlayView.transitionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_188A55B8C(v6);
}

void *sub_1890537E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 transitionCompletionBlock];
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    result = swift_allocObject();
    result[2] = sub_188B17524;
    result[3] = v5;
    v6 = sub_188AA727C;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  a2[1] = result;
  return result;
}

void sub_189053888(uint64_t a1, void **a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = *a2;
    v7[4] = sub_189055258;
    v7[5] = v5;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1890552D0;
    v7[3] = &block_descriptor_25_3;
    v3 = _Block_copy(v7);
  }

  else
  {
    v6 = *a2;
  }

  [v6 setTransitionCompletionBlock_];
  _Block_release(v3);
}

id _UITransitionOverlayView.init(snapshot:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithSnapshot_];

  return v2;
}

char *_UITransitionOverlayView.init(snapshot:)(void *a1)
{
  *&v1[OBJC_IVAR____UITransitionOverlayView_state] = 0;
  v3 = &v1[OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[OBJC_IVAR____UITransitionOverlayView_snapshot] = a1;
  v4 = objc_allocWithZone(type metadata accessor for _UITransitionBackdropView());
  v5 = a1;
  v6 = [v4 initWithFrame_];
  *&v1[OBJC_IVAR____UITransitionOverlayView_backdrop] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v8 = sub_18A4A7518();
  v9 = sub_18A4A7258();
  [v7 setValue:v8 forKey:v9];

  v10 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v11 = sub_18A4A7668();
  v12 = sub_18A4A7258();
  [v10 setValue:v11 forKey:v12];

  v13 = sub_18A4A7668();
  v14 = sub_18A4A7258();
  [v10 setValue:v13 forKey:v14];

  v15 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v25.receiver = v1;
  v25.super_class = _UITransitionOverlayView;
  v16 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v16 addSubview_];
  [v16 addSubview_];
  v17 = [v16 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18A64D660;
  v19 = sub_188A34624(0, &qword_1ED48EE50);
  *(v18 + 32) = v7;
  *(v18 + 56) = v19;
  *(v18 + 64) = v10;
  *(v18 + 120) = v19;
  *(v18 + 88) = v19;
  *(v18 + 96) = v15;
  v20 = v7;
  v21 = v10;
  v22 = v15;
  v23 = sub_18A4A7518();

  [v17 setFilters_];

  return v16;
}

Swift::Void __swiftcall _UITransitionOverlayView.startTransition()()
{
  v1 = OBJC_IVAR____UITransitionOverlayView_state;
  if (!*&v0[OBJC_IVAR____UITransitionOverlayView_state])
  {
    [*&v0[OBJC_IVAR____UITransitionOverlayView_snapshot] setAlpha_];
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = sub_189054048;
    v18 = v3;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_1890552D0;
    v16 = &block_descriptor_86;
    v4 = _Block_copy(&v13);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:0.38];
    _Block_release(v4);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v7 = v5;
    sub_189054050(v6);
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v17 = sub_18905487C;
    v18 = v9;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188A4A8F0;
    v16 = &block_descriptor_6_9;
    v10 = _Block_copy(&v13);
    v11 = v0;

    v17 = signpost_c2_entryLock_start;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_188C3DD6C;
    v16 = &block_descriptor_9_1;
    v12 = _Block_copy(&v13);
    [v8 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
    _Block_release(v12);
    _Block_release(v10);
  }
}

void sub_189053FE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR____UITransitionOverlayView_state) >= 3uLL)
    {
      _sSo24_UITransitionOverlayViewC5UIKitE27finishTransitionImmediatelyyyF_0();
    }
  }
}

void sub_189054050(id a1)
{
  if (a1 >= 3)
  {
  }
}

void _sSo24_UITransitionOverlayViewC5UIKitE27finishTransitionImmediatelyyyF_0()
{
  v1 = sub_18A4A6E18();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A6E58();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18A4A6E08();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_18A4A6E88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = OBJC_IVAR____UITransitionOverlayView_state;
  v19 = *&v0[OBJC_IVAR____UITransitionOverlayView_state];
  if (v19 >= 3)
  {
    v39 = &v37 - v16;
    v40 = v17;
    v41 = v15;
    v42 = v4;
    v43 = v5;
    v44 = v2;
    v45 = v1;
    v38 = v19;
    [v19 invalidate];
    v20 = *&v0[v18];
    *&v0[v18] = 1;
    sub_189054050(v20);
    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    v52 = sub_189055290;
    v53 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_188A4A8F0;
    v51 = &block_descriptor_38_2;
    v23 = _Block_copy(&aBlock);
    v37 = v0;

    v52 = signpost_c2_entryLock_start;
    v53 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = sub_188C3DD6C;
    v51 = &block_descriptor_41_2;
    v24 = _Block_copy(&aBlock);
    [v21 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
    _Block_release(v24);
    _Block_release(v23);
    sub_188A34624(0, &qword_1ED490540);
    v25 = sub_18A4A7A68();
    sub_18A4A6E68();
    v26 = UIAnimationDragCoefficient();
    if ((LODWORD(v26) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v26 > -9.2234e18)
    {
      if (v26 < 9.2234e18)
      {
        v27 = 70 * v26;
        if ((v26 * 70) >> 64 == v27 >> 63)
        {
          *v10 = v27;
          (*(v8 + 104))(v10, *MEMORY[0x1E69E7F38], v7);
          v28 = v39;
          MEMORY[0x18CFE1DF0](v13, v10);
          (*(v8 + 8))(v10, v7);
          v29 = v41;
          v40 = *(v40 + 8);
          (v40)(v13, v41);
          v30 = swift_allocObject();
          v31 = v37;
          *(v30 + 16) = v37;
          v52 = sub_1890552B0;
          v53 = v30;
          aBlock = MEMORY[0x1E69E9820];
          v49 = 1107296256;
          v50 = sub_188A4A8F0;
          v51 = &block_descriptor_47_0;
          v32 = _Block_copy(&aBlock);
          v33 = v31;

          v34 = v46;
          sub_18A4A6E38();
          aBlock = MEMORY[0x1E69E7CC0];
          sub_188D7609C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA935AC0);
          sub_188BA3728();
          v35 = v42;
          v36 = v45;
          sub_18A4A7EB8();
          MEMORY[0x18CFE2990](v28, v34, v35, v32);
          _Block_release(v32);

          sub_189054050(v38);
          (*(v44 + 8))(v35, v36);
          (*(v47 + 8))(v34, v43);
          (v40)(v28, v29);
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void sub_189054694(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____UITransitionOverlayView_backdrop] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setZoom_];

  v3 = [a1 layer];
  v4 = sub_18A4A77F8();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = [a1 layer];
  v7 = sub_18A4A2D28();
  v8 = sub_18A4A7258();
  [v6 setValue:v7 forKeyPath:v8];

  v9 = [a1 layer];
  v10 = sub_18A4A2D28();
  v11 = sub_18A4A7258();
  [v9 setValue:v10 forKeyPath:v11];
}

void sub_189054918(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v13 = sub_1890552B8;
  v14 = v3;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_188A4A8F0;
  v12 = &block_descriptor_53_2;
  v4 = _Block_copy(&v9);
  v5 = a1;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_1890552C0;
  v14 = v6;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_188C3DD6C;
  v12 = &block_descriptor_59;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v7);
  _Block_release(v4);
}

void sub_189054AB0(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____UITransitionOverlayView_backdrop] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setZoom_];

  v3 = [a1 layer];
  v4 = sub_18A4A77F8();
  v5 = sub_18A4A7258();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = [a1 layer];
  v7 = sub_18A4A77F8();
  v8 = sub_18A4A7258();
  [v6 setValue:v7 forKeyPath:v8];

  v9 = [a1 layer];
  v10 = sub_18A4A77F8();
  v11 = sub_18A4A7258();
  [v9 setValue:v10 forKeyPath:v11];
}

void sub_189054C8C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *&a3[OBJC_IVAR____UITransitionOverlayView_state];
  *&a3[OBJC_IVAR____UITransitionOverlayView_state] = 2;
  sub_189054050(v4);
  [a3 removeFromSuperview];
  v5 = [a3 transitionCompletionBlock];
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, a3);

    _Block_release(v6);
  }
}

id _UITransitionOverlayView.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

void _UITransitionOverlayView.init(coder:)()
{
  *(v0 + OBJC_IVAR____UITransitionOverlayView_state) = 0;
  v1 = (v0 + OBJC_IVAR____UITransitionOverlayView_transitionCompletionBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_18A4A8398();
  __break(1u);
}

Swift::Void __swiftcall _UITransitionOverlayView.layoutSubviews()()
{
  v3.super_class = _UITransitionOverlayView;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____UITransitionOverlayView_snapshot];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____UITransitionOverlayView_backdrop];
  [v0 bounds];
  [v2 setFrame_];
}

id _UITransitionOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id sub_189055220()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UITransitionBackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_189055258(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1890552D4()
{
  v1 = v0;
  v2 = *(v0 + 136);
  sub_188A53994(v1, v9);
  sub_188A53994(v9, v8);
  v3 = v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__effect;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v3);
  sub_188A5EBAC(v8, v3);
  *(v3 + 40) = 0;
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_188CAFA64();
  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  KeyPath = swift_getKeyPath();
  sub_188A53994(v1, v9);
  v7[2] = KeyPath;
  v7[3] = v9;
  if (*(*(v1 + 144) + 16))
  {
    v5 = sub_1892186AC(*(v1 + 144), sub_189055764, v7);

    *(v1 + 144) = v5;
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v9);
}

uint64_t sub_189055400(uint64_t a1, uint64_t a2)
{
  sub_188A53994(a1, v6);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 16))(v6, v3, v4);
}

uint64_t sub_18905546C()
{
  v1 = v0;
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);
  v22 = *(v0 + 40);
  v23 = v3;
  v24[0] = *(v0 + 72);
  *(v24 + 9) = *(v0 + 81);
  v4 = (v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver__shape);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *(v27 + 9) = *(v4 + 41);
  v26 = v6;
  v27[0] = v7;
  v25 = v5;
  v8 = *v4;
  v9 = v4[1];
  v10 = v4[2];
  *(v29 + 9) = *(v4 + 41);
  v28[1] = v9;
  v29[0] = v10;
  v28[0] = v8;
  v11 = v22;
  v12 = v23;
  v13 = v24[0];
  *(v4 + 41) = *(v24 + 9);
  v4[1] = v12;
  v4[2] = v13;
  *v4 = v11;
  sub_188A3F29C(&v22, &v19, &qword_1EA934C40);
  sub_188A3F29C(&v25, &v19, &qword_1EA934C40);
  sub_188A3F5FC(v28, &qword_1EA934C40);
  v19 = v25;
  v20 = v26;
  v21[0] = v27[0];
  *(v21 + 9) = *(v27 + 9);
  sub_188E83D28(&v19);
  sub_188A3F5FC(&v25, &qword_1EA934C40);
  swift_endAccess();
  v14 = *(v2 + OBJC_IVAR____TtC5UIKit25UIPointerHoverStyleDriver_pointerInteraction);
  if (v14)
  {
    [v14 invalidate];
  }

  KeyPath = swift_getKeyPath();
  v16 = *(v1 + 56);
  v19 = *(v1 + 40);
  v20 = v16;
  v21[0] = *(v1 + 72);
  *(v21 + 9) = *(v1 + 81);
  sub_188A3F29C(&v19, &v18, &qword_1EA934C40);
  return sub_189215DE0(&v19, KeyPath);
}

uint64_t sub_18905562C(_OWORD *a1, uint64_t a2)
{
  v3 = a1[1];
  v12[0] = *a1;
  v12[1] = v3;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v4);
  v6 = a1[1];
  v10[0] = *a1;
  v10[1] = v6;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v7 = *(v5 + 40);
  sub_188A3F29C(v12, &v9, &qword_1EA934C40);
  return v7(v10, v4, v5);
}

uint64_t sub_1890556E4(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a1, v6, &unk_1EA93F7F0);
  v3 = *(a2 + 24);
  v4 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 64))(v6, v3, v4);
}

uint64_t sub_18905580C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_189055854(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1890558C8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1890568BC(a1, v6, type metadata accessor for UIPromptSuggestionView.Configuration);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  sub_189055FBC(v6, v7 + v8);
  swift_endAccess();
  sub_1890559A0();
  return sub_189056020(v6);
}

uint64_t sub_1890559A0()
{
  v1 = sub_18A4A2588();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntelligenceUI.PromptEntryView(0);
  sub_18915048C(0, &v36);
  v10 = v0;
  v11 = &v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration];
  swift_beginAccess();
  v12 = *v11;
  v13 = v36;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v14 = *(v13 + 16);
  }

  else
  {
    [*(v13 + 16) copy];
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    sub_188A34624(0, &qword_1EA930A50);
    swift_dynamicCast();
    v14 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935C30);
    v13 = swift_allocObject();
    *(v13 + 16) = v14;

    v36 = v13;
  }

  [v14 setImage_];

  v15 = v10;
  [*&v10[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView] setConfiguration_];
  v16 = *&v10[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label];
  v17 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  sub_1890568BC(v11 + *(v17 + 20), v9, type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v6, v9, v1);
    sub_188A34624(0, &qword_1EA930C60);
    (*(v2 + 16))(v34, v6, v1);
    v18 = sub_18A4A7AC8();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9363F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18A64BFA0;
    v20 = *off_1E70EC918;
    *(inited + 32) = *off_1E70EC918;
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 preferredFontForTextStyle_];
    v24 = sub_188A34624(0, &qword_1ED48C4A0);
    *(inited + 40) = v23;
    v25 = *off_1E70EC920;
    *(inited + 64) = v24;
    *(inited + 72) = v25;
    v26 = objc_opt_self();
    v27 = v25;
    v28 = [v26 labelColor];
    *(inited + 104) = sub_188A34624(0, qword_1ED4913C0);
    *(inited + 80) = v28;
    sub_188AEC99C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93C6D0);
    swift_arrayDestroy();
    v29 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v30 = sub_18A4A7258();

    type metadata accessor for Key(0);
    sub_188C5E0DC();
    v31 = sub_18A4A7088();

    v18 = [v29 initWithString:v30 attributes:v31];
  }

  [v16 setAttributedText_];

  [v15 invalidateIntrinsicContentSize];
}

uint64_t sub_189055EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  return sub_1890568BC(v1 + v3, a1, type metadata accessor for UIPromptSuggestionView.Configuration);
}

uint64_t sub_189055F50(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  sub_189055FBC(a1, v1 + v3);
  swift_endAccess();
  sub_1890559A0();
  return sub_189056020(a1);
}

uint64_t sub_189055FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_189056020(uint64_t a1)
{
  v2 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_18905607C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1890560E0;
}

uint64_t sub_1890560E0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1890559A0();
  }

  return result;
}

char *UIPromptSuggestionView.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  if (qword_1EA931E78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  v9 = __swift_project_value_buffer(v8, qword_1EA995148);
  sub_1890568BC(v9, &v2[v7], type metadata accessor for UIPromptSuggestionView.Configuration);
  v10 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_backdropView;
  if (qword_1EA92FCB8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EA92FCC8);
  sub_1890568BC(v11, v6, type metadata accessor for UIPromptBackgroundView.Configuration);
  v12 = objc_allocWithZone(type metadata accessor for UIPromptBackgroundView(0));
  *&v2[v10] = UIPromptBackgroundView.init(configuration:)(v6);
  v13 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  *&v2[v13] = [objc_allocWithZone(UILabel) initWithFrame_];
  v14 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView;
  *&v2[v14] = [objc_allocWithZone(UIButton) init];
  v15 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView;
  *&v2[v15] = [objc_allocWithZone(_UITouchPassthroughView) initWithFrame_];
  v2[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating] = 0;
  v16 = type metadata accessor for UIPromptSuggestionView(0);
  v27.receiver = v2;
  v27.super_class = v16;
  v17 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 clearColor];
  [v19 setBackgroundColor_];

  v21 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  sub_189055FBC(a1, &v19[v21]);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView;
  [*&v19[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView] setClipsToBounds_];
  [v19 addSubview_];
  v23 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  [*&v19[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label] setNumberOfLines_];
  [*&v19[v23] setLineBreakMode_];
  v24 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView;
  [*&v19[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView] setUserInteractionEnabled_];
  [*&v19[v22] addSubview_];
  [*&v19[v22] addSubview_];
  [*&v19[v22] addSubview_];
  sub_1890559A0();

  sub_189056020(a1);
  return v19;
}

id UIPromptSuggestionView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id UIPromptSuggestionView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id UIPromptSuggestionView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIPromptSuggestionView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIPromptSuggestionView.Configuration.init(image:labelContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for UIPromptSuggestionView.Configuration(0) + 20);

  return sub_1890570F8(a2, v4);
}

uint64_t sub_189056848()
{
  v0 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  __swift_allocate_value_buffer(v0, qword_1EA995148);
  v1 = __swift_project_value_buffer(v0, qword_1EA995148);
  v2 = (v1 + *(v0 + 20));
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
  result = swift_storeEnumTagMultiPayload();
  *v1 = 0;
  return result;
}

uint64_t sub_1890568BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

CGSize __swiftcall UIPromptSuggestionView.sizeThatFits(_:lineLimit:)(CGSize _, Swift::Int lineLimit)
{
  height = _.height;
  width = _.width;
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  if (*(v2 + v6))
  {
    v7 = 60.0;
  }

  else
  {
    v7 = 34.0;
  }

  [*(v2 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label) textRectForBounds:lineLimit limitedToNumberOfLines:{0.0, 0.0, width - v7, height}];
  v9 = v8 + 28.0;
  v11 = v7 + v10;
  result.height = v9;
  result.width = v11;
  return result;
}

CGSize __swiftcall UIPromptSuggestionView.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label);
  v5 = [v4 numberOfLines];
  v6 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  if (*(v1 + v6))
  {
    v7 = 60.0;
  }

  else
  {
    v7 = 34.0;
  }

  [v4 textRectForBounds:v5 limitedToNumberOfLines:{0.0, 0.0, width - v7, height}];
  v9 = v8 + 28.0;
  v11 = v7 + v10;
  result.height = v9;
  result.width = v11;
  return result;
}

CGSize __swiftcall UIPromptSuggestionView.systemLayoutSizeFitting(_:)(CGSize a1)
{
  [v1 sizeThatFits_];
  result.height = v3;
  result.width = v2;
  return result;
}

id UIPromptSuggestionView.intrinsicContentSize.getter()
{
  [v0 bounds];

  return [v0 sizeThatFits_];
}

Swift::Void __swiftcall UIPromptSuggestionView.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for UIPromptSuggestionView(0);
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  swift_beginAccess();
  v3 = *&v0[v2];
  [v0 bounds];
  if (*&v0[v2])
  {
    v5 = 60.0;
  }

  else
  {
    v5 = 34.0;
  }

  v6 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label];
  [v6 textRectForBounds:1 limitedToNumberOfLines:{0.0, 0.0, v4 - v5}];
  v8 = v7 + 28.0;
  v10 = v5 + v9;
  v11 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView];
  v22.origin.x = 0.0;
  v22.origin.y = 0.0;
  v22.size.width = 34.0;
  v22.size.height = 34.0;
  v23 = CGRectOffset(v22, 8.0, 0.0);
  [v11 setFrame_];
  [v1 bounds];
  [v6 setFrame_];
  [v6 frame];
  if (v3)
  {
    v24 = CGRectInset(*&v12, 13.0, 0.0);
    v16 = UIRectInsetEdges(2, v24.origin.x, v24.origin.y, v24.size.width, v24.size.height, 34.0);
  }

  else
  {
    *&v16 = CGRectInset(*&v12, 16.0, 0.0);
  }

  [v6 setFrame_];
  v20 = *&v0[OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_backdropView];
  [v1 bounds];
  [v20 setFrame_];
  [v20 _setCornerRadius_];
}

void _s5UIKit22UIPromptSuggestionViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  v2 = type metadata accessor for UIPromptBackgroundView.Configuration(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_configuration;
  if (qword_1EA931E78 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for UIPromptSuggestionView.Configuration(0);
  v7 = __swift_project_value_buffer(v6, qword_1EA995148);
  sub_1890568BC(v7, v1 + v5, type metadata accessor for UIPromptSuggestionView.Configuration);
  v8 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_backdropView;
  if (qword_1EA92FCB8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EA92FCC8);
  sub_1890568BC(v9, v4, type metadata accessor for UIPromptBackgroundView.Configuration);
  v10 = objc_allocWithZone(type metadata accessor for UIPromptBackgroundView(0));
  *(v1 + v8) = UIPromptBackgroundView.init(configuration:)(v4);
  v11 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_label;
  *(v1 + v11) = [objc_allocWithZone(UILabel) initWithFrame_];
  v12 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_imageButtonView;
  *(v1 + v12) = [objc_allocWithZone(UIButton) init];
  v13 = OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_contentView;
  *(v1 + v13) = [objc_allocWithZone(_UITouchPassthroughView) initWithFrame_];
  *(v1 + OBJC_IVAR____TtC5UIKit22UIPromptSuggestionView_isAnimating) = 0;
  sub_18A4A8398();
  __break(1u);
}

uint64_t sub_1890570F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_189057184()
{
  result = type metadata accessor for UIPromptSuggestionView.Configuration(319);
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

void sub_189057320()
{
  sub_1890573A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIPromptSuggestionView.Configuration.LabelContent(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1890573A4()
{
  if (!qword_1EA93ACA0)
  {
    sub_188A34624(255, &unk_1EA93A1A0);
    v0 = sub_18A4A7D38();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA93ACA0);
    }
  }
}

uint64_t sub_18905740C()
{
  result = sub_18A4A2588();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_189057478(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_188E6D344(0, v1, 0);
    v2 = v17;
    v4 = (a1 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v8 = *(v4 - 1);
      v7 = *v4;
      v17 = v2;
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);
      v11 = v7;
      if (v9 >= v10 >> 1)
      {
        sub_188E6D344((v10 > 1), v9 + 1, 1);
        v2 = v17;
      }

      v15 = &type metadata for UIRBDirectionalLightEffectView.Pondering.Effect;
      v16 = &protocol witness table for UIRBDirectionalLightEffectView.Pondering.Effect;
      v12 = swift_allocObject();
      *&v14 = v12;
      v12[2] = v5;
      v12[3] = v6;
      v12[4] = v8;
      v12[5] = v11;
      *(v2 + 16) = v9 + 1;
      sub_188A5EBAC(&v14, v2 + 40 * v9 + 32);
      v4 += 4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1890575A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_18A4A8208();
    v4 = a1 + 32;
    do
    {
      sub_188A55598(v4, &v5);
      sub_188A34624(0, &qword_1EA92F7A8);
      swift_dynamicCast();
      sub_18A4A81D8();
      sub_18A4A8218();
      sub_18A4A8228();
      sub_18A4A81E8();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_18905769C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_188B221A4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_188B221A4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_188A55538(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1890577D0(uint64_t a1)
{
  v18 = a1;
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = sub_18A4A7D38();
  v6 = *(v5 - 8);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(v4 - 8);
  v11 = *(v10 + 56);
  v11(&v1[*((v3 & v2) + 0x60)], 1, 1, v4, v7);
  v12 = type metadata accessor for ElementWrapper();
  v19.receiver = v1;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, sel_init);
  (*(v10 + 32))(v9, v18, v4);
  (v11)(v9, 0, 1, v4);
  v14 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
  swift_beginAccess();
  v15 = *(v6 + 40);
  v16 = v13;
  v15(v13 + v14, v9, v5);
  swift_endAccess();

  return v16;
}

uint64_t sub_1890579F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  swift_beginAccess();
  v4 = sub_18A4A7D38();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

id sub_189057AB4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for ElementWrapper();
  *a1 = v3;

  return v3;
}

uint64_t sub_189057B3C()
{
  sub_189057AB4(v2);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v0 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0;
}

uint64_t sub_189057B98(void *a1)
{
  v1 = a1;
  v2 = sub_189057BCC();

  return v2;
}

uint64_t sub_189057BCC()
{
  v0 = sub_18A4A7D38();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - v2;
  sub_1890579F4(&v6 - v2);
  v4 = sub_18A4A7D58();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_189057CDC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v44 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v4) + 0x50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](ObjectType);
  v43 = &v39 - v8;
  v9 = sub_18A4A7D38();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v39 - v11;
  v47 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  sub_188A3F29C(a1, v49, &qword_1EA934050);
  if (!v50)
  {
    sub_188A553EC(v49);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v30 = 0;
    return v30 & 1;
  }

  v21 = v48;
  sub_1890579F4(v20);
  v42 = v21;
  sub_1890579F4(v17);
  v39 = TupleTypeMetadata2;
  v22 = v6;
  v23 = *(TupleTypeMetadata2 + 48);
  v24 = v47;
  v25 = *(v47 + 16);
  v25(v12, v20, v9);
  v41 = v23;
  v26 = &v12[v23];
  v27 = v22;
  v25(v26, v17, v9);
  v40 = v7;
  v28 = *(v7 + 48);
  if (v28(v12, 1, v27) != 1)
  {
    v31 = v46;
    v25(v46, v12, v9);
    v32 = v41;
    if (v28(&v12[v41], 1, v27) != 1)
    {
      v35 = v40;
      v36 = v43;
      (*(v40 + 32))(v43, &v12[v32], v27);
      v30 = sub_18A4A7248();

      v37 = *(v35 + 8);
      v37(v36, v27);
      v38 = *(v47 + 8);
      v38(v17, v9);
      v38(v20, v9);
      v37(v46, v27);
      v38(v12, v9);
      return v30 & 1;
    }

    v33 = *(v47 + 8);
    v33(v17, v9);
    v33(v20, v9);
    (*(v40 + 8))(v31, v27);
    goto LABEL_9;
  }

  v29 = *(v24 + 8);
  v29(v17, v9);
  v29(v20, v9);
  if (v28(&v12[v41], 1, v27) != 1)
  {
LABEL_9:
    (*(v45 + 8))(v12, v39);
    goto LABEL_10;
  }

  v29(v12, v9);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_18905820C(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_189057CDC(v8);

  sub_188A553EC(v8);
  return v6 & 1;
}

uint64_t sub_1890582B4(char *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v3 = sub_18A4A7D38();
  v4 = *(*(v3 - 8) + 8);

  return v4(&a1[v2], v3);
}

uint64_t UITextSearchAggregator.allFoundRanges.getter()
{
  v1 = [*v0 allFoundRanges];
  v2 = [v1 array];

  v3 = sub_18A4A7548();
  v4 = sub_1890575A4(v3);

  return v4;
}

void UITextSearchAggregator.foundRange(_:searchString:document:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v5;
  v13 = sub_18A4A7258();
  v14 = type metadata accessor for ElementWrapper();
  (*(v9 + 16))(v11, a4, v8);
  v15 = objc_allocWithZone(v14);
  v16 = sub_1890577D0(v11);
  [v12 foundRange:a1 forSearchString:v13 inDocument:v16];
}

void UITextSearchAggregator.invalidateFoundRange(_:document:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v11 = type metadata accessor for ElementWrapper();
  (*(v7 + 16))(v9, a2, v6);
  v12 = objc_allocWithZone(v11);
  v13 = sub_1890577D0(v9);
  [v10 invalidateFoundRange:a1 inDocument:v13];
}

uint64_t UITextSearching.selectedTextSearchDocument.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_189058730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for ElementWrapper();
    if (swift_dynamicCastClass())
    {
      return sub_1890579F4(a2);
    }
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 56);

  return v5(a2, 1, 1, AssociatedTypeWitness);
}

id sub_18905888C(void *a1)
{
  v1 = a1;
  v2 = sub_1890588D0();

  return v2;
}

uint64_t sub_1890588D0()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = (*(*(v1 + 88) + 24))(*(v1 + 80));
    swift_unknownObjectRelease();
    return v3;
  }

  return result;
}

uint64_t sub_189058964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  sub_189058730(a3, v12);
  v13 = (*(v7 + 32))(a1, a2, v12, v8, v7);
  swift_unknownObjectRelease();
  (*(v10 + 8))(v12, v9);
  return v13;
}

uint64_t sub_189058B00(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = a1;
  v11 = sub_189058964(v8, v9, a5);

  swift_unknownObjectRelease();
  return v11;
}

uint64_t sub_189058B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = v10 + 80;
    v12 = *(v10 + 80);
    v13 = *(v14 + 8);
    v16 = a4;
    v15 = *(v13 + 40);
    swift_unknownObjectRetain();
    v15(a1, a2, a3, &v16, v12, v13);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_189058C7C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_18A4A7288();
  v10 = v9;
  v11 = a4;
  swift_unknownObjectRetain();
  v12 = a1;
  sub_189058B84(v8, v10, v11, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_189058D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x50);
  swift_getAssociatedTypeWitness();
  v9 = sub_18A4A7D38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v12);
    (*(v7 + 48))(a1, v12, a3, v8, v7);
    swift_unknownObjectRelease();
    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_189058EA0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  sub_189058D14(v8, a4, a5);

  swift_unknownObjectRelease();
}

uint64_t sub_189058F28()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v1 + 88) + 56))(*(v1 + 80));

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_189058FCC(void *a1)
{
  v1 = a1;
  sub_189058F28();
}

uint64_t sub_189059014(void *a1)
{
  v1 = a1;
  v2 = sub_189059048();

  return v2 & 1;
}

uint64_t sub_189059048()
{
  v1 = *MEMORY[0x1E69E7D40] & *v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = (*(*(v1 + 88) + 64))(*(v1 + 80));
    swift_unknownObjectRelease();
    return v3 & 1;
  }

  return result;
}

uint64_t sub_1890590DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_189058730(a2, v13);
    v14 = (*(v8 + 72))(a1, v13, a3, v17, v9, v8);
    swift_unknownObjectRelease();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_189059284(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_18A4A7288();
  v9 = v8;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a1;
  LOBYTE(a1) = sub_1890590DC(v10, a4, v7, v9);

  swift_unknownObjectRelease();

  return a1 & 1;
}

uint64_t sub_189059318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a4;
  v8 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x58);
  v9 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x50);
  swift_getAssociatedTypeWitness();
  v10 = sub_18A4A7D38();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v13);
    (*(v8 + 80))(a1, v13, a3, v16, v9, v8);
    swift_unknownObjectRelease();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_1890594B0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_18A4A7288();
  v9 = v8;
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = a1;
  sub_189059318(v10, a4, v7, v9);

  swift_unknownObjectRelease();
}

uint64_t sub_189059548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = *MEMORY[0x1E69E7D40] & *v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(*(v12 + 88) + 88))(a1, a2, a3, a4, a5, *(v12 + 80));

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_189059640(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_18A4A7288();
  v8 = v7;
  v9 = sub_18A4A7288();
  v11 = v10;
  v12 = a4;
  v13 = a1;
  sub_189059548(v6, v8, v12, v9, v11);
}

uint64_t sub_1890596EC(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v10);
    (*(v5 + 96))(a1, v10, v6, v5);
    swift_unknownObjectRelease();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_189059888(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  swift_getAssociatedTypeWitness();
  v7 = sub_18A4A7D38();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_189058730(a2, v10);
    (*(v5 + 104))(a1, v10, v6, v5);
    swift_unknownObjectRelease();
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_189059A24(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void *sub_189059AAC(void *a1)
{
  v1 = a1;
  v2 = sub_189059AF0();

  return v2;
}

void *sub_189059AF0()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_18A4A7D38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v1 + 112))(v2, v1);
    swift_unknownObjectRelease();
    if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) != 1)
    {
      (*(v8 + 32))(v14, v7, AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      v15 = type metadata accessor for ElementWrapper();
      (*(v8 + 16))(v11, v14, AssociatedTypeWitness);
      v16 = objc_allocWithZone(v15);
      v17 = sub_1890577D0(v11);
      (*(v8 + 8))(v14, AssociatedTypeWitness);
      return v17;
    }
  }

  else
  {
    (*(v8 + 56))(v7, 1, 1, AssociatedTypeWitness);
  }

  (*(v5 + 8))(v7, v4);
  return 0;
}

uint64_t sub_189059DE0(uint64_t a1, uint64_t a2)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_18A4A7D38();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v20 = v6;
  sub_189058730(a1, v13);
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 48);
  result = v15(v13, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_189058730(a2, v10);
    result = v15(v10, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      v17 = (*(v5 + 120))(v13, v10, v20, v5);
      swift_unknownObjectRelease();
      v18 = *(v14 + 8);
      v18(v10, AssociatedTypeWitness);
      v18(v13, AssociatedTypeWitness);
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18905A024(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_189059DE0(a3, a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

id sub_18905A108(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id UITextSearchingFindSession.init<A>(searchableObject:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for _UITextSearchingWrapper();
  v1 = sub_18905ABF0();
  v2 = [v0 initWithStronglyHeldSearchableObject_];

  swift_unknownObjectRelease();
  return v2;
}

id UITextView.compare(_:toRange:document:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_188A3F29C(a3, v17, &qword_1EA93ACC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v16.receiver = v7;
  v16.super_class = v6;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v14[0] = v17[0];
  v14[1] = v17[1];
  v15 = v18;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v14, v10 + v11);
  swift_endAccess();
  v12 = [v3 compareFoundRange:a1 toRange:a2 inDocument:v10];

  return v12;
}

void UITextView.performTextSearch(queryString:options:resultAggregator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = sub_18A4A7258();
  [v4 performTextSearchWithQueryString:v7 usingOptions:a3 resultAggregator:v6];
}

void UITextView.decorate(foundTextRange:document:usingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_188A3F29C(a2, v15, &qword_1EA93ACC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v12[0] = v15[0];
  v12[1] = v15[1];
  v13 = v16;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v12, v10 + v11);
  swift_endAccess();
  [v3 decorateFoundTextRange:a1 inDocument:v10 usingStyle:a3];
}

id UITextView.shouldReplace(foundTextRange:document:withText:)(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a2, v16, &qword_1EA93ACC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8);
  v5 = objc_allocWithZone(v4);
  v6 = MEMORY[0x1E69E7D40];
  v7 = &v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x60)];
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  *(v7 + 24) = xmmword_18A65B690;
  v15.receiver = v5;
  v15.super_class = v4;
  v8 = objc_msgSendSuper2(&v15, sel_init);
  v13[0] = v16[0];
  v13[1] = v16[1];
  v14 = v17;
  v9 = *((*v6 & *v8) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v13, v8 + v9);
  swift_endAccess();
  v10 = sub_18A4A7258();
  v11 = [v2 shouldReplaceFoundTextInRange:a1 inDocument:v8 withText:v10];

  return v11;
}

void UITextView.replace(foundTextRange:document:withText:)(uint64_t a1, uint64_t a2)
{
  sub_188A3F29C(a2, v14, &qword_1EA93ACC0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8);
  v5 = objc_allocWithZone(v4);
  v6 = MEMORY[0x1E69E7D40];
  v7 = &v5[*((*MEMORY[0x1E69E7D40] & *v5) + 0x60)];
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *v7 = 0;
  *(v7 + 24) = xmmword_18A65B690;
  v13.receiver = v5;
  v13.super_class = v4;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  v11[0] = v14[0];
  v11[1] = v14[1];
  v12 = v15;
  v9 = *((*v6 & *v8) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v11, v8 + v9);
  swift_endAccess();
  v10 = sub_18A4A7258();
  [v2 replaceFoundTextInRange:a1 inDocument:v8 withText:v10];
}

Swift::Void __swiftcall UITextView.replaceAll(queryString:options:withText:)(Swift::String queryString, UITextSearchOptions options, Swift::String withText)
{
  isa = options.super.isa;
  v5 = sub_18A4A7258();
  v6 = sub_18A4A7258();
  [v3 replaceAllOccurrencesOfQueryString:v5 usingOptions:isa withText:v6];
}

void sub_18905A898(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_188A3F29C(a2, v15, &qword_1EA93ACC0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACC8);
  v7 = objc_allocWithZone(v6);
  v8 = MEMORY[0x1E69E7D40];
  v9 = &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x60)];
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *v9 = 0;
  *(v9 + 24) = xmmword_18A65B690;
  v14.receiver = v7;
  v14.super_class = v6;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v12[0] = v15[0];
  v12[1] = v15[1];
  v13 = v16;
  v11 = *((*v8 & *v10) + 0x60);
  swift_beginAccess();
  sub_18905AC2C(v12, v10 + v11);
  swift_endAccess();
  [v3 *a3];
}

id sub_18905A9D4()
{
  v1 = [v0 selectedTextRange];

  return v1;
}

void sub_18905AA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = sub_18A4A7258();
  [v4 performTextSearchWithQueryString:v7 usingOptions:a3 resultAggregator:v6];
}

void sub_18905AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18A4A7258();
  v6 = sub_18A4A7258();
  [v3 replaceAllOccurrencesOfQueryString:v5 usingOptions:a3 withText:v6];
}

double sub_18905AB2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *&result = 1;
  *(a1 + 24) = xmmword_18A6507C0;
  return result;
}

id sub_18905AB44()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UITextSearchingWrapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_18905AC2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93ACD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_18905AC9C()
{
  result = qword_1EA93ACD8[0];
  if (!qword_1EA93ACD8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA937A80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA93ACD8);
  }

  return result;
}

uint64_t sub_18905AD18()
{
  result = sub_18A4A7D38();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18905ADAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18905AFF8(uint64_t a1)
{
  if (qword_1EA930918 != -1)
  {
    v12 = a1;
    swift_once();
    a1 = v12;
  }

  if (qword_1EA994EC8 == a1)
  {
    return 0;
  }

  v3 = (v1 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  if (*(v1 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 152) != a1)
  {
    v4 = v3[16];
    v5 = *(v4 + 16);
    v6 = (v4 + 32);
    while (v5)
    {
      v7 = *v6++;
      --v5;
      if (v7 == a1)
      {
        return 3;
      }
    }

    v8 = *v3;
    v9 = *(*v3 + 16);
    v10 = (v8 + 32);
    while (v9)
    {
      v11 = *v10++;
      --v9;
      if (v11 == a1)
      {
        return 4;
      }
    }

    return 0;
  }

  return 2;
}

__n128 sub_18905B138@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  v6 = *(v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 128);
  v7 = *(v6 + 16);
  v8 = (v6 + 32);
  while (v7)
  {
    v9 = *v8++;
    --v7;
    if (v9 == a2)
    {
      goto LABEL_10;
    }
  }

  v10 = *v5;
  v11 = *(*v5 + 16);
  v12 = (v10 + 32);
  while (v11)
  {
    v13 = *v12++;
    --v11;
    if (v13 == a2)
    {
      v4 = a2;
      break;
    }
  }

  a2 = *(a1 + 24);
LABEL_10:
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = a2;
  result = *(a1 + 32);
  v15 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v15;
  *(a3 + 64) = *(a1 + 64);
  return result;
}

__n128 sub_18905B244@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = (v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  if (*(v3 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 136) == a2)
  {
    if (qword_1EA930918 != -1)
    {
      v15 = a1;
      v14 = a3;
      swift_once();
      a1 = v15;
      a3 = v14;
    }

    v6 = qword_1EA994EC8;
  }

  else
  {
    v6 = *(a1 + 24);
    if (v5[21] == a2)
    {
      v7 = *v5;
      v8 = *(v7 + 16);
      v9 = (v7 + 32);
      v10 = 1;
      while (v8 + v10 != 1)
      {
        v11 = *v9++;
        --v10;
        if (v11 == a2)
        {
          if (v10)
          {
            v4 = *(v9 - 2);
          }

          else
          {
            v4 = a2;
          }

          break;
        }
      }
    }
  }

  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v6;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  *(a3 + 32) = result;
  *(a3 + 48) = v13;
  *(a3 + 64) = *(a1 + 64);
  return result;
}

uint64_t sub_18905B46C()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000033, 0x800000018A6A1CE0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0x6F43746F6F72203BLL, 0xEF203D206E6D756CLL);
  v0 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v0);

  MEMORY[0x18CFE22D0](0x6C6F43706F74203BLL, 0xEE00203D206E6D75);
  v1 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

void __swiftcall _UISplitViewControllerAdaptiveSingleColumnLayout.init()(_UISplitViewControllerAdaptiveSingleColumnLayout *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_18905B68C()
{
  if (*(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 152) == 3)
  {
    return 3;
  }

  v2 = *(v0 + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data);
  v3 = *(v2 + 16);
  if (UIApp)
  {
    if (v3)
    {
      return *(v2 + 8 * v3 + 24);
    }
  }

  else if (v3)
  {
    return *(v2 + 32);
  }

  if (qword_1EA930918 != -1)
  {
    swift_once();
  }

  return qword_1EA994EC8;
}

uint64_t sub_18905B738(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_18905B780(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18905B7FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_188C45F1C(v7, v14);
      result = v6(v14);
      if (v3)
      {
        return sub_188C460F0(v14);
      }

      if (result)
      {
        break;
      }

      result = sub_188C460F0(v14);
      v7 += 192;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }

    v8 = v14[9];
    a3[8] = v14[8];
    a3[9] = v8;
    v9 = v14[11];
    a3[10] = v14[10];
    a3[11] = v9;
    v10 = v14[5];
    a3[4] = v14[4];
    a3[5] = v10;
    v11 = v14[7];
    a3[6] = v14[6];
    a3[7] = v11;
    v12 = v14[1];
    *a3 = v14[0];
    a3[1] = v12;
    v13 = v14[3];
    a3[2] = v14[2];
    a3[3] = v13;
  }

  else
  {
LABEL_6:
    a3[10] = 0u;
    a3[11] = 0u;
    a3[8] = 0u;
    a3[9] = 0u;
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_18905B8E8(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_18A4A56B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v3 + v13, v8, &qword_1EA935CD0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_188A3F5FC(v8, &qword_1EA935CD0);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_189063EF0(&qword_1EA931288, v15, type metadata accessor for _GlassGroupView);
  sub_18A4A5668();
  *(v3 + OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_flags) |= a2;
  v16 = sub_18A4A5688();
  v17 = (v16 & 0x100000000) == 0;
  v18 = HIDWORD(v16) & 1;
  v19 = *&v16;
  v20 = a1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  v21 = *(a1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
  v22 = *(a1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8);
  if (!v17)
  {
    v19 = 0.0;
  }

  *v20 = v19;
  *(v20 + 8) = v18;
  sub_18905BFDC(v21, v22);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_18905BB50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v21 - v4;
  sub_188A3F29C(a1, v21 - v4, &qword_1EA935D70);
  v6 = sub_18A4A2DB8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v21[0] = v21;
    v10 = *(v7 + 64);
    v11 = MEMORY[0x1EEE9AC00](0);
    v12 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = (*(v7 + 32))(v12, v5, v6, v11);
    v21[1] = v1;
    v14 = MEMORY[0x1EEE9AC00](v13);
    v15 = *(v7 + 16);
    v15(v12, v12, v6, v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E30);
    v17 = objc_allocWithZone(v16);
    (v15)(v17 + *((*MEMORY[0x1E69E7D40] & *v17) + 0x60), v12, v6);
    v22.receiver = v17;
    v22.super_class = v16;
    v18 = objc_msgSendSuper2(&v22, sel_init);
    v19 = *(v7 + 8);
    v19(v12, v6);
    v19(v12, v6);
    v9 = v18;
  }

  sub_188B6EDCC(v9);
  return sub_188A3F5FC(a1, &qword_1EA935D70);
}

void sub_18905BDCC(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = sub_188B622F4(a2);
  if (v10)
  {
    v11 = v10;
    v12 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
    swift_beginAccess();
    sub_189063880(&v11[v12], v9, type metadata accessor for GlassState);
    if (MEMORY[0x18CFDDF80](v9, a1))
    {
      v13 = &v9[*(v4 + 20)];
      v14 = *v13;
      v15 = v13[8];
      sub_1890639A8(v9, type metadata accessor for GlassState);
      v16 = a1 + *(v4 + 20);
      v17 = *(v16 + 8);
      if (v15)
      {
        if (*(v16 + 8))
        {
LABEL_12:
          sub_189063880(a1, v6, type metadata accessor for GlassState);
          sub_18905D630(v6);
LABEL_13:

          return;
        }
      }

      else
      {
        if (v14 != *v16)
        {
          v17 = 1;
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_1890639A8(v9, type metadata accessor for GlassState);
    }

    sub_189063880(a1, v6, type metadata accessor for GlassState);
    sub_18905D630(v6);
    [v11 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v11 layoutIfNeeded];
    }

    goto LABEL_13;
  }
}

void sub_18905BFDC(uint64_t a1, char a2)
{
  v5 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = v2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  if (*(v2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *v11 == *&a1)
  {
    return;
  }

  v12 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }

    goto LABEL_8;
  }

  v30 = *(v2 + v12);
  v31 = sub_18A4A7F68();
  v13 = v30;
  v14 = v31;
  if (v31)
  {
LABEL_8:
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v32 = v13 & 0xC000000000000001;
    v15 = v13;

    v16 = v15;
    v17 = 0;
    v33 = v14;
    v34 = v15;
    while (1)
    {
      v18 = v32 ? sub_188E49160(v17, v16) : *(v16 + 8 * v17 + 32);
      v19 = v18;
      v20 = *v11;
      v21 = *(v11 + 8);
      v22 = v18 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
      swift_beginAccess();
      sub_189063880(v22, v10, type metadata accessor for GlassState);
      v23 = &v10[*(v5 + 20)];
      *v23 = v20;
      v23[8] = v21;
      sub_189063880(v22, v7, type metadata accessor for GlassState);
      swift_beginAccess();
      sub_189063E58(v10, v22, type metadata accessor for GlassState);
      swift_endAccess();
      v24 = *(v5 + 20);
      v25 = &v7[v24];
      v26 = v7[v24 + 8];
      v27 = (v22 + v24);
      v28 = *(v22 + v24 + 8);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v29 = v33;
      if (!v28)
      {
        goto LABEL_20;
      }

LABEL_10:
      ++v17;

      sub_1890639A8(v7, type metadata accessor for GlassState);
      sub_1890639A8(v10, type metadata accessor for GlassState);
      v16 = v34;
      if (v29 == v17)
      {

        return;
      }
    }

    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    v29 = v33;
    if ((v28 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    [v19 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v19 layoutIfNeeded];
    }

    goto LABEL_10;
  }
}

void sub_18905C2DC(void *a1)
{
  v3 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (sub_18A4A7F68())
    {
      goto LABEL_3;
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v5 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext);
    *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext) = 0;

    sub_18905B8E8(v1, 1);
    return;
  }

  v6 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext);
  *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext) = a1;
  v7 = a1;
}

id sub_18905C394(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers] = MEMORY[0x1E69E7CC0];
  v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup] = 1;
  v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground] = 0;
  *&v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext] = 0;
  v10 = &v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness];
  *v11 = 0;
  v11[8] = 1;
  v4[OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius] = 0;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for _GlassGroupView();
  v12 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v12 setUserInteractionEnabled_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18A64BFB0;
  *(inited + 32) = &type metadata for MaterialBackdropContextTrait;
  *(inited + 40) = &off_1ED48F1B8;
  v14 = swift_allocObject();
  *(v14 + 16) = ObjectType;
  UIView.registerForTraitChanges<A>(_:handler:)(inited, sub_189063EE8, v14, ObjectType);

  swift_unknownObjectRelease();
  swift_setDeallocating();
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_18A64BFB0;
  *(v15 + 32) = &type metadata for GlassGroupBackdropNameTrait;
  *(v15 + 40) = &off_1EE43A6E8;
  UIView.registerForTraitChanges<A>(_:handler:)(v15, sub_189062EB0, 0, ObjectType);
  swift_unknownObjectRelease();
  swift_setDeallocating();
  v16 = [v12 traitCollection];

  v17 = sub_188E1AF8C();
  sub_18905C2DC(v17);

  return v12;
}

void sub_18905C5F4(void *a1)
{
  v2 = sub_18A4A56B8();
  v41 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934850);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v33[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33[-v13];
  v15 = sub_188E1AF8C();
  v39 = a1;
  v16 = [a1 traitCollection];
  v17 = sub_188E1AF8C();

  v18 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v40 = v15;
  v37 = v18;
  v19 = v15 + v18;
  v20 = v2;
  sub_188A3F29C(v19, v14, &qword_1EA935CD0);
  v21 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  v22 = *(v5 + 56);
  sub_188A3F29C(v14, v7, &qword_1EA935CD0);
  v23 = v17 + v21;
  v24 = v17;
  sub_188A3F29C(v23, &v7[v22], &qword_1EA935CD0);
  v25 = *(v41 + 48);
  if (v25(v7, 1, v2) == 1)
  {
    sub_188A3F5FC(v14, &qword_1EA935CD0);
    if (v25(&v7[v22], 1, v2) == 1)
    {

      sub_188A3F5FC(v7, &qword_1EA935CD0);
      return;
    }

    goto LABEL_6;
  }

  v26 = v36;
  sub_188A3F29C(v7, v36, &qword_1EA935CD0);
  if (v25(&v7[v22], 1, v20) == 1)
  {
    sub_188A3F5FC(v14, &qword_1EA935CD0);
    (*(v41 + 8))(v26, v20);
LABEL_6:
    sub_188A3F5FC(v7, &unk_1EA934850);
    goto LABEL_7;
  }

  v30 = v41;
  v31 = v35;
  (*(v41 + 32))(v35, &v7[v22], v20);
  sub_189063EF0(&qword_1EA930AA0, 255, MEMORY[0x1E697FC78]);
  v34 = sub_18A4A7248();
  v32 = *(v30 + 8);
  v32(v31, v20);
  sub_188A3F5FC(v14, &qword_1EA935CD0);
  v32(v26, v20);
  v24 = v17;
  sub_188A3F5FC(v7, &qword_1EA935CD0);
  if (v34)
  {

    return;
  }

LABEL_7:
  v27 = v38;
  v28 = v40;
  sub_188A3F29C(v40 + v37, v38, &qword_1EA935CD0);
  if (v25(v27, 1, v20) == 1)
  {
    sub_188A3F5FC(v27, &qword_1EA935CD0);
  }

  else
  {
    sub_189063EF0(&qword_1EA931288, v29, type metadata accessor for _GlassGroupView);
    sub_18A4A5678();
    (*(v41 + 8))(v27, v20);
  }

  sub_18905C2DC(v24);
}

uint64_t sub_18905CB84(uint64_t a1, void *a2, char a3)
{
  v56[0] = 0;
  v7 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v8 = *&v3[v7];
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *&v3[v7] = v8;
  v49 = v7;
  if (!isUniquelyReferenced_nonNull_bridgeObject || v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    v8 = sub_188B8AD14(v8);
    *&v3[v7] = v8;
  }

  v48 = v8;
  v10 = v8 & 0xFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v47 = a3;
  v12 = 0;
  if (v11)
  {
    v13 = v10 + 32;
    v45 = v10 + 32;
    v46 = v10 + 24;
    do
    {
      v14 = (v13 + 8 * v12);
      while (1)
      {
        v15 = *v14;
        v16 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
        swift_beginAccess();
        v17 = *&v15[v16];
        if (!*(v17 + 16))
        {
          break;
        }

        v18 = type metadata accessor for GlassPair(0);
        v19 = *(v17 + ((*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80)) + *(v18 + 20));
        v20 = v15;
        v21 = v19;
        v22 = sub_189122420(a2, v21);

        if (v22 == -1)
        {
          break;
        }

        ++v12;
        ++v14;
        if (v12 >= v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 >= v11 - 1)
      {
        break;
      }

      v23 = (v46 + 8 * v11--);
      while (1)
      {
        v24 = *v23;
        v25 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
        swift_beginAccess();
        v26 = *&v24[v25];
        if (*(v26 + 16))
        {
          v27 = type metadata accessor for GlassPair(0);
          v28 = *(v26 + ((*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80)) + *(v27 + 20));
          v29 = v24;
          v30 = v28;
          v31 = sub_189122420(a2, v30);

          if (v31 != -1)
          {
            break;
          }
        }

        --v11;
        --v23;
        if (v12 >= v11)
        {
          goto LABEL_18;
        }
      }

      v32 = *v14;
      *v14 = *v23;
      *v23 = v32;
      ++v12;
      v13 = v45;
    }

    while (v12 < v11);
  }

LABEL_18:
  *&v3[v49] = v48;
  swift_endAccess();
  v33 = objc_opt_self();
  v34 = swift_allocObject();
  v34[2] = v56;
  v34[3] = v3;
  v34[4] = v12;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_189063EC0;
  *(v35 + 24) = v34;
  v54 = sub_188E3FE50;
  v55 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_188A4A968;
  v53 = &block_descriptor_198_1;
  v36 = _Block_copy(&aBlock);
  v37 = v3;

  [v33 performWithoutAnimation_];
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (!v56[0])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v40 = v56[0];
  sub_18905D7C8(a2, a1, v47 & 1);

  v41 = swift_allocObject();
  *(v41 + 16) = v56;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_189063ECC;
  *(v42 + 24) = v41;
  v54 = sub_188E3FE50;
  v55 = v42;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_188A4A968;
  v53 = &block_descriptor_208;
  v43 = _Block_copy(&aBlock);

  [v33 performWithoutAnimation_];
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v44 = v56[0];
  if (v56[0])
  {

    return v44;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_18905D080(id *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GlassState(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v14 = [objc_allocWithZone(type metadata accessor for GlassGroupLayerView(0)) initWithFrame_];
  v15 = *a1;
  *a1 = v14;
  v16 = v14;

  if (!v16)
  {
    goto LABEL_37;
  }

  v16[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground] = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground);

  if (!*a1)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  *(*a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius) = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius);
  if (!*a1)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(*a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup) = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup);
  if (!*a1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [*a1 setAutoresizingMask_];
  if (!*a1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  *(*a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_delegate + 8) = &off_1EFADDFD0;
  swift_unknownObjectWeakAssign();
  if (!*a1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v17 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness + 8);
  v18 = *a1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride;
  *v18 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness);
  *(v18 + 8) = v17;
  if ((*(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8) & 1) == 0)
  {
    v19 = *a1;
    if (!*a1)
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

    v20 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
    v21 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
    swift_beginAccess();
    sub_189063880(v19 + v21, v9, type metadata accessor for GlassState);
    v22 = &v9[*(v6 + 20)];
    *v22 = v20;
    v22[8] = 0;
    v23 = v19;
    sub_18905D630(v9);
  }

  v24 = [a2 traitCollection];
  v25 = sub_188E1ADFC();
  v27 = v26;

  if (v27)
  {
    if (!*a1)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v24 = *a1;
    sub_188B65E58(v25, v27);
  }

  v28 = *a1;
  if (!a3)
  {
    if (v28)
    {
      [a2 insertSubview:*a1 atIndex:0];
      a1 = *a1;
      if (!a1)
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

    goto LABEL_46;
  }

  if (!v28)
  {
    goto LABEL_44;
  }

  v27 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_33;
  }

  v29 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  swift_beginAccess();
  v24 = *(a2 + v29);
  if ((v24 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = *(v24 + 8 * v27 + 32);
  v31 = v28;
  v27 = v30;
  while (1)
  {
    [a2 insertSubview:v28 aboveSubview:v27];

    a1 = *a1;
    if (a1)
    {
LABEL_21:
      v28 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
      swift_beginAccess();
      v32 = *&v28[a2];
      if (!(v32 >> 62))
      {
        if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < a3)
        {
          goto LABEL_31;
        }

        goto LABEL_23;
      }
    }

    else
    {
LABEL_29:
      __break(1u);
    }

    if (sub_18A4A7F68() < a3)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_23:
    if ((a3 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v37 = v28;

    v27 = sub_188E49160(v27, v24);
  }

  v33 = a1;
  sub_1890147A0(a3, a3, v33);
  swift_endAccess();

  v34 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext;
  v35 = *(a2 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext);
  if (v35)
  {
    v36 = v35;
    sub_18905B8E8(a2, 1);

    v35 = *(a2 + v34);
  }

  *(a2 + v34) = 0;
}

Swift::Void __swiftcall _GlassGroupView.luminanceDidChange(_:)(Swift::Float_optional *a1)
{
  v2 = (a1 & 0x100000000) == 0;
  v3 = (a1 >> 32) & 1;
  v4 = *&a1;
  v5 = v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8);
  if (!v2)
  {
    v4 = 0.0;
  }

  *v5 = v4;
  *(v5 + 8) = v3;
  sub_18905BFDC(v6, v7);
}

void sub_18905D570(unint64_t a1)
{
  v2 = (a1 & 0x100000000) == 0;
  v3 = HIDWORD(a1) & 1;
  v4 = *&a1;
  v5 = v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  v6 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma);
  v7 = *(v1 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma + 8);
  if (!v2)
  {
    v4 = 0.0;
  }

  *v5 = v4;
  *(v5 + 8) = v3;
  sub_18905BFDC(v6, v7);
}

uint64_t sub_18905D5C0()
{
  v1 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry;
  if (*(v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry);
  }

  else
  {
    type metadata accessor for SDFElementContainerRegistry();
    v2 = swift_allocObject();
    *(v2 + 16) = MEMORY[0x1E69E7CC0];
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_18905D630(uint64_t a1)
{
  v3 = type metadata accessor for GlassState(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
  swift_beginAccess();
  sub_189063880(v7, v6, type metadata accessor for GlassState);
  swift_beginAccess();
  sub_189063E58(a1, v7, type metadata accessor for GlassState);
  swift_endAccess();
  v8 = *(v4 + 28);
  v9 = &v6[v8];
  v10 = v6[v8 + 8];
  v11 = (v7 + v8);
  v12 = *(v7 + v8 + 8);
  if (v10)
  {
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (*v9 != *v11)
  {
    LOBYTE(v12) = 1;
  }

  if (v12)
  {
LABEL_7:
    [v1 setNeedsLayout];
    if ([objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      [v1 layoutIfNeeded];
    }
  }

LABEL_9:
  sub_1890639A8(a1, type metadata accessor for GlassState);
  return sub_1890639A8(v6, type metadata accessor for GlassState);
}

void sub_18905D7C8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for GlassPair(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_189063880(a2, v12, type metadata accessor for _Glass);
  *&v12[*(v9 + 28)] = a1;
  v13 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v14 = *&v4[v13];
  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_188B65E30(0, v14[2] + 1, 1, v14);
    *&v4[v13] = v14;
  }

  v18 = v14[2];
  v17 = v14[3];
  if (v18 >= v17 >> 1)
  {
    v14 = sub_188B65E30(v17 > 1, v18 + 1, 1, v14);
  }

  v14[2] = v18 + 1;
  sub_188B6549C(v12, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, type metadata accessor for GlassPair);
  *&v4[v13] = v14;
  swift_endAccess();
  swift_beginAccess();
  v19 = sub_188B6625C(v15);
  swift_endAccess();
  v20 = type metadata accessor for _ShapeSetTagBox();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC5UIKit15_ShapeSetTagBox_tag] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v22 = objc_msgSendSuper2(&v28, sel_init);
  v23 = *&v4[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
  if (v23)
  {
    [v23 _addTrackedElementFor_with_];
  }

  v24 = *(a2 + 8);
  v25 = *(a2 + 16);

  sub_188B65E58(v24, v25);
  if ((a3 & 1) != 0 && [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
  {
    v26 = [v4 traitCollection];
    sub_18906330C(v15, a2, 0);
  }
}

void sub_18905DA8C(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_188BBAA3C(v8);
  v9 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v10 = a1;
  v11 = sub_189062FCC(&v2[v9], v10);

  v12 = *(*&v3[v9] + 16);
  if (v12 < v11)
  {
    __break(1u);
  }

  else
  {
    sub_188BBADE8(v11, v12);
    swift_endAccess();
    [*&v3[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView] _removeTrackedElementFor_];
    v13 = sub_18A4A7258();
    [(UIView *)v10 _removeChildTraitCollectionTransformWithIdentifier:v13];

    v14 = sub_189021694();
    if (v14)
    {
      v15 = v14;
      v16 = sub_18A4A7258();
      [(UIView *)v15 _removeChildTraitCollectionTransformWithIdentifier:v16];
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
    MEMORY[0x1EEE9AC00](v17 - 8);
    v19 = &v38[-v18];
    v20 = sub_18A4A2DB8();
    (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    v21 = [(UIView *)v10 _traitOverrides];
    v22 = [(_UITraitOverrides *)v21 _swiftImplCopy];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
    inited = swift_initStackObject();
    *(inited + 16) = v22;
    v39 = inited;
    sub_18905BB50(v19);
    v24 = v39;
    v25 = [(UIView *)v10 _traitOverrides];
    v26 = *(v24 + 16);

    [(_UITraitOverrides *)v25 _replaceWithOverrides:v26];

    if ((a2 & 1) != 0 && [objc_opt_self() _isInAnimationBlockWithAnimationsEnabled])
    {
      v27 = [v3 superview];
      if (!v27 || (v28 = v27, v29 = [v27 traitCollection], v28, !v29))
      {
        v29 = [v3 traitCollection];
      }

      sub_18906330C(v10, v8, 1);
    }

    else if (!*(*&v3[v9] + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v31 = Strong;
        v32 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
        swift_beginAccess();
        v33 = *(v31 + v32);

        v34 = sub_188BBA908(v3, v33);
        v36 = v35;

        if ((v36 & 1) == 0)
        {
          swift_beginAccess();
          v37 = sub_188B747B4(v34);
          swift_endAccess();
        }

        [v3 removeFromSuperview];
        swift_unknownObjectRelease();
      }
    }

    sub_1890639A8(v8, type metadata accessor for _Glass);
  }
}

uint64_t sub_18905DEA4(void *a1, uint64_t a2)
{
  v56 = a2;
  v4 = type metadata accessor for GlassPair(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - v9;
  v10 = type metadata accessor for _Glass(0);
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v57 = (&v51 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v51 - v15;
  v52 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v59 = (&v51 - v18);
  v19 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v58 = v2;
  v20 = *&v2[v19];
  v21 = *(v20 + 16);

  if (v21)
  {
    v23 = 0;
    while (v23 < *(v20 + 16))
    {
      sub_189063880(v20 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, v7, type metadata accessor for GlassPair);
      sub_188A34624(0, &qword_1ED490230);
      if (sub_18A4A7C88())
      {
        goto LABEL_7;
      }

      ++v23;
      result = sub_1890639A8(v7, type metadata accessor for GlassPair);
      if (v21 == v23)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_6:

  __break(1u);
LABEL_7:

  v24 = v55;
  sub_188B6549C(v7, v55, type metadata accessor for GlassPair);
  v25 = v54;
  sub_189063880(v24, v54, type metadata accessor for _Glass);
  sub_1890639A8(v24, type metadata accessor for GlassPair);
  v26 = v59;
  sub_188B6549C(v25, v59, type metadata accessor for _Glass);
  v27 = v57;
  sub_189063880(v56, v57, type metadata accessor for _Glass);
  v28 = objc_opt_self();
  if (![v28 _isInAnimationBlockWithAnimationsEnabled] || *v26 || (v32 = *v27) == 0)
  {
    v29 = [v28 _isInAnimationBlockWithAnimationsEnabled];
    v30 = v58;
    if (v29 && !*v27 && *v26)
    {
      v43 = *v26;
      v44 = [v43 colorWithAlphaComponent_];
      v45 = v53;
      sub_189063880(v27, v53, type metadata accessor for _Glass);

      *v45 = v44;
      sub_188B607CC(a1, v45);
      sub_1890639A8(v45, type metadata accessor for _Glass);
      sub_189063880(v27, v45, type metadata accessor for _Glass);
      v46 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = v30;
      *(v47 + 24) = a1;
      sub_188B6549C(v45, v47 + v46, type metadata accessor for _Glass);
      v64 = sub_189063CFC;
      v65 = v47;
      aBlock = MEMORY[0x1E69E9820];
      v61 = 1107296256;
      v62 = sub_188ABD010;
      v63 = &block_descriptor_171_0;
      v48 = _Block_copy(&aBlock);
      v49 = v30;
      v50 = a1;

      [v28 _addCompletion_];

      _Block_release(v48);
      v31 = 0;
      goto LABEL_13;
    }

    v31 = 0;
LABEL_12:
    sub_188B607CC(a1, v27);
LABEL_13:
    sub_1890639A8(v27, type metadata accessor for _Glass);
    sub_1890639A8(v26, type metadata accessor for _Glass);
    return sub_188A55B8C(v31);
  }

  v33 = v53;
  sub_189063880(v27, v53, type metadata accessor for _Glass);
  v34 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v35 = (v52 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v58;
  *(v36 + 16) = v58;
  *(v36 + 24) = a1;
  sub_188B6549C(v33, v36 + v34, type metadata accessor for _Glass);
  *(v36 + v35) = v32;
  v38 = swift_allocObject();
  v31 = sub_189063D60;
  *(v38 + 16) = sub_189063D60;
  *(v38 + 24) = v36;
  v64 = sub_188E3FE50;
  v65 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_188A4A968;
  v63 = &block_descriptor_181_0;
  v39 = _Block_copy(&aBlock);
  v40 = v32;
  v41 = v37;
  v42 = a1;

  [v28 performWithoutAnimation_];

  _Block_release(v39);
  LOBYTE(v39) = swift_isEscapingClosureAtFileLocation();

  if ((v39 & 1) == 0)
  {
    v26 = v59;
    goto LABEL_12;
  }

LABEL_20:
  __break(1u);
  return result;
}

id sub_18905E5B0(void *a1, void *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = [a4 colorWithAlphaComponent_];
  sub_189063880(a3, v10, type metadata accessor for _Glass);

  *v10 = v11;
  sub_188B607CC(a2, v10);
  sub_1890639A8(v10, type metadata accessor for _Glass);
  return [a1 layoutIfNeeded];
}

uint64_t sub_18905E6AC()
{
  v1 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for GlassGroupLayerView(0);
  v19.receiver = v0;
  v19.super_class = v10;
  objc_msgSendSuper2(&v19, sel__prepareForLayerDump);
  v11 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  v13 = *&v0[v11];
  if (*(v13 + 16))
  {
    v14 = *(type metadata accessor for GlassPair(0) - 8);
    sub_189063880(v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v6, type metadata accessor for _Glass);
    sub_188B6549C(v6, v9, type metadata accessor for _Glass);
    v15 = *&v0[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
    if (v15)
    {
      v16 = [v15 layer];
      sub_189063880(v9, v3, type metadata accessor for _Glass);
      sub_18A4A72F8();
      v17 = sub_18A4A7258();

      [v16 setName_];
    }

    return sub_1890639A8(v9, type metadata accessor for _Glass);
  }

  return result;
}

id sub_18905E910()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for GlassGroupLayerView(0);
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!*(v2 + 16))
  {
    [v0 setHidden_];
    return sub_188B65054();
  }

  v3 = *(type metadata accessor for GlassPair(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v4 + *(type metadata accessor for _Glass(0) + 32));
  result = [v0 setHidden_];
  if ((v5 & 1) == 0)
  {
    return sub_188B65054();
  }

  return result;
}

void sub_18905E9F8(void *a1, uint64_t a2)
{
  [a1 removeFromSuperview];
  swift_beginAccess();
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = [v3 layer];
    [v4 setCompositingFilter_];
  }

  else
  {
    __break(1u);
  }
}

void sub_18905EA80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v229) = a5;
  v237 = a4;
  v225 = a2;
  v218 = a1;
  v236 = sub_18A4A5318();
  v234 = *(v236 - 1);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v209 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for GlassPair(0);
  v231 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v9 = (&v209 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v228 = type metadata accessor for GlassState(0);
  MEMORY[0x1EEE9AC00](v228);
  v219 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_18A4A6288();
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v224 = &v209 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_18A4A4428();
  v212 = *(v215 - 1);
  MEMORY[0x1EEE9AC00](v215);
  v210 = (&v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v211 = &v209 - v14;
  v238 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v238);
  v233 = &v209 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v248);
  v245 = (&v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v230 = (&v209 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935CD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v209 - v24;
  v26 = [v5 traitCollection];
  v27 = sub_188E1AF8C();

  v28 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v27 + v28, v25, &qword_1EA935CD0);

  v29 = sub_18A4A56B8();
  v30 = *(v29 - 8);
  v247 = *(v30 + 48);
  v246 = v30 + 48;
  LODWORD(v27) = (v247)(v25, 1, v29);
  sub_188A3F5FC(v25, &qword_1EA935CD0);
  v31 = 0;
  LODWORD(v250) = v27;
  if (v27 != 1)
  {
    v32 = [v6 &selRef_traitCollectionWithPreferredContentSizeCategory_];
    v33 = [v32 glassUserInterfaceStyle];

    v34 = [v6 &selRef_traitCollectionWithPreferredContentSizeCategory_];
    v35 = v34;
    v36 = &selRef_userInterfaceStyle;
    if (v33)
    {
      v36 = &selRef_glassUserInterfaceStyle;
    }

    v31 = [v34 *v36];
  }

  v249 = v31;
  v223 = sub_18A4A3148();
  v222 = *(v223 - 8);
  v37 = MEMORY[0x1EEE9AC00](v223);
  v39 = &v209 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = [v6 &selRef:v37 traitCollectionWithPreferredContentSizeCategory:?];
  LODWORD(v227) = v6[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground];
  v220 = v6;
  v40 = [v6 &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v41 = sub_188E1AF8C();

  v42 = OBJC_IVAR____TtC5UIKit23MaterialBackdropContext_proxy;
  swift_beginAccess();
  sub_188A3F29C(v41 + v42, v21, &qword_1EA935CD0);

  (v247)(v21, 1, v29);
  sub_188A3F5FC(v21, &qword_1EA935CD0);
  v246 = *(v225 + 16);
  if (!v246)
  {
    goto LABEL_59;
  }

  v247 = v225 + ((*(v231 + 80) + 32) & ~*(v231 + 80));
  v43 = v245;
  sub_189063880(v247, v245, type metadata accessor for _Glass);
  v44 = v43;
  v45 = v230;
  sub_188B6549C(v44, v230, type metadata accessor for _Glass);
  v46 = v233;
  sub_189063880(v45 + v248[6], v233, type metadata accessor for _Glass._GlassVariant);
  v47 = sub_18A4A2F58();
  v226 = &v209;
  v48 = *(v47 - 8);
  v49 = v48[8];
  v50 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v209 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v48[2];
  v214 = (v48 + 2);
  v213 = v52;
  v53 = (v52)(v51, v46, v47, v50);
  v245 = v49;
  MEMORY[0x1EEE9AC00](v53);
  sub_18A4A2E88();
  v54 = v48[1];
  v242 = (v48 + 1);
  v241 = v54;
  (v54)(v51, v47);
  v55 = v48[4];
  v244 = v47;
  v240 = (v48 + 4);
  v239 = v55;
  v55(v51, v51, v47);
  if (v250 == 1)
  {
    goto LABEL_12;
  }

  if (v249 == 1)
  {
    v56 = MEMORY[0x1E697DBB8];
  }

  else
  {
    if (v249 != 2)
    {
      goto LABEL_12;
    }

    v56 = MEMORY[0x1E697DBA8];
  }

  v57 = v212;
  v58 = v210;
  v59 = v215;
  (v212[13])(v210, *v56, v215);
  v60 = v211;
  v61 = (v57[4])(v211, v58, v59);
  v62 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v209 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18CFDDE70](v60, v62);
  (v57[1])(v60, v59);
  v65 = v244;
  (v241)(v51, v244);
  v239(v51, v64, v65);
LABEL_12:
  v215 = &v209;
  v66 = sub_188EB3AA8(aBlock);
  v67 = LOBYTE(aBlock[0]);
  v68 = v238;
  v69 = LOBYTE(aBlock[0]) == *(v233 + *(v238 + 20));
  v221 = v39;
  if (!v69)
  {
    MEMORY[0x1EEE9AC00](v66);
    v71 = &v209 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    v72 = sub_18A4A3028();
    v73 = *(v72 - 8);
    MEMORY[0x1EEE9AC00](v72);
    v75 = &v209 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v67 == 1)
    {
      sub_18A4A3008();
    }

    else if (v67 == 2)
    {
      sub_18A4A2FF8();
    }

    else
    {
      sub_18A4A3018();
    }

    sub_18A4A2EE8();
    (*(v73 + 8))(v75, v72);
    v76 = v244;
    (v241)(v51, v244);
    v239(v51, v71, v76);
    v68 = v238;
  }

  v77 = sub_18A4A2FE8();
  v212 = &v209;
  v78 = *(v77 - 8);
  v79 = *(v78 + 8);
  MEMORY[0x1EEE9AC00](v77);
  v80 = (v79 + 15) & 0xFFFFFFFFFFFFFFF0;
  v82 = MEMORY[0x1EEE9AC00](v81);
  (*(v78 + 13))(&v209 - v80, **(&unk_1E70F1FC8 + *(v233 + *(v68 + 24))), v77, v82);
  v83 = (*(v78 + 4))(&v209 - v80, &v209 - v80, v77);
  v84 = MEMORY[0x1EEE9AC00](v83);
  v210 = v78;
  v85 = *(v78 + 2);
  v209 = &v209 - v80;
  v211 = v77;
  v85(&v209 - v80, &v209 - v80, v77, v84);
  sub_18A4A2EC8();
  v86 = v249;
  if (v250 == 1 || (v87 = [v232 userInterfaceStyle], v86 == v87))
  {
    v249 = v232;
    goto LABEL_23;
  }

  MEMORY[0x1EEE9AC00](v87);
  *(&v209 - 2) = v86;
  v88 = swift_allocObject();
  *(v88 + 16) = sub_189063A08;
  *(v88 + 24) = &v209 - 4;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_188C01D50;
  *(v89 + 24) = v88;
  aBlock[4] = sub_188A86D40;
  aBlock[5] = v89;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A7AC24;
  aBlock[3] = &block_descriptor_143_0;
  v90 = _Block_copy(aBlock);

  v249 = [v232 traitCollectionByModifyingTraits_];
  _Block_release(v90);
  LOBYTE(v90) = swift_isEscapingClosureAtFileLocation();

  if (v90)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return;
  }

LABEL_23:
  ++v234;
  v250 = v231[9];
  v91 = v247;
  v92 = v246;
  do
  {
    sub_189063880(v91, v9, type metadata accessor for GlassPair);
    if (*v9)
    {
      v94 = [*v9 resolvedColorWithTraitCollection_];
      v95 = [v94 CGColor];

      if (v95)
      {
        MEMORY[0x1EEE9AC00](v96);
        v98 = &v209 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (!*(v237 + 16))
        {
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        sub_188A403F4(*(v9 + *(v243 + 20)));
        if ((v99 & 1) == 0)
        {
          goto LABEL_57;
        }

        v100 = v95;
        sub_18A4A5E68();
        v101 = v235;
        sub_18A4A5308();
        sub_18A4A5D98();

        v102 = v101;
        v68 = v238;
        (*v234)(v102, v236);
        sub_18A4A2ED8();

        v103 = v244;
        (v241)(v51, v244);
        v239(v51, v98, v103);
      }
    }

    v104 = *(v9 + v248[6] + *(v68 + 28));
    if (v104 && (v105 = [v104 resolvedColorWithTraitCollection_]) != 0)
    {
      v106 = MEMORY[0x1EEE9AC00](v105);
      v108 = &v209 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
      v110 = v109;
      v111 = [v109 CGColor];
      sub_18A4A5E68();
      sub_18A4A2E48();

      v112 = v244;
      (v241)(v51, v244);
      sub_1890639A8(v9, type metadata accessor for GlassPair);
      v93 = (v239)(v51, v108, v112);
    }

    else
    {
      v93 = sub_1890639A8(v9, type metadata accessor for GlassPair);
    }

    v91 += v250;
    --v92;
  }

  while (v92);
  if ((v227 & 1) == 0)
  {
    v113 = sub_18A4A3118();
    v114 = *(v113 - 8);
    MEMORY[0x1EEE9AC00](v113);
    v116 = &v209 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1EEE9AC00](v117);
    v119 = &v209 - v118;
    sub_18A4A30F8();
    v120 = sub_18A4A2EF8();
    sub_188B647BC(v116, v119);
    v121 = *(v114 + 8);
    v121(v119, v113);
    v121(v116, v113);
    v93 = v120(aBlock, 0);
  }

  v122 = MEMORY[0x1EEE9AC00](v93);
  v124 = v244;
  v213(&v209 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v244, v122);
  v125 = v221;
  sub_18A4A2F78();

  v210[1](v209, v211);
  (v241)(v51, v124);
  sub_1890639A8(v233, type metadata accessor for _Glass._GlassVariant);
  sub_1890639A8(v230, type metadata accessor for _Glass);

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93A4F0);
  v214 = &v209;
  v127 = MEMORY[0x1EEE9AC00](v126 - 8);
  v129 = (&v209 - v128);
  (*(v222 + 16))(&v209 - v128, v125, v223, v127);
  v130 = v220;
  v131 = v220 + OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state;
  swift_beginAccess();
  sub_189060DE4(v130, *(v131 + *(v228 + 20)), *(v131 + *(v228 + 20) + 8), v224);
  v132 = v219;
  sub_189063880(v131, v219, type metadata accessor for GlassState);
  sub_188B69068(&unk_1ED48CEE0, MEMORY[0x1EEE86B38]);
  v213 = v129;
  sub_18A4A5848();
  sub_18905D630(v132);
  if (v229)
  {
    v133 = sub_18A4A2DB8();
    v211 = &v209;
    v134 = *(v133 - 8);
    MEMORY[0x1EEE9AC00](v133);
    v228 = v135;
    v136 = &v209 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
    v137 = sub_18A4A3138();
    v138 = *(v137 - 8);
    MEMORY[0x1EEE9AC00](v131);
    v140 = &v209 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
    v212 = v141;
    sub_189063880(v141, v132, type metadata accessor for GlassState);
    sub_18A4A2DC8();
    v142 = sub_18A4A3048();
    (*(*(v142 - 8) + 8))(v132, v142);
    v242 = v136;
    sub_18A4A3128();
    (*(v138 + 8))(v140, v137);
    v234 = (v134 + 16);
    v233 = v134 + 56;
    v241 = (v134 + 48);
    v227 = (v134 + 32);
    v230 = (v134 + 8);
    v143 = 0x1E71B2000;
    v144 = v133;
    v145 = v247;
    v229 = v133;
    while (1)
    {
      v159 = *(v143 + 848);
      v248 = *&v145[*(v243 + 20)];
      v160 = [v248 v159];
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA935D70);
      v162 = *(*(v161 - 8) + 64);
      MEMORY[0x1EEE9AC00](v161 - 8);
      v164 = &v209 - v163;
      v165 = sub_188B56DB8();

      v247 = v145;
      v249 = &v209;
      if (v165)
      {
        v166 = *v234;
        v167 = v234 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        (*v234)(v164, &v165[*((*MEMORY[0x1E69E7D40] & *v165) + 0x60)], v144);

        v168 = *v233;
        v169 = v233 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v170 = (*v233)(v164, 0, 1, v144);
      }

      else
      {
        v168 = *v233;
        v169 = v233 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
        v170 = (*v233)(v164, 1, 1, v144);
        v166 = *v234;
        v167 = v234 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      }

      v245 = &v209;
      v171 = MEMORY[0x1EEE9AC00](v170);
      v172 = (v162 + 15) & 0xFFFFFFFFFFFFFFF0;
      v173 = &v209 - v172;
      v240 = v166;
      v239 = v167;
      (v166)(&v209 - v172, v242, v144, v171);
      v238 = v168;
      v237 = v169;
      v168(&v209 - v172, 0, 1, v144);
      v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF68);
      v244 = &v209;
      MEMORY[0x1EEE9AC00](v174 - 8);
      v176 = &v209 - v175;
      v178 = *(v177 + 56);
      sub_188A3F29C(v164, &v209 - v175, &qword_1EA935D70);
      sub_188A3F29C(&v209 - v172, &v176[v178], &qword_1EA935D70);
      v179 = v144;
      v180 = v164;
      v181 = *v241;
      v182 = (*v241)(v176, 1, v144);
      v236 = v181;
      v235 = v162;
      if (v182 == 1)
      {
        sub_188A3F5FC(&v209 - v172, &qword_1EA935D70);
        sub_188A3F5FC(v180, &qword_1EA935D70);
        if (v181(&v176[v178], 1, v144) != 1)
        {
          goto LABEL_49;
        }

        sub_188A3F5FC(v176, &qword_1EA935D70);
        v143 = 0x1E71B2000;
      }

      else
      {
        v232 = v180;
        v231 = &v209;
        MEMORY[0x1EEE9AC00](v182);
        v183 = &v209 - v172;
        sub_188A3F29C(v176, v183, &qword_1EA935D70);
        v184 = v181(&v176[v178], 1, v144);
        if (v184 == 1)
        {
          sub_188A3F5FC(v173, &qword_1EA935D70);
          sub_188A3F5FC(v232, &qword_1EA935D70);
          (*v230)(v183, v144);
LABEL_49:
          v185 = sub_188A3F5FC(v176, &qword_1EA93AF68);
LABEL_50:
          v186 = v235;
          v187 = MEMORY[0x1EEE9AC00](v185);
          v188 = &v209 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
          v189 = v240;
          v240(v188, v242, v144, v187);
          (v238)(v188, 0, 1, v144);
          v190 = [(UIView *)v248 _traitOverrides];
          v191 = [(_UITraitOverrides *)v190 _swiftImplCopy];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA932210);
          inited = swift_initStackObject();
          *(inited + 16) = v191;
          v253 = inited;
          MEMORY[0x1EEE9AC00](inited);
          sub_188A3F29C(v188, v188, &qword_1EA935D70);
          v193 = v236(v188, 1, v144);
          if (v193 == 1)
          {
            v155 = 0;
          }

          else
          {
            v244 = &v209;
            v146 = v228;
            v147 = MEMORY[0x1EEE9AC00](v193);
            v245 = &v209;
            v148 = &v209 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0);
            v149 = (*v227)(v148, &v209 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0), v144, v147);
            v249 = &v209;
            v150 = MEMORY[0x1EEE9AC00](v149);
            v189(v148, v148, v144, v150);
            v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937E30);
            v152 = objc_allocWithZone(v151);
            (v189)(v152 + *((*MEMORY[0x1E69E7D40] & *v152) + 0x60), v148, v144);
            v252.receiver = v152;
            v252.super_class = v151;
            v153 = objc_msgSendSuper2(&v252, sel_init);
            v154 = *v230;
            (*v230)(v148, v144);
            v154(v148, v144);
            v155 = v153;
          }

          sub_188B6EDCC(v155);
          sub_188A3F5FC(v188, &qword_1EA935D70);
          v156 = v253;
          v157 = [(UIView *)v248 _traitOverrides];
          v158 = *(v156 + 16);

          [(_UITraitOverrides *)v157 _replaceWithOverrides:v158];

          v143 = 0x1E71B2000;
          v144 = v229;
          goto LABEL_40;
        }

        v226 = &v209;
        v194 = MEMORY[0x1EEE9AC00](v184);
        v196 = &v209 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*v227)(v196, &v176[v178], v179, v194);
        sub_188B69068(&qword_1EA93B0E0, MEMORY[0x1EEE868B8]);
        v197 = sub_18A4A7248();
        v198 = *v230;
        (*v230)(v196, v179);
        v199 = v173;
        v143 = 0x1FB6F1000uLL;
        sub_188A3F5FC(v199, &qword_1EA935D70);
        sub_188A3F5FC(v232, &qword_1EA935D70);
        v198(v183, v179);
        v185 = sub_188A3F5FC(v176, &qword_1EA935D70);
        v144 = v179;
        if ((v197 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

LABEL_40:
      v145 = &v250[v247];
      if (!--v246)
      {
        (*v230)(v242, v144);
        v130 = v220;
        v132 = v219;
        v131 = v212;
        break;
      }
    }
  }

  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF60);
  MEMORY[0x1EEE9AC00](v200 - 8);
  v202 = &v209 - v201;
  sub_189063880(v131, v132, type metadata accessor for GlassState);
  v203 = sub_18A4A3048();
  v204 = *(v203 - 8);
  (*(v204 + 32))(v202, v132, v203);
  (*(v204 + 56))(v202, 0, 1, v203);
  sub_189068A90(v225);
  v205 = v213;
  sub_189061088(v130, v202, v218, v206, v207);
  sub_188A3F5FC(v202, &qword_1EA93AF60);
  v208 = [v130 traitCollection];
  sub_189063880(v131, v132, type metadata accessor for GlassState);
  sub_188B6D3B0();

  (*(v216 + 8))(v224, v217);
  sub_188A3F5FC(v205, &qword_1EA93A4F0);
  (*(v222 + 8))(v221, v223);
  (*(v204 + 8))(v132, v203);
}

uint64_t sub_189060DE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v21 = a2;
  v23 = a4;
  v5 = sub_18A4A5318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = sub_18A4A5828();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A5788();
  type metadata accessor for UICorePlatformColorDefinition();
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5778();
  (*(v13 + 8))(v15, v12);
  v16 = [a1 traitCollection];
  sub_188B0C0A4(v16);

  v17 = [a1 window];
  if (v17)
  {

    v18 = [a1 _undimmedTintColor];
    if (v18)
    {
      v19 = v18;
      sub_18A4A5E38();
      sub_18A4A4EE8();
    }
  }

  sub_18A4A5DB8();
  sub_18A4A5228();
  (*(v6 + 16))(v8, v11, v5);
  sub_18A4A6268();
  v24 = v22 & 1;
  sub_18A4A6278();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_189061088@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D2>)
{
  v51 = a2;
  v52 = a1;
  v9 = sub_18A4A6B48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93AF70);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v46 - v14;
  v15 = sub_18A4A61E8();
  v55 = *(v15 - 8);
  v56 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_18A4A6B98();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18A4A3148();
  v61 = v18;
  v62 = sub_188B69068(&qword_1ED48CED8, MEMORY[0x1EEE86B38]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v60);
  v20 = *(*(v18 - 8) + 16);
  v47 = v5;
  v46 = v18;
  v20(boxed_opaque_existential_0, v5, v18);
  v21 = sub_18A4A3048();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93AF60);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v46 - v26;
  sub_188A3F29C(v51, &v46 - v26, &qword_1EA93AF60);
  if ((*(v22 + 48))(v27, 1, v21) == 1)
  {
    sub_188A3F5FC(v27, &qword_1EA93AF60);
  }

  else
  {
    (*(v22 + 32))(v24, v27, v21);
    v58 = sub_18A4A3138();
    v59 = sub_188B69068(&qword_1ED48DB10, MEMORY[0x1EEE86B30]);
    __swift_allocate_boxed_opaque_existential_0(&v57);
    sub_188B69068(&unk_1ED48CEE0, MEMORY[0x1EEE86B38]);
    sub_18A4A5838();
    (*(v22 + 8))(v24, v21);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    sub_188A5EBAC(&v57, v60);
  }

  v28 = v53;
  result = sub_189062BDC(v52, v53);
  if (a4 > a5)
  {
    __break(1u);
  }

  else
  {
    sub_18A4A6B78();
    v30 = v54;
    sub_18A4A61D8();
    sub_18A4A61B8();
    sub_18A4A61C8();
    v31 = v55;
    v32 = v48;
    v33 = v30;
    v34 = v56;
    (*(v55 + 16))(v48, v33, v56);
    (*(v31 + 56))(v32, 0, 1, v34);
    sub_18A4A6B68();
    __swift_project_boxed_opaque_existential_0(v60, v61);
    v35 = sub_18A4A4DE8();
    *&v57 = MEMORY[0x1E69E7CC0];
    v36 = v35[2];
    if (v36)
    {
      v51 = a3;
      v52 = v35;
      v39 = *(v10 + 16);
      v37 = v10 + 16;
      v38 = v39;
      v40 = v35 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
      v41 = *(v37 + 56);
      do
      {
        v38(v12, v40, v9);
        v42 = sub_188B690B0();
        (*(v37 - 8))(v12, v9);
        sub_188B6D2B8(v42);
        v40 += v41;
        --v36;
      }

      while (v36);

      v43 = v57;
      a3 = v51;
      v28 = v53;
    }

    else
    {

      v43 = MEMORY[0x1E69E7CC0];
    }

    *(a3 + 16) = 1;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 117) = 0u;
    *(a3 + 133) = 4;
    *&v57 = sub_18A4A7288();
    *(&v57 + 1) = v44;
    sub_18A4A8048();
    v45 = [objc_opt_self() clearColor];
    (*(v55 + 8))(v54, v56);
    (*(v49 + 8))(v28, v50);
    *a3 = 0xD000000000000010;
    *(a3 + 8) = 0x800000018A6A2090;
    *(a3 + 176) = UIEdgeInsetsZero;
    *(a3 + 208) = v45;
    *(a3 + 216) = xmmword_18A64B730;
    *(a3 + 232) = 1065353216;
    *(a3 + 236) = 256;
    *(a3 + 240) = MEMORY[0x1E69E7CC0];
    *(a3 + 248) = 0;
    *(a3 + 264) = 0;
    *(a3 + 272) = 0;
    *(a3 + 256) = v43;
    *(a3 + 280) = 1;
    *(a3 + 288) = 0;
    return __swift_destroy_boxed_opaque_existential_0Tm(v60);
  }

  return result;
}

void sub_1890617B4(void *a1, double a2)
{
  v4 = [a1 subviews];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a2;
    v10[4] = sub_188B666EC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_188B66A7C;
    v10[3] = &block_descriptor_134_0;
    v8 = _Block_copy(v10);

    _UITreeDepthFirstTraversal(v5, sel_subviews, 0, v8);
    _Block_release(v8);

    [a1 setUserInteractionEnabled_];
    v9 = [a1 layer];
    [v9 setAllowsHitTesting_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_18906192C()
{
  v2 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934260);
    v5 = (type metadata accessor for GlassPair(0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_18A64BFB0;
    v8 = v7 + v6;
    v9 = v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass;
    swift_beginAccess();
    sub_189063880(v9, v8, type metadata accessor for _Glass);
    v10 = *(v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_view);
    *(v8 + v5[7]) = v10;
    v11 = *(v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_viewTagMapping);
    v12 = *(v2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_viewTagMapping + 8);
    v13 = v10;

    sub_18905EA80(v22, v7, v11, v12, 0);
    v15 = v14;

    swift_setDeallocating();
    sub_1890639A8(v8, type metadata accessor for GlassPair);
    swift_deallocClassInstance();

    v22[0] = 0xD000000000000019;
    v22[1] = 0x800000018A6A2020;
    v21 = MEMORY[0x1E69E7CC8];
    v16 = OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView;
    v17 = *(v2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView);
    sub_188B60AAC(v17, &v21);
    if (v1)
    {
    }

    else
    {

      v18 = *(v2 + v16);
      v19 = *(v9 + *(type metadata accessor for _Glass(0) + 48));
      v20 = v18;
      sub_1890617B4(v20, v19);

      sub_188B66CB0(v15);
    }

    return sub_188B6D288(v22);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_189061BC0()
{
  sub_1890639A8(v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass, type metadata accessor for _Glass);

  MEMORY[0x18CFEA6E0](v0 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_group);

  return swift_deallocClassInstance();
}

uint64_t sub_189061C84(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5)
{
  v67 = a4;
  v68 = a5;
  v66 = a3;
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Glass(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v69 = a2;
  v70 = &v62 - v22;
  if (a1)
  {
    sub_189063880(a2, v20, type metadata accessor for _Glass);
  }

  else
  {
    sub_189063880(a2, v17, type metadata accessor for _Glass);
    v64 = *(v10 + 24);
    sub_189063880(&v17[v64], v9, type metadata accessor for _Glass._GlassVariant);
    v23 = sub_18A4A2F58();
    v62 = &v62;
    v24 = v11;
    v25 = *(v23 - 8);
    MEMORY[0x1EEE9AC00](v23);
    v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_18A4A2F48();
    v28 = v23;
    a2 = v69;
    (*(v25 + 40))(v9, v27, v28);
    v11 = v24;
    sub_189063DF0(v9, &v17[v64], type metadata accessor for _Glass._GlassVariant);
    v29 = *(a2 + *(v10 + 48));
    sub_189063880(v17, v20, type metadata accessor for _Glass);
    *&v20[*(v10 + 48)] = v29;
    sub_1890639A8(v17, type metadata accessor for _Glass);
  }

  v30 = v70;
  sub_188B6549C(v20, v70, type metadata accessor for _Glass);
  v73 = 0;
  v64 = objc_opt_self();
  sub_189063880(v30, v17, type metadata accessor for _Glass);
  v31 = v65;
  sub_189063880(a2, v65, type metadata accessor for _Glass);
  v32 = *(v11 + 80);
  v33 = (v32 + 24) & ~v32;
  v34 = (v12 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v32 + v36 + 8) & ~v32;
  v38 = swift_allocObject();
  v39 = v66;
  *(v38 + 16) = v66;
  sub_188B6549C(v17, v38 + v33, type metadata accessor for _Glass);
  v41 = v67;
  v40 = v68;
  *(v38 + v34) = v67;
  *(v38 + v35) = v40;
  v42 = v40;
  *(v38 + v36) = &v73;
  sub_188B6549C(v31, v38 + v37, type metadata accessor for _Glass);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1890638F0;
  *(v43 + 24) = v38;
  aBlock[4] = sub_188A4B574;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_188A4A968;
  aBlock[3] = &block_descriptor_109_0;
  v44 = _Block_copy(aBlock);
  v45 = v39;
  v46 = v41;

  [v64 performWithoutAnimation_];
  _Block_release(v44);
  LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

  if (v44)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = v63;
  result = sub_189063880(v69, v63, type metadata accessor for _Glass);
  v49 = v73;
  if (v73)
  {
    v51 = *v42;
    v50 = v42[1];
    type metadata accessor for GlassGroupLayerView.MaterializeAnimation(0);
    v52 = swift_allocObject();
    *(v52 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter) = 0;
    swift_unknownObjectWeakInit();
    *(v52 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_view) = v46;
    sub_188B6549C(v48, v52 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass, type metadata accessor for _Glass);
    *(v52 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView) = v49;
    swift_unknownObjectWeakAssign();
    v53 = (v52 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_viewTagMapping);
    *v53 = v51;
    v53[1] = v50;
    v54 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
    swift_beginAccess();
    v55 = *&v45[v54];
    if ((v55 & 0xC000000000000001) == 0)
    {
      v58 = v46;
      v59 = v49;

      goto LABEL_12;
    }

    if (v55 >= 0)
    {
      v55 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    v56 = v46;
    v57 = v49;

    result = sub_18A4A7F68();
    if (!__OFADD__(result, 1))
    {
      *&v45[v54] = sub_18907B990(v55, result + 1);
LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *&v45[v54];
      sub_188E9DBCC(v52, v46, isUniquelyReferenced_nonNull_native);
      *&v45[v54] = v71;
      swift_endAccess();
      sub_1890639A8(v70, type metadata accessor for _Glass);
      v61 = v73;

      return v52;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_18906235C(void *a1, uint64_t a2, void *a3, uint64_t *a4, id *a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA934260);
  v12 = (type metadata accessor for GlassPair(0) - 8);
  v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18A64BFB0;
  v15 = v14 + v13;
  sub_189063880(a2, v15, type metadata accessor for _Glass);
  *(v15 + v12[7]) = a3;
  v16 = *a4;
  v17 = a4[1];
  v18 = a3;

  sub_18905EA80(v29, v14, v16, v17, 1);
  v20 = v19;

  swift_setDeallocating();
  sub_1890639A8(v15, type metadata accessor for GlassPair);
  swift_deallocClassInstance();

  v29[0] = 0xD000000000000019;
  v29[1] = 0x800000018A6A2020;
  v28 = MEMORY[0x1E69E7CC8];
  v21 = sub_18900CCB0(&v28, 0);

  v22 = *a5;
  *a5 = v21;
  v23 = v21;

  v24 = type metadata accessor for _Glass(0);
  sub_1890617B4(v23, *(a6 + *(v24 + 48)));

  sub_188B66CB0(v20);
  if (!*a5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = [*a5 layer];
  [v25 setZPosition_];

  if (!*a5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [*a5 _addTrackedElementFor_with_];
  if (!*a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v26 = *a5;
  [a1 bounds];
  [v26 setFrame_];

  if (!*a5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  [*a5 setAutoresizingMask_];
  if (!*a5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v27 = *a5;
  sub_188B667B4(v27);

  if (!*a5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [a1 addSubview_];
  if (*a5)
  {
    [*a5 layoutIfNeeded];
    sub_188B6D288(v29);
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_189062688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(a2 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter) = v4;
    if (!v4)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_18906271C(a2);
      }
    }
  }
}

uint64_t sub_18906271C(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glassView) removeFromSuperview];
  v4 = *(a1 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_view);
  swift_beginAccess();
  v5 = v4;
  sub_1891E95FC(v5);
  swift_endAccess();

  v6 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views;
  result = swift_beginAccess();
  if (!*(*&v2[v6] + 16))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;
      v9 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
      swift_beginAccess();
      v10 = *(v8 + v9);

      v11 = sub_188BBA908(v2, v10);
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        swift_beginAccess();
        v14 = sub_188B747B4(v11);
        swift_endAccess();
      }

      [v2 removeFromSuperview];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_189062894(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_views] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView____lazy_storage___containerRegistry] = 0;
  v4 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_smoothnessOverride];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_state];
  sub_18A4A2DF8();
  v6 = &v5[*(type metadata accessor for GlassState(0) + 20)];
  *v6 = 0;
  v6[8] = 1;
  v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_addBackdropCaptureGroup] = 1;
  v7 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_captureGroupName];
  *v7 = 0;
  v7[1] = 0;
  v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_usesForeground] = 0;
  v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_applySmoothnessViaGaussianRadius] = 0;
  *&v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView] = 0;
  v8 = &v1[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_viewTagMapping];
  v9 = sub_188B66180(v3);
  *v8 = 2;
  v8[1] = v9;
  v10 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
  *&v1[v10] = sub_188E8F624(v3);
  v13.receiver = v1;
  v13.super_class = type metadata accessor for GlassGroupLayerView(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);

  if (v11)
  {
  }

  return v11;
}

id sub_189062A38(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_189062AA0()
{
  result = type metadata accessor for _Glass(319);
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

uint64_t sub_189062BDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = sub_18A4A5318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = sub_18A4A5828();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18A4A5788();
  type metadata accessor for UICorePlatformColorDefinition();
  _s5UIKit29UICorePlatformColorDefinitionC6system7SwiftUI0c6SystemE0VvgZ_0();
  sub_18A4A5778();
  (*(v11 + 8))(v13, v10);
  v14 = [a1 traitCollection];
  sub_188B0C0A4(v14);

  v15 = [a1 window];
  if (v15)
  {

    v16 = [a1 _undimmedTintColor];
    if (v16)
    {
      v17 = v16;
      sub_18A4A5E38();
      sub_18A4A4EE8();
    }
  }

  sub_18A4A5DB8();
  sub_18A4A5228();
  (*(v4 + 16))(v6, v9, v3);
  sub_18A4A6B58();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_189062EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v3 = *(type metadata accessor for GlassPair(0) - 8);
  v4 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v5 = *(v3 + 72);
  sub_188A34624(0, &qword_1ED490230);
  v6 = 0;
  while ((sub_18A4A7C88() & 1) == 0)
  {
    ++v6;
    v4 += v5;
    if (v1 == v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_189062FCC(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for GlassPair(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v32 - v13;
  v15 = *a1;
  result = sub_189062EB4(*a1);
  if (!v2)
  {
    v32[1] = 0;
    if (v17)
    {
      return *(v15 + 16);
    }

    v37 = v14;
    v38 = v5;
    v34 = v8;
    v35 = v11;
    v33 = a1;
    v39 = a2;
    v41 = result;
    v18 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v20 = (v15 + 16);
      v19 = *(v15 + 16);
      if (v18 == v19)
      {
        return v41;
      }

      v36 = v6;
      while (v18 < v19)
      {
        v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v22 = v15;
        v23 = v15 + v21;
        v24 = *(v6 + 72);
        v40 = v24 * v18;
        v25 = v37;
        sub_189063880(v23 + v24 * v18, v37, type metadata accessor for GlassPair);
        sub_188A34624(0, &qword_1ED490230);
        v26 = sub_18A4A7C88();
        result = sub_1890639A8(v25, type metadata accessor for GlassPair);
        if (v26)
        {
          v6 = v36;
          v15 = v22;
        }

        else
        {
          v27 = v41;
          if (v18 == v41)
          {
            v6 = v36;
            v15 = v22;
          }

          else
          {
            if ((v41 & 0x8000000000000000) != 0)
            {
              goto LABEL_24;
            }

            v28 = *v20;
            if (v41 >= *v20)
            {
              goto LABEL_25;
            }

            v29 = v24 * v41;
            result = sub_189063880(v23 + v24 * v41, v35, type metadata accessor for GlassPair);
            if (v18 >= v28)
            {
              goto LABEL_26;
            }

            v30 = v40;
            v31 = v34;
            sub_189063880(v23 + v40, v34, type metadata accessor for GlassPair);
            v15 = v22;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_189212AD4(v22);
            }

            v6 = v36;
            result = sub_189063DF0(v31, v15 + v21 + v29, type metadata accessor for GlassPair);
            if (v18 >= *(v15 + 16))
            {
              goto LABEL_27;
            }

            result = sub_189063DF0(v35, v15 + v21 + v30, type metadata accessor for GlassPair);
            *v33 = v15;
            v27 = v41;
          }

          v41 = v27 + 1;
        }

        ++v18;
        v20 = (v15 + 16);
        v19 = *(v15 + 16);
        if (v18 == v19)
        {
          return v41;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18906330C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v52) = a3;
  v7 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _Glass(0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v47 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v47 - v16;
  v18 = sub_188B66180(MEMORY[0x1E69E7CC0]);
  v54 = 2;
  v55 = v18;
  if (!*(v18 + 16) || (sub_188A403F4(a1), (v19 & 1) == 0))
  {
    v54 = 4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v18;
    sub_188B662F4(2, a1, isUniquelyReferenced_nonNull_native);
    v18 = aBlock[0];
    v55 = aBlock[0];
  }

  v21 = OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_materializeAnimations;
  swift_beginAccess();
  v22 = *&v4[v21];

  v23 = sub_18903A9E8(a1, v22);

  if (!v23)
  {
    result = sub_189061C84(v52 & 1, a2, v4, a1, &v54);
    v23 = result;
  }

  v25 = OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter;
  v26 = *(v23 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v23 + OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_animationCounter) = v28;
    if (!v28)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v30 = Strong;
        sub_18906271C(v23);
      }
    }

    if (v52)
    {
      v49 = type metadata accessor for _Glass;
      v31 = v51;
      sub_189063880(a2, v51, type metadata accessor for _Glass);
      v52 = v18;
      v32 = *(v10 + 24);
      sub_189063880(v31 + v32, v9, type metadata accessor for _Glass._GlassVariant);
      v33 = sub_18A4A2F58();
      v50 = v25;
      v34 = v33;
      v47[1] = v47;
      v48 = a2;
      v35 = v9;
      v36 = v17;
      v37 = *(v33 - 8);
      MEMORY[0x1EEE9AC00](v33);
      v39 = v14;
      v40 = v47 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_18A4A2F48();
      v41 = v40;
      v14 = v39;
      (*(v37 + 40))(v35, v41, v34);
      v17 = v36;
      sub_189063DF0(v35, v31 + v32, type metadata accessor for _Glass._GlassVariant);
      v42 = v49;
      v43 = *(v48 + *(v10 + 48));
      sub_189063880(v31, v39, v49);
      *(v39 + *(v10 + 48)) = v43;
      sub_1890639A8(v31, v42);
    }

    else
    {
      sub_189063880(a2, v14, type metadata accessor for _Glass);
    }

    sub_188B6549C(v14, v17, type metadata accessor for _Glass);
    v44 = OBJC_IVAR____TtCC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView20MaterializeAnimation_glass;
    swift_beginAccess();
    sub_189063E58(v17, v23 + v44, type metadata accessor for _Glass);
    swift_endAccess();
    sub_18906192C();
    v45 = objc_opt_self();
    aBlock[4] = sub_1890638E8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_188ABD010;
    aBlock[3] = &block_descriptor_87;
    v46 = _Block_copy(aBlock);

    [v45 _addCompletion_];
    _Block_release(v46);

    sub_1890639A8(v17, type metadata accessor for _Glass);
  }

  return result;
}

uint64_t sub_189063880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1890638F0()
{
  v1 = *(type metadata accessor for _Glass(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = *(v0 + v6);

  sub_18906235C(v7, v0 + v3, v8, v9, v10, v0 + ((v2 + v6 + 8) & ~v2));
}

uint64_t sub_1890639A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_189063A18(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_188E1ADFC();
  v5 = v4;

  v6 = OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers;
  result = swift_beginAccess();
  v8 = *&a1[v6];
  if (v8 >> 62)
  {
    result = sub_18A4A7F68();
    v9 = result;
    if (!result)
    {
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
    }
  }

  if (v9 >= 1)
  {
    v10 = v8 & 0xC000000000000001;

    v11 = 0;
    v12 = &unk_1ED48C000;
    v13 = &unk_1ED48C000;
    v28 = v3;
    while (1)
    {
      if (v10)
      {
        v14 = sub_188E49160(v11, v8);
      }

      else
      {
        v14 = *(v8 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = &v14[v12[466]];
      v17 = *v16;
      v18 = v16[1];
      *v16 = v3;
      v16[1] = v5;
      if (v14[v13[468]] != 1)
      {
        goto LABEL_5;
      }

      if (v5)
      {
        if (v18)
        {
          v19 = v3 == v17 && v5 == v18;
          if (v19 || (sub_18A4A86C8() & 1) != 0)
          {

            goto LABEL_7;
          }
        }
      }

      else if (!v18)
      {

        goto LABEL_7;
      }

      v20 = *&v15[OBJC_IVAR____TtC5UIKitP33_0A8B4DB961B57EBA158E8356A5AC0B1F19GlassGroupLayerView_glassView];
      if (v20)
      {
        v21 = v8;
        v22 = v9;
        v23 = v10;
        v24 = v13;
        v25 = v12;
        v26 = v20;

        v27 = v26;
        sub_188B667B4(v27);

        v12 = v25;
        v13 = v24;
        v10 = v23;
        v9 = v22;
        v8 = v21;
        v3 = v28;
      }

      else
      {
LABEL_5:
      }

LABEL_7:
      if (v9 == ++v11)
      {
      }
    }
  }

  __break(1u);
  return result;
}

void sub_189063C30()
{
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_groupLayers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_addBackdropCaptureGroup) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_usesForeground) = 0;
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_pendingBackdropContext) = 0;
  v1 = v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_quantizedLuma;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_smoothness;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC5UIKit15_GlassGroupView_applySmoothnessViaGaussianRadius) = 0;
  sub_18A4A8398();
  __break(1u);
}

id sub_189063D60()
{
  v1 = *(type metadata accessor for _Glass(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18905E5B0(v3, v4, v0 + v2, v5);
}

uint64_t sub_189063DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_189063E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

id sub_189063ECC()
{
  result = **(v0 + 16);
  if (result)
  {
    return [result layoutIfNeeded];
  }

  __break(1u);
  return result;
}

uint64_t sub_189063EF0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_189063F94(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  LOBYTE(v16) = 1;
  (*(a3 + 8))(&v18, &v15, a2, a3);
  sub_189065604(&v15);
  v15 = v18;
  v17 = v20;
  v16 = v19;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  swift_unknownObjectWeakInit();
  LOBYTE(v10) = 1;
  (*(v7 + 8))(&v12, &v9, v6, v7);
  sub_189065604(&v9);
  v9 = v12;
  v11 = v14;
  v10 = v13;
  LOBYTE(v6) = sub_189065280(&v15, &v9);
  sub_1890655E0(v9, v10 | (v11 << 16));
  sub_1890655E0(v15, v16 | (v17 << 16));
  return v6 & 1;
}

id _UIResolvedHoverEffect._resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 10);
  v4 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1890640F4(v2, v4 | (v3 << 16));
}

id sub_1890640F4(id result, unsigned int a2)
{
  if (((a2 >> 20) & 3) != 3)
  {
    return result;
  }

  return result;
}

id _UIResolvedHoverEffect._makeBridgedEffect()()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  v4 = type metadata accessor for ___UIResolvedHoverEffect();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value];
  *v6 = v1;
  v6[10] = v2;
  *(v6 + 4) = v3;
  sub_1890640F4(v1, v3 | (v2 << 16));
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1890641C8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 10);
  v4 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1890640F4(v2, v4 | (v3 << 16));
}

id sub_1890641E8()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  v3 = *(v0 + 8);
  v4 = type metadata accessor for ___UIResolvedHoverEffect();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value];
  *v6 = v1;
  v6[10] = v2;
  *(v6 + 4) = v3;
  sub_1890640F4(v1, v3 | (v2 << 16));
  v8.receiver = v5;
  v8.super_class = v4;
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_1890642A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ___UIResolvedHoverEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1890642F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value);
  v3 = *(v1 + OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value + 10);
  v4 = *(v1 + OBJC_IVAR____TtC5UIKit24___UIResolvedHoverEffect_value + 8);
  *a1 = v2;
  *(a1 + 10) = v3;
  *(a1 + 8) = v4;
  return sub_1890640F4(v2, v4 | (v3 << 16));
}

id UIHoverHighlightEffect._resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
  return v2;
}

char *UIHoverHighlightEffect._makeBridgedEffect()()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverHighlightEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA9305F0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA994EA8;

    return v7;
  }
}

id sub_1890643F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 0;
  *(a1 + 8) = 0;
  return v2;
}

char *sub_189064404()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverHighlightEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverHighlightEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA9305F0 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA994EA8;

    return v7;
  }
}

UIKit::UIHoverLiftEffect __swiftcall UIHoverLiftEffect.init(tint:)(UIColor tint)
{
  *v1 = tint.super.isa;
  *&result.tintColor.value.super.isa = *&tint.super.isa;
  result.tintColor.value._cachedStyleString = tint._cachedStyleString;
  return result;
}

id UIHoverLiftEffect._resolve(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 16;
  *(a1 + 8) = 0;
  return v2;
}

char *UIHoverLiftEffect._makeBridgedEffect()()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverLiftEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA931E98 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA995180;

    return v7;
  }
}

id sub_189064594@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  *(a1 + 10) = 16;
  *(a1 + 8) = 0;
  return v2;
}

char *sub_1890645AC()
{
  v1 = *v0;
  if (v1)
  {
    v2 = objc_allocWithZone(UIHoverLiftEffect);
    v3 = v1;
    v4 = [v2 init];
    v5 = *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor];
    *&v4[OBJC_IVAR___UIHoverLiftEffect_tintColor] = v1;

    return v4;
  }

  else
  {
    if (qword_1EA931E98 != -1)
    {
      swift_once();
    }

    v7 = qword_1EA995180;

    return v7;
  }
}

void UIHoverAutomaticEffect._resolve(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ([Strong _preferredHoverEffect])
      {
        ObjectType = swift_getObjectType();
        v7 = swift_conformsToProtocol2();
        if (v7)
        {
          v8 = *(v7 + 24);
          v9 = v7;
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v15 = AssociatedConformanceWitness;
          __swift_allocate_boxed_opaque_existential_0(&v13);
          swift_unknownObjectRetain();
          v8(ObjectType, v9);
          swift_unknownObjectRelease();
          sub_188A5EBAC(&v13, v16);
          v11 = v17;
          v12 = v18;
          __swift_project_boxed_opaque_existential_0(v16, v17);
          (*(AssociatedConformanceWitness + 8))(a1, v11, v12);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0Tm(v16);
          return;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  *a2 = 1;
  *(a2 + 10) = 48;
  *(a2 + 8) = 0;
}

id UIHoverAutomaticEffect._makeBridgedEffect()()
{
  if (qword_1EA931E88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA995178;

  return v1;
}

id sub_189064890()
{
  if (qword_1EA931E88 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA995178;

  return v1;
}

void UIPointerEffect._resolve(in:)(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10) << 16;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 16 * ((v2 & 0xC00000) == 0x800000);
}

id UIPointerEffect._makeBridgedEffect()()
{
  v1 = *v0;
  v2 = *(v0 + 10);
  if ((v2 >> 6) <= 1u || v2 >> 6 == 2)
  {
    v3 = [objc_opt_self() effectWithPreview_];

    return v3;
  }

  else
  {
    v5 = *(v0 + 4) | (*(v0 + 10) << 16);
    v6 = [objc_opt_self() effectWithPreview_];
    [v6 setPreferredTintMode_];
    [v6 setPrefersShadow_];
    [v6 setPrefersScaledContent_];
    return v6;
  }
}

void sub_189064A54(uint64_t a1@<X8>)
{
  v2 = *(v1 + 10) << 16;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 16 * ((v2 & 0xC00000) == 0x800000);
}

void UIHoverEmptyEffect._resolve(in:)(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 10) = 48;
  *(a1 + 8) = 0;
}

id UIHoverEmptyEffect._makeBridgedEffect()()
{
  v0 = objc_allocWithZone(UIHoverEmptyEffect);

  return [v0 init];
}

void sub_189064ACC(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 10) = 48;
  *(a1 + 8) = 0;
}

id sub_189064AE0()
{
  v0 = objc_allocWithZone(UIHoverEmptyEffect);

  return [v0 init];
}

id sub_189064B54()
{
  result = [objc_allocWithZone(UIHoverAutomaticEffect) init];
  qword_1EA995178 = result;
  return result;
}

id sub_189064BC4()
{
  result = [objc_allocWithZone(UIHoverHighlightEffect) init];
  qword_1EA994EA8 = result;
  return result;
}

id sub_189064C54(char *a1, uint64_t a2, void *a3, objc_class **a4)
{
  *&a1[*a3] = 0;
  v4 = *a4;
  v6.receiver = a1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_189064C90()
{
  result = [objc_allocWithZone(UIHoverLiftEffect) init];
  qword_1EA995180 = result;
  return result;
}

char *sub_189064D18(uint64_t a1, uint64_t a2, void *a3, Class *a4, void *a5)
{
  v7 = objc_allocWithZone(*a4);
  v8 = a3;
  v9 = [v7 init];
  v10 = *&v9[*a5];
  *&v9[*a5] = v8;

  return v9;
}

id sub_189064DD8()
{
  result = [objc_allocWithZone(UIHoverEmptyEffect) init];
  qword_1EA995188 = result;
  return result;
}

id sub_189064E50@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___UIHoverHighlightEffect_tintColor);
  *a1 = v2;
  return v2;
}

uint64_t getEnumTagSinglePayload for ToolbarButtonBarElement.Spacer(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarButtonBarElement.Spacer(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5UIKit22_UIResolvedHoverEffectV5ValueO(uint64_t a1)
{
  v1 = (*(a1 + 10) >> 4) & 3;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_18906504C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_189065094(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1890650F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFFD && *(a1 + 11))
  {
    return (*a1 + 262141);
  }

  v3 = (((*(a1 + 10) << 12) >> 16) & 3 | (4 * ((*(a1 + 8) >> 3) & 0x1FC0 | (*(a1 + 8) >> 2) | (((*(a1 + 10) >> 1) & 0x1F) << 13)))) ^ 0x3FFFF;
  if (v3 >= 0x3FFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_189065168(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFC)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 262141;
    if (a3 >= 0x3FFFD)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFD)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) - (a2 << 16);
      *result = 0;
      *(result + 10) = (v3 >> 12) & 0x3E;
      *(result + 8) = (8 * v3) & 0xFE00 | (4 * (v3 & 0x3F));
    }
  }

  return result;
}

uint64_t sub_1890651EC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = *(result + 2);
  *result = v2;
  *(result + 2) = ((v2 | (v3 << 16)) & 0xFFCFFFFF) >> 16;
  return result;
}

uint64_t sub_18906520C(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 8);
    result += 8;
    v3 = (v2 | (*(result + 2) << 16)) & 0xC10103 | (a2 << 20);
    *result = v2 & 0x103;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 3;
    *(result + 10) = 48;
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_189065280(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 10);
  v4 = *(a1 + 8) | (v3 << 16);
  v5 = *a2;
  v6 = *(a2 + 8) | (*(a2 + 10) << 16);
  v7 = (v3 >> 4) & 3;
  if (v7 <= 1)
  {
    if (v7)
    {
      if ((v6 & 0x300000) == 0x100000)
      {
        if (v2)
        {
          if (!v5)
          {
            goto LABEL_6;
          }

LABEL_14:
          sub_188A34624(0, qword_1ED4913C0);
          sub_1890640F4(v5, v6);
          sub_1890640F4(v2, v4);
          sub_1890640F4(v5, v6);
          sub_1890640F4(v2, v4);
          v13 = sub_18A4A7C88();
          sub_1890655E0(v2, v4);
          sub_1890655E0(v5, v6);
          sub_1890655E0(v2, v4);
          sub_1890655E0(v5, v6);
          if ((v13 & 1) == 0)
          {
LABEL_58:
            v10 = 0;
            return v10 & 1;
          }

LABEL_41:
          v10 = 1;
          return v10 & 1;
        }

LABEL_40:
        v20 = v5;
        sub_1890640F4(v5, v6);
        sub_1890640F4(0, v4);
        sub_1890655E0(0, v4);
        sub_1890655E0(v5, v6);
        if (v5)
        {
LABEL_57:
          sub_1890655E0(v5, v6);
          goto LABEL_58;
        }

        goto LABEL_41;
      }
    }

    else if ((v6 & 0x300000) == 0)
    {
      if (v2)
      {
        if (!v5)
        {
LABEL_6:
          sub_1890640F4(0, *(a2 + 8) | (*(a2 + 10) << 16));
          sub_1890640F4(0, v6);
          v8 = v2;
          v9 = v4;
LABEL_56:
          sub_1890640F4(v8, v9);
          sub_1890655E0(v2, v4);
          goto LABEL_57;
        }

        goto LABEL_14;
      }

      goto LABEL_40;
    }

    goto LABEL_26;
  }

  if (v7 == 2)
  {
    if ((v6 & 0x300000) != 0x200000)
    {
LABEL_26:
      v17 = v2;
LABEL_55:
      v8 = v5;
      v9 = v6;
      goto LABEL_56;
    }

    v27 = *a1;
    v28 = v4;
    v29 = BYTE2(v4) & 0xCF;
    v24 = v5;
    v26 = (v6 & 0xFFCFFFFF) >> 16;
    v25 = v6;
    sub_1890640F4(v5, v6);
    sub_1890640F4(v2, v4);
    sub_1890640F4(v5, v6);
    sub_1890640F4(v2, v4);
    v10 = _s5UIKit15UIPointerEffectO2eeoiySbAC_ACtFZ_0(&v27, &v24);
    sub_1890655E0(v2, v4);
    sub_1890655E0(v5, v6);
    sub_1890655E0(v5, v6);
    v11 = v2;
    v12 = v4;
    goto LABEL_10;
  }

  v14 = v6 & 0x300000;
  if (__PAIR128__(3145728, 1) >= __PAIR128__(v4 << 40 >> 40, v2))
  {
    if (v2 | v4 & 0xFFFFFF ^ 0x300000)
    {
      v21 = v14 == 3145728 && v5 == 1;
      if (!v21 || (v6 & 0xFFFFFF) != 0x300000)
      {
        goto LABEL_55;
      }

      sub_1890655E0(*a1, v4);
      v10 = 1;
      v11 = 1;
      v12 = 3145728;
LABEL_10:
      sub_1890655E0(v11, v12);
      return v10 & 1;
    }

    v15 = v14 == 3145728 && v5 == 0;
    if (!v15 || (v6 & 0xFFFFFF) != 0x300000)
    {
      goto LABEL_55;
    }

    sub_1890655E0(*a1, v4);
    v16 = 0;
LABEL_39:
    sub_1890655E0(v16, 0x300000u);
    v10 = 1;
    return v10 & 1;
  }

  if ((v4 & 0xFFFFFF) == 0x300000 && v2 == 2)
  {
    v19 = v14 == 3145728 && v5 == 2;
    if (!v19 || (v6 & 0xFFFFFF) != 0x300000)
    {
      goto LABEL_55;
    }

    sub_1890655E0(*a1, v4);
    v16 = 2;
    goto LABEL_39;
  }

  v22 = v14 == 3145728 && v5 == 3;
  if (!v22 || (v6 & 0xFFFFFF) != 0x300000)
  {
    goto LABEL_55;
  }

  result = sub_18A4A8758();
  __break(1u);
  return result;
}