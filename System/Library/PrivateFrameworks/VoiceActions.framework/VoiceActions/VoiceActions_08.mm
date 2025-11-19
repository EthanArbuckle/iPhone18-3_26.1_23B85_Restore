void sub_272296BEC(unint64_t a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = a1 >> 62;
  if (a1 >> 62)
  {

    sub_2721F065C(&qword_2808825A8, &qword_272380C30);
    sub_27237838C();
  }

  else
  {

    sub_27237867C();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CBFEB8]);
  sub_2721F065C(&qword_2808825A8, &qword_272380C30);
  v7 = sub_272377AEC();

  v8 = [v6 initWithFeatureProviderArray_];

  v9 = *(v2 + 16);
  v23[0] = 0;
  v10 = [v9 predictionsFromBatch:v8 options:a2 error:v23];
  v11 = v23[0];
  if (v10)
  {
    v12 = v10;
    v23[0] = MEMORY[0x277D84F90];
    if (v5)
    {
      v13 = sub_2723783AC();
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v11;
    sub_272291E24(v13);
    v16 = [v12 count];
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    v17 = v16;
    if (v16)
    {
      v18 = 0;
      do
      {
        v19 = [v12 featuresAtIndex_];
        type metadata accessor for aa_verifier_125141826Output();
        *(swift_allocObject() + 16) = v19;
        swift_unknownObjectRetain();

        MEMORY[0x2743C4C30](v20);
        if (*((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v22 = *((v23[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_272377B2C();
        }

        ++v18;
        sub_272377B7C();

        swift_unknownObjectRelease();
      }

      while (v17 != v18);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = v23[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t sub_272296EB0(uint64_t a1)
{
  v2 = v1;
  sub_2721F065C(&qword_280881A58, &unk_272382730);
  inited = swift_initStackObject();
  *(inited + 32) = 0x74757074756FLL;
  *(inited + 16) = xmmword_27237AF80;
  *(inited + 40) = 0xE600000000000000;
  v5 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_27221982C(0, &qword_2808825B0, 0x277CBFEF0);
  *(inited + 48) = v5;
  sub_27221651C(inited);
  swift_setDeallocating();
  sub_272292598(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x277CBFED8]);
  *(v2 + 16) = sub_272291EF8();
  return v2;
}

uint64_t sub_272296FFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272297034(void *a1, char a2)
{
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  if (a2)
  {
    return v4(a1, 1);
  }

  type metadata accessor for aa_verifier_125141826();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = a1;
  v4(v7, 0);
}

uint64_t sub_272297174(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*a2 == -1)
  {
    v4 = *a3;
  }

  else
  {
    swift_once();
    v7 = *a3;
  }
}

uint64_t sub_2722971D8()
{
  sub_2721F065C(&qword_280882608, &unk_272381220);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_27237AFB0;
  v1 = sub_272291FE0(&unk_28818B810);
  swift_arrayDestroy();
  *(v0 + 32) = v1;
  v2 = sub_272291FE0(&unk_28818B860);
  swift_arrayDestroy();
  *(v0 + 40) = v2;
  v3 = sub_272291FE0(&unk_28818B8B0);
  result = swift_arrayDestroy();
  *(v0 + 48) = v3;
  qword_280893A98 = v0;
  return result;
}

uint64_t sub_2722972B4()
{
  v0 = sub_272291FE0(&unk_28817FD10);
  result = swift_arrayDestroy();
  qword_280893AA0 = v0;
  return result;
}

uint64_t sub_272297324()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_27229735C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

void *sub_2722973A4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_2722973E8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t VAA2AVerifierModelV3.init(computeUnits:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v10 = *a1;
  *(v3 + 24) = MEMORY[0x277D84F90];
  *(v3 + 32) = v9;
  *(v3 + 40) = v9;
  *(v3 + 48) = v9;
  *(v3 + 56) = 0;
  type metadata accessor for VALog();
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0x2064616F6CLL, 0xE500000000000000);
  v23 = v10;
  sub_27237836C();
  MEMORY[0x2743C4AD0](0x6569666972657620, 0xEF6C65646F6D2072);
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v21, v22, v8);

  v11 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v12 = v11;
  if (v10)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v11 setComputeUnits_];
  type metadata accessor for aa_verifier_125141826();
  v14 = v12;
  v15 = sub_272295BE4(v14);
  if (v2)
  {

    sub_272299680(v8, type metadata accessor for VASignpostInterval);
    v16 = *(v3 + 24);

    v17 = *(v3 + 32);

    v18 = *(v3 + 40);

    v19 = *(v3 + 48);

    type metadata accessor for VAA2AVerifierModelV3();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v15;
    VASignpostInterval.end(_:)(0);

    sub_272299680(v8, type metadata accessor for VASignpostInterval);
    return sub_2722591B0();
  }
}

uint64_t sub_2722976F8(uint64_t a1)
{
  v2 = v1;
  v82 = sub_27237728C();
  v4 = *(v82 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v82);
  v81 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VASingleEnrollmentData();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v83 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v80 = v75 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v75 - v13;
  v15 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

  v16 = sub_27220392C(&unk_28818B910, v15);
  (*(*v1 + 264))(v16);
  (*(*v1 + 216))(MEMORY[0x277D84F90]);
  v75[1] = a1;
  result = VARuntimeParameters.keywordsNoThresholds.getter();
  v19 = result;
  v89 = *(result + 16);
  if (v89)
  {
    v20 = 0;
    v21 = *(*v1 + 232);
    v87 = *v1 + 232;
    v88 = v21;
    v86 = result + 32;
    v79 = (v4 + 16);
    v78 = (v4 + 8);
    *&v18 = 136315394;
    v76 = v18;
    v84 = result;
    v85 = v1;
    while (v20 < *(v19 + 16))
    {
      v90 = v20;
      v23 = (v86 + 16 * v20);
      v25 = *v23;
      v24 = v23[1];

      result = v88(v26);
      v27 = result;
      v28 = *(result + 16);
      if (v28)
      {
        v29 = 0;
        while (1)
        {
          if (v29 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_27;
          }

          v30 = *(v91 + 72);
          v100 = (*(v91 + 80) + 32) & ~*(v91 + 80);
          v93 = v30;
          sub_272204F54(v27 + v100 + v30 * v29, v14);
          v31 = &v14[*(v92 + 24)];
          v32 = *v31;
          v33 = *(v31 + 1);
          v94 = sub_2723778AC();
          v95 = v34;
          v98 = 32;
          v99 = 0xE100000000000000;
          v96 = 95;
          v97 = 0xE100000000000000;
          sub_272203AC4();
          v35 = sub_2723780FC();
          v37 = v36;

          if (v35 == v25 && v37 == v24)
          {
            break;
          }

          v38 = sub_27237865C();

          if (v38)
          {
            goto LABEL_15;
          }

          ++v29;
          result = sub_272299680(v14, type metadata accessor for VASingleEnrollmentData);
          if (v28 == v29)
          {
            goto LABEL_3;
          }
        }

LABEL_15:

        v39 = v81;
        v40 = v82;
        v41 = v80;
        v42 = sub_2722C389C();
        (*v79)(v39, v42, v40);
        sub_272204F54(v14, v41);

        v43 = sub_27237725C();
        v44 = sub_272377E7C();

        v45 = os_log_type_enabled(v43, v44);
        v2 = v85;
        if (v45)
        {
          v46 = swift_slowAlloc();
          v77 = v44;
          v47 = v41;
          v48 = v46;
          v49 = swift_slowAlloc();
          v94 = v49;
          *v48 = v76;
          v50 = sub_2721FFD04(v25, v24, &v94);

          *(v48 + 4) = v50;
          *(v48 + 12) = 2080;
          sub_2722996E0();
          v51 = sub_27237862C();
          v53 = v52;
          sub_272299680(v47, type metadata accessor for VASingleEnrollmentData);
          v54 = sub_2721FFD04(v51, v53, &v94);

          *(v48 + 14) = v54;
          _os_log_impl(&dword_2721E4000, v43, v77, "Sorted Enrollment for %s: %s", v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v49, -1, -1);
          MEMORY[0x2743C69C0](v48, -1, -1);

          (*v78)(v81, v82);
        }

        else
        {

          sub_272299680(v41, type metadata accessor for VASingleEnrollmentData);
          (*v78)(v39, v40);
        }

        v19 = v84;
        v22 = v90;
        sub_272204F54(v14, v83);
        v55 = (*(*v2 + 224))(&v94);
        v57 = v56;
        v58 = *v56;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v57 = v58;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_27227B890(0, v58[2] + 1, 1, v58);
          *v57 = v58;
        }

        v61 = v58[2];
        v60 = v58[3];
        if (v61 >= v60 >> 1)
        {
          v58 = sub_27227B890(v60 > 1, v61 + 1, 1, v58);
          *v57 = v58;
        }

        v58[2] = v61 + 1;
        sub_27227BA68(v83, v58 + v100 + v61 * v93);
        v55(&v94, 0);
        result = sub_272299680(v14, type metadata accessor for VASingleEnrollmentData);
      }

      else
      {
LABEL_3:

        v19 = v84;
        v2 = v85;
        v22 = v90;
      }

      v20 = v22 + 1;
      if (v20 == v89)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_23:

    v62 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

    v64 = *(*v2 + 208);
    v65 = *(v64(v63) + 16);

    if (v62 == v65)
    {
      return (*(*v2 + 328))(v66);
    }

    else
    {
      v94 = 0;
      v95 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000046, 0x800000027238D030);
      v67 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

      v98 = v67;
      v68 = sub_27237862C();
      MEMORY[0x2743C4AD0](v68);

      v69 = MEMORY[0x2743C4AD0](0x756F662074756220, 0xEB0000000020646ELL);
      v70 = *(v64(v69) + 16);

      v98 = v70;
      v71 = sub_27237862C();
      MEMORY[0x2743C4AD0](v71);

      MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xEC00000073746E65);
      v72 = v94;
      v73 = v95;
      sub_2722032B4();
      swift_allocError();
      *v74 = v72;
      v74[1] = v73;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_272297FFC(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for VASingleEnrollmentData() + 20));
  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v18 = v2;
  v20 = v2 + 32;
  v4 = *(*(v2 + 32) + 16);
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_27237E4F0;
  sub_27223EE54();
  *(v5 + 32) = sub_272377FAC();
  *(v5 + 40) = sub_272377DBC();
  *(v5 + 48) = sub_272377DBC();
  v6 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v7 = sub_272257FA4(v5, 65568);
  if (!v1)
  {
    v8 = 0;
    v19 = v3;
    while (!v4)
    {
LABEL_5:
      if (++v8 == v19)
      {
        return;
      }
    }

    if (v8 < *(v18 + 16))
    {
      v9 = 0;
      while (1)
      {
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_27237E4F0;
        *(v10 + 32) = sub_272377FAC();
        *(v10 + 40) = sub_272377DBC();
        *(v10 + 48) = sub_272377DBC();
        v11 = *(v20 + 8 * v8);
        if (v9 >= *(v11 + 16))
        {
          break;
        }

        v12 = v9 + 1;
        v13 = *(v11 + 4 * v9 + 32);
        v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v15) = v13;
        v16 = [v14 initWithFloat_];
        v17 = sub_272377AEC();

        [v7 setObject:v16 forKeyedSubscript:v17];

        v9 = v12;
        if (v4 == v12)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

uint64_t sub_27229822C()
{
  v2 = v0;
  v3 = type metadata accessor for VASingleEnrollmentData();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*v0 + 192))(MEMORY[0x277D84F90]);
  result = (*(*v0 + 208))(v8);
  v10 = result;
  v17 = *(result + 16);
  if (!v17)
  {
  }

  v11 = 0;
  while (v11 < *(v10 + 16))
  {
    sub_272204F54(v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v7);
    (*(*v2 + 320))(v7);
    sub_272299680(v7, type metadata accessor for VASingleEnrollmentData);
    if (!v1)
    {
      v12 = (*(*v2 + 200))(v16);
      v14 = v13;
      MEMORY[0x2743C4C30]();
      if (*((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15[1] = *((*v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_272377B2C();
      }

      ++v11;
      sub_272377B7C();
      result = v12(v16, 0);
      if (v17 != v11)
      {
        continue;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272298498(uint64_t a1, char a2)
{
  v8 = sub_27237728C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = v11;
    if (sub_2723783AC())
    {
      v19 = sub_2723783AC();
      v11 = v18;
      if (v19 >= 2)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }

LABEL_20:
    type metadata accessor for VAResultGeneratorInput();
    return VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(0, 0, 0);
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_20;
  }

  if (v14 >= 2)
  {
LABEL_4:
    v15 = 0x80000002723886D0;
    sub_2722032B4();
    swift_allocError();
    v17 = 0xD00000000000001FLL;
LABEL_22:
    *v16 = v17;
    v16[1] = v15;
    return swift_willThrow();
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = v11;
    MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v4 = v11;
    v20 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  type metadata accessor for VAFeatureExtractingEncoderOutput();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v15 = 0x80000002723886B0;
    sub_2722032B4();
    swift_allocError();
    v17 = 0xD000000000000018;
    goto LABEL_22;
  }

  if ((*(v21 + 16) & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = v21;
  v11 = (*(*v2 + 184))();
  if (!(v11 >> 62))
  {
    v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v22)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:
  v40[1] = v11;
  v34 = sub_2723783AC();

  if (!v34)
  {
LABEL_31:
    v35 = sub_2722C389C();
    (*(v9 + 16))(v13, v35, v4);
    v36 = sub_27237725C();
    v37 = sub_272377E8C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_2721E4000, v36, v37, "No enrollments set for this model", v38, 2u);
      MEMORY[0x2743C69C0](v38, -1, -1);
    }

    (*(v9 + 8))(v13, v4);
LABEL_34:
    type metadata accessor for VAResultGeneratorInput();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    goto LABEL_35;
  }

LABEL_17:
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 40))
    {
      v30 = *(*v2 + 352);
      v31 = *(v5 + 40);

      v24 = v30(v32);

      if (!v3)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_2722032B4();
      swift_allocError();
      *v33 = 0xD00000000000001ELL;
      v33[1] = 0x800000027238B8F0;
      swift_willThrow();
    }

    return swift_unknownObjectRelease();
  }

  v24 = (*(*v2 + 256))(v23);
LABEL_19:
  type metadata accessor for VAResultGeneratorInput();
  v25 = *(v5 + 32);

  v26 = 1;
  v27 = v24;
  v28 = v25;
LABEL_35:
  v39 = VAResultGeneratorInput.__allocating_init(hasInput:scores:vadBuffer:)(v26, v27, v28);
  swift_unknownObjectRelease();
  return v39;
}

uint64_t sub_272298908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = type metadata accessor for VASingleEnrollmentData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 336))(a1, a2);
  if (v4)
  {
    return result;
  }

  v14 = result;
  v47 = 0;
  if ((*(result + 16) & 1) == 0)
  {
    static VAVerifierModelOutput.none.getter(a3);
  }

  v46 = a3;
  v15 = *((*(*v3 + 208))() + 16);

  v52 = v15;
  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_22:
    type metadata accessor for VAKeywordResult();
    v44 = VAKeywordResult.__allocating_init(detections:)(v17);
    sub_2722E45C4(v44, v46);
  }

  v48 = v12;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v50 = v14;
  v51 = v3;
  v49 = v9;
  while (1)
  {
    v18 = *(v14 + 24);
    if (!v18)
    {
      break;
    }

    if (v16 >= *(v18 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

    v19 = *(v18 + 8 * v16 + 32);
    v20 = *(v19 + 16);
    if (!v20)
    {
      goto LABEL_26;
    }

    v21 = *(v19 + 32);
    v22 = v20 - 1;
    if (v22)
    {
      v23 = (v19 + 36);
      do
      {
        v24 = *v23++;
        v25 = v24;
        if (v21 < v24)
        {
          v21 = v25;
        }

        --v22;
      }

      while (v22);
    }

    result = (*(*v3 + 232))(result);
    if (v16 >= *(result + 16))
    {
      goto LABEL_27;
    }

    v26 = v48;
    sub_272204F54(result + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, v48);

    v27 = v8;
    v28 = (v26 + *(v8 + 24));
    v29 = *v28;
    v30 = v28[1];

    sub_272299680(v26, type metadata accessor for VASingleEnrollmentData);
    v31 = sub_272241A18();
    v32 = sub_272241A18();
    v33 = sub_272324094();
    v34 = sub_272324094();
    v35 = sub_2721F7EE4();
    v36 = sub_2721F7EE4();
    v37 = sub_27222CD4C();
    sub_27232409C(v29, v30, v33, v34, v35 & 1, v36 & 1, v37 & 1, 0, v53, v21, v31, v32, 0);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272205014(0, *(v17 + 16) + 1, 1, v17);
      v17 = result;
    }

    v39 = *(v17 + 16);
    v38 = *(v17 + 24);
    v8 = v27;
    v14 = v50;
    v3 = v51;
    v9 = v49;
    if (v39 >= v38 >> 1)
    {
      result = sub_272205014((v38 > 1), v39 + 1, 1, v17);
      v17 = result;
    }

    ++v16;
    *(v17 + 16) = v39 + 1;
    v40 = (v17 + 80 * v39);
    v40[2] = v53[0];
    v41 = v53[1];
    v42 = v53[2];
    v43 = v53[4];
    v40[5] = v53[3];
    v40[6] = v43;
    v40[3] = v41;
    v40[4] = v42;
    if (v16 == v52)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void *sub_272298CC8(uint64_t (*a1)(void))
{
  v3 = v1;
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_27237E510;
  sub_27223EE54();
  *(v5 + 32) = sub_272377FAC();
  v6 = 0x277CBF000;
  v7 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v8 = sub_272257FA4(v5, 65568);
  if (!v2)
  {
    v9 = v8;
    v52 = v1;
    v10 = sub_272377FAC();
    [v9 setObject:v10 atIndexedSubscript:0];

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_27237E510;
    *(v11 + 32) = sub_272377FAC();
    v12 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v13 = 0;
    v14 = sub_272257FA4(v11, 65568);
    v15 = sub_272377FAC();
    [v14 setObject:v15 atIndexedSubscript:0];

    v16 = v3;
    v50 = *(*v3 + 184);
    v17 = v50();
    if (v17 >> 62)
    {
      goto LABEL_23;
    }

    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v19 = sub_27220392C(MEMORY[0x277D84F90], v18);
    v6 = v53;
    v20 = (*(*v16 + 296))(v53);
    sub_27225677C(a1, v21);
    if (v13)
    {

      v20(v53, 1);

      return v6;
    }

    v23 = (v20)(v53, 0);
    v49 = (*(*v16 + 280))(v23);
    if (!v49)
    {

      sub_2722032B4();
      swift_allocError();
      *v45 = 0xD000000000000024;
      v45[1] = 0x800000027238B910;
      swift_willThrow();

      return v6;
    }

    v24 = v50();
    if (v24 >> 62)
    {
      v46 = sub_2723783AC();

      if (v46 < 0)
      {
        __break(1u);
      }

      v25 = v46;
      v6 = v19;
      v48 = v14;
      if (v46)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = v19;
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v48 = v14;
      if (v25)
      {
LABEL_10:
        v14 = 4;
        v47 = v9;
        do
        {
          a1 = (v14 - 4);
          v26 = v49;
          v16 = v52;
          v27 = v50();
          if ((v27 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x2743C5370](v14 - 4, v27);
          }

          else
          {
            if (a1 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_22:
              __break(1u);
LABEL_23:
              v18 = sub_2723783AC();
              goto LABEL_4;
            }

            v28 = *(v27 + 8 * v14);
          }

          v29 = v28;

          type metadata accessor for aa_verifier_125141826Input();
          v30 = sub_272295840(v26, v29, v9, v48);
          v31 = (*(*v52 + 160))();
          v9 = (*(*v31 + 136))(v30);
          v51 = v25;

          sub_2721F065C(&qword_280881848, &unk_27237C250);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_27237AFB0;
          a1 = *(*v9 + 88);
          v33 = a1();
          v13 = &selRef_environment;
          v34 = [v33 objectAtIndexedSubscript_];

          [v34 floatValue];
          v36 = v35;

          *(v32 + 32) = v36;
          v37 = a1();
          v38 = [v37 objectAtIndexedSubscript_];

          [v38 floatValue];
          v40 = v39;

          *(v32 + 36) = v40;
          v41 = a1();
          v16 = [v41 objectAtIndexedSubscript_];

          [v16 floatValue];
          v43 = v42;

          *(v32 + 40) = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_272200344(v6);
          }

          if ((v14 - 4) >= v6[2])
          {
            goto LABEL_22;
          }

          v44 = v6[v14];
          v6[v14] = v32;

          ++v14;
          --v25;
          v9 = v47;
        }

        while (v51 != 1);
      }
    }
  }

  return v6;
}

void sub_27229939C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];
}

uint64_t VAA2AVerifierModelV3.deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  return v0;
}

uint64_t VAA2AVerifierModelV3.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModelV3.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v2 = *(*v1 + 240);

  v2(v3);
}

uint64_t sub_272299628()
{
  v1 = *(**v0 + 240);

  return v1(v2);
}

uint64_t sub_272299680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2722996E0()
{
  result = qword_280882610;
  if (!qword_280882610)
  {
    type metadata accessor for VASingleEnrollmentData();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882610);
  }

  return result;
}

uint64_t sub_27229984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2722998D0(uint64_t a1)
{
  v2 = sub_272299948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27229990C(uint64_t a1)
{
  v2 = sub_272299948();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_272299948()
{
  result = qword_28088BC50;
  if (!qword_28088BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BC50);
  }

  return result;
}

uint64_t sub_27229999C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2721F065C(&qword_280882620, &qword_2723812C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272299948();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  v11 = sub_2723784AC();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_2722039C8(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_272299B18(void *a1)
{
  v3 = sub_2721F065C(&qword_280882618, &qword_2723812B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272299948();
  sub_2723787CC();
  sub_27237858C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_272299C54()
{
  v1 = 0x6172676F6874726FLL;
  if (*v0 != 1)
  {
    v1 = 6775156;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636E657571657266;
  }
}

uint64_t sub_272299CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27229A9E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272299CDC(uint64_t a1)
{
  v2 = sub_272299F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272299D18(uint64_t a1)
{
  v2 = sub_272299F34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_272299D54(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882628, &qword_2723812C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272299F34();
  sub_2723787CC();
  v11 = *v3;
  LOBYTE(v16) = 0;
  sub_2723785CC();
  if (!v2)
  {
    v13 = v3[1];
    v14 = v3[2];
    LOBYTE(v16) = 1;
    sub_27237858C();
    v16 = *(v3 + 3);
    v15[15] = 2;
    sub_272299F88();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_272299F34()
{
  result = qword_28088BC58;
  if (!qword_28088BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088BC58);
  }

  return result;
}

unint64_t sub_272299F88()
{
  result = qword_280882630;
  if (!qword_280882630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882630);
  }

  return result;
}

double sub_272299FDC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_27229AB0C(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_27229A03C()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_27229A0B0()
{
  sub_27237874C();
  sub_27237790C();
  return sub_27237878C();
}

uint64_t sub_27229A104@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_27229A194@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27237840C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27229A1EC(uint64_t a1)
{
  v2 = sub_27229AD34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27229A228(uint64_t a1)
{
  v2 = sub_27229AD34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27229A264(void *a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882638, &qword_2723812D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27229AD34();
  sub_2723787CC();
  v11[1] = a2;
  sub_2721F065C(&qword_280882648, &qword_2723812D8);
  sub_27229B7BC(&qword_280882650, sub_27229AD88);
  sub_2723785DC();
  return (*(v5 + 8))(v8, v4);
}

void *sub_27229A3F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_27229AE10(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_27229A438()
{
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_272376AFC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_272376B3C();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_272376ADC();
  sub_272376B0C();
  sub_27229AFC4();
  v8 = sub_272376B1C();
  v10 = v9;
  sub_27237787C();
  v11 = sub_27237784C();
  v13 = v12;
  sub_2721F05C8(v8, v10);

  if (v13)
  {
    return v11;
  }

  else
  {
    return 32123;
  }
}

uint64_t sub_27229A688()
{
  sub_27237874C();
  MEMORY[0x2743C58B0](0);
  return sub_27237878C();
}

uint64_t sub_27229A6F8()
{
  sub_27237874C();
  MEMORY[0x2743C58B0](0);
  return sub_27237878C();
}

uint64_t sub_27229A750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27237865C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27229A7D8(uint64_t a1)
{
  v2 = sub_27229B018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27229A814(uint64_t a1)
{
  v2 = sub_27229B018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27229A850(void *a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882678, &qword_2723812E8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27229B018();
  sub_2723787CC();
  v11[1] = a2;
  sub_27229B06C();
  sub_2723785DC();
  return (*(v5 + 8))(v8, v4);
}

void *sub_27229A998@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_27229B0C0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_27229A9E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172676F6874726FLL && a2 == 0xEB00000000796870 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_27237865C();

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

uint64_t sub_27229AB0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2721F065C(&qword_2808826D0, &unk_272381990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272299F34();
  sub_2723787AC();
  if (v2)
  {
    return sub_2722039C8(a1);
  }

  LOBYTE(v21) = 0;
  v11 = sub_2723784EC();
  LOBYTE(v21) = 1;
  v12 = sub_2723784AC();
  v14 = v13;
  v20 = v12;
  v23 = 2;
  sub_27229B934();
  sub_2723784FC();
  (*(v6 + 8))(v9, v5);
  v15 = v21;
  v16 = v22;
  result = sub_2722039C8(a1);
  v18 = v20;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v14;
  a2[3] = v15;
  a2[4] = v16;
  return result;
}

unint64_t sub_27229AD34()
{
  result = qword_280882640;
  if (!qword_280882640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882640);
  }

  return result;
}

unint64_t sub_27229ADBC()
{
  result = qword_280882668;
  if (!qword_280882668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882668);
  }

  return result;
}

void *sub_27229AE10(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_2808826B0, &qword_272381988);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_27220300C(a1, a1[3]);
  sub_27229AD34();
  sub_2723787AC();
  if (v1)
  {
    sub_2722039C8(a1);
  }

  else
  {
    sub_2721F065C(&qword_280882648, &qword_2723812D8);
    sub_27229B7BC(&qword_2808826B8, sub_27229B834);
    sub_2723784FC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_2722039C8(a1);
  }

  return v9;
}

unint64_t sub_27229AFC4()
{
  result = qword_280882670;
  if (!qword_280882670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882670);
  }

  return result;
}

unint64_t sub_27229B018()
{
  result = qword_28088BC60[0];
  if (!qword_28088BC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088BC60);
  }

  return result;
}

unint64_t sub_27229B06C()
{
  result = qword_280882680;
  if (!qword_280882680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882680);
  }

  return result;
}

void *sub_27229B0C0(uint64_t *a1)
{
  v3 = sub_2721F065C(&qword_2808826A0, &qword_272381980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_27220300C(a1, a1[3]);
  sub_27229B018();
  sub_2723787AC();
  if (v1)
  {
    sub_2722039C8(a1);
  }

  else
  {
    sub_27229B768();
    sub_2723784FC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_2722039C8(a1);
  }

  return v9;
}

unint64_t sub_27229B234()
{
  result = qword_280882688;
  if (!qword_280882688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882688);
  }

  return result;
}

unint64_t sub_27229B28C()
{
  result = qword_280882690;
  if (!qword_280882690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882690);
  }

  return result;
}

unint64_t sub_27229B2E4()
{
  result = qword_280882698;
  if (!qword_280882698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882698);
  }

  return result;
}

uint64_t sub_27229B348(uint64_t a1, int a2)
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

uint64_t sub_27229B390(uint64_t result, int a2, int a3)
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

unint64_t sub_27229B454()
{
  result = qword_28088C4F0[0];
  if (!qword_28088C4F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088C4F0);
  }

  return result;
}

unint64_t sub_27229B4AC()
{
  result = qword_28088C700[0];
  if (!qword_28088C700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088C700);
  }

  return result;
}

unint64_t sub_27229B504()
{
  result = qword_28088C910[0];
  if (!qword_28088C910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088C910);
  }

  return result;
}

unint64_t sub_27229B55C()
{
  result = qword_28088CA20;
  if (!qword_28088CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CA20);
  }

  return result;
}

unint64_t sub_27229B5B4()
{
  result = qword_28088CA28[0];
  if (!qword_28088CA28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CA28);
  }

  return result;
}

unint64_t sub_27229B60C()
{
  result = qword_28088CAB0;
  if (!qword_28088CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CAB0);
  }

  return result;
}

