uint64_t sub_10006E698()
{
  sub_100012604();
  sub_100012474();
  v3 = v2;
  sub_100083D94();
  *v4 = v3;
  v6 = *(v5 + 376);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  v3[48] = v0;

  if (v0)
  {
    v9 = v3[45];
    v10 = v3[42];
    (*(v3[34] + 8))(v3[35], v3[33]);
  }

  else
  {
    (*(v3[34] + 8))(v3[35], v3[33]);
  }

  sub_100012554();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10006E7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000853A0();
  sub_1000851F0();
  v15 = *(v14 + 360);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v14 + 360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v90 = *(v17 + 16);
    sub_100083E44();
    v91 = sub_10005CBF0();
    sub_100080510(v91, v92, v93, v17, v94, v95, v96);
    v17 = v97;
  }

  v19 = *(v17 + 16);
  v18 = *(v17 + 24);
  if (v19 >= v18 >> 1)
  {
    sub_100080510(v18 > 1, v19 + 1, 1, v17, sub_10004F830, &type metadata accessor for TypedValue, &type metadata accessor for TypedValue);
    v17 = v98;
  }

  v21 = *(v14 + 296);
  v20 = *(v14 + 304);
  v22 = *(v14 + 288);

  *(v17 + 16) = v19 + 1;
  v23 = *(v21 + 32);
  v21 += 32;
  v24 = *(v21 + 48);
  sub_10005E0A0();
  v26(v17 + v25 + *(v21 + 40) * v19, v20, v22);
  v34 = *(v14 + 384);
  v35 = *(v14 + 344);
  v36 = *(v14 + 352) + 1;
  *(v14 + 352) = v36;
  *(v14 + 360) = v17;
  v37 = *(v14 + 336);
  if (v36 != v35)
  {
    if (v36 >= *(v37 + 16))
    {
      __break(1u);
    }

    else
    {
      v44 = v37 + 32 * v36;
      sub_100011D84(0, &qword_1000A6958, WFContentItem_ptr);
      sub_10000A650(v44 + 32, v14 + 144);
      v45 = sub_10006ED64((v14 + 144));
      *(v14 + 368) = v45;
      if (!v45)
      {
        v71 = *(v14 + 328);
        v70 = *(v14 + 336);
        v72 = *(v14 + 312);
        v73 = *(v14 + 320);
        v75 = *(v14 + 224);
        v74 = *(v14 + 232);
        v76 = *(v14 + 216);

        *(v14 + 392) = 22;
        sub_100080024(_swiftEmptyArrayStorage);
        sub_100083944();
        sub_10008388C(v77, v78);
        sub_100084054();
        sub_1000888F8();
        (*(v75 + 8))(v74, v76);
        swift_willThrow();
        v79 = *(v73 + 8);
        v80 = sub_10005DC4C();
        v81(v80);
        goto LABEL_19;
      }

      v46 = *(v14 + 328);
      v47 = *(v14 + 280);
      v49 = *(v14 + 248);
      v48 = *(v14 + 256);
      v50 = *(v14 + 240);
      sub_10008A068();
      sub_10008A558();
      v51 = sub_100083F74();
      v52(v51);
      v53 = async function pointer to WFContentItem.resolve(with:)[1];
      swift_task_alloc();
      sub_100012480();
      *(v14 + 376) = v54;
      *v54 = v55;
      sub_1000844B0();
      sub_100084B5C();
    }

    return WFContentItem.resolve(with:)(v37, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
  }

  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  *(v14 + 184) = v17;
  sub_100008DC0(&qword_1000A6960, &qword_10008DDB0);
  sub_10008279C();
  sub_100088948();
  v38 = v34;
  v40 = *(v14 + 320);
  v39 = *(v14 + 328);
  v41 = *(v14 + 312);
  if (v38)
  {

    v42 = sub_100084570();
    v43(v42, v41);
LABEL_19:
    sub_100084988();

    sub_10001248C();
    sub_100084B5C();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14);
  }

  v56 = *(v14 + 304);
  v57 = *(v14 + 280);
  v58 = *(v14 + 256);
  v99 = *(v14 + 232);

  v59 = sub_100084570();
  v60(v59, v41);

  sub_1000843DC();
  sub_10005DC4C();
  sub_100084B5C();

  return v64(v61, v62, v63, v64, v65, v66, v67, v68, a9, v99, a11, a12, a13, a14);
}

uint64_t sub_10006EC14()
{
  sub_1000615C8();
  sub_10005EC9C();
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);

  v4 = *(v2 + 8);
  v5 = sub_100012498();
  v6(v5);
  v7 = *(v0 + 384);
  sub_100084988();

  sub_10001248C();
  sub_1000615B4();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10006ECB8(uint64_t a1)
{
  v1 = *sub_10005BE98((a1 + 32), *(a1 + 56));
  v2 = sub_10008A328();
  return sub_10006ED1C(v1, v2, &_swift_continuation_resume);
}

uint64_t sub_10006ED40(uint64_t a1, _OWORD *a2)
{
  v2 = *(*(a1 + 64) + 40);
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  return _swift_continuation_resume();
}

id sub_10006ED64(uint64_t *a1)
{
  sub_10005BE98(a1, a1[3]);
  v2 = sub_10008AA48();
  v3 = [swift_getObjCClassFromMetadata() itemWithObject:v2];
  swift_unknownObjectRelease();
  sub_10005B1BC(a1);
  return v3;
}

uint64_t sub_10006EDFC(void *a1, void *a2, void *aBlock)
{
  v3[2] = a1;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = sub_1000889D8();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_100083928;

  return static ToolKitHelper.produceEncodedTypedPossibleValues(contentProperty:encodedOptions:)();
}

uint64_t sub_10006EEDC()
{
  sub_100012404();
  v0[2] = v1;
  v2 = sub_100089918();
  v0[3] = v2;
  sub_100017A0C(v2);
  v0[4] = v3;
  v5 = *(v4 + 64);
  v0[5] = sub_10005F3EC();
  v0[6] = swift_task_alloc();
  v6 = sub_100089C38();
  v0[7] = v6;
  sub_100017A0C(v6);
  v0[8] = v7;
  v9 = *(v8 + 64);
  v0[9] = sub_10005F4D4();
  v10 = sub_100089938();
  v0[10] = v10;
  sub_100017A0C(v10);
  v0[11] = v11;
  v13 = *(v12 + 64);
  v0[12] = sub_10005F4D4();
  v14 = sub_100089BF8();
  v0[13] = v14;
  sub_100017A0C(v14);
  v0[14] = v15;
  v17 = *(v16 + 64);
  v0[15] = sub_10005F4D4();
  v18 = sub_1000899A8();
  v0[16] = v18;
  sub_100017A0C(v18);
  v0[17] = v19;
  v21 = *(v20 + 64);
  v0[18] = sub_10005F3EC();
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v22 = sub_10005CFA0();

  return _swift_task_switch(v22, v23, v24);
}

void sub_10006F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v15 = *(v12 + 16);
  v16 = sub_100088C78();
  *(v12 + 168) = sub_100088C68();
  v17 = *(v15 + 32);
  *(v12 + 228) = v17;
  v18 = 1 << v17;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & *(v15 + 56);
  v21 = enum case for TypeIdentifier.attributed(_:);
  *(v12 + 216) = enum case for TypeIdentifier.custom(_:);
  *(v12 + 220) = v21;
  *(v12 + 224) = enum case for ContainerDefinition.Device.local(_:);
  *(v12 + 176) = _swiftEmptyArrayStorage;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = *(v12 + 16);
LABEL_11:
      *(v12 + 184) = v20;
      *(v12 + 192) = v22;
      LODWORD(a9) = *(v12 + 216);
      sub_100084E14();
      sub_100084E04(v27);
      v28 = *(v14 + 16);
      v29 = sub_100084B1C();
      v28(v29);
      sub_100084F6C();
      v30 = sub_100084004();
      v31(v30);
      v32 = sub_10005EAE0();
      v28(v32);
      v33 = *(v14 + 88);
      v14 += 88;
      v34 = sub_10005DB50();
      v36 = v35(v34);
      if (v36 == a9)
      {
        v52 = sub_1000844E0();
        v53(v52);
        v54 = sub_1000848E4();
        v55(v54);
        goto LABEL_22;
      }

      if (v36 == *(v12 + 220))
      {
        break;
      }

      v20 &= v20 - 1;
      v37 = sub_100084908();
      v13(v37);
      v38 = sub_100012498();
      v13(v38);
      if (!v20)
      {
        goto LABEL_6;
      }
    }

    v56 = sub_100083FD4();
    v57(v56);
    v58 = *v16;
    swift_projectBox();
    v59 = sub_1000844F8();
    v60(v59);
    sub_1000850C0();
    sub_100089928();
    sub_100085304();
    sub_100089C28();
    v61 = sub_100083EC8();
    v62(v61);
    v63 = sub_100084080();
    v64(v63);

LABEL_22:
    sub_100084DF4(&async function pointer to dispatch thunk of DatabaseTypeDefinitionProvider.type(with:from:));
    v76 = v65;
    swift_task_alloc();
    sub_100012480();
    *(v12 + 200) = v66;
    *v66 = v67;
    sub_100083D24(v66);
    sub_100012640();

    v71(v68, v69, v70, v71, v72, v73, v74, v75, v76, a10, a11, a12);
  }

  else
  {
    while (1)
    {
LABEL_6:
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        return;
      }

      sub_100084944();
      if (v25 == v26)
      {
        break;
      }

      v20 = *(*(v12 + 16) + 8 * v24 + 56);
      ++v22;
      if (v20)
      {
        v22 = v24;
        goto LABEL_11;
      }
    }

    v39 = *(v12 + 168);
    v40 = *(v12 + 176);
    v41 = *(v12 + 16);

    v42 = *(v12 + 176);
    if (!*(v40 + 16))
    {
      v43 = *(v12 + 176);
    }

    sub_1000846D0();

    sub_100084A54();
    sub_100012640();

    v46(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12);
  }
}

uint64_t sub_10006F3F0()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 200);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 208) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10006F4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000853A0();
  sub_1000851F0();
  v15 = *(v14 + 176);
  (*(*(v14 + 32) + 16))(*(v14 + 40), *(v14 + 48), *(v14 + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v14 + 176);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_26:
    v89 = v17[2];
    v90 = sub_10005CBF0();
    sub_100080510(v90, v91, v92, v17, v93, v94, v95);
    v17 = v96;
  }

  v19 = v17[2];
  v18 = v17[3];
  v100 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    sub_100080510(v18 > 1, v19 + 1, 1, v17, sub_10004F628, &type metadata accessor for TypeDefinition, &type metadata accessor for TypeDefinition);
    v17 = v97;
  }

  v21 = *(v14 + 128);
  v20 = *(v14 + 136);
  v23 = *(v14 + 112);
  v22 = *(v14 + 120);
  v24 = *(v14 + 104);
  v98 = *(v14 + 152);
  v99 = *(v14 + 40);
  v25 = *(v14 + 32);
  (*(v25 + 8))(*(v14 + 48), *(v14 + 24));
  v26 = *(v23 + 8);
  v27 = sub_10005DC58();
  v28(v27);
  (*(v20 + 8))(v98, v21);
  v17[2] = v100;
  v29 = *(v25 + 32);
  v25 += 32;
  v30 = *(v25 + 48);
  sub_10005E0A0();
  v32(v17 + v31 + *(v25 + 40) * v19);
  v33 = *(v14 + 192);
  v34 = (*(v14 + 184) - 1) & *(v14 + 184);
  *(v14 + 176) = v17;
  while (v34)
  {
    v35 = *(v14 + 16);
LABEL_12:
    *(v14 + 184) = v34;
    *(v14 + 192) = v33;
    LODWORD(v100) = *(v14 + 216);
    sub_100084E14();
    sub_100084E04(v39);
    v40 = *(v19 + 16);
    v41 = sub_100084B1C();
    v40(v41);
    sub_100084F6C();
    v42 = sub_100084004();
    v43(v42);
    v44 = sub_10005EAE0();
    v40(v44);
    v45 = *(v19 + 88);
    v19 += 88;
    v46 = sub_10005DB50();
    v48 = v47(v46);
    if (v48 == v100)
    {
      v65 = sub_1000844E0();
      v66(v65);
      v67 = sub_1000848E4();
      v68(v67);
LABEL_22:
      sub_100084DF4(&async function pointer to dispatch thunk of DatabaseTypeDefinitionProvider.type(with:from:));
      v101 = v78;
      swift_task_alloc();
      sub_100012480();
      *(v14 + 200) = v79;
      *v79 = v80;
      sub_100083D24();
      sub_100084B5C();

      return v84(v81, v82, v83, v84, v85, v86, v87, v88, v98, v99, v101, a12, a13, a14);
    }

    if (v48 == *(v14 + 220))
    {
      v69 = sub_100083FD4();
      v70(v69);
      v71 = *v17;
      swift_projectBox();
      v72 = sub_1000844F8();
      v73(v72);
      sub_1000850C0();
      sub_100089928();
      sub_100085304();
      sub_100089C28();
      v74 = sub_100083EC8();
      v75(v74);
      v76 = sub_100084080();
      v77(v76);

      goto LABEL_22;
    }

    v34 &= v34 - 1;
    v49 = sub_100084908();
    v21(v49);
    v50 = sub_100012498();
    v21(v50);
  }

  while (1)
  {
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    sub_100084944();
    if (v37 == v38)
    {
      break;
    }

    v34 = *(*(v14 + 16) + 8 * v36 + 56);
    ++v33;
    if (v34)
    {
      v33 = v36;
      goto LABEL_12;
    }
  }

  v51 = *(v14 + 168);
  v52 = *(v14 + 176);
  v53 = *(v14 + 16);

  v54 = *(v14 + 176);
  if (!*(v52 + 16))
  {
    v55 = *(v14 + 176);
  }

  sub_1000846D0();

  sub_100084A54();
  sub_100084B5C();

  return v58(v56, v57, v58, v59, v60, v61, v62, v63, v98, v99, v100, a12, a13, a14);
}

void sub_10006F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = *(v12 + 208);
  v15 = *(v12 + 152);
  v16 = *(v12 + 128);
  v17 = *(v12 + 136);
  (*(*(v12 + 112) + 8))(*(v12 + 120), *(v12 + 104));
  v19 = *(v17 + 8);
  v18 = (v17 + 8);
  v20 = sub_1000124C8();
  v21(v20);

  v22 = *(v12 + 192);
  v23 = (*(v12 + 184) - 1) & *(v12 + 184);
  while (v23)
  {
    v24 = *(v12 + 16);
LABEL_9:
    *(v12 + 184) = v23;
    *(v12 + 192) = v22;
    LODWORD(a9) = *(v12 + 216);
    sub_100084E14();
    sub_100084E04(v28);
    v29 = *(v13 + 16);
    v30 = sub_100084B1C();
    v29(v30);
    sub_100084F6C();
    v31 = sub_100084004();
    v32(v31);
    v33 = sub_10005EAE0();
    v29(v33);
    v34 = *(v13 + 88);
    v13 += 88;
    v35 = sub_10005DB50();
    v37 = v36(v35);
    if (v37 == a9)
    {
      v53 = sub_1000844E0();
      v54(v53);
      v55 = sub_1000848E4();
      v56(v55);
LABEL_19:
      sub_100084DF4(&async function pointer to dispatch thunk of DatabaseTypeDefinitionProvider.type(with:from:));
      v77 = v66;
      swift_task_alloc();
      sub_100012480();
      *(v12 + 200) = v67;
      *v67 = v68;
      sub_100083D24();
      sub_100012640();

      v72(v69, v70, v71, v72, v73, v74, v75, v76, v77, a10, a11, a12);
      return;
    }

    if (v37 == *(v12 + 220))
    {
      v57 = sub_100083FD4();
      v58(v57);
      v59 = *v14;
      swift_projectBox();
      v60 = sub_1000844F8();
      v61(v60);
      sub_1000850C0();
      sub_100089928();
      sub_100085304();
      sub_100089C28();
      v62 = sub_100083EC8();
      v63(v62);
      v64 = sub_100084080();
      v65(v64);

      goto LABEL_19;
    }

    v23 &= v23 - 1;
    v38 = sub_100084908();
    v18(v38);
    v39 = sub_100012498();
    v18(v39);
  }

  while (1)
  {
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      return;
    }

    sub_100084944();
    if (v26 == v27)
    {
      break;
    }

    v23 = *(*(v12 + 16) + 8 * v25 + 56);
    ++v22;
    if (v23)
    {
      v22 = v25;
      goto LABEL_9;
    }
  }

  v40 = *(v12 + 168);
  v41 = *(v12 + 176);
  v42 = *(v12 + 16);

  v43 = *(v12 + 176);
  if (!*(v41 + 16))
  {
    v44 = *(v12 + 176);
  }

  sub_1000846D0();

  sub_100084A54();
  sub_100012640();

  v47(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
}

uint64_t static ToolKitHelper.produceEncodedTypedValues(states:of:in:encodedOptions:)()
{
  sub_100012404();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v7 = sub_10008A128();
  v1[9] = v7;
  sub_100017A0C(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = sub_10005F4D4();
  v11 = sub_1000897A8();
  v1[12] = v11;
  sub_100017A0C(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = sub_10005F3EC();
  v1[15] = swift_task_alloc();
  v15 = sub_100089918();
  v1[16] = v15;
  sub_100017A0C(v15);
  v1[17] = v16;
  v18 = *(v17 + 64);
  v1[18] = sub_10005F3EC();
  v1[19] = swift_task_alloc();
  v19 = sub_100008DC0(&qword_1000A64B0, &qword_10008D8B8);
  sub_10005E3B0(v19);
  v21 = *(v20 + 64);
  v1[20] = sub_10005F4D4();
  v22 = sub_1000899A8();
  v1[21] = v22;
  sub_100017A0C(v22);
  v1[22] = v23;
  v25 = *(v24 + 64);
  v1[23] = sub_10005F4D4();
  v26 = sub_100089888();
  v1[24] = v26;
  sub_100017A0C(v26);
  v1[25] = v27;
  v29 = *(v28 + 64);
  v1[26] = sub_10005F4D4();
  v30 = sub_10008A1A8();
  v1[27] = v30;
  sub_100017A0C(v30);
  v1[28] = v31;
  v33 = *(v32 + 64);
  v1[29] = sub_10005F4D4();
  v34 = sub_10008A078();
  v1[30] = v34;
  sub_100017A0C(v34);
  v1[31] = v35;
  v37 = *(v36 + 64);
  v1[32] = sub_10005F4D4();
  v38 = sub_10005CFA0();

  return _swift_task_switch(v38, v39, v40);
}

uint64_t sub_10006FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v19 = *(v18 + 256);
  v20 = *(v18 + 240);
  v22 = *(v18 + 48);
  v21 = *(v18 + 56);
  sub_100083E2C();
  sub_10008388C(v23, v24);
  sub_100084460();
  if (v21)
  {
    v25 = *(v18 + 256);
    v26 = *(v18 + 232);
    v27 = *(v18 + 208);
    sub_100083E5C();
    v80 = *(v18 + 88);

    sub_10001248C();
    sub_10005F3D0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, v80, a15, a16, a17, a18);
  }

  v37 = sub_10001BEBC(*(v18 + 24));
  *(v18 + 264) = v37;
  if (v37)
  {
    v41 = *(v18 + 24);
    *(v18 + 424) = enum case for TypeIdentifier.PrimitiveTypeIdentifier.int(_:);
    *(v18 + 428) = enum case for TypeIdentifier.primitive(_:);
    *(v18 + 272) = _swiftEmptyArrayStorage;
    if ((v41 & 0xC000000000000001) != 0)
    {
      v42 = sub_10008A928();
    }

    else
    {
      if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v37, v41, v38, v39, v40);
      }

      v42 = *(v41 + 32);
    }

    *(v18 + 280) = v42;
    *(v18 + 288) = 1;
    v46 = *(v18 + 40);
    objc_opt_self();
    sub_10005E028();
    v47 = swift_dynamicCastObjCClass();
    *(v18 + 296) = v47;
    if (v47)
    {
      v48 = *(v18 + 32);
      v49 = *(v18 + 40);
      v50 = [v48 key];
      if (!v50)
      {
        sub_10008A268();
        sub_10008A238();
        sub_10005D9B8();
      }

      *(v18 + 304) = v50;
      sub_10008A3B8();
      *(v18 + 312) = sub_10008A3A8();
      sub_10005D9B8();
      sub_10008A388();
      sub_10008454C();
      sub_10005F3D0();

      return _swift_task_switch(v51, v52, v53);
    }

    *(v18 + 384) = [objc_opt_self() defaultContext];
    v55 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
    swift_task_alloc();
    sub_100012480();
    *(v18 + 392) = v56;
    *v56 = v57;
    sub_100085188(v56);
    v59 = *(v18 + 32);
    v58 = *(v18 + 40);
    sub_100083CEC();
    sub_10005F3D0();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v37, v41, v38, v39, v40);
  }

  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  *(v18 + 16) = _swiftEmptyArrayStorage;
  sub_100008DC0(&qword_1000A6960, &qword_10008DDB0);
  sub_10008279C();
  sub_100088948();
  v44 = *(v18 + 248);
  v43 = *(v18 + 256);
  v45 = *(v18 + 240);
  v61 = *(v18 + 232);
  v62 = *(v18 + 208);
  v63 = *(v18 + 184);
  v64 = *(v18 + 160);
  v76 = *(v18 + 152);
  v77 = *(v18 + 144);
  v78 = *(v18 + 120);
  v79 = *(v18 + 112);
  v81 = *(v18 + 88);

  v65 = *(v44 + 8);
  v66 = sub_10005DC4C();
  v67(v66);

  sub_1000843DC();
  sub_100012498();
  sub_10005F3D0();

  return v71(v68, v69, v70, v71, v72, v73, v74, v75, a9, v76, v77, v78, v79, v81, a15, a16, a17, a18);
}

uint64_t sub_1000702EC()
{
  sub_100012404();
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[37];

  v0[40] = [v3 parameterMetadataForIdentifier:v2];

  v4 = sub_10005CFA0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100070370()
{
  sub_100012404();
  v1 = *(v0 + 320);
  if (v1)
  {
    v2 = [v1 valueType];
    *(v0 + 328) = v2;
    objc_opt_self();
    sub_10005E028();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = async function pointer to WFParameter.toolkitTypeInstanceForLinkUnion(valueType:parameterMetadata:action:parameterKey:)[1];
      swift_task_alloc();
      sub_100012480();
      *(v0 + 336) = v6;
      *v6 = v7;
      v6[1] = sub_100070508;
      v8 = *(v0 + 320);
      v9 = *(v0 + 296);
      v10 = *(v0 + 208);
      v11 = *(v0 + 32);

      return WFParameter.toolkitTypeInstanceForLinkUnion(valueType:parameterMetadata:action:parameterKey:)(v10, v4, v8, v9, 0, 0);
    }

    v12 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 40);
  }

  *(v0 + 384) = [objc_opt_self() defaultContext];
  v13 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
  swift_task_alloc();
  sub_100012480();
  *(v0 + 392) = v14;
  *v14 = v15;
  sub_100085188(v14);
  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  sub_100083CEC();

  return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v18, v19, v20, v21, v22);
}

uint64_t sub_100070508()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_100083D94();
  *v4 = v3;
  v6 = *(v5 + 336);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v3 + 344) = v0;

  if (v0)
  {
    v9 = *(v3 + 272);
  }

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100070608()
{
  sub_10005E828();
  sub_10005EAC8();
  v1 = *(v0 + 428);
  v2 = *(v0 + 424);
  v3 = *(v0 + 208);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = *(v0 + 168);
  sub_100089868();
  v7 = sub_100089978();
  v8 = swift_allocBox();
  sub_10005D92C(v7);
  (*(v9 + 104))();
  *v4 = v8;
  (*(v5 + 104))(v4, v1, v6);
  v10 = sub_10005E464();
  *(v0 + 432) = sub_1000637A4(v10, v11);

  v12 = *(v5 + 8);
  v13 = sub_10005DC4C();
  v14(v13);
  *(v0 + 352) = sub_100089868();
  v15 = swift_task_alloc();
  *(v0 + 360) = v15;
  *v15 = v0;
  v15[1] = sub_100070758;
  sub_100012640();

  return sub_10006EEDC();
}

