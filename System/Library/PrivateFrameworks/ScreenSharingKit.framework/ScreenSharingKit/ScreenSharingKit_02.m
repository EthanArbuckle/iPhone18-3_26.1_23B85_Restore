uint64_t sub_2649F97E4()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2649F9844(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_2649F98B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_tearDownContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_2649D8028(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_2649D8028(v12 > 1, v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  result = (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  return result;
}

uint64_t sub_2649F9A44(char a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (*(v5 + 16))
  {

    v6 = sub_264A20B44(a1 & 1);
    if (v7)
    {
      v8 = (*(v5 + 56) + 16 * v6);
      v9 = *v8;
      v10 = v8[1];
      swift_unknownObjectRetain();

      swift_beginAccess();
      sub_264A907BC(0, 0, a1 & 1);
      swift_endAccess();
      return v9;
    }
  }

  return 0;
}

uint64_t sub_2649F9B20(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649F9BC0, v1, 0);
}

uint64_t sub_2649F9BC0()
{
  v70 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 552) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Negotiation data", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 528);

  *(v0 + 432) = 0x79546D6165727473;
  *(v0 + 440) = 0xEA00000000006570;
  sub_264B416F4();
  if (*(v5 + 16) && (v6 = *(v0 + 528), v7 = sub_264A20A44(v0 + 192), (v8 & 1) != 0))
  {
    v9 = *(v0 + 528);
    sub_2649C964C(*(v9 + 56) + 32 * v7, v0 + 312);
    sub_2649C95C0(v0 + 192);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 448);
      v10 = *(v0 + 456);

      v12 = sub_264B418D4();

      if (v12)
      {
        if (v12 != 1)
        {

          v14 = sub_264B40944();
          v36 = sub_264B41494();

          if (os_log_type_enabled(v14, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v69 = v38;
            *v37 = 136446210;
            v39 = sub_2649CC004(v11, v10, &v69);

            *(v37 + 4) = v39;
            v40 = "invalid meadia stream type: %{public}s";
LABEL_33:
            _os_log_impl(&dword_2649C6000, v14, v36, v40, v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x266749940](v38, -1, -1);
            v17 = v37;
            goto LABEL_14;
          }

LABEL_34:

          goto LABEL_16;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      *(v0 + 641) = v13;
      v21 = *(v0 + 536);
      v22 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
      swift_beginAccess();
      v23 = *(v21 + v22);
      if (*(v23 + 16))
      {

        v24 = sub_264A20B44(v13);
        if (v25)
        {
          v26 = v24;

          v27 = (*(v23 + 56) + 16 * v26);
          *(v0 + 560) = *v27;
          v28 = v27[1];
          swift_unknownObjectRetain();

          *(v0 + 464) = 0xD000000000000013;
          *(v0 + 472) = 0x8000000264B5A500;
          sub_264B416F4();
          if (*(v5 + 16) && (v29 = *(v0 + 528), v30 = sub_264A20A44(v0 + 232), (v31 & 1) != 0))
          {
            sub_2649C964C(*(v9 + 56) + 32 * v30, v0 + 344);
            sub_2649C95C0(v0 + 232);
            if (swift_dynamicCast())
            {
              v32 = *(v0 + 480);
              v33 = *(v0 + 488);
              v34 = sub_264B418D4();

              if (!v34)
              {
                v35 = 0;
                goto LABEL_41;
              }

              if (v34 == 1)
              {
                v35 = 1;
LABEL_41:
                *(v0 + 496) = 0x746169746F67656ELL;
                *(v0 + 504) = 0xEF617461446E6F69;
                sub_264B416F4();
                if (*(v5 + 16) && (v45 = *(v0 + 528), v46 = sub_264A20A44(v0 + 272), (v47 & 1) != 0))
                {
                  sub_2649C964C(*(v9 + 56) + 32 * v46, v0 + 376);
                  sub_2649C95C0(v0 + 272);
                  if (swift_dynamicCast())
                  {
                    v48 = *(v0 + 512);
                    *(v0 + 568) = v48;
                    v49 = *(v0 + 520);
                    *(v0 + 576) = v49;
                    v50 = "ation";
                    if (v35)
                    {
                      v50 = "negotiationOffer";
                    }

                    if ((v50 | 0x8000000000000000) == 0x8000000264B58BA0)
                    {
                      v51 = v35 ^ 1;
                    }

                    else
                    {
                      v51 = 1;
                    }

                    if (v51)
                    {
                      v52 = sub_264B41AA4();

                      if ((v52 & 1) == 0)
                      {
                        v62 = *(v0 + 536);

                        ObjectType = swift_getObjectType();
                        v64 = *(v28 + 160);
                        v68 = (v64 + *v64);
                        v65 = v64[1];
                        v66 = swift_task_alloc();
                        *(v0 + 592) = v66;
                        *v66 = v0;
                        v66[1] = sub_2649FA64C;
                        v57 = v48;
                        v58 = v49;
                        v59 = ObjectType;
                        v60 = v28;
                        v61 = v68;

                        return v61(v57, v58, v59, v60);
                      }
                    }

                    else
                    {
                    }

                    v53 = swift_getObjectType();
                    v54 = *(v28 + 168);
                    v67 = (v54 + *v54);
                    v55 = v54[1];
                    v56 = swift_task_alloc();
                    *(v0 + 584) = v56;
                    *v56 = v0;
                    v56[1] = sub_2649FA4C4;
                    v57 = v48;
                    v58 = v49;
                    v59 = v53;
                    v60 = v28;
                    v61 = v67;

                    return v61(v57, v58, v59, v60);
                  }
                }

                else
                {
                  sub_2649C95C0(v0 + 272);
                }

                goto LABEL_39;
              }
            }
          }

          else
          {
            sub_2649C95C0(v0 + 232);
          }

          v42 = sub_264B40944();
          v43 = sub_264B41494();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_2649C6000, v42, v43, "Failed to parse negotiationDataType", v44, 2u);
            MEMORY[0x266749940](v44, -1, -1);
          }

LABEL_39:
          swift_unknownObjectRelease();
          goto LABEL_16;
        }
      }

      v14 = sub_264B40944();
      v36 = sub_264B41494();

      if (os_log_type_enabled(v14, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v69 = v38;
        *v37 = 136446210;
        v41 = sub_2649CC004(v11, v10, &v69);

        *(v37 + 4) = v41;
        v40 = "Stream of type: %{public}s is not available";
        goto LABEL_33;
      }

      goto LABEL_34;
    }
  }

  else
  {
    sub_2649C95C0(v0 + 192);
  }

  v14 = sub_264B40944();
  v15 = sub_264B41494();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "Failed to parse streamType", v16, 2u);
    v17 = v16;
LABEL_14:
    MEMORY[0x266749940](v17, -1, -1);
  }

LABEL_16:
  v18 = *(v0 + 544);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2649FA4C4()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2649FA5D4, v2, 0);
}

uint64_t sub_2649FA5D4()
{
  v1 = v0[70];
  sub_2649DEF6C(v0[71], v0[72]);
  swift_unknownObjectRelease();
  v2 = v0[68];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2649FA64C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v5 = *(*v2 + 536);
  v7 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = a2;

  return MEMORY[0x2822009F8](sub_2649FA768, v5, 0);
}

uint64_t sub_2649FA768()
{
  v43 = v0;
  v1 = *(v0 + 608);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 552);
    v3 = sub_264B40944();
    v4 = sub_264B41494();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 576);
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    if (v5)
    {
      v9 = *(v0 + 641);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42 = v11;
      *v10 = 136446210;
      *(v0 + 640) = v9;
      v12 = sub_264B41064();
      v14 = sub_2649CC004(v12, v13, &v42);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2649C6000, v3, v4, "Failed to get negotiation answer for stream: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266749940](v11, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    sub_2649DEF6C(v7, v6);

    goto LABEL_12;
  }

  v15 = *(v0 + 600);
  v16 = *(v0 + 641);
  v17 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v19 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v20 = MEMORY[0x277D837D0];
  v21 = 0x6F69647561;
  if (v16)
  {
    v21 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v21;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v20;
  *(inited + 80) = 0x746169746F67656ELL;
  v22 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v15;
  *(inited + 104) = v1;
  *(inited + 120) = v22;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v20;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x8000000264B58BA0;
  sub_2649DEF18(v15, v1);
  v23 = sub_264A24308(v19);
  *(v0 + 616) = v23;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  v24 = (v17 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_avStreamActivationDelay);
  if ((*(v17 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_avStreamActivationDelay + 8) & 1) == 0)
  {
    v29 = *(v0 + 608);
    v30 = *(v0 + 600);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v41 = *(v0 + 560);
    v33 = *(v0 + 641);
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v36 = *v24;
    v37 = sub_264B41274();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v36;
    *(v38 + 40) = v33;
    *(v38 + 48) = v35;
    *(v38 + 56) = v23;

    sub_2649CD944(0, 0, v34, &unk_264B47198, v38);
    sub_2649DF384(v30, v29);

    sub_2649DEF6C(v32, v31);
LABEL_12:
    swift_unknownObjectRelease();
    v39 = *(v0 + 544);

    v40 = *(v0 + 8);

    return v40();
  }

  v25 = *(v0 + 641);
  v26 = swift_task_alloc();
  *(v0 + 624) = v26;
  *v26 = v0;
  v26[1] = sub_2649FABC8;
  v27 = *(v0 + 536);

  return sub_264A00454(v25, v27, v23);
}

uint64_t sub_2649FABC8()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 632) = v0;

  v6 = *(v2 + 536);
  if (v0)
  {
    v7 = sub_2649FADA4;
  }

  else
  {
    v7 = sub_2649FAD10;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2649FAD10()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  sub_2649DF384(v0[75], v0[76]);
  sub_2649DEF6C(v2, v1);
  swift_unknownObjectRelease();
  v4 = v0[68];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2649FADA4()
{
  v1 = v0[79];
  v2 = v0[69];
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[79];
  v8 = v0[76];
  v9 = v0[75];
  v10 = v0[72];
  v11 = v0[71];
  v12 = v0[70];
  if (v6)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2649C6000, v4, v5, "Failed to send negotiation answer: %{public}@", v13, 0xCu);
    sub_2649D04D4(v14, &unk_27FF89880, &unk_264B46B20);
    MEMORY[0x266749940](v14, -1, -1);
    MEMORY[0x266749940](v13, -1, -1);
    sub_2649DF384(v9, v8);
    sub_2649DEF6C(v11, v10);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_2649DF384(v0[75], v0[76]);
    sub_2649DEF6C(v11, v10);

    swift_unknownObjectRelease();
  }

  v17 = v0[68];

  v18 = v0[1];

  return v18();
}

uint64_t sub_2649FAF74(uint64_t a1)
{
  v2[67] = v1;
  v2[66] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190) - 8) + 64) + 15;
  v2[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649FB014, v1, 0);
}

uint64_t sub_2649FB014()
{
  v72 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 552) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2649C6000, v2, v3, "Negotiation data", v4, 2u);
    MEMORY[0x266749940](v4, -1, -1);
  }

  v5 = *(v0 + 528);

  *(v0 + 432) = 0x79546D6165727473;
  *(v0 + 440) = 0xEA00000000006570;
  sub_264B416F4();
  if (*(v5 + 16) && (v6 = *(v0 + 528), v7 = sub_264A20A44(v0 + 192), (v8 & 1) != 0))
  {
    v9 = *(v0 + 528);
    sub_2649C964C(*(v9 + 56) + 32 * v7, v0 + 312);
    sub_2649C95C0(v0 + 192);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 448);
      v10 = *(v0 + 456);

      v12 = sub_264B418D4();

      if (v12)
      {
        if (v12 != 1)
        {

          v14 = sub_264B40944();
          v36 = sub_264B41494();

          if (os_log_type_enabled(v14, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v71 = v38;
            *v37 = 136446210;
            v39 = sub_2649CC004(v11, v10, &v71);

            *(v37 + 4) = v39;
            v40 = "invalid meadia stream type: %{public}s";
LABEL_33:
            _os_log_impl(&dword_2649C6000, v14, v36, v40, v37, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v38);
            MEMORY[0x266749940](v38, -1, -1);
            v17 = v37;
            goto LABEL_14;
          }

LABEL_34:

          goto LABEL_16;
        }

        v13 = 1;
      }

      else
      {
        v13 = 0;
      }

      *(v0 + 641) = v13;
      v21 = *(v0 + 536);
      v22 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType;
      swift_beginAccess();
      v23 = *(v21 + v22);
      if (*(v23 + 16))
      {

        v24 = sub_264A20B44(v13);
        if (v25)
        {
          v26 = v24;

          v27 = (*(v23 + 56) + 16 * v26);
          *(v0 + 560) = *v27;
          v28 = v27[1];
          swift_unknownObjectRetain();

          *(v0 + 464) = 0xD000000000000013;
          *(v0 + 472) = 0x8000000264B5A500;
          sub_264B416F4();
          if (*(v5 + 16) && (v29 = *(v0 + 528), v30 = sub_264A20A44(v0 + 232), (v31 & 1) != 0))
          {
            sub_2649C964C(*(v9 + 56) + 32 * v30, v0 + 344);
            sub_2649C95C0(v0 + 232);
            if (swift_dynamicCast())
            {
              v32 = *(v0 + 480);
              v33 = *(v0 + 488);
              v34 = sub_264B418D4();

              if (!v34)
              {
                v35 = 0;
LABEL_41:
                *(v0 + 496) = 0x746169746F67656ELL;
                *(v0 + 504) = 0xEF617461446E6F69;
                sub_264B416F4();
                if (!*(v5 + 16) || (v45 = *(v0 + 528), v46 = sub_264A20A44(v0 + 272), (v47 & 1) == 0))
                {
                  sub_2649C95C0(v0 + 272);
                  goto LABEL_39;
                }

                sub_2649C964C(*(v9 + 56) + 32 * v46, v0 + 376);
                sub_2649C95C0(v0 + 272);
                if ((swift_dynamicCast() & 1) == 0)
                {
LABEL_39:
                  swift_unknownObjectRelease();
                  goto LABEL_16;
                }

                v48 = *(v0 + 512);
                *(v0 + 568) = v48;
                v49 = *(v0 + 520);
                *(v0 + 576) = v49;
                v50 = "ation";
                if (v35)
                {
                  v50 = "negotiationOffer";
                }

                if ((v50 | 0x8000000000000000) == 0x8000000264B58BA0)
                {
                  v51 = v35 ^ 1;
                }

                else
                {
                  v51 = 1;
                }

                if ((v51 & 1) == 0)
                {

                  goto LABEL_53;
                }

                v52 = sub_264B41AA4();

                if (v52)
                {
LABEL_53:
                  ObjectType = swift_getObjectType();
                  v54 = *(v28 + 168);
                  v69 = (v54 + *v54);
                  v55 = v54[1];
                  v56 = swift_task_alloc();
                  *(v0 + 584) = v56;
                  *v56 = v0;
                  v56[1] = sub_2649FB99C;
                  v57 = v48;
                  v58 = v49;
                  v59 = ObjectType;
                  v60 = v28;
                  v61 = v69;

                  return v61(v57, v58, v59, v60);
                }

                if (*(*(v0 + 536) + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentRemoteDisplaySession))
                {
                  v62 = swift_getObjectType();
                  v63 = *(v28 + 160);
                  v70 = (v63 + *v63);
                  v64 = v63[1];
                  v65 = swift_task_alloc();
                  *(v0 + 592) = v65;
                  *v65 = v0;
                  v65[1] = sub_2649FBAAC;
                  v57 = v48;
                  v58 = v49;
                  v59 = v62;
                  v60 = v28;
                  v61 = v70;

                  return v61(v57, v58, v59, v60);
                }

                v66 = v48;
                v42 = sub_264B40944();
                v67 = sub_264B41494();
                if (os_log_type_enabled(v42, v67))
                {
                  v68 = swift_slowAlloc();
                  *v68 = 0;
                  _os_log_impl(&dword_2649C6000, v42, v67, "Rapport session is unavailable", v68, 2u);
                  MEMORY[0x266749940](v68, -1, -1);
                }

                sub_2649DEF6C(v66, v49);
LABEL_38:

                goto LABEL_39;
              }

              if (v34 == 1)
              {
                v35 = 1;
                goto LABEL_41;
              }
            }
          }

          else
          {
            sub_2649C95C0(v0 + 232);
          }

          v42 = sub_264B40944();
          v43 = sub_264B41494();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            _os_log_impl(&dword_2649C6000, v42, v43, "Failed to parse negotiationDataType", v44, 2u);
            MEMORY[0x266749940](v44, -1, -1);
          }

          goto LABEL_38;
        }
      }

      v14 = sub_264B40944();
      v36 = sub_264B41494();

      if (os_log_type_enabled(v14, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v71 = v38;
        *v37 = 136446210;
        v41 = sub_2649CC004(v11, v10, &v71);

        *(v37 + 4) = v41;
        v40 = "Stream of type: %{public}s is not available";
        goto LABEL_33;
      }

      goto LABEL_34;
    }
  }

  else
  {
    sub_2649C95C0(v0 + 192);
  }

  v14 = sub_264B40944();
  v15 = sub_264B41494();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2649C6000, v14, v15, "Failed to parse streamType", v16, 2u);
    v17 = v16;
