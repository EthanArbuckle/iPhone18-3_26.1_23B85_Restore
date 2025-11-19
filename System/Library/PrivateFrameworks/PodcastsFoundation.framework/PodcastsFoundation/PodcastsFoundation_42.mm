uint64_t sub_1D90E5FA4()
{
  if ([objc_opt_self() isRunningOnInternalOS])
  {
    v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v2 = [v0 stringForKey_];

    if (v2)
    {
    }
  }

  return 0;
}

uint64_t sub_1D90E6070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v2 = 0;
  v3 = a1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v5 = (v3 + 16 * v2);
    v6 = v2;
    while (1)
    {
      if (v6 >= v1)
      {
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
        result = sub_1D9179CFC();
        __break(1u);
        return result;
      }

      v2 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_47;
      }

      v8 = *(v5 - 1);
      v7 = *v5;

      v9._countAndFlagsBits = v8;
      v9._object = v7;
      URLTrackIdentifier.init(string:)(v9);
      if (!v10)
      {
        break;
      }

LABEL_5:

      ++v6;
      v5 += 2;
      if (v2 == v1)
      {
        goto LABEL_17;
      }
    }

    if (!v57)
    {
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1D8ECDAD0(0, *(v4 + 2) + 1, 1, v4);
    }

    v12 = *(v4 + 2);
    v11 = *(v4 + 3);
    if (v12 >= v11 >> 1)
    {
      v4 = sub_1D8ECDAD0((v11 > 1), v12 + 1, 1, v4);
    }

    *(v4 + 2) = v12 + 1;
    v13 = &v4[16 * v12];
    *(v13 + 4) = v57;
    v13[40] = v59;
    if (v2 != v1)
    {
      continue;
    }

    break;
  }

LABEL_17:
  v14 = *(v4 + 2);
  if (v14)
  {
    v15 = 0;
    v16 = v4 + 32;
    v17 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v15 >= *(v4 + 2))
      {
        goto LABEL_48;
      }

      v18 = *v16;
      if (*(*v16 + 16))
      {
        v19 = *v16;

        v20 = sub_1D8F06F8C(3);
        if ((v21 & 1) == 0)
        {
          goto LABEL_20;
        }

        v22 = (*(v18 + 56) + 16 * v20);
        v23 = v22[1];
        if (!v23 || !*(v18 + 16))
        {
          goto LABEL_20;
        }

        v24 = *v22;
        v25 = v22[1];

        v26 = sub_1D8F06F8C(7);
        if ((v27 & 1) == 0)
        {
          goto LABEL_19;
        }

        v28 = (*(v18 + 56) + 16 * v26);
        v29 = v28[1];
        if (!v29)
        {
          goto LABEL_19;
        }

        v56 = *v28;
        v30 = v17[2];

        if (v30)
        {
          sub_1D8D33C70(v24, v23);
          if (v31)
          {

LABEL_19:

LABEL_20:

            goto LABEL_21;
          }
        }

        v55 = v29;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v24;
        v34 = isUniquelyReferenced_nonNull_native;
        v58 = v17;
        v35 = v17;
        v36 = v33;
        v37 = sub_1D8D33C70(v33, v23);
        v39 = v35[2];
        v40 = (v38 & 1) == 0;
        v41 = __OFADD__(v39, v40);
        v42 = v39 + v40;
        if (v41)
        {
          goto LABEL_49;
        }

        v43 = v38;
        if (v35[3] >= v42)
        {
          if (v34)
          {
            v44 = v36;
            if (v38)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v53 = v37;
            sub_1D8F83318();
            v37 = v53;
            v44 = v36;
            if (v43)
            {
              goto LABEL_37;
            }
          }
        }

        else
        {
          sub_1D9005FD0(v42, v34);
          v44 = v36;
          v37 = sub_1D8D33C70(v36, v23);
          if ((v43 & 1) != (v45 & 1))
          {
            goto LABEL_51;
          }

          if (v43)
          {
LABEL_37:
            v46 = v37;

            v17 = v58;
            v47 = (v58[7] + 16 * v46);
            v48 = v47[1];
            *v47 = v56;
            v47[1] = v55;

            goto LABEL_20;
          }
        }

        v17 = v58;
        v58[(v37 >> 6) + 8] |= 1 << v37;
        v49 = (v58[6] + 16 * v37);
        *v49 = v44;
        v49[1] = v23;
        v50 = (v58[7] + 16 * v37);
        *v50 = v56;
        v50[1] = v55;

        v51 = v58[2];
        v41 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v41)
        {
          goto LABEL_50;
        }

        v58[2] = v52;
      }

LABEL_21:
      ++v15;
      v16 += 16;
      if (v14 == v15)
      {
        goto LABEL_45;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC8];
LABEL_45:

  return v17;
}

uint64_t sub_1D90E6430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90E6498(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1D90E320C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D90E6538(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D90E6598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D90E6604()
{
  result = qword_1ECABA6C8;
  if (!qword_1ECABA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6C8);
  }

  return result;
}

uint64_t sub_1D90E6690(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = v1 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = v1 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return sub_1D90E4128(a1, v1 + v4, v7, v8, v9, v11, v12);
}

id sub_1D90E6744(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_1D90B822C(a1);
  }

  else
  {
    v6 = a2;

    return a1;
  }
}

uint64_t sub_1D90E6790(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D5FF18;

  return sub_1D90E28D0(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1D90E68C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1D90E3CA0(a1, v1 + v4, v6, v7);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = type metadata accessor for PlaybackIntent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_1D8CFEACC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32));
  v7 = (v0 + v3 + v1[5]);
  v8 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  if (!(*(*(v8 - 1) + 48))(v7, 1, v8))
  {
    v43 = v0;
    v45 = (v2 + 32) & ~v2;
    v9 = *(v7 + 1);

    v10 = *(v7 + 3);

    v11 = *(v7 + 5);

    v12 = *(v7 + 11);

    v13 = *(v7 + 13);

    v14 = *(v7 + 15);

    v15 = v8[12];
    v16 = sub_1D9176C2C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(&v7[v15], 1, v16))
    {
      (*(v17 + 8))(&v7[v15], v16);
    }

    v44 = v4;
    v19 = *&v7[v8[13] + 8];

    v20 = *&v7[v8[17] + 8];

    v21 = v8[18];
    if (!v18(&v7[v21], 1, v16))
    {
      (*(v17 + 8))(&v7[v21], v16);
    }

    v42 = v17;
    v22 = *&v7[v8[19] + 8];

    v23 = *&v7[v8[20]];

    v24 = v8[22];
    v25 = sub_1D9176E3C();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v7[v24], 1, v25))
    {
      (*(v26 + 8))(&v7[v24], v25);
    }

    v27 = *&v7[v8[23] + 8];

    v28 = *&v7[v8[34] + 8];

    v29 = *&v7[v8[35]];

    v30 = *&v7[v8[36] + 8];

    v31 = *&v7[v8[37] + 8];

    v32 = v8[38];
    if (!v18(&v7[v32], 1, v16))
    {
      (*(v42 + 8))(&v7[v32], v16);
    }

    v33 = *&v7[v8[39] + 8];

    v34 = *&v7[v8[40] + 8];

    v35 = *&v7[v8[49] + 8];

    v3 = v45;
    v4 = v44;
    v0 = v43;
  }

  v36 = v6 + v1[6];
  v37 = *(v36 + 40);
  if (v37 != 255)
  {
    sub_1D8CFEACC(*(v36 + 8), *(v36 + 16), *(v36 + 24), *(v36 + 32), v37);
  }

  if (*(v36 + 128) != 2)
  {
    sub_1D90AB0F8(*(v36 + 48), *(v36 + 56), *(v36 + 64), *(v36 + 72), *(v36 + 80), *(v36 + 88), *(v36 + 96), *(v36 + 104), *(v36 + 112));
  }

  v38 = *(v6 + v1[7]);

  v39 = *(v6 + v1[8] + 8);

  v40 = *(v0 + ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1D90E6D70(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntent(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D8D58924;

  return sub_1D90E28D0(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t sub_1D90E6EA0()
{
  result = qword_1ECABA6D0;
  if (!qword_1ECABA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6D0);
  }

  return result;
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.FeatureName.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1D917980C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t PodcastsMediaLibrary.PlaybackQueueContext.FeatureName.rawValue.getter()
{
  v1 = 7368801;
  v2 = 0x746567646977;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 1769105779;
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

unint64_t sub_1D90E6FD0()
{
  result = qword_1ECABA6E0;
  if (!qword_1ECABA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6E0);
  }

  return result;
}

uint64_t sub_1D90E7024()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90E70D8()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90E7178()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90E7228@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return PodcastsMediaLibrary.PlaybackQueueContext.FeatureName.init(rawValue:)(a1);
}

void sub_1D90E7234(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xE600000000000000;
  v5 = 0x746567646977;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001D91C7E50;
  }

  if (*v1)
  {
    v3 = 1769105779;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double PodcastsMediaLibrary.Request.init(playbackQueueContext:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D90E73D0(*a1, v22);
  v4 = v23;
  if (v23 == 255)
  {
    sub_1D90E7934(a1);
    sub_1D90DCCC4(v20);
    v14 = v20[11];
    *(a2 + 160) = v20[10];
    *(a2 + 176) = v14;
    *(a2 + 192) = v20[12];
    *(a2 + 208) = v21;
    v15 = v20[7];
    *(a2 + 96) = v20[6];
    *(a2 + 112) = v15;
    v16 = v20[9];
    *(a2 + 128) = v20[8];
    *(a2 + 144) = v16;
    v17 = v20[3];
    *(a2 + 32) = v20[2];
    *(a2 + 48) = v17;
    v18 = v20[5];
    *(a2 + 64) = v20[4];
    *(a2 + 80) = v18;
    result = *v20;
    v19 = v20[1];
    *a2 = v20[0];
    *(a2 + 16) = v19;
  }

  else
  {
    v5 = *(a1 + 80);
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);

    v8 = v5;
    sub_1D90E7934(a1);
    v9 = v22[1];
    *a2 = v22[0];
    *(a2 + 16) = v9;
    *(a2 + 32) = v4;
    *(a2 + 40) = v5;
    *(a2 + 48) = v7;
    *(a2 + 56) = v6;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 148) = 0;
    *(a2 + 144) = 2;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 2;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = -1;
    nullsub_1(a2, v10, v11, v12);
  }

  return result;
}

void sub_1D90E73D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[2];
  if (v3 < 2)
  {
    if (v3)
    {
      v18 = a1[4];
      v19 = a1[5];

      v20._countAndFlagsBits = v18;
      v20._object = v19;
      URLTrackIdentifier.init(string:)(v20);
      if (v21)
      {
      }

      else if (v70)
      {
        sub_1D90E7990(&v70, a2);

        return;
      }
    }

LABEL_61:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v65 = -1;
    goto LABEL_62;
  }

  v4 = 0;
  v5 = a1 + 5;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = &v5[2 * v4];
    v8 = v4;
    while (1)
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_70:
        __break(1u);
        return;
      }

      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_70;
      }

      v10 = *(v7 - 1);
      v9 = *v7;

      v11._countAndFlagsBits = v10;
      v11._object = v9;
      URLTrackIdentifier.init(string:)(v11);
      if (!v12)
      {
        break;
      }

LABEL_5:

      ++v8;
      v7 += 2;
      if (v4 == v3)
      {
        goto LABEL_19;
      }
    }

    v13 = v70;
    if (!v70)
    {
      goto LABEL_5;
    }

    v14 = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D8ECDAD0(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1D8ECDAD0((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v17 = &v6[16 * v16];
    *(v17 + 4) = v13;
    v17[40] = v14;
  }

  while (v4 != v3);
LABEL_19:
  swift_getKeyPath();
  v70 = MEMORY[0x1E69E7CD0];

  v23 = sub_1D90E7DB0(v22);

  if (*(v23 + 16) != 1)
  {

    goto LABEL_60;
  }

  v24 = *(v23 + 40);

  if (v24 != 4)
  {
LABEL_60:

    goto LABEL_61;
  }

  v25 = *(v6 + 2);
  if (v25)
  {
    v26 = v6 + 32;
    v27 = MEMORY[0x1E69E7CC0];
    v69 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v28 = *v26;
      v29 = *(*v26 + 16);

      if (v29)
      {
        v30 = sub_1D8F06F8C(3);
        if ((v31 & 1) != 0 && (v32 = (*(v28 + 56) + 16 * v30), (v33 = v32[1]) != 0))
        {
          v34 = *v32;
          v35 = v32[1];

          v42 = sub_1D8FE6808(v34, v33);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1D8ECC958(0, *(v27 + 2) + 1, 1, v27);
          }

          v44 = *(v27 + 2);
          v43 = *(v27 + 3);
          if (v44 >= v43 >> 1)
          {
            v27 = sub_1D8ECC958((v43 > 1), v44 + 1, 1, v27);
          }

          *(v27 + 2) = v44 + 1;
          *&v27[8 * v44 + 32] = v42;
          if (!*(v28 + 16))
          {
            goto LABEL_49;
          }
        }

        else if (!*(v28 + 16))
        {
          goto LABEL_49;
        }

        v36 = sub_1D8F06F8C(3);
        if (v37)
        {
          v38 = (*(v28 + 56) + 16 * v36);
          v39 = v38[1];
          if (v39)
          {
            v40 = *v38;
            v41 = v38[1];

            v45 = sub_1D8FE6808(v40, v39);

            if (v45 && v45 != 1000000000000)
            {

              v58 = 0;
              v68 = 0u;
              v66 = v45;
LABEL_54:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v69 = sub_1D8ECDBF8(0, *(v69 + 2) + 1, 1, v69);
              }

              v59 = v69;
              v61 = *(v69 + 2);
              v60 = *(v69 + 3);
              v62 = v68;
              if (v61 >= v60 >> 1)
              {
                v64 = sub_1D8ECDBF8((v60 > 1), v61 + 1, 1, v69);
                v62 = v68;
                v59 = v64;
              }

              *(v59 + 2) = v61 + 1;
              v69 = v59;
              v63 = &v59[40 * v61];
              *(v63 + 3) = v62;
              *(v63 + 2) = v66;
              v63[64] = v58;
              goto LABEL_50;
            }
          }
        }

        if (*(v28 + 16))
        {
          v47 = sub_1D8F06F8C(8);
          if (v48)
          {
            v49 = (*(v28 + 56) + 16 * v47);
            v50 = v49[1];
            if (v50)
            {
              if (*(v28 + 16))
              {
                v51 = *v49;
                v52 = v49[1];

                v53 = sub_1D8F06F8C(5);
                if (v54)
                {
                  v55 = (*(v28 + 56) + 16 * v53);
                  v56 = v55[1];
                  v67 = *v55;

                  if (v56)
                  {
                    *&v57 = v67;
                    *(&v57 + 1) = v56;
                    v68 = v57;
                    *&v57 = v51;
                    *(&v57 + 1) = v50;
                    v66 = v57;
                    v58 = 1;
                    goto LABEL_54;
                  }
                }

                else
                {
                }
              }
            }
          }
        }
      }

LABEL_49:

LABEL_50:
      v26 += 16;
      if (!--v25)
      {
        goto LABEL_66;
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
  v69 = MEMORY[0x1E69E7CC0];
LABEL_66:

  if (*(v27 + 2) >= *(v69 + 2))
  {

    *a2 = v27;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v65 = 1;
  }

  else
  {

    *a2 = v69;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v65 = 7;
  }

LABEL_62:
  *(a2 + 32) = v65;
}

uint64_t sub_1D90E7934(uint64_t a1)
{
  v2 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D90E7990(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (v4 <= 1)
  {
    if (!*(a1 + 8))
    {
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v42 = 8;
      goto LABEL_41;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_40;
    }

    v23 = sub_1D8F06F8C(2);
    if (v24)
    {
      v25 = (*(v3 + 56) + 16 * v23);
      v26 = v25[1];
      if (v26)
      {
        v27 = *v25;
        v28 = v25[1];

        v43 = sub_1D8FE6808(v27, v26);

        *a2 = v43;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0;
        *(a2 + 32) = 0;
        return;
      }
    }

    if (!*(v3 + 16))
    {
      goto LABEL_40;
    }

    v29 = sub_1D8F06F8C(3);
    if (v30)
    {
      v7 = (*(v3 + 56) + 16 * v29);
      v8 = v7[1];
      if (v8)
      {
        goto LABEL_7;
      }
    }

    if (!*(v3 + 16) || (v31 = sub_1D8F06F8C(0), (v32 & 1) == 0) || (v33 = (*(v3 + 56) + 16 * v31), (v34 = v33[1]) == 0))
    {
LABEL_40:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      v42 = -1;
      goto LABEL_41;
    }

    *a2 = *v33;
    *(a2 + 8) = v34;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v22 = 3;
LABEL_29:
    *(a2 + 32) = v22;
    goto LABEL_30;
  }

  if (v4 == 2)
  {
    if (!*(v3 + 16) || (v18 = sub_1D8F06F8C(0), (v19 & 1) == 0) || (v20 = (*(v3 + 56) + 16 * v18), (v21 = v20[1]) == 0))
    {
      if (qword_1ECAB0D48 != -1)
      {
        swift_once();
      }

      v37 = sub_1D917744C();
      __swift_project_value_buffer(v37, qword_1ECAB0D50);
      v38 = sub_1D917741C();
      v39 = sub_1D9178D1C();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1D8CEC000, v38, v39, "Unable to find station UUID in track identifier", v40, 2u);
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      goto LABEL_40;
    }

    *a2 = *v20;
    *(a2 + 8) = v21;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v22 = 4;
    goto LABEL_29;
  }

  if (v4 == 3)
  {
    goto LABEL_40;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_33;
  }

  v5 = sub_1D8F06F8C(3);
  if (v6)
  {
    v7 = (*(v3 + 56) + 16 * v5);
    v8 = v7[1];
    if (v8)
    {
LABEL_7:
      v9 = *v7;
      v10 = v7[1];

      v11 = sub_1D8FE6808(v9, v8);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB45A0, &unk_1D91941F0);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1D9189080;
      *(v41 + 32) = v11;
      *a2 = v41;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      v42 = 1;
LABEL_41:
      *(a2 + 32) = v42;
      return;
    }
  }

  if (!*(v3 + 16) || (v12 = sub_1D8F06F8C(1), (v13 & 1) == 0) || (v14 = (*(v3 + 56) + 16 * v12), (v15 = v14[1]) == 0))
  {
LABEL_33:
    v46 = v3;
    v47 = 4;

    sub_1D90D266C(&v46, v48);
    v35 = v49;
    if (v49 != 255)
    {
      v44 = v48[1];
      v45 = v48[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6060, &unk_1D9192040);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1D9189080;
      *(v36 + 32) = v45;
      *(v36 + 48) = v44;
      *(v36 + 64) = v35 & 1;
      *a2 = v36;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 32) = 7;
      return;
    }

    goto LABEL_40;
  }

  v16 = *v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D9189080;
  *(v17 + 32) = v16;
  *(v17 + 40) = v15;
  *a2 = v17;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
LABEL_30:
}

uint64_t sub_1D90E7DB0(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = 0;
  v3 = result + 40;
  v4 = MEMORY[0x1E69E7CC0];
  v12 = result + 40;
  do
  {
    v13 = v4;
    v5 = (v3 + 16 * v2);
    for (i = v2; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return result;
      }

      v2 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_18;
      }

      v7 = *(v5 - 1);
      v8 = *v5;
      v15 = v7;
      v16 = v8;

      swift_getAtKeyPath();
      if (sub_1D8EFB7F4(v14, v14[1]))
      {
        break;
      }

      v5 += 16;
      if (v2 == v1)
      {
        return v13;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v4 = v13;
    v17 = v13;
    if ((result & 1) == 0)
    {
      result = sub_1D8E3185C(0, *(v13 + 16) + 1, 1);
      v4 = v17;
    }

    v10 = *(v4 + 16);
    v9 = *(v4 + 24);
    if (v10 >= v9 >> 1)
    {
      result = sub_1D8E3185C((v9 > 1), v10 + 1, 1);
      v4 = v17;
    }

    *(v4 + 16) = v10 + 1;
    v11 = v4 + 16 * v10;
    *(v11 + 32) = v7;
    *(v11 + 40) = v8;
    v3 = v12;
  }

  while (v2 != v1);
  return v4;
}

uint64_t URLTrackIdentifier.stringValue.getter()
{
  v1 = v0;
  v2 = sub_1D91766EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v37 - v7;
  v8 = sub_1D91767FC();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v1;
  v13 = *(v1 + 8);
  sub_1D91767EC();
  sub_1D91767AC();
  v14 = *&aPlaypodcplaypo_0[8 * v13];
  v15 = *&aPlaypodcplaypo_0[8 * v13 + 40];
  v38 = v11;
  MEMORY[0x1DA727D30](v14, v15);
  v16 = v12 + 64;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;
  v37 = 0x80000001D91C8520;
  v43 = v3;
  v44 = v12;
  v45 = (v3 + 32);

  v22 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v42 = v2;
  if (v19)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v20)
    {

      v35 = v38;
      sub_1D917671C();
      v36 = sub_1D91767CC();
      (*(v39 + 8))(v35, v40);
      return v36;
    }

    v19 = *(v16 + 8 * v24);
    ++v22;
    if (v19)
    {
      v22 = v24;
      do
      {
LABEL_8:
        v25 = __clz(__rbit64(v19)) | (v22 << 6);
        v26 = *(*(v44 + 48) + v25);
        v19 &= v19 - 1;
        v27 = (*(v44 + 56) + 16 * v25);
        v29 = *v27;
        v28 = v27[1];

        v30 = v41;
        sub_1D91766BC();

        v31 = *v45;
        v32 = v42;
        (*v45)(v46, v30, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D8D8EDF4(0, *(v23 + 2) + 1, 1, v23);
        }

        v34 = *(v23 + 2);
        v33 = *(v23 + 3);
        if (v34 >= v33 >> 1)
        {
          v23 = sub_1D8D8EDF4(v33 > 1, v34 + 1, 1, v23);
        }

        *(v23 + 2) = v34 + 1;
        result = v31(&v23[((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v34], v46, v32);
      }

      while (v19);
    }
  }

  __break(1u);
  return result;
}