uint64_t sub_100070758()
{
  sub_1000615C8();
  sub_10005EC9C();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_10001237C();
  *v6 = v5;
  v7 = v4[45];
  *v6 = *v1;
  v5[46] = v0;

  v8 = v4[44];
  if (v0)
  {
    v9 = v5[34];
  }

  else
  {

    v5[47] = v3;
  }

  sub_1000840CC();
  sub_1000615B4();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100070890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000853A0();
  sub_1000851F0();
  v15 = *(v14 + 376);
  v16 = *(v14 + 432);
  v17 = *(v14 + 320);
  v18 = *(v14 + 232);
  v20 = *(v14 + 200);
  v19 = *(v14 + 208);
  v37 = *(v14 + 328);
  v38 = *(v14 + 192);
  v21 = *(v14 + 160);
  v22 = *(v14 + 40);
  v23 = sub_100089868();
  sub_10006357C(v23, v21);

  sub_10008A198();

  (*(v20 + 8))(v19, v38);
  v24 = *(v14 + 256);
  v25 = *(v14 + 88);
  sub_10008A068();
  v26 = async function pointer to WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)[1];
  v27 = swift_task_alloc();
  *(v14 + 408) = v27;
  sub_100008DC0(&qword_1000A69B0, &qword_10008DDF0);
  *v27 = v14;
  sub_100084428();
  sub_100084B5C();

  return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, a12, a13, a14);
}

uint64_t sub_1000709B0()
{
  sub_100012604();
  v2 = *v1;
  v3 = *v1;
  sub_10001237C();
  *v4 = v3;
  v5 = *(v2 + 392);
  *v4 = *v1;
  *(v3 + 400) = v0;

  v6 = *(v2 + 384);
  if (v0)
  {
    v7 = *(v3 + 272);
  }

  else
  {
  }

  sub_100012554();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100070AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_1000615C8();
  sub_10005EC9C();
  v14 = v13[29];
  v16 = v13[18];
  v15 = v13[19];
  v17 = v13[17];
  v18 = *(v17 + 16);
  v19 = sub_10005EAE0();
  v20(v19);
  sub_10008A188();
  v21 = *(v17 + 8);
  v22 = sub_10005E088();
  v23(v22);
  v24 = v13[32];
  v25 = v13[11];
  sub_10008A068();
  v26 = async function pointer to WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)[1];
  v27 = swift_task_alloc();
  v13[51] = v27;
  sub_100008DC0(&qword_1000A69B0, &qword_10008DDF0);
  *v27 = v13;
  sub_100084428();
  sub_1000615B4();

  return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, v13);
}

uint64_t sub_100070BCC()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_100083D94();
  *v4 = v3;
  v6 = *(v5 + 408);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  v3[52] = v0;

  if (v0)
  {
    v9 = v3[34];
    (*(v3[10] + 8))(v3[11], v3[9]);
  }

  else
  {
    (*(v3[10] + 8))(v3[11], v3[9]);
  }

  sub_100012554();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100070D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  v19 = *(v18 + 272);
  (*(*(v18 + 104) + 16))(*(v18 + 112), *(v18 + 120), *(v18 + 96));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v18 + 272);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v93 = *(v21 + 16);
    sub_100083E44();
    v94 = sub_10005CBF0();
    sub_100080510(v94, v95, v96, v21, v97, v98, v99);
    v21 = v100;
  }

  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    sub_100080510(v22 > 1, v23 + 1, 1, v21, sub_10004F830, &type metadata accessor for TypedValue, &type metadata accessor for TypedValue);
    v21 = v101;
  }

  v107 = *(v18 + 288);
  v105 = *(v18 + 264);
  v25 = *(v18 + 224);
  v24 = *(v18 + 232);
  v26 = *(v18 + 216);
  v28 = *(v18 + 112);
  v27 = *(v18 + 120);
  v30 = *(v18 + 96);
  v29 = *(v18 + 104);

  (*(v29 + 8))(v27, v30);
  v31 = *(v25 + 8);
  v32 = sub_10005DB50();
  v33(v32);
  *(v21 + 16) = v23 + 1;
  v34 = *(v29 + 32);
  v29 += 32;
  v35 = *(v29 + 48);
  sub_10005E0A0();
  v38 = v37(v21 + v36 + *(v29 + 40) * v23, v28, v30);
  if (v107 == v105)
  {
    v39 = *(v18 + 416);
    if (qword_1000A5958 != -1)
    {
      sub_100083988();
    }

    *(v18 + 16) = v21;
    sub_100008DC0(&qword_1000A6960, &qword_10008DDB0);
    sub_10008279C();
    sub_100088948();
    v41 = *(v18 + 248);
    v40 = *(v18 + 256);
    v42 = *(v18 + 240);
    if (v39)
    {

      v43 = sub_100083EC8();
      v44(v43);
      v45 = *(v18 + 256);
      v46 = *(v18 + 232);
      v47 = *(v18 + 208);
      sub_100083E5C();
      v109 = *(v18 + 88);

      sub_10001248C();
      sub_10005F3D0();

      return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, v105, v107, v109, a15, a16, a17, a18);
    }

    else
    {
      v64 = *(v18 + 232);
      v65 = *(v18 + 208);
      v66 = *(v18 + 184);
      v102 = *(v18 + 160);
      v103 = *(v18 + 152);
      v104 = *(v18 + 144);
      v106 = *(v18 + 120);
      v108 = *(v18 + 112);
      v110 = *(v18 + 88);

      v67 = sub_100083EC8();
      v68(v67);

      sub_1000843DC();
      sub_10005E9C0();
      sub_10005F3D0();

      return v72(v69, v70, v71, v72, v73, v74, v75, v76, v102, v103, v104, v106, v108, v110, a15, a16, a17, a18);
    }
  }

  v57 = *(v18 + 288);
  *(v18 + 272) = v21;
  v58 = *(v18 + 24);
  if ((v58 & 0xC000000000000001) != 0)
  {
    v59 = sub_10008A928();
  }

  else
  {
    sub_10005D988(v38, v58);
    if (v77)
    {
LABEL_30:
      __break(1u);
      return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v59, v60, v61, v62, v63);
    }

    v59 = sub_1000604FC(v59, v60);
  }

  *(v18 + 280) = v59;
  *(v18 + 288) = v57 + 1;
  if (__OFADD__(v57, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v78 = *(v18 + 40);
  objc_opt_self();
  sub_10005E028();
  v79 = swift_dynamicCastObjCClass();
  *(v18 + 296) = v79;
  if (!v79)
  {
    *(v18 + 384) = [objc_opt_self() defaultContext];
    v87 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
    swift_task_alloc();
    sub_100012480();
    *(v18 + 392) = v88;
    *v88 = v89;
    sub_100085188(v88);
    v91 = *(v18 + 32);
    v90 = *(v18 + 40);
    sub_100083CEC();
    sub_10005F3D0();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v59, v60, v61, v62, v63);
  }

  v80 = *(v18 + 32);
  v81 = *(v18 + 40);
  v82 = [v80 key];
  if (!v82)
  {
    sub_10008A268();
    sub_10008A238();
    sub_10005D9B8();
  }

  *(v18 + 304) = v82;
  sub_10008A3B8();
  *(v18 + 312) = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_10008454C();
  sub_10005F3D0();

  return _swift_task_switch(v83, v84, v85);
}

uint64_t sub_100071208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = *(v12 + 320);
  v13 = *(v12 + 328);
  v15 = *(v12 + 280);
  v17 = *(v12 + 248);
  v16 = *(v12 + 256);
  v18 = *(v12 + 240);

  v19 = *(v17 + 8);
  v20 = sub_100012498();
  v21(v20);
  v22 = *(v12 + 344);
  sub_100083DE0();

  sub_10001248C();
  sub_100012640();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1000712EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = *(v12 + 320);
  v13 = *(v12 + 328);
  v15 = *(v12 + 280);
  v17 = *(v12 + 248);
  v16 = *(v12 + 256);
  v18 = *(v12 + 240);
  v20 = *(v12 + 200);
  v19 = *(v12 + 208);
  v21 = *(v12 + 192);

  v22 = *(v20 + 8);
  v23 = sub_10005DB50();
  v24(v23);
  v25 = *(v17 + 8);
  v26 = sub_100012498();
  v27(v26);
  v28 = *(v12 + 368);
  sub_100083DE0();

  sub_10001248C();
  sub_100012640();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_1000713EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  v15 = *(v12 + 240);

  v16 = *(v14 + 8);
  v17 = sub_100012498();
  v18(v17);
  v19 = *(v12 + 400);
  sub_100083DE0();

  sub_10001248C();
  sub_100012640();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1000714BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = *(v12 + 248);
  v13 = *(v12 + 256);
  v16 = *(v12 + 232);
  v15 = *(v12 + 240);
  v17 = *(v12 + 216);
  v18 = *(v12 + 224);

  v19 = *(v18 + 8);
  v20 = sub_10005DB50();
  v21(v20);
  v22 = *(v14 + 8);
  v23 = sub_100012498();
  v24(v23);
  v25 = *(v12 + 416);
  sub_100083DE0();

  sub_10001248C();
  sub_100012640();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_100071654(int a1, void *a2, void *a3, void *a4, void *aBlock)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = _Block_copy(aBlock);
  sub_100008DC0(&qword_1000A69B0, &qword_10008DDF0);
  v5[5] = sub_10008A328();
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = sub_1000889D8();
  v14 = v13;

  v5[6] = v12;
  v5[7] = v14;
  swift_getObjCClassMetadata();
  v15 = swift_task_alloc();
  v5[8] = v15;
  *v15 = v5;
  v15[1] = sub_100071798;

  return static ToolKitHelper.produceEncodedTypedValues(states:of:in:encodedOptions:)();
}

uint64_t sub_100071798()
{
  sub_100060400();
  sub_100083C3C();
  sub_10001237C();
  *v3 = v2;
  v4 = v2[8];
  v5 = v2[3];
  v6 = v2[2];
  *v3 = *v1;

  sub_100084D58();
  v8 = v2[5];
  sub_10005ABBC(v2[6], *(v7 + 56));

  if (v0)
  {
    sub_100088968();
    sub_100084DA8();

    v9 = v8;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v11 = sub_100084074();
    sub_10005ABBC(v11, v12);
    v9 = isa;
  }

  v13 = v2[4];
  v14 = sub_100083E70();
  v15(v14);

  _Block_release(v13);
  sub_1000840DC();

  return v16();
}

uint64_t static ToolKitHelper.produceEncodedDisplayRepresentation(for:)()
{
  sub_100012404();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_100008DC0(&qword_1000A69B8, &qword_10008DE08);
  sub_10005E3B0(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_10005F4D4();
  v6 = sub_100089DD8();
  v0[5] = v6;
  sub_100017A0C(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = sub_10005F4D4();
  v10 = sub_100008DC0(&unk_1000A69C0, &unk_10008DE10);
  sub_10005E3B0(v10);
  v12 = *(v11 + 64);
  v0[8] = sub_10005F4D4();
  v13 = sub_100089E18();
  v0[9] = v13;
  sub_100017A0C(v13);
  v0[10] = v14;
  v16 = *(v15 + 64);
  v0[11] = sub_10005F4D4();
  v17 = sub_100088908();
  v0[12] = v17;
  sub_100017A0C(v17);
  v0[13] = v18;
  v20 = *(v19 + 64);
  v0[14] = sub_10005F4D4();
  v21 = sub_10008A128();
  v0[15] = v21;
  sub_100017A0C(v21);
  v0[16] = v22;
  v24 = *(v23 + 64);
  v0[17] = sub_10005F4D4();
  v25 = sub_100008DC0(&unk_1000A6270, qword_10008D5F8);
  sub_10005E3B0(v25);
  v27 = *(v26 + 64);
  v0[18] = sub_10005F4D4();
  v28 = sub_100089D98();
  v0[19] = v28;
  sub_100017A0C(v28);
  v0[20] = v29;
  v31 = *(v30 + 64);
  v0[21] = sub_10005F4D4();
  v32 = sub_1000898C8();
  v0[22] = v32;
  sub_100017A0C(v32);
  v0[23] = v33;
  v35 = *(v34 + 64);
  v0[24] = sub_10005F4D4();
  v36 = sub_100089DF8();
  v0[25] = v36;
  sub_100017A0C(v36);
  v0[26] = v37;
  v39 = *(v38 + 64);
  v0[27] = sub_10005F4D4();
  v40 = sub_100089D78();
  v0[28] = v40;
  sub_100017A0C(v40);
  v0[29] = v41;
  v43 = *(v42 + 64);
  v0[30] = sub_10005F3EC();
  v0[31] = swift_task_alloc();
  v44 = sub_10005CFA0();

  return _swift_task_switch(v44, v45, v46);
}

uint64_t sub_100071CA0()
{
  sub_100060250();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_10008388C(&qword_1000A69D0, &type metadata accessor for DisplayRepresentation.ResolvingRequest);
  sub_100084460();
  if (v3)
  {
LABEL_5:
    v13 = *(v0 + 240);
    v12 = *(v0 + 248);
    v14 = *(v0 + 216);
    v15 = *(v0 + 192);
    v16 = *(v0 + 168);
    v18 = *(v0 + 136);
    v17 = *(v0 + 144);
    v19 = *(v0 + 112);
    v20 = *(v0 + 88);
    v21 = *(v0 + 64);
    v85 = *(v0 + 56);
    v86 = *(v0 + 32);

    sub_10001248C();
    sub_100084C34();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v0 + 248);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);
  v8 = *(v0 + 200);
  sub_100011D84(0, &qword_1000A69D8, NSKeyedUnarchiver_ptr);
  sub_100011D84(0, &qword_1000A6958, WFContentItem_ptr);
  sub_100089D68();
  sub_100089DE8();
  *(v0 + 256) = *(v7 + 8);
  *(v0 + 264) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = sub_1000124C8();
  v10(v9);
  sub_100085164();
  v11 = sub_10008A628();
  *(v0 + 272) = v11;
  *(v0 + 280) = 0;
  v24 = v11;
  v25 = sub_10005EC4C();
  sub_10005ABBC(v25, v26);
  v27 = *(v0 + 248);
  if (!v24)
  {
    v40 = *(v0 + 224);
    v41 = *(v0 + 232);
    v43 = *(v0 + 104);
    v42 = *(v0 + 112);
    v44 = *(v0 + 96);
    *(v0 + 312) = 22;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v45, v46);
    sub_100084054();
    sub_1000888F8();
    (*(v43 + 8))(v42, v44);
    swift_willThrow();
    (*(v41 + 8))(v27, v40);
    goto LABEL_5;
  }

  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 224);
  v31 = *(v29 + 16);
  v32 = sub_10005E12C();
  v33(v32);
  v34 = (*(v29 + 88))(v28, v30);
  if (v34 == enum case for DisplayRepresentation.ResolvingRequest.subtitle(_:))
  {
    (*(*(v0 + 232) + 96))(*(v0 + 240), *(v0 + 224));
    v35 = async function pointer to WFContentItem.asyncDisplaySubtitle()[1];
    swift_task_alloc();
    sub_100012480();
    *(v0 + 296) = v36;
    *v36 = v37;
    v36[1] = sub_1000727C4;
    v38 = *(v0 + 64);
    sub_100084F00();
    sub_100084C34();

    return WFContentItem.asyncDisplaySubtitle()();
  }

  if (v34 == enum case for DisplayRepresentation.ResolvingRequest.altText(_:))
  {
    (*(*(v0 + 232) + 96))(*(v0 + 240), *(v0 + 224));
    v47 = async function pointer to WFContentItem.asyncDisplayAltText()[1];
    swift_task_alloc();
    sub_100012480();
    *(v0 + 304) = v48;
    *v48 = v49;
    v48[1] = sub_100072C20;
    v50 = *(v0 + 32);
    sub_100084F00();
    sub_100084C34();

    return WFContentItem.asyncDisplayAltText()();
  }

  if (v34 != enum case for DisplayRepresentation.ResolvingRequest.image(_:))
  {
    v70 = *(v0 + 240);
    v71 = *(v0 + 248);
    v73 = *(v0 + 224);
    v72 = *(v0 + 232);
    v75 = *(v0 + 104);
    v74 = *(v0 + 112);
    v76 = *(v0 + 96);
    *(v0 + 316) = 22;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v77, v78);
    sub_100084034();
    sub_1000888F8();
    v79 = sub_100083E84();
    v80(v79);
    swift_willThrow();

    v81 = *(v72 + 8);
    v82 = sub_100084AD0();
    v81(v82);
    v83 = sub_10005DC58();
    v81(v83);
    goto LABEL_5;
  }

  v52 = *(v0 + 240);
  v53 = *(v0 + 224);
  v55 = *(v0 + 184);
  v54 = *(v0 + 192);
  v56 = *(v0 + 176);
  v57 = *(v0 + 136);
  v58 = sub_1000846F8(*(v0 + 232));
  v59(v58);
  v60 = *(sub_100008DC0(&qword_1000A69F0, &qword_10008DE20) + 48);
  v61 = *(v55 + 32);
  v62 = sub_100084C08();
  v63(v62);
  sub_1000898B8();
  sub_10008A108();
  v64 = async function pointer to WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)[1];
  swift_task_alloc();
  sub_100012480();
  *(v0 + 288) = v65;
  *v65 = v66;
  v65[1] = sub_100072294;
  v68 = *(v0 + 136);
  v67 = *(v0 + 144);
  sub_100084C34();

  return WFContentItem.asyncDisplayImage(with:displayRepresentationConfig:)();
}

uint64_t sub_100072294()
{
  sub_100012604();
  sub_100012474();
  v2 = v1[36];
  v3 = v1[17];
  v4 = v1[16];
  v5 = v1[15];
  v6 = *v0;
  sub_10001237C();
  *v7 = v6;

  v8 = *(v4 + 8);
  v9 = sub_100012498();
  v10(v9);
  v11 = sub_10005CFA0();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1000723D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v23 = *(v22 + 144);
  sub_10005DC64(v23, 1, *(v22 + 152));
  if (v24)
  {
    v25 = *(v22 + 272);
    v107 = *(v22 + 256);
    v109 = *(v22 + 264);
    v26 = *(v22 + 232);
    a12 = *(v22 + 224);
    a13 = *(v22 + 248);
    v27 = *(v22 + 192);
    v103 = *(v22 + 200);
    v105 = *(v22 + 240);
    v29 = *(v22 + 176);
    v28 = *(v22 + 184);
    v31 = *(v22 + 104);
    v30 = *(v22 + 112);
    v32 = *(v22 + 96);
    sub_100017954(v23, &unk_1000A6270, qword_10008D5F8);
    *(v22 + 328) = 22;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v33, v34);
    sub_1000841A4();
    sub_100088958();
    sub_1000888F8();
    v35 = sub_100085324();
    v36(v35);
    v111 = v30;
    swift_willThrow();

    v37 = *(v28 + 8);
    v38 = sub_10005F62C();
    v39(v38);
    (*(v26 + 8))(a13, a12);
LABEL_8:
    v107(v105, v103);
    sub_100083F9C();

    sub_10001248C();
    sub_1000843E8();

    return v68(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, v103, v105, v107, v109, v111, a19, a20, a21, a22);
  }

  v40 = *(v22 + 168);
  v41 = *(*(v22 + 160) + 32);
  sub_100084BB0();
  v42();
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v43 = *(v22 + 280);
  v44 = *(v22 + 168);
  v45 = *(v22 + 152);
  sub_10008388C(&qword_1000A69F8, &type metadata accessor for DisplayRepresentation.Image);
  sub_100084074();
  v46 = sub_100088948();
  v48 = *(v22 + 272);
  if (v43)
  {
    v107 = *(v22 + 256);
    v109 = *(v22 + 264);
    v49 = *(v22 + 248);
    v51 = *(v22 + 224);
    v50 = *(v22 + 232);
    v52 = *(v22 + 192);
    v103 = *(v22 + 200);
    v105 = *(v22 + 240);
    v111 = v43;
    v54 = *(v22 + 176);
    v53 = *(v22 + 184);
    v55 = *(v22 + 160);
    v56 = *(v22 + 168);
    v57 = *(v22 + 152);

    v58 = *(v55 + 8);
    v59 = sub_10005E44C();
    v60(v59);
    v61 = *(v53 + 8);
    v62 = sub_10005E51C();
    v63(v62);
    v64 = *(v50 + 8);
    v65 = sub_10005E088();
    v66(v65);
    goto LABEL_8;
  }

  v76 = *(v22 + 160);
  v77 = *(v22 + 168);
  v78 = *(v22 + 152);
  v110 = v46;
  v112 = v47;

  v79 = sub_1000840AC();
  v80(v79);
  v81 = *(v22 + 256);
  v82 = *(v22 + 264);
  v84 = *(v22 + 240);
  v83 = *(v22 + 248);
  v86 = *(v22 + 224);
  v85 = *(v22 + 232);
  v87 = *(v22 + 216);
  v88 = *(v22 + 200);
  v98 = *(v22 + 168);
  v99 = *(v22 + 144);
  v100 = *(v22 + 136);
  v101 = *(v22 + 112);
  v102 = *(v22 + 88);
  v104 = *(v22 + 64);
  v106 = *(v22 + 56);
  v108 = *(v22 + 32);
  (*(*(v22 + 184) + 8))(*(v22 + 192), *(v22 + 176));
  (*(v85 + 8))(v83, v86);
  v89 = sub_10005ECA8();
  v81(v89);

  sub_1000843DC();
  sub_1000843E8();

  return v93(v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v104, v106, v108, v110, v112, a19, a20, a21, a22);
}

uint64_t sub_1000727C4()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 296);
  v3 = *v0;
  sub_10001237C();
  *v4 = v3;

  v5 = sub_10005CFA0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000728A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v27 = *(v23 + 64);
  sub_10005DC64(v27, 1, *(v23 + 72));
  if (v28)
  {
    sub_10008491C();
    sub_100017954(v27, &unk_1000A69C0, &unk_10008DE10);
    *(v23 + 324) = 22;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v29, v30);
    sub_1000841A4();
    sub_10008509C();
    sub_1000888F8();
    v31 = sub_100084AEC();
    v32(v31);
    a18 = v22;
    swift_willThrow();

    v33 = *(v25 + 8);
    v34 = sub_10005DC58();
    v35(v34);
    a16(a15, v24);
LABEL_8:
    sub_100083F9C();

    sub_10001248C();
    sub_1000843E8();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v36 = *(v23 + 88);
  v37 = *(*(v23 + 80) + 32);
  sub_100084BB0();
  v38();
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v39 = *(v23 + 280);
  v40 = *(v23 + 88);
  v41 = *(v23 + 72);
  sub_10008388C(&qword_1000A69E8, &type metadata accessor for DisplayRepresentation.Subtitle);
  sub_100084074();
  v42 = sub_100088948();
  if (v39)
  {
    sub_100084EB8();
    v44 = *(v23 + 80);
    v45 = *(v23 + 88);
    v46 = *(v23 + 72);

    v48 = *(v44 + 8);
    v49 = sub_10005E51C();
    v50(v49);
    v51 = v26[1];
    v52 = sub_10005E088();
    v53(v52);
    v54 = sub_10005E494();
    (v25)(v54);
    goto LABEL_8;
  }

  v89 = v42;
  v90 = v43;

  v64 = *(v23 + 256);
  v65 = *(v23 + 264);
  v67 = *(v23 + 240);
  v66 = *(v23 + 248);
  v69 = *(v23 + 224);
  v68 = *(v23 + 232);
  v70 = *(v23 + 216);
  v71 = *(v23 + 200);
  v81 = *(v23 + 192);
  v82 = *(v23 + 168);
  v83 = *(v23 + 144);
  v84 = *(v23 + 136);
  v85 = *(v23 + 112);
  v86 = *(v23 + 64);
  v72 = *(v23 + 56);
  v87 = v72;
  v88 = *(v23 + 32);
  (*(*(v23 + 80) + 8))(*(v23 + 88), *(v23 + 72));
  (*(v68 + 8))(v66, v69);
  v64(v67, v71);

  sub_1000843DC();
  sub_1000843E8();

  return v76(v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, a19, a20, a21, a22);
}

