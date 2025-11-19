uint64_t sub_1AF8DA944(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = result + (a3 << 6);
    v8 = a4 + 48 * a6;
    v9 = *(v7 + 8);
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    v12 = *(v7 + 32);
    *v8 = *v7;
    *(v8 + 8) = v9;
    *(v8 + 16) = v10;
    *(v8 + 24) = v11;
    *(v8 + 32) = v12;
    v13 = v12;
    v14 = a7 - 1;
    if (a7 != 1)
    {
      v15 = v7 + 64;
      v16 = (a4 + 48 * a6 + 80);
      do
      {
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = *(v15 + 24);
        v22 = *(v15 + 32);
        *(v16 - 4) = *v15;
        *(v16 - 3) = v17;
        *(v16 - 2) = v18;
        *(v16 - 1) = v19;
        *v16 = v22;
        v16 += 3;

        v20 = v13;
        v13 = v22;
        v15 += 64;
        --v14;
      }

      while (v14);
    }

    v21 = v13;
  }

  return result;
}

uint64_t sub_1AF8DAA3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v7 = a7;
    v8 = 0;
    v9 = result + 48 * a3;
    v10 = a4 + 48 * a6;
    do
    {
      v11 = *(v9 + v8 + 8);
      v12 = *(v9 + v8 + 16);
      v13 = *(v9 + v8 + 24);
      v14 = v10 + v8;
      v15 = *(v9 + v8 + 32);
      *v14 = *(v9 + v8);
      *(v14 + 8) = v11;
      *(v14 + 16) = v12;
      *(v14 + 24) = v13;
      *(v14 + 32) = v15;
      v16 = v15;

      v8 += 48;
      --v7;
    }

    while (v7);
  }

  return result;
}

BOOL sub_1AF8DAAD0(void *a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = a2;
  v22 = a2;
  v21 = a2 >> 8;
  v6 = a2 >> 16;
  v7 = a2 >> 24;
  v8 = HIDWORD(a2);
  v23 = a3;
  v9 = a3;
  v10 = HIDWORD(a3);
  v24 = a4;
  v11 = a4;
  v12 = HIWORD(a4);
  v25 = BYTE2(a4);
  v13 = sub_1AF445CA8(&v22);
  if (v13 != [a1 width])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v14 = sub_1AF445CB0(&v22);
  if (v14 != [a1 height])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v15 = sub_1AF8FE1B8(&v22);
  if ([a1 mipmapLevelCount] < v15)
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v16 = sub_1AF467494(&v22);
  if (v16 != [a1 pixelFormat])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v17 = sub_1AF8FE1C4(&v22);
  if (v17 != [a1 textureType])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v18 = sub_1AF8FE1D0(&v22);
  if (v18 != [a1 arrayLength])
  {
    return 0;
  }

  LOBYTE(v22) = v4;
  BYTE1(v22) = v21;
  BYTE2(v22) = v6;
  BYTE3(v22) = v7;
  HIDWORD(v22) = v8;
  v23 = __PAIR64__(v10, v9);
  v24 = v11;
  v25 = v12;
  v19 = sub_1AF8FE1D8(&v22);
  return v19 == [a1 storageMode];
}

uint64_t sub_1AF8DADB8(char a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1AF904A34(0, a2, type metadata accessor for ShaderScript, &off_1ED72CE68, a3);
  v10 = v9;
  v11 = *(v5 + 8);
  result = sub_1AF649C6C(*(v11 + 40), v9, v14);
  if (LOBYTE(v14[0]) == 1)
  {
    v14[0] = v10;
    v14[1] = a4;
    v15 = 1;
    MEMORY[0x1EEE9AC00](result, v13);

    sub_1AF63023C(a1 & 1, v11, a5);

    return sub_1AF635250(v14);
  }

  return result;
}

uint64_t sub_1AF8DAED8(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v9 = *(v4 + 8);
  result = sub_1AF649C6C(*(v9 + 40), a2, v12);
  if (LOBYTE(v12[0]) == 1)
  {
    v12[0] = a2;
    v12[1] = a3;
    v13 = 1;
    MEMORY[0x1EEE9AC00](result, v11);

    sub_1AF63023C(a1 & 1, v9, a4);

    return sub_1AF635250(v12);
  }

  return result;
}