PodcastsFoundation::URLTrackIdentifier_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> URLTrackIdentifier.init(string:)(Swift::String string)
{
  v73 = v1;
  v3 = sub_1D91766EC();
  v74 = *(v3 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v67 - v9;
  v11 = sub_1D91767FC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D91767BC();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D90E9C54(v10);
LABEL_12:
    sub_1D90E9CBC();
    swift_allocError();
    *v22 = xmmword_1D918F800;
    result.value.arguments._rawValue = swift_willThrow();
    goto LABEL_53;
  }

  (*(v12 + 32))(v15, v10, v11);
  sub_1D917675C();
  if (!v16)
  {
    (*(v12 + 8))(v15, v11);
    goto LABEL_12;
  }

  v70 = v12;
  v75 = v15;
  v17 = sub_1D917679C();
  if (!v18)
  {
    goto LABEL_10;
  }

  if (v17 == 0x7374736163646F70 && v18 == 0xE800000000000000)
  {
  }

  else
  {
    v20 = sub_1D9179ACC();

    if ((v20 & 1) == 0)
    {
LABEL_10:

      sub_1D90E9CBC();
      swift_allocError();
      *v21 = xmmword_1D918F800;
LABEL_16:
      swift_willThrow();
      result.value.arguments._rawValue = (*(v70 + 8))(v75, v11);
      goto LABEL_53;
    }
  }

  sub_1D90E94F8(&v80);
  v25 = v80;
  if (v80 == 5)
  {
    sub_1D90E9CBC();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    goto LABEL_16;
  }

  v27 = v75;
  v28 = sub_1D917670C();
  if (!v28)
  {
    v42 = sub_1D8E27754(MEMORY[0x1E69E7CC0]);
    result.value.arguments._rawValue = (*(v70 + 8))(v27, v11);
    v43 = v73;
LABEL_48:
    *v43 = v42;
    *(v43 + 8) = v25;
    goto LABEL_53;
  }

  v78 = v25;
  v72 = v11;
  v67[0] = v2;
  v67[1] = v28;
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = *(v74 + 16);
    v31 = v28 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v71 = *(v74 + 72);
    v32 = (v74 + 8);
    v76 = MEMORY[0x1E69E7CC0];
    v74 += 16;
    v68 = v3;
    v69 = v30;
    v30(v6, v31, v3);
    while (1)
    {
      sub_1D91766CC();
      sub_1D90E9998(&v79);
      v33 = v79;
      if (v79 == 17)
      {
        (*v32)(v6, v3);
      }

      else
      {
        v34 = sub_1D91766DC();
        v36 = v35;
        (*v32)(v6, v3);
        v37 = v36;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v76;
        }

        else
        {
          v38 = sub_1D8ECD988(0, v76[2] + 1, 1, v76);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1D8ECD988((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v76 = v38;
        v41 = &v38[3 * v40];
        *(v41 + 32) = v33;
        v41[5] = v34;
        v41[6] = v37;
        v3 = v68;
        v30 = v69;
      }

      v31 += v71;
      if (!--v29)
      {
        break;
      }

      v30(v6, v31, v3);
    }
  }

  else
  {
    v76 = MEMORY[0x1E69E7CC0];
  }

  v42 = sub_1D8E27754(MEMORY[0x1E69E7CC0]);
  v44 = v76;
  v45 = v72;
  v74 = v76[2];
  if (!v74)
  {
    v50 = v75;
LABEL_47:
    (*(v70 + 8))(v50, v45);

    v43 = v73;
    LOBYTE(v25) = v78;
    goto LABEL_48;
  }

  v46 = 0;
  v47 = v76 + 6;
  while (v46 < v44[2])
  {
    v51 = *(v47 - 16);
    v53 = *(v47 - 1);
    v52 = *v47;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v42;
    v55 = sub_1D8F06F8C(v51);
    v57 = v42[2];
    v58 = (v56 & 1) == 0;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      goto LABEL_50;
    }

    v61 = v56;
    if (v42[3] >= v60)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = v55;
        sub_1D8F850E4();
        v55 = v66;
      }
    }

    else
    {
      sub_1D900912C(v60, isUniquelyReferenced_nonNull_native);
      v55 = sub_1D8F06F8C(v51);
      if ((v61 & 1) != (v62 & 1))
      {
        goto LABEL_52;
      }
    }

    v45 = v72;
    v42 = v77;
    if (v61)
    {
      v48 = (v77[7] + 16 * v55);
      v49 = v48[1];
      *v48 = v53;
      v48[1] = v52;
    }

    else
    {
      v77[(v55 >> 6) + 8] |= 1 << v55;
      *(v42[6] + v55) = v51;
      v63 = (v42[7] + 16 * v55);
      *v63 = v53;
      v63[1] = v52;

      v64 = v42[2];
      v59 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v59)
      {
        goto LABEL_51;
      }

      v42[2] = v65;
    }

    ++v46;
    v47 += 3;
    v50 = v75;
    v44 = v76;
    if (v74 == v46)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result.value.arguments._rawValue = sub_1D9179CFC();
  __break(1u);
LABEL_53:
  result.is_nil = v24;
  result.value.command = v23;
  return result;
}

PodcastsFoundation::URLTrackIdentifier::Command_optional __swiftcall URLTrackIdentifier.Command.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t URLTrackIdentifier.Command.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x7461745379616C70;
  v3 = 0x6269726373627573;
  if (v1 != 3)
  {
    v3 = 0x6D65744979616C70;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x63646F5079616C70;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D90E8CE4()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90E8DD0()
{
  *v0;
  *v0;
  *v0;
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90E8EA8()
{
  v1 = *v0;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D90E8F9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000073747361;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7461745379616C70;
  v6 = 0xE900000000000065;
  v7 = 0x6269726373627573;
  if (v2 != 3)
  {
    v7 = 0x6D65744979616C70;
    v6 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0xEB00000000747361;
  }

  if (*v1 <= 1u)
  {
    v8 = 0x63646F5079616C70;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v4;
  }

  *a1 = v8;
  a1[1] = v3;
}

PodcastsFoundation::URLTrackIdentifier::ArgumentKey_optional __swiftcall URLTrackIdentifier.ArgumentKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D9179C6C();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t URLTrackIdentifier.ArgumentKey.rawValue.getter()
{
  result = 1684632949;
  switch(*v0)
  {
    case 1:
      result = 0x5565646F73697065;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x61725465726F7473;
      break;
    case 4:
      result = 0x6B63616279616C70;
      break;
    case 5:
      result = 0x4674736163646F70;
      break;
    case 6:
      result = 1684632420;
      break;
    case 7:
      result = 0x49746E65746E6F63;
      break;
    case 8:
      result = 0x4765646F73697065;
      break;
    case 9:
      result = 0x5465646F73697065;
      break;
    case 0xA:
      result = 0x5474736163646F70;
      break;
    case 0xB:
      result = 0x72556D6165727473;
      break;
    case 0xC:
      result = 0x6461656879616C70;
      break;
    case 0xD:
      result = 0x7361655279616C70;
      break;
    case 0xE:
      result = 0x747865746E6F63;
      break;
    case 0xF:
      result = 0x53747865746E6F63;
      break;
    case 0x10:
      result = 0x7265756575716E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D90E92D4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = URLTrackIdentifier.ArgumentKey.rawValue.getter();
  v4 = v3;
  if (v2 == URLTrackIdentifier.ArgumentKey.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();
  }

  return v7 & 1;
}

unint64_t sub_1D90E937C@<X0>(unint64_t *a1@<X8>)
{
  result = URLTrackIdentifier.ArgumentKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D90E93A4()
{
  v1 = *v0;
  sub_1D9179DBC();
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90E940C()
{
  v2 = *v0;
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1D90E9470()
{
  v1 = *v0;
  sub_1D9179DBC();
  URLTrackIdentifier.ArgumentKey.rawValue.getter();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D90E94F8@<X0>(char *a1@<X8>)
{
  v2 = byte_1F5462268;
  sub_1D8D447DC();
  v3 = sub_1D917923C();

  if (v3)
  {
    v2 = byte_1F5462269;
    v4 = sub_1D917923C();

    if (v4)
    {
      v2 = byte_1F546226A;
      v5 = sub_1D917923C();

      if (v5)
      {
        v2 = byte_1F546226B;
        v6 = sub_1D917923C();

        if (v6)
        {
          v2 = byte_1F546226C;
          v7 = sub_1D917923C();

          if (v7)
          {
            v2 = 5;
          }
        }
      }
    }
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D90E9998@<X0>(char *a1@<X8>)
{
  v1 = 0;
  while (v1 != 17)
  {
    v3 = byte_1F545DE50[v1 + 32];
    sub_1D8D447DC();
    v2 = sub_1D917923C();

    ++v1;
    if (!v2)
    {
      goto LABEL_6;
    }
  }

  v3 = 17;
LABEL_6:

  *a1 = v3;
  return result;
}

uint64_t sub_1D90E9C54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB76F0, &qword_1D91B6700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D90E9CBC()
{
  result = qword_1ECABA6E8;
  if (!qword_1ECABA6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6E8);
  }

  return result;
}

unint64_t sub_1D90E9D14()
{
  result = qword_1ECABA6F0;
  if (!qword_1ECABA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA6F0);
  }

  return result;
}

unint64_t sub_1D90E9D9C()
{
  result = qword_1ECAB1ED8;
  if (!qword_1ECAB1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1ED8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation18URLTrackIdentifierV0cD5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D90E9E48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90E9EA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

double sub_1D90E9F24(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  v3 = v2 >= a1;
  v4 = v2 - a1;
  if (!v3)
  {
    __break(1u);
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v7[0] = 0;
  mach_timebase_info(v7);
  if (!is_mul_ok(v4, v7[0].numer))
  {
    goto LABEL_6;
  }

  if (!v7[0].denom)
  {
    goto LABEL_7;
  }

  v5 = *MEMORY[0x1E69E9840];
  return (v4 * v7[0].numer / v7[0].denom) / 1000000000.0;
}

uint64_t sub_1D90E9FD0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID;
  swift_beginAccess();
  sub_1D8D088B4(v1 + v10, v9, &qword_1ECAB6DE0, &qword_1D9195250);
  v11 = sub_1D917734C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1D8D08A50(v9, &qword_1ECAB6DE0, &qword_1D9195250);
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = qword_1ECAAFC10;

  sub_1D917730C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1D9071830(v6, v1 + v10, &qword_1ECAB6DE0, &qword_1D9195250);
  return swift_endAccess();
}

uint64_t PodcastsMediaLibrary.__allocating_init(config:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID;
  v7 = sub_1D917734C();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = *(a1 + 80);
  *(v5 + 80) = *(a1 + 64);
  *(v5 + 96) = v8;
  *(v5 + 112) = *(a1 + 96);
  v9 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v9;
  v10 = *(a1 + 48);
  *(v5 + 48) = *(a1 + 32);
  *(v5 + 64) = v10;
  return v5;
}

uint64_t PodcastsMediaLibrary.init(config:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID;
  v4 = sub_1D917734C();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v5;
  *(v1 + 112) = *(a1 + 96);
  v6 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v6;
  v7 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v7;
  return v1;
}

uint64_t sub_1D90EA370(uint64_t a1, void *a2, uint64_t a3)
{
  v95 = a2;
  v98 = sub_1D917734C();
  v5 = *(v98 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v90 = v88 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = v88 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v88 - v12;
  v14 = swift_allocObject();
  v88[1] = a3;
  *(v14 + 16) = a3;
  v15 = *(a1 + 176);
  v141 = *(a1 + 160);
  v142 = v15;
  v143 = *(a1 + 192);
  v144 = *(a1 + 208);
  v16 = *(a1 + 112);
  v137 = *(a1 + 96);
  v138 = v16;
  v17 = *(a1 + 144);
  v139 = *(a1 + 128);
  v140 = v17;
  v18 = *(a1 + 48);
  v133 = *(a1 + 32);
  v134 = v18;
  v19 = *(a1 + 80);
  v135 = *(a1 + 64);
  v136 = v19;
  v20 = *(a1 + 16);
  v131 = *a1;
  v132 = v20;
  v96 = mach_absolute_time();
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917744C();
  v22 = __swift_project_value_buffer(v21, qword_1ECAB0D50);
  sub_1D90D09E0(&v131, &v117);
  v23 = sub_1D917741C();
  v24 = sub_1D9178D1C();
  sub_1D90CF72C(&v131);
  v25 = os_log_type_enabled(v23, v24);
  v93 = v22;
  v94 = v14;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *&v103 = v92;
    *v26 = 136315138;
    v127 = v141;
    v128 = v142;
    v129 = v143;
    v130 = v144;
    v123 = v137;
    v124 = v138;
    v125 = v139;
    v126 = v140;
    v119 = v133;
    v120 = v134;
    v121 = v135;
    v122 = v136;
    v117 = v131;
    v118 = v132;
    sub_1D90CF75C();
    v27 = MEMORY[0x1DA729BD0]();
    v29 = v28;

    v30 = sub_1D8CFA924(v27, v29, &v103);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1D8CEC000, v23, v24, "Calling media collection with request: %s", v26, 0xCu);
    v31 = v92;
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v26, -1, -1);
  }

  sub_1D9178F5C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = qword_1ECAAFC10;
  v33 = v95;
  sub_1D90E9FD0(v13);
  sub_1D91772FC();

  v34 = *(v5 + 8);
  v35 = v98;
  v91 = v5 + 8;
  v92 = v34;
  (v34)(v13, v98);
  v36 = v89;
  sub_1D90E9FD0(v89);
  v37 = *(v5 + 32);
  v38 = v90;
  v37(v90, v36, v35);
  (*(v5 + 16))(v97, v38, v35);
  v39 = (*(v5 + 80) + 57) & ~*(v5 + 80);
  v40 = swift_allocObject();
  v41 = v94;
  *(v40 + 16) = sub_1D90EF544;
  *(v40 + 24) = v41;
  *(v40 + 32) = v96;
  *(v40 + 40) = "mediaCollection(for:completion:)";
  *(v40 + 48) = 32;
  *(v40 + 56) = 2;
  v42 = v35;
  v43 = v41;
  v37((v40 + v39), v38, v42);
  v113 = v141;
  v114 = v142;
  v115 = v143;
  v116 = v144;
  v109 = v137;
  v110 = v138;
  v111 = v139;
  v112 = v140;
  v105 = v133;
  v106 = v134;
  v107 = v135;
  v108 = v136;
  v103 = v131;
  v104 = v132;

  sub_1D90CF0E4(v33 + 2, &v117);
  v44 = v33[5];
  v45 = v33[6];
  __swift_project_boxed_opaque_existential_1(v33 + 2, v44);
  v46 = BYTE8(v127);
  (*(v45 + 8))(&v103, BYTE8(v127), v44, v45);
  if (*(&v104 + 1))
  {
    sub_1D8D6BCE0(&v103, v100);
    v47 = v101;
    v48 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v113 = v127;
    v114 = v128;
    v115 = v129;
    v116 = v130;
    v109 = v123;
    v110 = v124;
    v111 = v125;
    v112 = v126;
    v105 = v119;
    v106 = v120;
    v107 = v121;
    v108 = v122;
    v103 = v117;
    v104 = v118;
    if ((*(v48 + 16))(&v103, v47, v48))
    {
      (v92)(v97, v98);
      v49 = v101;
      v50 = v102;
      __swift_project_boxed_opaque_existential_1(v100, v101);
      v113 = v127;
      v114 = v128;
      v115 = v129;
      v116 = v130;
      v109 = v123;
      v110 = v124;
      v111 = v125;
      v112 = v126;
      v105 = v119;
      v106 = v120;
      v107 = v121;
      v108 = v122;
      v103 = v117;
      v104 = v118;
      v51 = swift_allocObject();
      v52 = v128;
      *(v51 + 184) = v127;
      *(v51 + 200) = v52;
      *(v51 + 216) = v129;
      v53 = v124;
      *(v51 + 120) = v123;
      *(v51 + 136) = v53;
      v54 = v126;
      *(v51 + 152) = v125;
      *(v51 + 168) = v54;
      v55 = v120;
      *(v51 + 56) = v119;
      *(v51 + 72) = v55;
      v56 = v122;
      *(v51 + 88) = v121;
      *(v51 + 104) = v56;
      v57 = v118;
      *(v51 + 24) = v117;
      *(v51 + 16) = v95;
      *(v51 + 232) = v130;
      *(v51 + 40) = v57;
      *(v51 + 240) = sub_1D90EF5E0;
      *(v51 + 248) = v40;
      *(v51 + 256) = sub_1D90EF544;
      *(v51 + 264) = v43;
      v58 = *(v50 + 8);

      sub_1D90D09E0(&v117, &v99);

      v58(&v103, sub_1D90EF5E4, v51, v49, v50);

      sub_1D90CF72C(&v117);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
    }

    else
    {
      v68 = sub_1D917741C();
      v69 = sub_1D9178CFC();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_1D8CEC000, v68, v69, "No provider for request found", v70, 2u);
        MEMORY[0x1DA72CB90](v70, -1, -1);
      }

      sub_1D90CC2C0();
      v71 = swift_allocError();
      *v72 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
      swift_allocError();
      *v73 = v71;
      swift_continuation_throwingResumeWithError();
      v74 = sub_1D917741C();
      v75 = sub_1D9178D1C();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 134217984;
        *(v76 + 4) = sub_1D90E9F24(v96);
        _os_log_impl(&dword_1D8CEC000, v74, v75, "PML Total request duration: %fs", v76, 0xCu);
        MEMORY[0x1DA72CB90](v76, -1, -1);
      }

      sub_1D9178F4C();
      v77 = qword_1ECAAFC10;
      v78 = v97;
      sub_1D91772FC();

      sub_1D90CF72C(&v117);
      (v92)(v78, v98);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
    }
  }

  else
  {
    sub_1D8D08A50(&v103, &qword_1ECABA5A8, &unk_1D91B6AB0);
    sub_1D90D09E0(&v117, &v103);
    v59 = sub_1D917741C();
    v60 = sub_1D9178CFC();
    sub_1D90CF72C(&v117);
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v103 = v62;
      *v61 = 136446210;
      v63 = 0xEC00000079726172;
      v64 = 0x62694C6C61636F6CLL;
      if (v46 != 1)
      {
        v64 = 0x7265666E69;
        v63 = 0xE500000000000000;
      }

      if (v46)
      {
        v65 = v64;
      }

      else
      {
        v65 = 0x495041616964656DLL;
      }

      if (v46)
      {
        v66 = v63;
      }

      else
      {
        v66 = 0xE800000000000000;
      }

      v67 = sub_1D8CFA924(v65, v66, &v103);

      *(v61 + 4) = v67;
      _os_log_impl(&dword_1D8CEC000, v59, v60, "No provider for %{public}s found", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x1DA72CB90](v62, -1, -1);
      MEMORY[0x1DA72CB90](v61, -1, -1);
    }

    else
    {
    }

    sub_1D90CC2C0();
    v79 = swift_allocError();
    *v80 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v81 = v79;
    swift_continuation_throwingResumeWithError();
    v82 = sub_1D917741C();
    v83 = sub_1D9178D1C();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 134217984;
      *(v84 + 4) = sub_1D90E9F24(v96);
      _os_log_impl(&dword_1D8CEC000, v82, v83, "PML Total request duration: %fs", v84, 0xCu);
      MEMORY[0x1DA72CB90](v84, -1, -1);
    }

    sub_1D9178F4C();
    v85 = qword_1ECAAFC10;
    v86 = v97;
    sub_1D91772FC();

    sub_1D90CF72C(&v117);
    (v92)(v86, v98);
  }
}

uint64_t sub_1D90EAF44(uint64_t a1, void (*a2)(__int128 *), uint64_t a3)
{
  v86 = a2;
  v87 = a3;
  v89 = sub_1D917734C();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v80 = &v78 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v78 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  v13 = *(a1 + 176);
  v143 = *(a1 + 160);
  v144 = v13;
  v145 = *(a1 + 192);
  v146 = *(a1 + 208);
  v14 = *(a1 + 112);
  v139 = *(a1 + 96);
  v140 = v14;
  v15 = *(a1 + 144);
  v141 = *(a1 + 128);
  v142 = v15;
  v16 = *(a1 + 48);
  v135 = *(a1 + 32);
  v136 = v16;
  v17 = *(a1 + 80);
  v137 = *(a1 + 64);
  v138 = v17;
  v18 = *(a1 + 16);
  v133 = *a1;
  v134 = v18;
  v85 = mach_absolute_time();
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  v20 = __swift_project_value_buffer(v19, qword_1ECAB0D50);
  sub_1D90D09E0(&v133, &v103);
  v83 = v20;
  v21 = sub_1D917741C();
  v22 = sub_1D9178D1C();
  sub_1D90CF72C(&v133);
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v82 = v12;
    v25 = v24;
    *&v90 = v24;
    *v23 = 136315138;
    v113 = v143;
    v114 = v144;
    v115[0] = v145;
    LOBYTE(v115[1]) = v146;
    v109 = v139;
    v110 = v140;
    v111 = v141;
    v112 = v142;
    v105 = v135;
    v106 = v136;
    v107 = v137;
    v108 = v138;
    v103 = v133;
    v104 = v134;
    sub_1D90CF75C();
    v26 = MEMORY[0x1DA729BD0]();
    v28 = v27;

    v29 = sub_1D8CFA924(v26, v28, &v90);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1D8CEC000, v21, v22, "Calling media collection with request: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    v30 = v25;
    v12 = v82;
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  sub_1D9178F5C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v31 = qword_1ECAAFC10;
  v32 = v84;
  sub_1D90E9FD0(v12);
  sub_1D91772FC();

  v33 = v89;
  v81 = *(v4 + 8);
  v82 = (v4 + 8);
  v81(v12, v89);
  v34 = v79;
  sub_1D90E9FD0(v79);
  v35 = *(v4 + 32);
  v36 = v80;
  v35(v80, v34, v33);
  (*(v4 + 16))(v88, v36, v33);
  v37 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v38 = swift_allocObject();
  v39 = v87;
  *(v38 + 16) = v86;
  *(v38 + 24) = v39;
  *(v38 + 32) = v85;
  *(v38 + 40) = "mediaCollection(for:completion:)";
  *(v38 + 48) = 32;
  *(v38 + 56) = 2;
  v35((v38 + v37), v36, v33);
  v113 = v143;
  v114 = v144;
  v115[0] = v145;
  LOBYTE(v115[1]) = v146;
  v109 = v139;
  v110 = v140;
  v111 = v141;
  v112 = v142;
  v105 = v135;
  v106 = v136;
  v107 = v137;
  v108 = v138;
  v103 = v133;
  v104 = v134;

  sub_1D90CF0E4(v32 + 2, &v119);
  v40 = v32[5];
  v41 = v32[6];
  __swift_project_boxed_opaque_existential_1(v32 + 2, v40);
  v42 = BYTE8(v129);
  (*(v41 + 8))(&v103, BYTE8(v129), v40, v41);
  if (*(&v104 + 1))
  {
    sub_1D8D6BCE0(&v103, v116);
    v43 = v117;
    v44 = v118;
    __swift_project_boxed_opaque_existential_1(v116, v117);
    v113 = v129;
    v114 = v130;
    v115[0] = v131;
    LOBYTE(v115[1]) = v132;
    v109 = v125;
    v110 = v126;
    v111 = v127;
    v112 = v128;
    v105 = v121;
    v106 = v122;
    v107 = v123;
    v108 = v124;
    v103 = v119;
    v104 = v120;
    if ((*(v44 + 16))(&v103, v43, v44))
    {
      v81(v88, v89);
      v45 = v117;
      v46 = v118;
      __swift_project_boxed_opaque_existential_1(v116, v117);
      v113 = v129;
      v114 = v130;
      v115[0] = v131;
      LOBYTE(v115[1]) = v132;
      v109 = v125;
      v110 = v126;
      v111 = v127;
      v112 = v128;
      v105 = v121;
      v106 = v122;
      v107 = v123;
      v108 = v124;
      v103 = v119;
      v104 = v120;
      v47 = swift_allocObject();
      v48 = v130;
      *(v47 + 184) = v129;
      *(v47 + 200) = v48;
      *(v47 + 216) = v131;
      v49 = v126;
      *(v47 + 120) = v125;
      *(v47 + 136) = v49;
      v50 = v128;
      *(v47 + 152) = v127;
      *(v47 + 168) = v50;
      v51 = v122;
      *(v47 + 56) = v121;
      *(v47 + 72) = v51;
      v52 = v124;
      *(v47 + 88) = v123;
      *(v47 + 104) = v52;
      v53 = v120;
      *(v47 + 24) = v119;
      *(v47 + 16) = v84;
      *(v47 + 232) = v132;
      *(v47 + 40) = v53;
      *(v47 + 240) = sub_1D90EF048;
      *(v47 + 248) = v38;
      *(v47 + 256) = v86;
      *(v47 + 264) = v87;
      v54 = *(v46 + 8);

      sub_1D90D09E0(&v119, &v90);

      v54(&v103, sub_1D90EF04C, v47, v45, v46);

      sub_1D90CF72C(&v119);
    }

    else
    {
      v70 = sub_1D917741C();
      v71 = sub_1D9178CFC();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_1D8CEC000, v70, v71, "No provider for request found", v72, 2u);
        MEMORY[0x1DA72CB90](v72, -1, -1);
      }

      *&v103 = 1;
      sub_1D90DD880(&v103);
      v100 = v113;
      v101 = v114;
      v102[0] = v115[0];
      *(v102 + 11) = *(v115 + 11);
      v96 = v109;
      v97 = v110;
      v98 = v111;
      v99 = v112;
      v92 = v105;
      v93 = v106;
      v94 = v107;
      v95 = v108;
      v90 = v103;
      v91 = v104;
      v86(&v90);
      v73 = sub_1D917741C();
      v74 = sub_1D9178D1C();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = sub_1D90E9F24(v85);
        _os_log_impl(&dword_1D8CEC000, v73, v74, "PML Total request duration: %fs", v75, 0xCu);
        MEMORY[0x1DA72CB90](v75, -1, -1);
      }

      sub_1D9178F4C();
      v76 = qword_1ECAAFC10;
      v77 = v88;
      sub_1D91772FC();

      sub_1D90CF72C(&v119);
      v81(v77, v89);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v116);
  }

  else
  {
    sub_1D8D08A50(&v103, &qword_1ECABA5A8, &unk_1D91B6AB0);
    sub_1D90D09E0(&v119, &v103);
    v55 = sub_1D917741C();
    v56 = sub_1D9178CFC();
    sub_1D90CF72C(&v119);
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&v103 = v58;
      *v57 = 136446210;
      v59 = 0xEC00000079726172;
      v60 = 0x62694C6C61636F6CLL;
      if (v42 != 1)
      {
        v60 = 0x7265666E69;
        v59 = 0xE500000000000000;
      }

      if (v42)
      {
        v61 = v60;
      }

      else
      {
        v61 = 0x495041616964656DLL;
      }

      if (v42)
      {
        v62 = v59;
      }

      else
      {
        v62 = 0xE800000000000000;
      }

      v63 = sub_1D8CFA924(v61, v62, &v103);

      *(v57 + 4) = v63;
      _os_log_impl(&dword_1D8CEC000, v55, v56, "No provider for %{public}s found", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x1DA72CB90](v58, -1, -1);
      MEMORY[0x1DA72CB90](v57, -1, -1);
    }

    *&v103 = 0;
    sub_1D90DD880(&v103);
    v100 = v113;
    v101 = v114;
    v102[0] = v115[0];
    *(v102 + 11) = *(v115 + 11);
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v92 = v105;
    v93 = v106;
    v94 = v107;
    v95 = v108;
    v90 = v103;
    v91 = v104;
    v86(&v90);
    v64 = sub_1D917741C();
    v65 = sub_1D9178D1C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = sub_1D90E9F24(v85);
      _os_log_impl(&dword_1D8CEC000, v64, v65, "PML Total request duration: %fs", v66, 0xCu);
      MEMORY[0x1DA72CB90](v66, -1, -1);
    }

    sub_1D9178F4C();
    v67 = qword_1ECAAFC10;
    v68 = v88;
    sub_1D91772FC();

    sub_1D90CF72C(&v119);
    return (v81)(v68, v89);
  }
}