unint64_t sub_27229B664()
{
  result = qword_28088CAB8[0];
  if (!qword_28088CAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CAB8);
  }

  return result;
}

unint64_t sub_27229B6BC()
{
  result = qword_28088CB40;
  if (!qword_28088CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28088CB40);
  }

  return result;
}

unint64_t sub_27229B714()
{
  result = qword_28088CB48[0];
  if (!qword_28088CB48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28088CB48);
  }

  return result;
}

unint64_t sub_27229B768()
{
  result = qword_2808826A8;
  if (!qword_2808826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808826A8);
  }

  return result;
}

uint64_t sub_27229B7BC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882648, &qword_2723812D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27229B868(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882660, &qword_2723812E0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27229B8E0()
{
  result = qword_2808826C8;
  if (!qword_2808826C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808826C8);
  }

  return result;
}

unint64_t sub_27229B934()
{
  result = qword_2808826D8;
  if (!qword_2808826D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808826D8);
  }

  return result;
}

uint64_t sub_27229B9D0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_27229BA10(uint64_t a1)
{
  v2 = v1;
  v87 = sub_27237728C();
  v4 = *(v87 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VASingleEnrollmentData();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = *(v96 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v88 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v85 = v80 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v80 - v13;
  (*(*v1 + 168))(MEMORY[0x277D84F90]);
  v80[0] = a1;
  result = VARuntimeParameters.keywordsNoThresholds.getter();
  v17 = result;
  v94 = *(result + 16);
  if (v94)
  {
    v18 = 0;
    v19 = *(*v1 + 184);
    v92 = *v1 + 184;
    v93 = v19;
    v91 = result + 32;
    v84 = (v4 + 16);
    v83 = (v4 + 8);
    *&v16 = 136315394;
    v81 = v16;
    v89 = result;
    v90 = v1;
    while (v18 < *(v17 + 16))
    {
      v95 = v18;
      v21 = (v91 + 16 * v18);
      v23 = *v21;
      v22 = v21[1];

      result = v93(v24);
      v25 = result;
      v26 = *(result + 16);
      if (v26)
      {
        v27 = 0;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v28 = *(v96 + 72);
          v105 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v98 = v28;
          sub_272204F54(v25 + v105 + v28 * v27, v14);
          v29 = &v14[*(v97 + 24)];
          v30 = *v29;
          v31 = *(v29 + 1);
          v99 = sub_2723778AC();
          v100 = v32;
          v103 = 32;
          v104 = 0xE100000000000000;
          v101 = 95;
          v102 = 0xE100000000000000;
          sub_272203AC4();
          v33 = sub_2723780FC();
          v35 = v34;

          if (v33 == v23 && v35 == v22)
          {
            break;
          }

          v36 = sub_27237865C();

          if (v36)
          {
            goto LABEL_15;
          }

          ++v27;
          result = sub_272204FB8(v14);
          if (v26 == v27)
          {
            goto LABEL_3;
          }
        }

LABEL_15:

        v37 = v86;
        v38 = v87;
        v39 = v85;
        v40 = sub_2722C389C();
        (*v84)(v37, v40, v38);
        sub_272204F54(v14, v39);

        v41 = sub_27237725C();
        v42 = sub_272377E7C();

        v43 = os_log_type_enabled(v41, v42);
        v2 = v90;
        if (v43)
        {
          v44 = swift_slowAlloc();
          v82 = v41;
          v45 = v39;
          v46 = v44;
          v47 = swift_slowAlloc();
          v99 = v47;
          *v46 = v81;
          v48 = sub_2721FFD04(v23, v22, &v99);

          *(v46 + 4) = v48;
          *(v46 + 12) = 2080;
          sub_2722996E0();
          v49 = sub_27237862C();
          v51 = v50;
          sub_272204FB8(v45);
          v52 = sub_2721FFD04(v49, v51, &v99);

          *(v46 + 14) = v52;
          v53 = v82;
          _os_log_impl(&dword_2721E4000, v82, v42, "Sorted Enrollment for %s: %s", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2743C69C0](v47, -1, -1);
          MEMORY[0x2743C69C0](v46, -1, -1);

          (*v83)(v86, v87);
        }

        else
        {

          sub_272204FB8(v39);
          (*v83)(v37, v38);
        }

        v17 = v89;
        v20 = v95;
        sub_272204F54(v14, v88);
        v54 = (*(*v2 + 176))(&v99);
        v56 = v55;
        v57 = *v55;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v56 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v57 = sub_27227B890(0, v57[2] + 1, 1, v57);
          *v56 = v57;
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          v57 = sub_27227B890(v59 > 1, v60 + 1, 1, v57);
          *v56 = v57;
        }

        v57[2] = v60 + 1;
        sub_27227BA68(v88, v57 + v105 + v60 * v98);
        v54(&v99, 0);
        result = sub_272204FB8(v14);
      }

      else
      {
LABEL_3:

        v17 = v89;
        v2 = v90;
        v20 = v95;
      }

      v18 = v20 + 1;
      if (v18 == v94)
      {
        goto LABEL_23;
      }
    }

LABEL_33:
    __break(1u);
  }

  else
  {
LABEL_23:

    v62 = *(*v2 + 160);
    v63 = *(v62(v61) + 16);

    if (v63)
    {
      v64 = sub_272377B5C();
      *(v64 + 16) = v63;
      bzero((v64 + 32), 4 * v63);
    }

    else
    {
      v64 = MEMORY[0x277D84F90];
    }

    v65 = (*(*v2 + 216))(v64);
    v66 = *(v62(v65) + 16);

    if (v66)
    {
      v67 = sub_272377B5C();
      *(v67 + 16) = v66;
      bzero((v67 + 32), 4 * v66);
    }

    else
    {
      v67 = MEMORY[0x277D84F90];
    }

    (*(*v2 + 240))(v67);
    v68 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

    v70 = *(v62(v69) + 16);

    if (v68 != v70)
    {
      v99 = 0;
      v100 = 0xE000000000000000;
      sub_27237820C();
      MEMORY[0x2743C4AD0](0xD000000000000046, 0x800000027238D030);
      v71 = *(VARuntimeParameters.keywordsNoThresholds.getter() + 2);

      v103 = v71;
      v72 = sub_27237862C();
      MEMORY[0x2743C4AD0](v72);

      v73 = MEMORY[0x2743C4AD0](0x756F662074756220, 0xEB0000000020646ELL);
      v74 = *(v62(v73) + 16);

      v103 = v74;
      v75 = sub_27237862C();
      MEMORY[0x2743C4AD0](v75);

      MEMORY[0x2743C4AD0](0x6D6C6C6F726E6520, 0xEC00000073746E65);
      v76 = v99;
      v77 = v100;
      sub_2722032B4();
      v78 = swift_allocError();
      *v79 = v76;
      v79[1] = v77;
      v80[1] = v78;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_27229C320@<X0>(unint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v7 = v4;
  LOBYTE(v8) = a2;
  v89 = a3;
  v91 = type metadata accessor for VASingleEnrollmentData();
  v10 = *(v91 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v91);
  v90 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27237728C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      if (v19 >= 2)
      {
LABEL_4:
        v20 = 0x80000002723886D0;
        sub_2722032B4();
        swift_allocError();
        v22 = 0xD00000000000001FLL;
LABEL_20:
        *v21 = v22;
        v21[1] = v20;
        return swift_willThrow();
      }

      goto LABEL_10;
    }

    return static VAVerifierModelOutput.none.getter(v89);
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v23 = v16;
  if (!sub_2723783AC())
  {
    return static VAVerifierModelOutput.none.getter(v89);
  }

  v24 = sub_2723783AC();
  v16 = v23;
  if (v24 >= 2)
  {
    goto LABEL_4;
  }

LABEL_10:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_72;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_74;
  }

  v5 = v16;
  v25 = *(a1 + 32);
  swift_unknownObjectRetain();
  while (1)
  {
    type metadata accessor for VAFeatureExtractingEncoderOutput();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v20 = 0x80000002723886B0;
      sub_2722032B4();
      swift_allocError();
      v22 = 0xD000000000000018;
      goto LABEL_20;
    }

    if ((*(v26 + 16) & 1) == 0)
    {
      static VAVerifierModelOutput.none.getter(v89);
      return swift_unknownObjectRelease();
    }

    v81 = v25;
    v82 = v7;
    v7 = v26;
    v87 = *(*v3 + 160);
    v88 = v3;
    a1 = *(v87() + 16);

    if (!a1)
    {
      break;
    }

    if (v8)
    {
      v28 = (*(*v88 + 232))(v27);
      goto LABEL_28;
    }

    v34 = *(v7 + 40);
    v3 = v88;
    if (!v34)
    {
      sub_2722032B4();
      swift_allocError();
      *v65 = 0xD00000000000001ELL;
      v65[1] = 0x800000027238B8F0;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    if (*(v34 + 16))
    {
      v35 = *(v34 + 32);
      v36 = *(*v88 + 320);

      v36(v37);

      v28 = (*(*v3 + 208))(v38);
LABEL_28:
      a1 = v28;
      v5 = *(v7 + 32);
      if (v5)
      {
        v39 = *(*v88 + 280);
        v40 = *(v7 + 32);

        v42 = v39(v41);
        v7 = v82;
        if (v42)
        {
          v14 = *(v5 + 16);
          v3 = v88;
          if (v14)
          {
            if (v14 <= 7)
            {
              v43 = 0;
              v6 = 0.0;
              goto LABEL_56;
            }

            v43 = v14 & 0x7FFFFFFFFFFFFFF8;
            v66 = v5 + 48;
            v6 = 0.0;
            v67 = v14 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v6 = (((((((v6 + COERCE_FLOAT(*(v66 - 16))) + COERCE_FLOAT(HIDWORD(*(v66 - 16)))) + COERCE_FLOAT(*(v66 - 8))) + COERCE_FLOAT(HIDWORD(*(v66 - 16)))) + COERCE_FLOAT(*v66)) + COERCE_FLOAT(HIDWORD(*v66))) + COERCE_FLOAT(*(v66 + 8))) + COERCE_FLOAT(HIDWORD(*v66));
              v66 += 32;
              v67 -= 8;
            }

            while (v67);
            if (v14 != v43)
            {
LABEL_56:
              v68 = v14 - v43;
              v69 = (v5 + 4 * v43 + 32);
              do
              {
                v70 = *v69++;
                v6 = v6 + v70;
                --v68;
              }

              while (v68);
            }
          }

          else
          {
            v6 = 0.0;
          }

          v71 = a1;
          a1 = *(a1 + 16);
          if (a1)
          {
            v5 = v71;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              goto LABEL_76;
            }

            goto LABEL_60;
          }

          a1 = v71;
          v44 = v87;
          goto LABEL_36;
        }
      }

      else
      {
        v7 = v82;
      }

      v44 = v87;
      v3 = v88;
      goto LABEL_36;
    }

    while (1)
    {
      __break(1u);
LABEL_76:
      result = sub_2722002AC(v5);
      v5 = result;
LABEL_60:
      if (a1 > *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v72 = v6 / v14;
      if (a1 > 7)
      {
        v73 = a1 & 0x7FFFFFFFFFFFFFF8;
        v74 = (v5 + 48);
        v75 = a1 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v76 = vmulq_n_f32(*v74, v72);
          v74[-1] = vmulq_n_f32(v74[-1], v72);
          *v74 = v76;
          v74 += 2;
          v75 -= 8;
        }

        while (v75);
        if (a1 == v73)
        {
          a1 = v5;
          v44 = v87;
          goto LABEL_36;
        }
      }

      else
      {
        v73 = 0;
      }

      v77 = a1 - v73;
      v78 = 4 * v73 + 32;
      a1 = v5;
      do
      {
        *(v5 + v78) = v72 * *(v5 + v78);
        v78 += 4;
        --v77;
      }

      while (v77);
      v44 = v87;
LABEL_36:
      v14 = *(v44() + 16);

      if (!v14)
      {
        v49 = MEMORY[0x277D84F90];
        goto LABEL_49;
      }

      v47 = (*v3 + 184);
      v46 = *v47;
      v80 = a1;
      if (v14 <= *(a1 + 16))
      {
        break;
      }

LABEL_74:
      __break(1u);
    }

    v84 = v47;
    v85 = v46;
    v16 = (v46)(v45);
    if (*(v16 + 16))
    {
      v48 = 0;
      v7 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v83 = *(v10 + 72);
      v86 = v14 - 1;
      v87 = (v80 + 32);
      v49 = MEMORY[0x277D84F90];
      while (1)
      {
        v50 = v90;
        sub_272204F54(v16 + v7, v90);

        v51 = (v50 + *(v91 + 24));
        v52 = v49;
        v53 = *v51;
        v54 = v51[1];

        sub_272204FB8(v50);
        v6 = *(v87 + v48);
        v55 = sub_272241A18();
        v56 = sub_272241A18();
        v8 = sub_272324094();
        v18 = sub_272324094();
        LOBYTE(v50) = sub_2721F7EE4();
        v10 = sub_2721F7EE4();
        v57 = sub_27222CD4C();
        v58 = v54;
        v49 = v52;
        sub_27232409C(v53, v58, v8, v18, v50 & 1, v10 & 1, v57 & 1, 0, v92, v6, v55, v56, 0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_272205014(0, *(v52 + 2) + 1, 1, v52);
        }

        v3 = v88;
        v14 = *(v49 + 2);
        v59 = *(v49 + 3);
        a1 = v14 + 1;
        if (v14 >= v59 >> 1)
        {
          v49 = sub_272205014((v59 > 1), v14 + 1, 1, v49);
        }

        *(v49 + 2) = a1;
        v60 = &v49[80 * v14];
        *(v60 + 2) = v92[0];
        v61 = v92[1];
        v62 = v92[2];
        v63 = v92[4];
        *(v60 + 5) = v92[3];
        *(v60 + 6) = v63;
        *(v60 + 3) = v61;
        *(v60 + 4) = v62;
        if (v86 == v48)
        {
          break;
        }

        v16 = v85();
        ++v48;
        v7 += v83;
        if (v48 >= *(v16 + 16))
        {
          goto LABEL_71;
        }
      }

LABEL_49:
      type metadata accessor for VAKeywordResult();
      v64 = VAKeywordResult.__allocating_init(detections:)(v49);
      sub_2722E45C4(v64, v89);

      return swift_unknownObjectRelease();
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v5 = v16;
    v25 = MEMORY[0x2743C5370](0, a1);
  }

  v30 = sub_2722C389C();
  (*(v14 + 16))(v18, v30, v5);
  v31 = sub_27237725C();
  v32 = sub_272377E8C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2721E4000, v31, v32, "No enrollments set for this model", v33, 2u);
    MEMORY[0x2743C69C0](v33, -1, -1);
  }

  (*(v14 + 8))(v18, v5);
  static VAVerifierModelOutput.none.getter(v89);
  return swift_unknownObjectRelease();
}

