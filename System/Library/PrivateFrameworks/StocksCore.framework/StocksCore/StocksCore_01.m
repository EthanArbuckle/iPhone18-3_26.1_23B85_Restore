void sub_1DAA57198(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA571EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA57250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA572B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA572FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA57344(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA5738C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA573D4(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA57198(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57424(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5802C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA57488(uint64_t a1)
{
  v21 = MEMORY[0x1E69E7CC0];
  v2 = 51;
  sub_1DAA57914(0, 51, 0);
  v3 = 0;
  v4 = v21;
  while (1)
  {
    sub_1DAA58284(0, 0, v19);
    v21 = v4;
    v6 = *(v4 + 16);
    v5 = *(v4 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1DAA57914((v5 > 1), v6 + 1, 1);
      v4 = v21;
    }

    *(v4 + 16) = v6 + 1;
    v7 = v4 + 136 * v6;
    *(v7 + 32) = v19[0];
    v8 = v19[1];
    v9 = v19[2];
    v10 = v19[4];
    *(v7 + 80) = v19[3];
    *(v7 + 96) = v10;
    *(v7 + 48) = v8;
    *(v7 + 64) = v9;
    v11 = v19[5];
    v12 = v19[6];
    v13 = v19[7];
    *(v7 + 160) = v20;
    *(v7 + 128) = v12;
    *(v7 + 144) = v13;
    *(v7 + 112) = v11;
    if (v3 != 50)
    {
      break;
    }

    v14 = 0;
LABEL_7:
    if (!--v2)
    {
      sub_1DAA59E24(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
      sub_1DAA59F54();
      v16 = sub_1DACB94F4();

      os_unfair_lock_lock((a1 + 16));
      v17 = *(a1 + 24);
      sub_1DACB71E4();
      os_unfair_lock_unlock((a1 + 16));
      sub_1DAA5A1E0(v16);
      os_unfair_lock_lock((a1 + 16));
      v18 = *(a1 + 24);

      *(a1 + 24) = v17;
      os_unfair_lock_unlock((a1 + 16));
      return;
    }

    v15 = v3 == 50;
    v3 = v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  v14 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

char *sub_1DAA57678(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DAA577B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125A00);
  sub_1DACB8254();
  if (v11)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v6 = sub_1DACB8224();
    if (v6)
    {
      v7 = v6;
      v8 = type metadata accessor for StockMetadataManager();
      swift_allocObject();
      result = sub_1DAA58848(v10, v7);
      a2[3] = v8;
      a2[4] = &off_1F5687428;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

char *sub_1DAA57914(char *a1, int64_t a2, char a3)
{
  result = sub_1DAA57678(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DAA5796C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = sub_1DACB71F4();
  v1(v3);
}

uint64_t sub_1DAA579D4()
{
  v13 = sub_1DACB9944();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB9004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA572B4(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1DAA57F64(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57CA4(&qword_1EE123E70, &qword_1EE123E78, v8);
  sub_1DACB9BB4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1DACB9974();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

unint64_t sub_1DAA57C58()
{
  result = qword_1EE123DE8;
  if (!qword_1EE123DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE123DE8);
  }

  return result;
}

uint64_t sub_1DAA57CA4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA57F64(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57D08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA57FC8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57D6C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58090(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57DD0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA580F4(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57E34(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58158(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57E98(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA581BC(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA57EFC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA58220(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1DAA57F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA57FC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5802C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA580F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA581BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_1DAA58284@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    a1 = sub_1DAA58424(0x500000001);
  }

  v5 = a2;
  sub_1DACB71E4();
  v6 = sub_1DAA58424(0xF00000005);
  v8 = v7;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](a1, v5);
  *a3 = 0x51414453414ELL;
  *(a3 + 8) = 0xE600000000000000;
  *(a3 + 16) = a1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  *(a3 + 40) = v8;
  *(a3 + 48) = 0x51414453414ELL;
  *(a3 + 56) = 0xE600000000000000;
  *(a3 + 64) = 0;
  v9 = qword_1EE122610;
  sub_1DACB71E4();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE13E388;
  v11 = a1;
  if (*(qword_1EE13E388 + 16))
  {
    v12 = sub_1DAA4BF3C(a1, v5);
    v11 = a1;
    if (v13)
    {
      v14 = (*(v10 + 56) + 16 * v12);
      v11 = *v14;
      v15 = v14[1];
    }
  }

  v16 = sub_1DACB71E4();
  *(a3 + 72) = v11;
  *(a3 + 80) = v16;
  v17 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v18 = sub_1DAA4BF3C(a1, v5);
    if (v19)
    {
      v20 = v18;

      v21 = (*(v17 + 56) + 16 * v20);
      a1 = *v21;
      v5 = v21[1];
      sub_1DACB71E4();
    }
  }

  *(a3 + 88) = a1;
  *(a3 + 96) = v5;
  result = 0.0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  return result;
}

unint64_t sub_1DAA58424(uint64_t a1)
{
  v1 = a1;
  v2 = arc4random_uniform(HIDWORD(a1));
  if (v2 <= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v3, 0);
    v4 = v14;
    while (1)
    {
      result = sub_1DACB9414();
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(result))
      {
        goto LABEL_13;
      }

      arc4random_uniform(result);
      sub_1DACB9434();
      v6 = sub_1DACB94C4();
      v15 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1DAA5859C((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v4 = v15;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      if (!--v3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:
    sub_1DAA613E8();
    sub_1DAA587CC();
    v13 = sub_1DACB9214();

    return v13;
  }

  return result;
}

char *sub_1DAA5859C(char *a1, int64_t a2, char a3)
{
  result = sub_1DAA586A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DAA585BC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA46854(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA58620(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA5FE8C(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1DAA586A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA495C0(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1DAA587CC()
{
  result = qword_1EE123E90;
  if (!qword_1EE123E90)
  {
    sub_1DAA58C60(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E90);
  }

  return result;
}

uint64_t sub_1DAA58848(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = v2;
  v25 = a1;
  v28 = sub_1DACB81D4();
  v26 = *(v28 - 8);
  v4 = v26;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB86E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v30 = MEMORY[0x1E69E7CC0];
  sub_1DAA4CCDC(&qword_1EE1255A8, MEMORY[0x1E69D67A0]);
  v9 = MEMORY[0x1E69D67A0];
  v24 = MEMORY[0x1E69E62F8];
  sub_1DAA58BFC(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA4F5E8(&qword_1EE125508, &qword_1EE125510, v9);
  sub_1DACB9BB4();
  sub_1DAA58CB0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8354();
  *(v2 + 64) = 0;
  *(v2 + 72) = MEMORY[0x1E69E7CD0];
  v13 = v25;
  sub_1DAA4D678(v25, v2 + 16);
  v14 = MEMORY[0x1E69D6420];
  sub_1DAA58BFC(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v15 = *(v4 + 72);
  v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v30 = v17;
  sub_1DAA4CCDC(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAA58BFC(0, &qword_1EE125540, v14, v24);
  sub_1DAA4F5E8(&qword_1EE125530, &qword_1EE125540, v14);
  sub_1DACB9BB4();
  sub_1DAA58EA0(0, &qword_1EE11FF48, &qword_1EE11FD30, MEMORY[0x1E69D61B8], MEMORY[0x1E69D6A80]);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v13);
  *(v3 + 80) = v21;
  return v3;
}

void sub_1DAA58BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA58C60(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA58CB0()
{
  if (!qword_1EE120008)
  {
    sub_1DAA58DCC(255, &qword_1EE123E28, MEMORY[0x1E69E64E8]);
    sub_1DAA58D6C(255, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
    sub_1DAA58E2C();
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE120008);
    }
  }
}

void sub_1DAA58D6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void, uint64_t, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x1E69E6158], a3, MEMORY[0x1E69E6168]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DAA58DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAA58E2C()
{
  result = qword_1EE11F990;
  if (!qword_1EE11F990)
  {
    sub_1DAA58DCC(255, &qword_1EE123E28, MEMORY[0x1E69E64E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11F990);
  }

  return result;
}

void sub_1DAA58EA0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, void *), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA58F08(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAA58F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockMetadataManager.StoreDescriptor;
    v8[1] = &type metadata for StockMetadataManager.CacheEntry;
    v8[2] = sub_1DAA58FA0();
    v8[3] = sub_1DAA58FF4();
    v8[4] = sub_1DAA59048();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA58FA0()
{
  result = qword_1EE121708;
  if (!qword_1EE121708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121708);
  }

  return result;
}

unint64_t sub_1DAA58FF4()
{
  result = qword_1EE121710;
  if (!qword_1EE121710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121710);
  }

  return result;
}

unint64_t sub_1DAA59048()
{
  result = qword_1EE121718;
  if (!qword_1EE121718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121718);
  }

  return result;
}

uint64_t sub_1DAA590C0()
{
  v0 = sub_1DAA4BDD8(&unk_1F567C528);
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v1 = sub_1DAA4BDD8(&unk_1F567C5C8);
  result = swift_arrayDestroy();
  qword_1EE13E388 = v0;
  qword_1EE13E390 = v1;
  return result;
}

void *sub_1DAA59144(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v90 = a2;
  v79 = a1;
  v87 = sub_1DACB81D4();
  v4 = *(*(v87 - 8) + 64);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA59C7C(0, &qword_1EE11FD10, MEMORY[0x1E695BD30]);
  v85 = *(v6 - 8);
  v86 = v6;
  v7 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v84 = &v74 - v8;
  v77 = sub_1DACB7D04();
  v76 = *(v77 - 8);
  v9 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7E44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB92E4();
  v81 = *(v14 - 8);
  v82 = v14;
  v15 = *(v81 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v80 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v74 - v18;
  v78 = sub_1DACB9944();
  v19 = *(v78 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB9924();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v25 = sub_1DACB9004();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  *(v2 + 24) = 0;
  *(v2 + 32) = [objc_opt_self() standardUserDefaults];
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  sub_1DACB8FE4();
  v91 = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  sub_1DAA59DC0(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA59E74();
  sub_1DACB9BB4();
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8090], v78);
  v27 = v79;
  v28 = MEMORY[0x1E69E7CC0];
  *(v2 + 40) = sub_1DACB9974();
  *(v2 + 48) = 0;
  v29 = MEMORY[0x1E69E7CC8];
  *(v2 + 56) = v28;
  *(v2 + 64) = v29;
  *(v2 + 152) = 0;
  *(v2 + 160) = v28;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  sub_1DAA4D678(v27, v2 + 72);
  sub_1DAA4D678(v90, v2 + 112);
  v97 = MEMORY[0x1E69E7CD0];
  v30 = *(v2 + 32);
  v31 = sub_1DACB92F4();
  v32 = [v30 stringForKey_];

  if (v32)
  {
    v33 = sub_1DACB9324();
    v35 = v34;

    v36 = v89;
    sub_1DACB9284();
    v37 = v81;
    v38 = v82;
    (*(v81 + 16))(v80, v36, v82);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v39 = qword_1EE13E470;
    sub_1DACB7DF4();
    v40 = sub_1DACB9384();
    v42 = v41;
    (*(v37 + 8))(v36, v38);
    v91 = v40;
    v92 = v42;
    v93 = MEMORY[0x1E69E7CC0];
    v94 = v33;
    v95 = v35;
  }

  else
  {
    v43 = v75;
    v44 = v76;
    v45 = v77;
    v46 = v89;
    sub_1DACB9284();
    v47 = v81;
    v48 = v82;
    (*(v81 + 16))(v80, v46, v82);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v49 = qword_1EE13E470;
    sub_1DACB7DF4();
    v50 = sub_1DACB9384();
    v52 = v51;
    (*(v47 + 8))(v89, v48);
    sub_1DACB6D04();
    v53 = sub_1DACB7CE4();
    v55 = v54;
    (*(v44 + 8))(v43, v45);
    v91 = v50;
    v92 = v52;
    v93 = MEMORY[0x1E69E7CC0];
    v94 = v53;
    v95 = v55;
  }

  v96 = 160;
  sub_1DAA59D18();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = sub_1DACB8F54();
  v3[2] = v59;
  v91 = v59;
  sub_1DAA59D18();
  sub_1DAA59D78(&qword_1EE11FD08, sub_1DAA59D18);
  sub_1DACB71F4();
  v60 = v84;
  sub_1DACB8F64();

  v61 = v3[4];
  *(swift_allocObject() + 16) = v61;
  sub_1DAA5A460(&qword_1EE11FD18, &qword_1EE11FD10, MEMORY[0x1E695BD30]);
  v62 = v61;
  v63 = v86;
  sub_1DACB8F94();

  (*(v85 + 8))(v60, v63);
  sub_1DACB8EE4();

  v3[23] = v97;
  v64 = v27[3];
  v65 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v64);
  v66 = *(v65 + 56);
  v67 = sub_1DACB71F4();
  v66(v67, &off_1F5692AB0, v64, v65);

  swift_allocObject();
  swift_weakInit();
  v91 = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAA59DC0(0, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
  sub_1DAA5A834();
  sub_1DACB9BB4();
  sub_1DAA5A90C();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v90);
  v72 = v3[3];
  v3[3] = v71;

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v3;
}

uint64_t sub_1DAA59C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA59C44()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA59C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA59D18();
    v7 = v6;
    v8 = sub_1DAA59D78(&qword_1EE11FD08, sub_1DAA59D18);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1DAA59D18()
{
  if (!qword_1EE11FD00)
  {
    v0 = sub_1DACB8F44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FD00);
    }
  }
}

uint64_t sub_1DAA59D78(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAA59DC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA59E24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1DAA59E74()
{
  result = qword_1EE123E70;
  if (!qword_1EE123E70)
  {
    sub_1DAA59DC0(255, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123E70);
  }

  return result;
}

id sub_1DAA59EFC()
{
  type metadata accessor for DummyClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE13E470 = result;
  return result;
}

unint64_t sub_1DAA59F54()
{
  result = qword_1EE11FAB8;
  if (!qword_1EE11FAB8)
  {
    sub_1DAA59E24(255, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FAB8);
  }

  return result;
}

uint64_t sub_1DAA59FF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1DAA5A088@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = v3;
  a2[1] = v2;
  return sub_1DACB71E4();
}

char *sub_1DAA5A0A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11F4F0, &type metadata for Stock, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DAA5A1E0(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1DAA5A0A8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

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

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAA5A460(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA59C7C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5A4A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAA5A4F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

void sub_1DAA5A540(uint64_t a1, void *a2)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = sub_1DACB92F4();
  v6 = sub_1DACB92F4();
  [a2 setValue:v5 forKey:v6];
}

uint64_t sub_1DAA5A5C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for WatchlistServiceObserverProxy();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v6 = sub_1DACB71F4();
  MEMORY[0x1E12770F0](v6);
  if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_20:
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  v7 = *(v3 + 40);
  swift_endAccess();
  v16 = MEMORY[0x1E69E7CC0];
  if (v7 >> 62)
  {
    v8 = sub_1DACB9E14();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v8)
  {
    v15 = v3;
    v3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v3, v7);
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v3 = v15;
          v12 = v16;
          goto LABEL_18;
        }
      }

      else
      {
        if (v3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v9 = *(v7 + 8 * v3 + 32);
        sub_1DACB71F4();
        v10 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        v11 = *(v16 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++v3;
      if (v10 == v8)
      {
        goto LABEL_16;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v13 = *(v3 + 40);
  *(v3 + 40) = v12;
}

unint64_t sub_1DAA5A834()
{
  result = qword_1EE125530;
  if (!qword_1EE125530)
  {
    sub_1DAB5FC04(255, &qword_1EE125540, MEMORY[0x1E69D6420], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125530);
  }

  return result;
}

void sub_1DAA5A8BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA5A90C()
{
  if (!qword_1EE11FF38)
  {
    sub_1DAA5A8BC(255, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v0 = sub_1DACB8924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FF38);
    }
  }
}

void sub_1DAA5A9C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 152));
  v5 = (v2 + 160);
  v6 = *(v2 + 160);
  v19 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
LABEL_16:
    v7 = sub_1DACB9E14();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v17 = a2;
      v18 = v3;
      v8 = 0;
      v3 = (v6 & 0xC000000000000001);
      a2 = v6 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v3)
        {
          MEMORY[0x1E12777A0](v8, v6);
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v3 = v18;
            v12 = v19;
            a2 = v17;
            goto LABEL_18;
          }
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * v8 + 32);
          sub_1DACB71F4();
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_13;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1DACB9D34();
          v11 = *(v19 + 16);
          sub_1DACB9D74();
          sub_1DACB9D84();
          sub_1DACB9D44();
        }

        else
        {
        }

        ++v8;
        if (v10 == v7)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v13 = *v5;

  *v5 = v12;
  type metadata accessor for WatchlistManagerObserverProxy();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 24) = a2;
  v15 = swift_unknownObjectWeakAssign();
  MEMORY[0x1E12770F0](v15);
  if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v16 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();

  os_unfair_lock_unlock(v3 + 38);
}

uint64_t sub_1DAA5AC38(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E695BD70];
  sub_1DAA59C7C(0, &qword_1EE11D298, MEMORY[0x1E695BD70]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v12 - v9;
  v12[1] = (*(a2 + 16))(a1, a2);
  sub_1DAA59D18();
  sub_1DAA59D78(&qword_1EE11FD08, sub_1DAA59D18);
  sub_1DACB8F74();

  sub_1DAA5A460(&qword_1EE11D2A0, &qword_1EE11D298, v4);
  sub_1DAA5AE10();
  sub_1DACB8F84();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DAA5AE10()
{
  result = qword_1EE120138;
  if (!qword_1EE120138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120138);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for CurrencyConversion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAA5AF38(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v6 = *a2;
  }

  return sub_1DACB71F4();
}

void sub_1DAA5AF98()
{
  v0 = type metadata accessor for AppGroup();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC10StocksCore8AppGroup____lazy_storage___containerURL;
  v5 = sub_1DACB7AB4();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + 16) = 0xD000000000000016;
  *(v3 + 24) = 0x80000001DACECEE0;
  v6 = (v3 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain);
  *v6 = 0xD000000000000016;
  v6[1] = 0x80000001DACECEE0;
  v7 = *MEMORY[0x1E69D6E98];
  v8 = sub_1DACB8034();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1DACB92F4();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    *(v3 + OBJC_IVAR____TtC10StocksCore8AppGroup_userDefaults) = v11;
    qword_1EE125758 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DAA5B0EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain;
  v4 = sub_1DACB8034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DAA5B188()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB7FA4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v11 + 104))(v14, *MEMORY[0x1E69D6D00], v10);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8084();
  qword_1EE120060 = result;
  return result;
}

void sub_1DAA5B418()
{
  if (!qword_1EE124128)
  {
    sub_1DACB7FA4();
    sub_1DAA5B47C();
    v0 = sub_1DACB80A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124128);
    }
  }
}

unint64_t sub_1DAA5B47C()
{
  result = qword_1EE124150;
  if (!qword_1EE124150)
  {
    sub_1DACB7FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124150);
  }

  return result;
}

uint64_t sub_1DAA5B4F8()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA4A8CC(0, &qword_1EE120038, sub_1DAA5B83C);
  v16[15] = 0;
  v10 = *MEMORY[0x1E69B5010];
  *v9 = sub_1DACB9324();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1DAA4A9E8(0, &qword_1EE11F4D0, &qword_1EE120048);
  sub_1DAA4AA40(0, &qword_1EE120048);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v16[14] = 0;
  sub_1DACB8044();
  v16[13] = 1;
  sub_1DACB8044();
  v16[12] = 2;
  sub_1DACB8044();
  sub_1DAA5B8EC();
  result = sub_1DACB8064();
  qword_1EE1200C0 = result;
  return result;
}

unint64_t sub_1DAA5B83C()
{
  result = qword_1EE123670;
  if (!qword_1EE123670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123670);
  }

  return result;
}

unint64_t sub_1DAA5B898()
{
  result = qword_1EE123668;
  if (!qword_1EE123668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123668);
  }

  return result;
}

unint64_t sub_1DAA5B8EC()
{
  result = qword_1EE123678[0];
  if (!qword_1EE123678[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE123678);
  }

  return result;
}

uint64_t sub_1DAA5B940(uint64_t a1)
{
  v2 = sub_1DAA5B994();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAA5B994()
{
  result = qword_1EE123660;
  if (!qword_1EE123660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123660);
  }

  return result;
}

void sub_1DAA5B9E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6E6F696765526DLL;
  v4 = 0x656C707061;
  if (v2 != 1)
  {
    v4 = 0x6F6F686179;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6F72467265666E69;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for CurrencyConversion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1DAA5BB10@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StubIdentificationService();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DAA5BD18();
  a1[3] = v2;
  a1[4] = &off_1F5690888;
  *a1 = result;
  return result;
}

void sub_1DAA5BB68()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  }
}

uint64_t type metadata accessor for StubIdentificationService()
{
  result = qword_1ECBE96F8;
  if (!qword_1ECBE96F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAA5BC0C()
{
  sub_1DAA5BCB8(319, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1DAA5BCB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DACB7D04();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAA5BD18()
{
  v1 = sub_1DACB7D04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedUserID);
  sub_1DACB6D04();
  *v6 = 0;
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v8 = v7;
  v9 = *(v7 + 28);
  sub_1DAA5BCB8(0, &qword_1ECBE9710, MEMORY[0x1E69E8318]);
  v11 = *(*(v10 - 8) + 64);
  bzero(&v6[v9], v11);
  v12 = *(v2 + 32);
  v12(&v6[v9], v5, v1);
  v13 = (v0 + OBJC_IVAR____TtC10StocksCore25StubIdentificationService_lockedAdsUserID);
  sub_1DACB6D04();
  *v13 = 0;
  v14 = *(v8 + 28);
  bzero(&v13[v14], v11);
  v12(&v13[v14], v5, v1);
  return v0;
}

uint64_t sub_1DAA5BEB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA4F6B0(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088);
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for UserInfo();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E7CC0];
    *(v7 + 16) = v5;
    *(v7 + 24) = v8;
    sub_1DACB71F4();
    sub_1DACB71F4();
    sub_1DACB8904();

    a2[3] = v6;
    a2[4] = &off_1F5685960;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA5BFBC(void *a1, uint64_t a2)
{
  v4 = sub_1DACB81D4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1DACB8234();
  v8 = v15[0];
  if (LOBYTE(v15[0]) == 2)
  {
    __break(1u);
  }

  else
  {
    sub_1DACB81C4();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = v8 & 1;
    sub_1DAA4208C(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088, MEMORY[0x1E69D6A80]);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1DACB71F4();
    sub_1DACB8914();
    sub_1DAA4D678(a1, v15);
    v13 = swift_allocObject();
    *(v13 + 16) = v8 & 1;
    sub_1DAA4D460(v15, v13 + 24);
    v14 = sub_1DACB8904();

    return v14;
  }

  return result;
}

uint64_t sub_1DAA5C19C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1DAA5C1D4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t type metadata accessor for UserLaunchHistory()
{
  result = qword_1EE11E998;
  if (!qword_1EE11E998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA5C288()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAA5C338(uint64_t *a1)
{
  v2 = v1;
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  if (qword_1EE123E10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = qword_1EE123E18;
  *(v2 + 56) = qword_1EE123E18;
  sub_1DAA4D678(a1, v2 + 16);
  v17 = v16;
  v18 = sub_1DACB92F4();
  v19 = [v17 objectForKey_];

  if (v19)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
  }

  v32[0] = v30;
  v32[1] = v31;
  if (!*(&v31 + 1))
  {
    sub_1DAADFA60(v32);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_10;
  }

  v20 = swift_dynamicCast();
  (*(v9 + 56))(v7, v20 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_10:
    sub_1DAA776C4(v7);
    sub_1DAA41DCC();
    v28 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    sub_1DACB7CB4();
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v9 + 32))(v2 + OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate, v13, v8);
    v27 = 1;
    goto LABEL_11;
  }

  v21 = *(v9 + 32);
  v21(v15, v7, v8);
  sub_1DAA499D4(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DACC1D20;
  sub_1DAA5C878(&qword_1EE123A30, MEMORY[0x1E6969530]);
  v23 = sub_1DACBA114();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1DAA443C8();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1DAA41DCC();
  v26 = sub_1DACB9AD4();
  sub_1DACB9914();
  sub_1DACB8C64();

  __swift_destroy_boxed_opaque_existential_1(a1);
  v21((v2 + OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate), v15, v8);
  v27 = 0;
LABEL_11:
  *(v2 + OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_isFirstLaunch) = v27;
  return v2;
}

void sub_1DAA5C7FC()
{
  v0 = objc_opt_self();
  v1 = sub_1DACB92F4();
  v2 = [v0 sc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_1EE123E18 = v2;
}

uint64_t sub_1DAA5C878(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA5C8C0(uint64_t a1)
{
  result = sub_1DAA5C878(&qword_1EE11E9B0, type metadata accessor for UserLaunchHistory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DAA5C950(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*v3 + *a3);
  os_unfair_lock_lock(v4);
  sub_1DAA5BCB8(0, &qword_1ECBE9708, MEMORY[0x1E69E8300]);
  v6 = v4 + *(v5 + 28);
  v7 = sub_1DACB7CE4();
  os_unfair_lock_unlock(v4);
  return v7;
}

uint64_t sub_1DAA5C9D0(void *a1, void *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE1258E8);
  result = sub_1DACB8254();
  if (v7)
  {
    v6 = *(v8 + 16);
    sub_1DACB8784();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA5CA98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125430, &protocolRef_FCPrivateDataContext);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125420, 0x1E69B54D8);
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE1252E8, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_1DACB8244();
  if (result)
  {
    v10 = result;
    type metadata accessor for NewsUserProfileProvider();
    v11 = swift_allocObject();
    v11[2] = v6;
    v11[3] = v8;
    v11[4] = v10;
    result = sub_1DAA5CC28(&qword_1EE1211E0, 255, type metadata accessor for NewsUserProfileProvider);
    *a2 = v11;
    a2[1] = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA5CC28(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAA5CC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA5CCB8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAA5CD00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA5CD48(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAA5CD90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5CDD4(uint64_t a1)
{
  *(a1 + 8) = sub_1DAA5CD90(&qword_1EE1211E8, type metadata accessor for NewsUserProfileProvider);
  result = sub_1DAA5CD90(&qword_1EE1211F0, type metadata accessor for NewsUserProfileProvider);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DAA5CE78@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

void sub_1DAA5CEEC()
{
  if (!qword_1EE11D4D0)
  {
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D4D0);
    }
  }
}

uint64_t sub_1DAA5CF50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
  if (sub_1DACB8224())
  {
    type metadata accessor for EarningsCalendarEventManager();
    swift_allocObject();
    v4 = sub_1DAA5D0A8();

    result = sub_1DAA4F53C(&qword_1EE11DC48, type metadata accessor for EarningsCalendarEventManager);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA5D0A8()
{
  v1 = v0;
  v2 = sub_1DACB81D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1DACB8174();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  sub_1DACB8164();
  v7 = sub_1DACB8194();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *(v0 + 32) = sub_1DACB8184();
  *(v0 + 40) = 1;
  v10 = MEMORY[0x1E69D6420];
  sub_1DAA5D42C(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v11 = *(v3 + 72);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  sub_1DAA5D564(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420]);
  sub_1DAA5D42C(0, &qword_1EE125540, v10, MEMORY[0x1E69E62F8]);
  sub_1DAA4F64C(&qword_1EE125530, &qword_1EE125540, v10);
  sub_1DACB9BB4();
  sub_1DAA5D42C(0, &qword_1EE11D488, sub_1DAA5D6F4, MEMORY[0x1E69D6A80]);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DACB71F4();
  *(v1 + 16) = sub_1DACB8914();
  sub_1DACB82E4();
  swift_allocObject();
  swift_weakInit();
  sub_1DACB71F4();
  sub_1DACB82D4();

  return v1;
}

uint64_t sub_1DAA5D3F4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA5D42C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA5D490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA5D4D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA5D520(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB7CC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5D564(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAA5D5AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAA5D5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for EarningsCalendarEventManager.StoreDescriptor;
    v8[1] = type metadata accessor for EarningsCalendarEventModel();
    v8[2] = sub_1DAA5D7DC();
    v8[3] = sub_1DAA5D564(&qword_1EE11DD18, 255, type metadata accessor for EarningsCalendarEventModel);
    v8[4] = sub_1DAA5D564(&qword_1EE11DD20, 255, type metadata accessor for EarningsCalendarEventModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for EarningsCalendarEventModel()
{
  result = qword_1EE11DD08;
  if (!qword_1EE11DD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA5D760()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DAA5D7DC()
{
  result = qword_1EE11DC60;
  if (!qword_1EE11DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11DC60);
  }

  return result;
}

uint64_t sub_1DAA5D830(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1DAA5D564(&qword_1EE11DC50, a2, type metadata accessor for EarningsCalendarEventManager);
  result = sub_1DAA5D564(&qword_1EE11DC58, v3, type metadata accessor for EarningsCalendarEventManager);
  *(a1 + 16) = result;
  return result;
}

void sub_1DAA5D8B4()
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 16);
    sub_1DACB88F4();
    sub_1DACB8D84();

    sub_1DAA5DB88(0);
    v7 = v6;
    v8 = *(v6 - 8);
    if ((*(v8 + 48))(v3, 1, v6) == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DACB8D64();
      (*(v8 + 8))(v3, v7);
      v9 = sub_1DACB89D4();
      sub_1DAA61630(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DACB8A54();

      sub_1DACB71F4();
      v10 = sub_1DACB89D4();
      sub_1DAA61B4C();
      sub_1DACB8A54();

      sub_1DACB71F4();
      v11 = sub_1DACB89D4();
      sub_1DACB8A64();

      v12 = sub_1DACB89D4();
      sub_1DACB8AA4();
    }
  }
}

uint64_t sub_1DAA5DBB0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA5D6F4(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAA5DC40@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1DACB8174();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125FE0);
  result = sub_1DACB8254();
  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E58);
  result = sub_1DACB8254();
  if (!v19)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v17)
  {
    v10 = type metadata accessor for StockPriceDataManager();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E7CC0];
    v11[17] = MEMORY[0x1E69E7CC0];
    v11[18] = v12;
    sub_1DACB8164();
    v13 = sub_1DACB8194();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11[19] = sub_1DACB8184();
    sub_1DAA4D460(&v20, (v11 + 2));
    sub_1DAA4D460(&v18, (v11 + 7));
    result = sub_1DAA4D460(&v16, (v11 + 12));
    a2[3] = v10;
    a2[4] = &off_1F568B128;
    *a2 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA5DE38@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v1 = sub_1DACB8E64();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8EC4();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DACB8E84();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB8E74();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB8DF4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1DACB8EA4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  (*(v21 + 104))(&v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69D6288]);
  v34 = MEMORY[0x1E69E7CC0];
  sub_1DAA5E2DC(&qword_1EE125560);
  sub_1DAA5EF58(0, &qword_1EE125500, MEMORY[0x1E69D61D0], MEMORY[0x1E69E62F8]);
  sub_1DAA5F13C();
  sub_1DACB9BB4();
  (*(v12 + 104))(v15, *MEMORY[0x1E69D6268], v11);
  (*(v7 + 104))(v10, *MEMORY[0x1E69D6270], v26);
  (*(v28 + 104))(v27, *MEMORY[0x1E69D62A0], v29);
  (*(v31 + 104))(v30, *MEMORY[0x1E69D6258], v32);
  v22 = sub_1DACB8ED4();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  LOBYTE(v34) = 1;
  result = sub_1DACB8EB4();
  *v33 = result;
  return result;
}

uint64_t sub_1DAA5E2DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB8DF4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA5E320@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125FD8);
  sub_1DACB8254();
  if (v11)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v6 = sub_1DACB8224();
    if (v6)
    {
      v7 = v6;
      v8 = type metadata accessor for QuoteManager();
      swift_allocObject();
      result = sub_1DAA5E780(v10, v7);
      a2[3] = v8;
      a2[4] = &off_1F56819B0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAA5E4E0()
{
  v13 = sub_1DACB9944();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB9004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1DAA580F4(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57DD0(&qword_1EE123E70, &qword_1EE123E78, v8);
  sub_1DACB9BB4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1DACB9974();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

uint64_t sub_1DAA5E780(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = v2;
  v30 = a1;
  v34 = sub_1DACB81D4();
  v31 = *(v34 - 8);
  v32 = v31;
  v4 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB86E4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1DACB8174();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1DAA5EC5C(0, &unk_1EE11FEF0, MEMORY[0x1E69D6AA8]);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8964();
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED30(&qword_1EE120030, 255, MEMORY[0x1E69D6388]);
  sub_1DAA5EE24(0);
  sub_1DAA5ED30(&qword_1EE11FA80, 255, sub_1DAA5EE24);
  sub_1DACB9BB4();
  v13 = sub_1DACB8194();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v2 + 64) = sub_1DACB8184();
  v16 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED30(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0]);
  sub_1DAA5EE58(0);
  sub_1DAA5ED30(&qword_1EE125508, 255, sub_1DAA5EE58);
  sub_1DACB9BB4();
  sub_1DAA5EE8C();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v2 + 72) = sub_1DACB8354();
  *(v2 + 80) = 0;
  *(v2 + 88) = v16;
  v20 = v30;
  sub_1DAA4D678(v30, v2 + 16);
  sub_1DAA5EDC0(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v21 = *(v31 + 72);
  v22 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v36 = v23;
  sub_1DAA5ED30(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420]);
  sub_1DAA5EFBC(0);
  sub_1DAA5ED30(&qword_1EE125530, 255, sub_1DAA5EFBC);
  sub_1DACB9BB4();
  sub_1DAA5EDC0(0, &qword_1EE11FF60, sub_1DAA5EFF0, MEMORY[0x1E69D6A80]);
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v20);
  *(v3 + 96) = v27;
  return v3;
}

void sub_1DAA5EC5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Quote();
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA5ECCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB91A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA5ED30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1DAA5ED78(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1DAA5EDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5EE8C()
{
  if (!qword_1EE11FFF8)
  {
    sub_1DAA46720();
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    sub_1DAA5ED30(&qword_1EE11F990, 255, sub_1DAA46720);
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FFF8);
    }
  }
}

void sub_1DAA5EF58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5EFF0()
{
  if (!qword_1EE11FD48)
  {
    type metadata accessor for Quote();
    sub_1DAA5F0E8();
    sub_1DAA5ED30(&qword_1EE1202E0, 255, type metadata accessor for Quote);
    sub_1DAA5ED30(&qword_1EE1202E8, 255, type metadata accessor for Quote);
    v0 = sub_1DACB8D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FD48);
    }
  }
}

unint64_t sub_1DAA5F0E8()
{
  result = qword_1EE123658;
  if (!qword_1EE123658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123658);
  }

  return result;
}

unint64_t sub_1DAA5F13C()
{
  result = qword_1EE1254F8;
  if (!qword_1EE1254F8)
  {
    sub_1DAA5EF58(255, &qword_1EE125500, MEMORY[0x1E69D61D0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1254F8);
  }

  return result;
}

uint64_t sub_1DAA5F1C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E50);
  sub_1DACB8254();
  if (v11)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v6 = sub_1DACB8224();
    if (v6)
    {
      v7 = v6;
      v8 = type metadata accessor for SparklineManager();
      swift_allocObject();
      result = sub_1DAA5F8EC(v10, v7);
      a2[3] = v8;
      a2[4] = &off_1F568E0A0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAA5F384()
{
  v15 = sub_1DACB9944();
  v1 = *(v15 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB9924();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DACB9004();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  type metadata accessor for StubChartService();
  swift_allocObject();
  *(v0 + 16) = sub_1DAA5F64C();
  v13 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v9 = MEMORY[0x1E69E8030];
  sub_1DAA57FC8(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57D08(&qword_1EE123E70, &qword_1EE123E78, v9);
  sub_1DACB9BB4();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v15);
  v10 = sub_1DACB9974();
  v11 = v14;
  *(v14 + 24) = v10;
  return v11;
}

uint64_t sub_1DAA5F64C()
{
  v13 = sub_1DACB9944();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB9004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA5738C(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1DAA58220(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57EFC(&qword_1EE123E70, &qword_1EE123E78, v8);
  sub_1DACB9BB4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1DACB9974();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

uint64_t sub_1DAA5F8EC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = v2;
  v23 = a1;
  v4 = sub_1DACB81D4();
  v24 = *(v4 - 8);
  v5 = v24;
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB86E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAA5CCB8(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0]);
  sub_1DAA5EE58(0);
  sub_1DAA5CCB8(&qword_1EE125508, 255, sub_1DAA5EE58);
  sub_1DACB9BB4();
  sub_1DAA5FDC0();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8354();
  v13 = v23;
  sub_1DAA4D678(v23, v2 + 16);
  sub_1DAA5FEF0(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v14 = *(v5 + 72);
  v15 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v27 = v16;
  sub_1DAA5CCB8(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420]);
  sub_1DAA5EFBC(0);
  sub_1DAA5CCB8(&qword_1EE125530, 255, sub_1DAA5EFBC);
  sub_1DACB9BB4();
  sub_1DAA5FEF0(0, &qword_1EE11FF58, sub_1DAA600B8, MEMORY[0x1E69D6A80]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v13);
  *(v3 + 64) = v20;
  return v3;
}

void sub_1DAA5FC7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB91A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA5FCE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Chart(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA5FD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for Chart(255);
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA5FDC0()
{
  if (!qword_1EE120000)
  {
    sub_1DAA46720();
    sub_1DAA5FCE0(255, &qword_1EE11FCA0, MEMORY[0x1E69E5E28]);
    sub_1DAA5CCB8(&qword_1EE11F990, 255, sub_1DAA46720);
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE120000);
    }
  }
}

void sub_1DAA5FE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5FEF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5FF54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA5FFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SparklineManager.StoreDescriptor;
    v8[1] = type metadata accessor for Chart(255);
    v8[2] = sub_1DAA600D8();
    v8[3] = sub_1DAA5CCB8(&qword_1EE1203B0, 255, type metadata accessor for Chart);
    v8[4] = sub_1DAA5CCB8(&qword_1EE1203B8, 255, type metadata accessor for Chart);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA600D8()
{
  result = qword_1EE122900;
  if (!qword_1EE122900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122900);
  }

  return result;
}

uint64_t sub_1DAA60188(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 152);
  sub_1DACB8144();
  swift_beginAccess();
  v5 = *(v2 + 144);
  v17 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1DACB9E14();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v6)
  {
    v16 = a2;
    a2 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](a2, v5);
        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v10 = v17;
          a2 = v16;
          goto LABEL_17;
        }
      }

      else
      {
        if (a2 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v7 = *(v5 + 8 * a2 + 32);
        sub_1DACB71F4();
        v8 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1DACB9D34();
        v9 = *(v17 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        sub_1DACB9D44();
      }

      else
      {
      }

      ++a2;
      if (v8 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_17:

  v11 = *(v2 + 144);
  *(v2 + 144) = v10;

  type metadata accessor for StockPriceDataManagerObserverProxy();
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v13 = swift_beginAccess();
  MEMORY[0x1E12770F0](v13);
  if (*((*(v2 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v15 = *((*(v2 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DACB9694();
  }

  sub_1DACB96F4();
  swift_endAccess();
  return sub_1DACB8154();
}

uint64_t sub_1DAA60450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (v6[3])
  {
    v5 = type metadata accessor for LanguageSettings();
    swift_allocObject();
    result = sub_1DAA60738(v6);
    a2[3] = v5;
    a2[4] = &off_1F5684240;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA60524()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200A0 = result;
  return result;
}

uint64_t *sub_1DAA60738(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  *(v1 + 16) = 0;
  v1[8] = MEMORY[0x1E69E7CC0];
  sub_1DAA4D678(a1, (v1 + 3));
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_1DAA609A0(&qword_1EE122B38, v5, type metadata accessor for LanguageSettings);
  sub_1DACB7F94();

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  *(v1 + 16) = (*(v7 + 24))(v6, v7) & v10 & 1;
  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v2 selector:sel_localeDidChange name:*MEMORY[0x1E695D8F0] object:0];

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_1DAA60918()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA60950(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DACB80A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DAA609A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

BOOL sub_1DAA60A7C()
{
  v0 = sub_1DACB7E24();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60E20(0, &qword_1EE123A20, MEMORY[0x1E6969610]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_1EE1242C0;
  v14 = qword_1EE1242C8;
  sub_1DACB71E4();
  sub_1DACB7DF4();
  sub_1DACB7E34();
  (*(v6 + 8))(v9, v5);
  sub_1DACB7E04();
  (*(v1 + 8))(v4, v0);
  v16 = sub_1DACB7D44();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_1DAA6CA10(v13, &qword_1EE123A20, MEMORY[0x1E6969610]);
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v18 = sub_1DACB7D34();
    v19 = v20;
    (*(v17 + 8))(v13, v16);
  }

  if ((v15 != 0x353534333431 || v14 != 0xE600000000000000) && (sub_1DACBA174() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (!v19)
  {
LABEL_14:

    return 0;
  }

  if (v18 == 29286 && v19 == 0xE200000000000000)
  {

    return 1;
  }

  v22 = sub_1DACBA174();

  return (v22 & 1) != 0;
}

void sub_1DAA60E20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA60E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAA60EEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 408);
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v4 = sub_1DAA619A0();
  sub_1DAA61D24(v3, v4, v5, a1);
}

id sub_1DAA6105C(void *a1, SEL *a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA420F4(0, &unk_1EE125490, 0x1E69B5210);
  result = sub_1DACB8244();
  if (result)
  {
    v5 = result;
    v6 = [result *a2];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DAA61100()
{
  if (!qword_1EE11FC58)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC58);
    }
  }
}

double sub_1DAA6119C(char a1)
{
  v2 = v1;
  v4 = sub_1DACB7E44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = [objc_opt_self() currentLocale];
    sub_1DACB7D94();

    v11 = sub_1DACB7D54();
    v13 = v12;
    (*(v5 + 8))(v9, v4);
    if (v13)
    {
      v14 = *(v2 + 48);
      v15 = *(v2 + 56);
      __swift_project_boxed_opaque_existential_1((v2 + 24), v14);
      if ((*(v15 + 24))(v14, v15))
      {
        v16 = *(v2 + 16);
        sub_1DAA571EC(0, &qword_1EE11F4A8, sub_1DAB33850, MEMORY[0x1E69E6F90]);
        v17 = swift_allocObject();
        if (v16 == 1)
        {
          *&result = 2;
          *(v17 + 16) = xmmword_1DACC1D40;
          *(v17 + 32) = v11;
          *(v17 + 40) = v13;
          *(v17 + 48) = 0;
          *(v17 + 56) = 0;
        }

        else
        {
          *&result = 1;
          *(v17 + 16) = xmmword_1DACC1D20;
          *(v17 + 32) = v11;
          *(v17 + 40) = v13;
        }
      }

      else
      {
      }
    }

    else
    {
      sub_1DAA571EC(0, &qword_1EE11F4A8, sub_1DAB33850, MEMORY[0x1E69E6F90]);
      v18 = swift_allocObject();
      *&result = 1;
      *(v18 + 16) = xmmword_1DACC1D20;
      *(v18 + 32) = v11;
      *(v18 + 40) = 0;
    }
  }

  return result;
}

void sub_1DAA613E8()
{
  if (!qword_1EE123EA0)
  {
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123EA0);
    }
  }
}

void sub_1DAA6144C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA6149C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA614EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA61540(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61590(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA615E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61630(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61680(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA616D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61724(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61774()
{
  if (!qword_1EE11FE28)
  {
    sub_1DAA61950(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE28);
    }
  }
}

uint64_t sub_1DAA617F0(uint64_t *a1)
{
  v5 = *a1;
  sub_1DAA61774();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA61850(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA61900(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA618B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAA61900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DAA61950(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1DAA619A0()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  v2 = 0x49544355444F5250;
  v3 = 0x314F4D4544;
  if (v7 != 6)
  {
    v3 = 0x324F4D4544;
  }

  v4 = 0x4C45564544;
  if (v7 != 4)
  {
    v4 = 0x584F42444E4153;
  }

  if (v7 <= 5u)
  {
    v3 = v4;
  }

  v5 = 16721;
  if (v7 != 2)
  {
    v5 = 1414743380;
  }

  if (v7)
  {
    v2 = 0x474E4947415453;
  }

  if (v7 > 1u)
  {
    v2 = v5;
  }

  if (v7 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1DAA61B4C()
{
  if (!qword_1EE11D1B8)
  {
    type metadata accessor for EarningsCalendarEventModel();
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D1B8);
    }
  }
}

uint64_t sub_1DAA61BB4(uint64_t *a1, uint64_t a2)
{
  sub_1DAA5D42C(0, &qword_1EE11D340, sub_1DAA5DB88, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = *a1;
  v9 = *(a2 + 16);
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAA5DB88(0);
  v11 = v10;
  v12 = *(v10 - 8);
  result = (*(v12 + 48))(v7, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v14 = sub_1DACB8D34();
    (*(v12 + 8))(v7, v11);
    return v14;
  }

  return result;
}

unint64_t sub_1DAA61D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v8 = (a1 + 32);
    while (1)
    {
      memcpy(__dst, v8, 0x110uLL);
      v9 = __dst[0] == a2 && __dst[1] == a3;
      if (v9 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      v8 += 272;
      if (!--v5)
      {
        goto LABEL_9;
      }
    }

    memcpy(a4, __dst, 0x110uLL);
    return sub_1DAB244EC(__dst, v52);
  }

  else
  {
LABEL_9:
    type metadata accessor for EndpointConfiguration.Defaults();
    swift_initStaticObject();
    v10 = sub_1DAA619A0();
    v50 = v11;
    v51 = v10;
    v12 = sub_1DAA61EDC();
    v48 = v13;
    v49 = v12;
    v14 = sub_1DAA625DC();
    v46 = v15;
    v47 = v14;
    v16 = sub_1DAA62758();
    v44 = v17;
    v45 = v16;
    v18 = sub_1DAA62758();
    v42 = v19;
    v43 = v18;
    v20 = sub_1DAA62914();
    v40 = v21;
    v41 = v20;
    v22 = sub_1DAA62A88();
    v38 = v23;
    v39 = v22;
    v24 = sub_1DAA62C98();
    v26 = v25;
    v27 = sub_1DAA62E08();
    v29 = v28;
    v30 = sub_1DAA63458();
    v32 = v31;
    v33 = sub_1DAA635C8();
    v35 = v34;
    result = sub_1DAA61EDC();
    *a4 = v51;
    a4[1] = v50;
    a4[2] = v49;
    a4[3] = v48;
    a4[4] = v47;
    a4[5] = v46;
    a4[6] = v45;
    a4[7] = v44;
    a4[8] = v43;
    a4[9] = v42;
    a4[10] = v41;
    a4[11] = v40;
    a4[12] = v39;
    a4[13] = v38;
    a4[14] = v24;
    a4[15] = v26;
    a4[16] = v27;
    a4[17] = v29;
    a4[18] = v30;
    a4[19] = v32;
    a4[20] = v33;
    a4[21] = v35;
    a4[22] = result;
    a4[23] = v37;
    *(a4 + 15) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 13) = 0u;
    *(a4 + 14) = 0u;
    *(a4 + 12) = 0u;
  }

  return result;
}

unint64_t sub_1DAA61EDC()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v3 <= 2u)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 0xD00000000000004ELL;
      }

      else
      {
        return 0xD000000000000049;
      }
    }

    return 0xD000000000000041;
  }

  if (v3 - 5 < 3)
  {
    return 0xD000000000000041;
  }

  if (v3 == 3)
  {
    return 0xD00000000000004BLL;
  }

  else
  {
    return 0xD00000000000004CLL;
  }
}

uint64_t sub_1DAA62058(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for EarningsCalendarEventModel();
  v78 = *(v4 - 8);
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA628E4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v80 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v79 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v71 - v16);
  sub_1DAA5D42C(0, &qword_1EE11D0F0, sub_1DAA628E4, MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = (&v71 - v20);
  v22 = *a1;
  v23 = *(a2 + 32);
  sub_1DACB71F4();
  sub_1DACB8144();

  v24 = -1 << *(v22 + 32);
  v25 = *(v22 + 64);
  v26 = ~v24;
  v27 = -v24;
  v81 = v22;
  v82 = v22 + 64;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v83 = v26;
  v84 = 0;
  v85 = v28 & v25;
  v86 = 0;
  sub_1DACB71E4();
  sub_1DAA62F1C(v21);
  v76 = *(v10 + 48);
  v77 = v10 + 48;
  if (v76(v21, 1, v9) == 1)
  {
LABEL_5:
    sub_1DAA54B38();
    v29 = *(a2 + 32);
    sub_1DACB71F4();
    sub_1DACB8154();
  }

  sub_1DAA62C68(0);
  v74 = v9;
  v75 = v31;
  v72 = v21;
  v73 = v17;
  while (1)
  {
    v35 = *v21;
    v36 = *(v9 + 48);
    v37 = v21 + v36;
    v38 = *(v21 + v36);
    v39 = *(v21 + v36 + 8);
    v40 = v75;
    v41 = *(v75 + 48);
    v42 = (v17 + v36);
    *v17 = v35;
    *v42 = v38;
    v42[1] = v39;
    sub_1DAA7C5C4(&v37[v41], v42 + v41, type metadata accessor for EarningsCalendarEventModel);
    v43 = v79;
    sub_1DABB2464(v17, v79, sub_1DAA628E4);
    v44 = v43 + *(v9 + 48);
    v45 = *(v44 + 8);

    v46 = (v44 + *(v40 + 48));
    v48 = *v46;
    v47 = v46[1];
    sub_1DACB71E4();
    sub_1DABB24CC(v46, type metadata accessor for EarningsCalendarEventModel);
    v49 = v17;
    v50 = v80;
    sub_1DABB2464(v49, v80, sub_1DAA628E4);
    v51 = v50 + *(v9 + 48);
    v52 = *(v51 + 8);

    v53 = *(v40 + 48);
    swift_beginAccess();
    v54 = v7;
    sub_1DAA7C5C4(v51 + v53, v7, type metadata accessor for EarningsCalendarEventModel);
    v55 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = *(a2 + 24);
    v57 = v87;
    *(a2 + 24) = 0x8000000000000000;
    v59 = sub_1DAA4BF3C(v48, v47);
    v60 = v57[2];
    v61 = (v58 & 1) == 0;
    v62 = v60 + v61;
    if (__OFADD__(v60, v61))
    {
      break;
    }

    v63 = v58;
    if (v57[3] >= v62)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v58)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1DAB664AC();
        if (v63)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_1DAB619FC(v62, isUniquelyReferenced_nonNull_native);
      v64 = sub_1DAA4BF3C(v48, v47);
      if ((v63 & 1) != (v65 & 1))
      {
        goto LABEL_22;
      }

      v59 = v64;
      if (v63)
      {
LABEL_7:

        v32 = v87;
        v33 = v87[7] + *(v78 + 72) * v59;
        v7 = v54;
        sub_1DABB252C(v54, v33);
        goto LABEL_8;
      }
    }

    v32 = v87;
    v87[(v59 >> 6) + 8] |= 1 << v59;
    v66 = (v32[6] + 16 * v59);
    *v66 = v48;
    v66[1] = v47;
    v67 = v32[7] + *(v78 + 72) * v59;
    v7 = v54;
    sub_1DAA7C5C4(v54, v67, type metadata accessor for EarningsCalendarEventModel);
    v68 = v32[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_21;
    }

    v32[2] = v70;
LABEL_8:
    v34 = *(a2 + 24);
    *(a2 + 24) = v32;

    swift_endAccess();
    v17 = v73;
    sub_1DABB24CC(v73, sub_1DAA628E4);
    v21 = v72;
    sub_1DAA62F1C(v72);
    v9 = v74;
    if (v76(v21, 1, v74) == 1)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

unint64_t sub_1DAA625DC()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v3 <= 2u)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 0xD000000000000038;
      }

      else
      {
        return 0xD00000000000003CLL;
      }
    }

    return 0xD000000000000030;
  }

  if (v3 - 5 < 3)
  {
    return 0xD000000000000030;
  }

  if (v3 == 3)
  {
    return 0xD000000000000039;
  }

  else
  {
    return 0xD00000000000003FLL;
  }
}

unint64_t sub_1DAA62758()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v6 <= 2u)
  {
    if (v6)
    {
      v2 = 0xD000000000000038;
      v3 = 0xD00000000000003BLL;
      v4 = v6 == 1;
      goto LABEL_9;
    }

    return 0xD00000000000001DLL;
  }

  if (v6 - 5 < 3)
  {
    return 0xD00000000000001DLL;
  }

  v2 = 0xD00000000000002BLL;
  v3 = 0xD00000000000002CLL;
  v4 = v6 == 3;
LABEL_9:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DAA62914()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v3 <= 2u)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 0xD00000000000002BLL;
      }

      else
      {
        return 0xD000000000000026;
      }
    }

    return 0xD000000000000028;
  }

  if (v3 - 5 < 3)
  {
    return 0xD000000000000028;
  }

  if (v3 == 3)
  {
    return 0xD000000000000028;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

unint64_t sub_1DAA62A88()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v3 <= 2u)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return 0xD000000000000032;
      }

      else
      {
        return 0xD00000000000002DLL;
      }
    }

    return 0xD00000000000002FLL;
  }

  if (v3 - 5 < 3)
  {
    return 0xD00000000000002FLL;
  }

  if (v3 == 3)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD000000000000030;
  }
}

