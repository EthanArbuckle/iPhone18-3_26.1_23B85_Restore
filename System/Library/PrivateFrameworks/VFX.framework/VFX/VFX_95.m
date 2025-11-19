void sub_1AF85A72C()
{
  if (!qword_1EB632900)
  {
    sub_1AF43B694();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632900);
    }
  }
}

void sub_1AF85A7B8()
{
  if (!qword_1EB638B00)
  {
    sub_1AF446FD4();
    sub_1AF444B6C();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638B00);
    }
  }
}

void sub_1AF85A824(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1AF85A890(255, a3, a4, a5);
    v6 = sub_1AFDFE5D8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AF85A890(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1AF448BAC(255, a3, a4);
    v5 = sub_1AFDFD538();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF85A8E8()
{
  if (!qword_1EB63F460)
  {
    sub_1AF85A94C();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F460);
    }
  }
}

unint64_t sub_1AF85A94C()
{
  result = qword_1EB63F468;
  if (!qword_1EB63F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F468);
  }

  return result;
}

uint64_t sub_1AF85A9A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AF85A9E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1AFDFC318();
    a3(255);
    sub_1AF4644D8();
    v5 = sub_1AFDFE5D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id sub_1AF85AA64(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_1AF85AA70(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void sub_1AF85AAA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1AF0D0DD8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1AFDFE5D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF85AB20()
{
  if (!qword_1EB638780)
  {
    type metadata accessor for XcodeInfo();
    sub_1AF444A40();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638780);
    }
  }
}

void sub_1AF85ACA4()
{
  if (!qword_1EB63F4F0)
  {
    _s17CodeSourceSnippetCMa();
    sub_1AF446970();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F4F0);
    }
  }
}

void sub_1AF85AD10()
{
  if (!qword_1EB63F500)
  {
    sub_1AF0D0DD8(255, &qword_1EB63F508, sub_1AF445070, MEMORY[0x1E69E62F8]);
    sub_1AF446970();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F500);
    }
  }
}

uint64_t sub_1AF85AE08(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4)
{
  sub_1AF85AE78(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AF85AE78(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1AF447DFC(255, a3);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1AF85AED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AFDFC318();
    v7 = sub_1AF4644D8();
    v8 = a3(a1, v6, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1AF85AF40()
{
  if (!qword_1EB63F5A0)
  {
    sub_1AF4498F4(255, &qword_1EB638930);
    sub_1AF85AFC0();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F5A0);
    }
  }
}

unint64_t sub_1AF85AFC0()
{
  result = qword_1EB63F5B0;
  if (!qword_1EB63F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F5B0);
  }

  return result;
}

void sub_1AF85B044()
{
  if (!qword_1EB63F5C0)
  {
    sub_1AF85B0F8(255, &unk_1EB638948, sub_1AF445B90, &type metadata for StringCodingKeys, type metadata accessor for _KeyBox);
    type metadata accessor for _BinaryDecoder.DataStream();
    sub_1AF615A6C();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F5C0);
    }
  }
}

void sub_1AF85B0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AF85B160()
{
  if (!qword_1EB633BA0)
  {
    sub_1AF85B1C0();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633BA0);
    }
  }
}

unint64_t sub_1AF85B1C0()
{
  result = qword_1EB634130;
  if (!qword_1EB634130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB634130);
  }

  return result;
}

void sub_1AF85B214()
{
  if (!qword_1EB6385F0)
  {
    type metadata accessor for VFXREBindingMeshData();
    sub_1AF443A18();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6385F0);
    }
  }
}

uint64_t sub_1AF85B280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AF0D0DD8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF85B2F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF85B840(255, a3, a4, MEMORY[0x1E69E62F8]);
    sub_1AF43D560();
    v5 = sub_1AFDFE5D8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AF85B430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1AF85B5B0()
{
  if (!qword_1EB63F640)
  {
    sub_1AF85B61C();
    sub_1AF43B694();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F640);
    }
  }
}

void sub_1AF85B61C()
{
  if (!qword_1EB63F648)
  {
    type metadata accessor for RGPass(255);
    type metadata accessor for RGResource(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63F648);
    }
  }
}

void sub_1AF85B690()
{
  if (!qword_1EB63F650)
  {
    sub_1AF0D0DD8(255, &qword_1EB63F658, sub_1AF4489BC, MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F650);
    }
  }
}

void sub_1AF85B728()
{
  if (!qword_1EB63F688)
  {
    sub_1AF85B840(255, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F688);
    }
  }
}

void sub_1AF85B7B4()
{
  if (!qword_1EB63F690)
  {
    sub_1AF85B840(255, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F690);
    }
  }
}

void sub_1AF85B840(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF85B890(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1AFDFE5D8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1AF85B8E4()
{
  if (!qword_1EB638C80)
  {
    sub_1AF447D7C();
    sub_1AF447E5C();
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB638C80);
    }
  }
}

uint64_t sub_1AF85B95C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = result;
  v8 = HIDWORD(a3);
  if (HIDWORD(a3) || a3 != -1)
  {
    v9 = *v3;
    swift_unownedRetainStrong();

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    v10 = sub_1AF80E324(v7, a2, a3);

    result = swift_unknownObjectUnownedLoadStrong();
    if (v10)
    {
      if (result)
      {
        result = swift_unknownObjectRelease();
      }

      if (*(v4 + 24) == 1)
      {
        swift_unownedRetainStrong();
        v12[0] = a3;
        v12[1] = v8;
        v13 = v9;
        sub_1AF57BF68();
        v16 = v11;
        v17 = &off_1F2536190;
        v14 = a2;
        v15 = v7;
        v18 = 11;

        sub_1AF6C67D0(v12);

        return sub_1AF57955C(v12);
      }
    }

    else if (result)
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

char *sub_1AF85BAAC(unint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = sub_1AF80E468(byte_1F25007F8[v4 + 32], a1, a2);
    v7 = *(v6 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1AF4238E8(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (!*(v6 + 16))
      {
LABEL_2:

        goto LABEL_3;
      }
    }

    memcpy(&v5[16 * *(v5 + 2) + 32], (v6 + 32), 16 * v7);

    if (v7)
    {
      *(v5 + 2) += v7;
    }

LABEL_3:
    ++v4;
  }

  while (v4 != 4);
  return v5;
}

uint64_t sub_1AF85BBBC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v8 = *a2;
  v9 = *a1;
  swift_unownedRetainStrong();
  v10 = **(v9 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);

  LOBYTE(v17[0]) = 1;
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1AF62C02C(v8, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v10);
  if (v4)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v13 = v12;
    v14 = HIDWORD(v12);
    swift_unownedRetainStrong();

    if (a1[3])
    {
      swift_unownedRetainStrong();
      v25 = 1;
      v17[0] = v13;
      v17[1] = v14;
      v18 = v9;
      v19 = v8;
      v20 = v11;
      v21 = 1;
      v22 = 0;
      v23 = 1;
      v24 = 2;
      sub_1AF6C67D0(v17);

      sub_1AF57955C(v17);
    }

    else
    {
    }

    if (swift_unknownObjectUnownedLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    sub_1AF92525C(v13, a3);
    KeyPath = swift_getKeyPath();
    sub_1AF85B95C(a3, KeyPath, v13);

    *a4 = v13;
    a4[1] = v14;
  }

  return result;
}

uint64_t sub_1AF85BD5C(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, char **a7)
{
  if (a3 == 5)
  {
    v11 = sub_1AF85BAAC(a4, a5);
    v12 = *(v11 + 16);
    if (v12)
    {
LABEL_3:
      v27 = a2;
      v28 = a6;
      for (i = (v11 + 40); ; i += 2)
      {
        v14 = *(i - 2);
        v15 = *(i - 1);
        v16 = *i;

        if (v14 == -1 && v15 == 0)
        {
          goto LABEL_16;
        }

        if (v14 < 0)
        {
          goto LABEL_16;
        }

        if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v14)
        {
          goto LABEL_16;
        }

        v18 = *(v16 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v14;
        if (v15 != -1 && *(v18 + 8) != v15)
        {
          goto LABEL_16;
        }

        v19 = *(*(*(v16 + 88) + 8 * *(v18 + 6) + 32) + 16);
        v20 = *(v19 + 128);
        if (!*(v20 + 16))
        {
          goto LABEL_16;
        }

        v21 = sub_1AF449CB8(a1);
        if ((v22 & 1) == 0)
        {
          goto LABEL_16;
        }

        v23 = *(*(v19 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32);

        if (v23 == a1)
        {
          break;
        }

LABEL_17:
        if (!--v12)
        {
        }
      }

      v24 = *(v27 + 8);
      type metadata accessor for VFXAttribute();

      inited = swift_initStackObject();
      *(inited + 16) = v16;
      *(inited + 24) = v14;
      *(inited + 28) = v15;
      *(inited + 32) = a1;
      *(inited + 40) = v24;
      swift_unownedRetain();

      sub_1AF68E7E4(inited, v28, a7);
LABEL_16:

      goto LABEL_17;
    }
  }

  else
  {
    v11 = sub_1AF80E468(a3, a4, a5);
    v12 = *(v11 + 16);
    if (v12)
    {
      goto LABEL_3;
    }
  }
}

void sub_1AF85BF44(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8, char *a9, char **a10)
{
  v106 = a1;
  v102 = a10;
  v103 = a9;
  v17 = a3;
  sub_1AF85C808();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v104 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17 == 5)
  {
    v21 = sub_1AF85BAAC(a4, a5);
  }

  else
  {
    v21 = sub_1AF80E468(a3, a4, a5);
  }

  v22 = *(v21 + 16);
  v23 = v106;
  if (v22)
  {
    v24 = a6;
    v99 = a2;
    v100 = a7;
    v97 = a8;
    v25 = 0;
    v98 = 0;
    v101 = v21;
    v26 = v21 + 32;
    i = &unk_1ED72C000;
    v96 = (a6 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v105 = v21 + 32;
    while (1)
    {
      v28 = (v26 + 16 * v25);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v28 + 1);

      v32 = v29 == -1 && v30 == 0;
      if (!v32 && (v29 & 0x80000000) == 0 && (v33 = v29, v34 = (v31 + i[284]), v34[1] > v29) && ((v35 = *v34 + 12 * v29, v30 == -1) || *(v35 + 8) == v30))
      {
        v36 = *(*(*(v31 + 88) + 8 * *(v35 + 6) + 32) + 16);
        v37 = *(v36 + 128);
        if (*(v37 + 16) && (v38 = sub_1AF449CB8(v23), (v39 & 1) != 0))
        {
          v40 = *(*(v36 + 24) + 16 * *(*(v37 + 56) + 8 * v38) + 32);

          if (v40 == v23)
          {
            v41 = *(v99 + 8);
            type metadata accessor for VFXAttribute();

            inited = swift_initStackObject();
            *(inited + 16) = v31;
            *(inited + 24) = v29;
            *(inited + 28) = v30;
            *(inited + 32) = v23;
            *(inited + 40) = v41;
            v93 = inited;
            swift_unownedRetain();

            v95 = v29 | (v30 << 32);
            sub_1AF3CB570(v95, &v107);
            v43 = v107;
            v44 = v108;
            v45 = WORD4(v108) | (BYTE10(v108) << 16);
            v112 = v107;
            v94 = *(&v107 + 1);
            v113 = *(&v107 + 1);
            v114 = v108;
            v115 = WORD4(v108) & 0x101;
            v116 = BYTE10(v108) & 1;
            if ((v100 & 1) != 0 || (v45 & 0x10000) != 0)
            {
              if (*(v108 + 16))
              {
                v111 = 0;
                v110 = MEMORY[0x1E69E7CC0];
                sub_1AF3CB6AC(v103, &v107);
                v117[0] = v107;
                v117[1] = v108;
                *v118 = v109[0];
                *&v118[9] = *(v109 + 9);
                v46 = 1 << *(v44 + 32);
                if (v46 < 64)
                {
                  v47 = ~(-1 << v46);
                }

                else
                {
                  v47 = -1;
                }

                v48 = v47 & *(v44 + 64);
                swift_bridgeObjectRetain_n();
                v49 = v24;

                sub_1AF687F08(v117, &v107);
                v50 = 0;
                v51 = (v46 + 63) >> 6;
                v52 = v98;
                for (i = &unk_1ED72C000; v48; v23 = v106)
                {
                  v53 = v50;
LABEL_34:
                  v54 = *(v44 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v48))));
                  v55 = *v54;
                  LOBYTE(v54) = *(v54 + 4);
                  v48 &= v48 - 1;
                  LODWORD(v107) = v55;
                  BYTE4(v107) = v54;
                  sub_1AF7CC144(&v107, &v112, &v111, v95, v49, v103, v117, v102, &v110);
                }

                while (1)
                {
                  v53 = v50 + 1;
                  if (v50 + 1 >= v51)
                  {
                    break;
                  }

                  v48 = *(v44 + 8 * v50++ + 72);
                  if (v48)
                  {
                    v50 = v53;
                    goto LABEL_34;
                  }
                }

                v98 = v52;

                sub_1AF85C8B0(v117, sub_1AF85C860);

                v24 = v49;

                sub_1AF85C8B0(v117, sub_1AF85C860);
                v56 = *(v110 + 2);
                v94 = v110;
                if (v56)
                {
                  v57 = v110 + 36;
                  v58 = v104;
                  do
                  {
                    v60 = *(v57 - 1);
                    v61 = v114;
                    LOBYTE(v107) = *v57;
                    v62 = sub_1AF419B74(v60 | (v107 << 32));
                    if (v63)
                    {
                      v64 = v62;
                      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                      *&v107 = v61;
                      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                      {
                        sub_1AF8494C8();
                        v61 = v107;
                      }

                      v66 = *(v61 + 56);
                      v67 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
                      v68 = *(v67 - 8);
                      v69 = v66 + *(v68 + 72) * v64;
                      v70 = v104;
                      sub_1AF687DC4(v69, v104);
                      sub_1AF6B3BBC(v64, v61);
                      v114 = v61;
                      v71 = v67;
                      v58 = v70;
                      (*(v68 + 56))(v70, 0, 1, v71);
                      v23 = v106;
                      i = &unk_1ED72C000;
                    }

                    else
                    {
                      v59 = type metadata accessor for GraphScriptingConfig.ScriptInfo();
                      (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
                    }

                    sub_1AF85C8B0(v58, sub_1AF85C808);
                    v57 += 8;
                    --v56;
                  }

                  while (v56);
                }

                v72 = *v97 | v111;
                *v97 = v72 & 1;
                if (v72)
                {
                  sub_1AF7C08E0();
                  sub_1AF7C0B40();
                }

                v73 = v114;
                v94 = v113;
                v90 = v115;
                if (HIBYTE(v115))
                {
                  v74 = 256;
                }

                else
                {
                  v74 = 0;
                }

                if (v116)
                {
                  v75 = 0x10000;
                }

                else
                {
                  v75 = 0;
                }

                v76 = v112;
                v91 = v91 & 0xFF000000 | v115 | v75 | v74;
                v77 = v95;
                sub_1AFBFE468(v112, v113, v114, v91, v95);
                v92 = v92 & 0xFF000000 | v90 | v74;
                sub_1AFBFE468(v76, v94, v73, v92, v77);
              }

              else
              {
                i = &unk_1ED72C000;
                if (v96[1] <= v33 || (v78 = (*v96 + 12 * v33), v30 != -1) && v78[2] != v30)
                {
                  v26 = v105;
                  goto LABEL_58;
                }

                v79 = *(*(v24 + 144) + 8 * *v78 + 32);
                v80 = *(v78 + 2);
                os_unfair_lock_lock(*(v79 + 344));
                v81 = v89 & 0xFF000000 | v45 & 1;
                if ((v45 >> 8))
                {
                  v82 = 256;
                }

                else
                {
                  v82 = 0;
                }

                v83 = v81 | v82;
                v84 = v80;
                v85 = v24;
                v86 = v24;
                v87 = v98;
                sub_1AFC234A4(v79, v84, v43, v94, v44, v81 | v82, v86, v95);
                v98 = v87;
                if (v87)
                {

                  os_unfair_lock_unlock(*(v79 + 344));
                  __break(1u);
                  return;
                }

                v89 = v83;
                os_unfair_lock_unlock(*(v79 + 344));
                v23 = v106;
                v24 = v85;
              }

              v26 = v105;
            }

            else
            {
              v26 = v105;
              i = &unk_1ED72C000;
            }

LABEL_58:

            goto LABEL_15;
          }
        }

        else
        {
        }

        v26 = v105;
        i = &unk_1ED72C000;
      }

      else
      {
      }

LABEL_15:
      if (++v25 == v22)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_16:
}

void sub_1AF85C808()
{
  if (!qword_1EB634090)
  {
    type metadata accessor for GraphScriptingConfig.ScriptInfo();
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB634090);
    }
  }
}

void sub_1AF85C860()
{
  if (!qword_1EB633D20)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB633D20);
    }
  }
}

uint64_t sub_1AF85C8B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AF85C910(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 5)
  {
    v8 = sub_1AF85BAAC(a4, a5);
    v9 = *(v8 + 16);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = sub_1AF80E468(a3, a4, a5);
    v9 = *(v8 + 16);
    if (v9)
    {
LABEL_3:
      v31 = a1;
      v10 = (v8 + 40);
      do
      {
        v12 = *(v10 - 2);
        v11 = *(v10 - 1);
        v13 = *v10;

        v14 = v12 == -1 && v11 == 0;
        if (!v14 && (v12 & 0x80000000) == 0 && *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v12 && ((v15 = *(v13 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v12, v11 == -1) || *(v15 + 8) == v11) && (v16 = *(*(*(v13 + 88) + 8 * *(v15 + 6) + 32) + 16), v17 = *(v16 + 128), *(v17 + 16)) && (v18 = sub_1AF449CB8(v31), (v19 & 1) != 0))
        {
          v20 = *(*(v16 + 24) + 16 * *(*(v17 + 56) + 8 * v18) + 32);

          if (v20 == v31)
          {
            v28 = *(a2 + 8);
            type metadata accessor for VFXAttribute();

            inited = swift_initStackObject();
            *(inited + 16) = v13;
            *(inited + 24) = v12;
            *(inited + 28) = v11;
            *(inited + 32) = v31;
            *(inited + 40) = v28;
            swift_unownedRetain();

            sub_1AF3CB570(v12 | (v11 << 32), &v32);
            v22 = v33;
            v23 = v34 | (v35 << 16);
            v27 = v34 & 0x100;
            LOWORD(v28) = v32;

            v25 = sub_1AF7D5DD8(v24, inited, a6);
            swift_bridgeObjectRelease_n();

            v29 = v29 & 0xFF000000 | v23 & 1 | v27 | v23 & 0x10000;
            sub_1AFBFE468(v28, v22, v25, v29, *(inited + 24));
          }
        }

        else
        {
        }

        v10 += 2;
        --v9;
      }

      while (v9);
    }
  }
}

uint64_t sub_1AF85CBDC()
{
  result = sub_1AF85CBFC();
  qword_1EB6C3230 = result;
  return result;
}

uint64_t sub_1AF85CBFC()
{
  v0 = sub_1AFDFC6D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AFDFC818();
  v5 = sub_1AF85CE8C();
  sub_1AFDFC878();
  swift_allocObject();
  v6 = sub_1AFDFC868();
  sub_1AFDFC848();
  sub_1AFDFC838();
  sub_1AFDFC828();
  sub_1AFDFC858();

  v7 = MEMORY[0x1B2718210](v5, v6);
  (*(v1 + 104))(v4, *MEMORY[0x1E6977B48], v0);
  sub_1AFDFC7E8();
  if (qword_1EB637198 != -1)
  {
    swift_once();
  }

  sub_1AFDFC938();
  swift_allocObject();

  v8 = sub_1AFDFC928();
  sub_1AFDFC7D8();

  v9 = sub_1AFDFC7B8();
  if (*v10 >> 62)
  {
    sub_1AFDFE108();
  }

  sub_1AF64E1E4(0, 0, v8);

  v9(v12, 0);

  return v7;
}

