void sub_265BE0D40(int a1, int a2, id a3, void (*a4)(void *, void))
{
  v5 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3800();
  a4(v6, v7);
  sub_265BB85E0(v6, v7);
}

uint64_t DeviceConnection.sendRequest<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v25 = a3;
  v26 = a4;
  v28 = a5;
  v29 = sub_265BF2F60();
  v27 = *(v29 - 8);
  v9 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265BF2FD0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v24 = sub_265BF2E60();
  v15 = *(v24 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v24);
  v18 = &v24 - v17;
  (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v19 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v20 = swift_allocObject();
  v22 = v25;
  v21 = v26;
  *(v20 + 2) = a2;
  *(v20 + 3) = v22;
  *(v20 + 4) = v21;
  *(v20 + 5) = v6;
  (*(v13 + 32))(&v20[v19], &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_265BF2DF0();
  sub_265BF3180();
  sub_265BD8B50("DeviceConnection::sendRequest", 29, 2, 0, v18, a2, v28);
  (*(v27 + 8))(v11, v29);
  return (*(v15 + 8))(v18, v24);
}

uint64_t sub_265BE1094(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v13[5] = a1;
  v13[6] = a2;

  sub_265BDDBB4(a4, 0, 0xF000000000000000, sub_265BE62AC, v13);
}

uint64_t sub_265BE1150(uint64_t a1, unint64_t a2, void *a3, void (*a4)(char *))
{
  v15 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C300, &qword_265BF4730);
  v7 = sub_265BF3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_265BBB4BC(a1, a2);
  v12 = a3;
  sub_265BF37F0();
  v15(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t DeviceConnection.sendRequest<A, B>(_:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v43 = a8;
  v40 = a6;
  v41 = a7;
  v39 = a5;
  v34 = a4;
  v35 = a1;
  v36 = a2;
  v46 = a9;
  v47 = sub_265BF2F60();
  v45 = *(v47 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v42 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265BF2FD0();
  v32 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265BF2E60();
  v37 = *(v19 - 8);
  v38 = v19;
  v20 = *(v37 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - v21;
  (*(v16 + 16))(v18, v36, a3);
  (*(v13 + 16))(&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v12);
  v23 = (*(v16 + 80) + 64) & ~*(v16 + 80);
  v24 = (v17 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v13 + 80) + v24 + 8) & ~*(v13 + 80);
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 2) = a3;
  *(v26 + 3) = v27;
  v28 = v40;
  *(v26 + 4) = v39;
  *(v26 + 5) = v28;
  v29 = v43;
  *(v26 + 6) = v41;
  *(v26 + 7) = v29;
  (*(v16 + 32))(&v26[v23], v18, a3);
  *&v26[v24] = v44;
  (*(v13 + 32))(&v26[v25], v33, v32);

  sub_265BF2DF0();
  v30 = v42;
  sub_265BF3180();
  sub_265BD8B50("DeviceConnection::sendRequest;Payload", 37, 2, 0, v22, v27, v46);
  (*(v45 + 8))(v30, v47);
  return (*(v37 + 8))(v22, v38);
}

uint64_t sub_265BE165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = sub_265BF2D30();
  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a9;
  v17[6] = a10;
  v17[7] = a11;
  v17[8] = a1;
  v17[9] = a2;

  sub_265BDDBB4(a5, v14, v16, sub_265BE5F78, v17);

  return sub_265BBC0A4(v14, v16);
}

uint64_t sub_265BE1770(uint64_t a1, unint64_t a2, void *a3, void (*a4)(char *))
{
  v15 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C300, &qword_265BF4730);
  v7 = sub_265BF3820();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  sub_265BBB4BC(a1, a2);
  v12 = a3;
  sub_265BF37F0();
  v15(v11);
  return (*(v8 + 8))(v11, v7);
}

void DeviceConnection.broadcastEvent(_:data:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_265BF2F90();
  v108 = *(v8 - 8);
  v9 = *(v108 + 64);
  MEMORY[0x28223BE20](v8);
  v110 = v10;
  v109 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265BF3240();
  v107 = *(v11 - 8);
  v12 = v107[8];
  v13 = MEMORY[0x28223BE20](v11);
  v106 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v15 = *(*(v105 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v105);
  v104 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v96 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v21);
  v23 = &v96 - v22;
  v111 = a1;
  v24 = sub_265BF2F80();
  v115 = MEMORY[0x277D83B88];
  *&aBlock = v24;
  sub_265BB87C8(&aBlock, &v119);
  v25 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = v25;
  sub_265BE48E8(&v119, 0x746E657665, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  v27 = a3;
  v28 = v118;
  v120 = v118;
  v112 = v4;
  if (a3 >> 60 != 15)
  {
    v102 = v11;
    v29 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      v30 = a2;
      if (v29 == 2)
      {
        v31 = v8;
        v34 = *(a2 + 16);
        v33 = *(a2 + 24);
        v32 = v33 - v34;
        if (!__OFSUB__(v33, v34))
        {
LABEL_8:
          v103 = v27;
          sub_265BBB4D0(v30, v27);
          v27 = v103;
          v35 = v32 < 1000;
          v8 = v31;
          v4 = v112;
          if (!v35)
          {
            v101 = v8;
            v57 = v112 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression;
            v58 = type metadata accessor for DeviceConnectionCompression();
            v59 = sub_265BE7900(v57 + *(v58 + 24), v23, &qword_28003C550, &qword_265BF5D30);
            if (v29 == 2)
            {
              v61 = *(v30 + 16);
              v60 = *(v30 + 24);
              v62 = __OFSUB__(v60, v61);
              v63 = v60 - v61;
              if (!v62)
              {
                goto LABEL_21;
              }

              __break(1u);
            }

            LODWORD(v63) = HIDWORD(v30) - v30;
            if (!__OFSUB__(HIDWORD(v30), v30))
            {
              v63 = v63;
LABEL_21:
              v100 = v63;
              v64 = MEMORY[0x26676D6B0](v59);
              v65 = sub_265BF2BB0();
              v67 = v66;
              v68 = v65;
              objc_autoreleasePoolPop(v64);
              v69 = v67 >> 62;
              if ((v67 >> 62) > 1)
              {
                v70 = v68;
                if (v69 != 2)
                {
                  v98 = 0;
                  goto LABEL_32;
                }

                v73 = *(v68 + 16);
                v72 = *(v68 + 24);
                v62 = __OFSUB__(v72, v73);
                v71 = v72 - v73;
                if (!v62)
                {
LABEL_30:
                  v98 = v71;
LABEL_32:
                  v115 = MEMORY[0x277CC9318];
                  *&aBlock = v70;
                  *(&aBlock + 1) = v67;
                  sub_265BB87C8(&aBlock, &v119);
                  sub_265BBB4D0(v70, v67);
                  v74 = swift_isUniquelyReferenced_nonNull_native();
                  v118 = v28;
                  sub_265BE48E8(&v119, 0x64616F6C796170, 0xE700000000000000, v74);
                  v120 = v118;
                  sub_265BE7900(v23, v20, &qword_28003C550, &qword_265BF5D30);
                  v75 = sub_265BF2CF0();
                  v76 = *(v75 - 8);
                  if ((*(v76 + 48))(v20, 1, v75) == 1)
                  {
                    sub_265BB0750(v20, &qword_28003C550, &qword_265BF5D30);
                    sub_265BE3954(31333, 0xE200000000000000, &aBlock);
                    sub_265BB0750(&aBlock, &qword_28003C558, &unk_265BF57B8);
                  }

                  else
                  {
                    v77 = sub_265BF2CE0();
                    v115 = MEMORY[0x277D83B88];
                    *&aBlock = v77;
                    (*(v76 + 8))(v20, v75);
                    sub_265BB87C8(&aBlock, &v119);
                    v78 = v120;
                    v79 = swift_isUniquelyReferenced_nonNull_native();
                    v118 = v78;
                    sub_265BE48E8(&v119, 31333, 0xE200000000000000, v79);
                    v120 = v118;
                  }

                  v80 = v106;
                  sub_265BF3150();
                  v81 = v104;
                  sub_265BE7900(v23, v104, &qword_28003C550, &qword_265BF5D30);

                  v82 = sub_265BF3230();
                  v83 = sub_265BF34B0();

                  if (os_log_type_enabled(v82, v83))
                  {
                    v84 = swift_slowAlloc();
                    *&v119 = swift_slowAlloc();
                    v99 = v23;
                    v85 = v119;
                    *v84 = 136446978;
                    *&aBlock = v4;
                    v86 = sub_265BF3350();
                    v97 = v67;
                    v87 = v86;
                    v88 = v81;
                    v90 = v89;
                    *&aBlock = 0;
                    *(&aBlock + 1) = 0xE000000000000000;
                    sub_265BF3620();

                    *&aBlock = 0xD000000000000011;
                    *(&aBlock + 1) = 0x8000000265BFA340;
                    MEMORY[0x26676D1B0](v87, v90);

                    MEMORY[0x26676D1B0](58, 0xE100000000000000);
                    v91 = sub_265BB064C(aBlock, *(&aBlock + 1), &v119);

                    *(v84 + 4) = v91;
                    *(v84 + 12) = 2048;
                    *(v84 + 14) = v100;
                    *(v84 + 22) = 2048;
                    *(v84 + 24) = v98;
                    *(v84 + 32) = 2082;
                    v92 = sub_265BF3590();
                    v94 = v93;
                    sub_265BB0750(v88, &qword_28003C550, &qword_265BF5D30);
                    v95 = sub_265BB064C(v92, v94, &v119);

                    *(v84 + 34) = v95;
                    v4 = v112;
                    _os_log_impl(&dword_265BAD000, v82, v83, "%{public}s Event was %ld bytes compressed to %ld bytes using %{public}s", v84, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x26676DCA0](v85, -1, -1);
                    MEMORY[0x26676DCA0](v84, -1, -1);

                    sub_265BBB1D0(v70, v97);
                    sub_265BBC0A4(v30, v103);
                    (v107[1])(v106, v102);
                    sub_265BB0750(v99, &qword_28003C550, &qword_265BF5D30);
                  }

                  else
                  {

                    sub_265BBB1D0(v70, v67);
                    sub_265BBC0A4(v30, v103);
                    sub_265BB0750(v81, &qword_28003C550, &qword_265BF5D30);
                    (v107[1])(v80, v102);
                    sub_265BB0750(v23, &qword_28003C550, &qword_265BF5D30);
                  }

                  v8 = v101;
                  goto LABEL_11;
                }

                __break(1u);
              }

              else
              {
                v70 = v68;
                if (!v69)
                {
                  v71 = BYTE6(v67);
                  goto LABEL_30;
                }
              }

              LODWORD(v71) = HIDWORD(v70) - v70;
              if (!__OFSUB__(HIDWORD(v70), v70))
              {
                v71 = v71;
                goto LABEL_30;
              }

LABEL_42:
              __break(1u);
              return;
            }

LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          goto LABEL_10;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    else
    {
      v30 = a2;
      if (v29)
      {
        if (!__OFSUB__(HIDWORD(a2), a2))
        {
          v31 = v8;
          v32 = HIDWORD(a2) - a2;
          goto LABEL_8;
        }

        __break(1u);
        goto LABEL_40;
      }
    }

LABEL_10:
    v115 = MEMORY[0x277CC9318];
    *&aBlock = v30;
    *(&aBlock + 1) = v27;
    v36 = v27;
    sub_265BB87C8(&aBlock, &v119);
    sub_265BBB4D0(v30, v36);
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v28;
    sub_265BE48E8(&v119, 0x64616F6C796170, 0xE700000000000000, v37);
    sub_265BBC0A4(v30, v36);
    v120 = v118;
  }

LABEL_11:
  v38 = *(v4 + 64);
  sub_265BD9CB4();
  v39 = sub_265BF3330();

  sub_265BD8848(v120);
  v40 = v4;

  v41 = sub_265BF32E0();

  v42 = **(&unk_279BBA9F0 + *(v4 + 56));
  sub_265BF3340();
  v43 = sub_265BF3330();

  v44 = *(v40 + 59);
  v107 = v38;
  if (v44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    v46 = *MEMORY[0x277D44268];
    *&aBlock = sub_265BF3340();
    *(&aBlock + 1) = v47;
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
  }

  else
  {
    sub_265BE5574(MEMORY[0x277D84F90]);
  }

  v48 = v111;
  v49 = sub_265BF32E0();

  v50 = v108;
  v51 = v109;
  (*(v108 + 16))(v109, v48, v8);
  v52 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v54 = v8;
  v55 = v53;
  *(v53 + 16) = v112;
  (*(v50 + 32))(v53 + v52, v51, v54);
  v116 = sub_265BE5C78;
  v117 = v55;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v114 = sub_265BD5854;
  v115 = &block_descriptor_76;
  v56 = _Block_copy(&aBlock);

  [v107 sendEventID:v39 event:v41 destinationID:v43 options:v49 completion:v56];
  _Block_release(v56);
}

uint64_t DeviceConnection.broadcastEvent<A>(_:payload:)(uint64_t a1)
{
  v2 = sub_265BF2D30();
  v4 = v3;
  DeviceConnection.broadcastEvent(_:data:)(a1, v2, v3);

  return sub_265BBC0A4(v2, v4);
}

uint64_t sub_265BE28C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_265BF2F90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_265BF3240();
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v38[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v43 = v15;
    v44 = result;
    v18 = a1;
    sub_265BF3150();
    (*(v8 + 16))(v11, a3, v7);
    v19 = a1;

    v20 = sub_265BF3230();
    v21 = sub_265BF34D0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v40 = v20;
      v23 = v22;
      v41 = swift_slowAlloc();
      v49 = v41;
      *v23 = 136446722;
      v47 = a2;
      v24 = sub_265BF3350();
      v42 = v3;
      v26 = v25;
      v47 = 0;
      v48 = 0xE000000000000000;
      v39 = v21;
      sub_265BF3620();

      v47 = 0xD000000000000011;
      v48 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v24, v26);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v27 = sub_265BB064C(v47, v48, &v49);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2082;
      v28 = sub_265BE61A4(&qword_28003C570, MEMORY[0x277D4E1E8]);
      v29 = MEMORY[0x26676CC90](v7, v28);
      v31 = v30;
      (*(v8 + 8))(v11, v7);
      v32 = sub_265BB064C(v29, v31, &v49);

      *(v23 + 14) = v32;
      *(v23 + 22) = 2082;
      swift_getErrorValue();
      v33 = MEMORY[0x26676D550](v45, v46);
      v35 = sub_265BB064C(v33, v34, &v49);

      *(v23 + 24) = v35;
      v36 = v40;
      _os_log_impl(&dword_265BAD000, v40, v39, "%{public}s Unable to send event ID %{public}s: %{public}s", v23, 0x20u);
      v37 = v41;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v37, -1, -1);
      MEMORY[0x26676DCA0](v23, -1, -1);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return (*(v43 + 8))(v17, v44);
  }

  return result;
}

uint64_t DeviceConnection.description.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  v4 = (*(v1 + 96))(ObjectType, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C488, &qword_265BF4ED0);
  v5 = sub_265BF3590();
  v7 = v6;

  v8 = sub_265BF3350();
  v10 = v9;
  sub_265BF3620();

  MEMORY[0x26676D1B0](v8, v10);

  MEMORY[0x26676D1B0](58, 0xE100000000000000);
  MEMORY[0x26676D1B0](0xD000000000000011, 0x8000000265BFA340);

  MEMORY[0x26676D1B0](32, 0xE100000000000000);
  v11 = sub_265BD9CB4();
  MEMORY[0x26676D1B0](v11);

  MEMORY[0x26676D1B0](540945696, 0xE400000000000000);
  MEMORY[0x26676D1B0](v5, v7);

  MEMORY[0x26676D1B0](62, 0xE100000000000000);
  return 60;
}

