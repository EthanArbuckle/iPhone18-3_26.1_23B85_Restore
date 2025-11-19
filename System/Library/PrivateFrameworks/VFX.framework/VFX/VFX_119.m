void sub_1AFA37CD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFA37D24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA37CD0(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AFA37D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA37C7C();
    v7 = a3(a1, &type metadata for ParticleOpacityEvolution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA37E0C()
{
  result = qword_1EB642318;
  if (!qword_1EB642318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642318);
  }

  return result;
}

unint64_t sub_1AFA37E64()
{
  result = qword_1EB642320;
  if (!qword_1EB642320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642320);
  }

  return result;
}

unint64_t sub_1AFA37EBC()
{
  result = qword_1EB642328;
  if (!qword_1EB642328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642328);
  }

  return result;
}

uint64_t sub_1AFA37F34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v17 = a5;
  sub_1AFA38C90(0, &qword_1EB642330, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA38C3C();
  sub_1AFDFF3F8();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = v17;
  sub_1AF8C0110();
  sub_1AF8C021C(&qword_1EB63F018);
  sub_1AFDFE918();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AFA380FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AFA38180(uint64_t a1)
{
  v2 = sub_1AFA38C3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA381BC(uint64_t a1)
{
  v2 = sub_1AFA38C3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AFA381F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AFA38614(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

double sub_1AFA38270()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 2;
  *(v0 + 16) = xmmword_1AFE4C620;
  *(v0 + 32) = &type metadata for TransientOriginColor;
  *(v0 + 40) = &off_1F2569988;
  *(v0 + 48) = &type metadata for Color;
  *(v0 + 56) = &off_1F252CA88;
  return result;
}

char *sub_1AFA382CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1AF9D3914(&unk_1F24F3D80);
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  return result;
}

uint64_t sub_1AFA38308(uint64_t a1)
{
  v19 = *(a1 + 40);
  v2 = *(a1 + 8);

  v3 = sub_1AF3CE498(*(&v2 + 1));
  v5 = v4;
  v7 = v6;
  v9 = v8;

  if (!v3)
  {
    v3 = sub_1AF9D3914(&unk_1F2506CB0);
    v5 = v10;
    v7 = 0;
    v9 = 1;
  }

  sub_1AFB948C0();
  v11 = sub_1AF657F68(&type metadata for ParticleAge);

  if (v11 && (sub_1AFB948C0(), v12 = sub_1AF657F68(&type metadata for ParticleLifetime), , v12))
  {

    v13 = sub_1AF8B959C(v3, v5, v7, v9);

    if (*a1)
    {
      [*a1 setTexture:v13 atIndex:{0, v13}];
    }

    v14 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

    v15 = v14;

    MEMORY[0x1EEE9AC00](v16, v17);
    sub_1AFCBF008(v19, sub_1AF9D17D4);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_1AFA38614(void *a1)
{
  sub_1AFA38C90(0, &qword_1EB6330F0, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = sub_1AF441150(a1, a1[3]);
  sub_1AFA38C3C();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8C0110();
    sub_1AF8C021C(qword_1ED724010);
    sub_1AFDFE768();
    (*(v5 + 8))(v8, v4);
    v9 = v11;
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

uint64_t sub_1AFA387E4(uint64_t *a1)
{
  v2 = v1;
  v60 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  swift_retain_n();
  v5 = sub_1AF3CE498(v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (v5)
  {
    v12 = v5;
    v13 = v7;
  }

  else
  {
    v12 = sub_1AF9D3914(&unk_1F2506CB0);
    v9 = 0;
    v11 = 1;
  }

  sub_1AF478E70(v12, v13, v9, v11, 32, v42);
  v14 = *(v2 + 32);
  v46[0] = *(v2 + 16);
  v46[1] = v14;
  v47 = *(v2 + 48);
  sub_1AF6B06C0(v4, v46, 0x200000000, v56);
  if (*v56)
  {
    if (v59 <= 0)
    {
    }

    else
    {
      v40 = *(&v57 + 1);
      if (*(&v57 + 1))
      {
        v39 = *&v56[40];
        v15 = *(&v58 + 1);
        v16 = *(v58 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v17 = *(*(&v58 + 1) + 32);
        v43 = *v56;
        v44 = *&v56[8];
        v45 = *&v56[24];
        v52 = *&v56[32];
        v53 = v57;
        v54 = v58;
        v55 = v59;
        v50 = *v56;
        v51 = *&v56[16];
        sub_1AF5DD298(&v50, v48);
        v18 = 0;
        v38 = v16;
        v37 = v17;
        do
        {
          v19 = (v39 + 48 * v18);
          v20 = *v19;
          v41 = v19[1];
          v21 = *(v19 + 2);
          v22 = *(v19 + 3);
          v23 = *(v19 + 4);
          v24 = *(v19 + 5);
          if (v16)
          {
            v25 = *(v24 + 376);

            os_unfair_lock_lock(v25);
            os_unfair_lock_lock(*(v24 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v17);
          v26 = *(v15 + 64);
          v48[0] = *(v15 + 48);
          v48[1] = v26;
          v49 = *(v15 + 80);
          v27 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
          *(v15 + 48) = ecs_stack_allocator_allocate(*(v15 + 32), 48 * v27, 8);
          *(v15 + 56) = v27;
          *(v15 + 72) = 0;
          *(v15 + 80) = 0;
          *(v15 + 64) = 0;
          v28 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v21, v22, v23, v15);
          v29 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v21, v22, v23, v15);
          v30 = v29;
          if (v21)
          {
            for (; v23; --v23)
            {
              v31 = *v30++;
              *v28 = vmulq_n_f32(*v28, fminf(fmaxf(sample_curve(v42, v31), 0.0), 1.0));
              ++v28;
            }
          }

          else if (v20 != v41)
          {
            v32 = v41 - v20;
            v33 = (v29 + 4 * v20);
            v34 = &v28[v20];
            do
            {
              v35 = *v33++;
              *v34 = vmulq_n_f32(*v34, fminf(fmaxf(sample_curve(v42, v35), 0.0), 1.0));
              ++v34;
              --v32;
            }

            while (v32);
          }

          sub_1AF630994(v15, &v43, v48);
          sub_1AF62D29C(v24);
          v17 = v37;
          ecs_stack_allocator_pop_snapshot(v37);
          v16 = v38;
          if (v38)
          {
            os_unfair_lock_unlock(*(v24 + 344));
            os_unfair_lock_unlock(*(v24 + 376));
          }

          ++v18;
        }

        while (v18 != v40);
      }

      else
      {
        v52 = *&v56[32];
        v53 = v57;
        v54 = v58;
        v55 = v59;
        v50 = *v56;
        v51 = *&v56[16];
        sub_1AF5DD298(&v50, v48);
      }

      sub_1AF5D1564(v56);
    }

    return sub_1AF5D1564(v56);
  }

  else
  {
  }
}

unint64_t sub_1AFA38C3C()
{
  result = qword_1EB633540;
  if (!qword_1EB633540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633540);
  }

  return result;
}

void sub_1AFA38C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA38C3C();
    v7 = a3(a1, &type metadata for ParticleOpacityOverLife.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA38D08()
{
  result = qword_1EB642338;
  if (!qword_1EB642338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642338);
  }

  return result;
}

unint64_t sub_1AFA38D60()
{
  result = qword_1EB633530;
  if (!qword_1EB633530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633530);
  }

  return result;
}

unint64_t sub_1AFA38DB8()
{
  result = qword_1EB633538;
  if (!qword_1EB633538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633538);
  }

  return result;
}

uint64_t sub_1AFA38E30(void *a1)
{
  v3 = v1;
  sub_1AFA39E4C(0, &qword_1EB642350, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA39DA4();
  sub_1AFDFF3F8();
  v14[0] = *v3;
  *(v14 + 9) = *(v3 + 9);
  v13 = 0;
  sub_1AFA39DF8(0, qword_1ED72F9E0, &off_1F2532E98, type metadata accessor for Curve);
  sub_1AFA39EB0(&qword_1EB63F018);
  sub_1AFDFE918();
  if (!v2)
  {
    *&v14[0] = *(v3 + 28);
    v13 = 1;
    sub_1AFA39DF8(0, &qword_1ED72F958, MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    sub_1AFA39F18(&qword_1EB6398A0);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA3908C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x65676E6172;
  }

  else
  {
    v2 = 0x6576727563;
  }

  if (*a2)
  {
    v3 = 0x65676E6172;
  }

  else
  {
    v3 = 0x6576727563;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1AFDFEE28();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1AFA3910C()
{
  if (*v0)
  {
    return 0x65676E6172;
  }

  else
  {
    return 0x6576727563;
  }
}

uint64_t sub_1AFA39138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6576727563 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AFA3920C(uint64_t a1)
{
  v2 = sub_1AFA39DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA39248(uint64_t a1)
{
  v2 = sub_1AFA39DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA39284@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA3934C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1AFA39304@<D0>(uint64_t a1@<X8>)
{
  *a1 = sub_1AF9D3914(&unk_1F24F3E00);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  result = 0.0078125;
  *(a1 + 28) = 0x3F80000000000000;
  return result;
}

uint64_t sub_1AFA3934C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA39E4C(0, &qword_1EB642340, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA39DA4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AFA39DF8(0, qword_1ED72F9E0, &off_1F2532E98, type metadata accessor for Curve);
  v18 = 0;
  sub_1AFA39EB0(qword_1ED724010);
  sub_1AFDFE768();
  v12 = v19;
  v11 = v20;
  v17 = v21;
  v16 = v22;
  sub_1AFA39DF8(0, &qword_1ED72F958, MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v18 = 1;
  sub_1AFA39F18(&qword_1ED7231A0);
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v13 = v19;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v16;
  *(a2 + 28) = v13;
  return result;
}

uint64_t sub_1AFA39638(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v2 = *(a1 + 8);
  swift_retain_n();
  sub_1AF3CE5D0(v2, v59);
  v4 = v59[0];
  v5 = v59[1];
  v6 = v59[2];
  v7 = v59[3];
  v8 = v60;

  if (v4)
  {
    v9 = *(&v7 + 1);
  }

  else
  {
    v4 = sub_1AF9D3914(&unk_1F2506CF0);
    v5 = v10;
    v6 = 0;
    LOBYTE(v7) = 1;
    v8 = 1.0;
    v9 = 0.0;
  }

  sub_1AF478E70(v4, v5, v6, v7, 32, v42);
  v50 = *(a1 + 88);
  v51 = *(a1 + 104);
  v52 = *(a1 + 120);
  sub_1AF5C92DC(v46);

  v48[0] = v46[0];
  v48[1] = v46[1];
  v49 = v47;
  sub_1AF6B06C0(v3, v48, 0x200000000, v61);
  if (*v61)
  {
    if (v64 <= 0)
    {
      v55 = *&v61[32];
      v56 = v62;
      v57 = v63;
      v58 = v64;
      v53 = *v61;
      v54 = *&v61[16];
      sub_1AF5DD298(&v53, &v43);
      sub_1AFA39B58(v46, sub_1AFA2B9E4);

      sub_1AFA39B58(v61, sub_1AF5C3C90);
    }

    else
    {
      v40 = *(&v62 + 1);
      if (*(&v62 + 1))
      {
        v11 = 0;
        v39 = *&v61[40];
        v12 = *(&v63 + 1);
        v13 = *(*(&v63 + 1) + 32);
        v14 = 1.0 / (v8 - v9);
        v15 = -(v9 * v14);
        v16 = *(v63 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v43 = *v61;
        v44 = *&v61[8];
        v45 = *&v61[24];
        v37 = v16;
        v38 = v13;
        do
        {
          v17 = (v39 + 48 * v11);
          v18 = *v17;
          v41 = v17[1];
          v19 = *(v17 + 2);
          v20 = *(v17 + 3);
          v21 = *(v17 + 4);
          v22 = *(v17 + 5);
          if (v16)
          {
            v23 = *(v22 + 376);

            os_unfair_lock_lock(v23);
            os_unfair_lock_lock(*(v22 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v13);
          v24 = *(v12 + 64);
          v53 = *(v12 + 48);
          v54 = v24;
          *&v55 = *(v12 + 80);
          v25 = *(*(*(*(v22 + 40) + 16) + 32) + 16) + 1;
          *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v25, 8);
          *(v12 + 56) = v25;
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
          *(v12 + 64) = 0;
          v26 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v19, v20, v21, v12);
          v27 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v19, v20, v21, v12);
          v28 = v27;
          if (v19)
          {
            for (; v21; --v21)
            {
              v29 = *v28++;
              v30 = vmulq_f32(v29, v29);
              *v26 = vmulq_n_f32(*v26, fminf(fmaxf(sample_curve(v42, v15 + (v14 * sqrtf(vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL)))))), 0.0), 1.0));
              ++v26;
            }
          }

          else if (v18 != v41)
          {
            v31 = v41 - v18;
            v32 = (v27 + 16 * v18);
            v33 = &v26[v18];
            do
            {
              v34 = *v32++;
              v35 = vmulq_f32(v34, v34);
              *v33 = vmulq_n_f32(*v33, fminf(fmaxf(sample_curve(v42, v15 + (v14 * sqrtf(vaddv_f32(vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)))))), 0.0), 1.0));
              ++v33;
              --v31;
            }

            while (v31);
          }

          sub_1AF630994(v12, &v43, &v53);
          sub_1AF62D29C(v22);
          v13 = v38;
          ecs_stack_allocator_pop_snapshot(v38);
          v16 = v37;
          if (v37)
          {
            os_unfair_lock_unlock(*(v22 + 344));
            os_unfair_lock_unlock(*(v22 + 376));
          }

          ++v11;
        }

        while (v11 != v40);
      }

      sub_1AFA39B58(v46, sub_1AFA2B9E4);
    }

    return sub_1AFA39B58(v61, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFA39B58(v46, sub_1AFA2B9E4);
  }
}

uint64_t sub_1AFA39B58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeWithCopy for ParticleOpacityOverVelocity(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);

  return a1;
}

uint64_t assignWithCopy for ParticleOpacityOverVelocity(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for ParticleOpacityOverVelocity(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleOpacityOverVelocity(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t storeEnumTagSinglePayload for ParticleOpacityOverVelocity(uint64_t result, int a2, int a3)
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
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFA39DA4()
{
  result = qword_1EB642348;
  if (!qword_1EB642348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642348);
  }

  return result;
}

void sub_1AFA39DF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6448]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFA39E4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA39DA4();
    v7 = a3(a1, &type metadata for ParticleOpacityOverVelocity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1AFA39EB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA39DF8(255, qword_1ED72F9E0, &off_1F2532E98, type metadata accessor for Curve);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFA39F18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA39DF8(255, &qword_1ED72F958, MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFA39FB0()
{
  result = qword_1EB642358;
  if (!qword_1EB642358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642358);
  }

  return result;
}

unint64_t sub_1AFA3A008()
{
  result = qword_1EB642360;
  if (!qword_1EB642360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642360);
  }

  return result;
}

unint64_t sub_1AFA3A060()
{
  result = qword_1EB642368;
  if (!qword_1EB642368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642368);
  }

  return result;
}

uint64_t sub_1AFA3A0D8(void *a1)
{
  v3 = v1;
  sub_1AFA3B7A8(0, &qword_1EB642380, sub_1AFA3B700, &type metadata for ParticlePositionOverTexture.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA3B700();
  sub_1AFDFF3F8();
  v14 = *v3;
  v13 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 8);
    v13 = 1;
    sub_1AF51CA58();
    sub_1AFDFE918();
    LOBYTE(v14) = *(v3 + 9);
    v13 = 2;
    sub_1AF51DC40();
    sub_1AFDFE918();
    v14 = *(v3 + 12);
    v13 = 3;
    sub_1AFA3B754(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    sub_1AFA3B810(&qword_1EB6398A0);
    sub_1AFDFE918();
    v14 = v3[3];
    v13 = 4;
    sub_1AFA3B7A8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AFA3B89C(&qword_1ED72F798);
    sub_1AFDFE918();
    v14 = v3[4];
    v13 = 5;
    sub_1AFDFE918();
    LOBYTE(v14) = 6;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA3A49C()
{
  v1 = *v0;
  v2 = 0x65727574786574;
  v3 = 1935763810;
  if (v1 != 5)
  {
    v3 = 0x656C676E61;
  }

  v4 = 0x65676E6172;
  if (v1 != 3)
  {
    v4 = 0x656C616373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x4D73736572646461;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFA3A568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA3A6B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA3A590(uint64_t a1)
{
  v2 = sub_1AFA3B700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA3A5CC(uint64_t a1)
{
  v2 = sub_1AFA3B700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA3A608@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA3A8F4(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 12);
    *(a2 + 28) = *(v7 + 12);
  }

  return result;
}

double sub_1AFA3A684@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 512;
  *(a1 + 12) = 0x3F80000000000000;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1AFA3A6B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574786574 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D73736572646461 && a2 == 0xEB0000000065646FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1AFA3A8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA3B7A8(0, &qword_1EB642370, sub_1AFA3B700, &type metadata for ParticlePositionOverTexture.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23 - v9;
  v11 = a1[3];
  v24 = a1;
  sub_1AF441150(a1, v11);
  sub_1AFA3B700();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  }

  v12 = v7;
  v25 = 0;
  sub_1AF47FEB4();
  v13 = v6;
  sub_1AFDFE768();
  v14 = v26;
  v25 = 1;
  sub_1AF51CA04();
  sub_1AFDFE768();
  v15 = v26;
  v25 = 2;
  sub_1AF51DBEC();
  sub_1AFDFE768();
  v16 = v26;
  sub_1AFA3B754(0, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  v25 = 3;
  sub_1AFA3B810(&qword_1ED7231A0);
  sub_1AFDFE768();
  HIDWORD(v23) = v16;
  v17 = v26;
  sub_1AFA3B7A8(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v25 = 4;
  sub_1AFA3B89C(&qword_1ED72F780);
  sub_1AFDFE768();
  v18 = v26;
  v25 = 5;
  sub_1AFDFE768();
  v19 = v26;
  LOBYTE(v26) = 6;
  sub_1AFDFE738();
  v21 = v20;
  (*(v12 + 8))(v10, v13);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v24);
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 9) = BYTE4(v23);
  *(a2 + 12) = v17;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v21;
  return result;
}

uint64_t sub_1AFA3AD38(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v2 = *a1;

  v3 = *(a1 + 8);

  sub_1AF3CE74C(v3, v92);

  v4 = *&v92[8];
  if ((*&v92[8] & 0xFF00) == 0x400 || *v92 == 0xFFFFFFFFLL || (v5 = *&v92[40], v6 = *&v92[32], v7 = *&v92[24], v8 = *&v92[16], sub_1AF8E60EC(*v92, 1, v85), !v87))
  {
  }

  else
  {
    v96[0] = v85[0];
    v96[1] = v85[1];
    v96[2] = v85[2];
    v97 = v86;
    v98 = v87;
    sub_1AF44222C(v96, v92);
    sub_1AF478700(v96, SBYTE1(v4), 1, v88);
    if (v90 == 1)
    {
      sub_1AF5FD844(v85, &unk_1ED725420, &type metadata for TextureCPURuntime);
    }

    v81[0] = v88[0];
    v81[1] = v88[1];
    v82 = v89;
    v83 = v90;
    v84 = v91;
    v10 = *(a1 + 104);
    v75 = *(a1 + 88);
    v76 = v10;
    v77 = *(a1 + 120);
    sub_1AF829104(v68);
    sub_1AF6AB600(&v65, v7, v5, v6);
    v73[0] = v68[0];
    v73[1] = v68[1];
    v74 = v69;
    sub_1AF6B06C0(v2, v73, 0x200000000, v92);
    if (!*v92)
    {
      sub_1AF5FD844(v85, &unk_1ED725420, &type metadata for TextureCPURuntime);
      sub_1AFA3B5D4(v68);
    }

    if (v95 <= 0)
    {
      sub_1AF5D15C0(v92, v80);
      sub_1AF5FD844(v85, &unk_1ED725420, &type metadata for TextureCPURuntime);
      sub_1AFA3B5D4(v68);

      sub_1AF5FD844(v92, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      v59 = *(&v93 + 1);
      if (*(&v93 + 1))
      {
        v11 = v8 - *(&v4 + 1);
        v58 = *&v92[40];
        v12 = *(&v94 + 1);
        v61 = *(v94 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v60 = *(*(&v94 + 1) + 32);
        v70 = *v92;
        v71 = *&v92[8];
        v72 = *&v92[24];
        v80[2] = *&v92[32];
        v80[3] = v93;
        v80[4] = v94;
        v80[5] = v95;
        v80[0] = *v92;
        v80[1] = *&v92[16];
        sub_1AF5DD298(v80, v78);
        v13 = 0;
        v14 = 0;
        while (1)
        {
          v62 = v14;
          v15 = v13;
          v16 = (v58 + 48 * v13);
          v17 = *v16;
          v18 = v16[1];
          v20 = *(v16 + 2);
          v19 = *(v16 + 3);
          v22 = *(v16 + 4);
          v21 = *(v16 + 5);
          if (v61)
          {
            v23 = *(v21 + 376);

            os_unfair_lock_lock(v23);
            os_unfair_lock_lock(*(v21 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v60);
          v24 = *(v12 + 64);
          v78[0] = *(v12 + 48);
          v78[1] = v24;
          v79 = *(v12 + 80);
          v25 = *(*(*(*(v21 + 40) + 16) + 32) + 16) + 1;
          *(v12 + 48) = ecs_stack_allocator_allocate(*(v12 + 32), 48 * v25, 8);
          *(v12 + 56) = v25;
          *(v12 + 72) = 0;
          *(v12 + 80) = 0;
          *(v12 + 64) = 0;
          v26 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v20, v19, v22, v12);
          v27 = v26;
          if (v20)
          {
            if (v22)
            {
              v28 = v67;
              v29 = v66;
              v30 = *v65.f32;
              v31 = v15;
              v14 = v62;
              v32.i32[3] = v57;
              do
              {
                v63 = v32.i32[3];
                v83(v81, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v29, *v27, 2), vadd_f32(v28, vmul_n_f32(v30, COERCE_FLOAT(*v27))))));
                if (v4 <= 1u)
                {
                  if (v4)
                  {
                    v33.i32[0] = v33.i32[1];
                  }
                }

                else if (v4 == 2)
                {
                  v33.i32[0] = v33.i32[2];
                }

                else if (v4 == 3)
                {
                  v33.i32[0] = v33.i32[3];
                }

                else
                {
                  v35 = 0.2126 * *v33.i32;
                  *v33.i8 = vmul_f32(*&vextq_s8(v33, v33, 4uLL), 0x3D93DD983F371759);
                  *v33.i32 = *&v33.i32[1] + (v35 + *v33.i32);
                }

                v32 = *v27;
                v32.i32[3] = v63;
                v34 = v32;
                v34.f32[1] = (v11 * *v33.i32) + *(&v4 + 1);
                v34.i32[3] = 1.0;
                *v27++ = v34;
                --v22;
              }

              while (v22);
              v57 = v63;
              goto LABEL_43;
            }
          }

          else if (v17 != v18)
          {
            v36 = v67;
            v37 = v18 - v17;
            v38 = (v26 + 16 * v17);
            v39 = v66;
            v40 = *v65.f32;
            v31 = v15;
            v14 = v62;
            v41.i32[3] = v56;
            do
            {
              v64 = v41.i32[3];
              v83(v81, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v39, *v38, 2), vadd_f32(v36, vmul_n_f32(v40, COERCE_FLOAT(*v38))))));
              if (v4 <= 1u)
              {
                if (v4)
                {
                  v42.i32[0] = v42.i32[1];
                }
              }

              else if (v4 == 2)
              {
                v42.i32[0] = v42.i32[2];
              }

              else if (v4 == 3)
              {
                v42.i32[0] = v42.i32[3];
              }

              else
              {
                v44 = 0.2126 * *v42.i32;
                *v42.i8 = vmul_f32(*&vextq_s8(v42, v42, 4uLL), 0x3D93DD983F371759);
                *v42.i32 = *&v42.i32[1] + (v44 + *v42.i32);
              }

              v41 = *v38;
              v41.i32[3] = v64;
              v43 = v41;
              v43.f32[1] = (v11 * *v42.i32) + *(&v4 + 1);
              v43.i32[3] = 1.0;
              *v38++ = v43;
              --v37;
            }

            while (v37);
            v56 = v64;
            goto LABEL_43;
          }

          v31 = v15;
          v14 = v62;
LABEL_43:
          sub_1AF630994(v12, &v70, v78);
          if (*(*(v12 + 104) + 16))
          {

            sub_1AF62F348(v45, v21);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v47 = *(v12 + 104);
            if (isUniquelyReferenced_nonNull_native)
            {
              v48 = v47[2];
              v49 = swift_isUniquelyReferenced_nonNull_native();
              *(v12 + 104) = v47;
              if ((v49 & 1) == 0)
              {
                v47 = sub_1AF420EA0(0, v48, 1, v47);
                *(v12 + 104) = v47;
              }

              sub_1AF43A540(0);
              swift_arrayDestroy();
              if (v48)
              {
                v50 = v47[2] - v48;
                memmove(v47 + 4, &v47[9 * v48 + 4], 72 * v50);
                v47[2] = v50;
              }

              *(v12 + 104) = v47;
            }

            else
            {
              v51 = MEMORY[0x1E69E7CC0];
              if (v47[3] >= 2uLL)
              {
                sub_1AF9FA280();
                v51 = swift_allocObject();
                v52 = j__malloc_size_0(v51);
                v51[2] = 0;
                v51[3] = 2 * ((v52 - 32) / 72);
              }

              *(v12 + 104) = v51;
            }

            if (*(*(v12 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
            {
              v53 = *(v21 + 232);
              v54 = *(v21 + 256);
              if (v53 == v54)
              {
                v55 = *(v21 + 240);
              }

              else
              {
                sub_1AF6497A0(v54, v53);
                v54 = *(v21 + 232);
                v55 = *(v21 + 240);
                if (v55 == v54)
                {
                  v55 = 0;
                  v54 = 0;
                  *(v21 + 232) = 0;
                  *(v21 + 240) = 0;
                }
              }

              *(v21 + 248) = v55;
              *(v21 + 256) = v54;
            }
          }

          ecs_stack_allocator_pop_snapshot(v60);
          if (v61)
          {
            os_unfair_lock_unlock(*(v21 + 344));
            os_unfair_lock_unlock(*(v21 + 376));
          }

          v13 = v31 + 1;
          if (v13 == v59)
          {
            sub_1AF5FD844(v92, &qword_1ED725EA0, &type metadata for QueryResult);

            sub_1AFA3B5D4(v68);
            sub_1AF5FD844(v85, &unk_1ED725420, &type metadata for TextureCPURuntime);
            return sub_1AF5FD844(v92, &qword_1ED725EA0, &type metadata for QueryResult);
          }
        }
      }

      sub_1AFA3B5D4(v68);
      sub_1AF5FD844(v85, &unk_1ED725420, &type metadata for TextureCPURuntime);
    }

    return sub_1AF5FD844(v92, &qword_1ED725EA0, &type metadata for QueryResult);
  }
}

uint64_t sub_1AFA3B5D4(uint64_t a1)
{
  sub_1AFA3B754(0, &qword_1EB641FE8, &type metadata for Position, &off_1F252EE70, type metadata accessor for Query1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticlePositionOverTexture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 44))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticlePositionOverTexture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1AFA3B700()
{
  result = qword_1EB642378;
  if (!qword_1EB642378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642378);
  }

  return result;
}

void sub_1AFA3B754(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFA3B7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFA3B810(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA3B754(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AFA3B89C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA3B7A8(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFA3B92C()
{
  result = qword_1EB642388;
  if (!qword_1EB642388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642388);
  }

  return result;
}

unint64_t sub_1AFA3B984()
{
  result = qword_1EB642390;
  if (!qword_1EB642390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642390);
  }

  return result;
}

unint64_t sub_1AFA3B9DC()
{
  result = qword_1EB642398;
  if (!qword_1EB642398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642398);
  }

  return result;
}

uint64_t sub_1AFA3BA30(uint64_t a1)
{
  v3 = *(a1 + 8);

  sub_1AF3CE834(v3, &v17);

  if (!v18)
  {
    sub_1AF9D3914(&unk_1F24F3CC0);
    sub_1AF9D3914(&unk_1F24F3CF0);
    sub_1AF9D3914(&unk_1F24F3D20);
  }

  v4 = *(a1 + 104);
  v33 = *(a1 + 88);
  v34 = v4;
  v35 = *(a1 + 120);
  sub_1AF5C936C(v20);
  sub_1AF5C52A8();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  *(v5 + 32) = &type metadata for TransientOriginScale;
  *(v5 + 40) = &off_1F25699B8;
  sub_1AF5F9038(v21);
  sub_1AFA3EB80(v20, &unk_1EB633CD0, &type metadata for Scale1, &off_1F252F788, sub_1AFA3EBE0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v6 = v21[1];
  *(v1 + 16) = v21[0];
  *(v1 + 32) = v6;
  *(v1 + 48) = v22;
  sub_1AF5C9390(v23);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for TransientOriginScale;
  *(v7 + 40) = &off_1F25699B8;
  sub_1AF5F9038(v24);
  sub_1AFA3EB80(v23, &unk_1EB633CC8, &type metadata for Scale2, &off_1F252F838, sub_1AFA3EBE0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v8 = v24[1];
  *(v1 + 56) = v24[0];
  *(v1 + 72) = v8;
  *(v1 + 88) = v25;
  sub_1AF5C93B4(v26);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = &type metadata for TransientOriginScale;
  *(v9 + 40) = &off_1F25699B8;
  sub_1AF5F9038(v27);
  sub_1AFA3EB80(v26, &unk_1EB633CD8, &type metadata for Scale, &off_1F252F8E8, sub_1AFA3EBE0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v10 = v27[1];
  *(v1 + 96) = v27[0];
  *(v1 + 112) = v10;
  *(v1 + 128) = v28;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE431C0;
  *(v11 + 32) = &type metadata for Scale1;
  *(v11 + 40) = &off_1F252F708;

  sub_1AF5D1EC0(v11, v29);
  sub_1AFA3EB80(v27, &unk_1EB633CD8, &type metadata for Scale, &off_1F252F8E8, sub_1AFA3EBE0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v12 = v29[1];
  *(v1 + 136) = v29[0];
  *(v1 + 152) = v12;
  *(v1 + 168) = v30;
  v13 = *(v1 + 112);
  v17 = *(v1 + 96);
  v18 = v13;
  v19 = *(v1 + 128);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE431C0;
  *(v14 + 32) = &type metadata for Scale2;
  *(v14 + 40) = &off_1F252F7B8;

  sub_1AF5D1EC0(v14, v31);
  sub_1AFA3EB80(&v17, &unk_1EB633CD8, &type metadata for Scale, &off_1F252F8E8, sub_1AFA3EBE0);
  sub_1AF688940(a1);
  swift_setDeallocating();
  swift_deallocClassInstance();
  v15 = v31[1];
  *(v1 + 176) = v31[0];
  *(v1 + 192) = v15;
  *(v1 + 208) = v32;
  return v1;
}

uint64_t sub_1AFA3BE8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AFA3BF08(void *a1)
{
  v3 = v1;
  sub_1AFA3F0B0(0, &qword_1EB6423A0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA3F05C();
  sub_1AFDFF3F8();
  *v12 = *v3;
  v13 = 0;
  sub_1AF9D68D0();
  sub_1AFDFE918();
  if (!v2)
  {
    v12[0] = *(v3 + 8);
    v13 = 1;
    sub_1AF51D998();
    sub_1AFDFE918();
    *v12 = *(v3 + 16);
    *&v12[9] = *(v3 + 25);
    v13 = 2;
    sub_1AF8C0110();
    sub_1AF8C021C(&qword_1EB63F018);
    sub_1AFDFE918();
    *v12 = *(v3 + 48);
    *&v12[9] = *(v3 + 57);
    v13 = 3;
    sub_1AFDFE918();
    *v12 = *(v3 + 80);
    *&v12[9] = *(v3 + 89);
    v13 = 4;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA3C19C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1AFA3BA30(a1);
  return v2;
}

uint64_t sub_1AFA3C200()
{
  v1 = *v0;
  v2 = 0x7469736F706D6F63;
  v3 = 0x657672754378;
  v4 = 0x657672754379;
  if (v1 != 3)
  {
    v4 = 0x65767275437ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701080941;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFA3C280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA3CAC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA3C2A8(uint64_t a1)
{
  v2 = sub_1AFA3F05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA3C2E4(uint64_t a1)
{
  v2 = sub_1AFA3F05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1AFA3C320@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA3CC6C(a1, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 89) = *(v8 + 9);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

char *sub_1AFA3C3AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1AF9D3914(&unk_1F24F3CC0);
  v4 = v3;
  v5 = sub_1AF9D3914(&unk_1F24F3CF0);
  v7 = v6;
  result = sub_1AF9D3914(&unk_1F24F3D20);
  *a1 = 2;
  *(a1 + 4) = 1065353216;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = result;
  *(a1 + 88) = v9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  return result;
}

uint64_t sub_1AFA3C44C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 104);
  v61 = *(a1 + 88);
  v62 = v3;
  v63 = *(a1 + 120);
  v56 = *(a1 + 8);
  v4 = *(a1 + 40);
  v57 = *(a1 + 24);
  v58 = v4;
  v59 = *(a1 + 56);
  v60 = v2;
  v5 = v56;

  sub_1AF3CE834(*(&v56 + 1), &v43);

  v6 = v44;
  if (v44)
  {
    v7 = v43;
    v8 = *(&v43 + 1);
    v37 = BYTE8(v43);
    v38 = v45;
    v39 = v46;
    v36 = v47;
    v41 = v48;
    v40 = v49;
    v42 = v50;
    v35 = v51;
    v9 = v52;
    v10 = v53;
    v11 = v54;
    v12 = v55;
  }

  else
  {
    v6 = sub_1AF9D3914(&unk_1F24F3CC0);
    v38 = v13;
    v41 = sub_1AF9D3914(&unk_1F24F3CF0);
    v40 = v14;
    v9 = sub_1AF9D3914(&unk_1F24F3D20);
    v10 = v15;
    v37 = 0;
    v39 = 0;
    v42 = 0;
    v11 = 0;
    v36 = 1;
    v8 = 1.0;
    v7 = 2;
    v35 = 1;
    v12 = 1;
  }

  sub_1AFB948C0();
  v16 = sub_1AF657F68(&type metadata for ParticleAge);

  if (v16 && (sub_1AFB948C0(), v17 = sub_1AF657F68(&type metadata for ParticleLifetime), , v17))
  {
    *&v43 = v8;
    BYTE4(v43) = v7;
    v18 = *a1;
    if (*a1)
    {
      ObjectType = swift_getObjectType();
      type metadata accessor for particle_size_over_life_uniforms(0);
      sub_1AF6F4524(&v43, 1, ObjectType, v20, v21, v22, v23, v24);
    }

    if (v37)
    {
      if (v37 != 1)
      {

        v25 = sub_1AF8B959C(v9, v10, v11, v12);

        if (v18)
        {
          [v18 setTexture:v25 atIndex:2];
        }

        swift_unknownObjectRelease();
      }

      v26 = sub_1AF8B959C(v41, v40, v42, v35);

      if (v18)
      {
        [v18 setTexture:v26 atIndex:1];
      }

      swift_unknownObjectRelease();
    }

    v27 = sub_1AF8B959C(v6, v38, v39, v36);

    if (v18)
    {
      [v18 setTexture:v27 atIndex:0];
    }

    swift_unknownObjectRelease();
    sub_1AF8ADD38(0, &qword_1ED730B70, &type metadata for FunctionConstant, MEMORY[0x1E69E6F90]);
    v28 = swift_allocObject();
    LOBYTE(v43) = 0;
    *(v28 + 16) = xmmword_1AFE431C0;
    *(v28 + 32) = xmmword_1AFE95560;
    *(v28 + 48) = 0;
    *(v28 + 64) = v37;
    *(v28 + 128) = 14;
    v29 = *(v5 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v30 = v58;

    v31 = v29;

    MEMORY[0x1EEE9AC00](v32, v33);
    sub_1AFCBF008(v30, sub_1AF9D17D4);
  }

  else
  {
  }
}

uint64_t sub_1AFA3CAC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657672754378 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657672754379 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65767275437ALL && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1AFA3CC6C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA3F0B0(0, &qword_1EB633AE0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v30 - v9;
  v11 = sub_1AF9D3914(&unk_1F25000E8);
  v41 = v12;
  v42 = v11;
  v13 = sub_1AF9D3914(&unk_1F2500118);
  v39 = v14;
  v40 = v13;
  v15 = sub_1AF9D3914(&unk_1F2500148);
  v37 = v16;
  v38 = v15;
  v17 = a1[3];
  v36 = a1;
  sub_1AF441150(a1, v17);
  sub_1AFA3F05C();
  sub_1AFDFF3B8();
  if (v2)
  {
    v18 = v40;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
    LOBYTE(v54) = 2;
    *(&v54 + 1) = v73;
    BYTE3(v54) = v74;
    HIDWORD(v54) = 1.0;
    LOBYTE(v55) = 0;
    *(&v55 + 1) = *v72;
    HIDWORD(v55) = *&v72[3];
    v56 = v42;
    v57 = v41;
    v58 = 0;
    v59 = 1;
    *&v60[3] = *&v71[3];
    *v60 = *v71;
    v61 = v18;
    v62 = v39;
    v63 = 0;
    v64 = 1;
    *v65 = *v70;
    *&v65[3] = *&v70[3];
    v66 = v38;
    v67 = v37;
    v68 = 0;
    v69 = 1;
    return sub_1AF58FF84(&v54);
  }

  else
  {
    v35 = v7;
    LOBYTE(v43) = 0;
    sub_1AF9D6798();
    sub_1AFDFE768();
    v34 = v54;
    v19 = HIDWORD(v54);
    LOBYTE(v43) = 1;
    sub_1AF51D944();
    sub_1AFDFE768();
    v33 = v54;
    sub_1AF8C0110();
    LOBYTE(v43) = 2;
    v20 = sub_1AF8C021C(qword_1ED724010);
    sub_1AFDFE768();

    v41 = v55;
    v42 = v54;
    v21 = v20;
    LOBYTE(v20) = v57;
    LOBYTE(v43) = 3;
    v31 = v21;
    v32 = v56;
    sub_1AFDFE768();

    v39 = v55;
    v40 = v54;
    v22 = v56;
    v23 = v57;
    v49 = 4;
    sub_1AFDFE768();
    (*(v35 + 8))(v10, v6);

    v37 = v51;
    v38 = v50;
    v35 = v52;
    LODWORD(v31) = v53;
    LOBYTE(v43) = v34;
    *(&v43 + 1) = v73;
    BYTE3(v43) = v74;
    DWORD1(v43) = v19;
    BYTE8(v43) = v33;
    *(&v43 + 9) = *v72;
    HIDWORD(v43) = *&v72[3];
    v25 = v41;
    v24 = v42;
    *&v44 = v42;
    *(&v44 + 1) = v41;
    *&v45 = v32;
    BYTE8(v45) = v20;
    *(&v45 + 9) = *v71;
    HIDWORD(v45) = *&v71[3];
    *&v46 = v40;
    *(&v46 + 1) = v39;
    *&v47 = v22;
    BYTE8(v47) = v23;
    *(&v47 + 9) = *v70;
    HIDWORD(v47) = *&v70[3];
    *v48 = v50;
    *&v48[8] = v51;
    *&v48[16] = v52;
    v48[24] = v53;
    sub_1AF4425FC(&v43, &v54);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v36);
    LOBYTE(v54) = v34;
    *(&v54 + 1) = v73;
    BYTE3(v54) = v74;
    HIDWORD(v54) = v19;
    LOBYTE(v55) = v33;
    *(&v55 + 1) = *v72;
    HIDWORD(v55) = *&v72[3];
    v56 = v24;
    v57 = v25;
    v58 = v32;
    v59 = v20;
    *&v60[3] = *&v71[3];
    *v60 = *v71;
    v61 = v40;
    v62 = v39;
    v63 = v22;
    v64 = v23;
    *v65 = *v70;
    *&v65[3] = *&v70[3];
    v66 = v38;
    v67 = v37;
    v68 = v35;
    v69 = v31;
    result = sub_1AF58FF84(&v54);
    v27 = *v48;
    a2[4] = v47;
    a2[5] = v27;
    *(a2 + 89) = *&v48[9];
    v28 = v44;
    *a2 = v43;
    a2[1] = v28;
    v29 = v46;
    a2[2] = v45;
    a2[3] = v29;
  }

  return result;
}

uint64_t sub_1AFA3D29C(uint64_t a1)
{
  v309 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);

  sub_1AF3CE834(v1, &v279);

  v3 = v280;
  if (v280)
  {
    v4 = v279;
    v2.i32[0] = DWORD1(v279);
    v5 = BYTE8(v279);
    v6 = v281;
    v7 = v282;
    v8 = v283;
    v9 = v284;
    v10 = v285;
    v11 = v286;
    v12 = v287;
    v13 = v288;
    v14 = v289;
    v15 = v290;
    v16 = v291;
  }

  else
  {
    v3 = sub_1AF9D3914(&unk_1F24F3CC0);
    v6 = v17;
    v9 = sub_1AF9D3914(&unk_1F24F3CF0);
    v10 = v18;
    v13 = sub_1AF9D3914(&unk_1F24F3D20);
    v5 = 0;
    v7 = 0;
    v11 = 0;
    v15 = 0;
    v8 = 1;
    v2.i32[0] = 1.0;
    v4 = 2;
    v12 = 1;
    v16 = 1;
  }

  v264[0] = v4;
  v228 = v2;
  v265 = v2.i32[0];
  v266 = v5;
  v267 = v3;
  v268 = v6;
  v269 = v7;
  v270 = v8;
  v271 = v9;
  v272 = v10;
  v273 = v11;
  v274 = v12;
  v216 = v13;
  v275 = v13;
  v208 = v14;
  v276 = v14;
  v203 = v15;
  v277 = v15;
  v197 = v16;
  v278 = v16;

  sub_1AF478E70(v3, v6, v7, v8, 32, v231);
  v229[6] = v231[6];
  v229[7] = v231[7];
  v229[8] = v231[8];
  v230 = v232;
  v229[2] = v231[2];
  v229[3] = v231[3];
  v229[4] = v231[4];
  v229[5] = v231[5];
  v229[0] = v231[0];
  v229[1] = v231[1];
  if (!v5)
  {
    v46 = v184;
    v47 = *(v184 + 32);
    v244 = *(v184 + 16);
    v245 = v47;
    *&v246 = *(v184 + 48);

    sub_1AF6B06C0(v48, &v244, 0x200000000, v256);

    if (*v256)
    {
      if (v259 > 0 && (v199 = *(&v257 + 1)) != 0)
      {
        v194 = *&v256[40];
        v49 = *(&v258 + 1);
        v50 = *(v258 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v220 = *(*(&v258 + 1) + 32);
        *v239 = *v256;
        *&v239[8] = *&v256[8];
        *&v239[24] = *&v256[24];
        *&v292[32] = *&v256[32];
        v293 = v257;
        v294 = v258;
        v295 = v259;
        *v292 = *v256;
        *&v292[16] = *&v256[16];
        sub_1AF5DD298(v292, v304);
        v51 = 0;
        v52 = 0;
        v189 = v50;
        do
        {
          v210 = v52;
          v53 = (v194 + 48 * v51);
          v54 = *v53;
          v205 = v53[1];
          v55 = *(v53 + 2);
          v56 = *(v53 + 3);
          v57 = *(v53 + 4);
          v58 = *(v53 + 5);
          if (v50)
          {
            v59 = *(v58 + 376);

            os_unfair_lock_lock(v59);
            os_unfair_lock_lock(*(v58 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v220);
          v60 = *(v49 + 64);
          v241 = *(v49 + 48);
          v242 = v60;
          v243 = *(v49 + 80);
          v61 = *(*(*(*(v58 + 40) + 16) + 32) + 16) + 1;
          *(v49 + 48) = ecs_stack_allocator_allocate(*(v49 + 32), 48 * v61, 8);
          *(v49 + 56) = v61;
          *(v49 + 72) = 0;
          *(v49 + 80) = 0;
          *(v49 + 64) = 0;
          v62 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v55, v56, v57, v49);
          v63 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v55, v56, v57, v49);
          v64 = v63;
          if (v55)
          {
            for (; v57; --v57)
            {
              v66 = sample_curve(v229, *v64);
              if (v4 > 1)
              {
                if (v4 == 2)
                {
                  v65 = (*v228.i32 * v66) * *v62;
                }

                else
                {
                  v65 = *v62 + ((v66 - *v62) * *v228.i32);
                }
              }

              else if (v4)
              {
                v65 = (*v228.i32 * v66) + *v62;
              }

              else
              {
                v65 = *v228.i32 * v66;
              }

              *v62++ = v65;
              ++v64;
            }
          }

          else if (v54 != v205)
          {
            v67 = v205 - v54;
            v68 = (v63 + 4 * v54);
            v69 = &v62[v54];
            do
            {
              v71 = sample_curve(v229, *v68);
              if (v4 > 1)
              {
                if (v4 == 2)
                {
                  v70 = (*v228.i32 * v71) * *v69;
                }

                else
                {
                  v70 = *v69 + ((v71 - *v69) * *v228.i32);
                }
              }

              else if (v4)
              {
                v70 = (*v228.i32 * v71) + *v69;
              }

              else
              {
                v70 = *v228.i32 * v71;
              }

              *v69++ = v70;
              ++v68;
              --v67;
            }

            while (v67);
          }

          v52 = v210;
          sub_1AF630994(v49, v239, &v241);
          sub_1AF62D29C(v58);
          ecs_stack_allocator_pop_snapshot(v220);
          v50 = v189;
          if (v189)
          {
            os_unfair_lock_unlock(*(v58 + 344));
            os_unfair_lock_unlock(*(v58 + 376));
          }

          ++v51;
        }

        while (v51 != v199);
        v148 = MEMORY[0x1E69E6720];
        sub_1AFA3EB80(v256, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF8ADD38);
        sub_1AFA3EB80(v256, &qword_1ED725EA0, &type metadata for QueryResult, v148, sub_1AF8ADD38);
        v46 = v184;
      }

      else
      {
        sub_1AFA3EB80(v256, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF8ADD38);
      }
    }

    v149 = *(v46 + 152);
    *&v240[32] = *(v46 + 168);
    *v240 = *(v46 + 136);
    *&v240[16] = v149;

    sub_1AF6B06C0(v150, v240, 0x200000000, v292);
    *&v304[32] = *&v292[32];
    v305 = v293;
    v306 = v294;
    v307 = v295;
    *v304 = *v292;
    *&v304[16] = *&v292[16];

    sub_1AF692DB0(v240);
    if (!*v292)
    {
      return sub_1AF58FF84(v264);
    }

    if (v295 <= 0 || (v187 = *(&v293 + 1)) == 0)
    {
      sub_1AF58FF84(v264);
      v145 = MEMORY[0x1E69E6720];
      v146 = v292;
      return sub_1AFA3EB80(v146, &qword_1ED725EA0, &type metadata for QueryResult, v145, sub_1AF8ADD38);
    }

    v183 = *&v292[40];
    v151 = *(&v294 + 1);
    v152 = *(v294 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v200 = *(*(&v294 + 1) + 32);
    *v308 = *v292;
    *&v308[8] = *&v292[8];
    *&v308[24] = *&v292[24];
    *&v300[32] = *&v304[32];
    v301 = v305;
    v302 = v306;
    v303 = v307;
    *v300 = *v304;
    *&v300[16] = *&v304[16];
    sub_1AF5DD298(v300, &v250);
    v153 = 0;
    v215 = vdupq_lane_s32(v228, 0);
    v180 = v152;
    while (1)
    {
      v154 = (v183 + 48 * v153);
      v195 = *v154;
      v192 = v154[1];
      v155 = *(v154 + 2);
      v156 = *(v154 + 3);
      v158 = *(v154 + 4);
      v157 = *(v154 + 5);
      if (v152)
      {
        v159 = *(v157 + 376);

        os_unfair_lock_lock(v159);
        os_unfair_lock_lock(*(v157 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v200);
      v160 = *(v151 + 64);
      v250 = *(v151 + 48);
      v251 = v160;
      *&v252 = *(v151 + 80);
      v161 = *(*(*(*(v157 + 40) + 16) + 32) + 16) + 1;
      *(v151 + 48) = ecs_stack_allocator_allocate(*(v151 + 32), 48 * v161, 8);
      *(v151 + 56) = v161;
      *(v151 + 72) = 0;
      *(v151 + 80) = 0;
      *(v151 + 64) = 0;
      v162 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v155, v156, v158, v151);
      v163 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v155, v156, v158, v151);
      v164 = v163;
      if (v155)
      {
        if (!v158)
        {
          goto LABEL_162;
        }

        while (1)
        {
          *v166.i32 = sample_curve(v229, *v164);
          if (v4 > 1)
          {
            if (v4 != 2)
            {
              v165 = vmlaq_f32(*v162, v215, vsubq_f32(vdupq_lane_s32(v166, 0), *v162));
              v165.i32[3] = v227;
              goto LABEL_154;
            }

            v168 = *v228.i32 * *v166.i32;
            v165.i64[0] = vmulq_n_f32(*v162, *v228.i32 * *v166.i32).u64[0];
            v165.i32[2] = vmuls_lane_f32(v168, *v162, 2);
          }

          else if (v4)
          {
            v167.i32[1] = v228.i32[1];
            *v167.i32 = *v228.i32 * *v166.i32;
            v165.i64[0] = vaddq_f32(vdupq_lane_s32(v167, 0), *v162).u64[0];
            v165.f32[2] = *v167.i32 + COERCE_FLOAT(v162->i64[1]);
          }

          else
          {
            *v166.i32 = *v228.i32 * *v166.i32;
            v165 = vdupq_lane_s32(v166, 0);
          }

          v165.i32[3] = 0;
LABEL_154:
          *v162++ = v165;
          ++v164;
          if (!--v158)
          {
            goto LABEL_162;
          }
        }
      }

      if (v195 != v192)
      {
        break;
      }

LABEL_162:
      sub_1AF630994(v151, v308, &v250);
      sub_1AF62D29C(v157);
      ecs_stack_allocator_pop_snapshot(v200);
      v152 = v180;
      if (v180)
      {
        os_unfair_lock_unlock(*(v157 + 344));
        os_unfair_lock_unlock(*(v157 + 376));
      }

      if (++v153 == v187)
      {
        v147 = MEMORY[0x1E69E6720];
        sub_1AFA3EB80(v292, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF8ADD38);
        sub_1AF58FF84(v264);
        v146 = v292;
        goto LABEL_177;
      }
    }

    v169 = v192 - v195;
    v170 = (v163 + 4 * v195);
    v171 = &v162[v195];
    while (1)
    {
      *v173.i32 = sample_curve(v229, *v170);
      if (v4 > 1)
      {
        if (v4 != 2)
        {
          v172 = vmlaq_f32(*v171, v215, vsubq_f32(vdupq_lane_s32(v173, 0), *v171));
          v172.i32[3] = v207;
          goto LABEL_167;
        }

        v175 = *v228.i32 * *v173.i32;
        v172.i64[0] = vmulq_n_f32(*v171, *v228.i32 * *v173.i32).u64[0];
        v172.i32[2] = vmuls_lane_f32(v175, *v171, 2);
      }

      else if (v4)
      {
        v174.i32[1] = v228.i32[1];
        *v174.i32 = *v228.i32 * *v173.i32;
        v172.i64[0] = vaddq_f32(vdupq_lane_s32(v174, 0), *v171).u64[0];
        v172.f32[2] = *v174.i32 + COERCE_FLOAT(v171->i64[1]);
      }

      else
      {
        *v173.i32 = *v228.i32 * *v173.i32;
        v172 = vdupq_lane_s32(v173, 0);
      }

      v172.i32[3] = 0;
LABEL_167:
      *v171++ = v172;
      ++v170;
      if (!--v169)
      {
        goto LABEL_162;
      }
    }
  }

  if (v5 == 1)
  {

    sub_1AF478E70(v9, v10, v11, v12, 32, v292);
    v258 = v294;
    v259 = v295;
    *&v256[32] = *&v292[32];
    v257 = v293;
    v263 = v299;
    v261 = v297;
    v262 = v298;
    v260 = v296;
    *v256 = *v292;
    *&v256[16] = *&v292[16];
    v19 = v184;
    v20 = *(v184 + 72);
    *v240 = *(v184 + 56);
    *&v240[16] = v20;
    *&v240[32] = *(v184 + 88);

    sub_1AF6B06C0(v21, v240, 0x200000000, v300);

    if (*v300)
    {
      if (v303 > 0 && (v198 = *(&v301 + 1)) != 0)
      {
        v193 = *&v300[40];
        v22 = *(&v302 + 1);
        v23 = *(v302 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v209 = *(*(&v302 + 1) + 32);
        v233 = *v300;
        v234 = *&v300[8];
        v235 = *&v300[24];
        *&v304[32] = *&v300[32];
        v305 = v301;
        v306 = v302;
        v307 = v303;
        *v304 = *v300;
        *&v304[16] = *&v300[16];
        sub_1AF5DD298(v304, &v250);
        v24 = 0;
        v25 = 0;
        v26 = vdup_lane_s32(v228, 0);
        v188 = v23;
        do
        {
          v204 = v25;
          v27 = (v193 + 48 * v24);
          v28 = *v27;
          v217 = v27[1];
          v29 = *(v27 + 2);
          v30 = *(v27 + 3);
          v31 = *(v27 + 4);
          v32 = *(v27 + 5);
          if (v23)
          {
            v33 = *(v32 + 376);

            os_unfair_lock_lock(v33);
            os_unfair_lock_lock(*(v32 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v209);
          v34 = *(v22 + 64);
          *v308 = *(v22 + 48);
          *&v308[16] = v34;
          *&v308[32] = *(v22 + 80);
          v35 = *(*(*(*(v32 + 40) + 16) + 32) + 16) + 1;
          *(v22 + 48) = ecs_stack_allocator_allocate(*(v22 + 32), 48 * v35, 8);
          *(v22 + 56) = v35;
          *(v22 + 72) = 0;
          *(v22 + 80) = 0;
          *(v22 + 64) = 0;
          v36 = sub_1AF64B110(&type metadata for Scale2, &off_1F252F838, v29, v30, v31, v22);
          v37 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v29, v30, v31, v22);
          v38 = v37;
          if (v29)
          {
            for (; v31; --v31)
            {
              v218 = sample_curve(v229, *v38);
              v40 = sample_curve(v256, *v38);
              if (v4 > 1)
              {
                if (v4 == 2)
                {
                  v39 = vmul_f32(vmul_n_f32(__PAIR64__(LODWORD(v40), LODWORD(v218)), *v228.i32), *v36);
                }

                else
                {
                  v39 = vmla_f32(*v36, v26, vsub_f32(__PAIR64__(LODWORD(v40), LODWORD(v218)), *v36));
                }
              }

              else
              {
                v39 = vmul_n_f32(__PAIR64__(LODWORD(v40), LODWORD(v218)), *v228.i32);
                if (v4)
                {
                  v39 = vadd_f32(v39, *v36);
                }
              }

              *v36++ = v39;
              ++v38;
            }
          }

          else if (v28 != v217)
          {
            v41 = v217 - v28;
            v42 = (v37 + 4 * v28);
            v43 = &v36[v28];
            do
            {
              v219 = sample_curve(v229, *v42);
              v45 = sample_curve(v256, *v42);
              if (v4 > 1)
              {
                if (v4 == 2)
                {
                  v44 = vmul_f32(vmul_n_f32(__PAIR64__(LODWORD(v45), LODWORD(v219)), *v228.i32), *v43);
                }

                else
                {
                  v44 = vmla_f32(*v43, v26, vsub_f32(__PAIR64__(LODWORD(v45), LODWORD(v219)), *v43));
                }
              }

              else
              {
                v44 = vmul_n_f32(__PAIR64__(LODWORD(v45), LODWORD(v219)), *v228.i32);
                if (v4)
                {
                  v44 = vadd_f32(v44, *v43);
                }
              }

              *v43++ = v44;
              ++v42;
              --v41;
            }

            while (v41);
          }

          v25 = v204;
          sub_1AF630994(v22, &v233, v308);
          sub_1AF62D29C(v32);
          ecs_stack_allocator_pop_snapshot(v209);
          v23 = v188;
          if (v188)
          {
            os_unfair_lock_unlock(*(v32 + 344));
            os_unfair_lock_unlock(*(v32 + 376));
          }

          ++v24;
        }

        while (v24 != v198);
        v110 = MEMORY[0x1E69E6720];
        sub_1AFA3EB80(v300, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF8ADD38);
        sub_1AFA3EB80(v300, &qword_1ED725EA0, &type metadata for QueryResult, v110, sub_1AF8ADD38);
        v19 = v184;
      }

      else
      {
        sub_1AFA3EB80(v300, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF8ADD38);
      }
    }

    v111 = *(v19 + 176);
    *&v239[16] = *(v19 + 192);
    *&v239[32] = *(v19 + 208);
    *v239 = v111;

    sub_1AF6B06C0(v112, v239, 0x200000000, v304);
    v252 = *&v304[32];
    v253 = v305;
    v254 = v306;
    v255 = v307;
    v250 = *v304;
    v251 = *&v304[16];

    sub_1AF692DB0(v239);
    if (*v304)
    {
      if (v307 > 0)
      {
        v182 = *(&v305 + 1);
        if (*(&v305 + 1))
        {
          v179 = *&v304[40];
          v113 = *(&v306 + 1);
          v114 = *(v306 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
          v191 = *(*(&v306 + 1) + 32);
          v236 = *v304;
          v237 = *&v304[8];
          v238 = *&v304[24];
          v246 = v252;
          v247 = v253;
          v248 = v254;
          v249 = v255;
          v244 = v250;
          v245 = v251;
          sub_1AF5DD298(&v244, &v241);
          v115 = 0;
          v214 = vdupq_lane_s32(v228, 0);
          __asm { FMOV            V0.4S, #1.0 }

          v201 = *(&_Q0 + 1);
          v177 = v114;
          while (1)
          {
            v121 = (v179 + 48 * v115);
            v224 = *v121;
            v186 = v121[1];
            v122 = *(v121 + 2);
            v123 = *(v121 + 3);
            v125 = *(v121 + 4);
            v124 = *(v121 + 5);
            if (v114)
            {
              v126 = *(v124 + 376);

              os_unfair_lock_lock(v126);
              os_unfair_lock_lock(*(v124 + 344));
            }

            else
            {
            }

            ecs_stack_allocator_push_snapshot(v191);
            v127 = *(v113 + 64);
            v241 = *(v113 + 48);
            v242 = v127;
            v243 = *(v113 + 80);
            v128 = *(*(*(*(v124 + 40) + 16) + 32) + 16) + 1;
            *(v113 + 48) = ecs_stack_allocator_allocate(*(v113 + 32), 48 * v128, 8);
            *(v113 + 56) = v128;
            *(v113 + 72) = 0;
            *(v113 + 80) = 0;
            *(v113 + 64) = 0;
            v129 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v122, v123, v125, v113);
            v130 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v122, v123, v125, v113);
            v131 = v130;
            if (v122)
            {
              if (!v125)
              {
                goto LABEL_126;
              }

              while (1)
              {
                v225 = sample_curve(v229, *v131);
                v134 = sample_curve(v256, *v131);
                if (v4 > 1)
                {
                  if (v4 == 2)
                  {
                    *v133.f32 = vmul_f32(vmul_f32(*v214.f32, __PAIR64__(LODWORD(v134), LODWORD(v225))), *v129);
                    v136 = vmuls_lane_f32(*v228.i32, *v129->f32, 2);
LABEL_124:
                    v133.i64[1] = LODWORD(v136);
                    goto LABEL_117;
                  }

                  v132.i64[1] = v201;
                  v132.i64[0] = __PAIR64__(LODWORD(v134), LODWORD(v225));
                  v133 = vmlaq_f32(*v129->f32, v214, vsubq_f32(v132, *v129->f32));
                  v133.i32[3] = v207;
                }

                else
                {
                  if (v4)
                  {
                    *v133.f32 = vadd_f32(vmul_f32(*v214.f32, __PAIR64__(LODWORD(v134), LODWORD(v225))), *v129);
                    v136 = *v228.i32 + COERCE_FLOAT(*&v129[1]);
                    goto LABEL_124;
                  }

                  v135 = *v228.i32 * v134;
                  v133.f32[0] = *v228.i32 * v225;
                  v133.f32[1] = v135;
                  v133.i64[1] = v228.u32[0];
                }

LABEL_117:
                *v129->f32 = v133;
                v129 += 2;
                ++v131;
                if (!--v125)
                {
                  goto LABEL_126;
                }
              }
            }

            if (v224 != v186)
            {
              break;
            }

LABEL_126:
            sub_1AF630994(v113, &v236, &v241);
            sub_1AF62D29C(v124);
            ecs_stack_allocator_pop_snapshot(v191);
            v114 = v177;
            if (v177)
            {
              os_unfair_lock_unlock(*(v124 + 344));
              os_unfair_lock_unlock(*(v124 + 376));
            }

            if (++v115 == v182)
            {
LABEL_139:
              v147 = MEMORY[0x1E69E6720];
              sub_1AFA3EB80(v304, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AF8ADD38);
              sub_1AF58FF84(v264);
              v146 = v304;
LABEL_177:
              v145 = v147;
              return sub_1AFA3EB80(v146, &qword_1ED725EA0, &type metadata for QueryResult, v145, sub_1AF8ADD38);
            }
          }

          v137 = v186 - v224;
          v138 = (v130 + 4 * v224);
          v139 = &v129[2 * v224];
          while (1)
          {
            v226 = sample_curve(v229, *v138);
            v142 = sample_curve(v256, *v138);
            if (v4 > 1)
            {
              if (v4 == 2)
              {
                *v141.f32 = vmul_f32(vmul_f32(*v214.f32, __PAIR64__(LODWORD(v142), LODWORD(v226))), *v139);
                v144 = vmuls_lane_f32(*v228.i32, *v139->f32, 2);
LABEL_137:
                v141.i64[1] = LODWORD(v144);
                goto LABEL_130;
              }

              v140.i64[1] = v201;
              v140.i64[0] = __PAIR64__(LODWORD(v142), LODWORD(v226));
              v141 = vmlaq_f32(*v139->f32, v214, vsubq_f32(v140, *v139->f32));
              v141.i32[3] = v196;
            }

            else
            {
              if (v4)
              {
                *v141.f32 = vadd_f32(vmul_f32(*v214.f32, __PAIR64__(LODWORD(v142), LODWORD(v226))), *v139);
                v144 = *v228.i32 + COERCE_FLOAT(*&v139[1]);
                goto LABEL_137;
              }

              v143 = *v228.i32 * v142;
              v141.f32[0] = *v228.i32 * v226;
              v141.f32[1] = v143;
              v141.i64[1] = v228.u32[0];
            }

LABEL_130:
            *v139->f32 = v141;
            v139 += 2;
            ++v138;
            if (!--v137)
            {
              goto LABEL_126;
            }
          }
        }
      }

      goto LABEL_138;
    }

    return sub_1AF58FF84(v264);
  }

  sub_1AF478E70(v9, v10, v11, v12, 32, v292);

  sub_1AF478E70(v216, v208, v203, v197, 32, v256);
  v243 = *(v184 + 128);
  v72 = *(v184 + 112);
  v241 = *(v184 + 96);
  v242 = v72;

  sub_1AF6B06C0(v73, &v241, 0x200000000, v304);
  *&v300[32] = *&v304[32];
  v301 = v305;
  v302 = v306;
  v303 = v307;
  *v300 = *v304;
  *&v300[16] = *&v304[16];

  sub_1AF692DB0(&v241);
  if (!*v304)
  {
    return sub_1AF58FF84(v264);
  }

  if (v307 > 0)
  {
    v190 = *(&v305 + 1);
    if (*(&v305 + 1))
    {
      v185 = *&v304[40];
      v74 = *(&v306 + 1);
      v75 = *(v306 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v76 = *(*(&v306 + 1) + 32);
      *v240 = *v304;
      *&v240[8] = *&v304[8];
      *&v240[24] = *&v304[24];
      v252 = *&v300[32];
      v253 = v301;
      v254 = v302;
      v255 = v303;
      v250 = *v300;
      v251 = *&v300[16];
      sub_1AF5DD298(&v250, &v244);
      v77 = 0;
      v78 = 0;
      v206 = vdupq_lane_s32(v228, 0);
      v181 = v75;
      v178 = v76;
      while (1)
      {
        v221 = v78;
        v79 = (v185 + 48 * v77);
        v80 = *v79;
        v211 = v79[1];
        v81 = *(v79 + 2);
        v82 = *(v79 + 3);
        v84 = *(v79 + 4);
        v83 = *(v79 + 5);
        if (v75)
        {
          v85 = *(v83 + 376);

          os_unfair_lock_lock(v85);
          os_unfair_lock_lock(*(v83 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v76);
        v86 = *(v74 + 64);
        v244 = *(v74 + 48);
        v245 = v86;
        *&v246 = *(v74 + 80);
        v87 = *(*(*(*(v83 + 40) + 16) + 32) + 16) + 1;
        *(v74 + 48) = ecs_stack_allocator_allocate(*(v74 + 32), 48 * v87, 8);
        *(v74 + 56) = v87;
        *(v74 + 72) = 0;
        *(v74 + 80) = 0;
        *(v74 + 64) = 0;
        v88 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v81, v82, v84, v74);
        v89 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v81, v82, v84, v74);
        v90 = v89;
        if (v81)
        {
          v78 = v221;
          if (!v84)
          {
            goto LABEL_88;
          }

          while (1)
          {
            v93.f32[0] = sample_curve(v229, *v90);
            v222 = v93;
            v212 = sample_curve(v292, *v90);
            v94 = sample_curve(v256, *v90);
            if (v4 > 1)
            {
              if (v4 == 2)
              {
                v96 = *v228.i32 * v94;
                *v92.f32 = vmul_f32(vmul_f32(*v206.f32, __PAIR64__(LODWORD(v212), v222.u32[0])), *v88);
                v97 = vmuls_lane_f32(v96, *v88->f32, 2);
LABEL_85:
                v92.i64[1] = LODWORD(v97);
                goto LABEL_78;
              }

              v91 = v222;
              v91.f32[1] = v212;
              v91.f32[2] = v94;
              v92 = vmlaq_f32(*v88->f32, v206, vsubq_f32(v91, *v88->f32));
              v92.i32[3] = v202;
            }

            else
            {
              if (v4)
              {
                v98 = *v228.i32 * v94;
                *v92.f32 = vadd_f32(vmul_f32(*v206.f32, __PAIR64__(LODWORD(v212), v222.u32[0])), *v88);
                v97 = v98 + COERCE_FLOAT(*&v88[1]);
                goto LABEL_85;
              }

              *&v95 = *v228.i32 * v94;
              v92.f32[0] = *v228.i32 * v222.f32[0];
              v92.f32[1] = *v228.i32 * v212;
              v92.i64[1] = v95;
            }

LABEL_78:
            *v88->f32 = v92;
            v88 += 2;
            ++v90;
            if (!--v84)
            {
              goto LABEL_88;
            }
          }
        }

        if (v80 != v211)
        {
          break;
        }

        v78 = v221;
LABEL_88:
        sub_1AF630994(v74, v240, &v244);
        sub_1AF62D29C(v83);
        v76 = v178;
        ecs_stack_allocator_pop_snapshot(v178);
        v75 = v181;
        if (v181)
        {
          os_unfair_lock_unlock(*(v83 + 344));
          os_unfair_lock_unlock(*(v83 + 376));
        }

        if (++v77 == v190)
        {
          goto LABEL_139;
        }
      }

      v99 = v211 - v80;
      v100 = (v89 + 4 * v80);
      v101 = &v88[2 * v80];
      v78 = v221;
      while (1)
      {
        v104.f32[0] = sample_curve(v229, *v100);
        v223 = v104;
        v213 = sample_curve(v292, *v100);
        v105 = sample_curve(v256, *v100);
        if (v4 > 1)
        {
          if (v4 == 2)
          {
            v107 = *v228.i32 * v105;
            *v103.f32 = vmul_f32(vmul_f32(*v206.f32, __PAIR64__(LODWORD(v213), v223.u32[0])), *v101);
            v108 = vmuls_lane_f32(v107, *v101->f32, 2);
LABEL_99:
            v103.i64[1] = LODWORD(v108);
            goto LABEL_92;
          }

          v102 = v223;
          v102.f32[1] = v213;
          v102.f32[2] = v105;
          v103 = vmlaq_f32(*v101->f32, v206, vsubq_f32(v102, *v101->f32));
          v103.i32[3] = v196;
        }

        else
        {
          if (v4)
          {
            v109 = *v228.i32 * v105;
            *v103.f32 = vadd_f32(vmul_f32(*v206.f32, __PAIR64__(LODWORD(v213), v223.u32[0])), *v101);
            v108 = v109 + COERCE_FLOAT(*&v101[1]);
            goto LABEL_99;
          }

          *&v106 = *v228.i32 * v105;
          v103.f32[0] = *v228.i32 * v223.f32[0];
          v103.f32[1] = *v228.i32 * v213;
          v103.i64[1] = v106;
        }

LABEL_92:
        *v101->f32 = v103;
        v101 += 2;
        ++v100;
        if (!--v99)
        {
          goto LABEL_88;
        }
      }
    }
  }

LABEL_138:
  sub_1AF58FF84(v264);
  v145 = MEMORY[0x1E69E6720];
  v146 = v304;
  return sub_1AFA3EB80(v146, &qword_1ED725EA0, &type metadata for QueryResult, v145, sub_1AF8ADD38);
}

uint64_t sub_1AFA3EB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1AFA3EBE0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Query2();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t destroy for ParticleSizeOverLife()
{
}

uint64_t initializeWithCopy for ParticleSizeOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithCopy for ParticleSizeOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for ParticleSizeOverLife(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for ParticleSizeOverLife(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for ParticleSizeOverLife(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFA3F05C()
{
  result = qword_1EB634020;
  if (!qword_1EB634020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634020);
  }

  return result;
}

void sub_1AFA3F0B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA3F05C();
    v7 = a3(a1, &type metadata for ParticleSizeOverLife.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA3F128()
{
  result = qword_1EB6423A8;
  if (!qword_1EB6423A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6423A8);
  }

  return result;
}

unint64_t sub_1AFA3F180()
{
  result = qword_1EB634010;
  if (!qword_1EB634010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634010);
  }

  return result;
}

unint64_t sub_1AFA3F1D8()
{
  result = qword_1EB634018;
  if (!qword_1EB634018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634018);
  }

  return result;
}

__n128 sub_1AFA3F22C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);

  sub_1AF3CE96C(v3, &v11);

  if (v12.n128_u8[4] << 32 == 0x300000000)
  {
    *a1 = 0xFFFFFFFFLL;
    *(a1 + 8) = 512;
    *(a1 + 12) = 0;
    *(a1 + 16) = 1065353216;
    *(a1 + 20) = 0;
    *(a1 + 24) = xmmword_1AFE21180;
    result.n128_u64[0] = 0x3F80000000000000;
    __asm { FMOV            V1.2S, #1.0 }

    *(a1 + 40) = 0x3F80000000000000;
    *(a1 + 48) = _D1;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  else
  {
    v10 = v14;
    *(a1 + 32) = v13;
    *(a1 + 48) = v10;
    *(a1 + 64) = v15;
    result = v12;
    *a1 = v11;
    *(a1 + 16) = result;
  }

  return result;
}

__n128 sub_1AFA3F2F8@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);

  sub_1AF3D01DC(v3, v7);

  if (*&v7[0] == 1)
  {
    *a1 = 0;
    *(a1 + 8) = xmmword_1AFE957F0;
    *(a1 + 24) = 8;
    *(a1 + 32) = 2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 1;
    *(a1 + 68) = xmmword_1AFE95800;
    result.n128_u64[0] = 0x41F0000041A00000;
    *(a1 + 84) = 0x41F0000041A00000;
    *(a1 + 92) = 1065353216;
    *(a1 + 96) = 0;
    *(a1 + 98) = 0;
  }

  else
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 95) = *(v8 + 15);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

double sub_1AFA3F3D0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);

  sub_1AF3D0428(v3, v12);

  if (*&v12[0] == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 65793;
    __asm { FMOV            V0.2S, #1.0 }

    *(a1 + 12) = _D0;
    *(a1 + 20) = 0;
    result = 33554440.2;
    *(a1 + 32) = xmmword_1AFE95810;
    *(a1 + 48) = xmmword_1AFE21120;
    *(a1 + 64) = 1;
    *(a1 + 66) = 0;
    *(a1 + 68) = 0;
    *(a1 + 72) = 1;
    *(a1 + 76) = 0;
    *(a1 + 80) = 1;
  }

  else
  {
    v10 = v12[3];
    *(a1 + 32) = v12[2];
    *(a1 + 48) = v10;
    *(a1 + 64) = v12[4];
    *(a1 + 80) = v13;
    result = *v12;
    v11 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v11;
  }

  return result;
}

uint64_t sub_1AFA3F4C8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x65727574786574;
    v7 = 0x4D73736572646461;
    v8 = 0x7469736F706D6F63;
    if (a1 != 3)
    {
      v8 = 1701080941;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6C656E6E616863;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656C616373;
    v2 = 1935763810;
    if (a1 != 9)
    {
      v2 = 0x656C676E61;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x65676E615278;
    v4 = 0x65676E615279;
    if (a1 != 6)
    {
      v4 = 0x65676E61527ALL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AFA3F600(void *a1)
{
  v3 = v1;
  sub_1AFA41878(0, &qword_1EB6423C0, sub_1AFA41824, &type metadata for ParticleSizeOverTexture.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA41824();
  sub_1AFDFF3F8();
  v14 = *v3;
  v13 = 0;
  sub_1AF480018();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v14) = *(v3 + 8);
    v13 = 1;
    sub_1AF51CA58();
    sub_1AFDFE918();
    LOBYTE(v14) = *(v3 + 9);
    v13 = 2;
    sub_1AF51DC40();
    sub_1AFDFE918();
    v14 = *(v3 + 12);
    v13 = 3;
    sub_1AF9D68D0();
    sub_1AFDFE918();
    LOBYTE(v14) = *(v3 + 20);
    v13 = 4;
    sub_1AF51D998();
    sub_1AFDFE918();
    v14 = v3[3];
    v13 = 5;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0);
    sub_1AFDFE918();
    v14 = v3[4];
    v13 = 6;
    sub_1AFDFE918();
    v14 = v3[5];
    v13 = 7;
    sub_1AFDFE918();
    v14 = v3[6];
    v13 = 8;
    sub_1AFA41878(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    sub_1AFA418E0(&qword_1ED72F798);
    sub_1AFDFE918();
    v14 = v3[7];
    v13 = 9;
    sub_1AFDFE918();
    LOBYTE(v14) = 10;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA3FA80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AFA3F4C8(*a1);
  v5 = v4;
  if (v3 == sub_1AFA3F4C8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA3FB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA3FC84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA3FB38(uint64_t a1)
{
  v2 = sub_1AFA41824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA3FB74(uint64_t a1)
{
  v2 = sub_1AFA41824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1AFA3FBB0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA3FFEC(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

double sub_1AFA3FC3C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 512;
  *(a1 + 12) = 0;
  *(a1 + 16) = 1065353216;
  *(a1 + 20) = 0;
  *(a1 + 24) = xmmword_1AFE21180;
  result = 0.0078125;
  __asm { FMOV            V1.2S, #1.0 }

  *(a1 + 40) = 0x3F80000000000000;
  *(a1 + 48) = _D1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_1AFA3FC84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65727574786574 && a2 == 0xE700000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D73736572646461 && a2 == 0xEB0000000065646FLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676E615278 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65676E615279 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65676E61527ALL && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 1935763810 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C676E61 && a2 == 0xE500000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1AFA3FFEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA41878(0, &qword_1EB6423B0, sub_1AFA41824, &type metadata for ParticleSizeOverTexture.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA41824();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v30 = 0;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  v10 = v31;
  v30 = 1;
  sub_1AF51CA04();
  sub_1AFDFE768();
  v11 = v31;
  v30 = 2;
  sub_1AF51DBEC();
  sub_1AFDFE768();
  v28 = v11;
  v12 = v31;
  v30 = 3;
  sub_1AF9D6798();
  sub_1AFDFE768();
  v27 = v12;
  v13 = v31;
  v14 = HIDWORD(v31);
  v30 = 4;
  sub_1AF51D944();
  sub_1AFDFE768();
  v25 = v13;
  v26 = v31;
  sub_1AF48C324();
  v30 = 5;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v15 = v31;
  v30 = 6;
  sub_1AFDFE768();
  v16 = v31;
  v30 = 7;
  sub_1AFDFE768();
  v17 = v31;
  sub_1AFA41878(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  v30 = 8;
  sub_1AFA418E0(&qword_1ED72F780);
  sub_1AFDFE768();
  v18 = v31;
  v30 = 9;
  sub_1AFDFE768();
  v19 = v31;
  LOBYTE(v31) = 10;
  sub_1AFDFE738();
  v21 = v20;
  (*(v6 + 8))(v9, v29);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v10;
  v23 = v27;
  *(a2 + 8) = v28;
  *(a2 + 9) = v23;
  v24 = v26;
  *(a2 + 12) = v25;
  *(a2 + 16) = v14;
  *(a2 + 20) = v24;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v19;
  *(a2 + 64) = v21;
  return result;
}

uint64_t sub_1AFA4052C(uint64_t a1)
{
  v208 = *MEMORY[0x1E69E9840];
  v2 = *a1;

  v3 = sub_1AFA3F22C(v201);
  v4 = v201[8];
  v5 = v201[9];
  v6 = v201[12];
  v3.n128_u32[0] = *&v201[16];
  v160 = v3.n128_u64[0];
  v7 = v201[20];
  v3.n128_u32[0] = *&v201[24];
  v164 = v3;
  v8 = *&v201[28];
  v3.n128_u32[0] = *&v201[32];
  v157 = v3;
  v9 = *&v201[36];
  v10 = *&v201[40];
  v11 = v202;
  v12 = *&v203;
  sub_1AF8E60EC(*v201, 1, v194);
  if (v196)
  {
    v205[0] = v194[0];
    v205[1] = v194[1];
    v205[2] = v194[2];
    v206 = v195;
    v207 = v196;
    sub_1AF44222C(v205, v201);
    sub_1AF478700(v205, v5, 1, v197);
    if (v199 == 1)
    {
      sub_1AF0D9DB0(v194, &unk_1ED725420);
    }

    v190[0] = v197[0];
    v190[1] = v197[1];
    v191 = v198;
    v192 = v199;
    v193 = v200;
    v14 = *(a1 + 104);
    v175 = *(a1 + 88);
    v176 = v14;
    v177 = *(a1 + 120);
    v15 = v173;
    sub_1AF5C9204(v173);
    if (v6)
    {
      sub_1AF5C52A8();
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1AFE431C0;
      *(v16 + 32) = &type metadata for TransientOriginScale;
      *(v16 + 40) = &off_1F25699B8;
      v15 = v174;
      sub_1AF5F9038(v174);
      sub_1AF9FA0EC(v173);
      swift_setDeallocating();
      swift_deallocClassInstance();
    }

    v17 = *(v15 + 2);
    v18 = v15[12];
    v19 = *(v15 + 2);
    v20 = v15[24];
    v21 = *(v15 + 4);
    v178 = *v15;
    v179 = v17;
    v180 = v18;
    v181 = v19;
    v182 = v20;
    v183 = v21;
    sub_1AF6AB600(&v167, *&v11, v12, *(&v11 + 1));
    v22 = v164;
    v22.n128_f32[0] = v8 - v164.n128_f32[0];
    v161 = v22;
    if (v7)
    {
      v23 = v157;
      v23.n128_f32[0] = v9 - v157.n128_f32[0];
      v155 = v23;
      if (v7 == 1)
      {
        sub_1AF6B06C0(v2, &v178, 0x200000000, v201);
        if (*v201)
        {
          if (v204 > 0)
          {
            v136 = *(&v202 + 1);
            if (*(&v202 + 1))
            {
              v24 = 0;
              v25 = 0;
              v133 = *&v201[40];
              v26 = *(&v203 + 1);
              v151 = *(*(&v203 + 1) + 32);
              v27 = *(v203 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v170 = *v201;
              v171 = *&v201[8];
              v172 = *&v201[24];
              v28 = v169;
              v29 = *v167.f32;
              v30 = v168;
              v162 = __PAIR64__(v155.n128_u32[0], v161.n128_u32[0]);
              v31 = v164;
              v31.n128_u32[1] = v157.n128_u32[0];
              v165 = v31;
              v158 = vdupq_lane_s32(v160, 0);
              v32 = &qword_1AFE8AD78[81];
              v132 = v27;
              while (1)
              {
                v33 = v32;
                v145 = v25;
                v148 = v24;
                v34 = (v133 + 48 * v24);
                v142 = *v34;
                v139 = v34[1];
                v35 = *(v34 + 2);
                v36 = *(v34 + 3);
                v38 = *(v34 + 4);
                v37 = *(v34 + 5);
                if (v27)
                {
                  v39 = *(v37 + 376);

                  os_unfair_lock_lock(v39);
                  os_unfair_lock_lock(*(v37 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v151);
                v40 = *(v26 + 64);
                v184 = *(v26 + 48);
                v185 = v40;
                *&v186 = *(v26 + 80);
                v41 = *(*(*(*(v37 + 40) + 16) + 32) + 16) + 1;
                *(v26 + 48) = ecs_stack_allocator_allocate(*(v26 + 32), 48 * v41, 8);
                *(v26 + 56) = v41;
                *(v26 + 72) = 0;
                *(v26 + 80) = 0;
                *(v26 + 64) = 0;
                v42 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v35, v36, v38, v26);
                v43 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v35, v36, v38, v26);
                v44 = v43;
                if (!v35)
                {
                  break;
                }

                v32 = v33;
                if (v38)
                {
                  v45 = v148;
                  while (1)
                  {
                    v192(v190, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v30, *v42, 2), vadd_f32(v28, vmul_n_f32(v29, COERCE_FLOAT(*v42))))));
                    if (v4 <= 1)
                    {
                      if (v4)
                      {
                        v47.i32[0] = v47.i32[1];
                      }
                    }

                    else if (v4 == 2)
                    {
                      v47.i32[0] = v47.i32[2];
                    }

                    else if (v4 == 3)
                    {
                      v47.i32[0] = v47.i32[3];
                    }

                    else
                    {
                      v48 = 0.2126 * *v47.i32;
                      *v47.i8 = vmul_f32(*&vextq_s8(v47, v47, 4uLL), v33[300]);
                      *v47.i32 = *&v47.i32[1] + (v48 + *v47.i32);
                    }

                    v49.i32[3] = v165.n128_i32[3];
                    *v49.f32 = vadd_f32(v165.n128_u64[0], vmul_n_f32(v162, *v47.i32));
                    if (v6 > 1)
                    {
                      if (v6 == 2)
                      {
                        *v46.f32 = vmul_f32(vmul_f32(*v158.f32, *v49.f32), *v44);
                        v50 = vmuls_lane_f32(*v160.i32, *v44->f32, 2);
LABEL_38:
                        v46.i64[1] = LODWORD(v50);
                        goto LABEL_23;
                      }

                      v49.i32[2] = 1.0;
                      v46 = vmlaq_f32(*v44->f32, v158, vsubq_f32(v49, *v44->f32));
                      v46.i32[3] = v155.n128_i32[3];
                    }

                    else
                    {
                      if (v6)
                      {
                        *v46.f32 = vadd_f32(vmul_f32(*v158.f32, *v49.f32), *v44);
                        v50 = *v160.i32 + COERCE_FLOAT(*&v44[1]);
                        goto LABEL_38;
                      }

                      v46.f32[0] = *v160.i32 * v49.f32[0];
                      v46.i32[1] = vmuls_lane_f32(*v160.i32, *v49.f32, 1);
                      v46.i64[1] = v160.u32[0];
                    }

LABEL_23:
                    *v44->f32 = v46;
                    v44 += 2;
                    ++v42;
                    if (!--v38)
                    {
                      goto LABEL_41;
                    }
                  }
                }

LABEL_40:
                v45 = v148;
LABEL_41:
                sub_1AF630994(v26, &v170, &v184);
                v25 = v145;
                sub_1AF62D29C(v37);
                ecs_stack_allocator_pop_snapshot(v151);
                v27 = v132;
                if (v132)
                {
                  os_unfair_lock_unlock(*(v37 + 344));
                  os_unfair_lock_unlock(*(v37 + 376));
                }

                v24 = v45 + 1;
                if (v24 == v136)
                {
                  goto LABEL_167;
                }
              }

              v32 = v33;
              if (v142 == v139)
              {
                goto LABEL_40;
              }

              v51 = v139 - v142;
              v52 = (v43 + 16 * v142);
              v53 = &v42[v142];
              v45 = v148;
              while (1)
              {
                v192(v190, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v30, *v53, 2), vadd_f32(v28, vmul_n_f32(v29, COERCE_FLOAT(*v53))))));
                if (v4 <= 1)
                {
                  if (v4)
                  {
                    v55.i32[0] = v55.i32[1];
                  }
                }

                else if (v4 == 2)
                {
                  v55.i32[0] = v55.i32[2];
                }

                else if (v4 == 3)
                {
                  v55.i32[0] = v55.i32[3];
                }

                else
                {
                  v56 = 0.2126 * *v55.i32;
                  *v55.i8 = vmul_f32(*&vextq_s8(v55, v55, 4uLL), v33[300]);
                  *v55.i32 = *&v55.i32[1] + (v56 + *v55.i32);
                }

                v57.i32[3] = v165.n128_i32[3];
                *v57.f32 = vadd_f32(v165.n128_u64[0], vmul_n_f32(v162, *v55.i32));
                if (v6 > 1)
                {
                  if (v6 == 2)
                  {
                    *v54.f32 = vmul_f32(vmul_f32(*v158.f32, *v57.f32), *v52);
                    v58 = vmuls_lane_f32(*v160.i32, *v52->f32, 2);
LABEL_60:
                    v54.i64[1] = LODWORD(v58);
                    goto LABEL_45;
                  }

                  v57.i32[2] = 1.0;
                  v54 = vmlaq_f32(*v52->f32, v158, vsubq_f32(v57, *v52->f32));
                  v54.i32[3] = v154;
                }

                else
                {
                  if (v6)
                  {
                    *v54.f32 = vadd_f32(vmul_f32(*v158.f32, *v57.f32), *v52);
                    v58 = *v160.i32 + COERCE_FLOAT(*&v52[1]);
                    goto LABEL_60;
                  }

                  v54.f32[0] = *v160.i32 * v57.f32[0];
                  v54.i32[1] = vmuls_lane_f32(*v160.i32, *v57.f32, 1);
                  v54.i64[1] = v160.u32[0];
                }

LABEL_45:
                *v52->f32 = v54;
                v52 += 2;
                ++v53;
                if (!--v51)
                {
                  goto LABEL_41;
                }
              }
            }

            goto LABEL_167;
          }

LABEL_166:
          v186 = *&v201[32];
          v187 = v202;
          v188 = v203;
          v189 = v204;
          v184 = *v201;
          v185 = *&v201[16];
          sub_1AF5DD298(&v184, &v170);

          sub_1AF0D9DB0(v194, &unk_1ED725420);

          sub_1AF0D9DB0(v201, &qword_1ED725EA0);
          return sub_1AF0D9DB0(v201, &qword_1ED725EA0);
        }

LABEL_163:
        sub_1AF0D9DB0(v194, &unk_1ED725420);
      }

      sub_1AF6B06C0(v2, &v178, 0x200000000, v201);
      if (!*v201)
      {
        goto LABEL_163;
      }

      if (v204 <= 0)
      {
        goto LABEL_166;
      }

      v141 = *(&v202 + 1);
      if (*(&v202 + 1))
      {
        v91 = 0;
        v92 = *(&v10 + 1) - *&v10;
        v138 = *&v201[40];
        v93 = *(&v203 + 1);
        v153 = *(*(&v203 + 1) + 32);
        v94 = *(v203 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v170 = *v201;
        v171 = *&v201[8];
        v172 = *&v201[24];
        v95 = v161;
        v95.n128_u32[1] = v155.n128_u32[0];
        v163 = v95;
        v96 = v169;
        v166 = __PAIR64__(v157.n128_u32[0], v164.n128_u32[0]);
        v159 = vdupq_lane_s32(v160, 0);
        v97 = *v167.f32;
        v98 = v168;
        v135 = v94;
        while (1)
        {
          v99 = (v138 + 48 * v91);
          v147 = *v99;
          v150 = v91;
          v144 = v99[1];
          v100 = *(v99 + 2);
          v101 = *(v99 + 3);
          v103 = *(v99 + 4);
          v102 = *(v99 + 5);
          if (v94)
          {
            v104 = *(v102 + 376);

            os_unfair_lock_lock(v104);
            os_unfair_lock_lock(*(v102 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v153);
          v105 = *(v93 + 64);
          v184 = *(v93 + 48);
          v185 = v105;
          *&v186 = *(v93 + 80);
          v106 = *(*(*(*(v102 + 40) + 16) + 32) + 16) + 1;
          *(v93 + 48) = ecs_stack_allocator_allocate(*(v93 + 32), 48 * v106, 8);
          *(v93 + 56) = v106;
          *(v93 + 72) = 0;
          *(v93 + 80) = 0;
          *(v93 + 64) = 0;
          v107 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v100, v101, v103, v93);
          v108 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v100, v101, v103, v93);
          v109 = v108;
          if (!v100)
          {
            break;
          }

          if (v103)
          {
            v110 = v150;
            while (1)
            {
              v192(v190, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v98, *v107, 2), vadd_f32(v96, vmul_n_f32(v97, COERCE_FLOAT(*v107))))));
              if (v4 <= 1)
              {
                if (v4)
                {
                  v112.i32[0] = v112.i32[1];
                }
              }

              else if (v4 == 2)
              {
                v112.i32[0] = v112.i32[2];
              }

              else if (v4 == 3)
              {
                v112.i32[0] = v112.i32[3];
              }

              else
              {
                v113 = 0.2126 * *v112.i32;
                *v112.i8 = vmul_f32(*&vextq_s8(v112, v112, 4uLL), 0x3D93DD983F371759);
                *v112.i32 = *&v112.i32[1] + (v113 + *v112.i32);
              }

              v114.i32[3] = v163.n128_i32[3];
              *v114.f32 = vadd_f32(v166, vmul_n_f32(v163.n128_u64[0], *v112.i32));
              v115 = *&v10 + (v92 * *v112.i32);
              if (v6 > 1)
              {
                if (v6 == 2)
                {
                  v117 = *v160.i32 * v115;
                  *v111.f32 = vmul_f32(vmul_f32(*v159.f32, *v114.f32), *v109);
                  v118 = vmuls_lane_f32(v117, *v109->f32, 2);
LABEL_140:
                  v111.i64[1] = LODWORD(v118);
                  goto LABEL_125;
                }

                v114.f32[2] = v115;
                v111 = vmlaq_f32(*v109->f32, v159, vsubq_f32(v114, *v109->f32));
                v111.i32[3] = v155.n128_i32[3];
              }

              else
              {
                if (v6)
                {
                  v119 = *v160.i32 * v115;
                  *v111.f32 = vadd_f32(vmul_f32(*v159.f32, *v114.f32), *v109);
                  v118 = v119 + COERCE_FLOAT(*&v109[1]);
                  goto LABEL_140;
                }

                *&v116 = *v160.i32 * v115;
                v111.f32[0] = *v160.i32 * v114.f32[0];
                v111.i32[1] = vmuls_lane_f32(*v160.i32, *v114.f32, 1);
                v111.i64[1] = v116;
              }

LABEL_125:
              *v109->f32 = v111;
              v109 += 2;
              ++v107;
              if (!--v103)
              {
                goto LABEL_143;
              }
            }
          }

LABEL_142:
          v110 = v150;
LABEL_143:
          sub_1AF630994(v93, &v170, &v184);
          sub_1AF62D29C(v102);
          ecs_stack_allocator_pop_snapshot(v153);
          v94 = v135;
          if (v135)
          {
            os_unfair_lock_unlock(*(v102 + 344));
            os_unfair_lock_unlock(*(v102 + 376));
          }

          v91 = v110 + 1;
          if (v91 == v141)
          {
            goto LABEL_167;
          }
        }

        if (v147 == v144)
        {
          goto LABEL_142;
        }

        v120 = v144 - v147;
        v121 = (v108 + 16 * v147);
        v122 = &v107[v147];
        v110 = v150;
        while (1)
        {
          v192(v190, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v98, *v122, 2), vadd_f32(v96, vmul_n_f32(v97, COERCE_FLOAT(*v122))))));
          if (v4 <= 1)
          {
            if (v4)
            {
              v124.i32[0] = v124.i32[1];
            }
          }

          else if (v4 == 2)
          {
            v124.i32[0] = v124.i32[2];
          }

          else if (v4 == 3)
          {
            v124.i32[0] = v124.i32[3];
          }

          else
          {
            v125 = 0.2126 * *v124.i32;
            *v124.i8 = vmul_f32(*&vextq_s8(v124, v124, 4uLL), 0x3D93DD983F371759);
            *v124.i32 = *&v124.i32[1] + (v125 + *v124.i32);
          }

          v126.i32[3] = v163.n128_i32[3];
          *v126.f32 = vadd_f32(v166, vmul_n_f32(v163.n128_u64[0], *v124.i32));
          v127 = *&v10 + (v92 * *v124.i32);
          if (v6 > 1)
          {
            if (v6 == 2)
            {
              v129 = *v160.i32 * v127;
              *v123.f32 = vmul_f32(vmul_f32(*v159.f32, *v126.f32), *v121);
              v130 = vmuls_lane_f32(v129, *v121->f32, 2);
LABEL_162:
              v123.i64[1] = LODWORD(v130);
              goto LABEL_147;
            }

            v126.f32[2] = v127;
            v123 = vmlaq_f32(*v121->f32, v159, vsubq_f32(v126, *v121->f32));
            v123.i32[3] = v154;
          }

          else
          {
            if (v6)
            {
              v131 = *v160.i32 * v127;
              *v123.f32 = vadd_f32(vmul_f32(*v159.f32, *v126.f32), *v121);
              v130 = v131 + COERCE_FLOAT(*&v121[1]);
              goto LABEL_162;
            }

            *&v128 = *v160.i32 * v127;
            v123.f32[0] = *v160.i32 * v126.f32[0];
            v123.i32[1] = vmuls_lane_f32(*v160.i32, *v126.f32, 1);
            v123.i64[1] = v128;
          }

LABEL_147:
          *v121->f32 = v123;
          v121 += 2;
          ++v122;
          if (!--v120)
          {
            goto LABEL_143;
          }
        }
      }

LABEL_167:

      sub_1AF0D9DB0(v194, &unk_1ED725420);
      return sub_1AF0D9DB0(v201, &qword_1ED725EA0);
    }

    sub_1AF6B06C0(v2, &v178, 0x200000000, v201);
    if (!*v201)
    {
      goto LABEL_163;
    }

    if (v204 <= 0)
    {
      goto LABEL_166;
    }

    v140 = *(&v202 + 1);
    if (!*(&v202 + 1))
    {
      goto LABEL_167;
    }

    v59 = 0;
    i = 0;
    v137 = *&v201[40];
    v61 = *(&v203 + 1);
    v152 = *(*(&v203 + 1) + 32);
    v62 = *(v203 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v170 = *v201;
    v171 = *&v201[8];
    v172 = *&v201[24];
    v63 = v169;
    v64 = *v167.f32;
    v65 = v168;
    v156 = vdupq_lane_s32(v160, 0);
    v134 = v62;
    while (1)
    {
      v146 = i;
      v149 = v59;
      v66 = (v137 + 48 * v59);
      v67 = *v66;
      v143 = v66[1];
      v69 = *(v66 + 2);
      v68 = *(v66 + 3);
      v70 = *(v66 + 4);
      v71 = *(v66 + 5);
      if (v62)
      {
        v72 = *(v71 + 376);

        os_unfair_lock_lock(v72);
        os_unfair_lock_lock(*(v71 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v152);
      v73 = *(v61 + 64);
      v184 = *(v61 + 48);
      v185 = v73;
      *&v186 = *(v61 + 80);
      v74 = *(*(*(*(v71 + 40) + 16) + 32) + 16) + 1;
      *(v61 + 48) = ecs_stack_allocator_allocate(*(v61 + 32), 48 * v74, 8);
      *(v61 + 56) = v74;
      *(v61 + 72) = 0;
      *(v61 + 80) = 0;
      *(v61 + 64) = 0;
      v75 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v69, v68, v70, v61);
      v76 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v69, v68, v70, v61);
      v77 = v76;
      if (!v69)
      {
        break;
      }

      for (i = v146; v70; --v70)
      {
        v192(v190, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v65, *v75, 2), vadd_f32(v63, vmul_n_f32(v64, COERCE_FLOAT(*v75))))));
        if (v4 <= 1)
        {
          if (v4)
          {
            v78.i32[0] = v78.i32[1];
          }
        }

        else if (v4 == 2)
        {
          v78.i32[0] = v78.i32[2];
        }

        else if (v4 == 3)
        {
          v78.i32[0] = v78.i32[3];
        }

        else
        {
          v79 = 0.2126 * *v78.i32;
          *v78.i8 = vmul_f32(*&vextq_s8(v78, v78, 4uLL), 0x3D93DD983F371759);
          *v78.i32 = *&v78.i32[1] + (v79 + *v78.i32);
        }

        *v78.i32 = v164.n128_f32[0] + (v161.n128_f32[0] * *v78.i32);
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            v80 = *v160.i32 * *v78.i32;
            v78.i64[0] = vmulq_n_f32(*v77, *v160.i32 * *v78.i32).u64[0];
            v81 = vmuls_lane_f32(v80, *v77, 2);
LABEL_88:
            v78.i64[1] = LODWORD(v81);
            goto LABEL_73;
          }

          v78 = vmlaq_f32(*v77, v156, vsubq_f32(vdupq_lane_s32(*v78.i8, 0), *v77));
          v78.i32[3] = v157.n128_i32[3];
        }

        else
        {
          if (v6)
          {
            v82.i32[1] = v160.i32[1];
            *v82.i32 = *v160.i32 * *v78.i32;
            v78.i64[0] = vaddq_f32(vdupq_lane_s32(v82, 0), *v77).u64[0];
            v81 = *v82.i32 + COERCE_FLOAT(v77->i64[1]);
            goto LABEL_88;
          }

          *v78.i32 = *v160.i32 * *v78.i32;
          v78 = vdupq_lane_s32(*v78.i8, 0);
          v78.i32[3] = 0;
        }

LABEL_73:
        *v77++ = v78;
        ++v75;
      }

LABEL_92:
      sub_1AF630994(v61, &v170, &v184);
      sub_1AF62D29C(v71);
      ecs_stack_allocator_pop_snapshot(v152);
      v62 = v134;
      if (v134)
      {
        os_unfair_lock_unlock(*(v71 + 344));
        os_unfair_lock_unlock(*(v71 + 376));
      }

      v59 = v149 + 1;
      if (v149 + 1 == v140)
      {
        goto LABEL_167;
      }
    }

    if (v67 == v143)
    {
LABEL_91:
      i = v146;
      goto LABEL_92;
    }

    v83 = v143 - v67;
    v84 = (v76 + 16 * v67);
    v85 = &v75[v67];
    while (1)
    {
      v192(v190, COERCE_DOUBLE(vadd_f32(vmul_laneq_f32(v65, *v85, 2), vadd_f32(v63, vmul_n_f32(v64, COERCE_FLOAT(*v85))))));
      if (v4 <= 1)
      {
        if (v4)
        {
          v87.i32[0] = v87.i32[1];
        }
      }

      else if (v4 == 2)
      {
        v87.i32[0] = v87.i32[2];
      }

      else if (v4 == 3)
      {
        v87.i32[0] = v87.i32[3];
      }

      else
      {
        v89 = 0.2126 * *v87.i32;
        *v87.i8 = vmul_f32(*&vextq_s8(v87, v87, 4uLL), 0x3D93DD983F371759);
        *v87.i32 = *&v87.i32[1] + (v89 + *v87.i32);
      }

      *v87.i32 = v164.n128_f32[0] + (v161.n128_f32[0] * *v87.i32);
      if (v6 > 1)
      {
        if (v6 != 2)
        {
          v87 = vmlaq_f32(*v84, v156, vsubq_f32(vdupq_lane_s32(*v87.i8, 0), *v84));
          v87.i32[3] = v154;
          goto LABEL_98;
        }

        v86 = *v160.i32 * *v87.i32;
        v87.i64[0] = vmulq_n_f32(*v84, *v160.i32 * *v87.i32).u64[0];
        v88 = vmuls_lane_f32(v86, *v84, 2);
      }

      else
      {
        if (!v6)
        {
          *v87.i32 = *v160.i32 * *v87.i32;
          v87 = vdupq_lane_s32(*v87.i8, 0);
          goto LABEL_97;
        }

        v90.i32[1] = v160.i32[1];
        *v90.i32 = *v160.i32 * *v87.i32;
        v87.i64[0] = vaddq_f32(vdupq_lane_s32(v90, 0), *v84).u64[0];
        v88 = *v90.i32 + COERCE_FLOAT(v84->i64[1]);
      }

      *&v87.i32[2] = v88;
LABEL_97:
      v87.i32[3] = 0;
LABEL_98:
      *v84++ = v87;
      ++v85;
      if (!--v83)
      {
        goto LABEL_91;
      }
    }
  }
}

__n128 initializeWithCopy for ParticleSizeOverTexture(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for ParticleSizeOverTexture(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 68))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleSizeOverTexture(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 68) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 68) = 0;
    }

    if (a2)
    {
      *(result + 20) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AFA41824()
{
  result = qword_1EB6423B8;
  if (!qword_1EB6423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6423B8);
  }

  return result;
}

void sub_1AFA41878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFA418E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AFA41878(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AFA41970()
{
  result = qword_1EB6423C8;
  if (!qword_1EB6423C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6423C8);
  }

  return result;
}

unint64_t sub_1AFA419C8()
{
  result = qword_1EB6423D0;
  if (!qword_1EB6423D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6423D0);
  }

  return result;
}

unint64_t sub_1AFA41A20()
{
  result = qword_1EB6423D8;
  if (!qword_1EB6423D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6423D8);
  }

  return result;
}

uint64_t sub_1AFA41A98(void *a1)
{
  v3 = v1;
  sub_1AFA43B54(0, &qword_1EB642400, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA43B00();
  sub_1AFDFF3F8();
  v13 = *v3;
  HIBYTE(v12) = 0;
  sub_1AF9D68D0();
  sub_1AFDFE918();
  if (!v2)
  {
    LOBYTE(v13) = *(v3 + 8);
    HIBYTE(v12) = 1;
    sub_1AF51D998();
    sub_1AFDFE918();
    v13 = *(v3 + 12);
    HIBYTE(v12) = 2;
    sub_1AF48C324();
    sub_1AF48C3D0(&qword_1EB6398A0);
    sub_1AFDFE918();
    v13 = *(v3 + 20);
    HIBYTE(v12) = 3;
    sub_1AFDFE918();
    v13 = *(v3 + 28);
    HIBYTE(v12) = 4;
    sub_1AFDFE918();
    v13 = *(v3 + 36);
    HIBYTE(v12) = 5;
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA41D78()
{
  v1 = *v0;
  v2 = 0x7469736F706D6F63;
  v3 = 0x65676E615278;
  v4 = 0x65676E615279;
  if (v1 != 4)
  {
    v4 = 0x65676E61527ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701080941;
  if (v1 != 1)
  {
    v5 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFA41E24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA41F68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA41E4C(uint64_t a1)
{
  v2 = sub_1AFA43B00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA41E88(uint64_t a1)
{
  v2 = sub_1AFA43B00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA41EC4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AFA42160(a1, &v6);
  if (!v2)
  {
    v5 = *v7;
    *a2 = v6;
    a2[1] = v5;
    result = *&v7[12];
    *(a2 + 28) = *&v7[12];
  }

  return result;
}

double sub_1AFA41F44@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1065353216;
  *(a1 + 8) = 0;
  result = 0.0078125;
  *(a1 + 12) = xmmword_1AFE21180;
  *(a1 + 28) = xmmword_1AFE21180;
  return result;
}

uint64_t sub_1AFA41F68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469736F706D6F63 && a2 == 0xEB000000006E6F69;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469636F6C6576 && a2 == 0xED000065676E6152 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E615278 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E615279 && a2 == 0xE600000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65676E61527ALL && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1AFA42160@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA43B54(0, &qword_1EB6423F0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v19 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA43B00();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v22 = 0;
  sub_1AF9D6798();
  sub_1AFDFE768();
  v11 = v23;
  v12 = HIDWORD(v23);
  v22 = 1;
  sub_1AF51D944();
  sub_1AFDFE768();
  v20 = v23;
  v21 = v11;
  sub_1AF48C324();
  v22 = 2;
  sub_1AF48C3D0(&qword_1ED7231A0);
  sub_1AFDFE768();
  v13 = v23;
  v22 = 3;
  sub_1AFDFE768();
  v14 = v23;
  v22 = 4;
  sub_1AFDFE768();
  v15 = v23;
  v22 = 5;
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v16 = v23;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v18 = v20;
  *a2 = v21;
  *(a2 + 4) = v12;
  *(a2 + 8) = v18;
  *(a2 + 12) = v13;
  *(a2 + 20) = v14;
  *(a2 + 28) = v15;
  *(a2 + 36) = v16;
  return result;
}

uint64_t sub_1AFA424A0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  sub_1AF3CEA58(v2, v226);
  v162.i64[0] = v3;

  v4 = v226[8];
  if (v226[8] == 3)
  {
    v5 = 0;
    v4 = 0;
    v196 = 0;
    v6 = 0.0;
    v192 = COERCE_UNSIGNED_INT(1.0);
    v188 = 1.0;
    v7 = 1.0;
    v8 = 1.0;
    v9 = 0.0;
    v10 = 1.0;
  }

  else
  {
    v10 = *&v226[40];
    v5 = v226[0];
    v11 = vshrn_n_s64(*&v226[16], 0x20uLL);
    v196 = v11;
    v11.i32[0] = *&v226[4];
    v188 = *&v226[16];
    v192 = v11;
    v6 = *&v226[12];
    v7 = *&v226[24];
    v9 = *&v226[36];
    v8 = *&v226[32];
  }

  v12 = *(a1 + 13);
  v236 = *(a1 + 11);
  v237 = v12;
  v238 = a1[15];
  v13 = v215;
  sub_1AF5C93D8(v215);
  v14 = v216;
  sub_1AF5C93FC(v216);
  sub_1AF5C93D8(v217);
  sub_1AF5C52A8();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1AFE431C0;
  *(v15 + 32) = &type metadata for Scale1;
  *(v15 + 40) = &off_1F252F708;
  v16 = v218;
  sub_1AF5D1EC0(v15, v218);
  sub_1AFA43994(v217, &qword_1EB6423E0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  if (v5)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1AFE431C0;
    *(v17 + 32) = &type metadata for TransientOriginScale;
    *(v17 + 40) = &off_1F25699B8;
    v13 = v219;
    sub_1AF5F9038(v219);
    sub_1AFA43994(v215, &qword_1EB6423E0);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE431C0;
    *(v18 + 32) = &type metadata for TransientOriginScale;
    *(v18 + 40) = &off_1F25699B8;
    v14 = v220;
    sub_1AF5F9038(v220);
    sub_1AFA43994(v216, &qword_1EB6423E8);
    swift_setDeallocating();
    swift_deallocClassInstance();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1AFE431C0;
    *(v19 + 32) = &type metadata for TransientOriginScale;
    *(v19 + 40) = &off_1F25699B8;
    v16 = v221;
    sub_1AF5F9038(v221);
    sub_1AFA43994(v218, &qword_1EB6423E0);
    swift_setDeallocating();
    swift_deallocClassInstance();
  }

  v20 = *(v14 + 2);
  v21 = v14[12];
  v22 = *(v14 + 2);
  v23 = v14[24];
  v24 = *(v13 + 2);
  v25 = v13[12];
  v26 = *(v13 + 2);
  v27 = v13[24];
  v28 = *(v13 + 4);
  v29 = *(v16 + 2);
  v30 = v16[12];
  v31 = *(v16 + 2);
  v32 = v16[24];
  v33 = *(v16 + 4);
  v34 = *v16;
  v35 = *v13;
  v36 = *v14;
  v252 = *(v14 + 4);
  v253 = v35;
  v254 = v24;
  v255 = v25;
  v256 = v26;
  v257 = v27;
  v258 = v28;
  v247 = v36;
  v248 = v20;
  v249 = v21;
  v250 = v22;
  v251 = v23;
  v239 = v34;
  v240 = v29;
  v241 = v30;
  v37 = 0.0;
  v242 = v31;
  v243 = v32;
  v244 = v33;
  if (v188 != v6)
  {
    v37 = 1.0 / (v188 - v6);
    v6 = -(v6 * v37);
  }

  v193 = v7 - v196.f32[0];
  if (v4)
  {
    if (v4 == 1)
    {

      sub_1AF6B06C0(v38, &v253, 0x200000000, v226);
      *&v222[32] = *&v226[32];
      v223 = v227;
      v224 = v228;
      v225 = v229;
      *v222 = *v226;
      *&v222[16] = *&v226[16];

      if (*v226)
      {
        if (v229 > 0)
        {
          v175 = *(&v227 + 1);
          if (*(&v227 + 1))
          {
            v171 = *&v226[40];
            v39 = *(&v228 + 1);
            v40 = *(v228 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v189 = *(*(&v228 + 1) + 32);
            *v199 = *v226;
            *&v199[8] = *&v226[8];
            *&v199[24] = *&v226[24];
            v211 = *&v222[32];
            v212 = v223;
            v213 = v224;
            v214 = v225;
            v209 = *v222;
            v210 = *&v222[16];
            sub_1AF5DD298(&v209, &v203);
            v41 = 0;
            v42 = 0;
            v43.f32[0] = v7 - v196.f32[0];
            v43.f32[1] = v8 - v196.f32[1];
            v194 = v43;
            v163 = vdupq_lane_s32(v192, 0);
            v167 = v40;
            while (1)
            {
              v183 = v42;
              v44 = (v171 + 48 * v41);
              v45 = *v44;
              v179 = v44[1];
              v46 = *(v44 + 2);
              v47 = *(v44 + 3);
              v49 = *(v44 + 4);
              v48 = *(v44 + 5);
              if (v40)
              {
                v50 = *(v48 + 376);

                os_unfair_lock_lock(v50);
                os_unfair_lock_lock(*(v48 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v189);
              v51 = *(v39 + 64);
              v203 = *(v39 + 48);
              v204 = v51;
              *&v205 = *(v39 + 80);
              v52 = *(*(*(*(v48 + 40) + 16) + 32) + 16) + 1;
              *(v39 + 48) = ecs_stack_allocator_allocate(*(v39 + 32), 48 * v52, 8);
              *(v39 + 56) = v52;
              *(v39 + 72) = 0;
              *(v39 + 80) = 0;
              *(v39 + 64) = 0;
              v53 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v46, v47, v49, v39);
              v54 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v46, v47, v49, v39);
              if (v46)
              {
                v42 = v183;
                v55 = v162;
                if (!v49)
                {
                  v40 = v167;
                  goto LABEL_44;
                }

                while (1)
                {
                  v57 = vmulq_f32(*v54, *v54);
                  v58 = vextq_s8(v57, v57, 8uLL);
                  *v58.f32 = vadd_f32(v196, vmul_n_f32(v194, fminf(fmaxf(v6 + (v37 * sqrtf(vaddv_f32(vadd_f32(*v57.i8, *v58.f32)))), 0.0), 1.0)));
                  if (v5 > 1)
                  {
                    if (v5 == 2)
                    {
                      *v56.f32 = vmul_f32(vmul_f32(*v163.f32, *v58.f32), *v53);
                      v59 = vmuls_lane_f32(*v192.i32, *v53->f32, 2);
LABEL_29:
                      v56.i64[1] = LODWORD(v59);
                      goto LABEL_22;
                    }

                    v58.i32[2] = 1.0;
                    v56 = vmlaq_f32(*v53->f32, v163, vsubq_f32(v58, *v53->f32));
                    v56.i32[3] = v55.i32[3];
                    v55 = v56;
                  }

                  else
                  {
                    if (v5)
                    {
                      *v56.f32 = vadd_f32(vmul_f32(*v163.f32, *v58.f32), *v53);
                      v59 = *v192.i32 + COERCE_FLOAT(*&v53[1]);
                      goto LABEL_29;
                    }

                    *v56.f32 = vmul_f32(*v163.f32, *v58.f32);
                    v56.i64[1] = v192.u32[0];
                  }

LABEL_22:
                  *v53->f32 = v56;
                  v53 += 2;
                  ++v54;
                  if (!--v49)
                  {
                    v162 = v55;
                    v40 = v167;
                    goto LABEL_44;
                  }
                }
              }

              if (v45 == v179)
              {
                v40 = v167;
                v42 = v183;
                goto LABEL_44;
              }

              v60 = v179 - v45;
              v61 = &v54[v45];
              v62 = &v53[2 * v45];
              v40 = v167;
              v42 = v183;
              v63 = v161;
              do
              {
                v65 = vmulq_f32(*v61, *v61);
                v66 = vextq_s8(v65, v65, 8uLL);
                *v66.f32 = vadd_f32(v196, vmul_n_f32(v194, fminf(fmaxf(v6 + (v37 * sqrtf(vaddv_f32(vadd_f32(*v65.i8, *v66.f32)))), 0.0), 1.0)));
                if (v5 > 1)
                {
                  if (v5 != 2)
                  {
                    v66.i32[2] = 1.0;
                    v64 = vmlaq_f32(*v62, v163, vsubq_f32(v66, *v62));
                    v64.i32[3] = v63.i32[3];
                    v63 = v64;
                    goto LABEL_35;
                  }

                  *v64.f32 = vmul_f32(vmul_f32(*v163.f32, *v66.f32), *v62->f32);
                  v67 = vmuls_lane_f32(*v192.i32, *v62, 2);
                }

                else
                {
                  if (!v5)
                  {
                    v64.f32[0] = *v192.i32 * v66.f32[0];
                    v64.i32[1] = vmuls_lane_f32(*v192.i32, *v66.f32, 1);
                    v64.i64[1] = v192.u32[0];
                    goto LABEL_35;
                  }

                  *v64.f32 = vadd_f32(vmul_f32(*v163.f32, *v66.f32), *v62->f32);
                  v67 = *v192.i32 + COERCE_FLOAT(v62->i64[1]);
                }

                v64.i64[1] = LODWORD(v67);
LABEL_35:
                *v62++ = v64;
                ++v61;
                --v60;
              }

              while (v60);
              v161 = v63;
LABEL_44:
              sub_1AF630994(v39, v199, &v203);
              sub_1AF62D29C(v48);
              ecs_stack_allocator_pop_snapshot(v189);
              if (v40)
              {
                os_unfair_lock_unlock(*(v48 + 344));
                os_unfair_lock_unlock(*(v48 + 376));
              }

              if (++v41 == v175)
              {
                goto LABEL_111;
              }
            }
          }

LABEL_154:

          goto LABEL_156;
        }

        goto LABEL_112;
      }

LABEL_153:
    }

    sub_1AF6B06C0(v93, &v253, 0x200000000, v226);
    *&v222[32] = *&v226[32];
    v223 = v227;
    v224 = v228;
    v225 = v229;
    *v222 = *v226;
    *&v222[16] = *&v226[16];

    if (!*v226)
    {
      goto LABEL_153;
    }

    if (v229 <= 0)
    {
LABEL_112:
      v211 = *&v222[32];
      v212 = v223;
      v213 = v224;
      v214 = v225;
      v209 = *v222;
      v210 = *&v222[16];
      v127 = &v209;
      v128 = &v203;
LABEL_158:
      sub_1AF5DD298(v127, v128);

      sub_1AF5D1564(v226);
      return sub_1AF5D1564(v226);
    }

    v177 = *(&v227 + 1);
    if (!*(&v227 + 1))
    {
      goto LABEL_154;
    }

    *&v185 = v8 - v196.f32[1];
    v94 = v10 - v9;
    v173 = *&v226[40];
    v95 = *(&v228 + 1);
    v96 = *(v228 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v190 = *(*(&v228 + 1) + 32);
    *v199 = *v226;
    *&v199[8] = *&v226[8];
    *&v199[24] = *&v226[24];
    v211 = *&v222[32];
    v212 = v223;
    v213 = v224;
    v214 = v225;
    v209 = *v222;
    v210 = *&v222[16];
    sub_1AF5DD298(&v209, &v203);
    v97 = 0;
    v98 = 0;
    v195 = __PAIR64__(v185, LODWORD(v193));
    v165 = vdupq_lane_s32(v192, 0);
    v169 = v96;
LABEL_80:
    v186 = v98;
    v99 = (v173 + 48 * v97);
    v100 = *v99;
    v181 = v99[1];
    v101 = *(v99 + 2);
    v102 = *(v99 + 3);
    v104 = *(v99 + 4);
    v103 = *(v99 + 5);
    if (v96)
    {
      v105 = *(v103 + 376);

      os_unfair_lock_lock(v105);
      os_unfair_lock_lock(*(v103 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v190);
    v106 = *(v95 + 64);
    v203 = *(v95 + 48);
    v204 = v106;
    *&v205 = *(v95 + 80);
    v107 = *(*(*(*(v103 + 40) + 16) + 32) + 16) + 1;
    *(v95 + 48) = ecs_stack_allocator_allocate(*(v95 + 32), 48 * v107, 8);
    *(v95 + 56) = v107;
    *(v95 + 72) = 0;
    *(v95 + 80) = 0;
    *(v95 + 64) = 0;
    v108 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v101, v102, v104, v95);
    v109 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v101, v102, v104, v95);
    if (v101)
    {
      v98 = v186;
      v110 = v162;
      if (!v104)
      {
        v96 = v169;
        goto LABEL_109;
      }

      while (1)
      {
        v113 = vmulq_f32(*v109, *v109);
        v115 = vextq_s8(v113, v113, 8uLL);
        v114 = fminf(fmaxf(v6 + (v37 * sqrtf(vaddv_f32(vadd_f32(*v113.i8, *v115.f32)))), 0.0), 1.0);
        *v115.f32 = vadd_f32(v196, vmul_n_f32(v195, v114));
        v116 = v9 + (v94 * v114);
        if (v5 > 1)
        {
          if (v5 != 2)
          {
            v115.f32[2] = v9 + (v94 * v114);
            v111 = vmlaq_f32(*v108, v165, vsubq_f32(v115, *v108));
            v111.i32[3] = v110.i32[3];
            v110 = v111;
            goto LABEL_88;
          }

          *v111.f32 = vmul_f32(vmul_f32(*v165.f32, *v115.f32), *v108->f32);
          v112 = vmuls_lane_f32(*v192.i32 * v116, *v108, 2);
        }

        else if (v5)
        {
          *v111.f32 = vadd_f32(vmul_f32(*v165.f32, *v115.f32), *v108->f32);
          v112 = (*v192.i32 * v116) + COERCE_FLOAT(v108->i64[1]);
        }

        else
        {
          *v111.f32 = vmul_f32(*v165.f32, *v115.f32);
          v112 = *v192.i32 * v116;
        }

        v111.i64[1] = LODWORD(v112);
LABEL_88:
        *v108++ = v111;
        ++v109;
        if (!--v104)
        {
          v162 = v110;
          v96 = v169;
          goto LABEL_109;
        }
      }
    }

    if (v100 == v181)
    {
      v96 = v169;
      v98 = v186;
      goto LABEL_109;
    }

    v117 = v181 - v100;
    v118 = &v109[v100];
    v119 = &v108[v100];
    v96 = v169;
    v98 = v186;
    v120 = v161;
    while (1)
    {
      v123 = vmulq_f32(*v118, *v118);
      v125 = vextq_s8(v123, v123, 8uLL);
      v124 = fminf(fmaxf(v6 + (v37 * sqrtf(vaddv_f32(vadd_f32(*v123.i8, *v125.f32)))), 0.0), 1.0);
      *v125.f32 = vadd_f32(v196, vmul_n_f32(v195, v124));
      v126 = v9 + (v94 * v124);
      if (v5 > 1)
      {
        if (v5 != 2)
        {
          v125.f32[2] = v9 + (v94 * v124);
          v121 = vmlaq_f32(*v119, v165, vsubq_f32(v125, *v119));
          v121.i32[3] = v120.i32[3];
          v120 = v121;
          goto LABEL_101;
        }

        *v121.f32 = vmul_f32(vmul_f32(*v165.f32, *v125.f32), *v119->f32);
        v122 = vmuls_lane_f32(*v192.i32 * v126, *v119, 2);
      }

      else if (v5)
      {
        *v121.f32 = vadd_f32(vmul_f32(*v165.f32, *v125.f32), *v119->f32);
        v122 = (*v192.i32 * v126) + COERCE_FLOAT(v119->i64[1]);
      }

      else
      {
        *v121.f32 = vmul_f32(*v165.f32, *v125.f32);
        v122 = *v192.i32 * v126;
      }

      v121.i64[1] = LODWORD(v122);
LABEL_101:
      *v119++ = v121;
      ++v118;
      if (!--v117)
      {
        v161 = v120;
LABEL_109:
        sub_1AF630994(v95, v199, &v203);
        sub_1AF62D29C(v103);
        ecs_stack_allocator_pop_snapshot(v190);
        if (v96)
        {
          os_unfair_lock_unlock(*(v103 + 344));
          os_unfair_lock_unlock(*(v103 + 376));
        }

        if (++v97 == v177)
        {
LABEL_111:
          sub_1AF5D1564(v226);

          goto LABEL_156;
        }

        goto LABEL_80;
      }
    }
  }

  sub_1AF6B06C0(v68, &v247, 0x200000000, v222);
  v211 = *&v222[32];
  v212 = v223;
  v213 = v224;
  v214 = v225;
  v209 = *v222;
  v210 = *&v222[16];

  if (*v222)
  {
    if (v225 > 0)
    {
      v176 = *(&v223 + 1);
      if (*(&v223 + 1))
      {
        v172 = *&v222[40];
        v69 = *(&v224 + 1);
        v70 = *(v224 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v71 = *(*(&v224 + 1) + 32);
        v230 = *v222;
        v231 = *&v222[8];
        v232 = *&v222[24];
        *&v226[32] = v211;
        v227 = v212;
        v228 = v213;
        v229 = v214;
        *v226 = v209;
        *&v226[16] = v210;
        sub_1AF5DD298(v226, &v203);
        v72 = 0;
        v73 = 0;
        v168 = v70;
        v164 = v71;
        do
        {
          v74 = (v172 + 48 * v72);
          v184 = *v74;
          v180 = v74[1];
          v75 = *(v74 + 2);
          v76 = *(v74 + 3);
          v78 = *(v74 + 4);
          v77 = *(v74 + 5);
          if (v70)
          {
            v79 = *(v77 + 376);

            os_unfair_lock_lock(v79);
            os_unfair_lock_lock(*(v77 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v71);
          v80 = *(v69 + 64);
          v245[0] = *(v69 + 48);
          v245[1] = v80;
          v246 = *(v69 + 80);
          v81 = *(*(*(*(v77 + 40) + 16) + 32) + 16) + 1;
          *(v69 + 48) = ecs_stack_allocator_allocate(*(v69 + 32), 48 * v81, 8);
          *(v69 + 56) = v81;
          *(v69 + 72) = 0;
          *(v69 + 80) = 0;
          *(v69 + 64) = 0;
          v82 = sub_1AF64B110(&type metadata for Scale1, &off_1F252F788, v75, v76, v78, v69);
          v83 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v75, v76, v78, v69);
          if (v75)
          {
            for (; v78; --v78)
            {
              v85 = vmulq_f32(*v83, *v83);
              v86 = v196.f32[0] + (fminf(fmaxf(v6 + (sqrtf(vaddv_f32(vadd_f32(*v85.i8, *&vextq_s8(v85, v85, 8uLL)))) * v37), 0.0), 1.0) * v193);
              if (v5 > 1)
              {
                if (v5 == 2)
                {
                  v84 = (*v192.i32 * v86) * *v82;
                }

                else
                {
                  v84 = *v82 + ((v86 - *v82) * *v192.i32);
                }
              }

              else
              {
                v84 = *v192.i32 * v86;
                if (v5)
                {
                  v84 = v84 + *v82;
                }
              }

              *v82++ = v84;
              ++v83;
            }
          }

          else if (v184 != v180)
          {
            v87 = v180 - v184;
            v88 = &v83[v184];
            v89 = &v82[v184];
            do
            {
              v91 = vmulq_f32(*v88, *v88);
              v92 = v196.f32[0] + (fminf(fmaxf(v6 + (sqrtf(vaddv_f32(vadd_f32(*v91.i8, *&vextq_s8(v91, v91, 8uLL)))) * v37), 0.0), 1.0) * v193);
              if (v5 > 1)
              {
                if (v5 == 2)
                {
                  v90 = (*v192.i32 * v92) * *v89;
                }

                else
                {
                  v90 = *v89 + ((v92 - *v89) * *v192.i32);
                }
              }

              else
              {
                v90 = *v192.i32 * v92;
                if (v5)
                {
                  v90 = v90 + *v89;
                }
              }

              *v89++ = v90;
              ++v88;
              --v87;
            }

            while (v87);
          }

          sub_1AF630994(v69, &v230, v245);
          sub_1AF62D29C(v77);
          v71 = v164;
          ecs_stack_allocator_pop_snapshot(v164);
          v70 = v168;
          if (v168)
          {
            os_unfair_lock_unlock(*(v77 + 344));
            os_unfair_lock_unlock(*(v77 + 376));
          }

          ++v72;
        }

        while (v72 != v176);
        sub_1AF5D1564(v222);
        sub_1AF5D1564(v222);
        goto LABEL_116;
      }
    }

    sub_1AF5D1564(v222);
  }

  v73 = 0;
LABEL_116:

  sub_1AF6B06C0(v129, &v239, 0x200000000, v226);
  v205 = *&v226[32];
  v206 = v227;
  v207 = v228;
  v208 = v229;
  v203 = *v226;
  v204 = *&v226[16];

  if (!*v226)
  {
    goto LABEL_153;
  }

  if (v229 <= 0)
  {
    *&v199[32] = v205;
    v200 = v206;
    v201 = v207;
    v202 = v208;
    *v199 = v203;
    *&v199[16] = v204;
    v127 = v199;
    v128 = v197;
    goto LABEL_158;
  }

  v178 = *(&v227 + 1);
  if (!*(&v227 + 1))
  {
    goto LABEL_154;
  }

  v174 = *&v226[40];
  v130 = *(&v228 + 1);
  v131 = *(v228 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v187 = *(*(&v228 + 1) + 32);
  v233 = *v226;
  v234 = *&v226[8];
  v235 = *&v226[24];
  *&v199[32] = v205;
  v200 = v206;
  v201 = v207;
  v202 = v208;
  *v199 = v203;
  *&v199[16] = v204;
  sub_1AF5DD298(v199, v197);
  v132 = 0;
  v166 = vdupq_lane_s32(v192, 0);
  v170 = v131;
  while (2)
  {
    v191 = v73;
    v133 = (v174 + 48 * v132);
    v134 = *v133;
    v182 = v133[1];
    v135 = *(v133 + 2);
    v136 = *(v133 + 3);
    v137 = *(v133 + 4);
    v138 = *(v133 + 5);
    if (v131)
    {
      v139 = *(v138 + 376);

      os_unfair_lock_lock(v139);
      os_unfair_lock_lock(*(v138 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v187);
    v140 = *(v130 + 64);
    v197[0] = *(v130 + 48);
    v197[1] = v140;
    v198 = *(v130 + 80);
    v141 = *(*(*(*(v138 + 40) + 16) + 32) + 16) + 1;
    *(v130 + 48) = ecs_stack_allocator_allocate(*(v130 + 32), 48 * v141, 8);
    *(v130 + 56) = v141;
    *(v130 + 72) = 0;
    *(v130 + 80) = 0;
    *(v130 + 64) = 0;
    v142 = sub_1AF64B110(&type metadata for Scale, &off_1F252F8E8, v135, v136, v137, v130);
    v143 = sub_1AF64B110(&type metadata for Velocity, &off_1F2530AF8, v135, v136, v137, v130);
    if (v135)
    {
      if (!v137)
      {
LABEL_138:
        v73 = v191;
        goto LABEL_151;
      }

      v73 = v191;
      v144 = v162;
      while (1)
      {
        v146 = vmulq_f32(*v143, *v143);
        v147 = vextq_s8(v146, v146, 8uLL).u64[0];
        v148 = vadd_f32(*v146.i8, v147);
        *v148.i32 = v196.f32[0] + (fminf(fmaxf(v6 + (sqrtf(vaddv_f32(v148)) * v37), 0.0), 1.0) * v193);
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            v149 = *v192.i32 * *v148.i32;
            v145.i64[0] = vmulq_n_f32(*v142, *v192.i32 * *v148.i32).u64[0];
            *v147.i32 = vmuls_lane_f32(v149, *v142, 2);
LABEL_135:
            v145.i64[1] = v147.u32[0];
            goto LABEL_128;
          }

          v145 = vmlaq_f32(*v142, v166, vsubq_f32(vdupq_lane_s32(v148, 0), *v142));
          v145.i32[3] = v144.i32[3];
          v144 = v145;
        }

        else
        {
          if (v5)
          {
            *v147.i32 = *v192.i32 * *v148.i32;
            v145.i64[0] = vaddq_f32(vdupq_lane_s32(v147, 0), *v142).u64[0];
            *v147.i32 = *v147.i32 + COERCE_FLOAT(v142->i64[1]);
            goto LABEL_135;
          }

          *v148.i32 = *v192.i32 * *v148.i32;
          v145 = vdupq_lane_s32(v148, 0);
          v145.i32[3] = 0;
        }

LABEL_128:
        *v142++ = v145;
        ++v143;
        if (!--v137)
        {
          v162 = v144;
          goto LABEL_151;
        }
      }
    }

    v150 = v161;
    if (v134 == v182)
    {
      goto LABEL_138;
    }

    v151 = v182 - v134;
    v152 = &v143[v134];
    v153 = &v142[v134];
    v73 = v191;
    do
    {
      v157 = vmulq_f32(*v152, *v152);
      v158 = vextq_s8(v157, v157, 8uLL).u64[0];
      v159 = vadd_f32(*v157.i8, v158);
      *v159.i32 = v196.f32[0] + (fminf(fmaxf(v6 + (sqrtf(vaddv_f32(v159)) * v37), 0.0), 1.0) * v193);
      if (v5 <= 1)
      {
        if (!v5)
        {
          *v159.i32 = *v192.i32 * *v159.i32;
          v155 = vdupq_lane_s32(v159, 0);
          goto LABEL_142;
        }

        *v158.i32 = *v192.i32 * *v159.i32;
        v155.i64[0] = vaddq_f32(vdupq_lane_s32(v158, 0), *v153).u64[0];
        v156 = *v158.i32 + COERCE_FLOAT(v153->i64[1]);
LABEL_141:
        v155.f32[2] = v156;
LABEL_142:
        v155.i32[3] = 0;
        goto LABEL_143;
      }

      if (v5 == 2)
      {
        v154 = *v192.i32 * *v159.i32;
        v155.i64[0] = vmulq_n_f32(*v153, *v192.i32 * *v159.i32).u64[0];
        v156 = vmuls_lane_f32(v154, *v153, 2);
        goto LABEL_141;
      }

      v155 = vmlaq_f32(*v153, v166, vsubq_f32(vdupq_lane_s32(v159, 0), *v153));
      v155.i32[3] = v150.i32[3];
      v150 = v155;
LABEL_143:
      *v153++ = v155;
      ++v152;
      --v151;
    }

    while (v151);
    v161 = v150;
LABEL_151:
    sub_1AF630994(v130, &v233, v197);
    sub_1AF62D29C(v138);
    ecs_stack_allocator_pop_snapshot(v187);
    v131 = v170;
    if (v170)
    {
      os_unfair_lock_unlock(*(v138 + 344));
      os_unfair_lock_unlock(*(v138 + 376));
    }

    if (++v132 != v178)
    {
      continue;
    }

    break;
  }

  sub_1AF5D1564(v226);

LABEL_156:

  return sub_1AF5D1564(v226);
}

uint64_t sub_1AFA43994(uint64_t a1, unint64_t *a2)
{
  sub_1AFA439F0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFA439F0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Query2();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ParticleSizeOverVelocity(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 44))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ParticleSizeOverVelocity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1AFA43B00()
{
  result = qword_1EB6423F8;
  if (!qword_1EB6423F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6423F8);
  }

  return result;
}

void sub_1AFA43B54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA43B00();
    v7 = a3(a1, &type metadata for ParticleSizeOverVelocity.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA43BCC()
{
  result = qword_1EB642408;
  if (!qword_1EB642408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642408);
  }

  return result;
}

unint64_t sub_1AFA43C24()
{
  result = qword_1EB642410;
  if (!qword_1EB642410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642410);
  }

  return result;
}

unint64_t sub_1AFA43C7C()
{
  result = qword_1EB642418;
  if (!qword_1EB642418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642418);
  }

  return result;
}

uint64_t sub_1AFA43CF4(void *a1)
{
  sub_1AFA44B7C(0, &qword_1EB642430, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v10 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA44B28();
  sub_1AFDFF3F8();
  v14 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v13 = 1;
    sub_1AFDFE8E8();
    v12 = 2;
    sub_1AFDFE8E8();
    v11 = 3;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AFA43ED8()
{
  v1 = 0x6E6968746F6F6D73;
  v2 = 0x73656E6666697473;
  if (*v0 != 2)
  {
    v2 = 0x7469736F63736976;
  }

  if (*v0)
  {
    v1 = 0x736E654474736572;
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

uint64_t sub_1AFA43F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA44780(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA43F94(uint64_t a1)
{
  v2 = sub_1AFA44B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA43FD0(uint64_t a1)
{
  v2 = sub_1AFA44B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AFA4400C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1AFA4490C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
    *(a2 + 8) = v6;
    *(a2 + 12) = v7;
  }
}

double sub_1AFA4405C()
{
  sub_1AF47BBFC();
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for Velocity;
  *(v0 + 40) = &off_1F2530AF8;
  return result;
}

double sub_1AFA440C4@<D0>(_OWORD *a1@<X8>)
{
  result = 524288.121;
  *a1 = xmmword_1AFE95C70;
  return result;
}

uint64_t sub_1AFA440D4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  v4 = *(a1 + 88);
  v60 = *(a1 + 72);
  v61 = v4;
  v5 = *(a1 + 120);
  v62 = *(a1 + 104);
  v63 = v5;
  v6 = *(a1 + 24);
  v56 = v2;
  v57 = v6;
  v7 = *(a1 + 56);
  v58 = v3;
  v59 = v7;
  v8 = v56;
  v9 = v3;

  sub_1AF3CB0C0(v9, &v50);

  if (v54)
  {
    sub_1AF9FA090(&v50, v55);
    if (sub_1AF67CACC(&type metadata for NeighborGrid, &off_1F2563D40, v9))
    {
      v10 = *(&v56 + 1);

      v11 = sub_1AF3CEB40(v10);
      v13 = v12;
      LOBYTE(v10) = v14;

      if (v10)
      {
        LODWORD(v43) = 1092616192;
        v45 = 998445679;
        LODWORD(v42) = 1036831949;
        v44 = 1036831949;
      }

      else
      {
        v43 = HIDWORD(v11);
        v44 = v11;
        v45 = v13;
        v42 = HIDWORD(v13);
      }

      sub_1AFB93E58();
      v17 = v16;
      v18 = 16 * v55[56];
      v19 = *(*(a1 + 144) + 248);
      CFXBufferAllocatorPerFrameAllocateWithLength(v19, v18);
      v39 = v21;
      v40 = v20;
      CFXBufferAllocatorPerFrameAllocateWithLength(v19, v18);
      v48 = v22;
      v41 = v23;

      v49 = v19;
      v24 = sub_1AF6F4158();
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_1AFDFCEC8();
      [v24 pushDebugGroup_];

      sub_1AF6F3BD8();
      swift_unknownObjectRelease();
      sub_1AF6F34C4(v40, v39, 0, 6, ObjectType);
      sub_1AF6F458C(v48, v41, 0, 7);
      v50 = __PAIR64__(v43, v44);
      v51 = v45;
      v52 = v42;
      v53 = v17;
      if (*a1)
      {
        v27 = swift_getObjectType();
        type metadata accessor for particle_sph_uniforms(0);
        sub_1AF6F4524(&v50, 1, v27, v28, v29, v30, v31, v32);
      }

      v46 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      MEMORY[0x1EEE9AC00](v33, v34);
      sub_1AFCBF008(v9, sub_1AFA09E00);

      v47 = *(v8 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);

      MEMORY[0x1EEE9AC00](v35, v36);
      sub_1AFCBF008(v9, sub_1AFA09F2C);

      [v24 popDebugGroup];

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v15 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v38 = v15;
        swift_once();
        v15 = v38;
      }

      v50 = 0;
      sub_1AF0D4F18(v15, &v50, 0xD000000000000040, 0x80000001AFF44A60);
    }

    return sub_1AF58D38C(v55);
  }

  else
  {
    sub_1AFA446D4(&v50);
    sub_1AFDFE518();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AFA446D4(uint64_t a1)
{
  sub_1AFA44730();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA44730()
{
  if (!qword_1ED722AC0)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED722AC0);
    }
  }
}

uint64_t sub_1AFA44780(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6968746F6F6D73 && a2 == 0xEF73756964615267;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E654474736572 && a2 == 0xEB00000000797469 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656E6666697473 && a2 == 0xE900000000000073 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7469736F63736976 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AFDFEE28();

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

float sub_1AFA4490C(void *a1)
{
  sub_1AFA44B7C(0, &qword_1EB642420, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12[-v8];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA44B28();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v12[15] = 0;
    sub_1AFDFE738();
    v2 = v10;
    v12[14] = 1;
    sub_1AFDFE738();
    v12[13] = 2;
    sub_1AFDFE738();
    v12[12] = 3;
    sub_1AFDFE738();
    (*(v6 + 8))(v9, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AFA44B28()
{
  result = qword_1EB642428;
  if (!qword_1EB642428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642428);
  }

  return result;
}

void sub_1AFA44B7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA44B28();
    v7 = a3(a1, &type metadata for ParticleSPHSimulation.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA44BF4()
{
  result = qword_1EB642438;
  if (!qword_1EB642438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642438);
  }

  return result;
}

unint64_t sub_1AFA44C4C()
{
  result = qword_1EB642440;
  if (!qword_1EB642440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642440);
  }

  return result;
}

unint64_t sub_1AFA44CA4()
{
  result = qword_1EB642448;
  if (!qword_1EB642448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642448);
  }

  return result;
}

uint64_t sub_1AFA44D44(_BYTE *a1, _BYTE *a2)
{
  if (a1[8] == a2[8])
  {
    return (*a1 != 0) ^ (*a2 != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AFA44DBC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) == *(a2 + 20))
  {
    return (*(a1 + 12) != 0) ^ (*(a2 + 12) != 0);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AFA44E2C()
{
  v1 = v0[8];
  v2 = *v0;
  sub_1AF47BBFC();
  if (v1)
  {
    if (v1 == 1)
    {
      if (v2)
      {
        result = swift_allocObject();
        *(result + 16) = xmmword_1AFE4C620;
        *(result + 32) = &type metadata for TransientOriginScale;
        *(result + 40) = &off_1F2569A38;
        v4 = &type metadata for Scale2;
        v5 = &off_1F252F838;
LABEL_9:
        *(result + 48) = v4;
        *(result + 56) = v5;
        return result;
      }

      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE431C0;
      v6 = &type metadata for Scale2;
      v7 = &off_1F252F838;
    }

    else
    {
      if (v2)
      {
        result = swift_allocObject();
        *(result + 16) = xmmword_1AFE4C620;
        *(result + 32) = &type metadata for TransientOriginScale;
        *(result + 40) = &off_1F2569A38;
        v4 = &type metadata for Scale3;
        v5 = &off_1F252F998;
        goto LABEL_9;
      }

      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE431C0;
      v6 = &type metadata for Scale3;
      v7 = &off_1F252F998;
    }
  }

  else
  {
    if (v2)
    {
      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE4C620;
      *(result + 32) = &type metadata for TransientOriginScale;
      *(result + 40) = &off_1F2569A38;
      v4 = &type metadata for Scale1;
      v5 = &off_1F252F788;
      goto LABEL_9;
    }

    result = swift_allocObject();
    *(result + 16) = xmmword_1AFE431C0;
    v6 = &type metadata for Scale1;
    v7 = &off_1F252F788;
  }

  *(result + 32) = v6;
  *(result + 40) = v7;
  return result;
}

uint64_t sub_1AFA44FC0()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 12);
  sub_1AF47BBFC();
  if (v1)
  {
    if (v1 == 1)
    {
      if (v2)
      {
        result = swift_allocObject();
        *(result + 16) = xmmword_1AFE4C620;
        *(result + 32) = &type metadata for TransientOriginScale;
        *(result + 40) = &off_1F2569A38;
        v4 = &type metadata for Scale2;
        v5 = &off_1F252F838;
LABEL_9:
        *(result + 48) = v4;
        *(result + 56) = v5;
        return result;
      }

      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE431C0;
      v6 = &type metadata for Scale2;
      v7 = &off_1F252F838;
    }

    else
    {
      if (v2)
      {
        result = swift_allocObject();
        *(result + 16) = xmmword_1AFE4C620;
        *(result + 32) = &type metadata for TransientOriginScale;
        *(result + 40) = &off_1F2569A38;
        v4 = &type metadata for Scale3;
        v5 = &off_1F252F998;
        goto LABEL_9;
      }

      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE431C0;
      v6 = &type metadata for Scale3;
      v7 = &off_1F252F998;
    }
  }

  else
  {
    if (v2)
    {
      result = swift_allocObject();
      *(result + 16) = xmmword_1AFE4C620;
      *(result + 32) = &type metadata for TransientOriginScale;
      *(result + 40) = &off_1F2569A38;
      v4 = &type metadata for Scale1;
      v5 = &off_1F252F788;
      goto LABEL_9;
    }

    result = swift_allocObject();
    *(result + 16) = xmmword_1AFE431C0;
    v6 = &type metadata for Scale1;
    v7 = &off_1F252F788;
  }

  *(result + 32) = v6;
  *(result + 40) = v7;
  return result;
}

uint64_t sub_1AFA45190(uint64_t a1)
{
  v2 = sub_1AFA45830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA451CC(uint64_t a1)
{
  v2 = sub_1AFA45830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AFA45208(void *a1)
{
  sub_1AFA457D4();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF441150(a1, a1[3]);
  sub_1AFA45830();
  sub_1AFDFF3F8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1AFA45334(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 104);
  v54 = *(a1 + 88);
  v55 = v2;
  v56 = *(a1 + 120);

  sub_1AF5C9420(v46);
  v52[0] = v46[0];
  v52[1] = v46[1];
  v53 = v47;
  sub_1AF6B06C0(v1, v52, 0x200000000, v48);
  if (*v48)
  {
    if (v51 <= 0)
    {
      v42 = *&v48[32];
      v43 = v49;
      v44 = v50;
      v45 = v51;
      v40 = *v48;
      v41 = *&v48[16];
      sub_1AF5DD298(&v40, &v37);
      sub_1AFA45764(v46, sub_1AFA456E8);

      sub_1AFA45764(v48, sub_1AF5C3C90);
    }

    else
    {
      v35 = *(&v49 + 1);
      if (*(&v49 + 1))
      {
        v3 = 0;
        v4 = 0;
        v34 = *&v48[40];
        v5 = *(&v50 + 1);
        v6 = *(*(&v50 + 1) + 32);
        v7 = *(v50 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v37 = *v48;
        v38 = *&v48[8];
        v39 = *&v48[24];
        v32 = v7;
        v33 = v6;
        do
        {
          v36 = v4;
          v8 = (v34 + 48 * v3);
          v10 = *v8;
          v9 = v8[1];
          v11 = *(v8 + 2);
          v12 = *(v8 + 3);
          v13 = *(v8 + 4);
          v14 = *(v8 + 5);
          if (v7)
          {
            v15 = *(v14 + 376);

            os_unfair_lock_lock(v15);
            os_unfair_lock_lock(*(v14 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v6);
          v16 = *(v5 + 64);
          v40 = *(v5 + 48);
          v41 = v16;
          *&v42 = *(v5 + 80);
          v17 = *(*(*(*(v14 + 40) + 16) + 32) + 16) + 1;
          *(v5 + 48) = ecs_stack_allocator_allocate(*(v5 + 32), 48 * v17, 8);
          *(v5 + 56) = v17;
          *(v5 + 72) = 0;
          *(v5 + 80) = 0;
          *(v5 + 64) = 0;
          v18 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v11, v12, v13, v5);
          v19 = sub_1AF64B110(&type metadata for ParticleTarget, &off_1F252DD28, v11, v12, v13, v5);
          if (v11)
          {
            v4 = v36;
            if (v13)
            {
              HIDWORD(v20) = v31;
              do
              {
                v21 = HIDWORD(v20);
                v22 = *v18++;
                v20 = v22;
                HIDWORD(v20) = v21;
                *v19++ = v20;
                --v13;
              }

              while (v13);
              v31 = v21;
            }
          }

          else
          {
            HIDWORD(v23) = v30;
            if (v10 != v9)
            {
              v24 = v9 - v10;
              v25 = &v19[v10];
              v26 = &v18[v10];
              do
              {
                v27 = HIDWORD(v23);
                v28 = *v26++;
                v23 = v28;
                HIDWORD(v23) = v27;
                *v25++ = v23;
                --v24;
              }

              while (v24);
              v30 = v27;
            }

            v4 = v36;
          }

          v6 = v33;
          sub_1AF630994(v5, &v37, &v40);
          sub_1AF62D29C(v14);
          ecs_stack_allocator_pop_snapshot(v33);
          v7 = v32;
          if (v32)
          {
            os_unfair_lock_unlock(*(v14 + 344));
            os_unfair_lock_unlock(*(v14 + 376));
          }

          ++v3;
        }

        while (v3 != v35);
      }

      sub_1AFA45764(v46, sub_1AFA456E8);
    }

    return sub_1AFA45764(v48, sub_1AF5C3C90);
  }

  else
  {
    sub_1AFA45764(v46, sub_1AFA456E8);
  }
}

void sub_1AFA456E8()
{
  if (!qword_1EB642450)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642450);
    }
  }
}

uint64_t sub_1AFA45764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFA457D4()
{
  if (!qword_1EB642458)
  {
    sub_1AFA45830();
    v0 = sub_1AFDFE9A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642458);
    }
  }
}

unint64_t sub_1AFA45830()
{
  result = qword_1EB642460;
  if (!qword_1EB642460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642460);
  }

  return result;
}

unint64_t sub_1AFA45898()
{
  result = qword_1EB642468;
  if (!qword_1EB642468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642468);
  }

  return result;
}

unint64_t sub_1AFA458F0()
{
  result = qword_1EB642470;
  if (!qword_1EB642470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642470);
  }

  return result;
}

uint64_t sub_1AFA45944(void *a1)
{
  v3 = v1;
  sub_1AFA46FE0(0, &qword_1EB642478, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AFA46F8C();
  sub_1AFDFF3F8();
  LOBYTE(v13[0]) = 0;
  sub_1AFDFE8E8();
  if (!v2)
  {
    v13[0] = *(v3 + 8);
    *(v13 + 9) = *(v3 + 17);
    v12[15] = 1;
    sub_1AF8C0110();
    sub_1AF8C021C(&qword_1EB63F018);
    sub_1AFDFE8A8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA45AFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6576727563;
  }

  else
  {
    v3 = 0x6E6F697461727564;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6576727563;
  }

  else
  {
    v5 = 0x6E6F697461727564;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AFA45BA0()
{
  if (*v0)
  {
    return 0x6576727563;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_1AFA45BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6576727563 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AFA45CB0(uint64_t a1)
{
  v2 = sub_1AFA46F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA45CEC(uint64_t a1)
{
  v2 = sub_1AFA46F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA45D28@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA461EC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1AFA45DA8()
{
  sub_1AF9D7EF0(0, &qword_1ED72F7D0, sub_1AF47BC54);
  v0 = swift_allocObject();
  *&result = 1;
  *(v0 + 16) = xmmword_1AFE431C0;
  *(v0 + 32) = &type metadata for ParticleTextureFrame;
  *(v0 + 40) = &off_1F252CC98;
  return result;
}

void sub_1AFA45E0C(uint64_t a1@<X8>)
{
  *a1 = 1065353216;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
}

uint64_t sub_1AFA45E24(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 72);
  v4 = *(a1 + 104);
  v39 = *(a1 + 88);
  v40 = v4;
  v41 = *(a1 + 120);
  v5 = *(a1 + 24);
  v34 = v2;
  v35 = v5;
  v6 = *(a1 + 56);
  v36 = *(a1 + 40);
  v37 = v6;
  v38 = v3;
  v7 = v2;

  sub_1AF3CEC2C(*(&v7 + 1), &v29);
  v8 = v29;
  v9 = v30;
  v10 = v31;
  v11 = v32;
  v12 = v33;

  v13 = 1.0;
  if (v9 == 1 || (v13 = v8, !v9))
  {
    if (*a1)
    {
      [*a1 setTexture:0 atIndex:0];
    }
  }

  else
  {

    v14 = sub_1AF8B959C(v9, v10, v11, v12);

    if (*a1)
    {
      [*a1 setTexture:v14 atIndex:0];
    }

    swift_unknownObjectRelease();
  }

  sub_1AFB943A8();
  v28 = v15 / v13;
  if (*a1)
  {
    ObjectType = swift_getObjectType();
    type metadata accessor for particle_textureframe_evolution_uniforms(0);
    sub_1AF6F4524(&v28, 1, ObjectType, v17, v18, v19, v20, v21);
  }

  v22 = *(v7 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  v23 = v36;

  v24 = v22;

  MEMORY[0x1EEE9AC00](v25, v26);
  sub_1AFCBF008(v23, sub_1AF9D17D4);
}

uint64_t sub_1AFA46130(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *(a1 + 104);
  v11 = *(a1 + 88);
  v12 = v3;
  v13 = *(a1 + 120);
  sub_1AF5C9444(v7);
  v4 = v7[1];
  *(v2 + 56) = v7[0];
  *(v2 + 72) = v4;
  *(v2 + 88) = v8;
  sub_1AF8291A4(v9);
  sub_1AF688940(a1);
  v5 = v9[1];
  *(v2 + 16) = v9[0];
  *(v2 + 32) = v5;
  *(v2 + 48) = v10;
  return v2;
}

uint64_t sub_1AFA461EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA46FE0(0, &qword_1EB633AC8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v16 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA46F8C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v18) = 0;
  sub_1AFDFE738();
  v12 = v11;
  sub_1AF8C0110();
  v17 = 1;
  sub_1AF8C021C(qword_1ED724010);
  sub_1AFDFE6E8();
  (*(v7 + 8))(v10, v6);
  v16 = v18;
  v13 = v19;
  v14 = v20;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v12;
  *(a2 + 8) = v16;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_1AFA46408(uint64_t *a1)
{
  v2 = v1;
  v89 = 0;
  v4 = *a1;
  v3 = a1[1];
  swift_retain_n();
  sub_1AF3CEC2C(v3, v99);
  v5 = *v99;
  v6 = v99[1];
  v8 = v99[2];
  v7 = v99[3];
  v9 = v100;

  v10 = 1.0;
  if (v6 == 1)
  {
    goto LABEL_23;
  }

  if (!v6)
  {
    v10 = v5;
LABEL_23:
    sub_1AFB93E58();
    v33 = v32;
    v34 = *(v2 + 32);
    v108 = *(v2 + 16);
    v109 = v34;
    v110 = *(v2 + 48);
    sub_1AF6B06C0(v4, &v108, 0x200000000, v101);
    if (!*v101)
    {
    }

    if (v104 <= 0)
    {
      goto LABEL_79;
    }

    v84 = *(&v102 + 1);
    if (!*(&v102 + 1))
    {
      goto LABEL_79;
    }

    v83 = *&v101[40];
    v36 = *(&v103 + 1);
    v37 = *(*(&v103 + 1) + 32);
    v88 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v105 = *v101;
    v106 = *&v101[8];
    v107 = *&v101[24];
    *v35.i32 = v33 / v10;
    v86 = v35;
    v95 = *&v101[32];
    v96 = v102;
    v97 = v103;
    v98 = v104;
    v93 = *v101;
    v94 = *&v101[16];
    sub_1AF5DD298(&v93, &v90);
    v38 = 0;
    v81 = vdupq_lane_s32(v86, 0);
    while (1)
    {
      v39 = (v83 + 48 * v38);
      v40 = *v39;
      v41 = v39[1];
      v43 = *(v39 + 2);
      v42 = *(v39 + 3);
      v44 = *(v39 + 4);
      v45 = *(v39 + 5);
      if (v88)
      {
        v46 = *(v45 + 376);

        os_unfair_lock_lock(v46);
        os_unfair_lock_lock(*(v45 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v37);
      v47 = *(v36 + 64);
      v90 = *(v36 + 48);
      v91 = v47;
      v92 = *(v36 + 80);
      v48 = *(*(*(*(v45 + 40) + 16) + 32) + 16) + 1;
      *(v36 + 48) = ecs_stack_allocator_allocate(*(v36 + 32), 48 * v48, 8);
      *(v36 + 56) = v48;
      *(v36 + 72) = 0;
      *(v36 + 80) = 0;
      *(v36 + 64) = 0;
      v49 = sub_1AF64B110(&type metadata for ParticleTextureFrame, &off_1F252CC98, v43, v42, v44, v36);
      if (v43)
      {
        v50 = v89;
        if (v44)
        {
          if (v44 > 7)
          {
            v51 = v44 & 0xFFFFFFFFFFFFFFF8;
            v52 = (v49 + 16);
            v53 = v44 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v54 = vaddq_f32(v81, *v52);
              v52[-1] = vaddq_f32(v81, v52[-1]);
              *v52 = v54;
              v52 += 2;
              v53 -= 8;
            }

            while (v53);
            if (v44 == v51)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v51 = 0;
          }

          v55 = v44 - v51;
          v56 = (v49 + 4 * v51);
          do
          {
            *v56 = *v86.i32 + *v56;
            ++v56;
            --v55;
          }

          while (v55);
        }
      }

      else if (v40 == v41)
      {
        v50 = v89;
      }

      else
      {
        v57 = v41 - v40;
        if ((v41 - v40) > 7)
        {
          v58 = (v57 & 0xFFFFFFFFFFFFFFF8) + v40;
          v59 = (v49 + 4 * v40 + 16);
          v60 = v57 & 0xFFFFFFFFFFFFFFF8;
          do
          {
            v61 = vaddq_f32(v81, *v59);
            v59[-1] = vaddq_f32(v81, v59[-1]);
            *v59 = v61;
            v59 += 2;
            v60 -= 8;
          }

          while (v60);
          v50 = v89;
          if (v57 == (v57 & 0xFFFFFFFFFFFFFFF8))
          {
            goto LABEL_50;
          }
        }

        else
        {
          v58 = v40;
          v50 = v89;
        }

        v62 = v41 - v58;
        v63 = (v49 + 4 * v58);
        do
        {
          *v63 = *v86.i32 + *v63;
          ++v63;
          --v62;
        }

        while (v62);
      }

LABEL_50:
      sub_1AF630994(v36, &v105, &v90);
      if (*(*(v36 + 104) + 16))
      {

        sub_1AF62F348(v64, v45);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = *(v36 + 104);
        if (isUniquelyReferenced_nonNull_native)
        {
          v67 = v66[2];
          v68 = swift_isUniquelyReferenced_nonNull_native();
          *(v36 + 104) = v66;
          if ((v68 & 1) == 0)
          {
            v66 = sub_1AF420EA0(0, v67, 1, v66);
            *(v36 + 104) = v66;
          }

          sub_1AF43A540(0);
          swift_arrayDestroy();
          if (v67)
          {
            v69 = v66[2] - v67;
            memmove(v66 + 4, &v66[9 * v67 + 4], 72 * v69);
            v66[2] = v69;
          }

          *(v36 + 104) = v66;
        }

        else
        {
          v70 = MEMORY[0x1E69E7CC0];
          if (v66[3] >= 2uLL)
          {
            sub_1AF9D7EF0(0, &qword_1ED7269C0, sub_1AF43A540);
            v70 = swift_allocObject();
            v71 = j__malloc_size_0(v70);
            v70[2] = 0;
            v70[3] = 2 * ((v71 - 32) / 72);
          }

          *(v36 + 104) = v70;
        }

        if (*(*(v36 + 16) + OBJC_IVAR____TtC3VFX13EntityManager_currentState) - 1 >= 2)
        {
          v72 = *(v45 + 232);
          v73 = *(v45 + 256);
          if (v72 == v73)
          {
            v74 = *(v45 + 240);
          }

          else
          {
            sub_1AF6497A0(v73, v72);
            v73 = *(v45 + 232);
            v74 = *(v45 + 240);
            if (v74 == v73)
            {
              v74 = 0;
              v73 = 0;
              *(v45 + 232) = 0;
              *(v45 + 240) = 0;
            }
          }

          *(v45 + 248) = v74;
          *(v45 + 256) = v73;
        }
      }

      v89 = v50;
      ecs_stack_allocator_pop_snapshot(v37);
      if (v88)
      {
        os_unfair_lock_unlock(*(v45 + 344));
        os_unfair_lock_unlock(*(v45 + 376));
      }

      if (++v38 == v84)
      {
        goto LABEL_78;
      }
    }
  }

  v108 = *(v2 + 56);
  v109 = *(v2 + 72);
  v110 = *(v2 + 88);
  sub_1AF6B06C0(v4, &v108, 0x200000000, v101);
  if (*v101)
  {
    if (v104 <= 0)
    {

      return sub_1AF5D1564(v101);
    }

    v79 = *(&v102 + 1);
    if (*(&v102 + 1))
    {
      v78 = *&v101[40];
      v11 = *(v103 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v87 = *(&v103 + 1);
      v12 = *(*(&v103 + 1) + 32);
      v105 = *v101;
      v106 = *&v101[8];
      v107 = *&v101[24];
      v95 = *&v101[32];
      v96 = v102;
      v97 = v103;
      v98 = v104;
      v93 = *v101;
      v94 = *&v101[16];
      sub_1AF5DD298(&v93, &v90);
      v13 = 0;
      v77 = v11;
      v76 = v12;
      while (1)
      {
        v85 = v13;
        v14 = (v78 + 48 * v13);
        v82 = *v14;
        v80 = v14[1];
        v16 = *(v14 + 2);
        v15 = *(v14 + 3);
        v17 = *(v14 + 4);
        v18 = *(v14 + 5);
        if (v11)
        {
          v19 = *(v18 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v12);
        v20 = *(v87 + 64);
        v90 = *(v87 + 48);
        v91 = v20;
        v92 = *(v87 + 80);
        v21 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
        *(v87 + 48) = ecs_stack_allocator_allocate(*(v87 + 32), 48 * v21, 8);
        *(v87 + 56) = v21;
        *(v87 + 72) = 0;
        *(v87 + 80) = 0;
        *(v87 + 64) = 0;
        v22 = sub_1AF64B110(&type metadata for ParticleTextureFrame, &off_1F252CC98, v16, v15, v17, v87);
        v23 = sub_1AF64B110(&type metadata for ParticleAge, &off_1F252CBE8, v16, v15, v17, v87);
        v24 = v23;
        if (v16)
        {
          if (!v17)
          {
            goto LABEL_17;
          }

          v26 = v18;
          v25 = v85;
          do
          {
            v27 = *v24++;
            *v22++ = sub_1AFBFCB44(v6, v8, v7, v9, v27).u32[0];
            --v17;
          }

          while (v17);
        }

        else
        {
          if (v82 == v80)
          {
LABEL_17:
            v26 = v18;
            v25 = v85;
            goto LABEL_20;
          }

          v28 = v80 - v82;
          v29 = (v23 + 4 * v82);
          v30 = &v22[v82];
          v26 = v18;
          v25 = v85;
          do
          {
            v31 = *v29++;
            *v30++ = sub_1AFBFCB44(v6, v8, v7, v9, v31).u32[0];
            --v28;
          }

          while (v28);
        }

LABEL_20:
        sub_1AF630994(v87, &v105, &v90);
        sub_1AF62D29C(v26);
        v12 = v76;
        ecs_stack_allocator_pop_snapshot(v76);
        v11 = v77;
        if (v77)
        {
          os_unfair_lock_unlock(*(v26 + 344));
          os_unfair_lock_unlock(*(v26 + 376));
        }

        v13 = v25 + 1;
        if (v13 == v79)
        {
          goto LABEL_77;
        }
      }
    }

    v95 = *&v101[32];
    v96 = v102;
    v97 = v103;
    v98 = v104;
    v93 = *v101;
    v94 = *&v101[16];
    sub_1AF5DD298(&v93, &v90);
LABEL_77:

LABEL_78:
    sub_1AF5D1564(v101);
LABEL_79:

    return sub_1AF5D1564(v101);
  }
}

uint64_t assignWithCopy for ParticleTextureFrameEvolution(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  v7 = (a2 + 8);
  v6 = *(a2 + 8);
  if (v5)
  {
    if (v6)
    {
      *(a1 + 8) = v6;

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }

    else
    {
      sub_1AFA46E78(v4);
      v8 = *(v7 + 9);
      *v4 = *v7;
      *(v4 + 9) = v8;
    }
  }

  else if (v6)
  {
    *(a1 + 8) = v6;
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
  }

  else
  {
    v9 = *v7;
    *(v4 + 9) = *(a2 + 17);
    *v4 = v9;
  }

  return a1;
}

uint64_t sub_1AFA46E78(uint64_t a1)
{
  sub_1AF8C0110();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 assignWithTake for ParticleTextureFrameEvolution(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = a1 + 8;
  v4 = a2 + 8;
  v3 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3)
    {
      *(a1 + 8) = v3;

      *(a1 + 16) = *(a2 + 16);

      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      return result;
    }

    sub_1AFA46E78(a1 + 8);
  }

  *v2 = *v4;
  result = *(v4 + 9);
  *(v2 + 9) = result;
  return result;
}

unint64_t sub_1AFA46F8C()
{
  result = qword_1EB633DB0;
  if (!qword_1EB633DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633DB0);
  }

  return result;
}

void sub_1AFA46FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA46F8C();
    v7 = a3(a1, &type metadata for ParticleTextureFrameEvolution.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA47058()
{
  result = qword_1EB642480;
  if (!qword_1EB642480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642480);
  }

  return result;
}

unint64_t sub_1AFA470B0()
{
  result = qword_1EB633DA0;
  if (!qword_1EB633DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633DA0);
  }

  return result;
}

unint64_t sub_1AFA47108()
{
  result = qword_1EB633DA8;
  if (!qword_1EB633DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB633DA8);
  }

  return result;
}

float32x4_t sub_1AFA4715C(uint64_t a1, char a2, char a3)
{
  v6 = *(a1 + 8);
  v7 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 16));
  v8 = sub_1AF9C5D44();
  if (v10)
  {
    v11 = sub_1AF9C5D58();
    if (v12)
    {
      v13 = sub_1AF9C5E74();
      if (v14)
      {
        v9.i32[0] = 0.5;
        if ((a2 & 1) == 0)
        {
          v9.i32[0] = 0.5;
          if ((a3 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_25:
          v46 = v9;
          v31 = cbrtf(3.0);
          v9.i32[1] = v46.i32[1];
          *v9.i32 = *v46.i32 * v31;
          goto LABEL_26;
        }

        goto LABEL_23;
      }

      v25 = *(a1 + 48);
      v26.i64[0] = 0;
      v26.i32[2] = 0;
      v27 = *(a1 + 56) - v25;
      if (v27)
      {
        v28 = (v13 + 16 * v25);
        do
        {
          v29 = *v28++;
          v30 = v29;
          v26.i32[3] = 0;
          v30.i32[3] = 0;
          v26 = vmaxnmq_f32(v26, v30);
          --v27;
        }

        while (v27);
      }

      v22 = fmaxf(fmaxf(v26.f32[0], v26.f32[2]), v26.f32[1]);
    }

    else
    {
      v17 = *(a1 + 48);
      v18 = 0;
      v19 = *(a1 + 56) - v17;
      if (v19)
      {
        v20 = (v11 + 8 * v17);
        v18 = 0;
        do
        {
          v21 = *v20++;
          v18 = vmaxnm_f32(v18, v21);
          --v19;
        }

        while (v19);
      }

      v22 = fmaxf(v18.f32[0], v18.f32[1]);
    }

LABEL_22:
    *v9.i32 = v22 * 0.5;
    if ((a2 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v15 = *(a1 + 48);
  v16 = *(a1 + 56) - v15;
  if (v16)
  {
    v23 = (v8 + 4 * v15);
    v22 = 0.0;
    do
    {
      v24 = *v23++;
      v22 = fmaxf(v22, v24);
      --v16;
    }

    while (v16);
    goto LABEL_22;
  }

  v9 = 0;
  if (a2)
  {
LABEL_23:
    *v9.i32 = *v9.i32 + *v9.i32;
LABEL_24:
    if ((a3 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v9 = 0;
  if (a3)
  {
    goto LABEL_25;
  }

LABEL_26:
  v32 = *(a1 + 48);
  v33 = *(v7 + 16 * v32);
  v34 = *(a1 + 56) - v32;
  if (v34)
  {
    v36 = (v7 + 16 * v32);
    v35 = v33;
    do
    {
      v37 = *v36++;
      v35 = vminnmq_f32(v35, v37);
      v33 = vmaxnmq_f32(v33, v37);
      --v34;
    }

    while (v34);
  }

  else
  {
    v35 = *(v7 + 16 * v32);
  }

  *&v38 = v35.f32[2] - *v9.i32;
  *&v39 = *v9.i32 + v33.f32[2];
  v40 = vdupq_lane_s32(v9, 0);
  v41.i64[0] = vsubq_f32(v35, v40).u64[0];
  v41.i64[1] = __PAIR64__(1.0, v38);
  v42.i64[0] = vaddq_f32(v40, v33).u64[0];
  v42.i64[1] = __PAIR64__(1.0, v39);
  v43.i64[0] = 0x3F0000003F000000;
  v43.i64[1] = 0x3F0000003F000000;
  v44 = vmulq_f32(vaddq_f32(v42, v41), v43);
  result = vmulq_f32(vsubq_f32(v42, v41), v43);
  v6[17] = v44;
  v6[18] = result;
  v6[19].i32[0] = v6[7].i32[1];
  return result;
}

uint64_t sub_1AFA473B8(uint64_t a1)
{
  v2 = *a1;

  sub_1AFB948C0();
  v87 = sub_1AF657F68(&type metadata for ParticlePivot);
  v86 = sub_1AF657F68(&type metadata for Orientation) || sub_1AF657F68(&type metadata for ParticleAngle);
  v3 = *(a1 + 104);
  v129[0] = *(a1 + 88);
  v129[1] = v3;
  v130 = *(a1 + 120);
  sub_1AF6B06C0(v2, v129, 0x200000000, v122);
  v118 = *&v122[32];
  v119 = v123;
  v120 = v124;
  v121 = v125;
  v116 = *v122;
  v117 = *&v122[16];
  v79 = a1;
  if (*v122)
  {
    v85 = v125;
    if (v125 >= 1)
    {
      v84 = v123.i64[1];
      if (v123.i64[1])
      {
        v77 = v2;
        v83 = *&v122[40];
        v4 = *(&v124 + 1);
        v82 = v124;
        v5 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v6 = *(*(&v124 + 1) + 32);
        v126 = *v122;
        v127 = *&v122[8];
        v128 = *&v122[24];
        v109 = *&v122[32];
        v110 = v123;
        v111 = v124;
        v112 = v125;
        v107 = *v122;
        v108 = *&v122[16];
        sub_1AF5DD298(&v107, v131);
        v7 = 0;
        v81 = v5;
        v80 = v6;
        while (1)
        {
          v8 = v6;
          v102 = v7;
          v9 = (v83 + 48 * v7);
          v10 = *v9;
          v11 = v9[1];
          v12 = v9[2];
          v14 = *(v9 + 2);
          v13 = *(v9 + 3);
          v15 = *(v9 + 4);
          v16 = *(v9 + 5);
          if (v5)
          {
            v17 = *(v16 + 376);

            os_unfair_lock_lock(v17);
            os_unfair_lock_lock(*(v16 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v8);
          v93 = *(v4 + 64);
          v96 = *(v4 + 48);
          v90 = *(v4 + 80);
          v18 = *(*(*(*(v16 + 40) + 16) + 32) + 16) + 1;
          *(v4 + 48) = ecs_stack_allocator_allocate(*(v4 + 32), 48 * v18, 8);
          *(v4 + 56) = v18;
          *(v4 + 72) = 0;
          *(v4 + 80) = 0;
          *(v4 + 64) = 0;
          v105[0].n128_u8[0] = 1;
          v131[0] = v82;
          v131[1] = v16;
          v99 = v16;
          v131[2] = v4;
          v131[3] = v12;
          v131[4] = (v11 - v10 + v12);
          v131[5] = v85;
          v131[6] = v10;
          v131[7] = v11;
          v131[8] = 0;
          v131[9] = 0;
          v132 = 1;
          v133 = v14;
          v134 = v13;
          v135 = v15;
          sub_1AFA4715C(v131, v87, v86);
          v19 = *(v4 + 48);
          v20 = *(v4 + 64);
          if (!v20)
          {
            v42 = *(v4 + 56);
            v43 = *(v4 + 32);
            v45 = v102;
            v46 = v99;
            v47 = v90;
            v44 = v81;
            v6 = v8;
            goto LABEL_42;
          }

          for (i = 0; i != v20; ++i)
          {
            v23 = (v19 + 48 * i);
            v24 = *v23;
            v25 = v23[4];
            v26 = *(v4 + 72);
            if (v26)
            {
              v27 = v24 == v26;
            }

            else
            {
              v27 = 0;
            }

            if (v27)
            {
              goto LABEL_14;
            }

            v28 = v126;
            if (!v126[11])
            {
              goto LABEL_14;
            }

            v29 = v23[2];
            v30 = v126 + 41;
            v31 = v126[9];
            if (v31 >= 0x10)
            {
              v32 = &v30[v126[8]];
              v33 = v31 >> 4;
              v34 = v126 + 41;
              while (*v32 != v24)
              {
                ++v34;
                v32 += 16;
                if (!--v33)
                {
                  goto LABEL_30;
                }
              }

              v35 = v34[v126[10]];
              v36 = v35 > 5;
              v37 = (1 << v35) & 0x23;
              if (v36 || v37 == 0)
              {
LABEL_14:

                v25(v22);

                continue;
              }
            }

LABEL_30:
            if (swift_conformsToProtocol2() && v29)
            {
              if (sub_1AF5FC8D8(v29))
              {
                goto LABEL_14;
              }

              v39 = v28[9];
              if (v39 < 0x10)
              {
                goto LABEL_14;
              }

              v40 = &v30[v28[8]];
              v41 = 16 * (v39 >> 4);
              while (*v40 != v29)
              {
                v40 += 16;
                v41 -= 16;
                if (!v41)
                {
                  goto LABEL_14;
                }
              }
            }
          }

          v42 = *(v4 + 56);
          v19 = *(v4 + 48);
          v43 = *(v4 + 32);
          if (*(v4 + 64) >= 1)
          {
            swift_arrayDestroy();
          }

          v44 = v81;
          v6 = v80;
          v45 = v102;
          v46 = v99;
          v47 = v90;
LABEL_42:
          ecs_stack_allocator_deallocate(v43, v19, 48 * v42);
          *(v4 + 48) = v96;
          *(v4 + 64) = v93;
          *(v4 + 80) = v47;
          sub_1AF62D29C(v46);
          ecs_stack_allocator_pop_snapshot(v6);
          v5 = v44;
          if (v44)
          {
            os_unfair_lock_unlock(*(v46 + 344));
            os_unfair_lock_unlock(*(v46 + 376));
          }

          v7 = v45 + 1;
          if (v7 == v84)
          {
            sub_1AF5D1564(v122);
            v2 = v77;
            break;
          }
        }
      }
    }
  }

  *v48.i64 = sub_1AF6DE28C();
  v100 = v48;
  v103 = v49;
  if (*v122)
  {
    if (v125 >= 1)
    {
      v50 = v123.i64[1];
      if (v123.i64[1])
      {
        v78 = v2;
        v51 = *(&v124 + 1);
        v52 = *&v122[40];
        v53 = *(*(&v124 + 1) + 32);
        v54 = *(v124 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v109 = v118;
        v110 = v119;
        v111 = v120;
        v112 = v121;
        v107 = v116;
        v108 = v117;
        sub_1AF5DD298(&v107, v105);
        v55 = (v52 + 40);
        do
        {
          v59 = *v55;
          if (v54)
          {
            v60 = *(v59 + 376);

            os_unfair_lock_lock(v60);
            os_unfair_lock_lock(*(v59 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v53);
          v61 = *(v51 + 80);
          v62 = *(*(*(*(v59 + 40) + 16) + 32) + 16) + 1;
          v88 = *(v51 + 64);
          v91 = *(v51 + 48);
          v63 = ecs_stack_allocator_allocate(*(v51 + 32), 48 * v62, 8);
          *(v51 + 48) = v63;
          *(v51 + 56) = v62;
          *(v51 + 72) = 0;
          *(v51 + 80) = 0;
          *(v51 + 64) = 0;
          v94 = *(v59 + 288);
          v97 = *(v59 + 272);
          ecs_stack_allocator_deallocate(*(v51 + 32), v63, 48 * v62);
          *(v51 + 48) = v91;
          *(v51 + 64) = v88;
          *(v51 + 80) = v61;
          sub_1AF62D29C(v59);
          ecs_stack_allocator_pop_snapshot(v53);
          if (v54)
          {
            os_unfair_lock_unlock(*(v59 + 344));
            os_unfair_lock_unlock(*(v59 + 376));
          }

          v56 = vminnmq_f32(vsubq_f32(v100, v103), vsubq_f32(v97, v94));
          v57 = vmaxnmq_f32(vaddq_f32(v103, v100), vaddq_f32(v97, v94));
          v58.i64[0] = 0x3F0000003F000000;
          v58.i64[1] = 0x3F0000003F000000;
          v100 = vmulq_f32(vaddq_f32(v56, v57), v58);
          v103 = vmulq_f32(vsubq_f32(v57, v56), v58);

          v55 += 6;
          --v50;
        }

        while (v50);
        sub_1AF5D1564(v122);
        v2 = v78;
      }
    }
  }

  v64 = 0xFFFFFFFFLL;
  v65 = *(v79 + 32);
  v66 = *(v79 + 36);
  v67 = v65 == 0xFFFFFFFFLL && v66 == 0;
  v68 = v67;
  if (!v67)
  {
    v64 = v65 | (v66 << 32);

    sub_1AF3C99B4(v64, v105);

    if ((v106 & 1) == 0)
    {
      sub_1AF6810A8(v64, v2, v105[0], v105[1]);
    }
  }

  sub_1AFB960DC(v64, &v107);
  v92 = v107;
  v95 = v108;
  v98 = v109;
  v89 = v110;

  if (v111)
  {
    v69 = -1;
  }

  else
  {
    v69 = 0;
  }

  if (!v68)
  {
    v70 = vdupq_n_s32(v69);
    v71 = vmlaq_n_f32(vmlaq_lane_f32(vmlaq_laneq_f32(vbslq_s8(v70, 0, v89), vbslq_s8(v70, xmmword_1AFE20180, v98), v100, 2), vbslq_s8(v70, xmmword_1AFE20160, v95), *v100.f32, 1), vbslq_s8(v70, xmmword_1AFE20150, v92), v100.f32[0]);
    v71.i32[3] = v100.i32[3];
    v101 = v71;
    v72 = v103;
    v72.i32[1] = v103.i32[0];
    v72.i32[2] = v103.i32[0];
    v104 = vmlaq_f32(vmlaq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v103.f32, 1), v103), vbslq_s8(v70, xmmword_1AFE20160, vabsq_f32(v95))), v72, vbslq_s8(v70, xmmword_1AFE20150, vabsq_f32(v92))), vzip2q_s32(vtrn1q_s32(v103, v103), v103), vbslq_s8(v70, xmmword_1AFE20180, vabsq_f32(v98)));
    v73 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v73)
    {
      v74 = *(v73 + 80);
      swift_unknownObjectWeakLoadStrong();
      v73 = *(v73 + 56);
    }

    else
    {
      v74 = 0;
    }

    v114 = 0;
    swift_unknownObjectUnownedInit();
    v113[0] = v2;
    v114 = v73;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v115 = v74;
    sub_1AFC757E0(v113, v64, v101, v104);
    sub_1AF579490(v113);
    if (v74)
    {
      v75 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v75 ^ 1);
    }
  }

  sub_1AF5D1564(v122);
}

uint64_t sub_1AFA47C84(void *a1)
{
  v3 = v1;
  sub_1AFA4978C(0, &qword_1EB6424A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA496E4();
  sub_1AFDFF3F8();
  LODWORD(v12) = *v3;
  v13 = 0;
  sub_1AFA497F0();
  sub_1AFDFE918();
  if (!v2)
  {
    LODWORD(v12) = *(v3 + 4);
    v13 = 1;
    sub_1AFDFE918();
    LOBYTE(v12) = 2;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 3;
    sub_1AFDFE8C8();
    LOBYTE(v12) = 4;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 5;
    sub_1AFDFE8E8();
    LOBYTE(v12) = 6;
    sub_1AFDFE8E8();
    v12 = *(v3 + 28);
    v13 = 7;
    sub_1AF480018();
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AFA47F10()
{
  v1 = *v0;
  v2 = 0x676E4172656E6E69;
  v3 = 0x7469736E65746E69;
  if (v1 != 6)
  {
    v3 = 0x65727574786574;
  }

  v4 = 1918985582;
  if (v1 != 4)
  {
    v4 = 7496038;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6152746365707361;
  if (v1 != 2)
  {
    v5 = 0x75676E6174636572;
  }

  if (*v0)
  {
    v2 = 0x676E41726574756FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AFA48010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AFA481F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AFA48038(uint64_t a1)
{
  v2 = sub_1AFA496E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AFA48074(uint64_t a1)
{
  v2 = sub_1AFA496E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AFA480B0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA484AC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

double sub_1AFA48188@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FC90FDA3F9C61A9;
  *(a1 + 8) = 1065353216;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0x3F8000003DCCCCCDLL;
  *(a1 + 24) = 1065353216;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 28) = 0xFFFFFFFFLL;
  return result;
}

uint64_t sub_1AFA481F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E4172656E6E69 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E41726574756FLL && a2 == 0xEA0000000000656CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x75676E6174636572 && a2 == 0xEB0000000072616CLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1918985582 && a2 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7496038 && a2 == 0xE300000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x65727574786574 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1AFA484AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AFA4978C(0, &qword_1EB642490, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v24 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AFA496E4();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v25 = 0;
  sub_1AFA49738();
  sub_1AFDFE768();
  v11 = v24;
  v25 = 1;
  sub_1AFDFE768();
  v12 = v24;
  LOBYTE(v24) = 2;
  sub_1AFDFE738();
  v14 = v13;
  LOBYTE(v24) = 3;
  v15 = sub_1AFDFE718();
  LOBYTE(v24) = 4;
  sub_1AFDFE738();
  v17 = v16;
  LOBYTE(v24) = 5;
  sub_1AFDFE738();
  v19 = v18;
  LOBYTE(v24) = 6;
  sub_1AFDFE738();
  v21 = v20;
  v25 = 7;
  sub_1AF47FEB4();
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v22 = v24;
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v11;
  *(a2 + 4) = v12;
  *(a2 + 8) = v14;
  *(a2 + 12) = v15 & 1;
  *(a2 + 16) = v17;
  *(a2 + 20) = v19;
  *(a2 + 24) = v21;
  *(a2 + 28) = v22;
  return result;
}

uint64_t sub_1AFA487D8(uint64_t a1)
{
  v196 = *MEMORY[0x1E69E9840];
  v2 = *a1;

  v3 = *(a1 + 8);

  sub_1AF3CED9C(v3, v192);

  if ((*&v192[8] & 0xFF00000000) == 0x200000000)
  {
    LOBYTE(v130) = 0;
    v5 = 0;
    v6 = -1;
    v7 = 1.0;
    v8 = 0.1;
    v9 = 1.5708;
    v10 = 1.0;
    v4.i32[0] = 1.0;
  }

  else
  {
    v6 = *&v192[28];
    v5 = *&v192[32];
    v7 = *&v192[8];
    v9 = *&v192[4];
    v10 = *&v192[20];
    v8 = *&v192[16];
    v130 = HIDWORD(*&v192[8]) & 1;
    v4.i32[0] = *&v192[24];
  }

  v138 = v4;
  sub_1AF3C9244(v3, v181);
  if (v182)
  {
    v11 = -1;
  }

  else
  {
    v11 = 0;
  }

  *v197.columns[0].i64 = sub_1AF6A6AA8(xmmword_1AFE207C0, vbslq_s8(vdupq_n_s32(v11), xmmword_1AFE20150, v181[0]));
  v198 = __invert_f4(v197);
  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v8 > v10)
  {
    v13 = v8;
  }

  else
  {
    v13 = v10;
  }

  v149 = v198.columns[3];
  v151 = v198.columns[2];
  v153 = v198.columns[1];
  v155 = v198.columns[0];
  if (v9 <= 0.0)
  {
    v9 = 0.0;
LABEL_19:
    if (v7 >= 0.00000011921)
    {
      if (v12 >= 0.0001)
      {
        v14 = v12 + 0.0001;
        goto LABEL_28;
      }
    }

    else
    {
      if (v12 >= 0.0001)
      {
        v14 = v12 + 0.0001;
        v7 = 0.00000011921;
        goto LABEL_28;
      }

      v7 = 0.00000011921;
    }

    goto LABEL_27;
  }

  if (v9 <= 3.1416)
  {
    goto LABEL_19;
  }

  if (v7 >= 0.00000011921)
  {
    if (v12 < 0.0001)
    {
      v9 = 3.1416;
      goto LABEL_27;
    }

    v14 = v12 + 0.0001;
    v9 = 3.1416;
  }

  else
  {
    if (v12 < 0.0001)
    {
      v9 = 3.1416;
      v7 = 0.00000011921;
LABEL_27:
      v14 = 0.0002;
      v12 = 0.0001;
      goto LABEL_28;
    }

    v14 = v12 + 0.0001;
    v9 = 3.1416;
    v7 = 0.00000011921;
  }

LABEL_28:
  if (v13 > v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  *&v16 = 1.0 / tanf(v9 * 0.5);
  v17 = v7 * *&v16;
  v18.i64[0] = 0;
  v18.i32[3] = 0;
  v19 = v16;
  v20.i32[0] = 0;
  v20.i64[1] = 0;
  v20.f32[1] = v17;
  if (fabsf(v15) == INFINITY)
  {
    v21 = -v12;
    v22 = xmmword_1AFE62AB0;
  }

  else
  {
    v22.i64[0] = 0;
    v22.f32[2] = v15 / (v12 - v15);
    v22.i32[3] = -1.0;
    v21 = (v15 * v12) / (v12 - v15);
  }

  v18.f32[2] = v21;
  v156 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v155.f32[0]), v20, *v155.f32, 1), v22, v155, 2), v18, v155, 3);
  v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v153.f32[0]), v20, *v153.f32, 1), v22, v153, 2), v18, v153, 3);
  v152 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v151.f32[0]), v20, *v151.f32, 1), v22, v151, 2), v18, v151, 3);
  v150 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, v149.f32[0]), v20, *v149.f32, 1), v22, v149, 2), v18, v149, 3);
  v23 = -1.0 / (v10 - v8);
  v24 = 1.0 - (v8 * v23);
  v25 = *(a1 + 104);
  v165 = *(a1 + 88);
  v166 = v25;
  v167 = *(a1 + 120);
  sub_1AF5C9468(&v157);
  if (v6 != -1 || v5)
  {
    sub_1AF8E60EC(v6 | (v5 << 32), 1, &v183);
    if (v187)
    {
      v168[0] = v183;
      v168[1] = v184;
      v168[2] = v185;
      v169 = v186;
      v170 = v187;
      sub_1AF44222C(v168, v192);
      sub_1AF478700(v168, 0, 1, v188);
      if (v190 != 1)
      {
        v177[0] = v188[0];
        v177[1] = v188[1];
        v178 = v189;
        v179 = v190;
        v180 = v191;
        v163[0] = v157;
        v163[1] = v158;
        v164 = v159;
        sub_1AF6B06C0(v2, v163, 0x200000000, v192);
        if (*v192)
        {
          if (v195 > 0)
          {
            v132 = *(&v193 + 1);
            if (*(&v193 + 1))
            {
              v69 = 0;
              v129 = *&v192[40];
              v70 = *(&v194 + 1);
              v134 = *(*(&v194 + 1) + 32);
              v71 = *(v194 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
              v160 = *v192;
              v161 = *&v192[8];
              v162 = *&v192[24];
              __asm { FMOV            V0.4S, #1.0 }

              v141 = _Q0;
              v127 = v71;
              do
              {
                v73 = (v129 + 48 * v69);
                v74 = *v73;
                v146 = v73[1];
                v75 = *(v73 + 2);
                v76 = *(v73 + 3);
                v77 = *(v73 + 4);
                v78 = *(v73 + 5);
                if (v71)
                {
                  v79 = *(v78 + 376);

                  os_unfair_lock_lock(v79);
                  os_unfair_lock_lock(*(v78 + 344));
                }

                else
                {
                }

                ecs_stack_allocator_push_snapshot(v134);
                v80 = *(v70 + 64);
                v171 = *(v70 + 48);
                v172 = v80;
                *&v173 = *(v70 + 80);
                v81 = *(*(*(*(v78 + 40) + 16) + 32) + 16) + 1;
                *(v70 + 48) = ecs_stack_allocator_allocate(*(v70 + 32), 48 * v81, 8);
                *(v70 + 56) = v81;
                *(v70 + 72) = 0;
                *(v70 + 80) = 0;
                *(v70 + 64) = 0;
                v82 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v75, v76, v77, v70);
                v83 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v75, v76, v77, v70);
                v85 = v83;
                if (v75)
                {
                  v87 = v154;
                  v86 = v156;
                  v89 = v150;
                  v88 = v152;
                  v90 = v141;
                  v92 = v124;
                  v91 = v125;
                  if (v77)
                  {
                    do
                    {
                      v93 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v86, COERCE_FLOAT(*v82->f32)), v87, *v82, 1), v88, *v82->f32, 2), v89, *v82->f32, 3);
                      v94 = *&v93.i32[3];
                      v95 = *&v93.i32[2] / *&v93.i32[3];
                      if ((*&v93.i32[2] / *&v93.i32[3]) > 0.0)
                      {
                        *v84.f32 = vdiv_f32(*v93.i8, vdup_laneq_s32(v93, 3));
                        v96 = v84;
                        v96.f32[2] = v95;
                        v97 = vabsq_f32(v96);
                        v97.i32[3] = v92.i32[3];
                        v98 = v90;
                        v98.i32[3] = v91.i32[3];
                        v99 = vcgtq_f32(v98, v97);
                        if ((v99.i32[2] & v99.i32[1] & v99.i32[0]) < 0)
                        {
                          v143 = v98;
                          v147 = v97;
                          v136 = *v84.f32;
                          v179(v177, COERCE_DOUBLE(vadd_f32(vmul_f32(*v84.f32, 0x3F0000003F000000), 0x3F0000003F000000)));
                          v101 = 1.0;
                          if ((v130 & 1) == 0)
                          {
                            if (vaddv_f32(vmul_f32(v136, v136)) >= 1.0)
                            {
                              v101 = 0.0;
                            }

                            else
                            {
                              v101 = 1.0;
                            }
                          }

                          v90 = v141;
                          *v85 = vaddq_f32(*v85, vmulq_n_f32(vsubq_f32(vmulq_n_f32(v100, *v138.i32), *v85), (v24 + (v23 * v94)) * v101));
                          v91 = v143;
                          v92 = v147;
                          v87 = v154;
                          v86 = v156;
                          v89 = v150;
                          v88 = v152;
                        }

                        else
                        {
                          v91 = v98;
                          v92 = v97;
                        }
                      }

                      ++v85;
                      v82 += 2;
                      --v77;
                    }

                    while (v77);
                    v124 = v92;
                    v125 = v91;
                  }
                }

                else
                {
                  v103 = v154;
                  v102 = v156;
                  v105 = v150;
                  v104 = v152;
                  v106 = v141;
                  if (v74 != v146)
                  {
                    v107 = v146 - v74;
                    v108 = (v83 + 16 * v74);
                    v109 = &v82[2 * v74];
                    v111 = v122;
                    v110 = v123;
                    do
                    {
                      v112 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v102, COERCE_FLOAT(*v109->f32)), v103, *v109, 1), v104, *v109->f32, 2), v105, *v109->f32, 3);
                      v113 = *&v112.i32[3];
                      v114 = *&v112.i32[2] / *&v112.i32[3];
                      if ((*&v112.i32[2] / *&v112.i32[3]) > 0.0)
                      {
                        *v84.f32 = vdiv_f32(*v112.i8, vdup_laneq_s32(v112, 3));
                        v115 = v84;
                        v115.f32[2] = v114;
                        v116 = vabsq_f32(v115);
                        v116.i32[3] = v111.i32[3];
                        v117 = v106;
                        v117.i32[3] = v110.i32[3];
                        v118 = vcgtq_f32(v117, v116);
                        if ((v118.i32[2] & v118.i32[1] & v118.i32[0]) < 0)
                        {
                          v144 = v117;
                          v148 = v116;
                          v137 = *v84.f32;
                          v179(v177, COERCE_DOUBLE(vadd_f32(vmul_f32(*v84.f32, 0x3F0000003F000000), 0x3F0000003F000000)));
                          v120 = 1.0;
                          if ((v130 & 1) == 0)
                          {
                            if (vaddv_f32(vmul_f32(v137, v137)) >= 1.0)
                            {
                              v120 = 0.0;
                            }

                            else
                            {
                              v120 = 1.0;
                            }
                          }

                          v106 = v141;
                          *v108 = vaddq_f32(*v108, vmulq_n_f32(vsubq_f32(vmulq_n_f32(v119, *v138.i32), *v108), (v24 + (v23 * v113)) * v120));
                          v110 = v144;
                          v111 = v148;
                          v103 = v154;
                          v102 = v156;
                          v105 = v150;
                          v104 = v152;
                        }

                        else
                        {
                          v110 = v117;
                          v111 = v116;
                        }
                      }

                      ++v108;
                      v109 += 2;
                      --v107;
                    }

                    while (v107);
                    v122 = v111;
                    v123 = v110;
                  }
                }

                sub_1AF630994(v70, &v160, &v171);
                sub_1AF62D29C(v78);
                ecs_stack_allocator_pop_snapshot(v134);
                v71 = v127;
                if (v127)
                {
                  os_unfair_lock_unlock(*(v78 + 344));
                  os_unfair_lock_unlock(*(v78 + 376));
                }

                ++v69;
              }

              while (v69 != v132);
            }

            sub_1AFA49560(&v157);
            sub_1AF0D9DB0(&v183, &unk_1ED725420);
            return sub_1AF0D9DB0(v192, &qword_1ED725EA0);
          }

          sub_1AF5D15C0(v192, &v171);
          sub_1AF0D9DB0(&v183, &unk_1ED725420);
          goto LABEL_117;
        }
      }

      sub_1AF0D9DB0(&v183, &unk_1ED725420);
    }

LABEL_109:
    sub_1AFA49560(&v157);
  }

  v183 = v157;
  v184 = v158;
  *&v185 = v159;
  sub_1AF6B06C0(v2, &v183, 0x200000000, v192);
  if (!*v192)
  {
    goto LABEL_109;
  }

  if (v195 > 0)
  {
    v140 = *(&v193 + 1);
    if (*(&v193 + 1))
    {
      v26 = 0;
      v135 = *&v192[40];
      v27 = *(&v194 + 1);
      v145 = *(*(&v194 + 1) + 32);
      v28 = *(v194 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      *&v168[0] = *v192;
      *(v168 + 8) = *&v192[8];
      *(&v168[1] + 8) = *&v192[24];
      __asm { FMOV            V0.4S, #1.0 }

      v131 = _Q0;
      v133 = vdupq_lane_s32(v138, 0);
      v139 = v28;
      do
      {
        v34 = (v135 + 48 * v26);
        v35 = *v34;
        v142 = v34[1];
        v36 = *(v34 + 2);
        v37 = *(v34 + 3);
        v38 = *(v34 + 4);
        v39 = *(v34 + 5);
        if (v28)
        {
          v40 = *(v39 + 376);

          os_unfair_lock_lock(v40);
          os_unfair_lock_lock(*(v39 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v145);
        v41 = *(v27 + 64);
        v171 = *(v27 + 48);
        v172 = v41;
        *&v173 = *(v27 + 80);
        v42 = *(*(*(*(v39 + 40) + 16) + 32) + 16) + 1;
        *(v27 + 48) = ecs_stack_allocator_allocate(*(v27 + 32), 48 * v42, 8);
        *(v27 + 56) = v42;
        *(v27 + 72) = 0;
        *(v27 + 80) = 0;
        *(v27 + 64) = 0;
        v43 = sub_1AF64B110(&type metadata for Position, &off_1F252EE70, v36, v37, v38, v27);
        v44 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v36, v37, v38, v27);
        if (v36)
        {
          if (v38)
          {
            v47 = v126;
            v46 = v128;
            do
            {
              v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, COERCE_FLOAT(*v43->f32)), v154, *v43, 1), v152, *v43->f32, 2), v150, *v43->f32, 3);
              v49 = *&v48.i32[3];
              v50 = *&v48.i32[2] / *&v48.i32[3];
              if ((*&v48.i32[2] / *&v48.i32[3]) > 0.0)
              {
                *v45.f32 = vdiv_f32(*v48.i8, vdup_laneq_s32(v48, 3));
                v51 = v45;
                v51.f32[2] = v50;
                v52 = vabsq_f32(v51);
                v52.i32[3] = v46.i32[3];
                v53 = v131;
                v53.i32[3] = v47.i32[3];
                v54 = vcgtq_f32(v53, v52);
                if ((v54.i32[2] & v54.i32[1] & v54.i32[0]) < 0)
                {
                  v55 = 1.0;
                  if ((v130 & 1) == 0)
                  {
                    if (vaddv_f32(vmul_f32(*v45.f32, *v45.f32)) >= 1.0)
                    {
                      v55 = 0.0;
                    }

                    else
                    {
                      v55 = 1.0;
                    }
                  }

                  v45 = *v44;
                  *v44 = vaddq_f32(*v44, vmulq_n_f32(vsubq_f32(v133, *v44), (v24 + (v23 * v49)) * v55));
                }

                v46 = v52;
                v47 = v53;
              }

              ++v44;
              v43 += 2;
              --v38;
            }

            while (v38);
            v126 = v47;
            v128 = v46;
          }
        }

        else
        {
          v57 = v124;
          v56 = v125;
          if (v35 != v142)
          {
            v58 = v142 - v35;
            v59 = &v44[v35];
            v60 = &v43[2 * v35];
            do
            {
              v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v156, COERCE_FLOAT(*v60->f32)), v154, *v60, 1), v152, *v60->f32, 2), v150, *v60->f32, 3);
              v62 = *&v61.i32[3];
              v63 = *&v61.i32[2] / *&v61.i32[3];
              if ((*&v61.i32[2] / *&v61.i32[3]) > 0.0)
              {
                *v45.f32 = vdiv_f32(*v61.i8, vdup_laneq_s32(v61, 3));
                v64 = v45;
                v64.f32[2] = v63;
                v65 = vabsq_f32(v64);
                v65.i32[3] = v56.i32[3];
                v66 = v131;
                v66.i32[3] = v57.i32[3];
                v67 = vcgtq_f32(v66, v65);
                if ((v67.i32[2] & v67.i32[1] & v67.i32[0]) < 0)
                {
                  v68 = 1.0;
                  if ((v130 & 1) == 0)
                  {
                    if (vaddv_f32(vmul_f32(*v45.f32, *v45.f32)) >= 1.0)
                    {
                      v68 = 0.0;
                    }

                    else
                    {
                      v68 = 1.0;
                    }
                  }

                  v45 = *v59;
                  *v59 = vaddq_f32(*v59, vmulq_n_f32(vsubq_f32(v133, *v59), (v24 + (v23 * v62)) * v68));
                }

                v56 = v65;
                v57 = v66;
              }

              ++v59;
              v60 += 2;
              --v58;
            }

            while (v58);
            v124 = v57;
            v125 = v56;
          }
        }

        sub_1AF630994(v27, v168, &v171);
        sub_1AF62D29C(v39);
        ecs_stack_allocator_pop_snapshot(v145);
        v28 = v139;
        if (v139)
        {
          os_unfair_lock_unlock(*(v39 + 344));
          os_unfair_lock_unlock(*(v39 + 376));
        }

        ++v26;
      }

      while (v26 != v140);
    }

    sub_1AFA49560(&v157);
    return sub_1AF0D9DB0(v192, &qword_1ED725EA0);
  }

  v173 = *&v192[32];
  v174 = v193;
  v175 = v194;
  v176 = v195;
  v171 = *v192;
  v172 = *&v192[16];
  sub_1AF5DD298(&v171, v168);
LABEL_117:
  sub_1AFA49560(&v157);

  sub_1AF0D9DB0(v192, &qword_1ED725EA0);
  return sub_1AF0D9DB0(v192, &qword_1ED725EA0);
}

uint64_t sub_1AFA49560(uint64_t a1)
{
  sub_1AFA495BC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFA495BC()
{
  if (!qword_1EB642488)
  {
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB642488);
    }
  }
}

uint64_t getEnumTagSinglePayload for ProjectorParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 36))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProjectorParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 36) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 36) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1AFA496E4()
{
  result = qword_1EB642498;
  if (!qword_1EB642498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB642498);
  }

  return result;
}

