uint64_t sub_1A473084C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  if (v7 <= *(v8 + 84))
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = v7;
  }

  v11 = *(v6 + 80);
  v12 = *(v6 + 64);
  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  if (v10 <= 0xFE)
  {
    v15 = 254;
  }

  else
  {
    v15 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v16 = ((v12 + ((v11 + 9) & ~v11) + v13) & ~v13) + v14;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if (v10 > 0xFE)
      {
        v25 = (a1 + v11 + 9) & ~v11;
        if (v7 == v15)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v25 + v12 + v13) & ~v13;

          return v27(v28);
        }
      }

      else
      {
        v24 = *(a1 + 8);
        if (v24 > 1)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v15 + (v23 | v21) + 1;
}

void sub_1A4730B70(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  if (v9 <= *(v10 + 84))
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 64);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  if (v12 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v12;
  }

  v18 = ((v14 + ((v13 + 9) & ~v13) + v15) & ~v15) + v16;
  if (a3 <= v17)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v17 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v17 < a2)
  {
    v20 = ~v17 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_53:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v12 > 0xFE)
  {
    v25 = &a1[v13 + 9] & ~v13;
    if (v9 == v17)
    {
      v26 = *(v29 + 56);

      v26(v25, a2, v9, v7);
    }

    else
    {
      v27 = *(v11 + 56);
      v28 = (v25 + v14 + v15) & ~v15;

      v27(v28, a2);
    }
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

unint64_t sub_1A4730F78()
{
  result = qword_1EB140DF0;
  if (!qword_1EB140DF0)
  {
    sub_1A47315D0(255, &unk_1EB125548, &type metadata for LemonadeDetailsNavigationType, MEMORY[0x1E69E6720]);
    sub_1A3EE998C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB140DF0);
  }

  return result;
}

void sub_1A4731014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A5243124();
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4731078()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for LemonadeDetailsNavigationContextMenu();
  return (*(v2 + 192))(v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(v3 + 40), v1, v2);
}

void sub_1A473110C()
{
  if (!qword_1EB122A58)
  {
    sub_1A472EE20(255, &qword_1EB122A60, &unk_1EB122A68, MEMORY[0x1E697F960], sub_1A4731014);
    sub_1A5242004();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB122A58);
    }
  }
}

uint64_t sub_1A47311B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A472EE20(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A4731210(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A4731324@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = ((*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80)) + *(*(v3 - 8) + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  if ((*(v4 + 128))(v1 + v7, v3, v4))
  {
    v9 = *(v8 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);
    (*(v4 + 120))(v1 + v7, v9, v3, v4);
    (*(v4 + 112))(v1 + v7, v9, v3, v4);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = type metadata accessor for LemonadeNavigationDestination();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1A473155C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1A472EE20(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1A47315D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroyTm_75()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for LemonadeDetailsNavigationButton();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[9], v1);

  if (*(v3 + v2[11]))
  {
  }

  v4 = v2[13];
  sub_1A4729334(0, &qword_1EB128A98, MEMORY[0x1E69C24E0], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1A52434D4();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v2[14];
  sub_1A4729334(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A3D63A8C(0);
    v8 = v7;
    v9 = *(v7 - 8);
    if (!(*(v9 + 48))(v3 + v6, 1, v7))
    {
      (*(v9 + 8))(v3 + v6, v8);
    }
  }

  else
  {
  }

  v10 = v2[15];
  v11 = sub_1A52439F4();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1A4731978(uint64_t a1)
{
  sub_1A472A0BC(0, &qword_1EB1238D8, sub_1A472A09C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A47319F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4731A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A4729334(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A4731AC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4731B28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4731B90()
{
  result = qword_1EB1210D0;
  if (!qword_1EB1210D0)
  {
    sub_1A4729334(255, &qword_1EB1210C8, sub_1A473110C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1210D0);
  }

  return result;
}

double sub_1A4731C6C()
{
  swift_beginAccess();
  v0 = 1.0 / *&qword_1EB140DF8;
  swift_beginAccess();
  v1 = v0 * *&qword_1EB140E00;
  swift_beginAccess();
  return v1 + 1.0 / *&qword_1EB140E08;
}

void sub_1A4731D0C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4731D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1120))();
  *a2 = result;
  return result;
}

void (*sub_1A4731F6C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A47320C0;
}

uint64_t sub_1A47320CC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 7144))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 24, a1);
}

void (*sub_1A4732234(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A4732388;
}

uint64_t sub_1A4732394@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 7144))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 64, a1);
}

void (*sub_1A47324FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A45872A4();
  return sub_1A4732650;
}

uint64_t sub_1A47326AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 7144))();

  swift_beginAccess();
  return sub_1A3C341C8(v1 + 104, a1);
}

uint64_t sub_1A4732814(uint64_t a1)
{
  swift_getKeyPath();
  (*(*v1 + 7152))();

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_1A47328B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473265C();
  return sub_1A4732A08;
}

float sub_1A4732A14()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[36];
}

uint64_t sub_1A4732B38(float a1)
{
  result = swift_beginAccess();
  if (v1[36] == a1)
  {
    v1[36] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4732C44(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0C604();
  return sub_1A4732D98;
}

float sub_1A4732DF4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[37];
}

uint64_t sub_1A4732F18(float a1)
{
  result = swift_beginAccess();
  if (v1[37] == a1)
  {
    v1[37] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4733024(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4732DA4();
  return sub_1A4733178;
}

float sub_1A47331D4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[38];
}

uint64_t sub_1A47332F8(float a1)
{
  result = swift_beginAccess();
  if (v1[38] == a1)
  {
    v1[38] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4733404(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4733184();
  return sub_1A4733558;
}

float sub_1A47335B4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[39];
}

uint64_t sub_1A47336D8(float a1)
{
  result = swift_beginAccess();
  if (v1[39] == a1)
  {
    v1[39] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47337E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4733564();
  return sub_1A4733938;
}

float sub_1A4733944()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[40];
}

uint64_t sub_1A4733A68(float a1)
{
  result = swift_beginAccess();
  if (v1[40] == a1)
  {
    v1[40] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4733B74(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0CFEC();
  return sub_1A4733CC8;
}

float sub_1A4733D24()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[41];
}

uint64_t sub_1A4733E48(float a1)
{
  result = swift_beginAccess();
  if (v1[41] == a1)
  {
    v1[41] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4733F54(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4733CD4();
  return sub_1A47340A8;
}

float sub_1A4734104()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[42];
}

uint64_t sub_1A4734228(float a1)
{
  result = swift_beginAccess();
  if (v1[42] == a1)
  {
    v1[42] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4734334(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47340B4();
  return sub_1A4734488;
}

float sub_1A47344E4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[43];
}

uint64_t sub_1A4734608(float a1)
{
  result = swift_beginAccess();
  if (v1[43] == a1)
  {
    v1[43] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4734714(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4734494();
  return sub_1A4734868;
}

float sub_1A4734874()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[44];
}

uint64_t sub_1A4734998(float a1)
{
  result = swift_beginAccess();
  if (v1[44] == a1)
  {
    v1[44] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4734AA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0D400();
  return sub_1A4734BF8;
}

float sub_1A4734C54()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[45];
}

uint64_t sub_1A4734D78(float a1)
{
  result = swift_beginAccess();
  if (v1[45] == a1)
  {
    v1[45] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4734E84(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4734C04();
  return sub_1A4734FD8;
}

float sub_1A4735034()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[46];
}

uint64_t sub_1A4735158(float a1)
{
  result = swift_beginAccess();
  if (v1[46] == a1)
  {
    v1[46] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4735264(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4734FE4();
  return sub_1A47353B8;
}

float sub_1A4735414()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[47];
}

uint64_t sub_1A4735538(float a1)
{
  result = swift_beginAccess();
  if (v1[47] == a1)
  {
    v1[47] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4735644(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47353C4();
  return sub_1A4735798;
}

float sub_1A47357F4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[48];
}

uint64_t sub_1A4735918(float a1)
{
  result = swift_beginAccess();
  if (v1[48] == a1)
  {
    v1[48] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4735A24(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47357A4();
  return sub_1A4735B78;
}

float sub_1A4735BD4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[49];
}

uint64_t sub_1A4735CF8(float a1)
{
  result = swift_beginAccess();
  if (v1[49] == a1)
  {
    v1[49] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4735E04(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4735B84();
  return sub_1A4735F58;
}

float sub_1A4735F64()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[50];
}

uint64_t sub_1A4736088(float a1)
{
  result = swift_beginAccess();
  if (v1[50] == a1)
  {
    v1[50] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4736194(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0DC68();
  return sub_1A47362E8;
}

float sub_1A4736344()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[51];
}

uint64_t sub_1A4736468(float a1)
{
  result = swift_beginAccess();
  if (v1[51] == a1)
  {
    v1[51] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4736574(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47362F4();
  return sub_1A47366C8;
}

float sub_1A47366D4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[52];
}

uint64_t sub_1A47367F8(float a1)
{
  result = swift_beginAccess();
  if (v1[52] == a1)
  {
    v1[52] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4736904(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E0BC();
  return sub_1A4736A58;
}

float sub_1A4736AB4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[53];
}

uint64_t sub_1A4736BD8(float a1)
{
  result = swift_beginAccess();
  if (v1[53] == a1)
  {
    v1[53] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4736CE4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4736A64();
  return sub_1A4736E38;
}

uint64_t sub_1A4736E44()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[216];
}

uint64_t sub_1A4736EC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2176))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4736F6C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[216] == v2)
  {
    v1[216] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473706C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E488();
  return sub_1A47371C0;
}

uint64_t sub_1A473721C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[217];
}

uint64_t sub_1A473729C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2224))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4737344(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[217] == v2)
  {
    v1[217] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4737444(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47371CC();
  return sub_1A4737598;
}

uint64_t sub_1A47375F4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[218];
}

uint64_t sub_1A4737674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2272))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473771C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[218] == v2)
  {
    v1[218] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473781C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47375A4();
  return sub_1A4737970;
}

uint64_t sub_1A47379CC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[219];
}

uint64_t sub_1A4737A4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2320))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4737AF4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[219] == v2)
  {
    v1[219] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4737BF4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473797C();
  return sub_1A4737D48;
}

uint64_t sub_1A4737DA4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[220];
}

uint64_t sub_1A4737E24@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A4737ECC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[220] == v2)
  {
    v1[220] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4737FCC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4737D54();
  return sub_1A4738120;
}

