uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SUIAShockwaveRadialMaskSettings.name.getter()
{
  v1 = (v0 + OBJC_IVAR___SUIAShockwaveRadialMaskSettings_name);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t SUIAShockwaveRadialMaskSettings.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SUIAShockwaveRadialMaskSettings_name);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void sub_26C5E39A8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_26C614E48();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id sub_26C5E3A6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  swift_beginAccess();
  sub_26C5CC548(0, a4);

  v5 = sub_26C614EB8();

  return v5;
}

uint64_t sub_26C5E3B70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  sub_26C5CC548(0, a4);
  v8 = sub_26C614EC8();
  v9 = *a6;
  swift_beginAccess();
  *(a1 + v9) = v8;
}

uint64_t sub_26C5E3BF8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_26C5E3C4C(id *a1@<X0>, SEL *a2@<X3>, unint64_t *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = [*a1 *a2];
  sub_26C5CC548(0, a3);
  v7 = sub_26C614EC8();

  *a4 = v7;
}

void sub_26C5E3CBC(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, SEL *a7)
{
  v8 = *a2;
  sub_26C5CC548(0, a5);
  v9 = sub_26C614EB8();
  [v8 *a7];
}

id SUIAShockwaveRadialMaskSettings.gradientLayerSize.getter()
{
  v1 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_gradientLayerSize;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SUIAShockwaveRadialMaskSettings.gradientLayerSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_gradientLayerSize;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SUIAShockwaveRadialMaskSettings.majorDiameter.getter()
{
  v1 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_majorDiameter;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwaveRadialMaskSettings.majorDiameter.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_majorDiameter;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwaveRadialMaskSettings.ringWidth.getter()
{
  v1 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_ringWidth;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwaveRadialMaskSettings.ringWidth.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_ringWidth;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAShockwaveRadialMaskSettings.blurRadius.getter()
{
  v1 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_blurRadius;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwaveRadialMaskSettings.blurRadius.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_blurRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SUIAShockwaveRadialMaskSettings.sampleCount.getter()
{
  v1 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_sampleCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAShockwaveRadialMaskSettings.sampleCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___SUIAShockwaveRadialMaskSettings_sampleCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t static SUIAShockwaveRadialMaskSettings.ignoresKey(_:)(uint64_t a1, void *a2)
{
  v2 = a2;
  v8[0] = a1;
  v8[1] = a2;
  v6[2] = v8;
  v3 = sub_26C5E68FC(sub_26C5E6A20, v6, &unk_287D1BE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5088);
  swift_arrayDestroy();
  if (v3)
  {
    return 1;
  }

  if (v2)
  {
    v2 = sub_26C614E38();
  }

  v7.receiver = swift_getObjCClassFromMetadata();
  v7.super_class = &OBJC_METACLASS___SUIAShockwaveRadialMaskSettings;
  v5 = objc_msgSendSuper2(&v7, sel_ignoresKey_, v2);

  return v5;
}

double SUIAShockwaveRadialMaskSettings.innerRadius.getter()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 colors];
  sub_26C5CC548(0, &qword_28125E430);
  v2 = sub_26C614EC8();

  if (v2 >> 62)
  {
LABEL_21:
    v3 = sub_26C6150C8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6A4580](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v17[0] = 0x7FEFFFFFFFFFFFFFLL;
    [v5 getRed:0 green:0 blue:0 alpha:v17];
    IsOne = BSFloatIsOne();

    if (!IsOne)
    {
      goto LABEL_14;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_20;
    }
  }

  v4 = 0;
LABEL_14:

  v9 = v4 - (v4 > 0);
  v10 = [v0 locations];
  sub_26C5CC548(0, &unk_28125E420);
  v11 = sub_26C614EC8();

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26D6A4580](v9, v11);
    goto LABEL_18;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_24:
    __break(1u);
  }

  if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v12 = *(v11 + 8 * v9 + 32);
LABEL_18:
  v13 = v12;

  [v13 floatValue];
  v15 = v14;

  return v15;
}

double SUIAShockwaveRadialMaskSettings.outerRadius.getter()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 colors];
  sub_26C5CC548(0, &qword_28125E430);
  v3 = sub_26C614EC8();

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    if (__OFSUB__(v4--, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D6A4580](v4, v3);
      goto LABEL_9;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      v4 = sub_26C6150C8();
    }

    else
    {
      v6 = *(v3 + 32 + 8 * v4);
LABEL_9:
      v1 = v6;
      v18[0] = 0x7FEFFFFFFFFFFFFFLL;
      [v6 getRed:0 green:0 blue:0 alpha:v18];
      IsZero = BSFloatIsZero();

      if ((IsZero & 1) == 0)
      {
        break;
      }
    }
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = v0;
    v8 = [v0 colors];
    v9 = sub_26C614EC8();

    if (!(v9 >> 62))
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_15;
    }
  }

  v10 = sub_26C6150C8();
LABEL_15:

  if ((v4 + 1) < v10)
  {
    ++v4;
  }

  v11 = [v1 locations];
  sub_26C5CC548(0, &unk_28125E420);
  v12 = sub_26C614EC8();

  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x26D6A4580](v4, v12);
    goto LABEL_21;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  if (v4 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  v13 = *(v12 + 8 * v4 + 32);
LABEL_21:
  v14 = v13;

  [v14 floatValue];
  v16 = v15;

  return v16;
}

double SUIAShockwaveRadialMaskSettings.maximumExtentOfZeroOpacity.getter()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 colors];
  sub_26C5CC548(0, &qword_28125E430);
  v2 = sub_26C614EC8();

  if (v2 >> 62)
  {
LABEL_23:
    v3 = sub_26C6150C8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {

      v9 = 0;
      goto LABEL_17;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D6A4580](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v17[0] = 0x7FEFFFFFFFFFFFFFLL;
    [v5 getRed:0 green:0 blue:0 alpha:v17];
    IsZero = BSFloatIsZero();

    if ((IsZero & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_22;
    }
  }

  if (v4 <= 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4 - 1;
  }

LABEL_17:
  v10 = [v0 locations];
  sub_26C5CC548(0, &unk_28125E420);
  v11 = sub_26C614EC8();

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x26D6A4580](v9, v11);
  }

  else
  {
    if (v9 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v12 = *(v11 + 8 * v9 + 32);
  }

  v13 = v12;

  [v13 floatValue];
  v15 = v14;

  return v15;
}

double SUIAShockwaveRadialMaskSettings.radiusOfMaximumOpacity.getter()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 colors];
  sub_26C5CC548(0, &qword_28125E430);
  v2 = sub_26C614EC8();

  if (v2 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  do
  {
    while (1)
    {
      if (!v3)
      {

        v8 = v0;
        v2 = [v0 colors];
        v9 = sub_26C614EC8();

        if (v9 >> 62)
        {
          goto LABEL_32;
        }

        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_14;
      }

      if (__OFSUB__(v3--, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v3 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      if (v3 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v2 + 32 + 8 * v3);
        goto LABEL_9;
      }

LABEL_26:
      __break(1u);
LABEL_27:
      v3 = sub_26C6150C8();
    }

    v5 = MEMORY[0x26D6A4580](v3, v2);
LABEL_9:
    v6 = v5;
    v19[0] = 0x7FEFFFFFFFFFFFFFLL;
    [v5 getRed:0 green:0 blue:0 alpha:v19];
    IsZero = BSFloatIsZero();
  }

  while ((IsZero & 1) != 0);
LABEL_17:

  v8 = v0;
  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v12 = [v8 locations];
    sub_26C5CC548(0, &unk_28125E420);
    v2 = sub_26C614EC8();

    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_29;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v2 + 8 * v11 + 32);
      goto LABEL_23;
    }

    __break(1u);
LABEL_32:
    v10 = sub_26C6150C8();
LABEL_14:

    v3 = v10 - 1;
    if (__OFSUB__(v10, 1))
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_29:
  v13 = MEMORY[0x26D6A4580](v11, v2);
LABEL_23:
  v14 = v13;

  [v14 floatValue];
  v16 = v15;

  [v8 maximumExtentOfZeroOpacity];
  return (v17 + v16) * 0.5;
}

Swift::Bool __swiftcall SUIAShockwaveRadialMaskSettings.validateComputedValuesCorrespondToSourceValues()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  v2 = objc_opt_self();
  [v0 majorDiameter];
  v4 = v3;
  [v0 ringWidth];
  v6 = v5;
  [v0 blurRadius];
  v8 = v7;
  v9 = [v0 sampleCount];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v0;
    *(v11 + 24) = v1;
    v16[4] = sub_26C5E6A40;
    v16[5] = v11;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_26C5E57CC;
    v16[3] = &block_descriptor_0;
    v12 = _Block_copy(v16);
    v13 = v0;

    [v2 calculateDescriptionForGradientMajorDiameter:v10 ringWidth:v12 blurRadius:v4 numberOfSamples:v6 completion:v8];
    _Block_release(v12);
    swift_beginAccess();
    v14 = *(v1 + 16);

    LOBYTE(v9) = v14;
  }

  return v9;
}

uint64_t sub_26C5E51B8(unint64_t a1, unint64_t a2, int a3, id a4, char **a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = [a4 locations];
  sub_26C5CC548(0, &unk_28125E420);
  v8 = sub_26C614EC8();

  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_23;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a1 >> 62))
  {
    if (v10 != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_5:
    v45 = a5;
    v46 = v9;
    v43 = a2;
    v9 = swift_beginAccess();
    if (!v10)
    {
LABEL_19:

      a5 = v45;
      a2 = v43;
      goto LABEL_27;
    }

    a2 = a1 & 0xC000000000000001;
    v11 = 4;
    a5 = &selRef_activate;
    while (1)
    {
      v12 = v11 - 4;
      if (a2)
      {
        v9 = MEMORY[0x26D6A4580](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * v11);
      }

      v13 = v9;
      v14 = v11 - 3;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v9 = [v9 bs_CGFloatValue];
      if ((v46 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26D6A4580](v11 - 4, v46);
      }

      else
      {
        if (v12 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v15 = *(v46 + 8 * v11);
      }

      v16 = v15;
      [v15 bs_CGFloatValue];

      LOBYTE(v16) = BSFloatApproximatelyEqualToFloat();
      if ((v16 & 1) == 0)
      {
        *(v45 + 16) = 0;
      }

      ++v11;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v17 = v9;
    v10 = sub_26C6150C8();
    v9 = v17;
  }

  v18 = v9;
  if (v10 == sub_26C6150C8())
  {
    v10 = sub_26C6150C8();
    v9 = v18;
    goto LABEL_5;
  }

LABEL_26:

  swift_beginAccess();
  *(a5 + 16) = 0;
LABEL_27:
  if (a2 >> 62)
  {
    v19 = sub_26C6150C8();
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x277D84F90];
  if (!v19)
  {
    v28 = a5;
    v22 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v49 = MEMORY[0x277D84F90];
  sub_26C6135D0(0, v19 & ~(v19 >> 63), 0);
  if (v19 < 0)
  {
    __break(1u);
    goto LABEL_66;
  }

  v21 = 0;
  v22 = v49;
  do
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x26D6A4580](v21, a2);
    }

    else
    {
      v23 = *(a2 + 8 * v21 + 32);
    }

    v24 = v23;
    v48[0] = 0;
    [v23 getRed:0 green:0 blue:0 alpha:{v48, v43}];

    v25 = v48[0];
    v49 = v22;
    v27 = *(v22 + 16);
    v26 = *(v22 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_26C6135D0((v26 > 1), v27 + 1, 1);
      v22 = v49;
    }

    ++v21;
    *(v22 + 16) = v27 + 1;
    *(v22 + 8 * v27 + 32) = v25;
  }

  while (v19 != v21);
  v28 = a5;
  v20 = MEMORY[0x277D84F90];
LABEL_40:
  v29 = [a4 colors];
  sub_26C5CC548(0, &qword_28125E430);
  v30 = sub_26C614EC8();

  if (v30 >> 62)
  {
    v31 = sub_26C6150C8();
    if (!v31)
    {
      goto LABEL_53;
    }

LABEL_42:
    v49 = v20;
    sub_26C6135D0(0, v31 & ~(v31 >> 63), 0);
    if ((v31 & 0x8000000000000000) == 0)
    {
      v32 = 0;
      v33 = v49;
      do
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x26D6A4580](v32, v30);
        }

        else
        {
          v34 = *(v30 + 8 * v32 + 32);
        }

        v35 = v34;
        v48[0] = 0;
        [v34 getRed:0 green:0 blue:0 alpha:v48];

        v36 = v48[0];
        v49 = v33;
        v38 = *(v33 + 16);
        v37 = *(v33 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_26C6135D0((v37 > 1), v38 + 1, 1);
          v33 = v49;
        }

        ++v32;
        *(v33 + 16) = v38 + 1;
        *(v33 + 8 * v38 + 32) = v36;
      }

      while (v31 != v32);

      goto LABEL_54;
    }

LABEL_66:
    __break(1u);
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v31)
  {
    goto LABEL_42;
  }

LABEL_53:

  v33 = MEMORY[0x277D84F90];
LABEL_54:
  v39 = *(v33 + 16);
  if (v39 == *(v22 + 16))
  {
    if (v39)
    {
      swift_beginAccess();
      v40 = 32;
      do
      {
        if ((BSFloatApproximatelyEqualToFloat() & 1) == 0)
        {
          *(v28 + 16) = 0;
        }

        v40 += 8;
        --v39;
      }

      while (v39);
    }
  }

  else
  {

    swift_beginAccess();
    *(v28 + 16) = 0;
  }

  v41 = [a4 gradientLayerSize];
  [v41 width];

  result = BSFloatApproximatelyEqualToFloat();
  if ((result & 1) == 0)
  {
    result = swift_beginAccess();
    *(v28 + 16) = 0;
  }

  return result;
}

void sub_26C5E57CC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *(a1 + 32);
  sub_26C5CC548(0, &unk_28125E420);
  v8 = sub_26C614EC8();
  sub_26C5CC548(0, &qword_28125E430);
  v9 = sub_26C614EC8();

  v10 = a5;
  v7(v8, v9, v10, a2);
}

Swift::String __swiftcall SUIAShockwaveRadialMaskSettings.computeDerivativeValuesAndGenerateSource()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v2 = objc_opt_self();
  [v0 majorDiameter];
  v4 = v3;
  [v0 ringWidth];
  v6 = v5;
  [v0 blurRadius];
  v8 = v7;
  v9 = [v0 sampleCount];
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = v0;
    *(v12 + 24) = v1;
    v18[4] = sub_26C5E6AA0;
    v18[5] = v12;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_26C5E57CC;
    v18[3] = &block_descriptor_12;
    v13 = _Block_copy(v18);
    v14 = v0;

    [v2 calculateDescriptionForGradientMajorDiameter:v11 ringWidth:v13 blurRadius:v4 numberOfSamples:v6 completion:v8];
    _Block_release(v13);
    swift_beginAccess();
    v15 = *(v1 + 16);
    v16 = *(v1 + 24);

    v9 = v15;
    v10 = v16;
  }

  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_26C5E5AC8(unint64_t a1, unint64_t a2, double a3, uint64_t a4, void *a5, uint64_t a6)
{
  v70 = *MEMORY[0x277D85DE8];
  sub_26C5CC548(0, &unk_28125E420);
  v10 = sub_26C614EB8();
  [a5 setLocations_];

  sub_26C5CC548(0, &qword_28125E430);
  v11 = sub_26C614EB8();
  [a5 setColors_];

  v61 = a5;
  v12 = [a5 gradientLayerSize];
  [v12 setSizeValue_];

  if (a1 >> 62)
  {
    v13 = sub_26C6150C8();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  v65 = a2;
  if (v13)
  {
    v68 = MEMORY[0x277D84F90];
    sub_26C6135F0(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
      goto LABEL_28;
    }

    v15 = 0;
    v14 = v68;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x26D6A4580](v15, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      [v16 doubleValue];
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D88);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_26C619B70;
      *(v20 + 56) = MEMORY[0x277D839F8];
      *(v20 + 64) = MEMORY[0x277D83A80];
      *(v20 + 32) = v19;
      v21 = sub_26C614E58();
      v23 = v22;

      v68 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_26C6135F0((v24 > 1), v25 + 1, 1);
        v14 = v68;
      }

      ++v15;
      *(v14 + 16) = v25 + 1;
      v26 = v14 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v23;
    }

    while (v13 != v15);
    a2 = v65;
  }

  if (a2 >> 62)
  {
    v27 = sub_26C6150C8();
  }

  else
  {
    v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (!v27)
  {
    goto LABEL_24;
  }

  v68 = MEMORY[0x277D84F90];
  sub_26C6135F0(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
LABEL_28:
    __break(1u);
  }

  v29 = 0;
  v28 = v68;
  v63 = a2 & 0xC000000000000001;
  do
  {
    if (v63)
    {
      v30 = MEMORY[0x26D6A4580](v29, v65);
    }

    else
    {
      v30 = *(v65 + 8 * v29 + 32);
    }

    v31 = v30;
    v67 = 0;
    [v30 getRed:0 green:0 blue:0 alpha:&v67];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D88);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_26C619B70;
    v33 = v67;
    *(v32 + 56) = MEMORY[0x277D85048];
    *(v32 + 64) = sub_26C5E7468();
    *(v32 + 32) = v33;
    v34 = sub_26C614E58();
    v36 = v35;

    v68 = v28;
    v38 = *(v28 + 16);
    v37 = *(v28 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_26C6135F0((v37 > 1), v38 + 1, 1);
      v28 = v68;
    }

    ++v29;
    *(v28 + 16) = v38 + 1;
    v39 = v28 + 16 * v38;
    *(v39 + 32) = v34;
    *(v39 + 40) = v36;
  }

  while (v27 != v29);
