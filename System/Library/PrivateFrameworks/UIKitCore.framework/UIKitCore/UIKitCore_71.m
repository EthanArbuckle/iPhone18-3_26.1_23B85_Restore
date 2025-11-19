uint64_t sub_1891C9080(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18917F0B0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = sub_18A4A85F8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 2);
          if (v13 > *(v12 - 6))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 6) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_18A4A75D8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_1891CBAC8(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t UISlider.TrackConfiguration.Tick.title.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t UISlider.TrackConfiguration.Tick.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void *UISlider.TrackConfiguration.Tick.image.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t UISlider.TrackConfiguration.Tick.init(position:title:image:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  *a4 = a5;
  *(a4 + 8) = result;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

void UISlider.TrackConfiguration.Tick.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_18A4A88B8();
  if (!v1)
  {
    sub_18A4A88A8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_18A4A88A8();
    return;
  }

  sub_18A4A88A8();
  sub_18A4A7348();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_18A4A88A8();
  v3 = v2;
  sub_18A4A7C98();
}

uint64_t UISlider.TrackConfiguration.Tick.hashValue.getter()
{
  sub_18A4A8888();
  UISlider.TrackConfiguration.Tick.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_1891C9418()
{
  sub_18A4A8888();
  UISlider.TrackConfiguration.Tick.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t sub_1891C9478()
{
  sub_18A4A8888();
  UISlider.TrackConfiguration.Tick.hash(into:)();
  return sub_18A4A88E8();
}

uint64_t UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:ticks:)@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v13 = a2;

  sub_1891C9080(&v13);

  v12 = v13;
  *a3 = a1 & 1;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 12) = a6;
  *(a3 + 16) = v12;
  *(a3 + 24) = 0;
  return result;
}

uint64_t UISlider.TrackConfiguration.init(allowsTickValuesOnly:neutralValue:enabledRange:numberOfTicks:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, float a5@<S1>, float a6@<S2>)
{
  v13 = sub_1891CC4D8(a2);

  sub_1891C9080(&v13);

  v12 = v13;
  *a3 = a1 & 1;
  *(a3 + 4) = a4;
  *(a3 + 8) = a5;
  *(a3 + 12) = a6;
  *(a3 + 16) = v12;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_1891C96C4()
{
  v1 = *(v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 56);
    do
    {
      v5 = *(v4 - 6);
      v6 = *v4;
      if (*(v4 - 1))
      {
        v7 = v6;

        v8 = sub_18A4A7258();
      }

      else
      {
        v7 = v6;
        v8 = 0;
      }

      v9 = objc_allocWithZone(UISliderTick);
      LODWORD(v10) = v5;
      [v9 initWithPosition:v8 title:v7 image:v10];

      MEMORY[0x18CFE2450]();
      if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
      }

      v4 += 4;
      sub_18A4A75F8();

      --v3;
    }

    while (v3);
    return v11;
  }

  return result;
}

uint64_t UISlider.TrackConfiguration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_18A4A88A8();
  sub_18A4A88B8();
  sub_18A4A88B8();
  sub_18A4A88B8();
  sub_1891CC270(a1, v3);
  return sub_18A4A88A8();
}

uint64_t UISlider.TrackConfiguration.hashValue.getter()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5[72] = *v0;
  v6 = *(v0 + 4);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_18A4A8888();
  UISlider.TrackConfiguration.hash(into:)(v5);
  return sub_18A4A88E8();
}

uint64_t sub_1891C9914()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5[72] = *v0;
  v6 = *(v0 + 4);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_18A4A8888();
  UISlider.TrackConfiguration.hash(into:)(v5);
  return sub_18A4A88E8();
}

uint64_t sub_1891C9984()
{
  v1 = *(v0 + 12);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5[72] = *v0;
  v6 = *(v0 + 4);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  sub_18A4A8888();
  UISlider.TrackConfiguration.hash(into:)(v5);
  return sub_18A4A88E8();
}

void UISlider.trackConfiguration.getter(uint64_t a1@<X8>)
{
  v3 = [v1 trackConfiguration];
  if (v3)
  {
    v4 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    v6 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
    v5 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
    v7 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
    v8 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
    v9 = v3;

    v10 = v4 | (v8 << 32);
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a1 = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
}

void sub_1891C9A94(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 trackConfiguration];
  if (v3)
  {
    v4 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    v6 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
    v5 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
    v7 = v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
    v8 = *&v3[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
    v9 = v3;

    v10 = v4 | (v8 << 32);
  }

  else
  {
    v10 = 0;
    v6 = 0;
    v5 = 0;
    v7 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = v7;
}

void sub_1891C9B38(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = v1;
  v5 = v2;

  UISlider.trackConfiguration.setter(&v3);
}

void UISlider.trackConfiguration.setter(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(a1 + 24);
    v5 = *a1;
    v4 = a1[1];
    v6 = HIDWORD(*a1);
    v8 = [objc_allocWithZone(UISliderTrackConfiguration) initWithTicks:0 number:0 evenlySpaced:0];
    v7 = &v8[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v7 = v5 & 1;
    *(v7 + 1) = v6;
    *(v7 + 1) = v4;
    *(v7 + 2) = v2;
    v7[24] = v3 & 1;

    [v1 setTrackConfiguration_];
  }

  else
  {

    [v1 setTrackConfiguration_];
  }
}

void (*UISlider.trackConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 32) = v2;
  v6 = [v2 trackConfiguration];
  if (v6)
  {
    v7 = v6[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    v9 = *&v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 8];
    v8 = *&v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
    v10 = v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
    v11 = *&v6[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
    v12 = v6;

    v13 = v7 | (v11 << 32);
  }

  else
  {
    v13 = 0;
    v9 = 0;
    v8 = 0;
    v10 = 0;
  }

  *v5 = v13;
  *(v5 + 8) = v9;
  *(v5 + 16) = v8;
  *(v5 + 24) = v10;
  return sub_1891C9D88;
}

void sub_1891C9D88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 32);
  if (a2)
  {
    if (v3)
    {
      v5 = v2[24];
      v7 = *v2;
      v6 = *(v2 + 1);
      v8 = HIDWORD(*v2);
      v9 = objc_allocWithZone(UISliderTrackConfiguration);

      v10 = [v9 initWithTicks:0 number:0 evenlySpaced:0];
      v11 = &v10[OBJC_IVAR___UISliderTrackConfiguration__configuration];
      *v11 = v7 & 1;
      *(v11 + 1) = v8;
      *(v11 + 1) = v6;
      *(v11 + 2) = v3;
      v11[24] = v5 & 1;

      [v4 setTrackConfiguration_];
    }

    else
    {
      [*(*a1 + 32) setTrackConfiguration_];
    }
  }

  else if (v3)
  {
    v12 = v2[24];
    v14 = *v2;
    v13 = *(v2 + 1);
    v15 = HIDWORD(*v2);
    v16 = [objc_allocWithZone(UISliderTrackConfiguration) initWithTicks:0 number:0 evenlySpaced:0];
    v17 = &v16[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v17 = v14 & 1;
    *(v17 + 1) = v15;
    *(v17 + 1) = v13;
    *(v17 + 2) = v3;
    v17[24] = v12 & 1;

    [v4 setTrackConfiguration_];
  }

  else
  {
    [*(*a1 + 32) setTrackConfiguration_];
  }

  free(v2);
}

id sub_1891CA104(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = sub_18A4A7258();
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *&v8 = a1;
  v9 = [v7 initWithPosition:v6 title:a4 image:v8];

  return v9;
}

void sub_1891CA230(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  [v2 position];
  v6 = v5;
  v7 = [v2 title];
  if (v7)
  {
    v8 = v7;
    sub_18A4A7288();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 image];
  if (v10)
  {
    v12 = sub_18A4A7258();
  }

  else
  {
    v12 = 0;
  }

  v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  LODWORD(v14) = v6;
  v15 = [v13 initWithPosition:v12 title:v11 image:v14];

  a1[3] = ObjectType;
  *a1 = v15;
}

uint64_t UISliderTick.hash.getter()
{
  v4 = *(v0 + OBJC_IVAR___UISliderTick__tick + 24);
  sub_18A4A8888();
  v1 = v4;

  UISlider.TrackConfiguration.Tick.hash(into:)();
  v2 = sub_18A4A88E8();

  return v2;
}

uint64_t UISliderTick.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v30);
  v3 = v31;
  if (v31)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v30, v31);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
  }

  else
  {
    v9 = 0;
  }

  v29.receiver = v1;
  v29.super_class = UISliderTick;
  v10 = objc_msgSendSuper2(&v29, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = sub_188C85D28(a1, v30);
  if (!v31)
  {
    sub_188A553EC(v30);
    goto LABEL_9;
  }

  type metadata accessor for UISliderTick(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v12 = v27[0];
  v13 = *(v27[0] + OBJC_IVAR___UISliderTick__tick + 8);
  v14 = *(v27[0] + OBJC_IVAR___UISliderTick__tick + 16);
  v15 = *(v27[0] + OBJC_IVAR___UISliderTick__tick + 24);
  LODWORD(v30[0]) = *(v27[0] + OBJC_IVAR___UISliderTick__tick);
  v30[1] = v13;
  v30[2] = v14;
  v31 = v15;
  v16 = &v1[OBJC_IVAR___UISliderTick__tick];
  v17 = *&v1[OBJC_IVAR___UISliderTick__tick];
  v18 = *&v1[OBJC_IVAR___UISliderTick__tick + 8];
  v19 = *&v1[OBJC_IVAR___UISliderTick__tick + 16];
  v20 = *(v16 + 3);
  LODWORD(v27[0]) = v17;
  v27[1] = v18;
  v27[2] = v19;
  v28 = v20;
  v21 = v20;

  v22 = v15;

  v23 = _sSo8UISliderC5UIKitE18TrackConfigurationV4TickV2eeoiySbAG_AGtFZ_0(v30, v27);

  v24 = v28;

  v25 = v31;

  return v23 & 1;
}

id UISliderTick.init(coder:)(void *a1)
{
  v2 = sub_1891CC7B0(a1);

  return v2;
}

void sub_1891CA744(void *a1)
{
  [v1 position];
  v4 = v3;
  v5 = sub_18A4A7258();
  LODWORD(v6) = v4;
  [a1 encodeFloat:v5 forKey:v6];

  v7 = [v1 title];
  v8 = sub_18A4A7258();
  [a1 encodeObject:v7 forKey:v8];

  v9 = [v1 image];
  v10 = sub_18A4A7258();
  [a1 encodeObject:v9 forKey:v10];
}

id sub_1891CABE0(unint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v34 = sub_1891CC4D8(a2);

    sub_1891C9080(&v34);

LABEL_14:
    v18 = v34;
    v19 = 1;
LABEL_23:
    v30 = &v3[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v30 = 1;
    *(v30 + 1) = 0;
    *(v30 + 2) = 0;
    *(v30 + 3) = 1065353216;
    *(v30 + 2) = v18;
    v30[24] = v19;
    v33.receiver = v3;
    v33.super_class = UISliderTrackConfiguration;
    return objc_msgSendSuper2(&v33, sel_init, v32);
  }

  if (!a1)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1891C9080(&v34);
    goto LABEL_14;
  }

  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_21:

    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v34 = v7;

    sub_1891C9080(&v34);

    v19 = 0;
    v18 = v34;
    goto LABEL_23;
  }

  v6 = sub_18A4A7F68();
  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_6:
  v32 = v3;
  v34 = MEMORY[0x1E69E7CC0];
  sub_188E6D4C0(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v34;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = sub_188E4B2C4(v8, a1);
        v10 = *(v9 + OBJC_IVAR___UISliderTick__tick);
        v12 = *(v9 + OBJC_IVAR___UISliderTick__tick + 8);
        v11 = *(v9 + OBJC_IVAR___UISliderTick__tick + 16);
        v13 = *(v9 + OBJC_IVAR___UISliderTick__tick + 24);
        v14 = v13;

        swift_unknownObjectRelease();
        v34 = v7;
        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          sub_188E6D4C0((v15 > 1), v16 + 1, 1);
          v3 = v32;
          v7 = v34;
        }

        *(v7 + 2) = v16 + 1;
        v17 = &v7[32 * v16];
        *(v17 + 8) = v10;
        ++v8;
        *(v17 + 5) = v12;
        *(v17 + 6) = v11;
        *(v17 + 7) = v13;
      }

      while (v6 != v8);
    }

    else
    {
      v20 = (a1 + 32);
      do
      {
        v21 = *v20 + OBJC_IVAR___UISliderTick__tick;
        v22 = *v21;
        v24 = *(v21 + 8);
        v23 = *(v21 + 16);
        v25 = *(v21 + 24);
        v34 = v7;
        v27 = *(v7 + 2);
        v26 = *(v7 + 3);

        v28 = v25;
        if (v27 >= v26 >> 1)
        {
          sub_188E6D4C0((v26 > 1), v27 + 1, 1);
          v3 = v32;
          v7 = v34;
        }

        *(v7 + 2) = v27 + 1;
        v29 = &v7[32 * v27];
        *(v29 + 8) = v22;
        *(v29 + 5) = v24;
        *(v29 + 6) = v23;
        *(v29 + 7) = v25;
        ++v20;
        --v6;
      }

      while (v6);
    }

    goto LABEL_22;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_1891CAF2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = sub_18A4A7F68();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for UISliderTick(v2);
  v3 = sub_18A4A7518();
  v4 = [v2 initWithTicks:v3 number:v1 evenlySpaced:0];

  return v4;
}

id sub_1891CB038(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithTicks:0 number:a1 evenlySpaced:1];
}

id sub_1891CB0C8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v2 ticks];
  type metadata accessor for UISliderTick(v5);
  sub_18A4A7548();

  v6 = [v2 ticks];
  v7 = sub_18A4A7548();

  if (v7 >> 62)
  {
    v8 = sub_18A4A7F68();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = [v2 ticksAreEvenlySpaced];
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v11 = sub_18A4A7518();

  v12 = [v10 initWithTicks:v11 number:v8 evenlySpaced:v9];

  [v12 setAllowsTickValuesOnly_];
  [v2 neutralValue];
  [v12 setNeutralValue_];
  [v2 minimumEnabledValue];
  [v12 setMinimumEnabledValue_];
  [v2 maximumEnabledValue];
  result = [v12 setMaximumEnabledValue_];
  a1[3] = ObjectType;
  *a1 = v12;
  return result;
}

uint64_t sub_1891CB2AC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_18A4A86A8();
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v6;
}

uint64_t UISliderTrackConfiguration.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 12);
  v2 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 16);
  v3 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 24);
  v6[72] = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration);
  v7 = *(v0 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 4);
  v8 = v1;
  v9 = v2;
  v10 = v3;
  sub_18A4A8888();

  UISlider.TrackConfiguration.hash(into:)(v6);
  v4 = sub_18A4A88E8();

  return v4;
}

uint64_t UISliderTrackConfiguration.isEqual(_:)(uint64_t a1)
{
  sub_188C85D28(a1, v26);
  v3 = v30;
  if (v30)
  {
    v4 = __swift_project_boxed_opaque_existential_0(v26, v30);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x1EEE9AC00](v4);
    v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v5 + 16))(v8, v6);
    v9 = sub_18A4A86A8();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
  }

  else
  {
    v9 = 0;
  }

  v25.receiver = v1;
  v25.super_class = UISliderTrackConfiguration;
  v10 = objc_msgSendSuper2(&v25, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v10)
  {
    goto LABEL_9;
  }

  v11 = sub_188C85D28(a1, v26);
  if (!v30)
  {
    sub_188A553EC(v26);
    goto LABEL_9;
  }

  type metadata accessor for UISliderTrackConfiguration(v11);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v19 = 0;
    return v19 & 1;
  }

  v12 = *v21;
  v13 = *(*v21 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 12);
  v14 = *(*v21 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 16);
  v15 = *(*v21 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 24);
  v26[0] = *(*v21 + OBJC_IVAR___UISliderTrackConfiguration__configuration);
  v27 = *(*v21 + OBJC_IVAR___UISliderTrackConfiguration__configuration + 4);
  v28 = v13;
  v29 = v14;
  LOBYTE(v30) = v15;
  v16 = *&v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 12];
  v17 = *&v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 16];
  v18 = v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 24];
  v21[0] = v1[OBJC_IVAR___UISliderTrackConfiguration__configuration];
  *&v21[4] = *&v1[OBJC_IVAR___UISliderTrackConfiguration__configuration + 4];
  v22 = v16;
  v23 = v17;
  v24 = v18;

  v19 = _sSo8UISliderC5UIKitE18TrackConfigurationV2eeoiySbAE_AEtFZ_0(v26, v21);

  return v19 & 1;
}

uint64_t sub_1891CB6A0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_188A553EC(v10);
  return v8 & 1;
}

id UISliderTrackConfiguration.init(coder:)(void *a1)
{
  v2 = sub_1891CC9E8(a1);

  return v2;
}

void sub_1891CB790(void *a1)
{
  v3 = [v1 ticks];
  if (!v3)
  {
    type metadata accessor for UISliderTick(0);
    sub_18A4A7548();
    v3 = sub_18A4A7518();
  }

  v4 = sub_18A4A7258();
  [a1 encodeObject:v3 forKey:v4];

  v5 = [v1 ticksAreEvenlySpaced];
  v6 = sub_18A4A7258();
  [a1 encodeBool:v5 forKey:v6];

  v7 = [v1 allowsTickValuesOnly];
  v8 = sub_18A4A7258();
  [a1 encodeBool:v7 forKey:v8];

  [v1 neutralValue];
  v10 = v9;
  v11 = sub_18A4A7258();
  LODWORD(v12) = v10;
  [a1 encodeFloat:v11 forKey:v12];

  [v1 minimumEnabledValue];
  v14 = v13;
  v15 = sub_18A4A7258();
  LODWORD(v16) = v14;
  [a1 encodeFloat:v15 forKey:v16];

  [v1 maximumEnabledValue];
  v18 = v17;
  v20 = sub_18A4A7258();
  LODWORD(v19) = v18;
  [a1 encodeFloat:v20 forKey:v19];
}