uint64_t sub_1AF8DAFC8(uint64_t result)
{
  if (v1[10] >= 1)
  {
    v2 = v1;
    v3 = v1[7];
    if (v3)
    {
      v4 = result;
      v5 = v1[5];
      v6 = v5 + 48 * v3;
      v64 = v1;
      v65 = result;
      v68 = v6;
      do
      {
        v7 = *(v5 + 40);
        if (v4)
        {
          v8 = v2[9];
          v9 = *(*(v7 + 40) + 16);
          v10 = *(v9 + 128);
          if (!*(v10 + 16) || (result = sub_1AF449CB8(&type metadata for TextureLoadingOptions), (v11 & 1) == 0) || *(*(v9 + 24) + 16 * *(*(v10 + 56) + 8 * result) + 32) != &type metadata for TextureLoadingOptions)
          {
            *&v77[0] = &type metadata for TextureLoadingOptions;
            *(&v77[0] + 1) = &off_1F2543FE0;
            v79 = 0;
            swift_retain_n();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v72 = *(v8 + 96);
            v13 = v72;
            *(v8 + 96) = 0x8000000000000000;
            v14 = sub_1AF41A124(v7);
            v16 = v15;
            v17 = *(v13 + 16) + ((v15 & 1) == 0);
            if (*(v13 + 24) >= v17)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1AF8469BC();
                v13 = v72;
              }
            }

            else
            {
              sub_1AF830278(v17, isUniquelyReferenced_nonNull_native);
              type metadata accessor for ComponentsDataChunk();
              v13 = v72;
              v18 = sub_1AF41A124(v7);
              if ((v16 & 1) != (v19 & 1))
              {
                result = sub_1AFDFF1A8();
                __break(1u);
                return result;
              }

              v14 = v18;
            }

            *(v8 + 96) = v13;

            v35 = *(v8 + 96);
            if ((v16 & 1) == 0)
            {
              sub_1AF0FBA0C(&v72);
              v36 = v72;
              v35[(v14 >> 6) + 8] |= 1 << v14;
              *(v35[6] + 8 * v14) = v7;
              *(v35[7] + 8 * v14) = v36;
              ++v35[2];
            }

            v37 = v35[7];
            sub_1AF63515C(v77, &v72);
            v76 = 0;
            v75 = 0uLL;
            v38 = *(v37 + 8 * v14);
            v39 = swift_isUniquelyReferenced_nonNull_native();
            *(v37 + 8 * v14) = v38;
            if ((v39 & 1) == 0)
            {
              v38 = sub_1AF420EA0(0, v38[2] + 1, 1, v38);
              *(v37 + 8 * v14) = v38;
            }

            v41 = v38[2];
            v40 = v38[3];
            if (v41 >= v40 >> 1)
            {
              *(v37 + 8 * v14) = sub_1AF420EA0(v40 > 1, v41 + 1, 1, v38);
            }

            v42 = *(v37 + 8 * v14);
            *(v42 + 16) = v41 + 1;
            v43 = v42 + 72 * v41;
            *(v43 + 32) = v72;
            v44 = v73;
            v45 = v74;
            v46 = v75;
            *(v43 + 96) = v76;
            *(v43 + 64) = v45;
            *(v43 + 80) = v46;
            *(v43 + 48) = v44;
            result = sub_1AF635250(v77);
          }
        }

        else
        {
          v20 = *(v7 + 376);
          swift_retain_n();
          os_unfair_lock_lock(v20);
          os_unfair_lock_lock(*(v7 + 344));
          v21 = *(v7 + 232);
          v22 = *(v7 + 240);
          if (v22 != v21)
          {
            v23 = *(v7 + 192);
            if (v23)
            {
              v24 = *(v7 + 208);
              sub_1AF75D408(*(v7 + 232), *(v7 + 240), v23);
              sub_1AF75D364(v21, v22, v24);
            }

            sub_1AF705690(v21, v22);
          }

          v25 = *(v7 + 24);

          *&v74 = 0;
          v72 = 0u;
          v73 = 0u;
          v78 = 0;
          memset(v77, 0, sizeof(v77));
          v26 = sub_1AF65A4B4(v25, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v72, v77);

          sub_1AF5DD41C(v77);
          sub_1AF5DD41C(&v72);
          if (sub_1AF649CEC())
          {
            sub_1AF649D40(v26);
            v6 = v68;
          }

          else
          {
            v67 = v5;
            v27 = *(v7 + 232);
            v28 = *(v7 + 240);
            v66 = *(v7 + 120);
            v29 = *(v7 + 28);
            v30 = *(v7 + 32);
            v31 = *(v7 + 16);
            v32 = *(v7 + 40);
            v33 = *(v32 + 200);
            v71 = *(*(v31 + 88) + 8 * v26 + 32);

            if ((v33 & 1) != 0 || *(v71 + 200) == 1)
            {
              *(v31 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
              v32 = *(v7 + 40);
            }

            v34 = v2;
            v47 = *(v7 + 256);
            sub_1AF5B4FCC(v32, v27, v28, 0, v7);
            v69 = *(v7 + 256);
            v48 = v69 - v47;
            v70 = v47;
            if (v69 == v47)
            {
              v49 = 0;
            }

            else
            {
              v49 = v47;
            }

            *&v77[0] = v49;
            v50 = *(*(v7 + 40) + 24);
            v51 = *(v50 + 16);
            if (v51)
            {
              v52 = v50 + 32;

              for (i = 0; i != v51; ++i)
              {
                v54 = v52 + 40 * i;
                if ((*(v54 + 32) & 1) == 0)
                {
                  v55 = *(v71 + 24);
                  v56 = *(v55 + 16);
                  if (v56)
                  {
                    v57 = (v55 + 32);
                    while (*v57 != *v54)
                    {
                      v57 += 5;
                      if (!--v56)
                      {
                        goto LABEL_37;
                      }
                    }
                  }

                  else
                  {
LABEL_37:
                    sub_1AF640BC8();
                  }
                }
              }

              v2 = v64;
            }

            else
            {
              v2 = v34;
            }

            if (*(v31 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
            {
              vfx_counters.add(_:_:)(*(v31 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v48);
            }

            if (*(v7 + 184))
            {
              v58 = 0;
            }

            else
            {
              v58 = *(v7 + 168);
            }

            MEMORY[0x1EEE9AC00](v59, v60);
            DWORD2(v73) = -1;
            *&v74 = v70;
            *(&v74 + 1) = v69;
            *&v75 = v70;
            *(&v75 + 1) = v69;
            *&v72 = v70;
            *(&v72 + 1) = v69;
            *&v73 = v58;
            if (v61 >= 1)
            {
              do
              {
                sub_1AF6248A8(v26, v29 | (v30 << 32), v66, v31, &v72, sub_1AF5C5E08);
              }

              while ((*(&v72 + 1) - v72) > 0);
            }

            v62 = *(v7 + 192);
            v4 = v65;
            v5 = v67;
            v6 = v68;
            if (v62)
            {
              v63 = *(v7 + 208);
              sub_1AF75D364(v70, v69, v62);
              sub_1AF75D364(v70, v69, v63);
            }
          }

          os_unfair_lock_unlock(*(v7 + 344));
          os_unfair_lock_unlock(*(v7 + 376));
        }

        v5 += 48;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t sub_1AF8DB780(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v9 = *(v4 + 8);
  result = sub_1AF649C6C(*(v9 + 40), a2, v12);
  if ((v12[0] & 1) == 0)
  {
    v12[0] = a2;
    v12[1] = a3;
    v13 = 0;
    MEMORY[0x1EEE9AC00](result, v11);

    sub_1AF63023C(a1 & 1, v9, a4);

    return sub_1AF635250(v12);
  }

  return result;
}

uint64_t sub_1AF8DB86C(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v21 = a1;
  v6 = a1 >> 8;
  v7 = a1 >> 16;
  v8 = a1 >> 24;
  v9 = HIDWORD(a1);
  v10 = HIDWORD(a2);
  v22 = a2;
  v23 = a3;
  v11 = HIWORD(a3);
  v24 = BYTE2(a3);
  v12 = sub_1AF8FE1C4(&v21);
  if (v12 > 8)
  {
    return 1;
  }

  if (((1 << v12) & 0x63) != 0)
  {
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v23 = v3;
    v24 = v11;
    v14 = sub_1AF445CA8(&v21);
  }

  else if (((1 << v12) & 0x11C) != 0)
  {
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v23 = v3;
    v24 = v11;
    v13 = sub_1AF445CA8(&v21);
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v24 = v11;
    v23 = v3;
    v14 = sub_1AF445CB0(&v21);
    if (v14 <= v13)
    {
      v14 = v13;
    }
  }

  else
  {
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v23 = v3;
    v24 = v11;
    v20 = sub_1AF445CA8(&v21);
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v24 = v11;
    v23 = v3;
    v17 = sub_1AF445CB0(&v21);
    LOBYTE(v21) = v5;
    BYTE1(v21) = v6;
    BYTE2(v21) = v7;
    BYTE3(v21) = v8;
    HIDWORD(v21) = v9;
    v22 = __PAIR64__(v10, v4);
    v24 = v11;
    v23 = v3;
    v18 = sub_1AF478AC0(&v21);
    if (v18 <= v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v18;
    }

    if (v19 <= v20)
    {
      v14 = v20;
    }

    else
    {
      v14 = v19;
    }
  }

  v15 = log2f(fmaxf(v14, 1.0));
  return (floorf(v15) + 1.0);
}

uint64_t sub_1AF8DBA78(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v61 = a6;
  v67 = a5;
  v64 = a2;
  *&v66 = a1;
  v8 = sub_1AFDFC4F8();
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v60 - v14;
  v16 = sub_1AF8DC964(a4[4], a4[5], *(a4 + 24) | (*(a4 + 50) << 16));
  v17 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
  [v17 setCountStyle_];
  v18 = [v17 stringFromByteCount_];
  ObjectType = sub_1AFDFCEF8();
  v20 = v19;

  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v21 = sub_1AFDFC538();
  sub_1AF477C68(v21, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();

  v22 = sub_1AFDFC528();
  v23 = sub_1AFDFDB88();

  if (sub_1AFDFDCE8())
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v63 = v11;
    v26 = v25;
    *&aBlock = v25;
    *v24 = 136315138;
    v27 = sub_1AF740B70(ObjectType, v20, &aBlock);

    *(v24 + 4) = v27;
    v28 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v22, v23, v28, "downloadGPUTextureToCPU", "size: %s", v24, 0xCu);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
    v29 = v26;
    v11 = v63;
    MEMORY[0x1B271DEA0](v29, -1, -1);
    MEMORY[0x1B271DEA0](v24, -1, -1);
  }

  else
  {
  }

  (*(v68 + 16))(v11, v15, v69);
  sub_1AFDFC578();
  swift_allocObject();
  v30 = sub_1AFDFC568();
  ObjectType = swift_getObjectType();
  v31 = sub_1AF473048(0);
  v32 = v31;
  v33 = *a4;
  if (*a4 && a4[2] == v31)
  {
    goto LABEL_12;
  }

  v34 = [a3 label];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1AFDFCEF8();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = sub_1AF6F35A0(v32, 0, v36, v38);
  v41 = v40;
  v43 = v42;

  swift_unknownObjectRelease();
  *a4 = v39;
  a4[1] = v41;
  a4[2] = v43;
  CFXTextureDescriptorFromMTLTexture(a3, v44, v45, v46, &aBlock);
  *(a4 + 2) = aBlock;
  a4[6] = v71;
  v33 = *a4;
  if (*a4)
  {
LABEL_12:
    v63 = v15;
    v64 = v30;
    v47 = a4[1];
    swift_unknownObjectRetain();
    v48 = sub_1AF6F3F0C();
    v49 = sub_1AFDFCEC8();
    [v48 pushDebugGroup_];

    v50 = sub_1AF6F3BD8();
    sub_1AF4674F0(0, 0, 0, &aBlock);
    v66 = aBlock;
    v51 = v71;
    sub_1AF4674F0([a3 width], objc_msgSend(a3, sel_height), objc_msgSend(a3, sel_depth), &aBlock);
    v62 = aBlock;
    v52 = v71;
    v53 = sub_1AF472034();
    v54 = sub_1AF472FC8();
    aBlock = v66;
    v71 = v51;
    v75 = v62;
    v76 = v52;
    [v48 copyFromTexture:a3 sourceSlice:0 sourceLevel:0 sourceOrigin:&aBlock sourceSize:&v75 toBuffer:v33 destinationOffset:v47 destinationBytesPerRow:v53 destinationBytesPerImage:v54];
    v55 = v67;
    if (v67)
    {
      v56 = swift_allocObject();
      v57 = v61;
      *(v56 + 16) = v55;
      *(v56 + 24) = v57;
      v73 = sub_1AF6FC894;
      v74 = v56;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v71 = sub_1AF719CC4;
      v72 = &unk_1F2544A08;
      v58 = _Block_copy(&aBlock);
      sub_1AF0FBD8C(v55);

      [v50 addCompletedHandler_];
      swift_unknownObjectRelease();
      _Block_release(v58);
      sub_1AF0FB8EC(v55);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v15 = v63;
    v30 = v64;
    [v48 popDebugGroup];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1AF8F7290(v30, "downloadGPUTextureToCPU");

  return (*(v68 + 8))(v15, v69);
}

void *sub_1AF8DC0E8(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (!a1)
    {

      return sub_1AF708F90();
    }

    if (a1 == 2)
    {

      return sub_1AF70924C();
    }

LABEL_18:
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF38E30);
    type metadata accessor for MTLTextureType(0);
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
    return result;
  }

  if (a1 == 5)
  {

    return sub_1AF7097AC();
  }

  else
  {
    if (a1 != 7)
    {
      goto LABEL_18;
    }

    return sub_1AF7094F0();
  }
}

char *sub_1AF8DC244()
{
  sub_1AF0D4E74();
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1AFDFC298();
  MEMORY[0x1EEE9AC00](v36, v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  v6 = *v0;
  v39 = 0x80000001AFF39BE0;
  v34 = (v7 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 0x20u;
  v33 = xmmword_1AFE431C0;
  do
  {
    v11 = *(&unk_1F24FEB28 + v9);
    if ((v11 & ~v6) != 0)
    {
      goto LABEL_3;
    }

    if (v11 <= 15)
    {
      if (v11 > 3)
      {
        if (v11 == 4)
        {
          v12 = &type metadata for TextureRequireNonSRGB;
          v13 = &off_1F25461D8;
        }

        else
        {
          if (v11 != 8)
          {
            goto LABEL_26;
          }

          v12 = &type metadata for TextureRequireUnpremultiply;
          v13 = &off_1F25461F8;
        }
      }

      else if (v11 == 1)
      {
        v12 = &type metadata for TextureRequireCPURepresentation;
        v13 = &off_1F2544440;
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_26;
        }

        v12 = &type metadata for TextureRequireGPURepresentation;
        v13 = &off_1F25442D0;
      }
    }

    else if (v11 <= 63)
    {
      if (v11 == 16)
      {
        v12 = &type metadata for TextureRequireCubemap;
        v13 = &off_1F2546218;
      }

      else
      {
        if (v11 != 32)
        {
LABEL_26:
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v14 = sub_1AFDFDA08();
          if (qword_1ED731058 != -1)
          {
            swift_once();
          }

          if (qword_1ED730E98 != -1)
          {
            swift_once();
          }

          sub_1AF8FE14C(0, &qword_1ED730B50, &qword_1ED730B40, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v15 = swift_allocObject();
          *(v15 + 16) = v33;
          *(v15 + 56) = MEMORY[0x1E69E6158];
          *(v15 + 64) = sub_1AF0D544C();
          *(v15 + 32) = 0xD000000000000016;
          *(v15 + 40) = v39;
          sub_1AFDFC4C8();

          v16 = v35;
          sub_1AFDFC288();
          v17 = v37;
          v18 = v38[12];
          v19 = v38[16];
          v20 = &v37[v38[20]];
          (*v34)(v37, v16, v36);
          *(v17 + v18) = v14;
          *(v17 + v19) = 0;
          *v20 = 0xD000000000000016;
          *(v20 + 1) = v39;
          sub_1AFDFC608();

          sub_1AF904B7C(v17, sub_1AF0D4E74);
          v12 = &type metadata for NullEntityComponent;
          v13 = &off_1F2532748;
          goto LABEL_33;
        }

        v12 = &type metadata for TextureRequireMipmap;
        v13 = &off_1F2546458;
      }
    }

    else
    {
      switch(v11)
      {
        case 64:
          v12 = &type metadata for TextureRequireMipmapGeneration;
          v13 = &off_1F2546238;
          break;
        case 128:
          v12 = &type metadata for TextureRequirePremultiplyWithLinearAlpha;
          v13 = &off_1F2546258;
          break;
        case 256:
          v12 = &type metadata for TextureRequireIOSurface;
          v13 = &off_1F2546278;
          break;
        default:
          goto LABEL_26;
      }
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
    }

    v22 = *(v8 + 2);
    v21 = *(v8 + 3);
    if (v22 >= v21 >> 1)
    {
      v8 = sub_1AF422C28(v21 > 1, v22 + 1, 1, v8);
    }

    *(v8 + 2) = v22 + 1;
    v10 = &v8[16 * v22];
    *(v10 + 4) = v12;
    *(v10 + 5) = v13;
LABEL_3:
    v9 += 8;
  }

  while (v9 != 104);
  v23 = v32;
  if ((v32[3] & 0x80000000) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
    }

    v25 = *(v8 + 2);
    v24 = *(v8 + 3);
    if (v25 >= v24 >> 1)
    {
      v8 = sub_1AF422C28(v24 > 1, v25 + 1, 1, v8);
    }

    *(v8 + 2) = v25 + 1;
    v26 = &v8[16 * v25];
    *(v26 + 4) = &type metadata for TextureRequireSizeLimit;
    *(v26 + 5) = &off_1F25464F8;
  }

  if (*(v23 + 57) << 8 != 768)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AF422C28(0, *(v8 + 2) + 1, 1, v8);
    }

    v28 = *(v8 + 2);
    v27 = *(v8 + 3);
    if (v28 >= v27 >> 1)
    {
      v8 = sub_1AF422C28(v27 > 1, v28 + 1, 1, v8);
    }

    *(v8 + 2) = v28 + 1;
    v29 = &v8[16 * v28];
    *(v29 + 4) = &type metadata for TextureRequireAnimationRepresentation;
    *(v29 + 5) = &off_1F25444F0;
  }

  return v8;
}

uint64_t sub_1AF8DC840()
{
  v1 = *(v0 + 48);

  return v1;
}

unint64_t sub_1AF8DC89C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_1AFDFE218();

    v6 = 0xD000000000000016;
  }

  else
  {
    sub_1AFDFE218();

    v6 = 0xD000000000000017;
  }

  MEMORY[0x1B2718AE0](a1, a2);
  return v6;
}

uint64_t sub_1AF8DC964(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v23 = a1;
  v19 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = a1;
  v6 = HIDWORD(a1);
  v24 = a2;
  v7 = a2;
  v8 = HIDWORD(a2);
  v25 = a3;
  v9 = a3;
  v10 = HIWORD(a3);
  v26 = BYTE2(a3);
  v11 = sub_1AF8FE1B8(&v23);
  v12 = 0;
  if (v11)
  {
    v13 = 0;
    v18 = v11;
    do
    {
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v25 = v9;
      v26 = v10;
      v22 = sub_1AF467494(&v23);
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v26 = v10;
      v25 = v9;
      v21 = sub_1AF445CA8(&v23);
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v26 = v10;
      v25 = v9;
      v20 = sub_1AF445CB0(&v23);
      LOBYTE(v23) = v5;
      BYTE1(v23) = v19;
      BYTE2(v23) = v3;
      BYTE3(v23) = v4;
      HIDWORD(v23) = v6;
      v24 = __PAIR64__(v8, v7);
      v26 = v10;
      v25 = v9;
      v14 = sub_1AF478AC0(&v23);
      v12 += sub_1AF472C1C(v21, v20, v14, v13++, v22);
    }

    while (v18 != v13);
  }

  LOBYTE(v23) = v5;
  BYTE1(v23) = v19;
  BYTE2(v23) = v3;
  BYTE3(v23) = v4;
  HIDWORD(v23) = v6;
  v24 = __PAIR64__(v8, v7);
  v25 = v9;
  v26 = v10;
  v15 = sub_1AF8FE1C4(&v23);
  if (v15 <= 4)
  {
    if (v15 <= 1)
    {
      if (v15 != 1)
      {
LABEL_15:
        v16 = 1;
        return v16 * v12;
      }
    }

    else if (v15 != 3)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v15 > 6)
  {
    if (v15 != 8)
    {
      goto LABEL_15;
    }

LABEL_12:
    LOBYTE(v23) = v5;
    BYTE1(v23) = v19;
    BYTE2(v23) = v3;
    BYTE3(v23) = v4;
    HIDWORD(v23) = v6;
    v24 = __PAIR64__(v8, v7);
    v25 = v9;
    v26 = v10;
    v16 = sub_1AF8FE1D0(&v23);
    return v16 * v12;
  }

  if (v15 == 5)
  {
    v16 = 6;
  }

  else
  {
    LOBYTE(v23) = v5;
    BYTE1(v23) = v19;
    BYTE2(v23) = v3;
    BYTE3(v23) = v4;
    HIDWORD(v23) = v6;
    v24 = __PAIR64__(v8, v7);
    v25 = v9;
    v26 = v10;
    v16 = 6 * sub_1AF8FE1D0(&v23);
  }

  return v16 * v12;
}

unint64_t sub_1AF8DCC60(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000019;
    v7 = 0x656C7A7A697773;
    if (a1 != 10)
    {
      v7 = 0x4D656761726F7473;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x6F43656C706D6173;
    v9 = 0x6E654C7961727261;
    if (a1 != 7)
    {
      v9 = 0x6567617375;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5465727574786574;
    v2 = 0x746867696568;
    v3 = 0x6874706564;
    if (a1 != 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x726F466C65786970;
    if (a1 != 1)
    {
      v4 = 0x6874646977;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1AF8DCE00(char a1)
{
  result = 0x5465727574786574;
  switch(a1)
  {
    case 1:
      result = 0x726F466C65786970;
      break;
    case 2:
      result = 0x6874646977;
      break;
    case 3:
      result = 0x746867696568;
      break;
    case 4:
      result = 0x6874706564;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6F43656C706D6173;
      break;
    case 7:
      result = 0x6E654C7961727261;
      break;
    case 8:
      result = 0x656372756F736572;
      break;
    case 9:
      result = 0x6567617375;
      break;
    case 10:
      result = 0xD000000000000019;
      break;
    case 11:
      result = 0x656C7A7A697773;
      break;
    case 12:
      result = 0x4D656761726F7473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AF8DCF90(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1AF8DCC60(*a1);
  v5 = v4;
  if (v3 == sub_1AF8DCC60(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8DD018()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE847B8[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD0A0()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](qword_1AFE847B8[v1]);
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD0EC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FDF3C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF8DD138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8FD9A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8DD178@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF8FDF3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AF8DD1A0(uint64_t a1)
{
  v2 = sub_1AF905E98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DD1DC(uint64_t a1)
{
  v2 = sub_1AF905E98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DD218(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1AF8DCE00(*a1);
  v5 = v4;
  if (v3 == sub_1AF8DCE00(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AFDFEE28();
  }

  return v8 & 1;
}

uint64_t sub_1AF8DD2A0()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF8DCE00(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD304()
{
  sub_1AF8DCE00(*v0);
  sub_1AFDFD038();
}

uint64_t sub_1AF8DD358()
{
  v1 = *v0;
  sub_1AFDFF288();
  sub_1AF8DCE00(v1);
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DD3B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FDD7C();
  *a1 = result;
  return result;
}

unint64_t sub_1AF8DD3E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1AF8DCE00(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1AF8DD430@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FDD7C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8DD458(uint64_t a1)
{
  v2 = sub_1AF905EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DD494(uint64_t a1)
{
  v2 = sub_1AF905EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DD4D0(void *a1, unint64_t a2, unint64_t a3, int a4)
{
  v34 = a4;
  v4 = a3;
  v7 = a2 >> 8;
  v8 = a2 >> 16;
  v28 = a2 >> 24;
  v25 = HIDWORD(a2);
  v24 = HIDWORD(a3);
  sub_1AF9061B8(0, &unk_1EB640380, sub_1AF905E98, &type metadata for TextureDescriptorCoder.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v27 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v20 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AF905E98();
  v14 = v10;
  v15 = v34;
  sub_1AFDFF3F8();
  v22 = v7;
  v23 = a2;
  LOBYTE(v29) = a2;
  BYTE1(v29) = v7;
  v21 = v8;
  BYTE2(v29) = v8;
  v16 = v24;
  v17 = v25;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v25;
  v30 = v4;
  v31 = v24;
  v33 = BYTE2(v15);
  v32 = v15;
  v29 = sub_1AF8FE1C4(&v29);
  v35 = 0;
  type metadata accessor for MTLTextureType(0);
  sub_1AF9027C4(&unk_1EB63FE60, type metadata accessor for MTLTextureType);
  v18 = v26;
  sub_1AFDFE918();
  if (v18)
  {
    return (*(v27 + 8))(v13, v14);
  }

  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  v29 = sub_1AF467494(&v29);
  v35 = 1;
  type metadata accessor for MTLPixelFormat(0);
  sub_1AF9027C4(&qword_1EB640390, type metadata accessor for MTLPixelFormat);
  sub_1AFDFE918();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF445CA8(&v29);
  LOBYTE(v29) = 2;
  v26 = v14;
  sub_1AFDFE8F8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF445CB0(&v29);
  LOBYTE(v29) = 3;
  sub_1AFDFE8F8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF478AC0(&v29);
  LOBYTE(v29) = 4;
  sub_1AFDFE8F8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF8FE1B8(&v29);
  LOBYTE(v29) = 5;
  sub_1AFDFE8F8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF448440(&v29);
  LOBYTE(v29) = 6;
  sub_1AFDFE8F8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF8FE1D0(&v29);
  LOBYTE(v29) = 7;
  sub_1AFDFE8F8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  v29 = sub_1AF4676C8(&v29);
  v35 = 8;
  type metadata accessor for MTLTextureUsage(0);
  sub_1AF9027C4(&qword_1EB640398, type metadata accessor for MTLTextureUsage);
  sub_1AFDFE918();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v15;
  sub_1AF905F60(&v29);
  LOBYTE(v29) = 9;
  sub_1AFDFE8C8();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  v35 = 10;
  type metadata accessor for MTLTextureSwizzleChannels(0);
  sub_1AF9027C4(&qword_1EB6403A0, type metadata accessor for MTLTextureSwizzleChannels);
  sub_1AFDFE918();
  LOBYTE(v29) = v23;
  BYTE1(v29) = v22;
  BYTE2(v29) = v21;
  BYTE3(v29) = v28;
  HIDWORD(v29) = v17;
  v30 = v4;
  v31 = v16;
  v33 = BYTE2(v15);
  v32 = v34;
  sub_1AF8FE1D8(&v29);
  LOBYTE(v29) = 11;
  sub_1AFDFE968();
  return (*(v27 + 8))(v13, v26);
}

uint64_t sub_1AF8DDBF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF900B10(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 18) = BYTE2(v6);
  }

  return result;
}

uint64_t sub_1AF8DDC7C(__int16 a1)
{
  if (a1)
  {
    MEMORY[0x1B2718AE0](0x61726F7453757063, 0xEB000000002C6567);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1B2718AE0](0x61726F7453757067, 0xEB000000002C6567);
  if ((a1 & 4) != 0)
  {
LABEL_4:
    MEMORY[0x1B2718AE0](0x2C424752536E6F6ELL, 0xE800000000000000);
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3A310);
  }

  if ((a1 & 0x10) != 0)
  {
    MEMORY[0x1B2718AE0](0x2C70616D65627563, 0xE800000000000000);
  }

  if ((a1 & 0x20) != 0)
  {
    MEMORY[0x1B2718AE0](0x657461636F6C6C61, 0xEF2C70616D70694DLL);
    if ((a1 & 0x40) == 0)
    {
LABEL_11:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      MEMORY[0x1B2718AE0](0xD00000000000001BLL, 0x80000001AFF3A2F0);
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  MEMORY[0x1B2718AE0](0x65746172656E6567, 0xEF2C70616D70694DLL);
  if ((a1 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  if ((a1 & 0x100) != 0)
  {
LABEL_13:
    MEMORY[0x1B2718AE0](0x6361667275536F69, 0xEA00000000002C65);
  }

LABEL_14:
  v2 = sub_1AF8FD3D4();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x1B27189E0](v2, v4, v6, v8);

  return v9;
}

uint64_t sub_1AF8DDF28()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1AFDFF288();
  if (v3 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
    sub_1AFDFF2A8();
  }

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DDFC8()
{
  v2 = *v0;
  v1 = v0[1];
  if (v0[2] < 0)
  {
    MEMORY[0x1B271ACB0](1);
    MEMORY[0x1B271ACB0](v2);
    return MEMORY[0x1B271ACB0](v1);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
    return sub_1AFDFF2A8();
  }
}

uint64_t sub_1AF8DE03C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1AFDFF288();
  if (v3 < 0)
  {
    MEMORY[0x1B271ACB0](1);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
  }

  else
  {
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v2);
    MEMORY[0x1B271ACB0](v1);
    sub_1AFDFF2A8();
  }

  return sub_1AFDFF2F8();
}

void sub_1AF8DE0F4()
{
  unk_1EB6C3288 = 0;
  xmmword_1EB6C3278 = 0x42uLL;
  byte_1EB6C3290 = -2;
  unk_1EB6C32A8 = 0;
  xmmword_1EB6C3298 = 0uLL;
  word_1EB6C32B0 = 768;
}

void sub_1AF8DE124()
{
  unk_1ED73B4E8 = 0;
  xmmword_1ED73B4D8 = 2uLL;
  byte_1ED73B4F0 = -2;
  unk_1ED73B508 = 0;
  xmmword_1ED73B4F8 = 0uLL;
  word_1ED73B510 = 768;
}

void sub_1AF8DE154()
{
  unk_1EB6C32C8 = 0;
  xmmword_1EB6C32B8 = 0x46uLL;
  byte_1EB6C32D0 = -2;
  unk_1EB6C32E8 = 0;
  xmmword_1EB6C32D8 = 0uLL;
  word_1EB6C32F0 = 768;
}

uint64_t sub_1AF8DE1B4(uint64_t a1)
{
  v2 = sub_1AF905D9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DE1F0(uint64_t a1)
{
  v2 = sub_1AF905D9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DE22C(void *a1)
{
  v2 = v1;
  sub_1AF9061B8(0, &qword_1EB640368, sub_1AF905D9C, &type metadata for TextureOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF905D9C();
  sub_1AFDFF3F8();
  v11[1] = *v2;
  sub_1AF905E44();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF8DE3A8()
{
  MEMORY[0x1B271ACB0](*v0);
  v1 = *(v0 + 24);
  if (v1 < 0xFE)
  {
    v3 = *(v0 + 8);
    v2 = *(v0 + 16);
    sub_1AFDFF2A8();
    if ((v1 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v2);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v3);
      MEMORY[0x1B271ACB0](v2);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  v4 = *(v0 + 56);
  if ((v4 & 0xFF00) != 0x300)
  {
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = *(v0 + 32);
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v7);
    MEMORY[0x1B271ACB0](v6);
    sub_1AFDFF2A8();
    if ((v4 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v5);
    }
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF8DE4AC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  if (v4 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v1);
      MEMORY[0x1B271ACB0](v3);
      goto LABEL_5;
    }

    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](v1);
    MEMORY[0x1B271ACB0](v3);
  }

  sub_1AFDFF2A8();
LABEL_5:
  v5 = *(v0 + 28);
  if ((v5 & 0xFF00) != 0x300)
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = v0[4];
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v8);
    MEMORY[0x1B271ACB0](v7);
    sub_1AFDFF2A8();
    if ((v5 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v6);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DE608()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 28);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  if (v4 < 0xFE)
  {
    sub_1AFDFF2A8();
    if ((v4 & 0x80) != 0)
    {
      MEMORY[0x1B271ACB0](1);
      MEMORY[0x1B271ACB0](v1);
      MEMORY[0x1B271ACB0](v3);
    }

    else
    {
      MEMORY[0x1B271ACB0](0);
      MEMORY[0x1B271ACB0](v1);
      MEMORY[0x1B271ACB0](v3);
      sub_1AFDFF2A8();
    }
  }

  else
  {
    sub_1AFDFF2A8();
  }

  if ((v8 & 0xFF00) != 0x300)
  {
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](v6);
    MEMORY[0x1B271ACB0](v5);
    sub_1AFDFF2A8();
    if ((v8 & 1) == 0)
    {
      MEMORY[0x1B271ACB0](v7);
    }
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

double sub_1AF8DE768@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF8FE244(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_1AF8DE7CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 10) = *(a1 + 42);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  return sub_1AF8FD008(v5, v7) & 1;
}

uint64_t sub_1AF8DE828@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireCPURepresentation, &v28);
  v4 = v28;
  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireGPURepresentation, &v28);
  if (v28)
  {
    v4 |= 2uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireNonSRGB, &v28);
  if (v28)
  {
    v4 |= 4uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireUnpremultiply, &v28);
  if (v28)
  {
    v4 |= 8uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireCubemap, &v28);
  if (v28)
  {
    v4 |= 0x10uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireMipmap, &v28);
  if (v28)
  {
    v4 |= 0x20uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireMipmapGeneration, &v28);
  if (v28)
  {
    v4 |= 0x40uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequirePremultiplyWithLinearAlpha, &v28);
  if (v28)
  {
    v4 |= 0x80uLL;
  }

  sub_1AF649C6C(*(v3 + 40), &type metadata for TextureRequireIOSurface, &v28);
  if (v28 == 1)
  {
    v4 |= 0x100uLL;
    v5 = v4 & 0x106;
    if (v5 != v4)
    {
      v6 = v1;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1AFDFE218();

      v28 = 0x20666F20656D6F53;
      v29 = 0xE800000000000000;
      v7 = sub_1AF8DDC7C(v4);
      MEMORY[0x1B2718AE0](v7);

      MEMORY[0x1B2718AE0](0xD000000000000020, 0x80000001AFF3A2C0);
      v9 = v28;
      v8 = v29;
      v10 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v27 = v10;
        swift_once();
        v10 = v27;
      }

      v28 = 0;
      sub_1AF0D4F18(v10, &v28, v9, v8);

      v4 = v5;
      v1 = v6;
    }
  }

  v11 = *(v1 + 32);

  v12 = sub_1AF64B03C(&type metadata for TextureRequireSizeLimit);
  v14 = v13;

  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = -2;
  }

  else
  {
    v18 = v12 + 24 * v11;
    v15 = *v18;
    v16 = *(v18 + 8);
    v17 = *(v18 + 16);
  }

  v19 = sub_1AF64B03C(&type metadata for TextureRequireAnimationRepresentation);
  v21 = v20;

  if (v21)
  {
    v23 = 0;
    v24 = 0uLL;
    v25 = 768;
  }

  else
  {
    v26 = v19 + 32 * v11;
    v24 = *v26;
    v23 = *(v26 + 16);
    v25 = *(v26 + 24) | (*(v26 + 25) << 8);
  }

  *a1 = v4;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v24;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  return result;
}

uint64_t sub_1AF8DEBE8(uint64_t a1)
{
  v2 = sub_1AF905F6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DEC24(uint64_t a1)
{
  v2 = sub_1AF905F6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DECB0(void *a1)
{
  v2 = v1;
  sub_1AF9061B8(0, &qword_1EB640278, sub_1AF9046C8, &type metadata for TextureLoadingOptions.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v12 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9046C8();
  sub_1AFDFF3F8();
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  v13[0] = v2[2];
  *(v13 + 10) = *(v2 + 42);
  sub_1AF904770();
  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AF8DEE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t sub_1AF8DEEE0(uint64_t a1)
{
  v2 = sub_1AF9046C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DEF1C(uint64_t a1)
{
  v2 = sub_1AF9046C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF8DEF58@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1AF900920(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 10);
    *(a2 + 42) = *(v7 + 10);
  }

  return result;
}

void sub_1AF8DEFBC(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 98;
  *(a1 + 24) = -2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 768;
}

uint64_t sub_1AF8DEFE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726F706D65547369;
  }

  else
  {
    v3 = 0x6B6361626C6C6166;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x726F706D65547369;
  }

  else
  {
    v5 = 0x6B6361626C6C6166;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
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

uint64_t sub_1AF8DF090()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DF118()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8DF18C()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF8DF21C(uint64_t *a1@<X8>)
{
  v2 = 0x6B6361626C6C6166;
  if (*v1)
  {
    v2 = 0x726F706D65547369;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF8DF260()
{
  if (*v0)
  {
    return 0x726F706D65547369;
  }

  else
  {
    return 0x6B6361626C6C6166;
  }
}

uint64_t sub_1AF8DF2AC(uint64_t a1)
{
  v2 = sub_1AF906110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DF2E8(uint64_t a1)
{
  v2 = sub_1AF906110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DF324(void *a1, char a2)
{
  sub_1AF9061B8(0, &qword_1EB640410, sub_1AF906110, &type metadata for RenderGraphTextureTarget.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF906110();
  sub_1AFDFF3F8();
  v15 = a2;
  v14 = 0;
  sub_1AF8FF0F0();
  sub_1AFDFE918();
  if (!v2)
  {
    v13 = 1;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF8DF4C8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF90171C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1AF8DF5E8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF8DF640(uint64_t a1)
{
  v2 = sub_1AF9060BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DF67C(uint64_t a1)
{
  v2 = sub_1AF9060BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8DF6B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_1AF9061B8(0, &qword_1EB6403F0, sub_1AF9060BC, &type metadata for TextureRequireMipmap.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9060BC();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v10 = v16;
  v11 = sub_1AFDFE6D8();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v10 = v11;
  *(v10 + 8) = v13 & 1;
  return result;
}

uint64_t sub_1AF8DF870(void *a1, char a2)
{
  sub_1AF9061B8(0, &unk_1EB640430, sub_1AF906164, &type metadata for TextureRequireMask.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12[-v9];
  sub_1AF441150(a1, a1[3]);
  sub_1AF906164();
  sub_1AFDFF3F8();
  v12[15] = a2;
  v12[14] = 0;
  sub_1AF51CA58();
  sub_1AFDFE918();
  if (!v2)
  {
    v12[13] = 1;
    sub_1AFDFE8E8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF8DFA20(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6F687365726874;
  }

  else
  {
    v3 = 0x6C656E6E616863;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x6C6F687365726874;
  }

  else
  {
    v5 = 0x6C656E6E616863;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
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

uint64_t sub_1AF8DFACC()
{
  if (*v0)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x6C656E6E616863;
  }
}

uint64_t sub_1AF8DFB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C656E6E616863 && a2 == 0xE700000000000000;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
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

uint64_t sub_1AF8DFBF0(uint64_t a1)
{
  v2 = sub_1AF906164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8DFC2C(uint64_t a1)
{
  v2 = sub_1AF906164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF8DFC68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1AF8FF544(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

double sub_1AF8DFE48@<D0>(_DWORD *a1@<X8>)
{
  *&result = 16842752;
  *a1 = 16842752;
  return result;
}

uint64_t sub_1AF8DFE64()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8DFF4C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E0020()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E0104@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FD90C();
  *a1 = result;
  return result;
}

void sub_1AF8E0134(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701080941;
  v5 = 0x65646F4D757067;
  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6B6361626C6C6166;
  if (v2 != 3)
  {
    v8 = 0x6F7268636E797361;
    v7 = 0xEC00000073756F6ELL;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x65646F4D757063;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1AF8E01D8()
{
  v1 = *v0;
  v2 = 1701080941;
  v3 = 0x65646F4D757067;
  v4 = 0x6B6361626C6C6166;
  if (v1 != 3)
  {
    v4 = 0x6F7268636E797361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65646F4D757063;
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

uint64_t sub_1AF8E0278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FD90C();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8E02A0(uint64_t a1)
{
  v2 = sub_1AF8FEFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E02DC(uint64_t a1)
{
  v2 = sub_1AF8FEFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E0318(void *a1, int a2)
{
  sub_1AF9061B8(0, &qword_1EB640130, sub_1AF8FEFA0, &type metadata for TextureLoadPolicy.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FEFA0();
  sub_1AFDFF3F8();
  v19 = a2;
  v18 = 1;
  sub_1AF8FF09C();
  sub_1AFDFE918();
  if (!v2)
  {
    v17 = BYTE1(a2);
    v16 = 2;
    sub_1AFDFE918();
    v15 = BYTE2(a2);
    v14 = 3;
    sub_1AF8FF0F0();
    sub_1AFDFE918();
    v13 = 4;
    sub_1AFDFE8C8();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF8E053C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF8FECA8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result) & 1;
  }

  return result;
}

uint64_t sub_1AF8E0580(void *a1)
{
  if (v1[3])
  {
    v2 = 0x1000000;
  }

  else
  {
    v2 = 0;
  }

  return sub_1AF8E0318(a1, v2 | (v1[2] << 16) | (v1[1] << 8) | *v1);
}

uint64_t sub_1AF8E05C0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = a4;
  v13[1] = a3;
  sub_1AF9061B8(0, &qword_1EB6403E8, sub_1AF906068, &type metadata for TextureRequireSizeLimit.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF906068();
  sub_1AFDFF3F8();
  v17 = 0;
  sub_1AFDFE8F8();
  if (!v4)
  {
    v16 = 1;
    sub_1AFDFE8F8();
    v15 = 2;
    sub_1AFDFE8C8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF8E077C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x686769654878616DLL;
  v4 = 0xE900000000000074;
  if (v2 != 1)
  {
    v3 = 0x657073417065656BLL;
    v4 = 0xEF6F697461527463;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x687464695778616DLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x686769654878616DLL;
  v8 = 0xE900000000000074;
  if (*a2 != 1)
  {
    v7 = 0x657073417065656BLL;
    v8 = 0xEF6F697461527463;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x687464695778616DLL;
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
    v11 = sub_1AFDFEE28();
  }

  return v11 & 1;
}

uint64_t sub_1AF8E08A0()
{
  v1 = 0x686769654878616DLL;
  if (*v0 != 1)
  {
    v1 = 0x657073417065656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687464695778616DLL;
  }
}

uint64_t sub_1AF8E090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF8FDDC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF8E0934(uint64_t a1)
{
  v2 = sub_1AF906068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E0970(uint64_t a1)
{
  v2 = sub_1AF906068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E09AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF901518(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

int64x2_t sub_1AF8E0A00@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(0x400uLL);
  *a1 = result;
  a1[1].i8[0] = 1;
  return result;
}

uint64_t sub_1AF8E0A18(uint64_t a1)
{
  v2 = sub_1AF905FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E0A54(uint64_t a1)
{
  v2 = sub_1AF905FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E0AE0(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(void))
{
  sub_1AF9061B8(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v16 - v13;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1AF8E0C1C(uint64_t a1)
{
  v2 = sub_1AF906014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E0C58(uint64_t a1)
{
  v2 = sub_1AF906014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E0DA0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E0E9C()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E0F84()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E107C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FDEF0();
  *a1 = result;
  return result;
}

void sub_1AF8E10AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x756F43656D617266;
  v5 = 0xEE006E6D756C6F43;
  v6 = 0x726550656D617266;
  v7 = 0xE400000000000000;
  v8 = 1684957547;
  if (v2 != 3)
  {
    v8 = 0x7574786554657375;
    v7 = 0xEC00000044336572;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726550656D617266;
    v3 = 0xEB00000000776F52;
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

uint64_t sub_1AF8E1164()
{
  v1 = *v0;
  v2 = 0x756F43656D617266;
  v3 = 0x726550656D617266;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x7574786554657375;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726550656D617266;
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

uint64_t sub_1AF8E1218@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FDEF0();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8E1240(uint64_t a1)
{
  v2 = sub_1AF9043DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E127C(uint64_t a1)
{
  v2 = sub_1AF9043DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E12B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v16[2] = a2;
  v16[1] = a3;
  sub_1AF9061B8(0, &qword_1EB6401F8, sub_1AF9043DC, &type metadata for TextureRequireAnimationRepresentation.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v16 - v12;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9043DC();
  sub_1AFDFF3F8();
  v16[4] = a4;
  v17 = a5 & 1;
  v22 = 0;
  sub_1AF90540C(0, &unk_1ED72F970, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  sub_1AF904484(&qword_1EB640200);
  v14 = v16[3];
  sub_1AFDFE918();
  if (!v14)
  {
    v21 = 1;
    sub_1AFDFE8F8();
    v20 = 2;
    sub_1AFDFE8F8();
    v19 = HIBYTE(a5);
    v18 = 3;
    sub_1AF904508();
    sub_1AFDFE918();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1AF8E1520()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2A8();
  if (v4 != 1)
  {
    MEMORY[0x1B271ACB0](v3);
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E15C8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  MEMORY[0x1B271ACB0](*v0);
  MEMORY[0x1B271ACB0](v1);
  sub_1AFDFF2A8();
  if (v3 != 1)
  {
    MEMORY[0x1B271ACB0](v2);
  }

  return sub_1AFDFF2A8();
}

uint64_t sub_1AF8E1644()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2A8();
  if (v4 != 1)
  {
    MEMORY[0x1B271ACB0](v3);
  }

  sub_1AFDFF2A8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E16E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF90190C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
    *(a2 + 25) = HIBYTE(v7);
  }

  return result;
}

int64x2_t sub_1AF8E1798@<Q0>(int64x2_t *a1@<X8>)
{
  result = vdupq_n_s64(8uLL);
  *a1 = result;
  a1[1].i64[0] = 0;
  a1[1].i16[4] = 1;
  return result;
}

uint64_t sub_1AF8E187C()
{
  result = sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF8E190C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AFDFBFC8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = a1;
  v11[1] = a2;
  (*(v5 + 104))(v9, *MEMORY[0x1E6968F68], v4, v7);
  sub_1AF4486E4();
  sub_1AFDFC118();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1AF8E1B10()
{
  result = sub_1AFDFC128();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AF8E1BA8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL;
  v4 = sub_1AFDFC128();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1AF8E1C20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v45 - v8;
  v10 = sub_1AFDFC128();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v45 - v17;
  v54 = a1;
  v55 = a2;
  v52 = 47;
  v53 = 0xE100000000000000;
  sub_1AF4486E4();
  if ((sub_1AFDFDF18() & 1) == 0)
  {
LABEL_4:

    v2[2] = a1;
    v2[3] = a2;
    v19 = v2[4];
    if (v19)
    {
      type metadata accessor for AbsolutePathStorage(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v49 = *(v20 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver);
        v21 = v49;

        *(v3 + 2) = v49;
      }
    }

    goto LABEL_12;
  }

  sub_1AFDFC0F8();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1AF456B8C(v9);
    goto LABEL_4;
  }

  (*(v11 + 32))(v18, v9, v10);
  v22 = sub_1AFDFC028();
  v24 = v23;

  v3[2] = v22;
  v3[3] = v24;
  v25 = v3[4];
  v48 = v3[5];
  *&v49 = v25;
  if (v25 && (v26 = type metadata accessor for AbsolutePathStorage(0), (v27 = swift_dynamicCastClass()) != 0))
  {
    v28 = v27;
    v48 = *(v11 + 16);
    v48(v15, v18, v10);
    v29 = *(v28 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver + 8);
    v46 = *(v28 + OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver);
    v47 = v29;
    v30 = objc_allocWithZone(v26);
    v48(&v30[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v15, v10);
    v31 = &v30[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver];
    v32 = v46;
    v33 = v47;
    *v31 = v46;
    *(v31 + 1) = v33;
    v50.receiver = v30;
    v50.super_class = v26;
    v34 = v32;
    v35 = objc_msgSendSuper2(&v50, sel_init);
    v36 = *(v11 + 8);
    v36(v15, v10);
    v36(v18, v10);
  }

  else
  {
    v47 = *(v11 + 16);
    v47(v15, v18, v10);
    v37 = type metadata accessor for AbsolutePathStorage(0);
    v38 = objc_allocWithZone(v37);
    v47(&v38[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_absoluteURL], v15, v10);
    v39 = &v38[OBJC_IVAR____TtC3VFX19AbsolutePathStorage_pathResolver];
    v40 = v48;
    v41 = v49;
    *v39 = v49;
    *(v39 + 1) = v40;
    v51.receiver = v38;
    v51.super_class = v37;
    v42 = v41;
    v35 = objc_msgSendSuper2(&v51, sel_init);
    v43 = *(v11 + 8);
    v43(v15, v10);
    v43(v18, v10);
  }

  v3[4] = v35;
  v3[5] = &off_1F2544718;
LABEL_12:

  *v3 = a1;
  v3[1] = a2;
  return result;
}

uint64_t sub_1AF8E2068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF398();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  sub_1AF441150(v9, v9[3]);
  v5 = sub_1AFDFEE38();
  v7 = v6;

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v9);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *a2 = v5;
  a2[1] = v7;
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = 0;
  a2[5] = 0;
  return result;
}

uint64_t sub_1AF8E2144(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AFDFEEE8();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

double sub_1AF8E2224@<D0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  *&v7 = 0;
  *(&v7 + 1) = 0xE000000000000000;
  a2();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  if (v3)
  {
  }

  else
  {
    result = *&v7;
    *a3 = v7;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0xE000000000000000;
    *(a3 + 32) = 0uLL;
  }

  return result;
}

uint64_t sub_1AF8E22BC(void *a1)
{
  sub_1AF441150(a1, a1[3]);
  sub_1AFDFF3D8();
  sub_1AF448018(v2, v3);
  sub_1AF5DE27C();
  sub_1AFDFEF28();
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v2);
}

uint64_t sub_1AF8E23EC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AFDFE638();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AF8E2444(uint64_t a1)
{
  v2 = sub_1AF9045B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E2480(uint64_t a1)
{
  v2 = sub_1AF9045B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E24BC(void *a1, uint64_t a2)
{
  sub_1AF9061B8(0, &unk_1EB640260, sub_1AF9045B0, &type metadata for TextureArrayFileAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v11 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9045B0();
  sub_1AFDFF3F8();
  v11[1] = sub_1AF8D9EB0(a2);
  sub_1AF0D0F04(0, &qword_1EB63A870, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  sub_1AF904604(&qword_1EB63EFB0, &qword_1EB640270);
  sub_1AFDFE918();

  return (*(v6 + 8))(v9, v5);
}

void *sub_1AF8E26B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF9006C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1AF8E2728(void *a1, uint64_t a2, unint64_t a3)
{
  sub_1AF9061B8(0, &qword_1EB640228, sub_1AF90455C, &type metadata for TextureFileData.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - v10;
  sub_1AF441150(a1, a1[3]);
  sub_1AF90455C();
  sub_1AFDFF3F8();
  v13 = a2;
  v14 = a3;
  sub_1AF587E54(a2, a3);
  sub_1AF8711B4();
  sub_1AFDFE8A8();
  sub_1AF587E7C(v13, v14);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1AF8E28BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1AF8E2944(uint64_t a1)
{
  v2 = sub_1AF90455C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E2980(uint64_t a1)
{
  v2 = sub_1AF90455C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1AF8E29BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1AF8FEAE4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

double sub_1AF8E2A04@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1AFE816F0;
  return result;
}

uint64_t sub_1AF8E2A20()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E2B14()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E2BF4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E2CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FD958();
  *a1 = result;
  return result;
}

void sub_1AF8E2D14(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E6F6974636ELL;
  v4 = 0x75466C656E72656BLL;
  v5 = 0xEA00000000007372;
  v6 = 0x6574656D61726170;
  v7 = 0xEC00000074706972;
  v8 = 0x63536C656E72656BLL;
  if (v2 != 3)
  {
    v8 = 0x7365727574786574;
    v7 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1668506980;
    v3 = 0xE400000000000000;
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

uint64_t sub_1AF8E2DC4()
{
  v1 = *v0;
  v2 = 0x75466C656E72656BLL;
  v3 = 0x6574656D61726170;
  v4 = 0x63536C656E72656BLL;
  if (v1 != 3)
  {
    v4 = 0x7365727574786574;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1668506980;
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

uint64_t sub_1AF8E2E70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1AF8FD958();
  *a1 = result;
  return result;
}

uint64_t sub_1AF8E2E98(uint64_t a1)
{
  v2 = sub_1AF9047C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E2ED4(uint64_t a1)
{
  v2 = sub_1AF9047C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E2F10(void *a1)
{
  v3 = v1;
  sub_1AF9061B8(0, &qword_1EB6402A8, sub_1AF9047C4, &type metadata for TextureShaderAsset.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF9047C4();
  sub_1AFDFF3F8();
  LOBYTE(v14) = 0;
  sub_1AFDFE8B8();
  if (!v2)
  {
    v17 = *(v3 + 80);
    v16 = 2;
    sub_1AF5A56DC();
    sub_1AF9049B0(&unk_1EB6402B0, sub_1AF5A56DC, sub_1AF8ABAB0);
    sub_1AFDFE918();
    v14 = *(v3 + 24);
    v15 = *(v3 + 40);
    v13 = 1;
    sub_1AF608A58();
    sub_1AFDFE918();
    *&v14 = *v3;
    v13 = 3;
    sub_1AF480018();
    sub_1AFDFE918();
    *&v14 = *(v3 + 88);
    v13 = 4;
    sub_1AF9048CC();
    sub_1AF9049B0(&qword_1EB6402C8, sub_1AF9048CC, sub_1AF480018);
    sub_1AFDFE918();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1AF8E3214@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1AF8FF740(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1AF8E3244()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF467494(&v2);
}

uint64_t sub_1AF8E3278()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF445CA8(&v2);
}

uint64_t sub_1AF8E32AC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF445CB0(&v2);
}

uint64_t sub_1AF8E32E0()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF478AC0(&v2);
}

uint64_t sub_1AF8E3314()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  return sub_1AF8FE1D8(&v2);
}

_OWORD *sub_1AF8E3348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*v3 != -1 || *(v3 + 4))
  {
    v7 = *(v3 + 72);
    v32 = *(v3 + 64);
    v33 = *(v3 + 48);
    v39 = *(v3 + 56);
    v6 = v39;
    v40 = v33;
    v37 = v7;
    v38 = v32;
    sub_1AF904B14(&v40, v41, sub_1AF6594C8);
    v8 = MEMORY[0x1E69E62F8];
    sub_1AF8FF144(&v39, v41, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, MEMORY[0x1E69E62F8]);
    sub_1AF8FF144(&v38, v41, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, v8);
    sub_1AF8FF144(&v37, v41, &qword_1EB640150, &type metadata for MetalFunctionReflection.Arg, v8);
    v9 = *(v6 + 16);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_25:

    sub_1AF9061B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    *(a3 + 24) = v27;
    result = swift_allocObject();
    *a3 = result;
    *(result + 2) = 0;
    *(result + 3) = 0;
    return result;
  }

  if (qword_1EB632E90 != -1)
  {
    swift_once();
  }

  sub_1AF6F280C(*(v3 + 8), *(v3 + 16), 0x6C7070612E6D6F63, 0xED00007866762E65);
  v6 = v26;
  v9 = *(v26 + 16);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_4:
  v10 = v6 + 72;
  while (1)
  {
    v11 = *(v10 - 40);
    v12 = *(v10 - 16);
    v13 = *(*v10 + 16) == a1 && *(*v10 + 24) == a2;
    if (v13 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v10 += 48;
    if (!--v9)
    {
      goto LABEL_25;
    }
  }

  if (v11)
  {
    v14 = *(v3 + 88);
    if (*(v14 + 16) && (v15 = sub_1AF449CB8(v12), (v16 & 1) != 0))
    {
      v17 = *(*(v14 + 56) + 8 * v15);
      *(a3 + 24) = &type metadata for Entity;

      *a3 = v17;
    }

    else
    {
      *(a3 + 24) = &type metadata for Entity;

      *a3 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v19 = *(v3 + 80);
    if (*(v19 + 16) && (v20 = sub_1AF449CB8(v12), (v21 & 1) != 0) && (v22 = *(v19 + 56) + 80 * v20, v23 = *(v22 + 64), v23 <= 0xEF))
    {
      v28 = *v22;
      if ((v23 & 0x80) != 0)
      {
        *(&v36 + 1) = &type metadata for Entity;
        *&v35 = v28;
      }

      else
      {
        v29 = *(v22 + 16);
        v30 = *(v22 + 32);
        v31 = *(v22 + 48);
        v41[0] = *v22;
        v41[1] = v29;
        v41[2] = v30;
        v41[3] = v31;
        v42 = v23;
        sub_1AF879E50(&v35);
      }

      return sub_1AF449D40(&v35, a3);
    }

    else
    {
      sub_1AF9061B8(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
      v35 = 0u;
      v36 = 0u;
      *(a3 + 24) = v24;
      v25 = swift_allocObject();
      *a3 = v25;

      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      if (*(&v36 + 1))
      {
        return sub_1AF8FE1E4(&v35, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF90540C);
      }
    }
  }

  return result;
}

uint64_t sub_1AF8E3788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*v3 == -1 && *(v3 + 4) == 0)
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 16);
    if (qword_1EB632E90 != -1)
    {
      v21 = *(v3 + 8);
      v22 = *(v3 + 16);
      swift_once();
      v11 = v22;
      v10 = v21;
    }

    sub_1AF6F280C(v10, v11, 0x6C7070612E6D6F63, 0xED00007866762E65);
    v8 = v12;
    v9 = *(v12 + 16);
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = *(v3 + 56);

    v9 = *(v8 + 16);
    if (!v9)
    {
LABEL_17:

      v17 = a1;
      return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
    }
  }

  v13 = v8 + 72;
  while (1)
  {
    v14 = *(v13 - 40);
    v15 = *(v13 - 16);
    v16 = *(*v13 + 16) == a2 && *(*v13 + 24) == a3;
    if (v16 || (sub_1AFDFEE28() & 1) != 0)
    {
      break;
    }

    v13 += 48;
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  if (v14)
  {
    sub_1AF0D5A54(a1, v26);
    if (swift_dynamicCast())
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26[0] = *(v4 + 88);
      sub_1AF852D2C(v25[0], v15, isUniquelyReferenced_nonNull_native);

      result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      *(v4 + 88) = v26[0];
      return result;
    }

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v20 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v23 = v20;
      swift_once();
      v20 = v23;
    }

    v26[0] = 0;
    sub_1AF0D4F18(v20, v26, 0xD000000000000035, 0x80000001AFF39C00);

    v17 = a1;
  }

  else
  {
    sub_1AF0D5A54(a1, v25);
    sub_1AF8FDF5C(v25, v26);
    sub_1AF824D1C(v26, v15);

    v17 = a1;
  }

  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v17);
}

uint64_t sub_1AF8E3AB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v26 = a2;
  v24 = *(a2 + 8);
  v24(v2, 0);
  v5 = *(v2 + 88);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
LABEL_10:
    v12 = *(*(v5 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v3 + 88);
    v14 = v29;
    v16 = sub_1AF449CB8(v12);
    v17 = v15;
    v18 = v14[2] + ((v15 & 1) == 0);
    if (v14[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_1AF846E40();
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_1AF830A44(v18, isUniquelyReferenced_nonNull_native);
      v19 = sub_1AF449CB8(v12);
      if ((v17 & 1) != (v20 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }

      v16 = v19;
      if ((v17 & 1) == 0)
      {
LABEL_19:
        v27 = 0;
        v28 = 1;
        (v24)(&v27, 0, ObjectType, v26);
        v21 = v29;
        if ((v28 & 1) == 0)
        {
          v22 = v27;
          v29[(v16 >> 6) + 8] |= 1 << v16;
          *(v21[6] + 8 * v16) = v12;
          *(v21[7] + 8 * v16) = v22;
          ++v21[2];
        }

        goto LABEL_5;
      }
    }

    v21 = v29;
    v27 = *(v29[7] + 8 * v16);
    v28 = 0;
    (v24)(&v27, 0, ObjectType, v26);
    if (v28)
    {
      sub_1AF6B2F08(v16, v21);
    }

    else
    {
      *(v21[7] + 8 * v16) = v27;
    }

LABEL_5:
    v8 &= v8 - 1;
    *(v3 + 88) = v21;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10++ + 72);
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }
}

__n128 sub_1AF8E3D40@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8FFAD0(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

double sub_1AF8E3DB4@<D0>(uint64_t a1@<X8>)
{
  CFXTextureDescriptorMakeDefault(&v9);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = sub_1AF42CC94(MEMORY[0x1E69E7CC0]);
  v4 = sub_1AF42C520(v2);
  v5 = sub_1AF42CA3C(v2);
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  result = *&v9;
  *(a1 + 24) = v9;
  v7 = MEMORY[0x1E69E7CC8];
  *(a1 + 40) = v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = v8;
  return result;
}

uint64_t sub_1AF8E3E4C()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v1 + 104);
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EB6C2760;

  v5 = sub_1AF428E18(v2, v3, sub_1AF56F254);

  v14[0] = v4;
  sub_1AF48FA18(v5);
  v6 = v4;
  if (v4 >> 62)
  {
    v7 = sub_1AFDFE108();
    if (v7)
    {
LABEL_5:
      for (i = 0; i != v7; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B2719C70](i, v6);
        }

        else
        {
          v9 = *(v6 + 8 * i + 32);
        }

        v10 = v9[20];
        if (*(v10 + 16))
        {
          v11 = v9[2];
          v12 = v9[3];
          sub_1AF0D5A54(v10 + 48, v14);

          sub_1AF8E3788(v14, v11, v12);
        }
      }
    }
  }

  else
  {
    v7 = *((v14[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }
  }
}

uint64_t sub_1AF8E4018()
{
  v1 = *v0;
  v2 = v0[1];
  if (v1 != 0xFFFFFFFFLL || v2 != 0)
  {
    return v1 | (v2 << 32);
  }

  v4 = *(v0 + 1);

  return v4;
}

unint64_t sub_1AF8E4078(unint64_t result, uint64_t a2, char a3)
{
  v4 = result;
  if (a3)
  {
    v5 = HIDWORD(result);
    if (HIDWORD(result) || result != -1)
    {

      *(v3 + 8) = 0;
      *(v3 + 16) = 0xE000000000000000;
    }

    *v3 = v4;
    *(v3 + 4) = v5;
  }

  else
  {
    if ((result || a2 != 0xE000000000000000) && (sub_1AFDFEE28() & 1) == 0)
    {
      *v3 = 0xFFFFFFFFLL;
    }

    *(v3 + 8) = v4;
    *(v3 + 16) = a2;
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = v11;
    v7 = v3;
    v8 = sub_1AF8E5418();
    v10 = v9;
    sub_1AF8FE1E4(&v13, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
    sub_1AF8FE1E4(&v12, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
    *(v7 + 96) = v8;
    *(v7 + 104) = v10;
    sub_1AF8E3E4C();
    return sub_1AF5A5B10(v4, a2, 0);
  }

  return result;
}

uint64_t sub_1AF8E4210()
{
  sub_1AF90540C(0, &qword_1ED726900, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1AFE55170;
  KeyPath = swift_getKeyPath();
  v2 = &type metadata for KernelReference;
  sub_1AF90540C(0, &qword_1EB632570, &type metadata for KernelReference, type metadata accessor for EntityGetSet);
  v3 = swift_allocObject();
  v3[4] = sub_1AF8FF1B4;
  v3[5] = KeyPath;
  v3[2] = sub_1AF5A5AC8;
  v3[3] = KeyPath;
  v3[6] = KeyPath;
  type metadata accessor for PropertyDescription();
  v4 = swift_allocObject();
  *(v4 + 112) = 1;
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = 0;
  *(v4 + 160) = MEMORY[0x1E69E7CC0];
  *(v4 + 168) = 0;
  *(v4 + 216) = 0;
  *(v4 + 176) = 0;
  *(v4 + 16) = 0x6C656E72656BLL;
  *(v4 + 24) = 0xE600000000000000;
  *(v4 + 32) = KeyPath;
  *(v4 + 40) = &type metadata for KernelReference;
  *(v4 + 48) = 0;
  *(v4 + 56) = 1;
  *(v4 + 58) = 64;
  *(v4 + 184) = 0;
  *(v4 + 188) = 1;
  *(v4 + 192) = 0;
  *(v4 + 196) = 1;
  *(v4 + 200) = 0x1000100000000;
  *(v4 + 208) = 1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 144) = xmmword_1AFE729D0;
  *(v4 + 80) = v3;
  *(v4 + 88) = &off_1F2535378;
  *(v4 + 210) = 64;
  v5 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v5)
  {
    v2 = (*(v5 + 8))();
  }

  v6 = swift_conformsToProtocol2();
  if (v6 && v2)
  {
    *(v4 + 160) = (*(v6 + 8))(v2, v6);
  }

  v7 = *(v4 + 64);
  *(v4 + 64) = sub_1AF8FF1E4;
  *(v4 + 72) = KeyPath;
  sub_1AF0FB8EC(v7);
  *(v4 + 168) = 0;
  *(v4 + 176) = 0;

  *(v4 + 216) = 0;

  *(v0 + 32) = v4;
  v8 = swift_getKeyPath();
  v9 = MEMORY[0x1E69E6158];
  sub_1AF90540C(0, &qword_1EB634358, MEMORY[0x1E69E6158], type metadata accessor for EntityGetSet);
  v10 = swift_allocObject();
  v10[4] = sub_1AF8FF1EC;
  v10[5] = v8;
  v10[2] = sub_1AF5A5A58;
  v10[3] = v8;
  v10[6] = v8;
  v11 = swift_allocObject();
  *(v11 + 112) = 1;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 120) = 0;
  *(v11 + 160) = MEMORY[0x1E69E7CC0];
  *(v11 + 168) = 0;
  *(v11 + 216) = 0;
  *(v11 + 176) = 0;
  strcpy((v11 + 16), "kernelFunction");
  *(v11 + 31) = -18;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = 8;
  *(v11 + 56) = 0;
  *(v11 + 58) = 4;
  *(v11 + 184) = 0;
  *(v11 + 188) = 1;
  *(v11 + 192) = 0;
  *(v11 + 196) = 1;
  *(v11 + 200) = 0x1000100000000;
  *(v11 + 208) = 1;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 144) = xmmword_1AFE22A20;
  *(v11 + 80) = v10;
  *(v11 + 88) = &off_1F2535378;
  *(v11 + 210) = 4;
  v12 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v12)
  {
    v9 = (*(v12 + 8))();
  }

  v13 = swift_conformsToProtocol2();
  if (v13 && v9)
  {
    *(v11 + 160) = (*(v13 + 8))(v9, v13);
  }

  *(v11 + 64) = sub_1AF8FF218;
  *(v11 + 72) = v8;
  sub_1AF0FB8EC(0);
  *(v11 + 168) = 0;
  *(v11 + 176) = 0;

  *(v11 + 216) = 0;
  *(v0 + 40) = v11;
  v14 = swift_getKeyPath();
  sub_1AF0D0F04(0, &unk_1EB632510, type metadata accessor for MTLPixelFormat, type metadata accessor for EntityGetSet);
  v15 = swift_allocObject();
  v15[4] = sub_1AF8FF220;
  v15[5] = v14;
  v15[2] = sub_1AF8FF254;
  v15[3] = v14;
  v15[6] = v14;
  v16 = swift_allocObject();
  *(v16 + 104) = 0;
  *(v16 + 112) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 0;
  *(v16 + 120) = 0;
  *(v16 + 160) = MEMORY[0x1E69E7CC0];
  *(v16 + 216) = 0;
  type metadata accessor for MTLPixelFormat(0);
  v18 = v17;
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;
  *(v16 + 16) = 0x726F466C65786970;
  *(v16 + 24) = 0xEB0000000074616DLL;
  *(v16 + 32) = v14;
  *(v16 + 40) = v17;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 58) = 0;
  *(v16 + 184) = 0;
  *(v16 + 188) = 1;
  *(v16 + 192) = 0;
  *(v16 + 196) = 1;
  *(v16 + 200) = 0x1000100000000;
  *(v16 + 208) = 1;
  *(v16 + 64) = 0;
  *(v16 + 72) = 0;
  *(v16 + 88) = &off_1F2535378;
  *(v16 + 96) = 0;
  *(v16 + 144) = xmmword_1AFE22A20;
  *(v16 + 80) = v15;
  *(v16 + 210) = 0;
  v19 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v19 && v18)
  {
    v18 = (*(v19 + 8))(v18, v19);
  }

  v20 = swift_conformsToProtocol2();
  if (v20 && v18)
  {
    *(v16 + 160) = (*(v20 + 8))(v18, v20);
  }

  v21 = *(v16 + 64);
  *(v16 + 64) = sub_1AF8FF260;
  *(v16 + 72) = v14;
  sub_1AF0FB8EC(v21);
  *(v16 + 168) = 0;
  *(v16 + 176) = 0;

  *(v16 + 216) = 0;

  *(v0 + 48) = v16;
  v22 = swift_getKeyPath();
  v23 = MEMORY[0x1E69E6530];
  sub_1AF90540C(0, &qword_1ED722B68, MEMORY[0x1E69E6530], type metadata accessor for EntityGetSet);
  v24 = swift_allocObject();
  v24[4] = sub_1AF8FF268;
  v24[5] = v22;
  v24[2] = sub_1AF8FF29C;
  v24[3] = v22;
  v24[6] = v22;
  v25 = swift_allocObject();
  *(v25 + 112) = 1;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0;
  *(v25 + 120) = 0;
  *(v25 + 160) = MEMORY[0x1E69E7CC0];
  *(v25 + 168) = 0;
  *(v25 + 216) = 0;
  *(v25 + 176) = 0;
  *(v25 + 16) = 0x6874646977;
  *(v25 + 24) = 0xE500000000000000;
  *(v25 + 32) = v22;
  *(v25 + 40) = v23;
  *(v25 + 48) = 0;
  *(v25 + 56) = 1;
  *(v25 + 58) = 0;
  *(v25 + 184) = 0;
  *(v25 + 188) = 1;
  *(v25 + 192) = 0;
  *(v25 + 196) = 1;
  *(v25 + 200) = 0x1000100000000;
  *(v25 + 208) = 1;
  *(v25 + 64) = 0;
  *(v25 + 72) = 0;
  *(v25 + 96) = 0;
  *(v25 + 104) = 0;
  *(v25 + 144) = xmmword_1AFE22A20;
  *(v25 + 80) = v24;
  *(v25 + 88) = &off_1F2535378;
  *(v25 + 210) = 0;
  v26 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v26)
  {
    v27 = (*(v26 + 8))();
  }

  else
  {
    v27 = v23;
  }

  v28 = swift_conformsToProtocol2();
  if (v28 && v27)
  {
    *(v25 + 160) = (*(v28 + 8))(v27, v28);
  }

  *(v25 + 64) = sub_1AF8FF2A8;
  *(v25 + 72) = v22;
  sub_1AF0FB8EC(0);
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;

  *(v25 + 216) = 0;
  *(v0 + 56) = v25;
  v29 = swift_getKeyPath();
  v30 = swift_allocObject();
  v30[4] = sub_1AF907034;
  v30[5] = v29;
  v30[2] = sub_1AF907010;
  v30[3] = v29;
  v30[6] = v29;
  v31 = swift_allocObject();
  *(v31 + 112) = 1;
  *(v31 + 128) = 0;
  *(v31 + 136) = 0;
  *(v31 + 120) = 0;
  *(v31 + 160) = MEMORY[0x1E69E7CC0];
  *(v31 + 168) = 0;
  *(v31 + 216) = 0;
  *(v31 + 176) = 0;
  *(v31 + 16) = 0x746867696568;
  *(v31 + 24) = 0xE600000000000000;
  *(v31 + 32) = v29;
  *(v31 + 40) = v23;
  *(v31 + 48) = 0;
  *(v31 + 56) = 1;
  *(v31 + 58) = 0;
  *(v31 + 184) = 0;
  *(v31 + 188) = 1;
  *(v31 + 192) = 0;
  *(v31 + 196) = 1;
  *(v31 + 200) = 0x1000100000000;
  *(v31 + 208) = 1;
  *(v31 + 64) = 0;
  *(v31 + 72) = 0;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  *(v31 + 144) = xmmword_1AFE22A20;
  *(v31 + 80) = v30;
  *(v31 + 88) = &off_1F2535378;
  *(v31 + 210) = 0;
  swift_retain_n();
  if (v26)
  {
    v32 = (*(v26 + 8))();
  }

  else
  {
    v32 = v23;
  }

  v33 = swift_conformsToProtocol2();
  if (v33 && v32)
  {
    *(v31 + 160) = (*(v33 + 8))(v32, v33);
  }

  *(v31 + 64) = sub_1AF907000;
  *(v31 + 72) = v29;
  sub_1AF0FB8EC(0);
  *(v31 + 168) = 0;
  *(v31 + 176) = 0;

  *(v31 + 216) = 0;
  *(v0 + 64) = v31;
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  v35[4] = sub_1AF907034;
  v35[5] = v34;
  v35[2] = sub_1AF907010;
  v35[3] = v34;
  v35[6] = v34;
  v36 = swift_allocObject();
  *(v36 + 112) = 1;
  *(v36 + 128) = 0;
  *(v36 + 136) = 0;
  *(v36 + 120) = 0;
  *(v36 + 160) = MEMORY[0x1E69E7CC0];
  *(v36 + 168) = 0;
  *(v36 + 216) = 0;
  *(v36 + 176) = 0;
  *(v36 + 16) = 0x6874706564;
  *(v36 + 24) = 0xE500000000000000;
  *(v36 + 32) = v34;
  *(v36 + 40) = v23;
  *(v36 + 48) = 0;
  *(v36 + 56) = 1;
  *(v36 + 58) = 0;
  *(v36 + 184) = 0;
  *(v36 + 188) = 1;
  *(v36 + 192) = 0;
  *(v36 + 196) = 1;
  *(v36 + 200) = 0x1000100000000;
  *(v36 + 208) = 1;
  *(v36 + 64) = 0;
  *(v36 + 72) = 0;
  *(v36 + 96) = 0;
  *(v36 + 104) = 0;
  *(v36 + 144) = xmmword_1AFE22A20;
  *(v36 + 80) = v35;
  *(v36 + 88) = &off_1F2535378;
  *(v36 + 210) = 0;
  swift_retain_n();
  if (v26)
  {
    v23 = (*(v26 + 8))();
  }

  v37 = swift_conformsToProtocol2();
  if (v37 && v23)
  {
    *(v36 + 160) = (*(v37 + 8))(v23, v37);
  }

  *(v36 + 64) = sub_1AF907000;
  *(v36 + 72) = v34;
  sub_1AF0FB8EC(0);
  *(v36 + 168) = 0;
  *(v36 + 176) = 0;

  *(v36 + 216) = 0;
  *(v0 + 72) = v36;
  v38 = swift_getKeyPath();
  v39 = &type metadata for MetalFunctionReflection;
  sub_1AF90540C(0, &qword_1EB632540, &type metadata for MetalFunctionReflection, type metadata accessor for EntityGetSet);
  v40 = swift_allocObject();
  v40[4] = sub_1AF8FF2B0;
  v40[5] = v38;
  v40[2] = sub_1AF5A590C;
  v40[3] = v38;
  v40[6] = v38;
  v41 = swift_allocObject();
  *(v41 + 112) = 1;
  *(v41 + 128) = 0;
  *(v41 + 136) = 0;
  *(v41 + 120) = 0;
  *(v41 + 160) = MEMORY[0x1E69E7CC0];
  *(v41 + 168) = 0;
  *(v41 + 216) = 0;
  *(v41 + 176) = 0;
  *(v41 + 16) = 0x746E656D75677261;
  *(v41 + 24) = 0xE900000000000073;
  *(v41 + 32) = v38;
  *(v41 + 40) = &type metadata for MetalFunctionReflection;
  *(v41 + 48) = 0;
  *(v41 + 56) = 1;
  *(v41 + 58) = 68;
  *(v41 + 184) = 0;
  *(v41 + 188) = 1;
  *(v41 + 192) = 0;
  *(v41 + 196) = 1;
  *(v41 + 200) = 0x1000100000000;
  *(v41 + 208) = 1;
  *(v41 + 64) = 0;
  *(v41 + 72) = 0;
  *(v41 + 96) = 0;
  *(v41 + 104) = 0;
  *(v41 + 144) = xmmword_1AFE22A20;
  *(v41 + 80) = v40;
  *(v41 + 88) = &off_1F2535378;
  *(v41 + 210) = 68;
  v42 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v42)
  {
    v39 = (*(v42 + 8))();
  }

  v43 = swift_conformsToProtocol2();
  if (v43 && v39)
  {
    *(v41 + 160) = (*(v43 + 8))(v39, v43);
  }

  *(v41 + 64) = sub_1AF8FF2E0;
  *(v41 + 72) = v38;
  sub_1AF0FB8EC(0);
  *(v41 + 168) = 0;
  *(v41 + 176) = 0;

  *(v41 + 216) = 0;
  *(v0 + 80) = v41;
  v44 = swift_getKeyPath();
  sub_1AF0D0F04(0, &qword_1EB632508, type metadata accessor for MTLStorageMode, type metadata accessor for EntityGetSet);
  v45 = swift_allocObject();
  v45[4] = sub_1AF8FF220;
  v45[5] = v44;
  v45[2] = sub_1AF8FF2E8;
  v45[3] = v44;
  v45[6] = v44;
  v46 = swift_allocObject();
  *(v46 + 104) = 0;
  *(v46 + 112) = 1;
  *(v46 + 128) = 0;
  *(v46 + 136) = 0;
  *(v46 + 120) = 0;
  *(v46 + 160) = MEMORY[0x1E69E7CC0];
  *(v46 + 216) = 0;
  type metadata accessor for MTLStorageMode(0);
  v48 = v47;
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;
  *(v46 + 16) = 0x4D656761726F7473;
  *(v46 + 24) = 0xEB0000000065646FLL;
  *(v46 + 32) = v44;
  *(v46 + 40) = v47;
  *(v46 + 48) = 0;
  *(v46 + 56) = 1;
  *(v46 + 58) = 4;
  *(v46 + 184) = 0;
  *(v46 + 188) = 1;
  *(v46 + 192) = 0;
  *(v46 + 196) = 1;
  *(v46 + 200) = 0x1000100000000;
  *(v46 + 208) = 1;
  *(v46 + 64) = 0;
  *(v46 + 72) = 0;
  *(v46 + 88) = &off_1F2535378;
  *(v46 + 96) = 0;
  *(v46 + 144) = xmmword_1AFE22A20;
  *(v46 + 80) = v45;
  *(v46 + 210) = 4;
  v49 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v49 && v48)
  {
    v48 = (*(v49 + 8))(v48, v49);
  }

  v50 = swift_conformsToProtocol2();
  if (v50 && v48)
  {
    *(v46 + 160) = (*(v50 + 8))(v48, v50);
  }

  v51 = *(v46 + 64);
  *(v46 + 64) = sub_1AF8FF2F4;
  *(v46 + 72) = v44;
  sub_1AF0FB8EC(v51);
  *(v46 + 168) = 0;
  *(v46 + 176) = 0;

  *(v46 + 216) = 0;

  *(v0 + 88) = v46;
  v52 = swift_getKeyPath();
  sub_1AF0D0F04(0, &unk_1EB632530, sub_1AF5A56DC, type metadata accessor for EntityGetSet);
  v53 = swift_allocObject();
  v53[4] = sub_1AF8FF2FC;
  v53[5] = v52;
  v53[2] = sub_1AF5A5744;
  v53[3] = v52;
  v53[6] = v52;
  v54 = swift_allocObject();
  *(v54 + 104) = 0;
  *(v54 + 112) = 1;
  *(v54 + 128) = 0;
  *(v54 + 136) = 0;
  *(v54 + 120) = 0;
  *(v54 + 160) = MEMORY[0x1E69E7CC0];
  *(v54 + 216) = 0;
  sub_1AF5A56DC();
  v56 = v55;
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;
  *(v54 + 16) = 0x6574656D61726170;
  *(v54 + 24) = 0xEA00000000007372;
  *(v54 + 32) = v52;
  *(v54 + 40) = v55;
  *(v54 + 48) = 80;
  *(v54 + 56) = 0;
  *(v54 + 58) = 4;
  *(v54 + 184) = 0;
  *(v54 + 188) = 1;
  *(v54 + 192) = 0;
  *(v54 + 196) = 1;
  *(v54 + 200) = 0x1000100000000;
  *(v54 + 208) = 1;
  *(v54 + 64) = 0;
  *(v54 + 72) = 0;
  *(v54 + 88) = &off_1F2535378;
  *(v54 + 96) = 0;
  *(v54 + 144) = xmmword_1AFE22A20;
  *(v54 + 80) = v53;
  *(v54 + 210) = 4;
  v57 = swift_conformsToProtocol2();
  swift_retain_n();
  if (v57 && v56)
  {
    v56 = (*(v57 + 8))(v56, v57);
  }

  v58 = swift_conformsToProtocol2();
  if (v58 && v56)
  {
    *(v54 + 160) = (*(v58 + 8))(v56, v58);
  }

  v59 = *(v54 + 64);
  *(v54 + 64) = sub_1AF8FF328;
  *(v54 + 72) = v52;
  sub_1AF0FB8EC(v59);
  *(v54 + 168) = 0;
  *(v54 + 176) = 0;

  *(v54 + 216) = 0;

  *(v0 + 96) = v54;
  qword_1EB6C2760 = v0;
  return result;
}

uint64_t sub_1AF8E53B4@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v3 == 0xFFFFFFFFLL && v4 == 0;
  v6 = !v5;
  if (v5)
  {
    v8 = *(a1 + 1);
  }

  else
  {
    result = 0;
    v8 = v3 | (v4 << 32);
  }

  *a2 = v8;
  *(a2 + 8) = result;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_1AF8E5418()
{
  v1 = sub_1AF42D96C(MEMORY[0x1E69E7CC0]);
  v2 = *(v0 + 56);
  if (*v0 != -1 || *(v0 + 4))
  {

    v3 = *(v2 + 16);
    if (v3)
    {
      goto LABEL_4;
    }

LABEL_31:

    return v1;
  }

  if (qword_1EB632E90 != -1)
  {
    swift_once();
  }

  sub_1AF6F280C(*(v0 + 8), *(v0 + 16), 0x6C7070612E6D6F63, 0xED00007866762E65);
  v2 = v31;

  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_31;
  }

LABEL_4:
  v39 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = 72;
  v33 = v2;
  do
  {
    v37 = v3;
    v38 = v4;
    v6 = *(v2 + v5);
    v7 = *(v6 + 24);
    v35 = *(v6 + 16);
    v36 = v5;
    v8 = *(v6 + 40);
    v9 = *(v6 + 152);
    v34 = *(v6 + 144);
    v10 = *(v6 + 188);
    if (v10)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = *(v6 + 184);
    }

    v12 = *(v6 + 196);
    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = *(v6 + 192);
    }

    v14 = *(v6 + 204);
    if (v14)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = *(v6 + 200);
    }

    memset(v40, 0, 32);

    v16 = sub_1AF493834(v8, v40, v35, v7, *&v11, v10, *&v13, v12, *&v15, v14, v34, v9, 0, 0, 0, &type metadata for TextureShaderAsset, v8, &off_1F25446E8);

    sub_1AF8FE1E4(v40, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF90540C);
    v16[20] = *(v6 + 160);

    v18 = v16[2];
    v17 = v16[3];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = v39;
    v20 = sub_1AF419914(v18, v17);
    v22 = v21;
    v23 = v39[2] + ((v21 & 1) == 0);
    if (v39[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = v20;
        sub_1AF844B24();
        v20 = v30;
      }
    }

    else
    {
      sub_1AF82CE44(v23, isUniquelyReferenced_nonNull_native);
      v20 = sub_1AF419914(v18, v17);
      if ((v22 & 1) != (v24 & 1))
      {
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v4 = v38;
    v25 = *&v40[0];
    v39 = *&v40[0];
    if (v22)
    {
      *(*(*&v40[0] + 56) + 8 * v20) = v16;
    }

    else
    {
      *(*&v40[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v26 = (v25[6] + 16 * v20);
      *v26 = v18;
      v26[1] = v17;
      *(v25[7] + 8 * v20) = v16;
      ++v25[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1AF420554(0, *(v38 + 2) + 1, 1, v38);
      }

      v28 = *(v4 + 2);
      v27 = *(v4 + 3);
      if (v28 >= v27 >> 1)
      {
        v4 = sub_1AF420554(v27 > 1, v28 + 1, 1, v4);
      }

      *(v4 + 2) = v28 + 1;
      v29 = &v4[16 * v28];
      *(v29 + 4) = v18;
      *(v29 + 5) = v17;
    }

    v5 = v36 + 48;
    v3 = v37 - 1;
    v2 = v33;
  }

  while (v37 != 1);

  return v39;
}

uint64_t sub_1AF8E5850(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 96);
  v10 = MEMORY[0x1B27189E0]();
  if (*(v9 + 16))
  {
    v12 = sub_1AF419914(v10, v11);
    v14 = v13;

    if (v14)
    {
      v15 = *(*(v9 + 56) + 8 * v12);

      return v15;
    }
  }

  else
  {
  }

  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v16 = qword_1EB6C2760;
  if (!(qword_1EB6C2760 >> 62))
  {
    v17 = *((qword_1EB6C2760 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_9;
    }

    return 0;
  }

  v17 = sub_1AFDFE108();
  if (!v17)
  {
    return 0;
  }

LABEL_9:
  v18 = 0;
  v19 = a1 >> 16;
  v20 = a2 >> 16;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1B2719C70](v18, v16);
    }

    else
    {
      v15 = *(v16 + 8 * v18 + 32);
    }

    v21 = *(v15 + 16);
    v22 = *(v15 + 24);
    v23 = (v22 & 0x2000000000000000) != 0 ? HIBYTE(v22) & 0xF : v21 & 0xFFFFFFFFFFFFLL;
    v24 = v21 == a3 && v22 == a4;
    v25 = v24 && v19 == 0;
    v26 = v25 && v23 == v20;
    if (v26 || (sub_1AFDFE9E8() & 1) != 0)
    {
      break;
    }

    if (v17 == ++v18)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t sub_1AF8E5A28()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB6C2760;

  v4 = sub_1AF428E18(v1, v2, sub_1AF56F254);

  sub_1AF48FA18(v4);
  return v3;
}

uint64_t sub_1AF8E5AF4()
{
  if (qword_1EB631AB8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1AF8E5B54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65727574786574;
  }

  else
  {
    v3 = 1635017060;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x65727574786574;
  }

  else
  {
    v5 = 1635017060;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_1AF8E5BF4()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF8E5C70()
{
  sub_1AFDFD038();
}

uint64_t sub_1AF8E5CD8()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

void sub_1AF8E5D5C(uint64_t *a1@<X8>)
{
  v2 = 1635017060;
  if (*v1)
  {
    v2 = 0x65727574786574;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AF8E5D94()
{
  if (*v0)
  {
    return 0x65727574786574;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1AF8E5DD4(uint64_t a1)
{
  v2 = sub_1AF8FF428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF8E5E10(uint64_t a1)
{
  v2 = sub_1AF8FF428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF8E5E4C(void *a1)
{
  v2 = v1;
  sub_1AF9061B8(0, &unk_1EB640160, sub_1AF8FF428, &_s10CodingKeysON_0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - v8;
  sub_1AF441150(a1, a1[3]);
  sub_1AF8FF428();
  sub_1AFDFF3F8();
  v10 = *(v2 + 64);
  if (v10 < 0)
  {
    v13 = *v2;
    v19 = 1;
    sub_1AF480018();
  }

  else
  {
    v11 = v2[7];
    v13 = *v2;
    v14 = *(v2 + 1);
    v15 = *(v2 + 3);
    v16 = *(v2 + 5);
    v17 = v11;
    v18 = v10;
    v19 = 0;
    sub_1AF882440();
  }

  sub_1AFDFE918();
  return (*(v6 + 8))(v9, v5);
}

__n128 sub_1AF8E6020@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF8FE43C(a1, v6);
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

__n128 sub_1AF8E6084@<Q0>(uint64_t a1@<X8>)
{
  CFXTextureDescriptorMakeDefault(&v4);
  *&v3[7] = v4;
  *&v3[23] = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 25) = *v3;
  result = *&v3[15];
  *(a1 + 40) = *&v3[15];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  return result;
}

unint64_t sub_1AF8E60EC@<X0>(unint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = result;
  v7 = HIDWORD(result);
  v8 = 0uLL;
  if (HIDWORD(result) || result != -1)
  {
    result = sub_1AF67CACC(&type metadata for Tombstone, &off_1F2532360, result);
    if (result)
    {
LABEL_39:
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0uLL;
      v8 = 0uLL;
      goto LABEL_40;
    }

    result = sub_1AF3C94FC(v5, &v43);
    v11 = v51;
    if (!v51)
    {
      if (a2)
      {
        result = sub_1AF65A128(v5);
        if (result)
        {
          result = sub_1AF67CACC(&type metadata for ColorRampComponent, &off_1F2541A28, v5);
          if ((result & 1) == 0)
          {
            result = sub_1AF67CACC(&type metadata for CurveComponent, &off_1F2541D98, v5);
            if ((result & 1) == 0)
            {
              v16 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

              sub_1AFDFE218();
              v17 = sub_1AF65B990();
              v19 = v18;

              v41 = v17;
              v42 = v19;
              MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF3A5C0);
              v20 = sub_1AFDFEA08();
              MEMORY[0x1B2718AE0](v20);

              MEMORY[0x1B2718AE0](32, 0xE100000000000000);

              v21 = sub_1AF3C9078(v5);
              v23 = v22;

              if (v23)
              {
                v24 = v21;
              }

              else
              {
                v24 = 16718;
              }

              if (!v23)
              {
                v23 = 0xE200000000000000;
              }

              MEMORY[0x1B2718AE0](v24, v23);

              v25 = v41;
              v26 = sub_1AFDFDA08();
              v41 = 0;
              (*(*v16 + 88))(v26, &v41, v25, v42);

              if ((v5 & 0x80000000) == 0 && v5 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
              {
                v27 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
                if (v7 == 0xFFFFFFFF || v27[2] == v7)
                {
                  v28 = *(v27 + 2);
                  v29 = *(*(v4 + 144) + 8 * *v27 + 32);
                  if (*(v29 + 232) <= v28 && *(v29 + 240) > v28)
                  {
                    v39 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
                    v40 = *(v29 + 344);

                    os_unfair_lock_lock(v40);
                    ecs_stack_allocator_push_snapshot(*(v39 + 32));

                    sub_1AFCC71A8(v39, v29, v28, v4, v5, sub_1AF8E6700, 0);

                    ecs_stack_allocator_pop_snapshot(*(v39 + 32));
                    os_unfair_lock_unlock(*(v29 + 344));
                  }
                }
              }

              result = sub_1AF3C941C(v5);
              if (BYTE3(result) != 2 && result == 1 && (v5 & 0x8000000000000000) == 0 && v5 < *(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8))
              {
                v31 = (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v5);
                if (v7 == 0xFFFFFFFF || v31[2] == v7)
                {
                  v32 = *(v31 + 2);
                  v33 = *(*(v4 + 144) + 8 * *v31 + 32);
                  if (*(v33 + 232) <= v32 && *(v33 + 240) > v32)
                  {
                    v34 = **(v4 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
                    v35 = *(v33 + 344);

                    os_unfair_lock_lock(v35);
                    ecs_stack_allocator_push_snapshot(*(v34 + 32));

                    sub_1AF682880(v34, v33, v32, &type metadata for TextureLoadRequestCPU, &off_1F25460F8, v4);

                    ecs_stack_allocator_pop_snapshot(*(v34 + 32));
                    os_unfair_lock_unlock(*(v33 + 344));
                  }
                }
              }
            }
          }
        }
      }

      goto LABEL_39;
    }

    v8 = v43;
    v12 = v45;
    if (v43)
    {
      if (v45)
      {
        v9 = v44;
        v14 = v49;
        v10 = v50;
        v13 = (v46 | ((v47 | (v48 << 16)) << 32)) << 8;
        goto LABEL_40;
      }
    }

    else if (v45)
    {
LABEL_38:
      result = sub_1AF8FE1E4(&v43, &unk_1ED725420, &type metadata for TextureCPURuntime, MEMORY[0x1E69E6720], sub_1AF90540C);
      goto LABEL_39;
    }

    v36 = *(v3 + OBJC_IVAR____TtC3VFX13EntityManager_logger);

    sub_1AFDFE218();

    v42 = 0xE800000000000000;
    v37 = sub_1AF656F38();
    MEMORY[0x1B2718AE0](v37);

    MEMORY[0x1B2718AE0](0xD000000000000014, 0x80000001AFF3A5E0);
    v38 = sub_1AFDFDA08();
    v41 = 0;
    (*(*v36 + 88))(v38, &v41, 0x2065727574786554, 0xE800000000000000);

    goto LABEL_38;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0uLL;
LABEL_40:
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = v13 | v12;
  *(a3 + 32) = v14;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  return result;
}

void *sub_1AF8E6700(void *result)
{
  if ((*result & 1) == 0)
  {
    *result |= 1uLL;
  }

  return result;
}

void *sub_1AF8E6714(void *result)
{
  if ((*result & 2) == 0)
  {
    *result |= 2uLL;
  }

  return result;
}

double sub_1AF8E6728(uint64_t a1, _BYTE *a2, _OWORD *a3, uint64_t a4, int a5, int a6, __int128 *a7)
{
  v27 = a5;
  v28 = a6;
  v26 = a4;
  v10 = a7[1];
  v33 = *a7;
  v34 = v10;
  v35[0] = a7[2];
  *(v35 + 10) = *(a7 + 42);
  v11 = sub_1AFDFC128();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;

  v20 = *(v12 + 16);
  v20(v19, v26, v11);
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = 0uLL;
  v20(v15, v19, v11);
  sub_1AF8D9AD4(v15);
  (*(v12 + 8))(v19, v11);
  v21 = v30;
  v22 = v31;
  v23 = v32;
  *a1 = v29;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 32) = v23;
  LOBYTE(v21) = v28;
  *a2 = v27;
  a2[1] = v21;
  v24 = v34;
  *a3 = v33;
  a3[1] = v24;
  a3[2] = v35[0];
  result = *(v35 + 10);
  *(a3 + 42) = *(v35 + 10);
  return result;
}

long double sub_1AF8E68F8(CGColorSpace *a1, long double a2)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a2;
  components[1] = a2;
  components[2] = a2;
  components[3] = 1.0;
  v4 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
  v5 = CGColorCreate(v4, components);

  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(a1, kCGRenderingIntentDefault, v5, 0);
  if (CopyByMatchingToColorSpace)
  {
    v7 = CopyByMatchingToColorSpace;
    v8 = *(sub_1AFDFD9A8() + 32);
  }

  else
  {

    v8 = a2;
  }

  v9 = log(a2);
  return v9 / log(v8);
}

void sub_1AF8E69F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v19 - v10;
  v12 = sub_1AFDFC1A8();
  v13 = CGImageSourceCreateWithData(v12, 0);

  if (!v13)
  {
    goto LABEL_8;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v13, 0, 0);
  if (!ImageAtIndex)
  {

LABEL_8:
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v15 = ImageAtIndex;
  v16 = sub_1AFDFC128();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  sub_1AF8E6C04(v15, a3, a4, v11, 0, 1);
  sub_1AF456B8C(v11);
  if (!v5)
  {
    v17 = *v4;
    if (v17)
    {
      sub_1AFDFC158();
      v18 = sub_1AFDFCEC8();

      [v17 setLabel_];
    }
  }
}

void sub_1AF8E6C04(CGImage *a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v133 = a2;
  v134 = a6;
  v132 = a4;
  v129 = a3;
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v127 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v123 - v15;
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v131 = a5;
  if (a5 >= 2)
  {
    v135 = *(v7 + 32);
    v136 = *(v7 + 48);
    if (sub_1AF445CA8(&v135) != Width || (v135 = *(v7 + 32), v136 = *(v7 + 48), sub_1AF445CB0(&v135) != Height))
    {
      v135 = *(v7 + 32);
      v136 = *(v7 + 48);
      v19 = sub_1AF445CA8(&v135);
      v135 = *(v7 + 32);
      v136 = *(v7 + 48);
      Height = sub_1AF445CB0(&v135);
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v128 = v19;
      *&v135 = 0;
      *(&v135 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v135 = 0x727574786554202DLL;
      *(&v135 + 1) = 0xEB00000000282065;
      sub_1AF456C4C(v132, v16);
      v20 = sub_1AFDFC128();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v16, 1, v20) == 1)
      {
        sub_1AF456B8C(v16);
        v22 = 0xE200000000000000;
        v23 = 16718;
      }

      else
      {
        v23 = sub_1AFDFBFA8();
        v22 = v24;
        (*(v21 + 8))(v16, v20);
      }

      MEMORY[0x1B2718AE0](v23, v22);

      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF3A2A0);
      v137 = CGImageGetWidth(a1);
      v25 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v25);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v137 = CGImageGetHeight(a1);
      v26 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v26);

      MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
      Width = v128;
      v137 = v128;
      v27 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v27);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v137 = Height;
      v28 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v28);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v29 = v135;
      v30 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v120 = v30;
        swift_once();
        v30 = v120;
      }

      *&v135 = 0;
      sub_1AF0D4F18(v30, &v135, v29, *(&v29 + 1));
    }
  }

  v31 = CGImageGetColorSpace(a1);
  if (!v31)
  {
    *&v135 = 0;
    *(&v135 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x6F6C20726F727245, 0xEE0020676E696461);
    v137 = a1;
    type metadata accessor for CGImage(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0xD000000000000027, 0x80000001AFF3A220);
    v35 = v135;
    sub_1AF902768();
    swift_allocError();
    *v36 = v35;
    *(v36 + 16) = 0;
    swift_willThrow();
    return;
  }

  v32 = v31;
  BitmapInfo = CGImageGetBitmapInfo(a1);
  if (CGImageGetAlphaInfo(a1))
  {
    v34 = Height;
    v126 = CGImageGetAlphaInfo(a1) != kCGImageAlphaNoneSkipLast && CGImageGetAlphaInfo(a1) != kCGImageAlphaNoneSkipFirst;
  }

  else
  {
    v126 = 0;
    v34 = Height;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  IsWideGamutRGB = CGColorSpaceIsWideGamutRGB(v32);
  v39 = BitsPerComponent > 71 && IsWideGamutRGB;
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v32);
  CGImageGetBitmapInfo(a1);
  v41 = v133;
  v42 = *(v133 + 24);
  v130 = v32;
  v125 = BitmapInfo;
  if (v42 <= 0xFD)
  {
    v44 = *(v133 + 8);
    v43 = *(v133 + 16);
    if ((v42 & 0x80) != 0)
    {
      Width = *(v133 + 8);
      v34 = *(v133 + 16);
    }

    else if (v42)
    {
      if (v43 >= v44)
      {
        v43 = *(v133 + 8);
      }

      if (Width >= v34)
      {
        if (v43 >= Width)
        {
          v43 = Width;
        }

        v34 = v43 * v34 / Width;
        Width = v43;
      }

      else
      {
        if (v43 >= v34)
        {
          v43 = v34;
        }

        Width = v43 * Width / v34;
        v34 = v43;
      }
    }

    else
    {
      if (v44 < Width)
      {
        Width = *(v133 + 8);
      }

      if (v43 < v34)
      {
        v34 = *(v133 + 16);
      }
    }

    if (Width != CGImageGetWidth(a1) || v34 != CGImageGetHeight(a1))
    {
      v128 = v34;
      v45 = Width;
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v135 = 0;
      *(&v135 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v135 = 0x727574786554202DLL;
      *(&v135 + 1) = 0xEB00000000282065;
      v46 = v127;
      sub_1AF456C4C(v132, v127);
      v47 = sub_1AFDFC128();
      v48 = *(v47 - 8);
      v49 = (*(v48 + 48))(v46, 1, v47);
      v123 = NumberOfComponents;
      if (v49 == 1)
      {
        sub_1AF456B8C(v46);
        v50 = 0xE200000000000000;
        v51 = 16718;
      }

      else
      {
        v52 = v46;
        v53 = sub_1AFDFBFA8();
        v50 = v54;
        (*(v48 + 8))(v52, v47);
        v51 = v53;
      }

      MEMORY[0x1B2718AE0](v51, v50);

      MEMORY[0x1B2718AE0](0xD000000000000013, 0x80000001AFF3A2A0);
      v137 = CGImageGetWidth(a1);
      v55 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v55);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v137 = CGImageGetHeight(a1);
      v56 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v56);

      MEMORY[0x1B2718AE0](544175136, 0xE400000000000000);
      Width = v45;
      v137 = v45;
      v57 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v57);

      MEMORY[0x1B2718AE0](120, 0xE100000000000000);
      v34 = v128;
      v137 = v128;
      v58 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v58);

      MEMORY[0x1B2718AE0](46, 0xE100000000000000);
      v59 = v135;
      v60 = sub_1AFDFDA28();
      if (qword_1ED731058 != -1)
      {
        v121 = v60;
        swift_once();
        v60 = v121;
      }

      *&v135 = 0;
      sub_1AF0D4F18(v60, &v135, v59, *(&v59 + 1));

      LOWORD(BitmapInfo) = v125;
      v41 = v133;
      NumberOfComponents = v123;
    }
  }

  v61 = *v41;
  v124 = *v41;
  if ((BitmapInfo & 0x100) != 0)
  {
    if ((v61 & 4) != 0)
    {
      v62 = MEMORY[0x1E695F110];
LABEL_55:
      v63 = CGColorSpaceCreateWithName(*v62);
      v64 = 4353;
LABEL_56:
      v65 = 8;
      v133 = 2;
      goto LABEL_57;
    }

LABEL_54:
    v62 = MEMORY[0x1E695F108];
    goto LABEL_55;
  }

  if (v39)
  {
    goto LABEL_54;
  }

  v97 = CGImageGetBitsPerComponent(a1);
  if (v97 != 16)
  {
    if (v126)
    {
      v64 = 16385;
      v133 = 1;
    }

    else
    {
      v133 = 1;
      if (NumberOfComponents == 1)
      {
        v114 = v97;
        goto LABEL_122;
      }

      v64 = 16389;
    }

    v98 = 4;
    goto LABEL_134;
  }

  if (v126)
  {
    v64 = 4097;
    if ((v124 & 4) != 0)
    {
LABEL_93:
      v133 = 2;
      v98 = 8;
LABEL_134:
      v63 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      v65 = v98;
      goto LABEL_57;
    }

LABEL_131:
    v63 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
    goto LABEL_56;
  }

  if (NumberOfComponents != 1)
  {
    v64 = 4101;
    if ((v124 & 4) != 0)
    {
      goto LABEL_93;
    }

    goto LABEL_131;
  }

  v114 = 16;
  v133 = 2;
LABEL_122:
  v115 = CFXGPUDeviceGetMTLDevice(v129);
  if ((v124 & 4) != 0 || v114 == 16 || (swift_getObjectType(), (sub_1AF470C28())) && (swift_getObjectType(), (sub_1AF476284()))
  {
    v116 = *MEMORY[0x1E695F128];
    v117 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
    if (v114 != 16 || (v124 & 4) != 0)
    {
      v118 = v116;
    }

    else
    {
      v118 = *MEMORY[0x1E695F1A0];
    }

    v63 = CGColorSpaceCreateWithName(v118);
    swift_unknownObjectRelease();

    v64 = 0;
    v65 = v133;
  }

  else
  {
    v119 = 4 * v133;
    v63 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    swift_unknownObjectRelease();
    v65 = v119;
    v64 = 5;
  }

LABEL_57:
  v123 = v65;
  v132 = v65 * Width;
  v66 = *v7;
  v127 = v65 * Width * v34;
  v67 = v127 * v134;
  if (v66 && *(v7 + 16) == v67)
  {
    v68 = v63;
    v69 = v34;
    v70 = Width;
    v71 = *(v7 + 8);
    goto LABEL_62;
  }

  BufferWithLength = CFXGPUDeviceCreateBufferWithLength(v129, v67, 0);
  if (BufferWithLength)
  {
    v66 = BufferWithLength;
    v68 = v63;
    v69 = v34;
    v70 = Width;
    v73 = sub_1AFDFCEC8();
    [v66 setLabel_];

    swift_unknownObjectRelease();
    v71 = 0;
    *v7 = v66;
    *(v7 + 8) = 0;
    *(v7 + 16) = v67;
LABEL_62:
    v74 = 8 * v133;
    if ([swift_unknownObjectRetain_n() storageMode] == 2)
    {
      swift_unknownObjectRelease();
      v75 = 0;
    }

    else
    {
      v76 = [v66 contents];
      v77 = v66;
      v75 = &v76[v71];
    }

    v129 = v127 * v131;
    v78 = v70;
    v79 = v70;
    v80 = v69;
    v81 = v69;
    v82 = v68;
    v83 = sub_1AF903DE8(&v75[v127 * v131], v79, v81, v74, v132, v68, v64);
    if (!v83)
    {
      sub_1AF902768();
      swift_allocError();
      *v92 = 0xD000000000000026;
      *(v92 + 8) = 0x80000001AFF3A270;
      *(v92 + 16) = 0;
      swift_willThrow();

      swift_unknownObjectRelease();
      return;
    }

    v84 = v83;
    v128 = v78;
    CGContextSetBlendMode(v83, kCGBlendModeCopy);
    sub_1AFDFD9D8();
    v85 = v130;
    v86 = sub_1AF8E68F8(v130, 0.05);
    v87 = floor((v86 + sub_1AF8E68F8(v85, 0.5)) * 0.5 * 100.0 + 0.5) / 100.0;
    v88 = v124;
    if (v124 & 8) != 0 && v133 == 2 && (v125 & 0x100) != 0 && (v124)
    {
      CACurrentMediaTime();
      CGBitmapContext_unpremultiply(v84);
    }

    v89 = v126;
    if (v87 != 2.2)
    {
      v89 = 0;
    }

    if (v133 == 1 && v89 && (v88 & 0x8C) == 0)
    {
      CACurrentMediaTime();
      CGBitmapContext_fixIncorrectPremultiply(v84);
    }

    if (v123 > 3)
    {
      if (v123 == 4)
      {
        v91 = 70;
        goto LABEL_104;
      }

      if (v123 == 8)
      {
        if ((v125 & 0x100) != 0)
        {
          v91 = 115;
        }

        else
        {
          v91 = 110;
        }

LABEL_104:
        *(v7 + 24) = 1;
        if (v134 <= 1)
        {
          v100 = 2;
        }

        else
        {
          v100 = 3;
        }

        sub_1AF466BDC(v100, v7 + 32);
        if ((v88 & 4) == 0)
        {
          v91 = sub_1AF470B6C(v91);
        }

        sub_1AF46748C(v91, v7 + 32);
        sub_1AF46749C(v128, v7 + 32);
        sub_1AF4674A4(v80, v7 + 32);
        v101 = 1;
        sub_1AF4674AC(1, v7 + 32);
        if ((v88 & 0x60) != 0)
        {
          v101 = sub_1AF8DB86C(*(v7 + 32), *(v7 + 40), *(v7 + 48) | (*(v7 + 50) << 16));
        }

        sub_1AF4674B4(v101, v7 + 32);
        sub_1AF9027BC(1, v7 + 32);
        v102 = v134;
        sub_1AF4674C8(v134, v7 + 32);
        sub_1AF903E1C(v7 + 32);
        sub_1AF5F7474(2, v7 + 32);
        sub_1AF903E2C(v7 + 32);
        sub_1AF5F7484(1, v7 + 32);
        if (v102 < 2)
        {

          swift_unknownObjectRelease();
        }

        else
        {
          sub_1AF4674F0(v128, v80, 1, &v135);
          v103 = v135;
          v104 = v136;
          v105 = *(v7 + 56);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v133 = v104;
          v134 = v103;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v105 = sub_1AF4220C4(0, *(v105 + 2) + 1, 1, v105);
          }

          v107 = v129;
          v109 = *(v105 + 2);
          v108 = *(v105 + 3);
          if (v109 >= v108 >> 1)
          {
            v105 = sub_1AF4220C4(v108 > 1, v109 + 1, 1, v105);
          }

          swift_unknownObjectRelease();

          *(v105 + 2) = v109 + 1;
          v110 = &v105[64 * v109];
          v111 = v132;
          *(v110 + 4) = v107;
          *(v110 + 5) = v111;
          v112 = v133;
          v113 = v134;
          *(v110 + 6) = v127;
          *(v110 + 7) = v113;
          *(v110 + 8) = *(&v103 + 1);
          *(v110 + 9) = v112;
          *(v110 + 10) = v131;
          *(v110 + 11) = 0;
          *(v7 + 56) = v105;
        }

        return;
      }
    }

    else
    {
      if (v123 == 1)
      {
        v91 = 10;
        goto LABEL_104;
      }

      if (v123 == 2)
      {
        v91 = 30;
        goto LABEL_104;
      }
    }

    sub_1AF902768();
    swift_allocError();
    *v99 = xmmword_1AFE81700;
    *(v99 + 16) = 0;
    swift_willThrow();

    swift_unknownObjectRelease();
    return;
  }

  if (qword_1ED730EA0 != -1)
  {
    swift_once();
  }

  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF290F0);
  MEMORY[0x1B2718AE0](4271950, 0xE300000000000000);
  MEMORY[0x1B2718AE0](0x6E656C20666F2022, 0xEC00000020687467);
  v137 = v67;
  v93 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v93);

  MEMORY[0x1B2718AE0](0x706F206874697720, 0xEE0020736E6F6974);
  v137 = 0;
  type metadata accessor for MTLResourceOptions(0);
  sub_1AFDFE458();
  v94 = v135;
  v95 = sub_1AFDFDA08();
  if (qword_1ED731058 != -1)
  {
    v122 = v95;
    swift_once();
    v95 = v122;
  }

  *&v135 = 0;
  sub_1AF0D4F18(v95, &v135, v94, *(&v94 + 1));

  swift_unknownObjectRelease();
  sub_1AF902768();
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  swift_allocError();
  *v96 = 0xD000000000000018;
  *(v96 + 8) = 0x80000001AFF3A250;
  *(v96 + 16) = 0;
  swift_willThrow();
}

void sub_1AF8E7DE4(uint64_t a1, char *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v95 = a4;
  v96 = a5;
  v97 = a2;
  v98 = a3;
  sub_1AF0D0F04(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v94 = (&v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v16, v17);
  v93 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v92 - v21;
  sub_1AFDFBFD8();
  v23 = sub_1AFDFCF98();
  v25 = v24;

  if (v23 == 26230 && v25 == 0xE200000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {
    v26 = a1;
    v27 = sub_1AFDFC148();
    if (v6)
    {

      sub_1AFDFE518();
      __break(1u);
      return;
    }

    v29 = v27;
    v30 = v28;
    sub_1AF8FA2AC(v27, v28, v7, v98);
    sub_1AF439ED8(v29, v30);
    a1 = v26;
  }

  if (v23 == 1700951395 && v25 == 0xE400000000000000 || (sub_1AFDFEE28() & 1) != 0)
  {

    sub_1AF48EE18(a1, v7, v98);
    return;
  }

  if (v23 == 7894123 && v25 == 0xE300000000000000)
  {

    goto LABEL_15;
  }

  v31 = sub_1AFDFEE28();

  if (v31)
  {
LABEL_15:
    v32 = sub_1AFDFC148();
    if (!v6)
    {
      v34 = v32;
      v35 = v33;
      v36 = sub_1AFDFC128();
      v37 = *(v36 - 8);
      (*(v37 + 16))(v22, a1, v36);
      (*(v37 + 56))(v22, 0, 1, v36);
      sub_1AF465864(v34, v35, v22, v97, v98);
      sub_1AF456B8C(v22);
      sub_1AF439ED8(v34, v35);
      return;
    }

    v104 = v6;
    v38 = v6;
    sub_1AF4498F4(0, &qword_1ED7268D0);
    if (swift_dynamicCast())
    {
      if (v103 == 1)
      {
        sub_1AF467524(v101, v102, 1u);
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v99 = 0;
        v100 = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000026, 0x80000001AFF3A120);
        v39 = sub_1AFDFC028();
        MEMORY[0x1B2718AE0](v39);

        MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF3A150);
        v41 = v99;
        v40 = v100;
        v42 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v91 = v42;
          swift_once();
          v42 = v91;
        }

        v99 = 0;
        sub_1AF0D4F18(v42, &v99, v41, v40);

        v43 = sub_1AFDFC048();
        v44 = CGImageSourceCreateWithURL(v43, 0);

        if (v44)
        {
          ImageAtIndex = CGImageSourceCreateImageAtIndex(v44, 0, 0);
          if (ImageAtIndex)
          {
            v46 = ImageAtIndex;
            v47 = sub_1AFDFC128();
            v48 = *(v47 - 8);
            v49 = v94;
            (*(v48 + 16))(v94, a1, v47);
            (*(v48 + 56))(v49, 0, 1, v47);
            sub_1AF8E6C04(v46, v97, v98, v49, v95, v96);
            sub_1AF456B8C(v49);
            v78 = *v7;
            if (*v7)
            {
              sub_1AFDFC028();
              v79 = sub_1AFDFCEC8();

              [v78 setLabel_];

              goto LABEL_46;
            }

LABEL_45:
LABEL_46:

            return;
          }
        }

        v99 = 0;
        v100 = 0xE000000000000000;
        sub_1AFDFE218();

        v99 = 0xD000000000000018;
        v100 = 0x80000001AFF3A0B0;
        sub_1AFDFC128();
        sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
        v74 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v74);

        v75 = v99;
        v76 = v100;
        sub_1AF902768();
        swift_allocError();
        *v77 = v75;
        *(v77 + 8) = v76;
        *(v77 + 16) = 0;
        swift_willThrow();
        goto LABEL_45;
      }

      sub_1AF467524(v101, v102, v103);
    }

    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF317B0);
    swift_getErrorValue();
    sub_1AFDFEDD8();
    v53 = v101;
    v54 = v102;
    sub_1AF902768();
    swift_allocError();
    *v55 = v53;
    *(v55 + 8) = v54;
    *(v55 + 16) = 0;
    swift_willThrow();

    return;
  }

  sub_1AFDFBFD8();
  v50 = sub_1AFDFCF98();
  v52 = v51;

  if (v50 == 2053403509 && v52 == 0xE400000000000000)
  {
  }

  else
  {
    v56 = sub_1AFDFEE28();

    if ((v56 & 1) == 0)
    {
      v69 = sub_1AFDFC048();
      v60 = CGImageSourceCreateWithURL(v69, 0);

      if (v60)
      {
        v70 = CGImageSourceCreateImageAtIndex(v60, 0, 0);
        if (v70)
        {
          v71 = v70;
          v72 = sub_1AFDFC128();
          v73 = *(v72 - 8);
          (*(v73 + 16))(v15, a1, v72);
          (*(v73 + 56))(v15, 0, 1, v72);
          sub_1AF8E6C04(v71, v97, v98, v15, v95, v96);
          if (v6)
          {
            sub_1AF456B8C(v15);
          }

          else
          {
            sub_1AF456B8C(v15);
            v87 = *v7;
            if (*v7)
            {
              sub_1AFDFC028();
              v88 = sub_1AFDFCEC8();

              [v87 setLabel_];
            }
          }

          goto LABEL_58;
        }
      }

      v101 = 0;
      v102 = 0xE000000000000000;
      sub_1AFDFE218();

      v101 = 0xD000000000000018;
      v102 = 0x80000001AFF3A0B0;
      sub_1AFDFC128();
      sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
      v80 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v80);

LABEL_52:
      v81 = v101;
      v82 = v102;
      sub_1AF902768();
      swift_allocError();
      *v83 = v81;
      *(v83 + 8) = v82;
      *(v83 + 16) = 0;
      swift_willThrow();
      return;
    }
  }

  sub_1AF9032D0(&v101);
  if (v6)
  {
    return;
  }

  v57 = v101;
  v58 = v102;
  v59 = v103;

  if (!v57)
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1AFDFE218();

    v101 = 0xD000000000000026;
    v102 = 0x80000001AFF3A0D0;
    MEMORY[0x1B2718AE0](v58, v59);

    MEMORY[0x1B2718AE0](41, 0xE100000000000000);
    goto LABEL_52;
  }

  v94 = v7;
  v60 = v57;
  v61 = CGImageSourceCreateWithData(v60, 0);
  if (!v61)
  {
LABEL_54:
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_1AFDFE218();

    v101 = 0xD00000000000001BLL;
    v102 = 0x80000001AFF3A100;
    MEMORY[0x1B2718AE0](v58, v59);

    v84 = v101;
    v85 = v102;
    sub_1AF902768();
    swift_allocError();
    *v86 = v84;
    *(v86 + 8) = v85;
    *(v86 + 16) = 0;
    swift_willThrow();

LABEL_58:
    return;
  }

  v62 = v61;
  v63 = CGImageSourceCreateImageAtIndex(v61, 0, 0);
  if (!v63)
  {

    goto LABEL_54;
  }

  v64 = v63;

  v65 = sub_1AFDFC128();
  v66 = *(v65 - 8);
  v67 = v93;
  (*(v66 + 16))();
  (*(v66 + 56))(v67, 0, 1, v65);
  v68 = v94;
  sub_1AF8E6C04(v64, v97, v98, v67, v95, v96);
  sub_1AF456B8C(v67);
  v89 = *v68;
  if (*v68)
  {
    v90 = sub_1AFDFCEC8();

    [v89 setLabel_];
  }

  else
  {
  }
}

void *sub_1AF8E8B04(void *a1, uint64_t a2)
{
  v4 = [a1 height];
  CFXTextureDescriptorMakeDefault(&v24);
  sub_1AF466BDC(5, &v24);
  sub_1AF46748C(115, &v24);
  if (v4 <= 1)
  {
    v4 = 1;
  }

  sub_1AF46749C(v4, &v24);
  sub_1AF4674A4(v4, &v24);
  sub_1AF4674AC(1, &v24);
  v5 = log2f(fmaxf(v4, 1.0));
  v6 = floorf(v5);
  sub_1AF4674B4((v6 + 1.0), &v24);
  sub_1AF9027BC(1, &v24);
  sub_1AF4674C8(1, &v24);
  sub_1AF5F7474(2, &v24);
  sub_1AF5F7484(3, &v24);
  v7 = *(a2 + 16);
  v26 = v24;
  v27 = v25;
  v8 = CFXGPUDeviceCreateTexture(v7, &v26);
  *&v26 = 0;
  *(&v26 + 1) = 0xE000000000000000;
  sub_1AFDFE218();

  *&v26 = 0xD000000000000010;
  *(&v26 + 1) = 0x80000001AFF3A460;
  v9 = [a1 label];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1AFDFCEF8();
    v13 = v12;
  }

  else
  {
    v13 = 0xE700000000000000;
    v11 = 0x64656D616E6E55;
  }

  swift_getObjectType();
  MEMORY[0x1B2718AE0](v11, v13);

  MEMORY[0x1B2718AE0](93, 0xE100000000000000);
  v14 = sub_1AFDFCEC8();

  [v8 setLabel_];

  sub_1AFDFF308();

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v15 = sub_1AFDFF2E8();
  *&v26 = 0xD000000000000015;
  *(&v26 + 1) = 0x80000001AFF3A480;
  v27 = 0;
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v30 = v15;
  v16 = sub_1AF73BD84(&v26, 0, 0, 0);
  v18 = v17;

  if (v16)
  {
    v19 = sub_1AF6F4158();
    swift_getObjectType();
    swift_unknownObjectRetain();
    v20 = sub_1AFDFCEC8();
    [v19 pushDebugGroup_];

    sub_1AF6F3BD8();
    swift_unknownObjectRelease();
    [v19 setTexture:a1 atIndex:0];
    [v19 setTexture:sub_1AF47371C() atIndex:1];
    swift_unknownObjectRelease();
    sub_1AF6F4400(v16, v8, 0);
    [v19 popDebugGroup];
    swift_unknownObjectRelease();
    if ([v8 mipmapLevelCount] > 1)
    {
      v21 = sub_1AF6F3F0C();
      v22 = sub_1AFDFCEC8();
      [v21 pushDebugGroup_];

      sub_1AF6F3BD8();
      swift_unknownObjectRelease();
      sub_1AF8E8F74(v8, v21);
      [v21 popDebugGroup];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v8;
}

uint64_t sub_1AF8E8F74(void *a1, void *a2)
{
  v4 = sub_1AFDFC4F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = [a1 mipmapLevelCount];
  if (result >= 2)
  {
    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v10 = sub_1AFDFC538();
    sub_1AF477C68(v10, qword_1ED73B608);
    sub_1AFDFC528();
    sub_1AFDFC4D8();
    swift_unknownObjectRetain();
    v11 = sub_1AFDFC528();
    v12 = sub_1AFDFDB98();
    swift_unknownObjectRelease();
    if (sub_1AFDFDCE8())
    {
      HIDWORD(v30) = v12;
      v31 = a2;
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32 = v14;
      *v13 = 136315138;
      v15 = [a1 label];
      if (v15)
      {
        v16 = v15;
        v17 = sub_1AFDFCEF8();
        v19 = v18;

        v20 = v17;
      }

      else
      {
        v20 = sub_1AF473794();
        v19 = v21;
      }

      v22 = sub_1AF740B70(v20, v19, &v32);

      *(v13 + 4) = v22;
      v23 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v11, BYTE4(v30), v23, "generateMipmap", "CB %s", v13, 0xCu);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
      MEMORY[0x1B271DEA0](v14, -1, -1);
      MEMORY[0x1B271DEA0](v13, -1, -1);

      a2 = v31;
    }

    else
    {
    }

    v24 = [a1 pixelFormat];
    if ((v24 - 160) <= 0x3A && ((1 << (v24 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1AFDFE218();

      v32 = 0xD000000000000023;
      v33 = 0x80000001AFF39FA0;
      v25 = sub_1AF4720E8([a1 pixelFormat]);
      MEMORY[0x1B2718AE0](v25);

      v27 = v32;
      v26 = v33;
      v28 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v29 = v28;
        swift_once();
        v28 = v29;
      }

      v32 = 0;
      sub_1AF0D4F18(v28, &v32, v27, v26);
    }

    else
    {
      [a2 generateMipmapsForTexture_];
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t *sub_1AF8E9348(uint64_t *result, void *a2, char a3, void *a4)
{
  v4 = *result;
  if (*result)
  {
    v7 = result[1];
    v8 = result[7];
    v9 = *(v8 + 16);
    if (v9)
    {
      swift_unknownObjectRetain();
      v10 = (v8 + 48);
      v11 = v4;
      v41 = v9;
      do
      {
        v12 = *(v10 - 2);
        v44 = *v10;
        v45 = *(v10 - 1);
        v43 = *(v10 + 1);
        v13 = a4;
        v15 = v10[3];
        v14 = v10[4];
        v16 = a2;
        v17 = v10[5];
        swift_unknownObjectRetain();
        sub_1AF4674F0(0, 0, 0, &v49);
        v18 = v50;
        v19 = v49;
        v49 = v43;
        v50 = v15;
        v47 = v19;
        v48 = v18;
        v40 = v17;
        a2 = v16;
        v39 = v14;
        a4 = v13;
        [v13 copyFromBuffer:v11 sourceOffset:v12 + v7 sourceBytesPerRow:v45 sourceBytesPerImage:v44 sourceSize:&v49 toTexture:v16 destinationSlice:v39 destinationLevel:v40 destinationOrigin:&v47];
        swift_unknownObjectRelease();
        v10 += 8;
        --v9;
      }

      while (v9);
      if (v41 != [v16 arrayLength] || (a3 & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v20 = result[1];
      v21 = result[2];
      v22 = result;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = [a2 depth];
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = v21 / v24;
      v46 = a2;
      v26 = sub_1AF473390(0);
      v28 = v27;
      v30 = v29;
      v47 = *(v22 + 2);
      v48 = v22[6];
      swift_unknownObjectRetain();
      v49 = *(v22 + 2);
      v50 = v22[6];
      v31 = sub_1AF467494(&v49);
      v32 = sub_1AF445CA8(&v47);
      if (v31 - 160 <= 0x3A && ((1 << (v31 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
      {
        if ((v31 - 186) > 0x20u)
        {
          LODWORD(v33) = 1;
        }

        else
        {
          v33 = qword_1AFE84818[(v31 - 186)];
        }

        v34 = a3;
        v35 = 16 * ((v33 + v32 - 1) / v33);
      }

      else
      {
        v35 = sub_1AF47289C(v31) * v32;
        v34 = a3;
      }

      sub_1AF4674F0(0, 0, 0, &v49);
      v36 = v50;
      v37 = v49;
      *&v49 = v26;
      *(&v49 + 1) = v28;
      v50 = v30;
      v47 = v37;
      v48 = v36;
      v38 = v35;
      a2 = v46;
      [a4 copyFromBuffer:v4 sourceOffset:v20 sourceBytesPerRow:v38 sourceBytesPerImage:v25 sourceSize:&v49 toTexture:v46 destinationSlice:0 destinationLevel:0 destinationOrigin:&v47];
      swift_unknownObjectRelease();
      if ((v34 & 1) == 0)
      {
        return swift_unknownObjectRelease();
      }
    }

    sub_1AF8E8F74(a2, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF8E9638(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6, char a7, void *a8)
{
  result = *a5;
  if (*a5)
  {
    v42 = *(a5 + 8);
    v43 = *a5;
    swift_unknownObjectRetain();
    v48 = *(a5 + 32);
    v49 = *(a5 + 48);
    if (sub_1AF478AC0(&v48) >= 2)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v15 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v39 = v15;
        swift_once();
        v15 = v39;
      }

      *&v48 = 0;
      sub_1AF0D4F18(v15, &v48, 0xD00000000000002ELL, 0x80000001AFF39F70);
    }

    if (a2 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2;
    }

    if (v16 >= 1024)
    {
      v17 = 1024;
    }

    else
    {
      v17 = v16;
    }

    if (a1 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v18 >= 1024)
    {
      v19 = 1024;
    }

    else
    {
      v19 = v18;
    }

    v20 = v19 * v17;
    if (a4)
    {
      v21 = v19 * v17;
    }

    else
    {
      v21 = a3;
    }

    if (v20 >= v21)
    {
      v20 = v21;
    }

    v41 = v20;
    v48 = *(a5 + 32);
    v49 = *(a5 + 48);
    v22 = (sub_1AF445CA8(&v48) / v19);
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v48 = *(a5 + 32);
    v49 = *(a5 + 48);
    v24 = (sub_1AF445CB0(&v48) / v17);
    if (v24 <= 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v48 = *(a5 + 32);
    v49 = *(a5 + 48);
    v26 = sub_1AF467494(&v48);
    v48 = *(a5 + 32);
    v49 = *(a5 + 48);
    v27 = sub_1AF445CA8(&v48);
    if (v26 - 160 <= 0x3A && ((1 << (v26 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
    {
      if ((v26 - 186) > 0x20u)
      {
        LODWORD(v28) = 1;
      }

      else
      {
        v28 = qword_1AFE84818[(v26 - 186)];
      }

      v29 = 16 * ((v28 + v27 - 1) / v28);
    }

    else
    {
      v29 = sub_1AF47289C(v26) * v27;
    }

    v48 = *(a5 + 32);
    v49 = *(a5 + 48);
    v30 = sub_1AF467494(&v48);
    swift_getObjectType();
    v31 = sub_1AF472034();
    v32 = v25;
    if (v30 - 160 <= 0x3A)
    {
      v32 = v25;
      if (((1 << (v30 + 96)) & 0x7FDF1FF7CFD54FFLL) != 0)
      {
        if ((v30 - 186) > 0x20u)
        {
          v33 = 1;
        }

        else
        {
          v33 = word_1AFE84920[(v30 - 186)];
        }

        v32 = (v25 + v33 - 1) / v33;
      }
    }

    sub_1AF472C1C(v23, v25, 1, 0, v30);
    sub_1AF4674F0(v23, v25, 1, &v48);
    if (v21)
    {
      v34 = 0;
      v40 = v48;
      v35 = v49;
      do
      {
        if ((a4 & 0xFF00) == 0x100)
        {
          sub_1AF4674F0(0, 0, v34, &v48);
          v38 = 0;
          v36 = v48;
          v37 = v49;
        }

        else
        {
          sub_1AF4674F0(0, 0, 0, &v48);
          v36 = v48;
          v37 = v49;
          v38 = v34;
        }

        v48 = v40;
        v49 = v35;
        v46 = v36;
        v47 = v37;
        [a8 copyFromBuffer:v43 sourceOffset:v42 + v32 * v29 * (v34 / v19) + v34 % v19 * v31 sourceBytesPerRow:v29 sourceBytesPerImage:0 sourceSize:&v48 toTexture:a6 destinationSlice:v38 destinationLevel:0 destinationOrigin:&v46];
        ++v34;
      }

      while (v41 != v34);
    }

    if (a7)
    {
      sub_1AF8E8F74(a6, a8);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1AF8E9A5C(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v182 = a3;
  v9 = sub_1AFDFC4F8();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v158 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v158 - v16;
  v18 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v181 = v15;
  v183 = a4;
  v19 = qword_1ED7270F0;
  swift_unknownObjectRetain();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1AFDFC538();
  sub_1AF477C68(v20, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  sub_1AF44222C(a1, &v213);
  v21 = sub_1AFDFC528();
  LODWORD(v176) = sub_1AFDFDB88();
  sub_1AF478A6C(a1);
  v22 = sub_1AFDFDCE8();
  v179 = v17;
  v180 = a2;
  v177 = a5;
  v178 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v174 = v23;
    v175 = swift_slowAlloc();
    *&v213 = v175;
    *v23 = 136315138;
    v24 = sub_1AF8DC964(*(a1 + 32), *(a1 + 40), *(a1 + 48) | (*(a1 + 50) << 16));
    v25 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
    [v25 setCountStyle_];
    v26 = [v25 stringFromByteCount_];
    v27 = sub_1AFDFCEF8();
    v28 = v9;
    v30 = v29;

    v17 = v179;
    v31 = sub_1AF740B70(v27, v30, &v213);
    v9 = v28;
    v32 = v181;

    v33 = v174;
    *(v174 + 1) = v31;
    v34 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v21, v176, v34, "uploadTextureToGPU", "%s", v33, 0xCu);
    v35 = v175;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v175);
    MEMORY[0x1B271DEA0](v35, -1, -1);
    a2 = v180;
    MEMORY[0x1B271DEA0](v33, -1, -1);
  }

  else
  {

    v32 = v181;
  }

  v37 = *(v32 + 16);
  v169 = v9;
  v37(v12, v17, v9);
  sub_1AFDFC578();
  swift_allocObject();
  v38 = sub_1AFDFC568();
  v167 = a1;
  v168 = v38;
  v39 = *(a1 + 32);
  sub_1AF8EB2A4(v39, *(a1 + 40), *(a1 + 48) | (*(a1 + 50) << 16));
  v40 = v39;
  v42 = v41;
  v44 = v43;
  *&v210 = v39;
  *(&v210 + 1) = v41;
  LODWORD(v211) = v43;
  *&v213 = v39;
  *(&v213 + 1) = v41;
  LODWORD(v214) = v43;
  v45 = sub_1AF467494(&v213);
  if (v45 <= 0x37u && ((1 << v45) & 0xE0000003D07C00) != 0)
  {
    v46 = CFXGPUDeviceGetMTLDevice(*(v182 + 16));
    swift_getObjectType();
    v47 = sub_1AF476284();
    swift_unknownObjectRelease();
    if ((v47 & 1) == 0 || (*&v213 = v40, *(&v213 + 1) = v42, LODWORD(v214) = v44, (sub_1AF4676C8(&v213) & 2) != 0))
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v213 = 0;
      *(&v213 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      *&v212[0] = 0xD000000000000024;
      *(&v212[0] + 1) = 0x80000001AFF39F20;
      *&v213 = v40;
      *(&v213 + 1) = v42;
      LODWORD(v214) = v44;
      v48 = sub_1AF467494(&v213);
      v49 = sub_1AF4720E8(v48);
      MEMORY[0x1B2718AE0](v49);

      v50 = v212[0];
      v51 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v155 = v51;
        swift_once();
        v51 = v155;
      }

      *&v213 = 0;
      sub_1AF0D4F18(v51, &v213, v50, *(&v50 + 1));
    }

    else
    {
      LODWORD(v210) = 33686018;
    }
  }

  v52 = *a2;
  if ((*a2 & 8) != 0)
  {
    v213 = v210;
    *&v214 = v211;
    v53 = (sub_1AF467494(&v213) == 125 || (v213 = v210, *&v214 = v211, sub_1AF467494(&v213) == 115)) && (v52 & 1) == 0;
  }

  else
  {
    v53 = 0;
  }

  v54 = *(v182 + 16);
  v55 = [CFXGPUDeviceGetMTLDevice(v54) readWriteTextureSupport];
  swift_unknownObjectRelease();
  if (v55 == 2)
  {
    if ((v213 = v210, *&v214 = v211, v56 = sub_1AF467494(&v213), v57 = sub_1AF470AB0(v56), (v57 - 73) <= 0x34) && ((1 << (v57 - 73)) & 0x1C070000000003) != 0 || (v57 - 10) <= 0x3C && ((1 << (v57 - 10)) & 0x100000000000A019) != 0)
    {
      if (v53)
      {
        v213 = v210;
        *&v214 = v211;
        v58 = sub_1AF4676C8(&v213);
        sub_1AF5F7484(v58 | 2, &v210);
      }
    }
  }

  v59 = v210;
  if (v183)
  {
    v60 = v211 | (BYTE2(v211) << 16);
    v175 = BYTE2(v210);
    v176 = BYTE1(v210);
    v173 = DWORD1(v210);
    v174 = BYTE3(v210);
    v61 = v210 | (BYTE1(v210) << 8) | (BYTE2(v210) << 16) | (BYTE3(v210) << 24) | (DWORD1(v210) << 32);
    v171 = HIDWORD(v210);
    v172 = DWORD2(v210);
    v62 = DWORD2(v210) | (HIDWORD(v210) << 32);
    v63 = swift_unknownObjectRetain();
    v170 = v60;
    if (sub_1AF8DAAD0(v63, v61, v62, v60))
    {
      goto LABEL_38;
    }

    swift_unknownObjectRelease();
    v65 = v175;
    v64 = v176;
    v67 = v173;
    v66 = v174;
    v69 = v171;
    v68 = v172;
    v70 = v170;
  }

  else
  {
    v64 = BYTE1(v210);
    v65 = BYTE2(v210);
    v66 = BYTE3(v210);
    v67 = DWORD1(v210);
    v68 = DWORD2(v210);
    v69 = HIDWORD(v210);
    v70 = v211 | (BYTE2(v211) << 16);
  }

  LOBYTE(v213) = v59;
  v175 = v65;
  v176 = v64;
  BYTE1(v213) = v64;
  BYTE2(v213) = v65;
  v173 = v67;
  v174 = v66;
  BYTE3(v213) = v66;
  *(&v213 + 4) = __PAIR64__(v68, v67);
  v171 = v69;
  v172 = v68;
  HIDWORD(v213) = v69;
  LOWORD(v214) = v70;
  v170 = v70;
  v71 = HIWORD(v70);
  BYTE2(v214) = BYTE2(v70);
  *(&v214 + 3) = *(&v211 + 3);
  BYTE7(v214) = HIBYTE(v211);
  v72 = CFXGPUDeviceCreateTexture(v54, &v213);
  if (!v72)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v213 = 0;
    *(&v213 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v212[0] = v213;
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF39E10);
    LOBYTE(v213) = v59;
    BYTE1(v213) = v176;
    BYTE2(v213) = v175;
    BYTE3(v213) = v174;
    *(&v213 + 4) = __PAIR64__(v172, v173);
    HIDWORD(v213) = v171;
    BYTE2(v214) = v71;
    LOWORD(v214) = v170;
    *(&v214 + 3) = *(&v211 + 3);
    BYTE7(v214) = HIBYTE(v211);
    type metadata accessor for TextureDescriptor(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x203A6C6562616C20, 0xE800000000000000);
    v84 = [v178 label];
    v85 = v179;
    if (v84)
    {
      v86 = v84;
      v87 = sub_1AFDFCEF8();
      v89 = v88;
    }

    else
    {
      v89 = 0xE400000000000000;
      v87 = 1819047278;
    }

    v115 = v169;
    MEMORY[0x1B2718AE0](v87, v89);

    v116 = v212[0];
    v117 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v156 = v117;
      swift_once();
      v117 = v156;
    }

    *&v213 = 0;
    sub_1AF0D4F18(v117, &v213, v116, *(&v116 + 1));

    sub_1AF8F7290(v168, "uploadTextureToGPU");
    swift_unknownObjectRelease();

    (*(v181 + 8))(v85, v115);
    return 0;
  }

  v73 = v72;
  v74 = [v178 label];
  v75 = v73;
  v76 = v74;
  v183 = v75;
  [v75 setLabel_];

LABEL_38:
  v166 = v59;
  v208 = *(&v211 + 3);
  v209 = HIBYTE(v211);
  v77 = sub_1AF6F3F0C();
  v78 = sub_1AFDFCEC8();
  [v77 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  v80 = v180[4];
  v79 = v180[5];
  v81 = v180[6];
  v82 = *(v180 + 56);
  v83 = *(v180 + 57);
  v164 = v81;
  v162 = v82;
  v163 = v83 << 8;
  v165 = v83;
  if (v83 && v83 != 3)
  {
    v36 = v183;
    sub_1AF8E9638(v80, v79, v81, (v83 << 8) | v82 & 1, v167, v183, !v53 & (v52 >> 6), v77);
  }

  else
  {
    v36 = v183;
    sub_1AF8E9348(v167, v183, !v53 & (v52 >> 6), v77);
  }

  [v77 popDebugGroup];
  swift_unknownObjectRelease();
  if (!v53)
  {
    v107 = v168;
    v108 = v169;
    v109 = v179;
    v110 = v181;
LABEL_80:
    sub_1AF8F7290(v107, "uploadTextureToGPU");
    swift_unknownObjectRelease();

    (*(v110 + 8))(v109, v108);
    return v36;
  }

  v167 = v79;
  v90 = [CFXGPUDeviceGetMTLDevice(v54) readWriteTextureSupport];
  v91 = v183;
  swift_unknownObjectRelease();
  if (v90 != 2 || ((ObjectType = swift_getObjectType(), v96 = sub_1AF470AB0([v91 pixelFormat]), (v96 - 73) > 0x34) || ((1 << (v96 - 73)) & 0x1C070000000003) == 0) && ((v96 - 10) > 0x3C || ((1 << (v96 - 10)) & 0x100000000000A019) == 0))
  {
    CFXTextureDescriptorFromMTLTexture(v91, v92, v93, v94, &v206);
    sub_1AF5F7484(5, &v206);
    v213 = v206;
    *&v214 = v207;
    v111 = CFXGPUDeviceCreateTexture(v54, &v213);
    if (!v111)
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v213 = 0;
      *(&v213 + 1) = 0xE000000000000000;
      sub_1AFDFE218();
      v212[0] = v213;
      MEMORY[0x1B2718AE0](0xD00000000000003FLL, 0x80000001AFF39E70);
      v118 = [v183 label];
      v119 = v169;
      v120 = v181;
      if (v118)
      {
        v121 = v118;
        v122 = sub_1AFDFCEF8();
        v124 = v123;
      }

      else
      {
        v124 = 0xE200000000000000;
        v122 = 16718;
      }

      MEMORY[0x1B2718AE0](v122, v124);

      MEMORY[0x1B2718AE0](0x206874697720, 0xE600000000000000);
      v213 = v206;
      *&v214 = v207;
      type metadata accessor for TextureDescriptor(0);
      sub_1AFDFE458();
      v153 = v212[0];
      v154 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v157 = v154;
        swift_once();
        v154 = v157;
      }

      *&v213 = 0;
      sub_1AF0D4F18(v154, &v213, v153, *(&v153 + 1));
      swift_unknownObjectRelease();

      sub_1AF8F7290(v168, "uploadTextureToGPU");
      swift_unknownObjectRelease();

      (*(v120 + 8))(v179, v119);
      return 0;
    }

    v112 = v111;
    v161 = v80;
    v113 = [v91 label];
    if (v113)
    {
      v114 = v113;
      sub_1AFDFCEF8();
    }

    v125 = sub_1AFDFCEC8();

    [v112 setLabel_];

    v126 = objc_allocWithZone(MEMORY[0x1E6974128]);
    swift_unknownObjectRetain();
    v159 = [v126 init];
    v127 = [v159 colorAttachments];
    v128 = [v127 objectAtIndexedSubscript_];

    [v128 setTexture_];
    [v128 setLoadAction_];
    [v128 setStoreAction_];
    [v128 setClearColor_];
    [v128 setLevel_];
    v160 = v112;
    swift_unknownObjectRelease();

    v129 = [v183 pixelFormat];

    sub_1AF8989FC(0xD000000000000010, 0x80000001AFF39ED0, 0xD00000000000001ELL, 0x80000001AFF39E50, MEMORY[0x1E69E7CC0], v212);
    v203 = v212[8];
    v204 = v212[9];
    v205 = v212[10];
    v199 = v212[4];
    v200 = v212[5];
    v201 = v212[6];
    v202 = v212[7];
    v195 = v212[0];
    v196 = v212[1];
    v197 = v212[2];
    v198 = v212[3];
    sub_1AF5FF2F0(&v185);
    v187 = xmmword_1AFE68E40;
    v188 = xmmword_1AFE68E40;
    v185 = xmmword_1AFE68E40;
    v186 = xmmword_1AFE68E40;
    v191 = xmmword_1AFE68E40;
    v192 = xmmword_1AFE68E40;
    v193 = xmmword_1AFE68E40;
    v194 = xmmword_1AFE68E40;
    sub_1AFDFF308();
    sub_1AF6021F8(v212, &v213);
    sub_1AF89747C(&v184);
    sub_1AF602254(v212);
    MEMORY[0x1B271ACB0](v129);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    sub_1AFDFF2A8();
    v248 = v185;
    v249 = v186;
    v250 = v187;
    v251 = v188;
    sub_1AF5FF304();
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    MEMORY[0x1B271ACB0](3);
    sub_1AFDFF2A8();
    sub_1AFDFF2A8();
    v130 = sub_1AFDFF2E8();
    v221 = v203;
    v222 = v204;
    v223 = v205;
    v217 = v199;
    v218 = v200;
    v219 = v201;
    v220 = v202;
    v213 = v195;
    v214 = v196;
    v215 = v197;
    v216 = v198;
    v225 = 0u;
    v226 = 0u;
    v227 = 0u;
    v228 = 0u;
    v224 = v129;
    v229 = 0;
    v230 = 1;
    v231 = v191;
    v232 = v192;
    v233 = v193;
    v234 = v194;
    v236 = 0;
    v235 = 0;
    v237 = 3;
    v238 = 0;
    v239 = 0;
    v240 = 2;
    v243 = 0;
    v241 = 0;
    v242 = 0;
    v244 = 257;
    v245 = v189;
    v246 = v190;
    v247 = v130;
    v131 = sub_1AF730058(&v213, 0);
    v133 = v132;
    v135 = v134;
    v136 = v134;

    sub_1AF602304(&v213);
    if (v136)
    {
      v137 = 0;
    }

    else
    {
      swift_unknownObjectRetain();
      v135 = 0;
      v137 = v131;
    }

    sub_1AF6022A8(v131, v133, v135);
    v138 = v159;
    v139 = sub_1AF6F3D60(v159, 0, 0);
    swift_getObjectType();
    v140 = sub_1AFDFCEC8();
    [v139 pushDebugGroup_];

    sub_1AF6F3BD8();
    swift_unknownObjectRelease();
    [v139 setRenderPipelineState_];
    [v139 setFragmentTexture:v183 atIndex:0];
    sub_1AF6F5C0C(1);
    [v139 popDebugGroup];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v36 = v160;
    v108 = v169;
    v141 = v180;
    v110 = v181;
    goto LABEL_75;
  }

  v160 = ObjectType;
  v97 = sub_1AF6F4158();
  v161 = v80;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v98 = sub_1AFDFCEC8();
  [v97 pushDebugGroup_];

  sub_1AF6F3BD8();
  v99 = [v183 pixelFormat];
  if (v99 != 11 && v99 != 71 && v99 != 81)
  {
    swift_unknownObjectRelease();
    sub_1AFDFF308();

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v142 = sub_1AFDFF2E8();
    *&v213 = 0xD00000000000001DLL;
    *(&v213 + 1) = 0x80000001AFF39E30;
    v214 = 0uLL;
    *&v215 = MEMORY[0x1E69E7CC0];
    *(&v215 + 1) = v142;
    v143 = sub_1AF73BD84(&v213, 0, 0, 0);
    v145 = v144;

    v146 = v183;
    [v97 setTexture:v183 atIndex:0];
    sub_1AF6F448C(v143, v146, 0);
    goto LABEL_74;
  }

  sub_1AFDFF308();

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v100 = sub_1AFDFF2E8();
  *&v213 = 0xD00000000000001DLL;
  *(&v213 + 1) = 0x80000001AFF39E30;
  v214 = 0uLL;
  *&v215 = MEMORY[0x1E69E7CC0];
  *(&v215 + 1) = v100;
  v101 = sub_1AF73BD84(&v213, 0, 0, 0);
  v103 = v102;

  v104 = v183;
  v105 = [v183 newTextureViewWithPixelFormat_];
  if (v105)
  {
    v106 = v105;
    swift_unknownObjectRelease();
    [v97 setTexture:v106 atIndex:0];
    sub_1AF6F448C(v101, v104, 0);
    swift_unknownObjectRelease();
LABEL_74:
    swift_unknownObjectRelease();
    v141 = v180;
    [v97 popDebugGroup];
    swift_unknownObjectRelease();
    v108 = v169;
    v110 = v181;
    v36 = v183;
LABEL_75:
    LOBYTE(v195) = v166;
    BYTE1(v195) = v176;
    BYTE2(v195) = v175;
    BYTE3(v195) = v174;
    *(&v195 + 4) = __PAIR64__(v172, v173);
    HIDWORD(v195) = v171;
    LOWORD(v196) = v170;
    BYTE2(v196) = BYTE2(v170);
    *(&v196 + 3) = v208;
    BYTE7(v196) = v209;
    v147 = sub_1AF8FE1B8(&v195);
    v109 = v179;
    if (v147 >= 2)
    {
      v148 = v110;
      v149 = sub_1AF6F3F0C();
      v150 = sub_1AFDFCEC8();
      [v149 pushDebugGroup_];

      sub_1AF6F3BD8();
      swift_unknownObjectRelease();
      sub_1AF8E8F74(v36, v149);
      [v149 popDebugGroup];
      swift_unknownObjectRelease();
      v110 = v148;
    }

    if (v165 != 3)
    {
      v151 = sub_1AF8EB578(v36, v161, v167, v164, v163 | v162 & 1u, v141, v182);
      swift_unknownObjectRelease();
      v36 = v151;
    }

    v107 = v168;
    goto LABEL_80;
  }

  *&v212[0] = 0;
  *(&v212[0] + 1) = 0xE000000000000000;
  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD00000000000002BLL, 0x80000001AFF39EF0);
  *&v195 = v104;
  sub_1AFDFEDD8();
  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1AF8EB2A4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *v3;
  v34 = a2;
  v35 = a3;
  v5 = *(v3 + 28);
  v6 = v5 >> 8;
  if ((v5 & 0xFF00) != 0x300 && v6 != 0)
  {
    v11 = v3[4];
    v12 = v3[5];
    if (v12 <= 1)
    {
      v12 = 1;
    }

    if (v12 >= 1024)
    {
      v13 = 1024;
    }

    else
    {
      v13 = v12;
    }

    if (v11 <= 1)
    {
      v11 = 1;
    }

    if (v11 >= 1024)
    {
      v14 = 1024;
    }

    else
    {
      v14 = v11;
    }

    if (v5)
    {
      v15 = v14 * v13;
    }

    else
    {
      v15 = v3[6];
    }

    if (v14 * v13 < v15)
    {
      v15 = v14 * v13;
    }

    if (v6 == 1)
    {
      v16 = 7;
    }

    else
    {
      v16 = 3;
    }

    if (v6 == 1)
    {
      v17 = v15;
    }

    else
    {
      v17 = 1;
    }

    if (v6 == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v15;
    }

    sub_1AF466BDC(v16, &v33);
    sub_1AF4674AC(v17, &v33);
    sub_1AF4674C8(v18, &v33);
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v19 = (sub_1AF445CA8(&v30) / v14);
    if (v19 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v19;
    }

    sub_1AF46749C(v20, &v33);
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v21 = (sub_1AF445CB0(&v30) / v13);
    if (v21 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    sub_1AF4674A4(v22, &v33);
    v30 = a1;
    v31 = a2;
    v32 = a3;
    v23 = sub_1AF467494(&v30);
    sub_1AF46748C(v23, &v33);
    if ((v4 & 0x40) != 0)
    {
      v30 = a1;
      v31 = a2;
      v32 = a3;
      v24 = sub_1AF467494(&v30) - 160;
      if (v24 > 0x3A || ((1 << v24) & 0x7FDF1FF7CFD54FFLL) == 0)
      {
        v28 = sub_1AF8DB86C(v33, v34, v35 | (BYTE2(v35) << 16));
        goto LABEL_44;
      }

      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1AFDFE218();

      v30 = a1;
      v31 = a2;
      v32 = a3;
      v25 = sub_1AF467494(&v30);
      v26 = sub_1AF4720E8(v25);
      MEMORY[0x1B2718AE0](v26);

      v27 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v29 = v27;
        swift_once();
        v27 = v29;
      }

      v30 = 0;
      sub_1AF0D4F18(v27, &v30, 0xD00000000000001BLL, 0x80000001AFF3A070);
    }

    v28 = 1;
LABEL_44:
    sub_1AF4674B4(v28, &v33);
  }

  sub_1AF5F7474(2, &v33);
  sub_1AF5F7484(1, &v33);
}

uint64_t sub_1AF8EB578(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7)
{
  CFXTextureDescriptorFromMTLTexture(a1, a2, a3, a4, &v62);
  v13 = v62;
  sub_1AF8EB2A4(v62, *(&v62 + 1), v63 | (BYTE2(v63) << 16));
  v16 = v13;
  v17 = v14;
  v18 = v13 >> 8;
  v19 = v13 >> 16;
  v20 = v13 >> 24;
  v21 = HIDWORD(v13);
  if (a3 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = a3;
  }

  if (v22 >= 1024)
  {
    v22 = 1024;
  }

  if (a2 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = a2;
  }

  if (v23 >= 1024)
  {
    v24 = 1024;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(a7 + 16);
  v26 = a5;
  LOBYTE(v62) = v16;
  v27 = v24 * v22;
  v28 = v18;
  BYTE1(v62) = v18;
  v53 = v20;
  v54 = v19;
  BYTE2(v62) = v19;
  v46 = HIBYTE(v26);
  BYTE3(v62) = v20;
  if (v26)
  {
    v29 = v27;
  }

  else
  {
    v29 = a4;
  }

  v49 = v29;
  if (v27 >= v29)
  {
    v27 = v29;
  }

  v55 = v27;
  v51 = HIDWORD(v14);
  v52 = v21;
  DWORD1(v62) = v21;
  *(&v62 + 1) = v14;
  v48 = HIWORD(v15);
  BYTE2(v63) = BYTE2(v15);
  v50 = v15;
  LOWORD(v63) = v15;
  v56 = a1;
  v57 = CFXGPUDeviceCreateTexture(v25, &v62);
  v30 = [a1 label];
  if (v30)
  {
    v31 = v30;
    sub_1AFDFCEF8();
  }

  v32 = sub_1AFDFCEC8();

  [v57 setLabel_];

  v33 = sub_1AF6F3F0C();
  v34 = sub_1AFDFCEC8();
  [v33 pushDebugGroup_];

  sub_1AF6F3BD8();
  LOBYTE(v62) = v16;
  BYTE1(v62) = v28;
  BYTE2(v62) = v54;
  BYTE3(v62) = v53;
  *(&v62 + 4) = __PAIR64__(v17, v52);
  HIDWORD(v62) = v51;
  BYTE2(v63) = v48;
  LOWORD(v63) = v50;
  v47 = sub_1AF445CA8(&v62);
  LOBYTE(v62) = v16;
  BYTE1(v62) = v28;
  BYTE2(v62) = v54;
  BYTE3(v62) = v53;
  *(&v62 + 4) = __PAIR64__(v17, v52);
  HIDWORD(v62) = v51;
  BYTE2(v63) = v48;
  LOWORD(v63) = v50;
  v35 = sub_1AF445CB0(&v62);
  sub_1AF4674F0(v47, v35, 1, &v62);
  if (!v49)
  {
LABEL_26:
    swift_unknownObjectRelease();
    sub_1AF8E8F74(v57, v33);
    [v33 popDebugGroup];
    swift_unknownObjectRelease();
    return v57;
  }

  v36 = 0;
  v37 = v62;
  v38 = v63;
  while (1)
  {
    sub_1AF4674F0(v36 % v24 * v37, v36 / v24 * *(&v37 + 1), 0, &v62);
    v41 = v62;
    v42 = v63;
    if (v46 != 1)
    {
      break;
    }

    sub_1AF4674F0(0, 0, v36, &v62);
    v39 = v63;
    v40 = v62;
    v62 = v41;
    v63 = v42;
    v60 = v37;
    v61 = v38;
    v58 = v40;
    v59 = v39;
    [v33 copyFromTexture:v56 sourceSlice:0 sourceLevel:0 sourceOrigin:&v62 sourceSize:&v60 toTexture:v57 destinationSlice:0 destinationLevel:0 destinationOrigin:&v58];
LABEL_22:
    if (v55 == ++v36)
    {
      goto LABEL_26;
    }
  }

  if (v46 == 2)
  {
    sub_1AF4674F0(0, 0, 0, &v62);
    v43 = v63;
    v44 = v62;
    v62 = v41;
    v63 = v42;
    v60 = v37;
    v61 = v38;
    v58 = v44;
    v59 = v43;
    [v33 copyFromTexture:v56 sourceSlice:0 sourceLevel:0 sourceOrigin:&v62 sourceSize:&v60 toTexture:v57 destinationSlice:v36 destinationLevel:0 destinationOrigin:&v58];
    goto LABEL_22;
  }

  sub_1AFDFE518();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF8EB9C0()
{
  v1 = *(v0 + 64);
  if (v1 < 0)
  {
    return 0;
  }

  else
  {
    return qword_1AFE84968[v1];
  }
}

uint64_t sub_1AF8EB9E8(void *a1, unsigned int *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v246 = a7;
  v248 = a3;
  v245 = a1;
  sub_1AF87549C();
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF904A34(0, &unk_1ED72C510, type metadata accessor for MetalFunctionScript, &off_1ED729C40, type metadata accessor for ScriptRuntime);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v20);
  v22 = &v231 - v21;
  v255 = *(a2 + 6);
  v256 = *(a2 + 5);
  sub_1AF5F7484(3, &v255);
  v249 = a4;

  if (!a6)
  {
  }

  v23 = *a2;
  v24 = a2[1];
  v247 = a2;
  v243 = a8;
  if (__PAIR64__(v24, v23) == 0xFFFFFFFF)
  {
    v244 = a5;
    v25 = qword_1EB632E90;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = sub_1AF6F280C(*(a2 + 1), *(a2 + 2), 0x6C7070612E6D6F63, 0xED00007866762E65);
    v28 = v27;
    v30 = v29;
    v31 = a2;
    v33 = v32;

    *(v31 + 6) = v26;
    *(v31 + 7) = v28;
    *(v31 + 8) = v30;
    *(v31 + 9) = v33;
    v34 = *(v31 + 6);
    v35 = *(v31 + 1);
    v298 = *v31;
    v299 = v35;
    v36 = *(v31 + 3);
    v300 = *(v31 + 2);
    v301 = v36;
    v37 = *(v31 + 4);
    v303 = *(v31 + 5);
    v304 = v34;
    v302 = v37;
    v306 = *(&v34 + 1);
    v257[0] = v34;
    v39 = *(&v298 + 1);
    v38 = v299;
    v40 = sub_1AF8E5418();
    v42 = v41;
    sub_1AF8FE1E4(v257, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
    sub_1AF8FE1E4(&v306, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
    *(v31 + 12) = v40;
    *(v31 + 13) = v42;
    v43 = *(v249 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    sub_1AFDFF308();
    v44 = v43;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v295 = v276;
    v296 = v277;
    v297 = v278;
    v293 = v274;
    v294 = v275;
    v45 = sub_1AFDFF2E8();
    *&v288 = v39;
    *(&v288 + 1) = v38;
    v290 = 0;
    v289 = 0;
    v291 = MEMORY[0x1E69E7CC0];
    v292 = v45;
    v46 = sub_1AF73BD84(&v288, 1, 0, v43);
    v48 = v47;

    if (v48)
    {
      goto LABEL_6;
    }

LABEL_51:

    return swift_unknownObjectRelease();
  }

  v55 = v23 | (v24 << 32);
  v56 = sub_1AF3C96D8(v55);
  if (v56)
  {
    sub_1AF8CCBA0(v56, v257);

    if (v257[1])
    {

      v57 = v247;

      v58 = v259;
      *(v57 + 3) = v258;
      *(v57 + 4) = v58;
      v59 = *(v57 + 6);
      v60 = *(v57 + 1);
      v298 = *v57;
      v299 = v60;
      v61 = *(v57 + 3);
      v300 = *(v57 + 2);
      v301 = v61;
      v62 = *(v57 + 4);
      v303 = *(v57 + 5);
      v304 = v59;
      v302 = v62;
      v305 = *(&v59 + 1);
      v306 = v59;
      v63 = sub_1AF8E5418();
      v244 = a5;
      v65 = v64;
      sub_1AF8FE1E4(&v306, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
      sub_1AF8FE1E4(&v305, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
      *(v57 + 12) = v63;
      *(v57 + 13) = v65;
      a5 = v244;
    }
  }

  else
  {
  }

  sub_1AF3C97B0(v55, v16);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {

    return sub_1AF904B7C(v16, sub_1AF87549C);
  }

  sub_1AF875B60(v16, v22);
  v66 = *&v22[*(v18 + 44)];
  if (!v66 || !v66[2])
  {

    return sub_1AF875BE0(v22);
  }

  v244 = a5;
  v68 = v66[4];
  v67 = v66[5];
  v69 = *&v22[*(v18 + 36)];
  v237 = a6;
  if (v69)
  {
    v70 = *(v69 + 88);
    swift_unknownObjectRetain();
  }

  else
  {
    v70 = 0;
  }

  v96 = *(v249 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
  sub_1AFDFF308();
  swift_unknownObjectRetain();

  v242 = v96;
  v97 = MEMORY[0x1E69E7CC0];
  sub_1AF88352C(&v274, v68, v67, v70, MEMORY[0x1E69E7CC0]);
  v295 = v276;
  v296 = v277;
  v297 = v278;
  v293 = v274;
  v294 = v275;
  v98 = sub_1AFDFF2E8();
  *&v288 = v68;
  *(&v288 + 1) = v67;
  v289 = 0;
  v290 = v70;
  v291 = v97;
  v292 = v98;
  v46 = sub_1AF73BD84(&v288, 1, 0, v96);
  v48 = v99;

  swift_unknownObjectRelease_n();

  sub_1AF875BE0(v22);
  a6 = v237;
  if (!v48)
  {
    goto LABEL_51;
  }

LABEL_6:
  v235 = v48;
  v49 = [v48 bindings];
  sub_1AF7198B0();
  v50 = sub_1AFDFD418();

  v234 = v46;
  v237 = a6;
  if (v50 >> 62)
  {
    v51 = sub_1AFDFE108();
    if (v51)
    {
      goto LABEL_8;
    }

LABEL_53:

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v274 = 0;
    *(&v274 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0x206C656E72654BLL, 0xE700000000000000);
    MEMORY[0x1B2718AE0](*(v247 + 1), *(v247 + 2));
    MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF3A430);
    v100 = v274;
    v101 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v102 = v101;
      swift_once();
      v101 = v102;
    }

    *&v274 = 0;
    sub_1AF0D4F18(v101, &v274, v100, *(&v100 + 1));

    return swift_unknownObjectRelease();
  }

  v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
    goto LABEL_53;
  }

LABEL_8:
  v52 = 0;
  v236 = HIDWORD(v248);
  while (1)
  {
    if ((v50 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x1B2719C70](v52, v50);
    }

    else
    {
      v53 = *(v50 + 8 * v52 + 32);
      swift_unknownObjectRetain();
    }

    if ([v53 type] == 2 && objc_msgSend(v53, sel_access) == 2)
    {
      break;
    }

    ++v52;
    swift_unknownObjectRelease();
    if (v51 == v52)
    {
      goto LABEL_53;
    }
  }

  v232 = v53;

  v71 = *(v247 + 10);
  v242 = (v247 + 20);

  v254 = sub_1AF755B94(v72);

  v73 = [v235 bindings];
  v74 = sub_1AFDFD418();

  v239 = *&v71;
  if (v74 >> 62)
  {
    v75 = sub_1AFDFE108();
    if (v75)
    {
LABEL_32:
      for (i = 0; i != v75; ++i)
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v82 = MEMORY[0x1B2719C70](i, v74);
        }

        else
        {
          v82 = *(v74 + 8 * i + 32);
          swift_unknownObjectRetain();
        }

        if (![v82 access] && !objc_msgSend(v82, sel_type))
        {
          sub_1AF8FC634([v82 index]);
          v250 = &unk_1F262DBA0;
          v83 = swift_dynamicCastObjCProtocolConditional();
          if (v83)
          {
            v84 = v83;
            swift_unknownObjectRetain();

            v240 = [v84 bufferDataType];
            v241 = [v82 index];
            v88 = *v242;
            if (!*(*v242 + 16) || (v89 = sub_1AF449CB8(v241), (v90 & 1) == 0) || (v91 = *(v88 + 56) + 80 * v89, v92 = *(v91 + 48), v285 = *(v91 + 32), v286 = v92, v287 = *(v91 + 64), v93 = *(v91 + 16), v283 = *v91, v284 = v93, v94 = sub_1AF8EB9C0(), (v95 & 1) != 0) || v94 != v240)
            {
              sub_1AF87CD18(v240, v260, v85, v86, v87);
              if (v261 == 255)
              {
                v80 = 0uLL;
                v79 = -16;
                v81 = 0uLL;
                v78 = 0uLL;
                v77 = 0uLL;
              }

              else
              {
                v78 = v260[2];
                v77 = v260[3];
                v79 = v261 & 0xF;
                v80 = v260[0];
                v81 = v260[1];
              }

              v281[0] = v80;
              v281[1] = v81;
              v281[2] = v78;
              v281[3] = v77;
              v282 = v79;
              sub_1AF824D1C(v281, v241);
            }

            swift_unknownObjectRelease();
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v75)
    {
      goto LABEL_32;
    }
  }

  v103 = 0;
  v104 = v254;
  v105 = 1 << *(v254 + 32);
  v106 = -1;
  if (v105 < 64)
  {
    v106 = ~(-1 << v105);
  }

  v107 = v106 & *(v254 + 56);
  v108 = (v105 + 63) >> 6;
  v109 = v236;
  v110 = v242;
  while (v107)
  {
LABEL_67:
    v112 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v113 = sub_1AF449CB8(*(*(v104 + 48) + ((v103 << 9) | (8 * v112))));
    if (v114)
    {
      v115 = v113;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *v110;
      *&v274 = *v110;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1AF846FA0();
        v117 = v274;
      }

      sub_1AF6B3070(v115, v117);
      *v110 = v117;
    }
  }

  while (1)
  {
    v111 = v103 + 1;
    if (v103 + 1 >= v108)
    {
      break;
    }

    v107 = *(v104 + 8 * v103++ + 64);
    if (v107)
    {
      v103 = v111;
      goto LABEL_67;
    }
  }

  v118 = *v110;
  v119 = sub_1AF776548(*v110, *&v239);

  if ((v119 & 1) == 0)
  {
    v120 = v247;
    v121 = *(v247 + 6);
    v279 = *(v247 + 5);
    v280 = v121;
    v122 = *(v247 + 4);
    v123 = *(v247 + 1);
    v274 = *v247;
    v275 = v123;
    v124 = *(v247 + 2);
    v277 = *(v247 + 3);
    v278 = v122;
    v276 = v124;
    v118 = v279;
    v307 = *(&v121 + 1);
    v308[0] = v121;
    v125 = sub_1AF8E5418();
    v127 = v126;
    sub_1AF8FE1E4(v308, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
    sub_1AF8FE1E4(&v307, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
    *(v120 + 12) = v125;
    *(v120 + 13) = v127;
    if (*(v249 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream))
    {
      v128 = v277;
      v242 = v118;
      v129 = *(&v277 + 1);
      v130 = v278;
      KeyPath = swift_getKeyPath();
      *&v267 = __PAIR64__(v109, v248);
      *(&v267 + 1) = v249;
      sub_1AF5A5948();
      *(&v269 + 1) = v132;
      *&v270 = &off_1F2536190;
      v133 = swift_allocObject();
      *&v268 = v133;
      *(v133 + 16) = KeyPath;
      *(v133 + 24) = v128;
      *(v133 + 32) = v129;
      *(v133 + 40) = v130;
      BYTE8(v270) = 11;

      sub_1AF6C67D0(&v267);
      sub_1AF57955C(&v267);
      v233 = v129;
      v134 = *(v129 + 16);
      v118 = v242;
      if (v134)
      {
        v135 = *(v247 + 5);
        v271 = *(v247 + 4);
        v272 = v135;
        v273 = *(v247 + 6);
        v136 = *(v247 + 1);
        v267 = *v247;
        v268 = v136;
        v137 = *(v247 + 3);
        v269 = *(v247 + 2);
        v270 = v137;

        v138 = 72;
        do
        {
          v139 = *(v233 + v138);
          v241 = *(v139 + 16);
          v242 = v134;
          v140 = *(v139 + 24);
          v141 = *(v139 + 40);
          v142 = *(v139 + 144);
          v238 = *(v139 + 152);
          v143 = *(v139 + 188);
          v144 = *(v139 + 184);
          if (v143)
          {
            v144 = 0.0;
          }

          v239 = v144;
          v240 = v142;
          v145 = *(v139 + 196);
          if (v145)
          {
            v146 = 0.0;
          }

          else
          {
            v146 = *(v139 + 192);
          }

          v147 = *(v139 + 204);
          if (v147)
          {
            v148 = 0.0;
          }

          else
          {
            v148 = *(v139 + 200);
          }

          v262 = 0u;
          v263 = 0u;

          v230 = v141;
          v149 = v141;
          v109 = v236;
          v150 = sub_1AF493834(v149, &v262, v241, v140, *&v239, v143, *&v146, v145, *&v148, v147, v240, v238, 0, 0, 0, &type metadata for TextureShaderAsset, v230, &off_1F25446E8);

          sub_1AF8FE1E4(&v262, &qword_1ED726850, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1AF90540C);
          v151 = *(v150 + 32);

          v152 = *(v139 + 16);
          v153 = *(v139 + 24);

          sub_1AF8E3348(v152, v153, v251);

          *&v262 = __PAIR64__(v109, v248);
          *(&v262 + 1) = v249;
          sub_1AF904190();
          *(&v264 + 1) = v154;
          *&v265 = &off_1F2536190;
          v155 = swift_allocObject();
          *&v263 = v155;
          sub_1AF0D5A54(v251, v155 + 24);
          *(v155 + 16) = v151;

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v251);
          BYTE8(v265) = 11;
          sub_1AF6C67D0(&v262);
          v156 = v242;

          sub_1AF57955C(&v262);
          v138 += 48;
          v134 = v156 - 1;
        }

        while (v134);

        v118 = v272;
      }

      v157 = swift_getKeyPath();
      *&v262 = __PAIR64__(v109, v248);
      *(&v262 + 1) = v249;
      sub_1AF9041F4();
      *(&v264 + 1) = v158;
      *&v265 = &off_1F2536190;
      *&v263 = v157;
      BYTE8(v263) = 1;
      BYTE8(v265) = 11;
      sub_1AF6C67D0(&v262);
      sub_1AF57955C(&v262);
    }
  }

  v159 = *(v247 + 2);
  v160 = sub_1AFDFCF98();
  v162 = v161;
  v253 = &unk_1F262DD00;
  v163 = swift_dynamicCastObjCProtocolConditional();
  if (!v163)
  {

    v167 = 0;
    goto LABEL_91;
  }

  v242 = v159;
  v164 = v163;
  swift_unknownObjectRetain_n();
  v165 = v164;
  if ([v164 textureType] != 3)
  {

LABEL_95:
    v166 = [v165 textureType];
    goto LABEL_96;
  }

  *&v262 = v160;
  *(&v262 + 1) = v162;
  *&v251[0] = 1700951395;
  *(&v251[0] + 1) = 0xE400000000000000;
  sub_1AF4486E4();
  if (sub_1AFDFDF18())
  {

    v166 = 5;
    goto LABEL_96;
  }

  *&v262 = v160;
  *(&v262 + 1) = v162;
  *&v251[0] = 0x786F62796B73;
  *(&v251[0] + 1) = 0xE600000000000000;
  v180 = sub_1AFDFDF18();

  if ((v180 & 1) == 0)
  {
    goto LABEL_95;
  }

  v166 = 5;
LABEL_96:
  sub_1AF466BDC(v166, &v255);
  v262 = v255;
  *&v263 = v256;
  v171 = sub_1AF467494(&v262) - 160;
  if (v171 <= 0x3A && ((1 << v171) & 0x7FDF1FF7CFD54FFLL) != 0)
  {
    swift_unknownObjectRelease();
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v262 = 0;
    *(&v262 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v251[0] = v262;
    MEMORY[0x1B2718AE0](0xD000000000000039, 0x80000001AFF3A3F0);
    v262 = v255;
    *&v263 = v256;
    v172 = sub_1AF467494(&v262);
    v173 = sub_1AF4720E8(v172);
    MEMORY[0x1B2718AE0](v173);

    v174 = v251[0];
    v175 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v227 = v175;
      swift_once();
      v175 = v227;
    }

    *&v262 = 0;
    sub_1AF0D4F18(v175, &v262, v174, *(&v174 + 1));

    swift_unknownObjectRelease_n();

    return swift_unknownObjectRelease();
  }

  v220 = CFXGPUDeviceGetMTLDevice(*(v237 + 16));
  swift_getObjectType();
  v262 = v255;
  *&v263 = v256;
  v221 = sub_1AF467494(&v262);
  v167 = v165;
  v222 = sub_1AF4760AC(v221, [v165 textureDataType]);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v222 & 1) == 0)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&v262 = 0;
    *(&v262 + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    v251[0] = v262;
    MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF3A3C0);
    v262 = v255;
    *&v263 = v256;
    v223 = sub_1AF467494(&v262);
    v224 = sub_1AF4720E8(v223);
    MEMORY[0x1B2718AE0](v224);

    MEMORY[0x1B2718AE0](0x65742061206F7420, 0xEF3C5F6572757478);
    *&v262 = [v165 textureDataType];
    type metadata accessor for MTLDataType(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](62, 0xE100000000000000);
    v225 = v251[0];
    v226 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v229 = v226;
      swift_once();
      v226 = v229;
    }

    *&v262 = 0;
    sub_1AF0D4F18(v226, &v262, v225, *(&v225 + 1));

    swift_unknownObjectRelease_n();

    return swift_unknownObjectRelease();
  }

LABEL_91:
  v242 = v167;
  v168 = v248;
  if (v236 || v248 != -1)
  {

    v176 = sub_1AF3CBB44(v168);
    v178 = v177;

    v170 = v237;
    if ((v178 & 0x100) != 0)
    {

      v181 = sub_1AF67CACC(&type metadata for TextureRequireMipmapGeneration, &off_1F2546058, v168);

      if (v181)
      {
        v169 = sub_1AF8DB86C(v255, *(&v255 + 1), v256 | (BYTE2(v256) << 16));
      }

      else
      {
        v169 = 1;
      }
    }

    else
    {
      v169 = sub_1AF8DB86C(v255, *(&v255 + 1), v256 | (BYTE2(v256) << 16));
      if (v178)
      {
        v179 = v169;
      }

      else
      {
        v179 = v176;
      }

      if (v179 <= 1)
      {
        v179 = 1;
      }

      if (v169 >= v179)
      {
        v169 = v179;
      }
    }
  }

  else
  {
    v169 = 1;
    v170 = v237;
  }

  sub_1AF4674B4(v169, &v255);
  v182 = *(v170 + 16);
  v262 = v255;
  *&v263 = v256;
  v183 = CFXGPUDeviceCreateTexture(v182, &v262);
  if (!v183)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v191 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v228 = v191;
      swift_once();
      v191 = v228;
    }

    *&v262 = 0;
    sub_1AF0D4F18(v191, &v262, 0xD000000000000018, 0x80000001AFF32C90);
    swift_unknownObjectRelease();

    goto LABEL_163;
  }

  v184 = v183;
  swift_getObjectType();
  v185 = sub_1AFDFCEC8();
  [v184 setLabel_];

  v186 = v245;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *v186 = v184;
  if (!v234)
  {

LABEL_161:

    swift_unknownObjectRelease();
LABEL_163:
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  v187 = v170;
  v188 = sub_1AF6F4158();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v189 = sub_1AFDFCEC8();
  [v188 pushDebugGroup_];

  sub_1AF6F3BD8();
  swift_unknownObjectRelease();
  v190 = [v184 textureType];
  v248 = v184;
  v245 = 0;
  if (v242 && v190 == 5 && [v242 textureType] == 3)
  {
    [v188 setTexture:sub_1AF47371C() atIndex:{objc_msgSend(v232, sel_index)}];
    swift_unknownObjectRelease();
  }

  else
  {
    [v188 setTexture:v184 atIndex:{objc_msgSend(v232, sel_index)}];
  }

  v192 = 1 << v118[32];
  v193 = -1;
  if (v192 < 64)
  {
    v193 = ~(-1 << v192);
  }

  v194 = v193 & *(v118 + 8);
  v195 = (v192 + 63) >> 6;

  v196 = 0;
  while (v194)
  {
    v197 = v196;
LABEL_136:
    v198 = __clz(__rbit64(v194)) | (v197 << 6);
    v199 = *(*(v118 + 6) + 8 * v198);
    v194 &= v194 - 1;
    v200 = *(v118 + 7) + 80 * v198;
    v263 = *(v200 + 16);
    v264 = *(v200 + 32);
    v265 = *(v200 + 48);
    v266 = *(v200 + 64);
    v262 = *v200;
    sub_1AF8A925C(&v262, v199, v244, v187);
  }

  while (1)
  {
    v197 = v196 + 1;
    if (v196 + 1 >= v195)
    {
      break;
    }

    v194 = *&v118[8 * v196++ + 72];
    if (v194)
    {
      v196 = v197;
      goto LABEL_136;
    }
  }

  v201 = *(v247 + 11);
  v202 = 1 << *(v201 + 32);
  v203 = -1;
  if (v202 < 64)
  {
    v203 = ~(-1 << v202);
  }

  v204 = v203 & *(v201 + 64);
  v205 = (v202 + 63) >> 6;

  v206 = 0;
  while (v204)
  {
LABEL_145:
    v208 = __clz(__rbit64(v204));
    v204 &= v204 - 1;
    v209 = (v206 << 9) | (8 * v208);
    v210 = *(*(v201 + 48) + v209);
    v211 = sub_1AF8D93C8(*(*(v201 + 56) + v209), v251, v244, v187);
    if (v211)
    {
      [v188 setTexture:v211 atIndex:v210];
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v207 = v206 + 1;
    if (v206 + 1 >= v205)
    {
      break;
    }

    v204 = *(v201 + 8 * v206++ + 72);
    if (v204)
    {
      v206 = v207;
      goto LABEL_145;
    }
  }

  v212 = v248;
  v213 = [v248 textureType];
  if (v213 > 4)
  {
    if (v213 == 5)
    {
      sub_1AF6F4400(v234, v212, 0);
      goto LABEL_158;
    }

    if (v213 == 7)
    {
      sub_1AF6F4874(v234, v212, 0);
      goto LABEL_158;
    }

LABEL_155:
    sub_1AF90540C(0, &qword_1ED722EE0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v214 = swift_allocObject();
    *(v214 + 16) = xmmword_1AFE431C0;
    *&v251[0] = 0;
    *(&v251[0] + 1) = 0xE000000000000000;
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF32CD0);
    v252 = [v212 textureType];
    type metadata accessor for MTLTextureType(0);
    sub_1AFDFE458();
    MEMORY[0x1B2718AE0](0x70757320746F6E20, 0xEE00646574726F70);
    v215 = v251[0];
    *(v214 + 56) = MEMORY[0x1E69E6158];
    *(v214 + 32) = v215;
    sub_1AFDFF258();

    goto LABEL_158;
  }

  if (!v213)
  {
    sub_1AF6F47F4(v234, v212, 0);
    goto LABEL_158;
  }

  if (v213 != 2)
  {
    goto LABEL_155;
  }

  sub_1AF6F448C(v234, v212, 0);
LABEL_158:
  [v188 popDebugGroup];
  swift_unknownObjectRelease();
  if ([v212 mipmapLevelCount] < 2)
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_163;
  }

  v216 = v245;
  v217 = sub_1AF6F3F0C();
  if (!v216)
  {
    v218 = v217;
    v219 = sub_1AFDFCEC8();
    [v218 pushDebugGroup_];

    sub_1AF6F3BD8();
    swift_unknownObjectRelease();
    sub_1AF8E8F74(v212, v218);
    swift_unknownObjectRelease();
    [v218 popDebugGroup];

    swift_unknownObjectRelease();
    goto LABEL_161;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1AF8ED7F8(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  v9 = v7;
  v3 = sub_1AF8E5418();
  v5 = v4;
  sub_1AF8FE1E4(&v9, &qword_1ED722050, type metadata accessor for PropertyDescription, MEMORY[0x1E69E5E28], sub_1AF904AA0);
  result = sub_1AF8FE1E4(&v8, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8], sub_1AF90540C);
  *(a2 + 96) = v3;
  *(a2 + 104) = v5;
  return result;
}

unint64_t sub_1AF8ED8F0()
{
  v0 = sub_1AFDFC048();
  v1 = CGImageSourceCreateWithURL(v0, 0);

  if (!v1)
  {
    goto LABEL_7;
  }

  ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
  if (!ImageAtIndex)
  {

LABEL_7:
    sub_1AFDFE218();

    sub_1AFDFC128();
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
    v6 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v6);

    v5 = 0x80000001AFF39DC0;
    sub_1AF902768();
    swift_allocError();
    *v7 = 0xD00000000000001FLL;
    *(v7 + 8) = 0x80000001AFF39DC0;
    *(v7 + 16) = 0;
    swift_willThrow();
    return v5;
  }

  v3 = ImageAtIndex;
  v4 = sub_1AF378310();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    sub_1AFDFE218();

    sub_1AFDFC128();
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
    v9 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v9);

    v5 = 0x80000001AFF39DE0;
    sub_1AF902768();
    swift_allocError();
    *v10 = 0xD000000000000023;
    *(v10 + 8) = 0x80000001AFF39DE0;
    *(v10 + 16) = 0;
    swift_willThrow();
  }

  return v5;
}

NSObject *sub_1AF8EDB38(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v54 = a2;
  v5 = sub_1AFDFC128();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC4F8();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(a3 + 16);
  v57 = CFXGPUDeviceGetMTLDevice(v53);
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v14 = sub_1AFDFC538();
  sub_1AF477C68(v14, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  (*(v6 + 16))(v9, a1, v5);
  v15 = swift_slowAlloc();
  v55 = swift_slowAlloc();
  v67 = v55;
  *v15 = 136315138;
  v16 = sub_1AFDFBFE8();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = sub_1AF740B70(v16, v18, &v67);

  *(v15 + 4) = v19;
  v20 = sub_1AFDFC528();
  LOBYTE(v18) = sub_1AFDFDB88();
  v21 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v20, v18, v21, "loadGPUTextureAsIOSurface", "URL: %s", v15, 0xCu);
  v22 = v56;
  v23 = sub_1AF8ED8F0();
  if (v22)
  {
    swift_unknownObjectRelease();

LABEL_74:
    (*(v58 + 8))(v13, v59);
    return v20;
  }

  v24 = v23;
  v56 = v5;
  v25 = sub_1AFDFDB78();
  v26 = sub_1AFDFC4E8();
  _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v20, v25, v26, "loadGPUTextureAsIOSurface", "URL: %s", v15, 0xCu);

  v27 = v55;
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v55);
  MEMORY[0x1B271DEA0](v27, -1, -1);
  MEMORY[0x1B271DEA0](v15, -1, -1);
  Width = IOSurfaceGetWidth(v24);
  Height = IOSurfaceGetHeight(v24);
  PixelFormat = IOSurfaceGetPixelFormat(v24);
  CFXTextureDescriptorMakeDefault(&v63);
  sub_1AF466BDC(2, &v63);
  sub_1AF46748C(0, &v63);
  if (Width <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = Width;
  }

  sub_1AF46749C(v31, &v63);
  if (Height <= 1)
  {
    v32 = 1;
  }

  else
  {
    v32 = Height;
  }

  sub_1AF4674A4(v32, &v63);
  sub_1AF4674AC(1, &v63);
  sub_1AF4674B4(1, &v63);
  sub_1AF9027BC(1, &v63);
  sub_1AF4674C8(1, &v63);
  sub_1AF5F7474(0, &v63);
  sub_1AF5F7484(1, &v63);
  v65 = v63;
  v66 = v64;
  sub_1AF5F7484(1, &v65);
  if (PixelFormat <= 1278226487)
  {
    if (PixelFormat > 875704437)
    {
      if (PixelFormat != 875704438)
      {
        if (PixelFormat == 875704934 || PixelFormat == 875704950)
        {
          if ((*v54 & 4) != 0)
          {
            if (qword_1EB6332A8 != -1)
            {
              swift_once();
            }

            v33 = qword_1EB6C2A08;
          }

          else
          {
            if (qword_1EB633270 != -1)
            {
              swift_once();
            }

            v33 = qword_1EB6C29E8;
          }

          goto LABEL_57;
        }

LABEL_71:
        *&v61 = 0;
        *(&v61 + 1) = 0xE000000000000000;
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD00000000000002DLL, 0x80000001AFF39CF0);
        LODWORD(v60[0]) = PixelFormat;
        v47 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v47);

        MEMORY[0x1B2718AE0](0x206874697720, 0xE600000000000000);
        goto LABEL_72;
      }

      goto LABEL_30;
    }

    if (PixelFormat != 843264056)
    {
      if (PixelFormat != 875704422)
      {
        goto LABEL_71;
      }

LABEL_30:
      if ((*v54 & 4) != 0)
      {
        if (qword_1EB6332B8 != -1)
        {
          swift_once();
        }

        v33 = qword_1EB6C2A10;
      }

      else
      {
        if (qword_1EB633280 != -1)
        {
          swift_once();
        }

        v33 = qword_1EB6C29F0;
      }

      goto LABEL_57;
    }

    v34 = (*v54 & 4) == 0;
    v35 = 30;
LABEL_42:
    if (v34)
    {
      v33 = v35 + 1;
    }

    else
    {
      v33 = v35;
    }

    goto LABEL_57;
  }

  if (PixelFormat <= 2016686641)
  {
    if (PixelFormat == 1278226488)
    {
      v34 = (*v54 & 4) == 0;
      v35 = 10;
      goto LABEL_42;
    }

    if (PixelFormat != 2016686640)
    {
      goto LABEL_71;
    }
  }

  else
  {
    if (PixelFormat == 2016686642)
    {
LABEL_24:
      if ((*v54 & 4) != 0)
      {
        if (qword_1EB633288 != -1)
        {
          swift_once();
        }

        v33 = qword_1EB6C29F8;
      }

      else
      {
        if (qword_1EB633250 != -1)
        {
          swift_once();
        }

        v33 = qword_1EB6C29D8;
      }

      goto LABEL_57;
    }

    if (PixelFormat != 2019963440)
    {
      if (PixelFormat != 2019963442)
      {
        goto LABEL_71;
      }

      goto LABEL_24;
    }
  }

  if ((*v54 & 4) != 0)
  {
    if (qword_1EB633298 != -1)
    {
      swift_once();
    }

    v33 = qword_1EB6C2A00;
  }

  else
  {
    if (qword_1EB633260 != -1)
    {
      swift_once();
    }

    v33 = qword_1EB6C29E0;
  }

LABEL_57:
  sub_1AF46748C(v33, &v65);
  swift_getObjectType();
  v61 = v65;
  v62 = v66;
  sub_1AF467494(&v61);
  if ((sub_1AF470C28() & 1) == 0)
  {
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(v60, "PixelFormat ");
    BYTE5(v60[1]) = 0;
    HIWORD(v60[1]) = -5120;
    v61 = v65;
    v62 = v66;
    v37 = sub_1AF467494(&v61);
    v38 = sub_1AF4720E8(v37);
    MEMORY[0x1B2718AE0](v38);

    MEMORY[0x1B2718AE0](0xD000000000000021, 0x80000001AFF39D20);
    v20 = v60[0];
    v39 = v60[1];
LABEL_73:
    sub_1AF902768();
    swift_allocError();
    *v49 = v20;
    *(v49 + 8) = v39;
    *(v49 + 16) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_74;
  }

  v61 = v65;
  v62 = v66;
  v36 = sub_1AF467494(&v61);
  if (v36 <= 0x37u && ((1 << v36) & 0xE0000003D07C00) != 0)
  {
    if (sub_1AF476284())
    {
      LODWORD(v65) = 33686018;
    }

    else
    {
      if (qword_1ED730EA0 != -1)
      {
        swift_once();
      }

      *&v61 = 0;
      *(&v61 + 1) = 0xE000000000000000;
      sub_1AFDFE218();

      v60[0] = 0xD000000000000030;
      v60[1] = 0x80000001AFF39D80;
      v61 = v65;
      v62 = v66;
      v40 = sub_1AF467494(&v61);
      v41 = sub_1AF4720E8(v40);
      MEMORY[0x1B2718AE0](v41);

      v43 = v60[0];
      v42 = v60[1];
      v44 = sub_1AFDFDA08();
      if (qword_1ED731058 != -1)
      {
        v51 = v44;
        swift_once();
        v44 = v51;
      }

      *&v61 = 0;
      sub_1AF0D4F18(v44, &v61, v43, v42);
    }
  }

  v61 = v65;
  v62 = v66;
  v45 = CFXGPUDeviceCreateTextureWithIOSurfaceAndDesc(v53, &v61, v24, 0);
  if (!v45)
  {
    *&v61 = 0;
    *(&v61 + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    *&v61 = 0xD00000000000002CLL;
    *(&v61 + 1) = 0x80000001AFF39D50;
LABEL_72:
    sub_1AF9027C4(&qword_1EB632790, MEMORY[0x1E6968FB0]);
    v48 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v48);

    v39 = *(&v61 + 1);
    v20 = v61;
    goto LABEL_73;
  }

  v20 = v45;
  sub_1AFDFC028();
  v46 = sub_1AFDFCEC8();

  [v20 setLabel:v46];
  swift_unknownObjectRelease();

  (*(v58 + 8))(v13, v59);
  return v20;
}

double sub_1AF8EE67C@<D0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v44 = a3;
  v43 = a2;
  v60 = sub_1AFDFC128();
  v6 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC4F8();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v41 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v37 - v15;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v17 = sub_1AFDFC538();
  sub_1AF477C68(v17, qword_1ED73B608);
  sub_1AFDFC528();
  sub_1AFDFC4D8();
  CFXTextureDescriptorMakeDefault(&v58);
  *(v55 + 7) = v58;
  *(&v55[1] + 7) = v59;
  *v57 = 0;
  v56 = 0uLL;
  v57[8] = 0;
  *&v57[9] = v55[0];
  *&v57[24] = *(v55 + 15);
  *&v57[40] = MEMORY[0x1E69E7CC0];
  v18 = *(v6 + 16);
  v42 = a1;
  v18(v9, a1, v60);
  v19 = sub_1AFDFC528();
  v40 = sub_1AFDFDB88();
  if (sub_1AFDFDCE8())
  {
    v20 = swift_slowAlloc();
    v38 = v10;
    v21 = v20;
    v22 = swift_slowAlloc();
    v39 = a4;
    v23 = v22;
    *&v51 = v22;
    *v21 = 136315138;
    v24 = sub_1AFDFBFE8();
    v26 = v25;
    (*(v6 + 8))(v9, v60);
    v27 = sub_1AF740B70(v24, v26, &v51);

    *(v21 + 4) = v27;
    v28 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v19, v40, v28, "loadTextureFromDisk", "URL: %s", v21, 0xCu);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v23);
    v29 = v23;
    a4 = v39;
    MEMORY[0x1B271DEA0](v29, -1, -1);
    v30 = v21;
    v10 = v38;
    MEMORY[0x1B271DEA0](v30, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v60);
  }

  v31 = v46;
  (*(v46 + 16))(v41, v16, v10);
  sub_1AFDFC578();
  swift_allocObject();
  v32 = sub_1AFDFC568();
  v33 = v45;
  sub_1AF8E7DE4(v42, v43, v44, 0, 1);
  if (v33)
  {
    sub_1AF8F7290(v32, "loadTextureFromDisk");

    v51 = v56;
    v52 = *v57;
    v53 = *&v57[16];
    v54 = *&v57[32];
    sub_1AF478A6C(&v51);
    (*(v31 + 8))(v16, v10);
  }

  else
  {
    v47 = v56;
    v48 = *v57;
    v49 = *&v57[16];
    v50 = *&v57[32];
    sub_1AF44222C(&v47, &v51);
    sub_1AF8F7290(v32, "loadTextureFromDisk");

    v51 = v56;
    v52 = *v57;
    v53 = *&v57[16];
    v54 = *&v57[32];
    sub_1AF478A6C(&v51);
    (*(v31 + 8))(v16, v10);
    v35 = v48;
    *a4 = v47;
    a4[1] = v35;
    result = *&v49;
    v36 = v50;
    a4[2] = v49;
    a4[3] = v36;
  }

  return result;
}