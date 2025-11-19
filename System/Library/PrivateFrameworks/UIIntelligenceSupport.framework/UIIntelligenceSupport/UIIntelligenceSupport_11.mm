uint64_t sub_1BBB68D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBB842F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBB68E00(uint64_t a1)
{
  v2 = sub_1BBB6BD44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB68E3C(uint64_t a1)
{
  v2 = sub_1BBB6BD44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCommand.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D780);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6BD44();
  sub_1BBB84478();
  sub_1BBB84278();
  return (*(v3 + 8))(v5, v2);
}

uint64_t IntelligenceCommand.Identifier.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceCommand.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D790);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6BD44();
  sub_1BBB84458();
  if (!v2)
  {
    v9 = sub_1BBB841A8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB69190(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D780);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6BD44();
  sub_1BBB84478();
  sub_1BBB84278();
  return (*(v3 + 8))(v5, v2);
}

void IntelligenceCommand.init(title:standaloneTitle:menuHierarchyComponents:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1BBB6BD24(0, 0, 0, 255);
  if (qword_1EBC7B570 != -1)
  {
    swift_once();
  }

  v12 = off_1EBC7D590;
  os_unfair_lock_lock(off_1EBC7D590 + 6);
  v13 = *(v12 + 2);
  if (__OFADD__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    *(v12 + 2) = v13 + 1;
    os_unfair_lock_unlock(v12 + 6);
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4;
    *(a6 + 32) = a5;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 511;
    *(a6 + 80) = v13;
  }
}

void IntelligenceCommand.init(title:standaloneTitle:menuHierarchyComponents:menuGroup:keyboardShortcut:isPerformable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v15 = *a7;
  v11 = *(a7 + 2);
  v12 = *(a7 + 24);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  sub_1BBB6BD24(0, 0, 0, 255);
  *(a9 + 48) = v15;
  *(a9 + 64) = v11;
  *(a9 + 72) = v12;
  *(a9 + 73) = a8;
  if (qword_1EBC7B570 != -1)
  {
    swift_once();
  }

  v13 = off_1EBC7D590;
  os_unfair_lock_lock(off_1EBC7D590 + 6);
  v14 = *(v13 + 2);
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(v13 + 2) = v14 + 1;
    os_unfair_lock_unlock(v13 + 6);
    *(a9 + 80) = v14;
  }
}

void IntelligenceCommand.init(title:standaloneTitle:menuHierarchyComponents:isPerformable:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  sub_1BBB6BD24(0, 0, 0, 255);
  if (qword_1EBC7B570 != -1)
  {
    swift_once();
  }

  v14 = off_1EBC7D590;
  os_unfair_lock_lock(off_1EBC7D590 + 6);
  v15 = *(v14 + 2);
  if (__OFADD__(v15, 1))
  {
    __break(1u);
  }

  else
  {
    *(v14 + 2) = v15 + 1;
    os_unfair_lock_unlock(v14 + 6);
    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    *(a7 + 24) = a4;
    *(a7 + 32) = a5;
    *(a7 + 40) = 0u;
    *(a7 + 56) = 0u;
    *(a7 + 72) = -1;
    *(a7 + 73) = a6 & 1;
    *(a7 + 80) = v15;
  }
}

uint64_t IntelligenceCommand.hash(into:)()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  sub_1BBB83AC8();
  sub_1BBB83AC8();
  MEMORY[0x1BFB16A50](*(v2 + 16));
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v2 + 40;
    do
    {

      sub_1BBB83AC8();

      v7 += 16;
      --v6;
    }

    while (v6);
  }

  MEMORY[0x1BFB16A50](v1);
  sub_1BBB84408();
  if (v4 != 255)
  {
    MEMORY[0x1BFB16A50](v3);
    IntelligenceCommand.KeyboardShortcut.KeyEquivalent.hash(into:)();
  }

  sub_1BBB84408();
  return MEMORY[0x1BFB16A50](v5);
}

uint64_t IntelligenceCommand.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceCommand.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB6972C()
{
  sub_1BBB843D8();
  IntelligenceCommand.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB69770()
{
  sub_1BBB843D8();
  IntelligenceCommand.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB697B0()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x726F667265507369;
  if (v1 != 5)
  {
    v3 = 0x696669746E656469;
  }

  v4 = 0x756F7247756E656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6F6C61646E617473;
  if (v1 != 1)
  {
    v5 = 0xD000000000000017;
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

uint64_t sub_1BBB698AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB6E018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB698D4(uint64_t a1)
{
  v2 = sub_1BBB6C13C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB69910(uint64_t a1)
{
  v2 = sub_1BBB6C13C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCommand.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D798);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v25 = v1[5];
  v26 = v8;
  v9 = v1[6];
  v23 = v1[7];
  v24 = v9;
  v22 = v1[8];
  v33 = *(v1 + 72);
  v21 = *(v1 + 73);
  v20 = v1[10];
  v10 = a1[3];
  v11 = a1;
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_1BBB6C13C();
  sub_1BBB84478();
  v14 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v14 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    LOBYTE(v29) = 0;
    v15 = v28;
    sub_1BBB84248();
    v16 = v15;
    if (v15)
    {
      return (*(v27 + 8))(v13, v3);
    }
  }

  else
  {
    v16 = v28;
  }

  v17 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v17 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (LOBYTE(v29) = 1, sub_1BBB84248(), !v16))
  {
    if (!*(v26 + 16) || (v29 = v26, v34 = 2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590), sub_1BBAAE144(&qword_1ED6BDA78), sub_1BBB84288(), !v16))
    {
      if (!v25 || (LOBYTE(v29) = 3, sub_1BBB84278(), !v16))
      {
        v29 = v24;
        v30 = v23;
        v31 = v22;
        v32 = v33;
        v34 = 4;
        sub_1BBB6BD04(v24, v23, v22, v33);
        sub_1BBB6C190();
        sub_1BBB84238();
        sub_1BBB6BD24(v29, v30, v31, v32);
        if (!v16)
        {
          if ((v21 & 1) == 0)
          {
            LOBYTE(v29) = 5;
            sub_1BBB84258();
          }

          v29 = v20;
          v34 = 6;
          sub_1BBB6C1E4();
          sub_1BBB84288();
        }
      }
    }
  }

  return (*(v27 + 8))(v13, v3);
}

uint64_t IntelligenceCommand.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D7B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6C13C();
  sub_1BBB84458();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BBB6BD24(0, 0, 0, 255);
  }

  else
  {
    LOBYTE(v46) = 0;
    v9 = sub_1BBB84138();
    if (v10)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    *(&v39 + 1) = v13;
    LOBYTE(v46) = 1;
    v14 = sub_1BBB84138();
    *&v39 = v12;
    v38 = a2;
    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
    LOBYTE(v40) = 2;
    sub_1BBAAE144(&qword_1EBC7AB90);
    sub_1BBB841B8();
    v36 = v46;
    LOBYTE(v46) = 3;
    v18 = sub_1BBB84168();
    v37 = v17;
    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    LOBYTE(v40) = 4;
    sub_1BBB6C238();
    sub_1BBB84178();
    v33 = v20;
    v34 = v16;
    v35 = v6;
    v22 = v46;
    v21 = v47;
    v23 = v48;
    v24 = v49;
    sub_1BBB6BD24(0, 0, 0, 255);
    LOBYTE(v46) = 5;
    v32 = sub_1BBB84148();
    v58 = 6;
    sub_1BBB6C28C();
    sub_1BBB841B8();
    v25 = (v32 == 2) | v32 & 1;
    (*(v35 + 8))(v8, v5);
    v26 = v59;
    v40 = v39;
    v27 = *(&v39 + 1);
    *&v41 = v34;
    *(&v41 + 1) = v37;
    *&v42 = v36;
    *(&v42 + 1) = v33;
    *&v43 = v22;
    *(&v43 + 1) = v21;
    *&v44 = v23;
    BYTE8(v44) = v24;
    BYTE9(v44) = v25;
    v45 = v59;
    v28 = v38;
    *(v38 + 80) = v59;
    v29 = v43;
    v28[2] = v42;
    v28[3] = v29;
    v30 = v41;
    *v28 = v40;
    v28[1] = v30;
    v28[4] = v44;
    sub_1BBB084A0(&v40, &v46);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v46 = v39;
    v47 = v27;
    v48 = v34;
    v49 = v37;
    v50 = v36;
    v51 = v33;
    v52 = v22;
    v53 = v21;
    v54 = v23;
    v55 = v24;
    v56 = v25;
    v57 = v26;
    return sub_1BBB084FC(&v46);
  }
}

unint64_t IntelligenceCommand.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 73);
  v5 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v5 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    strcpy(v34, "title: ");
    v34[1] = 0xE700000000000000;
    MEMORY[0x1BFB16150]();
    v6 = v34[0];
    v7 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[16 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = 0xE700000000000000;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v11 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v11 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    sub_1BBB84028();

    v34[0] = 0xD000000000000011;
    v34[1] = 0x80000001BBB9D2D0;
    MEMORY[0x1BFB16150](v2, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1BBA86A94(0, *(v7 + 2) + 1, 1, v7);
    }

    v13 = *(v7 + 2);
    v12 = *(v7 + 3);
    if (v13 >= v12 >> 1)
    {
      v7 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v7);
    }

    *(v7 + 2) = v13 + 1;
    v14 = &v7[16 * v13];
    *(v14 + 4) = 0xD000000000000011;
    *(v14 + 5) = 0x80000001BBB9D2D0;
  }

  sub_1BBB84028();

  v34[0] = 0xD000000000000019;
  v34[1] = 0x80000001BBB9D2F0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v15 = sub_1BBB83938();
  v17 = v16;

  MEMORY[0x1BFB16150](v15, v17);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_1BBA86A94(0, *(v7 + 2) + 1, 1, v7);
  }

  v19 = *(v7 + 2);
  v18 = *(v7 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    v7 = sub_1BBA86A94((v18 > 1), v19 + 1, 1, v7);
  }

  *(v7 + 2) = v20;
  v21 = &v7[16 * v19];
  *(v21 + 4) = 0xD000000000000019;
  *(v21 + 5) = 0x80000001BBB9D2F0;
  if ((v4 & 1) == 0)
  {
    v22 = *(v7 + 3);
    if ((v19 + 2) > (v22 >> 1))
    {
      v7 = sub_1BBA86A94((v22 > 1), v19 + 2, 1, v7);
    }

    *(v7 + 2) = v19 + 2;
    v23 = &v7[16 * v20];
    *(v23 + 4) = 0x6672657020746F6ELL;
    *(v23 + 5) = 0xEF656C62616D726FLL;
  }

  strcpy(v34, "identifier: ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  sub_1BBB6C2E0();
  v24 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v24);

  v25 = v34[0];
  v26 = v34[1];
  v28 = *(v7 + 2);
  v27 = *(v7 + 3);
  if (v28 >= v27 >> 1)
  {
    v7 = sub_1BBA86A94((v27 > 1), v28 + 1, 1, v7);
  }

  *(v7 + 2) = v28 + 1;
  v29 = &v7[16 * v28];
  *(v29 + 4) = v25;
  *(v29 + 5) = v26;
  sub_1BBB84028();

  v30 = sub_1BBB83938();
  v32 = v31;

  MEMORY[0x1BFB16150](v30, v32);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0xD000000000000014;
}

unint64_t IntelligenceCommand.KeyboardShortcut.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (*v0)
  {
    sub_1BBB84028();

    strcpy(v20, "modifierKeys: ");
    HIBYTE(v20[1]) = -18;
    v22 = v1;
    v5 = IntelligenceCommand.KeyboardShortcut.ModifierKeys.description.getter();
    MEMORY[0x1BFB16150](v5);

    v6 = v20[0];
    v7 = v20[1];
    v8 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1BBA86A94((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = v6;
    *(v11 + 5) = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1BBB84028();

  v22 = 0x766975714579656BLL;
  v23 = 0xEF203A746E656C61;
  v20[0] = v2;
  v20[1] = v3;
  v21 = v4;
  v12 = IntelligenceCommand.KeyboardShortcut.KeyEquivalent.description.getter();
  MEMORY[0x1BFB16150](v12);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1BBA86A94(0, *(v8 + 2) + 1, 1, v8);
  }

  v14 = *(v8 + 2);
  v13 = *(v8 + 3);
  if (v14 >= v13 >> 1)
  {
    v8 = sub_1BBA86A94((v13 > 1), v14 + 1, 1, v8);
  }

  *(v8 + 2) = v14 + 1;
  v15 = &v8[16 * v14];
  *(v15 + 4) = 0x766975714579656BLL;
  *(v15 + 5) = 0xEF203A746E656C61;
  sub_1BBB84028();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v16 = sub_1BBB83938();
  v18 = v17;

  MEMORY[0x1BFB16150](v16, v18);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t IntelligenceCommand.KeyboardShortcut.ModifierKeys.description.getter()
{
  v1 = *v0;
  if ((*v0 & 0x20) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1BBA86A94((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6461506D754ELL;
  *(v5 + 5) = 0xE600000000000000;
  if ((v1 & 0x40) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1BBA86A94((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6B636F4C73706143;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1BBA86A94((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 1819440195;
    *(v11 + 5) = 0xE400000000000000;
    if ((v1 & 2) == 0)
    {
LABEL_14:
      if ((v1 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_28;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 7630927;
  *(v14 + 5) = 0xE300000000000000;
  if ((v1 & 8) == 0)
  {
LABEL_15:
    if ((v1 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_28:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
  }

  v16 = *(v2 + 2);
  v15 = *(v2 + 3);
  if (v16 >= v15 >> 1)
  {
    v2 = sub_1BBA86A94((v15 > 1), v16 + 1, 1, v2);
  }

  *(v2 + 2) = v16 + 1;
  v17 = &v2[16 * v16];
  *(v17 + 4) = 0x7466696853;
  *(v17 + 5) = 0xE500000000000000;
  if ((v1 & 1) == 0)
  {
LABEL_16:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_38;
  }

LABEL_33:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_1BBA86A94((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 6581571;
  *(v20 + 5) = 0xE300000000000000;
  if ((v1 & 0x10) != 0)
  {
LABEL_38:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_1BBA86A94((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0x65626F6C47;
    *(v23 + 5) = 0xE500000000000000;
  }

LABEL_43:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v24 = sub_1BBB83938();

  return v24;
}

uint64_t IntelligenceCommand.KeyboardShortcut.KeyEquivalent.description.getter()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {

      return v1;
    }

    else
    {
      result = 28757;
      switch(v1)
      {
        case 1:
          result = 1853321028;
          break;
        case 2:
          result = 1952867660;
          break;
        case 3:
          result = 0x7468676952;
          break;
        case 4:
          result = 0x6574656C6544;
          break;
        case 5:
          result = 0x4464726177726F46;
          break;
        case 6:
          result = 0x7261656C43;
          break;
        case 7:
          result = 1701670728;
          break;
        case 8:
          result = 6581829;
          break;
        case 9:
          result = 0x705565676150;
          break;
        case 10:
          result = 0x6E776F4465676150;
          break;
        case 11:
          result = 6447444;
          break;
        case 12:
          result = 0x6563617053;
          break;
        case 13:
          result = 0x6E7275746552;
          break;
        case 14:
          result = 0x657061637345;
          break;
        default:
          return result;
      }
    }
  }

  else
  {
    v3 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v3);

    return 70;
  }

  return result;
}

uint64_t IntelligenceCommand.KeyboardShortcut.shortDescription.getter()
{
  if (*v0)
  {
    v1 = IntelligenceCommand.KeyboardShortcut.ModifierKeys.description.getter();
    v3 = v2;
    v4 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_1BBA86A94((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v1;
    *(v7 + 5) = v3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = IntelligenceCommand.KeyboardShortcut.KeyEquivalent.description.getter();
  v10 = v9;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1BBA86A94(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v11 = *(v4 + 3);
  if (v12 >= v11 >> 1)
  {
    v4 = sub_1BBA86A94((v11 > 1), v12 + 1, 1, v4);
  }

  *(v4 + 2) = v12 + 1;
  v13 = &v4[16 * v12];
  *(v13 + 4) = v8;
  *(v13 + 5) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v14 = sub_1BBB83938();

  return v14;
}

BOOL _s21UIIntelligenceSupport19IntelligenceCommandV16KeyboardShortcutV13KeyEquivalentO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      sub_1BBB6BA9C(*a1, v2, 0);
      sub_1BBB6BA9C(v5, v6, 0);
      return v3 == v5;
    }

LABEL_19:
    sub_1BBB6BA84(v5, v6, v7);
    sub_1BBB6BA9C(v3, v2, v4);
    sub_1BBB6BA9C(v5, v6, v7);
    return 0;
  }

  if (v4 != 1)
  {
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v5 != 1 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v11 = 1;
        sub_1BBB6BA9C(1, 0, 2);
        return v11;
      case 2:
        if (v7 != 2 || v5 != 2 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 2;
        goto LABEL_148;
      case 3:
        if (v7 != 2 || v5 != 3 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 3;
        goto LABEL_148;
      case 4:
        if (v7 != 2 || v5 != 4 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 4;
        goto LABEL_148;
      case 5:
        if (v7 != 2 || v5 != 5 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 5;
        goto LABEL_148;
      case 6:
        if (v7 != 2 || v5 != 6 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 6;
        goto LABEL_148;
      case 7:
        if (v7 != 2 || v5 != 7 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 7;
        goto LABEL_148;
      case 8:
        if (v7 != 2 || v5 != 8 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 8;
        goto LABEL_148;
      case 9:
        if (v7 != 2 || v5 != 9 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 9;
        goto LABEL_148;
      case 10:
        if (v7 != 2 || v5 != 10 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 10;
        goto LABEL_148;
      case 11:
        if (v7 != 2 || v5 != 11 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 11;
        goto LABEL_148;
      case 12:
        if (v7 != 2 || v5 != 12 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 12;
        goto LABEL_148;
      case 13:
        if (v7 != 2 || v5 != 13 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 13;
        goto LABEL_148;
      case 14:
        if (v7 != 2 || v5 != 14 || v6 != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 14;
        goto LABEL_148;
      default:
        if (v7 != 2 || (v6 | v5) != 0)
        {
          goto LABEL_19;
        }

        sub_1BBB6BA9C(*a1, v2, 2);
        v13 = 0;
LABEL_148:
        sub_1BBB6BA9C(v13, 0, 2);
        v11 = 1;
        break;
    }

    return v11;
  }

  if (v7 != 1)
  {

    goto LABEL_19;
  }

  if (v3 != v5 || v2 != v6)
  {
    v9 = sub_1BBB842F8();
    sub_1BBB6BA84(v5, v6, 1);
    sub_1BBB6BA84(v3, v2, 1);
    sub_1BBB6BA9C(v3, v2, 1);
    sub_1BBB6BA9C(v5, v6, 1);
    return v9 & 1;
  }

  v11 = 1;
  sub_1BBB6BA84(*a1, v2, 1);
  sub_1BBB6BA84(v3, v2, 1);
  sub_1BBB6BA9C(v3, v2, 1);
  sub_1BBB6BA9C(v3, v2, 1);
  return v11;
}

unint64_t sub_1BBB6B49C()
{
  result = qword_1EBC7D628;
  if (!qword_1EBC7D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D628);
  }

  return result;
}

unint64_t sub_1BBB6B4F0()
{
  result = qword_1EBC7D630;
  if (!qword_1EBC7D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D630);
  }

  return result;
}

unint64_t sub_1BBB6B544()
{
  result = qword_1EBC7D638;
  if (!qword_1EBC7D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D638);
  }

  return result;
}

unint64_t sub_1BBB6B598()
{
  result = qword_1EBC7D640;
  if (!qword_1EBC7D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D640);
  }

  return result;
}

unint64_t sub_1BBB6B5EC()
{
  result = qword_1EBC7D648;
  if (!qword_1EBC7D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D648);
  }

  return result;
}

unint64_t sub_1BBB6B640()
{
  result = qword_1EBC7D650;
  if (!qword_1EBC7D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D650);
  }

  return result;
}

unint64_t sub_1BBB6B694()
{
  result = qword_1EBC7D658;
  if (!qword_1EBC7D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D658);
  }

  return result;
}

unint64_t sub_1BBB6B6E8()
{
  result = qword_1EBC7D660;
  if (!qword_1EBC7D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D660);
  }

  return result;
}

unint64_t sub_1BBB6B73C()
{
  result = qword_1EBC7D668;
  if (!qword_1EBC7D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D668);
  }

  return result;
}

unint64_t sub_1BBB6B790()
{
  result = qword_1EBC7D670;
  if (!qword_1EBC7D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D670);
  }

  return result;
}

unint64_t sub_1BBB6B7E4()
{
  result = qword_1EBC7D678;
  if (!qword_1EBC7D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D678);
  }

  return result;
}

unint64_t sub_1BBB6B838()
{
  result = qword_1EBC7D680;
  if (!qword_1EBC7D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D680);
  }

  return result;
}

unint64_t sub_1BBB6B88C()
{
  result = qword_1EBC7D688;
  if (!qword_1EBC7D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D688);
  }

  return result;
}

unint64_t sub_1BBB6B8E0()
{
  result = qword_1EBC7D690;
  if (!qword_1EBC7D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D690);
  }

  return result;
}

unint64_t sub_1BBB6B934()
{
  result = qword_1EBC7D698;
  if (!qword_1EBC7D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D698);
  }

  return result;
}

unint64_t sub_1BBB6B988()
{
  result = qword_1EBC7D6A0;
  if (!qword_1EBC7D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D6A0);
  }

  return result;
}

unint64_t sub_1BBB6B9DC()
{
  result = qword_1EBC7D6A8;
  if (!qword_1EBC7D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D6A8);
  }

  return result;
}

unint64_t sub_1BBB6BA30()
{
  result = qword_1EBC7D6B0;
  if (!qword_1EBC7D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D6B0);
  }

  return result;
}

uint64_t sub_1BBB6BA84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1BBB6BA9C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

BOOL _s21UIIntelligenceSupport19IntelligenceCommandV16KeyboardShortcutV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 16);
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    v12 = *(a1 + 8);
    v13 = v4;
    v14 = v5;
    v9 = v3;
    v10 = v2;
    v11 = v6;
    sub_1BBB6BA84(v12, v4, v5);
    sub_1BBB6BA84(v3, v2, v6);
    v7 = _s21UIIntelligenceSupport19IntelligenceCommandV16KeyboardShortcutV13KeyEquivalentO2eeoiySbAG_AGtFZ_0(&v12, &v9);
    sub_1BBB6BA9C(v9, v10, v11);
    sub_1BBB6BA9C(v12, v13, v14);
  }

  else
  {
    return 0;
  }

  return v7;
}

unint64_t sub_1BBB6BB60()
{
  result = qword_1EBC7D750;
  if (!qword_1EBC7D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D750);
  }

  return result;
}

unint64_t sub_1BBB6BBB4()
{
  result = qword_1EBC7D758;
  if (!qword_1EBC7D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D758);
  }

  return result;
}

unint64_t sub_1BBB6BC08()
{
  result = qword_1EBC7D760;
  if (!qword_1EBC7D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D760);
  }

  return result;
}

unint64_t sub_1BBB6BC5C()
{
  result = qword_1EBC7D770;
  if (!qword_1EBC7D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D770);
  }

  return result;
}

unint64_t sub_1BBB6BCB0()
{
  result = qword_1EBC7D778;
  if (!qword_1EBC7D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D778);
  }

  return result;
}

uint64_t sub_1BBB6BD04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1BBB6BA84(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1BBB6BD24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1BBB6BA9C(a2, a3, a4);
  }

  return result;
}

unint64_t sub_1BBB6BD44()
{
  result = qword_1EBC7D788;
  if (!qword_1EBC7D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D788);
  }

  return result;
}

BOOL _s21UIIntelligenceSupport19IntelligenceCommandV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v32 = *(a1 + 56);
  v33 = *(a1 + 48);
  v6 = *(a1 + 72);
  v25 = *(a1 + 80);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v28 = *(a2 + 48);
  v29 = *(a2 + 56);
  v30 = *(a1 + 64);
  v31 = *(a2 + 64);
  v11 = *(a2 + 72);
  v26 = *(a2 + 73);
  v27 = *(a1 + 73);
  v24 = *(a2 + 80);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1BBB842F8() & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1BBB842F8() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_1BBAFF548(v4, v10);
  result = 0;
  if ((v12 & 1) == 0 || v5 != v9)
  {
    return result;
  }

  v14 = v6;
  if (v6 == 255)
  {
    v17 = v32;
    v18 = v33;
    v16 = v30;
    sub_1BBB6BD04(v33, v32, v30, 255);
    v19 = v28;
    if (v11 == 255)
    {
      sub_1BBB6BD04(v28, v29, v31, 255);
      sub_1BBB6BD24(v33, v32, v30, 255);
      if (v27 == v26)
      {
        return v25 == v24;
      }

      return 0;
    }

    v15 = v11;
    v22 = v29;
    v23 = v31;
    sub_1BBB6BD04(v28, v29, v31, v15);
LABEL_16:
    sub_1BBB6BD24(v18, v17, v16, v14);
    sub_1BBB6BD24(v19, v22, v23, v15);
    return 0;
  }

  v15 = v11;
  v16 = v30;
  v17 = v32;
  v18 = v33;
  v19 = v28;
  if (v11 == 255)
  {
    sub_1BBB6BD04(v33, v32, v30, v14);
    v22 = v29;
    v23 = v31;
    sub_1BBB6BD04(v28, v29, v31, 255);
    sub_1BBB6BD04(v33, v32, v30, v14);
    sub_1BBB6BA9C(v32, v30, v14);
    goto LABEL_16;
  }

  if (v33 == v28)
  {
    v37 = v32;
    v38 = v30;
    v39 = v14;
    v34 = v29;
    v35 = v31;
    v36 = v11;
    sub_1BBB6BD04(v33, v32, v30, v14);
    sub_1BBB6BD04(v33, v29, v31, v11);
    sub_1BBB6BD04(v33, v32, v30, v14);
    sub_1BBB6BA84(v32, v30, v14);
    sub_1BBB6BD04(v33, v29, v31, v11);
    v20 = _s21UIIntelligenceSupport19IntelligenceCommandV16KeyboardShortcutV13KeyEquivalentO2eeoiySbAG_AGtFZ_0(&v37, &v34);
    sub_1BBB6BA9C(v34, v35, v36);
    sub_1BBB6BA9C(v37, v38, v39);
    sub_1BBB6BD24(v33, v29, v31, v11);
    v21 = !v20;
  }

  else
  {
    sub_1BBB6BD04(v33, v32, v30, v14);
    sub_1BBB6BD04(v28, v29, v31, v11);
    sub_1BBB6BD04(v33, v32, v30, v14);
    sub_1BBB6BD24(v28, v29, v31, v11);
    v21 = 1;
  }

  sub_1BBB6BA9C(v32, v30, v14);
  sub_1BBB6BD24(v33, v32, v30, v14);
  result = 0;
  if ((v21 & 1) == 0 && ((v27 ^ v26) & 1) == 0)
  {
    return v25 == v24;
  }

  return result;
}