void sub_265BE2EC8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v27 = a5;
  v9 = sub_265BF3240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF2F20();
  sub_265BF31B0();
  sub_265BF2F40();

  v14 = sub_265BF3230();
  v15 = sub_265BF34E0();

  if (os_log_type_enabled(v14, v15))
  {
    v26 = a1;
    v16 = swift_slowAlloc();
    v25[1] = a2;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25[0] = v9;
    v19 = v18;
    v30 = v18;
    *v17 = 136446466;
    *(v17 + 4) = sub_265BB064C(v27, a6, &v30);
    *(v17 + 12) = 2082;
    v20 = sub_265BF3630();
    v22 = sub_265BB064C(v20, v21, &v30);
    a1 = v26;

    *(v17 + 14) = v22;
    _os_log_impl(&dword_265BAD000, v14, v15, "[%{public}s] %{public}s begin", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v19, -1, -1);
    MEMORY[0x26676DCA0](v17, -1, -1);

    (*(v10 + 8))(v13, v25[0]);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
  sub_265BF3810();
  v23 = v30;
  v24 = v31;
  v28 = v30;
  v29 = v31;
  a1(&v28);
  sub_265BB85E0(v23, v24);
}

uint64_t sub_265BE315C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v70[1] = a4;
  v70[2] = a5;
  v70[0] = a2;
  v77 = a9;
  v78 = a8;
  v11 = sub_265BF2C30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v72 = v70 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = v70 - v19;
  v21 = sub_265BF3240();
  v75 = *(v21 - 8);
  v76 = v21;
  v22 = *(v75 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = v70 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C300, &qword_265BF4730);
  v27 = sub_265BF3820();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (v70 - v30);
  (*(v28 + 16))(v70 - v30, a1, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = *v31;
    sub_265BF2F40();
    v33 = v11;
    (*(v12 + 16))(v20, v73, v11);

    v34 = v32;
    v35 = sub_265BF3230();
    v36 = sub_265BF34D0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v80 = v73;
      *v37 = 136446978;
      *(v37 + 4) = sub_265BB064C(v70[0], a3, &v80);
      *(v37 + 12) = 2082;
      v38 = sub_265BF3630();
      v40 = sub_265BB064C(v38, v39, &v80);

      *(v37 + 14) = v40;
      *(v37 + 22) = 2048;
      v41 = v72;
      sub_265BF2C20();
      sub_265BF2C00();
      v43 = v42;
      v44 = *(v12 + 8);
      v44(v41, v33);
      v44(v20, v33);
      *(v37 + 24) = v43;
      *(v37 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v46 = *(*(v79 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v48 + 16))(v70 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = sub_265BF3350();
      v51 = sub_265BB064C(v49, v50, &v80);

      *(v37 + 34) = v51;
      _os_log_impl(&dword_265BAD000, v35, v36, "[%{public}s] %{public}s ended in %fs -> %{public}s", v37, 0x2Au);
      v52 = v73;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v52, -1, -1);
      MEMORY[0x26676DCA0](v37, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v20, v11);
    }

    (*(v75 + 8))(v74, v76);
  }

  else
  {
    sub_265BF2F40();
    v53 = v11;
    (*(v12 + 16))(v16, v73, v11);

    v54 = sub_265BF3230();
    v55 = sub_265BF34E0();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v73 = v53;
      v57 = v56;
      v74 = swift_slowAlloc();
      v80 = v74;
      *v57 = 136446722;
      *(v57 + 4) = sub_265BB064C(v70[0], a3, &v80);
      *(v57 + 12) = 2082;
      v58 = sub_265BF3630();
      v60 = sub_265BB064C(v58, v59, &v80);
      v71 = v55;
      v61 = v60;

      *(v57 + 14) = v61;
      *(v57 + 22) = 2048;
      v62 = v72;
      sub_265BF2C20();
      sub_265BF2C00();
      v64 = v63;
      v65 = *(v12 + 8);
      v66 = v62;
      v67 = v73;
      v65(v66, v73);
      v65(v16, v67);
      *(v57 + 24) = v64;
      _os_log_impl(&dword_265BAD000, v54, v71, "[%{public}s] %{public}s ended in %fs", v57, 0x20u);
      v68 = v74;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v68, -1, -1);
      MEMORY[0x26676DCA0](v57, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v16, v53);
    }

    (*(v75 + 8))(v25, v76);
    (*(v28 + 8))(v31, v27);
  }

  sub_265BF31A0();
  return sub_265BF2F10();
}

unint64_t sub_265BE3898(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_265BF35E0();

  return sub_265BE39F8(a1, v5);
}

unint64_t sub_265BE38DC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_265BF37B0();
  sub_265BF3390();
  v6 = sub_265BF37E0();

  return sub_265BE3AC0(a1, a2, v6);
}

double sub_265BE3954@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_265BE38DC(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_265BE4DD0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_265BB87C8((*(v12 + 56) + 32 * v9), a3);
    sub_265BE43CC(v9, v12);
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

unint64_t sub_265BE39F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_265BE5EC8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x26676D400](v9, a1);
      sub_265BE5F24(v9);
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

