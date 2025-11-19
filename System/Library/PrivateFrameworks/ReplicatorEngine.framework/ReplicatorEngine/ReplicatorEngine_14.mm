void sub_1DEF49058()
{
  sub_1DEF4911C();
  if (v0 <= 0x3F)
  {
    sub_1DEF8D1E8();
    if (v1 <= 0x3F)
    {
      sub_1DEF49180();
      if (v2 <= 0x3F)
      {
        sub_1DEF491E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DEF4911C()
{
  if (!qword_1ECDE2CC0)
  {
    sub_1DEE276F8();
    v0 = sub_1DEF8D888();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2CC0);
    }
  }
}

void sub_1DEF49180()
{
  if (!qword_1ECDE2D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECDE5008, &unk_1DEF961C0);
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE2D80);
    }
  }
}

unint64_t sub_1DEF491E4()
{
  result = qword_1ECDE3450;
  if (!qword_1ECDE3450)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECDE3450);
  }

  return result;
}

uint64_t sub_1DEF49268(uint64_t a1, uint64_t a2)
{
  aBlock[6] = a1;
  v3 = off_1EED16900;
  type metadata accessor for NetworkMessenger(0);
  v4 = v3();
  v5 = sub_1DEEA3AD8(v4);

  if (sub_1DEF4DB74(v5, a2))
  {
  }

  if (*(a2 + 16) <= *(v5 + 16) >> 3)
  {
    aBlock[0] = v5;
    sub_1DEEC8D64(a2);
    v6 = v5;
    if (*(v5 + 16))
    {
      goto LABEL_4;
    }
  }

  v6 = sub_1DEEC9A18(a2, v5);
  if (!*(v6 + 16))
  {
  }

LABEL_4:
  if (qword_1ECDE2E50 != -1)
  {
LABEL_24:
    swift_once();
  }

  v7 = sub_1DEF8D508();
  __swift_project_value_buffer(v7, qword_1ECDF6010);

  v8 = sub_1DEF8D4D8();
  v9 = sub_1DEF8DCB8();
  v34 = v6;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(v6 + 16);

    *(v10 + 12) = 2082;
    v12 = sub_1DEF8DBF8();
    v14 = sub_1DEE12A5C(v12, v13, aBlock);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1DEE0F000, v8, v9, "Disconnecting %{public}ld connected deviceID(s) no longer associated with the signed-in account: %{public}s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12CCD70](v11, -1, -1);
    MEMORY[0x1E12CCD70](v10, -1, -1);
  }

  else
  {
  }

  v16 = 0;
  v17 = v6 + 56;
  v18 = 1 << *(v6 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v6 + 56);
  v21 = (v18 + 63) >> 6;
  do
  {
    while (1)
    {
      if (!v20)
      {
        while (1)
        {
          v22 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v22 >= v21)
          {
          }

          v20 = *(v17 + 8 * v22);
          ++v16;
          if (v20)
          {
            v16 = v22;
            goto LABEL_19;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

LABEL_19:
      v23 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v24 = (*(v6 + 48) + ((v16 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];
      v27 = off_1EED16958[0];

      (v27)(aBlock);

      v28 = aBlock[0];
      if (aBlock[0])
      {
        break;
      }

      v6 = v34;
    }

    queue = *(a1 + 24);
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    *(v29 + 24) = v28;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1DEF4973C;
    *(v30 + 24) = v29;
    aBlock[4] = sub_1DEE13B20;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE134F4;
    aBlock[3] = &block_descriptor_25_0;
    v31 = _Block_copy(aBlock);

    swift_unknownObjectRetain();

    dispatch_sync(queue, v31);
    swift_unknownObjectRelease();
    _Block_release(v31);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v6 = v34;
  }

  while ((isEscapingClosureAtFileLocation & 1) == 0);
  __break(1u);
}

uint64_t objectdestroy_9Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x1EEE6BDD0](v1, 32, 7);
}

uint64_t sub_1DEF49744(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DEF497B4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E30, &qword_1DEF96220) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1DEE2D2C4(v2, v3, v4);
}

uint64_t NetworkBrowsingEvent.EventType.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF498DC()
{
  sub_1DEF8E7A8();
  NetworkBrowsingEvent.EventType.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF4993C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for NetworkBrowsingEvent.EventType();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for NetworkDevice();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEF499CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = v6 | 7;
  v9 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v10 = *(*(*(a3 + 16) - 8) + 64) - ((-33 - v6) | v6) - ((-2 - v8) | v8) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = a1 + v8 + 1;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v6 + (((v16 & ~v8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v6);
      }

      v17 = *((v16 & ~v8) + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v7 + (v10 | v15) + 1;
}

void sub_1DEF49B84(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = v9 | 7;
  v11 = *(*(*(a4 + 16) - 8) + 64) - ((-33 - v9) | v9) - ((-2 - (v9 | 7)) | v9 | 7) - 2;
  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v8 < a2)
  {
    v15 = ~v8 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (*(*(*(a4 + 16) - 8) + 64) - ((-33 - v9) | v9) - ((-2 - (v9 | 7)) | v9 | 7) != 2)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_46:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v20 = (&a1[v10 + 1] & ~v10);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v9 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *v20 = a2 & 0x7FFFFFFF;
    *((&a1[v10 + 1] & ~v10) + 8) = 0;
  }

  else
  {
    *((&a1[v10 + 1] & ~v10) + 8) = a2 - 1;
  }
}

uint64_t sub_1DEF49E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DEF49EE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DEF4A06C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t static Zone.ID.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = v4 == a1[2] && v5 == a1[3];
  if (v6 || (v7 = sub_1DEF8E4E8(), result = 0, (v7 & 1) != 0))
  {
    if (a2[4] == a1[4] && a2[5] == a1[5])
    {
      return 1;
    }

    else
    {

      return sub_1DEF8E4E8();
    }
  }

  return result;
}

__n128 Zone.__allocating_init(id:protocolVersion:)(uint64_t a1, __n128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  result = *a2;
  *(v4 + 24) = *a2;
  return result;
}

uint64_t Zone.ID.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1DEF8D9B8();
  v3 = v0[4];
  v4 = v0[5];

  return sub_1DEF8D9B8();
}

uint64_t sub_1DEF4A44C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ECDE36D0 = result;
  return result;
}

uint64_t sub_1DEF4A4A0()
{
  if (qword_1ECDE36C8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ECDE36D0;
  MEMORY[0x1EEE9AC00]();
  MEMORY[0x1EEE9AC00]();
  os_unfair_lock_lock(v0 + 4);
  sub_1DEE2DFE4(&v2);
  os_unfair_lock_unlock(v0 + 4);
  return v2;
}

uint64_t sub_1DEF4A5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (qword_1ECDE36E0 != -1)
  {
LABEL_34:
    swift_once();
  }

  swift_beginAccess();
  v24 = a5;
  if ((off_1ECDE36E8 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DEF8DE58();
    type metadata accessor for Zone.ID();
    sub_1DEE244C8(&qword_1ECDE2EA0, type metadata accessor for Zone.ID);
    sub_1DEF8DC18();
    v7 = v29;
    v8 = v30;
    a5 = v31;
    v9 = v32;
    v10 = v33;
  }

  else
  {
    v11 = -1 << *(off_1ECDE36E8 + 32);
    v8 = off_1ECDE36E8 + 56;
    a5 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(off_1ECDE36E8 + 7);
    v7 = off_1ECDE36E8;
    swift_bridgeObjectRetain_n();
    v9 = 0;
  }

  v23 = a5;
  v14 = (a5 + 64) >> 6;
  while ((v7 & 0x8000000000000000) == 0)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v17 >= v14)
        {
          v10 = 0;
          goto LABEL_31;
        }

        v16 = *&v8[8 * v17];
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

LABEL_15:
    a5 = (v16 - 1) & v16;
    v18 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v18)
    {
      goto LABEL_31;
    }

LABEL_19:
    v20 = v18[2] == a1 && v18[3] == a2;
    if (v20 || (sub_1DEF8E4E8() & 1) != 0)
    {
      v21 = v18[4] == a3 && v18[5] == a4;
      if (v21 || (sub_1DEF8E4E8() & 1) != 0)
      {
        sub_1DEEACDB8(v7, v8, v23, v9, v10);

        goto LABEL_32;
      }
    }

    v9 = v17;
    v10 = a5;
  }

  v19 = sub_1DEF8DE88();
  if (v19)
  {
    v34 = v19;
    type metadata accessor for Zone.ID();
    swift_dynamicCast();
    v18 = v28;
    v17 = v9;
    a5 = v10;
    if (v28)
    {
      goto LABEL_19;
    }
  }

LABEL_31:
  sub_1DEEACDB8(v7, v8, v23, v9, v10);

  type metadata accessor for Zone.ID();
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = a3;
  v18[5] = a4;
  swift_beginAccess();

  sub_1DEF389B8(&v34, v18);
  swift_endAccess();

LABEL_32:
  *v24 = v18;
  return result;
}

void *Zone.ID.__allocating_init(id:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t Zone.ID.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Zone.ID.clientID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void *Zone.ID.init(id:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t Zone.ID.description.getter()
{
  v2 = v0[4];
  v3 = v0[5];

  MEMORY[0x1E12CB180](14906, 0xE200000000000000);
  MEMORY[0x1E12CB180](v0[2], v0[3]);
  return v2;
}

uint64_t sub_1DEF4AA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF4AAE4(uint64_t a1)
{
  v2 = sub_1DEE24084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF4AB20(uint64_t a1)
{
  v2 = sub_1DEE24084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Zone.ID.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t Zone.ID.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t Zone.ID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE51F0, &qword_1DEF963C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24084();
  sub_1DEF8E858();
  v11 = v3[2];
  v12 = v3[3];
  v16[15] = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    v14 = v3[4];
    v15 = v3[5];
    v16[14] = 1;
    sub_1DEF8E278();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Zone.ID.hashValue.getter()
{
  sub_1DEF8E7A8();
  v1 = v0[2];
  v2 = v0[3];
  sub_1DEF8D9B8();
  v3 = v0[4];
  v4 = v0[5];
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t Zone.ID.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Zone.ID.init(from:)(a1);
  return v2;
}

uint64_t sub_1DEF4ADE4@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

uint64_t sub_1DEF4ADF4()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  v2 = v1[2];
  v3 = v1[3];
  sub_1DEF8D9B8();
  v4 = v1[4];
  v5 = v1[5];
  sub_1DEF8D9B8();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF4AE48()
{
  v1 = *v0;
  v2 = v1[2];
  v3 = v1[3];
  sub_1DEF8D9B8();
  v4 = v1[4];
  v5 = v1[5];

  return sub_1DEF8D9B8();
}

__n128 Zone.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t Zone.init(id:protocolVersion:)(uint64_t a1, _OWORD *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *a2;
  return v2;
}

uint64_t Zone.hash(into:)()
{
  v1 = v0[2];
  v2 = v1[2];
  v3 = v1[3];
  sub_1DEF8D9B8();
  v4 = v1[4];
  v5 = v1[5];
  sub_1DEF8D9B8();
  v6 = v0[4];
  MEMORY[0x1E12CBF90](v0[3]);
  return MEMORY[0x1E12CBF90](v6);
}

uint64_t sub_1DEF4AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF4B00C(uint64_t a1)
{
  v2 = sub_1DEE24180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF4B048(uint64_t a1)
{
  v2 = sub_1DEE24180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Zone.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Zone.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5200, &qword_1DEF963D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE24180();
  sub_1DEF8E858();
  *&v12 = *(v3 + 16);
  v13 = 0;
  type metadata accessor for Zone.ID();
  sub_1DEE244C8(&qword_1ECDE2EA8, type metadata accessor for Zone.ID);
  sub_1DEF8E298();
  if (!v2)
  {
    v12 = *(v3 + 24);
    v13 = 1;
    sub_1DEEBBB54();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Zone.hashValue.getter()
{
  sub_1DEF8E7A8();
  v1 = v0[2];
  v2 = v1[2];
  v3 = v1[3];
  sub_1DEF8D9B8();
  v4 = v1[4];
  v5 = v1[5];
  sub_1DEF8D9B8();
  v6 = v0[4];
  MEMORY[0x1E12CBF90](v0[3]);
  MEMORY[0x1E12CBF90](v6);
  return sub_1DEF8E7F8();
}

uint64_t Zone.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  Zone.init(from:)(a1);
  return v2;
}

uint64_t sub_1DEF4B390()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  v2 = v1[2];
  v3 = v2[2];
  v4 = v2[3];
  sub_1DEF8D9B8();
  v5 = v2[4];
  v6 = v2[5];
  sub_1DEF8D9B8();
  v7 = v1[3];
  v8 = v1[4];
  MEMORY[0x1E12CBF90](v7);
  MEMORY[0x1E12CBF90](v8);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF4B400()
{
  v1 = *v0;
  v2 = v1[2];
  v3 = v2[2];
  v4 = v2[3];
  sub_1DEF8D9B8();
  v5 = v2[4];
  v6 = v2[5];
  sub_1DEF8D9B8();
  v7 = v1[4];
  MEMORY[0x1E12CBF90](v1[3]);
  return MEMORY[0x1E12CBF90](v7);
}

uint64_t sub_1DEF4B458()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  v2 = v1[2];
  v3 = v2[2];
  v4 = v2[3];
  sub_1DEF8D9B8();
  v5 = v2[4];
  v6 = v2[5];
  sub_1DEF8D9B8();
  v7 = v1[3];
  v8 = v1[4];
  MEMORY[0x1E12CBF90](v7);
  MEMORY[0x1E12CBF90](v8);
  return sub_1DEF8E7F8();
}

BOOL _s16ReplicatorEngine4ZoneC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2[2];
  v6 = v5[2] == v4[2] && v5[3] == v4[3];
  if (v6 || (sub_1DEF8E4E8()) && (v5[4] == v4[4] ? (v7 = v5[5] == v4[5]) : (v7 = 0), (v7 || (sub_1DEF8E4E8()) && a1[3] == a2[3]))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEF4B704()
{
  result = qword_1ECDE5218;
  if (!qword_1ECDE5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5218);
  }

  return result;
}

unint64_t sub_1DEF4B75C()
{
  result = qword_1ECDE5220;
  if (!qword_1ECDE5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5220);
  }

  return result;
}

unint64_t sub_1DEF4B7B4()
{
  result = qword_1ECDE2EC8;
  if (!qword_1ECDE2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EC8);
  }

  return result;
}

unint64_t sub_1DEF4B80C()
{
  result = qword_1ECDE2ED0;
  if (!qword_1ECDE2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2ED0);
  }

  return result;
}

unint64_t sub_1DEF4B864()
{
  result = qword_1ECDE2EB0;
  if (!qword_1ECDE2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EB0);
  }

  return result;
}

unint64_t sub_1DEF4B8BC()
{
  result = qword_1ECDE2EB8;
  if (!qword_1ECDE2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EB8);
  }

  return result;
}

