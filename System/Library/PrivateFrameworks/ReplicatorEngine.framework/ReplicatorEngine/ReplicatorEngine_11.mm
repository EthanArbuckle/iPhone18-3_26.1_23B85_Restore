uint64_t sub_1DEF06B2C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1DEF06BB8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1DEF06BCC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DEF06CD4(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1DEF06DBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BE0, &qword_1DEF95300);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1DEF06EE8(void **a1, void **a2)
{
  if (_s16ReplicatorEngine6RecordV2IDC2eeoiySbAE_AEtFZ_0(*a1, *a2) & 1) != 0 && (v4 = type metadata accessor for SyncQueue.SyncItem(), v5 = v4[5], (sub_1DEF8D3A8()) && *(a1 + v4[6]) == *(a2 + v4[6]))
  {
    v6 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1DEF06F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BD0, &qword_1DEF952F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF06FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncQueue.SyncItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF0704C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF070BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D88, &qword_1DEF916A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DEF07124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncQueue.SyncItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF07188(uint64_t a1)
{
  v2 = type metadata accessor for SyncQueue.SyncItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AuthKitPairingRelationshipFilter.filter(pairingRelationships:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  sub_1DEF07EFC(sub_1DEF07EEC, v6);
}

uint64_t AuthKitPairingRelationshipFilter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1DEF072D4(char *a1, char a2, uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v96[-v12];
  v14 = sub_1DEF8D3F8();
  v103 = *(v14 - 8);
  v15 = v103[8];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v96[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v124 = &v96[-v19];
  v119 = type metadata accessor for PairingRelationship();
  v20 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v116 = &v96[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v96[-v23];
  MEMORY[0x1EEE9AC00](v24);
  v110 = &v96[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v104 = &v96[-v27];
  MEMORY[0x1EEE9AC00](v28);
  v102 = &v96[-v29];
  MEMORY[0x1EEE9AC00](v30);
  v101 = &v96[-v31];
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v32);
  v108 = &v96[-v35];
  if (a2)
  {
    v125 = a1;
    v126 = 0;
    v127 = 1;
    v36 = a1;
    a4(&v125);
  }

  else
  {
    v123 = a1;
    v99 = a5;
    v100 = a4;
    v115 = *(a3 + 16);
    if (v115)
    {
      v37 = 0;
      v114 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v113 = a3 + v114;
      v38 = *(v33 + 72);
      v111 = (v103 + 6);
      v106 = (v103 + 4);
      v39 = v123;
      v120 = v103 + 2;
      v121 = v123 + 56;
      v122 = (v103 + 1);
      v34.n128_u64[0] = 136446210;
      v105 = v34;
      v117 = MEMORY[0x1E69E7CC0];
      v118 = MEMORY[0x1E69E7CC0];
      v109 = v13;
      v40 = v108;
      v112 = v38;
      do
      {
        sub_1DEEE42FC(v113 + v38 * v37, v40);
        v43 = &v40[*(v119 + 20)];
        v44 = type metadata accessor for DeviceDescriptor();
        sub_1DEE205E0(&v43[*(v44 + 60)], v13);
        if ((*v111)(v13, 1, v14) == 1)
        {
          sub_1DEE171B4(v13, &unk_1ECDE3E80, &unk_1DEF90970);
          if (qword_1ECDE2E48 != -1)
          {
            swift_once();
          }

          v45 = sub_1DEF8D508();
          __swift_project_value_buffer(v45, qword_1ECDF5FF8);
          v46 = v107;
          sub_1DEEE42FC(v40, v107);
          v47 = sub_1DEF8D4D8();
          v48 = sub_1DEF8DCB8();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v125 = v50;
            *v49 = v105.n128_u32[0];
            v51 = &v46[*(v119 + 20)];
            v52 = *v51;
            v53 = v51[1];

            sub_1DEF0A300(v46, type metadata accessor for PairingRelationship);
            v54 = v52;
            v40 = v108;
            v55 = sub_1DEE12A5C(v54, v53, &v125);
            v13 = v109;

            *(v49 + 4) = v55;
            _os_log_impl(&dword_1DEE0F000, v47, v48, "Device %{public}s has no serial number and cannot by validated with AuthKit", v49, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v50);
            v56 = v50;
            v39 = v123;
            MEMORY[0x1E12CCD70](v56, -1, -1);
            MEMORY[0x1E12CCD70](v49, -1, -1);
          }

          else
          {

            sub_1DEF0A300(v46, type metadata accessor for PairingRelationship);
          }

          sub_1DEEE42FC(v40, v116);
          v41 = v118;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_1DEF38204(0, v41[2] + 1, 1, v41);
          }

          v78 = v41[2];
          v77 = v41[3];
          v79 = v78 + 1;
          if (v78 >= v77 >> 1)
          {
            v41 = sub_1DEF38204(v77 > 1, v78 + 1, 1, v41);
            v42 = v116;
            v118 = v41;
          }

          else
          {
            v118 = v41;
            v42 = v116;
          }
        }

        else
        {
          (*v106)(v124, v13, v14);
          if (*(v39 + 2) && (v57 = *(v39 + 5), sub_1DEE1B9B0(&qword_1ECDE3638, MEMORY[0x1E69695A8]), v58 = sub_1DEF8D8B8(), v59 = -1 << v39[32], v60 = v58 & ~v59, ((*&v121[(v60 >> 3) & 0xFFFFFFFFFFFFFF8] >> v60) & 1) != 0))
          {
            v61 = ~v59;
            v62 = v103[9];
            v63 = v103[2];
            while (1)
            {
              v63(v17, *(v39 + 6) + v62 * v60, v14);
              sub_1DEE1B9B0(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
              v64 = sub_1DEF8D908();
              v65 = *v122;
              (*v122)(v17, v14);
              if (v64)
              {
                break;
              }

              v60 = (v60 + 1) & v61;
              v39 = v123;
              if (((*&v121[(v60 >> 3) & 0xFFFFFFFFFFFFFF8] >> v60) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            if (qword_1ECDE2E48 != -1)
            {
              swift_once();
            }

            v82 = sub_1DEF8D508();
            __swift_project_value_buffer(v82, qword_1ECDF5FF8);
            v83 = v40;
            v84 = v101;
            sub_1DEEE42FC(v83, v101);
            v85 = sub_1DEF8D4D8();
            v86 = sub_1DEF8DCB8();
            v87 = os_log_type_enabled(v85, v86);
            v13 = v109;
            if (v87)
            {
              v88 = swift_slowAlloc();
              v98 = swift_slowAlloc();
              v125 = v98;
              *v88 = v105.n128_u32[0];
              v89 = &v84[*(v119 + 20)];
              v97 = v86;
              v91 = *v89;
              v90 = v89[1];

              sub_1DEF0A300(v84, type metadata accessor for PairingRelationship);
              v92 = sub_1DEE12A5C(v91, v90, &v125);

              *(v88 + 4) = v92;
              _os_log_impl(&dword_1DEE0F000, v85, v97, "Device %{public}s recognized by AuthKit", v88, 0xCu);
              v93 = v98;
              __swift_destroy_boxed_opaque_existential_1(v98);
              MEMORY[0x1E12CCD70](v93, -1, -1);
              MEMORY[0x1E12CCD70](v88, -1, -1);
            }

            else
            {

              sub_1DEF0A300(v84, type metadata accessor for PairingRelationship);
            }

            v40 = v108;
            sub_1DEEE42FC(v108, v102);
            v94 = v118;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v94 = sub_1DEF38204(0, v94[2] + 1, 1, v94);
            }

            v78 = v94[2];
            v95 = v94[3];
            v118 = v94;
            v79 = v78 + 1;
            if (v78 >= v95 >> 1)
            {
              v118 = sub_1DEF38204(v95 > 1, v78 + 1, 1, v118);
            }

            v65(v124, v14);
            v41 = v118;
            v42 = v102;
            v39 = v123;
          }

          else
          {
LABEL_17:
            if (qword_1ECDE2E48 != -1)
            {
              swift_once();
            }

            v66 = sub_1DEF8D508();
            __swift_project_value_buffer(v66, qword_1ECDF5FF8);
            v67 = v104;
            sub_1DEEE42FC(v40, v104);
            v68 = sub_1DEF8D4D8();
            v69 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v125 = v71;
              *v70 = v105.n128_u32[0];
              v72 = &v67[*(v119 + 20)];
              v73 = *v72;
              v74 = v72[1];

              sub_1DEF0A300(v67, type metadata accessor for PairingRelationship);
              v75 = v73;
              v40 = v108;
              v76 = sub_1DEE12A5C(v75, v74, &v125);
              v39 = v123;

              *(v70 + 4) = v76;
              _os_log_impl(&dword_1DEE0F000, v68, v69, "Device %{public}s not recognized by AuthKit", v70, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v71);
              MEMORY[0x1E12CCD70](v71, -1, -1);
              MEMORY[0x1E12CCD70](v70, -1, -1);
            }

            else
            {

              sub_1DEF0A300(v67, type metadata accessor for PairingRelationship);
            }

            sub_1DEEE42FC(v40, v110);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v13 = v109;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v117 = sub_1DEF38204(0, v117[2] + 1, 1, v117);
            }

            v78 = v117[2];
            v81 = v117[3];
            v79 = v78 + 1;
            if (v78 >= v81 >> 1)
            {
              v117 = sub_1DEF38204(v81 > 1, v78 + 1, 1, v117);
            }

            (*v122)(v124, v14);
            v41 = v117;
            v42 = v110;
          }
        }

        ++v37;
        sub_1DEF0A300(v40, type metadata accessor for PairingRelationship);
        v41[2] = v79;
        v38 = v112;
        sub_1DEF0A360(v42, v41 + v114 + v78 * v112);
      }

      while (v37 != v115);
    }

    else
    {
      v117 = MEMORY[0x1E69E7CC0];
      v118 = MEMORY[0x1E69E7CC0];
    }

    v125 = v118;
    v126 = v117;
    v127 = 0;
    v100(&v125, v34);
  }

  sub_1DEEA8A18(v125, v126, v127);
}

void sub_1DEF07EFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D698();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D6D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = [objc_allocWithZone(MEMORY[0x1E6959A48]) init];
  v16 = [v76 accounts];
  v75 = v11;
  if (!v16 || (v17 = v16, aBlock = 0, sub_1DEE1EA18(0, &qword_1ECDE2B78, 0x1E6959A28), sub_1DEF8DAC8(), v17, (v18 = aBlock) == 0))
  {
    v74 = v7;
    v7 = a1;
    if (qword_1ECDE2E48 == -1)
    {
LABEL_21:
      v27 = sub_1DEF8D508();
      __swift_project_value_buffer(v27, qword_1ECDF5FF8);
      v28 = sub_1DEF8D4D8();
      v29 = sub_1DEF8DC98();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DEE0F000, v28, v29, "No accounts available to AuthKit", v30, 2u);
        MEMORY[0x1E12CCD70](v30, -1, -1);
      }

      v31 = *(v3 + 16);
      v32 = swift_allocObject();
      *(v32 + 16) = v7;
      *(v32 + 24) = a2;
      v84 = sub_1DEF0A448;
      v85 = v32;
      aBlock = MEMORY[0x1E69E9820];
      v81 = 1107296256;
      v82 = sub_1DEE3F0C0;
      v83 = &block_descriptor_13;
      v33 = _Block_copy(&aBlock);

      sub_1DEF8D6B8();
      v79 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEECE95C();
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v15, v10, v33);

      _Block_release(v33);
      (*(v74 + 8))(v10, v6);
LABEL_24:
      (*(v12 + 1))(v15, v75);
LABEL_25:

      return;
    }

LABEL_40:
    swift_once();
    goto LABEL_21;
  }

  v19 = [objc_allocWithZone(MEMORY[0x1E698DCC0]) init];
  v73 = a1;
  if (!v19)
  {

    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v44 = sub_1DEF8D508();
    __swift_project_value_buffer(v44, qword_1ECDF5FF8);
    v45 = sub_1DEF8D4D8();
    v46 = sub_1DEF8DC98();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1DEE0F000, v45, v46, "Failed to create AuthKit controller", v47, 2u);
      MEMORY[0x1E12CCD70](v47, -1, -1);
    }

    v48 = *(v3 + 16);
    v49 = swift_allocObject();
    *(v49 + 16) = v73;
    *(v49 + 24) = a2;
    v84 = sub_1DEF0A44C;
    v85 = v49;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1DEE3F0C0;
    v83 = &block_descriptor_15_0;
    v50 = _Block_copy(&aBlock);

    sub_1DEF8D6B8();
    v79 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v15, v10, v50);

    _Block_release(v50);
    (*(v7 + 8))(v10, v6);
    goto LABEL_24;
  }

  v70 = v19;
  v78 = v18 & 0xFFFFFFFFFFFFFF8;
  if (v18 >> 62)
  {
    v20 = sub_1DEF8DE68();
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v3;
  v72 = a2;
  v66 = v15;
  v67 = v10;
  v68 = v12;
  v69 = v6;
  v74 = v7;
  v12 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v10 = v20;
    a2 = 0;
    v3 = v18 & 0xC000000000000001;
    v15 = v78;
    v77 = v20;
    while (1)
    {
      if (v3)
      {
        v22 = MEMORY[0x1E12CB6E0](a2, v18);
      }

      else
      {
        if (a2 >= *(v15 + 2))
        {
          goto LABEL_39;
        }

        v22 = *(v18 + 8 * a2 + 32);
      }

      v23 = v22;
      v6 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v79 = v22;
      sub_1DEF08AC4(&v79, &aBlock);

      v7 = v81;
      if (v81)
      {
        v24 = aBlock;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1DEF3805C(0, *(v12 + 2) + 1, 1, v12);
        }

        v26 = *(v12 + 2);
        v25 = *(v12 + 3);
        if (v26 >= v25 >> 1)
        {
          v12 = sub_1DEF3805C((v25 > 1), v26 + 1, 1, v12);
        }

        *(v12 + 2) = v26 + 1;
        v21 = &v12[16 * v26];
        *(v21 + 4) = v24;
        *(v21 + 5) = v7;
        v10 = v77;
        v15 = v78;
      }

      ++a2;
      if (v6 == v10)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_26:

  if (!*(v12 + 2))
  {

    v51 = v72;
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v52 = sub_1DEF8D508();
    __swift_project_value_buffer(v52, qword_1ECDF5FF8);
    v53 = sub_1DEF8D4D8();
    v54 = sub_1DEF8DC98();
    v55 = os_log_type_enabled(v53, v54);
    v57 = v68;
    v56 = v69;
    v58 = v74;
    v59 = v75;
    if (v55)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_1DEE0F000, v53, v54, "Failed to retrieve altDSIS from AuthKit", v60, 2u);
      MEMORY[0x1E12CCD70](v60, -1, -1);
    }

    v61 = *(v71 + 16);
    v62 = swift_allocObject();
    *(v62 + 16) = v73;
    *(v62 + 24) = v51;
    v84 = sub_1DEF0A1B4;
    v85 = v62;
    aBlock = MEMORY[0x1E69E9820];
    v81 = 1107296256;
    v82 = sub_1DEE3F0C0;
    v83 = &block_descriptor_27_0;
    v63 = _Block_copy(&aBlock);

    v64 = v66;
    sub_1DEF8D6B8();
    v79 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v65 = v67;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v64, v65, v63);

    _Block_release(v63);
    (*(v58 + 8))(v65, v56);
    (*(v57 + 1))(v64, v59);
    goto LABEL_25;
  }

  v34 = *(v12 + 4);
  v35 = *(v12 + 5);

  v36 = [objc_allocWithZone(MEMORY[0x1E698DD68]) init];
  v37 = sub_1DEF8D918();

  [v36 setAltDSID_];

  v38 = swift_allocObject();
  v39 = v72;
  v40 = v73;
  v38[2] = v71;
  v38[3] = v40;
  v38[4] = v39;
  v84 = sub_1DEF0A1A8;
  v85 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1DEF0A11C;
  v83 = &block_descriptor_21;
  v41 = _Block_copy(&aBlock);
  v42 = v36;

  v43 = v70;
  [v70 deviceListWithContext:v42 completion:v41];
  _Block_release(v41);
}

uint64_t sub_1DEF089EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;

  sub_1DEF07EFC(sub_1DEF0A468, v8);
}

void sub_1DEF08AC4(id *a1@<X0>, void *a2@<X8>)
{
  if (!*a1)
  {
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v3 = *a1;
  v4 = [v3 accountProperties];
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = v4;
  strcpy(v12, "accountClass");
  BYTE13(v12[0]) = 0;
  HIWORD(v12[0]) = -5120;
  v6 = [v4 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_14:

LABEL_15:
    goto LABEL_16;
  }

  sub_1DEF8DDE8();
  swift_unknownObjectRelease();
  sub_1DEE117C0(v12, v13);
  sub_1DEE12F7C(v13, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  if (v11[0] == __PAIR128__(0xE700000000000000, 0x7972616D697270))
  {

    goto LABEL_9;
  }

  v7 = sub_1DEF8E4E8();

  if ((v7 & 1) == 0)
  {
LABEL_12:

    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_16;
  }

LABEL_9:
  *&v11[0] = 0x44495344746C61;
  *(&v11[0] + 1) = 0xE700000000000000;
  v8 = [v5 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (!v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    goto LABEL_14;
  }

  sub_1DEF8DDE8();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_1DEE117C0(v11, v12);
  sub_1DEE117C0(v12, v11);
  if (swift_dynamicCast())
  {
    *a2 = v9;
    a2[1] = v10;
    return;
  }

LABEL_16:
  *a2 = 0;
  a2[1] = 0;
}

uint64_t sub_1DEF08D2C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a5;
  v146 = a4;
  v145 = a3;
  v154 = a1;
  v163 = *MEMORY[0x1E69E9840];
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4108, &unk_1DEF95370);
  v6 = *(*(v140 - 8) + 64);
  MEMORY[0x1EEE9AC00](v140);
  v8 = &v125 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v125 - v11;
  v13 = type metadata accessor for UniformHasher();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v125 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DEF8D3F8();
  v153 = *(v17 - 8);
  v18 = *(v153 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v125 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v125 - v25;
  v27 = sub_1DEF8D698();
  v149 = *(v27 - 8);
  v150 = v27;
  v28 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v148 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1DEF8D6D8();
  v30 = *(v151 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v33 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v34 = a2;
    if (qword_1ECDE2E48 != -1)
    {
LABEL_55:
      swift_once();
    }

    v35 = sub_1DEF8D508();
    __swift_project_value_buffer(v35, qword_1ECDF5FF8);
    v36 = a2;
    v37 = sub_1DEF8D4D8();
    v38 = sub_1DEF8DC98();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138543362;
      v41 = a2;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1DEE0F000, v37, v38, "Failed to fetch device list AuthKit: %{public}@", v39, 0xCu);
      sub_1DEE171B4(v40, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v40, -1, -1);
      MEMORY[0x1E12CCD70](v39, -1, -1);
    }

    v43 = *(v145 + 16);
    v44 = swift_allocObject();
    v45 = v147;
    v44[2] = v146;
    v44[3] = v45;
    v44[4] = a2;
    v161 = sub_1DEF0A2CC;
    v162 = v44;
    aBlock = MEMORY[0x1E69E9820];
    v158 = 1107296256;
    v159 = sub_1DEE3F0C0;
    v160 = &block_descriptor_51;
    v46 = _Block_copy(&aBlock);
    v47 = a2;

    sub_1DEF8D6B8();
    v156 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v48 = v148;
    v49 = v150;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v33, v48, v46);
    _Block_release(v46);

    (*(v149 + 8))(v48, v49);
    (*(v30 + 8))(v33, v151);
    goto LABEL_52;
  }

  v133 = v26;
  v134 = v23;
  v135 = v20;
  v144 = v16;
  v136 = v12;
  v137 = &v125 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v30;
  if (!v154)
  {
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v90 = sub_1DEF8D508();
    __swift_project_value_buffer(v90, qword_1ECDF5FF8);
    v91 = sub_1DEF8D4D8();
    v92 = sub_1DEF8DC98();
    v93 = os_log_type_enabled(v91, v92);
    v94 = v151;
    if (v93)
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_1DEE0F000, v91, v92, "AuthKit response is nil", v95, 2u);
      MEMORY[0x1E12CCD70](v95, -1, -1);
    }

    v96 = *(v145 + 16);
    v97 = swift_allocObject();
    v98 = v147;
    *(v97 + 16) = v146;
    *(v97 + 24) = v98;
    v161 = sub_1DEF0A228;
    v162 = v97;
    aBlock = MEMORY[0x1E69E9820];
    v158 = 1107296256;
    v159 = sub_1DEE3F0C0;
    v160 = &block_descriptor_33;
    v99 = _Block_copy(&aBlock);

    v100 = v137;
    sub_1DEF8D6B8();
    v156 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v101 = v148;
    v102 = v150;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v100, v101, v99);
    goto LABEL_43;
  }

  v131 = v154;
  v50 = [v131 deviceList];
  if (!v50)
  {
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v104 = sub_1DEF8D508();
    __swift_project_value_buffer(v104, qword_1ECDF5FF8);
    v105 = sub_1DEF8D4D8();
    v106 = sub_1DEF8DC98();
    v107 = os_log_type_enabled(v105, v106);
    v94 = v151;
    if (v107)
    {
      v108 = swift_slowAlloc();
      *v108 = 0;
      _os_log_impl(&dword_1DEE0F000, v105, v106, "AuthKit device list is nil", v108, 2u);
      MEMORY[0x1E12CCD70](v108, -1, -1);
    }

    v109 = *(v145 + 16);
    v110 = swift_allocObject();
    v111 = v147;
    *(v110 + 16) = v146;
    *(v110 + 24) = v111;
    v161 = sub_1DEF0A44C;
    v162 = v110;
    aBlock = MEMORY[0x1E69E9820];
    v158 = 1107296256;
    v159 = sub_1DEE3F0C0;
    v160 = &block_descriptor_39_0;
    v99 = _Block_copy(&aBlock);

    v100 = v137;
    sub_1DEF8D6B8();
    v156 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v101 = v148;
    v102 = v150;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v100, v101, v99);

LABEL_43:
    _Block_release(v99);
LABEL_51:
    (*(v149 + 8))(v101, v102);
    (*(v138 + 8))(v100, v94);