uint64_t sub_1AF85CE8C()
{
  v53 = *MEMORY[0x1E69E9840];
  v51 = sub_1AFDFCAF8();
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v0);
  v46 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v50 = &v40 - v4;
  sub_1AF85D4D4();
  v49 = v5;
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1AFDFCF78();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1AFDFCB78();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFC8A8();
  swift_allocObject();
  v41 = sub_1AFDFC898();
  sub_1AFDFCF58();
  v18 = sub_1AFDFCF08();
  v20 = v19;
  v21 = *(v10 + 8);
  v21(v13, v9);
  *&v52 = v18;
  *(&v52 + 1) = v20;
  sub_1AFDFCB68();
  sub_1AFDFCF58();
  v22 = sub_1AFDFCF08();
  v24 = v23;
  v21(v13, v9);
  *&v52 = v22;
  *(&v52 + 1) = v24;
  sub_1AFDFCBB8();
  sub_1AF85D538();
  sub_1AF85D590();
  v42 = v17;
  v25 = v41;
  sub_1AFDFCBA8();
  sub_1AF439ED8(v52, *(&v52 + 1));
  v45 = v8;
  sub_1AFDFCB88();
  v26 = sub_1AFDFC888();
  sec_protocol_options_set_min_tls_protocol_version(v26, tls_protocol_version_TLSv12);
  swift_unknownObjectRelease();
  v27 = sub_1AFDFC888();
  v28 = sub_1AFDFCAD8();
  sub_1AFDFCF58();
  v29 = sub_1AFDFCF08();
  v31 = v30;
  v21(v13, v9);
  v32 = v31 >> 62;
  if ((v31 >> 62) > 1)
  {
    if (v32 != 2)
    {
      *(&v52 + 6) = 0;
      *&v52 = 0;
      goto LABEL_12;
    }

    if (sub_1AFDFBDB8())
    {
      sub_1AFDFBDE8();
    }

    sub_1AFDFBDD8();
    v33 = v46;
  }

  else
  {
    if (!v32)
    {
      *&v52 = v29;
      WORD4(v52) = v31;
      BYTE10(v52) = BYTE2(v31);
      BYTE11(v52) = BYTE3(v31);
      BYTE12(v52) = BYTE4(v31);
      BYTE13(v52) = BYTE5(v31);
LABEL_12:
      v33 = v46;
      goto LABEL_13;
    }

    v34 = sub_1AFDFBDB8();
    v33 = v46;
    if (v34)
    {
      sub_1AFDFBDE8();
    }

    sub_1AFDFBDD8();
  }

LABEL_13:
  sub_1AFDFCAE8();
  sub_1AF587E7C(v29, v31);
  v35 = sub_1AFDFCAD8();
  sec_protocol_options_add_pre_shared_key(v27, v28, v35);

  swift_unknownObjectRelease();
  v36 = *(v48 + 8);
  v37 = v51;
  v36(v33, v51);
  v38 = sub_1AFDFC888();
  sec_protocol_options_append_tls_ciphersuite(v38, 0xA8u);
  swift_unknownObjectRelease();
  v36(v50, v37);
  (*(v47 + 8))(v45, v49);
  (*(v43 + 8))(v42, v44);
  return v25;
}

void sub_1AF85D4D4()
{
  if (!qword_1EB63F6C0)
  {
    sub_1AFDFCBB8();
    sub_1AF85D538();
    v0 = sub_1AFDFCB98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F6C0);
    }
  }
}

unint64_t sub_1AF85D538()
{
  result = qword_1EB63F6C8;
  if (!qword_1EB63F6C8)
  {
    sub_1AFDFCBB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F6C8);
  }

  return result;
}

unint64_t sub_1AF85D590()
{
  result = qword_1EB63F6D0;
  if (!qword_1EB63F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F6D0);
  }

  return result;
}

uint64_t sub_1AF85D5EC()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF85D6D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF85EA90();
  *a1 = result;
  return result;
}

void sub_1AF85D708(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000072;
  v4 = 0x6579616C50584656;
  v5 = 0xEB00000000565472;
  v6 = 0x6579616C50584656;
  v7 = 0xE800000000000000;
  v8 = 0x6C74635846565345;
  if (v2 != 4)
  {
    v8 = 0x726568744FLL;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000063614D72;
  v10 = 0x6579616C50584656;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x80000001AFF26120;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

float sub_1AF85D8A8()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = sub_1AFDFCF78();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  v11 = 93;
  v2 = task_info(*MEMORY[0x1E69E9A60], 0x16u, v12, &v11);
  if (v2)
  {
    mach_error_string(v2);
    sub_1AFDFCF68();
    v3 = sub_1AFDFCF48();
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0x206E776F6E6B6E55;
    }

    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xED0000726F727245;
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    sub_1AFDFE218();

    v10[1] = 0x80000001AFF36B10;
    MEMORY[0x1B2718AE0](v5, v6);

    v7 = sub_1AFDFD9F8();
    v10[0] = 0;
    sub_1AF0D4F18(v7, v10, 0xD00000000000002FLL, 0x80000001AFF36B10);

    return 0.0;
  }

  else
  {
    v9 = 0.0;
    if (v11 >= 0x26)
    {
      return v13 * 0.000000953674316;
    }

    return v9;
  }
}

void sub_1AF85DB04(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v46[4] = *MEMORY[0x1E69E9840];
  v45 = sub_1AFDFC128();
  v3 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45, v4);
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v42 = v38 - v8;
  v9 = [objc_opt_self() defaultManager];
  sub_1AFDFC0D8();
  v10 = objc_allocWithZone(VFXNSZipFileArchive);
  v11 = sub_1AFDFCEC8();

  v46[0] = 0;
  v12 = [v10 initWithPath:v11 options:0 error:v46];

  if (!v12)
  {
    v36 = v46[0];
    sub_1AFDFBF58();

    swift_willThrow();
    return;
  }

  v41 = v9;
  v43 = v2;
  v13 = v46[0];
  v14 = [v12 entryNames];
  v15 = sub_1AFDFD418();

  v16 = *(v15 + 16);
  v38[1] = v15;
  if (!v16)
  {
LABEL_12:

    return;
  }

  v17 = v15 + 32;
  v44 = (v3 + 8);
  v18 = MEMORY[0x1E69E6158];
  while (1)
  {
    sub_1AF0D5A54(v17, v46);
    if (!swift_dynamicCast())
    {
      goto LABEL_6;
    }

    v19 = v12;
    v20 = sub_1AFDFCEC8();
    v21 = [v20 pathComponents];

    v22 = v18;
    v23 = sub_1AFDFD418();

    v24 = v23[2];
    v46[0] = v23;
    v46[1] = v23 + 4;
    v46[2] = (v24 != 0);
    v46[3] = ((2 * v24) | 1);
    sub_1AF85F4AC(0, &qword_1EB63F6E0, v22, MEMORY[0x1E69E6948]);
    sub_1AF85F3A0();
    sub_1AFDFCD98();

    sub_1AFDFC088();

    v25 = v39;
    sub_1AFDFC098();
    sub_1AFDFC0D8();
    v26 = *v44;
    (*v44)(v25, v45);
    v27 = sub_1AFDFCEC8();

    v46[0] = 0;
    LODWORD(v21) = [v41 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:v46];

    if (!v21)
    {
      v37 = v46[0];

      sub_1AFDFBF58();

      swift_willThrow();
      v26(v42, v45);
      return;
    }

    v28 = v46[0];
    v29 = sub_1AFDFCEC8();

    v12 = v19;
    v30 = [v19 contentsForEntryName_];

    if (v30)
    {
      break;
    }

    v26(v42, v45);
LABEL_5:
    v18 = MEMORY[0x1E69E6158];
LABEL_6:
    v17 += 32;
    if (!--v16)
    {
      goto LABEL_12;
    }
  }

  v31 = sub_1AFDFC1B8();
  v33 = v32;

  v34 = v42;
  v35 = v43;
  sub_1AFDFC1D8();
  v43 = v35;
  if (!v35)
  {
    v26(v34, v45);
    sub_1AF439ED8(v31, v33);
    goto LABEL_5;
  }

  v26(v34, v45);
  sub_1AF439ED8(v31, v33);
}

uint64_t withUnarchivedProject(name:url:body:)(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v6 = v5;
  v71 = a5;
  v72 = a4;
  v75 = a1;
  v76 = a3;
  v82 = *MEMORY[0x1E69E9840];
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1AFDFC128();
  v77 = *(v13 - 8);
  v78 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v73 = &v69 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v79 = &v69 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v69 - v24;
  v26 = NSTemporaryDirectory();
  sub_1AFDFCEF8();

  sub_1AFDFC018();

  v70 = objc_opt_self();
  v27 = [v70 defaultManager];
  v28 = v25;
  v29 = sub_1AFDFC048();
  v80 = 0;
  LODWORD(v25) = [v27 createDirectoryAtURL:v29 withIntermediateDirectories:1 attributes:0 error:&v80];

  if (v25)
  {
    v30 = v80;
  }

  else
  {
    v31 = v80;
    v32 = sub_1AFDFBF58();

    swift_willThrow();
    v6 = 0;
  }

  v80 = v75;
  v81 = a2;

  MEMORY[0x1B2718AE0](45, 0xE100000000000000);
  sub_1AFDFC308();
  sub_1AF85E898(&qword_1EB63F6D8, MEMORY[0x1E69695A8]);
  v33 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v33);

  (*(v9 + 8))(v12, v8);
  MEMORY[0x1B2718AE0](2019980846, 0xE400000000000000);
  v34 = v79;
  sub_1AFDFC088();
  sub_1AF85DB04(v76, v34);
  v35 = v78;
  if (v6)
  {

    v36 = *(v77 + 8);
    v37 = v79;
  }

  else
  {
    v76 = v28;
    v38 = v73;
    sub_1AFDFC018();
    v39 = v70;
    v40 = [v70 defaultManager];
    v41 = sub_1AFDFC048();
    v80 = 0;
    v42 = [v40 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:0 error:&v80];

    if (v42)
    {
      v43 = v80;
    }

    else
    {
      v44 = v80;
      v45 = sub_1AFDFBF58();

      swift_willThrow();
    }

    v46 = v74;
    sub_1AFDFC088();

    v47 = [v39 defaultManager];
    v37 = v79;
    v48 = v38;
    v49 = sub_1AFDFC048();
    v50 = sub_1AFDFC048();
    v80 = 0;
    v51 = v46;
    LODWORD(v46) = [v47 moveItemAtURL:v49 toURL:v50 error:&v80];

    if (v46)
    {
      v52 = qword_1ED730EA0;
      v53 = v80;
      v54 = v77;
      if (v52 != -1)
      {
        swift_once();
      }

      v80 = 0x2065766F6DLL;
      v81 = 0xE500000000000000;
      sub_1AF85E898(&qword_1EB632790, MEMORY[0x1E6968FB0]);
      v55 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v55);

      MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
      v56 = v74;
      v57 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v57);

      v59 = v80;
      v58 = v81;
      v60 = sub_1AFDFD9F8();
      if (qword_1ED731058 != -1)
      {
        v67 = v60;
        swift_once();
        v60 = v67;
      }

      v80 = 0;
      sub_1AF0D4F18(v60, &v80, v59, v58);

      v36 = *(v54 + 8);
      v36(v73, v35);
      v36(v37, v35);
      (*(v54 + 32))(v37, v56, v35);
    }

    else
    {
      v61 = v80;
      v62 = sub_1AFDFBF58();

      swift_willThrow();
      v36 = *(v77 + 8);
      v36(v51, v35);
      v36(v48, v35);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v80 = 0;
      v81 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF36A80);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v64 = v80;
      v63 = v81;
      v65 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v68 = v65;
        swift_once();
        v65 = v68;
      }

      v80 = 0;
      sub_1AF0D4F18(v65, &v80, v64, v63);
    }

    v72(v37);
    v28 = v76;
  }

  v36(v37, v35);
  return (v36)(v28, v35);
}

uint64_t sub_1AF85E898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF85E8E0()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v0, v1);
  v3 = sub_1AFDFCEC8();
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v3, *MEMORY[0x1E695E480], 0);

  if (CFProperty && (swift_dynamicCast() & 1) != 0)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF85E9B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    return 5;
  }

  v2 = sub_1AFDFCEF8();
  v4 = v3;

  if (v2 != 0xD000000000000013 || 0x80000001AFF36AB0 != v4)
  {
    v6 = sub_1AFDFEE28();

    result = 0;
    if (v6)
    {
      return result;
    }

    return 5;
  }

  return 0;
}

uint64_t sub_1AF85EA90()
{
  v0 = sub_1AFDFE638();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1AF85EADC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v74 = a5;
  v75 = a4;
  v78 = a1;
  v79 = a3;
  v85 = *MEMORY[0x1E69E9840];
  v8 = sub_1AFDFC318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1AFDFC128();
  v82 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80, v13);
  v73 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v77 = &v72 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v81 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v72 - v23;
  v25 = NSTemporaryDirectory();
  sub_1AFDFCEF8();

  sub_1AFDFC018();

  v76 = objc_opt_self();
  v26 = [v76 defaultManager];
  v27 = v24;
  v28 = sub_1AFDFC048();
  v83 = 0;
  LODWORD(v24) = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v83];

  if (v24)
  {
    v29 = v83;
  }

  else
  {
    v30 = v83;
    v31 = sub_1AFDFBF58();

    swift_willThrow();
    v6 = 0;
  }

  v83 = v78;
  v84 = a2;

  MEMORY[0x1B2718AE0](45, 0xE100000000000000);
  sub_1AFDFC308();
  sub_1AF85E898(&qword_1EB63F6D8, MEMORY[0x1E69695A8]);
  v32 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v32);

  (*(v9 + 8))(v12, v8);
  MEMORY[0x1B2718AE0](2019980846, 0xE400000000000000);
  v33 = v27;
  v34 = v81;
  sub_1AFDFC088();
  sub_1AF85DB04(v79, v34);
  v35 = v80;
  if (v6)
  {

    v36 = *(v82 + 8);
    v36(v34, v35);
    return (v36)(v33, v35);
  }

  else
  {
    sub_1AFDFC018();
    v38 = [v76 defaultManager];
    v39 = sub_1AFDFC048();
    v83 = 0;
    v40 = [v38 createDirectoryAtURL:v39 withIntermediateDirectories:1 attributes:0 error:&v83];

    if (v40)
    {
      v41 = v83;
    }

    else
    {
      v42 = v83;
      v43 = sub_1AFDFBF58();

      swift_willThrow();
    }

    v44 = v73;
    v45 = v77;
    sub_1AFDFC088();

    v46 = [v76 defaultManager];
    v47 = sub_1AFDFC048();
    v48 = sub_1AFDFC048();
    v83 = 0;
    v49 = [v46 moveItemAtURL:v47 toURL:v48 error:&v83];

    if (v49)
    {
      v50 = qword_1ED730EA0;
      v51 = v83;
      if (v50 != -1)
      {
        swift_once();
      }

      v83 = 0x2065766F6DLL;
      v84 = 0xE500000000000000;
      sub_1AF85E898(&qword_1EB632790, MEMORY[0x1E6968FB0]);
      v52 = v81;
      v53 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v53);

      MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
      v54 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v54);

      v56 = v83;
      v55 = v84;
      v57 = sub_1AFDFD9F8();
      v58 = v44;
      if (qword_1ED731058 != -1)
      {
        v70 = v57;
        swift_once();
        v57 = v70;
      }

      v83 = 0;
      sub_1AF0D4F18(v57, &v83, v56, v55);

      v59 = v82;
      v60 = *(v82 + 8);
      v60(v77, v35);
      v60(v52, v35);
      (*(v59 + 32))(v52, v58, v35);
    }

    else
    {
      v61 = v83;
      v62 = sub_1AFDFBF58();

      swift_willThrow();
      v63 = v44;
      v60 = *(v82 + 8);
      v60(v63, v35);
      v60(v45, v35);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v83 = 0;
      v84 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000025, 0x80000001AFF36A80);
      swift_getErrorValue();
      sub_1AFDFEDD8();
      v65 = v83;
      v64 = v84;
      v66 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v71 = v66;
        swift_once();
        v66 = v71;
      }

      v83 = 0;
      sub_1AF0D4F18(v66, &v83, v65, v64);

      v52 = v81;
    }

    v67 = v75;
    Strong = swift_unknownObjectWeakLoadStrong();
    v69 = sub_1AFDFC048();
    [Strong didReceiveNewWorldArchivedAt_];
    swift_unknownObjectRelease();

    if (v74)
    {
      if (*(v67 + OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection))
      {

        sub_1AF8618B4(1, 0, 0);
      }
    }

    v60(v52, v35);
    return (v60)(v33, v35);
  }
}

unint64_t sub_1AF85F3A0()
{
  result = qword_1EB63F6E8;
  if (!qword_1EB63F6E8)
  {
    sub_1AF85F4AC(255, &qword_1EB63F6E0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F6E8);
  }

  return result;
}

unint64_t sub_1AF85F430()
{
  result = qword_1EB63F6F0;
  if (!qword_1EB63F6F0)
  {
    sub_1AF85F4AC(255, &qword_1EB63F6F8, &type metadata for RemotePreviewClient, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F6F0);
  }

  return result;
}

void sub_1AF85F4AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AF85F500()
{
  result = qword_1EB63F700;
  if (!qword_1EB63F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F700);
  }

  return result;
}

unint64_t sub_1AF85F554()
{
  result = qword_1EB63F708;
  if (!qword_1EB63F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F708);
  }

  return result;
}

uint64_t RemotePreviewPeerConnection.deinit()
{
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v3[1] = 0xE000000000000000;
  type metadata accessor for RemotePreviewPeerConnection(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x74696E69656420, 0xE700000000000000);
  v1 = sub_1AFDFDA28();
  v3[0] = 0;
  sub_1AF0D4F18(v1, v3, 0, 0xE000000000000000);

  sub_1AF0FBDE0(v0 + 16);

  sub_1AF85F6CC(v0 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint);
  return v0;
}

uint64_t sub_1AF85F6CC(uint64_t a1)
{
  sub_1AF862AF8(0, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF85F748()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36B40);
  sub_1AF862AF8(0, &qword_1EB63F718, MEMORY[0x1E6977C38]);
  sub_1AFDFE458();
  return 0;
}

uint64_t sub_1AF85F7FC(uint64_t a1, uint64_t a2, void *a3)
{
  v75 = *a3;
  sub_1AF862AF8(0, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v72 - v7;
  v9 = sub_1AFDFC6C8();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v76 = &v72 - v15;
  v16 = sub_1AFDFC9A8();
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v80 = &v72 - v22;
  v23 = sub_1AFDFC778();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v29 = result;
  (*(v24 + 16))(v27, a1, v23);
  v30 = (*(v24 + 88))(v27, v23);
  if (v30 != *MEMORY[0x1E6977C10])
  {
    if (v30 == *MEMORY[0x1E6977C00])
    {
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v81 = 0;
      v82 = 0xE000000000000000;
      v83 = v29;
      type metadata accessor for RemotePreviewPeerConnection(0);
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0x696C626174736520, 0xEC00000064656873);
      v40 = v81;
      v41 = v82;
      v42 = sub_1AFDFDA28();
      v81 = 0;
      sub_1AF0D4F18(v42, &v81, v40, v41);

      if (*(v29 + 32))
      {

        sub_1AFDFC738();
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v43 = *(v29 + 24);
        ObjectType = swift_getObjectType();
        (*(v43 + 8))(v29, ObjectType, v43);
LABEL_27:

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      if (v30 != *MEMORY[0x1E6977C20])
      {
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        v81 = 0;
        v82 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000016, 0x80000001AFF36E70);
        sub_1AFDFE458();
        v69 = v81;
        v70 = v82;
        v71 = sub_1AFDFDA28();
        v81 = 0;
        sub_1AF0D4F18(v71, &v81, v69, v70);

        return (*(v24 + 8))(v27, v23);
      }

      v60 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
      sub_1AF85F6CC(v29 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint);
      (*(v77 + 56))(v29 + v60, 1, 1, v78);
      if (qword_1ED731058 != -1)
      {
        swift_once();
      }

      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1AFDFE218();
      v83 = a3;
      sub_1AFDFE458();
      MEMORY[0x1B2718AE0](0x6E61632073617720, 0xEE0064656C6C6563);
      v61 = v81;
      v62 = v82;
      v63 = sub_1AFDFDA28();
      v81 = 0;
      sub_1AF0D4F18(v63, &v81, v61, v62);

      if (swift_unknownObjectWeakLoadStrong())
      {
        v64 = *(v29 + 24);
        v65 = swift_getObjectType();
        (*(v64 + 24))(v29, v65, v64);
        goto LABEL_27;
      }
    }
  }

  v72 = v12;
  v74 = v29;
  (*(v24 + 96))(v27, v23);
  v31 = v16;
  v79[4](v80, v27, v16);
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v81 = 0;
  v82 = 0xE000000000000000;
  sub_1AFDFE218();
  v32 = v74;
  v83 = v74;
  type metadata accessor for RemotePreviewPeerConnection(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x2064656C69616620, 0xED00002068746977);
  sub_1AFDFE458();
  v33 = v81;
  v34 = v82;
  v35 = sub_1AFDFDA28();
  v81 = 0;
  sub_1AF0D4F18(v35, &v81, v33, v34);

  sub_1AFDFC798();
  v36 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
  sub_1AF862B4C(v32 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, v8, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  v38 = v77;
  v37 = v78;
  if ((*(v77 + 48))(v8, 1, v78) == 1)
  {
    sub_1AF85F6CC(v8);
    v39 = v80;
    goto LABEL_29;
  }

  v73 = v31;
  v45 = v76;
  (*(v38 + 32))(v76, v8, v37);
  v39 = v80;
  if (*(v32 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_initiatedConnection) != 1 || (*v19 = 53, v46 = v79, v47 = v73, v79[13](v19, *MEMORY[0x1E6977D68], v73), v48 = MEMORY[0x1B27183B0](v39, v19), v49 = v46[1], (v49)(v19, v47), (v48 & 1) == 0))
  {
    (*(v38 + 8))(v45, v37);
    v31 = v73;
LABEL_29:
    v66 = v74;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v67 = v66[3];
      v68 = swift_getObjectType();
      (*(v67 + 16))(v66, v68, v67);

      swift_unknownObjectRelease();
      return (v79[1])(v39, v31);
    }

    else
    {
      (v79[1])(v39, v31);
    }
  }

  v79 = v49;
  (*(v38 + 16))(v72, v45, v37);
  sub_1AFDFC818();
  sub_1AFDFC7C8();
  if (qword_1EB637198 != -1)
  {
    swift_once();
  }

  sub_1AFDFC938();
  swift_allocObject();

  v50 = sub_1AFDFC928();
  sub_1AFDFC7D8();

  v51 = sub_1AFDFC7B8();
  v53 = v74;
  if (*v52 >> 62)
  {
    sub_1AFDFE108();
  }

  sub_1AF64E1E4(0, 0, v50);

  v51(&v81, 0);

  swift_allocObject();
  v53[4] = sub_1AFDFC758();

  sub_1AF85F6CC(v53 + v36);
  v55 = v77;
  v54 = v78;
  (*(v77 + 56))(v53 + v36, 1, 1, v78);
  v56 = v53[4];
  if (v56)
  {
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = v56;
    swift_retain_n();

    sub_1AFDFC748();

    sub_1AF615168();
    v59 = sub_1AFDFDB08();
    sub_1AFDFC788();
  }

  else
  {
  }

  (*(v55 + 8))(v45, v54);
  return (v79)(v80, v73);
}

