uint64_t sub_1AFC3746C(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return v4 & 1;
  }

  v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v7 = *(v6 + 2);
  if (HIDWORD(a1) != 0xFFFFFFFF && v6[2] != HIDWORD(a1))
  {
LABEL_2:
    v4 = 0;
    return v4 & 1;
  }

  v8 = *(*(v2 + 144) + 8 * *v6 + 32);
  v9 = *(v8 + 48);
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v4 = 0;
      return v4 & 1;
    }

    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
  }

  while (v13 != &type metadata for ParticleFlockingSolver);
  v15 = &(*(v12 - 2))[7 * v7] + *(v8 + 128);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  v42[0] = *v15;
  v42[1] = v17;
  v42[2] = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  *(v43 + 15) = *(v15 + 95);
  v42[4] = v19;
  v43[0] = v18;
  v42[3] = v20;
  v21 = *(v15 + 16);
  v36 = *v15;
  v37 = v21;
  v22 = *(v15 + 32);
  v23 = *(v15 + 48);
  v24 = *(v15 + 64);
  v25 = *(v15 + 80);
  *(v41 + 15) = *(v15 + 95);
  v40 = v24;
  v41[0] = v25;
  v38 = v22;
  v39 = v23;
  sub_1AF443184(v42, &v30);
  a2(&v36);
  if (v3)
  {
    v34 = v40;
    v35[0] = v41[0];
    *(v35 + 15) = *(v41 + 15);
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    sub_1AF597500(&v30);
    return v4 & 1;
  }

  v27 = sub_1AF65ADEC(a1);
  if ((v28 & 0x100000000) == 0)
  {
    v29 = v27 << 16 >> 48;
    v44[4] = v40;
    v45[0] = v41[0];
    *(v45 + 15) = *(v41 + 15);
    v44[0] = v36;
    v44[1] = v37;
    v44[2] = v38;
    v44[3] = v39;

    sub_1AFC49B9C(v29, v44);

    v34 = v40;
    v35[0] = v41[0];
    *(v35 + 15) = *(v41 + 15);
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v33 = v39;
    sub_1AF597500(&v30);
    v4 = 1;
    return v4 & 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC376FC(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleRibbonRenderer)
        {
          v15 = (&(*(v12 - 2))[7 * v7].Kind + *(v8 + 128));
          v16 = v15[5];
          v26 = v15[4];
          v27[0] = v16;
          *(v27 + 9) = *(v15 + 89);
          v17 = v15[1];
          v22 = *v15;
          v23 = v17;
          v18 = v15[3];
          v24 = v15[2];
          v25 = v18;
          a2(&v22);
          if (v3)
          {
            return v4 & 1;
          }

          v19 = sub_1AF65ADEC(a1);
          if ((v20 & 0x100000000) == 0)
          {
            v21 = v19 << 16 >> 48;
            v28[4] = v26;
            v29[0] = v27[0];
            *(v29 + 9) = *(v27 + 9);
            v28[0] = v22;
            v28[1] = v23;
            v28[2] = v24;
            v28[3] = v25;

            sub_1AFC456C0(v21, v28);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC37900(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSphereCollider)
        {
          a2(*(v12 - 2) + 28 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC379EC(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSphereRenderer)
        {
          v15 = *(v12 - 2) + 36 * v7 + *(v8 + 128);
          v16 = *(v15 + 16);
          v20 = *v15;
          v21 = v16;
          v22 = *(v15 + 32);
          a2(&v20);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) == 0)
          {
            v19 = v17 << 16 >> 48;
            v23[0] = v20;
            v23[1] = v21;
            v24 = v22;

            sub_1AFC45800(v19, v23);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC37BC8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for WorldPhysicsController)
        {
          a2(&(*(v12 - 2))[2 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC37CB0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for LastFrameWorldTransform)
        {
          a2(&(*(v12 - 2))[4 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC37D98(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for NodeTransformController)
        {
          a2(*(v12 - 2) + 40 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC37E84(unint64_t a1, void (*a2)(int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for OrientationOverVelocity)
        {
          v15 = *(v12 - 2) + 8 * v7 + *(v8 + 128);
          v16 = *v15;
          LOBYTE(v15) = *(v15 + 4);
          v27 = v16;
          v28 = v15;
          a2(&v27);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = v28;
          v21 = *(v19 + 48);
          v22 = (v21 + 32);
          v23 = *(v21 + 16) + 1;
          while (--v23)
          {
            v24 = v22 + 5;
            v25 = *v22;
            v22 += 5;
            if (v25 == &type metadata for OrientationOverVelocity)
            {
              v23 = *(v24 - 2);
              break;
            }
          }

          v26 = *(v19 + 128) + v23 + 8 * (v17 << 16 >> 48);
          *v26 = v27;
          *(v26 + 4) = v20;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38070(unint64_t a1, void (*a2)(int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleContinuousSpawn)
        {
          v23 = *(&(*(v12 - 2))->Kind + 4 * v7 + *(v8 + 128));
          a2(&v23);
          if (v3)
          {
            return v4 & 1;
          }

          v15 = sub_1AF65ADEC(a1);
          if ((v16 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v17 = *(*(v2 + 144) + 8 * v15 + 32);
          v18 = *(v17 + 48);
          v19 = (v18 + 32);
          v20 = *(v18 + 16) + 1;
          while (--v20)
          {
            v21 = v19 + 5;
            v22 = *v19;
            v19 += 5;
            if (v22 == &type metadata for ParticleContinuousSpawn)
            {
              v20 = *(v21 - 2);
              break;
            }
          }

          *(*(v17 + 128) + v20 + ((v15 << 16 >> 46) & 0xFFFFFFFFFFFFFFFCLL)) = v23;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38248(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleOpacityOverLife)
        {
          v15 = &(*(v12 - 2))[2 * v7] + *(v8 + 128);
          v17 = *v15;
          v16 = *(v15 + 8);
          v18 = *(v15 + 16);
          LOBYTE(v15) = *(v15 + 24);
          v27 = v17;
          v28 = v16;
          v29 = v18;
          v30 = v15;

          a2(&v27);
          if (v3)
          {

            return v4 & 1;
          }

          v20 = sub_1AF65ADEC(a1);
          if ((v21 & 0x100000000) == 0)
          {
            v22 = v20 << 16 >> 48;
            v23 = v27;
            v24 = v28;
            v25 = v29;
            v26 = v30;

            sub_1AFC49C64(v22, v23, v24, v25, v26);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38468(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleOrientationInit)
        {
          v15 = *(v12 - 2) + 24 * v7 + *(v8 + 128);
          v25 = *v15;
          v26 = *(v15 + 16);
          a2(&v25);
          if (v3)
          {
            return v4 & 1;
          }

          v16 = sub_1AF65ADEC(a1);
          if ((v17 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v18 = *(*(v2 + 144) + 8 * v16 + 32);
          v19 = *(v18 + 48);
          v20 = (v19 + 32);
          v21 = *(v19 + 16) + 1;
          while (--v21)
          {
            v22 = v20 + 5;
            v23 = *v20;
            v20 += 5;
            if (v23 == &type metadata for ParticleOrientationInit)
            {
              v21 = *(v22 - 2);
              break;
            }
          }

          v24 = *(v18 + 128) + v21 + 24 * ((v16 >> 16) >> 16);
          *v24 = v25;
          *(v24 + 16) = v26;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38654(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSizeOverTexture)
        {
          v15 = *(v12 - 2) + 72 * v7 + *(v8 + 128);
          v16 = *(v15 + 48);
          v23 = *(v15 + 32);
          v24 = v16;
          v25 = *(v15 + 64);
          v17 = *(v15 + 16);
          v21 = *v15;
          v22 = v17;
          a2(&v21);
          if (v3)
          {
            return v4 & 1;
          }

          v18 = sub_1AF65ADEC(a1);
          if ((v19 & 0x100000000) == 0)
          {
            v20 = v18 << 16 >> 48;
            v26[2] = v23;
            v26[3] = v24;
            v27 = v25;
            v26[0] = v21;
            v26[1] = v22;

            sub_1AFC45920(v20, v26);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38840(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSurfaceRenderer)
        {
          v15 = *(v12 - 2) + 24 * v7 + *(v8 + 128);
          v25 = *v15;
          v26 = *(v15 + 16);
          a2(&v25);
          if (v3)
          {
            return v4 & 1;
          }

          v16 = sub_1AF65ADEC(a1);
          if ((v17 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v18 = *(*(v2 + 144) + 8 * v16 + 32);
          v19 = *(v18 + 48);
          v20 = (v19 + 32);
          v21 = *(v19 + 16) + 1;
          while (--v21)
          {
            v22 = v20 + 5;
            v23 = *v20;
            v20 += 5;
            if (v23 == &type metadata for ParticleSurfaceRenderer)
            {
              v21 = *(v22 - 2);
              break;
            }
          }

          v24 = *(v18 + 128) + v21 + 24 * ((v16 >> 16) >> 16);
          *v24 = v25;
          *(v24 + 16) = v26;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38A2C(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for TextureRequireSizeLimit)
        {
          v15 = *(v12 - 2) + 24 * v7 + *(v8 + 128);
          v16 = *(v15 + 16);
          v22 = *v15;
          v23 = v16;
          a2(&v22);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) == 0)
          {
            v19 = v17 << 16 >> 48;
            v20 = v22;
            v21 = v23;

            sub_1AFC45A10(v19, v20, *(&v20 + 1), v21);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38C10(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for NodeVisibilityController)
        {
          a2(*(v12 - 2) + 40 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC38CFC(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleAOSphereRenderer)
        {
          v23 = *(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          a2(&v23);
          if (v3)
          {
            return v4 & 1;
          }

          v15 = sub_1AF65ADEC(a1);
          if ((v16 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v17 = *(*(v2 + 144) + 8 * v15 + 32);
          v18 = *(v17 + 48);
          v19 = (v18 + 32);
          v20 = *(v18 + 16) + 1;
          while (--v20)
          {
            v21 = v19 + 5;
            v22 = *v19;
            v19 += 5;
            if (v22 == &type metadata for ParticleAOSphereRenderer)
            {
              v20 = *(v21 - 2);
              break;
            }
          }

          *(*(v17 + 128) + v20 + ((v15 << 16 >> 45) & 0xFFFFFFFFFFFFFFF8)) = v23;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC38ED4(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleColorOverTexture)
        {
          v15 = (&(*(v12 - 2))[3 * v7].Kind + *(v8 + 128));
          v16 = v15[1];
          v20 = *v15;
          v21[0] = v16;
          *(v21 + 12) = *(v15 + 28);
          a2(&v20);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) == 0)
          {
            v19 = v17 << 16 >> 48;
            v22 = v20;
            v23[0] = v21[0];
            *(v23 + 12) = *(v21 + 12);

            sub_1AFC45B28(v19, &v22);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC390B0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleCylinderCollider)
        {
          a2(*(v12 - 2) + 24 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3919C(unint64_t a1, void (*a2)(_BYTE *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleGaussianRenderer)
        {
          v15 = &(*(v12 - 2))[2 * v7] + *(v8 + 128);
          v16 = *(v15 + 8);
          v17 = *(v15 + 20);
          v18 = *(v15 + 24);
          *v22 = *v15;
          v22[8] = v16;
          *&v22[12] = *(v15 + 12);
          *&v22[20] = v17;
          v22[24] = v18;
          a2(v22);
          if (v3)
          {
            return v4 & 1;
          }

          v19 = sub_1AF65ADEC(a1);
          if ((v20 & 0x100000000) == 0)
          {
            v21 = v19 << 16 >> 48;
            v23[0] = *v22;
            *(v23 + 9) = *&v22[9];

            sub_1AFC45C00(v21, v23);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3938C(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleLocalBoxCollider)
        {
          v15 = &(*(v12 - 2))[3 * v7] + *(v8 + 128);
          v16 = *(v15 + 16);
          v17 = *(v15 + 40);
          v21 = *v15;
          *v22 = v16;
          *&v22[16] = *(v15 + 32);
          v22[24] = v17;
          a2(&v21);
          if (v3)
          {
            return v4 & 1;
          }

          v18 = sub_1AF65ADEC(a1);
          if ((v19 & 0x100000000) == 0)
          {
            v20 = v18 << 16 >> 48;
            v23 = v21;
            v24[0] = *v22;
            *(v24 + 9) = *&v22[9];

            sub_1AFC45CE8(v20, &v23);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC39570(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleOpacityEvolution)
        {
          v15 = &(*(v12 - 2))[3 * v7] + *(v8 + 128);
          v16 = *v15;
          v17 = *(v15 + 8);
          v19 = *(v15 + 16);
          v18 = *(v15 + 24);
          v20 = *(v15 + 32);
          LOBYTE(v15) = *(v15 + 40);
          *&v27 = v16;
          BYTE8(v27) = v17;
          *v28 = v19;
          *&v28[8] = v18;
          *&v28[16] = v20;
          v28[24] = v15;

          a2(&v27);
          if (v3)
          {

            return v4 & 1;
          }

          v22 = sub_1AF65ADEC(a1);
          if ((v23 & 0x100000000) == 0)
          {
            v29 = v27;
            *v30 = *v28;
            *&v30[9] = *&v28[9];
            v24 = v22 << 16 >> 48;
            v32 = *&v30[8];
            v33 = *v28;
            v31 = *&v28[9] >> 56;

            sub_1AFC49D2C(v24, &v29);

            v25 = MEMORY[0x1E69E6448];
            v26 = MEMORY[0x1E69E62F8];
            sub_1AFC4AF60(&v33, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8], sub_1AFC4B214);
            sub_1AFC4AF60(&v32, &qword_1ED723210, v25, v26, sub_1AFC4B214);
            sub_1AFC4AF60(&v31, &qword_1ED723260, &unk_1ED723278, &type metadata for CurveTangents, sub_1AFC4AE3C);
            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC39830(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSizeOverVelocity)
        {
          v15 = (&(*(v12 - 2))->Kind + 44 * v7 + *(v8 + 128));
          v16 = v15[1];
          v20 = *v15;
          v21[0] = v16;
          *(v21 + 12) = *(v15 + 28);
          a2(&v20);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) == 0)
          {
            v19 = v17 << 16 >> 48;
            v22 = v20;
            v23[0] = v21[0];
            *(v23 + 12) = *(v21 + 12);

            sub_1AFC45E20(v19, &v22);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC39A0C(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleTextureFrameInit)
        {
          v23 = *(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          a2(&v23);
          if (v3)
          {
            return v4 & 1;
          }

          v15 = sub_1AF65ADEC(a1);
          if ((v16 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v17 = *(*(v2 + 144) + 8 * v15 + 32);
          v18 = *(v17 + 48);
          v19 = (v18 + 32);
          v20 = *(v18 + 16) + 1;
          while (--v20)
          {
            v21 = v19 + 5;
            v22 = *v19;
            v19 += 5;
            if (v22 == &type metadata for ParticleTextureFrameInit)
            {
              v20 = *(v21 - 2);
              break;
            }
          }

          *(*(v17 + 128) + v20 + ((v15 << 16 >> 45) & 0xFFFFFFFFFFFFFFF8)) = v23;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC39BE4(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for RenderGraphTextureTarget)
        {
          a2(*(v12 - 2) + 2 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC39CCC(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParametricModelController)
        {
          a2(*(v12 - 2) + 40 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC39DB8(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleAngleVelocityInit)
        {
          v23 = *(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          a2(&v23);
          if (v3)
          {
            return v4 & 1;
          }

          v15 = sub_1AF65ADEC(a1);
          if ((v16 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v17 = *(*(v2 + 144) + 8 * v15 + 32);
          v18 = *(v17 + 48);
          v19 = (v18 + 32);
          v20 = *(v18 + 16) + 1;
          while (--v20)
          {
            v21 = v19 + 5;
            v22 = *v19;
            v19 += 5;
            if (v22 == &type metadata for ParticleAngleVelocityInit)
            {
              v20 = *(v21 - 2);
              break;
            }
          }

          *(*(v17 + 128) + v20 + ((v15 << 16 >> 45) & 0xFFFFFFFFFFFFFFF8)) = v23;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC39F90(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleColorOverPosition)
        {
          v15 = *(v12 - 2) + 40 * v7 + *(v8 + 128);
          v16 = *v15;
          v17 = *(v15 + 4);
          v18 = *(v15 + 8);
          v19 = *(v15 + 16);
          v20 = *(v15 + 24);
          LOBYTE(v15) = *(v15 + 32);
          LOWORD(v25) = v16;
          BYTE4(v25) = v17;
          DWORD2(v25) = v18;
          *&v26 = v19;
          *(&v26 + 1) = v20;
          v27 = v15;

          a2(&v25);
          if (v3)
          {

            return v4 & 1;
          }

          v22 = sub_1AF65ADEC(a1);
          if ((v23 & 0x100000000) == 0)
          {
            v24 = v22 << 16 >> 48;
            v28[0] = v25;
            v28[1] = v26;
            v29 = v27;

            sub_1AFC45F08(v24, v28);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3A1C0(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleColorOverVelocity)
        {
          v15 = *(v12 - 2) + 40 * v7 + *(v8 + 128);
          v16 = *(v15 + 12);
          v17 = *(v15 + 16);
          v18 = *(v15 + 24);
          v19 = *(v15 + 32);
          LOBYTE(v24) = *v15;
          *(&v24 + 4) = *(v15 + 4);
          HIDWORD(v24) = v16;
          *&v25 = v17;
          *(&v25 + 1) = v18;
          v26 = v19;

          a2(&v24);
          if (v3)
          {

            return v4 & 1;
          }

          v21 = sub_1AF65ADEC(a1);
          if ((v22 & 0x100000000) == 0)
          {
            v23 = v21 << 16 >> 48;
            v27[0] = v24;
            v27[1] = v25;
            v28 = v26;

            sub_1AFC46008(v23, v27);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3A3F0(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticlePrimitiveRenderer)
        {
          v15 = *(v12 - 2) + 40 * v7 + *(v8 + 128);
          v16 = *(v15 + 16);
          v20 = *v15;
          v21[0] = v16;
          *(v21 + 13) = *(v15 + 29);
          a2(&v20);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) == 0)
          {
            v19 = v17 << 16 >> 48;
            v22 = v20;
            v23[0] = v21[0];
            *(v23 + 13) = *(v21 + 13);

            sub_1AFC46108(v19, &v22);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3A5CC(unint64_t a1, void (*a2)(int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSpawnOverDistance)
        {
          v15 = *(v12 - 2) + 8 * v7 + *(v8 + 128);
          v16 = *v15;
          v17 = *(v15 + 4);
          LOBYTE(v15) = *(v15 + 5);
          v29 = v16;
          v30 = v17;
          v31 = v15;
          a2(&v29);
          if (v3)
          {
            return v4 & 1;
          }

          v18 = sub_1AF65ADEC(a1);
          if ((v19 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v20 = *(*(v2 + 144) + 8 * v18 + 32);
          v21 = v30;
          v22 = v31;
          v23 = *(v20 + 48);
          v24 = (v23 + 32);
          v25 = *(v23 + 16) + 1;
          while (--v25)
          {
            v26 = v24 + 5;
            v27 = *v24;
            v24 += 5;
            if (v27 == &type metadata for ParticleSpawnOverDistance)
            {
              v25 = *(v26 - 2);
              break;
            }
          }

          v28 = *(v20 + 128) + v25 + 8 * (v18 << 16 >> 48);
          *v28 = v29;
          *(v28 + 4) = v21;
          *(v28 + 5) = v22;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3A7C8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for WorldBackgroundController)
        {
          a2(&(*(v12 - 2))[2 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3A8B0(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticlePeriodicBurstSpawn)
        {
          v15 = *(v12 - 2) + 24 * v7 + *(v8 + 128);
          v26 = *v15;
          v27 = *(v15 + 16);
          a2(&v26);
          if (v3)
          {
            return v4 & 1;
          }

          v16 = sub_1AF65ADEC(a1);
          if ((v17 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v18 = *(*(v2 + 144) + 8 * v16 + 32);
          v19 = v27;
          v20 = *(v18 + 48);
          v21 = (v20 + 32);
          v22 = *(v20 + 16) + 1;
          while (--v22)
          {
            v23 = v21 + 5;
            v24 = *v21;
            v21 += 5;
            if (v24 == &type metadata for ParticlePeriodicBurstSpawn)
            {
              v22 = *(v23 - 2);
              break;
            }
          }

          v25 = *(v18 + 128) + v22 + 24 * ((v16 >> 16) >> 16);
          *v25 = v26;
          *(v25 + 16) = v19;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3AAA0(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleVolumetricRenderer)
        {
          v15 = *(v12 - 2) + 12 * v7 + *(v8 + 128);
          v16 = *(v15 + 8);
          v27 = *v15;
          v28 = v16;
          a2(&v27);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = v28;
          v21 = *(v19 + 48);
          v22 = (v21 + 32);
          v23 = *(v21 + 16) + 1;
          while (--v23)
          {
            v24 = v22 + 5;
            v25 = *v22;
            v22 += 5;
            if (v25 == &type metadata for ParticleVolumetricRenderer)
            {
              v23 = *(v24 - 2);
              break;
            }
          }

          v26 = *(v19 + 128) + v23 + 12 * ((v17 >> 16) >> 16);
          *v26 = v27;
          *(v26 + 8) = v20;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3AC90(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectBloomController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3AD7C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectGrainController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3AE68(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleAngularVelocityInit)
        {
          v15 = *(v12 - 2) + 24 * v7 + *(v8 + 128);
          v25 = *v15;
          v26 = *(v15 + 16);
          a2(&v25);
          if (v3)
          {
            return v4 & 1;
          }

          v16 = sub_1AF65ADEC(a1);
          if ((v17 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v18 = *(*(v2 + 144) + 8 * v16 + 32);
          v19 = *(v18 + 48);
          v20 = (v19 + 32);
          v21 = *(v19 + 16) + 1;
          while (--v21)
          {
            v22 = v20 + 5;
            v23 = *v20;
            v20 += 5;
            if (v23 == &type metadata for ParticleAngularVelocityInit)
            {
              v21 = *(v22 - 2);
              break;
            }
          }

          v24 = *(v18 + 128) + v21 + 24 * ((v16 >> 16) >> 16);
          *v24 = v25;
          *(v24 + 16) = v26;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3B054(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFluidSolver2DSolver)
        {
          a2(&(*(v12 - 2))[6 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3B140(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleOpacityOverVelocity)
        {
          v15 = *(v12 - 2) + 40 * v7 + *(v8 + 128);
          v16 = *(v15 + 8);
          v17 = *(v15 + 16);
          v18 = *(v15 + 24);
          *&v25 = *v15;
          *(&v25 + 1) = v16;
          *v26 = v17;
          v26[8] = v18;
          *&v26[12] = *(v15 + 28);

          a2(&v25);
          if (v3)
          {

            return v4 & 1;
          }

          v20 = sub_1AF65ADEC(a1);
          if ((v21 & 0x100000000) == 0)
          {
            v22 = v20 << 16 >> 48;
            v27[0] = v25;
            v27[1] = *v26;
            v28 = *&v26[16];
            v30 = *(&v25 + 1);
            v31 = v25;
            v29 = *v26;

            sub_1AFC49E98(v22, v27);

            v23 = MEMORY[0x1E69E6448];
            v24 = MEMORY[0x1E69E62F8];
            sub_1AFC4AF60(&v31, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8], sub_1AFC4B214);
            sub_1AFC4AF60(&v30, &qword_1ED723210, v23, v24, sub_1AFC4B214);
            sub_1AFC4AF60(&v29, &qword_1ED723260, &unk_1ED723278, &type metadata for CurveTangents, sub_1AFC4AE3C);
            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3B3FC(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticlePositionOverTexture)
        {
          v15 = (&(*(v12 - 2))[3 * v7].Kind + *(v8 + 128));
          v16 = v15[1];
          v27 = *v15;
          v28[0] = v16;
          *(v28 + 12) = *(v15 + 28);
          a2(&v27);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = *(v19 + 48);
          v21 = (v20 + 32);
          v22 = *(v20 + 16) + 1;
          while (--v22)
          {
            v23 = v21 + 5;
            v24 = *v21;
            v21 += 5;
            if (v24 == &type metadata for ParticlePositionOverTexture)
            {
              v22 = *(v23 - 2);
              break;
            }
          }

          v25 = (*(v19 + 128) + v22 + 48 * ((v17 >> 16) >> 16));
          v26 = v28[0];
          *v25 = v27;
          v25[1] = v26;
          *(v25 + 28) = *(v28 + 12);
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3B5E8(unint64_t a1, void (*a2)(_BYTE *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFlockingSpeedControl)
        {
          v15 = &(*(v12 - 2))[2 * v7] + *(v8 + 128);
          v16 = *(v15 + 24);
          *v26 = *v15;
          *&v26[16] = *(v15 + 16);
          v26[24] = v16;
          a2(v26);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = *(v19 + 48);
          v21 = (v20 + 32);
          v22 = *(v20 + 16) + 1;
          while (--v22)
          {
            v23 = v21 + 5;
            v24 = *v21;
            v21 += 5;
            if (v24 == &type metadata for ParticleFlockingSpeedControl)
            {
              v22 = *(v23 - 2);
              break;
            }
          }

          v25 = (*(v19 + 128) + v22 + 32 * (v17 << 16 >> 48));
          *v25 = *v26;
          *(v25 + 9) = *&v26[9];
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3B7D8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFluidSolver2DEmitter)
        {
          a2(*(v12 - 2) + 28 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3B8C4(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return v4 & 1;
  }

  v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v7 = *(v6 + 2);
  if (HIDWORD(a1) != 0xFFFFFFFF && v6[2] != HIDWORD(a1))
  {
LABEL_2:
    v4 = 0;
    return v4 & 1;
  }

  v8 = *(*(v2 + 144) + 8 * *v6 + 32);
  v9 = *(v8 + 48);
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v4 = 0;
      return v4 & 1;
    }

    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
  }

  while (v13 != &type metadata for ParticleTextureFrameEvolution);
  v15 = *(v12 - 2) + 40 * v7 + *(v8 + 128);
  v16 = *(v15 + 8);
  v17 = *(v15 + 16);
  v18 = *(v15 + 24);
  LODWORD(v23) = *v15;
  *(&v23 + 1) = v16;
  *&v24 = v17;
  *(&v24 + 1) = v18;
  v25 = *(v15 + 32);
  sub_1AF442550(v16);
  a2(&v23);
  if (v3)
  {
    sub_1AF593EF4(*(&v23 + 1));
    return v4 & 1;
  }

  v20 = sub_1AF65ADEC(a1);
  if ((v21 & 0x100000000) == 0)
  {
    v22 = v20 << 16 >> 48;
    v26[0] = v23;
    v26[1] = v24;
    v27 = v25;

    sub_1AFC4A004(v22, v26);

    sub_1AFC4B070(v26);
    v4 = 1;
    return v4 & 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC3BADC(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectExposureController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3BBC8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectLensBlurController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3BCB4(unint64_t a1, void (*a2)(_BYTE *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFlockingFlyTowardsArea)
        {
          v15 = *(v12 - 2) + 28 * v7 + *(v8 + 128);
          v16 = *(v15 + 24);
          *v26 = *v15;
          *&v26[16] = *(v15 + 16);
          v26[24] = v16;
          a2(v26);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = *(v19 + 48);
          v21 = (v20 + 32);
          v22 = *(v20 + 16) + 1;
          while (--v22)
          {
            v23 = v21 + 5;
            v24 = *v21;
            v21 += 5;
            if (v24 == &type metadata for ParticleFlockingFlyTowardsArea)
            {
              v22 = *(v23 - 2);
              break;
            }
          }

          v25 = (*(v19 + 128) + v22 + 28 * ((v17 >> 16) >> 16));
          *v25 = *v26;
          *(v25 + 9) = *&v26[9];
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3BEA8(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleTargetFromPositionInit)
        {
          v15 = *(v12 - 2) + 24 * v7 + *(v8 + 128);
          v25 = *v15;
          v26 = *(v15 + 16);
          a2(&v25);
          if (v3)
          {
            return v4 & 1;
          }

          v16 = sub_1AF65ADEC(a1);
          if ((v17 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v18 = *(*(v2 + 144) + 8 * v16 + 32);
          v19 = *(v18 + 48);
          v20 = (v19 + 32);
          v21 = *(v19 + 16) + 1;
          while (--v21)
          {
            v22 = v20 + 5;
            v23 = *v20;
            v20 += 5;
            if (v23 == &type metadata for ParticleTargetFromPositionInit)
            {
              v21 = *(v22 - 2);
              break;
            }
          }

          v24 = *(v18 + 128) + v21 + 24 * ((v16 >> 16) >> 16);
          *v24 = v25;
          *(v24 + 16) = v26;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3C094(unint64_t a1, void (*a2)(int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFlockingConstrainToArea)
        {
          v15 = &(*(v12 - 2))[4 * v7] + *(v8 + 128);
          v16 = *v15;
          v17 = *(v15 + 1);
          v18 = *(v15 + 2);
          LOBYTE(v15) = v15[48];
          v31[0] = v16;
          v32 = v17;
          v33 = v18;
          v34 = v15;
          a2(v31);
          if (v3)
          {
            return v4 & 1;
          }

          v19 = sub_1AF65ADEC(a1);
          if ((v20 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v21 = *(*(v2 + 144) + 8 * v19 + 32);
          v22 = v32;
          v23 = v33;
          v24 = v34;
          v25 = *(v21 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == &type metadata for ParticleFlockingConstrainToArea)
            {
              v27 = *(v28 - 2);
              break;
            }
          }

          v30 = *(v21 + 128) + v27 + (v19 << 16 >> 48 << 6);
          *v30 = v31[0];
          *(v30 + 16) = v22;
          *(v30 + 32) = v23;
          *(v30 + 48) = v24;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3C290(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectMotionBlurController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3C37C(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFlockingAlignOrientation)
        {
          v15 = &(*(v12 - 2))[3 * v7] + *(v8 + 128);
          v16 = *(v15 + 4);
          v17 = *(v15 + 8);
          v18 = *(v15 + 16);
          v19 = *(v15 + 32);
          v20 = *(v15 + 36);
          LOBYTE(v31) = *v15;
          DWORD1(v31) = v16;
          BYTE8(v31) = v17;
          v32 = v18;
          LOBYTE(v33) = v19;
          HIDWORD(v33) = v20;
          a2(&v31);
          if (v3)
          {
            return v4 & 1;
          }

          v21 = sub_1AF65ADEC(a1);
          if ((v22 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v23 = *(*(v2 + 144) + 8 * v21 + 32);
          v24 = *(v23 + 48);
          v25 = (v24 + 32);
          v26 = *(v24 + 16) + 1;
          while (--v26)
          {
            v27 = v25 + 5;
            v28 = *v25;
            v25 += 5;
            if (v28 == &type metadata for ParticleFlockingAlignOrientation)
            {
              v26 = *(v27 - 2);
              break;
            }
          }

          v29 = *(v23 + 128) + v26 + 48 * ((v21 >> 16) >> 16);
          v30 = v32;
          *v29 = v31;
          *(v29 + 16) = v30;
          *(v29 + 32) = v33;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3C588(unint64_t a1, void (*a2)(int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFlockingConstrainToPlane)
        {
          v15 = &(*(v12 - 2))[4 * v7] + *(v8 + 128);
          v16 = *v15;
          v17 = *(v15 + 1);
          v18 = *(v15 + 2);
          LOBYTE(v15) = v15[48];
          v31[0] = v16;
          v32 = v17;
          v33 = v18;
          v34 = v15;
          a2(v31);
          if (v3)
          {
            return v4 & 1;
          }

          v19 = sub_1AF65ADEC(a1);
          if ((v20 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v21 = *(*(v2 + 144) + 8 * v19 + 32);
          v22 = v32;
          v23 = v33;
          v24 = v34;
          v25 = *(v21 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == &type metadata for ParticleFlockingConstrainToPlane)
            {
              v27 = *(v28 - 2);
              break;
            }
          }

          v30 = *(v21 + 128) + v27 + (v19 << 16 >> 48 << 6);
          *v30 = v31[0];
          *(v30 + 16) = v22;
          *(v30 + 32) = v23;
          *(v30 + 48) = v24;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3C784(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectToneMappingController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3C870(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectDepthOfFieldController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3C95C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectDoughnutBokehController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3CA48(unint64_t a1, void (*a2)(_DWORD *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleFlockingAlignVelocityOnPlane)
        {
          v15 = &(*(v12 - 2))[2 * v7] + *(v8 + 128);
          v16 = *(v15 + 16);
          v27[0] = *v15;
          v28 = v16;
          a2(v27);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = v28;
          v21 = *(v19 + 48);
          v22 = (v21 + 32);
          v23 = *(v21 + 16) + 1;
          while (--v23)
          {
            v24 = v22 + 5;
            v25 = *v22;
            v22 += 5;
            if (v25 == &type metadata for ParticleFlockingAlignVelocityOnPlane)
            {
              v23 = *(v24 - 2);
              break;
            }
          }

          v26 = *(v19 + 128) + v23 + 32 * (v17 << 16 >> 48);
          *v26 = v27[0];
          *(v26 + 16) = v20;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3CC34(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for TextureRequireAnimationRepresentation)
        {
          v15 = &(*(v12 - 2))[2 * v7] + *(v8 + 128);
          v16 = *(v15 + 16);
          v17 = *(v15 + 24);
          v18 = *(v15 + 25);
          v26 = *v15;
          v27 = v16;
          v28 = v17;
          v29 = v18;
          a2(&v26);
          if (v3)
          {
            return v4 & 1;
          }

          v19 = sub_1AF65ADEC(a1);
          if ((v20 & 0x100000000) == 0)
          {
            v21 = v19 << 16 >> 48;
            v22 = v26;
            v23 = v27;
            v24 = v28;
            v25 = v29;

            sub_1AFC46228(v21, v22, *(&v22 + 1), v23, v24 | (v25 << 8));

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3CE38(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for CameraEffectChromaticTransformController)
        {
          a2(*(v12 - 2) + 56 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3CF24(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Mass)
        {
          a2(*(v12 - 2) + 4 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3D00C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Name)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3D0F4(unint64_t a1, void (*a2)(unsigned int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Seed)
        {
          v15 = *(v12 - 2) + 8 * v7 + *(v8 + 128);
          v16 = *v15;
          LOBYTE(v15) = *(v15 + 4);
          v22 = v16;
          v23 = v15;
          a2(&v22);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = v17 << 16 >> 48;
          v20 = v22;
          if (v23)
          {
            v21 = 0x100000000;
          }

          else
          {
            v21 = 0;
          }

          sub_1AFC46344(v19, v21 | v20);

          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3D2D8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Color)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3D3C0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Scale)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3D4A8(unint64_t a1, void (*a2)(int *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Attach)
        {
          v15 = *(v12 - 2) + 8 * v7 + *(v8 + 128);
          v16 = *v15;
          LOBYTE(v15) = *(v15 + 4);
          v27 = v16;
          v28 = v15;
          a2(&v27);
          if (v3)
          {
            return v4 & 1;
          }

          v17 = sub_1AF65ADEC(a1);
          if ((v18 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v19 = *(*(v2 + 144) + 8 * v17 + 32);
          v20 = v28;
          v21 = *(v19 + 48);
          v22 = (v21 + 32);
          v23 = *(v21 + 16) + 1;
          while (--v23)
          {
            v24 = v22 + 5;
            v25 = *v22;
            v22 += 5;
            if (v25 == &type metadata for Attach)
            {
              v23 = *(v24 - 2);
              break;
            }
          }

          v26 = *(v19 + 128) + v23 + 8 * (v17 << 16 >> 48);
          *v26 = v27;
          *(v26 + 4) = v20;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3D694(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for LookAt)
        {
          a2(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3D77C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Normal)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3D864(unint64_t a1, void (*a2)(unint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Parent)
        {
          v19 = *(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          a2(&v19);
          if (v3)
          {
            return v4 & 1;
          }

          v15 = sub_1AF65ADEC(a1);
          if ((v16 & 0x100000000) == 0)
          {
            v17 = v15 << 16 >> 48;
            v18 = v19;

            sub_1AFC46420(v17, v18);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3DA24(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Prefab)
        {
          a2(*(v12 - 2) + 24 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3DB10(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Scale1)
        {
          a2(*(v12 - 2) + 4 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3DBF8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Scale2)
        {
          a2(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3DCE0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Scale3)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3DDC8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Shadow)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3DEB0(unint64_t a1, void (*a2)(_OWORD *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Skybox)
        {
          v15 = (&(*(v12 - 2))[2 * v7].Kind + *(v8 + 128));
          v19[0] = *v15;
          *(v19 + 13) = *(v15 + 13);
          a2(v19);
          if (v3)
          {
            return v4 & 1;
          }

          v16 = sub_1AF65ADEC(a1);
          if ((v17 & 0x100000000) == 0)
          {
            v18 = v16 << 16 >> 48;
            v20[0] = v19[0];
            *(v20 + 13) = *(v19 + 13);

            sub_1AFC46514(v18, v20);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3E088(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Vortex)
        {
          v23 = *(&(*(v12 - 2))[v7] + *(v8 + 128));
          a2(&v23);
          if (v3)
          {
            return v4 & 1;
          }

          v15 = sub_1AF65ADEC(a1);
          if ((v16 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v17 = *(*(v2 + 144) + 8 * v15 + 32);
          v18 = *(v17 + 48);
          v19 = (v18 + 32);
          v20 = *(v18 + 16) + 1;
          while (--v20)
          {
            v21 = v19 + 5;
            v22 = *v19;
            v19 += 5;
            if (v22 == &type metadata for Vortex)
            {
              v20 = *(v21 - 2);
              break;
            }
          }

          *(*(v17 + 128) + v20 + ((v15 << 16 >> 44) & 0xFFFFFFFFFFFFFFF0)) = v23;
          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3E260(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Children)
        {
          a2(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3E348(unint64_t a1, void (*a2)(__int128 *))
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    return v4 & 1;
  }

  v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
  v7 = *(v6 + 2);
  if (HIDWORD(a1) != 0xFFFFFFFF && v6[2] != HIDWORD(a1))
  {
LABEL_2:
    v4 = 0;
    return v4 & 1;
  }

  v8 = *(*(v2 + 144) + 8 * *v6 + 32);
  v9 = *(v8 + 48);
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  do
  {
    if (!--v11)
    {
      v4 = 0;
      return v4 & 1;
    }

    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
  }

  while (v13 != &type metadata for Material);
  v15 = *(v12 - 2) + 104 * v7 + *(v8 + 128);
  v17 = *(v15 + 16);
  v16 = *(v15 + 32);
  v44[0] = *v15;
  v44[1] = v17;
  v44[2] = v16;
  v19 = *(v15 + 64);
  v18 = *(v15 + 80);
  v20 = *(v15 + 48);
  v45 = *(v15 + 96);
  v44[4] = v19;
  v44[5] = v18;
  v44[3] = v20;
  v21 = *(v15 + 16);
  v37 = *v15;
  v38 = v21;
  v22 = *(v15 + 32);
  v23 = *(v15 + 48);
  v24 = *(v15 + 64);
  v25 = *(v15 + 80);
  v43 = *(v15 + 96);
  v41 = v24;
  v42 = v25;
  v39 = v22;
  v40 = v23;
  sub_1AF4424F4(v44, &v30);
  a2(&v37);
  if (v3)
  {
    v34 = v41;
    v35 = v42;
    v36 = v43;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    sub_1AF584F68(&v30);
    return v4 & 1;
  }

  v27 = sub_1AF65ADEC(a1);
  if ((v28 & 0x100000000) == 0)
  {
    v29 = v27 << 16 >> 48;
    v46[4] = v41;
    v46[5] = v42;
    v47 = v43;
    v46[0] = v37;
    v46[1] = v38;
    v46[2] = v39;
    v46[3] = v40;

    sub_1AFC465E8(v29, v46);

    v34 = v41;
    v35 = v42;
    v36 = v43;
    v30 = v37;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    sub_1AF584F68(&v30);
    v4 = 1;
    return v4 & 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFC3E5E8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Position)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3E6D0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Velocity)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3E7B8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for KillShape)
        {
          a2(*(v12 - 2) + 2 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3E8A0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for LocalAABB)
        {
          a2(&(*(v12 - 2))[2 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3E988(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for MeshModel)
        {
          v15 = (&(*(v12 - 2))[v7].Kind + *(v8 + 128));
          v16 = v15[1];
          v23 = *v15;
          v24 = v16;

          a2(&v23);
          if (v3)
          {

            return v4 & 1;
          }

          v18 = sub_1AF65ADEC(a1);
          if ((v19 & 0x100000000) == 0)
          {
            v20 = v18 << 16 >> 48;
            v21 = v23;
            v22 = v24;

            sub_1AFC4672C(v20, v21, v22);

            v4 = 1;
            return v4 & 1;
          }

          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3EB88(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for SetActive)
        {
          a2(*(v12 - 2) + *(v8 + 128) + v7);
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3EC70(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for SpotLight)
        {
          a2(*(v12 - 2) + 24 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3ED5C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for UserData1)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3EE44(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for UserData2)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3EF2C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for UserData3)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F014(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for UserData4)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F0FC(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for WorldAABB)
        {
          a2(&(*(v12 - 2))[2 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F1E4(unint64_t a1, void (*a2)(uint64_t *))
{
  if (a1 != 0xFFFFFFFF)
  {
    v4 = 0;
    if ((a1 & 0x80000000) != 0 || a1 >= *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      return v4 & 1;
    }

    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) == 0xFFFFFFFF || v6[2] == HIDWORD(a1))
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for MeshImportOptions)
        {
          v15 = &(*(v12 - 2))[v7] + *(v8 + 128);
          v16 = *v15;
          v17 = *(v15 + 8);
          LOBYTE(v15) = *(v15 + 9);
          v24 = v16;
          v25 = v17;
          v26 = v15;
          a2(&v24);
          if (v3)
          {
            return v4 & 1;
          }

          v18 = sub_1AF65ADEC(a1);
          if ((v19 & 0x100000000) != 0)
          {
            result = sub_1AFDFE518();
            __break(1u);
            return result;
          }

          v20 = v18 << 16 >> 48;
          v21 = v24;
          v22 = v25;
          if (v26)
          {
            v23 = 256;
          }

          else
          {
            v23 = 0;
          }

          sub_1AFC46844(v20, v21, v23 | v22);

          v4 = 1;
          return v4 & 1;
        }
      }
    }
  }

  v4 = 0;
  return v4 & 1;
}

uint64_t sub_1AFC3F3D8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for TextureGPURuntime)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F4C0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Opacity)
        {
          a2(*(v12 - 2) + 4 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F5A8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for InverseWorldTransform)
        {
          a2(&(*(v12 - 2))[4 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F690(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for PropagateDirtiness)
        {
          a2(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F778(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Skeleton)
        {
          a2(*(v12 - 2) + 40 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F864(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for SkinnedMeshBinding)
        {
          a2(&(*(v12 - 2))[5 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3F950(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for TextureCPURuntime)
        {
          a2(&(*(v12 - 2))[4 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC3FAE0(unint64_t a1, void (*a2)(uint64_t), uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = a1;
  v10 = HIDWORD(a1);
  sub_1AFC28358(0, a4, a5, a6, a7);
  v12 = *(*(v11 - 8) + 64);
  if (v12)
  {
    v12 = *(*(v11 - 8) + 72);
  }

  if (!v10 && v9 == -1)
  {
    return 0;
  }

  v13 = 0;
  if ((v9 & 0x80000000) == 0 && v9 < *(v7 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v15 = (*(v7 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9);
    v16 = *(v15 + 2);
    if (v10 == 0xFFFFFFFF || v15[2] == v10)
    {
      v17 = *(*(v7 + 144) + 8 * *v15 + 32);
      v18 = *(v17 + 48);
      v19 = (v18 + 32);
      v20 = *(v18 + 16) + 1;
      while (--v20)
      {
        v21 = v19 + 5;
        v22 = *v19;
        v19 += 5;
        if (v22 == v11)
        {
          a2(*(v17 + 128) + *(v21 - 2) + v12 * v16);
          return 1;
        }
      }
    }

    return 0;
  }

  return v13;
}

uint64_t sub_1AFC3FE24(unint64_t a1, void (*a2)(uint64_t), uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v9 = a1;
    if (a1 < *(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v10 = HIDWORD(a1);
      v11 = (*(v6 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v9);
      v12 = *(v11 + 2);
      if (v10 == 0xFFFFFFFF || v11[2] == v10)
      {
        v13 = *(*(v6 + 144) + 8 * *v11 + 32);
        v14 = *(v13 + 48);
        sub_1AFC28358(0, a4, a5, a6, type metadata accessor for ScriptStateRestoration);
        v17 = (v14 + 32);
        v18 = *(v14 + 16) + 1;
        while (--v18)
        {
          v19 = v17 + 5;
          v20 = *v17;
          v17 += 5;
          if (v20 == v16)
          {
            a2(*(v13 + 128) + *(v19 - 2) + 16 * v12);
            return 1;
          }
        }
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1AFC3FF58(unint64_t a1, void (*a2)(char *))
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (a1 == -1)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

LABEL_8:
  v14 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v17 = *(v16 + 2);
    if (v6 == 0xFFFFFFFF || v16[2] == v6)
    {
      v18 = *(*(v2 + 144) + 8 * *v16 + 32);
      v19 = *(v18 + 48);
      v20 = (v19 + 32);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 5;
        v23 = *v20;
        v20 += 5;
        if (v23 == v9)
        {
          sub_1AFC4B2C4(*(v18 + 128) + *(v22 - 2) + v13 * v17, v12, type metadata accessor for TriggerScript);
          a2(v12);
          if (v3)
          {
            sub_1AFC4B264(v12, type metadata accessor for TriggerScript);
          }

          else
          {
            v24 = sub_1AF65C98C(a1) << 16 >> 48;
            v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

            sub_1AFC46A54(v24, v12, v25, type metadata accessor for TriggerScript, type metadata accessor for TriggerScript);

            sub_1AFC4B264(v12, type metadata accessor for TriggerScript);
            v14 = 1;
          }

          return v14 & 1;
        }
      }
    }

    goto LABEL_6;
  }

  return v14 & 1;
}

uint64_t sub_1AFC404C8(unint64_t a1, void (*a2)(char *))
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for ShaderScript(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (a1 == -1)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

LABEL_8:
  v14 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v17 = *(v16 + 2);
    if (v6 == 0xFFFFFFFF || v16[2] == v6)
    {
      v18 = *(*(v2 + 144) + 8 * *v16 + 32);
      v19 = *(v18 + 48);
      v20 = (v19 + 32);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 5;
        v23 = *v20;
        v20 += 5;
        if (v23 == v9)
        {
          sub_1AFC4B2C4(*(v18 + 128) + *(v22 - 2) + v13 * v17, v12, type metadata accessor for ShaderScript);
          a2(v12);
          if (v3)
          {
            sub_1AFC4B264(v12, type metadata accessor for ShaderScript);
          }

          else
          {
            v24 = sub_1AF65C98C(a1) << 16 >> 48;
            v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

            sub_1AFC46A54(v24, v12, v25, type metadata accessor for ShaderScript, type metadata accessor for ShaderScript);

            sub_1AFC4B264(v12, type metadata accessor for ShaderScript);
            v14 = 1;
          }

          return v14 & 1;
        }
      }
    }

    goto LABEL_6;
  }

  return v14 & 1;
}

uint64_t sub_1AFC408FC(unint64_t a1, void (*a2)(char *))
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for SimpleScript(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (a1 == -1)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

LABEL_8:
  v14 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v17 = *(v16 + 2);
    if (v6 == 0xFFFFFFFF || v16[2] == v6)
    {
      v18 = *(*(v2 + 144) + 8 * *v16 + 32);
      v19 = *(v18 + 48);
      v20 = (v19 + 32);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 5;
        v23 = *v20;
        v20 += 5;
        if (v23 == v9)
        {
          sub_1AFC4B2C4(*(v18 + 128) + *(v22 - 2) + v13 * v17, v12, type metadata accessor for SimpleScript);
          a2(v12);
          if (v3)
          {
            sub_1AFC4B264(v12, type metadata accessor for SimpleScript);
          }

          else
          {
            v24 = sub_1AF65C98C(a1) << 16 >> 48;
            v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

            sub_1AFC46A54(v24, v12, v25, type metadata accessor for SimpleScript, type metadata accessor for SimpleScript);

            sub_1AFC4B264(v12, type metadata accessor for SimpleScript);
            v14 = 1;
          }

          return v14 & 1;
        }
      }
    }

    goto LABEL_6;
  }

  return v14 & 1;
}

uint64_t sub_1AFC40C48(unint64_t a1, void (*a2)(char *))
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = HIDWORD(a1);
  v7 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11)
  {
    v13 = *(v10 + 72);
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = 0;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (a1 == -1)
  {
LABEL_6:
    v14 = 0;
    return v14 & 1;
  }

LABEL_8:
  v14 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v16 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v17 = *(v16 + 2);
    if (v6 == 0xFFFFFFFF || v16[2] == v6)
    {
      v18 = *(*(v2 + 144) + 8 * *v16 + 32);
      v19 = *(v18 + 48);
      v20 = (v19 + 32);
      v21 = *(v19 + 16) + 1;
      while (--v21)
      {
        v22 = v20 + 5;
        v23 = *v20;
        v20 += 5;
        if (v23 == v9)
        {
          sub_1AFC4B2C4(*(v18 + 128) + *(v22 - 2) + v13 * v17, v12, type metadata accessor for GraphScript);
          a2(v12);
          if (v3)
          {
            sub_1AFC4B264(v12, type metadata accessor for GraphScript);
          }

          else
          {
            v24 = sub_1AF65C98C(a1) << 16 >> 48;
            v25 = **(v2 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

            sub_1AFC46A54(v24, v12, v25, type metadata accessor for GraphScript, type metadata accessor for GraphScript);

            sub_1AFC4B264(v12, type metadata accessor for GraphScript);
            v14 = 1;
          }

          return v14 & 1;
        }
      }
    }

    goto LABEL_6;
  }

  return v14 & 1;
}

uint64_t sub_1AFC40FE8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ParticleSpawnState)
        {
          a2(&(*(v12 - 2))[8 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC410D0(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for VFXTag)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC411B8(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for ScriptsHolder)
        {
          a2(*(v12 - 2) + 24 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC412A4(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for MetalScriptReflection)
        {
          a2(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC4138C(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for MaterialRuntimeTable)
        {
          a2(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC41474(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for MaterialRuntime)
        {
          a2(&(*(v12 - 2))[15 * v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC41560(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for GraphDebuggingComponent)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC41648(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for VFXParticleCollisionDataComponent)
        {
          a2(&(*(v12 - 2))[v7] + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC41730(unint64_t a1, void (*a2)(char *))
{
  if (a1 == 0xFFFFFFFF)
  {
    return 0;
  }

  result = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v5 = HIDWORD(a1);
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (v5 == 0xFFFFFFFF || v6[2] == v5)
    {
      v8 = *(*(v2 + 144) + 8 * *v6 + 32);
      v9 = *(v8 + 48);
      v10 = (v9 + 32);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = v10 + 5;
        v13 = *v10;
        v10 += 5;
        if (v13 == &type metadata for Bindings)
        {
          a2(*(v12 - 2) + 24 * v7 + *(v8 + 128));
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1AFC4181C(unint64_t a1, void (*a2)(id *))
{
  if (a1 == 0xFFFFFFFF)
  {
    goto LABEL_2;
  }

  v4 = 0;
  if ((a1 & 0x80000000) == 0 && a1 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v6 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a1);
    v7 = *(v6 + 2);
    if (HIDWORD(a1) != 0xFFFFFFFF && v6[2] != HIDWORD(a1))
    {
LABEL_2:
      v4 = 0;
      return v4 & 1;
    }

    v8 = *(*(v2 + 144) + 8 * *v6 + 32);
    v9 = *(v8 + 48);
    v10 = (v9 + 32);
    v11 = *(v9 + 16) + 1;
    do
    {
      if (!--v11)
      {
        v4 = 0;
        return v4 & 1;
      }

      v12 = v10 + 5;
      v13 = *v10;
      v10 += 5;
    }

    while (v13 != &type metadata for TextureCGImage);
    v19 = *(&(*(v12 - 2))->Kind + 8 * v7 + *(v8 + 128));
    v16 = v19;
    a2(&v19);
    if (v3)
    {
    }

    else
    {
      v17 = sub_1AF65C98C(a1) << 16 >> 48;
      v18 = v19;

      sub_1AFC46B88(v17, v18);

      v4 = 1;
    }
  }

  return v4 & 1;
}

uint64_t sub_1AFC419BC(unint64_t a1, void (*a2)(uint64_t))
{
  v4 = a1;
  v5 = HIDWORD(a1);
  v6 = type metadata accessor for MovieRuntime(0);
  v7 = *(*(v6 - 8) + 64);
  if (v7)
  {
    v7 = *(*(v6 - 8) + 72);
  }

  if (!v5 && v4 == -1)
  {
    return 0;
  }

  v8 = 0;
  if ((v4 & 0x80000000) == 0 && v4 < *(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
  {
    v10 = (*(v2 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v4);
    v11 = *(v10 + 2);
    if (v5 == 0xFFFFFFFF || v10[2] == v5)
    {
      v12 = *(*(v2 + 144) + 8 * *v10 + 32);
      v13 = *(v12 + 48);
      v14 = (v13 + 32);
      v15 = *(v13 + 16) + 1;
      while (--v15)
      {
        v16 = v14 + 5;
        v17 = *v14;
        v14 += 5;
        if (v17 == v6)
        {
          a2(*(v12 + 128) + *(v16 - 2) + v7 * v11);
          return 1;
        }
      }
    }

    return 0;
  }

  return v8;
}

uint64_t sub_1AFC41B20(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for Scheduling)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7;
  if (*(v10 + 8 * result) != a2)
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (result >> 6)) |= 1 << result;
      *(v12 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *(v10 + 8 * v4) = a2;
  return result;
}

__n128 sub_1AFC41C10(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for EmitterShape)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 224 * a1;
  v10 = *(v9 + 148);
  v12 = *(a2 + 104);
  v11 = *(a2 + 108);
  v14 = *(a2 + 144);
  v13 = *(a2 + 148);
  if (*(v9 + 104) == 0.0 && *(v9 + 108) == 0.0)
  {
    if ((v12 != 0.0 || v11 != 0.0) && (v14 != 0.0 || v13 != 0.0))
    {
      goto LABEL_28;
    }

LABEL_26:
    if ((*(a2 + 96) == 255) == (*(v9 + 96) == 255) && *(v9 + 208) == (*(a2 + 208) & 1))
    {
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (*(v9 + 144) == 0.0)
  {
    if (v12 == 0.0 && v11 == 0.0)
    {
      if (v10 != 0.0)
      {
        goto LABEL_28;
      }
    }

    else if (v14 == 0.0)
    {
      if ((v10 != 0.0) == (v13 == 0.0))
      {
        goto LABEL_28;
      }
    }

    else if (v10 == 0.0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((v12 != 0.0 || v11 != 0.0) && (v14 != 0.0 || v13 != 0.0))
  {
    goto LABEL_26;
  }

LABEL_28:
  v15 = v2[24];
  if (v15)
  {
    v16 = v2[26];
    *(v15 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v16 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  sub_1AF705804(a1);
LABEL_31:
  v17 = *(a2 + 176);
  *(v9 + 160) = *(a2 + 160);
  *(v9 + 176) = v17;
  *(v9 + 192) = *(a2 + 192);
  *(v9 + 208) = *(a2 + 208);
  v18 = *(a2 + 112);
  *(v9 + 96) = *(a2 + 96);
  *(v9 + 112) = v18;
  v19 = *(a2 + 144);
  *(v9 + 128) = *(a2 + 128);
  *(v9 + 144) = v19;
  v20 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = v20;
  v21 = *(a2 + 80);
  *(v9 + 64) = *(a2 + 64);
  *(v9 + 80) = v21;
  result = *a2;
  v23 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v23;
  return result;
}

uint64_t sub_1AFC41E18(uint64_t result, uint64_t a2, int a3, float a4, __n128 a5)
{
  v6 = a3;
  v9 = v5[6];
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
    if (v13 == &type metadata for NeighborGrid)
    {
      v11 = *(v12 - 2);
      break;
    }
  }

  v14 = v5[16] + v11 + 48 * result;
  if (*v14 != a4 || *(v14 + 8) != a2)
  {
    goto LABEL_9;
  }

  v18 = 0;
  v19 = *(v14 + 16);
  v20 = *(v14 + 32);
  v21 = 1;
  while (!v21)
  {
    if (v18 == 2)
    {
      goto LABEL_9;
    }

    v21 = 0;
LABEL_15:
    ++v18;
  }

  v25 = v19;
  v22 = *(&v25 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v26 = a5;
  v23 = *(&v26 & 0xFFFFFFFFFFFFFFF3 | (4 * (v18 & 3)));
  v21 = v22 == v23;
  if (v18 != 2)
  {
    goto LABEL_15;
  }

  if (v22 != v23 || ((v20 ^ a3) & 1) != 0)
  {
LABEL_9:
    v24 = a5;
    v16 = v5[24];
    if (v16)
    {
      v17 = v5[26];
      *(v16 + 8 * (result >> 6)) |= 1 << result;
      *(v17 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
    a5 = v24;
  }

  *v14 = a4;
  *(v14 + 8) = a2;
  *(v14 + 16) = a5;
  *(v14 + 32) = v6 & 1;
  return result;
}

uint64_t sub_1AFC41F78(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for VideoCapture)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 40 * a1;
  v10 = *v9 == (*a2 & 1) && *(v9 + 1) == *(a2 + 1);
  if (v10 && *(v9 + 2) == (*(a2 + 2) & 1))
  {
    v17 = *(v9 + 24);
    v16 = *(v9 + 32);
    v18 = *(v9 + 8) == *(a2 + 8) && *(v9 + 16) == *(a2 + 16);
    if (v18 || (v19 = a1, v20 = sub_1AFDFEE28(), a1 = v19, (v20 & 1) != 0))
    {
      v21 = *(a2 + 32);
      if (v16)
      {
        if (v21)
        {
          if (v17 == *(a2 + 24) && v16 == v21)
          {
            goto LABEL_14;
          }

          v23 = a1;
          v24 = sub_1AFDFEE28();
          a1 = v23;
          if (v24)
          {
            goto LABEL_14;
          }
        }
      }

      else if (!v21)
      {
        goto LABEL_14;
      }
    }
  }

  v11 = v2[24];
  if (v11)
  {
    v12 = v2[26];
    *(v11 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v12 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  sub_1AF705804(a1);
LABEL_14:
  v13 = *(a2 + 32);
  v14 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v14;
  *(v9 + 32) = v13;
  sub_1AFC4AEA8(a2, v25);
}

uint64_t sub_1AFC42160(uint64_t a1, __int128 *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for MeshFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 56 * a1;
  sub_1AF705804(a1);
  v13 = *a2;
  v18 = a2[1];
  v14 = v18;
  v19 = v13;
  v22 = a2[2];
  v15 = v22;
  v21 = *(a2 + 6);
  v16 = *(v12 + 32);
  *(v12 + 48) = v21;
  *(v12 + 16) = v14;
  *(v12 + 32) = v15;
  *v12 = v13;
  sub_1AF450FE0(&v19, v20);
  sub_1AF450FE0(&v18, v20);
  sub_1AFC4B1A0(&v22, v20, &qword_1EB632E50, sub_1AFC4ADDC, MEMORY[0x1E69E6720], sub_1AFC4AD78);
  sub_1AFC4B1A0(&v21, v20, &qword_1EB63A438, &unk_1ED726C50, MEMORY[0x1E69E6530], sub_1AFC4AE3C);
}

uint64_t sub_1AFC42330(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  v8 = v3[6];
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  while (--v10)
  {
    v11 = v9 + 5;
    v12 = *v9;
    v9 += 5;
    if (v12 == &type metadata for ModelRenderer)
    {
      v10 = *(v11 - 2);
      break;
    }
  }

  v13 = v3[16] + v10 + 16 * result;
  if (*v13 != a2 || *(v13 + 8) != a3)
  {
    v15 = v3[24];
    if (v15)
    {
      v16 = v3[26];
      *(v15 + 8 * (result >> 6)) |= 1 << result;
      *(v16 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v13 = v5;
  *(v13 + 4) = v6;
  *(v13 + 8) = v4;
  *(v13 + 12) = v7;
  return result;
}

uint64_t sub_1AFC42440(uint64_t result, unsigned __int8 a2)
{
  v4 = result;
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for SpaceOverride)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7;
  if (*(v10 + result) != a2)
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (result >> 6)) |= 1 << result;
      *(v12 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *(v10 + v4) = a2;
  return result;
}

void sub_1AFC4252C(uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for AudioFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 48 * a1;
  sub_1AF705804(a1);
  v13 = *a2;
  v16 = a2[1];
  v17 = v13;
  v19 = a2[2];
  v14 = v19;
  v15 = *(v12 + 32);
  *(v12 + 16) = v16;
  *(v12 + 32) = v14;
  *v12 = v13;
  sub_1AF450FE0(&v17, v18);
  sub_1AF450FE0(&v16, v18);
  sub_1AFC4B1A0(&v19, v18, &qword_1EB632E50, sub_1AFC4ADDC, MEMORY[0x1E69E6720], sub_1AFC4AD78);
}

uint64_t sub_1AFC426A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = v5[6];
  v11 = (v10 + 32);
  v12 = *(v10 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = *v11;
    v11 += 5;
    if (v14 == &type metadata for CurveComponent)
    {
      v12 = *(v13 - 2);
      break;
    }
  }

  v15 = v5[16];
  v16 = v5[24];
  if (v16)
  {
    v17 = v5[26];
    *(v16 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v17 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v18 = v15 + v12 + 32 * a1;
  sub_1AF705804(a1);
  *v18 = a2;
  *(v18 + 8) = a3;
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
}

uint64_t sub_1AFC427E8(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for MovieFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 56 * a1;
  sub_1AF705804(a1);
  v13 = *v12;
  v14 = *(v12 + 16);
  v15 = *(v12 + 32);
  *&v22[15] = *(v12 + 47);
  v21[1] = v14;
  *v22 = v15;
  v21[0] = v13;
  v16 = *a2;
  v17 = *(a2 + 16);
  v18 = *(a2 + 32);
  *(v12 + 47) = *(a2 + 47);
  *(v12 + 16) = v17;
  *(v12 + 32) = v18;
  *v12 = v16;
  sub_1AF58680C(a2, v20);
  return sub_1AF586868(v21);
}

uint64_t sub_1AFC42908(uint64_t a1, __int128 *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for SceneFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = (v9 + v6 + (a1 << 6));
  sub_1AF705804(a1);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[3];
  v21[2] = v12[2];
  v21[3] = v15;
  v21[0] = v13;
  v21[1] = v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = a2[3];
  v12[2] = a2[2];
  v12[3] = v18;
  *v12 = v16;
  v12[1] = v17;
  sub_1AF4402F0(a2, &v20);
  return sub_1AF5A3564(v21);
}

uint64_t sub_1AFC42A14(uint64_t result, unsigned int a2)
{
  v3 = v2[6];
  v4 = (v3 + 32);
  v5 = *(v3 + 16) + 1;
  while (--v5)
  {
    v6 = v4 + 5;
    v7 = *v4;
    v4 += 5;
    if (v7 == &type metadata for AudioController)
    {
      v5 = *(v6 - 2);
      break;
    }
  }

  v8 = v2[16] + v5 + 3 * result;
  v9 = a2 & 1;
  v10 = (a2 >> 8) & 1;
  v11 = HIWORD(a2) & 1;
  if (*v8 != (a2 & 0x101) || *(v8 + 2) != v11)
  {
    v13 = v2[24];
    if (v13)
    {
      v14 = v2[26];
      *(v13 + 8 * (result >> 6)) |= 1 << result;
      *(v14 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  return result;
}

void sub_1AFC42B30(uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for HeaderFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 48 * a1;
  sub_1AF705804(a1);
  v13 = *a2;
  v16 = a2[1];
  v17 = v13;
  v19 = a2[2];
  v14 = v19;
  v15 = *(v12 + 32);
  *(v12 + 16) = v16;
  *(v12 + 32) = v14;
  *v12 = v13;
  sub_1AF450FE0(&v17, v18);
  sub_1AF450FE0(&v16, v18);
  sub_1AFC4B1A0(&v19, v18, &qword_1EB632E50, sub_1AFC4ADDC, MEMORY[0x1E69E6720], sub_1AFC4AD78);
}

uint64_t sub_1AFC42CA8(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleSpawnID)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7;
  if (*(v10 + 8 * result) != a2)
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (result >> 6)) |= 1 << result;
      *(v12 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *(v10 + 8 * v4) = a2;
  return result;
}

void sub_1AFC42D98(uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ShaderFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 48 * a1;
  sub_1AF705804(a1);
  v13 = *a2;
  v16 = a2[1];
  v17 = v13;
  v19 = a2[2];
  v14 = v19;
  v15 = *(v12 + 32);
  *(v12 + 16) = v16;
  *(v12 + 32) = v14;
  *v12 = v13;
  sub_1AF450FE0(&v17, v18);
  sub_1AF450FE0(&v16, v18);
  sub_1AFC4B1A0(&v19, v18, &qword_1EB632E50, sub_1AFC4ADDC, MEMORY[0x1E69E6720], sub_1AFC4AD78);
}

uint64_t sub_1AFC42F10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = v3[6];
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for TextureFileData)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = v3[16];
  v12 = v3[24];
  if (v12)
  {
    v13 = v3[26];
    *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v14 = (v11 + v8 + 16 * a1);
  sub_1AF705804(a1);
  v15 = *v14;
  v16 = v14[1];
  *v14 = a2;
  v14[1] = a3;
  sub_1AF587E54(a2, a3);

  return sub_1AF587E7C(v15, v16);
}

__n128 sub_1AFC43020(uint64_t a1, unsigned __int8 *a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleSizeInit)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (v2[16] + v6 + 28 * a1);
  if (*v9 != *a2)
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  *v9 = *a2;
  result = *(a2 + 12);
  *(v9 + 12) = result;
  return result;
}

__n128 sub_1AFC430E8(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleSubSpawn)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = (v2[16] + v6 + 24 * a1);
  *v15 = *a2;
  *&v15[13] = *(a2 + 13);
  if (*v9 != *a2 || v9[1] != *&v15[8] || *(v9 + 13) != *&v15[13])
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  result = *a2;
  *v9 = *a2;
  *(v9 + 13) = *(a2 + 13);
  return result;
}

void sub_1AFC43204(uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 48 * a1;
  sub_1AF705804(a1);
  v13 = *a2;
  v16 = a2[1];
  v17 = v13;
  v19 = a2[2];
  v14 = v19;
  v15 = *(v12 + 32);
  *(v12 + 16) = v16;
  *(v12 + 32) = v14;
  *v12 = v13;
  sub_1AF450FE0(&v17, v18);
  sub_1AF450FE0(&v16, v18);
  sub_1AFC4B1A0(&v19, v18, &qword_1EB632E50, sub_1AFC4ADDC, MEMORY[0x1E69E6720], sub_1AFC4AD78);
}

__n128 sub_1AFC4337C(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for PointCacheEmitter)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 36 * a1;
  v10 = *(a2 + 16);
  if (*v9 != *a2 || *(v9 + 8) != *(a2 + 8) || *(v9 + 16) != v10 || *(v9 + 24) != *(&v10 + 1) || *(v9 + 32) != *(a2 + 32))
  {
    v15 = v2[24];
    if (v15)
    {
      v16 = v2[26];
      *(v15 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v16 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  result = *a2;
  v18 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v18;
  *(v9 + 32) = *(a2 + 32);
  return result;
}

uint64_t sub_1AFC434A4(uint64_t result, unsigned int a2)
{
  v3 = a2;
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureLoadPolicy)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = HIWORD(a2);
  v10 = a2 >> 8;
  v11 = v2[16] + v6 + 4 * result;
  LOWORD(v15) = a2;
  BYTE2(v15) = BYTE2(a2);
  v12 = HIBYTE(a2) & 1;
  HIBYTE(v15) = HIBYTE(a2) & 1;
  if (*v11 != v15)
  {
    v13 = v2[24];
    if (v13)
    {
      v14 = v2[26];
      *(v13 + 8 * (result >> 6)) |= 1 << result;
      *(v14 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v11 = v3;
  *(v11 + 1) = v10;
  *(v11 + 2) = v9;
  *(v11 + 3) = v12;
  return result;
}

uint64_t sub_1AFC435C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[6];
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for TextureNamedAsset)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = v3[16];
  v12 = v3[24];
  if (v12)
  {
    v13 = v3[26];
    *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v14 = (v11 + v8 + 16 * a1);
  sub_1AF705804(a1);
  *v14 = a2;
  v14[1] = a3;
}

uint64_t sub_1AFC436C0(uint64_t a1, float32x4_t *a2, uint64_t a3, unsigned __int8 a4)
{
  v9 = v4[6];
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
    if (v13 == &type metadata for ColorRampComponent)
    {
      v11 = *(v12 - 2);
      break;
    }
  }

  v14 = v4[16] + v11 + 24 * a1;
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  if ((sub_1AFB7B0BC(*v14, a2) & 1) == 0 || !sub_1AFB7B128(v15, a3) || v16 != a4)
  {
    v17 = v4[24];
    if (v17)
    {
      v18 = v4[26];
      *(v17 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v18 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
}

uint64_t sub_1AFC437F8(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for EmitterDescription)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 104 * a1;
  v11 = *(v10 + 80);
  v30[4] = *(v10 + 64);
  v30[5] = v11;
  v31 = *(v10 + 96);
  v12 = *(v10 + 16);
  v30[0] = *v10;
  v30[1] = v12;
  v13 = *(v10 + 48);
  v30[2] = *(v10 + 32);
  v30[3] = v13;
  if (!sub_1AFB8C6CC(v30, a2))
  {
    v14 = v2[24];
    if (v14)
    {
      v15 = v2[26];
      *(v14 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v15 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v16 = *v10;
  v17 = *(v10 + 16);
  v28[2] = *(v10 + 32);
  v28[0] = v16;
  v28[1] = v17;
  v18 = *(v10 + 48);
  v19 = *(v10 + 64);
  v20 = *(v10 + 80);
  v29 = *(v10 + 96);
  v28[4] = v19;
  v28[5] = v20;
  v28[3] = v18;
  v22 = *(a2 + 64);
  v21 = *(a2 + 80);
  v23 = *(a2 + 48);
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 64) = v22;
  *(v10 + 80) = v21;
  *(v10 + 48) = v23;
  v24 = *a2;
  v25 = *(a2 + 32);
  *(v10 + 16) = *(a2 + 16);
  *(v10 + 32) = v25;
  *v10 = v24;
  sub_1AF445DA0(a2, v27);
  return sub_1AF57A684(v28);
}

uint64_t sub_1AFC43954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v5[6];
  v11 = (v10 + 32);
  v12 = *(v10 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = *v11;
    v11 += 5;
    if (v14 == &type metadata for MeshReferenceAsset)
    {
      v12 = *(v13 - 2);
      break;
    }
  }

  v15 = v5[16];
  v16 = v5[24];
  if (v16)
  {
    v17 = v5[26];
    *(v16 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v17 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v18 = (v15 + v12 + 32 * a1);
  sub_1AF705804(a1);
  *v18 = a2;
  v18[1] = a3;
  v18[2] = a4;
  v18[3] = a5;
}

uint64_t sub_1AFC43AB0(uint64_t result, float a2)
{
  v4 = result;
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleSpawnDelay)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7;
  if (*(v10 + 4 * result) != LODWORD(a2))
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (result >> 6)) |= 1 << result;
      *(v12 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *(v10 + 4 * v4) = a2;
  return result;
}

uint64_t sub_1AFC43BA8(uint64_t a1, __int128 *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for PrimitiveGenerator)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = (v9 + v6 + 176 * a1);
  sub_1AF705804(a1);
  v13 = *v12;
  v14 = v12[2];
  v31[1] = v12[1];
  v31[2] = v14;
  v31[0] = v13;
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[6];
  v31[5] = v12[5];
  v31[6] = v17;
  v31[3] = v15;
  v31[4] = v16;
  v18 = v12[7];
  v19 = v12[8];
  v20 = v12[9];
  *(v32 + 9) = *(v12 + 153);
  v31[8] = v19;
  v32[0] = v20;
  v31[7] = v18;
  v21 = *a2;
  v22 = a2[2];
  v12[1] = a2[1];
  v12[2] = v22;
  *v12 = v21;
  v23 = a2[3];
  v24 = a2[4];
  v25 = a2[6];
  v12[5] = a2[5];
  v12[6] = v25;
  v12[3] = v23;
  v12[4] = v24;
  v26 = a2[7];
  v27 = a2[8];
  v28 = a2[9];
  *(v12 + 153) = *(a2 + 153);
  v12[8] = v27;
  v12[9] = v28;
  v12[7] = v26;
  sub_1AF445D44(a2, &v30);
  return sub_1AF5A53B0(v31);
}

uint64_t sub_1AFC43D0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = v3[6];
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for TexturePlaceholder)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = v3[16];
  v12 = v3[24];
  if (v12)
  {
    v13 = v3[26];
    *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v14 = v11 + v8 + 16 * a1;
  v15 = HIDWORD(a2);
  sub_1AF705804(a1);
  *v14 = v5;
  *(v14 + 4) = v15;
  *(v14 + 8) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_1AFC43E1C(uint64_t a1, __int128 *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for TextureShaderAsset)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = (v2[16] + v7 + 112 * a1);
  v11 = a2[5];
  v29[4] = a2[4];
  v29[5] = v11;
  v29[6] = a2[6];
  v12 = a2[1];
  v29[0] = *a2;
  v29[1] = v12;
  v13 = a2[3];
  v29[2] = a2[2];
  v29[3] = v13;
  if (sub_1AF8FD490(v10, v29))
  {
    v14 = v2[24];
    if (v14)
    {
      v15 = v2[26];
      *(v14 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v15 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v16 = *v10;
  v17 = v10[2];
  v28[1] = v10[1];
  v28[2] = v17;
  v28[0] = v16;
  v18 = v10[3];
  v19 = v10[4];
  v20 = v10[6];
  v28[5] = v10[5];
  v28[6] = v20;
  v28[3] = v18;
  v28[4] = v19;
  v21 = a2[6];
  v23 = a2[3];
  v22 = a2[4];
  v10[5] = a2[5];
  v10[6] = v21;
  v10[3] = v23;
  v10[4] = v22;
  v24 = *a2;
  v25 = a2[2];
  v10[1] = a2[1];
  v10[2] = v25;
  *v10 = v24;
  sub_1AF5A57D8(a2, &v27);
  return sub_1AF5A5834(v28);
}

__n128 sub_1AFC43FBC(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleBoxRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 36 * a1;
  v11 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v11;
  v17 = *(a2 + 32);
  if (sub_1AFA03714(v10, v16))
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  result = *a2;
  v15 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v15;
  *(v10 + 32) = *(a2 + 32);
  return result;
}

void sub_1AFC440DC(uint64_t a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for PointCacheFileAsset)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 48 * a1;
  sub_1AF705804(a1);
  v13 = *a2;
  v16 = a2[1];
  v17 = v13;
  v19 = a2[2];
  v14 = v19;
  v15 = *(v12 + 32);
  *(v12 + 16) = v16;
  *(v12 + 32) = v14;
  *v12 = v13;
  sub_1AF450FE0(&v17, v18);
  sub_1AF450FE0(&v16, v18);
  sub_1AFC4B1A0(&v19, v18, &qword_1EB632E50, sub_1AFC4ADDC, MEMORY[0x1E69E6720], sub_1AFC4AD78);
}

uint64_t sub_1AFC44254(uint64_t result, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v7 = a4;
  v9 = a2;
  v10 = HIDWORD(a2);
  v11 = v5[6];
  v12 = (v11 + 32);
  v13 = *(v11 + 16) + 1;
  while (--v13)
  {
    v14 = v12 + 5;
    v15 = *v12;
    v12 += 5;
    if (v15 == &type metadata for PointCacheGenerator)
    {
      v13 = *(v14 - 2);
      break;
    }
  }

  v16 = HIWORD(a4);
  v17 = v5[16] + v13 + 32 * result;
  LOBYTE(v23) = a4;
  WORD1(v23) = HIWORD(a4);
  if (*v17 != a2 || *(v17 + 8) != a3 || *(v17 + 16) != v23 || *(v17 + 24) != a5)
  {
    v21 = v5[24];
    if (v21)
    {
      v22 = v5[26];
      *(v21 + 8 * (result >> 6)) |= 1 << result;
      *(v22 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v17 = v9;
  *(v17 + 4) = v10;
  *(v17 + 8) = a3;
  *(v17 + 16) = v7;
  *(v17 + 18) = v16;
  *(v17 + 24) = a5;
  return result;
}

uint64_t sub_1AFC4439C(uint64_t result, unint64_t a2, uint64_t a3, float a4)
{
  v7 = a2;
  v8 = HIDWORD(a2);
  v9 = v4[6];
  v10 = (v9 + 32);
  v11 = *(v9 + 16) + 1;
  while (--v11)
  {
    v12 = v10 + 5;
    v13 = *v10;
    v10 += 5;
    if (v13 == &type metadata for SDFTextureGenerator)
    {
      v11 = *(v12 - 2);
      break;
    }
  }

  v14 = v4[16] + v11 + 24 * result;
  *&v19 = a4;
  if (*v14 != a2 || *(v14 + 8) != v19 || *(v14 + 16) != a3)
  {
    v17 = v4[24];
    if (v17)
    {
      v18 = v4[26];
      *(v17 + 8 * (result >> 6)) |= 1 << result;
      *(v18 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v14 = v7;
  *(v14 + 4) = v8;
  *(v14 + 8) = a4;
  *(v14 + 16) = a3;
  return result;
}

__n128 sub_1AFC444C8(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleLineRenderer)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 44 * a1;
  if (*(v9 + 36) != *(a2 + 36) || *(v9 + 40) != *(a2 + 40) || *(v9 + 32) != (*(a2 + 32) & 1) || ((*(v9 + 33) ^ *(a2 + 33)) & 1) != 0)
  {
    goto LABEL_30;
  }

  v10 = *v9;
  v11 = *a2;
  if (!*(v9 + 4))
  {
    if ((*(a2 + 4) & 1) != 0 || v10 != v11)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (v10 == 0.0)
  {
    if ((*(a2 + 4) & 1) == 0 || v11 != 0.0)
    {
      goto LABEL_30;
    }

    goto LABEL_23;
  }

  if (LODWORD(v10) != 1)
  {
    if ((*(a2 + 4) & 1) == 0 || LODWORD(v11) < 2)
    {
      goto LABEL_30;
    }

LABEL_23:
    if (*(v9 + 8) == *(a2 + 8) && *(v9 + 12) == *(a2 + 12) && *(v9 + 16) == *(a2 + 16) && *(v9 + 20) == *(a2 + 20) && ((*(v9 + 21) ^ *(a2 + 21)) & 1) == 0 && *(v9 + 24) > 0.0 != *(a2 + 24) <= 0.0 && *(v9 + 28) > 0.0 != *(a2 + 28) <= 0.0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if ((*(a2 + 4) & 1) != 0 && LODWORD(v11) == 1)
  {
    goto LABEL_23;
  }

LABEL_30:
  v12 = v2[24];
  if (v12)
  {
    v13 = v2[26];
    *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  sub_1AF705804(a1);
LABEL_33:
  v14 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v14;
  result = *(a2 + 28);
  *(v9 + 28) = result;
  return result;
}

__n128 sub_1AFC446B0(uint64_t a1, int32x4_t *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleMeshRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 40 * a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v17 = a2[2].i64[0];
  if (sub_1AF9EE4E8(v10, v16))
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  result = *a2;
  v15 = a2[1];
  *v10 = *a2;
  *(v10 + 16) = v15;
  *(v10 + 32) = a2[2].i64[0];
  return result;
}

__n128 sub_1AFC447D0(uint64_t a1, _OWORD *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleQuadRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 144 * a1;
  v11 = a2[7];
  v21[6] = a2[6];
  v22[0] = v11;
  *(v22 + 11) = *(a2 + 123);
  v12 = a2[3];
  v21[2] = a2[2];
  v21[3] = v12;
  v13 = a2[5];
  v21[4] = a2[4];
  v21[5] = v13;
  v14 = a2[1];
  v21[0] = *a2;
  v21[1] = v14;
  if (sub_1AF9F3A98(v10, v21))
  {
    v15 = v2[24];
    if (v15)
    {
      v16 = v2[26];
      *(v15 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v16 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v17 = a2[7];
  *(v10 + 96) = a2[6];
  *(v10 + 112) = v17;
  *(v10 + 123) = *(a2 + 123);
  v18 = a2[3];
  *(v10 + 32) = a2[2];
  *(v10 + 48) = v18;
  v19 = a2[5];
  *(v10 + 64) = a2[4];
  *(v10 + 80) = v19;
  result = *(a2 + 1);
  *v10 = *a2;
  *(v10 + 16) = result;
  return result;
}

uint64_t sub_1AFC44920(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleSizeOverLife)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 112 * a1;
  if ((*v9 != 0) == (*a2 == 0) || *(v9 + 8) != *(a2 + 8))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v12 = *v9;
  v13 = *(v9 + 32);
  v24[1] = *(v9 + 16);
  v24[2] = v13;
  v24[0] = v12;
  v14 = *(v9 + 48);
  v15 = *(v9 + 64);
  v16 = *(v9 + 80);
  *&v25[9] = *(v9 + 89);
  v24[4] = v15;
  *v25 = v16;
  v24[3] = v14;
  v18 = *(a2 + 64);
  v17 = *(a2 + 80);
  v19 = *(a2 + 48);
  *(v9 + 89) = *(a2 + 89);
  *(v9 + 64) = v18;
  *(v9 + 80) = v17;
  *(v9 + 48) = v19;
  v20 = *a2;
  v21 = *(a2 + 32);
  *(v9 + 16) = *(a2 + 16);
  *(v9 + 32) = v21;
  *v9 = v20;
  sub_1AF4425FC(a2, &v23);
  return sub_1AF58FF84(v24);
}

uint64_t sub_1AFC44A90(uint64_t a1, const void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = v5[6];
  v10 = a4(0);
  v11 = (v9 + 32);
  v12 = *(v9 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = *v11;
    v11 += 5;
    if (v14 == v10)
    {
      v15 = *(v13 - 2);
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = *(v10 - 8);
  v17 = (v5[16] + v15 + *(v16 + 72) * a1);
  if ((*(v16 + 82) & 1) != 0 || memcmp(v17, a2, *(v16 + 64)))
  {
    v18 = v5[24];
    if (v18)
    {
      v19 = v5[26];
      *(v18 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v19 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  return sub_1AFC4B0C4(a2, v17, a5);
}

uint64_t sub_1AFC44BC4(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for TextToImageGenerator)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + (a1 << 7);
  v11 = *(v10 + 80);
  v32[4] = *(v10 + 64);
  v32[5] = v11;
  v32[6] = *(v10 + 96);
  v33 = *(v10 + 112);
  v12 = *(v10 + 16);
  v32[0] = *v10;
  v32[1] = v12;
  v13 = *(v10 + 48);
  v32[2] = *(v10 + 32);
  v32[3] = v13;
  if ((sub_1AF603C68(v32, a2) & 1) == 0)
  {
    v14 = v2[24];
    if (v14)
    {
      v15 = v2[26];
      *(v14 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v15 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v16 = *v10;
  v17 = *(v10 + 16);
  v18 = *(v10 + 48);
  v30[2] = *(v10 + 32);
  v30[3] = v18;
  v30[0] = v16;
  v30[1] = v17;
  v19 = *(v10 + 64);
  v20 = *(v10 + 80);
  v21 = *(v10 + 96);
  v31 = *(v10 + 112);
  v30[5] = v20;
  v30[6] = v21;
  v30[4] = v19;
  v23 = *(a2 + 80);
  v22 = *(a2 + 96);
  v24 = *(a2 + 64);
  *(v10 + 112) = *(a2 + 112);
  *(v10 + 80) = v23;
  *(v10 + 96) = v22;
  *(v10 + 64) = v24;
  v25 = *a2;
  v26 = *(a2 + 16);
  v27 = *(a2 + 48);
  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = v27;
  *v10 = v25;
  *(v10 + 16) = v26;
  sub_1AF582EBC(a2, &v29);
  return sub_1AF582F18(v30);
}

uint64_t sub_1AFC44D20(uint64_t result, uint64_t a2, char a3)
{
  v5 = v3[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for TextureRequireMipmap)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v3[16] + v7 + 16 * result;
  v11 = a3 & 1;
  if (*v10 != a2 || *(v10 + 8) != (a3 & 1))
  {
    v13 = v3[24];
    if (v13)
    {
      v14 = v3[26];
      *(v13 + 8 * (result >> 6)) |= 1 << result;
      *(v14 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v10 = a2;
  *(v10 + 8) = v11;
  return result;
}

uint64_t sub_1AFC44E24(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleColorOverLife)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 40 * a1;
  if ((*v9 != 0) == (*a2 == 0))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v12 = *(a2 + 32);
  v13 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v13;
  *(v9 + 32) = v12;
  sub_1AF4425A0(a2, v15);
}

__n128 sub_1AFC44F24(uint64_t a1, __n128 *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticlePointRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 48 * a1;
  v11 = a2[1];
  v16[0] = *a2;
  v16[1] = v11;
  v16[2] = a2[2];
  if (sub_1AF9FADB8(v10, v16))
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v14 = a2[1];
  *v10 = *a2;
  *(v10 + 16) = v14;
  result = a2[2];
  *(v10 + 32) = result;
  return result;
}

uint64_t sub_1AFC45044(uint64_t result, float a2, float a3, float a4, float a5)
{
  v10 = v5[6];
  v11 = (v10 + 32);
  v12 = *(v10 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = *v11;
    v11 += 5;
    if (v14 == &type metadata for ParticleSPHSimulation)
    {
      v12 = *(v13 - 2);
      break;
    }
  }

  v15 = v5[16] + v12 + 16 * result;
  if (*v15 != __PAIR64__(LODWORD(a3), LODWORD(a2)) || *(v15 + 8) != __PAIR64__(LODWORD(a5), LODWORD(a4)))
  {
    v17 = v5[24];
    if (v17)
    {
      v18 = v5[26];
      *(v17 + 8 * (result >> 6)) |= 1 << result;
      *(v18 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v15 = a2;
  *(v15 + 4) = a3;
  *(v15 + 8) = a4;
  *(v15 + 12) = a5;
  return result;
}

uint64_t sub_1AFC45150(uint64_t result, float a2)
{
  v4 = result;
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleSpawnDuration)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7;
  if (*(v10 + 4 * result) != LODWORD(a2))
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (result >> 6)) |= 1 << result;
      *(v12 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *(v10 + 4 * v4) = a2;
  return result;
}

uint64_t sub_1AFC45248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[6];
  v9 = (v8 + 32);
  v10 = *(v8 + 16) + 1;
  while (--v10)
  {
    v11 = v9 + 5;
    v12 = *v9;
    v9 += 5;
    if (v12 == &type metadata for REMeshAssetPointCache)
    {
      v10 = *(v11 - 2);
      break;
    }
  }

  v13 = v4[16];
  v14 = v4[24];
  if (v14)
  {
    v15 = v4[26];
    *(v14 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v15 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v16 = (v13 + v10 + 24 * a1);
  sub_1AF705804(a1);
  *v16 = a2;
  v16[1] = a3;
  v16[2] = a4;
}

uint64_t sub_1AFC4536C(uint64_t result, unint64_t a2, char a3)
{
  v4 = a2;
  v5 = HIDWORD(a2);
  v6 = v3[6];
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for SceneKitAssetInstance)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = v3[16] + v8 + 12 * result;
  v12 = a3 & 1;
  if (*v11 != a2 || *(v11 + 8) != (a3 & 1))
  {
    v14 = v3[24];
    if (v14)
    {
      v15 = v3[26];
      *(v14 + 8 * (result >> 6)) |= 1 << result;
      *(v15 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v11 = v4;
  *(v11 + 4) = v5;
  *(v11 + 8) = v12;
  return result;
}

uint64_t sub_1AFC45484(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for TextureArrayFileAsset)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7;
  if ((sub_1AFB7B948(*(v10 + 8 * a1), a2) & 1) == 0)
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v12 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  *(v10 + 8 * a1) = a2;
}

__n128 sub_1AFC4556C(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for TextureLoadingOptions)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + (a1 << 6);
  v10 = *(a2 + 16);
  *v22 = *(a2 + 32);
  *&v22[10] = *(a2 + 42);
  if (*v9 != *a2 || *(v9 + 8) != *(a2 + 8) || *(v9 + 16) != v10 || *(v9 + 24) != *(&v10 + 1) || *(v9 + 32) != *v22 || *(v9 + 40) != *&v22[8] || *(v9 + 48) != *&v22[16] || *(v9 + 56) != *&v22[24])
  {
    v18 = v2[24];
    if (v18)
    {
      v19 = v2[26];
      *(v18 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v19 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v20 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v20;
  *(v9 + 32) = *(a2 + 32);
  result = *(a2 + 42);
  *(v9 + 42) = result;
  return result;
}

__n128 sub_1AFC456C0(uint64_t a1, _OWORD *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleRibbonRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 112 * a1;
  v11 = a2[5];
  v19[4] = a2[4];
  v20[0] = v11;
  *(v20 + 9) = *(a2 + 89);
  v12 = a2[1];
  v19[0] = *a2;
  v19[1] = v12;
  v13 = a2[3];
  v19[2] = a2[2];
  v19[3] = v13;
  if (sub_1AF9F64EC(v10, v19))
  {
    v14 = v2[24];
    if (v14)
    {
      v15 = v2[26];
      *(v14 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v15 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v16 = a2[5];
  *(v10 + 64) = a2[4];
  *(v10 + 80) = v16;
  *(v10 + 89) = *(a2 + 89);
  v17 = a2[1];
  *v10 = *a2;
  *(v10 + 16) = v17;
  result = *(a2 + 3);
  *(v10 + 32) = a2[2];
  *(v10 + 48) = result;
  return result;
}

__n128 sub_1AFC45800(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticleSphereRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 36 * a1;
  v11 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v11;
  v17 = *(a2 + 32);
  if (sub_1AFA03714(v10, v16))
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  result = *a2;
  v15 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v15;
  *(v10 + 32) = *(a2 + 32);
  return result;
}

__n128 sub_1AFC45920(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleSizeOverTexture)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 72 * a1;
  if ((*(v9 + 12) != 0) == (*(a2 + 12) == 0) || *(v9 + 20) != *(a2 + 20))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v12 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 32);
  *(v9 + 48) = v12;
  *(v9 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = result;
  return result;
}

uint64_t sub_1AFC45A10(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v7 = v4[6];
  v8 = (v7 + 32);
  v9 = *(v7 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 5;
    v11 = *v8;
    v8 += 5;
    if (v11 == &type metadata for TextureRequireSizeLimit)
    {
      v9 = *(v10 - 2);
      break;
    }
  }

  v12 = v4[16] + v9 + 24 * result;
  v13 = a4 & 1;
  if (*v12 != a2 || *(v12 + 8) != a3 || *(v12 + 16) != (a4 & 1))
  {
    v16 = v4[24];
    if (v16)
    {
      v17 = v4[26];
      *(v16 + 8 * (result >> 6)) |= 1 << result;
      *(v17 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v12 = a2;
  *(v12 + 8) = a3;
  *(v12 + 16) = v13;
  return result;
}

__n128 sub_1AFC45B28(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleColorOverTexture)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 48 * a1;
  if ((*v9 != 0) == (*a2 == 0))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v12 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v12;
  result = *(a2 + 28);
  *(v9 + 28) = result;
  return result;
}

__n128 sub_1AFC45C00(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleGaussianRenderer)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 32 * a1;
  if (*(v9 + 8) != *(a2 + 8) || *v9 != *a2 || *(v9 + 24) != (*(a2 + 24) & 1))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  *v9 = *a2;
  result = *(a2 + 9);
  *(v9 + 9) = result;
  return result;
}

__n128 sub_1AFC45CE8(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleLocalBoxCollider)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 48 * a1;
  *v19 = *(a2 + 16);
  *&v19[9] = *(a2 + 25);
  if (*v9 != *a2 || *(v9 + 8) != *(a2 + 8) || *(v9 + 16) != *v19 || *(v9 + 24) != *&v19[8] || *(v9 + 32) != *&v19[16] || *(v9 + 40) != v19[24])
  {
    v15 = v2[24];
    if (v15)
    {
      v16 = v2[26];
      *(v15 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v16 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v17 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v17;
  result = *(a2 + 25);
  *(v9 + 25) = result;
  return result;
}

__n128 sub_1AFC45E20(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleSizeOverVelocity)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 44 * a1;
  if ((*v9 != 0) == (*a2 == 0) || *(v9 + 8) != *(a2 + 8))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v12 = *(a2 + 16);
  *v9 = *a2;
  *(v9 + 16) = v12;
  result = *(a2 + 28);
  *(v9 + 28) = result;
  return result;
}

uint64_t sub_1AFC45F08(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleColorOverPosition)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 40 * a1;
  if ((*(v9 + 4) != 0) == (*(a2 + 4) == 0))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v13 = *a2;
  v12 = *(a2 + 16);
  *(v9 + 32) = *(a2 + 32);
  *v9 = v13;
  *(v9 + 16) = v12;
  sub_1AFC4AFC0(a2, v15);
}

uint64_t sub_1AFC46008(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for ParticleColorOverVelocity)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 40 * a1;
  if ((*v9 != 0) == (*a2 == 0))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  v13 = *a2;
  v12 = *(a2 + 16);
  *(v9 + 32) = *(a2 + 32);
  *v9 = v13;
  *(v9 + 16) = v12;
  sub_1AFC4AF04(a2, v15);
}

__n128 sub_1AFC46108(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for ParticlePrimitiveRenderer)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 40 * a1;
  v11 = *(a2 + 16);
  v16 = *a2;
  *v17 = v11;
  *&v17[13] = *(a2 + 29);
  if (sub_1AF9F06E0(v10, &v16))
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  result = *a2;
  v15 = *(a2 + 16);
  *v10 = *a2;
  *(v10 + 16) = v15;
  *(v10 + 29) = *(a2 + 29);
  return result;
}

uint64_t sub_1AFC46228(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v6 = a5;
  v10 = HIBYTE(a5);
  v11 = v5[6];
  v12 = (v11 + 32);
  v13 = *(v11 + 16) + 1;
  while (--v13)
  {
    v14 = v12 + 5;
    v15 = *v12;
    v12 += 5;
    if (v15 == &type metadata for TextureRequireAnimationRepresentation)
    {
      v13 = *(v14 - 2);
      break;
    }
  }

  v16 = v5[16] + v13 + 32 * result;
  if (*v16 == a2 && *(v16 + 8) == a3)
  {
    v20 = *(v16 + 25);
    if (*(v16 + 24))
    {
      if ((a5 & 1) != 0 && v20 == HIBYTE(a5))
      {
        goto LABEL_12;
      }
    }

    else if ((a5 & 1) == 0 && *(v16 + 16) == a4 && v20 == HIBYTE(a5))
    {
      goto LABEL_12;
    }
  }

  v18 = v5[24];
  if (v18)
  {
    v19 = v5[26];
    *(v18 + 8 * (result >> 6)) |= 1 << result;
    *(v19 + 8 * (result >> 6)) &= ~(1 << result);
  }

  result = sub_1AF705804(result);
LABEL_12:
  *v16 = a2;
  *(v16 + 8) = a3;
  *(v16 + 16) = a4;
  *(v16 + 24) = v6 & 1;
  *(v16 + 25) = v10;
  return result;
}

uint64_t sub_1AFC46344(uint64_t result, uint64_t a2)
{
  v3 = a2;
  v4 = a2 & 0x100000000;
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for Seed)
    {
      v10 = *(v8 - 2);
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_6:
  v11 = v2[16] + v10 + 8 * result;
  if (*v11 != a2 || (((v4 != 0) ^ *(v11 + 4)) & 1) != 0)
  {
    v12 = v2[24];
    if (v12)
    {
      v13 = v2[26];
      *(v12 + 8 * (result >> 6)) |= 1 << result;
      *(v13 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v11 = v3;
  *(v11 + 4) = BYTE4(v4);
  return result;
}

uint64_t sub_1AFC46420(uint64_t result, unint64_t a2)
{
  v3 = a2;
  v4 = HIDWORD(a2);
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for Parent)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16] + v7 + 8 * result;
  if (*v10 != a2)
  {
    v11 = v2[24];
    if (v11)
    {
      v12 = v2[26];
      *(v11 + 8 * (result >> 6)) |= 1 << result;
      *(v12 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v10 = v3;
  *(v10 + 4) = v4;
  return result;
}

__n128 sub_1AFC46514(uint64_t a1, uint64_t a2)
{
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for Skybox)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16] + v6 + 32 * a1;
  if (*v9 != *a2 || *(v9 + 4) != *(a2 + 4))
  {
    v10 = v2[24];
    if (v10)
    {
      v11 = v2[26];
      *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  *v9 = *a2;
  result = *(a2 + 13);
  *(v9 + 13) = result;
  return result;
}

uint64_t sub_1AFC465E8(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = v2[6];
  v5 = (v4 + 32);
  v6 = *(v4 + 16) + 1;
  while (--v6)
  {
    v7 = v5 + 5;
    v8 = *v5;
    v5 += 5;
    if (v8 == &type metadata for Material)
    {
      v6 = *(v7 - 2);
      break;
    }
  }

  v9 = v2[16];
  v10 = v2[24];
  if (v10)
  {
    v11 = v2[26];
    *(v10 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v11 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v12 = v9 + v6 + 104 * a1;
  sub_1AF705804(a1);
  v13 = *v12;
  v14 = *(v12 + 16);
  v25[2] = *(v12 + 32);
  v25[0] = v13;
  v25[1] = v14;
  v15 = *(v12 + 48);
  v16 = *(v12 + 64);
  v17 = *(v12 + 80);
  v26 = *(v12 + 96);
  v25[4] = v16;
  v25[5] = v17;
  v25[3] = v15;
  v19 = *(a2 + 64);
  v18 = *(a2 + 80);
  v20 = *(a2 + 48);
  *(v12 + 96) = *(a2 + 96);
  *(v12 + 64) = v19;
  *(v12 + 80) = v18;
  *(v12 + 48) = v20;
  v21 = *a2;
  v22 = *(a2 + 32);
  *(v12 + 16) = *(a2 + 16);
  *(v12 + 32) = v22;
  *v12 = v21;
  sub_1AF4424F4(a2, v24);
  return sub_1AF584F68(v25);
}

uint64_t sub_1AFC4672C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[6];
  v7 = (v6 + 32);
  v8 = *(v6 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 5;
    v10 = *v7;
    v7 += 5;
    if (v10 == &type metadata for MeshModel)
    {
      v8 = *(v9 - 2);
      break;
    }
  }

  v11 = v3[16];
  v12 = v3[24];
  if (v12)
  {
    v13 = v3[26];
    *(v12 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v13 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v14 = (v11 + v8 + 16 * a1);
  sub_1AF705804(a1);
  *v14 = a2;
  v14[1] = a3;
}

uint64_t sub_1AFC46844(uint64_t result, uint64_t a2, unsigned int a3)
{
  v5 = v3[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for MeshImportOptions)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v3[16] + v7 + 16 * result;
  v11 = a3 & 1;
  v12 = (a3 >> 8) & 1;
  if (*v10 != a2 || *(v10 + 8) != (a3 & 0x101))
  {
    v14 = v3[24];
    if (v14)
    {
      v15 = v3[26];
      *(v14 + 8 * (result >> 6)) |= 1 << result;
      *(v15 + 8 * (result >> 6)) &= ~(1 << result);
    }

    result = sub_1AF705804(result);
  }

  *v10 = a2;
  *(v10 + 8) = v11;
  *(v10 + 9) = v12;
  return result;
}

uint64_t sub_1AFC46A54(uint64_t a1, const void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = v5[6];
  v10 = a4(0);
  v11 = (v9 + 32);
  v12 = *(v9 + 16) + 1;
  while (--v12)
  {
    v13 = v11 + 5;
    v14 = *v11;
    v11 += 5;
    if (v14 == v10)
    {
      v15 = *(v13 - 2);
      goto LABEL_6;
    }
  }

  v15 = 0;
LABEL_6:
  v16 = *(v10 - 8);
  v17 = (v5[16] + v15 + *(v16 + 72) * a1);
  if ((*(v16 + 82) & 1) != 0 || memcmp(v17, a2, *(v16 + 64)))
  {
    v18 = v5[24];
    if (v18)
    {
      v19 = v5[26];
      *(v18 + 8 * (a1 >> 6)) |= 1 << a1;
      *(v19 + 8 * (a1 >> 6)) &= ~(1 << a1);
    }

    sub_1AF705804(a1);
  }

  return sub_1AFC4B0C4(a2, v17, a5);
}

void sub_1AFC46B88(uint64_t a1, void *a2)
{
  v5 = v2[6];
  v6 = (v5 + 32);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    v8 = v6 + 5;
    v9 = *v6;
    v6 += 5;
    if (v9 == &type metadata for TextureCGImage)
    {
      v7 = *(v8 - 2);
      break;
    }
  }

  v10 = v2[16];
  v11 = v2[24];
  if (v11)
  {
    v12 = v2[26];
    *(v11 + 8 * (a1 >> 6)) |= 1 << a1;
    *(v12 + 8 * (a1 >> 6)) &= ~(1 << a1);
  }

  v13 = v10 + v7;
  sub_1AF705804(a1);
  v15 = *(v13 + 8 * a1);
  *(v13 + 8 * a1) = a2;
  v14 = a2;
}

uint64_t vfx_script_debug_record_scalar(_:_:_:_:_:_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v2);
  sub_1AFC41560(v3, sub_1AFC47150);
  return sub_1AFABB5D8(v2);
}

uint64_t sub_1AFC46D44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  v45 = a1;
  v43 = a7;
  v44 = a10;
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v42 - v18;
  sub_1AF3CF34C(*(a2 + 24), &v42 - v18);
  v20 = type metadata accessor for GraphScript(0);
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    sub_1AFC4AF60(v19, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
    v21 = 0;
  }

  else
  {
    v21 = v19[40];
    sub_1AFC4B264(v19, type metadata accessor for GraphScript);
  }

  LOBYTE(v47[0]) = v21;
  v22 = sub_1AFDFCF88();
  LOBYTE(v46[0]) = 0;
  v47[0] = a3;
  v47[1] = a4;
  v47[2] = v22;
  v47[3] = v23;
  v47[4] = a5;
  v47[5] = a6;
  v47[6] = v43;
  v47[7] = a8;
  v48 = a9;
  v49 = 0;
  v24 = v45;
  v25 = *(*v45 + 16);

  if (!v25 || (sub_1AF419C3C(v47), (v26 & 1) == 0))
  {
    sub_1AFC4B214(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1AFE431C0;
    sub_1AF0D5A54(v44, v35 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46[0] = *v24;
    sub_1AF859350(v35, v47, isUniquelyReferenced_nonNull_native);
    result = sub_1AF6B74FC(v47);
    v38 = *&v46[0];
LABEL_11:
    *v24 = v38;
    return result;
  }

  sub_1AF0D5A54(v44, v46);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v24;
  v28 = v50;
  v30 = sub_1AF419C3C(v47);
  v31 = v29;
  v32 = *(v28 + 16) + ((v29 & 1) == 0);
  if (*(v28 + 24) >= v32)
  {
    if (v27)
    {
      if (v29)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1AF8502A0();
      if (v31)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v39 = 0;
    goto LABEL_17;
  }

  sub_1AF842190(v32, v27);
  v33 = sub_1AF419C3C(v47);
  if ((v31 & 1) == (v34 & 1))
  {
    v30 = v33;
    if ((v31 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_14:
    v39 = *(*(v50 + 56) + 8 * v30);
LABEL_17:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1AF4247CC(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1AF4247CC(v40 > 1, v41 + 1, 1, v39);
    }

    *(v39 + 2) = v41 + 1;
    sub_1AF449D40(v46, &v39[32 * v41 + 32]);
    if (v31)
    {

      sub_1AF6B74FC(v47);
      *(*(v50 + 56) + 8 * v30) = v39;
    }

    else
    {
      result = sub_1AF85B954(v30, v47, v39, v50);
    }

    v38 = v50;
    goto LABEL_11;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t vfx_script_debug_record_scalar(uint64_t a1)
{
  sub_1AFADAE08(a1, v2);
  sub_1AFC41560(v3, sub_1AFC477AC);
  return sub_1AFABB5D8(v2);
}

uint64_t vfx_script_debug_record_scalar(_:_:_:_:_:_:_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v2);
  sub_1AFC41560(v3, sub_1AFC4B32C);
  return sub_1AFABB5D8(v2);
}

uint64_t sub_1AFC472D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8)
{
  v48 = a8;
  v49 = a1;
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v47 - v13;
  sub_1AF3CF34C(*(a2 + 24), &v47 - v13);
  v15 = type metadata accessor for GraphScript(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1AFC4AF60(v14, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
    v16 = 0;
  }

  else
  {
    v16 = v14[40];
    sub_1AFC4B264(v14, type metadata accessor for GraphScript);
  }

  LOBYTE(v53[0]) = v16;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  v20 = sub_1AFDFD0E8();
  v22 = v21;
  v23 = sub_1AFDFD0E8();
  v25 = v24;
  v26 = sub_1AFDFD0E8();
  LOBYTE(v56[0]) = 0;
  v53[0] = v20;
  v53[1] = v22;
  v53[2] = v17;
  v53[3] = v19;
  v53[4] = v23;
  v53[5] = v25;
  v53[6] = v26;
  v53[7] = v27;
  v54 = a6;
  v55 = 0;
  if (a7 > 0x3A)
  {
    return sub_1AF6B74FC(v53);
  }

  v28 = &unk_1F24F5668 + 40 * a7;
  v29 = *(v28 + 3);
  v56[0] = *(v28 + 2);
  v56[1] = v29;
  v57 = *(v28 + 8);
  sub_1AF444F60(v56, v51);
  v30 = sub_1AF80CC24(v56);
  sub_1AF444FBC(v56);
  sub_1AF7FF23C(v48, v30, v52);
  sub_1AF449D40(v52, v51);
  v31 = v49;
  if (!*(*v49 + 16) || (sub_1AF419C3C(v53), (v32 & 1) == 0))
  {
    sub_1AFC4B214(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1AFE431C0;
    sub_1AF0D5A54(v51, v42 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v52[0] = *v31;
    sub_1AF859350(v42, v53, isUniquelyReferenced_nonNull_native);
    sub_1AF6B74FC(v53);
    *v31 = *&v52[0];
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);
  }

  sub_1AF0D5A54(v51, v52);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v31;
  v34 = v50;
  v36 = sub_1AF419C3C(v53);
  v37 = v35;
  v38 = *(v34 + 16) + ((v35 & 1) == 0);
  if (*(v34 + 24) >= v38)
  {
    if (v33)
    {
      if (v35)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1AF8502A0();
      if (v37)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v44 = 0;
    goto LABEL_18;
  }

  sub_1AF842190(v38, v33);
  v39 = sub_1AF419C3C(v53);
  if ((v37 & 1) != (v40 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v36 = v39;
  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v44 = *(*(v50 + 56) + 8 * v36);
LABEL_18:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_1AF4247CC(0, *(v44 + 2) + 1, 1, v44);
  }

  v46 = *(v44 + 2);
  v45 = *(v44 + 3);
  if (v46 >= v45 >> 1)
  {
    v44 = sub_1AF4247CC(v45 > 1, v46 + 1, 1, v44);
  }

  *(v44 + 2) = v46 + 1;
  sub_1AF449D40(v52, &v44[32 * v46 + 32]);
  if (v37)
  {

    sub_1AF6B74FC(v53);
    *(*(v50 + 56) + 8 * v36) = v44;
  }

  else
  {
    sub_1AF85B954(v36, v53, v44, v50);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v51);

  *v31 = v50;
  return result;
}

uint64_t vfx_script_debug_record_array(uint64_t a1)
{
  sub_1AFADAE08(a1, v2);
  sub_1AFC41560(v3, sub_1AFC47E44);
  return sub_1AFABB5D8(v2);
}

uint64_t vfx_script_debug_record_array(_:_:_:_:_:_:_:_:)(uint64_t a1)
{
  sub_1AFADAE08(a1, v2);
  sub_1AFC41560(v3, sub_1AFC4B344);
  return sub_1AFABB5D8(v2);
}

uint64_t sub_1AFC4794C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, uint64_t a8)
{
  v46[1] = a8;
  v47 = a1;
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = v46 - v13;
  sub_1AF3CF34C(*(a2 + 24), v46 - v13);
  v15 = type metadata accessor for GraphScript(0);
  if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
  {
    sub_1AFC4AF60(v14, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
    v16 = 0;
  }

  else
  {
    v16 = v14[40];
    sub_1AFC4B264(v14, type metadata accessor for GraphScript);
  }

  LOBYTE(v52[0]) = v16;
  v17 = sub_1AFDFCF88();
  v19 = v18;
  v20 = sub_1AFDFD0E8();
  v22 = v21;
  v23 = sub_1AFDFD0E8();
  v25 = v24;
  v26 = sub_1AFDFD0E8();
  LOBYTE(v55[0]) = 0;
  v52[0] = v20;
  v52[1] = v22;
  v52[2] = v17;
  v52[3] = v19;
  v52[4] = v23;
  v52[5] = v25;
  v52[6] = v26;
  v52[7] = v27;
  v53 = a6;
  v54 = 0;
  if (a7 > 0x3A)
  {
    return sub_1AF6B74FC(v52);
  }

  v28 = &unk_1F24F5668 + 40 * a7;
  v29 = *(v28 + 3);
  v55[0] = *(v28 + 2);
  v55[1] = v29;
  v56 = *(v28 + 8);
  sub_1AF444F60(v55, v51);
  sub_1AF7FE2EC(v51);
  sub_1AF444FBC(v55);
  sub_1AF80CC24(v51);
  sub_1AF444FBC(v51);
  sub_1AF7FF2A8(v49);
  sub_1AF449D40(v49, v50);
  v30 = v47;
  if (!*(*v47 + 16) || (sub_1AF419C3C(v52), (v31 & 1) == 0))
  {
    sub_1AFC4B214(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1AFE431C0;
    sub_1AF0D5A54(v50, v41 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49[0] = *v30;
    sub_1AF859350(v41, v52, isUniquelyReferenced_nonNull_native);
    sub_1AF6B74FC(v52);
    *v30 = v49[0];
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v50);
  }

  sub_1AF0D5A54(v50, v49);
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v30;
  v33 = v48;
  v35 = sub_1AF419C3C(v52);
  v36 = v34;
  v37 = *(v33 + 16) + ((v34 & 1) == 0);
  if (*(v33 + 24) >= v37)
  {
    if (v32)
    {
      if (v34)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1AF8502A0();
      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v43 = 0;
    goto LABEL_18;
  }

  sub_1AF842190(v37, v32);
  v38 = sub_1AF419C3C(v52);
  if ((v36 & 1) != (v39 & 1))
  {
    result = sub_1AFDFF1A8();
    __break(1u);
    return result;
  }

  v35 = v38;
  if ((v36 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_15:
  v43 = *(*(v48 + 56) + 8 * v35);
LABEL_18:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1AF4247CC(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1AF4247CC(v44 > 1, v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  sub_1AF449D40(v49, &v43[32 * v45 + 32]);
  if (v36)
  {

    sub_1AF6B74FC(v52);
    *(*(v48 + 56) + 8 * v35) = v43;
  }

  else
  {
    sub_1AF85B954(v35, v52, v43, v48);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v50);

  *v30 = v48;
  return result;
}

uint64_t vfx_script_debug_log(_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v33[-v16];
  v18 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v18 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v36 = a4;
    v37 = a5;

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a6, a7);
    a6 = v36;
    a7 = v37;
  }

  else
  {
  }

  sub_1AFADAE08(a1, &v36);
  v19 = v37;
  v20 = v38;
  v21 = sub_1AF67CACC(&type metadata for GraphDebuggingComponent, &off_1F253B628, v38);
  if (v21)
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    *&v33[-48] = &v36;
    *&v33[-40] = a2;
    *&v33[-32] = a3;
    *&v33[-24] = a6;
    *&v33[-16] = a7;
    sub_1AFC41560(v20, sub_1AFC48504);
  }

  else if (*(v19 + 56) != 1)
  {
    sub_1AF3CF34C(v20, v17);
    v23 = type metadata accessor for GraphScript(0);
    if ((*(*(v23 - 8) + 48))(v17, 1, v23) == 1)
    {
      sub_1AFC4AF60(v17, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
      v24 = 0;
    }

    else
    {
      v24 = v17[40];
      sub_1AFC4B264(v17, type metadata accessor for GraphScript);
    }

    LOBYTE(v34) = v24;
    v25 = sub_1AFDFCF88();
    v27 = v26;
    v34 = a2;
    v35 = a3;

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v25, v27);

    v28 = *(v19 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a6, a7);
    v29 = v34;
    v30 = v35;
    v31 = sub_1AFDFDA28();
    v34 = 0;
    (*(*v28 + 88))(v31, &v34, v29, v30);
  }

  sub_1AFABB5D8(&v36);
}

uint64_t vfx_script_debug_log(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1AFC4AD78(0, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v28[-v12];
  sub_1AFADAE08(a1, v31);
  v14 = v32;
  v15 = v33;
  v16 = sub_1AF67CACC(&type metadata for GraphDebuggingComponent, &off_1F253B628, v33);
  if (v16)
  {
    MEMORY[0x1EEE9AC00](v16, v17);
    *&v28[-48] = v31;
    *&v28[-40] = a2;
    *&v28[-32] = a3;
    *&v28[-24] = a4;
    *&v28[-16] = a5;
    sub_1AFC41560(v15, sub_1AFC4B35C);
  }

  else if ((*(v14 + 56) & 1) == 0)
  {
    sub_1AF3CF34C(v15, v13);
    v18 = type metadata accessor for GraphScript(0);
    if ((*(*(v18 - 8) + 48))(v13, 1, v18) == 1)
    {
      sub_1AFC4AF60(v13, &unk_1ED725EB0, type metadata accessor for GraphScript, MEMORY[0x1E69E6720], sub_1AFC4AD78);
      v19 = 0;
    }

    else
    {
      v19 = v13[40];
      sub_1AFC4B264(v13, type metadata accessor for GraphScript);
    }

    LOBYTE(v29) = v19;
    v20 = sub_1AFDFCF88();
    v22 = v21;
    v29 = a2;
    v30 = a3;

    MEMORY[0x1B2718AE0](46, 0xE100000000000000);
    MEMORY[0x1B2718AE0](v20, v22);

    v23 = *(v14 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    MEMORY[0x1B2718AE0](8250, 0xE200000000000000);
    MEMORY[0x1B2718AE0](a4, a5);
    v24 = v29;
    v25 = v30;
    v26 = sub_1AFDFDA28();
    v29 = 0;
    (*(*v23 + 88))(v26, &v29, v24, v25);
  }

  return sub_1AFABB5D8(v31);
}