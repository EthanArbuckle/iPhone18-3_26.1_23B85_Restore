uint64_t sub_1AFC83858(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v4 = a3;
  v24 = HIDWORD(a3);
  v5 = *a1;
  v6 = *(a2 + 8);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v25 = v5;

  v11 = 0;
  v23 = v4;
  while (v9)
  {
LABEL_9:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = *(v6 + 56) + ((v11 << 10) | (16 * v13));
    if (*v14 == v4 && *(v14 + 4) == v24)
    {
      v15 = *(v14 + 8);

      v16 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      v18 = sub_1AFDFDFD8();
      result = swift_conformsToProtocol2();
      if (!result)
      {
        goto LABEL_27;
      }

      if (v16 == v18 && v15[5] == v25[5])
      {
        if (v15[2] == v25[2] && v15[3] == v25[3])
        {

          goto LABEL_23;
        }

        v20 = sub_1AFDFEE28();

        v4 = v23;
        if (v20)
        {

LABEL_23:

          MEMORY[0x1B2718E00](v21);
          if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1AFDFD458();
          }

          sub_1AFDFD4B8();
        }
      }

      else
      {

        v4 = v23;
      }
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (v11 + 1 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11++ + 72);
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }
}

_OWORD *sub_1AFC83B30@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF0D5A54(a1, &v37);
  sub_1AF0D4478(0, &qword_1EB6329A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1AF0D5A54(a1, a2);
  }

  v5 = [v36 values];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1AFDFD418();

    v8 = sub_1AFC7BB7C(v7);

    if (v8)
    {

LABEL_12:
      v25 = sub_1AF654E64();
      if (v25)
      {
        v29 = v25;
        v30 = v26;
        v31 = v27;
        v32 = v28;
        sub_1AFC8925C(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
        v39 = v33;
        v34 = swift_allocObject();
        *&v37 = v34;

        *(v34 + 16) = v29;
        *(v34 + 24) = v30;
        *(v34 + 32) = v31;
        *(v34 + 40) = v32;
        return sub_1AF449D40(&v37, a2);
      }

      goto LABEL_15;
    }
  }

  v9 = [v36 values];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AFDFD418();

    v12 = sub_1AFC7BC88(v11);

    if (v12)
    {

      v13 = sub_1AF6548AC();
      if (v13)
      {
        v16 = v13;
        v17 = v14;
        v18 = v15;
        v39 = &type metadata for ColorRamp;

        *&v37 = v16;
        *(&v37 + 1) = v17;
        v38 = v18;
        return sub_1AF449D40(&v37, a2);
      }

      goto LABEL_15;
    }
  }

  v19 = [v36 values];
  if (!v19)
  {
    goto LABEL_12;
  }

  v20 = [v36 values];
  v21 = sub_1AFDFD418();

  v22 = *(v21 + 16);

  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = *(v2 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

  v24 = sub_1AFDFDA28();
  *&v37 = 0;
  (*(*v23 + 88))(v24, &v37, 0xD000000000000050, 0x80000001AFF4C690);

LABEL_15:

  return sub_1AF0D5A54(a1, a2);
}

void *sub_1AFC83DF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CA0];
  sub_1AFC8906C(a1, v10, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v5 = sub_1AF0D4478(0, &qword_1EB6329A8);
      result = sub_1AF654BE8(v8, v9);
      a2[3] = v5;
      *a2 = result;
      return result;
    }
  }

  else
  {
    sub_1AFC88DF0(v10, &qword_1ED726850, v4 + 8);
  }

  sub_1AFC8906C(a1, v10, &qword_1ED726850, v4 + 8);
  if (v11)
  {
    sub_1AFC8925C(0, qword_1ED72F9E0, MEMORY[0x1E69E6448], &off_1F2532E98, type metadata accessor for Curve);
    if (swift_dynamicCast())
    {
      v7 = sub_1AF0D4478(0, &qword_1EB6329A8);
      result = sub_1AF655158(v8, v9);
      a2[3] = v7;
      *a2 = result;
      return result;
    }
  }

  else
  {
    sub_1AFC88DF0(v10, &qword_1ED726850, v4 + 8);
  }

  return sub_1AFC8906C(a1, a2, &qword_1ED726850, v4 + 8);
}

uint64_t sub_1AFC83FB0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11)
{
  v78 = *MEMORY[0x1E69E9840];
  if (a3)
  {
LABEL_2:
    *(result + 8) = 1;
    v12 = *result;
    if (*(*result + 16))
    {
      result = sub_1AF419914(a10, a11);
      if (v13)
      {
        v14 = *(*(v12 + 56) + 8 * result);
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = *(v14 + 24) - v15;
        }

        else
        {
          v16 = 0;
        }

        return a6(v15, v16);
      }
    }

    return result;
  }

  if ((a2 - 24) >= 2)
  {
    if (a2)
    {
      goto LABEL_2;
    }

    if (a5)
    {
      return result;
    }

    v24 = sub_1AFC4E70C(a4);
    v25 = v23;
    v26 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      if (v26 == 2)
      {
        v39 = v23 & 0x3FFFFFFFFFFFFFFFLL;

        sub_1AF439ED8(v24, v25);
        *&v73 = v24;
        *(&v73 + 1) = v39;
        sub_1AFDFC138();
        v40 = *(v24 + 16);
        v41 = sub_1AFDFBDB8();
        v42 = v40 - sub_1AFDFBDE8();
        sub_1AFDFBDD8();
        a6(v41 + v42, a4);
        v43 = sub_1AFDFD0E8();
        v77 = MEMORY[0x1E69E6158];
        v75 = v43;
        v76 = v44;
        v45 = sub_1AFC83B30(&v75, v74);
        MEMORY[0x1EEE9AC00](v45, v46);
        sub_1AFC41730(a9, sub_1AFC89108);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);

        v25 = v39 | 0x8000000000000000;
        return sub_1AF439ED8(v24, v25);
      }

      *(&v73 + 7) = 0;
      *&v73 = 0;

      a6(&v73, a4);
      v52 = sub_1AFDFD0E8();
      v77 = MEMORY[0x1E69E6158];
      v75 = v52;
      v76 = v53;
      v54 = sub_1AFC83B30(&v75, v74);
      MEMORY[0x1EEE9AC00](v54, v55);
      sub_1AFC41730(a9, sub_1AFC892D0);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
    }

    else
    {
      if (v26)
      {
        v50 = v23 & 0x3FFFFFFFFFFFFFFFLL;

        v51 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (sub_1AFDFBDB8())
          {
            sub_1AFDFBDE8();
          }

          sub_1AFDFBDF8();
          swift_allocObject();
          v51 = v24;
          v61 = sub_1AFDFBD98();

          v50 = v61;
        }

        v62 = sub_1AFDFBDB8();
        v69 = v50;
        v63 = v24;
        v64 = v51 - sub_1AFDFBDE8();
        sub_1AFDFBDD8();
        a6(v62 + v64, a4);
        v24 = v63;
        v65 = sub_1AFDFD0E8();
        v77 = MEMORY[0x1E69E6158];
        v75 = v65;
        v76 = v66;
        v67 = sub_1AFC83B30(&v75, v74);
        MEMORY[0x1EEE9AC00](v67, v68);
        sub_1AFC41730(a9, sub_1AFC892D0);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);

        v25 = v69 | 0x4000000000000000;
        return sub_1AF439ED8(v24, v25);
      }

      *&v73 = v24;
      WORD4(v73) = v23;
      BYTE10(v73) = BYTE2(v23);
      BYTE11(v73) = BYTE3(v23);
      BYTE12(v73) = BYTE4(v23);
      BYTE13(v73) = BYTE5(v23);
      BYTE14(v73) = BYTE6(v23);

      a6(&v73, a4);
      v27 = sub_1AFDFD0E8();
      v77 = MEMORY[0x1E69E6158];
      v75 = v27;
      v76 = v28;
      v29 = sub_1AFC83B30(&v75, v74);
      MEMORY[0x1EEE9AC00](v29, v30);
      sub_1AFC41730(a9, sub_1AFC892D0);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
      v24 = v73;
      v25 = DWORD2(v73) | ((WORD6(v73) | (BYTE14(v73) << 16)) << 32);
    }

    return sub_1AF439ED8(v24, v25);
  }

  if (a5)
  {
    return result;
  }

  v18 = sub_1AFC4E70C(a4);
  v19 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v19 != 2)
    {
      *(&v73 + 7) = 0;
      *&v73 = 0;
      v70 = v17;

      a6(&v73, a4);
      v47 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];
      v77 = sub_1AF0D4478(0, &qword_1EB6329A8);
      v75 = v47;
      v48 = sub_1AFC83B30(&v75, v74);
      MEMORY[0x1EEE9AC00](v48, v49);
      sub_1AFC41730(a9, sub_1AFC892D0);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);

      return sub_1AF439ED8(v18, v70);
    }

    v31 = v17 & 0x3FFFFFFFFFFFFFFFLL;
    v32 = v17;

    sub_1AF439ED8(v18, v32);
    *&v73 = v18;
    *(&v73 + 1) = v31;
    sub_1AFDFC138();
    v33 = *(v18 + 16);
    v34 = sub_1AFDFBDB8();
    v35 = v33 - sub_1AFDFBDE8();
    sub_1AFDFBDD8();
    a6(v34 + v35, a4);
    v36 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];
    v77 = sub_1AF0D4478(0, &qword_1EB6329A8);
    v75 = v36;
    v37 = sub_1AFC83B30(&v75, v74);
    MEMORY[0x1EEE9AC00](v37, v38);
    sub_1AFC41730(a9, sub_1AFC892D0);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
  }

  if (!v19)
  {
    *&v73 = v18;
    WORD4(v73) = v17;
    BYTE10(v73) = BYTE2(v17);
    BYTE11(v73) = BYTE3(v17);
    BYTE12(v73) = BYTE4(v17);
    BYTE13(v73) = BYTE5(v17);
    BYTE14(v73) = BYTE6(v17);

    a6(&v73, a4);
    v20 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];
    v77 = sub_1AF0D4478(0, &qword_1EB6329A8);
    v75 = v20;
    v21 = sub_1AFC83B30(&v75, v74);
    MEMORY[0x1EEE9AC00](v21, v22);
    sub_1AFC41730(a9, sub_1AFC892D0);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {

    if (sub_1AFDFBDB8())
    {
      sub_1AFDFBDE8();
    }

    sub_1AFDFBDF8();
    swift_allocObject();
    sub_1AFDFBD98();
  }

  v56 = sub_1AFDFBDB8();
  v57 = v18 - sub_1AFDFBDE8();
  sub_1AFDFBDD8();
  a6(v56 + v57, a4);
  v58 = [objc_allocWithZone(MEMORY[0x1E6979390]) initWithSerializedVFXBindingDataPointer_];
  v77 = sub_1AF0D4478(0, &qword_1EB6329A8);
  v75 = v58;
  v59 = sub_1AFC83B30(&v75, v74);
  MEMORY[0x1EEE9AC00](v59, v60);
  sub_1AFC41730(a9, sub_1AFC892D0);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v74);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v75);
}

uint64_t sub_1AFC84B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1AF6AC0F4(a2, a3, a4 & 0xFFFFFFFFFFLL, 1);
  if ((v9 & 1) == 0)
  {
    v10 = result;
    v11 = sub_1AFC83B30(a7, v13);
    MEMORY[0x1EEE9AC00](v11, v12);
    sub_1AFC41730(v10, sub_1AFC892D0);
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v13);
  }

  return result;
}

uint64_t sub_1AFC84C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 & 0xFFFFFFFF00000000;
  v7 = a2;
  sub_1AFC83B30(a5, v10);
  v8 = 0xFFFFFFFFLL;
  if (a2)
  {
    v8 = v7;
  }

  sub_1AFC41730(v8 | v6, sub_1AFC892D0);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v10);
}