LABEL_52:

    v124 = *MEMORY[0x1E69E9840];
    return result;
  }

  v51 = v50;
  sub_1DEE1EA18(0, &qword_1ECDE2C18, 0x1E698DDD8);
  v52 = sub_1DEF8DAD8();

  v156 = MEMORY[0x1E69E7CD0];
  if (v52 >> 62)
  {
    v54 = sub_1DEF8DE68();
  }

  else
  {
    v54 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = v144;
  v55 = v153;
  if (!v54)
  {
    v103 = MEMORY[0x1E69E7CD0];
LABEL_45:
    v94 = v151;

    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v112 = sub_1DEF8D508();
    __swift_project_value_buffer(v112, qword_1ECDF5FF8);

    v113 = sub_1DEF8D4D8();
    v114 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      aBlock = v116;
      *v115 = 134349314;
      *(v115 + 4) = *(v103 + 16);

      *(v115 + 12) = 2082;
      sub_1DEE1B9B0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
      v117 = sub_1DEF8DBF8();
      v119 = sub_1DEE12A5C(v117, v118, &aBlock);

      *(v115 + 14) = v119;
      _os_log_impl(&dword_1DEE0F000, v113, v114, "Fetched %{public}ld serial numbers from AuthKit: %{public}s", v115, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v116);
      MEMORY[0x1E12CCD70](v116, -1, -1);
      MEMORY[0x1E12CCD70](v115, -1, -1);
    }

    else
    {
    }

    v120 = *(v145 + 16);
    v121 = swift_allocObject();
    v122 = v147;
    v121[2] = v146;
    v121[3] = v122;
    v121[4] = v103;
    v161 = sub_1DEF0A248;
    v162 = v121;
    aBlock = MEMORY[0x1E69E9820];
    v158 = 1107296256;
    v159 = sub_1DEE3F0C0;
    v160 = &block_descriptor_45_0;
    v123 = _Block_copy(&aBlock);

    v100 = v137;
    sub_1DEF8D6B8();
    v156 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9B0(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEECE95C();
    v101 = v148;
    v102 = v150;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v100, v101, v123);
    _Block_release(v123);

    goto LABEL_51;
  }

  v56 = 0;
  a2 = 0;
  v152 = v52 & 0xFFFFFFFFFFFFFF8;
  v153 = v52 & 0xC000000000000001;
  v129 = (v55 + 48);
  v128 = (v55 + 32);
  v127 = (v55 + 16);
  v126 = (v55 + 8);
  v132 = @"STRPCodingErrorDomain";
  *&v53 = 136380675;
  v139 = v53;
  v143 = v17;
  v130 = v8;
  v142 = v52;
  v141 = v54;
  while (1)
  {
    if (v153)
    {
      v57 = MEMORY[0x1E12CB6E0](v56, v52);
    }

    else
    {
      if (v56 >= *(v152 + 16))
      {
        goto LABEL_54;
      }

      v57 = *(v52 + 8 * v56 + 32);
    }

    v58 = v57;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v60 = [v57 serialNumber];
    if (v60)
    {
      break;
    }

LABEL_13:
    ++v56;
    if (v59 == v54)
    {
      v103 = v156;
      goto LABEL_45;
    }
  }

  v154 = v58;
  v61 = v60;
  v62 = sub_1DEF8D948();
  v64 = v63;

  v65 = _s16ReplicatorEngine13UniformHasherVACycfC_0();
  v33 = MEMORY[0x1E12CC160](v65);
  v160 = MEMORY[0x1E69E6158];
  v161 = MEMORY[0x1E69E6160];
  aBlock = v62;
  v158 = v64;
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;

  v67 = sub_1DEE29274(&aBlock);
  v155 = 0;
  NSData = OPACKEncoderCreateNSData(v67);
  if (!NSData)
  {
    v70 = 0;
    v72 = 0xF000000000000000;
    goto LABEL_24;
  }

  v69 = NSData;
  v70 = sub_1DEF8D278();
  v72 = v71;

  LODWORD(v69) = v155;
  if (v69 != sub_1DEF8D558())
  {
LABEL_24:
    v82 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v83 = [v82 initWithDomain:v132 code:2 userInfo:0];
    swift_willThrow();
    sub_1DEE2416C(v70, v72);
    swift_unknownObjectRelease();
    a2 = 0;
    v30 = v144;
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    objc_autoreleasePoolPop(v33);
    sub_1DEF0A300(v30, type metadata accessor for UniformHasher);
    if (qword_1ECDE2E48 != -1)
    {
      swift_once();
    }

    v84 = sub_1DEF8D508();
    __swift_project_value_buffer(v84, qword_1ECDF5FF8);

    v85 = sub_1DEF8D4D8();
    v86 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock = v33;
      *v87 = v139;
      v88 = sub_1DEE12A5C(v62, v64, &aBlock);

      *(v87 + 4) = v88;
      _os_log_impl(&dword_1DEE0F000, v85, v86, "Failed to hash serial number from AuthKit: %{private}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E12CCD70](v33, -1, -1);
      v89 = v87;
      v30 = v144;
      MEMORY[0x1E12CCD70](v89, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  sub_1DEE1BFF4(v70, v72);
  v30 = v144;
  a2 = 0;
  sub_1DEF11C10(v70, v72);
  sub_1DEE1BFA0(v70, v72);
  sub_1DEE1BFA0(v70, v72);
  objc_autoreleasePoolPop(v33);
  v73 = v130;
  sub_1DEF8D7F8();
  *(v73 + *(v140 + 36)) = 16;
  v74 = sub_1DEF7F578(v73);
  v75 = v136;
  sub_1DEE3DF08(v74, v76, v136);
  v77 = v143;
  result = (*v129)(v75, 1, v143);
  if (result != 1)
  {
    sub_1DEF0A300(v30, type metadata accessor for UniformHasher);
    v79 = v133;
    (*v128)(v133, v75, v77);

    v80 = v135;
    (*v127)(v135, v79, v77);
    v33 = v134;
    sub_1DEF386D8(v134, v80);
    v81 = *v126;
    (*v126)(v33, v77);
    v81(v79, v77);

LABEL_30:
    v52 = v142;
    v54 = v141;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1DEF0A0A8(void (*a1)(void *, uint64_t), uint64_t a2, char a3)
{
  sub_1DEF0A1D4();
  v5 = swift_allocError();
  *v6 = a3;
  a1(v5, 1);
}

void sub_1DEF0A11C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

unint64_t sub_1DEF0A1D4()
{
  result = qword_1ECDE4BE8;
  if (!qword_1ECDE4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BE8);
  }

  return result;
}

uint64_t objectdestroy_41Tm(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1DEF0A300(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DEF0A360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PairingRelationship();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DEF0A3D8()
{
  result = qword_1ECDE4BF0;
  if (!qword_1ECDE4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4BF0);
  }

  return result;
}

uint64_t sub_1DEF0A46C()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v22);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v22;
  v22 = MEMORY[0x1E69E7CD0];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DEF8E038() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v4 = ~v7;
    v3 = v2 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v2 + 64);
    v6 = v2;
  }

  v11 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v11;
    v13 = v5;
    v14 = v11;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v13)));
    v17 = *(*(v6 + 48) + v16);
    v18 = *(*(v6 + 56) + v16);

    if (!v17)
    {
LABEL_18:
      sub_1DEE2774C();

      v20 = sub_1DEF41310(v22);

      return v20;
    }

    while (1)
    {
      v19 = *(v17 + 32);

      sub_1DEF389B8(&v21, v19);

      v11 = v14;
      v5 = v15;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DEF8E0D8())
      {
        type metadata accessor for Record.ID(0);
        swift_dynamicCast();
        v17 = v21;
        type metadata accessor for RecordMetadata();
        swift_dynamicCast();
        v14 = v11;
        v15 = v5;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF0A6D8()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0A758()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E028(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.__allocating_init(persistentStore:zoneVersionStore:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  MetadataStore.init(persistentStore:zoneVersionStore:)(a1, a2);
  return v7;
}

uint64_t MetadataStore.init(persistentStore:zoneVersionStore:)(uint64_t a1, uint64_t *a2)
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(v2 + 96) = v5;
  *(v2 + 104) = v6;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = v6;
  *(v2 + 136) = 1;
  *(v2 + 144) = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate;
  v8 = sub_1DEF8D378();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1DEF11ED0(a1, v2 + 16);
  swift_endAccess();
  v9 = sub_1DEE29594(a2, v2 + 56);
  v10 = MEMORY[0x1E12CC160](v9);
  sub_1DEF0F7FC(v2);
  objc_autoreleasePoolPop(v10);
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1DEE171B4(a1, &qword_1ECDE4BF8, &unk_1DEF95468);
  return v2;
}

uint64_t *MetadataStore.deinit()
{
  sub_1DEE171B4((v0 + 2), &qword_1ECDE4BF8, &unk_1DEF95468);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[12];

  v2 = v0[13];

  v3 = v0[14];

  v4 = v0[16];

  v5 = v0[18];

  sub_1DEE171B4(v0 + OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate, &qword_1ECDE4DC0, &qword_1DEF91640);
  return v0;
}

uint64_t MetadataStore.__deallocating_deinit()
{
  MetadataStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DEF0AA40()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CEC(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void MetadataStore.zoneVersion(for:pairingRelationship:)()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEEFF8C8(v2);
  os_unfair_lock_unlock(v1 + 4);
}

unint64_t MetadataStore.zoneVersions(for:)(uint64_t a1)
{
  v2 = a1 + *(type metadata accessor for PairingRelationship() + 32);
  v3 = *v2;
  v4 = *(v2 + 8);
  if (v4 == 2)
  {
    sub_1DEE4F8D4(v3, 2uLL);
    sub_1DEE4F8D4(0, 2uLL);
    v5 = sub_1DEF0A46C();
    v6 = *(v1 + 96);
    MEMORY[0x1EEE9AC00](v5);
    MEMORY[0x1EEE9AC00](v7);
    os_unfair_lock_lock(v6 + 4);
    sub_1DEE2E040(&v11);
    os_unfair_lock_unlock(v6 + 4);

    return v11;
  }

  else
  {
    v9 = *v2;
    sub_1DEE4F8C0(v3, *(v2 + 8));
    sub_1DEE4F8D4(v9, v4);
    sub_1DEE4F8D4(0, 2uLL);
    v10 = MEMORY[0x1E69E7CC0];

    return sub_1DEEA32D8(v10);
  }
}

uint64_t MetadataStore.clientDefinedID(for:)(uint64_t a1)
{
  swift_beginAccess();
  sub_1DEE17214(v1 + 16, v10, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v11)
  {
    sub_1DEE29594(v10, v7);
    sub_1DEE171B4(v10, &qword_1ECDE4BF8, &unk_1DEF95468);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(*(v4 + 8) + 56))(a1, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1DEE171B4(v10, &qword_1ECDE4BF8, &unk_1DEF95468);
    return 0;
  }

  return v5;
}

uint64_t MetadataStore.metadata(for:)()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E028(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0AE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 112);

  v7 = sub_1DEF718D0(a2, v6);

  *a3 = v7;
  return result;
}

uint64_t sub_1DEF0AEFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 112);

  v8 = sub_1DEF128C8(v7, a2);

  *a3 = v8;
  return result;
}

uint64_t sub_1DEF0AF84()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12BFC(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.localDeviceID.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE27850(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B058()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CD4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.isEnabled.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12170(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B12C()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B198()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CD4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.allowListEnabled.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CD4(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B26C()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t MetadataStore.allowList.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B364()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1DEF0B3D8()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void sub_1DEF0B44C(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t MetadataStore.allowListEnabled.setter(char a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE15434(v4);
  os_unfair_lock_unlock(v3 + 4);
  v6 = sub_1DEF02864();
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 72))(a1 & 1, v7, v8);
  }

  return (v6)(v10, 0);
}

uint64_t (*MetadataStore.allowListEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(v5);
  os_unfair_lock_unlock(v3 + 4);
  *(a1 + 8) = v5[0];
  return sub_1DEF0B630;
}

void sub_1DEF0B658(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE2E040(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t MetadataStore.allowList.setter(uint64_t a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  v6 = sub_1DEF02864();
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 88))(a1, v7, v8);
  }

  else
  {
  }

  return (v6)(v10, 0);
}

uint64_t (*MetadataStore.allowList.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE2E040(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_1DEF0B844;
}

uint64_t sub_1DEF0B844(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return MetadataStore.allowList.setter(*a1);
  }

  v4 = *a1;

  MetadataStore.allowList.setter(v5);
}

double sub_1DEF0B89C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12BFC(&v5);
  os_unfair_lock_unlock(v3 + 4);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t MetadataStore.localDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  os_unfair_lock_lock(v5 + 4);
  sub_1DEE3DEF0(v6);
  os_unfair_lock_unlock(v5 + 4);
  v8 = sub_1DEF02864();
  v9 = *(v7 + 24);
  if (v9)
  {
    v10 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, *(v7 + 24));
    (*(v10 + 16))(a1, a2, v9, v10);
  }

  else
  {
  }

  return (v8)(v12, 0);
}

uint64_t (*MetadataStore.localDeviceID.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12BFC(&v5);
  os_unfair_lock_unlock(v3 + 4);
  *a1 = v5;
  return sub_1DEF0BA9C;
}

uint64_t sub_1DEF0BA9C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if ((a2 & 1) == 0)
  {
    return MetadataStore.localDeviceID.setter(*a1, v2);
  }

  v5 = a1[1];

  MetadataStore.localDeviceID.setter(v3, v2);
}

void sub_1DEF0BB10(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(&v4);
  os_unfair_lock_unlock(v3 + 4);
  *a2 = v4;
}

uint64_t MetadataStore.isEnabled.setter(char a1)
{
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  v6 = sub_1DEF02864();
  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, *(v5 + 24));
    (*(v8 + 32))(a1 & 1, v7, v8);
  }

  return (v6)(v10, 0);
}

uint64_t (*MetadataStore.isEnabled.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(v1 + 96);
  os_unfair_lock_lock(v3 + 4);
  sub_1DEF12CD4(v5);
  os_unfair_lock_unlock(v3 + 4);
  *(a1 + 8) = v5[0];
  return sub_1DEF0BCF4;
}

void MetadataStore.lastAuthKitReconciliationDate.getter()
{
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEEFF8C8(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1DEF0BD84(uint64_t a1)
{
  v1 = *(*a1 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CEC(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF0BDF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1DEE17214(a1, &v10 - v6, &qword_1ECDE4DC0, &qword_1DEF91640);
  v8 = *a2;
  return MetadataStore.lastAuthKitReconciliationDate.setter(v7);
}

uint64_t MetadataStore.lastAuthKitReconciliationDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-v5];
  v7 = *(v1 + 96);
  v19 = v1;
  v20 = a1;
  v16 = sub_1DEF1226C;
  v17 = &v18;
  os_unfair_lock_lock(v7 + 4);
  sub_1DEE3DEF0(v8);
  os_unfair_lock_unlock(v7 + 4);
  v10 = sub_1DEF02864();
  if (*(v9 + 24))
  {
    v11 = v9;
    sub_1DEE17214(a1, v6, &qword_1ECDE4DC0, &qword_1DEF91640);
    v12 = *(v11 + 24);
    v13 = *(v11 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    (*(v13 + 56))(v6, v12, v13);
  }

  (v10)(v21, 0);
  return sub_1DEE171B4(a1, &qword_1ECDE4DC0, &qword_1DEF91640);
}

uint64_t sub_1DEF0C004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  sub_1DEE17214(a2, &v10 - v6, &qword_1ECDE4DC0, &qword_1DEF91640);
  v8 = OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(v7, a1 + v8);
  return swift_endAccess();
}

void (*MetadataStore.lastAuthKitReconciliationDate.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  v5 = *(v1 + 96);
  MEMORY[0x1EEE9AC00](v4);
  os_unfair_lock_lock(v5 + 4);
  sub_1DEF12CEC(v6);
  os_unfair_lock_unlock(v5 + 4);
  return sub_1DEF0C1FC;
}

void sub_1DEF0C1FC(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_1DEE17214(a1[2], v2, &qword_1ECDE4DC0, &qword_1DEF91640);
    MetadataStore.lastAuthKitReconciliationDate.setter(v2);
    sub_1DEE171B4(v3, &qword_1ECDE4DC0, &qword_1DEF91640);
  }

  else
  {
    MetadataStore.lastAuthKitReconciliationDate.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

Swift::Void __swiftcall MetadataStore.removeAll()()
{
  v1 = v0;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v2 = sub_1DEF8D508();
  __swift_project_value_buffer(v2, qword_1ECDF6028);
  v3 = sub_1DEF8D4D8();
  v4 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DEE0F000, v3, v4, "Removing all metadata store records", v5, 2u);
    MEMORY[0x1E12CCD70](v5, -1, -1);
  }

  v6 = v1[12];
  MEMORY[0x1EEE9AC00](v7);
  os_unfair_lock_lock(v6 + 4);
  sub_1DEE3DEF0(v8);
  os_unfair_lock_unlock(v6 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v16, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v17)
  {
    sub_1DEE29594(v16, v13);
    sub_1DEE171B4(v16, &qword_1ECDE4BF8, &unk_1DEF95468);
    v9 = v14;
    v10 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    (*(v10 + 104))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1DEE171B4(v16, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  v11 = v1[10];
  v12 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v11);
  (*(v12 + 48))(v11, v12);
}

uint64_t MetadataStore.update(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DEF8D3F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v32 - v10;
  v11 = *(v2 + 96);
  v43 = v2;
  v44 = a1;
  v33 = a1;
  v40 = sub_1DEF1234C;
  v41 = &v42;
  os_unfair_lock_lock(v11 + 4);
  sub_1DEE2E040(v48);
  os_unfair_lock_unlock(v11 + 4);
  v13 = v48[0] + 56;
  v12 = *(v48[0] + 56);
  v39 = v48[0];
  v14 = 1 << *(v48[0] + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  result = swift_beginAccess();
  v18 = 0;
  v19 = (v14 + 63) >> 6;
  v36 = v5 + 16;
  v35 = v5 + 32;
  v38 = v5;
  v34 = (v5 + 8);
  if (v16)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v19)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v22 = v38;
        v23 = v37;
        (*(v38 + 16))(v37, *(v39 + 48) + *(v38 + 72) * (v21 | (v20 << 6)), v4);
        (*(v22 + 32))(v8, v23, v4);
        sub_1DEE17214(v2 + 16, v48, &qword_1ECDE4BF8, &unk_1DEF95468);
        if (v49)
        {
          sub_1DEE29594(v48, v45);
          sub_1DEE171B4(v48, &qword_1ECDE4BF8, &unk_1DEF95468);
          v24 = v4;
          v25 = v2;
          v26 = v46;
          v27 = v47;
          __swift_project_boxed_opaque_existential_1(v45, v46);
          v28 = *(v27 + 120);
          v29 = v27;
          v2 = v25;
          v4 = v24;
          v28(v8, v26, v29);
          (*v34)(v8, v24);
          result = __swift_destroy_boxed_opaque_existential_1(v45);
          v18 = v20;
          if (!v16)
          {
            goto LABEL_6;
          }
        }

        else
        {
          (*v34)(v8, v4);
          result = sub_1DEE171B4(v48, &qword_1ECDE4BF8, &unk_1DEF95468);
          v18 = v20;
          if (!v16)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v20 = v18;
      }
    }
  }

  swift_beginAccess();
  sub_1DEE17214(v2 + 16, v48, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (!v49)
  {
    return sub_1DEE171B4(v48, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  sub_1DEE29594(v48, v45);
  sub_1DEE171B4(v48, &qword_1ECDE4BF8, &unk_1DEF95468);
  v30 = v46;
  v31 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  (*(v31 + 112))(v33, v30, v31);
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1DEF0C8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v63[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = v63 - v6;
  v68 = type metadata accessor for PairingRelationship();
  v75 = *(v68 - 8);
  v7 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v83 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v72 = v63 - v10;
  v84 = sub_1DEF8D3F8();
  v11 = *(v84 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v64 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v63 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v80 = v63 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v63 - v24;
  v85 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v67 = a1;
  v26 = *(a1 + 104);
  v27 = v26 + 64;
  v28 = 1 << *(v26 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v26 + 64);
  v65 = (v28 + 63) >> 6;
  v79 = (v11 + 16);
  v82 = (v11 + 32);
  v73 = v11;
  v74 = v26;
  v76 = (v11 + 8);

  v32 = 0;
  v70 = v25;
  v71 = v16;
  v77 = v27;
  v78 = v22;
  while (v30)
  {
    v33 = v32;
LABEL_16:
    v36 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v37 = v36 | (v33 << 6);
    v39 = v73;
    v38 = v74;
    v40 = v80;
    v41 = v84;
    (*(v73 + 16))(v80, *(v74 + 48) + *(v73 + 72) * v37, v84);
    v42 = *(v38 + 56) + *(v75 + 72) * v37;
    v43 = v72;
    sub_1DEF12ADC(v42, v72, type metadata accessor for PairingRelationship);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v45 = *(v44 + 48);
    v46 = *(v39 + 32);
    v22 = v78;
    v46(v78, v40, v41);
    sub_1DEE13958(v43, &v22[v45], type metadata accessor for PairingRelationship);
    (*(*(v44 - 8) + 56))(v22, 0, 1, v44);
    v25 = v70;
    v16 = v71;
LABEL_17:
    sub_1DEE1BA88(v22, v25, &qword_1ECDE3C98, &unk_1DEF95610);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v47 - 8) + 48))(v25, 1, v47) == 1)
    {

      v60 = v80;
      v61 = v81;
      (*v79)(v80, v81, v84);
      v62 = v66;
      sub_1DEF12ADC(v61, v66, type metadata accessor for PairingRelationship);
      (*(v75 + 56))(v62, 0, 1, v68);
      swift_beginAccess();
      sub_1DEF32880(v62, v60);
      result = swift_endAccess();
      *v63[0] = v85;
      return result;
    }

    v48 = *(v47 + 48);
    (*v82)(v16, v25, v84);
    sub_1DEE13958(&v25[v48], v83, type metadata accessor for PairingRelationship);
    sub_1DEE1E3C0(&qword_1ECDE40E0, MEMORY[0x1E69695A8]);
    if (sub_1DEF8D908() & 1) == 0 && ((v49 = *(v68 + 20), v50 = (v83 + v49), v51 = *(v83 + v49), v52 = *(v83 + v49 + 8), v53 = (v81 + v49), *v50 == *v53) && v52 == v53[1] || (sub_1DEF8E4E8()))
    {
      v54 = v64;
      v55 = v84;
      (*v79)(v64, v16, v84);
      v56 = v80;
      sub_1DEF386D8(v80, v54);
      v69 = *v76;
      v69(v56, v55);
      swift_beginAccess();
      v57 = v66;
      sub_1DEF75068(v16, v66);
      sub_1DEE171B4(v57, &qword_1ECDE3C18, &unk_1DEF94D20);
      swift_endAccess();
      v58 = v55;
      v22 = v78;
      v69(v16, v58);
    }

    else
    {
      (*v76)(v16, v84);
    }

    result = sub_1DEE27400(v83, type metadata accessor for PairingRelationship);
    v27 = v77;
  }

  if (v65 <= v32 + 1)
  {
    v34 = v32 + 1;
  }

  else
  {
    v34 = v65;
  }

  v35 = v34 - 1;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v65)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      (*(*(v59 - 8) + 56))(v22, 1, 1, v59);
      v30 = 0;
      v32 = v35;
      goto LABEL_17;
    }

    v30 = *(v27 + 8 * v33);
    ++v32;
    if (v30)
    {
      v32 = v33;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t MetadataStore.removePairingRelationship(with:)(uint64_t a1)
{
  v3 = v1[12];
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v13, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v14)
  {
    sub_1DEE29594(v13, v10);
    sub_1DEE171B4(v13, &qword_1ECDE4BF8, &unk_1DEF95468);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 120))(a1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1DEE171B4(v13, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  v7 = v1[10];
  v8 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v7);
  return (*(v8 + 32))(a1, v7, v8);
}