LABEL_24:
  v68 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D08);
  sub_26C5D3084();
  v64 = sub_26C614E18();
  v41 = v40;

  v68 = v28;
  v66 = sub_26C614E18();
  v43 = v42;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D88);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_26C619B60;
  v45 = MEMORY[0x277D85048];
  *(v44 + 56) = MEMORY[0x277D85048];
  v46 = sub_26C5E7468();
  *(v44 + 64) = v46;
  *(v44 + 32) = a3;
  *(v44 + 96) = v45;
  *(v44 + 104) = v46;
  *(v44 + 72) = a3;
  v47 = sub_26C614E58();
  v49 = v48;
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_26C615038();
  MEMORY[0x26D6A43B0](0xD00000000000001ALL, 0x800000026C61F820);
  v50 = [v61 name];
  v51 = sub_26C614E48();
  v53 = v52;

  MEMORY[0x26D6A43B0](v51, v53);

  MEMORY[0x26D6A43B0](0xD000000000000012, 0x800000026C61F840);
  [v61 majorDiameter];
  v54 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v54);

  MEMORY[0x26D6A43B0](0x6957676E6972202CLL, 0xED0000203A687464);
  [v61 ringWidth];
  v55 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v55);

  MEMORY[0x26D6A43B0](0x615272756C62202CLL, 0xEE00203A73756964);
  [v61 blurRadius];
  v56 = sub_26C614F18();
  MEMORY[0x26D6A43B0](v56);

  MEMORY[0x26D6A43B0](0x656C706D6173202CLL, 0xEF203A746E756F43);
  v67 = [v61 sampleCount];
  v57 = sub_26C615108();
  MEMORY[0x26D6A43B0](v57);

  MEMORY[0x26D6A43B0](0x697461636F6C202CLL, 0xEE005B203A736E6FLL);
  MEMORY[0x26D6A43B0](v64, v41);

  MEMORY[0x26D6A43B0](0x726F6C6F63202C5DLL, 0xEC0000005B203A73);
  MEMORY[0x26D6A43B0](v66, v43);

  MEMORY[0x26D6A43B0](0xD000000000000016, 0x800000026C61F860);
  MEMORY[0x26D6A43B0](v47, v49);

  MEMORY[0x26D6A43B0](168438057, 0xE400000000000000);
  v58 = v68;
  v59 = v69;
  swift_beginAccess();
  *(a6 + 16) = v58;
  *(a6 + 24) = v59;
}

void SUIAShockwaveRadialMaskSettings.setDefaultValuesWithName(_:majorDiameter:ringWidth:blurRadius:sampleCount:locations:colors:gradientLayerSize:)(double a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = sub_26C614E38();
  [v8 setName_];

  [v8 setMajorDiameter_];
  [v8 setRingWidth_];
  [v8 setBlurRadius_];
  [v8 setSampleCount_];
  sub_26C5CC548(0, &unk_28125E420);
  v16 = sub_26C614EB8();
  [v8 setLocations_];

  sub_26C5CC548(0, &qword_28125E430);
  v17 = sub_26C614EB8();
  [v8 setColors_];

  v18 = [objc_allocWithZone(MEMORY[0x277D43288]) init];
  [v8 setGradientLayerSize_];

  v19 = [v8 gradientLayerSize];
  [v19 setSizeValue_];
}

BOOL sub_26C5E6678(uint64_t a1, uint64_t a2)
{
  sub_26C5D3144(a2, &v13);
  if (!*(&v14 + 1))
  {
    goto LABEL_12;
  }

  sub_26C5CC548(0, &qword_2804A5038);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v2 = v11;
  v3 = sub_26C614E38();
  v4 = [v11 valueForKey_];

  if (v4)
  {
    sub_26C614FE8();
    v5 = swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {

LABEL_12:
    sub_26C5D31B4(&v13);
    return 0;
  }

  type metadata accessor for SUIAShockwaveRadialMaskSettings(v5);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v6 = [v10 computeDerivativeValuesAndGenerateSource];
  if (!v6)
  {
    sub_26C614E48();
    v6 = sub_26C614E38();
  }

  sub_26C614E48();
  v7 = [objc_opt_self() generalPasteboard];
  [v7 setString_];

  v8 = sub_26C614E68();

  return v8 > 0;
}

uint64_t sub_26C5E68FC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

BOOL sub_26C5E69AC(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_26C615128() & 1;
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void _sSo31SUIAShockwaveRadialMaskSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C61A0F0;
  v1 = sub_26C614E38();
  v2 = sub_26C614E38();
  v3 = [objc_opt_self() rowWithTitle:v1 valueKeyPath:v2];

  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  *(v0 + 56) = sub_26C5CC548(0, &qword_2804A4D90);
  *(v0 + 32) = v3;
  v4 = sub_26C614E38();
  v5 = sub_26C614E38();
  v6 = objc_opt_self();
  v7 = [v6 rowWithTitle:v4 valueKeyPath:v5];

  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (![v7 between:0.0 and:10000.0])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v51, &aBlock);
  v8 = sub_26C5CC548(0, &qword_2804A4D98);
  swift_dynamicCast();
  v9 = v50;
  if (![v50 precision_])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v10 = v50;

  *(v0 + 88) = v8;
  *(v0 + 64) = v10;
  v11 = sub_26C614E38();
  v12 = sub_26C614E38();
  v13 = [v6 rowWithTitle:v11 valueKeyPath:v12];

  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (![v13 between:0.0 and:1000.0])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v14 = v50;
  if (![v50 precision_])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v15 = v50;

  *(v0 + 120) = v8;
  *(v0 + 96) = v15;
  v16 = sub_26C614E38();
  v17 = sub_26C614E38();
  v18 = [v6 rowWithTitle:v16 valueKeyPath:v17];

  if (!v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (![v18 between:0.0 and:1000.0])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v19 = v50;
  if (![v50 precision_])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v20 = v50;

  *(v0 + 152) = v8;
  *(v0 + 128) = v20;
  v21 = sub_26C614E38();
  v22 = sub_26C614E38();
  v23 = [v6 rowWithTitle:v21 valueKeyPath:v22];

  if (!v23)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (![v23 between:0.0 and:100.0])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v24 = v50;
  if (![v50 precision_])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = objc_opt_self();
  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v51, &aBlock);
  swift_dynamicCast();
  v26 = v50;

  *(v0 + 184) = v8;
  *(v0 + 160) = v26;
  v27 = sub_26C614EB8();

  v28 = sub_26C614E38();
  v29 = [v25 sectionWithRows:v27 title:v28];

  if (!v29)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v48 = sub_26C5E6678;
  v49 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v46 = sub_26C5E74CC;
  v47 = &block_descriptor_29;
  v30 = _Block_copy(&aBlock);

  v31 = [objc_opt_self() actionWithHandler_];
  _Block_release(v30);
  if (!v31)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_26C619B70;
  v33 = v31;
  v34 = sub_26C614E38();
  v35 = [objc_opt_self() rowWithTitle:v34 action:v33];

  if (!v35)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  *(v32 + 56) = sub_26C5CC548(0, &qword_2804A5030);
  *(v32 + 32) = v35;
  v36 = sub_26C614EB8();

  v37 = sub_26C614E38();
  v38 = [v25 sectionWithRows:v36 title:v37];

  if (v38)
  {
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_26C619B60;
    v40 = sub_26C5CC548(0, &qword_2804A4C70);
    *(v39 + 32) = v29;
    *(v39 + 88) = v40;
    *(v39 + 56) = v40;
    *(v39 + 64) = v38;
    v41 = v29;
    v42 = v38;
    v43 = sub_26C614E38();
    v44 = sub_26C614EB8();

    [v25 moduleWithTitle:v43 contents:v44];

    return;
  }

LABEL_35:
  __break(1u);
}

unint64_t sub_26C5E7468()
{
  result = qword_2804A5098;
  if (!qword_2804A5098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5098);
  }

  return result;
}

uint64_t sub_26C5E74CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v12, 0, sizeof(v12));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_6;
  }

  *(&v11 + 1) = swift_getObjectType();
  *&v10 = a2;
  sub_26C5CD7F8(&v10, v12);
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  ObjectType = swift_getObjectType();
  *&v8 = a3;
  sub_26C5CD7F8(&v8, &v10);
LABEL_6:

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v12, &v10);

  sub_26C5D31B4(&v10);
  sub_26C5D31B4(v12);
  return v6 & 1;
}

id sub_26C5E7D6C()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for ScanwavePrototypeSettings();
  objc_msgSendSuper2(&v54, sel_setDefaultValues);
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_outroDelay] = 0x3FC999999999999ALL;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_completionTimeout] = 0x3FFE666666666666;
  v2 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings;
  v3 = *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings];
  [v3 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v3 setFrameRateRange:3014657 highFrameRateReason:?];
  [v3 setBehaviorType_];
  v4 = sub_26C614E38();
  [v3 setName_];

  [*&v1[v2] setDampingRatio_];
  [*&v1[v2] setResponse_];
  v5 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings;
  v6 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings];
  [v6 byte_279D4057E];
  sub_26C614F78();
  [v6 byte_279D40278];
  [v6 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v7 = sub_26C614E38();
  [v6 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v5] setDampingRatio_];
  [*&v1[v5] setResponse_];
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleFactor] = 0x3FF051EB851EB852;
  v8 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings;
  v9 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings];
  [v9 byte_279D4057E];
  sub_26C614F78();
  [v9 byte_279D40278];
  [v9 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v10 = sub_26C614E38();
  [v9 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v8] setDampingRatio_];
  [*&v1[v8] setResponse_];
  v11 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings;
  v12 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings];
  [v12 byte_279D4057E];
  sub_26C614F78();
  [v12 byte_279D40278];
  [v12 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v13 = sub_26C614E38();
  [v12 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v11] setDampingRatio_];
  [*&v1[v11] setResponse_];
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessAmount] = 0x3FC7ADE225FA658CLL;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthImageColorBrightnessAmount] = 0xBFD0000000000000;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthImageColorContrastAmount] = 0x3FF599999999999ALL;
  v14 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings;
  v15 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings];
  [v15 byte_279D4057E];
  sub_26C614F78();
  [v15 byte_279D40278];
  [v15 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v16 = sub_26C614E38();
  [v15 setName_];

  [*&v1[v14] &selRef:1.0 setAberrationColorBrightness:? + 4];
  [*&v1[v14] byte_279D40283];
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionYNormalizedDistance] = 0x3FD6666666666666;
  v17 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings;
  v18 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings];
  [v18 byte_279D4057E];
  sub_26C614F78();
  [v18 byte_279D40278];
  [v18 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v19 = sub_26C614E38();
  [v18 setName_];

  [*&v1[v17] &selRef:1.0 setAberrationColorBrightness:? + 4];
  [*&v1[v17] byte_279D40283];
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleFactor] = 0x402EA3D70A3D70A4;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialIntensity] = 0x3FE999999999999ALL;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalIntensity] = 0x3FE0000000000000;
  v20 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings;
  v21 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings];
  [v21 byte_279D4057E];
  sub_26C614F78();
  [v21 byte_279D40278];
  [v21 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v22 = sub_26C614E38();
  [v21 setName_];

  [*&v1[v20] &selRef:1.0 setAberrationColorBrightness:? + 4];
  [*&v1[v20] byte_279D40283];
  v23 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask];
  v24 = sub_26C614E38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55E0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_26C61A090;
  sub_26C5CC548(0, &unk_28125E420);
  *(v25 + 32) = sub_26C614F98();
  *(v25 + 40) = sub_26C614F98();
  *(v25 + 48) = sub_26C614F98();
  *(v25 + 56) = sub_26C614F98();
  *(v25 + 64) = sub_26C614F98();
  *(v25 + 72) = sub_26C614F98();
  *(v25 + 80) = sub_26C614F98();
  *(v25 + 88) = sub_26C614F98();
  *(v25 + 96) = sub_26C614F98();
  *(v25 + 104) = sub_26C614F98();
  *(v25 + 112) = sub_26C614F98();
  *(v25 + 120) = sub_26C614F98();
  *(v25 + 128) = sub_26C614F98();
  *(v25 + 136) = sub_26C614F98();
  *(v25 + 144) = sub_26C614F98();
  *(v25 + 152) = sub_26C614F98();
  *(v25 + 160) = sub_26C614F98();
  *(v25 + 168) = sub_26C614F98();
  *(v25 + 176) = sub_26C614F98();
  *(v25 + 184) = sub_26C614F98();
  *(v25 + 192) = sub_26C614F98();
  *(v25 + 200) = sub_26C614F98();
  *(v25 + 208) = sub_26C614F98();
  *(v25 + 216) = sub_26C614F98();
  *(v25 + 224) = sub_26C614F98();
  *(v25 + 232) = sub_26C614F98();
  *(v25 + 240) = sub_26C614F98();
  *(v25 + 248) = sub_26C614F98();
  *(v25 + 256) = sub_26C614F98();
  *(v25 + 264) = sub_26C614F98();
  v26 = sub_26C614EB8();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26C61A090;
  *(v27 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v27 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.992];
  *(v27 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.984];
  *(v27 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.969];
  *(v27 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.945];
  *(v27 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.906];
  *(v27 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.851];
  *(v27 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.78];
  *(v27 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.686];
  *(v27 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.58];
  *(v27 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.475];
  *(v27 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.365];
  *(v27 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.271];
  *(v27 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.184];
  *(v27 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.122];
  *(v27 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.075];
  *(v27 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.047];
  *(v27 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.024];
  *(v27 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.016];
  *(v27 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v27 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.004];
  *(v27 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  sub_26C5CC548(0, &qword_28125E430);
  v28 = sub_26C614EB8();

  [v23 setDefaultValuesWithName:v24 majorDiameter:30 ringWidth:v26 blurRadius:v28 sampleCount:60.0 locations:0.0 colors:6.0 gradientLayerSize:{96.0, 96.0}];

  v29 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask];
  v30 = sub_26C614E38();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_26C61A090;
  *(v31 + 32) = sub_26C614F98();
  *(v31 + 40) = sub_26C614F98();
  *(v31 + 48) = sub_26C614F98();
  *(v31 + 56) = sub_26C614F98();
  *(v31 + 64) = sub_26C614F98();
  *(v31 + 72) = sub_26C614F98();
  *(v31 + 80) = sub_26C614F98();
  *(v31 + 88) = sub_26C614F98();
  *(v31 + 96) = sub_26C614F98();
  *(v31 + 104) = sub_26C614F98();
  *(v31 + 112) = sub_26C614F98();
  *(v31 + 120) = sub_26C614F98();
  *(v31 + 128) = sub_26C614F98();
  *(v31 + 136) = sub_26C614F98();
  *(v31 + 144) = sub_26C614F98();
  *(v31 + 152) = sub_26C614F98();
  *(v31 + 160) = sub_26C614F98();
  *(v31 + 168) = sub_26C614F98();
  *(v31 + 176) = sub_26C614F98();
  *(v31 + 184) = sub_26C614F98();
  *(v31 + 192) = sub_26C614F98();
  *(v31 + 200) = sub_26C614F98();
  *(v31 + 208) = sub_26C614F98();
  *(v31 + 216) = sub_26C614F98();
  *(v31 + 224) = sub_26C614F98();
  *(v31 + 232) = sub_26C614F98();
  *(v31 + 240) = sub_26C614F98();
  *(v31 + 248) = sub_26C614F98();
  *(v31 + 256) = sub_26C614F98();
  *(v31 + 264) = sub_26C614F98();
  v32 = sub_26C614EB8();

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_26C61A090;
  *(v33 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 48) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 56) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 64) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 72) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 80) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 176) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:1.0];
  *(v33 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.98];
  *(v33 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.922];
  *(v33 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.784];
  *(v33 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.553];
  *(v33 + 232) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.306];
  *(v33 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.125];
  *(v33 + 248) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.031];
  *(v33 + 256) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.008];
  *(v33 + 264) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.0];
  v34 = sub_26C614EB8();

  [v29 setDefaultValuesWithName:v30 majorDiameter:30 ringWidth:v32 blurRadius:v34 sampleCount:920.0 locations:0.0 colors:30.0 gradientLayerSize:{1100.0, 1100.0}];

  v35 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings;
  v36 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings];
  [v36 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v36 setFrameRateRange:3014657 highFrameRateReason:?];
  [v36 setBehaviorType_];
  v37 = sub_26C614E38();
  [v36 setName_];

  [*&v1[v35] setDampingRatio_];
  [*&v1[v35] setResponse_];
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldInitialOffset] = 0x3FF3333333333333;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldFinalOffset] = 0xBFD0A3D70A3D70A4;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldSharpness] = 0x3FD3A5E353F7CED9;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldLineWidth] = 0x3FD0000000000000;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_fillLightColorBrightnessAmount] = 0x3FA999999999999ALL;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_fillLightColorSaturateAmount] = 0x3FF3851EB851EB85;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadius] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurOutroDelay] = 0x3FC999999999999ALL;
  v38 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings;
  v39 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings];
  [v39 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v39 setFrameRateRange:3014657 highFrameRateReason:?];
  [v39 setBehaviorType_];
  v40 = sub_26C614E38();
  [v39 setName_];

  [*&v1[v38] setDampingRatio_];
  [*&v1[v38] setResponse_];
  v41 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings;
  v42 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings];
  [v42 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v42 byte_279D40278];
  [v42 &selRef:0 setFillLightIntensityFinalStateDelay:?];
  v43 = sub_26C614E38();
  [v42 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v41] setDampingRatio_];
  [*&v1[v41] setResponse_];
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationMagnitudeX] = 0;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationMagnitudeY] = 0x4005555555555555;
  *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationColorSaturateAmount] = 0x3FF3333333333333;
  v44 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings;
  v45 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings];
  [v45 setDefaultCriticallyDampedValues];
  sub_26C614F78();
  [v45 setFrameRateRange:3014657 highFrameRateReason:?];
  [v45 setBehaviorType_];
  v46 = sub_26C614E38();
  [v45 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v44] &selRef:1.0 setAberrationColorBrightness:? + 4];
  [*&v1[v44] byte_279D40283];
  v47 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings;
  v48 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings];
  [v48 byte_279D4057E];
  sub_26C614F78();
  [v48 setFrameRateRange:3014657 highFrameRateReason:?];
  [v48 setBehaviorType_];
  v49 = sub_26C614E38();
  [v48 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v47] &selRef:0.35 setAberrationColorBrightness:? + 4];
  [*&v1[v47] byte_279D40283];
  v50 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings;
  v51 = *&v1[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings];
  [v51 byte_279D4057E];
  sub_26C614F78();
  [v51 setFrameRateRange:3014657 highFrameRateReason:?];
  [v51 setBehaviorType_];
  v52 = sub_26C614E38();
  [v51 &selRef_visionIntelligenceHintAnimationSettings];

  [*&v1[v50] &selRef:1.0 setAberrationColorBrightness:? + 4];
  return [*&v1[v50] byte_279D40283];
}