uint64_t sub_1891CBAC8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18917EF5C(v8);
      v8 = result;
    }

    v86 = (v8 + 16);
    v87 = *(v8 + 16);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v8 + 16 * v87);
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1891CC06C((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v14 = *v12;
      v13 = v12 + 16;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 8;
        v19 = v18 > v17;
        ++v16;
        v17 = v18;
        if ((((v10 <= v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 > v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 > v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 32 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v29 + v11);
            v24 = (v29 + v20);
            v25 = *v23;
            v26 = *(v23 + 3);
            v27 = *(v23 + 2);
            v28 = *(v24 - 1);
            *v23 = *(v24 - 3);
            *(v23 + 1) = v28;
            *(v24 - 6) = v25;
            *(v24 - 1) = v27;
            *v24 = v26;
          }

          ++v22;
          v20 -= 32;
          v11 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_188E4B688(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v40 = *(v8 + 24);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      result = sub_188E4B688((v40 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v41;
    v42 = v8 + 32;
    v43 = (v8 + 32 + 16 * v5);
    *v43 = v9;
    v43[1] = v7;
    v95 = *v94;
    if (!*v94)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = (v8 + 16 * v41);
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = (v42 + 16 * v5);
          v68 = *v66;
          v67 = v66[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = (v8 + 16 * v41);
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = (v42 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = (v42 + 16 * (v5 - 1));
        v82 = *v81;
        v83 = (v42 + 16 * v5);
        v84 = v83[1];
        sub_1891CC06C((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *(v8 + 16);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        result = memmove((v42 + 16 * v5), v83 + 2, 16 * (v85 - 1 - v5));
        *(v8 + 16) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = v42 + 16 * v41;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = (v8 + 16 * v41);
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = (v42 + 16 * v5);
        v79 = *v77;
        v78 = v77[1];
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v7 - 32;
  v32 = v9 - v7;
LABEL_30:
  v33 = *(v30 + 32 * v7);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 > *v35)
    {
LABEL_29:
      ++v7;
      v31 += 32;
      --v32;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 56);
    v37 = *(v35 + 40);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v37;
    *(v35 + 24) = v36;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1891CC06C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 <= *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 8;
    v5 -= 8;
    v19 = v14;
    do
    {
      v20 = v5 + 8;
      v21 = *(v19 - 8);
      v19 -= 8;
      if (v21 <= *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 8, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 8;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_1891CC270(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x18CFE37E0](v3);
  if (v3)
  {
    v5 = (a2 + 56);
    do
    {
      v7 = *(v5 - 1);
      v8 = *v5;
      sub_18A4A88B8();
      if (v7)
      {
        sub_18A4A88A8();
        v9 = v8;

        sub_18A4A7348();
        if (!v8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_18A4A88A8();
        v10 = v8;
        if (!v8)
        {
LABEL_9:
          sub_18A4A88A8();
          goto LABEL_4;
        }
      }

      sub_18A4A88A8();
      v6 = v8;
      sub_18A4A7C98();

LABEL_4:
      v5 += 4;

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _sSo8UISliderC5UIKitE18TrackConfigurationV4TickV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  if (v3)
  {
    if (!v5)
    {
      return 0;
    }

    v7 = *(a1 + 8) == *(a2 + 8) && v3 == v5;
    if (!v7 && (sub_18A4A86C8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v4)
  {
    if (v6)
    {
      sub_188A34624(0, &unk_1EA93A1A0);
      v9 = v6;
      v10 = v4;
      v11 = sub_18A4A7C88();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v6)
  {
    return 1;
  }

  return 0;
}

uint64_t _sSo8UISliderC5UIKitE18TrackConfigurationV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && *(a1 + 3) == *(a2 + 3))
  {
    v6 = a1[24];
    v7 = a2[24];
    sub_189014CC0(*(a1 + 2), *(a2 + 2));
    if (v8)
    {
      return v6 ^ v7 ^ 1u;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_1891CC4D8(uint64_t a1)
{
  if (a1 < 2)
  {
    if (a1 == 1)
    {
      v3 = sub_188E4CD60(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v3 = sub_188E4CD60((v7 > 1), v8 + 1, 1, v3);
      }

      *(v3 + 2) = v8 + 1;
      v9 = &v3[32 * v8];
      *(v9 + 8) = 1056964608;
      *(v9 + 6) = 0;
      *(v9 + 7) = 0;
      *(v9 + 5) = 0;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v2 = 0;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_188E4CD60(0, *(v3 + 2) + 1, 1, v3);
      }

      v5 = *(v3 + 2);
      v4 = *(v3 + 3);
      if (v5 >= v4 >> 1)
      {
        v3 = sub_188E4CD60((v4 > 1), v5 + 1, 1, v3);
      }

      *(v3 + 2) = v5 + 1;
      v6 = &v3[32 * v5];
      *(v6 + 8) = v2 / (a1 - 1);
      *(v6 + 6) = 0;
      *(v6 + 7) = 0;
      *(v6 + 5) = 0;
      ++v2;
    }

    while (a1 != v2);
  }

  return v3;
}

id sub_1891CC648(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  if (a2)
  {
    v8 = sub_18A4A7258();

    [v8 copy];

    sub_18A4A7DE8();
    swift_unknownObjectRelease();
    v9 = swift_dynamicCast();
    if (v9)
    {
      a1 = v15;
    }

    else
    {
      a1 = 0;
    }

    if (v9)
    {
      v10 = v16;
    }

    else
    {
      v10 = 0;
    }

    if (a3)
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  v10 = 0;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_9:
  [a3 copy];
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_188A34624(0, &unk_1EA93A1A0);
  v11 = swift_dynamicCast();
  v12 = v15;
  if (!v11)
  {
    v12 = 0;
  }

LABEL_14:
  v13 = &v4[OBJC_IVAR___UISliderTick__tick];
  *v13 = a4;
  *(v13 + 1) = a1;
  *(v13 + 2) = v10;
  *(v13 + 3) = v12;
  v17.receiver = v4;
  v17.super_class = UISliderTick;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_1891CC7B0(void *a1)
{
  v3 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v5 = v4;

  v6 = sub_18A4A7258();
  v7 = [a1 decodeObjectForKey_];

  if (v7)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    v8 = swift_dynamicCast();
    if (v8)
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_188A553EC(&v22);
    v9 = 0;
    v10 = 0;
  }

  v11 = sub_18A4A7258();
  v12 = [a1 decodeObjectForKey_];

  if (v12)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22 = v20;
  v23 = v21;
  if (*(&v21 + 1))
  {
    sub_188A34624(0, &unk_1EA93A1A0);
    v13 = swift_dynamicCast();
    v14 = v17;
    if (!v13)
    {
      v14 = 0;
    }
  }

  else
  {
    sub_188A553EC(&v22);
    v14 = 0;
  }

  v15 = &v1[OBJC_IVAR___UISliderTick__tick];
  *v15 = v5;
  *(v15 + 1) = v9;
  *(v15 + 2) = v10;
  *(v15 + 3) = v14;
  v19.receiver = v1;
  v19.super_class = UISliderTick;
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_1891CC9E8(void *a1)
{
  v3 = sub_18A4A7258();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_18A4A7DE8();
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v44[0] = v42;
  v44[1] = v43;
  if (!*(&v43 + 1))
  {
    sub_188A553EC(v44);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F978);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  v5 = v40;
  if (v40 >> 62)
  {
    v6 = sub_18A4A7F68();
    v5 = v40;
    if (v6)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

  v6 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_8:
  v7 = v5;
  v37 = a1;
  v38 = v1;
  *&v44[0] = MEMORY[0x1E69E7CC0];
  sub_188E6D4C0(0, v6 & ~(v6 >> 63), 0);
  if (v6 < 0)
  {
    goto LABEL_24;
  }

  v8 = 0;
  v9 = *&v44[0];
  v10 = v7;
  v39 = v7 & 0xC000000000000001;
  v11 = v7;
  do
  {
    if (v39)
    {
      v12 = sub_188E4B2C4(v8, v10);
    }

    else
    {
      v12 = *(v10 + 8 * v8 + 32);
    }

    v13 = v12;
    v14 = *&v12[OBJC_IVAR___UISliderTick__tick];
    v16 = *&v12[OBJC_IVAR___UISliderTick__tick + 8];
    v15 = *&v12[OBJC_IVAR___UISliderTick__tick + 16];
    v17 = *&v12[OBJC_IVAR___UISliderTick__tick + 24];
    v18 = v17;

    *&v44[0] = v9;
    v20 = *(v9 + 16);
    v19 = *(v9 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_188E6D4C0((v19 > 1), v20 + 1, 1);
      v1 = v38;
      v9 = *&v44[0];
    }

    *(v9 + 16) = v20 + 1;
    v21 = v9 + 32 * v20;
    *(v21 + 32) = v14;
    ++v8;
    *(v21 + 40) = v16;
    *(v21 + 48) = v15;
    *(v21 + 56) = v17;
    v10 = v11;
  }

  while (v6 != v8);

  a1 = v37;
LABEL_21:
  v22 = sub_18A4A7258();
  v23 = [a1 decodeBoolForKey_];

  v24 = sub_18A4A7258();
  v4 = [a1 decodeBoolForKey_];

  v25 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v27 = v26;

  v28 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v30 = v29;

  v31 = sub_18A4A7258();
  [a1 decodeFloatForKey_];
  v33 = v32;

  if (v30 <= v33)
  {
    LOBYTE(v42) = v4;
    *&v44[0] = v9;

    sub_1891C9080(v44);

    v34 = *&v44[0];
    v35 = &v1[OBJC_IVAR___UISliderTrackConfiguration__configuration];
    *v35 = v4;
    *(v35 + 1) = v27;
    *(v35 + 2) = v30;
    *(v35 + 3) = v33;
    *(v35 + 2) = v34;
    v35[24] = v23;
    v41.receiver = v1;
    v41.super_class = UISliderTrackConfiguration;
    return objc_msgSendSuper2(&v41, sel_init);
  }

  __break(1u);
LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_1891CCDF4()
{
  result = qword_1EA93F958;
  if (!qword_1EA93F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F958);
  }

  return result;
}

unint64_t sub_1891CCE4C()
{
  result = qword_1EA93F960;
  if (!qword_1EA93F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93F960);
  }

  return result;
}

uint64_t sub_1891CCEA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1891CCEE8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1891CCF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1891CCF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id sub_1891CD038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _UIRimHighlightEffectViewEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double UIScrollView._intelligenceVisibleBounds.getter()
{
  [v0 adjustedContentInset];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [v0 safeAreaInsets];
  v10 = UIEdgeInsetsMax(15, v2, v4, v6, v8, v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v0 bounds];

  return UIRectInset(v17, v18, v19, v20, v10, v16, v14, v12);
}

uint64_t sub_1891CD298(char a1)
{
  v2 = sub_18A4A39B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  v12[1] = 0;
  sub_1891CD788();
  result = sub_18A4A8A98();
  if (a1)
  {
    sub_18A4A3998();
    sub_188F653E4(v8, v5);
    v10 = *(v3 + 8);
    v10(v5, v2);
    result = (v10)(v8, v2);
  }

  if ((a1 & 2) != 0)
  {
    sub_18A4A39A8();
    sub_188F653E4(v8, v5);
    v11 = *(v3 + 8);
    v11(v5, v2);
    return (v11)(v8, v2);
  }

  return result;
}

uint64_t _sSo12UIScrollViewC5UIKitE27_intelligenceCollectContent2in9collectorySo6CGRectV_21UIIntelligenceSupport0J16ElementCollectorCtF_0()
{
  v1 = sub_18A4A3BA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18A4A39B8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_18A4A36A8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18A4A3728();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  [v0 contentSize];
  [v0 contentOffset];
  [v0 adjustedContentInset];
  sub_18A4A3698();
  sub_1891CD298([v0 _contentScrollableAxes]);
  sub_18A4A3718();
  (*(v8 + 16))(v4, v11, v7);
  (*(v2 + 104))(v4, *MEMORY[0x1E69DBBA0], v1);
  sub_18A4A3418();
  (*(v2 + 8))(v4, v1);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1891CD788()
{
  result = qword_1EA92FD30;
  if (!qword_1EA92FD30)
  {
    sub_18A4A39B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92FD30);
  }

  return result;
}

uint64_t sub_1891CD7E0(void *a1)
{
  sub_18A4A80E8();

  strcpy(v4, "<Element id: ");
  HIWORD(v4[1]) = -4864;
  MEMORY[0x18CFE22D0](*a1, a1[1]);
  MEMORY[0x18CFE22D0](0x6469646E6163203BLL, 0xEE00203A73657461);
  v2 = MEMORY[0x18CFE24A0](a1[5], &type metadata for NavigationBarContentWidthResolver.Element.Candidate);
  MEMORY[0x18CFE22D0](v2);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  MEMORY[0x18CFE22D0](v4[0], v4[1]);
}

uint64_t sub_1891CD8E0()
{
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000017, 0x800000018A6AFEC0);
  MEMORY[0x18CFE22D0](*v0, *(v0 + 8));
  MEMORY[0x18CFE22D0](0x726F697270203B22, 0xED0000203A797469);
  v1 = sub_18A4A8618();
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](0x3A6874646977203BLL, 0xE900000000000020);
  sub_18A4A7718();
  if (*(v0 + 32))
  {
    MEMORY[0x18CFE22D0](0x6F437473756D203BLL, 0xEE00657370616C6CLL);
  }

  if (*(v0 + 33))
  {
    MEMORY[0x18CFE22D0](0xD00000000000001DLL, 0x800000018A6AFEE0);
  }

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1891CDA68()
{
  sub_18A4A80E8();

  strcpy(v3, "<Element id: ");
  HIWORD(v3[1]) = -4864;
  MEMORY[0x18CFE22D0](*v0, v0[1]);
  MEMORY[0x18CFE22D0](0x6469646E6163203BLL, 0xEE00203A73657461);
  v1 = MEMORY[0x18CFE24A0](v0[5], &type metadata for NavigationBarContentWidthResolver.Element.Candidate);
  MEMORY[0x18CFE22D0](v1);

  MEMORY[0x18CFE22D0](62, 0xE100000000000000);
  return v3[0];
}

BOOL sub_1891CDB40(void *a1, uint64_t *a2, uint64_t a3)
{
  if (a1[2] < a2[2])
  {
    return 1;
  }

  v5 = a1;
  v18 = a2;
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = a1[1];
    v10 = (a3 + 40);
    v11 = *v18;
    v12 = v18[1];
    while (1)
    {
      v13 = *(v10 - 1) == v8 && *v10 == v9;
      if (v13 || (sub_18A4A86C8() & 1) != 0)
      {
        break;
      }

      v7 = (v7 + 1);
      v10 += 6;
      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }

    v5 = 0;
    v14 = (a3 + 40);
    while (1)
    {
      v15 = *(v14 - 1) == v11 && *v14 == v12;
      if (v15 || (sub_18A4A86C8() & 1) != 0)
      {
        break;
      }

      v5 = (v5 + 1);
      v14 += 6;
      if (v6 == v5)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    sub_18A4A80E8();

    v17[0] = 0xD00000000000002CLL;
    v17[1] = 0x800000018A6AFF00;
    v16 = sub_1891CD8E0();
    v7 = v17;
    MEMORY[0x18CFE22D0](v16);

    sub_18A4A8398();
    __break(1u);
  }

  return v7 < v5;
}

uint64_t sub_1891CDD34(char *__src, char *a2, char *a3, char *__dst, uint64_t a5)
{
  v6 = v5;
  v7 = a3;
  v8 = a2;
  v9 = __src;
  v10 = a2 - __src;
  v11 = (a2 - __src) / 40;
  v12 = a3 - a2;
  v13 = (a3 - a2) / 40;
  if (v11 < v13)
  {
    v14 = 40 * v11;
    v15 = __dst;
    if (__dst != __src || &__src[v14] <= __dst)
    {
      memmove(__dst, __src, v14);
    }

    v16 = &v15[v14];
    if (v10 < 40)
    {
      v37 = v9;
      goto LABEL_48;
    }

    v17 = a5;
    if (v8 >= v7)
    {
      v37 = v9;
      goto LABEL_48;
    }

    v85 = v5;
    while (1)
    {
      v18 = v7;
      v19 = *(v8 + 1);
      v20 = *(v8 + 2);
      v21 = *(v8 + 3);
      v22 = v8[32];
      v23 = v8[33];
      v79 = *v8;
      v80 = v19;
      v81 = v20;
      v82 = v21;
      v83 = v22;
      v84 = v23;
      v24 = *(v15 + 1);
      v25 = *(v15 + 2);
      v26 = *(v15 + 3);
      v27 = v15[32];
      v28 = v15[33];
      v73 = *v15;
      v74 = v24;
      v75 = v25;
      v76 = v26;
      v77 = v27;
      v78 = v28;

      v29 = v17;
      v30 = v85;
      v31 = sub_1891CDB40(&v79, &v73, v17);
      v85 = v30;
      if (v30)
      {

        v65 = 40 * ((v16 - v15) / 40);
        if (v9 < v15 || v9 >= &v15[v65] || v9 != v15)
        {
          memmove(v9, v15, v65);
        }

        goto LABEL_52;
      }

      v32 = v31;

      if (!v32)
      {
        break;
      }

      v33 = v8;
      v34 = v9 == v8;
      v8 += 40;
      v7 = v18;
      if (!v34)
      {
        goto LABEL_14;
      }

LABEL_15:
      v9 += 40;
      v17 = v29;
      if (v15 >= v16 || v8 >= v7)
      {
        v37 = v9;
        goto LABEL_48;
      }
    }

    v33 = v15;
    v34 = v9 == v15;
    v15 += 40;
    v7 = v18;
    if (v34)
    {
      goto LABEL_15;
    }

LABEL_14:
    v35 = *v33;
    v36 = *(v33 + 1);
    *(v9 + 4) = *(v33 + 4);
    *v9 = v35;
    *(v9 + 1) = v36;
    goto LABEL_15;
  }

  v38 = 40 * v13;
  if (__dst != a2 || &a2[v38] <= __dst)
  {
    v39 = __dst;
    memmove(__dst, a2, 40 * v13);
    __dst = v39;
  }

  __srca = __dst;
  v16 = &__dst[v38];
  if (v12 < 40 || v8 <= v9)
  {
    v37 = v8;
    v15 = __dst;
    goto LABEL_48;
  }

LABEL_23:
  v85 = v6;
  v40 = 0;
  v41 = v16;
  v69 = v8 - 40;
  v70 = v7;
  while (1)
  {
    v42 = v41;
    v43 = &v41[v40];
    v44 = &v41[v40 - 40];
    v46 = *&v41[v40 - 32];
    v45 = *&v41[v40 - 24];
    v47 = *(v43 - 2);
    v48 = *(v43 - 8);
    v49 = *(v43 - 7);
    v79 = *v44;
    v80 = v46;
    v81 = v45;
    v82 = v47;
    v83 = v48;
    v84 = v49;
    v50 = *(v8 - 4);
    v51 = *(v8 - 3);
    v52 = *(v8 - 2);
    v53 = *(v8 - 8);
    v54 = *(v8 - 7);
    v73 = *(v8 - 5);
    v74 = v50;
    v75 = v51;
    v76 = v52;
    v77 = v53;
    v78 = v54;

    v55 = v85;
    v56 = sub_1891CDB40(&v79, &v73, a5);
    v85 = v55;
    if (v55)
    {
      break;
    }

    v57 = v56;

    if (v57)
    {
      v37 = v8 - 40;
      v7 = v70 + v40 - 40;
      if (v70 + v40 != v8)
      {
        v61 = *v69;
        v62 = *(v8 - 24);
        *(v70 + v40 - 8) = *(v8 - 1);
        *v7 = v61;
        *(v70 + v40 - 24) = v62;
      }

      v63 = v42;
      v16 = &v42[v40];
      v15 = __srca;
      v64 = &v42[v40] > __srca;
      v6 = v85;
      if (!v64 || (v8 -= 40, v69 <= v9))
      {
        v16 = &v63[v40];
LABEL_48:
        v67 = 40 * ((v16 - v15) / 40);
        if (v37 < v15 || v37 >= &v15[v67] || v37 != v15)
        {
          memmove(v37, v15, v67);
        }

        goto LABEL_52;
      }

      goto LABEL_23;
    }

    if (v70 + v40 != v43)
    {
      v58 = v70 + v40 - 40;
      v59 = *v44;
      v60 = *(v44 + 16);
      *(v58 + 32) = *(v44 + 32);
      *v58 = v59;
      *(v58 + 16) = v60;
    }

    v40 -= 40;
    v41 = v42;
    v16 = &v42[v40];
    v15 = __srca;
    if (&v42[v40] <= __srca)
    {
      v37 = v8;
      goto LABEL_48;
    }
  }

  v66 = 40 * ((v42 - __srca + v40) / 40);
  if (v8 < __srca || v8 >= &__srca[v66])
  {
    memmove(v8, __srca, v66);
  }

  else if (v8 != __srca)
  {
    memmove(v8, __srca, v66);
  }

LABEL_52:

  return 1;
}

uint64_t sub_1891CE20C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v6 = a3[1];
  if (v6 < 1)
  {
    swift_bridgeObjectRetain_n();
    v8 = MEMORY[0x1E69E7CC0];
LABEL_128:
    v180 = *a1;
    if (!v180)
    {
      goto LABEL_169;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_130;
  }

  swift_bridgeObjectRetain_n();
  v7 = 0;
  v180 = (v5 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v156 = v7;
    if (v7 + 1 >= v6)
    {
LABEL_32:
      v24 = v10;
      goto LABEL_33;
    }

    v11 = *a3;
    v12 = *a3 + 40 * v10;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + 32);
    LOBYTE(v12) = *(v12 + 33);
    v163 = v13;
    i = v14;
    v165 = v15;
    v166 = v16;
    v167 = v17;
    v168 = v12;
    v18 = v11 + 40 * v9;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    LOBYTE(v18) = *(v18 + 33);
    v157 = v19;
    v158 = v20;
    v159 = v21;
    v160 = v22;
    v161 = v23;
    v162 = v18;

    v150 = sub_1891CDB40(&v163, &v157, v5);
    if (v154)
    {
      swift_bridgeObjectRelease_n();
    }

    v24 = v9 + 2;
    v146 = v11;
    v148 = v6;
    if (v9 + 2 < v6)
    {
      do
      {
        v25 = (v11 + 40 * v10);
        v10 = v24;
        v26 = (v11 + 40 * v24);
        v27 = *v26;
        v28 = v26[1];
        v177 = *(v26 + 16);
        v175 = v27;
        v176 = v28;
        v29 = *v25;
        v30 = v25[1];
        v179 = *(v25 + 16);
        v178[0] = v29;
        v178[1] = v30;
        if (v176 < v30)
        {
          if (!v150)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v31 = *(v5 + 16);
          if (!v31)
          {
            goto LABEL_27;
          }

          v32 = v8;
          v33 = 0;
          v34 = v175;
          v35 = v180;
          while (1)
          {
            v36 = *(v35 - 1) == v34 && *v35 == *(&v34 + 1);
            if (v36 || (sub_18A4A86C8() & 1) != 0)
            {
              break;
            }

            ++v33;
            v35 += 48;
            if (v31 == v33)
            {
              goto LABEL_27;
            }
          }

          v37 = 0;
          v38 = v178[0];
          v39 = v180;
          while (1)
          {
            v40 = *(v39 - 1) == v38 && *v39 == *(&v38 + 1);
            if (v40 || (sub_18A4A86C8() & 1) != 0)
            {
              break;
            }

            ++v37;
            v39 += 48;
            if (v31 == v37)
            {
              goto LABEL_27;
            }
          }

          v41 = v33 >= v37;
          v8 = v32;
          v9 = v156;
          v11 = v146;
          v6 = v148;
          if (((v150 ^ v41) & 1) == 0)
          {
            v24 = v10;
            goto LABEL_30;
          }
        }

        v24 = v10 + 1;
      }

      while (v10 + 1 != v6);
      v24 = v6;
      if (!v150)
      {
        goto LABEL_33;
      }
    }

    else
    {
LABEL_30:
      if (!v150)
      {
        goto LABEL_33;
      }
    }

    if (v24 < v9)
    {
      goto LABEL_160;
    }

    if (v9 < v24)
    {
      v120 = 40 * v24 - 16;
      v121 = 40 * v9 + 33;
      v122 = v24;
      v123 = v9;
      do
      {
        if (v123 != --v122)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_164;
          }

          v125 = (v124 + v121);
          v126 = *(v124 + v121 - 33);
          v127 = v124 + v120;
          v128 = *(v125 - 17);
          v129 = *(v125 - 9);
          v130 = *(v125 - 1);
          v131 = *v125;
          v132 = *(v127 + 8);
          v133 = *(v127 - 8);
          *(v125 - 33) = *(v127 - 24);
          *(v125 - 17) = v133;
          *(v125 - 1) = v132;
          *(v127 - 24) = v126;
          *(v127 - 8) = v128;
          *v127 = v129;
          *(v127 + 8) = v130;
          *(v127 + 9) = v131;
        }

        ++v123;
        v120 -= 40;
        v121 += 40;
      }

      while (v123 < v122);
    }

LABEL_33:
    v42 = a3[1];
    if (v24 >= v42)
    {
      goto LABEL_67;
    }

    if (__OFSUB__(v24, v9))
    {
      goto LABEL_157;
    }

    if (v24 - v9 >= a4)
    {
      goto LABEL_67;
    }

    v43 = v9 + a4;
    if (__OFADD__(v9, a4))
    {
      goto LABEL_158;
    }

    if (v43 >= v42)
    {
      v43 = a3[1];
    }

    if (v43 < v9)
    {
      break;
    }

    if (v24 != v43)
    {
      v147 = v8;
      v149 = v43;
      v44 = *a3;
      do
      {
        v151 = v24;
        v45 = v24;
        do
        {
          v46 = (v44 + 40 * v45);
          v47 = *v46;
          v48 = v46[1];
          v172 = *(v46 + 16);
          v170 = v47;
          v171 = v48;
          v49 = *(v46 - 40);
          v50 = *(v46 - 24);
          v174 = *(v46 - 4);
          v173[0] = v49;
          v173[1] = v50;
          if (v171 >= v50)
          {
            v51 = *(v5 + 16);
            if (!v51)
            {
              goto LABEL_167;
            }

            v52 = 0;
            v53 = v170;
            v54 = v180;
            while (1)
            {
              v55 = *(v54 - 1) == v53 && *v54 == *(&v53 + 1);
              if (v55 || (sub_18A4A86C8() & 1) != 0)
              {
                break;
              }

              ++v52;
              v54 += 48;
              if (v51 == v52)
              {
                goto LABEL_167;
              }
            }

            v56 = 0;
            v57 = v173[0];
            v58 = v180;
            while (1)
            {
              v59 = *(v58 - 1) == v57 && *v58 == *(&v57 + 1);
              if (v59 || (sub_18A4A86C8() & 1) != 0)
              {
                break;
              }

              ++v56;
              v58 += 48;
              if (v51 == v56)
              {
                goto LABEL_167;
              }
            }

            v60 = v52 >= v56;
            v5 = a5;
            v9 = v156;
            if (v60)
            {
              break;
            }
          }

          if (!v44)
          {
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_163:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_164:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_165:

            __break(1u);
LABEL_166:
            swift_bridgeObjectRelease_n();
            __break(1u);
LABEL_167:
            v157 = 0;
            v158 = 0xE000000000000000;
            sub_1891CED2C(&v170, &v163);
            sub_1891CED2C(v173, &v163);
            sub_18A4A80E8();

            v163 = 0xD00000000000002CLL;
            for (i = 0x800000018A6AFF00; ; i = 0x800000018A6AFF00)
            {
              v143 = sub_1891CD8E0();
              MEMORY[0x18CFE22D0](v143);

              sub_18A4A8398();
              __break(1u);
LABEL_169:
              swift_bridgeObjectRelease_n();
              __break(1u);
LABEL_27:
              v157 = 0;
              v158 = 0xE000000000000000;
              sub_1891CED2C(&v175, &v163);
              sub_1891CED2C(v178, &v163);
              sub_18A4A80E8();

              v163 = 0xD00000000000002CLL;
            }
          }

          --v45;
          v61 = *v46;
          v62 = v46 - 40;
          v63 = *(v46 + 2);
          v64 = *(v46 + 3);
          v65 = *(v46 + 32);
          v66 = *(v46 + 33);
          v67 = *(v46 - 24);
          *v46 = *(v46 - 40);
          v46[1] = v67;
          *(v46 + 4) = *(v46 - 1);
          *v62 = v61;
          *(v62 + 16) = v63;
          *(v62 + 24) = v64;
          *(v62 + 32) = v65;
          *(v62 + 33) = v66;
        }

        while (v45 != v9);
        v24 = v151 + 1;
      }

      while (v151 + 1 != v149);
      v24 = v149;
      v8 = v147;
    }

LABEL_67:
    if (v24 < v9)
    {
      goto LABEL_156;
    }

    v152 = v24;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_188E4B688(0, *(v8 + 16) + 1, 1, v8);
    }

    v69 = *(v8 + 16);
    v68 = *(v8 + 24);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v8 = sub_188E4B688((v68 > 1), v69 + 1, 1, v8);
    }

    *(v8 + 16) = v70;
    v71 = v8 + 16 * v69;
    *(v71 + 32) = v9;
    *(v71 + 40) = v152;
    v72 = *a1;
    if (!*a1)
    {
      goto LABEL_166;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v8 + 32);
          v75 = *(v8 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_87:
          if (v77)
          {
            goto LABEL_145;
          }

          v90 = (v8 + 16 * v70);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_148;
          }

          v96 = (v8 + 32 + 16 * v73);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_151;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_152;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        v100 = (v8 + 16 * v70);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_101:
        if (v95)
        {
          goto LABEL_147;
        }

        v103 = v8 + 16 * v73;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_150;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_108:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        v112 = *a3;
        if (!*a3)
        {
          goto LABEL_163;
        }

        v113 = v8;
        v114 = v8 + 32;
        v8 = *(v8 + 32 + 16 * v111);
        v115 = *(v114 + 16 * v73 + 8);
        v116 = (v112 + 40 * v8);
        v117 = (v112 + 40 * *(v114 + 16 * v73));
        v118 = (v112 + 40 * v115);

        sub_1891CDD34(v116, v117, v118, v72, v5);
        if (v154)
        {
          swift_bridgeObjectRelease_n();
        }

        if (v115 < v8)
        {
          goto LABEL_141;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_18917EF5C(v113);
        }

        if (v111 >= *(v113 + 2))
        {
          goto LABEL_142;
        }

        v119 = &v113[16 * v111];
        *(v119 + 4) = v8;
        *(v119 + 5) = v115;
        v169 = v113;
        sub_18917EED0(v73);
        v8 = v169;
        v70 = *(v169 + 16);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v8 + 32 + 16 * v70;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_143;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_144;
      }

      v85 = (v8 + 16 * v70);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_146;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_149;
      }

      if (v89 >= v81)
      {
        v107 = (v8 + 32 + 16 * v73);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_153;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_87;
    }

LABEL_3:
    v7 = v152;
    v6 = a3[1];
    if (v152 >= v6)
    {
      goto LABEL_128;
    }
  }

LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  v8 = sub_18917EF5C(v8);
LABEL_130:
  v169 = v8;
  v135 = v8;
  v8 = *(v8 + 16);
  if (v8 >= 2)
  {
    do
    {
      v136 = *a3;
      if (!*a3)
      {
        goto LABEL_165;
      }

      v137 = *&v135[16 * v8];
      v138 = *&v135[16 * v8 + 24];
      v139 = (v136 + 40 * v137);
      v140 = (v136 + 40 * *&v135[16 * v8 + 16]);
      v141 = (v136 + 40 * v138);

      sub_1891CDD34(v139, v140, v141, v180, a5);
      if (v154)
      {
        break;
      }

      if (v138 < v137)
      {
        goto LABEL_154;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = sub_18917EF5C(v135);
      }

      if (v8 - 2 >= *(v135 + 2))
      {
        goto LABEL_155;
      }

      v142 = &v135[16 * v8];
      *v142 = v137;
      *(v142 + 1) = v138;
      v169 = v135;
      sub_18917EED0(v8 - 1);
      v135 = v169;
      v8 = *(v169 + 16);
    }

    while (v8 > 1);
  }

  return swift_bridgeObjectRelease_n();
}

unint64_t sub_1891CED64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_18A4A7368();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_18A4A7448();
}

uint64_t sub_1891CEE14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1891CEE5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1891CEEBC(uint64_t a1)
{
  v24 = *(a1 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v23 = a1 + 32;
  while (1)
  {
    v4 = *(v23 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_18A4A7F68();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v22 = sub_18A4A7F68();
      v9 = v22 + v6;
      if (__OFADD__(v22, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v27 = v6;
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_18A4A7F68();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_18A4A8168();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v27)
    {
      goto LABEL_36;
    }

    v25 = v2;
    v14 = v10 + 8 * v11 + 32;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_188A34360(&qword_1EA93FA98, &unk_1EA93FA88);
      for (i = 0; i != v13; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA88);
        v16 = sub_188E4D4DC(v26, i, v4);
        v18 = *v17;

        (v16)(v26, 0);
        *(v14 + 8 * i) = v18;
      }
    }

    else
    {
      type metadata accessor for _UITimeline.Action();
      swift_arrayInitWithCopy();
    }

    v2 = v25;
    if (v27 >= 1)
    {
      v19 = *(v10 + 16);
      v20 = __OFADD__(v19, v27);
      v21 = v19 + v27;
      if (v20)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v21;
    }

LABEL_4:
    if (++v1 == v24)
    {
      return v2;
    }
  }

  result = sub_18A4A7F68();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v27 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t _UILiquidMorphAnimation.Parameters.init(manageViews:usingIntermediateShapes:kick:animationSmoothness:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 1) = a2;
  *(a8 + 8) = a3;
  *(a8 + 16) = a4;
  *(a8 + 24) = a5 & 1;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  return result;
}

uint64_t _UILiquidMorphAnimation.Parameters.kick.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3 & 1;
  return result;
}

uint64_t _UILiquidMorphAnimation.Parameters.animationSmoothness.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_1891CF2E4(unint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v121 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA58);
  v114 = *(v13 - 8);
  v115 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v112 = &v101 - v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = *(a2 + 1);
  v118 = *(a2 + 2);
  v119 = v19;
  v20 = a2[24];
  v116 = v18;
  v117 = v20;
  v120 = *(a2 + 4);
  v21 = a2[40];
  result = _UISolariumEnabled();
  if (result)
  {
    v106 = v21;
    v107 = a5;
    if (a1 >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
      v100 = sub_18A4A83B8();

      a1 = v100;
      v24 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
      if ((v17 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v23 = a1 & 0xFFFFFFFFFFFFFF8;

      sub_18A4A8738();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
      if (swift_dynamicCastMetatype())
      {
        v24 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
        if (v17)
        {
          goto LABEL_5;
        }

LABEL_62:
        v108 = a4;
        v109 = a3;
        v111 = v24[330];
        v62 = *&v111[v7];
        v122[0] = a1;
        v122[3] = v62;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA60);
        sub_188A34360(&unk_1EA930B88, &unk_1EA93FA60);
        v63 = v112;
        sub_18A4A71E8();
        v64 = sub_188D7A46C(v63, v62);

        v65 = v113;
        v66 = v115;
        sub_18A4A84C8();
        v67 = sub_188D7A46C(v65, a1);
        v68 = *(v114 + 8);
        v68(v65, v66);
        v68(v63, v66);
        if (qword_1EA930BF0 != -1)
        {
          swift_once();
        }

        v69 = sub_18A4A4378();
        __swift_project_value_buffer(v69, qword_1EA994EE0);

        v70 = sub_18A4A4358();
        v71 = sub_18A4A7968();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v115 = v67;
          v73 = v72;
          v74 = swift_slowAlloc();
          v122[0] = v74;
          *v73 = 136315138;
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
          v76 = MEMORY[0x18CFE24E0](v64, v75);
          v78 = v7;
          v79 = sub_1891D69C0(v76, v77, v122);

          *(v73 + 4) = v79;
          v7 = v78;
          _os_log_impl(&dword_188A29000, v70, v71, "LiquidMorph From: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);
          MEMORY[0x18CFEA5B0](v74, -1, -1);
          v80 = v73;
          v67 = v115;
          MEMORY[0x18CFEA5B0](v80, -1, -1);
        }

        v81 = sub_18A4A4358();
        v82 = sub_18A4A7968();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v122[0] = v84;
          *v83 = 136315138;
          v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93A088);
          v86 = MEMORY[0x18CFE24E0](v67, v85);
          v87 = v67;
          v89 = sub_1891D69C0(v86, v88, v122);

          *(v83 + 4) = v89;
          _os_log_impl(&dword_188A29000, v81, v82, "LiquidMorph To: %s", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v84);
          MEMORY[0x18CFEA5B0](v84, -1, -1);
          MEMORY[0x18CFEA5B0](v83, -1, -1);
        }

        else
        {

          v87 = v67;
        }

        v90 = *(v7 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer);
        type metadata accessor for _UIReparentingView();
        v91 = v90;

        v92 = v91;
        v93 = sub_188D733EC(v92);
        [v93 setFrame_];
        [v93 setAlpha_];

        v94 = v92;
        v95 = sub_188D733EC(v94);
        [v95 setFrame_];
        [v95 setAlpha_];

        sub_1891D4604(v64, v93, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0);
        v96 = swift_allocObject();
        v97 = v107;
        v98 = v121;
        v96[2] = v107;
        v96[3] = v98;
        v96[4] = v7;
        sub_188D738F4(v97);
        v99 = v7;
        sub_1891D4604(v87, v95, 0, v119, v118, v117, 0, v120, v106, v116, v109, v108, sub_1891D69B4, v96);

        *&v111[v7] = a1;
      }

      v50 = a4;
      v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v51)
      {
        v52 = a3;
        v53 = v23 + 32;
        while (1)
        {
          v122[4] = &unk_1EFE40210;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v53 += 8;
          if (!--v51)
          {
            goto LABEL_48;
          }
        }

        a1 = v23 | 1;
LABEL_48:
        a3 = v52;
        a4 = v50;
        v24 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
        if ((v17 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else
      {
        a4 = v50;
        v24 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
        if ((v17 & 1) == 0)
        {
          goto LABEL_62;
        }
      }
    }

LABEL_5:
    v25 = v24[330];
    v26 = *(v7 + v25);
    if (v26 >> 62)
    {
      if (!sub_18A4A7F68())
      {
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    v103 = v25;
    if ((v26 & 0xC000000000000001) != 0)
    {

      v27 = sub_188E49F3C(0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v27 = *(v26 + 32);
      swift_unknownObjectRetain();
    }

    v28 = [v27 _morphContainerView];
    if (v28)
    {
      v110 = v28;
      v104 = v7;
      v102 = a1 >> 62;
      v108 = a4;
      v109 = a3;
      v111 = v27;
      if (!(a1 >> 62))
      {
        result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v29 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
        if (result)
        {
LABEL_13:
          v30 = result - 1;
          if (result >= 1)
          {
            v31 = 0;
            v32 = a1 & 0xC000000000000001;
            v33 = &selRef_widthAnchor;
            v105 = a1 & 0xC000000000000001;
            while (1)
            {
              if (v32)
              {
                v35 = sub_188E49F3C(v31, a1);
              }

              else
              {
                v35 = *(a1 + 8 * v31 + 32);
                swift_unknownObjectRetain();
              }

              v36 = [v35 v29[49]];
              v37 = [v36 v33[160]];
              if (v37)
              {
                v34 = v37;
                swift_unknownObjectRelease();

                if (v30 == v31)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                v38 = a1;
                v39 = v33;
                v40 = [v111 v29[49]];
                v41 = [v40 superview];
                v42 = v110;
                if (v41 && (v43 = v41, v41, v43 == v42))
                {
                  [v42 insertSubview:v36 belowSubview:v40];
                }

                else
                {
                  [v42 insertSubview:v36 atIndex:0];
                }

                swift_unknownObjectRelease();

                v33 = v39;
                a1 = v38;
                v32 = v105;
                if (v30 == v31)
                {
                  goto LABEL_26;
                }
              }

              ++v31;
            }
          }

          __break(1u);
          goto LABEL_82;
        }

        goto LABEL_26;
      }

LABEL_78:
      result = sub_18A4A7F68();
      v29 = &selRef__modalAnimationFinishedEndIgnoringInteractiveEvents_;
      if (result)
      {
        goto LABEL_13;
      }

LABEL_26:
      v44 = *&v104[v103];
      if (v44 >> 62)
      {
        v45 = sub_18A4A7F68();
      }

      else
      {
        v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 = MEMORY[0x1E69E7CC0];
      if (v45)
      {
        v122[0] = MEMORY[0x1E69E7CC0];

        result = sub_18A4A8208();
        if (v45 < 0)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v47 = 0;
        do
        {
          if ((v44 & 0xC000000000000001) != 0)
          {
            v48 = sub_188E49F3C(v47, v44);
          }

          else
          {
            v48 = *(v44 + 8 * v47 + 32);
            swift_unknownObjectRetain();
          }

          ++v47;
          v49 = [v48 v29[49]];
          swift_unknownObjectRelease();
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
        }

        while (v45 != v47);

        v46 = v122[0];
      }

      v54 = sub_188F98498(v46);

      swift_beginAccess();
      sub_189075D74(v54);
      swift_endAccess();
      if (v102)
      {
        v55 = sub_18A4A7F68();
      }

      else
      {
        v55 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = MEMORY[0x1E69E7CC0];
      if (v55)
      {
        v122[0] = MEMORY[0x1E69E7CC0];
        result = sub_18A4A8208();
        if (v55 < 0)
        {
LABEL_83:
          __break(1u);
          return result;
        }

        v57 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v58 = sub_188E49F3C(v57, a1);
          }

          else
          {
            v58 = *(a1 + 8 * v57 + 32);
            swift_unknownObjectRetain();
          }

          ++v57;
          v59 = [v58 v29[49]];
          swift_unknownObjectRelease();
          sub_18A4A81D8();
          sub_18A4A8218();
          sub_18A4A8228();
          sub_18A4A81E8();
        }

        while (v55 != v57);
        v56 = v122[0];
      }

      v60 = sub_188F98498(v56);

      v61 = v104;
      swift_beginAccess();
      v7 = v61;
      sub_1891D7158(v60);
      swift_endAccess();
      swift_unknownObjectRelease();

      a4 = v108;
      a3 = v109;
      v24 = &OBJC_IVAR____UINavigationBarPlatterItemView_animationScheduler;
      goto LABEL_62;
    }

    swift_unknownObjectRelease();
  }

  if (a5)
  {
    return a5();
  }

  return result;
}

uint64_t sub_1891CFF3C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  sub_1891D59C0();
  v4 = MEMORY[0x1E69E7CC0];
  *(a3 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_currentMorphables) = MEMORY[0x1E69E7CC0];

  v5 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
  swift_beginAccess();
  *(a3 + v5) = v4;
}

uint64_t sub_1891CFFC8()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline;
  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___morphTimeline);
  }

  else
  {
    type metadata accessor for _UITimeline();
    v2 = swift_allocObject();
    v3 = MEMORY[0x1E69E7CC0];
    *(v2 + 24) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = v3;
    *(v2 + 40) = 1;
    *(v2 + 48) = 0x3FF0000000000000;
    *(v2 + 56) = 0;
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1891D0050()
{
  v1 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView;
  v2 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  }

  else
  {
    type metadata accessor for UISDFView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1891D00E0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(UIView) init];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

uint64_t sub_1891D0150()
{
  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals))
  {
    v1 = *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1891D0198(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (!_UISolariumEnabled())
  {
    goto LABEL_30;
  }

  v384 = a4;
  type metadata accessor for _UIMorphAnimationSettingsDomain();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v412.receiver = ObjCClassFromMetadata;
  v412.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v15 = objc_msgSendSuper2(&v412, sel_rootSettings);
  if (!v15)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v16 = v15;
  type metadata accessor for _UIMorphAnimationSettings();
  v17 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_morphV2Enabled);

  a4 = v384;
  if (v17 != 1)
  {
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_18A64B710;
    *(v131 + 32) = a2;
    LOWORD(aBlock.origin.x) = 256;
    aBlock.size.width = 0.0;
    aBlock.origin.y = 0.0;
    LOBYTE(aBlock.size.height) = 1;
    *v414 = 0;
    v414[8] = 1;
    swift_unknownObjectRetain();
    sub_1891CF2E4(v131, &aBlock, a4, a5, a6, a7);

    return;
  }

  v341 = a5;
  v356 = ObjCClassFromMetadata;
  v411 = &unk_1EFE40210;
  v381 = [swift_dynamicCastObjCProtocolUnconditional() _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
  v18 = [(UITargetedPreview *)v381 _typedStorage];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9371F8);
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  v20 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v401 = *(v18 + v20);
  *(v18 + v20) = 0x8000000000000000;
  v22 = v7;
  sub_188A40430(v19, &_s31IgnoreForGlassSizeResolutionKeyVN, isUniquelyReferenced_nonNull_native);
  *(v18 + v20) = v401;
  swift_endAccess();

  v410 = &unk_1EFE40210;
  v383 = [swift_dynamicCastObjCProtocolUnconditional() _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
  v23 = [(UITargetedPreview *)v383 _typedStorage];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v25 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *&v401 = *(v23 + v25);
  *(v23 + v25) = 0x8000000000000000;
  sub_188A40430(v24, &_s31IgnoreForGlassSizeResolutionKeyVN, v26);
  *(v23 + v25) = v401;
  swift_endAccess();

  v27 = sub_1891D00C8();
  [a3 _frame];
  [v27 setFrame_];

  v28 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___pivotView;
  v29 = [*&v22[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___pivotView] layer];
  v30 = sub_18A4A7258();
  [v29 setName_];

  [*&v22[v28] setUserInteractionEnabled_];
  v31 = *&v22[v28];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 clearColor];
  v35 = [objc_allocWithZone(UIPreviewParameters) init];
  [v35 setBackgroundColor_];
  [v35 setVisiblePath_];
  [v35 setShadowPath_];

  v36 = [a3 target];
  v37 = [objc_allocWithZone(UITargetedPreview) initWithView:v33 parameters:v35 target:v36];

  v38 = [(UITargetedPreview *)v37 _typedStorage];
  v39 = swift_allocObject();
  *(v39 + 16) = 1;
  v40 = OBJC_IVAR____UITypedStorage_storage;
  swift_beginAccess();
  v41 = swift_isUniquelyReferenced_nonNull_native();
  *&v401 = *(v38 + v40);
  *(v38 + v40) = 0x8000000000000000;
  sub_188A40430(v39, &_s31IgnoreForGlassSizeResolutionKeyVN, v41);
  *(v38 + v40) = v401;
  swift_endAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_18A64E3F0;
  v43 = v37;
  v44 = [v381 view];
  v45 = [v44 _vendAssertionForOverrideAlpha_];

  *(v42 + 32) = v45;
  v46 = [v383 view];
  v47 = [v46 _vendAssertionForOverrideAlpha_];

  *(v42 + 40) = v47;
  *&v22[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_hidingAssertions] = v42;

  v48 = *&v22[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion];
  v49 = swift_allocObject();
  v49[2] = a6;
  v49[3] = a7;
  v49[4] = v22;
  *v414 = sub_1891D7A7C;
  *&v414[8] = v49;
  *&aBlock.origin.x = MEMORY[0x1E69E9820];
  *&aBlock.origin.y = 1107296256;
  *&aBlock.size.width = sub_188A4A8F0;
  *&aBlock.size.height = &block_descriptor_13_3;
  v50 = _Block_copy(&aBlock);
  sub_188D738F4(a6);
  v22;

  [v48 addCompletion_];
  _Block_release(v50);
  [v381 size];
  v53 = v51 * v52;
  [v383 size];
  v56 = v54 * v55;
  v342 = v53;
  v336 = v56;
  if (v53 >= v56)
  {
    v57 = v381;
  }

  else
  {
    v57 = v383;
  }

  if (v53 >= v56)
  {
    v58 = v383;
  }

  else
  {
    v58 = v381;
  }

  v59 = v58;
  v60 = v57;
  v61 = [v59 target];
  v62 = [v61 container];

  [v59 _frame];
  [v62 convertRect:0 toView:?];
  v345 = v64;
  v346 = v63;
  v343 = v66;
  v344 = v65;

  v67 = [v60 target];
  v68 = [v67 container];

  v357 = v60;
  [v60 _frame];
  [v68 convertRect:0 toView:?];
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;

  v77 = [v43 target];
  v78 = [v77 container];

  [v43 _frame];
  [v78 convertRect:0 toView:?];
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;

  v375 = v70;
  v377 = v72;
  v424.origin.x = v70;
  v424.origin.y = v72;
  v380 = v74;
  v424.size.width = v74;
  rect = v76;
  v424.size.height = v76;
  Width = CGRectGetWidth(v424);
  Center = UIRectGetCenter(v80, v82, v84);
  v370 = v87;
  v425.origin.x = v80;
  v425.origin.y = v82;
  v425.size.width = v84;
  v425.size.height = v86;
  v88 = CGRectGetHeight(v425) * 0.5;
  v426.origin.x = v80;
  v426.origin.y = v82;
  v426.size.width = v84;
  v426.size.height = v86;
  v89 = CGRectGetWidth(v426) * 0.5;
  v427.origin.x = v80;
  v427.origin.y = v82;
  v427.size.width = v84;
  v427.size.height = v86;
  v90 = CGRectGetHeight(v427) * 0.5;
  v363 = v82;
  v366 = v80;
  v428.origin.x = v80;
  v428.origin.y = v82;
  v358 = v86;
  v361 = v84;
  v428.size.width = v84;
  v428.size.height = v86;
  v91 = CGRectGetWidth(v428);
  v429.origin.x = UIRectInset(v346, v345, v344, v343, v88, v91 * 0.5, v90, v89);
  x = v429.origin.x;
  y = v429.origin.y;
  v94 = v429.size.width;
  height = v429.size.height;
  MinX = CGRectGetMinX(v429);
  v430.origin.x = x;
  v430.origin.y = y;
  v430.size.width = v94;
  v430.size.height = height;
  MaxX = CGRectGetMaxX(v430);
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_82;
  }

  v98 = MaxX;
  v431.origin.x = x;
  v431.origin.y = y;
  v431.size.width = v94;
  v431.size.height = height;
  MinY = CGRectGetMinY(v431);
  v432.origin.x = x;
  v432.origin.y = y;
  v432.size.width = v94;
  v432.size.height = height;
  MaxY = CGRectGetMaxY(v432);
  if (MinY > MaxY)
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v328 = v48;
  v101 = Center;
  if (MinX > Center)
  {
    v101 = MinX;
  }

  if (v98 >= v101)
  {
    v102 = v101;
  }

  else
  {
    v102 = v98;
  }

  v103 = v370;
  if (MinY > v370)
  {
    v103 = MinY;
  }

  if (MaxY >= v103)
  {
    v104 = v103;
  }

  else
  {
    v104 = MaxY;
  }

  UIRectCenteredAboutPointScale(v375, v377, v380, Width, v102, v104, 1.0);
  v371 = v105;
  v337 = v106;
  v351 = v107;
  v347 = v108;
  v433.origin.x = v366;
  v433.origin.y = v363;
  v433.size.width = v361;
  v433.size.height = v86;
  v109 = CGRectGetWidth(v433);
  v434.origin.x = v366;
  v434.origin.y = v363;
  v434.size.width = v361;
  v434.size.height = v86;
  v110 = CGRectGetHeight(v434);
  if (v110 < v109)
  {
    v109 = v110;
  }

  v435.origin.x = v375;
  v435.origin.y = v377;
  v435.size.width = v380;
  v435.size.height = rect;
  v111 = CGRectGetWidth(v435);
  *v422 = v371;
  *&v422[1] = v337;
  *&v422[2] = v351;
  v422[3] = v347;
  v423 = 0;
  v374 = sub_18923BBD8(v422, COERCE__INT64(v109 / v111), 0);
  v409.receiver = v356;
  v409.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  v112 = objc_msgSendSuper2(&v409, sel_rootSettings);
  if (!v112)
  {
    goto LABEL_86;
  }

  v113 = v112;
  v114 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieEnabled);

  v339 = v59;
  v340 = v43;
  if (v114 == 1)
  {
    v386.receiver = v356;
    v386.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v115 = objc_msgSendSuper2(&v386, sel_rootSettings);
    if (!v115)
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v116 = v115;
    v334 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_genieScale);

    v117 = UIRectGetCenter(v371, v337, v351);
    v119 = v118;
    v120 = [(UITargetedPreview *)v374 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C9B0);
    v121 = swift_allocObject();
    *(v121 + 16) = 1;
    *(v121 + 24) = v334;
    *(v121 + 32) = v117;
    *(v121 + 40) = v119;
    *(v121 + 48) = v375;
    *(v121 + 56) = v377;
    *(v121 + 64) = v380;
    *(v121 + 72) = rect;
    *(v121 + 80) = 256;
    v122 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v123 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = *(v120 + v122);
    *(v120 + v122) = 0x8000000000000000;
    sub_188A40430(v121, &_s18GenieParametersKeyVN, v123);
    *(v120 + v122) = v401;
    swift_endAccess();

    v124 = UIRectGetCenter(v371, v337, v351);
    v126 = v125;
    v127 = [(UITargetedPreview *)v357 _typedStorage];
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    *(v128 + 24) = v334;
    *(v128 + 32) = v124;
    *(v128 + 40) = v126;
    *(v128 + 48) = v375;
    *(v128 + 56) = v377;
    *(v128 + 64) = v380;
    *(v128 + 72) = rect;
    *(v128 + 80) = 256;
    v129 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v130 = swift_isUniquelyReferenced_nonNull_native();
    *&v401 = *(v127 + v129);
    *(v127 + v129) = 0x8000000000000000;
    sub_188A40430(v128, &_s18GenieParametersKeyVN, v130);
    *(v127 + v129) = v401;
    swift_endAccess();

    v59 = v339;
  }

  if ([v381 _resolvedBackgroundMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(v407);
    swift_unknownObjectRelease();
  }

  else
  {
    v408 = 0;
    memset(v407, 0, sizeof(v407));
  }

  if ([v383 _resolvedBackgroundMaterial])
  {
    swift_getObjectType();
    sub_18901EB8C(v405);
    swift_unknownObjectRelease();
  }

  else
  {
    v406 = 0;
    memset(v405, 0, sizeof(v405));
  }

  [v59 size];
  v133 = v132;
  [v59 size];
  if (v134 >= v133)
  {
    v135 = v133;
  }

  else
  {
    v135 = v134;
  }

  [v59 size];
  v137 = v136;
  [v59 size];
  if (v137 > v138)
  {
    v139 = v137;
  }

  else
  {
    v139 = v138;
  }

  v372 = v139;
  [v357 size];
  v141 = v140;
  [v357 size];
  if (v142 >= v141)
  {
    v143 = v141;
  }

  else
  {
    v143 = v142;
  }

  v327 = v143;
  v144 = UIRectGetCenter(v366, v363, v361);
  v146 = v145;
  v335 = v135;
  UIRectCenteredAboutPointScale(0.0, 0.0, v135, v135, v144, v145, 1.0);
  v348 = v147;
  v331 = v149;
  v333 = v148;
  v329 = v150;
  v151 = UIRectGetCenter(v375, v377, v380);
  v153 = v152;
  v352 = _UILerp_3(v144, v151);
  v154 = _UILerp_3(v146, v153);
  v436.origin.x = UIRectInset(v375, v377, v380, rect, 0.0, 0.0, 0.0, 0.0);
  v155 = v436.origin.x;
  v156 = v436.origin.y;
  v157 = v436.size.width;
  v158 = v436.size.height;
  v159 = CGRectGetMinX(v436);
  v437.origin.x = v155;
  v437.origin.y = v156;
  v437.size.width = v157;
  v437.size.height = v158;
  v160 = CGRectGetMaxX(v437);
  if (v159 > v160)
  {
    goto LABEL_83;
  }

  v161 = v160;
  v438.origin.x = v155;
  v438.origin.y = v156;
  v438.size.width = v157;
  v438.size.height = v158;
  v162 = CGRectGetMinY(v438);
  v439.origin.x = v155;
  v439.origin.y = v156;
  v439.size.width = v157;
  v439.size.height = v158;
  v163 = CGRectGetMaxY(v439);
  if (v162 > v163)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v164 = v352;
  if (v159 > v352)
  {
    v164 = v159;
  }

  if (v161 >= v164)
  {
    v165 = v164;
  }

  else
  {
    v165 = v161;
  }

  if (v162 > v154)
  {
    v166 = v162;
  }

  else
  {
    v166 = v154;
  }

  if (v163 >= v166)
  {
    v167 = v166;
  }

  else
  {
    v167 = v163;
  }

  UIRectCenteredAboutPointScale(v348, v333, v331, v329, v165, v167, 1.0);
  v420[0] = v168;
  v420[1] = v169;
  v420[2] = v170;
  v420[3] = v171;
  v421 = 0;
  v172 = sub_18923BBD8(v420, 0x3FD0000000000000, 0);

  if ((v372 / v335 + -1.0) * 0.5 < 0.0)
  {
    v173 = 0.0;
  }

  else
  {
    v173 = (v372 / v335 + -1.0) * 0.5;
  }

  sub_1891CFFC8();
  sub_188F75AF4();

  v174 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for _UITimeline.Action();
  v175 = swift_allocObject();
  v176 = dbl_18A6731B0[v342 < v336] * v173;
  v175[2] = 0xD000000000000010;
  v175[3] = 0x800000018A6AFF90;
  v175[4] = 0;
  v175[5] = sub_1891D7A88;
  v175[6] = v174;
  v353 = v172;
  v338 = v175;
  if (v342 < v336)
  {
    v177 = v175;
    v359 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v359 setDampingRatio_];
    [v359 setResponse_];
    v178 = objc_allocWithZone(UIViewSpringAnimationBehaviorSettings);

    v364 = [v178 &selRef_inhibitSetupOrientation];
    [v364 setDampingRatio_];
    [v364 setResponse_];
    v179 = [v383 target];
    v367 = [v383 retargetedPreviewWithTarget_];

    v440.origin.x = v375;
    v440.origin.y = v377;
    v440.size.width = v380;
    v440.size.height = rect;
    v180 = CGRectGetWidth(v440);
    CACornerRadiiMake(&v401, v180, v180, v180, v180);
    LOBYTE(v418[0]) = 0;
    *&v387[7] = v401;
    *&v387[23] = v402;
    *&v387[39] = *v403;
    *&v387[55] = *&v403[16];
    memset(&aBlock, 0, sizeof(aBlock));
    v414[0] = 1;
    *&v414[16] = 0;
    *&v414[8] = 0;
    v414[24] = 1;
    *&v414[25] = *v387;
    *&v414[88] = *&v403[24];
    *&v414[73] = *&v387[48];
    *&v414[57] = *&v387[32];
    *&v414[41] = *&v387[16];
    LOBYTE(v415) = 0;
    sub_1891D7A90(&aBlock);
    v181 = [(UITargetedPreview *)v367 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70);
    v182 = swift_allocObject();
    v183 = *&v414[80];
    *(v182 + 112) = *&v414[64];
    *(v182 + 128) = v183;
    *(v182 + 144) = v415;
    v184 = *&v414[16];
    *(v182 + 48) = *v414;
    *(v182 + 64) = v184;
    v185 = *&v414[48];
    *(v182 + 80) = *&v414[32];
    *(v182 + 96) = v185;
    size = aBlock.size;
    *(v182 + 16) = aBlock.origin;
    *(v182 + 32) = size;
    v187 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v188 = swift_isUniquelyReferenced_nonNull_native();
    *&v391 = *(v181 + v187);
    *(v181 + v187) = 0x8000000000000000;
    sub_188A40430(v182, &_s19OverrideGeometryKeyVN, v188);
    *(v181 + v187) = v391;
    swift_endAccess();

    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_18A64E3F0;
    *(v189 + 32) = v374;
    *(v189 + 40) = v381;
    v190 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v407, &v397);
    v191 = swift_allocObject();
    *(v191 + 16) = v190;
    v192 = v398;
    *(v191 + 24) = v397;
    *(v191 + 40) = v192;
    *(v191 + 56) = v399;
    *(v191 + 64) = v189;
    *(v191 + 80) = 0;
    *(v191 + 88) = 0;
    *(v191 + 72) = 0;
    v193 = swift_allocObject();
    *(v193 + 16) = xmmword_18A6731D0;
    *(v193 + 32) = 0;
    *(v193 + 40) = sub_1891D7F04;
    *(v193 + 48) = v191;
    v378 = swift_allocObject();
    *(v378 + 16) = xmmword_18A64B710;
    *(v378 + 32) = v193;
    v376 = swift_allocObject();
    *(v376 + 16) = xmmword_18A64B710;
    *(v376 + 32) = v177;
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_18A64E3F0;
    *(v194 + 32) = v374;
    *&v391 = v348;
    *(&v391 + 1) = v333;
    *&v392 = v331;
    *(&v392 + 1) = v329;
    LOBYTE(v393) = 0;
    v195 = v374;
    v196 = v381;
    v197 = v195;

    *(v194 + 40) = sub_18923BBD8(&v391, 0, 1);
    v198 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v407, &v397);
    v199 = swift_allocObject();
    *(v199 + 16) = v198;
    v200 = v398;
    *(v199 + 24) = v397;
    *(v199 + 40) = v200;
    *(v199 + 56) = v399;
    *(v199 + 64) = v194;
    *(v199 + 72) = v364;
    *(v199 + 80) = v384;
    *(v199 + 88) = v341;
    v201 = swift_allocObject();
    v201[2] = 0xD000000000000010;
    v201[3] = 0x800000018A6AFFF0;
    v201[4] = 0;
    v201[5] = sub_1891D7F04;
    v201[6] = v199;
    recta = swift_allocObject();
    *(recta + 16) = xmmword_18A64B710;
    *(recta + 32) = v201;
    v202 = swift_allocObject();
    *(v202 + 16) = xmmword_18A64E3F0;
    *(v202 + 32) = v367;
    *(v202 + 40) = v172;
    v203 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v405, &v397);
    v204 = swift_allocObject();
    *(v204 + 16) = v203;
    v205 = v398;
    *(v204 + 24) = v397;
    *(v204 + 40) = v205;
    *(v204 + 56) = v399;
    *(v204 + 64) = v202;
    *(v204 + 72) = v359;
    *(v204 + 80) = v384;
    *(v204 + 88) = v341;
    v206 = swift_allocObject();
    *(v206 + 16) = 0xD000000000000015;
    *(v206 + 24) = 0x800000018A6B0010;
    *(v206 + 32) = v176;
    *(v206 + 40) = sub_1891D7F04;
    *(v206 + 48) = v204;
    v349 = swift_allocObject();
    *(v349 + 16) = xmmword_18A64B710;
    *(v349 + 32) = v206;
    v207 = swift_allocObject();
    *(v207 + 16) = xmmword_18A64E3F0;
    *(v207 + 32) = v383;
    *(v207 + 40) = v172;
    v208 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v405, &v397);
    v209 = swift_allocObject();
    *(v209 + 16) = v208;
    v210 = v398;
    *(v209 + 24) = v397;
    *(v209 + 40) = v210;
    *(v209 + 56) = v399;
    *(v209 + 64) = v207;
    *(v209 + 80) = 0;
    *(v209 + 88) = 0;
    *(v209 + 72) = v359;
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_18A6731C0;
    *(v211 + 32) = v176 + 0.1;
    *(v211 + 40) = sub_1891D7F04;
    *(v211 + 48) = v209;
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_18A64B710;
    *(v212 + 32) = v211;
    v213 = objc_allocWithZone(UIViewSpringAnimationBehaviorSettings);
    v214 = v359;
    sub_188D738F4(v384);
    v215 = v172;
    v216 = v383;
    v217 = v214;
    sub_188D738F4(v384);
    v218 = v215;
    v219 = v364;
    v220 = v367;
    v221 = [v213 init];
    [v221 setDampingRatio_];
    [v221 setResponse_];

    v222 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v223 = swift_allocObject();
    v223[2] = v221;
    v223[3] = sub_1891D7BA8;
    v223[4] = v222;
    v224 = swift_allocObject();
    v224[2] = 0;
    v224[3] = 0;
    v224[4] = 0;
    v224[5] = sub_1891D7EEC;
    v224[6] = v223;
    v225 = swift_allocObject();
    *(v225 + 16) = xmmword_18A64B710;
    *(v225 + 32) = v224;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA80);
    v226 = swift_allocObject();
    *(v226 + 16) = xmmword_18A6510F0;
    *(v226 + 32) = MEMORY[0x1E69E7CC0];
    *(v226 + 40) = v378;
    *(v226 + 48) = v376;
    *(v226 + 56) = recta;
    *(v226 + 64) = v349;
    v227 = "_UIMonochromaticTreatment";
    *(v226 + 72) = v212;
    *(v226 + 80) = v225;
    v228 = sub_1891CEEBC(v226);
    v385 = v217;

    v229 = &selRef_setRemoteAppID_;
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA88);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_188F75BA0(v228);

    goto LABEL_69;
  }

  v230 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
  [v230 setDampingRatio_];
  [v230 setResponse_];

  v231 = [v374 target];
  v232 = [v374 retargetedPreviewWithTarget_];

  sub_18923B9EC(&aBlock);
  v233 = sub_188F36334(&aBlock);
  if (v233 == 1)
  {
    goto LABEL_91;
  }

  v234 = v414[0];
  if ((v414[0] & 1) == 0)
  {
    v235 = aBlock.size.height;
    v236 = aBlock.size.width;
    v237 = aBlock.origin.y;
    v238 = aBlock.origin.x;
    v416 = *&v414[8];
    v417 = v414[24];
    v239 = CGRectGetWidth(aBlock);
    CACornerRadiiMake(&v397, v239, v239, v239, v239);
    v396 = 0;
    v395[23] = v417;
    *&v395[7] = v416;
    *&v394[7] = v397;
    *&v394[23] = v398;
    *&v394[39] = v399;
    *&v394[55] = v400;
    *&v401 = v238;
    *(&v401 + 1) = v237;
    *&v402 = v236;
    *(&v402 + 1) = v235;
    v403[0] = v234;
    *&v403[1] = *v395;
    *&v403[17] = *&v395[16];
    *&v403[41] = *&v394[16];
    *&v403[57] = *&v394[32];
    *&v403[73] = *&v394[48];
    *&v403[88] = *(&v400 + 1);
    *&v403[25] = *v394;
    LOBYTE(v404) = 0;
    sub_1891D7A90(&v401);
    v332 = v232;
    v240 = [(UITargetedPreview *)v232 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA70);
    v241 = swift_allocObject();
    v242 = *&v403[80];
    *(v241 + 112) = *&v403[64];
    *(v241 + 128) = v242;
    *(v241 + 144) = v404;
    v243 = *&v403[16];
    *(v241 + 48) = *v403;
    *(v241 + 64) = v243;
    v244 = *&v403[48];
    *(v241 + 80) = *&v403[32];
    *(v241 + 96) = v244;
    v245 = v402;
    *(v241 + 16) = v401;
    *(v241 + 32) = v245;
    v246 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();
    v247 = swift_isUniquelyReferenced_nonNull_native();
    v418[0] = *(v240 + v246);
    *(v240 + v246) = 0x8000000000000000;
    sub_188A40430(v241, &_s19OverrideGeometryKeyVN, v247);
    *(v240 + v246) = v418[0];
    swift_endAccess();

    v248 = swift_allocObject();
    *(v248 + 16) = xmmword_18A64E3F0;
    *(v248 + 32) = v381;
    *(v248 + 40) = v172;
    v249 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v407, &v391);
    v250 = swift_allocObject();
    *(v250 + 16) = v249;
    v251 = v392;
    *(v250 + 24) = v391;
    *(v250 + 40) = v251;
    *(v250 + 56) = v393;
    *(v250 + 64) = v248;
    *(v250 + 80) = 0;
    *(v250 + 88) = 0;
    *(v250 + 72) = v230;
    v252 = swift_allocObject();
    *(v252 + 16) = xmmword_18A6731C0;
    *(v252 + 32) = 0;
    *(v252 + 40) = sub_1891D7A98;
    *(v252 + 48) = v250;
    v330 = swift_allocObject();
    *(v330 + 16) = xmmword_18A64B710;
    *(v330 + 32) = v252;
    v253 = swift_allocObject();
    *(v253 + 16) = xmmword_18A64B710;
    *(v253 + 32) = v338;
    v326 = v253;
    v254 = swift_allocObject();
    *(v254 + 16) = xmmword_18A64E3F0;
    *(v254 + 32) = v374;
    *v418 = v366;
    *&v418[1] = v363;
    *&v418[2] = v361;
    *&v418[3] = v358;
    v419 = 0;
    v255 = v381;
    v360 = v374;

    v256 = v172;
    v362 = v230;
    *(v254 + 40) = sub_18923BBD8(v418, 0x3FD0000000000000, 0);
    v257 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v407, &v391);
    v258 = swift_allocObject();
    *(v258 + 16) = v257;
    v259 = v392;
    *(v258 + 24) = v391;
    *(v258 + 40) = v259;
    *(v258 + 56) = v393;
    *(v258 + 64) = v254;
    *(v258 + 72) = v230;
    *(v258 + 80) = v384;
    *(v258 + 88) = v341;
    v260 = swift_allocObject();
    v260[2] = 0xD000000000000010;
    v260[3] = 0x800000018A6AFFB0;
    v260[4] = 0;
    v260[5] = sub_1891D7F04;
    v260[6] = v258;
    v368 = swift_allocObject();
    *(v368 + 16) = xmmword_18A64B710;
    *(v368 + 32) = v260;
    v261 = swift_allocObject();
    *(v261 + 16) = xmmword_18A64E3F0;
    *(v261 + 32) = v360;
    *(v261 + 40) = v383;
    v262 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_188D73128(v405, &v391);
    v263 = swift_allocObject();
    *(v263 + 16) = v262;
    v264 = v392;
    *(v263 + 24) = v391;
    *(v263 + 40) = v264;
    *(v263 + 56) = v393;
    *(v263 + 64) = v261;
    *(v263 + 80) = 0;
    *(v263 + 88) = 0;
    *(v263 + 72) = v230;
    v265 = swift_allocObject();
    *(v265 + 16) = xmmword_18A6731D0;
    *(v265 + 32) = v176;
    *(v265 + 40) = sub_1891D7F04;
    *(v265 + 48) = v263;
    v365 = swift_allocObject();
    *(v365 + 16) = xmmword_18A64B710;
    *(v365 + 32) = v265;
    v266 = v362;
    v267 = v383;
    v268 = v360;
    sub_188D738F4(v384);
    v385 = v266;
    UIRectGetCenter(v346, v345, v344);
    v270 = v269;
    UIRectGetCenter(v375, v377, v380);
    if (v271 >= v270)
    {
      v272 = -15.0;
    }

    else
    {
      v272 = 15.0;
    }

    v273 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v273 setDampingRatio_];
    v229 = &selRef_setRemoteAppID_;
    [v273 setResponse_];

    v274 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v275 = swift_allocObject();
    *(v275 + 16) = v274;
    *(v275 + 24) = 0;
    *(v275 + 32) = v272;
    v276 = swift_allocObject();
    v276[2] = v273;
    v276[3] = sub_1891D7B04;
    v276[4] = v275;
    v277 = swift_allocObject();
    *(v277 + 16) = xmmword_18A6731E0;
    *(v277 + 32) = v176 + 0.001;
    *(v277 + 40) = sub_1891D7B10;
    *(v277 + 48) = v276;
    v278 = swift_allocObject();
    *(v278 + 16) = xmmword_18A64B710;
    *(v278 + 32) = v277;
    v279 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v279 setDampingRatio_];
    [v279 setResponse_];

    v280 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v281 = swift_allocObject();
    *(v281 + 16) = v280;
    *(v281 + 24) = 0;
    *(v281 + 32) = v272;
    v282 = swift_allocObject();
    v282[2] = v279;
    v282[3] = sub_1891D7B1C;
    v282[4] = v281;
    v283 = swift_allocObject();
    *(v283 + 16) = xmmword_18A6731F0;
    *(v283 + 32) = v176 + 0.15;
    *(v283 + 40) = sub_1891D7EEC;
    *(v283 + 48) = v282;
    v284 = swift_allocObject();
    *(v284 + 16) = xmmword_18A64B710;
    *(v284 + 32) = v283;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FA80);
    v285 = swift_allocObject();
    *(v285 + 16) = xmmword_18A6510F0;
    *(v285 + 32) = MEMORY[0x1E69E7CC0];
    *(v285 + 40) = v330;
    *(v285 + 48) = v326;
    *(v285 + 56) = v368;
    *(v285 + 64) = v365;
    *(v285 + 72) = v278;
    *(v285 + 80) = v284;
    v286 = sub_1891CEEBC(v285);

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FA88);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_188F75BA0(v286);

    v227 = "_UIMonochromaticTreatment";
