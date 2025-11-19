uint64_t sub_26B4C0BF0()
{
  v0 = static VCCommandCollection.allCommandCollections.getter();
  v1 = *(v0 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_26B542DF4();
    v2 = (v0 + 73);
    do
    {
      v24 = *(v2 - 41);
      v25 = v1;
      v3 = *(v2 - 33);
      v23 = *(v2 - 25);
      v4 = *(v2 - 17);
      v5 = *(v2 - 9);
      v6 = *(v2 - 1);
      v7 = *v2;
      v2 += 48;
      v8 = objc_allocWithZone(VCCommandCollectionObjC);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v9 = [v8 init];

      if (v7)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10 | v6;
      v12 = &v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection];
      v13 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection];
      v14 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8];
      v15 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 16];
      v16 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 24];
      v17 = *&v9[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32];
      *v12 = v24;
      *(v12 + 1) = v3;
      *(v12 + 2) = v23;
      *(v12 + 3) = v4;
      *(v12 + 4) = v5;
      v18 = *(v12 + 20);
      *(v12 + 20) = v11;
      v19 = v9;
      sub_26B4C4DC8(v13, v14);

      sub_26B542DD4();
      v20 = *(v26 + 16);
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
      v1 = v25 - 1;
    }

    while (v25 != 1);

    v22 = v26;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  qword_280400550 = v22;
  return result;
}

uint64_t static VCCommandCollectionObjC.allCollections()()
{
  if (qword_280400548 != -1)
  {
    swift_once();
  }
}

id sub_26B4C0EA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_26B542C14();

  return v3;
}

id sub_26B4C0F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_26B542A84();
  v6 = a4(v5);

  return v6;
}

