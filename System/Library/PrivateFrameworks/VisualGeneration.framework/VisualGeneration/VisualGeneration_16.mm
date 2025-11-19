uint64_t sub_19A441D44(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_19A441D6C(uint64_t a1, uint64_t *a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  v6 = *a2;
  *(v5 + 32) = a5;
  *(v5 + 40) = v6;
  *(v5 + 64) = *(a2 + 8);
  *(v5 + 48) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_19A441DA4, 0, 0);
}

uint64_t sub_19A441DA4()
{
  v43 = v0;
  v1 = *(v0 + 40);
  if (*(v0 + 64))
  {
    if (*(v0 + 64) == 1)
    {
      [*(v0 + 40) extent];
      sub_19A39AAB4(&v41, v2, v3);
      Width = v41;
      v5 = v42;
      goto LABEL_7;
    }

    Width = CVPixelBufferGetWidth(*(v0 + 40));
    Height = CVPixelBufferGetHeight(v1);
  }

  else
  {
    Width = CGImageGetWidth(*(v0 + 40));
    Height = CGImageGetHeight(v1);
  }

  v5 = Height;
LABEL_7:
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  if (Width == v8 && v5 == v7)
  {
    v13 = *(v0 + 64);
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);
    *v15 = v14;
    *(v15 + 8) = v13;
    v16 = v14;
LABEL_17:
    v17 = *(v0 + 8);
    goto LABEL_33;
  }

  if (Width == v5 && v8 == v7)
  {
    v18 = sub_19A572CCC();
    v19 = [objc_opt_self() filterWithName_];

    if (!v19)
    {
      v23 = *(v0 + 24);
      v22 = *(v0 + 32);
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_19A57395C();

      v41 = 0xD000000000000011;
      v42 = 0x800000019A599D90;
      MEMORY[0x19A900A50](v23, v22);
      MEMORY[0x19A900A50](0xD000000000000014, 0x800000019A599DB0);
      v25 = v41;
      v24 = v42;
      sub_19A394160();
      swift_allocError();
      *v11 = v25;
      *(v11 + 8) = v24;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      v12 = 2;
      goto LABEL_23;
    }

    v20 = *(v0 + 40);
    if (*(v0 + 64))
    {
      if (*(v0 + 64) == 1)
      {
        v21 = v20;
      }

      else
      {
        v21 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
      }
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
    }

    v26 = v21;
    v27 = *(v0 + 48);
    [v19 setValue:v21 forKey:*MEMORY[0x1E695FAB0]];

    if (v27 / v5 <= 0.0)
    {
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_19A57395C();

      v41 = 0xD00000000000002CLL;
      v42 = 0x800000019A599DD0;
      v32 = sub_19A57332C();
      MEMORY[0x19A900A50](v32);
    }

    else
    {
      v28 = sub_19A57115C();
      [v19 setValue:v28 forKey:*MEMORY[0x1E695FB20]];

      v29 = [v19 outputImage];
      if (v29)
      {
        v30 = v29;
        v31 = *(v0 + 16);

        *v31 = v30;
        *(v31 + 8) = 1;
        goto LABEL_17;
      }

      v41 = 0;
      v42 = 0xE000000000000000;
      sub_19A57395C();
      v33 = [v19 description];
      v34 = sub_19A572CFC();
      v36 = v35;

      v41 = v34;
      v42 = v36;
      MEMORY[0x19A900A50](0xD000000000000021, 0x800000019A599E00);
    }

    v37 = v41;
    v38 = v42;
    sub_19A394160();
    swift_allocError();
    *v39 = v37;
    *(v39 + 8) = v38;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    *(v39 + 32) = 2;
    swift_willThrow();

    goto LABEL_32;
  }

  sub_19A394160();
  swift_allocError();
  *v11 = Width;
  *(v11 + 8) = v5;
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  v12 = 1;
LABEL_23:
  *(v11 + 32) = v12;
  swift_willThrow();
LABEL_32:
  v17 = *(v0 + 8);
LABEL_33:

  return v17();
}

BOOL sub_19A4421E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (*a1 == *a2 && v3 == v5)
  {
    return 1;
  }

  if (v2 == v3 && v4 == v5)
  {
    v9 = __OFSUB__(v3, v5);
    v8 = v3 - v5 < 0;
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  if (v8 != v9)
  {
    v11 = 0;
    v10 = 1;
  }

  else
  {
    v11 = __OFSUB__(v2, v4);
    v10 = v2 - v4 < 0;
  }

  return v10 == v11;
}

uint64_t sub_19A442228(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for GenerationRecipe(0);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A4422BC, 0, 0);
}

uint64_t sub_19A4422BC()
{
  v26 = v0;
  v1 = v0[3];
  v2 = *(v1 + *(v0[4] + 24));
  if (!*(v2 + 16))
  {
    goto LABEL_10;
  }

  if (*(v2 + 32) == 1)
  {

    v1 = v0[3];
LABEL_10:
    v8 = v0[2];
LABEL_11:
    sub_19A39AA50(v1, v8);
    goto LABEL_12;
  }

  v3 = sub_19A573F1C();

  v1 = v0[3];
  if (v3)
  {
    goto LABEL_10;
  }

  v4 = sub_19A39C344();
  v1 = v0[3];
  if (v4 != 2)
  {
    goto LABEL_10;
  }

  v5 = v1 + *(v0[4] + 52);
  v6 = *(v5 + 1);
  v7 = *(v5 + 2);
  if (v7 > 4)
  {
    if (v7 - 7 < 3)
    {
      LOBYTE(v7) = 8;
      if (v6 != 3)
      {
        goto LABEL_26;
      }

LABEL_21:
      if (qword_1ED824050 == -1)
      {
LABEL_22:
        v11 = sub_19A5723FC();
        __swift_project_value_buffer(v11, qword_1ED82BCF0);
        v12 = sub_19A5723DC();
        v13 = sub_19A57355C();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_19A2DE000, v12, v13, "GenerationRecipe.demographicDirectives missing a value for gender or skinTone, so no CharacterFace can be used", v14, 2u);
          MEMORY[0x19A902C50](v14, -1, -1);
        }

        v16 = v0[2];
        v15 = v0[3];

        v1 = v15;
        v8 = v16;
        goto LABEL_11;
      }

LABEL_30:
      swift_once();
      goto LABEL_22;
    }

    if (v7 - 5 >= 2)
    {
      goto LABEL_21;
    }

    LOBYTE(v7) = 5;
    goto LABEL_20;
  }

  if (v7 - 1 >= 2)
  {
    if (v7 - 3 >= 2)
    {
      goto LABEL_21;
    }

LABEL_20:
    if (v6 == 3)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  LOBYTE(v7) = 2;
  if (v6 == 3)
  {
    goto LABEL_21;
  }

LABEL_26:
  sub_19A39AA50(v1, v0[5]);
  if (!off_1EAFA1EE0)
  {
    type metadata accessor for CharacterSelection();
    swift_allocObject();
    off_1EAFA1EE0 = sub_19A470C14();

    if (!off_1EAFA1EE0)
    {
      __break(1u);
      goto LABEL_30;
    }
  }

  v18 = v0[4];
  v17 = v0[5];
  v19 = v0[2];
  v25[0] = v7;

  sub_19A471000(v6, v25, &v23);

  v22 = v23;
  v20 = v24;
  v21 = (v17 + *(v18 + 56));
  sub_19A3A3810(*v21);
  *v21 = v22;
  v21[2] = v20;
  sub_19A3B5E6C(v17, v19);
LABEL_12:

  v9 = v0[1];

  return v9();
}

uint64_t sub_19A442690(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return sub_19A442228(a1, a2);
}

void Image.pixelDimensions.getter(size_t *a1@<X8>)
{
  v3 = *v1;
  if (!*(v1 + 8))
  {
    v6 = *v1;
    Width = CGImageGetWidth(v3);
    Height = CGImageGetHeight(v6);
LABEL_8:
    *a1 = Width;
    a1[1] = Height;
    return;
  }

  if (*(v1 + 8) != 1)
  {
    v9 = *v1;
    Width = CVPixelBufferGetWidth(v3);
    Height = CVPixelBufferGetHeight(v9);
    goto LABEL_8;
  }

  [(CGImage *)v3 extent];

  sub_19A39AAB4(a1, v4, v5);
}

uint64_t _s16VisualGeneration5ImageO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_11;
    }

    type metadata accessor for CGImage(0);
    v8 = &unk_1EAFA17A8;
    v9 = type metadata accessor for CGImage;
LABEL_9:
    sub_19A4429F8(v8, v9);
    v5 = v3;
    v6 = v2;
    v7 = sub_19A57150C();
    goto LABEL_10;
  }

  if (*(a1 + 8) != 1)
  {
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    type metadata accessor for CVBuffer(0);
    v8 = &unk_1EAFA1798;
    v9 = type metadata accessor for CVBuffer;
    goto LABEL_9;
  }

  if (v4 != 1)
  {
LABEL_11:
    v10 = 0;
    return v10 & 1;
  }

  sub_19A4429AC();
  v5 = v3;
  v6 = v2;
  v7 = sub_19A57374C();
LABEL_10:
  v10 = v7;

  return v10 & 1;
}

uint64_t getEnumTagSinglePayload for PixelBufferError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PixelBufferError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_19A4429AC()
{
  result = qword_1EAFA17A0;
  if (!qword_1EAFA17A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAFA17A0);
  }

  return result;
}

uint64_t sub_19A4429F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PolicyViolationError.generationState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PolicyViolationError() + 20);

  return sub_19A442AD8(v3, a1);
}

uint64_t type metadata accessor for PolicyViolationError()
{
  result = qword_1EAF9F4E8;
  if (!qword_1EAF9F4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A442AD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PolicyViolationError.errorDescription.getter()
{
  v1 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  sub_19A442EFC(*v0);
  if (!v11)
  {
    v12 = *(v10 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v25[0] = v9;
      v25[1] = v6;
      v25[2] = v3;
      v33 = MEMORY[0x1E69E7CC0];
      sub_19A322580(0, v12, 0);
      v13 = v33;
      v14 = v10 + 32;
      do
      {
        sub_19A2F3EF0(v14, v32);
        sub_19A2F3EF0(v32, v28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD40);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA17B0);
        if (swift_dynamicCast())
        {
          sub_19A2EA460(v26, v29);
          v15 = v30;
          v16 = v31;
          __swift_project_boxed_opaque_existential_1(v29, v30);
          v17 = (*(v16 + 8))(v15, v16);
          v19 = v18;
          __swift_destroy_boxed_opaque_existential_0Tm(v29);
        }

        else
        {
          v27 = 0;
          memset(v26, 0, sizeof(v26));
          sub_19A44310C(v26);
          __swift_project_boxed_opaque_existential_1(v32, v32[3]);
          v17 = sub_19A573EDC();
          v19 = v20;
        }

        __swift_destroy_boxed_opaque_existential_0Tm(v32);
        v33 = v13;
        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_19A322580((v21 > 1), v22 + 1, 1);
          v13 = v33;
        }

        *(v13 + 16) = v22 + 1;
        v23 = v13 + 16 * v22;
        *(v23 + 32) = v17;
        *(v23 + 40) = v19;
        v14 += 40;
        --v12;
      }

      while (v12);
    }

    v32[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FCD8);
    sub_19A331C2C();
    sub_19A572BEC();
  }

  sub_19A572C8C();
  sub_19A572C7C();
  sub_19A572C6C();

  sub_19A572C7C();
  sub_19A572CAC();
  sub_19A5710EC();
  return sub_19A572D7C();
}

unint64_t sub_19A442EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 != 2)
  {
    if (v1 == 1)
    {
      sub_19A2F3EF0(a1 + 32, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD40);
      if (swift_dynamicCast())
      {
        if (qword_1EAF9F910 != -1)
        {
          swift_once();
        }

        v2 = qword_1EAFCA270;

        v3 = *(sub_19A403614(v8[2], v2) + 2);

        if (v3)
        {

          return 0xD00000000000004ALL;
        }
      }
    }

    return 0;
  }

  sub_19A2F3EF0(a1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_19A2F3EF0(a1 + 72, v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v9[0];
  v7 = *(v9[4] + 16);

  if (v7)
  {

    return 0;
  }

  return 0xD000000000000044;
}

uint64_t sub_19A44310C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA17B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_19A443178()
{
  result = qword_1EAF9EB20;
  if (!qword_1EAF9EB20)
  {
    type metadata accessor for PolicyViolationError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9EB20);
  }

  return result;
}

void sub_19A443220()
{
  sub_19A4432A4();
  if (v0 <= 0x3F)
  {
    sub_19A443308();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A4432A4()
{
  if (!qword_1EAF9F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF9FD40);
    v0 = sub_19A57312C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F0F0);
    }
  }
}

void sub_19A443308()
{
  if (!qword_1EAF9F888)
  {
    type metadata accessor for GenerationState();
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F888);
    }
  }
}

uint64_t sub_19A443360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = 0xEB00000000444554;
  v6 = 0x4847495259504F43;
  v7 = byte_1F0DA87F8;
  v8 = 0xD000000000000013;
  v9 = 0xED00004552554749;
  if (byte_1F0DA87F8 == 1)
  {
    v9 = 0x800000019A599EF0;
  }

  else
  {
    v8 = 0x465F43494C425550;
  }

  if (byte_1F0DA87F8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x4847495259504F43;
  }

  if (byte_1F0DA87F8)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xEB00000000444554;
  }

  if (v10 == a1 && v11 == a2)
  {
    goto LABEL_12;
  }

  v13 = sub_19A573F1C();

  if (v13)
  {
    goto LABEL_14;
  }

  v7 = byte_1F0DA87F9;
  v15 = 0x4847495259504F43;
  v16 = 0xEB00000000444554;
  if (!byte_1F0DA87F9)
  {
LABEL_19:
    if (v15 != a1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (byte_1F0DA87F9 == 1)
  {
    v15 = 0xD000000000000013;
    v16 = 0x800000019A599EF0;
    goto LABEL_19;
  }

  v16 = 0xED00004552554749;
  if (a1 != 0x465F43494C425550)
  {
    goto LABEL_23;
  }

LABEL_22:
  if (v16 == a2)
  {
LABEL_12:

    goto LABEL_14;
  }

LABEL_23:
  v17 = sub_19A573F1C();

  if (v17)
  {
    goto LABEL_14;
  }

  v7 = byte_1F0DA87FA;
  if (byte_1F0DA87FA)
  {
    if (byte_1F0DA87FA == 1)
    {
      v6 = 0xD000000000000013;
      v5 = 0x800000019A599EF0;
    }

    else
    {
      v5 = 0xED00004552554749;
      v6 = 0x465F43494C425550;
    }
  }

  if (v6 == a1 && v5 == a2)
  {
    goto LABEL_12;
  }

  v18 = sub_19A573F1C();

  if ((v18 & 1) == 0)
  {

    v7 = 3;
    goto LABEL_15;
  }

LABEL_14:

LABEL_15:
  *a3 = v7;
  return result;
}

uint64_t dispatch thunk of QueryParserHeating.queryParserPreheat()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A2F759C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of QueryParserHeating.queryParserCooldown()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_19A33558C;

  return v7(a1, a2);
}

uint64_t sub_19A44381C(void *a1)
{
  v2 = v1;
  v19[3] = *MEMORY[0x1E69E9840];
  *(v1 + 40) = xmmword_19A585F60;
  v4 = v1 + 40;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 72) = xmmword_19A585F70;
  *(v4 - 24) = a1;
  v5 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v5)
  {
    __break(1u);
  }

  *(v2 + 24) = v5;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  v19[0] = 0;
  v8 = [a1 newDefaultLibraryWithBundle:v7 error:v19];
  if (v8)
  {
    v9 = v8;
    v10 = v19[0];

    *(v2 + 32) = v9;
    swift_beginAccess();
    CVMetalTextureCacheCreate(0, 0, a1, 0, v4);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = v19[0];
    v12 = sub_19A570D1C();

    swift_willThrow();
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v13 = sub_19A5723FC();
    __swift_project_value_buffer(v13, qword_1EAFCA1E8);
    v14 = sub_19A5723DC();
    v15 = sub_19A57355C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_19A2DE000, v14, v15, "could not load shader library", v16, 2u);
      MEMORY[0x19A902C50](v16, -1, -1);
    }

    type metadata accessor for GeneratorError(0);
    sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v17 = 0xD000000000000015;
    v17[1] = 0x800000019A59A040;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    type metadata accessor for ImageBlendingRenderer();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