uint64_t PairedRelationshipReconciler.__allocating_init(syncService:queryCount:queryDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1DEF4CF14(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t PairedRelationshipReconciler.init(syncService:queryCount:queryDelay:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1DEF4CF14(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

void *sub_1DEF4B9DC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1DEF8DE68();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1DEEC7F2C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1E12CB6E0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1DEEC7F2C((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for ReliableKnownPairingRelationshipFilter();
        v15 = &off_1F5A1D228;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1DEE2F1AC(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_1DEEC7F2C((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for ReliableKnownPairingRelationshipFilter();
        v15 = &off_1F5A1D228;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1DEE2F1AC(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t PairedRelationshipReconciler.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PairedRelationshipReconciler.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t PairedRelationshipReconciler.filter(pairingRelationships:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;

  UnifyingPairingRelationshipFilter.filterKnownPairingRelationships(from:completion:)(a1, sub_1DEF4D32C, v9);
}

uint64_t sub_1DEF4BCB8(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DEF8D698();
  v33 = *(v12 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D6D8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = *(a3 + 32);
    v32 = v19;
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a5;
    v23[4] = a6;
    v39 = sub_1DEF4D438;
    v40 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1DEE3F0C0;
    v38 = &block_descriptor_18;
    v24 = _Block_copy(&aBlock);
    sub_1DEEE43BC(a1, 1);

    sub_1DEF8D6B8();
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v21, v15, v24);
    _Block_release(v24);
    (*(v33 + 8))(v15, v12);
    (*(v17 + 8))(v21, v32);
  }

  else
  {
    v26 = *(a3 + 24);
    v27 = swift_allocObject();
    v27[2] = a4;
    v27[3] = a1;
    v27[4] = a3;
    v27[5] = a5;
    v27[6] = a6;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1DEF4D444;
    *(v28 + 24) = v27;
    v39 = sub_1DEE13B20;
    v40 = v28;
    aBlock = MEMORY[0x1E69E9820];
    v36 = 1107296256;
    v37 = sub_1DEE134F4;
    v38 = &block_descriptor_18;
    v29 = _Block_copy(&aBlock);
    sub_1DEEE43BC(a1, 0);

    dispatch_sync(v26, v29);
    _Block_release(v29);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1DEF4C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a4;
  v82 = a5;
  v80 = a3;
  v6 = sub_1DEF8D698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v85 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v84 = *(v10 - 8);
  v11 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v83 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PairingRelationship();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1DEF8D3F8();
  v18 = *(v88 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v77 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = &v74 - v22;

  v24 = sub_1DEEA3F9C(v23);

  v25 = sub_1DEECA55C(a2, v24);
  v26 = *(v25 + 16);
  v86 = v10;
  v87 = v7;
  if (v26)
  {
    v27 = sub_1DEF2B350(v26, 0);
    v28 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v89 = v27;
    sub_1DEF2E0B8(aBlock, v27 + v28, v26, v25);
    v91 = v29;
    v90 = v94;

    result = sub_1DEE2774C();
    if (v91 != v26)
    {
      __break(1u);
      return result;
    }
  }

  else
  {

    v89 = MEMORY[0x1E69E7CC0];
  }

  v79 = v6;
  v31 = *(a2 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v78 = a2;
  if (v31)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v31, 0);
    v32 = aBlock[0];
    v33 = a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v75 = v14;
    v34 = *(v14 + 72);
    v90 = (v18 + 32);
    v91 = v34;
    v35 = v88;
    v36 = v76;
    do
    {
      sub_1DEEE42FC(v33, v17);
      (*(v18 + 16))(v36, v17, v35);
      sub_1DEEE4360(v17);
      aBlock[0] = v32;
      v38 = *(v32 + 16);
      v37 = *(v32 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1DEEC7D60(v37 > 1, v38 + 1, 1);
        v35 = v88;
        v32 = aBlock[0];
      }

      *(v32 + 16) = v38 + 1;
      (*(v18 + 32))(v32 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v38, v36, v35);
      v33 += v91;
      --v31;
    }

    while (v31);
    v14 = v75;
  }

  v39 = v89;
  v40 = *(v89 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    v76 = v32;
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v40, 0);
    v41 = aBlock[0];
    v42 = v39 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v43 = *(v14 + 72);
    v90 = (v18 + 32);
    v91 = v43;
    v44 = v88;
    v45 = v77;
    do
    {
      sub_1DEEE42FC(v42, v17);
      (*(v18 + 16))(v45, v17, v44);
      sub_1DEEE4360(v17);
      aBlock[0] = v41;
      v47 = *(v41 + 16);
      v46 = *(v41 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_1DEEC7D60(v46 > 1, v47 + 1, 1);
        v44 = v88;
        v41 = aBlock[0];
      }

      *(v41 + 16) = v47 + 1;
      (*(v18 + 32))(v41 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v47, v45, v44);
      v42 += v91;
      --v40;
    }

    while (v40);
    v32 = v76;
  }

  v48 = v87;
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v49 = sub_1DEF8D508();
  __swift_project_value_buffer(v49, qword_1ECDF5FF8);

  v50 = sub_1DEF8D4D8();
  v51 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v52 = 136446466;
    v54 = v88;
    v55 = MEMORY[0x1E12CB290](v32, v88);
    v57 = v56;

    v58 = sub_1DEE12A5C(v55, v57, aBlock);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2082;
    v59 = MEMORY[0x1E12CB290](v41, v54);
    v61 = v60;

    v62 = sub_1DEE12A5C(v59, v61, aBlock);

    *(v52 + 14) = v62;
    _os_log_impl(&dword_1DEE0F000, v50, v51, "Reconciled relationships.  Known: %{public}s; unknown: %{public}s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v53, -1, -1);
    MEMORY[0x1E12CCD70](v52, -1, -1);
  }

  else
  {
  }

  v64 = v84;
  v63 = v85;
  v66 = v81;
  v65 = v82;
  v67 = v78;
  v68 = *(v80 + 32);
  v69 = swift_allocObject();
  v69[2] = v66;
  v69[3] = v65;
  v70 = v89;
  v69[4] = v67;
  v69[5] = v70;
  v94 = sub_1DEF4D454;
  v95 = v69;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_24_2;
  v71 = _Block_copy(aBlock);

  v72 = v83;
  sub_1DEF8D6B8();
  v92 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v73 = v79;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v72, v63, v71);
  _Block_release(v71);
  (*(v48 + 8))(v63, v73);
  (*(v64 + 8))(v72, v86);
}

void sub_1DEF4C9C0(void (*a1)(void **), uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  v9 = a4;
  v10 = 0;

  a1(&v8);
  v5 = v8;
  v6 = v9;
  v7 = v10;

  sub_1DEEA8A18(v5, v6, v7);
}

void sub_1DEF4CA34(void *a1, void (*a2)(void **))
{
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v4 = sub_1DEF8D508();
  __swift_project_value_buffer(v4, qword_1ECDF5FF8);
  v5 = a1;
  v6 = sub_1DEF8D4D8();
  v7 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1DEE0F000, v6, v7, "Failed to reconcile relationships: %{public}@", v8, 0xCu);
    sub_1DEEE2A84(v9);
    MEMORY[0x1E12CCD70](v9, -1, -1);
    MEMORY[0x1E12CCD70](v8, -1, -1);
  }

  v16 = a1;
  v17 = 0;
  v18 = 1;
  v12 = a1;
  a2(&v16);
  v13 = v16;
  v14 = v17;
  v15 = v18;

  sub_1DEEA8A18(v13, v14, v15);
}

uint64_t sub_1DEF4CBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a1;
  v9[4] = a2;
  v9[5] = a3;

  UnifyingPairingRelationshipFilter.filterKnownPairingRelationships(from:completion:)(a1, sub_1DEF4D470, v9);
}

uint64_t sub_1DEF4CC70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v21 = a3;
  v19 = a2;
  v20 = sub_1DEF8DD08();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8DCD8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = sub_1DEF8D6D8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v24 = type metadata accessor for SyncServiceKnownPairingRelationshipFilter();
  v25 = &off_1F5A21CE8;
  *&v23 = a1;
  v14 = sub_1DEE3C630();
  v18[1] = "lationshipReconciler";
  v18[2] = v14;
  sub_1DEF8D6C8();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  v15 = v19;
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8090], v20);
  result = sub_1DEF8DD38();
  v17 = v21;
  a4[2] = result;
  if (v15 < 1 || v17 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DEE2F1AC(&v23, (a4 + 5));
    a4[3] = v15;
    a4[4] = v17;
    return a4;
  }

  return result;
}

uint64_t sub_1DEF4CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v4 = sub_1DEF8DD08();
  v29 = v4;
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DEF8DCD8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1DEF8D6D8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v28[1] = sub_1DEE3C630();
  v32 = "RapportBrowseAgent";
  sub_1DEF8D6C8();
  v39 = MEMORY[0x1E69E7CC0];
  v31 = sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  v12 = *MEMORY[0x1E69E8090];
  v13 = *(v38 + 104);
  v38 += 104;
  v13(v7, v12, v4);
  v14 = v7;
  v15 = sub_1DEF8DD38();
  v16 = v33;
  *(v33 + 24) = v15;
  sub_1DEF8D6C8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1DEF8DE08();
  v13(v14, v12, v29);
  *(v16 + 32) = sub_1DEF8DD38();
  v17 = type metadata accessor for SyncServiceKnownPairingRelationshipFilter();
  v18 = v34;
  ObjectType = swift_getObjectType();
  v39 = v18;
  v20 = *(v35 + 8);
  swift_unknownObjectRetain();
  sub_1DEF64D24(&v39, v17, ObjectType, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D90, &qword_1DEF916A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DEF91010;
  type metadata accessor for ReliableKnownPairingRelationshipFilter();
  v22 = swift_allocObject();

  *(inited + 32) = sub_1DEF4CC70(v23, v36, v37, v22);
  v24 = sub_1DEF4B9DC(inited);
  swift_setDeallocating();
  v25 = *(inited + 16);
  swift_arrayDestroy();
  type metadata accessor for UnifyingPairingRelationshipFilter();
  swift_allocObject();
  v26 = UnifyingPairingRelationshipFilter.init(filters:)(v24);

  *(v16 + 16) = v26;
  return v16;
}

uint64_t sub_1DEF4D330(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1DEF4D378(uint64_t result, int a2, int a3)
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

uint64_t sub_1DEF4D4D8()
{
  v0 = sub_1DEF8D508();
  __swift_allocate_value_buffer(v0, qword_1ECDF5FE0);
  __swift_project_value_buffer(v0, qword_1ECDF5FE0);
  return sub_1DEF8D4E8();
}

uint64_t sub_1DEF4D5F4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DEF8D508();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1DEF8D4E8();
}

uint64_t sub_1DEF4D66C()
{
  v0 = sub_1DEF8D508();
  __swift_allocate_value_buffer(v0, qword_1ECDF6118);
  __swift_project_value_buffer(v0, qword_1ECDF6118);
  return sub_1DEF8D4E8();
}

uint64_t sub_1DEF4D6EC(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1DEF8DDC8();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1DEF4D7C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v35 - v10;
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v12;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v15 = 0;
    v16 = *(a1 + 56);
    v35 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & v16;
    v20 = (v17 + 63) >> 6;
    v42 = v5 + 32;
    v44 = a2 + 56;
    v45 = v5 + 16;
    v21 = (v5 + 8);
    v36 = v20;
    v37 = &v35 - v12;
    v38 = v5;
    v39 = a1;
    if (v19)
    {
      while (1)
      {
        v22 = __clz(__rbit64(v19));
        v41 = (v19 - 1) & v19;
LABEL_13:
        v25 = *(a1 + 48);
        v43 = *(v5 + 72);
        v26 = *(v5 + 16);
        v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4, v13);
        (*(v5 + 32))(v46, v14, v4);
        v27 = *(a2 + 40);
        sub_1DEF5D72C(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        v28 = sub_1DEF8D8B8();
        v29 = -1 << *(a2 + 32);
        v30 = v28 & ~v29;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          break;
        }

        v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v31 = a2;
        v32 = ~v29;
        while (1)
        {
          (v26)(v8, *(v31 + 48) + v30 * v43, v4);
          sub_1DEF5D72C(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
          v33 = sub_1DEF8D908();
          v34 = *v21;
          (*v21)(v8, v4);
          if (v33)
          {
            break;
          }

          v30 = (v30 + 1) & v32;
          if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            v34(v46, v4);
            return;
          }
        }

        v34(v46, v4);
        a2 = v31;
        v5 = v38;
        a1 = v39;
        v20 = v36;
        v14 = v37;
        v19 = v41;
        if (!v41)
        {
          goto LABEL_8;
        }
      }

      (*v21)(v46, v4);
    }

    else
    {
LABEL_8:
      v23 = v15;
      while (1)
      {
        v15 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v15 >= v20)
        {
          return;
        }

        v24 = *(v35 + 8 * v15);
        ++v23;
        if (v24)
        {
          v22 = __clz(__rbit64(v24));
          v41 = (v24 - 1) & v24;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1DEF4DB74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v17 = sub_1DEF8E7F8();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF4DD2C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1DEF8DDC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  v12 = *a1;
  v13 = *(v2 + *(v5 + 152));
  LOBYTE(v17[0]) = v12;
  sub_1DEE276F8();
  sub_1DEF8D898();
  v14 = *(v6 - 8);
  if ((*(v14 + 48))(v11, 1, v6) != 1)
  {
    return (*(v14 + 32))(a2, v11, v6);
  }

  (*(v8 + 8))(v11, v7);
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](0xD000000000000038, 0x80000001DEF9E010);
  if (v12)
  {
    v16 = 0x73756E696D726574;
  }

  else
  {
    v16 = 0x647261646E617473;
  }

  MEMORY[0x1E12CB180](v16, 0xE800000000000000);

  result = sub_1DEF8E0F8();
  __break(1u);
  return result;
}

uint64_t sub_1DEF4DF7C()
{
  v1 = *(v0 + *(*v0 + 168));
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2DFE4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF4DFF8(void *a1, uint64_t a2)
{
  v28 = *a1;
  v4 = v28;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3A60, &unk_1DEF90810);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5228, &qword_1DEF96A80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = *(v4 + 176);
  v15 = *(a1 + v14);
  *(a1 + v14) = a2;

  result = sub_1DEF7BF38(1, &unk_1F5A195D0);
  if (result)
  {
    v17 = *(a1 + v14);
    if (v17)
    {
      v29 = *(a1 + v14);
      v30 = a1[2];
      v18 = v30;
      v27 = v17;
      v19 = sub_1DEF8DCF8();
      (*(*(v19 - 8) + 56))(v8, 1, 1, v19);

      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5230, &unk_1DEF96A88);
      v26 = v10;
      sub_1DEE3C630();
      sub_1DEE1B548(&qword_1ECDE2D88, &qword_1ECDE5230, &unk_1DEF96A88);
      sub_1DEF5D72C(&qword_1ECDE2C08, sub_1DEE3C630);
      sub_1DEF8D5D8();
      sub_1DEE171B4(v8, &qword_1ECDE3A60, &unk_1DEF90810);

      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      v22 = v28;
      *(v21 + 16) = *(v28 + 80);
      *(v21 + 24) = *(v22 + 88);
      *(v21 + 40) = *(v22 + 104);
      *(v21 + 48) = v20;
      sub_1DEE1B548(&qword_1ECDE2DE8, &qword_1ECDE5228, &qword_1DEF96A80);
      sub_1DEF8D5E8();

      (*(v26 + 8))(v13, v9);
      v23 = *(*a1 + 160);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE5048, &qword_1DEF96210);
      sub_1DEE1B548(&qword_1ECDE2C60, &unk_1ECDE5048, &qword_1DEF96210);
      sub_1DEF8D578();
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1DEF4E438(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5238, &qword_1DEF96A98);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v107 - v15;
  v119 = type metadata accessor for DeviceDescriptor();
  v115 = *(v119 - 8);
  v17 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v111 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v113 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v114 = (&v107 - v22);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v23 = *(*(v129 - 8) + 64);
  MEMORY[0x1EEE9AC00](v129);
  v118 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v127 = &v107 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v126 = &v107 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v128 = &v107 - v30;
  v120 = type metadata accessor for PairingRelationship();
  v31 = *(v120 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v125 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v112 = result;
  v107 = v12;
  v108 = a6;
  v109 = v9;
  v110 = a4;
  v36 = *(v34 + 16);
  v37 = MEMORY[0x1E69E7CC0];
  v117 = v16;
  if (v36)
  {
    v135 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7DA4(0, v36, 0);
    v37 = v135;
    v38 = v34 + 64;
    v39 = -1 << *(v34 + 32);
    v40 = sub_1DEF8DE18();
    v41 = 0;
    v121 = v34 + 72;
    v122 = v36;
    v123 = v34 + 64;
    v124 = v34;
    while ((v40 & 0x8000000000000000) == 0 && v40 < 1 << *(v34 + 32))
    {
      v44 = v40 >> 6;
      if ((*(v38 + 8 * (v40 >> 6)) & (1 << v40)) == 0)
      {
        goto LABEL_44;
      }

      v130 = v41;
      v131 = *(v34 + 36);
      v132 = 1 << v40;
      v134 = v37;
      v45 = v129;
      v46 = *(v129 + 48);
      v47 = *(v34 + 48);
      v48 = sub_1DEF8D3F8();
      v49 = *(v48 - 8);
      v50 = v34;
      v51 = v128;
      (*(v49 + 16))(v128, v47 + *(v49 + 72) * v40, v48);
      v52 = *(v50 + 56);
      v133 = *(v31 + 72);
      sub_1DEE280F8(v52 + v133 * v40, v51 + v46, type metadata accessor for PairingRelationship);
      v53 = v126;
      (*(v49 + 32))(v126, v51, v48);
      sub_1DEE13A28(v51 + v46, v53 + *(v45 + 48), type metadata accessor for PairingRelationship);
      v54 = v127;
      sub_1DEE1BA88(v53, v127, &unk_1ECDE4350, &qword_1DEF93400);
      v55 = *(v45 + 48);
      v37 = v134;
      v56 = v125;
      sub_1DEE13A28(v54 + v55, v125, type metadata accessor for PairingRelationship);
      (*(v49 + 8))(v54, v48);
      v135 = v37;
      v58 = *(v37 + 16);
      v57 = *(v37 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_1DEEC7DA4(v57 > 1, v58 + 1, 1);
        v37 = v135;
      }

      *(v37 + 16) = v58 + 1;
      sub_1DEE13A28(v56, v37 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v58 * v133, type metadata accessor for PairingRelationship);
      v34 = v124;
      v42 = 1 << *(v124 + 32);
      if (v40 >= v42)
      {
        goto LABEL_45;
      }

      v38 = v123;
      v59 = *(v123 + 8 * v44);
      if ((v59 & v132) == 0)
      {
        goto LABEL_46;
      }

      if (v131 != *(v124 + 36))
      {
        goto LABEL_47;
      }

      v60 = v59 & (-2 << (v40 & 0x3F));
      if (v60)
      {
        v42 = __clz(__rbit64(v60)) | v40 & 0x7FFFFFFFFFFFFFC0;
        v43 = v122;
      }

      else
      {
        v61 = v44 << 6;
        v62 = v44 + 1;
        v63 = (v121 + 8 * v44);
        v43 = v122;
        while (v62 < (v42 + 63) >> 6)
        {
          v65 = *v63++;
          v64 = v65;
          v61 += 64;
          ++v62;
          if (v65)
          {
            sub_1DEE2F804(v40, v131, 0);
            v42 = __clz(__rbit64(v64)) + v61;
            goto LABEL_5;
          }
        }

        sub_1DEE2F804(v40, v131, 0);
      }

LABEL_5:
      v41 = v130 + 1;
      v40 = v42;
      if (v130 + 1 == v43)
      {
        goto LABEL_20;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_20:
  if (qword_1ECDE2E50 != -1)
  {
LABEL_48:
    swift_once();
  }

  v66 = sub_1DEF8D508();
  __swift_project_value_buffer(v66, qword_1ECDF6010);

  v67 = sub_1DEF8D4D8();
  v68 = sub_1DEF8DCB8();

  v69 = os_log_type_enabled(v67, v68);
  v116 = v31;
  if (v69)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v135 = v71;
    *v70 = 136446210;
    v72 = MEMORY[0x1E12CB290](v37, v120);
    v74 = v73;

    v75 = sub_1DEE12A5C(v72, v74, &v135);

    *(v70 + 4) = v75;
    _os_log_impl(&dword_1DEE0F000, v67, v68, "pairingRelationships updated:%{public}s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1E12CCD70](v71, -1, -1);
    MEMORY[0x1E12CCD70](v70, -1, -1);
  }

  else
  {
  }

  sub_1DEF5B3BC(v34);
  v31 = v76 + 64;
  v77 = 1 << *(v76 + 32);
  v78 = -1;
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  v79 = v78 & *(v76 + 64);
  v37 = (v77 + 63) >> 6;
  v132 = v115 + 48;
  v133 = (v115 + 56);
  v134 = v76;

  v80 = 0;
  v131 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v81 = v80;
    if (!v79)
    {
      break;
    }

LABEL_31:
    v82 = __clz(__rbit64(v79));
    v79 &= v79 - 1;
    v83 = v82 | (v80 << 6);
    v84 = v134;
    v85 = *(v134 + 48);
    v86 = sub_1DEF8D3F8();
    v87 = *(v86 - 8);
    v88 = v87;
    v89 = v85 + *(v87 + 72) * v83;
    v90 = v118;
    (*(v87 + 16))(v118, v89, v86);
    v91 = v129;
    sub_1DEE280F8(*(v84 + 56) + *(v116 + 72) * v83, v90 + *(v129 + 48), type metadata accessor for PairingRelationship);
    v92 = v128;
    sub_1DEE1BA88(v90, v128, &unk_1ECDE4350, &qword_1DEF93400);
    v93 = v92 + *(v91 + 48);
    v34 = v117;
    sub_1DEE280F8(v93 + *(v120 + 20), v117, type metadata accessor for DeviceDescriptor);
    sub_1DEE274C0(v93, type metadata accessor for PairingRelationship);
    v94 = v119;
    (*v133)(v34, 0, 1, v119);
    (*(v88 + 8))(v92, v86);
    if ((*v132)(v34, 1, v94) == 1)
    {
      sub_1DEE171B4(v34, &qword_1ECDE5238, &qword_1DEF96A98);
    }

    else
    {
      sub_1DEE13A28(v34, v111, type metadata accessor for DeviceDescriptor);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_1DEF3822C(0, v131[2] + 1, 1, v131);
      }

      v96 = v131[2];
      v95 = v131[3];
      if (v96 >= v95 >> 1)
      {
        v131 = sub_1DEF3822C(v95 > 1, v96 + 1, 1, v131);
      }

      v97 = v131;
      v131[2] = v96 + 1;
      sub_1DEE13A28(v111, v97 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v96, type metadata accessor for DeviceDescriptor);
    }
  }

  while (1)
  {
    v80 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_43;
    }

    if (v80 >= v37)
    {
      break;
    }

    v79 = *(v31 + 8 * v80);
    ++v81;
    if (v79)
    {
      goto LABEL_31;
    }
  }

  if (v131[2])
  {
    v98 = v113;
    sub_1DEE280F8(v131 + ((*(v115 + 80) + 32) & ~*(v115 + 80)), v113, type metadata accessor for DeviceDescriptor);

    v99 = v114;
    sub_1DEE13A28(v98, v114, type metadata accessor for DeviceDescriptor);
    LOBYTE(v135) = 1;
    v100 = v107;
    sub_1DEF4DD2C(&v135, v107);
    v101 = *v99;
    v102 = v99[1];
    v103 = v108;
    v104 = *(v108 + 48);

    v105 = v102;
    v106 = v110;
    v104(v101, v105, v110, v103);

    (*(v109 + 8))(v100, v106);
    return sub_1DEE274C0(v99, type metadata accessor for DeviceDescriptor);
  }

  else
  {
  }
}

uint64_t sub_1DEF4F0B0()
{
  v1 = v0;
  v2 = *v0;
  v54 = sub_1DEF8D698();
  v3 = *(v54 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DEF8D6D8();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D788();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v0[2];
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  result = (*(v11 + 8))(v14, v10);
  if (v15)
  {
    v49 = v6;
    v50 = v7;
    v18 = v2[13];
    v19 = v2[11];
    (*(v18 + 72))(aBlock, v19, v18);
    v20 = v57;
    v21 = v58;
    __swift_project_boxed_opaque_existential_1(aBlock, v57);
    v22 = (*(v21 + 4))(v20, v21);
    v23 = *(v22 + 16);
    v51 = v3;
    if (v23)
    {
      v46 = v18;
      v47 = v19;
      v48 = v2;
      v60 = MEMORY[0x1E69E7CC0];
      sub_1DEEC7E08(0, v23, 0);
      v24 = v60;
      v25 = (v22 + 40);
      do
      {
        v27 = *(v25 - 1);
        v26 = *v25;
        v60 = v24;
        v28 = *(v24 + 16);
        v29 = *(v24 + 24);

        if (v28 >= v29 >> 1)
        {
          sub_1DEEC7E08((v29 > 1), v28 + 1, 1);
          v24 = v60;
        }

        *(v24 + 16) = v28 + 1;
        v30 = v24 + 16 * v28;
        *(v30 + 32) = v27;
        *(v30 + 40) = v26;
        v25 += 2;
        --v23;
      }

      while (v23);

      v31 = v54;
      v19 = v47;
      v2 = v48;
      v18 = v46;
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
      v31 = v54;
    }

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v32 = sub_1DEEA3AD8(v24);

    aBlock[0] = *(v1 + *(*v1 + 152));
    v34 = MEMORY[0x1EEE9AC00](v33);
    *(&v45 - 6) = v2[10];
    *(&v45 - 5) = v19;
    *(&v45 - 4) = v2[12];
    *(&v45 - 3) = v18;
    *(&v45 - 2) = v32;
    MEMORY[0x1EEE9AC00](v34);
    *(&v45 - 6) = v35;
    *(&v45 - 5) = v19;
    *(&v45 - 4) = v36;
    *(&v45 - 3) = v18;
    *(&v45 - 2) = sub_1DEF5CDC4;
    *(&v45 - 1) = v37;
    sub_1DEE276F8();
    sub_1DEF8D888();

    swift_getWitnessTable();
    sub_1DEF8DA48();

    v38 = *(*v1 + 136);
    swift_beginAccess();
    v39 = *(v1 + v38);
    v40 = v1[3];
    v41 = swift_allocObject();
    v41[2] = v39;
    v41[3] = v1;
    v41[4] = v32;
    v58 = sub_1DEF5CDEC;
    v59 = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    v57 = &block_descriptor_51_0;
    v42 = _Block_copy(aBlock);

    v43 = v52;
    sub_1DEF8D6B8();
    v55 = MEMORY[0x1E69E7CC0];
    sub_1DEF5D72C(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v44 = v49;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v43, v44, v42);
    _Block_release(v42);
    (*(v51 + 8))(v44, v31);
    (*(v53 + 8))(v43, v50);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *sub_1DEF4F718()
{
  v1 = *v0;

  v2 = *(*v0 + 16);
  v3 = v1[10];
  v4 = sub_1DEF8DDC8();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  v5 = *(v0 + *(*v0 + 17));

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 18)));
  v6 = *(v0 + *(*v0 + 19));

  v7 = *(v0 + *(*v0 + 20));

  v8 = *(v0 + *(*v0 + 21));

  v9 = *(v0 + *(*v0 + 22));

  return v0;
}

uint64_t sub_1DEF4F85C()
{
  sub_1DEF4F718();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF4F910()
{
  v7 = *(v0 + *(*v0 + 152));
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  v5 = *(*v0 + 96);
  v6 = *(*v0 + 104);
  sub_1DEE276F8();
  sub_1DEF8D888();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  swift_getWitnessTable();
  sub_1DEE1B548(&qword_1ECDE2C38, &qword_1ECDE3C90, &unk_1DEF91590);
  v1 = sub_1DEF8DA38();

  return v1;
}

uint64_t sub_1DEF4FAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 72))(v19, a4, a6);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v8 = (*(v7 + 32))(v6, v7);
  v9 = *(v8 + 16);
  if (v9)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v9, 0);
    v10 = v18;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *(v18 + 16);
      v15 = *(v18 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_1DEEC7E08((v15 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v16 = v18 + 16 * v14;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v11 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v10;
}

uint64_t sub_1DEF4FC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEF5D620;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_96;
  v9 = _Block_copy(v11);

  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF4FD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *(*a1 + 80);
  v15 = *(*a1 + 96);
  type metadata accessor for NetworkSyncService.WeakDelegate();
  v6 = sub_1DEF5D62C(a2, a3);
  v7 = *(*a1 + 136);
  swift_beginAccess();
  v8 = *(a1 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DEF38430(0, v8[2] + 1, 1, v8);
    *(a1 + v7) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DEF38430((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = v6;
  v12[5] = &off_1F5A21060;
  *(a1 + v7) = v8;
  return swift_endAccess();
}

uint64_t sub_1DEF4FEB8()
{
  v1 = sub_1DEF8D698();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D6D8();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_1DEF5D570;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_85;
  v10 = _Block_copy(aBlock);

  sub_1DEF8D6B8();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1DEF5D72C(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_1DEF5016C(uint64_t a1)
{
  v6 = *(a1 + *(*a1 + 152));
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 104);
  sub_1DEE276F8();
  sub_1DEF8D888();

  swift_getWitnessTable();
  sub_1DEF8DA48();
}

uint64_t sub_1DEF502B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_1DEF8DDC8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-1] - v10;
  v12 = *(v2 + *(v5 + 152));
  LOBYTE(v18[0]) = 0;
  sub_1DEE276F8();
  sub_1DEF8D898();
  v13 = *(v7 - 8);
  result = (*(v13 + 48))(v11, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(*(v6 + 104) + 72))(v18, v7);
    (*(v13 + 8))(v11, v7);
    v15 = v19;
    v16 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v16 + 48))(a1, a2, v15, v16);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return result;
}

uint64_t sub_1DEF5048C(uint64_t a1, uint64_t (*a2)(), unsigned __int8 *a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v55 = a7;
  v56 = a8;
  v50 = a4;
  v47 = a2;
  v44 = a1;
  v12 = *v8;
  v52 = a5;
  v53 = v12;
  v54 = v12;
  v13 = type metadata accessor for DeviceDescriptor();
  v49 = *(v13 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v38 - v18;
  v41 = &v38 - v18;
  v20 = type metadata accessor for Message();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v39 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *a3;
  v45 = *v52;
  v23 = *a6;
  v46 = a6[1];
  v24 = v9[2];
  v51 = "/NetworkSyncService.swift";
  v52 = v24;
  v38 = type metadata accessor for Message;
  sub_1DEE280F8(v44, v39, type metadata accessor for Message);
  sub_1DEE17214(v47, v19, &qword_1ECDE4890, &qword_1DEF90990);
  v47 = type metadata accessor for DeviceDescriptor;
  sub_1DEE280F8(v50, v15, type metadata accessor for DeviceDescriptor);
  v25 = (*(v21 + 80) + 48) & ~*(v21 + 80);
  v26 = (v22 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v42 + 80) + v26 + 8) & ~*(v42 + 80);
  v28 = v27 + v17;
  v29 = (*(v49 + 80) + v27 + v17 + 1) & ~*(v49 + 80);
  v30 = v29 + v48;
  v31 = (v29 + v48) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v53;
  *(v32 + 16) = *(v53 + 80);
  *(v32 + 24) = *(v54 + 88);
  *(v32 + 40) = *(v33 + 104);
  sub_1DEE13A28(v39, v32 + v25, v38);
  *(v32 + v26) = v9;
  sub_1DEE1BA88(v41, v32 + v27, &qword_1ECDE4890, &qword_1DEF90990);
  *(v32 + v28) = v43;
  sub_1DEE13A28(v40, v32 + v29, v47);
  *(v32 + v30) = v45;
  v34 = v32 + v31;
  *(v34 + 8) = v23;
  *(v34 + 16) = v46;
  v35 = (v32 + ((v31 + 31) & 0xFFFFFFFFFFFFFFF8));
  v36 = v56;
  *v35 = v55;
  v35[1] = v36;

  sub_1DEE2C448(0xD000000000000022, v51 | 0x8000000000000000, v52, sub_1DEF5BCA4, v32, 0.0);
}

uint64_t sub_1DEF5088C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t *a7, int a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  LODWORD(v13) = a8;
  v65 = a7;
  v66 = a3;
  v62 = a2;
  v63 = a5;
  v64 = a4;
  v60 = *a4;
  v61 = a1;
  v15 = type metadata accessor for DeviceDescriptor();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v59 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Message();
  v55 = *(v18 - 8);
  v19 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v58 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v56 = a11;
  v57 = a12;
  v23 = a10;
  v24 = sub_1DEF8D508();
  __swift_project_value_buffer(v24, qword_1ECDF6010);
  sub_1DEE280F8(v66, v22, type metadata accessor for Message);
  v25 = sub_1DEF8D4D8();
  v26 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v54 = v13;
    v13 = v27;
    v28 = swift_slowAlloc();
    v53 = v17;
    v29 = v28;
    v67[0] = v28;
    *v13 = 136446210;
    v30 = Message.description.getter();
    v52 = v19;
    v31 = a6;
    v32 = v16;
    v34 = v33;
    sub_1DEE274C0(v22, type metadata accessor for Message);
    v35 = sub_1DEE12A5C(v30, v34, v67);
    v16 = v32;
    a6 = v31;
    v23 = a10;
    v19 = v52;

    *(v13 + 4) = v35;
    _os_log_impl(&dword_1DEE0F000, v25, v26, "Sending message with expected response: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    v36 = v29;
    v17 = v53;
    MEMORY[0x1E12CCD70](v36, -1, -1);
    v37 = v13;
    LOBYTE(v13) = v54;
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v22, type metadata accessor for Message);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v69[0] = a6 & 1;
  v68 = v13;
  *v67 = a9;
  v67[1] = v23;
  v39 = v58;
  sub_1DEE280F8(v66, v58, type metadata accessor for Message);
  v40 = v59;
  sub_1DEE280F8(v65, v59, type metadata accessor for DeviceDescriptor);
  v41 = (*(v55 + 80) + 56) & ~*(v55 + 80);
  v42 = (v19 + *(v16 + 80) + v41) & ~*(v16 + 80);
  v43 = (v17 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  v45 = v60;
  *(v44 + 16) = *(v60 + 80);
  *(v44 + 24) = *(v45 + 88);
  *(v44 + 40) = *(v45 + 104);
  *(v44 + 48) = v38;
  sub_1DEE13A28(v39, v44 + v41, type metadata accessor for Message);
  sub_1DEE13A28(v40, v44 + v42, type metadata accessor for DeviceDescriptor);
  v46 = (v44 + v43);
  v47 = v57;
  *v46 = v56;
  v46[1] = v47;
  v48 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
  v49 = v62;
  *v48 = v61;
  v48[1] = v49;

  sub_1DEF51494(v66, v63, v69, v65, &v68, v67, sub_1DEF5BE58, v44);
}

void sub_1DEF50D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v19 = type metadata accessor for Message();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D20, &unk_1DEF91630);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = v39 - v25;
  swift_beginAccess();
  if (*(a2 + 16))
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v27 = sub_1DEF8D508();
    __swift_project_value_buffer(v27, qword_1ECDF6010);
    sub_1DEE280F8(a3, v22, type metadata accessor for Message);
    v28 = sub_1DEF8D4D8();
    v29 = sub_1DEF8DC98();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136446210;
      v32 = Message.description.getter();
      v34 = v33;
      sub_1DEE274C0(v22, type metadata accessor for Message);
      v35 = sub_1DEE12A5C(v32, v34, &v42);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DEE0F000, v28, v29, "Completion handler already called for message with URL: %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12CCD70](v31, -1, -1);
      MEMORY[0x1E12CCD70](v30, -1, -1);
    }

    else
    {

      sub_1DEE274C0(v22, type metadata accessor for Message);
    }
  }

  else
  {
    v40 = a5;
    v41 = a8;
    v39[1] = a6;
    v36 = swift_beginAccess();
    v39[0] = a7;
    *(a2 + 16) = 1;
    MEMORY[0x1EEE9AC00](v36);
    v39[-6] = a9;
    v39[-5] = a10;
    v39[-4] = a11;
    v39[-3] = a12;
    v39[-2] = a4;
    swift_getAssociatedTypeWitness();
    type metadata accessor for IncomingNetworkMessage();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
    v37 = sub_1DEF8E808();
    type metadata accessor for IncomingSyncServiceMessage();
    sub_1DEF51280(sub_1DEF5CDF8, v37, v26);
    v38 = v40(v26);
    (v39[0])(v38);
    sub_1DEE171B4(v26, &qword_1ECDE3D20, &unk_1DEF91630);
  }
}