uint64_t sub_27229CC30(uint64_t a1)
{
  v45 = a1;
  v2 = type metadata accessor for VASingleEnrollmentData();
  v46 = *(v2 - 8);
  v3 = *(v46 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*v1 + 160);
  v8 = *v1 + 160;
  v9 = *(v7(v4) + 16);

  v44 = v9;
  if (!v9)
  {
    return result;
  }

  v11 = 0;
  v12 = *(*v1 + 224);
  v40 = *v1 + 224;
  v41 = v12;
  v42 = *(v40 + 32);
  v43 = v40 + 32;
  v38[1] = v8;
  v39 = v7;
  while (1)
  {
    result = v7(result);
    if (v11 >= *(result + 16))
    {
      break;
    }

    v13 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v14 = *(v46 + 72) * v11;
    sub_272204F54(result + v13 + v14, v6);

    v15 = &v6[*(v2 + 24)];
    v17 = *v15;
    v16 = v15[1];

    v18 = sub_272204FB8(v6);
    result = v7(v18);
    if (v11 >= *(result + 16))
    {
      goto LABEL_30;
    }

    sub_272204F54(result + v13 + v14, v6);

    v19 = v2;
    v20 = *&v6[*(v2 + 20)];

    v21 = sub_272204FB8(v6);
    v22 = v42(v21);
    if (!*(v22 + 16))
    {

LABEL_21:

      goto LABEL_22;
    }

    v23 = sub_27220038C(v17, v16);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(*(v22 + 56) + 4 * v23);

    v27 = *(v20 + 16);
    v28 = ceilf(v26 * v27);
    if ((LODWORD(v28) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      goto LABEL_32;
    }

    if (v28 <= -9.2234e18)
    {
      goto LABEL_33;
    }

    if (v28 >= 9.2234e18)
    {
      goto LABEL_34;
    }

    v29 = v28;
    if (v28 < 0)
    {
      goto LABEL_35;
    }

    if (v27 >= v29)
    {
      v30 = v28;
    }

    else
    {
      v30 = *(v20 + 16);
    }

    if (v29)
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    if (v27 != v31)
    {
      sub_272202180(v20, v20 + 32, 0, (2 * v31) | 1);
      v20 = v32;
      goto LABEL_21;
    }

LABEL_22:
    v33 = sub_272304CF0(v45, v20);

    v34 = v41(v47);
    v36 = v35;
    v37 = *v35;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v36 = v37;
    if ((result & 1) == 0)
    {
      result = sub_2722002AC(v37);
      v37 = result;
      *v36 = result;
    }

    if (v11 >= *(v37 + 16))
    {
      goto LABEL_31;
    }

    *(v37 + 4 * v11 + 32) = -v33;
    result = v34(v47, 0);
    ++v11;
    v2 = v19;
    v7 = v39;
    if (v44 == v11)
    {
      return result;
    }
  }

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
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_27229CFD0()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_27229D258(v1);
  *(v0 + 56) = 0;
  return sub_2722591B0();
}

uint64_t sub_27229D020()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];
}

void *VAA2AVerifierModelDTW.deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t VAA2AVerifierModelDTW.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModelDTW.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v2 = *(*v1 + 192);

  v2(v3);
}

uint64_t sub_27229D200()
{
  v1 = *(**v0 + 192);

  return v1(v2);
}

unint64_t sub_27229D258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_2808826E0, &qword_272384190);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t sub_27229D444()
{
  v0 = sub_2722A041C(&unk_28818C080);
  result = sub_2722A1AEC(&unk_28818C0A0);
  qword_280893AA8 = v0;
  return result;
}

uint64_t sub_27229D488()
{
  v0 = sub_27237728C();
  sub_2721F408C(v0, qword_28088CBE0);
  sub_2721F08DC(v0, qword_28088CBE0);
  return sub_27237726C();
}

uint64_t sub_27229D4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27229D5B8;

  return sub_2722A08B8(a1, a2, a3);
}

uint64_t sub_27229D5B8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_27229D6B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2722A1B54;

  return (sub_2722A1214)(a1, a2);
}

uint64_t sub_27229D76C(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 240) = a2;
  *(v3 + 72) = a1;
  *(v3 + 80) = a3;
  v4 = sub_272376D5C();
  *(v3 + 88) = v4;
  v5 = *(v4 - 8);
  *(v3 + 96) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v7 = *(*(sub_2721F065C(&qword_280881A50, &unk_27237CA30) - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v8 = sub_27237768C();
  *(v3 + 120) = v8;
  v9 = *(v8 - 8);
  *(v3 + 128) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v11 = sub_272376EBC();
  *(v3 + 144) = v11;
  v12 = *(v11 - 8);
  *(v3 + 152) = v12;
  v13 = *(v12 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  v14 = sub_27237767C();
  *(v3 + 168) = v14;
  v15 = *(v14 - 8);
  *(v3 + 176) = v15;
  v16 = *(v15 + 64) + 15;
  *(v3 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27229D97C, 0, 0);
}

uint64_t sub_27229D97C()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  (*(v0[19] + 16))(v0[20], v0[10], v0[18]);
  (*(v4 + 104))(v2, *MEMORY[0x277CDCE38], v3);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_27237765C();
  v8 = *(MEMORY[0x277CDCDF8] + 4);
  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_27229DAD4;
  v10 = v0[23];
  v11 = v0[13];

  return MEMORY[0x28212C308](v11);
}

uint64_t sub_27229DAD4()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_27229EAE0;
  }

  else
  {
    v3 = sub_27229DBE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_27229DBE8()
{
  v70 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 240);
  sub_272376D1C();
  (*(v2 + 8))(v1, v3);
  sub_272376E7C();
  v6 = objc_allocWithZone(RDUserProfileImpl);
  v7 = sub_2723777FC();

  v8 = sub_2723777FC();

  *(v0 + 208) = [v6 initWithLanguage:v7 assetPath:v8];

  if (v5 == 1)
  {
    v9 = swift_task_alloc();
    *(v0 + 216) = v9;
    *v9 = v0;
    v9[1] = sub_27229E2E0;
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);

    return sub_2722A1214(v11, v10);
  }

  else
  {
    v13 = *(v0 + 208);
    v14 = *(v0 + 72);
    v15 = sub_2723777FC();
    v16 = sub_2723777FC();
    v17 = MEMORY[0x277D837D0];
    v18 = sub_272377AEC();
    [v13 addPhraseToUserProfileWithTemplateName:v15 wordTag:v16 phrase:v18];
    v19 = *(v0 + 72);

    v20 = *(v19 + 16);
    v21 = MEMORY[0x277D84F90];
    if (v20)
    {
      v22 = *(v0 + 72);
      v69[0] = MEMORY[0x277D84F90];
      sub_27220056C(0, v20, 0);
      v21 = v69[0];
      v23 = sub_272203AC4();
      v24 = (v22 + 40);
      do
      {
        v25 = *v24;
        *(v0 + 16) = *(v24 - 1);
        *(v0 + 24) = v25;
        *(v0 + 32) = 32;
        *(v0 + 40) = 0xE100000000000000;
        *(v0 + 48) = 95;
        *(v0 + 56) = 0xE100000000000000;
        v64 = v23;
        v65 = v23;
        v62 = v17;
        v63 = v23;
        v26 = sub_2723780FC();
        v69[0] = v21;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          v67 = v26;
          v31 = v27;
          sub_27220056C((v28 > 1), v29 + 1, 1);
          v27 = v31;
          v26 = v67;
          v21 = v69[0];
        }

        *(v21 + 16) = v29 + 1;
        v30 = v21 + 16 * v29;
        *(v30 + 32) = v26;
        *(v30 + 40) = v27;
        v24 += 2;
        --v20;
      }

      while (v20);
    }

    *(v0 + 64) = v21;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
    v32 = sub_2723777CC();
    v34 = v33;

    sub_27237820C();

    v69[0] = 0x2F706D742FLL;
    v69[1] = 0xE500000000000000;
    MEMORY[0x2743C4AD0](v32, v34);

    MEMORY[0x2743C4AD0](0xD000000000000014, 0x800000027238D370);
    if (qword_28088CBD8 != -1)
    {
      swift_once();
    }

    v35 = sub_27237728C();
    sub_2721F08DC(v35, qword_28088CBE0);

    v36 = sub_27237725C();
    v37 = sub_272377E6C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v69[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_2721FFD04(0x2F706D742FLL, 0xE500000000000000, v69);
      _os_log_impl(&dword_2721E4000, v36, v37, "Speech Profile for debugging: %s", v38, 0xCu);
      sub_2722039C8(v39);
      MEMORY[0x2743C69C0](v39, -1, -1);
      MEMORY[0x2743C69C0](v38, -1, -1);
    }

    v40 = *(v0 + 208);
    v41 = sub_2723777FC();

    [v40 writeUserProfileAsJson_];

    v42 = [v40 writeUserProfileToCache];
    v43 = sub_27237782C();
    v45 = v44;

    v46 = sub_27237725C();
    v47 = sub_272377E6C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v69[0] = v49;
      *v48 = 136315138;
      v50 = sub_2721FFD04(v43, v45, v69);

      *(v48 + 4) = v50;
      _os_log_impl(&dword_2721E4000, v46, v47, "Speech Profile: %s", v48, 0xCu);
      sub_2722039C8(v49);
      MEMORY[0x2743C69C0](v49, -1, -1);
      MEMORY[0x2743C69C0](v48, -1, -1);
    }

    else
    {
    }

    v51 = *(v0 + 208);
    v53 = *(v0 + 176);
    v52 = *(v0 + 184);
    v55 = *(v0 + 160);
    v54 = *(v0 + 168);
    v56 = *(v0 + 136);
    v66 = *(v0 + 112);
    v68 = *(v0 + 104);
    v57 = [v51 getUserProfileData];
    v58 = sub_272376D8C();
    v60 = v59;

    (*(v53 + 8))(v52, v54);

    v61 = *(v0 + 8);

    return v61(v58, v60);
  }
}

uint64_t sub_27229E2E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_27229EA20;
  }

  else
  {
    v5 = sub_27229E3F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_27229E3F4()
{
  v59 = v0;
  v1 = v0[26];
  if (v0[28])
  {
    v2 = sub_2723777FC();
    v3 = sub_2723777FC();
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v4 = sub_27237770C();

    [v1 addPhraseToUserProfileWithTemplateName:v2 wordTag:v3 namesToProns:v4];
  }

  else
  {
    v5 = v0[9];
    v2 = sub_2723777FC();
    v3 = sub_2723777FC();
    v4 = sub_272377AEC();
    [v1 addPhraseToUserProfileWithTemplateName:v2 wordTag:v3 phrase:v4];
  }

  v6 = v0[9];

  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = MEMORY[0x277D837D0];
    v10 = v0[9];
    v58[0] = MEMORY[0x277D84F90];
    sub_27220056C(0, v7, 0);
    v8 = v58[0];
    v11 = sub_272203AC4();
    v12 = (v10 + 40);
    do
    {
      v13 = *v12;
      v0[2] = *(v12 - 1);
      v0[3] = v13;
      v0[4] = 32;
      v0[5] = 0xE100000000000000;
      v0[6] = 95;
      v0[7] = 0xE100000000000000;
      v53 = v11;
      v54 = v11;
      v51 = v9;
      v52 = v11;
      v14 = sub_2723780FC();
      v58[0] = v8;
      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        v56 = v14;
        v19 = v15;
        sub_27220056C((v16 > 1), v17 + 1, 1);
        v15 = v19;
        v14 = v56;
        v8 = v58[0];
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v12 += 2;
      --v7;
    }

    while (v7);
  }

  v0[8] = v8;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
  v20 = sub_2723777CC();
  v22 = v21;

  sub_27237820C();

  v58[0] = 0x2F706D742FLL;
  v58[1] = 0xE500000000000000;
  MEMORY[0x2743C4AD0](v20, v22);

  MEMORY[0x2743C4AD0](0xD000000000000014, 0x800000027238D370);
  if (qword_28088CBD8 != -1)
  {
    swift_once();
  }

  v23 = sub_27237728C();
  sub_2721F08DC(v23, qword_28088CBE0);

  v24 = sub_27237725C();
  v25 = sub_272377E6C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v58[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2721FFD04(0x2F706D742FLL, 0xE500000000000000, v58);
    _os_log_impl(&dword_2721E4000, v24, v25, "Speech Profile for debugging: %s", v26, 0xCu);
    sub_2722039C8(v27);
    MEMORY[0x2743C69C0](v27, -1, -1);
    MEMORY[0x2743C69C0](v26, -1, -1);
  }

  v28 = v0[26];
  v29 = sub_2723777FC();

  [v28 writeUserProfileAsJson_];

  v30 = [v28 writeUserProfileToCache];
  v31 = sub_27237782C();
  v33 = v32;

  v34 = sub_27237725C();
  v35 = sub_272377E6C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v58[0] = v37;
    *v36 = 136315138;
    v38 = sub_2721FFD04(v31, v33, v58);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_2721E4000, v34, v35, "Speech Profile: %s", v36, 0xCu);
    sub_2722039C8(v37);
    MEMORY[0x2743C69C0](v37, -1, -1);
    MEMORY[0x2743C69C0](v36, -1, -1);
  }

  else
  {
  }

  v39 = v0[26];
  v41 = v0[22];
  v40 = v0[23];
  v43 = v0[20];
  v42 = v0[21];
  v44 = v0[17];
  v55 = v0[14];
  v57 = v0[13];
  v45 = [v39 getUserProfileData];
  v46 = sub_272376D8C();
  v48 = v47;

  (*(v41 + 8))(v40, v42);

  v49 = v0[1];

  return v49(v46, v48);
}

uint64_t sub_27229EA20()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_27229EAE0()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = v0[17];
  v5 = v0[13];
  v4 = v0[14];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_27229EB98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 224) = a4;
  *(v5 + 112) = a3;
  *(v5 + 120) = a5;
  *(v5 + 96) = a1;
  *(v5 + 104) = a2;
  v6 = sub_272376D5C();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  v9 = sub_272376EBC();
  *(v5 + 152) = v9;
  v10 = *(v9 - 8);
  *(v5 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27229ECBC, 0, 0);
}

uint64_t sub_27229ECBC()
{
  v43 = v0;
  v1 = *(v0 + 224);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  *(v0 + 88) = *(v0 + 96);
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
  *(v0 + 40) = sub_2723777CC();
  *(v0 + 56) = 32;
  *(v0 + 48) = v4;
  *(v0 + 64) = 0xE100000000000000;
  *(v0 + 72) = 95;
  *(v0 + 80) = 0xE100000000000000;
  v39 = sub_272203AC4();
  v38 = MEMORY[0x277D837D0];
  v5 = sub_2723780FC();
  v7 = v6;

  sub_27237820C();

  v42[0] = v3;
  v42[1] = v2;
  MEMORY[0x2743C4AD0](47, 0xE100000000000000);
  MEMORY[0x2743C4AD0](v5, v7);

  MEMORY[0x2743C4AD0](0x4C6D6F747375632DLL, 0xED00006E69622E4DLL);
  *(v0 + 176) = v3;
  *(v0 + 184) = v2;
  if ((v1 & 1) != 0 || (v8 = [objc_opt_self() defaultManager], v9 = sub_2723777FC(), v10 = objc_msgSend(v8, sel_fileExistsAtPath_, v9), v9, v8, !v10))
  {
    v22 = *(v0 + 160);
    v23 = *(v0 + 168);
    v24 = *(v0 + 152);
    v40 = *(v0 + 144);
    v25 = *(v0 + 120);
    v26 = *(v0 + 96);
    *(v0 + 192) = mach_absolute_time();
    v27 = sub_272376E7C();
    v29 = sub_2722A064C(v27, v28);
    v31 = v30;
    v33 = v32;

    sub_27237763C();
    (*(v22 + 16))(v23, v25, v24);
    v34 = swift_task_alloc();
    v34[2] = v29;
    v34[3] = v31;
    v34[4] = v33;
    v34[5] = v26;
    *(v0 + 200) = sub_27237762C();

    sub_272376CAC();
    v35 = *(MEMORY[0x277CDCD90] + 4);
    v41 = (*MEMORY[0x277CDCD90] + MEMORY[0x277CDCD90]);
    v36 = swift_task_alloc();
    *(v0 + 208) = v36;
    *v36 = v0;
    v36[1] = sub_27229F1B0;
    v37 = *(v0 + 144);

    return v41(v37);
  }

  else
  {
    if (qword_28088CBD8 != -1)
    {
      swift_once();
    }

    v11 = sub_27237728C();
    sub_2721F08DC(v11, qword_28088CBE0);

    v12 = sub_27237725C();
    v13 = sub_272377E7C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2721FFD04(v3, v2, v42);
      _os_log_impl(&dword_2721E4000, v12, v13, "Reusing custom LM from %s", v14, 0xCu);
      sub_2722039C8(v15);
      MEMORY[0x2743C69C0](v15, -1, -1);
      MEMORY[0x2743C69C0](v14, -1, -1);
    }

    v16 = *(v0 + 168);
    v17 = *(v0 + 144);

    v18 = *(v0 + 8);
    v19 = *(v0 + 176);
    v20 = *(v0 + 184);

    return v18(v19, v20);
  }
}