uint64_t sub_100072C20()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 304);
  v3 = *v0;
  sub_10001237C();
  *v4 = v3;

  v5 = sub_10005CFA0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100072D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v27 = *(v23 + 32);
  sub_10005DC64(v27, 1, *(v23 + 40));
  if (v28)
  {
    sub_10008491C();
    sub_100017954(v27, &qword_1000A69B8, &qword_10008DE08);
    *(v23 + 320) = 22;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v29, v30);
    sub_1000841A4();
    sub_10008509C();
    sub_1000888F8();
    v31 = sub_100084AEC();
    v32(v31);
    a18 = v22;
    swift_willThrow();

    v33 = *(v25 + 8);
    v34 = sub_10005DC58();
    v35(v34);
    a16(a15, v24);
LABEL_8:
    sub_100083F9C();

    sub_10001248C();
    sub_1000843E8();

    return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  v36 = *(v23 + 56);
  v37 = *(*(v23 + 48) + 32);
  sub_100084BB0();
  v38();
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v39 = *(v23 + 280);
  v40 = *(v23 + 56);
  v41 = *(v23 + 40);
  sub_10008388C(&qword_1000A69E0, &type metadata accessor for DisplayRepresentation.AltText);
  sub_100084074();
  v42 = sub_100088948();
  if (v39)
  {
    sub_100084EB8();
    v44 = *(v23 + 48);
    v45 = *(v23 + 56);
    v46 = *(v23 + 40);

    v48 = *(v44 + 8);
    v49 = sub_10005E51C();
    v50(v49);
    v51 = v26[1];
    v52 = sub_10005E088();
    v53(v52);
    v54 = sub_10005E494();
    (v25)(v54);
    goto LABEL_8;
  }

  v91 = v42;
  v92 = v43;

  v64 = *(v23 + 256);
  v65 = *(v23 + 264);
  v67 = *(v23 + 240);
  v66 = *(v23 + 248);
  v69 = *(v23 + 224);
  v68 = *(v23 + 232);
  v70 = *(v23 + 216);
  v72 = *(v23 + 192);
  v71 = *(v23 + 200);
  v83 = *(v23 + 168);
  v84 = *(v23 + 144);
  v85 = *(v23 + 136);
  v86 = *(v23 + 112);
  v87 = *(v23 + 88);
  v88 = *(v23 + 56);
  v73 = *(v23 + 64);
  v74 = *(v23 + 40);
  v89 = v73;
  v90 = *(v23 + 32);
  (*(*(v23 + 48) + 8))();
  (*(v68 + 8))(v66, v69);
  v64(v67, v71);

  sub_1000843DC();
  sub_1000843E8();

  return v78(v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, a19, a20, a21, a22);
}

uint64_t sub_100073100(void *a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  v4 = a1;
  v5 = sub_1000889D8();
  v7 = v6;

  v2[3] = v5;
  v2[4] = v7;
  v8 = swift_task_alloc();
  v2[5] = v8;
  *v8 = v2;
  v8[1] = sub_1000731CC;

  return static ToolKitHelper.produceEncodedDisplayRepresentation(for:)();
}

uint64_t sub_1000731CC()
{
  sub_10005EC9C();
  sub_100083C3C();
  sub_10001237C();
  *v4 = v3;
  v5 = v3[5];
  *v4 = *v2;

  sub_100084D58();
  sub_10005ABBC(v3[3], *(v6 + 32));
  if (v1)
  {
    sub_100088968();
    sub_100060454();

    v7 = v0;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v9 = sub_100084074();
    sub_10005ABBC(v9, v10);
    v7 = isa;
  }

  v11 = v3[2];
  v12 = sub_100083E70();
  v13(v12);

  _Block_release(v11);
  sub_1000840DC();

  return v14();
}

uint64_t static ToolKitHelper.resolveDeferredValue(for:encodedResolutionRequest:)()
{
  sub_100012404();
  v0[37] = v1;
  v0[38] = v2;
  v0[35] = v3;
  v0[36] = v4;
  v5 = sub_100089008();
  v0[39] = v5;
  sub_100017A0C(v5);
  v0[40] = v6;
  v8 = *(v7 + 64);
  v0[41] = sub_10005F4D4();
  v9 = sub_10008A1A8();
  v0[42] = v9;
  sub_100017A0C(v9);
  v0[43] = v10;
  v12 = *(v11 + 64);
  v0[44] = sub_10005F4D4();
  v13 = sub_100089918();
  v0[45] = v13;
  sub_100017A0C(v13);
  v0[46] = v14;
  v16 = *(v15 + 64);
  v0[47] = sub_10005F3EC();
  v0[48] = swift_task_alloc();
  v17 = sub_100008DC0(&qword_1000A6A00, &qword_10008DE30);
  sub_10005E3B0(v17);
  v19 = *(v18 + 64);
  v0[49] = sub_10005F4D4();
  v20 = sub_1000890E8();
  v0[50] = v20;
  sub_100017A0C(v20);
  v0[51] = v21;
  v23 = *(v22 + 64);
  v0[52] = sub_10005F3EC();
  v0[53] = swift_task_alloc();
  v24 = sub_100008DC0(&qword_1000A6A08, &qword_10008DE38);
  v0[54] = v24;
  sub_10005E3B0(v24);
  v26 = *(v25 + 64);
  v0[55] = sub_10005F4D4();
  v27 = sub_100008DC0(&qword_1000A6990, &qword_10008DDC8);
  sub_10005E3B0(v27);
  v29 = *(v28 + 64);
  v0[56] = sub_10005F4D4();
  v30 = sub_10008A128();
  v0[57] = v30;
  sub_100017A0C(v30);
  v0[58] = v31;
  v33 = *(v32 + 64);
  v0[59] = sub_10005F3EC();
  v0[60] = swift_task_alloc();
  v34 = sub_100089888();
  v0[61] = v34;
  sub_100017A0C(v34);
  v0[62] = v35;
  v37 = *(v36 + 64);
  v0[63] = sub_10005F3EC();
  v0[64] = swift_task_alloc();
  v38 = sub_10008A6C8();
  v0[65] = v38;
  sub_100017A0C(v38);
  v0[66] = v39;
  v41 = *(v40 + 64);
  v0[67] = sub_10005F4D4();
  v42 = sub_1000897A8();
  v0[68] = v42;
  sub_100017A0C(v42);
  v0[69] = v43;
  v45 = *(v44 + 64);
  v0[70] = sub_10005F3EC();
  v0[71] = swift_task_alloc();
  v0[72] = swift_task_alloc();
  v0[73] = swift_task_alloc();
  v46 = sub_10008A058();
  v0[74] = v46;
  sub_100017A0C(v46);
  v0[75] = v47;
  v49 = *(v48 + 64);
  v0[76] = sub_10005F4D4();
  v50 = sub_100089748();
  v0[77] = v50;
  sub_100017A0C(v50);
  v0[78] = v51;
  v53 = *(v52 + 64);
  v0[79] = sub_10005F3EC();
  v0[80] = swift_task_alloc();
  v54 = sub_10005CFA0();

  return _swift_task_switch(v54, v55, v56);
}

uint64_t sub_100073774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  if (qword_1000A5950 != -1)
  {
    sub_100083974();
    swift_once();
  }

  v25 = v24[80];
  v26 = v24[77];
  v28 = v24[35];
  v27 = v24[36];
  sub_10008388C(&qword_1000A6A10, &type metadata accessor for TypedValue.DeferredValue.Storage);
  sub_10005E494();
  sub_100088918();
  v29 = v24[76];
  v30 = v24[74];
  v32 = v24[37];
  v31 = v24[38];
  sub_100084810();
  sub_10008388C(v33, v34);
  sub_10005E464();
  sub_100088918();
  v35 = v24[78];
  (*(v35 + 16))(v24[79], v24[80], v24[77]);
  v36 = *(v35 + 88);
  v37 = sub_10005E9C0();
  v39 = v38(v37);
  if (v39 == enum case for TypedValue.DeferredValue.Storage.encodedContentItemProperty(_:))
  {
    v40 = v24[79];
    v41 = v24[77];
    v42 = sub_1000846F8(v24[78]);
    v43(v42);
    v24[81] = *v40;
    v24[82] = v40[1];
    v45 = v40[2];
    v44 = v40[3];
    sub_100011D84(0, &qword_1000A69D8, NSKeyedUnarchiver_ptr);
    v24[83] = sub_100011D84(0, &qword_1000A6958, WFContentItem_ptr);
    v46 = sub_10008A628();
    v24[84] = v46;
    v24[85] = 0;
    v83 = v46;
    if (v46)
    {
      swift_getObjCClassFromObject();
      sub_100084AD0();
      v84 = sub_10008A238();

      v85 = sub_100084FD8();
      v87 = [v85 v86];
      v24[86] = v87;

      if (v87)
      {
        v24[2] = v24;
        v24[7] = v24 + 22;
        v24[3] = sub_100073F0C;
        v88 = swift_continuation_init();
        v24[17] = sub_100008DC0(&unk_1000A6A20, &unk_10008DE40);
        v24[10] = _NSConcreteStackBlock;
        sub_1000851D8(COERCE_DOUBLE(1107296256));
        v24[12] = sub_100076024;
        v24[13] = &unk_10009F600;
        v24[14] = v88;
        [v87 getValueForObject:v83 completionHandler:v24 + 10];
        sub_1000843C0();

        return _swift_continuation_await(v89);
      }

      v114 = v24[78];
      a19 = v24[77];
      v124 = v24[80];
      v115 = v24[76];
      v116 = v24[75];
      v117 = v24[74];
      sub_100082850();
      sub_10005ECC0();
      v118 = swift_allocError();
      *v119 = 1;
      swift_willThrow();
      v120 = sub_10005DC4C();
      sub_10005ABBC(v120, v121);

      v68 = v118;
      (*(v116 + 8))(v115, v117);
      (*(v114 + 8))(v124, a19);
    }

    else
    {
      v123 = v24[80];
      v105 = v24[78];
      v106 = v24[77];
      v107 = v24[76];
      v108 = v24[75];
      v109 = v24[74];

      sub_100082850();
      sub_10005ECC0();
      v110 = swift_allocError();
      *v111 = 0;
      swift_willThrow();
      v112 = sub_10005DC4C();
      sub_10005ABBC(v112, v113);
      v68 = v110;
      (*(v108 + 8))(v107, v109);
      (*(v105 + 8))(v123, v106);
    }

    goto LABEL_8;
  }

  if (v39 == enum case for TypedValue.DeferredValue.Storage.actionParameterDefaultValue(_:))
  {
    v47 = v24[79];
    v48 = v24[76];
    v50 = v24[49];
    v49 = v24[50];
    (*(v24[78] + 96))(v47, v24[77]);
    v51 = v47[1];
    v24[90] = v47[2];
    v24[91] = v47[3];

    sub_10008A038();
    v52 = sub_100008E78(v50, 1, v49);
    v53 = v24[49];
    if (v52 == 1)
    {
      v54 = v24[80];
      v55 = v24[78];
      v56 = v24[77];
      v57 = v24[76];
      v58 = v24[75];
      v59 = v24[74];

      sub_100017954(v53, &qword_1000A6A00, &qword_10008DE30);
      sub_100082850();
      sub_10005ECC0();
      v60 = swift_allocError();
      *v61 = 5;
      swift_willThrow();
      v62 = *(v58 + 8);
      v63 = sub_10005E51C();
      v64(v63);
      v65 = *(v55 + 8);
      v66 = sub_10005DC4C();
      v67(v66);
      v68 = v60;
LABEL_8:
      v122 = v68;
      sub_10008458C();
      v69 = v24[73];
      sub_100083DA4();
      v70 = v24[63];
      v71 = v24[64];
      sub_100084188();
      sub_100084D7C();

      sub_10001248C();
      sub_1000843C0();

      return v73(v72, v73, v74, v75, v76, v77, v78, v79, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v122, a21, a22, a23, a24);
    }

    v92 = v24[52];
    v91 = v24[53];
    v93 = v24[51];
    v94 = *(v93 + 32);
    v95 = sub_100084004();
    v96(v95);
    v97 = *(v93 + 16);
    v98 = sub_10005EAE0();
    v99(v98);
    v100 = objc_allocWithZone(sub_100088B28());
    v24[92] = sub_100088AD8();
    v24[93] = [objc_opt_self() sharedRegistry];
    v101 = async function pointer to ToolInvocationBox.createAction(given:fetchingDefaultValues:)[1];
    v102 = swift_task_alloc();
    v24[94] = v102;
    *v102 = v24;
    v102[1] = sub_100074DBC;
    sub_100084664();
    sub_1000843C0();

    return ToolInvocationBox.createAction(given:fetchingDefaultValues:)(v103);
  }

  else
  {
    v81 = v24[77];
    sub_1000843C0();

    return sub_10008AA58();
  }
}

uint64_t sub_100073F0C()
{
  sub_100012404();
  v7 = *v0;
  v1 = *v0;
  sub_10001237C();
  *v2 = v1;
  sub_100012554();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100073FDC()
{
  v170 = v0;
  v1 = *(v0 + 192);
  *(v0 + 208) = *(v0 + 176);
  *(v0 + 224) = v1;
  v2 = *(v0 + 672);
  if (!*(v0 + 232))
  {
    v14 = *(v0 + 608);
    v16 = *(v0 + 496);
    v15 = *(v0 + 504);
    v17 = *(v0 + 488);
    sub_100017954(v0 + 208, &qword_1000A5A20, &qword_10008C9F0);

    sub_10008A028();
    v18 = *(v16 + 88);
    v19 = sub_1000124C8();
    if (v20(v19) != enum case for TypeInstance.optional(_:))
    {
      v95 = *(v0 + 688);
      v96 = *(v0 + 672);
      v97 = *(v0 + 656);
      v98 = *(v0 + 648);
      v99 = *(v0 + 624);
      v161 = *(v0 + 616);
      v164 = *(v0 + 640);
      v100 = *(v0 + 608);
      v101 = *(v0 + 600);
      v102 = *(v0 + 592);
      (*(*(v0 + 496) + 8))(*(v0 + 504), *(v0 + 488));
      sub_100082850();
      sub_10005ECC0();
      swift_allocError();
      sub_100085050(v103, 2);

      v104 = sub_10005EC4C();
      sub_10005ABBC(v104, v105);

      v106 = *(v101 + 8);
      v107 = sub_10005F62C();
      v108(v107);
      (*(v99 + 8))(v164, v161);
      goto LABEL_36;
    }

    v22 = *(v0 + 496);
    v21 = *(v0 + 504);
    v23 = *(v0 + 488);
    v25 = *(v0 + 432);
    v24 = *(v0 + 440);
    v26 = *(v22 + 96);
    v27 = sub_100012498();
    v28(v27);
    v29 = *v21;
    swift_projectBox();
    sub_100083834();
    sub_100017954(v24 + *(v25 + 48), &qword_1000A6520, &unk_10008D910);
    v30 = *(v22 + 8);
    v31 = sub_10005EAE0();
    v32(v31);

    if (qword_1000A5958 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

  sub_10000A6AC((v0 + 208), (v0 + 144));

  v3 = [objc_allocWithZone(WFContentCollection) init];
  *(v0 + 696) = v3;
  sub_10000A650(v0 + 144, v0 + 240);
  sub_100008DC0(&unk_1000A6A30, &qword_10008DE50);
  if (!swift_dynamicCast())
  {
    v12 = *(v0 + 168);
    sub_10005BE98((v0 + 144), v12);
    v78 = sub_10008AA48();
    swift_unknownObjectRetain();
    objc_opt_self();
    v79 = swift_dynamicCastObjCClass();
    v80 = objc_opt_self();
    if (v79)
    {
      v81 = [v80 itemWithFile:v79];
      swift_unknownObjectRelease_n();
      if (!v81)
      {
LABEL_25:
        v82 = *(v0 + 688);
        v83 = *(v0 + 672);
        v84 = *(v0 + 656);
        v85 = *(v0 + 648);
        sub_100084F9C();
        v86 = *(v0 + 608);
        v87 = *(v0 + 600);
        v88 = *(v0 + 592);
        sub_100082850();
        sub_10005ECC0();
        swift_allocError();
        sub_100085050(v89, 3);

        v90 = sub_10005DEB4();
        sub_10005ABBC(v90, v91);

        v92 = *(v87 + 8);
        v93 = sub_10005E44C();
        v94(v93);
        goto LABEL_35;
      }
    }

    else
    {
      v81 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (!v81)
      {
        v12 = *(v0 + 664);
        ObjectType = swift_getObjectType();
        v167[0] = v78;
        v109 = sub_10006ED64(v167);
        if (!v109)
        {
          goto LABEL_25;
        }

        v81 = v109;
      }
    }

    v110 = sub_100084FD8();
    [v110 v111];

    goto LABEL_31;
  }

  v4 = *(v0 + 272);
  v5 = sub_10001BEBC(v4);
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_10008A928();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v8 = *(v4 + 8 * v7 + 32);
        swift_unknownObjectRetain();
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      swift_unknownObjectRetain();
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      v11 = objc_opt_self();
      if (v10)
      {
        v12 = [v11 itemWithFile:v10];
        swift_unknownObjectRelease();
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v12 = swift_dynamicCastObjCClass();
        if (!v12)
        {
          v13 = *(v0 + 664);
          swift_unknownObjectRelease();
          ObjectType = swift_getObjectType();
          v167[0] = v8;
          swift_unknownObjectRetain();
          v12 = sub_10006ED64(v167);
          if (!v12)
          {
LABEL_34:
            v130 = *(v0 + 688);
            v131 = *(v0 + 672);
            v132 = *(v0 + 656);
            v133 = *(v0 + 648);
            sub_100084F9C();
            v155 = *(v0 + 608);
            v134 = *(v0 + 600);
            v135 = *(v0 + 592);

            sub_100082850();
            sub_10005ECC0();
            swift_allocError();
            sub_100085050(v136, 4);

            v137 = sub_10005F5E8();
            sub_10005ABBC(v137, v138);
            swift_unknownObjectRelease();

            (*(v134 + 8))(v155, v135);
LABEL_35:
            v12[1]();
            sub_10005B1BC((v0 + 144));
LABEL_36:
            v139 = *(v0 + 640);
            v140 = *(v0 + 632);
            v141 = *(v0 + 608);
            sub_1000839F8();

            sub_10001248C();
            sub_100085368();

            __asm { BRAA            X1, X16 }
          }
        }
      }

      [v3 addItem:v12];

      swift_unknownObjectRelease();
      ++v7;
      if (v9 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    sub_100083988();
LABEL_19:
    v33 = *(v0 + 680);
    v34 = *(v0 + 568);
    v35 = *(v0 + 552);
    v36 = *(v0 + 544);
    v37 = sub_100089768();
    v38 = swift_allocBox();
    sub_10005D92C(v37);
    (*(v39 + 104))();
    *v34 = v38;
    (*(v35 + 104))(v34, enum case for TypedValue.primitive(_:), v36);
    sub_100083A6C();
    sub_10008388C(v40, v41);
    sub_100084074();
    v42 = sub_100088948();
    v153 = v43;
    v154 = v42;
    v44 = v33;
    v45 = *(v0 + 672);
    v46 = *(v0 + 656);
    v47 = *(v0 + 648);
    v48 = *(v0 + 624);
    v162 = *(v0 + 616);
    v165 = *(v0 + 640);
    v49 = *(v0 + 600);
    v157 = *(v0 + 592);
    v159 = *(v0 + 608);
    v50 = *(v0 + 568);
    v51 = *(v0 + 552);
    v52 = *(v0 + 544);

    sub_10005ABBC(v47, v46);
    v53 = *(v51 + 8);
    v54 = sub_10005E088();
    v55(v54);
    v56 = (*(v49 + 8))(v159, v157);
    v64 = sub_100084F78(v56, v57, v58, v59, v60, v61, v62, v63, v145, v146, v147, v148, v149, v150, v151, v153, v154, v157, v159, v162, v165);
    v65(v64);
    if (!v44)
    {
      v66 = *(v0 + 640);
      v67 = *(v0 + 632);
      v68 = *(v0 + 608);
      v69 = *(v0 + 584);
      v70 = *(v0 + 576);
      v71 = *(v0 + 568);
      v72 = *(v0 + 560);
      v73 = *(v0 + 536);
      v74 = *(v0 + 504);
      v75 = *(v0 + 512);
      sub_100084188();
      v152 = *(v0 + 392);
      v158 = *(v0 + 384);
      v160 = *(v0 + 376);
      v163 = *(v0 + 352);
      v166 = *(v0 + 328);

      sub_1000843DC();
      sub_100085368();

      __asm { BRAA            X3, X16 }
    }

    goto LABEL_36;
  }

LABEL_16:

LABEL_31:
  v112 = *(v0 + 608);
  v113 = *(v0 + 536);
  v114 = *(v0 + 512);
  v115 = *(v0 + 480);
  v116 = *(v0 + 448);
  sub_10008A028();
  sub_10008A108();
  sub_100088CB8();
  sub_100088CA8();
  v117 = sub_100088C78();
  v118 = sub_100088C68();
  ObjectType = v117;
  v169 = &protocol witness table for DatabaseTypeDefinitionProvider;
  v167[0] = v118;
  sub_1000889B8();
  v119 = sub_100084B28();
  sub_100009158(v119, v120, 1, v121);
  sub_10005DC4C();
  sub_10008A6B8();
  v122 = async function pointer to WFContentCollection.resolve(with:)[1];
  swift_task_alloc();
  sub_100012480();
  *(v0 + 704) = v123;
  *v123 = v124;
  v123[1] = sub_1000749CC;
  v125 = *(v0 + 576);
  v126 = *(v0 + 536);
  sub_100084F00();
  sub_100085368();

  return WFContentCollection.resolve(with:)(v127, v128);
}

uint64_t sub_1000749CC()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 704);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 712) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100074DBC()
{
  sub_100012604();
  v2 = *v1;
  v3 = *v1;
  sub_10001237C();
  *v4 = v3;
  v5 = v2[94];
  v6 = *v1;
  sub_100083D94();
  *v7 = v6;
  v3[95] = v8;
  v3[96] = v0;

  v9 = v2[93];
  if (v0)
  {
    v10 = v3[91];
  }

  else
  {
  }

  sub_100012554();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100074EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  v25 = v24[95];
  v26 = v24[91];
  v27 = v24[90];
  v28 = sub_10008A238();
  v29 = [v25 parameterForKey:v28];
  v24[97] = v29;

  v30 = v24[95];
  if (v29)
  {
    v31 = v24[91];
    v32 = v24[90];
    v33 = sub_10008A238();

    v34 = [v30 parameterStateForKey:v33];
    v24[98] = v34;

    if (v34)
    {
      v24[99] = [objc_opt_self() defaultContext];
      v35 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
      swift_task_alloc();
      sub_100012480();
      v24[100] = v36;
      *v36 = v37;
      v36[1] = sub_10007533C;
      v38 = v24[95];
      v39 = v24[48];
      sub_10005E4A0();
      sub_1000843C0();

      return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v40, v41, v42, v43, v44);
    }

    v59 = v24[41];
    sub_100088F28();
    v60 = sub_100088FF8();
    v61 = sub_10008A5D8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to fetch parameter state", v62, 2u);
      sub_100084DDC();
    }

    v63 = v24[78];
    v90 = v24[77];
    v91 = v24[80];
    v89 = v24[76];
    v64 = v24[75];
    a15 = v24[92];
    a16 = v24[74];
    a13 = v24[95];
    a14 = v24[53];
    v66 = v24[50];
    v65 = v24[51];
    v68 = v24[40];
    v67 = v24[41];
    v69 = v24[39];

    v70 = sub_100084080();
    v71(v70);
    sub_100082850();
    sub_10005ECC0();
    v72 = swift_allocError();
    *v73 = 7;
    v92 = v72;
    swift_willThrow();

    (*(v65 + 8))(a14, v66);
    (*(v64 + 8))(v89, a16);
    (*(v63 + 8))(v91, v90);
  }

  else
  {
    v46 = v24[92];
    v47 = v24[91];
    v48 = v24[78];
    v90 = v24[77];
    v91 = v24[80];
    v89 = v24[76];
    v49 = v24[75];
    v50 = v24[74];
    v51 = v24[53];
    v53 = v24[50];
    v52 = v24[51];

    sub_100082850();
    sub_10005ECC0();
    v54 = swift_allocError();
    *v55 = 6;
    v92 = v54;
    swift_willThrow();

    v56 = *(v52 + 8);
    v57 = sub_10005E44C();
    v58(v57);
    (*(v49 + 8))(v89, v50);
    (*(v48 + 8))(v91, v90);
  }

  v74 = v24[80];
  v75 = v24[79];
  v76 = v24[76];
  v77 = v24[73];
  sub_100083DA4();
  v79 = v24[63];
  v78 = v24[64];
  sub_100084188();
  sub_100084D7C();

  sub_10001248C();
  sub_1000843C0();

  return v81(v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14, a15, a16, v89, v90, v91, v92, a21, a22, a23, a24);
}