uint64_t sub_1A473817C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[221];
}

uint64_t sub_1A47381FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2416))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47382A4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[221] == v2)
  {
    v1[221] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47383A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473812C();
  return sub_1A47384F8;
}

uint64_t sub_1A4738554()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[222];
}

uint64_t sub_1A47385D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 2464))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473867C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[222] == v2)
  {
    v1[222] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473877C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4738504();
  return sub_1A47388D0;
}

double sub_1A47388DC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[28];
}

uint64_t sub_1A4738A00(double a1)
{
  result = swift_beginAccess();
  if (v1[28] == a1)
  {
    v1[28] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4738B08(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0E85C();
  return sub_1A4738C5C;
}

id sub_1A4738C68()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[29];

  return v1;
}

uint64_t sub_1A4738CF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2560))();
  *a2 = result;
  return result;
}

void sub_1A4738DA8(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[29];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[29];
    v2[29] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

void (*sub_1A4738EE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0EFFC();
  return sub_1A4739034;
}

double sub_1A4739090()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[30];
}

uint64_t sub_1A47391B4(double a1)
{
  result = swift_beginAccess();
  if (v1[30] == a1)
  {
    v1[30] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47392BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4739040();
  return sub_1A4739410;
}

id sub_1A473946C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[31];

  return v1;
}

uint64_t sub_1A47394FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2656))();
  *a2 = result;
  return result;
}

void sub_1A47395AC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[31];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[31];
    v2[31] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

void (*sub_1A47396E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473941C();
  return sub_1A4739838;
}

id sub_1A4739844()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[32];

  return v1;
}

uint64_t sub_1A47398D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2704))();
  *a2 = result;
  return result;
}

void sub_1A4739984(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[32];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[32];
    v2[32] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

void (*sub_1A4739ABC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0F99C();
  return sub_1A4739C10;
}

float sub_1A4739C6C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[66];
}

uint64_t sub_1A4739D90(float a1)
{
  result = swift_beginAccess();
  if (v1[66] == a1)
  {
    v1[66] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4739E9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4739C1C();
  return sub_1A4739FF0;
}

float sub_1A473A04C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[67];
}

uint64_t sub_1A473A170(float a1)
{
  result = swift_beginAccess();
  if (v1[67] == a1)
  {
    v1[67] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473A27C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4739FFC();
  return sub_1A473A3D0;
}

float sub_1A473A42C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[68];
}

uint64_t sub_1A473A550(float a1)
{
  result = swift_beginAccess();
  if (v1[68] == a1)
  {
    v1[68] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473A65C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473A3DC();
  return sub_1A473A7B0;
}

float sub_1A473A80C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[69];
}

uint64_t sub_1A473A930(float a1)
{
  result = swift_beginAccess();
  if (v1[69] == a1)
  {
    v1[69] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473AA3C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473A7BC();
  return sub_1A473AB90;
}

float sub_1A473ABEC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[70];
}

uint64_t sub_1A473AD10(float a1)
{
  result = swift_beginAccess();
  if (v1[70] == a1)
  {
    v1[70] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473AE1C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473AB9C();
  return sub_1A473AF70;
}

float sub_1A473AFCC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[71];
}

uint64_t sub_1A473B0F0(float a1)
{
  result = swift_beginAccess();
  if (v1[71] == a1)
  {
    v1[71] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473B1FC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473AF7C();
  return sub_1A473B350;
}

float sub_1A473B3AC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[72];
}

uint64_t sub_1A473B4D0(float a1)
{
  result = swift_beginAccess();
  if (v1[72] == a1)
  {
    v1[72] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473B5DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473B35C();
  return sub_1A473B730;
}

float sub_1A473B78C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[73];
}

uint64_t sub_1A473B8B0(float a1)
{
  result = swift_beginAccess();
  if (v1[73] == a1)
  {
    v1[73] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473B9BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473B73C();
  return sub_1A473BB10;
}

float sub_1A473BB6C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[74];
}

uint64_t sub_1A473BC90(float a1)
{
  result = swift_beginAccess();
  if (v1[74] == a1)
  {
    v1[74] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473BD9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473BB1C();
  return sub_1A473BEF0;
}

uint64_t sub_1A473BF4C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[300];
}

uint64_t sub_1A473BFCC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3184))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473C074(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[300] == v2)
  {
    v1[300] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473C174(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473BEFC();
  return sub_1A473C2C8;
}

uint64_t sub_1A473C324()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[301];
}

uint64_t sub_1A473C3A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473C44C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[301] == v2)
  {
    v1[301] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473C54C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473C2D4();
  return sub_1A473C6A0;
}

uint64_t sub_1A473C6FC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[302];
}

uint64_t sub_1A473C77C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473C824(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[302] == v2)
  {
    v1[302] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473C924(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473C6AC();
  return sub_1A473CA78;
}

uint64_t sub_1A473CAD4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[303];
}

uint64_t sub_1A473CB54@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3328))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473CBFC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[303] == v2)
  {
    v1[303] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473CCFC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473CA84();
  return sub_1A473CE50;
}

uint64_t sub_1A473CEAC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[304];
}

uint64_t sub_1A473CF2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3376))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473CFD4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[304] == v2)
  {
    v1[304] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473D0D4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473CE5C();
  return sub_1A473D228;
}

double sub_1A473D284()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[39];
}

uint64_t sub_1A473D3A8(double a1)
{
  result = swift_beginAccess();
  if (v1[39] == a1)
  {
    v1[39] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473D4B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473D234();
  return sub_1A473D604;
}

double sub_1A473D660()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[40];
}

uint64_t sub_1A473D784(double a1)
{
  result = swift_beginAccess();
  if (v1[40] == a1)
  {
    v1[40] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473D88C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473D610();
  return sub_1A473D9E0;
}

float sub_1A473DA3C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[82];
}

uint64_t sub_1A473DB60(float a1)
{
  result = swift_beginAccess();
  if (v1[82] == a1)
  {
    v1[82] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473DC6C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473D9EC();
  return sub_1A473DDC0;
}

float sub_1A473DE1C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[83];
}