uint64_t sub_1DEF0D25C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2, v9);
  v13 = type metadata accessor for PairingRelationship();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  swift_beginAccess();
  sub_1DEF32880(v6, v11);
  return swift_endAccess();
}

Swift::Void __swiftcall MetadataStore.update(_:)(Swift::OpaquePointer a1)
{
  v3 = v1[12];
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v22, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v22[3])
  {
    sub_1DEE29594(v22, v19);
    sub_1DEE171B4(v22, &qword_1ECDE4BF8, &unk_1DEF95468);
    v5 = v20;
    v6 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v6 + 128))(a1._rawValue, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (!(a1._rawValue >> 62))
    {
LABEL_3:
      v7 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    sub_1DEE171B4(v22, &qword_1ECDE4BF8, &unk_1DEF95468);
    if (!(a1._rawValue >> 62))
    {
      goto LABEL_3;
    }
  }

  v7 = sub_1DEF8DE68();
LABEL_4:
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
LABEL_15:
    v17 = v1[10];
    v18 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
    (*(v18 + 40))(v8, v17, v18);

    return;
  }

  v22[0] = MEMORY[0x1E69E7CC0];
  sub_1DEF8DFD8();
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((a1._rawValue & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        v11 = *(MEMORY[0x1E12CB6E0]() + 16);

        swift_unknownObjectRelease();
        sub_1DEF8DFB8();
        v12 = *(v22[0] + 16);
        sub_1DEF8DFE8();
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
        v9 = v10;
      }

      while (v7 != v10);
    }

    else
    {
      v13 = (a1._rawValue + 32);
      do
      {
        v14 = *v13++;
        v15 = *(v14 + 16);

        sub_1DEF8DFB8();
        v16 = *(v22[0] + 16);
        sub_1DEF8DFE8();
        sub_1DEF8DFF8();
        sub_1DEF8DFC8();
        --v7;
      }

      while (v7);
    }

    v8 = v22[0];
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1DEF0D658(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.ID.Ownership(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v91[-v10];
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    goto LABEL_58;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1DEF8DE68())
  {
    v17 = 0;
    v99 = a1 & 0xC000000000000001;
    v93 = a1 & 0xFFFFFFFFFFFFFF8;
    v92 = a1 + 32;
    v98 = (v12 + 16);
    v107 = (v12 + 32);
    v110 = (v12 + 48);
    v105 = (v12 + 8);
    *&v14 = 136446210;
    v94 = v14;
    v97 = a1;
    v101 = a2;
    v96 = i;
    while (v99)
    {
      v20 = MEMORY[0x1E12CB6E0](v17, a1);
      v21 = __OFADD__(v17, 1);
      v22 = v17 + 1;
      if (v21)
      {
        goto LABEL_53;
      }

LABEL_12:
      v102 = v22;
      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v23 = sub_1DEF8D508();
      __swift_project_value_buffer(v23, qword_1ECDF6028);

      v24 = sub_1DEF8D4D8();
      v25 = sub_1DEF8DCB8();

      v26 = os_log_type_enabled(v24, v25);
      v104 = v20;
      if (v26)
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v111[0] = v28;
        *v27 = v94;

        v29 = RecordMetadata.description.getter();
        v31 = v30;

        v32 = sub_1DEE12A5C(v29, v31, v111);
        v20 = v104;

        *(v27 + 4) = v32;
        _os_log_impl(&dword_1DEE0F000, v24, v25, "Updating record metadata: %{public}s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1E12CCD70](v28, -1, -1);
        MEMORY[0x1E12CCD70](v27, -1, -1);
      }

      a1 = *(v20 + 16);
      v33 = v20 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version;
      v34 = v20;
      v35 = v108;
      (*v98)(v108, v33, v11);
      v12 = *(v34 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination);
      v36 = v100;
      sub_1DEE17214(v34 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, v100, &qword_1ECDE4DC0, &qword_1DEF91640);
      v37 = *(v34 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options);
      v38 = type metadata accessor for RecordMetadata();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      v41 = swift_allocObject();
      *(v41 + 16) = a1;
      *(v41 + 24) = 0;
      v42 = v35;
      v43 = v41;
      v106 = *v107;
      v106(v41 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v42, v11);
      *(v43 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_destination) = v12;
      sub_1DEE1BA88(v36, v43 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_expiration, &qword_1ECDE4DC0, &qword_1DEF91640);
      *(v43 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_options) = v37;
      a2 = v101;
      swift_beginAccess();
      v44 = *(a2 + 112);
      v103 = v43;
      if ((v44 & 0xC000000000000001) == 0)
      {

        v46 = a1;
LABEL_43:
        a1 = v97;
        goto LABEL_44;
      }

      if (v44 < 0)
      {
        a2 = v44;
      }

      else
      {
        a2 = v44 & 0xFFFFFFFFFFFFFF8;
      }

      v45 = sub_1DEF8DE68();
      v12 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_55;
      }

      v46 = a1;
      if (v45 == -1)
      {

        a2 = v101;
        *(v101 + 112) = MEMORY[0x1E69E7CC8];
        goto LABEL_43;
      }

      v95 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE40B0, &unk_1DEF95600);
      v47 = sub_1DEF8E138();
      v112 = v47;
      v12 = sub_1DEF8E038();
      v48 = sub_1DEF8E0D8();
      if (v48)
      {
        v50 = v48;
        v51 = v49;
        a2 = type metadata accessor for Record.ID(0);
        do
        {
          v111[0] = v50;
          swift_dynamicCast();
          v111[0] = v51;
          swift_dynamicCast();
          v54 = *(v47 + 16);
          if (*(v47 + 24) <= v54)
          {
            sub_1DEEB1864(v54 + 1, 1);
          }

          v47 = v112;
          v55 = v111[9];
          a1 = v111[10];
          v56 = *(v112 + 40);
          sub_1DEF8E7A8();
          v57 = *(a1 + 16);
          v58 = *(a1 + 24);
          sub_1DEF8D9B8();
          v59 = *(a1 + 32);
          v60 = v59[2];
          v61 = v59[3];
          sub_1DEF8D9B8();
          v63 = v59[4];
          v62 = v59[5];

          sub_1DEF8D9B8();

          sub_1DEF12ADC(a1 + OBJC_IVAR____TtCV16ReplicatorEngine6Record2ID_ownership, v7, type metadata accessor for Record.ID.Ownership);
          if ((*v110)(v7, 1, v11) == 1)
          {
            MEMORY[0x1E12CBF60](0);
          }

          else
          {
            v109 = v55;
            v64 = v38;
            v65 = v12;
            v66 = a2;
            v67 = v7;
            v68 = v108;
            v106(v108, v67, v11);
            MEMORY[0x1E12CBF60](1);
            sub_1DEE1E3C0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
            sub_1DEF8D8C8();
            v69 = v68;
            v7 = v67;
            a2 = v66;
            v12 = v65;
            v38 = v64;
            v55 = v109;
            (*v105)(v69, v11);
          }

          v70 = sub_1DEF8E7F8();
          v71 = v47 + 64;
          v72 = -1 << *(v47 + 32);
          v73 = v70 & ~v72;
          v74 = v73 >> 6;
          if (((-1 << v73) & ~*(v47 + 64 + 8 * (v73 >> 6))) != 0)
          {
            v52 = __clz(__rbit64((-1 << v73) & ~*(v47 + 64 + 8 * (v73 >> 6)))) | v73 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v75 = 0;
            v76 = (63 - v72) >> 6;
            do
            {
              if (++v74 == v76 && (v75 & 1) != 0)
              {
                __break(1u);
                goto LABEL_53;
              }

              v77 = v74 == v76;
              if (v74 == v76)
              {
                v74 = 0;
              }

              v75 |= v77;
              v78 = *(v71 + 8 * v74);
            }

            while (v78 == -1);
            v52 = __clz(__rbit64(~v78)) + (v74 << 6);
          }

          *(v71 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
          *(*(v47 + 48) + 8 * v52) = a1;
          *(*(v47 + 56) + 8 * v52) = v55;
          ++*(v47 + 16);
          v50 = sub_1DEF8E0D8();
          v51 = v53;
        }

        while (v50);
      }

      a2 = v101;
      *(v101 + 112) = v47;
      a1 = v97;
      v46 = v95;
LABEL_44:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111[0] = *(a2 + 112);
      v80 = v111[0];
      *(a2 + 112) = 0x8000000000000000;
      v81 = sub_1DEEAF3E8(v46);
      v83 = *(v80 + 16);
      v84 = (v82 & 1) == 0;
      v21 = __OFADD__(v83, v84);
      v85 = v83 + v84;
      if (v21)
      {
        goto LABEL_54;
      }

      v12 = v82;
      if (*(v80 + 24) >= v85)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = v81;
          sub_1DEEB7AC8();
          v81 = v90;
        }
      }

      else
      {
        sub_1DEEB1864(v85, isUniquelyReferenced_nonNull_native);
        v81 = sub_1DEEAF3E8(v46);
        if ((v12 & 1) != (v86 & 1))
        {
          type metadata accessor for Record.ID(0);
          sub_1DEF8E6E8();
          __break(1u);
          return;
        }
      }

      v17 = v102;
      v87 = v111[0];
      if (v12)
      {
        v18 = *(v111[0] + 56);
        v19 = *(v18 + 8 * v81);
        v12 = v103;
        *(v18 + 8 * v81) = v103;
      }

      else
      {
        *(v111[0] + 8 * (v81 >> 6) + 64) |= 1 << v81;
        *(v87[6] + 8 * v81) = v46;
        *(v87[7] + 8 * v81) = v103;
        v88 = v87[2];
        v21 = __OFADD__(v88, 1);
        v89 = v88 + 1;
        if (v21)
        {
          goto LABEL_56;
        }

        v87[2] = v89;

        v12 = v103;
      }

      *(a2 + 112) = v87;
      swift_endAccess();

      if (v17 == v96)
      {
        return;
      }
    }

    if (v17 >= *(v93 + 16))
    {
      goto LABEL_57;
    }

    v20 = *(v92 + 8 * v17);

    v21 = __OFADD__(v17, 1);
    v22 = v17 + 1;
    if (!v21)
    {
      goto LABEL_12;
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    ;
  }
}

Swift::Void __swiftcall MetadataStore.remove(recordIDs:)(Swift::OpaquePointer recordIDs)
{
  v3 = v1[12];
  os_unfair_lock_lock(v3 + 4);
  sub_1DEE3DEF0(v4);
  os_unfair_lock_unlock(v3 + 4);
  swift_beginAccess();
  sub_1DEE17214((v1 + 2), v12, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v13)
  {
    sub_1DEE29594(v12, v9);
    sub_1DEE171B4(v12, &qword_1ECDE4BF8, &unk_1DEF95468);
    v5 = v10;
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v6 + 136))(recordIDs._rawValue, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1DEE171B4(v12, &qword_1ECDE4BF8, &unk_1DEF95468);
  }

  v7 = v1[10];
  v8 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v7);
  (*(v8 + 40))(recordIDs._rawValue, v7, v8);
}

unint64_t sub_1DEF0E1E4(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (result >> 62)
  {
    result = sub_1DEF8DE68();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v23[4] = a2;
    v21 = v3 & 0xC000000000000001;
    v22 = v3;
    do
    {
      if (v6)
      {
        MEMORY[0x1E12CB6E0](v5, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v5 + 32);
      }

      if (qword_1ECDE2E58 != -1)
      {
        swift_once();
      }

      v9 = sub_1DEF8D508();
      __swift_project_value_buffer(v9, qword_1ECDF6028);

      v10 = sub_1DEF8D4D8();
      v11 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23[0] = v13;
        *v12 = 136446210;

        v14 = Record.ID.description.getter();
        v15 = v4;
        v17 = v16;

        v18 = sub_1DEE12A5C(v14, v17, v23);
        v4 = v15;

        *(v12 + 4) = v18;
        _os_log_impl(&dword_1DEE0F000, v10, v11, "Removing record metadata: %{public}s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        v19 = v13;
        v3 = v22;
        MEMORY[0x1E12CCD70](v19, -1, -1);
        v20 = v12;
        v6 = v21;
        MEMORY[0x1E12CCD70](v20, -1, -1);
      }

      ++v5;
      swift_beginAccess();

      sub_1DEF75014(v7);
      swift_endAccess();
    }

    while (v4 != v5);
  }

  return result;
}

uint64_t sub_1DEF0E454(uint64_t a1, void **a2, void *a3, uint64_t a4)
{
  v65 = a1;
  v61 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3D98, &qword_1DEF916B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v54 - v14;
  v16 = sub_1DEF8D3F8();
  v67 = *(v16 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v22 = type metadata accessor for ZoneVersion();
  v62 = *(v22 - 8);
  v63 = v22;
  v23 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v58 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v57 = &v54 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  v30 = *a2;
  v32 = a3[10];
  v31 = a3[11];
  v60 = a3;
  __swift_project_boxed_opaque_existential_1(a3 + 7, v32);
  v33 = v61;
  (*(v31 + 16))();
  v34 = v67;
  v35 = *(v67 + 48);
  v66 = v16;
  if (v35(v15, 1, v16) == 1)
  {
    v55 = v29;
    sub_1DEE171B4(v15, &unk_1ECDE3E80, &unk_1DEF90970);
    v36 = v33;
    v37 = v33;
    v38 = v59;
    sub_1DEF12ADC(v37, v59, type metadata accessor for PairingRelationship);
    v39 = type metadata accessor for PairingRelationship();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    v40 = v57;
    v41 = v60;
    sub_1DEF0E9DC(v30, v38, v57);
    sub_1DEE171B4(v38, &qword_1ECDE3C18, &unk_1DEF94D20);
    v42 = v58;
    sub_1DEF12ADC(v40, v58, type metadata accessor for ZoneVersion);
    if (v35(v42, 1, v66) != 1)
    {
      v43 = v67;
      v44 = v56;
      v45 = v66;
      (*(v67 + 32))(v56, v42, v66);
      v46 = v41[10];
      v47 = v41[11];
      __swift_project_boxed_opaque_existential_1(v41 + 7, v46);
      (*(v47 + 24))(v36, v30, v44, v46, v47);
      (*(v43 + 8))(v44, v45);
    }

    v48 = v40;
    v29 = v55;
    sub_1DEE13958(v48, v55, type metadata accessor for ZoneVersion);
  }

  else
  {
    v49 = *(v34 + 32);
    v50 = v15;
    v51 = v66;
    v49(v21, v50, v66);
    v49(v29, v21, v51);
    (*(v34 + 56))(v29, 0, 1, v51);
  }

  v52 = v64;
  sub_1DEF12ADC(v29, v64, type metadata accessor for ZoneVersion);
  (*(v62 + 56))(v52, 0, 1, v63);

  sub_1DEF331E0(v52, v30);
  return sub_1DEE27400(v29, type metadata accessor for ZoneVersion);
}

uint64_t sub_1DEF0E9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17[-v9];
  swift_beginAccess();
  v11 = *(v3 + 112);
  v18 = a1;
  v19 = a2;

  v12 = sub_1DEF3508C(MEMORY[0x1E69E7CC0], sub_1DEF12B44, v17, v11);

  static MetadataStore.hash(hashes:)(v12, v10);

  v13 = sub_1DEF8D3F8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_1DEE171B4(v10, &unk_1ECDE3E80, &unk_1DEF90970);
    v15 = 1;
  }

  else
  {
    (*(v14 + 32))(a3, v10, v13);
    v15 = 0;
  }

  return (*(v14 + 56))(a3, v15, 1, v13);
}

uint64_t (*sub_1DEF0EBB8(uint64_t a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  *(a1 + 16) = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12BFC(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *a1 = v6;
  return sub_1DEF0BA9C;
}

uint64_t (*sub_1DEF0EC70(uint64_t a1))(uint64_t *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12CD4(v6);
  os_unfair_lock_unlock(v4 + 4);
  *(a1 + 8) = v6[0];
  return sub_1DEF0BCF4;
}

void sub_1DEF0ED04()
{
  v1 = *(*v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12CEC(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void (*sub_1DEF0ED94(void *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = MetadataStore.lastAuthKitReconciliationDate.modify(v3);
  return sub_1DEEEAC48;
}

uint64_t (*sub_1DEF0EE2C(uint64_t a1))(uint64_t *a1)
{
  v3 = *v1;
  *a1 = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12CD4(v6);
  os_unfair_lock_unlock(v4 + 4);
  *(a1 + 8) = v6[0];
  return sub_1DEF0B630;
}

uint64_t (*sub_1DEF0EEE4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *v1;
  a1[1] = *v1;
  v4 = *(v3 + 96);
  os_unfair_lock_lock(v4 + 4);
  sub_1DEE2E040(&v6);
  os_unfair_lock_unlock(v4 + 4);
  *a1 = v6;
  return sub_1DEF0B844;
}

uint64_t sub_1DEF0F02C(void **a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v30 = a1;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v29 - v14;
  v16 = *a2;
  v17 = a2[1];
  v18 = *(v16 + 32);
  v19 = a3[2] == v18[2] && a3[3] == v18[3];
  if (v19 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
  {
    v21 = a3[4] == v18[4] && a3[5] == v18[5];
    if (v21 || (result = sub_1DEF8E4E8(), (result & 1) != 0))
    {
      v22 = type metadata accessor for PairingRelationship();
      v23 = *(*(v22 - 8) + 48);
      if (v23(a4, 1, v22) == 1)
      {
        goto LABEL_14;
      }

      sub_1DEE17214(a4, v15, &qword_1ECDE3C18, &unk_1DEF94D20);
      result = (v23)(v15, 1, v22);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v24 = RecordMetadata.isRelevantToZoneVersionCalculation(for:)(v15);
      result = sub_1DEE27400(v15, type metadata accessor for PairingRelationship);
      if (v24)
      {
LABEL_14:
        (*(v8 + 16))(v11, v17 + OBJC_IVAR____TtC16ReplicatorEngine14RecordMetadata_version, v7);
        v25 = v30;
        v26 = *v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DEF38168(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_1DEF38168(v27 > 1, v28 + 1, 1, v26);
        }

        v26[2] = v28 + 1;
        result = (*(v8 + 32))(v26 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v28, v11, v7);
        *v25 = v26;
      }
    }
  }

  return result;
}

uint64_t static MetadataStore.hash(hashes:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DEF8D7E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D818();
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8CFA8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1DEF8CF98();
  v28 = a1;

  sub_1DEF104D8(&v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B58, &qword_1DEF90B58);
  sub_1DEF123BC();
  v16 = sub_1DEF8CF88();
  v26 = v9;
  v17 = v16;
  v19 = v18;

  _s16ReplicatorEngine13UniformHasherVACycfC_0();
  sub_1DEE1BFF4(v17, v19);
  sub_1DEF11C10(v17, v19);
  sub_1DEE1BFA0(v17, v19);
  sub_1DEF8D7F8();
  v20 = sub_1DEF8D3F8();
  v25 = v4;
  v21 = a2;
  v22 = v20;
  sub_1DEF8D7D8();

  sub_1DEE1BFA0(v17, v19);
  (*(v5 + 8))(v8, v25);
  (*(v27 + 8))(v12, v26);
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t sub_1DEF0F630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4C00, &qword_1DEF955F8);
  v22[3] = v10;
  v22[4] = sub_1DEF1268C();
  v11 = swift_allocObject();
  v22[0] = v11;
  *(v11 + 16) = xmmword_1DEF95450;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  v12 = __swift_project_boxed_opaque_existential_1(v22, v10);
  v13 = v12[1];
  v19[0] = *v12;
  v19[1] = v13;
  sub_1DEF8E778();
  v14 = v20;
  v15 = v21;
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_1DEE3DF08(v14, v15, v9);
  v16 = sub_1DEF8D3F8();
  v17 = *(v16 - 8);
  result = (*(v17 + 48))(v9, 1, v16);
  if (result != 1)
  {
    return (*(v17 + 32))(a3, v9, v16);
  }

  __break(1u);
  return result;
}

void sub_1DEF0F7FC(uint64_t a1)
{
  swift_beginAccess();
  sub_1DEE17214(a1 + 16, &v15, &qword_1ECDE4BF8, &unk_1DEF95468);
  if (v16)
  {
    sub_1DEE2F1AC(&v15, v17);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v3 = sub_1DEF8D508();
    __swift_project_value_buffer(v3, qword_1ECDF6028);
    v4 = sub_1DEF8D4D8();
    v5 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DEE0F000, v4, v5, "Restoring metadata", v6, 2u);
      MEMORY[0x1E12CCD70](v6, -1, -1);
    }

    v7 = *(a1 + 96);
    MEMORY[0x1EEE9AC00](v8);
    MEMORY[0x1EEE9AC00](v9);
    os_unfair_lock_lock(v7 + 4);
    sub_1DEE3DEF0(v10);
    os_unfair_lock_unlock(v7 + 4);
    if (v1)
    {
      __break(1u);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v17);
    }
  }

  else
  {
    sub_1DEE171B4(&v15, &qword_1ECDE4BF8, &unk_1DEF95468);
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v11 = sub_1DEF8D508();
    __swift_project_value_buffer(v11, qword_1ECDF6028);
    v12 = sub_1DEF8D4D8();
    v13 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1DEE0F000, v12, v13, "Persistent store is not set; not restoring metadata", v14, 2u);
      MEMORY[0x1E12CCD70](v14, -1, -1);
    }
  }
}

void sub_1DEF0FAA0(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v6 = (*(*(v4 + 8) + 24))(v5);
  swift_beginAccess();
  v7 = *(a1 + 112);
  *(a1 + 112) = v6;

  v9 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v10 = (*(*(v8 + 8) + 32))(v9);
  swift_beginAccess();
  v11 = *(a1 + 104);
  *(a1 + 104) = v10;

  v13 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v14 = (*(*(v12 + 8) + 8))(v13);
  v15 = *(a1 + 128);
  *(a1 + 120) = v14;
  *(a1 + 128) = v16;

  v18 = a2[3];
  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  v19 = (*(*(v17 + 8) + 48))(v18);
  v20 = *(a1 + 144);
  *(a1 + 144) = v19;

  v22 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  *(a1 + 137) = (*(*(v21 + 8) + 40))(v22) & 1;
  v24 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  *(a1 + 136) = (*(*(v23 + 8) + 16))(v24) & 1;
  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v25 = sub_1DEF8D508();
  __swift_project_value_buffer(v25, qword_1ECDF6028);

  v26 = sub_1DEF8D4D8();
  v27 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134349056;
    v29 = *(a1 + 112);
    if ((v29 & 0xC000000000000001) != 0)
    {
      if (v29 < 0)
      {
        v30 = *(a1 + 112);
      }

      v31 = *(a1 + 112);

      v32 = sub_1DEF8DE68();
    }

    else
    {
      v32 = *(v29 + 16);
    }

    *(v28 + 4) = v32;

    _os_log_impl(&dword_1DEE0F000, v26, v27, "Restored %{public}ld record metadata items", v28, 0xCu);
    MEMORY[0x1E12CCD70](v28, -1, -1);
  }

  else
  {
  }
}