uint64_t sub_1AF8603EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    if (qword_1EB637198 != -1)
    {
      swift_once();
    }

    if (sub_1AFDFC708())
    {
      sub_1AFDFC8F8();
      v10 = swift_dynamicCastClass();
      if (v10 && (v11 = v10, swift_unknownObjectWeakLoadStrong()))
      {
        v12 = *(a6 + 24);
        ObjectType = swift_getObjectType();
        (*(v12 + 32))(a6, v11, a1, a2, ObjectType, v12);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  v14 = sub_1AFDFC9A8();
  result = (*(*(v14 - 8) + 48))(a5, 1, v14);
  if (result == 1 && *(a6 + 32))
  {

    sub_1AFDFC738();
  }

  return result;
}

void sub_1AF8605F0()
{
  sub_1AF862AF8(319, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AF8606F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  return v1;
}

uint64_t sub_1AF86076C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  return v1;
}

uint64_t sub_1AF860800()
{
  v1 = sub_1AFDFC318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  v13 = v10;
  MEMORY[0x1B2718AE0](0x65506F6964757453, 0xEB00000000207265);
  (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_id, v1);
  sub_1AF862CF8(&qword_1EB63F6D8, MEMORY[0x1E69695A8]);
  v6 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v6);

  (*(v2 + 8))(v5, v1);
  MEMORY[0x1B2718AE0](0x3A6769666E6F6320, 0xE800000000000000);
  v7 = *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16);
  v10 = *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration);
  v11 = v7;
  v12[0] = *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32);
  *(v12 + 9) = *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 41);
  sub_1AF862D40(0, &qword_1EB63F798, &type metadata for RemotePreviewPlayerPeer.Configuration, MEMORY[0x1E69E6720]);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x7463656E6E6F6320, 0xED0000203A6E6F69);
  *&v10 = 0;
  *(&v10 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36B40);
  v9[1] = *(v0 + 32);
  sub_1AF862AF8(0, &qword_1EB63F718, MEMORY[0x1E6977C38]);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](v10, *(&v10 + 1));

  return v13;
}

uint64_t sub_1AF860AD8(char a1)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
  }

  return sub_1AFDFC678();
}

uint64_t sub_1AF860BD8()
{
  v1 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_id;
  v2 = sub_1AFDFC318();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AF862CB4(*(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration), *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 8), *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16), *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 24), *(v0 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32));
  v3 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection__installState;
  v4 = MEMORY[0x1E695C070];
  sub_1AF862D40(0, &qword_1EB63F750, &type metadata for RemotePreviewStudioPeerConnection.InstallState, MEMORY[0x1E695C070]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection__playerHealth;
  sub_1AF862D40(0, &qword_1EB63F758, &type metadata for RemotePreviewPlayerPeer.Health, v4);
  v8 = *(*(v7 - 8) + 8);

  return v8(v0 + v6, v7);
}

uint64_t sub_1AF860D28()
{
  v1 = v0;
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v13 = 0xE000000000000000;
  v12 = v0;
  type metadata accessor for RemotePreviewPeerConnection(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x74696E69656420, 0xE700000000000000);
  v2 = sub_1AFDFDA28();
  sub_1AF0D4F18(v2, &v12 + 1, 0, 0xE000000000000000);

  sub_1AF0FBDE0(v0 + 16);

  sub_1AF85F6CC(v0 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint);
  v3 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_id;
  v4 = sub_1AFDFC318();
  v5 = *(*(v4 - 8) + 8);

  v5(v1 + v3, v4);
  sub_1AF862CB4(*(v1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration), *(v1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 8), *(v1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16), *(v1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 24), *(v1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32));
  v6 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection__installState;
  v7 = MEMORY[0x1E695C070];
  sub_1AF862D40(0, &qword_1EB63F750, &type metadata for RemotePreviewStudioPeerConnection.InstallState, MEMORY[0x1E695C070]);
  (*(*(v8 - 8) + 8))(v1 + v6, v8);
  v9 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection__playerHealth;
  sub_1AF862D40(0, &qword_1EB63F758, &type metadata for RemotePreviewPlayerPeer.Health, v7);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);

  return swift_deallocClassInstance();
}

void sub_1AF860FC0()
{
  sub_1AFDFC318();
  if (v0 <= 0x3F)
  {
    sub_1AF862D40(319, &qword_1EB63F750, &type metadata for RemotePreviewStudioPeerConnection.InstallState, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1AF862D40(319, &qword_1EB63F758, &type metadata for RemotePreviewPlayerPeer.Health, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1AF861114@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_id;
  v5 = sub_1AFDFC318();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1AF861190@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemotePreviewStudioPeerConnection(0);
  result = sub_1AFDFC5F8();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8611D0()
{
  v1 = MEMORY[0x1E6977B10];
  sub_1AF862AF8(0, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = v7 - v4;
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF36C60);
  sub_1AF862B4C(v0 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, v5, &qword_1EB63F710, v1);
  sub_1AFDFE458();
  sub_1AF85F6CC(v5);
  MEMORY[0x1B2718AE0](0x7463656E6E6F6320, 0xED0000203A6E6F69);
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF36B40);
  v7[1] = *(v0 + 32);
  sub_1AF862AF8(0, &qword_1EB63F718, MEMORY[0x1E6977C38]);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](v8, v9);

  return v10;
}

void sub_1AF8613BC()
{
  v1 = sub_1AFDFC728();
  MEMORY[0x1EEE9AC00](v1, v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + 32))
  {
    v22 = v3;
    sub_1AFDFC8F8();
    v6 = qword_1EB637198;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_1AFDFC8E8();
    *(&v24 + 1) = &type metadata for RemotePreviewSessionProtocol.MessageType;
    LOBYTE(v23) = 2;
    sub_1AFDFC918();
    sub_1AF862D40(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1AFE4C3E0;
    *(v8 + 32) = v7;
    sub_1AFDFC718();
    swift_allocObject();

    sub_1AFDFC6F8();
    sub_1AFDFBC38();
    swift_allocObject();
    sub_1AFDFBC28();
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processName];

    v11 = sub_1AFDFCEF8();
    v13 = v12;

    v14 = sub_1AF85E8E0();
    v16 = v15;
    v17 = sub_1AF85E9B0();
    *v26 = 512;
    *&v26[8] = xmmword_1AFE7AC20;
    *&v26[24] = v11;
    *v27 = v13;
    *&v27[8] = v14;
    *&v27[16] = v16;
    v27[24] = v17;
    v23 = *v26;
    v24 = *&v26[16];
    v25[0] = *v27;
    *(v25 + 9) = *&v27[9];
    sub_1AF862C0C();
    v18 = sub_1AFDFBC08();
    v20 = v19;
    sub_1AF862C60(v26);
    *v5 = sub_1AF8617FC;
    v5[1] = 0;
    v21 = v22;
    (*(v22 + 104))(v5, *MEMORY[0x1E6977BF8], v1);
    sub_1AF43C9F0(v18, v20);
    sub_1AFDFC768();
    sub_1AF439ED8(v18, v20);

    sub_1AF439ED8(v18, v20);

    (*(v21 + 8))(v5, v1);
  }
}

uint64_t sub_1AF8617FC(uint64_t a1)
{
  v2 = sub_1AFDFC9A8();
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (result != 1)
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

void sub_1AF8618B4(char a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1AFDFC728();
  MEMORY[0x1EEE9AC00](v7, v8);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + 32))
  {
    v20 = v9;
    sub_1AFDFC8F8();
    v12 = qword_1EB637198;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_1AFDFC8E8();
    v24 = &type metadata for RemotePreviewSessionProtocol.MessageType;
    LOBYTE(v21) = 4;
    sub_1AFDFC918();
    sub_1AF862D40(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1AFE4C3E0;
    *(v14 + 32) = v13;
    sub_1AFDFC718();
    swift_allocObject();

    sub_1AFDFC6F8();
    sub_1AFDFBC38();
    swift_allocObject();
    sub_1AFDFBC28();
    LOBYTE(v21) = a1 & 1;
    v22 = a2;
    v23 = a3;
    sub_1AF862BB8();
    v15 = sub_1AFDFBC08();
    *v11 = sub_1AF861C68;
    v11[1] = 0;
    v16 = v20;
    v17 = v15;
    v19 = v18;
    (*(v20 + 104))(v11, *MEMORY[0x1E6977BF8], v7);
    sub_1AF43C9F0(v17, v19);
    sub_1AFDFC768();
    sub_1AF439ED8(v17, v19);

    sub_1AF439ED8(v17, v19);

    (*(v16 + 8))(v11, v7);
  }
}

uint64_t sub_1AF861C68(uint64_t a1)
{
  sub_1AF862AF8(0, &qword_1EB63F778, MEMORY[0x1E6977D78]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_1AFDFC9A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  result = v8(a1, 1, v6);
  if (result != 1)
  {
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF36D70);
    sub_1AF862B4C(a1, v5, &qword_1EB63F778, MEMORY[0x1E6977D78]);
    v8(v5, 1, v6);
    sub_1AF862CF8(&qword_1EB63F780, MEMORY[0x1E6977D78]);
    v10 = sub_1AFDFF1D8();
    v12 = v11;
    (*(v7 + 8))(v5, v6);
    MEMORY[0x1B2718AE0](v10, v12);

    v13 = v16;
    v14 = v17;
    v15 = sub_1AFDFDA08();
    v16 = 0;
    sub_1AF0D4F18(v15, &v16, v13, v14);
  }

  return result;
}

uint64_t sub_1AF861EB4(uint64_t a1)
{
  v3 = sub_1AFDFC728();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3, v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + 32))
  {
    sub_1AFDFC8F8();
    v9 = qword_1EB637198;

    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1AFDFC8E8();
    v20 = &type metadata for RemotePreviewSessionProtocol.MessageType;
    LOBYTE(v17) = 5;
    sub_1AFDFC918();
    sub_1AF862D40(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE4C3E0;
    *(v11 + 32) = v10;
    sub_1AFDFC718();
    swift_allocObject();

    sub_1AFDFC6F8();
    sub_1AFDFBC38();
    swift_allocObject();
    sub_1AFDFBC28();
    v17 = a1;
    sub_1AF862AA4();
    v18 = 0;
    v19 = 0;
    v12 = sub_1AFDFBC08();
    *v8 = sub_1AF86224C;
    v8[1] = 0;
    v13 = v12;
    v15 = v14;
    (*(v4 + 104))(v8, *MEMORY[0x1E6977BF8], v3);
    sub_1AF43C9F0(v13, v15);
    sub_1AFDFC768();
    sub_1AF439ED8(v13, v15);

    sub_1AF439ED8(v13, v15);

    return (*(v4 + 8))(v8, v3);
  }

  return result;
}

uint64_t sub_1AF86224C(uint64_t a1)
{
  sub_1AF862AF8(0, &qword_1EB63F778, MEMORY[0x1E6977D78]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_1AFDFC9A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  result = v8(a1, 1, v6);
  if (result != 1)
  {
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1AFDFE218();

    v16 = 0xD000000000000024;
    v17 = 0x80000001AFF36CE0;
    sub_1AF862B4C(a1, v5, &qword_1EB63F778, MEMORY[0x1E6977D78]);
    v8(v5, 1, v6);
    sub_1AF862CF8(&qword_1EB63F780, MEMORY[0x1E6977D78]);
    v10 = sub_1AFDFF1D8();
    v12 = v11;
    (*(v7 + 8))(v5, v6);
    MEMORY[0x1B2718AE0](v10, v12);

    v13 = v16;
    v14 = v17;
    v15 = sub_1AFDFDA08();
    v16 = 0;
    sub_1AF0D4F18(v15, &v16, v13, v14);
  }

  return result;
}

uint64_t _s3VFX27RemotePreviewPeerConnectionCfD_0()
{
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v3[1] = 0xE000000000000000;
  type metadata accessor for RemotePreviewPeerConnection(0);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x74696E69656420, 0xE700000000000000);
  v1 = sub_1AFDFDA28();
  v3[0] = 0;
  sub_1AF0D4F18(v1, v3, 0, 0xE000000000000000);

  sub_1AF0FBDE0(v0 + 16);

  sub_1AF85F6CC(v0 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint);
  return swift_deallocClassInstance();
}

id sub_1AF86262C(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
    return result;
  }

  return result;
}

void sub_1AF86265C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1AF86267C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF86262C(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RemotePreviewStudioPeerConnection.InstallState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1AF86262C(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1AF86265C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RemotePreviewStudioPeerConnection.InstallState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1AF86265C(v4, v5, v6);
  return a1;
}

double sub_1AF8627CC@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1AF862854(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1AF86262C(v1, v2, v3);
  return sub_1AFDFC678();
}

uint64_t sub_1AF8628E8(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      swift_getErrorValue();
      v8 = sub_1AFDFF1D8();
      v10 = v9;
      swift_getErrorValue();
      if (v8 == sub_1AFDFF1D8() && v10 == v11)
      {

        v7 = 1;
      }

      else
      {
        v7 = sub_1AFDFEE28();
      }

      return v7 & 1;
    }

    goto LABEL_10;
  }

  if (a3 != 1)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 != 2 || a4 != 3)
        {
          goto LABEL_10;
        }
      }

      else if (a6 != 2 || a4 != 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        if (a6 == 2 && !(a5 | a4))
        {
          goto LABEL_31;
        }

        goto LABEL_10;
      }

      if (a6 != 2 || a4 != 1)
      {
        goto LABEL_10;
      }
    }

    if (!a5)
    {
LABEL_31:
      v7 = 1;
      return v7 & 1;
    }

LABEL_10:
    v7 = 0;
    return v7 & 1;
  }

  if (a6 != 1)
  {
    goto LABEL_10;
  }

  if (a1 == a4 && a2 == a5)
  {
    goto LABEL_31;
  }

  return sub_1AFDFEE28();
}

unint64_t sub_1AF862AA4()
{
  result = qword_1EB63F770;
  if (!qword_1EB63F770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F770);
  }

  return result;
}

void sub_1AF862AF8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF862B4C(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AF862AF8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1AF862BB8()
{
  result = qword_1EB63F788;
  if (!qword_1EB63F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F788);
  }

  return result;
}

unint64_t sub_1AF862C0C()
{
  result = qword_1EB63F790;
  if (!qword_1EB63F790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F790);
  }

  return result;
}