LABEL_69:
    v287 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v287 setDampingRatio_];
    [v287 v229[158]];
    v288 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
    [v288 setDampingRatio_];
    [v288 v229[158]];
    v289 = swift_allocObject();
    *(v289 + 16) = xmmword_18A64E3F0;
    v290 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v291 = swift_allocObject();
    v291[2] = v287;
    v291[3] = sub_1891D7B28;
    v291[4] = v290;
    v292 = swift_allocObject();
    *(v292 + 16) = xmmword_18A673200;
    *(v292 + 32) = 0;
    *(v292 + 40) = sub_1891D7EEC;
    *(v292 + 48) = v291;
    *(v289 + 32) = v292;
    v293 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v294 = swift_allocObject();
    v294[2] = v288;
    v294[3] = sub_1891D7B48;
    v294[4] = v293;
    v295 = swift_allocObject();
    *(v295 + 16) = xmmword_18A673210;
    *(v295 + 32) = 0x3FC999999999999ALL;
    *(v295 + 40) = sub_1891D7EEC;
    *(v295 + 48) = v294;
    *(v289 + 40) = v295;
    v382 = v287;
    v379 = v288;

    sub_188F75BA0(v289);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v296 = v356;
    v390.receiver = v356;
    v390.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    v297 = objc_msgSendSuper2(&v390, sel_rootSettings);
    if (v297)
    {
      v298 = v297;
      v299 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_lensingEnabled);

      if (v299 == 1)
      {
        v300 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
        [v300 setDampingRatio_];
        [v300 setResponse_];

        v301 = v342 < v336;
        if (v342 >= v336)
        {
          v302 = 0.4;
        }

        else
        {
          v302 = 0.7;
        }

        if (v342 >= v336)
        {
          v303 = v176;
        }

        else
        {
          v303 = v176 + 0.12;
        }

        v369 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
        [v369 setDampingRatio_];
        [v369 setResponse_];
        v304 = swift_allocObject();
        *(v304 + 16) = xmmword_18A64E3E0;
        v305 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v306 = swift_allocObject();
        *(v306 + 16) = v305;
        *(v306 + 24) = v301;
        *(v306 + 32) = v335;
        *(v306 + 40) = v327;
        v307 = swift_allocObject();
        v307[2] = v300;
        v307[3] = sub_1891D7B68;
        v307[4] = v306;
        v308 = swift_allocObject();
        *(v308 + 16) = xmmword_18A673220;
        *(v308 + 32) = 0;
        *(v308 + 40) = sub_1891D7EEC;
        *(v308 + 48) = v307;
        *(v304 + 32) = v308;
        v309 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v310 = swift_allocObject();
        *(v310 + 16) = v309;
        *(v310 + 24) = v301;
        *(v310 + 32) = v327;
        *(v310 + 40) = v335;
        v311 = swift_allocObject();
        v311[2] = v385;
        v311[3] = sub_1891D7B78;
        v311[4] = v310;
        v312 = swift_allocObject();
        *(v312 + 16) = 0xD000000000000018;
        *(v312 + 24) = 0x800000018A6AFFD0;
        *(v312 + 32) = v176;
        *(v312 + 40) = sub_1891D7EEC;
        *(v312 + 48) = v311;
        *(v304 + 40) = v312;
        v296 = v356;
        v313 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v314 = swift_allocObject();
        *(v314 + 16) = v313;
        *(v314 + 24) = v301;
        v315 = swift_allocObject();
        v315[2] = v369;
        v315[3] = sub_1891D7B88;
        v315[4] = v314;
        v316 = swift_allocObject();
        *(v316 + 16) = xmmword_18A673230;
        *(v316 + 32) = v303;
        *(v316 + 40) = sub_1891D7EEC;
        *(v316 + 48) = v315;
        *(v304 + 48) = v316;
        v317 = v300;

        v318 = v385;
        v319 = v369;
        sub_188F75BA0(v304);

        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
      }

      v389.receiver = v296;
      v389.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;

      v320 = objc_msgSendSuper2(&v389, sel_rootSettings);
      if (v320)
      {
        v321 = v320;
        v322 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_speed);

        v388.receiver = v296;
        v388.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
        v323 = objc_msgSendSuper2(&v388, sel_rootSettings);
        if (v323)
        {
          v324 = v323;
          v325 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_amplifyDelays);

          sub_188F753C0(v325, v322);

          [v328 complete];

          sub_188A3F5FC(v405, &unk_1EA93C9A0);
          sub_188A3F5FC(v407, &unk_1EA93C9A0);
          return;
        }

        goto LABEL_89;
      }

LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_92:
  __break(1u);
}

uint64_t sub_1891D2C0C(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    a1();
  }

  sub_1891D59C0();
  v4 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
  swift_beginAccess();
  *(a3 + v4) = MEMORY[0x1E69E7CC0];

  *(a3 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_hidingAssertions) = 0;

  sub_1891CFFC8();
  sub_188F75AF4();
}

char *sub_1891D2CA8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
    swift_beginAccess();
    v3 = *&v1[v2];
    v30 = v3;
    if (v3 >> 62)
    {
LABEL_35:
      v4 = sub_18A4A7F68();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals;

    if (v4)
    {
      v5 = 0;
      v33 = v1;
      v32 = v4;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v6 = sub_188E4A0E4(v5, v30);
        }

        else
        {
          if (v5 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v6 = *(v30 + 32 + 8 * v5);
        }

        v7 = v6;
        v8 = __OFADD__(v5, 1);
        v9 = v5 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        v10 = *&v6[OBJC_IVAR____UIMagicMorphAnimation_morphView];
        type metadata accessor for _UIMorphAnimationSettingsDomain();
        v37.receiver = swift_getObjCClassFromMetadata();
        v37.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
        v11 = v10;
        result = objc_msgSendSuper2(&v37, sel_rootSettings);
        if (!result)
        {
          break;
        }

        v12 = result;
        type metadata accessor for _UIMorphAnimationSettings();
        v13 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_lensingEnabled);

        v14 = OBJC_IVAR____UIMagicMorphView_clippingView;
        [*&v11[OBJC_IVAR____UIMagicMorphView_clippingView] setClipsToBounds_];
        v15 = sub_1891D0050();
        [v15 _addTrackedElementFor_with_];

        v16 = sub_1891D0150();
        v17 = v16;
        v34 = v7;
        v35 = v9;
        if (v16 >> 62)
        {
          v18 = sub_18A4A7F68();
          if (v18)
          {
LABEL_14:
            v19 = 0;
            v1 = (v17 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v17 & 0xC000000000000001) != 0)
              {
                v20 = sub_188E49828(v19, v17);
              }

              else
              {
                if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_32;
                }

                v20 = *(v17 + 8 * v19 + 32);
              }

              v21 = v20;
              v22 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                break;
              }

              v23 = [v20 sourceView];

              if (v23)
              {
                v24 = *&v11[v14];

                if (v23 == v24)
                {

                  v1 = v33;
                  goto LABEL_6;
                }
              }

              ++v19;
              if (v22 == v18)
              {
                goto LABEL_26;
              }
            }

            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }
        }

        else
        {
          v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v18)
          {
            goto LABEL_14;
          }
        }