id sub_26C5E9710()
{
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_outroDelay] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_completionTimeout] = 0;
  v1 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialRadialMask;
  *&v0[v1] = [objc_allocWithZone(SUIAShockwaveRadialMaskSettings) init];
  v2 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalRadialMask;
  *&v0[v2] = [objc_allocWithZone(SUIAShockwaveRadialMaskSettings) init];
  v3 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionAnimationSettings;
  *&v0[v3] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskPositionYNormalizedDistance] = 0;
  v4 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleAnimationSettings;
  *&v0[v4] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskScaleFactor] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskInitialIntensity] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskFinalIntensity] = 0;
  v5 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_circleMaskIntensityAnimationSettings;
  *&v0[v5] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v6 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleIntroAnimationSettings;
  *&v0[v6] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v7 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleOutroAnimationSettings;
  *&v0[v7] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageScaleFactor] = 0;
  v8 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessIntroAnimationSettings;
  *&v0[v8] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v9 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessOutroAnimationSettings;
  *&v0[v9] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_sourceImageColorBrightnessAmount] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthImageColorBrightnessAmount] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthImageColorContrastAmount] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldInitialOffset] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldFinalOffset] = 0;
  v10 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldOffsetAnimationSettings;
  *&v0[v10] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldSharpness] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_depthDistanceFieldLineWidth] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_fillLightColorSaturateAmount] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_fillLightColorBrightnessAmount] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadius] = 0;
  v11 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusIntroAnimationSettings;
  *&v0[v11] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v12 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurRadiusOutroAnimationSettings;
  *&v0[v12] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_inverseBlurOutroDelay] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationMagnitudeX] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationMagnitudeY] = 0;
  *&v0[OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_chromaticAberrationColorSaturateAmount] = 0;
  v13 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshIntroAnimationSettings;
  *&v0[v13] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v14 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformMeshOutroAnimationSettings;
  *&v0[v14] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v15 = OBJC_IVAR____TtC20SystemUIAnimationKit25ScanwavePrototypeSettings_meshTransformPositionAnimationSettings;
  *&v0[v15] = [objc_allocWithZone(SUIAFluidBehaviorSettings) init];
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ScanwavePrototypeSettings();
  return objc_msgSendSuper2(&v17, sel_initWithDefaultValues);
}