unint64_t sub_1BBB6C13C()
{
  result = qword_1EBC7D7A0;
  if (!qword_1EBC7D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7A0);
  }

  return result;
}

unint64_t sub_1BBB6C190()
{
  result = qword_1EBC7D7A8;
  if (!qword_1EBC7D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7A8);
  }

  return result;
}

unint64_t sub_1BBB6C1E4()
{
  result = qword_1EBC7D7B0;
  if (!qword_1EBC7D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7B0);
  }

  return result;
}

unint64_t sub_1BBB6C238()
{
  result = qword_1EBC7D7C0;
  if (!qword_1EBC7D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7C0);
  }

  return result;
}

unint64_t sub_1BBB6C28C()
{
  result = qword_1EBC7D7C8;
  if (!qword_1EBC7D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7C8);
  }

  return result;
}

unint64_t sub_1BBB6C2E0()
{
  result = qword_1EBC7D7D0;
  if (!qword_1EBC7D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7D0);
  }

  return result;
}

unint64_t sub_1BBB6C338()
{
  result = qword_1EBC7D7D8;
  if (!qword_1EBC7D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7D8);
  }

  return result;
}

unint64_t sub_1BBB6C390()
{
  result = qword_1EBC7D7E0;
  if (!qword_1EBC7D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7E0);
  }

  return result;
}

unint64_t sub_1BBB6C3E4()
{
  result = qword_1EBC7D7E8;
  if (!qword_1EBC7D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7E8);
  }

  return result;
}

unint64_t sub_1BBB6C43C()
{
  result = qword_1EBC7D7F0;
  if (!qword_1EBC7D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7F0);
  }

  return result;
}

unint64_t sub_1BBB6C494()
{
  result = qword_1EBC7D7F8;
  if (!qword_1EBC7D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D7F8);
  }

  return result;
}

unint64_t sub_1BBB6C4EC()
{
  result = qword_1EBC7D800;
  if (!qword_1EBC7D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D800);
  }

  return result;
}

unint64_t sub_1BBB6C544()
{
  result = qword_1EBC7D808;
  if (!qword_1EBC7D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D808);
  }

  return result;
}

unint64_t sub_1BBB6C5A0()
{
  result = qword_1EBC7D810;
  if (!qword_1EBC7D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D810);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport19IntelligenceCommandV16KeyboardShortcutV13KeyEquivalentO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_21UIIntelligenceSupport19IntelligenceCommandV16KeyboardShortcutVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BBB6C648(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1BBB6C690(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BBB6C6F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1BBB6C73C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceCommand.KeyboardShortcut.KeyEquivalent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntelligenceCommand.KeyboardShortcut.KeyEquivalent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BBB6CA58()
{
  result = qword_1EBC7D818;
  if (!qword_1EBC7D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D818);
  }

  return result;
}

unint64_t sub_1BBB6CAB0()
{
  result = qword_1EBC7D820;
  if (!qword_1EBC7D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D820);
  }

  return result;
}

unint64_t sub_1BBB6CB08()
{
  result = qword_1EBC7D828;
  if (!qword_1EBC7D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D828);
  }

  return result;
}

unint64_t sub_1BBB6CB60()
{
  result = qword_1EBC7D830;
  if (!qword_1EBC7D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D830);
  }

  return result;
}

unint64_t sub_1BBB6CBB8()
{
  result = qword_1EBC7D838;
  if (!qword_1EBC7D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D838);
  }

  return result;
}

unint64_t sub_1BBB6CC10()
{
  result = qword_1EBC7D840;
  if (!qword_1EBC7D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D840);
  }

  return result;
}

unint64_t sub_1BBB6CC68()
{
  result = qword_1EBC7D848;
  if (!qword_1EBC7D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D848);
  }

  return result;
}

unint64_t sub_1BBB6CCC0()
{
  result = qword_1EBC7D850;
  if (!qword_1EBC7D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D850);
  }

  return result;
}

unint64_t sub_1BBB6CD18()
{
  result = qword_1EBC7D858;
  if (!qword_1EBC7D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D858);
  }

  return result;
}

unint64_t sub_1BBB6CD70()
{
  result = qword_1EBC7D860;
  if (!qword_1EBC7D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D860);
  }

  return result;
}

unint64_t sub_1BBB6CDC8()
{
  result = qword_1EBC7D868;
  if (!qword_1EBC7D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D868);
  }

  return result;
}

unint64_t sub_1BBB6CE20()
{
  result = qword_1EBC7D870;
  if (!qword_1EBC7D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D870);
  }

  return result;
}

unint64_t sub_1BBB6CE78()
{
  result = qword_1EBC7D878;
  if (!qword_1EBC7D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D878);
  }

  return result;
}

unint64_t sub_1BBB6CED0()
{
  result = qword_1EBC7D880;
  if (!qword_1EBC7D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D880);
  }

  return result;
}

unint64_t sub_1BBB6CF28()
{
  result = qword_1EBC7D888;
  if (!qword_1EBC7D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D888);
  }

  return result;
}

unint64_t sub_1BBB6CF80()
{
  result = qword_1EBC7D890;
  if (!qword_1EBC7D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D890);
  }

  return result;
}

unint64_t sub_1BBB6CFD8()
{
  result = qword_1EBC7D898;
  if (!qword_1EBC7D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D898);
  }

  return result;
}

unint64_t sub_1BBB6D030()
{
  result = qword_1EBC7D8A0;
  if (!qword_1EBC7D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8A0);
  }

  return result;
}

unint64_t sub_1BBB6D088()
{
  result = qword_1EBC7D8A8;
  if (!qword_1EBC7D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8A8);
  }

  return result;
}

unint64_t sub_1BBB6D0E0()
{
  result = qword_1EBC7D8B0;
  if (!qword_1EBC7D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8B0);
  }

  return result;
}

unint64_t sub_1BBB6D138()
{
  result = qword_1EBC7D8B8;
  if (!qword_1EBC7D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8B8);
  }

  return result;
}

unint64_t sub_1BBB6D190()
{
  result = qword_1EBC7D8C0;
  if (!qword_1EBC7D8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8C0);
  }

  return result;
}

unint64_t sub_1BBB6D1E8()
{
  result = qword_1EBC7D8C8;
  if (!qword_1EBC7D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8C8);
  }

  return result;
}

unint64_t sub_1BBB6D240()
{
  result = qword_1EBC7D8D0;
  if (!qword_1EBC7D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8D0);
  }

  return result;
}

unint64_t sub_1BBB6D298()
{
  result = qword_1EBC7D8D8;
  if (!qword_1EBC7D8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8D8);
  }

  return result;
}

unint64_t sub_1BBB6D2F0()
{
  result = qword_1EBC7D8E0;
  if (!qword_1EBC7D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8E0);
  }

  return result;
}

unint64_t sub_1BBB6D348()
{
  result = qword_1EBC7D8E8;
  if (!qword_1EBC7D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8E8);
  }

  return result;
}

unint64_t sub_1BBB6D3A0()
{
  result = qword_1EBC7D8F0;
  if (!qword_1EBC7D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8F0);
  }

  return result;
}

unint64_t sub_1BBB6D3F8()
{
  result = qword_1EBC7D8F8;
  if (!qword_1EBC7D8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D8F8);
  }

  return result;
}

unint64_t sub_1BBB6D450()
{
  result = qword_1EBC7D900;
  if (!qword_1EBC7D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D900);
  }

  return result;
}

unint64_t sub_1BBB6D4A8()
{
  result = qword_1EBC7D908;
  if (!qword_1EBC7D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D908);
  }

  return result;
}

unint64_t sub_1BBB6D500()
{
  result = qword_1EBC7D910;
  if (!qword_1EBC7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D910);
  }

  return result;
}

unint64_t sub_1BBB6D558()
{
  result = qword_1EBC7D918;
  if (!qword_1EBC7D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D918);
  }

  return result;
}

unint64_t sub_1BBB6D5B0()
{
  result = qword_1EBC7D920;
  if (!qword_1EBC7D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D920);
  }

  return result;
}

unint64_t sub_1BBB6D608()
{
  result = qword_1EBC7D928;
  if (!qword_1EBC7D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D928);
  }

  return result;
}

unint64_t sub_1BBB6D660()
{
  result = qword_1EBC7D930;
  if (!qword_1EBC7D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D930);
  }

  return result;
}

unint64_t sub_1BBB6D6B8()
{
  result = qword_1EBC7D938;
  if (!qword_1EBC7D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D938);
  }

  return result;
}

unint64_t sub_1BBB6D710()
{
  result = qword_1EBC7D940;
  if (!qword_1EBC7D940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D940);
  }

  return result;
}

unint64_t sub_1BBB6D768()
{
  result = qword_1EBC7D948;
  if (!qword_1EBC7D948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D948);
  }

  return result;
}

unint64_t sub_1BBB6D7C0()
{
  result = qword_1EBC7D950;
  if (!qword_1EBC7D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D950);
  }

  return result;
}

unint64_t sub_1BBB6D818()
{
  result = qword_1EBC7D958;
  if (!qword_1EBC7D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D958);
  }

  return result;
}

unint64_t sub_1BBB6D870()
{
  result = qword_1EBC7D960;
  if (!qword_1EBC7D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D960);
  }

  return result;
}

unint64_t sub_1BBB6D8C8()
{
  result = qword_1EBC7D968;
  if (!qword_1EBC7D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D968);
  }

  return result;
}

unint64_t sub_1BBB6D920()
{
  result = qword_1EBC7D970;
  if (!qword_1EBC7D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D970);
  }

  return result;
}

unint64_t sub_1BBB6D978()
{
  result = qword_1EBC7D978;
  if (!qword_1EBC7D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D978);
  }

  return result;
}

unint64_t sub_1BBB6D9D0()
{
  result = qword_1EBC7D980;
  if (!qword_1EBC7D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D980);
  }

  return result;
}

unint64_t sub_1BBB6DA28()
{
  result = qword_1EBC7D988;
  if (!qword_1EBC7D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D988);
  }

  return result;
}

unint64_t sub_1BBB6DA80()
{
  result = qword_1EBC7D990;
  if (!qword_1EBC7D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D990);
  }

  return result;
}

uint64_t sub_1BBB6DAD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F7272417075 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7272416E776F64 && a2 == 0xE900000000000077 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7272417466656CLL && a2 == 0xE900000000000077 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7272417468676972 && a2 == 0xEA0000000000776FLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574656C6564 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4464726177726F66 && a2 == 0xED00006574656C65 || (sub_1BBB842F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7261656C63 && a2 == 0xE500000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x705565676170 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6E776F4465676170 && a2 == 0xE800000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 6447476 && a2 == 0xE300000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6563617073 && a2 == 0xE500000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E7275746572 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x657061637365 && a2 == 0xE600000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
  {

    return 16;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1BBB6E018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6C61646E617473 && a2 == 0xEF656C746954656ELL || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001BBB9D350 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F7247756E656DLL && a2 == 0xE900000000000070 || (sub_1BBB842F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BBB9D370 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F667265507369 && a2 == 0xED0000656C62616DLL || (sub_1BBB842F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BBB842F8();

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

uint64_t IntelligenceElement.TableCell.isSelected.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t IntelligenceElement.TableCell.rowIndex.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IntelligenceElement.TableCell.rowIndex.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    result = swift_beginAccess();
    *(v6 + 16) = a1;
    *(v6 + 24) = v4;
    *(v6 + 32) = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = v4;
    *(v8 + 32) = v5;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.TableCell.rowIndex.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 16);
  return sub_1BBB6E488;
}

void sub_1BBB6E488(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(v5 + 24);
  v7 = *(v5 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[10];
  if (a2)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *v9;
LABEL_6:
      swift_beginAccess();
      *(v10 + 16) = v4;
      *(v10 + 24) = v6;
      *(v10 + 32) = v7;
      goto LABEL_8;
    }
  }

  else if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *v9;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;

  *v9 = v11;
LABEL_8:

  free(v3);
}

uint64_t IntelligenceElement.TableCell.columnIndex.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 24);
}

uint64_t IntelligenceElement.TableCell.columnIndex.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    result = swift_beginAccess();
    *(v6 + 16) = v4;
    *(v6 + 24) = a1;
    *(v6 + 32) = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
    v8 = swift_allocObject();
    *(v8 + 16) = v4;
    *(v8 + 24) = a1;
    *(v8 + 32) = v5;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.TableCell.columnIndex.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 24);
  return sub_1BBB6E6FC;
}

void sub_1BBB6E6FC(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[10];
  if (a2)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *v9;
LABEL_6:
      swift_beginAccess();
      *(v10 + 16) = v6;
      *(v10 + 24) = v4;
      *(v10 + 32) = v7;
      goto LABEL_8;
    }
  }

  else if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *v9;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v4;
  *(v11 + 32) = v7;

  *v9 = v11;
LABEL_8:

  free(v3);
}

uint64_t IntelligenceElement.TableCell.isSelected.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v4 = *(v3 + 24);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    result = swift_beginAccess();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    *(v6 + 32) = a1 & 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v4;
    *(v8 + 32) = a1 & 1;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.TableCell.isSelected.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *v1;
  *(v3 + 80) = v5;
  swift_beginAccess();
  *(v4 + 88) = *(v5 + 32);
  return sub_1BBB6E934;
}

void sub_1BBB6E934(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[9];
  if (a2)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *v9;
LABEL_6:
      swift_beginAccess();
      *(v10 + 16) = v7;
      *(v10 + 24) = v6;
      *(v10 + 32) = v5;
      goto LABEL_8;
    }
  }

  else if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *v9;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  *(v11 + 32) = v5;

  *v9 = v11;
LABEL_8:

  free(v3);
}

uint64_t IntelligenceElement.TableCell.init(rowIndex:columnIndex:isSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *a4 = result;
  return result;
}

uint64_t sub_1BBB6EA6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1BBB6EAA4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E496E6D756C6F63;
  v4 = 0xEB00000000786564;
  if (v2 != 1)
  {
    v3 = 0x7463656C65537369;
    v4 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7865646E49776F72;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6E496E6D756C6F63;
  v8 = 0xEB00000000786564;
  if (*a2 != 1)
  {
    v7 = 0x7463656C65537369;
    v8 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7865646E49776F72;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB6EBC0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB6EC70()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB6ED0C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB6EDB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB6F880();
  *a1 = result;
  return result;
}

void sub_1BBB6EDE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEB00000000786564;
  v5 = 0x6E496E6D756C6F63;
  if (v2 != 1)
  {
    v5 = 0x7463656C65537369;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7865646E49776F72;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBB6EE54()
{
  v1 = 0x6E496E6D756C6F63;
  if (*v0 != 1)
  {
    v1 = 0x7463656C65537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E49776F72;
  }
}

uint64_t sub_1BBB6EEBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB6F880();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB6EEE4(uint64_t a1)
{
  v2 = sub_1BBB6F65C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB6EF20(uint64_t a1)
{
  v2 = sub_1BBB6F65C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.TableCell.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6F65C();
  sub_1BBB84478();
  swift_beginAccess();
  v11 = 0;
  sub_1BBB84278();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_1BBB84278();
  if (*(v8 + 32) != 1)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 2;
  sub_1BBB84258();
  return (*(v5 + 8))(v7, v4);
}

uint64_t IntelligenceElement.TableCell.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB6F65C();
  sub_1BBB84458();
  if (!v2)
  {
    v18 = 0;
    v9 = sub_1BBB841A8();
    v17 = 1;
    v15 = sub_1BBB841A8();
    v16 = 2;
    v11 = sub_1BBB84148();
    (*(v6 + 8))(v8, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9A0);
    v12 = swift_allocObject();
    v13 = v15;
    *(v12 + 16) = v9;
    *(v12 + 24) = v13;
    *(v12 + 32) = v11 & 1;
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t IntelligenceElement.TableCell.description.getter()
{
  v1 = *v0;
  v22[0] = 0x203A776F72;
  v22[1] = 0xE500000000000000;
  swift_beginAccess();
  v2 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v2);

  v3 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1BBA86A94((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = 0x203A776F72;
  *(v6 + 5) = 0xE500000000000000;
  strcpy(v22, "column: ");
  BYTE1(v22[1]) = 0;
  WORD1(v22[1]) = 0;
  HIDWORD(v22[1]) = -402653184;
  v7 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v7);

  v8 = v22[0];
  v9 = v22[1];
  v11 = *(v3 + 2);
  v10 = *(v3 + 3);
  if (v11 >= v10 >> 1)
  {
    v3 = sub_1BBA86A94((v10 > 1), v11 + 1, 1, v3);
  }

  *(v3 + 2) = v11 + 1;
  v12 = &v3[16 * v11];
  *(v12 + 4) = v8;
  *(v12 + 5) = v9;
  if (*(v1 + 32) == 1)
  {
    strcpy(v22, "isSelected: ");
    BYTE5(v22[1]) = 0;
    HIWORD(v22[1]) = -5120;
    MEMORY[0x1BFB16150](1702195828, 0xE400000000000000);
    v13 = v22[0];
    v14 = v22[1];
    v16 = *(v3 + 2);
    v15 = *(v3 + 3);
    if (v16 >= v15 >> 1)
    {
      v3 = sub_1BBA86A94((v15 > 1), v16 + 1, 1, v3);
    }

    *(v3 + 2) = v16 + 1;
    v17 = &v3[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
  }

  strcpy(v22, "TableCell(");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v18 = sub_1BBB83938();
  v20 = v19;

  MEMORY[0x1BFB16150](v18, v20);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v22[0];
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV9TableCellV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  swift_beginAccess();
  v8 = v4 == *(v3 + 16) && v5 == *(v3 + 24);
  return v8 & (v6 ^ *(v3 + 32) ^ 1u);
}

unint64_t sub_1BBB6F65C()
{
  result = qword_1EBC7D9B0;
  if (!qword_1EBC7D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D9B0);
  }

  return result;
}

uint64_t _s9TableCellV7StorageVwet(uint64_t a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s9TableCellV7StorageVwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BBB6F77C()
{
  result = qword_1EBC7D9C0;
  if (!qword_1EBC7D9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D9C0);
  }

  return result;
}

unint64_t sub_1BBB6F7D4()
{
  result = qword_1EBC7D9C8;
  if (!qword_1EBC7D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D9C8);
  }

  return result;
}

unint64_t sub_1BBB6F82C()
{
  result = qword_1EBC7D9D0;
  if (!qword_1EBC7D9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D9D0);
  }

  return result;
}

uint64_t sub_1BBB6F880()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB6F8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v31 = a3;
  v6 = *v4;
  swift_beginAccess();
  v7 = v6[3];
  v8 = *(v7 + 16);
  if (v8)
  {
    v29 = MEMORY[0x1E69E7CC0];
    v24 = v6;

    result = sub_1BBAE4F40(0, v8, 0);
    v10 = 0;
    v11 = v29;
    while (v10 < *(v7 + 16))
    {
      v12 = *(v7 + 8 * v10 + 32);

      v30 = v12;
      sub_1BBB2791C(a1, a2, v31, v28);
      if (v5)
      {
      }

      v13 = v28[0];
      v29 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_1BBAE4F40((v14 > 1), v15 + 1, 1);
        v11 = v29;
      }

      ++v10;
      *(v11 + 16) = v15 + 1;
      *(v11 + 8 * v15 + 32) = v13;
      if (v8 == v10)
      {

        v6 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v16 = v6[2];
    v17 = v6[4];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      swift_beginAccess();
      v6[2] = v16;
      v6[3] = v11;
      v6[4] = v17;

      v18 = v6;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v11;
      v18[4] = v17;
    }

    v19 = v6[4];

    v20 = Array<A>.recursiveMap<A>(_:transform:)(a1, a2, v31, v19);

    if (v5)
    {
    }

    else
    {
      swift_beginAccess();
      v22 = v18[2];
      v21 = v18[3];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        v18[2] = v22;
        v18[3] = v21;
        v18[4] = v20;

        *a4 = v18;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
        v23 = swift_allocObject();
        v23[2] = v22;
        v23[3] = v21;
        v23[4] = v20;

        *a4 = v23;
      }
    }
  }

  return result;
}

uint64_t sub_1BBB6FBD8(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v57 = MEMORY[0x1E69E7CC0];

    result = sub_1BBAE4F40(0, v5, 0);
    if (!*(v4 + 16))
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v8 = 0;
    v6 = v57;
    v58 = v5 - 1;
    while (1)
    {
      v9 = *(v4 + 8 * v8 + 32);
      swift_beginAccess();
      v10 = v9[4];
      v54 = v9[3];
      v55 = v10;
      v11 = *(v9 + 11);
      v56 = *(v9 + 10);
      if (v11)
      {
        v47 = v54;
        v48 = v55;
        *&v49 = v56;
        *(&v49 + 1) = v11;
        *&v50 = *(v9 + 12);
        BYTE8(v50) = *(v9 + 104);

        IntelligenceElement.recursivelyPruned()(v45, v12);
        v13 = v9[1];
        v14 = v9[2];
        v15 = v9[3];
        v16 = v9[4];
        v17 = v9[5];
        *(v51 + 9) = *(v9 + 89);
        v50 = v16;
        v51[0] = v17;
        v48 = v14;
        v49 = v15;
        v47 = v13;
        v18 = v9[2];
        v40 = v9[1];
        v41 = v18;
        v19 = v9[3];
        v20 = v9[4];
        *(v53 + 9) = *(v9 + 89);
        v21 = v9[5];
        v52[1] = v20;
        v53[0] = v21;
        v52[0] = v19;
        sub_1BBB2697C(&v47, v38);
        sub_1BBA8BCC4(v52, &qword_1EBC7BAA8);
        v42 = v45[0];
        v43 = v45[1];
        v44[0] = v46[0];
        *(v44 + 9) = *(v46 + 9);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          v22 = v9[1];
          v23 = v9[2];
          v24 = v9[3];
          v25 = v9[4];
          v26 = v9[5];
          *&v39[9] = *(v9 + 89);
          v38[3] = v25;
          *v39 = v26;
          v38[1] = v23;
          v38[2] = v24;
          v38[0] = v22;
          *(v9 + 89) = *(v44 + 9);
          v27 = v41;
          v28 = v42;
          v9[1] = v40;
          v9[2] = v27;
          v29 = v44[0];
          v9[4] = v43;
          v9[5] = v29;
          v9[3] = v28;
          result = sub_1BBB269D8(v38);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
          v30 = swift_allocObject();
          v31 = v43;
          v32 = v44[0];
          v33 = v41;
          v30[3] = v42;
          v30[4] = v31;
          v30[5] = v32;
          *(v30 + 89) = *(v44 + 9);
          v30[1] = v40;
          v30[2] = v33;

          v9 = v30;
        }
      }

      else
      {
      }

      v57 = v6;
      v35 = *(v6 + 16);
      v34 = *(v6 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_1BBAE4F40((v34 > 1), v35 + 1, 1);
        v6 = v57;
      }

      *(v6 + 16) = v35 + 1;
      *(v6 + 8 * v35 + 32) = v9;
      if (v58 == v8)
      {
        break;
      }

      if (++v8 >= *(v4 + 16))
      {
        goto LABEL_18;
      }
    }

    v2 = v1;
  }

  IntelligenceElement.Table.columns.setter(v6);
  swift_beginAccess();

  v37 = sub_1BBB4E804(v36);

  if (!v2)
  {
    return IntelligenceElement.Table.rows.setter(v37);
  }

  return result;
}