uint64_t VCCommandCollectionObjC.identifier.getter()
{
  if (*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    v1 = *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VCCommandCollectionObjC.showInSettings.getter()
{
  if (*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    return *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 40) & 1;
  }

  __break(1u);
  return result;
}

void VCCommandCollectionObjC.commandIdentifiers.getter()
{
  if (!*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v1 = *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v28 = MEMORY[0x277D84F90];

    sub_26B4A2140(0, v2, 0);
    v3 = v28;
    v4 = v2 - 1;
    for (i = 32; ; i += 184)
    {
      v6 = *(v1 + i);
      v7 = *(v1 + i + 16);
      v8 = *(v1 + i + 48);
      v26[2] = *(v1 + i + 32);
      v26[3] = v8;
      v26[0] = v6;
      v26[1] = v7;
      v9 = *(v1 + i + 64);
      v10 = *(v1 + i + 80);
      v11 = *(v1 + i + 112);
      v26[6] = *(v1 + i + 96);
      v26[7] = v11;
      v26[4] = v9;
      v26[5] = v10;
      v12 = *(v1 + i + 128);
      v13 = *(v1 + i + 144);
      v14 = *(v1 + i + 160);
      v27 = *(v1 + i + 176);
      v26[9] = v13;
      v26[10] = v14;
      v26[8] = v12;
      v25 = v26[0];
      v23 = 95;
      v24 = 0xE100000000000000;
      sub_26B4A5160(v26, v22);
      sub_26B49FAB4();
      v15 = sub_26B542CD4();
      if (!v15[2])
      {
        break;
      }

      v16 = v1;
      v18 = v15[4];
      v17 = v15[5];

      sub_26B4A51BC(v26);
      v28 = v3;
      v20 = *(v3 + 16);
      v19 = *(v3 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26B4A2140((v19 > 1), v20 + 1, 1);
        v3 = v28;
      }

      *(v3 + 16) = v20 + 1;
      v21 = v3 + 16 * v20;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      if (!v4)
      {

        return;
      }

      --v4;
      v1 = v16;
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_26B4C1248(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26B542C14();

  return v5;
}

void VCCommandCollectionObjC.commandIdentifiersForCurrentDevice.getter()
{
  if (*(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8))
  {
    v1 = *(v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 32);
    v2 = *(v1 + 16);

    v3 = MEMORY[0x277D84F90];
    v62 = v2;
    if (v2)
    {
      v4 = 0;
      v60 = v1 + 32;
      v63 = MEMORY[0x277D84F90];
      v61 = v1;
      while (v4 < *(v1 + 16))
      {
        v5 = (v60 + 184 * v4);
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[3];
        v69 = v5[2];
        v70 = v8;
        v67 = v6;
        v68 = v7;
        v9 = v5[4];
        v10 = v5[5];
        v11 = v5[7];
        v73 = v5[6];
        v74 = v11;
        v71 = v9;
        v72 = v10;
        v12 = v5[8];
        v13 = v5[9];
        v14 = v5[10];
        v78 = *(v5 + 22);
        v76 = v13;
        v77 = v14;
        v75 = v12;
        sub_26B4A5160(&v67, v66);
        if (qword_2804004B0 != -1)
        {
          swift_once();
        }

        v64 = v4 + 1;
        v15 = &unk_287C04288;
        if (dword_280406E84 != 1)
        {
          v15 = v3;
        }

        if (dword_280406E84 == 3)
        {
          v16 = &unk_287C04260;
        }

        else
        {
          v16 = v15;
        }

        v17 = v71;
        if (*(v71 + 16) && (v18 = *(v16 + 2)) != 0)
        {
          v19 = 0;
          v20 = v71 + 56;
          while (1)
          {
            v66[0] = v16[v19 + 32];
            if (*(v17 + 16))
            {
              v21 = *(v17 + 40);
              sub_26B471350();
              v22 = sub_26B5429B4();
              v23 = -1 << *(v17 + 32);
              v24 = v22 & ~v23;
              if ((*(v20 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
              {
                break;
              }
            }

LABEL_16:
            if (++v19 == v18)
            {
              goto LABEL_4;
            }
          }

          v25 = ~v23;
          sub_26B4713A4();
          while (1)
          {
            v65 = *(*(v17 + 48) + v24);
            if (sub_26B542A34())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v20 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v27 = v63;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_26B4A2120(0, *(v63 + 16) + 1, 1);
            v27 = v63;
          }

          v3 = MEMORY[0x277D84F90];
          v1 = v61;
          v4 = v64;
          v29 = *(v27 + 16);
          v28 = *(v27 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_26B4A2120((v28 > 1), v29 + 1, 1);
            v27 = v63;
          }

          *(v27 + 16) = v29 + 1;
          v63 = v27;
          v30 = v27 + 184 * v29;
          v31 = v67;
          v32 = v68;
          v33 = v70;
          *(v30 + 64) = v69;
          *(v30 + 80) = v33;
          *(v30 + 32) = v31;
          *(v30 + 48) = v32;
          v34 = v71;
          v35 = v72;
          v36 = v74;
          *(v30 + 128) = v73;
          *(v30 + 144) = v36;
          *(v30 + 96) = v34;
          *(v30 + 112) = v35;
          v37 = v75;
          v38 = v76;
          v39 = v77;
          *(v30 + 208) = v78;
          *(v30 + 176) = v38;
          *(v30 + 192) = v39;
          *(v30 + 160) = v37;
          if (v64 == v62)
          {
            goto LABEL_30;
          }
        }

        else
        {
LABEL_4:

          sub_26B4A51BC(&v67);
          v1 = v61;
          v4 = v64;
          v3 = MEMORY[0x277D84F90];
          if (v64 == v62)
          {
            goto LABEL_30;
          }
        }
      }

      __break(1u);
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
LABEL_30:

      v40 = *(v63 + 16);
      if (!v40)
      {
LABEL_37:

        return;
      }

      sub_26B4A2140(0, v40, 0);
      v41 = v63;
      v42 = v40 - 1;
      for (i = 32; ; i += 184)
      {
        v44 = (v41 + i);
        v45 = *v44;
        v46 = v44[1];
        v47 = v44[3];
        v69 = v44[2];
        v70 = v47;
        v67 = v45;
        v68 = v46;
        v48 = v44[4];
        v49 = v44[5];
        v50 = v44[7];
        v73 = v44[6];
        v74 = v50;
        v71 = v48;
        v72 = v49;
        v51 = v44[8];
        v52 = v44[9];
        v53 = v44[10];
        v78 = *(v44 + 22);
        v76 = v52;
        v77 = v53;
        v75 = v51;
        sub_26B4A5160(&v67, v66);
        sub_26B49FAB4();
        v54 = sub_26B542CD4();
        if (!v54[2])
        {
          break;
        }

        v55 = v54[4];
        v56 = v54[5];

        sub_26B4A51BC(&v67);
        v58 = v3[2];
        v57 = v3[3];
        if (v58 >= v57 >> 1)
        {
          sub_26B4A2140((v57 > 1), v58 + 1, 1);
        }

        v3[2] = v58 + 1;
        v59 = &v3[2 * v58];
        v59[4] = v55;
        v59[5] = v56;
        if (!v42)
        {
          goto LABEL_37;
        }

        --v42;
        v41 = v63;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id VCCommandCollectionObjC.init()()
{
  v1 = (v0 + OBJC_IVAR___VCCommandCollectionObjC_representedCollection);
  *v1 = 0u;
  v1[1] = 0u;
  *(v1 + 26) = 0u;
  v3.super_class = VCCommandCollectionObjC;
  return objc_msgSendSuper2(&v3, sel_init);
}

char *sub_26B4C182C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC0, &unk_26B545240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_26B4C1920(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCB8, &qword_26B5454E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_26B4C1A64(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFCC0, &unk_26B545240);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double sub_26B4C1AD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26B4A19F4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26B4C21A0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_26B4A5218((*(v12 + 56) + 32 * v9), a3);
    sub_26B4C1E34(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26B4C1B7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD78, &qword_26B5454B8);
  v36 = a2;
  result = sub_26B542E54();
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
        sub_26B4A5218(v25, v37);
      }

      else
      {
        sub_26B4C69C4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26B543034();
      sub_26B542AE4();
      result = sub_26B543054();
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
      result = sub_26B4A5218(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_26B4C1E34(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26B542D04() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26B543034();

      sub_26B542AE4();
      v14 = sub_26B543054();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_26B4C1FE4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26B4A19F4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26B4C21A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26B4C1B7C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26B4A19F4(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26B542FE4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_26B4A5218(a1, v23);
  }

  else
  {
    sub_26B4C2134(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_26B4C2134(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26B4A5218(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_26B4C21A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD78, &qword_26B5454B8);
  v2 = *v0;
  v3 = sub_26B542E44();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_26B4C69C4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_26B4A5218(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_26B4C2344(unsigned __int8 *a1, unsigned __int8 a2, void (*a3)(void), uint64_t a4, void (*a5)(void), void (*a6)(void, unint64_t, uint64_t))
{
  v22 = a2;
  v10 = *v6;
  v11 = *(*v6 + 40);
  a3();
  v12 = sub_26B5429B4();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    a5();
    while (1)
    {
      v21 = *(*(v10 + 48) + v14);
      if (sub_26B542A34())
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v18 = (*(v10 + 48) + v14);
  }

  else
  {
LABEL_5:
    v16 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v6;
    a6(v22, v14, isUniquelyReferenced_nonNull_native);
    *v6 = v20;
    v18 = &v22;
    result = 1;
  }

  *a1 = *v18;
  return result;
}

uint64_t sub_26B4C2490(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4C443C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_26B4C2568(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B4C24FC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26B4C4450(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_26B4C2660(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26B4C2568(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_26B542F84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26B542C34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B4C2958(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B4C2768(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B4C2660(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B542F84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
        v5 = sub_26B542C34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26B4C2EF8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_26B4C2834(0, v2, 1, a1);
  }

  return result;
}

BOOL sub_26B4C2768(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 - 1);
      v15 = v9;
      v14 = v12;
      result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v15, &v14);
      if (!result)
      {
LABEL_4:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B4C2834(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
    sub_26B4C6960();
    v7 = (v6 + 24 * v4);
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      v16 = *v10;
      v17 = *(v10 + 16);
      v14 = *(v10 - 24);
      v15 = *(v10 - 8);
      result = sub_26B5429E4();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 = (v7 + 24);
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 16);
      v12 = *v10;
      *v10 = *(v10 - 24);
      *(v10 + 2) = *(v10 - 1);
      *(v10 - 8) = v11;
      *(v10 - 24) = v12;
      v10 = (v10 - 24);
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26B4C2958(uint64_t result, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = a3;
  v81 = result;
  v7 = *(a3 + 1);
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v81;
    if (!*v81)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_26B4A3E78(v9);
      v9 = result;
    }

    v89 = v9;
    v75 = *(v9 + 2);
    if (v75 >= 2)
    {
      while (*v6)
      {
        v76 = *&v9[16 * v75];
        v77 = *&v9[16 * v75 + 24];
        sub_26B4C359C((*v6 + v76), (*v6 + *&v9[16 * v75 + 16]), *v6 + v77, v5);
        if (v4)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v75 - 2 >= *(v9 + 2))
        {
          goto LABEL_117;
        }

        v78 = &v9[16 * v75];
        *v78 = v76;
        *(v78 + 1) = v77;
        v89 = v9;
        result = sub_26B4A3DEC(v75 - 1);
        v9 = v89;
        v75 = *(v89 + 2);
        if (v75 <= 1)
        {
        }
      }

      goto LABEL_127;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v5 = *v6;
      v11 = *(*v6 + v10);
      v86 = *(*v6 + v8);
      v85 = v11;
      result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v86, &v85);
      v12 = result;
      v13 = v10;
      while (v7 - 2 != v13)
      {
        v14 = *(v5 + v13 + 1);
        v84 = *(v5 + v13 + 2);
        v83 = v14;
        result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v84, &v83);
        ++v13;
        if ((v12 & 1) != (result & 1))
        {
          v7 = v13 + 1;
          break;
        }
      }

      v6 = a3;
      if (v12)
      {
        if (v7 < v10)
        {
          goto LABEL_120;
        }

        if (v10 < v7)
        {
          v15 = v7 - 1;
          v16 = v10;
          do
          {
            if (v16 != v15)
            {
              v19 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v17 = *(v19 + v16);
              *(v19 + v16) = *(v19 + v15);
              *(v19 + v15) = v17;
            }
          }

          while (++v16 < v15--);
        }
      }

      v8 = v7;
    }

    v20 = *(v6 + 1);
    if (v8 < v20)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_119;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v20)
        {
          v21 = *(v6 + 1);
        }

        else
        {
          v21 = v10 + a4;
        }

        if (v21 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v8 != v21)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v8 < v10)
    {
      goto LABEL_118;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v30 = *(v9 + 2);
    v29 = *(v9 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      result = sub_26B4A276C((v29 > 1), v30 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v31;
    v32 = &v9[16 * v30];
    *(v32 + 4) = v10;
    *(v32 + 5) = v8;
    v33 = *v81;
    if (!*v81)
    {
      goto LABEL_128;
    }

    if (v30)
    {
      v6 = a3;
      while (1)
      {
        v34 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v35 = *(v9 + 4);
          v36 = *(v9 + 5);
          v45 = __OFSUB__(v36, v35);
          v37 = v36 - v35;
          v38 = v45;
LABEL_60:
          if (v38)
          {
            goto LABEL_107;
          }

          v51 = &v9[16 * v31];
          v53 = *v51;
          v52 = *(v51 + 1);
          v54 = __OFSUB__(v52, v53);
          v55 = v52 - v53;
          v56 = v54;
          if (v54)
          {
            goto LABEL_110;
          }

          v57 = &v9[16 * v34 + 32];
          v59 = *v57;
          v58 = *(v57 + 1);
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v55, v60))
          {
            goto LABEL_114;
          }

          if (v55 + v60 >= v37)
          {
            if (v37 < v60)
            {
              v34 = v31 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        v61 = &v9[16 * v31];
        v63 = *v61;
        v62 = *(v61 + 1);
        v45 = __OFSUB__(v62, v63);
        v55 = v62 - v63;
        v56 = v45;
LABEL_74:
        if (v56)
        {
          goto LABEL_109;
        }

        v64 = &v9[16 * v34];
        v66 = *(v64 + 4);
        v65 = *(v64 + 5);
        v45 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v45)
        {
          goto LABEL_112;
        }

        if (v67 < v55)
        {
          goto LABEL_4;
        }

LABEL_81:
        v5 = v34 - 1;
        if (v34 - 1 >= v31)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v72 = *&v9[16 * v5 + 32];
        v73 = *&v9[16 * v34 + 40];
        sub_26B4C359C((*a3 + v72), (*a3 + *&v9[16 * v34 + 32]), *a3 + v73, v33);
        if (v4)
        {
        }

        if (v73 < v72)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26B4A3E78(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_104;
        }

        v74 = &v9[16 * v5];
        *(v74 + 4) = v72;
        *(v74 + 5) = v73;
        v89 = v9;
        result = sub_26B4A3DEC(v34);
        v9 = v89;
        v31 = *(v89 + 2);
        if (v31 <= 1)
        {
          goto LABEL_4;
        }
      }

      v39 = &v9[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_105;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_106;
      }

      v46 = &v9[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_108;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_111;
      }

      if (v50 >= v42)
      {
        v68 = &v9[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_115;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_60;
    }

    v6 = a3;
LABEL_4:
    v7 = *(v6 + 1);
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v22 = *v6;
  v23 = v10;
  v24 = (*v6 + v8);
  v79 = v23;
  v6 = (v23 - v8);
LABEL_32:
  v25 = *(v22 + v8);
  v5 = v6;
  v26 = v24;
  while (1)
  {
    v27 = *(v26 - 1);
    v88 = v25;
    v87 = v27;
    result = static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v88, &v87);
    if ((result & 1) == 0)
    {
LABEL_31:
      ++v8;
      ++v24;
      --v6;
      if (v8 != v21)
      {
        goto LABEL_32;
      }

      v8 = v21;
      v10 = v79;
      goto LABEL_39;
    }

    if (!v22)
    {
      break;
    }

    v25 = *v26;
    *v26 = *(v26 - 1);
    *--v26 = v25;
    if (__CFADD__(v5++, 1))
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_26B4C2EF8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26B4A3E78(v10);
      v10 = result;
    }

    v84 = *(v10 + 16);
    if (v84 >= 2)
    {
      while (*v6)
      {
        v85 = *(v10 + 16 * v84);
        v86 = v10;
        v87 = *(v10 + 16 * (v84 - 1) + 32);
        v10 = *(v10 + 16 * (v84 - 1) + 40);
        sub_26B4C37C0((*v6 + 24 * v85), (*v6 + 24 * v87), *v6 + 24 * v10, v7);
        if (v5)
        {
        }

        if (v10 < v85)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_26B4A3E78(v86);
        }

        if (v84 - 2 >= *(v86 + 2))
        {
          goto LABEL_116;
        }

        v88 = &v86[16 * v84];
        *v88 = v85;
        *(v88 + 1) = v10;
        result = sub_26B4A3DEC(v84 - 1);
        v10 = v86;
        v84 = *(v86 + 2);
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v91 = result;
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v6 + 24 * v12;
      v7 = 24 * v11;
      v14 = *v6 + 24 * v11;
      v15 = *(v14 + 16);
      v17 = *v14;
      v16 = (v14 + 64);
      v101 = *v13;
      v104 = *(v13 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
      sub_26B4C6960();
      result = sub_26B5429E4();
      v18 = result;
      v92 = v11;
      v19 = v11 + 2;
      while (v8 != v19)
      {
        v102 = *(v16 - 1);
        v105 = *v16;
        v97 = *(v16 - 40);
        v99 = *(v16 - 24);
        result = sub_26B5429E4();
        ++v19;
        v16 += 24;
        if ((v18 & 1) != (result & 1))
        {
          v8 = v19 - 1;
          break;
        }
      }

      v11 = v92;
      v6 = a3;
      if (v18)
      {
        if (v8 < v92)
        {
          goto LABEL_119;
        }

        if (v92 < v8)
        {
          v20 = 0;
          v21 = 24 * v8;
          v22 = v92;
          do
          {
            if (v22 != v8 + v20 - 1)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v23 = (v28 + v7);
              v24 = v28 + v21;
              v25 = v23[16];
              v26 = *v23;
              v27 = *(v24 - 8);
              *v23 = *(v24 - 24);
              *(v23 + 2) = v27;
              *(v24 - 24) = v26;
              *(v24 - 8) = v25;
            }

            ++v22;
            --v20;
            v21 -= 24;
            v7 += 24;
          }

          while (v22 < v8 + v20);
        }
      }

      v7 = v91;
    }

    v29 = v6[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_118;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_120;
        }

        if (v11 + a4 < v29)
        {
          v29 = v11 + a4;
        }

        if (v29 < v11)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v8 != v29)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v8 < v11)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26B4A276C(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v38 = *(v10 + 16);
    v37 = *(v10 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_26B4A276C((v37 > 1), v38 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v39;
    v40 = v10 + 16 * v38;
    *(v40 + 32) = v11;
    *(v40 + 40) = v8;
    v41 = *v7;
    if (!*v7)
    {
      goto LABEL_127;
    }

    v96 = v8;
    if (v38)
    {
      v6 = a3;
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v10 + 32);
          v44 = *(v10 + 40);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_59:
          if (v46)
          {
            goto LABEL_106;
          }

          v59 = (v10 + 16 * v39);
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_109;
          }

          v65 = (v10 + 32 + 16 * v42);
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_113;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v69 = (v10 + 16 * v39);
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_73:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = v10 + 16 * v42;
        v74 = *(v72 + 32);
        v73 = *(v72 + 40);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v75 < v63)
        {
          goto LABEL_4;
        }

LABEL_80:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = *(v10 + 32 + 16 * v80);
        v82 = *(v10 + 32 + 16 * v42 + 8);
        sub_26B4C37C0((*a3 + 24 * v81), (*a3 + 24 * *(v10 + 32 + 16 * v42)), *a3 + 24 * v82, v41);
        if (v5)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_26B4A3E78(v10);
        }

        if (v80 >= *(v10 + 16))
        {
          goto LABEL_103;
        }

        v83 = v10 + 16 * v80;
        *(v83 + 32) = v81;
        *(v83 + 40) = v82;
        result = sub_26B4A3DEC(v42);
        v39 = *(v10 + 16);
        if (v39 <= 1)
        {
          goto LABEL_4;
        }
      }

      v47 = v10 + 32 + 16 * v39;
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_104;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_105;
      }

      v54 = (v10 + 16 * v39);
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_107;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_110;
      }

      if (v58 >= v50)
      {
        v76 = (v10 + 32 + 16 * v42);
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_114;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    v6 = a3;
LABEL_4:
    v8 = v6[1];
    v9 = v96;
    if (v96 >= v8)
    {
      goto LABEL_90;
    }
  }

  v95 = v29;
  v89 = v5;
  v30 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
  sub_26B4C6960();
  v31 = (v30 + 24 * v8);
  v93 = v11;
  v32 = v11 - v8;
LABEL_31:
  v33 = v32;
  v6 = v31;
  while (1)
  {
    v103 = *v6;
    v106 = *(v6 + 16);
    v98 = *(v6 - 3);
    v100 = *(v6 - 8);
    result = sub_26B5429E4();
    if ((result & 1) == 0)
    {
LABEL_30:
      ++v8;
      v31 += 3;
      --v32;
      if (v8 != v95)
      {
        goto LABEL_31;
      }

      v5 = v89;
      v7 = v91;
      v11 = v93;
      v8 = v95;
      goto LABEL_38;
    }

    if (!v30)
    {
      break;
    }

    v34 = *(v6 + 16);
    v35 = *v6;
    *v6 = *(v6 - 3);
    v6[2] = *(v6 - 1);
    *(v6 - 8) = v34;
    *(v6 - 3) = v35;
    v6 -= 3;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_26B4C359C(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v15 = v6 - 1;
        --v5;
        v16 = v10;
        while (1)
        {
          v17 = v5 + 1;
          v18 = *--v16;
          v19 = *v15;
          v24 = v18;
          v23 = v19;
          if (static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v24, &v23))
          {
            break;
          }

          if (v17 < v10 || v5 >= v10)
          {
            *v5 = *v16;
          }

          --v5;
          v10 = v16;
          if (v16 <= v4)
          {
            v10 = v16;
            goto LABEL_40;
          }
        }

        if (v17 < v6 || v5 >= v6)
        {
          *v5 = *v15;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v15 > v7);
      v6 = v15;
      if (v15 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        v22 = *v6;
        v21 = v11;
        if (static VCCommand.Engine.areInIncreasingOrder(_:_:)(&v22, &v21))
        {
          v12 = v6 + 1;
          v13 = v6;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v14 = v4 + 1;
          v13 = v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v14)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v13;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_26B4C37C0(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 < v11)
  {
    v12 = 24 * v9;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, v12);
    }

    v13 = &v4[v12];
    if (v8 < 24 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_35;
    }

    sub_26B4C6960();
    while (1)
    {
      v30 = *v6;
      v31 = v6[16];
      v26 = *v4;
      v28 = v4[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
      if ((sub_26B5429E4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 24;
      if (!v15)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 24;
      if (v4 >= v13 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_35;
      }
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 24;
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_13:
    v16 = *v14;
    *(v7 + 2) = *(v14 + 2);
    *v7 = v16;
    goto LABEL_14;
  }

  v17 = 24 * v11;
  if (a4 != __dst || &__dst[v17] <= a4)
  {
    memmove(a4, __dst, 24 * v11);
  }

  v13 = &v4[v17];
  if (v10 >= 24 && v6 > v7)
  {
    sub_26B4C6960();
    do
    {
      v25 = v6 - 24;
      v5 -= 24;
      v18 = v13;
      while (1)
      {
        v19 = (v5 + 24);
        v20 = *(v18 - 24);
        v18 -= 24;
        v32 = *(v18 + 16);
        v27 = *(v6 - 24);
        v29 = *(v6 - 8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD90, &unk_26B5454D0);
        if (sub_26B5429E4())
        {
          break;
        }

        if (v19 != v13)
        {
          v21 = *v18;
          *(v5 + 16) = *(v18 + 16);
          *v5 = v21;
        }

        v5 -= 24;
        v13 = v18;
        if (v18 <= v4)
        {
          v13 = v18;
          goto LABEL_35;
        }
      }

      if (v19 != v6)
      {
        v22 = *v25;
        *(v5 + 16) = *(v6 - 1);
        *v5 = v22;
      }

      if (v13 <= v4)
      {
        break;
      }

      v6 -= 24;
    }

    while (v25 > v7);
    v6 = v25;
  }

LABEL_35:
  v23 = 24 * ((v13 - v4) / 24);
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

uint64_t sub_26B4C3ABC(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26B542D34();
  v9 = result;
  if (*(v6 + 16))
  {
    v30 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v32 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v21 = *(v9 + 40);
      a4();
      result = sub_26B5429B4();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v32;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    v5 = v30;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_26B4C3D14(uint64_t result, unint64_t a2, char a3)
{
  v16 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26B4C3ABC(v5 + 1, &qword_2803FFC50, &unk_26B545500, sub_26B471200);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_26B4C40E4(&qword_2803FFC50, &unk_26B545500);
      goto LABEL_12;
    }

    sub_26B4C4214(v5 + 1, &qword_2803FFC50, &unk_26B545500, sub_26B471200);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26B471200();
  result = sub_26B5429B4();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_26B471254();
    do
    {
      v15 = *(*(v7 + 48) + a2);
      result = sub_26B542A34();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v16;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26B542FD4();
  __break(1u);
  return result;
}

uint64_t sub_26B4C3EFC(uint64_t result, unint64_t a2, char a3)
{
  v16 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26B4C3ABC(v5 + 1, &qword_2803FFC80, &qword_26B5450E8, sub_26B471350);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_26B4C40E4(&qword_2803FFC80, &qword_26B5450E8);
      goto LABEL_12;
    }

    sub_26B4C4214(v5 + 1, &qword_2803FFC80, &qword_26B5450E8, sub_26B471350);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26B471350();
  result = sub_26B5429B4();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    sub_26B4713A4();
    do
    {
      v15 = *(*(v7 + 48) + a2);
      result = sub_26B542A34();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v16;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26B542FD4();
  __break(1u);
  return result;
}

void *sub_26B4C40E4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_26B542D24();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_26B4C4214(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_26B542D34();
  v9 = result;
  if (*(v6 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v30 = *(*(v6 + 48) + (v17 | (v10 << 6)));
      v20 = *(v9 + 40);
      a4();
      result = sub_26B5429B4();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + v16) = v30;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v5 = v28;
        goto LABEL_28;
      }

      v19 = *(v6 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v5 = v9;
  }

  return result;
}

uint64_t _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE03allE11IdentifiersSaySSGyFZ_0()
{
  if (qword_2804004B8 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v0 = qword_2804004C0;
    if (qword_2804004C0 >> 62)
    {
      v1 = sub_26B542E34();
    }

    else
    {
      v1 = *((qword_2804004C0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x277D84F90];
    if (!v1)
    {
      return v2;
    }

    v42 = MEMORY[0x277D84F90];
    result = sub_26B4A2140(0, v1 & ~(v1 >> 63), 0);
    if (v1 < 0)
    {
      break;
    }

    v4 = 0;
    v2 = v42;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D677E50](v4, v0);
      }

      else
      {
        if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v5 = *(v0 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v9 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand];
      v8 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v31 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v32 = v7;
      v29 = v9;
      v30 = v8;
      v10 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v12 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v11 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v35 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v36 = v10;
      v33 = v12;
      v34 = v11;
      v14 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v13 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v15 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v40 = *&v5[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v38 = v14;
      v39 = v13;
      v37 = v15;
      memmove(__dst, &v5[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
      result = sub_26B4C4C80(__dst);
      if (result == 1)
      {
        goto LABEL_26;
      }

      v25 = __dst[0];
      v26 = __dst[1];
      v23 = 95;
      v24 = 0xE100000000000000;
      v27[8] = v37;
      v27[9] = v38;
      v27[10] = v39;
      v28 = v40;
      v27[4] = v33;
      v27[5] = v34;
      v27[6] = v35;
      v27[7] = v36;
      v27[0] = v29;
      v27[1] = v30;
      v27[2] = v31;
      v27[3] = v32;
      sub_26B4A5160(v27, v22);
      sub_26B49FAB4();
      v16 = sub_26B542CD4();
      if (!v16[2])
      {
        break;
      }

      v17 = v16[4];
      v18 = v16[5];

      sub_26B4A4CBC(&v29, &qword_2803FFD30, &qword_26B545410);

      v42 = v2;
      v20 = *(v2 + 16);
      v19 = *(v2 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_26B4A2140((v19 > 1), v20 + 1, 1);
        v2 = v42;
      }

      *(v2 + 16) = v20 + 1;
      v21 = v2 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      if (v1 - 1 == v4)
      {
        return v2;
      }

      if (__OFADD__(++v4, 1))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE7command14withIdentifierABSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  __dst[0] = a1;
  __dst[1] = a2;
  v52 = 95;
  v53 = 0xE100000000000000;
  sub_26B49FAB4();
  v2 = sub_26B542CD4();
  if (!v2[2])
  {
    goto LABEL_34;
  }

  v43 = v2[5];
  v44 = v2[4];

  if (qword_2804004C8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v3 = qword_2804004D0;
    v55 = MEMORY[0x277D84F90];
    if (qword_2804004D0 >> 62)
    {
      v4 = sub_26B542E34();
    }

    else
    {
      v4 = *((qword_2804004D0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = MEMORY[0x277D84F90];
    if (v4)
    {
      v6 = 0;
      v7 = v3 & 0xC000000000000001;
      v8 = v3 & 0xFFFFFFFFFFFFFF8;
      v42 = v3;
      while (1)
      {
        if (v7)
        {
          v9 = MEMORY[0x26D677E50](v6, v3);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_32;
          }

          v9 = *(v3 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_31;
        }

        v12 = &v9[OBJC_IVAR___VCCommandObjC_representedCommand];
        memmove(__dst, &v9[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
        if (sub_26B4C4C80(__dst) != 1)
        {
          break;
        }

LABEL_8:
        ++v6;
        if (v11 == v4)
        {
          v30 = v55;
          v5 = MEMORY[0x277D84F90];
          goto LABEL_25;
        }
      }

      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(v12 + 3);
      v50[2] = *(v12 + 2);
      v50[3] = v15;
      v50[0] = v13;
      v50[1] = v14;
      v16 = *(v12 + 4);
      v17 = *(v12 + 5);
      v18 = *(v12 + 7);
      v50[6] = *(v12 + 6);
      v50[7] = v18;
      v50[4] = v16;
      v50[5] = v17;
      v19 = *(v12 + 8);
      v20 = *(v12 + 9);
      v21 = *(v12 + 10);
      v51 = *(v12 + 22);
      v50[9] = v20;
      v50[10] = v21;
      v50[8] = v19;
      memmove(&v52, v12, 0xB8uLL);
      v48 = v52;
      v49 = v53;
      v46 = 95;
      v47 = 0xE100000000000000;
      sub_26B4A5160(&v52, v45);
      v22 = sub_26B542CD4();
      if (!v22[2])
      {
        goto LABEL_33;
      }

      v23 = v4;
      v24 = v8;
      v25 = v7;
      v27 = v22[4];
      v26 = v22[5];

      sub_26B4A4CBC(v50, &qword_2803FFD30, &qword_26B545410);
      if (v27 == v44 && v26 == v43)
      {
      }

      else
      {
        v28 = sub_26B542FB4();

        if ((v28 & 1) == 0)
        {

          goto LABEL_21;
        }
      }

      sub_26B542DD4();
      v29 = *(v55 + 16);
      sub_26B542E04();
      sub_26B542E14();
      sub_26B542DE4();
LABEL_21:
      v7 = v25;
      v8 = v24;
      v4 = v23;
      v3 = v42;
      goto LABEL_8;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_25:

    if (!*(v30 + 16))
    {
      goto LABEL_38;
    }

LABEL_28:
    if ((v30 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (*(v30 + 16))
    {
      goto LABEL_67;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  if (sub_26B542E34())
  {
    goto LABEL_28;
  }

LABEL_38:

  if (qword_2804004B8 != -1)
  {
LABEL_60:
    swift_once();
  }

  v31 = qword_2804004C0;
  v52 = v5;
  if (qword_2804004C0 >> 62)
  {
    v32 = sub_26B542E34();
    if (v32)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v32 = *((qword_2804004C0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
LABEL_41:
      v33 = 0;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          v34 = MEMORY[0x26D677E50](v33, v31);
        }

        else
        {
          if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v34 = *(v31 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v5 = &v34[OBJC_IVAR___VCCommandObjC_representedCommand];
        memmove(__dst, &v34[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
        if (sub_26B4C4C80(__dst) != 1 && (*v5 == a1 ? (v37 = v5[1] == a2) : (v37 = 0), v37 || (sub_26B542FB4() & 1) != 0))
        {
          sub_26B542DD4();
          v38 = *(v52 + 16);
          sub_26B542E04();
          sub_26B542E14();
          v5 = &v52;
          sub_26B542DE4();
        }

        else
        {
        }

        ++v33;
      }

      while (v36 != v32);
      v30 = v52;
      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }
  }

  v30 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_70;
  }

LABEL_63:
  if ((v30 & 0x4000000000000000) != 0)
  {
LABEL_70:
    if (!sub_26B542E34())
    {
      goto LABEL_68;
    }

LABEL_65:
    if ((v30 & 0xC000000000000001) != 0)
    {
LABEL_69:
      MEMORY[0x26D677E50](0, v30);
      goto LABEL_68;
    }

    if (*(v30 + 16))
    {
LABEL_67:
      v39 = *(v30 + 32);
      goto LABEL_68;
    }

    __break(1u);
  }

  else
  {
    if (*(v30 + 16))
    {
      goto LABEL_65;
    }

LABEL_68:
  }
}

double sub_26B4C4C5C(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_26B4C4C80(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_26B4C4C98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD78, &qword_26B5454B8);
    v3 = sub_26B542E64();
    v4 = a1 + 32;

    while (1)
    {
      sub_26B4C68C8(v4, &v13, &qword_2803FFD80, &qword_26B5454C0);
      v5 = v13;
      v6 = v14;
      result = sub_26B4A19F4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26B4A5218(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_26B4C4DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_26B4C4E18(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_26B542B04();

    return sub_26B542BA4();
  }

  return result;
}

unint64_t sub_26B4C4EB4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_26B542B04();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_26B542BA4();
}

uint64_t sub_26B4C4F64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26B471350();
  result = MEMORY[0x26D677D20](v2, &type metadata for VCCommand.Idiom, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26B4C2344(&v7, v6, sub_26B471350, &type metadata for VCCommand.Idiom, sub_26B4713A4, sub_26B4C3EFC);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26B4C5020(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_26B471200();
  result = MEMORY[0x26D677D20](v2, &type metadata for VCCommand.Engine, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_26B4C2344(&v7, v6, sub_26B471200, &type metadata for VCCommand.Engine, sub_26B471254, sub_26B4C3D14);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_26B4C50DC(void *a1, uint64_t *a2)
{
  if (*a1 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v2 = *a2;
    if (*a2 >> 62)
    {
      if (v2 < 0)
      {
        v25 = *a2;
      }

      v3 = sub_26B542E34();
    }

    else
    {
      v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (!v3)
    {
      return v4;
    }

    v46 = MEMORY[0x277D84F90];
    result = sub_26B4A2140(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      break;
    }

    v6 = 0;
    v4 = v46;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D677E50](v6, v2);
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v2 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 48];
      v11 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand];
      v10 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 16];
      v35 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 32];
      v36 = v9;
      v33 = v11;
      v34 = v10;
      v12 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 112];
      v14 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 64];
      v13 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 80];
      v39 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 96];
      v40 = v12;
      v37 = v14;
      v38 = v13;
      v16 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 144];
      v15 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 160];
      v17 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 128];
      v44 = *&v7[OBJC_IVAR___VCCommandObjC_representedCommand + 176];
      v42 = v16;
      v43 = v15;
      v41 = v17;
      memmove(__dst, &v7[OBJC_IVAR___VCCommandObjC_representedCommand], 0xB8uLL);
      result = sub_26B4C4C80(__dst);
      if (result == 1)
      {
        goto LABEL_28;
      }

      v29 = __dst[0];
      v30 = __dst[1];
      v27 = 95;
      v28 = 0xE100000000000000;
      v31[8] = v41;
      v31[9] = v42;
      v31[10] = v43;
      v32 = v44;
      v31[4] = v37;
      v31[5] = v38;
      v31[6] = v39;
      v31[7] = v40;
      v31[0] = v33;
      v31[1] = v34;
      v31[2] = v35;
      v31[3] = v36;
      sub_26B4A5160(v31, v26);
      sub_26B49FAB4();
      v18 = sub_26B542CD4();
      if (!v18[2])
      {
        break;
      }

      v19 = v18[4];
      v20 = v18[5];

      sub_26B4A4CBC(&v33, &qword_2803FFD30, &qword_26B545410);
      v46 = v4;
      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_26B4A2140((v21 > 1), v22 + 1, 1);
        v4 = v46;
      }

      *(v4 + 16) = v22 + 1;
      v23 = v4 + 16 * v22;
      *(v23 + 32) = v19;
      *(v23 + 40) = v20;
      if (v3 - 1 == v6)
      {
        return v4;
      }

      if (__OFADD__(++v6, 1))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v24 = a2;
    swift_once();
    a2 = v24;
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

BOOL _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE47currentDeviceHasSwiftCodingModeSupportForLocaleSbvgZ_0()
{
  v126 = sub_26B542994();
  v124 = *(v126 - 8);
  v0 = *(v124 + 64);
  MEMORY[0x28223BE20](v126, v1, v2, v3);
  v114 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD48, &qword_26B545498);
  v5 = *(*(v122 - 8) + 64);
  MEMORY[0x28223BE20](v122, v6, v7, v8);
  v125 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD50, &qword_26B5454A0);
  v11 = *(*(v10 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v10 - 8, v12, v13, v14);
  v115 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v15, v17, v18, v19);
  v127 = &v113 - v21;
  MEMORY[0x28223BE20](v20, v22, v23, v24);
  v123 = &v113 - v25;
  v26 = sub_26B5428E4();
  v27 = *(v26 - 8);
  v129 = v26;
  v130 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29, v30, v31);
  v116 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD60, &qword_26B5454A8);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33, v36, v37, v38);
  v128 = &v113 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD68, &qword_26B5454B0);
  v41 = *(*(v40 - 8) + 64);
  v45 = MEMORY[0x28223BE20](v40 - 8, v42, v43, v44);
  v131 = &v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v45, v47, v48, v49);
  v52 = &v113 - v51;
  MEMORY[0x28223BE20](v50, v53, v54, v55);
  v57 = &v113 - v56;
  v58 = sub_26B542914();
  v59 = *(v58 - 8);
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v58, v61, v62, v63);
  v65 = &v113 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_26B542934();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  v72 = MEMORY[0x28223BE20](v66, v69, v70, v71);
  v119 = &v113 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72, v74, v75, v76);
  v78 = &v113 - v77;
  v117 = sub_26B542974();
  v79 = sub_26B542964();
  sub_26B542944();

  sub_26B542924();
  v80 = *(v67 + 8);
  v120 = v67 + 8;
  v121 = v66;
  v81 = v66;
  v82 = v129;
  v118 = v80;
  v80(v78, v81);
  v83 = v57;
  v84 = v128;
  sub_26B542904();
  v85 = v65;
  v86 = v130;
  (*(v59 + 8))(v85, v58);
  sub_26B5428D4();
  (*(v86 + 56))(v52, 0, 1, v82);
  v87 = *(v34 + 56);
  sub_26B4C68C8(v83, v84, &qword_2803FFD68, &qword_26B5454B0);
  sub_26B4C68C8(v52, v84 + v87, &qword_2803FFD68, &qword_26B5454B0);
  v88 = *(v86 + 48);
  if (v88(v84, 1, v82) != 1)
  {
    sub_26B4C68C8(v84, v131, &qword_2803FFD68, &qword_26B5454B0);
    if (v88(v84 + v87, 1, v82) != 1)
    {
      v92 = *(v86 + 32);
      v113 = v83;
      v93 = v116;
      v92(v116, v84 + v87, v82);
      sub_26B4C687C(&qword_2803FFD70, MEMORY[0x277CC9640]);
      v94 = v131;
      v95 = sub_26B542A34();
      v96 = *(v86 + 8);
      v96(v93, v82);
      sub_26B4A4CBC(v52, &qword_2803FFD68, &qword_26B5454B0);
      sub_26B4A4CBC(v113, &qword_2803FFD68, &qword_26B5454B0);
      v96(v94, v82);
      sub_26B4A4CBC(v84, &qword_2803FFD68, &qword_26B5454B0);
      if ((v95 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_26B4A4CBC(v52, &qword_2803FFD68, &qword_26B5454B0);
    sub_26B4A4CBC(v83, &qword_2803FFD68, &qword_26B5454B0);
    (*(v86 + 8))(v131, v82);
LABEL_6:
    v89 = &qword_2803FFD60;
    v90 = &qword_26B5454A8;
    v91 = v84;
LABEL_14:
    sub_26B4A4CBC(v91, v89, v90);
    return 0;
  }

  sub_26B4A4CBC(v52, &qword_2803FFD68, &qword_26B5454B0);
  sub_26B4A4CBC(v83, &qword_2803FFD68, &qword_26B5454B0);
  if (v88(v84 + v87, 1, v82) != 1)
  {
    goto LABEL_6;
  }

  sub_26B4A4CBC(v84, &qword_2803FFD68, &qword_26B5454B0);
LABEL_8:
  v97 = sub_26B542964();
  v98 = sub_26B542964();
  v99 = v119;
  sub_26B542944();

  sub_26B5428C4();
  v118(v99, v121);
  v100 = v123;
  sub_26B542954();

  v101 = v124;
  v102 = v126;
  v103 = v127;
  (*(v124 + 104))(v127, *MEMORY[0x277D79868], v126);
  (*(v101 + 56))(v103, 0, 1, v102);
  v104 = *(v122 + 48);
  v105 = v125;
  sub_26B4C68C8(v100, v125, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4C68C8(v103, v105 + v104, &qword_2803FFD50, &qword_26B5454A0);
  v106 = *(v101 + 48);
  if (v106(v105, 1, v102) == 1)
  {
    sub_26B4A4CBC(v103, &qword_2803FFD50, &qword_26B5454A0);
    sub_26B4A4CBC(v100, &qword_2803FFD50, &qword_26B5454A0);
    if (v106(v105 + v104, 1, v102) == 1)
    {
      sub_26B4A4CBC(v105, &qword_2803FFD50, &qword_26B5454A0);
      return 1;
    }

    goto LABEL_13;
  }

  v107 = v115;
  sub_26B4C68C8(v105, v115, &qword_2803FFD50, &qword_26B5454A0);
  if (v106(v105 + v104, 1, v102) == 1)
  {
    sub_26B4A4CBC(v127, &qword_2803FFD50, &qword_26B5454A0);
    sub_26B4A4CBC(v100, &qword_2803FFD50, &qword_26B5454A0);
    (*(v101 + 8))(v107, v102);
LABEL_13:
    v89 = &qword_2803FFD48;
    v90 = &qword_26B545498;
    v91 = v105;
    goto LABEL_14;
  }

  v109 = v105 + v104;
  v110 = v114;
  (*(v101 + 32))(v114, v109, v102);
  sub_26B4C687C(&qword_2803FFD58, MEMORY[0x277D79870]);
  v111 = sub_26B542A34();
  v112 = *(v101 + 8);
  v112(v110, v102);
  sub_26B4A4CBC(v127, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4A4CBC(v100, &qword_2803FFD50, &qword_26B5454A0);
  v112(v107, v102);
  sub_26B4A4CBC(v105, &qword_2803FFD50, &qword_26B5454A0);
  return (v111 & 1) != 0;
}

uint64_t _sSo13VCCommandObjCC32SpeechRecognitionCommandServicesE28currentDeviceHasLegacyEngineSbvgZ_0()
{
  v0 = sub_26B542994();
  v52 = *(v0 - 8);
  v53 = v0;
  v1 = *(v52 + 64);
  MEMORY[0x28223BE20](v0, v2, v3, v4);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD48, &qword_26B545498);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v9, v10, v11);
  v13 = &v51 - v12;
  v14 = sub_26B542934();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17, v18, v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFD50, &qword_26B5454A0);
  v23 = *(*(v22 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v22 - 8, v24, v25, v26);
  v54 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v27, v29, v30, v31);
  v34 = &v51 - v33;
  MEMORY[0x28223BE20](v32, v35, v36, v37);
  v39 = &v51 - v38;
  sub_26B542974();
  v40 = sub_26B542964();
  v41 = sub_26B542964();
  sub_26B542944();

  sub_26B5428C4();
  (*(v15 + 8))(v21, v14);
  sub_26B542954();
  v42 = v52;

  v43 = v53;
  (*(v42 + 104))(v34, *MEMORY[0x277D79860], v53);
  (*(v42 + 56))(v34, 0, 1, v43);
  v44 = *(v7 + 56);
  sub_26B4C68C8(v39, v13, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4C68C8(v34, &v13[v44], &qword_2803FFD50, &qword_26B5454A0);
  v45 = *(v42 + 48);
  if (v45(v13, 1, v43) != 1)
  {
    sub_26B4C68C8(v13, v54, &qword_2803FFD50, &qword_26B5454A0);
    if (v45(&v13[v44], 1, v43) != 1)
    {
      v47 = v51;
      (*(v42 + 32))(v51, &v13[v44], v43);
      sub_26B4C687C(&qword_2803FFD58, MEMORY[0x277D79870]);
      v48 = v54;
      v46 = sub_26B542A34();
      v49 = *(v42 + 8);
      v49(v47, v43);
      sub_26B4A4CBC(v34, &qword_2803FFD50, &qword_26B5454A0);
      sub_26B4A4CBC(v39, &qword_2803FFD50, &qword_26B5454A0);
      v49(v48, v43);
      sub_26B4A4CBC(v13, &qword_2803FFD50, &qword_26B5454A0);
      return v46 & 1;
    }

    sub_26B4A4CBC(v34, &qword_2803FFD50, &qword_26B5454A0);
    sub_26B4A4CBC(v39, &qword_2803FFD50, &qword_26B5454A0);
    (*(v42 + 8))(v54, v43);
    goto LABEL_6;
  }

  sub_26B4A4CBC(v34, &qword_2803FFD50, &qword_26B5454A0);
  sub_26B4A4CBC(v39, &qword_2803FFD50, &qword_26B5454A0);
  if (v45(&v13[v44], 1, v43) != 1)
  {
LABEL_6:
    sub_26B4A4CBC(v13, &qword_2803FFD48, &qword_26B545498);
    v46 = 0;
    return v46 & 1;
  }

  sub_26B4A4CBC(v13, &qword_2803FFD50, &qword_26B5454A0);
  v46 = 1;
  return v46 & 1;
}

unint64_t sub_26B4C62C8()
{
  result = qword_2803FFD38;
  if (!qword_2803FFD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFD38);
  }

  return result;
}

char *_sSo23VCCommandCollectionObjCC32SpeechRecognitionCommandServicesE03allB11IdentifiersSaySSGyFZ_0()
{
  if (qword_280400548 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v0 = qword_280400550;
    v21 = MEMORY[0x277D84F90];
    v1 = qword_280400550 >> 62 ? sub_26B542E34() : *((qword_280400550 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v2 = MEMORY[0x277D84F90];
    v3 = 0x2803FF000uLL;
    if (v1)
    {
      v4 = 0;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x26D677E50](v4, v0);
        }

        else
        {
          if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          result = *(v0 + 8 * v4 + 32);
        }

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (!*&result[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 8])
        {
          goto LABEL_42;
        }

        if (*&result[OBJC_IVAR___VCCommandCollectionObjC_representedCollection + 40])
        {
          sub_26B542DD4();
          v7 = *(v21 + 16);
          sub_26B542E04();
          sub_26B542E14();
          sub_26B542DE4();
        }

        else
        {
        }

        ++v4;
      }

      while (v6 != v1);
      v8 = v21;
      v2 = MEMORY[0x277D84F90];
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_19:
        if ((v8 & 0x4000000000000000) == 0)
        {
          v9 = *(v8 + 16);
          if (!v9)
          {
            goto LABEL_40;
          }

          goto LABEL_21;
        }
      }
    }

    v9 = sub_26B542E34();
    if (!v9)
    {
LABEL_40:

      return v2;
    }

LABEL_21:
    result = sub_26B4A2140(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D677E50](v10, v8);
      }

      else
      {
        if (v10 >= *(v8 + 16))
        {
          goto LABEL_36;
        }

        result = *(v8 + 8 * v10 + 32);
      }

      v12 = result;
      v13 = &result[*(v3 + 3392)];
      v14 = *(v13 + 1);
      if (!v14)
      {
        goto LABEL_43;
      }

      v15 = v3;
      v16 = *v13;
      v17 = *(v13 + 1);

      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_26B4A2140((v18 > 1), v19 + 1, 1);
      }

      *(v2 + 16) = v19 + 1;
      v20 = v2 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v14;
      ++v10;
      v3 = v15;
      if (v11 == v9)
      {
        goto LABEL_40;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void _sSo23VCCommandCollectionObjCC32SpeechRecognitionCommandServicesE10collection14withIdentifierABSgSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_280400548 != -1)
  {
LABEL_23:
    swift_once();
  }

  v4 = qword_280400550;
  v23 = MEMORY[0x277D84F90];
  if (qword_280400550 >> 62)
  {
    v5 = sub_26B542E34();
    if (v5)
    {
LABEL_4:
      v6 = 0;
      v7 = v4 & 0xC000000000000001;
      v8 = v4 & 0xFFFFFFFFFFFFFF8;
      v9 = 0x2803FF000uLL;
      v21 = v4;
      v22 = v4 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v7)
        {
          v10 = MEMORY[0x26D677E50](v6, v4);
        }

        else
        {
          if (v6 >= *(v8 + 16))
          {
            goto LABEL_22;
          }

          v10 = *(v4 + 8 * v6 + 32);
        }

        v11 = v10;
        v12 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v13 = &v10[*(v9 + 3392)];
        v14 = *(v13 + 1);
        if (v14 && (*v13 == a1 ? (v15 = v14 == a2) : (v15 = 0), v15 || (sub_26B542FB4() & 1) != 0))
        {
          sub_26B542DD4();
          v16 = v9;
          v17 = v7;
          v18 = *(v23 + 16);
          sub_26B542E04();
          v7 = v17;
          v9 = v16;
          sub_26B542E14();
          sub_26B542DE4();
          v4 = v21;
          v8 = v22;
        }

        else
        {
        }

        ++v6;
      }

      while (v12 != v5);
      v19 = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v5 = *((qword_280400550 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v19 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_26:
  if ((v19 & 0x4000000000000000) != 0)
  {
LABEL_31:
    if (!sub_26B542E34())
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  if (!*(v19 + 16))
  {
LABEL_32:

    return;
  }

LABEL_28:
  if ((v19 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D677E50](0, v19);
    goto LABEL_32;
  }

  if (*(v19 + 16))
  {
    v20 = *(v19 + 32);
    goto LABEL_32;
  }

  __break(1u);
}

uint64_t sub_26B4C6834(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26B4C687C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26B4C68C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B4C6930(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFu)
  {
  }

  return result;
}

uint64_t sub_26B4C6948(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFu)
  {
  }

  return result;
}

unint64_t sub_26B4C6960()
{
  result = qword_2803FFD98;
  if (!qword_2803FFD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803FFD90, &unk_26B5454D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFD98);
  }

  return result;
}

uint64_t sub_26B4C69C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26B4C6A20()
{
  result = qword_2803FFDA8;
  if (!qword_2803FFDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803FFDA8);
  }

  return result;
}

SpeechRecognitionCommandServices::VCCommand::Platform_optional __swiftcall VCCommand.Platform.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542E74();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCCommand.Platform.rawValue.getter()
{
  v1 = *v0;
  v2 = 5459817;
  v3 = 1397716596;
  v4 = 0x534F6E6F69736976;
  if (v1 != 3)
  {
    v4 = 0x534F6863746177;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x534F63616DLL;
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

uint64_t sub_26B4C6B80(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xE700000000000000;
    v12 = 0x646F50656D6F68;
    v13 = 1685016681;
    v14 = 0xE400000000000000;
    if (a1 != 8)
    {
      v13 = 0x6863746177;
      v14 = 0xE500000000000000;
    }

    if (a1 != 7)
    {
      v12 = v13;
      v11 = v14;
    }

    v15 = 0xE600000000000000;
    v16 = 0x6E6F69736976;
    if (a1 != 5)
    {
      v16 = 0x5654656C707061;
      v15 = 0xE700000000000000;
    }

    if (a1 <= 6u)
    {
      v9 = v16;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 6)
    {
      v10 = v15;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v3 = 0xE300000000000000;
    v4 = 0xE400000000000000;
    v5 = 1684099177;
    v6 = 0xE700000000000000;
    v7 = 0x79616C50726163;
    if (a1 != 3)
    {
      v7 = 0x6C6174614363616DLL;
      v6 = 0xEB00000000747379;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x656E6F685069;
    if (a1)
    {
      v3 = 0xE600000000000000;
    }

    else
    {
      v8 = 6513005;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xE600000000000000;
        if (v9 != 0x6E6F69736976)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0xE700000000000000;
        if (v9 != 0x5654656C707061)
        {
LABEL_57:
          v18 = sub_26B542FB4();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xE700000000000000;
      if (v9 != 0x646F50656D6F68)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE400000000000000;
      if (v9 != 1685016681)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x6863746177)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE300000000000000;
      if (v9 != 6513005)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE400000000000000;
    if (v9 != 1684099177)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x79616C50726163)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xEB00000000747379;
    if (v9 != 0x6C6174614363616DLL)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_26B4C6E60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x534F63616DLL;
    }

    else
    {
      v4 = 5459817;
    }

    if (v2)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v3 = 0xE300000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1397716596;
  }

  else if (a1 == 3)
  {
    v3 = 0xE800000000000000;
    v4 = 0x534F6E6F69736976;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x534F6863746177;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x534F63616DLL;
    }

    else
    {
      v9 = 5459817;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x534F6E6F69736976;
    if (a2 != 3)
    {
      v6 = 0x534F6863746177;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1397716596;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26B542FB4();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_26B4C6FCC()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

uint64_t sub_26B4C709C()
{
  *v0;
  *v0;
  *v0;
  sub_26B542AE4();
}

uint64_t sub_26B4C7158()
{
  sub_26B542AE4();
}

uint64_t sub_26B4C72B0()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

void sub_26B4C7388(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5459817;
  v5 = 0xE400000000000000;
  v6 = 1397716596;
  v7 = 0xE800000000000000;
  v8 = 0x534F6E6F69736976;
  if (v2 != 3)
  {
    v8 = 0x534F6863746177;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x534F63616DLL;
    v3 = 0xE500000000000000;
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

Swift::String __swiftcall VCCommand.Idiom.displayName()()
{
  v1 = sub_26B542934();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3, v4, v5);
  v6 = sub_26B542A64();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8, v9, v10);
  *v0;
  sub_26B542A54();
  sub_26B5428F4();
  v11 = sub_26B542AB4();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t static VCCommand.Idiom.areInIncreasingOrder(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *a2;
  while (1)
  {
    v5 = byte_287C04440[v2 + 32];
    if (v5 <= 4)
    {
      break;
    }

    if (byte_287C04440[v2 + 32] <= 6u)
    {
      if (v5 == 5)
      {
        v10 = 0x6E6F69736976;
      }

      else
      {
        v10 = 0x5654656C707061;
      }

      if (v5 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v11 = 0xE700000000000000;
      }

      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

    else if (v5 == 7)
    {
      v11 = 0xE700000000000000;
      v10 = 0x646F50656D6F68;
      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

    else if (v5 == 8)
    {
      v10 = 1685016681;
      v11 = 0xE400000000000000;
      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v11 = 0xE500000000000000;
      v10 = 0x6863746177;
      if (v3 <= 4)
      {
        goto LABEL_35;
      }
    }

LABEL_52:
    v16 = 1685016681;
    if (v3 != 8)
    {
      v16 = 0x6863746177;
    }

    v17 = 0xE500000000000000;
    if (v3 == 8)
    {
      v17 = 0xE400000000000000;
    }

    if (v3 == 7)
    {
      v16 = 0x646F50656D6F68;
      v17 = 0xE700000000000000;
    }

    v18 = 0x5654656C707061;
    if (v3 == 5)
    {
      v18 = 0x6E6F69736976;
      v19 = 0xE600000000000000;
    }

    else
    {
      v19 = 0xE700000000000000;
    }

    if (v3 <= 6)
    {
      v20 = v18;
    }

    else
    {
      v20 = v16;
    }

    if (v3 <= 6)
    {
      v15 = v19;
    }

    else
    {
      v15 = v17;
    }

    if (v10 == v20)
    {
      goto LABEL_68;
    }

LABEL_69:
    v21 = sub_26B542FB4();

    if (v21)
    {
      goto LABEL_75;
    }

    if (++v2 == 10)
    {
      __break(1u);
LABEL_150:
      __break(1u);
      return result;
    }
  }

  v6 = 0x6C6174614363616DLL;
  if (v5 == 3)
  {
    v6 = 0x79616C50726163;
  }

  v7 = 0xEB00000000747379;
  if (v5 == 3)
  {
    v7 = 0xE700000000000000;
  }

  if (v5 == 2)
  {
    v6 = 1684099177;
    v7 = 0xE400000000000000;
  }

  v8 = 0x656E6F685069;
  if (!byte_287C04440[v2 + 32])
  {
    v8 = 6513005;
  }

  v9 = 0xE300000000000000;
  if (byte_287C04440[v2 + 32])
  {
    v9 = 0xE600000000000000;
  }

  if (byte_287C04440[v2 + 32] <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (byte_287C04440[v2 + 32] <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v3 > 4)
  {
    goto LABEL_52;
  }

LABEL_35:
  if (v3 <= 1)
  {
    if (v3)
    {
      v15 = 0xE600000000000000;
      if (v10 == 0x656E6F685069)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v15 = 0xE300000000000000;
      if (v10 == 6513005)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_69;
  }

  v12 = 0x6C6174614363616DLL;
  if (v3 == 3)
  {
    v12 = 0x79616C50726163;
  }

  v13 = 0xEB00000000747379;
  if (v3 == 3)
  {
    v13 = 0xE700000000000000;
  }

  if (v3 == 2)
  {
    v14 = 1684099177;
  }

  else
  {
    v14 = v12;
  }

  if (v3 == 2)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = v13;
  }

  if (v10 != v14)
  {
    goto LABEL_69;
  }

LABEL_68:
  if (v11 != v15)
  {
    goto LABEL_69;
  }

LABEL_75:
  v23 = 0;
  while (2)
  {
    v24 = byte_287C04440[v23 + 32];
    if (v24 > 4)
    {
      if (byte_287C04440[v23 + 32] <= 6u)
      {
        if (v24 == 5)
        {
          v29 = 0x6E6F69736976;
        }

        else
        {
          v29 = 0x5654656C707061;
        }

        if (v24 == 5)
        {
          v30 = 0xE600000000000000;
        }

        else
        {
          v30 = 0xE700000000000000;
        }

        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }

      else if (v24 == 7)
      {
        v30 = 0xE700000000000000;
        v29 = 0x646F50656D6F68;
        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }

      else if (v24 == 8)
      {
        v29 = 1685016681;
        v30 = 0xE400000000000000;
        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v30 = 0xE500000000000000;
        v29 = 0x6863746177;
        if (v4 > 4)
        {
          goto LABEL_126;
        }
      }
    }

    else
    {
      v25 = 0x6C6174614363616DLL;
      if (v24 == 3)
      {
        v25 = 0x79616C50726163;
      }

      v26 = 0xEB00000000747379;
      if (v24 == 3)
      {
        v26 = 0xE700000000000000;
      }

      if (v24 == 2)
      {
        v25 = 1684099177;
        v26 = 0xE400000000000000;
      }

      v27 = 0x656E6F685069;
      if (!byte_287C04440[v23 + 32])
      {
        v27 = 6513005;
      }

      v28 = 0xE300000000000000;
      if (byte_287C04440[v23 + 32])
      {
        v28 = 0xE600000000000000;
      }

      if (byte_287C04440[v23 + 32] <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = v25;
      }

      if (byte_287C04440[v23 + 32] <= 1u)
      {
        v30 = v28;
      }

      else
      {
        v30 = v26;
      }

      if (v4 > 4)
      {
LABEL_126:
        v35 = 1685016681;
        if (v4 != 8)
        {
          v35 = 0x6863746177;
        }

        v36 = 0xE500000000000000;
        if (v4 == 8)
        {
          v36 = 0xE400000000000000;
        }

        if (v4 == 7)
        {
          v35 = 0x646F50656D6F68;
          v36 = 0xE700000000000000;
        }

        v37 = 0x5654656C707061;
        if (v4 == 5)
        {
          v37 = 0x6E6F69736976;
          v38 = 0xE600000000000000;
        }

        else
        {
          v38 = 0xE700000000000000;
        }

        if (v4 <= 6)
        {
          v39 = v37;
        }

        else
        {
          v39 = v35;
        }

        if (v4 <= 6)
        {
          v34 = v38;
        }

        else
        {
          v34 = v36;
        }

        if (v29 == v39)
        {
          goto LABEL_142;
        }

        goto LABEL_143;
      }
    }

    if (v4 <= 1)
    {
      if (v4)
      {
        v34 = 0xE600000000000000;
        if (v29 == 0x656E6F685069)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v34 = 0xE300000000000000;
        if (v29 == 6513005)
        {
          goto LABEL_142;
        }
      }

      goto LABEL_143;
    }

    v31 = 0x6C6174614363616DLL;
    if (v4 == 3)
    {
      v31 = 0x79616C50726163;
    }

    v32 = 0xEB00000000747379;
    if (v4 == 3)
    {
      v32 = 0xE700000000000000;
    }

    if (v4 == 2)
    {
      v33 = 1684099177;
    }

    else
    {
      v33 = v31;
    }

    if (v4 == 2)
    {
      v34 = 0xE400000000000000;
    }

    else
    {
      v34 = v32;
    }

    if (v29 != v33)
    {
      goto LABEL_143;
    }

LABEL_142:
    if (v30 != v34)
    {
LABEL_143:
      v40 = sub_26B542FB4();

      if (v40)
      {
        return v2 < v23;
      }

      if (++v23 == 10)
      {
        goto LABEL_150;
      }

      continue;
    }

    break;
  }

  return v2 < v23;
}

uint64_t VCCommand.Idiom.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x646F50656D6F68;
    v7 = 1685016681;
    if (v1 != 8)
    {
      v7 = 0x6863746177;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0x6E6F69736976;
    if (v1 != 5)
    {
      v8 = 0x5654656C707061;
    }

    if (*v0 <= 6u)
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
    v2 = 6513005;
    v3 = 1684099177;
    v4 = 0x79616C50726163;
    if (v1 != 3)
    {
      v4 = 0x6C6174614363616DLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x656E6F685069;
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
}

uint64_t sub_26B4C7F38(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 2)
  {
    v8 = *i;
    v11[0] = *(i - 1);
    v11[1] = v8;

    v9 = a1(v11);

    if (v3 || (v9 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

SpeechRecognitionCommandServices::VCCommand::Idiom_optional __swiftcall VCCommand.Idiom.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542E74();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B4C8060()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B4C7158();
  return sub_26B543054();
}

uint64_t sub_26B4C80B0()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B4C7158();
  return sub_26B543054();
}

uint64_t sub_26B4C8100@<X0>(uint64_t *a1@<X8>)
{
  result = VCCommand.Idiom.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SpeechRecognitionCommandServices::VCCommand::UserImpact_optional __swiftcall VCCommand.UserImpact.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_26B4C82E4()
{
  v1 = 0x6C616D726F4ELL;
  v2 = 0x7065656C53;
  if (*v0 != 2)
  {
    v2 = 0x6F68706F7263694DLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_26B4C8368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4D9B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B4C83A8(uint64_t a1)
{
  v2 = sub_26B4C8A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C83E4(uint64_t a1)
{
  v2 = sub_26B4C8A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C842C(uint64_t a1)
{
  v2 = sub_26B4C8AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C8468(uint64_t a1)
{
  v2 = sub_26B4C8AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C84A4(uint64_t a1)
{
  v2 = sub_26B4C8B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C84E0(uint64_t a1)
{
  v2 = sub_26B4C8B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C851C(uint64_t a1)
{
  v2 = sub_26B4C8BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C8558(uint64_t a1)
{
  v2 = sub_26B4C8BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C8594(uint64_t a1)
{
  v2 = sub_26B4C8AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C85D0(uint64_t a1)
{
  v2 = sub_26B4C8AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommand.InteractionLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDB0, &qword_26B545558);
  v52 = *(v3 - 8);
  v53 = v3;
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v51 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDB8, &qword_26B545560);
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v48 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDC0, &qword_26B545568);
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15, v17, v18, v19);
  v45 = &v43 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDC8, &qword_26B545570);
  v43 = *(v21 - 8);
  v44 = v21;
  v22 = *(v43 + 64);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v27 = &v43 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDD0, &qword_26B545578);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31, v32, v33);
  v35 = &v43 - v34;
  v36 = *v1;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4C8A50();
  sub_26B543074();
  v38 = (v29 + 8);
  if (v36 > 1)
  {
    if (v36 == 2)
    {
      v56 = 2;
      sub_26B4C8AF8();
      v39 = v48;
      sub_26B542F14();
      v41 = v49;
      v40 = v50;
    }

    else
    {
      v57 = 3;
      sub_26B4C8AA4();
      v39 = v51;
      sub_26B542F14();
      v41 = v52;
      v40 = v53;
    }

    goto LABEL_8;
  }

  if (v36)
  {
    v55 = 1;
    sub_26B4C8B4C();
    v39 = v45;
    sub_26B542F14();
    v41 = v46;
    v40 = v47;
LABEL_8:
    (*(v41 + 8))(v39, v40);
    return (*v38)(v35, v28);
  }

  v54 = 0;
  sub_26B4C8BA0();
  sub_26B542F14();
  (*(v43 + 8))(v27, v44);
  return (*v38)(v35, v28);
}

unint64_t sub_26B4C8A50()
{
  result = qword_280400610;
  if (!qword_280400610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400610);
  }

  return result;
}

unint64_t sub_26B4C8AA4()
{
  result = qword_280400618;
  if (!qword_280400618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400618);
  }

  return result;
}

unint64_t sub_26B4C8AF8()
{
  result = qword_280400620;
  if (!qword_280400620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400620);
  }

  return result;
}

unint64_t sub_26B4C8B4C()
{
  result = qword_280400628;
  if (!qword_280400628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400628);
  }

  return result;
}

unint64_t sub_26B4C8BA0()
{
  result = qword_280400630;
  if (!qword_280400630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400630);
  }

  return result;
}

uint64_t VCCommand.InteractionLevel.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDD8, &qword_26B545580);
  v62 = *(v66 - 8);
  v3 = *(v62 + 64);
  MEMORY[0x28223BE20](v66, v4, v5, v6);
  v69 = v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDE0, &qword_26B545588);
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11, v12, v13);
  v68 = v57 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDE8, &qword_26B545590);
  v60 = *(v63 - 8);
  v15 = *(v60 + 64);
  MEMORY[0x28223BE20](v63, v16, v17, v18);
  v20 = v57 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDF0, &qword_26B545598);
  v61 = *(v21 - 8);
  v22 = *(v61 + 64);
  MEMORY[0x28223BE20](v21, v23, v24, v25);
  v27 = v57 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFDF8, &qword_26B5455A0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28, v31, v32, v33);
  v35 = v57 - v34;
  v36 = a1[3];
  v37 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_26B4C8A50();
  v38 = v70;
  sub_26B543064();
  if (!v38)
  {
    v58 = v21;
    v59 = 0;
    v39 = v68;
    v40 = v69;
    v70 = v29;
    v41 = v35;
    v42 = sub_26B542EF4();
    v43 = *(v42 + 16);
    if (!v43 || ((v44 = *(v42 + 32), v43 == 1) ? (v45 = v44 == 4) : (v45 = 1), v45))
    {
      v46 = sub_26B542DB4();
      swift_allocError();
      v48 = v47;
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE00, &qword_26B5455A8) + 48);
      *v48 = &type metadata for VCCommand.InteractionLevel;
      sub_26B542E94();
      sub_26B542DA4();
      (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
      swift_willThrow();
      (*(v70 + 8))(v41, v28);
    }

    else
    {
      v57[1] = v42;
      if (v44 <= 1)
      {
        if (v44)
        {
          v73 = 1;
          sub_26B4C8B4C();
          v54 = v59;
          sub_26B542E84();
          if (!v54)
          {
            (*(v60 + 8))(v20, v63);
            goto LABEL_23;
          }
        }

        else
        {
          v72 = 0;
          sub_26B4C8BA0();
          v50 = v59;
          sub_26B542E84();
          if (!v50)
          {
            (*(v61 + 8))(v27, v58);
LABEL_23:
            (*(v70 + 8))(v35, v28);
LABEL_25:
            swift_unknownObjectRelease();
            *v67 = v44;
            return __swift_destroy_boxed_opaque_existential_1(v71);
          }
        }

        (*(v70 + 8))(v35, v28);
        goto LABEL_20;
      }

      v51 = v67;
      v52 = v70;
      if (v44 == 2)
      {
        v74 = 2;
        sub_26B4C8AF8();
        v53 = v59;
        sub_26B542E84();
        if (!v53)
        {
          (*(v65 + 8))(v39, v64);
          (*(v52 + 8))(v41, v28);
          swift_unknownObjectRelease();
          *v51 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v71);
        }
      }

      else
      {
        v75 = 3;
        sub_26B4C8AA4();
        v55 = v59;
        sub_26B542E84();
        if (!v55)
        {
          (*(v62 + 8))(v40, v66);
          (*(v52 + 8))(v41, v28);
          goto LABEL_25;
        }
      }

      (*(v52 + 8))(v41, v28);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v71);
}

uint64_t sub_26B4C92CC(uint64_t a1)
{
  v2 = sub_26B4C9994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C9308(uint64_t a1)
{
  v2 = sub_26B4C9994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C9344()
{
  v1 = 0x6465646E756F42;
  if (*v0 != 1)
  {
    v1 = 0x65646E756F626E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736270;
  }
}

uint64_t sub_26B4C939C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4D9ED0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B4C93D0(uint64_t a1)
{
  v2 = sub_26B4C98EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C940C(uint64_t a1)
{
  v2 = sub_26B4C98EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C9448@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_26B4C9484(uint64_t a1)
{
  v2 = sub_26B4C99E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C94C0(uint64_t a1)
{
  v2 = sub_26B4C99E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26B4C94FC(uint64_t a1)
{
  v2 = sub_26B4C9940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B4C9538(uint64_t a1)
{
  v2 = sub_26B4C9940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VCCommand.ParameterType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE08, &qword_26B5455B0);
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v41 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE10, &qword_26B5455B8);
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9, v11, v12, v13);
  v38 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE18, &qword_26B5455C0);
  v36 = *(v15 - 8);
  v37 = v15;
  v16 = *(v36 + 64);
  MEMORY[0x28223BE20](v15, v17, v18, v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE20, &qword_26B5455C8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22, v25, v26, v27);
  v29 = &v35 - v28;
  v30 = *v1;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4C98EC();
  sub_26B543074();
  if (v30)
  {
    if (v30 == 1)
    {
      v45 = 1;
      sub_26B4C9994();
      v21 = v38;
      sub_26B542F14();
      v33 = v39;
      v32 = v40;
    }

    else
    {
      v46 = 2;
      sub_26B4C9940();
      v21 = v41;
      sub_26B542F14();
      v33 = v42;
      v32 = v43;
    }
  }

  else
  {
    v44 = 0;
    sub_26B4C99E8();
    sub_26B542F14();
    v33 = v36;
    v32 = v37;
  }

  (*(v33 + 8))(v21, v32);
  return (*(v23 + 8))(v29, v22);
}

unint64_t sub_26B4C98EC()
{
  result = qword_280400638;
  if (!qword_280400638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400638);
  }

  return result;
}

unint64_t sub_26B4C9940()
{
  result = qword_280400640;
  if (!qword_280400640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400640);
  }

  return result;
}

unint64_t sub_26B4C9994()
{
  result = qword_280400648;
  if (!qword_280400648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400648);
  }

  return result;
}

unint64_t sub_26B4C99E8()
{
  result = qword_280400650;
  if (!qword_280400650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280400650);
  }

  return result;
}

uint64_t sub_26B4C9A6C()
{
  v1 = *v0;
  sub_26B543034();
  MEMORY[0x26D678100](v1);
  return sub_26B543054();
}

uint64_t VCCommand.ParameterType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE28, &qword_26B5455D0);
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = *(v54 + 64);
  MEMORY[0x28223BE20](v3, v5, v6, v7);
  v59 = &v50 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE30, &qword_26B5455D8);
  v53 = *(v56 - 8);
  v9 = *(v53 + 64);
  MEMORY[0x28223BE20](v56, v10, v11, v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE38, &qword_26B5455E0);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15, v17, v18, v19);
  v21 = &v50 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE40, &qword_26B5455E8);
  v60 = *(v22 - 8);
  v23 = *(v60 + 64);
  MEMORY[0x28223BE20](v22, v24, v25, v26);
  v28 = &v50 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B4C98EC();
  v30 = v61;
  sub_26B543064();
  if (v30)
  {
    goto LABEL_10;
  }

  v51 = v15;
  v52 = 0;
  v31 = v58;
  v32 = v59;
  v61 = a1;
  v33 = v28;
  v34 = sub_26B542EF4();
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v34 + 32);
    if (v35 == 1 && v36 != 3)
    {
      if (*(v34 + 32))
      {
        v58 = v34;
        v44 = v60;
        if (v36 == 1)
        {
          v63 = 1;
          sub_26B4C9994();
          v45 = v52;
          sub_26B542E84();
          v46 = v57;
          if (v45)
          {
            (*(v44 + 8))(v33, v22);
            goto LABEL_9;
          }

          (*(v53 + 8))(v14, v56);
          (*(v44 + 8))(v33, v22);
        }

        else
        {
          v64 = 2;
          sub_26B4C9940();
          v49 = v52;
          sub_26B542E84();
          v46 = v57;
          if (v49)
          {
            (*(v44 + 8))(v33, v22);
            goto LABEL_9;
          }

          (*(v54 + 8))(v32, v55);
          (*(v44 + 8))(v33, v22);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v62 = 0;
        sub_26B4C99E8();
        v47 = v52;
        sub_26B542E84();
        v48 = v60;
        if (v47)
        {
          (*(v60 + 8))(v28, v22);
          goto LABEL_9;
        }

        (*(v31 + 8))(v21, v51);
        (*(v48 + 8))(v28, v22);
        swift_unknownObjectRelease();
        v46 = v57;
      }

      *v46 = v36;
      v42 = v61;
      return __swift_destroy_boxed_opaque_existential_1(v42);
    }
  }

  v38 = sub_26B542DB4();
  swift_allocError();
  v40 = v39;
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE00, &qword_26B5455A8) + 48);
  *v40 = &type metadata for VCCommand.ParameterType;
  sub_26B542E94();
  sub_26B542DA4();
  (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
  swift_willThrow();
  (*(v60 + 8))(v33, v22);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v61;
LABEL_10:
  v42 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

BOOL static VCCommand.Engine.areInIncreasingOrder(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    v4 = sub_26B542FB4();

    if (v4)
    {
      v2 = 0;
      if (!v3)
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    if (v2 == 2)
    {
      v5 = sub_26B542FB4();

      if (v5)
      {
        v2 = 1;
        if (!v3)
        {
          goto LABEL_19;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v2 = 1;
    }
  }

  swift_bridgeObjectRelease_n();
  if (!v3)
  {
    goto LABEL_19;
  }

LABEL_12:
  v6 = sub_26B542FB4();

  if ((v6 & 1) == 0)
  {
    if (v3 == 2)
    {
      v7 = sub_26B542FB4();

      if (v7)
      {
        v3 = 1;
        return v2 < v3;
      }
    }

    else
    {
      v3 = 1;
    }

LABEL_19:
    swift_bridgeObjectRelease_n();
    return v2 < v3;
  }

  v3 = 0;
  return v2 < v3;
}

uint64_t VCCommand.Engine.rawValue.getter()
{
  v1 = 0x726173617571;
  if (*v0 != 1)
  {
    v1 = 0x727361676ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12915;
  }
}

SpeechRecognitionCommandServices::VCCommand::Engine_optional __swiftcall VCCommand.Engine.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542E74();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_26B4CA3F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726173617571;
  if (v2 != 1)
  {
    v4 = 0x727361676ELL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 12915;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726173617571;
  if (*a2 != 1)
  {
    v8 = 0x727361676ELL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 12915;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26B542FB4();
  }

  return v11 & 1;
}

uint64_t sub_26B4CA4E4()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

uint64_t sub_26B4CA574()
{
  *v0;
  *v0;
  sub_26B542AE4();
}

uint64_t sub_26B4CA5F0()
{
  v1 = *v0;
  sub_26B543034();
  sub_26B542AE4();

  return sub_26B543054();
}

void sub_26B4CA688(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726173617571;
  if (v2 != 1)
  {
    v5 = 0x727361676ELL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 12915;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

SpeechRecognitionCommandServices::VCCommand::Evaluation_optional __swiftcall VCCommand.Evaluation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26B542FC4();

  v5 = 0;
  v6 = 20;
  switch(v3)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v5 = 1;
      goto LABEL_34;
    case 2:
      v5 = 2;
      goto LABEL_34;
    case 3:
      v5 = 3;
      goto LABEL_34;
    case 4:
      v5 = 4;
      goto LABEL_34;
    case 5:
      v5 = 5;
      goto LABEL_34;
    case 6:
      v5 = 6;
      goto LABEL_34;
    case 7:
      v5 = 7;
      goto LABEL_34;
    case 8:
      v5 = 8;
      goto LABEL_34;
    case 9:
      v5 = 9;
      goto LABEL_34;
    case 10:
      v5 = 10;
      goto LABEL_34;
    case 11:
      v5 = 11;
      goto LABEL_34;
    case 12:
      v5 = 12;
      goto LABEL_34;
    case 13:
      v5 = 13;
      goto LABEL_34;
    case 14:
      v5 = 14;
      goto LABEL_34;
    case 15:
      v5 = 15;
      goto LABEL_34;
    case 16:
      v5 = 16;
      goto LABEL_34;
    case 17:
      v5 = 17;
      goto LABEL_34;
    case 18:
      v5 = 18;
      goto LABEL_34;
    case 19:
      v5 = 19;
LABEL_34:
      v6 = v5;
      break;
    case 20:
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    default:
      v6 = 38;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t VCCommand.Evaluation.rawValue.getter()
{
  result = 0x7365726975716572;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
    case 0x10:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 7:
    case 0xF:
      result = 0xD000000000000025;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 0x21:
    case 0x25:
      result = 0xD00000000000001ALL;
      break;
    case 0xA:
      result = 0xD000000000000010;
      break;
    case 0xC:
      result = 0xD000000000000013;
      break;
    case 0xD:
    case 0xE:
    case 0x1B:
    case 0x22:
      result = 0xD00000000000001BLL;
      break;
    case 0x11:
      result = 0xD000000000000013;
      break;
    case 0x12:
      result = 0xD000000000000023;
      break;
    case 0x13:
      result = 0xD00000000000001FLL;
      break;
    case 0x14:
      result = 0xD00000000000001DLL;
      break;
    case 0x15:
      result = 0xD000000000000016;
      break;
    case 0x16:
    case 0x1D:
    case 0x1F:
      return result;
    case 0x17:
      result = 0xD000000000000013;
      break;
    case 0x18:
      result = 0xD000000000000022;
      break;
    case 0x19:
      result = 0xD000000000000024;
      break;
    case 0x1A:
    case 0x1E:
      result = 0xD000000000000029;
      break;
    case 0x1C:
      result = 0xD000000000000011;
      break;
    case 0x20:
      result = 0xD000000000000027;
      break;
    case 0x23:
      result = 0xD000000000000013;
      break;
    case 0x24:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD00000000000001CLL;
      break;
  }

  return result;
}

uint64_t sub_26B4CAE4C(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VCCommand.Evaluation.rawValue.getter();
  v4 = v3;
  if (v2 == VCCommand.Evaluation.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26B542FB4();
  }

  return v7 & 1;
}

uint64_t sub_26B4CAEE8()
{
  v1 = *v0;
  sub_26B543034();
  VCCommand.Evaluation.rawValue.getter();
  sub_26B542AE4();

  return sub_26B543054();
}

uint64_t sub_26B4CAF50()
{
  v2 = *v0;
  VCCommand.Evaluation.rawValue.getter();
  sub_26B542AE4();
}

uint64_t sub_26B4CAFB4()
{
  v1 = *v0;
  sub_26B543034();
  VCCommand.Evaluation.rawValue.getter();
  sub_26B542AE4();

  return sub_26B543054();
}

unint64_t sub_26B4CB024@<X0>(unint64_t *a1@<X8>)
{
  result = VCCommand.Evaluation.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26B4CB10C()
{
  sub_26B542FA4();
  sub_26B49FAB4();
  v0 = sub_26B542CD4();

  if (v0[2])
  {
    v2 = v0[4];
    v3 = v0[5];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t VCCommand.TargetedValue.platform.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, v5, a2, a3);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  v12 = byte_26B545530[swift_getEnumCaseMultiPayload()];
  result = (*(v8 + 8))(v11, a1);
  *a4 = v12;
  return result;
}

uint64_t VCCommand.TargetedValue.idiom.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v5 = v4;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, v5, a2, a3);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11);
  v12 = byte_26B545540[swift_getEnumCaseMultiPayload()];
  result = (*(v8 + 8))(v11, a1);
  *a4 = v12;
  return result;
}

uint64_t VCCommand.TargetedValue.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20]();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v6);
}

uint64_t static VCCommand.TargetedValue.areInIncreasingOrder(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = *(a3 - 8);
  v11 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v12, v15, v16, v17);
  v20 = v35 - v19;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v41 = v24;
  v35[2] = v18;
  v42 = v18;
  result = sub_26B4C7F38(sub_26B4DE814, v37, &unk_287C04B48);
  if (v26)
  {
    __break(1u);
    goto LABEL_8;
  }

  v29 = result;
  MEMORY[0x28223BE20](result, v26, v27, v28);
  v35[-6] = a3;
  v35[-5] = a4;
  v35[-4] = a5;
  v35[-3] = a6;
  v35[1] = a2;
  v35[-2] = a2;
  result = sub_26B4C7F38(sub_26B4CB6D8, &v35[-8], &unk_287C04B48);
  if (v30)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v31 = result;
  swift_arrayDestroy();
  if (v29 == v31)
  {
    v43[0] = a3;
    v43[1] = a4;
    v43[2] = a5;
    v43[3] = a6;
    v32 = type metadata accessor for VCCommand.TargetedValue(0, v43);
    VCCommand.TargetedValue.value.getter(v32, v20);
    VCCommand.TargetedValue.value.getter(v32, v14);
    v33 = sub_26B5429F4();
    v34 = *(v36 + 8);
    v34(v14, a3);
    v34(v20, a3);
  }

  else
  {
    v33 = v31 >= v29;
  }

  return v33 & 1;
}

uint64_t sub_26B4CB6F4(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v5;
  type metadata accessor for VCCommand.TargetedValue(0, v10);
  if (v3 == sub_26B4CB10C() && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26B542FB4();
  }

  return v8 & 1;
}

BOOL sub_26B4CB7AC(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a2)
  {
    case 1:
      if (a4 == 1)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 1;
      return v4 < a4;
    case 2:
      if (a4 == 2)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 2;
      return v4 < a4;
    case 3:
      if (a4 == 3)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 3;
      return v4 < a4;
    case 4:
      if (a4 == 4)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 4;
      return v4 < a4;
    case 5:
      if (a4 == 5)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 5;
      return v4 < a4;
    case 6:
      if (a4 == 6)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 6;
      return v4 < a4;
    case 7:
      if (a4 == 7)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 7;
      return v4 < a4;
    case 8:
      if (a4 == 8)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 8;
      return v4 < a4;
    case 9:
      if (a4 == 9)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 9;
      return v4 < a4;
    case 10:
      if (a4 == 10)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 10;
      return v4 < a4;
    case 11:
      if (a4 == 11)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 11;
      return v4 < a4;
    case 12:
      if (a4 == 12)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 12;
      return v4 < a4;
    case 13:
      if (a4 == 13)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 13;
      return v4 < a4;
    case 14:
      if (a4 == 14)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 14;
      return v4 < a4;
    case 15:
      if (a4 == 15)
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }

      v4 = 15;
      return v4 < a4;
    default:
      if (a4)
      {
        v4 = 0;
        return v4 < a4;
      }

      else
      {
        return *&a1 != *&a3 && *&a1 < *&a3;
      }
  }
}

uint64_t static VCCommand.TargetedValue.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v438 = a1;
  v439 = a2;
  v436 = *(a3 - 8);
  v4 = *(v436 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v414 = &v383 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v5, v7, v8, v9);
  v415 = &v383 - v11;
  v15 = MEMORY[0x28223BE20](v10, v12, v13, v14);
  v412 = &v383 - v16;
  v20 = MEMORY[0x28223BE20](v15, v17, v18, v19);
  v413 = &v383 - v21;
  v25 = MEMORY[0x28223BE20](v20, v22, v23, v24);
  v410 = &v383 - v26;
  v30 = MEMORY[0x28223BE20](v25, v27, v28, v29);
  v411 = &v383 - v31;
  v35 = MEMORY[0x28223BE20](v30, v32, v33, v34);
  v408 = &v383 - v36;
  v40 = MEMORY[0x28223BE20](v35, v37, v38, v39);
  v409 = &v383 - v41;
  v45 = MEMORY[0x28223BE20](v40, v42, v43, v44);
  v406 = &v383 - v46;
  v50 = MEMORY[0x28223BE20](v45, v47, v48, v49);
  v407 = &v383 - v51;
  v55 = MEMORY[0x28223BE20](v50, v52, v53, v54);
  v404 = &v383 - v56;
  v60 = MEMORY[0x28223BE20](v55, v57, v58, v59);
  v405 = &v383 - v61;
  v65 = MEMORY[0x28223BE20](v60, v62, v63, v64);
  v402 = &v383 - v66;
  v70 = MEMORY[0x28223BE20](v65, v67, v68, v69);
  v403 = &v383 - v71;
  v75 = MEMORY[0x28223BE20](v70, v72, v73, v74);
  v400 = &v383 - v76;
  v80 = MEMORY[0x28223BE20](v75, v77, v78, v79);
  v401 = &v383 - v81;
  v85 = MEMORY[0x28223BE20](v80, v82, v83, v84);
  v398 = &v383 - v86;
  v90 = MEMORY[0x28223BE20](v85, v87, v88, v89);
  v399 = &v383 - v91;
  v95 = MEMORY[0x28223BE20](v90, v92, v93, v94);
  v396 = &v383 - v96;
  v100 = MEMORY[0x28223BE20](v95, v97, v98, v99);
  v397 = &v383 - v101;
  v105 = MEMORY[0x28223BE20](v100, v102, v103, v104);
  v394 = &v383 - v106;
  v110 = MEMORY[0x28223BE20](v105, v107, v108, v109);
  v395 = &v383 - v111;
  v115 = MEMORY[0x28223BE20](v110, v112, v113, v114);
  v392 = &v383 - v116;
  v120 = MEMORY[0x28223BE20](v115, v117, v118, v119);
  v393 = &v383 - v121;
  v125 = MEMORY[0x28223BE20](v120, v122, v123, v124);
  v390 = &v383 - v126;
  v130 = MEMORY[0x28223BE20](v125, v127, v128, v129);
  v391 = &v383 - v131;
  v135 = MEMORY[0x28223BE20](v130, v132, v133, v134);
  v388 = &v383 - v136;
  v140 = MEMORY[0x28223BE20](v135, v137, v138, v139);
  v389 = &v383 - v141;
  v145 = MEMORY[0x28223BE20](v140, v142, v143, v144);
  v386 = &v383 - v146;
  v150 = MEMORY[0x28223BE20](v145, v147, v148, v149);
  v387 = &v383 - v151;
  v155 = MEMORY[0x28223BE20](v150, v152, v153, v154);
  v384 = &v383 - v156;
  MEMORY[0x28223BE20](v155, v157, v158, v159);
  v385 = &v383 - v160;
  v435 = v161;
  v440[0] = v161;
  v440[1] = v162;
  v428 = v162;
  v441[0] = v163;
  v441[1] = v164;
  v165 = type metadata accessor for VCCommand.TargetedValue(0, v440);
  v166 = *(v165 - 8);
  v167 = *(v166 + 64);
  v171 = MEMORY[0x28223BE20](v165, v168, v169, v170);
  v432 = &v383 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = MEMORY[0x28223BE20](v171, v173, v174, v175);
  v430 = &v383 - v177;
  v181 = MEMORY[0x28223BE20](v176, v178, v179, v180);
  v427 = &v383 - v182;
  v186 = MEMORY[0x28223BE20](v181, v183, v184, v185);
  v426 = &v383 - v187;
  v191 = MEMORY[0x28223BE20](v186, v188, v189, v190);
  v425 = &v383 - v192;
  v196 = MEMORY[0x28223BE20](v191, v193, v194, v195);
  v424 = &v383 - v197;
  v201 = MEMORY[0x28223BE20](v196, v198, v199, v200);
  v423 = &v383 - v202;
  v206 = MEMORY[0x28223BE20](v201, v203, v204, v205);
  v422 = &v383 - v207;
  v211 = MEMORY[0x28223BE20](v206, v208, v209, v210);
  v421 = &v383 - v212;
  v216 = MEMORY[0x28223BE20](v211, v213, v214, v215);
  v420 = &v383 - v217;
  v221 = MEMORY[0x28223BE20](v216, v218, v219, v220);
  v419 = &v383 - v222;
  v226 = MEMORY[0x28223BE20](v221, v223, v224, v225);
  v418 = &v383 - v227;
  v231 = MEMORY[0x28223BE20](v226, v228, v229, v230);
  v417 = &v383 - v232;
  v236 = MEMORY[0x28223BE20](v231, v233, v234, v235);
  v416 = &v383 - v237;
  v241 = MEMORY[0x28223BE20](v236, v238, v239, v240);
  v243 = &v383 - v242;
  v247 = MEMORY[0x28223BE20](v241, v244, v245, v246);
  v249 = &v383 - v248;
  v253 = MEMORY[0x28223BE20](v247, v250, v251, v252);
  v255 = &v383 - v254;
  MEMORY[0x28223BE20](v253, v256, v257, v258);
  v260 = &v383 - v259;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v431 = *(TupleTypeMetadata2 - 8);
  v262 = *(v431 + 64);
  v266 = MEMORY[0x28223BE20](TupleTypeMetadata2, v263, v264, v265);
  v268 = &v383 - v267;
  v429 = v266;
  v269 = *(v266 + 48);
  v434 = v166;
  v270 = *(v166 + 16);
  v270(&v383 - v267, v438, v165);
  v433 = v269;
  v270(&v268[v269], v439, v165);
  v271 = v268;
  v437 = v165;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v314 = v268;
      v273 = v437;
      v270(v255, v314, v437);
      v315 = v433;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_27;
      }

      v317 = v435;
      v316 = v436;
      v318 = *(v436 + 32);
      v319 = v387;
      v318(v387, v255, v435);
      v320 = v386;
      v318(v386, &v271[v315], v317);
      v321 = *(v428 + 8);
      if (sub_26B542A34())
      {
        v322 = *(v316 + 8);
        v322(v320, v317);
        v322(v319, v317);
        goto LABEL_26;
      }

      v323 = sub_26B5429E4();
      v378 = *(v316 + 8);
      v378(v320, v317);
      v378(v319, v317);
      goto LABEL_57;
    case 2u:
      v303 = v268;
      v273 = v437;
      v270(v249, v303, v437);
      v304 = v433;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v389;
      v305 = v249;
      v281 = v435;
      v278(v389, v305, v435);
      v282 = &v271[v304];
      v283 = &v420;
      goto LABEL_40;
    case 3u:
      v309 = v268;
      v273 = v437;
      v270(v243, v309, v437);
      v310 = v433;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v249 = v243;
        goto LABEL_47;
      }

      v281 = v435;
      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v391;
      v278(v391, v243, v435);
      v282 = &v271[v310];
      v283 = &v422;
LABEL_40:
      v355 = *(v283 - 32);
      v278(v355, v282, v281);
      v356 = *(v428 + 8);
      v357 = sub_26B542A34();
      v333 = v434;
      if (v357)
      {
        v334 = *(v277 + 8);
        v334(v355, v281);
        goto LABEL_42;
      }

      v323 = sub_26B5429E4();
      v359 = *(v277 + 8);
      v359(v355, v281);
      goto LABEL_45;
    case 4u:
      v255 = v416;
      v287 = v268;
      v273 = v437;
      v270(v416, v287, v437);
      v288 = v433;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_27:
        v249 = v255;
        goto LABEL_47;
      }

      v289 = v436;
      v290 = *(v436 + 32);
      v291 = v393;
      v292 = v255;
      v293 = v435;
      v290(v393, v292, v435);
      v294 = v392;
      v290(v392, &v271[v288], v293);
      v295 = *(v428 + 8);
      if (sub_26B542A34())
      {
        v296 = *(v289 + 8);
        v296(v294, v293);
        v296(v291, v293);
LABEL_26:
        v323 = 0;
      }

      else
      {
        v323 = sub_26B5429E4();
        v377 = *(v289 + 8);
        v377(v294, v293);
        v377(v291, v293);
      }

LABEL_57:
      v333 = v434;
      v358 = v273;
      break;
    case 5u:
      v249 = v417;
      v324 = v268;
      v273 = v437;
      v270(v417, v324, v437);
      v325 = v433;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v361 = v434;
        v360 = v435;
        goto LABEL_49;
      }

      v326 = v436;
      v327 = *(v436 + 32);
      v279 = v395;
      v328 = v249;
      v281 = v435;
      v327(v395, v328, v435);
      v329 = &v271[v325];
      v330 = v394;
      v327(v394, v329, v281);
      v331 = *(v428 + 8);
      v332 = sub_26B542A34();
      v333 = v434;
      if (v332)
      {
        v334 = *(v326 + 8);
        v334(v330, v281);
LABEL_42:
        v334(v279, v281);
        goto LABEL_43;
      }

      v379 = sub_26B5429E4();
      v380 = v330;
      v323 = v379;
      v359 = *(v326 + 8);
      v359(v380, v281);
LABEL_45:
      v359(v279, v281);
      v358 = v273;
      break;
    case 6u:
      v249 = v418;
      v270(v418, v268, v437);
      v338 = v433;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v360 = v435;
        v273 = v437;
        goto LABEL_48;
      }

      v339 = v436;
      v340 = *(v436 + 32);
      v341 = v397;
      v342 = v249;
      v343 = v435;
      v340(v397, v342, v435);
      v344 = &v268[v338];
      v345 = v396;
      v340(v396, v344, v343);
      v346 = *(v428 + 8);
      v347 = sub_26B542A34();
      v333 = v434;
      if (v347)
      {
        v348 = *(v339 + 8);
        v348(v345, v343);
        v348(v341, v343);
        v323 = 0;
      }

      else
      {
        v323 = sub_26B5429E4();
        v381 = *(v339 + 8);
        v381(v345, v343);
        v381(v341, v343);
      }

      v358 = v437;
      break;
    case 7u:
      v249 = v419;
      v311 = v268;
      v273 = v437;
      v270(v419, v311, v437);
      v312 = v433;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v399;
      v313 = v249;
      v281 = v435;
      v278(v399, v313, v435);
      v282 = &v271[v312];
      v283 = &v430;
      goto LABEL_40;
    case 8u:
      v249 = v420;
      v352 = v268;
      v273 = v437;
      v270(v420, v352, v437);
      v353 = v433;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v401;
      v354 = v249;
      v281 = v435;
      v278(v401, v354, v435);
      v282 = &v271[v353];
      v283 = &v432;
      goto LABEL_40;
    case 9u:
      v249 = v421;
      v300 = v268;
      v273 = v437;
      v270(v421, v300, v437);
      v301 = v433;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v403;
      v302 = v249;
      v281 = v435;
      v278(v403, v302, v435);
      v282 = &v271[v301];
      v283 = &v434;
      goto LABEL_40;
    case 0xAu:
      v249 = v422;
      v349 = v268;
      v273 = v437;
      v270(v422, v349, v437);
      v350 = v433;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v405;
      v351 = v249;
      v281 = v435;
      v278(v405, v351, v435);
      v282 = &v271[v350];
      v283 = &v436;
      goto LABEL_40;
    case 0xBu:
      v249 = v423;
      v284 = v268;
      v273 = v437;
      v270(v423, v284, v437);
      v285 = v433;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v407;
      v286 = v249;
      v281 = v435;
      v278(v407, v286, v435);
      v282 = &v271[v285];
      v283 = &v438;
      goto LABEL_40;
    case 0xCu:
      v249 = v424;
      v297 = v268;
      v273 = v437;
      v270(v424, v297, v437);
      v298 = v433;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v409;
      v299 = v249;
      v281 = v435;
      v278(v409, v299, v435);
      v282 = &v271[v298];
      v283 = v440;
      goto LABEL_40;
    case 0xDu:
      v249 = v425;
      v335 = v268;
      v273 = v437;
      v270(v425, v335, v437);
      v336 = v433;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v411;
      v337 = v249;
      v281 = v435;
      v278(v411, v337, v435);
      v282 = &v271[v336];
      v283 = v441;
      goto LABEL_40;
    case 0xEu:
      v249 = v426;
      v275 = v268;
      v273 = v437;
      v270(v426, v275, v437);
      v276 = v433;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v413;
      v280 = v249;
      v281 = v435;
      v278(v413, v280, v435);
      v282 = &v271[v276];
      v283 = &v442;
      goto LABEL_40;
    case 0xFu:
      v249 = v427;
      v306 = v268;
      v273 = v437;
      v270(v427, v306, v437);
      v307 = v433;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_47;
      }

      v277 = v436;
      v278 = *(v436 + 32);
      v279 = v415;
      v308 = v249;
      v281 = v435;
      v278(v415, v308, v435);
      v282 = &v271[v307];
      v283 = &v443;
      goto LABEL_40;
    default:
      v272 = v268;
      v273 = v437;
      v270(v260, v272, v437);
      v274 = v433;
      if (swift_getEnumCaseMultiPayload())
      {
        v249 = v260;
LABEL_47:
        v360 = v435;
LABEL_48:
        v361 = v434;
LABEL_49:
        (*(v436 + 8))(v249, v360);
        v362 = v430;
        v270(v430, v438, v273);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v364 = *(v361 + 8);
        v364(v362, v273);
        v365 = v432;
        v270(v432, v439, v273);
        v366 = swift_getEnumCaseMultiPayload();
        v364(v365, v273);
        v323 = EnumCaseMultiPayload < v366;
        v333 = v431;
        v358 = v429;
      }

      else
      {
        v368 = v436;
        v369 = *(v436 + 32);
        v370 = v385;
        v371 = v260;
        v372 = v435;
        v369(v385, v371, v435);
        v373 = v384;
        v369(v384, &v271[v274], v372);
        v374 = *(v428 + 8);
        v375 = sub_26B542A34();
        v333 = v434;
        if (v375)
        {
          v376 = *(v368 + 8);
          v376(v373, v372);
          v376(v370, v372);
LABEL_43:
          v323 = 0;
          v358 = v273;
        }

        else
        {
          v323 = sub_26B5429E4();
          v382 = *(v368 + 8);
          v382(v373, v372);
          v382(v370, v372);
          v358 = v273;
        }
      }

      break;
  }

  (*(v333 + 8))(v271, v358);
  return v323 & 1;
}

uint64_t static VCCommand.TargetedValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v264 = a2;
  v265 = a1;
  v267 = *(a3 - 8);
  v4 = *(v267 + 64);
  v5 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v248 = &v233 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v5, v7, v8, v9);
  v247 = &v233 - v11;
  v15 = MEMORY[0x28223BE20](v10, v12, v13, v14);
  v246 = &v233 - v16;
  v20 = MEMORY[0x28223BE20](v15, v17, v18, v19);
  v245 = &v233 - v21;
  v25 = MEMORY[0x28223BE20](v20, v22, v23, v24);
  v244 = &v233 - v26;
  v30 = MEMORY[0x28223BE20](v25, v27, v28, v29);
  v243 = &v233 - v31;
  v35 = MEMORY[0x28223BE20](v30, v32, v33, v34);
  v242 = &v233 - v36;
  v40 = MEMORY[0x28223BE20](v35, v37, v38, v39);
  v241 = &v233 - v41;
  v45 = MEMORY[0x28223BE20](v40, v42, v43, v44);
  v240 = &v233 - v46;
  v50 = MEMORY[0x28223BE20](v45, v47, v48, v49);
  v239 = &v233 - v51;
  v55 = MEMORY[0x28223BE20](v50, v52, v53, v54);
  v238 = &v233 - v56;
  v60 = MEMORY[0x28223BE20](v55, v57, v58, v59);
  v237 = &v233 - v61;
  v65 = MEMORY[0x28223BE20](v60, v62, v63, v64);
  v236 = &v233 - v66;
  v70 = MEMORY[0x28223BE20](v65, v67, v68, v69);
  v235 = &v233 - v71;
  v75 = MEMORY[0x28223BE20](v70, v72, v73, v74);
  v234 = &v233 - v76;
  MEMORY[0x28223BE20](v75, v77, v78, v79);
  v233 = &v233 - v80;
  v266 = v81;
  v268[0] = v81;
  v268[1] = v82;
  v260 = v82;
  v269 = v83;
  v270 = v84;
  v85 = type metadata accessor for VCCommand.TargetedValue(0, v268);
  v86 = *(v85 - 8);
  v87 = *(v86 + 64);
  v91 = MEMORY[0x28223BE20](v85, v88, v89, v90);
  v259 = &v233 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x28223BE20](v91, v93, v94, v95);
  v258 = &v233 - v97;
  v101 = MEMORY[0x28223BE20](v96, v98, v99, v100);
  v257 = &v233 - v102;
  v106 = MEMORY[0x28223BE20](v101, v103, v104, v105);
  v256 = &v233 - v107;
  v111 = MEMORY[0x28223BE20](v106, v108, v109, v110);
  v255 = &v233 - v112;
  v116 = MEMORY[0x28223BE20](v111, v113, v114, v115);
  v254 = &v233 - v117;
  v121 = MEMORY[0x28223BE20](v116, v118, v119, v120);
  v253 = &v233 - v122;
  v126 = MEMORY[0x28223BE20](v121, v123, v124, v125);
  v252 = &v233 - v127;
  v131 = MEMORY[0x28223BE20](v126, v128, v129, v130);
  v251 = &v233 - v132;
  v136 = MEMORY[0x28223BE20](v131, v133, v134, v135);
  v250 = &v233 - v137;
  v141 = MEMORY[0x28223BE20](v136, v138, v139, v140);
  v249 = &v233 - v142;
  v146 = MEMORY[0x28223BE20](v141, v143, v144, v145);
  v148 = &v233 - v147;
  v152 = MEMORY[0x28223BE20](v146, v149, v150, v151);
  v154 = &v233 - v153;
  v158 = MEMORY[0x28223BE20](v152, v155, v156, v157);
  v160 = &v233 - v159;
  v164 = MEMORY[0x28223BE20](v158, v161, v162, v163);
  v166 = &v233 - v165;
  MEMORY[0x28223BE20](v164, v167, v168, v169);
  v171 = &v233 - v170;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v263 = *(TupleTypeMetadata2 - 8);
  v173 = *(v263 + 64);
  v177 = MEMORY[0x28223BE20](TupleTypeMetadata2, v174, v175, v176);
  v179 = &v233 - v178;
  v261 = v86;
  v262 = v177;
  v180 = *(v177 + 48);
  v181 = *(v86 + 16);
  v181(&v233 - v178, v265, v85);
  v265 = v180;
  v181(&v179[v180], v264, v85);
  v182 = v179;
  v183 = v85;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v184 = v182;
      v181(v166, v182, v183);
      v215 = v265;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v216 = v266;
        v217 = v267;
        v218 = v234;
        (*(v267 + 32))(v234, &v182[v215], v266);
        v219 = *(v260 + 8);
        v197 = sub_26B542A34();
        v220 = *(v217 + 8);
        v220(v218, v216);
        v220(v166, v216);
        goto LABEL_36;
      }

      v171 = v166;
      goto LABEL_41;
    case 2u:
      v184 = v182;
      v181(v160, v182, v183);
      v201 = v265;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v202 = v266;
        v203 = v267;
        v204 = v235;
        (*(v267 + 32))(v235, &v182[v201], v266);
        v205 = *(v260 + 8);
        v197 = sub_26B542A34();
        v206 = *(v203 + 8);
        v206(v204, v202);
        v206(v160, v202);
        goto LABEL_36;
      }

      v171 = v160;
      goto LABEL_41;
    case 3u:
      v184 = v182;
      v181(v154, v182, v183);
      v208 = v265;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v209 = v266;
        v210 = v267;
        v211 = v236;
        (*(v267 + 32))(v236, &v182[v208], v266);
        v212 = *(v260 + 8);
        v197 = sub_26B542A34();
        v213 = *(v210 + 8);
        v213(v211, v209);
        v213(v154, v209);
        goto LABEL_36;
      }

      v171 = v154;
      goto LABEL_41;
    case 4u:
      v184 = v182;
      v181(v148, v182, v183);
      v192 = v265;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v194 = v266;
        v193 = v267;
        v195 = v237;
        (*(v267 + 32))(v237, &v182[v192], v266);
        v196 = *(v260 + 8);
        v197 = sub_26B542A34();
        v198 = *(v193 + 8);
        v198(v195, v194);
        v198(v148, v194);
LABEL_36:
        v230 = v261;
        v231 = v183;
      }

      else
      {
        v171 = v148;
LABEL_41:
        (*(v267 + 8))(v171, v266);
        v197 = 0;
        v231 = v262;
        v230 = v263;
      }

      (*(v230 + 8))(v184, v231);
      return v197 & 1;
    case 5u:
      v171 = v249;
      v184 = v182;
      v181(v249, v182, v183);
      v221 = v265;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v221];
      v189 = &v269;
      goto LABEL_34;
    case 6u:
      v171 = v250;
      v184 = v182;
      v181(v250, v182, v183);
      v223 = v265;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v223];
      v189 = &v270;
      goto LABEL_34;
    case 7u:
      v171 = v251;
      v184 = v182;
      v181(v251, v182, v183);
      v214 = v265;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v214];
      v189 = &v271;
      goto LABEL_34;
    case 8u:
      v171 = v252;
      v184 = v182;
      v181(v252, v182, v183);
      v225 = v265;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v225];
      v189 = &v272;
      goto LABEL_34;
    case 9u:
      v171 = v253;
      v184 = v182;
      v181(v253, v182, v183);
      v200 = v265;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v200];
      v189 = &v273;
      goto LABEL_34;
    case 0xAu:
      v171 = v254;
      v184 = v182;
      v181(v254, v182, v183);
      v224 = v265;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v224];
      v189 = &v274;
      goto LABEL_34;
    case 0xBu:
      v171 = v255;
      v184 = v182;
      v181(v255, v182, v183);
      v191 = v265;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v191];
      v189 = &v275;
      goto LABEL_34;
    case 0xCu:
      v171 = v256;
      v184 = v182;
      v181(v256, v182, v183);
      v199 = v265;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v199];
      v189 = &v276;
      goto LABEL_34;
    case 0xDu:
      v171 = v257;
      v184 = v182;
      v181(v257, v182, v183);
      v222 = v265;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v222];
      v189 = &v277;
      goto LABEL_34;
    case 0xEu:
      v171 = v258;
      v184 = v182;
      v181(v258, v182, v183);
      v190 = v265;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v190];
      v189 = &v278;
      goto LABEL_34;
    case 0xFu:
      v171 = v259;
      v184 = v182;
      v181(v259, v182, v183);
      v207 = v265;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v207];
      v189 = &v279;
      goto LABEL_34;
    default:
      v184 = v182;
      v181(v171, v182, v183);
      v185 = v265;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_41;
      }

      v186 = v267;
      v187 = *(v267 + 32);
      v188 = &v182[v185];
      v189 = &v265;