id sub_26C5E9A24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScanwavePrototypeSettings();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26C5E9B98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C61A0E0;
  v236 = objc_opt_self();
  v1 = [v236 restoreDefaultSettingsButton];
  if (!v1)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v2 = v1;
  v234 = sub_26C5CC548(0, &qword_2804A5030);
  *(v0 + 56) = v234;
  *(v0 + 32) = v2;
  v3 = sub_26C614E38();
  v4 = sub_26C614E38();
  v232 = objc_opt_self();
  v5 = [v232 rowWithTitle:v3 valueKeyPath:v4];

  if (!v5)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (![v5 between:0.0 and:2.0])
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  v6 = sub_26C5CC548(0, &qword_2804A4D98);
  swift_dynamicCast();
  v7 = v244;
  if (![v244 precision_])
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v8 = v244;

  *(v0 + 88) = v6;
  *(v0 + 64) = v8;
  v9 = sub_26C614E38();
  v10 = sub_26C614E38();
  v11 = [v232 rowWithTitle:v9 valueKeyPath:v10];

  if (!v11)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  if (![v11 between:0.0 and:6.0])
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v12 = v244;
  if (![v244 precision_])
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v13 = objc_opt_self();
  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v14 = v244;

  *(v0 + 120) = v6;
  *(v0 + 96) = v14;
  v15 = sub_26C614EB8();

  v16 = sub_26C614E38();
  v231 = v13;
  v17 = [v13 sectionWithRows:v15 title:v16];

  if (!v17)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_26C61A1C0;
  v19 = sub_26C614E38();
  v20 = sub_26C614E38();
  v21 = [v232 rowWithTitle:v19 valueKeyPath:v20];

  if (!v21)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  if (![v21 between:0.0 and:10.0])
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v22 = v244;
  if (![v244 precision_])
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v23 = v244;

  *(v18 + 56) = v6;
  *(v18 + 32) = v23;
  v24 = sub_26C614E38();
  v25 = sub_26C614E38();
  v26 = objc_opt_self();
  v27 = [v26 rowWithTitle:v24 childSettingsKeyPath:v25];

  if (!v27)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v224 = v17;
  v28 = sub_26C5CC548(0, &qword_2804A4C68);
  *(v18 + 88) = v28;
  *(v18 + 64) = v27;
  v29 = sub_26C614E38();
  v30 = sub_26C614E38();
  v31 = [v26 rowWithTitle:v29 childSettingsKeyPath:v30];

  if (!v31)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  *(v18 + 120) = v28;
  *(v18 + 96) = v31;
  v32 = sub_26C614E38();
  v33 = sub_26C614E38();
  v34 = [v232 rowWithTitle:v32 valueKeyPath:v33];

  if (!v34)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (![v34 between:-10.0 and:10.0])
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v35 = v244;
  if (![v244 precision_])
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v36 = v244;

  *(v18 + 152) = v6;
  *(v18 + 128) = v36;
  v37 = sub_26C614E38();
  v38 = sub_26C614E38();
  v39 = [v26 rowWithTitle:v37 childSettingsKeyPath:v38];

  if (!v39)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  *(v18 + 184) = v28;
  *(v18 + 160) = v39;
  v40 = sub_26C614E38();
  v41 = sub_26C614E38();
  v42 = [v26 rowWithTitle:v40 childSettingsKeyPath:v41];

  if (!v42)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  *(v18 + 216) = v28;
  *(v18 + 192) = v42;
  v43 = sub_26C614EB8();

  v44 = sub_26C614E38();
  v45 = [v231 sectionWithRows:v43 title:v44];

  v223 = v45;
  if (!v45)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_26C619B60;
  v47 = sub_26C614E38();
  v48 = sub_26C614E38();
  v49 = [v232 rowWithTitle:v47 valueKeyPath:v48];

  if (!v49)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if (![v49 between:-10.0 and:10.0])
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v50 = v244;
  if (![v244 precision_])
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v51 = v244;

  *(v46 + 56) = v6;
  *(v46 + 32) = v51;
  v52 = sub_26C614E38();
  v53 = sub_26C614E38();
  v54 = [v232 rowWithTitle:v52 valueKeyPath:v53];

  if (!v54)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  if (![v54 between:0.0 and:10.0])
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v55 = v244;
  if (![v244 precision_])
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v56 = v244;

  *(v46 + 88) = v6;
  *(v46 + 64) = v56;
  v57 = sub_26C614EB8();

  v58 = sub_26C614E38();
  v59 = [v231 sectionWithRows:v57 title:v58];

  if (!v59)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v222 = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_26C61A0D0;
  v61 = sub_26C614E38();
  v62 = sub_26C614E38();
  v63 = [v26 rowWithTitle:v61 childSettingsKeyPath:v62];

  if (!v63)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  *(v60 + 56) = v28;
  *(v60 + 32) = v63;
  v64 = sub_26C614E38();
  v65 = v28;
  v66 = sub_26C614E38();
  v67 = [v26 &selRef:v64 setAberrationFadeOutDelay:v66 + 2];

  if (!v67)
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  *(v60 + 88) = v65;
  *(v60 + 64) = v67;
  v68 = sub_26C614E38();
  v69 = sub_26C614E38();
  v70 = [v26 &selRef:v68 setAberrationFadeOutDelay:v69 + 2];

  if (!v70)
  {
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  *(v60 + 120) = v65;
  *(v60 + 96) = v70;
  v71 = sub_26C614E38();
  v72 = sub_26C614E38();
  v73 = [v232 rowWithTitle:v71 valueKeyPath:v72];

  if (!v73)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (![v73 between:0.0 and:1.0])
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v74 = v244;
  if (![v244 precision_])
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v75 = v244;

  *(v60 + 152) = v6;
  *(v60 + 128) = v75;
  v76 = sub_26C614E38();
  v77 = sub_26C614E38();
  v78 = [v26 rowWithTitle:v76 childSettingsKeyPath:v77];

  if (!v78)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  *(v60 + 184) = v65;
  *(v60 + 160) = v78;
  v79 = sub_26C614E38();
  v80 = sub_26C614E38();
  v81 = [v232 rowWithTitle:v79 valueKeyPath:v80];

  if (!v81)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (![v81 between:0.0 and:10.0])
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v82 = v244;
  if (![v244 precision_])
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v83 = v244;

  *(v60 + 216) = v6;
  *(v60 + 192) = v83;
  v84 = sub_26C614E38();
  v85 = sub_26C614E38();
  v86 = [v232 rowWithTitle:v84 valueKeyPath:v85];

  if (!v86)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  if (![v86 between:0.0 and:1.0])
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v87 = v244;
  if (![v244 precision_])
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v88 = v244;

  *(v60 + 248) = v6;
  *(v60 + 224) = v88;
  v89 = sub_26C614E38();
  v90 = sub_26C614E38();
  v91 = [v232 rowWithTitle:v89 valueKeyPath:v90];

  if (!v91)
  {
LABEL_136:
    __break(1u);
    goto LABEL_137;
  }

  if (![v91 between:0.0 and:1.0])
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v92 = v244;
  if (![v244 precision_])
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v93 = v244;

  *(v60 + 280) = v6;
  *(v60 + 256) = v93;
  v94 = sub_26C614E38();
  v95 = sub_26C614E38();
  v96 = [v26 rowWithTitle:v94 childSettingsKeyPath:v95];

  if (!v96)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  *(v60 + 312) = v65;
  *(v60 + 288) = v96;
  v97 = sub_26C614EB8();

  v98 = sub_26C614E38();
  v99 = [v231 sectionWithRows:v97 title:v98];

  if (!v99)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_26C61A0F0;
  v101 = sub_26C614E38();
  v102 = sub_26C614E38();
  v103 = [v232 rowWithTitle:v101 valueKeyPath:v102];

  if (!v103)
  {
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

  if (![v103 between:-3.0 and:3.0])
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v104 = v244;
  if (![v244 precision_])
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v105 = v244;

  *(v100 + 56) = v6;
  *(v100 + 32) = v105;
  v106 = sub_26C614E38();
  v107 = sub_26C614E38();
  v108 = [v232 rowWithTitle:v106 valueKeyPath:v107];

  if (!v108)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (![v108 between:-3.0 and:3.0])
  {
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v109 = v244;
  if (![v244 precision_])
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v110 = v244;

  *(v100 + 88) = v6;
  *(v100 + 64) = v110;
  v111 = sub_26C614E38();
  v112 = sub_26C614E38();
  v113 = [v26 rowWithTitle:v111 childSettingsKeyPath:v112];

  if (!v113)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  *(v100 + 120) = v65;
  *(v100 + 96) = v113;
  v114 = sub_26C614E38();
  v115 = sub_26C614E38();
  v116 = [v232 rowWithTitle:v114 valueKeyPath:v115];

  if (!v116)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (![v116 between:0.0 and:1.0])
  {
LABEL_149:
    __break(1u);
    goto LABEL_150;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v117 = v244;
  if (![v244 precision_])
  {
LABEL_150:
    __break(1u);
    goto LABEL_151;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v118 = v244;

  *(v100 + 152) = v6;
  *(v100 + 128) = v118;
  v119 = sub_26C614E38();
  v120 = sub_26C614E38();
  v121 = [v232 rowWithTitle:v119 valueKeyPath:v120];

  if (!v121)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (![v121 between:0.0 and:1.0])
  {
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v122 = v244;
  if (![v244 precision_])
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v123 = v244;

  *(v100 + 184) = v6;
  *(v100 + 160) = v123;
  v124 = sub_26C614EB8();

  v125 = sub_26C614E38();
  v126 = [v231 sectionWithRows:v124 title:v125];

  if (!v126)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_26C61A0A0;
  v128 = sub_26C614E38();
  v129 = sub_26C614E38();
  v130 = [v232 rowWithTitle:v128 valueKeyPath:v129];

  if (!v130)
  {
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (![v130 between:0.0 and:300.0])
  {
LABEL_156:
    __break(1u);
    goto LABEL_157;
  }

  v221 = v126;
  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v131 = v244;
  if (![v244 precision_])
  {
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v132 = v244;

  *(v127 + 56) = v6;
  *(v127 + 32) = v132;
  v133 = sub_26C614E38();
  v134 = sub_26C614E38();
  v135 = [v232 rowWithTitle:v133 valueKeyPath:v134];

  if (!v135)
  {
LABEL_158:
    __break(1u);
    goto LABEL_159;
  }

  if (![v135 between:0.0 and:1.0])
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v220 = v99;
  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v136 = v244;
  if (![v244 precision_])
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v137 = v244;

  *(v127 + 88) = v6;
  *(v127 + 64) = v137;
  v138 = sub_26C614E38();
  v139 = sub_26C614E38();
  v140 = [v26 rowWithTitle:v138 childSettingsKeyPath:v139];

  if (!v140)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  *(v127 + 120) = v65;
  *(v127 + 96) = v140;
  v141 = sub_26C614E38();
  v142 = sub_26C614E38();
  v143 = [v26 rowWithTitle:v141 childSettingsKeyPath:v142];

  if (!v143)
  {
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  *(v127 + 152) = v65;
  *(v127 + 128) = v143;
  v144 = sub_26C614EB8();

  v145 = sub_26C614E38();
  v146 = [v231 sectionWithRows:v144 title:v145];

  if (!v146)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_26C619B60;
  v148 = sub_26C614E38();
  v149 = sub_26C614E38();
  v150 = [v232 rowWithTitle:v148 valueKeyPath:v149];

  if (!v150)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  if (![v150 between:-1.0 and:1.0])
  {
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v151 = v244;
  if (![v244 precision_])
  {
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v152 = v244;

  *(v147 + 56) = v6;
  *(v147 + 32) = v152;
  v153 = sub_26C614E38();
  v154 = sub_26C614E38();
  v155 = [v232 rowWithTitle:v153 valueKeyPath:v154];

  if (!v155)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (![v155 between:-1.0 and:1.0])
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v156 = v244;
  if (![v244 precision_])
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v225 = v146;
  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v157 = v244;

  *(v147 + 88) = v6;
  *(v147 + 64) = v157;
  v158 = sub_26C614EB8();

  v159 = sub_26C614E38();
  v160 = [v231 sectionWithRows:v158 title:v159];

  v219 = v160;
  if (!v160)
  {
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_26C619B60;
  v162 = sub_26C614E38();
  v163 = sub_26C614E38();
  v164 = [v232 rowWithTitle:v162 valueKeyPath:v163];

  if (!v164)
  {
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  if (![v164 between:0.0 and:100.0])
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v165 = v244;
  if (![v244 precision_])
  {
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v166 = v244;

  *(v161 + 56) = v6;
  *(v161 + 32) = v166;
  v167 = sub_26C614E38();
  v168 = sub_26C614E38();
  v169 = [v232 rowWithTitle:v167 valueKeyPath:v168];

  if (!v169)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (![v169 between:0.0 and:100.0])
  {
LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();
  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v170 = v244;
  if (![v244 precision_])
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v245, &aBlock);
  swift_dynamicCast();
  v171 = v244;

  *(v161 + 88) = v6;
  *(v161 + 64) = v171;
  v172 = sub_26C614EB8();

  v173 = sub_26C614E38();
  v174 = [v231 sectionWithRows:v172 title:v173];

  if (!v174)
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v233 = v174;
  v175 = swift_allocObject();
  *(v175 + 16) = xmmword_26C61A0E0;
  v176 = sub_26C614E38();
  v177 = sub_26C614E38();
  v178 = [v26 rowWithTitle:v176 childSettingsKeyPath:v177];

  if (!v178)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  *(v175 + 56) = v65;
  *(v175 + 32) = v178;
  v179 = sub_26C614E38();
  v180 = sub_26C614E38();
  v181 = [v26 rowWithTitle:v179 childSettingsKeyPath:v180];

  if (!v181)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  *(v175 + 88) = v65;
  *(v175 + 64) = v181;
  v182 = sub_26C614E38();
  v183 = sub_26C614E38();
  v184 = [v26 rowWithTitle:v182 childSettingsKeyPath:v183];

  if (!v184)
  {
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  *(v175 + 120) = v65;
  *(v175 + 96) = v184;
  v185 = sub_26C614EB8();

  v186 = sub_26C614E38();
  v187 = [v231 sectionWithRows:v185 title:v186];

  if (!v187)
  {
LABEL_181:
    __break(1u);
    goto LABEL_182;
  }

  v242 = sub_26C5DEA40;
  v243 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v240 = sub_26C5E74CC;
  v241 = &block_descriptor_1;
  v188 = _Block_copy(&aBlock);

  v189 = [objc_opt_self() actionWithHandler_];
  _Block_release(v188);
  if (!v189)
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_26C619B70;
  v191 = v189;
  v192 = sub_26C614E38();
  v193 = [v236 rowWithTitle:v192 action:v191];

  if (!v193)
  {
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
    return;
  }

  v229 = v191;
  v230 = v187;
  *(v190 + 56) = v234;
  *(v190 + 32) = v193;
  v194 = sub_26C614EB8();

  v195 = sub_26C614E38();
  v196 = [v231 sectionWithRows:v194 title:v195];

  if (!v196)
  {
    goto LABEL_184;
  }

  *&v245[0] = MEMORY[0x277D84F90];
  v197 = 50;
  sub_26C613610(0, 50, 0);
  v198 = *&v245[0];
  v199 = objc_opt_self();
  do
  {
    v200 = [v199 actionWithSettingsKeyPath_];
    v201 = sub_26C614E38();
    v202 = [v236 rowWithTitle:v201 action:v200];

    if (!v202)
    {
      __break(1u);
      goto LABEL_97;
    }

    v241 = v234;
    *&aBlock = v202;
    *&v245[0] = v198;
    v204 = *(v198 + 16);
    v203 = *(v198 + 24);
    if (v204 >= v203 >> 1)
    {
      sub_26C613610((v203 > 1), v204 + 1, 1);
      v198 = *&v245[0];
    }

    *(v198 + 16) = v204 + 1;
    sub_26C5CD7F8(&aBlock, (v198 + 32 * v204 + 32));
    --v197;
  }

  while (v197);
  v237 = v196;
  v205 = sub_26C614EB8();

  v206 = sub_26C614E38();
  v207 = [v231 sectionWithRows:v205 title:v206];

  v238 = v207;
  if (!v207)
  {
    goto LABEL_185;
  }

  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_26C61A1D0;
  v209 = sub_26C5CC548(0, &qword_2804A4C70);
  *(v208 + 32) = v224;
  *(v208 + 56) = v209;
  *(v208 + 64) = v223;
  *(v208 + 88) = v209;
  *(v208 + 96) = v222;
  *(v208 + 120) = v209;
  *(v208 + 128) = v220;
  *(v208 + 152) = v209;
  *(v208 + 160) = v221;
  *(v208 + 184) = v209;
  *(v208 + 192) = v225;
  *(v208 + 216) = v209;
  *(v208 + 224) = v219;
  *(v208 + 248) = v209;
  *(v208 + 256) = v233;
  *(v208 + 280) = v209;
  *(v208 + 288) = v230;
  *(v208 + 312) = v209;
  *(v208 + 320) = v237;
  *(v208 + 376) = v209;
  *(v208 + 344) = v209;
  *(v208 + 352) = v207;
  v235 = v224;
  v228 = v223;
  v227 = v222;
  v226 = v220;
  v210 = v221;
  v211 = v225;
  v212 = v219;
  v213 = v233;
  v214 = v230;
  v215 = v237;
  v216 = v238;
  v217 = sub_26C614E38();
  v218 = sub_26C614EB8();

  [v231 moduleWithTitle:v217 contents:v218];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C5EC7A0()
{
  sub_26C615168();
  sub_26C615178();
  return sub_26C615198();
}

uint64_t sub_26C5EC8A8()
{
  sub_26C615168();
  sub_26C615178();
  return sub_26C615198();
}

uint64_t sub_26C5EC928()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_slowAlloc();
  *uu = v1;
  v7 = v2;
  uuid_unparse_upper(uu, v3);
  v4 = sub_26C614E88();
  MEMORY[0x26D6A5010](v3, -1, -1);
  return v4;
}

unint64_t sub_26C5EC9D0()
{
  result = qword_2804A51C0;
  if (!qword_2804A51C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A51C0);
  }

  return result;
}

unint64_t sub_26C5ECA38()
{
  result = qword_2804A51C8;
  if (!qword_2804A51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A51C8);
  }

  return result;
}

uint64_t sub_26C5ECA90()
{

  return sub_26C5BABD0();
}

uint64_t sub_26C5ECAE8()
{

  return sub_26C5BAC28();
}

uint64_t sub_26C5ECB40()
{

  return sub_26C5BAB78();
}

id sub_26C5ECCA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShapeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26C5ECD00()
{
  result = qword_2804A51D0;
  if (!qword_2804A51D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A51D0);
  }

  return result;
}

uint64_t sub_26C5ECD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_26C5ECDF0(a3, a4);
    v8 = *(v7 + 16);

    v8(a3, a4);
  }

  return result;
}

void sub_26C5ECDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = sub_26C60B598(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v2 + 32);
    v13 = *(v3 + 32);
    *(v3 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C60ABC4();
      v10 = v13;
    }

    v11 = v8;
    v12 = *(*(v10 + 56) + 8 * v8);
    sub_26C60B540(v11, v10);
    *(v3 + 32) = v10;
    swift_endAccess();
    [v12 invalidate];
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_26C5ECEC0()
{

  return swift_deallocClassInstance();
}

BOOL sub_26C5ECF24(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[3] == a2[3];
  if (a1[4] != a2[4])
  {
    v5 = 0;
  }

  return a1[5] == a2[5] && v5;
}

uint64_t sub_26C5ECF78(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & (a1[2].f64[0] == a2[2].f64[0]);
  if (a1[2].f64[1] == a2[2].f64[1])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

BOOL sub_26C5ECFB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4) == *(a2 + 4) && *a1 == *a2;
  if (*(a1 + 16))
  {
    return (*(a2 + 16) & 1) != 0 && v3;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  result = *(a1 + 12) == *(a2 + 12);
  if (!v3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_26C5ED00C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_26C5ED1F0(v7, v9) & 1;
}

char *sub_26C5ED068(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v8 setDefaultValues];
  v9 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
  swift_beginAccess();
  *&v8[v9] = v2;
  v10 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
  swift_beginAccess();
  *&v8[v10] = v3;
  v11 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
  swift_beginAccess();
  *&v8[v11] = v5;
  v12 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
  swift_beginAccess();
  *&v8[v12] = v4;
  v13 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
  swift_beginAccess();
  *&v8[v13] = v7;
  v14 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
  swift_beginAccess();
  *&v8[v14] = v6;
  if (a1[8])
  {
    v18 = 0;
  }

  else
  {
    v18 = *(a1 + 15);
  }

  LODWORD(v15) = *(a1 + 12);
  LODWORD(v16) = *(a1 + 13);
  LODWORD(v17) = *(a1 + 14);
  [v8 setFrameRateRange:v18 highFrameRateReason:{v15, v16, v17}];

  return v8;
}

uint64_t sub_26C5ED1F0(uint64_t a1, uint64_t a2)
{
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40))
  {
    v3 = *(a2 + 64);
    v4 = *(a1 + 48) != *(a2 + 48);
    if (*(a1 + 52) != *(a2 + 52))
    {
      v4 = 1;
    }

    if (*(a1 + 64))
    {
      if (!v4 && (v3 & 1) != 0)
      {
        return 1;
      }
    }

    else if (((v3 | v4) & 1) == 0 && *(a1 + 60) == *(a2 + 60))
    {
      return 1;
    }
  }

  return 0;
}

id sub_26C5ED29C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 behaviorType])
  {
    result = sub_26C6150B8();
    __break(1u);
  }

  else
  {
    [a1 dampingRatio];
    v5 = v4;
    [a1 response];
    v7 = v6;
    [a1 retargetImpulse];
    v9 = v8;
    [a1 trackingDampingRatio];
    v11 = v10;
    [a1 trackingResponse];
    v13 = v12;
    [a1 trackingRetargetImpulse];
    v15 = v14;
    v16 = [a1 highFrameRateReason];
    result = [a1 frameRateRange];
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
    *(a2 + 48) = v18;
    *(a2 + 52) = v19;
    *(a2 + 56) = v20;
    *(a2 + 60) = v16;
    *(a2 + 64) = v16 == 0;
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_26C5ED42C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C5ED44C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

__n128 __swift_memcpy17_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComponentFluidBehaviorSettings.FrameRateConfiguration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ComponentFluidBehaviorSettings.FrameRateConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

uint64_t initializeBufferWithCopyOfBuffer for ComponentFluidBehaviorSettings.AnimationSettings(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m11.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m11;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m11.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m11;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m12.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m12;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m12.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m12;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m13.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m13;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m13.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m13;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m14.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m14;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m14.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m14;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m15.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m15;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m15.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m15;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m21.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m21;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m21.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m21;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m22.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m22;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m22.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m22;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m23.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m23;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m23.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m23;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m24.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m24;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m24.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m24;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m25.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m25;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m25.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m25;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m31.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m31;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m31.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m31;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m32.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m32;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m32.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m32;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m33.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m33;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m33.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m33;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m34.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m34;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m34.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m34;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m35.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m35;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m35.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m35;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m41.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m41;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m41.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m41;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m42.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m42;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m42.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m42;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m43.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m43;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m43.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m43;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m44.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m44;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m44.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m44;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double SUIAColorMatrixPrototypeSettings.m45.getter()
{
  v1 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m45;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SUIAColorMatrixPrototypeSettings.m45.setter(double a1)
{
  v3 = OBJC_IVAR___SUIAColorMatrixPrototypeSettings_m45;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

float SUIAColorMatrixPrototypeSettings.caColorMatrix.getter@<S0>(uint64_t a1@<X8>)
{
  [v1 m11];
  *&v3 = v3;
  v42 = LODWORD(v3);
  [v1 m12];
  *&v4 = v4;
  v41 = LODWORD(v4);
  [v1 m13];
  *&v5 = v5;
  v40 = LODWORD(v5);
  [v1 m14];
  *&v6 = v6;
  v39 = LODWORD(v6);
  [v1 m15];
  *&v7 = v7;
  v38 = LODWORD(v7);
  [v1 m21];
  *&v8 = v8;
  v37 = LODWORD(v8);
  [v1 m22];
  *&v9 = v9;
  v36 = LODWORD(v9);
  [v1 m23];
  *&v10 = v10;
  v35 = LODWORD(v10);
  [v1 m24];
  *&v11 = v11;
  v34 = LODWORD(v11);
  [v1 m25];
  *&v12 = v12;
  v33 = LODWORD(v12);
  [v1 m31];
  *&v13 = v13;
  v32 = LODWORD(v13);
  [v1 m32];
  v15 = v14;
  [v1 m33];
  v17 = v16;
  [v1 m34];
  v19 = v18;
  [v1 m35];
  v21 = v20;
  [v1 m41];
  v23 = v22;
  [v1 m42];
  v25 = v24;
  [v1 m43];
  v27 = v26;
  [v1 m44];
  v29 = v28;
  [v1 m45];
  result = v30;
  *a1 = v42;
  *(a1 + 4) = v41;
  *(a1 + 8) = v40;
  *(a1 + 12) = v39;
  *(a1 + 16) = v38;
  *(a1 + 20) = v37;
  *(a1 + 24) = v36;
  *(a1 + 28) = v35;
  *(a1 + 32) = v34;
  *(a1 + 36) = v33;
  *(a1 + 40) = v32;
  *(a1 + 44) = v15;
  *(a1 + 48) = v17;
  *(a1 + 52) = v19;
  *(a1 + 56) = v21;
  *(a1 + 60) = v23;
  *(a1 + 64) = v25;
  *(a1 + 68) = v27;
  *(a1 + 72) = v29;
  *(a1 + 76) = result;
  return result;
}

Swift::Void __swiftcall SUIAColorMatrixPrototypeSettings.setDefaultValues()()
{
  v0.super_class = SUIAColorMatrixPrototypeSettings;
  objc_msgSendSuper2(&v0, sel_setDefaultValues);
  memset(&withColorMatrix, 0, sizeof(withColorMatrix));
  SUIAColorMatrixPrototypeSettings.update(withColorMatrix:)(&withColorMatrix);
}

Swift::Void __swiftcall SUIAColorMatrixPrototypeSettings.update(withColorMatrix:)(CAColorMatrix *withColorMatrix)
{
  [v1 setM11_];
  [v1 setM12_];
  [v1 setM13_];
  [v1 setM14_];
  [v1 setM15_];
  [v1 setM21_];
  [v1 setM22_];
  [v1 setM23_];
  [v1 setM24_];
  [v1 setM25_];
  [v1 setM31_];
  [v1 setM32_];
  [v1 setM33_];
  [v1 setM34_];
  [v1 setM35_];
  [v1 setM41_];
  [v1 setM42_];
  [v1 setM43_];
  [v1 setM44_];
  var19 = withColorMatrix->var19;

  [v1 setM45_];
}

uint64_t static SUIAColorMatrixPrototypeSettings.ignoresKey(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x4D726F6C6F436163 && a2 == 0xED00007869727461)
  {
    return 1;
  }

  return sub_26C615128();
}

Swift::String_optional __swiftcall SUIAColorMatrixPrototypeSettings.drillDownSummary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A4D88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_26C61A5C0;
  [v0 m11];
  v3 = v2;
  v4 = MEMORY[0x277D85048];
  *(v1 + 56) = MEMORY[0x277D85048];
  v5 = sub_26C5E7468();
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  [v0 m12];
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  *(v1 + 72) = v6;
  [v0 m13];
  *(v1 + 136) = v4;
  *(v1 + 144) = v5;
  *(v1 + 112) = v7;
  [v0 m14];
  *(v1 + 176) = v4;
  *(v1 + 184) = v5;
  *(v1 + 152) = v8;
  [v0 m15];
  *(v1 + 216) = v4;
  *(v1 + 224) = v5;
  *(v1 + 192) = v9;
  [v0 m21];
  *(v1 + 256) = v4;
  *(v1 + 264) = v5;
  *(v1 + 232) = v10;
  [v0 m22];
  *(v1 + 296) = v4;
  *(v1 + 304) = v5;
  *(v1 + 272) = v11;
  [v0 m23];
  *(v1 + 336) = v4;
  *(v1 + 344) = v5;
  *(v1 + 312) = v12;
  [v0 m24];
  *(v1 + 376) = v4;
  *(v1 + 384) = v5;
  *(v1 + 352) = v13;
  [v0 m25];
  *(v1 + 416) = v4;
  *(v1 + 424) = v5;
  *(v1 + 392) = v14;
  [v0 m31];
  *(v1 + 456) = v4;
  *(v1 + 464) = v5;
  *(v1 + 432) = v15;
  [v0 m32];
  *(v1 + 496) = v4;
  *(v1 + 504) = v5;
  *(v1 + 472) = v16;
  [v0 m33];
  *(v1 + 536) = v4;
  *(v1 + 544) = v5;
  *(v1 + 512) = v17;
  [v0 m34];
  *(v1 + 576) = v4;
  *(v1 + 584) = v5;
  *(v1 + 552) = v18;
  [v0 m35];
  *(v1 + 616) = v4;
  *(v1 + 624) = v5;
  *(v1 + 592) = v19;
  [v0 m41];
  *(v1 + 656) = v4;
  *(v1 + 664) = v5;
  *(v1 + 632) = v20;
  [v0 m42];
  *(v1 + 696) = v4;
  *(v1 + 704) = v5;
  *(v1 + 672) = v21;
  [v0 m43];
  *(v1 + 736) = v4;
  *(v1 + 744) = v5;
  *(v1 + 712) = v22;
  [v0 m44];
  *(v1 + 776) = v4;
  *(v1 + 784) = v5;
  *(v1 + 752) = v23;
  [v0 m45];
  *(v1 + 816) = v4;
  *(v1 + 824) = v5;
  *(v1 + 792) = v24;

  v25 = sub_26C614E58();
  result.value._object = v26;
  result.value._countAndFlagsBits = v25;
  return result;
}

void _sSo32SUIAColorMatrixPrototypeSettingsC20SystemUIAnimationKitE24settingsControllerModuleSo8PTModuleCSgyFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C61A5D0;
  v1 = sub_26C614E38();
  v2 = sub_26C614E38();
  v3 = objc_opt_self();
  v4 = [v3 rowWithTitle:v1 valueKeyPath:v2];

  if (!v4)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (![v4 precision_])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  sub_26C5CC548(0, &qword_2804A4D98);
  swift_dynamicCast();
  *(v0 + 32) = v68;
  v5 = sub_26C614E38();
  v6 = sub_26C614E38();
  v7 = [v3 rowWithTitle:v5 valueKeyPath:v6];

  if (!v7)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (![v7 precision_])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 40) = v68;
  v8 = sub_26C614E38();
  v9 = sub_26C614E38();
  v10 = [v3 rowWithTitle:v8 valueKeyPath:v9];

  if (!v10)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (![v10 precision_])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 48) = v68;
  v11 = sub_26C614E38();
  v12 = sub_26C614E38();
  v13 = [v3 rowWithTitle:v11 valueKeyPath:v12];

  if (!v13)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (![v13 precision_])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 56) = v68;
  v14 = sub_26C614E38();
  v15 = sub_26C614E38();
  v16 = [v3 rowWithTitle:v14 valueKeyPath:v15];

  if (!v16)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (![v16 precision_])
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 64) = v68;
  v17 = sub_26C614E38();
  v18 = sub_26C614E38();
  v19 = [v3 rowWithTitle:v17 valueKeyPath:v18];

  if (!v19)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (![v19 precision_])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 72) = v68;
  v20 = sub_26C614E38();
  v21 = sub_26C614E38();
  v22 = [v3 rowWithTitle:v20 valueKeyPath:v21];

  if (!v22)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (![v22 precision_])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 80) = v68;
  v23 = sub_26C614E38();
  v24 = sub_26C614E38();
  v25 = [v3 rowWithTitle:v23 valueKeyPath:v24];

  if (!v25)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (![v25 precision_])
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 88) = v68;
  v26 = sub_26C614E38();
  v27 = sub_26C614E38();
  v28 = [v3 rowWithTitle:v26 valueKeyPath:v27];

  if (!v28)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (![v28 precision_])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 96) = v68;
  v29 = sub_26C614E38();
  v30 = sub_26C614E38();
  v31 = [v3 rowWithTitle:v29 valueKeyPath:v30];

  if (!v31)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (![v31 precision_])
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 104) = v68;
  v32 = sub_26C614E38();
  v33 = sub_26C614E38();
  v34 = [v3 rowWithTitle:v32 valueKeyPath:v33];

  if (!v34)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (![v34 precision_])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 112) = v68;
  v35 = sub_26C614E38();
  v36 = sub_26C614E38();
  v37 = [v3 rowWithTitle:v35 valueKeyPath:v36];

  if (!v37)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (![v37 precision_])
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 120) = v68;
  v38 = sub_26C614E38();
  v39 = sub_26C614E38();
  v40 = [v3 rowWithTitle:v38 valueKeyPath:v39];

  if (!v40)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (![v40 precision_])
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 128) = v68;
  v41 = sub_26C614E38();
  v42 = sub_26C614E38();
  v43 = [v3 rowWithTitle:v41 valueKeyPath:v42];

  if (!v43)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (![v43 precision_])
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 136) = v68;
  v44 = sub_26C614E38();
  v45 = sub_26C614E38();
  v46 = [v3 rowWithTitle:v44 valueKeyPath:v45];

  if (!v46)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (![v46 precision_])
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 144) = v68;
  v47 = sub_26C614E38();
  v48 = sub_26C614E38();
  v49 = [v3 rowWithTitle:v47 valueKeyPath:v48];

  if (!v49)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (![v49 precision_])
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 152) = v68;
  v50 = sub_26C614E38();
  v51 = sub_26C614E38();
  v52 = [v3 rowWithTitle:v50 valueKeyPath:v51];

  if (!v52)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (![v52 precision_])
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 160) = v68;
  v53 = sub_26C614E38();
  v54 = sub_26C614E38();
  v55 = [v3 rowWithTitle:v53 valueKeyPath:v54];

  if (!v55)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (![v55 precision_])
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 168) = v68;
  v56 = sub_26C614E38();
  v57 = sub_26C614E38();
  v58 = [v3 rowWithTitle:v56 valueKeyPath:v57];

  if (!v58)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (![v58 precision_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 176) = v68;
  v59 = sub_26C614E38();
  v60 = sub_26C614E38();
  v61 = [v3 rowWithTitle:v59 valueKeyPath:v60];

  if (!v61)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (![v61 precision_])
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  sub_26C614FE8();
  swift_unknownObjectRelease();

  sub_26C5CD7F8(v69, v70);
  swift_dynamicCast();
  *(v0 + 184) = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_26C619B70;
  v63 = objc_opt_self();
  sub_26C6118E8(v0);
  v64 = sub_26C614EB8();

  v65 = [v63 sectionWithRows_];

  if (v65)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v62 + 56) = sub_26C5CC548(0, &qword_2804A4C70);
    *(v62 + 32) = v65;
    v66 = sub_26C614E38();
    v67 = sub_26C614EB8();

    [v63 moduleWithTitle:v66 contents:v67];

    return;
  }