uint64_t sub_27229F1B0()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v10 = *v1;
  *(*v1 + 216) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = *(v2 + 184);

    v8 = sub_27229F508;
  }

  else
  {
    v8 = sub_27229F330;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_27229F330()
{
  v3 = mach_absolute_time();
  if (qword_28088CBD8 != -1)
  {
    swift_once();
  }

  v4 = sub_27237728C();
  sub_2721F08DC(v4, qword_28088CBE0);
  v5 = sub_27237725C();
  v6 = sub_272377E7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[24];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v3 < v7)
    {
      __break(1u);
    }

    else
    {
      v1 = v8;
      v2 = (v3 - v7);
      if (qword_28088CBF8 == -1)
      {
LABEL_6:
        v9 = v0[25];
        swift_beginAccess();
        *(v1 + 1) = v2 / *&qword_280893AB0 / 1000000000.0;
        _os_log_impl(&dword_2721E4000, v5, v6, "Custom LM creation took %f seconds", v1, 0xCu);
        MEMORY[0x2743C69C0](v1, -1, -1);
        goto LABEL_8;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  v10 = v0[25];
LABEL_8:

  v11 = v0[21];
  v12 = v0[18];

  v13 = v0[1];
  v14 = v0[22];
  v15 = v0[23];

  return v13(v14, v15);
}

uint64_t sub_27229F508()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[18];

  v4 = v0[1];
  v5 = v0[27];

  return v4();
}

uint64_t sub_27229F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v7 = sub_2723775CC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2723775EC();
  v35 = *(v36 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_2808826E8, &qword_272381AB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27237AFB0;
  *(inited + 32) = 0x786966657270;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = 1701667182;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = a3;
  *(inited + 80) = 0x786966667573;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = a2;

  sub_2722A0548(inited);
  swift_setDeallocating();
  sub_2721F065C(&qword_2808826F0, &qword_272381AB8);
  swift_arrayDestroy();
  v34 = v14;
  sub_2723775DC();
  v16 = *(a3 + 16);
  if (v16)
  {
    v17 = (v8 + 16);
    v18 = (v8 + 8);
    v19 = (a3 + 40);
    v20 = MEMORY[0x277D84F90];
    v38 = xmmword_27237AF80;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;

      MEMORY[0x2743C4710](v21, v22, 10000);
      sub_2721F065C(&qword_2808826F8, &qword_272381AC0);
      v23 = swift_allocObject();
      *(v23 + 16) = v38;
      *(v23 + 56) = v7;
      *(v23 + 64) = MEMORY[0x277CDCD78];
      v24 = sub_2721F4150((v23 + 32));
      (*v17)(v24, v11, v7);
      sub_27237759C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_27229FD64(0, v20[2] + 1, 1, v20);
      }

      v26 = v20[2];
      v25 = v20[3];
      if (v26 >= v25 >> 1)
      {
        v20 = sub_27229FD64((v25 > 1), v26 + 1, 1, v20);
      }

      (*v18)(v11, v7);
      v20[2] = v26 + 1;
      sub_2721F41B4(v39, &v20[5 * v26 + 4]);
      v19 += 2;
      --v16;
    }

    while (v16);
  }

  sub_27237759C();

  sub_2721F065C(&qword_2808826F8, &qword_272381AC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_27237AF90;
  v28 = MEMORY[0x277CDCD80];
  v29 = v36;
  *(v27 + 56) = v36;
  *(v27 + 64) = v28;
  v30 = sub_2721F4150((v27 + 32));
  v31 = v35;
  v32 = v34;
  (*(v35 + 16))(v30, v34, v29);
  sub_27221629C(v39, v27 + 72);
  sub_27237759C();

  sub_2722039C8(v39);
  return (*(v31 + 8))(v32, v29);
}

uint64_t sub_27229F9EC()
{
  v0 = sub_27237760C();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  MEMORY[0x2743C4770](0xD000000000000018, 0x800000027238D3E0, 10000);
  MEMORY[0x2743C4770](0x3E7869666572703CLL, 0xEF3E656D616E3C20, 10000);
  MEMORY[0x2743C4770](0x3C203E656D616E3CLL, 0xEF3E786966667573, 10000);
  sub_2721F065C(&qword_280882708, &unk_272381AD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_27237AFB0;
  v12 = MEMORY[0x277CDCD88];
  *(v11 + 56) = v0;
  *(v11 + 64) = v12;
  v13 = sub_2721F4150((v11 + 32));
  v14 = v1[2];
  v14(v13, v10, v0);
  *(v11 + 96) = v0;
  *(v11 + 104) = v12;
  v15 = sub_2721F4150((v11 + 72));
  v14(v15, v8, v0);
  *(v11 + 136) = v0;
  *(v11 + 144) = v12;
  v16 = sub_2721F4150((v11 + 112));
  v14(v16, v5, v0);
  sub_2723775FC();

  v17 = v1[1];
  v17(v5, v0);
  v17(v8, v0);
  return (v17)(v10, v0);
}

double sub_27229FC58(unint64_t a1)
{
  if (qword_28088CBF8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = a1;
  swift_beginAccess();
  return v1 / *&qword_280893AB0 / 1000000000.0;
}

double sub_27229FCF8()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v0) = v4[0].denom;
  LODWORD(v1) = v4[0].numer;
  result = v0 / v1;
  qword_280893AB0 = *&result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_27229FD64(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_2808826F8, &qword_272381AC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_280882700, &qword_272381AC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27229FEAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_2721F065C(&qword_280882710, &qword_272384170);
  v38 = a2;
  result = sub_2723783DC();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_2722A0154()
{
  v1 = v0;
  sub_2721F065C(&qword_280882710, &qword_272384170);
  v2 = *v0;
  v3 = sub_2723783CC();
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

void *sub_2722A02C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_2722A041C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280882730, &unk_272381B00);
    v3 = sub_2723783EC();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_27220038C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_2722A0548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280882710, &qword_272384170);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_2722A064C(uint64_t a1, unint64_t a2)
{
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28088CBD0 != -1)
  {
    swift_once();
  }

  v9 = qword_280893AA8;
  if (*(qword_280893AA8 + 16) && (v10 = sub_27220038C(a1, a2), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 24 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];

    return v13;
  }

  else
  {
    v17 = sub_2722C389C();
    (*(v5 + 16))(v8, v17, v4);

    v18 = sub_27237725C();
    v19 = sub_272377E8C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2721FFD04(a1, a2, &v23);
      _os_log_impl(&dword_2721E4000, v18, v19, "Could not find LME bias phrases for locale identifier %s. Using default en-US phrases.", v20, 0xCu);
      sub_2722039C8(v21);
      MEMORY[0x2743C69C0](v21, -1, -1);
      MEMORY[0x2743C69C0](v20, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return &unk_28818BD80;
  }
}

uint64_t sub_2722A08B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = sub_272376D5C();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = *(*(sub_2721F065C(&qword_280881A50, &unk_27237CA30) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = sub_27237768C();
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v11 = sub_272376EBC();
  v3[15] = v11;
  v12 = *(v11 - 8);
  v3[16] = v12;
  v13 = *(v12 + 64) + 15;
  v3[17] = swift_task_alloc();
  v14 = sub_27237767C();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A0AC8, 0, 0);
}

uint64_t sub_2722A0AC8()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  (*(v0[16] + 16))(v0[17], v0[7], v0[15]);
  (*(v4 + 104))(v2, *MEMORY[0x277CDCE50], v3);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_27237765C();
  v8 = *(MEMORY[0x277CDCDF8] + 4);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_2722A0C1C;
  v10 = v0[20];
  v11 = v0[10];

  return MEMORY[0x28212C308](v11);
}

uint64_t sub_2722A0C1C()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_2722A115C;
  }

  else
  {
    v3 = sub_2722A0D30;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722A0D30()
{
  v43 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  sub_272376D1C();
  (*(v2 + 8))(v1, v3);
  sub_272376E7C();
  v7 = objc_allocWithZone(RDCustomProfile);
  v8 = sub_2723777FC();

  v9 = sub_2723777FC();

  v10 = [v7 initWithLanguage:v8 assetPath:v9];

  v11 = sub_2723777FC();
  v12 = [v10 pronunciationsForOrthography_];

  if (v12)
  {
    v13 = sub_272377D8C();
  }

  else
  {
    v13 = 0;
  }

  if (qword_28088CBD8 != -1)
  {
    swift_once();
  }

  v14 = v0[6];
  v15 = sub_27237728C();
  sub_2721F08DC(v15, qword_28088CBE0);

  v16 = sub_27237725C();
  v17 = sub_272377E6C();

  if (os_log_type_enabled(v16, v17))
  {
    v41 = v10;
    v19 = v0[5];
    v18 = v0[6];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2721FFD04(v19, v18, &v42);
    *(v20 + 12) = 2080;
    if (v13)
    {
      v0[4] = v13;

      sub_2721F065C(&qword_280882718, &qword_272381AF0);
      sub_2722199BC(&qword_280882720, &qword_280882718, &qword_272381AF0);
      sub_272203AC4();
      v22 = sub_272377A7C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v28 = v0[19];
    v40 = v0[20];
    v29 = v0[18];
    v0[2] = v22;
    v0[3] = v24;
    sub_2721F065C(&qword_280881828, &qword_27237BF40);
    v30 = sub_27237789C();
    v32 = sub_2721FFD04(v30, v31, &v42);

    *(v20 + 14) = v32;
    _os_log_impl(&dword_2721E4000, v16, v17, "Prons[%s] = %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v21, -1, -1);
    MEMORY[0x2743C69C0](v20, -1, -1);

    (*(v28 + 8))(v40, v29);
  }

  else
  {
    v26 = v0[19];
    v25 = v0[20];
    v27 = v0[18];

    (*(v26 + 8))(v25, v27);
  }

  v33 = v0[20];
  v34 = v0[17];
  v35 = v0[14];
  v37 = v0[10];
  v36 = v0[11];

  v38 = v0[1];

  return v38(v13);
}

uint64_t sub_2722A115C()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  (*(v0[19] + 8))(v0[20], v0[18]);

  v5 = v0[1];
  v6 = v0[22];

  return v5();
}

uint64_t sub_2722A1214(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_27237728C();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A12D4, 0, 0);
}

uint64_t sub_2722A12D4()
{
  v1 = v0[9];
  v2 = sub_2722A0548(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  v0[14] = v3;
  if (v3)
  {
    v4 = v0[9];
    v0[15] = v2;
    v0[16] = 0;
    v5 = *(v4 + 32);
    v0[17] = v5;
    v6 = *(v4 + 40);
    v0[18] = v6;

    v7 = swift_task_alloc();
    v0[19] = v7;
    *v7 = v0;
    v7[1] = sub_2722A1414;
    v8 = v0[10];

    return sub_2722A08B8(v5, v6, v8);
  }

  else
  {
    v10 = v0[13];
    v11 = v2;

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_2722A1414(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v9 = *v2;
  v3[20] = a1;
  v3[21] = v1;

  if (v1)
  {
    v5 = v3[18];
    v6 = v3[15];

    v7 = sub_2722A1A48;
  }

  else
  {
    v7 = sub_2722A153C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

unint64_t sub_2722A153C()
{
  v67 = v0;
  v1 = *(v0 + 160);
  if (!v1)
  {
LABEL_11:
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);
    v19 = *(v0 + 96);
    v18 = *(v0 + 104);
    v20 = *(v0 + 88);

    v21 = sub_2722C389C();
    (*(v19 + 16))(v18, v21, v20);

    v22 = sub_27237725C();
    v23 = sub_272377E8C();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 144);
    if (v24)
    {
      v26 = *(v0 + 136);
      v28 = *(v0 + 96);
      v27 = *(v0 + 104);
      v29 = *(v0 + 88);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v66 = v31;
      *v30 = 136315138;
      v32 = sub_2721FFD04(v26, v25, &v66);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_2721E4000, v22, v23, "Could not get pronunciations for name %s", v30, 0xCu);
      sub_2722039C8(v31);
      MEMORY[0x2743C69C0](v31, -1, -1);
      MEMORY[0x2743C69C0](v30, -1, -1);

      (*(v28 + 8))(v27, v29);
    }

    else
    {
      v34 = *(v0 + 96);
      v33 = *(v0 + 104);
      v35 = *(v0 + 88);
      v36 = *(v0 + 144);

      (*(v34 + 8))(v33, v35);
    }

    v37 = 0;
    goto LABEL_15;
  }

  v2 = *(v1 + 16);
  if (!v2)
  {
    v15 = *(v0 + 160);

    goto LABEL_11;
  }

  sub_2721F065C(&qword_280881860, &unk_27237C340);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  v5 = v4 - 32;
  if (v4 < 32)
  {
    v5 = v4 - 17;
  }

  v3[2] = v2;
  v3[3] = 2 * (v5 >> 4);
  v6 = sub_2722A02C4((v0 + 16), v3 + 4, v2, v1);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 48);

  result = sub_272270484();
  if (v6 != v2)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v65 = result;
    sub_2722A0154();
    result = v65;
    goto LABEL_25;
  }

  v13 = *(v0 + 168);
  *(v0 + 56) = v3;
  sub_272272490((v0 + 56));
  if (v13)
  {

    v14 = *(v0 + 56);
  }

  v40 = *(v0 + 136);
  v2 = *(v0 + 144);
  v41 = *(v0 + 120);

  v8 = *(v0 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 64) = v41;
  result = sub_27220038C(v40, v2);
  v44 = *(v41 + 16);
  v45 = (v43 & 1) == 0;
  v46 = __OFADD__(v44, v45);
  v47 = v44 + v45;
  if (v46)
  {
    goto LABEL_34;
  }

  LOBYTE(v2) = v43;
  if (*(*(v0 + 120) + 24) >= v47)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v49 = *(v0 + 136);
  v48 = *(v0 + 144);
  sub_27229FEAC(v47, isUniquelyReferenced_nonNull_native);
  v50 = *(v0 + 64);
  result = sub_27220038C(v49, v48);
  if ((v2 & 1) != (v51 & 1))
  {

    return sub_2723786BC();
  }

LABEL_25:
  v37 = *(v0 + 64);
  v52 = *(v0 + 144);
  if (v2)
  {
    v53 = v37[7];
    v54 = *(v53 + 8 * result);
    *(v53 + 8 * result) = v8;
  }

  else
  {
    v55 = *(v0 + 136);
    v37[(result >> 6) + 8] |= 1 << result;
    v56 = (v37[6] + 16 * result);
    *v56 = v55;
    v56[1] = v52;
    *(v37[7] + 8 * result) = v8;
    v57 = v37[2];
    v46 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v46)
    {
      __break(1u);
      return result;
    }

    v37[2] = v58;
  }

  v59 = *(v0 + 128) + 1;
  if (v59 != *(v0 + 112))
  {
    *(v0 + 120) = v37;
    *(v0 + 128) = v59;
    v60 = *(v0 + 72) + 16 * v59;
    v61 = *(v60 + 32);
    *(v0 + 136) = v61;
    v62 = *(v60 + 40);
    *(v0 + 144) = v62;

    v63 = swift_task_alloc();
    *(v0 + 152) = v63;
    *v63 = v0;
    v63[1] = sub_2722A1414;
    v64 = *(v0 + 80);

    return sub_2722A08B8(v61, v62, v64);
  }

LABEL_15:
  v38 = *(v0 + 104);

  v39 = *(v0 + 8);

  return v39(v37);
}

uint64_t sub_2722A1A48()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

uint64_t sub_2722A1AEC(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280882728, &qword_272381AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VATaskHintCommand.speechTaskHint()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_27237768C();
  v5 = *(*(v4 - 8) + 104);
  v6 = **(&unk_279E3FFC8 + v3);

  return v5(a1, v6, v4);
}