void sub_1D90EBAE0(_OWORD *a1, void (*a2)(_OWORD *), uint64_t a3, uint64_t a4)
{
  v5 = a1[11];
  v16[10] = a1[10];
  v16[11] = v5;
  v17[0] = a1[12];
  *(v17 + 11) = *(a1 + 203);
  v6 = a1[7];
  v16[6] = a1[6];
  v16[7] = v6;
  v7 = a1[9];
  v16[8] = a1[8];
  v16[9] = v7;
  v8 = a1[3];
  v16[2] = a1[2];
  v16[3] = v8;
  v9 = a1[5];
  v16[4] = a1[4];
  v16[5] = v9;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  a2(v16);
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1ECAB0D50);
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = sub_1D90E9F24(a4);
    _os_log_impl(&dword_1D8CEC000, v12, v13, "PML Total request duration: %fs", v14, 0xCu);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  sub_1D9178F4C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = qword_1ECAAFC10;
  sub_1D91772FC();
}

uint64_t sub_1D90EBCD8(__int128 *a1, void *a2, unint64_t a3, void (*a4)(__int128 *), uint64_t a5, void (*a6)(__int128 *), uint64_t a7)
{
  v140 = a6;
  v141 = a7;
  v142 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v12 = *(v142 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v15 = v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v138 - v17;
  v19 = a1[11];
  v20 = a1[9];
  v213 = a1[10];
  v214 = v19;
  v21 = a1[11];
  v215[0] = a1[12];
  *(v215 + 11) = *(a1 + 203);
  v22 = a1[7];
  v23 = a1[5];
  v209 = a1[6];
  v210 = v22;
  v24 = a1[7];
  v25 = a1[9];
  v211 = a1[8];
  v212 = v25;
  v26 = a1[3];
  v27 = a1[1];
  v205 = a1[2];
  v206 = v26;
  v28 = a1[3];
  v29 = a1[5];
  v207 = a1[4];
  v208 = v29;
  v30 = a1[1];
  v203 = *a1;
  v204 = v30;
  v216[10] = v213;
  v216[11] = v21;
  v217[0] = a1[12];
  *(v217 + 11) = *(a1 + 203);
  v216[6] = v209;
  v216[7] = v24;
  v216[8] = v211;
  v216[9] = v20;
  v216[2] = v205;
  v216[3] = v28;
  v216[4] = v207;
  v216[5] = v23;
  v216[0] = v203;
  v216[1] = v27;
  if (sub_1D90E0218(v216) == 1)
  {
    v34 = a4;
    v15 = v189;
    v35 = *nullsub_1(v216, v31, v32, v33);
    if (qword_1ECAB0D48 == -1)
    {
LABEL_3:
      v36 = sub_1D917744C();
      __swift_project_value_buffer(v36, qword_1ECAB0D50);
      v197 = v213;
      v198 = v214;
      v199[0] = v215[0];
      *(v15 + 203) = *(v215 + 11);
      v193 = v209;
      v194 = v210;
      v195 = v211;
      v196 = v212;
      v189[2] = v205;
      v190 = v206;
      v191 = v207;
      v192 = v208;
      v189[0] = v203;
      v189[1] = v204;
      v40 = nullsub_1(v189, v37, v38, v39);
      sub_1D90BC378(*v40);
      v41 = sub_1D917741C();
      v42 = sub_1D9178CFC();
      sub_1D8D08A50(&v203, &qword_1ECABA698, &unk_1D91B62E0);
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        sub_1D90CC2C0();
        swift_allocError();
        *v45 = v35;
        *&v188[16] = v204;
        *v188 = v203;
        *&v188[80] = v208;
        *&v188[64] = v207;
        *&v188[48] = v206;
        *&v188[32] = v205;
        *&v188[144] = v212;
        *&v188[128] = v211;
        *&v188[112] = v210;
        *&v188[96] = v209;
        *&v188[203] = *(v215 + 11);
        *&v188[192] = v215[0];
        *&v188[176] = v214;
        *&v188[160] = v213;
        v48 = nullsub_1(v188, v45, v46, v47);
        sub_1D90BC378(*v48);
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v49;
        *v44 = v49;
        _os_log_impl(&dword_1D8CEC000, v41, v42, "Received error from provider: %@", v43, 0xCu);
        sub_1D8D08A50(v44, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v44, -1, -1);
        MEMORY[0x1DA72CB90](v43, -1, -1);
      }

      *v178 = v35;
      sub_1D90DD880(v178);
      v175 = *&v178[160];
      v176 = *&v178[176];
      v177[0] = *&v178[192];
      *(v177 + 11) = *&v178[203];
      v173[4] = *&v178[96];
      v173[5] = *&v178[112];
      v173[6] = *&v178[128];
      v174 = *&v178[144];
      v173[0] = *&v178[32];
      v173[1] = *&v178[48];
      v173[2] = *&v178[64];
      v173[3] = *&v178[80];
      v171 = *v178;
      v172 = *&v178[16];
      v187[2] = v213;
      v187[3] = v214;
      v187[4] = v215[0];
      *(&v187[4] + 11) = *(v215 + 11);
      v185 = v209;
      v186 = v210;
      v187[0] = v211;
      v187[1] = v212;
      v181 = v205;
      v182 = v206;
      v183 = v207;
      v184 = v208;
      v179 = v203;
      v180 = v204;
      v83 = nullsub_1(&v179, v80, v81, v82);
      sub_1D90BC378(*v83);
      v34(&v171);
      *&v188[160] = v175;
      *&v188[176] = v176;
      *&v188[192] = v177[0];
      *&v188[203] = *(v177 + 11);
      *&v188[96] = v173[4];
      *&v188[112] = v173[5];
      *&v188[128] = v173[6];
      *&v188[144] = v174;
      *&v188[32] = v173[0];
      *&v188[48] = v173[1];
      *&v188[64] = v173[2];
      *&v188[80] = v173[3];
      *v188 = v171;
      *&v188[16] = v172;
      v84 = v188;
      return sub_1D8D08A50(v84, &qword_1ECABA698, &unk_1D91B62E0);
    }

LABEL_45:
    swift_once();
    goto LABEL_3;
  }

  v138[1] = a5;
  v139 = a4;
  v50 = nullsub_1(v216, v31, v32, v33);
  v197 = v50[10];
  v198 = v50[11];
  v199[0] = v50[12];
  *(v199 + 10) = *(v50 + 202);
  v193 = v50[6];
  v194 = v50[7];
  v195 = v50[8];
  v196 = v50[9];
  v189[2] = v50[2];
  v190 = v50[3];
  v191 = v50[4];
  v192 = v50[5];
  v189[0] = *v50;
  v189[1] = v50[1];
  v51 = a2;
  v52 = sub_1D90ED080(a3, v189);
  v56 = v52;
  if ((v53 & 1) == 0)
  {
    v85 = a2;
    v86 = a2[5];
    v87 = a2[6];
    __swift_project_boxed_opaque_existential_1(v85 + 2, v86);
    v88 = (*(v87 + 16))(*(a3 + 168), v86, v87);
    v89 = *(a3 + 16);
    v201[0] = *a3;
    v201[1] = v89;
    v202 = *(a3 + 32);
    v90 = *(a3 + 152);
    v171 = v201[0];
    v172 = v89;
    LOBYTE(v173[0]) = v202;
    *(v173 + 8) = 0u;
    *(&v173[1] + 8) = 0u;
    *(&v173[2] + 8) = 0u;
    *(&v173[3] + 8) = 0u;
    *(&v173[4] + 8) = 0u;
    *(&v173[5] + 8) = 0u;
    *(&v173[6] + 1) = 0;
    BYTE4(v174) = 0;
    LODWORD(v174) = 2;
    *(&v174 + 1) = v90;
    *&v175 = v56;
    WORD4(v175) = v88;
    v176 = 0u;
    v177[0] = 0u;
    LOBYTE(v177[1]) = -1;
    v197 = v175;
    v198 = 0u;
    v199[0] = 0u;
    LOBYTE(v199[1]) = -1;
    v193 = v173[4];
    v194 = v173[5];
    v195 = 0uLL;
    v196 = v174;
    v189[2] = v173[0];
    v190 = v173[1];
    v191 = v173[2];
    v192 = v173[3];
    v189[0] = v201[0];
    v189[1] = v89;
    v91 = *(a3 + 176);
    *&v188[160] = *(a3 + 160);
    *&v188[176] = v91;
    *&v188[192] = *(a3 + 192);
    v188[208] = *(a3 + 208);
    v92 = *(a3 + 112);
    *&v188[96] = *(a3 + 96);
    *&v188[112] = v92;
    v93 = *(a3 + 144);
    *&v188[128] = *(a3 + 128);
    *&v188[144] = v93;
    v94 = *(a3 + 48);
    *&v188[32] = *(a3 + 32);
    *&v188[48] = v94;
    v95 = *(a3 + 80);
    *&v188[64] = *(a3 + 64);
    *&v188[80] = v95;
    v96 = *(a3 + 16);
    *v188 = v201[0];
    *&v188[16] = v96;
    sub_1D8E3ACE0(v201, &v179);
    v97 = sub_1D90CF4C0(v188);
    v57 = v142;
    if (v97)
    {
      *&v189[0] = 2;
      sub_1D90DD880(v189);
      *&v188[160] = v197;
      *&v188[176] = v198;
      *&v188[192] = v199[0];
      *&v188[203] = *(v199 + 11);
      *&v188[96] = v193;
      *&v188[112] = v194;
      *&v188[128] = v195;
      *&v188[144] = v196;
      *&v188[32] = v189[2];
      *&v188[48] = v190;
      *&v188[64] = v191;
      *&v188[80] = v192;
      *v188 = v189[0];
      *&v188[16] = v189[1];
      v139(v188);
      return sub_1D90CF72C(&v171);
    }

    v99 = *v50;
    if (v56 >= *(v99 + 16))
    {
      v100 = *(v99 + 16);
    }

    else
    {
      v100 = v56;
    }

    v56 = sub_1D8F4D2A4(v100, v99);
    v51 = v101;
    v15 = v102;
    a3 = v103;
    if ((v103 & 1) == 0)
    {

LABEL_18:
      sub_1D90D0468(v56, v51, v15, a3);
      v105 = v104;
      v34 = v139;
      goto LABEL_32;
    }

    sub_1D9179C5C();
    swift_unknownObjectRetain_n();

    v131 = swift_dynamicCastClass();
    if (!v131)
    {
      swift_unknownObjectRelease();
      v131 = MEMORY[0x1E69E7CC0];
    }

    v132 = *(v131 + 16);

    if (!__OFSUB__(a3 >> 1, v15))
    {
      if (v132 == (a3 >> 1) - v15)
      {
        v105 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v34 = v139;
        if (v105)
        {
          goto LABEL_33;
        }

        v105 = MEMORY[0x1E69E7CC0];
LABEL_32:
        swift_unknownObjectRelease();
LABEL_33:
        v167 = v175;
        v168 = v176;
        v169 = v177[0];
        v170 = v177[1];
        v163 = v173[4];
        v164 = v173[5];
        v165 = v173[6];
        v166 = v174;
        v159 = v173[0];
        v160 = v173[1];
        v161 = v173[2];
        v162 = v173[3];
        v157 = v171;
        v158 = v172;
        nullsub_1(&v157, v133, v134, v135);
        v153 = v167;
        v154 = v168;
        v155 = v169;
        v156 = v170;
        v149 = v163;
        v150 = v164;
        v151 = v165;
        v152 = v166;
        v145 = v159;
        v146 = v160;
        v147 = v161;
        v148 = v162;
        v143 = v157;
        v144 = v158;
        v136 = *(v105 + 16);
        sub_1D90D09E0(&v171, v189);

        v35 = 0;
        while (1)
        {
          v15 = v35;
          if (v136 == v35)
          {
LABEL_37:

            *v178 = v105;
            *&v178[168] = v153;
            *&v178[184] = v154;
            *&v178[200] = v155;
            v178[216] = v156;
            *&v178[104] = v149;
            *&v178[120] = v150;
            *&v178[136] = v151;
            *&v178[152] = v152;
            *&v178[40] = v145;
            *&v178[56] = v146;
            *&v178[72] = v147;
            *&v178[88] = v148;
            *&v178[8] = v143;
            *&v178[24] = v144;
            v178[217] = v136 != v15;
            *&v188[160] = *&v178[160];
            *&v188[176] = *&v178[176];
            *&v188[192] = *&v178[192];
            *&v188[96] = *&v178[96];
            *&v188[112] = *&v178[112];
            *&v188[128] = *&v178[128];
            *&v188[144] = *&v178[144];
            *&v188[32] = *&v178[32];
            *&v188[48] = *&v178[48];
            *&v188[64] = *&v178[64];
            *&v188[80] = *&v178[80];
            *v188 = *v178;
            *&v188[16] = *&v178[16];
            *&v188[202] = *&v178[202];
            sub_1D90DD88C(v188);
            v187[2] = *&v188[160];
            v187[3] = *&v188[176];
            v187[4] = *&v188[192];
            *(&v187[4] + 11) = *&v188[203];
            v185 = *&v188[96];
            v186 = *&v188[112];
            v187[0] = *&v188[128];
            v187[1] = *&v188[144];
            v181 = *&v188[32];
            v182 = *&v188[48];
            v183 = *&v188[64];
            v184 = *&v188[80];
            v179 = *v188;
            v180 = *&v188[16];
            sub_1D90DDE88(v178, v189);
            v34(&v179);
            sub_1D90DDD68(v178);
            goto LABEL_38;
          }

          if (v35 >= *(v105 + 16))
          {
            break;
          }

          sub_1D90EF0AC(v105 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v35++, v18, type metadata accessor for PodcastsMediaLibrary.MediaItem);
          v137 = v18[*(v57 + 108)];
          sub_1D9096E98(v18);
          if (v137)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      goto LABEL_48;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v57 = v142;
  if (!v52)
  {
    v106 = v50[1];
    v179 = *v50;
    v180 = v106;
    v107 = v50[2];
    v108 = v50[3];
    v109 = v50[5];
    v183 = v50[4];
    v184 = v109;
    v181 = v107;
    v182 = v108;
    v110 = v50[6];
    v111 = v50[7];
    v112 = v50[8];
    v187[1] = v50[9];
    v187[0] = v112;
    v186 = v111;
    v185 = v110;
    v113 = v50[10];
    v114 = v50[11];
    v115 = v50[12];
    *(&v187[4] + 10) = *(v50 + 202);
    v187[4] = v115;
    v187[3] = v114;
    v187[2] = v113;
    sub_1D90DD88C(&v179);
    *&v178[160] = v187[2];
    *&v178[176] = v187[3];
    *&v178[192] = v187[4];
    *&v178[203] = *(&v187[4] + 11);
    *&v178[96] = v185;
    *&v178[112] = v186;
    *&v178[128] = v187[0];
    *&v178[144] = v187[1];
    *&v178[32] = v181;
    *&v178[48] = v182;
    *&v178[64] = v183;
    *&v178[80] = v184;
    *v178 = v179;
    *&v178[16] = v180;
    *&v188[160] = v213;
    *&v188[176] = v214;
    *&v188[192] = v215[0];
    *&v188[203] = *(v215 + 11);
    *&v188[96] = v209;
    *&v188[112] = v210;
    *&v188[128] = v211;
    *&v188[144] = v212;
    *&v188[32] = v205;
    *&v188[48] = v206;
    *&v188[64] = v207;
    *&v188[80] = v208;
    *v188 = v203;
    *&v188[16] = v204;
    v119 = nullsub_1(v188, v116, v117, v118);
    sub_1D90DDE88(v119, v189);
    v139(v178);
    v197 = *&v178[160];
    v198 = *&v178[176];
    v199[0] = *&v178[192];
    *(v199 + 11) = *&v178[203];
    v193 = *&v178[96];
    v194 = *&v178[112];
    v195 = *&v178[128];
    v196 = *&v178[144];
    v189[2] = *&v178[32];
    v190 = *&v178[48];
    v191 = *&v178[64];
    v192 = *&v178[80];
    v120 = *v178;
    v121 = *&v178[16];
LABEL_39:
    v189[0] = v120;
    v189[1] = v121;
    v84 = v189;
    return sub_1D8D08A50(v84, &qword_1ECABA698, &unk_1D91B62E0);
  }

  v18 = v188;
  if (v52 != 1)
  {
    v122 = *(a3 + 152);
    v123 = *(a3 + 160);
    v124 = __OFADD__(v123, v122);
    v125 = v123 + v122;
    if (!v124)
    {
      v126 = *(a3 + 16);
      v143 = *a3;
      v144 = v126;
      LOBYTE(v145) = *(a3 + 32);
      v171 = v143;
      v172 = v126;
      LOBYTE(v173[0]) = v145;
      *(v173 + 8) = 0u;
      *(&v173[1] + 8) = 0u;
      *(&v173[2] + 8) = 0u;
      *(&v173[3] + 8) = 0u;
      *(&v173[4] + 8) = 0u;
      *(&v173[5] + 8) = 0u;
      *(&v173[6] + 1) = 0;
      BYTE4(v174) = 0;
      LODWORD(v174) = 2;
      *(&v174 + 1) = v122;
      *&v175 = v125;
      WORD4(v175) = 2;
      v176 = 0u;
      v177[0] = 0u;
      LOBYTE(v177[1]) = -1;
      v127 = *v50;
      *v178 = v143;
      *&v178[16] = v126;
      *&v178[64] = v173[2];
      *&v178[80] = v173[3];
      *&v178[32] = v173[0];
      *&v178[48] = v173[1];
      *&v178[128] = 0uLL;
      *&v178[144] = v174;
      *&v178[96] = v173[4];
      *&v178[112] = v173[5];
      v178[208] = -1;
      memset(&v178[176], 0, 32);
      *&v178[160] = v175;
      nullsub_1(v178, v53, v54, v55);
      v167 = *&v178[160];
      v168 = *&v178[176];
      v169 = *&v178[192];
      v170 = v178[208];
      v163 = *&v178[96];
      v164 = *&v178[112];
      v165 = *&v178[128];
      v166 = *&v178[144];
      v159 = *&v178[32];
      v160 = *&v178[48];
      v161 = *&v178[64];
      v162 = *&v178[80];
      v157 = *v178;
      v158 = *&v178[16];
      v128 = *(v127 + 16);
      sub_1D8E3ACE0(&v143, v189);
      sub_1D90D09E0(&v171, v189);

      v129 = 0;
      v34 = v139;
      do
      {
        v35 = v129;
        if (v128 == v129)
        {
          break;
        }

        if (v129 >= *(v127 + 16))
        {
          goto LABEL_44;
        }

        sub_1D90EF0AC(v127 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v129++, v15, type metadata accessor for PodcastsMediaLibrary.MediaItem);
        v130 = v15[*(v57 + 108)];
        sub_1D9096E98(v15);
      }

      while ((v130 & 1) == 0);
      *&v188[168] = v167;
      *&v188[184] = v168;
      *&v188[200] = v169;
      *&v188[104] = v163;
      *&v188[120] = v164;
      *&v188[136] = v165;
      *&v188[152] = v166;
      *&v188[40] = v159;
      *&v188[56] = v160;
      *&v188[72] = v161;
      *&v188[88] = v162;
      *&v188[8] = v157;
      v188[216] = v170;
      *&v188[24] = v158;
      *v188 = v127;
      v188[217] = v128 != v35;
      sub_1D90DD88C(v188);
      v187[2] = *&v188[160];
      v187[3] = *&v188[176];
      v187[4] = *&v188[192];
      *(&v187[4] + 11) = *&v188[203];
      v185 = *&v188[96];
      v186 = *&v188[112];
      v187[0] = *&v188[128];
      v187[1] = *&v188[144];
      v181 = *&v188[32];
      v182 = *&v188[48];
      v183 = *&v188[64];
      v184 = *&v188[80];
      v179 = *v188;
      v180 = *&v188[16];
      v34(&v179);
LABEL_38:
      sub_1D90CF72C(&v171);
      v197 = v187[2];
      v198 = v187[3];
      v199[0] = v187[4];
      *(v199 + 11) = *(&v187[4] + 11);
      v193 = v185;
      v194 = v186;
      v195 = v187[0];
      v196 = v187[1];
      v189[2] = v181;
      v190 = v182;
      v191 = v183;
      v192 = v184;
      v120 = v179;
      v121 = v180;
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_47;
  }

  v58 = a2[5];
  v59 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v58);
  v60 = (*(v59 + 16))(*(a3 + 168), v58, v59);
  v61 = *(a3 + 16);
  v157 = *a3;
  v158 = v61;
  v62 = *(a3 + 40);
  v63 = *(a3 + 64);
  v201[0] = *(a3 + 48);
  v64 = *(a3 + 112);
  v65 = *(a3 + 80);
  *&v178[32] = *(a3 + 96);
  *&v178[48] = v64;
  v66 = *(a3 + 112);
  *&v178[64] = *(a3 + 128);
  v68 = *(a3 + 48);
  v67 = *(a3 + 64);
  v69 = *(a3 + 80);
  *v178 = v63;
  *&v178[16] = v69;
  v70 = *(a3 + 160);
  v71 = *(a3 + 192);
  v143 = *(a3 + 176);
  v144 = v71;
  v72 = *(a3 + 16);
  v179 = *a3;
  v180 = v72;
  LOBYTE(v181) = *(a3 + 32);
  v182 = *(a3 + 48);
  v183 = v67;
  v73 = *(a3 + 112);
  v74 = *(a3 + 128);
  *(v187 + 13) = *(a3 + 141);
  v187[0] = v74;
  v186 = v73;
  v75 = *(a3 + 96);
  v184 = *(a3 + 80);
  v185 = v75;
  v76 = *(a3 + 176);
  v77 = *(a3 + 192);
  BYTE6(v189[2]) = *(a3 + 208);
  *(&v189[1] + 6) = v77;
  *(v189 + 6) = v76;
  *(&v181 + 1) = v62;
  *(&v187[1] + 8) = *(a3 + 152);
  WORD4(v187[2]) = v60;
  *(&v187[4] + 9) = *(&v189[1] + 15);
  *(&v187[3] + 10) = v189[1];
  *(&v187[2] + 10) = v189[0];
  v197 = v187[2];
  v198 = v187[3];
  v199[0] = v187[4];
  v193 = v185;
  v194 = v186;
  v196 = v187[1];
  v195 = v74;
  v189[2] = v181;
  v190 = v182;
  v191 = v67;
  v192 = v184;
  v189[0] = v179;
  v189[1] = v180;
  *&v188[160] = v70;
  *&v188[176] = v143;
  *&v188[192] = *(a3 + 192);
  *&v188[96] = *&v178[32];
  *&v188[112] = v66;
  v78 = *(a3 + 144);
  *&v188[128] = *(a3 + 128);
  *&v188[144] = v78;
  *&v188[32] = *(a3 + 32);
  *&v188[48] = v68;
  LOBYTE(v159) = *(a3 + 32);
  v200 = v62;
  *&v178[77] = *(a3 + 141);
  LOBYTE(v145) = *(a3 + 208);
  LOBYTE(v199[1]) = v187[5];
  v188[208] = *(a3 + 208);
  *&v188[64] = v67;
  *&v188[80] = v65;
  v79 = *(a3 + 16);
  *v188 = v157;
  *&v188[16] = v79;
  sub_1D8E3ACE0(&v157, &v171);
  sub_1D8D088B4(&v200, &v171, &qword_1ECABA718, &qword_1D91B6B78);
  sub_1D8D088B4(v201, &v171, &qword_1ECAB5900, &unk_1D9191B80);
  sub_1D8D088B4(v178, &v171, &qword_1ECAB9F78, qword_1D91B16D0);
  sub_1D8D088B4(&v143, &v171, &qword_1ECABA6B8, &unk_1D91B6B80);
  if (sub_1D90CF4C0(v188))
  {
    *&v189[0] = 3;
    sub_1D90DD880(v189);
    *&v188[160] = v197;
    *&v188[176] = v198;
    *&v188[192] = v199[0];
    *&v188[203] = *(v199 + 11);
    *&v188[96] = v193;
    *&v188[112] = v194;
    *&v188[128] = v195;
    *&v188[144] = v196;
    *&v188[32] = v189[2];
    *&v188[48] = v190;
    *&v188[64] = v191;
    *&v188[80] = v192;
    *v188 = v189[0];
    *&v188[16] = v189[1];
    v139(v188);
  }

  else
  {
    v197 = v187[2];
    v198 = v187[3];
    v199[0] = v187[4];
    LOBYTE(v199[1]) = v187[5];
    v193 = v185;
    v194 = v186;
    v195 = v187[0];
    v196 = v187[1];
    v189[2] = v181;
    v190 = v182;
    v191 = v183;
    v192 = v184;
    v189[0] = v179;
    v189[1] = v180;
    sub_1D90EAF44(v189, v140, v141);
  }

  return sub_1D90CF72C(&v179);
}

uint64_t sub_1D90ED080(uint64_t *a1, uint64_t *a2)
{
  v5 = sub_1D917734C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v75 = *(a1 + 1);
  v76 = a1[3];
  v11 = *(a1 + 32);
  v12 = *(a1 + 113);
  v72 = *(a1 + 97);
  v73 = v12;
  v74[0] = *(a1 + 129);
  v13 = a1[18];
  v39 = a1[19];
  v40 = v10;
  *(v74 + 15) = v13;
  v14 = *(a1 + 49);
  v68 = *(a1 + 33);
  v69 = v14;
  v15 = *(a1 + 81);
  v70 = *(a1 + 65);
  v71 = v15;
  v38 = a1[20];
  v16 = *(a1 + 168);
  v17 = *(a1 + 185);
  v65 = *(a1 + 169);
  v66 = v17;
  v67 = *(a1 + 201);
  v18 = *a2;
  v19 = *(a2 + 23);
  v88 = *(a2 + 21);
  v89 = v19;
  v90 = *(a2 + 25);
  v91 = *(a2 + 216);
  v20 = *(a2 + 15);
  v84 = *(a2 + 13);
  v85 = v20;
  v21 = *(a2 + 19);
  v86 = *(a2 + 17);
  v87 = v21;
  v22 = *(a2 + 7);
  v80 = *(a2 + 5);
  v81 = v22;
  v23 = *(a2 + 11);
  v82 = *(a2 + 9);
  v83 = v23;
  v24 = *(a2 + 3);
  v78 = *(a2 + 1);
  v79 = v24;
  v77 = *(a2 + 217);
  sub_1D9178F6C();
  if (qword_1ECAAFC08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v25 = qword_1ECAAFC10;
  sub_1D917733C();
  sub_1D91772FC();

  (*(v6 + 8))(v9, v5);
  if (!*(v18 + 16) && v77 != 1)
  {
    return 1;
  }

  if (v11 != 1)
  {
    return 0;
  }

  v26 = *(v2 + 40);
  v27 = *(v2 + 48);
  __swift_project_boxed_opaque_existential_1((v2 + 16), v26);
  if (((*(v27 + 24))(v16, v26, v27) & 1) != 0 && *(v2 + 64) == 1)
  {
    v28 = v39 + v38;
    v29 = v40;
    if (!__OFADD__(v39, v38))
    {
      return 2 * (v28 < *(v29 + 16));
    }

    __break(1u);
    return 0;
  }

  v62[0] = v88;
  v62[1] = v89;
  v62[2] = v90;
  v60[5] = v84;
  v60[6] = v85;
  v60[7] = v86;
  v61 = v87;
  v60[1] = v80;
  v60[2] = v81;
  v60[3] = v82;
  v60[4] = v83;
  v59 = v78;
  v60[0] = v79;
  v42 = v75;
  v49 = v72;
  v50 = v73;
  *v51 = v74[0];
  v45 = v68;
  v46 = v69;
  v47 = v70;
  v48 = v71;
  v55 = v65;
  v58 = v18;
  v63 = v91;
  v64 = v77;
  v31 = v39;
  v29 = v40;
  v41 = v40;
  v43 = v76;
  v44 = 1;
  *&v51[15] = *(v74 + 15);
  v52 = v39;
  v32 = v38;
  v53 = v38;
  v54 = v16;
  v56 = v66;
  v57 = v67;
  v33 = sub_1D90D0FB0(&v41);
  if (v33 < 1)
  {
    return 1;
  }

  v34 = v33;
  v59 = v75;
  *(&v60[4] + 9) = v72;
  *(&v60[5] + 9) = v73;
  *(&v60[6] + 9) = v74[0];
  *(v60 + 9) = v68;
  *(&v60[1] + 9) = v69;
  *(&v60[2] + 9) = v70;
  *(&v60[3] + 9) = v71;
  *(v62 + 1) = v65;
  v35 = *(v18 + 16);
  v58 = v29;
  *&v60[0] = v76;
  BYTE8(v60[0]) = 1;
  *(&v60[7] + 1) = *(v74 + 15);
  *&v61 = v31;
  *(&v61 + 1) = v32;
  LOBYTE(v62[0]) = v16;
  *(&v62[1] + 1) = v66;
  *(&v62[2] + 1) = v67;
  v36 = *(sub_1D90CF75C() + 2);

  if (v35 >= v36)
  {
    v28 = v31 + v32;
    if (!__OFADD__(v31, v32))
    {
      return 2 * (v28 < *(v29 + 16));
    }

    goto LABEL_21;
  }

  result = v34 + v32;
  if (__OFADD__(v34, v32))
  {
    __break(1u);
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D90ED51C(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB9F70, qword_1D91B1680) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = type metadata accessor for PodcastsMediaLibrary.MediaItem(0);
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90ED63C, 0, 0);
}

uint64_t sub_1D90ED63C()
{
  v65 = v0;
  if (qword_1ECAB0D48 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = *(v0 + 112);
  v3 = sub_1D917744C();
  *(v0 + 184) = __swift_project_value_buffer(v3, qword_1ECAB0D50);
  sub_1D90EF0AC(v2, v1, type metadata accessor for PodcastsMediaLibrary.MediaItem);
  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 176);
  if (v6)
  {
    v8 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v64 = v10;
    *v9 = 136315138;
    v11 = *(v7 + *(v8 + 180)) == 0;
    if (*(v7 + *(v8 + 180)))
    {
      v12 = 0x776F6C6C616873;
    }

    else
    {
      v12 = 0x656C617473;
    }

    if (v11)
    {
      v13 = 0xE500000000000000;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    sub_1D9096E98(v7);
    v14 = sub_1D8CFA924(v12, v13, &v64);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Reloading item [%s]", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  else
  {

    sub_1D9096E98(v7);
  }

  v15 = *(v0 + 120);
  (*(*(v0 + 168) + 56))(*(v0 + 152), 1, 1, *(v0 + 160));
  v16 = v15[5];
  v17 = v15[6];
  __swift_project_boxed_opaque_existential_1(v15 + 2, v16);
  if ((*(v17 + 24))(2, v16, v17))
  {
    goto LABEL_19;
  }

  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = *(v0 + 144);
  sub_1D8D088B4(*(v0 + 152), v20, &qword_1ECAB9F70, qword_1D91B1680);
  if ((*(v19 + 48))(v20, 1, v18) != 1)
  {
    sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
LABEL_19:
    v32 = *(v0 + 160);
    v33 = *(v0 + 168);
    v34 = *(v0 + 128);
    sub_1D90AA150(*(v0 + 152), v34);
    v35 = *(v33 + 48);
    if (v35(v34, 1, v32) == 1)
    {
      v36 = *(v0 + 160);
      v37 = *(v0 + 128);
      sub_1D90EF0AC(*(v0 + 112), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if (v35(v37, 1, v36) != 1)
      {
        sub_1D8D08A50(*(v0 + 128), &qword_1ECAB9F70, qword_1D91B1680);
      }
    }

    else
    {
      sub_1D90EF114(*(v0 + 128), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    goto LABEL_23;
  }

  v21 = *(v0 + 184);
  v22 = *(v0 + 120);
  sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
  v23 = v22[5];
  v24 = v22[6];
  __swift_project_boxed_opaque_existential_1(v22 + 2, v23);
  v25 = (*(v24 + 16))(2, v23, v24);
  *(v0 + 200) = v25;
  v26 = sub_1D917741C();
  v27 = sub_1D9178D1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *(v0 + 96) = v29;
    *v28 = 136315138;
    if (v25)
    {
      if (v25 == 1)
      {
        v30 = 0xEC00000079726172;
        v31 = 0x62694C6C61636F6CLL;
      }

      else
      {
        v30 = 0xE500000000000000;
        v31 = 0x7265666E69;
      }
    }

    else
    {
      v30 = 0xE800000000000000;
      v31 = 0x495041616964656DLL;
    }

    v45 = sub_1D8CFA924(v31, v30, (v0 + 96));

    *(v28 + 4) = v45;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Asking for item at source: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x1DA72CB90](v29, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  v46 = *(v0 + 120);
  v47 = v46[5];
  v48 = v46[6];
  __swift_project_boxed_opaque_existential_1(v46 + 2, v47);
  (*(v48 + 8))(v25, v47, v48);
  if (*(v0 + 80))
  {
    sub_1D8D6BCE0((v0 + 56), v0 + 16);
    v49 = *(v0 + 40);
    v50 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v49);
    v51 = *(v50 + 24);
    v63 = (v51 + *v51);
    v52 = v51[1];
    v53 = swift_task_alloc();
    *(v0 + 192) = v53;
    *v53 = v0;
    v53[1] = sub_1D90EDD78;
    v54 = *(v0 + 136);
    v55 = *(v0 + 112);

    return v63(v54, v55, v49, v50);
  }

  v56 = *(v0 + 184);
  sub_1D8D08A50(v0 + 56, &qword_1ECABA5A8, &unk_1D91B6AB0);
  v57 = sub_1D917741C();
  v58 = sub_1D9178D1C();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_1D8CEC000, v57, v58, "No provider for source found. returning original.", v59, 2u);
    MEMORY[0x1DA72CB90](v59, -1, -1);
  }

  v60 = *(v0 + 152);
  v62 = *(v0 + 104);
  v61 = *(v0 + 112);

  sub_1D8D08A50(v60, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D90EF0AC(v61, v62, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_23:
  v38 = *(v0 + 176);
  v39 = *(v0 + 144);
  v40 = *(v0 + 152);
  v42 = *(v0 + 128);
  v41 = *(v0 + 136);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1D90EDD78()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D90EDE74, 0, 0);
}

uint64_t sub_1D90EDE74()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 200);
  sub_1D9071830(*(v0 + 136), *(v0 + 152), &qword_1ECAB9F70, qword_1D91B1680);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  if ((*(v4 + 24))(v2, v3, v4))
  {
LABEL_8:
    v20 = *(v0 + 160);
    v21 = *(v0 + 168);
    v22 = *(v0 + 128);
    sub_1D90AA150(*(v0 + 152), v22);
    v23 = *(v21 + 48);
    if (v23(v22, 1, v20) == 1)
    {
      v24 = *(v0 + 160);
      v25 = *(v0 + 128);
      sub_1D90EF0AC(*(v0 + 112), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
      if (v23(v25, 1, v24) != 1)
      {
        sub_1D8D08A50(*(v0 + 128), &qword_1ECAB9F70, qword_1D91B1680);
      }
    }

    else
    {
      sub_1D90EF114(*(v0 + 128), *(v0 + 104), type metadata accessor for PodcastsMediaLibrary.MediaItem);
    }

    goto LABEL_12;
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 160);
  v7 = *(v0 + 168);
  v8 = *(v0 + 144);
  sub_1D8D088B4(*(v0 + 152), v8, &qword_1ECAB9F70, qword_1D91B1680);
  if ((*(v7 + 48))(v8, 1, v6) != 1)
  {
    sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
    goto LABEL_8;
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 120);
  sub_1D8D08A50(*(v0 + 144), &qword_1ECAB9F70, qword_1D91B1680);
  v11 = v10[5];
  v12 = v10[6];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v11);
  v13 = (*(v12 + 16))(v5, v11, v12);
  *(v0 + 200) = v13;
  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *(v0 + 96) = v17;
    *v16 = 136315138;
    if (v13)
    {
      if (v13 == 1)
      {
        v18 = 0xEC00000079726172;
        v19 = 0x62694C6C61636F6CLL;
      }

      else
      {
        v18 = 0xE500000000000000;
        v19 = 0x7265666E69;
      }
    }

    else
    {
      v18 = 0xE800000000000000;
      v19 = 0x495041616964656DLL;
    }

    v33 = sub_1D8CFA924(v19, v18, (v0 + 96));

    *(v16 + 4) = v33;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Asking for item at source: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  v34 = *(v0 + 120);
  v35 = v34[5];
  v36 = v34[6];
  __swift_project_boxed_opaque_existential_1(v34 + 2, v35);
  (*(v36 + 8))(v13, v35, v36);
  if (*(v0 + 80))
  {
    sub_1D8D6BCE0((v0 + 56), v0 + 16);
    v37 = *(v0 + 40);
    v38 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v37);
    v39 = *(v38 + 24);
    v51 = (v39 + *v39);
    v40 = v39[1];
    v41 = swift_task_alloc();
    *(v0 + 192) = v41;
    *v41 = v0;
    v41[1] = sub_1D90EDD78;
    v42 = *(v0 + 136);
    v43 = *(v0 + 112);

    return v51(v42, v43, v37, v38);
  }

  v44 = *(v0 + 184);
  sub_1D8D08A50(v0 + 56, &qword_1ECABA5A8, &unk_1D91B6AB0);
  v45 = sub_1D917741C();
  v46 = sub_1D9178D1C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_1D8CEC000, v45, v46, "No provider for source found. returning original.", v47, 2u);
    MEMORY[0x1DA72CB90](v47, -1, -1);
  }

  v48 = *(v0 + 152);
  v50 = *(v0 + 104);
  v49 = *(v0 + 112);

  sub_1D8D08A50(v48, &qword_1ECAB9F70, qword_1D91B1680);
  sub_1D90EF0AC(v49, v50, type metadata accessor for PodcastsMediaLibrary.MediaItem);
LABEL_12:
  v26 = *(v0 + 176);
  v27 = *(v0 + 144);
  v28 = *(v0 + 152);
  v30 = *(v0 + 128);
  v29 = *(v0 + 136);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t PodcastsMediaLibrary.deinit()
{
  sub_1D90EF050(v0 + 16);
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);
  return v0;
}

uint64_t PodcastsMediaLibrary.__deallocating_deinit()
{
  sub_1D90EF050(v0 + 16);
  sub_1D8D08A50(v0 + OBJC_IVAR____TtC18PodcastsFoundation20PodcastsMediaLibrary____lazy_storage___signpostID, &qword_1ECAB6DE0, &qword_1D9195250);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t PodcastsMediaLibrary.mediaCollection(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 528) = v2;
  *(v3 + 520) = a1;
  v4 = *(a2 + 176);
  *(v3 + 464) = *(a2 + 160);
  *(v3 + 480) = v4;
  *(v3 + 496) = *(a2 + 192);
  *(v3 + 512) = *(a2 + 208);
  v5 = *(a2 + 112);
  *(v3 + 400) = *(a2 + 96);
  *(v3 + 416) = v5;
  v6 = *(a2 + 144);
  *(v3 + 432) = *(a2 + 128);
  *(v3 + 448) = v6;
  v7 = *(a2 + 48);
  *(v3 + 336) = *(a2 + 32);
  *(v3 + 352) = v7;
  v8 = *(a2 + 80);
  *(v3 + 368) = *(a2 + 64);
  *(v3 + 384) = v8;
  v9 = *(a2 + 16);
  *(v3 + 304) = *a2;
  *(v3 + 320) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1D90EE554, 0, 0);
}

uint64_t sub_1D90EE554()
{
  v1 = v0[66];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1D90EE5FC;
  v2 = swift_continuation_init();
  sub_1D90EA370((v0 + 38), v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D90EE5FC()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
  }

  else
  {
    v4 = (v1 + 80);
    v5 = *(v1 + 520);
    v6 = v4[1];
    *v5 = *v4;
    v5[1] = v6;
    v7 = v4[2];
    v8 = v4[3];
    v9 = v4[5];
    v5[4] = v4[4];
    v5[5] = v9;
    v5[2] = v7;
    v5[3] = v8;
    v10 = v4[6];
    v11 = v4[7];
    v12 = v4[9];
    v5[8] = v4[8];
    v5[9] = v12;
    v5[6] = v10;
    v5[7] = v11;
    v13 = v4[10];
    v14 = v4[11];
    v15 = v4[12];
    *(v5 + 202) = *(v4 + 202);
    v5[11] = v14;
    v5[12] = v15;
    v5[10] = v13;
  }

  v16 = *(v2 + 8);

  return v16();
}

uint64_t sub_1D90EE74C(__int128 *a1, uint64_t a2)
{
  v4 = a1[11];
  v5 = a1[9];
  v119 = a1[10];
  v120 = v4;
  v6 = a1[11];
  v121[0] = a1[12];
  *(v121 + 11) = *(a1 + 203);
  v7 = a1[7];
  v8 = a1[5];
  v115 = a1[6];
  v116 = v7;
  v9 = a1[7];
  v10 = a1[9];
  v117 = a1[8];
  v118 = v10;
  v11 = a1[3];
  v12 = a1[1];
  v111 = a1[2];
  v112 = v11;
  v13 = a1[3];
  v14 = a1[5];
  v113 = a1[4];
  v114 = v14;
  v15 = a1[1];
  v109 = *a1;
  v110 = v15;
  v122[10] = v119;
  v122[11] = v6;
  v123[0] = a1[12];
  *(v123 + 11) = *(a1 + 203);
  v122[6] = v115;
  v122[7] = v9;
  v122[8] = v117;
  v122[9] = v5;
  v122[2] = v111;
  v122[3] = v13;
  v122[4] = v113;
  v122[5] = v8;
  v122[0] = v109;
  v122[1] = v12;
  if (sub_1D90E0218(v122) == 1)
  {
    nullsub_1(v122, v16, v17, v18);
    v19 = a1[11];
    v93 = a1[10];
    v94 = v19;
    v95[0] = a1[12];
    *(v95 + 11) = *(a1 + 203);
    v20 = a1[7];
    v89 = a1[6];
    v90 = v20;
    v21 = a1[9];
    v91 = a1[8];
    v92 = v21;
    v22 = a1[3];
    v85 = a1[2];
    v86 = v22;
    v23 = a1[5];
    v87 = a1[4];
    v88 = v23;
    v24 = a1[1];
    v83 = *a1;
    v84 = v24;
    v28 = *nullsub_1(&v83, v25, v26, v27);
    sub_1D90CC2C0();
    v29 = swift_allocError();
    *v30 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v31 = v29;
    v96 = v109;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v100 = v113;
    v101 = v114;
    v102 = v115;
    v103 = v116;
    v104 = v117;
    v105 = v118;
    v106 = v119;
    v107 = v120;
    v108[0] = v121[0];
    *(v108 + 11) = *(v121 + 11);
    v34 = nullsub_1(&v96, v31, v32, v33);
    sub_1D90BC378(*v34);
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    nullsub_1(v122, v16, v17, v18);
    v36 = a1[11];
    v93 = a1[10];
    v94 = v36;
    v95[0] = a1[12];
    *(v95 + 11) = *(a1 + 203);
    v37 = a1[7];
    v89 = a1[6];
    v90 = v37;
    v38 = a1[9];
    v91 = a1[8];
    v92 = v38;
    v39 = a1[3];
    v85 = a1[2];
    v86 = v39;
    v40 = a1[5];
    v87 = a1[4];
    v88 = v40;
    v41 = a1[1];
    v83 = *a1;
    v84 = v41;
    v45 = nullsub_1(&v83, v42, v43, v44);
    v46 = v45[11];
    v80 = v45[10];
    v81 = v46;
    v82[0] = v45[12];
    *(v82 + 10) = *(v45 + 202);
    v47 = v45[7];
    v76 = v45[6];
    v77 = v47;
    v48 = v45[9];
    v78 = v45[8];
    v79 = v48;
    v49 = v45[3];
    v72 = v45[2];
    v73 = v49;
    v50 = v45[5];
    v74 = v45[4];
    v75 = v50;
    v51 = v45[1];
    v70 = *v45;
    v71 = v51;
    v52 = a1[1];
    v96 = *a1;
    v97 = v52;
    v53 = a1[5];
    v100 = a1[4];
    v101 = v53;
    v54 = a1[3];
    v98 = a1[2];
    v99 = v54;
    v55 = a1[9];
    v104 = a1[8];
    v105 = v55;
    v56 = a1[7];
    v102 = a1[6];
    v103 = v56;
    *(v108 + 11) = *(a1 + 203);
    v57 = a1[12];
    v107 = a1[11];
    v108[0] = v57;
    v106 = a1[10];
    v61 = nullsub_1(&v96, v58, v59, v60);
    sub_1D90DDE88(v61, &v69);
    v62 = *(*(a2 + 64) + 40);
    v63 = v81;
    v62[10] = v80;
    v62[11] = v63;
    v62[12] = v82[0];
    *(v62 + 202) = *(v82 + 10);
    v64 = v77;
    v62[6] = v76;
    v62[7] = v64;
    v65 = v79;
    v62[8] = v78;
    v62[9] = v65;
    v66 = v73;
    v62[2] = v72;
    v62[3] = v66;
    v67 = v75;
    v62[4] = v74;
    v62[5] = v67;
    v68 = v71;
    *v62 = v70;
    v62[1] = v68;
    return swift_continuation_throwingResume();
  }
}

uint64_t PodcastsMediaLibrary.PlaybackQueueContext.resolvedContext()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = *(v4 + 64);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90EEB6C, 0, 0);
}