uint64_t sub_1AF862CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1AF862CF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1AF862D40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF862DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a3;
  v13[1] = a4;
  sub_1AF86A00C(0, &qword_1EB63F8B0, sub_1AF869FB8, &type metadata for RemotePreviewPlayerPeer.UpdateAcknowledgement.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF869FB8();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8C8();
  if (!v4)
  {
    v14 = 1;
    sub_1AFDFE868();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF862F40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a3;
  v14[2] = a4;
  sub_1AF86A00C(0, &qword_1EB63F7F8, sub_1AF869484, &type metadata for RemotePreviewPlayerPeer.Health.CodingKeys, MEMORY[0x1E69E6F58]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v14 - v11;
  sub_1AF441150(a1, a1[3]);
  sub_1AF869484();
  sub_1AFDFF3F8();
  v17 = a2;
  v16 = 0;
  sub_1AF8694D8();
  sub_1AF869538(&qword_1EB63F800);
  sub_1AFDFE918();
  if (!v4)
  {
    v15 = 1;
    sub_1AFDFE868();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1AF86311C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F727265;
  }

  else
  {
    v3 = 0x73736563637573;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726F727265;
  }

  else
  {
    v5 = 0x73736563637573;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t sub_1AF8631C0()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1AF8631F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_1AF8632D0(uint64_t a1)
{
  v2 = sub_1AF869FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF86330C(uint64_t a1)
{
  v2 = sub_1AF869FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF863348@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF868B3C(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF86339C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x726F727265;
  }

  else
  {
    v2 = 0x7374617473;
  }

  if (*a2)
  {
    v3 = 0x726F727265;
  }

  else
  {
    v3 = 0x7374617473;
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

uint64_t sub_1AF86341C()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x7374617473;
  }
}

uint64_t sub_1AF863448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7374617473 && a2 == 0xE500000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
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

uint64_t sub_1AF86351C(uint64_t a1)
{
  v2 = sub_1AF869484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF863558(uint64_t a1)
{
  v2 = sub_1AF869484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF863594@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AF868D1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1AF8635E4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](60, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v1, v2);
  MEMORY[0x1B2718AE0](0x3A6C616972657320, 0xE800000000000000);
  MEMORY[0x1B2718AE0](v3, v4);
  MEMORY[0x1B2718AE0](0x3A746E65696C6320, 0xE900000000000020);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x6E6F697372657620, 0xEA0000000000203ALL);
  v5 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v5);

  MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF36FC0);
  v6 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v6);

  return 0;
}

uint64_t sub_1AF863784(void *a1)
{
  sub_1AF86A00C(0, &qword_1EB63F828, sub_1AF86959C, &type metadata for RemotePreviewPlayerPeer.Configuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v21 = *(v1 + 2);
  v22 = v10;
  v11 = *(v1 + 3);
  v19 = *(v1 + 4);
  v20 = v11;
  v12 = *(v1 + 5);
  v17 = *(v1 + 6);
  v18 = v12;
  v16 = *(v1 + 56);
  sub_1AF441150(a1, a1[3]);
  sub_1AF86959C();
  sub_1AFDFF3F8();
  v31 = v9;
  v30 = 0;
  sub_1AF8696D0();
  v13 = v23;
  sub_1AFDFE918();
  if (!v13)
  {
    v29 = 1;
    sub_1AFDFE8F8();
    v28 = 2;
    sub_1AFDFE8F8();
    v27 = 3;
    sub_1AFDFE8B8();
    v26 = 4;
    sub_1AFDFE8B8();
    v25 = v16;
    v24 = 5;
    sub_1AF869724();
    sub_1AFDFE918();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1AF863A04@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = a2;
  sub_1AF86A00C(0, &qword_1EB63F808, sub_1AF86959C, &type metadata for RemotePreviewPlayerPeer.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF86959C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v6;
  v11 = v52;
  LOBYTE(v34) = 0;
  sub_1AF8695F0();
  v12 = v5;
  sub_1AFDFE768();
  v13 = v37;
  v14 = v38;
  v37 = 1;
  v33 = sub_1AFDFE748();
  v37 = 2;
  v32 = sub_1AFDFE748();
  v37 = 3;
  v30 = sub_1AFDFE708();
  v31 = v15;
  v37 = 4;
  v16 = sub_1AFDFE708();
  v29 = v17;
  v28 = v16;
  v48 = 5;
  sub_1AF869644();
  sub_1AFDFE768();
  (*(v10 + 8))(v9, v12);
  v27 = v49;
  LOBYTE(v34) = v13;
  BYTE1(v34) = v14;
  *(&v34 + 2) = v50;
  WORD3(v34) = v51;
  v18 = v32;
  v19 = v33;
  *(&v34 + 1) = v33;
  *&v35 = v32;
  v20 = v30;
  *(&v35 + 1) = v30;
  *v36 = v31;
  v21 = v28;
  *&v36[8] = v28;
  *&v36[16] = v29;
  v36[24] = v49;
  v22 = v34;
  v23 = v35;
  v24 = *v36;
  *(v11 + 41) = *&v36[9];
  v11[1] = v23;
  v11[2] = v24;
  *v11 = v22;
  sub_1AF869698(&v34, &v37);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  v37 = v13;
  v38 = v14;
  v39 = v50;
  v40 = v51;
  v41 = v19;
  v42 = v18;
  v43 = v20;
  v44 = v31;
  v45 = v21;
  v46 = v29;
  v47 = v27;
  return sub_1AF862C60(&v37);
}

uint64_t sub_1AF863E08()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x4E737365636F7270;
  v4 = 0x754E6C6169726573;
  if (v1 != 4)
  {
    v4 = 0x746E65696C63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001CLL;
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

uint64_t sub_1AF863ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF868934(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF863EF8(uint64_t a1)
{
  v2 = sub_1AF86959C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF863F34(uint64_t a1)
{
  v2 = sub_1AF86959C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF86405C()
{
  swift_unknownObjectWeakAssign();
  sub_1AF864148();

  return swift_unknownObjectRelease();
}

void (*sub_1AF8640A8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR___VFXRemotePreviewPlayerPeer_rendererStatisticsProvider;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1AF8640FC;
}

void sub_1AF8640FC(uint64_t a1, char a2)
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  if ((a2 & 1) == 0)
  {
    sub_1AF864148();
  }
}

void sub_1AF864148()
{
  v1 = OBJC_IVAR___VFXRemotePreviewPlayerPeer_timer;
  [*(v0 + OBJC_IVAR___VFXRemotePreviewPlayerPeer_timer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v5;
    v10[4] = sub_1AF869BE8;
    v10[5] = v6;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1AFBF8374;
    v10[3] = &unk_1F24E60A0;
    v7 = _Block_copy(v10);

    v8 = [v4 scheduledTimerWithTimeInterval:1 repeats:v7 block:5.0];
    swift_unknownObjectRelease();
    _Block_release(v7);
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
  }
}

void sub_1AF8642F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong statistics];
    swift_unknownObjectRelease();
    sub_1AFDFCBF8();
  }
}

id RemotePreviewPlayerPeer.__allocating_init(delegate:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___VFXRemotePreviewPlayerPeer_timer] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___VFXRemotePreviewPlayerPeer_browser] = 0;
  *&v1[OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id RemotePreviewPlayerPeer.init(delegate:)()
{
  v0 = sub_1AF868F78();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1AF8646FC()
{
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000017, 0x80000001AFF36E90);
  sub_1AF86990C(0, &qword_1EB63F7C8, type metadata accessor for RemotePreviewPlayerPeerConnection);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0x726573776F726220, 0xEA0000000000203ALL);
  sub_1AF86990C(0, &qword_1EB63F7D0, MEMORY[0x1E6977DE8]);
  sub_1AFDFE458();
  return 0;
}

void sub_1AF864834()
{
  v1 = sub_1AFDFC9B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1AFDFC6D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v11 = sub_1AFDFD9F8();
  v17 = 0;
  sub_1AF0D4F18(v11, &v17, 0x547463656E6E6F63, 0xEF6F69647574536FLL);
  sub_1AFDFC818();
  swift_allocObject();
  sub_1AFDFC808();
  (*(v7 + 104))(v10, *MEMORY[0x1E6977B48], v6);
  sub_1AFDFC7E8();
  *v5 = 0x762D656C7070615FLL;
  v5[1] = 0xEF7063745F2E7866;
  v5[2] = 0;
  v5[3] = 0;
  (*(v2 + 104))(v5, *MEMORY[0x1E6977DB8], v1);
  sub_1AFDFCA58();
  swift_allocObject();

  v12 = sub_1AFDFC9E8();
  *(v0 + OBJC_IVAR___VFXRemotePreviewPlayerPeer_browser) = v12;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;

  sub_1AFDFC9C8();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1AFDFC9D8();

  sub_1AF615168();
  v15 = sub_1AFDFDB08();
  sub_1AFDFCA08();
}

void sub_1AF864BB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a3;
  v66 = a3;
  v73 = v4;
  v5 = sub_1AFDFC9B8();
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v72 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1AFDFC6D8();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v67 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1AFDFC9A8();
  v65 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v64 - v16;
  v18 = sub_1AFDFC9F8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v23 = qword_1ED73B8A0;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF371B0);
  sub_1AFDFE458();
  v24 = v76;
  v25 = v77;
  v26 = sub_1AFDFD9F8();
  v75 = v23;
  v76 = 0;
  sub_1AF0D4F18(v26, &v76, v24, v25);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    (*(v19 + 16))(v22, a1, v18);
    v29 = (*(v19 + 88))(v22, v18);
    if (v29 == *MEMORY[0x1E6977DC0])
    {
      (*(v19 + 96))(v22, v18);
      v30 = v65;
      v31 = v74;
      (*(v65 + 32))(v17, v22, v74);
      *v13 = -65569;
      (*(v30 + 104))(v13, *MEMORY[0x1E6977D58], v31);
      v32 = MEMORY[0x1B27183B0](v17, v13);
      v33 = *(v30 + 8);
      v33(v13, v31);
      if (v32)
      {
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF37210);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x726174736572202CLL, 0xEC000000676E6974);
        v34 = v76;
        v35 = v77;
        v36 = sub_1AFDFDA08();
        v76 = 0;
        sub_1AF0D4F18(v36, &v76, v34, v35);

        sub_1AFDFCA48();
        v37 = sub_1AFDFD9F8();
        v76 = 0;
        sub_1AF0D4F18(v37, &v76, 0x547463656E6E6F63, 0xEF6F69647574536FLL);
        sub_1AFDFC818();
        swift_allocObject();
        sub_1AFDFC808();
        (*(v68 + 104))(v67, *MEMORY[0x1E6977B48], v69);
        sub_1AFDFC7E8();
        v38 = v71;
        v39 = v72;
        *v72 = 0x762D656C7070615FLL;
        v39[1] = 0xEF7063745F2E7866;
        v39[2] = 0;
        v39[3] = 0;
        (*(v70 + 104))(v39, *MEMORY[0x1E6977DB8], v38);
        swift_allocObject();

        v40 = sub_1AFDFC9E8();
        *&v28[OBJC_IVAR___VFXRemotePreviewPlayerPeer_browser] = v40;

        v41 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        *(v42 + 24) = v40;

        sub_1AFDFC9C8();

        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1AFDFC9D8();

        sub_1AF615168();
        v43 = sub_1AFDFDB08();
        sub_1AFDFCA08();

        v28 = v43;
      }

      else
      {
        v76 = 0;
        v77 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF37210);
        sub_1AFDFE458();
        MEMORY[0x1B2718AE0](0x6970706F7473202CLL, 0xEA0000000000676ELL);
        v46 = v76;
        v47 = v77;
        v48 = sub_1AFDFDA08();
        v76 = 0;
        sub_1AF0D4F18(v48, &v76, v46, v47);

        [swift_unknownObjectWeakLoadStrong() connectionToStudioFailed];
        swift_unknownObjectRelease();
        v49 = *&v28[OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection];
        if (v49)
        {
          if (*(v49 + 32))
          {

            sub_1AFDFC798();
          }

          else
          {
          }

          v62 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
          sub_1AF869960(v49 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, &qword_1EB63F710, MEMORY[0x1E6977B10]);
          v63 = sub_1AFDFC6C8();
          (*(*(v63 - 8) + 56))(v49 + v62, 1, 1, v63);
        }

        sub_1AFDFCA48();
      }

      v33(v17, v31);
    }

    else if (v29 == *MEMORY[0x1E6977DC8])
    {
      v44 = sub_1AFDFD9F8();
      v76 = 0;
      sub_1AF0D4F18(v44, &v76, 0xD000000000000011, 0x80000001AFF371F0);
      v45 = *&v28[OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection];
      if (v45)
      {
        if (*(v45 + 32))
        {

          sub_1AFDFC798();
        }

        else
        {
        }

        v53 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
        sub_1AF869960(v45 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, &qword_1EB63F710, MEMORY[0x1E6977B10]);
        v54 = sub_1AFDFC6C8();
        (*(*(v54 - 8) + 56))(v45 + v53, 1, 1, v54);
      }

      [swift_unknownObjectWeakLoadStrong() connectionToStudioWasCancelled];
      swift_unknownObjectRelease();
      v55 = sub_1AFDFD9F8();
      v76 = 0;
      sub_1AF0D4F18(v55, &v76, 0x547463656E6E6F63, 0xEF6F69647574536FLL);
      sub_1AFDFC818();
      swift_allocObject();
      sub_1AFDFC808();
      (*(v68 + 104))(v67, *MEMORY[0x1E6977B48], v69);
      sub_1AFDFC7E8();
      v56 = v71;
      v57 = v72;
      *v72 = 0x762D656C7070615FLL;
      v57[1] = 0xEF7063745F2E7866;
      v57[2] = 0;
      v57[3] = 0;
      (*(v70 + 104))(v57, *MEMORY[0x1E6977DB8], v56);
      swift_allocObject();

      v58 = sub_1AFDFC9E8();
      *&v28[OBJC_IVAR___VFXRemotePreviewPlayerPeer_browser] = v58;

      v59 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v58;

      sub_1AFDFC9C8();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_1AFDFC9D8();

      sub_1AF615168();
      v61 = sub_1AFDFDB08();
      sub_1AFDFCA08();
    }

    else
    {
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF371D0);
      sub_1AFDFE458();
      v50 = v76;
      v51 = v77;
      v52 = sub_1AFDFD9F8();
      v76 = 0;
      sub_1AF0D4F18(v52, &v76, v50, v51);

      (*(v19 + 8))(v22, v18);
    }
  }
}