void sub_19A443B78(uint64_t a1, double a2, double a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 56) == a2 && *(v3 + 64) == a3;
  if (v4 && *(v3 + 48) == a1)
  {
    return;
  }

  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 48) = a1;
  v5 = [objc_allocWithZone(MEMORY[0x1E6974148]) init];
  v6 = sub_19A572CCC();
  [v5 setLabel_];

  v7 = *(v3 + 32);
  v8 = sub_19A572CCC();
  v9 = [v7 newFunctionWithName_];

  if (!v9)
  {
    __break(1u);
    goto LABEL_36;
  }

  [v5 setVertexFunction_];
  swift_unknownObjectRelease();
  v10 = sub_19A572CCC();
  v11 = [v7 newFunctionWithName_];

  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  [v5 setFragmentFunction_];
  swift_unknownObjectRelease();
  v12 = [v5 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  [v13 setPixelFormat_];

  v14 = *(v3 + 16);
  v38[0] = 0;
  v15 = [v14 newRenderPipelineStateWithDescriptor:v5 error:v38];
  v16 = v38[0];
  if (v15)
  {
    *(v3 + 72) = v15;
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
    v19 = *(v3 + 80);
    *(v3 + 80) = v18;
    v20 = v18;

    if (v20)
    {
      v21 = [v20 colorAttachments];

      v22 = [v21 objectAtIndexedSubscript_];
      if (v22)
      {
        [v22 setLoadAction_];

        v23 = *(v3 + 80);
        if (v23)
        {
          v24 = [v23 colorAttachments];
          v25 = [v24 objectAtIndexedSubscript_];

          if (v25)
          {
            [v25 setClearColor_];

            v26 = *(v3 + 80);
            if (v26)
            {
              v27 = [v26 colorAttachments];
              v28 = [v27 objectAtIndexedSubscript_];

              if (v28)
              {
                [v28 setStoreAction_];

                v29 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
                [v29 setTextureType_];
                [v29 setPixelFormat_];
                v30 = *(v3 + 56);
                if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  __break(1u);
                }

                else if (v30 > -9.22337204e18)
                {
                  if (v30 < 9.22337204e18)
                  {
                    [v29 setWidth_];
                    v31 = *(v3 + 64);
                    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v31 > -9.22337204e18)
                      {
                        if (v31 < 9.22337204e18)
                        {
                          [v29 setHeight_];
                          [v29 setUsage_];
                          [v29 setAllowGPUOptimizedContents_];
                          v32 = [v14 newTextureWithDescriptor_];
                          if (v32)
                          {
                            *(v3 + 88) = v32;
                            swift_unknownObjectRelease();
                            v33 = *(v3 + 80);
                            if (v33)
                            {
                              v34 = [v33 colorAttachments];
                              v35 = [v34 objectAtIndexedSubscript_];

                              if (v35)
                              {
                                v36 = *(v3 + 88);
                                swift_unknownObjectRetain();
                                [v35 setTexture_];
                                swift_unknownObjectRelease();

                                sub_19A445308();
                                return;
                              }

                              goto LABEL_46;
                            }

LABEL_45:
                            __break(1u);
LABEL_46:
                            __break(1u);
                            return;
                          }

LABEL_44:
                          __break(1u);
                          goto LABEL_45;
                        }

LABEL_34:
                        __break(1u);
                      }

LABEL_33:
                      __break(1u);
                      goto LABEL_34;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

                __break(1u);
                goto LABEL_31;
              }

LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v37 = v38[0];
  sub_19A570D1C();

  swift_willThrow();
}

void sub_19A444104(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3)
{
  v102 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v18 = sub_19A5723FC();
    __swift_project_value_buffer(v18, qword_1EAFCA1E8);
    v19 = sub_19A5723DC();
    v20 = sub_19A57355C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "inconsistent input pixel buffer formats";
      goto LABEL_14;
    }

LABEL_15:

    type metadata accessor for GeneratorError(0);
    sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v24 = 0xD000000000000015;
    v24[1] = 0x800000019A59A040;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (CVPixelBufferGetPixelFormatType(a3) != 1278226488)
  {
    if (qword_1EAF9F208 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_12;
  }

  v10 = sub_19A44515C(PixelFormatType);
  if (v3)
  {
    return;
  }

  sub_19A443B78(v10, Width, Height);
  v11 = *(v98 + 48);
  image[0] = 0;
  swift_beginAccess();
  v12 = *(v98 + 40);
  if (!v12)
  {
    goto LABEL_86;
  }

  v13 = v12;
  v14 = CVPixelBufferGetWidth(a1);
  v15 = CVPixelBufferGetHeight(a1);
  CVMetalTextureCacheCreateTextureFromImage(0, v13, a1, 0, v11, v14, v15, 0, image);

  if (image[0])
  {
    v16 = CVMetalTextureGetTexture(image[0]);
    v17 = image[0];
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  image[0] = 0;
  v25 = *(v98 + 40);
  v26 = *(v98 + 48);
  if (!v25)
  {
    goto LABEL_87;
  }

  v27 = v25;
  v28 = CVPixelBufferGetWidth(a2);
  v29 = CVPixelBufferGetHeight(a2);
  CVMetalTextureCacheCreateTextureFromImage(0, v27, a2, 0, v26, v28, v29, 0, image);

  if (image[0])
  {
    v97 = CVMetalTextureGetTexture(image[0]);
    v30 = image[0];
  }

  else
  {
    v30 = 0;
    v97 = 0;
  }

  image[0] = 0;
  v31 = *(v98 + 40);
  if (!v31)
  {
    goto LABEL_88;
  }

  v32 = v31;
  v33 = CVPixelBufferGetWidth(a3);
  v34 = CVPixelBufferGetHeight(a3);
  CVMetalTextureCacheCreateTextureFromImage(0, v32, a3, 0, MTLPixelFormatR8Unorm, v33, v34, 0, image);

  if (image[0])
  {
    v96 = CVMetalTextureGetTexture(image[0]);
    v35 = image[0];
  }

  else
  {
    v35 = 0;
    v96 = 0;
  }

  image[0] = 0;
  v36 = *(v98 + 40);
  v37 = *(v98 + 48);
  if (!v36)
  {
    goto LABEL_89;
  }

  v38 = v36;
  v39 = CVPixelBufferGetWidth(a1);
  v40 = CVPixelBufferGetHeight(a1);
  CVMetalTextureCacheCreateTextureFromImage(0, v38, a1, 0, v37, v39, v40, 0, image);

  if (image[0])
  {
    v41 = CVMetalTextureGetTexture(image[0]);
    v42 = image[0];
  }

  else
  {
    v42 = 0;
    v41 = 0;
  }

  v43 = 200;
  v44 = 0xD000000000000013;
  v45 = &selRef_initWithScaledImageWidth_scaledImageHeight_scalingModel_;
  v95 = v41;
  v46 = v98;
  do
  {
    v47 = [*(v46 + 24) commandBuffer];
    if (!v47)
    {
      if (qword_1EAF9F208 != -1)
      {
        swift_once();
      }

      v65 = sub_19A5723FC();
      __swift_project_value_buffer(v65, qword_1EAFCA1E8);
      v66 = sub_19A5723DC();
      v67 = sub_19A57355C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_19A2DE000, v66, v67, "could not create command buffer", v68, 2u);
        MEMORY[0x19A902C50](v68, -1, -1);
      }

      type metadata accessor for GeneratorError(0);
      sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
      swift_allocError();
      *v69 = 0xD000000000000015;
      v69[1] = 0x800000019A59A040;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_65;
    }

    v48 = v47;
    v49 = sub_19A572CCC();
    [v48 setLabel_];

    if (!*(v46 + 80))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      return;
    }

    v50 = [v48 renderCommandEncoderWithDescriptor_];
    if (!v50)
    {
      if (qword_1EAF9F208 != -1)
      {
        swift_once();
      }

      v70 = sub_19A5723FC();
      __swift_project_value_buffer(v70, qword_1EAFCA1E8);
      v71 = sub_19A5723DC();
      v72 = sub_19A57355C();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&dword_19A2DE000, v71, v72, "could not create render command encoder", v73, 2u);
        MEMORY[0x19A902C50](v73, -1, -1);
      }

      type metadata accessor for GeneratorError(0);
      sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
      swift_allocError();
      *v74 = 0xD000000000000015;
      v74[1] = 0x800000019A59A040;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_64:
      swift_unknownObjectRelease();
LABEL_65:
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    v51 = v50;
    v52 = sub_19A572CCC();
    [v51 pushDebugGroup_];

    v53 = v45[45];
    image[0] = 0;
    image[1] = 0;
    v100 = *(v46 + 56);
    v101 = xmmword_19A585F80;
    [v51 v53];
    if (!*(v46 + 72))
    {
      goto LABEL_83;
    }

    [v51 setRenderPipelineState_];
    [v51 setVertexBuffer:*(v46 + 104) offset:0 atIndex:0];
    [v51 setFragmentTexture:v16 atIndex:0];
    [v51 setFragmentTexture:v97 atIndex:1];
    [v51 setFragmentTexture:v96 atIndex:2];
    [v51 setFragmentTexture:v41 atIndex:3];
    v54 = *(v46 + 56);
    if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
LABEL_12:
      v23 = sub_19A5723FC();
      __swift_project_value_buffer(v23, qword_1EAFCA1E8);
      v19 = sub_19A5723DC();
      v20 = sub_19A57355C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        v22 = "unexpected mask pixel buffer format";
LABEL_14:
        _os_log_impl(&dword_19A2DE000, v19, v20, v22, v21, 2u);
        MEMORY[0x19A902C50](v21, -1, -1);
      }

      goto LABEL_15;
    }

    if (v54 <= -2147483650.0)
    {
      goto LABEL_76;
    }

    if (v54 >= 2147483650.0)
    {
      goto LABEL_77;
    }

    LODWORD(image[0]) = v54;
    v55 = *(v46 + 64);
    if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_78;
    }

    if (v55 <= -2147483650.0)
    {
      goto LABEL_79;
    }

    if (v55 >= 2147483650.0)
    {
      goto LABEL_80;
    }

    HIDWORD(image[0]) = v55;
    [v51 setFragmentBytes:image length:8 atIndex:0];
    [v51 drawPrimitives:3 vertexStart:0 vertexCount:6];
    [v51 popDebugGroup];
    [v51 endEncoding];
    if (v43 != 1)
    {
      v56 = [v48 blitCommandEncoder];
      if (!v56)
      {
        if (qword_1EAF9F208 != -1)
        {
          swift_once();
        }

        v77 = sub_19A5723FC();
        __swift_project_value_buffer(v77, qword_1EAFCA1E8);
        v78 = sub_19A5723DC();
        v79 = sub_19A57355C();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          *v80 = 0;
          _os_log_impl(&dword_19A2DE000, v78, v79, "could not create blit command encoder", v80, 2u);
          MEMORY[0x19A902C50](v80, -1, -1);
        }

        type metadata accessor for GeneratorError(0);
        sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
        swift_allocError();
        *v81 = 0xD000000000000015;
        v81[1] = 0x800000019A59A040;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        swift_unknownObjectRelease();
        goto LABEL_64;
      }

      v57 = v56;
      v58 = v46;
      v59 = v48;
      v60 = v45;
      v61 = v44;
      v62 = v16;
      v63 = sub_19A572CCC();
      [v57 setLabel_];

      v64 = sub_19A572CCC();
      [v57 pushDebugGroup_];

      if (!*(v58 + 88))
      {
        goto LABEL_85;
      }

      v41 = v95;
      if (!v95)
      {
        goto LABEL_84;
      }

      [v57 copyFromTexture_toTexture_];
      [v57 popDebugGroup];
      [v57 endEncoding];
      swift_unknownObjectRelease();
      v16 = v62;
      v44 = v61;
      v45 = v60;
      v48 = v59;
      v46 = v98;
    }

    [v48 commit];
    [v48 waitUntilCompleted];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    --v43;
  }

  while (v43);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!*(v46 + 96))
  {
    v76 = *(v46 + 88);
    if (v76)
    {
      swift_unknownObjectRetain();
      goto LABEL_68;
    }

    goto LABEL_90;
  }

  v76 = *(v46 + 96);
LABEL_68:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1738);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  v83 = *MEMORY[0x1E695F9A8];
  *(inited + 32) = *MEMORY[0x1E695F9A8];
  type metadata accessor for CGColorSpace(0);
  *(inited + 64) = v84;
  *(inited + 40) = DeviceRGB;
  v85 = v83;
  v86 = DeviceRGB;
  swift_unknownObjectRetain();
  sub_19A3304A0(inited);
  swift_setDeallocating();
  sub_19A445514(inited + 32);
  v87 = objc_allocWithZone(MEMORY[0x1E695F658]);
  type metadata accessor for CIImageOption(0);
  sub_19A44557C(&qword_1EAF9FB48, type metadata accessor for CIImageOption);
  v88 = sub_19A572ADC();

  v89 = [v87 initWithMTLTexture:v76 options:v88];
  swift_unknownObjectRelease();

  if (v89)
  {
    [v89 imageTransformForCGOrientation_];
    [v89 imageByApplyingTransform_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAF9F208 != -1)
    {
      swift_once();
    }

    v90 = sub_19A5723FC();
    __swift_project_value_buffer(v90, qword_1EAFCA1E8);
    v91 = sub_19A5723DC();
    v92 = sub_19A57355C();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_19A2DE000, v91, v92, "could not create CIImage", v93, 2u);
      MEMORY[0x19A902C50](v93, -1, -1);
    }

    type metadata accessor for GeneratorError(0);
    sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v94 = 0xD000000000000015;
    v94[1] = 0x800000019A59A040;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_19A44515C(int a1)
{
  if (a1 == 1111970369)
  {
    return 80;
  }

  if (a1 == 1380401729)
  {
    return 70;
  }

  if (qword_1EAF9F208 != -1)
  {
    swift_once();
  }

  v3 = sub_19A5723FC();
  __swift_project_value_buffer(v3, qword_1EAFCA1E8);
  v4 = sub_19A5723DC();
  v5 = sub_19A57355C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_19A2DE000, v4, v5, "unsupported input pixel buffer format %u", v6, 8u);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  type metadata accessor for GeneratorError(0);
  sub_19A44557C(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
  swift_allocError();
  *v7 = 0xD000000000000015;
  v7[1] = 0x800000019A59A040;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_19A445308()
{
  v1 = swift_slowAlloc();
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v2;
  v18.size.height = v3;
  MinX = CGRectGetMinX(v18);
  *&MinX = 1.0 - (MinX + MinX) / *(v0 + 56);
  v16 = *&MinX;
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v2;
  v19.size.height = v3;
  MinY = CGRectGetMinY(v19);
  *&MinY = 1.0 - (MinY + MinY) / *(v0 + 64);
  *&v6 = v16;
  *&v7 = v16;
  *(&v7 + 1) = -*&MinY;
  *&v8 = -v16;
  *&v9 = -v16;
  *(&v9 + 1) = -*&MinY;
  HIDWORD(v8) = LODWORD(MinY);
  HIDWORD(v6) = LODWORD(MinY);
  __asm { FMOV            V0.2S, #1.0 }

  *v1 = v7;
  v1[1] = _D0;
  v1[2] = v9;
  v1[3] = 0x3F80000000000000;
  v1[4] = v8;
  v1[5] = 0;
  v1[6] = v7;
  v1[7] = _D0;
  v1[8] = v8;
  v1[9] = 0;
  v1[10] = v6;
  v1[11] = 1065353216;
  v15 = [*(v0 + 16) newBufferWithBytes:v1 length:96 options:0];
  if (v15)
  {
    *(v0 + 104) = v15;
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x19A902C50);
}

uint64_t sub_19A44545C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_19A4454BC()
{
  sub_19A44545C();

  return swift_deallocClassInstance();
}

uint64_t sub_19A445514(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A44557C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A4455C4(uint64_t a1)
{
  v2 = sub_19A5718BC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v73 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v57 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A18);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v57 - v9;
  v11 = sub_19A5718DC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19A57192C();
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_19A57177C();
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!geteuid())
  {
    v59 = v16;
    v60 = v12;
    if (qword_1ED824050 != -1)
    {
      swift_once();
    }

    v20 = sub_19A5723FC();
    __swift_project_value_buffer(v20, qword_1ED82BCF0);
    v21 = sub_19A5723DC();
    v22 = sub_19A57355C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v71 = a1;
      v24 = v19;
      v25 = v11;
      v26 = v7;
      v27 = v2;
      v28 = v23;
      *v23 = 0;
      _os_log_impl(&dword_19A2DE000, v21, v22, "Querying GenerativeModelsAvailability for policies as root user, which may fail", v23, 2u);
      v29 = v28;
      v2 = v27;
      v7 = v26;
      v11 = v25;
      v19 = v24;
      MEMORY[0x19A902C50](v29, -1, -1);
    }

    v16 = v59;
    v12 = v60;
  }

  sub_19A57176C();
  sub_19A57190C();
  sub_19A57189C();
  v30 = v16;
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    (*(v64 + 8))(v16, v65);
    (*(v61 + 8))(v19, v62);
    sub_19A445C70(v10);
  }

  else
  {
    v31 = *(v12 + 32);
    v58 = v11;
    v32 = v31(v63, v10, v11);
    v33 = MEMORY[0x19A8FF440](v32);
    v35 = *(v33 + 16);
    if (v35)
    {
      v59 = v16;
      v60 = v12;
      v38 = *(v3 + 16);
      v36 = v3 + 16;
      v37 = v38;
      v39 = (*(v36 + 64) + 32) & ~*(v36 + 64);
      v57[1] = v33;
      v40 = v33 + v39;
      v41 = *(v36 + 56);
      v70 = (v36 + 16);
      v71 = v41;
      v69 = (v36 - 8);
      *&v34 = 136315138;
      v66 = v34;
      v42 = v73;
      v67 = v36;
      v68 = v7;
      v72 = v19;
      v38(v7, v33 + v39, v2);
      while (1)
      {
        if (qword_1EAF9F208 != -1)
        {
          swift_once();
        }

        v53 = sub_19A5723FC();
        __swift_project_value_buffer(v53, qword_1EAFCA1E8);
        (*v70)(v42, v7, v2);
        v54 = sub_19A5723DC();
        v55 = sub_19A57356C();
        if (os_log_type_enabled(v54, v55))
        {
          v43 = v2;
          v44 = swift_slowAlloc();
          v45 = v37;
          v46 = swift_slowAlloc();
          v74 = v46;
          *v44 = v66;
          v47 = sub_19A5718AC();
          v49 = v48;
          (*v69)(v73, v43);
          v50 = sub_19A31F114(v47, v49, &v74);
          v42 = v73;

          *(v44 + 4) = v50;
          _os_log_impl(&dword_19A2DE000, v54, v55, "GenerativeModelsAvailability indicating additional policy: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          v51 = v46;
          v37 = v45;
          MEMORY[0x19A902C50](v51, -1, -1);
          v52 = v44;
          v2 = v43;
          v7 = v68;
          MEMORY[0x19A902C50](v52, -1, -1);
        }

        else
        {

          (*v69)(v42, v2);
        }

        v19 = v72;
        v40 += v71;
        if (!--v35)
        {
          break;
        }

        v37(v7, v40, v2);
      }

      v30 = v59;
      v12 = v60;
    }

    else
    {
    }

    (*(v12 + 8))(v63, v58);
    (*(v64 + 8))(v30, v65);
    (*(v61 + 8))(v19, v62);
  }

  return 0;
}

uint64_t sub_19A445C70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for AugmentedPrompt()
{
  result = qword_1ED825A48;
  if (!qword_1ED825A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19A445D6C()
{
  result = sub_19A570BEC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19A445DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v4 = v3 - 8;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v28 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = sub_19A570B9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 32);
  v21(v18, v29, v19);
  v21(&v18[*(v4 + 56)], v30, v19);
  v28 = v16;
  sub_19A44B154(v18, v16);
  v30 = *(v4 + 56);
  sub_19A3351B8(v18, v13, &qword_1EAFA0770);
  v22 = *(v4 + 56);
  v21(v10, v16, v19);
  v21(&v10[*(v4 + 56)], &v13[v22], v19);
  sub_19A44B154(v10, v7);
  v23 = *(v4 + 56);
  v21(v31, v7, v19);
  v24 = *(v20 + 8);
  v24(&v7[v23], v19);
  sub_19A3351B8(v10, v7, &qword_1EAFA0770);
  v25 = *(v4 + 56);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v21(&v31[*(v26 + 36)], &v7[v25], v19);
  v24(v7, v19);
  v24(v13, v19);
  return (v24)(&v28[v30], v19);
}

uint64_t sub_19A4460AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - v8;
  v10 = sub_19A570B9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v23);
  v15 = v22 - v14;
  v16 = sub_19A570A9C();
  v17 = sub_19A44B1C4(&qword_1ED825328, MEMORY[0x1E6968678]);
  v24 = v2;
  v22[1] = v17;
  v22[2] = v16;
  sub_19A57341C();
  sub_19A44B1C4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
  result = sub_19A572C1C();
  if (result)
  {
    (*(v11 + 16))(v9, a1, v10);
    v19 = *(v11 + 32);
    v19(&v9[*(v4 + 48)], v13, v10);
    sub_19A44B154(v9, v7);
    v20 = *(v4 + 48);
    v19(v15, v7, v10);
    v21 = *(v11 + 8);
    v21(&v7[v20], v10);
    sub_19A3351B8(v9, v7, &qword_1EAFA0770);
    v19(&v15[*(v23 + 36)], &v7[*(v4 + 48)], v10);
    v21(v7, v10);
    sub_19A57344C();
    return sub_19A2F3FA0(v15, &qword_1EAFA0020);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A4463EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_19A570C7C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_19A570BEC();
  v104 = *(v116 - 8);
  v6 = MEMORY[0x1EEE9AC00](v116);
  v103 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v111 = &v102 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v107 = &v102 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A58);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v117 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v110 = &v102 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A60);
  v15 = MEMORY[0x1EEE9AC00](v114);
  v109 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v106 = &v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102 - v19;
  v134 = sub_19A570B9C();
  v105 = *(v134 - 8);
  v21 = MEMORY[0x1EEE9AC00](v134);
  v120 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v108 = &v102 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v133 = &v102 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v137 = &v102 - v27;
  v139 = sub_19A570B4C();
  v135 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_19A570B2C();
  v29 = *(v119 - 8);
  v30 = MEMORY[0x1EEE9AC00](v119);
  v128 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v124 = &v102 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v102 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v102 - v37;
  v39 = sub_19A570B5C();
  MEMORY[0x1EEE9AC00](v39);
  v127 = v2;
  sub_19A39A7B0(v2, a1);
  v121 = a1;
  sub_19A570B6C();
  v40 = MEMORY[0x1E69687C8];
  sub_19A44B1C4(&qword_1ED825318, MEMORY[0x1E69687C8]);
  v136 = v39;
  sub_19A572FAC();
  sub_19A44B1C4(&qword_1ED825310, v40);
  ++v135;
  v132 = (v29 + 16);
  v123 = (v29 + 32);
  v118 = MEMORY[0x1E69E7CC0];
  v130 = v29;
  v131 = (v29 + 8);
  v129 = v35;