uint64_t sub_1DEF51108@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  sub_1DEE280F8(a1, a3, type metadata accessor for Message);
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for IncomingNetworkMessage();
  sub_1DEE17214(a1 + *(v10 + 28), v9, &qword_1ECDE4890, &qword_1DEF90990);
  v12 = *a2;
  v11 = a2[1];
  v13 = type metadata accessor for IncomingSyncServiceMessage();
  v14 = *(v13 + 20);
  v15 = sub_1DEF8D1E8();
  (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);

  result = sub_1DEED4690(v9, a3 + v14);
  v17 = (a3 + *(v13 + 24));
  *v17 = v12;
  v17[1] = v11;
  return result;
}

uint64_t sub_1DEF51280@<X0>(void (*a1)(char *)@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a2[3] - 8) + 32))(a3, v16, a2[3]);
  }

  else
  {
    (*(v7 + 32))(v10, v16, v6);
    a1(v10);
    (*(v7 + 8))(v10, v6);
    v19 = a2[3];
  }

  v20 = a2[4];
  sub_1DEF8E808();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DEF51494(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5, double *a6, char *a7, uint64_t (*a8)(uint64_t *a1, unint64_t a2, unint64_t a3))
{
  v9 = v8;
  v308 = a7;
  v309 = a8;
  v296 = a2;
  v301 = a1;
  v284 = *v9;
  v14 = v284;
  v15 = *(v284 + 80);
  v265 = sub_1DEF8DDC8();
  v262 = *(v265 - 8);
  v16 = *(v262 + 64);
  MEMORY[0x1EEE9AC00](v265);
  v263 = v250 - v17;
  v306 = v15;
  v275 = *(v15 - 8);
  v18 = *(v275 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v274 = v250 - v20;
  v278 = sub_1DEF8D378();
  v273 = *(v278 - 8);
  v21 = *(v273 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v271 = v250 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v272 = v250 - v24;
  v25 = *(v14 + 88);
  v310 = *(v14 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v267 = sub_1DEF8DDC8();
  v266 = *(v267 - 8);
  v27 = *(v266 + 64);
  MEMORY[0x1EEE9AC00](v267);
  v283 = v250 - v28;
  v297 = *(AssociatedTypeWitness - 8);
  v29 = *(v297 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v260 = v250 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v270 = v250 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v285 = v250 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v261 = v250 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v268 = v250 - v39;
  v277 = v40;
  MEMORY[0x1EEE9AC00](v41);
  v290 = v250 - v42;
  v43 = type metadata accessor for DeviceDescriptor();
  v281 = *(v43 - 8);
  v44 = *(v281 + 64);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v282 = v45;
  v295 = v250 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v280 = *(v46 - 8);
  v289 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v300 = v250 - v47;
  v48 = type metadata accessor for Message();
  v279 = *(v48 - 8);
  v49 = *(v279 + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v269 = v250 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v288 = v50;
  MEMORY[0x1EEE9AC00](v51);
  v299 = v250 - v52;
  v311 = v25;
  v53 = *(v25 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v298 = v250 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = v56;
  MEMORY[0x1EEE9AC00](v57);
  v59 = v250 - v58;
  v293 = AssociatedTypeWitness;
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v60 = sub_1DEF8E808();
  v304 = *(v60 - 8);
  v305 = v60;
  v61 = *(v304 + 8);
  MEMORY[0x1EEE9AC00](v60);
  v303 = (v250 - v62);
  v63 = sub_1DEF8D788();
  v64 = *(v63 - 8);
  v65 = *(v64 + 64);
  v66 = MEMORY[0x1EEE9AC00](v63);
  v68 = (v250 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v302) = *a3;
  v69 = *a5;
  v70 = *a6;
  v292 = *(a6 + 1);
  v71 = *(v9 + 2);
  *v68 = v71;
  (*(v64 + 104))(v68, *MEMORY[0x1E69E8020], v63, v66);
  v72 = v71;
  LOBYTE(v71) = sub_1DEF8D7B8();
  (*(v64 + 8))(v68, v63);
  if ((v71 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v276 = v72;
  v73 = (v9 + *(*v9 + 144));
  v74 = v73[3];
  v75 = v73[4];
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v76 = *a4;
  v77 = a4[1];
  v307 = a4;
  if ((*(v75 + 8))(v76, v77, v74, v75))
  {
    v72 = v308;
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v78 = sub_1DEF8D508();
      __swift_project_value_buffer(v78, qword_1ECDF6010);
      v79 = sub_1DEF8D4D8();
      v80 = sub_1DEF8DCB8();
      v81 = os_log_type_enabled(v79, v80);
      v83 = v303;
      v82 = v304;
      if (v81)
      {
        v84 = swift_slowAlloc();
        *v84 = 0;
        _os_log_impl(&dword_1DEE0F000, v79, v80, "Cannot send messages to remote device ID not in allow list", v84, 2u);
        MEMORY[0x1E12CCD70](v84, -1, -1);
      }

      sub_1DEF5BF8C();
      v85 = swift_allocError();
      *v86 = 2;
      *v83 = v85;
      v87 = v305;
      swift_storeEnumTagMultiPayload();
      v72(v83);
      return (*(v82 + 1))(v83, v87);
    }

LABEL_40:
    swift_once();
    goto LABEL_4;
  }

  v258 = v69;
  if (v302)
  {
    v89 = v307;
    v257 = v307[4] > 0xF;
  }

  else
  {
    v257 = 0;
    v89 = v307;
  }

  v90 = v53;
  LOBYTE(v313) = *(v89 + 48) == 4;

  sub_1DEF4DD2C(&v313, v59);
  v91 = v311;
  (*(v310 + 72))(&v313, v311);
  v92 = v315;
  v93 = v316;
  __swift_project_boxed_opaque_existential_1(&v313, v315);
  v94 = (*(v93 + 32))(v92, v93);
  v95 = *(v94 + 16);
  v286 = v59;
  v259 = v90;
  v294 = v77;
  v291 = v76;
  if (v95)
  {
    v312 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v95, 0);
    v96 = v312;
    v97 = (v94 + 40);
    do
    {
      v98 = *(v97 - 1);
      v99 = *v97;
      v312 = v96;
      v101 = *(v96 + 16);
      v100 = *(v96 + 24);

      if (v101 >= v100 >> 1)
      {
        sub_1DEEC7E08((v100 > 1), v101 + 1, 1);
        v96 = v312;
      }

      *(v96 + 16) = v101 + 1;
      v102 = v96 + 16 * v101;
      *(v102 + 32) = v98;
      *(v102 + 40) = v99;
      v97 += 2;
      --v95;
    }

    while (v95);

    v91 = v311;
    v59 = v286;
    v90 = v259;
    v77 = v294;
    v76 = v291;
  }

  else
  {

    v96 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(&v313);
  v103 = sub_1DEEA3AD8(v96);

  v104 = sub_1DEF01E3C(v76, v77, v103);

  if (v104)
  {
    v105 = *(v90 + 16);
    v255 = v90 + 16;
    v254 = v105;
    v105(v298, v59, v91);
    v303 = type metadata accessor for Message;
    sub_1DEE280F8(v301, v299, type metadata accessor for Message);
    sub_1DEE17214(v296, v300, &qword_1ECDE4890, &qword_1DEF90990);
    v304 = type metadata accessor for DeviceDescriptor;
    sub_1DEE280F8(v307, v295, type metadata accessor for DeviceDescriptor);
    v106 = *(v90 + 80);
    v107 = (v106 + 72) & ~v106;
    v108 = *(v279 + 80);
    v279 = ~v108;
    v109 = (v287 + v108 + v107) & ~v108;
    v256 = v288 + 7;
    v110 = (v288 + 7 + v109) & 0xFFFFFFFFFFFFFFF8;
    v111 = *(v280 + 80);
    v112 = (v111 + v110 + 16) & ~v111;
    v280 = v112 + v289;
    v113 = (*(v281 + 80) + v112 + v289 + 1) & ~*(v281 + 80);
    v282 += v113;
    v281 = v108;
    v253 = v106;
    v251 = v111;
    v250[1] = v108 | v106 | v111;
    v114 = v9;
    v115 = swift_allocObject();
    *(v115 + 2) = v306;
    *(v115 + 3) = v91;
    v305 = *(v284 + 96);
    v117 = v309;
    v116 = v310;
    *(v115 + 4) = v305;
    *(v115 + 5) = v116;
    v118 = v308;
    *(v115 + 6) = v114;
    *(v115 + 7) = v118;
    *(v115 + 8) = v117;
    v119 = v90;
    v120 = v116;
    v121 = *(v119 + 32);
    v284 = v119 + 32;
    v252 = v121;
    v121(&v115[v107], v298, v91);
    sub_1DEE13A28(v299, &v115[v109], v303);
    v122 = &v115[v110];
    v123 = v291;
    v124 = v294;
    *v122 = v291;
    *(v122 + 1) = v124;
    v125 = &v115[v112];
    v126 = v294;
    sub_1DEE1BA88(v300, v125, &qword_1ECDE4890, &qword_1DEF90990);
    v115[v280] = v302;
    sub_1DEE13A28(v295, &v115[v113], v304);
    v308 = v115;
    v115[v282] = v258;
    v127 = v114;
    v128 = v286;
    v129 = *(v120 + 120);

    v130 = v91;

    v131 = v283;
    v129(v123, v126, v91, v120);
    v132 = v297;
    v133 = v293;
    if ((*(v297 + 48))(v131, 1, v293) == 1)
    {
      (*(v266 + 8))(v131, v267);
      v134 = *(v120 + 64);
      (v134)(&v313, v130, v120);
      if (v313 == 1)
      {
        v135 = v270;
        (*(v120 + 104))(v291, v126, v130, v120);

        v136 = v260;
        (*(v132 + 16))(v260, v135, v133);
        v137 = (*(v132 + 80) + 80) & ~*(v132 + 80);
        v138 = swift_allocObject();
        v139 = v305;
        *(v138 + 2) = v306;
        *(v138 + 3) = v130;
        *(v138 + 4) = v139;
        *(v138 + 5) = v120;
        v140 = v132;
        v309 = sub_1DEF5BFE0;
        v141 = v308;
        *(v138 + 6) = sub_1DEF5BFE0;
        *(v138 + 7) = v141;
        v138[8] = v70;
        *(v138 + 9) = v292;
        (*(v140 + 32))(v138 + v137, v136, v133);
        type metadata accessor for Watchdog();
        v142 = swift_allocObject();
        *(v142 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
        v143 = swift_allocObject();
        v144 = v130;
        *(v143 + 16) = 0;
        v145 = (v143 + 16);
        *(v142 + 24) = v143;
        *(v142 + 32) = 0;
        MEMORY[0x1EEE9AC00](v143);
        MEMORY[0x1EEE9AC00](v146);

        os_unfair_lock_lock(v145);
        sub_1DEE3DEF0(v147);
        os_unfair_lock_unlock(v145);

        v148 = v270;
        sub_1DEF587E0(v142, v128, v301, v296, v257, v270, v258, v292, v70, v309, v141, v306, v144, v305, v310, &unk_1F5A21290, sub_1DEF5D7FC);

        (*(v297 + 8))(v148, v293);
        return (*(v259 + 8))(v128, v144);
      }

      else
      {
        v304 = v134;
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v178 = sub_1DEF8D508();
        __swift_project_value_buffer(v178, qword_1ECDF6010);

        v179 = sub_1DEF8D4D8();
        v180 = sub_1DEF8DCB8();

        v181 = os_log_type_enabled(v179, v180);
        v182 = v275;
        v183 = v265;
        v184 = v262;
        if (v181)
        {
          v185 = v262;
          v186 = v180;
          v187 = swift_slowAlloc();
          v313 = swift_slowAlloc();
          v188 = v313;
          *v187 = 136446210;

          v189 = sub_1DEE12A5C(v291, v126, &v313);

          *(v187 + 4) = v189;
          v128 = v286;
          v190 = v186;
          v184 = v185;
          v183 = v265;
          _os_log_impl(&dword_1DEE0F000, v179, v190, "Using browser to find %{public}s", v187, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v188);
          v191 = v188;
          v182 = v275;
          MEMORY[0x1E12CCD70](v191, -1, -1);
          MEMORY[0x1E12CCD70](v187, -1, -1);
        }

        v192 = v263;
        v193 = v272;
        sub_1DEF8D348();
        (*(v184 + 16))(v192, v127 + *(*v127 + 128), v183);
        v194 = v306;
        v195 = (*(v182 + 48))(v192, 1, v306);
        v309 = v127;
        if (v195 == 1)
        {
          (*(v184 + 8))(v192, v183);
          v313 = 0;
          v314 = 0xE000000000000000;
          sub_1DEF8DF28();

          v313 = 0xD000000000000028;
          v314 = 0x80000001DEF9E0B0;
          (v304)(&v312, v130, v310);
          if (v312)
          {
            v249 = 0x73756E696D726574;
          }

          else
          {
            v249 = 0x647261646E617473;
          }

          MEMORY[0x1E12CB180](v249, 0xE800000000000000);

          result = sub_1DEF8E0F8();
          __break(1u);
        }

        else
        {
          v196 = v253;
          v197 = ~v253;
          v198 = v251;
          v302 = ~v251;
          (*(v182 + 32))(v274, v192, v194);
          v199 = v307[21];
          v304 = v307[20];
          v307 = v199;
          v200 = v273;
          (*(v273 + 16))(v271, v193, v278);
          v254(v298, v128, v130);
          v303 = type metadata accessor for Message;
          sub_1DEE280F8(v301, v299, type metadata accessor for Message);
          sub_1DEE17214(v296, v300, &qword_1ECDE4890, &qword_1DEF90990);
          v201 = (*(v200 + 80) + 48) & ~*(v200 + 80);
          v202 = (v264 + v201 + 7) & 0xFFFFFFFFFFFFFFF8;
          v203 = v130;
          v204 = (v202 + 23) & 0xFFFFFFFFFFFFFFF8;
          v205 = v196 + v204 + 16;
          v206 = v203;
          v207 = v205 & v197;
          v208 = (v287 + v207 + 7) & 0xFFFFFFFFFFFFFFF8;
          v209 = (v208 + 23) & 0xFFFFFFFFFFFFFFF8;
          v297 = (v281 + v209 + 8) & v279;
          v301 = (v288 + v198 + v297) & v302;
          v302 = v301 + v289;
          v210 = swift_allocObject();
          *(v210 + 2) = v194;
          *(v210 + 3) = v206;
          v211 = v305;
          *(v210 + 4) = v305;
          v212 = v211;
          *(v210 + 5) = v310;
          (*(v200 + 32))(&v210[v201], v271, v278);
          v213 = &v210[v202];
          *v213 = v70;
          *(v213 + 1) = v292;
          v214 = &v210[v204];
          v215 = v291;
          v216 = v294;
          *v214 = v291;
          *(v214 + 1) = v216;
          v252(&v210[v207], v298, v206);
          v217 = &v210[v208];
          v218 = v308;
          v219 = v309;
          *v217 = sub_1DEF5BFE0;
          v217[1] = v218;
          *&v210[v209] = v219;
          sub_1DEE13A28(v299, &v210[v297], v303);
          sub_1DEE1BA88(v300, &v210[v301], &qword_1ECDE4890, &qword_1DEF90990);
          v220 = &v210[v302];
          *v220 = v257;
          v220[1] = v258;
          v221 = v212;
          v222 = *(v212 + 16);

          v223 = v215;
          v224 = v306;
          v225 = v274;
          v222(v223, v216, v304, v307, sub_1DEF5C1F0, v210, v306, v221, v70);

          (*(v275 + 8))(v225, v224);
          (*(v273 + 8))(v272, v278);
          return (*(v259 + 8))(v286, v206);
        }
      }
    }

    else
    {
      v156 = *(v132 + 32);
      v157 = v290;
      v307 = (v132 + 32);
      v304 = v156;
      v156();
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v158 = sub_1DEF8D508();
      __swift_project_value_buffer(v158, qword_1ECDF6010);
      v159 = *(v132 + 16);
      v160 = v268;
      v159(v268, v157, v133);

      v161 = v133;
      v162 = sub_1DEF8D4D8();
      v163 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v162, v163))
      {
        v164 = swift_slowAlloc();
        LODWORD(v302) = v163;
        v165 = v164;
        v303 = swift_slowAlloc();
        v313 = v303;
        *v165 = 136446466;
        *(v165 + 4) = sub_1DEE12A5C(v291, v126, &v313);
        *(v165 + 12) = 2082;
        v159(v261, v160, v161);
        v166 = sub_1DEF8D988();
        v168 = v167;
        v309 = *(v132 + 8);
        (v309)(v160, v161);
        v169 = sub_1DEE12A5C(v166, v168, &v313);

        *(v165 + 14) = v169;
        _os_log_impl(&dword_1DEE0F000, v162, v302, "Connection for %{public}s already exists; sending message immediately: %{public}s", v165, 0x16u);
        v170 = v303;
        swift_arrayDestroy();
        v171 = v170;
        v157 = v290;
        MEMORY[0x1E12CCD70](v171, -1, -1);
        MEMORY[0x1E12CCD70](v165, -1, -1);
      }

      else
      {

        v309 = *(v132 + 8);
        (v309)(v160, v161);
      }

      v226 = v161;
      v227 = v269;
      sub_1DEE280F8(v301, v269, type metadata accessor for Message);
      v159(v285, v157, v226);
      v228 = (v281 + 48) & v279;
      v229 = (v256 + v228) & 0xFFFFFFFFFFFFFFF8;
      v230 = (v229 + 23) & 0xFFFFFFFFFFFFFFF8;
      v231 = (v230 + 23) & 0xFFFFFFFFFFFFFFF8;
      v232 = (v231 + *(v297 + 80) + 16) & ~*(v297 + 80);
      v233 = swift_allocObject();
      v235 = v310;
      v234 = v311;
      v233[2] = v306;
      v233[3] = v234;
      v233[4] = v305;
      v233[5] = v235;
      sub_1DEE13A28(v227, v233 + v228, type metadata accessor for Message);
      v236 = (v233 + v229);
      v237 = v294;
      *v236 = v291;
      v236[1] = v237;
      v238 = (v233 + v230);
      v303 = sub_1DEF5BFE0;
      v239 = v308;
      *v238 = sub_1DEF5BFE0;
      v238[1] = v239;
      v240 = (v233 + v231);
      *v240 = v70;
      *(v240 + 1) = v292;
      (v304)(v233 + v232, v285, v226);
      type metadata accessor for Watchdog();
      v241 = swift_allocObject();
      *(v241 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
      v242 = swift_allocObject();
      v243 = v290;
      *(v242 + 16) = 0;
      v244 = (v242 + 16);
      *(v241 + 24) = v242;
      *(v241 + 32) = 0;
      MEMORY[0x1EEE9AC00](v242);
      MEMORY[0x1EEE9AC00](v245);

      os_unfair_lock_lock(v244);
      sub_1DEE3DEF0(v246);
      os_unfair_lock_unlock(v244);

      v247 = v311;
      v248 = v286;
      sub_1DEF587E0(v241, v286, v301, v296, v257, v243, v258, v292, v70, v303, v239, v306, v311, v305, v235, &unk_1F5A21268, sub_1DEF5C580);

      (v309)(v243, v293);
      return (*(v259 + 8))(v248, v247);
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v149 = sub_1DEF8D508();
    __swift_project_value_buffer(v149, qword_1ECDF6010);

    v150 = sub_1DEF8D4D8();
    v151 = sub_1DEF8DC98();

    if (os_log_type_enabled(v150, v151))
    {
      v152 = v76;
      v153 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v313 = v154;
      *v153 = 136446210;
      v155 = sub_1DEE12A5C(v152, v77, &v313);

      *(v153 + 4) = v155;
      _os_log_impl(&dword_1DEE0F000, v150, v151, "Unable to send message to device: %{public}s; no longer associated with account", v153, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v154);
      MEMORY[0x1E12CCD70](v154, -1, -1);
      MEMORY[0x1E12CCD70](v153, -1, -1);
    }

    else
    {
    }

    v172 = v308;
    v174 = v304;
    v173 = v305;
    v175 = v303;
    sub_1DEF4F0B0();
    sub_1DEF5BF8C();
    v176 = swift_allocError();
    *v177 = 1;
    *v175 = v176;
    swift_storeEnumTagMultiPayload();
    v172(v175);
    (*(v174 + 1))(v175, v173);
    return (*(v90 + 8))(v59, v91);
  }

  return result;
}

uint64_t sub_1DEF53474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 **a7, unsigned __int8 a8, uint64_t a9, uint64_t a10)
{
  v50 = a5;
  v51 = a7;
  LODWORD(v11) = a6;
  v53 = a4;
  v54 = a1;
  v55 = a2;
  v13 = type metadata accessor for Message();
  v49 = *(v13 - 8);
  v14 = *(v49 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v18 = a10;
  v48 = a9;
  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6010);
  sub_1DEE280F8(a3, v17, type metadata accessor for Message);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v46 = v11;
    v11 = v22;
    v23 = swift_slowAlloc();
    v45 = a10;
    v24 = v14;
    v25 = a8;
    v26 = v23;
    v56 = v23;
    *v11 = 136446210;
    v27 = Message.description.getter();
    v47 = a3;
    v29 = v28;
    sub_1DEE274C0(v17, type metadata accessor for Message);
    v30 = sub_1DEE12A5C(v27, v29, &v56);
    a3 = v47;

    *(v11 + 4) = v30;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Sending message with URL: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v31 = v26;
    a8 = v25;
    v14 = v24;
    v18 = v45;
    MEMORY[0x1E12CCD70](v31, -1, -1);
    v32 = v11;
    LOBYTE(v11) = v46;
    MEMORY[0x1E12CCD70](v32, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v17, type metadata accessor for Message);
  }

  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  v58 = v11 & 1;
  v57 = a8;
  v34 = v52;
  sub_1DEE280F8(a3, v52, type metadata accessor for Message);
  v35 = (*(v49 + 80) + 24) & ~*(v49 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = a3;
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  sub_1DEE13A28(v34, v38 + v35, type metadata accessor for Message);
  v39 = (v38 + v36);
  v40 = v48;
  *v39 = v48;
  v39[1] = v18;
  v41 = (v38 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8));
  v42 = v55;
  *v41 = v54;
  v41[1] = v42;

  sub_1DEE2CB00(v40);

  sub_1DEF53ABC(v37, v50, &v58, v51, &v57, sub_1DEF5CFA4, v38);
}

void sub_1DEF53824(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void), uint64_t a6, void (*a7)(uint64_t))
{
  v13 = type metadata accessor for Message();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a3 + 16))
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6010);
    sub_1DEE280F8(a4, v16, type metadata accessor for Message);
    v18 = sub_1DEF8D4D8();
    v19 = sub_1DEF8DC98();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27[0] = v21;
      *v20 = 136446210;
      v22 = Message.description.getter();
      v24 = v23;
      sub_1DEE274C0(v16, type metadata accessor for Message);
      v25 = sub_1DEE12A5C(v22, v24, v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_1DEE0F000, v18, v19, "Completion handler already called for message with URL: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12CCD70](v21, -1, -1);
      MEMORY[0x1E12CCD70](v20, -1, -1);
    }

    else
    {

      sub_1DEE274C0(v16, type metadata accessor for Message);
    }
  }

  else
  {
    v26 = swift_beginAccess();
    *(a3 + 16) = 1;
    if (a5)
    {

      a5(a1, a2 & 1);
      v26 = sub_1DEE3DBD0(a5);
    }

    a7(v26);
  }
}

void sub_1DEF53ABC(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 **a4, unsigned __int8 *a5, char *a6, unsigned __int8 **a7)
{
  v226 = a7;
  v229 = a5;
  v230 = a6;
  v218 = a1;
  v219 = a2;
  v214 = *v7;
  v10 = v214;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v201 = *(v11 - 8);
  v202 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v209 = v185 - v12;
  v13 = type metadata accessor for Message();
  v199 = *(v13 - 8);
  v14 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v200 = v15;
  v207 = v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v10[10];
  v198 = sub_1DEF8DDC8();
  v196 = *(v198 - 8);
  v17 = *(v196 + 64);
  v18 = MEMORY[0x1EEE9AC00](v198);
  v197 = v185 - v19;
  v224 = v16;
  v210 = *(v16 - 8);
  v20 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v208 = v185 - v21;
  v22 = v10[13];
  v23 = v10[11];
  v227 = v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v205 = sub_1DEF8DDC8();
  v204 = *(v205 - 8);
  v25 = *(v204 + 64);
  v26 = MEMORY[0x1EEE9AC00](v205);
  v213 = v185 - v27;
  v222 = AssociatedTypeWitness;
  v221 = *(AssociatedTypeWitness - 8);
  v28 = *(v221 + 8);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v195 = v185 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v216 = v185 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v206 = v185 - v34;
  v211 = v35;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v215 = v185 - v37;
  v228 = v23;
  v38 = *(v23 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x1EEE9AC00](v36);
  v225 = v185 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v185 - v41;
  v43 = sub_1DEF8D788();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = (v185 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *a3;
  v49 = v7;
  v217 = *v229;
  v50 = v7[2];
  *v47 = v50;
  (*(v44 + 104))(v47, *MEMORY[0x1E69E8020], v43);
  v51 = v50;
  LOBYTE(v50) = sub_1DEF8D7B8();
  (*(v44 + 8))(v47, v43);
  if ((v50 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  v52 = (v49 + *(*v49 + 144));
  v53 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v52[3]);
  v54 = *a4;
  v55 = a4[1];
  v223 = a4;
  v56 = *(v53 + 8);
  v229 = v54;
  if (v56())
  {
    a4 = v230;
    if (qword_1ECDE2E50 == -1)
    {
LABEL_4:
      v57 = sub_1DEF8D508();
      __swift_project_value_buffer(v57, qword_1ECDF6010);
      v58 = sub_1DEF8D4D8();
      v59 = sub_1DEF8DCB8();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_1DEE0F000, v58, v59, "Cannot send messages to remote device ID not in allow list", v60, 2u);
        MEMORY[0x1E12CCD70](v60, -1, -1);
      }

      if (a4)
      {
        sub_1DEF5BF8C();
        v61 = swift_allocError();
        *v62 = 2;
        (a4)(v61, 1);
      }

      return;
    }

LABEL_44:
    swift_once();
    goto LABEL_4;
  }

  v212 = v38;
  if (v48)
  {
    v63 = v223;
    v193 = v223[4] > 0xFuLL;
    v64 = v228;
  }

  else
  {
    v193 = 0;
    v64 = v228;
    v63 = v223;
  }

  v65 = v42;
  LOBYTE(v232) = *(v63 + 48) == 4;
  sub_1DEF4DD2C(&v232, v42);
  (*(v227 + 72))(&v232, v64);
  v66 = v234;
  v67 = v235;
  __swift_project_boxed_opaque_existential_1(&v232, v234);
  v68 = (*(v67 + 32))(v66, v67);
  v69 = *(v68 + 16);
  v220 = v42;
  v194 = v49;
  v203 = v55;
  if (v69)
  {
    v231 = MEMORY[0x1E69E7CC0];
    sub_1DEEC7E08(0, v69, 0);
    v70 = v231;
    v71 = (v68 + 40);
    do
    {
      v72 = *(v71 - 1);
      v73 = *v71;
      v231 = v70;
      v74 = *(v70 + 16);
      v75 = *(v70 + 24);

      if (v74 >= v75 >> 1)
      {
        sub_1DEEC7E08((v75 > 1), v74 + 1, 1);
        v70 = v231;
      }

      *(v70 + 16) = v74 + 1;
      v76 = v70 + 16 * v74;
      *(v76 + 32) = v72;
      *(v76 + 40) = v73;
      v71 += 2;
      --v69;
    }

    while (v69);

    v77 = v228;
    v65 = v220;
    v49 = v194;
    v55 = v203;
  }

  else
  {
    v77 = v64;

    v70 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(&v232);
  v78 = sub_1DEEA3AD8(v70);

  v79 = v229;
  v80 = sub_1DEF01E3C(v229, v55, v78);

  v81 = v212;
  v82 = v230;
  if (v80)
  {
    v83 = *(v212 + 16);
    v187 = v212 + 16;
    v186 = v83;
    v83(v225, v65, v77);
    v84 = *(v81 + 80);
    v85 = (v84 + 72) & ~v84;
    v189 = v84;
    v188 = v39 + 7;
    v190 = v84 | 7;
    v86 = swift_allocObject();
    v86[2] = v224;
    v86[3] = v77;
    v192 = v214[12];
    v87 = v227;
    v86[4] = v192;
    v86[5] = v87;
    v86[6] = v49;
    v86[7] = v82;
    v88 = v225;
    v86[8] = v226;
    v191 = *(v81 + 32);
    v185[1] = v81 + 32;
    v191(v86 + v85, v88, v77);
    v214 = v86;
    v89 = (v86 + ((v39 + 7 + v85) & 0xFFFFFFFFFFFFFFF8));
    v90 = v220;
    v91 = v229;
    *v89 = v229;
    v89[1] = v55;
    v92 = v55;
    v93 = *(v87 + 120);

    sub_1DEE2CB00(v82);
    v94 = v213;
    v93(v91, v92, v77, v87);
    v95 = v221;
    v96 = v222;
    if ((*(v221 + 6))(v94, 1, v222) == 1)
    {
      (*(v204 + 8))(v94, v205);
      v97 = *(v87 + 64);
      v97(&v232, v77, v87);
      v98 = v216;
      if (v232 == 1)
      {
        (*(v87 + 104))(v229, v203, v77, v87);
        LOBYTE(v232) = v217;
        v99 = v195;
        (*(v95 + 2))(v195, v98, v96);
        v100 = (*(v95 + 80) + 64) & ~*(v95 + 80);
        v101 = v95;
        v102 = swift_allocObject();
        *(v102 + 2) = v224;
        *(v102 + 3) = v77;
        *(v102 + 4) = v192;
        *(v102 + 5) = v87;
        v103 = v214;
        *(v102 + 6) = sub_1DEF5D068;
        *(v102 + 7) = v103;
        (*(v101 + 4))(&v102[v100], v99, v96);
        v104 = v90;
        v105 = *(v87 + 128);

        v105(v218, v219, v193, v98, &v232, sub_1DEF5D820, v102, v77, v87);

        (*(v101 + 1))(v98, v96);
        (*(v212 + 8))(v104, v77);
      }

      else
      {
        v222 = v97;
        v138 = v203;
        if (qword_1ECDE2E50 != -1)
        {
          swift_once();
        }

        v139 = sub_1DEF8D508();
        __swift_project_value_buffer(v139, qword_1ECDF6010);

        v140 = sub_1DEF8D4D8();
        v141 = sub_1DEF8DCB8();

        v142 = os_log_type_enabled(v140, v141);
        v143 = v229;
        if (v142)
        {
          v144 = swift_slowAlloc();
          v145 = swift_slowAlloc();
          v232 = v145;
          *v144 = 136446210;
          *(v144 + 4) = sub_1DEE12A5C(v143, v138, &v232);
          _os_log_impl(&dword_1DEE0F000, v140, v141, "Using browser to find %{public}s", v144, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v145);
          MEMORY[0x1E12CCD70](v145, -1, -1);
          MEMORY[0x1E12CCD70](v144, -1, -1);
        }

        v146 = v197;
        v147 = v196;
        v148 = v198;
        (*(v196 + 16))(v197, v194 + *(*v194 + 128), v198);
        v149 = v210;
        v150 = v224;
        if ((*(v210 + 48))(v146, 1, v224) == 1)
        {
          (*(v147 + 8))(v146, v148);
          v232 = 0;
          v233 = 0xE000000000000000;
          sub_1DEF8DF28();

          v232 = 0xD000000000000028;
          v233 = 0x80000001DEF9E0B0;
          v222(&v231, v77, v227);
          if (v231)
          {
            v184 = 0x73756E696D726574;
          }

          else
          {
            v184 = 0x647261646E617473;
          }

          MEMORY[0x1E12CB180](v184, 0xE800000000000000);

          sub_1DEF8E0F8();
          __break(1u);
        }

        else
        {
          v151 = v189;
          (*(v149 + 32))(v208, v146, v150);
          v152 = v223[21];
          v222 = v223[20];
          v223 = v152;
          v186(v225, v220, v77);
          v221 = type metadata accessor for Message;
          sub_1DEE280F8(v218, v207, type metadata accessor for Message);
          sub_1DEE17214(v219, v209, &qword_1ECDE4890, &qword_1DEF90990);
          v153 = (v151 + 64) & ~v151;
          v154 = (v188 + v153) & 0xFFFFFFFFFFFFFFF8;
          v155 = (v154 + *(v199 + 80) + 16) & ~*(v199 + 80);
          v156 = (v200 + *(v201 + 80) + v155) & ~*(v201 + 80);
          v157 = v156 + v202;
          v158 = v150;
          v159 = (v156 + v202 + 9) & 0xFFFFFFFFFFFFFFF8;
          v160 = swift_allocObject();
          v160[2] = v158;
          v160[3] = v77;
          v161 = v77;
          v162 = v192;
          v163 = v227;
          v160[4] = v192;
          v160[5] = v163;
          v164 = v203;
          v160[6] = v229;
          v160[7] = v164;
          v191(v160 + v153, v225, v161);
          v165 = (v160 + v154);
          v166 = v230;
          v167 = v226;
          *v165 = v230;
          v165[1] = v167;
          sub_1DEE13A28(v207, v160 + v155, v221);
          sub_1DEE1BA88(v209, v160 + v156, &qword_1ECDE4890, &qword_1DEF90990);
          v168 = v160 + v157;
          *v168 = v193;
          v168[1] = v217;
          v169 = (v160 + v159);
          v170 = v214;
          *v169 = sub_1DEF5D068;
          v169[1] = v170;
          v171 = *(v162 + 16);

          sub_1DEE2CB00(v166);

          v172 = v164;
          v173 = v208;
          v174 = v224;
          v171(v229, v172, v222, v223, sub_1DEF5D100, v160, v224, v162, 30.0);

          (*(v210 + 8))(v173, v174);
          (*(v212 + 8))(v220, v228);
        }
      }
    }

    else
    {
      v116 = *(v95 + 4);
      v117 = v215;
      v230 = (v95 + 32);
      v226 = v116;
      (v116)(v215, v94, v96);
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v118 = sub_1DEF8D508();
      __swift_project_value_buffer(v118, qword_1ECDF6010);
      v119 = *(v95 + 2);
      v120 = v206;
      (v119)(v206, v117, v96);
      v121 = v203;

      v122 = v95;
      v123 = sub_1DEF8D4D8();
      v124 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v123, v124))
      {
        v125 = v122;
        v126 = swift_slowAlloc();
        v127 = swift_slowAlloc();
        v225 = v119;
        v128 = v127;
        v232 = v127;
        *v126 = 136446466;
        *(v126 + 4) = sub_1DEE12A5C(v229, v121, &v232);
        *(v126 + 12) = 2082;
        v129 = v216;
        (v225)(v216, v120, v96);
        v130 = sub_1DEF8D988();
        v132 = v131;
        v229 = *(v125 + 1);
        (v229)(v120, v222);
        v133 = sub_1DEE12A5C(v130, v132, &v232);

        *(v126 + 14) = v133;
        v96 = v222;
        _os_log_impl(&dword_1DEE0F000, v123, v124, "Connection for %{public}s already exists; sending message immediately: %{public}s", v126, 0x16u);
        swift_arrayDestroy();
        v134 = v128;
        v119 = v225;
        MEMORY[0x1E12CCD70](v134, -1, -1);
        MEMORY[0x1E12CCD70](v126, -1, -1);

        v135 = v221;
      }

      else
      {

        v229 = *(v122 + 1);
        (v229)(v120, v96);
        v129 = v216;
        v135 = v122;
      }

      LOBYTE(v232) = v217;
      v175 = v215;
      (v119)(v129, v215, v96);
      v176 = (*(v135 + 80) + 64) & ~*(v135 + 80);
      v177 = swift_allocObject();
      v178 = v96;
      v180 = v227;
      v179 = v228;
      v177[2] = v224;
      v177[3] = v179;
      v177[4] = v192;
      v177[5] = v180;
      v181 = v214;
      v177[6] = sub_1DEF5D068;
      v177[7] = v181;
      (v226)(v177 + v176, v129, v178);
      v182 = *(v180 + 128);

      v183 = v220;
      v182(v218, v219, v193, v175, &v232, sub_1DEF5D820, v177, v179, v180);

      (v229)(v175, v178);
      (*(v212 + 8))(v183, v179);
    }
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v106 = sub_1DEF8D508();
    __swift_project_value_buffer(v106, qword_1ECDF6010);

    v107 = sub_1DEF8D4D8();
    v108 = sub_1DEF8DC98();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = v79;
      v110 = v55;
      v111 = swift_slowAlloc();
      v112 = v65;
      v113 = swift_slowAlloc();
      v232 = v113;
      *v111 = 136446210;
      v114 = sub_1DEE12A5C(v109, v110, &v232);

      *(v111 + 4) = v114;
      _os_log_impl(&dword_1DEE0F000, v107, v108, "Unable to send message to device: %{public}s; no longer associated with account", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      v115 = v113;
      v65 = v112;
      MEMORY[0x1E12CCD70](v115, -1, -1);
      MEMORY[0x1E12CCD70](v111, -1, -1);
    }

    else
    {
    }

    sub_1DEF4F0B0();
    if (v82)
    {
      sub_1DEF5BF8C();
      v136 = swift_allocError();
      *v137 = 1;
      (v82)(v136, 1);
    }

    (*(v81 + 8))(v65, v77);
  }
}