LABEL_14:
    MEMORY[0x266749940](v17, -1, -1);
  }

LABEL_16:
  v18 = *(v0 + 544);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_2649FB99C()
{
  v1 = *(*v0 + 584);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A03304, v2, 0);
}

uint64_t sub_2649FBAAC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 592);
  v5 = *(*v2 + 536);
  v7 = *v2;
  *(v3 + 600) = a1;
  *(v3 + 608) = a2;

  return MEMORY[0x2822009F8](sub_2649FBBC8, v5, 0);
}

uint64_t sub_2649FBBC8()
{
  v43 = v0;
  v1 = *(v0 + 608);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 552);
    v3 = sub_264B40944();
    v4 = sub_264B41494();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 576);
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    if (v5)
    {
      v9 = *(v0 + 641);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v42 = v11;
      *v10 = 136446210;
      *(v0 + 640) = v9;
      v12 = sub_264B41064();
      v14 = sub_2649CC004(v12, v13, &v42);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2649C6000, v3, v4, "Failed to get negotiation answer for stream: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x266749940](v11, -1, -1);
      MEMORY[0x266749940](v10, -1, -1);
    }

    sub_2649DEF6C(v7, v6);

    goto LABEL_12;
  }

  v15 = *(v0 + 600);
  v16 = *(v0 + 641);
  v17 = *(v0 + 536);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898F0, &unk_264B47110);
  inited = swift_initStackObject();
  v19 = inited;
  *(inited + 16) = xmmword_264B46DF0;
  *(inited + 32) = 0x79546D6165727473;
  v20 = MEMORY[0x277D837D0];
  v21 = 0x6F69647561;
  if (v16)
  {
    v21 = 0x6F65646976;
  }

  *(inited + 40) = 0xEA00000000006570;
  *(inited + 48) = v21;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = v20;
  *(inited + 80) = 0x746169746F67656ELL;
  v22 = MEMORY[0x277CC9318];
  *(inited + 88) = 0xEF617461446E6F69;
  *(inited + 96) = v15;
  *(inited + 104) = v1;
  *(inited + 120) = v22;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 168) = v20;
  *(inited + 136) = 0x8000000264B5A500;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x8000000264B58BA0;
  sub_2649DEF18(v15, v1);
  v23 = sub_264A24308(v19);
  *(v0 + 616) = v23;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89220, &qword_264B48430);
  swift_arrayDestroy();
  v24 = (v17 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_avStreamActivationDelay);
  if ((*(v17 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_avStreamActivationDelay + 8) & 1) == 0)
  {
    v29 = *(v0 + 608);
    v30 = *(v0 + 600);
    v31 = *(v0 + 576);
    v32 = *(v0 + 568);
    v41 = *(v0 + 560);
    v33 = *(v0 + 641);
    v34 = *(v0 + 544);
    v35 = *(v0 + 536);
    v36 = *v24;
    v37 = sub_264B41274();
    (*(*(v37 - 8) + 56))(v34, 1, 1, v37);
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 0;
    *(v38 + 32) = v36;
    *(v38 + 40) = v33;
    *(v38 + 48) = v35;
    *(v38 + 56) = v23;

    sub_2649CD944(0, 0, v34, &unk_264B47130, v38);
    sub_2649DF384(v30, v29);

    sub_2649DEF6C(v32, v31);
LABEL_12:
    swift_unknownObjectRelease();
    v39 = *(v0 + 544);

    v40 = *(v0 + 8);

    return v40();
  }

  v25 = *(v0 + 641);
  v26 = swift_task_alloc();
  *(v0 + 624) = v26;
  *v26 = v0;
  v26[1] = sub_2649FC024;
  v27 = *(v0 + 536);

  return sub_264A01828(v25, v27, v23);
}

uint64_t sub_2649FC024()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v4 = *(*v1 + 616);
  v5 = *v1;
  *(*v1 + 632) = v0;

  v6 = *(v2 + 536);
  if (v0)
  {
    v7 = sub_264A03330;
  }

  else
  {
    v7 = sub_264A0337C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_2649FC16C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2649FC190, v2, 0);
}

uint64_t sub_2649FC190()
{
  v46 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = sub_264B418D4();

  if (v3)
  {
    if (v3 != 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 48);
      v28 = sub_264B40964();
      __swift_project_value_buffer(v28, qword_27FFA71D0);

      v29 = sub_264B40944();
      v30 = sub_264B41494();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_24;
      }

      v32 = *(v0 + 40);
      v31 = *(v0 + 48);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_2649CC004(v32, v31, &v45);
      _os_log_impl(&dword_2649C6000, v29, v30, "Invalid media stream type: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x266749940](v34, -1, -1);
      v35 = v33;
      goto LABEL_23;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 56);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_mediaStreamByType;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_264A20B44(v4);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      *(v0 + 64) = *v10;
      v11 = v10[1];
      swift_unknownObjectRetain();

      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v12 = sub_264B40964();
      __swift_project_value_buffer(v12, qword_27FFA71D0);
      v13 = sub_264B40944();
      v14 = sub_264B41494();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v45 = v16;
        *v15 = 136446210;
        *(v0 + 89) = v4;
        v17 = sub_264B41064();
        v19 = sub_2649CC004(v17, v18, &v45);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2649C6000, v13, v14, "Stream invalidated, interrupting stream of type: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x266749940](v16, -1, -1);
        MEMORY[0x266749940](v15, -1, -1);
      }

      ObjectType = swift_getObjectType();
      sub_264A02DF0();
      v21 = swift_allocError();
      *(v0 + 72) = v21;
      *v22 = 9;
      v23 = *(v11 + 128);
      v44 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 80) = v25;
      *v25 = v0;
      v25[1] = sub_2649FC724;

      return v44(v21, ObjectType, v11);
    }
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v36 = sub_264B40964();
  __swift_project_value_buffer(v36, qword_27FFA71D0);
  v29 = sub_264B40944();
  v37 = sub_264B414A4();
  if (os_log_type_enabled(v29, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v38 = 136446210;
    *(v0 + 88) = v4;
    v40 = sub_264B41064();
    v42 = sub_2649CC004(v40, v41, &v45);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_2649C6000, v29, v37, "Media stream of type: %{public}s not found, unable to interrupt it", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x266749940](v39, -1, -1);
    v35 = v38;
LABEL_23:
    MEMORY[0x266749940](v35, -1, -1);
  }

LABEL_24:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2649FC724()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_2649FC850, v3, 0);
}

uint64_t sub_2649FC850()
{
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2649FC8B0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_2649FC8D4, v2, 0);
}

uint64_t sub_2649FC8D4()
{
  v46 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);

  v3 = sub_264B418D4();

  if (v3)
  {
    if (v3 != 1)
    {
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 48);
      v28 = sub_264B40964();
      __swift_project_value_buffer(v28, qword_27FFA71D0);

      v29 = sub_264B40944();
      v30 = sub_264B41494();

      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_24;
      }

      v32 = *(v0 + 40);
      v31 = *(v0 + 48);
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_2649CC004(v32, v31, &v45);
      _os_log_impl(&dword_2649C6000, v29, v30, "Invalid media stream type: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x266749940](v34, -1, -1);
      v35 = v33;
      goto LABEL_23;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 56);
  v6 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_mediaStreamByType;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_264A20B44(v4);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      *(v0 + 64) = *v10;
      v11 = v10[1];
      swift_unknownObjectRetain();

      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v12 = sub_264B40964();
      __swift_project_value_buffer(v12, qword_27FFA71D0);
      v13 = sub_264B40944();
      v14 = sub_264B41494();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v45 = v16;
        *v15 = 136446210;
        *(v0 + 89) = v4;
        v17 = sub_264B41064();
        v19 = sub_2649CC004(v17, v18, &v45);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_2649C6000, v13, v14, "Stream invalidated, interrupting stream of type: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x266749940](v16, -1, -1);
        MEMORY[0x266749940](v15, -1, -1);
      }

      ObjectType = swift_getObjectType();
      sub_264A02DF0();
      v21 = swift_allocError();
      *(v0 + 72) = v21;
      *v22 = 9;
      v23 = *(v11 + 128);
      v44 = (v23 + *v23);
      v24 = v23[1];
      v25 = swift_task_alloc();
      *(v0 + 80) = v25;
      *v25 = v0;
      v25[1] = sub_2649FCE64;

      return v44(v21, ObjectType, v11);
    }
  }

  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v36 = sub_264B40964();
  __swift_project_value_buffer(v36, qword_27FFA71D0);
  v29 = sub_264B40944();
  v37 = sub_264B414A4();
  if (os_log_type_enabled(v29, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45 = v39;
    *v38 = 136446210;
    *(v0 + 88) = v4;
    v40 = sub_264B41064();
    v42 = sub_2649CC004(v40, v41, &v45);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_2649C6000, v29, v37, "Media stream of type: %{public}s not found, unable to interrupt it", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x266749940](v39, -1, -1);
    v35 = v38;
LABEL_23:
    MEMORY[0x266749940](v35, -1, -1);
  }

LABEL_24:

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_2649FCE64()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_264A03388, v3, 0);
}

void sub_2649FCF90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = sub_264B40104();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v34 - v14;
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    sub_264B40094();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_2649D04D4(v6, &unk_27FF8BFC0, &qword_264B47140);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v18 = sub_264B40964();
      __swift_project_value_buffer(v18, qword_27FFA71D0);
      v19 = sub_264B40944();
      v20 = sub_264B41494();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_2649C6000, v19, v20, "Failed to convert SessionID", v21, 2u);
        MEMORY[0x266749940](v21, -1, -1);
      }
    }

    else
    {
      v36 = v1;
      (*(v8 + 32))(v15, v6, v7);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v22 = sub_264B40964();
      __swift_project_value_buffer(v22, qword_27FFA71D0);
      (*(v8 + 16))(v12, v15, v7);
      v23 = sub_264B40944();
      v24 = sub_264B41484();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v34 = v25;
        v35 = swift_slowAlloc();
        v37 = v35;
        *v25 = 136446210;
        sub_264A03218(&qword_27FF88A70, MEMORY[0x277CC95F0]);
        v26 = sub_264B41A64();
        v28 = v27;
        v29 = *(v8 + 8);
        v29(v12, v7);
        v30 = sub_2649CC004(v26, v28, &v37);

        v31 = v34;
        *(v34 + 1) = v30;
        v32 = v31;
        _os_log_impl(&dword_2649C6000, v23, v24, "Setting sessionID: %{public}s", v31, 0xCu);
        v33 = v35;
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x266749940](v33, -1, -1);
        MEMORY[0x266749940](v32, -1, -1);
      }

      else
      {

        v29 = *(v8 + 8);
        v29(v12, v7);
      }

      sub_264AA36B4(v15);
      v29(v15, v7);
    }
  }
}

uint64_t sub_2649FD3E0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 88) = a5;
  *(v7 + 16) = a1;
  v8 = sub_264B41844();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649FD4A8, 0, 0);
}

uint64_t sub_2649FD4A8()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2649C6000, v2, v3, "Delaying negotiation answer send by %{public}f seconds", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[2];

  v8 = sub_264B41C04();
  v10 = v9;
  sub_264B41B14();
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2649FD650;
  v12 = v0[7];

  return (sub_2649FE7A8)(v8, v10, 0, 0, 1);
}

uint64_t sub_2649FD650()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(v2 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  v7 = *(v2 + 40);
  if (v0)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_2649FD944, 0, 0);
  }

  else
  {
    v8 = *(v2 + 88);
    (*(v6 + 8))(v5, v7);
    v9 = swift_task_alloc();
    *(v2 + 80) = v9;
    *v9 = v4;
    v9[1] = sub_2649FD82C;
    v10 = *(v2 + 24);
    v11 = *(v2 + 32);

    return sub_264A00454(v8 & 1, v10, v11);
  }
}

uint64_t sub_2649FD82C()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2649FD944()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2649FD9A8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 88) = a5;
  *(v7 + 16) = a1;
  v8 = sub_264B41844();
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2649FDA70, 0, 0);
}

uint64_t sub_2649FDA70()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B41484();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2649C6000, v2, v3, "Delaying negotiation answer send by %{public}f seconds", v5, 0xCu);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v6 = v0[7];
  v7 = v0[2];

  v8 = sub_264B41C04();
  v10 = v9;
  sub_264B41B14();
  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = sub_2649FDC18;
  v12 = v0[7];

  return (sub_2649FE7A8)(v8, v10, 0, 0, 1);
}

uint64_t sub_2649FDC18()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(v2 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  v7 = *(v2 + 40);
  if (v0)
  {
    (*(v6 + 8))(v5, v7);

    return MEMORY[0x2822009F8](sub_264A0332C, 0, 0);
  }

  else
  {
    v8 = *(v2 + 88);
    (*(v6 + 8))(v5, v7);
    v9 = swift_task_alloc();
    *(v2 + 80) = v9;
    *v9 = v4;
    v9[1] = sub_264A03344;
    v10 = *(v2 + 24);
    v11 = *(v2 + 32);

    return sub_264A01828(v8 & 1, v10, v11);
  }
}

void sub_2649FDDF4(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v37 = a2;
  v38 = a1;
  v5 = sub_264B3FFD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v10 = sub_264B40964();
  __swift_project_value_buffer(v10, qword_27FFA71D0);
  v11 = sub_264B41484();
  sub_264B3FF94();
  v12 = sub_264B3FFA4();
  v14 = v13;
  (*(v6 + 8))(v9, v5);

  v15 = sub_264B40944();

  if (os_log_type_enabled(v15, v11))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446722;
    v18 = sub_2649CC004(v12, v14, aBlock);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 254;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_2649CC004(0xD00000000000001ALL, 0x8000000264B5A4B0, aBlock);
    _os_log_impl(&dword_2649C6000, v15, v11, "%{public}s:%{public}ld %{public}s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v17, -1, -1);
    MEMORY[0x266749940](v16, -1, -1);
  }

  else
  {
  }

  v19 = sub_264B40944();
  v20 = sub_264B41474();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = 0x8000000264B58C30;
    v24 = 0xD000000000000019;
    v25 = 0x8000000264B58C50;
    v26 = 0x746169746F67656ELL;
    if (v38 == 3)
    {
      v26 = 0xD000000000000011;
    }

    else
    {
      v25 = 0xEF617461446E6F69;
    }

    if (v38 != 2)
    {
      v24 = v26;
      v23 = v25;
    }

    v27 = 0x646570706F7473;
    if (!v38)
    {
      v27 = 0x64657472617473;
    }

    if (v38 <= 1u)
    {
      v28 = v27;
    }

    else
    {
      v28 = v24;
    }

    if (v38 <= 1u)
    {
      v29 = 0xE700000000000000;
    }

    else
    {
      v29 = v23;
    }

    v30 = sub_2649CC004(v28, v29, aBlock);

    *(v21 + 4) = v30;
    _os_log_impl(&dword_2649C6000, v19, v20, "registering event:%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x266749940](v22, -1, -1);
    MEMORY[0x266749940](v21, -1, -1);
  }

  v31 = sub_264B41014();

  v32 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = v35;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649FE5C4;
  aBlock[3] = v36;
  v33 = _Block_copy(aBlock);

  [v37 registerEventID:v31 options:0 handler:{v33, v34}];
  _Block_release(v33);
}

uint64_t sub_2649FE318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v16 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = sub_264B41274();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v13;
    v15[5] = a1;
    v15[6] = a2;

    sub_264A10C20(0, 0, v11, a5, v15);
  }

  return result;
}

uint64_t sub_2649FE45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2649CD850;

  return sub_264A00958(a5);
}

uint64_t sub_2649FE510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2649E0EE4;

  return (sub_264A01FBC)(a5);
}

uint64_t sub_2649FE5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_264B40F64();
  if (a3)
  {
    a3 = sub_264B40F64();
  }

  v5(v6, a3);
}

void sub_2649FE684(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t sub_2649FE6B0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_264A0331C;

  return v7(a1);
}

uint64_t sub_2649FE7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_264B41824();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2649FE8A8, 0, 0);
}

uint64_t sub_2649FE8A8()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_264B41844();
  v7 = sub_264A03218(&qword_27FF89228, MEMORY[0x277D85928]);
  sub_264B41AF4();
  sub_264A03218(&qword_27FF89230, MEMORY[0x277D858F8]);
  sub_264B41854();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2649FEA38;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2649FEA38()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2649FEBF4, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_2649FEBF4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_2649FEC60()
{
  result = qword_27FF89180;
  if (!qword_27FF89180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89180);
  }

  return result;
}