uint64_t sub_1A473DF40(float a1)
{
  result = swift_beginAccess();
  if (v1[83] == a1)
  {
    v1[83] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473E04C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473DDCC();
  return sub_1A473E1A0;
}

float sub_1A473E1FC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[84];
}

uint64_t sub_1A473E320(float a1)
{
  result = swift_beginAccess();
  if (v1[84] == a1)
  {
    v1[84] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473E42C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473E1AC();
  return sub_1A473E580;
}

double sub_1A473E5DC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[43];
}

uint64_t sub_1A473E700(double a1)
{
  result = swift_beginAccess();
  if (v1[43] == a1)
  {
    v1[43] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473E808(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473E58C();
  return sub_1A473E95C;
}

uint64_t sub_1A473E9B8()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[352];
}

uint64_t sub_1A473EA38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 3712))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A473EAE0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[352] == v2)
  {
    v1[352] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473EBE0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473E968();
  return sub_1A473ED34;
}

double sub_1A473ED90()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[45];
}

uint64_t sub_1A473EEB4(double a1)
{
  result = swift_beginAccess();
  if (v1[45] == a1)
  {
    v1[45] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473EFBC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473ED40();
  return sub_1A473F110;
}

double sub_1A473F16C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[46];
}

uint64_t sub_1A473F290(double a1)
{
  result = swift_beginAccess();
  if (v1[46] == a1)
  {
    v1[46] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473F398(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473F11C();
  return sub_1A473F4EC;
}

double sub_1A473F548()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[47];
}

uint64_t sub_1A473F66C(double a1)
{
  result = swift_beginAccess();
  if (v1[47] == a1)
  {
    v1[47] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473F774(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473F4F8();
  return sub_1A473F8C8;
}

double sub_1A473F8D4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[48];
}

uint64_t sub_1A473F9F8(double a1)
{
  result = swift_beginAccess();
  if (v1[48] == a1)
  {
    v1[48] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473FB00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A405F470();
  return sub_1A473FC54;
}

double sub_1A473FCB0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[49];
}

uint64_t sub_1A473FDD4(double a1)
{
  result = swift_beginAccess();
  if (v1[49] == a1)
  {
    v1[49] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A473FEDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A473FC60();
  return sub_1A4740030;
}

id sub_1A474008C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[50];

  return v1;
}

uint64_t sub_1A474011C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4000))();
  *a2 = result;
  return result;
}

void sub_1A47401CC(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[50];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[50];
    v2[50] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

void (*sub_1A4740304(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474003C();
  return sub_1A4740458;
}

double sub_1A47404B4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[51];
}

uint64_t sub_1A47405D8(double a1)
{
  result = swift_beginAccess();
  if (v1[51] == a1)
  {
    v1[51] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47406E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4740464();
  return sub_1A4740834;
}

double sub_1A4740890()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[52];
}

uint64_t sub_1A47409B4(double a1)
{
  result = swift_beginAccess();
  if (v1[52] == a1)
  {
    v1[52] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4740ABC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4740840();
  return sub_1A4740C10;
}

double sub_1A4740C6C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[53];
}

uint64_t sub_1A4740D90(double a1)
{
  result = swift_beginAccess();
  if (v1[53] == a1)
  {
    v1[53] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4740E98(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4740C1C();
  return sub_1A4740FEC;
}

id sub_1A4741048()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[54];

  return v1;
}

uint64_t sub_1A47410D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4192))();
  *a2 = result;
  return result;
}

void sub_1A4741188(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[54];
  sub_1A4751BB8();
  v5 = v4;
  v6 = sub_1A524DBF4();

  if (v6)
  {
    v7 = v2[54];
    v2[54] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    v10 = v2;
    v11 = a1;
    (*(*v2 + 7152))(v9);
  }
}

void (*sub_1A47412C0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4740FF8();
  return sub_1A4741414;
}

float sub_1A4741470()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[110];
}

uint64_t sub_1A4741594(float a1)
{
  result = swift_beginAccess();
  if (v1[110] == a1)
  {
    v1[110] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47416A0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4741420();
  return sub_1A47417F4;
}

float sub_1A4741850()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[111];
}

uint64_t sub_1A4741974(float a1)
{
  result = swift_beginAccess();
  if (v1[111] == a1)
  {
    v1[111] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4741A80(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4741800();
  return sub_1A4741BD4;
}

float sub_1A4741C30()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[112];
}

uint64_t sub_1A4741D54(float a1)
{
  result = swift_beginAccess();
  if (v1[112] == a1)
  {
    v1[112] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4741E60(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4741BE0();
  return sub_1A4741FB4;
}

float sub_1A4742010()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[113];
}

uint64_t sub_1A4742134(float a1)
{
  result = swift_beginAccess();
  if (v1[113] == a1)
  {
    v1[113] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4742240(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4741FC0();
  return sub_1A4742394;
}

float sub_1A47423F0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[114];
}

uint64_t sub_1A4742514(float a1)
{
  result = swift_beginAccess();
  if (v1[114] == a1)
  {
    v1[114] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4742620(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47423A0();
  return sub_1A4742774;
}

float sub_1A47427D0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[115];
}

uint64_t sub_1A47428F4(float a1)
{
  result = swift_beginAccess();
  if (v1[115] == a1)
  {
    v1[115] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4742A00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4742780();
  return sub_1A4742B54;
}

double sub_1A4742BB0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[58];
}

uint64_t sub_1A4742CD4(double a1)
{
  result = swift_beginAccess();
  if (v1[58] == a1)
  {
    v1[58] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4742DDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4742B60();
  return sub_1A4742F30;
}

double sub_1A4742F8C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[59];
}

uint64_t sub_1A47430B0(double a1)
{
  result = swift_beginAccess();
  if (v1[59] == a1)
  {
    v1[59] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47431B8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4742F3C();
  return sub_1A474330C;
}

double sub_1A4743368()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[60];
}

uint64_t sub_1A474348C(double a1)
{
  result = swift_beginAccess();
  if (v1[60] == a1)
  {
    v1[60] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4743594(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4743318();
  return sub_1A47436E8;
}

double sub_1A4743744()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[61];
}

uint64_t sub_1A4743868(double a1)
{
  result = swift_beginAccess();
  if (v1[61] == a1)
  {
    v1[61] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4743970(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47436F4();
  return sub_1A4743AC4;
}

double sub_1A4743B20()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[62];
}

uint64_t sub_1A4743C44(double a1)
{
  result = swift_beginAccess();
  if (v1[62] == a1)
  {
    v1[62] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4743D4C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4743AD0();
  return sub_1A4743EA0;
}

float sub_1A4743EFC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[126];
}

uint64_t sub_1A4744020(float a1)
{
  result = swift_beginAccess();
  if (v1[126] == a1)
  {
    v1[126] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474412C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4743EAC();
  return sub_1A4744280;
}

id sub_1A47442DC()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[64];

  return v1;
}

uint64_t sub_1A474436C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4816))();
  *a2 = result;
  return result;
}

void sub_1A474441C(void *a1)
{
  v2 = v1;
  v4 = (v1 + 512);
  swift_beginAccess();
  v5 = *(v1 + 512);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A4744558(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474428C();
  return sub_1A47446AC;
}

id sub_1A4744708()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[65];

  return v1;
}

uint64_t sub_1A4744798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4864))();
  *a2 = result;
  return result;
}

void sub_1A4744848(void *a1)
{
  v2 = v1;
  v4 = (v1 + 520);
  swift_beginAccess();
  v5 = *(v1 + 520);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A4744984(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47446B8();
  return sub_1A4744AD8;
}

id sub_1A4744B34()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[66];

  return v1;
}

uint64_t sub_1A4744BC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4912))();
  *a2 = result;
  return result;
}

void sub_1A4744C74(void *a1)
{
  v2 = v1;
  v4 = (v1 + 528);
  swift_beginAccess();
  v5 = *(v1 + 528);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A4744DB0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4744AE4();
  return sub_1A4744F04;
}

id sub_1A4744F60()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[67];

  return v1;
}

uint64_t sub_1A4744FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 4960))();
  *a2 = result;
  return result;
}