uint64_t sub_1BBB6FF08(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v41 = v2;
    v64 = MEMORY[0x1E69E7CC0];

    result = sub_1BBAE4F40(0, v6, 0);
    if (!*(v5 + 16))
    {
LABEL_21:
      __break(1u);
      return result;
    }

    v9 = v5;
    v10 = 0;
    v7 = v64;
    v65 = v6 - 1;
    while (1)
    {
      v11 = *(v9 + 8 * v10 + 32);
      swift_beginAccess();
      v12 = v11[3];
      v13 = v11[4];
      *&v63[9] = *(v11 + 89);
      *v63 = v11[5];
      v62[0] = v12;
      v62[1] = v13;
      if (*&v63[8])
      {
        v14 = v9;
        v15 = v11[4];
        v55[0] = v11[3];
        v55[1] = v15;
        v56 = *(v11 + 10);
        v57 = *&v63[8];
        v58 = *(v11 + 12);
        v59 = *(v11 + 104);

        sub_1BBA9EDF0(v62, v51);
        a1(v60, v55);
        if (v3)
        {

          sub_1BBA8BCC4(v62, &qword_1EBC7BAA8);
        }

        sub_1BBA8BCC4(v62, &qword_1EBC7BAA8);
        v16 = v11[3];
        v17 = v11[4];
        v18 = v11[5];
        *(v52 + 9) = *(v11 + 89);
        v51[3] = v17;
        v52[0] = v18;
        v19 = v11[1];
        v51[1] = v11[2];
        v51[2] = v16;
        v51[0] = v19;
        v20 = v11[2];
        v46 = v11[1];
        v47 = v20;
        v21 = v11[3];
        v22 = v11[4];
        *(v54 + 9) = *(v11 + 89);
        v23 = v11[5];
        v53[1] = v22;
        v54[0] = v23;
        v53[0] = v21;
        sub_1BBB2697C(v51, v44);
        sub_1BBA8BCC4(v53, &qword_1EBC7BAA8);
        v48 = v60[0];
        v49 = v60[1];
        *v50 = v61[0];
        *&v50[9] = *(v61 + 9);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          swift_beginAccess();
          v24 = v11[1];
          v25 = v11[2];
          v26 = v11[3];
          v27 = v11[4];
          v28 = v11[5];
          *&v45[9] = *(v11 + 89);
          v44[3] = v27;
          *v45 = v28;
          v44[1] = v25;
          v44[2] = v26;
          v44[0] = v24;
          *(v11 + 89) = *&v50[9];
          v29 = v47;
          v30 = v48;
          v11[1] = v46;
          v11[2] = v29;
          v31 = *v50;
          v11[4] = v49;
          v11[5] = v31;
          v11[3] = v30;
          result = sub_1BBB269D8(v44);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
          v32 = swift_allocObject();
          v33 = v49;
          v34 = *v50;
          v35 = v47;
          v32[3] = v48;
          v32[4] = v33;
          v32[5] = v34;
          *(v32 + 89) = *&v50[9];
          v32[1] = v46;
          v32[2] = v35;

          v11 = v32;
        }

        v9 = v14;
      }

      else
      {
      }

      v64 = v7;
      v37 = *(v7 + 16);
      v36 = *(v7 + 24);
      if (v37 >= v36 >> 1)
      {
        result = sub_1BBAE4F40((v36 > 1), v37 + 1, 1);
        v7 = v64;
      }

      *(v7 + 16) = v37 + 1;
      *(v7 + 8 * v37 + 32) = v11;
      if (v65 == v10)
      {

        v2 = v41;
        break;
      }

      if (++v10 >= *(v9 + 16))
      {
        goto LABEL_21;
      }
    }
  }

  IntelligenceElement.Table.columns.setter(v7);
  v38 = *v2;
  swift_beginAccess();
  v39 = *(v38 + 32);

  v40 = sub_1BBA9B7E4(a1, a2, v39);

  if (!v3)
  {
    return IntelligenceElement.Table.rows.setter(v40);
  }

  return result;
}

uint64_t IntelligenceElement.Table.numberOfRows.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IntelligenceElement.Table.numberOfRows.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    v6[2] = a1;
    v6[3] = v4;
    v6[4] = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
    v8 = swift_allocObject();
    v8[2] = a1;
    v8[3] = v4;
    v8[4] = v5;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.Table.numberOfRows.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 16);
  return sub_1BBB70490;
}

void sub_1BBB70490(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v7 = *(v5 + 24);
  v6 = *(v5 + 32);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = v3[10];
  if (a2)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *v9;
LABEL_6:
      swift_beginAccess();
      v10[2] = v4;
      v10[3] = v7;
      v10[4] = v6;

      goto LABEL_8;
    }
  }

  else if (isUniquelyReferenced_nonNull_native)
  {
    v10 = *v9;
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v7;
  v11[4] = v6;

  *v9 = v11;
LABEL_8:

  free(v3);
}

uint64_t IntelligenceElement.Table.columns.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[2];
  v5 = v3[4];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    v6[2] = v4;
    v6[3] = a1;
    v6[4] = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = a1;
    v8[4] = v5;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.Table.columns.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 24);

  return sub_1BBB70740;
}

uint64_t IntelligenceElement.Table.rows.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = v3[2];
  v4 = v3[3];

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v1;
    swift_beginAccess();
    v6[2] = v5;
    v6[3] = v4;
    v6[4] = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = a1;

    *v1 = v8;
  }

  return result;
}

void (*IntelligenceElement.Table.rows.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 32);

  return sub_1BBB70908;
}

void sub_1BBB70920(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  if (a2)
  {

    a3(v6);
  }

  else
  {
    a3(v5);
  }

  free(v4);
}

void *IntelligenceElement.Table.init(numberOfRows:columns:rows:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_1BBB70A18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6D756C6F63;
  if (v2 != 1)
  {
    v4 = 1937207154;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x664F7265626D756ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000073776F52;
  }

  v7 = 0xE700000000000000;
  v8 = 0x736E6D756C6F63;
  if (*a2 != 1)
  {
    v8 = 1937207154;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x664F7265626D756ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000073776F52;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB70B10()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB70BB4()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB70C44()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB70CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB71FC4();
  *a1 = result;
  return result;
}

void sub_1BBB70D14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073776F52;
  v4 = 0xE700000000000000;
  v5 = 0x736E6D756C6F63;
  if (v2 != 1)
  {
    v5 = 1937207154;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x664F7265626D756ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBB70D74()
{
  v1 = 0x736E6D756C6F63;
  if (*v0 != 1)
  {
    v1 = 1937207154;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x664F7265626D756ELL;
  }
}

uint64_t sub_1BBB70DD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB71FC4();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB70DF8(uint64_t a1)
{
  v2 = sub_1BBB710D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB70E34(uint64_t a1)
{
  v2 = sub_1BBB710D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Table.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB710D0();
  sub_1BBB84478();
  swift_beginAccess();
  LOBYTE(v11) = 0;
  sub_1BBB84278();
  if (!v2)
  {
    v11 = *(v8 + 24);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9F0);
    sub_1BBB714A8(&qword_1EBC7D9F8, sub_1BBB71124);
    sub_1BBB84288();
    v11 = *(v8 + 32);
    HIBYTE(v10) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    sub_1BBB71178(&qword_1ED6BDCB0, sub_1BBAB5674);
    sub_1BBB84288();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1BBB710D0()
{
  result = qword_1EBC7D9E8;
  if (!qword_1EBC7D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7D9E8);
  }

  return result;
}

unint64_t sub_1BBB71124()
{
  result = qword_1EBC7DA00;
  if (!qword_1EBC7DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA00);
  }

  return result;
}

uint64_t sub_1BBB71178(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7BA80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t IntelligenceElement.Table.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB710D0();
  sub_1BBB84458();
  if (!v2)
  {
    LOBYTE(v16) = 0;
    v9 = sub_1BBB841A8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9F0);
    v15 = 1;
    sub_1BBB714A8(&qword_1EBC7DA10, sub_1BBB71520);
    sub_1BBB841B8();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BA80);
    v15 = 2;
    sub_1BBB71178(&qword_1EBC7ABA0, sub_1BBAB80F0);
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7D9D8);
    v13 = swift_allocObject();
    v13[2] = v9;
    v13[3] = v11;
    v13[4] = v12;
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB714A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7D9F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBB71520()
{
  result = qword_1EBC7DA18;
  if (!qword_1EBC7DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA18);
  }

  return result;
}

uint64_t IntelligenceElement.Table.description.getter()
{
  sub_1BBB84028();

  strcpy(v15, "numberOfRows: ");
  HIBYTE(v15[1]) = -18;
  swift_beginAccess();
  v0 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v0);

  v1 = v15[0];
  v2 = v15[1];
  v3 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1BBA86A94((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[16 * v5];
  *(v6 + 4) = v1;
  *(v6 + 5) = v2;
  sub_1BBB84028();

  v15[0] = 0xD000000000000011;
  v15[1] = 0x80000001BBB9D390;
  v7 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v7);

  v9 = *(v3 + 2);
  v8 = *(v3 + 3);
  if (v9 >= v8 >> 1)
  {
    v3 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v3);
  }

  *(v3 + 2) = v9 + 1;
  v10 = &v3[16 * v9];
  *(v10 + 4) = 0xD000000000000011;
  *(v10 + 5) = 0x80000001BBB9D390;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v11 = sub_1BBB83938();
  v13 = v12;

  MEMORY[0x1BFB16150](v11, v13);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x28656C626154;
}

uint64_t sub_1BBB71820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BBB71868(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1BBB718BC()
{
  result = qword_1EBC7DA20;
  if (!qword_1EBC7DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA20);
  }

  return result;
}

unint64_t sub_1BBB71914()
{
  result = qword_1EBC7DA28;
  if (!qword_1EBC7DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA28);
  }

  return result;
}

unint64_t sub_1BBB7196C()
{
  result = qword_1EBC7DA30;
  if (!qword_1EBC7DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA30);
  }

  return result;
}

uint64_t sub_1BBB719C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  v16 = *(a2 + 16);
  if (v16 != *(a5 + 16))
  {
    return 0;
  }

  v86 = v15;
  v87 = v14;
  v88 = v13;
  v89 = v12;
  v90 = v11;
  v91 = v10;
  v92 = v9;
  v93 = v8;
  v94 = v6;
  v95 = v7;
  if (v16)
  {
    v17 = a2 == a5;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
LABEL_8:
    v18 = sub_1BBAFF5D8(a3, a6);
  }

  else
  {
    v20 = (a2 + 32);
    v21 = (a5 + 32);
    v22 = v16 - 1;
    while (1)
    {
      v23 = *v20;
      v24 = *v21;
      swift_beginAccess();
      v25 = v23[4];
      v79 = v23[3];
      v80 = v25;
      *v81 = v23[5];
      *&v81[9] = *(v23 + 89);
      v26 = v23[2];
      *v78 = v23[1];
      *&v78[16] = v26;
      swift_beginAccess();
      v27 = v24[1];
      v28 = v24[4];
      v83 = v24[3];
      v84 = v28;
      v85[0] = v24[5];
      *(v85 + 9) = *(v24 + 89);
      v29 = v24[2];
      *v82 = v27;
      *&v82[16] = v29;
      if (*v78 != v27)
      {
        break;
      }

      if (*&v78[16])
      {
        if (!*&v82[16] || *&v78[8] != *&v82[8] && (sub_1BBB842F8() & 1) == 0)
        {
          break;
        }
      }

      else if (*&v82[16])
      {
        break;
      }

      if (v78[24] != v82[24])
      {
        break;
      }

      v48 = v22;
      v75 = v79;
      v76 = v80;
      *&v72[7] = v83;
      v77 = *v81;
      v30 = *&v81[8];
      v73 = *&v81[16];
      v74 = v81[24];
      *&v72[23] = v84;
      v31 = *(&v85[0] + 1);
      *&v72[39] = *&v85[0];
      v71 = BYTE8(v85[1]);
      v70 = *&v85[1];
      if (*&v81[8])
      {
        v47 = v20;
        v53 = v79;
        v54 = v80;
        v32 = *v81;
        v55 = *v81;
        v56 = *&v81[8];
        v58 = v81[24];
        v57 = *&v81[16];
        v33 = *&v81[16];
        if (!*(&v85[0] + 1))
        {

          sub_1BBB2697C(v78, &v59);
          sub_1BBB2697C(v82, &v59);
          sub_1BBA9EDF0(&v79, &v59);
          sub_1BBA9EDF0(&v83, &v59);
          sub_1BBA9EDF0(&v53, &v59);
          sub_1BBA8ABF8(v32);

LABEL_35:
          v59 = v75;
          v60 = v76;
          v61 = v77;
          v62 = v30;
          v63 = v73;
          v64 = v74;
          v65 = *v72;
          *v66 = *&v72[16];
          *&v66[15] = *&v72[31];
          v69 = v71;
          v67 = v31;
          v68 = v70;
          sub_1BBA8BCC4(&v59, &qword_1EBC7BB50);
          sub_1BBB269D8(v82);
          sub_1BBB269D8(v78);

          break;
        }

        v43 = v58;
        v34 = v54;
        v35 = v53;
        v50[0] = v83;
        v50[1] = v84;
        v36 = *&v85[0];
        v50[2] = v85[0];
        v52 = BYTE8(v85[1]);
        v51 = *&v85[1];
        v37 = v83;
        v38 = v84;
        v44 = *&v85[1];
        v42 = BYTE8(v85[1]);

        sub_1BBB2697C(v78, &v59);
        sub_1BBB2697C(v82, &v59);
        sub_1BBA9EDF0(&v79, &v59);
        sub_1BBA9EDF0(&v83, &v59);
        sub_1BBA9EDF0(&v53, &v59);
        v96.origin = v35;
        v96.size = v34;
        v97.origin = v37;
        v97.size = v38;
        if (CGRectEqualToRect(v96, v97) && (*&v59.x = v32, v49 = v36, sub_1BBA8BD24(v32), sub_1BBA8BD24(v36), v39 = static IntelligenceElement.Content.== infix(_:_:)(&v59, &v49), sub_1BBA8ABF8(v49), sub_1BBA8ABF8(*&v59.x), (v39 & 1) != 0) && (sub_1BBAFF5D8(v30, v31) & 1) != 0)
        {
          v40 = sub_1BBA9A01C(v33, v44);
          sub_1BBA8BCC4(v50, &qword_1EBC7BAA8);
          if (v40)
          {
            v41 = v42 ^ v43 ^ 1;
          }

          else
          {
            v41 = 0;
          }
        }

        else
        {
          sub_1BBA8BCC4(v50, &qword_1EBC7BAA8);
          v41 = 0;
        }

        sub_1BBA8ABF8(v32);

        v59 = v75;
        v60 = v76;
        v61 = v77;
        v62 = v30;
        v63 = v73;
        v64 = v74;
        sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
        sub_1BBB269D8(v82);
        sub_1BBB269D8(v78);

        v20 = v47;
        if ((v41 & 1) == 0)
        {
          break;
        }
      }

      else
      {
        if (*(&v85[0] + 1))
        {

          sub_1BBB2697C(v78, &v59);
          sub_1BBB2697C(v82, &v59);
          sub_1BBA9EDF0(&v79, &v59);
          sub_1BBA9EDF0(&v83, &v59);
          goto LABEL_35;
        }

        v59 = v79;
        v60 = v80;
        v61 = *v81;
        v62 = 0;
        v63 = *&v81[16];
        v64 = v81[24];
        sub_1BBA9EDF0(&v79, &v53);
        sub_1BBA9EDF0(&v83, &v53);
        sub_1BBA8BCC4(&v59, &qword_1EBC7BAA8);
      }

      if (!v48)
      {
        goto LABEL_8;
      }

      v22 = v48 - 1;
      ++v21;
      ++v20;
    }

    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_1BBB71FC4()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t DispatchTimeInterval.millisecondsDescription.getter()
{
  v1 = sub_1BBB83818();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = DispatchTimeInterval.milliseconds.getter();
  if (v6)
  {
    (*(v2 + 16))(v4, v0, v1);
    return sub_1BBB83A78();
  }

  else
  {
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E63B0];
    *(v9 + 16) = xmmword_1BBB85CE0;
    v11 = MEMORY[0x1E69E6438];
    *(v9 + 56) = v10;
    *(v9 + 64) = v11;
    *(v9 + 32) = v8;
    return sub_1BBB83A28();
  }
}

uint64_t sub_1BBB7214C(int a1)
{
  state64[4] = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      state64[0] = 0;
      notify_get_state(a1, state64);
      if (state64[0] >> 31)
      {
        __break(1u);
      }

      sub_1BBB162CC(state64[0]);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BBB72214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t XPCRelaunchNotificationPoster.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCRelaunchNotificationPoster.init()();
  return v0;
}

uint64_t XPCRelaunchNotificationPoster.init()()
{
  *(v0 + 16) = -1;
  sub_1BBB84028();

  getuid();
  v1 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v1);

  sub_1BBB83A88();

  swift_beginAccess();
  notify_register_plain();
  swift_endAccess();

  result = getpid();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    notify_set_state(*(v0 + 16), result);
    return v0;
  }

  return result;
}

Swift::Void __swiftcall XPCRelaunchNotificationPoster.post()()
{
  sub_1BBB84028();

  getuid();
  v0 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v0);

  v1 = sub_1BBB83A88();

  notify_post((v1 + 32));
}

uint64_t IntelligenceElement.Scrollable.boundsSize.getter()
{
  v1 = *v0;
  result = swift_beginAccess();
  if (*(v1 + 32))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBB72584@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  if (*(v3 + 32))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
  }

  return result;
}

uint64_t IntelligenceElement.Scrollable.boundsSize.setter(double a1, double a2)
{
  v5 = *v2;
  swift_beginAccess();
  v11 = *(v5 + 65);
  *v12 = *(v5 + 81);
  *&v12[15] = v5[6];
  v9 = *(v5 + 33);
  v10 = *(v5 + 49);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v2;
    result = swift_beginAccess();
    *(v6 + 2) = a1;
    *(v6 + 3) = a2;
    *(v6 + 32) = 0;
    *(v6 + 49) = v10;
    *(v6 + 65) = v11;
    *(v6 + 81) = *v12;
    v6[6] = *&v12[15];
    *(v6 + 33) = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    *(v8 + 49) = v10;
    *(v8 + 65) = v11;
    *(v8 + 32) = 0;
    *(v8 + 81) = *v12;
    *(v8 + 96) = *&v12[15];
    *(v8 + 33) = v9;

    *v2 = v8;
  }

  return result;
}

void (*IntelligenceElement.Scrollable.boundsSize.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *v1;
  *(v3 + 96) = v5;
  swift_beginAccess();
  if (*(v5 + 32))
  {
    result = sub_1BBB840A8();
    __break(1u);
  }

  else
  {
    *(v4 + 72) = *(v5 + 16);
    return sub_1BBB72828;
  }

  return result;
}

void sub_1BBB72828(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = v2[9];
    v4 = v2[10];
    v13 = *(v3 + 65);
    *v14 = *(v3 + 81);
    *&v14[15] = v3[6];
    v11 = *(v3 + 33);
    v12 = *(v3 + 49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[11];
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *v7;
LABEL_6:
      swift_beginAccess();
      *(v8 + 16) = v5;
      *(v8 + 24) = v4;
      *(v8 + 32) = 0;
      *(v8 + 49) = v12;
      *(v8 + 65) = v13;
      *(v8 + 81) = *v14;
      *(v8 + 96) = *&v14[15];
      *(v8 + 33) = v11;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v13 = *(v3 + 65);
    *v14 = *(v3 + 81);
    *&v14[15] = v3[6];
    v11 = *(v3 + 33);
    v12 = *(v3 + 49);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[11];
    if (v9)
    {
      v8 = *v7;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v10 = swift_allocObject();
  *(v10 + 49) = v12;
  *(v10 + 65) = v13;
  *(v10 + 81) = *v14;
  *(v10 + 96) = *&v14[15];
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  *(v10 + 32) = 0;
  *(v10 + 33) = v11;

  *v7 = v10;
LABEL_8:

  free(v2);
}

double IntelligenceElement.Scrollable.contentSize.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t IntelligenceElement.Scrollable.contentSize.setter(double a1, double a2)
{
  v5 = *v2;
  swift_beginAccess();
  v13 = *(v5 + 16);
  v14 = *(v5 + 32);
  v9 = *(v5 + 56);
  v10 = *(v5 + 72);
  v11 = *(v5 + 88);
  v12 = *(v5 + 104);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v2;
    result = swift_beginAccess();
    *(v6 + 16) = v13;
    *(v6 + 32) = v14;
    *(v6 + 40) = a1;
    *(v6 + 48) = a2;
    *(v6 + 56) = v9;
    *(v6 + 72) = v10;
    *(v6 + 88) = v11;
    *(v6 + 104) = v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
    v8 = swift_allocObject();
    *(v8 + 16) = v13;
    *(v8 + 32) = v14;
    *(v8 + 40) = a1;
    *(v8 + 48) = a2;
    *(v8 + 56) = v9;
    *(v8 + 72) = v10;
    *(v8 + 88) = v11;
    *(v8 + 104) = v12;

    *v2 = v8;
  }

  return result;
}

void (*IntelligenceElement.Scrollable.contentSize.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *v1;
  *(v3 + 96) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 40);
  return sub_1BBB72B9C;
}

void sub_1BBB72B9C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = v2[9];
    v4 = v2[10];
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = *(v3 + 56);
    v14 = *(v3 + 72);
    v15 = *(v3 + 88);
    v16 = *(v3 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[11];
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *v7;
LABEL_6:
      swift_beginAccess();
      *(v8 + 16) = v11;
      *(v8 + 32) = v12;
      *(v8 + 40) = v5;
      *(v8 + 48) = v4;
      *(v8 + 56) = v13;
      *(v8 + 72) = v14;
      *(v8 + 88) = v15;
      *(v8 + 104) = v16;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = *(v3 + 56);
    v14 = *(v3 + 72);
    v15 = *(v3 + 88);
    v16 = *(v3 + 104);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[11];
    if (v9)
    {
      v8 = *v7;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v10 = swift_allocObject();
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  *(v10 + 40) = v5;
  *(v10 + 48) = v4;
  *(v10 + 56) = v13;
  *(v10 + 72) = v14;
  *(v10 + 88) = v15;
  *(v10 + 104) = v16;

  *v7 = v10;
LABEL_8:

  free(v2);
}

double IntelligenceElement.Scrollable.contentOffset.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t IntelligenceElement.Scrollable.contentOffset.setter(double a1, double a2)
{
  v5 = *v2;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = *(v5 + 32);
  v14 = *(v5 + 48);
  v9 = *(v5 + 72);
  v10 = *(v5 + 88);
  v11 = *(v5 + 104);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v6 = *v2;
    result = swift_beginAccess();
    *(v6 + 16) = v12;
    *(v6 + 32) = v13;
    *(v6 + 48) = v14;
    *(v6 + 56) = a1;
    *(v6 + 64) = a2;
    *(v6 + 72) = v9;
    *(v6 + 88) = v10;
    *(v6 + 104) = v11;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
    v8 = swift_allocObject();
    *(v8 + 16) = v12;
    *(v8 + 32) = v13;
    *(v8 + 48) = v14;
    *(v8 + 56) = a1;
    *(v8 + 64) = a2;
    *(v8 + 72) = v9;
    *(v8 + 88) = v10;
    *(v8 + 104) = v11;

    *v2 = v8;
  }

  return result;
}

void (*IntelligenceElement.Scrollable.contentOffset.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *v1;
  *(v3 + 96) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 56);
  return sub_1BBB72F18;
}