uint64_t sub_2649FECCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2649FED34()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2649FEE0C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88D08, &qword_264B49A40) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_2649EE328(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_2649FEF10()
{
  result = qword_27FF891B0;
  if (!qword_27FF891B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF891B0);
  }

  return result;
}

unint64_t sub_2649FEF6C()
{
  result = qword_27FF891C8;
  if (!qword_27FF891C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF891C8);
  }

  return result;
}

uint64_t sub_2649FEFF0(uint64_t (*a1)(uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2649FF070(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0) - 8) + 80);

  return sub_2649F3BCC(a1, a2, a3);
}

uint64_t sub_2649FF118(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89148, &qword_264B46EB0) - 8) + 80);

  return sub_2649F3D70(a1, a2);
}

uint64_t block_copy_helper_102(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2649FF1BC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2649FF1FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2649FF378(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF891C0, &qword_264B46FE0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2649E0EE4;

  return sub_2649F0724(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

void sub_2649FF518(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_2649FF52C(a1, a2, a3, a4);
  }
}

void sub_2649FF52C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

id sub_2649FF5A8(id result, void *a2, uint64_t a3, char a4)
{
  if (a4 == 1)
  {
    v6 = result;

    return a2;
  }

  else if (!a4)
  {
    v4 = result;
  }

  return result;
}

uint64_t sub_2649FF63C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2649FF67C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2649E0EE4;

  return sub_2649F6874(a1, v4, v5, v6);
}

uint64_t sub_2649FF730()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2649FF780(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649E0EE4;

  return sub_2649F5A98(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2649FF854()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2649FF88C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2649E0EE4;

  return sub_2649FE6B0(a1, v5);
}

const char *RPStreamTypeToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "?";
  }

  else
  {
    return off_279B7A018[a1];
  }
}

uint64_t sub_2649FF968()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2649FF9B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_2649F6BE4(a1, v4, v5, v6, v7);
}

void sub_2649FFA78()
{
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v0 = sub_264B40964();
  __swift_project_value_buffer(v0, qword_27FFA71D0);
  oslog = sub_264B40944();
  v1 = sub_264B41494();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2649C6000, oslog, v1, "Received unexpected started message", v2, 2u);
    MEMORY[0x266749940](v2, -1, -1);
  }
}

void sub_2649FFB60()
{
  v0 = sub_264B3FFD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v5 = sub_264B40964();
  __swift_project_value_buffer(v5, qword_27FFA71D0);
  v6 = sub_264B41484();
  sub_264B3FF94();
  v7 = sub_264B3FFA4();
  v9 = v8;
  (*(v1 + 8))(v4, v0);

  v10 = sub_264B40944();

  if (os_log_type_enabled(v10, v6))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136446722;
    v13 = sub_2649CC004(v7, v9, &v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2050;
    *(v11 + 14) = 98;
    *(v11 + 22) = 2082;
    *(v11 + 24) = sub_2649CC004(0xD000000000000028, 0x8000000264B5A520, &v15);
    _os_log_impl(&dword_2649C6000, v10, v6, "%{public}s:%{public}ld %{public}s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v12, -1, -1);
    MEMORY[0x266749940](v11, -1, -1);
  }

  else
  {
  }
}

void sub_2649FFDD8(uint64_t a1)
{
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v7 = sub_264B40964();
  __swift_project_value_buffer(v7, qword_27FFA71D0);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_264B40944();
  v9 = sub_264B41494();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_264A03218(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v12 = sub_264B41A64();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_2649CC004(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2649C6000, v8, v9, "Unsupported server side action: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x266749940](v11, -1, -1);
    MEMORY[0x266749940](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

BOOL sub_264A00048()
{
  sub_264A002C4();
  v0 = sub_264B41624();
  return ((v0 | sub_264B41624()) & 1) == 0;
}

uint64_t sub_264A0011C()
{
  MEMORY[0x266749A30](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_264A0015C()
{
  result = qword_27FF89200;
  if (!qword_27FF89200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89200);
  }

  return result;
}

uint64_t objectdestroy_82Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_264A00248()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_264B411E4();
}

unint64_t sub_264A002C4()
{
  result = qword_27FF89210;
  if (!qword_27FF89210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89210);
  }

  return result;
}

uint64_t sub_264A00318()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A0038C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_2649FE510(a1, v4, v5, v6, v7);
}

uint64_t sub_264A00454(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 66) = a1;
  return MEMORY[0x2822009F8](sub_264A00474, a2, 0);
}

uint64_t sub_264A00474()
{
  v19 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v0 + 65) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiation answer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = *MEMORY[0x277D44228];
  v11 = sub_264B41044();
  v13 = v12;
  *(v0 + 40) = v12;
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = sub_264A0067C;
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_264A5973C(4, v15, v11, v13);
}

uint64_t sub_264A0067C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_264A008F4;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);

    v5 = sub_264A007A4;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_264A007A4()
{
  v13 = v0;
  v1 = *(v0 + 32);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    *(v0 + 64) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sent negotiation answer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_264A008F4()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_264A00958(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_264A00978, v1, 0);
}

uint64_t sub_264A00978()
{
  v78 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);

  v3 = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v72[0] = v7;
    *v6 = 136446210;
    v8 = sub_264B40F74();
    v10 = sub_2649CC004(v8, v9, v72);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "received inEvent: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = *(v0 + 184);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState;
  v13 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState);
  if (v13 <= 2)
  {
    if (v13 == 2)
    {
      sub_2649FE684(2);
      sub_2649FE684(2);

      v14 = sub_264B40944();
      v15 = sub_264B41494();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v72[0] = v17;
        *v16 = 136446210;
        v18 = *(v11 + v12);
        *(v0 + 160) = v18;
        sub_2649DDB20(v18);
        v19 = sub_264B41064();
        v21 = sub_2649CC004(v19, v20, v72);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2649C6000, v14, v15, "receivedEvent while in state: %{public}s, ignoring.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x266749940](v17, -1, -1);
        v22 = v16;
LABEL_26:
        MEMORY[0x266749940](v22, -1, -1);
      }

LABEL_27:

LABEL_47:
      v70 = *(v0 + 8);

      return v70();
    }

    sub_2649DDB20(*(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportClientSession_currentState));
    sub_2649FE684(v13);
    sub_2649FE684(2);
  }

  v23 = *(v0 + 176);
  *(v0 + 144) = 0x746169746F67656ELL;
  *(v0 + 152) = 0xEF617461446E6F69;
  sub_264B416F4();
  if (*(v23 + 16))
  {
    v24 = *(v0 + 176);
    v25 = sub_264A20A44(v0 + 16);
    if (v26)
    {
      sub_2649C964C(*(*(v0 + 176) + 56) + 32 * v25, v0 + 56);
      sub_2649C95C0(v0 + 16);
      sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
      v27 = swift_task_alloc();
      *(v0 + 192) = v27;
      *v27 = v0;
      v27[1] = sub_264A01480;
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);

      return sub_2649F9B20(v28);
    }
  }

  v31 = *(v0 + 176);
  sub_2649C95C0(v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89218, &qword_264B470F8);
  *(v0 + 88) = v31;

  sub_2649E7150((v0 + 88), 1, v72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  v33 = v72[0];
  v32 = v72[1];
  *(v0 + 200) = v72[0];
  *(v0 + 208) = v32;
  v35 = v73;
  v34 = v74;
  *(v0 + 216) = v73;
  *(v0 + 224) = v34;
  v36 = v75;
  v37 = v76;
  *(v0 + 232) = v75;
  *(v0 + 240) = v37;
  *(v0 + 248) = v77;
  if (!v35)
  {
    v45 = *(v0 + 176);

    v14 = sub_264B40944();
    v46 = sub_264B41494();

    if (os_log_type_enabled(v14, v46))
    {
      v47 = *(v0 + 176);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v72[0] = v49;
      *v48 = 136315138;
      v50 = sub_264B40F74();
      v52 = sub_2649CC004(v50, v51, v72);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2649C6000, v14, v46, "inEvent payload not handled: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x266749940](v49, -1, -1);
      v22 = v48;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      v60 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v60 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v60)
      {
        v57 = v33;
        v58 = v32;
        v59 = v35;
        goto LABEL_46;
      }

      v61 = *(v0 + 184);
      sub_264AA3374(v32, v35);
    }

    else
    {
      v71 = v34;
      if (v33 == 3)
      {

        v38 = sub_264B40944();
        v39 = sub_264B414B4();
        sub_264A02CC4(v33, v32, v35);
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v72[0] = v41;
          *v40 = 136446210;

          v42 = sub_2649CC004(v71, v36, v72);

          *(v40 + 4) = v42;
          _os_log_impl(&dword_2649C6000, v38, v39, "received streamInvalidated for %{public}s", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v41);
          MEMORY[0x266749940](v41, -1, -1);
          MEMORY[0x266749940](v40, -1, -1);
        }

        v43 = swift_task_alloc();
        *(v0 + 256) = v43;
        *v43 = v0;
        v43[1] = sub_264A01574;
        v44 = *(v0 + 184);

        return sub_2649FC16C(v71, v36);
      }

      v62 = sub_264B40944();
      v63 = sub_264B41494();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_2649C6000, v62, v63, "Unexpected JSON payload type", v64, 2u);
        MEMORY[0x266749940](v64, -1, -1);

        v57 = v33;
        v58 = v32;
        v59 = v35;
LABEL_46:
        sub_264A02CC4(v57, v58, v59);
        goto LABEL_47;
      }
    }

    v57 = v33;
    v58 = v32;
    v59 = v35;
    goto LABEL_46;
  }

  if (!v33)
  {
    v53 = sub_264B40944();
    v54 = sub_264B414B4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2649C6000, v53, v54, "received started", v55, 2u);
      MEMORY[0x266749940](v55, -1, -1);
    }

    v56 = *(v0 + 184);

    sub_2649FCF90(v37);
    sub_264AA1904();
    v57 = v33;
    v58 = v32;
    v59 = v35;
    goto LABEL_46;
  }

  v65 = sub_264B40944();
  v66 = sub_264B414B4();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_2649C6000, v65, v66, "received stopped", v67, 2u);
    MEMORY[0x266749940](v67, -1, -1);
  }

  v68 = swift_task_alloc();
  *(v0 + 264) = v68;
  *v68 = v0;
  v68[1] = sub_264A016F0;
  v69 = *(v0 + 184);

  return sub_264AA1C00();
}

uint64_t sub_264A01480()
{
  v1 = *(*v0 + 192);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_264A01574()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A01684, v2, 0);
}

uint64_t sub_264A01684()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v4 = v0[29];
  sub_264A02CC4(v0[25], v0[26], v0[27]);
  v5 = v0[1];

  return v5();
}

uint64_t sub_264A016F0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;

  v5 = *(v2 + 184);
  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_264A03334, v5, 0);
}

uint64_t sub_264A01828(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 66) = a1;
  return MEMORY[0x2822009F8](sub_264A01848, a2, 0);
}

uint64_t sub_264A01848()
{
  v19 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = sub_264B40964();
  *(v0 + 32) = __swift_project_value_buffer(v1, qword_27FFA71D0);
  v2 = sub_264B40944();
  v3 = sub_264B414B4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 66);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v0 + 65) = v4 & 1;
    v7 = sub_264B41064();
    v9 = sub_2649CC004(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2649C6000, v2, v3, "Sending negotiation answer for stream: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x266749940](v6, -1, -1);
    MEMORY[0x266749940](v5, -1, -1);
  }

  v10 = *MEMORY[0x277D44228];
  v11 = sub_264B41044();
  v13 = v12;
  *(v0 + 40) = v12;
  v14 = swift_task_alloc();
  *(v0 + 48) = v14;
  *v14 = v0;
  v14[1] = sub_264A01A50;
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_264A59FDC(4, v15, v11, v13);
}

uint64_t sub_264A01A50()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_264A03378;
  }

  else
  {
    v6 = *(v2 + 40);
    v7 = *(v2 + 16);

    v5 = sub_264A0333C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void sub_264A01B78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v33 - v4;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    sub_264B40094();
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_2649D04D4(v5, &unk_27FF8BFC0, &qword_264B47140);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v17 = sub_264B40964();
      __swift_project_value_buffer(v17, qword_27FFA71D0);
      v18 = sub_264B40944();
      v19 = sub_264B41494();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2649C6000, v18, v19, "Failed to convert SessionID", v20, 2u);
        MEMORY[0x266749940](v20, -1, -1);
      }
    }

    else
    {
      (*(v7 + 32))(v14, v5, v6);
      if (qword_27FF883E8 != -1)
      {
        swift_once();
      }

      v21 = sub_264B40964();
      __swift_project_value_buffer(v21, qword_27FFA71D0);
      (*(v7 + 16))(v11, v14, v6);
      v22 = sub_264B40944();
      v23 = sub_264B41484();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34 = v24;
        v35 = swift_slowAlloc();
        v36 = v35;
        *v24 = 136446210;
        sub_264A03218(&qword_27FF88A70, MEMORY[0x277CC95F0]);
        v25 = sub_264B41A64();
        v27 = v26;
        v28 = *(v7 + 8);
        v28(v11, v6);
        v29 = sub_2649CC004(v25, v27, &v36);

        v30 = v34;
        *(v34 + 1) = v29;
        v31 = v30;
        _os_log_impl(&dword_2649C6000, v22, v23, "Setting sessionID: %{public}s", v30, 0xCu);
        v32 = v35;
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x266749940](v32, -1, -1);
        MEMORY[0x266749940](v31, -1, -1);
      }

      else
      {

        v28 = *(v7 + 8);
        v28(v11, v6);
      }

      sub_2649FFDD8(v14);
      v28(v14, v6);
    }
  }
}

uint64_t sub_264A01FBC(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x2822009F8](sub_264A01FDC, v1, 0);
}

uint64_t sub_264A01FDC()
{
  v76 = v0;
  if (qword_27FF883E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71D0);

  v3 = sub_264B40944();
  v4 = sub_264B414B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 176);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v70[0] = v7;
    *v6 = 136446210;
    v8 = sub_264B40F74();
    v10 = sub_2649CC004(v8, v9, v70);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2649C6000, v3, v4, "received inEvent: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x266749940](v7, -1, -1);
    MEMORY[0x266749940](v6, -1, -1);
  }

  v11 = *(v0 + 184);
  v12 = OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState;
  v13 = *(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState);
  if (v13 <= 2)
  {
    if (v13 == 2)
    {
      sub_2649FE684(2);
      sub_2649FE684(2);

      v14 = sub_264B40944();
      v15 = sub_264B41494();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v70[0] = v17;
        *v16 = 136446210;
        v18 = *(v11 + v12);
        *(v0 + 160) = v18;
        sub_2649DDB20(v18);
        v19 = sub_264B41064();
        v21 = sub_2649CC004(v19, v20, v70);

        *(v16 + 4) = v21;
        _os_log_impl(&dword_2649C6000, v14, v15, "receivedEvent while in state: %{public}s, ignoring.", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v17);
        MEMORY[0x266749940](v17, -1, -1);
        v22 = v16;
LABEL_26:
        MEMORY[0x266749940](v22, -1, -1);
      }

LABEL_27:

LABEL_47:
      v68 = *(v0 + 8);

      return v68();
    }

    sub_2649DDB20(*(v11 + OBJC_IVAR____TtC16ScreenSharingKit27MediaTransportServerSession_currentState));
    sub_2649FE684(v13);
    sub_2649FE684(2);
  }

  v23 = *(v0 + 176);
  *(v0 + 144) = 0x746169746F67656ELL;
  *(v0 + 152) = 0xEF617461446E6F69;
  sub_264B416F4();
  if (*(v23 + 16))
  {
    v24 = *(v0 + 176);
    v25 = sub_264A20A44(v0 + 16);
    if (v26)
    {
      sub_2649C964C(*(*(v0 + 176) + 56) + 32 * v25, v0 + 56);
      sub_2649C95C0(v0 + 16);
      sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
      v27 = swift_task_alloc();
      *(v0 + 192) = v27;
      *v27 = v0;
      v27[1] = sub_264A03320;
      v28 = *(v0 + 176);
      v29 = *(v0 + 184);

      return sub_2649FAF74(v28);
    }
  }

  v31 = *(v0 + 176);
  sub_2649C95C0(v0 + 16);
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_2649D04D4(v0 + 56, &qword_27FF8BB60, qword_264B44A80);
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89218, &qword_264B470F8);
  *(v0 + 88) = v31;

  sub_2649E7150((v0 + 88), 1, v70);
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));
  v33 = v70[0];
  v32 = v70[1];
  *(v0 + 200) = v70[0];
  *(v0 + 208) = v32;
  v35 = v71;
  v34 = v72;
  *(v0 + 216) = v71;
  *(v0 + 224) = v34;
  v36 = v73;
  v37 = v74;
  *(v0 + 232) = v73;
  *(v0 + 240) = v37;
  *(v0 + 248) = v75;
  if (!v35)
  {
    v45 = *(v0 + 176);

    v14 = sub_264B40944();
    v46 = sub_264B41494();

    if (os_log_type_enabled(v14, v46))
    {
      v47 = *(v0 + 176);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v70[0] = v49;
      *v48 = 136315138;
      v50 = sub_264B40F74();
      v52 = sub_2649CC004(v50, v51, v70);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_2649C6000, v14, v46, "inEvent payload not handled: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x266749940](v49, -1, -1);
      v22 = v48;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (v33 > 1u)
  {
    if (v33 == 2)
    {
      v56 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v56 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v56)
      {
        sub_2649FFB60();
      }

      v60 = v33;
      v61 = v32;
      v62 = v35;
      goto LABEL_46;
    }

    v69 = v34;
    if (v33 == 3)
    {

      v38 = sub_264B40944();
      v39 = sub_264B414B4();
      sub_264A02CC4(v33, v32, v35);
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v70[0] = v41;
        *v40 = 136446210;

        v42 = sub_2649CC004(v69, v36, v70);

        *(v40 + 4) = v42;
        _os_log_impl(&dword_2649C6000, v38, v39, "received streamInvalidated for %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266749940](v41, -1, -1);
        MEMORY[0x266749940](v40, -1, -1);
      }

      v43 = swift_task_alloc();
      *(v0 + 256) = v43;
      *v43 = v0;
      v43[1] = sub_264A02AA4;
      v44 = *(v0 + 184);

      return sub_2649FC8B0(v69, v36);
    }

    v57 = sub_264B40944();
    v58 = sub_264B41494();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2649C6000, v57, v58, "Unexpected JSON payload type", v59, 2u);
      MEMORY[0x266749940](v59, -1, -1);
    }

