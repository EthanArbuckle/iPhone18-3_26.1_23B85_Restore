uint64_t sub_1BD510BBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccountBalance(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = (&v20 - v11);
  v14 = *(a1 + 16);
  if (v14)
  {
    v21 = v10;
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    result = sub_1BD0E5D5C(v15, &v20 - v11);
    if (v14 == 1)
    {
LABEL_3:
      sub_1BD0E5DC0(v13, a2);
      return (*(v21 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        sub_1BD0E5D5C(v15 + *(v21 + 72) * v18, v7);
        if (*v7 >= *v13)
        {
          result = sub_1BD0E5E24(v7);
        }

        else
        {
          sub_1BD0E5E24(v13);
          result = sub_1BD0E5DC0(v7, v13);
        }

        ++v18;
        if (v19 == v14)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v10 + 56);

    return v17(a2, 1, 1, v4, v12);
  }

  return result;
}

void static NearbyPeerPaymentVFXUtilities.updateCharacterPlacement(formattedAmount:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1BD50FF54(a1, a2, v70);
  v4 = v72;
  if (!v72)
  {
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  v50 = v72;
  v5 = *v70;
  v6 = *&v70[1];
  v7 = *&v70[2];
  v8 = *&v70[3];
  x = v71.origin.x;
  y = v71.origin.y;
  width = v71.size.width;
  height = v71.size.height;
  v67 = CGRectGetWidth(v71);
  v73.origin.x = v5;
  v73.origin.y = v6;
  v73.size.width = v7;
  v73.size.height = v8;
  v68 = v67 - CGRectGetWidth(v73);
  v48 = y;
  v49 = x;
  v74.origin.x = x;
  v74.origin.y = y;
  v46 = height;
  v47 = width;
  v74.size.width = width;
  v74.size.height = height;
  v13 = CGRectGetHeight(v74);
  v75.origin.x = v5;
  v75.origin.y = v6;
  v75.size.width = v7;
  v75.size.height = v8;
  v66 = (v13 - CGRectGetHeight(v75)) * 0.5;
  v69 = v68 * 0.5;
  v14 = *(v4 + 16);
  if (v14)
  {
    sub_1BE048C84();
    v15 = (v4 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      v19 = *(v15 - 1);
      v20 = *v15;
      v76.origin.x = v5;
      v76.origin.y = v6;
      v76.size.width = v7;
      v76.size.height = v8;
      v64 = CGRectGetWidth(v76);
      v77.origin.x = v5;
      v77.origin.y = v6;
      v77.size.width = v7;
      v77.size.height = v8;
      v62 = CGRectGetHeight(v77);
      v78.origin.x = v17;
      v78.origin.y = v18;
      v78.size.width = v19;
      v78.size.height = v20;
      v60 = CGRectGetWidth(v78);
      v79.origin.x = v5;
      v79.origin.y = v6;
      v79.size.width = v7;
      v79.size.height = v8;
      v58 = CGRectGetWidth(v79);
      v80.origin.x = v17;
      v80.origin.y = v18;
      v80.size.width = v19;
      v80.size.height = v20;
      v54 = CGRectGetHeight(v80);
      v81.origin.x = v5;
      v81.origin.y = v6;
      v81.size.width = v7;
      v81.size.height = v8;
      v56 = CGRectGetHeight(v81);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1BD1D8054(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_1BD1D8054((v21 > 1), v22 + 1, 1, v16);
      }

      v23.f64[0] = v17 - v69;
      v24.f64[0] = v60;
      v24.f64[1] = v54;
      v23.f64[1] = v18 - v66;
      v25.f64[0] = v64;
      v25.f64[1] = v62;
      v26.f64[0] = v58;
      v26.f64[1] = v56;
      *(v16 + 2) = v22 + 1;
      *&v16[16 * v22 + 32] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v24, v26)), vdivq_f64(v23, v25));
      v15 += 6;
      --v14;
    }

    while (v14);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v27 = *(v16 + 2);
  v28 = v27 - 9;
  if (v27 > 9)
  {
    __break(1u);
LABEL_32:
    v16 = sub_1BD1D8054(0, v27 + 1, 1, v16);
LABEL_23:
    v42 = *(v16 + 2);
    do
    {
      v43 = *(v16 + 3);
      if (v42 >= v43 >> 1)
      {
        v16 = sub_1BD1D8054((v43 > 1), v42 + 1, 1, v16);
      }

      *(v16 + 2) = v42 + 1;
      v44 = &v16[16 * v42];
      *(v44 + 4) = 0;
      *(v44 + 5) = 0;
      ++v42;
    }

    while (!__CFADD__(v28++, 1));
    goto LABEL_14;
  }

  if (v27 != 9)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

LABEL_14:
  v29 = *(v4 + 16);
  if (v29)
  {
    sub_1BE048C84();
    v30 = (v4 + 72);
    v31 = MEMORY[0x1E69E7CC0];
    do
    {
      v33 = *(v30 - 3);
      v32 = *(v30 - 2);
      v34 = *(v30 - 1);
      v35 = *v30;
      v82.origin.x = v33;
      v82.origin.y = v32;
      v82.size.width = v34;
      v82.size.height = *v30;
      MidX = CGRectGetMidX(v82);
      v83.origin.x = v33;
      v83.origin.y = v32;
      v83.size.width = v34;
      v83.size.height = v35;
      CGRectGetMidY(v83);
      v84.origin.x = v5;
      v84.origin.y = v6;
      v84.size.width = v7;
      v84.size.height = v8;
      v61 = CGRectGetWidth(v84);
      v85.origin.x = v5;
      v85.origin.y = v6;
      v85.size.width = v7;
      v85.size.height = v8;
      v57 = CGRectGetHeight(v85);
      v86.origin.x = v5;
      v86.origin.y = v6;
      v86.size.width = v7;
      v86.size.height = v8;
      v63 = CGRectGetWidth(v86);
      v87.origin.x = v5;
      v87.origin.y = v6;
      v87.size.width = v7;
      v87.size.height = v8;
      v59 = CGRectGetHeight(v87);
      v88.origin.x = v33;
      v88.origin.y = v32;
      v88.size.width = v34;
      v88.size.height = v35;
      v55 = CGRectGetWidth(v88);
      v89.origin.x = v5;
      v89.origin.y = v6;
      v89.size.width = v7;
      v89.size.height = v8;
      v53 = CGRectGetWidth(v89);
      v90.origin.x = v33;
      v90.origin.y = v32;
      v90.size.width = v34;
      v90.size.height = v35;
      v52 = CGRectGetHeight(v90);
      v91.origin.x = v5;
      v91.origin.y = v6;
      v91.size.width = v7;
      v91.size.height = v8;
      v51 = CGRectGetHeight(v91);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1BD1D8054(0, *(v31 + 2) + 1, 1, v31);
      }

      v37 = *(v31 + 2);
      v36 = *(v31 + 3);
      if (v37 >= v36 >> 1)
      {
        v31 = sub_1BD1D8054((v36 > 1), v37 + 1, 1, v31);
      }

      v38.f64[0] = MidX - v69 - v61 * 0.5;
      v40.f64[0] = v53;
      v39.f64[0] = v55;
      v39.f64[1] = v52;
      v38.f64[1] = v32 - v66 - v57 * 0.5;
      v40.f64[1] = v51;
      v41.f64[0] = v63;
      v41.f64[1] = v59;
      *(v31 + 2) = v37 + 1;
      *&v31[16 * v37 + 32] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v39, v40)), vdivq_f64(v38, v41));
      v30 += 6;
      --v29;
    }

    while (v29);
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v16;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v49;
  *(a3 + 48) = v48;
  *(a3 + 56) = v47;
  *(a3 + 64) = v46;
  *(a3 + 72) = v50;
  *(a3 + 88) = v31;
}

id VFXNode.vfxNode(node:)()
{
  NearbyPeerPaymentVFXUtilities.Node.rawValue.getter();
  v1 = sub_1BE052404();

  v2 = [v0 childNodeWithName_];

  return v2;
}

Swift::String __swiftcall VFXNode.behaviorGraphValue(key:)(PassKitUI::NearbyPeerPaymentVFXUtilities::BehaviorGraph key)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3EC90);
  v2 = swift_allocObject();
  v3 = [v1 behaviorGraph];
  if (v3)
  {
    v4 = v3;
    NearbyPeerPaymentVFXUtilities.BehaviorGraph.rawValue.getter();
    v5 = sub_1BE052404();

    v6 = [v4 objectForKeyedSubscript_];

    if (v6)
    {
      sub_1BE053624();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    *(v2 + 16) = v10;
    *(v2 + 32) = v11;
  }

  else
  {
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
  }

  v7 = sub_1BE0524A4();
  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t sub_1BD5114BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE051F54();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 32);
  v27 = v4;
  v28 = a1;
  v21[3] = a1;
  v29 = a2;
  v30 = a3;
  v21[2] = a3;
  v24 = sub_1BD512D30;
  v25 = &v26;
  sub_1BE048C84();
  sub_1BE048964();
  os_unfair_lock_lock(v16 + 4);
  sub_1BD4B3B3C(v17);
  os_unfair_lock_unlock(v16 + 4);
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BD512D50;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_115;
  v19 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v19);

  _Block_release(v19);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1BD511820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1BD1D913C(0, *(v8 + 2) + 1, 1, v8);
    *(a1 + 40) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1BD1D913C((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[24 * v11];
  *(v12 + 4) = a2;
  *(v12 + 5) = a3;
  *(v12 + 6) = a4;
  *(a1 + 40) = v8;
  swift_endAccess();
  sub_1BE048C84();
  return sub_1BE048964();
}

void sub_1BD511920()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE051F54();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE051FA4();
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 32);
  v56 = sub_1BD5130FC;
  v57 = v0;
  v54 = v0;
  os_unfair_lock_lock(v14 + 4);
  sub_1BD513118(&aBlock);
  os_unfair_lock_unlock(v14 + 4);
  if (aBlock)
  {
    v52 = v6;
    v42 = v5;
    v53 = v9;
    v43 = v59;
    v41 = aBlock;
    v15 = aBlock;
    v16 = *(aBlock + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v39 = v2;
      v40 = v1;
      v18 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
      v49 = *(v54 + 24);
      v50 = v18;
      v48 = &v59;
      v47 = (v45 + 8);
      v46 = (v44 + 8);
      sub_1BE048C84();
      v19 = 32;
      v51 = v10;
      do
      {
        v20 = swift_allocObject();
        *(v20 + 16) = *(v15 + v19);
        sub_1BE048964();
        dispatch_group_enter(v49);
        v55 = sub_1BE052D54();
        v21 = swift_allocObject();
        swift_weakInit();
        v22 = swift_allocObject();
        v22[2] = sub_1BD513164;
        v22[3] = v20;
        v22[4] = v21;
        v61 = sub_1BD51316C;
        v62 = v22;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v59 = sub_1BD126964;
        v60 = &block_descriptor_50_1;
        v23 = v15;
        v24 = _Block_copy(&aBlock);
        sub_1BE048964();

        sub_1BE051F74();
        *&aBlock = v17;
        sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
        sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
        v25 = v52;
        v26 = v53;
        v17 = MEMORY[0x1E69E7CC0];
        sub_1BE053664();
        v27 = v55;
        MEMORY[0x1BFB3FDF0](0, v13, v26, v24);
        v28 = v24;
        v15 = v23;
        _Block_release(v28);

        v10 = v51;
        (*v47)(v26, v25);
        (*v46)(v13, v10);
        v19 += 16;
        --v16;
      }

      while (v16);

      v1 = v40;
      v2 = v39;
    }

    sub_1BE052CD4();
    v29 = v42;
    sub_1BE04D094();
    v30 = sub_1BE04D204();
    v31 = sub_1BE052C54();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1BD026000, v30, v31, "NearbyPeerPayment: finished animation batch, calling completion", v32, 2u);
      MEMORY[0x1BFB45F20](v32, -1, -1);
    }

    (*(v2 + 8))(v29, v1);
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v55 = sub_1BE052D54();
    v33 = swift_allocObject();
    *(v33 + 16) = v41;
    *(v33 + 32) = v43;
    v61 = sub_1BD289278;
    v62 = v33;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v59 = sub_1BD126964;
    v60 = &block_descriptor_56;
    v34 = _Block_copy(&aBlock);
    sub_1BE048C84();
    sub_1BE048964();

    sub_1BE051F74();
    *&aBlock = MEMORY[0x1E69E7CC0];
    sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    v35 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
    v37 = v52;
    v36 = v53;
    sub_1BE053664();
    v38 = v55;
    MEMORY[0x1BFB3FDF0](0, v35, v36, v34);
    _Block_release(v34);

    (*(v45 + 8))(v36, v37);
    (*(v44 + 8))(v35, v10);
  }
}

uint64_t sub_1BD5120B4(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1BD1839E8;
  v8[1] = v6;
  sub_1BE048964();
  a3(v8);
}

void sub_1BD512150()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 24);

    dispatch_group_leave(v1);
  }
}

uint64_t sub_1BD5121BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 40);
  if (*(v5 + 16))
  {
    result = swift_beginAccess();
    if (*(v5 + 16))
    {
      v6 = *(v5 + 48);
      v7 = *(v5 + 32);
      sub_1BE048C84();
      sub_1BE048964();
      sub_1BD1DE86C(0, 1);
      result = swift_endAccess();
      *a2 = v7;
      *(a2 + 16) = v6;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t sub_1BD51228C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1BE051F54();
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v12 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v13);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 32);
  v27 = v4;
  v28 = a1;
  v21[3] = a1;
  v29 = a2;
  v30 = a3;
  v21[2] = a3;
  v24 = sub_1BD512D6C;
  v25 = &v26;
  sub_1BE048C84();
  sub_1BE048964();
  os_unfair_lock_lock(v16 + 4);
  sub_1BD4B5380(v17);
  os_unfair_lock_unlock(v16 + 4);
  v21[1] = *(v4 + 16);
  v18 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BD513464;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_9_5;
  v19 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE051F74();
  v31 = MEMORY[0x1E69E7CC0];
  sub_1BD513410(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD126024(&qword_1EBD35F20, &unk_1EBD387F0);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v15, v11, v19);

  _Block_release(v19);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1BD5125F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  *(a1 + 40) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v8 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1BD1D913C(0, *(v8 + 2) + 1, 1, v8);
    *(a1 + 40) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1BD1D913C((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[24 * v11];
  *(v12 + 4) = a2;
  *(v12 + 5) = a3;
  *(v12 + 6) = a4;
  *(a1 + 40) = v8;
  swift_endAccess();
  sub_1BE048C84();
  return sub_1BE048964();
}

uint64_t sub_1BD512718()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BD511920();
  }

  return result;
}

uint64_t NearbyPeerPaymentStateTransitionSequencer.deinit()
{

  return v0;
}

uint64_t NearbyPeerPaymentStateTransitionSequencer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1BD5127F8()
{
  v13 = sub_1BE052D44();
  v1 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE052CF4();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v12[0] = "Sequencer";
  v12[1] = v9;
  sub_1BE051F74();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1BD513410(&unk_1EBD35EB0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D420);
  sub_1BD126024(&unk_1EBD35F10, &unk_1EBD3D420);
  sub_1BE053664();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v13);
  v0[2] = sub_1BE052D74();
  v0[3] = dispatch_group_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39A88);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v0[4] = v10;
  v0[5] = MEMORY[0x1E69E7CC0];
  return v0;
}

uint64_t _s9PassKitUI29NearbyPeerPaymentVFXUtilitiesO21mappedCharacterValues15formattedAmountSaySSGSS_tFZ_0()
{
  sub_1BE048C84();
  v0 = sub_1BE052594();
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      if (qword_1EBD36C68 != -1)
      {
        v16 = v0;
        swift_once();
        v0 = v16;
      }

      v4 = qword_1EBDAB218;
      if (*(qword_1EBDAB218 + 16) && (v5 = v0, sub_1BE048C84(), v6 = sub_1BD148F70(v5, v2), v8 = v7, , (v8 & 1) != 0))
      {
        v10 = (*(v4 + 56) + 16 * v6);
        v12 = *v10;
        v11 = v10[1];
        sub_1BE048C84();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1BD03B038(0, *(v3 + 2) + 1, 1, v3);
        }

        v14 = *(v3 + 2);
        v13 = *(v3 + 3);
        if (v14 >= v13 >> 1)
        {
          v3 = sub_1BD03B038((v13 > 1), v14 + 1, 1, v3);
        }

        *(v3 + 2) = v14 + 1;
        v15 = &v3[16 * v14];
        *(v15 + 4) = v12;
        *(v15 + 5) = v11;
      }

      else
      {
      }

      v0 = sub_1BE052594();
      v2 = v9;
    }

    while (v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v18 = *(v3 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = v3 + 40;
    v21 = MEMORY[0x1E69E7CC0];
    while (v19 < *(v3 + 2))
    {
      sub_1BE048C84();
      v22 = sub_1BE052644();
      v24 = v23;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1BD03B038(0, *(v21 + 16) + 1, 1, v21);
        v21 = result;
      }

      v26 = *(v21 + 16);
      v25 = *(v21 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1BD03B038((v25 > 1), v26 + 1, 1, v21);
        v21 = result;
      }

      ++v19;
      *(v21 + 16) = v26 + 1;
      v27 = v21 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v20 += 16;
      if (v18 == v19)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_26:

    return v21;
  }

  return result;
}

unint64_t sub_1BD512D90()
{
  result = qword_1EBD49228;
  if (!qword_1EBD49228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49228);
  }

  return result;
}