unint64_t MetadataStore.description.getter()
{
  sub_1DEF8DF28();

  v10 = 0xD000000000000010;
  v11 = 0x80000001DEF9D1E0;
  v1 = *(v0 + 96);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v9);
  os_unfair_lock_unlock(v1 + 4);
  type metadata accessor for Record.ID(0);
  type metadata accessor for RecordMetadata();
  sub_1DEE1E3C0(&unk_1ECDE4EB0, type metadata accessor for Record.ID);
  v2 = sub_1DEF8D858();
  v4 = v3;

  MEMORY[0x1E12CB180](v2, v4);

  MEMORY[0x1E12CB180](0xD000000000000018, 0x80000001DEF9D200);
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE2E040(&v9);
  os_unfair_lock_unlock(v1 + 4);
  sub_1DEF8D3F8();
  type metadata accessor for PairingRelationship();
  sub_1DEE1E3C0(&qword_1ECDE3638, MEMORY[0x1E69695A8]);
  v5 = sub_1DEF8D858();
  v7 = v6;

  MEMORY[0x1E12CB180](v5, v7);

  return v10;
}

Swift::Bool __swiftcall MetadataStore.blockedByAllowList(ID:)(Swift::String ID)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-v4];
  v6 = *(v1 + 96);
  v16 = sub_1DEF12CA4;
  v17 = v1;
  os_unfair_lock_lock(v6 + 4);
  sub_1DEF12CD4(v18);
  os_unfair_lock_unlock(v6 + 4);
  if (v18[0] == 1)
  {
    MEMORY[0x1EEE9AC00](v7);
    *&v15[-16] = sub_1DEF12C2C;
    *&v15[-8] = v1;
    os_unfair_lock_lock(v6 + 4);
    sub_1DEE2E040(v18);
    os_unfair_lock_unlock(v6 + 4);
    v8 = *v18;
    sub_1DEF8D388();
    v9 = sub_1DEF8D3F8();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v5, 1, v9);
    if (v11 == 1)
    {
      __break(1u);
      return v11;
    }

    v12 = sub_1DEF01C4C(v5, v8);

    (*(v10 + 8))(v5, v9);
    v13 = v12 ^ 1;
  }

  else
  {
    v13 = 0;
  }

  LOBYTE(v11) = v13 & 1;
  return v11;
}

uint64_t sub_1DEF101C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15[-v3];
  v5 = *v0;
  v6 = *(*v0 + 96);
  v16 = sub_1DEF12CA4;
  v17 = v5;
  os_unfair_lock_lock(v6 + 4);
  sub_1DEF12CD4(v18);
  os_unfair_lock_unlock(v6 + 4);
  if (v18[0] != 1)
  {
    v14 = 0;
    return v14 & 1;
  }

  v8 = *(v5 + 96);
  MEMORY[0x1EEE9AC00](v7);
  *&v15[-16] = sub_1DEF12C2C;
  *&v15[-8] = v5;
  os_unfair_lock_lock(v8 + 4);
  sub_1DEE2E040(v18);
  os_unfair_lock_unlock(v8 + 4);
  v9 = *v18;
  sub_1DEF8D388();
  v10 = sub_1DEF8D3F8();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v4, 1, v10);
  if (result != 1)
  {
    v13 = sub_1DEF01C4C(v4, v9);

    (*(v11 + 8))(v4, v10);
    v14 = v13 ^ 1;
    return v14 & 1;
  }

  __break(1u);
  return result;
}

_BYTE *sub_1DEF103A8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1DEEFC6AC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1DEF11FB8(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1DEF12034(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1DEF1043C(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1DEEA4718(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void sub_1DEF104D8(void **a1)
{
  v2 = *(sub_1DEF8D3F8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1DEF06ED4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1DEF10580(v5);
  *a1 = v3;
}

void sub_1DEF10580(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1DEF8E2D8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1DEF8D3F8();
        v6 = sub_1DEF8DB08();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1DEF8D3F8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DEF109B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DEF106AC(0, v2, 1, a1);
  }
}

void sub_1DEF106AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v35 - v12;
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      (v46)(v48, v22, v8, v15);
      v25(v49, v24, v8);
      v26 = sub_1DEF8D398();
      v28 = v27;
      if (v26 == sub_1DEF8D398() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        v23(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = &v40[v36];
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_6;
      }

      v30 = sub_1DEF8E4E8();

      v31 = *v19;
      (*v19)(v49, v8);
      v31(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1DEF109B8(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v136 = a1;
  v9 = sub_1DEF8D3F8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v140 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v151 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v148 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v130 - v23;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v134 = &v130 - v27;
  v28 = *(a3 + 1);
  v145 = v25;
  if (v28 < 1)
  {
    v30 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v32 = *v136;
    if (!*v136)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v145;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v157 = v30;
      v124 = *(v30 + 16);
      if (v124 >= 2)
      {
        do
        {
          v125 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v126 = a3;
          v127 = *(v30 + 16 * v124);
          a3 = v30;
          v128 = *(v30 + 16 * (v124 - 1) + 32);
          v30 = *(v30 + 16 * (v124 - 1) + 40);
          sub_1DEF11574(&v125[*(v5 + 72) * v127], &v125[*(v5 + 72) * v128], &v125[*(v5 + 72) * v30], v32);
          if (v6)
          {
            break;
          }

          if (v30 < v127)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_1DEF06BB8(a3);
          }

          if (v124 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v129 = &a3[16 * v124];
          *v129 = v127;
          *(v129 + 1) = v30;
          v157 = a3;
          sub_1DEF06B2C(v124 - 1);
          v30 = v157;
          v124 = *(v157 + 16);
          a3 = v126;
        }

        while (v124 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v30 = sub_1DEF06BB8(v30);
    goto LABEL_105;
  }

  v131 = a4;
  v29 = 0;
  v153 = v25 + 16;
  v154 = (v25 + 8);
  v152 = (v25 + 32);
  v30 = MEMORY[0x1E69E7CC0];
  v137 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v139 = v29;
    if (v29 + 1 < v28)
    {
      v143 = v28;
      v132 = v30;
      v33 = *a3;
      v34 = *(v145 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v145 + 16);
      v36(v134, v35, v9, v26);
      v146 = v34;
      v142 = v36;
      (v36)(v135, &v33[v34 * v31], v9);
      v32 = sub_1DEF8D398();
      v38 = v37;
      v39 = sub_1DEF8D398();
      v133 = v6;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v144) = 0;
      }

      else
      {
        LODWORD(v144) = sub_1DEF8E4E8();
      }

      v41 = *v154;
      (*v154)(v135, v9);
      v141 = v41;
      v41(v134, v9);
      v42 = (v139 + 2);
      v43 = v146 * (v139 + 2);
      v44 = &v33[v43];
      v45 = v146 * v5;
      v46 = &v33[v146 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v143)
        {
          break;
        }

        v149 = v5;
        v150 = v42;
        v50 = v142;
        (v142)(v147, v44, v9);
        v50(v148, v46, v9);
        v51 = sub_1DEF8D398();
        v53 = v52;
        if (v51 == sub_1DEF8D398() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_1DEF8E4E8();
        }

        a3 = v150;

        v32 = v141;
        v141(v148, v9);
        (v32)(v147, v9);
        v48 = v144 ^ v47;
        v42 = a3 + 1;
        v44 += v146;
        v46 += v146;
        v49 = v149;
        v5 = v149 + 1;
        v45 = v6 + v146;
        v43 = v30 + v146;
      }

      while ((v48 & 1) == 0);
      if (v144)
      {
        v31 = v139;
        if (a3 < v139)
        {
          goto LABEL_132;
        }

        if (v139 < a3)
        {
          v55 = v139 * v146;
          v56 = v139;
          do
          {
            if (v56 != v49)
            {
              v58 = *v137;
              if (!*v137)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v150 = *v152;
              (v150)(v140, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v150)(v58 + v6, v140, v9);
              v31 = v139;
              v49 = v5;
            }

            ++v56;
            v6 -= v146;
            v30 -= v146;
            v55 += v146;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v133;
        a3 = v137;
        v30 = v132;
      }

      else
      {
        v32 = a3;
        v6 = v133;
        a3 = v137;
        v30 = v132;
        v31 = v139;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v131)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_1DEF06DBC(0, *(v30 + 16) + 1, 1, v30);
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v30 = sub_1DEF06DBC((v76 > 1), v77 + 1, 1, v30);
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v136;
    if (!*v136)
    {
      goto LABEL_140;
    }

    v146 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_1DEF11574(&v119[*(v145 + 72) * v120], &v119[*(v145 + 72) * v121], &v119[*(v145 + 72) * v30], v80);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_1DEF06BB8(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v157 = a3;
        sub_1DEF06B2C(v32);
        v30 = v157;
        v78 = *(v157 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v146;
    if (v146 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v131);
  if (__OFADD__(v31, v131))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v132 = v30;
  v133 = v6;
  v61 = *a3;
  v62 = *(v145 + 72);
  v63 = *(v145 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v149 = -v62;
  v150 = v61;
  v65 = v31 - v32;
  v138 = v62;
  v66 = &v61[v32 * v62];
  v141 = v60;
LABEL_43:
  v146 = v32;
  v142 = v66;
  v143 = v65;
  v144 = v64;
  v68 = v64;
  while (1)
  {
    v63(v155, v66, v9);
    (v63)(v156, v68);
    v5 = sub_1DEF8D398();
    v70 = v69;
    if (v5 == sub_1DEF8D398() && v70 == v71)
    {

      v67 = *v154;
      (*v154)(v156, v9);
      v67(v155, v9);
LABEL_42:
      v32 = v146 + 1;
      v64 = v144 + v138;
      v65 = v143 - 1;
      v66 = &v142[v138];
      if ((v146 + 1) == v141)
      {
        v32 = v141;
        v6 = v133;
        a3 = v137;
        v30 = v132;
        v31 = v139;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_1DEF8E4E8();

    v72 = *v154;
    (*v154)(v156, v9);
    v72(v155, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v150)
    {
      break;
    }

    v73 = v151;
    v5 = v152;
    v74 = *v152;
    (*v152)(v151, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v149;
    v66 += v149;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_1DEF11574(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v71 = sub_1DEF8D3F8();
  v8 = *(v71 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v59 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v59 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v22;
    if (v22 < 1)
    {
      v44 = a4 + v22;
    }

    else
    {
      v63 = a4;
      v64 = (v8 + 16);
      v62 = (v8 + 8);
      v42 = -v18;
      v43 = a4 + v22;
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = (a2 + v42);
          v69 = (a2 + v42);
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_1DEF8D398();
            v52 = v51;
            if (v50 != sub_1DEF8D398())
            {
              goto LABEL_51;
            }

            if (v52 == v53)
            {
              v54 = 0;
            }

            else
            {
LABEL_51:
              v54 = sub_1DEF8E4E8();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = (a4 + v21);
    v72 = a4 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v8 + 16);
      v66 = v18;
      v67 = (v8 + 16);
      v64 = (v8 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_1DEF8D398();
        v32 = v31;
        if (v30 == sub_1DEF8D398() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_1DEF8E4E8();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = v26 + v66;
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 += v66;
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_1DEF06CBC(&v74, &v73, &v72);
}

uint64_t sub_1DEF11C10(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1DEF8D818();
      sub_1DEE1E3C0(&unk_1ED785FB0, MEMORY[0x1E6966620]);
      result = sub_1DEF8D7C8();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1DEF11DF0(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEF11DF0(uint64_t a1, uint64_t a2)
{
  result = sub_1DEF8D018();
  if (!result || (result = sub_1DEF8D048(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1DEF8D038();
      sub_1DEF8D818();
      sub_1DEE1E3C0(&unk_1ED785FB0, MEMORY[0x1E6966620]);
      return sub_1DEF8D7C8();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF11ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4BF8, &unk_1DEF95468);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF11F40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1DEF0E9DC(v2, v3, a1);
}

void *sub_1DEF11F74@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1DEF11FB8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DEF8D068();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DEF8D008();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DEF8D238();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1DEF12034(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1DEF8D068();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DEF8D008();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DEF120B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5[1] = *(v1 + 24);
  result = sub_1DEF34F48(MEMORY[0x1E69E7CC8], sub_1DEF12AC0, v5, v3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF121C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 144);
  *(v1 + 144) = *(v0 + 24);
}

uint64_t sub_1DEF12204()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 128);
  *(v1 + 120) = v0[3];
  *(v1 + 128) = v2;
}

uint64_t sub_1DEF12288@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine13MetadataStore_lock_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEE17214(v1 + v3, a1, &qword_1ECDE4DC0, &qword_1DEF91640);
}

uint64_t sub_1DEF122F8()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  *(v0 + 112) = MEMORY[0x1E69E7CC8];
}

unint64_t sub_1DEF123BC()
{
  result = qword_1ECDE2C68;
  if (!qword_1ECDE2C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3B58, &qword_1DEF90B58);
    sub_1DEE1E3C0(&qword_1ECDE3640, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2C68);
  }

  return result;
}

uint64_t type metadata accessor for MetadataStore()
{
  result = qword_1ECDE34B0;
  if (!qword_1ECDE34B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DEF124D8()
{
  sub_1DEECFC40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DEF12628@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 128);
  *a1 = *(v1 + 120);
  a1[1] = v2;
}

double sub_1DEF12648@<D0>(_OWORD *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(&v7);
  if (!v2)
  {
    result = *&v7;
    *a1 = v7;
  }

  return result;
}

unint64_t sub_1DEF1268C()
{
  result = qword_1ECDE2B60;
  if (!qword_1ECDE2B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE4C00, &qword_1DEF955F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2B60);
  }

  return result;
}

uint64_t sub_1DEF12708(uint64_t a1, void *a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v11 = sub_1DEF1043C(v14, v8, a1, a2);
      MEMORY[0x1E12CCD70](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  v11 = sub_1DEEA4718(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v8, a1, a2);

  if (v3)
  {
    swift_willThrow();
  }

LABEL_6:
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1DEF128C8(uint64_t a1, void *a2)
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
          v10 = *(v3 + 16);
          if (*(v3 + 24) <= v10)
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

    v3 = sub_1DEF12708(a1, a2);
  }

  return v3;
}

uint64_t sub_1DEF12ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEF12B60@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 112);
}

double ScreenDescriptor.pointSize.getter()
{
  v1 = v0[2];
  result = *v0 / v1;
  v3 = v0[1] / v1;
  return result;
}

double ScreenDescriptor.size.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t ScreenDescriptor.cornerRadius.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t ScreenDescriptor.cornerRadius.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t ScreenDescriptor.init(size:scale:cornerRadius:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2 & 1;
  return result;
}

void static ScreenDescriptor.mainScreen.getter(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainDisplay];
  if (!v3)
  {
    goto LABEL_23;
  }

  v4 = v3;
  v5 = [v3 nativeOrientation];
  v6 = sub_1DEF8D948();
  v8 = v7;

  [v4 frame];
  Width = CGRectGetWidth(v27);
  [v4 frame];
  Height = CGRectGetHeight(v28);
  v11 = *MEMORY[0x1E6979740];
  if (sub_1DEF8D948() == v6 && v12 == v8)
  {

    goto LABEL_19;
  }

  v14 = sub_1DEF8E4E8();

  if (v14)
  {
    goto LABEL_12;
  }

  v15 = *MEMORY[0x1E6979738];
  if (sub_1DEF8D948() == v6 && v16 == v8)
  {

LABEL_12:

    goto LABEL_19;
  }

  v17 = sub_1DEF8E4E8();

  if (v17)
  {
    v18 = Width;
  }

  else
  {
    v18 = Height;
  }

  if ((v17 & 1) == 0)
  {
    Height = Width;
  }

  Width = v18;
LABEL_19:
  v19 = [v2 mainDisplay];
  if (!v19)
  {
LABEL_23:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 256;
    return;
  }

  v20 = v19;
  v21 = [v19 currentMode];
  v22 = [v21 preferredScale];

  sub_1DEF1303C();
  v23 = sub_1DEF8DDB8();
  MGGetFloat32Answer();
  v25 = v24;

  *a1 = Height;
  *(a1 + 8) = Width;
  v26 = v25;
  if (v25 <= -1.0)
  {
    v26 = 0.0;
  }

  *(a1 + 16) = v22;
  *(a1 + 24) = v26;
  *(a1 + 32) = v25 <= -1.0;
  *(a1 + 33) = 0;
}

unint64_t sub_1DEF1303C()
{
  result = qword_1ECDE2B80;
  if (!qword_1ECDE2B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE2B80);
  }

  return result;
}

uint64_t sub_1DEF1308C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF13758(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF130B4(uint64_t a1)
{
  v2 = sub_1DEE23D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF130F0(uint64_t a1)
{
  v2 = sub_1DEE23D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ScreenDescriptor.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4C08, &qword_1DEF95620);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v12 = *(v1 + 32);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE23D60();
  sub_1DEF8E858();
  v18 = v9;
  v19 = v10;
  v17 = 0;
  type metadata accessor for CGSize(0);
  sub_1DEE23CD0(&qword_1ECDE2BA0);
  sub_1DEF8E298();
  if (!v2)
  {
    v14 = v16;
    v18 = v11;
    v17 = 1;
    sub_1DEF13594();
    sub_1DEF8E298();
    v18 = v14;
    LOBYTE(v19) = v12;
    v17 = 2;
    sub_1DEF8E258();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ScreenDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E12CBF90](*&v1);
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v2;
  }

  MEMORY[0x1E12CBF90](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x1E12CBF90](*&v7);
  if (v5 == 1)
  {
    return sub_1DEF8E7C8();
  }

  sub_1DEF8E7C8();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x1E12CBF90](v9);
}

uint64_t ScreenDescriptor.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DEF8E7A8();
  ScreenDescriptor.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF13470()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DEF8E7A8();
  ScreenDescriptor.hash(into:)();
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF134D8()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 32);
  sub_1DEF8E7A8();
  ScreenDescriptor.hash(into:)();
  return sub_1DEF8E7F8();
}

BOOL _s16ReplicatorEngine16ScreenDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a2 + 32);
  if (*(a1 + 32))
  {
    return (*(a2 + 32) & 1) != 0;
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }
}

unint64_t sub_1DEF13594()
{
  result = qword_1ECDE3600;
  if (!qword_1ECDE3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE3600);
  }

  return result;
}

unint64_t sub_1DEF135EC()
{
  result = qword_1ECDE4C18;
  if (!qword_1ECDE4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4C18);
  }

  return result;
}

unint64_t sub_1DEF13654()
{
  result = qword_1ECDE4C20;
  if (!qword_1ECDE4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE4C20);
  }

  return result;
}

unint64_t sub_1DEF136AC()
{
  result = qword_1ECDE33D0;
  if (!qword_1ECDE33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33D0);
  }

  return result;
}

unint64_t sub_1DEF13704()
{
  result = qword_1ECDE33D8;
  if (!qword_1ECDE33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE33D8);
  }

  return result;
}

uint64_t sub_1DEF13758(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702521203 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x615272656E726F63 && a2 == 0xEC00000073756964)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF13870(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1DEF8DE68();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1DEF2B57C(v3, 0);
  sub_1DEF2CFA8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1DEF13904(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E98, &qword_1DEF95B58);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF301A8();
  sub_1DEF8E858();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E60, &qword_1DEF95B40);
  sub_1DEF30468(&unk_1ECDE4EA0, sub_1DEEBBEC0);
  sub_1DEF8E298();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DEF13AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DEF8E4E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DEF13B44(uint64_t a1)
{
  v2 = sub_1DEF301A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF13B80(uint64_t a1)
{
  v2 = sub_1DEF301A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DEF13BBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DEF2E474(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DEF13C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DE8, &qword_1DEF95AD0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 1;
  off_1ECDE4C30 = result;
  return result;
}

uint64_t sub_1DEF13C4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 56);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v10[9] = v2;
  v8 = sub_1DEF2B2A4(v7, 0);
  v9 = sub_1DEF2E31C(v10, v8 + 4, v7, v6);

  result = sub_1DEE2774C();
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DEF13D38(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1DEF8D788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 24);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  v14 = sub_1DEF8D7B8();
  v15 = (*(v7 + 8))(v11, v6);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v16 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);
  MEMORY[0x1EEE9AC00](v15);
  *(&v23 - 2) = a1;
  *(&v23 - 1) = a2;
  os_unfair_lock_lock((v16 + 32));
  sub_1DEF30114((v16 + 16), v24);
  os_unfair_lock_unlock((v16 + 32));
  v11 = v24[2];
  if (LOBYTE(v24[0]) != 1)
  {
  }

  v14 = v24[1];
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v17 = sub_1DEF8D508();
  __swift_project_value_buffer(v17, qword_1ECDF6010);

  v18 = sub_1DEF8D4D8();
  v19 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1DEE12A5C(a1, a2, v24);
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_1DEE12A5C(v14, v11, v24);
    _os_log_impl(&dword_1DEE0F000, v18, v19, "set terminusRemoteDeviceID:%{public}s changed from %{public}s; updating connections key", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v21, -1, -1);
    MEMORY[0x1E12CCD70](v20, -1, -1);
  }

  sub_1DEF140DC(a1, a2, v14, v11);
}

uint64_t sub_1DEF14034@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == a2 && v6 == a3)
  {
    v11 = 0;
    v12 = a1[1];
  }

  else if (sub_1DEF8E4E8())
  {
    v11 = 0;
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
    v11 = 1;
  }

  *a4 = v11;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
}

uint64_t sub_1DEF140DC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v41 = a2;
  v39 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D788();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v5 + 24);
  *v21 = v22;
  (*(v17 + 104))(v21, *MEMORY[0x1E69E8020], v16, v19);
  v23 = v22;
  LOBYTE(v22) = sub_1DEF8D7B8();
  (*(v17 + 8))(v21, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  v24 = *(v5 + 56);
  if (!*(v24 + 16))
  {
    return swift_endAccess();
  }

  v21 = a3;
  v25 = sub_1DEE13224(a3, a4);
  if ((v26 & 1) == 0)
  {
    return swift_endAccess();
  }

  sub_1DEE15068(*(v24 + 56) + *(v40 + 72) * v25, v15, type metadata accessor for NetworkMessenger.ExpiringConnection);
  swift_endAccess();
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v38 = v12;
  v27 = sub_1DEF8D508();
  __swift_project_value_buffer(v27, qword_1ECDF6010);

  v28 = v41;

  v29 = sub_1DEF8D4D8();
  v30 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42[0] = v32;
    *v31 = 136446466;
    *(v31 + 4) = sub_1DEE12A5C(a3, a4, v42);
    *(v31 + 12) = 2082;
    v33 = v39;
    *(v31 + 14) = sub_1DEE12A5C(v39, v41, v42);
    _os_log_impl(&dword_1DEE0F000, v29, v30, "updating connection key from %{public}s to %{public}s", v31, 0x16u);
    swift_arrayDestroy();
    v34 = v32;
    v28 = v41;
    MEMORY[0x1E12CCD70](v34, -1, -1);
    v35 = v31;
    v21 = a3;
    MEMORY[0x1E12CCD70](v35, -1, -1);
  }

  else
  {

    v33 = v39;
  }

  swift_beginAccess();
  sub_1DEF759B0(v21, a4, v11);
  swift_endAccess();
  sub_1DEE171B4(v11, &qword_1ECDE4DA0, &qword_1DEF95AA0);
  sub_1DEE15068(v15, v11, type metadata accessor for NetworkMessenger.ExpiringConnection);
  (*(v40 + 56))(v11, 0, 1, v38);
  swift_beginAccess();

  sub_1DEE136B8(v11, v33, v28);
  swift_endAccess();
  return sub_1DEE15388(v15, type metadata accessor for NetworkMessenger.ExpiringConnection);
}