uint64_t sub_10007533C()
{
  sub_100012604();
  sub_1000851A8();
  sub_100083D94();
  *v4 = v3;
  v5 = *(v1 + 800);
  *v4 = *v2;
  *(v3 + 808) = v0;

  sub_1000850E4();

  sub_1000840CC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100075454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100012604();
  v15 = v14[98];
  v16 = v14[59];
  v18 = v14[47];
  v17 = v14[48];
  v19 = v14[45];
  v20 = v14[44];
  v21 = sub_100084804(v14[46]);
  v22(v21);
  sub_10008A188();
  ObjectType = swift_getObjectType();
  sub_10008A108();
  v24 = async function pointer to WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)[1];
  swift_task_alloc();
  sub_100012480();
  v14[102] = v27;
  *v27 = v28;
  v27[1] = sub_100075548;
  v29 = v14[98];
  v30 = v14[97];
  v31 = v14[95];
  v32 = v14[70];
  v33 = v14[59];
  v34 = v14[44];

  return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)(v32, v30, v31, v34, v33, ObjectType, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100075548()
{
  sub_100012604();
  sub_1000851A8();
  sub_100083D94();
  *v4 = v3;
  v5 = v1[102];
  *v4 = *v2;
  *(v3 + 824) = v0;

  sub_1000850E4();
  (*(v1[58] + 8))(*(v6 + 472), v1[57]);
  sub_1000840CC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000759C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  v27 = v24[87];
  v28 = v24[86];
  v29 = v24[84];
  v30 = v24[82];
  v31 = v24[81];
  sub_100084C14();
  v50 = v24[74];
  v32 = v24[67];
  v33 = v24[66];
  v34 = v24[65];

  v36 = sub_1000125C0();
  sub_10005ABBC(v36, v37);

  v38 = *(v33 + 8);
  v39 = sub_10005F62C();
  v40(v39);
  (*(v26 + 8))(a19, v50);
  (*(v25 + 8))(a21, a20);
  sub_10005B1BC(v24 + 18);
  v51 = v24[89];
  sub_10008458C();
  sub_1000839F8();

  sub_10001248C();
  sub_1000843C0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, v50, a19, a20, v51, a22, a23, a24);
}

uint64_t sub_100075B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  v25 = *(v24 + 640);
  v26 = *(v24 + 624);
  v27 = *(v24 + 616);
  v28 = *(v24 + 608);
  v29 = *(v24 + 600);
  v30 = *(v24 + 592);
  v31 = *(v24 + 424);
  v32 = *(v24 + 400);
  v33 = *(v24 + 408);

  v34 = sub_100083EC8();
  v35(v34);
  v36 = sub_100084080();
  v37(v36);
  v38 = *(v26 + 8);
  v39 = sub_100012498();
  v40(v39);
  v50 = *(v24 + 768);
  sub_10008458C();
  sub_1000839F8();

  sub_10001248C();
  sub_1000843C0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v50, a22, a23, a24);
}

uint64_t sub_100075CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  v25 = *(v24 + 784);
  v26 = *(v24 + 760);
  v27 = *(v24 + 736);
  v48 = *(v24 + 640);
  v28 = *(v24 + 624);
  v46 = *(v24 + 608);
  v47 = *(v24 + 616);
  v29 = *(v24 + 600);
  v30 = *(v24 + 592);
  v31 = *(v24 + 424);
  v33 = *(v24 + 400);
  v32 = *(v24 + 408);

  swift_unknownObjectRelease();
  v34 = *(v32 + 8);
  v35 = sub_10005E51C();
  v36(v35);
  (*(v29 + 8))(v46, v30);
  (*(v28 + 8))(v48, v47);
  v49 = *(v24 + 808);
  sub_10008458C();
  sub_1000839F8();

  sub_10001248C();
  sub_1000843C0();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v46, v47, v49, a22, a23, a24);
}

uint64_t sub_100075E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  v50 = v24[98];
  v27 = v24[97];
  v28 = v24[95];
  v29 = v24[92];
  sub_100084C14();
  v52 = v24[53];
  v53 = v24[74];
  v30 = v24[51];
  v51 = v24[50];
  v31 = v24[46];
  v48 = v24[45];
  v49 = v24[48];
  v33 = v24[43];
  v32 = v24[44];
  v34 = v24[42];

  swift_unknownObjectRelease();
  v36 = *(v33 + 8);
  v37 = sub_100012498();
  v38(v37);
  (*(v31 + 8))(v49, v48);
  (*(v30 + 8))(v52, v51);
  (*(v26 + 8))(a19, v53);
  (*(v25 + 8))(a21, a20);
  v54 = v24[103];
  sub_10008458C();
  sub_1000839F8();

  sub_10001248C();
  sub_1000843C0();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, v48, v49, v50, v51, v52, v53, a19, a20, v54, a22, a23, a24);
}

uint64_t sub_100076024(uint64_t a1, uint64_t a2)
{
  v3 = *sub_10005BE98((a1 + 32), *(a1 + 56));
  if (a2)
  {
    *(&v8 + 1) = swift_getObjectType();
    *&v7 = a2;
    sub_10000A6AC(&v7, &v5);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  swift_unknownObjectRetain();
  return sub_10006ED40(v3, &v7);
}

uint64_t sub_1000760C4(void *a1, void *a2, void *aBlock)
{
  v3[2] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = sub_1000889D8();
  v10 = v9;

  v3[3] = v8;
  v3[4] = v10;
  v11 = sub_1000889D8();
  v13 = v12;

  v3[5] = v11;
  v3[6] = v13;
  v14 = swift_task_alloc();
  v3[7] = v14;
  *v14 = v3;
  v14[1] = sub_1000761C4;

  return static ToolKitHelper.resolveDeferredValue(for:encodedResolutionRequest:)();
}

uint64_t sub_1000761C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  sub_100083C3C();
  sub_10001237C();
  *v14 = v13;
  v15 = v13[7];
  *v14 = *v12;

  sub_100084D58();
  v17 = v13[4];
  v18 = v13[3];
  sub_10005ABBC(v13[5], *(v16 + 48));
  sub_10005ABBC(v18, v17);
  if (v11)
  {
    sub_100088968();
    sub_100060454();

    v19 = v10;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v21 = sub_100084074();
    sub_10005ABBC(v21, v22);
    v19 = isa;
  }

  v23 = v13[2];
  v24 = sub_100083E70();
  v25(v24);

  _Block_release(v23);
  sub_1000840DC();
  sub_1000853F8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t static ToolKitHelper.fetchToolInvocationSummary(for:fetchingDefaultValues:with:runSource:)()
{
  sub_100012604();
  v3 = v2;
  sub_100085264();
  v1[27] = v4;
  v1[28] = v0;
  v1[25] = v5;
  v1[26] = v6;
  v1[24] = v7;
  v8 = sub_100089098();
  v1[29] = v8;
  sub_100017A0C(v8);
  v1[30] = v9;
  v11 = *(v10 + 64);
  v1[31] = sub_10005F4D4();
  v12 = sub_100008DC0(&qword_1000A6898, &qword_10008DE60);
  sub_10005E3B0(v12);
  v14 = *(v13 + 64);
  v1[32] = sub_10005F4D4();
  v15 = sub_1000891F8();
  v1[33] = v15;
  sub_100017A0C(v15);
  v1[34] = v16;
  v18 = *(v17 + 64);
  v1[35] = sub_10005F3EC();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v19 = sub_100008DC0(&qword_1000A6A40, &qword_10008DE68);
  sub_10005E3B0(v19);
  v21 = *(v20 + 64);
  v1[38] = sub_10005F4D4();
  v22 = sub_100089208();
  v1[39] = v22;
  sub_100017A0C(v22);
  v1[40] = v23;
  v25 = *(v24 + 64);
  v1[41] = sub_10005F3EC();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v26 = sub_100089B48();
  v1[49] = v26;
  sub_100017A0C(v26);
  v1[50] = v27;
  v29 = *(v28 + 64);
  v1[51] = sub_10005F4D4();
  v30 = sub_1000890E8();
  v1[52] = v30;
  sub_100017A0C(v30);
  v1[53] = v31;
  v33 = *(v32 + 64);
  v1[54] = sub_10005F3EC();
  v1[55] = swift_task_alloc();
  v34 = sub_1000897A8();
  v1[56] = v34;
  sub_100017A0C(v34);
  v1[57] = v35;
  v37 = *(v36 + 64);
  v1[58] = sub_10005F4D4();
  v38 = sub_100089248();
  v1[59] = v38;
  sub_100017A0C(v38);
  v1[60] = v39;
  v41 = *(v40 + 64);
  v1[61] = sub_10005F3EC();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v42 = swift_task_alloc();
  v1[64] = v42;
  *v42 = v1;
  v42[1] = sub_100076704;
  v43 = sub_10005EAE0();

  return static ToolKitHelper.createAction(encodedToolInvocation:fetchingDefaultValues:)(v43, v44, v3);
}

uint64_t sub_100076704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  sub_100012474();
  v27 = v26;
  sub_100083D94();
  *v28 = v27;
  v30 = *(v29 + 512);
  *v28 = *v25;
  v27[65] = v31;
  v27[66] = v24;

  if (v24)
  {
    v33 = v27[62];
    v32 = v27[63];
    v34 = v27[61];
    v35 = v27[58];
    v37 = v27[54];
    v36 = v27[55];
    v38 = v27[51];
    v39 = v27[48];
    v55 = v27[47];
    v56 = v27[46];
    v57 = v27[45];
    v58 = v27[44];
    v59 = v27[43];
    v60 = v27[42];
    v61 = v27[41];
    v62 = v27[38];
    v63 = v27[37];
    v64 = v27[36];
    v65 = v27[35];
    v41 = v27 + 31;
    v40 = v27[31];
    v66 = v41[1];

    sub_10001248C();
    sub_1000843C0();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, a22, a23, a24);
  }

  else
  {
    sub_100012554();
    sub_1000843C0();

    return _swift_task_switch(v51, v52, v53);
  }
}

uint64_t sub_100076920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1000847D0();
  sub_100084AC4();
  v25 = v24[66];
  v26 = v24[24];
  v27 = v24[25];
  sub_100088B28();
  v28 = sub_1000125C0();
  sub_10005AB50(v28, v29);
  sub_1000125C0();
  v24[67] = sub_100088AE8();
  v24[68] = v25;
  v30 = v24[65];
  if (v25)
  {

    v32 = v24[62];
    v31 = v24[63];
    v33 = v24[61];
    v34 = v24[58];
    v36 = v24[54];
    v35 = v24[55];
    v37 = v24[51];
    v39 = v24[47];
    v38 = v24[48];
    v63 = v24[46];
    v64 = v24[45];
    v65 = v24[44];
    v66 = v24[43];
    v67 = v24[42];
    v68 = v24[41];
    v69 = v24[38];
    v70 = v24[37];
    v71 = v24[36];
    v72 = v24[35];
    v73 = v24[32];
    v74 = v24[31];

    sub_10001248C();
    sub_1000843C0();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, a21, a22, a23, a24);
  }

  v49 = [v30 identifier];
  v50 = sub_10008A268();
  v52 = v51;

  if (v50 == 0xD00000000000001FLL && 0x800000010008EE40 == v52)
  {
  }

  else
  {
    v54 = sub_10008AA68();

    if ((v54 & 1) == 0)
    {
      v55 = v24[65];
      v24[2] = v24;
      v24[7] = v24 + 18;
      v24[3] = sub_100076FC8;
      v56 = swift_continuation_init();
      v24[17] = sub_100008DC0(&qword_1000A6A48, &unk_10008DE70);
      v24[10] = _NSConcreteStackBlock;
      sub_1000851D8(COERCE_DOUBLE(1107296256));
      v24[12] = sub_100083940;
      v24[13] = &unk_10009F628;
      v24[14] = v56;
      [v55 updateParameterSummaryIfNeeded:v24 + 10];
      sub_1000843C0();

      return _swift_continuation_await(v57);
    }
  }

  v24[69] = sub_100011D84(0, &qword_1000A6A58, WFRunWorkflowAction_ptr);
  sub_10008A3B8();
  v24[70] = sub_10008A3A8();
  sub_10005D9B8();
  sub_10008A388();
  sub_1000843C0();

  return _swift_task_switch(v59, v60, v61);
}

uint64_t sub_100076C90()
{
  sub_100012604();
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[67];
  v4 = v0[63];

  sub_10008A6E8();
  v5 = sub_10005CFA0();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100076FC8()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 568) = *(v3 + 48);
  sub_100012554();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100077A20()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 640);
  *v3 = *v1;
  *(v2 + 648) = v6;
  *(v2 + 656) = v0;

  if (v0)
  {
  }

  sub_100012554();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t *sub_100079DA0(uint64_t a1, void *a2, void *a3)
{
  result = sub_10005BE98((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;
    return sub_10006CDB0();
  }

  else if (a2)
  {
    return sub_10006ED1C(*result, a2, &swift_continuation_throwingResume);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100079E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100008DC0(&qword_1000A6C50, &qword_10008E2E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v12 = sub_1000891F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v43 - v18;
  sub_10007EBE4(a1, a2, a3);
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v43 = v17;
      v44 = v11;
      v45 = a4;
      v46 = _swiftEmptyArrayStorage;
      sub_100081E30(0, v22, 0);
      v23 = v46;
      v24 = (v21 + 40);
      do
      {
        v26 = *(v24 - 1);
        v25 = *v24;

        sub_1000891E8();
        v46 = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_100081E30(v27 > 1, v28 + 1, 1);
          v23 = v46;
        }

        *(v23 + 16) = v28 + 1;
        v29 = v23 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v28;
        v30 = *(v13 + 32);
        v30(v29, v19, v12);
        v24 += 2;
        --v22;
      }

      while (v22);

      if (*(v23 + 16) <= 1uLL)
      {
        v35 = v44;
        sub_100063614(v23, &type metadata accessor for ToolInvocationSummary.ParameterSummary.Value, v44);

        v36 = sub_100008E78(v35, 1, v12);
        v31 = v45;
        if (v36 == 1)
        {
          sub_100017954(v35, &qword_1000A6C50, &qword_10008E2E8);
          v37 = sub_100089208();
          v38 = v31;
          v39 = 1;
          return sub_100009158(v38, v39, 1, v37);
        }

        v40 = v43;
        v30(v43, v35, v12);
        v30(v31, v40, v12);
        v32 = &enum case for ToolInvocationSummary.ParameterSummary.value(_:);
      }

      else
      {
        v31 = v45;
        *v45 = v23;
        v32 = &enum case for ToolInvocationSummary.ParameterSummary.values(_:);
      }

      v41 = *v32;
      v42 = sub_100089208();
      (*(*(v42 - 8) + 104))(v31, v41, v42);
      v38 = v31;
      v39 = 0;
      v37 = v42;
      return sub_100009158(v38, v39, 1, v37);
    }
  }

  v33 = sub_100089208();

  return sub_100009158(a4, 1, 1, v33);
}

uint64_t sub_10007A27C(void *a1, int a2, uint64_t a3, void *a4, void *aBlock)
{
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = _Block_copy(aBlock);
  v8 = a4;
  v9 = a1;
  swift_unknownObjectRetain();
  v10 = sub_1000889D8();
  v12 = v11;

  v5[5] = v10;
  v5[6] = v12;
  swift_getObjCClassMetadata();
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_10007A394;

  return static ToolKitHelper.fetchToolInvocationSummary(for:fetchingDefaultValues:with:runSource:)();
}

uint64_t sub_10007A394()
{
  sub_100060400();
  sub_100083C3C();
  sub_10001237C();
  *v3 = v2;
  v4 = v2[7];
  v5 = v2[3];
  v6 = v2[2];
  *v3 = *v1;

  swift_unknownObjectRelease();

  sub_100084D58();
  sub_10005ABBC(v2[5], *(v7 + 48));
  if (v0)
  {
    sub_100088968();
    sub_100084DA8();

    v8 = v1;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v10 = sub_100084074();
    sub_10005ABBC(v10, v11);
    v8 = isa;
  }

  v12 = v2[4];
  v13 = sub_100083E70();
  v14(v13);

  _Block_release(v12);
  sub_1000840DC();

  return v15();
}