char *sub_1AF865838(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t, uint64_t))
{
  v149 = a3;
  sub_1AF86990C(0, &qword_1EB63F848, MEMORY[0x1E6977BE8]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v124 - v6;
  v8 = sub_1AFDFC6C8();
  v141 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v129 = &v124 - v14;
  sub_1AF86988C();
  v133 = v15;
  MEMORY[0x1EEE9AC00](v15, v16);
  v140 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF86990C(0, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v130 = &v124 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v137 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v134 = &v124 - v26;
  v27 = sub_1AFDFCA38();
  v148 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v138 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v124 - v32;
  MEMORY[0x1EEE9AC00](v34, v35);
  v150 = &v124 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v146 = &v124 - v39;
  sub_1AF86990C(0, &qword_1EB63F858, MEMORY[0x1E6977DD8]);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v132 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v144 = &v124 - v45;
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v46 = qword_1ED73B8A0;
  v151 = 0;
  v152 = 0xE000000000000000;
  sub_1AFDFE218();

  v151 = 0xD000000000000010;
  v152 = 0x80000001AFF370F0;
  sub_1AF869A28(&qword_1EB63F860, MEMORY[0x1E6977DD8]);
  v47 = sub_1AFDFD788();
  MEMORY[0x1B2718AE0](v47);

  v48 = v151;
  v49 = v152;
  v50 = sub_1AFDFD9F8();
  v151 = 0;
  v139 = v46;
  sub_1AF0D4F18(v50, &v151, v48, v49);

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v52 = result;
  if (!*(a1 + 16))
  {
    v84 = sub_1AFDFD9F8();
    v151 = 0;
    sub_1AF0D4F18(v84, &v151, 0xD000000000000021, 0x80000001AFF37180);
    v85 = OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection;
    v86 = *&v52[OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection];
    if (v86)
    {
      if (*(v86 + 32))
      {

        sub_1AFDFC798();
      }

      else
      {
      }

      v123 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
      sub_1AF869960(v86 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, &qword_1EB63F710, MEMORY[0x1E6977B10]);
      (*(v141 + 56))(v86 + v123, 1, 1, v8);
    }

    [swift_unknownObjectWeakLoadStrong() connectionToStudioWasCancelled];
    swift_unknownObjectRelease();
    *&v52[v85] = 0;
  }

  v53 = a1;
  v136 = result;
  v127 = v8;
  v135 = v33;
  v124 = v11;
  v125 = v7;
  v54 = v144;
  sub_1AF8CCA38(v53, v144);
  v55 = 1 << *(v53 + 32);
  v56 = -1;
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  v57 = v56 & *(v53 + 56);
  v58 = (v55 + 63) >> 6;
  v59 = v148 + 16;
  v149 = (v148 + 32);
  v145 = (v148 + 48);
  v60 = (v148 + 8);
  v131 = (v148 + 56);

  v61 = 0;
  v142 = v60;
  v128 = v60 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v147 = v59;
  v143 = v53;
  while (v57)
  {
    v62 = v27;
LABEL_15:
    v64 = __clz(__rbit64(v57));
    v57 &= v57 - 1;
    v65 = v148;
    v66 = *(v53 + 48) + *(v148 + 72) * (v64 | (v61 << 6));
    v67 = *(v148 + 16);
    v68 = v146;
    v67(v146, v66, v62);
    v69 = *(v65 + 32);
    v69(v150, v68, v62);
    v70 = *(sub_1AFDFCA18() + 16);

    v71 = *(v65 + 48);
    v27 = v62;
    if (v71(v54, 1, v62))
    {
      if (v70)
      {
        goto LABEL_8;
      }

      (*v142)(v150, v62);
    }

    else
    {
      v72 = v138;
      v67(v138, v54, v27);
      v73 = sub_1AFDFCA18();
      v74 = *v142;
      (*v142)(v72, v27);
      v75 = v27;
      v76 = *(v73 + 16);

      v77 = v76 >= v70;
      v27 = v75;
      v54 = v144;
      if (!v77)
      {
LABEL_8:
        sub_1AF869960(v54, &qword_1EB63F858, MEMORY[0x1E6977DD8]);
        v69(v54, v150, v27);
        (*v131)(v54, 0, 1, v27);
        goto LABEL_9;
      }

      v74(v150, v75);
    }

LABEL_9:
    v53 = v143;
  }

  while (1)
  {
    v63 = v61 + 1;
    if (v61 + 1 >= v58)
    {
      break;
    }

    v57 = *(v53 + 8 * v61++ + 64);
    if (v57)
    {
      v62 = v27;
      v61 = v63;
      goto LABEL_15;
    }
  }

  v78 = v132;
  sub_1AF8699BC(v54, v132, &qword_1EB63F858, MEMORY[0x1E6977DD8]);
  if ((*v145)(v78, 1, v27) == 1)
  {
    sub_1AF869960(v78, &qword_1EB63F858, MEMORY[0x1E6977DD8]);
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    (*v149)(v135, v78, v27);
    v79 = v137;
    v150 = OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection;
    v80 = *(v136 + OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection);
    v81 = v127;
    v82 = v141;
    v83 = v134;
    v126 = v27;
    if (v80)
    {
      sub_1AF8699BC(v80 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, v134, &qword_1EB63F710, MEMORY[0x1E6977B10]);
    }

    else
    {
      (*(v141 + 56))(v134, 1, 1, v127);
    }

    sub_1AFDFCA28();
    v87 = *(v82 + 56);
    v87(v79, 0, 1, v81);
    v88 = *(v133 + 48);
    v89 = MEMORY[0x1E6977B10];
    v90 = v140;
    sub_1AF8699BC(v83, v140, &qword_1EB63F710, MEMORY[0x1E6977B10]);
    v91 = v90;
    sub_1AF8699BC(v79, v90 + v88, &qword_1EB63F710, v89);
    v92 = *(v82 + 48);
    if (v92(v91, 1, v81) == 1)
    {
      v93 = MEMORY[0x1E6977B10];
      sub_1AF869960(v79, &qword_1EB63F710, MEMORY[0x1E6977B10]);
      v94 = v140;
      sub_1AF869960(v83, &qword_1EB63F710, v93);
      if (v92(v94 + v88, 1, v81) == 1)
      {
        sub_1AF869960(v94, &qword_1EB63F710, MEMORY[0x1E6977B10]);
        goto LABEL_38;
      }

LABEL_33:
      sub_1AF869778(v94, sub_1AF86988C);
      goto LABEL_34;
    }

    v95 = v130;
    sub_1AF8699BC(v91, v130, &qword_1EB63F710, MEMORY[0x1E6977B10]);
    if (v92(v91 + v88, 1, v81) == 1)
    {
      v96 = MEMORY[0x1E6977B10];
      sub_1AF869960(v137, &qword_1EB63F710, MEMORY[0x1E6977B10]);
      v94 = v140;
      sub_1AF869960(v83, &qword_1EB63F710, v96);
      (*(v141 + 8))(v95, v81);
      goto LABEL_33;
    }

    v99 = v141;
    v100 = v91 + v88;
    v101 = v129;
    (*(v141 + 32))(v129, v100, v81);
    sub_1AF869A28(&qword_1EB63F868, MEMORY[0x1E6977B10]);
    LODWORD(v149) = sub_1AFDFCE58();
    v102 = *(v99 + 8);
    v102(v101, v81);
    v103 = MEMORY[0x1E6977B10];
    sub_1AF869960(v137, &qword_1EB63F710, MEMORY[0x1E6977B10]);
    sub_1AF869960(v83, &qword_1EB63F710, v103);
    v102(v95, v81);
    sub_1AF869960(v91, &qword_1EB63F710, v103);
    if (v149)
    {
LABEL_38:
      v104 = sub_1AFDFD9F8();
      v151 = 0;
      sub_1AF0D4F18(v104, &v151, 0xD000000000000022, 0x80000001AFF37150);

      (*v142)(v135, v126);
    }

    else
    {
LABEL_34:
      v97 = v150;
      v98 = *&v150[v136];
      if (v98)
      {
        if (*(v98 + 32))
        {

          sub_1AFDFC798();
        }

        else
        {
        }

        v106 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
        sub_1AF869960(v98 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint, &qword_1EB63F710, MEMORY[0x1E6977B10]);
        v87(v98 + v106, 1, 1, v81);

        v105 = v136;
        [swift_unknownObjectWeakLoadStrong() connectionToStudioWasCancelled];
        swift_unknownObjectRelease();
        v107 = sub_1AFDFD9F8();
        v151 = 0;
        sub_1AF0D4F18(v107, &v151, 0xD000000000000019, 0x80000001AFF37130);
      }

      else
      {
        v105 = v136;
      }

      v108 = sub_1AFDFD9F8();
      v151 = 0;
      sub_1AF0D4F18(v108, &v151, 0xD000000000000019, 0x80000001AFF37130);
      v109 = v124;
      v110 = v135;
      sub_1AFDFCA28();
      v111 = sub_1AFDFCA18();
      v112 = v125;
      v113 = v126;
      if (*(v111 + 16))
      {
        v114 = v111;
        v115 = sub_1AFDFC6E8();
        v116 = *(v115 - 8);
        (*(v116 + 16))(v112, v114 + ((*(v116 + 80) + 32) & ~*(v116 + 80)), v115);

        v117 = v115;
        v105 = v136;
        (*(v116 + 56))(v112, 0, 1, v117);
      }

      else
      {

        v118 = sub_1AFDFC6E8();
        (*(*(v118 - 8) + 56))(v112, 1, 1, v118);
      }

      type metadata accessor for RemotePreviewPlayerPeerConnection(0);
      v119 = swift_allocObject();
      v120 = v105;
      v121 = v105;
      v122 = sub_1AF868638(v109, v112, v121, v119);
      (*v142)(v110, v113);
      *&v97[v120] = v122;
    }

    return sub_1AF869960(v144, &qword_1EB63F858, MEMORY[0x1E6977DD8]);
  }

  return result;
}

void static RemotePreviewPlayerPeer.projectFolder.getter(uint64_t a1@<X8>)
{
  v53 = a1;
  sub_1AF86990C(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v52 - v7;
  v9 = objc_opt_self();
  v10 = [v9 processInfo];
  v11 = [v10 processName];

  v12 = sub_1AFDFCEF8();
  v14 = v13;

  v15 = sub_1AF85E8E0();
  v17 = v16;
  v18 = sub_1AF85E9B0();
  v61 = 512;
  v52 = xmmword_1AFE7AC20;
  v62 = xmmword_1AFE7AC20;
  v63 = v12;
  v64 = v14;
  v65 = v15;
  v66 = v17;
  v67 = v18;
  sub_1AF862C60(&v61);
  if (v67 == 1)
  {

    goto LABEL_4;
  }

  v19 = sub_1AFDFEE28();

  if (v19)
  {
LABEL_4:
    v20 = objc_opt_self();
    v21 = [v20 defaultManager];
    v22 = [v21 URLsForDirectory:14 inDomains:1];

    v23 = sub_1AFDFC128();
    v24 = sub_1AFDFD418();

    if (*(v24 + 16))
    {
      v25 = *(v23 - 8);
      (*(v25 + 16))(v8, v24 + ((*(v25 + 80) + 32) & ~*(v25 + 80)), v23);

      (*(v25 + 56))(v8, 0, 1, v23);
      (*(v25 + 32))(v53, v8, v23);
      return;
    }

    v35 = *(v23 - 8);
    (*(v35 + 56))(v8, 1, 1, v23);
    v36 = [v20 defaultManager];
    v37 = [v36 temporaryDirectory];

    sub_1AFDFC0B8();
    if ((*(v35 + 48))(v8, 1, v23) != 1)
    {
      v38 = MEMORY[0x1E6968FB0];
      v39 = v8;
LABEL_18:
      sub_1AF869960(v39, &qword_1ED7315E0, v38);
      return;
    }

    return;
  }

  v26 = [v9 processInfo];
  v27 = [v26 processName];

  v28 = sub_1AFDFCEF8();
  v30 = v29;

  v31 = sub_1AF85E8E0();
  v33 = v32;
  v34 = sub_1AF85E9B0();
  v54 = 512;
  v55 = v52;
  v56 = v28;
  v57 = v30;
  v58 = v31;
  v59 = v33;
  v60 = v34;
  sub_1AF862C60(&v54);
  if (v60 > 2u && v60 == 3)
  {

    goto LABEL_15;
  }

  v40 = sub_1AFDFEE28();

  if (v40)
  {
LABEL_15:
    v47 = [objc_opt_self() defaultManager];
    v48 = [v47 temporaryDirectory];

    sub_1AFDFC0B8();
    return;
  }

  v41 = objc_opt_self();
  v42 = [v41 defaultManager];
  v43 = [v42 URLsForDirectory:9 inDomains:1];

  v44 = sub_1AFDFC128();
  v45 = sub_1AFDFD418();

  if (*(v45 + 16))
  {
    v46 = *(v44 - 8);
    (*(v46 + 16))(v4, v45 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v44);

    (*(v46 + 56))(v4, 0, 1, v44);
    (*(v46 + 32))(v53, v4, v44);
    return;
  }

  v49 = *(v44 - 8);
  (*(v49 + 56))(v4, 1, 1, v44);
  v50 = [v41 defaultManager];
  v51 = [v50 temporaryDirectory];

  sub_1AFDFC0B8();
  if ((*(v49 + 48))(v4, 1, v44) != 1)
  {
    v38 = MEMORY[0x1E6968FB0];
    v39 = v4;
    goto LABEL_18;
  }
}

id RemotePreviewPlayerPeer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemotePreviewPlayerPeer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemotePreviewPlayerPeer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AF8672D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1AFDFC128();
  v84 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v69 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v85 = v69 - v17;
  type metadata accessor for RemotePreviewPlayerPeerConnection(0);
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v83 = v7;

    sub_1AFDFC908();
    if (v90)
    {
      if (swift_dynamicCast())
      {
        if (v95 == 1)
        {
          if (a4 >> 60 == 15)
          {
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v20 = sub_1AFDFDA08();
            v88 = 0;
            sub_1AF0D4F18(v20, &v88, 0xD000000000000025, 0x80000001AFF37040);
            goto LABEL_14;
          }

          sub_1AFDFBBB8();
          swift_allocObject();
          sub_1AF43C9F0(a3, a4);
          sub_1AFDFBBA8();
          sub_1AF8697D8();
          v82 = a3;
          sub_1AFDFBB88();
          v72 = 0;
          v69[1] = v19;
          v79 = a4;
          v24 = v95;
          v25 = v96;
          v26 = v98;
          v27 = v99;
          v28 = v100;
          v80 = v97;
          v81 = v99;

          sub_1AF43C9F0(v27, v28);
          sub_1AF86982C(0, 0, 0, 0, 0, 0);
          v73 = v24;
          v87[0] = v24;
          v87[1] = v25;

          MEMORY[0x1B2718AE0](45, 0xE100000000000000);

          MEMORY[0x1B2718AE0](v80, v26);
          v74 = v26;

          v75 = v25;

          v78 = v28;
          sub_1AF439ED8(v81, v28);

          v70 = v87[0];
          v71 = v87[1];

          MEMORY[0x1B2718AE0](0x7261612E7866762ELL, 0xE800000000000000);
          v29 = v87[0];
          static RemotePreviewPlayerPeer.projectFolder.getter(v14);
          v69[2] = v29;
          sub_1AFDFC088();
          v76 = *(v84 + 8);
          v77 = v84 + 8;
          v76(v14, v83);
          v30 = [objc_opt_self() processInfo];
          v31 = [v30 processName];

          v32 = sub_1AFDFCEF8();
          v34 = v33;

          v35 = sub_1AF85E8E0();
          v37 = v36;
          v38 = sub_1AF85E9B0();
          LOWORD(v88) = 512;
          v89 = xmmword_1AFE7AC20;
          v90 = v32;
          v91 = v34;
          v92 = v35;
          v93 = v37;
          v94 = v38;
          sub_1AF862C60(&v88);
          if (v94 < 4u)
          {
            v39 = v79;
            v40 = v75;
          }

          else
          {
            v39 = v79;
            v40 = v75;
            if (v94 == 4)
            {

              goto LABEL_20;
            }
          }

          v41 = sub_1AFDFEE28();

          if ((v41 & 1) == 0)
          {

LABEL_22:
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v87[0] = 0;
            v87[1] = 0xE000000000000000;
            sub_1AFDFE218();

            strcpy(v87, "Write to url: ");
            HIBYTE(v87[1]) = -18;
            sub_1AF869A28(&qword_1EB632790, MEMORY[0x1E6968FB0]);
            v47 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v47);

            v48 = v87[0];
            v49 = v87[1];
            v50 = sub_1AFDFD9F8();
            v87[0] = 0;
            sub_1AF0D4F18(v50, v87, v48, v49);

            if (v40)
            {
              v51 = v81;
              v52 = v72;
              sub_1AFDFC1D8();
              v53 = v71;
              if (v52)
              {

                v87[0] = 0;
                v87[1] = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF37090);
                swift_getErrorValue();
                sub_1AFDFEDD8();
                v54 = v52;
                v55 = v87[0];
                v56 = v87[1];
                v57 = sub_1AFDFDA08();
                v87[0] = 0;
                sub_1AF0D4F18(v57, v87, v55, v56);

                v87[0] = 0;
                v87[1] = 0xE000000000000000;
                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001ELL, 0x80000001AFF37090);
                swift_getErrorValue();
                sub_1AFDFEDD8();
                sub_1AF8618B4(0, v87[0], v87[1]);
                sub_1AF587E7C(v82, v79);

                v76(v85, v83);
                v58 = v73;
                v59 = v74;
                v60 = v40;
                v61 = v80;
                v62 = v51;
LABEL_36:
                sub_1AF86982C(v58, v60, v61, v59, v62, v78);
                return;
              }
            }

            else
            {
              v53 = v71;
              v52 = v72;
            }

            v63 = v86;
            v64 = v53;
            v65 = v85;
            sub_1AF85EADC(v70, v64, v85, v63, 1);
            if (v52)
            {

              v87[0] = 0;
              v87[1] = 0xE000000000000000;
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF36ED0);
              swift_getErrorValue();
              sub_1AFDFEDD8();
              v66 = v87[0];
              v67 = v87[1];
              v68 = sub_1AFDFDA08();
              v87[0] = 0;
              sub_1AF0D4F18(v68, v87, v66, v67);

              if (*&v63[OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection])
              {
                v87[0] = 0;
                v87[1] = 0xE000000000000000;

                sub_1AFDFE218();
                MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF36ED0);
                swift_getErrorValue();
                sub_1AFDFEDD8();
                sub_1AF8618B4(0, v87[0], v87[1]);
                sub_1AF587E7C(v82, v79);
              }

              else
              {
                sub_1AF587E7C(v82, v79);
              }

              v76(v85, v83);
              v62 = v81;
              v40 = v75;
            }

            else
            {

              v76(v65, v83);
              sub_1AF587E7C(v82, v39);

              v62 = v81;
            }

            v58 = v73;
            v59 = v74;
            v60 = v40;
            v61 = v80;
            goto LABEL_36;
          }

LABEL_20:
          v42 = [objc_opt_self() defaultManager];
          v43 = [v42 temporaryDirectory];

          sub_1AFDFC0B8();
          sub_1AFDFC088();

          v44 = v83;
          v45 = v76;
          v76(v10, v83);
          v46 = v85;
          v45(v85, v44);
          (*(v84 + 32))(v46, v14, v44);
          goto LABEL_22;
        }

        if (v95 == 3)
        {
          [swift_unknownObjectWeakLoadStrong() configurationIsIncompatibleWithStudio];
          swift_unknownObjectRelease();
LABEL_14:

          return;
        }
      }
    }

    else
    {
      sub_1AF869778(&v88, sub_1AF648AC8);
    }

    sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v88 = 0;
    *&v89 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF36FE0);
    v95 = a1;
    type metadata accessor for RemotePreviewPeerConnection(0);
    sub_1AFDFE458();
    v21 = v88;
    v22 = v89;
    v23 = sub_1AFDFDA08();
    v88 = 0;
    sub_1AF0D4F18(v23, &v88, v21, v22);
  }
}

void RemotePreviewPlayerPeer.openPackage(url:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v26 - v11;
  sub_1AFDFC068();
  sub_1AFDFC068();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v14 = sub_1AFDFC028();
  v16 = v15;
  v13(v12, v4);
  v27 = v14;
  v28 = v16;
  v26[6] = 45;
  v26[7] = 0xE100000000000000;
  sub_1AF4486E4();
  v17 = sub_1AFDFDE98();

  if (v17[2] >= 2uLL)
  {
    v20 = v17[5];
    v27 = v17[4];
    v28 = v20;
    swift_bridgeObjectRetain_n();
    MEMORY[0x1B2718AE0](45, 0xE100000000000000);

    v21 = v27;
    v22 = v28;
    v23 = v17[6];
    v24 = v17[7];

    v27 = v21;
    v28 = v22;

    MEMORY[0x1B2718AE0](v23, v24);

    v18 = v27;
    v19 = v28;
  }

  else
  {

    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v25 = v2;
  sub_1AF85EADC(v18, v19, a1, v25, 0);
}

void sub_1AF8683C8()
{
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFD9F8();
  v1 = 0;
  sub_1AF0D4F18(v0, &v1, 0x697463656E6E6F63, 0xEF79646165526E6FLL);
  [swift_unknownObjectWeakLoadStrong() connectionToStudioStarted];
  swift_unknownObjectRelease();
  type metadata accessor for RemotePreviewPlayerPeerConnection(0);
  if (swift_dynamicCastClass())
  {
    sub_1AF8613BC();
  }
}

uint64_t sub_1AF8684AC()
{
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFD9F8();
  v2 = 0;
  sub_1AF0D4F18(v0, &v2, 0xD000000000000010, 0x80000001AFF370D0);
  [swift_unknownObjectWeakLoadStrong() connectionToStudioFailed];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF868570()
{
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v0 = sub_1AFDFD9F8();
  v2 = 0;
  sub_1AF0D4F18(v0, &v2, 0xD000000000000013, 0x80000001AFF370B0);
  [swift_unknownObjectWeakLoadStrong() connectionToStudioWasCancelled];

  return swift_unknownObjectRelease();
}

uint64_t sub_1AF868638(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_1AFDFC6C8();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = *(v8 + 16);
  v12(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7, v10);
  if (qword_1EB637190 != -1)
  {
    swift_once();
  }

  sub_1AFDFC7A8();
  swift_allocObject();

  v13 = sub_1AFDFC758();
  v14 = sub_1AF869A70(v13, a3, a4);
  v15 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;

  sub_1AF869960(v16 + v15, &qword_1EB63F710, MEMORY[0x1E6977B10]);
  (v12)(v14 + v15, a1, v7);
  (*(v8 + 56))(v14 + v15, 0, 1, v7);
  *(v14 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_initiatedConnection) = 1;
  v17 = *(v14 + 32);
  if (v17)
  {
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v17;
    swift_retain_n();

    sub_1AFDFC748();

    sub_1AF615168();
    v20 = sub_1AFDFDB08();
    sub_1AFDFC788();
  }

  else
  {
  }

  sub_1AF869960(v23, &qword_1EB63F848, MEMORY[0x1E6977BE8]);
  (*(v8 + 8))(a1, v7);
  return v14;
}

uint64_t sub_1AF868934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
  if (v4 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AFF29520 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001AFF29500 == a2 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E737365636F7270 && a2 == 0xEB00000000656D61 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_1AFDFEE28() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000)
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

uint64_t sub_1AF868B3C(void *a1)
{
  sub_1AF86A00C(0, &qword_1EB63F8A0, sub_1AF869FB8, &type metadata for RemotePreviewPlayerPeer.UpdateAcknowledgement.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - v7;
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF869FB8();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v13 = 0;
    LOBYTE(v9) = sub_1AFDFE718();
    v12 = 1;
    sub_1AFDFE698();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9 & 1;
}

uint64_t sub_1AF868D1C(void *a1)
{
  sub_1AF86A00C(0, &qword_1EB63F7D8, sub_1AF869484, &type metadata for RemotePreviewPlayerPeer.Health.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11[-v7];
  v9 = a1[3];
  sub_1AF441150(a1, v9);
  sub_1AF869484();
  sub_1AFDFF3B8();
  if (!v1)
  {
    sub_1AF8694D8();
    v11[15] = 0;
    sub_1AF869538(&qword_1EB63F7F0);
    sub_1AFDFE768();
    v9 = v12;
    v11[14] = 1;
    sub_1AFDFE698();
    (*(v5 + 8))(v8, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v9;
}

id sub_1AF868F78()
{
  *&v0[OBJC_IVAR___VFXRemotePreviewPlayerPeer_timer] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___VFXRemotePreviewPlayerPeer_browser] = 0;
  *&v0[OBJC_IVAR___VFXRemotePreviewPlayerPeer_connection] = 0;
  swift_unknownObjectWeakAssign();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemotePreviewPlayerPeer();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *sub_1AF869150(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];

  return a1;
}

void *assignWithCopy for RemotePreviewPlayerPeer.Health(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];

  return a1;
}

void *assignWithTake for RemotePreviewPlayerPeer.Health(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[2];
  a1[1] = a2[1];
  a1[2] = v4;

  return a1;
}

uint64_t destroy for RemotePreviewPlayerPeer.Configuration()
{
}

uint64_t initializeWithCopy for RemotePreviewPlayerPeer.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v3;
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for RemotePreviewPlayerPeer.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for RemotePreviewPlayerPeer.Configuration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for RemotePreviewPlayerPeer.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RemotePreviewPlayerPeer.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AF869484()
{
  result = qword_1EB63F7E0;
  if (!qword_1EB63F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F7E0);
  }

  return result;
}

void sub_1AF8694D8()
{
  if (!qword_1EB63F7E8)
  {
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F7E8);
    }
  }
}

uint64_t sub_1AF869538(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1AF8694D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AF86959C()
{
  result = qword_1EB63F810;
  if (!qword_1EB63F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F810);
  }

  return result;
}

unint64_t sub_1AF8695F0()
{
  result = qword_1EB63F818;
  if (!qword_1EB63F818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F818);
  }

  return result;
}

unint64_t sub_1AF869644()
{
  result = qword_1EB63F820;
  if (!qword_1EB63F820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F820);
  }

  return result;
}

unint64_t sub_1AF8696D0()
{
  result = qword_1EB63F830;
  if (!qword_1EB63F830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F830);
  }

  return result;
}

unint64_t sub_1AF869724()
{
  result = qword_1EB63F838;
  if (!qword_1EB63F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F838);
  }

  return result;
}

uint64_t sub_1AF869778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AF8697D8()
{
  result = qword_1EB63F840;
  if (!qword_1EB63F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F840);
  }

  return result;
}

void sub_1AF86982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2)
  {

    sub_1AF439ED8(a5, a6);
  }
}

void sub_1AF86988C()
{
  if (!qword_1EB63F850)
  {
    sub_1AF86990C(255, &qword_1EB63F710, MEMORY[0x1E6977B10]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB63F850);
    }
  }
}

void sub_1AF86990C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF869960(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF86990C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AF8699BC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_1AF86990C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AF869A28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AF869A70(uint64_t a1, void *a2, uint64_t a3)
{
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 32) = 0;
  v6 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
  v7 = sub_1AFDFC6C8();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  *(a3 + 24) = &off_1F253DC88;
  swift_unknownObjectWeakAssign();
  *(a3 + 32) = a1;

  *(a3 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_initiatedConnection) = 0;
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;

  sub_1AFDFC748();

  sub_1AF615168();
  v10 = sub_1AFDFDB08();
  sub_1AFDFC788();

  return a3;
}

uint64_t sub_1AF869BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF869C28(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t assignWithCopy for RemotePreviewPlayerPeer.UpdateAcknowledgement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for RemotePreviewPlayerPeer.UpdateAcknowledgement(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for RemotePreviewPlayerPeer.UpdateAcknowledgement(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for RemotePreviewPlayerPeer.UpdateAcknowledgement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1AF869DAC()
{
  result = qword_1EB63F870;
  if (!qword_1EB63F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F870);
  }

  return result;
}

unint64_t sub_1AF869E04()
{
  result = qword_1EB63F878;
  if (!qword_1EB63F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F878);
  }

  return result;
}

unint64_t sub_1AF869E5C()
{
  result = qword_1EB63F880;
  if (!qword_1EB63F880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F880);
  }

  return result;
}

unint64_t sub_1AF869EB4()
{
  result = qword_1EB63F888;
  if (!qword_1EB63F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F888);
  }

  return result;
}

unint64_t sub_1AF869F0C()
{
  result = qword_1EB63F890;
  if (!qword_1EB63F890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F890);
  }

  return result;
}

unint64_t sub_1AF869F64()
{
  result = qword_1EB63F898;
  if (!qword_1EB63F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F898);
  }

  return result;
}

unint64_t sub_1AF869FB8()
{
  result = qword_1EB63F8A8;
  if (!qword_1EB63F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F8A8);
  }

  return result;
}

void sub_1AF86A00C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1AF86A088()
{
  result = qword_1EB63F8B8;
  if (!qword_1EB63F8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F8B8);
  }

  return result;
}

unint64_t sub_1AF86A0E0()
{
  result = qword_1EB63F8C0;
  if (!qword_1EB63F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F8C0);
  }

  return result;
}

unint64_t sub_1AF86A138()
{
  result = qword_1EB63F8C8;
  if (!qword_1EB63F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F8C8);
  }

  return result;
}