void sub_1A47450A0(void *a1)
{
  v2 = v1;
  v4 = (v1 + 536);
  swift_beginAccess();
  v5 = *(v1 + 536);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A47451DC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4744F10();
  return sub_1A4745330;
}

double sub_1A474538C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[68];
}

uint64_t sub_1A47454B0(double a1)
{
  result = swift_beginAccess();
  if (v1[68] == a1)
  {
    v1[68] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47455BC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474533C();
  return sub_1A4745710;
}

id sub_1A474576C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[69];

  return v1;
}

uint64_t sub_1A47457FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5056))();
  *a2 = result;
  return result;
}

void sub_1A47458AC(void *a1)
{
  v2 = v1;
  v4 = (v1 + 552);
  swift_beginAccess();
  v5 = *(v1 + 552);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A47459E8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474571C();
  return sub_1A4745B3C;
}

double sub_1A4745B98()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[70];
}

uint64_t sub_1A4745CBC(double a1)
{
  result = swift_beginAccess();
  if (v1[70] == a1)
  {
    v1[70] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4745DC8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4745B48();
  return sub_1A4745F1C;
}

id sub_1A4745F78()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[71];

  return v1;
}

uint64_t sub_1A4746008@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5152))();
  *a2 = result;
  return result;
}

void sub_1A47460B8(void *a1)
{
  v2 = v1;
  v4 = (v1 + 568);
  swift_beginAccess();
  v5 = *(v1 + 568);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A47461F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4745F28();
  return sub_1A4746348;
}

uint64_t sub_1A47463A4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[576];
}

uint64_t sub_1A4746424@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 5200))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A47464CC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[576] == v2)
  {
    v1[576] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47465CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4746354();
  return sub_1A4746720;
}

double sub_1A474677C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[73];
}

uint64_t sub_1A47468A0(double a1)
{
  result = swift_beginAccess();
  if (v1[73] == a1)
  {
    v1[73] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47469AC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474672C();
  return sub_1A4746B00;
}

id sub_1A4746B5C()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[74];

  return v1;
}

uint64_t sub_1A4746BEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5296))();
  *a2 = result;
  return result;
}

void sub_1A4746C9C(void *a1)
{
  v2 = v1;
  v4 = (v1 + 592);
  swift_beginAccess();
  v5 = *(v1 + 592);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A4746DD8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4746B0C();
  return sub_1A4746F2C;
}

id sub_1A4746F88()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[75];

  return v1;
}

uint64_t sub_1A4747018@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5344))();
  *a2 = result;
  return result;
}

void sub_1A47470C8(void *a1)
{
  v2 = v1;
  v4 = (v1 + 600);
  swift_beginAccess();
  v5 = *(v1 + 600);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A4747204(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4746F38();
  return sub_1A4747358;
}

double sub_1A47473B4()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[76];
}

uint64_t sub_1A47474D8(double a1)
{
  result = swift_beginAccess();
  if (v1[76] == a1)
  {
    v1[76] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47475E4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4747364();
  return sub_1A4747738;
}

double sub_1A4747794()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[77];
}

uint64_t sub_1A47478B8(double a1)
{
  result = swift_beginAccess();
  if (v1[77] == a1)
  {
    v1[77] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47479C4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4747744();
  return sub_1A4747B18;
}

float sub_1A4747B74()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[156];
}

uint64_t sub_1A4747C98(float a1)
{
  result = swift_beginAccess();
  if (v1[156] == a1)
  {
    v1[156] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4747DA4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4747B24();
  return sub_1A4747EF8;
}

id sub_1A4747F54()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  v1 = v0[79];

  return v1;
}

uint64_t sub_1A4747FE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 5536))();
  *a2 = result;
  return result;
}

void sub_1A4748094(void *a1)
{
  v2 = v1;
  v4 = (v1 + 632);
  swift_beginAccess();
  v5 = *(v1 + 632);
  sub_1A4751BB8();
  v6 = v5;
  v7 = sub_1A524DBF4();

  if (v7)
  {
    v8 = *v4;
    *v4 = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    v11 = v2;
    v12 = a1;
    (*(*v2 + 7152))(v10);
  }
}

void (*sub_1A47481D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4747F04();
  return sub_1A4748324;
}

float sub_1A4748380()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[160];
}

uint64_t sub_1A47484A4(float a1)
{
  result = swift_beginAccess();
  if (v1[160] == a1)
  {
    v1[160] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A47485B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4748330();
  return sub_1A4748704;
}

double sub_1A4748760()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[81];
}

uint64_t sub_1A4748884(double a1)
{
  result = swift_beginAccess();
  if (v1[81] == a1)
  {
    v1[81] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4748990(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4748710();
  return sub_1A4748AE4;
}

double sub_1A4748B40()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[82];
}

uint64_t sub_1A4748C64(double a1)
{
  result = swift_beginAccess();
  if (v1[82] == a1)
  {
    v1[82] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4748D70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4748AF0();
  return sub_1A4748EC4;
}

float sub_1A4748F20()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[166];
}

uint64_t sub_1A4749044(float a1)
{
  result = swift_beginAccess();
  if (v1[166] == a1)
  {
    v1[166] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4749150(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4748ED0();
  return sub_1A47492A4;
}

float sub_1A4749300()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[167];
}

uint64_t sub_1A4749424(float a1)
{
  result = swift_beginAccess();
  if (v1[167] == a1)
  {
    v1[167] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4749530(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A47492B0();
  return sub_1A4749684;
}

float sub_1A47496E0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[168];
}

uint64_t sub_1A4749804(float a1)
{
  result = swift_beginAccess();
  if (v1[168] == a1)
  {
    v1[168] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4749910(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4749690();
  return sub_1A4749A64;
}

float sub_1A4749AC0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[169];
}

uint64_t sub_1A4749BE4(float a1)
{
  result = swift_beginAccess();
  if (v1[169] == a1)
  {
    v1[169] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A4749CF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4749A70();
  return sub_1A4749E44;
}

float sub_1A4749EA0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[170];
}

uint64_t sub_1A4749FC4(float a1)
{
  result = swift_beginAccess();
  if (v1[170] == a1)
  {
    v1[170] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474A0D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4749E50();
  return sub_1A474A224;
}

float sub_1A474A280()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[171];
}

uint64_t sub_1A474A3A4(float a1)
{
  result = swift_beginAccess();
  if (v1[171] == a1)
  {
    v1[171] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474A4B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474A230();
  return sub_1A474A604;
}

float sub_1A474A660()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[172];
}

uint64_t sub_1A474A784(float a1)
{
  result = swift_beginAccess();
  if (v1[172] == a1)
  {
    v1[172] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474A890(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474A610();
  return sub_1A474A9E4;
}

float sub_1A474AA40()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[173];
}

uint64_t sub_1A474AB64(float a1)
{
  result = swift_beginAccess();
  if (v1[173] == a1)
  {
    v1[173] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474AC70(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474A9F0();
  return sub_1A474ADC4;
}

float sub_1A474AE20()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[174];
}

uint64_t sub_1A474AF44(float a1)
{
  result = swift_beginAccess();
  if (v1[174] == a1)
  {
    v1[174] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474B050(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474ADD0();
  return sub_1A474B1A4;
}

float sub_1A474B200()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[175];
}

uint64_t sub_1A474B324(float a1)
{
  result = swift_beginAccess();
  if (v1[175] == a1)
  {
    v1[175] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474B430(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474B1B0();
  return sub_1A474B584;
}

float sub_1A474B5E0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[176];
}

uint64_t sub_1A474B704(float a1)
{
  result = swift_beginAccess();
  if (v1[176] == a1)
  {
    v1[176] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474B810(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474B590();
  return sub_1A474B964;
}

float sub_1A474B9C0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[177];
}

uint64_t sub_1A474BAE4(float a1)
{
  result = swift_beginAccess();
  if (v1[177] == a1)
  {
    v1[177] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474BBF0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474B970();
  return sub_1A474BD44;
}

float sub_1A474BDA0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[178];
}

uint64_t sub_1A474BEC4(float a1)
{
  result = swift_beginAccess();
  if (v1[178] == a1)
  {
    v1[178] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474BFD0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474BD50();
  return sub_1A474C124;
}

float sub_1A474C180()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[179];
}

uint64_t sub_1A474C2A4(float a1)
{
  result = swift_beginAccess();
  if (v1[179] == a1)
  {
    v1[179] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474C3B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474C130();
  return sub_1A474C504;
}

float sub_1A474C560()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[180];
}

uint64_t sub_1A474C684(float a1)
{
  result = swift_beginAccess();
  if (v1[180] == a1)
  {
    v1[180] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474C790(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474C510();
  return sub_1A474C8E4;
}

uint64_t sub_1A474C940()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[724];
}

uint64_t sub_1A474C9C0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 6448))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A474CA68(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[724] == v2)
  {
    v1[724] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474CB68(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474C8F0();
  return sub_1A474CCBC;
}

uint64_t sub_1A474CD18()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[725];
}

uint64_t sub_1A474CD98@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 6496))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A474CE40(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[725] == v2)
  {
    v1[725] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474CF40(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474CCC8();
  return sub_1A474D094;
}

uint64_t sub_1A474D0F0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[726];
}

uint64_t sub_1A474D170@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 6544))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A474D218(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[726] == v2)
  {
    v1[726] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474D318(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474D0A0();
  return sub_1A474D46C;
}

uint64_t sub_1A474D4C8()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[727];
}

uint64_t sub_1A474D548@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 6592))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A474D5F0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[727] == v2)
  {
    v1[727] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474D6F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474D478();
  return sub_1A474D844;
}

float sub_1A474D8A0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[182];
}