LABEL_34:
      v226 = *(v189 - 32);
      v227 = v266;
      v187(v226, v188, v266);
      v228 = *(v260 + 8);
      v197 = sub_26B542A34();
      v229 = *(v186 + 8);
      v229(v226, v227);
      v229(v171, v227);
      goto LABEL_36;
  }
}

uint64_t sub_26B4CDDC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_26B542FB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x534F63616DLL && a2 == 0xE500000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616D5F534F63616DLL && a2 == 0xE900000000000063 || (sub_26B542FB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 5459817 && a2 == 0xE300000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6850695F534F69 && a2 == 0xEA0000000000656ELL || (sub_26B542FB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646150695F534F69 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x507261635F534F69 && a2 == 0xEB0000000079616CLL || (sub_26B542FB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x63616D5F534F69 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x534F6E6F69736976 && a2 == 0xE800000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x534F6E6F69736976 && a2 == 0xEF6E6F697369765FLL || (sub_26B542FB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1397716596 && a2 == 0xE400000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7070615F534F7674 && a2 == 0xEC0000005654656CLL || (sub_26B542FB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6D6F685F534F7674 && a2 == 0xEC000000646F5065 || (sub_26B542FB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F50695F534F7674 && a2 == 0xE900000000000064 || (sub_26B542FB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x534F6863746177 && a2 == 0xE700000000000000 || (sub_26B542FB4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x5F534F6863746177 && a2 == 0xED00006863746177)
  {

    return 15;
  }

  else
  {
    v6 = sub_26B542FB4();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_26B4CE31C(unsigned __int8 a1)
{
  sub_26B543034();
  MEMORY[0x26D678100](a1);
  return sub_26B543054();
}

uint64_t sub_26B4CE364(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 0x534F63616DLL;
      break;
    case 2:
      result = 0x616D5F534F63616DLL;
      break;
    case 3:
      result = 5459817;
      break;
    case 4:
      result = 0x6F6850695F534F69;
      break;
    case 5:
      result = 0x646150695F534F69;
      break;
    case 6:
      result = 0x507261635F534F69;
      break;
    case 7:
      result = 0x63616D5F534F69;
      break;
    case 8:
    case 9:
      result = 0x534F6E6F69736976;
      break;
    case 10:
      result = 1397716596;
      break;
    case 11:
      result = 0x7070615F534F7674;
      break;
    case 12:
      result = 0x6D6F685F534F7674;
      break;
    case 13:
      result = 0x6F50695F534F7674;
      break;
    case 14:
      result = 0x534F6863746177;
      break;
    case 15:
      result = 0x5F534F6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26B4CE558(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26B542FB4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26B4CE60C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4CE558(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_26B4CE638(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE68C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE6FC()
{
  sub_26B543034();
  sub_26B4CE2F4(v2, *v0);
  return sub_26B543054();
}

uint64_t sub_26B4CE744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26B4CDDC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26B4CE778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE874(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE8C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CE970(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CE9C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEA18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEA6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEAC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEB14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEBBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEC10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEC64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CECB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CED0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CED60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEDB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEE08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEE5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEEB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEF04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CEF58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CEFAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CF000(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CF054(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CF0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CF0FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_26B4CF150()
{
  sub_26B543034();
  MEMORY[0x26D678100](0);
  return sub_26B543054();
}

uint64_t sub_26B4CF194()
{
  sub_26B543034();
  MEMORY[0x26D678100](0);
  return sub_26B543054();
}

uint64_t sub_26B4CF1D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B4CF228(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t VCCommand.TargetedValue.encode(to:)(void *a1, void *a2)
{
  v330 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v332 = a2[2];
  v4 = v332;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v7 = type metadata accessor for VCCommand.TargetedValue.WatchOS_watchCodingKeys(255, &v332);
  v324[1] = swift_getWitnessTable();
  v324[2] = v7;
  v8 = sub_26B542F74();
  v325 = *(v8 - 8);
  v326 = v8;
  v9 = *(v325 + 64);
  MEMORY[0x28223BE20](v8, v10, v11, v12);
  v324[0] = &v233 - v13;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v14 = type metadata accessor for VCCommand.TargetedValue.WatchOSCodingKeys(255, &v332);
  WitnessTable = swift_getWitnessTable();
  v321 = v14;
  v319 = WitnessTable;
  v16 = sub_26B542F74();
  v322 = *(v16 - 8);
  v323 = v16;
  v17 = *(v322 + 64);
  MEMORY[0x28223BE20](v16, v18, v19, v20);
  v320 = &v233 - v21;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v22 = type metadata accessor for VCCommand.TargetedValue.TvOS_iPodCodingKeys(255, &v332);
  v23 = swift_getWitnessTable();
  v316 = v22;
  v314 = v23;
  v318 = sub_26B542F74();
  v317 = *(v318 - 8);
  v24 = *(v317 + 64);
  MEMORY[0x28223BE20](v318, v25, v26, v27);
  v315 = &v233 - v28;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v29 = type metadata accessor for VCCommand.TargetedValue.TvOS_homePodCodingKeys(255, &v332);
  v30 = swift_getWitnessTable();
  v311 = v29;
  v309 = v30;
  v313 = sub_26B542F74();
  v312 = *(v313 - 8);
  v31 = *(v312 + 64);
  MEMORY[0x28223BE20](v313, v32, v33, v34);
  v310 = &v233 - v35;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v36 = type metadata accessor for VCCommand.TargetedValue.TvOS_appleTVCodingKeys(255, &v332);
  v37 = swift_getWitnessTable();
  v306 = v36;
  v304 = v37;
  v308 = sub_26B542F74();
  v307 = *(v308 - 8);
  v38 = *(v307 + 64);
  MEMORY[0x28223BE20](v308, v39, v40, v41);
  v305 = &v233 - v42;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v43 = type metadata accessor for VCCommand.TargetedValue.TvOSCodingKeys(255, &v332);
  v44 = swift_getWitnessTable();
  v301 = v43;
  v299 = v44;
  v303 = sub_26B542F74();
  v302 = *(v303 - 8);
  v45 = *(v302 + 64);
  MEMORY[0x28223BE20](v303, v46, v47, v48);
  v300 = &v233 - v49;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v50 = type metadata accessor for VCCommand.TargetedValue.VisionOS_visionCodingKeys(255, &v332);
  v51 = swift_getWitnessTable();
  v296 = v50;
  v294 = v51;
  v298 = sub_26B542F74();
  v297 = *(v298 - 8);
  v52 = *(v297 + 64);
  MEMORY[0x28223BE20](v298, v53, v54, v55);
  v295 = &v233 - v56;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v57 = type metadata accessor for VCCommand.TargetedValue.VisionOSCodingKeys(255, &v332);
  v58 = swift_getWitnessTable();
  v291 = v57;
  v289 = v58;
  v293 = sub_26B542F74();
  v292 = *(v293 - 8);
  v59 = *(v292 + 64);
  MEMORY[0x28223BE20](v293, v60, v61, v62);
  v290 = &v233 - v63;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v64 = type metadata accessor for VCCommand.TargetedValue.IOS_macCodingKeys(255, &v332);
  v65 = swift_getWitnessTable();
  v286 = v64;
  v284 = v65;
  v288 = sub_26B542F74();
  v287 = *(v288 - 8);
  v66 = *(v287 + 64);
  MEMORY[0x28223BE20](v288, v67, v68, v69);
  v285 = &v233 - v70;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v71 = type metadata accessor for VCCommand.TargetedValue.IOS_carPlayCodingKeys(255, &v332);
  v72 = swift_getWitnessTable();
  v281 = v71;
  v279 = v72;
  v283 = sub_26B542F74();
  v282 = *(v283 - 8);
  v73 = *(v282 + 64);
  MEMORY[0x28223BE20](v283, v74, v75, v76);
  v280 = &v233 - v77;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v78 = type metadata accessor for VCCommand.TargetedValue.IOS_iPadCodingKeys(255, &v332);
  v79 = swift_getWitnessTable();
  v276 = v78;
  v274 = v79;
  v278 = sub_26B542F74();
  v277 = *(v278 - 8);
  v80 = *(v277 + 64);
  MEMORY[0x28223BE20](v278, v81, v82, v83);
  v275 = &v233 - v84;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v85 = type metadata accessor for VCCommand.TargetedValue.IOS_iPhoneCodingKeys(255, &v332);
  v86 = swift_getWitnessTable();
  v271 = v85;
  v269 = v86;
  v273 = sub_26B542F74();
  v272 = *(v273 - 8);
  v87 = *(v272 + 64);
  MEMORY[0x28223BE20](v273, v88, v89, v90);
  v270 = &v233 - v91;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v92 = type metadata accessor for VCCommand.TargetedValue.IOSCodingKeys(255, &v332);
  v93 = swift_getWitnessTable();
  v266 = v92;
  v264 = v93;
  v268 = sub_26B542F74();
  v267 = *(v268 - 8);
  v94 = *(v267 + 64);
  MEMORY[0x28223BE20](v268, v95, v96, v97);
  v265 = &v233 - v98;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v99 = type metadata accessor for VCCommand.TargetedValue.MacOS_macCodingKeys(255, &v332);
  v100 = swift_getWitnessTable();
  v261 = v99;
  v259 = v100;
  v263 = sub_26B542F74();
  v262 = *(v263 - 8);
  v101 = *(v262 + 64);
  MEMORY[0x28223BE20](v263, v102, v103, v104);
  v260 = &v233 - v105;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v106 = type metadata accessor for VCCommand.TargetedValue.MacOSCodingKeys(255, &v332);
  v107 = swift_getWitnessTable();
  v256 = v106;
  v254 = v107;
  v258 = sub_26B542F74();
  v257 = *(v258 - 8);
  v108 = *(v257 + 64);
  MEMORY[0x28223BE20](v258, v109, v110, v111);
  v255 = &v233 - v112;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v113 = type metadata accessor for VCCommand.TargetedValue.AllCodingKeys(255, &v332);
  v114 = swift_getWitnessTable();
  v251 = v113;
  v249 = v114;
  v253 = sub_26B542F74();
  v252 = *(v253 - 8);
  v115 = *(v252 + 64);
  v119 = MEMORY[0x28223BE20](v253, v116, v117, v118);
  v250 = &v233 - v120;
  v327[0] = *(v4 - 8);
  v121 = *(v327[0] + 64);
  v125 = MEMORY[0x28223BE20](v119, v122, v123, v124);
  v248 = &v233 - ((v126 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = MEMORY[0x28223BE20](v125, v127, v128, v129);
  v247 = &v233 - v131;
  v135 = MEMORY[0x28223BE20](v130, v132, v133, v134);
  v246 = &v233 - v136;
  v140 = MEMORY[0x28223BE20](v135, v137, v138, v139);
  v245 = &v233 - v141;
  v145 = MEMORY[0x28223BE20](v140, v142, v143, v144);
  v244 = &v233 - v146;
  v150 = MEMORY[0x28223BE20](v145, v147, v148, v149);
  v243 = &v233 - v151;
  v155 = MEMORY[0x28223BE20](v150, v152, v153, v154);
  v242 = &v233 - v156;
  v160 = MEMORY[0x28223BE20](v155, v157, v158, v159);
  v241 = &v233 - v161;
  v165 = MEMORY[0x28223BE20](v160, v162, v163, v164);
  v240 = &v233 - v166;
  v170 = MEMORY[0x28223BE20](v165, v167, v168, v169);
  v239 = &v233 - v171;
  v175 = MEMORY[0x28223BE20](v170, v172, v173, v174);
  v238 = &v233 - v176;
  v180 = MEMORY[0x28223BE20](v175, v177, v178, v179);
  v237 = &v233 - v181;
  v185 = MEMORY[0x28223BE20](v180, v182, v183, v184);
  v236 = &v233 - v186;
  v190 = MEMORY[0x28223BE20](v185, v187, v188, v189);
  v235 = &v233 - v191;
  v195 = MEMORY[0x28223BE20](v190, v192, v193, v194);
  v234 = &v233 - v196;
  v200 = MEMORY[0x28223BE20](v195, v197, v198, v199);
  v202 = &v233 - v201;
  v203 = *(a2 - 1);
  v204 = *(v203 + 64);
  MEMORY[0x28223BE20](v200, v205, v206, v207);
  v209 = &v233 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v336 = v4;
  v332 = v4;
  v333 = v3;
  v334 = v6;
  v335 = v5;
  v327[1] = v5;
  type metadata accessor for VCCommand.TargetedValue.CodingKeys(255, &v332);
  swift_getWitnessTable();
  v210 = sub_26B542F74();
  v328 = *(v210 - 8);
  v329 = v210;
  v211 = *(v328 + 64);
  MEMORY[0x28223BE20](v210, v212, v213, v214);
  v216 = (&v233 - v215);
  v217 = v330[4];
  __swift_project_boxed_opaque_existential_1(v330, v330[3]);
  v330 = v216;
  v218 = v327[0];
  sub_26B543074();
  (*(v203 + 16))(v209, v331, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v220 = *(v218 + 32);
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v202 = v234;
      v221 = v336;
      v220(v234, v209, v336);
      LOBYTE(v332) = 1;
      v222 = v255;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v258;
      sub_26B542F64();
      v226 = &v289;
      goto LABEL_18;
    case 2:
      v202 = v235;
      v221 = v336;
      v220(v235, v209, v336);
      LOBYTE(v332) = 2;
      v222 = v260;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v263;
      sub_26B542F64();
      v226 = &v294;
      goto LABEL_18;
    case 3:
      v202 = v236;
      v221 = v336;
      v220(v236, v209, v336);
      LOBYTE(v332) = 3;
      v222 = v265;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v268;
      sub_26B542F64();
      v226 = &v299;
      goto LABEL_18;
    case 4:
      v202 = v237;
      v221 = v336;
      v220(v237, v209, v336);
      LOBYTE(v332) = 4;
      v222 = v270;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v273;
      sub_26B542F64();
      v226 = &v304;
      goto LABEL_18;
    case 5:
      v202 = v238;
      v221 = v336;
      v220(v238, v209, v336);
      LOBYTE(v332) = 5;
      v222 = v275;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v278;
      sub_26B542F64();
      v226 = &v309;
      goto LABEL_18;
    case 6:
      v202 = v239;
      v221 = v336;
      v220(v239, v209, v336);
      LOBYTE(v332) = 6;
      v222 = v280;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v283;
      sub_26B542F64();
      v226 = &v314;
      goto LABEL_18;
    case 7:
      v202 = v240;
      v221 = v336;
      v220(v240, v209, v336);
      LOBYTE(v332) = 7;
      v222 = v285;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v288;
      sub_26B542F64();
      v226 = &v319;
      goto LABEL_18;
    case 8:
      v202 = v241;
      v221 = v336;
      v220(v241, v209, v336);
      LOBYTE(v332) = 8;
      v222 = v290;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v293;
      sub_26B542F64();
      v226 = v324;
      goto LABEL_18;
    case 9:
      v202 = v242;
      v221 = v336;
      v220(v242, v209, v336);
      LOBYTE(v332) = 9;
      v222 = v295;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v298;
      sub_26B542F64();
      v226 = v327;
      goto LABEL_18;
    case 10:
      v202 = v243;
      v221 = v336;
      v220(v243, v209, v336);
      LOBYTE(v332) = 10;
      v222 = v300;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v303;
      sub_26B542F64();
      v226 = &v331;
      goto LABEL_18;
    case 11:
      v202 = v244;
      v221 = v336;
      v220(v244, v209, v336);
      LOBYTE(v332) = 11;
      v222 = v305;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v308;
      sub_26B542F64();
      v226 = &v335;
      goto LABEL_18;
    case 12:
      v202 = v245;
      v221 = v336;
      v220(v245, v209, v336);
      LOBYTE(v332) = 12;
      v222 = v310;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v313;
      sub_26B542F64();
      v226 = &v337;
      goto LABEL_18;
    case 13:
      v202 = v246;
      v221 = v336;
      v220(v246, v209, v336);
      LOBYTE(v332) = 13;
      v222 = v315;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v318;
      sub_26B542F64();
      v226 = &v338;
      goto LABEL_18;
    case 14:
      v202 = v247;
      v221 = v336;
      v220(v247, v209, v336);
      LOBYTE(v332) = 14;
      v222 = v320;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v323;
      sub_26B542F64();
      v227 = v322;
      goto LABEL_19;
    case 15:
      v228 = v248;
      v221 = v336;
      v220(v248, v209, v336);
      LOBYTE(v332) = 15;
      v229 = v324[0];
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v230 = v326;
      sub_26B542F64();
      (*(v325 + 8))(v229, v230);
      v202 = v228;
      goto LABEL_20;
    default:
      v221 = v336;
      v220(v202, v209, v336);
      LOBYTE(v332) = 0;
      v222 = v250;
      v223 = v329;
      v224 = v330;
      sub_26B542F14();
      v225 = v253;
      sub_26B542F64();
      v226 = &v284;
LABEL_18:
      v227 = *(v226 - 32);
LABEL_19:
      (*(v227 + 8))(v222, v225);
LABEL_20:
      v231 = v328;
      (*(v218 + 8))(v202, v221);
      return (*(v231 + 8))(v224, v223);
  }
}

uint64_t VCCommand.TargetedValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v409 = a6;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v403 = type metadata accessor for VCCommand.TargetedValue.WatchOS_watchCodingKeys(255, &v416);
  WitnessTable = swift_getWitnessTable();
  v342 = sub_26B542F04();
  v341 = *(v342 - 8);
  v11 = *(v341 + 64);
  MEMORY[0x28223BE20](v342, v12, v13, v14);
  v384 = &v307 - v15;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v16 = type metadata accessor for VCCommand.TargetedValue.WatchOSCodingKeys(255, &v416);
  v17 = swift_getWitnessTable();
  v401 = v16;
  v400 = v17;
  v340 = sub_26B542F04();
  v339 = *(v340 - 8);
  v18 = *(v339 + 64);
  MEMORY[0x28223BE20](v340, v19, v20, v21);
  v383 = &v307 - v22;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v23 = type metadata accessor for VCCommand.TargetedValue.TvOS_iPodCodingKeys(255, &v416);
  v24 = swift_getWitnessTable();
  v399 = v23;
  v398 = v24;
  v338 = sub_26B542F04();
  v337 = *(v338 - 8);
  v25 = *(v337 + 64);
  MEMORY[0x28223BE20](v338, v26, v27, v28);
  v382 = &v307 - v29;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v30 = type metadata accessor for VCCommand.TargetedValue.TvOS_homePodCodingKeys(255, &v416);
  v31 = swift_getWitnessTable();
  v397 = v30;
  v396 = v31;
  v336 = sub_26B542F04();
  v335 = *(v336 - 8);
  v32 = *(v335 + 64);
  MEMORY[0x28223BE20](v336, v33, v34, v35);
  v381 = &v307 - v36;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v37 = type metadata accessor for VCCommand.TargetedValue.TvOS_appleTVCodingKeys(255, &v416);
  v38 = swift_getWitnessTable();
  v395 = v37;
  v394 = v38;
  v334 = sub_26B542F04();
  v333 = *(v334 - 8);
  v39 = *(v333 + 64);
  MEMORY[0x28223BE20](v334, v40, v41, v42);
  v380 = &v307 - v43;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v44 = type metadata accessor for VCCommand.TargetedValue.TvOSCodingKeys(255, &v416);
  v45 = swift_getWitnessTable();
  v393 = v44;
  v392 = v45;
  v332 = sub_26B542F04();
  v331 = *(v332 - 8);
  v46 = *(v331 + 64);
  MEMORY[0x28223BE20](v332, v47, v48, v49);
  v379 = &v307 - v50;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v51 = type metadata accessor for VCCommand.TargetedValue.VisionOS_visionCodingKeys(255, &v416);
  v52 = swift_getWitnessTable();
  v391 = v51;
  v390 = v52;
  v330 = sub_26B542F04();
  v329 = *(v330 - 8);
  v53 = *(v329 + 64);
  MEMORY[0x28223BE20](v330, v54, v55, v56);
  v378 = &v307 - v57;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v58 = type metadata accessor for VCCommand.TargetedValue.VisionOSCodingKeys(255, &v416);
  v59 = swift_getWitnessTable();
  v389 = v58;
  v388 = v59;
  v328 = sub_26B542F04();
  v327 = *(v328 - 8);
  v60 = *(v327 + 64);
  MEMORY[0x28223BE20](v328, v61, v62, v63);
  v377 = &v307 - v64;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v65 = type metadata accessor for VCCommand.TargetedValue.IOS_macCodingKeys(255, &v416);
  v66 = swift_getWitnessTable();
  v387 = v65;
  v375 = v66;
  v326 = sub_26B542F04();
  v325 = *(v326 - 8);
  v67 = *(v325 + 64);
  MEMORY[0x28223BE20](v326, v68, v69, v70);
  v376 = &v307 - v71;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v72 = type metadata accessor for VCCommand.TargetedValue.IOS_carPlayCodingKeys(255, &v416);
  v73 = swift_getWitnessTable();
  v386 = v72;
  v373 = v73;
  v324 = sub_26B542F04();
  v323 = *(v324 - 8);
  v74 = *(v323 + 64);
  MEMORY[0x28223BE20](v324, v75, v76, v77);
  v374 = &v307 - v78;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v79 = type metadata accessor for VCCommand.TargetedValue.IOS_iPadCodingKeys(255, &v416);
  v80 = swift_getWitnessTable();
  v371 = v79;
  v370 = v80;
  v322 = sub_26B542F04();
  v321 = *(v322 - 8);
  v81 = *(v321 + 64);
  MEMORY[0x28223BE20](v322, v82, v83, v84);
  v372 = &v307 - v85;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v86 = type metadata accessor for VCCommand.TargetedValue.IOS_iPhoneCodingKeys(255, &v416);
  v87 = swift_getWitnessTable();
  v368 = v86;
  v367 = v87;
  v320 = sub_26B542F04();
  v319 = *(v320 - 8);
  v88 = *(v319 + 64);
  MEMORY[0x28223BE20](v320, v89, v90, v91);
  v369 = &v307 - v92;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v93 = type metadata accessor for VCCommand.TargetedValue.IOSCodingKeys(255, &v416);
  v94 = swift_getWitnessTable();
  v365 = v93;
  v364 = v94;
  v318 = sub_26B542F04();
  v317 = *(v318 - 8);
  v95 = *(v317 + 64);
  MEMORY[0x28223BE20](v318, v96, v97, v98);
  v366 = &v307 - v99;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v100 = type metadata accessor for VCCommand.TargetedValue.MacOS_macCodingKeys(255, &v416);
  v101 = swift_getWitnessTable();
  v362 = v100;
  v361 = v101;
  v316 = sub_26B542F04();
  v315 = *(v316 - 8);
  v102 = *(v315 + 64);
  MEMORY[0x28223BE20](v316, v103, v104, v105);
  v363 = &v307 - v106;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v107 = type metadata accessor for VCCommand.TargetedValue.MacOSCodingKeys(255, &v416);
  v108 = swift_getWitnessTable();
  v359 = v107;
  v358 = v108;
  v314 = sub_26B542F04();
  v313 = *(v314 - 8);
  v109 = *(v313 + 64);
  MEMORY[0x28223BE20](v314, v110, v111, v112);
  v360 = &v307 - v113;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v114 = type metadata accessor for VCCommand.TargetedValue.AllCodingKeys(255, &v416);
  v115 = swift_getWitnessTable();
  v356 = v114;
  v355 = v115;
  v312 = sub_26B542F04();
  v311 = *(v312 - 8);
  v116 = *(v311 + 64);
  MEMORY[0x28223BE20](v312, v117, v118, v119);
  v357 = &v307 - v120;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v121 = type metadata accessor for VCCommand.TargetedValue.CodingKeys(255, &v416);
  v411 = swift_getWitnessTable();
  v406 = sub_26B542F04();
  v410 = *(v406 - 8);
  v122 = *(v410 + 64);
  MEMORY[0x28223BE20](v406, v123, v124, v125);
  v418 = &v307 - v126;
  v385 = a2;
  *&v416 = a2;
  *(&v416 + 1) = a3;
  v408 = a4;
  *&v417 = a4;
  *(&v417 + 1) = a5;
  v127 = type metadata accessor for VCCommand.TargetedValue(0, &v416);
  v128 = *(v127 - 8);
  v404 = v127;
  v405 = v128;
  v129 = *(v128 + 64);
  v133 = MEMORY[0x28223BE20](v127, v130, v131, v132);
  v354 = &v307 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = MEMORY[0x28223BE20](v133, v135, v136, v137);
  v353 = &v307 - v139;
  v143 = MEMORY[0x28223BE20](v138, v140, v141, v142);
  v352 = &v307 - v144;
  v148 = MEMORY[0x28223BE20](v143, v145, v146, v147);
  v351 = &v307 - v149;
  v153 = MEMORY[0x28223BE20](v148, v150, v151, v152);
  v350 = &v307 - v154;
  v158 = MEMORY[0x28223BE20](v153, v155, v156, v157);
  v349 = &v307 - v159;
  v163 = MEMORY[0x28223BE20](v158, v160, v161, v162);
  v348 = &v307 - v164;
  v168 = MEMORY[0x28223BE20](v163, v165, v166, v167);
  v347 = &v307 - v169;
  v173 = MEMORY[0x28223BE20](v168, v170, v171, v172);
  v346 = &v307 - v174;
  v178 = MEMORY[0x28223BE20](v173, v175, v176, v177);
  v345 = &v307 - v179;
  v183 = MEMORY[0x28223BE20](v178, v180, v181, v182);
  v344 = &v307 - v184;
  v188 = MEMORY[0x28223BE20](v183, v185, v186, v187);
  v343 = &v307 - v189;
  v193 = MEMORY[0x28223BE20](v188, v190, v191, v192);
  v195 = &v307 - v194;
  v199 = MEMORY[0x28223BE20](v193, v196, v197, v198);
  v201 = &v307 - v200;
  v205 = MEMORY[0x28223BE20](v199, v202, v203, v204);
  v207 = &v307 - v206;
  v211 = MEMORY[0x28223BE20](v205, v208, v209, v210);
  v213 = &v307 - v212;
  MEMORY[0x28223BE20](v211, v214, v215, v216);
  v218 = &v307 - v217;
  v219 = a1;
  v220 = a1[3];
  v221 = a1[4];
  v413 = v219;
  __swift_project_boxed_opaque_existential_1(v219, v220);
  *&v407 = v121;
  v222 = v412;
  sub_26B543064();
  if (v222)
  {
LABEL_40:
    v303 = v413;
    return __swift_destroy_boxed_opaque_existential_1(v303);
  }

  v307 = v207;
  v308 = v201;
  v309 = v195;
  v310 = v213;
  v223 = v409;
  v411 = v218;
  v412 = 0;
  v225 = v405;
  v224 = v406;
  v226 = v418;
  *&v414 = sub_26B542EF4();
  sub_26B542C44();
  swift_getWitnessTable();
  *&v416 = sub_26B542CF4();
  *(&v416 + 1) = v227;
  *&v417 = v228;
  *(&v417 + 1) = v229;
  sub_26B542CE4();
  swift_getWitnessTable();
  sub_26B542C74();
  if (v414 == 16 || (v407 = v416, v414 = v416, v415 = v417, (sub_26B542C84() & 1) == 0))
  {
    v238 = sub_26B542DB4();
    swift_allocError();
    v240 = v239;
    v241 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803FFE00, &qword_26B5455A8) + 48);
    *v240 = v404;
    sub_26B542E94();
    sub_26B542DA4();
    (*(*(v238 - 8) + 104))(v240, *MEMORY[0x277D84160], v238);
    swift_willThrow();
    (*(v410 + 8))(v226, v224);
LABEL_39:
    swift_unknownObjectRelease();
    goto LABEL_40;
  }

  switch(&v415 + 8)
  {
    case 1u:
      LOBYTE(v414) = 1;
      v279 = v360;
      v280 = v412;
      sub_26B542E84();
      if (v280)
      {
        goto LABEL_37;
      }

      v281 = v314;
      sub_26B542EE4();
      v282 = v410;
      (*(v313 + 8))(v279, v281);
      (*(v282 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v307;
      v235 = v404;
      goto LABEL_42;
    case 2u:
      LOBYTE(v414) = 2;
      v263 = v363;
      v264 = v412;
      sub_26B542E84();
      if (v264)
      {
        goto LABEL_37;
      }

      v265 = v316;
      sub_26B542EE4();
      v266 = v410;
      (*(v315 + 8))(v263, v265);
      (*(v266 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v308;
      v235 = v404;
      goto LABEL_42;
    case 3u:
      LOBYTE(v414) = 3;
      v271 = v366;
      v272 = v412;
      sub_26B542E84();
      if (v272)
      {
        goto LABEL_37;
      }

      v273 = v318;
      sub_26B542EE4();
      v274 = v410;
      (*(v317 + 8))(v271, v273);
      (*(v274 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v309;
      v235 = v404;
      goto LABEL_42;
    case 4u:
      LOBYTE(v414) = 4;
      v251 = v369;
      v252 = v412;
      sub_26B542E84();
      if (v252)
      {
        goto LABEL_37;
      }

      v253 = v320;
      sub_26B542EE4();
      v254 = v410;
      (*(v319 + 8))(v251, v253);
      (*(v254 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v343;
      v235 = v404;
      goto LABEL_42;
    case 5u:
      LOBYTE(v414) = 5;
      v283 = v372;
      v284 = v412;
      sub_26B542E84();
      if (v284)
      {
        goto LABEL_37;
      }

      v285 = v322;
      sub_26B542EE4();
      v286 = v410;
      (*(v321 + 8))(v283, v285);
      (*(v286 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v344;
      v235 = v404;
      goto LABEL_42;
    case 6u:
      LOBYTE(v414) = 6;
      v291 = v374;
      v292 = v412;
      sub_26B542E84();
      if (v292)
      {
        goto LABEL_37;
      }

      v293 = v324;
      sub_26B542EE4();
      v294 = v410;
      (*(v323 + 8))(v291, v293);
      (*(v294 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v345;
      v235 = v404;
      goto LABEL_42;
    case 7u:
      LOBYTE(v414) = 7;
      v275 = v376;
      v276 = v412;
      sub_26B542E84();
      if (v276)
      {
        goto LABEL_37;
      }

      v277 = v326;
      sub_26B542EE4();
      v278 = v410;
      (*(v325 + 8))(v275, v277);
      (*(v278 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v346;
      v235 = v404;
      goto LABEL_42;
    case 8u:
      LOBYTE(v414) = 8;
      v299 = v377;
      v300 = v412;
      sub_26B542E84();
      if (v300)
      {
        goto LABEL_37;
      }

      v301 = v328;
      sub_26B542EE4();
      v302 = v410;
      (*(v327 + 8))(v299, v301);
      (*(v302 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v347;
      v235 = v404;
      goto LABEL_42;
    case 9u:
      LOBYTE(v414) = 9;
      v259 = v378;
      v260 = v412;
      sub_26B542E84();
      if (v260)
      {
        goto LABEL_37;
      }

      v261 = v330;
      sub_26B542EE4();
      v262 = v410;
      (*(v329 + 8))(v259, v261);
      (*(v262 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v348;
      v235 = v404;
      goto LABEL_42;
    case 0xAu:
      LOBYTE(v414) = 10;
      v295 = v379;
      v296 = v412;
      sub_26B542E84();
      if (v296)
      {
        goto LABEL_37;
      }

      v297 = v332;
      sub_26B542EE4();
      v298 = v410;
      (*(v331 + 8))(v295, v297);
      (*(v298 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v349;
      v235 = v404;
      goto LABEL_42;
    case 0xBu:
      LOBYTE(v414) = 11;
      v247 = v380;
      v248 = v412;
      sub_26B542E84();
      if (v248)
      {
        goto LABEL_37;
      }

      v249 = v334;
      sub_26B542EE4();
      v250 = v410;
      (*(v333 + 8))(v247, v249);
      (*(v250 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v350;
      v235 = v404;
      goto LABEL_42;
    case 0xCu:
      LOBYTE(v414) = 12;
      v255 = v381;
      v256 = v412;
      sub_26B542E84();
      if (v256)
      {
        goto LABEL_37;
      }

      v257 = v336;
      sub_26B542EE4();
      v258 = v410;
      (*(v335 + 8))(v255, v257);
      (*(v258 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v351;
      v235 = v404;
      goto LABEL_42;
    case 0xDu:
      LOBYTE(v414) = 13;
      v287 = v382;
      v288 = v412;
      sub_26B542E84();
      if (v288)
      {
        goto LABEL_37;
      }

      v289 = v338;
      sub_26B542EE4();
      v290 = v410;
      (*(v337 + 8))(v287, v289);
      (*(v290 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v352;
      v235 = v404;
      goto LABEL_42;
    case 0xEu:
      LOBYTE(v414) = 14;
      v242 = v383;
      v243 = v412;
      sub_26B542E84();
      if (v243)
      {
        goto LABEL_37;
      }

      v244 = v340;
      sub_26B542EE4();
      v245 = v410;
      (*(v339 + 8))(v242, v244);
      (*(v245 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v353;
      v235 = v404;
      goto LABEL_42;
    case 0xFu:
      LOBYTE(v414) = 15;
      v267 = v384;
      v268 = v412;
      sub_26B542E84();
      if (v268)
      {
        goto LABEL_37;
      }

      v269 = v342;
      sub_26B542EE4();
      v270 = v410;
      (*(v341 + 8))(v267, v269);
      (*(v270 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v246 = v354;
      v235 = v404;
LABEL_42:
      swift_storeEnumTagMultiPayload();
      v237 = v246;
      v236 = v413;
      goto LABEL_43;
    default:
      LOBYTE(v414) = 0;
      v230 = v357;
      v231 = v412;
      sub_26B542E84();
      if (v231)
      {
LABEL_37:
        (*(v410 + 8))(v226, v224);
        goto LABEL_39;
      }

      v232 = v312;
      sub_26B542EE4();
      v233 = v410;
      (*(v311 + 8))(v230, v232);
      (*(v233 + 8))(v418, v224);
      swift_unknownObjectRelease();
      v234 = v310;
      v235 = v404;
      swift_storeEnumTagMultiPayload();
      v236 = v413;
      v237 = v234;
LABEL_43:
      v305 = *(v225 + 32);
      v306 = v411;
      v305(v411, v237, v235);
      v305(v223, v306, v235);
      v303 = v236;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v303);
}