uint64_t sub_1AF86A1A0()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF86A214()
{
  sub_1AFDFF288();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF86A258@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF86A4D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF86A290()
{
  type metadata accessor for RemotePreviewSessionProtocol();
  sub_1AF86A904();
  sub_1AFDFC8C8();
  swift_allocObject();
  result = sub_1AFDFC8B8();
  qword_1EB6C3258 = result;
  return result;
}

uint64_t sub_1AF86A32C()
{

  type metadata accessor for RemotePreviewSessionProtocol();

  return swift_allocObject();
}

uint64_t sub_1AF86A360@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6977CC8];
  v3 = sub_1AFDFC8D8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1AF86A3DC(void *__src, int64_t __n)
{
  if (!__n)
  {
    return 0;
  }

  if (__n <= 14)
  {
    *&v5[6] = 0;
    if (__src)
    {
      v4 = __n;
    }

    else
    {
      v4 = 0;
    }

    *v5 = 0;
    v6 = v4;
    if (__src)
    {
      memcpy(v5, __src, __n);
      return *v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1AFDFBDF8();
    swift_allocObject();
    sub_1AFDFBDA8();
    if (__n >= 0x7FFFFFFF)
    {
      sub_1AFDFC178();
      result = swift_allocObject();
      *(result + 16) = 0;
      *(result + 24) = __n;
    }

    else
    {
      return __n << 32;
    }
  }

  return result;
}

uint64_t sub_1AF86A4D0(uint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1AF86A4E0(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  sub_1AFDFC908();
  if (!v11)
  {
    sub_1AF44CB60(&v9);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v4 = v8;
LABEL_6:
  v9 = v4;
  v10 = 0x4000000000000;
  sub_1AFDFC1E8();
  sub_1AF439ED8(a3, 0x4000000000000uLL);
  v5 = v9;
  v6 = v10;
  sub_1AFDFC958();
  sub_1AF439ED8(v5, v6);
  return sub_1AFDFC968();
}

uint64_t sub_1AF86A8C8(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    result = *(v3 + 16);
    v6 = *(v3 + 24);
    if (a1)
    {
      if (a2 - a1 >= result)
      {
LABEL_4:
        *v6 = *a1;
        *(v6 + 8) = 0;
        return result;
      }
    }

    else if (result <= 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

unint64_t sub_1AF86A904()
{
  result = qword_1EB63F8D0;
  if (!qword_1EB63F8D0)
  {
    type metadata accessor for RemotePreviewSessionProtocol();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F8D0);
  }

  return result;
}

unint64_t sub_1AF86A96C()
{
  result = qword_1EB63F8D8;
  if (!qword_1EB63F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F8D8);
  }

  return result;
}

uint64_t sub_1AF86A9C0(void *a1)
{
  v3 = v1;
  sub_1AF8710F4(0, &qword_1EB63F9E0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v13[-v9 - 8];
  sub_1AF441150(a1, a1[3]);
  sub_1AF87104C();
  sub_1AFDFF3F8();
  LOBYTE(v14) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1AFDFE8B8();
    v14 = *(v3 + 32);
    v15 = v14;
    v13[23] = 2;
    sub_1AF871158(&v15, v13);
    sub_1AF8711B4();
    sub_1AFDFE918();
    sub_1AF439ED8(v14, *(&v14 + 1));
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF86AB8C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF86ACA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  if (v2 != 1)
  {
    v4 = 1635017060;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6973726576;
  if (*a2 != 1)
  {
    v8 = 1635017060;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF86AD94()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 1635017060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1AF86ADE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF86FB28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF86AE08(uint64_t a1)
{
  v2 = sub_1AF87104C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF86AE44(uint64_t a1)
{
  v2 = sub_1AF87104C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF86AE80@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF87004C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1AF86AEE8()
{
  sub_1AFDFD038();
  sub_1AFDFD038();
}

uint64_t sub_1AF86AFE4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF86B0F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1AFDFEE28() & 1) == 0)
  {
    return 0;
  }

  return sub_1AF459C18(v2, v3);
}

BOOL sub_1AF86B16C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 9) == 1)
  {
    if (v2 | v3)
    {
      if (*(a2 + 9))
      {
        return (v4 | v5) != 0;
      }
    }

    else if (*(a2 + 9))
    {
      return (v4 | v5) == 0;
    }

    return 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else if ((v5 & 1) == 0 && v2 == v4)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1AF86B200(uint64_t a1, __int16 a2)
{
  v4 = sub_1AFDFC298();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v14 - v11;
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  v15 = a2;

  sub_1AFDFC678();
  sub_1AFDFC288();
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v5 + 16))(v9, v12, v4);

  sub_1AFDFC678();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_1AF86B3A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  return v1;
}

uint64_t sub_1AF86B41C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1AF86B4A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();
}

uint64_t sub_1AF86B51C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  return v1;
}

uint64_t sub_1AF86B590()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();
}

uint64_t sub_1AF86B608@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  *a1 = v3;
  return result;
}

uint64_t sub_1AF86B688()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1AFDFC678();
}

double sub_1AF86B704@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  *a1 = v3;
  a1[1] = v4;
  a1[2] = *v5;
  result = *&v5[9];
  *(a1 + 41) = *&v5[9];
  return result;
}

uint64_t sub_1AF86B794(_OWORD *a1)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1[1];
  v5[4] = *a1;
  v5[5] = v3;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  sub_1AF869698(v7, v5);

  return sub_1AFDFC678();
}

uint64_t sub_1AF86B840()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  v4[1] = v2;
  *v5 = *v3;
  *&v5[9] = *&v3[9];
  v4[0] = v1;

  sub_1AF862C60(v4);
  sub_1AFDFD038();

  sub_1AFDFD038();
}

uint64_t sub_1AF86B9C0()
{
  v1 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__connectionState;
  v2 = MEMORY[0x1E695C070];
  sub_1AF86FAD8(0, &qword_1EB63F970, &type metadata for RemotePreviewStudioPeerListener.Peer.ConnectionState, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__stateUpdateDate;
  v5 = MEMORY[0x1E695C070];
  sub_1AF870CF8(0, &qword_1EB63F978, MEMORY[0x1E6969530], MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__connection;
  sub_1AF870CF8(0, &qword_1EB63F980, sub_1AF86DE6C, v5);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__configuration;
  sub_1AF86FAD8(0, &qword_1EB63F990, &type metadata for RemotePreviewPlayerPeer.Configuration, v2);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__errors;
  sub_1AF86DEA0();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);

  return swift_deallocClassInstance();
}

uint64_t sub_1AF86BBF4()
{
  sub_1AFDFF288();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  *v5 = *v3;
  *&v5[9] = *&v3[9];
  v4[0] = v1;
  v4[1] = v2;

  sub_1AF862C60(v4);
  sub_1AFDFD038();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF86BDD4()
{
  sub_1AFDFF288();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  *v5 = *v3;
  *&v5[9] = *&v3[9];
  v4[0] = v1;
  v4[1] = v2;

  sub_1AF862C60(v4);
  sub_1AFDFD038();

  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF86BF6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemotePreviewStudioPeerListener.Peer(0);
  result = sub_1AFDFC5F8();
  *a1 = result;
  return result;
}

uint64_t sub_1AF86BFE0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  sub_1AF7EAA68(v1);

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1AFDFC678();
}

uint64_t sub_1AF86C0C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  return v1;
}

uint64_t sub_1AF86C12C(uint64_t a1)
{
  v2 = v1;
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v16 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001ALL, 0x80000001AFF37520);
  v21 = a1;
  type metadata accessor for RemotePreviewStudioPeerConnection(0);
  sub_1AFDFE458();
  v4 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    v14 = v4;
    swift_once();
    v4 = v14;
  }

  aBlock = 0;
  sub_1AF0D4F18(v4, &aBlock, 0, 0xE000000000000000);

  aBlock = 0;
  v16 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF374C0);
  v21 = a1;
  sub_1AFDFE458();
  v5 = aBlock;
  v6 = v16;
  v7 = sub_1AFDFD9F8();
  aBlock = 0;
  sub_1AF0D4F18(v7, &aBlock, v5, v6);

  v8 = *(v2 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AF871334;
  *(v10 + 24) = v9;
  v19 = sub_1AF6D25EC;
  v20 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1AF6F662C;
  v18 = &unk_1F253E4D8;
  v11 = _Block_copy(&aBlock);
  v12 = v8;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_1AF86C430(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1AF870E0C;
  *(v5 + 24) = v4;
  v9[4] = sub_1AF6D25EC;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1AF6F662C;
  v9[3] = &unk_1F253E460;
  v6 = _Block_copy(v9);
  v7 = v3;

  dispatch_sync(v7, v6);

  _Block_release(v6);
  swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_1AF86C5A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFCB38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32);
  v54 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16);
  *v55 = v9;
  *&v55[9] = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 41);
  v53 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration);
  v56 = v53;
  v57 = v54;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_13;
  }

  v46 = v4;
  v11 = *&v55[8];
  v12 = *&v55[16];
  v13 = v55[24];
  swift_getKeyPath();
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_1AF870D5C(&v53, v47);
  v45 = a2;
  sub_1AFDFC668();

  if (!*(*&v47[0] + 16))
  {

    goto LABEL_12;
  }

  sub_1AF41AFEC(v11, v12, v13);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_12:

    v47[0] = v56;
    v47[1] = v57;
    v48 = v10;
    v49 = v11;
    v50 = v12;
    v51 = v13;
    type metadata accessor for RemotePreviewStudioPeerListener.Peer(0);
    swift_allocObject();
    v19 = sub_1AF8702F0(1, 16640, 0, v47);
    swift_getKeyPath();
    swift_getKeyPath();

    v20 = v45;
    sub_1AFDFC668();

    a2 = v20;

    v21 = *&v47[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v47[0] = v21;
    sub_1AF857734(v19, v11, v12, v13, isUniquelyReferenced_nonNull_native);

    v23 = *&v47[0];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v47[0] = v23;

    sub_1AFDFC678();
    sub_1AF86BFE0();

    v4 = v46;
    goto LABEL_13;
  }

  sub_1AF86FA68(&v53, &qword_1EB63F798, &type metadata for RemotePreviewPlayerPeer.Configuration);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  v16 = WORD4(v47[0]) >> 14;
  if (v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = *&v47[0];
  }

  if (v16)
  {
    v18 = 0x4000;
  }

  else
  {
    v18 = BYTE8(v47[0]) | 0x4000;
  }

  sub_1AF86B200(v17, v18 | (((WORD4(v47[0]) & 0xC100) != 0) << 8));
  swift_getKeyPath();
  swift_getKeyPath();
  *&v47[0] = 0;
  sub_1AFDFC678();
  v4 = v46;
  a2 = v45;
LABEL_13:
  v24 = *(a2 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
  *v8 = v24;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v25 = v24;
  sub_1AFDFCB58();
  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  v26 = sub_1AFDFC658();
  v28 = v27;
  v29 = sub_1AF8707AC(v27, a1);

  if (*v28 >> 62)
  {
    v30 = sub_1AFDFE108();
  }

  else
  {
    v30 = *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF64E298(v29, v30);
  v26(v47, 0);

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v47[0] = 0xD000000000000013;
  *(&v47[0] + 1) = 0x80000001AFF374E0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  type metadata accessor for RemotePreviewStudioPeerListener.Peer(0);
  sub_1AF85A194();
  v31 = sub_1AFDFCC18();
  v33 = v32;

  MEMORY[0x1B2718AE0](v31, v33);

  v34 = v47[0];
  v35 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    v44 = v35;
    swift_once();
    v35 = v44;
  }

  *&v47[0] = 0;
  sub_1AF0D4F18(v35, v47, v34, *(&v34 + 1));

  *&v47[0] = 0;
  *(&v47[0] + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v47[0] = 0xD000000000000013;
  *(&v47[0] + 1) = 0x80000001AFF37500;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  v36 = v52;
  v37 = type metadata accessor for RemotePreviewStudioPeerConnection(0);
  v38 = MEMORY[0x1B2718E40](v36, v37);
  v40 = v39;

  MEMORY[0x1B2718AE0](v38, v40);

  v41 = v47[0];
  v42 = sub_1AFDFD9F8();
  *&v47[0] = 0;
  sub_1AF0D4F18(v42, v47, v41, *(&v41 + 1));
}

uint64_t sub_1AF86CD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFCB38();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32);
  v42 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16);
  *v43 = v9;
  *&v43[9] = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 41);
  v41 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration);
  v44 = v42;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v34 = v41;
  v35 = v4;
  v12 = *&v43[8];
  v11 = *&v43[16];
  v13 = v43[24];
  swift_getKeyPath();
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_1AF870D5C(&v41, v36);
  sub_1AFDFC668();

  if (!*(*&v36[0] + 16))
  {

    v14 = v12;
    goto LABEL_6;
  }

  v32 = sub_1AF41AFEC(v12, v11, v13);
  v14 = v12;
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_6:

    v17 = *(&v34 + 1);
    v36[0] = v34;
    v36[1] = v44;
    v37 = v10;
    v38 = v14;
    v33 = v14;
    v39 = v11;
    v40 = v13;
    type metadata accessor for RemotePreviewStudioPeerListener.Peer(0);
    swift_allocObject();
    v18 = sub_1AF8702F0(v17, 0, 0, v36);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1AFDFC668();

    v19 = *&v36[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v19;
    sub_1AF857734(v18, v33, v11, v13, isUniquelyReferenced_nonNull_native);

    v21 = *&v36[0];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v36[0] = v21;

    sub_1AFDFC678();
    sub_1AF86BFE0();
    goto LABEL_7;
  }

  sub_1AF86FA68(&v41, &qword_1EB63F798, &type metadata for RemotePreviewPlayerPeer.Configuration);

  sub_1AF86B200(*(&v34 + 1), 0);
LABEL_7:

  v4 = v35;
LABEL_8:
  v22 = *(a2 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
  *v8 = v22;
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
  v23 = v22;
  sub_1AFDFCB58();
  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  v24 = sub_1AFDFC658();
  v26 = v25;
  v27 = sub_1AF8707AC(v25, a1);

  if (*v26 >> 62)
  {
    v28 = sub_1AFDFE108();
  }

  else
  {
    v28 = *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF64E298(v27, v28);
  v24(v36, 0);

  if (*(a1 + 32))
  {

    sub_1AFDFC798();
  }

  v29 = OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint;
  sub_1AF85F6CC(a1 + OBJC_IVAR____TtC3VFX27RemotePreviewPeerConnection_endpoint);
  v30 = sub_1AFDFC6C8();
  return (*(*(v30 - 8) + 56))(a1 + v29, 1, 1, v30);
}

uint64_t sub_1AF86D23C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AFDFCB38();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue;
  v11 = *(v1 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
  *v9 = v11;
  v12 = *MEMORY[0x1E69E8020];
  v13 = *MEMORY[0x1E69E8020];
  v40 = *(v5 + 104);
  v40(v9, v13, v4, v7);
  v14 = v11;
  sub_1AFDFCB58();
  v15 = *(v5 + 8);
  result = (v15)(v9, v4);
  v17 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32);
  v50 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16);
  *v51 = v17;
  *&v51[9] = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 41);
  v49 = *(a1 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration);
  v52 = v49;
  v53 = v50;
  v18 = v17;
  if (!v17)
  {
    return result;
  }

  v36 = v15;
  v37 = v12;
  v38 = v10;
  v39 = v5 + 104;
  v19 = *&v51[16];
  v41 = *&v51[8];
  v20 = v51[24];
  swift_getKeyPath();
  swift_getKeyPath();
  swift_bridgeObjectRetain_n();
  sub_1AF870D5C(&v49, &v43);
  sub_1AFDFC668();

  v21 = *(v43 + 16);
  v42 = v20;
  if (!v21)
  {

    goto LABEL_6;
  }

  sub_1AF41AFEC(v41, v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_6:

    v43 = v52;
    v44 = v53;
    v24 = v41;
    v45 = v18;
    v46 = v41;
    v47 = v19;
    v48 = v42;
    type metadata accessor for RemotePreviewStudioPeerListener.Peer(0);
    swift_allocObject();

    v25 = sub_1AF8702F0(0, 0x8000, a1, &v43);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_1AFDFC668();

    v26 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = v26;
    sub_1AF857734(v25, v24, v19, v42, isUniquelyReferenced_nonNull_native);

    v28 = v43;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v43 = v28;

    sub_1AFDFC678();
    sub_1AF86BFE0();

    goto LABEL_7;
  }

  sub_1AF86B200(0, 0x8000);
  swift_getKeyPath();
  swift_getKeyPath();
  *&v43 = a1;

  sub_1AFDFC678();
  swift_getKeyPath();
  swift_getKeyPath();
  v43 = v52;
  v44 = v53;
  v45 = v18;
  v46 = v41;
  v47 = v19;
  v48 = v42;
  sub_1AFDFC678();
LABEL_7:
  v29 = *(v2 + v38);
  *v9 = v29;
  (v40)(v9, v37, v4);
  v30 = v29;
  sub_1AFDFCB58();
  v36(v9, v4);
  swift_getKeyPath();
  swift_getKeyPath();

  v31 = sub_1AFDFC658();
  v33 = v32;
  v34 = sub_1AF8707AC(v32, a1);

  if (*v33 >> 62)
  {
    v35 = sub_1AFDFE108();
  }

  else
  {
    v35 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1AF64E298(v34, v35);
  v31(&v43, 0);
}