uint64_t sub_1A474D9C4(float a1)
{
  result = swift_beginAccess();
  if (v1[182] == a1)
  {
    v1[182] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474DAD0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474D850();
  return sub_1A474DC24;
}

float sub_1A474DC80()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[183];
}

uint64_t sub_1A474DDA4(float a1)
{
  result = swift_beginAccess();
  if (v1[183] == a1)
  {
    v1[183] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474DEB0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474DC30();
  return sub_1A474E004;
}

float sub_1A474E060()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[184];
}

uint64_t sub_1A474E184(float a1)
{
  result = swift_beginAccess();
  if (v1[184] == a1)
  {
    v1[184] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474E290(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474E010();
  return sub_1A474E3E4;
}

float sub_1A474E440()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[185];
}

uint64_t sub_1A474E564(float a1)
{
  result = swift_beginAccess();
  if (v1[185] == a1)
  {
    v1[185] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474E670(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474E3F0();
  return sub_1A474E7C4;
}

float sub_1A474E820()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[186];
}

uint64_t sub_1A474E944(float a1)
{
  result = swift_beginAccess();
  if (v1[186] == a1)
  {
    v1[186] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474EA50(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474E7D0();
  return sub_1A474EBA4;
}

double sub_1A474EC00()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[94];
}

uint64_t sub_1A474ED24(double a1)
{
  result = swift_beginAccess();
  if (v1[94] == a1)
  {
    v1[94] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474EE30(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474EBB0();
  return sub_1A474EF84;
}

double sub_1A474EFE0()
{
  swift_getKeyPath();
  (*(*v0 + 7144))();

  swift_beginAccess();
  return v0[95];
}

uint64_t sub_1A474F104(double a1)
{
  result = swift_beginAccess();
  if (v1[95] == a1)
  {
    v1[95] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 7152))(v5);
  }

  return result;
}

void (*sub_1A474F210(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474EF90();
  return sub_1A474F364;
}

__n128 sub_1A474F3C0()
{
  swift_getKeyPath();
  (*(v0->n128_u64[0] + 7144))();

  swift_beginAccess();
  return v0[48];
}

uint64_t sub_1A474F4E4(float32x4_t a1)
{
  result = swift_beginAccess();
  v3 = vmovn_s32(vceqq_f32(v1[48], a1));
  if (v3.i8[0] & 1) != 0 && (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v1[48] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(v1->i64[0] + 7152))();
  }

  return result;
}

void (*sub_1A474F608(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474F370();
  return sub_1A474F75C;
}

__n128 sub_1A474F7B8()
{
  swift_getKeyPath();
  (*(v0->n128_u64[0] + 7144))();

  swift_beginAccess();
  return v0[49];
}

uint64_t sub_1A474F8DC(float32x4_t a1)
{
  result = swift_beginAccess();
  v3 = vmovn_s32(vceqq_f32(v1[49], a1));
  if (v3.i8[0] & 1) != 0 && (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v1[49] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(v1->i64[0] + 7152))();
  }

  return result;
}

void (*sub_1A474FA00(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474F768();
  return sub_1A474FB54;
}

__n128 sub_1A474FBB0()
{
  swift_getKeyPath();
  (*(v0->n128_u64[0] + 7144))();

  swift_beginAccess();
  return v0[50];
}

uint64_t sub_1A474FCD4(float32x4_t a1)
{
  result = swift_beginAccess();
  v3 = vmovn_s32(vceqq_f32(v1[50], a1));
  if (v3.i8[0] & 1) != 0 && (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v1[50] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(v1->i64[0] + 7152))();
  }

  return result;
}

void (*sub_1A474FDF8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474FB60();
  return sub_1A474FF4C;
}

__n128 sub_1A474FFA8()
{
  swift_getKeyPath();
  (*(v0->n128_u64[0] + 7144))();

  swift_beginAccess();
  return v0[51];
}

uint64_t sub_1A47500CC(float32x4_t a1)
{
  result = swift_beginAccess();
  v3 = vmovn_s32(vceqq_f32(v1[51], a1));
  if (v3.i8[0] & 1) != 0 && (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v1[51] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(v1->i64[0] + 7152))();
  }

  return result;
}

void (*sub_1A47501F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 7144))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4753E4C(&qword_1EB1258C8, type metadata accessor for TimelineVFXEngineSpec);
  sub_1A52415F4();

  v4[7] = sub_1A474FF58();
  return sub_1A4750344;
}

id *sub_1A4750490()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 3));
  __swift_destroy_boxed_opaque_existential_0((v0 + 8));
  __swift_destroy_boxed_opaque_existential_0((v0 + 13));

  v1 = OBJC_IVAR____TtC12PhotosUICore21TimelineVFXEngineSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A4750580()
{
  sub_1A4750490();

  return swift_deallocClassInstance();
}

uint64_t sub_1A47505D8()
{
  v0 = swift_allocObject();
  sub_1A4750610();
  return v0;
}