VoiceActions::VATaskHintCommand_optional __swiftcall VATaskHintCommand.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VATaskHintCommand.rawValue.getter()
{
  result = 0x6F69746174636964;
  switch(*v0)
  {
    case 1:
      result = 0x686372616573;
      break;
    case 2:
      result = 0x616D7269666E6F63;
      break;
    case 3:
      result = 0x6E61747369737361;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6369446863746177;
      break;
    case 7:
      result = 0x69616D6563696F76;
      break;
    case 8:
      result = 0x436E49646E756F66;
      break;
    case 9:
      result = 0x696E6F6974706163;
      break;
    case 0xB:
      result = 0x43436C6C657073;
      break;
    case 0xC:
      result = 0x676E696C6C657073;
      break;
    case 0xD:
      result = 0x746F687374;
      break;
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 0xF:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2722A1E38(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = VATaskHintCommand.rawValue.getter();
  v4 = v3;
  if (v2 == VATaskHintCommand.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27237865C();
  }

  return v7 & 1;
}

uint64_t sub_2722A1ED4()
{
  v1 = *v0;
  sub_27237874C();
  VATaskHintCommand.rawValue.getter();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2722A1F3C()
{
  v2 = *v0;
  VATaskHintCommand.rawValue.getter();
  sub_27237790C();
}

uint64_t sub_2722A1FA0()
{
  v1 = *v0;
  sub_27237874C();
  VATaskHintCommand.rawValue.getter();
  sub_27237790C();

  return sub_27237878C();
}

unint64_t sub_2722A2010@<X0>(unint64_t *a1@<X8>)
{
  result = VATaskHintCommand.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for VASpeechBiasData()
{
  result = qword_28088CF30;
  if (!qword_28088CF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VASpeechBiasData.customLMPath.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VASpeechBiasData.customLMPath.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VASpeechBiasData.speechProfileData.getter()
{
  v1 = *(v0 + 16);
  sub_2721F054C(v1, *(v0 + 24));
  return v1;
}

uint64_t VASpeechBiasData.speechProfileData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2721F05B4(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t VASpeechBiasData.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VASpeechBiasData() + 24);
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VASpeechBiasData.created.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VASpeechBiasData() + 24);
  v4 = sub_272376DFC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VASpeechBiasData.customLMWeight.setter(double a1)
{
  result = type metadata accessor for VASpeechBiasData();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t VASpeechResult.best.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t VASpeechResult.best.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t VASpeechResult.nBest.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t VASpeechResult.confidence.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t VASpeechResult.confidence.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

void sub_2722A2540(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

uint64_t sub_2722A255C()
{
  v0 = sub_27237728C();
  sub_2721F408C(v0, qword_28088CC08);
  sub_2721F08DC(v0, qword_28088CC08);
  return sub_27237726C();
}

id sub_2722A25D8()
{
  result = [objc_allocWithZone(MEMORY[0x277CB83A8]) initWithCommonFormat:3 sampleRate:1 channels:0 interleaved:16000.0];
  if (result)
  {
    qword_28088CC28 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static VASpeechAPI.nearestGraphemeBasedOnGrapheme(_:neighborsOf:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_27237752C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_27237751C();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_272376EBC();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A27A8, 0, 0);
}

uint64_t sub_2722A27A8()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  (*(v0[13] + 16))(v0[14], v0[5], v0[12]);
  (*(v3 + 104))(v1, *MEMORY[0x277CDCC88], v2);
  (*(v5 + 104))(v4, *MEMORY[0x277CDCC90], v6);
  v7 = sub_27237756C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[15] = sub_27237754C();
  v10 = *(MEMORY[0x277CDCCA8] + 4);
  v11 = swift_task_alloc();
  v0[16] = v11;
  *v11 = v0;
  v11[1] = sub_2722A291C;
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];

  return MEMORY[0x28212C020](v14, v12, v13);
}

uint64_t sub_2722A291C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_2722A2C58;
  }

  else
  {
    v5 = sub_2722A2A30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

char *sub_2722A2A30()
{
  v1 = v0[17];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v22 = v0[17];
    }

    v2 = sub_2723783AC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    v23 = v0[17];
    v24 = v0[15];

    v4 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v29 = MEMORY[0x277D84F90];
  result = sub_27220056C(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = v29;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    do
    {
      MEMORY[0x2743C5370](v5, v0[17]);
      v6 = sub_27237757C();
      v8 = v7;
      swift_unknownObjectRelease();
      v10 = *(v29 + 16);
      v9 = *(v29 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_27220056C((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v29 + 16) = v10 + 1;
      v11 = v29 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
    }

    while (v2 != v5);
  }

  else
  {
    v12 = (v0[17] + 32);
    do
    {
      v13 = *v12;

      v14 = sub_27237757C();
      v16 = v15;

      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_27220056C((v17 > 1), v18 + 1, 1);
      }

      *(v29 + 16) = v18 + 1;
      v19 = v29 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      ++v12;
      --v2;
    }

    while (v2);
  }

  v20 = v0[17];
  v21 = v0[15];

LABEL_19:
  v25 = v0[14];
  v26 = v0[11];
  v27 = v0[8];

  v28 = v0[1];

  return v28(v4);
}

uint64_t sub_2722A2C58()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t static VASpeechAPI.nearestGraphemeBasedOnPhoneme(_:neighborsOf:locale:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_27237752C();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v8 = sub_27237751C();
  v4[20] = v8;
  v9 = *(v8 - 8);
  v4[21] = v9;
  v10 = *(v9 + 64) + 15;
  v4[22] = swift_task_alloc();
  v11 = sub_272376EBC();
  v4[23] = v11;
  v12 = *(v11 - 8);
  v4[24] = v12;
  v13 = *(v12 + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A2E60, 0, 0);
}

uint64_t sub_2722A2E60()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  (*(v0[24] + 16))(v0[25], v0[16], v0[23]);
  (*(v3 + 104))(v1, *MEMORY[0x277CDCC80], v2);
  (*(v5 + 104))(v4, *MEMORY[0x277CDCC90], v6);
  v7 = sub_27237756C();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v0[26] = sub_27237754C();
  type metadata accessor for VALanguageModelEnrollment();
  v10 = swift_task_alloc();
  v0[27] = v10;
  *v10 = v0;
  v10[1] = sub_2722A2FDC;
  v11 = v0[15];
  v12 = v0[16];
  v13 = v0[14];

  return sub_27229D4F8(v13, v11, v12);
}

uint64_t sub_2722A2FDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v7 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v5 = sub_2722A3A0C;
  }

  else
  {
    v5 = sub_2722A30F0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2722A30F0()
{
  v40 = v0;
  v1 = *(v0 + 224);
  if (!v1)
  {
    v7 = *(v0 + 208);
    v9 = *(v0 + 112);
    v8 = *(v0 + 120);
    sub_27237820C();

    v39[0] = 0xD00000000000001DLL;
    v39[1] = 0x800000027238D540;
    MEMORY[0x2743C4AD0](v9, v8);
    sub_2722032B4();
    swift_allocError();
    *v10 = 0xD00000000000001DLL;
    v10[1] = 0x800000027238D540;
    swift_willThrow();

    v11 = *(v0 + 200);
    v12 = *(v0 + 176);
    v13 = *(v0 + 152);

    v14 = *(v0 + 8);

    return v14();
  }

  *(v0 + 96) = MEMORY[0x277D84FA0];
  v2 = *(v1 + 32);
  *(v0 + 288) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 56);
  if (!v5)
  {
    v16 = 0;
    v38 = *(v0 + 232);
    v17 = ((63 - v4) >> 6) - 1;
    while (v17 != v16)
    {
      v6 = v16 + 1;
      v5 = *(v1 + 8 * v16++ + 64);
      if (v5)
      {
        goto LABEL_12;
      }
    }

    v28 = *(v0 + 96);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = sub_2722702A8(*(v28 + 16), 0);
      v31 = sub_2722A02C4(v39, v30 + 4, v29, v28);

      sub_272270484();
      if (v31 == v29)
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    v30 = MEMORY[0x277D84F90];
LABEL_19:
    v39[0] = v30;
    sub_272272490(v39);
    if (v38)
    {
    }

    else
    {
      v33 = *(v0 + 200);
      v32 = *(v0 + 208);
      v34 = *(v0 + 176);
      v35 = *(v0 + 152);

      v36 = v39[0];

      v37 = *(v0 + 8);

      return v37(v36);
    }
  }

  v6 = 0;
LABEL_12:
  *(v0 + 240) = v5;
  *(v0 + 248) = v6;
  v18 = (*(v1 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v5)))));
  v20 = *v18;
  v19 = v18[1];
  *(v0 + 16) = v20;
  *(v0 + 24) = v19;
  *(v0 + 32) = 46;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 32;
  *(v0 + 56) = 0xE100000000000000;
  sub_272203AC4();
  v21 = sub_2723780FC();
  v23 = v22;
  *(v0 + 256) = v22;
  v24 = *(MEMORY[0x277CDCCA8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 264) = v25;
  *v25 = v0;
  v25[1] = sub_2722A34F0;
  v26 = *(v0 + 208);
  v27 = *(v0 + 104);

  return MEMORY[0x28212C020](v27, v21, v23);
}

uint64_t sub_2722A34F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v10 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v5 = v3[32];
    v6 = v3[12];

    v7 = sub_2722A3A98;
  }

  else
  {
    v8 = v3[32];

    v7 = sub_2722A3620;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2722A3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = v3;
  v4 = *(v3 + 272);
  if (v4 >> 62)
  {
LABEL_32:
    a1 = sub_2723783AC();
    v5 = a1;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return MEMORY[0x28212C020](a1, a2, a3);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      MEMORY[0x2743C5370](v6++, *(v3 + 272));
      v7 = sub_27237757C();
      v4 = v3 + 96;
      sub_2722AB1B4((v3 + 64), v7, v8);
      swift_unknownObjectRelease();
      v9 = *(v3 + 72);
    }

    while (v5 != v6);
  }

  else
  {
    v10 = (*(v3 + 272) + 32);
    do
    {
      v11 = *v10++;

      v12 = sub_27237757C();
      v4 = v3 + 96;
      sub_2722AB1B4((v3 + 80), v12, v13);

      v14 = *(v3 + 88);

      --v5;
    }

    while (v5);
  }

LABEL_10:
  v15 = *(v3 + 272);

  v16 = *(v3 + 248);
  v17 = (*(v3 + 240) - 1) & *(v3 + 240);
  if (v17)
  {
    v18 = *(v3 + 224);
LABEL_17:
    *(v3 + 240) = v17;
    *(v3 + 248) = v16;
    v20 = (*(v18 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v17)))));
    v22 = *v20;
    v21 = v20[1];
    *(v3 + 16) = v22;
    *(v3 + 24) = v21;
    *(v3 + 32) = 46;
    *(v3 + 40) = 0xE100000000000000;
    *(v3 + 48) = 32;
    *(v3 + 56) = 0xE100000000000000;
    sub_272203AC4();
    v23 = sub_2723780FC();
    v25 = v24;
    *(v3 + 256) = v24;
    v26 = *(MEMORY[0x277CDCCA8] + 4);
    v27 = swift_task_alloc();
    *(v3 + 264) = v27;
    *v27 = v3;
    v27[1] = sub_2722A34F0;
    v28 = *(v3 + 208);
    a1 = *(v3 + 104);
    a2 = v23;
    a3 = v25;

    return MEMORY[0x28212C020](a1, a2, a3);
  }

  v40 = *(v3 + 280);
  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_32;
    }

    v18 = *(v3 + 224);
    if (v19 >= (((1 << *(v3 + 288)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v18 + 8 * v19 + 56);
    ++v16;
    if (v17)
    {
      v16 = v19;
      goto LABEL_17;
    }
  }

  v29 = *(v3 + 96);
  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = sub_2722702A8(*(v29 + 16), 0);
    v32 = sub_2722A02C4(&v41, v31 + 4, v30, v29);

    sub_272270484();
    if (v32 == v30)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  v31 = MEMORY[0x277D84F90];
LABEL_24:
  v41 = v31;
  sub_272272490(&v41);
  if (v40)
  {
  }

  else
  {
    v35 = *(v3 + 200);
    v34 = *(v3 + 208);
    v36 = *(v3 + 176);
    v37 = *(v3 + 152);

    v38 = v41;

    v39 = *(v3 + 8);

    return v39(v38);
  }
}

uint64_t sub_2722A3A0C()
{
  v1 = v0[26];

  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[19];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2722A3A98()
{
  v1 = v0[28];
  v2 = v0[26];

  v3 = v0[35];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[19];

  v7 = v0[1];

  return v7();
}

uint64_t static VASpeechAPI.createBiasData(_:_:_:customLMWeight:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, double a5)
{
  *(v5 + 72) = a5;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 48) = a1;
  *(v5 + 165) = *a4;
  return MEMORY[0x2822009F8](sub_2722A3B60, 0, 0);
}

unint64_t sub_2722A3B60()
{
  v45 = v0;
  v1 = *(v0 + 56);
  *(v0 + 80) = mach_absolute_time();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 56) + 32;
    sub_272203AC4();
    v4 = 0;
    while (1)
    {
      v5 = (v3 + 16 * v4);
      v7 = *v5;
      v6 = v5[1];
      *(v0 + 16) = *v5;
      *(v0 + 24) = v6;
      *(v0 + 32) = 95;
      *(v0 + 40) = 0xE100000000000000;

      if (sub_27237813C())
      {
        break;
      }

      ++v4;
      v8 = HIBYTE(v6) & 0xF;
      v44[0] = v7;
      v44[1] = v6;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFLL;
      }

      v44[2] = 0;
      v44[3] = v8;

      while (1)
      {
        sub_27237799C();
        if (!v9)
        {
          break;
        }

        v10 = sub_2723777BC();

        if (v10)
        {

          goto LABEL_15;
        }
      }

      if (v4 == v2)
      {
        goto LABEL_11;
      }
    }

LABEL_15:
    sub_27237820C();

    strcpy(v44, "Invalid name: ");
    HIBYTE(v44[1]) = -18;
    MEMORY[0x2743C4AD0](v7, v6);

    v25 = v44[1];
    sub_2722AC358();
    swift_allocError();
    *v26 = v44[0];
    v26[1] = v25;
    swift_willThrow();
    v27 = *(v0 + 8);
LABEL_16:

    return v27();
  }

LABEL_11:
  v11 = *(v0 + 165);
  v12 = *(v0 + 48);
  *v12 = 0;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0xF000000000000000;
  v13 = type metadata accessor for VASpeechBiasData();
  v14 = v12 + *(v13 + 24);
  sub_272376DEC();
  v15 = *(v13 + 28);
  *(v0 + 160) = v15;
  *(v12 + v15) = 0x3FA999999999999ALL;
  LOBYTE(v44[0]) = v11;
  if (VASpeechBiasOptions.useCustomLM.getter())
  {
    type metadata accessor for VALanguageModelEnrollment();
    v16 = NSTemporaryDirectory();
    v17 = sub_27237782C();
    v19 = v18;

    *(v0 + 88) = v19;
    v20 = sub_27222CD4C();
    v21 = swift_task_alloc();
    *(v0 + 96) = v21;
    *v21 = v0;
    v21[1] = sub_2722A403C;
    v23 = *(v0 + 56);
    v22 = *(v0 + 64);

    return sub_27229EB98(v23, v17, v19, v20 & 1, v22);
  }

  else
  {
    v28 = *(v0 + 160);
    v29 = *(v0 + 165);
    v30 = *(v0 + 72);
    v31 = *(v0 + 48);
    *v31 = 0;
    v31[1] = 0;
    *(v31 + v28) = v30;
    LOBYTE(v44[0]) = v29;
    if ((VASpeechBiasOptions.useContactLM.getter() & 1) == 0)
    {
      v37 = *(v0 + 48);
      sub_2721F05B4(*(v37 + 16), *(v37 + 24));
      *(v37 + 16) = xmmword_27237AF40;
      v38 = mach_absolute_time();
      if (qword_28088CC00 != -1)
      {
        swift_once();
      }

      v39 = sub_27237728C();
      sub_2721F08DC(v39, qword_28088CC08);
      v40 = sub_27237725C();
      v41 = sub_272377E7C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = *(v0 + 80);
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        type metadata accessor for VALanguageModelEnrollment();
        result = v38 - v42;
        if (v38 < v42)
        {
          __break(1u);
          return result;
        }

        *(v43 + 4) = sub_27229FC58(result);
        _os_log_impl(&dword_2721E4000, v40, v41, "Create LME time %f secs", v43, 0xCu);
        MEMORY[0x2743C69C0](v43, -1, -1);
      }

      v27 = *(v0 + 8);
      goto LABEL_16;
    }

    v32 = *(v0 + 165);
    type metadata accessor for VALanguageModelEnrollment();
    *(v0 + 164) = v32;
    v33 = VASpeechBiasOptions.useNBestPronsWithContactLME.getter();
    v34 = swift_task_alloc();
    *(v0 + 128) = v34;
    *v34 = v0;
    v34[1] = sub_2722A43BC;
    v36 = *(v0 + 56);
    v35 = *(v0 + 64);

    return sub_27229D76C(v36, v33, v35);
  }
}

uint64_t sub_2722A403C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_2722A4658;
  }

  else
  {
    v10 = v6[11];

    v6[14] = a2;
    v6[15] = a1;
    v9 = sub_2722A4178;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

unint64_t sub_2722A4178()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 160);
  v3 = *(v0 + 165);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  *v5 = *(v0 + 120);
  v5[1] = v1;
  *(v5 + v2) = v4;
  if (VASpeechBiasOptions.useContactLM.getter())
  {
    v6 = *(v0 + 165);
    type metadata accessor for VALanguageModelEnrollment();
    *(v0 + 164) = v6;
    v7 = VASpeechBiasOptions.useNBestPronsWithContactLME.getter();
    v8 = swift_task_alloc();
    *(v0 + 128) = v8;
    *v8 = v0;
    v8[1] = sub_2722A43BC;
    v10 = *(v0 + 56);
    v9 = *(v0 + 64);

    return sub_27229D76C(v10, v7, v9);
  }

  else
  {
    v12 = *(v0 + 48);
    sub_2721F05B4(*(v12 + 16), *(v12 + 24));
    *(v12 + 16) = xmmword_27237AF40;
    v13 = mach_absolute_time();
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    v14 = sub_27237728C();
    sub_2721F08DC(v14, qword_28088CC08);
    v15 = sub_27237725C();
    v16 = sub_272377E7C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 80);
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      type metadata accessor for VALanguageModelEnrollment();
      result = v13 - v17;
      if (v13 < v17)
      {
        __break(1u);
        return result;
      }

      *(v18 + 4) = sub_27229FC58(result);
      _os_log_impl(&dword_2721E4000, v15, v16, "Create LME time %f secs", v18, 0xCu);
      MEMORY[0x2743C69C0](v18, -1, -1);
    }

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_2722A43BC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 128);
  v8 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v9 = sub_2722A46C8;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v9 = sub_2722A44F0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

unint64_t sub_2722A44F0()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[6];
  sub_2721F05B4(*(v3 + 16), *(v3 + 24));
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = mach_absolute_time();
  if (qword_28088CC00 != -1)
  {
    swift_once();
  }

  v5 = sub_27237728C();
  sub_2721F08DC(v5, qword_28088CC08);
  v6 = sub_27237725C();
  v7 = sub_272377E7C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[10];
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    type metadata accessor for VALanguageModelEnrollment();
    result = v4 - v8;
    if (v4 < v8)
    {
      __break(1u);
      return result;
    }

    *(v9 + 4) = sub_27229FC58(result);
    _os_log_impl(&dword_2721E4000, v6, v7, "Create LME time %f secs", v9, 0xCu);
    MEMORY[0x2743C69C0](v9, -1, -1);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_2722A4658()
{
  v1 = v0[11];
  v2 = v0[6];

  sub_2722AC3AC(v2);
  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_2722A46C8()
{
  sub_2722AC3AC(v0[6]);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t _s12VoiceActions16VASpeechBiasDataVACycfC_0@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xF000000000000000;
  v2 = type metadata accessor for VASpeechBiasData();
  v3 = a1 + *(v2 + 24);
  result = sub_272376DEC();
  *(a1 + *(v2 + 28)) = 0x3FA999999999999ALL;
  return result;
}

uint64_t static VASpeechAPI.recognize(_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, float a9)
{
  *(v9 + 96) = a8;
  *(v9 + 104) = v20;
  *(v9 + 80) = a5;
  *(v9 + 88) = a7;
  *(v9 + 64) = a2;
  *(v9 + 72) = a4;
  *(v9 + 52) = a9;
  *(v9 + 56) = a1;
  v12 = *(*(sub_2721F065C(&qword_2808819D8, &qword_27237CB50) - 8) + 64) + 15;
  *(v9 + 112) = swift_task_alloc();
  v13 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  *(v9 + 120) = v13;
  v14 = *(v13 - 8);
  *(v9 + 128) = v14;
  *(v9 + 136) = *(v14 + 64);
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  v15 = sub_27237768C();
  *(v9 + 160) = v15;
  v16 = *(v15 - 8);
  *(v9 + 168) = v16;
  v17 = *(v16 + 64) + 15;
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 50) = *a3;
  *(v9 + 51) = *a6;

  return MEMORY[0x2822009F8](sub_2722A4930, 0, 0);
}