void sub_1BBB72F18(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 96);
  if (a2)
  {
    v5 = v2[9];
    v4 = v2[10];
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = *(v3 + 48);
    v14 = *(v3 + 72);
    v15 = *(v3 + 88);
    v16 = *(v3 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[11];
    if (isUniquelyReferenced_nonNull_native)
    {
      v8 = *v7;
LABEL_6:
      swift_beginAccess();
      *(v8 + 16) = v11;
      *(v8 + 32) = v12;
      *(v8 + 48) = v13;
      *(v8 + 56) = v5;
      *(v8 + 64) = v4;
      *(v8 + 72) = v14;
      *(v8 + 88) = v15;
      *(v8 + 104) = v16;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v13 = *(v3 + 48);
    v14 = *(v3 + 72);
    v15 = *(v3 + 88);
    v16 = *(v3 + 104);
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v2[11];
    if (v9)
    {
      v8 = *v7;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v10 = swift_allocObject();
  *(v10 + 16) = v11;
  *(v10 + 32) = v12;
  *(v10 + 48) = v13;
  *(v10 + 56) = v5;
  *(v10 + 64) = v4;
  *(v10 + 72) = v14;
  *(v10 + 88) = v15;
  *(v10 + 104) = v16;

  *v7 = v10;
LABEL_8:

  free(v2);
}

__n128 IntelligenceElement.Scrollable.contentInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  result = *(v3 + 72);
  v5 = *(v3 + 88);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

uint64_t IntelligenceElement.Scrollable.contentInsets.setter(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *v1;
  swift_beginAccess();
  v11 = *(v6 + 16);
  v12 = *(v6 + 32);
  v13 = *(v6 + 48);
  v14 = *(v6 + 64);
  v7 = *(v6 + 104);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v8 = *v1;
    result = swift_beginAccess();
    *(v8 + 16) = v11;
    *(v8 + 32) = v12;
    *(v8 + 48) = v13;
    *(v8 + 64) = v14;
    *(v8 + 72) = v3;
    *(v8 + 80) = v2;
    *(v8 + 88) = v5;
    *(v8 + 96) = v4;
    *(v8 + 104) = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
    v10 = swift_allocObject();
    *(v10 + 16) = v11;
    *(v10 + 32) = v12;
    *(v10 + 48) = v13;
    *(v10 + 64) = v14;
    *(v10 + 72) = v3;
    *(v10 + 80) = v2;
    *(v10 + 88) = v5;
    *(v10 + 96) = v4;
    *(v10 + 104) = v7;

    *v1 = v10;
  }

  return result;
}

void (*IntelligenceElement.Scrollable.contentInsets.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 104) = v1;
  v5 = *v1;
  *(v3 + 112) = v5;
  swift_beginAccess();
  v6 = *(v5 + 88);
  *v4 = *(v5 + 72);
  v4[1] = v6;
  return sub_1BBB73284;
}

void sub_1BBB73284(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[14];
  if (a2)
  {
    v5 = *v2;
    v4 = v2[1];
    v7 = v2[2];
    v6 = v2[3];
    v14 = *(v3 + 16);
    v15 = *(v3 + 32);
    v16 = *(v3 + 48);
    v17 = *(v3 + 64);
    v8 = *(v3 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[13];
    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = *v10;
LABEL_6:
      swift_beginAccess();
      *(v11 + 16) = v14;
      *(v11 + 32) = v15;
      *(v11 + 48) = v16;
      *(v11 + 64) = v17;
      *(v11 + 72) = v5;
      *(v11 + 80) = v4;
      *(v11 + 88) = v7;
      *(v11 + 96) = v6;
      *(v11 + 104) = v8;
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *v2;
    v4 = v2[1];
    v7 = v2[2];
    v6 = v2[3];
    v14 = *(v3 + 16);
    v15 = *(v3 + 32);
    v16 = *(v3 + 48);
    v17 = *(v3 + 64);
    v8 = *(v3 + 104);
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v10 = v2[13];
    if (v12)
    {
      v11 = *v10;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v13 = swift_allocObject();
  *(v13 + 16) = v14;
  *(v13 + 32) = v15;
  *(v13 + 48) = v16;
  *(v13 + 64) = v17;
  *(v13 + 72) = v5;
  *(v13 + 80) = v4;
  *(v13 + 88) = v7;
  *(v13 + 96) = v6;
  *(v13 + 104) = v8;

  *v10 = v13;
LABEL_8:

  free(v2);
}

uint64_t IntelligenceElement.Scrollable.scrollableAxes.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = swift_beginAccess();
  *a1 = *(v3 + 104);
  return result;
}

uint64_t IntelligenceElement.Scrollable.scrollableAxes.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  swift_beginAccess();
  v9 = *(v3 + 48);
  v10 = *(v3 + 64);
  v11 = *(v3 + 80);
  v12 = *(v3 + 96);
  v7 = *(v3 + 16);
  v8 = *(v3 + 32);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    result = swift_beginAccess();
    *(v4 + 48) = v9;
    *(v4 + 64) = v10;
    *(v4 + 80) = v11;
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *(v4 + 96) = v12;
    *(v4 + 104) = v2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
    v6 = swift_allocObject();
    *(v6 + 48) = v9;
    *(v6 + 64) = v10;
    *(v6 + 80) = v11;
    *(v6 + 16) = v7;
    *(v6 + 32) = v8;
    *(v6 + 96) = v12;
    *(v6 + 104) = v2;

    *v1 = v6;
  }

  return result;
}

void (*IntelligenceElement.Scrollable.scrollableAxes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *v1;
  *(v3 + 88) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 104);
  return sub_1BBB735C8;
}

void sub_1BBB735C8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  if (a2)
  {
    v4 = v2[9];
    v12 = *(v3 + 48);
    v13 = *(v3 + 64);
    v14 = *(v3 + 80);
    v15 = *(v3 + 96);
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2[10];
    if (isUniquelyReferenced_nonNull_native)
    {
      v7 = *v6;
LABEL_6:
      swift_beginAccess();
      *(v7 + 48) = v12;
      *(v7 + 64) = v13;
      *(v7 + 80) = v14;
      *(v7 + 16) = v10;
      *(v7 + 32) = v11;
      *(v7 + 96) = v15;
      *(v7 + 104) = v4;
      goto LABEL_8;
    }
  }

  else
  {
    v4 = v2[9];
    v12 = *(v3 + 48);
    v13 = *(v3 + 64);
    v14 = *(v3 + 80);
    v15 = *(v3 + 96);
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v6 = v2[10];
    if (v8)
    {
      v7 = *v6;
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v9 = swift_allocObject();
  *(v9 + 48) = v12;
  *(v9 + 64) = v13;
  *(v9 + 80) = v14;
  *(v9 + 16) = v10;
  *(v9 + 32) = v11;
  *(v9 + 96) = v15;
  *(v9 + 104) = v4;

  *v6 = v9;
LABEL_8:

  free(v2);
}

__n128 IntelligenceElement.Scrollable.init(contentSize:contentOffset:contentInsets:scrollableAxes:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v13 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 1;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 56) = a6;
  *(v14 + 64) = a7;
  result = *a1;
  *(v14 + 88) = *(a1 + 16);
  *(v14 + 72) = result;
  *(v14 + 104) = v13;
  *a3 = v14;
  return result;
}

__n128 IntelligenceElement.Scrollable.init(boundsSize:contentSize:contentOffset:contentInsets:scrollableAxes:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v17 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA38);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  *(v18 + 32) = 0;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  *(v18 + 56) = a8;
  *(v18 + 64) = a9;
  result = *a1;
  *(v18 + 88) = *(a1 + 16);
  *(v18 + 72) = result;
  *(v18 + 104) = v17;
  *a3 = v18;
  return result;
}

double sub_1BBB7386C@<D0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  swift_beginAccess();
  if (*(v9 + 32))
  {
    if (a3)
    {
      result = 0.0;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *a4 = 0u;
      *(a4 + 48) = 1;
      return result;
    }

    v12 = a1;
    v11 = a2;
  }

  else
  {
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
  }

  v13 = *(v9 + 56);
  v14 = *(v9 + 64);
  v15 = *(v9 + 40) + *(v9 + 96) - v12;
  v16 = -*(v9 + 72);
  result = *(v9 + 48) + *(v9 + 88) - v11;
  *a4 = -*(v9 + 80);
  *(a4 + 8) = v15;
  *(a4 + 16) = v13;
  *(a4 + 24) = v16;
  *(a4 + 32) = result;
  *(a4 + 40) = v14;
  *(a4 + 48) = 0;
  return result;
}

double IntelligenceElement.ScrollPosition.horizontalCurrentFraction.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  result = 0.0;
  if (*v0 < v2 && v1 <= v3)
  {
    result = 1.0;
    if (v3 <= v2)
    {
      return (v3 - v1) / (v2 - v1);
    }
  }

  return result;
}

double IntelligenceElement.ScrollPosition.verticalCurrentFraction.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  result = 0.0;
  if (v1 < v2 && v1 <= v3)
  {
    result = 1.0;
    if (v3 <= v2)
    {
      return (v3 - v1) / (v2 - v1);
    }
  }

  return result;
}

double IntelligenceElement.scrollPosition.getter@<D0>(uint64_t a1@<X8>)
{
  if (((*(v1 + 32) >> 59) & 0x1E | (*(v1 + 32) >> 2) & 1) == 0xB)
  {
    return sub_1BBB7386C(*(v1 + 16), *(v1 + 24), 0, a1);
  }

  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 1;
  return result;
}

uint64_t sub_1BBB73A5C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB73B70()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB73C70()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB73D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB74FFC();
  *a1 = result;
  return result;
}

void sub_1BBB73DB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000657ALL;
  v4 = 0x695373646E756F62;
  v5 = 0xED00007465736666;
  v6 = 0x4F746E65746E6F63;
  v7 = 0xED0000737465736ELL;
  v8 = 0x49746E65746E6F63;
  if (v2 != 3)
  {
    v8 = 0x62616C6C6F726373;
    v7 = 0xEE0073657841656CLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x53746E65746E6F63;
    v3 = 0xEB00000000657A69;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1BBB73E80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB74FFC();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB73EA8(uint64_t a1)
{
  v2 = sub_1BBA9E5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB73EE4(uint64_t a1)
{
  v2 = sub_1BBA9E5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Scrollable.description.getter()
{
  v1 = *v0;
  v49[0] = *v0;
  sub_1BBB7386C(0.0, 0.0, 1, &v50);
  if (v54)
  {
    strcpy(v49, "contentSize: ");
    HIWORD(v49[1]) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BBB999B0;
    swift_beginAccess();
    v3 = v1[5];
    v4 = MEMORY[0x1E69E7DE0];
    *(v2 + 56) = MEMORY[0x1E69E7DE0];
    v5 = sub_1BBAE6D98();
    *(v2 + 64) = v5;
    *(v2 + 32) = v3;
    v6 = v1[6];
    *(v2 + 96) = v4;
    *(v2 + 104) = v5;
    *(v2 + 72) = v6;
    v7 = sub_1BBB83A28();
    MEMORY[0x1BFB16150](v7);

    v8 = v49[0];
    v9 = v49[1];
    v10 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_1BBA86A94((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = v8;
    *(v13 + 5) = v9;
    sub_1BBB84028();

    v49[0] = 0x4F746E65746E6F63;
    v49[1] = 0xEF203A7465736666;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1BBB999B0;
    v15 = v1[7];
    *(v14 + 56) = v4;
    *(v14 + 64) = v5;
    *(v14 + 32) = v15;
    v16 = v1[8];
    *(v14 + 96) = v4;
    *(v14 + 104) = v5;
    *(v14 + 72) = v16;
    v17 = sub_1BBB83A28();
    MEMORY[0x1BFB16150](v17);

    v18 = v49[0];
    v19 = v49[1];
    v21 = *(v10 + 2);
    v20 = *(v10 + 3);
    if (v21 >= v20 >> 1)
    {
      v10 = sub_1BBA86A94((v20 > 1), v21 + 1, 1, v10);
    }

    *(v10 + 2) = v21 + 1;
    v22 = &v10[16 * v21];
    *(v22 + 4) = v18;
    *(v22 + 5) = v19;
    sub_1BBB84028();

    v49[0] = 0x49746E65746E6F63;
    v49[1] = 0xEF203A737465736ELL;
    v23 = v1[9];
    v24 = v1[10];
    v25 = v1[11];
    v26 = v1[12];
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1BBB85CF0;
    *(v27 + 56) = v4;
    *(v27 + 64) = v5;
    *(v27 + 32) = v23;
    *(v27 + 96) = v4;
    *(v27 + 104) = v5;
    *(v27 + 72) = v24;
    *(v27 + 136) = v4;
    *(v27 + 144) = v5;
    *(v27 + 112) = v25;
    *(v27 + 176) = v4;
    *(v27 + 184) = v5;
    *(v27 + 152) = v26;
    v28 = sub_1BBB83A28();
    MEMORY[0x1BFB16150](v28);

    v29 = v49[0];
    v30 = v49[1];
    v32 = *(v10 + 2);
    v31 = *(v10 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v10 = sub_1BBA86A94((v31 > 1), v32 + 1, 1, v10);
    }
  }

  else
  {
    v35 = v52;
    v34 = v53;
    v47 = v51;
    v48 = v50;
    *&v50 = 0;
    *(&v50 + 1) = 0xE000000000000000;
    sub_1BBB84028();

    v49[0] = 0xD000000000000010;
    v49[1] = 0x80000001BBB9D540;
    v50 = v48;
    v51 = v47;
    v52 = v35;
    v53 = v34;
    v36 = sub_1BBB74494();
    MEMORY[0x1BFB16150](v36);

    v29 = 0xD000000000000010;
    v30 = 0x80000001BBB9D540;
    v10 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v32 = *(v10 + 2);
    v37 = *(v10 + 3);
    v33 = v32 + 1;
    if (v32 >= v37 >> 1)
    {
      v10 = sub_1BBA86A94((v37 > 1), v32 + 1, 1, v10);
    }
  }

  *(v10 + 2) = v33;
  v38 = &v10[16 * v32];
  *(v38 + 4) = v29;
  *(v38 + 5) = v30;
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_1BBB84028();

  v49[3] = 0xD000000000000010;
  v49[4] = 0x80000001BBB9D520;
  swift_beginAccess();
  v39 = IntelligenceElement.Axis.description.getter();
  MEMORY[0x1BFB16150](v39);

  v41 = *(v10 + 2);
  v40 = *(v10 + 3);
  if (v41 >= v40 >> 1)
  {
    v10 = sub_1BBA86A94((v40 > 1), v41 + 1, 1, v10);
  }

  *(v10 + 2) = v41 + 1;
  v42 = &v10[16 * v41];
  *(v42 + 4) = 0xD000000000000010;
  *(v42 + 5) = 0x80000001BBB9D520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v43 = sub_1BBB83938();
  v45 = v44;

  MEMORY[0x1BFB16150](v43, v45);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x62616C6C6F726353;
}

uint64_t sub_1BBB74494()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1BBB84028();

  strcpy(v15, "(horizontal = ");
  HIBYTE(v15[1]) = -18;
  v8 = 0.0;
  if (v1 < v2 && v1 <= v4)
  {
    if (v4 <= v2)
    {
      v8 = (v4 - v1) / (v2 - v1) * 100.0;
    }

    else
    {
      v8 = 100.0;
    }
  }

  v10 = round(v8);
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v11);

  result = MEMORY[0x1BFB16150](0x6974726576202C25, 0xEE00203D206C6163);
  v12 = 0.0;
  if (v3 < v5 && v3 <= v6)
  {
    if (v6 <= v5)
    {
      v12 = (v6 - v3) / (v5 - v3) * 100.0;
    }

    else
    {
      v12 = 100.0;
    }
  }

  v13 = round(v12);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v13 < 9.22337204e18)
  {
    v14 = sub_1BBB842D8();
    MEMORY[0x1BFB16150](v14);

    MEMORY[0x1BFB16150](10533, 0xE200000000000000);
    return v15[0];
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t IntelligenceElement.ScrollPosition.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BC00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BBB85CE0;
  v8 = MEMORY[0x1E69E7DE0];
  *(v7 + 56) = MEMORY[0x1E69E7DE0];
  v9 = sub_1BBAE6D98();
  *(v7 + 64) = v9;
  *(v7 + 32) = v1;
  v10 = sub_1BBB83A28();
  v12 = v11;
  v13 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1BBA86A94((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[16 * v15];
  *(v16 + 4) = v10;
  *(v16 + 5) = v12;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BBB85CE0;
  *(v17 + 56) = v8;
  *(v17 + 64) = v9;
  *(v17 + 32) = v2;
  v18 = sub_1BBB83A28();
  v21 = *(v13 + 2);
  v20 = *(v13 + 3);
  if (v21 >= v20 >> 1)
  {
    v67 = v18;
    v68 = v19;
    v69 = sub_1BBA86A94((v20 > 1), v21 + 1, 1, v13);
    v19 = v68;
    v13 = v69;
    v18 = v67;
  }

  *(v13 + 2) = v21 + 1;
  v22 = &v13[16 * v21];
  *(v22 + 4) = v18;
  *(v22 + 5) = v19;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BBB85CE0;
  *(v23 + 56) = v8;
  *(v23 + 64) = v9;
  *(v23 + 32) = v4;
  v24 = sub_1BBB83A28();
  v27 = *(v13 + 2);
  v26 = *(v13 + 3);
  if (v27 >= v26 >> 1)
  {
    v70 = v24;
    v71 = v25;
    v72 = sub_1BBA86A94((v26 > 1), v27 + 1, 1, v13);
    v25 = v71;
    v13 = v72;
    v24 = v70;
  }

  *(v13 + 2) = v27 + 1;
  v28 = &v13[16 * v27];
  *(v28 + 4) = v24;
  *(v28 + 5) = v25;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1BBB85CE0;
  v30 = 0.0;
  if (v1 < v2 && v1 <= v4)
  {
    v30 = 1.0;
    if (v4 <= v2)
    {
      v30 = (v4 - v1) / (v2 - v1);
    }
  }

  v31 = MEMORY[0x1E69E63B0];
  v32 = MEMORY[0x1E69E6438];
  *(v29 + 56) = MEMORY[0x1E69E63B0];
  *(v29 + 64) = v32;
  *(v29 + 32) = v30;
  v33 = sub_1BBB83A28();
  v36 = *(v13 + 2);
  v35 = *(v13 + 3);
  if (v36 >= v35 >> 1)
  {
    v85 = v33;
    v73 = v34;
    v74 = sub_1BBA86A94((v35 > 1), v36 + 1, 1, v13);
    v34 = v73;
    v13 = v74;
    v33 = v85;
  }

  *(v13 + 2) = v36 + 1;
  v37 = &v13[16 * v36];
  *(v37 + 4) = v33;
  *(v37 + 5) = v34;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1BBB85CE0;
  *(v38 + 56) = v8;
  *(v38 + 64) = v9;
  *(v38 + 32) = v3;
  v39 = sub_1BBB83A28();
  v42 = *(v13 + 2);
  v41 = *(v13 + 3);
  if (v42 >= v41 >> 1)
  {
    v86 = v39;
    v75 = v40;
    v76 = sub_1BBA86A94((v41 > 1), v42 + 1, 1, v13);
    v40 = v75;
    v13 = v76;
    v39 = v86;
  }

  *(v13 + 2) = v42 + 1;
  v43 = &v13[16 * v42];
  *(v43 + 4) = v39;
  *(v43 + 5) = v40;
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BBB85CE0;
  *(v44 + 56) = v8;
  *(v44 + 64) = v9;
  *(v44 + 32) = v5;
  v45 = sub_1BBB83A28();
  v48 = *(v13 + 2);
  v47 = *(v13 + 3);
  if (v48 >= v47 >> 1)
  {
    v87 = v45;
    v77 = v46;
    v78 = sub_1BBA86A94((v47 > 1), v48 + 1, 1, v13);
    v46 = v77;
    v13 = v78;
    v45 = v87;
  }

  *(v13 + 2) = v48 + 1;
  v49 = &v13[16 * v48];
  *(v49 + 4) = v45;
  *(v49 + 5) = v46;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1BBB85CE0;
  *(v50 + 56) = v8;
  *(v50 + 64) = v9;
  *(v50 + 32) = v6;
  v51 = sub_1BBB83A28();
  v54 = *(v13 + 2);
  v53 = *(v13 + 3);
  if (v54 >= v53 >> 1)
  {
    v79 = v51;
    v80 = v52;
    v81 = sub_1BBA86A94((v53 > 1), v54 + 1, 1, v13);
    v52 = v80;
    v13 = v81;
    v51 = v79;
  }

  *(v13 + 2) = v54 + 1;
  v55 = &v13[16 * v54];
  *(v55 + 4) = v51;
  *(v55 + 5) = v52;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1BBB85CE0;
  v57 = 0.0;
  if (v3 < v5 && v3 <= v6)
  {
    v57 = 1.0;
    if (v6 <= v5)
    {
      v57 = (v6 - v3) / (v5 - v3);
    }
  }

  *(v56 + 56) = v31;
  *(v56 + 64) = v32;
  *(v56 + 32) = v57;
  v58 = sub_1BBB83A28();
  v61 = *(v13 + 2);
  v60 = *(v13 + 3);
  if (v61 >= v60 >> 1)
  {
    v82 = v58;
    v83 = v59;
    v84 = sub_1BBA86A94((v60 > 1), v61 + 1, 1, v13);
    v59 = v83;
    v13 = v84;
    v58 = v82;
  }

  *(v13 + 2) = v61 + 1;
  v62 = &v13[16 * v61];
  *(v62 + 4) = v58;
  *(v62 + 5) = v59;
  sub_1BBB84028();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v63 = sub_1BBB83938();
  v65 = v64;

  MEMORY[0x1BFB16150](v63, v65);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0x6F506C6C6F726353;
}

BOOL sub_1BBB74D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  v10 = *(a2 + 24);
  v11 = *(a2 + 56);
  v13 = *(a2 + 72);
  v12 = *(a2 + 80);
  if (*(a1 + 16))
  {
    result = 0;
    if (v3.f64[0] != v10.f64[0])
    {
      v8 = 0;
    }

    if (v8 != 1)
    {
      return result;
    }

    v15 = vmovn_s32(vuzp1q_s32(vceqq_f64(v3, v10), vceqq_f64(v2, v9)));
    if ((v15.i8[2] & 1) == 0)
    {
      return result;
    }

    if (v2.f64[0] != v9.f64[0])
    {
      return result;
    }

    if ((v15.i8[6] & 1) == 0)
    {
      return result;
    }

    v16 = vmovn_s64(vceqq_f64(v4, v11));
    if ((v16.i8[0] & 1) == 0 || (v16.i8[4] & 1) == 0 || v6 != v13 || v5 != v12)
    {
      return result;
    }

    return v7 == *(a2 + 88);
  }

  if (v8)
  {
    return 0;
  }

  result = 0;
  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(v3, v10)), vuzp1q_s32(vceqq_f64(v2, v9), vceqq_f64(v4, v11))))) & 1) != 0 && v6 == v13 && v5 == v12)
  {
    return v7 == *(a2 + 88);
  }

  return result;
}

BOOL _s21UIIntelligenceSupport19IntelligenceElementV10ScrollableV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = v2[4];
  v12[2] = v2[3];
  v12[3] = v4;
  v5 = v2[6];
  v12[4] = v2[5];
  v12[5] = v5;
  v6 = v2[2];
  v12[0] = v2[1];
  v12[1] = v6;
  swift_beginAccess();
  v7 = v3[4];
  v11[2] = v3[3];
  v11[3] = v7;
  v8 = v3[6];
  v11[4] = v3[5];
  v11[5] = v8;
  v9 = v3[2];
  v11[0] = v3[1];
  v11[1] = v9;
  return sub_1BBB74D10(v12, v11);
}

BOOL _s21UIIntelligenceSupport19IntelligenceElementV14ScrollPositionV2eeoiySbAE_AEtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0])
  {
    return a1[2].f64[1] == a2[2].f64[1];
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

uint64_t sub_1BBB74F40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BBB74F60(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 96) = v3;
  return result;
}

unint64_t sub_1BBB74FA8()
{
  result = qword_1EBC7DA50;
  if (!qword_1EBC7DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA50);
  }

  return result;
}

uint64_t sub_1BBB74FFC()
{
  v0 = sub_1BBB84108();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t IntelligenceElement.LoadableValue.loadUsingDetachedTask(for:description:deadline:loadHandler:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v19 = a5;
  v13 = *(a7 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  IntelligenceElement.LoadableValue.value.getter(a7, v16);
  IntelligenceElement.LoadableValue.loadUsingDetachedTask(for:description:deadline:baseValue:loadHandler:)(a1, a2, a3, a4, v16, v19, a6, a7);

  return (*(v14 + 8))(v16, v13);
}

BOOL IntelligenceElement.LoadableValue.isFinishedLoading.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _s13LoadableValueV22InternalRepresentationOMa();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-v6 - 8];
  (*(v8 + 16))(&v11[-v6 - 8], v2, v4, v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BBB752C0(*v7, v11);

    result = v12 == 0;
    if (v12)
    {

      return 0;
    }
  }

  else
  {
    (*(*(v3 - 8) + 8))(v7, v3);
    return 1;
  }

  return result;
}

void sub_1BBB752C0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s13LoadableValueV10AsyncValueV7StorageVMa();
  v4 = *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_1BBB77A58(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

void sub_1BBB75368(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s13LoadableValueV10AsyncValueV7StorageVMa();
  v4 = *(*a1 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v5));
  sub_1BBB77AD8(a1 + v4, a2);
  os_unfair_lock_unlock((a1 + v5));
}

uint64_t IntelligenceElement.LoadableValue.loadUsingDetachedTask(for:description:deadline:baseValue:loadHandler:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB78);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v22 - v17;

  IntelligenceElement.LoadableValue.loadAsync(for:description:deadline:baseValue:)(a1, a2, a3, a4, a5, a8, v23);
  sub_1BBB83C68();
  v19 = sub_1BBB83C88();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  sub_1BBA98C94(v23, v22);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = *(a8 + 16);
  v20[5] = a6;
  v20[6] = a7;
  sub_1BBA97A80(v22, (v20 + 7));
  sub_1BBAD9314(0, 0, v18, &unk_1BBB99CE8, v20);

  sub_1BBB77280(v18);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1BBB755B4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = *(a7 - 8);
  v9 = swift_task_alloc();
  v7[5] = v9;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1BBB75708;

  return v12(v9);
}