void sub_1DAA62BF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1DAA62C98()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v6 <= 2u)
  {
    if (v6)
    {
      v2 = 0xD000000000000108;
      v3 = 0xD0000000000000F9;
      v4 = v6 == 1;
      goto LABEL_9;
    }

    return 0xD0000000000000B7;
  }

  if (v6 - 5 < 3)
  {
    return 0xD0000000000000B7;
  }

  v2 = 0xD0000000000000DBLL;
  v3 = 0xD0000000000000DELL;
  v4 = v6 == 3;
LABEL_9:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DAA62E08()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  return 0xD0000000000001F8;
}

uint64_t sub_1DAA62F1C@<X0>(uint64_t a1@<X8>)
{
  sub_1DAA628E4(0);
  v4 = v3;
  v51 = *(v3 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v46 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for EarningsCalendarEventModel();
  v49 = *(v7 - 8);
  v8 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5D42C(0, &qword_1EE11D1A8, sub_1DAA62C68, MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = (&v44 - v12);
  sub_1DAA62C68(0);
  v15 = v14;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v1;
  v21 = v1[1];
  v24 = v1[2];
  v23 = v1[3];
  v25 = v1[4];
  v52 = a1;
  v53 = v24;
  v45 = v20;
  if (!v25)
  {
    v27 = (v24 + 64) >> 6;
    if (v27 <= v23 + 1)
    {
      v28 = v23 + 1;
    }

    else
    {
      v28 = (v24 + 64) >> 6;
    }

    v29 = v28 - 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v26 >= v27)
      {
        (*(v16 + 56))(v13, 1, 1, v15);
        v36 = 0;
        goto LABEL_12;
      }

      v25 = *(v21 + 8 * v26);
      ++v23;
      if (v25)
      {
        v48 = v4;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v48 = v4;
  v26 = v23;
LABEL_11:
  v47 = (v25 - 1) & v25;
  v30 = __clz(__rbit64(v25)) | (v26 << 6);
  v31 = (*(v22 + 48) + 16 * v30);
  v32 = *v31;
  v33 = v31[1];
  v34 = v50;
  sub_1DABB2464(*(v22 + 56) + *(v49 + 72) * v30, v50, type metadata accessor for EarningsCalendarEventModel);
  v35 = *(v15 + 48);
  *v13 = v32;
  v13[1] = v33;
  sub_1DAA7C5C4(v34, v13 + v35, type metadata accessor for EarningsCalendarEventModel);
  (*(v16 + 56))(v13, 0, 1, v15);
  sub_1DACB71E4();
  v36 = v47;
  v4 = v48;
  v29 = v26;
LABEL_12:
  *v1 = v22;
  v1[1] = v21;
  v1[2] = v53;
  v1[3] = v29;
  v1[4] = v36;
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_1DAA633E8(v13, &qword_1EE11D1A8, sub_1DAA62C68);
    return (*(v51 + 56))(v52, 1, 1, v4);
  }

  v37 = v45;
  sub_1DAA7C5C4(v13, v45, sub_1DAA62C68);
  v38 = *(v4 + 48);
  v39 = v1[5];
  v40 = v46;
  *v46 = v39;
  result = sub_1DAA7C5C4(v37, v40 + v38, sub_1DAA62C68);
  v41 = __OFADD__(v39, 1);
  v42 = v39 + 1;
  v43 = v52;
  if (v41)
  {
    goto LABEL_19;
  }

  v1[5] = v42;
  sub_1DAA7C5C4(v40, v43, sub_1DAA628E4);
  return (*(v51 + 56))(v43, 0, 1, v4);
}

uint64_t sub_1DAA63378(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAB5FC04(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA633E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAA5D42C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1DAA63458()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v6 <= 2u)
  {
    if (v6)
    {
      v2 = 0xD000000000000034;
      v3 = 0xD000000000000038;
      v4 = v6 == 1;
      goto LABEL_9;
    }

    return 0xD00000000000002CLL;
  }

  if (v6 - 5 < 3)
  {
    return 0xD00000000000002CLL;
  }

  v2 = 0xD00000000000003ALL;
  v3 = 0xD00000000000003BLL;
  v4 = v6 == 3;
LABEL_9:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1DAA635C8()
{
  v1 = *v0;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA618B8(&qword_1EE1249B8, type metadata accessor for EndpointConfiguration.Defaults);
  sub_1DACB7F84();
  if (v6 <= 2u)
  {
    if (v6)
    {
      v2 = 0xD000000000000032;
      v3 = 0xD000000000000036;
      v4 = v6 == 1;
      goto LABEL_9;
    }

    return 0xD00000000000002ALL;
  }

  if (v6 - 5 < 3)
  {
    return 0xD00000000000002ALL;
  }

  v2 = 0xD000000000000038;
  v3 = 0xD000000000000039;
  v4 = v6 == 3;
LABEL_9:
  if (v4)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DAA63738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DACB8FB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB9004();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = result;
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = v3;
    aBlock[4] = sub_1DAA4F974;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAA5796C;
    aBlock[3] = &block_descriptor_6;
    v19 = _Block_copy(aBlock);
    v23[1] = a1;
    v20 = v19;
    sub_1DAA4F924(a2);
    v21 = v3;
    sub_1DACB8FD4();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
    v22 = MEMORY[0x1E69E7F60];
    sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v22);
    sub_1DACB9BB4();
    MEMORY[0x1E1277440](0, v17, v11, v20);
    _Block_release(v20);
    (*(v8 + 8))(v11, v7);
    (*(v13 + 8))(v17, v24);
  }

  return result;
}

void sub_1DAA63A44()
{
  if (!qword_1EE125580)
  {
    sub_1DAA420F4(255, &qword_1EE1254C8, off_1E85E2088);
    v0 = sub_1DACB8924();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE125580);
    }
  }
}