LABEL_2:
  v41 = v128;
  while (1)
  {
    v42 = v138;
    sub_19A57341C();
    sub_19A44B1C4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v43 = v139;
    v44 = sub_19A572C2C();
    (*v135)(v42, v43);
    if (v44)
    {
      break;
    }

    v45 = sub_19A57345C();
    v46 = v129;
    v47 = v119;
    (*v132)(v129);
    v45(&v140, 0);
    sub_19A57342C();
    sub_19A341F7C();
    sub_19A570B3C();
    if (v141)
    {

      v48 = *v123;
      (*v123)(v124, v46, v47);
      v49 = v118;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v142 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_19A322680(0, *(v49 + 16) + 1, 1);
        v49 = v142;
      }

      v52 = *(v49 + 16);
      v51 = *(v49 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_19A322680(v51 > 1, v52 + 1, 1);
        v49 = v142;
      }

      *(v49 + 16) = v52 + 1;
      v53 = (*(v130 + 80) + 32) & ~*(v130 + 80);
      v118 = v49;
      (v48)(v49 + v53 + *(v130 + 72) * v52, v124, v119);
      goto LABEL_2;
    }

    (*v131)(v46, v47);
  }

  sub_19A2F3FA0(v38, &qword_1EAFA0768);
  result = sub_19A570BDC();
  v55 = v118;
  v56 = *(v118 + 16);
  v57 = v134;
  v58 = v119;
  if (v56)
  {
    v129 = (v118 + ((*(v130 + 80) + 32) & ~*(v130 + 80)));
    v59 = (v105 + 16);
    v123 = (v105 + 8);
    v113 = (v105 + 32);
    v112 = (v104 + 8);
    v124 = (v105 + 16);
    v125 = v20;
    v126 = v18;
    while (v56 <= *(v55 + 16))
    {
      v60 = v57;
      --v56;
      (*(v130 + 16))(v41, &v129[*(v130 + 72) * v56], v58);
      sub_19A341F7C();
      sub_19A570B3C();
      if (v141)
      {
        v135 = v141;
        v136 = v56;
        v122 = v140;
        sub_19A570B1C();
        v61 = *v59;
        v62 = v133;
        (*v59)(v133, &v20[*(v18 + 36)], v57);
        sub_19A2F3FA0(v20, &qword_1EAFA0020);
        v63 = sub_19A570B7C();
        v64 = *v123;
        (*v123)(v62, v60);
        v138 = v64;
        v139 = v61;
        if (v63)
        {
          sub_19A570B1C();
          v61(v62, &v20[*(v126 + 36)], v60);
          sub_19A2F3FA0(v20, &qword_1EAFA0020);
          v65 = v110;
          sub_19A449FCC(v62, v110);
          (v64)(v62, v60);
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A68);
          if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
          {
            sub_19A2F3FA0(v65, &qword_1EAFA1A58);
            v62 = v133;
            v20 = v125;
            v64 = v138;
            v61 = v139;
          }

          else
          {
            v67 = v65[*(v66 + 48)];
            v68 = v114;
            v69 = *(v114 + 48);
            v70 = *v113;
            v71 = v106;
            (*v113)(v106, v65, v60);
            v71[v69] = v67;
            v72 = v71[*(v68 + 48)];
            v70(v108, v71, v60);
            if (v72 == 1)
            {
              v140 = 28261;
              v141 = 0xE200000000000000;
              MEMORY[0x19A900A50](8250, 0xE200000000000000);
            }

            sub_19A570C6C();
            v73 = v107;
            sub_19A570BFC();
            sub_19A44B1C4(&qword_1ED825300, MEMORY[0x1E6968848]);
            v74 = v108;
            v75 = v116;
            sub_19A570BCC();
            (*v112)(v73, v75);
            v60 = v134;
            v64 = v138;
            (v138)(v74, v134);
            v62 = v133;
            v20 = v125;
            v61 = v139;
          }
        }

        sub_19A570B1C();
        v61(v62, v20, v60);
        sub_19A2F3FA0(v20, &qword_1EAFA0020);
        v76 = v117;
        sub_19A449FCC(v62, v117);
        (v64)(v62, v60);
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A68);
        if ((*(*(v77 - 8) + 48))(v76, 1, v77) == 1)
        {

          sub_19A2F3FA0(v76, &qword_1EAFA1A58);
          v41 = v128;
          v78 = v138;
          v79 = v139;
          v20 = v125;
          v80 = v60;
          v81 = v119;
        }

        else
        {
          v82 = v76[*(v77 + 48)];
          v83 = v114;
          v84 = *(v114 + 48);
          v85 = *v113;
          v86 = v109;
          (*v113)(v109, v76, v134);
          v86[v84] = v82;
          v87 = v134;
          v88 = v86[*(v83 + 48)];
          v85(v120, v86, v134);
          v89 = v138;
          if ((v88 & 1) != 0 || (v90 = v133, sub_19A570A5C(), sub_19A44B1C4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]), v91 = sub_19A572BFC(), v89(v90, v87), (v91 & 1) == 0))
          {
            v140 = v122;
            v141 = v135;
          }

          else
          {
            v140 = 32;
            v141 = 0xE100000000000000;
            MEMORY[0x19A900A50](v122, v135);
          }

          MEMORY[0x19A900A50](8250, 0xE200000000000000);
          v41 = v128;
          v79 = v139;
          sub_19A570C6C();
          v92 = v111;
          sub_19A570BFC();
          sub_19A44B1C4(&qword_1ED825300, MEMORY[0x1E6968848]);
          v93 = v120;
          v94 = v116;
          sub_19A570BCC();
          (*v112)(v92, v94);
          v80 = v134;
          v89(v93, v134);
          v20 = v125;
          v81 = v119;
          v78 = v89;
        }

        sub_19A570B1C();
        (*v131)(v41, v81);
        v95 = v137;
        v78(v137, v80);
        v59 = v124;
        v79(v95, v20, v80);
        result = sub_19A2F3FA0(v20, &qword_1EAFA0020);
        v55 = v118;
        v57 = v80;
        v18 = v126;
        v58 = v81;
        v56 = v136;
        if (!v136)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = (*v131)(v41, v58);
        if (!v56)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_30:

    v96 = v133;
    sub_19A570A5C();
    sub_19A44B1C4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
    v97 = sub_19A572BFC();
    v98 = *(v105 + 8);
    v98(v96, v57);
    if (v97)
    {
      sub_19A570C6C();
      v99 = v103;
      sub_19A570BFC();
      sub_19A570A5C();
      sub_19A44B1C4(&qword_1ED825300, MEMORY[0x1E6968848]);
      v100 = v116;
      sub_19A570BCC();
      v98(v96, v134);
      v101 = v99;
      v57 = v134;
      (*(v104 + 8))(v101, v100);
    }

    return (v98)(v137, v57);
  }

  return result;
}

uint64_t sub_19A447618()
{
  v24 = sub_19A570BEC();
  v0 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v19 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v23 = sub_19A57112C();
  v12 = *(v23 - 8);
  v13 = *(v12 + 56);
  v21 = v12 + 56;
  v22 = v13;
  v20 = (v9 + 48);
  v18 = (v0 + 8);
  v14 = v19;
  while (1)
  {
    v25 = 0x735C3D3F28735C28;
    v26 = 0xEB000000002B2929;
    v22(v4, 1, 1, v23);
    sub_19A44B1C4(&qword_1ED825300, MEMORY[0x1E6968848]);
    sub_19A2F4450();
    sub_19A570D8C();
    sub_19A2F3FA0(v4, &qword_1EAF9FDC8);
    if ((*v20)(v7, 1, v8) == 1)
    {
      break;
    }

    sub_19A3351B8(v7, v11, &qword_1EAFA0020);
    sub_19A570ACC();
    sub_19A336864();
    v15 = v24;
    sub_19A570AEC();
    (*v18)(v14, v15);
    sub_19A2F3FA0(v11, &qword_1EAFA0020);
  }

  return sub_19A2F3FA0(v7, &qword_1EAFA01D0);
}

BOOL sub_19A4479B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v31 = &v27 - v1;
  v34 = sub_19A570B4C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A570B2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v27 - v8;
  v9 = sub_19A570B5C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  sub_19A570B6C();
  (*(v10 + 16))(v15, v12, v9);
  sub_19A44B1C4(&qword_1ED825310, MEMORY[0x1E69687C8]);
  sub_19A5733DC();
  (*(v10 + 8))(v12, v9);
  ++v32;
  v28 = (v4 + 32);
  v29 = (v4 + 16);
  v27 = (v4 + 8);
  while (1)
  {
    v16 = v33;
    sub_19A57341C();
    sub_19A44B1C4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v17 = v34;
    v18 = sub_19A572C2C();
    (*v32)(v16, v17);
    if (v18)
    {
      break;
    }

    v19 = sub_19A57345C();
    v20 = v30;
    (*v29)(v30);
    v19(&v35, 0);
    sub_19A57342C();
    (*v28)(v7, v20, v3);
    sub_19A342038();
    v21 = v3;
    v22 = v31;
    sub_19A570B3C();
    v23 = sub_19A57102C();
    v24 = (*(*(v23 - 8) + 48))(v22, 1, v23);
    sub_19A2F3FA0(v22, &qword_1EAF9FD80);
    sub_19A378428();
    sub_19A570B3C();
    if (v36)
    {
      (*v27)(v7, v21);
      v3 = v21;
      if (v24 != 1)
      {
        break;
      }
    }

    else
    {
      v25 = v35;
      (*v27)(v7, v21);
      if (v24 != 1)
      {
        break;
      }

      v3 = v21;
      if (v25)
      {
        break;
      }
    }
  }

  sub_19A2F3FA0(v15, &qword_1EAFA0768);
  return (v18 & 1) == 0;
}

void *sub_19A447F04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v45 = &v35 - v1;
  v48 = sub_19A57102C();
  v2 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v40 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_19A570B4C();
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_19A570B2C();
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_19A570B5C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  sub_19A570B6C();
  v37 = v17;
  v38 = v12;
  (*(v12 + 16))(v15, v17, v11);
  v18 = MEMORY[0x1E69687C8];
  sub_19A44B1C4(&qword_1ED825318, MEMORY[0x1E69687C8]);
  sub_19A572FAC();
  sub_19A44B1C4(&qword_1ED825310, v18);
  v19 = (v43 + 1);
  v42 = (v5 + 8);
  v43 = (v5 + 16);
  v20 = (v2 + 48);
  v41 = MEMORY[0x1E69E7CC0];
  v36 = v2;
  v39 = (v2 + 32);
  while (1)
  {
    v21 = v46;
    sub_19A57341C();
    sub_19A44B1C4(&qword_1ED825320, MEMORY[0x1E69687B0]);
    v22 = v47;
    v23 = sub_19A572C2C();
    (*v19)(v21, v22);
    if (v23)
    {
      break;
    }

    v24 = sub_19A57345C();
    v25 = v44;
    (*v43)(v7);
    v24(v49, 0);
    sub_19A57342C();
    sub_19A342038();
    v26 = v45;
    sub_19A570B3C();
    (*v42)(v7, v25);
    if ((*v20)(v26, 1, v48) == 1)
    {
      sub_19A2F3FA0(v26, &qword_1EAF9FD80);
    }

    else
    {
      v27 = *v39;
      (*v39)(v40, v26, v48);
      v28 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_19A31D0E0(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v31 = (v30 + 1);
      if (v30 >= v29 >> 1)
      {
        v41 = (v30 + 1);
        v33 = sub_19A31D0E0(v29 > 1, v30 + 1, 1, v28);
        v31 = v41;
        v28 = v33;
      }

      v28[2] = v31;
      v32 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v41 = v28;
      v27(v28 + v32 + *(v36 + 72) * v30, v40, v48);
    }
  }

  sub_19A2F3FA0(v10, &qword_1EAFA0768);
  (*(v38 + 8))(v37, v11);
  return v41;
}

uint64_t sub_19A448880()
{
  sub_19A44B3B4();

  return sub_19A5709CC();
}

uint64_t sub_19A4488CC()
{
  sub_19A44B3B4();

  return sub_19A5709CC();
}

uint64_t sub_19A448934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000019A59A150 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_19A573F1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_19A4489C8(uint64_t a1)
{
  v2 = sub_19A44B058();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A448A04(uint64_t a1)
{
  v2 = sub_19A44B058();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A448A40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_19A570BEC();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AugmentedPrompt();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A44B058();
  v12 = v19;
  sub_19A57417C();
  if (!v12)
  {
    v13 = v17;
    sub_19A44B0AC();
    sub_19A573C6C();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_19A39A8C4(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A448CA4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v63 = a5;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v9 = MEMORY[0x1EEE9AC00](v54);
  v55 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v50 - v11;
  v12 = sub_19A570BEC();
  v60 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0778);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v50 - v18;
  v20 = sub_19A570B9C();
  v21 = *(v20 - 8);
  v61 = v20;
  v62 = v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v56 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v50 - v24;
  v25 = a1[1];
  if (*a1 >= 0x4000uLL)
  {
    v58 = a1[1];
    sub_19A572E9C();
    if (sub_19A572F6C() == 45 && v32 == 0xE100000000000000)
    {
      goto LABEL_15;
    }

    v33 = sub_19A573F1C();

    v25 = v58;
    if (v33)
    {
      goto LABEL_16;
    }
  }

  v26 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v26 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 >> 14 == 4 * v26)
  {
    goto LABEL_5;
  }

  v51 = v12;
  v34 = v25;
  if (sub_19A572F6C() == 45 && v35 == 0xE100000000000000)
  {
LABEL_15:

    goto LABEL_16;
  }

  v38 = sub_19A573F1C();

  v12 = v51;
  v25 = v34;
  if (v38)
  {
    goto LABEL_16;
  }

LABEL_5:
  v52 = a4;
  v58 = v25;
  v60 = *(v60 + 16);
  (v60)(v14, a4, v12);
  sub_19A44B1C4(&qword_1ED825300, MEMORY[0x1E6968848]);
  sub_19A570BAC();
  v27 = v62;
  v28 = *(v62 + 48);
  v29 = v12;
  v30 = v61;
  if (v28(v19, 1, v61) == 1)
  {
LABEL_8:
    sub_19A2F3FA0(v19, &qword_1EAFA0778);
LABEL_16:
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
    return (*(*(v36 - 8) + 56))(v63, 1, 1, v36);
  }

  v31 = *(v27 + 32);
  v50 = v27 + 32;
  v51 = v31;
  v31(v59, v19, v30);
  (v60)(v14, v52, v29);
  v19 = v57;
  sub_19A570BAC();
  if (v28(v19, 1, v30) == 1)
  {
    (*(v27 + 8))(v59, v30);
    goto LABEL_8;
  }

  v39 = v56;
  v51(v56, v19, v30);
  sub_19A44B1C4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
  v40 = v59;
  result = sub_19A572C1C();
  if (result)
  {
    v41 = v53;
    v42 = v51;
    v51(v53, v40, v30);
    v43 = v54;
    v42(v41 + *(v54 + 48), v39, v30);
    v44 = v55;
    sub_19A44B154(v41, v55);
    v45 = *(v43 + 48);
    v42(v63, v44, v30);
    v46 = *(v62 + 8);
    v46(v44 + v45, v30);
    sub_19A3351B8(v41, v44, &qword_1EAFA0770);
    v47 = *(v43 + 48);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
    v49 = v63;
    v42(v63 + *(v48 + 36), (v44 + v47), v30);
    v46(v44, v30);
    return (*(*(v48 - 8) + 56))(v49, 0, 1, v48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A449358()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v1 = MEMORY[0x1EEE9AC00](v43);
  v38 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v30 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v30 - v4;
  v5 = sub_19A570B9C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = sub_19A570A9C();
  v34 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1090);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v30 - v17;
  v40 = v0;
  sub_19A570A4C();
  sub_19A44B1C4(&qword_1ED825328, MEMORY[0x1E6968678]);
  sub_19A5733DC();
  v41 = v6;
  v44 = (v6 + 8);
  while (1)
  {
    sub_19A57341C();
    sub_19A44B1C4(&qword_1ED825308, MEMORY[0x1E69687E8]);
    v18 = sub_19A572C2C();
    v19 = *v44;
    (*v44)(v11, v5);
    if (v18)
    {
      break;
    }

    v20 = sub_19A57345C();

    (v20)(v45, 0);
    LOBYTE(v20) = sub_19A572B5C();

    if ((v20 & 1) == 0)
    {
      break;
    }

    sub_19A57342C();
  }

  sub_19A5733DC();
  sub_19A44B1C4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
  result = sub_19A572C1C();
  if (result)
  {
    v22 = *(v41 + 32);
    v23 = v36;
    v22(v36, v11, v5);
    v22((v23 + *(v43 + 48)), v13, v5);
    v31 = v22;
    v24 = v38;
    sub_19A44B154(v23, v38);
    v30 = *(v43 + 48);
    v32 = v11;
    v22(v42, v24, v5);
    v19((v24 + v30), v5);
    sub_19A3351B8(v23, v24, &qword_1EAFA0770);
    v25 = v42;
    v31(&v42[*(v39 + 36)], v24 + *(v43 + 48), v5);
    v19(v24, v5);
    v26 = v35;
    sub_19A57344C();
    sub_19A2F3FA0(v25, &qword_1EAFA0020);
    (*(v34 + 8))(v16, v14);
    v27 = *(v41 + 16);
    v28 = v32;
    v27(v32, v26, v5);
    v29 = v37;
    v27(v37, v26 + *(v33 + 36), v5);
    sub_19A445DD8(v28, v29, v25);
    sub_19A336864();
    sub_19A570ADC();
    sub_19A2F3FA0(v25, &qword_1EAFA0020);
    return sub_19A2F3FA0(v26, &qword_1EAFA1090);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A4499BC()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v1;
  v2 = sub_19A570B9C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v50 = &v39 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53 = &v39 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A70);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v41 = &v39 - v15;
  v16 = sub_19A570A9C();
  v40 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1090);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v39 - v19;
  v46 = v0;
  sub_19A570A4C();
  sub_19A44B1C4(&qword_1ED825328, MEMORY[0x1E6968678]);
  sub_19A57341C();
  v20 = (v3 + 8);
  v48 = v3;
  v51 = v16;
  v52 = (v3 + 16);
  while (1)
  {
    v21 = v53;
    sub_19A5733DC();
    v22 = sub_19A44B1C4(&qword_1ED825308, MEMORY[0x1E69687E8]);
    v23 = sub_19A572C2C();
    v24 = *v20;
    (*v20)(v21, v2);
    if (v23)
    {
      v29 = v12;
      v27 = v18;
      goto LABEL_7;
    }

    v49 = v22;
    v25 = v50;
    (*v52)(v50, v12, v2);
    sub_19A44B1C4(&qword_1EAFA1A78, MEMORY[0x1E6968678]);
    sub_19A572BDC();
    v26 = v12;
    v27 = v18;
    v28 = sub_19A57345C();

    (v28)(v54, 0);
    LOBYTE(v28) = sub_19A572B5C();

    if ((v28 & 1) == 0)
    {
      break;
    }

    v24(v25, v2);
    v12 = v26;
  }

  v24(v26, v2);
  v29 = v25;
LABEL_7:
  v30 = v47;
  v31 = *(v48 + 32);
  v31(v47, v29, v2);
  result = sub_19A572C2C();
  if (result)
  {
    v33 = v41;
    v31(v41, v30, v2);
    v34 = v42;
    sub_19A4460AC(v33, v42);
    sub_19A2F3FA0(v33, &qword_1EAFA1A70);
    (*(v40 + 8))(v27, v51);
    v35 = v53;
    v36 = *v52;
    (*v52)(v53, v34, v2);
    v37 = v43;
    v36(v43, (v34 + *(v39 + 36)), v2);
    v38 = v44;
    sub_19A445DD8(v35, v37, v44);
    sub_19A336864();
    sub_19A570ADC();
    sub_19A2F3FA0(v38, &qword_1EAFA0020);
    return sub_19A2F3FA0(v34, &qword_1EAFA1090);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19A449FCC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v69 = sub_19A570A9C();
  v76 = *(v69 - 8);
  v5 = MEMORY[0x1EEE9AC00](v69);
  v78 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v65 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0778);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v74 = v65 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  v11 = MEMORY[0x1EEE9AC00](v84);
  v71 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v65 - v13;
  v15 = sub_19A570B9C();
  v80 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v68 = v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v77 = v65 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v65 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v75 = v65 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v65 - v25;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  MEMORY[0x1EEE9AC00](v70);
  v79 = v65 - v27;
  v28 = sub_19A570CEC();
  v72 = *(v28 - 8);
  v73 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v81 = v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_19A570BEC();
  v31 = sub_19A44B1C4(&qword_1ED825300, MEMORY[0x1E6968848]);
  v83 = v3;
  if (sub_19A570B8C())
  {
    sub_19A570BDC();
    sub_19A44B1C4(&qword_1EAF9F8E8, MEMORY[0x1E69687E8]);
    result = sub_19A572C1C();
    if (result)
    {
      v65[0] = v31;
      v65[1] = v30;
      v33 = v80;
      v34 = *(v80 + 16);
      v65[2] = a1;
      v34(v14, a1, v15);
      v35 = v71;
      v36 = v84;
      v37 = *(v33 + 32);
      v37(&v14[*(v84 + 48)], v26, v15);
      sub_19A44B154(v14, v35);
      v38 = *(v36 + 48);
      v37(v79, v35, v15);
      v85 = *(v33 + 8);
      v85(v35 + v38, v15);
      sub_19A3351B8(v14, v35, &qword_1EAFA0770);
      v39 = v79;
      v40 = &v79[*(v70 + 36)];
      v41 = v35 + *(v84 + 48);
      v67 = v33 + 32;
      v66 = v37;
      v37(v40, v41, v15);
      v42 = v85;
      v85(v35, v15);
      sub_19A336864();
      sub_19A570C3C();
      sub_19A2F3FA0(v39, &qword_1EAFA0020);
      sub_19A570CCC();
      sub_19A44B1C4(&qword_1ED825328, MEMORY[0x1E6968678]);
      v43 = v69;
      sub_19A5733DC();
      sub_19A57341C();
      sub_19A44B1C4(&qword_1ED825308, MEMORY[0x1E69687E8]);
      LOBYTE(v35) = sub_19A572C2C();
      v84 = v33 + 8;
      v42(v26, v15);
      if ((v35 & 1) == 0)
      {
        do
        {
          v53 = sub_19A57345C();

          v53(v86, 0);
          if (sub_19A572B6C())
          {
          }

          else
          {
            v54 = sub_19A572B5C();

            if ((v54 & 1) == 0)
            {
              v44 = *(v76 + 8);
              v44(v8, v43);
              v46 = v74;
              v66(v74, v22, v15);
              v45 = 0;
              goto LABEL_5;
            }
          }

          sub_19A57342C();
          sub_19A57341C();
          v52 = sub_19A572C2C();
          v85(v26, v15);
        }

        while ((v52 & 1) == 0);
      }

      v85(v22, v15);
      v44 = *(v76 + 8);
      v44(v8, v43);
      v45 = 1;
      v46 = v74;
LABEL_5:
      v47 = v80;
      (*(v80 + 56))(v46, v45, 1, v15);
      v48 = (*(v47 + 48))(v46, 1, v15);
      v49 = v82;
      v50 = v78;
      if (v48 == 1)
      {
        (*(v72 + 8))(v81, v73);
        sub_19A2F3FA0(v46, &qword_1EAFA0778);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A68);
        return (*(*(v51 - 8) + 56))(v49, 1, 1, v51);
      }

      else
      {
        v66(v75, v46, v15);
        sub_19A570CCC();
        sub_19A570A8C();
        v44(v50, v43);
        sub_19A570A4C();
        sub_19A570A7C();
        v44(v50, v43);
        v59 = v68;
        sub_19A570D7C();
        if (sub_19A570B8C())
        {
          sub_19A570A4C();
          sub_19A570AAC();
          v44(v50, v43);
          v60 = sub_19A572B5C();
        }

        else
        {
          v60 = 0;
        }

        v61 = v85;
        v85(v59, v15);
        v61(v75, v15);
        (*(v72 + 8))(v81, v73);
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A68);
        v63 = *(v62 + 48);
        v64 = v82;
        v66(v82, v77, v15);
        v64[v63] = v60 & 1;
        return (*(*(v62 - 8) + 56))(v64, 0, 1, v62);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A68);
    v56 = *(*(v55 - 8) + 56);
    v57 = v55;
    v58 = v82;

    return v56(v58, 1, 1, v57);
  }

  return result;
}