uint64_t static ToolKitHelper.transformAction(for:queue:)()
{
  sub_100012404();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_100089008();
  v0[4] = v3;
  sub_100017A0C(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_10005F3EC();
  v0[7] = swift_task_alloc();
  v7 = sub_100088908();
  v0[8] = v7;
  sub_100017A0C(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_10005F4D4();
  v11 = sub_100089BF8();
  v0[11] = v11;
  sub_100017A0C(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = sub_10005F3EC();
  v0[14] = swift_task_alloc();
  v15 = sub_1000890E8();
  v0[15] = v15;
  sub_100017A0C(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v0[17] = sub_10005F3EC();
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v19 = sub_100089D08();
  v0[20] = v19;
  sub_100017A0C(v19);
  v0[21] = v20;
  v22 = *(v21 + 64);
  v0[22] = sub_10005F4D4();
  v23 = sub_100089D28();
  v0[23] = v23;
  sub_100017A0C(v23);
  v0[24] = v24;
  v26 = *(v25 + 64);
  v0[25] = sub_10005F4D4();
  v27 = sub_10005CFA0();

  return _swift_task_switch(v27, v28, v29);
}

uint64_t sub_10007A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  v19 = *(v18 + 200);
  v20 = *(v18 + 184);
  v22 = *(v18 + 16);
  v21 = *(v18 + 24);
  v23 = sub_100088938();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  sub_100088928();
  sub_10008388C(&qword_1000A6A60, &type metadata accessor for TransformableAction);
  sub_10005E494();
  sub_100088918();
  v26 = *(v18 + 200);
  v28 = *(v18 + 168);
  v27 = *(v18 + 176);
  v29 = *(v18 + 160);

  sub_100089D18();
  v30 = *(v28 + 88);
  v31 = sub_10005EDA0();
  v33 = v32(v31);
  if (v33 == enum case for TransformableAction.Type.appIntent(_:))
  {
    v34 = *(v18 + 176);
    v35 = *(v18 + 160);
    v36 = sub_1000846F8(*(v18 + 168));
    v37(v36);
    *(v18 + 208) = *v34;
    *(v18 + 216) = v34[1];
    v39 = v34[2];
    v38 = v34[3];
    sub_100011D84(0, &qword_1000A69D8, NSKeyedUnarchiver_ptr);
    sub_100011D84(0, &qword_1000A6A78, LNAction_ptr);
    v40 = sub_10008A628();
    *(v18 + 224) = v40;
    v66 = v40;
    if (v40)
    {
      sub_100089038();
      sub_100089018();
      *(v18 + 232) = sub_100089028();
      v86 = *(v18 + 112);
      v87 = *(v18 + 88);
      v88 = *(v18 + 96);

      v89 = *(v88 + 104);
      v90 = sub_100084FD8();
      v91(v90);
      v92 = async function pointer to ToolInvocation.init(action:bundleIdentifier:device:database:)[1];
      v66;

      swift_task_alloc();
      sub_100012480();
      *(v18 + 240) = v93;
      *v93 = v94;
      sub_100085188(v93);
      v95 = *(v18 + 112);
LABEL_21:
      sub_10005F3D0();

      return ToolInvocation.init(action:bundleIdentifier:device:database:)(v96, v97, v98, v99, v100, v101, v102, v103, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v77 = *(v18 + 192);
    a12 = *(v18 + 200);
    v78 = *(v18 + 184);
    v80 = *(v18 + 72);
    v79 = *(v18 + 80);
    v81 = *(v18 + 64);

    *(v18 + 360) = 22;
    sub_100080024(_swiftEmptyArrayStorage);
    sub_100083944();
    sub_10008388C(v82, v83);
    sub_1000841A4();
    sub_100088958();
    sub_1000888F8();
    (*(v80 + 8))(v79, v81);
    sub_100085084();
    v84 = sub_10005E088();
    sub_10005ABBC(v84, v85);
    (*(v77 + 8))(a12, v78);
    goto LABEL_5;
  }

  if (v33 == enum case for TransformableAction.Type.siriKitIntent(_:))
  {
    v41 = *(v18 + 176);
    v42 = *(v18 + 160);
    v43 = sub_1000846F8(*(v18 + 168));
    v44(v43);
    *(v18 + 256) = *v41;
    *(v18 + 264) = v41[1];
    sub_100011D84(0, &qword_1000A69D8, NSKeyedUnarchiver_ptr);
    sub_100011D84(0, &qword_1000A6A68, INIntent_ptr);
    v67 = sub_10008A628();
    v68 = INTypedIntentWithIntent();
    *(v18 + 272) = v68;

    if (v68)
    {
      objc_opt_self();
      v69 = swift_dynamicCastObjCClass();
      if (v69)
      {
        v70 = v69;
        v71 = v68;
        v72 = [v70 linkAction];
        *(v18 + 280) = v72;
        if (v72)
        {
          v73 = v72;
          sub_10005AE98(v70, &selRef_appIntentIdentifier);
          if (v74 || (sub_10005AE98(v71, &selRef_extensionBundleId), v75) || (sub_10005AE98(v71, &selRef_launchId), v76))
          {
            sub_100089038();
            sub_100089018();
            *(v18 + 288) = sub_100089028();
            v155 = *(v18 + 96);
            v154 = *(v18 + 104);
            v156 = *(v18 + 88);

            v157 = *(v155 + 104);
            v158 = sub_100084FD8();
            v159(v158);
            v160 = async function pointer to ToolInvocation.init(action:bundleIdentifier:device:database:)[1];
            v73;

            swift_task_alloc();
            sub_100012480();
            *(v18 + 296) = v161;
            *v161 = v162;
            v161[1] = sub_10007B6EC;
            v163 = *(v18 + 144);
            v164 = *(v18 + 104);
            goto LABEL_21;
          }

          v177 = *(v18 + 56);

          sub_100088F28();
          v178 = sub_100088FF8();
          v179 = sub_10008A5D8();
          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            *v180 = 0;
            _os_log_impl(&_mh_execute_header, v178, v179, "Could not find bundle identifier on intent", v180, 2u);
            sub_100084DDC();
          }

          a10 = *(v18 + 192);
          a11 = *(v18 + 184);
          a12 = *(v18 + 200);
          v181 = *(v18 + 80);
          a13 = *(v18 + 72);
          v182 = *(v18 + 56);
          v183 = *(v18 + 64);
          v184 = v178;
          v186 = *(v18 + 32);
          v185 = *(v18 + 40);

          v187 = *(v185 + 8);
          v188 = sub_1000851CC();
          v189(v188);
          *(v18 + 356) = 22;
          sub_100080024(_swiftEmptyArrayStorage);
          sub_100083944();
          sub_10008388C(v190, v191);
          sub_100084034();
          sub_1000888F8();
          v192 = *(a13 + 8);
          v193 = sub_100084828();
          v194(v193);
          sub_100085084();

          v195 = sub_100084074();
          sub_10005ABBC(v195, v196);

          (*(a10 + 8))(a12, a11);
          goto LABEL_5;
        }
      }

      v118 = [objc_opt_self() toolKitRegistry];
      v119 = [v118 replacementActionForDonatedIntent:v68];
      *(v18 + 312) = v119;

      if (v119)
      {
        v120 = [v119 serializedParametersForDonatedIntent:v68 allowDroppingUnconfigurableValues:1];
        if (v120)
        {
          v121 = v120;
          v122 = sub_10008A1C8();

          v123 = sub_10007C078(v122);

          if (v123)
          {
            v124 = sub_10008260C(v123, v119);
            *(v18 + 320) = v124;
            v125 = v124;
            sub_100084F18();
            swift_task_alloc();
            sub_100012480();
            *(v18 + 328) = v126;
            *v126 = v127;
            v126[1] = sub_10007BA3C;
            v128 = *(v18 + 136);
            sub_10005F3D0();

            return ToolInvocation.init(wfAction:)();
          }
        }

        v130 = *(v18 + 48);
        sub_100088F28();
        v131 = v68;
        v132 = sub_100088FF8();
        v133 = sub_10008A5D8();

        v134 = os_log_type_enabled(v132, v133);
        v135 = *(v18 + 40);
        a12 = v131;
        a13 = *(v18 + 48);
        v136 = *(v18 + 32);
        if (v134)
        {
          v137 = swift_slowAlloc();
          a10 = swift_slowAlloc();
          a14 = a10;
          *v137 = 136315138;
          v138 = [v131 _className];
          sub_10008A268();
          HIDWORD(a9) = v133;

          v139 = sub_10005F62C();
          v142 = sub_100080D2C(v139, v140, v141);

          *(v137 + 4) = v142;
          _os_log_impl(&_mh_execute_header, v132, v133, "Could not create filled action %s", v137, 0xCu);
          sub_10005B1BC(a10);
          sub_100084DDC();
          sub_100084DDC();
        }

        (*(v135 + 8))(a13, v136);
        v165 = *(v18 + 192);
        a11 = *(v18 + 200);
        v166 = *(v18 + 184);
        v168 = *(v18 + 72);
        v167 = *(v18 + 80);
        v169 = *(v18 + 64);
        *(v18 + 352) = 22;
        sub_100080024(_swiftEmptyArrayStorage);
        sub_100083944();
        sub_10008388C(v170, v171);
        sub_1000841A4();
        sub_10008509C();
        sub_1000888F8();
        v172 = *(v168 + 8);
        v173 = sub_10005E98C();
        v174(v173);
        sub_100085084();
        v175 = sub_100084074();
        sub_10005ABBC(v175, v176);

        v116 = *(v165 + 8);
        v117 = a11;
        v153 = v166;
LABEL_37:
        v116(v117, v153);
LABEL_5:
        v45 = *(v18 + 200);
        v46 = *(v18 + 176);
        v48 = *(v18 + 144);
        v47 = *(v18 + 152);
        v49 = *(v18 + 136);
        v51 = *(v18 + 104);
        v50 = *(v18 + 112);
        v52 = *(v18 + 80);
        v53 = *(v18 + 48);
        v54 = *(v18 + 56);

        sub_10001248C();
        sub_10005F3D0();

        return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      v143 = *(v18 + 192);
      a12 = *(v18 + 200);
      v106 = *(v18 + 184);
      v145 = *(v18 + 72);
      v144 = *(v18 + 80);
      v146 = *(v18 + 64);
      *(v18 + 348) = 22;
      sub_100080024(_swiftEmptyArrayStorage);
      sub_100083944();
      sub_10008388C(v147, v148);
      sub_1000841A4();
      sub_100088958();
      sub_1000888F8();
      v149 = sub_100085324();
      v150(v149);
      sub_100085084();
      v151 = sub_100084074();
      sub_10005ABBC(v151, v152);

      v116 = *(v143 + 8);
      v117 = a12;
    }

    else
    {
      v104 = *(v18 + 192);
      v105 = *(v18 + 200);
      v106 = *(v18 + 184);
      v108 = *(v18 + 72);
      v107 = *(v18 + 80);
      v109 = *(v18 + 64);
      *(v18 + 344) = 22;
      sub_100080024(_swiftEmptyArrayStorage);
      sub_100083944();
      sub_10008388C(v110, v111);
      sub_100084034();
      sub_1000888F8();
      v112 = sub_100083E84();
      v113(v112);
      sub_100085084();
      v114 = sub_100084074();
      sub_10005ABBC(v114, v115);
      v116 = *(v104 + 8);
      v117 = v105;
    }

    v153 = v106;
    goto LABEL_37;
  }

  v64 = *(v18 + 160);
  sub_10005F3D0();

  return sub_10008AA58();
}

uint64_t sub_10007B3B0()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 240);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 248) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007B4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v19 = v18[31];
  v20 = v18[19];
  v21 = v18[15];
  sub_100083E14();
  sub_10008388C(v22, v23);
  sub_100084074();
  v24 = sub_100088948();
  v26 = v25;
  v28 = v18[28];
  v27 = v18[29];
  v29 = v18[26];
  v30 = v18[27];
  if (v19)
  {
    v32 = v18[24];
    v31 = v18[25];
    v33 = v18[23];
    v34 = v18[19];
    v35 = v18[15];
    v36 = v18[16];
    sub_10005ABBC(v29, v30);

    v37 = sub_100083EC8();
    v38(v37);
    v39 = *(v32 + 8);
    v40 = sub_100012498();
    v41(v40);
    sub_100084090();
    v42 = v18[7];
    v72 = v18[6];

    sub_10001248C();
    sub_10005F3D0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, v72, a15, a16, a17, a18);
  }

  else
  {
    v71 = v24;
    v73 = v26;
    sub_10005ABBC(v29, v30);

    v53 = v18[18];
    v52 = v18[19];
    v54 = v18[24];
    v55 = v18[25];
    v57 = v18[22];
    v56 = v18[23];
    v58 = v18[17];
    sub_100084014(v18[16]);
    v59(v52);
    v60 = *(v54 + 8);
    v61 = sub_10005DC4C();
    v62(v61);

    sub_1000843DC();
    sub_10005F3D0();

    return v66(v63, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, v71, v73, a15, a16, a17, a18);
  }
}

uint64_t sub_10007B6EC()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 296);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 304) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007B7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v19 = v18[38];
  v20 = v18[18];
  v21 = v18[15];
  sub_100083E14();
  sub_10008388C(v22, v23);
  sub_100084074();
  v24 = sub_100088948();
  v27 = v18[35];
  v26 = v18[36];
  v29 = v18[33];
  v28 = v18[34];
  v30 = v18[32];
  if (v19)
  {
    v31 = v18[24];
    v73 = v18[25];
    v75 = v19;
    v32 = v18[23];
    v33 = v18[18];
    v35 = v18[15];
    v34 = v18[16];

    v36 = sub_10005EC4C();
    sub_10005ABBC(v36, v37);

    v38 = *(v34 + 8);
    v39 = sub_10005F62C();
    v40(v39);
    (*(v31 + 8))(v73, v32);
    sub_100084090();
    v41 = v18[6];
    v42 = v18[7];

    sub_10001248C();
    sub_10005F3D0();

    return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, v73, v75, a15, a16, a17, a18);
  }

  else
  {
    v74 = v24;
    v76 = v25;

    v52 = sub_10005EC4C();
    sub_10005ABBC(v52, v53);

    v54 = v18[24];
    v55 = v18[25];
    v57 = v18[22];
    v56 = v18[23];
    v59 = v18[18];
    v58 = v18[19];
    v60 = v18[17];
    sub_100084014(v18[16]);
    v61(v59);
    v62 = *(v54 + 8);
    v63 = sub_10005DB50();
    v64(v63);

    sub_1000843DC();
    sub_10005F3D0();

    return v68(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, v74, v76, a15, a16, a17, a18);
  }
}

uint64_t sub_10007BA3C()
{
  sub_100012404();
  sub_100012474();
  sub_10005D3E8();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_10001237C();
  *v7 = v6;
  *(v8 + 336) = v0;

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007BB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10005F7EC();
  sub_100060250();
  if (qword_1000A5958 != -1)
  {
    sub_100083988();
  }

  v19 = v18[42];
  v20 = v18[17];
  v21 = v18[15];
  sub_100083E14();
  sub_10008388C(v22, v23);
  sub_100084074();
  v24 = sub_100088948();
  v26 = v25;
  v28 = v18[39];
  v27 = v18[40];
  v29 = v18[33];
  v30 = v18[34];
  v31 = v18[32];
  if (v19)
  {
    v75 = v19;
    v33 = v18[24];
    v32 = v18[25];
    v34 = v18[23];
    v35 = v18[16];
    v36 = v18[17];
    v37 = v18[15];
    sub_10005ABBC(v31, v29);

    v38 = *(v35 + 8);
    v39 = sub_10005DC4C();
    v40(v39);
    v41 = *(v33 + 8);
    v42 = sub_10005EAE0();
    v43(v42);
    sub_100084090();
    v44 = v18[6];
    v45 = v18[7];

    sub_10001248C();
    sub_10005F3D0();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, v75, a15, a16, a17, a18);
  }

  else
  {
    v74 = v24;
    v76 = v26;
    sub_10005ABBC(v31, v29);

    v55 = v18[24];
    v56 = v18[25];
    v58 = v18[22];
    v57 = v18[23];
    v60 = v18[18];
    v59 = v18[19];
    v61 = v18[17];
    sub_100084014(v18[16]);
    v62(v61);
    v63 = *(v55 + 8);
    v64 = sub_10005DB50();
    v65(v64);

    sub_1000843DC();
    sub_10005F3D0();

    return v69(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, v74, v76, a15, a16, a17, a18);
  }
}

uint64_t sub_10007BD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = v12[28];
  v13 = v12[29];
  v16 = v12[24];
  v15 = v12[25];
  v17 = v12[23];
  sub_10005ABBC(v12[26], v12[27]);

  v18 = *(v16 + 8);
  v19 = sub_1000124C8();
  v20(v19);
  v36 = v12[31];
  v21 = v12[25];
  v22 = v12[22];
  v24 = v12[18];
  v23 = v12[19];
  sub_1000840BC();
  v25 = v12[6];
  v26 = v12[7];

  sub_10001248C();
  sub_100012640();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, a10, a11, a12);
}

uint64_t sub_10007BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = *(v12 + 280);
  v13 = *(v12 + 288);
  v15 = *(v12 + 264);
  v16 = *(v12 + 256);
  v18 = *(v12 + 192);
  v17 = *(v12 + 200);
  v19 = *(v12 + 184);

  v20 = sub_10005EAE0();
  sub_10005ABBC(v20, v21);

  v22 = *(v18 + 8);
  v23 = sub_10005DC4C();
  v24(v23);
  v40 = *(v12 + 304);
  v25 = *(v12 + 200);
  v26 = *(v12 + 176);
  v28 = *(v12 + 144);
  v27 = *(v12 + 152);
  sub_1000840BC();
  v29 = *(v12 + 48);
  v30 = *(v12 + 56);

  sub_10001248C();
  sub_100012640();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, v40, a10, a11, a12);
}

uint64_t sub_10007BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10005E828();
  sub_10005EAC8();
  v14 = v12[39];
  v13 = v12[40];
  v15 = v12[34];
  v17 = v12[24];
  v16 = v12[25];
  v18 = v12[23];
  sub_10005ABBC(v12[32], v12[33]);

  v19 = *(v17 + 8);
  v20 = sub_100012498();
  v21(v20);
  v37 = v12[42];
  v22 = v12[25];
  v23 = v12[22];
  v25 = v12[18];
  v24 = v12[19];
  sub_1000840BC();
  v26 = v12[6];
  v27 = v12[7];

  sub_10001248C();
  sub_100012640();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, v37, a10, a11, a12);
}

unint64_t sub_10007C078(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100008DC0(&qword_1000A6C38, &qword_10008E2D0);
    v2 = sub_10008A9E8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {

          return v2;
        }

        v5 = *(a1 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_10008369C(*(a1 + 48) + 40 * v10, __src);
    sub_10000A650(*(a1 + 56) + 32 * v10, &__src[40]);
    memcpy(__dst, __src, sizeof(__dst));
    sub_10008369C(__dst, v23);
    if (!swift_dynamicCast())
    {
      sub_100017954(__dst, &qword_1000A6C40, &qword_10008E2D8);

      goto LABEL_22;
    }

    sub_10000A650(&__dst[40], v23);
    sub_100017954(__dst, &qword_1000A6C40, &qword_10008E2D8);
    sub_100008DC0(&qword_1000A6C30, &qword_10008E2C8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v5 &= v5 - 1;
    result = sub_100081320(v21, v22, sub_100083930);
    v11 = result;
    if (v12)
    {
      v13 = (v2[6] + 16 * result);
      v14 = v13[1];
      *v13 = v21;
      v13[1] = v22;

      v15 = v2[7];
      v16 = *(v15 + 8 * v11);
      *(v15 + 8 * v11) = v21;
      result = swift_unknownObjectRelease();
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v21;
      v17[1] = v22;
      *(v2[7] + 8 * result) = v21;
      v18 = v2[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_26;
      }

      v2[2] = v20;
      v8 = v9;
    }
  }

LABEL_22:

  return 0;
}

uint64_t ToolInvocation.init(wfAction:)()
{
  sub_100012404();
  v0[3] = v1;
  v0[4] = v2;
  v3 = sub_1000899A8();
  v0[5] = v3;
  sub_100017A0C(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = sub_10005F4D4();
  v7 = sub_100089008();
  v0[8] = v7;
  sub_100017A0C(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = sub_10005F3EC();
  v0[11] = swift_task_alloc();
  v11 = sub_10008A128();
  v0[12] = v11;
  sub_100017A0C(v11);
  v0[13] = v12;
  v14 = *(v13 + 64);
  v0[14] = sub_10005F4D4();
  v15 = sub_1000897A8();
  v0[15] = v15;
  sub_100017A0C(v15);
  v0[16] = v16;
  v18 = *(v17 + 64);
  v0[17] = sub_10005F3EC();
  v0[18] = swift_task_alloc();
  v19 = sub_10008A1A8();
  v0[19] = v19;
  sub_100017A0C(v19);
  v0[20] = v20;
  v22 = *(v21 + 64);
  v0[21] = sub_10005F4D4();
  v23 = sub_100008DC0(&qword_1000A6A80, &qword_10008DE90);
  sub_10005E3B0(v23);
  v25 = *(v24 + 64);
  v0[22] = sub_10005F4D4();
  v26 = sub_100089918();
  v0[23] = v26;
  sub_100017A0C(v26);
  v0[24] = v27;
  v29 = *(v28 + 64);
  v0[25] = sub_10005F3EC();
  v0[26] = swift_task_alloc();
  v0[27] = swift_task_alloc();
  v30 = sub_100088A68();
  v0[28] = v30;
  sub_100017A0C(v30);
  v0[29] = v31;
  v33 = *(v32 + 64);
  v0[30] = sub_10005F4D4();
  v34 = sub_100008DC0(&qword_1000A6A88, &qword_10008DE98);
  v0[31] = v34;
  sub_100017A0C(v34);
  v0[32] = v35;
  v37 = *(v36 + 64);
  v0[33] = sub_10005F4D4();
  v38 = sub_100089BF8();
  v0[34] = v38;
  sub_100017A0C(v38);
  v0[35] = v39;
  v41 = *(v40 + 64);
  v0[36] = sub_10005F4D4();
  v42 = sub_100089198();
  v0[37] = v42;
  sub_100017A0C(v42);
  v0[38] = v43;
  v45 = *(v44 + 64);
  v0[39] = sub_10005F3EC();
  v0[40] = swift_task_alloc();
  v46 = sub_100008DC0(&qword_1000A6A90, &qword_10008DEA0);
  sub_10005E3B0(v46);
  v48 = *(v47 + 64);
  v0[41] = sub_10005F4D4();
  v49 = sub_100089098();
  v0[42] = v49;
  sub_100017A0C(v49);
  v0[43] = v50;
  v52 = *(v51 + 64);
  v0[44] = sub_10005F3EC();
  v0[45] = swift_task_alloc();
  v53 = sub_10005CFA0();

  return _swift_task_switch(v53, v54, v55);
}

uint64_t sub_10007C7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  sub_100089038();
  sub_100089018();
  v22[46] = sub_100089028();

  v23 = v22[39];
  v135 = v22[40];
  v141 = v22[37];
  v143 = v22[41];
  v24 = v22[35];
  v25 = v22[33];
  v26 = v22[32];
  v132 = v22[31];
  v137 = v22[38];
  v139 = v22[30];
  v27 = v22[4];
  (*(v24 + 104))(v22[36], enum case for ContainerDefinition.Device.local(_:), v22[34]);
  sub_100089168();
  v28 = *(v24 + 8);
  v29 = sub_10005E98C();
  v30(v29);
  swift_getKeyPath();
  v31 = swift_allocObject();
  v32 = [v27 identifier];
  v33 = sub_10008A268();
  v35 = v34;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  *v25 = v31;
  (*(v26 + 104))(v25, enum case for CompoundToolKitPropertyFilter.is<A>(_:), v132);
  sub_10008388C(&qword_1000A6A98, &type metadata accessor for ToolDefinitionQuery);
  sub_1000828A4();
  sub_100084828();
  sub_100089708();

  v36 = *(v26 + 8);
  v37 = sub_10005E44C();
  v38(v37);
  v39 = *(v137 + 8);
  v39(v23, v141);
  sub_100088A28();
  sub_100089418();
  v41 = v22[41];
  v40 = v22[42];
  v42 = v22[40];
  v43 = v22[37];
  (*(v22[29] + 8))(v22[30], v22[28]);
  v44 = sub_10005E494();
  (v39)(v44);
  v45 = sub_100084B28();
  sub_10005DC64(v45, v46, v40);
  if (v47)
  {
    v48 = v22[4];
    sub_100017954(v22[41], &qword_1000A6A90, &qword_10008DEA0);
    v49 = sub_100088B18();
    sub_10008388C(&unk_1000A6AA8, &type metadata accessor for ToolInvocationBox.Error);
    sub_10005ECC0();
    v50 = swift_allocError();
    v52 = v51;
    v53 = [v48 identifier];
    v54 = sub_10008A268();
    v56 = v55;

    *v52 = v54;
    v52[1] = v56;
    sub_10005D92C(v49);
    (*(v57 + 104))(v52);
    v144 = v50;
    swift_willThrow();

    v59 = v22[44];
    v58 = v22[45];
    v60 = v22[40];
    v61 = v22[41];
    v62 = v22[39];
    v63 = v22[36];
    v64 = v22[33];
    v65 = v22[30];
    v67 = v22[26];
    v66 = v22[27];
    sub_100085270();
    a9 = v68;
    v130 = v69;
    v131 = v70;
    v133 = v22[18];
    v134 = v22[17];
    v136 = v22[14];
    v138 = v22[11];
    v140 = v22[10];
    v142 = v22[7];

    sub_10001248C();
  }

  else
  {
    v80 = v22[15];
    v81 = v22[4];
    (*(v22[43] + 32))(v22[45], v22[41], v22[42]);
    v82 = sub_10008A1E8();
    v83 = [v81 parameters];
    sub_100011D84(0, &qword_1000A6530, WFParameter_ptr);
    v84 = sub_10008A328();
    v22[47] = v84;

    v85 = sub_10001BEBC(v84);
    v22[48] = v85;
    if (v85)
    {
      v86 = v85;
      v87 = objc_opt_self();
      v22[49] = v87;
      if (v86 < 1)
      {
        __break(1u);
      }

      else
      {
        v92 = WFLogCategoryToolKitExecution;
        v22[52] = 0;
        v22[53] = v82;
        v22[50] = v92;
        v22[51] = v82;
        v93 = v22[47];
        if ((v93 & 0xC000000000000001) != 0)
        {
          v94 = sub_10008A928();
          v95 = v22[49];
        }

        else
        {
          v95 = v87;
          v94 = *(v93 + 32);
        }

        v22[54] = v94;
        sub_100084F0C([v95 defaultContext]);
        v126 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
        swift_task_alloc();
        sub_100012480();
        v22[56] = v127;
        *v127 = v128;
        sub_1000839C0(v127);
        sub_1000843E8();
      }

      return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v87, v88, v89, v90, v91);
    }

    v96 = v22[47];
    v145 = v22[46];
    v97 = v22[44];
    v98 = v22[45];
    v100 = v22[42];
    v99 = v22[43];
    v101 = v22[22];
    v102 = v22[3];
    v103 = v22[4];

    v104 = *(v99 + 16);
    v105 = sub_10005EDA0();
    v106(v105);
    sub_10007E814(v82);

    v107 = sub_1000891D8();
    sub_100084E94(v101, v108, v109, v107);
    sub_1000890B8();
    v110 = *(v99 + 8);
    v111 = sub_10005DC58();
    v112(v111);

    v114 = v22[44];
    v113 = v22[45];
    v116 = v22[40];
    v115 = v22[41];
    v117 = v22[39];
    v118 = v22[36];
    v119 = v22[33];
    v120 = v22[30];
    v122 = v22[26];
    v121 = v22[27];
    sub_100085270();
    v130 = v123;
    v131 = v124;
    v133 = v125;
    v134 = v22[18];
    v136 = v22[17];
    v138 = v22[14];
    v140 = v22[11];
    v142 = v22[10];
    v144 = v22[7];

    sub_10001248C();
  }

  sub_1000843E8();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, v130, v131, v133, v134, v136, v138, v140, v142, v144, a19, a20, a21, a22);
}

uint64_t sub_10007CF64()
{
  sub_100012404();
  sub_100012474();
  v3 = v2;
  sub_100083D94();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  sub_10001237C();
  *v8 = v7;
  *(v3 + 456) = v0;

  if (!v0)
  {
  }

  sub_100012554();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10007D064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v23 = [*(v22 + 432) key];
  if (!v23)
  {
    sub_10008A268();
    sub_10008A238();
    sub_100084F18();
  }

  v24 = [*(v22 + 32) parameterStateForKey:v23 fallingBackToDefaultValue:1];
  *(v22 + 464) = v24;

  if (v24)
  {
    v26 = *(v22 + 208);
    v25 = *(v22 + 216);
    v27 = *(v22 + 184);
    v28 = *(v22 + 192);
    v29 = *(v22 + 168);
    v30 = *(v22 + 112);
    v31 = *(v28 + 16);
    *(v22 + 472) = v31;
    *(v22 + 480) = (v28 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v31(v26, v25, v27);
    sub_10008A188();
    swift_getObjectType();
    sub_10008A108();
    v32 = async function pointer to WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)[1];
    swift_task_alloc();
    sub_100012480();
    *(v22 + 488) = v33;
    *v33 = v34;
    v33[1] = sub_10007D3D0;
    v35 = *(v22 + 432);
    v36 = *(v22 + 168);
    v37 = *(v22 + 144);
    v38 = *(v22 + 112);
    v39 = *(v22 + 32);
    sub_1000843E8();

    return WFParameterState.toolkitTypedValue(in:of:with:displayRepresentationConfiguration:)(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v48 = *(v22 + 432);
    (*(*(v22 + 192) + 8))(*(v22 + 216), *(v22 + 184));

    v49 = sub_1000841EC();
    if (v76)
    {
      v50 = *(v22 + 424);
      v51 = *(v22 + 456);
      v52 = *(v22 + 376);
      v54 = *(v22 + 352);
      v53 = *(v22 + 360);
      v56 = *(v22 + 336);
      v55 = *(v22 + 344);
      v57 = *(v22 + 176);
      v58 = *(v22 + 24);
      v91 = *(v22 + 32);
      v92 = *(v22 + 368);

      v59 = *(v55 + 16);
      v60 = sub_10005DEB4();
      v61(v60);
      sub_10007E814(v50);

      v62 = sub_1000891D8();
      sub_100084E94(v57, v63, v64, v62);
      sub_1000851CC();
      sub_1000890B8();
      v65 = *(v55 + 8);
      v66 = sub_10005E464();
      v67(v66);

      sub_1000845C4();

      sub_10001248C();
      sub_1000843E8();

      return v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, v91, v92, a19, a20, a21, a22);
    }

    else
    {
      v77 = sub_100084E24(v49);
      if (v76)
      {
        v79 = sub_1000854F0(v77, v78);
      }

      else
      {
        v79 = sub_10008A928();
      }

      v80 = [sub_100084B00(v79) defaultContext];
      sub_100084F0C(v80);
      v81 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
      swift_task_alloc();
      sub_100012480();
      *(v22 + 448) = v82;
      *v82 = v83;
      sub_1000839C0();
      sub_1000843E8();

      return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v84, v85, v86, v87, v88);
    }
  }
}