unint64_t sub_1BD512DE8()
{
  result = qword_1EBD49230;
  if (!qword_1EBD49230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49230);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NearbyPeerPaymentVFXUtilities.BehaviorGraph(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC6)
  {
    goto LABEL_17;
  }

  if (a2 + 58 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 58) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 58;
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

      return (*a1 | (v4 << 8)) - 58;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 58;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x3B;
  v8 = v6 - 59;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyPeerPaymentVFXUtilities.BehaviorGraph(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 58 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 58) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC6)
  {
    v4 = 0;
  }

  if (a2 > 0xC5)
  {
    v5 = ((a2 - 198) >> 8) + 1;
    *result = a2 + 58;
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
    *result = a2 + 58;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BD512FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD513004(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

double sub_1BD513118@<D0>(uint64_t a1@<X8>)
{
  (*(v1 + 16))(&v6);
  if (!v2)
  {
    v5 = v7;
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_1BD51316C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1BE048964();
  v1(sub_1BD5131D8, v2);
}

char *sub_1BD5131E0()
{
  sub_1BE048C84();
  v0 = sub_1BE052594();
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      if (qword_1EBD36C70 != -1)
      {
        v13 = v0;
        swift_once();
        v0 = v13;
      }

      v4 = qword_1EBDAB220;
      if (*(qword_1EBDAB220 + 16) && (v5 = v0, sub_1BE048C84(), v6 = sub_1BD148F70(v5, v2), v8 = v7, , (v8 & 1) != 0))
      {
        v10 = *(*(v4 + 56) + 4 * v6);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_1BD1D8158(0, *(v3 + 2) + 1, 1, v3);
        }

        v12 = *(v3 + 2);
        v11 = *(v3 + 3);
        if (v12 >= v11 >> 1)
        {
          v3 = sub_1BD1D8158((v11 > 1), v12 + 1, 1, v3);
        }

        *(v3 + 2) = v12 + 1;
        *&v3[4 * v12 + 32] = v10;
      }

      else
      {
      }

      v0 = sub_1BE052594();
      v2 = v9;
    }

    while (v9);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v3 + 2);
  if (v14)
  {
    v15 = sub_1BD1D8158(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v16 = (v3 + 32);
    v17 = *(v15 + 2);
    do
    {
      v18 = *v16;
      v19 = *(v15 + 3);
      if (v17 >= v19 >> 1)
      {
        v15 = sub_1BD1D8158((v19 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      *&v15[4 * v17 + 32] = v18;
      ++v16;
      ++v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  return v15;
}

uint64_t sub_1BD513410(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD513474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BD5134BC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1BD513514(uint64_t a1, int64_t a2)
{
  v4 = *v2;
  v48 = MEMORY[0x1E69E7CC0];
  if (*v2 >> 62)
  {
    goto LABEL_57;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    v31 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  v9 = v4 & 0xFFFFFFFFFFFFFF8;
  v40 = v4;
  v10 = v4 + 32;
  v4 = MEMORY[0x1E695CBD8];
  v11 = &selRef_chatWithHandle_;
  v42 = v9;
  v43 = v8;
  v41 = v10;
  v44 = v5;
  do
  {
    while (1)
    {
      if (v8)
      {
        v12 = MEMORY[0x1BFB40900](v7, v40);
      }

      else
      {
        if (v7 >= *(v9 + 16))
        {
          goto LABEL_56;
        }

        v12 = *(v10 + 8 * v7);
      }

      v13 = v12;
      if (__OFADD__(v7++, 1))
      {
        goto LABEL_55;
      }

      if ([v12 v11[274]] == 1)
      {
        break;
      }

      if (v7 == v5)
      {
        goto LABEL_41;
      }
    }

    v45 = v13;
    v46 = v7;
    v15 = [v13 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
    v16 = sub_1BE052744();

    if (v16 >> 62)
    {
      v17 = sub_1BE053704();
      if (!v17)
      {
        goto LABEL_39;
      }

LABEL_13:
      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1BFB40900](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v36 = v4;
          v37 = sub_1BE053704();
          v4 = v36;
          v5 = v37;
          goto LABEL_3;
        }

        v22 = [v19 label];
        if (v22)
        {
          v23 = v22;
          v24 = sub_1BE052434();
          v26 = v25;

          if (a2 <= 1)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v24 = 0;
          v26 = 0;
          if (a2 <= 1)
          {
LABEL_22:
            if (!a2)
            {
              goto LABEL_28;
            }

            v27 = a1;
            v28 = a2;
            if (a2 == 1)
            {
              goto LABEL_28;
            }

            goto LABEL_29;
          }
        }

        if (a2 == 2 || (v27 = a1, v28 = a2, a2 == 3))
        {
LABEL_28:
          v27 = sub_1BE052434();
          v28 = v29;
        }

LABEL_29:
        if (v26)
        {
          if (v24 == v27 && v26 == v28)
          {
            sub_1BD14ED40(a1, a2);

            goto LABEL_36;
          }

          v30 = sub_1BE053B84();
          sub_1BD14ED40(a1, a2);

          if (v30)
          {

LABEL_36:
            sub_1BE0538C4();
            sub_1BE0538F4();
            sub_1BE053904();
            sub_1BE0538D4();
            goto LABEL_40;
          }
        }

        else
        {
          sub_1BD14ED40(a1, a2);
        }

        ++v18;
        if (v21 == v17)
        {
          goto LABEL_39;
        }
      }
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_39:

LABEL_40:
    v8 = v43;
    v5 = v44;
    v7 = v46;
    v10 = v41;
    v9 = v42;
    v11 = &selRef_chatWithHandle_;
  }

  while (v46 != v44);
LABEL_41:
  v31 = v48;
  v6 = MEMORY[0x1E69E7CC0];
  if (v48 < 0)
  {
LABEL_58:
    v38 = v6;
    v39 = sub_1BE053704();
    v6 = v38;
    v32 = v39;
    if (!v39)
    {
      goto LABEL_59;
    }

LABEL_46:
    v49 = v6;
    result = sub_1BE0538E4();
    if (v32 < 0)
    {
      __break(1u);
    }

    else
    {
      v34 = 0;
      do
      {
        if ((v31 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1BFB40900](v34, v31);
        }

        else
        {
          v35 = *(v31 + 8 * v34 + 32);
        }

        ++v34;
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      while (v32 != v34);

      return v49;
    }

    return result;
  }

LABEL_44:
  if ((v31 & 0x4000000000000000) != 0)
  {
    goto LABEL_58;
  }

  v32 = *(v31 + 16);
  if (v32)
  {
    goto LABEL_46;
  }

LABEL_59:

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD5139AC()
{
  v1 = *v0;
  v13 = MEMORY[0x1E69E7CC0];
  if (*v0 >> 62)
  {
LABEL_28:
    v2 = sub_1BE053704();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFB40900](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (sub_1BD514674(v5))
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      ++v4;
    }

    while (v7 != v2);
    v8 = v13;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_29;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v8 & 0x4000000000000000) != 0)
  {
LABEL_29:
    v9 = sub_1BE053704();
    if (!v9)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {
LABEL_30:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_19:
  result = sub_1BE0538E4();
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB40900](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      ++v11;
      sub_1BE0538C4();
      sub_1BE0538F4();
      sub_1BE053904();
      sub_1BE0538D4();
    }

    while (v9 != v11);

    return v3;
  }

  return result;
}

uint64_t sub_1BD513BB0()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &selRef_chatWithHandle_;
    v21 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1BFB40900](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v7 v6[274]] == 1)
      {
        v10 = v6;
        v11 = [v8 givenName];
        v12 = sub_1BE052434();
        v13 = v5;
        v15 = v14;

        v6 = v10;

        v16 = HIBYTE(v15) & 0xF;
        v17 = (v15 & 0x2000000000000000) == 0;
        v5 = v13;
        v1 = v21;
        if (v17)
        {
          v16 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {
          v18 = [v8 givenName];
          v19 = sub_1BE052434();

          return v19;
        }
      }

      ++v3;
      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 0;
}

uint64_t sub_1BD513D44()
{
  v1 = *v0;
  v8 = MEMORY[0x1E69E7CC0];
  if (*v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 contactSource] == 1)
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      else
      {
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD513E84(uint64_t *a1@<X8>)
{
  v3 = [*v1 identifier];
  v4 = sub_1BE052434();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD513EDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1BD514D54(v5, v7) & 1;
}

void sub_1BD513F28(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = [*v1 identifier];
    v4 = sub_1BE052434();
    v6 = v5;
  }

  else
  {
    v8 = *(v1 + 24);
    v7 = *(v1 + 32);
    v9 = *(v1 + 8);
    v10 = *(v1 + 16);
    sub_1BE048C84();
    MEMORY[0x1BFB3F610](v8, v7);
    v4 = v9;
    v6 = v10;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1BD513FB4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  if (!v6)
  {
    if (v9)
    {
      return 0;
    }

    goto LABEL_6;
  }

  if (v6 == 1)
  {
    if (v9 != 1)
    {
      return 0;
    }

LABEL_6:
    if (v4 != v7 || v5 != v8)
    {
      return sub_1BE053B84();
    }

    return 1;
  }

  return v9 == 2 && (v8 | v7) == 0;
}

uint64_t sub_1BD514020()
{
  v1 = *(v0 + 16);
  sub_1BE053D04();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1BFB40DA0](0);
      return sub_1BE053D64();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1BFB40DA0](v2);
  sub_1BE052524();
  return sub_1BE053D64();
}

uint64_t sub_1BD5140AC()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      return MEMORY[0x1BFB40DA0](0);
    }

    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  MEMORY[0x1BFB40DA0](v1);

  return sub_1BE052524();
}

uint64_t sub_1BD514134()
{
  v1 = *(v0 + 16);
  sub_1BE053D04();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1BFB40DA0](0);
      return sub_1BE053D64();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x1BFB40DA0](v2);
  sub_1BE052524();
  return sub_1BE053D64();
}

id sub_1BD5141BC@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E7CD0];
  v47 = MEMORY[0x1E69E7CD0];
  v7 = [v3 errors];
  if (!v7)
  {
LABEL_39:
    v40 = 0;
LABEL_40:
    v41 = sub_1BD111A78(&unk_1F3B8CE00);
    *a3 = v40 & 1;
    *(a3 + 1) = v7 & 1;
    *(a3 + 8) = v6;
    *(a3 + 16) = 1;
    *(a3 + 17) = a1 & 1;
    *(a3 + 18) = 0;
    *(a3 + 24) = v41;
    *(a3 + 32) = a2;

    return a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  v8 = sub_1BE052744();

  v9 = sub_1BD3F00D4(v8);

  if (v9 >> 62)
  {
    result = sub_1BE053704();
    v11 = result;
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_38;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
LABEL_38:

    LOBYTE(v7) = 0;
    goto LABEL_39;
  }

LABEL_4:
  if (v11 >= 1)
  {
    v42 = a3;
    v43 = 0;
    v45 = 0;
    v12 = 0;
    while (1)
    {
      v13 = (v9 & 0xC000000000000001) != 0 ? MEMORY[0x1BFB40900](v12, v9) : *(v9 + 8 * v12 + 32);
      v14 = v13;
      v15 = sub_1BE052434();
      v17 = v16;
      v18 = [v14 userInfo];
      v19 = sub_1BE052244();

      if (!*(v19 + 16))
      {
        break;
      }

      v20 = sub_1BD148F70(v15, v17);
      v22 = v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      sub_1BD038CD0(*(v19 + 56) + 32 * v20, v46);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      v23 = sub_1BE052404();

      v24 = sub_1BE052434();
      v26 = v25;
      if (v24 == sub_1BE052434() && v26 == v27)
      {

LABEL_22:

        v45 = 1;
        goto LABEL_9;
      }

      v28 = sub_1BE053B84();

      if (v28)
      {

        goto LABEL_22;
      }

      v29 = sub_1BE052434();
      v31 = v30;
      if (v29 == sub_1BE052434() && v31 == v32)
      {
      }

      else
      {
        v33 = sub_1BE053B84();

        if ((v33 & 1) == 0)
        {
          v34 = sub_1BE052434();
          v36 = v35;
          if (v34 == sub_1BE052434() && v36 == v37)
          {

LABEL_33:
            v39 = sub_1BD34C030();
            if (v39 != 8)
            {
              sub_1BD2A5394(v46, v39);
            }
          }

          else
          {
            v38 = sub_1BE053B84();

            if (v38)
            {
              goto LABEL_33;
            }
          }

          goto LABEL_9;
        }
      }

      v43 = 1;
LABEL_9:
      if (v11 == ++v12)
      {

        v6 = v47;
        a3 = v42;
        LOBYTE(v7) = v43;
        v40 = v45;
        goto LABEL_40;
      }
    }

LABEL_7:

LABEL_8:

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD514674(void *a1)
{
  v2 = [a1 postalAddresses];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v3 = sub_1BE052744();

  v19 = a1;
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1BFB40900](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 label];
      if (v9)
      {
        v10 = v9;
        v11 = sub_1BE052434();
        v13 = v12;

        v14 = sub_1BD551B1C(v11, v13);
        v16 = v15;
        sub_1BD35D778(v14, v15);
        if (v16 > 3)
        {

          v17 = 1;
          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v17 = 0;
LABEL_17:
  if ([v19 contactSource] == 1)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD514814()
{
  v1 = *v0;
  v8 = MEMORY[0x1E69E7CC0];
  if (*v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1BFB40900](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 contactSource] == 1)
      {
      }

      else
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BD514954(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_1BD514E48(v13, v14) & 1;
}

uint64_t sub_1BD5149BC()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if ([v0 isShippingServiceableWithError_])
  {
    v1 = v8[0];
    return 0;
  }

  else
  {
    v3 = v8[0];
    v4 = sub_1BE04A854();

    swift_willThrow();
    v8[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    sub_1BD0E5E8C(0, &qword_1EBD45E80);
    swift_dynamicCast();
    v5 = [v7 localizedDescription];
    v6 = sub_1BE052434();

    return v6;
  }
}

id sub_1BD514AF4()
{
  v1 = v0;
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = 0;
  if ([v1 isValidWithError_])
  {
    v8 = v18[0];
    return 0;
  }

  v10 = v18[0];
  v11 = sub_1BE04A854();

  swift_willThrow();
  v18[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
  sub_1BD0E5E8C(0, &qword_1EBD45E80);
  swift_dynamicCast();
  v12 = v17;
  v13 = [v17 localizedFailureReason];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1BE052434();
  }

  else
  {
    (*(v3 + 104))(v7, *MEMORY[0x1E69B8068], v2);
    result = PKPassKitBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v15 = sub_1BE04B6F4();

    (*(v3 + 8))(v7, v2);
  }

  return v15;
}

uint64_t sub_1BD514D54(void *a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
    v5 = v4;
    v6 = sub_1BE053074();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v7 = a1[1] == *(a2 + 8) && a1[2] == *(a2 + 16);
  if (!v7 && (sub_1BE053B84() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == *(a2 + 24) && a1[4] == *(a2 + 32))
  {
    return 1;
  }

  return sub_1BE053B84();
}

uint64_t sub_1BD514E48(uint64_t a1, uint64_t a2)
{
  if ((sub_1BD3FE314(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_1BD0E5E8C(0, &qword_1EBD406E0);
    v6 = v5;
    v7 = v4;
    v8 = sub_1BE053074();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      return 0;
    }

LABEL_15:
    if ((*(a1 + 24) != v10 || *(a1 + 32) != v11) && (sub_1BE053B84() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_22;
  }

  if (*(a1 + 40) == 1)
  {
    if (v12 != 1)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (v12 != 2)
  {
    return 0;
  }

  result = 0;
  if (!v10 && !v11)
  {
LABEL_22:
    v13 = *(a1 + 64);
    v19[0] = *(a1 + 48);
    v19[1] = v13;
    v20 = *(a1 + 80);
    v14 = *(a2 + 64);
    v17[0] = *(a2 + 48);
    v17[1] = v14;
    v18 = *(a2 + 80);
    if ((sub_1BD8434FC(v19, v17) & 1) == 0 || *(a1 + 88) != *(a2 + 88))
    {
      return 0;
    }

    v15 = *(a1 + 104);
    v16 = *(a2 + 104);
    if (v15)
    {
      if (!v16 || (*(a1 + 96) != *(a2 + 96) || v15 != v16) && (sub_1BE053B84() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v16)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

void sub_1BD514FE8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 paymentRequest];
  if (!v6)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = v6;
  v8 = [v6 requiredShippingContactFields];

  type metadata accessor for PKContactField(0);
  sub_1BD231AF0();
  v9 = sub_1BE052A34();

  if ((sub_1BD6CC0DC(*MEMORY[0x1E69BB7D8], v9) & 1) == 0)
  {

LABEL_13:
    v19 = 0;
    v20 = 0;
    v16 = 0;
    v17 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v18 = 0;
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
LABEL_14:
    *a3 = v19;
    *(a3 + 8) = v20;
    *(a3 + 16) = v25;
    *(a3 + 24) = v16;
    *(a3 + 32) = v17;
    *(a3 + 40) = v18;
    *(a3 + 48) = v26;
    *(a3 + 64) = v27;
    *(a3 + 80) = v21;
    *(a3 + 88) = v22;
    *(a3 + 96) = v23;
    *(a3 + 104) = v24;
    return;
  }

  if ([a1 itemForType_])
  {
    sub_1BE053624();
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  v42 = v40;
  v43 = v41;
  if (!*(&v41 + 1))
  {

    sub_1BD14EC0C(&v42);
    goto LABEL_13;
  }

  sub_1BD0E5E8C(0, &qword_1EBD49258);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  sub_1BD0E82D4();
  v10 = *MEMORY[0x1E69BB7D0];
  v11 = sub_1BD6CC0DC(*MEMORY[0x1E69BB7D0], v9);
  v12 = [a1 contactFormatValidator];
  sub_1BD5141BC(v11 & 1, v12, &v42);

  v38 = [a1 originalShippingAddress];
  swift_beginAccess();
  v35 = *(a2 + 64);
  sub_1BE048C84();
  v37 = sub_1BD6CC0DC(v10, v9);
  v13 = v39;
  v14 = sub_1BD5149BC();
  if (v15)
  {
    v16 = v14;
    v17 = v15;

    v18 = 1;
  }

  else
  {
    v16 = sub_1BD514AF4();
    v17 = v28;

    if (v17)
    {
      v18 = 0;
    }

    else
    {
      v16 = 0;
      v18 = 2;
    }
  }

  v29 = [a1 paymentRequest];
  if (!v29)
  {
    goto LABEL_25;
  }

  v30 = v29;
  v22 = [v29 shippingContactEditingMode];

  v31 = [a1 paymentRequest];
  if (v31)
  {
    v32 = v31;

    v33 = [v32 shippingEditableMessage];

    if (v33)
    {
      v23 = sub_1BE052434();
      v24 = v34;
    }

    else
    {

      v23 = 0;
      v24 = 0;
    }

    v26 = v42;
    v27 = v43;
    v20 = v38;
    v25 = v37 & 1;
    v21 = v44;
    v19 = v36;
    goto LABEL_14;
  }

LABEL_26:
  __break(1u);
}

void sub_1BD5153AC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v61 = a1;
  v60 = sub_1BE04BD74();
  v7 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v54 - v17;
  v19 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (&v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = "etransitionsequencer";
  v24 = 0xD00000000000003ALL;
  if (a2 == 1)
  {
    v23 = "SS_UNAVAILABLE_ALERT_TITLE";
  }

  if (a2 == 2)
  {
    v23 = "RESS_UNAVAILABLE_ALERT_TITLE";
  }

  else
  {
    v24 = 0xD000000000000037;
  }

  if (a2 == 3)
  {
    v25 = 0xD00000000000003CLL;
  }

  else
  {
    v25 = v24;
  }

  if (a2 == 3)
  {
    v26 = "LE_ALERT_MESSAGE";
  }

  else
  {
    v26 = v23;
  }

  v27 = _s8MerchantVMa(0);
  sub_1BD129504(a3 + *(v27 + 20), v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1BD515948(a3, _s8MerchantVMa);

      v61 = 0;
      v42 = 0;
      v36 = 0;
      v39 = 0;
      v41 = 0;
      goto LABEL_19;
    }

    v55 = a4;
    v29 = a3;
    v30 = *a3;
    v57 = v26;
    v59 = v29;
    v31 = *(v29 + 8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BE0B69E0;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1BD110550();
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    v56 = *MEMORY[0x1E69B8068];
    v33 = *(v7 + 104);
    v34 = v60;
    v33(v18);
    sub_1BE048C84();
    v58 = sub_1BE04B714();
    v36 = v35;

    v57 = *(v7 + 8);
    (v57)(v18, v34);
    (v33)(v10, v56, v34);
    sub_1BE048C84();
    v37 = PKPassKitBundle();
    if (v37)
    {
      v38 = v37;
      v39 = sub_1BE04B6F4();
      v41 = v40;

      sub_1BD515948(v59, _s8MerchantVMa);
      (v57)(v10, v34);
      sub_1BE048C84();
      sub_1BD515948(v22, _s14MerchantOriginOMa);

      a4 = v55;
      v42 = v58;
LABEL_19:
      *a4 = v61;
      a4[1] = v42;
      a4[2] = v36;
      a4[3] = v39;
      a4[4] = v41;
      return;
    }

    __break(1u);
  }

  else
  {
    v58 = v25;
    v59 = a3;
    v43 = *v22;
    v44 = v22[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1BE0B69E0;
    *(v45 + 56) = MEMORY[0x1E69E6158];
    *(v45 + 64) = sub_1BD110550();
    *(v45 + 32) = v43;
    *(v45 + 40) = v44;
    v46 = *MEMORY[0x1E69B8068];
    v47 = *(v7 + 104);
    v48 = v7;
    v49 = v60;
    v47(v18, v46, v60);
    v58 = sub_1BE04B714();
    v36 = v50;

    v57 = *(v48 + 8);
    (v57)(v18, v49);
    v47(v14, v46, v49);
    sub_1BE048C84();
    v51 = PKPassKitBundle();
    if (v51)
    {
      v52 = v51;
      v39 = sub_1BE04B6F4();
      v41 = v53;

      sub_1BD515948(v59, _s8MerchantVMa);
      (v57)(v14, v49);

      v42 = v58;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1BD515948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_9PassKitUI25PaymentAuthorizationModelC8ShippingV6StatusO(uint64_t a1)
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

uint64_t sub_1BD5159C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1BD515A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BD515A9C()
{
  result = qword_1EBD49260;
  if (!qword_1EBD49260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49260);
  }

  return result;
}

uint64_t type metadata accessor for AddPostalAddressSheet()
{
  result = qword_1EBD49268;
  if (!qword_1EBD49268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD515B64()
{
  sub_1BD170C00();
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      sub_1BD515C30();
      if (v2 <= 0x3F)
      {
        sub_1BD1030A8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD515C30()
{
  if (!qword_1EBD49278)
  {
    type metadata accessor for AddressEditingModel();
    sub_1BD518A50(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD49278);
    }
  }
}

uint64_t sub_1BD515CE0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04F3D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v16 - v11;
  sub_1BD0DE19C(v2, &v16 - v11, &qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1BE04E664();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    sub_1BE052C44();
    v15 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

__n128 sub_1BD515EE0@<Q0>(uint64_t a1@<X8>)
{
  type metadata accessor for AddPostalAddressSheet();
  type metadata accessor for AddressEditingModel();
  sub_1BD518A50(&qword_1EBD40EB0, type metadata accessor for AddressEditingModel);
  sub_1BE04E964();
  swift_getKeyPath();
  sub_1BE04E974();

  v118[10] = v99;
  v118[11] = v100;
  v118[12] = v101;
  v118[13] = v102;
  v118[6] = v95;
  v118[7] = v96;
  v118[8] = v97;
  v118[9] = v98;
  v118[2] = v91;
  v118[3] = v92;
  v118[4] = v93;
  v118[5] = v94;
  v118[0] = v89;
  v118[1] = v90;
  v113 = v99;
  v114 = v100;
  v115 = v101;
  v116 = v102;
  v109 = v95;
  v110 = v96;
  v111 = v97;
  v112 = v98;
  v105 = v91;
  v106 = v92;
  v107 = v93;
  v108 = v94;
  v103 = v89;
  v104 = v90;
  v117 = 1;
  sub_1BD4FBC6C(&v119);
  sub_1BD4FB81C(&v124);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v99 = v86;
  v100 = v87;
  v101 = v88;
  v95 = v82;
  v96 = v83;
  v98 = v85;
  v97 = v84;
  v91 = v78;
  v92 = v79;
  v94 = v81;
  v93 = v80;
  v90 = v77;
  v89 = v76;
  sub_1BD4FBC18(&v89);
  if (*(&v101 + 1) == 1)
  {
    v32 = v121;
    v33 = v122;
    v34 = v123;
    v30 = v119;
    v31 = v120;
    v58 = v127;
    v59 = v128;
    v56 = v125;
    v57 = v126;
    v55 = v124;
    v39 = v123;
    v37 = v121;
    v38 = v122;
    v35 = v119;
    v36 = v120;
    v10 = v121;
    v11 = v122;
    v8 = v119;
    v9 = v120;
    v43 = v127;
    v44 = v128;
    v40 = v124;
    v41 = v125;
    v42 = v126;
    v12 = v123;
    v13 = v124;
    v16 = v127;
    v17 = v128;
    v14 = v125;
    v15 = v126;
    v45 = v119;
    v46 = v120;
    v49 = v123;
    v50 = v124;
    v47 = v121;
    v48 = v122;
    v53 = v127;
    v54 = v128;
    v51 = v125;
    v52 = v126;
    sub_1BD518A98(&v119, &v76);
    sub_1BD518A98(&v124, &v76);
    sub_1BD518A98(&v35, &v76);
    sub_1BD518A98(&v40, &v76);
    sub_1BD518AF4(&v55);
    v62 = v32;
    v63 = v33;
    v64 = v34;
    v60 = v30;
    v61 = v31;
    sub_1BD518AF4(&v60);
    v71 = v14;
    v72 = v15;
    v73 = v16;
    v74 = v17;
    v67 = v10;
    v68 = v11;
    v69 = v12;
    v70 = v13;
    v65 = v8;
    v66 = v9;
    sub_1BD518B54(&v65);
    v84 = v73;
    v85 = v74;
    LOBYTE(v86) = v75;
    v80 = v69;
    v81 = v70;
    v83 = v72;
    v82 = v71;
    v76 = v65;
    v77 = v66;
    v79 = v68;
    v78 = v67;
    sub_1BD0DE19C(&v45, v18, &qword_1EBD49318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49320);
    sub_1BD0DE4F4(&qword_1EBD49328, &qword_1EBD49320);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v118, &qword_1EBD48C18);
    sub_1BD0DE53C(&v45, &qword_1EBD49318);
    sub_1BD518AF4(&v124);
    v2 = &v119;
  }

  else
  {
    v32 = v126;
    v33 = v127;
    v34 = v128;
    v30 = v124;
    v31 = v125;
    v59 = v123;
    v57 = v121;
    v58 = v122;
    v55 = v119;
    v56 = v120;
    v39 = v128;
    v40 = v119;
    v37 = v126;
    v38 = v127;
    v35 = v124;
    v36 = v125;
    v22 = v126;
    v23 = v127;
    v20 = v124;
    v21 = v125;
    v43 = v122;
    v44 = v123;
    v41 = v120;
    v42 = v121;
    v24 = v128;
    v25 = v119;
    v28 = v122;
    v29 = v123;
    v26 = v120;
    v27 = v121;
    v45 = v124;
    v46 = v125;
    v49 = v128;
    v50 = v119;
    v47 = v126;
    v48 = v127;
    v53 = v122;
    v54 = v123;
    v51 = v120;
    v52 = v121;
    sub_1BD518A98(&v119, &v76);
    sub_1BD518A98(&v124, &v76);
    sub_1BD518A98(&v35, &v76);
    sub_1BD518A98(&v40, &v76);
    sub_1BD518AF4(&v55);
    v62 = v32;
    v63 = v33;
    v64 = v34;
    v60 = v30;
    v61 = v31;
    sub_1BD518AF4(&v60);
    v71 = v26;
    v72 = v27;
    v73 = v28;
    v74 = v29;
    v67 = v22;
    v68 = v23;
    v69 = v24;
    v70 = v25;
    v65 = v20;
    v66 = v21;
    sub_1BD518B48(&v65);
    v84 = v73;
    v85 = v74;
    LOBYTE(v86) = v75;
    v80 = v69;
    v81 = v70;
    v83 = v72;
    v82 = v71;
    v76 = v65;
    v77 = v66;
    v79 = v68;
    v78 = v67;
    sub_1BD0DE19C(&v45, v18, &qword_1EBD49318);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49320);
    sub_1BD0DE4F4(&qword_1EBD49328, &qword_1EBD49320);
    sub_1BE04F9A4();
    sub_1BD0DE53C(v118, &qword_1EBD48C18);
    sub_1BD0DE53C(&v45, &qword_1EBD49318);
    sub_1BD518AF4(&v119);
    v2 = &v124;
  }

  sub_1BD518AF4(v2);
  LOBYTE(v86) = v19;
  v80 = v18[4];
  v81 = v18[5];
  v83 = v18[7];
  v82 = v18[6];
  v76 = v18[0];
  v77 = v18[1];
  v79 = v18[3];
  v78 = v18[2];
  v3 = v18[9];
  *(a1 + 128) = v18[8];
  *(a1 + 144) = v3;
  *(a1 + 160) = v86;
  v4 = v81;
  *(a1 + 64) = v80;
  *(a1 + 80) = v4;
  v5 = v83;
  *(a1 + 96) = v82;
  *(a1 + 112) = v5;
  v6 = v77;
  *a1 = v76;
  *(a1 + 16) = v6;
  result = v79;
  *(a1 + 32) = v78;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1BD5166F8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = sub_1BE04ECF4();
  v3 = *(v2 - 8);
  v27 = v2;
  v28 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49280);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49288);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49290);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  v31 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49298);
  sub_1BD518348();
  sub_1BE0504A4();
  *&v10[*(v7 + 36)] = 256;
  v20 = sub_1BD51840C();
  sub_1BE050AC4();
  sub_1BD0DE53C(v10, &qword_1EBD49280);
  sub_1BE051DD4();
  v32 = v7;
  v33 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BD518A50(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
  v21 = v27;
  sub_1BE051134();
  (*(v28 + 8))(v6, v21);
  (*(v12 + 8))(v15, v11);
  v22 = sub_1BE051274();
  v23 = sub_1BE0501D4();
  v24 = &v19[*(v16 + 36)];
  *v24 = v22;
  v24[8] = v23;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492D0);
  sub_1BD5184CC();
  sub_1BD0DE4F4(&qword_1EBD492E0, &qword_1EBD492D0);
  sub_1BE051024();
  return sub_1BD0830C8(v19);
}

uint64_t sub_1BD516AD8(uint64_t a1)
{
  v28 = type metadata accessor for AddPostalAddressSheet();
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v2 = sub_1BE0506C4();
  v4 = v3;
  v6 = v5;
  sub_1BE050464();
  v7 = sub_1BE0505F4();
  v9 = v8;
  v11 = v10;

  sub_1BD0DDF10(v2, v4, v6 & 1);

  sub_1BE050364();
  v12 = sub_1BE050544();
  v14 = v13;
  v16 = v15;
  sub_1BD0DDF10(v7, v9, v11 & 1);

  sub_1BE051224();
  sub_1BE050564();

  sub_1BD0DDF10(v12, v14, v16 & 1);

  if (*(a1 + *(v28 + 24) + 8))
  {
    sub_1BE048C84();
    v17 = sub_1BE0506C4();
    v19 = v18;
    v21 = v20;
    sub_1BE04FC94();
    v22 = sub_1BE050574();
    v24 = v23;
    v26 = v25;
    sub_1BD0DDF10(v17, v19, v21 & 1);

    sub_1BE050454();
    sub_1BE0505F4();

    sub_1BD0DDF10(v22, v24, v26 & 1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39E98);
  sub_1BD0DE4F4(&qword_1EBD492A8, &qword_1EBD492B0);
  sub_1BD12E194();
  return sub_1BE051A34();
}

uint64_t sub_1BD516E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AddPostalAddressSheet() + 28)) == 1)
  {
    sub_1BD515EE0(&v28);
    PKEdgeInsetsMake(&v28, v3);
    v49 = v36;
    v50 = v37;
    v51 = v38;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v41 = v28;
    v42 = v29;
    v43 = v30;
    v44 = v31;
  }

  else
  {
    sub_1BD518A2C(&v41);
  }

  type metadata accessor for PostalAddressEditingModel();
  sub_1BD518A50(&qword_1EBD3DAB8, type metadata accessor for PostalAddressEditingModel);
  sub_1BE048964();
  v4 = sub_1BE04E954();
  v23 = v49;
  v24 = v50;
  v19 = v45;
  v20 = v46;
  v21 = v47;
  v22 = v48;
  v15 = v41;
  v16 = v42;
  v17 = v43;
  v18 = v44;
  v5 = v50;
  v26[8] = v49;
  v26[9] = v50;
  v26[4] = v45;
  v26[5] = v46;
  v26[6] = v47;
  v26[7] = v48;
  v26[0] = v41;
  v26[1] = v42;
  v6 = v44;
  v26[2] = v43;
  v26[3] = v44;
  v36 = v49;
  v37 = v50;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v28 = v41;
  v29 = v42;
  v30 = v43;
  v31 = v44;
  v7 = v48;
  *(a2 + 128) = v49;
  *(a2 + 144) = v5;
  v8 = v33;
  v9 = v34;
  *(a2 + 64) = v32;
  *(a2 + 80) = v8;
  *(a2 + 96) = v9;
  *(a2 + 112) = v7;
  v10 = v29;
  v11 = v30;
  *a2 = v28;
  *(a2 + 16) = v10;
  v25 = v51;
  v27 = v51;
  LOBYTE(v38) = v51;
  v12 = v38;
  *(a2 + 32) = v11;
  *(a2 + 48) = v6;
  *(a2 + 160) = v12;
  *(a2 + 168) = v4;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a2 + 176) = v13;
  *(a2 + 200) = 257;
  *(a2 + 202) = 1;
  sub_1BD0DE19C(v26, v39, &qword_1EBD49310);
  sub_1BE048964();
  sub_1BD0D44B8(0);

  sub_1BD0D4744(0);
  v39[8] = v23;
  v39[9] = v24;
  v40 = v25;
  v39[4] = v19;
  v39[5] = v20;
  v39[6] = v21;
  v39[7] = v22;
  v39[0] = v15;
  v39[1] = v16;
  v39[2] = v17;
  v39[3] = v18;
  return sub_1BD0DE53C(v39, &qword_1EBD49310);
}

uint64_t sub_1BD5170B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492E8);
  MEMORY[0x1EEE9AC00](v20[0], v3);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v20 - v9;
  v11 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD492F8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v20 - v16;
  sub_1BE04FB04();
  v20[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45200);
  sub_1BD35CEE0();
  sub_1BE04E424();
  sub_1BE04FB14();
  v20[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49300);
  sub_1BD51865C();
  sub_1BE04E424();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  sub_1BE04F854();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1BD5173CC(uint64_t a1)
{
  v2 = type metadata accessor for AddPostalAddressSheet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - v9;
  sub_1BD518718(a1, &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1BD51877C(&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  sub_1BE051704();
  sub_1BE052434();
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80);
  sub_1BE050DE4();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1BD51760C()
{
  v0 = sub_1BE04E664();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AddPostalAddressSheet();
  v5 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BD84367C(v5);

  sub_1BD515CE0(v4);
  sub_1BE04E654();
  return (*(v1 + 8))(v4, v0);
}

id sub_1BD51771C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD517888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for AddPostalAddressSheet();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80);
  v7 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v8);
  v10 = &v21 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD44590);
  MEMORY[0x1EEE9AC00](v22, v11);
  v13 = &v21 - v12;
  sub_1BD518718(a1, &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_1BD51877C(&v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1BE051704();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v38[10] = v35;
  v38[11] = v36;
  v38[12] = v37;
  v38[6] = v31;
  v38[7] = v32;
  v38[8] = v33;
  v38[9] = v34;
  v38[2] = v27;
  v38[3] = v28;
  v38[4] = v29;
  v38[5] = v30;
  v38[0] = v25;
  v38[1] = v26;
  LOBYTE(a1) = sub_1BD4F7DB0();
  sub_1BD4FBC18(v38);
  if ((a1 & 1) != 0 && sub_1BD20B8F0())
  {
    v16 = sub_1BD20BAFC() ^ 1;
  }

  else
  {
    v16 = 1;
  }

  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = v16 & 1;
  (*(v7 + 32))(v13, v10, v23);
  v19 = &v13[*(v22 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_1BD10DF54;
  v19[2] = v18;
  sub_1BE052434();
  sub_1BD3BAA6C();
  sub_1BE050DE4();

  return sub_1BD0DE53C(v13, &qword_1EBD44590);
}

uint64_t sub_1BD517C3C(uint64_t a1)
{
  v2 = sub_1BE04E664();
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AddPostalAddressSheet();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v29[10] = v40;
  v29[11] = v41;
  v29[12] = v42;
  v29[6] = v36;
  v29[7] = v37;
  v29[8] = v38;
  v29[9] = v39;
  v29[2] = v32;
  v29[3] = v33;
  v29[4] = v34;
  v29[5] = v35;
  v29[0] = v30;
  v29[1] = v31;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v40 = v28[10];
  v41 = v28[11];
  v42 = v28[12];
  v36 = v28[6];
  v37 = v28[7];
  v38 = v28[8];
  v39 = v28[9];
  v32 = v28[2];
  v33 = v28[3];
  v34 = v28[4];
  v35 = v28[5];
  v30 = v28[0];
  v31 = v28[1];
  v7 = sub_1BD4F7DB0();
  sub_1BD4FBC18(&v30);
  if (!v7)
  {
    return sub_1BD4FBC18(v29);
  }

  v25 = v2;
  if (!sub_1BD20B8F0() || (sub_1BD20BAFC() & 1) == 0 || !sub_1BD4F7DB0())
  {
    return sub_1BD4FBC18(v29);
  }

  v24 = sub_1BE052434();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  v8 = *&v28[0];
  [*&v28[0] copy];

  sub_1BE053624();
  swift_unknownObjectRelease();

  sub_1BD5187F8();
  swift_dynamicCast();
  v9 = v27[0];
  v10 = objc_allocWithZone(MEMORY[0x1E695CEE0]);
  v11 = sub_1BE052404();

  v12 = [v10 initWithLabel:v11 value:v9];

  sub_1BD4F7884(v28);
  v13 = [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BE0B7020;
  *(v14 + 32) = v12;
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD58EB0);
  v15 = sub_1BE052724();

  [v13 setPostalAddresses_];

  v16 = sub_1BE052404();
  [v13 setGivenName_];

  v17 = sub_1BE052404();
  sub_1BD4F82D4(v28);
  [v13 setFamilyName_];

  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v13;
  sub_1BE048964();
  sub_1BE04D8B4();

  v19 = v27[0];
  [v27[0] copy];

  sub_1BE053624();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v27);

  sub_1BD6B04D8();
  v20 = sub_1BE052404();

  [v18 setValueSource_];

  (*(a1 + *(v6 + 40)))(v18);
  v21 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
  sub_1BD84367C(v21);

  sub_1BD515CE0(v5);
  sub_1BE04E654();
  sub_1BD4FBC18(v29);

  return (*(v26 + 8))(v5, v25);
}

id sub_1BD5181D0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, *MEMORY[0x1E69B80F0], v2, v5);
  result = PKPassKitBundle();
  if (result)
  {
    v9 = result;
    v10 = sub_1BE04B6F4();
    v12 = v11;

    (*(v3 + 8))(v7, v2);
    v16[0] = v10;
    v16[1] = v12;
    sub_1BD0DDEBC();
    result = sub_1BE0506C4();
    *a1 = result;
    *(a1 + 8) = v13;
    *(a1 + 16) = v14 & 1;
    *(a1 + 24) = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD518348()
{
  result = qword_1EBD492A0;
  if (!qword_1EBD492A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49298);
    sub_1BD0DE4F4(&qword_1EBD492A8, &qword_1EBD492B0);
    sub_1BD12E194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD492A0);
  }

  return result;
}

unint64_t sub_1BD51840C()
{
  result = qword_1EBD492B8;
  if (!qword_1EBD492B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49280);
    sub_1BD0DE4F4(&qword_1EBD492C0, &qword_1EBD492C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD492B8);
  }

  return result;
}

unint64_t sub_1BD5184CC()
{
  result = qword_1EBD492D8;
  if (!qword_1EBD492D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49288);
    sub_1BE04ECF4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49280);
    sub_1BD51840C();
    swift_getOpaqueTypeConformance2();
    sub_1BD518A50(&qword_1EBD3ACB0, MEMORY[0x1E697C1F0]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD36710, &qword_1EBD491B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD492D8);
  }

  return result;
}

unint64_t sub_1BD51865C()
{
  result = qword_1EBD49308;
  if (!qword_1EBD49308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49300);
    sub_1BD3BAA6C();
    sub_1BD518A50(&qword_1EBD52210, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49308);
  }

  return result;
}

uint64_t sub_1BD518718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddPostalAddressSheet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD51877C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddPostalAddressSheet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD5187F8()
{
  result = qword_1EBD3DAC8;
  if (!qword_1EBD3DAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3DAC8);
  }

  return result;
}

uint64_t objectdestroyTm_53()
{
  v1 = *(type metadata accessor for AddPostalAddressSheet() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1BE04E664();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1BD5189B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AddPostalAddressSheet() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1BD518A2C(uint64_t a1)
{
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = -1;
  return result;
}

uint64_t sub_1BD518A50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD518B60()
{
  result = qword_1EBD49330;
  if (!qword_1EBD49330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49330);
  }

  return result;
}

unint64_t sub_1BD518BB4()
{
  result = qword_1EBD49338;
  if (!qword_1EBD49338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49338);
  }

  return result;
}

void sub_1BD518C08(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BD51C9A0();
    sub_1BD51C9EC(&qword_1EBD49498, sub_1BD51C9A0);
    sub_1BE052A74();
    v1 = v18;
    v2 = v19;
    v3 = v20;
    v4 = v21;
    v5 = v22;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
    sub_1BE048C84();
    v4 = 0;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1BE053744() || (sub_1BD51C9A0(), swift_dynamicCast(), v13 = v23, v4 = v9, v5 = v10, !v23))
      {
LABEL_24:
        sub_1BD0D45FC();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_24;
    }

LABEL_18:
    v14 = [v13 type];

    v9 = v4;
    v10 = v5;
    if (v14 < 0xC)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1BD1D9E10(0, *(v17 + 2) + 1, 1, v17);
      }

      v16 = *(v17 + 2);
      v15 = *(v17 + 3);
      if (v16 >= v15 >> 1)
      {
        v17 = sub_1BD1D9E10((v15 > 1), v16 + 1, 1, v17);
      }

      *(v17 + 2) = v16 + 1;
      v17[v16 + 32] = v14;
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1BD518E98()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v2 = sub_1BE04A874();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v9 = sub_1BE04A884();
  __swift_allocate_value_buffer(v9, qword_1EBDAB228);
  __swift_project_value_buffer(v9, qword_1EBDAB228);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EBDAB400);
  (*(v3 + 16))(v6, v10, v2);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

