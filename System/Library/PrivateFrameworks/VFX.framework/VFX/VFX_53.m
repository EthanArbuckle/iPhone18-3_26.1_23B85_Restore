unint64_t sub_1AF528BB8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for EmitterRuntime, &off_1F2563418, a1);
  v3 = v2;
  if (v2)
  {
    sub_1AF442324(v2, v6);
    swift_getAtKeyPath();

    sub_1AF58D38C(v6);
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_1AF528C6C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for MovieFileAsset, &off_1F256EC68, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 1);
    v5 = *(v2 + 2);
    *&v11[15] = *(v2 + 47);
    v10[1] = v4;
    *v11 = v5;
    v10[0] = v3;
    memmove(__dst, v2, 0x33uLL);
    sub_1AF58680C(v10, v12);
    swift_getAtKeyPath();

    v12[0] = __dst[0];
    v12[1] = __dst[1];
    v13[0] = *v8;
    *(v13 + 15) = *&v8[15];
    sub_1AF586868(v12);
    return v9;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF528D50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for MovieFileAsset, &off_1F256EC68, a1);
  if (v4)
  {
    v5 = *v4;
    v6 = *(v4 + 1);
    v7 = *(v4 + 2);
    *&v15[15] = *(v4 + 47);
    v14[1] = v6;
    *v15 = v7;
    v14[0] = v5;
    memmove(__dst, v4, 0x33uLL);
    sub_1AF58680C(v14, v16);
    swift_getAtKeyPath();

    v16[0] = __dst[0];
    v16[1] = __dst[1];
    v17[0] = *v13;
    *(v17 + 15) = *&v13[15];
    sub_1AF586868(v16);
    v8 = sub_1AFDFC128();
    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }

  else
  {

    v10 = sub_1AFDFC128();
    v11 = *(*(v10 - 8) + 56);

    return v11(a2, 1, 1, v10);
  }
}

uint64_t sub_1AF528ECC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for MovieFileAsset, &off_1F256EC68, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 1);
    v5 = *(v2 + 2);
    *&v11[15] = *(v2 + 47);
    v10[1] = v4;
    *v11 = v5;
    v10[0] = v3;
    memmove(__dst, v2, 0x33uLL);
    sub_1AF58680C(v10, v12);
    swift_getAtKeyPath();

    v12[0] = __dst[0];
    v12[1] = __dst[1];
    v13[0] = *v8;
    *(v13 + 15) = *&v8[15];
    sub_1AF586868(v12);
    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF528FB4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for RenderSettings, &off_1F2569248, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF529064(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for RenderSettings, &off_1F2569248, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52911C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for RenderSettings, &off_1F2569248, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5291C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF529278@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for SceneFileAsset, &off_1F252BBF8, a1);
  if (v4)
  {
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    v23[2] = v4[2];
    v23[3] = v7;
    v23[0] = v5;
    v23[1] = v6;
    v16 = v4[2];
    v17 = v4[3];
    v14 = *v4;
    v15 = v4[1];
    sub_1AF4402F0(v23, v24);
    swift_getAtKeyPath();

    v24[0] = v14;
    v24[1] = v15;
    v24[2] = v16;
    v24[3] = v17;
    result = sub_1AF5A3564(v24);
    v9 = v18;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
  }

  else
  {

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0uLL;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  return result;
}

uint64_t sub_1AF529374(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for SineMoveAction, &off_1F2510728, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF529424(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for SineMoveAction, &off_1F2510728, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF5294DC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for AudioController, &off_1F256EED0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52966C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF529710@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  v8 = sub_1AF6824B0(a2, a3, a1);
  if (v8)
  {
    v9 = *(v8 + 32);

    swift_getAtKeyPath();

    v11 = v16;
    v12 = v17;
    v13 = v18;
    v14 = v19;
    v15 = v20;
  }

  else
  {

    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  *a4 = v11;
  *(a4 + 8) = v12;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v15;
  return result;
}

double sub_1AF529810@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for TextureFileData, &off_1F2544218, a1);
  if (v4)
  {
    v6 = *v4;
    v7 = v4[1];
    sub_1AF587E54(*v4, v7);
    swift_getAtKeyPath();

    sub_1AF587E7C(v6, v7);
  }

  else
  {

    result = 0.0;
    *a2 = xmmword_1AFE552C0;
  }

  return result;
}

uint64_t sub_1AF5298B8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for CameraController, &off_1F256D2B8, a1);
  if (v4)
  {
    sub_1AF5A64A0(v4, v11);
    swift_getAtKeyPath();

    result = sub_1AF5A64FC(v11);
    v6 = 0;
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    LOBYTE(v12) = 0;
  }

  else
  {

    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_1AF529A30(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleCopyData, &off_1F25557E0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF529AF8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleCopyData, &off_1F25557E0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF529BA8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleCopyData, &off_1F25557E0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 8;
  }
}