LABEL_83:
  __break(1u);
}

uint64_t type metadata accessor for ScanwaveCommonEvent()
{
  result = qword_2804A5280;
  if (!qword_2804A5280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26C5F0928()
{
  type metadata accessor for ScanwaveActivateRequest(319);
  if (v0 <= 0x3F)
  {
    sub_26C5F09B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26C5F09B0()
{
  if (!qword_2804A5290)
  {
    sub_26C5F0A0C();
    v0 = sub_26C614F48();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A5290);
    }
  }
}

unint64_t sub_26C5F0A0C()
{
  result = qword_2804A5298[0];
  if (!qword_2804A5298[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804A5298);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26C5F0A74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_26C5F0ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C5F0B0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_26C5F0B50(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_26C5F0B50(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }

    v4 = 0;
    v5 = 1 << *(a1 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a1 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a2 + 56;
    while (v7)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_14:
      v13 = (*(a1 + 48) + 16 * (v10 | (v4 << 6)));
      v15 = *v13;
      v14 = v13[1];
      sub_26C615168();
      sub_26C615178();
      v16 = sub_26C615198();
      v17 = -1 << *(a2 + 32);
      v18 = v16 & ~v17;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }

      v19 = ~v17;
      while (1)
      {
        v20 = (*(a2 + 48) + 16 * v18);
        v22 = *v20;
        v21 = v20[1];
        if (v22 == v15 && v21 == v14)
        {
          break;
        }

        v18 = (v18 + 1) & v19;
        if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          return 0;
        }
      }
    }

    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
      }

      if (v4 >= v8)
      {
        break;
      }

      v12 = *(a1 + 56 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_14;
      }
    }
  }

  return 1;
}

uint64_t sub_26C5F0D0C()
{
  if ((sub_26C614E28() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FromToValue();
  return sub_26C614E28() & 1;
}

uint64_t sub_26C5F0DA4()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C5F0E14(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_26C5F0F64(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_26C5F11AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5F11F4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_26C5F1278(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5F12C0(uint64_t result, int a2, int a3)
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
      *(result + 104) = (a2 - 1);
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

unint64_t sub_26C5F1340()
{
  result = qword_2804A5320;
  if (!qword_2804A5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5320);
  }

  return result;
}

unint64_t sub_26C5F1398()
{
  result = qword_2804A5328;
  if (!qword_2804A5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5328);
  }

  return result;
}

uint64_t sub_26C5F13FC()
{
  v0 = type metadata accessor for ScanwaveCommonAction();
  __swift_allocate_value_buffer(v0, qword_2804A7300);
  v1 = __swift_project_value_buffer(v0, qword_2804A7300);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_26C5F1468()
{
  result = qword_2804A5330;
  if (!qword_2804A5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5330);
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for ScanwaveCommonAction()
{
  result = qword_2804A5338;
  if (!qword_2804A5338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_26C5F15B4()
{
  sub_26C5F163C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ScanwaveActivateResponse(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_26C5F163C()
{
  if (!qword_2804A5348)
  {
    v0 = sub_26C614FD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A5348);
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

uint64_t getEnumTagSinglePayload for ScanwaveCommonAction.UpdateOutputModelCallbackInfo(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScanwaveCommonAction.UpdateOutputModelCallbackInfo(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C5F1738()
{
  v1 = *v0;
  sub_26C615168();
  MEMORY[0x26D6A46C0](v1);
  return sub_26C615198();
}

uint64_t sub_26C5F17AC()
{
  v1 = *v0;
  sub_26C615168();
  MEMORY[0x26D6A46C0](v1);
  return sub_26C615198();
}

__n128 sub_26C5F1808@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_26C5F1814(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26C5F184C()
{
  result = qword_2804A55D0;
  if (!qword_2804A55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A55D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScanwaveCommonAction.UpdateOutputModelCallbackStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScanwaveCommonAction.UpdateOutputModelCallbackStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26C5F1A44()
{
  result = qword_2804A5350;
  if (!qword_2804A5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A5350);
  }

  return result;
}

id sub_26C5F1BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26C5F1C00()
{
  result = qword_2804A5358;
  if (!qword_2804A5358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804A5358);
  }

  return result;
}

uint64_t static UnsafeMutablePointer.with<A>(_:_:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_26C614FC8();
  a2();

  return MEMORY[0x2821FC9F8](v6, a4);
}

uint64_t sub_26C5F1D00()
{
  result = sub_26C614DD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C5F1DB4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26C5F1DEC()
{
  result = type metadata accessor for ExternalRequestID(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26C5F1EAC()
{
  sub_26C615168();
  sub_26C614DD8();
  sub_26C5F2088(qword_2804A5390, MEMORY[0x277CC95F0]);
  sub_26C614E08();
  return sub_26C615198();
}

uint64_t sub_26C5F1F34()
{
  sub_26C614DD8();
  sub_26C5F2088(qword_2804A5390, MEMORY[0x277CC95F0]);

  return sub_26C614E08();
}

uint64_t sub_26C5F1FB8()
{
  sub_26C615168();
  sub_26C614DD8();
  sub_26C5F2088(qword_2804A5390, MEMORY[0x277CC95F0]);
  sub_26C614E08();
  return sub_26C615198();
}

uint64_t sub_26C5F2088(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C5F20D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalRequestID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_26C5F2134@<Q0>(uint64_t a1@<X8>)
{
  sub_26C5F22C0(__src);
  memcpy(__dst, __src, 0x1B0uLL);
  sub_26C5F2300(v6);
  memcpy(&__dst[432], v6, 0x1B0uLL);
  sub_26C5F2360(v7);
  *&v3[69] = *(MEMORY[0x277CD9DE8] + 64);
  *&v3[85] = *(MEMORY[0x277CD9DE8] + 80);
  *&v3[101] = *(MEMORY[0x277CD9DE8] + 96);
  *&v3[117] = *(MEMORY[0x277CD9DE8] + 112);
  *&v3[5] = *MEMORY[0x277CD9DE8];
  *&v3[21] = *(MEMORY[0x277CD9DE8] + 16);
  *&v3[37] = *(MEMORY[0x277CD9DE8] + 32);
  *&v3[53] = *(MEMORY[0x277CD9DE8] + 48);
  memcpy(a1, __dst, 0x360uLL);
  *(a1 + 864) = 0u;
  *(a1 + 880) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0x20000;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0;
  *(a1 + 1040) = 0x20000;
  *(a1 + 1048) = 0u;
  *(a1 + 1064) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1128) = 0;
  *(a1 + 1136) = xmmword_26C61AC50;
  memcpy((a1 + 1152), v7, 0x110uLL);
  *(a1 + 1424) = 0u;
  *(a1 + 1440) = 0u;
  *(a1 + 1456) = 0u;
  *(a1 + 1472) = 0u;
  *(a1 + 1488) = 256;
  *(a1 + 1490) = 0;
  *(a1 + 1587) = *&v3[96];
  *(a1 + 1603) = *&v3[112];
  *(a1 + 1616) = *&v3[125];
  *(a1 + 1523) = *&v3[32];
  *(a1 + 1539) = *&v3[48];
  *(a1 + 1555) = *&v3[64];
  *(a1 + 1571) = *&v3[80];
  result = *&v3[16];
  *(a1 + 1491) = *v3;
  *(a1 + 1507) = *&v3[16];
  *(a1 + 1656) = 0u;
  *(a1 + 1672) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1640) = 0u;
  *(a1 + 1688) = 256;
  *(a1 + 1690) = 0;
  *(a1 + 1696) = 0;
  *(a1 + 1704) = MEMORY[0x277D84F90];
  return result;
}

double sub_26C5F22C0(_OWORD *a1)
{
  result = 0.0;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

_OWORD *sub_26C5F2300(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0x20000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 424) = 0;
  *(a1 + 72) = 0u;
  result = (a1 + 72);
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  return result;
}

double sub_26C5F2360(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return result;
}

uint64_t sub_26C5F2398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_26C5F23F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_26C5F24A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 432))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 344);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5F24EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 432) = 1;
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
      *(result + 344) = (a2 - 1);
      return result;
    }

    *(result + 432) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_20SystemUIAnimationKit19ScanwaveOutputModelV10CircleMaskVSg(uint64_t a1)
{
  v1 = *(a1 + 344);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_20SystemUIAnimationKit19ScanwaveOutputModelV4MeshVSg(uint64_t a1)
{
  v1 = *(a1 + 72);
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

uint64_t sub_26C5F25F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1712))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 1704);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5F2638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1704) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 1712) = 1;
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
      *(result + 1704) = (a2 - 1);
      return result;
    }

    *(result + 1712) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C5F2854(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 280))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5F28A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 280) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 280) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_26C5F2960(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5F29B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
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

uint64_t sub_26C5F2A48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 112))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5F2A9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C5F2B0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 432))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5F2B60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 432) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 432) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
    }
  }

  return result;
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

uint64_t sub_26C5F2C50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26C5F2C98(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_26C5F2D10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 96))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 66);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_26C5F2D64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 66) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_26C5F2DD8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 65))
  {
    if ((*(a2 + 65) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 65))
    {
      return 0;
    }

    v4 = *(a2 + 48);
    v11[2] = *(a2 + 32);
    v11[3] = v4;
    v12 = *(a2 + 64);
    v5 = *(a2 + 16);
    v11[0] = *a2;
    v11[1] = v5;
    v6 = *(a1 + 48);
    v9[2] = *(a1 + 32);
    v9[3] = v6;
    v10 = *(a1 + 64);
    v7 = *(a1 + 16);
    v9[0] = *a1;
    v9[1] = v7;
    if ((sub_26C5ED1F0(v9, v11) & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 66) == *(a2 + 66))
  {
    type metadata accessor for FluidBehaviorAnimatedValue();
    return sub_26C614E28() & 1;
  }

  return 0;
}

void sub_26C5F2EE0()
{
  sub_26C5F3344();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26C5F2F70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 67) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 67) & ~v6);
      }

      v15 = *(a1 + 66);
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_26C5F30FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 67) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 67] & ~v9;

    v19(v20);
  }

  else
  {
    a1[66] = a2 + 1;
  }
}

void sub_26C5F3344()
{
  if (!qword_2804A5418)
  {
    v0 = sub_26C614FD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2804A5418);
    }
  }
}

void sub_26C5F3394(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26C5F33FC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ExternalContinuation(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_26C603BBC(a1, &qword_2804A5440);
    sub_26C5FF520(a2, v7);
    sub_26C602660(a2, type metadata accessor for ExternalRequestID);
    return sub_26C603BBC(v7, &qword_2804A5440);
  }

  else
  {
    sub_26C603A14(a1, v10, type metadata accessor for ExternalContinuation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_26C600634(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_26C602660(a2, type metadata accessor for ExternalRequestID);
    *v2 = v15;
  }

  return result;
}

uint64_t sub_26C5F35E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_26C5F3628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

char *sub_26C5F3688(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = &v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration];
  *v6 = 0;
  v6[1] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageMode] = 2;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationMaskView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_fillLightMaskView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurBackdropView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_inverseBlurMaskView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_circleMaskView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_meshBackdropView] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_sourceImageView] = 0;
  v7 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_animatableProperties;
  v8 = MEMORY[0x277D84F90];
  *&v3[v7] = sub_26C602C88(MEMORY[0x277D84F90]);
  v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce] = 0;
  v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didPrepareInitialUpdate] = 0;
  v9 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_externalContinuations;
  *&v3[v9] = sub_26C602DA4(v8);
  v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate] = 0;
  v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_hasEnqueuedPreCAUpdate] = 0;
  *&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_pendingRootComponentUpdates] = v8;
  v10 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings;
  v11 = [objc_opt_self() rootSettings];
  v12 = *&v11[OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings];

  *&v3[v10] = v12;
  v13 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_timerController;
  type metadata accessor for LayoutTimerController();
  v14 = swift_allocObject();
  v14[2] = CGSizeMake;
  v14[3] = 0;
  v14[4] = sub_26C602B70(v8);
  *&v3[v13] = v14;
  v15 = &v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_rootComponent];
  sub_26C603C70(__src);
  memcpy(v15, __src, 0x511uLL);
  type metadata accessor for RootComponent(0);
  type metadata accessor for RootComponent.State(0);
  swift_storeEnumTagMultiPayload();
  v16 = &v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_transactionCommitObserverProvider];
  *(v16 + 3) = &type metadata for DefaultCATransactionCommitObserverProvider;
  *(v16 + 4) = &off_287D1EC18;
  v17 = *&v3[v10];
  sub_26C5CBB7C(v17, v27);

  memcpy(&v3[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings], v27, 0x4D1uLL);
  if (a2)
  {
    v18 = sub_26C614E38();
  }

  else
  {
    v18 = 0;
  }

  v26.receiver = v3;
  v26.super_class = type metadata accessor for ScanwaveViewController(0);
  v19 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, v18, a3);

  v20 = *&v19[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings];
  v21 = v19;
  v22 = v20;
  [v22 addKeyPathObserver_];

  v23 = *&v21[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_timerController];

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();

  *(v23 + 16) = sub_26C603CE0;
  *(v23 + 24) = v24;

  return v21;
}

uint64_t sub_26C5F3A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    *v6 = a1;
    v6[1] = a2;
    type metadata accessor for ScanwaveCommonEvent();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_26C5F5998(v6);

    return sub_26C602660(v6, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
  }

  return result;
}

id ScanwaveViewController.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings] removeKeyPathObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScanwaveViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26C5F3EBC()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ScanwaveViewController(0);
  result = objc_msgSendSuper2(&v4, sel_viewDidLayoutSubviews);
  if ((v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce] = 1;
    v2 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didPrepareInitialUpdate;
    if ((v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didPrepareInitialUpdate] & 1) == 0)
    {
      v3 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
      result = swift_beginAccess();
      if (*&v0[v3])
      {
        v0[v2] = 1;
        return sub_26C5F5B5C();
      }
    }
  }

  return result;
}

