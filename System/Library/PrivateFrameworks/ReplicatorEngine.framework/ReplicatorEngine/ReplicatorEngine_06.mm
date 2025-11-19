uint64_t sub_1DEEA3AD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E12CB3B0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1DEF38588(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DEEA3B70(uint64_t a1)
{
  v2 = sub_1DEF8D3F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1DEE2BAF8(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1E12CB3B0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1DEF386D8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1DEEA3D0C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1DEF8DE68();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for Zone.ID();
  v5 = sub_1DEE2BAF8(&qword_1ECDE2EA0, type metadata accessor for Zone.ID);
  result = MEMORY[0x1E12CB3B0](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E12CB6E0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1DEF389B8(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1DEF8DE68();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DEEA3E78(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DEEACAE0();
  result = MEMORY[0x1E12CB3B0](v2, &type metadata for DeviceType, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1DEF38C28(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1DEEA3F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1DEEA86E0();
  result = MEMORY[0x1E12CB3B0](v2, &type metadata for NetworkBrowser.MonitoredPersona, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_1DEF39434(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1DEEA3F9C(uint64_t a1)
{
  v2 = type metadata accessor for PairingRelationship();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1DEE2BAF8(&qword_1ECDE3110, type metadata accessor for PairingRelationship);
  result = MEMORY[0x1E12CB3B0](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1DEEACA70(v13, v6, type metadata accessor for PairingRelationship);
      sub_1DEF395BC(v9, v6);
      sub_1DEE273A0(v9, type metadata accessor for PairingRelationship);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

void sub_1DEEA412C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v66 = a4;
  v54[0] = a2;
  v55 = a1;
  v5 = type metadata accessor for DeviceDescriptor();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x1EEE9AC00](v64);
  v73 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = v54 - v11;
  v12 = type metadata accessor for PairingRelationship();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D3F8();
  v17 = *(*(v16 - 8) + 64);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v71 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a3;
  v68 = 0;
  v22 = 0;
  v25 = a3[8];
  v24 = a3 + 8;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v58 = v19 + 16;
  v59 = v19;
  v56 = (v19 + 8);
  v57 = v29;
  v61 = v15;
  v60 = v18;
  while (v28)
  {
    v31 = __clz(__rbit64(v28));
    v70 = (v28 - 1) & v28;
LABEL_13:
    v34 = v31 | (v22 << 6);
    v35 = v67;
    v36 = *(v59 + 16);
    v37 = v71;
    v36(v71, v67[6] + *(v59 + 72) * v34, v16, v20);
    v38 = v35[7];
    v39 = *(v62 + 72);
    v69 = v34;
    sub_1DEEACA70(v38 + v39 * v34, v15, type metadata accessor for PairingRelationship);
    v40 = v72;
    (v36)(v72, v37, v16);
    v41 = v64;
    sub_1DEEACA70(v15, v40 + *(v64 + 48), type metadata accessor for PairingRelationship);
    v42 = *(v66 + 520);
    v43 = v73;
    sub_1DEE17214(v40, v73, &unk_1ECDE4350, &qword_1DEF93400);
    v44 = v43 + *(v41 + 48);
    v45 = v65;
    sub_1DEEACA70(v44 + *(v63 + 20), v65, type metadata accessor for DeviceDescriptor);
    sub_1DEE273A0(v44, type metadata accessor for PairingRelationship);
    v46 = *(v45 + 48);
    sub_1DEE273A0(v45, type metadata accessor for DeviceDescriptor);
    if (*(v42 + 16) && (v47 = *(v42 + 40), sub_1DEF8E7A8(), MEMORY[0x1E12CBF90](v46), v48 = sub_1DEF8E7F8(), v49 = -1 << *(v42 + 32), v50 = v48 & ~v49, ((*(v42 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) != 0))
    {
      v51 = ~v49;
      while (*(*(v42 + 48) + v50) != v46)
      {
        v50 = (v50 + 1) & v51;
        if (((*(v42 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1DEE171B4(v72, &unk_1ECDE4350, &qword_1DEF93400);
      v30 = *v56;
      v16 = v60;
      (*v56)(v73, v60);
      v15 = v61;
      sub_1DEE273A0(v61, type metadata accessor for PairingRelationship);
      v30(v71, v16);
      v29 = v57;
      v28 = v70;
    }

    else
    {
LABEL_18:
      sub_1DEE171B4(v72, &unk_1ECDE4350, &qword_1DEF93400);
      v52 = *v56;
      v16 = v60;
      (*v56)(v73, v60);
      v15 = v61;
      sub_1DEE273A0(v61, type metadata accessor for PairingRelationship);
      v52(v71, v16);
      *(v55 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v53 = __OFADD__(v68++, 1);
      v29 = v57;
      v28 = v70;
      if (v53)
      {
        __break(1u);
LABEL_21:
        sub_1DEEC6068(v55, v54[0], v68, v67);
        return;
      }
    }
  }

  v32 = v22;
  while (1)
  {
    v22 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v22 >= v29)
    {
      goto LABEL_21;
    }

    v33 = v24[v22];
    ++v32;
    if (v33)
    {
      v31 = __clz(__rbit64(v33));
      v70 = (v33 - 1) & v33;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1DEEA4718(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(*(a3 + 48) + 8 * v16) + 32);
    if (a4[2] != v17[2] || a4[3] != v17[3])
    {
      result = sub_1DEF8E4E8();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    result = a4[4];
    if (result != v17[4] || a4[5] != v17[5])
    {
      result = sub_1DEF8E4E8();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v22 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
      return sub_1DEEC64F8(v22, a2, v6, a3);
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1DEEC64F8(v22, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DEEA4880(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  v19[1] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;
  v14 = swift_retain_n();
  if (v11 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v15 = sub_1DEEA1078(v18, v12, a1, a2, a4);
      MEMORY[0x1E12CCD70](v18, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v14);
  bzero(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v13);

  v15 = a3(v19 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0), v12, a1, a2);

  if (v7)
  {
    swift_willThrow();
  }

LABEL_6:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void *sub_1DEEA4A50(uint64_t a1, void *a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E69E7CC8];
    v15 = MEMORY[0x1E69E7CC8];
    sub_1DEF8E038();

    v4 = sub_1DEF8E0D8();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for Record.ID(0);
      v6 = v5;
      v3 = MEMORY[0x1E69E7CC8];
      do
      {
        v13 = v6;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        if (!v14)
        {
          break;
        }

        v7 = *(v14 + 32);
        v8 = a2[2] == v7[2] && a2[3] == v7[3];
        if (v8 || (sub_1DEF8E4E8()) && (a2[4] == v7[4] ? (v9 = a2[5] == v7[5]) : (v9 = 0), v9 || (sub_1DEF8E4E8()))
        {
          v10 = v3[2];
          if (v3[3] <= v10)
          {
            sub_1DEEB1864(v10 + 1, 1);
          }

          v3 = v15;
          sub_1DEF41EC0(v14, v13);
        }

        else
        {
        }

        v6 = sub_1DEF8E0D8();
      }

      while (v6);
    }

    sub_1DEE2774C();
  }

  else
  {

    v3 = sub_1DEEA4880(a1, a2, sub_1DEEA4718, sub_1DEEA4718);
  }

  return v3;
}

uint64_t sub_1DEEA4C70(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v13 = MEMORY[0x1E69E7CC8];
    sub_1DEF8E038();
    v5 = sub_1DEF8E0D8();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for Record.ID(0);
      v7 = v6;
      do
      {
        v11 = v7;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        if (!v12)
        {
          break;
        }

        v8 = a2(v12, v11);

        if (v8)
        {
          v9 = *(v4 + 16);
          if (*(v4 + 24) <= v9)
          {
            sub_1DEEB1864(v9 + 1, 1);
          }

          v4 = v13;
          sub_1DEF41EC0(v12, v11);
        }

        else
        {
        }

        v7 = sub_1DEF8E0D8();
      }

      while (v7);
    }

    sub_1DEE2774C();
  }

  else
  {
    v4 = sub_1DEEA55A0(a1, a2, a3, sub_1DEEC64F8);
  }

  return v4;
}

uint64_t sub_1DEEA4E50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = *(*(a3 + 48) + 8 * v18);
    result = *(v19 + 32);
    if (result != a4 || *(v19 + 40) != a5)
    {
      result = sub_1DEF8E4E8();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
      return sub_1DEEC6904(v23, a2, v8, a3);
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_1DEEC6904(v23, a2, v8, a3);
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEA4F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_1DEEA111C(v15, v9, a1, a2, a3);
      MEMORY[0x1E12CCD70](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_1DEEA4E50(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t sub_1DEEA5168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1E69E7CC8];
    v30 = MEMORY[0x1E69E7CC8];
    sub_1DEF8E038();

    v6 = sub_1DEF8E0D8();
    if (v6)
    {
      v7 = v6;
      type metadata accessor for Zone.ID();
      v8 = v7;
      do
      {
        v29 = v8;
        swift_dynamicCast();
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        if (!v28)
        {
          break;
        }

        v20 = v28[4] == a2 && v28[5] == a3;
        if (v20 || (sub_1DEF8E4E8() & 1) != 0)
        {
          v21 = *(v5 + 16);
          if (*(v5 + 24) <= v21)
          {
            sub_1DEEB20C0(v21 + 1, 1);
          }

          v5 = v30;
          v9 = *(v30 + 40);
          sub_1DEF8E7A8();
          v10 = v28[2];
          v11 = v28[3];
          sub_1DEF8D9B8();
          v12 = v28[4];
          v13 = v28[5];
          sub_1DEF8D9B8();
          result = sub_1DEF8E7F8();
          v15 = v30 + 64;
          v16 = -1 << *(v30 + 32);
          v17 = result & ~v16;
          v18 = v17 >> 6;
          if (((-1 << v17) & ~*(v30 + 64 + 8 * (v17 >> 6))) != 0)
          {
            v19 = __clz(__rbit64((-1 << v17) & ~*(v30 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = 0;
            v23 = (63 - v16) >> 6;
            do
            {
              if (++v18 == v23 && (v22 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v24 = v18 == v23;
              if (v18 == v23)
              {
                v18 = 0;
              }

              v22 |= v24;
              v25 = *(v15 + 8 * v18);
            }

            while (v25 == -1);
            v19 = __clz(__rbit64(~v25)) + (v18 << 6);
          }

          *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
          *(*(v30 + 48) + 8 * v19) = v28;
          *(*(v30 + 56) + 8 * v19) = v29;
          ++*(v30 + 16);
        }

        else
        {
        }

        v8 = sub_1DEF8E0D8();
      }

      while (v8);
    }

    sub_1DEE2774C();

    return v5;
  }

  else
  {

    v27 = sub_1DEEA4F9C(a1, a2, a3);

    return v27;
  }
}

uint64_t sub_1DEEA542C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v22 = result;
  v23 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(*(a3 + 48) + 8 * v15);
    v17 = *(*(a3 + 56) + 8 * v15);

    v18 = a4(v16, v17);

    if (v18)
    {
      *(v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return a6(v22, a2, v23, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return a6(v22, a2, v23, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEA55A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = ((1 << v9) + 63) >> 6;
  if ((v9 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v12 = v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v12, v11);
    result = sub_1DEEA542C(v12, v10, v8, a2, a3, a4);
    if (v4)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v15 = swift_slowAlloc();
  v16 = sub_1DEEA11C0(v15, v10, v8, a2, a3, a4);
  result = MEMORY[0x1E12CCD70](v15, -1, -1);
  if (!v4)
  {
    result = v16;
  }

LABEL_4:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEEA572C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E69E7CC8];
    v27 = MEMORY[0x1E69E7CC8];
    sub_1DEF8E038();
    v5 = sub_1DEF8E0D8();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for Zone.ID();
      v7 = v6;
      do
      {
        v26 = v7;
        swift_dynamicCast();
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        if (!v25)
        {
          break;
        }

        v8 = a2(v25, v26);

        if (v8)
        {
          v9 = *(v4 + 16);
          if (*(v4 + 24) <= v9)
          {
            sub_1DEEB20C0(v9 + 1, 1);
          }

          v4 = v27;
          v10 = *(v27 + 40);
          sub_1DEF8E7A8();
          v11 = v25[2];
          v12 = v25[3];
          sub_1DEF8D9B8();
          v13 = v25[4];
          v14 = v25[5];
          sub_1DEF8D9B8();
          result = sub_1DEF8E7F8();
          v16 = v27 + 64;
          v17 = -1 << *(v27 + 32);
          v18 = result & ~v17;
          v19 = v18 >> 6;
          if (((-1 << v18) & ~*(v27 + 64 + 8 * (v18 >> 6))) != 0)
          {
            v20 = __clz(__rbit64((-1 << v18) & ~*(v27 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v21 = 0;
            v22 = (63 - v17) >> 6;
            do
            {
              if (++v19 == v22 && (v21 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v23 = v19 == v22;
              if (v19 == v22)
              {
                v19 = 0;
              }

              v21 |= v23;
              v24 = *(v16 + 8 * v19);
            }

            while (v24 == -1);
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          }

          *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
          *(*(v27 + 48) + 8 * v20) = v25;
          *(*(v27 + 56) + 8 * v20) = v26;
          ++*(v27 + 16);
        }

        else
        {
        }

        v7 = sub_1DEF8E0D8();
      }

      while (v7);
    }

    sub_1DEE2774C();
  }

  else
  {
    v4 = sub_1DEEA55A0(a1, a2, a3, sub_1DEEC6904);
  }

  return v4;
}

uint64_t sub_1DEEA59EC(unint64_t a1, uint64_t a2)
{
  v49 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v11 = 0;
  v12 = (v4 + 64) >> 6;
  v45 = (a2 + 672);
  v41 = MEMORY[0x1E69E7CC0];
  v42 = v3;
  v43 = v6;
  v44 = v12;
LABEL_8:
  v13 = v11;
  while ((v6 & 0x8000000000000000) != 0)
  {
    if (!sub_1DEF8E0D8())
    {
      goto LABEL_35;
    }

    type metadata accessor for Zone.ID();
    swift_dynamicCast();
    v20 = v48[0];
    type metadata accessor for Replicator.WeakSource();
    v18 = v20;
    swift_dynamicCast();
    v19 = v48[0];
    v11 = v13;
    v16 = v5;
    if (!v18)
    {
LABEL_35:
      sub_1DEE2774C();
      return v41;
    }

LABEL_19:
    swift_beginAccess();
    v21 = *v45;
    v46 = v16;
    v47 = v19;
    if (!*(*v45 + 16))
    {
      goto LABEL_29;
    }

    v22 = *(v18 + 32);
    v23 = *(v18 + 40);
    v24 = v18;
    v25 = *(v21 + 40);
    sub_1DEF8E7A8();

    sub_1DEF8D9B8();
    v26 = sub_1DEF8E7F8();
    v27 = -1 << *(v21 + 32);
    v28 = v26 & ~v27;
    if (((*(v21 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
LABEL_28:

      v3 = v42;
      v6 = v43;
      v12 = v44;
      v18 = v24;
      v19 = v47;
LABEL_29:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v33 = *(v19 + 24);
        ObjectType = swift_getObjectType();
        v35 = v18;
        v36 = *(v33 + 16);

        v36(v48, ObjectType, v33);
        v18 = v35;
        swift_unknownObjectRelease();
        v37 = v48[0];
        Strong = v48[1];
      }

      else
      {

        v37 = 0;
      }

      type metadata accessor for Zone();
      v38 = swift_allocObject();
      v38[2] = v18;
      v38[3] = v37;
      v38[4] = Strong;

      MEMORY[0x1E12CB260](v39);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1DEF8DAF8();
      }

      result = sub_1DEF8DB18();
      v41 = v49;
      v5 = v46;
      goto LABEL_8;
    }

    v29 = ~v27;
    while (1)
    {
      v30 = (*(v21 + 48) + 16 * v28);
      v31 = *v30 == v22 && v30[1] == v23;
      if (v31 || (sub_1DEF8E4E8() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v21 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v13 = v11;
    v5 = v16;
    v3 = v42;
    v6 = v43;
    v12 = v44;
  }

  v14 = v13;
  v15 = v5;
  v11 = v13;
  if (v5)
  {
LABEL_15:
    v16 = (v15 - 1) & v15;
    v17 = (v11 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(*(v6 + 48) + v17);
    v19 = *(*(v6 + 56) + v17);

    if (!v18)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_35;
    }

    v15 = *(v3 + 8 * v11);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEA5DF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3 + 64;
  v4 = 1 << *(a3 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a3 + 64);
  v35 = (a4 + 672);
  result = swift_beginAccess();
  v8 = 0;
  v9 = 0;
  v10 = (v4 + 63) >> 6;
  v34 = v10;
  while (2)
  {
    v33 = v8;
    while (1)
    {
      if (!v6)
      {
        v12 = v9;
        while (1)
        {
          v9 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v9 >= v10)
          {
            return sub_1DEEC663C(a1, a2, v33, a3);
          }

          v13 = *(v31 + 8 * v9);
          ++v12;
          if (v13)
          {
            v11 = __clz(__rbit64(v13));
            v6 = (v13 - 1) & v13;
            goto LABEL_14;
          }
        }

        __break(1u);
        return result;
      }

      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_14:
      v14 = v11 | (v9 << 6);
      v15 = *v35;
      if (!*(*v35 + 16))
      {
        break;
      }

      v38 = v6;
      v16 = *(a3 + 48) + 32 * v14;
      v17 = *(v16 + 8);
      v18 = *(v16 + 24);
      v36 = v14;
      v19 = (*(a3 + 56) + 48 * v14);
      v20 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = *(v15 + 40);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v24 = sub_1DEF8E7F8();
      v25 = -1 << *(v15 + 32);
      v26 = v24 & ~v25;
      if (((*(v15 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
LABEL_23:

        v10 = v34;
        v6 = v38;
        v14 = v36;
        break;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = (*(v15 + 48) + 16 * v26);
        v29 = *v28 == v21 && v28[1] == v22;
        if (v29 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v15 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v10 = v34;
      v6 = v38;
    }

    *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v8 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1DEEC663C(a1, a2, v33, a3);
}

uint64_t sub_1DEEA615C()
{
  v1 = *(type metadata accessor for DeviceDescriptor() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1DEE5D938(v0 + v2, v4, v6, v7);
}

uint64_t sub_1DEEA6210()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1DEE5EF34(v1, v2);
}

uint64_t sub_1DEEA6318(uint64_t (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = sub_1DEE6BA78(v3, &v11, &v9);
  return a1(v7);
}

uint64_t sub_1DEEA6380()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1DEE6ADBC(v1);
}

uint64_t sub_1DEEA63A8(uint64_t (*a1)(uint64_t))
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 40);
  v8 = *(v1 + 32);
  v9 = v5;
  v6 = sub_1DEE6C510(v3, &v8);
  return a1(v6);
}

uint64_t sub_1DEEA6428(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v79 = a2;
  v80 = a1;
  v6 = type metadata accessor for DeviceDescriptor();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v77 = (&v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = sub_1DEF8D378();
  v9 = *(v87 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v73 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v14 = *(*(v98 - 8) + 64);
  MEMORY[0x1EEE9AC00](v98);
  v89 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v102 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v73 - v19;
  v97 = type metadata accessor for PairingRelationship();
  v95 = *(v97 - 1);
  v20 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DEF8D3F8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a3;
  v28 = a3[8];
  v27 = a3 + 8;
  v26 = v28;
  v29 = 1 << *(v27 - 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v78 = a4;
  result = swift_beginAccess();
  v81 = 0;
  v33 = 0;
  v88 = (v29 + 63) >> 6;
  v93 = v23 + 16;
  v94 = v23;
  v84 = (v9 + 16);
  v83 = (v9 + 8);
  v92 = (v23 + 8);
  v82 = v27;
  while (v31)
  {
    v34 = __clz(__rbit64(v31));
    v99 = (v31 - 1) & v31;
LABEL_12:
    v37 = v34 | (v33 << 6);
    v38 = v96;
    v39 = *(v94 + 16);
    v40 = v100;
    v39(v100, v96[6] + *(v94 + 72) * v37, v22);
    v41 = v38[7];
    v42 = *(v95 + 72);
    v90 = v37;
    v43 = v101;
    sub_1DEEACA70(v41 + v42 * v37, v101, type metadata accessor for PairingRelationship);
    v44 = v106;
    v45 = v40;
    v46 = v22;
    v39(v106, v45, v22);
    v47 = v98;
    sub_1DEEACA70(v43, v44 + *(v98 + 48), type metadata accessor for PairingRelationship);
    v48 = v102;
    sub_1DEE17214(v44, v102, &unk_1ECDE4350, &qword_1DEF93400);
    v49 = v48 + *(v47 + 48);
    v50 = (v49 + v97[8]);
    v52 = *v50;
    v51 = v50[1];
    sub_1DEE4F8C0(*v50, v51);
    sub_1DEE273A0(v49, type metadata accessor for PairingRelationship);
    if (v51)
    {
      sub_1DEE4F8C0(v52, v51);
      v53 = v51;
    }

    else
    {
      v53 = 0;
    }

    v54 = v92;
    sub_1DEE4F8D4(v52, v53);
    sub_1DEE4F8D4(0, 0);
    sub_1DEE4F8D4(v52, v53);
    v55 = *v54;
    v56 = v46;
    (*v54)(v102, v46);
    if (v51)
    {
      goto LABEL_4;
    }

    v57 = v89;
    sub_1DEE17214(v106, v89, &unk_1ECDE4350, &qword_1DEF93400);
    v58 = v57 + *(v98 + 48);
    v59 = *v84;
    v60 = v58 + v97[6];
    v91 = v55;
    v61 = v86;
    v62 = v87;
    v59(v86, v60, v87);
    sub_1DEE273A0(v58, type metadata accessor for PairingRelationship);
    v63 = v85;
    sub_1DEF8D2E8();
    v64 = *v83;
    (*v83)(v61, v62);
    v91(v57, v56);
    sub_1DEF8D348();
    LOBYTE(v57) = sub_1DEF8D308();
    v65 = v61;
    v55 = v91;
    v64(v65, v62);
    v64(v63, v62);
    v27 = v82;
    if ((v57 & 1) == 0)
    {
LABEL_4:
      sub_1DEE171B4(v106, &unk_1ECDE4350, &qword_1DEF93400);
      sub_1DEE273A0(v101, type metadata accessor for PairingRelationship);
      result = v55(v100, v56);
      v22 = v56;
      v31 = v99;
    }

    else
    {
      sub_1DEE29594(v78 + 344, &v103);
      v76 = v104;
      v75 = v105;
      v73 = __swift_project_boxed_opaque_existential_1(&v103, v104);
      v66 = v89;
      sub_1DEE17214(v106, v89, &unk_1ECDE4350, &qword_1DEF93400);
      v67 = v55;
      v68 = v66 + *(v98 + 48);
      v69 = v77;
      sub_1DEEACA70(v68 + v97[5], v77, type metadata accessor for DeviceDescriptor);
      v74 = type metadata accessor for PairingRelationship;
      sub_1DEE273A0(v68, type metadata accessor for PairingRelationship);
      v70 = *v69;
      v71 = v69[1];

      sub_1DEE273A0(v69, type metadata accessor for DeviceDescriptor);
      LOBYTE(v70) = (*(v75 + 56))(v70, v71, v76);

      sub_1DEE171B4(v106, &unk_1ECDE4350, &qword_1DEF93400);
      v67(v66, v56);
      __swift_destroy_boxed_opaque_existential_1(&v103);
      sub_1DEE273A0(v101, v74);
      result = v67(v100, v56);
      v22 = v56;
      v31 = v99;
      if ((v70 & 1) == 0)
      {
        *(v80 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
        if (__OFADD__(v81++, 1))
        {
          __break(1u);
          return sub_1DEEC6068(v80, v79, v81, v96);
        }
      }
    }
  }

  v35 = v33;
  while (1)
  {
    v33 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v33 >= v88)
    {
      return sub_1DEEC6068(v80, v79, v81, v96);
    }

    v36 = v27[v33];
    ++v35;
    if (v36)
    {
      v34 = __clz(__rbit64(v36));
      v99 = (v36 - 1) & v36;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEA6CF8(uint64_t a1, unint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v67 = a1;
  v65 = sub_1DEF8D698();
  v9 = *(v65 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DEF8D6D8();
  v62 = *(v64 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  v60 = a4;
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v21 = a3[29];
  *v19 = v21;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v59 = a5;

  v22 = v21;
  LOBYTE(a5) = sub_1DEF8D7B8();
  (*(v16 + 8))(v19, v15);
  if (a5)
  {
    if (qword_1ECDE2E58 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v61 = v9;
  v23 = sub_1DEF8D508();
  __swift_project_value_buffer(v23, qword_1ECDF6028);

  v24 = sub_1DEF8D4D8();
  v25 = sub_1DEF8DCB8();

  v26 = os_log_type_enabled(v24, v25);
  v66 = v22;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v70 = v28;
    *v27 = 136446210;
    v29 = v67;
    *(v27 + 4) = sub_1DEE12A5C(v67, a2, &v70);
    _os_log_impl(&dword_1DEE0F000, v24, v25, "Pairing with device: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1E12CCD70](v28, -1, -1);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }

  else
  {

    v29 = v67;
  }

  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  sub_1DEE8E124(a3, v29, a2, &v70, sub_1DEEAC938, v20, aBlock);
  v30 = aBlock[0];
  if (LOBYTE(aBlock[0]) != 8)
  {
    sub_1DEE46550(v70, *(&v70 + 1));
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1DEEAC938;
    *(v39 + 24) = v20;
    *(v39 + 32) = v30;
    aBlock[4] = sub_1DEEACFE8;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_807;
    v40 = _Block_copy(aBlock);

    sub_1DEF8D6B8();
    v68 = MEMORY[0x1E69E7CC0];
    sub_1DEE2BAF8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v41 = v63;
    v42 = v65;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v14, v41, v40);
    _Block_release(v40);
    (*(v61 + 8))(v41, v42);
    (*(v62 + 8))(v14, v64);
    goto LABEL_10;
  }

  v31 = *(&v70 + 1);
  if (*(&v70 + 1))
  {
    v33 = *(&v72 + 1);
    v32 = v73;
    v35 = *(&v71 + 1);
    v34 = v72;
    v36 = v71;
    v37 = v70;
    v67 = v20;
    v38 = swift_allocObject();
    *(v38 + 16) = a3;
    *(v38 + 24) = v37;
    *(v38 + 32) = v31;
    *(v38 + 40) = v36;
    *(v38 + 48) = v35;
    *(v38 + 56) = v34;
    *(v38 + 57) = aBlock[0];
    *(v38 + 60) = *(aBlock + 3);
    *(v38 + 64) = v33;
    *(v38 + 72) = v32;

    sub_1DEE2C448(0xD000000000000013, 0x80000001DEF9C1D0, v66, sub_1DEEACF94, v38, 0.0);
LABEL_10:
  }

  v44 = sub_1DEF8D4D8();
  v45 = sub_1DEF8DC98();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock[0] = v47;
    *v46 = 136315394;
    v48 = a3[32];
    if (v48)
    {
      v49 = a3[31];
      v50 = v48;
    }

    else
    {
      v51 = a3[22];
      v52 = a3[23];
      ObjectType = swift_getObjectType();
      v54 = (*(v52 + 16))(ObjectType, v52);
      if (v55)
      {
        v49 = v54;
      }

      else
      {
        v49 = 0xD000000000000016;
      }

      if (v55)
      {
        v50 = v55;
      }

      else
      {
        v50 = 0x80000001DEF9BCA0;
      }
    }

    v56 = sub_1DEE12A5C(v49, v50, aBlock);

    *(v46 + 4) = v56;
    *(v46 + 12) = 2080;
    *(v46 + 14) = sub_1DEE12A5C(v67, a2, aBlock);
    _os_log_impl(&dword_1DEE0F000, v44, v45, "%s Cannot pair with a device that has no handshakeDescriptor: %s, privacy: .public)", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v47, -1, -1);
    MEMORY[0x1E12CCD70](v46, -1, -1);
  }

  sub_1DEEAA8E8();
  v57 = swift_allocError();
  *v58 = 1;
  v60(v57, 1);
}

uint64_t sub_1DEEA7504(uint64_t *a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v30 = a3;
  v7 = type metadata accessor for PairingRelationship();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_1DEF8D788();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a2[29];
  *v20 = v21;
  (*(v16 + 104))(v20, *MEMORY[0x1E69E8020], v15, v18);

  v22 = v21;
  LOBYTE(v21) = sub_1DEF8D7B8();
  result = (*(v16 + 8))(v20, v15);
  if (v21)
  {
    swift_beginAccess();
    sub_1DEE29594((a2 + 24), v31);
    v24 = v32;
    v25 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v26 = *a1;
    v27 = a1[1];
    MetadataStoring.pairingRelationship(remoteDeviceID:)(*a1, v27, v24, *(v25 + 8), v14);
    LODWORD(v24) = (*(v8 + 48))(v14, 1, v7);
    sub_1DEE171B4(v14, &qword_1ECDE3C18, &unk_1DEF94D20);
    __swift_destroy_boxed_opaque_existential_1(v31);
    if (v24 == 1)
    {
      v31[0] = 0;
      v31[1] = 0;
      v28 = v29;
      sub_1DEE5F828(a1, v31, 0, 1, v29);
      sub_1DEE273A0(v28, type metadata accessor for PairingRelationship);
    }

    sub_1DEEA6CF8(v26, v27, a2, v30, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEA7808(uint64_t a1)
{
  v3 = type metadata accessor for Message();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(v1 + 232);
  sub_1DEEACA70(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  sub_1DEEAB218(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for Message);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1DEEABEF8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_759;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEEA7A18(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for PairingRelationship();
  if (*(a2 + *(result + 20) + 32) > 7uLL)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v34 = MEMORY[0x1E69E7CC0];
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = a1 + 40;
      v30 = a1 + 40;
      do
      {
        v14 = (v13 + 16 * v12);
        for (i = v12; ; ++i)
        {
          if (i >= v11)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            return result;
          }

          v12 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_20;
          }

          v32 = *(v14 - 1);
          v33 = *v14;
          sub_1DEEAA9E4();

          v16 = sub_1DEF8DC38();
          if (v16[2] == 2)
          {
            break;
          }

          v14 += 2;
          if (v12 == v11)
          {
            return v6;
          }
        }

        v17 = v16[4];
        v18 = v16[5];
        v19 = v16[6];
        v20 = v16[7];
        v21 = v16;

        MEMORY[0x1E12CB150](v17, v18, v19, v20);

        if (v21[2] < 2uLL)
        {
          goto LABEL_21;
        }

        v22 = v21[8];
        v23 = v21[9];
        v24 = v21[10];
        v25 = v21[11];
        v28 = v24;
        v29 = v22;

        MEMORY[0x1E12CB150](v29, v23, v28, v25);

        type metadata accessor for Zone.ID.Pool();
        sub_1DEF4A4A0();

        MEMORY[0x1E12CB260](v26);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v27 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DEF8DAF8();
        }

        result = sub_1DEF8DB18();
        v6 = v34;
        v13 = v30;
      }

      while (v12 != v11);
    }
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = MEMORY[0x1E69E7CC0];
    if (v5)
    {
      v31 = MEMORY[0x1E69E7CC0];
      sub_1DEF8DFD8();
      type metadata accessor for Zone.ID.Pool();
      v7 = (a1 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        sub_1DEF4A4A0();

        sub_1DEF8DFB8();
        v10 = *(v31 + 16);
        sub_1DEF8DFE8();
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
        v7 += 2;
        --v5;
      }

      while (v5);
      return v31;
    }
  }

  return v6;
}

uint64_t sub_1DEEA7D34(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DEF8D1E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Message();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v19 = *(v2 + 232);
  sub_1DEEACA70(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  (*(v6 + 16))(v8, a2, v5);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = (v11 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v2;
  sub_1DEEAB218(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for Message);
  (*(v6 + 32))(v14 + v13, v8, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1DEEA8AC0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_1DEE46D40;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_481;
  v16 = _Block_copy(aBlock);

  dispatch_sync(v19, v16);
  _Block_release(v16);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s16ReplicatorEngine0A0C11syncService_25availableDevicesDidChangeyAA13SyncServicing_p_SaySSGtF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 232);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEEA89D8;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_461;
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

uint64_t keypath_get_181Tm@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 232);
  result = sub_1DEF8DD18();
  *a2 = v5;
  return result;
}

uint64_t sub_1DEEA84FC()
{
  result = sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DEEA8584()
{
  result = qword_1ECDE3C50;
  if (!qword_1ECDE3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C50);
  }

  return result;
}

unint64_t sub_1DEEA85DC()
{
  result = qword_1ECDE3C58;
  if (!qword_1ECDE3C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C58);
  }

  return result;
}

unint64_t sub_1DEEA8634()
{
  result = qword_1ECDE3C60;
  if (!qword_1ECDE3C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C60);
  }

  return result;
}

unint64_t sub_1DEEA868C()
{
  result = qword_1ECDE3C68;
  if (!qword_1ECDE3C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C68);
  }

  return result;
}

unint64_t sub_1DEEA86E0()
{
  result = qword_1ECDE3C70;
  if (!qword_1ECDE3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3C70);
  }

  return result;
}

_OWORD *sub_1DEEA8734(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

unint64_t sub_1DEEA8774()
{
  result = qword_1ECDE3CA0;
  if (!qword_1ECDE3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3CA0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1DEEA8818(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DEE1BFF4(a1, a2);
  }

  return a1;
}

uint64_t sub_1DEEA882C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEEA889C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DEEA88B0(uint64_t (*a1)(uint64_t))
{
  v6 = 0;
  v4 = 0;
  v5 = 0;
  v2 = sub_1DEE6E9BC(&v6, &v4);
  return a1(v2);
}

uint64_t objectdestroy_170Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DEEA8948(uint64_t (*a1)(uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = sub_1DEE6D230(v3, v4, v5);
  return a1(v7);
}

unint64_t sub_1DEEA8990@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 16);
  result = sub_1DEE5D178(v3);
  *a1 = result;
  *(a1 + 8) = v6 & 1;
  return result;
}

void sub_1DEEA89D8()
{
  if (*(*(v0 + 32) + 176) == *(v0 + 16))
  {
    sub_1DEE56A48(7);
  }
}

void sub_1DEEA8A18(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1DEEA8A74(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_1DEEA8AC0()
{
  v1 = *(type metadata accessor for Message() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1DEF8D1E8() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1DEE7056C(v5, v0 + v2, v6);
}

uint64_t objectdestroy_492Tm()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_1DEE1BFA0(v0[3], v2);
  }

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DEEA8D44(unint64_t a1, uint64_t a2)
{
  v45 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  v11 = 0;
  v12 = (v4 + 64) >> 6;
  v42 = (a2 + 672);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v12;
  v40 = v6;
  v41 = v3;
LABEL_8:
  v13 = v11;
  while (1)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      if (!sub_1DEF8E0D8())
      {
        goto LABEL_35;
      }

      type metadata accessor for Zone.ID();
      swift_dynamicCast();
      v18 = v44[0];
      type metadata accessor for Replicator.WeakSource();
      swift_dynamicCast();
      v19 = v44[0];
      v11 = v13;
      v16 = v5;
      if (!v18)
      {
LABEL_35:
        sub_1DEE2774C();
        return v38;
      }

      goto LABEL_18;
    }

    v14 = v13;
    v15 = v5;
    v11 = v13;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v16 = (v15 - 1) & v15;
    v17 = (v11 << 9) | (8 * __clz(__rbit64(v15)));
    v18 = *(*(v6 + 48) + v17);
    v19 = *(*(v6 + 56) + v17);

    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_18:
    swift_beginAccess();
    v20 = *v42;
    if (*(*v42 + 16))
    {
      v43 = v16;
      v21 = *(v18 + 32);
      v22 = *(v18 + 40);
      v23 = *(v20 + 40);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v24 = sub_1DEF8E7F8();
      v25 = -1 << *(v20 + 32);
      v26 = v24 & ~v25;
      if ((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(v20 + 48) + 16 * v26);
          v29 = *v28 == v21 && v28[1] == v22;
          if (v29 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v20 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v31 = *(v19 + 24);
          ObjectType = swift_getObjectType();
          v33 = *(v31 + 16);

          v33(v44, ObjectType, v31);
          swift_unknownObjectRelease();
          v34 = v44[0];
          Strong = v44[1];
        }

        else
        {

          v34 = 0;
        }

        v6 = v40;
        v3 = v41;
        v12 = v39;
        type metadata accessor for Zone();
        v35 = swift_allocObject();
        v35[2] = v18;
        v35[3] = v34;
        v35[4] = Strong;

        MEMORY[0x1E12CB260](v36);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v37 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1DEF8DAF8();
        }

        result = sub_1DEF8DB18();
        v38 = v45;
        v5 = v43;
        goto LABEL_8;
      }

LABEL_27:

      v13 = v11;
      v5 = v16;
      v6 = v40;
      v3 = v41;
      v12 = v39;
    }

    else
    {

      v13 = v11;
      v5 = v16;
    }
  }

  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= v12)
    {
      goto LABEL_35;
    }

    v15 = *(v3 + 8 * v11);
    ++v14;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEEA9148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion();
  v110 = *(v4 - 8);
  v5 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v107 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v101 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D18, &qword_1DEF91628);
  v10 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v104 = (&v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v103 = (&v101 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v101 - v15;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v101 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v101 - v24);
  v26 = a1 + 64;
  v27 = *(a2 + 32);
  v28 = 1 << *(a1 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(a1 + 64);
  v31 = (v28 + 63) >> 6;
  v108 = a1;
  v109 = a1 + 64;
  if (v27 > 7)
  {

    v68 = 0;
    v34 = MEMORY[0x1E69E7CC8];
    v102 = v31;
    while (v30)
    {
      v112 = v34;
LABEL_39:
      v70 = __clz(__rbit64(v30)) | (v68 << 6);
      v71 = *(a1 + 56);
      v72 = *(*(a1 + 48) + 8 * v70);
      v73 = v111;
      v105 = *(v110 + 72);
      v74 = v106;
      sub_1DEEACA70(v71 + v105 * v70, v106 + *(v111 + 48), type metadata accessor for ZoneVersion);
      *v74 = v72;
      v75 = v103;
      sub_1DEE17214(v74, v103, &qword_1ECDE3D18, &qword_1DEF91628);
      v76 = *(v73 + 48);
      v78 = *(*v75 + 16);
      v77 = *(*v75 + 24);

      v113 = v78;
      v114 = v77;
      sub_1DEE273A0(v75 + v76, type metadata accessor for ZoneVersion);
      MEMORY[0x1E12CB180](14906, 0xE200000000000000);
      sub_1DEE17214(v74, v75, &qword_1ECDE3D18, &qword_1DEF91628);
      v79 = *(v73 + 48);
      v80 = *(*v75 + 32);
      v81 = *(*v75 + 40);

      MEMORY[0x1E12CB180](v80, v81);

      sub_1DEE273A0(v75 + v79, type metadata accessor for ZoneVersion);
      v83 = v113;
      v82 = v114;
      v84 = v104;
      sub_1DEE17214(v74, v104, &qword_1ECDE3D18, &qword_1DEF91628);
      v85 = *v84;

      sub_1DEEAB218(v84 + *(v73 + 48), v107, type metadata accessor for ZoneVersion);
      v86 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v113 = v86;
      v89 = sub_1DEE13224(v83, v82);
      v90 = v86[2];
      v91 = (v88 & 1) == 0;
      v92 = v90 + v91;
      if (__OFADD__(v90, v91))
      {
        goto LABEL_51;
      }

      v93 = v88;
      if (v86[3] >= v92)
      {
        v31 = v102;
        v26 = v109;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEB87E4();
        }
      }

      else
      {
        sub_1DEEB36B8(v92, isUniquelyReferenced_nonNull_native);
        v94 = sub_1DEE13224(v83, v82);
        v31 = v102;
        v26 = v109;
        if ((v93 & 1) != (v95 & 1))
        {
          goto LABEL_55;
        }

        v89 = v94;
      }

      v96 = v105;
      v34 = v113;
      if (v93)
      {
        sub_1DEE1B474(v107, v113[7] + v89 * v105, type metadata accessor for ZoneVersion);
      }

      else
      {
        v113[(v89 >> 6) + 8] |= 1 << v89;
        v97 = (v34[6] + 16 * v89);
        *v97 = v83;
        v97[1] = v82;
        sub_1DEEAB218(v107, v34[7] + v89 * v96, type metadata accessor for ZoneVersion);
        v98 = v34[2];
        v66 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (v66)
        {
          goto LABEL_52;
        }

        v34[2] = v99;
      }

      v30 &= v30 - 1;
      sub_1DEE171B4(v106, &qword_1ECDE3D18, &qword_1DEF91628);
      a1 = v108;
    }

    while (1)
    {
      v69 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        break;
      }

      if (v69 >= v31)
      {
LABEL_48:

        return v34;
      }

      v30 = *(v26 + 8 * v69);
      ++v68;
      if (v30)
      {
        v112 = v34;
        v68 = v69;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v103 = v22;
    v104 = v23;
    v105 = v9;
    v107 = 0x80000001DEF9C1B0;

    v32 = 0;
    v112 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v33 = v32;
      if (!v30)
      {
        break;
      }

      while (1)
      {
        v32 = v33;
LABEL_11:
        v35 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
        v36 = v35 | (v32 << 6);
        v37 = *(a1 + 56);
        v38 = *(*(a1 + 48) + 8 * v36);
        v39 = v111;
        v106 = *(v110 + 72);
        sub_1DEEACA70(v37 + v106 * v36, v25 + *(v111 + 48), type metadata accessor for ZoneVersion);
        *v25 = v38;
        v40 = v25;
        sub_1DEE17214(v25, v20, &qword_1ECDE3D18, &qword_1DEF91628);
        v41 = *(v39 + 48);
        v43 = *(*v20 + 32);
        v42 = *(*v20 + 40);

        if (v43 == 0xD000000000000011 && v107 == v42)
        {
          break;
        }

        v45 = sub_1DEF8E4E8();

        sub_1DEE273A0(&v20[v41], type metadata accessor for ZoneVersion);
        if (v45)
        {
          goto LABEL_19;
        }

        v25 = v40;
        sub_1DEE171B4(v40, &qword_1ECDE3D18, &qword_1DEF91628);
        v33 = v32;
        a1 = v108;
        v26 = v109;
        if (!v30)
        {
          goto LABEL_7;
        }
      }

      sub_1DEE273A0(&v20[v41], type metadata accessor for ZoneVersion);
LABEL_19:
      v25 = v40;
      v46 = v104;
      sub_1DEE17214(v40, v104, &qword_1ECDE3D18, &qword_1DEF91628);
      v47 = *v46;
      v48 = *(v47 + 16);
      v49 = *(v47 + 24);

      v50 = v103;
      sub_1DEE17214(v25, v103, &qword_1ECDE3D18, &qword_1DEF91628);
      v51 = *v50;

      sub_1DEEAB218(v50 + *(v111 + 48), v105, type metadata accessor for ZoneVersion);
      v52 = v112;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v113 = v52;
      v101 = v48;
      v102 = v49;
      v55 = sub_1DEE13224(v48, v49);
      v56 = v52[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_53;
      }

      v59 = v54;
      v26 = v109;
      if (v52[3] >= v58)
      {
        if ((v53 & 1) == 0)
        {
          sub_1DEEB87E4();
        }
      }

      else
      {
        sub_1DEEB36B8(v58, v53);
        v60 = sub_1DEE13224(v101, v102);
        if ((v59 & 1) != (v61 & 1))
        {
          goto LABEL_55;
        }

        v55 = v60;
      }

      if (v59)
      {

        v62 = v113;
        sub_1DEE1B474(v105, v113[7] + v55 * v106, type metadata accessor for ZoneVersion);
        sub_1DEE171B4(v25, &qword_1ECDE3D18, &qword_1DEF91628);
      }

      else
      {
        v62 = v113;
        v113[(v55 >> 6) + 8] |= 1 << v55;
        v63 = (v62[6] + 16 * v55);
        v64 = v102;
        *v63 = v101;
        v63[1] = v64;
        sub_1DEEAB218(v105, v62[7] + v55 * v106, type metadata accessor for ZoneVersion);
        sub_1DEE171B4(v25, &qword_1ECDE3D18, &qword_1DEF91628);
        v65 = v62[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_54;
        }

        v62[2] = v67;
      }

      a1 = v108;
      v112 = v62;
      sub_1DEE273A0(v104 + *(v111 + 48), type metadata accessor for ZoneVersion);
    }

LABEL_7:
    v34 = v112;
    while (1)
    {
      v32 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v32 >= v31)
      {
        goto LABEL_48;
      }

      v30 = *(v26 + 8 * v32);
      ++v33;
      if (v30)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t sub_1DEEA9A9C(void *a1, char a2)
{
  v5 = *(type metadata accessor for ReplicatorMessage.Handshake.Request(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for SessionManager.Session() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1DEE7EA84(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), v2 + v9, (v2 + v10), *(v2 + ((v10 + 63) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 63) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DEEA9BF8(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    a1 = 0;
    v5 = 0;
  }

  return v3(a1, v5);
}

void sub_1DEEA9C34()
{
  v1 = *(type metadata accessor for ReplicatorMessage.Handshake.Request(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for SessionManager.Session() - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DEE7EFD0(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), v0 + v5, v0 + v6, *(v0 + ((v6 + 63) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v6 + 63) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1DEEA9D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ZoneVersion();
  v90 = *(v4 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v89 = &v83 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D60, &qword_1DEF91678);
  v9 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v83 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v83 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v83 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v83 - v17);
  v19 = *(a2 + 32);
  v20 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;
  v91 = a1;

  v87 = v24;
  v88 = a1 + 64;
  if (v19 <= 7)
  {
    v25 = 0;
    v26 = MEMORY[0x1E69E7CC8];
    v85 = "publishPairingRelationships";
    while (1)
    {
      if (!v23)
      {
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_46;
          }

          if (v27 >= v24)
          {
            goto LABEL_44;
          }

          v23 = *(v20 + 8 * v27);
          ++v25;
          if (v23)
          {
            v25 = v27;
            break;
          }
        }
      }

      v28 = __clz(__rbit64(v23)) | (v25 << 6);
      v29 = v92;
      v30 = (*(v91 + 48) + 16 * v28);
      v31 = *v30;
      v32 = v30[1];
      v33 = *(v90 + 72);
      sub_1DEEACA70(*(v91 + 56) + v33 * v28, v18 + *(v92 + 48), type metadata accessor for ZoneVersion);
      *v18 = v31;
      v18[1] = v32;
      type metadata accessor for Zone.ID.Pool();

      v34 = sub_1DEF4A4A0();
      v35 = v86;
      sub_1DEE17214(v18, v86, &qword_1ECDE3D60, &qword_1DEF91678);
      v36 = *(v35 + 8);

      sub_1DEEAB218(v35 + *(v29 + 48), v89, type metadata accessor for ZoneVersion);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v95 = v26;
      v39 = sub_1DEEAF20C(v34);
      v40 = v26[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_47;
      }

      v43 = v38;
      if (v26[3] >= v42)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v26 = v95;
          if (v38)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1DEEB8A3C();
          v26 = v95;
          if (v43)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1DEEB3A30(v42, isUniquelyReferenced_nonNull_native);
        v44 = sub_1DEEAF20C(v34);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_52;
        }

        v39 = v44;
        v26 = v95;
        if (v43)
        {
LABEL_5:
          sub_1DEE1B474(v89, v26[7] + v39 * v33, type metadata accessor for ZoneVersion);

          goto LABEL_6;
        }
      }

      v26[(v39 >> 6) + 8] |= 1 << v39;
      *(v26[6] + 8 * v39) = v34;
      sub_1DEEAB218(v89, v26[7] + v39 * v33, type metadata accessor for ZoneVersion);
      v46 = v26[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_50;
      }

      v26[2] = v48;
LABEL_6:
      v23 &= v23 - 1;
      sub_1DEE171B4(v18, &qword_1ECDE3D60, &qword_1DEF91678);
      v24 = v87;
      v20 = v88;
    }
  }

  v49 = 0;
  v26 = MEMORY[0x1E69E7CC8];
  v85 = v13;
  while (v23)
  {
LABEL_31:
    v51 = __clz(__rbit64(v23)) | (v49 << 6);
    v52 = *(v91 + 56);
    v53 = (*(v91 + 48) + 16 * v51);
    v55 = *v53;
    v54 = v53[1];
    v89 = *(v90 + 72);
    sub_1DEEACA70(v52 + v89 * v51, &v13[*(v92 + 48)], type metadata accessor for ZoneVersion);
    *v13 = v55;
    *(v13 + 1) = v54;
    v95 = v55;
    v96 = v54;
    v93 = 14906;
    v94 = 0xE200000000000000;
    sub_1DEEAA9E4();

    v56 = sub_1DEF8DC38();
    if (v56[2] == 2)
    {
      v57 = v56[4];
      v58 = v56[5];
      v59 = v56[6];
      v60 = v56[7];
      v61 = v56;

      MEMORY[0x1E12CB150](v57, v58, v59, v60);

      if (v61[2] < 2uLL)
      {
        goto LABEL_48;
      }

      v62 = v61[8];
      v63 = v61[9];
      v65 = v61[10];
      v64 = v61[11];

      MEMORY[0x1E12CB150](v62, v63, v65, v64);

      type metadata accessor for Zone.ID.Pool();
      v66 = sub_1DEF4A4A0();

      v67 = v83;
      sub_1DEE17214(v85, v83, &qword_1ECDE3D60, &qword_1DEF91678);
      v68 = *(v67 + 8);

      v69 = v84;
      sub_1DEEAB218(v67 + *(v92 + 48), v84, type metadata accessor for ZoneVersion);
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v95 = v26;
      v72 = sub_1DEEAF20C(v66);
      v73 = v26[2];
      v74 = (v71 & 1) == 0;
      v75 = v73 + v74;
      if (__OFADD__(v73, v74))
      {
        goto LABEL_49;
      }

      v76 = v71;
      if (v26[3] >= v75)
      {
        if ((v70 & 1) == 0)
        {
          sub_1DEEB8A3C();
        }
      }

      else
      {
        sub_1DEEB3A30(v75, v70);
        v77 = sub_1DEEAF20C(v66);
        if ((v76 & 1) != (v78 & 1))
        {
          goto LABEL_52;
        }

        v72 = v77;
      }

      v79 = v89;
      v26 = v95;
      if (v76)
      {
        sub_1DEE1B474(v69, v95[7] + v72 * v89, type metadata accessor for ZoneVersion);
      }

      else
      {
        v95[(v72 >> 6) + 8] |= 1 << v72;
        *(v26[6] + 8 * v72) = v66;
        sub_1DEEAB218(v69, v26[7] + v72 * v79, type metadata accessor for ZoneVersion);
        v80 = v26[2];
        v47 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (v47)
        {
          goto LABEL_51;
        }

        v26[2] = v81;
      }

      v24 = v87;
      v20 = v88;
      v13 = v85;
    }

    else
    {
    }

    v23 &= v23 - 1;
    sub_1DEE171B4(v13, &qword_1ECDE3D60, &qword_1DEF91678);
  }

  while (1)
  {
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v50 >= v24)
    {
LABEL_44:

      return v26;
    }

    v23 = *(v20 + 8 * v50);
    ++v49;
    if (v23)
    {
      v49 = v50;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  type metadata accessor for Zone.ID();
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

void sub_1DEEAA558(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, char *))
{
  v25 = a2;
  v29 = a4;
  v26 = a1;
  v5 = type metadata accessor for ZoneVersion();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    v21 = *(v30[6] + 8 * v20);
    sub_1DEEACA70(v30[7] + *(v28 + 72) * v20, v8, type metadata accessor for ZoneVersion);

    v23 = v29(v22, v8);
    sub_1DEE273A0(v8, type metadata accessor for ZoneVersion);

    if (v23)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DEEC6DAC(v26, v25, v27, v30);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_15;
    }

    v19 = v11[v9];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DEEAA768(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1DEEA1260(v10, v6, v4, a2);
      MEMORY[0x1E12CCD70](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1DEEAA558(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
}

unint64_t sub_1DEEAA8E8()
{
  result = qword_1ECDE3D28;
  if (!qword_1ECDE3D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3D28);
  }

  return result;
}

unint64_t sub_1DEEAA9E4()
{
  result = qword_1ECDE3D70;
  if (!qword_1ECDE3D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3D70);
  }

  return result;
}

uint64_t objectdestroy_538Tm()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v20 = *(v7 + 8);
  v20(v0 + v3, v6);
  if (*(v0 + v3 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v7 + 48))(&v8[v17], 1, v6))
  {
    v20(&v8[v17], v6);
  }

  v18 = *(v5 + v1[7]);

  return MEMORY[0x1EEE6BDD0](v0, ((v21 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEEAAD34(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for PairingRelationship() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for SessionManager.Session() - 8);
  v14 = *(v4 + 16);
  v15 = v4 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return a4(a1, a2 & 1, v14, v4 + v8, v4 + v11, v15);
}

uint64_t sub_1DEEAAEB8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

uint64_t sub_1DEEAAF18(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PairingRelationship() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for SessionManager.Session() - 8);
  v10 = *(v2 + 16);
  v11 = *(v2 + 24);
  v12 = *(v2 + 32);
  v13 = v2 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return a2(v10, v11, v12, v2 + v4, v2 + v7, v13);
}

uint64_t sub_1DEEAB070(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1DEE1BFF4(a2, a3);
  }

  return result;
}

uint64_t sub_1DEEAB0B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return sub_1DEE1BFA0(a2, a3);
  }

  return result;
}

uint64_t sub_1DEEAB100(void *a1, char a2)
{
  v5 = *(type metadata accessor for SessionManager.Session() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PairingRelationship() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v2 + 16);
  v11 = (v2 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_1DEE8D35C(a1, a2 & 1, v10, v2 + v6, v2 + v9, v12, v13);
}

uint64_t sub_1DEEAB218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEEAB280()
{
  v1 = *(type metadata accessor for SessionManager.Session() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PairingRelationship() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1DEE8D698(v6, v7, v8, v0 + v2, v0 + v5, v10);
}

uint64_t objectdestroy_579Tm()
{
  v1 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v22 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v3;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v21 = *(v7 + 8);
  v21(v0 + v3, v6);
  if (*(v0 + v3 + v1[5] + 8) >= 4uLL)
  {
  }

  v8 = (v5 + v1[6]);
  v9 = *(v8 + 1);

  v10 = *(v8 + 3);

  v11 = *(v8 + 12);

  v12 = *(v8 + 13);

  v13 = *(v8 + 15);
  if (v13 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v8 + 14), v13);
  }

  v14 = *(v8 + 17);

  v15 = *(v8 + 19);

  v16 = *(v8 + 21);

  v17 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v7 + 48))(&v8[v17], 1, v6))
  {
    v21(&v8[v17], v6);
  }

  v18 = *(v5 + v1[7]);

  v19 = *(v5 + v1[8]);

  return MEMORY[0x1EEE6BDD0](v0, ((v22 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1DEEAB5CC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v7, v3 + v6, v8);
}

uint64_t sub_1DEEAB6B0(uint64_t a1, char a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2 & 1, v8, v9);
}

uint64_t objectdestroy_603Tm()
{
  v1 = v0;
  v2 = (type metadata accessor for SessionManager.Session() - 8);
  v40 = *(*v2 + 80);
  v3 = (v40 + 24) & ~v40;
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  v39 = *(*(v5 - 1) + 80);
  v41 = (v3 + v4 + v39) & ~v39;
  v6 = *(*(v5 - 1) + 64);
  v35 = type metadata accessor for PairingRelationship();
  v37 = *(*(v35 - 1) + 80);
  v42 = (v41 + v6 + v37) & ~v37;
  v38 = *(*(v35 - 1) + 64);
  v7 = *(v1 + 16);

  v8 = v1 + v3;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v8, v9);
  v12 = v8 + v2[7];
  v13 = *(v12 + 8);

  v14 = *(v12 + 24);

  v15 = v2[9];
  v16 = sub_1DEF8D378();
  v17 = (*(v16 - 8) + 8);
  v18 = v8 + v15;
  v19 = v1;
  v36 = *v17;
  (*v17)(v18, v16);
  v20 = v1 + v41;
  v11(v1 + v41, v9);
  if (*(v1 + v41 + v5[5] + 8) >= 4uLL)
  {
  }

  v21 = *(v20 + v5[6]);

  v22 = *(v20 + v5[7]);

  v23 = v1 + v42;
  v11(v1 + v42, v9);
  v24 = (v1 + v42 + v35[5]);
  v25 = *(v24 + 1);

  v26 = *(v24 + 3);

  v27 = *(v24 + 12);

  v28 = *(v24 + 13);

  v29 = *(v24 + 15);
  if (v29 >> 60 != 15)
  {
    sub_1DEE1BFA0(*(v24 + 14), v29);
  }

  v30 = *(v24 + 17);

  v31 = *(v24 + 19);

  v32 = *(v24 + 21);

  v33 = *(type metadata accessor for DeviceDescriptor() + 60);
  if (!(*(v10 + 48))(&v24[v33], 1, v9))
  {
    v11(&v24[v33], v9);
  }

  v36(v23 + v35[6], v16);
  v36(v23 + v35[7], v16);
  if (*(v23 + v35[8] + 8) >= 4uLL)
  {
  }

  v36(v23 + v35[9], v16);

  return MEMORY[0x1EEE6BDD0](v19, v42 + v38, v40 | v39 | v37 | 7);
}

uint64_t sub_1DEEABBE8(uint64_t (*a1)(uint64_t, unint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for SessionManager.Session() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for ReplicatorMessage.Handshake.Complete(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PairingRelationship() - 8);
  v9 = *(v1 + 16);
  v10 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return a1(v9, v1 + v3, v1 + v6, v10);
}

uint64_t objectdestroy_505Tm()
{
  v1 = sub_1DEF8D3F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t sub_1DEEABDF0()
{
  v1 = *(sub_1DEF8D3F8() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_1DEEF22F4(v2, v3, v4);
}

uint64_t objectdestroy_737Tm()
{
  v1 = v0[2];

  v2 = v0[4];
  if (v2 >> 60 != 15)
  {
    sub_1DEE1BFA0(v0[3], v2);
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DEEABF24(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t objectdestroy_167Tm(void (*a1)(void))
{
  v3 = v1[2];

  a1(v1[3]);
  v4 = v1[5];

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1DEEAC064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v37 - v8;
  v10 = type metadata accessor for PairingRelationship();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v37 - v15;
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v3 + 232);
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  (*(v17 + 8))(v21, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  sub_1DEE29594(v3 + 192, v39);
  v25 = v40;
  v24 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  MetadataStoring.pairingRelationship(remoteDeviceID:)(a1, a2, v25, *(v24 + 8), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DEE171B4(v9, &qword_1ECDE3C18, &unk_1DEF94D20);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v3 = v38;
  sub_1DEEAB218(v9, v38, type metadata accessor for PairingRelationship);
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v27 = sub_1DEF8D508();
  __swift_project_value_buffer(v27, qword_1ECDF6028);
  v28 = v37;
  sub_1DEEACA70(v3, v37, type metadata accessor for PairingRelationship);
  v29 = sub_1DEF8D4D8();
  v30 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v39[0] = v32;
    *v31 = 136446210;
    sub_1DEF8D3F8();
    sub_1DEE2BAF8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v33 = sub_1DEF8E2E8();
    v35 = v34;
    sub_1DEE273A0(v28, type metadata accessor for PairingRelationship);
    v36 = sub_1DEE12A5C(v33, v35, v39);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1DEE0F000, v29, v30, "Relationship has become unavailable: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1E12CCD70](v32, -1, -1);
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  else
  {

    sub_1DEE273A0(v28, type metadata accessor for PairingRelationship);
  }

  sub_1DEE99638(v3);
  return sub_1DEE273A0(v3, type metadata accessor for PairingRelationship);
}

uint64_t sub_1DEEAC52C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v36 = (a4 + 672);
  result = swift_beginAccess();
  v9 = 0;
  v10 = 0;
  v11 = (v5 + 63) >> 6;
LABEL_6:
  v34 = v9;
  while (v7)
  {
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v15 = v12 | (v10 << 6);
    v16 = *v36;
    if (*(*v36 + 16))
    {
      v37 = v7;
      v17 = *(a3 + 48) + 32 * v15;
      v18 = *(v17 + 8);
      v19 = *(v17 + 24);
      v33 = v15;
      v20 = (*(a3 + 56) + 48 * v15);
      v21 = v20[1];
      v22 = v20[2];
      v23 = v20[3];
      v24 = *(v16 + 40);
      sub_1DEF8E7A8();

      sub_1DEF8D9B8();
      v25 = sub_1DEF8E7F8();
      v26 = -1 << *(v16 + 32);
      v27 = v25 & ~v26;
      if ((*(v16 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v16 + 48) + 16 * v27);
          v30 = *v29 == v22 && v29[1] == v23;
          if (v30 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v16 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        *(a1 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
        v9 = v34 + 1;
        v7 = v37;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_26;
        }

        goto LABEL_6;
      }

LABEL_23:

      v7 = v37;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= v11)
    {
      return sub_1DEEC663C(a1, a2, v34, a3);
    }

    v14 = *(v4 + 8 * v10);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v7 = (v14 - 1) & v14;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t objectdestroy_34Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x1EEE6BDD0](v3, a3, 7);
}

uint64_t objectdestroy_134Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x1EEE6BDD0](v2, 40, 7);
}

unint64_t sub_1DEEAC894(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

unint64_t sub_1DEEAC8A4(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t sub_1DEEAC8B4(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for PairingRelationship() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_1DEE8E940(a1, a2, v6, v7);
}

uint64_t sub_1DEEAC938(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t objectdestroy_124Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];

  v6 = v2[4];

  a1(v2[6]);

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1DEEAC9C8(uint64_t (*a1)(uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v10[0] = *(v1 + 24);
  v10[1] = v4;
  v10[2] = *(v1 + 56);
  v11 = *(v1 + 72);
  v9 = xmmword_1DEF91000;
  v7 = 0;
  v8 = 0;
  v5 = sub_1DEE76BD8(v10, &v9, &v7);
  return a1(v5);
}

void sub_1DEEACA68(unint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1DEE97C64(a1);
}

uint64_t sub_1DEEACA70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEEACAE0()
{
  result = qword_1ECDE35D0;
  if (!qword_1ECDE35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35D0);
  }

  return result;
}

uint64_t sub_1DEEACB34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEEACB54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

unint64_t sub_1DEEACBA4()
{
  result = qword_1ECDE3E70;
  if (!qword_1ECDE3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3E70);
  }

  return result;
}

uint64_t static DeviceDescriptor.localDeviceName.getter()
{
  result = sub_1DEEAEE94();
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v3 = [v2 hostName];
    v4 = sub_1DEF8D948();

    return v4;
  }

  return result;
}

uint64_t static DeviceDescriptor.localSerialNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DEEAEFF8();
  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v5 = v2;
    v6 = v3;
    sub_1DEEAD80C(v2, v3, sub_1DEED002C, a1);
    v4 = 0;
    sub_1DEEA889C(v5, v6);
  }

  v7 = sub_1DEF8D3F8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, v4, 1, v7);
}

uint64_t DeviceDescriptor.init(id:name:protocolVersion:deviceType:screenDescriptor:zones:messageTypes:idsIdentityBlob:marketingName:productType:personaID:serialNumber:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, __int128 *a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *a5;
  v20 = a5[1];
  v21 = *a6;
  v22 = *(a7 + 32);
  v23 = *(a7 + 33);
  *(a9 + 56) = 0u;
  *(a9 + 72) = 0u;
  *(a9 + 88) = 256;
  *(a9 + 112) = xmmword_1DEF90FE0;
  v24 = *(type metadata accessor for DeviceDescriptor() + 60);
  v25 = sub_1DEF8D3F8();
  v77 = a7[1];
  v78 = *a7;
  (*(*(v25 - 8) + 56))(a9 + v24, 1, 1, v25);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v19;
  *(a9 + 40) = v20;
  *(a9 + 48) = v21;
  *(a9 + 72) = v77;
  *(a9 + 56) = v78;
  *(a9 + 88) = v22;
  *(a9 + 89) = v23;
  sub_1DEE2416C(*(a9 + 112), *(a9 + 120));
  *(a9 + 112) = a11;
  *(a9 + 128) = a12;
  *(a9 + 144) = a13;
  *(a9 + 160) = a14;
  *(a9 + 168) = a15;
  v82 = a9;
  v26 = a8;
  sub_1DEEA882C(a16, a9 + v24);
  if (a8 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v28 = 0;
    v86 = v26 & 0xC000000000000001;
    v29 = MEMORY[0x1E69E7CC8];
    v84 = v26 & 0xFFFFFFFFFFFFFF8;
    v30 = v26;
    while (v86)
    {
      v34 = MEMORY[0x1E12CB6E0](v28, v26);
      v26 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_29;
      }

LABEL_9:
      v35 = *(v34 + 16);
      if ((v29 & 0xC000000000000001) != 0)
      {
        if (v29 >= 0)
        {
          v29 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v36 = *(v34 + 16);

        v37 = sub_1DEF8DE68();
        if (__OFADD__(v37, 1))
        {
          goto LABEL_32;
        }

        v29 = sub_1DEEB0948(v29, v37 + 1, &qword_1ECDE4140, &unk_1DEF91C60, type metadata accessor for Zone);
      }

      else
      {
        v38 = *(v34 + 16);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = sub_1DEEAF20C(v35);
      v42 = *(v29 + 16);
      v43 = (v40 & 1) == 0;
      v44 = v42 + v43;
      if (__OFADD__(v42, v43))
      {
        goto LABEL_31;
      }

      v45 = v40;
      if (*(v29 + 24) >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v40)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_1DEEB8404(&qword_1ECDE4140, &unk_1DEF91C60);
          if (v45)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_1DEEB20D4(v44, isUniquelyReferenced_nonNull_native, &qword_1ECDE4140, &unk_1DEF91C60);
        v46 = sub_1DEEAF20C(v35);
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_56;
        }

        v41 = v46;
        if (v45)
        {
LABEL_4:
          v31 = *(v29 + 56);
          v32 = *(v31 + 8 * v41);
          *(v31 + 8 * v41) = v34;

          goto LABEL_5;
        }
      }

      *(v29 + 8 * (v41 >> 6) + 64) |= 1 << v41;
      *(*(v29 + 48) + 8 * v41) = v35;
      *(*(v29 + 56) + 8 * v41) = v34;

      v48 = *(v29 + 16);
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_33;
      }

      *(v29 + 16) = v50;
LABEL_5:
      ++v28;
      v33 = v26 == i;
      v26 = v30;
      if (v33)
      {
        goto LABEL_36;
      }
    }

    if (v28 >= *(v84 + 16))
    {
      goto LABEL_30;
    }

    v34 = *(v26 + 8 * v28 + 32);

    v26 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  v29 = MEMORY[0x1E69E7CC8];
LABEL_36:
  v51 = a10;

  *(v82 + 96) = v29;
  v85 = *(a10 + 16);
  if (!v85)
  {
    v54 = MEMORY[0x1E69E7CC8];
LABEL_52:
    sub_1DEE171B4(a16, &unk_1ECDE3E80, &unk_1DEF90970);

    *(v82 + 104) = v54;
    return result;
  }

  v52 = 0;
  v53 = (a10 + 72);
  v54 = MEMORY[0x1E69E7CC8];
  while (v52 < *(v51 + 16))
  {
    v59 = *(v53 - 5);
    v58 = *(v53 - 4);
    v61 = *(v53 - 3);
    v60 = *(v53 - 2);
    v62 = *(v53 - 1);
    v87 = *v53;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v64 = sub_1DEEAF16C(v59, v58, v61, v60);
    v66 = v54[2];
    v67 = (v65 & 1) == 0;
    v49 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v49)
    {
      goto LABEL_54;
    }

    v69 = v65;
    if (v54[3] < v68)
    {
      sub_1DEEB0D14(v68, v63);
      v64 = sub_1DEEAF16C(v59, v58, v61, v60);
      if ((v69 & 1) != (v70 & 1))
      {
        goto LABEL_57;
      }

LABEL_46:
      if (v69)
      {
        goto LABEL_38;
      }

      goto LABEL_47;
    }

    if (v63)
    {
      goto LABEL_46;
    }

    v75 = v64;
    sub_1DEEB7550();
    v64 = v75;
    if (v69)
    {
LABEL_38:
      v55 = (v54[7] + 48 * v64);
      v56 = v55[1];
      v57 = v55[3];
      *v55 = v59;
      v55[1] = v58;
      v55[2] = v61;
      v55[3] = v60;
      v55[4] = v62;
      v55[5] = v87;

      goto LABEL_39;
    }

LABEL_47:
    v54[(v64 >> 6) + 8] |= 1 << v64;
    v71 = (v54[6] + 32 * v64);
    *v71 = v59;
    v71[1] = v58;
    v71[2] = v61;
    v71[3] = v60;
    v72 = (v54[7] + 48 * v64);
    *v72 = v59;
    v72[1] = v58;
    v72[2] = v61;
    v72[3] = v60;
    v72[4] = v62;
    v72[5] = v87;
    v73 = v54[2];
    v49 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v49)
    {
      goto LABEL_55;
    }

    v54[2] = v74;
LABEL_39:
    ++v52;
    v53 += 6;
    v51 = a10;
    if (v85 == v52)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  type metadata accessor for Zone.ID();
  sub_1DEF8E6E8();
  __break(1u);
LABEL_57:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}

uint64_t DeviceDescriptor.handshakeDescriptor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 160);
  v3 = *(v1 + 168);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = *(v1 + 32);
}

uint64_t sub_1DEEAD80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t, char *)@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for UniformHasher();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s16ReplicatorEngine13UniformHasherVACycfC_0();
  v21 = MEMORY[0x1E12CC160](v20);
  a3(a1, a2, v19);
  if (v4)
  {
    objc_autoreleasePoolPop(v21);
    return sub_1DEEBC6C8(v19, type metadata accessor for UniformHasher);
  }

  else
  {
    v23 = v29;
    objc_autoreleasePoolPop(v21);
    sub_1DEF8D7F8();
    *&v11[*(v8 + 36)] = 16;
    v24 = sub_1DEF7F578(v11);
    sub_1DEE3DF08(v24, v25, v15);
    v26 = sub_1DEF8D3F8();
    v27 = *(v26 - 8);
    result = (*(v27 + 48))(v15, 1, v26);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DEEBC6C8(v19, type metadata accessor for UniformHasher);
      return (*(v27 + 32))(v23, v15, v26);
    }
  }

  return result;
}

uint64_t DeviceDescriptor.shortDescription.getter()
{
  v1 = v0;
  sub_1DEF8DF28();
  MEMORY[0x1E12CB180](540697705, 0xE400000000000000);
  MEMORY[0x1E12CB180](*v1, v1[1]);
  MEMORY[0x1E12CB180](0x203A656D616E203BLL, 0xE800000000000000);
  MEMORY[0x1E12CB180](v1[2], v1[3]);
  MEMORY[0x1E12CB180](0x656369766564203BLL, 0xEE00203A65707954);
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = *(v0 + 48);
  v5 = 0xE300000000000000;
  v6 = 6578544;
  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (v4 != 4)
  {
    v8 = 30324;
    v7 = 0xE200000000000000;
  }

  if (v4 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 6513005;
  if (v4 != 1)
  {
    v10 = 0x656E6F6870;
    v9 = 0xE500000000000000;
  }

  if (*(v0 + 48))
  {
    v3 = v10;
    v2 = v9;
  }

  if (*(v0 + 48) <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (*(v0 + 48) <= 2u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v5;
  }

  MEMORY[0x1E12CB180](v11, v12);

  MEMORY[0x1E12CB180](0xD000000000000013, 0x80000001DEF9C230);
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  sub_1DEE266C0();
  MEMORY[0x1E12CB180](0xD000000000000012, 0x80000001DEF9C320);
  if (v4 == 4)
  {
    v15 = 0x73756E696D726574;
  }

  else
  {
    v15 = 0x647261646E617473;
  }

  MEMORY[0x1E12CB180](v15, 0xE800000000000000);
  MEMORY[0x1E12CB180](0x6E6F73726570203BLL, 0xED0000203A444961);
  if (*(v0 + 168))
  {
    v16 = *(v0 + 160);
    v17 = *(v0 + 168);
  }

  else
  {
    v17 = 0xE300000000000000;
    v16 = 7104878;
  }

  MEMORY[0x1E12CB180](v16, v17);

  return 0;
}

uint64_t DeviceDescriptor.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DeviceDescriptor.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceDescriptor.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DeviceDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

__n128 DeviceDescriptor.protocolVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[2];
  *a1 = result;
  return result;
}

__n128 DeviceDescriptor.protocolVersion.setter(__n128 *a1)
{
  result = *a1;
  v1[2] = *a1;
  return result;
}

__n128 DeviceDescriptor.screenDescriptor.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 89);
  result = *(v1 + 56);
  v5 = *(v1 + 72);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 33) = v3;
  return result;
}

__n128 DeviceDescriptor.screenDescriptor.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 33);
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 56) = *a1;
  *(v1 + 72) = v5;
  *(v1 + 88) = v2;
  *(v1 + 89) = v3;
  return result;
}

uint64_t DeviceDescriptor.zones.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t DeviceDescriptor.messageTypes.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t DeviceDescriptor.idsIdentityBlob.getter()
{
  v1 = *(v0 + 112);
  sub_1DEEA8818(v1, *(v0 + 120));
  return v1;
}

uint64_t DeviceDescriptor.idsIdentityBlob.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1DEE2416C(*(v2 + 112), *(v2 + 120));
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t DeviceDescriptor.marketingName.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t DeviceDescriptor.marketingName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t DeviceDescriptor.productType.getter()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return v1;
}

uint64_t DeviceDescriptor.productType.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 152);

  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return result;
}

uint64_t DeviceDescriptor.personaID.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return v1;
}

uint64_t DeviceDescriptor.personaID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 168);

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t DeviceDescriptor.serialNumber.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DeviceDescriptor() + 60);

  return sub_1DEE205E0(v3, a1);
}

uint64_t DeviceDescriptor.serialNumber.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DeviceDescriptor() + 60);

  return sub_1DEE1E70C(a1, v3);
}

uint64_t DeviceDescriptor.isPlaceholder.getter()
{
  if (*(v0 + 16))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(v0 + 24) == 0xE000000000000000;
  }

  if (v1)
  {
    return 1;
  }

  else
  {
    return sub_1DEF8E4E8();
  }
}

uint64_t DeviceDescriptor.hash(into:)(__int128 *a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - v10;
  v12 = *v1;
  v13 = v1[1];
  sub_1DEF8D9B8();
  v14 = v1[2];
  v15 = v1[3];
  sub_1DEF8D9B8();
  v16 = v1[5];
  MEMORY[0x1E12CBF90](v1[4]);
  MEMORY[0x1E12CBF90](v16);
  MEMORY[0x1E12CBF90](*(v1 + 48));
  if (*(v1 + 89) == 1)
  {
    sub_1DEF8E7C8();
  }

  else
  {
    v17 = *(v1 + 88);
    v18 = v1[10];
    v19 = v1[9];
    v26 = *(v1 + 7);
    v27 = v19;
    v28 = v18;
    v29 = v17 & 1;
    sub_1DEF8E7C8();
    ScreenDescriptor.hash(into:)();
  }

  sub_1DEEBB038(a1, v1[12]);
  sub_1DEEBAE10(a1, v1[13]);
  if (v1[15] >> 60 == 15)
  {
    sub_1DEF8E7C8();
    if (v1[17])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v23 = v1[14];
    sub_1DEF8E7C8();
    sub_1DEF8D288();
    if (v1[17])
    {
LABEL_6:
      v20 = v1[16];
      sub_1DEF8E7C8();
      sub_1DEF8D9B8();
      if (v1[19])
      {
        goto LABEL_7;
      }

LABEL_11:
      sub_1DEF8E7C8();
      if (v1[21])
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  sub_1DEF8E7C8();
  if (!v1[19])
  {
    goto LABEL_11;
  }

LABEL_7:
  v21 = v1[18];
  sub_1DEF8E7C8();
  sub_1DEF8D9B8();
  if (v1[21])
  {
LABEL_8:
    v22 = v1[20];
    sub_1DEF8E7C8();
    sub_1DEF8D9B8();
    goto LABEL_13;
  }

LABEL_12:
  sub_1DEF8E7C8();
LABEL_13:
  v24 = type metadata accessor for DeviceDescriptor();
  sub_1DEE205E0(v1 + *(v24 + 60), v11);
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    return sub_1DEF8E7C8();
  }

  (*(v4 + 32))(v7, v11, v3);
  sub_1DEF8E7C8();
  sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  sub_1DEF8D8C8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DeviceDescriptor.hashValue.getter()
{
  sub_1DEF8E7A8();
  DeviceDescriptor.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE63C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1DEEAE64C()
{
  sub_1DEF8E7A8();
  DeviceDescriptor.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE690()
{
  sub_1DEF8E7A8();
  DeviceDescriptor.hash(into:)(v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE6CC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DEE241D4(*a1);
  v5 = v4;
  if (v3 == sub_1DEE241D4(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DEF8E4E8();
  }

  return v8 & 1;
}

uint64_t sub_1DEEAE754()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEE241D4(v1);
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE7B8()
{
  sub_1DEE241D4(*v0);
  sub_1DEF8D9B8();
}

uint64_t sub_1DEEAE80C()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  sub_1DEE241D4(v1);
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEEAE86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DEEBC584();
  *a2 = result;
  return result;
}

unint64_t sub_1DEEAE89C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DEE241D4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DEEAE8C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DEEBC584();
  *a1 = result;
  return result;
}

uint64_t sub_1DEEAE8FC(uint64_t a1)
{
  v2 = sub_1DEE23F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEEAE938(uint64_t a1)
{
  v2 = sub_1DEE23F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3EC8, &unk_1DEF918A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE23F54();
  sub_1DEF8E858();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  sub_1DEF8E278();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v24) = 1;
    sub_1DEF8E278();
    v24 = *(v3 + 2);
    v28 = 2;
    sub_1DEEBBB54();
    sub_1DEF8E298();
    LOBYTE(v24) = *(v3 + 48);
    v28 = 3;
    sub_1DEEBBBA8();
    sub_1DEF8E298();
    if ((*(v3 + 89) & 1) == 0)
    {
      v15 = *(v3 + 88);
      v16 = v3[10];
      v17 = v3[9];
      v24 = *(v3 + 7);
      v25 = v17;
      v26 = v16;
      v27 = v15 & 1;
      v28 = 4;
      sub_1DEEBBF14();
      sub_1DEF8E298();
    }

    *&v24 = v3[12];
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EA8, &qword_1DEF91890);
    sub_1DEEBBBFC();
    sub_1DEF8E298();
    *&v24 = v3[13];
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3EB8, &qword_1DEF91898);
    sub_1DEE24AE4(&unk_1ECDE2CD8, sub_1DEEBBCE8, sub_1DEEBBD3C);
    sub_1DEF8E298();
    v19 = v3[15];
    if (v19 >> 60 != 15)
    {
      v20 = v3[14];
      *&v24 = v20;
      *(&v24 + 1) = v19;
      v28 = 7;
      sub_1DEE1BFF4(v20, v19);
      sub_1DEEBBEC0();
      sub_1DEF8E298();
      sub_1DEE2416C(v20, v19);
    }

    if (v3[17])
    {
      v21 = v3[16];
      LOBYTE(v24) = 8;
      sub_1DEF8E278();
    }

    if (v3[19])
    {
      v22 = v3[18];
      LOBYTE(v24) = 9;
      sub_1DEF8E278();
    }

    LOBYTE(v24) = 12;
    sub_1DEF8E288();
    v24 = *(v3 + 10);
    v28 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    sub_1DEEBBD90();
    sub_1DEF8E298();
    v23 = *(type metadata accessor for DeviceDescriptor() + 60);
    LOBYTE(v24) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBBE0C();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1DEEAEE94()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v1 = sub_1DEF8D918();

  v2 = [v0 initWithString_];

  v3 = MGCopyAnswer();
  if (!v3)
  {
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v5;
  }

  return 0;
}

uint64_t sub_1DEEAEFF8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v1 = sub_1DEF8D918();

  v2 = [v0 initWithString_];

  v3 = MGCopyAnswer();
  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1DEEAF16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  sub_1DEF8D9B8();
  v10 = sub_1DEF8E7F8();

  return sub_1DEEAF94C(a1, a2, a3, a4, v10);
}

unint64_t sub_1DEEAF20C(void *a1)
{
  v3 = *(v1 + 40);
  sub_1DEF8E7A8();
  v4 = a1[2];
  v5 = a1[3];
  sub_1DEF8D9B8();
  v6 = a1[4];
  v7 = a1[5];
  sub_1DEF8D9B8();
  v8 = sub_1DEF8E7F8();

  return sub_1DEEAFA4C(a1, v8);
}

unint64_t sub_1DEEAF284(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DEF8E018();
  v5 = sub_1DEF8D8B8();

  return sub_1DEEAFB30(a1, v5);
}

unint64_t sub_1DEEAF2E8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](a1);
  v4 = sub_1DEF8E7F8();
  return sub_1DEEB055C(a1, v4);
}

unint64_t sub_1DEEAF350(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1DEF8D3F8();
  sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  v5 = sub_1DEF8D8B8();

  return sub_1DEEAFCC8(a1, v5);
}

unint64_t sub_1DEEAF3E8(void *a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 40);
  sub_1DEF8E7A8();
  v14 = a1[2];
  v15 = a1[3];
  sub_1DEF8D9B8();
  v16 = a1[4];
  v17 = v16[2];
  v18 = v16[3];
  sub_1DEF8D9B8();
  v19 = v16[4];
  v20 = v16[5];

  sub_1DEF8D9B8();

  sub_1DEEBC728(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    MEMORY[0x1E12CBF60](0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x1E12CBF60](1);
    sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
    sub_1DEF8D8C8();
    (*(v5 + 8))(v8, v4);
  }

  v21 = sub_1DEF8E7F8();
  return sub_1DEEAFE88(a1, v21);
}

unint64_t sub_1DEEAF640(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1DEF8DEA8();

  return sub_1DEEB02C4(a1, v5);
}

unint64_t sub_1DEEAF684(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1DEF8E7A8();
  if (a2)
  {
    MEMORY[0x1E12CBF60](1);
    sub_1DEF8D9B8();
  }

  else
  {
    MEMORY[0x1E12CBF60](0);
  }

  v6 = sub_1DEF8E7F8();

  return sub_1DEEB038C(a1, a2, v6);
}

unint64_t sub_1DEEAF718(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DEF8D948();
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();
  v4 = sub_1DEF8E7F8();

  return sub_1DEEB0458(a1, v4);
}

unint64_t sub_1DEEAF7AC(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DEF8E7A8();
  sub_1DEF8E7D8();
  v4 = sub_1DEF8E7F8();
  return sub_1DEEB055C(a1, v4);
}

unint64_t sub_1DEEAF814(char a1)
{
  v3 = *(v1 + 40);
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](a1 & 1);
  v4 = sub_1DEF8E7F8();

  return sub_1DEEB05CC(a1 & 1, v4);
}

unint64_t sub_1DEEAF880(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1DEF8E7A8();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_1DEF8D9B8();
  sub_1DEF8E7C8();
  if (v7)
  {
    sub_1DEF8D9B8();
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  MEMORY[0x1E12CBF90](*(a1 + 32));
  MEMORY[0x1E12CBF90](v8);
  MEMORY[0x1E12CBF90](v9);
  v10 = sub_1DEF8E7F8();

  return sub_1DEEB063C(a1, v10);
}

unint64_t sub_1DEEAF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v16 = v15[2];
      v17 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v19 = v16 == a3 && v17 == a4;
        if (v19 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1DEEAFA4C(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = a1[2];
    v9 = a1[3];
    v10 = *(v2 + 48);
    do
    {
      v11 = *(v10 + 8 * v5);
      v12 = v8 == v11[2] && v9 == v11[3];
      if (v12 || (sub_1DEF8E4E8() & 1) != 0)
      {
        v13 = a1[4] == v11[4] && a1[5] == v11[5];
        if (v13 || (sub_1DEF8E4E8() & 1) != 0)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1DEEAFB30(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1DEF8E018();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1DEF8D908();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DEEAFCC8(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4, v7);
      sub_1DEEBC680(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
      v17 = sub_1DEF8D908();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_1DEEAFE88(uint64_t a1, uint64_t a2)
{
  v5 = sub_1DEF8D3F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE40F0, &unk_1DEF91C20);
  v12 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v14 = &v34 - v13;
  v15 = v2 + 64;
  v44 = v2;
  v16 = -1 << *(v2 + 32);
  v17 = a2 & ~v16;
  if ((*(v2 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v43 = ~v16;
    v40 = v5;
    v41 = OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    v45 = a1;
    v20 = (v6 + 48);
    v34 = (v6 + 32);
    v37 = (v6 + 8);
    v39 = v2 + 64;
    do
    {
      v21 = *(*(v44 + 48) + 8 * v17);
      v22 = v21[2] == v18 && v21[3] == v19;
      if (!v22 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_6;
      }

      v23 = v21[4];
      v24 = *(v45 + 32);
      v25 = v24[2] == v23[2] && v24[3] == v23[3];
      if (!v25 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_6;
      }

      v26 = v24[4] == v23[4] && v24[5] == v23[5];
      if (!v26 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_6;
      }

      v27 = *(v42 + 48);
      sub_1DEEBC728(v21 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v14, type metadata accessor for Record.ID.Ownership);
      sub_1DEEBC728(v45 + v41, &v14[v27], type metadata accessor for Record.ID.Ownership);
      v28 = *v20;
      if ((*v20)(v14, 1, v5) == 1)
      {
        if (v28(&v14[v27], 1, v5) == 1)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = v38;
        sub_1DEEBC728(v14, v38, type metadata accessor for Record.ID.Ownership);
        if (v28(&v14[v27], 1, v5) != 1)
        {
          v30 = &v14[v27];
          v31 = v35;
          (*v34)(v35, v30, v5);
          v36 = sub_1DEF8D3A8();
          v32 = *v37;
          (*v37)(v31, v5);
          v32(v29, v5);
          if (v36)
          {
LABEL_28:
            sub_1DEEBC6C8(v14, type metadata accessor for Record.ID.Ownership);
            return v17;
          }

          sub_1DEEBC6C8(v14, type metadata accessor for Record.ID.Ownership);
          goto LABEL_5;
        }

        (*v37)(v29, v5);
      }

      sub_1DEE171B4(v14, &unk_1ECDE40F0, &unk_1DEF91C20);
LABEL_5:
      v15 = v39;
      v5 = v40;
LABEL_6:
      v17 = (v17 + 1) & v43;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  return v17;
}

unint64_t sub_1DEEB02C4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1DEEBC5D0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E12CB660](v9, a1);
      sub_1DEEBC62C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DEEB038C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_1DEF8E4E8() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1DEEB0458(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DEF8D948();
      v9 = v8;
      if (v7 == sub_1DEF8D948() && v9 == v10)
      {
        break;
      }

      v12 = sub_1DEF8E4E8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DEEB055C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DEEB05CC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1DEEB063C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v23 = *(a1 + 32);
    v21 = a1[6];
    v22 = a1[5];
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[3];
    v20 = a1[2];
    v8 = *(v2 + 48);
    do
    {
      v11 = v8 + 56 * v4;
      v13 = *(v11 + 16);
      v12 = *(v11 + 24);
      v14 = *(v11 + 32);
      v16 = *(v11 + 40);
      v15 = *(v11 + 48);
      v17 = *v11 == v6 && *(v11 + 8) == v5;
      if (!v17 && (sub_1DEF8E4E8() & 1) == 0)
      {
        goto LABEL_11;
      }

      if (v12)
      {
        if (!v7)
        {
          goto LABEL_11;
        }

        v18 = v13 == v20 && v12 == v7;
        if (!v18 && (sub_1DEF8E4E8() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (v7)
      {
        goto LABEL_11;
      }

      if (v14 == v23 && v16 == v22 && v15 == v21)
      {
        return v4;
      }

LABEL_11:
      v4 = (v4 + 1) & v24;
    }

    while (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DEEB07B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
    v2 = sub_1DEF8E138();
    v10 = v2;
    sub_1DEF8E038();
    v3 = sub_1DEF8E0D8();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for Record.ID(0);
      v5 = v4;
      do
      {
        v8 = v5;
        swift_dynamicCast();
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_1DEEB2E10(v6 + 1, 1, &qword_1ECDE40B0, &unk_1DEF95600);
        }

        v2 = v10;
        sub_1DEF41EC0(v9, v8, v10);
        v5 = sub_1DEF8E0D8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DEEB0948(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_1DEF8E138();
    v27 = v8;
    sub_1DEF8E038();
    if (sub_1DEF8E0D8())
    {
      type metadata accessor for Zone.ID();
      do
      {
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v20 = *(v8 + 16);
        if (*(v8 + 24) <= v20)
        {
          sub_1DEEB20D4(v20 + 1, 1, a3, a4);
        }

        v8 = v27;
        v9 = *(v27 + 40);
        sub_1DEF8E7A8();
        v10 = v26[2];
        v11 = v26[3];
        sub_1DEF8D9B8();
        v12 = v26[4];
        v13 = v26[5];
        sub_1DEF8D9B8();
        result = sub_1DEF8E7F8();
        v15 = v27 + 64;
        v16 = -1 << *(v27 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v27 + 64 + 8 * (v17 >> 6))) != 0)
        {
          v19 = __clz(__rbit64((-1 << v17) & ~*(v27 + 64 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v21 = 0;
          v22 = (63 - v16) >> 6;
          do
          {
            if (++v18 == v22 && (v21 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v23 = v18 == v22;
            if (v18 == v22)
            {
              v18 = 0;
            }

            v21 |= v23;
            v24 = *(v15 + 8 * v18);
          }

          while (v24 == -1);
          v19 = __clz(__rbit64(~v24)) + (v18 << 6);
        }

        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v27 + 48) + 8 * v19) = v26;
        *(*(v27 + 56) + 8 * v19) = v25;
        ++*(v27 + 16);
      }

      while (sub_1DEF8E0D8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v8;
}

uint64_t sub_1DEEB0BA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4100, &qword_1DEF91C30);
    v2 = sub_1DEF8E138();
    v10 = v2;
    sub_1DEF8E038();
    v3 = sub_1DEF8E0D8();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for Record.ID(0);
      v5 = v4;
      do
      {
        v8 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_1DEEB2E10(v6 + 1, 1, &qword_1ECDE4100, &qword_1DEF91C30);
        }

        v2 = v10;
        sub_1DEF41EC0(v9, v8);
        v5 = sub_1DEF8E0D8();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DEEB0D14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE42E0, &qword_1DEF91C58);
  v43 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v44 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 32 * v22);
      v25 = v24[1];
      v26 = v24[2];
      v27 = v24[3];
      v48 = v26;
      v49 = *v24;
      v28 = (v23 + 48 * v22);
      v29 = v28[1];
      v30 = v28[2];
      v31 = v28[3];
      v45 = v30;
      v46 = *v28;
      v47 = *(v28 + 2);
      if ((v43 & 1) == 0)
      {
      }

      v32 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v33 = -1 << *(v8 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v15 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v15 + 8 * v35);
          if (v39 != -1)
          {
            v16 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v34) & ~*(v15 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 32 * v16);
      *v17 = v49;
      v17[1] = v25;
      v17[2] = v48;
      v17[3] = v27;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v46;
      *(v18 + 8) = v29;
      *(v18 + 16) = v45;
      *(v18 + 24) = v31;
      *(v18 + 32) = v47;
      ++*(v8 + 16);
      v5 = v42;
      v13 = v44;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_35;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v10, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB1028(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ZoneVersionAdvertisement(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4150, &unk_1DEF91C70);
  v44 = a2;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DEEBC790(v31, v45, type metadata accessor for ZoneVersionAdvertisement);
      }

      else
      {
        sub_1DEEBC728(v31, v45, type metadata accessor for ZoneVersionAdvertisement);
      }

      v32 = *(v12 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DEEBC790(v45, *(v12 + 56) + v30 * v20, type metadata accessor for ZoneVersionAdvertisement);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB13A0(uint64_t a1, int a2)
{
  v3 = v2;
  v60 = sub_1DEF8D3F8();
  v6 = *(v60 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Record.ID.Ownership(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40A8, &unk_1DEF91BE0);
  v61 = a2;
  result = sub_1DEF8E128();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v59 = (v6 + 48);
    v56 = (v6 + 32);
    v57 = v13;
    v54 = v3;
    v55 = (v6 + 8);
    v23 = result + 64;
    while (v21)
    {
      v27 = __clz(__rbit64(v21));
      v63 = (v21 - 1) & v21;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(*(v13 + 48) + 8 * v30);
      v32 = (*(v13 + 56) + 16 * v30);
      v33 = v32[1];
      v62 = *v32;
      if ((v61 & 1) == 0)
      {
      }

      v64 = v33;
      v34 = *(v16 + 40);
      sub_1DEF8E7A8();
      v35 = v31[2];
      v36 = v31[3];
      sub_1DEF8D9B8();
      v37 = v31[4];
      v38 = v37[2];
      v39 = v37[3];
      sub_1DEF8D9B8();
      v40 = v37[4];
      v41 = v37[5];

      sub_1DEF8D9B8();

      sub_1DEEBC728(v31 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v12, type metadata accessor for Record.ID.Ownership);
      v42 = v60;
      if ((*v59)(v12, 1, v60) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v43 = v58;
        (*v56)(v58, v12, v42);
        MEMORY[0x1E12CBF60](1);
        sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        sub_1DEF8D8C8();
        v44 = v43;
        v13 = v57;
        (*v55)(v44, v42);
      }

      result = sub_1DEF8E7F8();
      v45 = -1 << *(v16 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v23 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        v25 = v64;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v23 + 8 * v47);
          if (v51 != -1)
          {
            v24 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v46) & ~*(v23 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
      v25 = v64;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      *(*(v16 + 48) + 8 * v24) = v31;
      v26 = (*(v16 + 56) + 16 * v24);
      v21 = v63;
      *v26 = v62;
      v26[1] = v25;
      ++*(v16 + 16);
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v17 >= v22)
      {
        break;
      }

      v29 = v18[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v63 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v54;
      goto LABEL_38;
    }

    v52 = 1 << *(v13 + 32);
    v3 = v54;
    if (v52 >= 64)
    {
      bzero(v18, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v52;
    }

    *(v13 + 16) = 0;
  }

LABEL_38:
  *v3 = v16;
  return result;
}

uint64_t sub_1DEEB188C(uint64_t a1, int a2)
{
  v3 = v2;
  v47 = sub_1DEF8D3F8();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CD0, &unk_1DEF91C00);
  v44 = a2;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v6;
    v45 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v43 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v44)
      {
        (*v45)(v46, v27, v47);
      }

      else
      {
        (*v42)(v46, v27, v47);
      }

      v28 = *(v12 + 40);
      sub_1DEF8E7A8();
      v29 = v25[2];
      v30 = v25[3];
      sub_1DEF8D9B8();
      v31 = v25[4];
      v32 = v25[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = (*v45)(*(v12 + 56) + v26 * v20, v46, v47);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v9 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB1C0C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for PairingRelationship();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B8, &qword_1DEF91BF0);
  v48 = a2;
  result = sub_1DEF8E128();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DEEBC790(v31 + v32 * v28, v52, type metadata accessor for PairingRelationship);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DEEBC728(v33 + v32 * v28, v52, type metadata accessor for PairingRelationship);
      }

      v34 = *(v16 + 40);
      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1DEEBC790(v52, *(v16 + 56) + v32 * v24, type metadata accessor for PairingRelationship);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1DEEB20D4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v39 = a2;
  result = sub_1DEF8E128();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v39 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_1DEF8E7A8();
      v26 = v23[2];
      v27 = v23[3];
      sub_1DEF8D9B8();
      v28 = v23[4];
      v29 = v23[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero((v7 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1DEEB2370(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4130, &unk_1DEF916F0);
  v36 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1DEE117C0(v25, v37);
      }

      else
      {
        sub_1DEE12F7C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1DEE117C0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB2628(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4128, &unk_1DEF91C48);
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + 8 * v21);
      v23 = (*(v5 + 56) + 32 * v21);
      v38 = v23[1];
      v39 = *v23;
      if ((a2 & 1) == 0)
      {
      }

      v24 = *(v8 + 40);
      sub_1DEF8E7A8();
      v25 = v22[2];
      v26 = v22[3];
      sub_1DEF8D9B8();
      v27 = v22[4];
      v28 = v22[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      v17 = (*(v8 + 56) + 32 * v16);
      *v17 = v39;
      v17[1] = v38;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB28C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Record.ID.Ownership(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v52 - v14;
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3CF8, &unk_1DEF91600);
  v60 = a2;
  result = sub_1DEF8E128();
  v18 = result;
  if (*(v15 + 16))
  {
    v52 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v62 = (v10 + 32);
    v57 = (v10 + 48);
    v58 = v15;
    v53 = (v10 + 8);
    v54 = (v10 + 16);
    v25 = result + 64;
    v26 = v10;
    v56 = v10;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(*(v15 + 48) + 8 * v31);
      v33 = *(v15 + 56) + *(v26 + 72) * v31;
      v61 = *(v26 + 72);
      if (v60)
      {
        (*v62)(v63, v33, v9);
      }

      else
      {
        (*v54)(v63, v33, v9);
      }

      v34 = *(v18 + 40);
      sub_1DEF8E7A8();
      v35 = v32[2];
      v36 = v32[3];
      sub_1DEF8D9B8();
      v37 = v32[4];
      v38 = v37[2];
      v39 = v37[3];
      sub_1DEF8D9B8();
      v40 = v37[4];
      v41 = v37[5];

      sub_1DEF8D9B8();

      v42 = v59;
      sub_1DEEBC728(v32 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v59, type metadata accessor for Record.ID.Ownership);
      if ((*v57)(v42, 1, v9) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v43 = v55;
        (*v62)(v55, v42, v9);
        MEMORY[0x1E12CBF60](1);
        sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        sub_1DEF8D8C8();
        (*v53)(v43, v9);
      }

      result = sub_1DEF8E7F8();
      v44 = -1 << *(v18 + 32);
      v45 = result & ~v44;
      v46 = v45 >> 6;
      v15 = v58;
      if (((-1 << v45) & ~*(v25 + 8 * (v45 >> 6))) == 0)
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        while (++v46 != v48 || (v47 & 1) == 0)
        {
          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v25 + 8 * v46);
          if (v50 != -1)
          {
            v27 = __clz(__rbit64(~v50)) + (v46 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v27 = __clz(__rbit64((-1 << v45) & ~*(v25 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v18 + 48) + 8 * v27) = v32;
      result = (*v62)(*(v18 + 56) + v61 * v27, v63, v9);
      ++*(v18 + 16);
      v26 = v56;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_39;
    }

    v51 = 1 << *(v15 + 32);
    v3 = v52;
    if (v51 >= 64)
    {
      bzero(v20, ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v51;
    }

    *(v15 + 16) = 0;
  }

LABEL_39:
  *v3 = v18;
  return result;
}

uint64_t sub_1DEEB2E10(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v61 = sub_1DEF8D3F8();
  v10 = *(v61 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Record.ID.Ownership(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v18 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v62 = a2;
  result = sub_1DEF8E128();
  v20 = result;
  if (*(v17 + 16))
  {
    v21 = 0;
    v22 = (v17 + 64);
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v17 + 64);
    v26 = (v23 + 63) >> 6;
    v60 = (v10 + 48);
    v57 = (v10 + 32);
    v58 = v17;
    v55 = v7;
    v56 = (v10 + 8);
    v27 = result + 64;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v63 = (v25 - 1) & v25;
LABEL_17:
      v33 = v30 | (v21 << 6);
      v34 = *(*(v17 + 48) + 8 * v33);
      v35 = *(*(v17 + 56) + 8 * v33);
      if ((v62 & 1) == 0)
      {
      }

      v64 = v35;
      v36 = *(v20 + 40);
      sub_1DEF8E7A8();
      v37 = v34[2];
      v38 = v34[3];
      sub_1DEF8D9B8();
      v39 = v34[4];
      v40 = v39[2];
      v41 = v39[3];
      sub_1DEF8D9B8();
      v42 = v39[4];
      v43 = v39[5];

      sub_1DEF8D9B8();

      sub_1DEEBC728(v34 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v16, type metadata accessor for Record.ID.Ownership);
      v44 = v61;
      if ((*v60)(v16, 1, v61) == 1)
      {
        MEMORY[0x1E12CBF60](0);
      }

      else
      {
        v45 = v59;
        (*v57)(v59, v16, v44);
        MEMORY[0x1E12CBF60](1);
        sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
        sub_1DEF8D8C8();
        v46 = v45;
        v17 = v58;
        (*v56)(v46, v44);
      }

      result = sub_1DEF8E7F8();
      v47 = -1 << *(v20 + 32);
      v48 = result & ~v47;
      v49 = v48 >> 6;
      if (((-1 << v48) & ~*(v27 + 8 * (v48 >> 6))) == 0)
      {
        v50 = 0;
        v51 = (63 - v47) >> 6;
        v29 = v64;
        while (++v49 != v51 || (v50 & 1) == 0)
        {
          v52 = v49 == v51;
          if (v49 == v51)
          {
            v49 = 0;
          }

          v50 |= v52;
          v53 = *(v27 + 8 * v49);
          if (v53 != -1)
          {
            v28 = __clz(__rbit64(~v53)) + (v49 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v48) & ~*(v27 + 8 * (v48 >> 6)))) | v48 & 0x7FFFFFFFFFFFFFC0;
      v29 = v64;
LABEL_9:
      *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v20 + 48) + 8 * v28) = v34;
      *(*(v20 + 56) + 8 * v28) = v29;
      ++*(v20 + 16);
      v25 = v63;
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v21 >= v26)
      {
        break;
      }

      v32 = v22[v21];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v63 = (v32 - 1) & v32;
        goto LABEL_17;
      }
    }

    if ((v62 & 1) == 0)
    {

      v7 = v55;
      goto LABEL_38;
    }

    v54 = 1 << *(v17 + 32);
    v7 = v55;
    if (v54 >= 64)
    {
      bzero(v22, ((v54 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v22 = -1 << v54;
    }

    *(v17 + 16) = 0;
  }

LABEL_38:
  *v7 = v20;
  return result;
}

uint64_t sub_1DEEB32DC(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_1DEF8E128();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_1DEEB36B8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ZoneVersion();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4110, &qword_1DEF91690);
  v44 = a2;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DEEBC790(v31, v45, type metadata accessor for ZoneVersion);
      }

      else
      {
        sub_1DEEBC728(v31, v45, type metadata accessor for ZoneVersion);
      }

      v32 = *(v12 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DEEBC790(v45, *(v12 + 56) + v30 * v20, type metadata accessor for ZoneVersion);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB3A30(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ZoneVersion();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4340, &qword_1DEF915B8);
  v44 = a2;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v9 + 16))
  {
    v42 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = v21 | (v13 << 6);
      v25 = *(*(v9 + 48) + 8 * v24);
      v26 = *(v43 + 72);
      v27 = *(v9 + 56) + v26 * v24;
      if (v44)
      {
        sub_1DEEBC790(v27, v45, type metadata accessor for ZoneVersion);
      }

      else
      {
        sub_1DEEBC728(v27, v45, type metadata accessor for ZoneVersion);
      }

      v28 = *(v12 + 40);
      sub_1DEF8E7A8();
      v29 = v25[2];
      v30 = v25[3];
      sub_1DEF8D9B8();
      v31 = v25[4];
      v32 = v25[5];
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 8 * v20) = v25;
      result = sub_1DEEBC790(v45, *(v12 + 56) + v26 * v20, type metadata accessor for ZoneVersion);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero((v9 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB3DA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4148, &qword_1DEF96190);
  v40 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB4064(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F70, &unk_1DEF91B50);
  v33 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 56) + 8 * v20);
      v34 = *(*(v5 + 48) + 16 * v20);
      v22 = *(*(v5 + 48) + 16 * v20 + 8);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v23 = *(v8 + 40);
      sub_1DEF8E7A8();
      if (v22)
      {
        MEMORY[0x1E12CBF60](1);
        sub_1DEF8D9B8();
      }

      else
      {
        MEMORY[0x1E12CBF60](0);
      }

      result = sub_1DEF8E7F8();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v34;
      *(*(v8 + 56) + 8 * v16) = v21;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_38;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB432C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NetworkBrowser.Monitor();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4260, &unk_1DEF91B40);
  v48 = a2;
  result = sub_1DEF8E128();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DEEBC790(v31 + v32 * v28, v52, type metadata accessor for NetworkBrowser.Monitor);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DEEBC728(v33 + v32 * v28, v52, type metadata accessor for NetworkBrowser.Monitor);
      }

      v34 = *(v16 + 40);
      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1DEEBC790(v52, *(v16 + 56) + v32 * v24, type metadata accessor for NetworkBrowser.Monitor);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1DEEB47CC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3F78, &unk_1DEF91B60);
  v43 = a2;
  result = sub_1DEF8E128();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
        swift_unknownObjectRetain();
      }

      v29 = *(v14 + 40);
      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1DEEB4BA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE0, &qword_1DEF91B70);
  v40 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 40 * v22);
      v26 = v25[1];
      v43 = *v25;
      v44 = *v23;
      v27 = v25[3];
      v42 = v25[2];
      v28 = v25[4];
      if ((v40 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v29 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v44;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 40 * v16);
      *v18 = v43;
      v18[1] = v26;
      v18[2] = v42;
      v18[3] = v27;
      v18[4] = v28;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB4EA0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF8, &qword_1DEF91E40);
  v41 = a2;
  result = sub_1DEF8E128();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_1DEEBC790(v28, v9, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      }

      else
      {
        sub_1DEEBC728(v28, v9, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      }

      v29 = *(v13 + 40);
      result = sub_1DEF8E798();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1DEEBC790(v9, *(v13 + 56) + v27 * v21, type metadata accessor for ConnectionDurationMonitor.ConnectionDescriptor);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1DEEB51E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4090, &qword_1DEF91BC8);
  v39 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB548C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4088, &qword_1DEF91BC0);
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_1DEE117C0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_1DEEBC5D0(v24, &v38);
        sub_1DEE12F7C(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_1DEF8DEA8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_1DEE117C0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB5744(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SessionManager.Session();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4080, &qword_1DEF91BB8);
  v48 = a2;
  result = sub_1DEF8E128();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DEEBC790(v31 + v32 * v28, v52, type metadata accessor for SessionManager.Session);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1DEEBC728(v33 + v32 * v28, v52, type metadata accessor for SessionManager.Session);
      }

      v34 = *(v16 + 40);
      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1DEEBC790(v52, *(v16 + 56) + v32 * v24, type metadata accessor for SessionManager.Session);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1DEEB5BE4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FF0, qword_1DEF91B80);
  v44 = a2;
  result = sub_1DEF8E128();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DEEBC790(v31, v45, type metadata accessor for NetworkMessenger.ExpiringConnection);
      }

      else
      {
        sub_1DEEBC728(v31, v45, type metadata accessor for NetworkMessenger.ExpiringConnection);
      }

      v32 = *(v12 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DEEBC790(v45, *(v12 + 56) + v30 * v20, type metadata accessor for NetworkMessenger.ExpiringConnection);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1DEEB5F5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3FE8, &qword_1DEF91B78);
  v36 = a2;
  result = sub_1DEF8E128();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_1DEE1BFF4(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      result = sub_1DEF8E7F8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DEEB6218(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4060, &qword_1DEF91B98);
  v42 = a2;
  result = sub_1DEF8E128();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v42)
      {
        (*v43)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      else
      {
        (*v39)(v46, v28, v47);
        v44 = *(*(v11 + 56) + 16 * v26);
      }

      v29 = *(v14 + 40);
      sub_1DEEBC680(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      result = sub_1DEF8D8B8();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v43)(*(v14 + 48) + v45 * v22, v46, v47);
      *(*(v14 + 56) + 16 * v22) = v44;
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}