__n128 sub_1BD5190AC@<Q0>(uint64_t a1@<X8>)
{
  sub_1BE048874();
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  result = v4;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1BD519100(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14 = v2;
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v9 = v13;
  v10 = v4;
  v15 = *(a1 + 64);
  v11 = *(a1 + 64);
  v7 = v12[0];
  v8 = v1;
  sub_1BD0D7104(v12, v6);
  sub_1BE048884();
  return sub_1BD0D71B4(v12);
}

void (*sub_1BD51917C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1BE048864();
  return sub_1BD5191F0;
}

void sub_1BD5191F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1BD51923C()
{
  result = qword_1EBD49340;
  if (!qword_1EBD49340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49340);
  }

  return result;
}

unint64_t sub_1BD519290()
{
  result = qword_1EBD49348;
  if (!qword_1EBD49348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49348);
  }

  return result;
}

uint64_t sub_1BD5192E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BD51C8A4();
  v5 = sub_1BD51AC68();

  return MEMORY[0x1EEDB3D50](a1, v4, a2, v5);
}

unint64_t sub_1BD519350()
{
  result = qword_1EBD49350;
  if (!qword_1EBD49350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49350);
  }

  return result;
}

unint64_t sub_1BD5193A8()
{
  result = qword_1EBD49358;
  if (!qword_1EBD49358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49358);
  }

  return result;
}