LABEL_39:
    v60 = v33;
    v61 = v32;
    v62 = v35;
LABEL_46:
    sub_264A02CC4(v60, v61, v62);
    goto LABEL_47;
  }

  if (!v33)
  {
    v53 = sub_264B40944();
    v54 = sub_264B414B4();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_2649C6000, v53, v54, "received started", v55, 2u);
      MEMORY[0x266749940](v55, -1, -1);
    }

    sub_264A01B78(v37);
    sub_2649FFA78();
    goto LABEL_39;
  }

  v63 = sub_264B40944();
  v64 = sub_264B414B4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_2649C6000, v63, v64, "received stopped", v65, 2u);
    MEMORY[0x266749940](v65, -1, -1);
  }

  v66 = swift_task_alloc();
  *(v0 + 264) = v66;
  *v66 = v0;
  v66[1] = sub_264A02BB4;
  v67 = *(v0 + 184);

  return sub_2649E912C();
}

uint64_t sub_264A02AA4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A03334, v2, 0);
}

uint64_t sub_264A02BB4()
{
  v1 = *(*v0 + 264);
  v2 = *(*v0 + 184);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A03334, v2, 0);
}

uint64_t sub_264A02CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_264A02D18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649E0EE4;

  return sub_2649FD9A8(v6, a1, v4, v5, v7, v9, v8);
}

unint64_t sub_264A02DF0()
{
  result = qword_27FF898A0;
  if (!qword_27FF898A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF898A0);
  }

  return result;
}

unint64_t sub_264A02E44()
{
  result = qword_27FF89238;
  if (!qword_27FF89238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89238);
  }

  return result;
}

uint64_t sub_264A02EA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A02EE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649E0EE4;

  return sub_2649F93CC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_197Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264A03030(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_2649FE45C(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_209Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[6];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_264A03140(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2649CD850;

  return sub_2649FD3E0(v6, a1, v4, v5, v7, v9, v8);
}

uint64_t sub_264A03218(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_264A03260()
{
  result = qword_27FF89260;
  if (!qword_27FF89260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89260);
  }

  return result;
}

unint64_t sub_264A033E8()
{
  result = qword_27FF89E40;
  if (!qword_27FF89E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89E40);
  }

  return result;
}

uint64_t sub_264A0343C(char *a1)
{
  v1 = *a1;
  v4[3] = &type metadata for OnenessFeatureFlags;
  v4[4] = sub_264A033E8();
  LOBYTE(v4[0]) = v1;
  v2 = sub_264B401C4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

unint64_t sub_264A034B8()
{
  result = qword_27FF89268;
  if (!qword_27FF89268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89268);
  }

  return result;
}

uint64_t ScreenContinuityServicesBackedLocalDeviceEligibilityPrimitives.isLocalDeviceEligible.getter()
{
  v0 = sub_264B3FFD4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  return sub_264B406D4() & 1;
}

char *SharingBackedAuthenticationPrimitives.init(continuityDevice:)(uint64_t a1)
{
  v26 = a1;
  v2 = sub_264B41544();
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  MEMORY[0x28223BE20](v2);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_264B414F4();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40EE4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v12 = *(*(v11 - 8) + 56);
  v12(&v1[v10], 1, 1, v11);
  v12(&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation], 1, 1, v11);
  v13 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  v14 = sub_264B40104();
  v15 = *(*(v14 - 8) + 56);
  v15(&v1[v13], 1, 1, v14);
  v15(&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration], 1, 1, v14);
  v12(&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation], 1, 1, v11);
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_2649D8B90(0, &qword_27FF89DF0, 0x277D85C78);
  sub_264B40EC4();
  v28 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF88CA0, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88CA8, &unk_264B471C0);
  sub_264A05780(&qword_27FF88CB0, &qword_27FF88CA8, &unk_264B471C0);
  sub_264B41684();
  (*(v24 + 104))(v23, *MEMORY[0x277D85260], v25);
  v16 = sub_264B41574();
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D54C10]) initWithQueue_];
  *&v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager] = v17;
  v18 = v26;
  sub_2649E3EAC(v26, &v1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice]);
  v19 = type metadata accessor for SharingBackedAuthenticationPrimitives();
  v27.receiver = v1;
  v27.super_class = v19;
  v20 = objc_msgSendSuper2(&v27, sel_init);
  [*&v20[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager] setDelegate_];
  sub_264A03DE8(v18);
  return v20;
}

uint64_t type metadata accessor for SharingBackedAuthenticationPrimitives()
{
  result = qword_27FF892E0;
  if (!qword_27FF892E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_264A03DE8(uint64_t a1)
{
  v2 = type metadata accessor for ContinuityDevice(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_264A03E44(uint64_t a1@<X8>)
{
  v3 = sub_264B3FF74();
  v4 = [v3 code];

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v4))
  {
LABEL_22:
    __break(1u);
    JUMPOUT(0x264A03FF0);
  }

  switch(v4)
  {
    case 4:
      v7 = xmmword_264B47350;
      goto LABEL_20;
    case 5:
      v11 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v11;
      v6 = 1;
      goto LABEL_13;
    case 8:
    case 11:
    case 26:
    case 27:
    case 36:
      v5 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v5;
      v6 = 2;
      goto LABEL_13;
    case 12:
      v9 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v9;
      v6 = 3;
      goto LABEL_13;
    case 17:
      v7 = xmmword_264B47340;
      goto LABEL_20;
    case 21:
      v10 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v10;
      *(a1 + 16) = 0;
      goto LABEL_14;
    case 28:
    case 29:
      v8 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v8;
      v6 = 5;
      goto LABEL_13;
    case 30:
    case 31:
    case 32:
      v7 = xmmword_264B47310;
      goto LABEL_20;
    case 33:
      v12 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v12;
      v6 = 6;
      goto LABEL_13;
    case 35:
      v7 = xmmword_264B47330;
      goto LABEL_20;
    case 39:
      v7 = xmmword_264B47320;
LABEL_20:
      *a1 = v7;
      *(a1 + 16) = 7;
      break;
    default:
      v13 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 24);
      *a1 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice + 16);
      *(a1 + 8) = v13;
      v6 = 4;
LABEL_13:
      *(a1 + 16) = v6;
LABEL_14:

      break;
  }
}

uint64_t sub_264A040A0()
{
  v1 = v0[24];
  v2 = v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice;
  v0[25] = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_continuityDevice);
  v0[26] = *(v2 + 8);
  v3 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_264A041E8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A8, &unk_264B474E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_264A04AE0;
  v0[13] = &block_descriptor_85;
  v0[14] = v4;
  [v3 listCandidateDevicesForType:5 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_264A041E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_264A04858;
  }

  else
  {
    v3 = sub_264A042F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264A042F8()
{
  v56 = v0;
  v2 = (v0 + 23);
  v1 = v0[23];
  v51 = (v0 + 10);
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_264B416B4();
    sub_2649D8B90(0, &qword_27FF893B0, 0x277D54C08);
    sub_264A0E738();
    sub_264B41444();
    v1 = v0[18];
    v3 = v0[19];
    v4 = v0[20];
    v5 = v0[21];
    v6 = v0[22];
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v8 = ~v7;
    v9 = -v7;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v6 = v10 & *(v1 + 56);

    v4 = v8;
    v5 = 0;
  }

  v11 = ((v4 + 64) >> 6);
  while (1)
  {
    if (v1 < 0)
    {
      v17 = sub_264B416C4();
      if (!v17 || (*v2 = v17, sub_2649D8B90(0, &qword_27FF893B0, 0x277D54C08), swift_dynamicCast(), v16 = *v51, v14 = v5, v15 = v6, !*v51))
      {
LABEL_25:
        sub_264A0E7A0();

        sub_264A0DFC0();
        v11 = swift_allocError();
        *v28 = 0;
        *(v28 + 8) = 0;
        *(v28 + 16) = 7;
        swift_willThrow();
        *v2 = v11;
        v29 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
        if (swift_dynamicCast())
        {

          v30 = v0;
          v31 = v0[10];
          v32 = v0[11];
          v33 = *(v30 + 96);
          swift_allocError();
          *v34 = v31;
          *(v34 + 8) = v32;
          v0 = v30;
          *(v34 + 16) = v33;
          swift_willThrow();
          v35 = v30[23];
LABEL_31:

          v48 = v0[1];

          return v48();
        }

        if (qword_27FF883E0 == -1)
        {
LABEL_28:
          v36 = sub_264B40964();
          __swift_project_value_buffer(v36, qword_27FFA71B8);
          v37 = v11;
          v38 = sub_264B40944();
          v39 = sub_264B41494();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v55 = v41;
            *v40 = 136446210;
            *v51 = v11;
            v42 = v11;
            v43 = sub_264B41064();
            v45 = sub_2649CC004(v43, v44, &v55);

            *(v40 + 4) = v45;
            _os_log_impl(&dword_2649C6000, v38, v39, "Failed to get list of candidate devices with error: %{public}s", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v41);
            MEMORY[0x266749940](v41, -1, -1);
            MEMORY[0x266749940](v40, -1, -1);
          }

          v46 = v0[24];
          swift_allocError();
          sub_264A03E44(v47);
          swift_willThrow();
          v35 = v11;
          goto LABEL_31;
        }

LABEL_39:
        swift_once();
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v5;
      v13 = v6;
      v14 = v5;
      if (!v6)
      {
        while (1)
        {
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v14 >= v11)
          {
            goto LABEL_25;
          }

          v13 = *(v3 + 8 * v14);
          ++v12;
          if (v13)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

LABEL_14:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
      if (!v16)
      {
        goto LABEL_25;
      }
    }

    v18 = [v16 uniqueID];
    if (v18)
    {
      break;
    }

LABEL_8:

    v5 = v14;
    v6 = v15;
  }

  v19 = v18;
  v54 = v16;
  v20 = v11;
  v52 = v0[25];
  v53 = v0[26];
  v21 = sub_264B41044();
  v23 = v22;

  if (v21 != v52 || v23 != v53)
  {
    v25 = v0[25];
    v26 = v0[26];
    v27 = sub_264B41AA4();

    v11 = v20;
    v16 = v54;
    if (v27)
    {
      goto LABEL_35;
    }

    goto LABEL_8;
  }

  v16 = v54;
LABEL_35:
  sub_264A0E7A0();

  v50 = v0[1];

  return v50(v16);
}

uint64_t sub_264A04858()
{
  v24 = v0;
  v1 = *(v0 + 216);
  swift_willThrow();
  v2 = *(v0 + 216);
  *(v0 + 184) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
  if (swift_dynamicCast())
  {

    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 96);
    sub_264A0DFC0();
    swift_allocError();
    *v7 = v5;
    *(v7 + 8) = v4;
    *(v7 + 16) = v6;
    swift_willThrow();
    v8 = *(v0 + 184);
  }

  else
  {

    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v9 = sub_264B40964();
    __swift_project_value_buffer(v9, qword_27FFA71B8);
    v10 = v2;
    v11 = sub_264B40944();
    v12 = sub_264B41494();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446210;
      *(v0 + 80) = v2;
      v15 = v2;
      v16 = sub_264B41064();
      v18 = sub_2649CC004(v16, v17, &v23);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_2649C6000, v11, v12, "Failed to get list of candidate devices with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x266749940](v14, -1, -1);
      MEMORY[0x266749940](v13, -1, -1);
    }

    v19 = *(v0 + 192);
    sub_264A0DFC0();
    swift_allocError();
    sub_264A03E44(v20);
    swift_willThrow();
    v8 = v2;
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_264A04AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_2649D8B90(0, &qword_27FF893B0, 0x277D54C08);
    sub_264A0E738();
    **(*(v4 + 64) + 40) = sub_264B41414();

    return MEMORY[0x282200950](v4);
  }
}

id SharingBackedAuthenticationPrimitives.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingBackedAuthenticationPrimitives.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharingBackedAuthenticationPrimitives();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SharingBackedAuthenticationPrimitives.cancelOutstandingRequests()()
{
  v1 = sub_264B40EB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_264B40EE4();
  v6 = *(v14 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_264A05718;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_2;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  sub_264B40EC4();
  v15 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_264A05080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v45 - v6;
  v7 = sub_264B40104();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7);
  v46 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v45 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  v26 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(a1 + v26, v18, &unk_27FF89360, &unk_264B474A0);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) == 1)
  {
    sub_2649D04D4(v18, &unk_27FF89360, &unk_264B474A0);
  }

  else
  {
    (*(v20 + 32))(v25, v18, v19);
    sub_264A0DFC0();
    v28 = swift_allocError();
    *v29 = xmmword_264B47360;
    *(v29 + 16) = 7;
    v53 = v28;
    sub_264B411D4();
    (*(v20 + 8))(v25, v19);
  }

  v30 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(a1 + v30, v16, &unk_27FF89360, &unk_264B474A0);
  if (v27(v16, 1, v19) == 1)
  {
    sub_2649D04D4(v16, &unk_27FF89360, &unk_264B474A0);
  }

  else
  {
    v31 = v45;
    (*(v20 + 32))(v45, v16, v19);
    sub_264A0DFC0();
    v32 = swift_allocError();
    *v33 = xmmword_264B47360;
    *(v33 + 16) = 7;
    v52 = v32;
    sub_264B411D4();
    (*(v20 + 8))(v31, v19);
  }

  v34 = *(v20 + 56);
  v35 = v48;
  v34(v48, 1, 1, v19);
  swift_beginAccess();
  sub_2649FECCC(v35, a1 + v26, &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v34(v35, 1, 1, v19);
  swift_beginAccess();
  sub_2649FECCC(v35, a1 + v30, &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v36 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  swift_beginAccess();
  v37 = v49;
  sub_2649D046C(a1 + v36, v49, &unk_27FF8BFC0, &qword_264B47140);
  v39 = v50;
  v38 = v51;
  if ((*(v50 + 48))(v37, 1, v51) == 1)
  {
    return sub_2649D04D4(v37, &unk_27FF8BFC0, &qword_264B47140);
  }

  v41 = v46;
  (*(v39 + 32))(v46, v37, v38);
  v42 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager);
  v43 = sub_264B400B4();
  [v42 cancelAuthenticationSessionWithID_];

  (*(v39 + 8))(v41, v38);
  v44 = v47;
  (*(v39 + 56))(v47, 1, 1, v38);
  swift_beginAccess();
  sub_2649FECCC(v44, a1 + v36, &unk_27FF8BFC0, &qword_264B47140);
  return swift_endAccess();
}

uint64_t sub_264A056E0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_264A05738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A05780(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SharingBackedAuthenticationPrimitives.isDevicePairedForMacUnlock()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A05860;

  return sub_264A04080();
}

uint64_t sub_264A05860(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7(0);
  }

  else
  {
    *(v4 + 24) = a1;

    return MEMORY[0x2822009F8](sub_264A059B0, 0, 0);
  }
}