uint64_t sub_1DEF551AC()
{
  sub_1DEF5BBC8();
}

uint64_t (*sub_1DEF551E4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1DEF4DF7C();
  return sub_1DEF5522C;
}

uint64_t sub_1DEF5522C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    sub_1DEF5BBC8();
  }

  else
  {
    sub_1DEF5BBC8();
  }
}

uint64_t sub_1DEF552A8(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v35 = a1;
  v42 = a5;
  v43 = a6;
  v9 = a4;
  v37 = a3;
  v41 = a2;
  v38 = a9;
  v39 = a8;
  v10 = *a4;
  v36 = *(*a4 + 104);
  v11 = v10[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v32 - v16;
  v33 = &v32 - v16;
  v18 = *(v11 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v32 - v20;
  v40 = *(v9 + 16);
  (*(v18 + 16))(&v32 - v20, v34, v11);
  (*(v13 + 16))(v17, v35, AssociatedTypeWitness);
  v22 = (*(v18 + 80) + 80) & ~*(v18 + 80);
  v23 = (v19 + *(v13 + 80) + v22) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v10[10];
  *(v24 + 24) = v11;
  *(v24 + 32) = v10[12];
  v25 = v41;
  *(v24 + 40) = v36;
  *(v24 + 48) = v25;
  LOBYTE(v9) = v37 & 1;
  *(v24 + 56) = v37 & 1;
  v26 = v43;
  *(v24 + 64) = v42;
  *(v24 + 72) = v26;
  (*(v18 + 32))(v24 + v22, v21, v11);
  (*(v13 + 32))(v24 + v23, v33, v32);
  v27 = (v24 + ((v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v38;
  *v27 = v39;
  v27[1] = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1DEF5D43C;
  *(v29 + 24) = v24;
  aBlock[4] = sub_1DEE13B20;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_82;
  v30 = _Block_copy(aBlock);
  sub_1DEE39150(v41, v9);
  sub_1DEE2CB00(v42);

  dispatch_sync(v40, v30);
  _Block_release(v30);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF55664(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ((a2 & 1) == 0)
  {
    if (!a3)
    {
      return;
    }

    v27 = 1;
    v28 = 0;
    goto LABEL_16;
  }

  v32 = a1;
  v17 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  if (swift_dynamicCast())
  {
    (*(a12 + 112))(a6, a10);
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v18 = sub_1DEF8D508();
    __swift_project_value_buffer(v18, qword_1ECDF6010);
    sub_1DEE39150(a1, 1);

    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DC98();

    sub_1DEE39214(a1, 1);
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_1DEE12A5C(a7, a8, &v32);
    *(v21 + 12) = 2112;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v25;
    *v22 = v25;
    v26 = "Could not send message to %{public}s with error %@; discarding connection and giving up";
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v29 = sub_1DEF8D508();
    __swift_project_value_buffer(v29, qword_1ECDF6010);
    sub_1DEE39150(a1, 1);

    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DC98();

    sub_1DEE39214(a1, 1);
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_14;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_1DEE12A5C(a7, a8, &v32);
    *(v21 + 12) = 2112;
    v30 = a1;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v31;
    *v22 = v31;
    v26 = "Could not send message to %{public}s with error %@; abandoning send attempts";
  }

  _os_log_impl(&dword_1DEE0F000, v19, v20, v26, v21, 0x16u);
  sub_1DEE171B4(v22, &unk_1ECDE4880, &qword_1DEF93420);
  MEMORY[0x1E12CCD70](v22, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v23);
  MEMORY[0x1E12CCD70](v23, -1, -1);
  MEMORY[0x1E12CCD70](v21, -1, -1);
LABEL_14:

  if (!a3)
  {
    return;
  }

  v27 = a1;
  v28 = 1;
LABEL_16:
  a3(v27, v28);
}

void sub_1DEF559E0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, void (*a6)(void *, uint64_t), uint64_t a7, uint64_t a8, void *a9, unsigned __int8 a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v134 = a8;
  v146 = a5;
  v147 = a7;
  v150 = a6;
  v151 = a2;
  v137 = a4;
  v143 = a3;
  v144 = a17;
  v145 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v141 = *(AssociatedTypeWitness - 8);
  v19 = v141[8];
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v130 = v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v133 = v122 - v23;
  v129 = v24;
  MEMORY[0x1EEE9AC00](v22);
  v136 = v122 - v25;
  v139 = v26;
  v142 = sub_1DEF8DDC8();
  v140 = *(v142 - 8);
  v27 = *(v140 + 64);
  v28 = MEMORY[0x1EEE9AC00](v142);
  v138 = v122 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v128 = v122 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = v122 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v149 = v122 - v35;
  v132 = a16;
  v131 = a14;
  swift_getAssociatedTypeWitness();
  v135 = type metadata accessor for NetworkDevice();
  v127 = *(v135 - 8);
  v36 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v38 = v122 - v37;
  v39 = type metadata accessor for NetworkBrowsingEvent();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v122 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = v122 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v47 = sub_1DEF8E808();
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = (v122 - v49);
  (*(v51 + 16))(v122 - v49, a1, v47);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v52 = *v50;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v53 = sub_1DEF8D508();
    __swift_project_value_buffer(v53, qword_1ECDF6010);
    v54 = v52;
    v55 = sub_1DEF8D4D8();
    v56 = sub_1DEF8DC98();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v152 = v52;
      v153 = v58;
      *v57 = 136446210;
      v59 = v52;
      v60 = sub_1DEF8D988();
      v62 = sub_1DEE12A5C(v60, v61, &v153);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1DEE0F000, v55, v56, "Failed to discover endpoint: %{public}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1E12CCD70](v58, -1, -1);
      MEMORY[0x1E12CCD70](v57, -1, -1);
    }

    v63 = v150;
    if (v151)
    {
      [v151 invalidate];
    }

    if (v63)
    {
      v64 = v52;
      v63(v52, 1);
    }
  }

  else
  {
    (*(v40 + 32))(v46, v50, v39);
    v65 = *v46;
    v148 = v39;
    if (v65)
    {
      if (v151)
      {
        [v151 invalidate];
      }

      v66 = v150;
      if (v150)
      {
        sub_1DEF5BF8C();
        v67 = swift_allocError();
        *v68 = 0;
        v66(v67, 1);
      }

      (*(v40 + 8))(v46, v148);
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v69 = sub_1DEF8D508();
      v70 = __swift_project_value_buffer(v69, qword_1ECDF6010);
      (*(v40 + 16))(v44, v46, v148);
      v71 = v137;

      v122[1] = v70;
      v72 = sub_1DEF8D4D8();
      v73 = sub_1DEF8DCB8();

      v74 = os_log_type_enabled(v72, v73);
      v75 = v143;
      v125 = v40;
      v126 = v46;
      if (v74)
      {
        v76 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v153 = v124;
        *v76 = 136446466;
        *(v76 + 4) = sub_1DEE12A5C(v75, v71, &v153);
        *(v76 + 12) = 2082;
        v77 = v148;
        v78 = *(v127 + 16);
        v79 = &v44[*(v148 + 28)];
        LODWORD(v123) = v73;
        v78(v38, v79, v135);
        v80 = sub_1DEF8D988();
        v82 = v81;
        v83 = v77;
        v75 = v143;
        v127 = *(v40 + 8);
        (v127)(v44, v83);
        v84 = sub_1DEE12A5C(v80, v82, &v153);

        *(v76 + 14) = v84;
        _os_log_impl(&dword_1DEE0F000, v72, v123, "Device for %{public}s discovered; sending message to %{public}s", v76, 0x16u);
        v85 = v124;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v85, -1, -1);
        MEMORY[0x1E12CCD70](v76, -1, -1);
      }

      else
      {

        v127 = *(v40 + 8);
        (v127)(v44, v148);
      }

      v86 = v140;
      v87 = v141;
      v88 = v149;
      v89 = v139;
      v123 = v141[7];
      v123(v149, 1, 1, v139);
      (*(v144 + 120))(v75, v71, v145);
      v124 = v87[6];
      if ((v124)(v34, 1, v89) == 1)
      {
        v90 = v34;
        v91 = v142;
        v137 = *(v86 + 8);
        v137(v90, v142);

        v92 = sub_1DEF8D4D8();
        v93 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          v153 = v95;
          *v94 = 136446210;
          *(v94 + 4) = sub_1DEE12A5C(v143, v71, &v153);
          _os_log_impl(&dword_1DEE0F000, v92, v93, "Connection for %{public}s does not exist; creating new connection...", v94, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v95);
          v96 = v95;
          v91 = v142;
          MEMORY[0x1E12CCD70](v96, -1, -1);
          v97 = v94;
          v88 = v149;
          MEMORY[0x1E12CCD70](v97, -1, -1);
        }

        v98 = v128;
        (*(v144 + 96))(&v126[*(v148 + 28) + *(v135 + 32)], v145);
        v99 = v137;
        v137(v88, v91);
        v123(v98, 0, 1, v89);
        (*(v86 + 32))(v88, v98, v91);
      }

      else
      {
        v137 = v87[4];
        (v137)(v136, v34, v89);

        v100 = sub_1DEF8D4D8();
        v101 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v153 = v103;
          *v102 = 136446210;
          *(v102 + 4) = sub_1DEE12A5C(v143, v71, &v153);
          _os_log_impl(&dword_1DEE0F000, v100, v101, "Connection for %{public}s already exists; using existing connection...", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v103);
          MEMORY[0x1E12CCD70](v103, -1, -1);
          v104 = v102;
          v88 = v149;
          MEMORY[0x1E12CCD70](v104, -1, -1);
        }

        v99 = *(v86 + 8);
        v91 = v142;
        v99(v88, v142);
        (v137)(v88, v136, v89);
        v123(v88, 0, 1, v89);
      }

      v105 = v138;
      if (v151)
      {
        [v151 invalidate];
      }

      (*(v86 + 16))(v105, v88, v91);
      if ((v124)(v105, 1, v89) == 1)
      {
        v99(v105, v91);
        v106 = v150;
        if (v150)
        {
          sub_1DEF2ED44();
          v107 = swift_allocError();
          *v108 = 0;
          v106(v107, 1);
        }

        v99(v149, v91);
      }

      else
      {
        v151 = a9;
        v147 = a12;
        LODWORD(v150) = a10;
        v109 = v141;
        v110 = v141[4];
        v111 = v133;
        v110(v133, v105, v89);
        LOBYTE(v153) = a11;
        v112 = v109[2];
        v137 = v99;
        v113 = v130;
        v112(v130, v111, v89);
        v114 = (*(v109 + 80) + 64) & ~*(v109 + 80);
        v115 = swift_allocObject();
        v116 = v89;
        v117 = v144;
        v118 = v145;
        v115[2] = v131;
        v115[3] = v118;
        v115[4] = v132;
        v115[5] = v117;
        v115[6] = v147;
        v115[7] = a13;
        v119 = v113;
        v120 = v116;
        (v110)(v115 + v114, v119);
        v121 = *(v117 + 128);

        v121(v134, v151, v150 & 1, v111, &v153, sub_1DEF5D3A0, v115, v118, v117);

        (v109[1])(v111, v120);
        v137(v149, v142);
      }

      (v127)(v126, v148);
    }
  }
}