uint64_t sub_2722A4930()
{
  v1 = [*(v0 + 64) format];
  if (qword_28088CC20 != -1)
  {
    swift_once();
  }

  v2 = qword_28088CC28;
  sub_2722AC408();
  v3 = v2;
  v4 = sub_272377FBC();

  if (v4)
  {
    v5 = *(v0 + 51);
    v6 = *(v0 + 50);
    v7 = *(v0 + 176);
    type metadata accessor for VASpeechAPI();
    VATaskHintCommand.speechTaskHint()(v7);
    *(v0 + 49) = v5;
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    *v8 = v0;
    v8[1] = sub_2722A4B34;
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = *(v0 + 72);

    return static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(v10, v9, v13, v11, (v0 + 49), v12);
  }

  else
  {
    sub_2722AC358();
    swift_allocError();
    *v15 = 0xD000000000000015;
    v15[1] = 0x800000027238D560;
    swift_willThrow();
    v16 = *(v0 + 176);
    v18 = *(v0 + 144);
    v17 = *(v0 + 152);
    v19 = *(v0 + 112);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2722A4B34(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 184);
  v8 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v9 = sub_2722A50CC;
  }

  else
  {
    *(v6 + 200) = a2;
    *(v6 + 208) = a1;
    v9 = sub_2722A4C68;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2722A4C68()
{
  v1 = *(v0 + 200);
  v25 = *(v0 + 208);
  v26 = *(v0 + 168);
  v27 = *(v0 + 160);
  v28 = *(v0 + 176);
  v19 = *(v0 + 144);
  v20 = *(v0 + 152);
  v2 = *(v0 + 128);
  v18 = *(v0 + 120);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v23 = *(v0 + 96);
  v5 = *(v0 + 52);
  v21 = *(v0 + 136);
  v22 = *(v0 + 64);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = MEMORY[0x277D84F90];
  *(v6 + 40) = 0;
  *(v6 + 48) = 1;
  v7 = sub_272377C3C();
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;
  v9[5] = v6;
  v9[6] = v23;
  v9[7] = v4;

  v24 = sub_2722AA6C0(0, 0, v3, &unk_272381B40, v9);
  *(v0 + 216) = v24;
  v8(v3, 1, 1, v7);
  (*(v2 + 16))(v19, v20, v18);
  v10 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v5;
  *(v11 + 40) = v22;
  (*(v2 + 32))(v11 + v10, v19, v18);
  *(v11 + ((v21 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v12 = v22;
  sub_2722AA6C0(0, 0, v3, &unk_272381B50, v11);

  (*(v2 + 8))(v20, v18);
  (*(v26 + 8))(v28, v27);

  v13 = *(MEMORY[0x277D857C8] + 4);
  v14 = swift_task_alloc();
  *(v0 + 224) = v14;
  v15 = sub_2721F065C(&qword_280881A38, &unk_27237CA20);
  *v14 = v0;
  v14[1] = sub_2722A4FB8;
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 16, v24, &type metadata for VASpeechResult, v15, v16);
}

uint64_t sub_2722A4FB8()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_2722A522C;
  }

  else
  {
    v3 = sub_2722A5170;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722A50CC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);
  v1 = v0[24];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_2722A5170()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 112);
  v6 = *(v0 + 56);

  v7 = *(v0 + 32);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  *v6 = *(v0 + 16);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  *(v6 + 32) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2722A522C()
{
  v1 = v0[29];
  v2 = v0[27];
  swift_willThrow();

  v3 = v0[29];
  v4 = v0[22];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t static VASpeechAPI.prepareTranscriber(taskHint:uniqueNames:locale:biasOptions:biasData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6)
{
  *(v6 + 304) = a4;
  *(v6 + 312) = a6;
  *(v6 + 288) = a2;
  *(v6 + 296) = a3;
  *(v6 + 280) = a1;
  v8 = *(*(sub_2721F065C(&qword_280881FB8, &unk_272381B60) - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  v9 = *(*(sub_2723772FC() - 8) + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  v10 = sub_2721F065C(&qword_280881FC0, &qword_27237E400);
  *(v6 + 336) = v10;
  v11 = *(v10 - 8);
  *(v6 + 344) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  v13 = sub_2721F065C(&qword_280881F50, &unk_272381B70);
  *(v6 + 360) = v13;
  v14 = *(v13 - 8);
  *(v6 + 368) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v16 = *(*(sub_2721F065C(&qword_280881FC8, &qword_27237E408) - 8) + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v17 = *(*(sub_2721F065C(&qword_280881FD0, &qword_27237E410) - 8) + 64) + 15;
  *(v6 + 400) = swift_task_alloc();
  v18 = sub_272376EBC();
  *(v6 + 408) = v18;
  v19 = *(v18 - 8);
  *(v6 + 416) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 424) = swift_task_alloc();
  v21 = sub_27237732C();
  *(v6 + 432) = v21;
  v22 = *(v21 - 8);
  *(v6 + 440) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 448) = swift_task_alloc();
  v24 = sub_27237728C();
  *(v6 + 456) = v24;
  v25 = *(v24 - 8);
  *(v6 + 464) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 472) = swift_task_alloc();
  v27 = *(*(sub_2721F065C(&qword_2808821D8, &unk_27237F088) - 8) + 64) + 15;
  *(v6 + 480) = swift_task_alloc();
  v28 = sub_2723774BC();
  *(v6 + 488) = v28;
  v29 = *(v28 - 8);
  *(v6 + 496) = v29;
  v30 = *(v29 + 64) + 15;
  *(v6 + 504) = swift_task_alloc();
  v31 = *(*(sub_272377C3C() - 8) + 64) + 15;
  *(v6 + 512) = swift_task_alloc();
  v32 = sub_2723774DC();
  *(v6 + 520) = v32;
  v33 = *(v32 - 8);
  *(v6 + 528) = v33;
  v34 = *(v33 + 64) + 15;
  *(v6 + 536) = swift_task_alloc();
  v35 = sub_272376D5C();
  *(v6 + 544) = v35;
  v36 = *(v35 - 8);
  *(v6 + 552) = v36;
  v37 = *(v36 + 64) + 15;
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  v38 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  *(v6 + 592) = v38;
  v39 = *(*(v38 - 8) + 64) + 15;
  *(v6 + 600) = swift_task_alloc();
  *(v6 + 608) = swift_task_alloc();
  *(v6 + 616) = swift_task_alloc();
  *(v6 + 624) = swift_task_alloc();
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  v40 = sub_27237745C();
  *(v6 + 656) = v40;
  v41 = *(v40 - 8);
  *(v6 + 664) = v41;
  v42 = *(v41 + 64) + 15;
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 760) = *a5;

  return MEMORY[0x2822009F8](sub_2722A588C, 0, 0);
}

uint64_t sub_2722A588C()
{
  v224 = v0;
  v1 = *(v0 + 760);
  v2 = sub_27237749C();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + 680) = sub_27237748C();
  sub_272253380(MEMORY[0x277D84F90]);
  sub_27237742C();
  LOBYTE(v223[0]) = v1;
  if (VASpeechBiasOptions.useJITGrammar.getter())
  {
    v5 = *(v0 + 672);
    v6 = *(v0 + 664);
    v7 = *(v0 + 656);
    v8 = *(v0 + 296);
    sub_27237744C();

    v9 = sub_27237741C();
    v11 = v10;
    v12 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v223[0] = *v11;
    *v11 = 0x8000000000000000;
    sub_2722ABE54(v8, v5, isUniquelyReferenced_nonNull_native);
    (*(v6 + 8))(v5, v7);
    *v11 = v223[0];
    v9(v0 + 176, 0);
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 296);
    sub_2721F08DC(*(v0 + 456), qword_28088CC08);

    v15 = sub_27237725C();
    v16 = sub_272377E7C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 296);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v223[0] = v19;
      *v18 = 136315138;
      v20 = MEMORY[0x2743C4C60](v17, MEMORY[0x277D837D0]);
      v22 = sub_2721FFD04(v20, v21, v223);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2721E4000, v15, v16, "\tUsing JIT: %s", v18, 0xCu);
      sub_2722039C8(v19);
      MEMORY[0x2743C69C0](v19, -1, -1);
      MEMORY[0x2743C69C0](v18, -1, -1);
    }
  }

  LOBYTE(v223[0]) = *(v0 + 760);
  if (VASpeechBiasOptions.useLeftContext.getter())
  {
    v23 = *(v0 + 672);
    v24 = *(v0 + 664);
    v25 = *(v0 + 656);
    v26 = *(v0 + 304);
    sub_27237743C();
    v27 = sub_272376E7C();
    sub_27229D484(v27);
    v29 = v28;

    v30 = sub_27237741C();
    v32 = v31;
    v33 = *v31;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v223[0] = *v32;
    *v32 = 0x8000000000000000;
    sub_2722ABE54(v29, v23, v34);
    (*(v24 + 8))(v23, v25);
    *v32 = v223[0];
    v30(v0 + 144, 0);
  }

  v35 = *(v0 + 312);
  v36 = v35[2];
  *(v0 + 688) = v36;
  v37 = v35[3];
  *(v0 + 696) = v37;
  if (v37 >> 60 != 15 && *(*(v0 + 296) + 16))
  {
    sub_2721F065C(&qword_280882040, &unk_27237E470);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_27237AF80;
    v223[0] = 0;
    v223[1] = 0xE000000000000000;
    sub_2721F0560(v36, v37);
    sub_27237820C();

    strcpy(v223, "\tContact LM: ");
    HIWORD(v223[1]) = -4864;
    v41 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      v42 = 0;
      if (v41 != 2)
      {
        goto LABEL_42;
      }

      v166 = *(v36 + 16);
      v165 = *(v36 + 24);
      v167 = __OFSUB__(v165, v166);
      v42 = v165 - v166;
      if (!v167)
      {
        goto LABEL_42;
      }

      __break(1u);
    }

    else if (!v41)
    {
      v42 = BYTE6(v37);
      goto LABEL_42;
    }

    LODWORD(v42) = HIDWORD(v36) - v36;
    if (__OFSUB__(HIDWORD(v36), v36))
    {
      __break(1u);
      return MEMORY[0x28212BEF0](v39, v40);
    }

    v42 = v42;
LABEL_42:
    *(v0 + 272) = v42;
    v168 = sub_27237862C();
    MEMORY[0x2743C4AD0](v168);

    MEMORY[0x2743C4AD0](0x736574796220, 0xE600000000000000);
    v169 = v223[0];
    v170 = v223[1];
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 32) = v169;
    *(v38 + 40) = v170;
    sub_27237872C();

    sub_2721F0560(v36, v37);
    sub_27237740C();
    v171 = sub_27237747C();
    *(v0 + 704) = v171;
    v172 = *(MEMORY[0x277CDCC08] + 4);
    v173 = swift_task_alloc();
    *(v0 + 712) = v173;
    v40 = sub_2721F065C(&qword_280882758, &qword_272381BA0);
    *v173 = v0;
    v173[1] = sub_2722A6F9C;
    v39 = v171;

    return MEMORY[0x28212BEF0](v39, v40);
  }

  v43 = *(v0 + 648);
  v44 = *(v0 + 552);
  v45 = *(v0 + 544);
  v46 = *(v44 + 56);
  *(v0 + 720) = v46;
  *(v0 + 728) = (v44 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v220 = v46;
  v46(v43, 1, 1, v45);
  if (v35[1])
  {
    v47 = *(v0 + 648);
    v48 = *(v0 + 640);
    v49 = *(v0 + 544);
    v50 = **(v0 + 312);
    sub_272376CAC();
    v220(v48, 0, 1, v49);
    sub_2722AD1C0(v48, v47);
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    sub_2721F08DC(*(v0 + 456), qword_28088CC08);
    v51 = sub_27237725C();
    v52 = sub_272377E7C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = *(v0 + 648);
      v54 = *(v0 + 552);
      v55 = *(v0 + 544);
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v223[0] = v57;
      *v56 = 136315138;
      swift_beginAccess();
      v58 = (*(v54 + 48))(v53, 1, v55);
      v59 = 0;
      v60 = 0;
      if (!v58)
      {
        v61 = *(v0 + 584);
        v62 = *(v0 + 552);
        v63 = *(v0 + 544);
        (*(v62 + 16))(v61, *(v0 + 648), v63);
        v59 = sub_272376C9C();
        v60 = v64;
        (*(v62 + 8))(v61, v63);
      }

      *(v0 + 256) = v59;
      *(v0 + 264) = v60;
      sub_2721F065C(&qword_280881828, &qword_27237BF40);
      v65 = sub_27237789C();
      v67 = sub_2721FFD04(v65, v66, v223);

      *(v56 + 4) = v67;
      _os_log_impl(&dword_2721E4000, v51, v52, "\tCustom LM: %s", v56, 0xCu);
      sub_2722039C8(v57);
      MEMORY[0x2743C69C0](v57, -1, -1);
      MEMORY[0x2743C69C0](v56, -1, -1);
    }
  }

  v208 = *(v0 + 760);
  v68 = *(v0 + 632);
  v69 = *(v0 + 536);
  v71 = *(v0 + 504);
  v70 = *(v0 + 512);
  v72 = *(v0 + 488);
  v73 = *(v0 + 496);
  v74 = *(v0 + 472);
  v75 = *(v0 + 480);
  v76 = *(v0 + 464);
  v212 = *(v0 + 456);
  v216 = *(v0 + 624);
  sub_272377C1C();
  (*(v73 + 104))(v71, *MEMORY[0x277CDCC20], v72);
  v77 = sub_2723774AC();
  (*(*(v77 - 8) + 56))(v75, 1, 1, v77);
  sub_2723774CC();
  LOBYTE(v223[0]) = v208;
  VASpeechBiasOptions.overrideModelURL.getter(v68);
  v78 = sub_2722C389C();
  (*(v76 + 16))(v74, v78, v212);
  sub_2721F07F4(v68, v216, &qword_280881A50, &unk_27237CA30);
  v79 = sub_27237725C();
  v80 = sub_272377E7C();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = *(v0 + 640);
    v82 = *(v0 + 624);
    v83 = *(v0 + 592);
    v209 = *(v0 + 464);
    v213 = *(v0 + 456);
    v217 = *(v0 + 472);
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v223[0] = v85;
    *v84 = 136315138;
    sub_2721F07F4(v82, v81, &qword_280881A50, &unk_27237CA30);
    v86 = sub_27237789C();
    v88 = v87;
    sub_2721F40F0(v82, &qword_280881A50, &unk_27237CA30);
    v89 = sub_2721FFD04(v86, v88, v223);

    *(v84 + 4) = v89;
    _os_log_impl(&dword_2721E4000, v79, v80, "Using custom model URL: %s", v84, 0xCu);
    sub_2722039C8(v85);
    MEMORY[0x2743C69C0](v85, -1, -1);
    MEMORY[0x2743C69C0](v84, -1, -1);

    (*(v209 + 8))(v217, v213);
  }

  else
  {
    v90 = *(v0 + 624);
    v92 = *(v0 + 464);
    v91 = *(v0 + 472);
    v93 = *(v0 + 456);

    sub_2721F40F0(v90, &qword_280881A50, &unk_27237CA30);
    (*(v92 + 8))(v91, v93);
  }

  v94 = *(v0 + 648);
  v95 = *(v0 + 616);
  v96 = *(v0 + 552);
  v97 = *(v0 + 544);
  swift_beginAccess();
  sub_2721F07F4(v94, v95, &qword_280881A50, &unk_27237CA30);
  v98 = *(v96 + 48);
  v99 = v98(v95, 1, v97);
  v100 = *(v0 + 616);
  if (v99 == 1)
  {
    sub_2721F40F0(*(v0 + 616), &qword_280881A50, &unk_27237CA30);
    v101 = *(v0 + 728);
    v102 = *(v0 + 632);
    v103 = *(v0 + 600);
    v105 = *(v0 + 440);
    v104 = *(v0 + 448);
    v106 = *(v0 + 424);
    v191 = *(v0 + 432);
    v107 = *(v0 + 416);
    v189 = *(v0 + 408);
    v218 = *(v0 + 392);
    v221 = *(v0 + 400);
    v214 = *(v0 + 376);
    v206 = *(v0 + 368);
    v210 = *(v0 + 360);
    v198 = *(v0 + 352);
    v194 = *(v0 + 344);
    v196 = *(v0 + 336);
    v202 = *(v0 + 384);
    v204 = *(v0 + 328);
    v108 = *(v0 + 304);
    v109 = *(v0 + 288);
    v200 = *(v0 + 280);
    (*(v0 + 720))(*(v0 + 640), 1, 1, *(v0 + 544));
    sub_2721F07F4(v102, v103, &qword_280881A50, &unk_27237CA30);
    sub_2722AC7D8(v109);
    sub_27237730C();
    (*(v107 + 16))(v106, v108, v189);
    v110 = sub_27237768C();
    v111 = *(v110 - 8);
    (*(v111 + 16))(v221, v109, v110);
    (*(v111 + 56))(v221, 0, 1, v110);
    (*(v105 + 16))(v218, v104, v191);
    (*(v105 + 56))(v218, 0, 1, v191);
    sub_2721F065C(&qword_280881FF0, &unk_27237E430);
    v112 = sub_27237733C();
    v113 = *(v112 - 8);
    v114 = *(v113 + 72);
    v115 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v116 = swift_allocObject();
    *(v116 + 16) = xmmword_27237AFB0;
    v117 = v116 + v115;
    v118 = *(v113 + 104);
    v118(v117, *MEMORY[0x277CDCAB0], v112);
    v118(v117 + v114, *MEMORY[0x277CDCAB8], v112);
    v118(v117 + 2 * v114, *MEMORY[0x277CDCAA8], v112);
    sub_272253888(v116);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280882748, &unk_272381B80);
    v119 = sub_27237764C();
    v120 = *(v119 - 8);
    v121 = *(v120 + 72);
    v122 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_27237AF90;
    v124 = v123 + v122;
    v125 = *(v120 + 104);
    v125(v124, *MEMORY[0x277CDCDA8], v119);
    v125(v124 + v121, *MEMORY[0x277CDCDA0], v119);
    sub_2722ACB00(v123);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280881FE8, &qword_27237E428);
    v126 = sub_27237737C();
    v127 = *(v126 - 8);
    v128 = *(v127 + 72);
    v129 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_27237AFB0;
    v131 = v130 + v129;
    v132 = *(v127 + 104);
    v132(v131, *MEMORY[0x277CDCB08], v126);
    v132(v131 + v128, *MEMORY[0x277CDCB10], v126);
    v132(v131 + 2 * v128, *MEMORY[0x277CDCB28], v126);
    sub_2722ACE20(v130);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v133 = sub_2723773AC();
    v134 = *(v133 + 48);
    v135 = *(v133 + 52);
    swift_allocObject();
    v222 = sub_27237739C();
    sub_2723773DC();
    (*(v194 + 104))(v198, *MEMORY[0x277D85778], v196);
    sub_272377C4C();
    (*(v194 + 8))(v198, v196);
    sub_2723772DC();
    sub_2723772EC();
    (*(v206 + 16))(v214, v202, v210);
    if (qword_28088CC20 != -1)
    {
      swift_once();
    }

    v182 = *(v0 + 648);
    v183 = *(v0 + 672);
    v184 = *(v0 + 640);
    v179 = *(v0 + 680);
    v180 = *(v0 + 632);
    v185 = *(v0 + 624);
    v186 = *(v0 + 616);
    v187 = *(v0 + 608);
    v188 = *(v0 + 600);
    v190 = *(v0 + 584);
    v192 = *(v0 + 576);
    v193 = *(v0 + 568);
    v195 = *(v0 + 560);
    v136 = *(v0 + 536);
    v137 = *(v0 + 528);
    v138 = *(v0 + 520);
    v197 = *(v0 + 512);
    v199 = *(v0 + 504);
    v201 = *(v0 + 480);
    v203 = *(v0 + 472);
    v139 = *(v0 + 440);
    v177 = *(v0 + 432);
    v178 = *(v0 + 448);
    v205 = *(v0 + 424);
    v207 = *(v0 + 400);
    v211 = *(v0 + 392);
    v176 = *(v0 + 384);
    v219 = *(v0 + 376);
    v174 = qword_28088CC28;
    v140 = *(v0 + 368);
    v175 = *(v0 + 360);
    v215 = *(v0 + 352);
    v141 = *(v0 + 320);
    v181 = *(v0 + 328);
    sub_2721F065C(&qword_280881FF8, &qword_272381B90);
    v142 = swift_allocObject();
    *(v142 + 16) = xmmword_27237AF80;
    v143 = sub_2722AD74C(&qword_280882000, MEMORY[0x277CDCB98]);
    *(v142 + 32) = v222;
    *(v142 + 40) = v143;
    (*(v137 + 16))(v141, v136, v138);
    (*(v137 + 56))(v141, 0, 1, v138);
    sub_2722AD144();
    v144 = v174;

    v145 = sub_2723772CC();
    (*(v140 + 8))(v176, v175);
    (*(v139 + 8))(v178, v177);
    sub_2721F40F0(v180, &qword_280881A50, &unk_27237CA30);
    (*(v137 + 8))(v136, v138);
    sub_2721F40F0(v182, &qword_280881A50, &unk_27237CA30);

    v146 = *(v0 + 8);

    return v146(v145, v222);
  }

  else
  {
    v148 = *(v0 + 608);
    v149 = *(v0 + 568);
    v150 = *(v0 + 560);
    v151 = *(v0 + 552);
    v152 = *(v0 + 544);
    v153 = *(v0 + 312);
    (*(v151 + 32))(*(v0 + 576), *(v0 + 616), v152);
    sub_272376CAC();
    sub_272376CAC();
    (*(v151 + 16))(v148, v150, v152);
    v220(v148, 0, 1, v152);
    v154 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v155 = sub_272376CCC();
    v156 = 0;
    if (v98(v148, 1, v152) != 1)
    {
      v157 = *(v0 + 608);
      v158 = *(v0 + 552);
      v159 = *(v0 + 544);
      v156 = sub_272376CCC();
      (*(v158 + 8))(v157, v159);
    }

    v160 = *(v0 + 576);
    v161 = [objc_allocWithZone(MEMORY[0x277CDCED8]) initWithLanguageModel:v155 vocabulary:v156 weight:v154];
    *(v0 + 736) = v161;

    v162 = objc_opt_self();
    v163 = sub_272376CCC();
    *(v0 + 744) = v163;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2722A82C4;
    v164 = swift_continuation_init();
    *(v0 + 136) = sub_2721F065C(&qword_280882750, &qword_272381B98);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2722A9100;
    *(v0 + 104) = &unk_28818C368;
    *(v0 + 112) = v164;
    [v162 prepareCustomLanguageModelForUrl:v163 configuration:v161 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2722A6F9C()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2722A70B4, 0, 0);
}