uint64_t sub_19A44AB00()
{
  v0 = sub_19A570A9C();
  MEMORY[0x1EEE9AC00](v0);
  sub_19A570A4C();
  sub_19A44B1C4(&qword_1ED825330, MEMORY[0x1E6968678]);
  return sub_19A572F7C();
}

uint64_t sub_19A44ABC0()
{
  sub_19A5740BC();
  sub_19A570BEC();
  sub_19A44B1C4(&qword_1EAFA1A40, MEMORY[0x1E6968848]);
  sub_19A572B4C();
  return sub_19A57410C();
}

uint64_t sub_19A44AC48()
{
  sub_19A570BEC();
  sub_19A44B1C4(&qword_1EAFA1A40, MEMORY[0x1E6968848]);

  return sub_19A572B4C();
}

uint64_t sub_19A44ACCC()
{
  sub_19A5740BC();
  sub_19A570BEC();
  sub_19A44B1C4(&qword_1EAFA1A40, MEMORY[0x1E6968848]);
  sub_19A572B4C();
  return sub_19A57410C();
}

uint64_t sub_19A44AD68(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1A50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A44B058();
  sub_19A5741AC();
  sub_19A570BEC();
  sub_19A44B100();
  sub_19A573DBC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_19A44AF14()
{
  result = qword_1EAFA1A28;
  if (!qword_1EAFA1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A28);
  }

  return result;
}

unint64_t sub_19A44AFB0()
{
  result = qword_1EAFA1A30;
  if (!qword_1EAFA1A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A30);
  }

  return result;
}

unint64_t sub_19A44B004()
{
  result = qword_1EAFA1A38;
  if (!qword_1EAFA1A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A38);
  }

  return result;
}

unint64_t sub_19A44B058()
{
  result = qword_1ED824990;
  if (!qword_1ED824990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824990);
  }

  return result;
}

unint64_t sub_19A44B0AC()
{
  result = qword_1ED8249A0;
  if (!qword_1ED8249A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8249A0);
  }

  return result;
}

unint64_t sub_19A44B100()
{
  result = qword_1ED824998;
  if (!qword_1ED824998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824998);
  }

  return result;
}

uint64_t sub_19A44B154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A44B1C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_19A44B250()
{
  result = qword_1EAFA1A80;
  if (!qword_1EAFA1A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A80);
  }

  return result;
}

unint64_t sub_19A44B2B0()
{
  result = qword_1ED824980;
  if (!qword_1ED824980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824980);
  }

  return result;
}

unint64_t sub_19A44B308()
{
  result = qword_1ED824988;
  if (!qword_1ED824988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED824988);
  }

  return result;
}

unint64_t sub_19A44B360()
{
  result = qword_1EAFA1A88;
  if (!qword_1EAFA1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A88);
  }

  return result;
}

unint64_t sub_19A44B3B4()
{
  result = qword_1ED8249A8;
  if (!qword_1ED8249A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8249A8);
  }

  return result;
}

unint64_t sub_19A44B408()
{
  result = qword_1EAFA1A90;
  if (!qword_1EAFA1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A90);
  }

  return result;
}

unint64_t sub_19A44B45C()
{
  result = qword_1EAFA1A98;
  if (!qword_1EAFA1A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1A98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PixelBufferDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PixelBufferDescriptor(uint64_t result, int a2, int a3)
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_19A44B528()
{
  v1 = *(v0 + 16);
  v5 = sub_19A573EDC();
  MEMORY[0x19A900A50](2127904, 0xE300000000000000);
  v2 = sub_19A573EDC();
  MEMORY[0x19A900A50](v2);

  MEMORY[0x19A900A50](32, 0xE100000000000000);
  v3 = sub_19A474A3C(v1);
  MEMORY[0x19A900A50](v3);

  return v5;
}

uint64_t sub_19A44B5F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v8 = *v1;
  v7 = v1[1];
  v14 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A44BB70();
  sub_19A5741AC();
  v12 = v8;
  v13 = v7;
  v15 = 0;
  sub_19A44BC18();
  v9 = v11[1];
  sub_19A573E7C();
  if (!v9)
  {
    LOBYTE(v12) = 1;
    sub_19A573E9C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_19A44B79C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A44BB70();
  sub_19A57417C();
  if (!v2)
  {
    v14 = 0;
    sub_19A44BBC4();
    sub_19A573D4C();
    v9 = v13[0];
    v10 = v13[1];
    LOBYTE(v13[0]) = 1;
    v11 = sub_19A573D6C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_19A44B95C()
{
  if (*v0)
  {
    return 0x726F466C65786970;
  }

  else
  {
    return 0x6F69736E656D6964;
  }
}

uint64_t sub_19A44B9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL;
  if (v6 || (sub_19A573F1C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEF6570795474616DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_19A573F1C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_19A44BA94(uint64_t a1)
{
  v2 = sub_19A44BB70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A44BAD0(uint64_t a1)
{
  v2 = sub_19A44BB70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_19A44BB70()
{
  result = qword_1EAFA1AA8;
  if (!qword_1EAFA1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1AA8);
  }

  return result;
}

unint64_t sub_19A44BBC4()
{
  result = qword_1EAF9ECD8;
  if (!qword_1EAF9ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9ECD8);
  }

  return result;
}

unint64_t sub_19A44BC18()
{
  result = qword_1EAF9F6F0;
  if (!qword_1EAF9F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F6F0);
  }

  return result;
}

unint64_t sub_19A44BC80()
{
  result = qword_1EAFA1AB8;
  if (!qword_1EAFA1AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1AB8);
  }

  return result;
}

unint64_t sub_19A44BCD8()
{
  result = qword_1EAFA1AC0;
  if (!qword_1EAFA1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1AC0);
  }

  return result;
}

unint64_t sub_19A44BD30()
{
  result = qword_1EAFA1AC8;
  if (!qword_1EAFA1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1AC8);
  }

  return result;
}

uint64_t type metadata accessor for SmileyAnalyzer.ClassifierState()
{
  result = qword_1EAF9F778;
  if (!qword_1EAF9F778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A44BE08()
{
  sub_19A57112C();
  if (v0 <= 0x3F)
  {
    sub_19A44BEA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_19A44BEA4()
{
  if (!qword_1EAF9F1B8)
  {
    sub_19A57207C();
    v0 = sub_19A57378C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF9F1B8);
    }
  }
}

uint64_t sub_19A44BF0C(uint64_t a1)
{
  v2 = sub_19A44C220();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A44BF48(uint64_t a1)
{
  v2 = sub_19A44C220();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A44BF84@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A44C220();
  sub_19A57417C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v9 = sub_19A573D0C();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v9 & 1;
  return result;
}

uint64_t sub_19A44C0E8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A44C220();
  sub_19A5741AC();
  sub_19A573E3C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_19A44C220()
{
  result = qword_1ED8249C0;
  if (!qword_1ED8249C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8249C0);
  }

  return result;
}

uint64_t sub_19A44C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a5;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9 = sub_19A57203C();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  v10 = sub_19A57205C();
  *(v7 + 88) = v10;
  *(v7 + 96) = *(v10 - 8);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = *a6;
  *(v7 + 160) = *(a6 + 16);

  return MEMORY[0x1EEE6DFA0](sub_19A44C3AC, 0, 0);
}

uint64_t sub_19A44C3AC()
{
  v19 = v0;
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 48);
  v17 = *(v0 + 32);
  v4 = **(v0 + 56);
  v5 = swift_task_alloc();
  v6 = *(v0 + 160);
  *(v5 + 16) = v3;
  *(v5 + 24) = v17;
  *(v5 + 40) = v2;
  *(v5 + 48) = v1;
  *(v5 + 56) = v6;
  v7 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v4 + v8));
  sub_19A44D4F4((v4 + v7), &v18);
  os_unfair_lock_unlock((v4 + v8));
  v9 = v18;
  *(v0 + 128) = v18;

  if (v9)
  {
    v10 = sub_19A572DCC();
    v12 = v11;
    *(v0 + 136) = v11;
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_19A44C590;
    v14 = *(v0 + 104);

    return MEMORY[0x1EEE33C40](v14, v10, v12);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15(0);
  }
}

uint64_t sub_19A44C590()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_19A44C7CC;
  }

  else
  {

    v2 = sub_19A44C6AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A44C6AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = sub_19A57204C();
  (*(v6 + 104))(v4, *MEMORY[0x1E69CA6B0], v5);
  v8 = sub_19A41F1F0(v4, v7);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8 & 1);
}

uint64_t sub_19A44C7CC()
{

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = sub_19A5723FC();
  __swift_project_value_buffer(v2, qword_1ED82BCF0);
  v3 = v1;
  v4 = sub_19A5723DC();
  v5 = sub_19A57355C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 152);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_19A2DE000, v4, v5, "Error invoking SmileyClassifier: %@. Proceeding with the sequence without Smiley.", v8, 0xCu);
    sub_19A2F3FA0(v9, &qword_1EAF9FD28);
    MEMORY[0x19A902C50](v9, -1, -1);
    MEMORY[0x19A902C50](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t sub_19A44C998@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v103 = a8;
  v96 = a7;
  v97 = a5;
  v98 = a6;
  v106 = a3;
  v101 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = &v86 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1028);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v86 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FDC8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v90 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v93 = &v86 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86 - v20;
  v22 = sub_19A57112C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v95 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v88 = &v86 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v86 - v28;
  sub_19A33546C(a2, v21, &qword_1EAF9FDC8);
  v30 = *(v23 + 48);
  v31 = v30(v21, 1, v22);
  v100 = a4;
  v109 = v23;
  if (v31 == 1)
  {
    sub_19A474D68(v29);
    v32 = v22;
    if (v30(v21, 1, v22) != 1)
    {
      sub_19A2F3FA0(v21, &qword_1EAF9FDC8);
    }
  }

  else
  {
    v32 = v22;
    (*(v23 + 32))(v29, v21, v22);
  }

  v107 = v32;
  v108 = v29;
  v33 = type metadata accessor for SmileyAnalyzer.ClassifierState();
  v94 = *(v33 - 1);
  v34 = *(v94 + 48);
  v35 = v94 + 48;
  v36 = 1;
  v37 = v101;
  v38 = v34(v101, 1, v33);
  v105 = v34;
  if (!v38)
  {
    if (v89 = v35, *v37 == v106) && *(v37 + 1) == v100 || (sub_19A573F1C())
    {
      v39 = v34(v37, 1, v33);
      v87 = v33;
      if (v39)
      {
        v40 = v109;
        v41 = *(v109 + 56);
        v42 = v107;
        v41(v99, 1, 1, v107);
        v43 = *(v40 + 16);
      }

      else
      {
        v44 = v33[5];
        v45 = v109;
        v43 = *(v109 + 16);
        v46 = v99;
        v42 = v107;
        v43(v99, &v37[v44], v107);
        v41 = *(v45 + 56);
        v41(v46, 0, 1, v42);
      }

      v47 = v93;
      v43(v93, v108, v42);
      v41(v47, 0, 1, v42);
      v48 = v92;
      v49 = *(v91 + 48);
      sub_19A33546C(v99, v92, &qword_1EAF9FDC8);
      v91 = v49;
      sub_19A33546C(v47, v48 + v49, &qword_1EAF9FDC8);
      if (v30(v48, 1, v42) == 1)
      {
        sub_19A2F3FA0(v47, &qword_1EAF9FDC8);
        sub_19A2F3FA0(v99, &qword_1EAF9FDC8);
        v50 = v30((v48 + v91), 1, v42);
        v33 = v87;
        if (v50 == 1)
        {
          sub_19A2F3FA0(v48, &qword_1EAF9FDC8);
          v34 = v105;
          v51 = v105(v37, 1, v33);
          goto LABEL_20;
        }
      }

      else
      {
        v52 = v90;
        sub_19A33546C(v48, v90, &qword_1EAF9FDC8);
        v53 = v91;
        if (v30((v48 + v91), 1, v42) != 1)
        {
          v54 = v48;
          v55 = v109;
          v56 = v54 + v53;
          v57 = v88;
          (*(v109 + 32))(v88, v56, v42);
          sub_19A4170CC();
          LODWORD(v91) = sub_19A572C2C();
          v58 = *(v55 + 8);
          v58(v57, v42);
          sub_19A2F3FA0(v93, &qword_1EAF9FDC8);
          sub_19A2F3FA0(v99, &qword_1EAF9FDC8);
          v58(v52, v42);
          sub_19A2F3FA0(v54, &qword_1EAF9FDC8);
          v34 = v105;
          v33 = v87;
          if ((v91 & 1) == 0)
          {
            v36 = 1;
            goto LABEL_29;
          }

          v51 = v105(v37, 1, v87);
LABEL_20:
          if (v51)
          {
            v59 = 0;
            v60 = v98;
            if (v98 == 1)
            {
LABEL_22:

              sub_19A334804(v59, 1);
              v36 = 0;
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          v61 = &v37[v33[6]];
          v59 = *v61;
          v62 = *(v61 + 1);
          v64 = *(v61 + 4);
          v63 = *(v61 + 5);

          v60 = v98;
          if (v62 == 1)
          {
            v34 = v105;
            if (v98 == 1)
            {
              goto LABEL_22;
            }

LABEL_25:

            v62 = 1;
LABEL_26:
            v65 = v97;
            sub_19A334804(v59, v62);
            sub_19A334804(v65, v60);
            goto LABEL_27;
          }

          if (v98 == 1)
          {

            sub_19A332C58(v59, v62);

            goto LABEL_26;
          }

          if (v62)
          {
            if (v98)
            {
              if (v59 != v97 || v62 != v98)
              {
                v82 = v97;
                LODWORD(v99) = sub_19A573F1C();

                sub_19A332C58(v59, v62);
                v83 = v82;
                v84 = v96;
                sub_19A334804(v83, v60);
                v36 = 1;
                if ((v99 & 1) == 0 || v64 != v84)
                {
                  goto LABEL_59;
                }

                goto LABEL_57;
              }

              v78 = v97;
              sub_19A332C58(v97, v60);
              v79 = v60;
              goto LABEL_56;
            }

            sub_19A332C58(v59, v62);
            v80 = v97;
            v81 = 0;
          }

          else
          {
            if (!v98)
            {
              sub_19A332C58(v59, 0);
              v79 = 0;
              v78 = v97;
LABEL_56:
              v85 = v96;
              sub_19A334804(v78, v79);
              if (v64 == v85)
              {
LABEL_57:
                v36 = ((v63 << 32) ^ v96) >> 32 != 0;
LABEL_59:

                sub_19A334804(v59, v62);
                goto LABEL_28;
              }

LABEL_58:
              v36 = 1;
              goto LABEL_59;
            }

            sub_19A332C58(v59, 0);
            v80 = v97;
            v81 = v60;
          }

          sub_19A334804(v80, v81);
          goto LABEL_58;
        }

        sub_19A2F3FA0(v93, &qword_1EAF9FDC8);
        sub_19A2F3FA0(v99, &qword_1EAF9FDC8);
        (*(v109 + 8))(v52, v42);
        v33 = v87;
      }

      sub_19A2F3FA0(v48, &qword_1EAFA1028);
LABEL_27:
      v36 = 1;
LABEL_28:
      v34 = v105;
    }
  }

LABEL_29:
  v66 = v102;
  sub_19A33546C(v37, v102, &qword_1EAFA1AE0);
  v67 = v34(v66, 1, v33);
  sub_19A2F3FA0(v66, &qword_1EAFA1AE0);
  if (v67 == 1 || v36)
  {
    v68 = v96;
    v69 = HIDWORD(v96);
    (*(v109 + 16))(v95, v108, v107);
    sub_19A57207C();
    swift_allocObject();
    v70 = v100;

    v71 = v104;
    v72 = sub_19A57202C();
    if (v71)
    {

      v73 = 0;
    }

    else
    {
      v73 = v72;
    }

    v74 = v98;
    sub_19A2F3FA0(v37, &qword_1EAFA1AE0);
    v75 = v107;
    *v37 = v106;
    *(v37 + 1) = v70;
    (*(v109 + 32))(&v37[v33[5]], v108, v75);
    v76 = &v37[v33[6]];
    *v76 = v97;
    *(v76 + 1) = v74;
    *(v76 + 4) = v68;
    *(v76 + 5) = v69;
    *&v37[v33[7]] = v73;
    (*(v94 + 56))(v37, 0, 1, v33);
  }

  else
  {
    (*(v109 + 8))(v108, v107);
  }

  if (v105(v37, 1, v33))
  {
    result = 0;
  }

  else
  {
  }

  *v103 = result;
  return result;
}

unint64_t sub_19A44D52C()
{
  result = qword_1EAFA1AE8;
  if (!qword_1EAFA1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1AE8);
  }

  return result;
}

unint64_t sub_19A44D584()
{
  result = qword_1ED8249B0;
  if (!qword_1ED8249B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8249B0);
  }

  return result;
}

unint64_t sub_19A44D5DC()
{
  result = qword_1ED8249B8;
  if (!qword_1ED8249B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8249B8);
  }

  return result;
}

uint64_t _prewarmDependencies(onBehalfOf:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 120) = *(a2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_19A44D658, 0, 0);
}

uint64_t sub_19A44D658()
{
  v1 = sub_19A57231C();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v0[5] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v3 = sub_19A57236C();
  __swift_project_value_buffer(v3, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v4 = sub_19A57234C();
  v5 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v4, v5, v7, "prewarmDependencies", "", v6, 2u);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  swift_task_alloc();
  (*(v2 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[6] = sub_19A5723AC();

  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_19A44D8A4;

  return sub_19A2ED928();
}

uint64_t sub_19A44D8A4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_19A44DB94;
  }

  else
  {
    v2 = sub_19A44D9B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A44D9B8()
{
  v1 = *(v0 + 64);
  type metadata accessor for AppleDiffusionResourceFactory(0);
  *(v0 + 72) = static AppleDiffusionResourceFactory.shared(reset:)(0);
  if (v1)
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    sub_19A44DEFC("prewarmDependencies", 19, 2);

    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    *(v0 + 80) = sub_19A3A5C28(*(v0 + 120));
    v2 = sub_19A44F978();
    *(v0 + 88) = v2;
    v8 = *(*(v2 + 16) + 16);
    os_unfair_lock_lock((v8 + 24));
    *(v0 + 96) = *(v8 + 16);

    os_unfair_lock_unlock((v8 + 24));
    if (qword_1EAF9F448 != -1)
    {
      swift_once();
    }

    v9 = qword_1EAF9F450;
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = sub_19A44DC48;

    return MEMORY[0x1EEDE7348](v9);
  }
}

uint64_t sub_19A44DB94()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_19A44DEFC("prewarmDependencies", 19, 2);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A44DC48()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_19A44DE24;
  }

  else
  {

    v2 = sub_19A44DD64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A44DD64()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  *v5 = *(v0 + 72);
  *(v5 + 16) = v1;
  sub_19A44DEFC("prewarmDependencies", 19, 2);

  (*(v4 + 8))(v2, v3);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_19A44DE24()
{

  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  sub_19A44DEFC("prewarmDependencies", 19, 2);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A44DEFC(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A44E204()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];
  v3 = sub_19A572CFC();
  v5 = v4;

  LODWORD(v2) = [v1 processIdentifier];
  v6 = getuid();

  *(v0 + 16) = v3;
  *(v0 + 24) = v5;
  *(v0 + 32) = v2;
  *(v0 + 36) = v6;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_19A44E328;
  v8 = *(v0 + 40);

  return _prewarmDependencies(onBehalfOf:)(v8, v0 + 16);
}

uint64_t sub_19A44E328()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A34E940, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t _prewarmDependencies()()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_19A44E518;

  return _prewarmDependencies()(v0 + 80);
}

uint64_t sub_19A44E518()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v5 = *(v2 + 80);
    if (v5)
    {
      *(v2 + 72) = &type metadata for PrewarmedDependencies;
      *(v2 + 48) = v5;
      *(v2 + 56) = *(v2 + 88);
      sub_19A3355EC((v2 + 48), (v2 + 16));
    }

    else
    {
      *(v2 + 16) = 0u;
      *(v2 + 32) = 0u;
    }

    sub_19A40EBE4(v2 + 16);
    v4 = *(v3 + 8);
  }

  return v4();
}