uint64_t sub_26C5F3FC0(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5440);
  MEMORY[0x28223BE20](v6 - 8);
  v23 = &v23 - v7;
  v8 = type metadata accessor for ExternalRequestID(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ExternalContinuation(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ScanwaveActivateRequest(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26C614DC8();
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  sub_26C6025F8(v17, v10, type metadata accessor for ExternalRequestID);
  sub_26C6025F8(v10, v14, type metadata accessor for ExternalRequestID);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_26C5FF4F4;
  *(v19 + 24) = v18;
  v20 = &v14[*(v11 + 20)];
  v20[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5448);
  *v20 = sub_26C6025BC;
  v20[1] = v19;

  sub_26C602660(v10, type metadata accessor for ExternalRequestID);
  sub_26C6025F8(v14, v10, type metadata accessor for ExternalRequestID);
  v21 = v23;
  sub_26C6025F8(v14, v23, type metadata accessor for ExternalContinuation);
  (*(v12 + 56))(v21, 0, 1, v11);
  swift_beginAccess();
  sub_26C5F33FC(v21, v10);
  swift_endAccess();
  sub_26C6025F8(v17, v5, type metadata accessor for ScanwaveActivateRequest);
  type metadata accessor for ScanwaveCommonEvent();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_26C5F5998(v5);
  sub_26C602660(v5, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
  sub_26C602660(v17, type metadata accessor for ScanwaveActivateRequest);
  return sub_26C602660(v14, type metadata accessor for ExternalContinuation);
}

id sub_26C5F43BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a2 = *v3;
  a2[1] = v5;
  return sub_26C6026C0(v4, v5);
}

void sub_26C5F4414(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_26C6026C0(v2, v3);
  sub_26C602700(v5, v6);
  sub_26C5F4494();
}

void sub_26C5F4494()
{
  v89 = sub_26C614D18();
  v91 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v2 = &v74 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C614DA8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C614D48();
  v88 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v87 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v74 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v74 - v12;
  v14 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didPrepareInitialUpdate;
  if (*(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didPrepareInitialUpdate) != 1)
  {
    goto LABEL_37;
  }

  v15 = *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_depthDistanceFieldImageView);
  if (v15)
  {
    v16 = v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
    swift_beginAccess();
    if (*v16)
    {
      v17 = *(v16 + 8);
    }

    else
    {
      v17 = 0;
    }

    v18 = v15;
    [v18 setImage_];
  }

  v19 = *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_sourceImageView);
  if (v19)
  {
    v20 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
    swift_beginAccess();
    v21 = *(v0 + v20);
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v19;
    [v23 setImage_];
  }

  if ((*(v0 + v14) & 1) == 0)
  {
LABEL_37:
    if (*(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce))
    {
      v24 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
      swift_beginAccess();
      if (*(v0 + v24))
      {
        *(v0 + v14) = 1;
        sub_26C5F5B5C();
      }
    }
  }

  v25 = [objc_opt_self() standardUserDefaults];
  v26 = sub_26C614E38();
  v27 = [v25 BOOLForKey_];

  if (v27)
  {
    v28 = v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
    swift_beginAccess();
    v29 = *v28;
    if (*v28)
    {
      v30 = *(v28 + 8);
      v83 = v29;
      v31 = v29;
      v82 = v30;
      v32 = v30;
      v33 = UIImagePNGRepresentation(v31);
      if (v33)
      {
        v34 = v33;
        v86 = sub_26C614D68();
        v36 = v35;
      }

      else
      {
        v86 = 0;
        v36 = 0xF000000000000000;
      }

      v37 = UIImagePNGRepresentation(v32);
      if (v37)
      {
        v38 = v37;
        v75 = sub_26C614D68();
        v81 = v39;
      }

      else
      {
        v75 = 0;
        v81 = 0xF000000000000000;
      }

      v85 = v36;
      v84 = v7;
      v40 = [objc_opt_self() defaultManager];
      v41 = [v40 temporaryDirectory];

      sub_26C614D28();
      v42 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v43 = sub_26C614E38();
      [v42 setDateFormat_];

      sub_26C614D98();
      v44 = sub_26C614D88();
      (*(v4 + 8))(v6, v3);
      v80 = v42;
      v45 = [v42 stringFromDate_];

      v46 = sub_26C614E48();
      v48 = v47;

      v92 = v46;
      v93 = v48;

      MEMORY[0x26D6A43B0](0x656372756F732DLL, 0xE700000000000000);
      v49 = sub_26C614E38();

      v50 = sub_26C614E38();
      v51 = [v49 stringByAppendingPathExtension_];

      if (v51)
      {
        v52 = v13;
        v53 = sub_26C614E48();
        v55 = v54;

        v92 = v53;
        v93 = v55;
        v56 = v91;
        v57 = *(v91 + 104);
        v78 = *MEMORY[0x277CC91D0];
        v58 = v89;
        v77 = v57;
        v57(v2);
        v76 = sub_26C603CE8();
        v79 = v52;
        sub_26C614D38();
        v59 = *(v56 + 8);
        v91 = v56 + 8;
        v59(v2, v58);
        v60 = v85;
        if (v85 >> 60 != 15)
        {
          sub_26C603DA4(v86, v85);
          sub_26C614D78();
          sub_26C603D3C(v86, v60);
        }

        v92 = v46;
        v93 = v48;

        MEMORY[0x26D6A43B0](0x68747065642DLL, 0xE600000000000000);
        v61 = sub_26C614E38();

        v62 = sub_26C614E38();
        v63 = [v61 stringByAppendingPathExtension_];

        if (v63)
        {

          v64 = sub_26C614E48();
          v66 = v65;

          v92 = v64;
          v93 = v66;
          v67 = v89;
          v77(v2, v78, v89);
          v68 = v87;
          v69 = v79;
          sub_26C614D38();
          v59(v2, v67);

          v70 = v81;
          if (v81 >> 60 == 15)
          {

            sub_26C602700(v83, v82);
            v71 = v84;
          }

          else
          {
            v72 = v75;
            sub_26C603DA4(v75, v81);
            sub_26C614D78();
            v71 = v84;
            sub_26C603D3C(v72, v70);

            sub_26C602700(v83, v82);
            sub_26C603D3C(v72, v70);
          }

          sub_26C603D3C(v86, v85);
          v73 = *(v88 + 8);
          v73(v68, v71);
          v73(v90, v71);
          v73(v69, v71);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

id sub_26C5F4DC0@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  a1[1] = v5;
  return sub_26C6026C0(v4, v5);
}

void sub_26C5F4E14(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_imageConfiguration;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_26C602700(v5, v6);
  sub_26C5F4494();
}

void (*sub_26C5F4E74(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26C5F4ED8;
}

void sub_26C5F4ED8(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_26C5F4494();
  }
}

id sub_26C5F4F0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_prototypeSettings);
  sub_26C5CBB7C(v1, __src);

  memcpy(__dst, (v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings), 0x4D1uLL);
  memcpy((v0 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings), __src, 0x4D1uLL);
  sub_26C602740(__dst);
  return sub_26C5F5B5C();
}

uint64_t sub_26C5F5010(uint64_t a1)
{
  v61 = v1;
  v2 = MEMORY[0x28223BE20](a1);
  v3 = type metadata accessor for ScanwaveCommonEvent();
  MEMORY[0x28223BE20](v3 - 8);
  v59 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  MEMORY[0x28223BE20](v60);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + 16);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v10 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_rootComponent;
  v58 = *(v5 + 72);
  v11 = MEMORY[0x277D84F90];
  v57 = xmmword_26C619B70;
  while (1)
  {
    sub_26C6025F8(v9, v7, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      memcpy(v69, v7, 0x511uLL);
      v19 = v61;
      swift_beginAccess();
      memcpy(v70, v69, 0x511uLL);
      CGSizeMake(v70);
      memcpy(v71, (v19 + v10), 0x511uLL);
      v20 = *v70;
      v21 = *&v70[1];
      v22 = *&v70[2];
      v23 = *&v70[3];
      v24 = *&v70[4];
      v25 = *&v70[5];
      v26 = *&v70[6];
      v27 = *&v70[7];
      memcpy(v68, &v70[8], sizeof(v68));
      memcpy(&v67[7], (v19 + v10), 0x511uLL);
      memcpy(v73, &v70[8], sizeof(v73));
      v72[0] = v70[0];
      v72[1] = v70[1];
      v72[2] = v70[2];
      v72[3] = v70[3];
      v72[4] = v70[4];
      v72[5] = v70[5];
      v72[6] = v70[6];
      v72[7] = v70[7];
      if (sub_26C603B48(v72) == 1)
      {
        memcpy(v65, &v67[7], sizeof(v65));
        if (sub_26C603B48(v65) == 1)
        {
          sub_26C603B60(v69, v64);
          sub_26C603C78(v71, v64, &qword_2804A5618);
LABEL_15:
          *v65 = v20;
          *&v65[8] = v21;
          *&v65[16] = v22;
          *&v65[24] = v23;
          *&v65[32] = v24;
          *&v65[40] = v25;
          *&v65[48] = v26;
          *&v65[56] = v27;
          memcpy(&v65[64], v68, 0x4D1uLL);
          sub_26C603BBC(v65, &qword_2804A5618);
          v28 = MEMORY[0x277D84F90];
          goto LABEL_35;
        }
      }

      else
      {
        memcpy(v65, &v67[7], sizeof(v65));
        if (sub_26C603B48(v65) != 1)
        {
          memcpy(v64, &v67[7], 0x511uLL);
          v55 = *&v64[1];
          v56 = *v64;
          v53 = *&v64[3];
          v54 = *&v64[2];
          v51 = *&v64[5];
          v52 = *&v64[4];
          v49 = *&v64[7];
          v50 = *&v64[6];
          sub_26C603B60(v69, v62);
          sub_26C603C78(v71, v62, &qword_2804A5618);
          v76.origin.x = v20;
          v76.origin.y = v21;
          v76.size.width = v22;
          v76.size.height = v23;
          v78.origin.y = v55;
          v78.origin.x = v56;
          v78.size.height = v53;
          v78.size.width = v54;
          if (CGRectEqualToRect(v76, v78) && (v77.origin.x = v24, v77.origin.y = v25, v77.size.width = v26, v77.size.height = v27, v79.origin.y = v51, v79.origin.x = v52, v79.size.height = v49, v79.size.width = v50, CGRectEqualToRect(v77, v79)))
          {
            memcpy(v74, v68, 0x4D1uLL);
            memcpy(v75, &v67[71], 0x4D1uLL);
            v36 = sub_26C5CB284(v74, v75);
            sub_26C603BBC(v64, &qword_2804A5618);
            if (v36)
            {
              goto LABEL_15;
            }
          }

          else
          {
            sub_26C603BBC(v64, &qword_2804A5618);
          }

          *v62 = v20;
          *&v62[1] = v21;
          *&v62[2] = v22;
          *&v62[3] = v23;
          *&v62[4] = v24;
          *&v62[5] = v25;
          *&v62[6] = v26;
          *&v62[7] = v27;
          memcpy(v63, v68, sizeof(v63));
          v29 = v62;
          v30 = &qword_2804A5618;
LABEL_32:
          sub_26C603BBC(v29, v30);
          memcpy(v65, (v61 + v10), sizeof(v65));
          memcpy((v61 + v10), v70, 0x511uLL);
          sub_26C603B60(v69, v64);
          sub_26C603BBC(v65, &qword_2804A5618);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5628);
          v37 = type metadata accessor for ScanwaveCommonAction();
          v38 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = v57;
          if (qword_2804A4BF0 != -1)
          {
            swift_once();
          }

          v39 = __swift_project_value_buffer(v37, qword_2804A7300);
          sub_26C6025F8(v39, v28 + v38, type metadata accessor for ScanwaveCommonAction);
LABEL_35:
          result = swift_endAccess();
          v40 = *(v28 + 16);
          v41 = v11[2];
          v42 = v41 + v40;
          if (__OFADD__(v41, v40))
          {
            goto LABEL_52;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && (v44 = v11[3] >> 1, v44 >= v42))
          {
            if (*(v28 + 16))
            {
LABEL_39:
              v45 = v44 - v11[2];
              result = type metadata accessor for ScanwaveCommonAction();
              if (v45 < v40)
              {
                goto LABEL_55;
              }

              swift_arrayInitWithCopy();

              if (v40)
              {
                v46 = v11[2];
                v34 = __OFADD__(v46, v40);
                v47 = v46 + v40;
                if (v34)
                {
                  goto LABEL_57;
                }

                v11[2] = v47;
              }

LABEL_48:
              sub_26C603C1C(v69);
              goto LABEL_5;
            }
          }

          else
          {
            if (v41 <= v42)
            {
              v48 = v41 + v40;
            }

            else
            {
              v48 = v41;
            }

            v11 = sub_26C609214(isUniquelyReferenced_nonNull_native, v48, 1, v11);
            v44 = v11[3] >> 1;
            if (*(v28 + 16))
            {
              goto LABEL_39;
            }
          }

          if (v40)
          {
            goto LABEL_54;
          }

          goto LABEL_48;
        }
      }

      *v65 = v20;
      *&v65[8] = v21;
      *&v65[16] = v22;
      *&v65[24] = v23;
      *&v65[32] = v24;
      *&v65[40] = v25;
      *&v65[48] = v26;
      *&v65[56] = v27;
      memcpy(&v65[64], v68, 0x4D1uLL);
      memcpy(v66, v67, sizeof(v66));
      sub_26C603B60(v69, v64);
      sub_26C603C78(v71, v64, &qword_2804A5618);
      v29 = v65;
      v30 = &unk_2804A5620;
      goto LABEL_32;
    }

    v13 = v59;
    sub_26C603A14(v7, v59, type metadata accessor for ScanwaveCommonEvent);
    swift_beginAccess();
    v14 = sub_26C604214(v13);
    result = swift_endAccess();
    v15 = *(v14 + 16);
    v16 = v11[2];
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    v18 = swift_isUniquelyReferenced_nonNull_native();
    if (v18 && v17 <= v11[3] >> 1)
    {
      if (!*(v14 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v31 = v16 + v15;
      }

      else
      {
        v31 = v16;
      }

      v11 = sub_26C609214(v18, v31, 1, v11);
      if (!*(v14 + 16))
      {
LABEL_3:

        if (v15)
        {
          goto LABEL_53;
        }

        goto LABEL_4;
      }
    }

    v32 = (v11[3] >> 1) - v11[2];
    result = type metadata accessor for ScanwaveCommonAction();
    if (v32 < v15)
    {
      goto LABEL_56;
    }

    swift_arrayInitWithCopy();

    if (v15)
    {
      v33 = v11[2];
      v34 = __OFADD__(v33, v15);
      v35 = v33 + v15;
      if (v34)
      {
        goto LABEL_58;
      }

      v11[2] = v35;
    }

LABEL_4:
    sub_26C602660(v59, type metadata accessor for ScanwaveCommonEvent);
LABEL_5:
    v9 += v58;
    if (!--v8)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

void sub_26C5F5998(uint64_t a1)
{
  v3 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_pendingRootComponentUpdates;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = v8[2];
  sub_26C6025F8(a1, v6, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_26C6092DC(0, v9 + 1, 1, v8);
    *(v1 + v7) = v8;
  }

  v12 = v8[2];
  v11 = v8[3];
  if (v12 >= v11 >> 1)
  {
    v8 = sub_26C6092DC(v11 > 1, v12 + 1, 1, v8);
  }

  v8[2] = v12 + 1;
  sub_26C603A14(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
  *(v1 + v7) = v8;
  swift_endAccess();
  if ((*(v1 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate) & 1) == 0 && !v9)
  {
    sub_26C5F69B0();
  }
}

id sub_26C5F5B5C()
{
  v1 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  result = MEMORY[0x28223BE20](v1);
  v4 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_didLayoutSubviewsOnce] == 1)
  {
    result = [v0 view];
    if (result)
    {
      v5 = result;
      [result bounds];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v29.origin.x = v7;
      v29.origin.y = v9;
      v29.size.width = v11;
      v29.size.height = v13;
      MaxY = CGRectGetMaxY(v29);
      result = [v0 view];
      if (result)
      {
        v15 = result;
        v16 = v7 + (v11 + -78.0) * 0.5;
        v17 = MaxY + -50.0 + -78.0;
        [result bounds];
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v25 = v24;

        v26 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings;
        memcpy(v28, &v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_componentPrototypeSettings], 0x4D1uLL);
        v4->i64[0] = v19;
        v4->i64[1] = v21;
        v4[1].i64[0] = v23;
        v4[1].i64[1] = v25;
        *v4[2].i64 = v16;
        *&v4[2].i64[1] = v17;
        v4[3] = vdupq_n_s64(0x4053800000000000uLL);
        memcpy(&v4[4], &v0[v26], 0x4D1uLL);
        swift_storeEnumTagMultiPayload();
        sub_26C603EB8(v28, v27);
        sub_26C603EB8(v28, v27);
        sub_26C5F5998(v4);
        sub_26C602740(v28);
        return sub_26C602660(v4, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26C5F5D70(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = 0;
    v3 = result + 48;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = (v3 + 24 * v2);
      v6 = v2;
      while (1)
      {
        if (v6 >= v1)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        v2 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_19;
        }

        v7 = *v5;
        if (v7 != 2)
        {
          break;
        }

        ++v6;
        v5 += 24;
        if (v2 == v1)
        {
          goto LABEL_14;
        }
      }

      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_26C6094E0(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_26C6094E0((v10 > 1), v11 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 24 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
      *(v12 + 48) = v7 & 1;
    }

    while (v2 != v1);
LABEL_14:
    sub_26C5F7C34(v4);
  }

  return result;
}

void sub_26C5F5EC4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ExternalRequestID(0);
  v77 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v88 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5440);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v77 - v10;
  v12 = type metadata accessor for ExternalContinuation(0);
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ScanwaveActivateResponse(0);
  MEMORY[0x28223BE20](v92);
  v91 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ScanwaveViewController.OrderedStandardTransactionAction(0);
  MEMORY[0x28223BE20](v94);
  v95 = (&v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(a1 + 16);
  if (!v18)
  {
    return;
  }

  v86 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_externalContinuations;
  v90 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_timerController;
  v19 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v85 = (v78 + 56);
  v84 = (v78 + 48);
  v83 = &v97;
  v79 = *MEMORY[0x277CBE738];
  v93 = *(v16 + 72);
  v80 = v11;
  v87 = v12;
  v89 = v14;
  v82 = v2;
  v81 = v8;
  while (1)
  {
    sub_26C6025F8(v19, v95, type metadata accessor for ScanwaveViewController.OrderedStandardTransactionAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      break;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v21 = *v95;
      v22 = v95[1];
      v23 = *(v2 + v90);
      swift_beginAccess();
      v24 = sub_26C60B598(v21, v22);
      if (v25)
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *(v23 + 32);
        v102[0] = v28;
        *(v23 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_26C60ABC4();
          v28 = v102[0];
        }

        v29 = *(*(v28 + 56) + 8 * v26);
        sub_26C60B540(v26, v28);
        *(v23 + 32) = v28;
        swift_endAccess();
        [v29 invalidate];
      }

      else
      {
        swift_endAccess();
      }

      goto LABEL_4;
    }

    v40 = v91;
    sub_26C603A14(v95, v91, type metadata accessor for ScanwaveActivateResponse);
    v98 = v92;
    v99 = sub_26C603E70(&qword_2804A5608, type metadata accessor for ScanwaveActivateResponse);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
    sub_26C6025F8(v40, boxed_opaque_existential_1, type metadata accessor for ScanwaveActivateResponse);
    v42 = __swift_project_boxed_opaque_existential_0(aBlock, v98);
    sub_26C6025F8(v42, v8, type metadata accessor for ExternalRequestID);
    v43 = v86;
    swift_beginAccess();
    v44 = sub_26C60A1F4(v8);
    if (v45)
    {
      v46 = v44;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v48 = *(v2 + v43);
      v101 = v48;
      *(v2 + v43) = 0x8000000000000000;
      if (!v47)
      {
        sub_26C60AD24();
        v48 = v101;
      }

      sub_26C602660(*(v48 + 48) + *(v77 + 72) * v46, type metadata accessor for ExternalRequestID);
      sub_26C603A14(*(v48 + 56) + *(v78 + 72) * v46, v11, type metadata accessor for ExternalContinuation);
      sub_26C60A368(v46, v48);
      sub_26C602660(v8, type metadata accessor for ExternalRequestID);
      *(v2 + v43) = v48;

      v49 = 0;
    }

    else
    {
      sub_26C602660(v8, type metadata accessor for ExternalRequestID);
      v49 = 1;
    }

    v66 = v87;
    (*v85)(v11, v49, 1, v87);
    swift_endAccess();
    if ((*v84)(v11, 1, v66) == 1)
    {
      goto LABEL_42;
    }

    sub_26C603A14(v11, v14, type metadata accessor for ExternalContinuation);
    v67 = __swift_project_boxed_opaque_existential_0(aBlock, v98);
    v68 = v88;
    sub_26C6025F8(v67, v88, type metadata accessor for ExternalRequestID);
    v69 = sub_26C614DB8();
    sub_26C602660(v68, type metadata accessor for ExternalRequestID);
    if ((v69 & 1) == 0)
    {
      goto LABEL_40;
    }

    sub_26C603AE0(&v14[*(v66 + 20)], v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A5448);
    if (!swift_dynamicCast())
    {
      goto LABEL_43;
    }

    LOBYTE(v102[0]) = *(v67 + v92[5]);
    v101(v102);

    sub_26C602660(v14, type metadata accessor for ExternalContinuation);
    sub_26C602660(v91, type metadata accessor for ScanwaveActivateResponse);
    __swift_destroy_boxed_opaque_existential_0(aBlock);
LABEL_5:
    v19 += v93;
    if (!--v18)
    {
      return;
    }
  }

  v31 = *v95;
  v30 = v95[1];
  v32 = *(v95 + 2);
  v33 = *(v2 + v90);
  swift_beginAccess();
  v34 = sub_26C60B598(v31, v30);
  if (v35)
  {
    v36 = v34;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v33 + 32);
    v102[0] = v38;
    *(v33 + 32) = 0x8000000000000000;
    if (!v37)
    {
      sub_26C60ABC4();
      v38 = v102[0];
    }

    v39 = *(*(v38 + 56) + 8 * v36);
    sub_26C60B540(v36, v38);
    *(v33 + 32) = v38;
    swift_endAccess();
    [v39 invalidate];
  }

  else
  {
    swift_endAccess();
  }

  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v31;
  v51[4] = v30;
  v99 = sub_26C603B3C;
  v100 = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  v97 = sub_26C5F3394;
  v98 = &block_descriptor_467;
  v52 = _Block_copy(aBlock);
  v53 = objc_opt_self();

  v54 = [v53 timerWithTimeInterval:0 repeats:v52 block:v32];
  _Block_release(v52);

  swift_beginAccess();
  v11 = v54;
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v102[0] = *(v33 + 32);
  v56 = v102[0];
  *(v33 + 32) = 0x8000000000000000;
  v58 = sub_26C60B598(v31, v30);
  v59 = *(v56 + 16);
  v60 = (v57 & 1) == 0;
  v61 = v59 + v60;
  if (!__OFADD__(v59, v60))
  {
    v62 = v57;
    if (*(v56 + 24) < v61)
    {
      sub_26C5FF6B8(v61, v55);
      v63 = sub_26C60B598(v31, v30);
      if ((v62 & 1) != (v64 & 1))
      {
        goto LABEL_44;
      }

      v58 = v63;
      v65 = v102[0];
      if ((v62 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_33:
      v70 = v65[7];
      v71 = *(v70 + 8 * v58);
      *(v70 + 8 * v58) = v11;

LABEL_37:
      *(v33 + 32) = v65;
      swift_endAccess();
      v76 = [objc_opt_self() currentRunLoop];
      [v76 addTimer:v11 forMode:v79];

      v2 = v82;
      v8 = v81;
      v11 = v80;
LABEL_4:
      v14 = v89;
      goto LABEL_5;
    }

    if (v55)
    {
      v65 = v102[0];
      if (v57)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_26C60ABC4();
      v65 = v102[0];
      if (v62)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    v65[(v58 >> 6) + 8] |= 1 << v58;
    v72 = (v65[6] + 16 * v58);
    *v72 = v31;
    v72[1] = v30;
    *(v65[7] + 8 * v58) = v11;
    v73 = v65[2];
    v74 = __OFADD__(v73, 1);
    v75 = v73 + 1;
    if (v74)
    {
      goto LABEL_41;
    }

    v65[2] = v75;
    goto LABEL_37;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_26C603BBC(v11, &qword_2804A5440);
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  sub_26C615148();
  __break(1u);
}

void sub_26C5F69B0()
{
  if ((v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate] & 1) == 0)
  {
    v1 = objc_opt_self();
    [v1 activate];
    v2 = sub_26C60B63C(0);
    v3 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_hasEnqueuedPreCAUpdate;
    if (v2)
    {
      if ((v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_hasEnqueuedPreCAUpdate] & 1) == 0)
      {
        v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_hasEnqueuedPreCAUpdate] = 1;
        v4 = swift_allocObject();
        *(v4 + 16) = v0;
        v5 = swift_allocObject();
        *(v5 + 16) = sub_26C6039BC;
        *(v5 + 24) = v4;
        v8[4] = sub_26C6039EC;
        v8[5] = v5;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 1107296256;
        v8[2] = sub_26C5F35E4;
        v8[3] = &block_descriptor_458;
        v6 = _Block_copy(v8);
        v0;

        v7 = [v1 addCommitHandler:v6 forPhase:0];
        _Block_release(v6);

        if ((v7 & 1) == 0)
        {
          v0[v3] = 0;
          sub_26C602FBC();
        }
      }
    }

    else
    {
      v0[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_hasEnqueuedPreCAUpdate] = 0;

      sub_26C602FBC();
    }
  }
}

void *sub_26C5F6B70(uint64_t a1)
{
  v2 = type metadata accessor for ScanwaveActivateResponse(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ScanwaveViewController.OrderedStandardTransactionAction(0);
  v5 = *(v40 - 8);
  v6 = MEMORY[0x28223BE20](v40);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v42 = (&v39 - v9);
  MEMORY[0x28223BE20](v8);
  v41 = (&v39 - v10);
  v45 = type metadata accessor for ScanwaveCommonAction();
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  v16 = sub_26C6092B4(0, v14, 0, MEMORY[0x277D84F90]);
  v44 = sub_26C6092A0(0, v14, 0, v15);
  if (v14)
  {
    v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    do
    {
      sub_26C6025F8(v17, v13, type metadata accessor for ScanwaveCommonAction);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          *v42 = *v13;
          swift_storeEnumTagMultiPayload();
          v20 = v16[2];
          v19 = v16[3];
          if (v20 >= v19 >> 1)
          {
            v16 = sub_26C6092B4(v19 > 1, v20 + 1, 1, v16);
          }

          v16[2] = v20 + 1;
          v21 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20;
          v22 = v42;
        }

        else
        {
          sub_26C603A14(v13, v4, type metadata accessor for ScanwaveActivateResponse);
          sub_26C6025F8(v4, v43, type metadata accessor for ScanwaveActivateResponse);
          swift_storeEnumTagMultiPayload();
          v32 = v16[2];
          v31 = v16[3];
          if (v32 >= v31 >> 1)
          {
            v16 = sub_26C6092B4(v31 > 1, v32 + 1, 1, v16);
          }

          sub_26C602660(v4, type metadata accessor for ScanwaveActivateResponse);
          v16[2] = v32 + 1;
          v21 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v32;
          v22 = v43;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {
          v24 = v4;
          v25 = *v13;
          v26 = v13[16];
          v28 = *(v44 + 2);
          v27 = *(v44 + 3);
          if (v28 >= v27 >> 1)
          {
            v39 = *v13;
            v37 = sub_26C6092A0((v27 > 1), v28 + 1, 1, v44);
            v25 = v39;
            v44 = v37;
          }

          v29 = v44;
          *(v44 + 2) = v28 + 1;
          v30 = &v29[24 * v28];
          *(v30 + 2) = v25;
          v30[48] = v26;
          v4 = v24;
          goto LABEL_7;
        }

        v33 = *(v13 + 2);
        v34 = v41;
        *v41 = *v13;
        *(v34 + 2) = v33;
        swift_storeEnumTagMultiPayload();
        v36 = v16[2];
        v35 = v16[3];
        if (v36 >= v35 >> 1)
        {
          v16 = sub_26C6092B4(v35 > 1, v36 + 1, 1, v16);
        }

        v16[2] = v36 + 1;
        v21 = v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v36;
        v22 = v41;
      }

      sub_26C603A14(v22, v21, type metadata accessor for ScanwaveViewController.OrderedStandardTransactionAction);
LABEL_7:
      v17 += v18;
      --v14;
    }

    while (v14);
  }

  return v16;
}

void sub_26C5F7034(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_animatableProperties;
  swift_beginAccess();

  v6 = sub_26C5F795C(v5);
  v105 = v6;
  v7 = *(a1 + 16);
  v94 = v4;
  if (v7)
  {
    v8 = (a1 + 32);
    v89 = xmmword_26C61AF00;
    do
    {
      v11 = v8[5];
      *&v104[48] = v8[4];
      *&v104[64] = v11;
      *&v104[80] = v8[6];
      v12 = v8[1];
      v103 = *v8;
      *v104 = v12;
      v13 = v8[3];
      *&v104[16] = v8[2];
      *&v104[32] = v13;
      v14 = v103;
      sub_26C602AC0(&v103, &aBlock);
      sub_26C600C6C(v14, *(&v14 + 1), &qword_2804A55F8);
      v15 = *(v2 + v4);
      if (*(v15 + 16) && (v16 = sub_26C60B598(v14, *(&v14 + 1)), (v17 & 1) != 0))
      {
        v18 = *(*(v15 + 56) + 8 * v16);
        v19 = *(v18 + 24);
        v20 = *(v18 + 40);
        v21 = *(v18 + 56);
        v22 = *(v18 + 72);
        v23 = *(v18 + 88);
        v24 = *(v18 + 120);
        v101 = *(v18 + 104);
        v102 = v24;
        v99 = v22;
        v100 = v23;
        v97 = v20;
        v98 = v21;
        aBlock = v19;
        *(v18 + 56) = *&v104[16];
        v25 = *&v104[64];
        v26 = *&v104[80];
        v27 = *&v104[48];
        *(v18 + 72) = *&v104[32];
        *(v18 + 88) = v27;
        v28 = *v104;
        *(v18 + 24) = v103;
        *(v18 + 40) = v28;
        *(v18 + 120) = v26;
        *(v18 + 104) = v25;

        sub_26C602AC0(&v103, v95);

        sub_26C602B1C(&aBlock);
      }

      else
      {
        v29 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
        [v29 setValue_];
        v30 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55E0);
        v31 = swift_allocObject();
        *(v31 + 16) = v89;
        *(v31 + 32) = v29;
        sub_26C5CC548(0, &qword_2804A55E8);
        v32 = v29;
        v33 = sub_26C614EB8();

        v34 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        *(v35 + 24) = v14;
        *(v35 + 40) = v32;
        *&v98 = sub_26C603948;
        *(&v98 + 1) = v35;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v97 = sub_26C5F35E4;
        *(&v97 + 1) = &block_descriptor_436;
        v36 = _Block_copy(&aBlock);
        v37 = v32;
        v4 = v94;

        [v30 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
        _Block_release(v36);

        type metadata accessor for ScanwaveViewController.AnimatablePropertyContext();
        v18 = swift_allocObject();
        v38 = *&v104[16];
        *(v18 + 72) = *&v104[32];
        v39 = *&v104[64];
        *(v18 + 88) = *&v104[48];
        *(v18 + 104) = v39;
        *(v18 + 120) = *&v104[80];
        v40 = *v104;
        *(v18 + 24) = v103;
        *(v18 + 40) = v40;
        *(v18 + 136) = MEMORY[0x277D84FA0];
        *(v18 + 16) = v37;
        *(v18 + 56) = v38;
        swift_beginAccess();

        sub_26C602AC0(&v103, &aBlock);
        v41 = v37;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&aBlock = *(v2 + v94);
        *(v2 + v94) = 0x8000000000000000;
        sub_26C60036C(v18, v14, *(&v14 + 1), isUniquelyReferenced_nonNull_native);
        *(v2 + v94) = aBlock;
        swift_endAccess();
      }

      v43 = v104[74];
      v44 = swift_allocObject();
      *(v44 + 16) = sub_26C603954;
      *(v44 + 24) = v18;
      v45 = *&v104[24];
      v46 = *&v104[56];
      *(v44 + 64) = *&v104[40];
      *(v44 + 80) = v46;
      *(v44 + 96) = *&v104[72];
      *(v44 + 32) = *&v104[8];
      *(v44 + 48) = v45;
      if (v104[73])
      {
        v9 = objc_opt_self();
        *&v98 = sub_26C60411C;
        *(&v98 + 1) = v44;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v97 = sub_26C5F35E4;
        *(&v97 + 1) = &block_descriptor_443;
        v10 = _Block_copy(&aBlock);

        [v9 _performWithoutRetargetingAnimations_];

        sub_26C602B1C(&v103);
        _Block_release(v10);
      }

      else
      {
        v47 = v104[72];
        v48 = *&v104[68];
        v90 = *&v104[60];
        v91 = *&v104[64];
        v49 = *&v104[56];
        v51 = *&v104[40];
        v50 = *&v104[48];
        v53 = *&v104[24];
        v52 = *&v104[32];
        v54 = *&v104[8];
        v55 = *&v104[16];
        v93 = v43;
        v56 = objc_allocWithZone(SUIAFluidBehaviorSettings);

        v57 = [v56 init];
        [v57 setDefaultValues];
        v58 = OBJC_IVAR___SUIAFluidBehaviorSettings_dampingRatio;
        swift_beginAccess();
        *&v57[v58] = v54;
        v59 = OBJC_IVAR___SUIAFluidBehaviorSettings_response;
        swift_beginAccess();
        *&v57[v59] = v55;
        v60 = OBJC_IVAR___SUIAFluidBehaviorSettings_retargetImpulse;
        swift_beginAccess();
        *&v57[v60] = v53;
        v61 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingDampingRatio;
        swift_beginAccess();
        *&v57[v61] = v52;
        v62 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingResponse;
        swift_beginAccess();
        *&v57[v62] = v51;
        v63 = OBJC_IVAR___SUIAFluidBehaviorSettings_trackingRetargetImpulse;
        swift_beginAccess();
        *&v57[v63] = v50;
        if (v47)
        {
          v67 = 0;
        }

        else
        {
          v67 = v48;
        }

        LODWORD(v64) = v49;
        LODWORD(v65) = v90;
        LODWORD(v66) = v91;
        [v57 setFrameRateRange:v67 highFrameRateReason:{v64, v65, v66, v89}];

        v92 = objc_opt_self();
        *&v98 = sub_26C60411C;
        *(&v98 + 1) = v44;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v97 = sub_26C5F35E4;
        *(&v97 + 1) = &block_descriptor_446;
        v68 = _Block_copy(&aBlock);
        v69 = v57;

        *&v98 = CGSizeMake;
        *(&v98 + 1) = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v97 = sub_26C5F3628;
        *(&v97 + 1) = &block_descriptor_449;
        v70 = _Block_copy(&aBlock);

        v4 = v94;
        [v92 _animateUsingSpringBehavior_tracking_animations_completion_];

        sub_26C602B1C(&v103);

        _Block_release(v70);
        _Block_release(v68);
      }

      v8 += 7;
      --v7;
    }

    while (v7);
    v71 = v105;
  }

  else
  {
    v71 = v6;
  }

  v72 = 0;
  v73 = 1 << *(v71 + 32);
  v74 = -1;
  if (v73 < 64)
  {
    v74 = ~(-1 << v73);
  }

  v75 = v74 & *(v71 + 56);
  v76 = (v73 + 63) >> 6;
  while (v75)
  {
LABEL_25:
    while (1)
    {
      v78 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v79 = (*(v71 + 48) + ((v72 << 10) | (16 * v78)));
      v81 = *v79;
      v80 = v79[1];
      swift_beginAccess();
      v82 = sub_26C60B598(v81, v80);
      if (v83)
      {
        break;
      }

      swift_endAccess();
      if (!v75)
      {
        goto LABEL_21;
      }
    }

    v84 = v82;
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v86 = *(v2 + v94);
    *&aBlock = v86;
    *(v2 + v94) = 0x8000000000000000;
    if (!v85)
    {
      sub_26C60B018();
      v86 = aBlock;
    }

    v87 = v84;
    v88 = *(*(v86 + 56) + 8 * v84);
    sub_26C60B540(v87, v86);
    *(v2 + v94) = v86;
    swift_endAccess();
    [*(v88 + 16) invalidate];
  }

LABEL_21:
  while (1)
  {
    v77 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      break;
    }

    if (v77 >= v76)
    {

      return;
    }

    v75 = *(v71 + 56 + 8 * v77);
    ++v72;
    if (v75)
    {
      v72 = v77;
      goto LABEL_25;
    }
  }

  __break(1u);
}

uint64_t sub_26C5F795C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26C603968();
  result = MEMORY[0x26D6A4470](v2, &type metadata for ComponentAnimatableProperty.ID, v3);
  v5 = 0;
  v14 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_26C600B00(&v13, *v12, v12[1], &qword_2804A55F8))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v14;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_26C5F7A8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_animatableProperties;
    swift_beginAccess();
    if (*(*&v11[v12] + 16) && (sub_26C60B598(a2, a3), (v13 & 1) != 0))
    {

      [a4 presentationValue];
      v15 = sub_26C5FEFD8(v14);
      if (*(v15 + 16))
      {
        *v9 = v15;
        type metadata accessor for ScanwaveCommonEvent();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_26C5F5998(v9);

        sub_26C602660(v9, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_26C5F7C34(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 2;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = a1;

  v6 = v1;

  sub_26C5FECFC(sub_26C60393C, v5);

  swift_beginAccess();
  *(v4 + 16) = 1;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = (a1 + 48);
      v10 = MEMORY[0x277D84F90];
      do
      {
        if ((*v9 & 1) == 0)
        {
          v27 = *(v9 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26C613630(0, *(v10 + 16) + 1, 1);
          }

          v12 = *(v10 + 16);
          v11 = *(v10 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_26C613630((v11 > 1), v12 + 1, 1);
          }

          *(v10 + 16) = v12 + 1;
          v13 = v10 + 24 * v12;
          *(v13 + 32) = v27;
          *(v13 + 48) = 0;
        }

        v9 += 24;
        --v8;
      }

      while (v8);
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v20 = *(v10 + 16);
    if (v20)
    {
      v31 = MEMORY[0x277D84F90];
      sub_26C613650(0, v20, 0);
      v15 = v31;
      v21 = *(v31 + 16);
      v22 = 32;
      do
      {
        v23 = *(v10 + v22);
        v24 = *(v31 + 24);
        if (v21 >= v24 >> 1)
        {
          v29 = *(v10 + v22);
          sub_26C613650((v24 > 1), v21 + 1, 1);
          v23 = v29;
        }

        *(v31 + 16) = v21 + 1;
        *(v31 + 16 * v21 + 32) = v23;
        v22 += 24;
        ++v21;
        --v20;
      }

      while (v20);

      LOBYTE(v7) = 0;
    }

    else
    {

      LOBYTE(v7) = 0;
      v15 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = MEMORY[0x277D84F90];
    if (v14)
    {
      v30 = MEMORY[0x277D84F90];
      sub_26C613650(0, v14, 0);
      v15 = v30;
      v16 = (a1 + 32);
      v17 = *(v30 + 16);
      do
      {
        v18 = *v16;
        v19 = *(v30 + 24);
        if (v17 >= v19 >> 1)
        {
          v28 = *v16;
          sub_26C613650((v19 > 1), v17 + 1, 1);
          v18 = v28;
        }

        *(v30 + 16) = v17 + 1;
        *(v30 + 16 * v17 + 32) = v18;
        v16 = (v16 + 24);
        ++v17;
        --v14;
      }

      while (v14);
    }
  }

  v25 = sub_26C603484(v15, sub_26C5F184C, &type metadata for ScanwaveCommonAction.UpdateOutputModelCallbackID, &qword_2804A55D8);

  sub_26C5F7FD0(v25, v7 & 1, v6);
}

uint64_t sub_26C5F7FD0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for ScanwaveViewController.RootComponentUpdate(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v8);
  v13 = &v21[-v12];
  if (*(a1 + 16))
  {
    *v13 = a1;
    v13[8] = a2 & 1;
    type metadata accessor for ScanwaveCommonEvent();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v14 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_pendingRootComponentUpdates;
    swift_beginAccess();
    v15 = *(a3 + v14);
    v16 = v15[2];
    sub_26C6025F8(v13, v10, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + v14) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_26C6092DC(0, v16 + 1, 1, v15);
      *(a3 + v14) = v15;
    }

    v19 = v15[2];
    v18 = v15[3];
    if (v19 >= v18 >> 1)
    {
      v15 = sub_26C6092DC(v18 > 1, v19 + 1, 1, v15);
    }

    v15[2] = v19 + 1;
    sub_26C603A14(v10, v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
    *(a3 + v14) = v15;
    v20 = swift_endAccess();
    if ((*(a3 + OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_isPerformingPreCAUpdate) & 1) == 0 && !v16)
    {
      sub_26C5F69B0(v20);
    }

    return sub_26C602660(v13, type metadata accessor for ScanwaveViewController.RootComponentUpdate);
  }

  return result;
}

uint64_t sub_26C5F822C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    v26 = a4;
    v10 = *(a5 + 16);
    if (v10)
    {
      v11 = MEMORY[0x277D84F90];
      v12 = (a5 + 48);
      v13 = MEMORY[0x277D84F90];
      do
      {
        if (*v12 == 1)
        {
          v27 = *(v12 - 1);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_26C613630(0, *(v13 + 16) + 1, 1);
          }

          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_26C613630((v14 > 1), v15 + 1, 1);
          }

          *(v13 + 16) = v15 + 1;
          v16 = v13 + 24 * v15;
          *(v16 + 32) = v27;
          *(v16 + 48) = 1;
        }

        v12 += 24;
        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
      v13 = MEMORY[0x277D84F90];
    }

    v18 = *(v13 + 16);
    if (v18)
    {
      sub_26C613650(0, v18, 0);
      v19 = v11;
      v20 = *(v11 + 16);
      v21 = 32;
      v22 = v26;
      do
      {
        v23 = *(v13 + v21);
        v24 = *(v19 + 24);
        if (v20 >= v24 >> 1)
        {
          v28 = *(v13 + v21);
          sub_26C613650((v24 > 1), v20 + 1, 1);
          v23 = v28;
        }

        *(v19 + 16) = v20 + 1;
        *(v19 + 16 * v20 + 32) = v23;
        v21 += 24;
        ++v20;
        --v18;
      }

      while (v18);
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
      v22 = v26;
    }

    v25 = sub_26C603484(v19, sub_26C5F184C, &type metadata for ScanwaveCommonAction.UpdateOutputModelCallbackID, &qword_2804A55D8);

    sub_26C5F7FD0(v25, a1 & 1, v22);
  }

  else
  {
    result = swift_beginAccess();
    *(a3 + 16) = a1 & 1;
  }

  return result;
}