unint64_t sub_265BE3AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_265BF36E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_265BE3B78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C568, &qword_265BF5960);
  v36 = a2;
  result = sub_265BF36B0();
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
        sub_265BB87C8(v25, v37);
      }

      else
      {
        sub_265BB08F0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_265BF37B0();
      sub_265BF3390();
      result = sub_265BF37E0();
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
      result = sub_265BB87C8(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_265BE3E30(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D8, &unk_265BF59A0);
  v39 = a2;
  result = sub_265BF36B0();
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
      sub_265BF37B0();
      sub_265BF3390();
      result = sub_265BF37E0();
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

uint64_t sub_265BE40D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D0, &qword_265BF5998);
  v40 = a2;
  result = sub_265BF36B0();
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
      v27 = v25[2];
      v42 = v25[3];
      v28 = v25[4];
      if ((v40 & 1) == 0)
      {
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
      }

      v29 = *(v8 + 40);
      sub_265BF37B0();
      sub_265BF3390();
      result = sub_265BF37E0();
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
      v18[2] = v27;
      v18[3] = v42;
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

uint64_t sub_265BE43CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265BF35D0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_265BF37B0();

      sub_265BF3390();
      v14 = sub_265BF37E0();

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

uint64_t sub_265BE457C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265BF35D0() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_265BF37B0();

      sub_265BF3390();
      v13 = sub_265BF37E0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265BE472C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265BF35D0() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_265BF37B0();

      sub_265BF3390();
      v15 = sub_265BF37E0();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_265BE48E8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265BE38DC(a2, a3);
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
      sub_265BE4DD0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_265BE3B78(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_265BE38DC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_265BF36F0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return sub_265BB87C8(a1, v23);
  }

  else
  {
    sub_265BE4D64(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_265BE4A38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265BE38DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265BE3E30(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_265BE38DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_265BF36F0();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_265BE4F74();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_265BE4BB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_265BE38DC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265BE40D4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_265BE38DC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_265BF36F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_265BE50E0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;
    v25 = *(v23 + 8);
    v24 = *(v23 + 16);
    v26 = *(v23 + 32);
    v27 = *(a1 + 16);
    *v23 = *a1;
    *(v23 + 16) = v27;
    *(v23 + 32) = *(a1 + 32);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v22[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  v30 = v22[7] + 40 * v11;
  v31 = *(a1 + 16);
  *v30 = *a1;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a1 + 32);
  v32 = v22[2];
  v15 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v33;
}

_OWORD *sub_265BE4D64(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_265BB87C8(a4, (a5[7] + 32 * a1));
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

void *sub_265BE4DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C568, &qword_265BF5960);
  v2 = *v0;
  v3 = sub_265BF36A0();
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
        sub_265BB08F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_265BB87C8(v25, (*(v4 + 56) + v22));
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

id sub_265BE4F74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D8, &unk_265BF59A0);
  v2 = *v0;
  v3 = sub_265BF36A0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_265BE50E0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5D0, &qword_265BF5998);
  v2 = *v0;
  v3 = sub_265BF36A0();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v20 = *v19;
        v21 = v19[1];
        v17 *= 40;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v26 = v22[2];
        v25 = v22[3];
        v27 = v22[4];
        v28 = (*(v4 + 48) + v18);
        *v28 = v20;
        v28[1] = v21;
        v29 = (*(v4 + 56) + v17);
        *v29 = v23;
        v29[1] = v24;
        v29[2] = v26;
        v29[3] = v25;
        v29[4] = v27;
        swift_unknownObjectRetain();

        result = swift_unknownObjectRetain();
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_265BE5320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C568, &qword_265BF5960);
    v3 = sub_265BF36C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_265BE7900(v4, &v13, &qword_28003C5C8, &qword_265BF5990);
      v5 = v13;
      v6 = v14;
      result = sub_265BE38DC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_265BB87C8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_265BE5478(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_265BF36C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_265BE38DC(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_265BE5574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C578, &qword_265BF5968);
    v3 = sub_265BF36C0();
    v4 = a1 + 32;

    while (1)
    {
      sub_265BE7900(v4, v13, &qword_28003C548, &unk_265BF5D20);
      result = sub_265BE3898(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_265BB87C8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_265BE56B0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265BF2FD0() - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return sub_265BE0100(a1, a2, v6, v7);
}

uint64_t sub_265BE573C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265BB10A8(a1, a2, v2 + v6, *v7, v7[1], &unk_28003C470, &qword_265BF4740, &unk_287776700, sub_265BE7418);
}

uint64_t sub_265BE5828(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = (*(*(v2[2] - 8) + 80) + 40) & ~*(*(v2[2] - 8) + 80);
  v8 = (*(*(v2[2] - 8) + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_265BF2FD0() - 8);
  v10 = *(v2 + v8);
  v11 = v2 + ((v8 + *(v9 + 80) + 8) & ~*(v9 + 80));

  return sub_265BE0C04(a1, a2, v2 + v7, v10, v11);
}

uint64_t sub_265BE5930(uint64_t a1)
{
  v3 = *(sub_265BF2C30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BD1070(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BE59E8(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(sub_265BF2FD0() - 8);
  v9 = v2[5];
  v10 = (v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80)));

  return sub_265BE1094(a1, a2, v9, v10, v5, v6, v7);
}

uint64_t sub_265BE5A88(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v13 = *(v2 + 40);
  v8 = *(v2 + 56);
  v9 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v10 = (*(*(v5 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_265BF2FD0() - 8);
  return sub_265BE165C(a1, a2, v2 + v9, *(v2 + v10), (v2 + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80))), v5, v6, v7, v13, *(&v13 + 1), v8);
}

uint64_t objectdestroy_25Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(v1 + 16);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t type metadata accessor for DeviceConnection()
{
  result = qword_281068BD8;
  if (!qword_281068BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BE5D48()
{
  result = type metadata accessor for DeviceConnectionCompression();
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

uint64_t sub_265BE5E5C(__int128 *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 2);
  v7 = *(a1 + 24);
  v9 = *a1;
  v10 = v6;
  v11 = v7;
  v3(&v9);
  return v5(&v9);
}

uint64_t sub_265BE5F78(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 72);
  v10 = *(v3 + 56);
  v9 = *(v3 + 40);
  return sub_265BE1770(a1, a2, a3, *(v3 + 64));
}

uint64_t sub_265BE5FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265BE6028()
{
  result = qword_28003C588;
  if (!qword_28003C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C588);
  }

  return result;
}

void sub_265BE607C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(sub_265BF2FD0() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_265BDC4D0(a1, *(v3 + 16), v3 + v7, *(v3 + v8), a3, *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + 24));
}

uint64_t sub_265BE6140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransportRequestAnalyticsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BE61A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265BE61EC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(sub_265BF2C30() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BE315C(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), v1 + v5, *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BE62AC(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 48);
  return sub_265BE1150(a1, a2, a3, *(v3 + 40));
}

uint64_t sub_265BE62C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v75 = *(v8 - 8);
  v9 = *(v75 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v76 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v68 - v14;
  v16 = sub_265BF3240();
  v78 = *(v16 - 8);
  v17 = *(v78 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v73 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v22 = swift_allocObject();
  v74 = a3;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v79 = 7431538;
  v80 = 0xE300000000000000;

  sub_265BF3600();
  if (!*(a1 + 16) || (v23 = sub_265BE3898(&v81), (v24 & 1) == 0))
  {
    sub_265BE5F24(&v81);
    goto LABEL_12;
  }

  v71 = v16;
  v77 = v22;
  sub_265BB08F0(*(a1 + 56) + 32 * v23, &v83);
  sub_265BE5F24(&v81);
  if (!swift_dynamicCast())
  {
    v22 = v77;
    v16 = v71;
LABEL_12:
    sub_265BF3150();

    v31 = sub_265BF3230();
    v32 = sub_265BF34D0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136446466;
      v81 = a2;
      v35 = sub_265BF3350();
      v77 = v22;
      v36 = v16;
      v37 = v35;
      v39 = v38;
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_265BF3620();

      v81 = 0xD000000000000011;
      v82 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v37, v39);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v40 = sub_265BB064C(v81, v82, &v83);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2082;
      v41 = sub_265BF3300();
      v43 = sub_265BB064C(v41, v42, &v83);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_265BAD000, v31, v32, "%{public}s Request missing from rapport dictionary: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v34, -1, -1);
      MEMORY[0x26676DCA0](v33, -1, -1);

      (*(v78 + 8))(v21, v36);
    }

    else
    {

      (*(v78 + 8))(v21, v16);
    }
  }

  v68 = v79;
  Current = CFAbsoluteTimeGetCurrent();
  v83 = 0x64616F6C796170;
  v84 = 0xE700000000000000;
  sub_265BF3600();
  if (*(a1 + 16) && (v26 = sub_265BE3898(&v81), (v27 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v26, &v83);
    sub_265BE5F24(&v81);
    v28 = swift_dynamicCast();
    v29 = v79;
    if (!v28)
    {
      v29 = 0;
    }

    v70 = v29;
    v30 = 0xF000000000000000;
    if (v28)
    {
      v30 = v80;
    }
  }

  else
  {
    sub_265BE5F24(&v81);
    v70 = 0;
    v30 = 0xF000000000000000;
  }

  v72 = v30;
  v44 = v15;
  v83 = 8024434;
  v84 = 0xE300000000000000;
  sub_265BF3600();
  v45 = v13;
  if (*(a1 + 16) && (v46 = sub_265BE3898(&v81), (v47 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v46, &v83);
    sub_265BE5F24(&v81);
    swift_dynamicCast();
  }

  else
  {
    sub_265BE5F24(&v81);
  }

  v48 = v70;
  sub_265BF2CD0();
  v83 = 8024946;
  v84 = 0xE300000000000000;
  sub_265BF3600();
  if (*(a1 + 16) && (v49 = sub_265BE3898(&v81), (v50 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v49, &v83);
    sub_265BE5F24(&v81);
    swift_dynamicCast();
  }

  else
  {
    sub_265BE5F24(&v81);
  }

  v51 = sub_265BF2CD0();
  v52 = MEMORY[0x26676D6B0](v51);
  v53 = v72;
  v54 = v48;
  v55 = v72;
  v56 = v48;
  v69 = v44;
  if (v72 >> 60 != 15)
  {
    v57 = v52;
    v54 = sub_265BF2BC0();
    v55 = v58;
    v52 = v57;
    v53 = v72;
  }

  v72 = v53;
  v59 = v54;
  objc_autoreleasePoolPop(v52);
  v60 = *(a2 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService);
  v61 = v76;
  sub_265BE7900(v45, v76, &qword_28003C550, &qword_265BF5D30);
  v62 = (*(v75 + 80) + 24) & ~*(v75 + 80);
  v78 = v45;
  v63 = (v9 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  *(v64 + 16) = Current;
  sub_265BE5FB4(v61, v64 + v62);
  *(v64 + v63) = a2;
  v65 = (v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8));
  v66 = v77;
  *v65 = sub_265BE7824;
  v65[1] = v66;

  sub_265BF30B0();

  sub_265BBC0A4(v59, v55);
  sub_265BBC0A4(v56, v72);
  sub_265BB0750(v78, &qword_28003C550, &qword_265BF5D30);
  sub_265BB0750(v69, &qword_28003C550, &qword_265BF5D30);
}

uint64_t sub_265BE6D78(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, char **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a8;
  v70 = a2;
  v71 = a3;
  v74 = a1;
  v13 = sub_265BF2FD0();
  v66 = *(v13 - 8);
  v67 = v13;
  v14 = *(v66 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v65 = *(v15 - 8);
  v16 = *(v65 + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v73 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v61 - v18;
  v72 = sub_265BF3240();
  v69 = *(v72 - 8);
  v20 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4;
  v24 = swift_allocObject();
  v25 = v24;
  v24[2] = a5;
  v24[3] = a6;
  v75 = a6;
  if (*(v23 + 56) == 2)
  {
    v73 = a5;
    v74 = v24;

    sub_265BF3150();

    v26 = sub_265BF3230();
    v27 = sub_265BF34D0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78 = v29;
      *v28 = 136446466;
      v76 = v23;
      v30 = sub_265BF3350();
      v32 = v31;
      v76 = 0;
      v77 = 0xE000000000000000;
      sub_265BF3620();

      v76 = 0xD000000000000011;
      v77 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v30, v32);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v33 = sub_265BB064C(v76, v77, &v78);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2082;
      LOBYTE(v76) = 2;
      v34 = sub_265BE6028();
      v35 = MEMORY[0x26676CC90](&type metadata for DeviceConnectionDestination, v34);
      v37 = sub_265BB064C(v35, v36, &v78);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_265BAD000, v26, v27, "%{public}s Destination does not support outgoing requests: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v29, -1, -1);
      MEMORY[0x26676DCA0](v28, -1, -1);
    }

    (*(v69 + 8))(v22, v72);
    v38 = sub_265BF2C50();
    sub_265BE61A4(&qword_28003C580, MEMORY[0x277D50940]);
    v39 = swift_allocError();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D50910], v38);
    v78 = v39;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
    sub_265BF3800();
    v42 = v76;
    v43 = v77;
    (v73)(v76, v77);
    sub_265BB85E0(v42, v43);
  }

  else
  {
    v72 = a10;
    v63 = a9;
    v44 = (v23 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
    v45 = *(type metadata accessor for DeviceConnectionCompression() + 20);
    v69 = v45;
    v62 = v23;
    v64 = v44;
    sub_265BE7900(v44, v19, &qword_28003C550, &qword_265BF5D30);
    v46 = v66;
    v47 = *(v66 + 16);
    v61 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v48 = v67;
    v47(v61, v74, v67);
    sub_265BE7900(v44 + v45, v73, &qword_28003C550, &qword_265BF5D30);
    v49 = *(v65 + 80);
    v50 = (v49 + 32) & ~v49;
    v51 = (v16 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v52 = (*(v46 + 80) + v51 + 8) & ~*(v46 + 80);
    v53 = (v14 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = (v49 + v53 + 16) & ~v49;
    v55 = swift_allocObject();
    *(v55 + 16) = v63;
    *(v55 + 24) = v25;
    sub_265BE5FB4(v19, v55 + v50);
    v56 = v61;
    *(v55 + v51) = v62;
    (*(v46 + 32))(v55 + v52, v56, v48);
    v57 = (v55 + v53);
    v59 = v70;
    v58 = v71;
    *v57 = v70;
    v57[1] = v58;
    sub_265BE5FB4(v73, v55 + v54);

    sub_265BBB4BC(v59, v58);
    sub_265BDB48C(v74, v59, v58, v64, v64 + v69, v72, v55);
  }
}

uint64_t sub_265BE7418(uint64_t *a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(a1 + 8);
  v8 = *a1;
  v9 = v6;
  v3(&v8);
  return v5(&v8);
}

uint64_t objectdestroy_86Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v18 = *(v1 + 64);
  v16 = sub_265BF2FD0();
  v4 = *(v16 - 8);
  v17 = *(v4 + 80);
  v5 = (((v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17;
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  v8 = sub_265BF2CF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v0 + v3, 1, v8))
  {
    (*(v9 + 8))(v0 + v3, v8);
  }

  v11 = (v2 + v6 + 16) & ~v2;
  v12 = *(v0 + v15);

  (*(v4 + 8))(v0 + v5, v16);
  v13 = *(v0 + v6 + 8);
  if (v13 >> 60 != 15)
  {
    sub_265BBB1D0(*(v0 + v6), v13);
  }

  if (!v10(v0 + v11, 1, v8))
  {
    (*(v9 + 8))(v0 + v11, v8);
  }

  return MEMORY[0x2821FE8E8](v0, v11 + v18, v2 | v17 | 7);
}

void sub_265BE76C4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 32) & ~v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_265BF2FD0() - 8);
  v12 = (v10 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_265BDE1A4(a1, a2, a3, *(v3 + 16), *(v3 + 24), v3 + v9, *(v3 + v10), (v3 + v12), *(v3 + v13), *(v3 + v13 + 8), v3 + ((v8 + v13 + 16) & ~v8));
}

void sub_265BE782C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + v9);
  v11 = *(v3 + 16);
  v12 = v3 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  sub_265BDEC80(a1, a2, a3, v3 + v8, v10, v13, v14, v11);
}

uint64_t sub_265BE7900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_265BE79C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF59B0;
  *(inited + 32) = 0x74616E6974736564;
  *(inited + 40) = 0xEB000000006E6F69;
  v18 = *v0;
  sub_265BF3670();
  v2 = sub_265BF3330();

  *(inited + 48) = v2;
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  v3 = v0[1];
  v4 = v0[2];
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0x6D6F44726F727265;
  *(inited + 88) = 0xEB000000006E6961;
  v5 = v0[3];
  v6 = v0[4];
  *(inited + 96) = sub_265BF3330();
  *(inited + 104) = 0x4974736575716572;
  *(inited + 112) = 0xE900000000000044;
  v7 = type metadata accessor for TransportRequestAnalyticsEvent();
  v8 = v7[7];
  sub_265BF2FD0();
  sub_265BF3670();
  v9 = sub_265BF3330();

  *(inited + 120) = v9;
  *(inited + 128) = 0xD000000000000012;
  *(inited + 136) = 0x8000000265BFA450;
  v10 = *(v0 + v7[8]);
  *(inited + 144) = sub_265BF34A0();
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x8000000265BFA470;
  v11 = *(v0 + v7[9]);
  *(inited + 168) = sub_265BF34A0();
  *(inited + 176) = 0xD000000000000016;
  *(inited + 184) = 0x8000000265BFA490;
  v12 = *(v0 + v7[10]);
  *(inited + 192) = sub_265BF3440();
  strcpy((inited + 200), "roundTripTime");
  *(inited + 214) = -4864;
  v13 = *(v0 + v7[11]);
  *(inited + 216) = sub_265BF3440();
  *(inited + 224) = 0x65636976726573;
  *(inited + 232) = 0xE700000000000000;
  v19 = *(v0 + v7[12]);
  sub_265BF3670();
  v14 = sub_265BF3330();

  *(inited + 240) = v14;
  *(inited + 248) = 0x6369706F74;
  *(inited + 256) = 0xE500000000000000;
  v20 = *(v0 + v7[13]);
  sub_265BF3670();
  v15 = sub_265BF3330();

  *(inited + 264) = v15;
  v16 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v16;
}

uint64_t type metadata accessor for TransportRequestAnalyticsEvent()
{
  result = qword_28003C5E0;
  if (!qword_28003C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BE7DAC()
{
  result = sub_265BF2FD0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DeviceConnectionAuthentication.hashValue.getter(unsigned __int8 a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1);
  return sub_265BF37E0();
}

unint64_t sub_265BE7EF0()
{
  result = qword_28003C5F0;
  if (!qword_28003C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C5F0);
  }

  return result;
}

unint64_t sub_265BE7F54(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF5AB0;
  *(inited + 32) = 0x74616E6974736564;
  *(inited + 40) = 0xEB000000006E6F69;
  v5 = **(&unk_279BBAA08 + a1);
  sub_265BF3340();
  v6 = sub_265BF3330();

  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000265BFA4D0;
  sub_265BE84C0();
  *(inited + 72) = sub_265BF3580();
  *(inited + 80) = 0x6369706F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = sub_265BF3580();
  strcpy((inited + 104), "authentication");
  *(inited + 119) = -18;
  *(inited + 120) = sub_265BF3580();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x8000000265BFA3A0;
  *(inited + 144) = sub_265BF3580();
  *(inited + 152) = 0x656D69747075;
  *(inited + 160) = 0xE600000000000000;
  *(inited + 168) = sub_265BF3440();
  strcpy((inited + 176), "retryInterval");
  *(inited + 190) = -4864;
  *(inited + 192) = sub_265BF3440();
  *(inited + 200) = 0x646F43726F727265;
  *(inited + 208) = 0xE900000000000065;
  if (a2)
  {
    swift_getErrorValue();
    sub_265BF3750();
    v7 = sub_265BF3330();

    *(inited + 216) = v7;
    *(inited + 224) = 0x6D6F44726F727265;
    *(inited + 232) = 0xEB000000006E6961;
    swift_getErrorValue();
    sub_265BF3760();
  }

  else
  {
    v8 = sub_265BF3330();

    *(inited + 216) = v8;
    *(inited + 224) = 0x6D6F44726F727265;
    *(inited + 232) = 0xEB000000006E6961;
  }

  v9 = sub_265BF3330();

  *(inited + 240) = v9;
  *(inited + 248) = 0xD000000000000013;
  *(inited + 256) = 0x8000000265BFA530;
  if (a2)
  {
    swift_getErrorValue();
    v10 = sub_265BF3700();
    if (v10)
    {
      v11 = v10;
      swift_getErrorValue();
      sub_265BF3750();
    }

    v13 = sub_265BF3330();

    *(inited + 264) = v13;
    *(inited + 272) = 0xD000000000000015;
    *(inited + 280) = 0x8000000265BFA550;
    swift_getErrorValue();
    v14 = sub_265BF3700();
    if (v14)
    {
      v15 = v14;
      swift_getErrorValue();
      sub_265BF3760();
    }
  }

  else
  {
    v12 = sub_265BF3330();

    *(inited + 264) = v12;
    *(inited + 272) = 0xD000000000000015;
    *(inited + 280) = 0x8000000265BFA550;
  }

  v16 = sub_265BF3330();

  *(inited + 288) = v16;
  v17 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v17;
}

unint64_t sub_265BE8458()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  *(v0 + 1);
  *(v0 + 2);
  *(v0 + 3);
  *(v0 + 5);
  *(v0 + 4);
  return sub_265BE7F54(*v0, *(v0 + 24));
}