uint64_t sub_264A059B0()
{
  v1 = *(v0 + 24);
  v2 = [v1 enabledAsLock];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t SharingBackedAuthenticationPrimitives.isDeviceAvailableForPairing()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264A05AB8;

  return sub_264A04080();
}

uint64_t sub_264A05AB8(void *a1)
{
  v4 = *(*v2 + 16);
  v5 = *v2;

  if (!v1)
  {
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t SharingBackedAuthenticationPrimitives.pairDeviceForMacUnlock()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_264A05C48;

  return sub_264A04080();
}

uint64_t sub_264A05C48(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264A05D7C, 0, 0);
  }
}

uint64_t sub_264A05D7C()
{
  v23 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41484();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = [v7 uniqueID];

    if (!v10)
    {
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    v11 = sub_264B41044();
    v13 = v12;

    v14 = sub_2649CC004(v11, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_2649C6000, v4, v5, "Requesting enablement for device: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x266749940](v9, -1, -1);
    MEMORY[0x266749940](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[4];
  v16 = v0[2];
  v17 = *(v16 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v18 = swift_task_alloc();
  v0[5] = v18;
  v18[2] = v17;
  v18[3] = v16;
  v18[4] = v15;
  v19 = *(MEMORY[0x277D85A40] + 4);
  v20 = swift_task_alloc();
  v0[6] = v20;
  *v20 = v0;
  v20[1] = sub_264A05FF0;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264A05FF0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_264A0E7D0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_264A0E7D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

id sub_264A0610C(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = a3;
  v5 = sub_264B40104();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649FECCC(v13, a1 + v16, &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v17 = *(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager);
  result = [v21 idsDeviceID];
  if (result)
  {
    v19 = result;
    v20 = [v17 requestEnablementForType:5 withIDSDeviceID:result];

    sub_264B400D4();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SharingBackedAuthenticationPrimitives.unlockWithAuthenticationToken(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_264A063F4;

  return sub_264A04080();
}

uint64_t sub_264A063F4(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264A06528, 0, 0);
  }
}

uint64_t sub_264A06528()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v8 = *(v0 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v8;
  *(v4 + 48) = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_264A06648;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264A06648()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_264A067C8;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_264A06764;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264A06764()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A067C8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A06834(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v34 = a5;
  v35 = a6;
  v33 = a4;
  v40 = a2;
  v36 = sub_264B40EB4();
  v39 = *(v36 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B40EE4();
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v32 - v18;
  (*(v16 + 16))(&v32 - v18, a1, v15);
  v20 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v21 = (v17 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  (*(v16 + 32))(v22 + v20, v19, v15);
  v23 = (v22 + v21);
  v25 = v33;
  v24 = v34;
  *v23 = v33;
  v23[1] = v24;
  v26 = v35;
  *(v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_264A0E4C8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_76;
  v27 = _Block_copy(aBlock);
  v28 = a3;
  sub_2649DEF18(v25, v24);
  v29 = v26;
  sub_264B40EC4();
  v41 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  v30 = v36;
  sub_264B41684();
  MEMORY[0x266748860](0, v14, v10, v27);
  _Block_release(v27);
  (*(v39 + 8))(v10, v30);
  (*(v37 + 8))(v14, v38);
}

void sub_264A06C00(char *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v51 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v12 = *(*(v52 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v52);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  swift_beginAccess();
  v54 = v17;
  sub_2649D046C(&a1[v17], v16, &unk_27FF8BFC0, &qword_264B47140);
  v18 = sub_264B40104();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v53 = v18;
  LODWORD(v17) = v20(v16, 1);
  sub_2649D04D4(v16, &unk_27FF8BFC0, &qword_264B47140);
  if (v17 != 1)
  {
    sub_264A0DFC0();
    v40 = swift_allocError();
    *v41 = xmmword_264B47370;
    *(v41 + 16) = 7;
    v57[0] = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
    sub_264B411D4();
    return;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v11, a2, v21);
  (*(v22 + 56))(v11, 0, 1, v21);
  v23 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation;
  swift_beginAccess();
  sub_2649FECCC(v11, &a1[v23], &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  v24 = [objc_allocWithZone(MEMORY[0x277D54C18]) init];
  v25 = sub_264B40014();
  [v24 setAuthorizationToken_];

  v26 = [a5 idsDeviceID];
  [v24 setIdsDeviceID_];

  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v27 = sub_264B40964();
  __swift_project_value_buffer(v27, qword_27FFA71B8);
  v28 = a5;
  v29 = sub_264B40944();
  v30 = sub_264B41484();
  if (os_log_type_enabled(v29, v30))
  {
    v56 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v57[0] = v32;
    *v31 = 136446210;
    v33 = [v28 uniqueID];

    if (!v33)
    {
      __break(1u);
      return;
    }

    v34 = sub_264B41044();
    v36 = v35;

    v37 = sub_2649CC004(v34, v36, v57);

    *(v31 + 4) = v37;
    _os_log_impl(&dword_2649C6000, v29, v30, "Attempting to unlock paired iPhone with uniqueID: %{public}s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x266749940](v32, -1, -1);
    MEMORY[0x266749940](v31, -1, -1);

    v39 = v54;
    v38 = v55;
    v24 = v56;
  }

  else
  {

    v39 = v54;
    v38 = v55;
  }

  v42 = [*&a1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager] authenticateForType:6 withOptions:v24];
  sub_264B400D4();

  (*(v19 + 56))(v38, 0, 1, v53);
  swift_beginAccess();
  sub_2649FECCC(v38, &a1[v39], &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  v43 = a1;
  v44 = sub_264B40944();
  v45 = sub_264B41484();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v57[0] = v47;
    *v46 = 136446210;
    sub_2649D046C(&a1[v39], v38, &unk_27FF8BFC0, &qword_264B47140);
    v48 = sub_264B41064();
    v50 = sub_2649CC004(v48, v49, v57);

    *(v46 + 4) = v50;
    _os_log_impl(&dword_2649C6000, v44, v45, "Unlock generation: %{public}s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x266749940](v47, -1, -1);
    MEMORY[0x266749940](v46, -1, -1);
  }
}

uint64_t SharingBackedAuthenticationPrimitives.startListeningForAuthApprovalRequests(delegate:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A07288, 0, 0);
}

uint64_t sub_264A07288()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_264A07390;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A07390()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2649F5338, 0, 0);
}

uint64_t sub_264A074A8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v33 = a2;
  v7 = sub_264B40EB4();
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_264B40EE4();
  v30 = *(v11 - 8);
  v31 = v11;
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  (*(v16 + 16))(&v27 - v18, a1, v15);
  v20 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v21 = swift_allocObject();
  v23 = v28;
  v22 = v29;
  *(v21 + 2) = a3;
  *(v21 + 3) = v23;
  *(v21 + 4) = v22;
  (*(v16 + 32))(&v21[v20], v19, v15);
  aBlock[4] = sub_264A0E354;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = &block_descriptor_70;
  v24 = _Block_copy(aBlock);
  v25 = a3;
  swift_unknownObjectRetain();
  sub_264B40EC4();
  v34 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v14, v10, v24);
  _Block_release(v24);
  (*(v32 + 8))(v10, v7);
  (*(v30 + 8))(v14, v31);
}

uint64_t sub_264A07844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate + 8) = a3;
  swift_unknownObjectWeakAssign();
  [*(a1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager) waitForApprovalRequestsForType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  return sub_264B411E4();
}

uint64_t SharingBackedAuthenticationPrimitives.disablePairedDevice()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_264A07944;

  return sub_264A04080();
}

uint64_t sub_264A07944(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264A07A78, 0, 0);
  }
}

uint64_t sub_264A07A78()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_264A07B88;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_264A07B88()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_264A07D08;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_264A07CA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_264A07CA4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264A07D08()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_264A07D74(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a6;
  v33 = a7;
  v30[1] = a5;
  v31 = a4;
  v37 = a2;
  v9 = sub_264B40EB4();
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_264B40EE4();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v30 - v20;
  (*(v18 + 16))(v30 - v20, a1, v17);
  v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  (*(v18 + 32))(v23 + v22, v21, v17);
  v25 = v31;
  v24 = v32;
  *(v23 + ((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  aBlock[4] = v24;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2649D68F4;
  aBlock[3] = v33;
  v26 = _Block_copy(aBlock);
  v27 = a3;
  v28 = v25;
  sub_264B40EC4();
  v38 = MEMORY[0x277D84F90];
  sub_264A05738(&qword_27FF892C0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF88A78, &qword_264B473A0);
  sub_264A05780(&qword_27FF892D0, &qword_27FF88A78, &qword_264B473A0);
  sub_264B41684();
  MEMORY[0x266748860](0, v16, v12, v26);
  _Block_release(v26);
  (*(v36 + 8))(v12, v9);
  (*(v34 + 8))(v16, v35);
}

void sub_264A08104(char *a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v52 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v56 = &v52 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration;
  swift_beginAccess();
  v57 = v19;
  sub_2649D046C(&a1[v19], v18, &unk_27FF8BFC0, &qword_264B47140);
  v20 = sub_264B40104();
  v54 = *(v20 - 8);
  v55 = v20;
  LODWORD(v19) = (*(v54 + 48))(v18, 1);
  sub_2649D04D4(v18, &unk_27FF8BFC0, &qword_264B47140);
  if (v19 != 1)
  {
    sub_264A0DFC0();
    v36 = swift_allocError();
    *v37 = xmmword_264B47380;
    *(v37 + 16) = 7;
    v58[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
    sub_264B411D4();
    return;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v22 = *(v21 - 8);
  (*(v22 + 16))(v9, a2, v21);
  (*(v22 + 56))(v9, 0, 1, v21);
  v23 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation;
  swift_beginAccess();
  sub_2649FECCC(v9, &a1[v23], &unk_27FF89360, &unk_264B474A0);
  swift_endAccess();
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v24 = sub_264B40964();
  __swift_project_value_buffer(v24, qword_27FFA71B8);
  v25 = a3;
  v26 = sub_264B40944();
  v27 = sub_264B41484();
  v28 = os_log_type_enabled(v26, v27);
  v53 = v14;
  if (v28)
  {
    v52 = v10;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v58[0] = v30;
    *v29 = 136446210;
    v31 = [v25 uniqueID];

    if (!v31)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v32 = sub_264B41044();
    v34 = v33;

    v35 = sub_2649CC004(v32, v34, v58);

    *(v29 + 4) = v35;
    _os_log_impl(&dword_2649C6000, v26, v27, "Attempting to disable paired iPhone with uniqueID: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x266749940](v30, -1, -1);
    MEMORY[0x266749940](v29, -1, -1);
  }

  else
  {
  }

  v38 = *&a1[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationManager];
  v39 = [v25 idsDeviceID];
  if (!v39)
  {
    __break(1u);
    goto LABEL_14;
  }

  v40 = v39;
  v41 = [v38 disableForType:5 withIDSDeviceID:v39];

  v42 = v56;
  sub_264B400D4();

  (*(v54 + 56))(v42, 0, 1, v55);
  v43 = v57;
  swift_beginAccess();
  sub_2649FECCC(v42, &a1[v43], &unk_27FF8BFC0, &qword_264B47140);
  swift_endAccess();
  v44 = a1;
  v45 = sub_264B40944();
  v46 = sub_264B41484();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v58[0] = v48;
    *v47 = 136446210;
    sub_2649D046C(&a1[v43], v53, &unk_27FF8BFC0, &qword_264B47140);
    v49 = sub_264B41064();
    v51 = sub_2649CC004(v49, v50, v58);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_2649C6000, v45, v46, "Reset generation: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x266749940](v48, -1, -1);
    MEMORY[0x266749940](v47, -1, -1);
  }
}

uint64_t sub_264A08758()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264A05860;

  return sub_264A04080();
}

uint64_t sub_264A087E8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_264A0E7D4;

  return sub_264A04080();
}

uint64_t sub_264A08878()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return SharingBackedAuthenticationPrimitives.pairDeviceForMacUnlock()();
}

uint64_t sub_264A08908(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2649CD850;

  return SharingBackedAuthenticationPrimitives.unlockWithAuthenticationToken(_:)(a1, a2);
}

uint64_t sub_264A089B0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2649E0EE4;

  return SharingBackedAuthenticationPrimitives.disablePairedDevice()();
}

uint64_t sub_264A08A40(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_264A08A68, 0, 0);
}

uint64_t sub_264A08A68()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = *(MEMORY[0x277D859E0] + 4);
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_264A08B70;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_264A08B70()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_264A03340, 0, 0);
}

uint64_t sub_264A08EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_264B41244();
  v8[7] = sub_264B41234();
  v10 = sub_264B411C4();
  v8[8] = v10;
  v8[9] = v9;

  return MEMORY[0x2822009F8](sub_264A08F48, v10, v9);
}

uint64_t sub_264A08F48()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v14 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = sub_264A090F0;
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);

    return v14(v9, v8, ObjectType, v3);
  }

  else
  {
    v11 = *(v0 + 56);

    v12 = *(v0 + 48);
    (*(v0 + 40))(0, 0xF000000000000000, 0);
    sub_2649DF384(0, 0xF000000000000000);
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_264A090F0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_264A092C0;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v9 = v6[8];
    v10 = v6[9];
    v11 = sub_264A09224;
  }

  return MEMORY[0x2822009F8](v11, v9, v10);
}

uint64_t sub_264A09224()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  swift_unknownObjectRelease();
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 48);
  (*(v0 + 40))(v3, v4, 0);
  sub_2649DF384(v3, v4);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_264A092C0()
{
  v1 = v0[12];
  v2 = v0[10];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  swift_unknownObjectRelease();
  v6 = v1;
  v5(0, 0xF000000000000000, v1);

  v7 = v0[1];

  return v7();
}

void sub_264A094C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_264B3FF74();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_264B40014();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t sub_264A0956C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_264B41244();
  v5[5] = sub_264B41234();
  v7 = sub_264B411C4();
  v5[6] = v7;
  v5[7] = v6;

  return MEMORY[0x2822009F8](sub_264A09604, v7, v6);
}

uint64_t sub_264A09604()
{
  v33 = v0;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_264B40964();
  __swift_project_value_buffer(v2, qword_27FFA71B8);
  v3 = v1;
  v4 = sub_264B40944();
  v5 = sub_264B41494();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31[0] = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v10 = sub_264B41064();
    v12 = sub_2649CC004(v10, v11, v31);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2649C6000, v4, v5, "Approval session failed with error: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x266749940](v8, -1, -1);
    MEMORY[0x266749940](v7, -1, -1);
  }

  v13 = v0[3];
  v14 = v0[4];
  sub_264A03E44(v31);
  v16 = v31[0];
  v15 = v31[1];
  v17 = v32;
  v18 = v14 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_approveByMacDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v20 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    sub_264A0DFC0();
    v22 = swift_allocError();
    v0[9] = v22;
    *v23 = v16;
    *(v23 + 8) = v15;
    *(v23 + 16) = v17;
    v24 = *(v20 + 16);
    v30 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = sub_264A09930;

    return v30(v22, ObjectType, v20);
  }

  else
  {
    v28 = v0[5];

    sub_264A0E11C(v16, v15, v17);
    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_264A09930()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v8 = *v0;

  swift_unknownObjectRelease();

  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_264A09A90, v6, v5);
}

uint64_t sub_264A09A90()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A09B08(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, id))
{
  v10 = sub_264B40104();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  v15 = a3;
  v16 = a5;
  v17 = a1;
  a6(v14, v16);

  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_264A09C44(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_264B40104();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_264B400D4();
  v13 = a3;
  v14 = a1;
  a5(v12);

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_264A09F78()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  v14 = sub_264B40F14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  v21 = sub_264B40F34();
  (*(v15 + 8))(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v21, v8, &unk_27FF89360, &unk_264B474A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2649D04D4(v8, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v22 = sub_264B40964();
      __swift_project_value_buffer(v22, qword_27FFA71B8);
      v23 = sub_264B40944();
      v24 = sub_264B41494();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2649C6000, v23, v24, "trustDeviceContinuation is not available.", v25, 2u);
        MEMORY[0x266749940](v25, -1, -1);
      }

      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v10 + 32))(v13, v8, v9);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v26 = sub_264B40964();
  __swift_project_value_buffer(v26, qword_27FFA71B8);
  v27 = sub_264B40944();
  v28 = sub_264B41484();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2649C6000, v27, v28, "Paired iPhone trusted", v29, 2u);
    MEMORY[0x266749940](v29, -1, -1);
  }

  sub_264B411E4();
  (*(v10 + 8))(v13, v9);
LABEL_12:
  (*(v10 + 56))(v6, 1, 1, v9);
  swift_beginAccess();
  sub_2649FECCC(v6, v1 + v21, &unk_27FF89360, &unk_264B474A0);
  return swift_endAccess();
}