uint64_t sub_1DEF56868(uint64_t *a1, unint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(), unint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(), unsigned __int8 a12, uint64_t a13, unsigned __int8 a14)
{
  v79 = a8;
  v85 = a7;
  v89 = a6;
  v88 = a5;
  v80 = a3;
  v81 = a2;
  v93 = a12;
  v94 = a14;
  v91 = a10;
  v90 = a9;
  v83 = a13;
  v86 = a11;
  v16 = *a4;
  v97 = sub_1DEF8D698();
  v99 = *(v97 - 8);
  v17 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1DEF8D6D8();
  v96 = *(v98 - 8);
  v19 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DeviceDescriptor();
  v84 = *(v21 - 8);
  v82 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v78 = *(v23 - 8);
  v77 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v63 - v24;
  v25 = type metadata accessor for Message();
  v74 = *(v25 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v101 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v16;
  v27 = *(v16 + 88);
  v100 = *(v27 - 8);
  v72 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  v70 = &v63 - v29;
  v76 = *(v31 + 104);
  v65 = a4;
  swift_getAssociatedTypeWitness();
  v32 = sub_1DEF8DDC8();
  v68 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v63 - v35;
  v69 = &v63 - v35;
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v66 = sub_1DEF8E808();
  v37 = *(v66 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v66);
  v67 = &v63 - v40;
  v41 = *a1;
  v71 = a1[1];
  v87 = a4[2];
  (*(v37 + 16))(v39);
  v42 = v33;
  v64 = v33;
  (*(v33 + 16))(v36, v81, v32);
  v43 = v100;
  (*(v100 + 16))(v30, v85, v27);
  v85 = type metadata accessor for Message;
  sub_1DEE280F8(v79, v101, type metadata accessor for Message);
  sub_1DEE17214(v86, v102, &qword_1ECDE4890, &qword_1DEF90990);
  v86 = type metadata accessor for DeviceDescriptor;
  sub_1DEE280F8(v83, v103, type metadata accessor for DeviceDescriptor);
  v44 = (*(v37 + 80) + 48) & ~*(v37 + 80);
  v45 = (v38 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (*(v42 + 80) + v45 + 16) & ~*(v42 + 80);
  v47 = (v34 + *(v43 + 80) + v46) & ~*(v43 + 80);
  v48 = (v72 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (*(v74 + 80) + v48 + 16) & ~*(v74 + 80);
  v81 = (v73 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v80 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
  v79 = (*(v78 + 80) + v80 + 8) & ~*(v78 + 80);
  v83 = v79 + v77;
  v84 = (*(v84 + 80) + v79 + v77 + 1) & ~*(v84 + 80);
  v82 += v84;
  v50 = swift_allocObject();
  v51 = v65;
  v52 = v75;
  *(v50 + 2) = *(v75 + 80);
  *(v50 + 3) = v27;
  *(v50 + 4) = *(v52 + 96);
  *(v50 + 5) = v76;
  (*(v37 + 32))(&v50[v44], v67, v66);
  v53 = &v50[v45];
  v54 = v89;
  *v53 = v88;
  *(v53 + 1) = v54;
  (*(v64 + 32))(&v50[v46], v69, v68);
  (*(v100 + 32))(&v50[v47], v70, v27);
  v55 = &v50[v48];
  *v55 = v41;
  *(v55 + 1) = v71;
  sub_1DEE13A28(v101, &v50[v49], v85);
  v56 = &v50[v81];
  v57 = v91;
  *v56 = v90;
  *(v56 + 1) = v57;
  *&v50[v80] = v51;
  sub_1DEE1BA88(v102, &v50[v79], &qword_1ECDE4890, &qword_1DEF90990);
  v50[v83] = v93 & 1;
  sub_1DEE13A28(v103, &v50[v84], v86);
  v50[v82] = v94;
  aBlock[4] = sub_1DEF5CA84;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_19;
  v58 = _Block_copy(aBlock);

  v59 = v92;
  sub_1DEF8D6B8();
  v104 = MEMORY[0x1E69E7CC0];
  sub_1DEF5D72C(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v60 = v95;
  v61 = v97;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v59, v60, v58);
  _Block_release(v58);
  (*(v99 + 8))(v60, v61);
  (*(v96 + 8))(v59, v98);
}

void sub_1DEF57320(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unint64_t a10, void *a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, unsigned __int8 a15)
{
  v148 = a8;
  v150 = a6;
  v151 = a7;
  v141 = a5;
  v146 = a4;
  v152 = a2;
  v18 = *a11;
  v19 = type metadata accessor for Message();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v137 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v142 = &v130 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v130 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v130 - v27;
  v28 = *(v18 + 104);
  v149 = a11;
  v139 = *(v18 + 88);
  v140 = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = sub_1DEF8DDC8();
  v144 = *(v30 - 8);
  v31 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v130 - v32;
  v145 = *(AssociatedTypeWitness - 8);
  v34 = *(v145 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v130 - v36;
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v38 = sub_1DEF8E808();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v143 = (&v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = (&v130 - v44);
  (*(v39 + 16))(&v130 - v44, a1, v38, v43);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v152(a1);
    (*(v39 + 8))(v45, v38);
    return;
  }

  v131 = v39;
  v132 = v38;
  v136 = a3;
  v135 = a15;
  v134 = a13;
  v153 = *v45;
  v46 = v153;
  v47 = v153;
  if (!swift_dynamicCast())
  {
    v51 = v150 - 1;
    if (v150 >= 1)
    {
      v137 = a12;
      v133 = a14;
      v52 = v151;
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v53 = sub_1DEF8D508();
      __swift_project_value_buffer(v53, qword_1ECDF6010);
      v54 = v142;
      sub_1DEE280F8(v52, v142, type metadata accessor for Message);
      v55 = v46;

      v56 = sub_1DEF8D4D8();
      v57 = sub_1DEF8DC98();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v150 = v51;
        v60 = v59;
        v61 = swift_slowAlloc();
        v153 = v61;
        *v58 = 136446722;
        sub_1DEF8D3F8();
        sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
        v62 = sub_1DEF8E2E8();
        v64 = v63;
        sub_1DEE274C0(v54, type metadata accessor for Message);
        v65 = sub_1DEE12A5C(v62, v64, &v153);

        *(v58 + 4) = v65;
        *(v58 + 12) = 2082;
        *(v58 + 14) = sub_1DEE12A5C(v148, a10, &v153);
        *(v58 + 22) = 2112;
        v66 = v46;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v58 + 24) = v67;
        *v60 = v67;
        _os_log_impl(&dword_1DEE0F000, v56, v57, "Could not send message %{public}s to %{public}s with error %@; retrying", v58, 0x20u);
        sub_1DEE171B4(v60, &unk_1ECDE4880, &qword_1DEF93420);
        v68 = v60;
        v51 = v150;
        MEMORY[0x1E12CCD70](v68, -1, -1);
        swift_arrayDestroy();
        v69 = v61;
        v52 = v151;
        MEMORY[0x1E12CCD70](v69, -1, -1);
        MEMORY[0x1E12CCD70](v58, -1, -1);
      }

      else
      {

        sub_1DEE274C0(v54, type metadata accessor for Message);
      }

      v125 = v136;
      v126 = v133;
      v156[0] = v134 & 1;
      v155 = v135;
      v153 = *&a9;
      v154 = v51;
      v127 = v52;
      v128 = v137;
      v129 = v152;
      goto LABEL_32;
    }

    v89 = v151;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v90 = sub_1DEF8D508();
    __swift_project_value_buffer(v90, qword_1ECDF6010);
    v91 = v137;
    sub_1DEE280F8(v89, v137, type metadata accessor for Message);
    v92 = v46;

    v93 = sub_1DEF8D4D8();
    v94 = sub_1DEF8DC98();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = v46;
      v98 = swift_slowAlloc();
      v153 = v98;
      *v95 = 136446722;
      sub_1DEF8D3F8();
      sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v99 = sub_1DEF8E2E8();
      v101 = v100;
      sub_1DEE274C0(v91, type metadata accessor for Message);
      v102 = sub_1DEE12A5C(v99, v101, &v153);

      *(v95 + 4) = v102;
      *(v95 + 12) = 2082;
      *(v95 + 14) = sub_1DEE12A5C(v148, a10, &v153);
      *(v95 + 22) = 2112;
      v103 = v97;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 24) = v104;
      *v96 = v104;
      _os_log_impl(&dword_1DEE0F000, v93, v94, "Could not send message %{public}s to %{public}s with error %@; abandoning send attempt", v95, 0x20u);
      sub_1DEE171B4(v96, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v96, -1, -1);
      swift_arrayDestroy();
      v105 = v98;
      v46 = v97;
      MEMORY[0x1E12CCD70](v105, -1, -1);
      v106 = v95;
LABEL_25:
      MEMORY[0x1E12CCD70](v106, -1, -1);

LABEL_27:
      v121 = v132;
      v122 = v131;
      v123 = v143;
      *v143 = v46;
      swift_storeEnumTagMultiPayload();
      v124 = v46;
      v152(v123);

      (*(v122 + 8))(v123, v121);
      return;
    }

LABEL_26:

    sub_1DEE274C0(v91, type metadata accessor for Message);
    goto LABEL_27;
  }

  v137 = a12;
  v48 = v144;
  (*(v144 + 16))(v33, v146, v30);
  v49 = v145;
  v50 = (*(v145 + 48))(v33, 1, AssociatedTypeWitness);
  v133 = a14;
  if (v50 == 1)
  {
    (*(v48 + 8))(v33, v30);
  }

  else
  {
    (*(v49 + 32))(v37, v33, AssociatedTypeWitness);
    (*(v140 + 112))(v37, v139);
    (*(v49 + 8))(v37, AssociatedTypeWitness);
  }

  v70 = v151;
  v71 = v147;
  v72 = v150 - 1;
  if (v150 < 1)
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v107 = sub_1DEF8D508();
    __swift_project_value_buffer(v107, qword_1ECDF6010);
    v91 = v138;
    sub_1DEE280F8(v70, v138, type metadata accessor for Message);
    v108 = v46;

    v93 = sub_1DEF8D4D8();
    v109 = sub_1DEF8DC98();

    if (os_log_type_enabled(v93, v109))
    {
      v110 = swift_slowAlloc();
      v111 = v46;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v153 = v113;
      *v110 = 136446722;
      sub_1DEF8D3F8();
      sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v114 = sub_1DEF8E2E8();
      v116 = v115;
      sub_1DEE274C0(v91, type metadata accessor for Message);
      v117 = sub_1DEE12A5C(v114, v116, &v153);

      *(v110 + 4) = v117;
      *(v110 + 12) = 2082;
      *(v110 + 14) = sub_1DEE12A5C(v148, a10, &v153);
      *(v110 + 22) = 2112;
      v118 = v111;
      v119 = _swift_stdlib_bridgeErrorToNSError();
      *(v110 + 24) = v119;
      *v112 = v119;
      _os_log_impl(&dword_1DEE0F000, v93, v109, "Could not send message %{public}s to %{public}s with error %@; discarding connection and giving up", v110, 0x20u);
      sub_1DEE171B4(v112, &unk_1ECDE4880, &qword_1DEF93420);
      v120 = v112;
      v46 = v111;
      MEMORY[0x1E12CCD70](v120, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v113, -1, -1);
      v106 = v110;
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v73 = sub_1DEF8D508();
  __swift_project_value_buffer(v73, qword_1ECDF6010);
  sub_1DEE280F8(v70, v71, type metadata accessor for Message);
  v74 = v46;

  v75 = sub_1DEF8D4D8();
  v76 = sub_1DEF8DC98();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = v46;
    v79 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v153 = v150;
    *v77 = 136446722;
    sub_1DEF8D3F8();
    v80 = v72;
    sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v81 = sub_1DEF8E2E8();
    v83 = v82;
    sub_1DEE274C0(v71, type metadata accessor for Message);
    v84 = sub_1DEE12A5C(v81, v83, &v153);
    v72 = v80;

    *(v77 + 4) = v84;
    *(v77 + 12) = 2082;
    *(v77 + 14) = sub_1DEE12A5C(v148, a10, &v153);
    *(v77 + 22) = 2112;
    v85 = v78;
    v86 = _swift_stdlib_bridgeErrorToNSError();
    *(v77 + 24) = v86;
    *v79 = v86;
    _os_log_impl(&dword_1DEE0F000, v75, v76, "Could not send message %{public}s to %{public}s with error %@; discarding connection and retrying", v77, 0x20u);
    sub_1DEE171B4(v79, &unk_1ECDE4880, &qword_1DEF93420);
    v87 = v79;
    v46 = v78;
    MEMORY[0x1E12CCD70](v87, -1, -1);
    v88 = v150;
    swift_arrayDestroy();
    v70 = v151;
    MEMORY[0x1E12CCD70](v88, -1, -1);
    MEMORY[0x1E12CCD70](v77, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v71, type metadata accessor for Message);
  }

  v129 = v152;
  v125 = v136;
  v126 = v133;
  v156[0] = v134 & 1;
  v155 = v135;
  v153 = *&a9;
  v154 = v72;
  v127 = v70;
  v128 = v137;
LABEL_32:
  sub_1DEF51494(v127, v128, v156, v126, &v155, &v153, v129, v125);
}

uint64_t sub_1DEF582CC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(uint64_t *, char *, uint64_t *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a9;
  v50 = a6;
  v44 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v49 = sub_1DEF8E808();
  v47 = *(v49 - 8);
  v15 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v17 = (&v41 - v16);
  v18 = sub_1DEF8DDC8();
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v41 - v20;
  v22 = type metadata accessor for Message();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v26 = sub_1DEF8D508();
  __swift_project_value_buffer(v26, qword_1ECDF6010);
  sub_1DEE280F8(a3, v25, type metadata accessor for Message);

  v27 = sub_1DEF8D4D8();
  v28 = sub_1DEF8DC98();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v43 = a7;
    v30 = v29;
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v30 = 136446466;
    sub_1DEF8D3F8();
    v42 = a8;
    sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v31 = sub_1DEF8E2E8();
    v33 = v32;
    sub_1DEE274C0(v25, type metadata accessor for Message);
    v34 = sub_1DEE12A5C(v31, v33, v51);

    *(v30 + 4) = v34;
    a8 = v42;
    *(v30 + 12) = 2082;
    *(v30 + 14) = sub_1DEE12A5C(v44, a5, v51);
    _os_log_impl(&dword_1DEE0F000, v27, v28, "Timeout when sending message %{public}s to %{public}s", v30, 0x16u);
    v35 = v41;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v35, -1, -1);
    MEMORY[0x1E12CCD70](v30, -1, -1);
  }

  else
  {

    sub_1DEE274C0(v25, type metadata accessor for Message);
  }

  *v51 = a1;
  v51[1] = a8;
  v36 = *(AssociatedTypeWitness - 8);
  (*(v36 + 16))(v21, v48, AssociatedTypeWitness);
  (*(v36 + 56))(v21, 0, 1, AssociatedTypeWitness);
  sub_1DEF2ED44();
  v37 = swift_allocError();
  *v38 = 0;
  *v17 = v37;
  v39 = v49;
  swift_storeEnumTagMultiPayload();
  v50(v51, v21, v17);
  (*(v47 + 8))(v17, v39);
  return (*(v45 + 8))(v21, v46);
}