void sub_26C5F8494(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_26C6038AC(__dst) != 1)
  {
    v154 = __dst[2];
    v155 = __dst[3];
    v156 = __dst[4];
    v153 = __dst[1];
    v152 = __dst[0];
    v117 = BYTE1(__dst[4]);
    v118 = BYTE2(__dst[4]);
    v151[0] = *(&__dst[4] + 3);
    *(v151 + 5) = *(&__dst[4] + 1);
    v145[2] = __dst[5];
    v145[3] = __dst[6];
    v145[6] = __dst[9];
    v146 = __dst[10];
    v145[4] = __dst[7];
    v145[5] = __dst[8];
    v150 = __dst[14];
    v148 = __dst[12];
    v149 = __dst[13];
    v147 = __dst[11];
    v121 = BYTE2(__dst[14]);
    v145[0] = *(&__dst[14] + 3);
    *(v145 + 13) = *&__dst[15];
    v142 = *(&__dst[17] + 8);
    v143 = *(&__dst[18] + 8);
    v144 = BYTE8(__dst[19]);
    v140 = *(&__dst[15] + 8);
    v141 = *(&__dst[16] + 8);
    v115 = BYTE1(__dst[14]);
    v116 = BYTE9(__dst[19]);
    v123 = BYTE10(__dst[19]);
    *(v139 + 13) = *(&__dst[20] + 1);
    v139[0] = *(&__dst[19] + 11);
    v138 = __dst[25];
    v136 = __dst[23];
    v137 = __dst[24];
    v134 = __dst[21];
    v135 = __dst[22];
    v114 = BYTE1(__dst[25]);
    v119 = BYTE2(__dst[25]);
    *(v133 + 13) = *&__dst[26];
    v133[0] = *(&__dst[25] + 3);
    v6 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView;
    v7 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView];