uint64_t sub_1D90EEB6C()
{
  v29 = v0;
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  v24 = v0 + 2;
  v0[2] = v0;
  v0[7] = v5;
  v0[3] = sub_1D90EED80;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *(v6 + *(v3 + 72));
  v10 = *(v6 + 72);
  v11 = *(v6 + 80);
  v12 = *(v6 + 88);
  v22 = *(v6 + 56);
  v25[0] = *(v6 + 40);
  v23 = *&v25[0];
  v25[1] = v22;
  v26 = v10;
  v27 = v11;
  v28 = v12;
  sub_1D90EF0AC(v6, v1, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1D90EF114(v1, v14 + v13, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
  v15 = (v14 + ((v2 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = sub_1D90EF0A4;
  v15[1] = v8;
  v16 = v12;

  v17 = v23;

  v18 = v11;
  sub_1D90B5D9C(v25, sub_1D90E6498, v14);

  v19 = v27;
  v20 = v28;

  return MEMORY[0x1EEE6DEC8](v24);
}

uint64_t sub_1D90EED80()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1D90EEEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA6D8, &qword_1D91B6610);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - v10);
  sub_1D8D088B4(a1, &v15 - v10, &qword_1ECABA6D8, &qword_1D91B6610);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    swift_allocError();
    *v13 = v12;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_1D90EF114(v11, v7, type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    sub_1D90EF114(v7, *(*(a2 + 64) + 40), type metadata accessor for PodcastsMediaLibrary.PlaybackQueueContext);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1D90EF0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90EF114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D90EF1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1D8D5FF18;

  return v13(a1, a2, a3, a4);
}

uint64_t type metadata accessor for PodcastsMediaLibrary()
{
  result = qword_1ECAB2B78;
  if (!qword_1ECAB2B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D90EF32C()
{
  sub_1D8CF1DB0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PodcastsMediaLibrary.reloadMediaItem(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D8D58924;

  return v10(a1, a2);
}

void sub_1D90EF54C(_OWORD *a1)
{
  v3 = *(*(sub_1D917734C() - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);

  sub_1D90EBAE0(a1, v4, v5, v6);
}

void *PushRestrictions.__allocating_init(bag:userDefaults:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = 0xD00000000000002BLL;
  result[3] = 0x80000001D91D5F40;
  result[4] = 0x3FF0000000000000;
  result[5] = a1;
  result[6] = a2;
  return result;
}

void *PushRestrictions.init(bag:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v2[2] = 0xD00000000000002BLL;
  v2[3] = 0x80000001D91D5F40;
  v2[4] = 0x3FF0000000000000;
  v2[5] = a1;
  v2[6] = a2;
  return v2;
}

uint64_t PushRestrictions.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PushRestrictions.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t PushRestrictions.shouldProcessUPPPush(forPersonaWithUniqueIdentifier:receivedAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v6 = sub_1D9176E3C();
  v4[11] = v6;
  v7 = *(v6 - 8);
  v4[12] = v7;
  v8 = *(v7 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D90EF7F0, 0, 0);
}

uint64_t sub_1D90EF7F0()
{
  v36 = v0;
  v1 = *(*(v0 + 72) + 48);
  *(v0 + 112) = v1;
  if (v1)
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = v1;
    sub_1D917946C();

    *&v34 = 0xD00000000000002CLL;
    *(&v34 + 1) = 0x80000001D91D5F70;
    MEMORY[0x1DA7298F0](v3, v2);
    *(v0 + 120) = 0xD00000000000002CLL;
    *(v0 + 128) = 0x80000001D91D5F70;
    v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
    }

    v11 = v35;
    *(v0 + 16) = v34;
    *(v0 + 32) = v11;
    v12 = *(v0 + 88);
    v13 = *(v0 + 96);
    v14 = *(v0 + 80);
    if (*(v0 + 40))
    {
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      v17 = swift_dynamicCast();
      (*(v13 + 56))(v14, v17 ^ 1u, 1, v12);
      if ((*(v13 + 48))(v14, 1, v12) != 1)
      {
        (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 80), *(v0 + 88));
        v18 = swift_task_alloc();
        *(v0 + 136) = v18;
        *v18 = v0;
        v18[1] = sub_1D90EFCB4;
        v19 = *(v0 + 72);

        return sub_1D90F019C();
      }
    }

    else
    {
      sub_1D8D08A50(v0 + 16, &qword_1ECAB57F0, &unk_1D9190AA0);
      (*(v13 + 56))(v14, 1, 1, v12);
    }

    sub_1D8D08A50(*(v0 + 80), &qword_1ECAB75C0, &unk_1D9188A50);
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 56);
    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD5E48);

    v23 = sub_1D917741C();
    v24 = sub_1D9178D1C();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 48);
      v25 = *(v0 + 56);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v34 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1D8CFA924(v26, v25, &v34);
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Never processed a push before for personaUniqueIdentifier %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    v29 = *(v0 + 64);
    v8 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v30 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    [v4 setObject:v8 forKey:v30];
  }

  else
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD5E48);
    v8 = sub_1D917741C();
    v9 = sub_1D9178D0C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Not valid UserDefaults provided, we can't filter UPP pushes, this might be a problem if servers get overloaded", v10, 2u);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }
  }

  v31 = *(v0 + 104);
  v32 = *(v0 + 80);

  v33 = *(v0 + 8);

  return v33(1);
}