uint64_t sub_264A0A414(uint64_t a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v47 = &v45 - v14;
  v15 = sub_264B40F14();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v21 = v20;
  v22 = sub_264B40F34();
  (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_trustDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v3 + v22, v10, &unk_27FF89360, &unk_264B474A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2649D04D4(v10, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v23 = sub_264B40964();
      __swift_project_value_buffer(v23, qword_27FFA71B8);
      v24 = sub_264B40944();
      v25 = sub_264B41494();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_2649C6000, v24, v25, "trustDeviceContinuation is not available.", v26, 2u);
        MEMORY[0x266749940](v26, -1, -1);
      }

      goto LABEL_12;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  (*(v12 + 32))(v47, v10, v11);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v27 = sub_264B40964();
  __swift_project_value_buffer(v27, qword_27FFA71B8);
  v28 = v46;
  v29 = v46;
  v30 = sub_264B40944();
  v31 = sub_264B41484();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v48 = v28;
    v49[0] = v45;
    *v32 = 136446210;
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v34 = sub_264B41064();
    v36 = sub_2649CC004(v34, v35, v49);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2649C6000, v30, v31, "Failed to trust paired iPhone with error: %{public}s", v32, 0xCu);
    v37 = v45;
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x266749940](v37, -1, -1);
    MEMORY[0x266749940](v32, -1, -1);
  }

  sub_264A03E44(v49);
  v38 = v49[0];
  v39 = v49[1];
  v40 = v50;
  sub_264A0DFC0();
  v41 = swift_allocError();
  *v42 = v38;
  *(v42 + 8) = v39;
  *(v42 + 16) = v40;
  v49[0] = v41;
  v43 = v47;
  sub_264B411D4();
  (*(v12 + 8))(v43, v11);
LABEL_12:
  (*(v12 + 56))(v8, 1, 1, v11);
  swift_beginAccess();
  sub_2649FECCC(v8, v3 + v22, &unk_27FF89360, &unk_264B474A0);
  return swift_endAccess();
}

void sub_264A0A998(uint64_t a1)
{
  v3 = sub_264B40104();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_264B40F14();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_264B40F34();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (qword_27FF883E0 == -1)
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
  v15 = sub_264B40964();
  __swift_project_value_buffer(v15, qword_27FFA71B8);
  (*(v4 + 16))(v7, a1, v3);
  v16 = sub_264B40944();
  v17 = sub_264B41484();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136446210;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v20 = sub_264B41A64();
    v22 = v21;
    (*(v4 + 8))(v7, v3);
    v23 = sub_2649CC004(v20, v22, &v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_2649C6000, v16, v17, "Authentication started: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x266749940](v19, -1, -1);
    MEMORY[0x266749940](v18, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

void sub_264A0ACE4(uint64_t a1)
{
  v100 = a1;
  v2 = sub_264B40104();
  v98 = *(v2 - 8);
  v99 = v2;
  v3 = *(v98 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v96 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v92 = &v84 - v7;
  MEMORY[0x28223BE20](v6);
  v91 = &v84 - v8;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89370, &qword_264B474B0);
  v9 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v11 = &v84 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v94 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v95 = &v84 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v93 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v84 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v101 = &v84 - v29;
  v30 = sub_264B40F14();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = (&v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x277D85200], v30);
  v36 = v35;
  LOBYTE(v35) = sub_264B40F34();
  (*(v31 + 8))(v34, v30);
  if ((v35 & 1) == 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v37 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v37, v25, &unk_27FF89360, &unk_264B474A0);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_2649D04D4(v25, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v38 = sub_264B40964();
      __swift_project_value_buffer(v38, qword_27FFA71B8);
      v39 = sub_264B40944();
      v40 = sub_264B41494();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2649C6000, v39, v40, "unlockDeviceContinuation is not available.", v41, 2u);
        MEMORY[0x266749940](v41, -1, -1);
      }

      return;
    }

LABEL_27:
    swift_once();
    goto LABEL_4;
  }

  v87 = v37;
  v89 = v27;
  v42 = *(v27 + 32);
  v90 = v26;
  v42(v101, v25, v26);
  v44 = v98;
  v43 = v99;
  v88 = *(v98 + 16);
  v88(v19, v100, v99);
  v45 = *(v44 + 56);
  v86 = v44 + 56;
  v85 = v45;
  v45(v19, 0, 1, v43);
  v46 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_unlockGeneration;
  swift_beginAccess();
  v47 = *(v97 + 48);
  sub_2649D046C(v19, v11, &unk_27FF8BFC0, &qword_264B47140);
  v97 = v46;
  sub_2649D046C(v1 + v46, &v11[v47], &unk_27FF8BFC0, &qword_264B47140);
  v48 = *(v44 + 48);
  if (v48(v11, 1, v43) == 1)
  {
    sub_2649D04D4(v19, &unk_27FF8BFC0, &qword_264B47140);
    if (v48(&v11[v47], 1, v43) == 1)
    {
      v84 = v1;
      sub_2649D04D4(v11, &unk_27FF8BFC0, &qword_264B47140);
LABEL_20:
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v64 = sub_264B40964();
      __swift_project_value_buffer(v64, qword_27FFA71B8);
      v65 = v92;
      v88(v92, v100, v43);
      v66 = sub_264B40944();
      v67 = sub_264B41484();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = v44;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v102[0] = v70;
        *v69 = 136446210;
        sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
        v71 = sub_264B41A64();
        v73 = v72;
        (*(v68 + 8))(v65, v43);
        v74 = sub_2649CC004(v71, v73, v102);

        *(v69 + 4) = v74;
        _os_log_impl(&dword_2649C6000, v66, v67, "Authentication completed: %{public}s", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x266749940](v70, -1, -1);
        MEMORY[0x266749940](v69, -1, -1);
      }

      else
      {

        (*(v44 + 8))(v65, v43);
      }

      v75 = v43;
      v76 = v90;
      v77 = v101;
      sub_264B411E4();
      v78 = v89;
      (*(v89 + 8))(v77, v76);
      v79 = v93;
      (*(v78 + 56))(v93, 1, 1, v76);
      v80 = v84;
      v81 = v87;
      swift_beginAccess();
      sub_2649FECCC(v79, v80 + v81, &unk_27FF89360, &unk_264B474A0);
      swift_endAccess();
      v82 = v94;
      v85(v94, 1, 1, v75);
      v83 = v97;
      swift_beginAccess();
      sub_2649FECCC(v82, v80 + v83, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      return;
    }

    goto LABEL_12;
  }

  v49 = v95;
  sub_2649D046C(v11, v95, &unk_27FF8BFC0, &qword_264B47140);
  if (v48(&v11[v47], 1, v43) == 1)
  {
    sub_2649D04D4(v19, &unk_27FF8BFC0, &qword_264B47140);
    (*(v44 + 8))(v49, v43);
LABEL_12:
    sub_2649D04D4(v11, &unk_27FF89370, &qword_264B474B0);
    goto LABEL_13;
  }

  v84 = v1;
  v61 = v91;
  (*(v44 + 32))(v91, &v11[v47], v43);
  sub_264A05738(&unk_27FF89390, MEMORY[0x277CC95F0]);
  v62 = sub_264B40F94();
  v63 = *(v44 + 8);
  v63(v61, v99);
  sub_2649D04D4(v19, &unk_27FF8BFC0, &qword_264B47140);
  v63(v49, v99);
  v43 = v99;
  sub_2649D04D4(v11, &unk_27FF8BFC0, &qword_264B47140);
  if (v62)
  {
    goto LABEL_20;
  }

LABEL_13:
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v50 = sub_264B40964();
  __swift_project_value_buffer(v50, qword_27FFA71B8);
  v51 = v96;
  v88(v96, v100, v43);
  v52 = sub_264B40944();
  v53 = sub_264B41494();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = v44;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v102[0] = v56;
    *v55 = 136446210;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v57 = sub_264B41A64();
    v59 = v58;
    (*(v54 + 8))(v51, v43);
    v60 = sub_2649CC004(v57, v59, v102);

    *(v55 + 4) = v60;
    _os_log_impl(&dword_2649C6000, v52, v53, "Authentication completed for a different unlock generation: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v56);
    MEMORY[0x266749940](v56, -1, -1);
    MEMORY[0x266749940](v55, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v51, v43);
  }

  (*(v89 + 8))(v101, v90);
}

void sub_264A0B964(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  v59 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = &v53 - v6;
  v7 = sub_264B40F14();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_264B3FFD4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v16 = sub_264B40964();
  v17 = __swift_project_value_buffer(v16, qword_27FFA71B8);
  v63 = 0x496E6F6973736573;
  v64 = 0xEB00000000203A44;
  sub_264B40104();
  sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
  v18 = sub_264B41A64();
  MEMORY[0x266748390](v18);

  v19 = v64;
  v54 = v63;
  v20 = sub_264B414B4();
  sub_264B3FF94();
  v21 = sub_264B3FFA4();
  v23 = v22;
  (*(v12 + 8))(v15, v11);
  v58 = v17;
  v24 = sub_264B40944();
  if (os_log_type_enabled(v24, v20))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63 = v26;
    *v25 = 136446978;
    v27 = sub_2649CC004(v21, v23, &v63);

    *(v25 + 4) = v27;
    *(v25 + 12) = 2050;
    *(v25 + 14) = 361;
    *(v25 + 22) = 2082;
    *(v25 + 24) = sub_2649CC004(0xD000000000000049, 0x8000000264B5ABA0, &v63);
    *(v25 + 32) = 2082;
    *(v25 + 34) = sub_2649CC004(v54, v19, &v63);
    _os_log_impl(&dword_2649C6000, v24, v20, "%{public}s:%{public}ld %{public}s %{public}s", v25, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v26, -1, -1);
    MEMORY[0x266749940](v25, -1, -1);
  }

  else
  {
  }

  v28 = v61;
  v29 = v62;
  v30 = *&v62[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue];
  *v10 = v30;
  v31 = v60;
  (*(v60 + 104))(v10, *MEMORY[0x277D85200], v28);
  v32 = v30;
  LOBYTE(v30) = sub_264B40F34();
  (*(v31 + 8))(v10, v28);
  if (v30)
  {
    v33 = [v59 appName];
    if (v33)
    {
      v34 = v33;
      v35 = sub_264B41044();
      v37 = v36;

      v38 = sub_264B40944();
      v39 = sub_264B414B4();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v63 = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_2649CC004(v35, v37, &v63);
        _os_log_impl(&dword_2649C6000, v38, v39, "Approval request received on behalf of: %{public}s", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v41);
        MEMORY[0x266749940](v41, -1, -1);
        MEMORY[0x266749940](v40, -1, -1);
      }

      v42 = sub_264B41274();
      v43 = v55;
      (*(*(v42 - 8) + 56))(v55, 1, 1, v42);
      sub_264B41244();
      v44 = v29;
      v45 = v57;

      v46 = sub_264B41234();
      v47 = swift_allocObject();
      v48 = MEMORY[0x277D85700];
      v47[2] = v46;
      v47[3] = v48;
      v47[4] = v44;
      v47[5] = v35;
      v49 = v56;
      v47[6] = v37;
      v47[7] = v49;
      v47[8] = v45;
      sub_264A10C20(0, 0, v43, &unk_264B474D0, v47);
    }

    else
    {
      v50 = sub_264B40944();
      v51 = sub_264B41494();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_2649C6000, v50, v51, "Approval request came with no appName information - it should never happen.", v52, 2u);
        MEMORY[0x266749940](v52, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_264A0BFF4(uint64_t a1, void *a2)
{
  v41 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v39 - v4;
  v5 = sub_264B40F14();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_264B3FFD4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v14 = sub_264B40964();
  __swift_project_value_buffer(v14, qword_27FFA71B8);
  v45 = 0x496E6F6973736573;
  v46 = 0xEB00000000203A44;
  sub_264B40104();
  sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
  v15 = sub_264B41A64();
  MEMORY[0x266748390](v15);

  v16 = v46;
  v39 = v45;
  v17 = sub_264B41494();
  sub_264B3FF94();
  v18 = sub_264B3FFA4();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  v21 = sub_264B40944();
  if (os_log_type_enabled(v21, v17))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v45 = v23;
    *v22 = 136446978;
    v24 = sub_2649CC004(v18, v20, &v45);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2050;
    *(v22 + 14) = 386;
    *(v22 + 22) = 2082;
    *(v22 + 24) = sub_2649CC004(0xD00000000000002ELL, 0x8000000264B5AB70, &v45);
    *(v22 + 32) = 2082;
    *(v22 + 34) = sub_2649CC004(v39, v16, &v45);
    _os_log_impl(&dword_2649C6000, v21, v17, "%{public}s:%{public}ld %{public}s %{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x266749940](v23, -1, -1);
    MEMORY[0x266749940](v22, -1, -1);
  }

  else
  {
  }

  v25 = v43;
  v26 = v44;
  v27 = *&v44[OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue];
  *v8 = v27;
  v28 = v42;
  (*(v42 + 104))(v8, *MEMORY[0x277D85200], v25);
  v29 = v27;
  LOBYTE(v27) = sub_264B40F34();
  result = (*(v28 + 8))(v8, v25);
  if (v27)
  {
    v31 = sub_264B41274();
    v32 = v40;
    (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
    sub_264B41244();
    v33 = v41;
    v34 = v41;
    v35 = v26;
    v36 = sub_264B41234();
    v37 = swift_allocObject();
    v38 = MEMORY[0x277D85700];
    v37[2] = v36;
    v37[3] = v38;
    v37[4] = v33;
    v37[5] = v35;
    sub_264A10C20(0, 0, v32, &unk_264B474C0, v37);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_264A0C504(uint64_t a1)
{
  v93 = a1;
  v94 = sub_264B40104();
  v96 = *(v94 - 8);
  v2 = *(v96 + 64);
  v3 = MEMORY[0x28223BE20](v94);
  v91 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v87 = &v79 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89370, &qword_264B474B0);
  v6 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v8 = &v79 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v89 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v79 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v88 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v79 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v95 = &v79 - v26;
  v27 = sub_264B40F14();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v1 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_264B40F34();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v34 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_disableDeviceContinuation;
  swift_beginAccess();
  sub_2649D046C(v1 + v34, v22, &unk_27FF89360, &unk_264B474A0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_2649D04D4(v22, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v35 = sub_264B40964();
      __swift_project_value_buffer(v35, qword_27FFA71B8);
      v36 = sub_264B40944();
      v37 = sub_264B41494();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2649C6000, v36, v37, "disableDeviceContinuation is not available.", v38, 2u);
        MEMORY[0x266749940](v38, -1, -1);
      }

      return;
    }

LABEL_25:
    swift_once();
    goto LABEL_4;
  }

  v83 = v34;
  v85 = v23;
  v86 = v24;
  (*(v24 + 32))(v95, v22, v23);
  v39 = v96;
  v40 = v94;
  v84 = *(v96 + 16);
  v84(v16, v93, v94);
  v41 = *(v39 + 56);
  v82 = v39 + 56;
  v81 = v41;
  v41(v16, 0, 1, v40);
  v42 = OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_resetGeneration;
  swift_beginAccess();
  v43 = *(v92 + 48);
  sub_2649D046C(v16, v8, &unk_27FF8BFC0, &qword_264B47140);
  v92 = v42;
  v44 = v1 + v42;
  v45 = v40;
  sub_2649D046C(v44, &v8[v43], &unk_27FF8BFC0, &qword_264B47140);
  v46 = *(v39 + 48);
  if (v46(v8, 1, v40) == 1)
  {
    sub_2649D04D4(v16, &unk_27FF8BFC0, &qword_264B47140);
    v47 = v46(&v8[v43], 1, v40);
    v48 = v86;
    if (v47 == 1)
    {
      v80 = v1;
      sub_2649D04D4(v8, &unk_27FF8BFC0, &qword_264B47140);
      v49 = v85;
LABEL_19:
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v68 = sub_264B40964();
      __swift_project_value_buffer(v68, qword_27FFA71B8);
      v69 = sub_264B40944();
      v70 = sub_264B41484();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_2649C6000, v69, v70, "Paired iPhone disabled", v71, 2u);
        v72 = v71;
        v48 = v86;
        MEMORY[0x266749940](v72, -1, -1);
      }

      v73 = v95;
      sub_264B411E4();
      (*(v48 + 8))(v73, v49);
      v74 = v88;
      (*(v48 + 56))(v88, 1, 1, v49);
      v75 = v80;
      v76 = v83;
      swift_beginAccess();
      sub_2649FECCC(v74, v75 + v76, &unk_27FF89360, &unk_264B474A0);
      swift_endAccess();
      v77 = v89;
      v81(v89, 1, 1, v45);
      v78 = v92;
      swift_beginAccess();
      sub_2649FECCC(v77, v75 + v78, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      return;
    }

    goto LABEL_12;
  }

  v50 = v90;
  sub_2649D046C(v8, v90, &unk_27FF8BFC0, &qword_264B47140);
  if (v46(&v8[v43], 1, v40) == 1)
  {
    sub_2649D04D4(v16, &unk_27FF8BFC0, &qword_264B47140);
    (*(v96 + 8))(v50, v40);
    v48 = v86;
LABEL_12:
    sub_2649D04D4(v8, &unk_27FF89370, &qword_264B474B0);
    v49 = v85;
    goto LABEL_13;
  }

  v80 = v1;
  v63 = v96;
  v64 = v87;
  (*(v96 + 32))(v87, &v8[v43], v40);
  sub_264A05738(&unk_27FF89390, MEMORY[0x277CC95F0]);
  v65 = sub_264B40F94();
  v66 = v50;
  v67 = *(v63 + 8);
  v67(v64, v94);
  sub_2649D04D4(v16, &unk_27FF8BFC0, &qword_264B47140);
  v67(v66, v94);
  v49 = v85;
  v45 = v94;
  sub_2649D04D4(v8, &unk_27FF8BFC0, &qword_264B47140);
  v48 = v86;
  if (v65)
  {
    goto LABEL_19;
  }

LABEL_13:
  v51 = v49;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v52 = sub_264B40964();
  __swift_project_value_buffer(v52, qword_27FFA71B8);
  v53 = v91;
  v84(v91, v93, v45);
  v54 = sub_264B40944();
  v55 = sub_264B41494();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v97 = v57;
    *v56 = 136446210;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v58 = sub_264B41A64();
    v59 = v48;
    v61 = v60;
    (*(v96 + 8))(v53, v45);
    v62 = sub_2649CC004(v58, v61, &v97);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_2649C6000, v54, v55, "Disable device completed for a different reset generation: %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x266749940](v57, -1, -1);
    MEMORY[0x266749940](v56, -1, -1);

    (*(v59 + 8))(v95, v51);
  }

  else
  {

    (*(v96 + 8))(v53, v45);
    (*(v48 + 8))(v95, v49);
  }
}