uint64_t sub_1AFC84D2C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7)
{
  v7 = HIDWORD(a2);
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  if ((v7 || v8 != -1) && (v8 & 0x80000000) == 0 && *(result + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v8)
  {
    v9 = (*(result + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v8);
    v10 = *(v9 + 2);
    if (v7 == 0xFFFFFFFF || v9[2] == HIDWORD(a2))
    {
      v11 = *(*(result + 144) + 8 * *v9 + 32);
      v12 = *(v11 + 48);
      v13 = (v12 + 32);
      v14 = *(v12 + 16) + 1;
      while (--v14)
      {
        v15 = v13 + 5;
        v16 = *v13;
        v13 += 5;
        if (v16 == &type metadata for Bindings)
        {
          if ((a5 - 24) >= 2)
          {
            if (a5)
            {
              v31 = *(&(*(v15 - 2))->Kind + 24 * v10 + *(v11 + 128));
              v32 = *(v31 + 16);

              if (v32)
              {
                v33 = sub_1AF419914(a3, a4);
                if (v34)
                {
                  v35 = *(*(v31 + 56) + 8 * v33);
                  v36 = *(v35 + 16);
                  if (v36)
                  {
                    v37 = *(v35 + 24) - v36;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  a6(v36, v37);
                }
              }
            }

            else
            {
            }
          }

          else
          {
            v17 = a2 & 0xFFFFFFFF00000000;
            v18 = result;
            swift_bridgeObjectRetain_n();

            sub_1AF67EFEC(v17 | v8, v18, a3, a4, v39);
            sub_1AFC83DF0(v39, v38);
            sub_1AFC88DF0(v39, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
            sub_1AF449D40(v38, v39);
            sub_1AF0D4478(0, &qword_1EB6329A8);
            swift_dynamicCast();
            v23 = v40;
            v24 = [v40 serializedVFXBindingData];
            v25 = sub_1AFDFC1B8();
            v27 = v26;

            sub_1AF43C9F0(v25, v27);
            sub_1AFC862C0(v25, v27, a6, a7, v25, v27);

            sub_1AF439ED8(v25, v27);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AFC85000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  result = sub_1AF6AC0F4(a2, a3, a4 & 0xFFFFFFFFFFLL, 1);
  if ((v10 & 1) == 0)
  {
    v11 = HIDWORD(result);
    v12 = result == 0xFFFFFFFF;
    if ((a5 & 1) == 0)
    {
      goto LABEL_14;
    }

    if (result != 0xFFFFFFFF && (result & 0x80000000) == 0 && result < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
    {
      v13 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
      if (v11 == 0xFFFFFFFF || v13[2] == HIDWORD(result))
      {
        v14 = *(v13 + 2);
        v15 = *(*(a1 + 144) + 8 * *v13 + 32);
        if (*(v15 + 232) <= v14 && *(v15 + 240) > v14)
        {
          v17 = result;
          v18 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v19 = *(v15 + 344);

          os_unfair_lock_lock(v19);
          v20 = (v18 + 32);
          ecs_stack_allocator_push_snapshot(*(v18 + 32));

          sub_1AF68295C(v18, v15, v14, &type metadata for HiddenOrHasHiddenAncestor, &off_1F2529590, 0);
          if (v6)
          {
            while (1)
            {

              os_unfair_lock_unlock(*(v15 + 344));
              __break(1u);
LABEL_14:
              if (v12)
              {
                break;
              }

              if ((result & 0x80000000) != 0)
              {
                break;
              }

              if (result >= *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
              {
                break;
              }

              v21 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * result);
              if (v11 != 0xFFFFFFFF && v21[2] != v11)
              {
                break;
              }

              v22 = *(v21 + 2);
              v15 = *(*(a1 + 144) + 8 * *v21 + 32);
              if (*(v15 + 232) > v22 || *(v15 + 240) <= v22)
              {
                break;
              }

              v17 = result;
              v24 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
              v25 = *(v15 + 344);

              os_unfair_lock_lock(v25);
              v20 = (v24 + 32);
              ecs_stack_allocator_push_snapshot(*(v24 + 32));

              sub_1AF682880(v24, v15, v22, &type metadata for HiddenOrHasHiddenAncestor, &off_1F2529590, a1);
              if (!v6)
              {
                goto LABEL_27;
              }
            }
          }

          else
          {
LABEL_27:

            ecs_stack_allocator_pop_snapshot(*v20);
            os_unfair_lock_unlock(*(v15 + 344));

            result = v17;
          }
        }
      }
    }

    return sub_1AF65CBC8(result, a5 & 1);
  }

  return result;
}

uint64_t sub_1AFC85268(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_1AF65E9B8(a3);
  }

  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v26 = qword_1ED73B840;
  v27 = 0;
  v28 = 2;
  v29 = 0;
  v30 = 2;
  v31 = 0;
  sub_1AF702F8C(1, v8);
  v24[0] = v8[0];
  v24[1] = v8[1];
  v25 = v9;
  sub_1AF65E47C(v24, a3);
  LOBYTE(v17) = 0;
  v6 = sub_1AF80F414(0);
  if (v6 == a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a3;
  }

  sub_1AF6B06C0(a2, v24, v7 | ((v6 == a3) << 33), &v10);
  if (!v10)
  {
    return sub_1AFC88D80(v8, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  }

  v20 = v13;
  v21 = v14;
  v22 = v15;
  v17 = v10;
  v23 = v16;
  v18 = v11;
  v19 = v12;
  sub_1AF6B9CF0(0);
  sub_1AFC88D80(v8, &qword_1ED723D38, &type metadata for EmitterDescription, &off_1F2563648);
  return sub_1AFC88DF0(&v10, &qword_1ED725EA0, &type metadata for QueryResult);
}

void *sub_1AFC85430(uint64_t a1, uint64_t a2)
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

  sub_1AFC88C28();
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1AFC854E4(uint64_t a1, uint64_t a2)
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

  sub_1AFC88A68(0, &qword_1ED726960, type metadata accessor for vfx_memory_entry_t, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1AFC855E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFC89120(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = j__malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 29;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 2);
  return result;
}

void *sub_1AFC856BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFC88A68(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = j__malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1AFC85778(uint64_t a1, uint64_t a2)
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

  sub_1AFC89120(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1AFC85830(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFC89120(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = j__malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 25;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 3);
  return result;
}

void *sub_1AFC858C4(uint64_t a1, uint64_t a2)
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

  sub_1AFC88D04();
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1AFC8593C(uint64_t a1, uint64_t a2)
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

  sub_1AFC88A68(0, &qword_1ED7269C0, sub_1AF43A540, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1AFC85A34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFC88ACC(0, a3, a4, a5, sub_1AFC88CA0);
  v7 = swift_allocObject();
  v8 = j__malloc_size_0(v7);
  result = v7;
  v11 = v8 - 32;
  v10 = v8 < 32;
  v12 = v8 - 17;
  if (!v10)
  {
    v12 = v11;
  }

  v7[2] = a1;
  v7[3] = 2 * (v12 >> 4);
  return result;
}

void *sub_1AFC85ACC(uint64_t a1, uint64_t a2)
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

  sub_1AFC89120(0, &qword_1EB643820, &type metadata for Scheduler.Event, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1AFC85B7C(uint64_t a1, uint64_t a2)
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

  sub_1AFC88ACC(0, &unk_1ED7269D0, &qword_1ED72FFF0, &protocol descriptor for EntityComponent, sub_1AF5C5358);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1AFC85C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  if (a2 <= a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a6(0, a3, a4, a5);
  v8 = swift_allocObject();
  v9 = j__malloc_size_0(v8);
  result = v8;
  v11 = ((v9 - 32) * 0x6666666666666667) >> 64;
  v8[2] = a1;
  v8[3] = 2 * ((v11 >> 4) + (v11 >> 63));
  return result;
}

void *sub_1AFC85D08(uint64_t a1, uint64_t a2)
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

  sub_1AFC89120(0, &qword_1ED726998, &type metadata for Scheduler.Job, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1AFC85DC4(uint64_t a1, uint64_t a2)
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

  sub_1AFC88A68(0, &qword_1EB6384F8, sub_1AF443068, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_1AFC85E80(uint64_t a1, uint64_t a2)
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

  sub_1AFC88A68(0, &qword_1EB638540, type metadata accessor for simd_quatf, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1AFC85F28(uint64_t a1, uint64_t a2)
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

  sub_1AF43DA80();
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

void *sub_1AFC85FC4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  a3(0);
  v5 = swift_allocObject();
  v6 = j__malloc_size_0(v5);
  result = v5;
  v8 = ((v6 - 32) * 0x6666666666666667) >> 64;
  v5[2] = a1;
  v5[3] = 2 * ((v8 >> 4) + (v8 >> 63));
  return result;
}

void *sub_1AFC8604C(uint64_t a1, uint64_t a2)
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

  sub_1AFC26F30();
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4EC4EC4EC4EC4EC5) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_1AFC860F0(uint64_t a1, uint64_t a2)
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

  sub_1AFC26E24();
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

void *sub_1AFC8617C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1AFC89120(0, a3, a4, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = j__malloc_size_0(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_1AFC86210(uint64_t a1, uint64_t a2)
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

  sub_1AFC89120(0, &qword_1EB638510, &type metadata for FlockingParticle, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = j__malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x4924924924924925) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

uint64_t sub_1AFC862C0(uint64_t a1, unint64_t a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = a6 >> 62;
      memset(v20, 0, 14);
      if ((a6 >> 62) > 1)
      {
        v11 = 0;
        if (v10 != 2)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_17:
      if (v10)
      {
        v11 = (0xFFFFFFFF00000001 * a5) >> 32;
      }

      else
      {
        v11 = BYTE6(a6);
      }

      goto LABEL_24;
    }

    v12 = *(a1 + 16);
    v13 = sub_1AFDFBDB8();
    if (v13)
    {
      v14 = sub_1AFDFBDE8();
      v15 = v13 + v12;
LABEL_11:
      v13 = v15 - v14;
    }
  }

  else
  {
    if (!v9)
    {
      v20[0] = a1;
      LOWORD(v20[1]) = a2;
      BYTE2(v20[1]) = BYTE2(a2);
      BYTE3(v20[1]) = BYTE3(a2);
      BYTE4(v20[1]) = BYTE4(a2);
      v10 = a6 >> 62;
      BYTE5(v20[1]) = BYTE5(a2);
      if ((a6 >> 62) > 1)
      {
        if (v10 != 2)
        {
          v11 = 0;
LABEL_24:
          v18 = v20;
          goto LABEL_27;
        }

LABEL_23:
        v11 = *(a5 + 24) - *(a5 + 16);
        goto LABEL_24;
      }

      goto LABEL_17;
    }

    v16 = a1;
    v13 = sub_1AFDFBDB8();
    if (v13)
    {
      v14 = sub_1AFDFBDE8();
      v15 = v13 + v16;
      goto LABEL_11;
    }
  }

  sub_1AFDFBDD8();
  v17 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v11 = *(a5 + 24) - *(a5 + 16);
    }

    else
    {
      v11 = 0;
    }
  }

  else if (v17)
  {
    v11 = (0xFFFFFFFF00000001 * a5) >> 32;
  }

  else
  {
    v11 = BYTE6(a6);
  }

  v18 = v13;
LABEL_27:
  a3(v18, v11);
  return sub_1AF439ED8(a5, a6);
}

uint64_t sub_1AFC864D8(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_9;
  }

  if (!a3)
  {
    v6 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    v4 = -a4 & a4;
    v5 = v4 ^ a4;
    *a2 = v4;
    if (a3 == 1)
    {
LABEL_8:
      a4 = v5;
      v6 = a3;
    }

    else
    {
      v6 = 1;
      while (a4 != v4)
      {
        a4 = v5;
        v4 = v5 & -v5;
        a2[v6] = v4;
        v5 ^= v4;
        if (a3 == ++v6)
        {
          goto LABEL_8;
        }
      }

      a4 = 0;
    }
  }

  else
  {
LABEL_9:
    v6 = 0;
  }

LABEL_12:
  *a1 = a4;
  return v6;
}

uint64_t sub_1AFC86558(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v5 = *(v3 + 16);
  if (*(v5 + 16))
  {
    v6 = a2;
    v7 = 0;
    v9 = a3 - 1;
    v10 = 32;
    v11 = 32;
    while (1)
    {
      v12 = (v5 + v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      *(v37 + 9) = *(v12 + 41);
      v36[1] = v14;
      v37[0] = v15;
      v36[0] = v13;
      v16 = *(v3 + 24) + v11;
      v17 = *(v16 + 16);
      v31 = *v16;
      v32 = v17;
      v18 = *(v16 + 48);
      v33 = *(v16 + 32);
      v34 = v18;
      LOBYTE(v16) = *(v16 + 64);
      v19 = v12[2];
      v29 = v12[1];
      *v30 = v19;
      *&v30[9] = *(v12 + 41);
      v28 = *v12;
      v38 = v28;
      v39 = v29;
      v44 = v33;
      v45 = v18;
      v40 = *v30;
      v41 = *&v30[16];
      v42 = v31;
      v43 = v32;
      v47[6] = v33;
      v47[7] = v18;
      v35 = v16;
      v46 = v16;
      v48 = v16;
      v47[2] = *v30;
      v47[3] = *&v30[16];
      v47[4] = v31;
      v47[5] = v32;
      v47[0] = v28;
      v47[1] = v29;
      sub_1AF8A9E80(v36, v27);
      sub_1AFC88B28(&v38, v27);
      sub_1AFC88BAC(v47);
      *v6 = v38;
      v20 = v39;
      v21 = v40;
      v22 = v42;
      *(v6 + 48) = v41;
      *(v6 + 64) = v22;
      *(v6 + 16) = v20;
      *(v6 + 32) = v21;
      v23 = v43;
      v24 = v44;
      v25 = v45;
      *(v6 + 128) = v46;
      *(v6 + 96) = v24;
      *(v6 + 112) = v25;
      *(v6 + 80) = v23;
      if (v9 == v7)
      {
        break;
      }

      ++v7;
      v6 += 144;
      v5 = *(v3 + 16);
      v11 += 80;
      v10 += 64;
      if (v7 == *(v5 + 16))
      {
        goto LABEL_11;
      }
    }

    v7 = a3;
  }

  else
  {
LABEL_8:
    v7 = 0;
  }

LABEL_11:
  *a1 = v3;
  a1[1] = v7;
  return v7;
}

uint64_t sub_1AFC8670C(void *a1, _BYTE *a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (!a2)
  {
    v5 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v5 = a5;
  if (!a5)
  {
    goto LABEL_10;
  }

  *a2 = *a4 & 1;
  if (a3 == 1)
  {
LABEL_8:
    v5 = a3;
    goto LABEL_10;
  }

  v6 = 1;
  while (a5 != v6)
  {
    a2[v6] = (*&a4[8 * (v6 >> 6)] >> v6) & 1;
    if (a3 == ++v6)
    {
      goto LABEL_8;
    }
  }

  v5 = a5;
LABEL_10:
  *a1 = a4;
  a1[1] = a5;
  a1[2] = v5;
  return v5;
}

uint64_t sub_1AFC86784(void *a1, uint64_t *a2, uint64_t a3)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    v6 = -1;
    goto LABEL_18;
  }

  v4 = *(v3 + 24);
  if (v4 < 1)
  {
    v6 = 0;
    a3 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    for (i = 1; ; ++i)
    {
      v9 = *(v3 + 32);
      v10 = *(v9 + 8 * v7) >> v6;
      if (!v10)
      {
        break;
      }

      v6 += __clz(__rbit64(v10));
LABEL_11:
      *a2 = v6;
      if (i == a3)
      {
        goto LABEL_18;
      }

      v7 = ++v6 >> 6;
      v4 = *(v3 + 24);
      if (v6 >> 6 >= v4)
      {
        a3 = i;
        goto LABEL_18;
      }

      ++a2;
      v5 = i;
    }

    v11 = v7 << 6;
    v12 = v7 + 1;
    while (v12 < v4)
    {
      v13 = *(v9 + 8 * v12);
      v11 += 64;
      ++v12;
      if (v13)
      {
        v6 = __clz(__rbit64(v13)) + v11;
        goto LABEL_11;
      }
    }

    a3 = v5;
  }

LABEL_18:
  *a1 = v3;
  a1[1] = v6;
  return a3;
}

uint64_t sub_1AFC86854(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (a2)
  {
    v10 = a3;
    if (a3)
    {
      v11 = a2;
      v12 = 0;
      v13 = 0;
      v23 = -1 << *(a4 + 32);
      v14 = (63 - v7) >> 6;
      if (v9)
      {
        while (1)
        {
          v15 = v13;
LABEL_11:
          v17 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          ++v12;
          v18 = *(*(a4 + 56) + ((v15 << 9) | (8 * v17)));
          *v11 = v18;
          if (v12 == v10)
          {
            break;
          }

          ++v11;
          v19 = v18;
          v13 = v15;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        v22 = v18;
        v7 = v23;
      }

      else
      {
LABEL_8:
        v16 = v13;
        while (1)
        {
          v15 = v16 + 1;
          if (v16 + 1 >= v14)
          {
            break;
          }

          v9 = *(a4 + 72 + 8 * v16++);
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        if (v14 <= v13 + 1)
        {
          v20 = v13 + 1;
        }

        else
        {
          v20 = v14;
        }

        v15 = v20 - 1;
        v10 = v12;
        v7 = v23;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

uint64_t sub_1AFC869B0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (a2)
  {
    v10 = a3;
    if (a3)
    {
      v11 = a2;
      v12 = 0;
      v13 = 0;
      v20 = -1 << *(a4 + 32);
      v14 = (63 - v7) >> 6;
      if (v9)
      {
        while (1)
        {
          v15 = v13;
LABEL_11:
          v17 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          ++v12;
          *v11 = *(*(a4 + 56) + ((v15 << 9) | (8 * v17)));
          if (v12 == v10)
          {
            break;
          }

          ++v11;

          v13 = v15;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        v7 = v20;
      }

      else
      {
LABEL_8:
        v16 = v13;
        while (1)
        {
          v15 = v16 + 1;
          if (v16 + 1 >= v14)
          {
            break;
          }

          v9 = *(a4 + 72 + 8 * v16++);
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        if (v14 <= v13 + 1)
        {
          v18 = v13 + 1;
        }

        else
        {
          v18 = v14;
        }

        v15 = v18 - 1;
        v10 = v12;
        v7 = v20;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

uint64_t sub_1AFC86B0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (a2)
  {
    v10 = a3;
    if (a3)
    {
      v11 = a2;
      v12 = 0;
      v13 = 0;
      v22 = -1 << *(a4 + 32);
      v14 = (63 - v7) >> 6;
      if (v9)
      {
        while (1)
        {
          v15 = v13;
LABEL_11:
          v17 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v18 = (*(a4 + 48) + ((v15 << 10) | (16 * v17)));
          v19 = v18[1];
          ++v12;
          *v11 = *v18;
          v11[1] = v19;
          if (v12 == v10)
          {
            break;
          }

          v11 += 2;

          v13 = v15;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        v7 = v22;
      }

      else
      {
LABEL_8:
        v16 = v13;
        while (1)
        {
          v15 = v16 + 1;
          if (v16 + 1 >= v14)
          {
            break;
          }

          v9 = *(a4 + 64 + 8 * v16++);
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        if (v14 <= v13 + 1)
        {
          v20 = v13 + 1;
        }

        else
        {
          v20 = v14;
        }

        v15 = v20 - 1;
        v10 = v12;
        v7 = v22;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

uint64_t sub_1AFC86C6C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = -1;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a4 + 64);
  if (a2)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = (63 - v5) >> 6;
      while (v6)
      {
LABEL_7:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        ++v7;
        *a2++ = *(*(a4 + 48) + ((v8 << 9) | (8 * v10)));
        if (v7 == a3)
        {
          goto LABEL_18;
        }
      }

      v11 = v8;
      while (1)
      {
        v12 = v11 + 1;
        if ((v11 + 1) >= v9)
        {
          break;
        }

        v6 = *(a4 + 72 + 8 * v11++);
        if (v6)
        {
          v8 = v12;
          goto LABEL_7;
        }
      }

      v6 = 0;
      if (v9 <= (v8 + 1))
      {
        v13 = v8 + 1;
      }

      else
      {
        v13 = (63 - v5) >> 6;
      }

      v8 = v13 - 1;
      a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    a3 = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a4 + 64;
  a1[2] = ~v5;
  a1[3] = v8;
  a1[4] = v6;
  return a3;
}

uint64_t sub_1AFC86D54(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (a2)
  {
    if (a3)
    {
      v10 = a2;
      v28 = a4 + 64;
      v29 = a3;
      v11 = 0;
      v12 = 0;
      v27 = -1 << *(a4 + 32);
      v13 = (63 - v7) >> 6;
      if (v9)
      {
        while (1)
        {
          v14 = v12;
LABEL_11:
          v16 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v17 = v16 | (v14 << 6);
          ++v11;
          v18 = (*(a4 + 48) + 16 * v17);
          v19 = *v18;
          v20 = v18[1];
          v21 = (*(a4 + 56) + 24 * v17);
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[2];
          *v10 = v19;
          v10[1] = v20;
          v10[2] = v22;
          v10[3] = v23;
          v10[4] = v24;
          if (v11 == v29)
          {
            break;
          }

          v10 += 5;

          v12 = v14;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        v7 = v27;
        v6 = v28;
        a3 = v29;
      }

      else
      {
LABEL_8:
        v15 = v12;
        while (1)
        {
          v14 = v15 + 1;
          if (v15 + 1 >= v13)
          {
            break;
          }

          v9 = *(a4 + 72 + 8 * v15++);
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        if (v13 <= v12 + 1)
        {
          v25 = v12 + 1;
        }

        else
        {
          v25 = v13;
        }

        v14 = v25 - 1;
        a3 = v11;
        v7 = v27;
        v6 = v28;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    a3 = 0;
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v14;
  a1[4] = v9;
  return a3;
}

uint64_t sub_1AFC86EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a4 + 64);
  if (a2)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = (63 - v5) >> 6;
      while (v6)
      {
LABEL_7:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(a4 + 48) + ((v8 << 9) | (8 * v10));
        v12 = *v11;
        LOBYTE(v11) = *(v11 + 4);
        ++v7;
        *a2 = v12;
        *(a2 + 4) = v11;
        a2 += 8;
        if (v7 == a3)
        {
          goto LABEL_18;
        }
      }

      v13 = v8;
      while (1)
      {
        v14 = v13 + 1;
        if ((v13 + 1) >= v9)
        {
          break;
        }

        v6 = *(a4 + 72 + 8 * v13++);
        if (v6)
        {
          v8 = v14;
          goto LABEL_7;
        }
      }

      v6 = 0;
      if (v9 <= (v8 + 1))
      {
        v15 = v8 + 1;
      }

      else
      {
        v15 = (63 - v5) >> 6;
      }

      v8 = v15 - 1;
      a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    a3 = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a4 + 64;
  a1[2] = ~v5;
  a1[3] = v8;
  a1[4] = v6;
  return a3;
}

uint64_t sub_1AFC86FE8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = -1;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a4 + 64);
  if (a2)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = (63 - v5) >> 6;
      while (v6)
      {
LABEL_7:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        ++v7;
        *a2++ = *(*(a4 + 56) + ((v8 << 9) | (8 * v10)));
        if (v7 == a3)
        {
          goto LABEL_18;
        }
      }

      v11 = v8;
      while (1)
      {
        v12 = v11 + 1;
        if ((v11 + 1) >= v9)
        {
          break;
        }

        v6 = *(a4 + 72 + 8 * v11++);
        if (v6)
        {
          v8 = v12;
          goto LABEL_7;
        }
      }

      v6 = 0;
      if (v9 <= (v8 + 1))
      {
        v13 = v8 + 1;
      }

      else
      {
        v13 = (63 - v5) >> 6;
      }

      v8 = v13 - 1;
      a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    a3 = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a4 + 64;
  a1[2] = ~v5;
  a1[3] = v8;
  a1[4] = v6;
  return a3;
}

uint64_t sub_1AFC870D0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = -1;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a4 + 64);
  if (a2)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = (63 - v5) >> 6;
      while (v6)
      {
LABEL_7:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        ++v7;
        *a2++ = *(*(a4 + 48) + ((v8 << 9) | (8 * v10)));
        if (v7 == a3)
        {
          goto LABEL_18;
        }
      }

      v11 = v8;
      while (1)
      {
        v12 = v11 + 1;
        if ((v11 + 1) >= v9)
        {
          break;
        }

        v6 = *(a4 + 72 + 8 * v11++);
        if (v6)
        {
          v8 = v12;
          goto LABEL_7;
        }
      }

      v6 = 0;
      if (v9 <= (v8 + 1))
      {
        v13 = v8 + 1;
      }

      else
      {
        v13 = (63 - v5) >> 6;
      }

      v8 = v13 - 1;
      a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    a3 = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a4 + 64;
  a1[2] = ~v5;
  a1[3] = v8;
  a1[4] = v6;
  return a3;
}

uint64_t sub_1AFC871B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v6 = ~(-1 << -v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a4 + 64);
  if (a2)
  {
    v8 = a3;
    if (a3)
    {
      v9 = a2;
      v29 = a4 + 64;
      v30 = a1;
      v10 = 0;
      v11 = 0;
      v28 = -1 << *(a4 + 32);
      v12 = (63 - v5) >> 6;
      v13 = a4 + 72;
      if (v7)
      {
        while (1)
        {
          v14 = v11;
LABEL_11:
          v16 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v17 = v16 | (v14 << 6);
          ++v10;
          v18 = a4;
          v19 = (*(a4 + 48) + 16 * v17);
          v20 = *v19;
          v21 = v19[1];
          sub_1AF4455CC(*(a4 + 56) + 88 * v17, v33);
          *&v32 = v20;
          *(&v32 + 1) = v21;
          v41 = v34;
          v42 = v35;
          v22 = v36;
          v43 = v36;
          v39 = v33[1];
          v40 = v33[2];
          v37 = v32;
          v38 = v33[0];
          v23 = v35;
          *(v9 + 64) = v34;
          *(v9 + 80) = v23;
          *(v9 + 96) = v22;
          v24 = v38;
          *v9 = v37;
          *(v9 + 16) = v24;
          v25 = v40;
          *(v9 + 32) = v39;
          *(v9 + 48) = v25;
          v8 = a3;
          if (v10 == a3)
          {
            break;
          }

          v9 += 104;

          v11 = v14;
          a4 = v18;
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        v4 = v29;
        a1 = v30;
        v5 = v28;
        a4 = v18;
      }

      else
      {
LABEL_8:
        v15 = v11;
        while (1)
        {
          v14 = v15 + 1;
          if (v15 + 1 >= v12)
          {
            break;
          }

          v7 = *(v13 + 8 * v15++);
          if (v7)
          {
            goto LABEL_11;
          }
        }

        v7 = 0;
        if (v12 <= v11 + 1)
        {
          v26 = v11 + 1;
        }

        else
        {
          v26 = v12;
        }

        v14 = v26 - 1;
        v8 = v10;
        v4 = v29;
        a1 = v30;
        v5 = v28;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v8 = 0;
  }

  *a1 = a4;
  a1[1] = v4;
  a1[2] = ~v5;
  a1[3] = v14;
  a1[4] = v7;
  return v8;
}

uint64_t sub_1AFC87394(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (a2)
  {
    v10 = a3;
    if (a3)
    {
      v11 = a2;
      v12 = 0;
      v13 = 0;
      v22 = -1 << *(a4 + 32);
      v14 = (63 - v7) >> 6;
      if (v9)
      {
        while (1)
        {
          v15 = v13;
LABEL_11:
          v17 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v18 = (*(a4 + 48) + ((v15 << 10) | (16 * v17)));
          v19 = v18[1];
          ++v12;
          *v11 = *v18;
          v11[1] = v19;
          if (v12 == v10)
          {
            break;
          }

          v11 += 2;

          v13 = v15;
          if (!v9)
          {
            goto LABEL_8;
          }
        }

        v7 = v22;
      }

      else
      {
LABEL_8:
        v16 = v13;
        while (1)
        {
          v15 = v16 + 1;
          if (v16 + 1 >= v14)
          {
            break;
          }

          v9 = *(a4 + 72 + 8 * v16++);
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        if (v14 <= v13 + 1)
        {
          v20 = v13 + 1;
        }

        else
        {
          v20 = v14;
        }

        v15 = v20 - 1;
        v10 = v12;
        v7 = v22;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

uint64_t sub_1AFC874F4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = -1;
  v5 = -1 << *(a4 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(a4 + 56);
  if (a2)
  {
    if (a3)
    {
      v7 = 0;
      v8 = 0;
      v9 = (63 - v5) >> 6;
      while (v6)
      {
LABEL_7:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        ++v7;
        *a2++ = *(*(a4 + 48) + ((v8 << 9) | (8 * v10)));
        if (v7 == a3)
        {
          goto LABEL_18;
        }
      }

      v11 = v8;
      while (1)
      {
        v12 = v11 + 1;
        if ((v11 + 1) >= v9)
        {
          break;
        }

        v6 = *(a4 + 64 + 8 * v11++);
        if (v6)
        {
          v8 = v12;
          goto LABEL_7;
        }
      }

      v6 = 0;
      if (v9 <= (v8 + 1))
      {
        v13 = v8 + 1;
      }

      else
      {
        v13 = (63 - v5) >> 6;
      }

      v8 = v13 - 1;
      a3 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    a3 = 0;
  }

LABEL_18:
  *a1 = a4;
  a1[1] = a4 + 56;
  a1[2] = ~v5;
  a1[3] = v8;
  a1[4] = v6;
  return a3;
}

uint64_t sub_1AFC875DC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (a2)
  {
    v10 = a3;
    if (a3)
    {
      v11 = a2;
      v27 = -1 << *(a4 + 32);
      v28 = a4 + 64;
      v12 = 0;
      v13 = 0;
      v14 = (63 - v7) >> 6;
      if (v9)
      {
        while (1)
        {
          v15 = v13;
LABEL_11:
          v17 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          ++v12;
          v18 = (v15 << 10) | (16 * v17);
          v19 = (*(a4 + 48) + v18);
          v21 = *v19;
          v20 = v19[1];
          v22 = (*(a4 + 56) + v18);
          v23 = *v22;
          v24 = v22[1];
          *v11 = v21;
          v11[1] = v20;
          v11[2] = v23;
          v11[3] = v24;
          if (v12 == v10)
          {
            break;
          }

          v11 += 4;

          v13 = v15;
          if (!v9)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v16 = v13;
        while (1)
        {
          v15 = v16 + 1;
          if (v16 + 1 >= v14)
          {
            break;
          }

          v9 = *(a4 + 72 + 8 * v16++);
          if (v9)
          {
            goto LABEL_11;
          }
        }

        v9 = 0;
        if (v14 <= v13 + 1)
        {
          v25 = v13 + 1;
        }

        else
        {
          v25 = v14;
        }

        v15 = v25 - 1;
        v10 = v12;
      }

      v7 = v27;
      v6 = v28;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v10 = 0;
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = ~v7;
  a1[3] = v15;
  a1[4] = v9;
  return v10;
}

void sub_1AFC87754(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = a1[4];
  v8 = a1[5];
  v9 = *a3;
  v10 = sub_1AF449D3C(v7);
  v12 = v11;
  v13 = v9[2];
  v14 = v9[3];
  v15 = v13 + ((v11 & 1) == 0);

  if (v14 >= v15)
  {
    if (a2)
    {
      if (v12)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_1AF85060C();
      if (v12)
      {
        goto LABEL_8;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v20[6] + 8 * v10) = v7;
    *(v20[7] + 8 * v10) = v8;
    ++v20[2];
    v21 = v4 - 1;
    if (v4 != 1)
    {
      v22 = a1 + 7;
      while (1)
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        v25 = *a3;
        v26 = sub_1AF449D3C(v23);
        v28 = v27;
        v29 = v25[3];
        v30 = v25[2] + ((v27 & 1) == 0);

        if (v29 < v30)
        {
          sub_1AF84287C(v30, 1);
          v31 = sub_1AF449D3C(v23);
          if ((v28 & 1) != (v32 & 1))
          {
            goto LABEL_19;
          }

          v26 = v31;
        }

        if (v28)
        {
          break;
        }

        v33 = *a3;
        *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(v33[6] + 8 * v26) = v23;
        *(v33[7] + 8 * v26) = v24;
        ++v33[2];
        v22 += 2;
        if (!--v21)
        {
          goto LABEL_18;
        }
      }

LABEL_8:
      v18 = swift_allocError();
      swift_willThrow();
      v19 = v18;
      sub_1AF5C5358(0, &qword_1ED7268D0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      goto LABEL_20;
    }

LABEL_18:

    return;
  }

  sub_1AF84287C(v15, a2 & 1);
  v16 = sub_1AF449D3C(v7);
  if ((v12 & 1) == (v17 & 1))
  {
    v10 = v16;
    if (v12)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_19:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_20:
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF2D560);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](39, 0xE100000000000000);
  sub_1AFDFE518();
  __break(1u);
}

uint64_t (*sub_1AFC87A94(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2719C70](a2, a3);
  }

  else
  {
  }

  *a1 = v4;
  return j__s3VFX4NodeC4PortVwxx;
}

uint64_t (*sub_1AFC87AF8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2719C70](a2, a3);
  }

  else
  {
    v4 = swift_unknownObjectRetain();
  }

  *a1 = v4;
  return destroy for ManagedBufferSlice;
}

uint64_t (*sub_1AFC87B5C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2719C70](a2, a3);
  }

  else
  {
  }

  *a1 = v4;
  return destroy for Node.Port;
}

void (*sub_1AFC87BC0(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2719C70](a2, a3);
  }

  else
  {
    v4 = *(a3 + 8 * a2 + 32);
  }

  *a1 = v4;
  return destroy for AssetManagerInstance;
}

uint64_t (*sub_1AFC87C24(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B2719C70](a2, a3);
  }

  else
  {
    v4 = swift_unknownObjectRetain();
  }

  *a1 = v4;
  return j__s3VFX18ManagedBufferSliceVwxx;
}

uint64_t sub_1AFC87CB0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = a1;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1AFC07C6C(0, v2, 0);
    v5 = 0;
    v3 = v35;
    v6 = 1 << *(v4 + 32);
    v7 = (v6 + 63) >> 6;
    v31 = v4 + 64;
    v8 = (v4 + 64);
    while (1)
    {
      v10 = *v8++;
      v9 = v10;
      if (v10)
      {
        break;
      }

      v5 -= 64;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v6 = __clz(__rbit64(v9)) - v5;
LABEL_7:
    v11 = 0;
    v30 = v4 + 72;
    v32 = v2;
    do
    {
      v34 = *(v4 + 36);
      v14 = v4;
      v15 = *(*(v4 + 48) + 8 * v6);
      v16 = *(*(v4 + 56) + 8 * v6);

      v17 = a2(v15, v16);
      v19 = v18;

      v21 = *(v35 + 16);
      v20 = *(v35 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC07C6C(v20 > 1, v21 + 1, 1);
      }

      *(v35 + 16) = v21 + 1;
      v22 = v35 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v23 = v6 >> 6;
      if ((*(v31 + 8 * (v6 >> 6)) & (-2 << v6)) != 0)
      {
        v12 = __clz(__rbit64(*(v31 + 8 * (v6 >> 6)) & (-2 << v6))) | v6 & 0xFFFFFFFFFFFFFFC0;
        v13 = v32;
        v4 = v14;
      }

      else
      {
        v4 = v14;
        v12 = 1 << *(v14 + 32);
        v24 = v23 << 6;
        v25 = v23 + 1;
        v26 = (v30 + 8 * v23);
        v13 = v32;
        while (v25 < (v12 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1AF0FBAE8(v6, v34, 0);
            v12 = __clz(__rbit64(v27)) + v24;
            goto LABEL_9;
          }
        }

        sub_1AF0FBAE8(v6, v34, 0);
      }

LABEL_9:
      ++v11;
      v6 = v12;
    }

    while (v11 != v13);
  }

  return v3;
}

uint64_t type metadata accessor for VFXEffect()
{
  result = qword_1EB633350;
  if (!qword_1EB633350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AFC87FA8()
{
  sub_1AFC88A68(319, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of VFXEffect.parameter(of:named:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x238))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x248))();
}

uint64_t dispatch thunk of VFXEffect.setParameter(of:named:_:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x240))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x250))();
}

void sub_1AFC88A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AFC88ACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1AFC88B28(uint64_t a1, uint64_t a2)
{
  sub_1AF4485F8(0, &qword_1ED722A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AFC88BAC(uint64_t a1)
{
  sub_1AF4485F8(0, &qword_1ED722A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AFC88C28()
{
  if (!qword_1EB643C08)
  {
    sub_1AF4485F8(255, &qword_1ED722A20);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643C08);
    }
  }
}

void sub_1AFC88CA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AF43A0C8();
    v7 = a3(a1, MEMORY[0x1E69E6448], v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AFC88D04()
{
  if (!qword_1EB643C10)
  {
    sub_1AFC89120(255, &unk_1ED7230A8, &type metadata for ChunksStorage.FilteredChunk, MEMORY[0x1E69E6BE8]);
    v0 = sub_1AFDFEA18();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB643C10);
    }
  }
}

uint64_t sub_1AFC88D80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AFC8925C(0, a2, a3, a4, type metadata accessor for Query1);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AFC88DF0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFC89120(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFC88E60()
{
  if (!qword_1EB632BD0)
  {
    type metadata accessor for VFXObjectTag();
    v0 = type metadata accessor for Query2();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB632BD0);
    }
  }
}

unint64_t sub_1AFC88F24()
{
  result = qword_1ED722BC0;
  if (!qword_1ED722BC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED722BC0);
  }

  return result;
}

uint64_t sub_1AFC88F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFC88A68(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1AFC89000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFC8906C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFC89120(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1AFC89120(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AFC89170()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1AF0D5A54(v0[4], v4);

  return sub_1AF4869F4(v4, v1, v2);
}

uint64_t sub_1AFC891DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AFC8925C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_1AFC89358()
{
  v2 = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v1 = *(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
  if (v1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2 == 0xFFFFFFFFLL;
  }

  v4 = v2 | (v1 << 32);
  if (v3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

BOOL sub_1AFC89380(uint64_t a1)
{
  sub_1AF44CBE4(a1, v6);
  if (v7)
  {
    type metadata accessor for VFXEntityObject();
    if (swift_dynamicCast())
    {
      v3 = *&v5[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
      v2 = *&v5[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4];

      if (v3 == *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity))
      {
        return v2 == *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);
      }
    }
  }

  else
  {
    sub_1AF44CB60(v6);
  }

  return 0;
}

uint64_t sub_1AFC894C8(uint64_t a1, char a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v5 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v15 = v5;
        swift_once();
        v5 = v15;
      }

      v17[0] = 0;
      sub_1AF0D4F18(v5, v17, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v6 = *(Strong + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
  if (v6)
  {
    v7 = *(v6 + 80);
    swift_unknownObjectWeakLoadStrong();
    v6 = *(v6 + 56);
  }

  else
  {
    v7 = 0;
  }

  v21 = 0;
  swift_unknownObjectUnownedInit();
  v20[0] = Strong;
  v21 = v6;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v22 = v7;
  v8 = swift_weakLoadStrong();
  if (!v8)
  {
    v8 = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (v8)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v9 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v16 = v9;
        swift_once();
        v9 = v16;
      }

      v17[0] = 0;
      sub_1AF0D4F18(v9, v17, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      v8 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v10 = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  v11 = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4);

  v12 = swift_allocObject();
  *(v12 + 16) = a2 & 1;
  v19[0] = __PAIR64__(v11, v10);
  v19[1] = v8;
  sub_1AFC898A0(v19, a2 & 1);
  if (v7)
  {
    swift_unownedRetainStrong();
    v17[3] = &type metadata for EntityInstance;
    v17[4] = &off_1F2535E98;
    v17[0] = __PAIR64__(v11, v10);
    v17[1] = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1AFC8E1D0;
    *(v13 + 24) = v12;
    v17[5] = sub_1AFC8E1D8;
    v17[6] = v13;
    v18 = 14;

    sub_1AF6C67D0(v17);

    sub_1AF57955C(v17);
    sub_1AF579490(v20);
    sub_1AF6C5E30(1);
  }

  else
  {

    sub_1AF579490(v20);
  }
}

uint64_t sub_1AFC898A0(unint64_t *a1, int a2)
{
  v204 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for RemapContext();
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69E7CC0];
  sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  v7 = sub_1AF42B590(v6);

  *(inited + 24) = MEMORY[0x1E69E7CC8];
  *(inited + 32) = v7;
  *(inited + 16) = 2;

  sub_1AF65B02C(v3, inited);

  v189 = inited;
  v8 = *(inited + 24);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v188 = 0;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_9:
  while (2)
  {
    while (2)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = (*(v8 + 48) + ((v13 << 9) | (8 * v15)));
      v17 = v16[1];
      v18 = *v16;

      v20 = v18 == -1 && v17 == 0;
      if (a2)
      {
        if (!v20 && (v18 & 0x80000000) == 0 && *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v18)
        {
          v21 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v18);
          if (v17 == -1 || v21[2] == v17)
          {
            v23 = *(v21 + 2);
            v24 = *(*(v4 + 144) + 8 * *v21 + 32);
            if (v24[29] <= v23 && v24[30] > v23)
            {
              v182 = a2;
              v25 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
              v26 = *v25;
              v27 = v24[43];
              v186 = v24;

              os_unfair_lock_lock(v27);
              v178 = v26;
              ecs_stack_allocator_push_snapshot(*(v26 + 32));
              v28 = *(v186[5] + 16);
              v29 = *(v28 + 128);
              if (*(v29 + 16))
              {
                v30 = sub_1AF449CB8(&type metadata for Tombstone);
                if ((v31 & 1) != 0 && *(*(v28 + 24) + 16 * *(*(v29 + 56) + 8 * v30) + 32) == &type metadata for Tombstone)
                {
                  a2 = v182;
                  v44 = v186;
LABEL_164:
                  v150 = *(v178 + 32);
                  goto LABEL_165;
                }
              }

              v32 = *(v178 + 32);

              v33 = ecs_stack_allocator_allocate(v32, 8, 8);
              v34 = v186;
              v35 = v33;
              *v33 = v23;
              v36 = *v25;
              v37 = v34[24];
              v181 = v33;
              if (v37)
              {
                v38 = v34[27];
                v39 = v34[25];
                v167 = v34[26];
                v168 = v38;
                sub_1AF5C3A64(v33, 1, 1, &type metadata for Tombstone, &off_1F2532330, 1, v37, v39, v167);
                v35 = v181;
                v34 = v186;
              }

              v40 = v34[5];
              v177 = v36;
              v41 = v36;
              v42 = v188;
              sub_1AF5C3B0C(v40, v34, v35, 1, 1, v41);
              v188 = v42;
              LODWORD(v42) = *(v186 + 6);

              *&v197 = 0;
              v195 = 0u;
              v196 = 0u;
              v201 = 0;
              memset(v200, 0, sizeof(v200));
              v43 = sub_1AF65A4B4(v42, &type metadata for Tombstone, &off_1F2532330, 0, 0, &v195, v200);

              sub_1AF5DD41C(v200);
              sub_1AF5DD41C(&v195);
              v44 = v186;
              a2 = v182;
              if ((v44[30] - v44[29]) < 2)
              {
                if (sub_1AF649CEC())
                {
                  sub_1AF649D40(v43);
LABEL_163:

                  goto LABEL_164;
                }

                v100 = v44[29];
                v180 = v44[30];
                v181 = v100;
                v171 = *(v44 + 120);
                v187 = *(v44 + 7);
                LODWORD(v185) = *(v44 + 32);
                v176 = v44[2];
                v101 = *(v176 + 88);
                LODWORD(v183) = v43;
                v102 = v101 + 8 * v43;
                v103 = v44[5];
                v104 = v103[200];
                v184 = *(v102 + 32);

                v105 = v44;
                if ((v104 & 1) != 0 || *(v184 + 200) == 1)
                {
                  *(v176 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                  v103 = v44[5];
                }

                if (v103[212])
                {
                  v173 = 0;
                }

                else
                {
                  v173 = *(v184 + 212);
                }

                v121 = v188;
                v122 = v181;
                v172 = v103[208];
                v181 = v105[16];
                v109 = v105[32];
                sub_1AF5B4FCC(v103, v122, v180, 0, v105);
                v123 = v186;
                v188 = v121;
                v124 = v186[32];
                v174 = v109;
                v175 = v124;
                v125 = v124 - v109;
                if (v124 == v109)
                {
                  v126 = 0;
                }

                else
                {
                  v126 = v109;
                }

                v180 = v126;
                *&v200[0] = v126;
                v127 = v186[5];
                v128 = *(v127 + 24);
                v129 = *(v128 + 16);
                if (v129)
                {
                  v130 = v128 + 32;
                  v170 = *(v127 + 24);

                  v131 = v130;
                  v132 = 0;
                  v179 = v129;
                  do
                  {
                    v134 = v131 + 40 * v132;
                    if ((*(v134 + 32) & 1) == 0)
                    {
                      v135 = *(v184 + 24);
                      v136 = *(v135 + 16);
                      if (v136)
                      {
                        v137 = (v135 + 32);
                        while (*v137 != *v134)
                        {
                          v137 += 5;
                          if (!--v136)
                          {
                            goto LABEL_136;
                          }
                        }
                      }

                      else
                      {
LABEL_136:
                        v133 = v131;
                        sub_1AF640BC8();
                        v131 = v133;
                        v129 = v179;
                        a2 = v182;
                      }
                    }

                    v132 = (v132 + 1);
                  }

                  while (v132 != v129);

                  v123 = v186;
                  v109 = v174;
                }

                if (*(v176 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                {
                  vfx_counters.add(_:_:)(*(v176 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v123[9] * v125);
                  v123 = v186;
                }

                if (*(v123 + 184))
                {
                  v138 = 0;
                }

                else
                {
                  v138 = v123[21];
                }

                v202[0] = 0;

                v180 = &v169;
                MEMORY[0x1EEE9AC00](v139, v140);
                v142 = v186;
                v143 = v187;
                *(&v169 - 28) = v187;
                v144 = v185;
                *(&v169 - 108) = v185;
                *(&v169 - 13) = v142;
                *(&v169 - 12) = v184;
                *(&v169 - 11) = 0u;
                *(&v169 - 9) = 0u;
                *(&v169 - 7) = v200;
                *(&v169 - 6) = v181;
                *(&v169 - 5) = v202;
                *(&v169 - 32) = v172;
                v145 = v183;
                *(&v169 - 7) = v183;
                *(&v169 - 24) = v173;
                v167 = v177;
                DWORD2(v196) = -1;
                *&v197 = v109;
                *(&v197 + 1) = v175;
                v198[0] = v109;
                v198[1] = v175;
                *&v195 = v109;
                *(&v195 + 1) = v175;
                *&v196 = v138;
                if (v125 < 1)
                {
                }

                else
                {
                  v146 = v141;
                  v147 = v171;
                  v148 = v145;
                  do
                  {
                    LOBYTE(v194[0]) = v144;
                    sub_1AF6248A8(v148, v143 | (v144 << 32), v147, v146, &v195, sub_1AF5C44B0);
                    v148 = v183;
                    v144 = v185;
                    v143 = v187;
                  }

                  while ((*(&v195 + 1) - v195) > 0);

                  v109 = v174;
                }

                v106 = v186;
                v107 = v186[24];
                if (!v107)
                {
LABEL_162:
                  v44 = v106;

                  goto LABEL_163;
                }

                v108 = v186[26];
                v187 = v186[27];
              }

              else
              {
                v171 = *(v186 + 120);
                v174 = *(v186 + 7);
                LODWORD(v185) = *(v186 + 32);
                v187 = v186[2];
                v45 = v186[5];
                v46 = v45[200];
                v184 = *(*(v187 + 88) + 8 * v43 + 32);

                v47 = v186;
                if ((v46 & 1) != 0 || *(v184 + 200) == 1)
                {
                  *(v187 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
                  v45 = v47[5];
                }

                v48 = v45[212];
                LODWORD(v183) = v43;
                if (v48)
                {
                  v173 = 0;
                }

                else
                {
                  v173 = *(v184 + 212);
                }

                v75 = v188;
                v76 = v181;
                v172 = v45[208];
                v181 = v47[16];
                v77 = v47[32];
                sub_1AF5B5880(v45, v76, 1, 1, 0, v186);
                v78 = v186;
                v188 = v75;
                v175 = v186[32];
                v176 = v77;
                v180 = v175 - v77;
                if (v175 == v77)
                {
                  v79 = 0;
                }

                else
                {
                  v79 = v77;
                }

                v179 = v79;
                *&v200[0] = v79;
                v80 = v186[5];
                v81 = *(v80 + 24);
                v82 = *(v81 + 16);
                if (v82)
                {
                  v83 = v81 + 32;
                  v170 = *(v80 + 24);

                  for (i = 0; i != v82; ++i)
                  {
                    v85 = v83 + 40 * i;
                    if ((*(v85 + 32) & 1) == 0)
                    {
                      v86 = *(v184 + 24);
                      v87 = *(v86 + 16);
                      if (v87)
                      {
                        v88 = (v86 + 32);
                        while (*v88 != *v85)
                        {
                          v88 += 5;
                          if (!--v87)
                          {
                            goto LABEL_74;
                          }
                        }
                      }

                      else
                      {
LABEL_74:
                        sub_1AF640BC8();
                      }
                    }
                  }

                  a2 = v182;
                  v78 = v186;
                }

                v89 = v183;
                v90 = v180;
                if (*(v187 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
                {
                  vfx_counters.add(_:_:)(*(v187 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), v78[9] * v180);
                  v78 = v186;
                }

                if (*(v78 + 184))
                {
                  v91 = 0;
                }

                else
                {
                  v91 = v78[21];
                }

                v202[0] = 0;

                v179 = &v169;
                MEMORY[0x1EEE9AC00](v92, v93);
                v94 = &v169 - 16;
                v95 = v174;
                *(&v169 - 28) = v174;
                v96 = v185;
                *(&v169 - 108) = v185;
                *(&v169 - 13) = v186;
                *(&v169 - 12) = v184;
                *(&v169 - 11) = 0u;
                *(&v169 - 9) = 0u;
                *(&v169 - 7) = v200;
                *(&v169 - 6) = v181;
                *(&v169 - 5) = v202;
                *(&v169 - 32) = v172;
                *(&v169 - 7) = v89;
                *(&v169 - 24) = v173;
                v167 = v177;
                DWORD2(v196) = -1;
                *&v197 = v176;
                *(&v197 + 1) = v175;
                v198[0] = v176;
                v198[1] = v175;
                *&v195 = v176;
                *(&v195 + 1) = v175;
                *&v196 = v91;
                if (v90 < 1)
                {
                }

                else
                {
                  v97 = v95;
                  v98 = v171;
                  do
                  {
                    LOBYTE(v194[0]) = v96;
                    v99 = v94;
                    sub_1AF6248A8(v89, v97 | (v96 << 32), v98, v187, &v195, sub_1AF5C5E08);
                    v94 = v99;
                    v96 = v185;
                  }

                  while ((*(&v195 + 1) - v195) > 0);

                  a2 = v182;
                }

                v106 = v186;
                v107 = v186[24];
                if (!v107)
                {
                  goto LABEL_162;
                }

                v108 = v186[26];
                v187 = v186[27];
                v109 = v176;
              }

              v151 = v175;
              sub_1AF75D364(v109, v175, v107);
              sub_1AF75D364(v109, v151, v108);
              v106 = v186;
              goto LABEL_162;
            }
          }
        }

LABEL_5:

        if (!v11)
        {
          goto LABEL_6;
        }

        continue;
      }

      break;
    }

    if (v20 || (v18 & 0x80000000) != 0 || *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) <= v18)
    {
      goto LABEL_5;
    }

    v49 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v18);
    if (v17 != -1 && v49[2] != v17)
    {
      goto LABEL_5;
    }

    v51 = *(v49 + 2);
    v52 = *(*(v4 + 144) + 8 * *v49 + 32);
    if (v52[29] > v51 || v52[30] <= v51)
    {
      goto LABEL_5;
    }

    v183 = v52 + 29;
    v184 = v51;
    v53 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    v54 = v52[43];

    os_unfair_lock_lock(v54);
    v186 = v53;
    ecs_stack_allocator_push_snapshot(v53[4]);
    v55 = v52;
    v56 = *(v52[5] + 16);
    v57 = *(v56 + 128);
    v58 = *(v57 + 16);
    v187 = v55;
    if (!v58 || (v59 = sub_1AF449CB8(&type metadata for Tombstone), (v60 & 1) == 0) || *(*(v56 + 24) + 16 * *(*(v57 + 56) + 8 * v59) + 32) != &type metadata for Tombstone)
    {

      goto LABEL_51;
    }

    v202[0] = &type metadata for Tombstone;
    v202[1] = &off_1F2532330;
    v203 = 1;
    v110 = v186[13];
    v180 = (v186 + 13);
    v185 = *(v110 + 16);
    if (!v185)
    {

LABEL_168:
      v152 = v186;
      v153 = *(v187 + 240) - *(v187 + 232);
      v154 = ecs_stack_allocator_allocate(v186[4], 8 * v153, 8);
      *v154 = v184;
      sub_1AF63515C(v202, &v195);
      v198[0] = v154;
      v198[1] = v153;
      v198[2] = 1;
      v155 = v152[13];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152[13] = v155;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v155 = sub_1AF420EA0(0, v155[2] + 1, 1, v155);
        *v180 = v155;
      }

      v158 = v155[2];
      v157 = v155[3];
      if (v158 >= v157 >> 1)
      {
        v165 = sub_1AF420EA0(v157 > 1, v158 + 1, 1, v155);
        *v180 = v165;
      }

      sub_1AF635250(v202);
      v159 = v180;
      v160 = *v180;
      *(v160 + 16) = v158 + 1;
      v161 = v160 + 72 * v158;
      *(v161 + 32) = v195;
      v163 = v197;
      v162 = *v198;
      v164 = v196;
      *(v161 + 96) = v198[2];
      *(v161 + 64) = v163;
      *(v161 + 80) = v162;
      *(v161 + 48) = v164;
      *v159 = v160;
      goto LABEL_51;
    }

    v111 = v110 + 32;

    v112 = 0;
    while (1)
    {
      sub_1AF6350F8(v111, v200);
      sub_1AF63515C(v200, &v195);
      sub_1AF63515C(v202, v198);
      if (BYTE8(v197) <= 2u)
      {
        if (!BYTE8(v197))
        {
          sub_1AFC8E1E0(v200, sub_1AF43A540);
          sub_1AF63515C(&v195, v194);
          if (v199)
          {
            goto LABEL_104;
          }

          goto LABEL_117;
        }

        if (BYTE8(v197) == 1)
        {
          sub_1AFC8E1E0(v200, sub_1AF43A540);
          sub_1AF63515C(&v195, v194);
          if (v199 != 1)
          {
            goto LABEL_104;
          }

LABEL_117:
          v181 = *&v194[0];
          v114 = v198[0];
          sub_1AF635250(&v195);
          if (v181 == v114)
          {
            goto LABEL_127;
          }

          goto LABEL_105;
        }

        sub_1AF63515C(&v195, v194);
        if (v199 != 2)
        {
LABEL_103:
          sub_1AFC8E1E0(v200, sub_1AF43A540);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v194);
LABEL_104:
          sub_1AFC8E1E0(&v195, sub_1AF635194);
          goto LABEL_105;
        }

        goto LABEL_122;
      }

      if (BYTE8(v197) == 3)
      {
        sub_1AF63515C(&v195, v194);
        if (v199 != 3)
        {
          goto LABEL_103;
        }

LABEL_122:
        sub_1AF0FBA54(v194, v191);
        sub_1AF0FBA54(v198, v190);
        v115 = v192;
        v181 = v193;
        sub_1AF441150(v191, v192);
        LOBYTE(v115) = sub_1AF640C98(v190, v115, v181);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v190);
        sub_1AFC8E1E0(v200, sub_1AF43A540);
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v191);
        sub_1AF635250(&v195);
        if (v115)
        {
          goto LABEL_127;
        }

        goto LABEL_105;
      }

      if (BYTE8(v197) != 4)
      {
        break;
      }

      sub_1AFC8E1E0(v200, sub_1AF43A540);
      sub_1AF63515C(&v195, v194);
      if (v199 != 4)
      {
        goto LABEL_104;
      }

      LODWORD(v181) = LOBYTE(v194[0]);
      v113 = LOBYTE(v198[0]);
      sub_1AF635250(&v195);
      if (v181 == v113)
      {
        goto LABEL_127;
      }

LABEL_105:
      ++v112;
      v111 += 72;
      if (v185 == v112)
      {
        goto LABEL_168;
      }
    }

    sub_1AFC8E1E0(v200, sub_1AF43A540);
    if (v199 != 5)
    {
      goto LABEL_104;
    }

    v116 = vorrq_s8(*&v198[1], *&v198[3]);
    if (*&vorr_s8(*v116.i8, *&vextq_s8(v116, v116, 8uLL)) | v198[0])
    {
      goto LABEL_104;
    }

    sub_1AF635250(&v195);
LABEL_127:
    v118 = sub_1AFBFCA08(&v195);
    v119 = *(v117 + 48);
    if (v119)
    {
      v120 = *(v117 + 64);
      *(v119 + 8 * v120) = v184;
      *(v117 + 64) = v120 + 1;
    }

    (v118)(&v195, 0);
    sub_1AF635250(v202);
LABEL_51:
    v61 = v186;
    if (*(v186[13] + 16))
    {

      sub_1AF62F348(v62, v187);

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v61[13];
      if (v63)
      {
        v65 = v64[2];
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v61[13] = v64;
        if ((v66 & 1) == 0)
        {
          v64 = sub_1AF420EA0(0, v65, 1, v64);
          v61[13] = v64;
        }

        sub_1AF43A540(0);
        swift_arrayDestroy();
        if (v65)
        {
          v67 = v64[2] - v65;
          memmove(v64 + 4, &v64[9 * v65 + 4], 72 * v67);
          v64[2] = v67;
        }

        v61 = v186;
        v186[13] = v64;
      }

      else
      {
        v68 = MEMORY[0x1E69E7CC0];
        if (v64[3] >= 2uLL)
        {
          sub_1AF9FA280();
          v68 = swift_allocObject();
          v69 = j__malloc_size_0(v68);
          v68[2] = 0;
          v68[3] = 2 * ((v69 - 32) / 72);
        }

        v70 = v186;
        v186[13] = v68;
        v61 = v70;
      }

      v71 = *(v61[2] + OBJC_IVAR____TtC3VFX13EntityManager_currentState);
      v44 = v187;
      if (v71 != 2 && v71 != 1)
      {
        v72 = *(v187 + 256);
        v73 = *(v187 + 232);
        if (v73 == v72)
        {
          v74 = *(v187 + 240);
        }

        else
        {
          sub_1AF6497A0(v72, v73);
          v72 = v44[29];
          v74 = v44[30];
          if (v74 == v72)
          {
            v74 = 0;
            v72 = 0;
            v149 = v183;
            *v183 = 0;
            v149[1] = 0;
          }
        }

        v44[31] = v74;
        v44[32] = v72;
      }
    }

    else
    {
      v44 = v187;
    }

    v150 = v61[4];
LABEL_165:
    ecs_stack_allocator_pop_snapshot(v150);
    os_unfair_lock_unlock(v44[43]);

    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_6:
  while (2)
  {
    v14 = v13 + 1;
    if (v13 + 1 < v12)
    {
      v11 = *(v8 + 8 * v13++ + 72);
      if (!v11)
      {
        continue;
      }

      v13 = v14;
      goto LABEL_9;
    }

    break;
  }

  swift_setDeallocating();
}

id VFXEntityObject.init(_:sharedEntityManager:)(unint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = -1;
  }

  sub_1AF0D5A54(a2, v11);
  type metadata accessor for EntityManager();
  swift_dynamicCast();
  v5 = type metadata accessor for VFXEntityObject();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  *&v6[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager] = 0;
  v6[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 0;
  v7 = &v6[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  *v7 = v4;
  v7[1] = v3;
  swift_weakAssign();
  v10.receiver = v6;
  v10.super_class = v5;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id VFXEntityObject.init(_:privateEntityManager:)(unint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  if (a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = -1;
  }

  sub_1AF0D5A54(a2, v14);
  type metadata accessor for EntityManager();
  swift_dynamicCast();
  v5 = v13;
  v6 = type metadata accessor for VFXEntityObject();
  v7 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v8 = OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager;
  v7[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 0;
  v9 = &v7[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  *v9 = v4;
  v9[1] = v3;
  *&v7[v8] = v5;
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a2);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t sub_1AFC8AD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t *))
{
  swift_unknownObjectRetain();
  sub_1AFDFDFB8();
  swift_unknownObjectRelease();
  return a5(a3, &v8);
}

uint64_t sub_1AFC8AE24()
{
  v4 = sub_1AF656F38();
  if (swift_weakLoadStrong())
  {

    v1 = 0;
    v2 = 0xE000000000000000;
  }

  else
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
      v1 = 0;
    }

    else
    {
      v1 = 0x696C61766E693C20;
    }

    if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
      v2 = 0xE000000000000000;
    }

    else
    {
      v2 = 0xEA00000000003E64;
    }
  }

  MEMORY[0x1B2718AE0](v1, v2);

  return v4;
}

uint64_t sub_1AFC8AECC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = -1;
  }

  v3 = (v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  *v3 = v2;
  v3[1] = HIDWORD(a1);
  return swift_weakAssign();
}

id VFXEntityObject.__deallocating_deinit()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x1E69E7CC0];
    v4 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for RemapContext();
    inited = swift_initStackObject();
    sub_1AF42B4D0(v3);
    v6 = sub_1AF42B590(v3);

    *(inited + 24) = v4;
    *(inited + 32) = v6;
    *(inited + 16) = 0;

    v7 = v0;

    sub_1AF66040C(v2, v2, v7, inited);

    swift_setDeallocating();
  }

  v9.receiver = v0;
  v9.super_class = type metadata accessor for VFXEntityObject();
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

void sub_1AFC8B048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF65B02C(*(a2 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity), a3);
  v5 = *(a3 + 24);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
  v53 = (v6 + 63) >> 6;

  v10 = 0;
  v40 = v9;
  v41 = a1;
  while (v8)
  {
LABEL_11:
    v44 = *(*(v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    v12 = *(a1 + v9);
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

    v8 &= v8 - 1;
    v51 = 0;
    swift_unknownObjectUnownedInit();
    v50[0] = a1;
    v51 = v12;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v52 = v13;
    if (v44 == -1 && HIDWORD(v44) == 0)
    {
      sub_1AF579490(v50);
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      swift_unownedRetainStrong();

      Strong = swift_unknownObjectUnownedLoadStrong();
      if (Strong)
      {
        v42 = Strong;
        v43 = v13;

        v16 = sub_1AF682350(v44 | (HIDWORD(v44) << 32));

        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = v16 + 40;
          while (((*(*v18 + 24))() & 1) == 0)
          {
            v18 += 16;
            if (!--v17)
            {
              goto LABEL_23;
            }
          }

          v19 = v42 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig;
          v20 = type metadata accessor for ScriptingConfiguration();
          ++*(v19 + *(v20 + 36));
          swift_unknownObjectRelease();
        }

        else
        {
LABEL_23:
          swift_unknownObjectRelease();
        }

        v9 = v40;
        a1 = v41;
        v13 = v43;
      }

      swift_unownedRetainStrong();
      if ((v44 & 0x80000000) == 0 && *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) > v44 && ((v21 = (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v44), HIDWORD(v44) == -1) || v21[2] == HIDWORD(v44)))
      {
        v33 = v13;
        v34 = *(v21 + 2);
        v35 = *(*(a1 + 144) + 8 * *v21 + 32);
        if (*(v35 + 232) > v34 || *(v35 + 240) <= v34)
        {
        }

        else
        {
          v36 = v9;
          v37 = **(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          v38 = *(v35 + 344);

          os_unfair_lock_lock(v38);
          ecs_stack_allocator_push_snapshot(*(v37 + 32));

          sub_1AF65CFA0(v37, v35, v34);
          if (v39)
          {

            os_unfair_lock_unlock(*(v35 + 344));
            __break(1u);
            return;
          }

          ecs_stack_allocator_pop_snapshot(*(v37 + 32));
          os_unfair_lock_unlock(*(v35 + 344));

          v9 = v36;
        }

        v13 = v33;
      }

      else
      {
      }

      if (swift_unknownObjectUnownedLoadStrong())
      {
        swift_unknownObjectRelease();
      }

      if (v13)
      {
        swift_unownedRetainStrong();
        v48[0] = v44;
        v49 = 4;
        v22 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
        if (v22 && (*(v22 + 81) & 1) != 0 && *(v22 + 24) && swift_weakLoadStrong())
        {
          v23 = v9;

          swift_unknownObjectRetain();

          sub_1AF6CAF24(v48, v46);
          v24 = *(v22 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v22 + 16) = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v24 = sub_1AF4221C8(0, *(v24 + 2) + 1, 1, v24);
            *(v22 + 16) = v24;
          }

          v27 = *(v24 + 2);
          v26 = *(v24 + 3);
          v45 = v27 + 1;
          if (v27 >= v26 >> 1)
          {
            *(v22 + 16) = sub_1AF4221C8(v26 > 1, v45, 1, v24);
          }

          swift_unknownObjectRelease();
          sub_1AF57955C(v48);
          v28 = *(v22 + 16);
          *(v28 + 16) = v45;
          v29 = (v28 + (v27 << 6));
          v30 = v46[0];
          v31 = v46[1];
          v32 = v47[0];
          *(v29 + 73) = *(v47 + 9);
          v29[3] = v31;
          v29[4] = v32;
          v29[2] = v30;
          *(v22 + 16) = v28;

          v9 = v23;
        }

        else
        {

          sub_1AF57955C(v48);
        }

        sub_1AF579490(v50);
LABEL_6:
        sub_1AF6C5E30(1);
      }

      else
      {
        sub_1AF579490(v50);
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v53)
    {
      break;
    }

    v8 = *(v5 + 8 * v10++ + 72);
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1AFC8B660()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (*(v0 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v2 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v3 = v2;
        swift_once();
        v2 = v3;
      }

      v4 = 0;
      sub_1AF0D4F18(v2, &v4, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      return sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  return result;
}

uint64_t sub_1AFC8B784@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(v1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v5 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v7 = v5;
        swift_once();
        v5 = v7;
      }

      v8 = 0;
      sub_1AF0D4F18(v5, &v8, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  a1[3] = &type metadata for EntityInstance;
  *a1 = v3;
  a1[1] = Strong;
  return result;
}

id sub_1AFC8B8F0()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v3 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v18 = v3;
        swift_once();
        v3 = v18;
      }

      v23 = 0;
      sub_1AF0D4F18(v3, &v23, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  type metadata accessor for EntityManager();
  swift_allocObject();
  v4 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
  v5 = OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned;
  v6 = v1[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned];
  if (v6)
  {
    v1[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 0;
    v7 = swift_weakLoadStrong();
    if (!v7)
    {
      v7 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
      if (v7)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v8 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v19 = v8;
          swift_once();
          v8 = v19;
        }

        v23 = 0;
        sub_1AF0D4F18(v8, &v23, 0xD000000000000021, 0x80000001AFF2E730);
        swift_allocObject();
        v7 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    sub_1AF663684(v7, v1, 0);
  }

  v23 = 0xFFFFFFFFLL;

  v9 = v1;

  sub_1AF662FE8(v10, &v23, v4, v9, Strong);
  if (v6 != v1[v5])
  {
    v1[v5] = v6;
    v11 = swift_weakLoadStrong();
    if (!v11)
    {
      v11 = *&v9[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
      if (v11)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v12 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v20 = v12;
          swift_once();
          v12 = v20;
        }

        v22 = 0;
        sub_1AF0D4F18(v12, &v22, 0xD000000000000021, 0x80000001AFF2E730);
        swift_allocObject();
        v11 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    sub_1AF663684(v11, v9, v6);
  }

  v13 = type metadata accessor for VFXEntityObject();
  v14 = objc_allocWithZone(v13);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v15 = OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager;
  v14[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 0;
  *&v14[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity] = v23;
  *&v14[v15] = v4;
  v21.receiver = v14;
  v21.super_class = v13;
  v16 = objc_msgSendSuper2(&v21, sel_init);

  return v16;
}

void sub_1AFC8BD98()
{
  if (*&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity] != -1 || *&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4] != 0)
  {
    if (swift_weakLoadStrong())
    {

      if ((v0[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] & 1) == 0)
      {
        v0[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 1;
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          Strong = *&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
          if (Strong)
          {
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v3 = v0;
            v4 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v5 = v4;
              swift_once();
              v4 = v5;
            }

            v6 = 0;
            sub_1AF0D4F18(v4, &v6, 0xD000000000000021, 0x80000001AFF2E730);
            type metadata accessor for EntityManager();
            swift_allocObject();
            Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
            v0 = v3;
          }
        }

        sub_1AF663684(Strong, v0, 1);
      }
    }
  }
}

uint64_t sub_1AFC8BF5C(uint64_t result)
{
  v2 = &v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  if (*&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity] == -1 && *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity + 4] == 0)
  {
    return result;
  }

  v4 = result;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v6 = Strong, result = , v6 != v4))
  {
    if (swift_weakLoadStrong())
    {

      v7 = OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned;
      if ((v1[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] & 1) == 0)
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v8 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v23 = v8;
          swift_once();
          v8 = v23;
        }

        v27 = 0;
        return sub_1AF0D4F18(v8, &v27, 0xD000000000000036, 0x80000001AFF4C830);
      }
    }

    else
    {
      v7 = OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned;
      if (v1[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] != 1)
      {
LABEL_28:
        v13 = swift_weakLoadStrong();
        v14 = OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
          if (v15)
          {
          }

          else
          {
            if (qword_1ED730EA0 != -1)
            {
              swift_once();
            }

            v16 = v1;
            v17 = sub_1AFDFDA08();
            if (qword_1ED731058 != -1)
            {
              v24 = v17;
              swift_once();
              v17 = v24;
            }

            v27 = 0;
            sub_1AF0D4F18(v17, &v27, 0xD000000000000021, 0x80000001AFF2E730);
            type metadata accessor for EntityManager();
            swift_allocObject();
            v15 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
            v14 = OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager;
            v1 = v16;
          }
        }

        v18 = *&v1[v14] != 0;
        v19 = v1;

        v20 = sub_1AF6705C4(v15, v15, v19, v4, v18);

        swift_weakAssign();
        *&v1[v14] = 0;

        *v2 = v20;
        return result;
      }
    }

    v1[v7] = 0;
    v9 = swift_weakLoadStrong();
    if (!v9)
    {
      v9 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
      if (v9)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v11 = v1;
        v12 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v25 = v12;
          swift_once();
          v12 = v25;
        }

        v27 = 0;
        sub_1AF0D4F18(v12, &v27, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v9 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
        v1 = v11;
      }
    }

    sub_1AF663684(v9, v1, 0);

    goto LABEL_28;
  }

  if (v1[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] == 1)
  {
    v1[OBJC_IVAR____TtC3VFX15VFXEntityObject__isTombstoned] = 0;
    v10 = swift_weakLoadStrong();
    if (!v10)
    {
      v10 = *&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
      if (v10)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v21 = v1;
        v22 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v26 = v22;
          swift_once();
          v22 = v26;
        }

        v27 = 0;
        sub_1AF0D4F18(v22, &v27, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v10 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
        v1 = v21;
      }
    }

    sub_1AF663684(v10, v1, 0);
  }

  return result;
}

uint64_t sub_1AFC8C558()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&v0[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v2 = v0;
      v3 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v8 = v3;
        swift_once();
        v3 = v8;
      }

      v9 = 0;
      sub_1AF0D4F18(v3, &v9, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      v0 = v2;
    }
  }

  v4 = Strong;

  v5 = v0;
  v6 = sub_1AF670BD0(v4, v5);

  return v6;
}

uint64_t sub_1AFC8C750(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&v2[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v6 = v2;
      v7 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v10 = v7;
        swift_once();
        v7 = v10;
      }

      v11 = 0;
      sub_1AF0D4F18(v7, &v11, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      v2 = v6;
    }
  }

  v8 = Strong;

  sub_1AF663888(v8, v2, a1, a2);
}

uint64_t sub_1AFC8C8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    Strong = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
    if (Strong)
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v8 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v10 = v8;
        swift_once();
        v8 = v10;
      }

      v11 = 0;
      sub_1AF0D4F18(v8, &v11, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  return sub_1AF8204F4(a2, a3, v6, Strong);
}

void (*sub_1AFC8CA68(uint64_t *a1))(uint64_t **a1, char a2)
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
  v5 = OBJC_IVAR____TtC3VFX15VFXEntityObject_referencedEntityManager;
  *(v3 + 16) = v1;
  *(v3 + 24) = v5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&v1[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v7 = v1;
      v8 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v15 = v8;
        swift_once();
        v8 = v15;
      }

      v16 = 0;
      sub_1AF0D4F18(v8, &v16, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      v1 = v7;
    }
  }

  v9 = Strong;

  v10 = v1;
  v11 = sub_1AF670BD0(v9, v10);
  v13 = v12;
  v4[4] = 0;

  *v4 = v11;
  v4[1] = v13;
  return sub_1AFC8CC3C;
}

void sub_1AFC8CC3C(uint64_t **a1, char a2)
{
  v3 = *a1;
  v5 = **a1;
  v4 = (*a1)[1];
  Strong = swift_weakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
    }

    else
    {
      v7 = *(v3[2] + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager);
      if (v7)
      {
      }

      else
      {
        v10 = qword_1ED730EA0;

        if (v10 != -1)
        {
          swift_once();
        }

        v11 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v15 = v11;
          swift_once();
          v11 = v15;
        }

        v16[0] = 0;
        sub_1AF0D4F18(v11, v16, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v7 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    v12 = v3[2];

    v13 = v12;

    sub_1AF663888(v7, v13, v5, v4);
  }

  else
  {
    v8 = v3[2];
    if (!Strong)
    {
      v7 = *&v8[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager];
      if (v7)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v9 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v14 = v9;
          swift_once();
          v9 = v14;
        }

        v16[0] = 0;
        sub_1AF0D4F18(v9, v16, 0xD000000000000021, 0x80000001AFF2E730);
        type metadata accessor for EntityManager();
        swift_allocObject();
        v7 = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
        v8 = v3[2];
      }
    }

    sub_1AF663888(v7, v8, v5, v4);
  }

  free(v3);
}

uint64_t sub_1AFC8CF58@<X0>(void *a1@<X8>)
{
  v2 = sub_1AFC8B8F0();
  v3 = *&v2[OBJC_IVAR____TtC3VFX15VFXEntityObject_entity];
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&v2[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v5 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v13 = v5;
        swift_once();
        v5 = v13;
      }

      v14 = 0;
      sub_1AF0D4F18(v5, &v14, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v6 = Strong;

  v7 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v8 = [v7 UUIDString];

  v9 = sub_1AFDFCEF8();
  v11 = v10;

  sub_1AF663F94(v6, v3, v6, v9, v11);

  result = type metadata accessor for VFXEntityObject();
  a1[3] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1AFC8D1A8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1AFCD9D2C(a1);
  if (*(v3 + 16))
  {
    sub_1AF85B160();
    v4 = sub_1AFDFE5C8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v13[0] = v4;
  sub_1AFCEF8B4(v3, 1, v13);

  v5 = v13[0];
  type metadata accessor for VFXBridgingRemapAndResolveContext();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (*&v2[OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager])
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v8 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v12 = v8;
        swift_once();
        v8 = v12;
      }

      v13[0] = 0;
      sub_1AF0D4F18(v8, v13, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v9 = Strong;

  v10 = v2;

  sub_1AF6643B0(v9, v10, v6);
}

uint64_t sub_1AFC8D3BC(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  sub_1AF0D4E74();
  v73 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AFDFC298();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v7);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7CC0];
  v10 = sub_1AF42B4D0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RemapContext();
  inited = swift_initStackObject();
  sub_1AF42B4D0(v9);
  v12 = sub_1AF42B590(v9);

  *(inited + 24) = v10;
  *(inited + 32) = v12;
  v76 = inited;
  *(inited + 16) = 1;
  v13 = OBJC_IVAR____TtC3VFX15VFXEntityObject_referencedEntityManager;
  if (!swift_weakLoadStrong())
  {
    if (*(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v14 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v66 = v14;
        swift_once();
        v14 = v66;
      }

      v88[0] = 0;
      sub_1AF0D4F18(v14, v88, 0xD000000000000021, 0x80000001AFF2E730);
      type metadata accessor for EntityManager();
      swift_allocObject();
      sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
    }
  }

  v15 = *(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_entity);

  if (!swift_weakLoadStrong())
  {
    if (*(a1 + OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager))
    {
      goto LABEL_12;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v65 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v67 = v65;
      swift_once();
      v65 = v67;
    }

    v88[0] = 0;
    sub_1AF0D4F18(v65, v88, 0xD000000000000021, 0x80000001AFF2E730);
    type metadata accessor for EntityManager();
    swift_allocObject();
    sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
  }

LABEL_12:
  v16 = v15;
  v17 = v76;
  sub_1AF65B02C(v16, v76);

  v18 = *(v17 + 24);
  v19 = 1 << *(v18 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v18 + 64);
  v75 = OBJC_IVAR____TtC3VFX15VFXEntityObject_localEntityManager;
  v22 = (v19 + 63) >> 6;
  v74 = 0x80000001AFF2E730;
  v69 = (v6 + 32);

  v23 = 0;
  v68 = xmmword_1AFE431C0;
  v80 = a1;
  v79 = v13;
  v77 = v22;
  v78 = v18;
  while (v21)
  {
LABEL_20:
    v82 = v21;
    v25 = *(v18 + 48);
    v81 = v23;
    v26 = (v25 + ((v23 << 9) | (8 * __clz(__rbit64(v21)))));
    v27 = *v26;
    v28 = v26[1];
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      Strong = *(a1 + v75);
      if (Strong)
      {
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v30 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          swift_once();
        }

        if (qword_1ED730E98 != -1)
        {
          swift_once();
        }

        sub_1AF5DD4A4(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v31 = swift_allocObject();
        *(v31 + 16) = v68;
        *(v31 + 56) = MEMORY[0x1E69E6158];
        *(v31 + 64) = sub_1AF0D544C();
        *(v31 + 32) = 0xD000000000000021;
        *(v31 + 40) = v74;
        sub_1AFDFC4C8();

        v32 = v70;
        sub_1AFDFC288();
        v33 = v73[12];
        v34 = v73[16];
        v35 = v72;
        v36 = &v72[v73[20]];
        (*v69)(v72, v32, v71);
        *(v35 + v33) = v30;
        *(v35 + v34) = 0;
        *v36 = 0xD000000000000021;
        *(v36 + 1) = v74;
        sub_1AFDFC608();

        sub_1AFC8E1E0(v35, sub_1AF0D4E74);
        type metadata accessor for EntityManager();
        swift_allocObject();
        Strong = sub_1AF66F180(0x746C7561666544, 0xE700000000000000, 1, 0);
      }
    }

    v91 = Strong;
    if (v27 != -1)
    {
      v37 = OBJC_IVAR____TtC3VFX13EntityManager__entries;

      if ((v27 & 0x80000000) == 0 && *(Strong + v37 + 8) > v27)
      {
        v38 = *(Strong + v37) + 12 * v27;
        if (v28 == -1 || *(v38 + 8) == v28)
        {
          v40 = *(*(*(*(Strong + 88) + 8 * *(v38 + 6) + 32) + 16) + 32);

          goto LABEL_43;
        }
      }

      goto LABEL_41;
    }

    if (v28)
    {

LABEL_41:
    }

    v40 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v83 = v40;
    v41 = *(v40 + 16);
    if (v41)
    {
      v42 = (v83 + 32);
      v43 = v27 | (v28 << 32);
      v85 = v43;
      do
      {
        v86 = *v42;
        v56 = v86;
        v57 = sub_1AFDFDD58();
        v58 = *(v57 - 8);
        MEMORY[0x1EEE9AC00](v57, v59);
        v61 = &v68 - v60;
        v62 = *(&v86 + 1);
        sub_1AF6569C0(v43, v56, &v68 - v60);
        v63 = *(v56 - 8);
        if ((*(v63 + 48))(v61, 1, v56) == 1)
        {
          (*(v58 + 8))(v61, v57);
        }

        else
        {
          *&v87[3] = v86;
          v44 = sub_1AF585714(v87);
          (*(v63 + 32))(v44, v61, v56);
          sub_1AF0FBA54(v87, v88);
          v46 = v89;
          v45 = v90;
          sub_1AF448018(v88, v89);
          (*(*(v62 + 8) + 96))(v84, &off_1F2532000, v46, *(v45 + 8));
          v47 = v89;
          *&v86 = v90;
          v48 = sub_1AF441150(v88, v89);
          v49 = sub_1AFDFDD58();
          v50 = *(v49 - 8);
          v52 = MEMORY[0x1EEE9AC00](v49, v51);
          v54 = &v68 - v53;
          v55 = *(v47 - 8);
          (*(v55 + 16))(&v68 - v53, v48, v47, v52);
          (*(v55 + 56))(v54, 0, 1, v47);
          sub_1AF657084(v54, v85, v91, v47, v86);
          (*(v50 + 8))(v54, v49);
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v88);
        }

        ++v42;
        --v41;
        v43 = v85;
      }

      while (v41);
    }

    v21 = (v82 - 1) & v82;

    a1 = v80;
    v18 = v78;
    v22 = v77;
    v23 = v81;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v23++ + 72);
    if (v21)
    {
      v23 = v24;
      goto LABEL_20;
    }
  }

  swift_setDeallocating();
}

id VFXEntityObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1AFC8E1E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1AFC8E240@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *v2 + 41;
  v8 = (*v2)[9];
  if (v8 > 0xF)
  {
    v10 = a1[2];
    v11 = sub_1AFC0592C((v7 + v6[8]), v8 >> 4);
    v9 = v11;
    if (v10)
    {
      *&v22[0] = v11;

      sub_1AF48FC80(v12);
      v9 = *&v22[0];
    }
  }

  else
  {

    v9 = a1;
  }

  v13 = v6[10];
  v14 = v6[11];
  v15 = a1[2];
  if (v15)
  {
    v16 = sub_1AFDFD488();
    *(v16 + 16) = v15;
    bzero((v16 + 32), v15);
    if (v14)
    {
      goto LABEL_7;
    }

LABEL_10:
    v19 = v16;
    goto LABEL_12;
  }

  v16 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = *(v16 + 16);
  v18 = sub_1AFC0587C((v7 + v13), v14);
  v19 = v18;
  if (v17)
  {
    *&v22[0] = v18;
    sub_1AF48FBC0(v16);
    v19 = *&v22[0];
  }

  else
  {
  }

LABEL_12:
  sub_1AF5C3CE0(v19 + 32, *(v19 + 2), v9 + 4, v9[2], v3, v22);

  result = *v22;
  v21 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v21;
  *(a2 + 32) = v23;
  return result;
}

uint64_t sub_1AFC8E3DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_1AF80EBCC(0);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    v9 = a4 | ((HIDWORD(a4) & 1) << 32);
    do
    {
      v10 = *v8;
      v12[0] = *(v8 - 1);
      v12[1] = v10;
      sub_1AFC979C4(v12, a2, v9);
      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_1AFC8E77C(uint64_t a1)
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  sub_1AFC93640(a1);
}

uint64_t sub_1AFC8EEE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1AFDFC318();
  v93 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v92 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = *(a1 + 8);
  v17 = *(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  if (*v17 != _TtC3VFX24MigrationPlaceholderNode)
  {
    *a2 = v16;
  }

  v90 = &v72 - v15;
  v85 = v9;
  type metadata accessor for EasingNode(0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC3VFX10EasingNode_kind) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v19;
  v20 = OBJC_IVAR____TtC3VFX4Node_authoringID;

  v91 = v18;
  sub_1AFDFC308();
  v83 = v17;
  v21 = (v17 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  v22 = *(v17 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
  v23 = *(v17 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID + 8);
  v24 = *v21 == 0x614565636E756F42 && v23 == 0xEE0065646F4E6573;
  v88 = v3;
  v89 = v16;
  v87 = a2;
  v84 = v20;
  if (v24 || (sub_1AFDFEE28() & 1) != 0)
  {
    v25 = v6;
    v26 = 18;
  }

  else
  {
    v70 = v22 == 0x7361456369627543 && v23 == 0xEF65646F4E6E4965;
    if (v70 || (sub_1AFDFEE28() & 1) != 0)
    {
      v25 = v6;
      v26 = 0;
    }

    else
    {
      v71 = v22 == 0xD000000000000010 && 0x80000001AFF3BE90 == v23;
      if (v71 || (sub_1AFDFEE28() & 1) != 0)
      {
        v25 = v6;
        v26 = 1;
      }

      else if (v22 == 0xD000000000000012 && 0x80000001AFF3BEB0 == v23)
      {
        v25 = v6;
        v26 = 2;
      }

      else
      {
        v25 = v6;
        *&v94 = 0xD000000000000012;
        if (sub_1AFDFEE28())
        {
          v26 = 2;
        }

        else if (v22 == 0xD000000000000013 && 0x80000001AFF3BED0 == v23 || (sub_1AFDFEE28() & 1) != 0)
        {
          v26 = 15;
        }

        else if (v22 == 0xD000000000000010 && 0x80000001AFF3BEF0 == v23 || (sub_1AFDFEE28() & 1) != 0)
        {
          v26 = 16;
        }

        else if (v22 == 0x7361457265776F50 && v23 == 0xED000065646F4E65 || (sub_1AFDFEE28() & 1) != 0)
        {
          v26 = 17;
        }

        else
        {
          if (v22 == 0xD000000000000013 && 0x80000001AFF3BF10 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            goto LABEL_58;
          }

          if (v22 == 0xD000000000000014 && 0x80000001AFF3BF30 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 4;
            goto LABEL_8;
          }

          if (v22 == 0xD000000000000016 && 0x80000001AFF3BF50 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 5;
            goto LABEL_8;
          }

          if (v22 == 0xD000000000000011 && 0x80000001AFF3BF70 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
LABEL_58:
            v26 = 6;
          }

          else if (v22 == v94 && 0x80000001AFF3BF90 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 7;
          }

          else if (v22 == 0xD000000000000014 && 0x80000001AFF3BFB0 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 8;
          }

          else if (v22 == 0xD000000000000011 && 0x80000001AFF3BFD0 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 9;
          }

          else if (v22 == v94 && 0x80000001AFF3BFF0 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 10;
          }

          else if (v22 == 0xD000000000000014 && 0x80000001AFF3C010 == v23 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 11;
          }

          else if (v22 == 0x49657361456E6953 && v23 == 0xED000065646F4E6ELL || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 12;
          }

          else if (v22 == 0x4F657361456E6953 && v23 == 0xEE0065646F4E7475 || (sub_1AFDFEE28() & 1) != 0)
          {
            v26 = 13;
          }

          else
          {
            if ((v22 != 0xD000000000000010 || 0x80000001AFF3C030 != v23) && (sub_1AFDFEE28() & 1) == 0)
            {

              *v87 = v89;
              return result;
            }

            v26 = 14;
          }
        }
      }
    }
  }

LABEL_8:
  v27 = v90;
  v28 = v91;
  *(v91 + OBJC_IVAR____TtC3VFX10EasingNode_kind) = v26;
  v29 = v89;
  v30 = *(v89 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v31 = v93;
  (*(v93 + 16))(v27, v89 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v25);
  v32 = *(v31 + 56);
  v86 = v25;
  v32(v27, 0, 1, v25);
  v33 = OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  v34 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
  v82 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
  v81 = v34;
  v80 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
  v35 = OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  v36 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
  v79 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
  v78 = v36;
  v77 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
  v37 = OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  v75 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
  v74 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
  v38 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName;
  v39 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
  v73 = *(v29 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  type metadata accessor for AuthoringNode();
  v40 = swift_allocObject();
  v41 = v40 + v33;
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  v42 = v40 + v35;
  *v42 = 0;
  *(v42 + 8) = 0;
  *(v42 + 16) = 1;
  v43 = v40 + v37;
  *v43 = 0;
  *(v43 + 8) = 1;
  v44 = (v40 + v38);
  *v44 = 0;
  v44[1] = 0;
  *(v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v28;
  v45 = *(v30 + 16);
  sub_1AF991DDC(v96);
  v46 = v96[0];
  v102 = v96[0];
  v101 = v96[1];
  v76 = v39;

  v47 = MEMORY[0x1E69E62F8];
  sub_1AFCB9F58(&v101, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8], sub_1AFCBA88C);
  v100 = v96[2];
  sub_1AFCB9F58(&v100, &qword_1EB638968, &type metadata for TypeConstraint, v47, sub_1AFCBA88C);
  v99 = v96[3];
  sub_1AFCB9FB8(&v99, sub_1AF445C2C);
  v98 = v96[4];
  sub_1AFCB9FB8(&v98, sub_1AF445C2C);
  v97 = v96[5];
  sub_1AFCB9F58(&v97, &qword_1EB638978, &type metadata for AnyValue, v47, sub_1AFCBA88C);
  v48 = *(v46 + 16);
  sub_1AFCB9F58(&v102, &qword_1EB638968, &type metadata for TypeConstraint, v47, sub_1AFCBA88C);
  if (v48 <= v45)
  {
    v49 = v45;
  }

  else
  {
    v49 = v48;
  }

  if (v49)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_1AFC05D04(0, v49, 0);
    v50 = 0;
    v51 = v95;
    do
    {
      v52 = 0uLL;
      if (v50 < v45)
      {
        v94 = *(v30 + 16 * v50 + 32);

        v52 = v94;
      }

      v95 = v51;
      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        v94 = v52;
        sub_1AFC05D04(v53 > 1, v54 + 1, 1);
        v52 = v94;
        v51 = v95;
      }

      ++v50;
      *(v51 + 16) = v54 + 1;
      *(v51 + 16 * v54 + 32) = v52;
    }

    while (v49 != v50);
  }

  else
  {

    v51 = MEMORY[0x1E69E7CC0];
  }

  *(v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v51;
  v56 = v90;
  v57 = v92;
  sub_1AFCBA80C(v90, v92, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  v58 = v93;
  v59 = *(v93 + 48);
  v60 = v86;
  if (v59(v57, 1, v86) == 1)
  {
    v61 = v85;
    sub_1AFDFC308();

    sub_1AFCBA018(v56, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v62 = v61;
    if (v59(v57, 1, v60) != 1)
    {
      sub_1AFCBA018(v57, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {

    sub_1AFCBA018(v56, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v62 = v85;
    (*(v58 + 32))(v85, v57, v60);
  }

  (*(v58 + 32))(v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v62, v60);
  (*(v58 + 24))(v91 + v84, v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v60);

  v63 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  v64 = v81;
  *v63 = v82;
  *(v63 + 8) = v64;
  *(v63 + 16) = v80;
  v65 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  v66 = v78;
  *v65 = v79;
  *(v65 + 8) = v66;
  *(v65 + 16) = v77;
  v67 = v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v67 = v75;
  *(v67 + 8) = v74;
  v68 = (v40 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  v69 = v76;
  *v68 = v73;
  v68[1] = v69;

  *v87 = v40;
  return result;
}

uint64_t sub_1AFC8FCF4()
{
  type metadata accessor for ExpressionNode(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = result;
    swift_retain_n();
    sub_1AF620D8C(0);

    if (sub_1AF621150(0) && (, v2 = sub_1AF9A1B58(1, 0), v4 = v3, , v4))
    {
    }

    else
    {

      v2 = 0;
      v4 = 0xE000000000000000;
    }

    v5 = (v1 + OBJC_IVAR____TtC3VFX9_CodeNode_code);
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

void sub_1AFC8FE40(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v48 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v38 - v13;
  v15 = *(a1 + 8);
  if (**(v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX8BlurNode)
  {
    v42 = *(a1 + 40);
    v43 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    if (!*(*(v15 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 48) || (v16 = v15, type metadata accessor for ImplicitEnumConstantNode(0), , v17 = swift_dynamicCastClass(), , v15 = v16, !v17))
    {
      v40 = v15;
      v41 = v1;
      v46 = &type metadata for FilterEdgeMode;
      v47 = sub_1AFCBA088();
      v45[0] = 1;
      type metadata accessor for ImplicitEnumConstantNode(0);
      v18 = swift_allocObject();
      sub_1AF441194(v45, v44);
      sub_1AF441194(v44, &v18[OBJC_IVAR____TtC3VFX16EnumConstantNode_value]);
      v19 = MEMORY[0x1E69E7CC0];
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      *(v18 + 2) = v19;
      v39 = OBJC_IVAR____TtC3VFX4Node_authoringID;
      sub_1AFDFC308();
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v45);
      (*(v4 + 56))(v14, 1, 1, v3);
      type metadata accessor for AuthoringNode();
      v20 = swift_allocObject();
      v21 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v21 = 0;
      *(v21 + 8) = 0;
      *(v21 + 16) = 1;
      v22 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v22 = 0;
      *(v22 + 8) = 0;
      *(v22 + 16) = 1;
      v23 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v23 = 0;
      *(v23 + 8) = 1;
      v24 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
      *v24 = 0;
      v24[1] = 0;
      *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v18;
      *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
      sub_1AFCBA80C(v14, v10, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      v25 = *(v4 + 48);
      v26 = v25(v10, 1, v3);

      if (v26 == 1)
      {
        v27 = v48;
        sub_1AFDFC308();
        sub_1AFCBA018(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
        if (v25(v10, 1, v3) != 1)
        {
          sub_1AFCBA018(v10, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
        }
      }

      else
      {
        sub_1AFCBA018(v14, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
        v27 = v48;
        (*(v4 + 32))(v48, v10, v3);
      }

      (*(v4 + 32))(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v27, v3);
      (*(v4 + 24))(&v18[v39], v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

      v28 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 1;
      v29 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 16) = 1;
      v30 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
      *v30 = 0;
      *(v30 + 8) = 1;
      v31 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
      *v31 = 0;
      v31[1] = 0;

      v33 = v42;
      MEMORY[0x1B2718E00](v32);
      if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AFDFD458();
      }

      sub_1AFDFD4B8();
      v34 = v43;
      v35 = v40;
      v36 = *(v40 + v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + v34) = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = sub_1AFC0DA6C(v36);
        *(v35 + v34) = v36;
      }

      v36[6] = v20;
      v36[7] = 0;
    }
  }
}

void sub_1AFC90404(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  v16 = *(a1 + 8);
  if (**(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX8BlurNode)
  {
    v41 = v1;
    v35 = *(a1 + 40);
    v36 = v16;
    v39 = &type metadata for FilterEdgeMode;
    v40 = sub_1AFCBA088();
    v38[0] = 1;
    type metadata accessor for ImplicitEnumConstantNode(0);
    v17 = swift_allocObject();
    sub_1AF441194(v38, v37);
    sub_1AF441194(v37, &v17[OBJC_IVAR____TtC3VFX16EnumConstantNode_value]);
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 3) = 0;
    *(v17 + 4) = 0;
    *(v17 + 2) = v18;
    v34 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
    (*(v4 + 56))(v15, 1, 1, v3);
    type metadata accessor for AuthoringNode();
    v19 = swift_allocObject();
    v20 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    v21 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    v22 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = (v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v23 = 0;
    v23[1] = 0;
    *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v17;
    *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AFCBA80C(v15, v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v24 = *(v4 + 48);
    v25 = v24(v11, 1, v3);

    if (v25 == 1)
    {
      sub_1AFDFC308();
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v24(v11, 1, v3) != 1)
      {
        sub_1AFCBA018(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v4 + 32))(v7, v11, v3);
    }

    (*(v4 + 32))(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7, v3);
    (*(v4 + 24))(&v17[v34], v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

    v26 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v28 = 0;
    *(v28 + 8) = 1;
    v29 = (v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v29 = 0;
    v29[1] = 0;

    v31 = v35;
    MEMORY[0x1B2718E00](v30);
    if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    sub_1AF91D8E4(v32, 0, 1);
  }
}

uint64_t sub_1AFC90944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[2] = a2;
  v8[3] = a3;
  v9 = a4;
  v10 = BYTE4(a4) & 1;
  v11 = BYTE5(a4) & 1;
  v12 = BYTE6(a4) & 1;
  v13 = a5;
  sub_1AF3FB9C8(sub_1AFCBAB1C, v8, 0, 0x1000000000000000uLL, 0, MEMORY[0x1E69E7CC0]);
  v6 = sub_1AF449CC8();

  *(a1 + 24) = v6;
}

uint64_t sub_1AFC90A10@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v86 = a3;
  v85 = sub_1AFDFC318();
  v5 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85, v6);
  v82 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v84 = v80 - v10;
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v83 = (v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v81 = v80 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v80 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v80 - v23;
  v25 = *(a1 + 8);
  v26 = *(v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  if (*v26 == _TtC3VFX24MigrationPlaceholderNode)
  {
    v27 = (v26 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
    v28 = *(v26 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID);
    v29 = *(v26 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_codingID + 8);
    v30 = v28 == 0x7341797469746E45 && v29 == 0xEF65646F4E746573;
    if (v30 || (v31 = *(v25 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw), v32 = sub_1AFDFEE28(), v26 = v31, (v32 & 1) != 0) || (v28 == 0xD000000000000017 ? (v33 = 0x80000001AFF3BE70 == v29) : (v33 = 0), v33 || (v34 = sub_1AFDFEE28(), v26 = v31, (v34 & 1) != 0)))
    {
      v35 = v26;
      sub_1AFCBA238(v26 + OBJC_IVAR____TtC3VFX24MigrationPlaceholderNode_payload, v90, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8);
      sub_1AF449D40(v90, v91);
      sub_1AF0D8108(0, &qword_1EB6407C8);
      v80[1] = v35;

      swift_dynamicCast();
      if (v87 > 7uLL)
      {
        v36 = 1;
      }

      else
      {
        v36 = qword_1AFEA97C8[v87];
      }

      v80[0] = v36;
      v37 = v24;
      v38 = v88 | (v89 << 32);
      if (!a2 || (v39 = [a2 assetRegistry], v40 = sub_1AFCDB0C0(v38), v39, !v40))
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        *&v91[0] = 0;
        *(&v91[0] + 1) = 0xE000000000000000;
        sub_1AFDFE218();

        *&v91[0] = 0xD000000000000029;
        *(&v91[0] + 1) = 0x80000001AFF4C870;
        v41 = sub_1AF656F38();
        MEMORY[0x1B2718AE0](v41);

        v42 = v91[0];
        v43 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v79 = v43;
          swift_once();
          v43 = v79;
        }

        *&v91[0] = 0;
        sub_1AF0D4F18(v43, v91, v42, *(&v42 + 1));

        v40 = [objc_allocWithZone(VFXAssetNode) init];
      }

      v45 = *v27;
      v44 = v27[1];
      if (*v27 == 0x7341797469746E45 && v44 == 0xEF65646F4E746573 || (sub_1AFDFEE28() & 1) != 0)
      {
        type metadata accessor for WorldAssetNode(0);
        swift_allocObject();
        v46 = v40;
        v47 = sub_1AF9C3E60(v46, 0, 1, v80[0], 0);

        v48 = v24;
        v49 = v85;
        (*(v5 + 56))(v48, 1, 1, v85);
        type metadata accessor for AuthoringNode();
        v50 = swift_allocObject();
        v51 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v51 = 0;
        *(v51 + 8) = 0;
        *(v51 + 16) = 1;
        v52 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v52 = 0;
        *(v52 + 8) = 0;
        *(v52 + 16) = 1;
        v53 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v53 = 0;
        *(v53 + 8) = 1;
        v54 = (v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v54 = 0;
        v54[1] = 0;
        *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v47;
        *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
        sub_1AFCBA80C(v37, v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
        v55 = *(v5 + 48);
        v56 = v55(v20, 1, v49);

        if (v56 == 1)
        {
          v83 = v47;
          v57 = v37;
          v58 = v84;
          sub_1AFDFC308();

          v59 = v57;
          v47 = v83;
          sub_1AFCBA018(v59, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          if (v55(v20, 1, v49) != 1)
          {
            sub_1AFCBA018(v20, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          }
        }

        else
        {
          sub_1AFCBA018(v37, &qword_1ED72DF30, MEMORY[0x1E69695A8]);

          v58 = v84;
          (*(v5 + 32))(v84, v20, v49);
        }

        (*(v5 + 32))(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v58, v49);
        (*(v5 + 24))(v47 + OBJC_IVAR____TtC3VFX4Node_authoringID, v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v49);
LABEL_30:

        v60 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v60 = 0;
        *(v60 + 8) = 0;
        *(v60 + 16) = 1;
        v61 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v61 = 0;
        *(v61 + 8) = 0;
        *(v61 + 16) = 1;
        v62 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v62 = 0;
        *(v62 + 8) = 1;
        v63 = (v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v63 = 0;
        v63[1] = 0;

        *v86 = v50;
        return result;
      }

      if (v45 == 0xD000000000000017 && 0x80000001AFF3BE70 == v44 || (sub_1AFDFEE28() & 1) != 0)
      {
        type metadata accessor for ImplicitWorldAssetNode(0);
        swift_allocObject();
        v65 = v40;
        v66 = sub_1AF9C3E60(v65, 0, 1, v80[0], 0);

        v67 = v81;
        v68 = v85;
        (*(v5 + 56))(v81, 1, 1, v85);
        type metadata accessor for AuthoringNode();
        v50 = swift_allocObject();
        v69 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
        *v69 = 0;
        *(v69 + 8) = 0;
        *(v69 + 16) = 1;
        v70 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
        *v70 = 0;
        *(v70 + 8) = 0;
        *(v70 + 16) = 1;
        v71 = v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
        *v71 = 0;
        *(v71 + 8) = 1;
        v72 = (v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
        *v72 = 0;
        v72[1] = 0;
        *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v66;
        *(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
        v73 = v83;
        sub_1AFCBA80C(v67, v83, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
        v74 = *(v5 + 48);
        v75 = v74(v73, 1, v68);
        v84 = v66;

        if (v75 == 1)
        {
          v76 = v82;
          sub_1AFDFC308();

          v77 = v67;
          v78 = v83;

          sub_1AFCBA018(v77, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          if (v74(v78, 1, v68) != 1)
          {
            sub_1AFCBA018(v78, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
          }
        }

        else
        {
          sub_1AFCBA018(v67, &qword_1ED72DF30, MEMORY[0x1E69695A8]);

          v76 = v82;
          (*(v5 + 32))(v82, v73, v68);
        }

        (*(v5 + 32))(v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v76, v68);
        (*(v5 + 24))(&v84[OBJC_IVAR____TtC3VFX4Node_authoringID], v50 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v68);
        goto LABEL_30;
      }
    }
  }

  *v86 = v25;
}

void sub_1AFC91570(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  if (**(*(a1 + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX15RenderWorldNode)
  {
    v36 = *(a1 + 8);
    v37 = a2;
    v38 = v2;
    v35 = *(a1 + 40);
    type metadata accessor for ImplicitNilNode(0);
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    *(v18 + 2) = v19;
    v34 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v6 + 56))(v17, 1, 1, v5);
    type metadata accessor for AuthoringNode();
    v20 = swift_allocObject();
    v21 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    v22 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    v23 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v24 = 0;
    v24[1] = 0;
    *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v18;
    *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AFCBA80C(v17, v13, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v25 = *(v6 + 48);
    v26 = v25(v13, 1, v5);

    if (v26 == 1)
    {
      sub_1AFDFC308();
      sub_1AFCBA018(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v25(v13, 1, v5) != 1)
      {
        sub_1AFCBA018(v13, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AFCBA018(v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v6 + 32))(v9, v13, v5);
    }

    (*(v6 + 32))(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9, v5);
    (*(v6 + 24))(&v18[v34], v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v5);

    v27 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v29 = 0;
    *(v29 + 8) = 1;
    v30 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v30 = 0;
    v30[1] = 0;

    v32 = v35;
    MEMORY[0x1B2718E00](v31);
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    sub_1AF91D8E4(v33, 0, v37);
  }
}

void sub_1AFC91A68(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - v14;
  v16 = *(a1 + 8);
  if (**(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX15RenderWorldNode)
  {
    v39[6] = v1;
    v36 = *(a1 + 40);
    v37 = v16;
    v38[3] = MEMORY[0x1E69E6370];
    LOBYTE(v38[0]) = 1;
    sub_1AF975674(v38, v39);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
    type metadata accessor for ImplicitConstantNode(0);
    v17 = swift_allocObject();
    sub_1AF914FF0(v39, v38);
    v18 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
    sub_1AF914FF0(v38, &v17[OBJC_IVAR____TtC3VFX12ConstantNode_holder]);
    *&v17[v18] = xmmword_1AFE22A20;
    v19 = MEMORY[0x1E69E7CC0];
    *(v17 + 2) = MEMORY[0x1E69E7CC0];
    *(v17 + 3) = 0;
    *(v17 + 4) = 0;
    v35 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    sub_1AF9151B0(v39);
    sub_1AF9151B0(v38);
    (*(v4 + 56))(v15, 1, 1, v3);
    type metadata accessor for AuthoringNode();
    v20 = swift_allocObject();
    v21 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    v22 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    v23 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v24 = 0;
    v24[1] = 0;
    *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v17;
    *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v19;
    sub_1AFCBA80C(v15, v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v25 = *(v4 + 48);
    v26 = v25(v11, 1, v3);

    if (v26 == 1)
    {
      sub_1AFDFC308();
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v25(v11, 1, v3) != 1)
      {
        sub_1AFCBA018(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v4 + 32))(v7, v11, v3);
    }

    (*(v4 + 32))(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7, v3);
    (*(v4 + 24))(&v17[v35], v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

    v27 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v29 = 0;
    *(v29 + 8) = 1;
    v30 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v30 = 0;
    v30[1] = 0;

    v32 = v36;
    MEMORY[0x1B2718E00](v31);
    if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    sub_1AF91D8E4(v33, 0, 4);
  }
}

uint64_t sub_1AFC91FCC(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v42 - v14;
  v16 = *(a1 + 8);
  v43 = *(a1 + 40);
  v17 = *(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  type metadata accessor for OnKeyTriggerNode(0);
  v45[6] = v17;
  result = swift_dynamicCastClass();
  if (result)
  {
    v42[2] = v16;
    v19 = sub_1AFDFCEF8();
    v21 = v20;
    if (v19 == sub_1AFDFCEF8() && v21 == v22)
    {
    }

    else
    {
      v24 = sub_1AFDFEE28();

      if ((v24 & 1) == 0)
      {
      }
    }

    v42[1] = v1;
    v44[3] = MEMORY[0x1E69E6370];
    LOBYTE(v44[0]) = 1;
    sub_1AF975674(v44, v45);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
    type metadata accessor for ImplicitConstantNode(0);
    v25 = swift_allocObject();
    sub_1AF914FF0(v45, v44);
    v26 = OBJC_IVAR____TtC3VFX12ConstantNode_semantic;
    sub_1AF914FF0(v44, &v25[OBJC_IVAR____TtC3VFX12ConstantNode_holder]);
    *&v25[v26] = xmmword_1AFE22A20;
    v27 = MEMORY[0x1E69E7CC0];
    *(v25 + 2) = MEMORY[0x1E69E7CC0];
    *(v25 + 3) = 0;
    *(v25 + 4) = 0;
    v42[0] = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    sub_1AF9151B0(v45);
    sub_1AF9151B0(v44);
    (*(v4 + 56))(v15, 1, 1, v3);
    type metadata accessor for AuthoringNode();
    v28 = swift_allocObject();
    v29 = v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 1;
    v31 = v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v31 = 0;
    *(v31 + 8) = 1;
    v32 = (v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v32 = 0;
    v32[1] = 0;
    *(v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v25;
    *(v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v27;
    sub_1AFCBA80C(v15, v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v33 = *(v4 + 48);
    v34 = v33(v11, 1, v3);

    if (v34 == 1)
    {
      sub_1AFDFC308();
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v33(v11, 1, v3) != 1)
      {
        sub_1AFCBA018(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v4 + 32))(v7, v11, v3);
    }

    (*(v4 + 32))(v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7, v3);
    (*(v4 + 24))(&v25[v42[0]], v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

    v35 = v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v35 = 0;
    *(v35 + 8) = 0;
    *(v35 + 16) = 1;
    v36 = v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v36 = 0;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v37 = 0;
    *(v37 + 8) = 1;
    v38 = (v28 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v38 = 0;
    v38[1] = 0;

    v40 = v43;
    MEMORY[0x1B2718E00](v39);
    if (*((*v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    sub_1AF91D8E4(v41, 0, 2);
  }

  return result;
}

void sub_1AFC925CC(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v37 - v14;
  v16 = *(a1 + 8);
  if (**(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX15RenderWorldNode && !*(*(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 160))
  {
    v39 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v40 = v1;
    v38 = *(a1 + 40);
    type metadata accessor for ImplicitNilNode(0);
    v17 = v4;
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 3) = 0;
    *(v18 + 4) = 0;
    *(v18 + 2) = v19;
    v37 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v17 + 56))(v15, 1, 1, v3);
    type metadata accessor for AuthoringNode();
    v20 = swift_allocObject();
    v21 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    v22 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    v23 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v23 = 0;
    *(v23 + 8) = 1;
    v24 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v24 = 0;
    v24[1] = 0;
    *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v18;
    *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AFCBA80C(v15, v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v41 = v17;
    v25 = *(v17 + 48);
    v26 = v25(v11, 1, v3);

    if (v26 == 1)
    {
      sub_1AFDFC308();
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v25(v11, 1, v3) != 1)
      {
        sub_1AFCBA018(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v41 + 32))(v7, v11, v3);
    }

    v27 = v41;
    (*(v41 + 32))(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7, v3);
    (*(v27 + 24))(&v18[v37], v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

    v28 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v28 = 0;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    v29 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 1;
    v30 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v30 = 0;
    *(v30 + 8) = 1;
    v31 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v31 = 0;
    v31[1] = 0;

    v33 = v38;
    MEMORY[0x1B2718E00](v32);
    if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();
    v34 = v39;
    v35 = *(v16 + v39);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v34) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_1AFC0DA6C(v35);
      *(v16 + v34) = v35;
    }

    v35[20] = v20;
    v35[21] = 0;
  }
}

void sub_1AFC92AFC(uint64_t a1)
{
  v3 = sub_1AFDFC318();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - v14;
  v16 = *(a1 + 8);
  if (**(v16 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX21TextureDescriptorNode)
  {
    v37 = v1;
    v35 = *(a1 + 40);
    v36 = v16;
    type metadata accessor for ImplicitNilNode(0);
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E7CC0];
    *(v17 + 3) = 0;
    *(v17 + 4) = 0;
    *(v17 + 2) = v18;
    v34 = OBJC_IVAR____TtC3VFX4Node_authoringID;
    sub_1AFDFC308();
    (*(v4 + 56))(v15, 1, 1, v3);
    type metadata accessor for AuthoringNode();
    v19 = swift_allocObject();
    v20 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v20 = 0;
    *(v20 + 8) = 0;
    *(v20 + 16) = 1;
    v21 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 1;
    v22 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v22 = 0;
    *(v22 + 8) = 1;
    v23 = (v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v23 = 0;
    v23[1] = 0;
    *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v17;
    *(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
    sub_1AFCBA80C(v15, v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v24 = *(v4 + 48);
    v25 = v24(v11, 1, v3);

    if (v25 == 1)
    {
      sub_1AFDFC308();
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      if (v24(v11, 1, v3) != 1)
      {
        sub_1AFCBA018(v11, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      }
    }

    else
    {
      sub_1AFCBA018(v15, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      (*(v4 + 32))(v7, v11, v3);
    }

    (*(v4 + 32))(v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v7, v3);
    (*(v4 + 24))(&v17[v34], v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v3);

    v26 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 1;
    v27 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
    *v27 = 0;
    *(v27 + 8) = 0;
    *(v27 + 16) = 1;
    v28 = v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
    *v28 = 0;
    *(v28 + 8) = 1;
    v29 = (v19 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
    *v29 = 0;
    v29[1] = 0;

    v31 = v35;
    MEMORY[0x1B2718E00](v30);
    if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1AFDFD458();
    }

    sub_1AFDFD4B8();

    sub_1AF91D8E4(v32, 0, 1);
  }
}

void sub_1AFC92FF0(uint64_t a1)
{
  v49 = sub_1AFDFC318();
  v2 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v3);
  v48 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFCBA7A8(0, &qword_1ED72DF30, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v47 = &v37 - v11;
  v12 = *(a1 + 8);
  if (**(v12 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX21TextureDescriptorNode)
  {
    v13 = 0;
    v42 = *(a1 + 40);
    v14 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v40 = (v2 + 56);
    v41 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
    v44 = (v2 + 32);
    v38 = (v2 + 24);
    v39 = (v2 + 48);
    v46 = v8;
    do
    {
      v15 = *(&unk_1F2508028 + v13 + 32);
      if (*(*(v12 + v14) + 16 * v15 + 32))
      {
        type metadata accessor for ConstantNode(0);

        v16 = swift_dynamicCastClass();
        if (v16)
        {
          sub_1AF0D5A54(v16 + OBJC_IVAR____TtC3VFX12ConstantNode_holder + 8, v50);

          if (swift_dynamicCast() && !v51)
          {
            type metadata accessor for ImplicitNilNode(0);
            v17 = v8;
            v18 = swift_allocObject();
            *(v18 + 4) = 0;
            *(v18 + 2) = MEMORY[0x1E69E7CC0];
            *(v18 + 3) = 0;
            v45 = OBJC_IVAR____TtC3VFX4Node_authoringID;
            sub_1AFDFC308();
            v19 = v47;
            (*v40)(v47, 1, 1, v49);
            type metadata accessor for AuthoringNode();
            v20 = swift_allocObject();
            v21 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
            *v21 = 0;
            *(v21 + 8) = 0;
            *(v21 + 16) = 1;
            v22 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
            *v22 = 0;
            *(v22 + 8) = 0;
            *(v22 + 16) = 1;
            v23 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
            *v23 = 0;
            *(v23 + 8) = 1;
            v24 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
            *v24 = 0;
            v24[1] = 0;
            *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v18;
            *(v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = MEMORY[0x1E69E7CC0];
            sub_1AFCBA80C(v19, v17, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            v25 = v17;
            v26 = v49;
            v43 = *v39;
            v27 = v43(v25, 1, v49);

            if (v27 == 1)
            {
              sub_1AFDFC308();
              sub_1AFCBA018(v47, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              if (v43(v46, 1, v26) != 1)
              {
                sub_1AFCBA018(v46, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              }
            }

            else
            {
              sub_1AFCBA018(v47, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              (*v44)(v48, v46, v26);
            }

            (*v44)((v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID), v48, v26);
            (*v38)(&v18[v45], v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v26);

            v28 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
            *v28 = 0;
            *(v28 + 8) = 0;
            *(v28 + 16) = 1;
            v29 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
            *v29 = 0;
            *(v29 + 8) = 0;
            *(v29 + 16) = 1;
            v30 = v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
            *v30 = 0;
            *(v30 + 8) = 1;
            v31 = (v20 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
            *v31 = 0;
            v31[1] = 0;

            v33 = v42;
            MEMORY[0x1B2718E00](v32);
            if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            v14 = v41;
            v34 = *(v12 + v41);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v12 + v14) = v34;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              *(v12 + v14) = sub_1AFC0DA6C(v34);
            }

            v36 = *(v12 + v14) + 16 * v15;
            *(v36 + 32) = v20;
            *(v36 + 40) = 0;

            v8 = v46;
            goto LABEL_5;
          }
        }
      }

LABEL_5:
      v13 += 8;
    }

    while (v13 != 32);
  }
}

uint64_t sub_1AFC93640(uint64_t a1)
{
  v2 = 0;
  v281 = *MEMORY[0x1E69E9840];
  sub_1AF703D7C(3, v223);
  v242[0] = v223[0];
  v242[1] = v223[1];
  v243 = v224;
  sub_1AF6B06C0(a1, v242, 0x200000000, v259);
  v277 = *&v259[32];
  v278 = v260;
  v279 = v261;
  v280 = v262;
  v275 = *v259;
  v276 = *&v259[16];
  sub_1AFCB9F58(v223, &qword_1ED723D28, type metadata accessor for ParticleInitScript, &off_1F255B9C0, sub_1AFCBA680);
  if (*v259)
  {
    if (v262 < 1 || (v203 = *(&v260 + 1)) == 0)
    {
      sub_1AFCB9F58(v259, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      goto LABEL_42;
    }

    v182 = a1;
    v200 = *&v259[40];
    v3 = *(&v261 + 1);
    v4 = *(v261 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v5 = *(*(&v261 + 1) + 32);
    v229 = *v259;
    v230 = *&v259[8];
    v231 = *&v259[24];
    inited = type metadata accessor for ParticleInitScript(0);
    *&v267[32] = v277;
    v268 = v278;
    v269 = v279;
    v270 = v280;
    *v267 = v275;
    *&v267[16] = v276;
    sub_1AF5DD298(v267, v263);
    v7 = 0;
    v185 = inited - 8;
    v188 = inited;
    v197 = v3;
    v194 = v4;
    v191 = v5;
    while (1)
    {
      v8 = (v200 + 48 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = *(v8 + 2);
      v12 = *(v8 + 3);
      v13 = *(v8 + 5);
      v212 = *(v8 + 4);
      if (v4)
      {
        v14 = *(v13 + 376);

        os_unfair_lock_lock(v14);
        os_unfair_lock_lock(*(v13 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v5);
      v15 = *(v3 + 4);
      v273[0] = *(v3 + 3);
      v273[1] = v15;
      v274 = v3[10];
      v16 = *(*(*(*(v13 + 40) + 16) + 32) + 16) + 1;
      v3[6] = ecs_stack_allocator_allocate(v3[4], 48 * v16, 8);
      v3[7] = v16;
      v3[9] = 0;
      v3[10] = 0;
      v3[8] = 0;
      v215 = v2;
      v218 = sub_1AF64B110(v188, &off_1F255B9C0, v11, v12, v212, v3);
      v206 = v13;
      v209 = v7;
      if (!v11)
      {
        break;
      }

      if (v212)
      {
        v17 = v212;
        v18 = 0;
        v19 = *(*v185 + 72);
        while (1)
        {
          v20 = v218 + v19 * v18;
          v22 = *(v20 + 8);
          v21 = *(v20 + 16);
          if (*v20 == 3)
          {
            break;
          }

          v23 = sub_1AFDFEE28();

          if (v23)
          {
LABEL_16:
            *v263 = v22;
            *&v263[8] = v21;
            *&v253 = 0x676E69646E69422ELL;
            *(&v253 + 1) = 0xEA00000000002E73;
            sub_1AF4486E4();
            if ((sub_1AFDFDF18() & 1) == 0)
            {
              goto LABEL_12;
            }

            v24 = objc_allocWithZone(MEMORY[0x1E696AE70]);
            v25 = sub_1AFDFCEC8();
            *v263 = 0;
            v26 = [v24 initWithPattern:v25 options:0 error:v263];

            v27 = *v263;
            if (!v26)
            {
LABEL_126:
              v181 = v27;
              goto LABEL_129;
            }

            v28 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v28 = v22;
            }

            v29 = 7;
            if (((v21 >> 60) & ((v22 & 0x800000000000000) == 0)) != 0)
            {
              v29 = 11;
            }

            *v263 = 15;
            *&v263[8] = v29 | (v28 << 16);
            *&v253 = v22;
            *(&v253 + 1) = v21;
            sub_1AFCBAA8C(0, &qword_1EB638F98, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
            sub_1AF458A64();
            v30 = v27;

            v31 = sub_1AFDFDC78();
            v33 = v32;
            v34 = sub_1AFDFCEC8();
            v35 = sub_1AFDFCEC8();
            v36 = [v26 stringByReplacingMatchesInString:v34 options:0 range:v31 withTemplate:{v33, v35}];

            v37 = sub_1AFDFCEF8();
            v39 = v38;

            *(v20 + 8) = v37;
            *(v20 + 16) = v39;

            ++v18;
            v17 = v212;
            if (v18 == v212)
            {
              goto LABEL_38;
            }
          }

          else
          {
LABEL_12:
            *(v20 + 8) = v22;
            *(v20 + 16) = v21;

            if (++v18 == v17)
            {
              goto LABEL_38;
            }
          }
        }

        goto LABEL_16;
      }

LABEL_38:
      v3 = v197;
      v2 = v215;
      sub_1AF630994(v197, &v229, v273);
      sub_1AF62D29C(v206);
      v5 = v191;
      ecs_stack_allocator_pop_snapshot(v191);
      v4 = v194;
      if (v194)
      {
        os_unfair_lock_unlock(*(v206 + 344));
        os_unfair_lock_unlock(*(v206 + 376));
      }

      v7 = v209 + 1;
      if (v209 + 1 == v203)
      {
        v62 = MEMORY[0x1E69E6720];
        sub_1AFCB9F58(v259, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
        sub_1AFCB9F58(v259, &qword_1ED725EA0, &type metadata for QueryResult, v62, sub_1AFCBA88C);
        a1 = v182;
        goto LABEL_42;
      }
    }

    if (v9 == v10)
    {
      goto LABEL_38;
    }

    v40 = *(*v185 + 72);
    v41 = ~v9 + v10;
    for (i = (v218 + v40 * v9 + 16); ; i = (i + v40))
    {
      v44 = *(i - 1);
      v43 = *i;
      if (*(i - 16) == 3)
      {
      }

      else
      {
        v45 = sub_1AFDFEE28();

        if ((v45 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      *v263 = v44;
      *&v263[8] = v43;
      *&v253 = 0x676E69646E69422ELL;
      *(&v253 + 1) = 0xEA00000000002E73;
      sub_1AF4486E4();
      if ((sub_1AFDFDF18() & 1) == 0)
      {
LABEL_26:
        *(i - 1) = v44;
        *i = v43;

        if (!v41)
        {
          goto LABEL_38;
        }

        goto LABEL_27;
      }

      v46 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v47 = sub_1AFDFCEC8();
      *v263 = 0;
      v48 = [v46 initWithPattern:v47 options:0 error:v263];

      v49 = *v263;
      if (!v48)
      {
LABEL_128:
        v181 = v49;
LABEL_129:
        sub_1AFDFBF58();

        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      v50 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v50 = v44;
      }

      v51 = 7;
      if (((v43 >> 60) & ((v44 & 0x800000000000000) == 0)) != 0)
      {
        v51 = 11;
      }

      *v263 = 15;
      *&v263[8] = v51 | (v50 << 16);
      *&v253 = v44;
      *(&v253 + 1) = v43;
      sub_1AFCBAA8C(0, &qword_1EB638F98, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
      sub_1AF458A64();
      v52 = v49;

      v53 = sub_1AFDFDC78();
      v55 = v54;
      v56 = sub_1AFDFCEC8();
      v57 = sub_1AFDFCEC8();
      v58 = [v48 stringByReplacingMatchesInString:v56 options:0 range:v53 withTemplate:{v55, v57}];

      v59 = sub_1AFDFCEF8();
      v61 = v60;

      *(i - 1) = v59;
      *i = v61;

      if (!v41)
      {
        goto LABEL_38;
      }

LABEL_27:
      --v41;
    }
  }

LABEL_42:
  sub_1AF703D5C(3, v225);
  v240[0] = v225[0];
  v240[1] = v225[1];
  v241 = v226;
  sub_1AF6B06C0(a1, v240, 0x200000000, v263);
  v255 = *&v263[32];
  v256 = v264;
  v257 = v265;
  v258 = v266;
  v253 = *v263;
  v254 = *&v263[16];
  sub_1AFCB9F58(v225, &qword_1ED723CF0, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, sub_1AFCBA680);
  if (!*v263)
  {
    goto LABEL_83;
  }

  if (v266 < 1 || (v204 = *(&v264 + 1)) == 0)
  {
    sub_1AFCB9F58(v263, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    goto LABEL_83;
  }

  v183 = a1;
  v201 = *&v263[40];
  v63 = *(&v265 + 1);
  v64 = *(v265 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v65 = *(*(&v265 + 1) + 32);
  v232 = *v263;
  v233 = *&v263[8];
  v234 = *&v263[24];
  updated = type metadata accessor for ParticleUpdateScript(0);
  *&v267[32] = v255;
  v268 = v256;
  v269 = v257;
  v270 = v258;
  *v267 = v253;
  *&v267[16] = v254;
  sub_1AF5DD298(v267, &v247);
  v67 = 0;
  v186 = updated - 8;
  v189 = updated;
  v198 = v63;
  v195 = v64;
  v192 = v65;
  do
  {
    v210 = v67;
    v68 = (v201 + 48 * v67);
    v69 = *v68;
    v70 = v68[1];
    v71 = *(v68 + 2);
    v72 = *(v68 + 3);
    v73 = *(v68 + 5);
    v213 = *(v68 + 4);
    if (v64)
    {
      v74 = *(v73 + 376);

      os_unfair_lock_lock(v74);
      os_unfair_lock_lock(*(v73 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v65);
    v75 = *(v63 + 4);
    v271[0] = *(v63 + 3);
    v271[1] = v75;
    v272 = v63[10];
    v76 = *(*(*(*(v73 + 40) + 16) + 32) + 16) + 1;
    v63[6] = ecs_stack_allocator_allocate(v63[4], 48 * v76, 8);
    v63[7] = v76;
    v63[9] = 0;
    v63[10] = 0;
    v63[8] = 0;
    v216 = v2;
    v219 = sub_1AF64B110(v189, &off_1F255BAD0, v71, v72, v213, v63);
    v207 = v73;
    if (!v71)
    {
      if (v69 == v70)
      {
        goto LABEL_79;
      }

      v99 = *(*v186 + 72);
      v100 = ~v69 + v70;
      for (j = v219 + v99 * v69; ; j += v99)
      {
        v103 = *j;
        v102 = *(j + 8);
        if (*(j + 24) == 3)
        {
        }

        else
        {
          v104 = sub_1AFDFEE28();

          if ((v104 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        *&v247 = v103;
        *(&v247 + 1) = v102;
        *&v246[0] = 0x676E69646E69422ELL;
        *(&v246[0] + 1) = 0xEA00000000002E73;
        sub_1AF4486E4();
        if ((sub_1AFDFDF18() & 1) == 0)
        {
LABEL_67:
          *j = v103;
          *(j + 8) = v102;

          if (!v100)
          {
            goto LABEL_79;
          }

          goto LABEL_68;
        }

        v105 = objc_allocWithZone(MEMORY[0x1E696AE70]);
        v106 = sub_1AFDFCEC8();
        *&v247 = 0;
        v107 = [v105 initWithPattern:v106 options:0 error:&v247];

        v49 = v247;
        if (!v107)
        {
          goto LABEL_128;
        }

        v108 = HIBYTE(v102) & 0xF;
        if ((v102 & 0x2000000000000000) == 0)
        {
          v108 = v103;
        }

        v109 = 7;
        if (((v102 >> 60) & ((v103 & 0x800000000000000) == 0)) != 0)
        {
          v109 = 11;
        }

        *&v247 = 15;
        *(&v247 + 1) = v109 | (v108 << 16);
        *&v246[0] = v103;
        *(&v246[0] + 1) = v102;
        sub_1AFCBAA8C(0, &qword_1EB638F98, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
        sub_1AF458A64();
        v110 = v49;

        v111 = sub_1AFDFDC78();
        v113 = v112;
        v114 = sub_1AFDFCEC8();
        v115 = sub_1AFDFCEC8();
        v116 = [v107 stringByReplacingMatchesInString:v114 options:0 range:v111 withTemplate:{v113, v115}];

        v117 = sub_1AFDFCEF8();
        v119 = v118;

        *j = v117;
        *(j + 8) = v119;

        if (!v100)
        {
          goto LABEL_79;
        }

LABEL_68:
        --v100;
      }
    }

    if (v213)
    {
      v77 = v213;
      v78 = 0;
      v79 = *(*v186 + 72);
      while (1)
      {
        v80 = v219 + v79 * v78;
        v82 = *v80;
        v81 = *(v80 + 8);
        if (*(v80 + 24) == 3)
        {
          break;
        }

        v83 = sub_1AFDFEE28();

        if (v83)
        {
LABEL_57:
          *&v247 = v82;
          *(&v247 + 1) = v81;
          *&v246[0] = 0x676E69646E69422ELL;
          *(&v246[0] + 1) = 0xEA00000000002E73;
          sub_1AF4486E4();
          if ((sub_1AFDFDF18() & 1) == 0)
          {
            goto LABEL_53;
          }

          v84 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v85 = sub_1AFDFCEC8();
          *&v247 = 0;
          v86 = [v84 initWithPattern:v85 options:0 error:&v247];

          v27 = v247;
          if (!v86)
          {
            goto LABEL_126;
          }

          v87 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v87 = v82;
          }

          v88 = 7;
          if (((v81 >> 60) & ((v82 & 0x800000000000000) == 0)) != 0)
          {
            v88 = 11;
          }

          *&v247 = 15;
          *(&v247 + 1) = v88 | (v87 << 16);
          *&v246[0] = v82;
          *(&v246[0] + 1) = v81;
          sub_1AFCBAA8C(0, &qword_1EB638F98, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
          sub_1AF458A64();
          v89 = v27;

          v90 = sub_1AFDFDC78();
          v92 = v91;
          v93 = sub_1AFDFCEC8();
          v94 = sub_1AFDFCEC8();
          v95 = [v86 stringByReplacingMatchesInString:v93 options:0 range:v90 withTemplate:{v92, v94}];

          v96 = sub_1AFDFCEF8();
          v98 = v97;

          *v80 = v96;
          *(v80 + 8) = v98;

          ++v78;
          v77 = v213;
          if (v78 == v213)
          {
            goto LABEL_79;
          }
        }

        else
        {
LABEL_53:
          *v80 = v82;
          *(v80 + 8) = v81;

          if (++v78 == v77)
          {
            goto LABEL_79;
          }
        }
      }

      goto LABEL_57;
    }

LABEL_79:
    v63 = v198;
    v2 = v216;
    sub_1AF630994(v198, &v232, v271);
    sub_1AF62D29C(v207);
    v65 = v192;
    ecs_stack_allocator_pop_snapshot(v192);
    v64 = v195;
    if (v195)
    {
      os_unfair_lock_unlock(*(v207 + 344));
      os_unfair_lock_unlock(*(v207 + 376));
    }

    v67 = v210 + 1;
  }

  while (v210 + 1 != v204);
  v120 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v263, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  sub_1AFCB9F58(v263, &qword_1ED725EA0, &type metadata for QueryResult, v120, sub_1AFCBA88C);
  a1 = v183;
LABEL_83:
  sub_1AF704984(3, v227);
  v238[0] = v227[0];
  v238[1] = v227[1];
  v239 = v228;
  sub_1AF6B06C0(a1, v238, 0x200000000, v267);
  v249 = *&v267[32];
  v250 = v268;
  v251 = v269;
  v252 = v270;
  v247 = *v267;
  v248 = *&v267[16];
  result = sub_1AFCB9F58(v227, &qword_1ED723E40, type metadata accessor for EmitterScript, &off_1F255B720, sub_1AFCBA680);
  if (!*v267)
  {
    return result;
  }

  if (v270 < 1 || (v202 = *(&v268 + 1)) == 0)
  {
    v179 = MEMORY[0x1E69E6720];
    return sub_1AFCB9F58(v267, &qword_1ED725EA0, &type metadata for QueryResult, v179, sub_1AFCBA88C);
  }

  v199 = *&v267[40];
  v122 = *(&v269 + 1);
  v123 = *(v269 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v124 = *(*(&v269 + 1) + 32);
  v235 = *v267;
  v236 = *&v267[8];
  v237 = *&v267[24];
  v125 = type metadata accessor for EmitterScript(0);
  v246[2] = v249;
  v246[3] = v250;
  v246[4] = v251;
  v246[5] = v252;
  v246[0] = v247;
  v246[1] = v248;
  sub_1AF5DD298(v246, v244);
  v126 = 0;
  v184 = v125 - 8;
  v187 = v125;
  v196 = v122;
  v190 = v124;
  v193 = v123;
  while (2)
  {
    v127 = (v199 + 48 * v126);
    v128 = *v127;
    v205 = v127[1];
    v130 = *(v127 + 2);
    v129 = *(v127 + 3);
    v131 = *(v127 + 5);
    v214 = *(v127 + 4);
    if (v123)
    {
      v132 = *(v131 + 376);

      os_unfair_lock_lock(v132);
      os_unfair_lock_lock(*(v131 + 344));
    }

    else
    {
    }

    v217 = v2;
    ecs_stack_allocator_push_snapshot(v124);
    v133 = *(v122 + 4);
    v244[0] = *(v122 + 3);
    v244[1] = v133;
    v245 = v122[10];
    v134 = *(*(*(*(v131 + 40) + 16) + 32) + 16) + 1;
    v122[6] = ecs_stack_allocator_allocate(v122[4], 48 * v134, 8);
    v122[7] = v134;
    v122[9] = 0;
    v122[10] = 0;
    v122[8] = 0;
    v135 = v214;
    v208 = v131;
    v220 = sub_1AF64B110(v187, &off_1F255B720, v130, v129, v214, v122);
    v211 = v126;
    if (!v130)
    {
      if (v128 == v205)
      {
        goto LABEL_120;
      }

      v158 = *(*v184 + 72);
      v159 = ~v128 + v205;
      for (k = (v220 + v158 * v128 + 16); ; k = (k + v158))
      {
        v162 = *(k - 1);
        v161 = *k;
        if (*(k - 16) == 3)
        {
        }

        else
        {
          v163 = sub_1AFDFEE28();

          if ((v163 & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        v221 = v162;
        v222 = v161;
        sub_1AF4486E4();
        if ((sub_1AFDFDF18() & 1) == 0)
        {
LABEL_108:
          *(k - 1) = v162;
          *k = v161;

          if (!v159)
          {
            goto LABEL_120;
          }

          goto LABEL_109;
        }

        v164 = objc_allocWithZone(MEMORY[0x1E696AE70]);
        v165 = sub_1AFDFCEC8();
        v221 = 0;
        v166 = [v164 initWithPattern:v165 options:0 error:&v221];

        v145 = v221;
        if (!v166)
        {
LABEL_127:
          v181 = v145;
          goto LABEL_129;
        }

        v167 = HIBYTE(v161) & 0xF;
        if ((v161 & 0x2000000000000000) == 0)
        {
          v167 = v162;
        }

        v168 = 7;
        if (((v161 >> 60) & ((v162 & 0x800000000000000) == 0)) != 0)
        {
          v168 = 11;
        }

        v221 = 15;
        v222 = v168 | (v167 << 16);
        sub_1AFCBAA8C(0, &qword_1EB638F98, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
        sub_1AF458A64();
        v169 = v145;

        v170 = sub_1AFDFDC78();
        v172 = v171;
        v173 = sub_1AFDFCEC8();
        v174 = sub_1AFDFCEC8();
        v175 = [v166 stringByReplacingMatchesInString:v173 options:0 range:v170 withTemplate:{v172, v174}];

        v176 = sub_1AFDFCEF8();
        v178 = v177;

        *(k - 1) = v176;
        *k = v178;

        if (!v159)
        {
          goto LABEL_120;
        }

LABEL_109:
        --v159;
      }
    }

    if (v214)
    {
      v136 = 0;
      v137 = *(*v184 + 72);
      while (1)
      {
        v138 = v220 + v137 * v136;
        v139 = *(v138 + 8);
        v140 = *(v138 + 16);
        if (*v138 == 3)
        {
          break;
        }

        v141 = sub_1AFDFEE28();

        if (v141)
        {
LABEL_98:
          v221 = v139;
          v222 = v140;
          sub_1AF4486E4();
          if ((sub_1AFDFDF18() & 1) == 0)
          {
            goto LABEL_94;
          }

          v142 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v143 = sub_1AFDFCEC8();
          v221 = 0;
          v144 = [v142 initWithPattern:v143 options:0 error:&v221];

          v145 = v221;
          if (!v144)
          {
            goto LABEL_127;
          }

          v146 = HIBYTE(v140) & 0xF;
          if ((v140 & 0x2000000000000000) == 0)
          {
            v146 = v139;
          }

          v147 = 7;
          if (((v140 >> 60) & ((v139 & 0x800000000000000) == 0)) != 0)
          {
            v147 = 11;
          }

          v221 = 15;
          v222 = v147 | (v146 << 16);
          sub_1AFCBAA8C(0, &qword_1EB638F98, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E66A8]);
          sub_1AF458A64();
          v148 = v145;

          v149 = sub_1AFDFDC78();
          v151 = v150;
          v152 = sub_1AFDFCEC8();
          v153 = sub_1AFDFCEC8();
          v154 = [v144 stringByReplacingMatchesInString:v152 options:0 range:v149 withTemplate:{v151, v153}];

          v155 = sub_1AFDFCEF8();
          v157 = v156;

          *(v138 + 8) = v155;
          *(v138 + 16) = v157;

          ++v136;
          v135 = v214;
          if (v136 == v214)
          {
            goto LABEL_120;
          }
        }

        else
        {
LABEL_94:
          *(v138 + 8) = v139;
          *(v138 + 16) = v140;

          if (++v136 == v135)
          {
            goto LABEL_120;
          }
        }
      }

      goto LABEL_98;
    }

LABEL_120:
    v122 = v196;
    v2 = v217;
    sub_1AF630994(v196, &v235, v244);
    sub_1AF62D29C(v208);
    v124 = v190;
    ecs_stack_allocator_pop_snapshot(v190);
    v123 = v193;
    if (v193)
    {
      os_unfair_lock_unlock(*(v208 + 344));
      os_unfair_lock_unlock(*(v208 + 376));
    }

    v126 = v211 + 1;
    if (v211 + 1 != v202)
    {
      continue;
    }

    break;
  }

  v180 = MEMORY[0x1E69E6720];
  sub_1AFCB9F58(v267, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  v179 = v180;
  return sub_1AFCB9F58(v267, &qword_1ED725EA0, &type metadata for QueryResult, v179, sub_1AFCBA88C);
}

uint64_t sub_1AFC952E0(uint64_t a1, uint64_t a2)
{
  if (*a2 == -1 && *(a2 + 4) == 0)
  {
    v4 = *(a2 + 8);
    if (qword_1EB6340F8 != -1)
    {
      a1 = swift_once();
    }

    v5 = qword_1EB6C2AD0;
    v8 = v4;
    MEMORY[0x1EEE9AC00](a1, a2);
    v7[2] = &v8;

    v3 = sub_1AF7B97A4(sub_1AFCBA8DC, v7, v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1AFC953DC(uint64_t result, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  if (result != &type metadata for Parent)
  {
    v5 = result;
    *a3 = (*a3 | (*(*(a2 + 8) + 48))()) & 1;
    result = swift_conformsToProtocol2();
    if (v5)
    {
      if (result)
      {
        result = (*(result + 72))(v5);
        if ((~result & 0x2F00000) == 0)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

void sub_1AFC954A0(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t a4, float32x4_t a5)
{
  v8 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  v9 = *v8;
  ecs_stack_allocator_push_snapshot(*(*v8 + 32));
  v10 = ecs_stack_allocator_allocate(*(v9 + 32), 64, 8);
  *v10 = &type metadata for Position;
  v10[1] = &off_1F252EE70;
  v10[2] = &type metadata for Orientation;
  v10[3] = &off_1F252C8A8;
  v10[4] = &type metadata for Scale1;
  v10[5] = &off_1F252F788;
  v10[6] = &type metadata for WorldTransform;
  v10[7] = &off_1F2529FC0;
  LOBYTE(v45[0]) = 1;
  v11 = sub_1AF639D38(v10, 4, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v9, 0, xmmword_1AFE201A0, 1.0);
  ecs_stack_allocator_pop_snapshot(*(v9 + 32));
  v45[0] = a1;
  v45[1] = a2;
  if (HIDWORD(v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11 == -1;
  }

  v13 = v12;
  if (!v12)
  {

    MEMORY[0x1EEE9AC00](v14, v15);

    sub_1AFC75668(0, sub_1AF6AC768);
  }

  if ((v13 & 1) == 0)
  {
    v16.n128_u64[0] = vmulq_f32(a4, vdupq_n_s32(0x42C80000u)).u64[0];
    v16.n128_u64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(vmuls_lane_f32(100.0, a4, 2)));
    v40 = v16;
    v17 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v17)
    {
      v18 = *(v17 + 80);
      swift_unknownObjectWeakLoadStrong();
      v17 = *(v17 + 56);
    }

    else
    {
      v18 = 0;
    }

    v46 = 0;
    swift_unknownObjectUnownedInit();
    v45[0] = a3;
    v46 = v17;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v47 = v18;
    sub_1AFC76DD4(v45, v11, v40);
    sub_1AF579490(v45);
    if (v18)
    {
      v19 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v19 ^ 1);
    }
  }

  v20.i64[0] = 0x3F0000003F000000;
  v20.i64[1] = 0x3F0000003F000000;
  v21 = vmulq_f32(a5, v20);
  v21.i32[3] = 0;
  v43 = v21;
  v41 = _simd_cos_f4(v21);
  v22 = _simd_sin_f4(v43);
  if ((v13 & 1) == 0)
  {
    v23 = v41;
    v24 = vextq_s8(v23, v23, 4uLL);
    v25 = vmulq_f32(vzip1q_s32(vrev64q_s32(v41), v41), vextq_s8(vzip1q_s32(v24, v22), v24, 8uLL));
    v26 = v22;
    v26.i32[3] = v22.i32[1];
    v27 = vzip2q_s32(vzip1q_s32(v41, v22), v22);
    v27.f32[3] = -v22.f32[0];
    v28 = vmulq_f32(v26, v27);
    v29 = vtrn1q_s32(vextq_s8(v22, v22, 8uLL), v41);
    v29.f32[1] = -v41.f32[0];
    v44 = vmlaq_f32(vrev64q_s32(vmulq_f32(v28, v29)), vtrn1q_s32(v22, vextq_s8(v23, v23, 8uLL)), v25);
    v30 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v30)
    {
      v31 = *(v30 + 80);
      swift_unknownObjectWeakLoadStrong();
      v30 = *(v30 + 56);
    }

    else
    {
      v31 = 0;
    }

    v46 = 0;
    swift_unknownObjectUnownedInit();
    v45[0] = a3;
    v46 = v30;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v47 = v31;
    sub_1AFC76C74(v45, v11, v44);
    sub_1AF579490(v45);
    if (v31)
    {
      v32 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v32 ^ 1);
    }

    v33 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v33)
    {
      v34 = *(v33 + 80);
      swift_unknownObjectWeakLoadStrong();
      v33 = *(v33 + 56);
    }

    else
    {
      v34 = 0;
    }

    v46 = 0;
    swift_unknownObjectUnownedInit();
    v45[0] = a3;
    v46 = v33;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v47 = v34;
    sub_1AFC77508(v45, v11);
    sub_1AF579490(v45);
    if (v34)
    {
      v35 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v35 ^ 1);
    }

    v48.n128_u32[0] = 1092616192;
    v48.n128_u8[4] = 0;
    v48.n128_u64[1] = 0x447A00003C23D70ALL;
    v49 = 1;
    v36 = *(a3 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

    if (v36)
    {
      v37 = *(v36 + 80);
      swift_unknownObjectWeakLoadStrong();
      v36 = *(v36 + 56);
    }

    else
    {
      v37 = 0;
    }

    v46 = 0;
    swift_unknownObjectUnownedInit();
    v45[0] = a3;
    v46 = v36;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    v47 = v37;
    sub_1AFC76AFC(v45, &v48, v11);
    sub_1AF579490(v45);
    if (v37)
    {
      v38 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v38 ^ 1);
    }
  }
}

uint64_t sub_1AFC95A40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    bzero(a1, 8 * a2);
  }

  v8 = sub_1AFCA492C(a1, a2, a3, a4);
  swift_bridgeObjectRelease_n();

  return v8;
}

uint64_t sub_1AFC95AD4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    bzero(a1, 8 * a2);
    a1 = v5;
    a2 = v6;
    a4 = v7;
  }

  v8 = sub_1AF8FA604(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1AFC95B88(uint64_t result)
{
  if (**(*(result + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX9BloomNode)
  {
    return sub_1AF91D8E4(0, 0, 0);
  }

  return result;
}

uint64_t sub_1AFC95C2C(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = a1[2];
  return a2(v4);
}

void sub_1AFC95D04(_OWORD *a1, uint64_t a2)
{
  v2 = a1[1];
  v3[0] = *a1;
  v3[1] = v2;
  v3[2] = a1[2];
  sub_1AFC91570(v3, a2);
}

uint64_t sub_1AFC95D64(uint64_t result)
{
  v1 = **(*(result + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  if (v1 == _TtC3VFX11Remap01Node)
  {
    v2 = 2;
  }

  else
  {
    if (v1 != _TtC3VFX9RemapNode)
    {
      return result;
    }

    v2 = 4;
  }

  v3 = sub_1AF621150(v2);
  sub_1AF64EEDC(0, 0, v3, v4);
}

uint64_t sub_1AFC95E30(uint64_t result)
{
  if (**(*(result + 8) + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) == _TtC3VFX15IsInClosedRange)
  {
    v1 = sub_1AF621150(2);
    sub_1AF64EEDC(0, 0, v1, v2);
  }

  return result;
}

uint64_t sub_1AFC95F58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;

  v6 = sub_1AF6496EC(a3);

  v8 = v5 + 36;
  v9 = *(v5 + 16) + 1;
  while (--v9)
  {
    v10 = v8;
    v8 += 8;
    if (*(v10 - 4) == v6)
    {
      return result;
    }
  }

  v11 = sub_1AF6496EC(a3);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1AF4217DC(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
  }

  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_1AF4217DC(v12 > 1, v13 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v13 + 1;
  *(v5 + 8 * v13 + 32) = v11;
  *a1 = v5;
  return result;
}

void sub_1AFC96088(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{

  sub_1AFA1CFD4(0, &qword_1ED72F7D0, &qword_1ED72FFE0, &qword_1ED72FFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v54 = a2;
  v58 = v10;
  v11 = swift_conformsToProtocol2();
  v55 = a3;
  if (v11 && a1)
  {
    v12 = v11;
    v53 = *(v11 + 72);
    if ((~v53(a1, v11) & 0x2F00000) == 0)
    {
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      v15 = v13 >> 1;
      v16 = v14 + 1;
      if (v13 >> 1 <= v14)
      {
        v10 = sub_1AF422C28(v13 > 1, v14 + 1, 1, v10);
        v13 = *(v10 + 24);
        v15 = v13 >> 1;
      }

      *(v10 + 16) = v16;
      v17 = v10 + 16 * v14;
      *(v17 + 32) = &type metadata for Position;
      *(v17 + 40) = &off_1F252EE70;
      v18 = v14 + 2;
      if (v15 < (v14 + 2))
      {
        v10 = sub_1AF422C28(v13 > 1, v14 + 2, 1, v10);
      }

      *(v10 + 16) = v18;
      v19 = v10 + 16 * v16;
      *(v19 + 32) = &type metadata for Orientation;
      *(v19 + 40) = &off_1F252C8A8;
      v20 = *(v10 + 24);
      v21 = v14 + 3;
      if ((v14 + 3) > (v20 >> 1))
      {
        v10 = sub_1AF422C28(v20 > 1, v14 + 3, 1, v10);
      }

      *(v10 + 16) = v21;
      v22 = v10 + 16 * v18;
      *(v22 + 32) = &type metadata for Scale3;
      *(v22 + 40) = &off_1F252F998;
      v23 = *(v10 + 24);
      v24 = v14 + 4;
      if ((v14 + 4) > (v23 >> 1))
      {
        v10 = sub_1AF422C28(v23 > 1, v14 + 4, 1, v10);
      }

      a3 = v55;
      *(v10 + 16) = v24;
      v25 = v10 + 16 * v21;
      *(v25 + 32) = &type metadata for WorldTransform;
      *(v25 + 40) = &off_1F2529FC0;
      v26 = *(v10 + 24);
      if ((v14 + 5) > (v26 >> 1))
      {
        v10 = sub_1AF422C28(v26 > 1, v14 + 5, 1, v10);
      }

      *(v10 + 16) = v14 + 5;
      v27 = v10 + 16 * v24;
      *(v27 + 32) = &type metadata for Parent;
      *(v27 + 40) = &off_1F2529C98;
      v58 = v10;
    }

    if ((~v53(a1, v12) & 0x1700000) == 0)
    {
      v29 = *(v10 + 16);
      v28 = *(v10 + 24);
      v30 = v28 >> 1;
      v31 = v29 + 1;
      if (v28 >> 1 <= v29)
      {
        v10 = sub_1AF422C28(v28 > 1, v29 + 1, 1, v10);
        v28 = *(v10 + 24);
        v30 = v28 >> 1;
      }

      *(v10 + 16) = v31;
      v32 = v10 + 16 * v29;
      *(v32 + 32) = &type metadata for Position;
      *(v32 + 40) = &off_1F252EE70;
      v33 = v29 + 2;
      if (v30 < (v29 + 2))
      {
        v10 = sub_1AF422C28(v28 > 1, v29 + 2, 1, v10);
      }

      *(v10 + 16) = v33;
      v34 = v10 + 16 * v31;
      *(v34 + 32) = &type metadata for Orientation;
      *(v34 + 40) = &off_1F252C8A8;
      v35 = *(v10 + 24);
      v36 = v29 + 3;
      if ((v29 + 3) > (v35 >> 1))
      {
        v10 = sub_1AF422C28(v35 > 1, v29 + 3, 1, v10);
      }

      *(v10 + 16) = v36;
      v37 = v10 + 16 * v33;
      *(v37 + 32) = &type metadata for Scale3;
      *(v37 + 40) = &off_1F252F998;
      v38 = *(v10 + 24);
      if ((v29 + 4) > (v38 >> 1))
      {
        v10 = sub_1AF422C28(v38 > 1, v29 + 4, 1, v10);
      }

      *(v10 + 16) = v29 + 4;
      v39 = v10 + 16 * v36;
      *(v39 + 32) = &type metadata for NotInHierarchy;
      *(v39 + 40) = &off_1F252A400;
      v58 = v10;
    }
  }

  sub_1AF6C11EC(0, a5, &v58, a4);
  v41 = v40;
  v42 = HIDWORD(v40);
  sub_1AF5B158C(v40, a4);
  v43 = sub_1AF80E468(a3, a4, a5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1AF4238E8(0, *(v43 + 16) + 1, 1, v43);
  }

  v45 = *(v43 + 16);
  v44 = *(v43 + 24);
  v46 = a4;
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1AF4238E8(v44 > 1, v45 + 1, 1, v43);
  }

  *(v43 + 16) = v45 + 1;
  v47 = v43 + 16 * v45;
  *(v47 + 32) = v41;
  *(v47 + 36) = v42;
  *(v47 + 40) = a5;
  v48 = *(a5 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);

  if (v48)
  {
    v49 = *(v48 + 80);
    swift_unknownObjectWeakLoadStrong();
    v48 = *(v48 + 56);
  }

  else
  {
    v49 = 0;
  }

  swift_unknownObjectUnownedInit();
  v56[0] = a5;
  v56[2] = v48;
  swift_unknownObjectUnownedAssign();
  swift_unownedRetain();
  swift_unknownObjectRelease();
  v57 = v49;
  sub_1AF80E7C4(v56, v55, v43, v46);

  sub_1AF579490(v56);
  if (v49)
  {
    v50 = [objc_opt_self() immediateMode];
    sub_1AF6C5E30(v50 ^ 1);
  }

  v51 = *(v54 + 8);
  type metadata accessor for VFXAttribute();
  v52 = swift_allocObject();
  swift_unownedRetain();

  *(v52 + 16) = a5;
  *(v52 + 24) = v41;
  *(v52 + 28) = v42;
  *(v52 + 32) = a1;
  *(v52 + 40) = v51;
}

uint64_t sub_1AFC96740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a3 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED73B840;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v58 = qword_1ED73B840;
  v59 = v7;
  v60 = v5 >> 31;
  v61 = 1;
  v62 = 2;
  v63 = 0;

  sub_1AF7050A8(1, v28);

  v52 = v6;
  v53 = v7;
  v54 = v5 >> 31;
  v55 = 1;
  v56 = 2;
  v57 = 0;

  sub_1AF7050BC(1, v30);

  v46 = v6;
  v47 = v7;
  v48 = v5 >> 31;
  v49 = 1;
  v50 = 2;
  v51 = 0;

  sub_1AF7050D0(1, v32);

  v44[0] = v28[0];
  v44[1] = v28[1];
  v45 = v29;
  sub_1AF6B06C0(a1, v44, 0x200000000, v34);
  if (*&v34[0])
  {
    v8 = v35;
    sub_1AFCB9F58(v34, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  else
  {
    v8 = 0;
  }

  v42[0] = v30[0];
  v42[1] = v30[1];
  v43 = v31;
  sub_1AF6B06C0(a1, v42, 0x200000000, v36);
  if (*&v36[0])
  {
    v9 = v37;
    sub_1AFCB9F58(v36, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 + v8;
  v40[0] = v32[0];
  v40[1] = v32[1];
  v41 = v33;
  sub_1AF6B06C0(a1, v40, 0x200000000, v38);
  if (*&v38[0])
  {
    v11 = v39;
    sub_1AFCB9F58(v38, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    if (!(v10 + v11))
    {
      goto LABEL_42;
    }
  }

  else if (!v10)
  {
    goto LABEL_42;
  }

  v12 = sub_1AF80EBCC(0);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (a2 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
    v15 = (v12 + 40);
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *(v15 - 2);
      if (v17 != -1 || v16 != 0)
      {
        v19 = 0;
        v20 = 1;
        if ((v17 & 0x80000000) != 0 || v14[1] <= v17)
        {
          goto LABEL_32;
        }

        v21 = (*v14 + 12 * v17);
        if (v16 == -1 || v21[2] == v16)
        {
          break;
        }
      }

      v19 = 0;
      v20 = 1;
      v24 = *v15;
      if (v5)
      {
LABEL_39:
        if ((v20 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

LABEL_33:
      if (v19 == v3)
      {
        v25 = v20;
      }

      else
      {
        v25 = 1;
      }

      if (v25)
      {
        goto LABEL_19;
      }

LABEL_18:
      sub_1AFC96088(&type metadata for ParticleCollide, &off_1F2553720, 3u, v17 | (v16 << 32), v24);

LABEL_19:
      v15 += 2;
      if (!--v13)
      {
        goto LABEL_41;
      }
    }

    v23 = *(*(a2 + 144) + 8 * *v21 + 32);
    v19 = *(v23 + 28);
    v20 = *(v23 + 32);
LABEL_32:
    v24 = *v15;
    if (v5)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

LABEL_41:

LABEL_42:
  sub_1AFCBA0DC(v32, &qword_1EB643D08, &type metadata for ParticlePlaneCollider, &off_1F25530C8);
  sub_1AFCBA0DC(v30, &qword_1EB643D10, &type metadata for ParticleSphereCollider, &off_1F2553488);
  return sub_1AFCBA0DC(v28, &qword_1EB643D18, &type metadata for ParticleBoxCollider, &off_1F2552898);
}

uint64_t sub_1AFC96B78(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0x100000000;
  if (qword_1ED72D720 != -1)
  {
    v69 = a2;
    swift_once();
    LODWORD(a2) = v69;
  }

  v4 = qword_1ED73B840;
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  v194 = qword_1ED73B840;
  v6 = v3 >> 31;
  v195 = v5;
  v196 = v3 >> 31;
  v197 = 1;
  v198 = 2;
  v199 = 0;

  sub_1AF702CD0(1, v120);

  v166[0] = v120[0];
  v166[1] = v120[1];
  v167 = v121;
  sub_1AF6B06C0(a1, v166, 0x200000000, v122);
  if (*&v122[0])
  {
    v7 = MEMORY[0x1E69E6720];
    v8 = v122;
LABEL_8:
    sub_1AFCB9F58(v8, &qword_1ED725EA0, &type metadata for QueryResult, v7, sub_1AFCBA88C);
    return sub_1AFCBA0DC(v120, &qword_1EB643D00, &type metadata for IBLGenerator, &off_1F252A618);
  }

  v188 = v4;
  v189 = v5;
  v190 = v3 >> 31;
  v191 = 1;
  v192 = 2;
  v193 = 0;

  sub_1AF7050E4(3, v123);

  v164[0] = v123[0];
  v164[1] = v123[1];
  v165 = v124;
  sub_1AF6B06C0(a1, v164, 0x200000000, &v125);
  sub_1AFCBA0DC(v123, &qword_1EB643CD8, &type metadata for ParticleSphereRenderer, &off_1F25518F8);
  v182 = v4;
  v84 = v5;
  v183 = v5;
  v85 = v3 >> 31;
  v184 = v85;
  v185 = 1;
  v186 = 2;
  v187 = 0;

  sub_1AF7050F8(3, v127);

  v162[0] = v127[0];
  v162[1] = v127[1];
  v163 = v128;
  sub_1AF6B06C0(a1, v162, 0x200000000, &v129);
  sub_1AFCBA0DC(v127, &qword_1EB643CE0, &type metadata for ParticleBoxRenderer, &off_1F254FC88);
  v77 = v129;
  if (v129)
  {
    v11 = v139;
    v81 = v136;
    v82 = v137;
    v79 = v134;
    v80 = v135;
    v78 = v133;
    v75 = v131;
    v76 = v132;
    v73 = *(&v129 + 1);
    v74 = v130;
    v83 = v138;
    if (v138 > 0)
    {
      goto LABEL_15;
    }

    if (!v125)
    {
LABEL_19:
      v72 = v11;
      v176 = v4;
      v177 = v5;
      v178 = v6;
      v179 = 1;
      v180 = 2;
      v181 = 0;

      sub_1AF7032A8(3, v140);

      v160[0] = v140[0];
      v160[1] = v140[1];
      v161 = v141;
      sub_1AF6B06C0(a1, v160, 0x200000000, v142);
      *&v148[32] = *&v142[32];
      v149 = v143;
      v150 = v144;
      v151 = v145;
      *v148 = *v142;
      *&v148[16] = *&v142[16];
      sub_1AFCBA0DC(v140, &qword_1EB643CE8, &type metadata for ParticleQuadRenderer, &off_1F2551038);
      if (*v142)
      {
        if (v145 > 0)
        {
          v88 = *(&v143 + 1);
          if (*(&v143 + 1))
          {
            v70 = v4;
            v71 = a1;
            v86 = *&v142[40];
            v16 = *(&v144 + 1);
            v92 = *(v144 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
            v90 = *(*(&v144 + 1) + 32);
            v152 = *v142;
            v153 = *&v142[8];
            v154 = *&v142[24];
            v104 = *&v148[32];
            v105 = v149;
            v106 = v150;
            v107 = v151;
            v102 = *v148;
            v103 = *&v148[16];
            sub_1AF5DD298(&v102, &v96);
            v17 = 0;
            while (1)
            {
              v18 = (v86 + 48 * v17);
              v19 = *v18;
              v20 = v18[1];
              v22 = *(v18 + 2);
              v21 = *(v18 + 3);
              v23 = *(v18 + 4);
              v24 = *(v18 + 5);
              if (v92)
              {
                v25 = *(v24 + 376);

                os_unfair_lock_lock(v25);
                os_unfair_lock_lock(*(v24 + 344));
              }

              else
              {
              }

              ecs_stack_allocator_push_snapshot(v90);
              v26 = *(v16 + 64);
              v174[0] = *(v16 + 48);
              v174[1] = v26;
              v175 = *(v16 + 80);
              v27 = *(*(*(*(v24 + 40) + 16) + 32) + 16) + 1;
              *(v16 + 48) = ecs_stack_allocator_allocate(*(v16 + 32), 48 * v27, 8);
              *(v16 + 56) = v27;
              *(v16 + 72) = 0;
              *(v16 + 80) = 0;
              *(v16 + 64) = 0;
              v28 = sub_1AF64B110(&type metadata for ParticleQuadRenderer, &off_1F2551038, v22, v21, v23, v16);
              if (v22)
              {
                if (v23)
                {
                  if (v23 == 1)
                  {
                    v29 = 0;
                  }

                  else
                  {
                    v29 = v23 & 0xFFFFFFFFFFFFFFFELL;
                    v32 = (v28 + 188);
                    v33 = v23 & 0xFFFFFFFFFFFFFFFELL;
                    do
                    {
                      *(v32 - 144) = 0;
                      *v32 = 0;
                      v32 += 288;
                      v33 -= 2;
                    }

                    while (v33);
                    if (v23 == v29)
                    {
                      goto LABEL_45;
                    }
                  }

                  v34 = v23 - v29;
                  v35 = (v28 + 144 * v29 + 44);
                  do
                  {
                    *v35 = 0;
                    v35 += 144;
                    --v34;
                  }

                  while (v34);
                }
              }

              else if (v19 != v20)
              {
                v30 = v20 - v19;
                if ((v20 - v19) > 1)
                {
                  v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + v19;
                  v36 = (v28 + 144 * v19 + 188);
                  v37 = v30 & 0xFFFFFFFFFFFFFFFELL;
                  do
                  {
                    *(v36 - 144) = 0;
                    *v36 = 0;
                    v36 += 288;
                    v37 -= 2;
                  }

                  while (v37);
                  if (v30 == (v30 & 0xFFFFFFFFFFFFFFFELL))
                  {
                    goto LABEL_45;
                  }
                }

                else
                {
                  v31 = v19;
                }

                v38 = v20 - v31;
                v39 = (v28 + 144 * v31 + 44);
                do
                {
                  *v39 = 0;
                  v39 += 144;
                  --v38;
                }

                while (v38);
              }

LABEL_45:
              sub_1AF630994(v16, &v152, v174);
              sub_1AF62D29C(v24);
              ecs_stack_allocator_pop_snapshot(v90);
              if (v92)
              {
                os_unfair_lock_unlock(*(v24 + 344));
                os_unfair_lock_unlock(*(v24 + 376));
              }

              if (++v17 == v88)
              {
                v40 = MEMORY[0x1E69E6720];
                sub_1AFCB9F58(v142, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
                sub_1AFCB9F58(v142, &qword_1ED725EA0, &type metadata for QueryResult, v40, sub_1AFCBA88C);
                v108 = v77;
                v109 = v73;
                v110 = v74;
                v111 = v75;
                v112 = v76;
                v113 = v78;
                v114 = v79;
                v115 = v80;
                v116 = v81;
                v117 = v82;
                v118 = v83;
                a1 = v71;
                v119 = v72;
                v4 = v70;
                v5 = v84;
                goto LABEL_50;
              }
            }
          }
        }

        sub_1AFCB9F58(v142, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
      }

      v108 = v77;
      v109 = v73;
      v110 = v74;
      v111 = v75;
      v112 = v76;
      v113 = v78;
      v114 = v79;
      v115 = v80;
      v116 = v81;
      v117 = v82;
      v118 = v83;
      v119 = v11;
      goto LABEL_50;
    }
  }

  else
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v11 = 0;
    if (!v125)
    {
      goto LABEL_19;
    }
  }

  if (v126 < 1)
  {
    goto LABEL_19;
  }

LABEL_15:
  v12 = thread_worker_index(v10);
  if (*v12 == -1)
  {
    v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v12 + 8;
  }

  v14 = *v13;
  ecs_stack_allocator_push_snapshot(*(*v13 + 32));
  v15 = ecs_stack_allocator_allocate(*(v14 + 32), 16, 8);
  *v15 = &type metadata for IBLRuntime;
  v15[1] = &off_1F252A6C8;
  v148[0] = 1;
  sub_1AF63B91C(v15, 1, MEMORY[0x1E69E7CC0], 1, 0x100000000uLL, v14);
  ecs_stack_allocator_pop_snapshot(*(v14 + 32));
  v108 = v77;
  v109 = v73;
  v110 = v74;
  v111 = v75;
  v112 = v76;
  v113 = v78;
  v114 = v79;
  v115 = v80;
  v116 = v81;
  v117 = v82;
  v118 = v83;
  v119 = v11;
LABEL_50:
  v168 = v4;
  v169 = v5;
  v170 = v85;
  v171 = 1;
  v172 = 2;
  v173 = 0;

  sub_1AF7032A8(3, v146);

  v158[0] = v146[0];
  v158[1] = v146[1];
  v159 = v147;
  sub_1AF6B06C0(a1, v158, 0x200000000, v148);
  v104 = *&v148[32];
  v105 = v149;
  v106 = v150;
  v107 = v151;
  v102 = *v148;
  v103 = *&v148[16];
  sub_1AFCBA0DC(v146, &qword_1EB643CE8, &type metadata for ParticleQuadRenderer, &off_1F2551038);
  if (!*v148)
  {
    sub_1AFCB9FB8(&v108, sub_1AFCBAA08);
    v7 = MEMORY[0x1E69E6720];
    v8 = &v125;
    goto LABEL_8;
  }

  if (v151 <= 0)
  {
    v98 = v104;
    v99 = v105;
    v100 = v106;
    v101 = v107;
    v96 = v102;
    v97 = v103;
    sub_1AF5DD298(&v96, v94);
    sub_1AFCB9FB8(&v108, sub_1AFCBAA08);
    v68 = MEMORY[0x1E69E6720];
    sub_1AFCB9F58(&v125, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
    sub_1AFCBA0DC(v120, &qword_1EB643D00, &type metadata for IBLGenerator, &off_1F252A618);
    sub_1AFCB9F58(v148, &qword_1ED725EA0, &type metadata for QueryResult, v68, sub_1AFCBA88C);
    return sub_1AFCB9F58(v148, &qword_1ED725EA0, &type metadata for QueryResult, v68, sub_1AFCBA88C);
  }

  else
  {
    v91 = *(&v149 + 1);
    if (*(&v149 + 1))
    {
      v89 = *&v148[40];
      v41 = *(&v150 + 1);
      v42 = *(v150 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v93 = *(*(&v150 + 1) + 32);
      v155 = *v148;
      v156 = *&v148[8];
      v157 = *&v148[24];
      v98 = v104;
      v99 = v105;
      v100 = v106;
      v101 = v107;
      v96 = v102;
      v97 = v103;
      sub_1AF5DD298(&v96, v94);
      v43 = 0;
      v87 = v42;
      while (1)
      {
        v44 = (v89 + 48 * v43);
        v45 = *v44;
        v46 = v44[1];
        v48 = *(v44 + 2);
        v47 = *(v44 + 3);
        v50 = *(v44 + 4);
        v49 = *(v44 + 5);
        if (v42)
        {
          v51 = *(v49 + 376);

          os_unfair_lock_lock(v51);
          os_unfair_lock_lock(*(v49 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v93);
        v52 = *(v41 + 64);
        v94[0] = *(v41 + 48);
        v94[1] = v52;
        v95 = *(v41 + 80);
        v53 = *(*(*(*(v49 + 40) + 16) + 32) + 16) + 1;
        *(v41 + 48) = ecs_stack_allocator_allocate(*(v41 + 32), 48 * v53, 8);
        *(v41 + 56) = v53;
        *(v41 + 72) = 0;
        *(v41 + 80) = 0;
        *(v41 + 64) = 0;
        v54 = sub_1AF64B110(&type metadata for ParticleQuadRenderer, &off_1F2551038, v48, v47, v50, v41);
        if (v48)
        {
          v42 = v87;
          if (!v50)
          {
            goto LABEL_76;
          }

          if (v50 == 1)
          {
            v55 = 0;
LABEL_68:
            v60 = v50 - v55;
            v61 = (v54 + 144 * v55 + 44);
            do
            {
              *v61 = 0;
              v61 += 144;
              --v60;
            }

            while (v60);
            goto LABEL_76;
          }

          v55 = v50 & 0xFFFFFFFFFFFFFFFELL;
          v58 = (v54 + 188);
          v59 = v50 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v58 - 144) = 0;
            *v58 = 0;
            v58 += 288;
            v59 -= 2;
          }

          while (v59);
          if (v50 != v55)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v42 = v87;
          if (v45 == v46)
          {
            goto LABEL_76;
          }

          v56 = v46 - v45;
          if ((v46 - v45) <= 1)
          {
            v57 = v45;
LABEL_74:
            v64 = v46 - v57;
            v65 = (v54 + 144 * v57 + 44);
            do
            {
              *v65 = 0;
              v65 += 144;
              --v64;
            }

            while (v64);
            goto LABEL_76;
          }

          v57 = (v56 & 0xFFFFFFFFFFFFFFFELL) + v45;
          v62 = (v54 + 144 * v45 + 188);
          v63 = v56 & 0xFFFFFFFFFFFFFFFELL;
          do
          {
            *(v62 - 144) = 0;
            *v62 = 0;
            v62 += 288;
            v63 -= 2;
          }

          while (v63);
          if (v56 != (v56 & 0xFFFFFFFFFFFFFFFELL))
          {
            goto LABEL_74;
          }
        }

LABEL_76:
        sub_1AF630994(v41, &v155, v94);
        sub_1AF62D29C(v49);
        ecs_stack_allocator_pop_snapshot(v93);
        if (v42)
        {
          os_unfair_lock_unlock(*(v49 + 344));
          os_unfair_lock_unlock(*(v49 + 376));
        }

        if (++v43 == v91)
        {
          v66 = MEMORY[0x1E69E6720];
          sub_1AFCB9F58(v148, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
          sub_1AFCBA0DC(v120, &qword_1EB643D00, &type metadata for IBLGenerator, &off_1F252A618);
          v67 = v66;
          goto LABEL_82;
        }
      }
    }

    sub_1AFCBA0DC(v120, &qword_1EB643D00, &type metadata for IBLGenerator, &off_1F252A618);
    v67 = MEMORY[0x1E69E6720];
LABEL_82:
    sub_1AFCB9F58(&v125, &qword_1ED725EA0, &type metadata for QueryResult, v67, sub_1AFCBA88C);
    sub_1AFCB9FB8(&v108, sub_1AFCBAA08);
    return sub_1AFCB9F58(v148, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFCBA88C);
  }
}