uint64_t sub_1AF529C58(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleCopyData, &off_1F25557E0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF529D14(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLifeInit, &off_1F254DE20, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF529DAC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLifeInit, &off_1F254DE20, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF529E50(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSizeInit, &off_1F254EC68, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF529EFC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSizeInit, &off_1F254EC68, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF529F9C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSubSpawn, &off_1F2566840, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52A03C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSubSpawn, &off_1F2566840, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52A0E8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSubSpawn, &off_1F2566840, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52A188(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSubSpawn, &off_1F2566840, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52A240(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for WrapAroundCamera, &off_1F2558BD8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52A2E0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for WrapAroundCamera, &off_1F2558BD8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52A398(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for CameraToneMapping, &off_1F2512660, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52A428(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52A4CC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v11 = *(v2 + 64);
    v10[2] = v4;
    v10[3] = v5;
    v10[1] = v3;
    memmove(v7, v2, 0x41uLL);
    sub_1AF4422C8(v10, v12);
    swift_getAtKeyPath();

    v12[2] = v7[2];
    v12[3] = v7[3];
    v13 = v8;
    v12[0] = v7[0];
    v12[1] = v7[1];
    sub_1AF58CDA0(v12);
    return v9;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52A5B0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v11 = *(v2 + 64);
    v10[2] = v4;
    v10[3] = v5;
    v10[1] = v3;
    memmove(v7, v2, 0x41uLL);
    sub_1AF4422C8(v10, v12);
    swift_getAtKeyPath();

    v12[2] = v7[2];
    v12[3] = v7[3];
    v13 = v8;
    v12[0] = v7[0];
    v12[1] = v7[1];
    sub_1AF58CDA0(v12);
    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52A6A4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v11 = *(v2 + 64);
    v10[2] = v4;
    v10[3] = v5;
    v10[1] = v3;
    memmove(v7, v2, 0x41uLL);
    sub_1AF4422C8(v10, v12);
    swift_getAtKeyPath();

    v12[2] = v7[2];
    v12[3] = v7[3];
    v13 = v8;
    v12[0] = v7[0];
    v12[1] = v7[1];
    sub_1AF58CDA0(v12);
    return v9;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52A794(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  v3 = v2;
  if (v2)
  {
    v14[0] = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    v15 = *(v2 + 64);
    v14[2] = v5;
    v14[3] = v6;
    v14[1] = v4;
    memmove(v10, v2, 0x41uLL);
    sub_1AF4422C8(v14, v16);
    swift_getAtKeyPath();

    v16[2] = v10[2];
    v16[3] = v10[3];
    v17 = v11;
    v16[0] = v10[0];
    v16[1] = v10[1];
    sub_1AF58CDA0(v16);
    v7 = 0x100000000;
    if (!v13)
    {
      v7 = 0;
    }

    v8 = v7 | v12;
  }

  else
  {

    v8 = 0;
  }

  return v8 | ((v3 == 0) << 40);
}

unint64_t sub_1AF52A8A4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  v3 = v2;
  if (v2)
  {
    v12[0] = *v2;
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[3];
    v13 = *(v2 + 64);
    v12[2] = v5;
    v12[3] = v6;
    v12[1] = v4;
    memmove(v9, v2, 0x41uLL);
    sub_1AF4422C8(v12, v14);
    swift_getAtKeyPath();

    v14[2] = v9[2];
    v14[3] = v9[3];
    v15 = v10;
    v14[0] = v9[0];
    v14[1] = v9[1];
    sub_1AF58CDA0(v14);
    v7 = v11;
  }

  else
  {

    v7 = 0;
  }

  return v7 | ((v3 == 0) << 32);
}

uint64_t sub_1AF52A9A0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v11 = *(v2 + 64);
    v10[2] = v4;
    v10[3] = v5;
    v10[1] = v3;
    memmove(v7, v2, 0x41uLL);
    sub_1AF4422C8(v10, v12);
    swift_getAtKeyPath();

    v12[2] = v7[2];
    v12[3] = v7[3];
    v13 = v8;
    v12[0] = v7[0];
    v12[1] = v7[1];
    sub_1AF58CDA0(v12);
    return v9;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52AA84(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorInit, &off_1F254CF90, a1);
  if (v2)
  {
    v10[0] = *v2;
    v3 = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v11 = *(v2 + 64);
    v10[2] = v4;
    v10[3] = v5;
    v10[1] = v3;
    memmove(v7, v2, 0x41uLL);
    sub_1AF4422C8(v10, v12);
    swift_getAtKeyPath();

    v12[2] = v7[2];
    v12[3] = v7[3];
    v13 = v8;
    v12[0] = v7[0];
    v12[1] = v7[1];
    sub_1AF58CDA0(v12);
    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52AB74(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PerspectiveCamera, &off_1F2511ED0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52AC18(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PerspectiveCamera, &off_1F2511ED0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52ACB0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PerspectiveCamera, &off_1F2511ED0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52AD60(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheEmitter, &off_1F2568E10, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF52ADF8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheEmitter, &off_1F2568E10, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52AE9C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PointCacheEmitter, &off_1F2568E10, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52AF4C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheEmitter, &off_1F2568E10, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52AFE4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheSpawner, &off_1F2568D70, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52B094(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheSpawner, &off_1F2568D70, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52B150(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureLoadPolicy, &off_1F2543D30, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52B1F8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureLoadPolicy, &off_1F2543D30, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52B2A0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for CameraColorGrading, &off_1F2512520, a1);
  if (v2)
  {
    memmove(v4, v2, 0x6CuLL);
    swift_getAtKeyPath();

    return v4[14];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52B348(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for CameraColorGrading, &off_1F2512520, a1);
  if (v2)
  {
    memmove(v5, v2, 0x6CuLL);
    swift_getAtKeyPath();

    v3 = v6;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52B3F8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ColorRampComponent, &off_1F2541AA8, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52B4BC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for EmitterDescription, &off_1F2563648, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 24);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(__dst, v2, 0x64uLL);
    sub_1AF445DA0(v12, v14);
    swift_getAtKeyPath();

    v14[4] = __dst[4];
    v14[5] = __dst[5];
    v15 = v10;
    v14[0] = __dst[0];
    v14[1] = __dst[1];
    v14[2] = __dst[2];
    v14[3] = __dst[3];
    sub_1AF57A684(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52B5E0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for EmitterDescription, &off_1F2563648, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = v2[1];
    v14[2] = v2[2];
    v14[0] = v4;
    v14[1] = v5;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    v15 = *(v2 + 24);
    v14[4] = v7;
    v14[5] = v8;
    v14[3] = v6;
    memmove(__dst, v2, 0x64uLL);
    sub_1AF445DA0(v14, v16);
    swift_getAtKeyPath();

    v16[4] = __dst[4];
    v16[5] = __dst[5];
    v17 = v12;
    v16[0] = __dst[0];
    v16[1] = __dst[1];
    v16[2] = __dst[2];
    v16[3] = __dst[3];
    sub_1AF57A684(v16);
    v9 = v13;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v3 == 0) << 32);
}

uint64_t sub_1AF52B704(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for EmitterDescription, &off_1F2563648, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 24);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x64uLL);
    sub_1AF445DA0(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v14[5] = v9[5];
    v15 = v10;
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF57A684(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52B804(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for EmitterDescription, &off_1F2563648, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v12[2] = v2[2];
    v12[0] = v3;
    v12[1] = v4;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 24);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(__dst, v2, 0x64uLL);
    sub_1AF445DA0(v12, v14);
    swift_getAtKeyPath();

    v14[4] = __dst[4];
    v14[5] = __dst[5];
    v15 = v10;
    v14[0] = __dst[0];
    v14[1] = __dst[1];
    v14[2] = __dst[2];
    v14[3] = __dst[3];
    sub_1AF57A684(v14);
    return v11;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52B908(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for MaterialController, &off_1F256AC70, a1);
  v3 = v2;
  if (v2)
  {
    sub_1AF5A828C(v2, v6);
    swift_getAtKeyPath();

    sub_1AF5A82E8(v6);
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_1AF52B9BC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for MaterialController, &off_1F256AC70, a1);
  if (v2)
  {
    sub_1AF5A828C(v2, v4);
    swift_getAtKeyPath();

    sub_1AF5A82E8(v4);
    return v4[8];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52BA68(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for MeshReferenceAsset, &off_1F252BE58, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52BB24(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for OrthographicCamera, &off_1F2511CF0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52BBD8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for OrthographicCamera, &off_1F2511CF0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52BC98(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for OrthographicCamera, &off_1F2511CF0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52BD40(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleBurstSpawn, &off_1F2567580, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52BDE0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleForceField, &off_1F25613E0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52BE98(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PrimitiveGenerator, &off_1F252F1F0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v15[1] = v2[1];
    v15[2] = v4;
    v15[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v15[5] = v2[5];
    v15[6] = v7;
    v15[3] = v5;
    v15[4] = v6;
    v8 = v2[7];
    v9 = v2[8];
    v10 = v2[9];
    *(v16 + 9) = *(v2 + 153);
    v15[8] = v9;
    v16[0] = v10;
    v15[7] = v8;
    memmove(v12, v2, 0xA9uLL);
    sub_1AF445D44(v15, v17);
    swift_getAtKeyPath();

    v17[8] = v12[8];
    v18[0] = *v13;
    *(v18 + 9) = *&v13[9];
    v17[4] = v12[4];
    v17[5] = v12[5];
    v17[6] = v12[6];
    v17[7] = v12[7];
    v17[0] = v12[0];
    v17[1] = v12[1];
    v17[2] = v12[2];
    v17[3] = v12[3];
    sub_1AF5A53B0(v17);
    return v14;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52BFB0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PrimitiveGenerator, &off_1F252F1F0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v15[2] = v2[2];
    v15[1] = v4;
    v15[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v15[5] = v2[5];
    v15[6] = v7;
    v15[3] = v5;
    v15[4] = v6;
    v8 = v2[7];
    v9 = v2[8];
    v10 = v2[9];
    *(v16 + 9) = *(v2 + 153);
    v15[8] = v9;
    v16[0] = v10;
    v15[7] = v8;
    memmove(__dst, v2, 0xA9uLL);
    sub_1AF445D44(v15, v17);
    swift_getAtKeyPath();

    v17[7] = __dst[7];
    v17[8] = __dst[8];
    v18[0] = v13[0];
    *(v18 + 9) = *(v13 + 9);
    v17[4] = __dst[4];
    v17[5] = __dst[5];
    v17[6] = __dst[6];
    v17[0] = __dst[0];
    v17[1] = __dst[1];
    v17[2] = __dst[2];
    v17[3] = __dst[3];
    sub_1AF5A53B0(v17);
    return v14;
  }

  else
  {

    return 1;
  }
}

unint64_t sub_1AF52C0F4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PrimitiveGenerator, &off_1F252F1F0, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = v2[2];
    v17[1] = v2[1];
    v17[2] = v5;
    v17[0] = v4;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[6];
    v17[5] = v2[5];
    v17[6] = v8;
    v17[3] = v6;
    v17[4] = v7;
    v9 = v2[7];
    v10 = v2[8];
    v11 = v2[9];
    *(v18 + 9) = *(v2 + 153);
    v17[8] = v10;
    v18[0] = v11;
    v17[7] = v9;
    memmove(v14, v2, 0xA9uLL);
    sub_1AF445D44(v17, v19);
    swift_getAtKeyPath();

    v19[8] = v14[8];
    v20[0] = *v15;
    *(v20 + 9) = *&v15[9];
    v19[4] = v14[4];
    v19[5] = v14[5];
    v19[6] = v14[6];
    v19[7] = v14[7];
    v19[0] = v14[0];
    v19[1] = v14[1];
    v19[2] = v14[2];
    v19[3] = v14[3];
    sub_1AF5A53B0(v19);
    v12 = v16;
  }

  else
  {

    v12 = 0;
  }

  return v12 | ((v3 == 0) << 32);
}

uint64_t sub_1AF52C224(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PrimitiveGenerator, &off_1F252F1F0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v15[1] = v2[1];
    v15[2] = v4;
    v15[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v15[5] = v2[5];
    v15[6] = v7;
    v15[3] = v5;
    v15[4] = v6;
    v8 = v2[7];
    v9 = v2[8];
    v10 = v2[9];
    *(v16 + 9) = *(v2 + 153);
    v15[8] = v9;
    v16[0] = v10;
    v15[7] = v8;
    memmove(v12, v2, 0xA9uLL);
    sub_1AF445D44(v15, v17);
    swift_getAtKeyPath();

    v17[8] = v12[8];
    v18[0] = v13[0];
    *(v18 + 9) = *(v13 + 9);
    v17[4] = v12[4];
    v17[5] = v12[5];
    v17[6] = v12[6];
    v17[7] = v12[7];
    v17[0] = v12[0];
    v17[1] = v12[1];
    v17[2] = v12[2];
    v17[3] = v12[3];
    sub_1AF5A53B0(v17);
    return v14;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52C340(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PrimitiveGenerator, &off_1F252F1F0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v15[1] = v2[1];
    v15[2] = v4;
    v15[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v15[5] = v2[5];
    v15[6] = v7;
    v15[3] = v5;
    v15[4] = v6;
    v8 = v2[7];
    v9 = v2[8];
    v10 = v2[9];
    *(v16 + 9) = *(v2 + 153);
    v15[8] = v9;
    v16[0] = v10;
    v15[7] = v8;
    memmove(v12, v2, 0xA9uLL);
    sub_1AF445D44(v15, v17);
    swift_getAtKeyPath();

    v17[8] = v12[8];
    v18[0] = *v13;
    *(v18 + 9) = *&v13[9];
    v17[4] = v12[4];
    v17[5] = v12[5];
    v17[6] = v12[6];
    v17[7] = v12[7];
    v17[0] = v12[0];
    v17[1] = v12[1];
    v17[2] = v12[2];
    v17[3] = v12[3];
    sub_1AF5A53B0(v17);
    return v14;
  }

  else
  {

    return 10;
  }
}

uint64_t sub_1AF52C458(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PrimitiveGenerator, &off_1F252F1F0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v15[2] = v2[2];
    v15[1] = v4;
    v15[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v15[5] = v2[5];
    v15[6] = v7;
    v15[3] = v5;
    v15[4] = v6;
    v8 = v2[7];
    v9 = v2[8];
    v10 = v2[9];
    *(v16 + 9) = *(v2 + 153);
    v15[8] = v9;
    v16[0] = v10;
    v15[7] = v8;
    memmove(__dst, v2, 0xA9uLL);
    sub_1AF445D44(v15, v17);
    swift_getAtKeyPath();

    v17[7] = __dst[7];
    v17[8] = __dst[8];
    v18[0] = v13[0];
    *(v18 + 9) = *(v13 + 9);
    v17[4] = __dst[4];
    v17[5] = __dst[5];
    v17[6] = __dst[6];
    v17[0] = __dst[0];
    v17[1] = __dst[1];
    v17[2] = __dst[2];
    v17[3] = __dst[3];
    sub_1AF5A53B0(v17);
    return v14;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52C5B0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TexturePlaceholder, &off_1F2546C68, a1))
  {
    swift_unknownObjectRetain();
    swift_getAtKeyPath();
    swift_unknownObjectRelease();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52C664(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureRequireMask, &off_1F2546318, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52C714(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireMask, &off_1F2546318, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF52C7AC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireMask, &off_1F2546318, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52C850(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureShaderAsset, &off_1F2543F30, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v11[1] = v2[1];
    v11[2] = v4;
    v11[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v11[5] = v2[5];
    v11[6] = v7;
    v11[3] = v5;
    v11[4] = v6;
    memmove(__dst, v2, 0x70uLL);
    sub_1AF5A57D8(v11, v12);
    swift_getAtKeyPath();

    v12[4] = __dst[4];
    v12[5] = __dst[5];
    v12[6] = __dst[6];
    v12[0] = __dst[0];
    v12[1] = __dst[1];
    v12[2] = __dst[2];
    v12[3] = __dst[3];
    sub_1AF5A5834(v12);
    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52C94C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureShaderAsset, &off_1F2543F30, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v11[1] = v2[1];
    v11[2] = v4;
    v11[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v11[5] = v2[5];
    v11[6] = v7;
    v11[3] = v5;
    v11[4] = v6;
    memmove(v9, v2, 0x70uLL);
    sub_1AF5A57D8(v11, v12);
    swift_getAtKeyPath();

    v12[4] = v9[4];
    v12[5] = v9[5];
    v12[6] = v9[6];
    v12[0] = v9[0];
    v12[1] = v9[1];
    v12[2] = v9[2];
    v12[3] = v9[3];
    sub_1AF5A5834(v12);
    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52CA48(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureShaderAsset, &off_1F2543F30, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v11[1] = v2[1];
    v11[2] = v4;
    v11[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v11[5] = v2[5];
    v11[6] = v7;
    v11[3] = v5;
    v11[4] = v6;
    memmove(__dst, v2, 0x70uLL);
    sub_1AF5A57D8(v11, v12);
    swift_getAtKeyPath();

    v12[4] = __dst[4];
    v12[5] = __dst[5];
    v12[6] = __dst[6];
    v12[0] = __dst[0];
    v12[1] = __dst[1];
    v12[2] = __dst[2];
    v12[3] = __dst[3];
    sub_1AF5A5834(v12);
    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52CB58(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureShaderAsset, &off_1F2543F30, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v11[1] = v2[1];
    v11[2] = v4;
    v11[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v11[5] = v2[5];
    v11[6] = v7;
    v11[3] = v5;
    v11[4] = v6;
    memmove(v9, v2, 0x70uLL);
    sub_1AF5A57D8(v11, v12);
    swift_getAtKeyPath();

    v12[4] = v9[4];
    v12[5] = v9[5];
    v12[6] = v9[6];
    v12[0] = v9[0];
    v12[1] = v9[1];
    v12[2] = v9[2];
    v12[3] = v9[3];
    sub_1AF5A5834(v12);
    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52CC48(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureShaderAsset, &off_1F2543F30, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v11[1] = v2[1];
    v11[2] = v4;
    v11[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[6];
    v11[5] = v2[5];
    v11[6] = v7;
    v11[3] = v5;
    v11[4] = v6;
    memmove(__dst, v2, 0x70uLL);
    sub_1AF5A57D8(v11, v12);
    swift_getAtKeyPath();

    v12[4] = __dst[4];
    v12[5] = __dst[5];
    v12[6] = __dst[6];
    v12[0] = __dst[0];
    v12[1] = __dst[1];
    v12[2] = __dst[2];
    v12[3] = __dst[3];
    sub_1AF5A5834(v12);
    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52CE40(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for AnimationTimeSource, &off_1F2510EB8, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x3AuLL);
    swift_getAtKeyPath();

    return __dst[59];
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52CED8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for AnimationTimeSource, &off_1F2510EB8, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x3AuLL);
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52CF7C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for AnimationTimeSource, &off_1F2510EB8, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x3AuLL);
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52D024(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for AnimationTimeSource, &off_1F2510EB8, a1);
  if (v2)
  {
    memmove(v5, v2, 0x3AuLL);
    swift_getAtKeyPath();

    v3 = v6;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t sub_1AF52D0D4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleBoxCollider, &off_1F2552898, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52D17C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleBoxCollider, &off_1F2552898, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52D20C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleGrowEmitter, &off_1F254DA00, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52D2DC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleGrowEmitter, &off_1F254DA00, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52D3A4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleGrowEmitter, &off_1F254DA00, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF52D45C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleGrowEmitter, &off_1F254DA00, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52D520@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  v8 = sub_1AF6824B0(a2, a3, a1);
  if (v8)
  {
    v9 = *(v8 + 32);

    swift_getAtKeyPath();

    v10 = sub_1AFDFC128();
    return (*(*(v10 - 8) + 56))(a4, 0, 1, v10);
  }

  else
  {

    v12 = sub_1AFDFC128();
    v13 = *(*(v12 - 8) + 56);

    return v13(a4, 1, 1, v12);
  }
}

uint64_t sub_1AF52D694(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    v9 = *(v8 + 32);

    swift_getAtKeyPath();

    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52D770(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for PointCacheFromModel, &off_1F2568160, a1);
  if (v2)
  {
    sub_1AF585A9C(v2, v4);
    swift_getAtKeyPath();

    sub_1AF585AF8(v4);
    return v5;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1AF52D808(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheGenerator, &off_1F2567FB0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52D8B8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheGenerator, &off_1F2567FB0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF52D968(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for PointCacheGenerator, &off_1F2567FB0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52DA24(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ProjectorParameters, &off_1F2558848, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52DAC8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ProjectorParameters, &off_1F2558848, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52DB60(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ProjectorParameters, &off_1F2558848, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52DC10(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for SDFTextureGenerator, &off_1F252FC58, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52DCBC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for SDFTextureGenerator, &off_1F252FC58, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52DD74(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for GraphScriptingConfig, &off_1F253C070, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 7;
  }
}

unint64_t sub_1AF52DE4C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleLineRenderer, &off_1F2550648, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52DF04(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLineRenderer, &off_1F2550648, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF52DFA4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLineRenderer, &off_1F2550648, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF52E044(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLineRenderer, &off_1F2550648, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52E0E4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleLineRenderer, &off_1F2550648, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = 0x100000000;
    if (!v7)
    {
      v3 = 0;
    }

    v4 = v3 | v6;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v2 == 0) << 40);
}

uint64_t sub_1AF52E1B0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLineRenderer, &off_1F2550648, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52E25C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF52E30C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52E3B0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleMeshRenderer, &off_1F2550788, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF52E450(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleMeshRenderer, &off_1F2550788, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52E4FC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v4, v2, 0x8BuLL);
    swift_getAtKeyPath();

    return v4[19];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52E5A0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v5, v2, 0x8BuLL);
    swift_getAtKeyPath();

    v3 = v6;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52E650(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v4, v2, 0x8BuLL);
    swift_getAtKeyPath();

    return v4[143];
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52E6E8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v4, v2, 0x8BuLL);
    swift_getAtKeyPath();

    return v4[18];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52E790(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v4, v2, 0x8BuLL);
    swift_getAtKeyPath();

    return v4[143];
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF52E828(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v4, v2, 0x8BuLL);
    swift_getAtKeyPath();

    return v4[143];
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF52E8C0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v4, v2, 0x8BuLL);
    swift_getAtKeyPath();

    return v4[143];
  }

  else
  {

    return 7;
  }
}

unint64_t sub_1AF52E958(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleQuadRenderer, &off_1F2551038, a1);
  if (v2)
  {
    memmove(v6, v2, 0x8BuLL);
    swift_getAtKeyPath();

    v3 = 0x100000000;
    if (!v8)
    {
      v3 = 0;
    }

    v4 = v3 | v7;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v2 == 0) << 40);
}

uint64_t sub_1AF52EA1C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleRibbonTrails, &off_1F25665D0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF52EAAC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonTrails, &off_1F25665D0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52EB54(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleRibbonTrails, &off_1F25665D0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52EBFC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleRibbonTrails, &off_1F25665D0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52EC98(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverLife, &off_1F25577E8, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    *(v13 + 9) = *(v2 + 89);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x69uLL);
    sub_1AF4425FC(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = v10[0];
    *(v15 + 9) = *(v10 + 9);
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF58FF84(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52EDA4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverLife, &off_1F25577E8, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    *(v13 + 9) = *(v2 + 89);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x69uLL);
    sub_1AF4425FC(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = *v10;
    *(v15 + 9) = *&v10[9];
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF58FF84(v14);
    return v11;
  }

  else
  {

    return 3;
  }
}

unint64_t sub_1AF52EE9C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverLife, &off_1F25577E8, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = v2[2];
    v14[1] = v2[1];
    v14[2] = v5;
    v14[0] = v4;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    *(v15 + 9) = *(v2 + 89);
    v14[4] = v7;
    v15[0] = v8;
    v14[3] = v6;
    memmove(v11, v2, 0x69uLL);
    sub_1AF4425FC(v14, v16);
    swift_getAtKeyPath();

    v16[4] = v11[4];
    v17[0] = *v12;
    *(v17 + 9) = *&v12[9];
    v16[0] = v11[0];
    v16[1] = v11[1];
    v16[2] = v11[2];
    v16[3] = v11[3];
    sub_1AF58FF84(v16);
    v9 = v13;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v3 == 0) << 32);
}

uint64_t sub_1AF52EFB4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverLife, &off_1F25577E8, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    *(v13 + 9) = *(v2 + 89);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x69uLL);
    sub_1AF4425FC(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = *v10;
    *(v15 + 9) = *&v10[9];
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF58FF84(v14);
    return v11;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52F0AC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverLife, &off_1F25577E8, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    *(v13 + 9) = *(v2 + 89);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(__dst, v2, 0x69uLL);
    sub_1AF4425FC(v12, v14);
    swift_getAtKeyPath();

    v14[4] = __dst[4];
    v15[0] = v10[0];
    *(v15 + 9) = *(v10 + 9);
    v14[0] = __dst[0];
    v14[1] = __dst[1];
    v14[2] = __dst[2];
    v14[3] = __dst[3];
    sub_1AF58FF84(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52F1C4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleVelocityInit, &off_1F254F688, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52F270(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleVelocityInit, &off_1F254F688, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52F328(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleVelocityInit, &off_1F254F688, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF52F3C8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextToImageGenerator, &off_1F2530868, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[3];
    v13[2] = v2[2];
    v13[3] = v5;
    v13[0] = v3;
    v13[1] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[6];
    v14 = *(v2 + 112);
    v13[5] = v7;
    v13[6] = v8;
    v13[4] = v6;
    memmove(v10, v2, 0x71uLL);
    sub_1AF582EBC(v13, v15);
    swift_getAtKeyPath();

    v15[4] = v10[4];
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16 = v11;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    sub_1AF582F18(v15);
    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52F4E0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextToImageGenerator, &off_1F2530868, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = v2[1];
    v6 = v2[3];
    v15[2] = v2[2];
    v15[3] = v6;
    v15[0] = v4;
    v15[1] = v5;
    v7 = v2[4];
    v8 = v2[5];
    v9 = v2[6];
    v16 = *(v2 + 112);
    v15[5] = v8;
    v15[6] = v9;
    v15[4] = v7;
    memmove(v12, v2, 0x71uLL);
    sub_1AF582EBC(v15, v17);
    swift_getAtKeyPath();

    v17[4] = v12[4];
    v17[5] = v12[5];
    v17[6] = v12[6];
    v18 = v13;
    v17[0] = v12[0];
    v17[1] = v12[1];
    v17[2] = v12[2];
    v17[3] = v12[3];
    sub_1AF582F18(v17);
    v10 = v14;
  }

  else
  {

    v10 = 0;
  }

  return v10 | ((v3 == 0) << 8);
}

uint64_t sub_1AF52F5EC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextToImageGenerator, &off_1F2530868, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[3];
    v13[2] = v2[2];
    v13[3] = v5;
    v13[0] = v3;
    v13[1] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[6];
    v14 = *(v2 + 112);
    v13[5] = v7;
    v13[6] = v8;
    v13[4] = v6;
    memmove(v10, v2, 0x71uLL);
    sub_1AF582EBC(v13, v15);
    swift_getAtKeyPath();

    v15[4] = v10[4];
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16 = v11;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    sub_1AF582F18(v15);
    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52F6F4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextToImageGenerator, &off_1F2530868, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[3];
    v13[2] = v2[2];
    v13[3] = v5;
    v13[0] = v3;
    v13[1] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[6];
    v14 = *(v2 + 112);
    v13[5] = v7;
    v13[6] = v8;
    v13[4] = v6;
    memmove(v10, v2, 0x71uLL);
    sub_1AF582EBC(v13, v15);
    swift_getAtKeyPath();

    v15[4] = v10[4];
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16 = v11;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    sub_1AF582F18(v15);
    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52F800(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextToImageGenerator, &off_1F2530868, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[3];
    v13[2] = v2[2];
    v13[3] = v5;
    v13[0] = v3;
    v13[1] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[6];
    v14 = *(v2 + 112);
    v13[5] = v7;
    v13[6] = v8;
    v13[4] = v6;
    memmove(v10, v2, 0x71uLL);
    sub_1AF582EBC(v13, v15);
    swift_getAtKeyPath();

    v15[4] = v10[4];
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16 = v11;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    sub_1AF582F18(v15);
    return v12;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1AF52F8FC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextToImageGenerator, &off_1F2530868, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[3];
    v13[2] = v2[2];
    v13[3] = v5;
    v13[0] = v3;
    v13[1] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[6];
    v14 = *(v2 + 112);
    v13[5] = v7;
    v13[6] = v8;
    v13[4] = v6;
    memmove(v10, v2, 0x71uLL);
    sub_1AF582EBC(v13, v15);
    swift_getAtKeyPath();

    v15[4] = v10[4];
    v15[5] = v10[5];
    v15[6] = v10[6];
    v16 = v11;
    v15[0] = v10[0];
    v15[1] = v10[1];
    v15[2] = v10[2];
    v15[3] = v10[3];
    sub_1AF582F18(v15);
    return v12;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52F9FC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireMipmap, &off_1F2546458, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52FAE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v15;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52FBF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v14[47];
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52FCE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *), void (*a7)(void *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v14[5];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF52FDB0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for OrientationConstraint, &off_1F25542A0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF52FE60(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for OrientationConstraint, &off_1F25542A0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF52FEF8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for OrientationConstraint, &off_1F25542A0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF52FF9C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverLife, &off_1F2554DE0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    v11 = *(v2 + 32);
    v10[0] = v3;
    v10[1] = v4;
    v8 = *(v2 + 32);
    v6 = *v2;
    v7 = *(v2 + 16);
    sub_1AF4425A0(v10, v12);
    swift_getAtKeyPath();

    v12[0] = v6;
    v12[1] = v7;
    v13 = v8;
    sub_1AF58F86C(v12);
    return v9;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF530068(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverLife, &off_1F2554DE0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    v11 = *(v2 + 32);
    v10[0] = v3;
    v10[1] = v4;
    v8 = *(v2 + 32);
    v6 = *v2;
    v7 = *(v2 + 16);
    sub_1AF4425A0(v10, v12);
    swift_getAtKeyPath();

    v12[0] = v6;
    v12[1] = v7;
    v13 = v8;
    sub_1AF58F86C(v12);
    return v9;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF530140(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverLife, &off_1F2554DE0, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = *(v2 + 16);
    v13 = *(v2 + 32);
    v12[0] = v4;
    v12[1] = v5;
    v10 = *(v2 + 32);
    v8 = *v2;
    v9 = *(v2 + 16);
    sub_1AF4425A0(v12, v14);
    swift_getAtKeyPath();

    v14[0] = v8;
    v14[1] = v9;
    v15 = v10;
    sub_1AF58F86C(v14);
    v6 = v11;
  }

  else
  {

    v6 = 0;
  }

  return v6 | ((v3 == 0) << 32);
}

uint64_t sub_1AF530224(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverLife, &off_1F2554DE0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    v11 = *(v2 + 32);
    v10[0] = v3;
    v10[1] = v4;
    v8 = *(v2 + 32);
    v6 = *v2;
    v7 = *(v2 + 16);
    sub_1AF4425A0(v10, v12);
    swift_getAtKeyPath();

    v12[0] = v6;
    v12[1] = v7;
    v13 = v8;
    sub_1AF58F86C(v12);
    return v9;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF5302F0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverLife, &off_1F2554DE0, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 16);
    v11 = *(v2 + 32);
    v10[0] = v3;
    v10[1] = v4;
    v8 = *(v2 + 32);
    v6 = *v2;
    v7 = *(v2 + 16);
    sub_1AF4425A0(v10, v12);
    swift_getAtKeyPath();

    v12[0] = v6;
    v12[1] = v7;
    v13 = v8;
    sub_1AF58F86C(v12);
    return v9;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5303C8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticlePlaneCollider, &off_1F25530C8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF530480(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePlaneCollider, &off_1F25530C8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF530520(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePointRenderer, &off_1F2550B88, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5305C4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticlePointRenderer, &off_1F2550B88, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF530674(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePointRenderer, &off_1F2550B88, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF53070C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePointRenderer, &off_1F2550B88, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF5307A4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePointRenderer, &off_1F2550B88, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF53083C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticlePointRenderer, &off_1F2550B88, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = 0x100000000;
    if (!v7)
    {
      v3 = 0;
    }

    v4 = v3 | v6;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v2 == 0) << 40);
}

uint64_t sub_1AF53093C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for REMeshAssetPointCache, &off_1F25683E0, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5309F8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for SceneKitAssetInstance, &off_1F2546F58, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF530A90(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for SceneKitAssetInstance, &off_1F2546F58, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF530B34(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for TextureLoadingOptions, &off_1F2543FE0, a1);
  if (v2)
  {
    memmove(v4, v2, 0x3AuLL);
    swift_getAtKeyPath();

    return v4[63];
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF530BCC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingSolver, &off_1F2565268, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 2);
    v12[1] = *(v2 + 1);
    v12[2] = v4;
    v12[0] = v3;
    v5 = *(v2 + 3);
    v6 = *(v2 + 4);
    v7 = *(v2 + 5);
    *(v13 + 15) = *(v2 + 95);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x63uLL);
    sub_1AF443184(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = *v10;
    *(v15 + 15) = *&v10[15];
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF597500(v14);
    return v11;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF530CC4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingSolver, &off_1F2565268, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 2);
    v12[1] = *(v2 + 1);
    v12[2] = v4;
    v12[0] = v3;
    v5 = *(v2 + 3);
    v6 = *(v2 + 4);
    v7 = *(v2 + 5);
    *(v13 + 15) = *(v2 + 95);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x63uLL);
    sub_1AF443184(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = v10[0];
    *(v15 + 15) = *(v10 + 15);
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF597500(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF530DE0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingSolver, &off_1F2565268, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 2);
    v12[1] = *(v2 + 1);
    v12[2] = v4;
    v12[0] = v3;
    v5 = *(v2 + 3);
    v6 = *(v2 + 4);
    v7 = *(v2 + 5);
    *(v13 + 15) = *(v2 + 95);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x63uLL);
    sub_1AF443184(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = *v10;
    *(v15 + 15) = *&v10[15];
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF597500(v14);
    return v11;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF530ED8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingSolver, &off_1F2565268, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(v2 + 2);
    v12[1] = *(v2 + 1);
    v12[2] = v4;
    v12[0] = v3;
    v5 = *(v2 + 3);
    v6 = *(v2 + 4);
    v7 = *(v2 + 5);
    *(v13 + 15) = *(v2 + 95);
    v12[4] = v6;
    v13[0] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x63uLL);
    sub_1AF443184(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v15[0] = *v10;
    *(v15 + 15) = *&v10[15];
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF597500(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF530FE4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingSolver, &off_1F2565268, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = *(v2 + 2);
    v14[1] = *(v2 + 1);
    v14[2] = v5;
    v14[0] = v4;
    v6 = *(v2 + 3);
    v7 = *(v2 + 4);
    v8 = *(v2 + 5);
    *(v15 + 15) = *(v2 + 95);
    v14[4] = v7;
    v15[0] = v8;
    v14[3] = v6;
    memmove(v11, v2, 0x63uLL);
    sub_1AF443184(v14, v16);
    swift_getAtKeyPath();

    v16[4] = v11[4];
    v17[0] = *v12;
    *(v17 + 15) = *&v12[15];
    v16[0] = v11[0];
    v16[1] = v11[1];
    v16[2] = v11[2];
    v16[3] = v11[3];
    sub_1AF597500(v16);
    v9 = v13;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v3 == 0) << 32);
}

uint64_t sub_1AF5310FC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x69uLL);
    swift_getAtKeyPath();

    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5311A0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(v4, v2, 0x69uLL);
    swift_getAtKeyPath();

    return v4[111];
  }

  else
  {

    return 3;
  }
}

unint64_t sub_1AF531238(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(v5, v2, 0x69uLL);
    swift_getAtKeyPath();

    v3 = v6;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF5312E8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(v4, v2, 0x69uLL);
    swift_getAtKeyPath();

    return v4[111];
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF531380(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(v4, v2, 0x69uLL);
    swift_getAtKeyPath();

    return v4[111];
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF531418(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x69uLL);
    swift_getAtKeyPath();

    v3 = 0x100000000;
    if (!v8)
    {
      v3 = 0;
    }

    v4 = v3 | v7;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v2 == 0) << 40);
}

uint64_t sub_1AF5314DC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleRibbonRenderer, &off_1F2551800, a1);
  if (v2)
  {
    memmove(v4, v2, 0x69uLL);
    swift_getAtKeyPath();

    return v4[111];
  }

  else
  {

    return 5;
  }
}

unint64_t sub_1AF531574(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSphereCollider, &off_1F2553488, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF531634(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSphereCollider, &off_1F2553488, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF5316DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 3;
  }
}

unint64_t sub_1AF53177C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF531834(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF5318D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF531974(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = 0x100000000;
    if (!v13)
    {
      v9 = 0;
    }

    v10 = v9 | v12;
  }

  else
  {

    v10 = 0;
  }

  return v10 | ((v8 == 0) << 40);
}

uint64_t sub_1AF531A40(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF531B64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *), void (*a7)(void *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v14[4];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF531C30@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  if (sub_1AF6824B0(a2, a3, a1))
  {
    swift_getAtKeyPath();

    v9 = 0;
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  else
  {

    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  *a4 = v10;
  *(a4 + 16) = v11;
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  *(a4 + 64) = v9;
  return result;
}

uint64_t sub_1AF531CFC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for LastFrameWorldTransform, &off_1F2529EB0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF531DA4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for NodeTransformController, &off_1F256D418, a1);
  if (v4)
  {
    sub_1AF5A5D54(v4, v11);
    swift_getAtKeyPath();

    result = sub_1AF5A5DB0(v11);
    v6 = 0;
    v7 = v12;
    v8 = v13;
    v9 = v14;
    v10 = v15;
    LOBYTE(v12) = 0;
  }

  else
  {

    v6 = 1;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v8;
  *(a2 + 32) = v9;
  *(a2 + 48) = v10;
  *(a2 + 64) = v6;
  return result;
}

uint64_t sub_1AF531E68(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for NodeTransformController, &off_1F256D418, a1);
  if (v2)
  {
    sub_1AF5A5D54(v2, v4);
    swift_getAtKeyPath();

    sub_1AF5A5DB0(v4);
    return v5;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF531F14(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for OrientationOverVelocity, &off_1F2554630, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF531FB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {

    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5320A4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverTexture, &off_1F2557A90, a1);
  if (v2)
  {
    memmove(v4, v2, 0x44uLL);
    swift_getAtKeyPath();

    return v4[9];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF532148(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverTexture, &off_1F2557A90, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x44uLL);
    swift_getAtKeyPath();

    return __dst[71];
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF5321E0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverTexture, &off_1F2557A90, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x44uLL);
    swift_getAtKeyPath();

    return __dst[71];
  }

  else
  {

    return 5;
  }
}

unint64_t sub_1AF532278(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverTexture, &off_1F2557A90, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x44uLL);
    swift_getAtKeyPath();

    v3 = v6;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF532328(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverTexture, &off_1F2557A90, a1);
  if (v2)
  {
    memmove(__dst, v2, 0x44uLL);
    swift_getAtKeyPath();

    return __dst[71];
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF5323C0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireSizeLimit, &off_1F25464F8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF532458(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireSizeLimit, &off_1F25464F8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5324FC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for NodeVisibilityController, &off_1F256D3F8, a1);
  if (v2)
  {
    sub_1AF5A5F2C(v2, v4);
    swift_getAtKeyPath();

    sub_1AF5A5F88(v4);
    return v4[5];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5325A4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for NodeVisibilityController, &off_1F256D3F8, a1);
  v3 = v2;
  if (v2)
  {
    sub_1AF5A5F2C(v2, v6);
    swift_getAtKeyPath();

    sub_1AF5A5F88(v6);
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_1AF532658(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for NodeVisibilityController, &off_1F256D3F8, a1);
  if (v2)
  {
    sub_1AF5A5F2C(v2, v4);
    swift_getAtKeyPath();

    sub_1AF5A5F88(v4);
    return v4[47];
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF5326F0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF5327A0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverTexture, &off_1F2555348, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF53284C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverTexture, &off_1F2555348, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF532904(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverTexture, &off_1F2555348, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

unint64_t sub_1AF5329A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF532A64(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleGaussianRenderer, &off_1F25502B0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF532B14(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleGaussianRenderer, &off_1F25502B0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF532BDC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleGaussianRenderer, &off_1F25502B0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF532C8C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleGaussianRenderer, &off_1F25502B0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF532D48(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleLocalBoxCollider, &off_1F2552C48, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF532E00(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleLocalBoxCollider, &off_1F2552C48, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF532EA0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for ParticleLocalBoxCollider, &off_1F2552C48, a1);
  if (v4)
  {
    swift_getAtKeyPath();

    v7 = v10;
    v6 = v11;
    v9 = v12;
    v8 = v13;
  }

  else
  {

    v7 = 0;
    v6 = 0;
    v9 = 0;
    v8 = 0;
  }

  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 32) = v4 == 0;
  return result;
}

uint64_t sub_1AF532F70(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleOpacityEvolution, &off_1F2556D00, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF53306C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleOpacityEvolution, &off_1F2556D00, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF533160(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleOpacityEvolution, &off_1F2556D00, a1);
  if (v2)
  {

    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF533260(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleOpacityEvolution, &off_1F2556D00, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF533350(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSizeOverVelocity, &off_1F2557D20, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5333FC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSizeOverVelocity, &off_1F2557D20, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

unint64_t sub_1AF53349C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSizeOverVelocity, &off_1F2557D20, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF533554(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSizeOverVelocity, &off_1F2557D20, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF5335F4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for RenderGraphTextureTarget, &off_1F25463B8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

unint64_t sub_1AF5336C8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  v13 = v12;
  if (v12)
  {
    a6(v12, v16);
    swift_getAtKeyPath();

    a7(v16);
    v14 = v17;
  }

  else
  {

    v14 = 0;
  }

  return v14 | ((v13 == 0) << 32);
}

uint64_t sub_1AF5337DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *), void (*a7)(void *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v14[5];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5338A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF53394C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverPosition, &off_1F25550D8, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF533A30(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverPosition, &off_1F25550D8, a1);
  if (v2)
  {

    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF533B1C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverPosition, &off_1F25550D8, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF533BF4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverPosition, &off_1F25550D8, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF533CD4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverVelocity, &off_1F25555B0, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF533DB0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverVelocity, &off_1F25555B0, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF533E88(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleColorOverVelocity, &off_1F25555B0, a1);
  if (v2)
  {

    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF533F6C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleColorOverVelocity, &off_1F25555B0, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF53403C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF5340DC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF534188(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

unint64_t sub_1AF534228(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF5342E0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF534380(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF534420(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticlePrimitiveRenderer, &off_1F2550EF8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = 0x100000000;
    if (!v7)
    {
      v3 = 0;
    }

    v4 = v3 | v6;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v2 == 0) << 40);
}

uint64_t sub_1AF5344EC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleSpawnOverDistance, &off_1F25676C0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF53458C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleSpawnOverDistance, &off_1F25676C0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF534680@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, void (*a4)(uint64_t, _BYTE *)@<X5>, uint64_t (*a5)(_BYTE *)@<X6>, uint64_t a6@<X8>)
{

  v12 = sub_1AF6824B0(a2, a3, a1);
  if (v12)
  {
    a4(v12, v19);
    swift_getAtKeyPath();

    result = a5(v19);
    v14 = 0;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v18 = v23;
    LOBYTE(v20) = 0;
  }

  else
  {

    v14 = 1;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a6 = v15;
  *(a6 + 16) = v16;
  *(a6 + 32) = v17;
  *(a6 + 48) = v18;
  *(a6 + 64) = v14;
  return result;
}

unint64_t sub_1AF5347A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  v13 = v12;
  if (v12)
  {
    a6(v12, v16);
    swift_getAtKeyPath();

    a7(v16);
    v14 = v17;
  }

  else
  {

    v14 = 0;
  }

  return v14 | ((v13 == 0) << 32);
}

uint64_t sub_1AF534878(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePeriodicBurstSpawn, &off_1F25674E0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF53491C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePeriodicBurstSpawn, &off_1F25674E0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5349C4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleVolumetricRenderer, &off_1F2552450, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF534A74(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for CameraEffectBloomController, &off_1F256D218, a1);
  if (v2)
  {
    sub_1AF5A6774(v2, v4);
    swift_getAtKeyPath();

    sub_1AF5A67D0(v4);
    return v4[7];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF534C48(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  v3 = v2;
  if (v2)
  {
    v4 = v2[1];
    v15[0] = *v2;
    v15[1] = v4;
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
    v16 = *(v2 + 80);
    v15[3] = v6;
    v15[4] = v7;
    v15[2] = v5;
    memmove(v11, v2, 0x51uLL);
    sub_1AF4431E0(v15, v17);
    swift_getAtKeyPath();

    v17[2] = v11[2];
    v17[3] = v11[3];
    v17[4] = v11[4];
    v18 = v12;
    v17[0] = v11[0];
    v17[1] = v11[1];
    sub_1AF598838(v17);
    v8 = 0x100000000;
    if (!v14)
    {
      v8 = 0;
    }

    v9 = v8 | v13;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v3 == 0) << 40);
}

uint64_t sub_1AF534D60(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  if (v2)
  {
    v3 = v2[1];
    v11[0] = *v2;
    v11[1] = v3;
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[4];
    v12 = *(v2 + 80);
    v11[3] = v5;
    v11[4] = v6;
    v11[2] = v4;
    memmove(v8, v2, 0x51uLL);
    sub_1AF4431E0(v11, v13);
    swift_getAtKeyPath();

    v13[2] = v8[2];
    v13[3] = v8[3];
    v13[4] = v8[4];
    v14 = v9;
    v13[0] = v8[0];
    v13[1] = v8[1];
    sub_1AF598838(v13);
    return v10;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF534E5C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  v3 = v2;
  if (v2)
  {
    v4 = v2[1];
    v13[0] = *v2;
    v13[1] = v4;
    v5 = v2[2];
    v6 = v2[3];
    v7 = v2[4];
    v14 = *(v2 + 80);
    v13[3] = v6;
    v13[4] = v7;
    v13[2] = v5;
    memmove(v10, v2, 0x51uLL);
    sub_1AF4431E0(v13, v15);
    swift_getAtKeyPath();

    v15[2] = v10[2];
    v15[3] = v10[3];
    v15[4] = v10[4];
    v16 = v11;
    v15[0] = v10[0];
    v15[1] = v10[1];
    sub_1AF598838(v15);
    v8 = v12;
  }

  else
  {

    v8 = 0;
  }

  return v8 | ((v3 == 0) << 32);
}

uint64_t sub_1AF534F60(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  if (v2)
  {
    v3 = v2[1];
    v11[0] = *v2;
    v11[1] = v3;
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[4];
    v12 = *(v2 + 80);
    v11[3] = v5;
    v11[4] = v6;
    v11[2] = v4;
    memmove(v8, v2, 0x51uLL);
    sub_1AF4431E0(v11, v13);
    swift_getAtKeyPath();

    v13[2] = v8[2];
    v13[3] = v8[3];
    v13[4] = v8[4];
    v14 = v9;
    v13[0] = v8[0];
    v13[1] = v8[1];
    sub_1AF598838(v13);
    return v10;
  }

  else
  {

    return 7;
  }
}

uint64_t sub_1AF53504C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  if (v2)
  {
    v3 = v2[1];
    v11[0] = *v2;
    v11[1] = v3;
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[4];
    v12 = *(v2 + 80);
    v11[3] = v5;
    v11[4] = v6;
    v11[2] = v4;
    memmove(v8, v2, 0x51uLL);
    sub_1AF4431E0(v11, v13);
    swift_getAtKeyPath();

    v13[2] = v8[2];
    v13[3] = v8[3];
    v13[4] = v8[4];
    v14 = v9;
    v13[0] = v8[0];
    v13[1] = v8[1];
    sub_1AF598838(v13);
    return v10;
  }

  else
  {

    return 8;
  }
}

uint64_t sub_1AF535138(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  if (v2)
  {
    v3 = v2[1];
    v11[0] = *v2;
    v11[1] = v3;
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[4];
    v12 = *(v2 + 80);
    v11[3] = v5;
    v11[4] = v6;
    v11[2] = v4;
    memmove(v8, v2, 0x51uLL);
    sub_1AF4431E0(v11, v13);
    swift_getAtKeyPath();

    v13[2] = v8[2];
    v13[3] = v8[3];
    v13[4] = v8[4];
    v14 = v9;
    v13[0] = v8[0];
    v13[1] = v8[1];
    sub_1AF598838(v13);
    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF535230(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DSolver, &off_1F2565C50, a1);
  if (v2)
  {
    v3 = v2[1];
    v11[0] = *v2;
    v11[1] = v3;
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[4];
    v12 = *(v2 + 80);
    v11[3] = v5;
    v11[4] = v6;
    v11[2] = v4;
    memmove(v8, v2, 0x51uLL);
    sub_1AF4431E0(v11, v13);
    swift_getAtKeyPath();

    v13[2] = v8[2];
    v13[3] = v8[3];
    v13[4] = v8[4];
    v14 = v9;
    v13[0] = v8[0];
    v13[1] = v8[1];
    sub_1AF598838(v13);
    return v10;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF53531C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleOpacityOverVelocity, &off_1F2557260, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF535410(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleOpacityOverVelocity, &off_1F2557260, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5354FC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticlePositionOverTexture, &off_1F25574B8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF5355B4(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePositionOverTexture, &off_1F25574B8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF535660(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePositionOverTexture, &off_1F25574B8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF535700(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticlePositionOverTexture, &off_1F25574B8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 5;
  }
}

uint64_t sub_1AF5357A0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingSpeedControl, &off_1F25651C8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 6;
  }
}

uint64_t sub_1AF535840(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingSpeedControl, &off_1F25651C8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5358EC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingSpeedControl, &off_1F25651C8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t sub_1AF5359A4(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFluidSolver2DEmitter, &off_1F2565B90, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF535A5C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFluidSolver2DEmitter, &off_1F2565B90, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF535B08(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFluidSolver2DEmitter, &off_1F2565B90, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF535BA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    v10 = *(v8 + 8);
    sub_1AF442550(v10);
    swift_getAtKeyPath();

    sub_1AF593EF4(v10);
    return v11;
  }

  else
  {

    return 1;
  }
}

unint64_t sub_1AF535C94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  v9 = v8;
  if (v8)
  {
    v12 = *(v8 + 8);
    sub_1AF442550(v12);
    swift_getAtKeyPath();

    sub_1AF593EF4(v12);
    v10 = v13;
  }

  else
  {

    v10 = 0;
  }

  return v10 | ((v9 == 0) << 32);
}

uint64_t sub_1AF535E7C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingFlyTowardsArea, &off_1F2565308, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF535F1C(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingFlyTowardsArea, &off_1F2565308, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF535FD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5360F8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingAlignOrientation, &off_1F2565588, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF5361B0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingAlignOrientation, &off_1F2565588, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF536278(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingAlignOrientation, &off_1F2565588, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF536348(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingAlignOrientation, &off_1F2565588, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 6;
  }
}

uint64_t sub_1AF536400(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingAlignOrientation, &off_1F2565588, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5364C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF53656C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF536624(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF536720(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for CameraEffectToneMappingController, &off_1F256D178, a1);
  if (v2)
  {
    sub_1AF5A6A24(v2, v4);
    swift_getAtKeyPath();

    sub_1AF5A6A80(v4);
    return v4[7];
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF536930(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for ParticleFlockingAlignVelocityOnPlane, &off_1F25654E8, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5369D8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for ParticleFlockingAlignVelocityOnPlane, &off_1F25654E8, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF536A88(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireAnimationRepresentation, &off_1F25444F0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF536B30(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireAnimationRepresentation, &off_1F25444F0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF536BF0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for TextureRequireAnimationRepresentation, &off_1F25444F0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF536CE0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v15;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF536DE8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, void *), void (*a7)(void *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v14[7];
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF536EF0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  v13 = v12;
  if (v12)
  {
    a6(v12, v16);
    swift_getAtKeyPath();

    a7(v16);
    v14 = v17;
  }

  else
  {

    v14 = 0;
  }

  return v14 | ((v13 == 0) << 32);
}

uint64_t sub_1AF537004(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *), void (*a7)(_BYTE *))
{

  v12 = sub_1AF6824B0(a4, a5, a1);
  if (v12)
  {
    a6(v12, v14);
    swift_getAtKeyPath();

    a7(v14);
    return v14[63];
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF5370BC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {

    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF537168(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for Seed, &off_1F2563E60, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF537200(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Seed, &off_1F2563E60, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF5372B0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF537350(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF537408(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for Prefab, &off_1F253D6F8, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5374B0(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for Prefab, &off_1F253D6F8, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF537564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF537614(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for Scale2, &off_1F252F838, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5376B0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Shadow, &off_1F2530118, a1);
  if (v2)
  {

    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

uint64_t sub_1AF537770(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for Skybox, &off_1F25304A0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 4;
  }
}

unint64_t sub_1AF537818(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Skybox, &off_1F25304A0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = 0x100000000;
    if (!v7)
    {
      v3 = 0;
    }

    v4 = v3 | v6;
  }

  else
  {

    v4 = 0;
  }

  return v4 | ((v2 == 0) << 40);
}

uint64_t sub_1AF5378EC(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for Skybox, &off_1F25304A0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF5379A0(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Skybox, &off_1F25304A0, a1);
  if (v2)
  {
    swift_getAtKeyPath();

    v3 = v5;
  }

  else
  {

    v3 = 0;
  }

  return v3 | ((v2 == 0) << 32);
}

unint64_t sub_1AF537A60(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF537B10(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {

    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF537BB8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 12);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x68uLL);
    sub_1AF4424F4(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v14[5] = v9[5];
    v15 = v10;
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF584F68(v14);
    return v11;
  }

  else
  {

    return 4;
  }
}

uint64_t sub_1AF537CAC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 12);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(__dst, v2, 0x68uLL);
    sub_1AF4424F4(v12, v14);
    swift_getAtKeyPath();

    v14[4] = __dst[4];
    v14[5] = __dst[5];
    v15 = v10;
    v14[0] = __dst[0];
    v14[1] = __dst[1];
    v14[2] = __dst[2];
    v14[3] = __dst[3];
    sub_1AF584F68(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF537DC8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 12);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x68uLL);
    sub_1AF4424F4(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v14[5] = v9[5];
    v15 = v10;
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF584F68(v14);
    return v11;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF537EBC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 12);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x68uLL);
    sub_1AF4424F4(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v14[5] = v9[5];
    v15 = v10;
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF584F68(v14);
    return v11;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1AF537FBC(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = v2[2];
    v14[1] = v2[1];
    v14[2] = v5;
    v14[0] = v4;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    v15 = *(v2 + 12);
    v14[4] = v7;
    v14[5] = v8;
    v14[3] = v6;
    memmove(v11, v2, 0x68uLL);
    sub_1AF4424F4(v14, v16);
    swift_getAtKeyPath();

    v16[4] = v11[4];
    v16[5] = v11[5];
    v17 = v12;
    v16[0] = v11[0];
    v16[1] = v11[1];
    v16[2] = v11[2];
    v16[3] = v11[3];
    sub_1AF584F68(v16);
    v9 = v13;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v3 == 0) << 32);
}

unint64_t sub_1AF5380C8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  v3 = v2;
  if (v2)
  {
    v4 = *v2;
    v5 = v2[2];
    v16[1] = v2[1];
    v16[2] = v5;
    v16[0] = v4;
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[5];
    v17 = *(v2 + 12);
    v16[4] = v7;
    v16[5] = v8;
    v16[3] = v6;
    memmove(v12, v2, 0x68uLL);
    sub_1AF4424F4(v16, v18);
    swift_getAtKeyPath();

    v18[4] = v12[4];
    v18[5] = v12[5];
    v19 = v13;
    v18[0] = v12[0];
    v18[1] = v12[1];
    v18[2] = v12[2];
    v18[3] = v12[3];
    sub_1AF584F68(v18);
    v9 = 0x100000000;
    if (!v15)
    {
      v9 = 0;
    }

    v10 = v9 | v14;
  }

  else
  {

    v10 = 0;
  }

  return v10 | ((v3 == 0) << 40);
}

uint64_t sub_1AF5381E8(unint64_t a1)
{

  v2 = sub_1AF6824B0(&type metadata for Material, &off_1F253F848, a1);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[2];
    v12[1] = v2[1];
    v12[2] = v4;
    v12[0] = v3;
    v5 = v2[3];
    v6 = v2[4];
    v7 = v2[5];
    v13 = *(v2 + 12);
    v12[4] = v6;
    v12[5] = v7;
    v12[3] = v5;
    memmove(v9, v2, 0x68uLL);
    sub_1AF4424F4(v12, v14);
    swift_getAtKeyPath();

    v14[4] = v9[4];
    v14[5] = v9[5];
    v15 = v10;
    v14[0] = v9[0];
    v14[1] = v9[1];
    v14[2] = v9[2];
    v14[3] = v9[3];
    sub_1AF584F68(v14);
    return v11;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF5382DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AF53837C(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for KillShape, &off_1F2561EB0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 3;
  }
}

uint64_t sub_1AF538414(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for KillShape, &off_1F2561EB0, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5384B8(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for MeshModel, &off_1F2562500, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF538568(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for MeshModel, &off_1F2562500, a1))
  {

    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_1AF538618(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for SetActive, &off_1F2569580, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

unint64_t sub_1AF5386A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1AF6824B0(a4, a5, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v9 = v11;
  }

  else
  {

    v9 = 0;
  }

  return v9 | ((v8 == 0) << 32);
}

uint64_t sub_1AF538760(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF538808(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (sub_1AF6824B0(a4, a5, a1))
  {
    swift_getAtKeyPath();

    return v9;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1AF5388B0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{

  v8 = sub_1AF6824B0(a2, a3, a1);
  if (v8)
  {
    swift_getAtKeyPath();

    v11 = v14;
    v10 = v15;
    v13 = v16;
    v12 = v17;
  }

  else
  {

    v11 = 0;
    v10 = 0;
    v13 = 0;
    v12 = 0;
  }

  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 16) = v13;
  *(a4 + 24) = v12;
  *(a4 + 32) = v8 == 0;
  return result;
}

uint64_t sub_1AF538978(unint64_t a1)
{

  if (sub_1AF6824B0(&type metadata for MeshImportOptions, &off_1F252BF08, a1))
  {
    swift_getAtKeyPath();

    return v3;
  }

  else
  {

    return 2;
  }
}

double sub_1AF538A18@<D0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{

  v4 = sub_1AF6824B0(&type metadata for MorpherController, &off_1F256A6E0, a1);
  if (v4)
  {
    sub_1AF5A8A70(v4, v6);
    swift_getAtKeyPath();

    sub_1AF5A8ACC(v6);
  }

  else
  {

    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1AF538AB4(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, __n128), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF524370(a3, a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF538BF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (result != 0xFFFFFFFFLL)
  {
    v19 = v6;
    v20 = v7;
    v13 = result;
    v14 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v14)
    {
      v15 = *(v14 + 80);
      swift_unknownObjectWeakLoadStrong();
      v14 = *(v14 + 56);
    }

    else
    {
      v15 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a2;
    v17[2] = v14;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v18 = v15;
    sub_1AF51F67C(a3, a4, a5, a6, v13);
    sub_1AF579490(v17);
    if (v15)
    {
      v16 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v16 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF538D2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(__int128 *), uint64_t (*a8)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v8;
    v24 = v9;
    v15 = result;
    v16 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v16)
    {
      v17 = *(v16 + 80);
      swift_unknownObjectWeakLoadStrong();
      v16 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v16;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v17;
    sub_1AF51F970(a3, a4, a5, a6, v15, a7, a8);
    sub_1AF579490(v21);
    if (v17)
    {
      v18 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v18 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF538E78(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, __n128), uint64_t (*a6)(void), __n128 a7)
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF51FE14(a3, v14, a4, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF538FC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (result != 0xFFFFFFFFLL)
  {
    v17 = v5;
    v18 = v6;
    v11 = result;
    v12 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v12)
    {
      v13 = *(v12 + 80);
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v12 + 56);
    }

    else
    {
      v13 = 0;
    }

    swift_unknownObjectUnownedInit();
    v15[0] = a2;
    v15[2] = v12;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v16 = v13;
    a5(a3, a4, v11);
    sub_1AF579490(v15);
    if (v13)
    {
      v14 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v14 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF5390F0(uint64_t result, uint64_t a2, uint64_t a3, double a4, double a5)
{
  if (result != 0xFFFFFFFFLL)
  {
    v19 = v8;
    v20 = v7;
    v21 = v5;
    v22 = v6;
    v11 = result;
    v14 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v14)
    {
      v15 = *(v14 + 80);
      swift_unknownObjectWeakLoadStrong();
      v14 = *(v14 + 56);
    }

    else
    {
      v15 = 0;
    }

    swift_unknownObjectUnownedInit();
    v17[0] = a2;
    v17[2] = v14;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v18 = v15;
    sub_1AF520B48(a3, v11, a4, a5);
    sub_1AF579490(v17);
    if (v15)
    {
      v16 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v16 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF5393C8(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, __n128, __n128, __n128, __n128), __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v8;
    v24 = v9;
    v13 = result;
    v14 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v14)
    {
      v15 = *(v14 + 80);
      swift_unknownObjectWeakLoadStrong();
      v14 = *(v14 + 56);
    }

    else
    {
      v15 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v14;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v15;
    a4(a3, v13, a5, a6, a7, a8);
    sub_1AF579490(v21);
    if (v15)
    {
      v16 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v16 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF5395B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, __n128), uint64_t (*a6)(void), float a7, float a8)
{
  if (result != 0xFFFFFFFFLL)
  {
    v25 = v11;
    v26 = v10;
    v27 = v8;
    v28 = v9;
    v17 = result;
    v20 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v20)
    {
      v21 = *(v20 + 80);
      swift_unknownObjectWeakLoadStrong();
      v20 = *(v20 + 56);
    }

    else
    {
      v21 = 0;
    }

    swift_unknownObjectUnownedInit();
    v23[0] = a2;
    v23[2] = v20;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v24 = v21;
    sub_1AF523F24(a3, v17, a4, a5, a6, a7, a8);
    sub_1AF579490(v23);
    if (v21)
    {
      v22 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v22 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF539708(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, __n128), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF5241F8(a3 | ((HIDWORD(a3) & 1) << 32), a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF539850(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, __n128), uint64_t (*a6)(void), double a7)
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v10;
    v24 = v9;
    v25 = v7;
    v26 = v8;
    v16 = result;
    v18 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v18)
    {
      v19 = *(v18 + 80);
      swift_unknownObjectWeakLoadStrong();
      v18 = *(v18 + 56);
    }

    else
    {
      v19 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v18;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v19;
    sub_1AF524090(a3, v16, a4, a5, a6, a7);
    sub_1AF579490(v21);
    if (v19)
    {
      v20 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v20 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF539998(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, __n128), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF5247F0(a3 & 1, a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF539E40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != 0xFFFFFFFFLL)
  {
    v17 = v5;
    v18 = v6;
    v11 = result;
    v12 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v12)
    {
      v13 = *(v12 + 80);
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v12 + 56);
    }

    else
    {
      v13 = 0;
    }

    swift_unknownObjectUnownedInit();
    v15[0] = a2;
    v15[2] = v12;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v16 = v13;
    sub_1AF5220C0(a3, a4 & 0xFFFFFFFFFFLL, a5, v11);
    sub_1AF579490(v15);
    if (v13)
    {
      v14 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v14 ^ 1);
    }
  }

  return result;
}

unint64_t sub_1AF539F70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *))
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v6, v7);
    sub_1AFC75668(0, a5);
  }

  return result;
}

uint64_t sub_1AF53A024(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  if (result != 0xFFFFFFFFLL)
  {
    v17 = v7;
    v18 = v6;
    v19 = v4;
    v20 = v5;
    v10 = result;
    v12 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v12)
    {
      v13 = *(v12 + 80);
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v12 + 56);
    }

    else
    {
      v13 = 0;
    }

    swift_unknownObjectUnownedInit();
    v15[0] = a2;
    v15[2] = v12;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v16 = v13;
    sub_1AF522550(a3, v10, a4);
    sub_1AF579490(v15);
    if (v13)
    {
      v14 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v14 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53A4A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    a7(a3, a4, a5 & 1, a6, v14);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53A6A0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, __n128), __n128 a5)
{
  if (result != 0xFFFFFFFFLL)
  {
    v17 = v5;
    v18 = v6;
    v10 = result;
    v11 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v11)
    {
      v12 = *(v11 + 80);
      swift_unknownObjectWeakLoadStrong();
      v11 = *(v11 + 56);
    }

    else
    {
      v12 = 0;
    }

    swift_unknownObjectUnownedInit();
    v15[0] = a2;
    v15[2] = v11;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v16 = v12;
    a4(a3, v10, a5);
    sub_1AF579490(v15);
    if (v12)
    {
      v13 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v13 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53A8D0(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (result != 0xFFFFFFFFLL)
  {
    v17 = v5;
    v18 = v6;
    v11 = result;
    v12 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v12)
    {
      v13 = *(v12 + 80);
      swift_unknownObjectWeakLoadStrong();
      v12 = *(v12 + 56);
    }

    else
    {
      v13 = 0;
    }

    swift_unknownObjectUnownedInit();
    v15[0] = a2;
    v15[2] = v12;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v16 = v13;
    sub_1AF523740(a3, a4, a5, v11);
    sub_1AF579490(v15);
    if (v13)
    {
      v14 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v14 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53AAD8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t, __n128), uint64_t (*a8)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v8;
    v24 = v9;
    v15 = result;
    v16 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v16)
    {
      v17 = *(v16 + 80);
      swift_unknownObjectWeakLoadStrong();
      v16 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v16;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v17;
    sub_1AF523C04(a3, a4, a5, v15, a6, a7, a8);
    sub_1AF579490(v21);
    if (v17)
    {
      v18 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v18 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B120(uint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(unint64_t, uint64_t, __n128), uint64_t (*a8)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v8;
    v24 = v9;
    v15 = result;
    v16 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v16)
    {
      v17 = *(v16 + 80);
      swift_unknownObjectWeakLoadStrong();
      v16 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v16;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v17;
    sub_1AF5214C0(a3, a4 & 1, a5, v15, a6, a7, a8);
    sub_1AF579490(v21);
    if (v17)
    {
      v18 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v18 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B368(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v8;
    v24 = v9;
    v15 = result;
    v16 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v16)
    {
      v17 = *(v16 + 80);
      swift_unknownObjectWeakLoadStrong();
      v16 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v16;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v17;
    a8(a3, a4, v15, a5, a6, a7);
    sub_1AF579490(v21);
    if (v17)
    {
      v18 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v18 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B4AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF51EC64(a3, a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B5EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF51EDC4(a3, a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B72C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, __n128), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF51F518(a3, a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B86C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, __n128), uint64_t (*a6)(void), __n128 a7, __n128 a8)
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v8;
    v24 = v9;
    v15 = result;
    v16 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v16)
    {
      v17 = *(v16 + 80);
      swift_unknownObjectWeakLoadStrong();
      v16 = *(v16 + 56);
    }

    else
    {
      v17 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v16;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v17;
    sub_1AF52466C(a3, v15, a4, a5, a6, a7, a8);
    sub_1AF579490(v21);
    if (v17)
    {
      v18 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v18 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53B9B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, __n128), uint64_t (*a6)(void), float a7)
{
  if (result != 0xFFFFFFFFLL)
  {
    v23 = v10;
    v24 = v9;
    v25 = v7;
    v26 = v8;
    v16 = result;
    v18 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v18)
    {
      v19 = *(v18 + 80);
      swift_unknownObjectWeakLoadStrong();
      v18 = *(v18 + 56);
    }

    else
    {
      v19 = 0;
    }

    swift_unknownObjectUnownedInit();
    v21[0] = a2;
    v21[2] = v18;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v22 = v19;
    sub_1AF51EF24(a3, v16, a4, a5, a6, a7);
    sub_1AF579490(v21);
    if (v19)
    {
      v20 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v20 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53BAFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unint64_t, uint64_t, __n128), uint64_t (*a6)(void), __n128 a7)
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF51F1F4(a3, v14, a4, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

uint64_t sub_1AF53BC44(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, uint64_t, __n128), uint64_t (*a7)(void))
{
  if (result != 0xFFFFFFFFLL)
  {
    v21 = v7;
    v22 = v8;
    v14 = result;
    v15 = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v15)
    {
      v16 = *(v15 + 80);
      swift_unknownObjectWeakLoadStrong();
      v15 = *(v15 + 56);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectUnownedInit();
    v19[0] = a2;
    v19[2] = v15;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v20 = v16;
    sub_1AF51F08C(a3 & 1, a4, v14, a5, a6, a7);
    sub_1AF579490(v19);
    if (v16)
    {
      v17 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v17 ^ 1);
    }
  }

  return result;
}

unint64_t sub_1AF53BD84(unint64_t result)
{
  if (HIDWORD(result) || result != -1)
  {

    MEMORY[0x1EEE9AC00](v1, v2);
    sub_1AFC75668(0, sub_1AF5A89EC);
  }

  return result;
}

void *sub_1AF53BE3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1EB63AF50, &type metadata for CollisionLayerSet, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A94A8;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DA4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594A74;
  v3[3] = v9;
  v3[4] = sub_1AF57C694;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53BF78(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA398;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DA8;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6FC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C0B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF57AAE8();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A986C;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DA0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594B64;
  v3[3] = v9;
  v3[4] = sub_1AF57BE84;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C1CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF51B13C(0, &qword_1EB63AF48, type metadata accessor for ForceFieldCullMode, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA398;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DAC;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594C38;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C314(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF51B13C(0, &qword_1EB63AF40, type metadata accessor for ForceFieldShape, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA398;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DB0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594CA4;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C45C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1EB643A50, MEMORY[0x1E69E76D8], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA398;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DB4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594D10;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C598(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A94A8;
  v8[5] = a3;
  v8[2] = sub_1AF5A9D98;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594DA0;
  v3[3] = v9;
  v3[4] = sub_1AF594DD0;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C6D4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA1A4;
  v8[5] = a3;
  v8[2] = sub_1AF5A9D94;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6E8;
  v3[3] = v9;
  v3[4] = sub_1AF5AA548;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C810(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF51B13C(0, &qword_1EB63AF38, type metadata accessor for ForceFieldType, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA398;
  v8[5] = a3;
  v8[2] = sub_1AF5A9DB8;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594E94;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53C958(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1EB634340, MEMORY[0x1E69E7360], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA398;
  v8[5] = a3;
  v8[2] = sub_1AF5A9D9C;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF594F00;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53CA94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A93E8;
  v8[5] = a3;
  v8[2] = sub_1AF5A9AC0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF57DEA4;
  v3[3] = v9;
  v3[4] = sub_1AF5AA558;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53CBD0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A94FC;
  v8[5] = a3;
  v8[2] = sub_1AF5A9EB0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6EC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA550;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53CD0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA2B0;
  v8[5] = a3;
  v8[2] = sub_1AF5A9A2C;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF57945C;
  v3[3] = v9;
  v3[4] = sub_1AF57948C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53CE48(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA0A4;
  v8[5] = a3;
  v8[2] = sub_1AF5A9B10;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6E8;
  v3[3] = v9;
  v3[4] = sub_1AF5AA548;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53CF84(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF57B9C0();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A9628;
  v8[5] = a3;
  v8[2] = sub_1AF5A9B14;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5802E8;
  v3[3] = v9;
  v3[4] = sub_1AF5AA554;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D09C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA2D4;
  v8[5] = a3;
  v8[2] = sub_1AF5A9B18;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA718;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D1D8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A9408;
  v8[5] = a3;
  v8[2] = sub_1AF5A9B0C;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6EC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA550;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D314(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF57B9C0();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A95D4;
  v8[5] = a3;
  v8[2] = sub_1AF5A9A68;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA700;
  v3[3] = v9;
  v3[4] = sub_1AF5AA554;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D42C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF57AAE8();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A95D4;
  v8[5] = a3;
  v8[2] = sub_1AF5A9A6C;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6F0;
  v3[3] = v9;
  v3[4] = sub_1AF5AA554;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D544(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF51B13C(0, &unk_1ED725C88, type metadata accessor for simd_quatf, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A95D8;
  v8[5] = a3;
  v8[2] = sub_1AF5A9A70;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF57BE64;
  v3[3] = v9;
  v3[4] = sub_1AF57BE84;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D68C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A93F0;
  v8[5] = a3;
  v8[2] = sub_1AF5A9AD0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6EC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA550;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D7C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A9500;
  v8[5] = a3;
  v8[2] = sub_1AF5A9EB4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6EC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA550;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53D904(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF586F6C();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA290;
  v8[5] = a3;
  v8[2] = sub_1AF5A99F4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5A370C;
  v3[3] = v9;
  v3[4] = sub_1AF5AA514;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53DA1C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1EB63A428, &type metadata for Asset, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA42C;
  v8[5] = a3;
  v8[2] = sub_1AF5A99F8;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA720;
  v3[3] = v9;
  v3[4] = sub_1AF5AA510;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53DB58(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1EB6338D0, &type metadata for AddressMode, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA14C;
  v8[5] = a3;
  v8[2] = sub_1AF5A9C9C;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58DF68;
  v3[3] = v9;
  v3[4] = sub_1AF58DF98;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53DC94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1EB6338D8, &type metadata for Entity, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA35C;
  v8[5] = a3;
  v8[2] = sub_1AF5A9CA0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6FC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA54C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53DDD0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1EB633890, &type metadata for MotionDistribution, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA150;
  v8[5] = a3;
  v8[2] = sub_1AF5A9CA4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E05C;
  v3[3] = v9;
  v3[4] = sub_1AF5AA564;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53DF0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF58DC7C();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A97CC;
  v8[5] = a3;
  v8[2] = sub_1AF5AA538;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E168;
  v3[3] = v9;
  v3[4] = sub_1AF58E174;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E024(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF57AAE8();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A97BC;
  v8[5] = a3;
  v8[2] = sub_1AF5A9C94;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6F0;
  v3[3] = v9;
  v3[4] = sub_1AF5AA554;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E13C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1EB6338B8, &type metadata for EmitterShape.Direction, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A97B8;
  v8[5] = a3;
  v8[2] = sub_1AF5AA53C;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E380;
  v3[3] = v9;
  v3[4] = sub_1AF58E3B0;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E278(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED722B80, MEMORY[0x1E69E6370], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA148;
  v8[5] = a3;
  v8[2] = sub_1AF5A9C98;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6E8;
  v3[3] = v9;
  v3[4] = sub_1AF5AA548;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E3B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1ED725C68, MEMORY[0x1E69E7668], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A9468;
  v8[5] = a3;
  v8[2] = sub_1AF5A9CA8;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA708;
  v3[3] = v9;
  v3[4] = sub_1AF5AA558;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E4F0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF579ADC();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A97BC;
  v8[5] = a3;
  v8[2] = sub_1AF5A9CAC;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E4D4;
  v3[3] = v9;
  v3[4] = sub_1AF57BE84;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E608(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1EB6338A0, &type metadata for EmissionOrder, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA14C;
  v8[5] = a3;
  v8[2] = sub_1AF5A9CB0;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E600;
  v3[3] = v9;
  v3[4] = sub_1AF5AA560;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E744(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &qword_1EB633898, &type metadata for ShapeDistribution, type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A97B8;
  v8[5] = a3;
  v8[2] = sub_1AF5AA540;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E690;
  v3[3] = v9;
  v3[4] = sub_1AF5AA57C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E880(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF57F2F4();
  v8 = swift_allocObject();
  v8[4] = sub_1AF5AA35C;
  v8[5] = a3;
  v8[2] = sub_1AF5AA4D4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF58E79C;
  v3[3] = v9;
  v3[4] = sub_1AF57948C;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}

void *sub_1AF53E998(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = HIDWORD(a1);
  v3[6] = a1;
  v3[7] = a2;
  sub_1AF5A9240(0, &unk_1ED722B70, MEMORY[0x1E69E6448], type metadata accessor for EntityGetSet);
  v8 = swift_allocObject();
  v8[4] = sub_1AF5A9468;
  v8[5] = a3;
  v8[2] = sub_1AF5A9CB4;
  v8[3] = a3;
  v8[6] = a3;
  v3[8] = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  *(v9 + 28) = v7;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  *(v10 + 28) = v7;
  *(v10 + 32) = a2;
  v3[2] = sub_1AF5AA6EC;
  v3[3] = v9;
  v3[4] = sub_1AF5AA550;
  v3[5] = v10;

  swift_retain_n();
  return v3;
}