void sub_264A0D088(uint64_t a1, void *a2, void *a3, void *a4, const char *a5, const char *a6, const char *a7)
{
  v110 = a7;
  v106 = a6;
  v104 = a5;
  v113 = a4;
  v114 = a2;
  v117 = a3;
  v115 = a1;
  v116 = sub_264B40104();
  v119 = *(v116 - 8);
  v8 = *(v119 + 64);
  v9 = MEMORY[0x28223BE20](v116);
  v111 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v105 = &v99 - v11;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89370, &qword_264B474B0);
  v12 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v14 = &v99 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v108 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v109 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v99 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF89360, &unk_264B474A0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v107 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v99 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v118 = &v99 - v32;
  v33 = sub_264B40F14();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (&v99 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = *(v7 + OBJC_IVAR____TtC16ScreenSharingKit37SharingBackedAuthenticationPrimitives_authenticationQueue);
  *v37 = v38;
  (*(v34 + 104))(v37, *MEMORY[0x277D85200], v33);
  v39 = v38;
  LOBYTE(v38) = sub_264B40F34();
  (*(v34 + 8))(v37, v33);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v40 = *v117;
  swift_beginAccess();
  sub_2649D046C(v7 + v40, v28, &unk_27FF89360, &unk_264B474A0);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_2649D04D4(v28, &unk_27FF89360, &unk_264B474A0);
    if (qword_27FF883E0 == -1)
    {
LABEL_4:
      v41 = sub_264B40964();
      __swift_project_value_buffer(v41, qword_27FFA71B8);
      v42 = sub_264B40944();
      v43 = sub_264B41494();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2649C6000, v42, v43, v110, v44, 2u);
        MEMORY[0x266749940](v44, -1, -1);
      }

      return;
    }

LABEL_26:
    swift_once();
    goto LABEL_4;
  }

  v102 = v40;
  v110 = v30;
  v45 = *(v30 + 32);
  v117 = v29;
  v45(v118, v28, v29);
  v46 = v119;
  v47 = v116;
  v103 = *(v119 + 16);
  v103(v22, v115, v116);
  v48 = *(v46 + 56);
  v101 = v46 + 56;
  v100 = v48;
  v48(v22, 0, 1, v47);
  v49 = *v113;
  swift_beginAccess();
  v50 = *(v112 + 48);
  sub_2649D046C(v22, v14, &unk_27FF8BFC0, &qword_264B47140);
  v113 = v49;
  sub_2649D046C(v49 + v7, &v14[v50], &unk_27FF8BFC0, &qword_264B47140);
  v51 = *(v46 + 48);
  if (v51(v14, 1, v47) == 1)
  {
    sub_2649D04D4(v22, &unk_27FF8BFC0, &qword_264B47140);
    if (v51(&v14[v50], 1, v47) == 1)
    {
      v112 = v7;
      sub_2649D04D4(v14, &unk_27FF8BFC0, &qword_264B47140);
LABEL_20:
      v74 = v114;
      if (qword_27FF883E0 != -1)
      {
        swift_once();
      }

      v75 = sub_264B40964();
      __swift_project_value_buffer(v75, qword_27FFA71B8);
      v76 = v74;
      v77 = sub_264B40944();
      v78 = sub_264B41484();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v120[0] = v80;
        *v79 = 136446210;
        v122 = v74;
        v81 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
        v82 = sub_264B41064();
        v84 = sub_2649CC004(v82, v83, v120);

        *(v79 + 4) = v84;
        _os_log_impl(&dword_2649C6000, v77, v78, v104, v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v80);
        v85 = v80;
        v47 = v116;
        MEMORY[0x266749940](v85, -1, -1);
        MEMORY[0x266749940](v79, -1, -1);
      }

      v86 = v112;
      sub_264A03E44(v120);
      v87 = v120[0];
      v88 = v120[1];
      v89 = v121;
      sub_264A0DFC0();
      v90 = swift_allocError();
      *v91 = v87;
      *(v91 + 8) = v88;
      *(v91 + 16) = v89;
      v120[0] = v90;
      v92 = v117;
      v93 = v118;
      sub_264B411D4();
      v94 = v110;
      (*(v110 + 1))(v93, v92);
      v95 = v107;
      (*(v94 + 7))(v107, 1, 1, v92);
      v96 = v102;
      swift_beginAccess();
      sub_2649FECCC(v95, v86 + v96, &unk_27FF89360, &unk_264B474A0);
      swift_endAccess();
      v97 = v108;
      v100(v108, 1, 1, v47);
      v98 = v113;
      swift_beginAccess();
      sub_2649FECCC(v97, v98 + v86, &unk_27FF8BFC0, &qword_264B47140);
      swift_endAccess();
      return;
    }

    goto LABEL_12;
  }

  v52 = v109;
  sub_2649D046C(v14, v109, &unk_27FF8BFC0, &qword_264B47140);
  if (v51(&v14[v50], 1, v47) == 1)
  {
    sub_2649D04D4(v22, &unk_27FF8BFC0, &qword_264B47140);
    (*(v119 + 8))(v52, v47);
LABEL_12:
    sub_2649D04D4(v14, &unk_27FF89370, &qword_264B474B0);
    goto LABEL_13;
  }

  v112 = v7;
  v70 = v119;
  v71 = v105;
  (*(v119 + 32))(v105, &v14[v50], v47);
  sub_264A05738(&unk_27FF89390, MEMORY[0x277CC95F0]);
  v72 = sub_264B40F94();
  v73 = *(v70 + 8);
  v73(v71, v116);
  sub_2649D04D4(v22, &unk_27FF8BFC0, &qword_264B47140);
  v73(v52, v116);
  v47 = v116;
  sub_2649D04D4(v14, &unk_27FF8BFC0, &qword_264B47140);
  if (v72)
  {
    goto LABEL_20;
  }

LABEL_13:
  v53 = v114;
  if (qword_27FF883E0 != -1)
  {
    swift_once();
  }

  v54 = sub_264B40964();
  __swift_project_value_buffer(v54, qword_27FFA71B8);
  v55 = v111;
  v103(v111, v115, v47);
  v56 = v53;
  v57 = sub_264B40944();
  v58 = v47;
  v59 = sub_264B41494();

  if (os_log_type_enabled(v57, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v120[0] = v61;
    *v60 = 136446466;
    sub_264A05738(&qword_27FF88A70, MEMORY[0x277CC95F0]);
    v62 = sub_264B41A64();
    v64 = v63;
    (*(v119 + 8))(v55, v58);
    v65 = sub_2649CC004(v62, v64, v120);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2082;
    v122 = v53;
    v66 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89380, &qword_264B44180);
    v67 = sub_264B41064();
    v69 = sub_2649CC004(v67, v68, v120);

    *(v60 + 14) = v69;
    _os_log_impl(&dword_2649C6000, v57, v59, v106, v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266749940](v61, -1, -1);
    MEMORY[0x266749940](v60, -1, -1);
  }

  else
  {

    (*(v119 + 8))(v55, v58);
  }

  (*(v110 + 1))(v118, v117);
}

void sub_264A0DD50()
{
  v0 = type metadata accessor for ContinuityDevice(319);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_264A0DE9C();
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_264A0DF00();
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_264A0DE9C()
{
  if (!qword_27FF892F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89278, &unk_264B47390);
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF892F0);
    }
  }
}

void sub_264A0DF00()
{
  if (!qword_27FF89D70)
  {
    sub_264B40104();
    v0 = sub_264B41614();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF89D70);
    }
  }
}

uint64_t sub_264A0DF58()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_264A0DFC0()
{
  result = qword_27FF89388;
  if (!qword_27FF89388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89388);
  }

  return result;
}

uint64_t sub_264A0E014()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264A0E05C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2649CD850;

  return sub_264A0956C(a1, v4, v5, v7, v6);
}

uint64_t sub_264A0E11C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 6u)
  {
  }

  return result;
}

uint64_t sub_264A0E134()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264A0E184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2649E0EE4;

  return sub_264A08EA8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264A0E27C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 24);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A0E354()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893A0, &unk_264B44E60) - 8) + 80);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_264A07844(v2, v3, v4);
}

uint64_t sub_264A0E3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_2649DEF6C(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

void sub_264A0E4C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *(v0 + v4);
  v8 = *v6;
  v9 = v6[1];

  sub_264A06C00(v5, v0 + v2, v8, v9, v7);
}

uint64_t objectdestroy_60Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_264A0E670(uint64_t (*a1)(uint64_t, unint64_t, uint64_t))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89278, &unk_264B47390) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v4, v1 + v3, v5);
}

unint64_t sub_264A0E738()
{
  result = qword_27FF893B8;
  if (!qword_27FF893B8)
  {
    sub_2649D8B90(255, &qword_27FF893B0, 0x277D54C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF893B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MediaTransportTestConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MediaTransportTestConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_264A0E838()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v2())
  {
    v5 = *v1;
    v4 = v1[1];
    v6 = v1[4];
    type metadata accessor for DragAndDropEventConsumer();
    v7 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v7 + 144) = 0;
    *(v7 + 112) = v5;
    *(v7 + 120) = v4;
    *(v7 + 128) = v6;
    *(v7 + 136) = 0;
    v8 = &unk_27FF893C8;
    v9 = type metadata accessor for DragAndDropEventConsumer;
  }

  else
  {
    type metadata accessor for EmptyDragAndDropEventConsumer();
    v7 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v7 + 112) = 0;
    v8 = &unk_27FF893C0;
    v9 = type metadata accessor for EmptyDragAndDropEventConsumer;
  }

  sub_264A0E968(v8, v9);
  return v7;
}

uint64_t sub_264A0E940@<X0>(uint64_t *a1@<X8>)
{
  result = sub_264A0E838();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_264A0E968(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_264A0E9C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_264A0EA0C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_264A0EA64()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264A0EAD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_264A0EAF4, v2, 0);
}

uint64_t sub_264A0EAF4()
{
  v1 = v0[4];
  if (v1[17])
  {
    sub_264A0F89C();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();
    v3 = v0[1];

    return v3();
  }

  else
  {
    v6 = v0[2];
    v5 = v0[3];
    v8 = v1[14];
    v7 = v1[15];
    v9 = swift_allocObject();
    v0[5] = v9;
    swift_weakInit();
    v10 = swift_allocObject();
    v0[6] = v10;
    v10[2] = v8;
    v10[3] = v7;
    v10[4] = v9;
    v10[5] = v6;
    v10[6] = v5;
    v0[7] = v1[16];
    sub_264B41244();

    v0[8] = sub_264B41234();
    v12 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A0EC94, v12, v11);
  }
}

uint64_t sub_264A0EC94()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];

  type metadata accessor for DragAndDropEventRouter();
  v6 = swift_allocObject();
  v0[9] = v6;
  v7 = type metadata accessor for ServerDragForwardingManager();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = sub_264AD3A24(&unk_264B47648, v4, v2);

  *(v6 + 16) = v10;
  type metadata accessor for ServerDragSurrogateManager();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F98];
  *(v11 + 48) = 1;
  *(v11 + 16) = &unk_264B47648;
  *(v11 + 24) = v4;
  *(v11 + 32) = v2;
  *(v11 + 40) = v12;
  *(v6 + 24) = v11;
  v10[3] = &off_287657540;
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](sub_264A0EDEC, v5, 0);
}

uint64_t sub_264A0EDEC()
{
  v1 = v0[4];
  v2 = *(v1 + 136);
  *(v1 + 136) = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_264A0EE5C(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v11 = (a2 + *a2);
  v8 = a2[1];
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_264A0EF58;

  return v11(a1);
}

uint64_t sub_264A0EF58()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264A0F104, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_264A0F08C()
{
  v1 = *(v0 + 72);
  swift_willThrow();

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_264A0F104()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[10] = Strong;
  v3 = v0[9];
  if (Strong)
  {
    v4 = Strong;
    sub_264A0F89C();
    v0[11] = swift_allocError();
    *v5 = v3;
    v6 = v3;
    v7 = v3;

    return MEMORY[0x2822009F8](sub_264A0F224, v4, 0);
  }

  else
  {
    v8 = v3;
    v9 = v0[9];
    swift_willThrow();

    v10 = v0[1];
    v11 = v0[9];

    return v10();
  }
}

uint64_t sub_264A0F224()
{
  v1 = v0[10];
  if (*(v1 + 136) && (*(v1 + 144) & 1) == 0)
  {
    v2 = v0[11];
    v4 = v0[6];
    v3 = v0[7];
    *(v1 + 144) = 1;
    v5 = v1;
    v6 = sub_264A0FA34(&qword_27FF893C8);
    v4(v5, v6, v2);
    v7 = v0[10];
  }

  v8 = v0[11];

  return MEMORY[0x2822009F8](sub_264A0F08C, 0, 0);
}

uint64_t sub_264A0F320()
{
  v1 = v0[2];
  v2 = *(v1 + 136);
  v0[3] = v2;
  if (v2)
  {
    *(v1 + 136) = 0;
    sub_264B41244();
    v0[4] = sub_264B41234();
    v4 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A0F430, v4, v3);
  }

  else
  {
    sub_264A0F89C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_264A0F430()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_2649DECD8();

  return MEMORY[0x2822009F8](sub_264A0F4A0, v3, 0);
}

uint64_t sub_264A0F4A0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_264A0F504(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2649E0EE4;

  return sub_264A0EAD0(a1, a2);
}

uint64_t sub_264A0F5A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2649CD850;

  return sub_264A0F300();
}

uint64_t sub_264A0F634(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_264A0F654, v1, 0);
}

uint64_t sub_264A0F654()
{
  v1 = *(v0[3] + 136);
  v0[4] = v1;
  if (v1)
  {
    sub_264B41244();

    v0[5] = sub_264B41234();
    v3 = sub_264B411C4();

    return MEMORY[0x2822009F8](sub_264A0F76C, v3, v2);
  }

  else
  {
    sub_264A0F89C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    v5 = v0[1];

    return v5(0);
  }
}

uint64_t sub_264A0F76C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  *(v0 + 48) = sub_2649DE81C(v4);

  return MEMORY[0x2822009F8](sub_264A0F7F0, v3, 0);
}

uint64_t sub_264A0F7F0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);
  v3 = *(v0 + 48);

  return v2(v3);
}