uint64_t type metadata accessor for KVSCleanupStartupTask()
{
  result = qword_1EE11E530;
  if (!qword_1EE11E530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA63AF8()
{
  result = sub_1DACB8574();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAA63BA0()
{
  v0 = sub_1DACB8574();
  __swift_allocate_value_buffer(v0, qword_1EE11D4A8);
  __swift_project_value_buffer(v0, qword_1EE11D4A8);
  return sub_1DACB8564();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1DAA63CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10StocksCore21KVSCleanupStartupTask_group;
  v5 = sub_1DACB8574();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAA63D24@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69D6920];
  v3 = sub_1DACB8884();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAA63D9C()
{
  v1 = type metadata accessor for AppConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE11D518 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = v5[11];
  v8 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  (*(v8 + 8))(v7, v8);
  v9 = *(v4 + 177);
  sub_1DAA640AC(v4);
  [v6 enabledForCurrentLevel_];
  LOBYTE(v9) = sub_1DACB8004();

  return v9 & 1;
}

uint64_t sub_1DAA63F00()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7FA4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1DACB8074();
  qword_1EE11D520 = result;
  return result;
}

uint64_t sub_1DAA640AC(uint64_t a1)
{
  v2 = type metadata accessor for AppConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAA64108()
{
  v0 = sub_1DACB79B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB79F4();
  v11[0] = 0xD000000000000018;
  v11[1] = 0x80000001DACF2550;
  (*(v1 + 104))(v4, *MEMORY[0x1E6968F58], v0);
  sub_1DAA642D8();
  sub_1DACB7AA4();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DAA642D8()
{
  result = qword_1EE124030;
  if (!qword_1EE124030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124030);
  }

  return result;
}

uint64_t sub_1DAA6432C(void *a1)
{
  sub_1DAA646CC(0, &qword_1EE11FD80, MEMORY[0x1E69E9420]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  sub_1DAA646CC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v28 = sub_1DACB90B4();
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DACB9094();
  sub_1DACB90A4();
  v15 = sub_1DACB8224();

  if (v15)
  {
    v17 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v18 = sub_1DACB7AB4();
    sub_1DACB8234();
    v19 = *(v18 - 8);
    result = (*(v19 + 48))(v9, 1, v18);
    if (result != 1)
    {
      (*(v19 + 32))(v13, v9, v18);
      (*(v10 + 104))(v13, *MEMORY[0x1E69B4F38], v28);
      sub_1DACB8C84();
      v20 = sub_1DACB8C94();
      v21 = *(*(v20 - 8) + 56);
      v21(v5, 0, 1, v20);
      sub_1DAA64B5C();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_1DACB9044();
      v21(v5, 1, 1, v20);
      sub_1DAA64C90();
      v26 = objc_allocWithZone(v25);
      return sub_1DACB90C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAA646CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA64720@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_1DACB79B4();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = sub_1DACB7AB4();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28[-v12];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v32 = &v28[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v28[-v16];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v10);
  v39 = 0x7972617262694CLL;
  v40 = 0xE700000000000000;
  v17 = *MEMORY[0x1E6968F58];
  v18 = v2[13];
  v36 = v2 + 13;
  v29 = v17;
  v18(v5, v17, v1);
  v38 = v18;
  v31 = sub_1DAA642D8();
  sub_1DACB7AA4();
  v30 = v2[1];
  v30(v5, v1);
  v37 = *(v6 + 8);
  v19 = v34;
  v37(v10, v34);
  v39 = 0x746E656D75636F44;
  v40 = 0xE900000000000073;
  v18(v5, v17, v1);
  v20 = v32;
  sub_1DACB7AA4();
  v21 = v1;
  v22 = v1;
  v23 = v30;
  v30(v5, v21);
  v37(v13, v19);
  v39 = 0x4465746176697250;
  v40 = 0xEB00000000617461;
  v38(v5, v29, v22);
  v24 = v33;
  sub_1DACB7AA4();
  v23(v5, v22);
  v25 = v20;
  v26 = v37;
  v37(v25, v19);
  v39 = 0xD000000000000019;
  v40 = 0x80000001DACF2570;
  v38(v5, *MEMORY[0x1E6968F68], v22);
  sub_1DACB7AA4();
  v23(v5, v22);
  return v26(v24, v19);
}

void sub_1DAA64B5C()
{
  if (!qword_1EE11D280)
  {
    sub_1DACB90E4();
    sub_1DAA64BE4();
    sub_1DAA64C38();
    v0 = sub_1DACB9054();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D280);
    }
  }
}

unint64_t sub_1DAA64BE4()
{
  result = qword_1EE11E5E8;
  if (!qword_1EE11E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E5E8);
  }

  return result;
}

unint64_t sub_1DAA64C38()
{
  result = qword_1EE11D270;
  if (!qword_1EE11D270)
  {
    sub_1DACB90E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D270);
  }

  return result;
}

void sub_1DAA64C90()
{
  if (!qword_1EE11D278)
  {
    sub_1DAA64BE4();
    v0 = sub_1DACB90D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D278);
    }
  }
}