uint64_t sub_1DEF1458C(uint64_t isEscapingClosureAtFileLocation)
{
  v2 = v1;
  v29 = *MEMORY[0x1E69E9840];
  out_token = -1;
  v5 = *(v1 + 120);
  v4 = *(v1 + 128);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v27 = sub_1DEF304EC;
  v28 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1DEF422C8;
  v26 = &block_descriptor_396;
  v7 = _Block_copy(&aBlock);

  v8 = sub_1DEF8D998();
  v9 = notify_register_dispatch((v8 + 32), &out_token, isEscapingClosureAtFileLocation, v7);

  _Block_release(v7);
  if (!v9)
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6028);

    v11 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DCB8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_10;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136315138;
    v18 = sub_1DEE12A5C(v5, v4, &aBlock);

    *(v13 + 4) = v18;
    v16 = "registered for %s notifications";
    goto LABEL_9;
  }

  if (qword_1ECDE2E58 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = sub_1DEF8D508();
    __swift_project_value_buffer(v10, qword_1ECDF6028);

    v11 = sub_1DEF8D4D8();
    v12 = sub_1DEF8DC98();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = sub_1DEE12A5C(v5, v4, &aBlock);

      *(v13 + 4) = v15;
      v16 = "Could not register for %s notifications";
LABEL_9:
      _os_log_impl(&dword_1DEE0F000, v11, v12, v16, v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1E12CCD70](v14, -1, -1);
      MEMORY[0x1E12CCD70](v13, -1, -1);
    }

    else
    {
LABEL_10:
    }

    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = &out_token;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1DEF304F4;
    *(v4 + 24) = v19;
    v27 = sub_1DEE46D40;
    v28 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = sub_1DEE134F4;
    v26 = &block_descriptor_406;
    v5 = _Block_copy(&aBlock);

    dispatch_sync(isEscapingClosureAtFileLocation, v5);
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DEF149D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();
  v3 = *(v0 + 48);
  swift_unknownObjectRelease();
  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 104);

  v9 = *(v0 + 112);

  v10 = *(v0 + 128);

  v11 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_temporaryFileURL;
  v12 = sub_1DEF8D1E8();
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency));
  v13 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);

  v14 = *(v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_subscriptions);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_nearbyCompanionSubscriber));
  return v0;
}

uint64_t sub_1DEF14ADC()
{
  sub_1DEF149D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF14B5C()
{
  result = sub_1DEF8D1E8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1DEF14CC0()
{
  if (!qword_1ECDE4D18)
  {
    v0 = sub_1DEF8DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE4D18);
    }
  }
}

uint64_t sub_1DEF14D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DEF14DF0()
{
  result = qword_1ECDE4D38;
  if (!qword_1ECDE4D38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ECDE4D38);
  }

  return result;
}

NSObject *sub_1DEF14E54()
{
  v1 = v0;
  v2 = sub_1DEF8D788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = (v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[3];
  *v7 = v8;
  (*(v3 + 104))(v7, *MEMORY[0x1E69E8020], v2, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1DEF8D7B8();
  (*(v3 + 8))(v7, v2);
  if (v8)
  {
    if (qword_1ECDE2E50 == -1)
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
  v10 = sub_1DEF8D508();
  __swift_project_value_buffer(v10, qword_1ECDF6010);

  v11 = sub_1DEF8D4D8();
  v12 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    v15 = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType);
    *v13 = 136446210;
    if (v15)
    {
      v16 = 0xD000000000000011;
    }

    else
    {
      v16 = 0x72656E657473696CLL;
    }

    if (v15)
    {
      v17 = 0x80000001DEF9D810;
    }

    else
    {
      v17 = 0xE800000000000000;
    }

    v18 = sub_1DEE12A5C(v16, v17, &aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DEE0F000, v11, v12, "Starting %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E12CCD70](v14, -1, -1);
    MEMORY[0x1E12CCD70](v13, -1, -1);
  }

  v19 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType;
  LOBYTE(aBlock) = *(v1 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType);
  result = sub_1DEF2ED98(&aBlock);
  if (result)
  {
    v21 = result;
    v22 = v1[15];
    v23 = v1[16];
    v24 = sub_1DEF8D918();
    v25 = [v24 UTF8String];
    result = v24;
    if (v25)
    {
      application_service = nw_advertise_descriptor_create_application_service(v25);
      v27 = nw_listener_create(v21);
      if (v27)
      {
        v28 = v27;

        swift_unknownObjectRetain();
        v29 = sub_1DEF8D4D8();
        v30 = sub_1DEF8DCB8();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          aBlock = v32;
          *v31 = 136446466;
          v33 = *(v1 + v19) == 0;
          if (*(v1 + v19))
          {
            v34 = 0xD000000000000011;
          }

          else
          {
            v34 = 0x72656E657473694CLL;
          }

          v48[0] = application_service;
          v35 = v9;
          if (v33)
          {
            v36 = 0xE800000000000000;
          }

          else
          {
            v36 = 0x80000001DEF9D7F0;
          }

          v37 = sub_1DEE12A5C(v34, v36, &aBlock);

          *(v31 + 4) = v37;
          *(v31 + 12) = 2082;
          v48[1] = v28;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E80, &qword_1DEF95B48);
          v38 = sub_1DEF8D988();
          v40 = sub_1DEE12A5C(v38, v39, &aBlock);

          *(v31 + 14) = v40;
          v9 = v35;
          application_service = v48[0];
          _os_log_impl(&dword_1DEE0F000, v29, v30, "%{public}s created %{public}s", v31, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12CCD70](v32, -1, -1);
          MEMORY[0x1E12CCD70](v31, -1, -1);
        }

        nw_listener_set_advertise_descriptor(v28, application_service);
        v41 = swift_allocObject();
        swift_weakInit();
        v42 = swift_allocObject();
        *(v42 + 16) = v41;
        *(v42 + 24) = v28;
        v53 = sub_1DEE129C4;
        v54 = v42;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_1DEE11B94;
        v52 = &block_descriptor_352;
        v43 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        nw_listener_set_new_connection_handler(v28, v43);
        _Block_release(v43);
        v44 = swift_allocObject();
        *(v44 + 16) = v28;
        v53 = sub_1DEF30388;
        v54 = v44;
        aBlock = MEMORY[0x1E69E9820];
        v50 = 1107296256;
        v51 = sub_1DEF23788;
        v52 = &block_descriptor_358;
        v45 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();

        MEMORY[0x1E12CC4B0](v28, v45);
        _Block_release(v45);
        v46 = v1[5];
        v1[5] = v28;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        nw_listener_set_queue(v28, v9);
        nw_listener_start(v28);
        v47 = v1[6];
        if (v47)
        {
          v1[6] = 0;
          sub_1DEF2EEE4(v47);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DEF154A0(NSObject *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v142 = a2;
  v7 = sub_1DEF8D3F8();
  v132 = *(v7 - 8);
  v133 = v7;
  v8 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v131 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v137 = (&v127 - v12);
  v139 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v13 = *(v139 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v127 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v129 = &v127 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v130 = &v127 - v23;
  v24 = sub_1DEF8D788();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v127 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v4 + 24);
  *v29 = v30;
  (*(v25 + 104))(v29, *MEMORY[0x1E69E8020], v24, v27);
  v31 = v30;
  LOBYTE(v30) = sub_1DEF8D7B8();
  (*(v25 + 8))(v29, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_5;
  }

  v128 = v16;
  v134 = v19;
  v16 = OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType;
  if (*(v4 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) == 1 && !a3)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v138 = v13;
  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_43;
  }

LABEL_5:
  v32 = sub_1DEF8D508();
  v33 = __swift_project_value_buffer(v32, qword_1ECDF6010);

  swift_unknownObjectRetain();
  v34 = sub_1DEF8D4D8();
  v35 = sub_1DEF8DCB8();

  swift_unknownObjectRelease();

  v36 = os_log_type_enabled(v34, v35);
  v141 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v144 = v38;
    *v37 = 136315650;
    if (v16[v4])
    {
      v39 = 0x73756E696D726574;
    }

    else
    {
      v39 = 0x647261646E617473;
    }

    v40 = sub_1DEE12A5C(v39, 0xE800000000000000, &v144);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2082;
    aBlock = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E00, &unk_1DEF95AE8);
    v41 = sub_1DEF8D988();
    v43 = sub_1DEE12A5C(v41, v42, &v144);

    *(v37 + 14) = v43;
    *(v37 + 22) = 2080;
    v44 = 0xE000000000000000;
    if (a3)
    {
      aBlock = 0;
      v146 = 0xE000000000000000;
      sub_1DEF8DF28();

      aBlock = 0xD000000000000012;
      v146 = 0x80000001DEF9D6C0;
      v143[0] = v142;
      v143[1] = a3;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
      v45 = sub_1DEF8D988();
      MEMORY[0x1E12CB180](v45);

      v46 = aBlock;
      v44 = v146;
    }

    else
    {
      v46 = 0;
    }

    v47 = sub_1DEE12A5C(v46, v44, &v144);

    *(v37 + 24) = v47;
    _os_log_impl(&dword_1DEE0F000, v34, v35, "Creating %s connection from %{public}s%s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v38, -1, -1);
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  else
  {
  }

  if (v16[v4] != 1)
  {
    v48 = 0;
LABEL_18:
    LOBYTE(aBlock) = v48;
    v49 = sub_1DEF2F0C4(&aBlock);
    if (!v49)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v50 = v49;
    v51 = swift_slowAlloc();
    *v51 = 0;
    v51[1] = 0;
    nw_endpoint_set_agent_identifier();
    if (a3)
    {

      v52 = sub_1DEF8D4D8();
      v53 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        aBlock = v55;
        *v54 = 136315138;
        *(v54 + 4) = sub_1DEE12A5C(v142, a3, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v52, v53, "Using overrideDeviceID %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x1E12CCD70](v55, -1, -1);
        MEMORY[0x1E12CCD70](v54, -1, -1);
      }

      v56 = nw_connection_create(a1, v50);
      v57 = a3;
    }

    else
    {
      v56 = nw_connection_create(a1, v50);
      swift_getObjectType();
      v142 = sub_1DEE12B28();
      v57 = v58;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v59 = sub_1DEF8D4D8();
    v60 = sub_1DEF8DCB8();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v61 = os_log_type_enabled(v59, v60);
    v140 = v4;
    v135 = v51;
    v136 = v50;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v143[0] = v63;
      *v62 = 136446722;
      aBlock = v56;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v64 = sub_1DEF8D988();
      v66 = sub_1DEE12A5C(v64, v65, v143);

      *(v62 + 4) = v66;
      *(v62 + 12) = 2082;
      aBlock = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4E00, &unk_1DEF95AE8);
      v67 = sub_1DEF8D988();
      v69 = sub_1DEE12A5C(v67, v68, v143);

      *(v62 + 14) = v69;
      *(v62 + 22) = 2082;
      v4 = v140;
      aBlock = v142;
      v146 = v57;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
      v70 = sub_1DEF8D988();
      v72 = sub_1DEE12A5C(v70, v71, v143);

      *(v62 + 24) = v72;
      _os_log_impl(&dword_1DEE0F000, v59, v60, "New outgoing connection created %{public}s from %{public}s; DeviceID: %{public}s", v62, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12CCD70](v63, -1, -1);
      MEMORY[0x1E12CCD70](v62, -1, -1);
    }

    if (v57)
    {
      swift_unknownObjectRetain();

      v73 = sub_1DEF8D4D8();
      v74 = sub_1DEF8DCB8();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock = v76;
        *v75 = 136446466;
        *(v75 + 4) = sub_1DEE12A5C(v142, v57, &aBlock);
        *(v75 + 12) = 2082;
        v143[0] = v56;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v77 = sub_1DEF8D988();
        v79 = sub_1DEE12A5C(v77, v78, &aBlock);

        *(v75 + 14) = v79;
        _os_log_impl(&dword_1DEE0F000, v73, v74, "DeviceID %{public}s will be used for connection: %{public}s", v75, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v76, -1, -1);
        MEMORY[0x1E12CCD70](v75, -1, -1);
      }

      v80 = v138;
      v81 = v134;
      swift_beginAccess();
      v82 = *(v4 + 56);
      if (!*(v82 + 16) || (v83 = sub_1DEE13224(v142, v57), (v84 & 1) == 0))
      {
        swift_endAccess();
LABEL_40:
        v116 = v139;
        v117 = *(v139 + 20);
        swift_unknownObjectRetain();

        v118 = v137;
        sub_1DEF8D348();
        *v118 = v56;
        *(v118 + *(v116 + 24)) = 0;
        (*(v80 + 56))(v118, 0, 1, v116);
        v119 = v140;
        swift_beginAccess();
        v120 = v142;
        sub_1DEE136B8(v118, v142, v57);
        swift_endAccess();
        v121 = *(v119 + 112);
        id = nw_connection_get_id();
        v123 = *(v121 + 16);
        v124 = swift_allocObject();
        v124[2] = v120;
        v124[3] = v57;
        v124[4] = id;
        v124[5] = v121;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_1DEF30810;
        *(v125 + 24) = v124;
        v149 = sub_1DEE46D40;
        v150 = v125;
        aBlock = MEMORY[0x1E69E9820];
        v146 = 1107296256;
        v147 = sub_1DEE134F4;
        v148 = &block_descriptor_286;
        v126 = _Block_copy(&aBlock);

        dispatch_sync(v123, v126);
        _Block_release(v126);
        LOBYTE(v123) = swift_isEscapingClosureAtFileLocation();

        if ((v123 & 1) == 0)
        {
LABEL_41:
          sub_1DEE16294(v56);
          MEMORY[0x1E12CCD70](v135, -1, -1);
          swift_unknownObjectRelease();
          return;
        }

        __break(1u);
        goto LABEL_45;
      }

      v85 = v129;
      sub_1DEE15068(*(v82 + 56) + *(v80 + 72) * v83, v129, type metadata accessor for NetworkMessenger.ExpiringConnection);
      v86 = v85;
      v87 = v130;
      sub_1DEE1C4F0(v86, v130, type metadata accessor for NetworkMessenger.ExpiringConnection);
      swift_endAccess();
      sub_1DEE15068(v87, v81, type metadata accessor for NetworkMessenger.ExpiringConnection);

      v88 = sub_1DEF8D4D8();
      v89 = sub_1DEF8DCB8();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        aBlock = v91;
        *v90 = 136446466;
        sub_1DEE15068(v81, v128, type metadata accessor for NetworkMessenger.ExpiringConnection);
        v92 = sub_1DEF8D988();
        v93 = v81;
        v95 = v94;
        sub_1DEE15388(v93, type metadata accessor for NetworkMessenger.ExpiringConnection);
        v96 = sub_1DEE12A5C(v92, v95, &aBlock);

        *(v90 + 4) = v96;
        *(v90 + 12) = 2082;
        *(v90 + 14) = sub_1DEE12A5C(v142, v57, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v88, v89, "Canceling existing connection %{public}s for DeviceID %{public}s", v90, 0x16u);
        swift_arrayDestroy();
        v97 = v91;
        v80 = v138;
        MEMORY[0x1E12CCD70](v97, -1, -1);
        MEMORY[0x1E12CCD70](v90, -1, -1);

LABEL_39:
        nw_connection_cancel(*v87);
        sub_1DEE15388(v87, type metadata accessor for NetworkMessenger.ExpiringConnection);
        goto LABEL_40;
      }
    }

    else
    {
      v98 = v131;
      sub_1DEF8D3E8();
      v99 = sub_1DEF8D398();
      v57 = v100;
      (*(v132 + 8))(v98, v133);
      swift_unknownObjectRetain();

      v101 = sub_1DEF8D4D8();
      v102 = sub_1DEF8DCB8();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        aBlock = v104;
        *v103 = 136446466;
        v143[0] = v56;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
        v105 = sub_1DEF8D988();
        v107 = sub_1DEE12A5C(v105, v106, &aBlock);

        *(v103 + 4) = v107;
        *(v103 + 12) = 2082;
        *(v103 + 14) = sub_1DEE12A5C(v99, v57, &aBlock);
        _os_log_impl(&dword_1DEE0F000, v101, v102, "Unable to get DeviceID from connection: %{public}s; Using uuidString %{public}s instead", v103, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v104, -1, -1);
        MEMORY[0x1E12CCD70](v103, -1, -1);
      }

      v109 = v138;
      v108 = v139;
      v110 = *(v139 + 20);
      swift_unknownObjectRetain();

      v111 = v137;
      sub_1DEF8D348();
      *v111 = v56;
      *(v111 + *(v108 + 24)) = 0;
      (*(v109 + 56))(v111, 0, 1, v108);
      v87 = v140;
      swift_beginAccess();
      sub_1DEE136B8(v111, v99, v57);
      swift_endAccess();
      v80 = *(v87 + 112);
      v112 = nw_connection_get_id();
      v113 = *(v80 + 16);
      v88 = swift_allocObject();
      v88[2].isa = v99;
      v88[3].isa = v57;
      v88[4].isa = v112;
      v88[5].isa = v80;
      v114 = swift_allocObject();
      *(v114 + 16) = sub_1DEE1413C;
      *(v114 + 24) = v88;
      v149 = sub_1DEE46D40;
      v150 = v114;
      aBlock = MEMORY[0x1E69E9820];
      v146 = 1107296256;
      v147 = sub_1DEE134F4;
      v148 = &block_descriptor_275;
      v115 = _Block_copy(&aBlock);
      v81 = v150;

      dispatch_sync(v113, v115);
      _Block_release(v115);
      LOBYTE(v115) = swift_isEscapingClosureAtFileLocation();

      if ((v115 & 1) == 0)
      {
        goto LABEL_41;
      }

      __break(1u);
    }

    sub_1DEE15388(v81, type metadata accessor for NetworkMessenger.ExpiringConnection);
    goto LABEL_39;
  }

  if (a3)
  {
    sub_1DEF13D38(v142, a3);
    v48 = v16[v4];
    goto LABEL_18;
  }

LABEL_47:
  __break(1u);
}

uint64_t sub_1DEF16638(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v49 = *MEMORY[0x1E69E9840];
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v3[3];
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  LOBYTE(v17) = sub_1DEF8D7B8();
  (*(v12 + 8))(v16, v11);
  if (v17)
  {
    if (*(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) == 1)
    {
      if (qword_1ECDE2E50 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  swift_once();
LABEL_4:
  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6010);

  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v22 = 136446210;
    *(v22 + 4) = sub_1DEE12A5C(a1, a2, &v40);
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Creating terminus connection to %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1E12CCD70](v23, -1, -1);
    MEMORY[0x1E12CCD70](v22, -1, -1);
  }

  sub_1DEF8D3E8();
  v40 = sub_1DEF8D3D8();
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v32 = v3[15];
  v33 = v3[16];
  sub_1DEF8D998();
  application_service = nw_endpoint_create_application_service();

  sub_1DEF154A0(application_service, a1, a2);
  v36 = v35;
  swift_unknownObjectRelease();
  (*(v7 + 8))(v10, v6);
  v37 = *MEMORY[0x1E69E9840];
  return v36;
}