uint64_t sub_1BD519484(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD51C8A4();
  v7 = sub_1BD51C8F8();
  v8 = sub_1BD51AC68();
  *v5 = v2;
  v5[1] = sub_1BD519558;

  return MEMORY[0x1EEDB3D58](a1, a2, v6, v7, v8);
}

uint64_t sub_1BD519558()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1BD519660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BD51BF10();
  *a1 = result;
  return result;
}

uint64_t sub_1BD519688(uint64_t a1)
{
  v2 = sub_1BD51923C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD5196C8()
{
  result = qword_1EBD49360;
  if (!qword_1EBD49360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49360);
  }

  return result;
}

unint64_t sub_1BD519720()
{
  result = qword_1EBD49368;
  if (!qword_1EBD49368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49368);
  }

  return result;
}

uint64_t sub_1BD519774()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49408);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49410);
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49400);
  __swift_allocate_value_buffer(v7, qword_1EBDAB240);
  __swift_project_value_buffer(v7, qword_1EBDAB240);
  sub_1BD0D7160();
  sub_1BE048E64();
  sub_1BE048E54();
  (*(v1 + 104))(v4, *MEMORY[0x1E695A520], v0);
  sub_1BE048E44();
  (*(v1 + 8))(v4, v0);
  sub_1BE048E54();
  return sub_1BE048E74();
}

uint64_t sub_1BD519970()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v18[0] = v18 - v2;
  v3 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v5 = sub_1BE04A874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v12 = sub_1BE04A884();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v15 = sub_1BE048E94();
  __swift_allocate_value_buffer(v15, qword_1EBDAB258);
  __swift_project_value_buffer(v15, qword_1EBDAB258);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v5, qword_1EBDAB400);
  (*(v6 + 16))(v9, v16, v5);
  sub_1BE04B0A4();
  sub_1BE04A894();
  (*(v13 + 56))(v18[0], 1, 1, v12);
  return sub_1BE048E84();
}

uint64_t sub_1BD519C8C@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38B88);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v23[0] = v23 - v3;
  v4 = sub_1BE048B74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v23 - v15;
  v17 = sub_1BE04A884();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  sub_1BE0487C4();
  if (v24)
  {

    result = sub_1BE0487C4();
    if (!v24)
    {
      __break(1u);
      return result;
    }

    sub_1BE04A864();
  }

  else
  {
    sub_1BE0487C4();
    sub_1BD51AC14();
    sub_1BE048E14();
  }

  sub_1BE0487C4();
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1BD0DE53C(v12, &qword_1EBD493E0);
    v21 = 1;
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_1BD0DE53C(v12, &qword_1EBD493E0);
    sub_1BD51C9EC(&qword_1EBD493F0, MEMORY[0x1E695A360]);
    sub_1BE048EF4();
    (*(v5 + 8))(v8, v4);
    v21 = 0;
  }

  (*(v18 + 56))(v16, v21, 1, v17);
  v22 = sub_1BE048BB4();
  (*(*(v22 - 8) + 56))(v23[0], 1, 1, v22);
  return sub_1BE048BD4();
}

uint64_t sub_1BD51A07C()
{
  v0 = sub_1BE04CFF4();
  v21 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v1);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_1BE04CFC4();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v5);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v13 = sub_1BE04CFD4();
  sub_1BE04D004();
  v20 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();

    v14 = v21;
    if ((*(v21 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v14 + 8))(v3, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v13, v20, v17, "TransactionEntity:entitiesForIdentifier", v15, v16, 2u);
    MEMORY[0x1BFB45F20](v16, -1, -1);
  }

  (*(v4 + 8))(v7, v22);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1BD51A368(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD1CDC44;

  return sub_1BD51C214(a1);
}

unint64_t sub_1BD51A45C()
{
  result = qword_1EBD49370;
  if (!qword_1EBD49370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49370);
  }

  return result;
}

unint64_t sub_1BD51A4B0()
{
  result = qword_1EBD49378;
  if (!qword_1EBD49378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49378);
  }

  return result;
}

unint64_t sub_1BD51A508()
{
  result = qword_1EBD49380;
  if (!qword_1EBD49380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49388);
    sub_1BD51A4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49380);
  }

  return result;
}

uint64_t sub_1BD51A58C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1BD51A6F4();
  *v5 = v2;
  v5[1] = sub_1BD0F985C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

unint64_t sub_1BD51A644()
{
  result = qword_1EBD49390;
  if (!qword_1EBD49390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49390);
  }

  return result;
}

unint64_t sub_1BD51A69C()
{
  result = qword_1EBD49398;
  if (!qword_1EBD49398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49398);
  }

  return result;
}

unint64_t sub_1BD51A6F4()
{
  result = qword_1EBD493A0;
  if (!qword_1EBD493A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493A0);
  }

  return result;
}

unint64_t sub_1BD51A74C()
{
  result = qword_1EBD493A8;
  if (!qword_1EBD493A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493A8);
  }

  return result;
}

uint64_t sub_1BD51A7A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36C80 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49400);
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1BD51A858()
{
  result = qword_1EBD493B0;
  if (!qword_1EBD493B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493B0);
  }

  return result;
}

unint64_t sub_1BD51A8AC()
{
  result = qword_1EBD493B8;
  if (!qword_1EBD493B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493B8);
  }

  return result;
}

unint64_t sub_1BD51A904()
{
  result = qword_1EBD493C0;
  if (!qword_1EBD493C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493C0);
  }

  return result;
}

uint64_t sub_1BD51A958()
{
  sub_1BD51AC68();
  v1 = sub_1BE048DE4();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1BD51A9FC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1BD51AAE8(uint64_t a1)
{
  v2 = sub_1BD0D7160();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_1BD51AB38()
{
  result = qword_1EBD493D8;
  if (!qword_1EBD493D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493D8);
  }

  return result;
}

uint64_t sub_1BD51AB90()
{
  sub_1BD51A904();

  return sub_1BE048EF4();
}

unint64_t sub_1BD51AC14()
{
  result = qword_1EBD493E8;
  if (!qword_1EBD493E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493E8);
  }

  return result;
}

unint64_t sub_1BD51AC68()
{
  result = qword_1EBD493F8;
  if (!qword_1EBD493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD493F8);
  }

  return result;
}

uint64_t sub_1BD51ACBC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[19] = a1;
  v2[20] = v3;
  v2[21] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BD51ACE4, 0, 0);
}

uint64_t sub_1BD51ACE4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[22] = v1;
  v2 = sub_1BE052404();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD51AE40;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49490);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD51AFCC;
  v0[13] = &block_descriptor_16_4;
  v0[14] = v3;
  [v1 transactionTagsForTransactionWithIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD51AE40()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD51AF20, 0, 0);
}

uint64_t sub_1BD51AF20()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    sub_1BD518C08(v1);
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v0 + 152);

  *v4 = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1BD51AFCC(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = 0;
  if (a2)
  {
    sub_1BD51C9A0();
    sub_1BD51C9EC(&qword_1EBD49498, sub_1BD51C9A0);
    v4 = sub_1BE052A34();
  }

  **(*(v3 + 64) + 40) = v4;

  return MEMORY[0x1EEE6DED8](v3);
}

uint64_t sub_1BD51B088(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[20] = a1;
  v2[21] = v3;
  v2[22] = v4;
  return MEMORY[0x1EEE6DFA0](sub_1BD51B0B0, 0, 0);
}

uint64_t sub_1BD51B0B0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[23] = v1;
  v2 = sub_1BE052404();
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1BD51B20C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52830);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD784ED8;
  v0[13] = &block_descriptor_13_3;
  v0[14] = v3;
  [v1 passUniqueIdentifierForTransactionWithIdentifier:v2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD51B20C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD51B2EC, 0, 0);
}

id sub_1BD51B2EC()
{
  v13 = v0;
  v1 = *(v0 + 152);

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    if (v1)
    {
      v4 = sub_1BE052404();
    }

    else
    {
      v4 = 0;
    }

    v5 = [v3 passWithUniqueID_];

    v6 = v5;
    v7 = *(v0 + 184);
    v8 = *(v0 + 160);
    if (v6)
    {
      sub_1BD02F840(v6, 0, 0xF000000000000000, v12);

      v9 = v12[1];
      *v8 = v12[0];
      v8[1] = v9;
      v10 = v12[3];
      v8[2] = v12[2];
      v8[3] = v10;
    }

    else
    {

      v8[2] = 0u;
      v8[3] = 0u;
      *v8 = 0u;
      v8[1] = 0u;
    }

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD51B424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a1;
  v75 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v74 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v6);
  v73 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD493E0);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v12);
  v68 = &v66 - v13;
  v14 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v16 = sub_1BE04A874();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v23 = sub_1BE04A884();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49438);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v16, qword_1EBDAB400);
  v26 = *(v17 + 16);
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v72 = sub_1BE0487F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C740);
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v71 = sub_1BE048824();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49440);
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  v77 = sub_1BE048814();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49448);
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD0F0AB4();
  v76 = sub_1BE0487E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49450);
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD51C94C();
  v70 = sub_1BE0487E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49460);
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD0DE4F4(&qword_1EBD49468, &qword_1EBD49470);
  v69 = sub_1BE048804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49478);
  sub_1BE052354();
  v26(v20, v25, v16);
  sub_1BE04B0A4();
  sub_1BE04A894();
  sub_1BD0DE4F4(&qword_1EBD49480, &qword_1EBD49488);
  v27 = sub_1BE048804();
  v28 = v78;
  result = [v78 identifier];
  if (result)
  {
    v30 = result;
    v31 = sub_1BE052434();
    v33 = v32;

    v34 = [v28 amount];
    v35 = v73;
    v36 = v72;
    v37 = v77;
    if (v34)
    {
      v38 = v34;
      v39 = [v28 currencyCode];
      if (v39)
      {
        v40 = v39;
        sub_1BE052434();
        v66 = v33;

        sub_1BE0533F4();
        v41 = v68;
        sub_1BE048B54();
        v42 = sub_1BE048B74();
        (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
        sub_1BD0DE19C(v41, v67, &qword_1EBD493E0);
        sub_1BE0487D4();

        v43 = v41;
        v37 = v77;
        v33 = v66;
        sub_1BD0DE53C(v43, &qword_1EBD493E0);
      }

      else
      {
      }
    }

    v44 = [v28 transactionDate];
    if (v44)
    {
      v45 = v44;
      sub_1BE04AEE4();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = sub_1BE04AF64();
    (*(*(v47 - 8) + 56))(v35, v46, 1, v47);
    sub_1BD0DE19C(v35, v74, &unk_1EBD39970);
    sub_1BE0487D4();
    sub_1BD0DE53C(v35, &unk_1EBD39970);
    v48 = [v28 merchant];
    v49 = v71;
    if (v48)
    {
      v50 = v48;
      v51 = [v48 displayName];
      if (v51)
      {
        v52 = v37;
        v53 = v36;
        v54 = v33;
        v55 = v31;
        v56 = v27;
        v57 = v51;
        v58 = sub_1BE052434();
        v60 = v59;

        v27 = v56;
        v31 = v55;
        v33 = v54;
        v36 = v53;
        v37 = v52;
        v28 = v78;
      }

      else
      {
        v58 = 0;
        v60 = 0;
      }

      v85 = v58;
      v86 = v60;
      sub_1BE0487D4();
      v61 = sub_1BD0F0F04([v50 category]);
      if (v61 != 8)
      {
        LOBYTE(v85) = v61;
        sub_1BE0487D4();
      }
    }

    LOBYTE(v85) = sub_1BD9F4650([v28 transactionType]);
    v62 = v70;
    sub_1BE0487D4();

    *&v80 = v31;
    *(&v80 + 1) = v33;
    *&v81 = v36;
    *(&v81 + 1) = v49;
    *&v82 = v37;
    *(&v82 + 1) = v76;
    *&v83 = v62;
    *(&v83 + 1) = v69;
    v84 = v27;
    v85 = v31;
    v86 = v33;
    v87 = v36;
    v88 = v49;
    v89 = v37;
    v90 = v76;
    v91 = v62;
    v92 = v69;
    v93 = v27;
    sub_1BD0D7104(&v80, v79);
    result = sub_1BD0D71B4(&v85);
    v63 = v83;
    v64 = v75;
    *(v75 + 32) = v82;
    *(v64 + 48) = v63;
    *(v64 + 64) = v84;
    v65 = v81;
    *v64 = v80;
    *(v64 + 16) = v65;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD51BF10()
{
  v23 = sub_1BE048D74();
  v0 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39290);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD528E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v22 - v14;
  v16 = sub_1BE04A884();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49420);
  sub_1BE04A864();
  (*(v17 + 56))(v15, 1, 1, v16);
  v19 = sub_1BE048654();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v0 + 104))(v3, *MEMORY[0x1E695A500], v23);
  sub_1BD0D7160();
  return sub_1BE0488C4();
}

uint64_t sub_1BD51C214(uint64_t a1)
{
  v1[28] = a1;
  v2 = sub_1BE04CFC4();
  v1[29] = v2;
  v1[30] = *(v2 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v3 = sub_1BE04CFE4();
  v1[33] = v3;
  v1[34] = *(v3 - 8);
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD51C33C, 0, 0);
}

uint64_t sub_1BD51C33C()
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v1 = sub_1BE04CFD4();
  v2 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    v4 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v1, v2, v4, "TransactionEntity:entitiesForIdentifier", "", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v5 = v0[34];
  v6 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[29];

  (*(v10 + 16))(v9, v8, v11);
  sub_1BE04D024();
  swift_allocObject();
  v0[36] = sub_1BE04D014();
  (*(v10 + 8))(v8, v11);
  (*(v5 + 8))(v6, v7);
  v12 = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v0[37] = v12;
  v13 = sub_1BE052724();
  v0[38] = v13;
  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_1BD51C5D0;
  v14 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
  v0[19] = MEMORY[0x1E69E9820];
  v0[20] = 1107296256;
  v0[21] = sub_1BD9C18BC;
  v0[22] = &block_descriptor_116;
  v0[23] = v14;
  [v12 transactionsWithTransactionIdentifiers:v13 completion:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD51C5D0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD51C6B0, 0, 0);
}

char *sub_1BD51C6B0()
{
  v1 = *(v0 + 216);

  if (!v1)
  {

LABEL_16:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  if (v1 >> 62)
  {
    v2 = sub_1BE053704();
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
LABEL_15:
    v13 = *(v0 + 296);

    goto LABEL_16;
  }

LABEL_4:
  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1BD532188(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v15;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB40900](v4, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    sub_1BD51B424(v6, v0 + 80);
    v8 = *(v15 + 16);
    v7 = *(v15 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_1BD532188((v7 > 1), v8 + 1, 1);
    }

    ++v4;
    *(v15 + 16) = v8 + 1;
    v9 = v15 + 72 * v8;
    *(v9 + 32) = *(v0 + 80);
    v10 = *(v0 + 96);
    v11 = *(v0 + 112);
    v12 = *(v0 + 128);
    *(v9 + 96) = *(v0 + 144);
    *(v9 + 64) = v11;
    *(v9 + 80) = v12;
    *(v9 + 48) = v10;
  }

  while (v2 != v4);

LABEL_17:
  sub_1BD51A07C();

  v14 = *(v0 + 8);

  return v14(v5);
}

unint64_t sub_1BD51C8A4()
{
  result = qword_1EBD49428;
  if (!qword_1EBD49428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49428);
  }

  return result;
}

unint64_t sub_1BD51C8F8()
{
  result = qword_1EBD49430;
  if (!qword_1EBD49430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49430);
  }

  return result;
}

unint64_t sub_1BD51C94C()
{
  result = qword_1EBD49458;
  if (!qword_1EBD49458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49458);
  }

  return result;
}

unint64_t sub_1BD51C9A0()
{
  result = qword_1EBD398A0;
  if (!qword_1EBD398A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD398A0);
  }

  return result;
}

uint64_t sub_1BD51C9EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD51CA70()
{
  result = qword_1EBD494A0;
  if (!qword_1EBD494A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494A0);
  }

  return result;
}