uint64_t sub_10007D3D0()
{
  sub_100012604();
  sub_1000851A8();
  sub_100083D94();
  *v4 = v3;
  v5 = v1[61];
  *v4 = *v2;
  *(v3 + 496) = v0;

  sub_1000850E4();
  (*(v1[13] + 8))(*(v6 + 112), v1[12]);
  sub_1000840CC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10007D51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100084B78();
  sub_100084D4C();
  v23 = *(v22 + 408);
  v25 = *(v22 + 136);
  v24 = *(v22 + 144);
  v26 = *(v22 + 120);
  v27 = *(v22 + 128);
  v28 = [*(v22 + 432) key];
  v29 = sub_10008A268();
  v31 = v30;

  v32 = *(v27 + 16);
  v33 = sub_10005DEB4();
  v34(v33);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 16) = v23;
  v36 = (v22 + 16);
  sub_10008395C();
  v37 = sub_10005EAE0();
  sub_100081320(v37, v38, v39);
  sub_100083E98();
  v47 = v45 + v46;
  if (__OFADD__(v45, v46))
  {
    __break(1u);
    goto LABEL_24;
  }

  v48 = v40;
  v49 = v41;
  sub_100008DC0(&qword_1000A6AB8, &qword_10008DEE0);
  if (sub_10008A9A8(isUniquelyReferenced_nonNull_native, v47))
  {
    v50 = *v36;
    sub_10008395C();
    v51 = sub_10005EAE0();
    sub_100081320(v51, v52, v53);
    sub_100084A44();
    if (!v55)
    {
      sub_1000843E8();

      return sub_10008AAA8();
    }

    v48 = v54;
  }

  v58 = *v36;
  if (v49)
  {
    v59 = *(v22 + 464);
    v60 = *(v22 + 432);
    v61 = *(v22 + 136);
    v62 = *(v22 + 120);
    sub_100083ED8(*(v22 + 128));
    v65(v63 + v64 * v48);

    goto LABEL_12;
  }

  v67 = *(v22 + 128);
  v66 = *(v22 + 136);
  v68 = *(v22 + 120);
  sub_100084A28();
  sub_100083C28();
  v70 = (v69 + 16 * v48);
  *v70 = v29;
  v70[1] = v31;
  (*(v71 + 32))(*(v58 + 56) + *(v71 + 72) * v48);
  sub_10008497C();
  if (v73)
  {
LABEL_24:
    __break(1u);
    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v40, v41, v42, v43, v44);
  }

  v74 = *(v22 + 464);
  v60 = *(v22 + 432);
  *(v58 + 16) = v72;
LABEL_12:
  swift_unknownObjectRelease();

  v75 = *(v22 + 216);
  v76 = *(v22 + 184);
  v77 = *(v22 + 192);
  v79 = *(v22 + 160);
  v78 = *(v22 + 168);
  v80 = *(v22 + 152);
  (*(*(v22 + 128) + 8))(*(v22 + 144), *(v22 + 120));
  v81 = *(v79 + 8);
  v82 = sub_10005DC4C();
  v83(v82);
  v84 = *(v77 + 8);
  v85 = sub_1000124C8();
  v86(v85);
  v87 = sub_1000841EC();
  if (!v55)
  {
    *(v22 + 416) = v87;
    *(v22 + 424) = v58;
    *(v22 + 408) = v58;
    v113 = *(v22 + 376);
    if ((v113 & 0xC000000000000001) != 0)
    {
      v114 = sub_10008A928();
    }

    else
    {
      v114 = sub_1000854F0(v87, v113);
    }

    v115 = [sub_100084B00(v114) defaultContext];
    sub_100084F0C(v115);
    v116 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
    swift_task_alloc();
    sub_100012480();
    *(v22 + 448) = v117;
    *v117 = v118;
    sub_1000839C0();
    sub_1000843E8();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v40, v41, v42, v43, v44);
  }

  v88 = *(v22 + 496);
  v89 = *(v22 + 376);
  v91 = *(v22 + 352);
  v90 = *(v22 + 360);
  v93 = *(v22 + 336);
  v92 = *(v22 + 344);
  v94 = *(v22 + 176);
  v95 = *(v22 + 24);
  v120 = *(v22 + 32);
  v121 = *(v22 + 368);

  v96 = *(v92 + 16);
  v97 = sub_10005DEB4();
  v98(v97);
  sub_10007E814(v58);

  v99 = sub_1000891D8();
  sub_100084E94(v94, v100, v101, v99);
  sub_1000851CC();
  sub_1000890B8();
  v102 = *(v92 + 8);
  v103 = sub_10005E464();
  v104(v103);

  sub_1000845C4();

  sub_10001248C();
  sub_1000843E8();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, v120, v121, a19, a20, a21, a22);
}

uint64_t sub_10007D918(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_log_t log, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  sub_1000847D0();
  sub_100084AC4();
  v34 = *(v32 + 456);
  v35 = *(v32 + 432);
  v36 = *(v32 + 400);
  v37 = *(v32 + 88);
  v38 = *(v32 + 32);

  sub_100088F28();
  v39 = v38;
  v40 = v35;
  swift_errorRetain();
  v41 = sub_100088FF8();
  v42 = sub_10008A5D8();

  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v32 + 456);
  v45 = *(v32 + 432);
  v46 = *(v32 + 88);
  v47 = *(v32 + 72);
  if (v43)
  {
    v48 = *(v32 + 32);
    v113 = *(v32 + 64);
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    a20 = swift_slowAlloc();
    *v49 = 136315650;
    v51 = [v48 identifier];
    v111 = v46;
    v52 = sub_10008A268();

    v53 = sub_1000124C8();
    sub_100080D2C(v53, v54, v55);
    sub_100060454();

    *(v49 + 4) = v52;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v45;
    *v50 = v45;
    *(v49 + 22) = 2112;
    v33 = v45;
    swift_errorRetain();
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v49 + 24) = v56;
    v50[1] = v56;
    _os_log_impl(&_mh_execute_header, v41, v42, "Failed to get type defintion for  %s-%@ error: %@", v49, 0x20u);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    swift_arrayDestroy();
    sub_100084DDC();
    v45 = a20;
    sub_10005B1BC(a20);
    sub_100084DDC();
    sub_100084DDC();

    (*(v47 + 8))(v111, v113);
  }

  else
  {
    v57 = *(v32 + 456);

    v58 = *(v47 + 8);
    v59 = sub_10005EDA0();
    v61(v59, v60);
  }

  v62 = sub_1000841EC();
  if (v79)
  {
    v63 = *(v32 + 424);
    v64 = *(v32 + 376);
    v114 = *(v32 + 368);
    sub_100085430();
    v65 = v45[2];
    v66 = sub_10005DB50();
    v67(v66);
    sub_10007E814(v63);

    sub_1000891D8();
    v68 = sub_100084B28();
    sub_100009158(v68, v69, 1, v70);
    sub_100084828();
    sub_1000890B8();
    v71 = v45[1];
    v72 = sub_10005DC4C();
    v73(v72);

    sub_100084BE8();
    v102 = v75;
    v103 = v74;
    sub_100085270();
    v104 = v76;
    v105 = v77;
    v106 = v78;
    v107 = *(v32 + 144);
    v108 = *(v32 + 136);
    loga = *(v32 + 112);
    v110 = *(v32 + 88);
    v112 = *(v32 + 80);
    v115 = *(v32 + 56);

    sub_10001248C();
    sub_1000843C0();

    return v84(v83, v84, v85, v86, v87, v88, v89, v90, v102, v103, v104, v105, v106, v107, v108, loga, v110, v112, v115, a20, a21, a22, a23, a24);
  }

  else
  {
    v80 = sub_100084E24(v62);
    if (v79)
    {
      v82 = sub_1000854F0(v80, v81);
    }

    else
    {
      v82 = sub_10008A928();
    }

    v92 = [sub_100084B00(v82) defaultContext];
    sub_100084F0C(v92);
    v93 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
    swift_task_alloc();
    sub_100012480();
    *(v32 + 448) = v94;
    *v94 = v95;
    sub_1000839C0();
    sub_1000843C0();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v96, v97, v98, v99, v100);
  }
}

uint64_t sub_10007DDBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_t log, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  sub_100060FF4();
  a33 = v35;
  a34 = v36;
  sub_100084FE4();
  a32 = v34;
  v37 = v34[62];
  v39 = v34[59];
  v38 = v34[60];
  v137 = v34[54];
  v40 = v34[50];
  v41 = v34[27];
  v42 = v34[25];
  v43 = v34[23];
  v44 = v34[10];
  v45 = v34[4];
  (*(v34[20] + 8))(v34[21], v34[19]);
  sub_100088F28();
  v46 = sub_1000848B4();
  v39(v46);
  v47 = v45;
  v48 = v137;
  swift_errorRetain();
  v49 = sub_100088FF8();
  LOBYTE(v43) = sub_10008A5D8();

  v134 = v43;
  v50 = os_log_type_enabled(v49, v43);
  v51 = v34[58];
  v138 = v34[62];
  v52 = v34[54];
  v54 = v34[24];
  v53 = v34[25];
  v55 = v34[23];
  v56 = v34[9];
  v57 = v34[10];
  v58 = v34[8];
  if (v50)
  {
    v119 = v34[23];
    v132 = v34[10];
    v60 = v34[6];
    v59 = v34[7];
    a10 = v34[5];
    logb = v49;
    v61 = v34[4];
    v130 = v34[27];
    v62 = swift_slowAlloc();
    a9 = swift_slowAlloc();
    a22 = swift_slowAlloc();
    *v62 = 136315906;
    v63 = [v61 identifier];
    v126 = v56;
    v128 = v58;
    v64 = sub_10008A268();
    v66 = v65;

    v67 = sub_100080D2C(v64, v66, &a22);

    *(v62 + 4) = v67;
    *(v62 + 12) = 2112;
    *(v62 + 14) = v52;
    *a9 = v52;
    *(v62 + 22) = 2080;
    v121 = v52;
    sub_1000898D8();
    sub_100089988();
    (*(v60 + 8))(v59, a10);
    v69 = *(v54 + 8);
    v68 = (v54 + 8);
    v69(v53, v119);
    v70 = sub_10005E9C0();
    v73 = sub_100080D2C(v70, v71, v72);

    *(v62 + 24) = v73;
    *(v62 + 32) = 2112;
    v74 = v138;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v62 + 34) = v75;
    a9[1] = v75;
    _os_log_impl(&_mh_execute_header, logb, v134, "Failed to convert  %s-%@ with type definition: %s error: %@", v62, 0x2Au);
    sub_100008DC0(&qword_1000A6460, &qword_10008D878);
    swift_arrayDestroy();
    sub_100084DDC();
    swift_arrayDestroy();
    sub_100084DDC();
    sub_100084DDC();

    swift_unknownObjectRelease();

    (*(v126 + 8))(v132, v128);
    v69(v130, v119);
  }

  else
  {

    swift_unknownObjectRelease();

    v76 = *(v54 + 8);
    v68 = (v54 + 8);
    v74 = v76;
    v77 = sub_10005ECA8();
    v76(v77);
    (*(v56 + 8))(v57, v58);
    v78 = sub_1000124C8();
    v76(v78);
  }

  v79 = sub_1000841EC();
  if (v96)
  {
    v80 = v34[53];
    v81 = v34[47];
    v139 = v34[46];
    sub_100085430();
    v82 = *(v74 + 2);
    v83 = sub_10005DB50();
    v84(v83);
    sub_10007E814(v80);

    sub_1000891D8();
    v85 = sub_100084B28();
    sub_100009158(v85, v86, 1, v87);
    sub_100084828();
    sub_1000890B8();
    v88 = *(v74 + 1);
    v89 = sub_10005DC4C();
    v90(v89);

    sub_100084BE8();
    v120 = v92;
    v122 = v91;
    sub_100085270();
    loga = v93;
    v125 = v94;
    v127 = v95;
    v129 = v34[18];
    v131 = v34[17];
    v133 = v34[14];
    v135 = v34[11];
    v136 = v34[10];
    v140 = v34[7];

    sub_10001248C();
    sub_10005E9F8();

    return v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, v120, v122, loga, v125, v127, v129, v131, v133, v135, v136, v140, a22, a23, a24, a25, a26);
  }

  else
  {
    v97 = sub_100084E24(v79);
    if (v96)
    {
      v99 = sub_1000854F0(v97, v98);
    }

    else
    {
      v99 = sub_10008A928();
    }

    v109 = [sub_100084B00(v99) defaultContext];
    sub_100084F0C(v109);
    v110 = async function pointer to WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)[1];
    swift_task_alloc();
    sub_100012480();
    v34[56] = v111;
    *v111 = v112;
    sub_1000839C0();
    sub_10005E9F8();

    return WFParameter.toolkitTypeDefinition(for:parameterKey:localizationContext:)(v113, v114, v115, v116, v117);
  }
}

uint64_t sub_10007E3E0(uint64_t a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  sub_1000849BC();
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;
  sub_1000125C0();

  return sub_1000639A8();
}

uint64_t sub_10007E45C(void *a1, void *a2, void *aBlock)
{
  v3[2] = a2;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a2;
  v8 = sub_1000889D8();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_10007E534;

  return static ToolKitHelper.transformAction(for:queue:)();
}

uint64_t sub_10007E534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  sub_100083C3C();
  sub_10001237C();
  *v14 = v13;
  v15 = v13[6];
  v16 = v13[2];
  *v14 = *v12;

  sub_100084D58();
  sub_10005ABBC(v13[4], *(v17 + 40));
  if (v11)
  {
    sub_100088968();
    sub_100060454();

    v18 = v10;
  }

  else
  {
    sub_100084074();
    isa = sub_1000889C8().super.isa;
    v20 = sub_100084074();
    sub_10005ABBC(v20, v21);
    v18 = isa;
  }

  v22 = v13[3];
  v23 = sub_100083E70();
  v24(v23);

  _Block_release(v22);
  sub_1000840DC();
  sub_1000853F8();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

id ToolKitHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id _s24BackgroundShortcutRunner13ToolKitHelperC28DynamicEnumerationDefinitionCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007E744(uint64_t a1)
{
  v2 = sub_100008DC0(&qword_1000A6A88, &qword_10008DE98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_100089188();
}

unint64_t sub_10007E814(uint64_t a1)
{
  v47 = sub_100008DC0(&qword_1000A6BC0, &qword_10008E2B0);
  v2 = *(*(v47 - 8) + 64);
  v3 = __chkstk_darwin(v47);
  v46 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v45 = &v42 - v5;
  v48 = a1;
  if (*(a1 + 16))
  {
    sub_100008DC0(&qword_1000A6BC8, &unk_10008E2B8);
    v6 = sub_10008A9E8();
  }

  else
  {
    v6 = &_swiftEmptyDictionarySingleton;
  }

  v7 = v48 + 64;
  v8 = 1 << *(v48 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v48 + 64);
  v11 = (v8 + 63) >> 6;
  v42 = v6 + 8;

  v13 = 0;
  v43 = v7;
  for (i = v6; v10; v7 = v43)
  {
    v14 = v13;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(v48 + 56);
    v18 = (*(v48 + 48) + 16 * v16);
    v20 = *v18;
    v49 = v18[1];
    v19 = v49;
    v21 = sub_1000897A8();
    v22 = *(v21 - 8);
    v23 = v17 + *(v22 + 72) * v16;
    v24 = v47;
    v25 = v45;
    (*(v22 + 16))(&v45[*(v47 + 48)], v23, v21);
    *v25 = v20;
    v25[1] = v19;
    v26 = v25;
    v27 = v46;
    sub_100083614(v26, v46);
    v28 = *(v24 + 48);
    v30 = *v27;
    v29 = v27[1];
    v51 = v21;
    v52 = &protocol witness table for TypedValue;
    v31 = sub_100082710(&v50);
    (*(v22 + 32))(v31, v27 + v28, v21);
    sub_100083684(&v50, v54);
    v32 = v30;
    sub_100083684(v54, v55);
    sub_100083684(v55, &v53);

    v6 = i;
    result = sub_100081320(v30, v29, sub_100083930);
    v33 = result;
    if (v34)
    {
      v35 = (v6[6] + 16 * result);
      v36 = v35[1];
      *v35 = v32;
      v35[1] = v29;

      v37 = (v6[7] + 40 * v33);
      sub_10005B1BC(v37);
      result = sub_100083684(&v53, v37);
    }

    else
    {
      if (v6[2] >= v6[3])
      {
        goto LABEL_20;
      }

      *(v42 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v38 = (v6[6] + 16 * result);
      *v38 = v32;
      v38[1] = v29;
      result = sub_100083684(&v53, v6[7] + 40 * result);
      v39 = v6[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_21;
      }

      v6[2] = v41;
    }

    v13 = v14;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      return v6;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_10007EBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v118 = a1;
  v119 = a3;
  v124 = a2;
  v5 = sub_100008DC0(&qword_1000A6C58, &unk_10008E2F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v110 = &v104 - v7;
  v105 = sub_100089C98();
  v104 = *(v105 - 8);
  v8 = *(v104 + 64);
  __chkstk_darwin(v105);
  v111 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100089CF8();
  v123 = *(v112 - 8);
  v10 = *(v123 + 64);
  v11 = __chkstk_darwin(v112);
  v107 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v125 = &v104 - v13;
  v14 = sub_100008DC0(&qword_1000A68D0, &qword_10008DD78);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v120 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v104 - v18;
  v19 = sub_100089098();
  v108 = *(v19 - 8);
  v109 = v19;
  v20 = *(v108 + 64);
  __chkstk_darwin(v19);
  v113 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100089768();
  v115 = *(v22 - 8);
  v116 = v22;
  v23 = *(v115 + 64);
  __chkstk_darwin(v22);
  v114 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100008DC0(&qword_1000A6C60, &qword_10008D5B8);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v104 - v27;
  v29 = sub_100089738();
  v121 = *(v29 - 8);
  v122 = v29;
  v30 = v121[8];
  __chkstk_darwin(v29);
  v32 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000897A8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v33);
  v117 = &v104 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = (&v104 - v38);
  v40 = *(v34 + 16);
  v40(&v104 - v38, v4, v33);
  v41 = *(v34 + 88);
  if (v41(v39, v33) == enum case for TypedValue.collection(_:))
  {
    (*(v34 + 96))(v39, v33);
    v42 = *v39;
    v43 = swift_projectBox();
    v45 = v121;
    v44 = v122;
    (v121[2])(v32, v43, v122);
    v46 = *(sub_100089728() + 16);

    if (v46)
    {
      v125 = v42;
      v47 = sub_100089728();
      __chkstk_darwin(v47);
      v48 = v124;
      *(&v104 - 4) = v118;
      *(&v104 - 3) = v48;
      *(&v104 - 2) = v119;
      v49 = sub_100063408(sub_1000836F8, (&v104 - 6), v47);

      v50 = 0;
      v51 = *(v49 + 16);
      v52 = _swiftEmptyArrayStorage;
      while (v51 != v50)
      {
        if (v50 >= *(v49 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v53 = v49 + 8 * v50;
        v54 = *(v53 + 32);
        v55 = *(v54 + 16);
        v56 = v52[2];
        if (__OFADD__(v56, v55))
        {
          goto LABEL_50;
        }

        v57 = *(v53 + 32);

        if (!swift_isUniquelyReferenced_nonNull_native() || v56 + v55 > (v52[3] >> 1))
        {
          sub_1000802EC();
          v52 = v58;
        }

        if (*(v54 + 16))
        {
          if (((v52[3] >> 1) - v52[2]) < v55)
          {
            goto LABEL_52;
          }

          swift_arrayInitWithCopy();

          if (v55)
          {
            v59 = v52[2];
            v60 = __OFADD__(v59, v55);
            v61 = &v59[v55];
            if (v60)
            {
              goto LABEL_53;
            }

            v52[2] = v61;
          }
        }

        else
        {

          if (v55)
          {
            goto LABEL_51;
          }
        }

        ++v50;
      }

      v81 = v52[2];
      v82 = sub_100089728();
      (v121[1])(v32, v122);
      v83 = *(v82 + 16);

      if (v81 != v83)
      {
      }
    }

    else
    {
      (v45[1])(v32, v44);
    }
  }

  else
  {
    v121 = v39;
    v122 = v33;
    sub_100089778();
    v62 = sub_100089E48();
    if (sub_100008E78(v28, 1, v62) == 1)
    {
      sub_100017954(v28, &qword_1000A6C60, &qword_10008D5B8);
      v63 = v117;
      v64 = v122;
      v40(v117, v4, v122);
      if (v41(v63, v64) == enum case for TypedValue.primitive(_:))
      {
        v65 = v34;
        (*(v34 + 96))(v63, v64);
        v66 = *v63;
        v67 = swift_projectBox();
        v69 = v114;
        v68 = v115;
        v70 = v116;
        (*(v115 + 16))(v114, v67, v116);
        if ((*(v68 + 88))(v69, v70) == enum case for TypedValue.PrimitiveValue.BOOL(_:))
        {
          (*(v68 + 96))(v69, v70);
          LODWORD(v117) = *v69;

          sub_1000890C8();
          v71 = sub_100089078();
          v72 = 0;
          v73 = *(v71 + 16);
          v74 = (v123 + 8);
          v75 = v112;
          v76 = v119;
          while (1)
          {
            v77 = v120;
            if (v73 == v72)
            {

              v89 = 1;
              v90 = v122;
              v91 = v110;
              v92 = v111;
              v94 = v106;
              v93 = v107;
              goto LABEL_40;
            }

            if (v72 >= *(v71 + 16))
            {
LABEL_54:
              __break(1u);
              return;
            }

            (*(v123 + 16))(v125, v71 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v72, v75);
            if (sub_100089CB8() == v124 && v78 == v76)
            {

              goto LABEL_39;
            }

            v80 = sub_10008AA68();

            if (v80)
            {
              break;
            }

            (*v74)(v125, v75);
            ++v72;
          }

          v77 = v120;
LABEL_39:
          v94 = v106;
          (*(v123 + 32))(v106, v125, v75);
          v89 = 0;
          v90 = v122;
          v91 = v110;
          v92 = v111;
          v93 = v107;
LABEL_40:
          sub_100009158(v94, v89, 1, v75);
          sub_100083834();
          if (sub_100008E78(v77, 1, v75) == 1)
          {
            sub_100017954(v94, &qword_1000A68D0, &qword_10008DD78);
            (*(v108 + 8))(v113, v109);
            v95 = v77;
            v96 = &qword_1000A68D0;
            v97 = &qword_10008DD78;
LABEL_44:
            sub_100017954(v95, v96, v97);
            (*(v65 + 8))(v121, v90);
            return;
          }

          (*(v123 + 32))(v93, v77, v75);
          sub_100089CA8();
          v98 = v105;
          if (sub_100008E78(v91, 1, v105) == 1)
          {
            (*v74)(v93, v75);
            sub_100017954(v94, &qword_1000A68D0, &qword_10008DD78);
            (*(v108 + 8))(v113, v109);
            v96 = &qword_1000A6C58;
            v97 = &unk_10008E2F0;
            v95 = v91;
            goto LABEL_44;
          }

          (*(v104 + 32))(v92, v91, v98);
          if (v117)
          {
            v99 = sub_100089C78();
          }

          else
          {
            v99 = sub_100089C88();
          }

          v101 = v99;
          v102 = v100;
          sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_10008C980;
          *(v103 + 32) = v101;
          *(v103 + 40) = v102;
          (*(v104 + 8))(v92, v105);
          (*v74)(v93, v75);
          sub_100017954(v94, &qword_1000A68D0, &qword_10008DD78);
          (*(v108 + 8))(v113, v109);
          (*(v65 + 8))(v121, v90);
        }

        else
        {
          (*(v68 + 8))(v69, v70);

          (*(v34 + 8))(v121, v64);
        }
      }

      else
      {
        v88 = *(v34 + 8);
        v88(v63, v64);
        v88(v121, v64);
      }
    }

    else
    {
      v84 = sub_100089DC8();
      v86 = v85;
      (*(*(v62 - 8) + 8))(v28, v62);
      sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_10008C980;
      *(v87 + 32) = v84;
      *(v87 + 40) = v86;
      (*(v34 + 8))(v121, v122);
    }
  }
}

id sub_10007F8DC()
{
  v1 = sub_10008A238();

  v2 = sub_10008A238();

  v3 = [v0 initWithTypeIdentifier:v1 instanceIdentifier:v2];

  return v3;
}

uint64_t sub_10007F964(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_10007F99C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_100012334;

  return v7();
}

uint64_t sub_10007FA84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1000105E8;

  return v8();
}

uint64_t sub_10007FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100008DC0(&qword_1000A5E70, &qword_10008D410);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100083834();
  v13 = sub_10008A3D8();
  if (sub_100008E78(v12, 1, v13) == 1)
  {
    sub_100017954(v12, &qword_1000A5E70, &qword_10008D410);
  }

  else
  {
    sub_10008A3C8();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    v14 = *(a5 + 24);
    v15 = *(a5 + 16);
    swift_getObjectType();
    swift_unknownObjectRetain();
    v16 = sub_10008A388();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_10008A288() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100017954(a3, &qword_1000A5E70, &qword_10008D410);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100017954(a3, &qword_1000A5E70, &qword_10008D410);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10007FE48(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10007FF40;

  return v7(a1);
}

uint64_t sub_10007FF40()
{
  sub_100012404();
  sub_100012474();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001237C();
  *v4 = v3;

  sub_10001248C();

  return v5();
}

unint64_t sub_100080024(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = &_swiftEmptyDictionarySingleton;
LABEL_9:

    return v3;
  }

  sub_100008DC0(&qword_1000A6C88, &qword_10008E320);
  v2 = sub_10008A9E8();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_100083834();
    result = sub_100081320(v13, v14, sub_100083930);
    if (v8)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v9 = (v3[6] + 16 * result);
    *v9 = v13;
    v9[1] = v14;
    result = sub_10000A6AC(&v15, (v3[7] + 32 * result));
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      goto LABEL_12;
    }

    v3[2] = v12;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1000801D4()
{
  result = qword_1000A6920;
  if (!qword_1000A6920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6920);
  }

  return result;
}

void sub_100080228()
{
  sub_100084D64();
  if (v5)
  {
    sub_100083EF8();
    if (v7 != v8)
    {
      sub_100084B10();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10008496C(v6);
  if (v2)
  {
    sub_100008DC0(&unk_1000A6CF8, &unk_10008E388);
    v9 = sub_1000854A8();
    v10 = j__malloc_size(v9);
    sub_100084EE8(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000850F0();
  if (v1)
  {
    if (v9 != v0 || &v12[8 * v3] <= v11)
    {
      memmove(v11, v12, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 8 * v3);
  }
}

void sub_1000802EC()
{
  sub_100084D64();
  if (v3)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
    v9 = sub_1000854A8();
    j__malloc_size(v9);
    sub_100084958();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100080408()
{
  sub_100084D64();
  if (v5)
  {
    sub_100083EF8();
    if (v7 != v8)
    {
      sub_100084B10();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10008496C(v6);
  if (v2)
  {
    sub_100008DC0(&qword_1000A6600, &unk_10008E360);
    v9 = sub_1000854A8();
    j__malloc_size(v9);
    sub_100084958();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000850F0();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void sub_100080510(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(void))
{
  if (a3)
  {
    sub_100083EF8();
    if (v12 != v13)
    {
      sub_100084B10();
      if (v12)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_100080B78(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100080604()
{
  sub_100084D64();
  if (v5)
  {
    sub_100083EF8();
    if (v7 != v8)
    {
      sub_100084B10();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10008496C(v6);
  if (v2)
  {
    v9 = sub_100080C44();
    v10 = *(v9 + 52);
    v11 = (*(v9 + 48) + 7) & 0x1FFFFFFF8;
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    sub_100084EE8(v13);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = sub_1000850F0();
  if (v1)
  {
    if (v12 != v0 || &v15[8 * v3] <= v14)
    {
      memmove(v14, v15, 8 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v3);
  }
}

void sub_10008084C()
{
  sub_100084D64();
  if (v5)
  {
    sub_100083EF8();
    if (v7 != v8)
    {
      sub_100084B10();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_10008496C(v6);
  if (v2)
  {
    sub_100008DC0(&qword_1000A6CB8, &unk_10008E348);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v3;
    v9[3] = (2 * ((v10 - 32) / 24));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000850F0();
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v3] <= v11)
    {
      memmove(v11, v12, 24 * v3);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10008093C()
{
  sub_100084D64();
  if (v3)
  {
    sub_100083EF8();
    if (v5 != v6)
    {
      sub_100084B10();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100008DC0(&qword_1000A6CB0, &qword_10008E340);
    v9 = sub_1000854A8();
    j__malloc_size(v9);
    sub_100084958();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id *sub_100080A18(id *result, int64_t a2, char a3, id *a4)
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
    sub_100008DC0(&qword_1000A6C68, &unk_10008E300);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 8));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008DC0(&qword_1000A6C70, &qword_10008D2F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100080B78(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_10005F538();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_100017A1C(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    sub_10005E428();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    sub_10005E428();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100080C44()
{
  v0 = sub_100008DC0(&unk_1000A66A0, &qword_10008D5F0);
  if (sub_1000838D0(v0))
  {
    v1 = &unk_1000A6978;
    v2 = &unk_10008DDB8;
  }

  else
  {
    v1 = &unk_1000A6D08;
    v2 = &unk_10008E398;
  }

  return sub_100008DC0(v1, v2);
}

uint64_t sub_100080CD4(uint64_t ***a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  sub_100080D2C(v6, v7, a3);
  sub_100084F18();

  v9 = *a1;
  *v9 = a3;
  *a1 = v9 + 1;
  return result;
}

uint64_t sub_100080D2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_100012554();
  v9 = sub_100080DEC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_10000A650(v14, *a3);
    *a3 = v12 + 32;
  }

  sub_10005B1BC(v14);
  return v10;
}

unint64_t sub_100080DEC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100080EEC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_10008A938();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

id *sub_100080EEC(uint64_t a1, unint64_t a2)
{
  v4 = sub_100080F38(a1, a2);
  sub_100081050(&off_10009E790);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

id *sub_100080F38(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_10008A2E8())
  {
    result = sub_100081134(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_10008A908();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_10008A938();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100081050(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_1000811A4(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

id *sub_100081134(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100008DC0(&qword_1000A6C48, &qword_10008E2E0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

id *sub_1000811A4(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6C48, &qword_10008E2E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * v11 - 64);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100081298()
{
  sub_100085264();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

uint64_t sub_100081320(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  sub_10008AB08();
  sub_10008A2B8();
  v7 = sub_10008AB28();

  return a3(a1, a2, v7);
}

unint64_t sub_1000813A4()
{
  sub_100085158();
  v2 = *(v0 + 40);
  sub_1000899A8();
  sub_10008388C(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  v3 = sub_10008A208();
  return sub_100081848(v1, v3, &type metadata accessor for TypeIdentifier, &qword_1000A6C80, &type metadata accessor for TypeIdentifier, &protocol conformance descriptor for TypeIdentifier);
}

unint64_t sub_100081474(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10008AB08();
  sub_1000899A8();
  sub_10008388C(&qword_1000A6428, &type metadata accessor for TypeIdentifier);
  sub_10008A218();
  v4 = *(type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0) + 20);
  sub_100088A68();
  sub_10008388C(&unk_1000A6430, &type metadata accessor for Locale);
  sub_10008A218();
  v5 = sub_10008AB28();

  return sub_1000816E0(a1, v5);
}

unint64_t sub_100081588()
{
  sub_100085158();
  v2 = *(v0 + 40);
  sub_100089F58();
  sub_10008388C(&qword_1000A6CC8, &type metadata accessor for AssistantSchemaIdentifier);
  v3 = sub_10008A208();
  return sub_100081848(v1, v3, &type metadata accessor for AssistantSchemaIdentifier, &qword_1000A6CD0, &type metadata accessor for AssistantSchemaIdentifier, &protocol conformance descriptor for AssistantSchemaIdentifier);
}

unint64_t sub_100081658(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *(v3 + 40);
  sub_10008AB08();
  sub_10002A4D0();
  sub_10008AB28();
  v6 = sub_10005E810();

  return sub_1000819D0(v6, v7, a3, v8);
}

unint64_t sub_1000816E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexer.SharedIndexingState.LocalizedTypeRegistryKey(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_10001779C(*(v2 + 48) + v12 * v10, v8);
      if (sub_100089998())
      {
        v13 = *(v4 + 20);
        v14 = sub_100088A38();
        sub_100017740(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_100017740(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100081848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22 = a1;
  v8 = a3(0);
  v9 = sub_100012368(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v22 - v14;
  v27 = v6 + 64;
  v23 = v6;
  v16 = *(v6 + 32);
  sub_10005EB04();
  v18 = ~v17;
  for (i = a2 & ~v17; ((1 << i) & *(v27 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v18)
  {
    (*(v11 + 16))(v15, *(v23 + 48) + *(v11 + 72) * i, v8);
    sub_10008388C(v24, v25);
    v20 = sub_10008A228();
    (*(v11 + 8))(v15, v8);
    if (v20)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000819D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if (((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v11 = ~v6;
  v12 = *(v4 + 48);
  v13 = a1 != 4;
  v14 = a1 != 3;
  v15 = a1 != 2;
  v16 = a1 != 1;
  if (a2)
  {
    v13 = 1;
    v14 = 1;
    v15 = 1;
    v16 = 1;
  }

  if (a3 != 2)
  {
    v13 = 1;
  }

  v29 = v13;
  v17 = a3 != 2 || v14;
  v28 = v17;
  v18 = a3 != 2 || v15;
  v27 = v18;
  v19 = a3 != 2 || v16;
  if (a2 | a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a3 == 2;
  }

  while (1)
  {
    v21 = (v12 + 24 * v7);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v21 + 16);
    if (!v24)
    {
      if (a3)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v24 != 1)
    {
      break;
    }

    if (a3 != 1)
    {
      goto LABEL_28;
    }

LABEL_23:
    v25 = v23 == a1 && v22 == a2;
    if (v25 || (sub_10008AA68() & 1) != 0)
    {
      return v7;
    }

LABEL_28:
    v7 = (v7 + 1) & v11;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  switch(v23)
  {
    case 1:
      if (v19)
      {
        goto LABEL_28;
      }

      break;
    case 2:
      if (v27)
      {
        goto LABEL_28;
      }

      break;
    case 3:
      if (v28)
      {
        goto LABEL_28;
      }

      break;
    case 4:
      if (v29)
      {
        goto LABEL_28;
      }

      break;
    default:
      if (!v20)
      {
        goto LABEL_28;
      }

      break;
  }

  return v7;
}

void sub_100081C98()
{
  v1 = *v0;
  sub_100084CB0();
  sub_100081E88(v2, v3, v4, v5, v6, v7, v8, type metadata accessor for ToolKitIndexer.LocaleWithUsage);
  *v0 = v9;
}

id *sub_100081CE0(id *a1, int64_t a2, char a3)
{
  result = sub_100082070(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100081D00(id *a1, int64_t a2, char a3)
{
  result = sub_10008216C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100081D78(id *a1, int64_t a2, char a3)
{
  result = sub_1000822E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100081D98(id *a1, int64_t a2, char a3)
{
  result = sub_1000823F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_100081E10(id *a1, int64_t a2, char a3)
{
  result = sub_100082500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_100081E88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_100083EF8();
    if (v13 != v14)
    {
      sub_100084B10();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100083EE8();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100008DC0(a5, a6);
  v17 = a7(0);
  sub_100017A0C(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = (2 * ((v23 - v21) / v19));
LABEL_18:
  v25 = *(a7(0) - 8);
  if (a1)
  {
    v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    sub_100080B78(a4 + v26, v15, v22 + v26, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id *sub_100082070(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    v10 = sub_100080C44();
    v11 = *(v10 + 52);
    v12 = (*(v10 + 48) + 7) & 0x1FFFFFFF8;
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v13[2] = v8;
    v13[3] = (2 * ((v14 - 32) / 8));
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = (v13 + 4);
  v16 = (a4 + 32);
  if (v5)
  {
    if (v13 != a4 || &v16[8 * v8] <= v15)
    {
      memmove(v15, v16, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v8);
  }

  return v13;
}

id *sub_10008216C(id *result, int64_t a2, char a3, id *a4)
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
    sub_100008DC0(&qword_1000A6CA0, &qword_10008E330);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 24));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100008DC0(&qword_1000A6CA8, &qword_10008E338);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000822E0(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6CE0, &qword_10008E370);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 80));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[80 * v8] <= v12)
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000823F8(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&unk_1000A5A30, &unk_10008CA00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 16));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_100082500(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100008DC0(&qword_1000A6CD8, &qword_10008E358);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 32));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10008260C(uint64_t a1, void *a2)
{
  sub_100008DC0(&qword_1000A6C30, &qword_10008E2C8);
  isa = sub_10008A1B8().super.isa;

  v4 = [a2 copyWithSerializedParameters:isa];

  return v4;
}

uint64_t sub_100082694()
{
  v0 = sub_10008A268();
  v2 = v1;
  if (v0 == sub_10008A268() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    sub_100083EA8();
    v5 = sub_10008AA68();
  }

  return v5 & 1;
}

uint64_t *sub_100082710(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t sub_10008279C()
{
  result = qword_1000A6968;
  if (!qword_1000A6968)
  {
    sub_100010924(&qword_1000A6960, &qword_10008DDB0);
    sub_10008388C(&qword_1000A6970, &type metadata accessor for TypedValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6968);
  }

  return result;
}

unint64_t sub_100082850()
{
  result = qword_1000A6A18;
  if (!qword_1000A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6A18);
  }

  return result;
}

unint64_t sub_1000828A4()
{
  result = qword_1000A6AA0;
  if (!qword_1000A6AA0)
  {
    sub_100010924(&qword_1000A6A88, &qword_10008DE98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6AA0);
  }

  return result;
}

unint64_t sub_10008290C()
{
  result = qword_1000A6AC0;
  if (!qword_1000A6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6AC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitDeferredValueResolutionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ToolKitDeferredValueResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolKitLinkQueryCoercionError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for ToolKitLinkQueryCoercionError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100082C0C()
{
  result = qword_1000A6B40;
  if (!qword_1000A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B40);
  }

  return result;
}

unint64_t sub_100082C64()
{
  result = qword_1000A6B48;
  if (!qword_1000A6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000A6B48);
  }

  return result;
}

uint64_t sub_100082CB8()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100082D48()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100082DD8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = sub_1000849BC();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100082E10()
{
  sub_10005EC9C();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  swift_task_alloc();
  sub_100012480();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_100012334;

  return sub_10007FA84(v3, v4, v5, v7);
}

uint64_t sub_100082ED4()
{
  sub_100012604();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_100012480();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_100084BBC(v4);

  return v7(v6);
}

uint64_t sub_100082F6C()
{
  sub_100012604();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_100012480();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_100084BBC(v4);

  return v7(v6);
}

uint64_t sub_100083004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v16 = *(v10 + 48);
  v15 = *(v10 + 56);
  v17 = swift_task_alloc();
  v18 = sub_10008461C(v17);
  *v18 = v19;
  v18[1] = sub_1000105E8;
  sub_100084664();
  sub_1000853F8();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1000830C0()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083150()
{
  sub_100012604();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10008461C(v4);
  *v5 = v6;
  v5[1] = sub_100012334;
  v7 = sub_1000124C8();

  return v8(v7);
}

uint64_t sub_1000831F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100085470();
  sub_100060400();
  v11 = v10[2];
  v12 = v10[3];
  v13 = v10[4];
  v14 = v10[5];
  v16 = v10[6];
  v15 = v10[7];
  v17 = swift_task_alloc();
  v18 = sub_10008461C(v17);
  *v18 = v19;
  v18[1] = sub_100012334;
  sub_100083DB8();
  sub_1000853F8();

  return v26(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1000832A8()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083338()
{
  _Block_release(*(v0 + 32));
  v1 = sub_1000849BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100083378()
{
  sub_1000615C8();
  sub_10005EC9C();
  sub_100084F84();
  v0 = swift_task_alloc();
  v1 = sub_10008461C(v0);
  *v1 = v2;
  sub_100083B00(v1);
  sub_1000615B4();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100083408()
{
  sub_10005EC9C();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = swift_task_alloc();
  v7 = sub_10008461C(v6);
  *v7 = v8;
  v7[1] = sub_100012334;
  v9 = sub_100083DB8();

  return v10(v9);
}

uint64_t sub_1000834BC()
{
  sub_1000615C8();
  sub_10005EC9C();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = swift_task_alloc();
  v6 = sub_10008461C(v5);
  *v6 = v7;
  v6[1] = sub_100012334;
  sub_100084664();
  sub_1000615B4();

  return v12(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10008356C()
{
  sub_100012604();
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v5 = sub_10008461C(v4);
  *v5 = v6;
  v5[1] = sub_100012334;
  v7 = sub_1000124C8();

  return v8(v7);
}

uint64_t sub_100083614(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008DC0(&qword_1000A6BC0, &qword_10008E2B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083684(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000836F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007EBE4(v1[2], v1[3], v1[4]);
  *a1 = result;
  return result;
}

uint64_t sub_100083740(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10005EB04();
  result = sub_10008A848();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_10008377C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1000899A8();
  v8 = sub_100017A1C(v7);
  v10 = *(v9 + 16);
  v11 = v6 + *(v9 + 72) * v4;

  return v10(a4, v11, v8);
}

uint64_t sub_100083834()
{
  sub_10005F538();
  v3 = sub_100008DC0(v1, v2);
  sub_100017A1C(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000125C0();
  v7(v6);
  return v0;
}

uint64_t sub_10008388C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_10005E028();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000838D0(uint64_t a1)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100083988()
{

  return swift_once();
}

uint64_t sub_1000839C0(uint64_t a1)
{
  *(a1 + 8) = sub_10007CF64;
  result = *(v1 + 216);
  v3 = *(v1 + 32);
  return result;
}

uint64_t sub_1000839F8()
{
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[67];
  v8 = v0[63];
  v7 = v0[64];
  v11 = v0[60];
  v12 = v0[59];
  v13 = v0[56];
  v14 = v0[55];
  v15 = v0[53];
  v16 = v0[52];
  v17 = v0[49];
  v18 = v0[48];
  v9 = v0[47];
  v19 = v0[44];
  v20 = v0[41];
}

void sub_100083A84()
{
  v2 = v0[112];
  v3 = v0[111];
  *(v1 - 112) = v0[110];
  *(v1 - 104) = v2;
  *(v1 - 128) = v0[109];
  *(v1 - 120) = v3;
  v4 = v0[108];
  *(v1 - 136) = v0[107];
  v5 = v0[99];
  v12 = v0[98];
  v13 = v0[101];
  v6 = v0[92];
  v10 = v0[91];
  v11 = v0[94];
  v7 = v0[52];
  v8 = v0[46];
  v9 = v0[47];
}

uint64_t sub_100083AD4(uint64_t result)
{
  *(result + 8) = sub_100077A20;
  v2 = *(v1 + 536);
  v3 = *(v1 + 208);
  return result;
}

uint64_t sub_100083B00(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100083B24()
{
  *(v2 - 88) = v0;
  v5 = v1[62];
  v4 = v1[63];
  v6 = v1[61];
  v7 = v1[58];
  v8 = v1[54];
  v9 = v1[55];
  v10 = v1[51];
  v12 = v1[47];
  v11 = v1[48];
  v13 = v1[46];
  v15 = v1[45];
  v16 = v1[44];
  v17 = v1[43];
  v18 = v1[42];
  v19 = v1[41];
  v20 = v1[38];
  v21 = v1[37];
  v22 = v1[36];
  v23 = v1[35];
  v24 = v1[32];
  v25 = v1[31];
}

uint64_t sub_100083B80()
{
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[61];
  v5 = v0[58];
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[51];
  v10 = v0[47];
  v9 = v0[48];
  v11 = v0[46];
  v13 = v0[45];
  v14 = v0[44];
  v15 = v0[43];
  v16 = v0[42];
  v17 = v0[41];
  v18 = v0[38];
  v19 = v0[37];
  v20 = v0[36];
  v21 = v0[35];
  v22 = v0[32];
  v23 = v0[31];
}

uint64_t sub_100083BD8()
{
  result = v0[112];
  v2 = v0[109];
  v3 = v0[106];
  v4 = v0[105];
  v5 = v0[104];
  v6 = v0[101];
  v7 = v0[100];
  v8 = v0[97];
  v9 = v0[94];
  v10 = v0[93];
  v11 = v0[90];
  return result;
}

void sub_100083C08()
{
  *(v2 - 128) = v1[107];
  *(v2 - 120) = v0;
  *(v2 - 136) = v1[101];
  v3 = v1[99];
  v4 = v1[98];
}

void sub_100083C54()
{
  v1 = v0[101];
  v2 = v0[100];
  v3 = v0[97];
  v4 = v0[94];
  v5 = v0[93];
}

uint64_t sub_100083C6C()
{
  v7 = v0[87];
  v8 = v0[84];
  v9 = v0[81];
  v10 = v0[78];
  v11 = v0[75];
  v12 = v0[72];
  v13 = v0[69];
  v14 = v0[66];
  v15 = v0[63];
  v16 = v0[62];
  v17 = v0[59];
  v18 = v0[58];
  v19 = v0[57];
  v20 = v0[56];
  v21 = v0[53];
  v22 = v0[52];
  v3 = v0[50];
  *(v1 - 136) = v0[51];
  *(v1 - 128) = v3;
  v4 = v0[48];
  *(v1 - 120) = v0[49];
  *(v1 - 112) = v4;
  v5 = v0[42];
  *(v1 - 104) = v0[45];
  *(v1 - 96) = v5;
}

uint64_t sub_100083D00()
{
  v1 = v0[74];
  v2 = v0[67];
  v3 = v0[65];
  result = v0[62];
  v5 = v0[59];
  v6 = *(v0[60] + 8);
  return result;
}

uint64_t sub_100083D24(uint64_t a1)
{
  *(a1 + 8) = sub_10006F3F0;
  v2 = v1[21];
  v3 = v1[19];
  v4 = v1[15];
  return v1[6];
}

uint64_t sub_100083D58()
{
  v3 = v0[67];
  v13 = v0[62];
  *(v1 - 88) = v0[59];
  v4 = v0[53];
  v5 = v0[54];
  v6 = v0[52];
  v8 = v0[31];
  v7 = v0[32];
  v10 = v0[29];
  v9 = v0[30];
  v11 = v0[28];

  return sub_100088AC8();
}

void sub_100083DA4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[67];
}

void sub_100083DCC()
{
  *(v2 - 128) = *(v1 + 856);
  *(v2 - 120) = v0;
  *(v2 - 136) = *(v1 + 808);
}

uint64_t sub_100083DE0()
{
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[23];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[11];
}

void sub_100083E5C()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[14];
  v5 = v0[15];
}

uint64_t sub_100083EB8()
{
  result = v0 + 8;
  v3 = *(v0 + 8);
  v4 = *(v1 - 88);
  return result;
}

void sub_100083ED8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
}

uint64_t sub_100083F08()
{
  result = v0[112];
  v2 = v0[109];
  v3 = v0[106];
  return result;
}

void sub_100083F18()
{
  v2 = v0[112];
  v3 = v0[111];
  *(v1 - 112) = v0[110];
  *(v1 - 104) = v2;
  v4 = v0[109];
}

void sub_100083F48()
{
  v2 = v0[74];
  v3 = v0[67];
  v4 = v0[65];
  v6 = v0[61];
  v5 = v0[62];
  v7 = v0[59];
  v8 = v0[60];
}

uint64_t sub_100083F9C()
{
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[27];
  v5 = v0[24];
  v6 = v0[21];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[7];
  v13 = v0[4];
}

uint64_t sub_100083FD4()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *(v0[17] + 96);
  return v0[18];
}

void sub_100083FF4()
{
  *(v2 - 112) = *(v1 + 880);
  *(v2 - 104) = v0;
  v3 = *(v1 + 872);
}

void sub_100084014(uint64_t a1@<X8>)
{
  v3 = v1[14];
  v2 = v1[15];
  v4 = v1[13];
  v5 = v1[10];
  v7 = v1[7];
  v8 = v1[6];
  v6 = *(a1 + 8);
}

uint64_t sub_100084034()
{

  return sub_100088958();
}

uint64_t sub_100084054()
{

  return sub_100088958();
}

uint64_t sub_100084090()
{
  result = v0[25];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[10];
  return result;
}

void sub_1000840BC()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
}

uint64_t sub_1000840DC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000840EC()
{
  v17 = v0[119];
  v18 = v0[120];
  v3 = v0[115];
  v14 = v0[113];
  *(v1 - 112) = v0[112];
  v4 = v0[111];
  *(v1 - 128) = v0[110];
  v5 = v0[108];
  v21 = v0[107];
  v22 = v0[109];
  *(v1 - 104) = v0[104];
  *(v1 - 136) = v0[103];
  *(v1 - 120) = v0[102];
  v6 = v0[99];
  v19 = v0[98];
  v20 = v0[101];
  v7 = v0[97];
  v8 = v0[96];
  v9 = v0[95];
  v10 = v0[92];
  v15 = v0[91];
  v16 = v0[94];
  v11 = v0[46];
  v13 = v0[52];
}

void sub_100084188()
{
  v1 = v0[60];
  v2 = v0[59];
  v3 = v0[56];
  v4 = v0[55];
  v5 = v0[53];
  v6 = v0[52];
}

uint64_t sub_1000841B0()
{
  result = v0[25];
  v2 = v0[23];
  v3 = *(v0[24] + 8);
  return result;
}

void sub_1000841C4()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[90];
  v4 = v0[87];
}

uint64_t sub_1000841D8()
{
  result = v0[58];
  v2 = v0[56];
  v3 = v0[38];
  v4 = *(v0[57] + 8);
  return result;
}

uint64_t sub_100084200()
{
  result = v0[61];
  v2 = v0[59];
  v3 = v0[32];
  v4 = *(v0[60] + 32);
  return result;
}

void sub_100084214()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];
  v4 = v0[48];
  v5 = v0[39];
  v6 = v0[40];
}

void *sub_100084228()
{
  result = v1[50];
  v3 = v1[46];
  v4 = v1[47];
  *result = v0;
  return result;
}

uint64_t sub_10008423C()
{
  v20 = v0[120];
  v3 = v0[115];
  v16 = v0[113];
  v17 = v0[119];
  *(v1 - 112) = v0[112];
  v4 = v0[111];
  v5 = v0[110];
  *(v1 - 136) = v0[109];
  *(v1 - 128) = v5;
  v6 = v0[108];
  v21 = v0[107];
  *(v1 - 104) = v0[105];
  v7 = v0[103];
  *(v1 - 120) = v0[102];
  v8 = v0[99];
  v18 = v0[98];
  v19 = v0[101];
  v9 = v0[97];
  v10 = v0[96];
  v11 = v0[95];
  v12 = v0[92];
  v13 = v0[91];
  v15 = v0[94];
}

uint64_t sub_1000842DC()
{
  result = v0[80];
  v3 = v0[79];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[70];
  v9 = v0[67];
  v10 = v0[64];
  v12 = v0[63];
  v13 = v0[60];
  v14 = v0[59];
  v15 = v0[56];
  v16 = v0[55];
  v17 = v0[53];
  v18 = v0[52];
  v19 = v0[49];
  v20 = v0[48];
  v21 = v0[47];
  v11 = v0[41];
  *(v1 - 96) = v0[44];
  *(v1 - 88) = v11;
  return result;
}

uint64_t sub_10008433C()
{
  v7 = v0[90];
  v8 = v0[87];
  v9 = v0[84];
  v10 = v0[81];
  v11 = v0[78];
  v12 = v0[75];
  v13 = v0[72];
  v14 = v0[69];
  v15 = v0[66];
  v16 = v0[63];
  v17 = v0[62];
  v18 = v0[59];
  v19 = v0[58];
  v20 = v0[57];
  v21 = v0[56];
  v22 = v0[53];
  v23 = v0[52];
  v24 = v0[51];
  v4 = v0[48];
  v3 = v0[49];
  *(v1 - 136) = v0[50];
  *(v1 - 128) = v3;
  v5 = v0[45];
  *(v1 - 120) = v4;
  *(v1 - 112) = v5;
  *(v1 - 104) = v0[42];
}

uint64_t sub_100084404()
{

  return sub_10008AA68();
}

uint64_t sub_100084428()
{
  *(v0 + 8) = sub_100070BCC;
  v2 = v1[35];
  v3 = v1[29];
  result = v1[15];
  v5 = v1[11];
  v6 = v1[4];
  v7 = v1[5];
  return result;
}

uint64_t sub_100084460()
{

  return sub_100088918();
}

uint64_t sub_10008448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int *a21)
{

  return sub_1000615DC(v21, v22, a21, v23);
}

uint64_t sub_1000844B0(uint64_t a1)
{
  *(a1 + 8) = sub_10006E698;
  result = *(v1 + 304);
  v3 = *(v1 + 280);
  return result;
}

uint64_t sub_1000844E0()
{
  v1 = *(v0 + 224);
  result = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(*(v0 + 136) + 8);
  return result;
}

uint64_t sub_100084520(uint64_t a1)
{
  *(a1 + 8) = sub_10006B958;
  result = *(v1 + 456);
  v4 = *(v1 + 360);
  v5 = *(v2 - 88);
  return result;
}

uint64_t sub_10008458C()
{
  result = v0[80];
  v2 = v0[79];
  v3 = v0[76];
  return result;
}

void sub_10008459C()
{
  v1 = v0[49];
  v4 = v0[39];
  v3 = v0[38];
  v2 = *(v0[50] + 96);
}

uint64_t sub_1000845C4()
{
  v3 = v0[44];
  v2 = v0[45];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[39];
  v7 = v0[36];
  v8 = v0[33];
  v9 = v0[30];
  v10 = v0[27];
  v13 = v0[26];
  v14 = v0[25];
  v15 = v0[22];
  v16 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v11 = v0[14];
  v19 = v0[11];
  v20 = v0[10];
  v21 = v0[7];
}

uint64_t sub_100084628()
{
  v3 = *v1;
  *(v2 - 104) = *(v0 + 1160);
  *(v2 - 112) = *(v0 + 936);
  v4 = *(v0 + 928);
  v5 = *(v0 + 896);
  v6 = *(v0 + 832);
  v7 = *(v0 + 816);
  v8 = *(v0 + 416);
  v9 = *(v0 + 368);
  v10 = *(*(v0 + 376) + 32);
  return *(v0 + 408);
}

uint64_t sub_100084670(uint64_t a1)
{
  *(v1 + 136) = a1;
  result = *(v2 - 112);
  v4 = *(v2 - 104);
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100084694()
{
  *(v0 + 56) = *(v1 - 120);
  *(v0 + 24) = sub_10006B004;

  return swift_continuation_init();
}

uint64_t sub_1000846D0()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
}

void sub_100084704()
{
  v2[12] = sub_100083940;
  v2[13] = v0;
  v2[14] = v1;
}

void sub_10008471C()
{
  v9 = v0[101];
  v10 = v0[107];
  v1 = v0[99];
  v8 = v0[98];
  v2 = v0[92];
  v6 = v0[91];
  v7 = v0[94];
  v3 = v0[52];
  v4 = v0[46];
  v5 = v0[47];
}

void sub_100084750()
{
  *(v3 - 136) = v1 + 2;
  v1[129] = v0;
  *(v3 - 120) = v1 + 29;
  *(v3 - 104) = v1 + 10;
  v5 = v1[94];
  v6 = v1[93];
  v7 = v1[92];
  v8 = v1[91];
  v12 = v1[52];
  v9 = v1[47];
  v10 = v1[48];
  v11 = v1[46];
}

uint64_t sub_10008479C()
{
  v1 = v0[80];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  result = v0[73];
  v8 = v0[68];
  v9 = *(v0[69] + 8);
  return result;
}

uint64_t sub_100084868()
{

  return swift_beginAccess();
}

uint64_t sub_100084888()
{
  v3 = *(v1 + 664);
  v4 = *(v1 + 392);
  v5 = *(v0 + 56) + *(*(v1 + 400) + 72) * v2;
  v6 = *(*(v1 + 400) + 16);
  return *(v1 + 408);
}

void sub_1000848F8()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
}

uint64_t sub_100084908()
{
  v2 = v0[18];
  result = v0[19];
  v3 = v0[16];
  v4 = *(v0[17] + 8);
  return result;
}

void sub_10008491C()
{
  v1 = v0[34];
  v2 = v0[31];
  v10 = v0[32];
  v11 = v0[33];
  v3 = v0[29];
  v9 = v0[30];
  v4 = v0[28];
  v5 = v0[25];
  v6 = v0[13];
  v7 = v0[14];
  v8 = v0[12];
}

void sub_10008496C(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_100084988()
{
  v2 = v0[41];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[32];
  v6 = v0[29];
}

uint64_t sub_1000849CC()
{
  v2 = v0[99];
  v10 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[92];
  v7 = v0[91];
  v9 = v0[94];
}

uint64_t sub_100084A08()
{
  result = v0[51];
  v2 = v0[49];
  v3 = *(v0[50] + 8);
  return result;
}

uint64_t sub_100084A18()
{
  result = v0[75];
  v2 = v0[73];
  v3 = v0[72];
  return result;
}

void sub_100084A34()
{
  v1 = v0[23];
  v2 = v0[47];
  v3 = v0[39];
  v4 = v0[40];
}

uint64_t sub_100084A68()
{
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v10 = v0[94];
  v5 = v0[92];
  v9 = v0[91];
  v6 = v0[46];
  v8 = v0[52];
}

uint64_t sub_100084BBC(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100084BE8()
{
  v2 = v0[44];
  result = v0[45];
  v3 = v0[40];
  v4 = v0[41];
  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[26];
  v10 = v0[27];
  return result;
}

void sub_100084C14()
{
  *(v1 - 80) = v0[80];
  v2 = v0[78];
  v3 = v0[76];
  v5 = v0[77];
  v4 = v0[75];
}

void sub_100084C54()
{
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  *(v1 - 104) = v0[110];
  *(v1 - 96) = v3;
  *(v1 - 120) = v0[109];
  *(v1 - 112) = v4;
}

uint64_t sub_100084C80@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 1024) = a1;
  v3 = *(v1 + 1160);
  v4 = *(v1 + 936);
  v5 = *(v1 + 928);
  v6 = *(v1 + 896);
  v7 = *(v1 + 840);
  v8 = *(v1 + 816);

  return sub_100089B78();
}

uint64_t sub_100084CC8()
{

  return swift_beginAccess();
}

uint64_t sub_100084CE8()
{

  return sub_100088958();
}

id sub_100084D08()
{
  v3 = v1[92];
  v7 = v1[91];
  v8 = v1[94];
  v4 = v1[46];
  v6 = v1[52];

  return v0;
}

uint64_t sub_100084D7C()
{
  v4 = v0[49];
  v5 = v0[48];
  v2 = v0[47];
  v6 = v0[44];
  v7 = v0[41];
}

uint64_t sub_100084DB4()
{

  return sub_10008A268();
}

uint64_t sub_100084DDC()
{
}

uint64_t sub_100084DF4@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

void sub_100084E14()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
}

uint64_t sub_100084E24(uint64_t result)
{
  *(v1 + 416) = result;
  v2 = *(v1 + 376);
  return result;
}

uint64_t sub_100084E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_100079E20(v20, v18, v19, a18);
}

uint64_t sub_100084E6C()
{
  v5 = v1[48];
  v4 = v1[49];
  *(v2 - 136) = v0;
  *(v2 - 128) = v4;
  v6 = v1[45];
  *(v2 - 120) = v5;
  *(v2 - 112) = v6;
  *(v2 - 104) = v1[42];
}

uint64_t sub_100084E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009158(a1, 1, 1, a4);
}

void sub_100084EB8()
{
  v1 = v0[32];
  v7 = v0[33];
  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v5 = v0[29];
  v6 = v0[25];
}

void sub_100084ED0()
{
  v3 = v1[120];
  v4 = v1[119];
  *(v2 - 152) = v0;
  *(v2 - 144) = v4;
  v5 = v1[113];
  v6 = v1[112];
}

uint64_t sub_100084EE8(uint64_t result)
{
  *(v1 + 16) = v2;
  *(v1 + 24) = 2 * ((result - 32) / 8);
  return result;
}

void sub_100084F24()
{
  v1 = *(*(v0 - 144) + 776);
  v2 = *(*(v0 - 144) + 768);
  v3 = *(v0 - 144);
}

uint64_t sub_100084F3C()
{
  v3 = *(v2 - 136);
  v4 = *(v0 + 16);
  return v1;
}

void sub_100084F84()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
}

void sub_100084F9C()
{
  v3 = v0[80];
  v1 = v0[78];
  v2 = v0[77];
}

void *sub_100084FB4()
{
  result = v2[49];
  v5 = v2[46];
  v6 = v2[47];
  *result = v0;
  result[1] = v3;
  result[2] = v1;
  return result;
}

uint64_t sub_100084FF0()
{
  *(v1 - 152) = v0;

  return swift_willThrow();
}

uint64_t sub_100085008()
{
  v2 = v0[109];
  v3 = v0[45];
  v5 = v0[41];
  v4 = v0[42];
  v6 = v0[40];

  return sub_10008A068();
}

uint64_t sub_10008502C()
{

  return sub_100079E20(v2, v0, v1, v3);
}

uint64_t sub_100085050@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;

  return swift_willThrow();
}

uint64_t sub_10008506C()
{

  return swift_willThrow();
}

uint64_t sub_100085084()
{

  return swift_willThrow();
}

uint64_t sub_10008509C()
{

  return sub_100088958();
}

uint64_t sub_1000850D8()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 128);
  return *(v1 - 120);
}

void sub_1000850FC()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v3 = *(v0 + 668);
}

void sub_100085110()
{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[107];
  v4 = v0[97];
}

void sub_100085124()
{
  v2 = v0[132];
  *(v1 - 168) = v0[133];
  *(v1 - 160) = v2;
  v3 = v0[130];
}

uint64_t sub_10008522C()
{
  v1 = *(*(v0 - 136) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 120);
  return result;
}

void sub_100085270()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
}

void *sub_100085290()
{
  result = v1[50];
  v3 = v1[46];
  v4 = v1[47];
  *result = v0;
  return result;
}

uint64_t sub_1000852A4()
{
  result = *(v0 - 112);
  v2 = *(v0 - 128);
  return result;
}

void sub_1000852B0()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[88];
}

void sub_1000852D0()
{
  *(v2 - 112) = *(v1 + 880);
  *(v2 - 104) = v0;
  *(v2 - 120) = *(v1 + 872);
}

uint64_t sub_1000852F0()
{
  result = v0 - 68;
  v2 = *(v0 - 128);
  return result;
}

void sub_100085310()
{
  v2[73] = v1;
  v2[72] = v0;
  v3 = v2[65];
  v4 = v2[39];
}

uint64_t sub_1000853D8()
{
  v2 = v0[67];
  v3 = v0[55];
  v5 = v0[52];
  v4 = v0[53];

  return sub_100088AC8();
}

uint64_t sub_100085410()
{
  v2 = *(v0 - 128);

  return sub_10008A728();
}

uint64_t sub_100085430()
{
  v2 = v0[44];
  v3 = v0[45];
  v5 = v0[42];
  v4 = v0[43];
  v6 = v0[22];
  v7 = v0[3];
  v8 = v0[4];
}

uint64_t sub_100085450()
{
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
}

void sub_100085488(id a1)
{
  v3 = v1[119];
  v4 = v1[49];
  v5 = v1[46];
  v6 = v1[47];
}

uint64_t sub_1000854A8()
{

  return swift_allocObject();
}

uint64_t sub_1000854C0()
{
}

id sub_1000854D8()
{
  v3 = *(v1 + 3248);

  return [v0 v3];
}

id sub_1000854F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);

  return v3;
}

uint64_t sub_100085508()
{
  v2 = *(v0 + 496);
  v3 = *(v0 + 216);
}

void sub_10008578C(uint64_t a1, void *a2)
{
  v3 = WFHandoffSourceKey;
  v4 = a2;
  v5 = [v4 objectForKey:v3];
  v6 = v5;
  v7 = WFWorkflowRunSourceHandoff;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKey:WFHandoffWorkflowControllerStateKey];

  (*(*(a1 + 32) + 16))();
}

void sub_1000861DC(uint64_t a1, void *a2)
{
  v3 = [a2 parameters];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v3 objectForKey:@"webpageURL"];
  v6 = [v3 objectForKey:@"userInfoURL"];
  v7 = [NSURL URLWithString:v6];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100086324;
  v12[3] = &unk_10009F9F0;
  v8 = *(a1 + 40);
  v9 = *(a1 + 32);
  v14 = v5;
  v15 = v9;
  v13 = v4;
  v10 = v5;
  v11 = v4;
  [v8 deserializeUserInfoAtURL:v7 completionHandler:v12];
}

void sub_1000865B8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10008681C;
  v26[3] = &unk_10009FC98;
  v13 = v11;
  v29 = v13;
  v14 = v10;
  v15 = *(a1 + 32);
  v27 = v14;
  v28 = v15;
  v16 = objc_retainBlock(v26);
  if ([v9 count])
  {
    v17 = [v14 url];
    [v17 startAccessingSecurityScopedResource];

    v25 = 0;
    v18 = [[WFToolKitIndexer alloc] initWithClientIdentifier:@"BackgroundShortcutRunner" error:&v25];
    v19 = v25;
    if (v19)
    {
      (*(*(a1 + 48) + 16))();
      (v16[2])(v16, @"ToolKit indexing failed because database failed to initialize");
    }

    else
    {
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_1000868B8;
      v21[3] = &unk_10009FCC0;
      v20 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = v16;
      v22 = v18;
      [(WFToolKitIndexer *)v22 reindexWithRequest:v20 completionHandler:v21];
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v19 = [NSString stringWithFormat:@"ToolKit indexing failed with result: %@", v9];
    (v16[2])(v16, v19);
  }
}

void sub_10008681C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  v6 = [*(a1 + 32) url];
  [v6 stopAccessingSecurityScopedResource];

  v7 = [*(a1 + 40) stateMachine];
  [v7 exitWithReason:v5];
}

uint64_t sub_1000868B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[WFShortcutRunnerSandboxExtensionManager sharedManager];
  [v4 resignIssuedExtensionsWithReason:@"done with ToolKit indexing"];

  (*(*(a1 + 40) + 16))();
  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void sub_100086BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 | a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v3 + 16))(v3, 0, v6);
  }
}

void sub_100086D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2 | a3)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 32);

    v4(v5);
  }

  else
  {
    v6 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(v3 + 16))(v3, 0, v6);
  }
}

void sub_10008760C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) parameterKey];
    v8 = [v5 parameterForKey:v7];

    if (v8)
    {
      v9 = v8;
      v10 = [v9 conformsToProtocol:&OBJC_PROTOCOL___WFParameterValuePickable];
      v11 = v10;
      if (v10)
      {
        v12 = v9;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;

      if (v11)
      {
        v14 = *(a1 + 40);
        if (v14)
        {
          v15 = [WFToolKitHelper decodeSearchStringInEncodedQuery:v14 error:0];
        }

        else
        {
          v15 = 0;
        }

        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100087BF8;
        v27[3] = &unk_10009FBF8;
        v33 = *(a1 + 56);
        v28 = v15;
        v29 = v9;
        v30 = v29;
        v31 = v5;
        v32 = *(a1 + 48);
        v26 = v15;
        [v30 wf_loadStatesWithSearchTerm:v26 completionHandler:v27];
      }

      else
      {
        v34 = NSLocalizedDescriptionKey;
        v22 = [*(a1 + 32) parameterKey];
        v23 = [NSString stringWithFormat:@"Parameter %@ is not enumerable: %@.", v22, objc_opt_class()];
        v35 = v23;
        v24 = [NSDictionary dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v25 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v24];

        (*(*(a1 + 56) + 16))();
        v6 = v25;
      }
    }

    else
    {
      v36 = NSLocalizedDescriptionKey;
      v18 = [*(a1 + 32) parameterKey];
      v19 = [NSString stringWithFormat:@"Parameter %@ not found.", v18];
      v37 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      v21 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v20];

      (*(*(a1 + 56) + 16))();
      v6 = v21;
    }
  }

  else
  {
    v38 = NSLocalizedDescriptionKey;
    v39 = @"Action backing this tool not found.";
    v16 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
    v17 = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:v16];

    (*(*(a1 + 56) + 16))();
    v6 = v17;
  }
}

id sub_100087A20(void *a1, uint64_t a2)
{
  v3 = a1;
  if (v3 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = getWFGeneralLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315906;
      v9 = "WFEnforceClass";
      v10 = 2114;
      v11 = v3;
      v12 = 2114;
      v13 = objc_opt_class();
      v14 = 2114;
      v15 = a2;
      v6 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "%s Taking sandbox extensions for execution", &v8, 0x2Au);
    }

    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

id sub_100087B48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = sub_100087A20(v3, v4);

  v6 = [v5 name];
  v7 = [*(a1 + 32) propertyName];
  v8 = [v6 isEqualToString:v7];

  return v8;
}

void sub_100087BF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a4)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) length];
    if (v7)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100087DBC;
      v17[3] = &unk_10009FBA8;
      v14 = &v18;
      v18 = *(a1 + 40);
      v13 = &v19;
      v19 = *(a1 + 32);
      v8 = [v6 wf_filteredCollectionUsingBlock:v17];
    }

    else
    {
      v8 = v6;
    }

    v9 = [v8 allItems];
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100087E04;
    v15[3] = &unk_10009FBD0;
    v12 = *(a1 + 64);
    v16 = *(a1 + 72);
    [WFToolKitHelper produceEncodedTypedValuesFromPossibleStates:v9 ofParameter:v10 inAction:v11 encodedOptions:v12 completionBlock:v15];

    if (v7)
    {
    }
  }
}

id sub_100087DBC(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) wf_pickerLocalizedTitleForState:a2];
  v4 = [v3 localizedStandardContainsString:*(a1 + 40)];

  return v4;
}

id sub_100088020(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [WFToolKitHelper produceEncodedTypedValueFromCollection:a2 withResolutionRequest:*(a1 + 32) completionBlock:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void sub_1000885D8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) name];
    [v3 injectResolvedContent:v5 asVariableWithName:v4 completionHandler:*(a1 + 48)];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

id sub_10008874C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000887D0;
  v3[3] = &unk_10009FAE0;
  v4 = *(a1 + 40);
  return [WFToolKitHelper createActionFromEncodedToolInvocation:v1 fetchingDefaultValues:1 completion:v3];
}

void sub_1000887D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v8 = +[NSAssertionHandler currentHandler];
    [v8 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"WFIsolatedShortcutRunner.m" lineNumber:59 description:{@"Faulty encoded tool invocation: %@", v6}];
  }

  v7 = getWFToolKitExecutionLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[WFIsolatedShortcutRunner runToolWithInvocation:]_block_invoke_2";
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Stepping with action %@", buf, 0x16u);
  }

  [*(a1 + 32) stepWithAction:v5];
}