uint64_t sub_1A4750610()
{
  v1 = v0;
  v2 = (v0 + 264);
  v3 = type metadata accessor for TimelineVFXEngineCell();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = (v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A430E190();
  v7 = swift_allocObject();
  v8 = _swift_stdlib_malloc_size(v7);
  v9 = v8 - 32;
  if (v8 < 32)
  {
    v9 = v8 - 25;
  }

  *(v7 + 16) = 35;
  *(v7 + 24) = 2 * (v9 >> 3);
  *(v7 + 32) = xmmword_1A5301350;
  *(v7 + 48) = xmmword_1A535BC40;
  *(v7 + 64) = xmmword_1A535BC50;
  *(v7 + 80) = xmmword_1A535BC60;
  *(v7 + 96) = xmmword_1A535BC70;
  *(v7 + 112) = xmmword_1A535BC80;
  *(v7 + 128) = xmmword_1A535BC90;
  *(v7 + 144) = xmmword_1A535BCA0;
  *(v7 + 160) = xmmword_1A535BCB0;
  *(v7 + 176) = xmmword_1A535BCC0;
  *(v7 + 192) = xmmword_1A535BCD0;
  *(v7 + 208) = xmmword_1A535BCE0;
  *(v7 + 224) = xmmword_1A535BCF0;
  *(v7 + 240) = xmmword_1A535BD00;
  *(v7 + 256) = xmmword_1A535BD10;
  *(v7 + 272) = xmmword_1A535BD20;
  *(v7 + 288) = xmmword_1A535BD30;
  *(v7 + 304) = 34;
  v10 = *(v7 + 16);
  if (v10)
  {
    *&v63[0] = MEMORY[0x1E69E7CC0];
    sub_1A4750DB0(0, v10, 0);
    v11 = 32;
    v12 = *&v63[0];
    do
    {
      sub_1A44CD5B4(*(v7 + v11), v6);
      *&v63[0] = v12;
      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1A4750DB0(v13 > 1, v14 + 1, 1);
        v12 = *&v63[0];
      }

      *(v12 + 16) = v14 + 1;
      sub_1A4750F9C(v6, v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
      v11 += 8;
      --v10;
    }

    while (v10);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  *(v1 + 16) = v12;
  sub_1A49E0EFC(v63);
  *(v1 + 48) = &type metadata for TimelineVFXEngineIntroLayout;
  *(v1 + 56) = &off_1F1732CB0;
  v15 = swift_allocObject();
  *(v1 + 24) = v15;
  v16 = v63[3];
  *(v15 + 48) = v63[2];
  *(v15 + 64) = v16;
  *(v15 + 80) = v63[4];
  *(v15 + 96) = v64;
  v17 = v63[1];
  *(v15 + 16) = v63[0];
  *(v15 + 32) = v17;
  sub_1A49E0D18(v65);
  *(v1 + 88) = &type metadata for TimelineVFXEngineInwardShiftGridLayout;
  *(v1 + 96) = &off_1F1732C70;
  v18 = swift_allocObject();
  *(v1 + 64) = v18;
  v19 = v65[1];
  v18[1] = v65[0];
  v18[2] = v19;
  v18[3] = v65[2];
  v20 = sub_1A49E13DC();
  *(v1 + 128) = &type metadata for TimelineVFXEngineGridLayout;
  *(v1 + 136) = &off_1F1732C50;
  *(v1 + 104) = v21;
  *(v1 + 112) = v20;
  *(v1 + 120) = v22;
  *(v1 + 144) = xmmword_1A535BD80;
  *(v1 + 160) = xmmword_1A535BD90;
  *(v1 + 176) = xmmword_1A535BDA0;
  *(v1 + 192) = xmmword_1A535BDB0;
  *(v1 + 208) = 0x400CCCCD40400000;
  *(v1 + 216) = 16843009;
  *(v1 + 219) = 16843009;
  *(v1 + 224) = 0x3FF0000000000000;
  v23 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v24) = 1.0;
  LODWORD(v25) = 1043207291;
  LODWORD(v26) = 1041865114;
  *(v1 + 232) = [v23 initWithControlPoints__:v25 :{0.0, v26, v24}];
  *(v1 + 240) = 0x3FE3333333333333;
  v27 = *MEMORY[0x1E6979EB8];
  v28 = objc_opt_self();
  *(v1 + 248) = [v28 functionWithName_];
  v29 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v30) = 1.0;
  LODWORD(v31) = 1043207291;
  LODWORD(v32) = 1041865114;
  *(v1 + 256) = [v29 initWithControlPoints__:v31 :{0.0, v32, v30}];
  *v2 = xmmword_1A535BDC0;
  v2[1] = xmmword_1A535BDD0;
  *(v1 + 296) = 0x10101013ECCCCCDLL;
  *(v1 + 304) = 1;
  *(v1 + 312) = 0x3FC999999999999ALL;
  *(v1 + 320) = 0x3F7CAC083126E979;
  *(v1 + 328) = 0x3E19999A3DCCCCCDLL;
  *(v1 + 336) = 1065353216;
  *(v1 + 344) = 0x402E000000000000;
  *(v1 + 352) = 1;
  *(v1 + 360) = 0x3FE999999999999ALL;
  *(v1 + 368) = xmmword_1A535BDE0;
  *(v1 + 384) = xmmword_1A535BDF0;
  v33 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v34) = 1.0;
  LODWORD(v35) = 1043207291;
  LODWORD(v36) = 1051260355;
  *(v1 + 400) = [v33 initWithControlPoints__:v35 :{0.0, v36, v34}];
  *(v1 + 408) = 0x3FDAE147AE147AE1;
  *(v1 + 416) = xmmword_1A535BE00;
  v37 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v38) = 1044549468;
  LODWORD(v39) = 1046562734;
  LODWORD(v40) = 1.0;
  LODWORD(v41) = 1.0;
  *(v1 + 432) = [v37 initWithControlPoints__:v38 :{v40, v39, v41}];
  v2[11] = xmmword_1A535BE10;
  *(v1 + 456) = 0x3F8000003E860A92;
  *(v1 + 464) = xmmword_1A535BE20;
  *(v1 + 480) = xmmword_1A535BE30;
  *(v1 + 496) = 0x3FDAE147AE147AE1;
  *(v1 + 504) = 1049338601;
  v42 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v43) = 1.0;
  LODWORD(v44) = 1043207291;
  LODWORD(v45) = 1041865114;
  *(v1 + 512) = [v42 initWithControlPoints__:v44 :{0.0, v45, v43}];
  *(v1 + 520) = [v28 functionWithName_];
  v46 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v47) = 1.0;
  LODWORD(v48) = 1043207291;
  LODWORD(v49) = 1041865114;
  *(v1 + 528) = [v46 initWithControlPoints__:v48 :{0.0, v49, v47}];
  v50 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v51) = 1062501089;
  LODWORD(v52) = 1.0;
  LODWORD(v53) = 1043207291;
  *(v1 + 536) = [v50 initWithControlPoints__:v53 :{0.0, v51, v52}];
  *(v1 + 544) = 0x4000000000000000;
  *(v1 + 552) = [v28 functionWithName_];
  *(v1 + 560) = 0x3FF0000000000000;
  v54 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v55) = 1.0;
  LODWORD(v56) = 1051260355;
  LODWORD(v57) = 1041865114;
  *(v1 + 568) = [v54 initWithControlPoints__:v56 :{0.0, v57, v55}];
  *(v1 + 576) = 1;
  *(v1 + 584) = 0x3FE0000000000000;
  v58 = objc_allocWithZone(MEMORY[0x1E69793D0]);
  LODWORD(v59) = 1059816735;
  LODWORD(v60) = 1.0;
  LODWORD(v61) = 1051260355;
  *(v1 + 592) = [v58 initWithControlPoints__:v61 :{0.0, v59, v60}];
  *(v1 + 600) = [v28 functionWithName_];
  *(v1 + 608) = xmmword_1A535BE40;
  *(v1 + 624) = 1056964608;
  *(v1 + 632) = [v28 functionWithName_];
  *(v1 + 640) = 1056964608;
  *(v1 + 648) = 0x3FF6666666666666;
  *(v1 + 656) = 0x4004000000000000;
  v2[25] = xmmword_1A535BE50;
  v2[26] = xmmword_1A535BE60;
  *(v1 + 696) = 0x3F59999A3F800000;
  *(v1 + 704) = 1065353216;
  *(v1 + 708) = 0u;
  *(v1 + 724) = 0;
  *(v1 + 725) = 257;
  *(v1 + 727) = 0;
  v2[29] = xmmword_1A535BE70;
  *(v1 + 744) = 1036831949;
  *(v1 + 752) = xmmword_1A535BE80;
  *(v1 + 768) = xmmword_1A535BD40;
  *(v1 + 784) = xmmword_1A535BD50;
  *(v1 + 800) = xmmword_1A535BD60;
  *(v1 + 816) = xmmword_1A535BD70;
  sub_1A5241604();
  return v1;
}

size_t sub_1A4750DB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A4750DD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A4750DD0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A4753E94();
  v10 = *(type metadata accessor for TimelineVFXEngineCell() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TimelineVFXEngineCell() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A4750F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineVFXEngineCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4751000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineVFXEngineCell();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_1A3E30BE8(v13, v10);
        sub_1A3E30BE8(v14, v6);
        sub_1A4753E4C(&unk_1EB13C5C8, type metadata accessor for TimelineVFXEngineCell);
        v16 = sub_1A524C594();
        sub_1A3E30B8C(v6);
        sub_1A3E30B8C(v10);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t type metadata accessor for TimelineVFXEngineSpec()
{
  result = qword_1EB16A1A0;
  if (!qword_1EB16A1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4751210()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 24), v1);
  return swift_endAccess();
}

uint64_t sub_1A4751270()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 64), v1);
  return swift_endAccess();
}

uint64_t sub_1A47512D0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((v2 + 104), v1);
  return swift_endAccess();
}

uint64_t sub_1A4751330()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 144) = v2;
  return result;
}

uint64_t sub_1A4751384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 148) = v2;
  return result;
}

uint64_t sub_1A47513D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 152) = v2;
  return result;
}

uint64_t sub_1A475142C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 156) = v2;
  return result;
}