uint64_t sub_1DEF587E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v38 = a8;
  v40 = a7;
  v51 = a5;
  v49 = a2;
  v50 = a4;
  v52 = a3;
  v46 = a10;
  v47 = a1;
  v48 = a17;
  v41 = a6;
  v42 = a16;
  v44 = a14;
  v45 = a11;
  v43 = a12;
  v20 = type metadata accessor for Message();
  v39 = *(v20 - 8);
  v21 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v37 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v35 - v26;
  v54[0] = v40;
  *v53 = a9;
  v53[1] = a8;
  (*(v23 + 16))(&v35 - v26, a6, AssociatedTypeWitness, v25);
  sub_1DEE280F8(v52, &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  v28 = (*(v23 + 80) + 88) & ~*(v23 + 80);
  v29 = (v24 + *(v39 + 80) + v28) & ~*(v39 + 80);
  v30 = swift_allocObject();
  v31 = v44;
  *(v30 + 16) = v43;
  *(v30 + 24) = a13;
  *(v30 + 32) = v31;
  *(v30 + 40) = a15;
  v32 = v46;
  *(v30 + 48) = v47;
  *(v30 + 56) = v32;
  *(v30 + 64) = v45;
  *(v30 + 72) = a9;
  *(v30 + 80) = v38;
  (*(v23 + 32))(v30 + v28, v27, AssociatedTypeWitness);
  sub_1DEE13A28(v37, v30 + v29, type metadata accessor for Message);
  v33 = *(a15 + 136);

  v33(v52, v50, v51, v41, v54, v53, v48, v30, v36, a15);
}

void sub_1DEF58AC0(char a1, void (*a2)(uint64_t *, char *, uint64_t), double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a2;
  v35 = a7;
  v13 = type metadata accessor for Message();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_1DEF8DDC8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v23 = &v34 - v22;
  if (a1)
  {
    *v36 = a3;
    v36[1] = a5;
    v24 = *(AssociatedTypeWitness - 8);
    (*(v24 + 16))(v23, a6, AssociatedTypeWitness, v21);
    (*(v24 + 56))(v23, 0, 1, AssociatedTypeWitness);
    v34(v36, v23, v35);
    (*(v19 + 8))(v23, v18);
  }

  else
  {
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v25 = sub_1DEF8D508();
    __swift_project_value_buffer(v25, qword_1ECDF6010);
    sub_1DEE280F8(a8, v16, type metadata accessor for Message);
    v26 = sub_1DEF8D4D8();
    v27 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136446210;
      sub_1DEF8D3F8();
      sub_1DEF5D72C(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
      v30 = sub_1DEF8E2E8();
      v32 = v31;
      sub_1DEE274C0(v16, type metadata accessor for Message);
      v33 = sub_1DEE12A5C(v30, v32, v36);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1DEE0F000, v26, v27, "Received response for %{public}s but watchdog has already fired; ignoring response", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1E12CCD70](v29, -1, -1);
      MEMORY[0x1E12CCD70](v28, -1, -1);
    }

    else
    {

      sub_1DEE274C0(v16, type metadata accessor for Message);
    }
  }
}

uint64_t sub_1DEF58E94(char *a1, void (*a2)(char *, uint64_t), char *a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, void (*a8)(double *, char *, uint64_t *), double a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15)
{
  v214 = a8;
  v198 = a7;
  v199 = a6;
  v197 = a5;
  v209 = a3;
  v210 = a4;
  v207 = a1;
  v208 = a2;
  v213 = a10;
  v16 = *a11;
  v17 = *(*a11 + 88);
  v200 = *(*a11 + 104);
  v201 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v19 = sub_1DEF8E808();
  v205 = *(v19 - 8);
  v206 = v19;
  v20 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v204 = (&v180 - v21);
  v215 = *(AssociatedTypeWitness - 8);
  v22 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v187 = &v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v193 = &v180 - v26;
  v186 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v196 = &v180 - v29;
  v218 = AssociatedTypeWitness;
  v30 = sub_1DEF8DDC8();
  v31 = *(v30 - 8);
  v216 = v30;
  v217 = v31;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v190 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v203 = &v180 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v194 = &v180 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v202 = &v180 - v39;
  v40 = *(v16 + 96);
  v188 = a11;
  v41 = *(v16 + 80);
  v192 = v40;
  v191 = v41;
  swift_getAssociatedTypeWitness();
  v195 = type metadata accessor for NetworkDevice();
  v189 = *(v195 - 8);
  v42 = *(v189 + 64);
  MEMORY[0x1EEE9AC00](v195);
  v44 = &v180 - v43;
  v45 = type metadata accessor for NetworkBrowsingEvent();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v180 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v180 - v51;
  v53 = sub_1DEF8E808();
  v54 = *(v53 - 8);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v57 = (&v180 - v56);
  v58 = sub_1DEF8D378();
  v211 = *(v58 - 8);
  v212 = v58;
  v59 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v180 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D348();
  v209 = v61;
  sub_1DEF8D2D8();
  v63 = v62;
  (*(v54 + 16))(v57, v207, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = *v57;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v65 = sub_1DEF8D508();
    __swift_project_value_buffer(v65, qword_1ECDF6010);
    v66 = v64;
    v67 = sub_1DEF8D4D8();
    v68 = sub_1DEF8DC98();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v215;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v219 = v64;
      v220 = *&v72;
      *v71 = 136446210;
      v73 = v64;
      v74 = sub_1DEF8D988();
      v76 = sub_1DEE12A5C(v74, v75, &v220);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_1DEE0F000, v67, v68, "Failed to discover endpoint: %{public}s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x1E12CCD70](v72, -1, -1);
      MEMORY[0x1E12CCD70](v71, -1, -1);
    }

    v77 = v216;
    v78 = v217;
    if (v208)
    {
      [v208 invalidate];
    }

    v220 = a9;
    v221 = v210;
    v79 = v203;
    (*(v70 + 56))(v203, 1, 1, v218);
    v80 = v204;
    *v204 = v64;
    v81 = v206;
    swift_storeEnumTagMultiPayload();
    v82 = v64;
    v214(&v220, v79, v80);

    (*(v205 + 8))(v80, v81);
    (*(v78 + 8))(v79, v77);
  }

  else
  {
    (*(v46 + 32))(v52, v57, v45);
    v83 = v45;
    v84 = v46;
    if (*v52)
    {
      v85 = v52;
      v86 = v217;
      v87 = v215;
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v88 = sub_1DEF8D508();
      __swift_project_value_buffer(v88, qword_1ECDF6010);
      v89 = sub_1DEF8D4D8();
      v90 = sub_1DEF8DC98();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1DEE0F000, v89, v90, "Device was removed", v91, 2u);
        MEMORY[0x1E12CCD70](v91, -1, -1);
      }

      v92 = v216;
      if (v208)
      {
        [v208 invalidate];
      }

      v220 = a9;
      v221 = v210;
      v93 = v203;
      (*(v87 + 56))(v203, 1, 1, v218);
      sub_1DEF5BF8C();
      v94 = swift_allocError();
      *v95 = 0;
      v96 = v204;
      *v204 = v94;
      v97 = v206;
      swift_storeEnumTagMultiPayload();
      v214(&v220, v93, v96);
      (*(v205 + 8))(v96, v97);
      (*(v86 + 8))(v93, v92);
      (*(v84 + 8))(v85, v83);
    }

    else
    {
      if (qword_1ECDE2E50 != -1)
      {
        swift_once();
      }

      v98 = sub_1DEF8D508();
      v99 = __swift_project_value_buffer(v98, qword_1ECDF6010);
      v100 = *(v46 + 16);
      v207 = v52;
      v100(v49, v52, v45);
      v101 = v199;

      v184 = v99;
      v102 = sub_1DEF8D4D8();
      v103 = v84;
      v104 = sub_1DEF8DCB8();

      v105 = os_log_type_enabled(v102, v104);
      v185 = v83;
      v183 = v84;
      if (v105)
      {
        v106 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        v220 = *&v181;
        *v106 = 136446466;
        v107 = v197;
        *(v106 + 4) = sub_1DEE12A5C(v197, v101, &v220);
        *(v106 + 12) = 2082;
        (*(v189 + 16))(v44, &v49[*(v83 + 28)], v195);
        v108 = sub_1DEF8D988();
        v109 = v83;
        v111 = v110;
        v182 = *(v103 + 8);
        v182(v49, v109);
        v112 = sub_1DEE12A5C(v108, v111, &v220);

        *(v106 + 14) = v112;
        _os_log_impl(&dword_1DEE0F000, v102, v104, "Device for %{public}s discovered; sending message to %{public}s", v106, 0x16u);
        v113 = v181;
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v113, -1, -1);
        MEMORY[0x1E12CCD70](v106, -1, -1);

        v114 = v215;
        v115 = v202;
      }

      else
      {

        v182 = *(v84 + 8);
        v182(v49, v83);
        v114 = v215;
        v115 = v202;
        v107 = v197;
      }

      v117 = v217;
      v116 = v218;
      v189 = *(v114 + 56);
      (v189)(v115, 1, 1, v218);
      v118 = v194;
      (*(v200 + 120))(v107, v101, v201);
      v181 = *(v114 + 48);
      v119 = v101;
      if (v181(v118, 1, v116) == 1)
      {
        v120 = v118;
        v121 = v216;
        v122 = *(v117 + 8);
        v122(v120, v216);

        v123 = sub_1DEF8D4D8();
        v124 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v220 = *&v126;
          *v125 = 136446210;
          *(v125 + 4) = sub_1DEE12A5C(v107, v199, &v220);
          _os_log_impl(&dword_1DEE0F000, v123, v124, "Connection for %{public}s does not exist; creating new connection...", v125, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v126);
          v127 = v126;
          v119 = v199;
          MEMORY[0x1E12CCD70](v127, -1, -1);
          v128 = v125;
          v121 = v216;
          MEMORY[0x1E12CCD70](v128, -1, -1);
        }

        v129 = v203;
        (*(v200 + 96))(&v207[*(v185 + 28) + *(v195 + 32)], v201);
        v130 = v202;
        v122(v202, v121);
        v131 = v122;
        (v189)(v129, 0, 1, v218);
        v117 = v217;
        (*(v217 + 32))(v130, v129, v121);
      }

      else
      {
        v132 = *(v114 + 32);
        v132(v196, v118, v116);

        v133 = sub_1DEF8D4D8();
        v134 = sub_1DEF8DCB8();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          v220 = *&v136;
          *v135 = 136446210;
          *(v135 + 4) = sub_1DEE12A5C(v197, v119, &v220);
          _os_log_impl(&dword_1DEE0F000, v133, v134, "Connection for %{public}s already exists; using existing connection...", v135, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v136);
          v117 = v217;
          MEMORY[0x1E12CCD70](v136, -1, -1);
          MEMORY[0x1E12CCD70](v135, -1, -1);
        }

        v131 = *(v117 + 8);
        v130 = v202;
        v121 = v216;
        v131(v202, v216);
        v137 = v218;
        v132(v130, v196, v218);
        (v189)(v130, 0, 1, v137);
        v114 = v215;
        v119 = v199;
        v107 = v197;
      }

      v138 = a9 - v63;
      if (v208)
      {
        [v208 invalidate];
      }

      if (v138 <= 0.0)
      {

        v149 = sub_1DEF8D4D8();
        v150 = sub_1DEF8DC98();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v220 = *&v152;
          *v151 = 136446210;
          *(v151 + 4) = sub_1DEE12A5C(v107, v119, &v220);
          _os_log_impl(&dword_1DEE0F000, v149, v150, "Found device %{public}s but have no time to send the message", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v152);
          MEMORY[0x1E12CCD70](v152, -1, -1);
          v153 = v151;
          v121 = v216;
          MEMORY[0x1E12CCD70](v153, -1, -1);
        }

        v154 = v185;
        v220 = a9;
        v221 = v210;
        sub_1DEF2ED44();
        v155 = swift_allocError();
        *v156 = 0;
        v157 = v204;
        *v204 = v155;
        v158 = v206;
        swift_storeEnumTagMultiPayload();
        v159 = v202;
        v214(&v220, v202, v157);
        (*(v205 + 8))(v157, v158);
        v131(v159, v121);
        v160 = v207;
        v161 = v154;
      }

      else
      {
        v208 = v131;
        v139 = *(v117 + 16);
        v140 = v190;
        v139(v190, v130, v121);
        v141 = v218;
        if (v181(v140, 1, v218) == 1)
        {
          v142 = v130;
          v143 = v208;
          v208(v140, v121);
          v220 = a9;
          v221 = v210;
          v144 = v203;
          (v189)(v203, 1, 1, v141);
          sub_1DEF2ED44();
          v145 = swift_allocError();
          *v146 = 0;
          v147 = v204;
          *v204 = v145;
          v148 = v206;
          swift_storeEnumTagMultiPayload();
          v214(&v220, v144, v147);
          (*(v205 + 8))(v147, v148);
          v143(v144, v121);
          v143(v142, v121);
        }

        else
        {
          LODWORD(v206) = a15;
          v204 = a12;
          v205 = a13;
          LODWORD(v203) = a14;
          v162 = *(v114 + 32);
          v163 = v193;
          v162(v193, v140, v141);
          v164 = v188[2];
          v165 = v187;
          (*(v114 + 16))(v187, v163, v141);
          v166 = v141;
          v167 = (*(v114 + 80) + 80) & ~*(v114 + 80);
          v168 = swift_allocObject();
          *&v169 = v191;
          *(&v169 + 1) = v201;
          *&v170 = v192;
          *(&v170 + 1) = v200;
          *(v168 + 16) = v169;
          *(v168 + 32) = v170;
          v171 = v213;
          *(v168 + 48) = v214;
          *(v168 + 56) = v171;
          *(v168 + 64) = a9;
          v172 = v210;
          *(v168 + 72) = v210;
          v162(v168 + v167, v165, v166);
          type metadata accessor for Watchdog();
          v173 = swift_allocObject();
          *(v173 + 16) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
          v174 = swift_allocObject();
          *(v174 + 16) = 0;
          v175 = (v174 + 16);
          *(v173 + 24) = v174;
          *(v173 + 32) = 0;
          MEMORY[0x1EEE9AC00](v174);
          MEMORY[0x1EEE9AC00](v176);

          os_unfair_lock_lock(v175);
          sub_1DEE3DEF0(v177);
          os_unfair_lock_unlock(v175);

          v178 = v193;
          sub_1DEF5A4A8(v173, v198, v204, v205, v203 & 1, v193, v206, v172, v138, a9, v214, v171, v172, v191, v201, v192, v200);

          (*(v215 + 8))(v178, v218);
          v208(v202, v216);
        }

        v160 = v207;
        v161 = v185;
      }

      v182(v160, v161);
    }
  }

  return (*(v211 + 8))(v209, v212);
}