uint64_t sub_1DEF16A10(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1DEF300A8;
  *(v5 + 24) = v4;
  v8[4] = sub_1DEE46D40;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DEE134F4;
  v8[3] = &block_descriptor_265;
  v6 = _Block_copy(v8);

  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF16BA0(NSObject *a1)
{
  v3 = v1;
  v5 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D788();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v3[3];
  *v14 = v15;
  (*(v10 + 104))(v14, *MEMORY[0x1E69E8020], v9, v12);
  v16 = v15;
  LOBYTE(v15) = sub_1DEF8D7B8();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v18(v14, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  v19 = swift_beginAccess();
  v20 = v3[7];
  MEMORY[0x1EEE9AC00](v19);
  *(&v48 - 2) = a1;

  v22 = sub_1DEF2F4F0(v21, sub_1DEF2F820, (&v48 - 4));
  v24 = v23;
  v17 = v25;
  v26 = ~v25;

  if (v26)
  {
    swift_beginAccess();
    sub_1DEF2F854(v22, v24, v17 & 1);
    sub_1DEF2CE0C(v8, v22, v24);
    swift_endAccess();

    sub_1DEF2F83C(v22, v24, v17);
    sub_1DEE15388(v8, type metadata accessor for NetworkMessenger.ExpiringConnection);
  }

  v49 = v24;
  v50 = v22;
  sub_1DEF23790();
  v27 = v3[14];
  id = nw_connection_get_id();
  v2 = *(v27 + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = id;
  v8 = swift_allocObject();
  *(v8 + 2) = sub_1DEF2F834;
  *(v8 + 3) = v29;
  v56 = sub_1DEE46D40;
  v57 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1DEE134F4;
  v55 = &block_descriptor_206;
  v30 = _Block_copy(&aBlock);

  dispatch_sync(v2, v30);
  _Block_release(v30);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_16;
  }

  swift_getObjectType();
  v32 = sub_1DEE12B28();
  if (v33)
  {
    v2 = v32;
    v8 = v33;
  }

  else if (*(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_connectionType) == 1)
  {
    v34 = *(v3 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_terminusRemoteDeviceIDLock);
    os_unfair_lock_lock((v34 + 32));
    v2 = *(v34 + 16);
    v8 = *(v34 + 24);

    os_unfair_lock_unlock((v34 + 32));
  }

  else
  {
    v2 = 0;
    v8 = 0;
  }

  if (qword_1ECDE2E50 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v35 = sub_1DEF8D508();
  __swift_project_value_buffer(v35, qword_1ECDF6010);

  swift_unknownObjectRetain();
  v36 = sub_1DEF8D4D8();
  v37 = sub_1DEF8DCB8();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v51 = v39;
    aBlock = a1;
    *v38 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v40 = sub_1DEF8D988();
    v42 = sub_1DEE12A5C(v40, v41, &v51);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    aBlock = v2;
    v53 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3ED0, &qword_1DEF92030);
    v43 = sub_1DEF8D988();
    v45 = sub_1DEE12A5C(v43, v44, &v51);

    *(v38 + 14) = v45;

    _os_log_impl(&dword_1DEE0F000, v36, v37, "Canceling connection %{public}s for deviceID: %{public}s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v39, -1, -1);
    MEMORY[0x1E12CCD70](v38, -1, -1);
  }

  else
  {
  }

  v46 = v49;
  nw_connection_cancel(a1);
  return sub_1DEF2F83C(v50, v46, v17);
}

uint64_t sub_1DEF1718C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DA0, &qword_1DEF95AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v21 - v10);
  swift_beginAccess();
  v12 = *(a1 + 56);
  if (*(v12 + 16) && (v13 = sub_1DEE13224(a2, a3), (v14 & 1) != 0))
  {
    v15 = v13;
    v16 = *(v12 + 56);
    v17 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    v18 = *(v17 - 8);
    sub_1DEE15068(v16 + *(v18 + 72) * v15, v11, type metadata accessor for NetworkMessenger.ExpiringConnection);
    (*(v18 + 56))(v11, 0, 1, v17);
  }

  else
  {
    v17 = type metadata accessor for NetworkMessenger.ExpiringConnection(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  type metadata accessor for NetworkMessenger.ExpiringConnection(0);
  if ((*(*(v17 - 8) + 48))(v11, 1, v17))
  {
    sub_1DEE171B4(v11, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    result = swift_endAccess();
    v20 = 0;
  }

  else
  {
    v20 = *v11;
    swift_unknownObjectRetain();
    sub_1DEE171B4(v11, &qword_1ECDE4DA0, &qword_1DEF95AA0);
    result = swift_endAccess();
  }

  *a4 = v20;
  return result;
}

uint64_t sub_1DEF173D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v52 = a7;
  v48 = a6;
  v53 = a4;
  v50 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v49 = &v43 - v13;
  v14 = type metadata accessor for Message();
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v47 = *a5;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v19 = sub_1DEF8D508();
  __swift_project_value_buffer(v19, qword_1ECDF6010);
  sub_1DEE15068(a1, v18, type metadata accessor for Message);
  v20 = sub_1DEF8D4D8();
  v21 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v44 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v54 = v24;
    *v23 = 136446210;
    v25 = Message.description.getter();
    v43 = v12;
    v26 = a1;
    v27 = v11;
    v29 = v28;
    sub_1DEE15388(v18, type metadata accessor for Message);
    v30 = sub_1DEE12A5C(v25, v29, &v54);
    v11 = v27;
    a1 = v26;
    v12 = v43;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_1DEE0F000, v20, v21, "Queuing message: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E12CCD70](v24, -1, -1);
    v31 = v23;
    a2 = v44;
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  else
  {

    sub_1DEE15388(v18, type metadata accessor for Message);
  }

  v32 = v51;
  v33 = *(v51 + 24);
  v43 = "nearbyCompanionSubscriber";
  v44 = v33;
  v34 = v46;
  sub_1DEE15068(a1, v46, type metadata accessor for Message);
  v35 = v49;
  sub_1DEE17214(a2, v49, &qword_1ECDE4890, &qword_1DEF90990);
  v36 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v37 = (v15 + *(v11 + 80) + v36) & ~*(v11 + 80);
  v38 = &v12[v37];
  v39 = swift_allocObject();
  v40 = v48;
  *(v39 + 16) = v32;
  *(v39 + 24) = v40;
  *(v39 + 32) = v52;
  sub_1DEE1C4F0(v34, v39 + v36, type metadata accessor for Message);
  sub_1DEE1BA88(v35, v39 + v37, &qword_1ECDE4890, &qword_1DEF90990);
  v38[v39] = v50 & 1;
  v41 = (v39 + (v38 & 0xFFFFFFFFFFFFFFF8));
  *(v41 + 1) = v53;
  v41[16] = v47;

  sub_1DEE2CB00(v40);
  swift_unknownObjectRetain();
  sub_1DEE2C448(0xD000000000000018, v43 | 0x8000000000000000, v44, sub_1DEF2FD98, v39, 0.0);
}

uint64_t sub_1DEF17844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, NSObject *a9, unsigned __int8 a10)
{
  v71 = a8;
  v69 = a2;
  v70 = a5;
  v72 = a4;
  v63 = a3;
  v68 = a1;
  v67 = a10;
  v65 = a9;
  v66 = sub_1DEF8D788();
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v62 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = type metadata accessor for Message();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  sub_1DEE15068(a6, &v59 - v23, type metadata accessor for Message);
  sub_1DEE17214(a7, v18, &qword_1ECDE4890, &qword_1DEF90990);
  v59 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DEE15068(v24, v59, type metadata accessor for Message);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEE17214(v18, v60, &qword_1ECDE4890, &qword_1DEF90990);
  v25 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v26 = (v21 + *(v61 + 80) + v25) & ~*(v61 + 80);
  v27 = swift_allocObject();
  v29 = v69;
  v28 = v70;
  v27[2] = v72;
  v27[3] = v28;
  v27[4] = v68;
  v27[5] = v29;
  v30 = v63;
  v27[6] = v63;
  v31 = v27 + v25;
  v32 = v30;
  sub_1DEE1C4F0(v24, v31, type metadata accessor for Message);
  sub_1DEE1BA88(v18, v27 + v26, &qword_1ECDE4890, &qword_1DEF90990);
  *(v27 + v26 + v15) = v71;
  v33 = v27 + ((v26 + v15) & 0xFFFFFFFFFFFFFFF8);
  v34 = v64;
  v35 = v65;
  *(v33 + 1) = v65;
  v33[16] = v67;
  v36 = *(v32 + 24);
  v37 = v62;
  *v62 = v36;
  v38 = v66;
  (*(v34 + 104))(v37, *MEMORY[0x1E69E8020], v66);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(v72);
  v39 = v36;
  LOBYTE(v36) = sub_1DEF8D7B8();
  result = (*(v34 + 8))(v37, v38);
  if (v36)
  {
    v41 = v32 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
    v42 = *(v32 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
    v43 = *(v32 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
    v44 = __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v42);
    v45 = *(v42 - 8);
    v46 = *(v45 + 64);
    v47 = MEMORY[0x1EEE9AC00](v44);
    v49 = &v59 - v48;
    (*(v45 + 16))(&v59 - v48, v47);
    LOBYTE(v43) = (*(v43 + 40))(v42, v43);
    (*(v45 + 8))(v49, v42);
    if (v43)
    {
      LOBYTE(v73[0]) = v67;
      v50 = swift_allocObject();
      v51 = v72;
      v52 = v70;
      v50[2] = v72;
      v50[3] = v52;
      v50[4] = v68;
      v50[5] = v69;

      sub_1DEE2CB00(v51);
      v54 = v59;
      v53 = v60;
      sub_1DEF1812C(v59, v60, v71 & 1, v35, v73, sub_1DEF2FFF0, v50);

      sub_1DEE171B4(v53, &qword_1ECDE4890, &qword_1DEF90990);
      return sub_1DEE15388(v54, type metadata accessor for Message);
    }

    else
    {
      sub_1DEE29594(v41, v73);
      v55 = v74;
      v56 = v75;
      __swift_project_boxed_opaque_existential_1(v73, v74);
      v57 = swift_allocObject();
      v57[2] = v32;
      v57[3] = sub_1DEF2FEC8;
      v57[4] = v27;
      v58 = *(v56 + 48);

      v58(sub_1DEF3074C, v57, v55, v56);

      sub_1DEE171B4(v60, &qword_1ECDE4890, &qword_1DEF90990);
      sub_1DEE15388(v59, type metadata accessor for Message);
      return __swift_destroy_boxed_opaque_existential_1(v73);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DEF17EB4(void *a1, void (*a2)(void *, uint64_t), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t), uint64_t a8, char a9, NSObject *a10, unsigned __int8 a11)
{
  if (a1)
  {
    v16 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v17 = sub_1DEF8D508();
    __swift_project_value_buffer(v17, qword_1ECDF6028);
    v18 = a1;
    v19 = sub_1DEF8D4D8();
    v20 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138543362;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1DEE0F000, v19, v20, "Cannot send message because prerequisites are not met: %{public}@", v21, 0xCu);
      sub_1DEE171B4(v22, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v22, -1, -1);
      MEMORY[0x1E12CCD70](v21, -1, -1);
    }

    if (a2)
    {
      v25 = a1;
      a2(a1, 1);
    }

    a4();
  }

  else
  {
    v29 = a11;
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = a3;
    v28[4] = a4;
    v28[5] = a5;
    sub_1DEE2CB00(a2);

    sub_1DEF1812C(a7, a8, a9 & 1, a10, &v29, sub_1DEF3080C, v28);
  }
}

uint64_t sub_1DEF1812C(void (*a1)(char *, uint64_t), uint64_t a2, int a3, NSObject *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v217 = a6;
  v218 = a7;
  v190 = a3;
  v206 = a2;
  v220 = a1;
  v194 = type metadata accessor for NetworkSyncHeader(0);
  v11 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v186 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DEF8D698();
  v212 = *(v13 - 8);
  v213 = v13;
  v14 = *(v212 + 8);
  MEMORY[0x1EEE9AC00](v13);
  v210 = &v186 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D6D8();
  v214 = *(v16 - 8);
  v17 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v211 = &v186 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v191 = *(v19 - 8);
  v20 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v196 = &v186 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v195 = &v186 - v23;
  v192 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v204 = &v186 - v26;
  v207 = sub_1DEF8D1E8();
  v205 = *(v207 - 8);
  v27 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v189 = (&v186 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v29);
  v200 = &v186 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v203 = &v186 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v36 = &v186 - v35;
  v37 = sub_1DEF8D3F8();
  v215 = *(v37 - 8);
  v38 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v199 = &v186 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v198 = &v186 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v208 = &v186 - v43;
  v202 = type metadata accessor for Message();
  v44 = *(*(v202 - 8) + 64);
  MEMORY[0x1EEE9AC00](v202);
  v46 = &v186 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1DEF8D788();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = (&v186 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = *a5;
  v53 = *(v8 + 24);
  *v52 = v53;
  (*(v48 + 104))(v52, *MEMORY[0x1E69E8020], v47, v50);
  v54 = v53;
  LOBYTE(v53) = sub_1DEF8D7B8();
  (*(v48 + 8))(v52, v47);
  if (v53)
  {
    v209 = v16;
    if (qword_1ECDE2E50 == -1)
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
  v201 = a4;
  v55 = sub_1DEF8D508();
  v56 = __swift_project_value_buffer(v55, qword_1ECDF6010);
  sub_1DEE15068(v220, v46, type metadata accessor for Message);
  v216 = v56;
  v57 = sub_1DEF8D4D8();
  v58 = sub_1DEF8DC88();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock = v60;
    *v59 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v61 = v37;
    v62 = sub_1DEF8E2E8();
    v63 = v8;
    v65 = v64;
    sub_1DEE15388(v46, type metadata accessor for Message);
    v66 = sub_1DEE12A5C(v62, v65, &aBlock);
    v8 = v63;

    *(v59 + 4) = v66;
    _os_log_impl(&dword_1DEE0F000, v57, v58, "sending message with ID %{public}s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1E12CCD70](v60, -1, -1);
    MEMORY[0x1E12CCD70](v59, -1, -1);
  }

  else
  {
    v61 = v37;

    sub_1DEE15388(v46, type metadata accessor for Message);
  }

  v219 = v8;
  v67 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
  v68 = *(v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
  v69 = __swift_project_boxed_opaque_existential_1((v8 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v67);
  v70 = *(v67 - 8);
  v71 = *(v70 + 64);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v186 - v73;
  (*(v70 + 16))(&v186 - v73, v72);
  v75 = (*(v68 + 24))(v67, v68);
  v77 = v76;
  (*(v70 + 8))(v74, v67);
  if (!v77)
  {
    v87 = sub_1DEF8D4D8();
    v88 = sub_1DEF8DC98();
    v89 = os_log_type_enabled(v87, v88);
    v90 = v209;
    if (v89)
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      _os_log_impl(&dword_1DEE0F000, v87, v88, "Cannot send messages before we have a local device ID", v91, 2u);
      MEMORY[0x1E12CCD70](v91, -1, -1);
    }

    v92 = *(v219 + 32);
    v93 = swift_allocObject();
    v94 = v218;
    *(v93 + 16) = v217;
    *(v93 + 24) = v94;
    v226 = sub_1DEF30750;
    v227 = v93;
    aBlock = MEMORY[0x1E69E9820];
    v223 = 1107296256;
    v224 = sub_1DEE3F0C0;
    v225 = &block_descriptor_54;
    v95 = _Block_copy(&aBlock);

    v96 = v211;
    sub_1DEF8D6B8();
    v221 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v97 = v210;
    v98 = v213;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v96, v97, v95);
    _Block_release(v95);
    (*(v212 + 1))(v97, v98);
    (*(v214 + 8))(v96, v90);
  }

  sub_1DEF8D388();
  v78 = v215;
  v79 = v61;
  if ((*(v215 + 48))(v36, 1, v61) == 1)
  {
    sub_1DEE171B4(v36, &unk_1ECDE3E80, &unk_1DEF90970);

    v80 = sub_1DEF8D4D8();
    v81 = sub_1DEF8DC98();

    v82 = os_log_type_enabled(v80, v81);
    v83 = v209;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      aBlock = v85;
      *v84 = 136446210;
      v86 = sub_1DEE12A5C(v75, v77, &aBlock);

      *(v84 + 4) = v86;
      _os_log_impl(&dword_1DEE0F000, v80, v81, "Cannot create UUID from sender device ID: %{public}s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v85);
      MEMORY[0x1E12CCD70](v85, -1, -1);
      MEMORY[0x1E12CCD70](v84, -1, -1);
    }

    else
    {
    }

    v106 = v217;
    v105 = v218;
    v107 = *(v219 + 32);
    v108 = swift_allocObject();
    *(v108 + 16) = v106;
    *(v108 + 24) = v105;
    v226 = sub_1DEF30750;
    v227 = v108;
    aBlock = MEMORY[0x1E69E9820];
    v223 = 1107296256;
    v224 = sub_1DEE3F0C0;
    v225 = &block_descriptor_60;
    v109 = _Block_copy(&aBlock);

    v110 = v211;
    sub_1DEF8D6B8();
    v221 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v111 = v210;
    v112 = v213;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v110, v111, v109);
    _Block_release(v109);
    (*(v212 + 1))(v111, v112);
    (*(v214 + 8))(v110, v83);
  }

  v187 = *(v78 + 32);
  v187(v208, v36, v61);
  v99 = v204;
  sub_1DEE17214(v206, v204, &qword_1ECDE4890, &qword_1DEF90990);
  v100 = v205;
  v101 = *(v205 + 48);
  v102 = v207;
  v103 = v101(v99, 1, v207);
  v188 = v79;
  if (v103 == 1)
  {
    sub_1DEE171B4(v99, &qword_1ECDE4890, &qword_1DEF90990);
    v104 = v219;
  }

  else
  {
    v113 = v101;
    v114 = v203;
    (*(v100 + 32))(v203, v99, v102);
    v115 = v100;
    v116 = [objc_opt_self() defaultManager];
    sub_1DEF8D1B8();
    v117 = sub_1DEF8D918();

    v118 = [v116 fileExistsAtPath_];

    if ((v118 & 1) == 0)
    {
      v124 = v200;
      (*(v115 + 16))(v200, v114, v102);
      v125 = sub_1DEF8D4D8();
      v126 = sub_1DEF8DCA8();
      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        aBlock = v128;
        *v127 = 136446210;
        v129 = sub_1DEF8D1B8();
        v130 = v102;
        v132 = v131;
        v220 = *(v115 + 8);
        v220(v124, v130);
        v133 = sub_1DEE12A5C(v129, v132, &aBlock);

        *(v127 + 4) = v133;
        _os_log_impl(&dword_1DEE0F000, v125, v126, "File at given url doesn't exist: %{public}s", v127, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v128);
        MEMORY[0x1E12CCD70](v128, -1, -1);
        MEMORY[0x1E12CCD70](v127, -1, -1);
      }

      else
      {

        v220 = *(v115 + 8);
        v220(v124, v102);
      }

      v135 = v217;
      v134 = v218;
      v136 = v209;
      v137 = *(v219 + 32);
      v138 = swift_allocObject();
      *(v138 + 16) = v135;
      *(v138 + 24) = v134;
      v226 = sub_1DEF2E9A0;
      v227 = v138;
      aBlock = MEMORY[0x1E69E9820];
      v223 = 1107296256;
      v224 = sub_1DEE3F0C0;
      v225 = &block_descriptor_75;
      v139 = _Block_copy(&aBlock);

      v140 = v211;
      sub_1DEF8D6B8();
      v221 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      v141 = v210;
      v142 = v213;
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v140, v141, v139);
      _Block_release(v139);
      (*(v212 + 1))(v141, v142);
      (*(v214 + 8))(v140, v136);
      v220(v203, v207);
      (*(v215 + 8))(v208, v188);
    }

    (*(v115 + 8))(v114, v102);
    v104 = v219;
    v101 = v113;
  }

  v225 = v202;
  v226 = sub_1DEE1B9F8(&unk_1ECDE48A0, type metadata accessor for Message);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v120 = v220;
  sub_1DEE15068(v220, boxed_opaque_existential_1, type metadata accessor for Message);
  type metadata accessor for PropertyListTypeEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = 1;
  v122 = sub_1DEE29274(&aBlock);
  v123 = sub_1DEE1187C(v122);
  v144 = v143;
  v214 = v123;
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  v145 = *(v215 + 16);
  v145(v198, v120, v79);
  result = v145(v199, v208, v79);
  v147 = v144 >> 62;
  if ((v144 >> 62) > 1)
  {
    if (v147 != 2)
    {
      goto LABEL_37;
    }

    v150 = *(v214 + 16);
    v149 = *(v214 + 24);
    v148 = v149 - v150;
    if (!__OFSUB__(v149, v150))
    {
      goto LABEL_34;
    }

    __break(1u);
  }

  else if (!v147)
  {
    LODWORD(v148) = BYTE6(v144);
    goto LABEL_38;
  }

  if (__OFSUB__(HIDWORD(v214), v214))
  {
    __break(1u);
    return result;
  }

  v148 = HIDWORD(v214) - v214;
LABEL_34:
  if ((v148 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v148))
    {
      goto LABEL_38;
    }

    __break(1u);
LABEL_37:
    LODWORD(v148) = 0;
LABEL_38:
    if (v101(v206, 1, v207) == 1)
    {
      v151 = 1;
    }

    else
    {
      v151 = 3;
    }

    LODWORD(v213) = v151;
    if (qword_1ECDE37F8 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_42:
  v211 = v144;
  v212 = v101;
  v152 = __swift_project_value_buffer(v79, qword_1ECDF60C0);
  v153 = v197;
  v145(v197, v152, v79);
  v154 = v194;
  *(v153 + *(v194 + 20)) = 72;
  v155 = v187;
  v187((v153 + v154[6]), v198, v79);
  v155(v153 + v154[7], v199, v79);
  *(v153 + v154[8]) = v148;
  *(v153 + v154[9]) = 0;
  *(v153 + v154[10]) = v213;
  *(v153 + v154[11]) = 0;
  v156 = v154[12];
  *(v153 + v156) = v193;
  v157 = sub_1DEEFB1A4();
  v159 = v158;
  v160 = v201;
  sub_1DEF1CB90(v157, v158, v201, 0, 0);
  swift_unknownObjectRetain();
  v161 = sub_1DEF8D4D8();
  v162 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v163 = os_log_type_enabled(v161, v162);
  v210 = v159;
  v209 = v157;
  v204 = v156;
  if (v163)
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v221 = v160;
    aBlock = v165;
    *v164 = 136446210;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v166 = sub_1DEF8D988();
    v168 = sub_1DEE12A5C(v166, v167, &aBlock);

    *(v164 + 4) = v168;
    _os_log_impl(&dword_1DEE0F000, v161, v162, "Sending encoded message to connected remote device %{public}s", v164, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v165);
    v104 = v219;
    MEMORY[0x1E12CCD70](v165, -1, -1);
    MEMORY[0x1E12CCD70](v164, -1, -1);
  }

  v169 = v192;
  v170 = v191;
  v171 = v206;
  v172 = v195;
  sub_1DEE17214(v206, v195, &qword_1ECDE4890, &qword_1DEF90990);
  v173 = (*(v170 + 80) + 16) & ~*(v170 + 80);
  v174 = (v169 + v173 + 7) & 0xFFFFFFFFFFFFFFF8;
  v175 = swift_allocObject();
  sub_1DEE1BA88(v172, v175 + v173, &qword_1ECDE4890, &qword_1DEF90990);
  *(v175 + v174) = v104;
  v176 = (v175 + ((v174 + 15) & 0xFFFFFFFFFFFFFFF8));
  v178 = v217;
  v177 = v218;
  *v176 = v217;
  v176[1] = v177;

  v179 = v214;
  v180 = v211;
  sub_1DEF1CB90(v214, v211, v201, sub_1DEF2E8D8, v175);

  v181 = v196;
  sub_1DEE17214(v171, v196, &qword_1ECDE4890, &qword_1DEF90990);
  v182 = v207;
  if (v212(v181, 1, v207) == 1)
  {
    sub_1DEE1BFA0(v209, v210);
    sub_1DEE1BFA0(v179, v180);
    sub_1DEE15388(v197, type metadata accessor for NetworkSyncHeader);
    (*(v215 + 8))(v208, v188);
    return sub_1DEE171B4(v181, &qword_1ECDE4890, &qword_1DEF90990);
  }

  else
  {
    v183 = v205;
    v184 = v189;
    (*(v205 + 32))(v189, v181, v182);
    v185 = v197;
    LOBYTE(aBlock) = v197[v204];
    sub_1DEF1D1FC(v184, v190 & 1, v220, v213, 1, &aBlock, v201, v178, v177);
    sub_1DEE1BFA0(v209, v210);
    sub_1DEE1BFA0(v179, v180);
    (*(v183 + 8))(v184, v182);
    sub_1DEE15388(v185, type metadata accessor for NetworkSyncHeader);
    return (*(v215 + 8))(v208, v188);
  }
}

uint64_t sub_1DEF19CE8(uint64_t a1, NSObject *a2, int a3, uint64_t a4, unsigned __int8 *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v58 = a8;
  v55 = a7;
  v59 = a4;
  v56 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v47 - v15;
  v16 = type metadata accessor for Message();
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v51 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v53 = *a5;
  v21 = *a6;
  v52 = a6[1];
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v22 = sub_1DEF8D508();
  __swift_project_value_buffer(v22, qword_1ECDF6010);
  sub_1DEE15068(a1, v20, type metadata accessor for Message);
  v23 = sub_1DEF8D4D8();
  v24 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = a2;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136446210;
    v28 = Message.description.getter();
    v48 = v14;
    v29 = a1;
    v30 = v13;
    v32 = v31;
    sub_1DEE15388(v20, type metadata accessor for Message);
    v33 = sub_1DEE12A5C(v28, v32, aBlock);
    v13 = v30;
    a1 = v29;
    v14 = v48;

    *(v25 + 4) = v33;
    _os_log_impl(&dword_1DEE0F000, v23, v24, "Queuing message with expected response: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v34 = v27;
    a2 = v49;
    MEMORY[0x1E12CCD70](v34, -1, -1);
    MEMORY[0x1E12CCD70](v25, -1, -1);
  }

  else
  {

    sub_1DEE15388(v20, type metadata accessor for Message);
  }

  v35 = v57;
  v49 = *(v57 + 24);
  v36 = v51;
  sub_1DEE15068(a1, v51, type metadata accessor for Message);
  v37 = v54;
  sub_1DEE17214(a2, v54, &qword_1ECDE4890, &qword_1DEF90990);
  v38 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v39 = (v17 + *(v13 + 80) + v38) & ~*(v13 + 80);
  v40 = swift_allocObject();
  v41 = v55;
  v40[2] = v35;
  v40[3] = v41;
  v40[4] = v58;
  sub_1DEE1C4F0(v36, v40 + v38, type metadata accessor for Message);
  sub_1DEE1BA88(v37, v40 + v39, &qword_1ECDE4890, &qword_1DEF90990);
  *(v40 + v39 + v14) = v56 & 1;
  v42 = v40 + ((v39 + v14) & 0xFFFFFFFFFFFFFFF8);
  *(v42 + 1) = v59;
  v42[16] = v53;
  *(v42 + 3) = v21;
  *(v42 + 4) = v52;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1DEF2B188;
  *(v43 + 24) = v40;
  aBlock[4] = sub_1DEE13B20;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE134F4;
  aBlock[3] = &block_descriptor_14;
  v44 = _Block_copy(aBlock);

  swift_unknownObjectRetain();

  dispatch_sync(v49, v44);
  _Block_release(v44);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1A22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, double a9, uint64_t a10)
{
  v103 = a8;
  v105 = a7;
  v106 = a2;
  LODWORD(v100) = a6;
  v107 = a3;
  v99 = a1;
  v104 = a10;
  v93 = sub_1DEF8D3F8();
  v89 = *(v93 - 8);
  v13 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v88 = v14;
  v92 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DEF8D788();
  v97 = *(v15 - 8);
  v98 = v15;
  v16 = v97[8];
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v96 = *(v19 - 8);
  v20 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v91 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  v27 = type metadata accessor for Message();
  v95 = *(v27 - 8);
  v28 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v90 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v85 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v85 - v33;
  v94 = a4;
  sub_1DEE15068(a4, &v85 - v33, type metadata accessor for Message);
  sub_1DEE17214(a5, v26, &qword_1ECDE4890, &qword_1DEF90990);
  v101 = v31;
  sub_1DEE15068(v34, v31, type metadata accessor for Message);
  v102 = v23;
  sub_1DEE17214(v26, v23, &qword_1ECDE4890, &qword_1DEF90990);
  v35 = *(v95 + 80);
  v36 = (v35 + 32) & ~v35;
  v37 = (v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = *(v96 + 80);
  v39 = (v38 + v37 + 8) & ~v38;
  v95 = v28;
  v96 = v20;
  v40 = v39 + v20;
  v86 = v35;
  v85 = v38;
  v41 = (v39 + v20) & 0xFFFFFFFFFFFFFFF8;
  v87 = v35 | v38 | 7;
  v42 = swift_allocObject();
  v43 = v107;
  *(v42 + 16) = v106;
  *(v42 + 24) = v43;
  v44 = v34;
  v45 = v99;
  sub_1DEE1C4F0(v44, v42 + v36, type metadata accessor for Message);
  *(v42 + v37) = v45;
  v46 = v26;
  v47 = v100;
  sub_1DEE1BA88(v46, v42 + v39, &qword_1ECDE4890, &qword_1DEF90990);
  *(v42 + v40) = v47;
  v48 = v42 + v41;
  *(v48 + 8) = v105;
  *(v48 + 16) = v103;
  *(v48 + 24) = a9;
  *(v48 + 32) = v104;
  v49 = *(v45 + 24);
  *v18 = v49;
  v51 = v97;
  v50 = v98;
  (v97[13])(v18, *MEMORY[0x1E69E8020], v98);
  swift_unknownObjectRetain();

  v52 = v49;
  LOBYTE(v36) = sub_1DEF8D7B8();
  result = (*(v51 + 8))(v18, v50);
  if (v36)
  {
    v54 = v45 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency;
    v55 = *(v45 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
    v56 = *(v45 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
    v57 = __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v55);
    v58 = *(v55 - 8);
    v59 = *(v58 + 64);
    v60 = MEMORY[0x1EEE9AC00](v57);
    v62 = &v85 - v61;
    (*(v58 + 16))(&v85 - v61, v60);
    LOBYTE(v56) = (*(v56 + 40))(v55, v56);
    (*(v58 + 8))(v62, v55);
    if (v56)
    {
      v63 = v86;
      v64 = v85;
      LODWORD(v98) = v47 & 1;
      v100 = "nearbyCompanionSubscriber";
      v65 = v101;
      sub_1DEE15068(v101, v90, type metadata accessor for Message);
      sub_1DEE17214(v102, v91, &qword_1ECDE4890, &qword_1DEF90990);
      v66 = v89;
      (*(v89 + 16))(v92, v65, v93);
      v67 = (v63 + 24) & ~v63;
      v68 = v45;
      v69 = (v95 + v64 + v67) & ~v64;
      v70 = v69 + v96;
      v97 = v52;
      v71 = (((v69 + v96) & 0xFFFFFFFFFFFFFFF8) + *(v66 + 80) + 17) & ~*(v66 + 80);
      v72 = (v88 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
      v73 = swift_allocObject();
      *(v73 + 16) = v68;
      sub_1DEE1C4F0(v90, v73 + v67, type metadata accessor for Message);
      v74 = v73 + v69;
      v45 = v68;
      sub_1DEE1BA88(v91, v74, &qword_1ECDE4890, &qword_1DEF90990);
      *(v73 + v70) = v98;
      v75 = v73 + (v70 & 0xFFFFFFFFFFFFFFF8);
      *(v75 + 8) = v105;
      *(v75 + 16) = v103;
      (*(v66 + 32))(v73 + v71, v92, v93);
      v76 = v73 + v72;
      *v76 = a9;
      *(v76 + 8) = v104;
      swift_unknownObjectRetain();

      sub_1DEE2C448(0xD000000000000018, v100 | 0x8000000000000000, v97, sub_1DEF2BBC4, v73, 0.0);

      sub_1DEE171B4(v102, &qword_1ECDE4890, &qword_1DEF90990);
      sub_1DEE15388(v101, type metadata accessor for Message);
    }

    else
    {
      sub_1DEE29594(v54, v109);
      v77 = v110;
      v78 = v111;
      __swift_project_boxed_opaque_existential_1(v109, v110);
      v79 = swift_allocObject();
      v79[2] = v45;
      v79[3] = sub_1DEF2B604;
      v79[4] = v42;
      v80 = *(v78 + 48);

      v80(sub_1DEF2B738, v79, v77, v78);

      sub_1DEE171B4(v102, &qword_1ECDE4890, &qword_1DEF90990);
      sub_1DEE15388(v101, type metadata accessor for Message);
      __swift_destroy_boxed_opaque_existential_1(v109);
    }

    v81 = swift_allocObject();
    v82 = v107;
    *(v81 + 16) = v106;
    *(v81 + 24) = v82;
    swift_beginAccess();

    v83 = *(v45 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *(v45 + 64);
    *(v45 + 64) = 0x8000000000000000;
    sub_1DEF3F79C(sub_1DEF2B744, v81, v94, isUniquelyReferenced_nonNull_native);
    *(v45 + 64) = v108;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1AB9C(void *a1, const char *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, unsigned __int8 a10, uint64_t a11)
{
  v52 = a8;
  v51 = a7;
  v49 = a6;
  v50 = a4;
  v57 = a5;
  v54 = a2;
  v55 = a3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  v13 = *(*(v53 - 8) + 64);
  MEMORY[0x1EEE9AC00](v53);
  v15 = (&v46 - v14);
  v56 = sub_1DEF8D3F8();
  v16 = *(v56 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990);
  v48 = *(v18 - 8);
  v19 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v46 - v20;
  v22 = type metadata accessor for Message();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = a1;
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v27 = sub_1DEF8D508();
    __swift_project_value_buffer(v27, qword_1ECDF6028);
    v28 = a1;
    v29 = sub_1DEF8D4D8();
    v30 = sub_1DEF8DCB8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138543362;
      v33 = a1;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1DEE0F000, v29, v30, "Cannot send message because prerequisites are not met: %{public}@", v31, 0xCu);
      sub_1DEE171B4(v32, &unk_1ECDE4880, &qword_1DEF93420);
      MEMORY[0x1E12CCD70](v32, -1, -1);
      MEMORY[0x1E12CCD70](v31, -1, -1);
    }

    *v15 = a1;
    swift_storeEnumTagMultiPayload();
    v35 = a1;
    (v54)(v15);

    return sub_1DEE171B4(v15, &qword_1ECDE4D48, &qword_1DEF95A70);
  }

  else
  {
    v47 = a10;
    v53 = a11;
    v54 = "nearbyCompanionSubscriber";
    v55 = *(v57 + 24);
    v37 = v50;
    sub_1DEE15068(v50, &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
    sub_1DEE17214(v49, v21, &qword_1ECDE4890, &qword_1DEF90990);
    v38 = *(v16 + 16);
    v46 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    v38(v46, v37, v56);
    v39 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v40 = (v24 + *(v48 + 80) + v39) & ~*(v48 + 80);
    v41 = v40 + v19;
    v42 = (*(v16 + 80) + (v41 & 0xFFFFFFFFFFFFFFF8) + 17) & ~*(v16 + 80);
    v50 = (v17 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    *(v43 + 16) = v57;
    sub_1DEE1C4F0(v25, v43 + v39, type metadata accessor for Message);
    sub_1DEE1BA88(v21, v43 + v40, &qword_1ECDE4890, &qword_1DEF90990);
    *(v43 + v41) = v51 & 1;
    v44 = v43 + (v41 & 0xFFFFFFFFFFFFFFF8);
    *(v44 + 8) = v52;
    *(v44 + 16) = v47;
    (*(v16 + 32))(v43 + v42, v46, v56);
    v45 = v43 + v50;
    *v45 = a9;
    *(v45 + 8) = v53;

    swift_unknownObjectRetain();
    sub_1DEE2C448(0xD000000000000018, v54 | 0x8000000000000000, v55, sub_1DEF30808, v43, 0.0);
  }
}

uint64_t sub_1DEF1B108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, int a6, NSObject *a7, char a8, double a9, uint64_t a10)
{
  v70 = a7;
  LODWORD(v69) = a6;
  v67 = a4;
  v68 = a5;
  v72 = a3;
  v73 = a1;
  v74 = a2;
  v12 = sub_1DEF8D698();
  v65 = *(v12 - 8);
  v66 = v12;
  v13 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DEF8D6D8();
  v62 = *(v64 - 8);
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1DEF8D688();
  v56 = *(v57 - 8);
  v17 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v53 = (&v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_1DEF8D758();
  v60 = *(v71 - 8);
  v19 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v59 = &v51 - v23;
  v24 = sub_1DEF8D3F8();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = a8;
  v29 = *(v25 + 16);
  v58 = a10;
  v52 = v29;
  (v29)(v28, a10, v24, v27);
  v30 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v72;
  v32 = *(v25 + 32);
  v54 = v30;
  v51 = v32;
  v32(v31 + v30, v28, v24);
  v55 = (v26 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v31 + v55);
  v34 = v74;
  *v33 = v73;
  v33[1] = v34;

  sub_1DEF1812C(v67, v68, v69, v70, aBlock, sub_1DEF2E630, v31);

  v35 = v21;
  result = sub_1DEF8D738();
  v37 = (a9 + 1.0) * 1000.0;
  if (COERCE__INT64(fabs(v37)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v37 < 9.22337204e18)
  {
    v38 = v53;
    *v53 = v37;
    v39 = v56;
    v40 = v57;
    (*(v56 + 104))(v38, *MEMORY[0x1E69E7F38], v57);
    v41 = v59;
    sub_1DEF8D748();
    (*(v39 + 8))(v38, v40);
    v42 = v72;
    v70 = *(v60 + 8);
    (v70)(v35, v71);
    v69 = *(v42 + 24);
    v52(v28, v58, v24);
    v43 = v55;
    v44 = swift_allocObject();
    *(v44 + 16) = v42;
    v51(v44 + v54, v28, v24);
    v45 = (v44 + v43);
    v46 = v74;
    *v45 = v73;
    v45[1] = v46;
    aBlock[4] = sub_1DEF2E7C0;
    aBlock[5] = v44;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_39_1;
    v47 = _Block_copy(aBlock);

    v48 = v61;
    sub_1DEF8D6B8();
    v75 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v49 = v63;
    v50 = v66;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB490](v41, v48, v49, v47);
    _Block_release(v47);
    (*(v65 + 8))(v49, v50);
    (*(v62 + 8))(v48, v64);
    (v70)(v41, v71);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DEF1B838(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  v12 = sub_1DEF8D698();
  v34 = *(v12 - 8);
  v13 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D6D8();
  v17 = *(*(v16 - 8) + 64);
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v31 = v19;
    v32 = a6;
    v33 = a5;
    v23 = *(a3 + 24);
    MEMORY[0x1EEE9AC00](v18);
    v30[-2] = a3;
    v30[-1] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DF0, &qword_1DEF95AD8);
    sub_1DEF8DD18();
    v24 = aBlock;
    if (aBlock)
    {
      v25 = v37;
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v30[1] = *(a3 + 32);
      v27 = swift_allocObject();
      v27[2] = sub_1DEF30814;
      v27[3] = v26;
      v27[4] = a1;
      v40 = sub_1DEF2F8E0;
      v41 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v37 = 1107296256;
      v38 = sub_1DEE3F0C0;
      v39 = &block_descriptor_216;
      v28 = _Block_copy(&aBlock);
      swift_retain_n();
      sub_1DEE39150(a1, 1);
      sub_1DEF8D6B8();
      v35 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v22, v15, v28);
      _Block_release(v28);

      (*(v34 + 8))(v15, v12);
      (*(v31 + 8))(v22, v16);
    }

    a5 = v33;
  }

  return a5(v20);
}

uint64_t sub_1DEF1BC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 64);
  if (*(v11 + 16) && (v12 = sub_1DEEAF350(a2), (v13 & 1) != 0))
  {
    v14 = v12;
    v15 = *(v11 + 56);
    v16 = swift_allocObject();
    *(v16 + 16) = *(v15 + 16 * v14);

    v17 = 0;
    v20 = sub_1DEF30814;
  }

  else
  {
    v20 = 0;
    v16 = 0;
    v17 = 1;
  }

  swift_endAccess();
  (*(v7 + 16))(v10, a2, v6);
  swift_beginAccess();
  sub_1DEF33BDC(0, 0, v10);
  swift_endAccess();
  v18 = 0;
  result = 0;
  if ((v17 & 1) == 0)
  {
    result = swift_allocObject();
    *(result + 16) = v20;
    *(result + 24) = v16;
    v18 = sub_1DEF30730;
  }

  *a3 = v18;
  a3[1] = result;
  return result;
}

uint64_t sub_1DEF1BDE4(void (*a1)(char *), uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  *(&v11 - v7) = a3;
  swift_storeEnumTagMultiPayload();
  v9 = a3;
  a1(v8);
  return sub_1DEE171B4(v8, &qword_1ECDE4D48, &qword_1DEF95A70);
}

uint64_t sub_1DEF1BEB0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v60 = a3;
  v7 = sub_1DEF8D698();
  v59 = *(v7 - 8);
  v8 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1DEF8D6D8();
  v56 = *(v58 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DEF8D3F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  swift_beginAccess();
  v20 = *(a1 + 64);
  if (!*(v20 + 16))
  {
    return swift_endAccess();
  }

  v21 = sub_1DEEAF350(a2);
  if ((v22 & 1) == 0)
  {
    return swift_endAccess();
  }

  v23 = v21;
  v53 = a4;
  v54 = a2;
  v52 = v7;
  v24 = *(v20 + 56);
  v25 = swift_allocObject();
  v50 = *(v24 + 16 * v23);
  v51 = v25;
  *(v25 + 16) = v50;
  swift_endAccess();
  v26 = qword_1ECDE2E50;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_1DEF8D508();
  __swift_project_value_buffer(v27, qword_1ECDF6010);
  v28 = *(v13 + 16);
  v28(v19, v54, v12);
  v29 = sub_1DEF8D4D8();
  v30 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v48 = v31;
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v31 = 136446210;
    sub_1DEE1B9F8(&unk_1ECDE3620, MEMORY[0x1E69695A8]);
    v32 = sub_1DEF8E2E8();
    *&v50 = v28;
    v34 = v33;
    (*(v13 + 8))(v19, v12);
    v35 = sub_1DEE12A5C(v32, v34, aBlock);
    v28 = v50;

    v36 = v48;
    *(v48 + 1) = v35;
    v37 = v36;
    _os_log_impl(&dword_1DEE0F000, v29, v30, "Backstop fired; timeout when waiting for response for message: %{public}s", v36, 0xCu);
    v38 = v49;
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1E12CCD70](v38, -1, -1);
    MEMORY[0x1E12CCD70](v37, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v19, v12);
  }

  v28(v16, v54, v12);
  swift_beginAccess();
  sub_1DEF33BDC(0, 0, v16);
  swift_endAccess();
  v40 = *(a1 + 32);
  v41 = swift_allocObject();
  v42 = v51;
  *(v41 + 16) = sub_1DEF2E854;
  *(v41 + 24) = v42;
  aBlock[4] = sub_1DEF2E87C;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_48;
  v43 = _Block_copy(aBlock);

  v44 = v55;
  sub_1DEF8D6B8();
  v61 = MEMORY[0x1E69E7CC0];
  sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v45 = v57;
  v46 = v52;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v44, v45, v43);
  _Block_release(v43);
  (*(v59 + 8))(v45, v46);
  (*(v56 + 8))(v44, v58);

  v60(v47);
}