uint64_t sub_2722A70B4()
{
  v174 = v0;
  sub_2721F05B4(*(v0 + 688), *(v0 + 696));
  v1 = *(v0 + 648);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 312);
  v5 = *(v2 + 56);
  *(v0 + 720) = v5;
  *(v0 + 728) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v170 = v5;
  v5(v1, 1, 1, v3);
  if (*(v4 + 8))
  {
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 544);
    v9 = **(v0 + 312);
    sub_272376CAC();
    v170(v7, 0, 1, v8);
    sub_2722AD1C0(v7, v6);
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    sub_2721F08DC(*(v0 + 456), qword_28088CC08);
    v10 = sub_27237725C();
    v11 = sub_272377E7C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 648);
      v13 = *(v0 + 552);
      v14 = *(v0 + 544);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v173[0] = v16;
      *v15 = 136315138;
      swift_beginAccess();
      v17 = (*(v13 + 48))(v12, 1, v14);
      v18 = 0;
      v19 = 0;
      if (!v17)
      {
        v20 = *(v0 + 584);
        v21 = *(v0 + 552);
        v22 = *(v0 + 544);
        (*(v21 + 16))(v20, *(v0 + 648), v22);
        v18 = sub_272376C9C();
        v19 = v23;
        (*(v21 + 8))(v20, v22);
      }

      *(v0 + 256) = v18;
      *(v0 + 264) = v19;
      sub_2721F065C(&qword_280881828, &qword_27237BF40);
      v24 = sub_27237789C();
      v26 = sub_2721FFD04(v24, v25, v173);

      *(v15 + 4) = v26;
      _os_log_impl(&dword_2721E4000, v10, v11, "\tCustom LM: %s", v15, 0xCu);
      sub_2722039C8(v16);
      MEMORY[0x2743C69C0](v16, -1, -1);
      MEMORY[0x2743C69C0](v15, -1, -1);
    }
  }

  v158 = *(v0 + 760);
  v27 = *(v0 + 632);
  v28 = *(v0 + 536);
  v30 = *(v0 + 504);
  v29 = *(v0 + 512);
  v31 = *(v0 + 488);
  v32 = *(v0 + 496);
  v33 = *(v0 + 472);
  v34 = *(v0 + 480);
  v35 = *(v0 + 464);
  v162 = *(v0 + 456);
  v166 = *(v0 + 624);
  sub_272377C1C();
  (*(v32 + 104))(v30, *MEMORY[0x277CDCC20], v31);
  v36 = sub_2723774AC();
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  sub_2723774CC();
  LOBYTE(v173[0]) = v158;
  VASpeechBiasOptions.overrideModelURL.getter(v27);
  v37 = sub_2722C389C();
  (*(v35 + 16))(v33, v37, v162);
  sub_2721F07F4(v27, v166, &qword_280881A50, &unk_27237CA30);
  v38 = sub_27237725C();
  v39 = sub_272377E7C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = *(v0 + 640);
    v41 = *(v0 + 624);
    v42 = *(v0 + 592);
    v159 = *(v0 + 464);
    v163 = *(v0 + 456);
    v167 = *(v0 + 472);
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v173[0] = v44;
    *v43 = 136315138;
    sub_2721F07F4(v41, v40, &qword_280881A50, &unk_27237CA30);
    v45 = sub_27237789C();
    v47 = v46;
    sub_2721F40F0(v41, &qword_280881A50, &unk_27237CA30);
    v48 = sub_2721FFD04(v45, v47, v173);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_2721E4000, v38, v39, "Using custom model URL: %s", v43, 0xCu);
    sub_2722039C8(v44);
    MEMORY[0x2743C69C0](v44, -1, -1);
    MEMORY[0x2743C69C0](v43, -1, -1);

    (*(v159 + 8))(v167, v163);
  }

  else
  {
    v49 = *(v0 + 624);
    v51 = *(v0 + 464);
    v50 = *(v0 + 472);
    v52 = *(v0 + 456);

    sub_2721F40F0(v49, &qword_280881A50, &unk_27237CA30);
    (*(v51 + 8))(v50, v52);
  }

  v53 = *(v0 + 648);
  v54 = *(v0 + 616);
  v55 = *(v0 + 552);
  v56 = *(v0 + 544);
  swift_beginAccess();
  sub_2721F07F4(v53, v54, &qword_280881A50, &unk_27237CA30);
  v57 = *(v55 + 48);
  v58 = v57(v54, 1, v56);
  v59 = *(v0 + 616);
  if (v58 == 1)
  {
    sub_2721F40F0(*(v0 + 616), &qword_280881A50, &unk_27237CA30);
    v60 = *(v0 + 728);
    v61 = *(v0 + 632);
    v62 = *(v0 + 600);
    v64 = *(v0 + 440);
    v63 = *(v0 + 448);
    v65 = *(v0 + 424);
    v141 = *(v0 + 432);
    v66 = *(v0 + 416);
    v139 = *(v0 + 408);
    v168 = *(v0 + 392);
    v171 = *(v0 + 400);
    v164 = *(v0 + 376);
    v156 = *(v0 + 368);
    v160 = *(v0 + 360);
    v148 = *(v0 + 352);
    v144 = *(v0 + 344);
    v146 = *(v0 + 336);
    v152 = *(v0 + 384);
    v154 = *(v0 + 328);
    v67 = *(v0 + 304);
    v68 = *(v0 + 288);
    v150 = *(v0 + 280);
    (*(v0 + 720))(*(v0 + 640), 1, 1, *(v0 + 544));
    sub_2721F07F4(v61, v62, &qword_280881A50, &unk_27237CA30);
    sub_2722AC7D8(v68);
    sub_27237730C();
    (*(v66 + 16))(v65, v67, v139);
    v69 = sub_27237768C();
    v70 = *(v69 - 8);
    (*(v70 + 16))(v171, v68, v69);
    (*(v70 + 56))(v171, 0, 1, v69);
    (*(v64 + 16))(v168, v63, v141);
    (*(v64 + 56))(v168, 0, 1, v141);
    sub_2721F065C(&qword_280881FF0, &unk_27237E430);
    v71 = sub_27237733C();
    v72 = *(v71 - 8);
    v73 = *(v72 + 72);
    v74 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_27237AFB0;
    v76 = v75 + v74;
    v77 = *(v72 + 104);
    v77(v76, *MEMORY[0x277CDCAB0], v71);
    v77(v76 + v73, *MEMORY[0x277CDCAB8], v71);
    v77(v76 + 2 * v73, *MEMORY[0x277CDCAA8], v71);
    sub_272253888(v75);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280882748, &unk_272381B80);
    v78 = sub_27237764C();
    v79 = *(v78 - 8);
    v80 = *(v79 + 72);
    v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_27237AF90;
    v83 = v82 + v81;
    v84 = *(v79 + 104);
    v84(v83, *MEMORY[0x277CDCDA8], v78);
    v84(v83 + v80, *MEMORY[0x277CDCDA0], v78);
    sub_2722ACB00(v82);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2721F065C(&qword_280881FE8, &qword_27237E428);
    v85 = sub_27237737C();
    v86 = *(v85 - 8);
    v87 = *(v86 + 72);
    v88 = (*(v86 + 80) + 32) & ~*(v86 + 80);
    v89 = swift_allocObject();
    *(v89 + 16) = xmmword_27237AFB0;
    v90 = v89 + v88;
    v91 = *(v86 + 104);
    v91(v90, *MEMORY[0x277CDCB08], v85);
    v91(v90 + v87, *MEMORY[0x277CDCB10], v85);
    v91(v90 + 2 * v87, *MEMORY[0x277CDCB28], v85);
    sub_2722ACE20(v89);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v92 = sub_2723773AC();
    v93 = *(v92 + 48);
    v94 = *(v92 + 52);
    swift_allocObject();
    v172 = sub_27237739C();
    sub_2723773DC();
    (*(v144 + 104))(v148, *MEMORY[0x277D85778], v146);
    sub_272377C4C();
    (*(v144 + 8))(v148, v146);
    sub_2723772DC();
    sub_2723772EC();
    (*(v156 + 16))(v164, v152, v160);
    if (qword_28088CC20 != -1)
    {
      swift_once();
    }

    v132 = *(v0 + 648);
    v133 = *(v0 + 672);
    v134 = *(v0 + 640);
    v129 = *(v0 + 680);
    v130 = *(v0 + 632);
    v135 = *(v0 + 624);
    v136 = *(v0 + 616);
    v137 = *(v0 + 608);
    v138 = *(v0 + 600);
    v140 = *(v0 + 584);
    v142 = *(v0 + 576);
    v143 = *(v0 + 568);
    v145 = *(v0 + 560);
    v95 = *(v0 + 536);
    v96 = *(v0 + 528);
    v97 = *(v0 + 520);
    v147 = *(v0 + 512);
    v149 = *(v0 + 504);
    v151 = *(v0 + 480);
    v153 = *(v0 + 472);
    v98 = *(v0 + 440);
    v127 = *(v0 + 432);
    v128 = *(v0 + 448);
    v155 = *(v0 + 424);
    v157 = *(v0 + 400);
    v161 = *(v0 + 392);
    v126 = *(v0 + 384);
    v169 = *(v0 + 376);
    v124 = qword_28088CC28;
    v99 = *(v0 + 368);
    v125 = *(v0 + 360);
    v165 = *(v0 + 352);
    v100 = *(v0 + 320);
    v131 = *(v0 + 328);
    sub_2721F065C(&qword_280881FF8, &qword_272381B90);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_27237AF80;
    v102 = sub_2722AD74C(&qword_280882000, MEMORY[0x277CDCB98]);
    *(v101 + 32) = v172;
    *(v101 + 40) = v102;
    (*(v96 + 16))(v100, v95, v97);
    (*(v96 + 56))(v100, 0, 1, v97);
    sub_2722AD144();
    v103 = v124;

    v104 = sub_2723772CC();
    (*(v99 + 8))(v126, v125);
    (*(v98 + 8))(v128, v127);
    sub_2721F40F0(v130, &qword_280881A50, &unk_27237CA30);
    (*(v96 + 8))(v95, v97);
    sub_2721F40F0(v132, &qword_280881A50, &unk_27237CA30);

    v105 = *(v0 + 8);

    return v105(v104, v172);
  }

  else
  {
    v107 = *(v0 + 608);
    v108 = *(v0 + 568);
    v109 = *(v0 + 560);
    v110 = *(v0 + 552);
    v111 = *(v0 + 544);
    v112 = *(v0 + 312);
    (*(v110 + 32))(*(v0 + 576), *(v0 + 616), v111);
    sub_272376CAC();
    sub_272376CAC();
    (*(v110 + 16))(v107, v109, v111);
    v170(v107, 0, 1, v111);
    v113 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v114 = sub_272376CCC();
    v115 = 0;
    if (v57(v107, 1, v111) != 1)
    {
      v116 = *(v0 + 608);
      v117 = *(v0 + 552);
      v118 = *(v0 + 544);
      v115 = sub_272376CCC();
      (*(v117 + 8))(v116, v118);
    }

    v119 = *(v0 + 576);
    v120 = [objc_allocWithZone(MEMORY[0x277CDCED8]) initWithLanguageModel:v114 vocabulary:v115 weight:v113];
    *(v0 + 736) = v120;

    v121 = objc_opt_self();
    v122 = sub_272376CCC();
    *(v0 + 744) = v122;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_2722A82C4;
    v123 = swift_continuation_init();
    *(v0 + 136) = sub_2721F065C(&qword_280882750, &qword_272381B98);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2722A9100;
    *(v0 + 104) = &unk_28818C368;
    *(v0 + 112) = v123;
    [v121 prepareCustomLanguageModelForUrl:v122 configuration:v120 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_2722A82C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 752) = v2;
  if (v2)
  {
    v3 = sub_2722A8E64;
  }

  else
  {
    v3 = sub_2722A83D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722A83D4()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 576);
  v4 = *(v0 + 568);
  v5 = *(v0 + 544);
  v6 = *(*(v0 + 552) + 8);
  v6(*(v0 + 560), v5);
  v6(v4, v5);
  v6(v3, v5);

  v7 = *(v0 + 728);
  v8 = *(v0 + 632);
  v9 = *(v0 + 600);
  v10 = *(v0 + 440);
  v67 = *(v0 + 448);
  v11 = *(v0 + 424);
  v71 = *(v0 + 432);
  v12 = *(v0 + 416);
  v69 = *(v0 + 408);
  v93 = *(v0 + 392);
  v95 = *(v0 + 400);
  v90 = *(v0 + 376);
  v86 = *(v0 + 368);
  v88 = *(v0 + 360);
  v78 = *(v0 + 352);
  v74 = *(v0 + 344);
  v76 = *(v0 + 336);
  v82 = *(v0 + 384);
  v84 = *(v0 + 328);
  v65 = *(v0 + 304);
  v13 = *(v0 + 288);
  v80 = *(v0 + 280);
  (*(v0 + 720))(*(v0 + 640), 1, 1, *(v0 + 544));
  sub_2721F07F4(v8, v9, &qword_280881A50, &unk_27237CA30);
  sub_2722AC7D8(v13);
  v92 = v2;
  sub_27237730C();
  (*(v12 + 16))(v11, v65, v69);
  v14 = sub_27237768C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v95, v13, v14);
  (*(v15 + 56))(v95, 0, 1, v14);
  (*(v10 + 16))(v93, v67, v71);
  (*(v10 + 56))(v93, 0, 1, v71);
  sub_2721F065C(&qword_280881FF0, &unk_27237E430);
  v16 = sub_27237733C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_27237AFB0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CDCAB0], v16);
  v22(v21 + v18, *MEMORY[0x277CDCAB8], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277CDCAA8], v16);
  sub_272253888(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2721F065C(&qword_280882748, &unk_272381B80);
  v23 = sub_27237764C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_27237AF90;
  v28 = v27 + v26;
  v29 = *(v24 + 104);
  v29(v28, *MEMORY[0x277CDCDA8], v23);
  v29(v28 + v25, *MEMORY[0x277CDCDA0], v23);
  sub_2722ACB00(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2721F065C(&qword_280881FE8, &qword_27237E428);
  v30 = sub_27237737C();
  v31 = *(v30 - 8);
  v32 = *(v31 + 72);
  v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_27237AFB0;
  v35 = v34 + v33;
  v36 = *(v31 + 104);
  v36(v35, *MEMORY[0x277CDCB08], v30);
  v36(v35 + v32, *MEMORY[0x277CDCB10], v30);
  v36(v35 + 2 * v32, *MEMORY[0x277CDCB28], v30);
  sub_2722ACE20(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v37 = sub_2723773AC();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  v96 = sub_27237739C();
  sub_2723773DC();
  (*(v74 + 104))(v78, *MEMORY[0x277D85778], v76);
  sub_272377C4C();
  (*(v74 + 8))(v78, v76);
  sub_2723772DC();
  sub_2723772EC();
  (*(v86 + 16))(v90, v82, v88);
  if (qword_28088CC20 != -1)
  {
    swift_once();
  }

  v60 = *(v0 + 648);
  v61 = *(v0 + 672);
  v57 = *(v0 + 680);
  v58 = *(v0 + 632);
  v62 = *(v0 + 640);
  v63 = *(v0 + 624);
  v64 = *(v0 + 616);
  v66 = *(v0 + 608);
  v68 = *(v0 + 600);
  v70 = *(v0 + 584);
  v72 = *(v0 + 576);
  v73 = *(v0 + 568);
  v75 = *(v0 + 560);
  v40 = *(v0 + 536);
  v41 = *(v0 + 528);
  v42 = *(v0 + 520);
  v77 = *(v0 + 512);
  v79 = *(v0 + 504);
  v81 = *(v0 + 480);
  v83 = *(v0 + 472);
  v43 = *(v0 + 440);
  v55 = *(v0 + 432);
  v56 = *(v0 + 448);
  v85 = *(v0 + 424);
  v87 = *(v0 + 400);
  v89 = *(v0 + 392);
  v54 = *(v0 + 384);
  v94 = *(v0 + 376);
  v52 = qword_28088CC28;
  v44 = *(v0 + 368);
  v53 = *(v0 + 360);
  v91 = *(v0 + 352);
  v45 = *(v0 + 320);
  v59 = *(v0 + 328);
  sub_2721F065C(&qword_280881FF8, &qword_272381B90);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_27237AF80;
  v47 = sub_2722AD74C(&qword_280882000, MEMORY[0x277CDCB98]);
  *(v46 + 32) = v96;
  *(v46 + 40) = v47;
  (*(v41 + 16))(v45, v40, v42);
  (*(v41 + 56))(v45, 0, 1, v42);
  sub_2722AD144();
  v48 = v52;

  v49 = sub_2723772CC();

  (*(v44 + 8))(v54, v53);
  (*(v43 + 8))(v56, v55);
  sub_2721F40F0(v58, &qword_280881A50, &unk_27237CA30);
  (*(v41 + 8))(v40, v42);
  sub_2721F40F0(v60, &qword_280881A50, &unk_27237CA30);

  v50 = *(v0 + 8);

  return v50(v49, v96);
}

uint64_t sub_2722A8E64()
{
  v1 = v0[94];
  v2 = v0[92];
  v3 = v0[85];
  v18 = v0[93];
  v19 = v0[84];
  v16 = v0[79];
  v17 = v0[81];
  v20 = v0[80];
  v21 = v0[78];
  v22 = v0[77];
  v23 = v0[76];
  v24 = v0[75];
  v25 = v0[73];
  v4 = v0[72];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[69];
  v8 = v0[68];
  v9 = v0[66];
  v14 = v0[65];
  v15 = v0[67];
  v26 = v0[64];
  v27 = v0[63];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[56];
  v31 = v0[53];
  v32 = v0[50];
  v33 = v0[49];
  v34 = v0[48];
  v35 = v0[47];
  v36 = v0[44];
  v37 = v0[41];
  v38 = v0[40];
  swift_willThrow();

  v10 = *(v7 + 8);
  v10(v6, v8);
  v10(v5, v8);
  v10(v4, v8);
  sub_2721F40F0(v16, &qword_280881A50, &unk_27237CA30);
  (*(v9 + 8))(v15, v14);

  sub_2721F40F0(v17, &qword_280881A50, &unk_27237CA30);

  v11 = v0[1];
  v12 = v0[94];

  return v11();
}

uint64_t sub_2722A9100(uint64_t a1, void *a2)
{
  v3 = sub_27220300C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_2721F065C(&qword_280881A38, &unk_27237CA20);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_2722A91AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[33] = a6;
  v7[34] = a7;
  v7[31] = a4;
  v7[32] = a5;
  v7[30] = a1;
  v8 = sub_272376C2C();
  v7[35] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[36] = swift_task_alloc();
  v10 = sub_272376C3C();
  v7[37] = v10;
  v11 = *(v10 - 8);
  v7[38] = v11;
  v12 = *(v11 + 64) + 15;
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v13 = sub_2723773FC();
  v7[42] = v13;
  v14 = *(v13 - 8);
  v7[43] = v14;
  v15 = *(v14 + 64) + 15;
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v16 = sub_27237736C();
  v7[46] = v16;
  v17 = *(v16 - 8);
  v7[47] = v17;
  v18 = *(v17 + 64) + 15;
  v7[48] = swift_task_alloc();
  v19 = *(*(sub_2721F065C(&qword_280882018, &unk_27237EBF0) - 8) + 64) + 15;
  v7[49] = swift_task_alloc();
  v20 = sub_2721F065C(&qword_280882020, &unk_27237E460);
  v7[50] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v7[51] = swift_task_alloc();
  v22 = sub_2721F065C(&qword_280882028, &qword_27237EC00);
  v7[52] = v22;
  v23 = *(v22 - 8);
  v7[53] = v23;
  v24 = *(v23 + 64) + 15;
  v7[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722A945C, 0, 0);
}

uint64_t sub_2722A945C()
{
  v1 = *(v0 + 432);
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  sub_27237738C();
  *(v0 + 440) = swift_getOpaqueTypeConformance2();
  sub_272377D0C();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = MEMORY[0x277CDCBA0];
  *(v0 + 220) = *MEMORY[0x277CDCBB8];
  *(v0 + 456) = *v6;
  v7 = *(v0 + 440);
  v8 = *(v0 + 416);
  v9 = *(v0 + 400);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = *(MEMORY[0x277D856D8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 448) = v12;
  *v12 = v0;
  v12[1] = sub_2722A960C;
  v13 = *(v0 + 432);
  v14 = *(v0 + 416);
  v15 = *(v0 + 392);

  return MEMORY[0x282200310](v15, 0, 0, v0 + 224, v14, AssociatedConformanceWitness);
}

uint64_t sub_2722A960C()
{
  v2 = *(*v1 + 448);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_2722AA48C;
  }

  else
  {
    v3 = sub_2722A971C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722A971C()
{
  v163 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
    if (qword_28088CC00 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 272);
    v5 = *(v0 + 256);
    v6 = sub_27237728C();
    sub_2721F08DC(v6, qword_28088CC08);

    v7 = sub_27237725C();
    v8 = sub_272377E7C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 256);
      v10 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      v162 = v156;
      *v10 = 136315650;
      swift_beginAccess();
      v11 = *(v9 + 24);
      v12 = *(v0 + 256);
      if (v11)
      {
        v13 = *(v12 + 16);
        v14 = v11;
      }

      else
      {
        v13 = 0x3E656E6F6E3CLL;
        v14 = 0xE600000000000000;
      }

      v68 = *(v0 + 272);
      v153 = *(v0 + 264);

      v69 = sub_2721FFD04(v13, v14, &v162);

      *(v10 + 4) = v69;
      *(v10 + 12) = 2080;
      swift_beginAccess();
      v70 = *(v12 + 32);

      v72 = MEMORY[0x2743C4C60](v71, MEMORY[0x277D837D0]);
      v74 = v73;

      v75 = sub_2721FFD04(v72, v74, &v162);

      *(v10 + 14) = v75;
      *(v10 + 22) = 2080;
      if (v68)
      {
        v76 = v153;
      }

      else
      {
        v76 = 0x6F726620746F6E3CLL;
      }

      if (v68)
      {
        v77 = v4;
      }

      else
      {
        v77 = 0xEF3E656C6966206DLL;
      }

      v78 = sub_2721FFD04(v76, v77, &v162);

      *(v10 + 24) = v78;
      _os_log_impl(&dword_2721E4000, v7, v8, "\tchecker results: %s, nBest: %s: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743C69C0](v156, -1, -1);
      MEMORY[0x2743C69C0](v10, -1, -1);
    }

    v79 = *(v0 + 432);
    v80 = *(v0 + 408);
    v82 = *(v0 + 384);
    v81 = *(v0 + 392);
    v84 = *(v0 + 352);
    v83 = *(v0 + 360);
    v145 = *(v0 + 328);
    v149 = *(v0 + 320);
    v154 = *(v0 + 312);
    v160 = *(v0 + 288);
    v85 = *(v0 + 256);
    v86 = *(v0 + 240);
    swift_beginAccess();
    v87 = *(v85 + 24);
    v89 = *(v85 + 32);
    v88 = *(v85 + 40);
    v90 = *(v85 + 48);
    *v86 = *(v85 + 16);
    *(v86 + 8) = v87;
    *(v86 + 16) = v89;
    *(v86 + 24) = v88;
    *(v86 + 32) = v90;

    v91 = *(v0 + 8);

    return v91();
  }

  v157 = *(v0 + 456);
  v15 = *(v0 + 220);
  v17 = *(v0 + 352);
  v16 = *(v0 + 360);
  v18 = *(v0 + 336);
  v19 = *(v0 + 344);
  (*(v3 + 32))(*(v0 + 384), v1, v2);
  sub_27237734C();
  v20 = *(v19 + 104);
  v20(v17, v15, v18);
  v21 = sub_2723773EC();
  v23 = *(v19 + 8);
  v22 = v19 + 8;
  v23(v17, v18);
  v23(v16, v18);
  sub_27237734C();
  v20(v17, v157, v18);
  v24 = sub_2723773EC();
  v23(v17, v18);
  v25 = (v23)(v16, v18);
  if (v21 & 1) != 0 || (v24)
  {
    v26 = *(v0 + 384);
    v27 = *(MEMORY[0x2743C44B0](v25) + 16);

    if (v27)
    {
      v151 = v24;
      v28 = *(v0 + 384);
      v29 = MEMORY[0x2743C44B0](v25);
      v30 = *(v29 + 16);
      if (v30)
      {
        v147 = v21;
        v31 = *(v0 + 304);
        v32 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
        v158 = *(v31 + 72);
        v33 = *(v31 + 16);
        v34 = MEMORY[0x277D84F90];
        do
        {
          v35 = *(v0 + 328);
          v37 = *(v0 + 296);
          v36 = *(v0 + 304);
          v38 = *(v0 + 280);
          v39 = *(v0 + 288);
          v33(v35, v32, v37);
          sub_272376C1C();
          (*(v36 + 8))(v35, v37);
          sub_2722AD74C(&qword_280882030, MEMORY[0x277CC8B30]);
          v40 = sub_272377A3C();
          v42 = v41;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2721FFBF8(0, *(v34 + 2) + 1, 1, v34);
          }

          v44 = *(v34 + 2);
          v43 = *(v34 + 3);
          if (v44 >= v43 >> 1)
          {
            v34 = sub_2721FFBF8((v43 > 1), v44 + 1, 1, v34);
          }

          *(v34 + 2) = v44 + 1;
          v45 = &v34[16 * v44];
          *(v45 + 4) = v40;
          *(v45 + 5) = v42;
          v32 += v158;
          --v30;
        }

        while (v30);

        v21 = v147;
      }

      else
      {

        v34 = MEMORY[0x277D84F90];
      }

      v93 = *(v0 + 384);
      v94 = *(v0 + 256);
      v95 = *(v94 + 32);
      *(v94 + 32) = v34;

      v97 = MEMORY[0x2743C44B0](v96);
      if (*(v97 + 16))
      {
        v99 = *(v0 + 280);
        v98 = *(v0 + 288);
        v100 = *(v0 + 256);
        (*(*(v0 + 304) + 16))(*(v0 + 320), v97 + ((*(*(v0 + 304) + 80) + 32) & ~*(*(v0 + 304) + 80)), *(v0 + 296));

        sub_272376C1C();
        sub_2722AD74C(&qword_280882030, MEMORY[0x277CC8B30]);
        v101 = sub_272377A3C();
        v102 = *(v100 + 24);
        *(v100 + 16) = v101;
        *(v100 + 24) = v103;

        sub_272376C0C();
        sub_2722AD74C(&qword_280882788, MEMORY[0x277CDC970]);
        sub_272376C4C();
        if ((*(v0 + 216) & 1) == 0)
        {
          v104 = *(v0 + 256);
          *(v104 + 40) = *(v0 + 208);
          *(v104 + 48) = 0;
        }

        if (qword_28088CC00 == -1)
        {
          goto LABEL_41;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_41:
      v105 = *(v0 + 256);
      v106 = sub_27237728C();
      sub_2721F08DC(v106, qword_28088CC08);

      v107 = sub_27237725C();
      v108 = sub_272377E8C();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = *(v0 + 256);
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        *(v0 + 232) = v111;
        *v110 = 136315906;
        if (v21)
        {
          v112 = 0x6C616E6946;
        }

        else
        {
          v112 = 0;
        }

        if (v21)
        {
          v113 = 0xE500000000000000;
        }

        else
        {
          v113 = 0xE000000000000000;
        }

        v114 = sub_2721FFD04(v112, v113, (v0 + 232));

        *(v110 + 4) = v114;
        *(v110 + 12) = 2080;
        if (v151)
        {
          v115 = 0x7265546C616E6946;
        }

        else
        {
          v115 = 0;
        }

        if (v151)
        {
          v116 = 0xED00006C616E696DLL;
        }

        else
        {
          v116 = 0xE000000000000000;
        }

        v117 = sub_2721FFD04(v115, v116, (v0 + 232));

        *(v110 + 14) = v117;
        *(v110 + 22) = 2080;
        v118 = *(v0 + 256);
        if (*(v109 + 24))
        {
          v119 = *(v118 + 16);
          v120 = *(v109 + 24);
        }

        else
        {
          v119 = 0x3E656E6F6E3CLL;
          v120 = 0xE600000000000000;
        }

        v127 = *(v0 + 376);
        v155 = *(v0 + 368);
        v161 = *(v0 + 384);
        v128 = *(v0 + 304);
        v146 = *(v0 + 296);
        v150 = *(v0 + 320);

        v129 = sub_2721FFD04(v119, v120, (v0 + 232));

        *(v110 + 24) = v129;
        *(v110 + 32) = 2080;
        v130 = *(v118 + 32);

        v132 = MEMORY[0x2743C4C60](v131, MEMORY[0x277D837D0]);
        v134 = v133;

        v135 = sub_2721FFD04(v132, v134, (v0 + 232));

        *(v110 + 34) = v135;
        _os_log_impl(&dword_2721E4000, v107, v108, "[%s%s] %s, n-best [%s]", v110, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2743C69C0](v111, -1, -1);
        MEMORY[0x2743C69C0](v110, -1, -1);

        (*(v128 + 8))(v150, v146);
        (*(v127 + 8))(v161, v155);
      }

      else
      {
        v122 = *(v0 + 376);
        v121 = *(v0 + 384);
        v123 = *(v0 + 368);
        v124 = *(v0 + 320);
        v125 = *(v0 + 296);
        v126 = *(v0 + 304);

        (*(v126 + 8))(v124, v125);
        (*(v122 + 8))(v121, v123);
      }

      goto LABEL_59;
    }
  }

  v46 = *(v0 + 384);
  v47 = *(MEMORY[0x2743C44B0](v25) + 16);

  if (v47)
  {
    v49 = MEMORY[0x2743C44B0](v48);
    if (*(v49 + 16))
    {
      v50 = *(v0 + 288);
      v51 = *(v0 + 280);
      (*(*(v0 + 304) + 16))(*(v0 + 312), v49 + ((*(*(v0 + 304) + 80) + 32) & ~*(*(v0 + 304) + 80)), *(v0 + 296));

      sub_272376C1C();
      sub_2722AD74C(&qword_280882030, MEMORY[0x277CC8B30]);
      v22 = sub_272377A3C();
      v20 = v52;
      if (qword_28088CC00 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_21:
    v53 = sub_27237728C();
    sub_2721F08DC(v53, qword_28088CC08);

    v54 = sub_27237725C();
    v55 = sub_272377E7C();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 376);
    v58 = *(v0 + 384);
    v59 = *(v0 + 368);
    v60 = *(v0 + 304);
    v61 = *(v0 + 312);
    v159 = *(v0 + 296);
    if (v56)
    {
      v152 = *(v0 + 312);
      v62 = v22;
      v63 = swift_slowAlloc();
      v148 = v59;
      v64 = swift_slowAlloc();
      v162 = v64;
      *v63 = 136315138;
      v65 = sub_2721FFD04(v62, v20, &v162);
      v66 = v58;
      v67 = v65;

      *(v63 + 4) = v67;
      _os_log_impl(&dword_2721E4000, v54, v55, "[Partial] %s", v63, 0xCu);
      sub_2722039C8(v64);
      MEMORY[0x2743C69C0](v64, -1, -1);
      MEMORY[0x2743C69C0](v63, -1, -1);

      (*(v60 + 8))(v152, v159);
      (*(v57 + 8))(v66, v148);
    }

    else
    {

      (*(v60 + 8))(v61, v159);
      (*(v57 + 8))(v58, v59);
    }

    goto LABEL_59;
  }

  (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
LABEL_59:
  v136 = *(v0 + 440);
  v137 = *(v0 + 416);
  v138 = *(v0 + 400);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v140 = *(MEMORY[0x277D856D8] + 4);
  v141 = swift_task_alloc();
  *(v0 + 448) = v141;
  *v141 = v0;
  v141[1] = sub_2722A960C;
  v142 = *(v0 + 432);
  v143 = *(v0 + 416);
  v144 = *(v0 + 392);

  return MEMORY[0x282200310](v144, 0, 0, v0 + 224, v143, AssociatedConformanceWitness);
}

uint64_t sub_2722AA48C()
{
  (*(v0[53] + 8))(v0[54], v0[52]);
  v1 = v0[28];
  if (qword_28088CC00 != -1)
  {
    swift_once();
  }

  v2 = sub_27237728C();
  sub_2721F08DC(v2, qword_28088CC08);
  v3 = v1;
  v4 = sub_27237725C();
  v5 = sub_272377E7C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2721E4000, v4, v5, "Error in second pass: %@", v6, 0xCu);
    sub_2721F40F0(v7, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v7, -1, -1);
    MEMORY[0x2743C69C0](v6, -1, -1);
  }

  v10 = v0[54];
  v11 = v0[51];
  v13 = v0[48];
  v12 = v0[49];
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[36];

  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_2722AA6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2721F07F4(a3, v24 - v10, &qword_2808819D8, &qword_27237CB50);
  v12 = sub_272377C3C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2721F40F0(v11, &qword_2808819D8, &qword_27237CB50);
  }

  else
  {
    sub_272377C2C();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_272377BDC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_2723778BC() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2721F40F0(a3, &qword_2808819D8, &qword_27237CB50);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_2722AA96C(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 112) = a1;
  v8 = sub_2721F065C(&qword_280881F88, qword_27237E340);
  *(v7 + 40) = v8;
  v9 = *(v8 - 8);
  *(v7 + 48) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 56) = swift_task_alloc();
  v11 = sub_2723773DC();
  *(v7 + 64) = v11;
  v12 = *(v11 - 8);
  *(v7 + 72) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2722AAAA8, 0, 0);
}