uint64_t type metadata accessor for MerchantOriginIconImage()
{
  result = qword_1EBD494A8;
  if (!qword_1EBD494A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD51CB38()
{
  _s14MerchantOriginOMa(319);
  if (v0 <= 0x3F)
  {
    sub_1BD1C86BC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD51CBE8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494B8);
  MEMORY[0x1EEE9AC00](v61, v2);
  v4 = (&v56 - v3);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494C0);
  MEMORY[0x1EEE9AC00](v59, v5);
  v7 = &v56 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494C8);
  MEMORY[0x1EEE9AC00](v62, v8);
  v60 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v56 - v12;
  v58 = type metadata accessor for WebIconImage();
  MEMORY[0x1EEE9AC00](v58, v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v57 = &v56 - v19;
  v20 = _s7WebInfoVMa(0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = _s14MerchantOriginOMa(0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for MerchantOriginIconImage();
  sub_1BD51D460(&v1[*(v28 + 20)], v27, _s14MerchantOriginOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD51D3F8(v27, v23, _s7WebInfoVMa);
      sub_1BD0DE19C(&v23[*(v20 + 20)], v13, &unk_1EBD3CF70);
      v30 = *v1;
      v31 = qword_1BE0DEF20[v30];
      v32 = qword_1BE0DEF40[v30];
      v33 = &v1[*(v28 + 24)];
      v34 = *v33;
      v35 = *(v33 + 1);
      sub_1BD226B4C(v13, v16);
      v36 = v58;
      v37 = &v16[*(v58 + 20)];
      *v37 = v32;
      *(v37 + 1) = v32;
      *&v16[v36[6]] = v31;
      v38 = &v16[v36[7]];
      *v38 = v34;
      *(v38 + 1) = v35;
      v39 = &v16[v36[8]];
      *v39 = swift_getKeyPath();
      v39[8] = 0;
      v40 = v57;
      sub_1BD51D3F8(v16, v57, type metadata accessor for WebIconImage);
      sub_1BD51D460(v40, v7, type metadata accessor for WebIconImage);
      swift_storeEnumTagMultiPayload();
      sub_1BD51D2E4();
      sub_1BD51D33C();
      sub_1BE048C84();
      v41 = v60;
      sub_1BE04F9A4();
      sub_1BD0DE19C(v41, v4, &qword_1EBD494C8);
      swift_storeEnumTagMultiPayload();
      sub_1BD51D258();
      sub_1BD3F835C();
      sub_1BE04F9A4();
      sub_1BD51D390(v41);
      sub_1BD51D4C8(v40, type metadata accessor for WebIconImage);
      return sub_1BD51D4C8(v23, _s7WebInfoVMa);
    }

    else
    {
      v48 = &v1[*(v28 + 24)];
      v50 = *v48;
      v49 = *(v48 + 1);
      v51 = *v1;
      v52 = qword_1BE0DEF20[v51];
      v53 = qword_1BE0DEF40[v51];
      sub_1BE048C84();
      v54 = sub_1BE0512A4();
      v55 = sub_1BE051284();
      *v4 = v50;
      v4[1] = v49;
      v4[2] = v53;
      v4[3] = v53;
      v4[4] = v52;
      v4[5] = v54;
      v4[6] = v55;
      swift_storeEnumTagMultiPayload();
      sub_1BD51D258();
      sub_1BD3F835C();
      return sub_1BE04F9A4();
    }
  }

  else
  {
    v43 = *(v27 + 4);
    v44 = *(v27 + 5);
    v45 = qword_1BE0DEF40[*v1];
    v46 = swift_allocObject();
    v46[2] = v43;
    v46[3] = v44;
    v46[4] = v45;
    v46[5] = v45;

    *v7 = sub_1BD306C0C;
    *(v7 + 1) = v46;
    v7[16] = 0;
    *(v7 + 3) = v45;
    *(v7 + 4) = v45;
    swift_storeEnumTagMultiPayload();
    sub_1BD51D2E4();
    sub_1BD51D33C();
    sub_1BE048964();
    v47 = v60;
    sub_1BE04F9A4();
    sub_1BD0DE19C(v47, v4, &qword_1EBD494C8);
    swift_storeEnumTagMultiPayload();
    sub_1BD51D258();
    sub_1BD3F835C();
    sub_1BE04F9A4();

    return sub_1BD51D390(v47);
  }
}

unint64_t sub_1BD51D258()
{
  result = qword_1EBD494D0;
  if (!qword_1EBD494D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD494C8);
    sub_1BD51D2E4();
    sub_1BD51D33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494D0);
  }

  return result;
}

unint64_t sub_1BD51D2E4()
{
  result = qword_1EBD494D8;
  if (!qword_1EBD494D8)
  {
    type metadata accessor for WebIconImage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494D8);
  }

  return result;
}

unint64_t sub_1BD51D33C()
{
  result = qword_1EBD494E0;
  if (!qword_1EBD494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494E0);
  }

  return result;
}

uint64_t sub_1BD51D390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD494C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD51D3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD51D460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD51D4C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD51D528()
{
  result = qword_1EBD494E8;
  if (!qword_1EBD494E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD494F0);
    sub_1BD51D258();
    sub_1BD3F835C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD494E8);
  }

  return result;
}

void sub_1BD51D5B4(void *a1)
{
  sub_1BD3EFFC8(MEMORY[0x1E69E7CC0]);
  v2 = sub_1BE04A0E4();
  v3 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v4 = sub_1BE052404();
  v5 = sub_1BE052724();

  v6 = [v3 initWithTitle:v4 preferences:v5 selectedIndex:v2 readOnly:0];

  if (v6)
  {
    v7 = sub_1BE052404();
    [v6 setContactKey_];

    v8 = [objc_opt_self() defaultInstance];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 saveContactToCoreRecents:a1 preference:v6];

      [a1 setContactSource_];
      [a1 setRecentContact_];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1BD51D758(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1BE0B7020;
    *(v4 + 32) = a3;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = a3;
  sub_1BD3EFFC8(v4);

  v6 = sub_1BE04A0E4();
  v7 = objc_allocWithZone(MEMORY[0x1E69B8D30]);
  v8 = sub_1BE052404();
  v9 = sub_1BE052724();

  v10 = [v7 initWithTitle:v8 preferences:v9 selectedIndex:v6 readOnly:0];

  if (v10)
  {
    v11 = sub_1BE052404();
    [v10 setContactKey_];

    [v10 mergeRecentsAndMeCard];
    v12 = [v10 preferences];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1BE052744();

      v15 = sub_1BD3FD0A4(v14);

      if (v15)
      {

        return v15;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1BD51D954()
{
  sub_1BD127BD0(319, &qword_1EBD4F750, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BD51DA4C(319, &qword_1EBD45140, MEMORY[0x1E6968FB0]);
    if (v1 <= 0x3F)
    {
      sub_1BD51DA4C(319, &qword_1EBD46190, MEMORY[0x1E69676D0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD51DA4C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD51DAE8()
{
  type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1BD127BD0(319, &qword_1EBD496E0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1BD49DA08();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BD51DBA8()
{
  result = qword_1EBD38DA8;
  if (!qword_1EBD38DA8)
  {
    type metadata accessor for NavigationController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD38DA8);
  }

  return result;
}

uint64_t sub_1BD51DC1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49518);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v23 - v6;
  *v7 = sub_1BE04F504();
  *(v7 + 1) = 0x403E000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49520);
  sub_1BD51DDEC(v2, &v7[*(v8 + 44)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B6CA0;
  v10 = sub_1BE050204();
  *(inited + 32) = v10;
  v11 = sub_1BE050224();
  *(inited + 33) = v11;
  v12 = sub_1BE050214();
  sub_1BE050214();
  if (sub_1BE050214() != v10)
  {
    v12 = sub_1BE050214();
  }

  sub_1BE050214();
  if (sub_1BE050214() != v11)
  {
    v12 = sub_1BE050214();
  }

  sub_1BE04E1F4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1BD0DE204(v7, a1, &qword_1EBD49518);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49528);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1BD51DDEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v85 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v86 = v5;
  v87 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v91 = &v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v88 = &v84 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49530);
  v89 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v84 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v84 - v18;
  v20 = sub_1BE04AA64();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20, v23);
  v24 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v84 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49538);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v95 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v33);
  v94 = &v84 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v93 = &v84 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v92 = &v84 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v99 = &v84 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v84 - v46;
  v90 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  sub_1BD0DE19C(a1 + *(v90 + 5), v19, &unk_1EBD3CF70);
  v48 = (*(v21 + 48))(v19, 1, v20);
  v97 = v15;
  v98 = v47;
  if (v48 == 1)
  {
    sub_1BD0DE53C(v19, &unk_1EBD3CF70);
    v49 = 1;
    v50 = v89;
  }

  else
  {
    v84 = v12;
    v51 = *(v21 + 32);
    v51(v28, v19, v20);
    (*(v21 + 16))(v24, v28, v20);
    v52 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v53 = swift_allocObject();
    v51((v53 + v52), v24, v20);
    v47 = v98;
    v12 = v84;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548);
    sub_1BD51FE24();
    v54 = v97;
    sub_1BE051704();
    (*(v21 + 8))(v28, v20);
    v50 = v89;
    (*(v89 + 32))(v47, v54, v12);
    v49 = 0;
  }

  v55 = *(v50 + 56);
  v56 = 1;
  v55(v47, v49, 1, v12);
  v57 = a1[1];
  v58 = v92;
  if (v57)
  {
    v59 = *a1;
    v60 = swift_allocObject();
    *(v60 + 16) = v59;
    *(v60 + 24) = v57;
    sub_1BE048C84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548);
    sub_1BD51FE24();
    v61 = v97;
    sub_1BE051704();
    v62 = v99;
    (*(v50 + 32))(v99, v61, v12);
    v56 = 0;
  }

  else
  {
    v62 = v99;
  }

  v55(v62, v56, 1, v12);
  v63 = v91;
  sub_1BD0DE19C(a1 + *(v90 + 6), v91, &qword_1EBD3F7C0);
  v64 = sub_1BE0491B4();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v63, 1, v64) != 1)
  {
    v90 = a1;
    v67 = v88;
    sub_1BE0491A4();
    (*(v65 + 8))(v63, v64);
    v68 = sub_1BE049294();
    v69 = *(v68 - 8);
    if ((*(v69 + 48))(v67, 1, v68) == 1)
    {
      sub_1BD0DE53C(v67, &qword_1EBD48358);
    }

    else
    {
      v70 = sub_1BE049274();
      (*(v69 + 8))(v67, v68);
      if (v70)
      {
        v71 = v87;
        sub_1BD51FD30(v90, v87);
        v72 = (*(v85 + 80) + 16) & ~*(v85 + 80);
        v73 = swift_allocObject();
        sub_1BD51FD94(v71, v73 + v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548);
        sub_1BD51FE24();
        v74 = v97;
        sub_1BE051704();
        (*(v50 + 32))(v58, v74, v12);
        v66 = 0;
LABEL_14:
        v62 = v99;
        goto LABEL_15;
      }
    }

    v66 = 1;
    goto LABEL_14;
  }

  sub_1BD0DE53C(v63, &qword_1EBD3F7C0);
  v66 = 1;
LABEL_15:
  v55(v58, v66, 1, v12);
  v75 = v98;
  v76 = v93;
  sub_1BD0DE19C(v98, v93, &qword_1EBD49538);
  v77 = v62;
  v78 = v62;
  v79 = v94;
  sub_1BD0DE19C(v77, v94, &qword_1EBD49538);
  v80 = v95;
  sub_1BD0DE19C(v58, v95, &qword_1EBD49538);
  v81 = v96;
  sub_1BD0DE19C(v76, v96, &qword_1EBD49538);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49540);
  sub_1BD0DE19C(v79, v81 + *(v82 + 48), &qword_1EBD49538);
  sub_1BD0DE19C(v80, v81 + *(v82 + 64), &qword_1EBD49538);
  sub_1BD0DE53C(v58, &qword_1EBD49538);
  sub_1BD0DE53C(v78, &qword_1EBD49538);
  sub_1BD0DE53C(v75, &qword_1EBD49538);
  sub_1BD0DE53C(v80, &qword_1EBD49538);
  sub_1BD0DE53C(v79, &qword_1EBD49538);
  return sub_1BD0DE53C(v76, &qword_1EBD49538);
}

void sub_1BD51E7D0()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E6963608]) init];
  v1 = sub_1BE04A9C4();
  v6[0] = 0;
  v2 = [v0 openURL:v1 configuration:0 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    v5 = sub_1BE04A854();

    swift_willThrow();
  }
}

uint64_t sub_1BD51E8C0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  sub_1BE051C54();
  v6 = sub_1BE051574();
  sub_1BE051C54();
  v7 = sub_1BE050354();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1BE0503B4();
  sub_1BD0DE53C(v5, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560) + 28);
  sub_1BE04F804();
  v12 = sub_1BE04F824();
  (*(*(v12 - 8) + 56))(v10 + v11, 0, 1, v12);
  result = swift_getKeyPath();
  *v10 = result;
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v8;
  return result;
}

uint64_t sub_1BD51EABC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  v12 = sub_1BE052404();
  v13 = PKTelephoneURLFromPhoneNumber();

  if (v13)
  {
    sub_1BE04A9F4();

    v14 = sub_1BE04AA64();
    (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  }

  else
  {
    v14 = sub_1BE04AA64();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  }

  sub_1BD0DE204(v7, v11, &unk_1EBD3CF70);
  sub_1BD0DE19C(v11, v3, &unk_1EBD3CF70);
  sub_1BE04AA64();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v3, 1, v14) != 1)
  {
    v16 = sub_1BE04A9C4();
    (*(v15 + 8))(v3, v14);
  }

  PKOpenURL();

  return sub_1BD0DE53C(v11, &unk_1EBD3CF70);
}

uint64_t sub_1BD51ED20@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  sub_1BE051C54();
  v6 = sub_1BE051574();
  sub_1BE051C54();
  v7 = sub_1BE050354();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1BE0503B4();
  sub_1BD0DE53C(v5, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560) + 28);
  sub_1BE04F804();
  v12 = sub_1BE04F824();
  (*(*(v12 - 8) + 56))(v10 + v11, 0, 1, v12);
  result = swift_getKeyPath();
  *v10 = result;
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v8;
  return result;
}

uint64_t sub_1BD51EF18(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2, v6);
  v7 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v21[-v10];
  v12 = a1 + *(v3 + 28);
  v13 = *v12;
  v14 = *(v12 + 8);
  v21[16] = v13;
  v22 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  result = sub_1BE0516A4();
  if ((v21[15] & 1) == 0)
  {
    v16 = sub_1BE0528D4();
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    sub_1BD51FD30(a1, &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_1BE0528A4();
    v17 = sub_1BE052894();
    v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v19 = swift_allocObject();
    v20 = MEMORY[0x1E69E85E0];
    *(v19 + 16) = v17;
    *(v19 + 24) = v20;
    sub_1BD51FD94(v7, v19 + v18);
    sub_1BD122C00(0, 0, v11, &unk_1BE0DF0A8, v19);
  }

  return result;
}

uint64_t sub_1BD51F118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  v4[7] = swift_task_alloc();
  v5 = sub_1BE0491B4();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = sub_1BE0528A4();
  v4[12] = sub_1BE052894();
  v7 = sub_1BE052844();
  v4[13] = v7;
  v4[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD51F248, v7, v6);
}

uint64_t sub_1BD51F248()
{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  *(v0 + 120) = v2;
  v3 = (v1 + *(v2 + 20));
  v4 = *v3;
  *(v0 + 186) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 128) = v5;
  *(v0 + 24) = v5;
  *(v0 + 184) = 1;
  sub_1BE048964();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  *(v0 + 144) = sub_1BE052894();
  v7 = sub_1BE052844();
  *(v0 + 152) = v7;
  *(v0 + 160) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD51F344, v7, v6);
}

uint64_t sub_1BD51F344()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  sub_1BD0DE19C(v4 + *(v5 + 24), v3, &qword_1EBD3F7C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[7];

    sub_1BD0DE53C(v6, &qword_1EBD3F7C0);
    v7 = v0[13];
    v8 = v0[14];

    return MEMORY[0x1EEE6DFA0](sub_1BD51F774, v7, v8);
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_1BD51F4A4;

    return sub_1BD7369D4();
  }
}

uint64_t sub_1BD51F4A4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1BD51F5CC, v4, v3);
}

uint64_t sub_1BD51F5CC()
{
  v1 = v0[22];
  if (!v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

LABEL_6:
    v3 = v0[13];
    v4 = v0[14];
    v2 = sub_1BD51F774;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v2 = [objc_allocWithZone(PKMerchantMapViewController) initWithMapItem:v1 configOptions:129];
  if (!v2)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v5 = v2;
  v6 = v0[15];
  v7 = v0[6];

  v8 = v5;
  sub_1BE04EC54();
  sub_1BE0501D4();
  if (*(v7 + *(v6 + 24)))
  {
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];
    sub_1BE048964();
    sub_1BD9821EC(v8);

    (*(v10 + 8))(v9, v11);
    goto LABEL_6;
  }

  type metadata accessor for NavigationController();
  sub_1BD51DBA8();

  return sub_1BE04EEB4();
}

uint64_t sub_1BD51F774()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 186);

  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 185) = 0;
  sub_1BE0516B4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1BD51F828@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49130);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v14 - v4;
  sub_1BE051C54();
  v6 = sub_1BE051574();
  sub_1BE051C54();
  v7 = sub_1BE050354();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = sub_1BE0503B4();
  sub_1BD0DE53C(v5, &qword_1EBD49130);
  KeyPath = swift_getKeyPath();
  v10 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49548) + 36));
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49560) + 28);
  sub_1BE04F804();
  v12 = sub_1BE04F824();
  (*(*(v12 - 8) + 56))(v10 + v11, 0, 1, v12);
  result = swift_getKeyPath();
  *v10 = result;
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v8;
  return result;
}

BOOL sub_1BD51FA14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  sub_1BD0DE19C(v0 + *(v13 + 20), v12, &unk_1EBD3CF70);
  v14 = sub_1BE04AA64();
  v15 = 1;
  v16 = (*(*(v14 - 8) + 48))(v12, 1, v14);
  sub_1BD0DE53C(v12, &unk_1EBD3CF70);
  if (v16 == 1 && !*(v0 + 8))
  {
    sub_1BD0DE19C(v0 + *(v13 + 24), v4, &qword_1EBD3F7C0);
    v17 = sub_1BE0491B4();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v4, 1, v17) == 1)
    {
      v19 = &qword_1EBD3F7C0;
      v20 = v4;
    }

    else
    {
      sub_1BE0491A4();
      (*(v18 + 8))(v4, v17);
      v21 = sub_1BE049294();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v8, 1, v21) != 1)
      {
        v23 = sub_1BE049274();
        (*(v22 + 8))(v8, v21);
        return v23 != 0;
      }

      v19 = &qword_1EBD48358;
      v20 = v8;
    }

    sub_1BD0DE53C(v20, v19);
    return 0;
  }

  return v15;
}

uint64_t sub_1BD51FD30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD51FD94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitMerchantBrandViewButtons(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD51FE24()
{
  result = qword_1EBD49550;
  if (!qword_1EBD49550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49548);
    sub_1BD0F14E8();
    sub_1BD0DE4F4(&qword_1EBD49558, &qword_1EBD49560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49550);
  }

  return result;
}

uint64_t sub_1BD51FF10(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1BD51FF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v82 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v83 = &v74 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48360);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v77 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v76 = &v74 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v79 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v74 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v74 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v74 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48358);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v78 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v37 = &v74 - v36;
  v38 = type metadata accessor for FinanceKitMerchantBrandViewButtons.ViewModel(0);
  v39 = *(v38 + 20);
  v40 = sub_1BE04AA64();
  v85 = *(v40 - 8);
  v86 = v40;
  v41 = *(v85 + 56);
  v81 = v39;
  v87 = v41;
  v88 = v85 + 56;
  (v41)(a2 + v39, 1, 1);
  v42 = *(v38 + 24);
  v43 = sub_1BE0491B4();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v84 = a2;
  v80 = v42;
  v45(a2 + v42, 1, 1, v43);
  sub_1BD0DE19C(a1, v30, &qword_1EBD3F7C0);
  v89 = *(v44 + 48);
  if (v89(v30, 1, v43) == 1)
  {
    sub_1BD0DE53C(v30, &qword_1EBD3F7C0);
    v46 = v82;
  }

  else
  {
    v75 = a1;
    sub_1BE0491A4();
    (*(v44 + 8))(v30, v43);
    v47 = sub_1BE049294();
    v48 = *(v47 - 8);
    if ((*(v48 + 48))(v37, 1, v47) == 1)
    {
      sub_1BD0DE53C(v37, &qword_1EBD48358);
      a1 = v75;
      v46 = v82;
    }

    else
    {
      v49 = sub_1BE049214();
      v51 = v50;
      (*(v48 + 8))(v37, v47);
      a1 = v75;
      v46 = v82;
      if (v51)
      {
        goto LABEL_13;
      }
    }
  }

  sub_1BD0DE19C(a1, v26, &qword_1EBD3F7C0);
  if (v89(v26, 1, v43) == 1)
  {
    v52 = &qword_1EBD3F7C0;
    v53 = v26;
  }

  else
  {
    v54 = v76;
    sub_1BE049194();
    (*(v44 + 8))(v26, v43);
    v55 = sub_1BE04A0D4();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v54, 1, v55) != 1)
    {
      v49 = sub_1BE04A064();
      v57 = v54;
      v51 = v58;
      (*(v56 + 8))(v57, v55);
      goto LABEL_12;
    }

    v52 = &qword_1EBD48360;
    v53 = v54;
  }

  sub_1BD0DE53C(v53, v52);
  v49 = 0;
  v51 = 0;
LABEL_12:

LABEL_13:
  v59 = v84;
  *v84 = v49;
  v59[1] = v51;
  sub_1BD0DE19C(a1, v22, &qword_1EBD3F7C0);
  if (v89(v22, 1, v43) == 1)
  {
    v60 = &qword_1EBD3F7C0;
    v61 = v22;
LABEL_17:
    sub_1BD0DE53C(v61, v60);
    v66 = v83;
    v67 = v86;
    v87(v46, 1, 1, v86);
    v68 = v79;
    goto LABEL_18;
  }

  v62 = v78;
  sub_1BE0491A4();
  v63 = v62;
  (*(v44 + 8))(v22, v43);
  v64 = sub_1BE049294();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v63, 1, v64) == 1)
  {
    v60 = &qword_1EBD48358;
    v61 = v63;
    goto LABEL_17;
  }

  sub_1BE049234();
  (*(v65 + 8))(v63, v64);
  v67 = v86;
  v72 = (*(v85 + 48))(v46, 1, v86);
  v66 = v83;
  v68 = v79;
  if (v72 != 1)
  {
    (*(v85 + 32))(v83, v46, v67);
    v87(v66, 0, 1, v67);
    goto LABEL_28;
  }

LABEL_18:
  sub_1BD0DE19C(a1, v68, &qword_1EBD3F7C0);
  if (v89(v68, 1, v43) == 1)
  {
    sub_1BD0DE53C(v68, &qword_1EBD3F7C0);
LABEL_22:
    v87(v66, 1, 1, v67);
    goto LABEL_26;
  }

  v69 = v77;
  sub_1BE049194();
  (*(v44 + 8))(v68, v43);
  v70 = sub_1BE04A0D4();
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v69, 1, v70) == 1)
  {
    sub_1BD0DE53C(v69, &qword_1EBD48360);
    v67 = v86;
    goto LABEL_22;
  }

  sub_1BE04A084();
  (*(v71 + 8))(v69, v70);
  v67 = v86;
LABEL_26:
  if ((*(v85 + 48))(v46, 1, v67) != 1)
  {
    sub_1BD0DE53C(v46, &unk_1EBD3CF70);
  }

LABEL_28:
  sub_1BD2C7C4C(v66, v59 + v81, &unk_1EBD3CF70);
  return sub_1BD2C7C4C(a1, v59 + v80, &qword_1EBD3F7C0);
}

uint64_t sub_1BD5208C0(uint64_t a1)
{
  v4 = *(type metadata accessor for FinanceKitMerchantBrandViewButtons(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD0F985C;

  return sub_1BD51F118(a1, v6, v7, v1 + v5);
}

unint64_t sub_1BD5209B0()
{
  result = qword_1EBD49568;
  if (!qword_1EBD49568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49528);
    sub_1BD0DE4F4(&unk_1EBD49570, &qword_1EBD49518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49568);
  }

  return result;
}

id sub_1BD520A68()
{
  v1 = v0;
  v2 = sub_1BE04D214();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04AA64();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04A134();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BD520F84();
  v16 = [objc_allocWithZone(MEMORY[0x1E69853A0]) initWithFrame:v15 configuration:{0.0, 0.0, 0.0, 0.0}];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49658);
  sub_1BE04FF74();
  v17 = v41[0];
  [v16 setUIDelegate_];

  sub_1BE04FF74();
  v18 = v41[0];
  [v16 setNavigationDelegate_];

  v19 = [v16 scrollView];
  v20 = [v19 pinchGestureRecognizer];

  if (v20)
  {
    [v20 setEnabled_];
  }

  v21 = v16;
  [v21 setOpaque_];
  v22 = [objc_opt_self() systemBackgroundColor];
  [v21 setBackgroundColor_];

  v23 = *(v1 + 16);
  v24 = [v23 actionURL];
  sub_1BE04A9F4();

  sub_1BE04A114();
  v25 = sub_1BE04A0F4();
  (*(v11 + 8))(v14, v10);

  sub_1BE04D1E4();
  sub_1BD5219CC(v1, v41);
  v26 = sub_1BE04D204();
  v27 = sub_1BE052C54();
  sub_1BD521A04(v1);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v41[0] = v29;
    *v28 = 136315138;
    v30 = [v23 actionURL];
    sub_1BE04A9F4();

    sub_1BD5288A0(&qword_1EBD49660, MEMORY[0x1E6968FB0]);
    v31 = v38;
    v32 = sub_1BE053B24();
    v34 = v33;
    (*(v37 + 8))(v9, v31);
    v35 = sub_1BD123690(v32, v34, v41);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_1BD026000, v26, v27, "Payment offer web view opening %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1BFB45F20](v29, -1, -1);
    MEMORY[0x1BFB45F20](v28, -1, -1);
  }

  (*(v39 + 8))(v5, v40);
  return v21;
}

id sub_1BD520F84()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6985350]) init];
  v1 = [objc_allocWithZone(MEMORY[0x1E69853A8]) init];
  result = [v1 defaultWebpagePreferences];
  if (result)
  {
    v3 = result;
    [result setAllowsContentJavaScript_];

    [v1 setUserContentController_];
    v4 = [objc_allocWithZone(MEMORY[0x1E6985340]) init];
    [v1 setProcessPool_];

    v5 = [objc_opt_self() defaultDataStore];
    [v1 setWebsiteDataStore_];

    [v1 setAllowsInlineMediaPlayback_];
    v6 = objc_allocWithZone(MEMORY[0x1E6985358]);
    v7 = sub_1BE052404();
    v8 = [v6 initWithSource:v7 injectionTime:1 forMainFrameOnly:1];

    [v0 addUserScript_];
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD521438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = sub_1BE0528A4();
  v5[4] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5214D4, v7, v6);
}

uint64_t sub_1BD5214D4()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_1BE052894();
  v3 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD521574, v3, v2);
}

uint64_t sub_1BD521574()
{
  v1 = *(v0 + 40);

  v1[2](v1, 1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

id sub_1BD521620()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentOfferCriteriaSetupWebView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD5216F4(uint64_t a1, int a2)
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

uint64_t sub_1BD52173C(uint64_t result, int a2, int a3)
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

id sub_1BD5217E4@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v16 = v1[2];
  v17 = v3;
  v18 = v1[4];
  v4 = v1[1];
  v14 = *v1;
  v15 = v4;
  v5 = type metadata accessor for PaymentOfferCriteriaSetupWebView.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator_parent];
  *v7 = v14;
  v8 = v18;
  v10 = v15;
  v9 = v16;
  *(v7 + 3) = v17;
  *(v7 + 4) = v8;
  *(v7 + 1) = v10;
  *(v7 + 2) = v9;
  sub_1BD5219CC(&v14, v13);
  v12.receiver = v6;
  v12.super_class = v5;
  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1BD521884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD527180();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BD5218E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BD527180();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BD52194C()
{
  sub_1BD527180();
  sub_1BE04F964();
  __break(1u);
}

unint64_t sub_1BD521978()
{
  result = qword_1EBD49650;
  if (!qword_1EBD49650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49650);
  }

  return result;
}

uint64_t sub_1BD521A34@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v3 = *(v2 - 8);
  v49 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v51 = v5;
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49740);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v43 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49748);
  MEMORY[0x1EEE9AC00](v47, v11);
  v13 = &v43 - v12;
  v44 = &v43 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49750);
  v15 = *(v14 - 8);
  v52 = v14;
  *&v53 = v15;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v43 - v17;
  v46 = v1;
  sub_1BD521FE0(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);
  sub_1BE0516C4();
  v45 = v6;
  sub_1BD527F88(v1, v6);
  v50 = *(v3 + 80);
  v19 = (v50 + 16) & ~v50;
  v43 = v19;
  v20 = swift_allocObject();
  v48 = type metadata accessor for PaymentOfferCriteriaActionSetupView;
  sub_1BD5289F8(v6, v20 + v19, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v21 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49758);
  v23 = sub_1BD52806C();
  v24 = sub_1BD5288A0(&qword_1EBD497B0, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
  v25 = sub_1BD5282BC();
  *&v56 = &type metadata for PaymentOfferSetupProvisioningSheet;
  *(&v56 + 1) = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v47;
  v27 = v44;
  sub_1BE050F74();

  sub_1BD0DE53C(v10, &qword_1EBD49740);
  sub_1BD0DE53C(v27, &qword_1EBD49748);
  *&v56 = v26;
  *(&v56 + 1) = v21;
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v54;
  v29 = v52;
  sub_1BE050E54();
  (*(v53 + 8))(v18, v29);
  v30 = v46;
  v55 = *(v46 + *(v49 + 72));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516C4();
  v53 = v56;
  v31 = v57;
  v32 = v45;
  sub_1BD527F88(v30, v45);
  v33 = v43;
  v34 = swift_allocObject();
  v35 = v48;
  sub_1BD5289F8(v32, v34 + v33, v48);
  v36 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C8) + 36);
  *v36 = v53;
  *(v36 + 16) = v31;
  *(v36 + 24) = sub_1BD5290E4;
  *(v36 + 32) = v34;
  sub_1BD527F88(v30, v32);
  v37 = swift_allocObject();
  sub_1BD5289F8(v32, v37 + v33, v35);
  v38 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497D0) + 36));
  *v38 = sub_1BD528530;
  v38[1] = v37;
  v38[2] = 0;
  v38[3] = 0;
  sub_1BD527F88(v30, v32);
  v39 = swift_allocObject();
  sub_1BD5289F8(v32, v39 + v33, v35);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497D8);
  v41 = (v28 + *(result + 36));
  *v41 = 0;
  v41[1] = 0;
  v41[2] = sub_1BD5285A0;
  v41[3] = v39;
  return result;
}

uint64_t sub_1BD521FE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04F434();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49780);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v48 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49778);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v12);
  v51 = v48 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497F0);
  v14 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v15);
  v53 = v48 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497F8);
  MEMORY[0x1EEE9AC00](v54, v17);
  v56 = v48 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49770);
  v19 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v20);
  v24 = v48 - v23;
  v25 = *(v1 + 24);
  if (v25 == 2 || (v25 & 1) == 0)
  {
    sub_1BD523614(v11);
    v32 = sub_1BE04EC54();
    v33 = sub_1BE0501F4();
    v48[1] = v48;
    v34 = &v11[*(v8 + 36)];
    *v34 = v32;
    v34[8] = v33;
    MEMORY[0x1EEE9AC00](v33, v35);
    v48[-2] = v1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49788);
    v50 = a1;
    v37 = v36;
    v38 = sub_1BD528204();
    v49 = v14;
    v48[0] = v3;
    v39 = v38;
    v40 = sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788);
    v41 = v51;
    sub_1BE051024();
    sub_1BD0DE53C(v11, &qword_1EBD49780);
    v42 = v48[0];
    (*(v4 + 104))(v7, *MEMORY[0x1E697C438], v48[0]);
    v59 = v8;
    v60 = v37;
    v61 = v39;
    v62 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v44 = v53;
    v45 = v55;
    sub_1BE050E84();
    (*(v4 + 8))(v7, v42);
    (*(v52 + 8))(v41, v45);
    v46 = v49;
    v47 = v58;
    (*(v49 + 16))(v56, v44, v58);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD49768, &qword_1EBD49770);
    v59 = v45;
    v60 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    return (*(v46 + 8))(v44, v47);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    v48[-2] = v1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49788);
    v27 = sub_1BD528204();
    v28 = sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788);
    v59 = v8;
    v60 = v26;
    v61 = v27;
    v62 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v59 = v55;
    v60 = v29;
    swift_getOpaqueTypeConformance2();
    sub_1BE04E934();
    v30 = v57;
    (*(v19 + 16))(v56, v24, v57);
    swift_storeEnumTagMultiPayload();
    sub_1BD0DE4F4(&qword_1EBD49768, &qword_1EBD49770);
    sub_1BE04F9A4();
    return (*(v19 + 8))(v24, v30);
  }
}

void sub_1BD522700(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  sub_1BD6FB2CC();
  v8 = v7;
  v9 = *(a2 + 16);
  sub_1BD527F88(a2, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1BD5289F8(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v12 = objc_allocWithZone(PKPaymentSetupDismissibleNavigationController);
  v13 = v9;
  v14 = [v12 initWithContext_];
  if (v14)
  {
    v15 = v14;
    v16[1] = v8;
    v16[2] = v13;
    v16[3] = sub_1BD5285AC;
    v16[4] = v11;
    v16[5] = v14;
    sub_1BD5282BC();
    sub_1BE050E54();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD52289C(void *a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v9);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v24 - v13;
  v15 = sub_1BE0528D4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1BD527F88(a3, v10);
  sub_1BE0528A4();
  v16 = a2 & 1;
  sub_1BD52862C(a1);
  v17 = sub_1BE052894();
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = (v8 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  *(v20 + 16) = v17;
  *(v20 + 24) = v21;
  sub_1BD5289F8(v10, v20 + v18, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v22 = v20 + v19;
  *v22 = a1;
  *(v22 + 8) = v16;
  sub_1BD122C00(0, 0, v14, &unk_1BE0DF440, v20);
}

uint64_t sub_1BD522AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v6[9] = a4;
  v6[10] = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v6[11] = swift_task_alloc();
  v9 = sub_1BE04D214();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = sub_1BE0528A4();
  v6[16] = sub_1BE052894();
  v10 = swift_task_alloc();
  v6[17] = v10;
  *v10 = v6;
  v10[1] = sub_1BD522BF8;

  return sub_1BD522D54(a5, a6 & 1);
}

uint64_t sub_1BD522BF8()
{
  *(*v1 + 144) = v0;

  v3 = sub_1BE052844();
  if (v0)
  {
    v4 = sub_1BD5290E0;
  }

  else
  {
    v4 = sub_1BD5290E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BD522D54(uint64_t a1, char a2)
{
  *(v3 + 104) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = sub_1BE04D214();
  *(v3 + 56) = v4;
  *(v3 + 64) = *(v4 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0);
  *(v3 + 88) = swift_task_alloc();
  sub_1BE0528A4();
  *(v3 + 96) = sub_1BE052894();
  v6 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD522E88, v6, v5);
}

uint64_t sub_1BD522E88()
{
  v1 = *(v0 + 104);

  if ((v1 & 1) != 0 || (v2 = *(v0 + 40), objc_opt_self(), (v3 = swift_dynamicCastObjCClass()) == 0))
  {
    v17 = *(v0 + 88);
    v23 = *(*(v0 + 48) + 64);
    *v17 = 0;
    swift_storeEnumTagMultiPayload();
    v23(v17);
    goto LABEL_19;
  }

  v4 = v3;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  *(v0 + 16) = *(v6 + 48);
  *(v0 + 32) = v3;
  sub_1BD52862C(v5);
  sub_1BD52862C(v5);
  v7 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E8);
  sub_1BE0516B4();
  v8 = *(v6 + 16);
  v9 = [*v6 identifier];
  if (!v9)
  {
    sub_1BE052434();
    v9 = sub_1BE052404();
  }

  v10 = [v4 uniqueID];
  v11 = [v8 paymentOfferCollectionForCriteriaIdentifier:v9 passUniqueID:v10];

  if (!v11)
  {
    sub_1BD528638(*(v0 + 40));
LABEL_15:
    sub_1BE04D1E4();
    v24 = sub_1BE04D204();
    v25 = sub_1BE052C34();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1BD026000, v24, v25, "No selected offer identifier after successful handoff while pass is already provisioned", v26, 2u);
      MEMORY[0x1BFB45F20](v26, -1, -1);
    }

    v17 = *(v0 + 88);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 40);

    (*(v28 + 8))(v27, v29);
    v32 = *(v30 + 64);
    *v17 = 0;
    swift_storeEnumTagMultiPayload();
    v32(v17);
    v22 = v31;
    goto LABEL_18;
  }

  v12 = [v11 installmentAssessment];
  if (!v12)
  {
    sub_1BD528638(*(v0 + 40));
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 selectedOfferIdentifier];
  if (!v14 || (v14, v15 = [v8 selectedOfferDetails], v16 = objc_msgSend(v15, sel_selectedPaymentOffer), v15, !v16))
  {
    sub_1BD528638(*(v0 + 40));

LABEL_14:
    goto LABEL_15;
  }

  v17 = *(v0 + 88);
  v35 = *(v0 + 40);
  v18 = *(*(v0 + 48) + 64);
  v19 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0) + 24);
  v20 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  (*(*(v20 - 8) + 56))(&v17[v19], 1, 1, v20);
  *v17 = v16;
  *(v17 + 1) = v4;
  swift_storeEnumTagMultiPayload();
  v21 = v16;
  v18(v17);

  v22 = v35;
LABEL_18:
  sub_1BD528638(v22);
LABEL_19:
  sub_1BD0DE53C(v17, &qword_1EBD497E0);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1BD52327C(uint64_t result, SEL *a2)
{
  if (*(result + 80))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    if (v3)
    {
      [v3 *a2];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1BD523314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v26 = sub_1BE04F434();
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49780);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49778);
  v11 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v12);
  v14 = &v24 - v13;
  sub_1BD523614(v10);
  v15 = sub_1BE04EC54();
  v16 = sub_1BE0501F4();
  v17 = &v10[*(v7 + 36)];
  *v17 = v15;
  v17[8] = v16;
  v28 = a1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49788);
  v19 = sub_1BD528204();
  v20 = sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788);
  sub_1BE051024();
  sub_1BD0DE53C(v10, &qword_1EBD49780);
  v21 = v26;
  (*(v3 + 104))(v6, *MEMORY[0x1E697C438], v26);
  v29 = v7;
  v30 = v18;
  v31 = v19;
  v32 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  sub_1BE050E84();
  (*(v3 + 8))(v6, v21);
  return (*(v11 + 8))(v14, v22);
}

uint64_t sub_1BD523614@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = v1[4];
  v47 = v1[5];
  v48 = v8;
  v9 = v1[1];
  v10 = *(v2 + 96);
  v53 = *(v2 + 88);
  v54 = v10;
  sub_1BE048C84();
  v46 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516C4();
  v44 = v51;
  v45 = v50;
  v43 = v52;
  sub_1BD527F88(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = *(v5 + 80);
  v42 = swift_allocObject();
  sub_1BD5289F8(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v11, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v13 = *(v2 + 104);
  v14 = *(v2 + 112);
  v41 = 0x80000001BE12D910;
  LOBYTE(v50) = v13;
  v51 = v14;
  sub_1BE0516A4();
  LOBYTE(v9) = v53;
  KeyPath = swift_getKeyPath();
  v39 = swift_allocObject();
  *(v39 + 16) = v9;
  sub_1BD527F88(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = swift_allocObject();
  sub_1BD5289F8(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v38 + v11, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  sub_1BD527F88(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v12;
  v37 = swift_allocObject();
  sub_1BD5289F8(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v11, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v36 = objc_opt_self();
  v15 = [v36 defaultCenter];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49890);
  sub_1BE052E54();

  sub_1BD527F88(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  sub_1BD5289F8(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v11, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v18 = v47;
  *a1 = v48;
  *(a1 + 8) = v18;
  v19 = v45;
  *(a1 + 16) = v46;
  *(a1 + 24) = v19;
  *(a1 + 32) = v44;
  *(a1 + 40) = v43;
  v20 = v42;
  *(a1 + 48) = sub_1BD528A60;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0xD0000000000000ECLL;
  v21 = KeyPath;
  *(a1 + 72) = v41;
  *(a1 + 80) = v21;
  v22 = v38;
  v23 = v39;
  *(a1 + 88) = sub_1BD10DF54;
  *(a1 + 96) = v23;
  *(a1 + 104) = sub_1BD528AD0;
  *(a1 + 112) = v22;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v25 = v36;
  v24 = v37;
  *(a1 + 152) = sub_1BD528B30;
  *(a1 + 160) = v24;
  v26 = (a1 + *(v16 + 56));
  *v26 = sub_1BD528B8C;
  v26[1] = v17;
  v27 = [v25 defaultCenter];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49898);
  sub_1BE052E54();

  sub_1BD527F88(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  sub_1BD5289F8(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v11, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v30 = (a1 + *(v28 + 56));
  *v30 = sub_1BD528BB4;
  v30[1] = v29;
  v31 = [v25 defaultCenter];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497A0);
  sub_1BE052E54();

  sub_1BD527F88(v2, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = swift_allocObject();
  result = sub_1BD5289F8(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v11, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  v35 = (a1 + *(v32 + 56));
  *v35 = sub_1BD528B30;
  v35[1] = v33;
  return result;
}

uint64_t sub_1BD523AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49800);
  MEMORY[0x1EEE9AC00](v57, v3);
  v56 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD465E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v47 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49810);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49818);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v55 = &v47 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49820);
  v53 = *(v19 - 8);
  v54 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v47 - v21;
  v23 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49828);
  v25 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v26);
  v28 = &v47 - v27;
  sub_1BE04FB34();
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49830);
  sub_1BD5287EC();
  sub_1BE04E424();
  sub_1BE04FB04();
  v59 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49848);
  sub_1BD5288F0();
  v50 = v22;
  sub_1BE04E424();
  v29 = *(a1 + 96);
  LOBYTE(v62) = *(a1 + 88);
  v63 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516A4();
  if ((v61 & 1) != 0 || (v30 = *(a1 + 112), LOBYTE(v62) = *(a1 + 104), v63 = v30, sub_1BE0516A4(), v61 == 1))
  {
    sub_1BE04FAC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD51330);
    sub_1BD0DE4F4(&unk_1EBD49880, &unk_1EBD51330);
    sub_1BE04E424();
    v31 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810);
    v32 = v49;
    v33 = v52;
    MEMORY[0x1BFB3CC50](v11, v52, v31);
    (*(v6 + 16))(v15, v32, v5);
    (*(v6 + 56))(v15, 0, 1, v5);
    v62 = v33;
    v63 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v55;
    MEMORY[0x1BFB3CC80](v15, v5, OpaqueTypeConformance2);
    sub_1BD0DE53C(v15, &qword_1EBD49818);
    (*(v6 + 8))(v32, v5);
    (*(v48 + 8))(v11, v33);
  }

  else
  {
    (*(v6 + 56))(v15, 1, 1, v5);
    v36 = sub_1BD0DE4F4(&unk_1EBD49870, &qword_1EBD49810);
    v62 = v52;
    v63 = v36;
    v37 = swift_getOpaqueTypeConformance2();
    v35 = v55;
    MEMORY[0x1BFB3CC80](v15, v5, v37);
    sub_1BD0DE53C(v15, &qword_1EBD49818);
  }

  v38 = v56;
  v39 = *(v57 + 48);
  v40 = *(v57 + 64);
  v41 = v51;
  (*(v25 + 16))(v56, v28, v51);
  v42 = v53;
  v43 = &v38[v39];
  v44 = v50;
  v45 = v54;
  (*(v53 + 16))(v43, v50, v54);
  sub_1BD084254(v35, &v38[v40]);
  sub_1BE04F854();
  sub_1BD0DE53C(v35, &qword_1EBD49818);
  (*(v42 + 8))(v44, v45);
  return (*(v25 + 8))(v28, v41);
}