uint64_t sub_19A44E660(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_19A44E6A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CGColorRef sub_19A44E6F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    return CGColorCreateGenericRGB(*&a1, *&a2, *&a3, 1.0);
  }

  v4 = a3 | a2;
  if (!(a3 | a2 | a1))
  {
    v5 = 0.0;
    goto LABEL_11;
  }

  if (a1 != 1 || v4)
  {
    if (a1 == 2 && !v4)
    {
      v5 = 0.5;
      v7 = 0.5;
LABEL_16:
      v8 = 0.5;
      v6 = 1.0;
      return CGColorCreateGenericRGB(v5, v7, v8, v6);
    }

    if (a1 == 3 && !v4)
    {
      v5 = 0.667;
      goto LABEL_6;
    }

    if (a1 == 4 && !v4)
    {
      v5 = 1.0;
LABEL_23:
      v7 = 1.0;
LABEL_24:
      v8 = 1.0;
      v6 = 1.0;
      return CGColorCreateGenericRGB(v5, v7, v8, v6);
    }

    if (a1 != 5 || v4)
    {
      if (a1 != 6 || v4)
      {
        if (a1 == 7 && !v4)
        {
          v5 = 0.0;
          v7 = 0.0;
          goto LABEL_24;
        }

        if (a1 == 8 && !v4)
        {
          v5 = 0.0;
          goto LABEL_23;
        }

        if (a1 != 9 || v4)
        {
          if (a1 == 10 && !v4)
          {
            v5 = 1.0;
            v7 = 0.0;
            goto LABEL_24;
          }

          if (a1 != 11 || v4)
          {
            if (a1 != 12 || v4)
            {
              return CGColorCreateGenericRGB(0.6, 0.4, 0.2, 1.0);
            }

            v5 = 0.5;
            v7 = 0.0;
            goto LABEL_16;
          }

          v5 = 1.0;
          v7 = 0.5;
        }

        else
        {
          v5 = 1.0;
          v7 = 1.0;
        }
      }

      else
      {
        v5 = 0.0;
        v7 = 1.0;
      }

LABEL_12:
      v8 = 0.0;
      v6 = 1.0;
      return CGColorCreateGenericRGB(v5, v7, v8, v6);
    }

    v5 = 1.0;
LABEL_11:
    v7 = 0.0;
    goto LABEL_12;
  }

  v5 = 0.333;
LABEL_6:
  v6 = 1.0;
  v7 = v5;
  v8 = v5;
  return CGColorCreateGenericRGB(v5, v7, v8, v6);
}

void sub_19A44E888()
{
  *&xmmword_1EAFCA2B0 = CGRectMake();
  *(&xmmword_1EAFCA2B0 + 1) = v0;
  qword_1EAFCA2C0 = v1;
  unk_1EAFCA2C8 = v2;
  byte_1EAFCA2D0 = 1;
}

void sub_19A44E8B8(const __CFAttributedString *a1@<X0>, void *a2@<X8>)
{
  sub_19A44EDEC(v8);
  v4 = v8[0];
  v5 = v8[1];
  v6 = CTFramesetterCreateWithAttributedString(a1);
  v9.length = [(__CFAttributedString *)a1 length];
  v9.location = 0;
  v10.width = v4;
  v10.height = v5;
  v7 = CTFramesetterSuggestFrameSizeWithConstraints(v6, v9, 0, v10, 0);

  if (v7.width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7.width >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((*&v7.width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v7.height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v7.height <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7.height < 9.22337204e18)
  {
    *a2 = v7.width;
    a2[1] = v7.height;
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_19A44E9E0(const __CFAttributedString *a1, uint64_t a2, uint64_t a3, char a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *(v4 + 32);
  CGContextSaveGState(v7);
  sub_19A44EDEC(&v14);
  v8 = v14;
  v9 = v15;
  v10 = CTFramesetterCreateWithAttributedString(a1);
  v21.length = [(__CFAttributedString *)a1 length];
  fitRange.location = 0;
  fitRange.length = v21.length;
  v21.location = 0;
  v22.width = v8;
  v22.height = v9;
  CTFramesetterSuggestFrameSizeWithConstraints(v10, v21, 0, v22, &fitRange);
  if ((a4 & 1) != 0 && !*(*(v4 + 40) + 16))
  {
    __break(1u);
  }

  Mutable = CGPathCreateMutable();
  v14 = 0x3FF0000000000000;
  v15 = 0;
  v16 = 0;
  v17 = 0x3FF0000000000000;
  v18 = 0;
  v19 = 0;
  sub_19A5735AC();
  Frame = CTFramesetterCreateFrame(v10, fitRange, Mutable, 0);
  CTFrameDraw(Frame, v7);

  CGContextRestoreGState(v7);
}

void sub_19A44EB8C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_19A572CCC();
  v17 = [objc_opt_self() filterWithName_];

  if (v17)
  {
    v8 = sub_19A572CCC();
    [v17 setValue:a1 forKey:v8];

    v9 = [objc_allocWithZone(MEMORY[0x1E695F688]) initWithX:0.0 Y:0.0 Z:0.0 W:a3];
    v10 = sub_19A572CCC();
    [v17 setValue:v9 forKey:v10];

    v11 = [v17 outputImage];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
      [v12 extent];
      v14 = [v13 createCGImage:v12 fromRect:?];

      if (v14)
      {
        if ((*(a2 + 32) & 1) != 0 && !*(*(v3 + 40) + 16))
        {
          __break(1u);
          return;
        }

        sub_19A5734CC();

        v15 = v12;
        v12 = v14;
      }

      else
      {
        v15 = v17;
      }

      v16 = v12;
    }

    else
    {
      v16 = v17;
    }
  }
}

size_t sub_19A44EDEC@<X0>(size_t *a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = *(v1 + 32);
    Width = CGBitmapContextGetWidth(v3);
    result = CGBitmapContextGetHeight(v3);
    *(v1 + 48) = Width;
    *(v1 + 56) = result;
    *(v1 + 64) = 0;
  }

  else
  {
    Width = *(v1 + 48);
    result = *(v1 + 56);
  }

  *a1 = Width;
  a1[1] = result;
  return result;
}

uint64_t sub_19A44EE48()
{

  return swift_deallocClassInstance();
}

uint64_t initializeBufferWithCopyOfBuffer for Canvas.Color(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for Canvas.Color(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Canvas.Color(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_19A44EF30(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A44EF4C(uint64_t result, int a2)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 24) = 1;
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

CGColorSpace *sub_19A44EF80(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695F620]) initWithOptions_];
  [a1 extent];
  v3 = [v2 createCGImage:a1 fromRect:?];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  Width = CGImageGetWidth(v3);
  Height = CGImageGetHeight(v4);
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (!result)
  {
LABEL_6:

    return 0;
  }

  if ((Width - 0x2000000000000000) >> 62 == 3)
  {
    v8 = result;
    v9 = __CGBitmapContextCreate(Width, Height, 4 * Width, result);

    if (v9)
    {
      sub_19A5734CC();
      type metadata accessor for Canvas();
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 1;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 1;
      *(v10 + 32) = v9;
      v11 = v9;
      v12 = CGBitmapContextGetWidth(v11);
      v13 = CGBitmapContextGetHeight(v11);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF40);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_19A576E10;
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = v12;
      *(v14 + 56) = v13;

      result = v10;
      *(v10 + 40) = v14;
      return result;
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_19A44F184(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, CGFloat a6)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  if (v13)
  {
    if ((v11 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
LABEL_8:
      __break(1u);
      return;
    }

    v14 = v13;
    v15 = __CGBitmapContextCreate(v11, v12, 4 * v11, v13);

    if (v15)
    {
      v16 = sub_19A44E6F8(a2, a3, a4, a5 & 1);
      CopyWithAlpha = CGColorCreateCopyWithAlpha(v16, a6);

      if (CopyWithAlpha)
      {
        CGContextSetFillColorWithColor(v15, CopyWithAlpha);

        v23.size.width = v11;
        v23.size.height = v12;
        v23.origin.x = 0.0;
        v23.origin.y = 0.0;
        CGContextFillRect(v15, v23);
        type metadata accessor for Canvas();
        v18 = swift_allocObject();
        *(v18 + 16) = 0;
        *(v18 + 24) = 1;
        *(v18 + 48) = 0;
        *(v18 + 56) = 0;
        *(v18 + 64) = 1;
        *(v18 + 32) = v15;
        v19 = v15;
        Width = CGBitmapContextGetWidth(v19);
        Height = CGBitmapContextGetHeight(v19);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF40);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_19A576E10;
        *(v22 + 32) = 0;
        *(v22 + 40) = 0;
        *(v22 + 48) = Width;
        *(v22 + 56) = Height;
        *(v18 + 40) = v22;
        return;
      }

      goto LABEL_8;
    }
  }
}

id sub_19A44F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a6)
  {
    v12 = 12.0;
  }

  else
  {
    v12 = *&a5;
  }

  v13 = sub_19A572CCC();

  v14 = CTFontCreateWithName(v13, v12, 0);

  v15 = sub_19A572CCC();
  v34.length = CFStringGetLength(v15);
  v34.location = 0;
  v16 = CTFontCreateForString(v14, v15, v34);

  v17 = sub_19A44E6F8(a7, a8, a9, a10 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A5792A0;
  v19 = *MEMORY[0x1E69659D8];
  *(inited + 32) = *MEMORY[0x1E69659D8];
  type metadata accessor for CGColor(0);
  *(inited + 40) = v17;
  v20 = *MEMORY[0x1E6965A58];
  *(inited + 64) = v21;
  *(inited + 72) = v20;
  *(inited + 80) = v17;
  v22 = *MEMORY[0x1E6965658];
  *(inited + 104) = v21;
  *(inited + 112) = v22;
  type metadata accessor for CTFont(0);
  *(inited + 144) = v23;
  *(inited + 120) = v16;
  v24 = v17;
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v16;
  sub_19A3306DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FF50);
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x1E696AD40]);
  v30 = sub_19A572CCC();
  type metadata accessor for Key(0);
  sub_19A44F598();
  v31 = sub_19A572ADC();

  v32 = [v29 initWithString:v30 attributes:v31];

  return v32;
}

unint64_t sub_19A44F598()
{
  result = qword_1EAF9F078;
  if (!qword_1EAF9F078)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF9F078);
  }

  return result;
}

uint64_t sub_19A44F5F0()
{
  type metadata accessor for DependencyResourceFactory.WeakContainer();
  v0 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0FF8);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_1EAF9F468 = result;
  return result;
}

uint64_t sub_19A44F660()
{
  v0 = sub_19A57290C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FC90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AF0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_19A576E20;
  v8 = *MEMORY[0x1E6984398];
  v9 = sub_19A5728CC();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  *(v7 + 56) = sub_19A5728DC();
  *(v7 + 64) = sub_19A44F930(&qword_1EAF9F1A0, MEMORY[0x1E69843B0]);
  __swift_allocate_boxed_opaque_existential_1((v7 + 32));
  sub_19A5728EC();
  (*(v1 + 104))(v3, *MEMORY[0x1E69843B8], v0);
  *(v7 + 96) = sub_19A57292C();
  *(v7 + 104) = sub_19A44F930(&qword_1EAF9F198, MEMORY[0x1E69843D0]);
  __swift_allocate_boxed_opaque_existential_1((v7 + 72));
  result = sub_19A57291C();
  qword_1EAF9F450 = v7;
  return result;
}

uint64_t sub_19A44F930(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A44F978()
{
  if (qword_1EAF9F460 != -1)
  {
    swift_once();
  }

  v0 = off_1EAF9F468;
  os_unfair_lock_lock(off_1EAF9F468 + 6);
  if (swift_weakLoadStrong())
  {
    type metadata accessor for DependencyResourceFactory();
    type metadata accessor for VisionResourceFactory();
  }

  else
  {
    type metadata accessor for VisionResourceFactory();
    v1 = swift_allocObject();
    type metadata accessor for VisionResourceFactory.VisionSessionWrapper();
    v2 = swift_allocObject();
    sub_19A57295C();
    v3 = sub_19A57294C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1AF8);
    v4 = swift_allocObject();
    *(v4 + 24) = 0;
    *(v4 + 16) = v3;
    *(v2 + 16) = v4;
    *(v1 + 16) = v2;
    swift_weakAssign();
    type metadata accessor for DependencyResourceFactory();
  }

  swift_dynamicCast();
  os_unfair_lock_unlock(v0 + 6);
  return v6;
}

void sub_19A44FB10()
{
  v0 = sub_19A570EAC();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v16[-v5];
  type metadata accessor for NonMaxLineSuppressFilter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_19A572CCC();
  v10 = sub_19A572CCC();
  v11 = [v8 URLForResource:v9 withExtension:v10];

  if (v11)
  {
    sub_19A570E3C();

    (*(v1 + 32))(v6, v4, v0);
    v12 = sub_19A570ECC();
    v14 = v13;
    sub_19A2F1600(0, &qword_1EAFA1B20);
    sub_19A356EC8(v12, v14);
    v15 = sub_19A450360();
    sub_19A33EFC4(v12, v14);
    (*(v1 + 8))(v6, v0);
    sub_19A33EFC4(v12, v14);

    qword_1EAFCA2D8 = v15;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

id sub_19A44FDF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16VisualGeneration24NonMaxLineSuppressFilter_inputImage);
  if (!v1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E20;
  sub_19A572CFC();
  v3 = v1;
  v4 = MEMORY[0x1E69E6158];
  sub_19A5738EC();
  v5 = sub_19A572CFC();
  *(inited + 96) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  aBlock = sub_19A572CFC();
  v30 = v7;
  sub_19A5738EC();
  v8 = sub_19A572CFC();
  *(inited + 168) = v4;
  *(inited + 144) = v8;
  *(inited + 152) = v9;
  sub_19A32F574(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2E90);
  swift_arrayDestroy();
  v10 = objc_allocWithZone(MEMORY[0x1E695F680]);
  v11 = sub_19A572ADC();

  v12 = [v10 initWithImage:v3 options:v11];

  if (qword_1EAF9F960 != -1)
  {
    swift_once();
  }

  v13 = qword_1EAFCA2D8;
  [v3 extent];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v33 = nullsub_2;
  v34 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_19A450160;
  v32 = &block_descriptor_7;
  v22 = _Block_copy(&aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA2EF0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_19A576E20;
  *(v23 + 56) = sub_19A2F1600(0, &qword_1EAFA1B18);
  *(v23 + 32) = v12;
  v24 = *(v0 + OBJC_IVAR____TtC16VisualGeneration24NonMaxLineSuppressFilter_threshold);
  *(v23 + 88) = MEMORY[0x1E69E6448];
  *(v23 + 64) = v24;
  v25 = v12;
  v26 = sub_19A57307C();

  v27 = [v13 applyWithExtent:v22 roiCallback:v26 arguments:{v15, v17, v19, v21}];

  _Block_release(v22);
  return v27;
}

double sub_19A450160(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v11 = *(a1 + 32);

  v12 = v11(a2, a3, a4, a5, a6);

  return v12;
}

id sub_19A4502E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NonMaxLineSuppressFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_19A450360()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = sub_19A572CCC();

  v1 = sub_19A570F0C();
  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() kernelWithFunctionName:v0 fromMetalLibraryData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_19A570D1C();

    swift_willThrow();
  }

  return v2;
}

uint64_t FrameworkError.errorDescription.getter()
{
  v0 = sub_19A57112C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_19A572CBC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_19A572C9C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_19A572C8C();
  sub_19A572C7C();
  sub_19A572C6C();
  sub_19A572C7C();
  sub_19A572CAC();
  sub_19A5710EC();
  return sub_19A572D7C();
}

unint64_t sub_19A4506F4()
{
  v1 = 0xD000000000000013;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_19A450768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_19A452028(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_19A450790(uint64_t a1)
{
  v2 = sub_19A451028();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4507CC(uint64_t a1)
{
  v2 = sub_19A451028();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A450808(uint64_t a1)
{
  v2 = sub_19A4510D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A450844(uint64_t a1)
{
  v2 = sub_19A4510D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A450880(uint64_t a1)
{
  v2 = sub_19A45107C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4508BC(uint64_t a1)
{
  v2 = sub_19A45107C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A450918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A4509A4(uint64_t a1)
{
  v2 = sub_19A451124();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A4509E0(uint64_t a1)
{
  v2 = sub_19A451124();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_19A450A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_19A573F1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_19A450AC8(uint64_t a1)
{
  v2 = sub_19A451178();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A450B04(uint64_t a1)
{
  v2 = sub_19A451178();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FrameworkError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B28);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B30);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v31 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B38);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B40);
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B48);
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v27 - v14;
  v16 = v1[1];
  v37 = *v1;
  v38 = v16;
  v17 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A451028();
  sub_19A5741AC();
  v18 = (v13 + 8);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v42 = 2;
      sub_19A4510D0();
      v21 = v31;
      v19 = v39;
      sub_19A573DAC();
      v22 = v33;
      sub_19A573E2C();
      v23 = v32;
    }

    else
    {
      v43 = 3;
      sub_19A45107C();
      v21 = v34;
      v19 = v39;
      sub_19A573DAC();
      v22 = v36;
      sub_19A573E2C();
      v23 = v35;
    }

    (*(v23 + 8))(v21, v22);
  }

  else
  {
    if (v17)
    {
      v41 = 1;
      sub_19A451124();
      v24 = v39;
      sub_19A573DAC();
      v25 = v30;
      sub_19A573E2C();
      (*(v29 + 8))(v9, v25);
      return (*v18)(v15, v24);
    }

    v40 = 0;
    sub_19A451178();
    v19 = v39;
    sub_19A573DAC();
    v20 = v28;
    sub_19A573E2C();
    (*(v27 + 8))(v12, v20);
  }

  return (*v18)(v15, v19);
}

unint64_t sub_19A451028()
{
  result = qword_1EAFA1B50;
  if (!qword_1EAFA1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1B50);
  }

  return result;
}

unint64_t sub_19A45107C()
{
  result = qword_1EAFA1B58;
  if (!qword_1EAFA1B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1B58);
  }

  return result;
}

unint64_t sub_19A4510D0()
{
  result = qword_1EAFA1B60;
  if (!qword_1EAFA1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1B60);
  }

  return result;
}

unint64_t sub_19A451124()
{
  result = qword_1EAFA1B68;
  if (!qword_1EAFA1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1B68);
  }

  return result;
}

unint64_t sub_19A451178()
{
  result = qword_1EAFA1B70;
  if (!qword_1EAFA1B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1B70);
  }

  return result;
}

uint64_t FrameworkError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B78);
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B80);
  v54 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v56 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B88);
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v48 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B90);
  v51 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1B98);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - v14;
  v16 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_19A451028();
  v17 = v60;
  sub_19A57417C();
  if (!v17)
  {
    v18 = v11;
    v48 = v9;
    v49 = 0;
    v19 = v8;
    v21 = v56;
    v20 = v57;
    v60 = v13;
    v23 = v58;
    v22 = v59;
    v24 = sub_19A573D7C();
    v25 = (2 * *(v24 + 16)) | 1;
    v62 = v24;
    v63 = v24 + 32;
    v64 = 0;
    v65 = v25;
    v26 = sub_19A344190();
    if (v26 == 4 || v64 != v65 >> 1)
    {
      v33 = sub_19A5739FC();
      swift_allocError();
      v35 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA2700);
      *v35 = &type metadata for FrameworkError;
      sub_19A573C7C();
      sub_19A5739DC();
      (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v60 + 8))(v15, v12);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v61);
    }

    v66 = v26;
    if (v26 <= 1u)
    {
      if (!v26)
      {
        v67 = 0;
        sub_19A451178();
        v27 = v49;
        sub_19A573C5C();
        if (!v27)
        {
          v28 = v48;
          v29 = sub_19A573CFC();
          v31 = v30;
          (*(v51 + 8))(v18, v28);
          (*(v60 + 8))(v15, v12);
          swift_unknownObjectRelease();
          v32 = v29;
LABEL_22:
          *v22 = v32;
          *(v22 + 8) = v31;
          *(v22 + 16) = v66;
          return __swift_destroy_boxed_opaque_existential_0Tm(v61);
        }

        goto LABEL_14;
      }

      v67 = 1;
      sub_19A451124();
      v41 = v49;
      sub_19A573C5C();
      if (!v41)
      {
        v42 = v52;
        v32 = sub_19A573CFC();
        v31 = v46;
        (*(v53 + 8))(v19, v42);
        v38 = v60;
        goto LABEL_21;
      }

LABEL_14:
      (*(v60 + 8))(v15, v12);
      goto LABEL_9;
    }

    if (v26 == 2)
    {
      v67 = 2;
      sub_19A4510D0();
      v37 = v49;
      sub_19A573C5C();
      v38 = v60;
      if (v37)
      {
        goto LABEL_14;
      }

      v39 = v50;
      v40 = sub_19A573CFC();
      v31 = v45;
      v58 = v40;
      (*(v54 + 8))(v21, v39);
      v32 = v58;
    }

    else
    {
      v67 = 3;
      sub_19A45107C();
      v43 = v20;
      v44 = v49;
      sub_19A573C5C();
      v38 = v60;
      if (v44)
      {
        (*(v60 + 8))(v15, v12);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0Tm(v61);
      }

      v32 = sub_19A573CFC();
      v31 = v47;
      (*(v55 + 8))(v43, v23);
    }

LABEL_21:
    (*(v38 + 8))(v15, v12);
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v61);
}

unint64_t sub_19A451984(void *a1)
{
  a1[1] = sub_19A4519BC();
  a1[2] = sub_19A451A10();
  result = sub_19A2F1130();
  a1[3] = result;
  return result;
}