LABEL_26:

        v25 = [objc_allocWithZone(_UIPortalView) initWithSourceView_];
        [v25 setHidesSourceView_];
        [v25 setMatchesPosition_];
        [v25 setMatchesTransform_];
        v1 = v33;
        v26 = sub_1891D00D4();
        [v26 addSubview_];

        v27 = v31;
        v36 = *&v33[v31];
        v28 = v25;

        MEMORY[0x18CFE2450](v29);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18A4A7588();
          v27 = v31;
        }

        sub_18A4A75F8();

        *&v33[v27] = v36;

LABEL_6:
        v5 = v35;
        if (v35 == v32)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_29:
    }
  }

  return result;
}

void sub_1891D30DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer;
    v2 = *(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer);
    v3 = Strong;
    v4 = *&v2[OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView];
    [v2 bounds];
    [v4 setCenter_];

    v8 = *(*&v3[v1] + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    [v8 setTransform_];
  }
}

void sub_1891D31B4(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer;
    v6 = Strong;
    [*(*(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView) center];
    [*(*&v6[v5] + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView) setCenter_];
  }
}

void sub_1891D3268(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(*(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) + OBJC_IVAR____TtC5UIKit30_UIMorphAnimationContainerView_kickView);
    v6 = Strong;
    CGAffineTransformMakeTranslation(&v7, -a1, -a2);
    [v5 setTransform_];
  }
}