uint64_t sub_1DEF5A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v42 = a8;
  v43 = a6;
  v52 = a5;
  v50 = a2;
  v51 = a4;
  v53 = a3;
  v46 = a1;
  v47 = a11;
  v48 = a12;
  v49 = a13;
  v40 = a17;
  v44 = a14;
  v45 = a16;
  v21 = type metadata accessor for Message();
  v41 = *(v21 - 8);
  v22 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v39 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v38 - v27;
  v55[0] = a7;
  *v54 = a9;
  v54[1] = v42;
  (*(v24 + 16))(&v38 - v27, a6, AssociatedTypeWitness, v26);
  sub_1DEE280F8(v53, &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  v29 = (*(v24 + 80) + 88) & ~*(v24 + 80);
  v30 = (v25 + *(v41 + 80) + v29) & ~*(v41 + 80);
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 16) = v44;
  *(v31 + 24) = a15;
  v33 = v40;
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = v47;
  *(v31 + 48) = v46;
  *(v31 + 56) = v34;
  v35 = v49;
  *(v31 + 64) = v48;
  *(v31 + 72) = a10;
  *(v31 + 80) = v35;
  (*(v24 + 32))(v31 + v29, v28, AssociatedTypeWitness);
  sub_1DEE13A28(v39, v31 + v30, type metadata accessor for Message);
  v36 = *(v33 + 136);

  v36(v53, v51, v52, v43, v55, v54, sub_1DEF5D7FC, v31, v38, v33);
}