uint64_t sub_1BBB75708()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1BBB758DC;
  }

  else
  {
    v2 = sub_1BBB7581C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BBB7581C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(v6 + 16))(v1, v5, v6);
  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1BBB758DC()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 32))(v1, v3, v4);

  v5 = v0[1];

  return v5();
}

uint64_t IntelligenceElement.LoadableValue.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s13LoadableValueV22InternalRepresentationOMa();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (v14 - v9);
  (*(v11 + 16))(v14 - v9, v2, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1BBB75B54(*v10);
  }

  else
  {
    (*(v4 + 32))(v6, v10, v3);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_1BBB842E8();
    v12 = v14[0];
    (*(v4 + 8))(v6, v3);
  }

  return v12;
}

uint64_t sub_1BBB75B54(uint64_t a1)
{
  _s13LoadableValueV10AsyncValueV7StorageVMa();
  v2 = (*(*a1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a1 + v2));
  sub_1BBB77A8C(&v4);
  os_unfair_lock_unlock((a1 + v2));
  return v4;
}

void sub_1BBB75C0C(uint64_t a1, uint64_t a2)
{
  _s13LoadableValueV10AsyncValueV7StorageVMa();
  v3 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v4 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v4));
  sub_1BBB77A3C((a2 + v3));
  os_unfair_lock_unlock((a2 + v4));
}

void sub_1BBB75CB4(unint64_t *a1, void *a2, uint64_t a3)
{
  v7 = sub_1BBB83E98();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v36 - v10 + 16;
  v12 = a1[3];
  if (!v12)
  {
    v37 = 0;
    v38 = 0xE000000000000000;
    v30 = v9;
    sub_1BBB84028();

    v37 = 0xD000000000000019;
    v38 = 0x80000001BBB9D6F0;
    v31 = _s13LoadableValueV10AsyncValueV7StorageVMa();
    (*(v8 + 16))(v11, a1 + *(v31 + 28), v30);
    v32 = (*(*(a3 - 8) + 48))(v11, 1, a3);
    (*(v8 + 8))(v11, v30);
    if (v32 == 1)
    {
      v33 = 0x64656C696166;
    }

    else
    {
      v33 = 0x6574656C706D6F63;
    }

    if (v32 == 1)
    {
      v34 = 0xE600000000000000;
    }

    else
    {
      v34 = 0xE900000000000064;
    }

    MEMORY[0x1BFB16150](v33, v34);

    sub_1BBB840A8();
    __break(1u);
LABEL_21:
    os_unfair_lock_unlock((a3 + 32));
    __break(1u);
    return;
  }

  v13 = a1[4];
  v15 = a1[1];
  v14 = a1[2];
  v37 = *a1;
  v38 = v15;
  v39 = v14;
  v40 = v12;
  v41 = v13;
  if (a2)
  {
    v16 = a2;
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v17 = sub_1BBB83758();
    __swift_project_value_buffer(v17, qword_1ED6BDEC0);
    v18 = a2;
    v19 = sub_1BBB83738();
    v20 = sub_1BBB83D48();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136446466;
      swift_getErrorValue();
      v23 = sub_1BBB84388();
      v25 = sub_1BBA85E50(v23, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      v35 = a2;
      v26 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D0);
      v27 = sub_1BBB83A78();
      v29 = sub_1BBA85E50(v27, v28, v36);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_1BBA81000, v19, v20, "Async value load failed with error: %{public}s; underlying error: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v22, -1, -1);
      MEMORY[0x1BFB174E0](v21, -1, -1);
    }

    else
    {
    }
  }

  if (qword_1ED6BF1F8 != -1)
  {
    v9 = swift_once();
  }

  a3 = *(off_1ED6BF200 + 2);
  MEMORY[0x1EEE9AC00](v9);
  os_unfair_lock_lock((a3 + 32));
  sub_1BBAB28E8((a3 + 16), v36);
  if (v3)
  {
    goto LABEL_21;
  }

  os_unfair_lock_unlock((a3 + 32));
  if (v36[2])
  {
    sub_1BBB333BC(v36);
    swift_unknownObjectRelease();
  }

  a1[4] = 0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
}

uint64_t sub_1BBB761A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v5 = sub_1BBB83E98();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = _s13LoadableValueV10AsyncValueV7StorageVMa();
  (*(v6 + 16))(v8, a1 + *(v9 + 28), v5);
  v10 = *(a2 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, a2) != 1)
  {
    return (*(v10 + 32))(v14, v8, a2);
  }

  (*(v10 + 16))(v14, a1 + *(v9 + 32), a2);
  result = (v11)(v8, 1, a2);
  if (result != 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_1BBB76368(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_1BBB83E98();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *(v3 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 24);
  if (v13)
  {
    v14 = *(v1 + 16);
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0x616F4C636E797341, 0xEF2228656C626164);
    MEMORY[0x1BFB16150](v14, v13);
    MEMORY[0x1BFB16150](0x5665736162202C22, 0xEE00203A65756C61);
    sub_1BBB842E8();
    MEMORY[0x1BFB16150](41, 0xE100000000000000);
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    (*(v5 + 16))(v7, v1 + *(a1 + 28), v4, v10);
    v15 = *(v8 + 48);
    if (v15(v7, 1, v3) == 1)
    {
      (*(v8 + 16))(v12, v1 + *(a1 + 32), v3);
      if (v15(v7, 1, v3) != 1)
      {
        (*(v5 + 8))(v7, v4);
      }
    }

    else
    {
      (*(v8 + 32))(v12, v7, v3);
    }

    sub_1BBB842E8();
    (*(v8 + 8))(v12, v3);
  }

  return v17;
}

uint64_t sub_1BBB76674(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v7 - v2;
  (*(v4 + 16))(&v7 - v2, v1);
  v5 = type metadata accessor for IntelligenceElement.LoadableValue();
  return IntelligenceElement.LoadableValue.wrappedValue.setter(v3, v5);
}

uint64_t IntelligenceElement.LoadableValue.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))(v2);
  v5 = *(a2 + 16);

  return IntelligenceElement.LoadableValue.init(_:)(a1, v5, v2);
}

void (*IntelligenceElement.LoadableValue.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  IntelligenceElement.LoadableValue.value.getter(a2, v11);
  return sub_1BBB768C4;
}

void sub_1BBB768C4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))((*a1)[4], v4, v5);
    (*(*(v8 - 8) + 8))(v7, v8);
    IntelligenceElement.LoadableValue.init(_:)(v3, v5, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v10 = v2[1];
    v9 = v2[2];
    (*(*(*v2 - 8) + 8))(v10);
    IntelligenceElement.LoadableValue.init(_:)(v4, v9, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BBB76A24(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceElement.LoadableValue();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v2, v3);
  return IntelligenceElement.LoadableValue.projectedValue.setter(v5, v2);
}

uint64_t IntelligenceElement.LoadableValue.projectedValue.setter(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 - 8);
  (*(v7 + 8))(v2);
  v5 = *(v7 + 32);

  return v5(v2, a1, a2);
}

void (*IntelligenceElement.LoadableValue.projectedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a2;
  v7[1] = v3;
  v9 = *(a2 - 8);
  v10 = v9;
  v7[2] = v9;
  v7[3] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[5] = v12;
  (*(v10 + 16))();
  return sub_1BBB76CD4;
}

void sub_1BBB76CD4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v8 = *v2;
    v7 = v2[1];
    (*(v6 + 16))(*(*a1 + 32), v4, *v2);
    (*(v5 + 8))(v7, v8);
    (*(v5 + 32))(v7, v3, v8);
    (*(v6 + 8))(v4, v8);
  }

  else
  {
    v9 = v2[1];
    v10 = *v2;
    v11 = v2[2];
    (*(v11 + 8))(v9, *v2);
    (*(v11 + 32))(v9, v4, v10);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t static IntelligenceElement.LoadableValue<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a2;
  v6 = _s13LoadableValueV22InternalRepresentationOMa();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - v11);
  v30 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for IntelligenceElement.LoadableValue();
  if (!IntelligenceElement.LoadableValue.isFinishedLoading.getter(v19) || !IntelligenceElement.LoadableValue.isFinishedLoading.getter(v19))
  {
    v22 = v32;
    v23 = *(v7 + 16);
    v23(v12, a1, v6);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = *v12;
      v23(v9, v22, v6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *v9;
        sub_1BBB752C0(v24, v35);
        v26 = v35[0];
        v27 = v35[3];
        sub_1BBB752C0(v25, v33);

        if (v27)
        {
          if (v34)
          {
            v20 = v26 == v33[0];

            return v20 & 1;
          }
        }

        else if (!v34)
        {

          v20 = 1;
          return v20 & 1;
        }
      }

      else
      {

        (*(v7 + 8))(v9, v6);
      }
    }

    else
    {
      (*(v7 + 8))(v12, v6);
    }

    v20 = 0;
    return v20 & 1;
  }

  IntelligenceElement.LoadableValue.value.getter(v19, v18);
  IntelligenceElement.LoadableValue.value.getter(v19, v15);
  v20 = sub_1BBB83968();
  v21 = *(v30 + 8);
  v21(v15, a3);
  v21(v18, a3);
  return v20 & 1;
}

uint64_t sub_1BBB771AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BBADAE68;

  return sub_1BBB755B4(a1, v4, v5, v7, v8, (v1 + 7), v6);
}

uint64_t sub_1BBB77280(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BBB7735C()
{
  result = _s13LoadableValueV22InternalRepresentationOMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BBB773CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1BBB7741C()
{
  sub_1BBB77970();
  if (v0 <= 0x3F)
  {
    sub_1BBB83E98();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BBB774C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v11 = v10 + v9;
  if (v6)
  {
    v12 = v10 + v9;
  }

  else
  {
    v12 = v11 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_32;
  }

  v14 = ((v12 + ((v9 + 40) & ~v9)) & ~v9) + v10;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_32;
      }

      goto LABEL_21;
    }

    if (v18 < 2)
    {
LABEL_32:
      if (v6 > 0x7FFFFFFE)
      {
        v21 = (a1 + v9 + 40) & ~v9;
        if (v7 == v8)
        {
          v22 = (*(v5 + 48))(v21);
          if (v22 >= 2)
          {
            return v22 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v23 = *(v5 + 48);
          v24 = (v11 + v21) & ~v9;

          return v23(v24);
        }
      }

      else
      {
        v20 = *(a1 + 3);
        if (v20 >= 0xFFFFFFFF)
        {
          LODWORD(v20) = -1;
        }

        if ((v20 + 1) >= 2)
        {
          return v20;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_32;
  }

LABEL_21:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void sub_1BBB776C4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + v11;
  if (v8)
  {
    v14 = v12 + v11;
  }

  else
  {
    v14 = v13 + 1;
  }

  v15 = ((v14 + ((v11 + 40) & ~v11)) & ~v11) + v12;
  v16 = a3 >= v10;
  v17 = a3 - v10;
  if (v17 == 0 || !v16)
  {
LABEL_21:
    if (v10 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v15 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_22;
    }

    goto LABEL_31;
  }

  v18 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
  if (!HIWORD(v18))
  {
    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v6 = v19;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_21;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_22:
    v20 = ~v10 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> (8 * v15)) + 1;
      if (v15)
      {
        v22 = v20 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v22;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v15] = v21;
              }

              else
              {
                *&a1[v15] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v20;
      v21 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v15] = v21;
    }

    return;
  }

LABEL_31:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v15] = 0;
  }

  else if (v6)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v8 > 0x7FFFFFFE)
  {
    v23 = &a1[v11 + 40] & ~v11;
    v24 = *(v7 + 56);
    if (v9 == v10)
    {
      a2 = (a2 + 1);
    }

    else
    {
      v23 = (v13 + v23) & ~v11;
    }

    v24(v23, a2);
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 4) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2;
  }
}

void sub_1BBB77970()
{
  if (!qword_1EBC7B210)
  {
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBC7B210);
    }
  }
}

uint64_t sub_1BBB779C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = _s13LoadableValueV10AsyncValueVMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BBB77A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 24) = *(a1 + 24);
}

uint64_t sub_1BBB77A8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s13LoadableValueV10AsyncValueV7StorageVMa();
  result = sub_1BBB76368(v2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id IntelligenceUserActivity.userActivity.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t IntelligenceUserActivity.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntelligenceUserActivity() + 20);
  v4 = sub_1BBB834F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void IntelligenceUserActivity.init(_:)(void *a1@<X0>, char *a2@<X8>)
{
  if (a1)
  {
    v4 = a1;
    v5 = [v4 _uniqueIdentifier];
    v6 = sub_1BBB834F8();
    v7 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      sub_1BBB834D8();

      v10 = type metadata accessor for IntelligenceUserActivity();
      v11 = *(v10 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA58);
      v12 = swift_allocObject();
      *(v12 + 40) = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = xmmword_1BBB89870;
      *&a2[v11] = v12;
      *a2 = a1;
      (*(v7 + 32))(&a2[*(v10 + 20)], v9, v6);

      (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = type metadata accessor for IntelligenceUserActivity();
    v14 = *(*(v13 - 8) + 56);

    v14(a2, 1, 1, v13);
  }
}

void IntelligenceUserActivity.init(userActivity:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = [a1 _uniqueIdentifier];
  v5 = sub_1BBB834F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    sub_1BBB834D8();

    v9 = type metadata accessor for IntelligenceUserActivity();
    v10 = *(v9 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA58);
    v11 = swift_allocObject();
    *(v11 + 40) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = xmmword_1BBB89870;
    *&a2[v10] = v11;
    *a2 = a1;
    (*(v6 + 32))(&a2[*(v9 + 20)], v8, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BBB77F04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1 == 1)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
  }

  else
  {
    *a1 = 1;
    v5 = *a2;
    if (*a2)
    {
      v5 = sub_1BBB77F94();
      v6 = v7;
    }

    else
    {
      v6 = 0xF000000000000000;
    }

    sub_1BBAB42C8(*(a1 + 8), *(a1 + 16));
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  *a3 = v5;
  a3[1] = v6;
  return sub_1BBAE593C(v5, v6);
}

uint64_t sub_1BBB77F94()
{
  v44[8] = *MEMORY[0x1E69E9840];
  if (!MEMORY[0x1E69DF000])
  {
    return 0;
  }

  v1 = v0;
  v2 = mach_continuous_time();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  *(inited + 32) = sub_1BBB83A18();
  *(inited + 40) = v4;
  sub_1BBAB0F08(0, &qword_1EBC7AB60);
  *(inited + 48) = sub_1BBB83E78();
  v5 = sub_1BBACB350(inited);
  swift_setDeallocating();
  sub_1BBA8BCC4(inited + 32, &qword_1EBC7DA80);
  v6 = [v1 needsSave];
  sub_1BBB7971C(v5);

  v7 = sub_1BBB838F8();

  v44[0] = 0;
  v8 = [v1 _createUserActivityDataWithSaving_options_error_];

  v9 = v44[0];
  if (!v8)
  {
    v25 = v9;
    v26 = sub_1BBB83268();

    swift_willThrow();
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v27 = sub_1BBB83758();
    __swift_project_value_buffer(v27, qword_1ED6BDEC0);
    v28 = v1;
    v29 = v26;
    v30 = sub_1BBB83738();
    v31 = sub_1BBB83D48();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44[0] = v34;
      *v32 = 136446723;
      swift_getErrorValue();
      v35 = sub_1BBB84388();
      v37 = sub_1BBA85E50(v35, v36, v44);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v43[1] = v26;
      v38 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B9D0);
      v39 = sub_1BBB83A78();
      v41 = sub_1BBA85E50(v39, v40, v44);

      *(v32 + 14) = v41;
      *(v32 + 22) = 2113;
      *(v32 + 24) = v28;
      *v33 = v28;
      v42 = v28;
      _os_log_impl(&dword_1BBA81000, v30, v31, "Error encoding user activity: %{public}s; underlying error: %{public}s; user activity: %{private}@", v32, 0x20u);
      sub_1BBA8BCC4(v33, &qword_1EBC7DA88);
      MEMORY[0x1BFB174E0](v33, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1BFB174E0](v34, -1, -1);
      MEMORY[0x1BFB174E0](v32, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v10 = sub_1BBB83468();

  if (qword_1ED6BDEE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1BBB836E8();
  __swift_project_value_buffer(v11, qword_1ED6BDEF0);
  v12 = sub_1BBB836A8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB836D8();
  v16 = v1;
  sub_1BBB83678();
  sub_1BBAB3C08();
  sub_1BBAB3B98();
  sub_1BBAB3C5C(v17);
  v18 = sub_1BBB836D8();
  v19 = sub_1BBB83E48();
  if (sub_1BBB83E88())
  {
    v20 = swift_slowAlloc();
    v21 = v2;
    v22 = v20;
    *v20 = 134217984;
    *(v20 + 4) = v21;
    v23 = sub_1BBB83698();
    _os_signpost_emit_with_name_impl(&dword_1BBA81000, v18, v19, v23, "EncodeUserActivity", "%{public, signpost.description:begin_time}llu", v22, 0xCu);
    MEMORY[0x1BFB174E0](v22, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  return v10;
}

uint64_t IntelligenceUserActivity.hash(into:)()
{
  type metadata accessor for IntelligenceUserActivity();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  return sub_1BBB83918();
}

uint64_t IntelligenceUserActivity.hashValue.getter()
{
  sub_1BBB843D8();
  type metadata accessor for IntelligenceUserActivity();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBB84438();
}

uint64_t sub_1BBB78654()
{
  sub_1BBB843D8();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBB84438();
}

uint64_t sub_1BBB786D0()
{
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  return sub_1BBB83918();
}

uint64_t sub_1BBB78730()
{
  sub_1BBB843D8();
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1EBC7AE48);
  sub_1BBB83918();
  return sub_1BBB84438();
}

uint64_t sub_1BBB787D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x696669746E656469;
  }

  if (v2)
  {
    v4 = 0xEA00000000007265;
  }

  else
  {
    v4 = 0x80000001BBB9ADF0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x696669746E656469;
  }

  if (*a2)
  {
    v6 = 0x80000001BBB9ADF0;
  }

  else
  {
    v6 = 0xEA00000000007265;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB78880()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB7890C()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB78984()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB78A0C@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1BBB78A6C(unint64_t *a1@<X8>)
{
  v2 = 0x80000001BBB9ADF0;
  v3 = 0x696669746E656469;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEA00000000007265;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1BBB78AB4()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1BBB78AF8@<X0>(char *a1@<X8>)
{
  v2 = sub_1BBB84108();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1BBB78B5C(uint64_t a1)
{
  v2 = sub_1BBB78E18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB78B98(uint64_t a1)
{
  v2 = sub_1BBB78E18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void IntelligenceUserActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA60);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB78E18();
  sub_1BBB84478();
  v9 = type metadata accessor for IntelligenceUserActivity();
  LOBYTE(v15[0]) = 0;
  sub_1BBB834F8();
  sub_1BBA99E6C(&qword_1ED6BDE18);
  v10 = sub_1BBB84288();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    v11 = *(v3 + *(v9 + 24));
    MEMORY[0x1EEE9AC00](v10);
    *&v14[-16] = v3;
    os_unfair_lock_lock(v11 + 10);
    sub_1BBB78E6C(&v11[4], v15);
    os_unfair_lock_unlock(v11 + 10);
    v12 = v15[0];
    v13 = v15[1];
    v14[15] = 1;
    sub_1BBA8845C();
    sub_1BBB84238();
    (*(v6 + 8))(v8, v5);
    sub_1BBAB42C8(v12, v13);
  }
}

unint64_t sub_1BBB78E18()
{
  result = qword_1EBC7AF18;
  if (!qword_1EBC7AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF18);
  }

  return result;
}

void IntelligenceUserActivity.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA68);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - v5;
  v7 = type metadata accessor for IntelligenceUserActivity();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA58);
  v12 = swift_allocObject();
  *(v12 + 40) = 0;
  v13 = (v12 + 40);
  *(v12 + 16) = 0;
  v14 = v12 + 16;
  *(v12 + 24) = xmmword_1BBB89870;
  v51 = v12;
  *&v9[v11] = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB78E18();
  v50 = v6;
  v15 = v52;
  sub_1BBB84458();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    return;
  }

  v44 = v13;
  v45 = v14;
  v46 = v9;
  v52 = a1;
  v16 = sub_1BBB834F8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v53) = 0;
  sub_1BBA99E6C(&qword_1EBC7B1F8);
  v20 = v48;
  sub_1BBB841B8();
  (*(v17 + 32))(&v46[*(v7 + 20)], v19, v16);
  v55 = 1;
  sub_1BBAAB454();
  sub_1BBB84178();
  v21 = v20;
  v22 = v54;
  if (v54 >> 60 == 15)
  {
    (*(v49 + 8))(v50, v20);
    v23 = v46;
LABEL_14:
    *v23 = 0;
    goto LABEL_15;
  }

  v24 = v53;
  v25 = sub_1BBB83458();
  v26 = _UIIntelligenceDecodeUserActivity(v25);

  v23 = v46;
  v28 = v49;
  if (!v26)
  {
    v44 = v24;
    v45 = v22;
    v31 = sub_1BBB834A8();
    v33 = v32;
    if (qword_1ED6BDEB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1BBB83758();
    __swift_project_value_buffer(v34, qword_1ED6BDEC0);

    v35 = sub_1BBB83738();
    v36 = sub_1BBB83D48();

    v51 = v35;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v53 = v38;
      *v37 = 136446210;
      v39 = sub_1BBA85E50(v31, v33, &v53);

      *(v37 + 4) = v39;
      v40 = v36;
      v41 = v51;
      _os_log_impl(&dword_1BBA81000, v51, v40, "Failed to decode user activity with identifier %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFB174E0](v38, -1, -1);
      MEMORY[0x1BFB174E0](v37, -1, -1);
      sub_1BBAB42C8(v44, v45);
    }

    else
    {

      sub_1BBAB42C8(v44, v45);
    }

    (*(v28 + 8))(v50, v21);
    goto LABEL_14;
  }

  v29 = v21;
  *v46 = v26;
  MEMORY[0x1EEE9AC00](v27);
  *(&v43 - 2) = v24;
  *(&v43 - 1) = v22;
  v30 = v44;
  os_unfair_lock_lock(v44);
  sub_1BBB79D3C(v45);
  os_unfair_lock_unlock(v30);
  sub_1BBAB42C8(v24, v22);
  (*(v28 + 8))(v50, v29);
LABEL_15:
  v42 = v52;
  sub_1BBB79480(v23, v47);
  __swift_destroy_boxed_opaque_existential_1(v42);
  sub_1BBB794E4(v23);
}