uint64_t sub_1AF86D7AC()
{
  sub_1AF0FBDE0(v0 + 16);
  v1 = OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener__pendingConnections;
  v2 = MEMORY[0x1E695C070];
  sub_1AF870CF8(0, &qword_1EB63F908, sub_1AF86DB4C, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener__peers;
  sub_1AF870CF8(0, &qword_1EB63F918, sub_1AF86DB80, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener__identifiersToPeers;
  sub_1AF870CF8(0, &qword_1EB63F928, sub_1AF86DBD4, v2);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);

  return swift_deallocClassInstance();
}

void sub_1AF86D994()
{
  sub_1AF870CF8(319, &qword_1EB63F908, sub_1AF86DB4C, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1AF870CF8(319, &qword_1EB63F918, sub_1AF86DB80, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1AF870CF8(319, &qword_1EB63F928, sub_1AF86DBD4, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1AF86DBD4()
{
  if (!qword_1EB63F930)
  {
    type metadata accessor for RemotePreviewStudioPeerListener.Peer(255);
    sub_1AF85A194();
    v0 = sub_1AFDFCCB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F930);
    }
  }
}

void sub_1AF86DC48()
{
  sub_1AF86FAD8(319, &qword_1EB63F970, &type metadata for RemotePreviewStudioPeerListener.Peer.ConnectionState, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1AF870CF8(319, &qword_1EB63F978, MEMORY[0x1E6969530], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1AF870CF8(319, &qword_1EB63F980, sub_1AF86DE6C, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1AF86FAD8(319, &qword_1EB63F990, &type metadata for RemotePreviewPlayerPeer.Configuration, MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_1AF86DEA0();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1AF86DEA0()
{
  if (!qword_1EB63F998)
  {
    sub_1AF86DF24(255, &qword_1EB63F9A0, &qword_1ED7268D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
    v0 = sub_1AFDFC688();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB63F998);
    }
  }
}

void sub_1AF86DF24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1AF5C5358(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RemotePreviewStudioPeerListener.Peer.ConnectionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 10))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 7) & 0x7C | (*(a1 + 8) >> 14)) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for RemotePreviewStudioPeerListener.Peer.ConnectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 0x1F) - 32 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1AF86E034(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1AF86E064(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 0x1FF | (a2 << 14);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x8000;
  }

  return result;
}

uint64_t sub_1AF86E0A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for ScriptFunction(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for ScriptFunction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ScriptFunction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for ScriptFunction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AF86E208@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RemotePreviewStudioPeerListener(0);
  result = sub_1AFDFC5F8();
  *a1 = result;
  return result;
}

uint64_t sub_1AF86E248()
{
  v1 = v0;
  type metadata accessor for RemotePreviewStudioPeerConnection(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = qword_1ED730EA0;

    if (v4 != -1)
    {
      swift_once();
    }

    v19 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF374C0);
    v24 = v3;
    sub_1AFDFE458();
    v5 = sub_1AFDFD9F8();
    if (qword_1ED731058 != -1)
    {
      v17 = v5;
      swift_once();
      v5 = v17;
    }

    aBlock = 0;
    sub_1AF0D4F18(v5, &aBlock, 0, 0xE000000000000000);

    aBlock = 0;
    v19 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF374C0);
    v24 = v3;
    sub_1AFDFE458();
    v6 = aBlock;
    v7 = v19;
    v8 = sub_1AFDFD9F8();
    aBlock = 0;
    sub_1AF0D4F18(v8, &aBlock, v6, v7);

    v9 = *(v1 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    *(v10 + 24) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1AF870DE4;
    *(v11 + 24) = v10;
    v22 = sub_1AF6D25EC;
    v23 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v19 = 1107296256;
    v20 = sub_1AF6F662C;
    v21 = &unk_1F253E3E8;
    v12 = _Block_copy(&aBlock);

    v13 = v9;

    dispatch_sync(v13, v12);

    _Block_release(v12);
    swift_isEscapingClosureAtFileLocation();

    swift_unknownObjectWeakLoadStrong();
    v14 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v14 + 8))(v3, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF86E5F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15 || (v5 = v4, type metadata accessor for RemotePreviewStudioPeerConnection(0), (v8 = swift_dynamicCastClass()) == 0))
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  else
  {
    v9 = v8;
    sub_1AF587E54(a3, a4);

    sub_1AFDFC908();
    v10 = MEMORY[0x1E69E7CA0];
    if (!*(&v30 + 1))
    {
      sub_1AF86FA68(&aBlock, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_10;
    }

    if (LOBYTE(v27[0]) != 2)
    {
      if (LOBYTE(v27[0]) == 4)
      {
        sub_1AFDFBBB8();
        swift_allocObject();
        sub_1AFDFBBA8();
        sub_1AF86F9A0();
        sub_1AFDFBB88();
        sub_1AF860AD8(aBlock);
        sub_1AF587E7C(a3, a4);

LABEL_20:
      }

      if (LOBYTE(v27[0]) == 5)
      {
        sub_1AFDFBBB8();
        swift_allocObject();
        sub_1AFDFBBA8();
        sub_1AF86F94C();
        sub_1AFDFBB88();
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1AFDFC678();
        sub_1AF587E7C(a3, a4);
      }

LABEL_10:
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v27[0] = aBlock;
      MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF37440);
      sub_1AFDFC908();
      if (*(&v30 + 1))
      {
        if (swift_dynamicCast())
        {
          v11 = v24;
LABEL_17:
          LOBYTE(aBlock) = v11;
          sub_1AFDFE458();
          v12 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            v22 = v12;
            swift_once();
            v12 = v22;
          }

          *&aBlock = 0;
          sub_1AF0D4F18(v12, &aBlock, *&v27[0], *(&v27[0] + 1));
          sub_1AF587E7C(a3, a4);
          goto LABEL_20;
        }
      }

      else
      {
        sub_1AF86FA68(&aBlock, &qword_1ED726850, v10 + 8);
      }

      v11 = 0;
      goto LABEL_17;
    }

    sub_1AFDFBBB8();
    swift_allocObject();
    sub_1AFDFBBA8();
    sub_1AF86F9F4();
    sub_1AFDFBB88();
    v24 = aBlock;
    v25 = v30;
    v26[0] = *v31;
    *(v26 + 9) = *&v31[9];
    v14 = *(v9 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 16);
    v13 = *(v9 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 32);
    v15 = *(v9 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration);
    *(v28 + 9) = *(v9 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration + 41);
    v27[1] = v14;
    v28[0] = v13;
    v27[0] = v15;
    memmove((v9 + OBJC_IVAR____TtC3VFX33RemotePreviewStudioPeerConnection_playerConfiguration), &aBlock, 0x39uLL);
    sub_1AF869698(&v24, v23);
    sub_1AF86FA68(v27, &qword_1EB63F798, &type metadata for RemotePreviewPlayerPeer.Configuration);
    if (*(&v24 + 1) >= 3031 && v25 == 1004)
    {
      sub_1AF862C60(&v24);
      sub_1AF86C12C(v9);
      sub_1AF587E7C(a3, a4);
    }

    else
    {
      v17 = *(v4 + OBJC_IVAR____TtC3VFX31RemotePreviewStudioPeerListener_queue);
      v18 = swift_allocObject();
      *(v18 + 16) = v9;
      *(v18 + 24) = v5;
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1AF871330;
      *(v19 + 24) = v18;
      v23[4] = sub_1AF6D25EC;
      v23[5] = v19;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1107296256;
      v23[2] = sub_1AF6F662C;
      v23[3] = &unk_1F253E370;
      v20 = _Block_copy(v23);

      v21 = v17;

      dispatch_sync(v21, v20);

      _Block_release(v20);
      swift_isEscapingClosureAtFileLocation();

      sub_1AF587E7C(a3, a4);

      return sub_1AF862C60(&v24);
    }
  }

  return result;
}

uint64_t sub_1AF86EF2C()
{
  type metadata accessor for RemotePreviewStudioPeerConnection(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;

    sub_1AF86C430(v2);
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v2, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF86F030()
{
  type metadata accessor for RemotePreviewStudioPeerConnection(0);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;

    sub_1AF86C430(v2);
    swift_unknownObjectWeakLoadStrong();
    v3 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(v2, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

unint64_t sub_1AF86F13C()
{
  result = qword_1EB63F9A8;
  if (!qword_1EB63F9A8)
  {
    type metadata accessor for RemotePreviewStudioPeerListener.Peer(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9A8);
  }

  return result;
}

unint64_t sub_1AF86F198()
{
  result = qword_1EB63F9B0;
  if (!qword_1EB63F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9B0);
  }

  return result;
}

__n128 sub_1AF86F1EC@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1AF86F274()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1AFDFC678();
}

uint64_t sub_1AF86F308()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();
}

uint64_t sub_1AF86F384(uint64_t a1)
{
  v2 = sub_1AFDFC298();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v6, v11, v2);

  sub_1AFDFC678();
  return (*(v3 + 8))(v11, v2);
}

uint64_t sub_1AF86F4F4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1AFDFC678();
}

uint64_t sub_1AF86F56C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  *a1 = v3;
  return result;
}

uint64_t sub_1AF86F5E8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1AFDFC678();
  return sub_1AF86BFE0();
}

BOOL sub_1AF86F668(uint64_t a1, unsigned __int16 a2, uint64_t a3, unsigned __int16 a4)
{
  if (a2 >> 14)
  {
    if (a2 >> 14 != 1)
    {
      v5 = a4 & 0xC000;
      if (a1 | a2 ^ 0x8000)
      {
        if (v5 == 0x8000 && a3 == 1 && a4 == 0x8000)
        {
          return 1;
        }
      }

      else if (v5 == 0x8000 && !a3 && a4 == 0x8000)
      {
        return 1;
      }

      return 0;
    }

    if ((a4 & 0xC000) == 0x4000)
    {
      if ((a2 & 0x100) == 0)
      {
        if ((a4 & 0x100) == 0)
        {
          if (a2)
          {
            if (a4)
            {
              return 1;
            }
          }

          else if ((a4 & 1) == 0 && a1 == a3)
          {
            return 1;
          }
        }

        return 0;
      }

      if (!(a1 | a2))
      {
        if ((a4 & 0x100) != 0)
        {
          return (a3 | a4) == 0;
        }

        return 0;
      }

LABEL_28:
      if ((a4 & 0x100) != 0)
      {
        return (a3 | a4) != 0;
      }
    }
  }

  else
  {
    if (a4 >= 0x4000u)
    {
      return 0;
    }

    if ((a2 & 0x100) == 0)
    {
      if ((a4 & 0x100) == 0)
      {
        if (a2)
        {
          if (a4)
          {
            return 1;
          }
        }

        else if ((a4 & 1) == 0 && a1 == a3)
        {
          return 1;
        }
      }

      return 0;
    }

    if (a1 | a2)
    {
      goto LABEL_28;
    }

    if ((a4 & 0x100) != 0)
    {
      return (a3 | a4) == 0;
    }
  }

  return 0;
}

uint64_t sub_1AF86F798()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  v11[1] = v9;
  *v12 = *v10;
  *&v12[9] = *&v10[9];
  v11[0] = v8;
  v0 = *&v12[8];
  swift_bridgeObjectRetain_n();
  sub_1AF862C60(v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1AFDFC668();

  v13[1] = v6;
  *v14 = *v7;
  *&v14[9] = *&v7[9];
  v13[0] = v5;
  v1 = *&v14[8];
  swift_bridgeObjectRetain_n();
  sub_1AF862C60(v13);
  if (v0 == v1 && (*&v10[9] >> 56) == (*&v7[9] >> 56))
  {

LABEL_5:
    v3 = sub_1AF459C18(v10[24], v7[24]);
    goto LABEL_6;
  }

  v2 = sub_1AFDFEE28();

  v3 = 0;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v3 & 1;
}

unint64_t sub_1AF86F94C()
{
  result = qword_1EB63F9B8;
  if (!qword_1EB63F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9B8);
  }

  return result;
}

unint64_t sub_1AF86F9A0()
{
  result = qword_1EB63F9C0;
  if (!qword_1EB63F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9C0);
  }

  return result;
}

unint64_t sub_1AF86F9F4()
{
  result = qword_1EB63F9C8;
  if (!qword_1EB63F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9C8);
  }

  return result;
}

uint64_t sub_1AF86FA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1AF86FA68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF86FAD8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AF86FAD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AF86FB28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1AF86FC40(unint64_t a1, uint64_t a2)
{
  sub_1AF0D4E74();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC298();
  v11 = *(v10 - 8);
  v14 = MEMORY[0x1EEE9AC00](v10, v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v31 = v13;
    v17 = sub_1AFDFE108();
    v13 = v31;
    if (v17)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    return 0;
  }

LABEL_3:
  v36 = v11;
  v37 = v13;
  v38 = v2;
  v18 = 0;
  while ((a1 & 0xC000000000000001) == 0)
  {
    v19 = *(a1 + 8 * v18 + 32);

    if (v19 == a2)
    {
      goto LABEL_9;
    }

LABEL_6:

    if (v17 == ++v18)
    {
      return 0;
    }
  }

  if (MEMORY[0x1B2719C70](v18, a1, v14) != a2)
  {
    goto LABEL_6;
  }

LABEL_9:
  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF374A0);
  v41 = a2;
  type metadata accessor for RemotePreviewStudioPeerConnection(0);
  sub_1AFDFE458();
  v20 = v39;
  v21 = v40;
  v35 = sub_1AFDFD9F8();
  if (qword_1ED731058 != -1)
  {
    swift_once();
  }

  v34 = v9;
  if (qword_1ED730E98 != -1)
  {
    swift_once();
  }

  sub_1AF86DF24(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1AFE431C0;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1AF0D544C();
  *(v22 + 32) = v20;
  *(v22 + 40) = v21;

  v33 = v21;
  v23 = v35;
  sub_1AFDFC4C8();

  sub_1AFDFC288();
  v24 = v6[12];
  v25 = v16;
  v26 = v20;
  v27 = v6[16];
  v28 = v34;
  v29 = &v34[v6[20]];
  (*(v36 + 32))(v34, v25, v37);
  *(v28 + v24) = v23;
  *(v28 + v27) = 0;
  v30 = v33;
  *v29 = v26;
  *(v29 + 1) = v30;

  sub_1AFDFC608();

  sub_1AF0D54A0(v28);

  return v18;
}

uint64_t sub_1AF87004C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF8710F4(0, &qword_1EB63F9D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v21 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF87104C();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1AFDFE708();
  v13 = v12;
  v23 = a2;
  v24 = v11;
  LOBYTE(v25) = 1;
  v14 = sub_1AFDFE708();
  v16 = v15;
  v22 = v14;
  v27 = 2;
  sub_1AF8710A0();
  sub_1AFDFE768();
  (*(v7 + 8))(v10, v6);
  v17 = v25;
  v18 = v26;

  sub_1AF43C9F0(v17, v18);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

  result = sub_1AF439ED8(v17, v18);
  v20 = v23;
  *v23 = v24;
  v20[1] = v13;
  v20[2] = v22;
  v20[3] = v16;
  v20[4] = v17;
  v20[5] = v18;
  return result;
}

uint64_t sub_1AF8702F0(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  v46 = a3;
  v45 = a2;
  v44 = a1;
  sub_1AF86DEA0();
  v43 = v6;
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E695C070];
  sub_1AF870CF8(0, &qword_1EB63F980, sub_1AF86DE6C, MEMORY[0x1E695C070]);
  v40 = v10;
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - v12;
  sub_1AF870CF8(0, &qword_1EB63F978, MEMORY[0x1E6969530], v9);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v39 - v18;
  v20 = sub_1AFDFC298();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v39 - v27;
  v29 = a4[1];
  v50 = *a4;
  v51 = v29;
  v52[0] = a4[2];
  *(v52 + 9) = *(a4 + 41);
  v30 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__stateUpdateDate;
  sub_1AFDFC288();
  (*(v21 + 16))(v24, v28, v20);
  sub_1AFDFC648();
  (*(v21 + 8))(v28, v20);
  (*(v16 + 32))(v4 + v30, v19, v15);
  v31 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__connection;
  *&v47 = 0;
  sub_1AF86DE6C(0);
  sub_1AFDFC648();
  v32 = v39;
  v33 = v40;
  (*(v39 + 32))(v4 + v31, v13, v40);
  v34 = OBJC_IVAR____TtCC3VFX31RemotePreviewStudioPeerListener4Peer__errors;
  *&v47 = MEMORY[0x1E69E7CC0];
  sub_1AF86DF24(0, &qword_1EB63F9A0, &qword_1ED7268D0, MEMORY[0x1E69E7280], MEMORY[0x1E69E62F8]);
  v35 = v41;
  sub_1AFDFC648();
  (*(v42 + 32))(v4 + v34, v35, v43);
  *&v47 = v44;
  WORD4(v47) = v45;
  sub_1AFDFC648();
  v36 = *(v32 + 8);
  v37 = v46;

  v36(v4 + v31, v33);
  *&v47 = v37;
  sub_1AFDFC648();
  v47 = v50;
  v48 = v51;
  v49[0] = v52[0];
  *(v49 + 9) = *(v52 + 9);
  sub_1AFDFC648();
  return v4;
}

uint64_t sub_1AF8707AC(unint64_t *a1, uint64_t a2)
{
  sub_1AF0D4E74();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC298();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  result = sub_1AF86FC40(*a1, a2);
  v39 = v2;
  if (!v2)
  {
    if (v17)
    {
      if (v15 >> 62)
      {
        return sub_1AFDFE108();
      }

      else
      {
        return *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v43 = v14;
      v44 = v10;
      v45 = v9;
      v46 = v6;
      v37[0] = a1;
      v41 = (v11 + 32);
      v42 = "Could not decode configuration";
      v40 = xmmword_1AFE431C0;
      v38 = result;
      v18 = result;
      v47 = a2;
LABEL_7:
      v19 = v15 & 0xFFFFFFFFFFFFFF8;
      v50 = v15 & 0xFFFFFFFFFFFFFF8;
      if ((v15 & 0x8000000000000000) != 0)
      {
        v19 = v15;
      }

      v37[1] = v19;
      v48 = v15;
      v49 = v15 & 0xC000000000000001;
      v51 = v15 >> 62;
      v20 = v18;
      if (!(v15 >> 62))
      {
LABEL_10:
        v21 = *(v50 + 16);
        goto LABEL_11;
      }

      while (1)
      {
        v21 = sub_1AFDFE108();
LABEL_11:
        if (v20 + 1 == v21)
        {
          return v38;
        }

        if (v49)
        {
          v22 = MEMORY[0x1B2719C70](v20 + 1, v15);
          if (v22 != a2)
          {
LABEL_23:

            v32 = v38;
            v18 = v20 + 1;
            if (v38 - 1 != v20)
            {
              if (v49)
              {
                v33 = MEMORY[0x1B2719C70]();
                v34 = MEMORY[0x1B2719C70](v20 + 1, v15);
              }

              else
              {
                v33 = *(v15 + 8 * v38 + 32);
                v34 = *(v15 + 8 * v20 + 40);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
              {
                v15 = sub_1AFC28858(v15);
                v35 = (v15 >> 62) & 1;
              }

              else
              {
                LODWORD(v35) = 0;
              }

              v36 = v15 & 0xFFFFFFFFFFFFFF8;
              *((v15 & 0xFFFFFFFFFFFFFF8) + 8 * v38 + 0x20) = v34;

              if ((v15 & 0x8000000000000000) != 0 || v35)
              {
                v15 = sub_1AFC28858(v15);
                v36 = v15 & 0xFFFFFFFFFFFFFF8;
              }

              *(v36 + 8 * v20 + 40) = v33;

              *v37[0] = v15;
              v32 = v38;
            }

            v38 = v32 + 1;
            goto LABEL_7;
          }
        }

        else
        {

          if (v22 != a2)
          {
            goto LABEL_23;
          }
        }

        v52 = v22;
        v53 = v20 + 1;
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v54 = 0;
        v55 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000001DLL, v42 | 0x8000000000000000);
        v56 = a2;
        type metadata accessor for RemotePreviewStudioPeerConnection(0);
        sub_1AFDFE458();
        v24 = v54;
        v23 = v55;
        v25 = sub_1AFDFD9F8();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AF86DF24(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v26 = swift_allocObject();
        *(v26 + 16) = v40;
        *(v26 + 56) = MEMORY[0x1E69E6158];
        *(v26 + 64) = sub_1AF0D544C();
        *(v26 + 32) = v24;
        *(v26 + 40) = v23;

        sub_1AFDFC4C8();

        v27 = v43;
        sub_1AFDFC288();
        v28 = v45;
        v29 = v46[12];
        v30 = v46[16];
        v31 = &v45[v46[20]];
        (*v41)(v45, v27, v44);
        *(v28 + v29) = v25;
        *(v28 + v30) = 0;
        *v31 = v24;
        *(v31 + 1) = v23;

        sub_1AFDFC608();

        sub_1AF0D54A0(v28);

        v20 = v53;
        a2 = v47;
        v15 = v48;
        if (!v51)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

void sub_1AF870CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AF870D5C(uint64_t a1, uint64_t a2)
{
  sub_1AF86FAD8(0, &qword_1EB63F798, &type metadata for RemotePreviewPlayerPeer.Configuration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for RemotePreviewStudioPeerListener.Effect(uint64_t a1)
{

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return sub_1AF439ED8(v2, v3);
}

void *initializeWithCopy for RemotePreviewStudioPeerListener.Effect(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[4];
  v6 = a2[5];

  sub_1AF43C9F0(v5, v6);
  a1[4] = v5;
  a1[5] = v6;
  return a1;
}

void *assignWithCopy for RemotePreviewStudioPeerListener.Effect(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  v5 = a2[4];
  v4 = a2[5];
  sub_1AF43C9F0(v5, v4);
  v6 = a1[4];
  v7 = a1[5];
  a1[4] = v5;
  a1[5] = v4;
  sub_1AF439ED8(v6, v7);
  return a1;
}

void *assignWithTake for RemotePreviewStudioPeerListener.Effect(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;

  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;

  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  sub_1AF439ED8(v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for RemotePreviewStudioPeerListener.Peer.ConnectionState.DisconnectionReason(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RemotePreviewStudioPeerListener.Peer.ConnectionState.DisconnectionReason(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 10) = v3;
  return result;
}

uint64_t sub_1AF870FF8(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AF871014(uint64_t result, int a2)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    *(result + 9) = 1;
  }

  else
  {
    *(result + 9) = 0;
  }

  return result;
}

unint64_t sub_1AF87104C()
{
  result = qword_1EB63F9D8;
  if (!qword_1EB63F9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9D8);
  }

  return result;
}

unint64_t sub_1AF8710A0()
{
  result = qword_1EB632780;
  if (!qword_1EB632780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB632780);
  }

  return result;
}

void sub_1AF8710F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF87104C();
    v7 = a3(a1, &type metadata for RemotePreviewStudioPeerListener.Effect.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF8711B4()
{
  result = qword_1EB640230;
  if (!qword_1EB640230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB640230);
  }

  return result;
}

unint64_t sub_1AF87121C()
{
  result = qword_1EB63F9E8;
  if (!qword_1EB63F9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9E8);
  }

  return result;
}

unint64_t sub_1AF871274()
{
  result = qword_1EB63F9F0;
  if (!qword_1EB63F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63F9F0);
  }

  return result;
}

unint64_t sub_1AF8712CC()
{
  result = qword_1EB63F9F8[0];
  if (!qword_1EB63F9F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB63F9F8);
  }

  return result;
}

uint64_t sub_1AF8713D0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_1AFDFDD58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v24[-v18];
  sub_1AF0D5A54(a1, v24);
  v20 = swift_dynamicCast();
  v21 = *(v11 + 56);
  if (v20)
  {
    v21(v10, 0, 1, a3);
    v22 = *(v11 + 32);
    v22(v19, v10, a3);
    (*(v11 + 16))(v15, v19, a3);
    v22(a2, v15, a3);
    return (*(v11 + 8))(v19, a3);
  }

  else
  {
    v21(v10, 1, 1, a3);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1AF871630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AFDFDD58();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v19[-v9];
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v19[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AF0D5A54(a1, v19);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, a3);
    (*(v11 + 32))(v15, v10, a3);
    return (*(v11 + 40))(a2, v15, a3);
  }

  else
  {
    v17(v10, 1, 1, a3);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1AF871824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a2;
  v5 = sub_1AF585714(a3);
  v6 = *(*(a2 - 8) + 16);

  return v6(v5, a1, a2);
}

BOOL sub_1AF871890()
{
  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_1AF872A34(0, &qword_1ED722038, MEMORY[0x1E69E6270], MEMORY[0x1E69E6720]);
  if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
  {
    return 1;
  }

  sub_1AF872A34(0, &unk_1ED721F60, MEMORY[0x1E69E6878], MEMORY[0x1E69E6720]);
  return swift_dynamicCastMetatype() != 0;
}

uint64_t sub_1AF871960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    LOBYTE(v21) = v13;
    return swift_setAtReferenceWritableKeyPath();
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
LABEL_41:
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    *&v21 = v13;
    return swift_setAtReferenceWritableKeyPath();
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
LABEL_7:
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    LODWORD(v21) = v13;
    return swift_setAtReferenceWritableKeyPath();
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    (*(v7 + 16))(v9, v3, a3);
    sub_1AF0D5A54(a1, &v17);
    if (swift_dynamicCast())
    {
      v11 = v13;
    }

    else
    {
      sub_1AF0D5A54(a1, &v13);
      swift_dynamicCast();
      v11 = v21;
    }

    *&v17 = v11;
    swift_setAtReferenceWritableKeyPath();
    return (*(v7 + 8))(v9, a3);
  }

  sub_1AF8729CC(255, &qword_1ED722EC0, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7428]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  sub_1AF8729CC(255, &qword_1ED72F730, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E7450]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  sub_1AF8729CC(255, &qword_1ED722EB8, sub_1AF477BB4, MEMORY[0x1E69E7668], MEMORY[0x1E69E74A8]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  sub_1AF8729CC(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  sub_1AF8729CC(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  sub_1AF8729CC(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  type metadata accessor for simd_float2x2(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  type metadata accessor for simd_float2x3(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_35;
  }

  type metadata accessor for simd_float2x4(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_35;
  }

  type metadata accessor for simd_float3x2(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    v21 = v13;
    *&v22 = v14;
    return swift_setAtReferenceWritableKeyPath();
  }

  type metadata accessor for simd_float3x3(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass() || (type metadata accessor for simd_float3x4(255), sub_1AFDFEA28(), swift_dynamicCastClass()))
  {
    sub_1AF0D5A54(a1, &v21);
    swift_dynamicCast();
    v13 = v17;
    v14 = v18;
    v15 = v19;
    return swift_setAtReferenceWritableKeyPath();
  }

  type metadata accessor for simd_float4x2(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
LABEL_35:
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    v21 = v13;
    v22 = v14;
    return swift_setAtReferenceWritableKeyPath();
  }

  type metadata accessor for simd_float4x3(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass() || (type metadata accessor for simd_float4x4(255), sub_1AFDFEA28(), swift_dynamicCastClass()))
  {
    sub_1AF0D5A54(a1, &v21);
    swift_dynamicCast();
    v13 = v17;
    v14 = v18;
    v15 = v19;
    v16 = v20;
    return swift_setAtReferenceWritableKeyPath();
  }

  type metadata accessor for simd_quatf(255);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_25;
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  sub_1AF67C9FC(255, &qword_1ED72F950, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
LABEL_25:
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    v21 = v13;
    return swift_setAtReferenceWritableKeyPath();
  }

  sub_1AF67C9FC(255, &qword_1ED72F958, MEMORY[0x1E69E6448], MEMORY[0x1E69E6468], MEMORY[0x1E69E66A8]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    v21 = v13;
    LOBYTE(v22) = v14;
    return swift_setAtReferenceWritableKeyPath();
  }

  sub_1AF67C9FC(255, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    sub_1AF0D5A54(a1, &v17);
    swift_dynamicCast();
    v21 = v13;
    *&v22 = v14;
    BYTE8(v22) = BYTE8(v14);
    return swift_setAtReferenceWritableKeyPath();
  }

  sub_1AF872A34(255, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  sub_1AF872A34(255, &qword_1ED723210, MEMORY[0x1E69E6448], MEMORY[0x1E69E62F8]);
  sub_1AFDFEA28();
  if (swift_dynamicCastClass())
  {
    goto LABEL_41;
  }

  v12 = MEMORY[0x1E69E7CA0];
  sub_1AFDFEA28();
  if (swift_dynamicCastClass() || (sub_1AF872A34(255, &qword_1ED726850, v12 + 8, MEMORY[0x1E69E6720]), sub_1AFDFEA28(), swift_dynamicCastClass()))
  {
    sub_1AF0D5A54(a1, &v17);
    return swift_setAtReferenceWritableKeyPath();
  }

  *&v17 = 0;
  *(&v17 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2E910);
  *&v13 = a2;
  sub_1AFDFE008();
  sub_1AFDFE458();
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF8727C4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, a1, v6);
  DynamicType = swift_getDynamicType();
  (*(v5 + 8))(v8, a1);
  isClassType = swift_isClassType();
  if (isClassType)
  {
    v12 = DynamicType == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    MEMORY[0x1EEE9AC00](isClassType, v11);
    v16[-2] = a1;
    v16[-1] = a2;
    sub_1AF9673CC(v2, sub_1AF3BC858, &v16[-4], a1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6878], MEMORY[0x1E69E7410], v13);
    return v16[1];
  }

  else
  {
    v14 = sub_1AFDFEE08();
    swift_unknownObjectRelease();
    return v14;
  }
}

uint64_t sub_1AF87295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10[2] = a1;
  v10[3] = a2;
  sub_1AF9673CC(v8, sub_1AF872A84, v10, a1, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6878], MEMORY[0x1E69E7410], a8);
  return v10[5];
}

void sub_1AF8729CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AF872A34(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 initializeWithCopy for _ClassContextDescriptor(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for _ClassContextDescriptor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 44))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _ClassContextDescriptor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 44) = v3;
  return result;
}

uint64_t sub_1AF872B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  LODWORD(a3) = (*(a3 + 16))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return a3;
}

uint64_t sub_1AF872C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  LODWORD(a3) = (*(a3 + 24))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return a3;
}