unint64_t sub_19A4519BC()
{
  result = qword_1EAFA1BA0;
  if (!qword_1EAFA1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BA0);
  }

  return result;
}

unint64_t sub_19A451A10()
{
  result = qword_1EAFA1BA8;
  if (!qword_1EAFA1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BA8);
  }

  return result;
}

unint64_t sub_19A451B04()
{
  result = qword_1EAFA1BB0;
  if (!qword_1EAFA1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BB0);
  }

  return result;
}

unint64_t sub_19A451B5C()
{
  result = qword_1EAFA1BB8;
  if (!qword_1EAFA1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BB8);
  }

  return result;
}

unint64_t sub_19A451BB4()
{
  result = qword_1EAFA1BC0;
  if (!qword_1EAFA1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BC0);
  }

  return result;
}

unint64_t sub_19A451C0C()
{
  result = qword_1EAFA1BC8;
  if (!qword_1EAFA1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BC8);
  }

  return result;
}

unint64_t sub_19A451C64()
{
  result = qword_1EAFA1BD0;
  if (!qword_1EAFA1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BD0);
  }

  return result;
}

unint64_t sub_19A451CBC()
{
  result = qword_1EAFA1BD8;
  if (!qword_1EAFA1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BD8);
  }

  return result;
}

unint64_t sub_19A451D14()
{
  result = qword_1EAFA1BE0;
  if (!qword_1EAFA1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BE0);
  }

  return result;
}

unint64_t sub_19A451D6C()
{
  result = qword_1EAFA1BE8;
  if (!qword_1EAFA1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BE8);
  }

  return result;
}

unint64_t sub_19A451DC4()
{
  result = qword_1EAFA1BF0;
  if (!qword_1EAFA1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BF0);
  }

  return result;
}

unint64_t sub_19A451E1C()
{
  result = qword_1EAFA1BF8;
  if (!qword_1EAFA1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1BF8);
  }

  return result;
}

unint64_t sub_19A451E74()
{
  result = qword_1EAFA1C00;
  if (!qword_1EAFA1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1C00);
  }

  return result;
}

unint64_t sub_19A451ECC()
{
  result = qword_1EAFA1C08;
  if (!qword_1EAFA1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1C08);
  }

  return result;
}

unint64_t sub_19A451F24()
{
  result = qword_1EAFA1C10;
  if (!qword_1EAFA1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1C10);
  }

  return result;
}

unint64_t sub_19A451F7C()
{
  result = qword_1EAFA1C18;
  if (!qword_1EAFA1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1C18);
  }

  return result;
}

unint64_t sub_19A451FD4()
{
  result = qword_1EAFA1C20;
  if (!qword_1EAFA1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1C20);
  }

  return result;
}

uint64_t sub_19A452028(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x800000019A59A4C0 == a2;
  if (v4 || (sub_19A573F1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000019A597150 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000019A59A4E0 == a2 || (sub_19A573F1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x800000019A59A500 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A573F1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A4521D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v5[12] = *(type metadata accessor for GeneratedImage() - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for ImageProvenance();
  v5[16] = swift_task_alloc();
  v6 = sub_19A57102C();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A452330, 0, 0);
}

uint64_t sub_19A452330()
{
  v40 = v0;
  sub_19A43274C();
  v1 = v0[8];
  v2 = &v1[*(type metadata accessor for GenerationRecipe(0) + 20)];
  v38 = *(v2 + 5);
  if (v38 < 1)
  {
    v28 = v0[7];
    *v28 = MEMORY[0x1E69E7CC0];
    v29 = *(type metadata accessor for ImageGenerator.Result(0) + 20);
    v30 = type metadata accessor for InferenceDiagnosticsAccessor();
    (*(*(v30 - 8) + 56))(&v28[v29], 1, 1, v30);
  }

  else
  {
    v3 = v0[15];
    v4 = v0[12];
    v5 = *(v2 + 2);
    v6 = *(v2 + 3);
    v7 = v2[32] == 0;
    v8 = 512;
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v5 = 512;
    }

    v36 = v8;
    v37 = v5;
    v35 = *(v0[18] + 16);
    v35(v0[19], v0[9] + OBJC_IVAR____TtCC16VisualGeneration14ImageGenerator14GenerationTask_id, v0[17]);
    v9 = *v1;
    v10 = MEMORY[0x1E69E7CC0];
    v11 = 1;
    while (1)
    {
      v12 = v0[16];
      v14 = v0[13];
      v13 = v0[14];
      v35(&v12[v3[5]], v0[19], v0[17]);
      *v12 = v9;
      *&v12[v3[6]] = v11;
      *&v12[v3[7]] = 0;
      *&v12[v3[8]] = 0;
      v39[0] = v37;
      v39[1] = v36;
      sub_19A452760(v39, v12, v13);
      sub_19A452DA4(v13, v14, type metadata accessor for GeneratedImage);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_19A31DA3C(0, v10[2] + 1, 1, v10);
      }

      v16 = v10[2];
      v15 = v10[3];
      if (v16 >= v15 >> 1)
      {
        v10 = sub_19A31DA3C(v15 > 1, v16 + 1, 1, v10);
      }

      v17 = v0[16];
      v18 = v0[13];
      sub_19A452AD4(v0[14], type metadata accessor for GeneratedImage);
      sub_19A452AD4(v17, type metadata accessor for ImageProvenance);
      v10[2] = v16 + 1;
      result = sub_19A368A00(v18, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16);
      if (v38 == v11)
      {
        break;
      }

      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        return result;
      }
    }

    sub_19A348104(v0[10], (v0 + 2));
    v21 = v0[5];
    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[17];
    if (v21)
    {
      v25 = v0[11];
      v26 = v0[9];
      v27 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      (*(v27 + 32))(v25, v26, v10, v21, v27);
      (*(v23 + 8))(v22, v24);
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 2));
    }

    else
    {
      (*(v23 + 8))(v0[19], v0[17]);
      sub_19A348174((v0 + 2));
    }

    v31 = v0[7];
    v32 = *(type metadata accessor for ImageGenerator.Result(0) + 20);
    v33 = type metadata accessor for InferenceDiagnosticsAccessor();
    (*(*(v33 - 8) + 56))(&v31[v32], 1, 1, v33);
    *v31 = v10;
  }

  v34 = v0[1];

  return v34();
}

uint64_t sub_19A452760@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = [objc_opt_self() blackImage];
  v8 = [v7 imageByCroppingToRect_];

  v9 = v8;
  v10 = sub_19A44EF80(v9);
  if (!v10)
  {
    v18 = type metadata accessor for GeneratedImage();
    result = sub_19A452DA4(a2, a3 + v18[5], type metadata accessor for ImageProvenance);
LABEL_12:
    v20 = 1;
    goto LABEL_13;
  }

  v11 = v10;
  v12 = sub_19A4529BC();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 6645844;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  sub_19A57395C();

  MEMORY[0x19A900A50](0xD00000000000001ELL, 0x800000019A59A5E0);
  v16 = sub_19A44F31C(v14, v15, 0, 0, COERCE__INT64(v6 / 10.0), 0, 4, 0, 0, 1);

  sub_19A44E9E0(v16, 0x3FE0000000000000, 0x3FE0000000000000, 1);

  Image = CGBitmapContextCreateImage(*(v11 + 4));
  v18 = type metadata accessor for GeneratedImage();
  sub_19A452DA4(a2, a3 + v18[5], type metadata accessor for ImageProvenance);
  if (!Image)
  {

    goto LABEL_12;
  }

  v20 = 0;
  v9 = Image;
LABEL_13:
  v21 = v18[10];
  *(a3 + v21) = 3;
  *a3 = v9;
  *(a3 + 8) = v20;
  *(a3 + v18[6]) = 3;
  v22 = a3 + v18[7];
  *v22 = 0;
  *(v22 + 8) = 0;
  *(v22 + 16) = 1;
  v23 = (a3 + v18[8]);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  v24 = (a3 + v18[9]);
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *(a3 + v21) = 3;
  return result;
}

uint64_t sub_19A4529BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_19A452B34();
    v4 = *(v0 + 16);
    v5 = *(v0 + 24);
    *(v0 + 16) = v3;
    *(v0 + 24) = v6;

    sub_19A334804(v4, v5);
  }

  sub_19A332C58(v1, v2);
  return v3;
}

double sub_19A452A40()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = xmmword_19A57FCB0;
  return result;
}

uint64_t sub_19A452A78()
{
  sub_19A334804(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_19A452AD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A452B34()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = sub_19A57093C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_19A572D6C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  bzero(&v14, 0x500uLL);
  v5 = uname(&v14);
  result = 0;
  if (!v5)
  {
    v7 = sub_19A356E18(v14.machine, 256);
    v9 = v8;
    v15 = v7;
    v16 = v8;
    sub_19A572D5C();
    sub_19A452D50();
    v10 = sub_19A572D2C();
    if (v11)
    {
      v15 = v10;
      v16 = v11;
      sub_19A57089C();
      sub_19A2F4450();
      v12 = sub_19A57380C();
      sub_19A33EFC4(v7, v9);
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v12 = v10;
      sub_19A33EFC4(v7, v9);
    }

    return v12;
  }

  return result;
}

unint64_t sub_19A452D50()
{
  result = qword_1EAFA1C28;
  if (!qword_1EAFA1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFA1C28);
  }

  return result;
}

uint64_t sub_19A452DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  v3 = v2[6];
  v4 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v6 = &a1[v2[7]];
  *v6 = 1;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *&a1[v2[8]] = MEMORY[0x1E69E7CC0];
  *&a1[v2[9]] = 2;
  v7 = &a1[v2[10]];
  *v7 = 0;
  *(v7 + 1) = 0;
  a1[v2[11]] = 3;
  a1[v2[12]] = 10;
  v8 = &a1[v2[13]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &a1[v2[14]];
  *v9 = 0;
  v9[8] = 1;
  *&a1[v2[15]] = 0;
  a1[v2[16]] = 0;
  a1[v2[17]] = 1;
  a1[v2[18]] = 1;
  v10 = &a1[v2[19]];
  *v10 = 0;
  *(v10 + 1) = 0;
  return result;
}

uint64_t sub_19A452FAC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  v5 = v4[6];
  v6 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = &a2[v4[7]];
  *v7 = 1;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = 0;
  v48 = v4[9];
  *&a2[v48] = 2;
  v49 = v4[12];
  a2[v49] = 10;
  v8 = a1[1];
  *a2 = *a1;
  *(a2 + 1) = v8;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v9 = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  v10 = v9[5];

  sub_19A4595D0(a1 + v10, &a2[v5]);
  v11 = (a1 + v9[6]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v7[1];
  v44 = v7[2];
  v46 = *v7;
  sub_19A3A6BDC(*v11, v13, v14);
  sub_19A3A6C6C(v46, v16, v44);
  *v7 = v12;
  v7[1] = v13;
  v7[2] = v14;
  v7[3] = v15;
  v17 = a1 + v9[7];
  v18 = *v17;
  v19 = v17[8];
  v50 = v18;
  v51 = v19;
  sub_19A3319D0(v18, v19);
  if (v19 == 255)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v20 = v18;
    v21 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_19A31E7E4(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = sub_19A31E7E4((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    v24 = &v21[16 * v23];
    *(v24 + 4) = v18;
    v24[40] = v19;
  }

  v25 = v4[8];
  v26 = v4[11];
  v27 = &a2[v4[10]];
  v28 = &a2[v4[13]];
  v29 = &a2[v4[14]];
  v41 = v4[15];
  v42 = v4[16];
  v43 = v4[17];
  v45 = v4[18];
  v47 = &a2[v4[19]];
  sub_19A2F3FA0(&v50, &qword_1EAFA1C30);
  *&a2[v25] = v21;
  *&a2[v48] = *(a1 + v9[8]);
  v30 = (a1 + v9[9]);
  v31 = *v30;
  v32 = v30[1];
  *v27 = *v30;
  v27[1] = v32;
  a2[v26] = *(a1 + v9[10]);
  a2[v49] = *(a1 + v9[11]);
  v33 = (a1 + v9[12]);
  v34 = v33[1];
  *v28 = *v33;
  *(v28 + 1) = v34;
  v35 = a1 + v9[13];
  v36 = *v35;
  LOBYTE(v35) = v35[8];
  *v29 = v36;
  v29[8] = v35;
  *&a2[v41] = 0;
  a2[v42] = *(a1 + v9[14]);
  a2[v43] = *(a1 + v9[15]);
  a2[v45] = *(a1 + v9[16]);
  v37 = (a1 + v9[17]);
  v38 = *v37;
  v39 = v37[1];
  sub_19A2E0A50(v31);

  sub_19A2E0A50(v38);
  result = sub_19A458EAC(a1, type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1);
  *v47 = v38;
  v47[1] = v39;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.clientProvidedEmojiDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.clientProvidedEmojiDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.descriptionAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 24);

  return sub_19A4533C4(v3, a1);
}

uint64_t sub_19A4533C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.descriptionAssignmentOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 24);

  return sub_19A453478(a1, v3);
}

uint64_t sub_19A453478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.descriptionAssignmentInteractable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_19A3A6BDC(v4, v5, v6);
}

__n128 KeyboardEmojiGenerator.AssignmentConfiguration_V2.descriptionAssignmentInteractable.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 28));
  sub_19A3A6C6C(*v3, v3[1], v3[2]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.conditioningImages.getter()
{
  type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.conditioningImages.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.conditioningImageAssignmentOptions.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.conditioningImageAssignmentOptions.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_19A453774@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A3B1BB4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A453808(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A3B1BBC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 40));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.conditioningImageAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 40));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.conditioningImageAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 40));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.genderDirective.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.skinToneDirective.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.skinToneDirective.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.personDescriptionDirective.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 52));

  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.personDescriptionDirective.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.generationSeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  v6 = v2 + *(result + 56);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.imageVariations.getter()
{
  type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.imageVariations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 60);

  *(v1 + v3) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.forceInProcessGeneration.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.allowImageRejection.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.enableGenerativeModelsAvailabilityCheck.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t sub_19A453EEC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 76));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A45992C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A453F80(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A459934;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 76));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.forensicsReporter.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 76));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V2.forensicsReporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0) + 76));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  v3 = v2[5];
  v4 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v6 = &a1[v2[6]];
  *v6 = 1;
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  v7 = &a1[v2[7]];
  *v7 = 0;
  v7[8] = -1;
  *&a1[v2[8]] = 2;
  v8 = &a1[v2[9]];
  *v8 = 0;
  *(v8 + 1) = 0;
  a1[v2[10]] = 3;
  a1[v2[11]] = 10;
  v9 = &a1[v2[12]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &a1[v2[13]];
  *v10 = 0;
  v10[8] = 1;
  a1[v2[14]] = 0;
  a1[v2[15]] = 1;
  a1[v2[16]] = 1;
  v11 = &a1[v2[17]];
  *v11 = 0;
  *(v11 + 1) = 0;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.emojiDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.emojiDescription.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.descriptionAssignmentOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 20);

  return sub_19A4533C4(v3, a1);
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.descriptionAssignmentOptions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 20);

  return sub_19A453478(a1, v3);
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.descriptionAssignmentInteractable.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_19A3A6BDC(v4, v5, v6);
}

__n128 KeyboardEmojiGenerator.AssignmentConfiguration_V1.descriptionAssignmentInteractable.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 24));
  sub_19A3A6C6C(*v3, v3[1], v3[2]);
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v5;
  return result;
}

id KeyboardEmojiGenerator.AssignmentConfiguration_V1.conditioningImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 28);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_19A3319D0(v4, v5);
}

void KeyboardEmojiGenerator.AssignmentConfiguration_V1.conditioningImage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 28);
  sub_19A335458(*v4, *(v4 + 8));
  *v4 = v2;
  *(v4 + 8) = v3;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.conditioningImageAssignmentOptions.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.conditioningImageAssignmentOptions.setter(__int16 *a1)
{
  v2 = *a1;
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t sub_19A454600@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 36));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A33478C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A454694(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A334754;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 36));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.conditioningImageAssignmentEventsHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 36));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.conditioningImageAssignmentEventsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 36));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.genderDirective.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.skinToneDirective.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.skinToneDirective.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.personDescriptionDirective.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 48));

  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.personDescriptionDirective.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.generationSeed.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.forceInProcessGeneration.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.allowImageRejection.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.enableGenerativeModelsAvailabilityCheck.setter(char a1)
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t sub_19A454CBC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (a1 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  if (*v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_19A4595A8;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;

  return sub_19A2E0A50(v4);
}

uint64_t sub_19A454D50(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_19A459580;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (a2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 68));
  v8 = *v7;
  sub_19A2E0A50(v3);
  result = sub_19A2E0A60(v8);
  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.forensicsReporter.getter()
{
  v1 = *(v0 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 68));
  sub_19A2E0A50(v1);
  return v1;
}

uint64_t KeyboardEmojiGenerator.AssignmentConfiguration_V1.forensicsReporter.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0) + 68));
  result = sub_19A2E0A60(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t KeyboardEmojiGenerator.assign(versionedConfiguration:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(0);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration(0);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A454FD4, 0, 0);
}

uint64_t sub_19A454FD4()
{
  sub_19A458E44(v0[2], v0[9], type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    sub_19A458DDC(v2, v0[4], type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2);
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_19A455424;
    v4 = v0[4];
  }

  else
  {
    v5 = v0[6];
    v6 = v0[7];
    v7 = v0[5];
    sub_19A458DDC(v2, v6, type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1);
    sub_19A458E44(v6, v5, type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1);
    sub_19A452FAC(v5, v7);
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_19A455168;
    v4 = v0[5];
  }

  return sub_19A4556C0(v4);
}

uint64_t sub_19A455168()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_19A45534C;
  }

  else
  {
    v2 = sub_19A45527C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A45527C()
{
  v1 = v0[7];
  sub_19A458EAC(v0[5], type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2);
  sub_19A458EAC(v1, type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A45534C()
{
  v1 = v0[7];
  sub_19A458EAC(v0[5], type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2);
  sub_19A458EAC(v1, type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_19A455424()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_19A4555E8;
  }

  else
  {
    v2 = sub_19A455538;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A455538()
{
  sub_19A458EAC(*(v0 + 32), type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4555E8()
{
  sub_19A458EAC(*(v0 + 32), type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A4556C0(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
  v2[43] = swift_task_alloc();
  v3 = type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions(0);
  v2[44] = v3;
  v2[45] = *(v3 - 8);
  v2[46] = swift_task_alloc();
  v4 = sub_19A57102C();
  v2[47] = v4;
  v2[48] = *(v4 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = type metadata accessor for DefinitionSession();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A45585C, 0, 0);
}

uint64_t sub_19A45585C()
{
  v1 = sub_19A57231C();
  v0[54] = v1;
  v2 = *(v1 - 8);
  v0[55] = v2;
  v0[56] = swift_task_alloc();
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v3 = sub_19A57236C();
  __swift_project_value_buffer(v3, qword_1ED82BD30);
  sub_19A57234C();
  sub_19A5722EC();
  v4 = sub_19A57234C();
  v5 = sub_19A57361C();
  if (sub_19A57376C())
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_19A5722FC();
    _os_signpost_emit_with_name_impl(&dword_19A2DE000, v4, v5, v7, "assignConfiguration", "KeyboardEmojiGenerator.AssignmentConfiguration", v6, 2u);
    MEMORY[0x19A902C50](v6, -1, -1);
  }

  v8 = v0[42];

  swift_task_alloc();
  (*(v2 + 16))();
  sub_19A5723BC();
  swift_allocObject();
  v0[57] = sub_19A5723AC();

  v9 = *(v8 + 88);
  v0[58] = v9;

  return MEMORY[0x1EEE6DFA0](sub_19A455A6C, v9, 0);
}

uint64_t sub_19A455A6C()
{
  v1 = v0[58];
  v2 = v0[53];
  v3 = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  v0[59] = OBJC_IVAR____TtC16VisualGeneration25DefinitionSessionAccessor__definitionSession;
  swift_beginAccess();
  sub_19A458E44(v1 + v3, v2, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A455B1C, 0, 0);
}

uint64_t sub_19A455B1C()
{
  v1 = *(v0 + 464);
  sub_19A4B958C();

  return MEMORY[0x1EEE6DFA0](sub_19A455B88, v1, 0);
}

uint64_t sub_19A455B88()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v1 + v2);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A455C3C, v1, 0);
}

uint64_t sub_19A455C3C()
{
  sub_19A458E44(v0[58] + v0[59], v0[53], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A455CC0, 0, 0);
}

uint64_t sub_19A455CC0()
{
  v1 = v0[58];
  v2 = v0[53];
  v3 = *(v0[50] + 88);
  v4 = type metadata accessor for GenerationRecipe(0);
  v0[60] = v4;
  v5 = v2 + *(v4 + 52) + v3;

  *(v5 + 8) = 0;
  *(v5 + 16) = 0;

  return MEMORY[0x1EEE6DFA0](sub_19A455D5C, v1, 0);
}

uint64_t sub_19A455D5C()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v1 + v2);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A455E10, v1, 0);
}

uint64_t sub_19A455E10()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[53];
  v4 = v0[50];
  sub_19A458E44(v2 + v0[59], v3, type metadata accessor for DefinitionSession);
  *(v3 + *(v4 + 88) + *(v1 + 52) + 2) = 10;

  return MEMORY[0x1EEE6DFA0](sub_19A455EC0, v2, 0);
}

uint64_t sub_19A455EC0()
{
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v1 + v2);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A455F74, v1, 0);
}