uint64_t sub_1BBB79480(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceUserActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB794E4(uint64_t a1)
{
  v2 = type metadata accessor for IntelligenceUserActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntelligenceUserActivity.description.getter()
{
  if (*v0)
  {
    v1 = *v0;
    sub_1BBB84028();

    strcpy(v9, "UserActivity(");
    HIWORD(v9[1]) = -4864;
    v2 = [v1 description];
    v3 = sub_1BBB83A18();
    v5 = v4;

    MEMORY[0x1BFB16150](v3, v5);

    MEMORY[0x1BFB16150](0x69746E656469202CLL, 0xEE00203A72656966);
    type metadata accessor for IntelligenceUserActivity();
    v6 = sub_1BBB834A8();
    MEMORY[0x1BFB16150](v6);

    MEMORY[0x1BFB16150](41, 0xE100000000000000);
  }

  else
  {
    sub_1BBB84028();

    v9[0] = 0xD00000000000001ELL;
    v9[1] = 0x80000001BBB9D710;
    type metadata accessor for IntelligenceUserActivity();
    v7 = sub_1BBB834A8();
    MEMORY[0x1BFB16150](v7);

    MEMORY[0x1BFB16150](41, 0xE100000000000000);
  }

  return v9[0];
}

unint64_t sub_1BBB7971C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B910);
    v2 = sub_1BBB840E8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1BBAB0F08(0, &qword_1EBC7AB60);

        v19 = v18;
        swift_dynamicCast();
        sub_1BBACB024(&v25, v27);
        sub_1BBACB024(v27, v28);
        sub_1BBACB024(v28, &v26);
        result = sub_1BBAE3554(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1BBACB024(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1BBACB024(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_1BBB79988(void *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for IntelligenceUserActivity();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 || !a1)
  {
    (*(v13 + 56))(v11, 1, 1, v12, v14);
    a3(v11, a2);
    return sub_1BBA8BCC4(v11, &qword_1EBC7B830);
  }

  else
  {
    v17 = a1;
    result = [v17 parentUserActivity];
    if (result || (result = [objc_allocWithZone(MEMORY[0x1E696B090]) initWithInternalUserActivity_]) != 0)
    {
      v19 = result;
      v20 = *(v12 + 20);
      v21 = sub_1BBB834F8();
      (*(*(v21 - 8) + 16))(&v16[v20], a5, v21);
      v22 = *(v12 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DA58);
      v23 = swift_allocObject();
      *(v23 + 40) = 0;
      *(v23 + 16) = 0;
      *(v23 + 24) = xmmword_1BBB89870;
      *&v16[v22] = v23;
      *v16 = v19;
      sub_1BBB79480(v16, v11);
      (*(v13 + 56))(v11, 0, 1, v12);
      a3(v11, 0);

      sub_1BBA8BCC4(v11, &qword_1EBC7B830);
      return sub_1BBB794E4(v16);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BBB79C1C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1BBB79CA8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BBB79D3C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_1BBAE58D8(v4, v3);
  result = sub_1BBAB42C8(v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *a1 = 1;
  return result;
}

id sub_1BBB79DA0(void *a1, uint64_t a2)
{
  v5 = *(sub_1BBB834F8() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1BBB79988(a1, a2, v6, v7, v8);
}

unint64_t sub_1BBB79E28()
{
  result = qword_1EBC7AC60;
  if (!qword_1EBC7AC60)
  {
    type metadata accessor for IntelligenceUserActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AC60);
  }

  return result;
}

void sub_1BBB79E80()
{
  sub_1BBB79F1C();
  if (v0 <= 0x3F)
  {
    sub_1BBB834F8();
    if (v1 <= 0x3F)
    {
      sub_1BBB79F84();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BBB79F1C()
{
  if (!qword_1ED6BED88)
  {
    sub_1BBAB0F08(255, &qword_1ED6BED90);
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BED88);
    }
  }
}

void sub_1BBB79F84()
{
  if (!qword_1ED6BEDA0)
  {
    v0 = sub_1BBB836F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BEDA0);
    }
  }
}

uint64_t sub_1BBB79FE4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t sub_1BBB7A038(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1BBB7A090()
{
  result = qword_1EBC7DA70;
  if (!qword_1EBC7DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DA70);
  }

  return result;
}

unint64_t sub_1BBB7A0E8()
{
  result = qword_1EBC7AF08;
  if (!qword_1EBC7AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF08);
  }

  return result;
}

unint64_t sub_1BBB7A140()
{
  result = qword_1EBC7AF10;
  if (!qword_1EBC7AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7AF10);
  }

  return result;
}

id sub_1BBB7A194()
{
  type metadata accessor for UIIntelligenceElementCollector();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBC7DA90 = result;
  return result;
}

uint64_t static IntelligenceLocalizedStrings.snapshot(of:)()
{
  v0 = sub_1BBB839B8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BBB839A8();
  sub_1BBB83998();
  sub_1BBB83988();
  sub_1BBB83998();
  v1 = sub_1BBB839D8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1BBB839C8();
  if (qword_1EBC7B578 != -1)
  {
    swift_once();
  }

  v2 = qword_1EBC7DA90;
  v3 = sub_1BBB83518();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = v2;
  sub_1BBB83508();
  return sub_1BBB83A58();
}

uint64_t static IntelligenceLocalizedStrings.image.getter()
{
  v0 = sub_1BBB839D8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BBB83978();
  if (qword_1EBC7B578 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC7DA90;
  v2 = sub_1BBB83518();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v1;
  sub_1BBB83508();
  return sub_1BBB83A58();
}

uint64_t sub_1BBB7A588()
{
  v0 = sub_1BBB839D8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1BBB83978();
  if (qword_1EBC7B578 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBC7DA90;
  v2 = sub_1BBB83518();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v1;
  sub_1BBB83508();
  return sub_1BBB83A58();
}

uint64_t sub_1BBB7A700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1BBB7A8C8(v11, v12, &v16 - v9);
  sub_1BBB7A8C8(a2, a3, v7);
  v13 = sub_1BBB83968();
  v14 = *(v5 + 8);
  v14(v7, a3);
  v14(v10, a3);
  return v13 & 1;
}

uint64_t sub_1BBB7A82C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1BBB7A8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*a1 + 88);
  swift_beginAccess();
  return (*(*(a2 - 8) + 16))(a3, a1 + v6, a2);
}

uint64_t sub_1BBB7A970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB7A8C8(v7, v8, v6);
  sub_1BBB83918();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_1BBB7AA54(uint64_t a1, uint64_t a2)
{
  sub_1BBB843D8();
  sub_1BBB7A970(v5, a1, a2);
  return sub_1BBB84438();
}

uint64_t sub_1BBB7AADC(uint64_t a1, uint64_t a2)
{
  sub_1BBB843D8();
  sub_1BBB7A970(v5, *v2, *(a2 + 16));
  return sub_1BBB84438();
}

uint64_t sub_1BBB7AB34()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB7AC80()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB7ADCC()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB7AED0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB7B030()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB7B190()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB7B28C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB7B3A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006E65;
  v3 = 0x6B6F547469647561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6973726576646970;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006E6FLL;
    }

    else
    {
      v6 = 0x80000001BBB9A850;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 6580592;
    }

    else
    {
      v5 = 0x6B6F547469647561;
    }

    if (v4)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEA00000000006E65;
    }
  }

  v7 = 0x6973726576646970;
  v8 = 0x80000001BBB9A850;
  if (a2 == 2)
  {
    v8 = 0xEA00000000006E6FLL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v3 = 6580592;
    v2 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB7B4D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000044;
  v3 = 0x4974736575716572;
  v4 = a1;
  v5 = 0xD000000000000014;
  v6 = 0x80000001BBB9A820;
  v7 = 0x73746E656D656C65;
  if (a1 != 4)
  {
    v7 = 0x73646E616D6D6F63;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = 0xE800000000000000;
  }

  v8 = 0xE800000000000000;
  v9 = 0x444965746F6D6572;
  if (a1 != 1)
  {
    v9 = 0x49737365636F7270;
    v8 = 0xEB000000006F666ELL;
  }

  if (!a1)
  {
    v9 = 0x4974736575716572;
    v8 = 0xE900000000000044;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001BBB9A820;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (a2 == 4)
      {
        if (v10 != 0x73746E656D656C65)
        {
          goto LABEL_31;
        }
      }

      else if (v10 != 0x73646E616D6D6F63)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v10 != 0x444965746F6D6572)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x49737365636F7270;
      v2 = 0xEB000000006F666ELL;
    }

    if (v10 != v3)
    {
LABEL_31:
      v12 = sub_1BBB842F8();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v11 != v2)
  {
    goto LABEL_31;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_1BBB7B6B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726564616568;
  v6 = 0xE600000000000000;
  v7 = 0x7265746F6F66;
  if (a1 != 4)
  {
    v7 = 0x736D657469;
    v6 = 0xE500000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x664F7265626D756ELL;
  v9 = 0xED0000736D657449;
  if (a1 != 1)
  {
    v8 = 0x74756F79616CLL;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7865646E69;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xED0000736D657449;
        if (v10 != 0x664F7265626D756ELL)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x74756F79616CLL)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7865646E69)
      {
        goto LABEL_34;
      }
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v12 = 0xE600000000000000;
    v13 = 1684104552;
LABEL_27:
    if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v12 = 0xE600000000000000;
    v13 = 1953460070;
    goto LABEL_27;
  }

  v12 = 0xE500000000000000;
  if (v10 != 0x736D657469)
  {
LABEL_34:
    v14 = sub_1BBB842F8();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

uint64_t sub_1BBB7B884(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006F666E497373;
  v3 = 0x65636F7250707061;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0xD000000000000015;
    v12 = 0x80000001BBB9AD50;
    if (a1 != 6)
    {
      v11 = 0xD000000000000019;
      v12 = 0x80000001BBB9AE40;
    }

    v13 = 0x756C63634F6E6163;
    v14 = 0xEA00000000006564;
    if (a1 != 4)
    {
      v13 = 0x746F687370616E73;
      v14 = 0xED00006567616D49;
    }

    if (a1 <= 5u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v4 <= 5)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0xEA00000000007265;
    if (a1 != 2)
    {
      v5 = 0x6576697463417369;
      v6 = 0xE800000000000000;
    }

    v7 = 0x80000001BBB9AE10;
    if (a1)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = 0x65636F7250707061;
    }

    if (!a1)
    {
      v7 = 0xEE006F666E497373;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001BBB9AD50;
        if (v9 != 0xD000000000000015)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v2 = 0x80000001BBB9AE40;
        if (v9 != 0xD000000000000019)
        {
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEA00000000006564;
      if (v9 != 0x756C63634F6E6163)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v2 = 0xED00006567616D49;
      if (v9 != 0x746F687370616E73)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000007265;
        if (v9 != 0x696669746E656469)
        {
          goto LABEL_47;
        }

        goto LABEL_44;
      }

      v2 = 0xE800000000000000;
      v3 = 0x6576697463417369;
    }

    else if (a2)
    {
      v2 = 0x80000001BBB9AE10;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    if (v9 != v3)
    {
LABEL_47:
      v15 = sub_1BBB842F8();
      goto LABEL_48;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_47;
  }

  v15 = 1;
LABEL_48:

  return v15 & 1;
}

uint64_t sub_1BBB7BB40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x80000001BBB9AD50;
    v10 = 0x746F687370616E73;
    if (a1 == 6)
    {
      v10 = 0xD000000000000015;
    }

    else
    {
      v9 = 0xED00006567616D49;
    }

    v11 = 0xE500000000000000;
    v12 = 0xD000000000000019;
    if (a1 == 4)
    {
      v12 = 0x656C616373;
    }

    else
    {
      v11 = 0x80000001BBB9AD30;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x696669746E656469;
    v5 = 0xEA00000000007265;
    if (a1 != 2)
    {
      v4 = 0x756F426C65786970;
      v5 = 0xEB0000000073646ELL;
    }

    v6 = 0x697463656E6E6F63;
    if (a1)
    {
      v3 = 0xEE00657079546E6FLL;
    }

    else
    {
      v6 = 1701869940;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x80000001BBB9AD50;
        if (v7 != 0xD000000000000015)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v13 = 0xED00006567616D49;
        if (v7 != 0x746F687370616E73)
        {
LABEL_49:
          v14 = sub_1BBB842F8();
          goto LABEL_50;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x656C616373)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0x80000001BBB9AD30;
      if (v7 != 0xD000000000000019)
      {
        goto LABEL_49;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000007265;
      if (v7 != 0x696669746E656469)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v13 = 0xEB0000000073646ELL;
      if (v7 != 0x756F426C65786970)
      {
        goto LABEL_49;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEE00657079546E6FLL;
    if (v7 != 0x697463656E6E6F63)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v7 != 1701869940)
    {
      goto LABEL_49;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_49;
  }

  v14 = 1;
LABEL_50:

  return v14 & 1;
}

uint64_t sub_1BBB7BE00(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1701605234;
    }

    else
    {
      v4 = 0x656D656C62616E65;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xEA0000000000746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6567616D69;
    }

    else
    {
      v4 = 0x656C746974;
    }

    v5 = 0xE500000000000000;
  }

  v6 = 0xE400000000000000;
  v7 = 1701605234;
  if (a2 != 2)
  {
    v7 = 0x656D656C62616E65;
    v6 = 0xEA0000000000746ELL;
  }

  if (a2)
  {
    v2 = 0x6567616D69;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1BBB842F8();
  }

  return v10 & 1;
}

uint64_t sub_1BBB7BF30(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7865646E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7463656C65537369;
    }

    else
    {
      v4 = 0x726564616568;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x696669746E656469;
    }

    else
    {
      v4 = 0x7865646E69;
    }

    if (v3)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x7463656C65537369;
  v8 = 0xE600000000000000;
  if (a2 == 2)
  {
    v8 = 0xEA00000000006465;
  }

  else
  {
    v7 = 0x726564616568;
  }

  if (a2)
  {
    v2 = 0x696669746E656469;
    v6 = 0xEA00000000007265;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB7C078(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6562616CLL;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x74706D6F7270;
    }

    else
    {
      v5 = 0x6C6562616CLL;
    }

    if (v3)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x54746E65746E6F63;
    v4 = 0xEB00000000657079;
  }

  else if (a1 == 3)
  {
    v4 = 0xE800000000000000;
    v5 = 0x6572756365537369;
  }

  else
  {
    v5 = 0x657375636F467369;
    v4 = 0xE900000000000064;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0xE600000000000000;
    v8 = 0x74706D6F7270;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x54746E65746E6F63;
    v6 = 0xEB00000000657079;
    v7 = 0xE800000000000000;
    v8 = 0x6572756365537369;
    if (a2 != 3)
    {
      v8 = 0x657375636F467369;
      v7 = 0xE900000000000064;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1BBB842F8();
  }

  return v12 & 1;
}

uint64_t sub_1BBB7C200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656C626174696465;
    }

    else
    {
      v5 = 0x676E696B636162;
    }

    if (v2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v3 = 0x61636E7572547369;
    v4 = 0xEB00000000646574;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
      v4 = 0x80000001BBB9AC70;
    }

    if (a1 == 2)
    {
      v5 = 0x696D694C656E696CLL;
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = v4;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x656C626174696465;
    }

    else
    {
      v11 = 0x676E696B636162;
    }

    if (a2)
    {
      v10 = 0xE800000000000000;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v5 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v7 = 0x61636E7572547369;
    v8 = 0x80000001BBB9AC70;
    if (a2 == 3)
    {
      v8 = 0xEB00000000646574;
    }

    else
    {
      v7 = 0xD000000000000013;
    }

    if (a2 == 2)
    {
      v9 = 0x696D694C656E696CLL;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000074;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v6 != v10)
  {
LABEL_37:
    v12 = sub_1BBB842F8();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1BBB7C3A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073656E61;
  v3 = 0x50656C6269736976;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x5072616265646973;
    }

    else
    {
      v5 = 0x50656C6269736976;
    }

    if (v4)
    {
      v6 = 0xEB00000000656E61;
    }

    else
    {
      v6 = 0xEC00000073656E61;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x50746E65746E6F63;
    v6 = 0xEB00000000656E61;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x61506C6961746564;
    }

    else
    {
      v5 = 0x6F74636570736E69;
    }

    if (v4 == 3)
    {
      v6 = 0xEA0000000000656ELL;
    }

    else
    {
      v6 = 0xED0000656E615072;
    }
  }

  v7 = 0x50746E65746E6F63;
  v8 = 0xEB00000000656E61;
  v9 = 0x61506C6961746564;
  v10 = 0xEA0000000000656ELL;
  if (a2 != 3)
  {
    v9 = 0x6F74636570736E69;
    v10 = 0xED0000656E615072;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x5072616265646973;
    v2 = 0xEB00000000656E61;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1BBB842F8();
  }

  return v13 & 1;
}

uint64_t sub_1BBB7C56C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000657ALL;
  v3 = 0x695373646E756F62;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x53746E65746E6F63;
    }

    else
    {
      v5 = 0x695373646E756F62;
    }

    if (v4)
    {
      v6 = 0xEB00000000657A69;
    }

    else
    {
      v6 = 0xEA0000000000657ALL;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x4F746E65746E6F63;
    v6 = 0xED00007465736666;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x49746E65746E6F63;
    }

    else
    {
      v5 = 0x62616C6C6F726373;
    }

    if (v4 == 3)
    {
      v6 = 0xED0000737465736ELL;
    }

    else
    {
      v6 = 0xEE0073657841656CLL;
    }
  }

  v7 = 0x4F746E65746E6F63;
  v8 = 0xED00007465736666;
  v9 = 0x49746E65746E6F63;
  v10 = 0xED0000737465736ELL;
  if (a2 != 3)
  {
    v9 = 0x62616C6C6F726373;
    v10 = 0xEE0073657841656CLL;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x53746E65746E6F63;
    v2 = 0xEB00000000657A69;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1BBB842F8();
  }

  return v13 & 1;
}

uint64_t sub_1BBB7C748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6567616D69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v4 = 0x6373654474786574;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001BBB9A660;
    }

    else
    {
      v5 = 0xEF6E6F6974706972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64656469766F7270;
    }

    else
    {
      v4 = 0x6567616D69;
    }

    if (v3)
    {
      v5 = 0xEC000000656D614ELL;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xD000000000000018;
  v8 = 0x80000001BBB9A660;
  if (a2 != 2)
  {
    v7 = 0x6373654474786574;
    v8 = 0xEF6E6F6974706972;
  }

  if (a2)
  {
    v2 = 0x64656469766F7270;
    v6 = 0xEC000000656D614ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB7C8B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0x74756F79616CLL;
  v4 = 0xE800000000000000;
  if (a1 == 2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v3 = 0x736E6F6974636573;
  }

  v5 = 0xD000000000000010;
  v6 = 0x80000001BBB9A870;
  if (a1)
  {
    v5 = 0x664F7265626D756ELL;
    v6 = 0xED0000736D657449;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x74756F79616CLL;
    }

    else
    {
      v11 = 0x736E6F6974636573;
    }

    if (a2 == 2)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x664F7265626D756ELL;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xED0000736D657449;
    }

    else
    {
      v10 = 0x80000001BBB9A870;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_1BBB842F8();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_1BBB7C9F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656761726F7473;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x746E65746E6F63;
    }

    else
    {
      v4 = 0x656D656C65627573;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEB0000000073746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E69646E756F62;
    }

    else
    {
      v4 = 0x656761726F7473;
    }

    if (v3)
    {
      v5 = 0xEB00000000786F42;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x746E65746E6F63;
  if (a2 != 2)
  {
    v8 = 0x656D656C65627573;
    v7 = 0xEB0000000073746ELL;
  }

  if (a2)
  {
    v2 = 0x676E69646E756F62;
    v6 = 0xEB00000000786F42;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB7CB5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006874646957;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (v3 == 2)
    {
      v4 = 0x80000001BBB9A7C0;
    }

    else
    {
      v4 = 0x80000001BBB9A7E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEE00746867696548;
    }

    else
    {
      v4 = 0xED00006874646957;
    }

    v5 = 0x6C6578695078616DLL;
  }

  v6 = 0xD00000000000001ELL;
  v7 = 0x80000001BBB9A7E0;
  if (a2 == 2)
  {
    v7 = 0x80000001BBB9A7C0;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (a2)
  {
    v2 = 0xEE00746867696548;
  }

  if (a2 <= 1u)
  {
    v8 = 0x6C6578695078616DLL;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1BBB842F8();
  }

  return v10 & 1;
}

uint64_t sub_1BBB7CC94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001BBB9A740;
  v6 = 0x80000001BBB9A760;
  v7 = 0xD000000000000017;
  if (a1 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = 0x80000001BBB9A780;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x736E6F43657A6973;
  v9 = 0xEF73746E69617274;
  if (a1 != 1)
  {
    v8 = 6910052;
    v9 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1953393000;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001BBB9A740;
      if (v10 != 0xD000000000000010)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000001BBB9A760;
      if (v10 != 0xD000000000000017)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x80000001BBB9A780;
      if (v10 != 0xD000000000000013)
      {
LABEL_34:
        v13 = sub_1BBB842F8();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEF73746E69617274;
      if (v10 != 0x736E6F43657A6973)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE300000000000000;
      if (v10 != 6910052)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1953393000)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1BBB7CE70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E65746E6F63;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6E6F697461657263;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (v4 == 2)
    {
      v6 = 0xEC00000065746144;
    }

    else
    {
      v6 = 0x80000001BBB9A6D0;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x657A6953656C6966;
    }

    else
    {
      v5 = 0x54746E65746E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000657079;
    }
  }

  v7 = 0x6E6F697461657263;
  v8 = 0x80000001BBB9A6D0;
  if (a2 == 2)
  {
    v8 = 0xEC00000065746144;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v3 = 0x657A6953656C6966;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB7CFCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  v11[0] = v4;
  v11[1] = v5;
  v8 = *(&v6 + 1);
  v7 = v6;
  if (*(&v6 + 1) == 1)
  {
    v7 = 0;
    v8 = 0;
  }

  *a2 = v7;
  a2[1] = v8;
  return sub_1BBA8BC5C(v11, v10, &qword_1EBC7BBE0);
}

uint64_t sub_1BBB7D064(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  v4 = sub_1BBB7D164(v6);
  if (*(v3 + 56) != 1)
  {
    *(v3 + 48) = v2;
    *(v3 + 56) = v1;
  }

  return (v4)(v6, 0);
}

uint64_t IntelligenceElement.Window.appBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BBB7D164(v7);
  if (*(v4 + 56) != 1)
  {
    *(v4 + 48) = a1;
    *(v4 + 56) = a2;
  }

  return (v5)(v7, 0);
}

void (*sub_1BBB7D164(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(_s6WindowV7StorageVMa() - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = *v1;
  v10 = *(*v9 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v9 + v10, v8);
  return sub_1BBB7D26C;
}

void sub_1BBB7D26C(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1BBAA79FC(v2[11], v2[10]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v2[9];
    v4 = v2[10];
    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = *v5;
      v7 = *(**v5 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v4, v6 + v7);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v13 = swift_allocObject();
      sub_1BBA9FF64(v4, v13 + *(*v13 + 88), _s6WindowV7StorageVMa);

      *v5 = v13;
    }

    v15 = v2[10];
    v14 = v2[11];
    sub_1BBAA6A3C(v14, _s6WindowV7StorageVMa);
  }

  else
  {
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9 = v2[11];
    v10 = v2[9];
    if (v8)
    {
      v11 = *v10;
      v12 = *(**v10 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v9, v11 + v12);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v16 = swift_allocObject();
      sub_1BBA9FF64(v9, v16 + *(*v16 + 88), _s6WindowV7StorageVMa);

      *v10 = v16;
    }

    v15 = v2[10];
    v14 = v2[11];
  }

  free(v14);
  free(v15);

  free(v2);
}

void (*IntelligenceElement.Window.appBundleIdentifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  v5 = (*v1 + *(**v1 + 88));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  *(v4 + 32) = v5[2];
  *(v4 + 48) = v8;
  *v4 = v6;
  *(v4 + 16) = v7;
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  if (v10 == 1)
  {
    v9 = 0;
    v10 = 0;
  }

  *(v4 + 152) = v9;
  *(v4 + 160) = v10;
  sub_1BBA8BC5C(v4, v4 + 64, &qword_1EBC7BBE0);
  return sub_1BBB7D550;
}

void sub_1BBB7D550(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 64);
  v4 = *(*a1 + 152);
  v5 = *(*a1 + 160);
  if (a2)
  {

    v7 = sub_1BBB7D164(v3);
    if (*(v6 + 56) != 1)
    {
      *(v6 + 48) = v4;
      *(v6 + 56) = v5;
    }

    v7(v3, 0);
  }

  else
  {
    v9 = sub_1BBB7D164((*a1 + 64));
    if (*(v8 + 56) != 1)
    {
      *(v8 + 48) = v4;
      *(v8 + 56) = v5;
    }

    v9(v3, 0);
  }

  free(v2);
}

uint64_t sub_1BBB7D634@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[3];
  v11[2] = v3[2];
  v11[3] = v6;
  v11[0] = v4;
  v11[1] = v5;
  v7 = v3[1];
  *a2 = *v3;
  a2[1] = v7;
  v8 = v3[3];
  a2[2] = v3[2];
  a2[3] = v8;
  return sub_1BBA8BC5C(v11, v10, &qword_1EBC7BBE0);
}

uint64_t IntelligenceElement.Window.appProcessInfo.setter(_OWORD *a1)
{
  v3 = _s6WindowV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v6 + v7, v5);
  v8 = v5[1];
  v17[0] = *v5;
  v17[1] = v8;
  v9 = v5[3];
  v17[2] = v5[2];
  v17[3] = v9;
  sub_1BBA8BCC4(v17, &qword_1EBC7BBE0);
  v10 = a1[1];
  *v5 = *a1;
  v5[1] = v10;
  v11 = a1[3];
  v5[2] = a1[2];
  v5[3] = v11;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *v1;
    v13 = *(*v12 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v5, v12 + v13);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v15 = swift_allocObject();
    sub_1BBA9FF64(v5, v15 + *(*v15 + 88), _s6WindowV7StorageVMa);

    *v1 = v15;
  }

  return result;
}

void (*IntelligenceElement.Window.appProcessInfo.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x270uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 584) = v1;
  v6 = *(*(_s6WindowV7StorageVMa() - 8) + 64);
  if (v3)
  {
    *(v5 + 592) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 592) = malloc(v6);
    v7 = malloc(v6);
  }

  *(v5 + 600) = v7;
  v8 = *v1;
  *(v5 + 608) = *v1;
  v9 = *(*v8 + 88);
  *(v5 + 616) = v9;
  v10 = (v8 + v9);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[3];
  *(v5 + 32) = v10[2];
  *(v5 + 48) = v13;
  *v5 = v11;
  *(v5 + 16) = v12;
  v14 = *v10;
  v15 = v10[1];
  v16 = v10[3];
  *(v5 + 96) = v10[2];
  *(v5 + 112) = v16;
  *(v5 + 64) = v14;
  *(v5 + 80) = v15;
  sub_1BBA8BC5C(v5, v5 + 128, &qword_1EBC7BBE0);
  return sub_1BBB7D9A8;
}