unint64_t sub_265BE84C0()
{
  result = qword_28003C5F8;
  if (!qword_28003C5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28003C5F8);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_265BE8518(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_265BE8574(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_265BE85EC()
{
  result = qword_28003C600;
  if (!qword_28003C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C600);
  }

  return result;
}

unint64_t sub_265BE8644()
{
  result = qword_28003C608;
  if (!qword_28003C608)
  {
    sub_265BF31D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C608);
  }

  return result;
}

uint64_t sub_265BE86A0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 64);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  v2 = *(v0 + 112);

  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  sub_265BEC238(*(v0 + 128));
  v5 = *(v0 + 160);
  sub_265BB060C(*(v0 + 152));

  return MEMORY[0x2821FE8D8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_19SeymourServicesCore22DeviceConnectionBrokerC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_265BE8754(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 17))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265BE87A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_265BE8808(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 16) = 0;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_265BE883C()
{
  v1 = *v0;
  sub_265BF3620();

  MEMORY[0x26676D1B0](*(v1 + 56), *(v1 + 64));
  return 0xD000000000000017;
}

void sub_265BE88AC(uint64_t a1, void *a2, void *a3, void *a4, int a5, int a6, int a7, int a8, unsigned __int8 a9)
{
  v87 = a8;
  v90 = a7;
  v15 = sub_265BF3240();
  v93 = *(v15 - 8);
  v94 = v15;
  v16 = *(v93 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v80 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v80 - v23;
  v25 = swift_allocObject();
  v88 = a2;
  v89 = a1;
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v26 = a3[14];

  sub_265BF2EA0();
  v92 = v96;
  v91 = v97;
  if (aBlock)
  {
    v27 = aBlock;

    sub_265BF3150();

    v28 = sub_265BF3230();
    v29 = sub_265BF34D0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = a3;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v101[0] = v32;
      *v31 = 136446210;
      aBlock = 0;
      v96 = 0xE000000000000000;
      sub_265BF3620();

      aBlock = 0xD000000000000017;
      v96 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](v30[7], v30[8]);
      v33 = sub_265BB064C(aBlock, v96, v101);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_265BAD000, v28, v29, "%{public}s: Invalid state for initiating connection", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x26676DCA0](v32, -1, -1);
      MEMORY[0x26676DCA0](v31, -1, -1);
    }

    (*(v93 + 8))(v24, v94);
    sub_265BEC1CC();
    v39 = swift_allocError();
    *v40 = 1;
    v96 = 0;
    v97 = 0;
    aBlock = v39;
    LOBYTE(v98) = 1;
    (v89)(&aBlock);
    sub_265BEC238(v27);
  }

  else
  {
    v80 = v19;
    v83 = 0;
    v84 = v26;
    v82 = v25;
    v88 = a3;
    v85 = a5;
    v86 = a6;
    v34 = [a4 flags];
    v35 = [a4 statusFlags];
    v36 = [a4 statusFlags];
    v89 = 1;
    if (v34)
    {
      v37 = v88;
      v38 = v22;
    }

    else
    {
      v37 = v88;
      v38 = v22;
      if ((v35 & 0x1000) == 0)
      {
        v89 = (v36 >> 27) & 1;
      }
    }

    sub_265BF3150();

    v41 = a4;
    v42 = sub_265BF3230();
    v43 = sub_265BF34E0();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v101[0] = v81;
      *v44 = 136446722;
      aBlock = 0;
      v96 = 0xE000000000000000;
      sub_265BF3620();

      aBlock = 0xD000000000000017;
      v96 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](v37[7], v37[8]);
      v46 = sub_265BB064C(aBlock, v96, v101);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2114;
      *(v44 + 14) = v41;
      *v45 = v41;
      *(v44 + 22) = 1026;
      *(v44 + 24) = v89;
      v47 = v41;
      _os_log_impl(&dword_265BAD000, v42, v43, "%{public}s: Connecting to device (%{public}@), requires authentication=%{BOOL,public}d", v44, 0x1Cu);
      sub_265BB0750(v45, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v45, -1, -1);
      v48 = v81;
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      MEMORY[0x26676DCA0](v48, -1, -1);
      MEMORY[0x26676DCA0](v44, -1, -1);
    }

    v49 = v38;
    v50 = *(v93 + 8);
    v50(v49, v94);
    v51 = v37[12];
    v52 = v37[13];
    __swift_project_boxed_opaque_existential_1(v37 + 9, v51);
    v53 = (*(v52 + 16))(v51, v52);
    v55 = v54;
    ObjectType = swift_getObjectType();
    v57 = *(v55 + 104);
    v81 = v41;
    v57(v41, ObjectType, v55);
    v58 = sub_265BF3330();

    [v53 setServiceType_];

    if (v86)
    {
      v59 = 0x1000000100;
    }

    else
    {
      v59 = 0;
    }

    v60 = *(v55 + 40);
    v60(v59, ObjectType, v55);
    v61 = v90;
    if (v90 == 1)
    {
      v62 = v80;
      sub_265BF3150();
      v63 = sub_265BF3230();
      v64 = sub_265BF34E0();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_265BAD000, v63, v64, "Authentication set to use previous pairing, attaching control flag to find PIN pairing record", v65, 2u);
        v66 = v65;
        v62 = v80;
        MEMORY[0x26676DCA0](v66, -1, -1);
      }

      v50(v62, v94);
      v67 = (*(v55 + 32))(ObjectType, v55);
      v60(v67 | 0x8000000000, ObjectType, v55);
    }

    LODWORD(v94) = a9;
    v68 = v89 ^ 1;
    if (v61 == 2)
    {
      v68 = 0;
    }

    if ((v68 & 1) == 0)
    {
      (*(v55 + 16))(1, ObjectType, v55);
      v69 = (*(v55 + 32))(ObjectType, v55);
      v60(v69 | 0x8000000400, ObjectType, v55);
      [v53 setPasswordType_];
      v70 = swift_allocObject();
      swift_weakInit();
      v99 = sub_265BEC398;
      v100 = v70;
      aBlock = MEMORY[0x277D85DD0];
      v96 = 1107296256;
      v97 = sub_265BE964C;
      v98 = &block_descriptor_30;
      v71 = _Block_copy(&aBlock);

      [v53 setPromptForPasswordHandler_];
      _Block_release(v71);
    }

    v72 = v88;
    v99 = sub_265BEC2D8;
    v100 = v88;
    aBlock = MEMORY[0x277D85DD0];
    v96 = 1107296256;
    v97 = sub_265BD5854;
    v98 = &block_descriptor_9;
    v73 = _Block_copy(&aBlock);

    [v53 setAuthCompletionHandler_];
    _Block_release(v73);
    MEMORY[0x28223BE20](v74);
    *(&v80 - 4) = v72;
    *(&v80 - 3) = v53;
    *(&v80 - 2) = v55;
    *(&v80 - 8) = v89;
    sub_265BF2EA0();
    v75 = swift_allocObject();
    v77 = v81;
    v76 = v82;
    *(v75 + 16) = v72;
    *(v75 + 24) = v77;
    *(v75 + 32) = v53;
    *(v75 + 40) = v55;
    *(v75 + 48) = sub_265BEC294;
    *(v75 + 56) = v76;
    *(v75 + 64) = v90;
    *(v75 + 65) = v87;
    *(v75 + 66) = v94 & 1;
    *(v75 + 67) = v85 & 1;
    *(v75 + 68) = v86 & 1;
    v78 = *(v55 + 264);

    v79 = v77;
    swift_unknownObjectRetain();
    v78(sub_265BEC348, v75, ObjectType, v55);
    swift_unknownObjectRelease();

    sub_265BEC238(0);
  }
}

uint64_t sub_265BE9328(uint64_t a1, int a2)
{
  v3 = sub_265BF2DC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_265BF3240();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v32);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3150();

  v12 = sub_265BF3230();
  v13 = sub_265BF34E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    v31 = v3;
    v28 = v16;
    v34 = v16;
    *v15 = 136446210;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v29 = a2;
    v33 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C618, &unk_265BF5CF8);
    v18 = sub_265BF3590();
    v19 = v4;
    v21 = v20;

    v22 = sub_265BB064C(v18, v21, &v34);
    v4 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_265BAD000, v12, v13, "%{public}s: Password challenge handler fired", v15, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    v3 = v31;
    MEMORY[0x26676DCA0](v23, -1, -1);
    v24 = v15;
    v7 = v30;
    MEMORY[0x26676DCA0](v24, -1, -1);
  }

  (*(v8 + 8))(v11, v32);
  sub_265BF2DB0();
  swift_beginAccess();
  v25 = swift_weakLoadStrong();
  if (v25)
  {
    v26 = *(v25 + 152);
    sub_265BB2BC4(v26);

    if (v26)
    {
      v26(v7);
      sub_265BB060C(v26);
    }
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_265BE964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6(a2, a3);
}

uint64_t sub_265BE96AC(void *a1, uint64_t a2)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v28 - v10;
  if (a1)
  {
    v12 = a1;
    sub_265BF3150();
    v13 = a1;

    v14 = sub_265BF3230();
    v15 = sub_265BF34E0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 136446466;
      v29 = 0;
      v30 = 0xE000000000000000;
      v31 = v17;
      sub_265BF3620();

      v29 = 0xD000000000000017;
      v30 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(a2 + 56), *(a2 + 64));
      v18 = sub_265BB064C(v29, v30, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v19 = MEMORY[0x26676D550](v28[2], v28[3]);
      v21 = sub_265BB064C(v19, v20, &v31);

      *(v16 + 14) = v21;
      _os_log_impl(&dword_265BAD000, v14, v15, "%{public}s: Authentication failed with error: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v17, -1, -1);
      MEMORY[0x26676DCA0](v16, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_265BF3150();

    v22 = sub_265BF3230();
    v23 = sub_265BF34E0();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 136446210;
      v29 = 0;
      v30 = 0xE000000000000000;
      v31 = v25;
      sub_265BF3620();

      v29 = 0xD000000000000017;
      v30 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(a2 + 56), *(a2 + 64));
      v26 = sub_265BB064C(v29, v30, &v31);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_265BAD000, v22, v23, "%{public}s: Authentication success", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x26676DCA0](v25, -1, -1);
      MEMORY[0x26676DCA0](v24, -1, -1);
    }

    return (*(v5 + 8))(v9, v4);
  }
}