uint64_t sub_19A455F74()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[53];
  v4 = v0[50];
  sub_19A458E44(v2 + v0[59], v3, type metadata accessor for DefinitionSession);
  *(v3 + *(v4 + 88) + *(v1 + 52) + 1) = 3;

  return MEMORY[0x1EEE6DFA0](sub_19A456024, v2, 0);
}

uint64_t sub_19A456024()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_19A456108;

  return sub_19A3F2B08();
}

uint64_t sub_19A456108()
{

  return MEMORY[0x1EEE6DFA0](sub_19A456204, 0, 0);
}

uint64_t sub_19A456204()
{
  v1 = *(v0 + 464);
  sub_19A57101C();

  return MEMORY[0x1EEE6DFA0](sub_19A456270, v1, 0);
}

uint64_t sub_19A456270()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[53];
  v4 = v0[49];
  v5 = v0[50];
  v6 = v0[47];
  v7 = v0[48];
  sub_19A458E44(v2 + v0[59], v3, type metadata accessor for DefinitionSession);
  (*(v7 + 24))(v3 + *(v5 + 88) + *(v1 + 72), v4, v6);

  return MEMORY[0x1EEE6DFA0](sub_19A456344, v2, 0);
}

uint64_t sub_19A456344()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  (*(v0[48] + 8))(v0[49], v0[47]);
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456410, 0, 0);
}

uint64_t sub_19A456410()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 328);
  v3 = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(0);
  *(v0 + 496) = v3;
  v4 = v2 + *(v3 + 56);
  *(v0 + 504) = *v4;
  *(v0 + 674) = *(v4 + 8);

  return MEMORY[0x1EEE6DFA0](sub_19A45649C, v1, 0);
}

uint64_t sub_19A45649C()
{
  v1 = *(v0 + 674);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 464);
  v5 = *(v0 + 424);
  v6 = *(v0 + 400);
  sub_19A458E44(v4 + *(v0 + 472), v5, type metadata accessor for DefinitionSession);
  v7 = v5 + *(v6 + 88) + *(v3 + 28);
  *v7 = v2;
  *(v7 + 8) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A45655C, v4, 0);
}

uint64_t sub_19A45655C()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456610, 0, 0);
}

uint64_t sub_19A456610()
{
  v1 = v0[58];
  v0[64] = *(v0[41] + *(v0[62] + 60));
  return MEMORY[0x1EEE6DFA0](sub_19A456640, v1, 0);
}

uint64_t sub_19A456640()
{
  sub_19A458E44(v0[58] + v0[59], v0[53], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A4566C4, 0, 0);
}

uint64_t sub_19A4566C4()
{
  v1 = v0[58];
  *(v0[53] + *(v0[50] + 24)) = v0[64];

  return MEMORY[0x1EEE6DFA0](sub_19A45674C, v1, 0);
}

uint64_t sub_19A45674C()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456800, 0, 0);
}

uint64_t sub_19A456800()
{
  v1 = *(v0 + 464);
  *(v0 + 675) = *(*(v0 + 328) + *(*(v0 + 496) + 64));
  return MEMORY[0x1EEE6DFA0](sub_19A456830, v1, 0);
}

uint64_t sub_19A456830()
{
  v1 = *(v0 + 675);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  sub_19A458E44(v3 + *(v0 + 472), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 20) + 50) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A4568E8, v3, 0);
}

uint64_t sub_19A4568E8()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A45699C, 0, 0);
}

uint64_t sub_19A45699C()
{
  v1 = *(v0 + 464);
  *(v0 + 676) = *(*(v0 + 328) + *(*(v0 + 496) + 68));
  return MEMORY[0x1EEE6DFA0](sub_19A4569CC, v1, 0);
}

uint64_t sub_19A4569CC()
{
  v1 = *(v0 + 676);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  sub_19A458E44(v3 + *(v0 + 472), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 20) + 48) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A456A84, v3, 0);
}

uint64_t sub_19A456A84()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456B38, 0, 0);
}

uint64_t sub_19A456B38()
{
  v1 = *(v0 + 464);
  *(v0 + 677) = *(*(v0 + 328) + *(*(v0 + 496) + 72));
  return MEMORY[0x1EEE6DFA0](sub_19A456B68, v1, 0);
}

uint64_t sub_19A456B68()
{
  v1 = *(v0 + 677);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  sub_19A458E44(v3 + *(v0 + 472), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 20) + 49) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A456C20, v3, 0);
}

uint64_t sub_19A456C20()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456CD4, 0, 0);
}

uint64_t sub_19A456CD4()
{
  v1 = v0[58];
  v2 = (v0[41] + *(v0[62] + 76));
  v0[65] = *v2;
  v0[66] = v2[1];
  return MEMORY[0x1EEE6DFA0](sub_19A456D10, v1, 0);
}

uint64_t sub_19A456D10()
{
  sub_19A458E44(v0[58] + v0[59], v0[52], type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456D94, 0, 0);
}

uint64_t sub_19A456D94()
{
  v1 = v0[65];
  v2 = v0[52];
  v3 = v0[50];
  v4 = (v2 + *(v3 + 40));
  v5 = *v4;
  if ((v1 == 0) != (*v4 == 0))
  {
    v6 = *(v3 + 68);
    sub_19A2F3FA0(v2 + v6, &qword_1EAFA1020);
    v7 = type metadata accessor for TextSanitizer();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    v1 = v0[65];
  }

  v8 = v0[66];
  v9 = v0[58];
  sub_19A2E0A50(v1);
  sub_19A2E0A60(v5);
  *v4 = v1;
  v4[1] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A456EB8, v9, 0);
}

uint64_t sub_19A456EB8()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[52];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A456F6C, 0, 0);
}

uint64_t sub_19A456F6C()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 328);
  v3 = *(v2 + v1[8]);
  if (*(v3 + 16))
  {
    *(v0 + 672) = *(v2 + v1[9]);
    v4 = (v2 + v1[10]);
    v5 = *v4;
    v6 = v4[1];
    v7 = swift_task_alloc();
    *(v0 + 536) = v7;
    *v7 = v0;
    v7[1] = sub_19A4572EC;

    return sub_19A3F221C(v3, (v0 + 672), v5, v6);
  }

  else
  {
    *(v0 + 552) = 0;
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 344);
    sub_19A4533C4(v2 + v1[6], v11);
    v12 = *(v10 + 48);
    if (v12(v11, 1, v9) == 1)
    {
      v13 = *(v0 + 376);
      v14 = *(v0 + 384);
      v15 = *(v0 + 368);
      v16 = *(v0 + 344);
      v17 = *(v0 + 352);
      *v15 = 257;
      (*(v14 + 56))(&v15[v17[6]], 1, 1, v13);
      v15[v17[7]] = 1;
      v15[v17[9]] = 1;
      v15[v17[10]] = 0;
      *&v15[v17[11]] = 1;
      *&v15[v17[12]] = 1;
      *&v15[v17[13]] = 4;
      *&v15[v17[14]] = 4;
      v15[v17[15]] = 3;
      v18 = &v15[v17[16]];
      *v18 = 0;
      v18[8] = 1;
      v19 = &v15[v17[17]];
      *v19 = 0;
      v19[8] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
      v20 = *(sub_19A57112C() - 8);
      v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_19A576E10;
      sub_19A474D68(v22 + v21);
      v23 = &v15[v17[8]];
      *v23 = v22;
      *(v23 + 1) = 5;
      *(v23 + 4) = 1064514355;
      if (v12(v16, 1, v17) != 1)
      {
        sub_19A2F3FA0(*(v0 + 344), &qword_1EAFA1148);
      }
    }

    else
    {
      sub_19A458DDC(*(v0 + 344), *(v0 + 368), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
    }

    v24 = *(v0 + 328);
    v25 = *v24;
    *(v0 + 560) = *v24;
    v26 = v24[1];
    *(v0 + 568) = v26;
    v27 = v24[2];
    *(v0 + 576) = v27;
    v28 = v24[3];
    *(v0 + 584) = v28;
    v29 = swift_task_alloc();
    *(v0 + 592) = v29;
    *v29 = v0;
    v29[1] = sub_19A4576D8;
    v30 = *(v0 + 368);

    return sub_19A3F07E4(v25, v26, v27, v28, v30);
  }
}

uint64_t sub_19A4572EC()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_19A458BA0;
  }

  else
  {
    v2 = sub_19A457400;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A457400()
{
  v0[69] = v0[68];
  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[43];
  sub_19A4533C4(v0[41] + *(v0[62] + 24), v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[47];
    v6 = v0[48];
    v7 = v0[46];
    v8 = v0[43];
    v9 = v0[44];
    *v7 = 257;
    (*(v6 + 56))(&v7[v9[6]], 1, 1, v5);
    v7[v9[7]] = 1;
    v7[v9[9]] = 1;
    v7[v9[10]] = 0;
    *&v7[v9[11]] = 1;
    *&v7[v9[12]] = 1;
    *&v7[v9[13]] = 4;
    *&v7[v9[14]] = 4;
    v7[v9[15]] = 3;
    v10 = &v7[v9[16]];
    *v10 = 0;
    v10[8] = 1;
    v11 = &v7[v9[17]];
    *v11 = 0;
    v11[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD88);
    v12 = *(sub_19A57112C() - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_19A576E10;
    sub_19A474D68(v14 + v13);
    v15 = &v7[v9[8]];
    *v15 = v14;
    *(v15 + 1) = 5;
    *(v15 + 4) = 1064514355;
    if (v4(v8, 1, v9) != 1)
    {
      sub_19A2F3FA0(v0[43], &qword_1EAFA1148);
    }
  }

  else
  {
    sub_19A458DDC(v0[43], v0[46], type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  }

  v16 = v0[41];
  v17 = *v16;
  v0[70] = *v16;
  v18 = v16[1];
  v0[71] = v18;
  v19 = v16[2];
  v0[72] = v19;
  v20 = v16[3];
  v0[73] = v20;
  v21 = swift_task_alloc();
  v0[74] = v21;
  *v21 = v0;
  v21[1] = sub_19A4576D8;
  v22 = v0[46];

  return sub_19A3F07E4(v17, v18, v19, v20, v22);
}

uint64_t sub_19A4576D8()
{

  return MEMORY[0x1EEE6DFA0](sub_19A4577D4, 0, 0);
}

uint64_t sub_19A4577D4()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 328);
  v3 = *(v2 + v1[11]);
  if (v3 == 3)
  {
    v4 = *(v0 + 552);
    v5 = *(v2 + v1[12]);
    *(v0 + 678) = v5;
    if (v5 == 10)
    {
      v6 = (v2 + v1[13]);
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = *(*(v0 + 368) + *(*(v0 + 352) + 32));
        *(v0 + 624) = v9;

        sub_19A3EC4B8(4, v8, v7);
        if (v4)
        {

LABEL_10:
          sub_19A458EAC(*(v0 + 368), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
          v12 = *(v0 + 448);
          v13 = *(v0 + 432);
          v14 = *(v0 + 440);
          sub_19A459640("assignConfiguration", 19, 2);

          (*(v14 + 8))(v12, v13);

          v15 = *(v0 + 8);

          return v15();
        }

        v24 = swift_task_alloc();
        *(v0 + 632) = v24;
        *v24 = v0;
        v24[1] = sub_19A4584A4;
        v25 = *(v0 + 464);

        return sub_19A300EF0(v8, v7, v9, v25);
      }

      else
      {
        v26 = *(v0 + 560);
        v27 = *(v0 + 576);
        v16 = *(v0 + 368);
        v17 = (v2 + v1[7]);
        v18 = swift_task_alloc();
        v19 = *v17;
        v20 = v17[1];
        *(v0 + 648) = v18;
        *(v18 + 16) = v26;
        *(v18 + 32) = v27;
        *(v18 + 48) = v16;
        *(v18 + 72) = v20;
        *(v18 + 56) = v19;
        v21 = swift_task_alloc();
        *(v0 + 656) = v21;
        *v21 = v0;
        v21[1] = sub_19A458804;
        v22 = *(v0 + 408);

        return sub_19A379EE8(v22, &unk_19A581840, v18);
      }
    }

    else
    {
      sub_19A3EC19C(2);
      *(v0 + 616) = v4;
      if (v4)
      {
        goto LABEL_10;
      }

      v23 = *(v0 + 464);

      return MEMORY[0x1EEE6DFA0](sub_19A458044, v23, 0);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 600) = v10;
    *v10 = v0;
    v10[1] = sub_19A457BC8;

    return sub_19A3ECA7C(v3);
  }
}

uint64_t sub_19A457BC8()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_19A458CB0;
  }

  else
  {
    v2 = sub_19A457CDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A457CDC()
{
  v1 = *(v0 + 608);
  v2 = *(v0 + 496);
  v3 = *(v0 + 328);
  v4 = *(v3 + v2[12]);
  *(v0 + 678) = v4;
  if (v4 == 10)
  {
    v5 = (v3 + v2[13]);
    v6 = v5[1];
    if (v6)
    {
      v7 = *v5;
      v8 = *(*(v0 + 368) + *(*(v0 + 352) + 32));
      *(v0 + 624) = v8;

      sub_19A3EC4B8(4, v7, v6);
      if (v1)
      {

LABEL_6:
        sub_19A458EAC(*(v0 + 368), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
        v9 = *(v0 + 448);
        v10 = *(v0 + 432);
        v11 = *(v0 + 440);
        sub_19A459640("assignConfiguration", 19, 2);

        (*(v11 + 8))(v9, v10);

        v12 = *(v0 + 8);

        return v12();
      }

      v22 = swift_task_alloc();
      *(v0 + 632) = v22;
      *v22 = v0;
      v22[1] = sub_19A4584A4;
      v23 = *(v0 + 464);

      return sub_19A300EF0(v7, v6, v8, v23);
    }

    else
    {
      v24 = *(v0 + 560);
      v25 = *(v0 + 576);
      v14 = *(v0 + 368);
      v15 = (v3 + v2[7]);
      v16 = swift_task_alloc();
      v17 = *v15;
      v18 = v15[1];
      *(v0 + 648) = v16;
      *(v16 + 16) = v24;
      *(v16 + 32) = v25;
      *(v16 + 48) = v14;
      *(v16 + 72) = v18;
      *(v16 + 56) = v17;
      v19 = swift_task_alloc();
      *(v0 + 656) = v19;
      *v19 = v0;
      v19[1] = sub_19A458804;
      v20 = *(v0 + 408);

      return sub_19A379EE8(v20, &unk_19A581840, v16);
    }
  }

  else
  {
    sub_19A3EC19C(2);
    *(v0 + 616) = v1;
    if (v1)
    {
      goto LABEL_6;
    }

    v21 = *(v0 + 464);

    return MEMORY[0x1EEE6DFA0](sub_19A458044, v21, 0);
  }
}

uint64_t sub_19A458044()
{
  v1 = *(v0 + 678);
  v2 = *(v0 + 480);
  v3 = *(v0 + 464);
  v4 = *(v0 + 424);
  v5 = *(v0 + 400);
  sub_19A458E44(v3 + *(v0 + 472), v4, type metadata accessor for DefinitionSession);
  *(v4 + *(v5 + 88) + *(v2 + 52) + 2) = v1;

  return MEMORY[0x1EEE6DFA0](sub_19A4580FC, v3, 0);
}

uint64_t sub_19A4580FC()
{
  v2 = v0[58];
  v1 = v0[59];
  v3 = v0[53];
  swift_beginAccess();
  sub_19A37A5FC(v3, v2 + v1);
  swift_endAccess();
  sub_19A458EAC(v3, type metadata accessor for DefinitionSession);

  return MEMORY[0x1EEE6DFA0](sub_19A4581B0, 0, 0);
}

uint64_t sub_19A4581B0()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 328);
  v3 = (v2 + *(v1 + 52));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = *(v0 + 616);
    v7 = *(*(v0 + 368) + *(*(v0 + 352) + 32));
    *(v0 + 624) = v7;

    sub_19A3EC4B8(4, v5, v4);
    if (v6)
    {

      sub_19A458EAC(*(v0 + 368), type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
      v8 = *(v0 + 448);
      v9 = *(v0 + 432);
      v10 = *(v0 + 440);
      sub_19A459640("assignConfiguration", 19, 2);

      (*(v10 + 8))(v8, v9);

      v11 = *(v0 + 8);

      return v11();
    }

    else
    {
      v20 = swift_task_alloc();
      *(v0 + 632) = v20;
      *v20 = v0;
      v20[1] = sub_19A4584A4;
      v21 = *(v0 + 464);

      return sub_19A300EF0(v5, v4, v7, v21);
    }
  }

  else
  {
    v22 = *(v0 + 560);
    v23 = *(v0 + 576);
    v13 = *(v0 + 368);
    v14 = (v2 + *(v1 + 28));
    v15 = swift_task_alloc();
    v16 = *v14;
    v17 = v14[1];
    *(v0 + 648) = v15;
    *(v15 + 16) = v22;
    *(v15 + 32) = v23;
    *(v15 + 48) = v13;
    *(v15 + 72) = v17;
    *(v15 + 56) = v16;
    v18 = swift_task_alloc();
    *(v0 + 656) = v18;
    *v18 = v0;
    v18[1] = sub_19A458804;
    v19 = *(v0 + 408);

    return sub_19A379EE8(v19, &unk_19A581840, v15);
  }
}