void sub_1891D3318(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1891D4478(a1);
  }
}

void sub_1891D337C(double a1, double a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a4)
    {
      v9 = a1;
    }

    else
    {
      v9 = a2;
    }

    *(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_minLensingDimension) = v9;
    sub_1891D3970(0);
  }
}

void sub_1891D3400(double a1, double a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a4)
    {
      v9 = a1;
    }

    else
    {
      v9 = a2;
    }

    *(Strong + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_minLensingDimension) = v9;
    sub_1891D3970(a4 & 1);
  }
}

void sub_1891D3480(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1891D3970(a2 & 1);
  }
}

void sub_1891D34E0(double a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_188D73128(a3, &v50);
    if (v51)
    {
      sub_188A5EBAC(&v50, v52);
      v40 = a6;
      v41 = v13;
      v39 = a7;
      if (a4 >> 62)
      {
LABEL_32:
        v14 = sub_18A4A7F68();
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
LABEL_5:
          v15 = 0;
          v45 = a4;
          v46 = a4 & 0xC000000000000001;
          v43 = a4 & 0xFFFFFFFFFFFFFF8;
          v44 = v14;
          while (1)
          {
            if (v46)
            {
              sub_188E49F3C(v15, a4);
              v16 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
                goto LABEL_28;
              }
            }

            else
            {
              if (v15 >= *(v43 + 16))
              {
                goto LABEL_30;
              }

              swift_unknownObjectRetain();
              v16 = v15 + 1;
              if (__OFADD__(v15, 1))
              {
LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            objc_opt_self();
            v17 = swift_dynamicCastObjCClass();
            if (v17)
            {
              break;
            }

            swift_unknownObjectRelease();
LABEL_7:
            ++v15;
            if (v16 == v14)
            {
              goto LABEL_33;
            }
          }

          v18 = v17;
          sub_188A53994(v52, &v50);
          v19 = [(UITargetedPreview *)v18 _typedStorage];
          sub_188D73128(&v50, v49);
          sub_188D73128(v49, v47);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93FAA0);
          v20 = swift_allocObject();
          v21 = v47[1];
          *(v20 + 16) = v47[0];
          *(v20 + 32) = v21;
          *(v20 + 48) = v48;
          v22 = OBJC_IVAR____UITypedStorage_storage;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = *(v19 + v22);
          *(v19 + v22) = 0x8000000000000000;
          a4 = sub_188A403F4(&_s19OverrideMaterialKeyVN);
          v26 = v24[2];
          v27 = (v25 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_29;
          }

          v29 = v25;
          if (v24[3] < v28)
          {
            sub_188A3F76C(v28, isUniquelyReferenced_nonNull_native);
            v30 = sub_188A403F4(&_s19OverrideMaterialKeyVN);
            if ((v29 & 1) != (v31 & 1))
            {
              sub_18A4A87A8();
              __break(1u);
              return;
            }

            a4 = v30;
            if ((v29 & 1) == 0)
            {
              goto LABEL_24;
            }

LABEL_22:
            *(v24[7] + 8 * a4) = v20;

LABEL_26:
            *(v19 + v22) = v24;
            swift_endAccess();

            swift_unknownObjectRelease();
            sub_188A3F5FC(v49, &unk_1EA93C9A0);
            sub_188A3F5FC(&v50, &unk_1EA93C9A0);
            v14 = v44;
            a4 = v45;
            goto LABEL_7;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            if (v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            sub_188FA0BDC();
            if (v29)
            {
              goto LABEL_22;
            }
          }

LABEL_24:
          v24[(a4 >> 6) + 8] |= 1 << a4;
          *(v24[6] + 8 * a4) = &_s19OverrideMaterialKeyVN;
          *(v24[7] + 8 * a4) = v20;
          v32 = v24[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            goto LABEL_31;
          }

          v24[2] = v34;
          goto LABEL_26;
        }
      }

LABEL_33:
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      a6 = v40;
      v13 = v41;
      a7 = v39;
    }

    else
    {
      sub_188A3F5FC(&v50, &unk_1EA93C9A0);
    }

    v35 = *&v13[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer];
    type metadata accessor for _UIReparentingView();
    v36 = v35;

    v37 = sub_188D733EC(v36);
    [v37 setFrame_];
    [v37 setAlpha_];

    if (a5)
    {
      v38 = sub_188EB2558(a1);
    }

    else
    {
      v38 = 0;
    }

    sub_1891D4604(a4, v37, 0, 0, 0, 1, v38, 0, 1, 0, a6, a7, 0, 0);

    *&v13[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_currentMorphables] = a4;
  }
}

uint64_t sub_1891D3970(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer] layer];
  v4 = [v3 filters];

  if (v4)
  {

    v28 = 0;
  }

  else
  {
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    v7 = swift_allocObject();
    v28 = sub_1891D7DE4;
    *(v7 + 16) = sub_1891D7DE4;
    *(v7 + 24) = v6;
    v33 = sub_188E3FE50;
    v34 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_188A4A968;
    v32 = &block_descriptor_166_1;
    v8 = _Block_copy(&aBlock);
    v9 = v1;

    [v5 performWithoutAnimation_];
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      goto LABEL_7;
    }
  }

  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = a1 & 1;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1891D7DEC;
  *(v14 + 24) = v13;
  v33 = sub_188E3FE50;
  v34 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_188A4A968;
  v32 = &block_descriptor_177_0;
  v15 = _Block_copy(&aBlock);

  [v11 performWithoutAnimation_];
  _Block_release(v15);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    v16 = sub_1891D0050();
    v17 = [v16 layer];

    objc_opt_self();
    v18 = swift_dynamicCastObjCClassUnconditional();
    v19 = sub_18A4A2D28();
    v20 = sub_18A4A7258();
    [v18 setValue:v19 forKeyPath:v20];

    v21 = sub_1891D00D4();
    v22 = [v21 layer];

    v23 = sub_18A4A2D28();
    v24 = sub_18A4A7258();
    [v22 setValue:v23 forKeyPath:v24];

    v25 = [*&v1[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingContainer] layer];
    v26 = sub_18A4A2D28();
    v27 = sub_18A4A7258();
    [v25 setValue:v26 forKeyPath:v27];

    sub_188A55B8C(v28);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

void sub_1891D3E6C(uint64_t a1)
{
  v2 = sub_1891D0050();
  v3 = [v2 layer];

  v4 = sub_18A4A7258();
  [v3 setName_];

  v5 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView;
  v6 = *(a1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  v7 = OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization;
  v8 = *&v6[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization];
  *&v6[OBJC_IVAR____TtC5UIKit9UISDFView_gradientOvalization] = 1056964608;
  if (v8 != 0.5)
  {
    v9 = *&v6[OBJC_IVAR____TtC5UIKit9UISDFView_containerView];
    if (v9)
    {
      v45 = v6;
      v42 = v9;
      v10 = [v42 subviews];
      sub_188A34624(0, &qword_1ED48F680);
      v11 = sub_18A4A7548();

      v43 = v5;
      v44 = a1;
      if (v11 >> 62)
      {
        v12 = sub_18A4A7F68();
        if (v12)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
LABEL_5:
          if (v12 < 1)
          {
            __break(1u);
            return;
          }

          v13 = 0;
          v14 = v11 & 0xC000000000000001;
          p_cb = &OBJC_PROTOCOL___UIMutableTraits.cb;
          v47 = v6;
          do
          {
            if (v14)
            {
              v16 = sub_188E49300(v13, v11);
            }

            else
            {
              v16 = *(v11 + 8 * v13 + 32);
            }

            v17 = v16;
            type metadata accessor for UISDFElementView();
            v18 = swift_dynamicCastClassUnconditional();
            v19 = *&v6[v7];
            v20 = *(p_cb + 489);
            v21 = *&v18[v20];
            *&v18[v20] = v19;
            if (v19 != v21)
            {
              v22 = v12;
              v23 = v7;
              v24 = v11;
              v25 = p_cb;
              v26 = v18;
              v27 = [v18 layer];
              v28 = *&v26[v20];
              p_cb = v25;
              v11 = v24;
              v7 = v23;
              v12 = v22;
              v6 = v47;
              [v27 setGradientOvalization_];
            }

            ++v13;
          }

          while (v12 != v13);
        }
      }

      v5 = v43;
      a1 = v44;
    }
  }

  v48 = [objc_allocWithZone(MEMORY[0x1E6979458]) init];
  v29 = [*(a1 + v5) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEffect_];

  v30 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v31 = [*(a1 + v5) layer];
  v32 = [v31 name];

  [v30 setValue:v32 forKey:*MEMORY[0x1E6979C10]];
  v33 = sub_18A4A2D28();
  [v30 setValue:v33 forKey:*MEMORY[0x1E6979990]];

  v34 = sub_1891D00D4();
  v35 = [v34 layer];

  [v35 setZPosition_];
  v36 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingContainer;
  [*(a1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) addSubview_];
  v37 = [*(a1 + v36) layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA937800);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_18A64BFA0;
  v39 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v40 = sub_188A34624(0, &qword_1ED48EE50);
  *(v38 + 32) = v39;
  *(v38 + 88) = v40;
  *(v38 + 56) = v40;
  *(v38 + 64) = v30;
  v46 = v30;
  v41 = sub_18A4A7518();

  [v37 setFilters_];

  [*(a1 + v36) addSubview_];
}

void sub_1891D4364()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1891D0050();

    v3 = [v2 layer];
    objc_opt_self();
    v4 = swift_dynamicCastObjCClassUnconditional();
    v5 = sub_18A4A2D28();
    v6 = sub_18A4A7258();
    [v4 setValue:v5 forKeyPath:v6];
  }
}

void sub_1891D4478(double a1)
{
  v16 = &type metadata for _GlassGroup;
  v17 = &protocol witness table for _GlassGroup;
  v13 = 0;
  v14 = a1;
  v15 = 256;
  UIView._background.setter(&v13);
  v3 = sub_1891D0050();
  v3[OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius] = 1;

  v12 = *(v1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingSDFView);
  sub_18900EF90();
  v4 = v12;
  if (v5 != a1)
  {
    v6 = *(v12 + OBJC_IVAR____TtC5UIKit9UISDFView_applySmoothnessViaGaussianRadius);
    v7 = [v12 layer];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClassUnconditional();
    if (v6)
    {
      v9 = v8;
      v10 = sub_18A4A2D28();
      v11 = sub_18A4A7258();
      [v9 setValue:v10 forKey:v11];

      v7 = v11;
    }

    else
    {
      [v8 setSmoothness_];
    }

    v4 = v12;
  }
}

id sub_1891D4604(unint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, char a9, char a10, uint64_t a11, char *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v129 = a2;
  v18 = *&v14[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedGroupCompletion];
  v19 = swift_allocObject();
  *(v19 + 16) = a13;
  *(v19 + 24) = a14;
  v163 = sub_188FE62F8;
  v164 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v160 = 1107296256;
  v161 = sub_188A4A8F0;
  v162 = &block_descriptor_183_0;
  v20 = _Block_copy(&aBlock);
  sub_188D738F4(a13);

  v144 = v18;
  [v18 addCompletion_];
  _Block_release(v20);
  v21 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_104;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v136 = v15;
  v139 = result;
  v140 = a1;
  if (!result)
  {
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_107;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_109;
  }

  v23 = *(a1 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    v24 = [v23 _morphContainerView];
    if (!v24)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v130 = 0;
      if (!v21)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v25 = v24;
    v26 = [*&v15[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer] window];
    if (v26)
    {
      v27 = v26;
      swift_unknownObjectRelease();

      goto LABEL_11;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      result = [v25 _window];
      if (!result)
      {
        goto LABEL_116;
      }
    }

    v28 = result;
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v15;
    *(v30 + 24) = v28;
    v31 = swift_allocObject();
    v130 = sub_1891D7E08;
    *(v31 + 16) = sub_1891D7E08;
    *(v31 + 24) = v30;
    v163 = sub_188E3FE50;
    v164 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v160 = 1107296256;
    v161 = sub_188A4A968;
    v162 = &block_descriptor_215_1;
    v32 = _Block_copy(&aBlock);
    v33 = v15;
    v34 = v28;

    [v29 performWithoutAnimation_];
    swift_unknownObjectRelease();

    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_111;
    }

    v15 = v136;
    a1 = v140;
    if (!v21)
    {
LABEL_12:
      v132 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_18;
    }

LABEL_17:
    v132 = sub_18A4A7F68();
LABEL_18:
    v21 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_morphAnimations;
    swift_beginAccess();
    v36 = *&v15[v21];
    v37 = v36 >> 62 ? sub_18A4A7F68() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a1 = v132 - v37;
    if (!__OFSUB__(v132, v37))
    {
      break;
    }

    __break(1u);
LABEL_107:
    v23 = sub_188E49F3C(0, a1);
  }

  if (a1 >= 1)
  {
    v38 = type metadata accessor for _UIMagicMorphAnimation();
    do
    {
      v39 = objc_allocWithZone(v38);
      v40 = sub_188C8C67C(v144);
      swift_unknownObjectWeakAssign();
      v40[OBJC_IVAR____UIMagicMorphAnimation_reparentsDuringMorph] = 0;
      swift_beginAccess();
      v41 = v40;
      MEMORY[0x18CFE2450]();
      if (*((*&v15[v21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v15[v21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18A4A7588();
        v15 = v136;
      }

      sub_18A4A75F8();
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  if ((v15[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation__overrideReduceMotion] & 1) == 0 && !UIAccessibilityIsReduceMotionEnabled())
  {
    type metadata accessor for _UIMorphAnimationSettingsDomain();
    v158.receiver = swift_getObjCClassFromMetadata();
    v158.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
    result = objc_msgSendSuper2(&v158, sel_rootSettings);
    v43 = v139;
    v42 = v140;
    if (!result)
    {
      goto LABEL_114;
    }

    v44 = result;
    v45 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorph;
LABEL_32:
    type metadata accessor for _UIMorphAnimationSettings();
    v131 = *(swift_dynamicCastClassUnconditional() + *v45);

    if (v43)
    {
      v141 = v42 & 0xFFFFFFFFFFFFFF8;
      v142 = v42 & 0xC000000000000001;
      v46 = 4;
      v133 = v21;
      v134 = a7;
      do
      {
        v47 = v46 - 4;
        if (v142)
        {
          v151 = sub_188E49F3C(v46 - 4, v42);
          v48 = (v46 - 3);
          if (__OFADD__(v47, 1))
          {
            goto LABEL_100;
          }
        }

        else
        {
          if (v47 >= *(v141 + 16))
          {
            goto LABEL_101;
          }

          v151 = *(v42 + 8 * v46);
          swift_unknownObjectRetain();
          v48 = (v46 - 3);
          if (__OFADD__(v47, 1))
          {
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            result = sub_18A4A7F68();
            goto LABEL_3;
          }
        }

        a1 = *&v15[v21];
        if ((a1 & 0xC000000000000001) != 0)
        {

          a1 = sub_188E4A0E4(v46 - 4, a1);

          if ((a3 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else
        {
          if (v47 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_102;
          }

          a1 = *(a1 + 8 * v46);
          if ((a3 & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        v49 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
        swift_beginAccess();
        v50 = *(a1 + v49);
        if (v50 >> 62)
        {
          if (sub_18A4A7F68())
          {
LABEL_34:
            swift_unknownObjectRelease();
            goto LABEL_35;
          }
        }

        else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

LABEL_44:
        v51 = *&a4;
        v52 = *&a5;
        if ((a6 & 1) == 0)
        {
          v53 = v132 - v47;
          if (__OFSUB__(v132, v47))
          {
            goto LABEL_103;
          }

          v51 = *&a4 * v53;
          v52 = *&a5 * v53;
        }

        v145 = v52;
        v146 = v51;
        v153 = a1;
        if (a7)
        {
          v54 = objc_allocWithZone(type metadata accessor for _UIMorphAnimationSpec());
          v55 = a7;
          v56 = sub_188F5C484(v55);
        }

        else
        {
          v56 = v131;
        }

        v147 = v48;
        result = [objc_opt_self() behaviorWithDampingRatio:1.0 response:0.1];
        if (!result)
        {
          goto LABEL_112;
        }

        v57 = result;
        v58 = *&v56[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_contentMorph];
        v59 = *&v56[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_width];
        v60 = *&v56[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_height];
        v61 = *&v56[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionX];
        v62 = *&v56[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_positionY];
        v63 = *&v56[OBJC_IVAR____TtC5UIKit21_UIMorphAnimationSpec_transform];
        v64 = type metadata accessor for _UIMagicMorphAnimation.Parameters();
        v65 = objc_allocWithZone(v64);
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_morphSpring] = v58;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_widthSpring] = v59;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_heightSpring] = v60;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionXSpring] = v61;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_positionYSpring] = v62;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_transformSpring] = v63;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_fallbackBackgroundColor] = 0;
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_overlayViews] = MEMORY[0x1E69E7CC0];
        *&v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_contentScale] = 0x3FF0000000000000;
        v66 = &v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_reparentingOptions];
        *v66 = v57;
        v66[8] = 0;
        v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_crossBlurWhenMorphing] = 2;
        v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_useIntermediateShape] = a10 & 1;
        v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_tracksPresentationLayer] = 1;
        v68 = v145;
        v67 = v146;
        if (a6)
        {
          v67 = 0.0;
          v68 = 0.0;
        }

        v69 = &v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_kick];
        *v69 = v67;
        v69[1] = v68;
        v70 = &v65[OBJC_IVAR____TtCC5UIKit22_UIMagicMorphAnimation10Parameters_animationSmoothness];
        *v70 = a8;
        v70[8] = a9 & 1;
        v157.receiver = v65;
        v157.super_class = v64;
        v71 = v58;
        v72 = v59;
        v73 = v60;
        v74 = v61;
        v75 = v62;
        v76 = v63;
        a1 = objc_msgSendSuper2(&v157, sel_init);
        v77 = 0;
        v78 = 0;
        if (v46 == 4)
        {
          v77 = a11;
          v78 = a12;
          sub_188D738F4(a11);
        }

        v79 = OBJC_IVAR____UIMagicMorphAnimation_animationItems;
        swift_beginAccess();
        v80 = *&v153[v79];
        if (v80 >> 62)
        {
          v81 = sub_18A4A7F68();
        }

        else
        {
          v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a7 = v134;
        v82 = [v151 _morphPreviewFromCurrentState_fallbackBackgroundColor_contentScale_];
        sub_188D7AA34(v82, a1, v77, v78, 0, 0);

        sub_188A55B8C(v77);
        swift_unknownObjectRelease();

        v15 = v136;
        v43 = v139;
        v42 = v140;
        v21 = v133;
        v48 = v147;
LABEL_35:

        ++v46;
      }

      while (v48 != v43);
    }

    v83 = sub_188D741A4(v42);
    if (v83)
    {
      v84 = v83;
      v85 = [v83 _morphContainerView];
      if (v85)
      {
        v86 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
        swift_beginAccess();
        v87 = *&v15[v86];

        v88 = sub_18903ABF8(v85, v87);

        if (!v88)
        {
          v88 = v129;
        }

        v89 = [v84 _morphView];
        v90 = v89;
        v91 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_prevReparentingReferenceView;
        v92 = *&v15[OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_prevReparentingReferenceView];
        if (v92)
        {
          v93 = v89;
          v94 = v85;
          v95 = v92;
          v96 = [v95 _morphContainerView];
          if (v96)
          {
            v97 = v96;
            sub_188A34624(0, &qword_1ED48F680);
            v98 = sub_18A4A7C88();

            if (v98)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_18A64E3F0;
              *(inited + 32) = v84;
              *(inited + 40) = v95;
              v100 = v95;
              swift_unknownObjectRetain();
              v101 = sub_188D741A4(inited);
              swift_setDeallocating();
              result = swift_arrayDestroy();
              if (!v101)
              {
                goto LABEL_115;
              }

              v102 = [v101 _morphView];
              swift_unknownObjectRelease();

              v103 = v102;
              v15 = v136;
              v90 = v93;
              goto LABEL_80;
            }
          }

          else
          {
          }

          v15 = v136;
          v90 = v93;
        }

        v103 = v90;
LABEL_80:
        v104 = *&v15[v91];
        *&v15[v91] = v103;
        v105 = v103;

        v106 = [v105 superview];
        if (v106 && (v107 = v106, v106, v107 == v85))
        {
          [v85 insertSubview:v88 aboveSubview:v105];
        }

        else
        {
          [v85 addSubview_];
        }

        swift_beginAccess();
        v108 = *&v15[v86];
        v154 = v105;
        if ((v108 & 0xC000000000000001) != 0)
        {
          if (v108 < 0)
          {
            v109 = *&v15[v86];
          }

          else
          {
            v109 = v108 & 0xFFFFFFFFFFFFFF8;
          }

          v110 = v85;
          v111 = v88;
          result = sub_18A4A7F68();
          if (__OFADD__(result, 1))
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          *&v15[v86] = sub_18907BBF0(v109, result + 1);
        }

        else
        {
          v112 = v85;
          v113 = v88;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = *&v15[v86];
        v152 = v88;
        sub_188E9F3FC(v88, v85, isUniquelyReferenced_nonNull_native);
        *&v15[v86] = v156;

        swift_endAccess();
        v115 = objc_opt_self();
        v116 = swift_allocObject();
        *(v116 + 16) = v15;
        *(v116 + 24) = v90;
        v117 = swift_allocObject();
        *(v117 + 16) = sub_1891D7DF8;
        *(v117 + 24) = v116;
        v163 = sub_188E3FE50;
        v164 = v117;
        aBlock = MEMORY[0x1E69E9820];
        v160 = 1107296256;
        v161 = sub_188A4A968;
        v162 = &block_descriptor_193_0;
        v118 = _Block_copy(&aBlock);
        v15;
        v150 = v90;

        v148 = v115;
        [v115 performWithoutAnimation_];
        _Block_release(v118);
        v119 = swift_isEscapingClosureAtFileLocation();

        if ((v119 & 1) == 0)
        {
          v120 = *&v15[v86];
          if ((v120 & 0xC000000000000001) != 0)
          {

            v121 = sub_18A4A7F68();
          }

          else
          {
            v121 = *(v120 + 16);
          }

          if (v121 == 1)
          {
            v122 = v152;
            [v122 setAlpha_];
            swift_unknownObjectRelease();
          }

          else
          {
            v123 = [objc_allocWithZone(UIViewSpringAnimationBehaviorSettings) init];
            [v123 setDampingRatio_];
            [v123 setResponse_];
            v124 = swift_allocObject();
            swift_unknownObjectUnownedInit();
            v125 = swift_allocObject();
            *(v125 + 16) = v124;
            *(v125 + 24) = v152;
            v163 = sub_1891D7E00;
            v164 = v125;
            aBlock = MEMORY[0x1E69E9820];
            v160 = 1107296256;
            v161 = sub_188A4A8F0;
            v162 = &block_descriptor_202_0;
            v126 = _Block_copy(&aBlock);
            v127 = v152;

            v163 = signpost_c2_entryLock_start;
            v164 = 0;
            aBlock = MEMORY[0x1E69E9820];
            v160 = 1107296256;
            v161 = sub_188C3DD6C;
            v162 = &block_descriptor_205_0;
            v128 = _Block_copy(&aBlock);
            [v148 _animateUsingSpringBehavior_tracking_animations_completion_];
            swift_unknownObjectRelease();

            _Block_release(v128);
            _Block_release(v126);
          }

          v85 = sub_1891D7DF8;
          goto LABEL_99;
        }

LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0;
    }

LABEL_99:
    [v144 complete];

    sub_188A55B8C(v130);
    return sub_188A55B8C(v85);
  }

  type metadata accessor for _UIMorphAnimationSettingsDomain();
  v155.receiver = swift_getObjCClassFromMetadata();
  v155.super_class = &OBJC_METACLASS____TtC5UIKit31_UIMorphAnimationSettingsDomain;
  result = objc_msgSendSuper2(&v155, sel_rootSettings);
  v43 = v139;
  v42 = v140;
  if (result)
  {
    v44 = result;
    v45 = &OBJC_IVAR____TtC5UIKit25_UIMorphAnimationSettings_liquidMorphReduceMotion;
    goto LABEL_32;
  }

LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
  return result;
}

void sub_1891D5764(uint64_t a1, void *a2)
{
  v3 = sub_188D74350();
  v5 = v3[4];
  v3[4] = a2;
  v4 = a2;
  sub_188D630A4(v5);
}

void sub_1891D57CC(uint64_t a1, id a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
  swift_beginAccess();
  v5 = *&Strong[v4];

  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = sub_18A4A8338();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v5 = v6 | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = v5 + 64;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 64);
  }

  v13 = 0;
  v23 = v8;
  v14 = (v8 + 64) >> 6;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v13;
    v16 = v9;
    v17 = v13;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
LABEL_21:
      sub_188E036A4();
      return;
    }

    while (1)
    {
      v22 = v19 == a2 ? 1.0 : 0.0;
      [v19 setAlpha_];

      v13 = v17;
      v9 = v18;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_18A4A8378())
      {
        v21 = v20;
        swift_unknownObjectRelease();
        v24 = v21;
        type metadata accessor for _UIReparentingView();
        swift_dynamicCast();
        v19 = v25;
        v17 = v13;
        v18 = v9;
        if (v25)
        {
          continue;
        }
      }

      goto LABEL_21;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_21;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t sub_1891D59C0()
{
  v1 = v0;
  [*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer) removeFromSuperview];
  v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_viewsToRemove;
  while (1)
  {
    swift_beginAccess();
    v8 = *(v1 + v2);
    v9 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (!sub_18A4A7F68())
    {
      goto LABEL_13;
    }

    v3 = sub_18A4A7F08();
    v4 = v10;
LABEL_4:
    v5 = v9 != 0;
    sub_1891D7788(v3, v4, v5);
    v7 = v6;
    swift_endAccess();
    sub_188FFD0A4(v3, v4, v5);
    [v7 removeFromSuperview];
  }

  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 56);
    v3 = 1 << *(v8 + 32);
    v13 = (v3 + 63) >> 6;
    while (1)
    {
      v15 = *v12++;
      v14 = v15;
      if (v15)
      {
        break;
      }

      v11 -= 64;
      if (!--v13)
      {
        goto LABEL_3;
      }
    }

    v3 = __clz(__rbit64(v14)) - v11;
LABEL_3:
    v4 = *(v8 + 36);
    goto LABEL_4;
  }