uint64_t sub_1D90EFCB4(double a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D90EFDB4, 0, 0);
}

uint64_t sub_1D90EFDB4()
{
  v47 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  v3 = *(v0 + 64);
  sub_1D9176D0C();
  v5 = v4;
  if (v1 > v4)
  {
    v24 = *(v0 + 128);

    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 56);
    v26 = sub_1D917744C();
    __swift_project_value_buffer(v26, qword_1EDCD5E48);

    v27 = sub_1D917741C();
    v28 = sub_1D9178D1C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 144);
      v30 = *(v0 + 112);
      v45 = *(v0 + 104);
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);
      v34 = *(v0 + 48);
      v33 = *(v0 + 56);
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v46 = v36;
      *v35 = 136315650;
      *(v35 + 4) = sub_1D8CFA924(v34, v33, &v46);
      *(v35 + 12) = 2048;
      *(v35 + 14) = v5;
      *(v35 + 22) = 2048;
      *(v35 + 24) = v29;
      _os_log_impl(&dword_1D8CEC000, v27, v28, "Time elapsed since last processed UPP push for personaID %s is %f; Grace period is %f => Skipping Push", v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1DA72CB90](v36, -1, -1);
      MEMORY[0x1DA72CB90](v35, -1, -1);

      (*(v32 + 8))(v45, v31);
    }

    else
    {
      v37 = *(v0 + 104);
      v38 = *(v0 + 112);
      v39 = *(v0 + 88);
      v40 = *(v0 + 96);

      (*(v40 + 8))(v37, v39);
    }
  }

  else
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 56);
    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD5E48);

    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 144);
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46 = v14;
      *v13 = 136315650;
      *(v13 + 4) = sub_1D8CFA924(v12, v11, &v46);
      *(v13 + 12) = 2048;
      *(v13 + 14) = v5;
      *(v13 + 22) = 2048;
      *(v13 + 24) = v10;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Time elapsed since last processed UPP push for personaID %s is %f; Grace period is %f => Processing Push", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1DA72CB90](v14, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }

    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v18 = *(v0 + 104);
    v17 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    v22 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v23 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    [v17 setObject:v22 forKey:v23];

    (*(v20 + 8))(v18, v19);
  }

  v41 = *(v0 + 104);
  v42 = *(v0 + 80);

  v43 = *(v0 + 8);

  return v43(v1 <= v5);
}

uint64_t sub_1D90F01BC()
{
  v21 = v0;
  v1 = v0[20];
  v2 = v1[5];
  v3 = v1[2];
  v0[21] = v3;
  v4 = v1[3];
  v0[22] = v4;
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v2 doubleForKey_];
  v0[23] = v6;

  if ([v6 isLoaded] && (objc_msgSend(v2, sel_isExpired) & 1) == 0)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D90F04C4;
    v19 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB41B8, qword_1D91BEDB0);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D8D5F354;
    v0[13] = &block_descriptor_82;
    v0[14] = v19;
    [v6 valueWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v7 = v0[20];
    v8 = sub_1D917744C();
    __swift_project_value_buffer(v8, qword_1EDCD5E48);

    v9 = sub_1D917741C();
    v10 = sub_1D9178D1C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1D8CFA924(v3, v4, &v20);
      _os_log_impl(&dword_1D8CEC000, v9, v10, "Bag key %s not loaded yet, falling back", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    v13 = v0[20];
    sub_1D90F0BBC();
    v15 = v14;

    v16 = v0[1];
    v17.n128_u64[0] = v15;

    return v16(v17);
  }
}

uint64_t sub_1D90F04C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1D90F0990;
  }

  else
  {
    v3 = sub_1D90F05D4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D90F05D4()
{
  v38 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v36 = 0.0;
  v37 = 1;
  MEMORY[0x1DA72A000](v1, &v36);
  if (v37)
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 160);
    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1EDCD5E48);

    v1 = v1;
    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 168);
      v7 = *(v0 + 176);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = *&v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D8CFA924(v8, v7, &v36);
      *(v9 + 12) = 2080;
      v11 = v1;
      v12 = [v11 description];
      v13 = sub_1D917820C();
      v15 = v14;

      v16 = sub_1D8CFA924(v13, v15, &v36);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Bag value for key %s is not a TimeInterval, actually found value: %s, falling back", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    v17 = *(v0 + 184);
    v18 = *(v0 + 160);
    sub_1D90F0BBC();
    v20 = v19;
  }

  else
  {
    v20 = v36;
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 160);
    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD5E48);

    v23 = sub_1D917741C();
    v24 = sub_1D9178D1C();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v0 + 168);
      v25 = *(v0 + 176);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = *&v28;
      *v27 = 136315650;
      *(v27 + 4) = sub_1D8CFA924(v26, v25, &v36);
      *(v27 + 12) = 2048;
      *(v27 + 14) = v20;
      *(v27 + 22) = 1024;
      *(v27 + 24) = v2;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Bag value for key %s found: %f (isDefault: %{BOOL}d), caching for future use", v27, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    v29 = *(*(v0 + 160) + 48);
    v17 = *(v0 + 184);
    if (v29)
    {
      v30 = *(v0 + 168);
      v31 = *(v0 + 176);
      v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v29 setDouble:v32 forKey:v20];

      v1 = v17;
      v17 = v32;
    }
  }

  v33 = *(v0 + 8);
  v34.n128_f64[0] = v20;

  return v33(v34);
}

uint64_t sub_1D90F0990()
{
  v26 = v0;
  v1 = v0[24];
  swift_willThrow();
  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = v0[20];
  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD5E48);

  v5 = v2;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v10 = v0[21];
    v9 = v0[22];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D8CFA924(v10, v9, v25);
    *(v11 + 12) = 2080;
    v0[10] = v8;
    v13 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, v25);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "Error fetching bag value for key %s: %s, falling back", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v18 = v0[23];
  v17 = v0[24];
  v19 = v0[20];
  sub_1D90F0BBC();
  v21 = v20;

  v22 = v0[1];
  v23.n128_u64[0] = v21;

  return v22(v23);
}

void sub_1D90F0BBC()
{
  v1 = v0;
  v2 = *(v0 + 48);
  if (!v2)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_13:
    sub_1D8D08A50(&v18, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_14;
  }

  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v2 objectForKey_];

  if (v6)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18 = v16;
  v19 = v17;
  if (!*(&v17 + 1))
  {
    goto LABEL_13;
  }

  if (swift_dynamicCast())
  {
    if (qword_1EDCD5E40 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD5E48);

    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v18 = v11;
      *v10 = 134218242;
      *(v10 + 4) = v16;
      *(v10 + 12) = 2080;
      *(v10 + 14) = sub_1D8CFA924(v3, v4, &v18);
      _os_log_impl(&dword_1D8CEC000, v8, v9, "Returning last cached value %f for key %s", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    goto LABEL_18;
  }

LABEL_14:
  if (qword_1EDCD5E40 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD5E48);

  v8 = sub_1D917741C();
  v13 = sub_1D9178D1C();

  if (os_log_type_enabled(v8, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v18 = v15;
    *v14 = 134218242;
    *(v14 + 4) = 0x3FF0000000000000;
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D8CFA924(*(v1 + 16), *(v1 + 24), &v18);
    _os_log_impl(&dword_1D8CEC000, v8, v13, "Returning default value %f for key %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1DA72CB90](v15, -1, -1);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

LABEL_18:
}

id PushSubscriptionRequest.__allocating_init(endpointURL:action:apnsToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = &v11[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v11[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v11;
  v19.super_class = v5;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

id PushSubscriptionRequest.init(endpointURL:action:apnsToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL;
  v13 = sub_1D9176C2C();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a1, v13);
  v15 = &v5[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action];
  *v15 = a2;
  *(v15 + 1) = a3;
  v16 = &v5[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken];
  *v16 = a4;
  *(v16 + 1) = a5;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v14 + 8))(a1, v13);
  return v17;
}

unint64_t PushSubscriptionRequest.parameters.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9195F30;
  *(inited + 32) = sub_1D917820C();
  *(inited + 40) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action);
  v4 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action + 8);
  v5 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 80) = sub_1D917820C();
  *(inited + 88) = v6;
  v7 = objc_opt_self();

  v8 = [v7 mainBundle];
  v9 = [v8 bundleIdentifier];

  if (!v9)
  {
    v13 = (inited + 96);
    *(inited + 120) = v5;
    goto LABEL_5;
  }

  v10 = sub_1D917820C();
  v12 = v11;

  v13 = (inited + 96);
  *(inited + 120) = v5;
  if (!v12)
  {
LABEL_5:
    *v13 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_6;
  }

  *v13 = v10;