uint64_t sub_1BD524278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferInstallmentCriteriaIconView();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v25 - v11;
  v13 = *a1;
  if ([*a1 type] == 1 && (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) != 0))
  {
    v15 = v14;
    v16 = *(a1 + 8);
    v17 = v13;
    v18 = [v16 dynamicContent];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 dynamicContentPageForPageType_];

      v21 = [v20 iconURL];
    }

    else
    {
      v21 = 0;
    }

    v24 = *(v4 + 28);
    *&v7[v24] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4E5B0);
    swift_storeEnumTagMultiPayload();
    *v7 = v21;
    *(v7 + 1) = v15;
    *(v7 + 1) = xmmword_1BE0DF0C0;
    sub_1BD5289F8(v7, v12, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    sub_1BD5289F8(v12, a2, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    return (*(v26 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v22 = *(v26 + 56);

    return v22(a2, 1, 1, v4);
  }
}

uint64_t sub_1BD5244EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49860);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = &v19 - v12;
  v14 = *(a1 + 24);
  if (v14 == 2 || (v14 & 1) == 0)
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v8, v11);
  }

  else
  {
    v20 = v10;
    sub_1BD527F88(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v16 = swift_allocObject();
    sub_1BD5289F8(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    sub_1BE051704();
    (*(v20 + 32))(a2, v13, v8);
    return (*(v20 + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_1BD524758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0);
  MEMORY[0x1EEE9AC00](v2, v2);
  v4 = &v7 - v3;
  v5 = *(a1 + 64);
  *(&v7 - v3) = 0;
  swift_storeEnumTagMultiPayload();
  v5(v4);
  return sub_1BD0DE53C(v4, &qword_1EBD497E0);
}

uint64_t sub_1BD524818(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_1BE0528D4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1BD527F88(a2, v8);
  sub_1BE0528A4();
  v14 = a1;
  v15 = sub_1BE052894();
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_1BD5289F8(v8, v18 + v16, type metadata accessor for PaymentOfferCriteriaActionSetupView);
  *(v18 + v17) = v14;
  sub_1BD122C00(0, 0, v12, &unk_1BE0DF540, v18);
}

uint64_t sub_1BD524A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v5[11] = swift_task_alloc();
  v7 = sub_1BE04D214();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = sub_1BE0528A4();
  v5[16] = sub_1BE052894();
  v8 = swift_task_alloc();
  v5[17] = v8;
  *v8 = v5;
  v8[1] = sub_1BD524B58;

  return sub_1BD524FB8(a5);
}

uint64_t sub_1BD524B58()
{
  *(*v1 + 144) = v0;

  v3 = sub_1BE052844();
  if (v0)
  {
    v4 = sub_1BD524D28;
  }

  else
  {
    v4 = sub_1BD524CB4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BD524CB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD524D28()
{
  v28 = v0;
  v1 = *(v0 + 144);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v4 = *(v0 + 72);

  v5 = v1;
  v6 = sub_1BE04A844();

  *(v0 + 16) = *(v4 + *(v3 + 64));
  *(v0 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497C0);
  sub_1BE0516B4();
  sub_1BE04D1E4();
  sub_1BD527F88(v4, v2);
  v7 = sub_1BE04D204();
  v8 = sub_1BE052C34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 104);
    v26 = *(v0 + 112);
    v10 = *(v0 + 88);
    v24 = *(v0 + 144);
    v25 = *(v0 + 96);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v0 + 32) = *(v10 + *(v3 + 64));
    sub_1BE0516A4();
    v13 = *(v0 + 56);
    *(v0 + 64) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49710);
    v14 = sub_1BE0534A4();
    v16 = v15;

    sub_1BD528778(v10);
    v17 = sub_1BD123690(v14, v16, &v27);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1BD026000, v7, v8, "Displaying paymentOffersError %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1BFB45F20](v12, -1, -1);
    MEMORY[0x1BFB45F20](v11, -1, -1);

    (*(v9 + 8))(v26, v25);
  }

  else
  {
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v21 = *(v0 + 88);
    v20 = *(v0 + 96);

    (*(v19 + 8))(v18, v20);
    sub_1BD528778(v21);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1BD524FB8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E0);
  v2[11] = swift_task_alloc();
  v3 = sub_1BE04D214();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v5 = sub_1BE04AA64();
  v2[21] = v5;
  v2[22] = *(v5 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_1BE0528A4();
  v2[28] = sub_1BE052894();
  v7 = sub_1BE052844();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BD525288, v7, v6);
}

uint64_t sub_1BD525288()
{
  v98 = v0;
  *(v0 + 16) = *(*(v0 + 48) + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E8);
  sub_1BE0516A4();
  v1 = *(v0 + 32);
  if (v1)
  {

    sub_1BE04D1E4();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "Updating payment offers since the pass is already provisioned", v4, 2u);
      MEMORY[0x1BFB45F20](v4, -1, -1);
    }

    v6 = *(v0 + 104);
    v5 = *(v0 + 112);
    v7 = *(v0 + 96);

    (*(v6 + 8))(v5, v7);
    v8 = swift_task_alloc();
    *(v0 + 280) = v8;
    *v8 = v0;
    v9 = sub_1BD525EDC;
LABEL_19:
    v8[1] = v9;

    return sub_1BD526980(4);
  }

  v10 = *(v0 + 40);
  v11 = [**(v0 + 48) identifier];
  v12 = sub_1BE052434();
  v14 = v13;

  v15 = [v10 provisioningCredentialIdentifier];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1BE052434();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = [*(v0 + 40) provisioningCardIconURL];
  v22 = *(v0 + 192);
  v21 = *(v0 + 200);
  if (v20)
  {
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);
    v91 = v14;
    v94 = v17;
    v25 = v12;
    v26 = *(v0 + 168);
    v27 = v19;
    v28 = v20;
    sub_1BE04A9F4();

    v29 = *(v23 + 32);
    v29(v22, v24, v26);
    v30 = *(v23 + 56);
    v30(v22, 0, 1, v26);
    v29(v21, v22, v26);
    v19 = v27;
    v31 = v26;
    v12 = v25;
    v14 = v91;
    v17 = v94;
    v30(v21, 0, 1, v31);
  }

  else
  {
    v33 = *(v0 + 168);
    v32 = *(v0 + 176);
    (*(v32 + 56))(*(v0 + 192), 1, 1, v33);
    PKPaymentOfferAction.cardArtURL.getter(v21);
    if ((*(v32 + 48))(v22, 1, v33) != 1)
    {
      sub_1BD0DE53C(*(v0 + 192), &unk_1EBD3CF70);
    }
  }

  v34 = [*(v0 + 40) didSelectOffer];
  if (v19)
  {
    v35 = v34;
    v36 = *(v0 + 216);
    v37 = *(v0 + 200);
    v38 = *(v0 + 160);
    v39 = *(v0 + 144);
    *v38 = v12;
    v38[1] = v14;
    v38[2] = v17;
    v38[3] = v19;
    sub_1BD226B4C(v37, v38 + *(v39 + 24));
    *(v38 + *(v39 + 28)) = v35;
    sub_1BD5289F8(v38, v36, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
    v40 = 0;
  }

  else
  {
    sub_1BD0DE53C(*(v0 + 200), &unk_1EBD3CF70);

    v40 = 1;
  }

  v41 = *(v0 + 216);
  v42 = *(v0 + 144);
  v43 = *(v0 + 152);
  v44 = *(v43 + 56);
  *(v0 + 248) = v44;
  v44(v41, v40, 1, v42);
  if ((*(v43 + 48))(v41, 1, v42) == 1)
  {
    sub_1BE04D1E4();
    v45 = sub_1BE04D204();
    v46 = sub_1BE052C54();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1BD026000, v45, v46, "Updating payment offers even though though there is no pass provisioned", v47, 2u);
      MEMORY[0x1BFB45F20](v47, -1, -1);
    }

    v48 = *(v0 + 136);
    v49 = *(v0 + 96);
    v50 = *(v0 + 104);

    (*(v50 + 8))(v48, v49);
    v8 = swift_task_alloc();
    *(v0 + 256) = v8;
    *v8 = v0;
    v9 = sub_1BD525C04;
    goto LABEL_19;
  }

  v52 = *(v0 + 48);

  v53 = [*(v52 + 16) configuration];
  v54 = [v53 context];

  v55 = *(v0 + 48);
  if (v54 == 2)
  {
    v56 = *(v0 + 72);
    sub_1BE04D1E4();
    sub_1BD527F88(v55, v56);
    v57 = sub_1BE04D204();
    v58 = sub_1BE052C54();
    v59 = os_log_type_enabled(v57, v58);
    v60 = *(v0 + 128);
    v62 = *(v0 + 96);
    v61 = *(v0 + 104);
    v63 = *(v0 + 72);
    if (v59)
    {
      v95 = *(v0 + 96);
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v97 = v65;
      *v64 = 136315138;
      v66 = [*v63 identifier];
      v67 = sub_1BE052434();
      v92 = v60;
      v69 = v68;

      sub_1BD528778(v63);
      v70 = sub_1BD123690(v67, v69, &v97);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_1BD026000, v57, v58, "Handing off provisioning to behind + flow %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1BFB45F20](v65, -1, -1);
      MEMORY[0x1BFB45F20](v64, -1, -1);

      (*(v61 + 8))(v92, v95);
    }

    else
    {

      (*(v61 + 8))(v60, v62);
      sub_1BD528778(v63);
    }

    v86 = *(v0 + 216);
    v87 = *(v0 + 88);
    v88 = *(*(v0 + 48) + 64);
    v89 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
    sub_1BD528E0C(v86, v87 + *(v89 + 24));
    *v87 = 0;
    v87[1] = 0;
    swift_storeEnumTagMultiPayload();
    v88(v87);
    sub_1BD0DE53C(v87, &qword_1EBD497E0);
  }

  else
  {
    v71 = *(v0 + 64);
    sub_1BE04D1E4();
    sub_1BD527F88(v55, v71);
    v72 = sub_1BE04D204();
    v73 = sub_1BE052C54();
    v74 = os_log_type_enabled(v72, v73);
    v75 = *(v0 + 120);
    v77 = *(v0 + 96);
    v76 = *(v0 + 104);
    v78 = *(v0 + 64);
    if (v74)
    {
      v96 = *(v0 + 96);
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v97 = v80;
      *v79 = 136315138;
      v81 = [*v78 identifier];
      v82 = sub_1BE052434();
      v93 = v75;
      v84 = v83;

      sub_1BD528778(v78);
      v85 = sub_1BD123690(v82, v84, &v97);

      *(v79 + 4) = v85;
      _os_log_impl(&dword_1BD026000, v72, v73, "Starting provisioning for payment offer %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x1BFB45F20](v80, -1, -1);
      MEMORY[0x1BFB45F20](v79, -1, -1);

      (*(v76 + 8))(v93, v96);
    }

    else
    {

      (*(v76 + 8))(v75, v77);
      sub_1BD528778(v78);
    }

    v86 = *(v0 + 216);
    sub_1BD528E0C(v86, *(v0 + 208));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);
    sub_1BE0516B4();
  }

  sub_1BD0DE53C(v86, &unk_1EBD49700);

  v90 = *(v0 + 8);

  return v90();
}

uint64_t sub_1BD525C04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD5262AC;
  }

  else
  {
    v4[34] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD525D2C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD525D2C()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[18];
  v5 = v0[11];
  v6 = v0[6];

  v7 = *(v6 + 64);
  v8 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
  v2(&v5[*(v8 + 24)], 1, 1, v4);
  *v5 = v1;
  *(v5 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v9 = v1;
  v7(v5);

  sub_1BD0DE53C(v5, &qword_1EBD497E0);
  sub_1BD0DE53C(v3, &unk_1EBD49700);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1BD525EDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD526198;
  }

  else
  {
    v4[37] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_1BD526004;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD526004()
{
  v1 = v0[37];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[11];
  v5 = v0[6];

  v6 = *(v5 + 64);
  v7 = type metadata accessor for PaymentOfferCriteriaActionSetupView.SetupResult(0);
  (*(v3 + 56))(&v4[*(v7 + 24)], 1, 1, v2);
  *v4 = v1;
  *(v4 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v8 = v1;
  v6(v4);

  sub_1BD0DE53C(v4, &qword_1EBD497E0);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD526198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD5262AC()
{
  v1 = *(v0 + 216);

  sub_1BD0DE53C(v1, &unk_1EBD49700);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1BD5263D8(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v5);
  aBlock = *(a1 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0);
  sub_1BE0516A4();
  v6 = v16;
  if (!v16)
  {
    v7 = objc_opt_self();
    v6 = sub_1BE052404();
    sub_1BD527F88(a1, &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v9 = swift_allocObject();
    sub_1BD5289F8(&aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    v14 = sub_1BD5290F4;
    v15 = v9;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v12 = sub_1BD14E1D8;
    v13 = &block_descriptor_112;
    v10 = _Block_copy(&aBlock);

    [v7 acquireAssertionOfType:9 withReason:v6 completion:v10];
    _Block_release(v10);
  }
}

void sub_1BD5265CC()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v15 = v7;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0);
  sub_1BE0516A4();
  v8 = v14;
  if (v14)
  {
    sub_1BE04D1E4();
    v9 = sub_1BE04D204();
    v10 = sub_1BE052C54();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BD026000, v9, v10, "Invalidating issuerInstallmentsHandoffViewActive assertion", v11, 2u);
      MEMORY[0x1BFB45F20](v11, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
    [v8 invalidate];
    v15 = v7;
    v16 = v6;
    v14 = 0;
    sub_1BE048964();
    v12 = v7;
    sub_1BE0516B4();
  }
}

void sub_1BD526794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v11);
  aBlock = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0);
  sub_1BE0516A4();
  v12 = v22;
  if (!v22)
  {
    v13 = objc_opt_self();
    v12 = sub_1BE052404();
    sub_1BD527F88(a2, &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v15 = swift_allocObject();
    sub_1BD5289F8(&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PaymentOfferCriteriaActionSetupView);
    v20 = a4;
    v21 = v15;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v18 = sub_1BD14E1D8;
    v19 = a5;
    v16 = _Block_copy(&aBlock);

    [v13 acquireAssertionOfType:9 withReason:v12 completion:v16];
    _Block_release(v16);
  }
}

uint64_t sub_1BD526980(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_1BE0528A4();
  v2[13] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD526A18, v4, v3);
}

uint64_t sub_1BD526A18()
{
  v1 = *(v0 + 96);
  v2 = *(v1 + 104);
  *(v0 + 179) = v2;
  v3 = v1[14];
  *(v0 + 16) = v2;
  *(v0 + 128) = v3;
  *(v0 + 24) = v3;
  *(v0 + 176) = 1;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
  sub_1BE0516B4();
  v4 = v1[2];
  v5 = *v1;
  *(v0 + 32) = *(v1 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD497E8);
  sub_1BE0516A4();
  v6 = *(v0 + 80);
  *(v0 + 144) = v6;
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  *v7 = v0;
  v7[1] = sub_1BD526B5C;
  v8 = *(v0 + 88);

  return (sub_1BD8D3BD0)(v4, v5, v6, v8);
}

uint64_t sub_1BD526B5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1BD526D1C;
  }

  else
  {
    v8 = v4[18];
    v4[21] = a1;

    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1BD526C88;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1BD526C88()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 179);

  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  *(v0 + 178) = 0;
  sub_1BE0516B4();
  v3 = *(v0 + 8);
  v4 = *(v0 + 168);

  return v3(v4);
}

uint64_t sub_1BD526D1C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 179);

  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 177) = 0;
  sub_1BE0516B4();
  v4 = *(v0 + 8);

  return v4();
}

void sub_1BD526DB4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1BE04D214();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - v17;
  if (a2)
  {
    v19 = a2;
    sub_1BE04D1E4();
    v20 = a2;
    v21 = sub_1BE04D204();
    v22 = sub_1BE052C54();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1BD026000, v21, v22, "Error getting issuerInstallmentsHandoffViewActive assertion %@", v23, 0xCu);
      sub_1BD0DE53C(v24, &unk_1EBD3E590);
      MEMORY[0x1BFB45F20](v24, -1, -1);
      MEMORY[0x1BFB45F20](v23, -1, -1);
    }

    (*(v7 + 8))(v18, v6);
    v28 = *(a3 + 120);
    v27 = *(a3 + 128);
    *&v39 = v28;
    *(&v39 + 1) = v27;
    v38 = 0;
    sub_1BE048964();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0);
    sub_1BE0516B4();
  }

  else
  {
    if (a1)
    {
      sub_1BE04D1E4();
      v30 = sub_1BE04D204();
      v31 = sub_1BE052C54();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1BD026000, v30, v31, "acquired issuerInstallmentsHandoffViewActive assertion", v32, 2u);
        MEMORY[0x1BFB45F20](v32, -1, -1);
      }

      (*(v7 + 8))(v14, v6);
      v39 = *(a3 + 120);
      v38 = a1;
      v33 = a1;
    }

    else
    {
      sub_1BE04D1E4();
      v34 = sub_1BE04D204();
      v35 = sub_1BE052C54();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1BD026000, v34, v35, "Error getting issuerInstallmentsHandoffViewActive assertion, nil returned", v36, 2u);
        MEMORY[0x1BFB45F20](v36, -1, -1);
      }

      (*(v7 + 8))(v10, v6);
      v39 = *(a3 + 120);
      v38 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD498A0);
    sub_1BE0516B4();
  }
}