void sub_265BE9A70(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(void *, void, void, uint64_t), uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12)
{
  LODWORD(v274) = a8;
  v281 = a7;
  v282 = a4;
  v283 = a5;
  v284 = a6;
  v278 = a3;
  LODWORD(v269) = a12;
  LODWORD(v270) = a11;
  LODWORD(v271) = a10;
  LODWORD(v272) = a9;
  v267 = type metadata accessor for UnstableDeviceConnection.State(0);
  v14 = *(*(v267 - 8) + 64);
  MEMORY[0x28223BE20](v267);
  v266 = (&v237 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_265BF2FE0();
  v264 = *(v16 - 8);
  v265 = v16;
  v17 = *(v264 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v237 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DeviceConnectionCompression();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v237 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v237 - v25;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v254 = *(v263 - 8);
  v27 = *(v254 + 64);
  v28 = MEMORY[0x28223BE20](v263);
  v246 = v29;
  v247 = &v237 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v261 = &v237 - v30;
  v262 = sub_265BF2C30();
  v253 = *(v262 - 8);
  v31 = *(v253 + 64);
  v32 = MEMORY[0x28223BE20](v262);
  v248 = v33;
  v249 = &v237 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v268 = &v237 - v34;
  v35 = sub_265BF3210();
  v241 = *(v35 - 8);
  v242 = v35;
  v36 = *(v241 + 64);
  MEMORY[0x28223BE20](v35);
  v243 = &v237 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_265BF31F0();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v240 = &v237 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_265BF2F60();
  v250 = *(v41 - 8);
  v251 = v41;
  v42 = *(v250 + 64);
  MEMORY[0x28223BE20](v41);
  v258 = &v237 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v259 = *(v44 - 8);
  v260 = v44;
  v45 = v259[8];
  v46 = MEMORY[0x28223BE20](v44);
  v256 = &v237 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v245 = &v237 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v257 = &v237 - v51;
  v244 = v52;
  MEMORY[0x28223BE20](v50);
  v252 = &v237 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C620, &qword_265BF5D08);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v57 = &v237 - v56;
  v58 = sub_265BF2D20();
  v276 = *(v58 - 8);
  v277 = v58;
  v59 = *(v276 + 8);
  v60 = MEMORY[0x28223BE20](v58);
  v255 = &v237 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v275 = &v237 - v62;
  v63 = sub_265BF3240();
  v279 = *(v63 - 8);
  v280 = v63;
  v64 = *(v279 + 8);
  v65 = MEMORY[0x28223BE20](v63);
  v67 = &v237 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65);
  v239 = &v237 - v69;
  MEMORY[0x28223BE20](v68);
  v71 = &v237 - v70;
  v72 = *(a2 + 128);
  v73 = *(a2 + 136);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v74 = *(a2 + 144);
  *(a2 + 144) = 0;
  sub_265BEC238(v72);
  v273 = a2;
  if (a1)
  {
    v75 = v284;
    v76 = a1;
    sub_265BF3150();
    v77 = a1;

    v78 = v278;
    v79 = sub_265BF3230();
    v80 = sub_265BF34D0();

    v81 = os_log_type_enabled(v79, v80);
    v82 = a1;
    v278 = v78;
    if (v81)
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v265 = v84;
      v267 = swift_slowAlloc();
      v296[0] = v267;
      *v83 = 136446722;
      v287 = 0;
      v288 = 0xE000000000000000;
      LODWORD(v266) = v80;
      sub_265BF3620();

      v287 = 0xD000000000000017;
      v288 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(a2 + 56), *(a2 + 64));
      v85 = sub_265BB064C(v287, v288, v296);

      *(v83 + 4) = v85;
      *(v83 + 12) = 2114;
      *(v83 + 14) = v78;
      *v84 = v78;
      *(v83 + 22) = 2082;
      swift_getErrorValue();
      v86 = v285;
      v87 = v82;
      v88 = v286;
      v89 = v78;
      v90 = MEMORY[0x26676D550](v86, v88);
      v92 = sub_265BB064C(v90, v91, v296);

      *(v83 + 24) = v92;
      v82 = v87;
      _os_log_impl(&dword_265BAD000, v79, v266, "%{public}s: Error activating device (%{public}@) connection link: %{public}s", v83, 0x20u);
      v93 = v265;
      sub_265BB0750(v265, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v93, -1, -1);
      v94 = v267;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v94, -1, -1);
      v95 = v83;
      v75 = v284;
      MEMORY[0x26676DCA0](v95, -1, -1);
    }

    v96 = v280;
    v97 = *(v279 + 1);
    v97(v71, v280);
    v98 = v277;
    ObjectType = swift_getObjectType();
    (*(v283 + 272))(ObjectType);
    v100 = v82;
    RemoteParticipantError.init(error:)(v82, v57);
    v101 = v276;
    if ((*(v276 + 6))(v57, 1, v98) == 1)
    {
      sub_265BB0750(v57, &qword_28003C620, &qword_265BF5D08);
      v102 = v82;
      v75(v82, 0, 0, 1);
    }

    else
    {
      v283 = v97;
      (*(v101 + 32))(v275, v57, v98);
      v138 = v255;
      (*(v101 + 104))(v255, *MEMORY[0x277D52630], v98);
      v139 = sub_265BF2D10();
      v142 = *(v101 + 8);
      v140 = v101 + 8;
      v141 = v142;
      v142(v138, v98);
      if ((v139 & 1) == 0 || v274)
      {
        sub_265BEC444(&qword_281068900, MEMORY[0x277D52688]);
        v234 = swift_allocError();
        v235 = v275;
        (*(v276 + 2))(v236, v275, v98);
        v284(v234, 0, 0, 1);

        v141(v235, v98);
      }

      else
      {
        v279 = v141;
        v280 = v140;
        v282 = v82;
        v143 = v239;
        sub_265BF3150();
        v144 = sub_265BF3230();
        v145 = sub_265BF34E0();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          *v146 = 0;
          _os_log_impl(&dword_265BAD000, v144, v145, "Cloud pairing keys not found, connecting again looking for pairing record", v146, 2u);
          MEMORY[0x26676DCA0](v146, -1, -1);
        }

        (v283)(v143, v96);
        v147 = swift_allocObject();
        v148 = v278;
        *(v147 + 16) = v273;
        *(v147 + 24) = v148;
        *(v147 + 32) = v270 & 1;
        *(v147 + 33) = v269 & 1;
        *(v147 + 34) = 1;
        *(v147 + 35) = v272;
        *(v147 + 36) = v271 & 1;

        v149 = v148;
        v283 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
        v150 = v257;
        sub_265BF2DF0();
        sub_265BF3180();
        v151 = sub_265BF2F30();
        v152 = *(v151 + 48);
        v153 = *(v151 + 52);
        swift_allocObject();
        v154 = sub_265BF2F00();
        v155 = v243;
        sub_265BF2F50();

        sub_265BF3200();
        sub_265BF31E0();
        (*(v241 + 8))(v155, v242);
        sub_265BF2F50();
        v156 = sub_265BF31C0();
        v157 = *(v156 + 48);
        v158 = *(v156 + 52);
        swift_allocObject();
        v159 = sub_265BF3190();
        v276 = v159;
        v287 = v154;
        v160 = sub_265BF3350();
        v274 = v160;
        v162 = v161;
        sub_265BF2C20();
        v163 = swift_allocObject();
        v278 = v154;
        *(v163 + 16) = v154;
        *(v163 + 24) = v159;
        *(v163 + 32) = v160;
        *(v163 + 40) = v162;
        v273 = v162;
        *(v163 + 48) = "DeviceConnection.connect";
        *(v163 + 56) = 24;
        *(v163 + 64) = 2;

        v164 = v261;
        sub_265BF2DF0();
        v165 = v259;
        v166 = v259[2];
        v266 = v259 + 2;
        v272 = v166;
        v167 = v256;
        v168 = v150;
        v169 = v260;
        v166(v256, v168, v260);
        v170 = *(v165 + 80);
        v171 = v165;
        v267 = ((v170 + 16) & ~v170) + v244;
        v172 = (v170 + 16) & ~v170;
        v270 = v172;
        v271 = v170;
        v173 = swift_allocObject();
        v174 = v171[4];
        v265 = v171 + 4;
        v269 = v174;
        v174(v173 + v172, v167, v169);
        v175 = v254;
        v176 = v247;
        v177 = v263;
        (*(v254 + 16))(v247, v164, v263);
        v178 = (*(v175 + 80) + 16) & ~*(v175 + 80);
        v179 = (v246 + v178 + 7) & 0xFFFFFFFFFFFFFFF8;
        v180 = swift_allocObject();
        (*(v175 + 32))(v180 + v178, v176, v177);
        v181 = (v180 + v179);
        *v181 = sub_265BEC48C;
        v181[1] = v173;
        v182 = v245;
        sub_265BF2DF0();
        v183 = v253;
        v184 = v249;
        v185 = v262;
        (*(v253 + 16))(v249, v268, v262);
        v186 = (*(v183 + 80) + 49) & ~*(v183 + 80);
        v187 = (v248 + v186 + 7) & 0xFFFFFFFFFFFFFFF8;
        v188 = swift_allocObject();
        v189 = v273;
        *(v188 + 16) = v274;
        *(v188 + 24) = v189;
        *(v188 + 32) = "DeviceConnection.connect";
        *(v188 + 40) = 24;
        *(v188 + 48) = 2;
        (*(v183 + 32))(v188 + v186, v184, v185);
        *(v188 + v187) = v276;
        *(v188 + ((v187 + 15) & 0xFFFFFFFFFFFFFFF8)) = v278;
        v190 = v256;
        v191 = v260;
        v272(v256, v182, v260);
        v192 = (v267 + 7) & 0xFFFFFFFFFFFFFFF8;
        v193 = swift_allocObject();
        v269(v193 + v270, v190, v191);
        v194 = (v193 + v192);
        *v194 = sub_265BEC540;
        v194[1] = v188;

        v195 = v252;
        sub_265BF2DF0();
        v196 = v259[1];
        v196(v182, v191);
        (*(v175 + 8))(v261, v263);
        (*(v183 + 8))(v268, v262);
        (*(v250 + 8))(v258, v251);
        v196(v257, v191);

        v197 = swift_allocObject();
        *(v197 + 16) = v284;
        *(v197 + 24) = v281;

        v198 = sub_265BF2E40();
        v199 = swift_allocObject();
        *(v199 + 16) = sub_265BD227C;
        *(v199 + 24) = v197;

        v198(sub_265BEC6E4, v199);

        v196(v195, v191);
        v279(v275, v277);
      }
    }
  }

  else
  {
    v103 = v20;
    v104 = v264;
    v105 = v265;
    v275 = v19;
    v276 = v24;
    v277 = v26;
    v238 = v67;
    sub_265BB9CAC(a2 + 16, v296);
    sub_265BB9CAC(a2 + 72, v295);
    v106 = *(a2 + 120);
    if (qword_281068AD8 != -1)
    {
      swift_once();
    }

    v107 = __swift_project_value_buffer(v103, qword_281068AE0);
    v108 = v277;
    sub_265BD9C50(v107, v277);
    sub_265BC3598();
    v109 = sub_265BF3520();
    v268 = v109;
    v110 = type metadata accessor for UnstableDeviceConnection(0);
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    v113 = swift_allocObject();
    (*(v104 + 104))(v275, *MEMORY[0x277D4EE68], v105);
    LOBYTE(v287) = 0;
    sub_265BF2EF0();
    sub_265BB9CAC(v296, v113 + 16);
    *(v113 + 56) = v274;
    v114 = v272;
    *(v113 + 57) = v272;
    LODWORD(v274) = v114;
    v115 = v278;
    *(v113 + 64) = v278;
    *(v113 + 72) = v269 & 1;
    sub_265BB9CAC(v295, v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider);
    *(v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority) = v106;
    *(v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_queue) = v109;
    v116 = v270 & 1;
    *(v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service) = v270 & 1;
    v117 = v271 & 1;
    *(v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic) = v271 & 1;
    sub_265BD9C50(v108, v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_preferredCompression);
    sub_265BB9CAC(v296, v294);
    LOBYTE(v109) = v106;
    v118 = v276;
    sub_265BD9C50(v108, v276);
    v119 = type metadata accessor for DeviceConnection();
    v120 = *(v119 + 48);
    v121 = *(v119 + 52);
    v122 = swift_allocObject();
    *(v122 + 88) = 0;
    *(v122 + 96) = 0;
    sub_265BB9CAC(v294, v122 + 16);
    *(v122 + 56) = v114;
    v123 = v283;
    *(v122 + 64) = v282;
    *(v122 + 72) = v123;
    sub_265BD9C50(v118, v122 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
    *(v122 + 59) = v109;
    *(v122 + 58) = v116;
    *(v122 + 57) = v117;
    v287 = 0;
    v288 = 0xE000000000000000;
    v124 = v268;
    v278 = v115;
    v125 = v124;
    swift_unknownObjectRetain();
    sub_265BF3620();
    MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
    v293 = v117;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v293 = v116;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v293 = v114;
    sub_265BF3670();
    v126 = sub_265BF30D0();
    v127 = *(v126 + 48);
    v128 = *(v126 + 52);
    swift_allocObject();
    v275 = v125;
    *(v122 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
    v129 = sub_265BF2EC0();
    v130 = *(v129 + 48);
    v131 = *(v129 + 52);
    swift_allocObject();
    *(v122 + 80) = sub_265BF2EB0();
    sub_265BD9CB4();
    v132 = sub_265BF3330();

    if (v274 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265BF5780;
      v134 = *MEMORY[0x277D44280];
      v287 = sub_265BF3340();
      v288 = v135;
      sub_265BF3600();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_265BE5574(inited);
      swift_setDeallocating();
      sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
      v136 = sub_265BF32E0();

      v291 = nullsub_1;
      v292 = 0;
      v287 = MEMORY[0x277D85DD0];
      v288 = 1107296256;
      v289 = sub_265BDAB80;
      v290 = &block_descriptor_47_0;
      v137 = _Block_copy(&v287);
      [v282 registerEventID:v132 options:v136 handler:v137];
      _Block_release(v137);
    }

    else
    {
      v200 = swift_allocObject();
      swift_weakInit();
      v291 = sub_265BD9E58;
      v292 = v200;
      v287 = MEMORY[0x277D85DD0];
      v288 = 1107296256;
      v289 = sub_265BD9EF4;
      v290 = &block_descriptor_36;
      v201 = _Block_copy(&v287);

      v202 = v282;
      [v282 registerRequestID:v132 options:0 handler:v201];
      _Block_release(v201);

      sub_265BD9CB4();
      v136 = sub_265BF3330();

      v203 = swift_allocObject();
      swift_weakInit();

      v291 = sub_265BDA150;
      v292 = v203;
      v287 = MEMORY[0x277D85DD0];
      v288 = 1107296256;
      v289 = sub_265BDAB80;
      v290 = &block_descriptor_40_0;
      v204 = _Block_copy(&v287);

      [v202 registerEventID:v136 options:0 handler:v204];
      _Block_release(v204);
    }

    v205 = swift_getObjectType();
    v206 = swift_allocObject();
    swift_weakInit();
    v207 = v283;
    v208 = *(v283 + 248);

    v208(sub_265BDAFC0, v206, v205, v207);
    v209 = v275;

    sub_265BDAFC8(v276);
    __swift_destroy_boxed_opaque_existential_0Tm(v294);

    v210 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v211 = v266;
    *v266 = v122;

    sub_265BF2C20();

    sub_265BDAFC8(v277);
    __swift_destroy_boxed_opaque_existential_0Tm(v295);
    __swift_destroy_boxed_opaque_existential_0Tm(v296);
    swift_storeEnumTagMultiPayload();
    sub_265BEC3D8(v211, v113 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state);
    v212 = swift_allocObject();
    swift_weakInit();
    v213 = *(v122 + 88);
    v214 = *(v122 + 96);
    *(v122 + 88) = sub_265BEC43C;
    *(v122 + 96) = v212;
    sub_265BB060C(v213);

    v215 = v238;
    sub_265BF3150();
    v216 = v273;

    v217 = v278;

    v218 = sub_265BF3230();
    v219 = sub_265BF34E0();

    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      v222 = v216;
      v223 = swift_slowAlloc();
      v296[0] = v223;
      *v220 = 136446722;
      v287 = 0;
      v288 = 0xE000000000000000;
      sub_265BF3620();

      v287 = 0xD000000000000017;
      v288 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](*(v222 + 56), *(v222 + 64));
      v224 = sub_265BB064C(v287, v288, v296);

      *(v220 + 4) = v224;
      *(v220 + 12) = 2114;
      *(v220 + 14) = v217;
      *v221 = v217;
      *(v220 + 22) = 2082;
      v225 = v217;

      v226 = sub_265BF1288();
      v228 = v227;

      v229 = sub_265BB064C(v226, v228, v296);

      *(v220 + 24) = v229;
      _os_log_impl(&dword_265BAD000, v218, v219, "%{public}s: Activating device (%{public}@) connection link successful: %{public}s", v220, 0x20u);
      sub_265BB0750(v221, &qword_28003C4A0, &qword_265BF5020);
      MEMORY[0x26676DCA0](v221, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v223, -1, -1);
      MEMORY[0x26676DCA0](v220, -1, -1);

      (*(v279 + 1))(v238, v280);
    }

    else
    {

      (*(v279 + 1))(v215, v280);
    }

    v230 = v284;
    v231 = sub_265BEC444(&qword_28003C630, type metadata accessor for UnstableDeviceConnection);
    v232 = sub_265BEC444(&qword_28003C638, type metadata accessor for UnstableDeviceConnection);

    v230(v233, v231, v232, 0);
  }
}