LABEL_6:
  *(inited + 104) = v12;
  *(inited + 128) = sub_1D917820C();
  *(inited + 136) = v14;
  v15 = sub_1D917820C();
  *(inited + 168) = v5;
  *(inited + 144) = v15;
  *(inited + 152) = v16;
  *(inited + 176) = sub_1D917820C();
  *(inited + 184) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D918A530;
  *(v18 + 32) = sub_1D917820C();
  *(v18 + 40) = v19;
  *(v18 + 48) = sub_1D917820C();
  *(v18 + 56) = v20;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  *(inited + 192) = v18;
  *(inited + 224) = sub_1D917820C();
  *(inited + 232) = v21;
  v22 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken);
  v23 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken + 8);
  *(inited + 264) = MEMORY[0x1E6969080];
  *(inited + 240) = v22;
  *(inited + 248) = v23;
  sub_1D8D752C4(v22, v23);
  v24 = sub_1D8E2696C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E8, &qword_1D9193650);
  swift_arrayDestroy();
  return v24;
}

uint64_t PushSubscriptionRequest.buildURLRequest()@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1D9176C2C();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL, v6);
  sub_1D91764EC();
  sub_1D90F1764();
  if (v2)
  {
    v9 = sub_1D917653C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }

  else
  {
    sub_1D917651C();
    sub_1D917648C();
    sub_1D917820C();
    sub_1D917652C();
  }
}

void *sub_1D90F1764()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  PushSubscriptionRequest.parameters.getter();
  v1 = sub_1D917802C();

  v7[0] = 0;
  v2 = [v0 dataWithPropertyList:v1 format:200 options:0 error:v7];

  v3 = v7[0];
  if (v2)
  {
    v4 = sub_1D9176C8C();
  }

  else
  {
    v4 = v3;
    sub_1D9176A6C();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

id PushSubscriptionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PushSubscriptionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PushSubscriptionRequest()
{
  result = qword_1ECAB1AE0;
  if (!qword_1ECAB1AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D90F1B80()
{
  result = sub_1D9176C2C();
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

uint64_t sub_1D90F1C50(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a2;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (a2)
  {

    v11 = v8;
    v8 = sub_1D9176C8C();
    v13 = v12;

    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0xF000000000000000;
  if (a3)
  {
LABEL_3:
    a3 = sub_1D917805C();
  }

LABEL_4:
  v14 = a4;
  v15 = a5;
  v10(v8, v13, a3, a4, a5);

  sub_1D8D75668(v8, v13);
}

id sub_1D90F1D60()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService);
  }

  else
  {
    v4 = [objc_allocWithZone(IMURLRequestService) initWithConcurrentOperationCount:1 requestEncodingType:0];
    [v4 setUrlSessionDelegate_];
    [v4 setPersonalizeRequests_];

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t PushSubscriptionService.registerPushToken(for:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917653C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = &type metadata for Podcasts;
  v20 = sub_1D8CF0F2C();
  LOBYTE(aBlock[0]) = 32;
  v12 = sub_1D917710C();
  result = __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  if (v12)
  {
    (*(v3 + 16))(v6, a1 + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL, v2);
    sub_1D91764EC();
    sub_1D90F1764();
    sub_1D917651C();
    sub_1D917648C();
    sub_1D917820C();
    sub_1D917652C();

    v14 = sub_1D90F1D60();
    v15 = sub_1D91764BC();
    v20 = sub_1D90F2254;
    v21 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D90F1C50;
    v19 = &block_descriptor_83;
    v16 = _Block_copy(aBlock);
    [v14 performDataRequest:v15 callback:v16];
    _Block_release(v16);

    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void sub_1D90F2254(int a1, int a2, int a3, int a4, NSObject *a5)
{
  if (!a5)
  {
    if (qword_1ECAB0BD0 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0BD8);
    oslog = sub_1D917741C();
    v15 = sub_1D9178D1C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D8CEC000, oslog, v15, "[Push] Successfully registered token", v16, 2u);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    goto LABEL_10;
  }

  v6 = a5;
  if (qword_1ECAB0BD0 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1ECAB0BD8);
  v8 = a5;
  oslog = sub_1D917741C();
  v9 = sub_1D9178CFC();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = a5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D8CEC000, oslog, v9, "[Push] Error registering push token %@", v10, 0xCu);
    sub_1D8E262AC(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);

LABEL_10:
    v17 = oslog;

    goto LABEL_12;
  }

  v17 = a5;

LABEL_12:
}

id PushSubscriptionService.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PushSubscriptionService.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionService____lazy_storage___urlRequestService] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id PushSubscriptionService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D90F25C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8CFAD1C(a1, v26);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    *a2 = v22[0];
    *(a2 + 32) = 0;
  }

  else
  {
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      v4 = *(&v22[0] + 1);
      *a2 = *&v22[0];
      *(a2 + 8) = v4;
      v5 = 1;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 12;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v22[0];
      v5 = 13;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v22[0];
      v5 = 2;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 3;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 4;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 5;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v22[0];
      v5 = 6;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v22[0];
      v5 = 7;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 8;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 9;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = v22[0];
      v5 = 10;
    }

    else if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *a2 = *&v22[0];
      v5 = 11;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
      if (swift_dynamicCast())
      {
        v6 = *(v25 + 16);
        if (v6)
        {
          v7 = v25 + 32;
          v8 = MEMORY[0x1E69E7CC0];
          do
          {
            sub_1D8CFAD1C(v7, v24);
            sub_1D8CFAD1C(v24, v21);
            sub_1D90F25C8(v22, v21);
            __swift_destroy_boxed_opaque_existential_1Tm(v24);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_1D8ECC5D8(0, *(v8 + 2) + 1, 1, v8);
            }

            v9 = *(v8 + 2);
            v10 = *(v8 + 3);
            v11 = v9 + 1;
            if (v9 >= v10 >> 1)
            {
              v20 = v9 + 1;
              v15 = v8;
              v16 = *(v8 + 2);
              v17 = sub_1D8ECC5D8((v10 > 1), v9 + 1, 1, v15);
              v9 = v16;
              v11 = v20;
              v8 = v17;
            }

            *(v8 + 2) = v11;
            v12 = &v8[40 * v9];
            v13 = v22[0];
            v14 = v22[1];
            v12[64] = v23;
            *(v12 + 2) = v13;
            *(v12 + 3) = v14;
            v7 += 32;
            --v6;
          }

          while (v6);
        }

        else
        {

          v8 = MEMORY[0x1E69E7CC0];
        }

        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        *a2 = v8;
        v5 = 14;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
        if (swift_dynamicCast())
        {
          v18 = sub_1D8FD5948(*&v22[0]);

          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          *a2 = v18;
          v5 = 15;
        }

        else
        {
          sub_1D8CFAD1C(v26, v22);
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
          sub_1D8D65618(v22, a2);
          v5 = 16;
        }
      }
    }

    *(a2 + 32) = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v26);
}

uint64_t _s18PodcastsFoundation10AnyCodableO12arrayLiteralACypd_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8CFAD1C(v4, v15);
      sub_1D8CFAD1C(v15, v12);
      sub_1D90F25C8(v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D8ECC5D8(0, *(v5 + 2) + 1, 1, v5);
      }

      v7 = *(v5 + 2);
      v6 = *(v5 + 3);
      if (v7 >= v6 >> 1)
      {
        v5 = sub_1D8ECC5D8((v6 > 1), v7 + 1, 1, v5);
      }

      *(v5 + 2) = v7 + 1;
      v8 = &v5[40 * v7];
      v9 = v13[0];
      v10 = v13[1];
      v8[64] = v14;
      *(v8 + 2) = v9;
      *(v8 + 3) = v10;
      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  *(a2 + 32) = 14;
  return result;
}

uint64_t sub_1D90F2C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4638, &qword_1D918A078);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  if (swift_dynamicCast())
  {

    v3 = sub_1D8FD5948(v6);

    *a2 = v3;
    v4 = 15;
LABEL_5:
    *(a2 + 32) = v4;
  }

  if (swift_dynamicCast())
  {

    sub_1D8D65618(&v6, a2);
    v4 = 16;
    goto LABEL_5;
  }

  result = sub_1D9179ABC();
  __break(1u);
  return result;
}

uint64_t AnyCodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, a2, v8);
  swift_getDynamicType();
  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    *(a3 + 32) = 0;
    return (v11)(v10, a2);
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    v12 = *(&v32[0] + 1);
    *a3 = *&v32[0];
    *(a3 + 8) = v12;
    v13 = 1;
LABEL_44:
    *(a3 + 32) = v13;
    return (v11)(v10, a2);
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 12;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = *&v32[0];
    v13 = 13;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = *&v32[0];
    v13 = 2;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 3;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 4;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 5;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = *&v32[0];
    v13 = 6;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = *&v32[0];
    v13 = 7;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 8;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 9;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = v32[0];
    v13 = 10;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v6 + 8);
    v11(a1, a2);
    *a3 = *&v32[0];
    v13 = 11;
    goto LABEL_44;
  }

  v30 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
  if (swift_dynamicCast())
  {
    v14 = *(v35 + 16);
    if (v14)
    {
      v15 = v35 + 32;
      v16 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D8CFAD1C(v15, v34);
        sub_1D8CFAD1C(v34, v31);
        sub_1D90F25C8(v31, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8ECC5D8(0, *(v16 + 2) + 1, 1, v16);
        }

        v17 = *(v16 + 2);
        v18 = *(v16 + 3);
        v19 = v17 + 1;
        if (v17 >= v18 >> 1)
        {
          v29 = v17 + 1;
          v23 = v16;
          v24 = v17;
          v25 = sub_1D8ECC5D8((v18 > 1), v17 + 1, 1, v23);
          v17 = v24;
          v19 = v29;
          v16 = v25;
        }

        *(v16 + 2) = v19;
        v20 = &v16[40 * v17];
        v21 = v32[0];
        v22 = v32[1];
        v20[64] = v33;
        *(v20 + 2) = v21;
        *(v20 + 3) = v22;
        v15 += 32;
        --v14;
      }

      while (v14);
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    v11 = *(v30 + 8);
    v11(a1, a2);
    *a3 = v16;
    v13 = 14;
    goto LABEL_44;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  if (swift_dynamicCast())
  {
    v26 = sub_1D8FD5948(*&v32[0]);

    v11 = *(v30 + 8);
    v11(a1, a2);
    *a3 = v26;
    v13 = 15;
    goto LABEL_44;
  }

  if (swift_dynamicCast())
  {
    v11 = *(v30 + 8);
    v11(a1, a2);
    sub_1D8D65618(v32, a3);
    v13 = 16;
    goto LABEL_44;
  }

  result = sub_1D9179ABC();
  __break(1u);
  return result;
}

_OWORD *AnyCodable.value.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D8FD68E4(v1, v47);
  switch(v48)
  {
    case 1:
      v38 = v47[0];
      *(a1 + 24) = MEMORY[0x1E69E6158];
      *a1 = v38;
      return result;
    case 2:
      v13 = *&v47[0];
      v14 = MEMORY[0x1E69E6530];
      goto LABEL_34;
    case 3:
      v4 = v47[0];
      v5 = MEMORY[0x1E69E7230];
      goto LABEL_38;
    case 4:
      v15 = v47[0];
      v16 = MEMORY[0x1E69E7290];
      goto LABEL_14;
    case 5:
      v39 = v47[0];
      v40 = MEMORY[0x1E69E72F0];
      goto LABEL_36;
    case 6:
      v13 = *&v47[0];
      v14 = MEMORY[0x1E69E7360];
      goto LABEL_34;
    case 7:
      v13 = *&v47[0];
      v14 = MEMORY[0x1E69E6810];
      goto LABEL_34;
    case 8:
      v4 = v47[0];
      v5 = MEMORY[0x1E69E7508];
      goto LABEL_38;
    case 9:
      v15 = v47[0];
      v16 = MEMORY[0x1E69E75F8];
LABEL_14:
      *(a1 + 24) = v16;
      *a1 = v15;
      return result;
    case 10:
      v39 = v47[0];
      v40 = MEMORY[0x1E69E7668];
LABEL_36:
      *(a1 + 24) = v40;
      *a1 = v39;
      return result;
    case 11:
      v13 = *&v47[0];
      v14 = MEMORY[0x1E69E76D8];
LABEL_34:
      *(a1 + 24) = v14;
      *a1 = v13;
      return result;
    case 12:
      v17 = v47[0];
      *(a1 + 24) = MEMORY[0x1E69E6448];
      *a1 = v17;
      return result;
    case 13:
      v41 = *&v47[0];
      *(a1 + 24) = MEMORY[0x1E69E63B0];
      *a1 = v41;
      return result;
    case 14:
      v6 = *&v47[0];
      v7 = *(*&v47[0] + 16);
      if (v7)
      {
        v44 = MEMORY[0x1E69E7CC0];
        sub_1D8E3151C(0, v7, 0);
        v8 = v44;
        v9 = v6 + 32;
        do
        {
          v10 = sub_1D8FD68E4(v9, v46);
          AnyCodable.value.getter(v45, v10);
          sub_1D8FD6940(v46);
          v12 = *(v44 + 16);
          v11 = *(v44 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_1D8E3151C((v11 > 1), v12 + 1, 1);
          }

          *(v44 + 16) = v12 + 1;
          sub_1D8D65618(v45, (v44 + 32 * v12 + 32));
          v9 += 40;
          --v7;
        }

        while (v7);
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7A78, &unk_1D9199550);
      *(a1 + 24) = result;
      *a1 = v8;
      return result;
    case 15:
      v18 = *&v47[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42E0, &unk_1D9188E40);
      result = sub_1D917977C();
      v19 = result;
      v20 = 0;
      v21 = *(v18 + 64);
      v43 = result;
      v22 = 1 << *(v18 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      i = v23 & v21;
      v25 = (v22 + 63) >> 6;
      v42 = result + 4;
      if ((v23 & v21) != 0)
      {
        goto LABEL_19;
      }

      break;
    case 16:
      return sub_1D8D65618(v47, a1);
    default:
      v4 = v47[0];
      v5 = MEMORY[0x1E69E6370];
LABEL_38:
      *(a1 + 24) = v5;
      *a1 = v4;
      return result;
  }

LABEL_20:
  v27 = v20;
  do
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (v20 >= v25)
    {

      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
      *(a1 + 24) = result;
      *a1 = v19;
      return result;
    }

    v28 = *(v18 + 64 + 8 * v20);
    ++v27;
  }

  while (!v28);
  v26 = __clz(__rbit64(v28));
  for (i = (v28 - 1) & v28; ; i &= i - 1)
  {
    v29 = v26 | (v20 << 6);
    v30 = (*(v18 + 48) + 16 * v29);
    v31 = *v30;
    v32 = v30[1];
    sub_1D8FD68E4(*(v18 + 56) + 40 * v29, v46);

    AnyCodable.value.getter(v45, v33);
    sub_1D8FD6940(v46);
    v19 = v43;
    *(v42 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (v43[6] + 16 * v29);
    *v34 = v31;
    v34[1] = v32;
    result = sub_1D8D65618(v45, (v43[7] + 32 * v29));
    v35 = v43[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      break;
    }

    v43[2] = v37;
    if (!i)
    {
      goto LABEL_20;
    }

LABEL_19:
    v26 = __clz(__rbit64(i));
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t AnyCodable.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v2)
  {
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = sub_1D9179AEC() & 1;
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v11;
    *(a2 + 32) = 0;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  sub_1D8FD68E4(v1, v9);
  switch(v10)
  {
    case 1:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179B5C();
      goto LABEL_15;
    case 2:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179B9C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 3:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179BCC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 4:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179BDC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 5:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179BEC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 6:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179BFC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 7:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179BAC();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 8:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179C0C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 9:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179C1C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 10:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179C2C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 11:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179C3C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 12:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179B8C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 13:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179B7C();
      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    case 14:
      *&v8[0] = *&v9[0];
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA728, &unk_1D91B6CE8);
      sub_1D90F448C(&qword_1ECABA738, sub_1D8FD6000);
      goto LABEL_11;
    case 15:
      *&v8[0] = *&v9[0];
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8828, qword_1D91A3B50);
      sub_1D90F4408(&qword_1ECAB0148, sub_1D8FD6000);
LABEL_11:
      sub_1D9179BBC();
LABEL_15:

      break;
    case 16:
      sub_1D8D65618(v9, v8);
      v3 = sub_1D917954C();
      swift_allocError();
      v5 = v4;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB84B0, &qword_1D91A1350) + 48);
      sub_1D8CFAD1C(v8, v5);
      sub_1D91794FC();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B30], v3);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      break;
    default:
      __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
      sub_1D9179B6C();
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t AnyCodable.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = result;
  a2[32] = 0;
  return result;
}

uint64_t AnyCodable.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 32) = 2;
  return result;
}

uint64_t AnyCodable.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 32) = 1;
  return result;
}

uint64_t AnyCodable.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v4 = sub_1D91797AC();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v7 = v4;
  sub_1D90F4504(a1, 1, &v7);

  v5 = v7;

  return sub_1D90F2C34(v5, a2);
}

_BYTE *sub_1D90F42FC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[32] = 0;
  return result;
}

void *sub_1D90F430C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 32) = 2;
  return result;
}

double sub_1D90F4320@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  *(a2 + 32) = 13;
  return result;
}

uint64_t sub_1D90F434C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB42C8, &unk_1D9188E20);
    v4 = sub_1D91797AC();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v7 = v4;
  sub_1D90F4504(a1, 1, &v7);

  v5 = v7;

  return sub_1D90F2C34(v5, a2);
}

uint64_t sub_1D90F4408(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8828, qword_1D91A3B50);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90F448C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABA728, &unk_1D91B6CE8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D90F4504(uint64_t result, char a2, uint64_t *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  for (i = result + 32; ; i += 72)
  {
    sub_1D90F4900(i, v32);
    v29 = v32[0];
    v30 = v32[1];
    v31 = v33;
    sub_1D8D65618(&v34, v28);
    v10 = *a3;
    v11 = sub_1D8D6550C(&v29);
    v13 = *(v10 + 16);
    v14 = (v12 & 1) == 0;
    v15 = __OFADD__(v13, v14);
    v16 = v13 + v14;
    if (v15)
    {
      break;
    }

    v17 = v12;
    if (*(v10 + 24) < v16)
    {
      sub_1D90078EC(v16, a2 & 1);
      v18 = *a3;
      v11 = sub_1D8D6550C(&v29);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v17)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (a2)
    {
      goto LABEL_10;
    }

    v26 = v11;
    sub_1D8F842F0();
    v11 = v26;
    if (v17)
    {
LABEL_3:
      v7 = *a3;
      v8 = 32 * v11;
      sub_1D8CFAD1C(*(*a3 + 56) + 32 * v11, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      sub_1D8D9A308(&v29);
      v9 = *(v7 + 56);
      __swift_destroy_boxed_opaque_existential_1Tm((v9 + v8));
      result = sub_1D8D65618(v27, (v9 + v8));
      goto LABEL_4;
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = v20[6] + 40 * v11;
    v22 = v29;
    v23 = v30;
    *(v21 + 32) = v31;
    *v21 = v22;
    *(v21 + 16) = v23;
    result = sub_1D8D65618(v28, (v20[7] + 32 * v11));
    v24 = v20[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v15)
    {
      goto LABEL_17;
    }

    v20[2] = v25;
LABEL_4:
    a2 = 1;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

unint64_t sub_1D90F4704()
{
  result = qword_1ECABA740;
  if (!qword_1ECABA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA740);
  }

  return result;
}

unint64_t sub_1D90F4768()
{
  result = qword_1ECABA748;
  if (!qword_1ECABA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA748);
  }

  return result;
}

unint64_t sub_1D90F47CC()
{
  result = qword_1ECABA750;
  if (!qword_1ECABA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA750);
  }

  return result;
}

uint64_t sub_1D90F4844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF0 && *(a1 + 33))
  {
    return (*a1 + 240);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0x11)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D90F4880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEF)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 240;
    if (a3 >= 0xF0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF0)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D90F48CC(uint64_t result, unsigned int a2)
{
  if (a2 > 0x10)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 17;
    LOBYTE(a2) = 17;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1D90F4900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C80, &unk_1D91949C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void static Persona.current.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[5] = &type metadata for Persona.CurrentUserExecutionStrategy;
  a1[6] = &off_1F5482BB8;
}

uint64_t Persona.identifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Persona.init(personaIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[5] = &type metadata for Persona.AdoptPersonaExecutionStrategy;
  a3[6] = &off_1F5482BA8;
  a3[2] = a1;
  a3[3] = a2;
}

uint64_t Persona.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D90F4A1C, 0, 0);
}

uint64_t sub_1D90F4A1C()
{
  v1 = v0[6];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = *(v3 + 8);
  v12 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1D90F4B50;
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];
  v10 = v0[3];

  return v12(v9, v10, v7, v8, v2, v3);
}

uint64_t sub_1D90F4B50()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D90F4C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1D90F4CE0, 0, 0);
}