uint64_t sub_1DAA64CEC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1DACB8254();
  if (v7[40] == 255)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3, v4);
    return sub_1DAA65C58(v7);
  }

  return result;
}

uint64_t sub_1DAA64DA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DAA64DEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void *sub_1DAA64E28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (!v12)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1DAA4D460(&v11, v13);
  v6 = v14;
  v7 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v8)
  {
    sub_1DAA485B8(0, &qword_1EE125430, &protocolRef_FCPrivateDataContext);
    result = sub_1DACB8244();
    if (result)
    {
      v10 = [result userInfo];
      swift_unknownObjectRelease();
      *a2 = v10;
      *(a2 + 40) = 0;
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    goto LABEL_9;
  }

  sub_1DAA44440(0, qword_1EE1261E0);
  result = sub_1DACB8254();
  if (v12)
  {
    sub_1DAA4D460(&v11, a2);
    *(a2 + 40) = 1;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

LABEL_10:
  __break(1u);
  return result;
}

id sub_1DAA64FC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE1200B8 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  if (v32)
  {
    if (v32 == 1)
    {
      sub_1DAA41DCC();
      v7 = sub_1DACB9AD4();
      sub_1DACB9914();
LABEL_6:
      sub_1DACB8C64();
      v8 = 1;
LABEL_45:

      return v8;
    }

    goto LABEL_43;
  }

  v9 = v0[11];
  v10 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v9);
  (*(v10 + 8))(v9, v10);
  v11 = v6[104];
  sub_1DAA640AC(v6);
  if (v11 != 1)
  {
    goto LABEL_43;
  }

  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EE1242C0;
  v13 = qword_1EE1242C8;
  if (qword_1EE1242C0 != 0x313434333431 || qword_1EE1242C8 != 0xE600000000000000)
  {
    v19 = sub_1DACBA174();
    v20 = v12 == 0x343434333431 && v13 == 0xE600000000000000;
    v21 = v20;
    if ((v19 & 1) == 0 && !v21)
    {
      v22 = sub_1DACBA174();
      v23 = v12 == 0x303634333431 && v13 == 0xE600000000000000;
      v24 = v23;
      if ((v22 & 1) == 0 && !v24)
      {
        v25 = sub_1DACBA174();
        v26 = v12 == 0x353534333431 && v13 == 0xE600000000000000;
        v27 = v26;
        if ((v25 & 1) == 0 && !v27 && (sub_1DACBA174() & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }
  }

  sub_1DAA4D678((v1 + 8), v31);
  type metadata accessor for NewsRegionCheck();
  inited = swift_initStackObject();
  sub_1DAA4E4E0(v31, inited + 16);
  v15 = sub_1DAA655FC();
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  if ((v15 & 1) == 0)
  {
LABEL_43:
    sub_1DAA41DCC();
    v7 = sub_1DACB9AD4();
    sub_1DACB9914();
    goto LABEL_44;
  }

  result = [objc_opt_self() sharedNetworkReachability];
  if (result)
  {
    v17 = result;
    v18 = [result offlineReason];

    if (v18 != 3)
    {
      v28 = v1[16];
      v29 = v1[17];
      __swift_project_boxed_opaque_existential_1(v1 + 13, v28);
      LOBYTE(v28) = (*(v29 + 8))(v28, v29);
      sub_1DAA41DCC();
      v7 = sub_1DACB9AD4();
      sub_1DACB9914();
      if (v28)
      {
        goto LABEL_6;
      }

LABEL_44:
      sub_1DACB8C64();
      v8 = 0;
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA654F4()
{
  v1 = *v0;
  if ((sub_1DAA64FC0() & 1) == 0)
  {
    return 0;
  }

  if ([*(v1 + 56) isPrivateDataSyncingAllowed])
  {
    return 1;
  }

  if (qword_1EE11D680 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  return v3;
}

unint64_t sub_1DAA655A8()
{
  result = qword_1EE121B08;
  if (!qword_1EE121B08)
  {
    type metadata accessor for FeatureAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121B08);
  }

  return result;
}

uint64_t sub_1DAA655FC()
{
  v1 = v0;
  v2 = type metadata accessor for AppConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7E24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7E44();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v31 - v18;
  v20 = [objc_opt_self() currentLocale];
  sub_1DACB7D94();

  sub_1DACB7E34();
  (*(v12 + 8))(v15, v11);
  sub_1DACB7E14();
  (*(v7 + 8))(v10, v6);
  v21 = sub_1DACB7DC4();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    sub_1DAA6CA10(v19, &qword_1EE125260, MEMORY[0x1E6969680]);
    v23 = 0;
  }

  else
  {
    v24 = sub_1DACB7D34();
    v26 = v25;
    (*(v22 + 8))(v19, v21);
    v27 = v1[5];
    v28 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v27);
    (*(v28 + 8))(v27, v28);
    v29 = *(v5 + 170);
    sub_1DACB71E4();
    sub_1DAA640AC(v5);
    v23 = sub_1DAA65964(v24, v26, v29);
  }

  return v23 & 1;
}

uint64_t sub_1DAA65964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DACBA284();
  sub_1DACB9404();
  v7 = sub_1DACBA2C4();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1DACBA174() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1DAA65A5C()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D688 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore18UserIdentitySourceO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DAA65CB4(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA485B8(0, &unk_1EE11F7D8, &protocolRef_FCEntitlementsOverrideProviderType);
  [v2 setEntitlementsOverrideProvider_];

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAA65D94()
{
  v1 = *v0;
  sub_1DAA4CF18(0, &qword_1EE1240B0, type metadata accessor for AppConfiguration, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA65E40()
{
  v1 = *v0;
  sub_1DAA65E94();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAA65E94()
{
  if (!qword_1EE11FDF0)
  {
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FDF0);
    }
  }
}

void sub_1DAA65EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DACB71F4();
  sub_1DACB8BB4();
  sub_1DACB71F4();
  v9 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v10 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v11 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v12 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v13 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v14 = sub_1DACB89D4();
  sub_1DACB8A64();

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DAA98788;
  *(v15 + 24) = v8;
  v16 = sub_1DACB89D4();
  sub_1DACB8A64();

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  sub_1DACB71F4();
  v18 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAA66238()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA66278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a3;
  v32 = a1;
  v33 = a2;
  v7 = sub_1DACB8FB4();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB9004();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB9024();
  v36 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v30 - v21;
  sub_1DAA57C58();
  v34 = sub_1DACB9954();
  sub_1DACB9014();
  os_unfair_lock_lock((a5 + 48));
  v23 = *(a5 + 56);
  os_unfair_lock_unlock((a5 + 48));
  sub_1DACB9034();
  v35 = *(v16 + 8);
  v35(v20, v15);
  v24 = swift_allocObject();
  v26 = v31;
  v25 = v32;
  v24[2] = a5;
  v24[3] = v26;
  v24[4] = a4;
  v24[5] = v25;
  v24[6] = v33;
  aBlock[4] = sub_1DAA90DA8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_7;
  v27 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA669C0(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  sub_1DAA667F4(0);
  sub_1DAA669C0(&qword_1EE123EB0, sub_1DAA667F4);
  sub_1DACB9BB4();
  v28 = v34;
  MEMORY[0x1E1277410](v22, v14, v10, v27);
  _Block_release(v27);

  (*(v39 + 8))(v10, v7);
  (*(v37 + 8))(v14, v38);
  return (v35)(v22, v36);
}

void sub_1DAA66680()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB4DA9C(0, &qword_1ECBE7C70);
  }
}

void sub_1DAA666CC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB4DA9C(0, &qword_1ECBE7C78);
  }
}

void sub_1DAA66718()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA4CF18(0, &qword_1ECBE7C80, sub_1DAB4DAE8, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA66784()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DAA66828()
{
  v1 = *v0;
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  sub_1DACB9914();
  sub_1DACB8C64();
  if (qword_1EE11D6C8 != -1)
  {
    swift_once();
  }

  sub_1DAA66DC0(&qword_1EE11E548);
  sub_1DACB7F84();
  if (v10 == 1)
  {
    sub_1DAA6ABE8();
    swift_allocError();
    *v2 = 0;
    sub_1DAA65E94();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    return sub_1DACB8AD4();
  }

  else
  {
    sub_1DAA65E94();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DAA669C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA66A08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA66A50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA66A98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA66AE0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E298 = result;
  return result;
}

uint64_t sub_1DAA66BB4()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v13[15] = 0;
  sub_1DAA66D68();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D6D0 = result;
  return result;
}

void sub_1DAA66D68()
{
  if (!qword_1EE1255D8[0])
  {
    v0 = sub_1DACB80A4();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1255D8);
    }
  }
}