unint64_t sub_265BEB774@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  sub_265BF3150();
  sub_265BF3220();
  v43 = *(v5 + 8);
  v44 = v4;
  v43(v14, v4);
  v15 = v2[14];
  sub_265BF2EA0();
  v17 = v46;
  v16 = v47;
  v18 = v48;
  if (v46 >= 2)
  {
    swift_unknownObjectRetain();
    if (v18)
    {
      v28 = sub_265BF3330();
      [v17 tryPassword_];

      sub_265BF2E50();
      v29 = v17;
    }

    else
    {
      v41 = v18;
      v42 = v16;
      sub_265BF3150();

      v30 = sub_265BF3230();
      v31 = sub_265BF34D0();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v40 = a1;
        v34 = v33;
        v45[0] = v33;
        *v32 = 136446210;
        v46 = 0;
        v47 = 0xE000000000000000;
        sub_265BF3620();

        v46 = 0xD000000000000017;
        v47 = 0x8000000265BFA650;
        MEMORY[0x26676D1B0](v2[7], v2[8]);
        v35 = sub_265BB064C(v46, v47, v45);

        *(v32 + 4) = v35;
        _os_log_impl(&dword_265BAD000, v30, v31, "%{public}s: password attempt for link that doesn't require authentication", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x26676DCA0](v34, -1, -1);
        MEMORY[0x26676DCA0](v32, -1, -1);
      }

      v43(v12, v44);
      v36 = sub_265BF2D20();
      sub_265BEC444(&qword_281068900, MEMORY[0x277D52688]);
      v37 = swift_allocError();
      (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D52640], v36);
      *(swift_allocObject() + 16) = v37;
      sub_265BF2E00();
      v29 = v17;
    }

    sub_265BEC238(v29);
  }

  else
  {
    v41 = v48;
    v42 = v47;
    sub_265BF3150();

    v19 = sub_265BF3230();
    v20 = sub_265BF34D0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40 = a1;
      v23 = v22;
      v45[0] = v22;
      *v21 = 136446210;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_265BF3620();

      v46 = 0xD000000000000017;
      v47 = 0x8000000265BFA650;
      MEMORY[0x26676D1B0](v2[7], v2[8]);
      v24 = sub_265BB064C(v46, v47, v45);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_265BAD000, v19, v20, "%{public}s: Provided a password while connection was not in progress", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x26676DCA0](v23, -1, -1);
      MEMORY[0x26676DCA0](v21, -1, -1);
    }

    v43(v9, v44);
    v25 = sub_265BF2D20();
    sub_265BEC444(&qword_281068900, MEMORY[0x277D52688]);
    v26 = swift_allocError();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D52628], v25);
    *(swift_allocObject() + 16) = v26;
    sub_265BF2E00();
  }

  return sub_265BEC238(v17);
}

unint64_t sub_265BEBDD0(uint64_t a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 128);
  if (v7 >= 2)
  {
    v14 = *(a1 + 136);
    v15 = *(a1 + 144);
    v16 = *(a1 + 128);
    ObjectType = swift_getObjectType();
    v18 = *(v14 + 272);
    swift_unknownObjectRetain();
    v18(ObjectType, v14);
    v19 = *(a1 + 128);
    v20 = *(a1 + 136);
    *(a1 + 128) = xmmword_265BF5230;
    v21 = *(a1 + 144);
    *(a1 + 144) = 0;
    sub_265BEC238(v19);
    sub_265BF2E50();
    return sub_265BEC238(v7);
  }

  else
  {
    sub_265BF3150();
    v8 = sub_265BF3230();
    v9 = sub_265BF34D0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_265BAD000, v8, v9, "Cannot cancel device connection, connection not in progress", v10, 2u);
      MEMORY[0x26676DCA0](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_265BEC1CC();
    v11 = swift_allocError();
    *v12 = 0;
    *(swift_allocObject() + 16) = v11;
    return sub_265BF2E00();
  }
}

uint64_t sub_265BEC00C()
{
  v1 = *(v0 + 112);
  sub_265BF2EA0();
  return v3;
}

uint64_t sub_265BEC06C()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3150();
  sub_265BF3220();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  return sub_265BF2EA0();
}

unint64_t sub_265BEC1CC()
{
  result = qword_28003C610;
  if (!qword_28003C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C610);
  }

  return result;
}

unint64_t sub_265BEC238(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_265BEC248(_BYTE *a1@<X8>)
{
  if (*(v1 + 128) >= 2uLL)
  {
    *a1 = *(v1 + 144) & 1;
  }

  else
  {
    *a1 = 0;
  }
}

unint64_t sub_265BEC284(unint64_t result)
{
  if (result >= 2)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_265BEC2A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 144);
  return sub_265BEC284(v2);
}

unint64_t sub_265BEC2E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  *(v1 + 128) = *(v0 + 24);
  v5 = *(v1 + 144);
  *(v1 + 144) = v2;
  swift_unknownObjectRetain();
  return sub_265BEC238(v3);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_265BEC3D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstableDeviceConnection.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BEC444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265BEC48C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_265BD1B2C(v4, a1);
}

uint64_t sub_265BEC540(uint64_t a1)
{
  v3 = *(sub_265BF2C30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BD1AD0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BEC61C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_265BEC760()
{
  v0 = type metadata accessor for DeviceConnectionCompression();
  __swift_allocate_value_buffer(v0, qword_281068AE0);
  v1 = __swift_project_value_buffer(v0, qword_281068AE0);
  v2 = sub_265BF2CF0();
  v3 = *(v2 - 8);
  v7 = *(v3 + 56);
  v7(v1, 1, 1, v2);
  v4 = *(v0 + 20);
  (*(v3 + 104))(v1 + v4, *MEMORY[0x277D51F98], v2);
  v7(v1 + v4, 0, 1, v2);
  v5 = v1 + *(v0 + 24);

  return (v7)(v5, 1, 1, v2);
}

uint64_t type metadata accessor for DeviceConnectionCompression()
{
  result = qword_281068AC8;
  if (!qword_281068AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BEC8E4()
{
  v0 = type metadata accessor for DeviceConnectionCompression();
  __swift_allocate_value_buffer(v0, qword_28003C640);
  v1 = __swift_project_value_buffer(v0, qword_28003C640);
  v2 = sub_265BF2CF0();
  v5 = *(*(v2 - 8) + 56);
  (v5)((v2 - 8), v1, 1, 1, v2);
  v5(v1 + *(v0 + 20), 1, 1, v2);
  v3 = v1 + *(v0 + 24);

  return (v5)(v3, 1, 1, v2);
}

uint64_t sub_265BECA00@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for DeviceConnectionCompression();
  v6 = __swift_project_value_buffer(v5, a2);

  return sub_265BD9C50(v6, a3);
}

uint64_t DeviceConnectionCompression.hash(into:)()
{
  v1 = v0;
  v2 = sub_265BF2CF0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v21 = v1;
  sub_265BED5FC(v1, &v20 - v15);
  v17 = *(v3 + 48);
  if (v17(v16, 1, v2) == 1)
  {
    sub_265BF37D0();
  }

  else
  {
    (*(v3 + 32))(v6, v16, v2);
    sub_265BF37D0();
    sub_265BED7A8(&qword_28003C658, MEMORY[0x277D51FA0]);
    sub_265BF3310();
    (*(v3 + 8))(v6, v2);
  }

  v18 = type metadata accessor for DeviceConnectionCompression();
  sub_265BED5FC(v21 + *(v18 + 20), v14);
  if (v17(v14, 1, v2) == 1)
  {
    sub_265BF37D0();
  }

  else
  {
    (*(v3 + 32))(v6, v14, v2);
    sub_265BF37D0();
    sub_265BED7A8(&qword_28003C658, MEMORY[0x277D51FA0]);
    sub_265BF3310();
    (*(v3 + 8))(v6, v2);
  }

  sub_265BED5FC(v21 + *(v18 + 24), v11);
  if (v17(v11, 1, v2) == 1)
  {
    return sub_265BF37D0();
  }

  (*(v3 + 32))(v6, v11, v2);
  sub_265BF37D0();
  sub_265BED7A8(&qword_28003C658, MEMORY[0x277D51FA0]);
  sub_265BF3310();
  return (*(v3 + 8))(v6, v2);
}

uint64_t DeviceConnectionCompression.hashValue.getter()
{
  sub_265BF37B0();
  DeviceConnectionCompression.hash(into:)();
  return sub_265BF37E0();
}

uint64_t sub_265BECE80()
{
  sub_265BF37B0();
  DeviceConnectionCompression.hash(into:)();
  return sub_265BF37E0();
}

uint64_t sub_265BECEC4()
{
  sub_265BF37B0();
  DeviceConnectionCompression.hash(into:)();
  return sub_265BF37E0();
}

BOOL _s19SeymourServicesCore27DeviceConnectionCompressionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BF2CF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v54 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v51 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C668, &unk_265BF5DD0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v55 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v51 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v51 - v25;
  v27 = *(v24 + 48);
  v58 = a1;
  sub_265BED5FC(a1, &v51 - v25);
  v57 = a2;
  sub_265BED5FC(a2, &v26[v27]);
  v28 = *(v5 + 48);
  if (v28(v26, 1, v4) == 1)
  {
    if (v28(&v26[v27], 1, v4) == 1)
    {
      v52 = v8;
      v53 = v5;
      sub_265BB0750(v26, &qword_28003C550, &qword_265BF5D30);
      goto LABEL_8;
    }

LABEL_6:
    v29 = v26;
LABEL_21:
    sub_265BB0750(v29, &qword_28003C668, &unk_265BF5DD0);
    return 0;
  }

  sub_265BED5FC(v26, v16);
  if (v28(&v26[v27], 1, v4) == 1)
  {
    (*(v5 + 8))(v16, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v8, &v26[v27], v4);
  sub_265BED7A8(&qword_28003C670, MEMORY[0x277D51FA0]);
  v30 = sub_265BF3320();
  v53 = v5;
  v31 = *(v5 + 8);
  v52 = v8;
  v31();
  (v31)(v16, v4);
  sub_265BB0750(v26, &qword_28003C550, &qword_265BF5D30);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v32 = type metadata accessor for DeviceConnectionCompression();
  v33 = *(v32 + 20);
  v34 = *(v17 + 48);
  sub_265BED5FC(v58 + v33, v23);
  v35 = v57;
  sub_265BED5FC(v57 + v33, &v23[v34]);
  if (v28(v23, 1, v4) != 1)
  {
    v51 = v32;
    v36 = v56;
    sub_265BED5FC(v23, v56);
    v37 = v28(&v23[v34], 1, v4);
    v39 = v52;
    v38 = v53;
    if (v37 != 1)
    {
      (*(v53 + 32))(v52, &v23[v34], v4);
      sub_265BED7A8(&qword_28003C670, MEMORY[0x277D51FA0]);
      v40 = sub_265BF3320();
      v41 = *(v38 + 8);
      v41(v39, v4);
      v41(v36, v4);
      sub_265BB0750(v23, &qword_28003C550, &qword_265BF5D30);
      v32 = v51;
      if ((v40 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v53 + 8))(v36, v4);
    goto LABEL_13;
  }

  if (v28(&v23[v34], 1, v4) != 1)
  {
LABEL_13:
    v29 = v23;
    goto LABEL_21;
  }

  sub_265BB0750(v23, &qword_28003C550, &qword_265BF5D30);
LABEL_15:
  v42 = *(v32 + 24);
  v43 = *(v17 + 48);
  v44 = v55;
  sub_265BED5FC(v58 + v42, v55);
  sub_265BED5FC(v35 + v42, v44 + v43);
  if (v28(v44, 1, v4) == 1)
  {
    if (v28((v44 + v43), 1, v4) == 1)
    {
      sub_265BB0750(v44, &qword_28003C550, &qword_265BF5D30);
      return 1;
    }

    goto LABEL_20;
  }

  v45 = v54;
  sub_265BED5FC(v44, v54);
  if (v28((v44 + v43), 1, v4) == 1)
  {
    (*(v53 + 8))(v45, v4);
LABEL_20:
    v29 = v44;
    goto LABEL_21;
  }

  v48 = v52;
  v47 = v53;
  (*(v53 + 32))(v52, v44 + v43, v4);
  sub_265BED7A8(&qword_28003C670, MEMORY[0x277D51FA0]);
  v49 = sub_265BF3320();
  v50 = *(v47 + 8);
  v50(v48, v4);
  v50(v45, v4);
  sub_265BB0750(v44, &qword_28003C550, &qword_265BF5D30);
  return (v49 & 1) != 0;
}

uint64_t sub_265BED5FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_265BED6DC()
{
  sub_265BED750();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_265BED750()
{
  if (!qword_281068C98)
  {
    sub_265BF2CF0();
    v0 = sub_265BF35A0();
    if (!v1)
    {
      atomic_store(v0, &qword_281068C98);
    }
  }
}

uint64_t sub_265BED7A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t DeviceConnectionTransportPriority.hashValue.getter(char a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1 & 1);
  return sub_265BF37E0();
}

unint64_t sub_265BED8D8()
{
  result = qword_28003C678;
  if (!qword_28003C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C678);
  }

  return result;
}

uint64_t DeviceConnectionService.hashValue.getter(char a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1 & 1);
  return sub_265BF37E0();
}

unint64_t sub_265BED9C0()
{
  result = qword_28003C680;
  if (!qword_28003C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C680);
  }

  return result;
}

uint64_t DeviceConnectionTopic.hashValue.getter(char a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1 & 1);
  return sub_265BF37E0();
}

unint64_t sub_265BEDAA8()
{
  result = qword_28003C688;
  if (!qword_28003C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C688);
  }

  return result;
}