uint64_t sub_1AF872D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  LODWORD(a3) = (*(a3 + 40))(a2, a3);
  (*(v5 + 8))(v7, a2);
  return a3;
}

BOOL sub_1AF872E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AF874814(a1, a2, a3, WitnessTable);
}

uint64_t sub_1AF872EC4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF872F30(uint64_t a1)
{
  result = sub_1AF872F58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1AF872F58()
{
  result = qword_1EB63FA80;
  if (!qword_1EB63FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB63FA80);
  }

  return result;
}

uint64_t sub_1AF872FBC(uint64_t *a1)
{
  v2 = a1 + 1;
  if (a1[1])
  {
    sub_1AF38C65C();
    v4 = v3 - v2;
    if (sub_1AF8744B4(*a1) == 14)
    {
      v5 = &unk_1EB63FAA0;
    }

    else
    {
      v5 = &unk_1EB63FA98;
    }

    sub_1AF8745C4(0, v5);
    *(&v11 + 1) = v7;
    v12 = &off_1F253E8C0;
    *&v10 = v2 + v4;
    v8 = v7;
    sub_1AF441150(&v10, v7);
    v6 = (off_1F253E8D0[0])(v8);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1AF87439C(&v10);
    return 0;
  }

  return v6;
}

uint64_t sub_1AF8730C0(uint64_t *a1)
{
  v2 = a1 + 8;
  if (a1[8])
  {
    sub_1AF38C65C();
    v4 = v3 - v2;
    if (sub_1AF8744B4(*a1) == 14)
    {
      v5 = &unk_1EB63FAA0;
    }

    else
    {
      v5 = &unk_1EB63FA98;
    }

    sub_1AF8745C4(0, v5);
    *(&v11 + 1) = v7;
    v12 = &off_1F253E8C0;
    *&v10 = v2 + v4;
    v8 = v7;
    sub_1AF441150(&v10, v7);
    v6 = (off_1F253E8D0[0])(v8);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v10);
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    sub_1AF87439C(&v10);
    return 0;
  }

  return v6;
}

uint64_t sub_1AF8731C4(uint64_t *a1)
{
  v2 = a1 + 1;
  if (!a1[1])
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1AF87439C(&v28);
    return 0;
  }

  sub_1AF38C65C();
  v4 = v3 - v2;
  if (sub_1AF8744B4(*a1) == 14)
  {
    v5 = &unk_1EB63FAA0;
  }

  else
  {
    v5 = &unk_1EB63FA98;
  }

  sub_1AF8745C4(0, v5);
  *(&v29 + 1) = v6;
  v30 = &off_1F253E8C0;
  *&v28 = v2 + v4;
  sub_1AF0FBA54(&v28, v31);
  v7 = v32;
  v8 = v33;
  sub_1AF441150(v31, v32);
  v9 = (*(v8 + 24))(v7, v8);
  if (!v9)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
    return 0;
  }

  v10 = v9;
  v11 = sub_1AF8744B4(*a1);
  v12 = v32;
  v13 = v33;
  sub_1AF441150(v31, v32);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v14;
  v16 = MEMORY[0x1E69E7CC0];
  if (v11 == 14)
  {
    if (v14)
    {
      *&v28 = MEMORY[0x1E69E7CC0];
      sub_1AFC06F08(0, v14 & ~(v14 >> 63), 0);
      v16 = v28;
      v17 = &a1[v10];
      v18 = *(v28 + 16);
      do
      {
        v20 = *v17++;
        v19 = v20;
        *&v28 = v16;
        v21 = *(v16 + 24);
        if (v18 >= v21 >> 1)
        {
          sub_1AFC06F08(v21 > 1, v18 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18++ + 32) = v19;
        --v15;
      }

      while (v15);
    }
  }

  else if (v14)
  {
    *&v28 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v14 & ~(v14 >> 63), 0);
    v16 = v28;
    v22 = &a1[v10];
    v23 = *(v28 + 16);
    do
    {
      v25 = *v22;
      v22 = (v22 + 4);
      v24 = v25;
      *&v28 = v16;
      v26 = *(v16 + 24);
      if (v23 >= v26 >> 1)
      {
        sub_1AFC06F08(v26 > 1, v23 + 1, 1);
        v16 = v28;
      }

      *(v16 + 16) = v23 + 1;
      *(v16 + 8 * v23++ + 32) = v24;
      --v15;
    }

    while (v15);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
  return v16;
}

uint64_t sub_1AF873434(uint64_t *a1)
{
  v2 = a1 + 8;
  if (!a1[8])
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    sub_1AF87439C(&v28);
    return 0;
  }

  sub_1AF38C65C();
  v4 = v3 - v2;
  if (sub_1AF8744B4(*a1) == 14)
  {
    v5 = &unk_1EB63FAA0;
  }

  else
  {
    v5 = &unk_1EB63FA98;
  }

  sub_1AF8745C4(0, v5);
  *(&v29 + 1) = v6;
  v30 = &off_1F253E8C0;
  *&v28 = v2 + v4;
  sub_1AF0FBA54(&v28, v31);
  v7 = v32;
  v8 = v33;
  sub_1AF441150(v31, v32);
  v9 = (*(v8 + 24))(v7, v8);
  if (!v9)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
    return 0;
  }

  v10 = v9;
  v11 = sub_1AF8744B4(*a1);
  v12 = v32;
  v13 = v33;
  sub_1AF441150(v31, v32);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v14;
  v16 = MEMORY[0x1E69E7CC0];
  if (v11 == 14)
  {
    if (v14)
    {
      *&v28 = MEMORY[0x1E69E7CC0];
      sub_1AFC06F08(0, v14 & ~(v14 >> 63), 0);
      v16 = v28;
      v17 = &a1[v10];
      v18 = *(v28 + 16);
      do
      {
        v20 = *v17++;
        v19 = v20;
        *&v28 = v16;
        v21 = *(v16 + 24);
        if (v18 >= v21 >> 1)
        {
          sub_1AFC06F08(v21 > 1, v18 + 1, 1);
          v16 = v28;
        }

        *(v16 + 16) = v18 + 1;
        *(v16 + 8 * v18++ + 32) = v19;
        --v15;
      }

      while (v15);
    }
  }

  else if (v14)
  {
    *&v28 = MEMORY[0x1E69E7CC0];
    sub_1AFC06F08(0, v14 & ~(v14 >> 63), 0);
    v16 = v28;
    v22 = &a1[v10];
    v23 = *(v28 + 16);
    do
    {
      v25 = *v22;
      v22 = (v22 + 4);
      v24 = v25;
      *&v28 = v16;
      v26 = *(v16 + 24);
      if (v23 >= v26 >> 1)
      {
        sub_1AFC06F08(v26 > 1, v23 + 1, 1);
        v16 = v28;
      }

      *(v16 + 16) = v23 + 1;
      *(v16 + 8 * v23++ + 32) = v24;
      --v15;
    }

    while (v15);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v31);
  return v16;
}

char *sub_1AF8736A4(uint64_t *a1)
{
  v2 = sub_1AF873434(a1);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v57 = MEMORY[0x1E69E7CC0];
    v47 = a1[1];
    if (!v47)
    {
      return v57;
    }

    goto LABEL_50;
  }

  v4 = v2;
  v58 = sub_1AF8730C0(a1);
  if (!v58)
  {

    v57 = MEMORY[0x1E69E7CC0];
    v47 = a1[1];
    if (v47)
    {
      goto LABEL_50;
    }

    return v57;
  }

  v5 = 0;
  v6 = a1 + 8;
  v56 = v4 + 32;
  v57 = v3;
  do
  {
    if (!*v6)
    {
      goto LABEL_5;
    }

    sub_1AF38C65C();
    v8 = v7;
    if (sub_1AF8744B4(*a1) == 14)
    {
      v9 = &unk_1EB63FAA0;
    }

    else
    {
      v9 = &unk_1EB63FA98;
    }

    sub_1AF8745C4(0, v9);
    *(&v60 + 1) = v10;
    v61 = &off_1F253E8C0;
    *&v59 = v8;
    sub_1AF0FBA54(&v59, v62);
    v11 = v63;
    v12 = v64;
    sub_1AF441150(v62, v63);
    v13 = (*(v12 + 32))(v11, v12);
    sub_1AF38C65C();
    v15 = v14 + v13;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    v16 = *(v15 + 28);
    if (v16)
    {
      v62[0] = v3;
      sub_1AFC06F28(0, v16 & ~(v16 >> 63), 0);
      v17 = v62[0];
      v18 = v15 + 32;
      v19 = *(v62[0] + 16);
      do
      {
        v62[0] = v17;
        v20 = *(v17 + 3);
        if (v19 >= v20 >> 1)
        {
          sub_1AFC06F28(v20 > 1, v19 + 1, 1);
          v17 = v62[0];
        }

        *(v17 + 2) = v19 + 1;
        *&v17[8 * v19 + 32] = v18;
        v18 += 12;
        ++v19;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = v3;
    }

    v21 = *&v17[8 * v5 + 32];

    if (v21 + 8 + *(v21 + 8))
    {
      v22 = sub_1AFDFD0F8();
      v24 = v23;
      if (!*v6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
      if (!*v6)
      {
LABEL_4:

LABEL_5:
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        sub_1AF87439C(&v59);
        goto LABEL_6;
      }
    }

    sub_1AF38C65C();
    v26 = v25;
    if (sub_1AF8744B4(*a1) == 14)
    {
      v27 = &unk_1EB63FAA0;
    }

    else
    {
      v27 = &unk_1EB63FA98;
    }

    sub_1AF8745C4(0, v27);
    *(&v60 + 1) = v28;
    v61 = &off_1F253E8C0;
    *&v59 = v26;
    sub_1AF0FBA54(&v59, v62);
    v29 = v63;
    v30 = v64;
    sub_1AF441150(v62, v63);
    v31 = (*(v30 + 32))(v29, v30);
    sub_1AF38C65C();
    v33 = v32 + v31;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v62);
    v34 = *(v33 + 28);
    if (v34)
    {
      v62[0] = v3;
      sub_1AFC06F28(0, v34 & ~(v34 >> 63), 0);
      v35 = v62[0];
      v36 = v33 + 32;
      v37 = *(v62[0] + 16);
      do
      {
        v62[0] = v35;
        v38 = *(v35 + 3);
        if (v37 >= v38 >> 1)
        {
          sub_1AFC06F28(v38 > 1, v37 + 1, 1);
          v35 = v62[0];
        }

        *(v35 + 2) = v37 + 1;
        *&v35[8 * v37 + 32] = v36;
        v36 += 12;
        ++v37;
        --v34;
      }

      while (v34);
    }

    else
    {
      v35 = v3;
    }

    v39 = *&v35[8 * v5 + 32];

    if (!(v39 + 4 + *(v39 + 4)))
    {
LABEL_44:

      goto LABEL_6;
    }

    if (!*v6)
    {
      v40 = a1[1];
      if (!v40)
      {
        goto LABEL_38;
      }

LABEL_37:
      sub_1AF8744B4(*v40);
      goto LABEL_38;
    }

    sub_1AF38C65C();
    v40 = a1[1];
    if (v40)
    {
      goto LABEL_37;
    }

LABEL_38:
    TypeByMangledNameInContext = swift_getTypeByMangledNameInContext();
    if (!TypeByMangledNameInContext)
    {
      goto LABEL_44;
    }

    v42 = TypeByMangledNameInContext;
    v43 = *(v56 + 8 * v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1AF4209BC(0, *(v57 + 2) + 1, 1, v57);
    }

    v45 = *(v57 + 2);
    v44 = *(v57 + 3);
    if (v45 >= v44 >> 1)
    {
      v57 = sub_1AF4209BC(v44 > 1, v45 + 1, 1, v57);
    }

    *(v57 + 2) = v45 + 1;
    v46 = &v57[32 * v45];
    *(v46 + 4) = v22;
    *(v46 + 5) = v24;
    *(v46 + 6) = v42;
    *(v46 + 7) = v43;
LABEL_6:
    ++v5;
  }

  while (v5 != v58);

  v47 = a1[1];
  if (!v47)
  {
    return v57;
  }

LABEL_50:
  if (sub_1AF8744B4(*v47) == 14)
  {
    v62[0] = v47;
    swift_getMetatypeMetadata();
    if (sub_1AFDFCF88() == 0x6A624F7466697753 && v48 == 0xEB00000000746365)
    {
LABEL_53:
    }

    else
    {
      v49 = sub_1AFDFEE28();

      if ((v49 & 1) == 0)
      {
        v62[0] = v47;
        if (sub_1AFDFCF88() == 0xD000000000000012 && 0x80000001AFF37660 == v51)
        {
          goto LABEL_53;
        }

        v52 = sub_1AFDFEE28();

        if ((v52 & 1) == 0)
        {
          v62[0] = v47;
          if (sub_1AFDFCF88() == 0xD000000000000013 && 0x80000001AFF37680 == v53)
          {
            goto LABEL_53;
          }

          v54 = sub_1AFDFEE28();

          if ((v54 & 1) == 0)
          {
            v55 = sub_1AF8736A4(v47);
            if (v55)
            {
              if (!*(v55 + 16))
              {
                goto LABEL_53;
              }

              v62[0] = v55;
              sub_1AF48FA30(v57);
              return v62[0];
            }
          }
        }
      }
    }
  }

  return v57;
}

char *sub_1AF873D7C(uint64_t *a1)
{
  result = sub_1AF8736A4(a1);
  if (result)
  {
    if ((v2 & 0x100000000) == 0)
    {
      v3 = *(result + 2);
      if (v3)
      {
        v5 = result + 56;
        v4 = *(result + 7);
        v14 = MEMORY[0x1E69E7CC0];
        v6 = v2;
        sub_1AFC06F48(0, v3, 0);
        v7 = v6 - v4;
        do
        {
          v8 = *(v5 - 3);
          v9 = *v5;
          v10 = *(v14 + 16);
          v11 = *(v14 + 24);
          v13 = *(v5 - 1);

          if (v10 >= v11 >> 1)
          {
            sub_1AFC06F48(v11 > 1, v10 + 1, 1);
          }

          *(v14 + 16) = v10 + 1;
          v12 = v14 + 32 * v10;
          *(v12 + 32) = v8;
          v5 += 4;
          *(v12 + 40) = v13;
          *(v12 + 56) = v7 + v9;
          --v3;
        }

        while (v3);

        return v14;
      }
    }
  }

  return result;
}