uint64_t sub_1A4751480()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 160) = v2;
  return result;
}

uint64_t sub_1A47514D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 164) = v2;
  return result;
}

uint64_t sub_1A4751528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 168) = v2;
  return result;
}

uint64_t sub_1A475157C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 172) = v2;
  return result;
}

uint64_t sub_1A47515D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 176) = v2;
  return result;
}

uint64_t sub_1A4751624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 180) = v2;
  return result;
}

uint64_t sub_1A4751678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 184) = v2;
  return result;
}

uint64_t sub_1A47516CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 188) = v2;
  return result;
}

uint64_t sub_1A4751720()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 192) = v2;
  return result;
}

uint64_t sub_1A4751774()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 196) = v2;
  return result;
}

uint64_t sub_1A47517C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 200) = v2;
  return result;
}

uint64_t sub_1A475181C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 204) = v2;
  return result;
}

uint64_t sub_1A4751870()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 208) = v2;
  return result;
}

uint64_t sub_1A47518C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 212) = v2;
  return result;
}

uint64_t sub_1A4751918()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 216) = v2;
  return result;
}

uint64_t sub_1A475196C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 217) = v2;
  return result;
}

uint64_t sub_1A47519C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 218) = v2;
  return result;
}

uint64_t sub_1A4751A14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 219) = v2;
  return result;
}

uint64_t sub_1A4751A68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 220) = v2;
  return result;
}

uint64_t sub_1A4751ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 221) = v2;
  return result;
}

uint64_t sub_1A4751B10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 222) = v2;
  return result;
}

uint64_t sub_1A4751B64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 224) = v2;
  return result;
}

unint64_t sub_1A4751BB8()
{
  result = qword_1EB140E10;
  if (!qword_1EB140E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB140E10);
  }

  return result;
}

void sub_1A4751C04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 232);
  *(v2 + 232) = v1;
  v4 = v1;
}

uint64_t sub_1A4751C60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 240) = v2;
  return result;
}

void sub_1A4751CB4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 248);
  *(v2 + 248) = v1;
  v4 = v1;
}

void sub_1A4751D10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 256);
  *(v2 + 256) = v1;
  v4 = v1;
}

uint64_t sub_1A4751D6C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 264) = v2;
  return result;
}

uint64_t sub_1A4751DC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 268) = v2;
  return result;
}

uint64_t sub_1A4751E14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 272) = v2;
  return result;
}

uint64_t sub_1A4751E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 276) = v2;
  return result;
}

uint64_t sub_1A4751EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 280) = v2;
  return result;
}

uint64_t sub_1A4751F10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 284) = v2;
  return result;
}

uint64_t sub_1A4751F64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 288) = v2;
  return result;
}

uint64_t sub_1A4751FB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 292) = v2;
  return result;
}

uint64_t sub_1A475200C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 296) = v2;
  return result;
}

uint64_t sub_1A4752060()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 300) = v2;
  return result;
}

uint64_t sub_1A47520B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 301) = v2;
  return result;
}

uint64_t sub_1A4752108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 302) = v2;
  return result;
}

uint64_t sub_1A475215C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 303) = v2;
  return result;
}

uint64_t sub_1A47521B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 304) = v2;
  return result;
}

uint64_t sub_1A4752204()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 312) = v2;
  return result;
}

uint64_t sub_1A4752258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 320) = v2;
  return result;
}

uint64_t sub_1A47522AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 328) = v2;
  return result;
}

uint64_t sub_1A4752300()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 332) = v2;
  return result;
}

uint64_t sub_1A4752354()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 336) = v2;
  return result;
}

uint64_t sub_1A47523A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 344) = v2;
  return result;
}

uint64_t sub_1A47523FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 352) = v2;
  return result;
}

uint64_t sub_1A4752450()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 360) = v2;
  return result;
}

uint64_t sub_1A47524A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 368) = v2;
  return result;
}

uint64_t sub_1A47524F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 376) = v2;
  return result;
}

uint64_t sub_1A475254C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 384) = v2;
  return result;
}

uint64_t sub_1A47525A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 392) = v2;
  return result;
}

void sub_1A47525F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 400);
  *(v2 + 400) = v1;
  v4 = v1;
}

uint64_t sub_1A4752650()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 408) = v2;
  return result;
}

uint64_t sub_1A47526A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 416) = v2;
  return result;
}

uint64_t sub_1A47526F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 424) = v2;
  return result;
}

void sub_1A475274C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 432);
  *(v2 + 432) = v1;
  v4 = v1;
}

uint64_t sub_1A47527A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 440) = v2;
  return result;
}

uint64_t sub_1A47527FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 444) = v2;
  return result;
}

uint64_t sub_1A4752850()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 448) = v2;
  return result;
}

uint64_t sub_1A47528A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 452) = v2;
  return result;
}

uint64_t sub_1A47528F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 456) = v2;
  return result;
}

uint64_t sub_1A475294C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 460) = v2;
  return result;
}

uint64_t sub_1A47529A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 464) = v2;
  return result;
}

uint64_t sub_1A47529F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 472) = v2;
  return result;
}

uint64_t sub_1A4752A48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 480) = v2;
  return result;
}

uint64_t sub_1A4752A9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 488) = v2;
  return result;
}

uint64_t sub_1A4752AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 496) = v2;
  return result;
}

uint64_t sub_1A4752B44()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 504) = v2;
  return result;
}

void sub_1A4752B98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 512);
  *(v2 + 512) = v1;
  v4 = v1;
}

void sub_1A4752BF4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 520);
  *(v2 + 520) = v1;
  v4 = v1;
}

void sub_1A4752C50()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 528);
  *(v2 + 528) = v1;
  v4 = v1;
}

void sub_1A4752CAC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 536);
  *(v2 + 536) = v1;
  v4 = v1;
}

uint64_t sub_1A4752D08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 544) = v2;
  return result;
}

void sub_1A4752D5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 552);
  *(v2 + 552) = v1;
  v4 = v1;
}

uint64_t sub_1A4752DB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 560) = v2;
  return result;
}

void sub_1A4752E0C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 568);
  *(v2 + 568) = v1;
  v4 = v1;
}

uint64_t sub_1A4752E68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 576) = v2;
  return result;
}

uint64_t sub_1A4752EBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 584) = v2;
  return result;
}

void sub_1A4752F10()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 592);
  *(v2 + 592) = v1;
  v4 = v1;
}

void sub_1A4752F6C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 600);
  *(v2 + 600) = v1;
  v4 = v1;
}

uint64_t sub_1A4752FC8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 608) = v2;
  return result;
}

uint64_t sub_1A475301C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 616) = v2;
  return result;
}

uint64_t sub_1A4753070()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 624) = v2;
  return result;
}

void sub_1A47530C4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  v3 = *(v2 + 632);
  *(v2 + 632) = v1;
  v4 = v1;
}

uint64_t sub_1A4753120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 640) = v2;
  return result;
}

uint64_t sub_1A4753174()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 648) = v2;
  return result;
}

uint64_t sub_1A47531C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 656) = v2;
  return result;
}

uint64_t sub_1A475321C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 664) = v2;
  return result;
}

uint64_t sub_1A4753270()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 668) = v2;
  return result;
}

uint64_t sub_1A47532C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 672) = v2;
  return result;
}

uint64_t sub_1A4753318()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 676) = v2;
  return result;
}

uint64_t sub_1A475336C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 680) = v2;
  return result;
}

uint64_t sub_1A47533C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 684) = v2;
  return result;
}

uint64_t sub_1A4753414()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 688) = v2;
  return result;
}

uint64_t sub_1A4753468()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 692) = v2;
  return result;
}

uint64_t sub_1A47534BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 696) = v2;
  return result;
}

uint64_t sub_1A4753510()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 700) = v2;
  return result;
}

uint64_t sub_1A4753564()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 704) = v2;
  return result;
}

uint64_t sub_1A47535B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 708) = v2;
  return result;
}

uint64_t sub_1A475360C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 712) = v2;
  return result;
}

uint64_t sub_1A4753660()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 716) = v2;
  return result;
}

uint64_t sub_1A47536B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 720) = v2;
  return result;
}

uint64_t sub_1A4753708()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 724) = v2;
  return result;
}

uint64_t sub_1A475375C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 725) = v2;
  return result;
}