void sub_1DEF5A790(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v14 = *(a2 + 24);

  os_unfair_lock_lock(v14 + 4);
  if (*(a2 + 16))
  {
    v15 = *(a2 + 32) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  sub_1DEF5E90C();
  os_unfair_lock_unlock(v14 + 4);

  sub_1DEF58AC0(v15 & 1, a3, a8, a4, a5, a6, a1, a7);
}

uint64_t sub_1DEF5A870(double a1, uint64_t a2, void (*a3)(void *, char *, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v10 = sub_1DEF8E808();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v25 - v13);
  v15 = sub_1DEF8DDC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v20 = &v25 - v19;
  *v27 = a1;
  v27[1] = a5;
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(&v25 - v19, a6, AssociatedTypeWitness, v18);
  (*(v21 + 56))(v20, 0, 1, AssociatedTypeWitness);
  sub_1DEF2ED44();
  v22 = swift_allocError();
  *v23 = 0;
  *v14 = v22;
  swift_storeEnumTagMultiPayload();
  v26(v27, v20, v14);
  (*(v11 + 8))(v14, v10);
  return (*(v16 + 8))(v20, v15);
}

uint64_t sub_1DEF5AB00(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1DEF8DDC8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v43 - v16;
  v49 = *(AssociatedTypeWitness - 8);
  v17 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = (*(a7 + 4))(a5, a7);
  v21 = sub_1DEEA3AD8(v20);

  if (sub_1DEF4DB74(v21, a3))
  {
    goto LABEL_8;
  }

  if (*(a3 + 16) <= *(v21 + 16) >> 3)
  {
    v58 = v21;
    sub_1DEEC8D64(a3);
    v22 = v58;
    if (*(v58 + 16))
    {
      goto LABEL_4;
    }

LABEL_8:
  }

  v22 = sub_1DEEC9A18(a3, v21);
  if (!*(v22 + 16))
  {
    goto LABEL_8;
  }

LABEL_4:
  if (qword_1ECDE2E50 != -1)
  {
LABEL_26:
    swift_once();
  }

  v44 = v13;
  v23 = sub_1DEF8D508();
  __swift_project_value_buffer(v23, qword_1ECDF6010);

  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DCB8();
  v26 = os_log_type_enabled(v24, v25);
  v54 = a2;
  v55 = a5;
  v47 = v19;
  v48 = v12;
  if (v26)
  {
    v27 = v25;
    v28 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58 = v12;
    *v28 = 134349314;
    *(v28 + 4) = *(v22 + 16);

    *(v28 + 12) = 2082;
    v29 = sub_1DEF8DBF8();
    v31 = v24;
    v32 = sub_1DEE12A5C(v29, v30, &v58);

    *(v28 + 14) = v32;
    _os_log_impl(&dword_1DEE0F000, v31, v27, "Disconnecting %{public}ld connected deviceID(s) no longer associated with the signed-in account: %{public}s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12CCD70](v12, -1, -1);
    MEMORY[0x1E12CCD70](v28, -1, -1);
  }

  else
  {
  }

  v34 = 0;
  v56 = v22;
  v13 = v22 + 56;
  v35 = 1 << *(v22 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  a5 = v36 & *(v22 + 56);
  a2 = (v35 + 63) >> 6;
  v50 = (v49 + 48);
  v51 = a7 + 120;
  v52 = AssociatedTypeWitness;
  v53 = a7;
  v45 = a7 + 112;
  v46 = (v49 + 32);
  v49 += 8;
  ++v44;
  v19 = a7;
  while (a5)
  {
    v22 = v34;
LABEL_22:
    v37 = __clz(__rbit64(a5));
    a5 &= a5 - 1;
    v38 = (*(v56 + 48) + ((v22 << 10) | (16 * v37)));
    v39 = *v38;
    v40 = v38[1];
    v41 = *(v19 + 15);

    a7 = v57;
    v12 = v55;
    v41(v39, v40, v55, v19);
    v42 = a7;

    AssociatedTypeWitness = v52;
    if ((*v50)(a7, 1, v52) == 1)
    {
      (*v44)(a7, v48);
    }

    else
    {
      a7 = v47;
      (*v46)(v47, v42, AssociatedTypeWitness);
      (*(v19 + 14))(a7, v12, v19);
      (*v49)(a7, AssociatedTypeWitness);
    }

    v34 = v22;
  }

  while (1)
  {
    v22 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v22 >= a2)
    {
    }

    a5 = *(v13 + 8 * v22);
    ++v34;
    if (a5)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_1DEF5B034(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v9 = *(v5 - 1);
      v10 = *v5;
      v11 = *(a3 + 16);
      if (v11)
      {
        v19 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
        v7 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v7);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v7[2] = v11;
        v7[3] = 2 * (v13 >> 4);
        v14 = sub_1DEF2DE0C(v23, v7 + 4, v11, a3);
        v15 = v23[0];
        v16 = v23[1];
        v17 = v23[2];
        v21 = v23[3];
        v22 = v14;
        v20 = v23[4];
        swift_unknownObjectRetain();

        result = sub_1DEEACDB8(v15, v16, v17, v21, v20);
        if (v22 != v11)
        {
          __break(1u);
          return result;
        }

        v10 = v19;
      }

      else
      {
        v6 = *(v5 - 1);
        swift_unknownObjectRetain();
        v7 = MEMORY[0x1E69E7CC0];
      }

      ObjectType = swift_getObjectType();
      (*(v10 + 32))(a2, &off_1F5A21098, v7, ObjectType, v10);
      swift_unknownObjectRelease();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DEF5B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEF5B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a1, a2, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEF5B2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DEF5B3BC(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      sub_1DEF5BB50(v8, v4, v2);
      MEMORY[0x1E12CCD70](v8, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v9 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1DEF5B51C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

LABEL_4:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1DEF5B51C(unint64_t *a1, uint64_t a2, void *a3)
{
  v65 = a2;
  v66 = a1;
  v4 = type metadata accessor for DeviceDescriptor();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v64 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v64 - v14;
  v78 = type metadata accessor for PairingRelationship();
  v77 = *(v78 - 8);
  v16 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v78 - 8);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DEF8D3F8();
  v20 = *(*(v19 - 8) + 64);
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v85 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = 0;
  v25 = 0;
  v81 = a3;
  v26 = a3;
  v27 = v21;
  v30 = v26[8];
  v29 = v26 + 8;
  v28 = v30;
  v31 = 1 << *(v29 - 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v71 = v22 + 16;
  v72 = v34;
  v73 = v29;
  v74 = v22;
  v82 = v22 + 8;
  v83 = v7;
  v86 = v15;
  v68 = v10;
  v75 = v21;
  v76 = v18;
  while (v33)
  {
    v35 = v18;
    v36 = __clz(__rbit64(v33));
    v84 = (v33 - 1) & v33;
LABEL_13:
    v39 = v36 | (v25 << 6);
    v40 = v81;
    v41 = v74;
    v42 = *(v74 + 16);
    v43 = v85;
    v42(v85, v81[6] + *(v74 + 72) * v39, v27, v23);
    v44 = v40[7];
    v45 = *(v77 + 72);
    v70 = v39;
    v46 = v44 + v45 * v39;
    v47 = v35;
    sub_1DEE280F8(v46, v35, type metadata accessor for PairingRelationship);
    v48 = v86;
    (v42)(v86, v43, v27);
    v49 = v83;
    sub_1DEE280F8(v47, v48 + *(v83 + 48), type metadata accessor for PairingRelationship);
    v50 = v48;
    v51 = v79;
    sub_1DEE17214(v50, v79, &unk_1ECDE4350, &qword_1DEF93400);
    v52 = v51 + *(v49 + 48);
    v53 = v78;
    v54 = v80;
    sub_1DEE280F8(v52 + *(v78 + 20), v80, type metadata accessor for DeviceDescriptor);
    sub_1DEE274C0(v52, type metadata accessor for PairingRelationship);
    LODWORD(v40) = *(v54 + 48);
    sub_1DEE274C0(v54, type metadata accessor for DeviceDescriptor);
    v55 = *(v41 + 8);
    v55(v51, v27);
    if (v40 != 4)
    {
      sub_1DEE171B4(v86, &unk_1ECDE4350, &qword_1DEF93400);
      v27 = v75;
      v18 = v76;
      goto LABEL_5;
    }

    v69 = v55;
    v56 = v86;
    v57 = v68;
    sub_1DEE17214(v86, v68, &unk_1ECDE4350, &qword_1DEF93400);
    v58 = v57 + *(v83 + 48);
    v59 = (v58 + *(v53 + 32));
    v60 = *v59;
    v61 = v59[1];
    sub_1DEE4F8C0(*v59, v61);
    sub_1DEE274C0(v58, type metadata accessor for PairingRelationship);
    if (v61 == 3)
    {
      sub_1DEE4F8D4(v60, 3uLL);
      sub_1DEE4F8D4(0, 3uLL);
      sub_1DEE4F8D4(v60, 3uLL);
      sub_1DEE171B4(v56, &unk_1ECDE4350, &qword_1DEF93400);
      v27 = v75;
      v55 = v69;
      v69(v57, v75);
      v18 = v76;
LABEL_5:
      v34 = v72;
      v29 = v73;
      v33 = v84;
      sub_1DEE274C0(v18, type metadata accessor for PairingRelationship);
      v55(v85, v27);
    }

    else
    {
      sub_1DEE4F8C0(v60, v61);
      sub_1DEE4F8D4(v60, v61);
      sub_1DEE4F8D4(0, 3uLL);
      sub_1DEE4F8D4(v60, v61);
      sub_1DEE171B4(v56, &unk_1ECDE4350, &qword_1DEF93400);
      v27 = v75;
      v62 = v69;
      v69(v57, v75);
      v18 = v76;
      sub_1DEE274C0(v76, type metadata accessor for PairingRelationship);
      v62(v85, v27);
      *(v66 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v70;
      v63 = __OFADD__(v67++, 1);
      v34 = v72;
      v29 = v73;
      v33 = v84;
      if (v63)
      {
        __break(1u);
LABEL_19:
        sub_1DEEC6068(v66, v65, v67, v81);
        return;
      }
    }
  }

  v37 = v25;
  while (1)
  {
    v25 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      break;
    }

    if (v25 >= v34)
    {
      goto LABEL_19;
    }

    v38 = v29[v25];
    ++v37;
    if (v38)
    {
      v35 = v18;
      v36 = __clz(__rbit64(v38));
      v84 = (v38 - 1) & v38;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1DEF5BB50(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1DEF5B51C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_1DEF5BBC8()
{
  v1 = *(v0 + *(*v0 + 168));
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE15434(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF5BCA4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for DeviceDescriptor() - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  return sub_1DEF5088C(a1, a2, v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), (v2 + v12), *(v2 + v13), *(v2 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v13 & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + (((v13 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((v13 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

__n128 sub_1DEF5BE58(uint64_t a1)
{
  v12 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(type metadata accessor for Message() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DeviceDescriptor() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DEF50D50(a1, *(v1 + 48), v1 + v6, v1 + v9, *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v12, *(&v12 + 1), v3, v4);
  return result;
}

unint64_t sub_1DEF5BF8C()
{
  result = qword_1ECDE5240;
  if (!qword_1ECDE5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5240);
  }

  return result;
}

uint64_t sub_1DEF5BFE0(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *(*(*(v3 + 24) - 8) + 64);
  v8 = (*(*(*(v3 + 24) - 8) + 80) + 72) & ~*(*(*(v3 + 24) - 8) + 80);
  v9 = *(type metadata accessor for Message() - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v13 = (v11 + *(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v15 = *(type metadata accessor for DeviceDescriptor() - 8);
  return sub_1DEF56868(a1, a2, a3, *(v3 + 48), *(v3 + 56), *(v3 + 64), (v3 + v8), v3 + v10, *(v3 + v11), *(v3 + v11 + 8), (v3 + v13), *(v3 + v14), v3 + ((v14 + *(v15 + 80) + 1) & ~*(v15 + 80)), *(v3 + ((v14 + *(v15 + 80) + 1) & ~*(v15 + 80)) + *(v15 + 64)));
}

uint64_t sub_1DEF5C1F0(char *a1, void (*a2)(char *, uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(sub_1DEF8D378() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(*(v4 - 8) + 80) + v8 + 16) & ~*(*(v4 - 8) + 80);
  v10 = (*(*(v4 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Message() - 8);
  v13 = (*(v12 + 80) + v11 + 8) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v16 = v2 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));
  return sub_1DEF58E94(a1, a2, (v2 + v6), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), v2 + v9, *(v2 + v10), *(v2 + v7), *(v2 + v10 + 8), *(v2 + v11), (v2 + v13), v16, *(v16 + *(v15 + 64)), *(v16 + *(v15 + 64) + 1));
}

uint64_t sub_1DEF5C438(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for Message() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1DEF582CC(*(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), a1, v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((*(v11 + 80) + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v11 + 80)));
}

void sub_1DEF5C584(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Message() - 8);
  sub_1DEF5A790(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 80), v1 + v8, v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), *(v1 + 72));
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 80) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 7);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1DEF5C77C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1DEF5A870(*(v1 + 64), a1, *(v1 + 48), *(v1 + 56), *(v1 + 72), v1 + ((*(v7 + 80) + 80) & ~*(v7 + 80)));
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 88) & ~v5;
  v7 = *(v4 + 64);
  v8 = type metadata accessor for Message();
  v9 = *(*(v8 - 1) + 80);
  v20 = *(*(v8 - 1) + 64);
  v10 = *(v0 + 6);

  v11 = *(v0 + 8);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);
  v21 = (v6 + v7 + v9) & ~v9;
  v12 = &v0[v21];
  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 8);
  v15(&v0[v21], v13);
  v16 = v8[5];
  if (!(*(v14 + 48))(&v0[v21 + v16], 1, v13))
  {
    v15(&v12[v16], v13);
  }

  v17 = *&v12[v8[6] + 8];

  v18 = *&v12[v8[7] + 8];

  sub_1DEE1BFA0(*&v12[v8[9]], *&v12[v8[9] + 8]);

  return MEMORY[0x1EEE6BDD0](v0, v21 + v20, v5 | v9 | 7);
}

void sub_1DEF5CA84()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v3 = *(sub_1DEF8E808() - 8);
  v17 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v4 = (*(v3 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1DEF8DDC8() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v6 + *(v5 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v8 = (*(*(v1 - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for Message() - 8);
  v10 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v15 = v14 + *(v13 + 64);
  v16 = *(type metadata accessor for DeviceDescriptor() - 8);
  sub_1DEF57320(v0 + v17, *(v0 + v4), *(v0 + v4 + 8), v0 + v6, v0 + v7, *(v0 + v8 + 8), v0 + v10, *(v0 + v11), *(v0 + v8), *(v0 + v11 + 8), *(v0 + v12), v0 + v14, *(v0 + v15), v0 + ((v15 + *(v16 + 80) + 1) & ~*(v16 + 80)), *(v0 + ((v15 + *(v16 + 80) + 1) & ~*(v16 + 80)) + *(v16 + 64)));
}

uint64_t sub_1DEF5CDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  return sub_1DEF51108(a1, *(v2 + 48), a2);
}

uint64_t sub_1DEF5CE08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for DeviceDescriptor() - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  return sub_1DEF53474(a1, a2, v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), (v2 + v12), *(v2 + v12 + *(v11 + 64)), *(v2 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1DEF5CFA4(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Message() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = v2 + v7;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v2 + v8);
  v14 = *(v2 + v8 + 8);

  sub_1DEF53824(a1, a2 & 1, v9, v2 + v6, v11, v12, v13);
}

uint64_t sub_1DEF5D068(uint64_t a1, void *a2, char a3)
{
  v4 = (*(*(v3[3] - 8) + 80) + 72) & ~*(*(v3[3] - 8) + 80);
  v5 = (v3 + ((*(*(v3[3] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1DEF552A8(a1, a2, a3 & 1, v3[6], v3[7], v3[8], v3 + v4, *v5, v5[1]);
}

void sub_1DEF5D100(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v9 = (*(*(v5 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Message() - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v14 + *(v13 + 64);
  sub_1DEF559E0(a1, a2, *(v2 + 48), *(v2 + 56), v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + v11, (v2 + v14), *(v2 + v15), *(v2 + v15 + 1), *(v2 + ((v15 + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v15 + 9) & 0xFFFFFFFFFFFFFFF8) + 8), v4, v5, v6, v7);
}

uint64_t objectdestroy_66Tm()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 64) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 7);

  (*(v4 + 8))(&v0[v6], AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1DEF5D3A4(uint64_t a1, char a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v2 + 56);
  return (*(v2 + 48))(v2 + ((*(v7 + 80) + 64) & ~*(v7 + 80)), a1, a2 & 1);
}

void sub_1DEF5D43C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v6 = v5 + *(*(v1 - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1DEF55664(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v5, v0 + v8, *v9, *(v9 + 8), v2, v1, v4, v3);
}

uint64_t sub_1DEF5D5B8(uint64_t a1)
{
  v3 = v1[3];
  v5 = v1[6];
  v4 = v1[7];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1DEF5D62C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 80);
  v7 = *(v2 + 96);
  type metadata accessor for NetworkSyncService.WeakDelegate();
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v4;
}

uint64_t sub_1DEF5D6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[3];
  v7 = v2[6];
  v6 = v2[7];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v7(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_1DEF5D72C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DEF5D788()
{
  result = qword_1ECDE5248;
  if (!qword_1ECDE5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5248);
  }

  return result;
}

uint64_t sub_1DEF5D83C()
{
  type metadata accessor for NearbyCompanionSubscriber();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ECDF6040 = result;
  return result;
}

uint64_t ReplicatorCodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEF5D920()
{
  result = qword_1ECDE5250;
  if (!qword_1ECDE5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5250);
  }

  return result;
}

uint64_t DeviceType.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6578544;
  v4 = 0x6863746177;
  if (v1 != 4)
  {
    v4 = 30324;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6513005;
  if (v1 != 1)
  {
    v5 = 0x656E6F6870;
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

unint64_t sub_1DEF5DAAC()
{
  result = qword_1ECDE35C8;
  if (!qword_1ECDE35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35C8);
  }

  return result;
}

uint64_t sub_1DEF5DB00()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF5DB74()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t static Watchdog.execute(within:failureQueue:action:failureHandler:)(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for Watchdog();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;

  os_unfair_lock_lock(v5);
  sub_1DEE15434(v6);
  os_unfair_lock_unlock(v5);

  a2(v3);
}

uint64_t sub_1DEF5DD24()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12170(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t Watchdog.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t Watchdog.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_1DEF5DE4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_1DEE3DEF0(v5);
  os_unfair_lock_unlock(v4 + 4);

  return a2(v2);
}

uint64_t sub_1DEF5DF68(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 16))
  {
    v4 = *(v1 + 32) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1DEF5E90C();
  os_unfair_lock_unlock(v3 + 4);

  return a1(v4 & 1);
}

uint64_t sub_1DEF5DFEC()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE3DEF0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1DEF5E05C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v72 = a3;
  v65 = a1;
  v66 = a2;
  v7 = sub_1DEF8D698();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8D6D8();
  v71 = *(v10 - 8);
  v11 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D778();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v58 - v18;
  v19 = sub_1DEF8D688();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v64 = (&v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v63 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v76 = (&v58 - v25);
  v26 = sub_1DEF8DD48();
  v61 = *(v26 - 8);
  v27 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v4 + 24);

  os_unfair_lock_assert_owner(v30 + 4);

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v31 = sub_1DEF8D508();
  __swift_project_value_buffer(v31, qword_1ECDF6028);
  v32 = sub_1DEF8D4D8();
  v33 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134349056;
    *(v34 + 4) = a4;
    _os_log_impl(&dword_1DEE0F000, v32, v33, "Watchdog will fire in %{public}fs", v34, 0xCu);
    MEMORY[0x1E12CCD70](v34, -1, -1);
  }

  v35 = a4 * 1000000.0;
  if (COERCE__INT64(fabs(a4 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v60 = v7;
  if (v35 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFFLL;
  }

  else
  {
    v36 = v35;
  }

  sub_1DEE1B7BC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE1B5E4(&qword_1ECDE2BB8, MEMORY[0x1E69E80B0]);
  v59 = v10;
  v58 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4790, &qword_1DEF93538);
  v75 = v13;
  sub_1DEE1B590(&qword_1ECDE2C28, &qword_1ECDE4790, &qword_1DEF93538);
  sub_1DEF8DE08();
  v37 = sub_1DEF8DD58();
  (*(v61 + 8))(v29, v26);
  v38 = v76;
  *v76 = v36;
  v39 = v67;
  v40 = v68;
  v41 = *(v67 + 104);
  v41(v38, *MEMORY[0x1E69E7F30], v68);
  v42 = v62;
  sub_1DEF8D768();
  v43 = v70;
  MEMORY[0x1E12CAF50](v42, v38);
  v44 = *(v14 + 8);
  v61 = v14 + 8;
  v65 = v44;
  v44(v42, v75);
  ObjectType = swift_getObjectType();
  v46 = v63;
  v41(v63, *MEMORY[0x1E69E7F40], v40);
  v47 = v64;
  *v64 = 0;
  v41(v47, *MEMORY[0x1E69E7F28], v40);
  v48 = v43;
  MEMORY[0x1E12CB550](v43, v46, v47, ObjectType);
  v49 = *(v39 + 8);
  v49(v47, v40);
  v50 = v40;
  v49(v46, v40);
  v51 = swift_allocObject();
  v52 = v58;
  v53 = v66;
  v51[2] = v58;
  v51[3] = v53;
  v51[4] = v72;
  aBlock[4] = sub_1DEF5EBFC;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_20;
  v54 = _Block_copy(aBlock);

  v55 = v69;
  sub_1DEF8D6B8();
  v56 = v73;
  sub_1DEE160EC();
  sub_1DEF8DD78();
  _Block_release(v54);
  (*(v74 + 8))(v56, v60);
  (*(v71 + 8))(v55, v59);

  v57 = *(v52 + 16);
  *(v52 + 16) = v37;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1DEF8DD98();
  swift_unknownObjectRelease_n();
  v65(v48, v75);
  v49(v76, v50);
}

uint64_t sub_1DEF5E86C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(a1 + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12CD4(&v7);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v7;

  if ((v5 & 1) == 0)
  {
    return a2(a1);
  }

  return result;
}

uint64_t sub_1DEF5E90C()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 16))
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6028);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Cancelling watchdog", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    if (*(v1 + 16))
    {
      v8 = *(v1 + 16);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1DEF8DD88();
      swift_unknownObjectRelease();
      v9 = *(v1 + 16);
    }

    *(v1 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Watchdog.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return v0;
}

uint64_t Watchdog.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_1DEF5EADC()
{
  v1 = v0[3];
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 2);
  sub_1DEF5E05C(v2, v3, v4, v1);
}

uint64_t sub_1DEF5EC08@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 32) = 1;
    result = sub_1DEF5E90C();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t NetworkMessagingConnectionType.description.getter()
{
  if (*v0)
  {
    return 0x73756E696D726574;
  }

  else
  {
    return 0x647261646E617473;
  }
}

unint64_t sub_1DEF5ECFC()
{
  result = qword_1ECDE5258;
  if (!qword_1ECDE5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5258);
  }

  return result;
}

unint64_t sub_1DEF5ED54()
{
  result = qword_1ECDE2EE0;
  if (!qword_1ECDE2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EE0);
  }

  return result;
}

uint64_t sub_1DEF5EDA8()
{
  if (*v0)
  {
    return 0x73756E696D726574;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_1DEF5EDDC(uint64_t a1)
{
  type metadata accessor for Message();
  if (v2 <= 0x3F)
  {
    sub_1DEED9C80();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DEF5EE7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(sub_1DEF8D1E8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v16 + 84);
  if (v17 > v15)
  {
    v15 = *(v16 + 84);
  }

  v18 = *(v7 + 64);
  v19 = *(v7 + 80);
  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  if (v8)
  {
    v24 = 7;
  }

  else
  {
    v24 = 8;
  }

  if (v13)
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = ((((((((v24 + v18 + ((v18 + v19) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  v27 = v25 + v22;
  if (a2 > v15)
  {
    v28 = ((v27 + (v26 & ~v20)) & ~v22) + v23;
    v29 = 8 * v28;
    if (v28 > 3)
    {
      goto LABEL_24;
    }

    v31 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v31))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 >= 2)
    {
LABEL_24:
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

LABEL_31:
      v32 = (v30 - 1) << v29;
      if (v28 > 3)
      {
        v32 = 0;
      }

      if (v28)
      {
        if (v28 <= 3)
        {
          v33 = v28;
        }

        else
        {
          v33 = 4;
        }

        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v34 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v34 = *a1;
          }
        }

        else if (v33 == 1)
        {
          v34 = *a1;
        }

        else
        {
          v34 = *a1;
        }
      }

      else
      {
        v34 = 0;
      }

      return v15 + (v34 | v32) + 1;
    }
  }

LABEL_44:
  if (v10 == v15)
  {
    if (v8 >= 0x7FFFFFFF)
    {
      v35 = *(v7 + 48);

      return v35(a1, v8, v6);
    }

    v38 = (a1 + v18 + v19) & ~v19;
    if (v9 == v10)
    {
      if (v8 < 2)
      {
        return 0;
      }

      v37 = (*(v7 + 48))(v38, v8, v6);
      goto LABEL_68;
    }

    if (v8)
    {
      v41 = *(v7 + 64);
    }

    else
    {
      v41 = v18 + 1;
    }

    v42 = *(((v38 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v42 >= 0xFFFFFFFF)
    {
      LODWORD(v42) = -1;
    }

    return (v42 + 1);
  }

  else
  {
    if (v14 == v15)
    {
      if (v13 < 2)
      {
        return 0;
      }

      v37 = (*(v12 + 48))((a1 + v26) & ~v20);
LABEL_68:
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }

    v39 = ~v22;
    v40 = *(*(*(a3 + 16) - 8) + 48);

    return v40((v27 + ((a1 + v26) & ~v20)) & v39, v17);
  }
}

void sub_1DEF5F28C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v43 = v11;
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = sub_1DEF8D1E8();
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(a4 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  v22 = *(v9 + 64);
  v23 = *(v9 + 80);
  v24 = *(v15 + 80);
  v25 = *(v20 + 80);
  if (v21 > v18)
  {
    v18 = *(v20 + 84);
  }

  if (v10)
  {
    v26 = *(v9 + 64);
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = v22 + v23;
  v28 = ((((((((v26 + ((v22 + v23) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v24 + 16;
  if (v16)
  {
    v29 = *(*(v13 - 8) + 64);
  }

  else
  {
    v29 = *(*(v13 - 8) + 64) + 1;
  }

  v30 = v29 + v25;
  v31 = ((v30 + (v28 & ~v24)) & ~v25) + *(v20 + 64);
  if (a3 <= v18)
  {
    goto LABEL_31;
  }

  if (v31 <= 3)
  {
    v32 = ((a3 - v18 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
    if (HIWORD(v32))
    {
      v14 = 4;
      if (v18 >= a2)
      {
        goto LABEL_41;
      }

LABEL_32:
      v34 = ~v18 + a2;
      if (v31 >= 4)
      {
        bzero(a1, v31);
        *a1 = v34;
        v35 = 1;
        if (v14 > 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v36 = v34 & ~(-1 << (8 * v31));
        bzero(a1, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *a1 = v36;
            if (v14 > 1)
            {
LABEL_69:
              if (v14 == 2)
              {
                *&a1[v31] = v35;
              }

              else
              {
                *&a1[v31] = v35;
              }

              return;
            }
          }

          else
          {
            *a1 = v34;
            if (v14 > 1)
            {
              goto LABEL_69;
            }
          }

LABEL_66:
          if (v14)
          {
            a1[v31] = v35;
          }

          return;
        }

        *a1 = v36;
        a1[2] = BYTE2(v36);
      }

      if (v14 > 1)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }

    if (v32 >= 2)
    {
      v14 = v33;
    }

    else
    {
      v14 = 0;
    }

LABEL_31:
    if (v18 >= a2)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v14 = 1;
  if (v18 < a2)
  {
    goto LABEL_32;
  }

LABEL_41:
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v31] = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v14)
  {
    goto LABEL_47;
  }

  a1[v31] = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v12 == v18)
  {
    if (v10 < 0x7FFFFFFF)
    {
      v38 = (&a1[v27] & ~v23);
      if (v43 != v12)
      {
        v42 = (&v38[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v42 = a2 & 0x7FFFFFFF;
          v42[1] = 0;
        }

        else
        {
          v42[1] = (a2 - 1);
        }

        return;
      }

      v37 = *(v9 + 56);
      v39 = (a2 + 1);
    }

    else
    {
      v37 = *(v9 + 56);
      v38 = a1;
      v39 = a2;
    }

    v41 = v10;
    v19 = v8;
    goto LABEL_61;
  }

  if (v17 != v18)
  {
    v37 = *(v20 + 56);
    v38 = ((v30 + (&a1[v28] & ~v24)) & ~v25);
    v39 = a2;
    v41 = v21;
LABEL_61:

    v37(v38, v39, v41, v19);
    return;
  }

  v40 = *(v15 + 56);

  v40(&a1[v28] & ~v24, (a2 + 1));
}

uint64_t PropertyListTypeDecoder.__allocating_init(version:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t PropertyListTypeDecoder.init(version:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

uint64_t sub_1DEF5F790(uint64_t a1, uint64_t a2)
{
  if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(a2, v11), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
  {

    sub_1DEE12F7C(a2, v11);
    return swift_dynamicCast();
  }

  else
  {
    sub_1DEE12F7C(a2, v12);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    v7 = MEMORY[0x1E69E7CC0];
    v8 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    v11[0] = v7;
    v11[1] = v8;
    v12[4] = v5;
    v13 = v6;
    sub_1DEE1DC98();
    v10 = swift_allocObject();
    sub_1DEE1DCEC(v11, v10 + 16);
    sub_1DEF8DBC8();
    return sub_1DEE1EBB4(v11);
  }
}

uint64_t sub_1DEF5F91C(uint64_t a1)
{
  sub_1DEE12F7C((v1 + 2), v13);
  if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(v13, &v10), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
  {

    sub_1DEE117C0(v13, &v10);
    return swift_dynamicCast();
  }

  else
  {
    v4 = *v1;
    sub_1DEE12F7C(v13, v11);
    v5 = v1[6];
    v6 = *(v1 + 56);

    v7 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    *&v10 = v4;
    *(&v10 + 1) = v7;
    v11[4] = v5;
    v12 = v6;
    sub_1DEE1DC98();
    v9 = swift_allocObject();
    sub_1DEE1DCEC(&v10, v9 + 16);
    sub_1DEF8DBC8();
    sub_1DEE1EBB4(&v10);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_1DEF5FCA8()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1DEF5FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1DEE22CCC(a1, MEMORY[0x1E69E6370], a2, a5, a6, MEMORY[0x1E69E6370], &v10, a7);
  if (!v7)
  {
    v8 = v10;
  }

  return v8 & 1;
}

double sub_1DEF5FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1DEE22CCC(a1, MEMORY[0x1E69E63B0], a2, a5, a6, MEMORY[0x1E69E63B0], &v9, a7);
  if (!v7)
  {
    return v9;
  }

  return result;
}

float sub_1DEF5FD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1DEE22CCC(a1, MEMORY[0x1E69E6448], a2, a5, a6, MEMORY[0x1E69E6448], &v9, a7);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1DEF5FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DEF5FE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DEF5FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

void sub_1DEF5FEC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v17 = sub_1DEE1EA18(0, &qword_1ED786078, 0x1E695DEC8);
  v18 = a4 & 1;
  sub_1DEE22CCC(a1, v17, a2, a5, a6, v17, &v25, a7);
  if (!v8)
  {
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    *(inited + 56) = a6;
    *(inited + 64) = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
    v25 = a2;
    v22 = v19;

    sub_1DEE2262C(inited);
    v23 = v25;
    a8[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a8[4] = sub_1DEE247F0();
    v24 = swift_allocObject();
    *a8 = v24;

    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = v22;
    *(v24 + 40) = a3;
    *(v24 + 48) = v18;
  }
}

uint64_t sub_1DEF603C8()
{
  result = sub_1DEF8E568();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF60418()
{
  result = sub_1DEF8E578();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF604C0()
{
  result = sub_1DEF8E5A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF60510()
{
  result = sub_1DEF8E588();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF6067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void sub_1DEF606D4(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  v5 = v1[3];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_1DEF60058();
}

uint64_t sub_1DEF60770()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1DEF607A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_1DEF607B4()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1DEF607C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DEF8E2E8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1DEF6081C(uint64_t a1)
{
  v2 = sub_1DEE2453C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF60858(uint64_t a1)
{
  v2 = sub_1DEE2453C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF60894()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v8 = MEMORY[0x1E69E6370];
    v10 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v1;
    *(v15 + 40) = 0;
    v28[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v28, v27);
    v4 = MEMORY[0x1E69E6370];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      v5 = v29;
      v0[1] = v1 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v18 = v4;
      v20 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1DEF907F0;
      v27[0] = v1;
      v22 = sub_1DEF8E2E8();
      v24 = v23;
      *(v21 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v21 + 64) = sub_1DEE2453C();
      v25 = swift_allocObject();
      *(v21 + 32) = v25;
      *(v25 + 16) = v22;
      *(v25 + 24) = v24;
      *(v25 + 32) = v1;
      *(v25 + 40) = 0;
      v27[0] = v20;

      sub_1DEE2262C(v21);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return v5 & 1;
}

uint64_t sub_1DEF60C1C()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v8 = MEMORY[0x1E69E6158];
    v10 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v1;
    *(v15 + 40) = 0;
    v28[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v28, v27);
    v4 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = v26;
      v0[1] = v1 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v18 = v4;
      v20 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1DEF907F0;
      v27[0] = v1;
      v22 = sub_1DEF8E2E8();
      v24 = v23;
      *(v21 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v21 + 64) = sub_1DEE2453C();
      v25 = swift_allocObject();
      *(v21 + 32) = v25;
      *(v25 + 16) = v22;
      *(v25 + 24) = v24;
      *(v25 + 32) = v1;
      *(v25 + 40) = 0;
      v27[0] = v20;

      sub_1DEE2262C(v21);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

uint64_t sub_1DEF60FA0()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v8 = MEMORY[0x1E69E63B0];
    v10 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v1;
    *(v15 + 40) = 0;
    v27[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v27, v26);
    v4 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      v0[1] = v1 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v18 = v4;
      v20 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1DEF907F0;
      v26[0] = v1;
      v22 = sub_1DEF8E2E8();
      v24 = v23;
      *(v21 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v21 + 64) = sub_1DEE2453C();
      v25 = swift_allocObject();
      *(v21 + 32) = v25;
      *(v25 + 16) = v22;
      *(v25 + 24) = v24;
      *(v25 + 32) = v1;
      *(v25 + 40) = 0;
      v26[0] = v20;

      sub_1DEE2262C(v21);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  return result;
}

uint64_t sub_1DEF61324()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v8 = MEMORY[0x1E69E6448];
    v10 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v1;
    *(v15 + 40) = 0;
    v27[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v27, v26);
    v4 = MEMORY[0x1E69E6448];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      v0[1] = v1 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v18 = v4;
      v20 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1DEF907F0;
      v26[0] = v1;
      v22 = sub_1DEF8E2E8();
      v24 = v23;
      *(v21 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v21 + 64) = sub_1DEE2453C();
      v25 = swift_allocObject();
      *(v21 + 32) = v25;
      *(v25 + 16) = v22;
      *(v25 + 24) = v24;
      *(v25 + 32) = v1;
      *(v25 + 40) = 0;
      v26[0] = v20;

      sub_1DEE2262C(v21);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  return result;
}

uint64_t sub_1DEF616A8(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v9 = a1;
    v11 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v13 = sub_1DEF8E2E8();
    v15 = v14;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v3;
    *(v16 + 40) = 0;
    v28[0] = v11;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v28, v27);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = v29;
      v1[1] = v3 + 1;
    }

    else
    {
      v17 = sub_1DEF8DF68();
      swift_allocError();
      v19 = v18;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v19 = a1;
      v21 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1DEF907F0;
      v27[0] = v3;
      v23 = sub_1DEF8E2E8();
      v25 = v24;
      *(v22 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v22 + 64) = sub_1DEE2453C();
      v26 = swift_allocObject();
      *(v22 + 32) = v26;
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      *(v26 + 32) = v3;
      *(v26 + 40) = 0;
      v27[0] = v21;

      sub_1DEE2262C(v22);
      sub_1DEF8DF48();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

uint64_t sub_1DEF61A20(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v9 = a1;
    v11 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v13 = sub_1DEF8E2E8();
    v15 = v14;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v3;
    *(v16 + 40) = 0;
    v28[0] = v11;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v28, v27);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = v29;
      v1[1] = v3 + 1;
    }

    else
    {
      v17 = sub_1DEF8DF68();
      swift_allocError();
      v19 = v18;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v19 = a1;
      v21 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1DEF907F0;
      v27[0] = v3;
      v23 = sub_1DEF8E2E8();
      v25 = v24;
      *(v22 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v22 + 64) = sub_1DEE2453C();
      v26 = swift_allocObject();
      *(v22 + 32) = v26;
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      *(v26 + 32) = v3;
      *(v26 + 40) = 0;
      v27[0] = v21;

      sub_1DEE2262C(v22);
      sub_1DEF8DF48();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

uint64_t sub_1DEF61D98(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v9 = a1;
    v11 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v13 = sub_1DEF8E2E8();
    v15 = v14;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v3;
    *(v16 + 40) = 0;
    v28[0] = v11;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v28, v27);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v28);
      result = v29;
      v1[1] = v3 + 1;
    }

    else
    {
      v17 = sub_1DEF8DF68();
      swift_allocError();
      v19 = v18;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v19 = a1;
      v21 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1DEF907F0;
      v27[0] = v3;
      v23 = sub_1DEF8E2E8();
      v25 = v24;
      *(v22 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v22 + 64) = sub_1DEE2453C();
      v26 = swift_allocObject();
      *(v22 + 32) = v26;
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      *(v26 + 32) = v3;
      *(v26 + 40) = 0;
      v27[0] = v21;

      sub_1DEE2262C(v22);
      sub_1DEF8DF48();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v28);
    }
  }

  return result;
}

uint64_t sub_1DEF62110(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v9 = a1;
    v11 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v13 = sub_1DEF8E2E8();
    v15 = v14;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v3;
    *(v16 + 40) = 0;
    v29[0] = v11;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v29, v28);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      result = v27;
      v1[1] = v3 + 1;
    }

    else
    {
      v17 = sub_1DEF8DF68();
      swift_allocError();
      v19 = v18;
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v19 = a1;
      v21 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v22 = swift_initStackObject();
      *(v22 + 16) = xmmword_1DEF907F0;
      v28[0] = v3;
      v23 = sub_1DEF8E2E8();
      v25 = v24;
      *(v22 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v22 + 64) = sub_1DEE2453C();
      v26 = swift_allocObject();
      *(v22 + 32) = v26;
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      *(v26 + 32) = v3;
      *(v26 + 40) = 0;
      v28[0] = v21;

      sub_1DEE2262C(v22);
      sub_1DEF8DF48();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  return result;
}

uint64_t sub_1DEF62488(unint64_t *a1, uint64_t *a2)
{
  v3 = sub_1DEE1EA18(0, a1, a2);
  v4 = v2[1];
  v5 = v2[2];
  if (v4 >= [v5 count])
  {
    v8 = sub_1DEF8DF68();
    swift_allocError();
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
    *v10 = v3;
    v12 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v14 = sub_1DEF8E2E8();
    v16 = v15;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v17 = swift_allocObject();
    *(inited + 32) = v17;
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    *(v17 + 32) = v4;
    *(v17 + 40) = 0;
    v29[0] = v12;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    return swift_willThrow();
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v29, v28);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v29);
      result = v29[15];
      v2[1] = v4 + 1;
    }

    else
    {
      v18 = sub_1DEF8DF68();
      swift_allocError();
      v20 = v19;
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
      *v20 = v3;
      v22 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_1DEF907F0;
      v28[0] = v4;
      v24 = sub_1DEF8E2E8();
      v26 = v25;
      *(v23 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v23 + 64) = sub_1DEE2453C();
      v27 = swift_allocObject();
      *(v23 + 32) = v27;
      *(v27 + 16) = v24;
      *(v27 + 24) = v26;
      *(v27 + 32) = v4;
      *(v27 + 40) = 0;
      v28[0] = v22;

      sub_1DEE2262C(v23);
      sub_1DEF8DF48();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  return result;
}

BOOL sub_1DEF62810()
{
  v1 = sub_1DEF8DF68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF62488(&qword_1ED7860B0, 0x1E695DFB0);
  if (!v0)
  {

    return v0 == 0;
  }

  v12 = v0;
  v7 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v0 == 0;
  }

  if ((*(v2 + 88))(v5, v1) != *MEMORY[0x1E69E6AF8])
  {
    (*(v2 + 8))(v5, v1);
    goto LABEL_7;
  }

  (*(v2 + 96))(v5, v1);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  v9 = sub_1DEF8DF58();
  (*(*(v9 - 8) + 8))(&v5[v8], v9);

  return v0 == 0;
}

uint64_t sub_1DEF629FC()
{
  result = sub_1DEF62488(&qword_1ED7860B8, 0x1E695DF20);
  if (!v1)
  {
    v3 = *v0;
    v4 = v0[3];
    v5 = *(v0 + 32);
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder();

    swift_getWitnessTable();
    return sub_1DEF8E238();
  }

  return result;
}

uint64_t sub_1DEF62CEC()
{
  result = sub_1DEF8E318();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62D3C()
{
  result = sub_1DEF8E328();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62DE4()
{
  result = sub_1DEF8E358();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62E34()
{
  result = sub_1DEF8E338();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62F74()
{
  result = sub_1DEF8E368();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_1DEF63034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1DEF62488(&qword_1ED786078, 0x1E695DEC8);
  if (!v4)
  {
    v9 = result;
    v10 = *v3;
    v11 = v3[3];
    v12 = *(v3 + 32);
    a3[3] = a1;
    a3[4] = a2;
    v13 = swift_allocObject();
    *a3 = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = 0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;
    *(v13 + 48) = v12;
  }

  return result;
}