uint64_t sub_265BEDB0C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v36 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  sub_265BF3150();
  sub_265BF3220();
  v37 = *(v4 + 8);
  v38 = v3;
  v37(v12, v3);
  v13 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider + 24);
  v14 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider), v13);
  v15 = (*(v14 + 16))(v13, v14);
  v17 = v16;
  ObjectType = swift_getObjectType();
  v19 = *(v2 + 64);
  v20 = *(v17 + 104);
  v21 = v19;
  v20(v19, ObjectType, v17);
  *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service);
  v22 = sub_265BF3330();

  [v15 setServiceType_];

  if (*(v2 + 72))
  {
    v23 = 0x1000000100;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v17 + 40);
  v24(v23, ObjectType, v17);
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      v25 = v36;
      sub_265BF3150();
      v26 = sub_265BF3230();
      v27 = sub_265BF34E0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_265BAD000, v26, v27, "Authentication set to use previous pairing, attaching control flag to find PIN pairing record", v28, 2u);
        v29 = v28;
        v25 = v36;
        MEMORY[0x26676DCA0](v29, -1, -1);
      }

      v37(v25, v38);
      v30 = (*(v17 + 32))(ObjectType, v17);
      v24(v30 | 0x8000000000, ObjectType, v17);
    }

    else
    {
      sub_265BF3150();
      v31 = sub_265BF3230();
      v32 = sub_265BF34D0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_265BAD000, v31, v32, "UnstableDeviceConnection does not support forceNewPairing authentication schemes. This will be ignored.", v33, 2u);
        MEMORY[0x26676DCA0](v33, -1, -1);
      }

      v37(v8, v38);
    }
  }

  v34 = swift_allocObject();
  v34[2] = v15;
  v34[3] = v17;
  v34[4] = v2;
  type metadata accessor for DeviceConnection();

  return sub_265BF2DF0();
}

uint64_t sub_265BEDF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  v12[2] = sub_265BBB2F8;
  v12[3] = v10;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v13 = *(a4 + 264);

  swift_unknownObjectRetain();

  v13(sub_265BF17E4, v12, ObjectType, a4);
}

void sub_265BEE040(void *a1, void (*a2)(void *, uint64_t), void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v86 = sub_265BF3240();
  v12 = *(v86 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v86);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v80 - v17;
  v19 = type metadata accessor for DeviceConnectionCompression();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a2;
  v85 = a5;
  if (a1)
  {
    v84 = a4;
    v23 = a1;
    sub_265BF3150();
    v24 = a1;
    v25 = sub_265BF3230();
    v26 = sub_265BF34D0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446210;
      swift_getErrorValue();
      v29 = MEMORY[0x26676D550](v88, v89);
      v31 = sub_265BB064C(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_265BAD000, v25, v26, "Error retrying connection: %{public}s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x26676DCA0](v28, -1, -1);
      MEMORY[0x26676DCA0](v27, -1, -1);
    }

    (*(v12 + 8))(v16, v86);
    v32 = v85;
    v33 = a1;
    v87(a1, 1);

    ObjectType = swift_getObjectType();
    (*(v32 + 272))(ObjectType, v32);
  }

  else
  {
    v82 = v18;
    v83 = v12;
    v84 = a3;
    v35 = *(a6 + 57);
    v36 = a6;
    v37 = *(a6 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic);
    v38 = *(v36 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service);
    sub_265BB9CAC(v36 + 16, &v97);
    sub_265BF17F4(v36 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_preferredCompression, v22, type metadata accessor for DeviceConnectionCompression);
    v80 = v36;
    v39 = *(v36 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority);
    sub_265BC3598();
    v40 = sub_265BF3520();
    v41 = type metadata accessor for DeviceConnection();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    v44 = swift_allocObject();
    *(v44 + 88) = 0;
    *(v44 + 96) = 0;
    sub_265BB9CAC(&v97, v44 + 16);
    *(v44 + 56) = v35;
    *(v44 + 64) = a4;
    *(v44 + 72) = a5;
    v81 = v22;
    sub_265BF17F4(v22, v44 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression, type metadata accessor for DeviceConnectionCompression);
    *(v44 + 59) = v39;
    *(v44 + 58) = v38;
    *(v44 + 57) = v37;
    aBlock = 0;
    v91 = 0xE000000000000000;
    swift_unknownObjectRetain();
    v45 = v40;
    sub_265BF3620();
    MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
    v96 = v37;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v96 = v38;
    sub_265BF3670();
    MEMORY[0x26676D1B0](124, 0xE100000000000000);
    v96 = v35;
    sub_265BF3670();
    v46 = sub_265BF30D0();
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    swift_allocObject();
    *(v44 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
    v49 = sub_265BF2EC0();
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    *(v44 + 80) = sub_265BF2EB0();
    sub_265BD9CB4();
    v52 = sub_265BF3330();

    if (v35 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_265BF5780;
      v54 = *MEMORY[0x277D44280];
      aBlock = sub_265BF3340();
      v91 = v55;
      sub_265BF3600();
      *(inited + 96) = MEMORY[0x277D839B0];
      *(inited + 72) = 1;
      sub_265BE5574(inited);
      swift_setDeallocating();
      sub_265BF18BC(inited + 32);
      v56 = sub_265BF32E0();

      v94 = nullsub_1;
      v95 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_265BDAB80;
      v93 = &block_descriptor_65;
      v57 = _Block_copy(&aBlock);
      [a4 registerEventID:v52 options:v56 handler:v57];
      _Block_release(v57);
    }

    else
    {
      v58 = swift_allocObject();
      swift_weakInit();
      v94 = sub_265BD9E58;
      v95 = v58;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_265BD9EF4;
      v93 = &block_descriptor_56;
      v59 = _Block_copy(&aBlock);

      [a4 registerRequestID:v52 options:0 handler:v59];
      _Block_release(v59);

      sub_265BD9CB4();
      v56 = sub_265BF3330();

      v60 = swift_allocObject();
      swift_weakInit();

      v94 = sub_265BDA150;
      v95 = v60;
      aBlock = MEMORY[0x277D85DD0];
      v91 = 1107296256;
      v92 = sub_265BDAB80;
      v93 = &block_descriptor_60;
      v61 = _Block_copy(&aBlock);

      [a4 registerEventID:v56 options:0 handler:v61];
      _Block_release(v61);
    }

    v62 = swift_getObjectType();
    v63 = swift_allocObject();
    swift_weakInit();
    v64 = v85;
    v65 = *(v85 + 248);

    v65(sub_265BDAFC0, v63, v62, v64);

    sub_265BF185C(v81, type metadata accessor for DeviceConnectionCompression);
    __swift_destroy_boxed_opaque_existential_0Tm(&v97);

    v66 = swift_allocObject();
    swift_weakInit();
    v67 = *(v44 + 88);
    v68 = *(v44 + 96);
    *(v44 + 88) = sub_265BEC43C;
    *(v44 + 96) = v66;
    sub_265BBE62C(v67);
    v69 = v82;
    sub_265BF3150();

    v70 = sub_265BF3230();
    v71 = sub_265BF34E0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      aBlock = v73;
      *v72 = 136446210;

      v74 = DeviceConnection.description.getter();
      v76 = v75;

      v77 = sub_265BB064C(v74, v76, &aBlock);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_265BAD000, v70, v71, "Successful retry for connection: %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v73);
      MEMORY[0x26676DCA0](v73, -1, -1);
      MEMORY[0x26676DCA0](v72, -1, -1);
    }

    (*(v83 + 8))(v69, v86);
    v78 = v87;

    v78(v79, 0);
  }
}

uint64_t sub_265BEEAA8(double a1)
{
  v2 = v1;
  v4 = sub_265BF3270();
  v57 = *(v4 - 8);
  v58 = v4;
  v5 = *(v57 + 64);
  MEMORY[0x28223BE20](v4);
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_265BF32A0();
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265BF32C0();
  v51 = *(v9 - 8);
  v52 = v9;
  v10 = *(v51 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v50 = &v48 - v14;
  v15 = type metadata accessor for UnstableDeviceConnection.State(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v59 = sub_265BF3240();
  v19 = *(v59 - 1);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v59);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C6D0, &qword_265BF60E8);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v48 - v29;
  v31 = *(v27 + 16);
  v49 = v2;
  v31(&v48 - v29, v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection__disableReconnect, v26);
  sub_265BF2ED0();
  (*(v27 + 8))(v30, v26);
  if (aBlock[0])
  {
    sub_265BF3150();
    v32 = sub_265BF3230();
    v33 = sub_265BF34E0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_265BAD000, v32, v33, "Reconnect disabled, not scheduling", v34, 2u);
      MEMORY[0x26676DCA0](v34, -1, -1);
    }

    return (*(v19 + 8))(v23, v59);
  }

  else
  {
    sub_265BF3150();
    v36 = sub_265BF3230();
    v37 = sub_265BF34E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 134349056;
      *(v38 + 4) = a1;
      _os_log_impl(&dword_265BAD000, v36, v37, "Scheduling reconnect in %{public}f seconds", v38, 0xCu);
      MEMORY[0x26676DCA0](v38, -1, -1);
    }

    (*(v19 + 8))(v25, v59);
    *v18 = a1;
    swift_storeEnumTagMultiPayload();
    v39 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
    v40 = v49;
    swift_beginAccess();
    sub_265BF1764(v18, v40 + v39);
    swift_endAccess();
    v48 = *(v40 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_queue);
    sub_265BF32B0();
    sub_265BF3470();
    v41 = v50;
    sub_265BF32D0();
    v42 = v52;
    v59 = *(v51 + 8);
    v59(v13, v52);
    v43 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_265BF17C8;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265BB5860;
    aBlock[3] = &block_descriptor_10;
    v44 = _Block_copy(aBlock);

    v45 = v53;
    sub_265BF3290();
    v60 = MEMORY[0x277D84F90];
    sub_265BB59DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C2F0, &unk_265BF46E0);
    sub_265BB5A7C();
    v46 = v55;
    v47 = v58;
    sub_265BF35C0();
    MEMORY[0x26676D310](v41, v45, v46, v44);
    _Block_release(v44);
    (*(v57 + 8))(v46, v47);
    (*(v54 + 8))(v45, v56);
    v59(v41, v42);
  }
}

uint64_t sub_265BEF184()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BEF1DC();
  }

  return result;
}

uint64_t sub_265BEF1DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C318, &unk_265BF47B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v35 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v38 = &v33 - v13;
  v34 = v0;
  sub_265BEDB0C(v7);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_265BF14C0;
  *(v15 + 24) = v14;
  (*(v2 + 16))(v5, v7, v1);
  v16 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v17 = swift_allocObject();
  (*(v2 + 32))(v17 + v16, v5, v1);
  v18 = (v17 + ((v3 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_265BF1580;
  v18[1] = v15;
  v19 = v35;
  sub_265BF2DF0();
  (*(v2 + 8))(v7, v1);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_265BF15B0;
  *(v21 + 24) = v20;
  v23 = v36;
  v22 = v37;
  v24 = v19;
  (*(v8 + 16))(v36, v19, v37);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v23, v22);
  v27 = (v26 + ((v9 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_265BD1F7C;
  v27[1] = v21;
  v28 = v38;
  sub_265BF2DF0();
  v29 = *(v8 + 8);
  v29(v24, v22);
  v30 = sub_265BF2E40();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_265BB8654, v31);

  return (v29)(v28, v22);
}

uint64_t sub_265BEF658(uint64_t *a1)
{
  v2 = type metadata accessor for UnstableDeviceConnection.State(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    *v5 = v6;

    sub_265BF2C20();
    swift_storeEnumTagMultiPayload();
    v10 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
    swift_beginAccess();
    sub_265BF1764(v5, v8 + v10);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_265BEF784(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BEFDC8(a1);
  }

  return result;
}

uint64_t sub_265BEF7F8()
{
  v0 = type metadata accessor for UnstableDeviceConnection.State(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_265BF2C30();
  v47 = *(v48 - 8);
  v4 = *(v47 + 64);
  v5 = MEMORY[0x28223BE20](v48);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v44 - v7;
  v8 = sub_265BF3240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v44 - v14;
  sub_265BF3150();
  v16 = sub_265BF3230();
  v17 = sub_265BF34E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_265BAD000, v16, v17, "Unstable link disconnected", v18, 2u);
    MEMORY[0x26676DCA0](v18, -1, -1);
  }

  v19 = *(v9 + 8);
  v19(v15, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v21 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  v22 = Strong;
  swift_beginAccess();
  sub_265BF17F4(v22 + v21, v3, type metadata accessor for UnstableDeviceConnection.State);

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v3, type metadata accessor for UnstableDeviceConnection.State);
LABEL_6:
    sub_265BF3150();
    v23 = sub_265BF3230();
    v24 = sub_265BF34D0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_265BAD000, v23, v24, "Invalidation handler invoked while state was not connected", v25, 2u);
      MEMORY[0x26676DCA0](v25, -1, -1);
    }

    return (v19)(v13, v8);
  }

  v27 = *v3;

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10);
  v29 = v47;
  v30 = v46;
  v31 = v48;
  (*(v47 + 32))(v46, &v3[*(v28 + 48)], v48);
  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v33 = v32;
    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      sub_265BB9CAC(v34 + 16, v50);

      v44 = v50[4];
      __swift_project_boxed_opaque_existential_1(v50, v50[3]);

      v35 = v45;
      sub_265BF2C20();
      sub_265BF2C00();
      v37 = v36;
      (*(v29 + 8))(v35, v31);
      LOBYTE(v35) = v33[57];
      v38 = v33[OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic];
      v39 = v33[OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service];
      v40 = v33[72];
      v41 = v33[56];
      v42 = v33[OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority];

      v49[3] = &type metadata for UnstableDeviceDisconnectionAnalyticsEvent;
      v49[4] = sub_265BF146C();
      v43 = swift_allocObject();
      v49[0] = v43;
      *(v43 + 16) = v35;
      *(v43 + 17) = v40;
      v30 = v46;
      *(v43 + 18) = v38;
      v31 = v48;
      *(v43 + 19) = v39;
      v29 = v47;
      *(v43 + 20) = v41;
      *(v43 + 21) = v42;
      *(v43 + 24) = v37;
      *(v43 + 32) = 0;
      *(v43 + 40) = 0;
      sub_265BF3010();

      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    else
    {
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_265BEEAA8(1.0);
  }

  return (*(v29 + 8))(v30, v31);
}