LABEL_13:
  swift_endAccess();
  v16 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_reparentingViews;
  swift_beginAccess();
  v36 = v16;
  v17 = *(v1 + v16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = sub_18A4A8338() | 0x8000000000000000;
  }

  else
  {
    v22 = -1 << *(v17 + 32);
    v19 = ~v22;
    v18 = v17 + 64;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v20 = v24 & *(v17 + 64);
    v21 = v17;
  }

  v25 = 0;
  v26 = (v19 + 64) >> 6;
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v27 = v25;
    v28 = v20;
    v29 = v25;
    if (!v20)
    {
      while (1)
      {
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v29 >= v26)
        {
          goto LABEL_30;
        }

        v28 = *(v18 + 8 * v29);
        ++v27;
        if (v28)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

LABEL_24:
    v30 = (v28 - 1) & v28;
    v17 = *(*(v21 + 56) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v17)
    {
      break;
    }

    while (1)
    {
      [v17 removeFromSuperview];

      v25 = v29;
      v20 = v30;
      if ((v21 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_26:
      if (sub_18A4A8378())
      {
        swift_unknownObjectRelease();
        type metadata accessor for _UIReparentingView();
        swift_dynamicCast();
        v17 = v37;
        v29 = v25;
        v30 = v20;
        if (v37)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

LABEL_30:
  sub_188E036A4();
  *(v1 + v36) = MEMORY[0x1E69E7CC8];

  result = sub_1891D0150();
  v17 = result;
  if (!(result >> 62))
  {
    v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_32;
    }

LABEL_40:

    *(v1 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation____lazy_storage___lensingPortals) = MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  result = sub_18A4A7F68();
  v32 = result;
  if (!result)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v32 >= 1)
  {
    for (i = 0; i != v32; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v34 = sub_188E49828(i, v17);
      }

      else
      {
        v34 = *(v17 + 8 * i + 32);
      }

      v35 = v34;
      [v34 removeFromSuperview];
    }

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

uint64_t sub_1891D5D64()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  if (*(v0 + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_inferGlassGroupFromContainer) != 1)
  {
    goto LABEL_7;
  }

  v2 = Strong;
  v3 = [Strong traitCollection];
  v4 = sub_188B657E8();
  if (!v4)
  {

    Strong = v2;
LABEL_7:

    goto LABEL_8;
  }

  v5 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();

  if (!v6)
  {
LABEL_8:
    *(&v9 + 1) = &type metadata for _GlassGroup;
    v10 = &protocol witness table for _GlassGroup;
    LOWORD(v8) = 0;
    *(&v8 + 1) = 0;
    LOWORD(v9) = 1;
    return UIView._background.setter(&v8);
  }

  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  return UIView._background.setter(&v8);
}

uint64_t sub_1891D5E7C(unint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, char *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v10[0] = a5;
  v10[1] = 0;
  v11 = a2;
  v12 = a3;
  v13 = a4 & 1;
  v14 = 0;
  v15 = 1;
  return sub_1891CF2E4(a1, v10, a6, a7, a8, a9);
}

uint64_t sub_1891D5ED4(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, char a7, uint64_t a8, char *a9, uint64_t (*a10)(void), uint64_t a11)
{
  v12[0] = a7;
  v12[1] = 0;
  v13 = a2;
  v14 = a3;
  v15 = a4 & 1;
  v16 = a5;
  v17 = a6 & 1;
  return sub_1891CF2E4(a1, v12, a8, a9, a10, a11);
}

id _UILiquidMorphAnimation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1891D60F8(void *a1, void *a2, uint64_t a3)
{
  *&v56 = a3;
  v52 = type metadata accessor for _Glass._GlassVariant(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a2;
  if (!a2)
  {
    swift_unknownObjectRetain();
    v6 = a1;
  }

  swift_unknownObjectRetain();
  v7 = [a1 _morphView];
  [v7 bounds];
  Width = CGRectGetWidth(v68);
  [v7 bounds];
  Height = CGRectGetHeight(v69);
  if (Height >= Width)
  {
    v10 = Width;
  }

  else
  {
    v10 = Height;
  }

  [v7 bounds];
  v11 = CGRectGetWidth(v70);
  [v7 bounds];
  v12 = CGRectGetHeight(v71);
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v54 = a1;
  if (a2)
  {
    v14 = [a2 _morphView];
    [v14 bounds];
    v15 = CGRectGetWidth(v72);
    if (v15 < v10)
    {
      v10 = v15;
    }

    [v14 bounds];
    v16 = CGRectGetHeight(v73);
    if (v16 < v13)
    {
      v13 = v16;
    }
  }

  else
  {
    v14 = v7;
  }

  v17 = v14;
  [v6 _morphCenterPoint];
  v19 = v18;
  v21 = v20;
  UIRectCenteredAboutPointScale(0.0, 0.0, v10, v13, v18, v20, 1.0);
  v26 = [objc_allocWithZone(UIView) initWithFrame_];
  v27 = [v26 layer];
  v57.a = 0.0;
  v57.b = -2.68156159e154;
  MEMORY[0x18CFE22D0](0x20796D6D7544, 0xE600000000000000);
  [v26 frame];
  v61.a = v28;
  v61.b = v29;
  v61.c = v30;
  v61.d = v31;
  type metadata accessor for CGRect(0);
  sub_18A4A82D8();
  v32 = sub_18A4A7258();

  [v27 setName_];

  [v26 setUserInteractionEnabled_];
  v33 = [v26 layer];
  [v33 setCornerRadius_];

  CGAffineTransformMakeScale(&v61, 0.4, 0.4);
  [v26 setTransform_];
  v34 = [v7 backgroundColor];
  [v26 setBackgroundColor_];

  v35 = [v6 _morphView];
  v36 = [(UIView *)v35 _typedStorage];
  sub_188A6852C(&v61);

  v57 = v61;
  v58 = v62;
  v59 = v63;
  v60 = v64;
  if (*&v61.d)
  {
    sub_188A53994(&v57, &v65);
    sub_188ACE668(&v57);
  }

  else
  {
    sub_188A3F5FC(&v57, &unk_1EA933EC0);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  if (*(&v66 + 1))
  {
    sub_188A5EBAC(&v65, &v57);
  }

  else
  {
    if (qword_1EA931280 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v52, qword_1EA994F90);
    v38 = v53;
    sub_188AD8CAC(v37, v53, type metadata accessor for _Glass._GlassVariant);
    *&v57.d = type metadata accessor for _Glass(0);
    *&v57.tx = &protocol witness table for _Glass;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v57);
    _Glass.init(_:smoothness:)(v38, boxed_opaque_existential_0, 0.0);
    if (*(&v66 + 1))
    {
      sub_188A3F5FC(&v65, &unk_1EA93C9A0);
    }
  }

  [v26 setAlpha_];
  sub_188A53994(&v57, &v61);
  UIView._background.setter(&v61);
  v40 = [objc_allocWithZone(UIPreviewParameters) init];
  v41 = [objc_opt_self() clearColor];
  [v40 setBackgroundColor_];

  v42 = objc_allocWithZone(v55);
  v43 = v56;
  [v26 transform];
  tx = v61.tx;
  ty = v61.ty;
  v56 = *&v61.a;
  v55 = *&v61.c;
  v46 = objc_allocWithZone(UIPreviewTarget);
  *&v61.c = v55;
  *&v61.a = v56;
  v61.tx = tx;
  v61.ty = ty;
  v47 = [v46 initWithContainer:v43 center:&v61 transform:{v19, v21}];

  v48 = [v42 initWithView:v26 parameters:v40 target:v47];
  v49 = v48;
  [v49 _setOverridePositionTrackingView_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(&v57);
  return v49;
}

id sub_1891D6918(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t (*_UILiquidMorphAnimation.overrideReduceMotion.modify(uint64_t a1))(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation__overrideReduceMotion;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1891D69A4;
}

unint64_t sub_1891D69C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1891D6A8C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_188A55598(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_1891D6A8C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1891D6B98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_18A4A81C8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1891D6B98(uint64_t a1, unint64_t a2)
{
  v3 = sub_1891D6BE4(a1, a2);
  sub_1891D6D14(&unk_1EFAB76B8);
  return v3;
}

uint64_t sub_1891D6BE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1891D6E00(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_18A4A81C8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_18A4A73B8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1891D6E00(v10, 0);
        result = sub_18A4A8098();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1891D6D14(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1891D6E74(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1891D6E00(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FAB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1891D6E74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FAB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1891D6FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, uint64_t a5, void (*a6)(unint64_t))
{
  v10 = v6;

  v11 = sub_18A4A7F68();
  v12 = swift_unknownObjectRetain();
  v13 = a3(v12, v11);
  v22 = v13;

  v14 = sub_18A4A7C78();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    sub_188A34624(0, a4);
    while (1)
    {
      v18 = *(*(v13 + 48) + 8 * v16);
      v19 = sub_18A4A7C88();

      if (v19)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v20 = *(*(v13 + 48) + 8 * v16);
  a6(v16);
  result = sub_18A4A7C88();
  if (result)
  {
    *v10 = v22;
    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1891D7158(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_18A4A7F68())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_18A4A7F18();
    sub_188A34624(0, &qword_1ED48F680);
    sub_188FE633C();
    sub_18A4A77D8();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_22:
      sub_188E036A4();
      return;
    }

    while (1)
    {
      v16 = sub_188DD15C0(v15);

      v5 = v13;
      v6 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_18A4A7FB8())
      {
        sub_188A34624(0, &qword_1ED48F680);
        swift_dynamicCast();
        v15 = v17;
        v13 = v5;
        v14 = v6;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_1891D7378(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA93C130);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - v4;
  v6 = sub_18A4A2B48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_189221EFC(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_188A3F5FC(v5, &unk_1EA93C130);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1891D7594(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93F060);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_188AD8CAC(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, _s22RotaryPlaceholderLabelC11TextSegmentVMa);
      sub_1892221A4(v9, v5);
      sub_1891D7E78(v9);
      sub_188A3F5FC(v5, &qword_1EA93F060);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1891D7788(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x18CFE2EC0](a1, a2, v6);
      sub_188A34624(0, &qword_1ED48F680);

      swift_dynamicCast();
      sub_1891D6FE0(v6, v16, sub_188E730FC, &qword_1ED48F680, off_1E70EAD78, sub_189224F44);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  if (a3)
  {
    v11 = v3;
    sub_188A34624(0, &qword_1ED48F680);
    if (sub_18A4A7F48() != *(v10 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_18A4A7F58();
    swift_dynamicCast();
    v7 = v16;
    v3 = v16;
    v12 = sub_18A4A7C78();
    v13 = -1 << *(v10 + 32);
    v4 = v12 & ~v13;
    if ((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(v10 + 48) + 8 * v4);
        v3 = sub_18A4A7C88();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v14;
      }

      while (((*(v10 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v10 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v10 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v3;
  if (*(v10 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_188E79D44();
  }

  sub_189224F44(v4);
  *v11 = v10;
}

uint64_t objectdestroy_6Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_19Tm()
{

  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  }

  if (*(v0 + 80))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t objectdestroy_36Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1891D7D30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[41])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1891D7D84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_1891D7E08()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC5UIKit23_UILiquidMorphAnimation_sharedAnimationContainer);
  [v1 bounds];
  [v2 setFrame_];

  return [v1 insertSubview:v2 atIndex:0];
}

uint64_t sub_1891D7E78(uint64_t a1)
{
  v2 = _s22RotaryPlaceholderLabelC11TextSegmentVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1891D7F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC70);
    v3 = sub_18A4A8488();
    v4 = a1 + 32;

    while (1)
    {
      sub_1891D8084(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_188B0944C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_188A55538(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1891D802C()
{
  result = qword_1EA933910;
  if (!qword_1EA933910)
  {
    type metadata accessor for UISSceneConnectionValueError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA933910);
  }

  return result;
}

uint64_t sub_1891D8084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA934DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1891D80F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1891D8140(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

uint64_t sub_1891D8190@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1891D81C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  *(a2 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 8) = v3;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

unint64_t sub_1891D8220(uint64_t a1)
{
  result = sub_1891D8248();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891D8248()
{
  result = qword_1EA93FC78;
  if (!qword_1EA93FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA93FC78);
  }

  return result;
}

uint64_t sub_1891D829C()
{
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_beginAccess();
}

uint64_t sub_1891D8324@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1891D83B4(uint64_t a1)
{
  swift_beginAccess();
  if (sub_188DCECF8(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1891D8D90();
    sub_18A4A2BF8();
  }
}

uint64_t sub_1891D84B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1891D8520()
{

  v1 = OBJC_IVAR____TtCE5UIKitCSo33_UISceneScrollPocketHostComponentP33_E5D3248CFF770718E70CF655EC048F6C17ObservableStorage___observationRegistrar;
  v2 = sub_18A4A2C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1891D85C4()
{
  v1 = v0;
  v2 = [(_UISceneScrollPocketHostComponent *)v0 _typedStorage];
  v3 = sub_18901F410();

  if (!v3)
  {
    _s17ObservableStorageCMa();
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x1E69E7CC8];
    sub_18A4A2C38();
    v4 = [(_UISceneScrollPocketHostComponent *)v1 _typedStorage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC88);
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    v6 = OBJC_IVAR____UITypedStorage_storage;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v4 + v6);
    *(v4 + v6) = 0x8000000000000000;
    sub_188A40430(v5, &_s20ObservableStorageKeyVN, isUniquelyReferenced_nonNull_native);
    *(v4 + v6) = v9;
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_1891D86FC(uint64_t a1)
{
  v2 = sub_1891D85C4();
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_beginAccess();
  v3 = *(v2 + 16);

  if (*(v3 + 16) && (v4 = sub_188C4585C(a1), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1891D8804(uint64_t a1, uint64_t a2)
{
  v4 = sub_1891D85C4();
  swift_getKeyPath();
  sub_1891D8D90();
  sub_18A4A2C08();

  swift_getKeyPath();
  sub_18A4A2C28();

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_188DCE988(a1, a2, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v7;
  swift_endAccess();
  swift_getKeyPath();
  sub_18A4A2C18();
}

void sub_1891D8A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = [(_UISceneScrollPocketHostComponent *)v2 _pocketElements];
  v7 = [v6 objectForKey_];

  if (v7)
  {
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000016, 0x800000018A6B0460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC90);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD000000000000019, 0x800000018A6B0480);
  v9 = sub_18A4A7258();

  [(_UISceneScrollPocketHostComponent *)ObjCClassFromMetadata bsAssert:v9 message:?];

  v10 = [objc_allocWithZone(_UIScrollPocketProxyElement) initWithEdge_];
  v11 = [v3 registrationInteraction];
  if (v11)
  {
    v12 = [v11 view];
    swift_unknownObjectRelease();
    [v10 updateWithElement:a1 coordinateSpace:v12];

    v13 = [(_UISceneScrollPocketHostComponent *)v3 _pocketElements];
    [v13 setObject:v10 forKey:a1];

    [(_UISceneScrollPocketHostComponent *)v3 updatePocketSettings];
  }

  else
  {
    __break(1u);
  }
}

id sub_1891D8C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = [v2 bridgedLumaUserInterfaceStyleFor_];
  *a2 = 1056964608;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t _s17ObservableStorageCMa()
{
  result = qword_1EA930A20;
  if (!qword_1EA930A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1891D8CF0()
{
  result = sub_18A4A2C48();
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

unint64_t sub_1891D8D90()
{
  result = qword_1EA930A30;
  if (!qword_1EA930A30)
  {
    _s17ObservableStorageCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930A30);
  }

  return result;
}

void sub_1891D8E04(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [(_UISceneScrollPocketHostComponent *)v1 _pocketElements];
  v5 = [v4 objectForKey_];

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000026, 0x800000018A6B03E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC90);
  sub_18A4A82D8();
  v7 = sub_18A4A7258();

  [(_UISceneScrollPocketHostComponent *)ObjCClassFromMetadata bsAssert:v7 message:?];

  if (v5)
  {
    v8 = v5;
    v9 = [v2 registrationInteraction];
    if (v9)
    {
      v10 = [v9 view];
      swift_unknownObjectRelease();
      [v8 updateWithElement:a1 coordinateSpace:v10];

      [(_UISceneScrollPocketHostComponent *)v2 updatePocketSettings];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1891D8FBC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = [(_UISceneScrollPocketHostComponent *)v1 _pocketElements];
  v5 = [v4 objectForKey_];

  if (v5)
  {
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD000000000000027, 0x800000018A6B0410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FC90);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](0xD00000000000001ALL, 0x800000018A6B0440);
  v7 = sub_18A4A7258();

  [(_UISceneScrollPocketHostComponent *)ObjCClassFromMetadata bsAssert:v7 message:?];

  v8 = [(_UISceneScrollPocketHostComponent *)v1 _pocketElements];
  [v8 removeObjectForKey_];

  [(_UISceneScrollPocketHostComponent *)v2 updatePocketSettings];
}

uint64_t getEnumTagSinglePayload for _UILightEffectDirectionalTransition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _UILightEffectDirectionalTransition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1891D9218()
{
  result = qword_1EA930128;
  if (!qword_1EA930128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930128);
  }

  return result;
}

uint64_t sub_1891D926C(uint64_t a1)
{
  if (a1 >= 4)
  {
    type metadata accessor for CGRectEdge(0);
    result = sub_18A4A8768();
    __break(1u);
  }

  else
  {
    v1 = *&aMinx_2[8 * (a1 & 3)];
    v2 = 0x6867696C68676968;
    if ((a1 & 0x100000000) == 0)
    {
      v2 = 0x6F69746365726964;
    }

    v4 = v2;
    MEMORY[0x18CFE22D0](0x3A6E696769726F28, 0xE900000000000020);
    MEMORY[0x18CFE22D0](v1, 0xE400000000000000);

    MEMORY[0x18CFE22D0](41, 0xE100000000000000);
    return v4;
  }

  return result;
}

uint64_t sub_1891D9368()
{
  v1 = 0x100000000;
  if (!*(v0 + 4))
  {
    v1 = 0;
  }

  return sub_1891D926C(v1 | *v0);
}

uint64_t sub_1891D9384()
{
  v1 = *(v0 + 4);
  sub_18A4A8888();
  sub_18A4A88B8();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891D93E4()
{
  v1 = *(v0 + 4);
  sub_18A4A8888();
  sub_18A4A88B8();
  MEMORY[0x18CFE37E0](v1);
  return sub_18A4A88E8();
}

uint64_t sub_1891D9440(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1891D9474()
{
  result = qword_1EA92F868;
  if (!qword_1EA92F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F868);
  }

  return result;
}

unint64_t sub_1891D94C8(uint64_t a1)
{
  result = sub_1891D94F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891D94F0()
{
  result = qword_1EA92F870;
  if (!qword_1EA92F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA92F870);
  }

  return result;
}

unint64_t sub_1891D9544(uint64_t a1)
{
  result = sub_1891D956C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1891D956C()
{
  result = qword_1EA930130;
  if (!qword_1EA930130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA930130);
  }

  return result;
}

uint64_t sub_1891D95D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v8 = sub_18A4A29D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  if (*(*(v5 + 48) + 16) && (sub_188E906F4(a1 & 1), (v15 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCD0);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_188E8EDF4(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v5 + 48);
    *(v5 + 48) = 0x8000000000000000;
    sub_188EA1A1C(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
    *(v5 + 48) = v31;
    swift_endAccess();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1 & 1;

  v19 = sub_1891D9CD8(v29, v30);
  sub_18A4A29C8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1891DB9AC;
  *(v20 + 24) = v18;
  swift_beginAccess();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v19[4];
  v19[4] = 0x8000000000000000;
  sub_188EA19DC(sub_1891DB9B4, v20, v14, v21);
  v19[4] = v31;
  swift_endAccess();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v9 + 32);
  v23(v11, v14, v8);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v23((v25 + v24), v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF8);
  result = swift_allocObject();
  *(result + 16) = sub_1891DB898;
  *(result + 24) = v25;
  return result;
}

uint64_t sub_1891D9954(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a2;
  v30 = a3;
  v8 = sub_18A4A29D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  if (*(*(v5 + 48) + 16) && (sub_188E906F4(a1 & 1), (v15 & 1) != 0))
  {
    swift_endAccess();
    swift_retain_n();
  }

  else
  {
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCD0);
    v16 = swift_allocObject();
    *(v16 + 16) = sub_188E8EDF4(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v5 + 48);
    *(v5 + 48) = 0x8000000000000000;
    sub_188EA1A1C(v16, a1 & 1, isUniquelyReferenced_nonNull_native);
    *(v5 + 48) = v31;
    swift_endAccess();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v28;
  *(v18 + 24) = a5;
  *(v18 + 32) = a1 & 1;

  v19 = sub_1891D9EE4(v29, v30);
  sub_18A4A29C8();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1891DB708;
  *(v20 + 24) = v18;
  swift_beginAccess();

  v21 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v19[4];
  v19[4] = 0x8000000000000000;
  sub_188EA1B40(sub_1891DB70C, v20, v14, v21);
  v19[4] = v31;
  swift_endAccess();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v9 + 32);
  v23(v11, v14, v8);
  v24 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v23((v25 + v24), v11, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCD8);
  result = swift_allocObject();
  *(result + 16) = sub_1891DB710;
  *(result + 24) = v25;
  return result;
}

void *sub_1891D9CD8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD00);
  sub_18A4A7308();
  v5 = sub_18A4A7258();

  v6 = MEMORY[0x18CFE4050](v5);

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_188C4585C(v6);
    if (v9)
    {
      sub_188A53994(*(v7 + 56) + 40 * v8, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD08);
      if (swift_dynamicCast())
      {
        return v15;
      }
    }
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FD08);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;

  v10[4] = sub_188E8FE4C(MEMORY[0x1E69E7CC0]);
  v16[0] = &type metadata for UIKeyboardInlineCandidateStorage.IsVisibleKey;
  sub_18A4A7308();
  v12 = sub_18A4A7258();

  v13 = MEMORY[0x18CFE4050](v12);

  v16[3] = v11;
  v16[4] = sub_1891DB93C(&unk_1EA93FD10, &qword_1EA93FD08);
  v16[0] = v10;
  swift_beginAccess();

  sub_188F28C0C(v16, v13);
  swift_endAccess();
  return v10;
}

void *sub_1891D9EE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCC8);
  sub_18A4A7308();
  v5 = sub_18A4A7258();

  v6 = MEMORY[0x18CFE4050](v5);

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_188C4585C(v6);
    if (v9)
    {
      sub_188A53994(*(v7 + 56) + 40 * v8, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCE0);
      if (swift_dynamicCast())
      {
        return v15;
      }
    }
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCE0);
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;

  v10[4] = sub_188E8FE60(MEMORY[0x1E69E7CC0]);
  v16[0] = &type metadata for UIKeyboardInlineCandidateStorage.IsExpandedKey;
  sub_18A4A7308();
  v12 = sub_18A4A7258();

  v13 = MEMORY[0x18CFE4050](v12);

  v16[3] = v11;
  v16[4] = sub_1891DB93C(&qword_1EA93FCE8, &qword_1EA93FCE0);
  v16[0] = v10;
  swift_beginAccess();

  sub_188F28C0C(v16, v13);
  swift_endAccess();
  return v10;
}

uint64_t sub_1891DA0F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    v8 = a3(a2);
    v10 = v9;
    swift_endAccess();
    a4(v8, v10);
  }

  return result;
}

uint64_t sub_1891DA1C0(uint64_t a1, uint64_t *a2)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(v2 + 16);
    v19 = *(v2 + 16);
    swift_beginAccess();
    v8 = *(v6 + 56);
    if (*(v8 + 16) && (v9 = sub_188E906F4(v7), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 16 * v9);
      v12 = v11;

      v13 = v12;
      swift_endAccess();
      sub_188FD3128(v11);
    }

    else
    {
      swift_endAccess();
      v14 = *(v6 + 16);
      if (!v14 || (, v13 = v14(v6, &v19), sub_188A55B8C(v14), !v13))
      {
        v13 = [objc_allocWithZone(MEMORY[0x1E698E768]) init];
      }
    }

    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    sub_18A4A7308();
    v16 = sub_18A4A7258();

    v17 = MEMORY[0x18CFE4050](v16);

    v18 = [v15 flagForSetting_];

    return v18 == 1;
  }

  return result;
}

id sub_1891DA360(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA93FCC0);
  sub_18A4A7308();
  v4 = sub_18A4A7258();

  v5 = MEMORY[0x18CFE4050](v4);

  return [a1 setFlag:a2 & 1 forSetting:v5];
}

id sub_1891DA4C0()
{
  v2.receiver = v0;
  v2.super_class = _s37UIKeyboardCandidateSceneSpecificationCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall UIKeyboardCandidateSceneHostingController.setupSceneHosting()()
{
  v1 = v0;
  v2 = sub_18A4A7258();
  v3 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];

  v4 = objc_allocWithZone(_s37UIKeyboardCandidateSceneSpecificationCMa());
  v5 = v3;
  v6 = [v4 init];
  v7 = [objc_allocWithZone(_UISceneHostingController) initWithProcessIdentity:v5 sceneSpecification:v6];

  v8 = OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController;
  v9 = *(v1 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController);
  *(v1 + OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneHostingController) = v7;

  v10 = *(v1 + v8);
  if (v10)
  {
    [v10 setDelegate_];
    v11 = *(v1 + v8);
    if (v11)
    {
      v12 = v11;
      v13 = [(_UISceneHostingController *)v12 _fbScene];
      type metadata accessor for _UISceneKeyValueStorageExtension(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for _UISceneKeyValueStorageComponent();
      v15 = swift_getObjCClassFromMetadata();
      if ([v13 componentForExtension:ObjCClassFromMetadata ofClass:v15])
      {
        if (swift_dynamicCastClass())
        {
          v16 = sub_1890F5B48();

          swift_unknownObjectRelease();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v59[2] = Strong;
            v60 = ObjCClassFromMetadata;
            [Strong hostTextIsVertical];
            v18 = swift_weakLoadStrong();
            if (v18)
            {
              v19 = v18;
              v59[1] = v59;
              MEMORY[0x1EEE9AC00](v18);
              v20 = *(v16 + 16);

              sub_188FD0880(v20, v19, sub_1891DB6D8);
            }

            v21 = [objc_opt_self() currentDevice];
            v22 = [v21 userInterfaceIdiom];

            v61 = v22;
            v23 = swift_weakLoadStrong();
            if (v23)
            {
              v24 = v23;
              MEMORY[0x1EEE9AC00](v23);
              sub_188FD0880(*(v16 + 16), v24, sub_1891DB6A0);
            }

            swift_unknownObjectRelease();

            ObjCClassFromMetadata = v60;
          }

          else
          {
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      v25 = *(v1 + v8);
      if (v25)
      {
        v26 = v25;
        v27 = [(_UISceneHostingController *)v26 _fbScene];
        if ([v27 componentForExtension:ObjCClassFromMetadata ofClass:v15])
        {
          if (swift_dynamicCastClass())
          {
            v28 = sub_1890F5B58();

            swift_unknownObjectRelease();
            v29 = swift_allocObject();
            swift_unknownObjectWeakInit();
            if (swift_weakLoadStrong())
            {
              v30 = swift_allocObject();
              *(v30 + 16) = sub_1891DAF38;
              *(v30 + 24) = v29;
              v31 = *(v28 + 16);

              sub_1891D9954(v31, sub_1891DB5A8, 0, sub_1891DB658, v30);
            }

            v32 = OBJC_IVAR___UIKeyboardCandidateSceneHostingController_sceneConfigurationObservables;
            v33 = swift_beginAccess();
            MEMORY[0x18CFE2450](v33);
            if (*(*(v1 + v32) + 16) >= *(*(v1 + v32) + 24) >> 1)
            {
              sub_18A4A7588();
            }

            sub_18A4A75F8();
            swift_endAccess();
            v34 = swift_allocObject();
            swift_unknownObjectWeakInit();
            if (swift_weakLoadStrong())
            {
              v35 = swift_allocObject();
              *(v35 + 16) = sub_1891DB9A8;
              *(v35 + 24) = v34;
              v36 = *(v28 + 16);

              sub_1891D95D0(v36, sub_1891DB58C, 0, sub_1891DB9B0, v35);
            }

            v37 = swift_beginAccess();
            MEMORY[0x18CFE2450](v37);
            if (*(*(v1 + v32) + 16) >= *(*(v1 + v32) + 24) >> 1)
            {
              sub_18A4A7588();
            }

            sub_18A4A75F8();
            swift_endAccess();
          }

          else
          {

            swift_unknownObjectRelease();
          }
        }

        else
        {
        }

        v38 = *(v1 + v8);
        if (v38)
        {
          v39 = swift_unknownObjectWeakLoadStrong();
          if (v39)
          {
            v40 = v39;
            v41 = v38;
            v42 = [v41 sceneViewController];
            v43 = [v42 view];

            if (v43)
            {
              v44 = [v40 hostingParentView];
              [v44 addSubview_];
              [v43 setTranslatesAutoresizingMaskIntoConstraints_];
              v60 = objc_opt_self();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA933EB0);
              v45 = swift_allocObject();
              *(v45 + 16) = xmmword_18A64B810;
              v46 = [v43 topAnchor];
              v47 = [v44 topAnchor];
              v48 = [v46 constraintEqualToAnchor_];

              *(v45 + 32) = v48;
              v49 = [v43 bottomAnchor];
              v50 = [v44 bottomAnchor];
              v51 = [v49 constraintEqualToAnchor_];

              *(v45 + 40) = v51;
              v52 = [v43 leftAnchor];
              v53 = [v44 leftAnchor];
              v54 = [v52 constraintEqualToAnchor_];

              *(v45 + 48) = v54;
              v55 = [v43 rightAnchor];
              v56 = [v44 rightAnchor];
              v57 = [v55 constraintEqualToAnchor_];

              *(v45 + 56) = v57;
              sub_188A34624(0, &qword_1ED48CFF0);
              v58 = sub_18A4A7518();

              [v60 activateConstraints_];

              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }
          }
        }
      }
    }
  }
}