uint64_t sub_1DEF1C4F0(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D48, &qword_1DEF95A70);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v9 - v4);
  sub_1DEF2E884();
  v6 = swift_allocError();
  *v7 = 2;
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  a1(v5);
  return sub_1DEE171B4(v5, &qword_1ECDE4D48, &qword_1DEF95A70);
}

uint64_t sub_1DEF1C5D8()
{
  v2 = *(*v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4E88, &qword_1DEF95B50);
  sub_1DEE1B548(&qword_1ECDE2D40, &unk_1ECDE4E88, &qword_1DEF95B50);
  return sub_1DEF8D5B8();
}

uint64_t sub_1DEF1C668()
{
  v1 = *(*v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  sub_1DEF8DD18();
  return v3;
}

uint64_t sub_1DEF1C6DC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DEF30420;
  *(v8 + 24) = v7;
  v11[4] = sub_1DEE46D40;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DEE134F4;
  v11[3] = &block_descriptor_390;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1C854()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DEF30338;
  *(v3 + 24) = v1;
  v6[4] = sub_1DEE46D40;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1DEE134F4;
  v6[3] = &block_descriptor_345;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DEF1C98C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(*v2 + 24);
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
  result = sub_1DEF8DD18();
  *a2 = v7;
  return result;
}

uint64_t sub_1DEF1CA10@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
  result = sub_1DEF8DD18();
  *a1 = v5;
  return result;
}

uint64_t sub_1DEF1CABC@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DF8, &qword_1DEF95AE0);
  result = sub_1DEF8DD18();
  *a1 = v5;
  return result;
}