void sub_1BBB7D9A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 616);
    v4 = *(v2 + 608);
    v5 = *(v2 + 592);
    v6 = *(v2 + 80);
    *(v2 + 256) = *(v2 + 64);
    *(v2 + 272) = v6;
    v7 = *(v2 + 112);
    *(v2 + 288) = *(v2 + 96);
    *(v2 + 304) = v7;
    sub_1BBAA79FC(v4 + v3, v5);
    v8 = v5[3];
    v10 = *v5;
    v9 = v5[1];
    *(v2 + 224) = v5[2];
    *(v2 + 240) = v8;
    *(v2 + 192) = v10;
    *(v2 + 208) = v9;
    sub_1BBA8BC5C(v2 + 256, v2 + 320, &qword_1EBC7BBE0);
    sub_1BBA8BCC4(v2 + 192, &qword_1EBC7BBE0);
    v11 = *(v2 + 304);
    v13 = *(v2 + 256);
    v12 = *(v2 + 272);
    v5[2] = *(v2 + 288);
    v5[3] = v11;
    *v5 = v13;
    v5[1] = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 592);
    v16 = *(v2 + 584);
    if (isUniquelyReferenced_nonNull_native)
    {
      v17 = *v16;
      v18 = *(**v16 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v15, v17 + v18);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v28 = swift_allocObject();
      sub_1BBA9FF64(v15, v28 + *(*v28 + 88), _s6WindowV7StorageVMa);

      *v16 = v28;
    }

    v29 = *(v2 + 600);
    v30 = *(v2 + 592);
    v31 = *(v2 + 80);
    *(v2 + 384) = *(v2 + 64);
    *(v2 + 400) = v31;
    v32 = *(v2 + 112);
    *(v2 + 416) = *(v2 + 96);
    *(v2 + 432) = v32;
    sub_1BBA8BCC4(v2 + 384, &qword_1EBC7BBE0);
    v33 = v29;
  }

  else
  {
    v19 = *(v2 + 600);
    v35 = *(v2 + 64);
    v36 = *(v2 + 80);
    v37 = *(v2 + 96);
    v38 = *(v2 + 112);
    sub_1BBAA79FC(*(v2 + 608) + *(v2 + 616), v19);
    v20 = v19[3];
    v22 = *v19;
    v21 = v19[1];
    *(v2 + 480) = v19[2];
    *(v2 + 496) = v20;
    *(v2 + 448) = v22;
    *(v2 + 464) = v21;
    sub_1BBA8BCC4(v2 + 448, &qword_1EBC7BBE0);
    *v19 = v35;
    v19[1] = v36;
    v19[2] = v37;
    v19[3] = v38;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 600);
    v25 = *(v2 + 584);
    if (v23)
    {
      v26 = *v25;
      v27 = *(**v25 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v24, v26 + v27);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v34 = swift_allocObject();
      sub_1BBA9FF64(v24, v34 + *(*v34 + 88), _s6WindowV7StorageVMa);

      *v25 = v34;
    }

    v33 = *(v2 + 600);
    v30 = *(v2 + 592);
  }

  free(v33);
  free(v30);

  free(v2);
}

uint64_t sub_1BBB7DCA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v8 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v7 + *(v8 + 20), v6, &qword_1EBC7BBB8);
  sub_1BBAC05AC(a2);
  return sub_1BBA8BCC4(v6, &qword_1EBC7BBB8);
}

uint64_t sub_1BBB7DD9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1BBA8BC5C(a1, &v9 - v6, &qword_1EBC7B830);
  sub_1BBA8BC5C(v7, v4, &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.Window.loadableAppCurrentUserActivity.setter(v4);
  return sub_1BBA8BCC4(v7, &qword_1EBC7B830);
}

uint64_t IntelligenceElement.Window.appCurrentUserActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.Window.loadableAppCurrentUserActivity.setter(v4);
  return sub_1BBA8BCC4(a1, &qword_1EBC7B830);
}

uint64_t IntelligenceElement.Window.loadableAppCurrentUserActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = _s6WindowV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 20), a1, &qword_1EBC7BBB8);
}

void (*IntelligenceElement.Window.appCurrentUserActivity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[6] = v10;
  v12 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v13 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v12 + *(v13 + 20), v8, &qword_1EBC7BBB8);
  sub_1BBAC05AC(v11);
  sub_1BBA8BCC4(v8, &qword_1EBC7BBB8);
  return sub_1BBB7E1D4;
}

void sub_1BBB7E1D4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 48), v3, &qword_1EBC7B830);
    sub_1BBA8BC5C(v3, v5, &qword_1EBC7B830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.Window.loadableAppCurrentUserActivity.setter(v5);
    sub_1BBA8BCC4(v3, &qword_1EBC7B830);
  }

  else
  {
    sub_1BBA8BC5C(*(*a1 + 48), v5, &qword_1EBC7B830);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.Window.loadableAppCurrentUserActivity.setter(v5);
  }

  sub_1BBA8BCC4(v4, &qword_1EBC7B830);
  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1BBB7E31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = _s6WindowV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 20), a2, &qword_1EBC7BBB8);
}

uint64_t sub_1BBB7E39C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = (v3 + *(_s6WindowV7StorageVMa() + 24));
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;
}

uint64_t IntelligenceElement.Window.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = _s6WindowV7StorageVMa();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *v2;
  v10 = *(**v2 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v9 + v10, v8);
  v11 = &v8[*(v6 + 32)];

  *v11 = a1;
  v11[1] = a2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v12 = *v2;
    v13 = *(*v12 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v8, v12 + v13);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v15 = swift_allocObject();
    sub_1BBA9FF64(v8, v15 + *(*v15 + 88), _s6WindowV7StorageVMa);

    *v2 = v15;
  }

  return result;
}

void (*IntelligenceElement.Window.identifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v6 = (v5 + *(_s6WindowV7StorageVMa() + 24));
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_1BBB7E65C;
}

void sub_1BBB7E65C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    IntelligenceElement.Window.identifier.setter(v3, v4);
  }

  else
  {
    IntelligenceElement.Window.identifier.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t sub_1BBB7E6D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = _s6WindowV7StorageVMa();
  *a2 = *(v3 + *(result + 28));
  return result;
}

uint64_t IntelligenceElement.Window.isActive.setter(char a1)
{
  v3 = _s6WindowV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v7 + v8, v6);
  v6[*(v4 + 36)] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v12 = swift_allocObject();
    sub_1BBA9FF64(v6, v12 + *(*v12 + 88), _s6WindowV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Window.isActive.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + *(_s6WindowV7StorageVMa() + 28));
  return sub_1BBB7E968;
}

uint64_t sub_1BBB7E980@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = _s6WindowV7StorageVMa();
  *a2 = *(v3 + *(result + 32));
  return result;
}

uint64_t IntelligenceElement.Window.canOcclude.setter(char a1)
{
  v3 = _s6WindowV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v7 + v8, v6);
  v6[*(v4 + 40)] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v12 = swift_allocObject();
    sub_1BBA9FF64(v6, v12 + *(*v12 + 88), _s6WindowV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Window.canOcclude.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + *(_s6WindowV7StorageVMa() + 32));
  return sub_1BBB7EC14;
}

void sub_1BBB7EC2C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

uint64_t IntelligenceElement.Window.snapshotImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v21 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v13 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v12 + *(v13 + 36), v11, &qword_1EBC7B7E8);
  sub_1BBA8BC5C(v11, v8, &qword_1EBC7B7E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v8;
    v15 = v14 + *(*v14 + *MEMORY[0x1E69E6B68] + 16);
    v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v14 + v16));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F0);
    sub_1BBA8BC5C(v15 + *(v17 + 28), v5, &qword_1EBC7B7D8);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
    v19 = *(*(v18 - 8) + 48);
    if (v19(v5, 1, v18) == 1)
    {
      sub_1BBA8BC5C(v15 + *(v17 + 32), a1, &qword_1EBC7B7F8);
      if (v19(v5, 1, v18) != 1)
      {
        sub_1BBA8BCC4(v5, &qword_1EBC7B7D8);
      }
    }

    else
    {
      sub_1BBAA6758(v5, a1, &qword_1EBC7B7F8);
    }

    os_unfair_lock_unlock((v14 + v16));
  }

  else
  {
    sub_1BBAA6758(v8, a1, &qword_1EBC7B7F8);
  }

  return sub_1BBA8BCC4(v11, &qword_1EBC7B7E8);
}

uint64_t sub_1BBB7EFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v8 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v7 + *(v8 + 36), v6, &qword_1EBC7B7E8);
  sub_1BBAC030C(a2);
  return sub_1BBA8BCC4(v6, &qword_1EBC7B7E8);
}

uint64_t sub_1BBB7F0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1BBA8BC5C(a1, &v9 - v6, &qword_1EBC7B7F8);
  sub_1BBA8BC5C(v7, v4, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.Window.loadableSnapshotImage.setter(v4);
  return sub_1BBA8BCC4(v7, &qword_1EBC7B7F8);
}

uint64_t IntelligenceElement.Window.snapshotImage.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1BBA8BC5C(a1, &v6 - v3, &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  IntelligenceElement.Window.loadableSnapshotImage.setter(v4);
  return sub_1BBA8BCC4(a1, &qword_1EBC7B7F8);
}

uint64_t IntelligenceElement.Window.loadableSnapshotImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = _s6WindowV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 36), a1, &qword_1EBC7B7E8);
}

uint64_t IntelligenceElement.Window.loadableSnapshotImage.setter(uint64_t a1)
{
  v3 = _s6WindowV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v7 + v8, v6);
  sub_1BBAA6910(a1, &v6[*(v4 + 44)], &qword_1EBC7B7E8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v12 = swift_allocObject();
    sub_1BBA9FF64(v6, v12 + *(*v12 + 88), _s6WindowV7StorageVMa);

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.Window.snapshotImage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8) - 8) + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[6] = v10;
  v12 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v13 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v12 + *(v13 + 36), v8, &qword_1EBC7B7E8);
  sub_1BBAC030C(v11);
  sub_1BBA8BCC4(v8, &qword_1EBC7B7E8);
  return sub_1BBB7F68C;
}

void sub_1BBB7F68C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_1BBA8BC5C(*(*a1 + 48), v3, &qword_1EBC7B7F8);
    sub_1BBA8BC5C(v3, v5, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.Window.loadableSnapshotImage.setter(v5);
    sub_1BBA8BCC4(v3, &qword_1EBC7B7F8);
  }

  else
  {
    sub_1BBA8BC5C(*(*a1 + 48), v5, &qword_1EBC7B7F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
    swift_storeEnumTagMultiPayload();
    IntelligenceElement.Window.loadableSnapshotImage.setter(v5);
  }

  sub_1BBA8BCC4(v4, &qword_1EBC7B7F8);
  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1BBB7F7D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = _s6WindowV7StorageVMa();
  return sub_1BBA8BC5C(v3 + *(v4 + 36), a2, &qword_1EBC7B7E8);
}

uint64_t sub_1BBB7F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1BBA8BC5C(a1, &v14 - v11, a5);
  return a7(v12);
}

void (*IntelligenceElement.Window.loadableSnapshotImage.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v10 = _s6WindowV7StorageVMa();
  sub_1BBA8BC5C(v9 + *(v10 + 36), v8, &qword_1EBC7B7E8);
  return sub_1BBB7FA34;
}

uint64_t sub_1BBB7FA5C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = (v3 + *(_s6WindowV7StorageVMa() + 40));
  v5 = v4[11];
  v6 = v4[12];
  v7 = v4[14];
  v25[13] = v4[13];
  v25[14] = v7;
  v25[11] = v5;
  v25[12] = v6;
  v8 = v4[7];
  v9 = v4[8];
  v10 = v4[10];
  v25[9] = v4[9];
  v25[10] = v10;
  v25[7] = v8;
  v25[8] = v9;
  v11 = v4[3];
  v12 = v4[4];
  v13 = v4[6];
  v25[5] = v4[5];
  v25[6] = v13;
  v25[3] = v11;
  v25[4] = v12;
  v14 = *v4;
  v15 = v4[2];
  v25[1] = v4[1];
  v25[2] = v15;
  v25[0] = v14;
  v16 = v4[13];
  a2[12] = v4[12];
  a2[13] = v16;
  a2[14] = v4[14];
  v17 = v4[9];
  a2[8] = v4[8];
  a2[9] = v17;
  v18 = v4[11];
  a2[10] = v4[10];
  a2[11] = v18;
  v19 = v4[5];
  a2[4] = v4[4];
  a2[5] = v19;
  v20 = v4[7];
  a2[6] = v4[6];
  a2[7] = v20;
  v21 = v4[1];
  *a2 = *v4;
  a2[1] = v21;
  v22 = v4[3];
  a2[2] = v4[2];
  a2[3] = v22;
  return sub_1BBA8BC5C(v25, v24, &qword_1EBC7D440);
}

uint64_t IntelligenceElement.Window.snapshotConfiguration.setter(_OWORD *a1)
{
  v3 = _s6WindowV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v7 + v8, v6);
  v9 = &v6[*(v4 + 48)];
  v10 = *(v9 + 13);
  v29[12] = *(v9 + 12);
  v29[13] = v10;
  v29[14] = *(v9 + 14);
  v11 = *(v9 + 9);
  v29[8] = *(v9 + 8);
  v29[9] = v11;
  v12 = *(v9 + 11);
  v29[10] = *(v9 + 10);
  v29[11] = v12;
  v13 = *(v9 + 5);
  v29[4] = *(v9 + 4);
  v29[5] = v13;
  v14 = *(v9 + 7);
  v29[6] = *(v9 + 6);
  v29[7] = v14;
  v15 = *(v9 + 3);
  v29[2] = *(v9 + 2);
  v29[3] = v15;
  v16 = *(v9 + 1);
  v29[0] = *v9;
  v29[1] = v16;
  sub_1BBA8BCC4(v29, &qword_1EBC7D440);
  v17 = a1[13];
  *(v9 + 12) = a1[12];
  *(v9 + 13) = v17;
  *(v9 + 14) = a1[14];
  v18 = a1[9];
  *(v9 + 8) = a1[8];
  *(v9 + 9) = v18;
  v19 = a1[11];
  *(v9 + 10) = a1[10];
  *(v9 + 11) = v19;
  v20 = a1[5];
  *(v9 + 4) = a1[4];
  *(v9 + 5) = v20;
  v21 = a1[7];
  *(v9 + 6) = a1[6];
  *(v9 + 7) = v21;
  v22 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v22;
  v23 = a1[3];
  *(v9 + 2) = a1[2];
  *(v9 + 3) = v23;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v24 = *v1;
    v25 = *(*v24 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v6, v24 + v25);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v27 = swift_allocObject();
    sub_1BBA9FF64(v6, v27 + *(*v27 + 88), _s6WindowV7StorageVMa);

    *v1 = v27;
  }

  return result;
}

void (*IntelligenceElement.Window.snapshotConfiguration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x7F8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 1992) = v1;
  v6 = _s6WindowV7StorageVMa();
  *(v5 + 2000) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 2008) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 2008) = malloc(*(*(v6 - 8) + 64));
    v8 = malloc(v7);
  }

  *(v5 + 2016) = v8;
  v9 = *v1;
  *(v5 + 2024) = *v1;
  v10 = *(*v9 + 88);
  *(v5 + 2032) = v10;
  v11 = v9 + v10;
  swift_beginAccess();
  v12 = (v11 + *(v6 + 40));
  v13 = *v12;
  v14 = v12[2];
  *(v5 + 16) = v12[1];
  *(v5 + 32) = v14;
  *v5 = v13;
  v15 = v12[3];
  v16 = v12[4];
  v17 = v12[6];
  *(v5 + 80) = v12[5];
  *(v5 + 96) = v17;
  *(v5 + 48) = v15;
  *(v5 + 64) = v16;
  v18 = v12[7];
  v19 = v12[8];
  v20 = v12[10];
  *(v5 + 144) = v12[9];
  *(v5 + 160) = v20;
  *(v5 + 112) = v18;
  *(v5 + 128) = v19;
  v21 = v12[11];
  v22 = v12[12];
  v23 = v12[14];
  *(v5 + 208) = v12[13];
  *(v5 + 224) = v23;
  *(v5 + 176) = v21;
  *(v5 + 192) = v22;
  memmove((v5 + 240), v12, 0xF0uLL);
  sub_1BBA8BC5C(v5, v5 + 480, &qword_1EBC7D440);
  return sub_1BBB7FF04;
}

void sub_1BBB7FF04(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 2032);
    v4 = *(v2 + 2024);
    v5 = *(v2 + 2008);
    v6 = *(v2 + 2000);
    v7 = *(v2 + 448);
    *(v2 + 1152) = *(v2 + 432);
    *(v2 + 1168) = v7;
    *(v2 + 1184) = *(v2 + 464);
    v8 = *(v2 + 384);
    *(v2 + 1088) = *(v2 + 368);
    *(v2 + 1104) = v8;
    v9 = *(v2 + 416);
    *(v2 + 1120) = *(v2 + 400);
    *(v2 + 1136) = v9;
    v10 = *(v2 + 320);
    *(v2 + 1024) = *(v2 + 304);
    *(v2 + 1040) = v10;
    v11 = *(v2 + 352);
    *(v2 + 1056) = *(v2 + 336);
    *(v2 + 1072) = v11;
    v12 = *(v2 + 256);
    *(v2 + 960) = *(v2 + 240);
    *(v2 + 976) = v12;
    v13 = *(v2 + 288);
    *(v2 + 992) = *(v2 + 272);
    *(v2 + 1008) = v13;
    sub_1BBAA79FC(v4 + v3, v5);
    v14 = (v5 + *(v6 + 40));
    v15 = v14[11];
    v16 = v14[12];
    v17 = v14[14];
    *(v2 + 928) = v14[13];
    *(v2 + 944) = v17;
    *(v2 + 896) = v15;
    *(v2 + 912) = v16;
    v18 = v14[7];
    v19 = v14[8];
    v20 = v14[10];
    *(v2 + 864) = v14[9];
    *(v2 + 880) = v20;
    *(v2 + 832) = v18;
    *(v2 + 848) = v19;
    v21 = v14[3];
    v22 = v14[4];
    v23 = v14[6];
    *(v2 + 800) = v14[5];
    *(v2 + 816) = v23;
    *(v2 + 768) = v21;
    *(v2 + 784) = v22;
    v25 = v14[1];
    v24 = v14[2];
    *(v2 + 720) = *v14;
    *(v2 + 736) = v25;
    *(v2 + 752) = v24;
    sub_1BBA8BC5C(v2 + 960, v2 + 1200, &qword_1EBC7D440);
    sub_1BBA8BCC4(v2 + 720, &qword_1EBC7D440);
    v27 = *(v2 + 976);
    v26 = *(v2 + 992);
    *v14 = *(v2 + 960);
    v14[1] = v27;
    v14[2] = v26;
    v28 = *(v2 + 1056);
    v30 = *(v2 + 1008);
    v29 = *(v2 + 1024);
    v14[5] = *(v2 + 1040);
    v14[6] = v28;
    v14[3] = v30;
    v14[4] = v29;
    v31 = *(v2 + 1120);
    v33 = *(v2 + 1072);
    v32 = *(v2 + 1088);
    v14[9] = *(v2 + 1104);
    v14[10] = v31;
    v14[7] = v33;
    v14[8] = v32;
    v34 = *(v2 + 1184);
    v36 = *(v2 + 1136);
    v35 = *(v2 + 1152);
    v14[13] = *(v2 + 1168);
    v14[14] = v34;
    v14[11] = v36;
    v14[12] = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v2 + 2008);
    v39 = *(v2 + 1992);
    if (isUniquelyReferenced_nonNull_native)
    {
      v40 = *v39;
      v41 = *(**v39 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v38, v40 + v41);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v61 = swift_allocObject();
      sub_1BBA9FF64(v38, v61 + *(*v61 + 88), _s6WindowV7StorageVMa);

      *v39 = v61;
    }

    v62 = *(v2 + 2016);
    v63 = *(v2 + 2008);
    v64 = *(v2 + 448);
    *(v2 + 1632) = *(v2 + 432);
    *(v2 + 1648) = v64;
    *(v2 + 1664) = *(v2 + 464);
    v65 = *(v2 + 384);
    *(v2 + 1568) = *(v2 + 368);
    *(v2 + 1584) = v65;
    v66 = *(v2 + 416);
    *(v2 + 1600) = *(v2 + 400);
    *(v2 + 1616) = v66;
    v67 = *(v2 + 320);
    *(v2 + 1504) = *(v2 + 304);
    *(v2 + 1520) = v67;
    v68 = *(v2 + 352);
    *(v2 + 1536) = *(v2 + 336);
    *(v2 + 1552) = v68;
    v69 = *(v2 + 256);
    *(v2 + 1440) = *(v2 + 240);
    *(v2 + 1456) = v69;
    v70 = *(v2 + 288);
    *(v2 + 1472) = *(v2 + 272);
    *(v2 + 1488) = v70;
    sub_1BBA8BCC4(v2 + 1440, &qword_1EBC7D440);
    v71 = v62;
  }

  else
  {
    v42 = *(v2 + 2016);
    v43 = *(v2 + 2000);
    v85 = *(v2 + 432);
    v86 = *(v2 + 448);
    v87 = *(v2 + 464);
    v81 = *(v2 + 368);
    v82 = *(v2 + 384);
    v83 = *(v2 + 400);
    v84 = *(v2 + 416);
    v77 = *(v2 + 304);
    v78 = *(v2 + 320);
    v79 = *(v2 + 336);
    v80 = *(v2 + 352);
    v73 = *(v2 + 240);
    v74 = *(v2 + 256);
    v75 = *(v2 + 272);
    v76 = *(v2 + 288);
    sub_1BBAA79FC(*(v2 + 2024) + *(v2 + 2032), v42);
    v44 = (v42 + *(v43 + 40));
    v45 = v44[11];
    v46 = v44[12];
    v47 = v44[14];
    *(v2 + 1888) = v44[13];
    *(v2 + 1904) = v47;
    *(v2 + 1856) = v45;
    *(v2 + 1872) = v46;
    v48 = v44[7];
    v49 = v44[8];
    v50 = v44[10];
    *(v2 + 1824) = v44[9];
    *(v2 + 1840) = v50;
    *(v2 + 1792) = v48;
    *(v2 + 1808) = v49;
    v51 = v44[3];
    v52 = v44[4];
    v53 = v44[6];
    *(v2 + 1760) = v44[5];
    *(v2 + 1776) = v53;
    *(v2 + 1728) = v51;
    *(v2 + 1744) = v52;
    v55 = v44[1];
    v54 = v44[2];
    *(v2 + 1680) = *v44;
    *(v2 + 1696) = v55;
    *(v2 + 1712) = v54;
    sub_1BBA8BCC4(v2 + 1680, &qword_1EBC7D440);
    v44[12] = v85;
    v44[13] = v86;
    v44[14] = v87;
    v44[8] = v81;
    v44[9] = v82;
    v44[10] = v83;
    v44[11] = v84;
    v44[4] = v77;
    v44[5] = v78;
    v44[6] = v79;
    v44[7] = v80;
    *v44 = v73;
    v44[1] = v74;
    v44[2] = v75;
    v44[3] = v76;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v2 + 2016);
    v58 = *(v2 + 1992);
    if (v56)
    {
      v59 = *v58;
      v60 = *(**v58 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v57, v59 + v60);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v72 = swift_allocObject();
      sub_1BBA9FF64(v57, v72 + *(*v72 + 88), _s6WindowV7StorageVMa);

      *v58 = v72;
    }

    v71 = *(v2 + 2016);
    v63 = *(v2 + 2008);
  }

  free(v71);
  free(v63);

  free(v2);
}

uint64_t IntelligenceElement.Window.windowContentGeneratedPDF.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  v4 = v3 + *(_s6WindowV7StorageVMa() + 44);
  v5 = *(v4 + 8);
  *a1 = *v4;
  *(a1 + 8) = v5;
  return j__swift_retain();
}

uint64_t sub_1BBB803F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  v4 = v3 + *(_s6WindowV7StorageVMa() + 44);
  v5 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v5;
  return j__swift_retain();
}

uint64_t IntelligenceElement.Window.windowContentGeneratedPDF.setter(uint64_t *a1)
{
  v3 = _s6WindowV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v8 = *v1;
  v9 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA79FC(v8 + v9, v6);
  v10 = &v6[*(v4 + 52)];
  j__swift_release();
  *v10 = v7;
  v10[8] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = *v1;
    v12 = *(*v11 + 88);
    swift_beginAccess();
    sub_1BBAB1FA0(v6, v11 + v12);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
    v14 = swift_allocObject();
    sub_1BBA9FF64(v6, v14 + *(*v14 + 88), _s6WindowV7StorageVMa);

    *v1 = v14;
  }

  return result;
}