uint64_t sub_2722AAAA8()
{
  v1 = *(v0 + 112);
  if (v1 != 1.0)
  {
    v2 = *(v0 + 16);
    sub_2722AAF70(v1);
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  v9 = *(v0 + 40);
  v10 = *(v0 + 24);
  v11 = *(v0 + 16);
  sub_2723773CC();
  (*(v6 + 16))(v3, v4, v5);
  sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  sub_272377C6C();
  (*(v8 + 8))(v7, v9);
  sub_272377C7C();
  v12 = *(MEMORY[0x277CDCA48] + 4);
  v13 = swift_task_alloc();
  *(v0 + 96) = v13;
  *v13 = v0;
  v13[1] = sub_2722AABF0;
  v14 = *(v0 + 32);

  return MEMORY[0x28212BBF0]();
}

uint64_t sub_2722AABF0()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_2722AADA0;
  }

  else
  {
    v3 = sub_2722AAD04;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2722AAD04()
{
  v1 = v0[10];
  v2 = v0[7];
  (*(v0[9] + 8))(v0[11], v0[8]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_2722AADA0()
{
  (*(v0[9] + 8))(v0[11], v0[8]);
  if (qword_28088CC00 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = sub_27237728C();
  sub_2721F08DC(v2, qword_28088CC08);
  v3 = v1;
  v4 = sub_27237725C();
  v5 = sub_272377E8C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2721E4000, v4, v5, "Error in second pass: %@", v7, 0xCu);
    sub_2721F40F0(v8, &qword_280881A40, &unk_27237D620);
    MEMORY[0x2743C69C0](v8, -1, -1);
    MEMORY[0x2743C69C0](v7, -1, -1);
  }

  v11 = v0[13];
  v13 = v0[10];
  v12 = v0[11];
  v14 = v0[7];

  swift_willThrow();

  v15 = v0[1];
  v16 = v0[13];

  return v15();
}

void sub_2722AAF70(float a1)
{
  v2 = v1;
  v19 = *MEMORY[0x277D85DE8];
  v4 = [v1 int16ChannelData];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 frameLength];
    v7 = [v2 format];
    v8 = [v7 channelCount];

    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0x277D84F90];
      do
      {
        if (v6)
        {
          v12 = sub_272377B5C();
          *(v12 + 16) = v6;
          bzero((v12 + 32), 4 * v6);
        }

        else
        {
          v12 = v10;
        }

        vDSP_vflt16(*v5, 1, (v12 + 32), 1, v6);
        v18 = a1;

        v13 = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2721FF8B4(0, *(v12 + 16), 0, v12);
        }

        MEMORY[0x2743C6C10](v12 + 32, 1, &v18, v13 + 32, 1, v6);

        __C = 32766.0;
        __B = -32767.0;

        v14 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_2721FF8B4(0, *(v13 + 2), 0, v13);
        }

        vDSP_vclip(v13 + 8, 1, &__B, &__C, v14 + 8, 1, v6);

        v11 = *v5++;
        vDSP_vfixr16(v14 + 8, 1, v11, 1, v6);

        --v9;
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2722AB1B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_27237874C();
  sub_27237790C();
  v9 = sub_27237878C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_27237865C() & 1) != 0)
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

    sub_2722AB564(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2722AB304(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
  result = sub_27237819C();
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
      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
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

uint64_t sub_2722AB564(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_2722AB304(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2722AB6E4();
      goto LABEL_16;
    }

    sub_2722AB840(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_27237874C();
  sub_27237790C();
  result = sub_27237878C();
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

      result = sub_27237865C();
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
  result = sub_2723786AC();
  __break(1u);
  return result;
}

void *sub_2722AB6E4()
{
  v1 = v0;
  sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
  v2 = *v0;
  v3 = sub_27237818C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2722AB840(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_2721F065C(&qword_2808825B8, &unk_272380CA0);
  result = sub_27237819C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_27237874C();

      sub_27237790C();
      result = sub_27237878C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2722ABA78(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_27237745C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_2721F065C(&qword_280882078, &qword_27237E490);
  v43 = a2;
  result = sub_2723783DC();
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
      }

      v29 = *(v14 + 40);
      sub_2722AD74C(&qword_280882080, MEMORY[0x277CDCBE8]);
      result = sub_27237776C();
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

uint64_t sub_2722ABE54(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_27237745C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_272252468(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_2722AC0D8();
      goto LABEL_7;
    }

    sub_2722ABA78(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_272252468(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_2722AC020(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_2723786BC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_2722AC020(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_27237745C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

char *sub_2722AC0D8()
{
  v1 = v0;
  v34 = sub_27237745C();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2721F065C(&qword_280882078, &qword_27237E490);
  v4 = *v0;
  v5 = sub_2723783CC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_2722AC358()
{
  result = qword_280882738;
  if (!qword_280882738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882738);
  }

  return result;
}

uint64_t sub_2722AC3AC(uint64_t a1)
{
  v2 = type metadata accessor for VASpeechBiasData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2722AC408()
{
  result = qword_280882740;
  if (!qword_280882740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280882740);
  }

  return result;
}

uint64_t sub_2722AC478()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_2722AC4B8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2722AC508(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_272211DBC;

  return sub_2722A91AC(a1, v8, v9, v4, v5, v7, v6);
}

uint64_t sub_2722AC5C8()
{
  v1 = sub_2721F065C(&qword_280881F58, &unk_27237E2F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2722AC6B4()
{
  v2 = *(sub_2721F065C(&qword_280881F58, &unk_27237E2F0) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_272219D80;

  return sub_2722AA96C(v4, v7, v8, v9, v5, v0 + v3, v6);
}

uint64_t sub_2722AC7D8(uint64_t a1)
{
  v2 = 0x6F69746174636944;
  v3 = sub_27237768C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 != *MEMORY[0x277CDCE70])
  {
    if (v8 == *MEMORY[0x277CDCE50])
    {
      return 0x6372616553626557;
    }

    if (v8 == *MEMORY[0x277CDCE10] || v8 == *MEMORY[0x277CDCE68])
    {
      return 0xD000000000000011;
    }

    if (v8 == *MEMORY[0x277CDCE38])
    {
      return 0x7463694469726953;
    }

    if (v8 != *MEMORY[0x277CDCE28] && v8 != *MEMORY[0x277CDCE20])
    {
      if (v8 == *MEMORY[0x277CDCE78])
      {
        return 0x69614D6563696F56;
      }

      if (v8 == *MEMORY[0x277CDCE18])
      {
        return 0xD000000000000011;
      }

      if (v8 == *MEMORY[0x277CDCE00])
      {
        return 0x696E6F6974706143;
      }

      if (v8 != *MEMORY[0x277CDCE08])
      {
        v2 = 0x43436C6C657053;
        if (v8 != *MEMORY[0x277CDCE58] && v8 != *MEMORY[0x277CDCE60])
        {
          if (v8 != *MEMORY[0x277CDCE48] && v8 != *MEMORY[0x277CDCE40] && v8 != *MEMORY[0x277CDCE30])
          {
            (*(v4 + 8))(v7, v3);
            return 0xD000000000000010;
          }

          return 0xD000000000000011;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_2722ACB00(uint64_t a1)
{
  v2 = sub_27237764C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2721F065C(&qword_280882770, &unk_272381E10);
    v10 = sub_2723781AC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2722AD74C(&qword_280882778, MEMORY[0x277CDCDB8]);
      v18 = sub_27237776C();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2722AD74C(&qword_280882780, MEMORY[0x277CDCDB8]);
          v25 = sub_2723777DC();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2722ACE20(uint64_t a1)
{
  v2 = sub_27237737C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_2721F065C(&qword_280882060, &qword_27237E488);
    v10 = sub_2723781AC();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v35 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    v33 = v9;
    v34 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v14 * v11, v2);
      v16 = *(v10 + 40);
      sub_2722AD74C(&qword_280882068, MEMORY[0x277CDCB30]);
      v17 = sub_27237776C();
      v18 = -1 << *(v10 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = *(v38 + 8 * (v19 >> 6));
      v22 = 1 << v19;
      if (((1 << v19) & v21) != 0)
      {
        v23 = ~v18;
        do
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v19 * v14, v2);
          sub_2722AD74C(&qword_280882070, MEMORY[0x277CDCB30]);
          v25 = sub_2723777DC();
          v26 = *v15;
          (*v15)(v7, v2);
          if (v25)
          {
            v26(v39, v2);
            v12 = v24;
            v9 = v33;
            goto LABEL_4;
          }

          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = *(v38 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v24;
        }

        while (((1 << v19) & v21) != 0);
        v9 = v33;
      }

      v27 = v39;
      *(v38 + 8 * v20) = v22 | v21;
      result = (*v34)(*(v10 + 48) + v19 * v14, v27, v2);
      v29 = *(v10 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      *(v10 + 16) = v31;
LABEL_4:
      v11 = v36 + 1;
      if (v36 + 1 == v9)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_2722AD144()
{
  result = qword_280882008;
  if (!qword_280882008)
  {
    sub_2721F214C(&qword_280881F50, &unk_272381B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882008);
  }

  return result;
}

uint64_t sub_2722AD1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881A50, &unk_27237CA30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2722AD234()
{
  result = qword_280882760;
  if (!qword_280882760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VATaskHintCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VATaskHintCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}