uint64_t sub_1D90F4CE0()
{
  v97 = v0;
  v96 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v1 currentPersona];
  v0[16] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[15];

    v5 = [v3 userPersonaUniqueString];
    v6 = v0[15];
    if (v5)
    {
      v7 = v0[14];
      v8 = v5;
      v9 = sub_1D917820C();
      v11 = v10;

      v12 = v0[15];
      if (v9 == v7 && v11 == v6)
      {

LABEL_21:
        if (qword_1EDCD1090 != -1)
        {
          swift_once();
        }

        v64 = v0[15];
        v65 = sub_1D917744C();
        __swift_project_value_buffer(v65, qword_1EDCD1098);

        v66 = sub_1D917741C();
        v67 = sub_1D9178CEC();

        if (os_log_type_enabled(v66, v67))
        {
          v69 = v0[14];
          v68 = v0[15];
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          v94 = v71;
          *v70 = 136315138;
          *(v70 + 4) = sub_1D8CFA924(v69, v68, &v94);
          _os_log_impl(&dword_1D8CEC000, v66, v67, "Already running as persona %s, nothing to do.", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v71);
          MEMORY[0x1DA72CB90](v71, -1, -1);
          MEMORY[0x1DA72CB90](v70, -1, -1);
        }

        v93 = (v0[12] + *v0[12]);
        v72 = *(v0[12] + 4);
        v73 = swift_task_alloc();
        v0[20] = v73;
        *v73 = v0;
        v74 = sub_1D90F58A4;
LABEL_37:
        v73[1] = v74;
        v90 = v0[13];
        v91 = v0[11];
        v92 = *MEMORY[0x1E69E9840];

        return v93(v91);
      }

      v14 = v0[14];
      v15 = v0[15];
      v16 = sub_1D9179ACC();

      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = v0[15];
    }

    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v20 = v0[15];
    v21 = sub_1D917744C();
    __swift_project_value_buffer(v21, qword_1EDCD1098);

    v22 = v3;
    v23 = sub_1D917741C();
    v24 = sub_1D9178D1C();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v0[14];
      v25 = v0[15];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v94 = v28;
      *v27 = 136315394;
      *(v27 + 4) = sub_1D8CFA924(v26, v25, &v94);
      *(v27 + 12) = 2080;
      v29 = sub_1D90F5BAC();
      v31 = sub_1D8CFA924(v29, v30, &v94);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Request to execute as user %s, currently running as %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }

    v0[8] = 0;
    v32 = [v22 copyCurrentPersonaContextWithError_];
    v0[17] = v32;
    v33 = v0[8];
    if (v32)
    {
      v34 = v32;
      v36 = v0[14];
      v35 = v0[15];
      v37 = v33;
      v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v39 = [v22 generateAndRestorePersonaContextWithPersonaUniqueString_];

      if (!v39)
      {
        v79 = sub_1D917741C();
        v80 = sub_1D9178D1C();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          v94 = v82;
          *v81 = 136315138;
          v83 = [v1 currentPersona];
          if (v83)
          {
            v84 = v83;
            v85 = sub_1D90F5BAC();
            v87 = v86;
          }

          else
          {
            v87 = 0xE300000000000000;
            v85 = 7104878;
          }

          v88 = sub_1D8CFA924(v85, v87, &v94);

          *(v81 + 4) = v88;
          _os_log_impl(&dword_1D8CEC000, v79, v80, "Executing as %s", v81, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          MEMORY[0x1DA72CB90](v82, -1, -1);
          MEMORY[0x1DA72CB90](v81, -1, -1);
        }

        v93 = (v0[12] + *v0[12]);
        v89 = *(v0[12] + 4);
        v73 = swift_task_alloc();
        v0[18] = v73;
        *v73 = v0;
        v74 = sub_1D90F56BC;
        goto LABEL_37;
      }

      v40 = v0[15];

      v41 = v39;
      v42 = sub_1D917741C();
      v43 = sub_1D9178CFC();

      if (os_log_type_enabled(v42, v43))
      {
        v45 = v0[14];
        v44 = v0[15];
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v94 = v47;
        *v46 = 136315394;
        *(v46 + 4) = sub_1D8CFA924(v45, v44, &v94);
        *(v46 + 12) = 2080;
        swift_getErrorValue();
        v49 = v0[5];
        v48 = v0[6];
        v50 = v0[7];
        v51 = sub_1D9179D2C();
        v53 = sub_1D8CFA924(v51, v52, &v94);

        *(v46 + 14) = v53;
        _os_log_impl(&dword_1D8CEC000, v42, v43, "Failed adopting persona %s: %s", v46, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v47, -1, -1);
        MEMORY[0x1DA72CB90](v46, -1, -1);
      }

      v55 = v0[14];
      v54 = v0[15];
      v56 = sub_1D917717C();
      sub_1D90F6334();
      swift_allocError();
      v58 = v57;
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_1D917946C();

      v94 = 0xD000000000000018;
      v95 = 0x80000001D91D61C0;
      MEMORY[0x1DA7298F0](v55, v54);
      MEMORY[0x1DA7298F0](8238, 0xE200000000000000);
      swift_getErrorValue();
      v60 = v0[2];
      v59 = v0[3];
      v61 = v0[4];
      v62 = sub_1D9179D2C();
      MEMORY[0x1DA7298F0](v62);

      v63 = v95;
      *v58 = v94;
      v58[1] = v63;
      (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E698AE28], v56);
      swift_willThrow();

      sub_1D90F5EF4(v22, v34);
    }

    else
    {
      v75 = v33;
      sub_1D9176A6C();

      swift_willThrow();
    }
  }

  else
  {
    v17 = sub_1D917717C();
    sub_1D90F6334();
    swift_allocError();
    *v18 = 0xD000000000000033;
    v18[1] = 0x80000001D91D6180;
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E698AE28], v17);
    swift_willThrow();
  }

  v76 = v0[1];
  v77 = *MEMORY[0x1E69E9840];

  return v76();
}

uint64_t sub_1D90F56BC()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1D90F5B04;
  }

  else
  {
    v3 = sub_1D90F57FC;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D90F57FC()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = v0[16];
  v2 = v0[17];
  sub_1D90F5EF4(v1, v2);

  v3 = v0[1];
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_1D90F58A4()
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1D90F5A74;
  }

  else
  {
    v3 = sub_1D90F59E4;
  }

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D90F59E4()
{
  v4 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 8);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_1D90F5A74()
{
  v5 = *MEMORY[0x1E69E9840];

  v1 = *(v0 + 168);
  v2 = *(v0 + 8);
  v3 = *MEMORY[0x1E69E9840];

  return v2();
}

uint64_t sub_1D90F5B04()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[16];
  v2 = v0[17];
  sub_1D90F5EF4(v1, v2);

  v3 = v0[19];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1D90F5BAC()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  sub_1D917946C();
  v3 = [v0 userPersonaUniqueString];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D917820C();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x1DA7298F0](v5, v7);

  MEMORY[0x1DA7298F0](10272, 0xE200000000000000);
  v8 = [v1 userPersonaNickName];
  if (v8)
  {
    v9 = v8;
    v2 = sub_1D917820C();
    v11 = v10;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1DA7298F0](v2, v11);

  v12 = 0xE800000000000000;
  MEMORY[0x1DA7298F0](0x203A65707974202CLL, 0xE800000000000000);
  v13 = [v1 userPersonaType];
  if (v13 > 3)
  {
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        v12 = 0xE500000000000000;
        v14 = 0x7473657547;
        goto LABEL_25;
      }

      if (v13 == 1000)
      {
        v12 = 0xE700000000000000;
        v14 = 0x64696C61766E49;
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v13 == 4)
    {
      v12 = 0xE90000000000006CLL;
      v14 = 0x6173726576696E55;
    }

    else
    {
      v12 = 0xE700000000000000;
      v14 = 0x746C7561666544;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (!v13)
      {
        v14 = 0x6C616E6F73726550;
        goto LABEL_25;
      }

      if (v13 == 1)
      {
        v12 = 0xE700000000000000;
        v14 = 0x646567616E614DLL;
        goto LABEL_25;
      }

LABEL_24:
      v14 = 0x6E776F6E6B6E753CLL;
      v12 = 0xE90000000000003ELL;
      goto LABEL_25;
    }

    if (v13 == 2)
    {
      v12 = 0xEA00000000006573;
      v14 = 0x6972707265746E45;
    }

    else
    {
      v12 = 0xE600000000000000;
      v14 = 0x6D6574737953;
    }
  }

LABEL_25:
  MEMORY[0x1DA7298F0](v14, v12);

  MEMORY[0x1DA7298F0](0x203A444955202CLL, 0xE700000000000000);
  [v1 uid];
  v15 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v15);

  MEMORY[0x1DA7298F0](0x203A444947202CLL, 0xE700000000000000);
  [v1 gid];
  v16 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v16);

  MEMORY[0x1DA7298F0](41, 0xE100000000000000);
  return 0;
}

void sub_1D90F5EF4(void *a1, void *a2)
{
  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD1098);
  v4 = a2;
  oslog = sub_1D917741C();
  v5 = sub_1D9178D1C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    v8 = [v4 description];
    v9 = sub_1D917820C();
    v11 = v10;

    v12 = sub_1D8CFA924(v9, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = [objc_opt_self() currentPersona];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D90F5BAC();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_1D8CFA924(v15, v17, &v20);

    *(v6 + 14) = v18;
    _os_log_impl(&dword_1D8CEC000, oslog, v5, "Restored persona context %s, executing as %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }
}

uint64_t sub_1D90F611C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;
  v8 = v3[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1D8D58924;

  return sub_1D90F4C48(a1, a2, a3, v9, v8);
}

uint64_t _s18PodcastsFoundation7PersonaV10IdentifierO2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

uint64_t sub_1D90F6260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D90F62A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D90F6334()
{
  result = qword_1ECABA758;
  if (!qword_1ECABA758)
  {
    sub_1D917717C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA758);
  }

  return result;
}

id PodcastDonationModel.contentID.getter()
{
  v1 = *v0;
  sub_1D8D5055C(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t PodcastDonationModel.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t PodcastDonationModel.providerName.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t PodcastDonationModel.init(contentID:name:providerName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t _s18PodcastsFoundation20PodcastDonationModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = *a2;
  v8 = *(a2 + 16);
  v9 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  v11 = a2[6];
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v8 != 1)
      {
        return 0;
      }

      sub_1D8D6F530();
      if ((sub_1D917914C() & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8 != 2)
      {
        return 0;
      }

      if (v2 != v7 || a1[1] != a2[1])
      {
        v14 = *a1;
        if ((sub_1D9179ACC() & 1) == 0)
        {
          return 0;
        }
      }
    }

LABEL_13:
    if ((v3 != v9 || v4 != v10) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }

    if (v6)
    {
      if (!v11 || (v5 != v12 || v6 != v11) && (sub_1D9179ACC() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (!*(a2 + 16) && v2 == v7)
  {
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1D90F65A4()
{
  result = qword_1ECABA760;
  if (!qword_1ECABA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA760);
  }

  return result;
}

uint64_t sub_1D90F65F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D90F6640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t StationDonationModel.stationUUID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StationDonationModel.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

PodcastsFoundation::StationDonationModel __swiftcall StationDonationModel.init(stationUUID:name:)(Swift::String stationUUID, Swift::String name)
{
  *v2 = stationUUID;
  v2[1] = name;
  result.name = name;
  result.stationUUID = stationUUID;
  return result;
}

uint64_t sub_1D90F66F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D90F6740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 DonationService.init(persona:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

uint64_t sub_1D90F67A8()
{
  v1 = v0[19];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_1D90F680C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1D90F6870()
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[22];
  v4 = v0[1];
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

unint64_t sub_1D90F698C()
{
  result = qword_1ECABA768;
  if (!qword_1ECABA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA768);
  }

  return result;
}

unint64_t sub_1D90F69E0()
{
  result = qword_1ECAAFDE8;
  if (!qword_1ECAAFDE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAAFDE8);
  }

  return result;
}

uint64_t sub_1D90F6A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D90F6A68()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x20646F70656D6F48;
  }
}

void sub_1D90F6B08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D8D32880();
  }
}

id SiriDonator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriDonator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriDonator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D90F6CB0()
{
  v1 = v0[6];
  (*(v0[7] + 8))(v5, v0[5], v0[2], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  v2 = swift_dynamicCast();
  if ((v2 & 1) == 0)
  {
    v6 = 0;
  }

  v3 = v0 + 4;
  if (v2)
  {
    v3 = &v6;
  }

  return *v3;
}

uint64_t sub_1D90F6D4C()
{
  v1 = *(v0 + 48);
  (*(*(v0 + 56) + 8))(v4, *(v0 + 40), *(v0 + 16), *(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  if ((swift_dynamicCast() & 1) == 0 || (v2 = v5, v5 == 2))
  {
    v2 = *(v0 + 32);
  }

  return v2 & 1;
}

uint64_t sub_1D90F6DE4()
{
  v1 = *(v0 + 56);
  (*(*(v0 + 64) + 8))(v5, *(v0 + 48), *(v0 + 16), *(v0 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABA7E0, &qword_1D91A3E10);
  if (swift_dynamicCast())
  {
    v2 = &v6;
  }

  else
  {
    v6 = 0;
    v2 = (v0 + 32);
    v3 = *(v0 + 40);
  }

  return *v2;
}

unint64_t sub_1D90F6F18()
{
  result = qword_1ECABA7D0;
  if (!qword_1ECABA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA7D0);
  }

  return result;
}

uint64_t sub_1D90F6F7C(unint64_t a1, char a2, uint64_t a3, void (*a4)(unint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v64 = a4;
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (a2)
    {
      if (qword_1EDCD1090 != -1)
      {
LABEL_39:
        swift_once();
      }

      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1EDCD1098);

      v21 = sub_1D917741C();
      v22 = sub_1D9178CFC();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        aBlock[0] = v24;
        *v23 = 141558275;
        *(v23 + 4) = 1752392040;
        *(v23 + 12) = 2081;
        v25 = *(v19 + 24);
        if (v25)
        {
          v26 = [v25 description];
          v27 = sub_1D917820C();
          v29 = v28;
        }

        else
        {
          v29 = 0xEF72657375206576;
          v27 = 0x6974636120726F66;
        }

        v54 = sub_1D8CFA924(v27, v29, aBlock);

        *(v23 + 14) = v54;
        _os_log_impl(&dword_1D8CEC000, v21, v22, "Account %{private,mask.hash}s: Not proceeding with donation because we encountered an error fetching podcasts.", v23, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1DA72CB90](v24, -1, -1);
        MEMORY[0x1DA72CB90](v23, -1, -1);
      }

      v64(a1, 0, 1);
    }

    else
    {
      v30 = objc_opt_self();

      if ([v30 isRunningOnHomepod])
      {
        v61 = a5;
        if (a1 >> 62)
        {
          v31 = sub_1D917935C();
        }

        else
        {
          v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = v19;
        v32 = MEMORY[0x1E69E7CC0];
        if (v31)
        {
          v19 = 0;
          v33 = MEMORY[0x1E69E7CC0];
          do
          {
            v60 = v33;
            v34 = v19;
            while (1)
            {
              if ((a1 & 0xC000000000000001) != 0)
              {
                v35 = MEMORY[0x1DA72AA90](v34, a1);
              }

              else
              {
                if (v34 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_38;
                }

                v35 = *(a1 + 8 * v34 + 32);
              }

              v36 = v35;
              v19 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                __break(1u);
LABEL_38:
                __break(1u);
                goto LABEL_39;
              }

              v38 = *&v35[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
              v37 = *&v35[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

              v63 = sub_1D8FE6808(v38, v37);

              v39 = *&v36[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
              if (v39)
              {
                v40 = v39[12];
                if (v40)
                {
                  break;
                }
              }

              ++v34;
              if (v19 == v31)
              {
                v32 = MEMORY[0x1E69E7CC0];
                v33 = v60;
                goto LABEL_34;
              }
            }

            v41 = v39[11];
            v42 = v39[12];

            v43 = v39[3];
            v58 = v39[2];

            v44 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = v41;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v44 = sub_1D8D4EF90(0, *(v44 + 2) + 1, 1, v44);
            }

            v46 = v63;
            v48 = *(v44 + 2);
            v47 = *(v44 + 3);
            v49 = v44;
            if (v48 >= v47 >> 1)
            {
              v49 = sub_1D8D4EF90((v47 > 1), v48 + 1, 1, v44);
              v46 = v63;
            }

            *(v49 + 2) = v48 + 1;
            v50 = &v49[56 * v48];
            v33 = v49;
            *(v50 + 4) = v46;
            *(v50 + 5) = 0;
            v50[48] = 0;
            v51 = v58;
            *(v50 + 7) = v59;
            *(v50 + 8) = v40;
            *(v50 + 9) = v51;
            *(v50 + 10) = v43;
            v32 = MEMORY[0x1E69E7CC0];
          }

          while (v19 != v31);
        }

        else
        {
          v33 = MEMORY[0x1E69E7CC0];
        }

LABEL_34:
        sub_1D8D99898(a1, 0);
        v55 = v62;
        v56 = *(v62 + 80);
        v57 = *(v62 + 88);
        *(v62 + 80) = v33;
        *(v55 + 88) = v32;

        sub_1D8D4F5BC(v56);
        v64(v33, v32, 0);
      }

      else
      {
        v63 = *(v19 + 72);
        v52 = swift_allocObject();
        v52[2] = v19;
        v52[3] = a1;
        v52[4] = v64;
        v52[5] = a5;
        aBlock[4] = sub_1D90F9C2C;
        aBlock[5] = v52;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D8CF5F60;
        aBlock[3] = &block_descriptor_26_5;
        v53 = _Block_copy(aBlock);

        sub_1D9177E4C();
        v65 = MEMORY[0x1E69E7CC0];
        sub_1D8D123F8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
        sub_1D8D1D5B0();
        sub_1D91792CC();
        MEMORY[0x1DA72A400](0, v17, v12, v53);
        _Block_release(v53);
        (*(v9 + 8))(v12, v8);
        (*(v14 + 8))(v17, v13);
      }
    }
  }

  return result;
}

uint64_t sub_1D90F7668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177F1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(a1 + 72);
  *v13 = v14;
  (*(v9 + 104))(v13, *MEMORY[0x1E69E8020], v8, v11);
  v15 = v14;
  LOBYTE(v14) = sub_1D9177F4C();
  result = (*(v9 + 8))(v13, v8);
  if (v14)
  {
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a2;

    sub_1D90F8F2C(sub_1D90F9C38, v17, 2, &unk_1F5483278, sub_1D90F9C48);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D90F7828(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v126 = a2;
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v125 = result;
  if (result)
  {
    v115 = a3;
    v116 = a4;
    v117 = v15;
    v118 = v12;
    v119 = v10;
    v120 = v11;
    v121 = v7;
    v122 = v6;
    v17 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v18 = [objc_opt_self() predicateForNotHiddenPodcasts];
    [v17 setPredicate_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D9195F30;
    v20 = sub_1D917820C();
    v21 = MEMORY[0x1E69E6158];
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = sub_1D917820C();
    *(v19 + 88) = v21;
    *(v19 + 64) = v23;
    *(v19 + 72) = v24;
    v25 = sub_1D917820C();
    *(v19 + 120) = v21;
    *(v19 + 96) = v25;
    *(v19 + 104) = v26;
    v27 = sub_1D917820C();
    *(v19 + 152) = v21;
    *(v19 + 128) = v27;
    *(v19 + 136) = v28;
    v29 = sub_1D917820C();
    *(v19 + 184) = v21;
    *(v19 + 160) = v29;
    *(v19 + 168) = v30;
    v31 = sub_1D91785DC();

    [v17 setPropertiesToFetch_];

    v32 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
    v33 = [objc_opt_self() topLevelPlaylistsPredicate];
    [v32 setPredicate_];

    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1D918A530;
    v35 = sub_1D917820C();
    *(v34 + 56) = v21;
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    v37 = sub_1D917820C();
    *(v34 + 88) = v21;
    *(v34 + 64) = v37;
    *(v34 + 72) = v38;
    v39 = sub_1D91785DC();

    [v32 setPropertiesToFetch_];

    sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    v114 = v17;
    v40 = sub_1D917908C();
    sub_1D8CF2154(0, &qword_1EDCD0A28, off_1E8567638);
    v41 = sub_1D917908C();
    v42 = v125;
    v43 = v41;
    v112 = 0;
    if (qword_1EDCD1090 != -1)
    {
LABEL_38:
      swift_once();
    }

    v44 = sub_1D917744C();
    __swift_project_value_buffer(v44, qword_1EDCD1098);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v45 = sub_1D917741C();
    v46 = sub_1D9178D1C();

    v47 = os_log_type_enabled(v45, v46);
    v48 = v40 >> 62;
    v123 = (v43 >> 62);
    v126 = v43;
    if (v47)
    {
      v49 = v40;
      v50 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v50 = 141558787;
      *(v50 + 4) = 1752392040;
      *(v50 + 12) = 2081;
      v51 = *(v42 + 24);
      if (v51)
      {
        v52 = [v51 description];
        v53 = sub_1D917820C();
        v55 = v54;
      }

      else
      {
        v53 = 0x6974636120726F66;
        v55 = 0xEF72657375206576;
      }

      v56 = sub_1D8CFA924(v53, v55, aBlock);

      *(v50 + 14) = v56;
      *(v50 + 22) = 2048;
      if (v48)
      {
        v57 = sub_1D917935C();
      }

      else
      {
        v57 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 24) = v57;

      *(v50 + 32) = 2048;
      if (v123)
      {
        v58 = sub_1D917935C();
      }

      else
      {
        v58 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v50 + 34) = v58;

      _os_log_impl(&dword_1D8CEC000, v45, v46, "Account %{private,mask.hash}s: Fetched %ld podcasts and %ld stations from DB.", v50, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v50, -1, -1);

      v40 = v49;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
    }

    v113 = v32;
    v32 = (v40 & 0xFFFFFFFFFFFFFF8);
    if (v48)
    {
      v59 = sub_1D917935C();
      if (v59)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v59 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
LABEL_15:
        v60 = 0;
        v124 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v42 = v60;
          while (1)
          {
            if ((v40 & 0xC000000000000001) != 0)
            {
              v61 = MEMORY[0x1DA72AA90](v42, v40);
            }

            else
            {
              if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v61 = *(v40 + 8 * v42 + 32);
            }

            v62 = v61;
            v60 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v63 = [v61 uuid];
            if (v63)
            {
              break;
            }

LABEL_18:

            ++v42;
            if (v60 == v59)
            {
              goto LABEL_41;
            }
          }

          v64 = v63;
          v65 = sub_1D917820C();
          v43 = v66;

          v67 = [v62 title];
          if (!v67)
          {
            break;
          }

          v68 = v67;
          v110 = sub_1D917820C();
          v109 = v69;

          v70 = [v62 provider];
          if (v70)
          {
            v71 = v70;
            v111 = sub_1D917820C();
            v73 = v72;
          }

          else
          {

            v111 = 0;
            v73 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = sub_1D8D4EF90(0, *(v124 + 2) + 1, 1, v124);
          }

          v75 = *(v124 + 2);
          v74 = *(v124 + 3);
          if (v75 >= v74 >> 1)
          {
            v124 = sub_1D8D4EF90((v74 > 1), v75 + 1, 1, v124);
          }

          v76 = v124;
          *(v124 + 2) = v75 + 1;
          v77 = &v76[56 * v75];
          *(v77 + 4) = v65;
          *(v77 + 5) = v43;
          v77[48] = 2;
          v78 = v109;
          *(v77 + 7) = v110;
          *(v77 + 8) = v78;
          *(v77 + 9) = v111;
          *(v77 + 10) = v73;
          if (v60 == v59)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_18;
      }
    }

    v124 = MEMORY[0x1E69E7CC0];
LABEL_41:

    if (v123)
    {
      goto LABEL_66;
    }

    v79 = v126;
    v80 = v126 & 0xFFFFFFFFFFFFFF8;
    v81 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_43:
    if (v81)
    {
      v82 = v79 & 0xC000000000000001;
      v123 = MEMORY[0x1E69E7CC0];
      v83 = 0;
      if ((v79 & 0xC000000000000001) != 0)
      {
LABEL_60:
        v84 = MEMORY[0x1DA72AA90](v83, v79);
        goto LABEL_51;
      }

      while (1)
      {
        while (1)
        {
          if (v83 >= *(v80 + 16))
          {
LABEL_65:
            __break(1u);
LABEL_66:
            v79 = v126;
            v80 = v126 & 0xFFFFFFFFFFFFFF8;
            v81 = sub_1D917935C();
            goto LABEL_43;
          }

          v84 = *(v79 + 8 * v83 + 32);
LABEL_51:
          v85 = v84;
          v86 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            __break(1u);
            goto LABEL_65;
          }

          v87 = [v84 uuid];
          if (v87)
          {
            break;
          }

LABEL_47:

          ++v83;
          if (v86 == v81)
          {
            goto LABEL_62;
          }

          if (v82)
          {
            goto LABEL_60;
          }
        }

        v88 = v87;
        v89 = sub_1D917820C();
        v91 = v90;

        v92 = [v85 title];
        if (!v92)
        {

          v79 = v126;
          goto LABEL_47;
        }

        v93 = v92;
        v94 = sub_1D917820C();
        v111 = v95;

        v96 = v123;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D8D4F0C8(0, *(v96 + 2) + 1, 1, v96);
        }

        v98 = *(v96 + 2);
        v97 = *(v96 + 3);
        if (v98 >= v97 >> 1)
        {
          v96 = sub_1D8D4F0C8((v97 > 1), v98 + 1, 1, v96);
        }

        *(v96 + 2) = v98 + 1;
        v123 = v96;
        v99 = &v96[32 * v98];
        *(v99 + 4) = v89;
        *(v99 + 5) = v91;
        v100 = v111;
        *(v99 + 6) = v94;
        *(v99 + 7) = v100;
        v79 = v126;
        if (v86 == v81)
        {
          goto LABEL_62;
        }

        v83 = v86;
        if (v82)
        {
          goto LABEL_60;
        }
      }
    }

    v123 = MEMORY[0x1E69E7CC0];
LABEL_62:

    v101 = *(v125 + 72);
    v102 = swift_allocObject();
    v103 = v116;
    v102[2] = v115;
    v102[3] = v103;
    v104 = v123;
    v102[4] = v124;
    v102[5] = v104;
    aBlock[4] = sub_1D90F9B30;
    aBlock[5] = v102;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_10_8;
    v105 = _Block_copy(aBlock);

    v106 = v117;
    sub_1D9177E4C();
    v127 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    v107 = v119;
    v108 = v122;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v106, v107, v105);
    _Block_release(v105);

    (*(v121 + 8))(v107, v108);
    (*(v118 + 8))(v106, v120);
  }

  return result;
}

uint64_t sub_1D90F8650(unint64_t a1, char a2, void *a3, void (*a4)(void, void, void), uint64_t a5, unint64_t a6)
{
  v6 = a4;
  v8 = a1;
  if (a2)
  {
    if (qword_1EDCD1090 != -1)
    {
      goto LABEL_44;
    }

    goto LABEL_3;
  }

  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v21 = sub_1D917744C();
  __swift_project_value_buffer(v21, qword_1EDCD1098);

  sub_1D8D81A00(v8, 0);

  sub_1D8D81A00(v8, 0);
  v22 = sub_1D917741C();
  v23 = sub_1D9178D1C();

  v24 = a6 >> 62;
  v79 = v8 >> 62;
  v82 = a6;
  v76 = a3;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v84[0] = v26;
    *v25 = 141558787;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    v27 = a3[3];
    if (v27)
    {
      v28 = [v27 description];
      v29 = sub_1D917820C();
      v31 = v30;
    }

    else
    {
      v29 = 0x6974636120726F66;
      v31 = 0xEF72657375206576;
    }

    v34 = sub_1D8CFA924(v29, v31, v84);

    *(v25 + 14) = v34;
    *(v25 + 22) = 2048;
    a3 = v82;
    if (v24)
    {
      v35 = sub_1D917935C();
    }

    else
    {
      v35 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v25 + 24) = v35;

    *(v25 + 32) = 2048;
    if (v79)
    {
      v36 = sub_1D917935C();
    }

    else
    {
      v36 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_1D8D99898(v8, 0);
    *(v25 + 34) = v36;
    sub_1D8D99898(v8, 0);
    _os_log_impl(&dword_1D8CEC000, v22, v23, "Account %{private,mask.hash}s: Fetched %ld podcasts and %ld stations from MAPI.", v25, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v25, -1, -1);

    a6 = v82;
  }

  else
  {
    sub_1D8D99898(v8, 0);

    sub_1D8D99898(v8, 0);
  }

  v8 = a6 & 0xFFFFFFFFFFFFFF8;
  if (v24)
  {
    v37 = sub_1D917935C();
    if (v37)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v37 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
LABEL_24:
      v38 = 0;
      v6 = 0;
      v78 = MEMORY[0x1E69E7CC0];
      v39 = a6 & 0xC000000000000001;
      while (1)
      {
        v40 = v38;
        while (1)
        {
          if (v39)
          {
            v41 = MEMORY[0x1DA72AA90](v40, a6);
          }

          else
          {
            if (v40 >= *(v8 + 16))
            {
              goto LABEL_43;
            }

            v41 = *(a6 + 8 * v40 + 32);
          }

          v42 = v41;
          v38 = v40 + 1;
          if (__OFADD__(v40, 1))
          {
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            swift_once();
LABEL_3:
            v9 = sub_1D917744C();
            __swift_project_value_buffer(v9, qword_1EDCD1098);

            v10 = sub_1D917741C();
            v11 = sub_1D9178CFC();

            if (os_log_type_enabled(v10, v11))
            {
              v12 = v6;
              v13 = swift_slowAlloc();
              v14 = swift_slowAlloc();
              v84[0] = v14;
              *v13 = 141558275;
              *(v13 + 4) = 1752392040;
              *(v13 + 12) = 2081;
              v15 = a3[3];
              if (v15)
              {
                v16 = [v15 description];
                v17 = sub_1D917820C();
                v19 = v18;
              }

              else
              {
                v17 = 0x6974636120726F66;
                v19 = 0xEF72657375206576;
              }

              v32 = sub_1D8CFA924(v17, v19, v84);

              *(v13 + 14) = v32;
              _os_log_impl(&dword_1D8CEC000, v10, v11, "Account %{private,mask.hash}s: Not proceeding with donation because we encountered an error fetching stations.", v13, 0x16u);
              __swift_destroy_boxed_opaque_existential_1Tm(v14);
              MEMORY[0x1DA72CB90](v14, -1, -1);
              MEMORY[0x1DA72CB90](v13, -1, -1);

              v6 = v12;
              v8 = a1;
            }

            else
            {
            }

            return v6(v8, 0, 1);
          }

          v44 = *&v41[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id];
          v43 = *&v41[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_id + 8];

          v45 = sub_1D8FE6808(v44, v43);

          a3 = *&v42[OBJC_IVAR____TtC18PodcastsFoundation17ServerPodcastBase_attributes];
          if (!a3)
          {

            goto LABEL_26;
          }

          v46 = a3[12];
          if (v46)
          {
            break;
          }

          a6 = v82;
LABEL_26:
          ++v40;
          if (v38 == v37)
          {
            goto LABEL_47;
          }
        }

        v75 = a3[11];

        v48 = a3[2];
        v47 = a3[3];

        v74 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1D8D4EF90(0, *(v78 + 2) + 1, 1, v78);
        }

        v49 = v45;
        v51 = *(v78 + 2);
        v50 = *(v78 + 3);
        a3 = (v51 + 1);
        if (v51 >= v50 >> 1)
        {
          v78 = sub_1D8D4EF90((v50 > 1), v51 + 1, 1, v78);
          v49 = v45;
        }

        *(v78 + 2) = a3;
        v52 = &v78[56 * v51];
        *(v52 + 4) = v49;
        *(v52 + 5) = 0;
        v52[48] = 0;
        *(v52 + 7) = v75;
        *(v52 + 8) = v46;
        *(v52 + 9) = v74;
        *(v52 + 10) = v47;
        a6 = v82;
        if (v38 == v37)
        {
          goto LABEL_47;
        }
      }
    }
  }

  v6 = 0;
  v78 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v53 = a1;
  if (v79)
  {
    goto LABEL_69;
  }

  v54 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v54)
  {
    goto LABEL_70;
  }

  do
  {
    v55 = v53 & 0xC000000000000001;
    v80 = MEMORY[0x1E69E7CC0];
    v56 = 0;
    if ((v53 & 0xC000000000000001) != 0)
    {
LABEL_66:
      v57 = MEMORY[0x1DA72AA90](v56, v53);
      goto LABEL_56;
    }

    while (v56 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v57 = *(v53 + 8 * v56 + 32);
LABEL_56:
      v58 = v57;
      v59 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        __break(1u);
        break;
      }

      v60 = *&v57[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id + 8];
      v84[0] = *&v57[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_id];
      v84[1] = v60;
      sub_1D8D447DC();
      v61 = sub_1D91791FC();
      if (v61[2] <= 1uLL)
      {

LABEL_52:
        ++v56;
        if (v59 == v54)
        {
          goto LABEL_71;
        }

        if (v55)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v83 = v6;
        v63 = v61[6];
        v62 = v61[7];

        v64 = *&v58[OBJC_IVAR____TtC18PodcastsFoundation20ServerPodcastStation_attributes];

        v65 = *(v64 + 16);
        v66 = *(v64 + 24);

        if (!v66)
        {

          v53 = a1;
          v6 = v83;
          goto LABEL_52;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_1D8D4F0C8(0, *(v80 + 2) + 1, 1, v80);
        }

        v68 = *(v80 + 2);
        v67 = *(v80 + 3);
        v69 = v63;
        if (v68 >= v67 >> 1)
        {
          v71 = sub_1D8D4F0C8((v67 > 1), v68 + 1, 1, v80);
          v69 = v63;
          v80 = v71;
        }

        v53 = a1;
        *(v80 + 2) = v68 + 1;
        v70 = &v80[32 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v62;
        *(v70 + 6) = v65;
        *(v70 + 7) = v66;
        v6 = v83;
        if (v59 == v54)
        {
          goto LABEL_71;
        }

        ++v56;
        if (v55)
        {
          goto LABEL_66;
        }
      }
    }

    __break(1u);
LABEL_69:
    v54 = sub_1D917935C();
  }

  while (v54);