void (*IntelligenceElement.Window.windowContentGeneratedPDF.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 88) = v1;
  v6 = _s6WindowV7StorageVMa();
  *(v5 + 96) = v6;
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 104) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 104) = malloc(*(*(v6 - 8) + 64));
    v8 = malloc(v7);
  }

  *(v5 + 112) = v8;
  v9 = *v1;
  *(v5 + 120) = *v1;
  v10 = *(*v9 + 88);
  *(v5 + 128) = v10;
  v11 = v9 + v10;
  swift_beginAccess();
  v12 = v11 + *(v6 + 44);
  v13 = *(v12 + 8);
  *(v5 + 72) = *v12;
  *(v5 + 80) = v13;
  j__swift_retain();
  return sub_1BBB80734;
}

void sub_1BBB80734(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 80);
  v6 = *(*a1 + 120);
  v5 = *(*a1 + 128);
  v7 = *(*a1 + 96);
  if (a2)
  {
    v8 = v2[13];
    sub_1BBAA79FC(v6 + v5, v8);
    v9 = v8 + *(v7 + 44);
    j__swift_retain();
    j__swift_release();
    *v9 = v3;
    *(v9 + 8) = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v2[13];
    v12 = v2[11];
    if (isUniquelyReferenced_nonNull_native)
    {
      v13 = *v12;
      v14 = *(**v12 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v11, v13 + v14);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v22 = swift_allocObject();
      sub_1BBA9FF64(v11, v22 + *(*v22 + 88), _s6WindowV7StorageVMa);

      *v12 = v22;
    }

    v23 = v2[13];
    v24 = v2[14];
    j__swift_release();
    v25 = v24;
  }

  else
  {
    v15 = v2[14];
    sub_1BBAA79FC(v6 + v5, v15);
    v16 = v15 + *(v7 + 44);
    j__swift_release();
    *v16 = v3;
    *(v16 + 8) = v4;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v2[14];
    v19 = v2[11];
    if (v17)
    {
      v20 = *v19;
      v21 = *(**v19 + 88);
      swift_beginAccess();
      sub_1BBAB1FA0(v18, v20 + v21);
      swift_endAccess();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
      v26 = swift_allocObject();
      sub_1BBA9FF64(v18, v26 + *(*v26 + 88), _s6WindowV7StorageVMa);

      *v19 = v26;
    }

    v23 = v2[13];
    v25 = v2[14];
  }

  free(v25);
  free(v23);

  free(v2);
}

uint64_t IntelligenceElement.Window.init(appProcessInfo:identifier:isActive:canOcclude:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = _s6WindowV7StorageVMa();
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[1];
  v41 = *a1;
  v42 = v19;
  v20 = a1[3];
  v43 = a1[2];
  v44 = v20;
  sub_1BBAA8D28(v45);
  v21 = type metadata accessor for IntelligenceUserActivity();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_1BBAA6758(v14, v18 + v16[7], &qword_1EBC7B830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B820);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for IntelligenceImage(0);
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  sub_1BBAA6758(v11, v18 + v16[11], &qword_1EBC7B7F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E0);
  swift_storeEnumTagMultiPayload();
  v23 = v44;
  v18[2] = v43;
  v18[3] = v23;
  v24 = v42;
  *v18 = v41;
  v18[1] = v24;
  v25 = (v18 + v16[8]);
  *v25 = a2;
  v25[1] = a3;
  v26 = v39;
  *(v18 + v16[9]) = v38;
  *(v18 + v16[10]) = v26;
  v27 = (v18 + v16[12]);
  v28 = v45[13];
  v27[12] = v45[12];
  v27[13] = v28;
  v27[14] = v45[14];
  v29 = v45[9];
  v27[8] = v45[8];
  v27[9] = v29;
  v30 = v45[11];
  v27[10] = v45[10];
  v27[11] = v30;
  v31 = v45[5];
  v27[4] = v45[4];
  v27[5] = v31;
  v32 = v45[7];
  v27[6] = v45[6];
  v27[7] = v32;
  v33 = v45[1];
  *v27 = v45[0];
  v27[1] = v33;
  v34 = v45[3];
  v27[2] = v45[2];
  v27[3] = v34;
  v35 = v18 + v16[13];
  *v35 = 0;
  v35[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB18);
  v36 = swift_allocObject();
  result = sub_1BBA9FF64(v18, v36 + *(*v36 + 88), _s6WindowV7StorageVMa);
  *v40 = v36;
  return result;
}

uint64_t IntelligenceElement.Window.init(appBundleIdentifier:identifier:isActive:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, void *a6@<X8>)
{
  IntelligenceElement.Window.init(identifier:isActive:)(a3, a4, a5, v12);
  *a6 = v12[0];
  v10 = sub_1BBB7D164(v12);
  if (*(v9 + 56) != 1)
  {
    *(v9 + 48) = a1;
    *(v9 + 56) = a2;
  }

  return (v10)(v12, 0);
}

uint64_t sub_1BBB80DD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB82DEC();
  *a1 = result;
  return result;
}

const char *sub_1BBB80E04@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006F666E497373;
  v4 = 0x65636F7250707061;
  v5 = 0x80000001BBB9AD50;
  v6 = 0xD000000000000019;
  if (v2 == 6)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v5 = 0x80000001BBB9AE40;
  }

  v7 = 0x756C63634F6E6163;
  v8 = 0xED00006567616D49;
  if (v2 == 4)
  {
    v8 = 0xEA00000000006564;
  }

  else
  {
    v7 = 0x746F687370616E73;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0xEA00000000007265;
  v10 = 0x696669746E656469;
  if (v2 != 2)
  {
    v10 = 0x6576697463417369;
  }

  result = "appCurrentUserActivity";
  if (v2 != 2)
  {
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001BBB9AE10;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v7;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BBB80F20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB82DEC();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB80F48(uint64_t a1)
{
  v2 = sub_1BBAA8468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB80F84(uint64_t a1)
{
  v2 = sub_1BBAA8468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Window.encode(to:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v34 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBAA8468();
  v10 = v5;
  sub_1BBB84478();
  v11 = (v9 + *(*v9 + 88));
  swift_beginAccess();
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[3];
  v82 = v11[2];
  v83 = v14;
  v81[0] = v12;
  v81[1] = v13;
  v77 = v12;
  v78 = v13;
  v79 = v82;
  v80 = v14;
  v76 = 0;
  sub_1BBA8BC5C(v81, &v59, &qword_1EBC7BBE0);
  sub_1BBACD2C4();
  v15 = v84;
  sub_1BBB84238();
  if (v15)
  {
    v59 = v77;
    v60 = v78;
    v61 = v79;
    v62 = v80;
    sub_1BBA8BCC4(&v59, &qword_1EBC7BBE0);
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    v75[0] = v77;
    v75[1] = v78;
    v75[2] = v79;
    v75[3] = v80;
    sub_1BBA8BCC4(v75, &qword_1EBC7BBE0);
    v16 = _s6WindowV7StorageVMa();
    v17 = v38;
    sub_1BBA8BC5C(v11 + v16[5], v38, &qword_1EBC7BBB8);
    LOBYTE(v59) = 1;
    sub_1BBAAB770(&qword_1ED6BDB78);
    sub_1BBB84288();
    sub_1BBA8BCC4(v17, &qword_1EBC7BBB8);
    LOBYTE(v59) = 2;

    sub_1BBB84218();

    if (*(v11 + v16[7]) == 1)
    {
      LOBYTE(v59) = 3;
      sub_1BBB84258();
    }

    v19 = v36;
    if ((*(v11 + v16[8]) & 1) == 0)
    {
      LOBYTE(v59) = 4;
      sub_1BBB84258();
    }

    sub_1BBA8BC5C(v11 + v16[9], v19, &qword_1EBC7B7E8);
    v74 = 5;
    sub_1BBAA86F4(&qword_1ED6BDB70);
    sub_1BBB84288();
    sub_1BBA8BCC4(v19, &qword_1EBC7B7E8);
    v20 = (v11 + v16[10]);
    v22 = v20[13];
    v21 = v20[14];
    v23 = v20[12];
    v70 = v20[11];
    v71 = v23;
    v72 = v22;
    v73 = v21;
    v25 = v20[9];
    v24 = v20[10];
    v26 = v20[8];
    v66 = v20[7];
    v67 = v26;
    v68 = v25;
    v69 = v24;
    v28 = v20[5];
    v27 = v20[6];
    v29 = v20[4];
    v62 = v20[3];
    v63 = v29;
    v64 = v28;
    v65 = v27;
    v30 = *v20;
    v31 = v20[2];
    v60 = v20[1];
    v61 = v31;
    v56 = v71;
    v57 = v72;
    v58 = v73;
    v59 = v30;
    v52 = v67;
    v53 = v68;
    v54 = v69;
    v55 = v70;
    v48 = v63;
    v49 = v64;
    v50 = v27;
    v51 = v66;
    v44 = v30;
    v45 = v60;
    v46 = v31;
    v47 = v62;
    v43 = 6;
    sub_1BBA8BC5C(&v59, v42, &qword_1EBC7D440);
    sub_1BBB636E0();
    sub_1BBB84238();
    v42[11] = v55;
    v42[12] = v56;
    v42[13] = v57;
    v42[14] = v58;
    v42[7] = v51;
    v42[8] = v52;
    v42[9] = v53;
    v42[10] = v54;
    v42[4] = v48;
    v42[5] = v49;
    v42[6] = v50;
    v42[0] = v44;
    v42[1] = v45;
    v42[2] = v46;
    v42[3] = v47;
    sub_1BBA8BCC4(v42, &qword_1EBC7D440);
    v32 = v11 + v16[11];
    v33 = v32[8];
    v40 = *v32;
    v41 = v33;
    v39 = 7;
    j__swift_retain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7DB28);
    sub_1BBAA87DC(&qword_1ED6BDB68);
    sub_1BBB84288();
    j__swift_release();
    return (*(v6 + 8))(v8, v10);
  }
}

uint64_t IntelligenceElement.Window.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v72 = &v66 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B7F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v66 - v4;
  v6 = type metadata accessor for IntelligenceImage(0);
  v70 = *(v6 - 8);
  v71 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v66 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v66 - v12;
  v14 = type metadata accessor for IntelligenceUserActivity();
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  v17 = *(v16 + 56);
  if (v17 == 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v77 = 0x203A707061;
    v78 = 0xE500000000000000;
    v19 = *(v16 + 16);
    v74[0] = *v16;
    v74[1] = v19;
    v74[2] = *(v16 + 32);
    v75 = *(v16 + 48);
    v76 = v17;
    v20 = IntelligenceProcessInfo.description.getter();
    MEMORY[0x1BFB16150](v20);

    v21 = v77;
    v22 = v78;
    v18 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v24 = *(v18 + 2);
    v23 = *(v18 + 3);
    if (v24 >= v23 >> 1)
    {
      v18 = sub_1BBA86A94((v23 > 1), v24 + 1, 1, v18);
    }

    *(v18 + 2) = v24 + 1;
    v25 = &v18[16 * v24];
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
  }

  v73 = v5;
  v26 = _s6WindowV7StorageVMa();
  v27 = (v16 + v26[6]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      *&v74[0] = 0;
      *(&v74[0] + 1) = 0xE000000000000000;

      sub_1BBB84028();

      strcpy(v74, "identifier: ");
      HIWORD(v74[0]) = -4864;
      MEMORY[0x1BFB16150](v29, v28);

      MEMORY[0x1BFB16150](34, 0xE100000000000000);
      v31 = v74[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1BBA86A94(0, *(v18 + 2) + 1, 1, v18);
      }

      v33 = *(v18 + 2);
      v32 = *(v18 + 3);
      if (v33 >= v32 >> 1)
      {
        v18 = sub_1BBA86A94((v32 > 1), v33 + 1, 1, v18);
      }

      *(v18 + 2) = v33 + 1;
      *&v18[16 * v33 + 32] = v31;
    }
  }

  *&v74[0] = 0x6576697463417369;
  *(&v74[0] + 1) = 0xEA0000000000203ALL;
  if (*(v16 + v26[7]))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v16 + v26[7]))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x1BFB16150](v34, v35);

  v36 = v74[0];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1BBA86A94(0, *(v18 + 2) + 1, 1, v18);
  }

  v38 = *(v18 + 2);
  v37 = *(v18 + 3);
  if (v38 >= v37 >> 1)
  {
    v18 = sub_1BBA86A94((v37 > 1), v38 + 1, 1, v18);
  }

  *(v18 + 2) = v38 + 1;
  *&v18[16 * v38 + 32] = v36;
  if ((*(v16 + v26[8]) & 1) == 0)
  {
    strcpy(v74, "canOcclude: ");
    BYTE13(v74[0]) = 0;
    HIWORD(v74[0]) = -5120;
    MEMORY[0x1BFB16150](0x65736C6166, 0xE500000000000000);
    v39 = v74[0];
    v41 = *(v18 + 2);
    v40 = *(v18 + 3);
    if (v41 >= v40 >> 1)
    {
      v18 = sub_1BBA86A94((v40 > 1), v41 + 1, 1, v18);
    }

    *(v18 + 2) = v41 + 1;
    *&v18[16 * v41 + 32] = v39;
  }

  sub_1BBA8BC5C(v16 + v26[5], v10, &qword_1EBC7BBB8);
  sub_1BBAC05AC(v13);
  sub_1BBA8BCC4(v10, &qword_1EBC7BBB8);
  if ((*(v68 + 48))(v13, 1, v69) == 1)
  {
    sub_1BBA8BCC4(v13, &qword_1EBC7B830);
    v42 = v73;
  }

  else
  {
    v43 = v66;
    sub_1BBA9FF64(v13, v66, type metadata accessor for IntelligenceUserActivity);
    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_1BBB84028();

    *&v74[0] = 0xD000000000000018;
    *(&v74[0] + 1) = 0x80000001BBB9DB00;
    v44 = IntelligenceUserActivity.description.getter();
    MEMORY[0x1BFB16150](v44);

    v45 = v74[0];
    v47 = *(v18 + 2);
    v46 = *(v18 + 3);
    v42 = v73;
    if (v47 >= v46 >> 1)
    {
      v18 = sub_1BBA86A94((v46 > 1), v47 + 1, 1, v18);
    }

    sub_1BBAA6A3C(v43, type metadata accessor for IntelligenceUserActivity);
    *(v18 + 2) = v47 + 1;
    *&v18[16 * v47 + 32] = v45;
  }

  v48 = v72;
  sub_1BBA8BC5C(v16 + v26[9], v72, &qword_1EBC7B7E8);
  sub_1BBAC030C(v42);
  sub_1BBA8BCC4(v48, &qword_1EBC7B7E8);
  if ((*(v70 + 48))(v42, 1, v71) == 1)
  {
    sub_1BBA8BCC4(v42, &qword_1EBC7B7F8);
  }

  else
  {
    v49 = v67;
    sub_1BBA9FF64(v42, v67, type metadata accessor for IntelligenceImage);
    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_1BBB84028();

    *&v74[0] = 0x746F687370616E73;
    *(&v74[0] + 1) = 0xEF203A6567616D49;
    v50 = sub_1BBAFEABC();
    MEMORY[0x1BFB16150](v50);

    v51 = v74[0];
    v53 = *(v18 + 2);
    v52 = *(v18 + 3);
    if (v53 >= v52 >> 1)
    {
      v18 = sub_1BBA86A94((v52 > 1), v53 + 1, 1, v18);
    }

    sub_1BBAA6A3C(v49, type metadata accessor for IntelligenceImage);
    *(v18 + 2) = v53 + 1;
    *&v18[16 * v53 + 32] = v51;
  }

  v54 = v16 + v26[11];
  v55 = *v54;
  if ((*(v54 + 8) & 1) == 0)
  {
    j__swift_retain();
    if (!v55)
    {
      goto LABEL_48;
    }

    goto LABEL_45;
  }

  j__swift_retain();
  j__swift_retain();
  os_unfair_lock_lock((v55 + 72));
  v56 = *(v55 + 56);
  v57 = v56;
  if (v56 == 1)
  {
    v57 = *(v55 + 64);
  }

  sub_1BBB82B20(v56);
  os_unfair_lock_unlock((v55 + 72));
  j__swift_release();
  j__swift_release();
  v55 = v57;
  if (v57)
  {
LABEL_45:
    *&v74[0] = 0;
    *(&v74[0] + 1) = 0xE000000000000000;
    sub_1BBB84028();

    *&v74[0] = 0xD00000000000001BLL;
    *(&v74[0] + 1) = 0x80000001BBB9DAE0;
    v77 = v55;
    v58 = IntelligenceElement.Document.description.getter();
    MEMORY[0x1BFB16150](v58);

    v59 = v74[0];
    v61 = *(v18 + 2);
    v60 = *(v18 + 3);
    if (v61 >= v60 >> 1)
    {
      v18 = sub_1BBA86A94((v60 > 1), v61 + 1, 1, v18);
    }

    *(v18 + 2) = v61 + 1;
    *&v18[16 * v61 + 32] = v59;
  }

LABEL_48:
  *&v74[0] = 0x28776F646E6957;
  *(&v74[0] + 1) = 0xE700000000000000;
  v77 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v62 = sub_1BBB83938();
  v64 = v63;

  MEMORY[0x1BFB16150](v62, v64);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return *&v74[0];
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV6WindowV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t *a2)
{
  v63 = type metadata accessor for IntelligenceUserActivity();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BE30);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BBB8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v54 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B830);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v54 - v18;
  v19 = *a2;
  v20 = (*a1 + *(**a1 + 88));
  swift_beginAccess();
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[3];
  v90 = v20[2];
  v91 = v23;
  v88 = v21;
  v89 = v22;
  v24 = (v19 + *(*v19 + 88));
  swift_beginAccess();
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[3];
  v92[2] = v24[2];
  v92[3] = v27;
  v92[0] = v25;
  v92[1] = v26;
  v84 = v88;
  v85 = v89;
  v86 = v90;
  v28 = *(&v91 + 1);
  v87 = v91;
  v29 = v24[1];
  v80 = *v24;
  v81 = v29;
  v82 = v24[2];
  v83 = *(v24 + 6);
  v30 = *(&v27 + 1);
  if (*(&v91 + 1) == 1)
  {
    if (*(&v27 + 1) == 1)
    {
      v57 = v6;
      v58 = v8;
      v59 = v17;
      v56 = v5;
      v71 = v88;
      v72 = v89;
      v73 = v90;
      *&v74 = v91;
      *(&v74 + 1) = 1;
      sub_1BBA8BC5C(&v88, v67, &qword_1EBC7BBE0);
      sub_1BBA8BC5C(v92, v67, &qword_1EBC7BBE0);
      sub_1BBA8BCC4(&v71, &qword_1EBC7BBE0);
LABEL_10:
      v37 = _s6WindowV7StorageVMa();
      sub_1BBA8BC5C(v20 + *(v37 + 20), v11, &qword_1EBC7BBB8);
      v38 = v62;
      sub_1BBAC05AC(v62);
      sub_1BBA8BCC4(v11, &qword_1EBC7BBB8);
      v55 = v37;
      sub_1BBA8BC5C(v24 + *(v37 + 20), v11, &qword_1EBC7BBB8);
      v39 = v59;
      sub_1BBAC05AC(v59);
      sub_1BBA8BCC4(v11, &qword_1EBC7BBB8);
      v40 = v58;
      v41 = *(v57 + 48);
      sub_1BBA8BC5C(v38, v58, &qword_1EBC7B830);
      sub_1BBA8BC5C(v39, v40 + v41, &qword_1EBC7B830);
      v42 = *(v61 + 48);
      if (v42(v40, 1, v63) == 1)
      {
        sub_1BBA8BCC4(v39, &qword_1EBC7B830);
        sub_1BBA8BCC4(v38, &qword_1EBC7B830);
        if (v42(v40 + v41, 1, v63) == 1)
        {
          sub_1BBA8BCC4(v40, &qword_1EBC7B830);
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v60;
        sub_1BBA8BC5C(v40, v60, &qword_1EBC7B830);
        if (v42(v40 + v41, 1, v63) != 1)
        {
          v45 = v40 + v41;
          v46 = v56;
          sub_1BBA9FF64(v45, v56, type metadata accessor for IntelligenceUserActivity);
          v47 = sub_1BBB834C8();
          sub_1BBAA6A3C(v46, type metadata accessor for IntelligenceUserActivity);
          sub_1BBA8BCC4(v39, &qword_1EBC7B830);
          sub_1BBA8BCC4(v62, &qword_1EBC7B830);
          sub_1BBAA6A3C(v43, type metadata accessor for IntelligenceUserActivity);
          sub_1BBA8BCC4(v40, &qword_1EBC7B830);
          if (v47)
          {
LABEL_20:
            v48 = v55;
            v49 = *(v55 + 24);
            v50 = (v20 + v49);
            v51 = *(v20 + v49 + 8);
            v52 = (v24 + v49);
            v53 = v52[1];
            if (v51)
            {
              if (v53 && (*v50 == *v52 && v51 == v53 || (sub_1BBB842F8() & 1) != 0))
              {
                goto LABEL_27;
              }
            }

            else if (!v53)
            {
LABEL_27:
              v36 = *(v20 + *(v48 + 28)) ^ *(v24 + *(v48 + 28)) ^ 1;
              return v36 & 1;
            }
          }

LABEL_17:
          v36 = 0;
          return v36 & 1;
        }

        sub_1BBA8BCC4(v39, &qword_1EBC7B830);
        sub_1BBA8BCC4(v62, &qword_1EBC7B830);
        sub_1BBAA6A3C(v43, type metadata accessor for IntelligenceUserActivity);
      }

      v31 = &qword_1EBC7BE30;
      v32 = v40;
LABEL_16:
      sub_1BBA8BCC4(v32, v31);
      goto LABEL_17;
    }

    sub_1BBA8BC5C(&v88, &v71, &qword_1EBC7BBE0);
    sub_1BBA8BC5C(v92, &v71, &qword_1EBC7BBE0);
LABEL_7:
    v71 = v84;
    v72 = v85;
    v73 = v86;
    *&v74 = v87;
    *(&v74 + 1) = v28;
    v75 = v80;
    v76 = v81;
    v77 = v82;
    v78 = v83;
    v79 = v30;
    v31 = &unk_1EBC7C520;
    v32 = &v71;
    goto LABEL_16;
  }

  v71 = v88;
  v72 = v89;
  v73 = v90;
  v74 = v91;
  if (*(&v27 + 1) == 1)
  {
    sub_1BBA8BC5C(&v88, v67, &qword_1EBC7BBE0);
    sub_1BBA8BC5C(v92, v67, &qword_1EBC7BBE0);
    sub_1BBA8BC5C(&v71, v67, &qword_1EBC7BBE0);

    goto LABEL_7;
  }

  v57 = v6;
  v58 = v8;
  v59 = v17;
  v56 = v5;
  v33 = DWORD2(v73);
  LODWORD(v55) = DWORD1(v73);
  v67[0] = v80;
  v67[1] = v81;
  v68 = v82;
  v69 = v83;
  v70 = *(&v27 + 1);
  sub_1BBA8BC5C(&v88, v64, &qword_1EBC7BBE0);
  sub_1BBA8BC5C(v92, v64, &qword_1EBC7BBE0);
  sub_1BBA8BC5C(&v71, v64, &qword_1EBC7BBE0);
  sub_1BBA8BCC4(v67, &qword_1EBC7BBE0);
  v35 = DWORD1(v68);
  v34 = DWORD2(v68);

  v64[0] = v84;
  v64[1] = v85;
  v64[2] = v86;
  v65 = v87;
  v66 = v28;
  sub_1BBA8BCC4(v64, &qword_1EBC7BBE0);
  v36 = 0;
  if (v55 == v35 && v33 == v34)
  {
    goto LABEL_10;
  }

  return v36 & 1;
}

uint64_t sub_1BBB82928(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B830);
    sub_1BBB82A60(a2, type metadata accessor for IntelligenceUserActivity);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBB829C4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7B7F8);
    sub_1BBB82A60(a2, type metadata accessor for IntelligenceImage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBB82A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BBB82AA8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7DB30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBB82B20(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void sub_1BBB82B78()
{
  sub_1BBB63B4C(319, qword_1ED6BE618);
  if (v0 <= 0x3F)
  {
    sub_1BBAE70AC(319, qword_1ED6BE798, &qword_1EBC7B830);
    if (v1 <= 0x3F)
    {
      sub_1BBB63B4C(319, &qword_1ED6BE480);
      if (v2 <= 0x3F)
      {
        sub_1BBAE70AC(319, &qword_1ED6BDDA8, &qword_1EBC7B7F8);
        if (v3 <= 0x3F)
        {
          sub_1BBB63B4C(319, &qword_1ED6BDCB8);
          if (v4 <= 0x3F)
          {
            sub_1BBAE70AC(319, &qword_1ED6BDDA0, &qword_1EBC7DB30);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1BBB82CE8()
{
  result = qword_1EBC7DB40;
  if (!qword_1EBC7DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7DB40);
  }

  return result;
}

unint64_t sub_1BBB82D40()
{
  result = qword_1ED6BE300;
  if (!qword_1ED6BE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE300);
  }

  return result;
}

unint64_t sub_1BBB82D98()
{
  result = qword_1ED6BE308;
  if (!qword_1ED6BE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE308);
  }

  return result;
}

uint64_t sub_1BBB82DEC()
{
  v0 = sub_1BBB84108();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}