LABEL_11:
      v33 = OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationMaskView;
      v34 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationMaskView];
      if (v34)
      {
        v35 = v7;
        v124 = v34;
LABEL_15:
        v51 = v34;
        v113 = v8;
        v52 = [v8 layer];
        objc_opt_self();
        v53 = swift_dynamicCastObjCClassUnconditional();
        v54 = swift_allocObject();
        v125 = v53;
        *(v54 + 16) = v53;
        swift_beginAccess();
        v112 = v52;
        atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v55 = *(a2 + 48);
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v167 = *(a2 + 40);
        *(a2 + 40) = 0x8000000000000000;
        sub_26C6004D4(0x7366664F65756C62, 0xEA00000000007465, v55, isUniquelyReferenced_nonNull_native);
        *(a2 + 40) = v167;
        swift_endAccess();
        v57 = swift_allocObject();
        *(v57 + 16) = a2;
        *(v57 + 24) = v55;
        v58 = swift_allocObject();
        *(v58 + 16) = sub_26C6038C8;
        *(v58 + 24) = v54;
        v59 = v137;
        *(v58 + 64) = v136;
        *(v58 + 80) = v59;
        *(v58 + 96) = v138;
        v60 = v135;
        *(v58 + 32) = v134;
        *(v58 + 48) = v60;
        *(v58 + 97) = v114;
        *(v58 + 98) = v119;
        *(v58 + 99) = v133[0];
        *(v58 + 112) = *(v133 + 13);
        if (v114)
        {
          v61 = objc_opt_self();
          *&v174 = sub_26C604124;
          *(&v174 + 1) = v58;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v173 = sub_26C5F35E4;
          *(&v173 + 1) = &block_descriptor_354;
          v62 = _Block_copy(&aBlock);

          [v61 _performWithoutRetargetingAnimations_];
          _Block_release(v62);
          sub_26C60B2E0(0, a2, v55);
        }

        else
        {
          v174 = v136;
          v175 = v137;
          v176 = v138;
          aBlock = v134;
          v173 = v135;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v63 = sub_26C5ED068(&aBlock);
          v64 = objc_opt_self();
          *&v169 = sub_26C604124;
          *(&v169 + 1) = v58;
          *&v167 = MEMORY[0x277D85DD0];
          *(&v167 + 1) = 1107296256;
          *&v168 = sub_26C5F35E4;
          *(&v168 + 1) = &block_descriptor_417;
          v65 = _Block_copy(&v167);
          v66 = v63;

          *&v169 = sub_26C604110;
          *(&v169 + 1) = v57;
          *&v167 = MEMORY[0x277D85DD0];
          *(&v167 + 1) = 1107296256;
          *&v168 = sub_26C5F3628;
          *(&v168 + 1) = &block_descriptor_420;
          v67 = _Block_copy(&v167);

          [v64 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v67);
          _Block_release(v65);
        }

        v68 = swift_allocObject();
        *(v68 + 16) = v125;
        swift_beginAccess();
        v120 = v112;
        atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v69 = *(a2 + 48);
        swift_beginAccess();
        v70 = swift_isUniquelyReferenced_nonNull_native();
        *&v162 = *(a2 + 40);
        *(a2 + 40) = 0x8000000000000000;
        sub_26C6004D4(0x7366664F65756C62, 0xEA00000000007465, v69, v70);
        *(a2 + 40) = v162;
        swift_endAccess();
        v71 = swift_allocObject();
        *(v71 + 16) = a2;
        *(v71 + 24) = v69;
        v72 = swift_allocObject();
        *(v72 + 16) = sub_26C6038D0;
        *(v72 + 24) = v68;
        v73 = v149;
        *(v72 + 64) = v148;
        *(v72 + 80) = v73;
        *(v72 + 96) = v150;
        v74 = v147;
        *(v72 + 32) = v146;
        *(v72 + 48) = v74;
        *(v72 + 97) = v115;
        *(v72 + 98) = v121;
        *(v72 + 99) = v145[0];
        *(v72 + 112) = *(v145 + 13);
        if (v115)
        {
          v75 = objc_opt_self();
          *&v169 = sub_26C604124;
          *(&v169 + 1) = v72;
          *&v167 = MEMORY[0x277D85DD0];
          *(&v167 + 1) = 1107296256;
          *&v168 = sub_26C5F35E4;
          *(&v168 + 1) = &block_descriptor_368;
          v76 = _Block_copy(&v167);

          [v75 _performWithoutRetargetingAnimations_];
          _Block_release(v76);
          sub_26C60B2E0(0, a2, v69);
        }

        else
        {
          v169 = v148;
          v170 = v149;
          v171 = v150;
          v168 = v147;
          v167 = v146;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v77 = sub_26C5ED068(&v167);
          v78 = objc_opt_self();
          *&v164 = sub_26C604124;
          *(&v164 + 1) = v72;
          *&v162 = MEMORY[0x277D85DD0];
          *(&v162 + 1) = 1107296256;
          *&v163 = sub_26C5F35E4;
          *(&v163 + 1) = &block_descriptor_411;
          v79 = _Block_copy(&v162);
          v80 = v77;

          *&v164 = sub_26C604110;
          *(&v164 + 1) = v71;
          *&v162 = MEMORY[0x277D85DD0];
          *(&v162 + 1) = 1107296256;
          *&v163 = sub_26C5F3628;
          *(&v163 + 1) = &block_descriptor_414;
          v81 = _Block_copy(&v162);

          [v78 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v81);
          _Block_release(v79);
        }

        v82 = swift_allocObject();
        *(v82 + 16) = v125;
        swift_beginAccess();
        v122 = v120;
        atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v83 = *(a2 + 48);
        swift_beginAccess();
        v84 = swift_isUniquelyReferenced_nonNull_native();
        *&v157 = *(a2 + 40);
        *(a2 + 40) = 0x8000000000000000;
        sub_26C6004D4(0x66664F6E65657267, 0xEB00000000746573, v83, v84);
        *(a2 + 40) = v157;
        swift_endAccess();
        v85 = swift_allocObject();
        *(v85 + 16) = a2;
        *(v85 + 24) = v83;
        v86 = swift_allocObject();
        *(v86 + 16) = sub_26C6038D8;
        *(v86 + 24) = v82;
        v87 = v143;
        *(v86 + 64) = v142;
        *(v86 + 80) = v87;
        *(v86 + 96) = v144;
        v88 = v141;
        *(v86 + 32) = v140;
        *(v86 + 48) = v88;
        *(v86 + 97) = v116;
        *(v86 + 98) = v123;
        *(v86 + 99) = v139[0];
        *(v86 + 112) = *(v139 + 13);
        if (v116)
        {
          v89 = objc_opt_self();
          *&v164 = sub_26C604124;
          *(&v164 + 1) = v86;
          *&v162 = MEMORY[0x277D85DD0];
          *(&v162 + 1) = 1107296256;
          *&v163 = sub_26C5F35E4;
          *(&v163 + 1) = &block_descriptor_382;
          v90 = _Block_copy(&v162);

          [v89 _performWithoutRetargetingAnimations_];
          _Block_release(v90);
          sub_26C60B2E0(0, a2, v83);
        }

        else
        {
          v164 = v142;
          v165 = v143;
          v166 = v144;
          v163 = v141;
          v162 = v140;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v91 = sub_26C5ED068(&v162);
          v92 = objc_opt_self();
          *&v159 = sub_26C604124;
          *(&v159 + 1) = v86;
          *&v157 = MEMORY[0x277D85DD0];
          *(&v157 + 1) = 1107296256;
          *&v158 = sub_26C5F35E4;
          *(&v158 + 1) = &block_descriptor_405;
          v93 = _Block_copy(&v157);
          v94 = v91;

          *&v159 = sub_26C604110;
          *(&v159 + 1) = v85;
          *&v157 = MEMORY[0x277D85DD0];
          *(&v157 + 1) = 1107296256;
          *&v158 = sub_26C5F3628;
          *(&v158 + 1) = &block_descriptor_408;
          v95 = _Block_copy(&v157);

          [v92 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v95);
          _Block_release(v93);
        }

        v96 = sub_26C614DE8();
        v97 = sub_26C614E38();
        [v125 setValue:v96 forKeyPath:v97];

        v98 = swift_allocObject();
        v5 = v124;
        *(v98 + 16) = v124;
        swift_beginAccess();
        atomic_fetch_add_explicit((a2 + 48), 1uLL, memory_order_relaxed);
        swift_endAccess();
        v99 = *(a2 + 48);
        swift_beginAccess();
        v100 = swift_isUniquelyReferenced_nonNull_native();
        v126 = *(a2 + 40);
        *(a2 + 40) = 0x8000000000000000;
        sub_26C6004D4(0x6168706C61, 0xE500000000000000, v99, v100);
        *(a2 + 40) = v126;
        swift_endAccess();
        v101 = swift_allocObject();
        *(v101 + 16) = a2;
        *(v101 + 24) = v99;
        v102 = swift_allocObject();
        *(v102 + 16) = sub_26C604118;
        *(v102 + 24) = v98;
        v103 = v155;
        *(v102 + 64) = v154;
        *(v102 + 80) = v103;
        *(v102 + 96) = v156;
        v104 = v153;
        *(v102 + 32) = v152;
        *(v102 + 48) = v104;
        *(v102 + 97) = v117;
        *(v102 + 98) = v118;
        *(v102 + 99) = v151[0];
        *(v102 + 104) = *(v151 + 5);
        if (v117)
        {
          v105 = objc_opt_self();
          *&v159 = sub_26C60411C;
          *(&v159 + 1) = v102;
          *&v157 = MEMORY[0x277D85DD0];
          *(&v157 + 1) = 1107296256;
          *&v158 = sub_26C5F35E4;
          *(&v158 + 1) = &block_descriptor_396;
          v106 = _Block_copy(&v157);

          [v105 _performWithoutRetargetingAnimations_];
          _Block_release(v106);
          sub_26C60B2E0(0, a2, v99);
        }

        else
        {
          v159 = v154;
          v160 = v155;
          v161 = v156;
          v158 = v153;
          v157 = v152;
          type metadata accessor for SUIAFluidBehaviorSettings(0);

          v107 = sub_26C5ED068(&v157);
          v108 = objc_opt_self();
          v130 = sub_26C60411C;
          v131 = v102;
          v126 = MEMORY[0x277D85DD0];
          v127 = 1107296256;
          v128 = sub_26C5F35E4;
          v129 = &block_descriptor_399;
          v109 = _Block_copy(&v126);
          v110 = v107;

          v130 = sub_26C604110;
          v131 = v101;
          v126 = MEMORY[0x277D85DD0];
          v127 = 1107296256;
          v128 = sub_26C5F3628;
          v129 = &block_descriptor_402;
          v111 = _Block_copy(&v126);

          [v108 _animateUsingSpringBehavior_tracking_animations_completion_];

          _Block_release(v111);
          _Block_release(v109);

          v5 = v110;
        }

        goto LABEL_27;
      }

      v36 = v7;
      [v8 bounds];
      v41 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_mainMaskView];
      if (v41)
      {
        v42 = v37;
        v43 = v38;
        v44 = v39;
        v45 = v40;
        v46 = objc_allocWithZone(MEMORY[0x277D76180]);
        v47 = v41;
        v48 = [v46 initWithFrame_];
        [v48 setMatchesPosition_];
        [v48 setMatchesAlpha_];
        [v48 setMatchesTransform_];
        [v48 setSourceView_];
        [v48 setHidesSourceView_];

        v49 = *&v2[v33];
        *&v2[v33] = v48;
        v50 = v48;

        [v8 setMaskView_];
        v124 = v50;

        v34 = 0;
        goto LABEL_15;
      }

LABEL_31:
      sub_26C6150B8();
      __break(1u);
      return;
    }

    v9 = [v2 view];
    if (v9)
    {
      v10 = v9;
      [v9 bounds];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v19 = [objc_allocWithZone(type metadata accessor for BackdropView()) initWithFrame_];
      v20 = *&v2[v6];
      *&v2[v6] = v19;
      v8 = v19;

      v21 = [v8 layer];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClassUnconditional();
      [v22 setScale_];
      v23 = v21;
      [v22 setAllowsGroupBlending_];
      [v22 setMarginWidth_];
      v24 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      v25 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A55A0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_26C619B60;
      v27 = sub_26C5CC548(0, &qword_2804A55A8);
      *(v26 + 32) = v24;
      *(v26 + 88) = v27;
      *(v26 + 56) = v27;
      *(v26 + 64) = v25;
      v28 = v24;
      v29 = v25;
      v30 = sub_26C614EB8();

      [v22 setFilters_];

      v31 = [v2 view];
      if (v31)
      {
        v32 = v31;
        [v31 addSubview_];

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_31;
  }

  v4 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView];
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationBackdropView] = 0;
    [v4 removeFromSuperview];
  }

  v5 = *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationMaskView];
  if (v5)
  {
    *&v2[OBJC_IVAR____TtC20SystemUIAnimationKit22ScanwaveViewController_chromaticAberrationMaskView] = 0;
    [v5 removeFromSuperview];
LABEL_27:
  }
}