uint64_t sub_265BEFDC8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UnstableDeviceConnection.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_265BF3240();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  sub_265BF3150();
  sub_265BF3220();
  v16 = *(v9 + 8);
  v16(v15, v8);
  v17 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v2 + v17, v7, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v7;
    v19 = *(v2 + 40);
    v34[1] = *(v2 + 48);
    __swift_project_boxed_opaque_existential_1((v2 + 16), v19);
    v20 = *(v2 + 57);
    v21 = *(v2 + 72);
    v22 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic);
    v23 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service);
    v24 = *(v2 + 56);
    v25 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_transportPriority);
    v35[3] = &type metadata for UnstableDeviceDisconnectionAnalyticsEvent;
    v35[4] = sub_265BF146C();
    v26 = swift_allocObject();
    v35[0] = v26;
    *(v26 + 16) = v20;
    *(v26 + 17) = v21;
    *(v26 + 18) = v22;
    *(v26 + 19) = v23;
    *(v26 + 20) = v24;
    *(v26 + 21) = v25;
    *(v26 + 24) = 0;
    *(v26 + 32) = v18;
    *(v26 + 40) = a1;
    v27 = a1;
    sub_265BF3010();
    v28 = __swift_destroy_boxed_opaque_existential_0Tm(v35);
    v29.n128_f64[0] = v18 + v18;
    if (v18 + v18 > 30.0)
    {
      v29.n128_f64[0] = 30.0;
    }

    return sub_265BEEAA8(v28, v29);
  }

  else
  {
    sub_265BF185C(v7, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BF3150();
    v31 = sub_265BF3230();
    v32 = sub_265BF34D0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_265BAD000, v31, v32, "Unexpected reconnection error, not in state reconnecting", v33, 2u);
      MEMORY[0x26676DCA0](v33, -1, -1);
    }

    return (v16)(v13, v8);
  }
}

uint64_t sub_265BF0128()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  sub_265BF185C(v0 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_preferredCompression, type metadata accessor for DeviceConnectionCompression);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_linkProvider));

  sub_265BF185C(v0 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state, type metadata accessor for UnstableDeviceConnection.State);
  v1 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection__disableReconnect;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C6D0, &qword_265BF60E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_265BF0270()
{
  v0 = type metadata accessor for DeviceConnectionCompression();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UnstableDeviceConnection.State(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_265BF03D4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_265BF03D4()
{
  if (!qword_2810688F0)
  {
    v0 = sub_265BF2EE0();
    if (!v1)
    {
      atomic_store(v0, &qword_2810688F0);
    }
  }
}

void sub_265BF0434()
{
  sub_265BF04A8();
  if (v0 <= 0x3F)
  {
    sub_265BF051C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_265BF04A8()
{
  if (!qword_28003C6B8)
  {
    type metadata accessor for DeviceConnection();
    sub_265BF2C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28003C6B8);
    }
  }
}

uint64_t sub_265BF051C()
{
  result = qword_28003C6C0;
  if (!qword_28003C6C0)
  {
    result = MEMORY[0x277D839F8];
    atomic_store(MEMORY[0x277D839F8], &qword_28003C6C0);
  }

  return result;
}

uint64_t sub_265BF054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UnstableDeviceConnection.State(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v2 + v9, v8, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v8, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v10 = swift_allocError();
    *v11 = 0;
    *(swift_allocObject() + 16) = v10;
    return sub_265BF2E00();
  }

  else
  {
    v13 = *v8;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v15 = sub_265BF2C30();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
    DeviceConnection.sendRequest(_:)(a1, a2);
  }
}

uint64_t sub_265BF0714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = type metadata accessor for UnstableDeviceConnection.State(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v6 + v17, v16, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v16, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v18 = swift_allocError();
    *v19 = 0;
    *(swift_allocObject() + 16) = v18;
    return sub_265BF2E00();
  }

  else
  {
    v21 = *v16;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v23 = sub_265BF2C30();
    (*(*(v23 - 8) + 8))(&v16[v22], v23);
    DeviceConnection.sendRequest<A>(_:payload:)(a1, a2, a3, a4, a5, a6);
  }
}

void sub_265BF090C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for UnstableDeviceConnection.State(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v5 + v15, v14, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v14, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v16 = swift_allocError();
    *v17 = 0;
    sub_265BF2E10();
  }

  else
  {
    v18 = *v14;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v20 = sub_265BF2C30();
    (*(*(v20 - 8) + 8))(&v14[v19], v20);
    DeviceConnection.sendRequest<A>(_:)(a1, a2, a3, a4, a5);
  }
}

void sub_265BF0ACC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a7;
  v28 = a8;
  v26 = a6;
  v16 = type metadata accessor for UnstableDeviceConnection.State(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v9 + v20, v19, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v19, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BEC1CC();
    v21 = swift_allocError();
    *v22 = 0;
    sub_265BF2E10();
  }

  else
  {
    v23 = *v19;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v25 = sub_265BF2C30();
    (*(*(v25 - 8) + 8))(&v19[v24], v25);
    DeviceConnection.sendRequest<A, B>(_:payload:)(a1, a2, a3, a4, a5, v26, v27, v28, a9);
  }
}

uint64_t sub_265BF0CA4(uint64_t a1)
{
  v3 = type metadata accessor for UnstableDeviceConnection.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v1 + v7, v6, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_265BF185C(v6, type metadata accessor for UnstableDeviceConnection.State);
  }

  v9 = *v6;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
  v11 = sub_265BF2C30();
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  DeviceConnection.broadcastEvent<A>(_:payload:)(a1);
}

uint64_t sub_265BF0E3C(uint64_t a1)
{
  v3 = type metadata accessor for UnstableDeviceConnection.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v1 + v7, v6, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_265BF185C(v6, type metadata accessor for UnstableDeviceConnection.State);
  }

  v9 = *v6;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
  v11 = sub_265BF2C30();
  (*(*(v11 - 8) + 8))(&v6[v10], v11);
  DeviceConnection.broadcastEvent(_:data:)(a1, 0, 0xF000000000000000);
}

uint64_t sub_265BF0FA0()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UnstableDeviceConnection.State(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_state;
  swift_beginAccess();
  sub_265BF17F4(v1 + v11, v10, type metadata accessor for UnstableDeviceConnection.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_265BF185C(v10, type metadata accessor for UnstableDeviceConnection.State);
    sub_265BF3150();
    v12 = sub_265BF3230();
    v13 = sub_265BF34D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265BAD000, v12, v13, "DispatchService requested while unstable connection was not connected", v14, 2u);
      MEMORY[0x26676DCA0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v15 = *(v1 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_queue);
    sub_265BF3370();
    v16 = sub_265BF30D0();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    return sub_265BF30C0();
  }

  else
  {
    v20 = *v10;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C628, &unk_265BF5D10) + 48);
    v22 = sub_265BF2C30();
    (*(*(v22 - 8) + 8))(&v10[v21], v22);
    v23 = *(v20 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService);

    return v23;
  }
}

uint64_t sub_265BF1288()
{
  v1 = v0;
  v2 = *(v0 + 64);
  v3 = [v2 description];
  v4 = sub_265BF3340();
  v6 = v5;

  BYTE8(v8) = 0;
  sub_265BF3620();
  MEMORY[0x26676D1B0](0xD000000000000023, 0x8000000265BFA770);
  v9 = *(v1 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_topic);
  sub_265BF3670();
  MEMORY[0x26676D1B0](0x636976726573202CLL, 0xEC000000203D2065);
  v10 = *(v1 + OBJC_IVAR____TtC19SeymourServicesCore24UnstableDeviceConnection_service);
  sub_265BF3670();
  MEMORY[0x26676D1B0](0xD000000000000010, 0x8000000265BFA7A0);
  *&v8 = *(v1 + 57);
  sub_265BF3670();
  MEMORY[0x26676D1B0](540945696, 0xE400000000000000);
  MEMORY[0x26676D1B0](v4, v6);

  MEMORY[0x26676D1B0](62, 0xE100000000000000);
  return *(&v8 + 1);
}

unint64_t sub_265BF146C()
{
  result = qword_28003C6C8;
  if (!qword_28003C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C6C8);
  }

  return result;
}

uint64_t sub_265BF14DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_265BF2DF0();
}

uint64_t sub_265BF15F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_265BF16BC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  a3(&v8, &v7);
  v6 = v8;
  v9 = 0;
  a1(&v8);

  sub_265BB85E0(v6, 0);
}

uint64_t sub_265BF1764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnstableDeviceConnection.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BF17F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265BF185C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265BF18BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C548, &unk_265BF5D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DataProtectionUpdated.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265BF3020();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_265BF19B8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265BF3020();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for DataProtectionUpdated(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataProtectionUpdated(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id sub_265BF1BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BF3240();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_265BF3330();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    a1 = sub_265BF3340();
    a2 = v9;
  }

  else
  {
  }

  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v11 = sub_265BF20B8(a1, a2, 0);
  v12 = [v11 applicationState];
  v13 = [v12 isInstalled];

  return v13;
}

Swift::Bool __swiftcall AppInstallStateChecker.anyApplicationBundleIsInstalled(_:)(Swift::OpaquePointer a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1._rawValue + 40);
  v8 = *(a1._rawValue + 2) + 1;
  while (--v8)
  {
    v9 = v7 + 2;
    v11 = *(v7 - 1);
    v10 = *v7;

    LOBYTE(v11) = sub_265BF1BA8(v11, v10);

    v7 = v9;
    if (v11)
    {
      return v8 != 0;
    }
  }

  sub_265BF3130();

  v12 = sub_265BF3230();
  v13 = sub_265BF34E0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    v16 = MEMORY[0x26676D210](a1._rawValue, MEMORY[0x277D837D0]);
    v18 = sub_265BB064C(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_265BAD000, v12, v13, "None of the following app bundles are installed: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x26676DCA0](v15, -1, -1);
    MEMORY[0x26676DCA0](v14, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v8 != 0;
}

id sub_265BF20B8(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_265BF3330();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_265BF2B90();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AppLaunchState.hashValue.getter(unsigned __int8 a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1);
  return sub_265BF37E0();
}

unint64_t sub_265BF2254()
{
  result = qword_28003C6D8;
  if (!qword_28003C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C6D8);
  }

  return result;
}

char *sub_265BF22BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C6E0, &qword_265BF62A0);
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

uint64_t _s19SeymourServicesCore7SandboxV9bootstrapyySSFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  v15 = sub_265BF3420();
  *(v15 + 16) = 1024;
  bzero((v15 + 32), 0x400uLL);
  sub_265BF3380();

  v16 = _set_user_dir_suffix();

  if (!v16)
  {
    v19 = MEMORY[0x26676D060](v17);
    if (strerror(v19))
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_12;
  }

  v9 = *(v15 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_265BF22BC(0, *(v15 + 16), 0, v15);
  }

  if (!confstr(65537, (v15 + 32), v9))
  {
LABEL_12:
    v20 = MEMORY[0x26676D060]();
    if (strerror(v20))
    {
      v33 = sub_265BF33B0();
      v35 = v34;
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_265BF3620();
      MEMORY[0x26676D1B0](0xD000000000000034, 0x8000000265BFA8C0);
      MEMORY[0x26676D1B0](a1, a2);
      v36 = MEMORY[0x26676D1B0](10272, 0xE200000000000000);
      LODWORD(v56) = MEMORY[0x26676D060](v36);
      v37 = sub_265BF36D0();
      MEMORY[0x26676D1B0](v37);

      MEMORY[0x26676D1B0](2112041, 0xE300000000000000);
      MEMORY[0x26676D1B0](v33, v35);
      v38 = v57;
      v39 = v58;

      sub_265BF3130();

      v40 = sub_265BF3230();
      v41 = sub_265BF34D0();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v56 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_265BB064C(v38, v39, &v56);
        _os_log_impl(&dword_265BAD000, v40, v41, "Sandbox bootstrap error: %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v43);
        MEMORY[0x26676DCA0](v43, -1, -1);
        MEMORY[0x26676DCA0](v42, -1, -1);
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (!mkdir((v15 + 32), 0x2BCu) && MEMORY[0x26676D060]() != 17)
  {
LABEL_14:
    v21 = MEMORY[0x26676D060]();
    if (strerror(v21))
    {
      v44 = sub_265BF33B0();
      v46 = v45;
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_265BF3620();
      MEMORY[0x26676D1B0](0xD000000000000029, 0x8000000265BFA890);
      MEMORY[0x26676D1B0](a1, a2);
      v47 = MEMORY[0x26676D1B0](10272, 0xE200000000000000);
      LODWORD(v56) = MEMORY[0x26676D060](v47);
      v48 = sub_265BF36D0();
      MEMORY[0x26676D1B0](v48);

      MEMORY[0x26676D1B0](2112041, 0xE300000000000000);
      MEMORY[0x26676D1B0](v44, v46);
      v49 = v57;
      v50 = v58;

      sub_265BF3130();

      v51 = sub_265BF3230();
      v52 = sub_265BF34D0();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v56 = v54;
        *v53 = 136446210;
        *(v53 + 4) = sub_265BB064C(v49, v50, &v56);
        _os_log_impl(&dword_265BAD000, v51, v52, "Sandbox bootstrap error: %{public}s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        MEMORY[0x26676DCA0](v54, -1, -1);
        MEMORY[0x26676DCA0](v53, -1, -1);
      }

      (*(v5 + 8))(v14, v4);
      goto LABEL_25;
    }

    __break(1u);
LABEL_16:
    v22 = sub_265BF33B0();
    v24 = v23;
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_265BF3620();
    MEMORY[0x26676D1B0](0xD00000000000002DLL, 0x8000000265BFA830);
    MEMORY[0x26676D1B0](a1, a2);
    v25 = MEMORY[0x26676D1B0](10272, 0xE200000000000000);
    LODWORD(v56) = MEMORY[0x26676D060](v25);
    v26 = sub_265BF36D0();
    MEMORY[0x26676D1B0](v26);

    MEMORY[0x26676D1B0](2112041, 0xE300000000000000);
    MEMORY[0x26676D1B0](v22, v24);
    v27 = v57;
    v28 = v58;

    sub_265BF3130();

    v29 = sub_265BF3230();
    v30 = sub_265BF34D0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v56 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_265BB064C(v27, v28, &v56);
      _os_log_impl(&dword_265BAD000, v29, v30, "Sandbox bootstrap error: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      MEMORY[0x26676DCA0](v32, -1, -1);
      MEMORY[0x26676DCA0](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
LABEL_25:
    result = sub_265BF3680();
    __break(1u);
    return result;
  }
}