unint64_t sub_1BD527180()
{
  result = qword_1EBD49668;
  if (!qword_1EBD49668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49668);
  }

  return result;
}

uint64_t sub_1BD5271D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BD0F985C;

  return sub_1BD521438(v2, v3, v4, v5, v6);
}

uint64_t sub_1BD5272A8(void *a1, uint64_t a2, uint64_t a3)
{
  v69 = a3;
  v62 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49670);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v67 = &v61 - v6;
  v7 = sub_1BE04A3B4();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04D214();
  v65 = *(v10 - 8);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v61 - v16;
  v18 = sub_1BE04A134();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BE04AA64();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v61 - v31;
  v33 = [a1 request];
  sub_1BE04A104();

  sub_1BE04A124();
  (*(v19 + 8))(v22, v18);
  v34 = v24;
  if ((*(v24 + 48))(v17, 1, v23) == 1)
  {
    sub_1BD0DE53C(v17, &unk_1EBD3CF70);
    return (*(v69 + 16))(v69, 0);
  }

  (*(v24 + 32))(v32, v17, v23);
  sub_1BE04D1B4();
  (*(v24 + 16))(v27, v32, v23);
  v36 = sub_1BE04D204();
  v37 = v23;
  v38 = sub_1BE052C54();
  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v70 = v61;
    *v39 = 136315138;
    sub_1BD5288A0(&qword_1EBD49660, MEMORY[0x1E6968FB0]);
    v40 = sub_1BE053B24();
    v41 = v37;
    v42 = v32;
    v43 = v34;
    v45 = v44;
    v46 = *(v43 + 8);
    v47 = v27;
    v48 = v41;
    v46(v47, v41);
    v49 = sub_1BD123690(v40, v45, &v70);
    v32 = v42;

    *(v39 + 4) = v49;
    _os_log_impl(&dword_1BD026000, v36, v38, "Payment offer web view navigating to %s", v39, 0xCu);
    v50 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x1BFB45F20](v50, -1, -1);
    MEMORY[0x1BFB45F20](v39, -1, -1);

    (*(v65 + 8))(v13, v66);
    v37 = v48;
  }

  else
  {

    v46 = *(v34 + 8);
    v46(v27, v37);
    (*(v65 + 8))(v13, v66);
  }

  v51 = sub_1BE04AA04();
  v53 = v67;
  v54 = v68;
  if (!v52)
  {
    goto LABEL_16;
  }

  if (v51 == 0xD000000000000010 && v52 == 0x80000001BE12D8F0)
  {
  }

  else
  {
    v55 = sub_1BE053B84();

    if ((v55 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  sub_1BE04A354();
  v57 = v63;
  v56 = v64;
  if ((*(v63 + 48))(v53, 1, v64) == 1)
  {
    sub_1BD0DE53C(v53, &unk_1EBD49670);
LABEL_19:
    v60 = *(v69 + 16);
    goto LABEL_20;
  }

  (*(v57 + 32))(v54, v53, v56);
  if (!sub_1BE04A334())
  {
    (*(v57 + 8))(v54, v56);
    goto LABEL_19;
  }

  sub_1BE04A324();
  v58 = sub_1BE052724();

  v59 = [objc_opt_self() paymentOfferActionResultFromQueryItems_];

  if (!v59)
  {
    (*(v63 + 8))(v54, v64);
    goto LABEL_19;
  }

  (*(v62 + OBJC_IVAR____TtCV9PassKitUI32PaymentOfferCriteriaSetupWebView11Coordinator_parent + 48))(v59);

  (*(v63 + 8))(v54, v64);
LABEL_16:
  v60 = *(v69 + 16);
LABEL_20:
  v60();
  return (v46)(v32, v37);
}

uint64_t sub_1BD527A30(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BD527A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BD527AD4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

void sub_1BD527B4C()
{
  sub_1BD0E5E8C(319, &unk_1EBD496A0);
  if (v0 <= 0x3F)
  {
    sub_1BD0E5E8C(319, &qword_1EBD579F0);
    if (v1 <= 0x3F)
    {
      sub_1BD0E5E8C(319, &qword_1EBD496B0);
      if (v2 <= 0x3F)
      {
        sub_1BD527D94(319, &qword_1EBD39308, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD23BC4C(319, &qword_1EBD496C0, &qword_1EBD496C8);
          if (v4 <= 0x3F)
          {
            sub_1BD1030A8();
            if (v5 <= 0x3F)
            {
              sub_1BD527F18(319, &qword_1EBD39DB0, type metadata accessor for PresentationContext);
              if (v6 <= 0x3F)
              {
                sub_1BD527D94(319, &qword_1EBD496E0, MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1BD23BC4C(319, &qword_1EBD496E8, &qword_1EBD496F0);
                  if (v8 <= 0x3F)
                  {
                    sub_1BD23BC4C(319, &qword_1EBD496F8, &unk_1EBD49700);
                    if (v9 <= 0x3F)
                    {
                      sub_1BD23BC4C(319, &qword_1EBD39360, &qword_1EBD49710);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD527D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BD527E30()
{
  sub_1BD10315C(319, &qword_1EBD39318, &unk_1EBD3E560);
  if (v0 <= 0x3F)
  {
    sub_1BD10315C(319, &unk_1EBD49728, &unk_1EBD40340);
    if (v1 <= 0x3F)
    {
      sub_1BD527F18(319, &qword_1EBD49738, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD527F18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1BD527F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BD527FEC(uint64_t a1)
{
  v3 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1BD522700(a1, v4);
}

unint64_t sub_1BD52806C()
{
  result = qword_1EBD49760;
  if (!qword_1EBD49760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49748);
    sub_1BD0DE4F4(&qword_1EBD49768, &qword_1EBD49770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49788);
    sub_1BD528204();
    sub_1BD0DE4F4(&qword_1EBD497A8, &qword_1EBD49788);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49760);
  }

  return result;
}

unint64_t sub_1BD528204()
{
  result = qword_1EBD49790;
  if (!qword_1EBD49790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49780);
    sub_1BD0DE4F4(&qword_1EBD49798, &qword_1EBD497A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49790);
  }

  return result;
}

unint64_t sub_1BD5282BC()
{
  result = qword_1EBD497B8;
  if (!qword_1EBD497B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD497B8);
  }

  return result;
}

uint64_t objectdestroy_37Tm_0()
{
  v1 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));

  v3 = v2 + *(v1 + 60);
  v4 = type metadata accessor for PaymentOfferSetupProvisioningMetadata();
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v4 + 24);
    v6 = sub_1BE04AA64();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49680);

  return swift_deallocObject();
}

uint64_t sub_1BD5285AC(void *a1, char a2)
{
  v5 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1BD52289C(a1, a2 & 1, v6);
}

uint64_t sub_1BD528644(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1BD126968;

  return sub_1BD522AA4(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1BD528778(uint64_t a1)
{
  v2 = type metadata accessor for PaymentOfferCriteriaActionSetupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BD5287EC()
{
  result = qword_1EBD49838;
  if (!qword_1EBD49838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49830);
    sub_1BD5288A0(&qword_1EBD49840, type metadata accessor for PaymentOfferInstallmentCriteriaIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49838);
  }

  return result;
}

uint64_t sub_1BD5288A0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BD5288F0()
{
  result = qword_1EBD49850;
  if (!qword_1EBD49850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49848);
    sub_1BD0DE4F4(&qword_1EBD3EF10, &unk_1EBD49860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD49850);
  }

  return result;
}

uint64_t sub_1BD5289F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD528A60(void *a1)
{
  v3 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD524818(a1, v4);
}

void sub_1BD528AD0()
{
  v1 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BD5263D8(v2);
}

void sub_1BD528C6C(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1BD526DB4(a1, a2, v6);
}

uint64_t sub_1BD528CEC(uint64_t a1)
{
  v4 = *(type metadata accessor for PaymentOfferCriteriaActionSetupView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD524A0C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD528E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD49700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD528E7C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD528F30()
{
  result = qword_1EBD498C0;
  if (!qword_1EBD498C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD497C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49748);
    type metadata accessor for PaymentOfferSetupProvisioningMetadata();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD49758);
    sub_1BD52806C();
    sub_1BD5288A0(&qword_1EBD497B0, type metadata accessor for PaymentOfferSetupProvisioningMetadata);
    sub_1BD5282BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD10EC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD498C0);
  }

  return result;
}

uint64_t sub_1BD529194(uint64_t a1)
{
  v50 = sub_1BE049E54();
  v3 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v4);
  v49 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1BE0495A4();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v7);
  v47 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v39 = v1;
  v55 = MEMORY[0x1E69E7CC0];
  sub_1BD03B254(0, v9, 0);
  v10 = v55;
  v11 = a1 + 64;
  result = sub_1BE053674();
  v13 = result;
  v14 = 0;
  v44 = (v3 + 8);
  v45 = v6 + 16;
  v46 = v6;
  v42 = a1 + 64;
  v43 = v6 + 8;
  v40 = a1 + 72;
  v41 = v9;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    v17 = v13 >> 6;
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v51 = v14;
    v52 = v18;
    v19 = v46;
    v20 = *(a1 + 56) + *(v46 + 72) * v13;
    v21 = *(v46 + 16);
    v54 = v10;
    v23 = v47;
    v22 = v48;
    v21(v47, v20, v48);
    v24 = v49;
    sub_1BE049524();
    v25 = sub_1BE049E24();
    v53 = v26;
    (*v44)(v24, v50);
    v27 = v23;
    v10 = v54;
    result = (*(v19 + 8))(v27, v22);
    v55 = v10;
    v29 = *(v10 + 16);
    v28 = *(v10 + 24);
    if (v29 >= v28 >> 1)
    {
      result = sub_1BD03B254((v28 > 1), v29 + 1, 1);
      v10 = v55;
    }

    *(v10 + 16) = v29 + 1;
    v30 = v10 + 16 * v29;
    v31 = v53;
    *(v30 + 32) = v25;
    *(v30 + 40) = v31;
    v15 = 1 << *(a1 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v11 = v42;
    v32 = *(v42 + 8 * v17);
    if ((v32 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v52 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v32 & (-2 << (v13 & 0x3F));
    if (v33)
    {
      v15 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v41;
    }

    else
    {
      v34 = v17 << 6;
      v35 = v17 + 1;
      v16 = v41;
      v36 = (v40 + 8 * v17);
      while (v35 < (v15 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_1BD20DE9C(v13, v52, 0);
          v15 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_1BD20DE9C(v13, v52, 0);
    }

LABEL_4:
    v14 = v51 + 1;
    v13 = v15;
    if (v51 + 1 == v16)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1BD529554(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1BD03B254(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_1BE053674();
    v5 = 0;
    v23 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v24 = v5;
      v25 = *(a1 + 36);
      v8 = *(*(a1 + 56) + 8 * v4);
      v9 = [v8 institutionIdentifier];
      v10 = sub_1BE052434();
      v12 = v11;

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1BD03B254((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v7);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v6 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v7 << 6;
        v19 = v7 + 1;
        v20 = (a1 + 72 + 8 * v7);
        while (v19 < (v6 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_1BD20DE9C(v4, v25, 0);
            v6 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_1BD20DE9C(v4, v25, 0);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v6;
      if (v24 + 1 == v23)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

id PKTransactionsPageBoundary.__allocating_init(date:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v20 - v8;
  v10 = sub_1BE04AF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v3);
  sub_1BD0DE19C(a1, v9, &unk_1EBD39970);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD39970);

    sub_1BD0DE53C(v9, &unk_1EBD39970);
  }

  else
  {
    v16 = *(v11 + 32);
    v16(v14, v9, v10);
    if (a3)
    {
      v16(&v15[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_date], v14, v10);
      v17 = &v15[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier];
      *v17 = v21;
      *(v17 + 1) = a3;
      v22.receiver = v15;
      v22.super_class = v3;
      v18 = objc_msgSendSuper2(&v22, sel_init);
      sub_1BD0DE53C(a1, &unk_1EBD39970);
      return v18;
    }

    sub_1BD0DE53C(a1, &unk_1EBD39970);
    (*(v11 + 8))(v14, v10);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PKTransactionsPageBoundary.init(date:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1BE04AF64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(a1, v10, &unk_1EBD39970);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1BD0DE53C(a1, &unk_1EBD39970);

    sub_1BD0DE53C(v10, &unk_1EBD39970);
  }

  else
  {
    v16 = *(v12 + 32);
    v16(v15, v10, v11);
    if (a3)
    {
      v16(&v3[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_date], v15, v11);
      v17 = &v3[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier];
      *v17 = v21;
      *(v17 + 1) = a3;
      v22.receiver = v3;
      v22.super_class = ObjectType;
      v18 = objc_msgSendSuper2(&v22, sel_init);
      sub_1BD0DE53C(a1, &unk_1EBD39970);
      return v18;
    }

    sub_1BD0DE53C(a1, &unk_1EBD39970);
    (*(v12 + 8))(v15, v11);
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id PKTransactionsPageBoundary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PKPagedTransactionListBankConnectFetcher.accountExternalIDs()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1CDC44;

  return sub_1BD5377A8();
}

uint64_t sub_1BD52A14C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD52A1F4;

  return sub_1BD5377A8();
}

uint64_t sub_1BD52A1F4()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;

  if (v2)
  {
    v5 = sub_1BE04A844();

    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = sub_1BE052724();

    v7 = v8;
    v6 = 0;
    v5 = v8;
  }

  v9 = *(v3 + 16);
  (v9)[2](v9, v7, v6);

  _Block_release(v9);
  v10 = *(v4 + 8);

  return v10();
}

uint64_t PKPagedTransactionListBankConnectFetcher.countTransactions()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD1CC748;

  return sub_1BD5381A8();
}

uint64_t sub_1BD52A404@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE0);
  v5 = *(v4 - 8);
  v48 = v4;
  v49 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F0);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7F8);
  v40 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v36 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F800);
  v23 = *(v22 - 8);
  v44 = v22;
  v45 = v23;
  MEMORY[0x1EEE9AC00](v22, v24);
  v37 = &v36 - v25;
  v39 = *a1;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8);
  sub_1BE04A7C4();
  swift_getKeyPath();
  sub_1BE04A724();

  v26 = v14 + 8;
  v27 = *(v14 + 8);
  v38 = v26;
  v27(v17, v13);
  sub_1BE0498F4();
  sub_1BE04A7B4();
  v41 = MEMORY[0x1E6968D58];
  sub_1BD0DE4F4(&qword_1EBD3F890, &qword_1EBD3F7F8);
  sub_1BD0DE4F4(&qword_1EBD3F898, &qword_1EBD3F7F0);
  sub_1BD538AA4(&qword_1EBD3F8A0, MEMORY[0x1E6967938]);
  v28 = v42;
  sub_1BE04A714();
  (*(v43 + 8))(v12, v28);
  (*(v40 + 8))(v21, v18);
  sub_1BE04A7C4();
  swift_getKeyPath();
  v29 = v46;
  sub_1BE04A724();

  v27(v17, v13);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49B50);
  v31 = v47;
  v47[3] = v30;
  v31[4] = sub_1BD539558();
  __swift_allocate_boxed_opaque_existential_1(v31);
  sub_1BD0DE4F4(&qword_1EBD3F8B0, &qword_1EBD3F800);
  sub_1BD0DE4F4(qword_1EBD38F90, &qword_1EBD38EE0);
  v32 = v37;
  v33 = v44;
  v34 = v48;
  sub_1BE04A784();
  (*(v49 + 8))(v29, v34);
  return (*(v45 + 8))(v32, v33);
}

uint64_t sub_1BD52AB44(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1BD52ABEC;

  return sub_1BD5381A8();
}

uint64_t sub_1BD52ABEC(uint64_t a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_1BE04A844();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t PKPagedTransactionListBankConnectFetcher.fetchTransactions(limit:before:)(uint64_t a1, uint64_t a2)
{
  v3[33] = a2;
  v3[34] = v2;
  v3[32] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v4 = sub_1BE049E54();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v5 = sub_1BE049184();
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v6 = sub_1BE049D44();
  v3[47] = v6;
  v3[48] = *(v6 - 8);
  v3[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC0);
  v3[50] = swift_task_alloc();
  v7 = sub_1BE049CC4();
  v3[51] = v7;
  v3[52] = *(v7 - 8);
  v3[53] = swift_task_alloc();
  v8 = sub_1BE0495A4();
  v3[54] = v8;
  v3[55] = *(v8 - 8);
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v9 = sub_1BE049C24();
  v3[59] = v9;
  v3[60] = *(v9 - 8);
  v3[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DC8);
  v3[62] = swift_task_alloc();
  v10 = sub_1BE049B64();
  v3[63] = v10;
  v3[64] = *(v10 - 8);
  v3[65] = swift_task_alloc();
  v11 = sub_1BE049A94();
  v3[66] = v11;
  v3[67] = *(v11 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v12 = sub_1BE04AFE4();
  v3[70] = v12;
  v3[71] = *(v12 - 8);
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v13 = sub_1BE049D74();
  v3[78] = v13;
  v3[79] = *(v13 - 8);
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0);
  v3[81] = swift_task_alloc();
  v14 = sub_1BE0523F4();
  v3[82] = v14;
  v3[83] = *(v14 - 8);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v15 = sub_1BE049CE4();
  v3[86] = v15;
  v3[87] = *(v15 - 8);
  v3[88] = swift_task_alloc();
  v16 = sub_1BE0498F4();
  v3[89] = v16;
  v3[90] = *(v16 - 8);
  v3[91] = swift_task_alloc();
  v17 = sub_1BE04AF64();
  v3[92] = v17;
  v3[93] = *(v17 - 8);
  v3[94] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0);
  v3[95] = v18;
  v3[96] = *(v18 - 8);
  v3[97] = swift_task_alloc();
  v3[98] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD52B4FC, 0, 0);
}

uint64_t sub_1BD52B4FC()
{
  v1 = v0[33];
  if (v1)
  {
    v2 = v0[94];
    v3 = v0[93];
    v4 = v0[92];
    v5 = v0[66];
    (*(v3 + 16))(v2, &v1[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_date], v4);
    v7 = *&v1[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier];
    v6 = *&v1[OBJC_IVAR____TtC9PassKitUI26PKTransactionsPageBoundary_identifier + 8];
    v8 = swift_task_alloc();
    v8[2] = v2;
    v8[3] = v7;
    v8[4] = v6;
    v9 = v1;
    sub_1BE048C84();
    v0[31] = v5;
    sub_1BE04B444();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v0[25] = v0[66];
    sub_1BE04B424();
  }

  v10 = v0[98];
  v11 = v0[96];
  v12 = v0[91];
  v29 = v0[87];
  v27 = v0[88];
  v28 = v0[86];
  v13 = v0[85];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[82];
  v24 = v0[97];
  v25 = v0[81];
  v17 = v0[66];
  v26 = v0[95];
  (*(v0[90] + 104))(v12, *MEMORY[0x1E6967930], v0[89]);
  v18 = swift_task_alloc();
  v0[99] = v18;
  *(v18 + 16) = v12;
  *(v18 + 24) = v10;
  v0[26] = v17;
  sub_1BE04B444();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DE0);
  *(swift_allocObject() + 16) = xmmword_1BE0B6CA0;
  swift_getKeyPath();
  sub_1BD538AA4(&qword_1EBD525D0, MEMORY[0x1E6969530]);
  sub_1BE04A4F4();
  swift_getKeyPath();
  sub_1BE0523E4();
  (*(v15 + 16))(v14, v13, v16);
  sub_1BE04A4E4();
  (*(v15 + 8))(v13, v16);
  (*(v11 + 16))(v25, v24, v26);
  (*(v11 + 56))(v25, 0, 1, v26);
  sub_1BE049CD4();
  v0[100] = sub_1BE0490F4();
  v0[101] = sub_1BE0490B4();
  v19 = MEMORY[0x1E6967BC8];
  v0[5] = v28;
  v0[6] = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v29 + 16))(boxed_opaque_existential_1, v27, v28);
  v21 = swift_task_alloc();
  v0[102] = v21;
  *v21 = v0;
  v21[1] = sub_1BD52B960;
  v22 = v0[80];

  return MEMORY[0x1EEDC14D8](v22, v0 + 2);
}