uint64_t sub_264A0F858(uint64_t a1)
{
  result = sub_264A0FA34(&qword_27FF893D0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_264A0F89C()
{
  result = qword_27FF893D8;
  if (!qword_27FF893D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF893D8);
  }

  return result;
}

uint64_t sub_264A0F8F0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_264A0F928()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264A0F970(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A0EE5C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_264A0FA34(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DragAndDropEventConsumer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ScreenSharingKit24DragAndDropEventConsumerC0H5ErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_264A0FA8C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
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

uint64_t sub_264A0FAE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_264A0FB3C(void *result, int a2)
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

uint64_t sub_264A0FB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_264A0FC50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_264B40104();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for HIDUpdateInputDevicesMessage()
{
  result = qword_27FF893E0;
  if (!qword_27FF893E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A0FD54()
{
  sub_264B40104();
  if (v0 <= 0x3F)
  {
    sub_264A0FDD8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_264A0FDD8()
{
  if (!qword_27FF893F0)
  {
    v0 = sub_264B411B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF893F0);
    }
  }
}

uint64_t sub_264A0FE28(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89428, &qword_264B47788);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A105F8();
  sub_264B41BD4();
  v14 = 0;
  sub_264B40104();
  sub_264A10760(&qword_27FF89430);
  sub_264B41A24();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for HIDUpdateInputDevicesMessage() + 20));
    v12[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89410, &qword_264B47780);
    sub_264A107A4(&qword_27FF89438, sub_264A1081C);
    sub_264B41A24();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_264A10028@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_264B40104();
  v27 = *(v30 - 8);
  v4 = *(v27 + 64);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF893F8, &qword_264B47778);
  v8 = *(v7 - 8);
  v28 = v7;
  v29 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = type metadata accessor for HIDUpdateInputDevicesMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_264A105F8();
  sub_264B41BC4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = v12;
  v17 = v15;
  v18 = v27;
  v33 = 0;
  sub_264A10760(&qword_27FF89408);
  v19 = v30;
  v20 = v28;
  sub_264B41984();
  v21 = *(v18 + 32);
  v24 = v17;
  v21(v17, v6, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89410, &qword_264B47780);
  v32 = 1;
  sub_264A107A4(&qword_27FF89418, sub_264A1064C);
  sub_264B41984();
  (*(v29 + 8))(v11, v20);
  v22 = v24;
  *(v24 + *(v25 + 20)) = v31;
  sub_264A106A0(v22, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_264A10704(v22);
}

uint64_t sub_264A103B8()
{
  if (*v0)
  {
    result = 0x7665447475706E69;
  }

  else
  {
    result = 0x4449656369766564;
  }

  *v0;
  return result;
}

uint64_t sub_264A103FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656369766564 && a2 == 0xE800000000000000;
  if (v6 || (sub_264B41AA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7665447475706E69 && a2 == 0xEC00000073656369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_264B41AA4();

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

uint64_t sub_264A104E8(uint64_t a1)
{
  v2 = sub_264A105F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_264A10524(uint64_t a1)
{
  v2 = sub_264A105F8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_264A10590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_264B400C4())
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6);
    v8 = *(a2 + v6);

    sub_264A16F8C(v7, v8);
  }
}

unint64_t sub_264A105F8()
{
  result = qword_27FF89400;
  if (!qword_27FF89400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89400);
  }

  return result;
}

unint64_t sub_264A1064C()
{
  result = qword_27FF89420;
  if (!qword_27FF89420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89420);
  }

  return result;
}

uint64_t sub_264A106A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HIDUpdateInputDevicesMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_264A10704(uint64_t a1)
{
  v2 = type metadata accessor for HIDUpdateInputDevicesMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_264A10760(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_264B40104();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_264A107A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89410, &qword_264B47780);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_264A1081C()
{
  result = qword_27FF89440;
  if (!qword_27FF89440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89440);
  }

  return result;
}

unint64_t sub_264A10884()
{
  result = qword_27FF89448;
  if (!qword_27FF89448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89448);
  }

  return result;
}

unint64_t sub_264A108DC()
{
  result = qword_27FF89450;
  if (!qword_27FF89450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89450);
  }

  return result;
}

unint64_t sub_264A10934()
{
  result = qword_27FF89458;
  if (!qword_27FF89458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89458);
  }

  return result;
}

uint64_t sub_264A1099C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40104();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264A10A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_264B40104();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for IdentifiablePoint()
{
  result = qword_27FF89460;
  if (!qword_27FF89460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A10AD8()
{
  sub_264B40104();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGPoint(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_264A10B60()
{
  result = qword_27FF89470;
  if (!qword_27FF89470)
  {
    sub_264B40104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF89470);
  }

  return result;
}

uint64_t sub_264A10BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_264B40104();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_264A10C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_264A16208(a3, v27 - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2649D04D4(v12, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264B411C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_264B41074() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_264A10F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_264A16208(a3, v27 - v11);
  v13 = sub_264B41274();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2649D04D4(v12, &qword_27FF898C0, &unk_264B44190);
  }

  else
  {
    sub_264B41264();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_264B411C4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_264B41074() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89518, &qword_264B47A70);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2649D04D4(a3, &qword_27FF898C0, &unk_264B44190);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89518, &qword_264B47A70);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t ActivityAssertionManager.Assertion.deinit()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v18 - v8;
  v18[1] = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_manager;
  Strong = swift_weakLoadStrong();
  v11 = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_identifier;
  v12 = sub_264B41274();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v3 + 16))(v5, v0 + v11, v2);
  sub_264B41244();

  v13 = sub_264B41234();
  v14 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = Strong;
  (*(v3 + 32))(&v15[v14], v5, v2);
  sub_264A10F10(0, 0, v9, &unk_264B47920, v15);

  (*(v3 + 8))(v1 + v11, v2);
  swift_weakDestroy();
  return v1;
}

uint64_t sub_264A1146C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_264B41244();
  v5[5] = sub_264B41234();
  v7 = sub_264B411C4();

  return MEMORY[0x2822009F8](sub_264A11508, v7, v6);
}

uint64_t sub_264A11508()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (v2)
  {
    v3 = *(v0 + 24);
    sub_264A120C0(*(v0 + 32));
  }

  **(v0 + 16) = v2 == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_264A1158C(uint64_t a1)
{
  v4 = *(sub_264B40104() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649E0EE4;

  return sub_264A1146C(a1, v6, v7, v8, v1 + v5);
}

uint64_t ActivityAssertionManager.Assertion.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF898C0, &unk_264B44190);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v20 - v8;
  v20[1] = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_manager;
  Strong = swift_weakLoadStrong();
  v11 = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_identifier;
  v12 = sub_264B41274();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v3 + 16))(v5, v0 + v11, v2);
  sub_264B41244();

  v13 = sub_264B41234();
  v14 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 2) = v13;
  *(v15 + 3) = v16;
  *(v15 + 4) = Strong;
  (*(v3 + 32))(&v15[v14], v5, v2);
  sub_264A10F10(0, 0, v9, &unk_264B47928, v15);

  (*(v3 + 8))(v1 + v11, v2);
  swift_weakDestroy();
  v17 = *(*v1 + 48);
  v18 = *(*v1 + 52);
  return swift_deallocClassInstance();
}

uint64_t objectdestroyTm()
{
  v1 = sub_264B40104();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_264A119D8(uint64_t a1)
{
  v4 = *(sub_264B40104() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2649CD850;

  return sub_264A1146C(a1, v6, v7, v8, v1 + v5);
}

uint64_t ActivityAssertionManager.deinit()
{
  v1 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  if (*(v10 + 16))
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v2 = sub_264B40964();
    __swift_project_value_buffer(v2, qword_27FFA71B8);

    v3 = sub_264B40944();
    v4 = sub_264B414A4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      v6 = *(v10 + 16);

      *(v5 + 4) = v6;

      _os_log_impl(&dword_2649C6000, v3, v4, "ActivityAssertionManager deinitialized with %ld un-released assertions", v5, 0xCu);
      MEMORY[0x266749940](v5, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
  }

  v7 = OBJC_IVAR____TtC16ScreenSharingKit24ActivityAssertionManager__assertions;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t ActivityAssertionManager.__deallocating_deinit()
{
  ActivityAssertionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t ActivityAssertionManager.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89498, &qword_264B47980);
  sub_264B40A44();
  return v3;
}

uint64_t ActivityAssertionManager.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC16ScreenSharingKit24ActivityAssertionManager__assertions;
  v8[1] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89498, &qword_264B47980);
  sub_264B40A44();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t sub_264A11E7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  return v1;
}

uint64_t sub_264A11EF0()
{
  v0 = sub_264B40104();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v15[-v6];
  v8 = type metadata accessor for ActivityAssertionManager.Assertion(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtCC16ScreenSharingKit24ActivityAssertionManager9Assertion_identifier;
  sub_264B400F4();
  swift_weakInit();
  swift_weakAssign();
  (*(v1 + 16))(v5, v11 + v12, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = sub_264B40A74();
  sub_264A12BC4(v7, v5);
  (*(v1 + 8))(v7, v0);
  v13(v15, 0);

  return v11;
}

void sub_264A120C0(uint64_t a1)
{
  v2 = sub_264B40104();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF8BFC0, &qword_264B47140);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v22 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  v11 = sub_264AA0270(a1, v22[0]);

  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = sub_264B40A74();
    sub_264AAA010(a1, v10);
    sub_2649D04D4(v10, &unk_27FF8BFC0, &qword_264B47140);
    v12(v22, 0);
  }

  else
  {
    if (qword_27FF883E0 != -1)
    {
      swift_once();
    }

    v13 = sub_264B40964();
    __swift_project_value_buffer(v13, qword_27FFA71B8);
    (*(v3 + 16))(v6, a1, v2);
    v14 = sub_264B40944();
    v15 = sub_264B41494();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136446210;
      sub_264A10760(&qword_27FF88A70);
      v18 = sub_264B41A64();
      v20 = v19;
      (*(v3 + 8))(v6, v2);
      v21 = sub_2649CC004(v18, v20, v22);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2649C6000, v14, v15, "Attempted to release an assertion (%{public}s) that was already released, this is a bug, ignoring", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x266749940](v17, -1, -1);
      MEMORY[0x266749940](v16, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

uint64_t ActivityAssertionManager.occurringActivityPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A0, &qword_264B47988);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A8, &qword_264B47990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF894B0, &qword_27FF894A0, &qword_264B47988);
  sub_264B40AF4();
  (*(v1 + 8))(v4, v0);
  sub_2649CB4C8(&qword_27FF894B8, &qword_27FF894A8, &qword_264B47990);
  v10 = sub_264B40AB4();
  (*(v6 + 8))(v9, v5);
  return v10;
}

uint64_t sub_264A126D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A0, &qword_264B47988);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894A8, &qword_264B47990);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = *v0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89490, &qword_264B47978);
  sub_264B40A54();
  swift_endAccess();
  sub_2649CB4C8(&qword_27FF894B0, &qword_27FF894A0, &qword_264B47988);
  sub_264B40AF4();
  (*(v2 + 8))(v5, v1);
  sub_2649CB4C8(&qword_27FF894B8, &qword_27FF894A8, &qword_264B47990);
  v12 = sub_264B40AB4();
  (*(v7 + 8))(v10, v6);
  return v12;
}

uint64_t sub_264A12940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264B40A84();

  *a2 = v5;
  return result;
}

uint64_t sub_264A129C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_264B40A94();
}

uint64_t sub_264A12A9C(_BYTE *a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = *v7;
  v11 = *(*v7 + 40);
  sub_264B41B84();
  v12 = a2 & 1;
  MEMORY[0x266748E90](v12);
  v13 = sub_264B41BB4();
  v14 = -1 << *(v10 + 32);
  v15 = v13 & ~v14;
  if ((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    while (1)
    {
      v17 = *(v10 + 48);
      if (*(v17 + v15) == v12)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v12) = *(v17 + v15);
  }

  else
  {
LABEL_5:
    v18 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v7;
    sub_264A143D0(v12, v15, isUniquelyReferenced_nonNull_native, a3, a4);
    *v7 = v21;
    result = 1;
  }

  *a1 = v12;
  return result;
}

uint64_t sub_264A12BC4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_264A10760(&qword_27FF89470);
  v36 = a2;
  v13 = sub_264B40F84();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_264A10760(&unk_27FF89390);
      v23 = sub_264B40F94();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_264A14548(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_264A12EA4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_264A12EDC()
{
  sub_264A12FBC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_264A12FBC()
{
  if (!qword_27FF894D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF89498, &qword_264B47980);
    v0 = sub_264B40AA4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF894D0);
    }
  }
}

uint64_t sub_264A13028()
{
  result = sub_264B40104();
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

uint64_t sub_264A130D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_264B41B84();
  sub_264B41084();
  v9 = sub_264B41BB4();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_264B41AA4() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_264A147C4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_264A13228(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_264B41B84();
  sub_264B41084();

  v6 = sub_264B41BB4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  v28 = v4 + 56;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v27 = ~v7;
    v9 = 0xEF6573556E49656ELL;
    v29 = v4;
    v10 = 0xE700000000000000;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      v30 = v8;
      if (v11 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v12 = 0x6E49656369766564;
        }

        else
        {
          v12 = 0x6E776F6E6B6E75;
        }

        if (*(*(v4 + 48) + v8))
        {
          v13 = 0xEB00000000657355;
        }

        else
        {
          v13 = 0xE700000000000000;
        }
      }

      else if (v11 == 2)
      {
        v12 = 0xD000000000000011;
        v13 = 0x8000000264B58BE0;
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x6F68706F7263696DLL;
        }

        else
        {
          v12 = 0x6E496172656D6163;
        }

        if (v11 == 3)
        {
          v13 = v9;
        }

        else
        {
          v13 = 0xEB00000000657355;
        }
      }

      if (a2 == 3)
      {
        v14 = 0x6F68706F7263696DLL;
      }

      else
      {
        v14 = 0x6E496172656D6163;
      }

      if (a2 == 3)
      {
        v15 = v9;
      }

      else
      {
        v15 = 0xEB00000000657355;
      }

      if (a2 == 2)
      {
        v14 = 0xD000000000000011;
        v15 = 0x8000000264B58BE0;
      }

      if (a2)
      {
        v16 = 0x6E49656369766564;
      }

      else
      {
        v16 = 0x6E776F6E6B6E75;
      }

      if (a2)
      {
        v10 = 0xEB00000000657355;
      }

      v17 = a2 <= 1u ? v16 : v14;
      v18 = a2 <= 1u ? v10 : v15;
      if (v12 == v17 && v13 == v18)
      {
        break;
      }

      v19 = v9;
      v20 = sub_264B41AA4();

      if (v20)
      {
        goto LABEL_43;
      }

      v8 = (v30 + 1) & v27;
      v4 = v29;
      v9 = v19;
      v10 = 0xE700000000000000;
      if (((*(v28 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(a2) = *(*(v29 + 48) + v30);
  }

  else
  {
LABEL_41:
    v21 = *v25;
    v22 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v25;
    sub_264A14944(a2, v22, isUniquelyReferenced_nonNull_native);
    *v25 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_264A13528(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_264B41B84();
  sub_264B403B4();
  v10 = sub_264B41BB4();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if ((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (1)
    {
      v14 = *(v8 + 48) + 16 * v12;
      v15 = *v14;
      v16 = *(v14 + 8);
      LOBYTE(v15) = sub_264B40374();

      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v21 = (*(v8 + 48) + 16 * v12);
    v23 = *v21;
    v22 = v21[1];
    *a1 = v23;
    a1[1] = v22;
    v24 = v22;
    return 0;
  }

  else
  {
LABEL_5:
    v17 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v4;
    v19 = a3;
    sub_264A14CA8(a2, v19, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v25;
    *a1 = a2;
    a1[1] = v19;
    return 1;
  }
}

uint64_t sub_264A13684(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_264B41724();
  v8 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      sub_264B41B84();
      MEMORY[0x266748E90](v20);
      result = sub_264B41BB4();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

uint64_t sub_264A138CC(uint64_t a1)
{
  v2 = v1;
  v41 = sub_264B40104();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89508, &unk_264B47A40);
  result = sub_264B41724();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_264A10760(&qword_27FF89470);
      result = sub_264B40F84();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_264A13C14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F0, &qword_264B47A20);
  result = sub_264B41724();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_264B41B84();
      sub_264B41084();
      result = sub_264B41BB4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_264A13E74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF894F8, &qword_264B47A28);
  result = sub_264B41724();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_264B41B84();
      sub_264B41084();

      result = sub_264B41BB4();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_264A14170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF89510, &unk_264B4DDD0);
  result = sub_264B41724();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_264B41B84();
      sub_264B403B4();
      result = sub_264B41BB4();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_264A143D0(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_264A13684(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_264A14E4C(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_264A155AC(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  sub_264B41B84();
  MEMORY[0x266748E90](v6 & 1);
  result = sub_264B41BB4();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + a2) != (v6 & 1))
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6 & 1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

uint64_t sub_264A14548(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_264B40104();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_264A138CC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_264A14F7C();
      goto LABEL_12;
    }

    sub_264A157C4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_264A10760(&qword_27FF89470);
  v15 = sub_264B40F84();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_264A10760(&unk_27FF89390);
      v23 = sub_264B40F94();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}

uint64_t sub_264A147C4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_264A13C14(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_264A151B4();
      goto LABEL_16;
    }

    sub_264A15ACC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_264B41B84();
  sub_264B41084();
  result = sub_264B41BB4();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_264B41AA4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_264B41AD4();
  __break(1u);
  return result;
}