uint64_t sub_1DAA66DC0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for KVSCleanupStartupTask();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA66E40()
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  sub_1DACB9914();
  sub_1DACB8C64();
  sub_1DAA65E94();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA66F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_1DACB82E4();
  v9 = swift_allocObject();
  v9[2] = sub_1DABE6448;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = a4;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB82D4();
}

void sub_1DAA66FFC(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void))
{
  v5 = [objc_opt_self() defaultStore];
  v6 = sub_1DACB92F4();
  v7 = [v5 arrayForKey_];

  if (v7 && (v8 = sub_1DACB9644(), v7, v9 = *(v8 + 16), v10 = , v9))
  {
    a1(v10);
  }

  else
  {
    sub_1DAA6ABE8();
    v11 = swift_allocError();
    *v12 = 1;
    a3();
  }
}

uint64_t AppDependencyManager.addStocksDependencies(using:)(uint64_t a1, uint64_t a2)
{
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = sub_1DAA4436C(0, qword_1EE125F28);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3A80, v5, v6);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = a1;
  v7[4] = a2;
  v8 = sub_1DAA4436C(0, &unk_1EE125A10);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3A90, v7, v8);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = a1;
  v9[4] = a2;
  v10 = sub_1DAA4436C(0, &qword_1EE125E40);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AA0, v9, v10);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v11 = swift_allocObject();
  v11[2] = v2;
  v11[3] = a1;
  v11[4] = a2;
  v12 = sub_1DAA4436C(0, &qword_1EE123948);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AB0, v11, v12);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  v14 = sub_1DAA4436C(0, &qword_1EE125FE0);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AC0, v13, v14);

  sub_1DAA674D8(&v18);
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v15 = swift_allocObject();
  v15[2] = v2;
  v15[3] = a1;
  v15[4] = a2;
  v16 = sub_1DAA4436C(0, &qword_1EE125CC8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  MEMORY[0x1E1274850](&v18, &unk_1DACD3AD0, v15, v16);

  return sub_1DAA674D8(&v18);
}

uint64_t sub_1DAA674D8(uint64_t a1)
{
  sub_1DAA67534();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAA67534()
{
  if (!qword_1EE11F778)
  {
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F778);
    }
  }
}

uint64_t sub_1DAA67584()
{
  v0 = sub_1DACB8864();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8854();
}