uint64_t sub_19A4584A4()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_19A4586D4;
  }

  else
  {
    v2 = sub_19A4585D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19A4585D8()
{
  v9 = *(v0 + 560);
  v10 = *(v0 + 576);
  v1 = *(v0 + 368);
  v2 = (*(v0 + 328) + *(*(v0 + 496) + 28));
  v3 = swift_task_alloc();
  v4 = *v2;
  v5 = v2[1];
  *(v0 + 648) = v3;
  *(v3 + 16) = v9;
  *(v3 + 32) = v10;
  *(v3 + 48) = v1;
  *(v3 + 72) = v5;
  *(v3 + 56) = v4;
  v6 = swift_task_alloc();
  *(v0 + 656) = v6;
  *v6 = v0;
  v6[1] = sub_19A458804;
  v7 = *(v0 + 408);

  return sub_19A379EE8(v7, &unk_19A581840, v3);
}

uint64_t sub_19A4586D4()
{
  sub_19A458EAC(v0[46], type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  v1 = v0[56];
  v3 = v0[54];
  v2 = v0[55];
  sub_19A459640("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A458804()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  if (v0)
  {
    v3 = sub_19A458A68;
  }

  else
  {
    sub_19A458EAC(*(v2 + 408), type metadata accessor for DefinitionSession);

    v3 = sub_19A458940;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19A458940()
{
  v1 = v0[56];
  v2 = v0[54];
  v3 = v0[55];
  sub_19A458EAC(v0[46], type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  sub_19A459640("assignConfiguration", 19, 2);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A458A68()
{
  v1 = v0[46];

  sub_19A458EAC(v1, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  v2 = v0[56];
  v4 = v0[54];
  v3 = v0[55];
  sub_19A459640("assignConfiguration", 19, 2);

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19A458BA0()
{
  v1 = v0[56];
  v3 = v0[54];
  v2 = v0[55];
  sub_19A459640("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A458CB0()
{
  sub_19A458EAC(v0[46], type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  v1 = v0[56];
  v3 = v0[54];
  v2 = v0[55];
  sub_19A459640("assignConfiguration", 19, 2);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19A458DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A458E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A458EAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19A458F0C()
{
  result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V1(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for KeyboardEmojiGenerator.AssignmentConfiguration_V2(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_19A458FA8()
{
  sub_19A459248(319, &qword_1EAF9F410, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  if (v0 <= 0x3F)
  {
    sub_19A459530(319, &qword_1EAF9F408, &type metadata for KeyboardEmojiGenerator.DescriptionAssignmentInteractable, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_19A459530(319, &qword_1EAF9F0F8, &type metadata for Image, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_19A459530(319, &qword_1EAF9F400, &type metadata for KeyboardEmojiGenerator.ConditioningImageAssignmentOptions, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_19A3B12E0();
          if (v4 <= 0x3F)
          {
            sub_19A459530(319, &qword_1EAF9F210, &type metadata for Gender, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_19A459530(319, &qword_1EAF9F1D8, &type metadata for SkinTone, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_19A459530(319, &qword_1ED8255C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_19A459530(319, &qword_1ED825598, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    sub_19A459248(319, &qword_1EAF9F6F8, type metadata accessor for ImageVariations);
                    if (v9 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_19A459248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_19A57378C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_19A4592C4()
{
  sub_19A459248(319, &qword_1EAF9F410, type metadata accessor for KeyboardEmojiGenerator.DescriptionAssignmentOptions);
  if (v0 <= 0x3F)
  {
    sub_19A459530(319, &qword_1EAF9F408, &type metadata for KeyboardEmojiGenerator.DescriptionAssignmentInteractable, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_19A459530(319, &qword_1EAF9F230, &type metadata for Image, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_19A459530(319, &qword_1EAF9F400, &type metadata for KeyboardEmojiGenerator.ConditioningImageAssignmentOptions, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_19A3B12E0();
          if (v4 <= 0x3F)
          {
            sub_19A459530(319, &qword_1EAF9F210, &type metadata for Gender, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_19A459530(319, &qword_1EAF9F1D8, &type metadata for SkinTone, MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
              {
                sub_19A459530(319, &qword_1ED8255C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  sub_19A459530(319, &qword_1ED825598, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_19A459530(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_19A4595D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1148);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19A459640(const char *a1, uint64_t a2, char a3)
{
  if (qword_1ED824BA8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A57236C();
  __swift_project_value_buffer(v5, qword_1ED82BD30);
  v6 = sub_19A57234C();
  v7 = sub_19A57231C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_19A57239C();
  v11 = sub_19A57360C();
  result = sub_19A57376C();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v11;
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v23;
LABEL_11:
      v13 = sub_19A57237C();
      v14 = *(v13 - 8);
      MEMORY[0x1EEE9AC00](v13);
      v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];

      sub_19A5723CC();

      v17 = (*(v14 + 88))(v16, v13);
      if (MEMORY[0x1E69E93E0] && v17 == *MEMORY[0x1E69E93E0])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v14 + 8))(v16, v13);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_19A5722FC();
      _os_signpost_emit_with_name_impl(&dword_19A2DE000, v6, v22, v20, a1, v18, v19, 2u);
      MEMORY[0x19A902C50](v19, -1, -1);
LABEL_16:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_19A459938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v110 = &v80 - v6;
  v113 = sub_19A57102C();
  v87 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v91 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_19A570B4C();
  v107 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_19A570B2C();
  v9 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0768);
  MEMORY[0x1EEE9AC00](v86);
  v12 = &v80 - v11;
  v13 = sub_19A570B5C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v85 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v101 = &v80 - v17;
  v84 = sub_19A570CEC();
  v106 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_19A570BEC();
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA01D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v98 = &v80 - v21;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0020);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103 - 8);
  v97 = &v80 - v22;
  v23 = *(v2 + 24);
  v88 = a2;
  result = sub_19A39A7B0(a1, a2);
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = 0;
    v27 = (v23 + 32);
    v28 = v25 - 1;
    v29 = MEMORY[0x1E69E7CC0];
    do
    {
      v30 = *(v23 + 16);
      v31 = &v27[8 * v26];
      v32 = v26;
      while (1)
      {
        if (v32 >= v30)
        {
          __break(1u);
          return result;
        }

        v33 = v31[3];
        v34 = *v31;
        v35 = v31[1];
        v118 = v31[2];
        v119 = v33;
        v116 = v34;
        v117 = v35;
        v26 = v32 + 1;
        if (v35)
        {
          break;
        }

        v31 += 4;
        ++v32;
        if (v25 == v26)
        {
          goto LABEL_15;
        }
      }

      v36 = v28;
      v104 = v27;
      v96 = v14;
      sub_19A37820C(&v116, v115);
      result = swift_isUniquelyReferenced_nonNull_native();
      *&v114 = v29;
      v90 = v9;
      v37 = v13;
      if ((result & 1) == 0)
      {
        result = sub_19A322660(0, *(v29 + 16) + 1, 1);
        v29 = v114;
      }

      v28 = v36;
      v39 = *(v29 + 16);
      v38 = *(v29 + 24);
      v27 = v104;
      if (v39 >= v38 >> 1)
      {
        result = sub_19A322660((v38 > 1), v39 + 1, 1);
        v28 = v36;
        v27 = v104;
        v29 = v114;
      }

      *(v29 + 16) = v39 + 1;
      v40 = (v29 + (v39 << 6));
      v41 = v116;
      v42 = v117;
      v43 = v119;
      v40[4] = v118;
      v40[5] = v43;
      v40[2] = v41;
      v40[3] = v42;
      v13 = v37;
      v9 = v90;
      v14 = v96;
    }

    while (v28 != v32);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  v96 = *(v29 + 16);
  if (!v96)
  {
  }

  v44 = 0;
  v94 = v29 + 32;
  v93 = *(v102 + 16);
  v102 += 16;
  v92 = (v105 + 48);
  v82 = v106 + 1;
  v81 = (v14 + 16);
  v45 = (v107 + 1);
  v107 = (v9 + 2);
  v106 = (v9 + 1);
  v46 = (v87 + 48);
  v90 = (v87 + 32);
  v80 = (v14 + 8);
  v47 = v88;
  v95 = v29;
  do
  {
    v105 = v44;
    v48 = (v94 + (v44 << 6));
    v49 = *v48;
    v50 = v48[1];
    v51 = v48[3];
    v118 = v48[2];
    v119 = v51;
    v116 = v49;
    v117 = v50;
    v114 = v51;
    v93(v99, v47, v100);
    sub_19A37820C(&v116, v115);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF9FD58);
    sub_19A45A6F4(&qword_1EAF9F0B8, &qword_1EAF9FD58);
    sub_19A45A748(&qword_1ED825300, MEMORY[0x1E6968848]);
    v52 = v98;
    v53 = v103;
    sub_19A57347C();
    if ((*v92)(v52, 1, v53) == 1)
    {
      sub_19A378268(&v116);
      v54 = v52;
      v55 = &qword_1EAFA01D0;
    }

    else
    {
      sub_19A3367F4(v52, v97);
      v56 = sub_19A45A6F4(&qword_1ED823F20, &qword_1EAFA0020);
      v57 = v83;
      v89 = v56;
      sub_19A570C3C();
      v58 = v101;
      sub_19A570CDC();
      (*v82)(v57, v84);
      (*v81)(v85, v58, v13);
      v59 = MEMORY[0x1E69687C8];
      sub_19A45A748(&qword_1ED825318, MEMORY[0x1E69687C8]);
      sub_19A572FAC();
      sub_19A45A748(&qword_1ED825310, v59);
      v104 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v60 = v111;
        sub_19A57341C();
        sub_19A45A748(&qword_1ED825320, MEMORY[0x1E69687B0]);
        v61 = v112;
        v62 = sub_19A572C2C();
        (*v45)(v60, v61);
        if (v62)
        {
          break;
        }

        v63 = sub_19A57345C();
        v64 = v13;
        v65 = v108;
        v66 = v109;
        (*v107)(v108);
        v63(v115, 0);
        v67 = v64;
        sub_19A57342C();
        sub_19A342038();
        v68 = v110;
        sub_19A570B3C();
        v69 = v68;
        (*v106)(v65, v66);
        if ((*v46)(v68, 1, v113) == 1)
        {
          sub_19A2F3FA0(v68, &qword_1EAF9FD80);
          v13 = v67;
        }

        else
        {
          v70 = *v90;
          (*v90)(v91, v69, v113);
          v71 = v104;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v71 = sub_19A31D0E0(0, v71[2] + 1, 1, v71);
          }

          v13 = v67;
          v73 = v71[2];
          v72 = v71[3];
          if (v73 >= v72 >> 1)
          {
            v71 = sub_19A31D0E0(v72 > 1, v73 + 1, 1, v71);
          }

          v71[2] = v73 + 1;
          v74 = (*(v87 + 80) + 32) & ~*(v87 + 80);
          v104 = v71;
          v70(v71 + v74 + *(v87 + 72) * v73, v91, v113);
        }
      }

      sub_19A2F3FA0(v12, &qword_1EAFA0768);
      (*v80)(v101, v13);
      v75 = v104[2];

      if (v75)
      {
        sub_19A2F3FA0(v97, &qword_1EAFA0020);
        sub_19A378268(&v116);
        v47 = v88;
        goto LABEL_32;
      }

      v76 = v117;
      v77 = v97;
      v78 = v88;
      v79 = sub_19A570C2C();
      LODWORD(v114) = v76;
      v47 = v78;
      BYTE4(v114) = 0;
      sub_19A378428();
      sub_19A570D0C();
      v79(v115, 0);
      sub_19A378268(&v116);
      v54 = v77;
      v55 = &qword_1EAFA0020;
    }

    sub_19A2F3FA0(v54, v55);
LABEL_32:
    v44 = v105 + 1;
    if (v105 + 1 == v96)
    {
    }
  }

  while (v44 < *(v95 + 16));
  __break(1u);
}

uint64_t sub_19A45A6F4(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_19A45A748(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A45A790@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_19A572A2C();
  MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  v5 = v1[1];
  (*(v7 + 104))(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C6220]);
  sub_19A356EC8(v6, v5);
  sub_19A572A5C();
  v8 = *MEMORY[0x1E69C6338];
  v9 = sub_19A572A4C();
  return (*(*(v9 - 8) + 104))(a1, v8, v9);
}

char *sub_19A45A8C0(uint64_t a1)
{
  v3 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      goto LABEL_6;
    }

    v4 = v1;
    v5 = &selRef_initWithCVPixelBuffer_;
  }

  else
  {
    v4 = v1;
    v5 = &selRef_initWithCGImage_;
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E695F658]) *v5];

  v3 = v6;
  v1 = v4;
LABEL_6:
  sub_19A404ED0(2048);
  v8 = v7;

  if (v1)
  {
    return v2;
  }

  result = [v8 colorSpace];
  if (!result)
  {
    result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (!result)
    {
      goto LABEL_29;
    }
  }

  v10 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A576E10;
  sub_19A572CFC();
  v12 = sub_19A572CCC();

  *(inited + 32) = v12;
  *(inited + 40) = 0x3FE3333333333333;
  v13 = sub_19A330F40(inited);
  swift_setDeallocating();
  sub_19A45ACE8(inited + 32);
  v14 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  v2 = sub_19A46F42C(v13);

  type metadata accessor for CIImageRepresentationOption(0);
  sub_19A45AD50(&qword_1EAF9FB18, type metadata accessor for CIImageRepresentationOption);
  v15 = sub_19A572ADC();

  v16 = [v14 JPEGRepresentationOfImage:v8 colorSpace:v10 options:v15];

  if (!v16)
  {
    type metadata accessor for GeneratorError(0);
    sub_19A45AD50(&unk_1EAFA1A00, type metadata accessor for GeneratorError);
    swift_allocError();
    *v24 = 0xD00000000000003BLL;
    v24[1] = 0x800000019A59A600;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return v2;
  }

  v2 = sub_19A570F2C();
  v18 = v17;

  if (qword_1ED824050 != -1)
  {
    swift_once();
  }

  v19 = sub_19A5723FC();
  __swift_project_value_buffer(v19, qword_1ED82BCF0);
  sub_19A356EC8(v2, v18);
  v20 = sub_19A5723DC();
  v21 = sub_19A57354C();
  if (!os_log_type_enabled(v20, v21))
  {
    sub_19A33EFC4(v2, v18);
LABEL_26:

    return v2;
  }

  result = swift_slowAlloc();
  *result = 134349056;
  v22 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_25;
    }

    v26 = *(v2 + 16);
    v25 = *(v2 + 24);
    v27 = __OFSUB__(v25, v26);
    v23 = v25 - v26;
    if (!v27)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v22)
  {
    v23 = BYTE6(v18);
LABEL_25:
    *(result + 4) = v23;
    v28 = result;
    sub_19A33EFC4(v2, v18);
    _os_log_impl(&dword_19A2DE000, v20, v21, "PromptImage: Size of compressed image: %{public}ld", v28, 0xCu);
    MEMORY[0x19A902C50](v28, -1, -1);
    goto LABEL_26;
  }

  LODWORD(v23) = HIDWORD(v2) - v2;
  if (!__OFSUB__(HIDWORD(v2), v2))
  {
    v23 = v23;
    goto LABEL_25;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_19A45ACE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19A45AD50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_19A45ADB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_19A45AE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_19A45AE64()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 thermalState];

  if (v1 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE700000000000000;
      v3 = 0x73756F69726573;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 0xE800000000000000;
      v3 = 0x6C61636974697263;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (!v1)
  {
    v2 = 0xE700000000000000;
    v3 = 0x6C616E696D6F6ELL;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE400000000000000;
  v3 = 1919508838;
LABEL_11:
  sub_19A57395C();

  MEMORY[0x19A900A50](v3, v2);

  return 0xD000000000000011;
}

uint64_t sub_19A45B024@<X0>(void *a1@<X0>, void (*a2)(void)@<X1>, unint64_t *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v62[1] = a6;
  v76 = a4;
  v77 = a5;
  v74 = a2;
  v75 = a3;
  v78 = a1;
  v73 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0628);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = v62 - v8;
  v66 = sub_19A5724AC();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFA26E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = v62 - v11;
  v12 = sub_19A57246C();
  v70 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v62[0] = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_19A573AFC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v69 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v62 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E78);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v72 = v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = v62 - v29;
  sub_19A57087C();
  swift_allocObject();
  v31 = sub_19A57086C();
  sub_19A573AEC();
  v82 = v30;
  sub_19A33546C(v30, v28, &qword_1EAFA1E78);
  v32 = *(v15 + 48);
  v33 = v32(v28, 1, v14);
  v71 = v12;
  v68 = v15;
  if (v33 == 1)
  {
    v34 = v14;
    sub_19A2F3FA0(v28, &qword_1EAFA1E78);
  }

  else
  {
    (*(v15 + 32))(v22, v28, v14);
    (*(v15 + 16))(v20, v22, v14);
    v81[3] = v12;
    __swift_allocate_boxed_opaque_existential_1(v81);
    sub_19A57245C();
    v35 = sub_19A57084C();
    sub_19A49F988(v81, v20);
    v35(v80, 0);
    v34 = v14;
    (*(v15 + 8))(v22, v14);
  }

  v74(0);
  sub_19A46BC78(v75, 255, v76);
  v36 = v79;
  v37 = sub_19A57083C();
  v39 = v82;
  if (v36)
  {
    sub_19A2F3FA0(v82, &qword_1EAFA1E78);
  }

  v41 = v37;
  v42 = v38;
  v79 = v31;
  sub_19A356EC8(v37, v38);
  v78 = sub_19A45BF7C(v41, v42, v41, v42);
  v43 = v72;
  sub_19A33546C(v39, v72, &qword_1EAFA1E78);
  v44 = v34;
  if (v32(v43, 1, v34) == 1)
  {
    v45 = &qword_1EAFA1E78;
    v46 = v43;
  }

  else
  {
    v47 = v68;
    v48 = v69;
    (*(v68 + 32))(v69, v43, v44);
    v49 = sub_19A57085C();
    if (*(v49 + 16) && (v50 = sub_19A31FA78(v48), (v51 & 1) != 0))
    {
      v77 = v44;
      sub_19A334618(*(v49 + 56) + 32 * v50, v81);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E80);
      v52 = v67;
      v53 = v71;
      v54 = swift_dynamicCast();
      v55 = v70;
      (*(v70 + 56))(v52, v54 ^ 1u, 1, v53);
      if ((*(v55 + 48))(v52, 1, v53) != 1)
      {
        v56 = v62[0];
        v57 = (*(v55 + 32))(v62[0], v52, v53);
        MEMORY[0x1EEE9AC00](v57);
        v62[-2] = v78;
        v58 = v63;
        v59 = v66;
        sub_19A57244C();
        v60 = v65;
        v61 = v64;
        (*(v65 + 16))(v64, v58, v59);
        (*(v60 + 56))(v61, 0, 1, v59);
        sub_19A571C3C();
        swift_unknownObjectRelease();

        sub_19A33EFC4(v41, v42);
        (*(v60 + 8))(v58, v59);
        (*(v70 + 8))(v56, v71);
        v39 = v82;
        (*(v47 + 8))(v69, v77);
        return sub_19A2F3FA0(v39, &qword_1EAFA1E78);
      }

      (*(v47 + 8))(v48, v77);
    }

    else
    {

      (*(v47 + 8))(v48, v44);
      v52 = v67;
      (*(v70 + 56))(v67, 1, 1, v71);
    }

    v45 = &unk_1EAFA26E0;
    v46 = v52;
  }

  sub_19A2F3FA0(v46, v45);
  sub_19A356EC8(v41, v42);
  MEMORY[0x19A8FF7D0](v41, v42);
  swift_unknownObjectRelease();

  sub_19A33EFC4(v41, v42);
  return sub_19A2F3FA0(v39, &qword_1EAFA1E78);
}

uint64_t sub_19A45B964@<X0>(uint64_t (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v48 = a5;
  length[4] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA0628);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_19A573AFC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v43 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFA1E78);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v42 - v19;
  v44 = a1(0);
  sub_19A5707EC();
  swift_allocObject();
  v51 = sub_19A5707DC();
  v49 = sub_19A571C4C();
  v22 = v21;
  sub_19A573AEC();
  v50 = v20;
  v23 = v20;
  v24 = v9;
  v25 = v10;
  sub_19A33546C(v23, v18, &qword_1EAFA1E78);
  if ((*(v10 + 48))(v18, 1, v24) == 1)
  {
    v26 = &qword_1EAFA1E78;
    v27 = v18;
LABEL_5:
    sub_19A2F3FA0(v27, v26);
    goto LABEL_6;
  }

  (*(v10 + 32))(v14, v18, v24);
  sub_19A571C2C();
  v28 = sub_19A5724AC();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v8, 1, v28) == 1)
  {
    (*(v10 + 8))(v14, v24);
    v26 = &qword_1EAFA0628;
    v27 = v8;
    goto LABEL_5;
  }

  v34 = sub_19A57248C();
  (*(v29 + 8))(v8, v28);
  v35 = MEMORY[0x19A902F60](v34);
  if (v35 != sub_19A57243C())
  {
    sub_19A3577FC();
    swift_allocError();
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 4;
    swift_willThrow();
    sub_19A33EFB0(v49, v22);
    swift_unknownObjectRelease();

    (*(v25 + 8))(v14, v24);
    return sub_19A2F3FA0(v50, &qword_1EAFA1E78);
  }

  v37 = v43;
  (*(v25 + 16))(v43, v14, v24);
  length[3] = sub_19A57246C();
  __swift_allocate_boxed_opaque_existential_1(length);
  swift_unknownObjectRetain();
  sub_19A57247C();
  v38 = sub_19A5707CC();
  sub_19A49F988(length, v37);
  v38(v52, 0);
  length[0] = 0;
  data = xpc_dictionary_get_data(v34, "DATA", length);
  if (data)
  {
    v30 = sub_19A356E18(data, length[0]);
    v40 = v14;
    v32 = v41;
    sub_19A33EFB0(v49, v22);
    swift_unknownObjectRelease();
    (*(v25 + 8))(v40, v24);
    sub_19A46BC78(v45, 255, v46);
    sub_19A5707BC();
    goto LABEL_9;
  }

  (*(v25 + 8))(v14, v24);
  swift_unknownObjectRelease();
LABEL_6:
  v30 = v49;
  if (v22 >> 60 != 15)
  {
    sub_19A46BC78(v45, 255, v46);
    sub_19A5707BC();
    v32 = v22;
LABEL_9:
    sub_19A2F3FA0(v50, &qword_1EAFA1E78);

    return sub_19A33EFC4(v30, v32);
  }

  sub_19A3577FC();
  swift_allocError();
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 4;
  swift_willThrow();

  return sub_19A2F3FA0(v50, &qword_1EAFA1E78);
}

xpc_object_t sub_19A45BF7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  bytes[2] = *MEMORY[0x1E69E9840];
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    goto LABEL_8;
  }

  if (v6)
  {
    if (a1 <= a1 >> 32)
    {
      v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = a1;
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_29;
  }

  bytes[0] = a1;
  LOWORD(bytes[1]) = a2;
  BYTE2(bytes[1]) = BYTE2(a2);
  BYTE3(bytes[1]) = BYTE3(a2);
  BYTE4(bytes[1]) = BYTE4(a2);
  v7 = a4 >> 62;
  BYTE5(bytes[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      v11 = 0;
      goto LABEL_26;
    }

    v13 = *(a3 + 16);
    v12 = *(a3 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      goto LABEL_26;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (!v7)
  {
LABEL_15:
    v11 = BYTE6(a4);
LABEL_26:
    v9 = xpc_data_create(bytes, v11);
    sub_19A33EFC4(a3, a4);
    return v9;
  }

  LODWORD(v6) = HIDWORD(a3) - a3;
  if (!__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_8:
  if (v6 != 2)
  {
    v10 = a4 >> 62;
    memset(bytes, 0, 14);
    if ((a4 >> 62) > 1)
    {
      v11 = 0;
      if (v10 != 2)
      {
        goto LABEL_26;
      }

      v15 = *(a3 + 16);
      v14 = *(a3 + 24);
      v11 = v14 - v15;
      if (!__OFSUB__(v14, v15))
      {
        goto LABEL_26;
      }

      __break(1u);
    }

    else if (!v10)
    {
      goto LABEL_15;
    }

    LODWORD(v6) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_24:
      v11 = v6;
      goto LABEL_26;
    }

LABEL_30:
    __break(1u);
  }

  a1 = *(a1 + 16);
  v8 = a2 & 0x3FFFFFFFFFFFFFFFLL;
LABEL_12:
  v9 = sub_19A46AE74(a1, v8, a3, a4);
  sub_19A33EFC4(a3, a4);
  return v9;
}