uint64_t sub_1A47537B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 726) = v2;
  return result;
}

uint64_t sub_1A4753804()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 727) = v2;
  return result;
}

uint64_t sub_1A4753858()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 728) = v2;
  return result;
}

uint64_t sub_1A47538AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 732) = v2;
  return result;
}

uint64_t sub_1A4753900()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 736) = v2;
  return result;
}

uint64_t sub_1A4753954()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 740) = v2;
  return result;
}

uint64_t sub_1A47539A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 744) = v2;
  return result;
}

uint64_t sub_1A47539FC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 752) = v2;
  return result;
}

uint64_t sub_1A4753A50()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 760) = v2;
  return result;
}

__n128 sub_1A4753AA4()
{
  v1 = v0[1].n128_u64[0];
  v3 = v0[2];
  swift_beginAccess();
  result = v3;
  v1[48] = v3;
  return result;
}

__n128 sub_1A4753AF8()
{
  v1 = v0[1].n128_u64[0];
  v3 = v0[2];
  swift_beginAccess();
  result = v3;
  v1[49] = v3;
  return result;
}

__n128 sub_1A4753B4C()
{
  v1 = v0[1].n128_u64[0];
  v3 = v0[2];
  swift_beginAccess();
  result = v3;
  v1[50] = v3;
  return result;
}

__n128 sub_1A4753BA0()
{
  v1 = v0[1].n128_u64[0];
  v3 = v0[2];
  swift_beginAccess();
  result = v3;
  v1[51] = v3;
  return result;
}

uint64_t sub_1A4753BFC()
{
  result = sub_1A5241614();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1A4753E4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4753E94()
{
  if (!qword_1EB120360)
  {
    type metadata accessor for TimelineVFXEngineCell();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120360);
    }
  }
}

uint64_t sub_1A4753EEC(uint64_t a1)
{
  sub_1A47548C4(0, &qword_1EB129890, MEMORY[0x1E69E6720]);
  if (([*(v1 + 16) isEquivalentToNavigationDestination_] & 1) == 0)
  {
    sub_1A47542E8();
  }

  return 1;
}

uint64_t sub_1A4753FF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1A524CC54();
  v2[4] = sub_1A524CC44();
  v4 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4754088, v4, v3);
}

uint64_t sub_1A4754088()
{
  v1 = v0[3];
  v2 = v0[2];

  if ([*(v1 + 16) isEquivalentToNavigationDestination_])
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = v0[1];

  return v4(v3);
}

void sub_1A4754110()
{
  sub_1A47548C4(0, &qword_1EB129890, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v1);
  sub_1A47542E8();
}

void sub_1A47542E8()
{
  v0 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v0);
  sub_1A5245BA4();
}

void sub_1A47548C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LemonadeNavigationDestination();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A4754924()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A47549AC(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3FBBB04;

  return v8(a1, a2);
}

id sub_1A4754B2C(void *a1, char a2)
{
  v5 = type metadata accessor for NavigationBarPaletteContentView();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_preferredHeightInvalidationBlock];
  *v7 = 0;
  v7[1] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView__preferredHeight] = 0;
  *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_arrangedSubview] = a1;
  v6[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_isNotification] = a2;
  v25.receiver = v6;
  v25.super_class = v5;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 setDirectionalLayoutMargins_];
  v24.receiver = v2;
  v24.super_class = PXNavigationBarPalette;
  v10 = objc_msgSendSuper2(&v24, sel_initWithContentView_, v9);
  [v9 addSubview_];
  v11 = sub_1A524C634();
  [v8 addObserver:v10 forKeyPath:v11 options:0 context:0];

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = &v9[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_preferredHeightInvalidationBlock];
  v14 = *&v9[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_preferredHeightInvalidationBlock];
  v15 = *&v9[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_preferredHeightInvalidationBlock + 8];
  *v13 = sub_1A4755FF0;
  v13[1] = v12;
  v16 = v10;

  sub_1A3C784D4(v14, v15);

  sub_1A4756270(0, &unk_1EB1202C0, sub_1A3C8B2D8, MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A52FC9F0;
  v18 = sub_1A5247394();
  v19 = MEMORY[0x1E69DC2B0];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = sub_1A5247304();
  v21 = MEMORY[0x1E69DC0A0];
  *(v17 + 48) = v20;
  *(v17 + 56) = v21;
  v22 = v16;
  MEMORY[0x1A5908EA0](v17, sel_sizeTraitsDidChange);
  swift_unknownObjectRelease();

  [v22 _setContentViewMarginType_];

  [v22 setClipsToBounds_];
  return v22;
}

Swift::Void __swiftcall PXNavigationBarPalette.layoutSubviews()()
{
  v1.super_class = PXNavigationBarPalette;
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  [v0 updatePreferredHeight];
}

void PXNavigationBarPalette.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  if (a2)
  {
    if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_1A524EAB4() & 1) != 0)
    {
      sub_1A3EBECA4(a3, v23);
      if (v24)
      {
        sub_1A3C52C70(0, &qword_1EB12B170);
        if (swift_dynamicCast())
        {
          v10 = v21;
          v11 = [v5 paletteContentView];
          v12 = *&v11[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_arrangedSubview];

          if (v12 == v21)
          {
            [v5 setNeedsLayout];
            goto LABEL_17;
          }
        }
      }

      else
      {
        sub_1A3C35B00(v23);
      }
    }

    v9 = sub_1A524C634();
  }

  sub_1A3EBECA4(a3, v23);
  v13 = v24;
  if (!v24)
  {
    v19 = 0;
    if (a4)
    {
      goto LABEL_13;
    }

LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v15 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  v19 = sub_1A524EA94();
  (*(v15 + 8))(v18, v13);
  __swift_destroy_boxed_opaque_existential_0(v23);
  if (!a4)
  {
    goto LABEL_15;
  }

LABEL_13:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1A4756188(&qword_1EB140E38, type metadata accessor for NSKeyValueChangeKey);
  v10 = sub_1A524C3D4();
LABEL_16:
  v22.receiver = v5;
  v22.super_class = PXNavigationBarPalette;
  objc_msgSendSuper2(&v22, sel_observeValueForKeyPath_ofObject_change_context_, v9, v19, v10, a5);

  swift_unknownObjectRelease();
LABEL_17:
}

id sub_1A47552E0()
{
  v1 = [v0 paletteContentView];
  v2 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_arrangedSubview];

  LOBYTE(v1) = [v2 isHidden];
  v3 = 0.0;
  if ((v1 & 1) == 0)
  {
    v4 = [v0 paletteContentView];
    v3 = *&v4[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView__preferredHeight];
  }

  return [v0 setPreferredHeight_];
}

uint64_t sub_1A47553EC()
{
  v1 = sub_1A524BEE4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A524BF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v9 = sub_1A524D474();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1A4756260;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_265;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4756188(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A4756270(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

id sub_1A4755788(void *a1, SEL *a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a2];

  return v3;
}

void sub_1A47558B0()
{
  v1 = v0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for NavigationBarPaletteContentView();
  objc_msgSendSuper2(&v11, sel_layoutSubviews);
  if (v0[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_isNotification] == 1)
  {
    [v0 directionalLayoutMargins];
    [v0 bounds];
    CGRectGetWidth(v12);
    [v0 directionalLayoutMargins];
    [v0 directionalLayoutMargins];
    sub_1A4755C14();
  }

  else
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 1 || (v4 = [objc_opt_self() currentDevice], v5 = objc_msgSend(v4, sel_userInterfaceIdiom), v4, !v5))
    {
      [v1 directionalLayoutMargins];
    }

    else
    {
      [v1 directionalLayoutMargins];
      [v1 bounds];
      CGRectGetWidth(v13);
      [v1 directionalLayoutMargins];
      [v1 directionalLayoutMargins];
      sub_1A4755C14();
    }
  }

  v6 = *&v1[OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_arrangedSubview];
  [v1 bounds];
  Width = CGRectGetWidth(v14);
  [v1 directionalLayoutMargins];
  v9 = Width - v8;
  [v1 directionalLayoutMargins];
  [v6 sizeThatFits_];
  [v1 directionalLayoutMargins];
  [v1 directionalLayoutMargins];
  PXFloatApproximatelyEqualToFloat();
}