uint64_t sub_1DEF1CB90(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a1;
  v11 = sub_1DEF8D788();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + 24);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1DEF8D7B8();
  (*(v12 + 8))(v16, v11);
  if (v19)
  {
    if (qword_1ECDE3800 == -1)
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
  v20 = off_1ECDE4C30;
  os_unfair_lock_lock(off_1ECDE4C30 + 6);
  v21 = *(v20 + 2);
  if (v21 == -1)
  {
    __break(1u);
  }

  else
  {
    v34 = a2;
    *(v20 + 2) = &v21->isa + 1;
    os_unfair_lock_unlock(v20 + 6);
    if (qword_1ECDE2E50 == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v22 = sub_1DEF8D508();
  __swift_project_value_buffer(v22, qword_1ECDF6010);
  swift_unknownObjectRetain();
  v23 = sub_1DEF8D4D8();
  v24 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v33 = a5;
    v26 = v25;
    v27 = swift_slowAlloc();
    v36 = a3;
    v37 = v27;
    *v26 = 134349314;
    *(v26 + 4) = v21;
    *(v26 + 12) = 2082;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v28 = sub_1DEF8D988();
    v30 = sub_1DEE12A5C(v28, v29, &v37);

    *(v26 + 14) = v30;
    _os_log_impl(&dword_1DEE0F000, v23, v24, "Sending data (sendID:%{public}llu) to: %{public}s", v26, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1E12CCD70](v27, -1, -1);
    v31 = v26;
    a5 = v33;
    MEMORY[0x1E12CCD70](v31, -1, -1);
  }

  sub_1DEE19808(a3);
  swift_unknownObjectRetain();

  sub_1DEE2CB00(a4);
  return sub_1DEF2C5F4(v35, v34, a3, v6, v21, a4, a5);
}

uint64_t sub_1DEF1CEBC(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DEF8D698();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DEF8D6D8();
  v16 = *(v27 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DEF8D1E8();
  result = (*(*(v20 - 8) + 48))(a3, 1, v20);
  if (result == 1)
  {
    v22 = *(a4 + 32);
    v23 = swift_allocObject();
    *(v23 + 16) = a5;
    *(v23 + 24) = a6;
    *(v23 + 32) = a1;
    v24 = a2 & 1;
    *(v23 + 40) = a2 & 1;
    aBlock[4] = sub_1DEF2ECAC;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DEE3F0C0;
    aBlock[3] = &block_descriptor_168;
    v25 = _Block_copy(aBlock);

    sub_1DEE39150(a1, v24);
    sub_1DEF8D6B8();
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v19, v15, v25);
    _Block_release(v25);
    (*(v28 + 8))(v15, v12);
    (*(v16 + 8))(v19, v27);
  }

  return result;
}

uint64_t sub_1DEF1D1FC(NSObject *a1, int a2, uint64_t a3, int a4, int a5, unsigned __int8 *a6, NSObject *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v353 = a8;
  v339 = a7;
  v329 = a5;
  v328 = a4;
  v325 = a3;
  v337 = a2;
  v338 = a1;
  v362 = *MEMORY[0x1E69E9840];
  v320 = type metadata accessor for NetworkSyncHeader(0);
  v12 = *(*(v320 - 8) + 64);
  MEMORY[0x1EEE9AC00](v320);
  v316 = v311 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v318 = v311 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v326 = v311 - v17;
  v18 = sub_1DEF8D698();
  v19 = *(v18 - 8);
  v348 = v18;
  v349 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v347 = v311 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v351 = sub_1DEF8D6D8();
  v22 = *(v351 - 1);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v351);
  v350 = v311 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v335 = sub_1DEF8D168();
  v334 = *(v335 - 1);
  isa = v334[8].isa;
  MEMORY[0x1EEE9AC00](v335);
  v333 = v311 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = sub_1DEF8D1E8();
  v341 = *(v340 - 8);
  v27 = *(v341 + 64);
  MEMORY[0x1EEE9AC00](v340);
  v332 = v311 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v330 = v311 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v331 = v311 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v323 = v311 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v322 = v311 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v314 = v311 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v315 = v311 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v311 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v342 = v311 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  v46 = *(*(v45 - 8) + 64);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v48 = v311 - v47;
  v49 = sub_1DEF8D3F8();
  v345 = *(v49 - 8);
  v50 = *(v345 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v321 = v311 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v324 = v311 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v319 = v311 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v336 = v311 - v57;
  v317 = v58;
  MEMORY[0x1EEE9AC00](v59);
  v343 = v311 - v60;
  v61 = sub_1DEF8D788();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = (v311 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  v327 = *a6;
  v67 = *(v10 + 24);
  *v66 = v67;
  (*(v62 + 104))(v66, *MEMORY[0x1E69E8020], v61, v64);
  v68 = v67;
  LOBYTE(v67) = sub_1DEF8D7B8();
  (*(v62 + 8))(v66, v61);
  if ((v67 & 1) == 0)
  {
    __break(1u);
    goto LABEL_86;
  }

  v346 = v22;
  v344 = v49;
  v352 = a9;
  v354 = v10;
  v69 = *(v10 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 24);
  v70 = *(v10 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency + 32);
  v71 = __swift_project_boxed_opaque_existential_1((v10 + OBJC_IVAR____TtC16ReplicatorEngine16NetworkMessenger_idsDependency), v69);
  v72 = *(v69 - 8);
  v73 = *(v72 + 64);
  v74 = MEMORY[0x1EEE9AC00](v71);
  v76 = v311 - v75;
  (*(v72 + 16))(v311 - v75, v74);
  v77 = (*(v70 + 24))(v69, v70);
  v79 = v78;
  (*(v72 + 8))(v76, v69);
  if (!v79)
  {
    if (qword_1ECDE2E50 == -1)
    {
LABEL_9:
      v90 = sub_1DEF8D508();
      __swift_project_value_buffer(v90, qword_1ECDF6010);
      v91 = sub_1DEF8D4D8();
      v92 = sub_1DEF8DC98();
      v93 = os_log_type_enabled(v91, v92);
      v94 = v352;
      v95 = v354;
      if (v93)
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_1DEE0F000, v91, v92, "Cannot send messages before we have a local device ID", v96, 2u);
        MEMORY[0x1E12CCD70](v96, -1, -1);
      }

      v97 = *(v95 + 32);
      v98 = swift_allocObject();
      *(v98 + 16) = v353;
      *(v98 + 24) = v94;
      v360 = sub_1DEF30750;
      v361 = v98;
      aBlock = MEMORY[0x1E69E9820];
      v357 = 1107296256;
      v358 = sub_1DEE3F0C0;
      v359 = &block_descriptor_81;
      v99 = _Block_copy(&aBlock);
      goto LABEL_17;
    }

LABEL_86:
    swift_once();
    goto LABEL_9;
  }

  sub_1DEF8D388();
  v81 = v344;
  v80 = v345;
  if ((*(v345 + 48))(v48, 1, v344) == 1)
  {
    sub_1DEE171B4(v48, &unk_1ECDE3E80, &unk_1DEF90970);
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v82 = sub_1DEF8D508();
    __swift_project_value_buffer(v82, qword_1ECDF6010);

    v83 = sub_1DEF8D4D8();
    v84 = sub_1DEF8DC98();

    v85 = os_log_type_enabled(v83, v84);
    v86 = v354;
    if (v85)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      aBlock = v88;
      *v87 = 136446210;
      v89 = sub_1DEE12A5C(v77, v79, &aBlock);

      *(v87 + 4) = v89;
      _os_log_impl(&dword_1DEE0F000, v83, v84, "Cannot create UUID from sender device ID: %{public}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x1E12CCD70](v88, -1, -1);
      MEMORY[0x1E12CCD70](v87, -1, -1);
    }

    else
    {
    }

    v116 = v352;
    v117 = *(v86 + 32);
    v118 = swift_allocObject();
    *(v118 + 16) = v353;
    *(v118 + 24) = v116;
    v360 = sub_1DEF2E9C0;
    v361 = v118;
    aBlock = MEMORY[0x1E69E9820];
    v357 = 1107296256;
    v358 = sub_1DEE3F0C0;
    v359 = &block_descriptor_87_0;
    v99 = _Block_copy(&aBlock);
LABEL_17:

    v119 = v350;
    sub_1DEF8D6B8();
    v355 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v121 = v347;
    v120 = v348;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v119, v121, v99);
    _Block_release(v99);
    (*(v349 + 8))(v121, v120);
    (*(v346 + 8))(v119, v351);
    goto LABEL_52;
  }

  v100 = *(v80 + 32);
  v100(v343, v48, v81);
  sub_1DEF8D628();
  v101 = v339;
  v102 = swift_unknownObjectRetain();
  v103 = MEMORY[0x1E12CADE0](v102);
  if (!v103)
  {
    v122 = v354;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v123 = sub_1DEF8D508();
    __swift_project_value_buffer(v123, qword_1ECDF6010);
    swift_unknownObjectRetain();
    v124 = sub_1DEF8D4D8();
    v125 = sub_1DEF8DC98();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v355 = v101;
      aBlock = v127;
      *v126 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
      v128 = sub_1DEF8D988();
      v130 = sub_1DEE12A5C(v128, v129, &aBlock);

      *(v126 + 4) = v130;
      _os_log_impl(&dword_1DEE0F000, v124, v125, "Cannot create NWConnection from nw_connection_t for %{public}s", v126, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x1E12CCD70](v127, -1, -1);
      MEMORY[0x1E12CCD70](v126, -1, -1);
    }

    v131 = v352;
    v132 = *(v122 + 32);
    v133 = swift_allocObject();
    *(v133 + 16) = v353;
    *(v133 + 24) = v131;
    v360 = sub_1DEF30750;
    v361 = v133;
    aBlock = MEMORY[0x1E69E9820];
    v357 = 1107296256;
    v358 = sub_1DEE3F0C0;
    v359 = &block_descriptor_93;
    v134 = _Block_copy(&aBlock);

    v135 = v350;
    sub_1DEF8D6B8();
    v355 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v137 = v347;
    v136 = v348;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v135, v137, v134);
    _Block_release(v134);
    (*(v349 + 8))(v137, v136);
    (*(v346 + 8))(v135, v351);
    goto LABEL_51;
  }

  v313 = v103;
  v312 = v100;
  if (v337)
  {
    v311[1] = v80 + 32;
    v104 = v336;
    sub_1DEF8D3E8();
    v105 = sub_1DEF8D398();
    v107 = v106;
    v108 = *(v345 + 8);
    v311[3] = v345 + 8;
    v311[2] = v108;
    v108(v104, v81);
    aBlock = v105;
    v357 = v107;
    v109 = v334;
    v110 = v333;
    v111 = v335;
    (v334[13].isa)(v333, *MEMORY[0x1E6968F70], v335);
    sub_1DEF2EB78();
    v112 = v342;
    sub_1DEF8D1D8();
    (v109[1].isa)(v110, v111);

    sub_1DEEE1914();
    v113 = *(v341 + 16);
    v114 = v340;
    v113(v42, v338, v340);
    v115 = sub_1DEF291F4(v42, &selRef_fileHandleForReadingFromURL_error_);
    v335 = v113;
    sub_1DEEA37CC(MEMORY[0x1E69E7CC0]);
    sub_1DEEE1C14(v112);

    v215 = v341;
  }

  else
  {
    v215 = v341;
    v114 = v340;
    v335 = *(v341 + 16);
    (v335)(v342, v338, v340);
  }

  v138 = objc_opt_self();
  v139 = [v138 defaultManager];
  sub_1DEF8D1B8();
  v140 = sub_1DEF8D918();

  aBlock = 0;
  v141 = [v139 attributesOfItemAtPath:v140 error:&aBlock];

  v142 = aBlock;
  if (!v141)
  {
    v188 = aBlock;
    v189 = sub_1DEF8D148();

    swift_willThrow();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v190 = sub_1DEF8D508();
    __swift_project_value_buffer(v190, qword_1ECDF6010);
    v191 = v330;
    (v335)(v330, v342, v114);
    v192 = sub_1DEF8D4D8();
    v193 = sub_1DEF8DC98();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      aBlock = v195;
      *v194 = 136446210;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
      v196 = sub_1DEF8E2E8();
      v198 = v197;
      v341 = *(v215 + 8);
      (v341)(v191, v114);
      v199 = sub_1DEE12A5C(v196, v198, &aBlock);

      *(v194 + 4) = v199;
      _os_log_impl(&dword_1DEE0F000, v192, v193, "Cannot get attributes of file at resolved URL: %{public}s", v194, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v195);
      MEMORY[0x1E12CCD70](v195, -1, -1);
      MEMORY[0x1E12CCD70](v194, -1, -1);
    }

    else
    {

      v341 = *(v215 + 8);
      (v341)(v191, v114);
    }

    v206 = v352;
    v205 = v353;
    v207 = *(v354 + 32);
    v208 = swift_allocObject();
    *(v208 + 16) = v205;
    *(v208 + 24) = v206;
    v360 = sub_1DEF30750;
    v361 = v208;
    aBlock = MEMORY[0x1E69E9820];
    v357 = 1107296256;
    v204 = &block_descriptor_99;
    goto LABEL_50;
  }

  type metadata accessor for FileAttributeKey(0);
  sub_1DEE1B9F8(&qword_1ECDE2BF0, type metadata accessor for FileAttributeKey);
  v143 = sub_1DEF8D848();
  v144 = v142;

  if (!*(v143 + 16) || (v145 = *MEMORY[0x1E696A3B8], v146 = sub_1DEEAF718(*MEMORY[0x1E696A3B8]), (v147 & 1) == 0))
  {

    goto LABEL_38;
  }

  sub_1DEE12F7C(*(v143 + 56) + 32 * v146, &aBlock);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v114 = v340;
    v175 = v342;
    v176 = v341;
    v177 = v335;
    v178 = v331;
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v179 = sub_1DEF8D508();
    __swift_project_value_buffer(v179, qword_1ECDF6010);
    v177(v178, v175, v114);
    v180 = sub_1DEF8D4D8();
    v181 = sub_1DEF8DC98();
    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      aBlock = v183;
      *v182 = 136446210;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
      v184 = sub_1DEF8E2E8();
      v186 = v185;
      v341 = *(v176 + 8);
      (v341)(v178, v114);
      v187 = sub_1DEE12A5C(v184, v186, &aBlock);

      *(v182 + 4) = v187;
      _os_log_impl(&dword_1DEE0F000, v180, v181, "Cannot retrieve size of file at resolved URL: %{public}s", v182, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v183);
      MEMORY[0x1E12CCD70](v183, -1, -1);
      MEMORY[0x1E12CCD70](v182, -1, -1);
    }

    else
    {

      v341 = *(v176 + 8);
      (v341)(v178, v114);
    }

    v201 = v352;
    v200 = v353;
    v202 = *(v354 + 32);
    v203 = swift_allocObject();
    *(v203 + 16) = v200;
    *(v203 + 24) = v201;
    v360 = sub_1DEF30750;
    v361 = v203;
    aBlock = MEMORY[0x1E69E9820];
    v357 = 1107296256;
    v204 = &block_descriptor_105;
    goto LABEL_50;
  }

  v334 = v355;
  if (v337)
  {
    v148 = [v138 defaultManager];
    sub_1DEF8D1B8();
    v149 = sub_1DEF8D918();

    aBlock = 0;
    v150 = v148;
    v151 = [v148 attributesOfItemAtPath:v149 error:&aBlock];

    v152 = aBlock;
    if (v151)
    {
      v153 = sub_1DEF8D848();
      v154 = v152;

      if (*(v153 + 16))
      {
        v155 = sub_1DEEAF718(v145);
        v156 = v340;
        v157 = v341;
        v158 = v335;
        v159 = 0x1ECDE2000uLL;
        if (v160)
        {
          sub_1DEE12F7C(*(v153 + 56) + 32 * v155, &aBlock);

          if (swift_dynamicCast())
          {
            v161 = v355;
            if (qword_1ECDE2E50 != -1)
            {
              swift_once();
            }

            v162 = sub_1DEF8D508();
            __swift_project_value_buffer(v162, qword_1ECDF6010);
            v163 = sub_1DEF8D4D8();
            v164 = sub_1DEF8DCB8();
            if (os_log_type_enabled(v163, v164))
            {
              v165 = swift_slowAlloc();
              v166 = swift_slowAlloc();
              v355 = v161;
              aBlock = v166;
              *v165 = 136446466;
              v167 = sub_1DEF8E2E8();
              v169 = sub_1DEE12A5C(v167, v168, &aBlock);

              *(v165 + 4) = v169;
              *(v165 + 12) = 2050;
              *(v165 + 14) = v334;
              v170 = "Uncompressed: %{public}s; compressed: %{public}ld";
              v171 = v164;
              v172 = v163;
              v173 = v165;
              v174 = 22;
LABEL_57:
              _os_log_impl(&dword_1DEE0F000, v172, v171, v170, v173, v174);
              __swift_destroy_boxed_opaque_existential_1(v166);
              MEMORY[0x1E12CCD70](v166, -1, -1);
              MEMORY[0x1E12CCD70](v165, -1, -1);
              goto LABEL_58;
            }

            goto LABEL_58;
          }
        }

        else
        {
        }
      }

      else
      {

        v156 = v340;
        v157 = v341;
        v158 = v335;
        v159 = 0x1ECDE2000;
      }

      v287 = v315;
      if (*(v159 + 3664) != -1)
      {
        swift_once();
      }

      v288 = sub_1DEF8D508();
      __swift_project_value_buffer(v288, qword_1ECDF6010);
      v158(v287, v338, v156);
      v289 = sub_1DEF8D4D8();
      v290 = sub_1DEF8DC98();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v292 = swift_slowAlloc();
        aBlock = v292;
        *v291 = 136446210;
        sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
        v293 = sub_1DEF8E2E8();
        v294 = v156;
        v296 = v295;
        v297 = *(v157 + 8);
        v297(v287, v294);
        v298 = sub_1DEE12A5C(v293, v296, &aBlock);

        *(v291 + 4) = v298;
        _os_log_impl(&dword_1DEE0F000, v289, v290, "Cannot retrieve size of file at URL: %{public}s", v291, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v292);
        MEMORY[0x1E12CCD70](v292, -1, -1);
        MEMORY[0x1E12CCD70](v291, -1, -1);
      }

      else
      {

        v297 = *(v157 + 8);
        v297(v287, v156);
      }

      v300 = v352;
      v299 = v353;
      v301 = *(v354 + 32);
      v302 = swift_allocObject();
      *(v302 + 16) = v299;
      *(v302 + 24) = v300;
      v360 = sub_1DEF30750;
      v361 = v302;
      aBlock = MEMORY[0x1E69E9820];
      v357 = 1107296256;
      v358 = sub_1DEE3F0C0;
      v359 = &block_descriptor_123;
      v303 = _Block_copy(&aBlock);

      v304 = v350;
      sub_1DEF8D6B8();
      v355 = MEMORY[0x1E69E7CC0];
      sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
      sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
      v306 = v347;
      v305 = v348;
      sub_1DEF8DE08();
      MEMORY[0x1E12CB4D0](0, v304, v306, v303);
      _Block_release(v303);

      (*(v349 + 8))(v306, v305);
      (*(v346 + 8))(v304, v351);
      v297(v342, v340);
LABEL_51:
      (*(v345 + 8))(v343, v344);
      goto LABEL_52;
    }

    v274 = aBlock;
    v275 = sub_1DEF8D148();

    swift_willThrow();
    if (qword_1ECDE2E50 != -1)
    {
      swift_once();
    }

    v276 = sub_1DEF8D508();
    __swift_project_value_buffer(v276, qword_1ECDF6010);
    v277 = v341;
    v278 = v314;
    v114 = v340;
    (v335)(v314, v338, v340);
    v279 = sub_1DEF8D4D8();
    v280 = sub_1DEF8DC98();
    if (os_log_type_enabled(v279, v280))
    {
      v281 = swift_slowAlloc();
      v282 = swift_slowAlloc();
      aBlock = v282;
      *v281 = 136446210;
      sub_1DEE1B9F8(&unk_1ECDE4D68, MEMORY[0x1E6968FB0]);
      v283 = sub_1DEF8E2E8();
      v285 = v284;
      v341 = *(v277 + 8);
      (v341)(v278, v114);
      v286 = sub_1DEE12A5C(v283, v285, &aBlock);

      *(v281 + 4) = v286;
      _os_log_impl(&dword_1DEE0F000, v279, v280, "Cannot get attributes of file at URL: %{public}s", v281, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v282);
      MEMORY[0x1E12CCD70](v282, -1, -1);
      MEMORY[0x1E12CCD70](v281, -1, -1);
    }

    else
    {

      v341 = *(v277 + 8);
      (v341)(v278, v114);
    }

    v308 = v352;
    v307 = v353;
    v309 = *(v354 + 32);
    v310 = swift_allocObject();
    *(v310 + 16) = v307;
    *(v310 + 24) = v308;
    v360 = sub_1DEF30750;
    v361 = v310;
    aBlock = MEMORY[0x1E69E9820];
    v357 = 1107296256;
    v204 = &block_descriptor_117;
LABEL_50:
    v358 = sub_1DEE3F0C0;
    v359 = v204;
    v209 = _Block_copy(&aBlock);

    v210 = v350;
    sub_1DEF8D6B8();
    v355 = MEMORY[0x1E69E7CC0];
    sub_1DEE1B9F8(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
    sub_1DEE1B548(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
    v212 = v347;
    v211 = v348;
    sub_1DEF8DE08();
    MEMORY[0x1E12CB4D0](0, v210, v212, v209);
    _Block_release(v209);

    (*(v349 + 8))(v212, v211);
    (*(v346 + 8))(v210, v351);
    (v341)(v342, v114);
    goto LABEL_51;
  }

  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v216 = sub_1DEF8D508();
  __swift_project_value_buffer(v216, qword_1ECDF6010);
  v163 = sub_1DEF8D4D8();
  v217 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v163, v217))
  {
    v165 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    *v165 = 136446210;
    v355 = v334;
    aBlock = v166;
    v218 = sub_1DEF8E2E8();
    v220 = sub_1DEE12A5C(v218, v219, &aBlock);

    *(v165 + 4) = v220;
    v170 = "Uncompressed: %{public}s";
    v171 = v217;
    v172 = v163;
    v173 = v165;
    v174 = 12;
    goto LABEL_57;
  }

LABEL_58:

  v221 = v354;
  v222 = v339;
  v223 = v326;
  v224 = v319;
  LOBYTE(aBlock) = v327;
  v225 = v325;
  sub_1DEF200C4(v338, v325, v328, v329, &aBlock, v339, 0, 0);
  v226 = v345 + 16;
  v227 = *(v345 + 16);
  v227(v224, v225, v81);
  v227(v324, v343, v81);
  if ((v334 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  if (v334 >> 32)
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v337)
  {
    LOBYTE(v225) = 4;
  }

  else
  {
    LOBYTE(v225) = 1;
  }

  v221 = v329 + 1;
  if (v329 == -1)
  {
    goto LABEL_89;
  }

  if (qword_1ECDE37F8 != -1)
  {
LABEL_90:
    swift_once();
  }

  v228 = __swift_project_value_buffer(v81, qword_1ECDF60C0);
  v350 = v227;
  v227(v223, v228, v81);
  v229 = v320;
  *(v223 + *(v320 + 20)) = 72;
  v230 = v224;
  v231 = v312;
  v312(v223 + v229[6], v230, v81);
  v231(v223 + v229[7], v324, v81);
  *(v223 + v229[8]) = v334;
  *(v223 + v229[9]) = v225;
  *(v223 + v229[10]) = v328;
  *(v223 + v229[11]) = v221;
  *(v223 + v229[12]) = v327;
  if (qword_1ECDE2E50 != -1)
  {
    swift_once();
  }

  v232 = sub_1DEF8D508();
  __swift_project_value_buffer(v232, qword_1ECDF6010);
  v233 = v318;
  sub_1DEE15068(v223, v318, type metadata accessor for NetworkSyncHeader);
  swift_unknownObjectRetain();
  v234 = sub_1DEF8D4D8();
  v235 = v222;
  v236 = sub_1DEF8DCB8();
  swift_unknownObjectRelease();
  v237 = os_log_type_enabled(v234, v236);
  v349 = v226;
  if (v237)
  {
    v238 = swift_slowAlloc();
    v351 = swift_slowAlloc();
    aBlock = v351;
    *v238 = 136446466;
    v239 = v235;
    sub_1DEE15068(v233, v316, type metadata accessor for NetworkSyncHeader);
    v240 = sub_1DEF8D988();
    v242 = v241;
    sub_1DEE15388(v233, type metadata accessor for NetworkSyncHeader);
    v243 = sub_1DEE12A5C(v240, v242, &aBlock);

    *(v238 + 4) = v243;
    *(v238 + 12) = 2082;
    v355 = v239;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4D60, &unk_1DEF95A78);
    v244 = sub_1DEF8D988();
    v246 = sub_1DEE12A5C(v244, v245, &aBlock);
    v235 = v239;

    *(v238 + 14) = v246;
    _os_log_impl(&dword_1DEE0F000, v234, v236, "Sending file header: %{public}s to %{public}s", v238, 0x16u);
    v247 = v351;
    swift_arrayDestroy();
    MEMORY[0x1E12CCD70](v247, -1, -1);
    MEMORY[0x1E12CCD70](v238, -1, -1);
  }

  else
  {

    sub_1DEE15388(v233, type metadata accessor for NetworkSyncHeader);
  }

  v248 = v340;
  v249 = v342;
  v250 = sub_1DEEFB1A4();
  v347 = v251;
  v348 = v250;
  sub_1DEF1CB90(v250, v251, v235, 0, 0);
  v351 = swift_allocObject();
  swift_weakInit();
  v252 = v341;
  v253 = v335;
  (v335)(v322, v338, v248);
  v254 = v350;
  (v350)(v336, v325, v81);
  v254(v321, v343, v81);
  v253(v323, v249, v248);
  v255 = *(v252 + 80);
  v256 = (v255 + 32) & ~v255;
  v257 = *(v345 + 80);
  v258 = (v27 + v257 + v256) & ~v257;
  v259 = (v317 + v257 + v258) & ~v257;
  v349 = v259 + v317;
  v346 = (v259 + v317) & 0xFFFFFFFFFFFFFFFCLL;
  v354 = (v346 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v338 = ((v354 + 11) & 0xFFFFFFFFFFFFFFF8);
  v260 = (&v338[1].isa + 7) & 0xFFFFFFFFFFFFFFF8;
  v335 = ((v260 + 23) & 0xFFFFFFFFFFFFFFF8);
  v261 = (v335 + v255 + 8) & ~v255;
  v350 = (v261 + v27);
  v262 = swift_allocObject();
  v263 = v313;
  *(v262 + 16) = v351;
  *(v262 + 24) = v263;
  v264 = v248;
  v265 = *(v252 + 32);
  v265(v262 + v256, v322, v264);
  v266 = v344;
  v267 = v312;
  v312(v262 + v258, v336, v344);
  v267(v262 + v259, v321, v266);
  *(v262 + v349) = v327;
  *(v262 + v346 + 4) = v328;
  v268 = v353;
  *(v262 + v354) = v329;
  *(&v338->isa + v262) = v339;
  v269 = (v262 + v260);
  v270 = v352;
  *v269 = v268;
  v269[1] = v270;
  *(v335 + v262) = v334;
  v271 = v262 + v261;
  v272 = v340;
  v265(v271, v323, v340);
  v350[v262] = v337 & 1;
  sub_1DEF8D608();
  swift_unknownObjectRetain();

  sub_1DEF8D5F8();
  v273 = v342;
  sub_1DEF8D618();

  sub_1DEE1BFA0(v348, v347);

  sub_1DEE15388(v326, type metadata accessor for NetworkSyncHeader);
  (*(v341 + 8))(v273, v272);
  (*(v345 + 8))(v343, v266);
LABEL_52:

  v214 = *MEMORY[0x1E69E9840];
  return result;
}