uint64_t sub_1DAA675BC(uint64_t a1, void *a2)
{
  v3 = sub_1DACB8874();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1DAA44440(0, &unk_1EE1258E8);
  result = sub_1DACB8254();
  if (v11[1])
  {
    v10 = *(v11[2] + 8);
    (*(v4 + 104))(v7, *MEMORY[0x1E69D6918], v3);
    sub_1DACB8844();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v7, v3);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA67750@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125918);
  result = sub_1DACB8254();
  if (v8)
  {
    v5 = type metadata accessor for WatchlistSortingService();
    v6 = swift_allocObject();
    result = sub_1DAA4D460(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_1F568D958;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA67828()
{
  v1 = v0;
  v27 = sub_1DACB8FB4();
  v2 = *(v27 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1DACB9004();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB99C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA67BB8();
  v16 = v15;
  v17 = *(v15 + 48);
  v18 = *(v15 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_1DACB8964();
  v19 = *(v16 + 48);
  v20 = *(v16 + 52);
  swift_allocObject();
  *(v0 + 24) = sub_1DACB8964();
  sub_1DAA67C14();
  sub_1DACB99B4();
  v21 = sub_1DACB99D4();
  (*(v11 + 8))(v14, v10);
  *(v1 + 32) = v21;
  swift_getObjectType();
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1DAC4A88C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_35;
  v23 = _Block_copy(aBlock);

  sub_1DACB8FD4();
  sub_1DAA67C60();
  sub_1DACB99E4();
  _Block_release(v23);
  (*(v2 + 8))(v5, v27);
  (*(v6 + 8))(v9, v26);
  v24 = *(v1 + 32);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DACB9A14();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1DAA67B80()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA67BB8()
{
  if (!qword_1EE11FF00)
  {
    v0 = sub_1DACB8974();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FF00);
    }
  }
}

unint64_t sub_1DAA67C14()
{
  result = qword_1EE11F8A0;
  if (!qword_1EE11F8A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE11F8A0);
  }

  return result;
}

uint64_t sub_1DAA67C60()
{
  sub_1DACB8FB4();
  sub_1DAA66A98(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  sub_1DAA667F4(0);
  sub_1DAA66A98(&qword_1EE123EB0, sub_1DAA667F4);
  return sub_1DACB9BB4();
}

id sub_1DAA67D6C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69B5570]);

  return [v0 init];
}

id sub_1DAA67DA4()
{
  result = [objc_opt_self() sharedNetworkReachability];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA67DE0()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1DACB7CB4();
  v8 = v0[5];
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v8);
  (*(v9 + 40))(v8, v9);
  (*(v2 + 16))(v5, v7, v1);
  v10 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  (*(v2 + 32))(v11 + v10, v5, v1);
  sub_1DACB71F4();
  v12 = sub_1DACB89D4();
  sub_1DACB8A64();

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1DAA67FC8()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1DAA68090()
{
  if (!qword_1EE11D040)
  {
    sub_1DAA420F4(255, &qword_1EE11F7C0, 0x1E695BA60);
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D040);
    }
  }
}

uint64_t sub_1DAA680F8()
{
  v1 = *v0;
  sub_1DAA68090();
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAA492B4();
  v3 = sub_1DACB8A54();

  return v3;
}

uint64_t sub_1DAA681A8()
{
  sub_1DAA68234(0, &unk_1EE11D3B8, sub_1DAA68090, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void sub_1DAA68234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA682D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 16);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_1DAA73914;
  v12[5] = v10;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB88E4();
}

uint64_t sub_1DAA683AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA683F4@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v71 = a2;
  v77 = a3;
  v79[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1DACB7AB4();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v70[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v70[-v10];
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v70[-v13];
  v72 = a1;
  v16 = sub_1DAA68F5C(v12, v15);
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v14);
  v74 = v14;
  sub_1DACB7A14();
  v17 = objc_opt_self();
  v18 = sub_1DACB7A04();
  v19 = [v17 preferredFileURLForSchema:v16 parentDirectoryURL:v18];

  sub_1DACB7A44();
  v20 = objc_opt_self();
  v21 = [v20 defaultManager];
  v73 = v11;
  v22 = sub_1DACB7A04();
  sub_1DAA6993C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for FileAttributeKey(0);
  sub_1DAA69168(&qword_1EE11F8C0, 255, type metadata accessor for FileAttributeKey);
  v23 = sub_1DACB9114();

  v79[0] = 0;
  v24 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:v23 error:v79];

  if (v24)
  {
    v25 = v79[0];
  }

  else
  {
    v26 = v79[0];
    v27 = sub_1DACB78C4();

    swift_willThrow();
  }

  sub_1DAA69B54(v8, v16);
  if (qword_1EE11F8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = qword_1EE11F8F0;
  v29 = sub_1DACB92F4();
  v30 = [v28 BOOLForKey_];

  if (v30)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v31 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v32 = qword_1EE11F8F0;
    v33 = sub_1DACB92F4();
    [v32 setBool:0 forKey:v33];

    v34 = [v20 &selRef_personalizationData + 3];
    v35 = sub_1DACB7A04();
    v78[0] = 0;
    v36 = [v34 removeItemAtURL:v35 error:v78];

    if (v36)
    {
      v37 = v78[0];
    }

    else
    {
      v38 = v78[0];
      v39 = sub_1DACB78C4();

      swift_willThrow();
    }
  }

  v40 = qword_1EE11F8F0;
  v41 = sub_1DACB92F4();
  [v40 setBool:1 forKey:v41];

  sub_1DAA6A214(0, &qword_1EE11F488, sub_1DAA6A268);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1DACD7AD0;
  type metadata accessor for UpdateUserIDCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 32) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateAdsUserIDCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 40) = swift_getObjCClassMetadata();
  sub_1DAA420F4(0, &qword_1EE11F788, 0x1E696AEC0);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 48) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateUserStartDateCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 56) = swift_getObjCClassMetadata();
  sub_1DAA420F4(0, &qword_1EE11F7D0, 0x1E695DF00);
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 64) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateUpsellAppLaunchCountCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 72) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 80) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateAppLaunchUpsellLastSeenDateCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 88) = swift_getObjCClassMetadata();
  type metadata accessor for UpdateAppReviewRequestLastSeenDateCommand();
  [swift_getObjCClassFromMetadata() classForKeyedUnarchiver];
  *(v42 + 96) = swift_getObjCClassMetadata();
  v43 = objc_opt_self();
  v44 = [v43 supportedCommands];
  sub_1DAA6A268();
  v45 = sub_1DACB9644();

  v78[0] = v42;
  v46 = v16;
  sub_1DAA6A7CC(v45);
  v47 = objc_allocWithZone(SCWDatabaseJSONStore);
  v48 = sub_1DACB7A04();
  v49 = sub_1DACB9634();

  v50 = [v47 initWithSchema:v46 fileURL:v48 allowedCommandClasses:v49];

  v51 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v52 = [v51 aa_primaryAppleAccount];

  if (v52)
  {
    if ([v52 sc_isEnabledForStocksDataclass])
    {
      if (v71)
      {
        v53 = 3;
        goto LABEL_20;
      }

      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v54 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();

      v53 = 1;
    }

    else
    {
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v54 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();

      v53 = 0;
    }

    v52 = v54;
  }

  else
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v52 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
    v53 = 0;
  }

LABEL_20:

  v55 = qword_1EE11F8F0;
  v56 = sub_1DACB92F4();
  v57 = [v55 BOOLForKey_];

  if (v57)
  {
    sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
    v58 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v53 |= 4uLL;
    v59 = qword_1EE11F8F0;
    v60 = sub_1DACB92F4();
    [v59 setBool:0 forKey:v60];

    if (qword_1EE11D6C8 != -1)
    {
      swift_once();
    }

    LOBYTE(v78[0]) = 0;
    type metadata accessor for LegacyStocksAssembly();
    sub_1DAA69168(&qword_1ECBE92B8, v61, type metadata accessor for LegacyStocksAssembly);
    sub_1DACB80C4();
  }

  sub_1DAA691B0();
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1DACCB1F0;
  *(v62 + 32) = [v43 zoneMergeHandler];
  type metadata accessor for UserInfoMergeHandler();
  *(v62 + 40) = swift_allocObject();
  v63 = objc_allocWithZone(SCWDatabase);
  sub_1DAA6AE1C();
  v64 = sub_1DACB9634();

  v65 = [v63 initWithSchema:v46 store:v50 features:v53 mergeHandlers:v64 containerProxy:0];

  v66 = v76;
  v67 = *(v75 + 8);
  v67(v8, v76);
  v67(v73, v66);
  result = (v67)(v74, v66);
  *v77 = v65;
  v69 = *MEMORY[0x1E69E9840];
  return result;
}

id sub_1DAA68F5C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA69168(&qword_1EE123950, a2, type metadata accessor for LegacyStocksAssembly);
  sub_1DACB7F84();
  v4 = v11 - 2 >= 6 && v11 == 0;
  sub_1DAA691B0();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACCB1F0;
  *(v5 + 32) = [objc_opt_self() zoneSchema];
  *(v5 + 40) = sub_1DAA694E8();
  v6 = objc_allocWithZone(SCWDatabaseSchema);
  v7 = sub_1DACB92F4();
  sub_1DAA420F4(0, &unk_1EE11F910, off_1E85E21A8);
  v8 = sub_1DACB9634();

  v9 = [v6 initWithName:v7 environment:v4 security:1 zoneSchemas:v8];

  return v9;
}

uint64_t sub_1DAA69168(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1DAA691B0()
{
  if (!qword_1EE11F490)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F490);
    }
  }
}