unint64_t sub_1AFA49738()
{
  result = qword_1EB6424A0;
  if (!qword_1EB6424A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424A0);
  }

  return result;
}

void sub_1AFA4978C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFA496E4();
    v7 = a3(a1, &type metadata for ProjectorParameters.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AFA497F0()
{
  result = qword_1EB6424B0;
  if (!qword_1EB6424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424B0);
  }

  return result;
}

unint64_t sub_1AFA49858()
{
  result = qword_1EB6424B8;
  if (!qword_1EB6424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424B8);
  }

  return result;
}

unint64_t sub_1AFA498B0()
{
  result = qword_1EB6424C0;
  if (!qword_1EB6424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424C0);
  }

  return result;
}

unint64_t sub_1AFA49908()
{
  result = qword_1EB6424C8;
  if (!qword_1EB6424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6424C8);
  }

  return result;
}

double sub_1AFA4997C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 524288.124;
  *(a1 + 16) = 0x412000003F800000;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 1;
  return result;
}

uint64_t sub_1AFA499CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7366664F7466656CLL;
    v6 = 0x657366664F706F74;
    if (a1 != 2)
    {
      v6 = 0x664F6D6F74746F62;
    }

    if (a1)
    {
      v5 = 0x66664F7468676972;
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
    v1 = 0x7073726550657375;
    v2 = 0x756C6F56776F6873;
    if (a1 != 7)
    {
      v2 = 0x6172656D6163;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1918985582;
    if (a1 != 4)
    {
      v3 = 7496038;
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