LABEL_70:
  v80 = MEMORY[0x1E69E7CC0];
LABEL_71:
  v72 = v76[10];
  v73 = v76[11];
  v76[10] = v78;
  v76[11] = v80;

  sub_1D8D4F5BC(v72);
  a4(v78, v80, 0);
}

uint64_t sub_1D90F8F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v65 = a5;
  v62 = a3;
  v63 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for MediaRequest.Params();
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177F1C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = v5;
  v22 = v5[9];
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1D9177F4C();
  result = (*(v17 + 8))(v21, v16);
  if (v22)
  {
    v25 = sub_1D9176C2C();
    v26 = *(*(v25 - 8) + 56);
    v59 = v11;
    v26(v11, 1, 1, v25);
    v61 = a4;
    v27 = MEMORY[0x1E69E7CC0];
    v58 = sub_1D8D94DF8(MEMORY[0x1E69E7CC0]);
    v57 = sub_1D8D94DF8(v27);
    v56 = sub_1D8D951E0(v27);
    v55 = sub_1D8D9503C(v27);
    v54 = sub_1D8D9536C(v27);
    v53 = sub_1D8D9536C(v27);
    v52 = sub_1D8D953C4(v27);
    v28 = sub_1D8D952D8(v27);
    v60 = a1;
    v29 = v28;
    v51 = sub_1D8D95394(v27);
    v30 = sub_1D8D957C4(v27);
    *(v15 + 41) = 263;
    v15[43] = 5;
    v15[152] = 1;
    v15[201] = 1;
    v31 = v12[28];
    v26(&v15[v31], 1, 1, v25);
    v32 = &v15[v12[29]];
    v33 = &v15[v12[31]];
    v34 = v12[33];
    v50 = v12[34];
    v35 = &v15[v34];
    v36 = &v15[v12[35]];
    *v15 = 1;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
    v15[40] = 4;
    v15[41] = v62;
    *(v15 + 21) = 1281;
    v37 = v57;
    *(v15 + 6) = v58;
    *(v15 + 7) = v37;
    v38 = v55;
    *(v15 + 8) = v56;
    *(v15 + 9) = v27;
    v39 = v53;
    v40 = v54;
    *(v15 + 10) = v38;
    *(v15 + 11) = v40;
    *(v15 + 12) = v39;
    v41 = v51;
    *(v15 + 13) = v52;
    *(v15 + 14) = v27;
    *(v15 + 15) = v29;
    *(v15 + 16) = v27;
    *(v15 + 17) = v27;
    *(v15 + 18) = v27;
    v15[152] = 0;
    *(v15 + 20) = 0;
    v15[168] = 1;
    *(v15 + 22) = v41;
    *(v15 + 23) = v30;
    *(v15 + 24) = 0;
    *(v15 + 100) = 257;
    v15[202] = 0;
    sub_1D8E26828(v59, &v15[v31]);
    *v32 = 0;
    *(v32 + 1) = 0;
    v15[v12[30]] = 0;
    *v33 = 0;
    *(v33 + 1) = 0;
    *&v15[v12[32]] = v27;
    *v35 = 0;
    *(v35 + 1) = 0;
    v15[v50] = 2;
    *v36 = 0;
    *(v36 + 1) = 0;
    v42 = v64;
    v43 = v64[7];
    v44 = v64[8];
    __swift_project_boxed_opaque_existential_1(v64 + 4, v43);
    v45 = v42[3];
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v48 = v60;
    v47[2] = v46;
    v47[3] = v48;
    v47[4] = v63;
    v49 = *(v44 + 32);

    v49(v15, v45, v65, v47, v43, v44);

    sub_1D8D90BEC(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D90F9398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v32 = a7;
  v14 = sub_1D9177E0C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = v20;
    v31 = v19;
    v29 = *(result + 72);
    v25 = result;
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = v25;
    v26[4] = v32;
    v26[5] = a8;
    v26[6] = a1;
    aBlock[4] = a10;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = a11;
    v27 = _Block_copy(aBlock);
    v28 = a5;

    sub_1D9177E4C();
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v23, v18, v27);
    _Block_release(v27);
    (*(v15 + 8))(v18, v14);
    (*(v30 + 8))(v23, v31);
  }

  return result;
}

void sub_1D90F9660(void *a1, uint64_t a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), const char *a7, const char *a8)
{
  if (a1)
  {
    v12 = a1;
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v13 = sub_1D917744C();
    __swift_project_value_buffer(v13, qword_1EDCD1098);
    v14 = a1;

    v15 = sub_1D917741C();
    v16 = sub_1D9178CFC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v17 = 141558531;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2081;
      v20 = *(a2 + 24);
      if (v20)
      {
        v49 = v16;
        v21 = v18;
        v22 = v19;
        v23 = a7;
        v24 = a3;
        v25 = [v20 description];
        v26 = sub_1D917820C();
        v28 = v27;

        a3 = v24;
        a7 = v23;
        v19 = v22;
        v18 = v21;
        v16 = v49;
      }

      else
      {
        v26 = 0x6974636120726F66;
        v28 = 0xEF72657375206576;
      }

      v42 = sub_1D8CFA924(v26, v28, &v50);

      *(v17 + 14) = v42;
      *(v17 + 22) = 2112;
      v43 = sub_1D9176A5C();
      *(v17 + 24) = v43;
      *v18 = v43;
      _os_log_impl(&dword_1D8CEC000, v15, v16, a7, v17, 0x20u);
      sub_1D8E262AC(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    else
    {
    }

    v44 = a1;
    a3(a1, 1);

    v45 = a1;
LABEL_24:

    return;
  }

  if (!a5 || (v30 = a6(a5)) == 0)
  {
    if (qword_1EDCD1090 != -1)
    {
      swift_once();
    }

    v31 = sub_1D917744C();
    __swift_project_value_buffer(v31, qword_1EDCD1098);

    v32 = sub_1D917741C();
    v33 = sub_1D9178CFC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 141558275;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2081;
      v36 = *(a2 + 24);
      if (v36)
      {
        v37 = a3;
        v38 = [v36 description];
        v39 = sub_1D917820C();
        v41 = v40;

        a3 = v37;
      }

      else
      {
        v39 = 0x6974636120726F66;
        v41 = 0xEF72657375206576;
      }

      v46 = sub_1D8CFA924(v39, v41, &v50);

      *(v34 + 14) = v46;
      _os_log_impl(&dword_1D8CEC000, v32, v33, a8, v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1DA72CB90](v35, -1, -1);
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    sub_1D90F9BD8();
    v47 = swift_allocError();
    *v48 = 1;
    *(v48 + 8) = 1;
    a3(v47, 1);
    v45 = v47;
    goto LABEL_24;
  }

  a3(v30, 0);
}

unint64_t sub_1D90F9BD8()
{
  result = qword_1ECAB2AA8;
  if (!qword_1ECAB2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AA8);
  }

  return result;
}

uint64_t objectdestroy_16Tm_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1D90F9D48()
{
  v25 = v0;
  if (qword_1EDCD1090 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1EDCD1098);
  sub_1D8D35688(v2, (v0 + 2));
  v4 = v1;
  v5 = sub_1D917741C();
  v6 = sub_1D9178CFC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24 = v9;
    *v7 = 141558531;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    v10 = *(v0[3] + 24);
    if (v10)
    {
      v11 = [v10 description];
      v12 = sub_1D917820C();
      v14 = v13;
    }

    else
    {
      v14 = 0xEF72657375206576;
      v12 = 0x6974636120726F66;
    }

    v15 = v0[16];
    sub_1D8D330B0((v0 + 2));
    v16 = sub_1D8CFA924(v12, v14, &v24);

    *(v7 + 14) = v16;
    *(v7 + 22) = 2112;
    v17 = sub_1D9176A5C();
    *(v7 + 24) = v17;
    *v8 = v17;
    _os_log_impl(&dword_1D8CEC000, v5, v6, "Account %{private,mask.hash}s: Donation failed with error:%@", v7, 0x20u);
    sub_1D8E262AC(v8);
    MEMORY[0x1DA72CB90](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v7, -1, -1);
  }

  else
  {

    sub_1D8D330B0((v0 + 2));
  }

  v18 = v0[16];
  v20 = v0[13];
  v19 = v0[14];
  v21 = v18;
  v20(v18);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D90F9FF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[16];
  v9 = v1[17];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D5FF18;

  return sub_1D8D4FA18(a1, v4, v5, (v1 + 4), v6, v7, v8, v9);
}

uint64_t sub_1D90FA0CC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D90FA10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D90FA154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t EpisodeBookmarkState.dictionaryKey.getter(char a1)
{
  if (a1)
  {
    return 0x6B72616D6B6F6F62;
  }

  else
  {
    return 0x6D6B6F6F42746F6ELL;
  }
}

uint64_t EpisodeBookmarkState.hashValue.getter(char a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](a1 & 1);
  return sub_1D9179E1C();
}

uint64_t sub_1D90FA288()
{
  if (*v0)
  {
    result = 0x6B72616D6B6F6F62;
  }

  else
  {
    result = 0x6D6B6F6F42746F6ELL;
  }

  *v0;
  return result;
}

uint64_t static EpisodeBookmarkState.state(for:)(uint64_t a1)
{
  return *(a1 + 10);
}

{
  return *(a1 + *(type metadata accessor for InMemoryEpisodeStateModel() + 20));
}

uint64_t sub_1D90FA2E8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for InMemoryEpisodeStateModel();
  *a2 = *(a1 + *(result + 20));
  return result;
}

uint64_t EpisodeBookmarkStateRule<>.eraseToAnyEpisodeBookmarkStateRule()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)(char a1, char a2)@<X8>)
{
  v7 = *(*(a1 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v3, a1, v8);
  return sub_1D90FA43C(v10, a1, a2, a3);
}

uint64_t sub_1D90FA43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(char a1, char a2)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  result = (*(v8 + 32))(v11 + v10, a1, a2);
  *a4 = sub_1D90FA614;
  a4[1] = v11;
  return result;
}