id sub_1DAA694E8()
{
  sub_1DAA4E420(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DACC4A10;
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC91B0;
  sub_1DAA420F4(0, &qword_1EE11F788, 0x1E696AEC0);
  v2 = objc_allocWithZone(SCWRecordFieldSchema);
  v3 = sub_1DACB92F4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [v2 initWithName:v3 valueClass:ObjCClassFromMetadata required:0 encrypted:1];

  *(v1 + 32) = v5;
  sub_1DAA420F4(0, &qword_1EE11F7D0, 0x1E695DF00);
  v6 = objc_allocWithZone(SCWRecordFieldSchema);
  v7 = sub_1DACB92F4();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [v6 initWithName:v7 valueClass:v8 required:0 encrypted:1];

  *(v1 + 40) = v9;
  sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
  v10 = objc_allocWithZone(SCWRecordFieldSchema);
  v11 = sub_1DACB92F4();
  v12 = [v10 initWithName:v11 valueClass:swift_getObjCClassFromMetadata() required:0 encrypted:0];

  *(v1 + 48) = v12;
  v13 = objc_allocWithZone(SCWRecordFieldSchema);
  v14 = sub_1DACB92F4();
  v15 = [v13 initWithName:v14 valueClass:ObjCClassFromMetadata required:0 encrypted:0];

  *(v1 + 56) = v15;
  v16 = objc_allocWithZone(SCWRecordFieldSchema);
  v17 = sub_1DACB92F4();
  v18 = [v16 initWithName:v17 valueClass:v8 required:0 encrypted:1];

  *(v1 + 64) = v18;
  v19 = objc_allocWithZone(SCWRecordFieldSchema);
  v20 = sub_1DACB92F4();
  v21 = [v19 initWithName:v20 valueClass:v8 required:0 encrypted:1];

  *(v1 + 72) = v21;
  v22 = objc_allocWithZone(SCWRecordSchema);
  v23 = sub_1DACB92F4();
  sub_1DAA420F4(0, &qword_1EE11F850, off_1E85E20C0);
  v24 = sub_1DACB9634();

  v25 = [v22 initWithRecordType:v23 fieldSchemas:v24];

  *(v0 + 32) = v25;
  v26 = objc_allocWithZone(SCWZoneSchema);
  v27 = sub_1DACB92F4();
  sub_1DAA420F4(0, &qword_1EE11F8D8, off_1E85E20C8);
  v28 = sub_1DACB9634();

  v29 = [v26 initWithName:v27 atomic:1 recordSchemas:v28];

  return v29;
}

unint64_t sub_1DAA69984(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_1DACB9EA4();
    v11 = a1 + 32;
    sub_1DACB71F4();
    v12 = MEMORY[0x1E69E7CA0];
    while (1)
    {
      sub_1DAB6972C(v11, &v19, a3, a4, v12 + 8, sub_1DAB69F80);
      v13 = v19;
      result = a5(v19);
      if (v15)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v13;
      result = sub_1DAA5616C(&v20, (v10[7] + 32 * result));
      v16 = v10[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v10[2] = v18;
      v11 += 40;
      if (!--v5)
      {

        return v10;
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

uint64_t sub_1DAA69AC4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAA69B54(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = sub_1DACB7AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  v60 = objc_opt_self();
  v14 = [v60 defaultManager];
  v61 = a1;
  sub_1DACB7A74();
  v15 = sub_1DACB92F4();

  LOBYTE(a1) = [v14 fileExistsAtPath_];

  if ((a1 & 1) == 0)
  {
    v58 = a2;
    sub_1DAA6A214(0, &qword_1EE1252D8, MEMORY[0x1E6968FB0]);
    v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v59 = *(v5 + 72);
    v17 = swift_allocObject();
    v53 = xmmword_1DACC1D40;
    *(v17 + 16) = xmmword_1DACC1D40;
    v51 = v17;
    v52 = v17 + v16;
    v18 = objc_opt_self();
    if (qword_1EE125750 != -1)
    {
      swift_once();
    }

    sub_1DAA4DA94(v11);
    sub_1DACB7A14();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v20 = sub_1DACB7A04();
    v19(v13, v4);
    v21 = v18;
    v57 = v18;
    v22 = v58;
    v23 = v4;
    v24 = [v21 preferredFileURLForSchema:v58 parentDirectoryURL:v20];

    sub_1DACB7A44();
    sub_1DAA4DA94(v11);
    sub_1DACB7A14();
    v19(v11, v23);
    v25 = sub_1DACB7A04();
    v54 = v19;
    v55 = v5 + 8;
    v19(v13, v23);
    v26 = [v57 preferredFileURLForSchema:v22 parentDirectoryURL:v25];

    v27 = v52;
    sub_1DACB7A44();

    v57 = *(v5 + 16);
    v58 = v5 + 16;
    v28 = 2;
    v56 = xmmword_1DACC1D20;
    v29 = MEMORY[0x1E69E6158];
    v30 = v62;
    while (1)
    {
      v62 = v28;
      (v57)(v30, v27, v23);
      sub_1DAA41D64();
      v31 = swift_allocObject();
      *(v31 + 16) = v56;
      v32 = sub_1DACB7A74();
      v34 = v33;
      *(v31 + 56) = v29;
      v35 = sub_1DAA443C8();
      *(v31 + 64) = v35;
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      sub_1DAA420F4(0, &qword_1EE123DB0, 0x1E69E9BF8);
      v36 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();

      v37 = [v60 defaultManager];
      v38 = sub_1DACB7A04();
      v39 = sub_1DACB7A04();
      v64 = 0;
      v40 = [v37 copyItemAtURL:v38 toURL:v39 error:&v64];

      if (v40)
      {
        break;
      }

      v41 = v64;
      v42 = sub_1DACB78C4();

      swift_willThrow();
      v43 = swift_allocObject();
      *(v43 + 16) = v53;
      v44 = sub_1DACB7A74();
      v29 = MEMORY[0x1E69E6158];
      *(v43 + 56) = MEMORY[0x1E69E6158];
      *(v43 + 64) = v35;
      *(v43 + 32) = v44;
      *(v43 + 40) = v45;
      v64 = 0;
      v65 = 0xE000000000000000;
      v63 = v42;
      sub_1DAA4436C(0, &qword_1EE123B10);
      sub_1DACB9DD4();
      v46 = v64;
      v47 = v65;
      *(v43 + 96) = v29;
      *(v43 + 104) = v35;
      *(v43 + 72) = v46;
      *(v43 + 80) = v47;
      v48 = sub_1DACB9AD4();
      sub_1DACB9914();
      sub_1DACB8C64();

      v54(v30, v23);
      v27 += v59;
      v28 = (v62 - 1);
      if (v62 == 1)
      {
        goto LABEL_9;
      }
    }

    v49 = v64;
    v54(v30, v23);
LABEL_9:
  }

  v50 = *MEMORY[0x1E69E9840];
}

void sub_1DAA6A19C()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DACB92F4();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    qword_1EE11F8F0 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1DAA6A214(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACBA124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DAA6A268()
{
  result = qword_1EE11F470;
  if (!qword_1EE11F470)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EE11F470);
  }

  return result;
}

uint64_t type metadata accessor for UpdateAdsUserIDCommand()
{
  result = qword_1EE121210;
  if (!qword_1EE121210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A324()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for UpdateUserStartDateCommand()
{
  result = qword_1EE1209B8;
  if (!qword_1EE1209B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A414()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for UpdateAppLaunchUpsellLastSeenDateCommand()
{
  result = qword_1EE1204F0;
  if (!qword_1EE1204F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A540()
{
  result = sub_1DACB7CC4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for UpdateAppReviewRequestLastSeenDateCommand()
{
  result = qword_1EE1204D0;
  if (!qword_1EE1204D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAA6A7CC(uint64_t result)
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
  v7 = *v1;
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_1DAA6A8B8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1DAA6A8B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA6A9E0(0, &qword_1EE11F488, sub_1DAA6A268, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1DAA6A9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6AA44(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA6AA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6AAFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DAA6AB50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1DAA6ABE8()
{
  result = qword_1EE11E550;
  if (!qword_1EE11E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E550);
  }

  return result;
}

uint64_t sub_1DAA6AC44(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_1EE11EDC0 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  sub_1DAA4436C(0, &qword_1EE123B10);
  sub_1DACB9DD4();
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1DAA443C8();
  *(v4 + 32) = 0;
  *(v4 + 40) = 0xE000000000000000;
  sub_1DACB9914();
  sub_1DACB8C64();

  return a2(a1);
}

uint64_t objectdestroy_38Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1DAA6AE1C()
{
  result = qword_1EE11F8E0;
  if (!qword_1EE11F8E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE11F8E0);
  }

  return result;
}

uint64_t sub_1DAA6AF50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125CC0);
  sub_1DACB8254();
  if (v11)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA46854(0, &qword_1EE125588, MEMORY[0x1E69D62B0], MEMORY[0x1E69D6A80]);
    v6 = sub_1DACB8224();
    if (v6)
    {
      v7 = v6;
      v8 = type metadata accessor for QuoteDetailManager();
      swift_allocObject();
      result = sub_1DAA6B3B0(v10, v7);
      a2[3] = v8;
      a2[4] = &off_1F56916D0;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAA6B110()
{
  v13 = sub_1DACB9944();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB9924();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1DACB9004();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v12 = sub_1DAA57C58();
  sub_1DACB8FE4();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v8 = MEMORY[0x1E69E8030];
  sub_1DAA58090(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA57D6C(&qword_1EE123E70, &qword_1EE123E78, v8);
  sub_1DACB9BB4();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1DACB9974();
  v10 = v14;
  *(v14 + 16) = v9;
  return v10;
}

uint64_t sub_1DAA6B3B0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = v2;
  v23 = a1;
  v4 = sub_1DACB81D4();
  v24 = *(v4 - 8);
  v5 = v24;
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB86E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAA5CD48(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0]);
  sub_1DAA5EE58(0);
  sub_1DAA5CD48(&qword_1EE125508, 255, sub_1DAA5EE58);
  sub_1DACB9BB4();
  sub_1DAA6B740();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 56) = sub_1DACB8354();
  v13 = v23;
  sub_1DAA4D678(v23, v2 + 16);
  sub_1DAA6B87C(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v14 = *(v5 + 72);
  v15 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v27 = v16;
  sub_1DAA5CD48(&qword_1EE1255D0, 255, MEMORY[0x1E69D6420]);
  sub_1DAA5EFBC(0);
  sub_1DAA5CD48(&qword_1EE125530, 255, sub_1DAA5EFBC);
  sub_1DACB9BB4();
  sub_1DAA6B87C(0, &qword_1EE11FF50, sub_1DAA6B9F0, MEMORY[0x1E69D6A80]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1DACB8914();
  __swift_destroy_boxed_opaque_existential_1(v13);
  *(v3 + 64) = v20;
  return v3;
}

void sub_1DAA6B740()
{
  if (!qword_1EE120010)
  {
    sub_1DAA46720();
    sub_1DAA6B80C(255, &qword_1EE11FCE0, MEMORY[0x1E69E5E28]);
    sub_1DAA5CD48(&qword_1EE11F990, 255, sub_1DAA46720);
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE120010);
    }
  }
}

void sub_1DAA6B80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for QuoteDetail();
    v7 = a3(a1, MEMORY[0x1E69E6158], v6, MEMORY[0x1E69E6168]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DAA6B87C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6B8E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for QuoteDetailManager.StoreDescriptor;
    v8[1] = type metadata accessor for QuoteDetail();
    v8[2] = sub_1DAA6BA10();
    v8[3] = sub_1DAA5CD48(&qword_1EE1238E0, 255, type metadata accessor for QuoteDetail);
    v8[4] = sub_1DAA5CD48(&qword_1EE1238E8, 255, type metadata accessor for QuoteDetail);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1DAA6BA10()
{
  result = qword_1EE121E90[0];
  if (!qword_1EE121E90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE121E90);
  }

  return result;
}

uint64_t sub_1DAA6BA64()
{
  v1 = sub_1DACB7E44();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v20[0] = sub_1DACB92E4();
  v3 = *(v20[0] - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v20[0]);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - v8;
  v10 = *v0;
  v11 = v0[1];
  v12 = v0[3];
  v13 = v0[4];
  if (v12 == sub_1DACB9324() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1DACBA174();

    if ((v16 & 1) == 0)
    {
      sub_1DACB71E4();
      return v10;
    }
  }

  sub_1DACB9284();
  v17 = v20[0];
  (*(v3 + 16))(v7, v9, v20[0]);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v18 = qword_1EE13E470;
  sub_1DACB7DF4();
  v10 = sub_1DACB9384();
  (*(v3 + 8))(v9, v17);
  return v10;
}

uint64_t sub_1DAA6BCC8()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 12);
  v2 = *&v1[14]._os_unfair_lock_opaque;
  v3 = sub_1DACB71E4();
  v4 = sub_1DAA6BD48(v3, &v1[14]);

  os_unfair_lock_unlock(v1 + 12);
  return v4;
}

uint64_t sub_1DAA6BD48(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = 0;
    v7 = result + 40;
    v8 = MEMORY[0x1E69E7CC0];
    v28 = result + 40;
    while (1)
    {
      v9 = (v7 + 16 * v6);
      for (i = v6; ; ++i)
      {
        if (i >= v4)
        {
          __break(1u);
LABEL_19:
          __break(1u);
          return result;
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_19;
        }

        v11 = *(a2 + 8);
        if (*(v11 + 16))
        {
          break;
        }

LABEL_4:
        v9 += 2;
        if (v6 == v4)
        {
          return v8;
        }
      }

      v12 = *(v9 - 1);
      v13 = *v9;
      sub_1DACB71E4();
      v14 = sub_1DAA4BF3C(v12, v13);
      if ((v15 & 1) == 0)
      {
        break;
      }

      v16 = *(v11 + 56) + 48 * v14;
      v17 = *(v16 + 8);
      v18 = *(v16 + 16);
      v25 = *(v16 + 24);
      v26 = *v16;
      v19 = *(v16 + 32);
      v23 = *(v16 + 41);
      v24 = *(v16 + 40);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();

      result = swift_isUniquelyReferenced_nonNull_native();
      v27 = v3;
      if ((result & 1) == 0)
      {
        result = sub_1DAA929C8(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1DAA929C8((v20 > 1), v21 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v21 + 1;
      v22 = v8 + 48 * v21;
      *(v22 + 32) = v26;
      *(v22 + 40) = v17;
      *(v22 + 48) = v18;
      *(v22 + 56) = v25;
      *(v22 + 64) = v19;
      *(v22 + 72) = v24;
      *(v22 + 73) = v23;
      v3 = v27;
      v7 = v28;
      if (v6 == v4)
      {
        return v8;
      }
    }

    goto LABEL_4;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DAA6BF0C()
{
  v1 = v0;
  v2 = *v0;
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for AppConfiguration(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7FA4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE120068 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == *MEMORY[0x1E69D6D00])
  {
    v17 = objc_opt_self();
    v18 = v0[11];
    v19 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v18);
    (*(v19 + 8))(v18, v19);
    v20 = *(v10 + 532);
    sub_1DAA640AC(v10);
    if ([v17 enabledForCurrentLevel_])
    {
      v21 = __swift_project_boxed_opaque_existential_1(v1 + 18, v1[21]);
      sub_1DAA6C50C(*v21 + OBJC_IVAR____TtC10StocksCore18UserRegionProvider_currentRegion, v6);
      v22 = sub_1DAA6C58C(v6);
      sub_1DAA6CA10(v6, &qword_1EE125260, MEMORY[0x1E6969680]);
      return v22 & 1;
    }

    goto LABEL_9;
  }

  if (v16 == *MEMORY[0x1E69D6D08])
  {
    v22 = 1;
    return v22 & 1;
  }

  if (v16 == *MEMORY[0x1E69D6D10])
  {
LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

uint64_t sub_1DAA6C2A0()
{
  v18 = sub_1DACB8024();
  v0 = *(v18 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB8034();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1DACB7FA4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5B418();
  (*(v10 + 104))(v13, *MEMORY[0x1E69D6D00], v9);
  v14 = *MEMORY[0x1E69B5010];
  *v8 = sub_1DACB9324();
  v8[1] = v15;
  (*(v5 + 104))(v8, *MEMORY[0x1E69D6E98], v4);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E90], v18);
  result = sub_1DACB8084();
  qword_1EE120070 = result;
  return result;
}

uint64_t sub_1DAA6C50C(uint64_t a1, uint64_t a2)
{
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA6C58C(uint64_t a1)
{
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA60E20(0, &qword_1EE125260, MEMORY[0x1E6969680]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - v9;
  v11 = sub_1DACB7DC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA6C50C(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DAA6CA10(v10, &qword_1EE125260, MEMORY[0x1E6969680]);
    v16 = 0;
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v17 = v1[11];
    v18 = v1[12];
    __swift_project_boxed_opaque_existential_1(v1 + 8, v17);
    (*(v18 + 8))(v17, v18);
    v19 = *(v6 + 533);
    sub_1DACB71E4();
    sub_1DAA640AC(v6);
    v16 = sub_1DAA6C7DC(v15, v19);

    (*(v12 + 8))(v15, v11);
  }

  return v16 & 1;
}

uint64_t sub_1DAA6C7DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DACB7DC4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v8 = *(a2 + 40), sub_1DAA6C9CC(&qword_1EE125270), v9 = sub_1DACB91E4(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, v20 = a2 + 56, ((*(a2 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
  {
    v19 = a2;
    v12 = ~v10;
    v13 = v4 + 16;
    v14 = *(v4 + 16);
    v15 = *(v13 + 56);
    v16 = (v13 - 8);
    do
    {
      v14(v7, *(v19 + 48) + v15 * v11, v3);
      sub_1DAA6C9CC(&qword_1EE125268);
      v17 = sub_1DACB9264();
      (*v16)(v7, v3);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1DAA6C9CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DACB7DC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA6CA10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1DAA60E20(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAA6CBB4(uint64_t *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (v8)
  {
    sub_1DAA4D460(&v7, v9);
    v4 = v10;
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = (*(v5 + 32))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v6 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DAA6CC84()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27[-v8];
  if (qword_1EE120118 != -1)
  {
    swift_once();
  }

  sub_1DAA655A8();
  sub_1DACB7F84();
  if (v28)
  {
    return (v28 == 1);
  }

  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    v13 = sub_1DACB9324();
    v15 = v14;

    v16 = v1[11];
    v17 = v1[12];
    __swift_project_boxed_opaque_existential_1(v1 + 8, v16);
    (*(v17 + 8))(v16, v17);
    v18 = *(v9 + 149);
    sub_1DACB71E4();
    sub_1DAA640AC(v9);
    v19 = (v18 + 48);
    v20 = *(v18 + 16) + 1;
    while (--v20)
    {
      v10 = *v19;
      if (*(v19 - 2) != v13 || *(v19 - 1) != v15)
      {
        v19 += 40;
        if ((sub_1DACBA174() & 1) == 0)
        {
          continue;
        }
      }

      sub_1DACB71E4();

      return v10;
    }
  }

  v22 = objc_opt_self();
  v23 = v1[11];
  v24 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v23);
  (*(v24 + 8))(v23, v24);
  v25 = *(v7 + 148);
  sub_1DAA640AC(v7);
  return [v22 enabledForCurrentLevel_];
}

uint64_t sub_1DAA6CF7C()
{
  v15 = sub_1DACB8024();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DACB8034();
  v4 = *(v14 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA4A8CC(0, &qword_1EE120040, sub_1DAA6D2B8);
  v13[1] = "e_auth_token_cache";
  v13[2] = v8;
  v19 = 0;
  sub_1DAA4A9E8(0, &qword_1EE11F4D8, &qword_1EE120050);
  sub_1DAA4AA40(0, &qword_1EE120050);
  v10 = *(*(v9 - 8) + 72);
  v11 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_1DACC2610;
  v18 = 0;
  sub_1DACB8044();
  v17 = 1;
  sub_1DACB8044();
  v16 = 2;
  sub_1DACB8044();
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6EA0], v14);
  (*(v0 + 104))(v3, *MEMORY[0x1E69D6E88], v15);
  sub_1DAA6D378();
  result = sub_1DACB8064();
  qword_1EE120120 = result;
  return result;
}

unint64_t sub_1DAA6D2B8()
{
  result = qword_1EE123938;
  if (!qword_1EE123938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123938);
  }

  return result;
}

unint64_t sub_1DAA6D324()
{
  result = qword_1EE123930;
  if (!qword_1EE123930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123930);
  }

  return result;
}

unint64_t sub_1DAA6D378()
{
  result = qword_1EE123940;
  if (!qword_1EE123940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123940);
  }

  return result;
}

uint64_t sub_1DAA6D3CC(uint64_t a1)
{
  v2 = sub_1DAA6D4B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

unint64_t sub_1DAA6D4B0()
{
  result = qword_1EE123928;
  if (!qword_1EE123928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123928);
  }

  return result;
}

void sub_1DAA6D504(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAA6D598(uint64_t *a1)
{
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v21[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RawAttributionSource(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v21[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(v11, v12);
  sub_1DAA6DD6C(v10);
  sub_1DAA4D09C(v6, type metadata accessor for AppConfiguration);
  sub_1DAA6E174(0, &qword_1EE1240F0, type metadata accessor for RawAttributionSource, MEMORY[0x1E69D6550]);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1DACB8424();
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 24))(v16, v17);
  swift_allocObject();
  swift_weakInit();
  v18 = sub_1DACB89D4();
  sub_1DACB8444();

  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1DAA6D7C0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA6D7F8(void **a1, char a2, uint64_t a3)
{
  v4 = *a1;
  sub_1DAA4D678(a3, v8);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  sub_1DAA4D460(v8, v5 + 24);
  *(v5 + 64) = v4;
  v6 = v4;
  sub_1DACB8C14();
}

uint64_t sub_1DAA6D88C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1DAA6D8F8()
{
  sub_1DAA52FAC(319, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  if (v0 <= 0x3F)
  {
    sub_1DAA52FAC(319, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAA6DA04()
{
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for RawAttributionSourceLogo.Resolved(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1DAA6DAA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), unint64_t *a5, void (*a6)(uint64_t))
{
  a4(319);
  if (v8 <= 0x3F)
  {
    sub_1DAA52FAC(319, a5, a6);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAA6DB7C()
{
  result = sub_1DACB7AB4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DAA6DC10(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_1DACB92F4();
  [v3 addObserver:a2 forZone:v4];
}

uint64_t sub_1DAA6DCD8()
{
  result = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DAA6DD6C@<X0>(uint64_t *a1@<X8>)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1DAA6E174(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v32[-v5];
  sub_1DAA6E174(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v2);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v32[-v9];
  v11 = sub_1DACB7E44();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = sub_1DACB92E4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v32[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v32[-v19];
  sub_1DACB9284();
  (*(v14 + 16))(v18, v20, v13);
  if (qword_1EE123DD8 != -1)
  {
    swift_once();
  }

  v21 = qword_1EE13E470;
  sub_1DACB7DF4();
  v22 = sub_1DACB9384();
  v24 = v23;
  (*(v14 + 8))(v20, v13);
  sub_1DAA6E1D8();
  sub_1DACB7A94();

  sub_1DAA6E428(v6);
  v25 = type metadata accessor for RawAttributionSourceLogo(0);
  swift_storeEnumTagMultiPayload();
  v26 = *(*(v25 - 8) + 56);
  v26(v6, 0, 1, v25);
  v27 = type metadata accessor for RawAttributionSource(0);
  v28 = *(v27 + 20);
  v29 = sub_1DACB7AB4();
  (*(*(v29 - 8) + 56))(a1 + v28, 1, 1, v29);
  v30 = *(v27 + 24);
  v26(a1 + v30, 1, 1, v25);
  *a1 = v22;
  a1[1] = v24;
  sub_1DAA6EBDC(v10, a1 + v28, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  return sub_1DAA6EBDC(v6, a1 + v30, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
}

void sub_1DAA6E174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA6E1D8()
{
  v0 = sub_1DACB7E44();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  sub_1DACB7DF4();
  v8 = sub_1DACB7D24();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = 21333;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0xE200000000000000;
  }

  sub_1DACB7DF4();
  v14 = sub_1DACB7D54();
  v16 = v15;
  v11(v5, v0);
  if (v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = 28261;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE200000000000000;
  }

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1DACB9C94();
  MEMORY[0x1E1276F20](0xD000000000000023, 0x80000001DACF1070);
  MEMORY[0x1E1276F20](v12, v13);
  MEMORY[0x1E1276F20](0x3D676E616C2E26, 0xE700000000000000);
  MEMORY[0x1E1276F20](v17, v18);

  MEMORY[0x1E1276F20](45, 0xE100000000000000);
  MEMORY[0x1E1276F20](v12, v13);

  MEMORY[0x1E1276F20](0x613D637273742E26, 0xEC000000656C7070);
  return v20[0];
}

id SCWDatabaseLog()
{
  if (SCWDatabaseLog_onceToken != -1)
  {
    SCWDatabaseLog_cold_1();
  }

  v1 = SCWDatabaseLog_databaseLog;

  return v1;
}

uint64_t sub_1DAA6E428@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_1DAA52FAC(0, qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v31 - v5;
  sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant(0);
  v35 = *(v15 - 8);
  v16 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7A94();
  v19 = sub_1DACB7AB4();
  v20 = *(v19 - 8);
  v21 = v20[6];
  result = v21(v14, 1, v19);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v38 = v20[2];
  v38(v18, v14, v19);
  v23 = *(v15 + 20);
  v31 = v18;
  *&v18[v23] = 0x4016000000000000;
  v24 = v20[1];
  v24(v14, v19);
  sub_1DACB7A94();
  v32 = v21;
  result = v21(v12, 1, v19);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v25 = v37;
  v38(v37, v12, v19);
  *(v25 + *(v15 + 20)) = 0x4016000000000000;
  v24(v12, v19);
  v26 = *(v35 + 56);
  v26(v25, 0, 1, v15);
  v27 = v36;
  sub_1DACB7A94();
  result = v32(v27, 1, v19);
  if (result != 1)
  {
    v28 = v33;
    v38(v33, v27, v19);
    *(v28 + *(v15 + 20)) = 0x4016000000000000;
    v24(v27, v19);
    v26(v28, 0, 1, v15);
    v29 = v34;
    sub_1DAA6E94C(v31, v34, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    v30 = type metadata accessor for RawAttributionSourceLogo.Unresolved(0);
    sub_1DAA6EA04(v25, v29 + *(v30 + 20), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
    return sub_1DAA6EA04(v28, v29 + *(v30 + 24), qword_1EE120CD0, type metadata accessor for RawAttributionSourceLogo.Unresolved.Variant);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAA6E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7AB4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1DAA6E94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __SCWDatabaseLog_block_invoke()
{
  SCWDatabaseLog_databaseLog = os_log_create("com.apple.stocks", "SCWDatabase");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DAA6EA04(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA52FAC(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EA70(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA52FAC(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EADC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6F818(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EB5C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA46854(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA6EBDC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1DAA6E174(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_1DAA6EC5C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = sub_1DACB92F4();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a5;
  v13[4] = sub_1DAA77048;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DAA76FC8;
  v13[3] = &block_descriptor_8;
  v12 = _Block_copy(v13);
  sub_1DACB71F4();
  sub_1DACB71F4();

  [v9 readContentsOfZone:v10 withBlock:v12];
  _Block_release(v12);
}

void sub_1DAA6EDC4()
{
  if (!qword_1EE124070)
  {
    sub_1DAA6EE5C();
    sub_1DAA6EEB0();
    sub_1DAA6EF04();
    v0 = sub_1DACB8D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE124070);
    }
  }
}

unint64_t sub_1DAA6EE5C()
{
  result = qword_1EE124D70[0];
  if (!qword_1EE124D70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE124D70);
  }

  return result;
}

unint64_t sub_1DAA6EEB0()
{
  result = qword_1EE125148;
  if (!qword_1EE125148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125148);
  }

  return result;
}

unint64_t sub_1DAA6EF04()
{
  result = qword_1EE125150;
  if (!qword_1EE125150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125150);
  }

  return result;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DAA6EF68(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a2;
  v50 = a1;
  v53 = type metadata accessor for RawAttributionSourceLogo;
  v6 = MEMORY[0x1E69E6720];
  sub_1DAA46854(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = v44 - v9;
  v52 = MEMORY[0x1E6968FB0];
  sub_1DAA46854(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], v6);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v44 - v12;
  v44[0] = v44 - v12;
  v14 = type metadata accessor for RawAttributionSource(0);
  v15 = *(v14 - 8);
  v49 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v48 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1DACB9944();
  v46 = *(v18 - 8);
  v47 = v18;
  v19 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DACB9924();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v24 = sub_1DACB9004();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v56[3] = type metadata accessor for SDSMetadataCache();
  v56[4] = &off_1F568E330;
  v56[0] = a3;
  *(a4 + 80) = 0;
  v26 = sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  *(a4 + 88) = 0u;
  v44[1] = "https://www.apple.com";
  v44[2] = v26;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0;
  sub_1DACB8FD4();
  v55 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F53C(&unk_1EE123DF0, MEMORY[0x1E69E8030]);
  v27 = MEMORY[0x1E69E8030];
  sub_1DAA46854(0, &qword_1EE123E78, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE123E70, &qword_1EE123E78, v27);
  sub_1DACB9BB4();
  (*(v46 + 104))(v21, *MEMORY[0x1E69E8090], v47);
  v28 = sub_1DACB9974();
  v45 = a4;
  *(a4 + 128) = v28;
  *(a4 + 24) = v50;
  *(a4 + 32) = v54;
  sub_1DAA4D678(v56, a4 + 40);
  v29 = sub_1DACB7AB4();
  v30 = *(*(v29 - 8) + 56);
  v30(v13, 1, 1, v29);
  v31 = type metadata accessor for RawAttributionSourceLogo(0);
  v32 = *(*(v31 - 8) + 56);
  v33 = v51;
  v32(v51, 1, 1, v31);
  v34 = v48;
  v35 = v49;
  v36 = *(v49 + 28);
  v30(&v48[v36], 1, 1, v29);
  v37 = *(v35 + 32);
  v32(&v34[v37], 1, 1, v31);
  *v34 = 0;
  *(v34 + 1) = 0xE000000000000000;
  sub_1DACB71F4();
  sub_1DAA6EB5C(v44[0], &v34[v36], &qword_1EE1263D0, v52);
  sub_1DAA6EB5C(v33, &v34[v37], &qword_1EE124698, v53);
  sub_1DAA46854(0, &qword_1EE1240F0, type metadata accessor for RawAttributionSource, MEMORY[0x1E69D6550]);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_1DACB8424();
  v42 = v45;
  *(v45 + 16) = v41;
  sub_1DAA6F4E8();
  __swift_destroy_boxed_opaque_existential_1(v56);
  return v42;
}

uint64_t sub_1DAA6F4E8()
{
  v1 = sub_1DACB8FB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + 128);
  aBlock[4] = sub_1DAA702F8;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_9;
  v12 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v14[1] = MEMORY[0x1E69E7CC0];
  sub_1DAA66A08(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  sub_1DAA6F818(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v10, v5, v12);
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DAA6F790()
{
  result = qword_1EE123EB0;
  if (!qword_1EE123EB0)
  {
    sub_1DAA571EC(255, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123EB0);
  }

  return result;
}

void sub_1DAA6F818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1DAA6F880@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1DAA6FA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v24 = sub_1DACB81D4();
  v23[0] = *(v24 - 8);
  v5 = v23[0];
  v6 = *(v23[0] + 64);
  MEMORY[0x1EEE9AC00](v24);
  v23[1] = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB86E4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v28 = type metadata accessor for AttributionSourceAssetService();
  v29 = &off_1F5682040;
  *&v27 = a2;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F53C(&qword_1EE1255A8, MEMORY[0x1E69D67A0]);
  v10 = MEMORY[0x1E69D67A0];
  v11 = MEMORY[0x1E69E62F8];
  sub_1DAA46854(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
  sub_1DAA585BC(&qword_1EE125508, &qword_1EE125510, v10);
  sub_1DACB9BB4();
  sub_1DAA6FEDC(0, &qword_1EE120018, sub_1DAA6FE48, sub_1DAA6FF74, sub_1DAA70010);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(a3 + 64) = sub_1DACB8354();
  v15 = MEMORY[0x1E69D6420];
  sub_1DAA46854(0, &qword_1EE1252D0, MEMORY[0x1E69D6420], MEMORY[0x1E69E6F90]);
  v16 = *(v5 + 72);
  v17 = (*(v23[0] + 80) + 32) & ~*(v23[0] + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DACC1D20;
  sub_1DACB81C4();
  v26 = v18;
  sub_1DAA4F53C(&qword_1EE1255D0, MEMORY[0x1E69D6420]);
  sub_1DAA46854(0, &qword_1EE125540, v15, v11);
  sub_1DAA585BC(&qword_1EE125530, &qword_1EE125540, v15);
  sub_1DACB9BB4();
  sub_1DAA46854(0, &qword_1EE11FF40, sub_1DAA70044, MEMORY[0x1E69D6A80]);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *(a3 + 16) = sub_1DACB8914();
  sub_1DAA4D460(&v27, a3 + 24);
  return a3;
}

void sub_1DAA6FE48()
{
  if (!qword_1EE1254E0)
  {
    sub_1DACB7AB4();
    sub_1DAA4F53C(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v0 = sub_1DACB9834();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1254E0);
    }
  }
}

void sub_1DAA6FEDC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5();
    v8 = sub_1DACB8374();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA6FF74()
{
  if (!qword_1EE11FCE8)
  {
    sub_1DACB7AB4();
    sub_1DAA4F53C(&qword_1EE1263D8, MEMORY[0x1E6968FB0]);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCE8);
    }
  }
}

void sub_1DAA70078()
{
  if (!qword_1EE11FD28)
  {
    sub_1DAA70108();
    sub_1DAA70300();
    sub_1DAA70450();
    v0 = sub_1DACB8D94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FD28);
    }
  }
}

unint64_t sub_1DAA70108()
{
  result = qword_1EE1208F0;
  if (!qword_1EE1208F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1208F0);
  }

  return result;
}

uint64_t sub_1DAA7015C(uint64_t a1)
{
  v2 = type metadata accessor for RawAttributionSource(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 40), *(a1 + 64));
  v7 = *(a1 + 24);
  sub_1DAA70354(v12);
  if (*(&v12[0] + 1))
  {
    v14 = v12[0];
    *v15 = v12[1];
    *&v15[16] = v13;
    sub_1DAB51504(&v14);
    v18 = v14;
    v8 = *v15;
    sub_1DAB53908(&v18);
    v17 = v8;
    sub_1DAA7139C(&v17, sub_1DAB5395C);
    v16 = *&v15[8];
    return sub_1DAB539D8(&v16, &qword_1EE123FD0, MEMORY[0x1E69E6158]);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(*(a1 + 32) + 16);
    sub_1DACB71F4();
    sub_1DACB8434();

    sub_1DAA66A08(&qword_1EE124AD8, type metadata accessor for RawAttributionSource);
    sub_1DACB8454();
    return sub_1DAA7139C(v5, type metadata accessor for RawAttributionSource);
  }
}

unint64_t sub_1DAA70300()
{
  result = qword_1EE123210;
  if (!qword_1EE123210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123210);
  }

  return result;
}

uint64_t sub_1DAA70354@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1DACB88F4();
  if (v8)
  {
    sub_1DACB8DB4();

    v5 = v8;
    v6 = v9;
    v7 = v10;
  }

  else
  {
    v7 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
  }

  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

unint64_t sub_1DAA70450()
{
  result = qword_1EE123218;
  if (!qword_1EE123218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123218);
  }

  return result;
}

uint64_t sub_1DAA704AC@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA6EDC4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAA70564(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
      v14 = v13;
      v15 = *(*(v13 - 8) + 56);
      v16 = v5 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }
  }

  return result;
}

uint64_t sub_1DAA706E8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
      v14 = v13;
      v15 = *(*(v13 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1DAA70878(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1DAA52FAC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1DAA709D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1DAA4D678(a1, v9);
  v4 = sub_1DAA6CBB4(v9);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    v6 = type metadata accessor for SDSAttributionProvider();
    result = sub_1DACB8224();
    if (result)
    {
      v8 = &off_1F5685C28;
LABEL_6:
      a2[3] = v6;
      a2[4] = v8;
      *a2 = result;
      return result;
    }

    __break(1u);
  }

  else
  {
    v6 = type metadata accessor for YahooAttributionProvider();
    result = sub_1DACB8244();
    if (result)
    {
      v8 = &off_1F568EB98;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA70AC0(uint64_t result, int a2, int a3)
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

uint64_t sub_1DAA70B98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}