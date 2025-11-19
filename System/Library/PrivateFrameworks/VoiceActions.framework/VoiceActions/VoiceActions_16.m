uint64_t sub_27234AE64()
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
    (*(*v2 + 296))(v7);
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

uint64_t sub_27234B0D0(uint64_t a1, char a2)
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
      v30 = *(*v2 + 328);
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

uint64_t sub_27234B540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v8 = type metadata accessor for VASingleEnrollmentData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*v3 + 312))(a1, a2);
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

uint64_t sub_27234B900(uint64_t a1)
{
  v4 = v1;
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_27237E510;
  sub_27223EE54();
  *(v6 + 32) = sub_272377FAC();
  v7 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v8 = sub_272257FA4(v6, 65568);
  if (!v2)
  {
    v9 = v8;
    v10 = sub_272377FAC();
    [v9 setObject:v10 atIndexedSubscript:0];

    v11 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_27237E510;
    *(v12 + 32) = sub_272377FAC();
    v13 = objc_allocWithZone(MEMORY[0x277CBFF40]);
    v50 = v11;
    v14 = sub_272257FA4(v12, 65568);
    v15 = sub_272377FAC();
    v49 = v14;
    [v14 setObject:v15 atIndexedSubscript:0];

    v51 = *(*v4 + 184);
    v16 = v51();
    if (v16 >> 62)
    {
      goto LABEL_19;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    v3 = sub_27220392C(MEMORY[0x277D84F90], v17);
    v18 = v51();
    v47 = v4;
    v19 = v50;
    if (v18 >> 62)
    {
      v46 = sub_2723783AC();

      if (v46 < 0)
      {
        __break(1u);
      }

      v20 = v46;
      v19 = v50;
      if (v20)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v20)
      {
LABEL_6:
        v48 = a1;
        a1 = 4;
        do
        {
          sub_27234C244(v48);
          v22 = v21;
          v23 = v51();
          v53 = v20;
          if ((v23 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x2743C5370](a1 - 4, v23);
          }

          else
          {
            if ((a1 - 4) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_18:
              __break(1u);
LABEL_19:
              v17 = sub_2723783AC();
              goto LABEL_4;
            }

            v24 = *(v23 + 8 * a1);
          }

          v25 = v24;

          type metadata accessor for quant_verifier_aa_fp32Input();
          v26 = sub_272295840(v22, v25, v19, v49);
          v27 = (*(*v4 + 160))();
          v28 = (*(*v27 + 136))(v26);

          sub_2721F065C(&qword_280881848, &unk_27237C250);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_27237AFB0;
          v52 = v3;
          v30 = *(*v28 + 88);
          v31 = v30();
          v32 = [v31 objectAtIndexedSubscript_];

          [v32 floatValue];
          v34 = v33;

          *(v29 + 32) = v34;
          v35 = v30();
          v36 = [v35 objectAtIndexedSubscript_];

          [v36 floatValue];
          v38 = v37;

          *(v29 + 36) = v38;
          v39 = v30();
          v3 = v52;
          v40 = v39;
          v41 = [v39 objectAtIndexedSubscript_];

          [v41 floatValue];
          v43 = v42;

          *(v29 + 40) = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_272200344(v52);
          }

          v19 = v50;

          v4 = v47;
          if ((a1 - 4) >= *(v3 + 16))
          {
            goto LABEL_18;
          }

          v44 = *(v3 + 8 * a1);
          *(v3 + 8 * a1) = v29;

          ++a1;
          v20 = v53 - 1;
        }

        while (v53 != 1);
      }
    }
  }

  return v3;
}

uint64_t sub_27234BEC4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];
}

void *VAA2AVerifierModelV2.deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return v0;
}

uint64_t VAA2AVerifierModelV2.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModelV2.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  if (*(enrollments._rawValue + 2) < 0x15uLL)
  {
    v3 = *(*v1 + 240);

    v3(v4);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v2 = 0xD000000000000018;
    v2[1] = 0x8000000272391A60;
    swift_willThrow();
  }
}

uint64_t sub_27234C198(uint64_t a1)
{
  if (*(a1 + 16) < 0x15uLL)
  {
    v4 = *(**v1 + 240);

    return v4(v5);
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v2 = 0xD000000000000018;
    v2[1] = 0x8000000272391A60;
    return swift_willThrow();
  }
}

void sub_27234C244(uint64_t a1)
{
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237E4F0;
  v4 = *(a1 + 16);
  *(v3 + 32) = sub_272377DBC();
  v26 = v4;
  if (!v4)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v7 = *(a1 + 32);
  v6 = a1 + 32;
  v5 = v7;
  v8 = *(v7 + 16);
  *(v3 + 40) = sub_272377DBC();
  if (!*(v7 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v9 = *(*(v5 + 32) + 16);
  *(v3 + 48) = sub_272377DBC();
  v10 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v28 = sub_272257FA4(v3, 65568);
  if (!v1)
  {
    v11 = 0;
    v25 = v6;
    while (1)
    {
      v12 = *(v6 + 8 * v11);
      v27 = *(v12 + 16);
      if (v27)
      {
        break;
      }

LABEL_6:
      ++v11;
      v6 = v25;
      if (v11 == v26)
      {
        return;
      }
    }

    v13 = 0;
    v14 = v12 + 32;
    while (v13 < *(v12 + 16))
    {
      v15 = *(*(v14 + 8 * v13) + 16);
      if (v15)
      {
        v16 = 0;
        while (1)
        {
          v17 = swift_allocObject();
          *(v17 + 16) = xmmword_27237E4F0;
          *(v17 + 32) = sub_272377DBC();
          *(v17 + 40) = sub_272377DBC();
          *(v17 + 48) = sub_272377DBC();
          if (v13 >= *(v12 + 16))
          {
            break;
          }

          v18 = *(v14 + 8 * v13);
          if (v16 >= *(v18 + 16))
          {
            goto LABEL_18;
          }

          v19 = v16 + 1;
          v20 = *(v18 + 4 * v16 + 32);
          v21 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          LODWORD(v22) = v20;
          v23 = [v21 initWithFloat_];
          sub_27223EE54();
          v24 = sub_272377AEC();

          [v28 setObject:v23 forKeyedSubscript:v24];

          v16 = v19;
          if (v15 == v19)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
        break;
      }

LABEL_9:
      if (++v13 == v27)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_20;
  }
}

VoiceActions::VAComputeUnits_optional __swiftcall VAComputeUnits.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t VAComputeUnits.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x796C6E4F757063;
  }

  *v0;
  return result;
}

uint64_t sub_27234C668(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0x796C6E4F757063;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x8000000272391AC0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0x796C6E4F757063;
  }

  if (*a2)
  {
    v7 = 0x8000000272391AC0;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27237865C();
  }

  return v9 & 1;
}

uint64_t sub_27234C714(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xD000000000000017;
    v10 = 0x8000000272391B30;
    if (a1 != 6)
    {
      v9 = 0xD000000000000018;
      v10 = 0x8000000272391B50;
    }

    v11 = 0x7543646E4174696ALL;
    v12 = 0xEE004D4C6D6F7473;
    if (a1 != 4)
    {
      v11 = 0x6F43646E4174696ALL;
      v12 = 0xEF4D4C746361746ELL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0x74737543796C6E6FLL;
    v5 = 0xEC0000004D4C6D6FLL;
    if (a1 != 2)
    {
      v4 = 0x746E6F43796C6E6FLL;
      v5 = 0xEE00454D4C746361;
    }

    v6 = 0x4754494A796C6E6FLL;
    if (a1)
    {
      v3 = 0xEE0072616D6D6172;
    }

    else
    {
      v6 = 1701736302;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xEC0000004D4C6D6FLL;
        if (v7 != 0x74737543796C6E6FLL)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x746E6F43796C6E6FLL;
      v15 = 0x454D4C746361;
    }

    else
    {
      if (!a2)
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736302)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }

      v14 = 0x4754494A796C6E6FLL;
      v15 = 0x72616D6D6172;
    }

LABEL_41:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
    if (v7 != v14)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xEF4D4C746361746ELL;
      if (v7 != 0x6F43646E4174696ALL)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    v14 = 0x7543646E4174696ALL;
    v15 = 0x4D4C6D6F7473;
    goto LABEL_41;
  }

  if (a2 == 6)
  {
    v13 = 0x8000000272391B30;
    if (v7 != 0xD000000000000017)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0x8000000272391B50;
    if (v7 != 0xD000000000000018)
    {
LABEL_46:
      v16 = sub_27237865C();
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v8 != v13)
  {
    goto LABEL_46;
  }

  v16 = 1;
LABEL_47:

  return v16 & 1;
}

uint64_t sub_27234C9E8()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27234CA70()
{
  *v0;
  sub_27237790C();
}

uint64_t sub_27234CAE4()
{
  sub_27237790C();
}

uint64_t sub_27234CC44()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27234CCC8()
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27234CE3C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_27234CE9C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000272391AC0;
  v3 = 0x796C6E4F757063;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t VASpeechBiasOptions.anyBias.getter()
{
  if (*v0 > 3u)
  {
    *v0;
LABEL_6:
    v2 = sub_27237865C();

    v1 = v2 ^ 1;
    return v1 & 1;
  }

  if (*v0 > 1u || *v0)
  {
    goto LABEL_6;
  }

  v1 = 0;
  return v1 & 1;
}

uint64_t VASpeechBiasOptions.overrideModelURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272376D5C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

VoiceActions::VASpeechBiasOptions_optional __swiftcall VASpeechBiasOptions.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VASpeechBiasOptions.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD000000000000017;
  if (v1 != 6)
  {
    v3 = 0xD000000000000018;
  }

  v4 = 0x7543646E4174696ALL;
  if (v1 != 4)
  {
    v4 = 0x6F43646E4174696ALL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74737543796C6E6FLL;
  if (v1 != 2)
  {
    v5 = 0x746E6F43796C6E6FLL;
  }

  if (*v0)
  {
    v2 = 0x4754494A796C6E6FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_27234D398(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xD000000000000017;
  v6 = 0x8000000272391B30;
  if (v2 != 6)
  {
    v5 = 0xD000000000000018;
    v6 = 0x8000000272391B50;
  }

  v7 = 0xEE004D4C6D6F7473;
  v8 = 0x7543646E4174696ALL;
  if (v2 != 4)
  {
    v8 = 0x6F43646E4174696ALL;
    v7 = 0xEF4D4C746361746ELL;
  }

  if (*v1 <= 5u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEC0000004D4C6D6FLL;
  v10 = 0x74737543796C6E6FLL;
  if (v2 != 2)
  {
    v10 = 0x746E6F43796C6E6FLL;
    v9 = 0xEE00454D4C746361;
  }

  if (*v1)
  {
    v4 = 0x4754494A796C6E6FLL;
    v3 = 0xEE0072616D6D6172;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v5;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v6;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t VARuntimeParameters.keywords.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t VARuntimeParameters.debounce.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return result;
}

uint64_t VARuntimeParameters.debounce.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 16) = result;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3 & 1;
  return result;
}

uint64_t VARuntimeParameters.maximumBufferSamples.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t VARuntimeParameters.maximumBufferSamples.setter(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t VARuntimeParameters.extraTasrBiasString.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t VARuntimeParameters.extraTasrBiasString.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t VARuntimeParameters.keywordsToAsrMatch.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t VARuntimeParameters.extraAudioDurationAfterPredictionWindow.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t VARuntimeParameters.extraAudioDurationAfterPredictionWindow.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t VARuntimeParameters.extraAudioDurationBeforePredictionWindow.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t VARuntimeParameters.extraAudioDurationBeforePredictionWindow.setter(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t VARuntimeParameters.speechLocale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VARuntimeParameters() + 108);
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VARuntimeParameters.speechLocale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VARuntimeParameters() + 108);
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VARuntimeParameters.limit2ndPassSearchToNBest.setter(uint64_t a1)
{
  result = type metadata accessor for VARuntimeParameters();
  *(v1 + *(result + 112)) = a1;
  return result;
}

uint64_t VARuntimeParameters.automaticallyPrepareSpeechAPI.setter(char a1)
{
  result = type metadata accessor for VARuntimeParameters();
  *(v1 + *(result + 116)) = a1;
  return result;
}

uint64_t VARuntimeParameters.customLMWeight.setter(double a1)
{
  result = type metadata accessor for VARuntimeParameters();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t VARuntimeParameters.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 1061997773;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  *(a1 + 52) = 1050253722;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 514;
  *(a1 + 74) = 2;
  *(a1 + 75) = 0;
  *(a1 + 80) = sub_2722A0548(v2);
  *(a1 + 88) = 768;
  *(a1 + 90) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0;
  *(a1 + 120) = 257;
  v3 = type metadata accessor for VARuntimeParameters();
  v4 = v3[27];
  result = sub_272376E6C();
  *(a1 + v3[28]) = 1;
  *(a1 + v3[29]) = 0;
  *(a1 + v3[30]) = 0x3FA999999999999ALL;
  return result;
}

uint64_t sub_27234DEC4()
{
  v0 = sub_272376BCC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v14 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  sub_2721F408C(v9, qword_280892188);
  sub_2721F08DC(v0, qword_280892188);
  sub_272376B7C();
  sub_272376B6C();
  sub_272376B9C();
  v12 = *(v1 + 8);
  v12(v5, v0);
  v12(v8, v0);
  sub_272376B5C();
  sub_272376B9C();
  v12(v8, v0);
  return (v12)(v11, v0);
}

uint64_t static VARuntimeParameters.allowedCharacterSet.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280892180 != -1)
  {
    swift_once();
  }

  v2 = sub_272376BCC();
  v3 = sub_2721F08DC(v2, qword_280892188);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static VARuntimeParameters.isValidKeyword(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_272376BCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_16;
  }

  v37 = a1;
  v38 = a2;
  v35 = 58;
  v36 = 0xE100000000000000;
  sub_272203AC4();
  v10 = sub_27237813C();
  if (v10)
  {
    v37 = 58;
    v38 = 0xE100000000000000;
    MEMORY[0x28223BE20](v10);
    *(&v32 - 2) = &v37;

    v12 = sub_2721FF4F4(1, 0, sub_272219D88, (&v32 - 4), a1, a2, v11);
    if (v12[2] < 2uLL)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      swift_once();
      goto LABEL_14;
    }

    v33 = v8;
    v34 = 0;
    v13 = v4;
    v14 = v5;
    v15 = v12[8];
    v16 = v12[9];
    v17 = v12[10];
    v18 = v12[11];

    v5 = v14;
    v4 = v13;
    v8 = v33;
    v10 = sub_272377D6C();
    if ((v10 & 0x100000000) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v34 = 0;
  }

  v37 = 58;
  v38 = 0xE100000000000000;
  MEMORY[0x28223BE20](v10);
  *(&v32 - 2) = &v37;

  v20 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219A04, (&v32 - 4), a1, a2, v19);
  if (!v20[2])
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v20[4];
  v22 = v20[5];
  v23 = v20[6];
  v24 = v20[7];

  v25 = MEMORY[0x2743C4A20](v21, v22, v23, v24);
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

LABEL_16:
    v30 = 0;
    return v30 & 1;
  }

  v37 = v25;
  v38 = v27;
  if (qword_280892180 != -1)
  {
    goto LABEL_20;
  }

LABEL_14:
  sub_2721F08DC(v4, qword_280892188);
  sub_272376BAC();
  sub_2723780DC();
  v30 = v29;
  (*(v5 + 8))(v8, v4);

  return v30 & 1;
}

uint64_t VARuntimeParameters.keywordsToThresholds.getter()
{
  v54 = *v0;
  v53 = *(v54 + 16);
  if (!v53)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = 0;
  v52 = 0;
  v2 = (v54 + 40);
  v3 = MEMORY[0x277D84F98];
  while (v1 < *(v54 + 16))
  {
    v6 = *(v2 - 1);
    v5 = *v2;
    v57 = v6;
    v58 = v5;
    v55 = 58;
    v56 = 0xE100000000000000;
    sub_272203AC4();

    v7 = sub_27237813C();
    if ((v7 & 1) == 0)
    {
      v28 = v1;
      v29 = *(v50 + 8);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v3;
      v31 = sub_27220038C(v6, v5);
      v33 = v3[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_30;
      }

      v37 = v32;
      if (v3[3] < v36)
      {
        sub_272300664(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_27220038C(v6, v5);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_33;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_16:
        v27 = v28;
        if (v37)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v47 = v31;
        sub_272301090();
        v31 = v47;
        v27 = v28;
        if (v37)
        {
LABEL_3:
          v4 = v31;

          v3 = v57;
          *(*(v57 + 56) + 4 * v4) = v29;
          goto LABEL_4;
        }
      }

      v3 = v57;
      *(v57 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = (v3[6] + 16 * v31);
      *v39 = v6;
      v39[1] = v5;
      *(v3[7] + 4 * v31) = v29;
      v40 = v3[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_32;
      }

      v3[2] = v41;
      goto LABEL_4;
    }

    v57 = 58;
    v58 = 0xE100000000000000;
    MEMORY[0x28223BE20](v7);
    v49[2] = &v57;
    v8 = v52;
    v9 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, v49, v6, v5, &v50);
    if (!v9[2])
    {
      goto LABEL_29;
    }

    v10 = v9;
    v51 = v1;
    v11 = v9[4];
    v12 = v9[5];
    v13 = v9[6];
    v14 = v9[7];

    v15 = MEMORY[0x2743C4A20](v11, v12, v13, v14);
    v17 = v16;

    if (v10[2] < 2uLL)
    {
      goto LABEL_31;
    }

    v18 = v10[8];
    v19 = v10[9];
    v21 = v10[10];
    v20 = v10[11];

    v22 = MEMORY[0x2743C4A20](v18, v19, v21, v20);
    v24 = v23;

    LODWORD(v57) = 0;
    LOBYTE(v20) = sub_272351B04(v22, v24);
    v52 = v8;

    if (v20)
    {
      v25 = *&v57;
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v57 = v3;
      sub_272300A84(v15, v17, v26, v25);

      v3 = v57;
      v27 = v51;
    }

    else
    {
      v42 = sub_27220038C(v15, v17);
      v44 = v43;

      v27 = v51;
      if (v44)
      {
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v57 = v3;
        if (!v45)
        {
          sub_272301090();
          v3 = v57;
        }

        v46 = *(v3[6] + 16 * v42 + 8);

        sub_272351954(v42, v3);
      }
    }

LABEL_4:
    v1 = v27 + 1;
    v2 += 2;
    if (v53 == v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

char *VARuntimeParameters.keywordsNoThresholds.getter()
{
  v0 = VARuntimeParameters.keywordsToThresholds.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2722702A8(*(v0 + 16), 0);
  v4 = sub_2722DD9D8(&v6, v3 + 4, v2, v1);
  sub_272270484();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    v3 = MEMORY[0x277D84F90];
  }

  v6 = v3;

  sub_272272490(&v6);

  return v6;
}

uint64_t VARuntimeParameters.allKeywordsAreValid.getter()
{
  v36 = sub_272376BCC();
  v1 = *(*(v36 - 8) + 64);
  result = MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v34 = *(*v0 + 16);
  if (!v34)
  {
    return 1;
  }

  v6 = 0;
  v32 = v5;
  v33 = (v3 + 8);
  v7 = (v5 + 40);
  while (v6 < *(v5 + 16))
  {
    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = HIBYTE(*v7) & 0xF;
    if ((*v7 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      return 0;
    }

    v40 = *(v7 - 1);
    v41 = v8;
    v38 = 58;
    v39 = 0xE100000000000000;
    v11 = sub_272203AC4();

    v37 = v11;
    v12 = sub_27237813C();
    if (v12)
    {
      v40 = 58;
      v41 = 0xE100000000000000;
      MEMORY[0x28223BE20](v12);
      *(&v31 - 2) = &v40;

      result = sub_2721FF4F4(1, 0, sub_272219D88, (&v31 - 4), v9, v8, v13);
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_24;
      }

      v14 = *(result + 64);
      v15 = *(result + 72);
      v17 = *(result + 80);
      v16 = *(result + 88);

      v12 = sub_272377D6C();
      if ((v12 & 0x100000000) != 0)
      {
        goto LABEL_20;
      }
    }

    v40 = 58;
    v41 = 0xE100000000000000;
    MEMORY[0x28223BE20](v12);
    *(&v31 - 2) = &v40;

    result = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, (&v31 - 4), v9, v8, v18);
    if (!*(result + 16))
    {
      goto LABEL_23;
    }

    v19 = *(result + 32);
    v20 = *(result + 40);
    v21 = *(result + 48);
    v22 = *(result + 56);

    v23 = MEMORY[0x2743C4A20](v19, v20, v21, v22);
    v25 = v24;

    v26 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v26 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {

LABEL_20:

      return 0;
    }

    v40 = v23;
    v41 = v25;
    if (qword_280892180 != -1)
    {
      swift_once();
    }

    v27 = v36;
    sub_2721F08DC(v36, qword_280892188);
    v28 = v35;
    sub_272376BAC();
    sub_2723780DC();
    v30 = v29;

    (*v33)(v28, v27);

    if ((v30 & 1) == 0)
    {
      return 0;
    }

    ++v6;
    v7 += 2;
    v5 = v32;
    if (v34 == v6)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_27234ED24()
{
  v1 = v0;
  v42 = sub_272376BCC();
  v2 = *(v42 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v42);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*v0 + 16))
  {
    return 0;
  }

  *&v45 = *v0;

  v6 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  v41[2] = sub_2722199BC(&qword_280881830, &qword_2808817F8, &unk_27237CA80);
  sub_2723777CC();

  v7 = sub_2723778AC();
  v9 = v8;

  *&v45 = v7;
  *(&v45 + 1) = v9;
  v50 = 95;
  v51 = 0xE100000000000000;
  v48 = 32;
  v49 = 0xE100000000000000;
  v10 = sub_272203AC4();
  v39 = v10;
  v40 = v10;
  v37 = MEMORY[0x277D837D0];
  v38 = v10;
  v11 = sub_2723780FC();
  v13 = v12;

  result = v11;
  v50 = v11;
  v51 = v13;
  v15 = *(v1 + 64);
  if (v15)
  {
    v41[1] = v6;
    v16 = *(v1 + 56);
    *&v45 = 44;
    *(&v45 + 1) = 0xE100000000000000;
    MEMORY[0x28223BE20](result);
    v39 = &v45;

    v18 = sub_2721FF4F4(0x7FFFFFFFFFFFFFFFLL, 1, sub_272219D88, &v37, v16, v15, v17);
    v19 = *(v18 + 16);
    v41[0] = v18;
    if (v19)
    {
      v20 = (v2 + 8);
      v21 = MEMORY[0x277D84F90];
      v22 = (v18 + 56);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        v45 = *(v22 - 3);
        v46 = v23;
        v47 = v24;

        sub_272376B4C();
        sub_272260218();
        sub_2723780EC();
        (*v20)(v5, v42);

        v25 = sub_2723778AC();
        v27 = v26;

        *&v45 = v25;
        *(&v45 + 1) = v27;
        v48 = 95;
        v49 = 0xE100000000000000;
        v43 = 32;
        v44 = 0xE100000000000000;
        v39 = v10;
        v40 = v10;
        v38 = v10;
        v37 = MEMORY[0x277D837D0];
        v28 = sub_2723780FC();
        v30 = v29;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_2721FFBF8(0, *(v21 + 2) + 1, 1, v21);
        }

        v32 = *(v21 + 2);
        v31 = *(v21 + 3);
        if (v32 >= v31 >> 1)
        {
          v21 = sub_2721FFBF8((v31 > 1), v32 + 1, 1, v21);
        }

        *(v21 + 2) = v32 + 1;
        v33 = &v21[16 * v32];
        *(v33 + 4) = v28;
        *(v33 + 5) = v30;
        v22 += 4;
        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    *&v45 = v21;
    v34 = sub_2723777CC();
    v36 = v35;

    *&v45 = 44;
    *(&v45 + 1) = 0xE100000000000000;
    MEMORY[0x2743C4AD0](v34, v36);

    MEMORY[0x2743C4AD0](v45, *(&v45 + 1));

    return v50;
  }

  return result;
}

uint64_t sub_27234F188()
{
  if (v0[12])
  {
    return 1;
  }

  if (v0[75])
  {
    return 1;
  }

  return v0[76];
}

uint64_t VARuntimeParameters.description.getter()
{
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_272376AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_27237AFB0;
  sub_272376ADC();
  sub_272376ACC();
  sub_272376AEC();
  sub_272351D44(&qword_280881C78, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_2722199BC(&qword_280881C88, &qword_280881C80, qword_27237D8B0);
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VARuntimeParameters();
  sub_272351D44(&qword_2808831F0, type metadata accessor for VARuntimeParameters);
  v10 = sub_272376B1C();
  v12 = v11;
  sub_27237787C();
  v13 = sub_27237784C();
  if (v14)
  {
    v15 = v13;
    sub_2721F05C8(v10, v12);
  }

  else
  {
    sub_2721F05C8(v10, v12);

    return 0;
  }

  return v15;
}

uint64_t VARuntimeParameters.asrMatchToKeywords()()
{
  v1 = sub_272216188(MEMORY[0x277D84F90]);
  v2 = VARuntimeParameters.keywordsToThresholds.getter();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2722702A8(*(v2 + 16), 0);
  v6 = sub_2722DD9D8(&v64, v5 + 4, v4, v3);
  sub_272270484();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    v5 = MEMORY[0x277D84F90];
  }

  v64 = v5;

  sub_272272490(&v64);

  v7 = v64;
  v8 = *(v64 + 2);
  if (!v8)
  {
LABEL_38:

    return v1;
  }

  v9 = 0;
  v10 = *(v0 + 80);
  v59 = v10;
  v60 = v64 + 32;
  v57 = *(v64 + 2);
  v58 = v64;
  while (1)
  {
    if (v9 >= v7[2])
    {
      goto LABEL_42;
    }

    v61 = v9;
    v11 = &v60[16 * v9];
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v10 + 16);

    if (!v14 || (v15 = sub_27220038C(v12, v13), (v16 & 1) == 0))
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v1;
      v41 = sub_27220038C(v12, v13);
      v43 = *(v1 + 2);
      v44 = (v42 & 1) == 0;
      v31 = __OFADD__(v43, v44);
      v45 = v43 + v44;
      if (v31)
      {
        goto LABEL_43;
      }

      v46 = v42;
      if (*(v1 + 3) >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v41;
          sub_272215E14();
          v41 = v51;
          if ((v46 & 1) == 0)
          {
LABEL_36:
            v1 = v64;
            *&v64[8 * (v41 >> 6) + 64] |= 1 << v41;
            v52 = (*(v1 + 6) + 16 * v41);
            *v52 = v12;
            v52[1] = v13;
            v53 = (*(v1 + 7) + 16 * v41);
            *v53 = v12;
            v53[1] = v13;
            v54 = *(v1 + 2);
            v31 = __OFADD__(v54, 1);
            v55 = v54 + 1;
            if (v31)
            {
              goto LABEL_44;
            }

            *(v1 + 2) = v55;
            goto LABEL_8;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_272215B54(v45, isUniquelyReferenced_nonNull_native);
        v41 = sub_27220038C(v12, v13);
        if ((v46 & 1) != (v47 & 1))
        {
          goto LABEL_45;
        }
      }

      if ((v46 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_33:
      v48 = v41;

      v1 = v64;
      v49 = (*(v64 + 7) + 16 * v48);
      v50 = v49[1];
      *v49 = v12;
      v49[1] = v13;
      goto LABEL_34;
    }

    v17 = *(*(v10 + 56) + 8 * v15);
    v63 = *(v17 + 16);
    if (v63)
    {
      break;
    }

LABEL_34:

LABEL_8:
    v10 = v59;
    v9 = v61 + 1;
    if (v61 + 1 == v8)
    {
      goto LABEL_38;
    }
  }

  v18 = 0;
  v7 = (v17 + 40);
  v62 = v17;
  while (v18 < *(v17 + 16))
  {
    v22 = v12;
    v24 = *(v7 - 1);
    v23 = *v7;
    v25 = v13;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v1;
    v27 = sub_27220038C(v24, v23);
    v29 = *(v1 + 2);
    v30 = (v28 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      goto LABEL_40;
    }

    v33 = v28;
    if (*(v1 + 3) < v32)
    {
      sub_272215B54(v32, v26);
      v27 = sub_27220038C(v24, v23);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_45;
      }

LABEL_22:
      if (v33)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    if (v26)
    {
      goto LABEL_22;
    }

    v39 = v27;
    sub_272215E14();
    v27 = v39;
    if (v33)
    {
LABEL_14:
      v19 = v27;

      v1 = v64;
      v20 = (*(v64 + 7) + 16 * v19);
      v21 = v20[1];
      v12 = v22;
      *v20 = v22;
      v20[1] = v25;
      v13 = v25;

      goto LABEL_15;
    }

LABEL_23:
    v1 = v64;
    *&v64[8 * (v27 >> 6) + 64] |= 1 << v27;
    v35 = (*(v1 + 6) + 16 * v27);
    *v35 = v24;
    v35[1] = v23;
    v36 = (*(v1 + 7) + 16 * v27);
    *v36 = v22;
    v36[1] = v25;
    v37 = *(v1 + 2);
    v31 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v31)
    {
      goto LABEL_41;
    }

    v12 = v22;
    v13 = v25;
    *(v1 + 2) = v38;
LABEL_15:
    ++v18;
    v7 += 2;
    v17 = v62;
    if (v63 == v18)
    {

      v8 = v57;
      v7 = v58;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_2723786BC();
  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_27234F940(char a1)
{
  result = 0x7364726F7779656BLL;
  switch(a1)
  {
    case 1:
    case 12:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x65736F62726576;
      break;
    case 4:
      result = 0x65636E756F626564;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x6E656857706F7473;
      break;
    case 7:
    case 11:
    case 24:
      result = 0xD000000000000019;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
    case 15:
      result = 0xD000000000000018;
      break;
    case 13:
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 14:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 19:
    case 21:
      result = 0xD000000000000028;
      break;
    case 20:
      result = 0xD000000000000027;
      break;
    case 22:
      result = 0x754D736573736170;
      break;
    case 23:
      result = 0x6F4C686365657073;
      break;
    case 26:
      result = 0x4D4C6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27234FC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272352B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27234FCCC(uint64_t a1)
{
  v2 = sub_272351C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27234FD08(uint64_t a1)
{
  v2 = sub_272351C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VARuntimeParameters.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_2808831F8, &unk_2723867C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272351C48();
  sub_2723787CC();
  *&v39 = *v3;
  v41 = 0;
  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_27228F60C(&qword_2808824F0);
  sub_2723785DC();
  if (!v2)
  {
    v11 = *(v3 + 8);
    LOBYTE(v39) = 1;
    sub_2723785BC();
    v12 = *(v3 + 12);
    LOBYTE(v39) = 2;
    sub_27237859C();
    v13 = *(v3 + 13);
    LOBYTE(v39) = 3;
    sub_27237859C();
    v14 = *(v3 + 32);
    v39 = *(v3 + 16);
    v40 = v14;
    v41 = 4;
    sub_27237857C();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    LOBYTE(v39) = 5;
    sub_27237856C();
    v17 = *(v3 + 49);
    LOBYTE(v39) = 6;
    sub_27237859C();
    v18 = *(v3 + 52);
    LOBYTE(v39) = 7;
    sub_2723785BC();
    v19 = *(v3 + 56);
    v20 = *(v3 + 64);
    LOBYTE(v39) = 8;
    sub_27237852C();
    v21 = *(v3 + 72);
    LOBYTE(v39) = 9;
    sub_27237853C();
    v22 = *(v3 + 73);
    LOBYTE(v39) = 10;
    sub_27237853C();
    v23 = *(v3 + 74);
    LOBYTE(v39) = 11;
    sub_27237853C();
    v24 = *(v3 + 75);
    LOBYTE(v39) = 12;
    sub_27237859C();
    v25 = *(v3 + 76);
    LOBYTE(v39) = 13;
    sub_27237859C();
    v26 = *(v3 + 77);
    LOBYTE(v39) = 14;
    sub_27237859C();
    LOBYTE(v39) = *(v3 + 78);
    v41 = 15;
    sub_272351C9C();
    sub_2723785DC();
    *&v39 = *(v3 + 80);
    v41 = 16;
    sub_2721F065C(&qword_280882C38, &unk_272384450);
    sub_27230C9F4();
    sub_2723785DC();
    LOBYTE(v39) = *(v3 + 88);
    v41 = 17;
    sub_2723169E4();
    sub_2723785DC();
    LOBYTE(v39) = *(v3 + 89);
    v41 = 18;
    sub_272316A38();
    sub_2723785DC();
    v27 = *(v3 + 90);
    LOBYTE(v39) = 19;
    sub_27237859C();
    v28 = *(v3 + 96);
    v29 = *(v3 + 104);
    LOBYTE(v39) = 20;
    sub_27237854C();
    v30 = *(v3 + 112);
    v31 = *(v3 + 120);
    LOBYTE(v39) = 21;
    sub_27237854C();
    v32 = *(v3 + 121);
    LOBYTE(v39) = 22;
    sub_27237859C();
    v33 = type metadata accessor for VARuntimeParameters();
    v34 = v33[27];
    LOBYTE(v39) = 23;
    sub_272376EBC();
    sub_272351D44(&qword_280883208, MEMORY[0x277CC9788]);
    sub_2723785DC();
    v35 = *(v3 + v33[28]);
    LOBYTE(v39) = 24;
    sub_2723785CC();
    v36 = *(v3 + v33[29]);
    LOBYTE(v39) = 25;
    sub_27237859C();
    v37 = *(v3 + v33[30]);
    LOBYTE(v39) = 26;
    sub_2723785AC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t VARuntimeParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v45 = sub_272376EBC();
  v50 = *(v45 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v45);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_2721F065C(&qword_280883210, qword_2723867D0);
  v48 = *(v52 - 8);
  v5 = *(v48 + 64);
  MEMORY[0x28223BE20](v52);
  v7 = &v42 - v6;
  v8 = type metadata accessor for VARuntimeParameters();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84F90];
  *v12 = MEMORY[0x277D84F90];
  *(v12 + 2) = 1061997773;
  *(v12 + 6) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 1;
  *(v12 + 5) = 0;
  *(v12 + 24) = 1;
  *(v12 + 13) = 1050253722;
  *(v12 + 7) = 0;
  *(v12 + 8) = 0;
  *(v12 + 36) = 514;
  v12[74] = 2;
  *(v12 + 75) = 0;
  v47 = sub_2722A0548(v13);
  *(v12 + 10) = v47;
  *(v12 + 44) = 768;
  v12[90] = 1;
  *(v12 + 12) = 0;
  v12[104] = 1;
  *(v12 + 14) = 0;
  *(v12 + 60) = 257;
  v14 = v9[29];
  sub_272376E6C();
  v15 = v9[30];
  *&v12[v15] = 1;
  v16 = v9[31];
  v12[v16] = 0;
  v17 = v9[32];
  v54 = a1;
  v55 = v12;
  *&v12[v17] = 0x3FA999999999999ALL;
  v18 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_272351C48();
  v51 = v7;
  v19 = v53;
  sub_2723787AC();
  if (v19)
  {
    v37 = v55;
  }

  else
  {
    v20 = v48;
    v42 = v14;
    v43 = v15;
    v44 = v16;
    v53 = v17;
    v22 = v49;
    v21 = v50;
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    v58 = 0;
    sub_27228F60C(&qword_280881800);
    sub_2723784FC();
    v24 = v55;
    *v55 = v56;
    LOBYTE(v56) = 1;
    sub_2723784DC();
    *(v24 + 2) = v25;
    LOBYTE(v56) = 2;
    v24[12] = sub_2723784BC() & 1;
    LOBYTE(v56) = 3;
    v24[13] = sub_2723784BC() & 1;
    v58 = 4;
    sub_27237848C();
    v26 = v57;
    *(v24 + 1) = v56;
    v24[32] = v26;
    LOBYTE(v56) = 5;
    *(v24 + 5) = sub_27237847C();
    v24[48] = v27 & 1;
    LOBYTE(v56) = 6;
    v24[49] = sub_2723784BC() & 1;
    LOBYTE(v56) = 7;
    sub_2723784DC();
    *(v24 + 13) = v28;
    LOBYTE(v56) = 8;
    *(v24 + 7) = sub_27237843C();
    *(v24 + 8) = v29;
    LOBYTE(v56) = 9;
    v55[72] = sub_27237844C();
    LOBYTE(v56) = 10;
    v55[73] = sub_27237844C();
    LOBYTE(v56) = 11;
    v55[74] = sub_27237844C();
    LOBYTE(v56) = 12;
    v55[75] = sub_2723784BC() & 1;
    LOBYTE(v56) = 13;
    v55[76] = sub_2723784BC() & 1;
    LOBYTE(v56) = 14;
    v55[77] = sub_2723784BC() & 1;
    v58 = 15;
    sub_272351CF0();
    sub_2723784FC();
    v55[78] = v56;
    sub_2721F065C(&qword_280882C38, &unk_272384450);
    v58 = 16;
    sub_27230C50C();
    sub_2723784FC();

    *(v55 + 10) = v56;
    v58 = 17;
    sub_272316B34();
    sub_2723784FC();
    v55[88] = v56;
    v58 = 18;
    sub_272316B88();
    sub_2723784FC();
    v55[89] = v56;
    LOBYTE(v56) = 19;
    v55[90] = sub_2723784BC() & 1;
    LOBYTE(v56) = 20;
    v30 = sub_27237845C();
    v31 = v55;
    *(v55 + 12) = v30;
    v31[104] = v32 & 1;
    LOBYTE(v56) = 21;
    v33 = sub_27237845C();
    v34 = v55;
    *(v55 + 14) = v33;
    v34[120] = v35 & 1;
    LOBYTE(v56) = 22;
    v55[121] = sub_2723784BC() & 1;
    LOBYTE(v56) = 23;
    sub_272351D44(&qword_280883220, MEMORY[0x277CC9788]);
    sub_2723784FC();
    (*(v21 + 40))(&v55[v42], v22, v45);
    LOBYTE(v56) = 24;
    *&v55[v43] = sub_2723784EC();
    LOBYTE(v56) = 25;
    v36 = sub_2723784BC();
    v37 = v55;
    v55[v44] = v36 & 1;
    LOBYTE(v56) = 26;
    v38 = v51;
    v39 = v52;
    sub_2723784CC();
    v41 = v40;
    (*(v20 + 8))(v38, v39);
    *(v37 + v53) = v41;
    sub_272216374(v37, v46);
  }

  sub_2722039C8(v54);
  return sub_272216BD8(v37);
}

uint64_t sub_272350D58@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x60))();
  *a2 = result;
  return result;
}

uint64_t sub_272350DB4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x68);
  v4 = swift_unknownObjectRetain();
  return v3(v4);
}

uint64_t sub_272350E60()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_272350EC0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_272350F58;
}

void sub_272350F58(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_272350FD8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_272351034(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x80);
  v4 = *a1;
  return v3(v2);
}

void *sub_27235109C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2723510E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VAKeywordSpotter.__allocating_init(delegate:configuration:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  *&v4[OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v6 = *&v4[v5];
  *&v4[v5] = a2;
  v7 = a2;

  v10.receiver = v4;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  swift_unknownObjectRelease();

  return v8;
}

id VAKeywordSpotter.init(delegate:configuration:)(uint64_t a1, void *a2)
{
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  *&v2[OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration] = 0;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a2;
  v6 = a2;

  v9.receiver = v2;
  v9.super_class = type metadata accessor for VAKeywordSpotter();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_272351348()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
  if (!v2 || (v3 = v2, v4 = (*((*v1 & *v2) + 0xA0))(), v3, !v4))
  {
    sub_2722032B4();
    swift_allocError();
    *v10 = 0xD000000000000020;
    v10[1] = 0x8000000272390B40;
    swift_willThrow();
    return v1;
  }

  v5 = (*((*v1 & *v4) + 0xB8))();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {

    return MEMORY[0x277D84F90];
  }

  v1 = sub_2722702A8(*(v5 + 16), 0);
  v8 = sub_27227032C(&v11, v1 + 4, v7, v6);
  result = sub_272270484();
  if (v8 == v7)
  {

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2723514E0()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000023;
  v0[1] = 0x8000000272391B70;
  return swift_willThrow();
}

uint64_t sub_272351560()
{
  sub_2722032B4();
  swift_allocError();
  *v1 = 0xD000000000000023;
  v1[1] = 0x8000000272391B70;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_272351620()
{
  sub_2722032B4();
  swift_allocError();
  *v0 = 0xD000000000000025;
  v0[1] = 0x8000000272391BA0;
  return swift_willThrow();
}

id VAKeywordSpotter.__deallocating_deinit()
{
  v1 = v0;
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2722C389C();
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27237725C();
  v9 = sub_272377EAC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2721E4000, v8, v9, "deinit VAKeywordSpotter", v10, 2u);
    MEMORY[0x2743C69C0](v10, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v11 = OBJC_IVAR____TtC12VoiceActions16VAKeywordSpotter_configuration;
  swift_beginAccess();
  v12 = *&v1[v11];
  *&v1[v11] = 0;

  v13 = type metadata accessor for VAKeywordSpotter();
  v15.receiver = v1;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_dealloc);
}

id VAKeywordSpotter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_272351954(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_27237817C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_27237874C();

      sub_27237790C();
      v13 = sub_27237878C();

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
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
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

BOOL sub_272351B04(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_2723781CC();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t type metadata accessor for VARuntimeParameters()
{
  result = qword_280892930;
  if (!qword_280892930)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_272351C48()
{
  result = qword_2808921A0[0];
  if (!qword_2808921A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808921A0);
  }

  return result;
}

unint64_t sub_272351C9C()
{
  result = qword_280883200;
  if (!qword_280883200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883200);
  }

  return result;
}

unint64_t sub_272351CF0()
{
  result = qword_280883218;
  if (!qword_280883218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883218);
  }

  return result;
}

uint64_t sub_272351D44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_272351DB4()
{
  result = qword_280883238;
  if (!qword_280883238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883238);
  }

  return result;
}

unint64_t sub_272351E0C()
{
  result = qword_280883240;
  if (!qword_280883240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883240);
  }

  return result;
}

uint64_t sub_272351E94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_272376EBC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 108);

    return v9(v10, a2, v8);
  }
}

void *sub_272351F54(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_272376EBC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 108);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_272351FF8()
{
  sub_2723522D0(319, &qword_280883248, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_2723522D0(319, &qword_280883250, MEMORY[0x277D84E88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2723522D0(319, &qword_280883258, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2723522D0(319, &qword_280881708, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_2723522D0(319, &qword_280881718, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_27235225C();
            if (v5 <= 0x3F)
            {
              sub_2723522D0(319, &qword_280883268, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_272376EBC();
                if (v7 <= 0x3F)
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

void sub_27235225C()
{
  if (!qword_280883260)
  {
    sub_2721F214C(&qword_2808817F8, &unk_27237CA80);
    v0 = sub_27237775C();
    if (!v1)
    {
      atomic_store(v0, &qword_280883260);
    }
  }
}

void sub_2723522D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t dispatch thunk of VAKeywordSpotter.addAudioAsync(buffer:hostTime:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xB0);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_272211DBC;

  return v10(a1, a2);
}

uint64_t dispatch thunk of VAKeywordSpotter.stop()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xB8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_272219D80;

  return v6();
}

uint64_t getEnumTagSinglePayload for VARuntimeParameters.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VARuntimeParameters.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_272352A14()
{
  result = qword_280892A40[0];
  if (!qword_280892A40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280892A40);
  }

  return result;
}

unint64_t sub_272352A6C()
{
  result = qword_280892B50;
  if (!qword_280892B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280892B50);
  }

  return result;
}

unint64_t sub_272352AC4()
{
  result = qword_280892B58[0];
  if (!qword_280892B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280892B58);
  }

  return result;
}

uint64_t sub_272352B18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7364726F7779656BLL && a2 == 0xE800000000000000;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000027238EA60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238EA80 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65736F62726576 && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E756F626564 && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x800000027238EB10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E656857706F7473 && a2 == 0xED00007974706D45 || (sub_27237865C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002723892F0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000272391C60 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x800000027238EAB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x800000027238EAD0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x800000027238EAF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272391C80 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000272391CA0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000272391CC0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000272391CF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000272391D10 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238EB30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000027238EB50 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000028 && 0x800000027238EB70 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000027 && 0x800000027238CBB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000028 && 0x800000027238CC00 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x754D736573736170 && a2 == 0xEF686374614D7473 || (sub_27237865C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6F4C686365657073 && a2 == 0xEC000000656C6163 || (sub_27237865C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000019 && 0x800000027238EBD0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000027238EBB0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x4D4C6D6F74737563 && a2 == 0xEE00746867696557)
  {

    return 26;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

unint64_t sub_272353364()
{
  result = qword_280883270;
  if (!qword_280883270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883270);
  }

  return result;
}

_BYTE *sub_2723533B8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_272353458(uint64_t a1, unint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_272376BCC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  sub_272376B8C();
  sub_272203AC4();
  v13 = sub_2723780EC();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v30 = v13;
  v31 = v15;
  sub_272376EAC();
  v16 = sub_272376EBC();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  sub_27237811C();
  sub_2721F40F0(v7, &qword_280882BB8, &unk_272386DF0);

  v17 = sub_2723778AC();
  v19 = v18;

  v30 = v17;
  v31 = v19;
  v36 = 95;
  v37 = 0xE100000000000000;
  v34 = 32;
  v35 = 0xE100000000000000;
  v20 = sub_2723780FC();
  v22 = v21;

  v36 = 0;
  v37 = 0xE000000000000000;
  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  v30 = v20;
  v31 = v22;
  v32 = 0;
  v33 = v23;
  v24 = sub_27237799C();
  v26 = v25;
  if (v25)
  {
    v27 = v24;
    do
    {
      if ((sub_2723777AC() & 1) == 0)
      {
        MEMORY[0x2743C4AC0](v27, v26);
      }

      v27 = sub_27237799C();
      v26 = v28;
    }

    while (v28);
    v26 = v36;
  }

  return v26;
}

uint64_t sub_27235374C(uint64_t a1, unint64_t a2)
{
  sub_272353458(a1, a2);
  sub_272203AC4();
  v2 = sub_2723780FC();

  return v2;
}

uint64_t sub_2723537E8(uint64_t a1, unint64_t a2)
{
  v2 = sub_272353458(a1, a2);
  v19[0] = v2;
  v19[1] = v3;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = sub_272358DBC(0xD000000000000014, 0x8000000272391F40, 0);

  sub_2721F065C(&qword_280883278, &unk_272386E00);
  sub_2722199BC(&qword_280883280, &qword_280883278, &unk_272386E00);
  sub_272203AC4();
  v6 = sub_272377FCC();
  v8 = v7;
  v9 = sub_2723777FC();
  v10 = [v5 matchesInString:v9 options:0 range:{v6, v8}];

  sub_272358E98();
  v11 = sub_272377AFC();

  v12 = sub_272353BAC(v11, v19);

  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = v5;
    v14 = (v12 + 40);
    do
    {
      v17 = *(v14 - 1);
      v18 = *v14;

      sub_2723780FC();
      v2 = sub_2723780FC();

      swift_bridgeObjectRelease_n();

      v14 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
  }

  return v2;
}

unint64_t sub_272353BAC(unint64_t result, uint64_t *a2)
{
  if (result >> 62)
  {
    goto LABEL_18;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v3 = MEMORY[0x277D84F90];
    if (!v2)
    {
      return v3;
    }

    v4 = result;
    v35 = MEMORY[0x277D84F90];
    result = sub_27220056C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      break;
    }

    v5 = 0;
    v3 = v35;
    v6 = v4;
    v31 = v4;
    v32 = v4 & 0xC000000000000001;
    v29 = v4 & 0xFFFFFFFFFFFFFF8;
    v30 = v2;
    while (!__OFADD__(v5, 1))
    {
      v34 = v5 + 1;
      if (v32)
      {
        v7 = MEMORY[0x2743C5370](v5, v6);
      }

      else
      {
        if (v5 >= *(v29 + 16))
        {
          goto LABEL_17;
        }

        v7 = *(v6 + 8 * v5 + 32);
      }

      v8 = v7;
      v10 = *a2;
      v9 = a2[1];

      [v8 range];
      v11 = *a2;
      v12 = a2[1];

      sub_272377E4C();
      v14 = v13;

      if (v14)
      {
        goto LABEL_20;
      }

      v15 = sub_272377A5C();
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v22 = MEMORY[0x2743C4A20](v15, v17, v19, v21);
      v24 = v23;

      v26 = *(v35 + 16);
      v25 = *(v35 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_27220056C((v25 > 1), v26 + 1, 1);
      }

      *(v35 + 16) = v26 + 1;
      v27 = v35 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      ++v5;
      v6 = v31;
      if (v34 == v30)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v28 = result;
    v2 = sub_2723783AC();
    result = v28;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

VoiceActions::VASubstringMatcher_optional __swiftcall VASubstringMatcher.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t VASubstringMatcher.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000001ELL;
  }

  else
  {
    result = 0x736275537473756ALL;
  }

  *v0;
  return result;
}

uint64_t sub_272353E9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000001ELL;
  }

  else
  {
    v4 = 0x736275537473756ALL;
  }

  if (v3)
  {
    v5 = 0xED0000676E697274;
  }

  else
  {
    v5 = 0x8000000272391D40;
  }

  if (*a2)
  {
    v6 = 0xD00000000000001ELL;
  }

  else
  {
    v6 = 0x736275537473756ALL;
  }

  if (*a2)
  {
    v7 = 0x8000000272391D40;
  }

  else
  {
    v7 = 0xED0000676E697274;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_27237865C();
  }

  return v9 & 1;
}

uint64_t sub_272353F54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = a1;
  if (a1 <= 4u)
  {
    v8 = 0xE600000000000000;
    v9 = 0x8000000272391DF0;
    v10 = 0xD000000000000021;
    v11 = 0x8000000272391E20;
    v12 = 0xD00000000000001ALL;
    if (a1 == 3)
    {
      v12 = 0xD000000000000016;
    }

    else
    {
      v11 = 0x8000000272391E40;
    }

    if (a1 != 2)
    {
      v10 = v12;
      v9 = v11;
    }

    if (a1)
    {
      v13 = 0xD000000000000016;
    }

    else
    {
      v13 = 0x6D6F74737563;
    }

    if (a1)
    {
      v8 = 0x8000000272391DD0;
    }

    if (a1 <= 1u)
    {
      v6 = v13;
    }

    else
    {
      v6 = v10;
    }

    if (v3 <= 1)
    {
      v7 = v8;
    }

    else
    {
      v7 = v9;
    }
  }

  else if (a1 > 7u)
  {
    v14 = 0x8000000272391EE0;
    v15 = 0xD000000000000022;
    if (a1 != 9)
    {
      v15 = 0xD000000000000021;
      v14 = 0x8000000272391F10;
    }

    if (a1 == 8)
    {
      v6 = 0xD00000000000001CLL;
    }

    else
    {
      v6 = v15;
    }

    if (v3 == 8)
    {
      v7 = 0x8000000272391EC0;
    }

    else
    {
      v7 = v14;
    }
  }

  else
  {
    v4 = 0x8000000272391E80;
    v5 = 0xD00000000000001DLL;
    if (a1 != 6)
    {
      v5 = 0xD00000000000001BLL;
      v4 = 0x8000000272391EA0;
    }

    if (a1 == 5)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = v5;
    }

    if (v3 == 5)
    {
      v7 = 0x8000000272391E60;
    }

    else
    {
      v7 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v16 = 0xE600000000000000;
        v2 = 0x6D6F74737563;
        goto LABEL_58;
      }

      v17 = "defaultForVoiceActions";
    }

    else
    {
      if (a2 == 2)
      {
        v18 = "defaultRequiringMatchAtStartOrEnd";
        goto LABEL_57;
      }

      if (a2 != 3)
      {
        v16 = 0x8000000272391E40;
        v2 = 0xD00000000000001ALL;
        goto LABEL_58;
      }

      v17 = "simpleLevenshteinNoisy";
    }

    v16 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_58;
  }

  if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v16 = 0x8000000272391EC0;
      v2 = 0xD00000000000001CLL;
      goto LABEL_58;
    }

    if (a2 == 9)
    {
      v16 = 0x8000000272391EE0;
      v2 = 0xD000000000000022;
      goto LABEL_58;
    }

    v18 = "euclidDistMedReqMatchAtStartOrEnd";
LABEL_57:
    v16 = (v18 - 32) | 0x8000000000000000;
    v2 = 0xD000000000000021;
    goto LABEL_58;
  }

  if (a2 == 5)
  {
    v16 = 0x8000000272391E60;
    v2 = 0xD000000000000017;
  }

  else if (a2 == 6)
  {
    v16 = 0x8000000272391E80;
    v2 = 0xD00000000000001DLL;
  }

  else
  {
    v16 = 0x8000000272391EA0;
    v2 = 0xD00000000000001BLL;
  }

LABEL_58:
  if (v6 == v2 && v7 == v16)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_27237865C();
  }

  return v19 & 1;
}

uint64_t sub_272354234(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7361637265776F6CLL;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x746957797A7A7566;
    v4 = 0xEF73656361705368;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000013;
    }

    else
    {
      v3 = 0xD00000000000001ELL;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000272391D80;
    }

    else
    {
      v4 = 0x8000000272391DA0;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x7361637265776F6CLL;
    }

    else
    {
      v7 = 1701736302;
    }

    if (a2)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xE400000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEF73656361705368;
    if (v3 != 0x746957797A7A7566)
    {
LABEL_37:
      v8 = sub_27237865C();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000272391D80;
    }

    else
    {
      v6 = 0x8000000272391DA0;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_2723543E8()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_27235447C()
{
  *v0;
  sub_27237790C();
}

uint64_t sub_2723544FC()
{
  sub_27237790C();
}

uint64_t sub_2723546A0()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_272354730@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27237840C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_272354790(unint64_t *a1@<X8>)
{
  v2 = 0x8000000272391D40;
  v3 = 0x736275537473756ALL;
  if (*v1)
  {
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    v2 = 0xED0000676E697274;
  }

  *a1 = v3;
  a1[1] = v2;
}

VoiceActions::VAStringTransforms_optional __swiftcall VAStringTransforms.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VAStringTransforms.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x746957797A7A7566;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7361637265776F6CLL;
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

uint64_t sub_2723549BC()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_272354AAC()
{
  *v0;
  *v0;
  *v0;
  sub_27237790C();
}

uint64_t sub_272354B88()
{
  v1 = *v0;
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

void sub_272354C80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xEF73656361705368;
  v6 = 0x746957797A7A7566;
  v7 = 0xD000000000000013;
  v8 = 0x8000000272391D80;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001ELL;
    v8 = 0x8000000272391DA0;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x7361637265776F6CLL;
    v3 = 0xE900000000000065;
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

void *sub_272354DEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 136))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_272354E48(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 144))(&v4);
}

void *sub_272354EA0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_272354EFC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 168))(&v4);
}

void *sub_272354FA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 184))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_272355000(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 192))(&v4);
}

uint64_t sub_272355058@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 208))();
  *a2 = result & 1;
  return result;
}

void *sub_2723550F0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 232))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_27235514C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 240))(&v4);
}

uint64_t sub_2723551A4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 20);
  return result;
}

uint64_t sub_2723551E8(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 20) = v2;
  return result;
}

uint64_t sub_272355274(uint64_t a1, uint64_t a2)
{
  v4 = sub_272376EBC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  return (*(**a2 + 264))(v7);
}

uint64_t sub_272355374@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v4 = sub_272376EBC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_2723553FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v4 = sub_272376EBC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

VoiceActions::VAStringMatchingStrategy::Recipe_optional __swiftcall VAStringMatchingStrategy.Recipe.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_27237840C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t VAStringMatchingStrategy.Recipe.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6D6F74737563;
    v7 = 0xD000000000000021;
    v8 = 0xD000000000000016;
    if (v1 != 3)
    {
      v8 = 0xD00000000000001ALL;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0xD000000000000016;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD00000000000001CLL;
    v3 = 0xD000000000000022;
    if (v1 != 9)
    {
      v3 = 0xD000000000000021;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000017;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2723556C4()
{
  v1 = *v0;
  sub_27237874C();
  sub_2723544FC();
  return sub_27237878C();
}

uint64_t sub_272355714()
{
  v1 = *v0;
  sub_27237874C();
  sub_2723544FC();
  return sub_27237878C();
}

unint64_t sub_272355764@<X0>(unint64_t *a1@<X8>)
{
  result = VAStringMatchingStrategy.Recipe.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static VAStringMatchingStrategy.build(name:)(unsigned __int8 *a1)
{
  v2 = sub_27237728C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = type metadata accessor for VAStringMatchingStrategy(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *&v12 = 263169;
  v45 = v12;
  *(v11 + 16) = 263169;
  *(v11 + 20) = 0;
  sub_272376E6C();
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v27 = sub_2722C389C();
        (*(v3 + 16))(v6, v27, v2);
        v28 = sub_27237725C();
        v29 = sub_272377E8C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_2721E4000, v28, v29, "Building .custom VAStringMatchingStrategy - this is expected in unit tests but not intended to be used in production. Recommend giving it a name", v30, 2u);
          MEMORY[0x2743C69C0](v30, -1, -1);
        }

        (*(v3 + 8))(v6, v2);
      }
    }

    else if (v7 == 2)
    {
      swift_beginAccess();
      *(v11 + 19) = 1;
    }

    else
    {
      if (v7 != 3)
      {
        v38 = type metadata accessor for SimpleLevenshteinMatcher(0);
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        v16 = swift_allocObject();
        *(v16 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
        *(v16 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
        *(v16 + 16) = v45;
        *(v16 + 20) = 0;
        sub_272376E6C();

        v17 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord;
        v18 = 3;
        goto LABEL_21;
      }

      v19 = type metadata accessor for SimpleLevenshteinMatcher(0);
      v20 = *(v19 + 48);
      v21 = *(v19 + 52);
      v22 = swift_allocObject();
      *(v22 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
      *(v22 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
      *(v22 + 16) = v45;
      *(v22 + 20) = 0;
      sub_272376E6C();

      *(v22 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 3;
      *(v22 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 0;
      v11 = v22;
    }
  }

  else
  {
    if (v7 > 7)
    {
      if (v7 == 8)
      {
        v35 = type metadata accessor for EuclidGraphemeDistanceMatcher(0);
        v36 = *(v35 + 48);
        v37 = *(v35 + 52);
        v26 = swift_allocObject();
        sub_272358B48();

        *(v26 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FFE666666666666;
      }

      else
      {
        v23 = type metadata accessor for EuclidGraphemeDistanceMatcher(0);
        v24 = *(v23 + 48);
        v25 = *(v23 + 52);
        v26 = swift_allocObject();
        sub_272358B48();
        if (v7 == 9)
        {

          *(v26 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FF0000000000000;
        }

        else
        {
          *(v26 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FFE666666666666;
          (*(*v26 + 216))(1);
        }
      }

      goto LABEL_24;
    }

    if (v7 != 5)
    {
      if (v7 == 6)
      {
        v13 = type metadata accessor for SimpleLevenshteinMatcher(0);
        v14 = *(v13 + 48);
        v15 = *(v13 + 52);
        v16 = swift_allocObject();
        *(v16 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
        *(v16 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
        *(v16 + 16) = v45;
        *(v16 + 20) = 0;
        sub_272376E6C();

        v17 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord;
        v18 = 1;
LABEL_21:
        *(v16 + v17) = v18;
        *(v16 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
        v11 = v16;
        goto LABEL_25;
      }

      v41 = type metadata accessor for EuclidGraphemeDistanceMatcher(0);
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      v26 = swift_allocObject();
      sub_272358B48();

      *(v26 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x4000CCCCCCCCCCCDLL;
LABEL_24:
      v11 = v26;
      goto LABEL_25;
    }

    v31 = type metadata accessor for SimpleLevenshteinMatcher(0);
    v32 = *(v31 + 48);
    v33 = *(v31 + 52);
    v34 = swift_allocObject();
    *(v34 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
    *(v34 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
    *(v34 + 16) = v45;
    *(v34 + 20) = 0;
    sub_272376E6C();

    *(v34 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
    *(v34 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
    v11 = v34;
  }

LABEL_25:
  v46 = v7;
  (*(*v11 + 240))(&v46);
  return v11;
}

uint64_t sub_272355D94()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) = 2;
  *(v3 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength) = 5;
  *(v3 + 16) = 263169;
  *(v3 + 20) = 0;
  sub_272376E6C();
  return v3;
}

uint64_t sub_272355E18()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_272358B48();
  return v3;
}

uint64_t static VAStringMatchingStrategy.defaultForVoiceActions()()
{
  v0 = type metadata accessor for VAStringMatchingStrategy(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 263169;
  *(v3 + 20) = 0;
  sub_272376E6C();
  swift_beginAccess();
  *(v3 + 20) = 1;
  return v3;
}

uint64_t sub_272355EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (*(*v4 + 208))();
  v10 = *v4;
  if (v9)
  {
    if ((*(v10 + 288))(a1, a2, a3, a4))
    {
      return 1;
    }

    else
    {
      v13 = *(*v4 + 296);

      return v13(a1, a2, a3, a4);
    }
  }

  else
  {
    v12 = *(v10 + 304);

    return v12(a1, a2, a3, a4, 25180, 0xE200000000000000, 25180, 0xE200000000000000);
  }
}

uint64_t sub_2723560A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*v8 + 160))(&v51);
  if (v51 <= 1u)
  {
    if (!v51)
    {

      goto LABEL_11;
    }

    v18 = sub_2723778AC();
  }

  else if (v51 == 2)
  {
    v18 = sub_272353458(a1, a2);
  }

  else
  {
    if (v51 == 3)
    {
      v49 = sub_272353458(a1, a2);
      v50 = v16;
      v47 = 32;
      v48 = 0xE100000000000000;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_272203AC4();
      a1 = sub_2723780FC();
      a2 = v17;

      goto LABEL_11;
    }

    v18 = sub_2723537E8(a1, a2);
  }

  a1 = v18;
  a2 = v19;
LABEL_11:
  (*(*v8 + 184))(&v51, v18);
  if (v51 <= 1u)
  {
    if (!v51)
    {

      goto LABEL_21;
    }

    v22 = sub_2723778AC();
  }

  else if (v51 == 2)
  {
    v22 = sub_272353458(a3, a4);
  }

  else
  {
    if (v51 == 3)
    {
      v49 = sub_272353458(a3, a4);
      v50 = v20;
      v47 = 32;
      v48 = 0xE100000000000000;
      v45 = 0;
      v46 = 0xE000000000000000;
      sub_272203AC4();
      a3 = sub_2723780FC();
      a4 = v21;

      goto LABEL_21;
    }

    v22 = sub_2723537E8(a3, a4);
  }

  a3 = v22;
  a4 = v23;
LABEL_21:
  (*(*v8 + 136))(&v45, v22);
  if (v45)
  {
    v24 = objc_opt_self();
    v25 = sub_2723777FC();

    v26 = [v24 escapedPatternForString_];

    v27 = sub_27237782C();
    v29 = v28;

    v49 = a5;
    v50 = a6;

    MEMORY[0x2743C4AD0](v27, v29);

    MEMORY[0x2743C4AD0](a7, a8);

    v30 = v49;
    v31 = v50;
    v32 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v33 = sub_272358DBC(v30, v31, 0);
    if (v33)
    {
      v36 = HIBYTE(a4) & 0xF;
      if ((a4 & 0x2000000000000000) == 0)
      {
        v36 = a3;
      }

      v37 = 7;
      if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
      {
        v37 = 11;
      }

      v49 = 15;
      v50 = v37 | (v36 << 16);
      v47 = a3;
      v48 = a4;
      v38 = v33;

      sub_2721F065C(&qword_280883278, &unk_272386E00);
      sub_2722199BC(&qword_280883280, &qword_280883278, &unk_272386E00);
      sub_272203AC4();
      v39 = sub_272377FCC();
      v41 = v40;
      v42 = sub_2723777FC();

      v43 = [v38 firstMatchInString:v42 options:0 range:{v39, v41}];

      if (v43)
      {

        v34 = 1;
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {

      v34 = 0;
    }
  }

  else
  {
    v49 = a3;
    v50 = a4;
    v47 = a1;
    v48 = a2;
    sub_272203AC4();
    v34 = sub_27237813C();
  }

  return v34 & 1;
}

uint64_t sub_272356578(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v81 = a7;
  v82 = a8;
  v88 = a3;
  v15 = sub_272376BCC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v8 + 160))(&v95, v18);
  if (v95 <= 1u)
  {
    if (!v95)
    {

      goto LABEL_11;
    }

    v24 = sub_2723778AC();
  }

  else if (v95 == 2)
  {
    v24 = sub_272353458(a1, a2);
  }

  else
  {
    if (v95 == 3)
    {
      v21 = sub_272353458(a1, a2);
      v87 = a4;
      v93 = v21;
      v94 = v22;
      v91 = 32;
      v92 = 0xE100000000000000;
      v89 = 0;
      v90 = 0xE000000000000000;
      sub_272203AC4();
      a1 = sub_2723780FC();
      a2 = v23;
      a4 = v87;

      goto LABEL_11;
    }

    v24 = sub_2723537E8(a1, a2);
  }

  a1 = v24;
  a2 = v25;
LABEL_11:
  (*(*v8 + 184))(&v95, v24);
  v79 = a5;
  v80 = a6;
  if (v95 <= 1u)
  {
    if (!v95)
    {
      v87 = a4;

      goto LABEL_21;
    }

    v29 = sub_2723778AC();
LABEL_20:
    v87 = v30;
    v88 = v29;
    goto LABEL_21;
  }

  if (v95 == 2)
  {
    v29 = sub_272353458(v88, a4);
    goto LABEL_20;
  }

  if (v95 != 3)
  {
    v29 = sub_2723537E8(v88, a4);
    goto LABEL_20;
  }

  v93 = sub_272353458(v88, a4);
  v94 = v26;
  v91 = 32;
  v92 = 0xE100000000000000;
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_272203AC4();
  v27 = sub_2723780FC();
  v87 = v28;
  v88 = v27;

LABEL_21:
  v93 = a1;
  v94 = a2;
  sub_272376B8C();
  v85 = sub_272203AC4();
  v31 = sub_2723780AC();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v86 = v20;
  v84 = v33;
  v33(v20, v15);

  v34 = 0;
  v35 = *(v31 + 16);
  v36 = v31 + 40;
  v37 = MEMORY[0x277D84F90];
LABEL_22:
  v38 = (v36 + 16 * v34);
  while (v35 != v34)
  {
    if (v34 >= *(v31 + 16))
    {
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:

      v60 = MEMORY[0x277D84F90];
LABEL_51:
      v61 = 0;
      v62 = v60[2];
      while (v62 != v61)
      {
        if (v61 >= v60[2])
        {
          __break(1u);
          goto LABEL_101;
        }

        v63 = v61 + 1;
        v35 = v60[v61 + 4];
        v64 = *(*v9 + 312);

        v36 = v64(v37, v35);

        v61 = v63;
        if (v36)
        {

          return 1;
        }
      }

      return 0;
    }

    ++v34;
    v40 = *(v38 - 1);
    v39 = *v38;
    v38 += 2;
    v41 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v41 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v37;
      v43 = v37;
      v83 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27220056C(0, *(v37 + 16) + 1, 1);
        v43 = v93;
      }

      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      if (v45 >= v44 >> 1)
      {
        v78 = v36;
        sub_27220056C((v44 > 1), v45 + 1, 1);
        v36 = v78;
        v43 = v93;
      }

      *(v43 + 16) = v45 + 1;
      v46 = v43 + 16 * v45;
      *(v46 + 32) = v40;
      *(v46 + 40) = v39;
      v37 = v43;
      v32 = v83;
      goto LABEL_22;
    }
  }

  v93 = v88;
  v94 = v87;
  v35 = v86;
  sub_272376B8C();
  v47 = sub_2723780AC();
  v84(v35, v15);

  v48 = 0;
  v49 = *(v47 + 16);
  v36 = MEMORY[0x277D84F90];
LABEL_34:
  v50 = (v47 + 40 + 16 * v48);
  while (v49 != v48)
  {
    if (v48 >= *(v47 + 16))
    {
      goto LABEL_98;
    }

    ++v48;
    v51 = *(v50 - 1);
    v35 = *v50;
    v50 += 2;
    v52 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v52 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (v52)
    {
      v88 = v37;

      v53 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v36;
      if ((v53 & 1) == 0)
      {
        sub_27220056C(0, *(v36 + 16) + 1, 1);
        v36 = v93;
      }

      v55 = *(v36 + 16);
      v54 = *(v36 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_27220056C((v54 > 1), v55 + 1, 1);
        v36 = v93;
      }

      *(v36 + 16) = v55 + 1;
      v56 = v36 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v35;
      v37 = v88;
      goto LABEL_34;
    }
  }

  v57 = *(v36 + 16);
  v58 = *(v37 + 16);
  v59 = v57 - v58;
  if (v57 < v58)
  {

    return 0;
  }

  if (v81 == 36 && v82 == 0xE100000000000000 || (sub_27237865C() & 1) != 0)
  {
    sub_2721F065C(&qword_280883290, &qword_272386E10);
    v60 = swift_allocObject();
    *(v60 + 1) = xmmword_27237AF80;
    v60[4] = sub_272356ECC(v58, v36);
    goto LABEL_51;
  }

  if (v79 == 94 && v80 == 0xE100000000000000 || (result = sub_27237865C(), (result & 1) != 0))
  {
    sub_2721F065C(&qword_280883290, &qword_272386E10);
    v60 = swift_allocObject();
    *(v60 + 1) = xmmword_27237AF80;
    v66 = *(v36 + 16);
    if (v66 >= v58)
    {
      v66 = v58;
    }

    v67 = 2 * v66;
    if (v58)
    {
      v35 = v67 + 1;
    }

    else
    {
      v35 = 1;
    }

    sub_27237868C();
    swift_unknownObjectRetain_n();
    v68 = swift_dynamicCastClass();
    if (!v68)
    {
      swift_unknownObjectRelease();
      v68 = MEMORY[0x277D84F90];
    }

    v69 = *(v68 + 16);

    if (v69 == v35 >> 1)
    {
      v35 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v35)
      {
LABEL_72:
        v60[4] = v35;
        goto LABEL_51;
      }

      v35 = MEMORY[0x277D84F90];
LABEL_71:
      swift_unknownObjectRelease();
      goto LABEL_72;
    }

LABEL_105:
    swift_unknownObjectRelease();
    sub_272359078(v36, v36 + 32, 0, v35);
    v35 = v77;
    goto LABEL_71;
  }

  if (v59 >= -1)
  {
    if (v59 == -1)
    {
      goto LABEL_99;
    }

    v35 = v36 + 32;

    v70 = 0;
    v88 = v59 + 1;
    v60 = MEMORY[0x277D84F90];
    while (1)
    {
      v71 = v70 + v58;
      if (__OFADD__(v70, v58))
      {
        break;
      }

      if (v71 < v70)
      {
        goto LABEL_102;
      }

      v72 = *(v36 + 16);
      if (v72 < v71)
      {
        goto LABEL_103;
      }

      if (__OFSUB__(v71, v70))
      {
        goto LABEL_104;
      }

      if (v72 == v58)
      {

        v73 = v36;
      }

      else if (v58)
      {
        if (v58 < 1)
        {
          v73 = MEMORY[0x277D84F90];
        }

        else
        {
          sub_2721F065C(&qword_280881860, &unk_27237C340);
          v73 = swift_allocObject();
          result = j__malloc_size(v73);
          v76 = result - 32;
          if (result < 32)
          {
            v76 = result - 17;
          }

          v73[2] = v58;
          v73[3] = 2 * (v76 >> 4);
        }

        if (v70 == v71)
        {
          goto LABEL_107;
        }

        swift_arrayInitWithCopy();
      }

      else
      {
        v73 = MEMORY[0x277D84F90];
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_272358F44(0, v60[2] + 1, 1, v60);
        v60 = result;
      }

      v75 = v60[2];
      v74 = v60[3];
      if (v75 >= v74 >> 1)
      {
        result = sub_272358F44((v74 > 1), v75 + 1, 1, v60);
        v60 = result;
      }

      ++v70;
      v60[2] = v75 + 1;
      v60[v75 + 4] = v73;
      v35 += 16;
      if (v88 == v70)
      {

        goto LABEL_51;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  __break(1u);
LABEL_107:
  __break(1u);
  return result;
}

unint64_t sub_272356ECC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = result;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= result)
  {
    v4 = result;
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  result = sub_27220056C(0, v4, 0);
  v5 = v27;
  v6 = *(a2 + 16);
  if (!v6)
  {

    return v5;
  }

  v7 = 0;
  v8 = 0;
  v9 = a2 + 40;
  v25 = *(a2 + 16);
  v24 = v6 - 1;
  do
  {
    v10 = (v9 + 16 * v7);
    while (1)
    {
      if (v7 >= *(a2 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = v7 + 1;
      v14 = *(v27 + 16);
      if (v14 >= v3)
      {
        break;
      }

      v15 = *(v27 + 24);

      if (v14 >= v15 >> 1)
      {
        result = sub_27220056C((v15 > 1), v14 + 1, 1);
      }

      *(v27 + 16) = v14 + 1;
      v16 = v27 + 16 * v14;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      v10 += 2;
      v7 = v13;
      if (v25 == v13)
      {
        goto LABEL_23;
      }
    }

    v17 = *v10;

    if (v8 >= v14)
    {
      goto LABEL_33;
    }

    v18 = v27 + 16 * v8;
    v19 = *(v18 + 40);
    *(v18 + 32) = v11;
    *(v18 + 40) = v12;

    if ((v8 + 1) < v3)
    {
      ++v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = a2 + 40;
  }

  while (v24 != v7++);
LABEL_23:

  if (!v8)
  {
    return v5;
  }

  v21 = *(v27 + 16);
  v26 = MEMORY[0x277D84F90];
  result = sub_27220056C(0, v21, 0);
  if (v21 >= v8)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    v22 = *(v27 + 16);
    if (v22 >= v8 && v22 >= v21)
    {

      sub_272359DCC(v23, v27 + 32, v8, (2 * v21) | 1);

      sub_272359DCC(v27, v27 + 32, 0, (2 * v8) | 1);

      return v26;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

BOOL sub_272357118(uint64_t a1, uint64_t a2)
{
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  if (v10 == *(a2 + 16))
  {
    v11 = (a1 + 40);
    v12 = (a2 + 40);
    v13 = v10 + 1;
    do
    {
      v14 = --v13 == 0;
      if (!v13)
      {
        break;
      }

      v27 = v11 + 2;
      v15 = v12 + 2;
      v17 = *(v11 - 1);
      v16 = *v11;
      v18 = *(v12 - 1);
      v19 = *v12;
      v20 = *(*v2 + 320);

      LOBYTE(v17) = v20(v17, v16, v18, v19);

      v12 = v15;
      v11 = v27;
    }

    while ((v17 & 1) != 0);
  }

  else
  {
    v21 = sub_2722C389C();
    (*(v6 + 16))(v9, v21, v5);
    v22 = sub_27237725C();
    v23 = sub_272377E8C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2721E4000, v22, v23, "Expect needleWords.count == hayWords.count", v24, 2u);
      MEMORY[0x2743C69C0](v24, -1, -1);
    }

    (*(v6 + 8))(v9, v5);
    return 0;
  }

  return v14;
}

uint64_t sub_27235733C()
{
  v0 = sub_27237728C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2722C389C();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_27237725C();
  v7 = sub_272377E8C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2721E4000, v6, v7, "Abstract WordIteratingMatcher used", v8, 2u);
    MEMORY[0x2743C69C0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_272357494()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 263169;
  *(v3 + 20) = 0;
  sub_272376E6C();
  return v3;
}

uint64_t sub_2723574FC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_272357560(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_27237791C() >= *(v4 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_requireExactMatchBelowNeedleWordLength))
  {
    result = sub_27237791C();
    if (result < 0)
    {
      goto LABEL_51;
    }

    if (result)
    {
      v10 = result;
      v11 = sub_272377B5C();
      *(v11 + 16) = v10;
      bzero((v11 + 32), 8 * v10);
    }

    result = sub_27237791C();
    if (result < 0)
    {
LABEL_52:
      __break(1u);
    }

    else
    {
      v12 = result;
      v13 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v14 = sub_272275CE4(result + 1, 0);
        result = sub_272359D28(v41, (v14 + 4), v13, 0, v12);
        if (result == v13)
        {
          v39 = v4;
          v15 = HIBYTE(a2) & 0xF;
          v41[0] = a1;
          v41[1] = a2;
          if ((a2 & 0x2000000000000000) == 0)
          {
            v15 = a1 & 0xFFFFFFFFFFFFLL;
          }

          v41[2] = 0;
          v41[3] = v15;

          result = sub_27237799C();
          if (v16)
          {
            v17 = result;
            v18 = v16;
            v19 = 0;
            while (1)
            {
              if (__OFADD__(v19++, 1))
              {
                goto LABEL_50;
              }

              sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
              v22 = swift_allocObject();
              *(v22 + 16) = xmmword_27237AF80;
              *(v22 + 32) = v19;
              v40 = v22;

              sub_272359C3C(v23);
              v24 = v40;

              v25 = sub_27237799C();
              if (v26)
              {
                break;
              }

LABEL_18:

              result = sub_27237799C();
              v17 = result;
              v18 = v20;
              v14 = v24;
              if (!v20)
              {
                goto LABEL_42;
              }
            }

            v27 = v25;
            v28 = v26;
            v29 = 0;
            v30 = v14 + 4;
            while (1)
            {
              v31 = v29 + 1;
              if (v18 == v28 && v17 == v27)
              {
              }

              else
              {
                v32 = sub_27237865C();

                if ((v32 & 1) == 0)
                {
                  v34 = v14[2];
                  if (v29 >= v34)
                  {
                    goto LABEL_46;
                  }

                  if (v31 >= v34)
                  {
                    goto LABEL_47;
                  }

                  if (v29 >= *(v24 + 16))
                  {
                    goto LABEL_48;
                  }

                  v35 = *v30;
                  if (v30[1] < *v30)
                  {
                    v35 = v30[1];
                  }

                  if (*(v24 + 8 * v29 + 32) < v35)
                  {
                    v35 = *(v24 + 8 * v29 + 32);
                  }

                  v33 = v35 + 1;
                  if (__OFADD__(v35, 1))
                  {
                    goto LABEL_49;
                  }

                  goto LABEL_36;
                }
              }

              if (v29 >= v14[2])
              {
                goto LABEL_45;
              }

              v33 = *v30;
LABEL_36:
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_272244CD8(v24);
                v24 = result;
              }

              if (v31 >= *(v24 + 16))
              {
                __break(1u);
LABEL_45:
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
                goto LABEL_52;
              }

              *(v24 + 8 * v29 + 40) = v33;
              v27 = sub_27237799C();
              v28 = v36;
              ++v30;
              ++v29;
              if (!v36)
              {
                goto LABEL_18;
              }
            }
          }

          v24 = v14;
LABEL_42:

          v37 = *(v24 + 16);
          if (v37)
          {
            v38 = *(v24 + 8 * v37 + 24);

            return *(v39 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD24SimpleLevenshteinMatcher_maxLevDistancePerWord) >= v38;
          }

LABEL_55:
          __break(1u);
          return result;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  return sub_27237865C();
}

uint64_t sub_272357930()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2723579CC()
{
  v1 = v0;
  v2 = sub_27237752C();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v35 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_27237751C();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_272376EBC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v32 - v15;
  v17 = sub_272376DFC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272376DEC();
  v22 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  swift_beginAccess();
  (*(v18 + 40))(v1 + v22, v21, v17);
  swift_endAccess();
  v23 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v24 = *(v9 + 16);
  v24(v16, v1 + v23, v8);
  (*(v9 + 56))(v16, 0, 1, v8);
  v25 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder;
  swift_beginAccess();
  sub_272359BCC(v16, v1 + v25);
  swift_endAccess();
  v24(v12, v1 + v23, v8);
  (*(v5 + 104))(v33, *MEMORY[0x277CDCC88], v34);
  (*(v36 + 104))(v35, *MEMORY[0x277CDCC90], v37);
  v26 = sub_27237756C();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_27237754C();
  v30 = *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder);
  *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder) = v29;

  return v29;
}

uint64_t sub_272357DE8()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v40 - v4;
  v5 = sub_272376EBC();
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v40 - v9;
  v10 = sub_27237728C();
  v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_272376DFC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - v20;
  sub_272376DEC();
  sub_272376DAC();
  v22 = *(v15 + 8);
  v22(v19, v14);
  v23 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  swift_beginAccess();
  (*(v15 + 16))(v19, v1 + v23, v14);
  LOBYTE(v15) = sub_272376DCC();
  v46 = v22;
  v22(v19, v14);
  if (v15)
  {
    v24 = sub_2722C389C();
    v25 = v45;
    (*(v45 + 16))(v13, v24, v10);
    v26 = sub_27237725C();
    v27 = sub_272377E6C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2721E4000, v26, v27, "Rebuilding stale phonetic embedder", v28, 2u);
      MEMORY[0x2743C69C0](v28, -1, -1);
    }

    (*(v25 + 8))(v13, v10);
    goto LABEL_8;
  }

  v29 = *(v1 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder);
  if (!v29)
  {
LABEL_8:
    v29 = sub_2723579CC();
    goto LABEL_9;
  }

  v30 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder;
  swift_beginAccess();
  v31 = v41;
  sub_2721F07F4(v1 + v30, v41, &qword_280882BB8, &unk_272386DF0);
  v33 = v43;
  v32 = v44;
  if ((*(v43 + 48))(v31, 1, v44) == 1)
  {
    sub_2721F40F0(v31, &qword_280882BB8, &unk_272386DF0);
    goto LABEL_8;
  }

  v35 = v42;
  (*(v33 + 32))(v42, v31, v32);
  v36 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  swift_beginAccess();
  v37 = v40;
  (*(v33 + 16))(v40, v1 + v36, v32);

  LOBYTE(v36) = MEMORY[0x2743C3FE0](v35, v37);
  v38 = *(v33 + 8);
  v38(v37, v32);
  if (v36)
  {
    v38(v42, v32);
  }

  else
  {
    v39 = sub_2723579CC();

    v38(v42, v32);
    v29 = v39;
  }

LABEL_9:
  v46(v21, v14);
  return v29;
}

BOOL sub_272358314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v9 = sub_27237728C();
  v48 = *(v9 - 8);
  v49 = v9;
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2721F065C(&qword_2808819D8, &qword_27237CB50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v44 - v14;
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0x7FEFFFFFFFFFFFFFLL;
  v44 = v17 + 16;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v19 = sub_272377C3C();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = v16;
  v20[5] = v17;
  v20[6] = v5;
  v20[7] = a1;
  v45 = a1;
  v21 = v51;
  v20[8] = a2;
  v20[9] = v21;
  v20[10] = a4;
  v20[11] = v18;
  v22 = v16;

  v47 = v5;

  v46 = a4;

  sub_27222A1F0(0, 0, v15, &unk_272387318, v20);

  sub_272377F5C();
  swift_beginAccess();
  v23 = *(v18 + 16);
  if (v23)
  {
    v24 = v23;
    v25 = sub_2722C389C();
    v27 = v48;
    v26 = v49;
    v28 = v50;
    (*(v48 + 16))(v50, v25, v49);
    v29 = v23;
    v30 = sub_27237725C();
    v31 = sub_272377E8C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = v23;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 4) = v35;
      *v33 = v35;
      _os_log_impl(&dword_2721E4000, v30, v31, "Error in PhoneticDistanceMatcher using phonetic embedder: %@ - will not match", v32, 0xCu);
      sub_2721F40F0(v33, &qword_280881A40, &unk_27237D620);
      MEMORY[0x2743C69C0](v33, -1, -1);
      v28 = v50;
      MEMORY[0x2743C69C0](v32, -1, -1);
      v36 = v30;
    }

    else
    {
      v36 = v22;
      v22 = v30;
    }

    (*(v27 + 8))(v28, v26);

    return 0;
  }

  else
  {
    sub_2721F065C(&qword_280882040, &unk_27237E470);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_27237AF80;
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_27237820C();
    v54 = v52;
    v55 = v53;
    MEMORY[0x2743C4AD0](0xD000000000000018, 0x80000002723921C0);
    MEMORY[0x2743C4AD0](v45, a2);
    MEMORY[0x2743C4AD0](32, 0xE100000000000000);
    MEMORY[0x2743C4AD0](v51, v46);
    MEMORY[0x2743C4AD0](2112032, 0xE300000000000000);
    swift_beginAccess();
    v38 = *(v17 + 16);
    sub_272377D2C();
    v39 = v54;
    v40 = v55;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 32) = v39;
    *(v37 + 40) = v40;
    sub_27237872C();

    v41 = *(v17 + 16);
    v42 = *(v47 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance);

    return v41 < v42;
  }
}

uint64_t sub_272358828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v11;
  *(v8 + 104) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x2822009F8](sub_272358864, 0, 0);
}

uint64_t sub_272358864()
{
  v1 = v0[10];
  v0[16] = sub_272357DE8();
  v2 = *(MEMORY[0x277CDCCA0] + 4);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_272358910;
  v4 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28212BFE8](v7, v6, v4, v5);
}

uint64_t sub_272358910(double a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v9 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v6 = sub_272358ABC;
  }

  else
  {
    v7 = *(v4 + 128);

    *(v4 + 152) = a1;
    v6 = sub_272358A3C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_272358A3C()
{
  v1 = v0[19];
  v2 = v0[9];
  swift_beginAccess();
  *(v2 + 16) = v1;
  v3 = v0[8];
  sub_272377F6C();
  v4 = v0[1];

  return v4();
}

uint64_t sub_272358ABC()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];

  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v1;

  v5 = v0[8];
  sub_272377F6C();
  v6 = v0[1];

  return v6();
}

uint64_t sub_272358B48()
{
  *(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder) = 0;
  sub_272376DEC();
  v1 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_maximumDistance) = 0x3FFE666666666666;
  *(v0 + 16) = 263169;
  *(v0 + 20) = 0;
  sub_272376E6C();
  return v0;
}

uint64_t sub_272358C10()
{
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder);

  v2 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  v3 = sub_272376DFC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder, &qword_280882BB8, &unk_272386DF0);
}

uint64_t sub_272358C9C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions24VAStringMatchingStrategy_locale;
  v2 = sub_272376EBC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_cachedPhoneticEmbedder);

  v4 = OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_phoneticEmbedderMade;
  v5 = sub_272376DFC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActionsP33_3F6FD2CD511CD61069CACFF4B3E12CAD29EuclidGraphemeDistanceMatcher_localeOfCachedPhoneticEmbedder, &qword_280882BB8, &unk_272386DF0);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_272358DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2723777FC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_272376C6C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_272358E98()
{
  result = qword_280883288;
  if (!qword_280883288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280883288);
  }

  return result;
}

void *sub_272358F44(void *result, int64_t a2, char a3, void *a4)
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
    sub_2721F065C(&qword_280883290, &qword_272386E10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_272359078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_2721F065C(&qword_280881860, &unk_27237C340);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_272359154()
{
  result = qword_280883298;
  if (!qword_280883298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883298);
  }

  return result;
}

unint64_t sub_2723591F0()
{
  result = qword_2808832B0;
  if (!qword_2808832B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832B0);
  }

  return result;
}

unint64_t sub_27235928C()
{
  result = qword_2808832C8;
  if (!qword_2808832C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832C8);
  }

  return result;
}

uint64_t sub_272359308()
{
  result = sub_272376EBC();
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

uint64_t getEnumTagSinglePayload for VAStringMatchingStrategy.Recipe(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VAStringMatchingStrategy.Recipe(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_272359900()
{
  v0 = sub_272376DFC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_2723599E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_2723599E4()
{
  if (!qword_2808832D0)
  {
    sub_272376EBC();
    v0 = sub_27237801C();
    if (!v1)
    {
      atomic_store(v0, &qword_2808832D0);
    }
  }
}

uint64_t sub_272359A4C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_272359A84()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_272359AEC()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v12 = *(v0 + 72);
  v7 = *(v0 + 88);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_272211DBC;

  return sub_272358828(v8, v9, v10, v2, v3, v4, v5, v6);
}

uint64_t sub_272359BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280882BB8, &unk_272386DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272359C3C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_27220897C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_272359D28(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

char *sub_272359DCC(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v11 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = v6;
      }

LABEL_11:
      result = sub_27220056C(result, v12, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v13 = *(v10 + 16);
    v14 = __OFADD__(v13, v9);
    v15 = v13 + v9;
    if (!v14)
    {
      *(v10 + 16) = v15;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_272359ED8()
{
  result = qword_2808832D8;
  if (!qword_2808832D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832D8);
  }

  return result;
}

unint64_t sub_272359F2C()
{
  result = qword_2808832E0;
  if (!qword_2808832E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832E0);
  }

  return result;
}

unint64_t sub_272359F80()
{
  result = qword_2808832E8;
  if (!qword_2808832E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808832E8);
  }

  return result;
}

void *sub_272359FEC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t VAA2AVerifierModel.init(computeUnits:)(unsigned __int8 *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = MEMORY[0x277D84F90];
  type metadata accessor for VALog();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0x2064616F6CLL, 0xE500000000000000);
  v19 = v9;
  sub_27237836C();
  MEMORY[0x2743C4AD0](0x6569666972657620, 0xEF6C65646F6D2072);
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v17, v18, v8);

  v10 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v11 = v10;
  if (v9)
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  [v10 setComputeUnits_];
  type metadata accessor for _3enrollments_quant_all_verifier_aa();
  v13 = v11;
  v14 = sub_2722E3078(v13);
  if (v2)
  {

    sub_272299680(v8, type metadata accessor for VASignpostInterval);
    v15 = *(v3 + 40);

    type metadata accessor for VAA2AVerifierModel();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v14;
    VASignpostInterval.end(_:)(0);

    sub_272299680(v8, type metadata accessor for VASignpostInterval);
    return sub_2722591B0();
  }
}

void sub_27235A2E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = v3;
  v8 = type metadata accessor for VASingleEnrollmentData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    a1 = MEMORY[0x2743C5370](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_40;
    }

    a1 = *(a1 + 32);
    swift_unknownObjectRetain();
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    sub_2722032B4();
    swift_allocError();
    *v18 = 0xD00000000000001ELL;
    v18[1] = 0x800000027238B8F0;
    swift_willThrow();
    return;
  }

  v4 = v13;
  v84 = v12;
  v85 = v9;
  v87 = v2;
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_27237E510;
  sub_27223EE54();
  *(v14 + 32) = sub_272377FAC();
  v15 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v16 = sub_272257FA4(v14, 65568);
  v17 = v3;
  if (v3)
  {
    swift_unknownObjectRelease();
    return;
  }

  v5 = v16;
  v83 = 0;
  v19 = [v4 shape];
  v2 = sub_272377AFC();

  v82 = v8;
  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_41;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_43;
  }

  for (i = *(v2 + 32); ; i = MEMORY[0x2743C5370](0, v2))
  {
    v21 = i;

    [v5 setObject:v21 atIndexedSubscript:0];

    v8 = v87;
    v22 = (*(*v87 + 168))();
    if (!v22)
    {
      static VAVerifierModelOutput.none.getter(a2);
      swift_unknownObjectRelease();

      return;
    }

    v23 = v22;
    v24 = (*(*v8 + 192))();
    if (!v24)
    {
      static VAVerifierModelOutput.none.getter(a2);
      swift_unknownObjectRelease();

      return;
    }

    v25 = v24;
    v86 = type metadata accessor for _3enrollments_quant_all_verifier_aaInput();
    swift_unknownObjectRetain();
    v26 = v23;
    v27 = v5;
    v17 = v25;
    v28 = v4;
    v29 = v27;
    v30 = v26;
    v31 = sub_272295840(v28, v26, v29, v17);
    v32 = (*(*v8 + 144))();
    v33 = v83;
    v34 = (*(*v32 + 136))(v31);
    v83 = v33;
    if (v33)
    {
      swift_unknownObjectRelease();

      return;
    }

    v81 = v31;
    v73 = v29;
    v74 = v30;
    v5 = v34;

    v36 = (*v8 + 216);
    v78 = *v36;
    v77 = v36;
    v19 = *((v78)(v35) + 16);

    v38 = *(*v5 + 88);
    v79 = *v5 + 88;
    v80 = v38;
    v39 = (v38)(v37);
    v40 = [v39 shape];

    v2 = sub_272377AFC();
    v72[1] = a1;
    if ((v2 & 0xC000000000000001) != 0)
    {
LABEL_43:
      a1 = v17;
      v41 = MEMORY[0x2743C5370](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_45:
        v46 = MEMORY[0x2743C5370](0, v2);
        goto LABEL_24;
      }

      a1 = v17;
      v41 = *(v2 + 32);
    }

    v42 = v41;

    v43 = [v42 integerValue];

    if (v19 != v43)
    {
      static VAVerifierModelOutput.none.getter(a2);
LABEL_37:

      swift_unknownObjectRelease();
      return;
    }

    v19 = &selRef_environment;
    v44 = v80();
    v45 = [v44 shape];

    v2 = sub_272377AFC();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_45;
    }

    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v46 = *(v2 + 32);
LABEL_24:
    v47 = v46;

    v48 = [v47 v19 + 120];

    if ((v48 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (!v48)
    {
      v86 = MEMORY[0x277D84F90];
LABEL_36:
      type metadata accessor for VAKeywordResult();
      v71 = VAKeywordResult.__allocating_init(detections:)(v86);
      sub_2722E45C4(v71, a2);
      goto LABEL_37;
    }

    v4 = 0;
    v86 = MEMORY[0x277D84F90];
    v76 = a2;
    v75 = v5;
    while (1)
    {
      v49 = v80();
      v50 = [v49 objectAtIndexedSubscript_];

      [v50 floatValue];
      v52 = v51;

      v2 = v8;
      v53 = v78();
      if (v4 >= *(v53 + 16))
      {
        break;
      }

      v54 = v84;
      sub_272204F54(v53 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v4, v84);

      v55 = (v54 + *(v82 + 24));
      v56 = *v55;
      v57 = v55[1];

      sub_272299680(v54, type metadata accessor for VASingleEnrollmentData);
      v58 = sub_272241A18();
      v59 = sub_272241A18();
      v60 = sub_272324094();
      v61 = sub_272324094();
      LOBYTE(v54) = sub_2721F7EE4();
      v62 = sub_2721F7EE4();
      v63 = sub_27222CD4C();
      sub_27232409C(v56, v57, v60, v61, v54 & 1, v62 & 1, v63 & 1, 0, v88, v52, v58, v59, 0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_272205014(0, *(v86 + 2) + 1, 1, v86);
      }

      v8 = v87;
      v65 = *(v86 + 2);
      v64 = *(v86 + 3);
      a2 = v76;
      if (v65 >= v64 >> 1)
      {
        v86 = sub_272205014((v64 > 1), v65 + 1, 1, v86);
      }

      ++v4;
      v66 = v86;
      *(v86 + 2) = v65 + 1;
      v67 = &v66[80 * v65];
      *(v67 + 2) = v88[0];
      v68 = v88[1];
      v69 = v88[2];
      v70 = v88[4];
      *(v67 + 5) = v88[3];
      *(v67 + 6) = v70;
      *(v67 + 3) = v68;
      *(v67 + 4) = v69;
      v5 = v75;
      if (v48 == v4)
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_27235ABA4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
}

uint64_t VAA2AVerifierModel.deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t VAA2AVerifierModel.__deallocating_deinit()
{
  v0 = VAVerifierModel.deinit();
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VAA2AVerifierModel.setAudioEnrollments(enrollments:)(Swift::OpaquePointer enrollments)
{
  v3 = v2;
  v5 = *(*v1 + 224);

  v44 = v1;
  v5(v6);
  v7 = *(enrollments._rawValue + 2);
  if (!v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = type metadata accessor for VASingleEnrollmentData();
  v41 = enrollments._rawValue + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
  v42 = *(v8 - 8);
  v9 = *&v41[*(v8 + 20)];
  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = v8;
  v11 = *(*(v9 + 32) + 16);
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_27237E510;
  *(v12 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v13 = objc_allocWithZone(MEMORY[0x277CBFF40]);

  v15 = sub_272257FA4(v14, 65568);
  if (v3)
  {

    return;
  }

  v46 = v11;
  v45 = v10;
  v16 = (*(*v1 + 200))(v15);
  v17 = 0;
  v43 = v7;
  while (1)
  {
    v18 = (*(*v44 + 192))(v16);
    if (!v18)
    {
      break;
    }

    v19 = v18;
    v20 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v19 setObject:v20 atIndexedSubscript:v17];

    if (v43 == ++v17)
    {

      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_27237E4F0;
      *(v21 + 32) = sub_272377DBC();
      *(v21 + 40) = sub_272377DBC();
      v22 = v11;
      *(v21 + 48) = sub_272377DBC();
      v23 = objc_allocWithZone(MEMORY[0x277CBFF40]);
      v24 = sub_272257FA4(v21, 65568);
      v25 = 0;
LABEL_10:
      v26 = 0;
      v39 = v25 + 1;
      while (!v22)
      {
LABEL_11:
        if (++v26 == v45)
        {
          ++v25;
          if (v39 == v43)
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        }
      }

      v27 = 0;
      v28 = *&v41[*(v42 + 72) * v25 + *(v40 + 20)];
      while (1)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_27237E4F0;
        *(v29 + 32) = sub_272377DBC();
        *(v29 + 40) = sub_272377DBC();
        *(v29 + 48) = sub_272377DBC();
        if (v26 >= *(v28 + 16))
        {
          break;
        }

        v30 = *(v28 + 32 + 8 * v26);
        if (v27 >= *(v30 + 16))
        {
          goto LABEL_19;
        }

        v31 = v27 + 1;
        v32 = *(v30 + 4 * v27 + 32);
        v33 = objc_allocWithZone(MEMORY[0x277CCABB0]);
        LODWORD(v34) = v32;
        v35 = [v33 initWithFloat_];
        sub_27223EE54();
        v36 = sub_272377AEC();

        [v24 setObject:v35 forKeyedSubscript:v36];

        v27 = v31;
        v22 = v46;
        if (v46 == v31)
        {
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v37 = *(*v44 + 176);
      v38 = v24;
      v37(v24);

      return;
    }
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_27235B1F0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_resultTime;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27235B234(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_resultTime;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_27235B44C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTaskDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27235B490(double a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTaskDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27235B540()
{
  v1 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_numResultsBelowThresholdAfterSpeechEnd;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27235B584(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_numResultsBelowThresholdAfterSpeechEnd;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27235B634()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_27235B684(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_27235B6F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_27235B790;
}

void sub_27235B790(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_27235B818@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated;
  swift_beginAccess();
  return sub_27233FEA8(v1 + v3, a1);
}

uint64_t sub_27235B870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated;
  swift_beginAccess();
  sub_27233FF9C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_27235B930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  v11 = sub_27235D07C(a1, a2, a3, a4);
  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_27235B9A8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_27237728C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v97 = &v83 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v88 = &v83 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v83 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v89 = &v83 - v18;
  v19 = v1 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters;
  if (*(v1 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters + 13) == 1)
  {
    v17 = (*(*v1 + 344))(v17);
    if (v17)
    {
      v21 = v20;
      v85 = v2;
      ObjectType = swift_getObjectType();
      v92 = 0x203A746C75736552;
      v93 = 0xE800000000000000;
      v22 = (*(*a1 + 224))();
      v86 = v1;
      MEMORY[0x2743C4AD0](v22);

      (*(v21 + 8))(v92, v93, ObjectType, v21);
      v3 = v86;

      v17 = swift_unknownObjectRelease();
    }
  }

  (*(*a1 + 208))(&v92, v17);
  v23 = v93;
  if (v93)
  {
    v24 = v94;
    if (v96)
    {
      v25 = v95;
      v23 = v96;
    }

    else
    {
      v25 = v92;
    }

    v31 = VARuntimeParameters.keywordsToThresholds.getter();
    if (*(v31 + 16) && (v32 = sub_27220038C(v25, v23), (v33 & 1) != 0))
    {
      v34 = *(*(v31 + 56) + 4 * v32);

      if (v24 < v34)
      {
        v35 = v25;
        v36 = sub_2722C389C();
        v37 = v89;
        (*(v6 + 16))(v89, v36, v5);

        v38 = sub_27237725C();
        v39 = sub_272377E7C();

        sub_2721F40F0(&v92, &qword_2808819E0, &qword_27237D890);
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v86 = v3;
          v42 = v41;
          v90 = v41;
          *v40 = 136315650;
          v43 = sub_2721FFD04(v35, v23, &v90);
          v44 = v6;
          v45 = v43;

          *(v40 + 4) = v45;
          *(v40 + 12) = 2048;
          *(v40 + 14) = v24;
          *(v40 + 22) = 2048;
          *(v40 + 24) = v34;
          _os_log_impl(&dword_2721E4000, v38, v39, "Ignoring topDetection %s score %f < %f", v40, 0x20u);
          sub_2722039C8(v42);
          v46 = v42;
          v3 = v86;
          MEMORY[0x2743C69C0](v46, -1, -1);
          MEMORY[0x2743C69C0](v40, -1, -1);

          (*(v44 + 8))(v89, v5);
        }

        else
        {

          (*(v6 + 8))(v37, v5);
        }

        (*(*v3 + 232))(0);
        return (*(*v3 + 256))(0);
      }

      if (*(v19 + 90) == 1 && (sub_27235C498(a1) & 1) != 0)
      {
        v58 = sub_2722C389C();
        v59 = v87;
        (*(v6 + 16))(v87, v58, v5);

        v60 = sub_27237725C();
        v61 = sub_272377E7C();

        sub_2721F40F0(&v92, &qword_2808819E0, &qword_27237D890);
        if (os_log_type_enabled(v60, v61))
        {
          v62 = v25;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v90 = v64;
          *v63 = 136315394;
          v65 = sub_2721FFD04(v62, v23, &v90);
          v66 = v6;
          v67 = v65;

          *(v63 + 4) = v67;
          *(v63 + 12) = 2048;
          *(v63 + 14) = v24;
          _os_log_impl(&dword_2721E4000, v60, v61, "Ignoring repeated result in consecutive stride:%s %f", v63, 0x16u);
          sub_2722039C8(v64);
          MEMORY[0x2743C69C0](v64, -1, -1);
          MEMORY[0x2743C69C0](v63, -1, -1);

          return (*(v66 + 8))(v87, v5);
        }

LABEL_31:

        return (*(v6 + 8))(v59, v5);
      }

      if (sub_27235C960())
      {
        v68 = sub_2722C389C();
        v59 = v88;
        (*(v6 + 16))(v88, v68, v5);

        v60 = sub_27237725C();
        v69 = sub_272377E8C();

        sub_2721F40F0(&v92, &qword_2808819E0, &qword_27237D890);
        if (os_log_type_enabled(v60, v69))
        {
          v70 = v25;
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v90 = v72;
          *v71 = 136315394;
          v73 = sub_2721FFD04(v70, v23, &v90);
          v74 = v6;
          v75 = v73;

          *(v71 + 4) = v75;
          *(v71 + 12) = 2048;
          *(v71 + 14) = v24;
          _os_log_impl(&dword_2721E4000, v60, v69, "Debounce without speech detector: Ignoring %s %f", v71, 0x16u);
          sub_2722039C8(v72);
          MEMORY[0x2743C69C0](v72, -1, -1);
          MEMORY[0x2743C69C0](v71, -1, -1);

          return (*(v74 + 8))(v88, v5);
        }

        goto LABEL_31;
      }

      sub_2721F40F0(&v92, &qword_2808819E0, &qword_27237D890);
      v76 = mach_absolute_time();
      (*(*v3 + 208))(v76);
      v77 = *(*v3 + 232);

      v79 = v77(v78);
      result = (*(*v3 + 344))(v79);
      if (result)
      {
        v81 = v80;
        v82 = swift_getObjectType();
        (*(v81 + 16))(a1, v82, v81);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_2721F40F0(&v92, &qword_2808819E0, &qword_27237D890);

      v47 = sub_2722C389C();
      v48 = v97;
      (*(v6 + 16))(v97, v47, v5);

      v49 = sub_27237725C();
      v50 = sub_272377E8C();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = v25;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v90 = v53;
        *v52 = 136315138;
        *(v52 + 4) = sub_2721FFD04(v51, v23, &v90);
        _os_log_impl(&dword_2721E4000, v49, v50, "Missing threshold for keyword %s", v52, 0xCu);
        sub_2722039C8(v53);
        MEMORY[0x2743C69C0](v53, -1, -1);
        v54 = v52;
        v25 = v51;
        MEMORY[0x2743C69C0](v54, -1, -1);
      }

      (*(v6 + 8))(v48, v5);
      v90 = 0;
      v91 = 0xE000000000000000;
      sub_27237820C();

      v90 = 0xD00000000000001ELL;
      v91 = 0x8000000272392280;
      MEMORY[0x2743C4AD0](v25, v23);

      v55 = v90;
      v56 = v91;
      sub_2722032B4();
      swift_allocError();
      *v57 = v55;
      v57[1] = v56;
      return swift_willThrow();
    }
  }

  else
  {
    v26 = sub_2722C389C();
    (*(v6 + 16))(v10, v26, v5);
    v27 = sub_27237725C();
    v28 = sub_272377E7C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2721E4000, v27, v28, "Did not find a detection in StrategyLayerDefault:handleKeywordResult", v29, 2u);
      MEMORY[0x2743C69C0](v29, -1, -1);
    }

    return (*(v6 + 8))(v10, v5);
  }

  return result;
}

unint64_t sub_27235C498(uint64_t a1)
{
  v2 = v1;
  v4 = sub_27237728C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  (*(*a1 + 208))(v42, v10);
  if (!v42[1])
  {
    v34 = sub_2722C389C();
    (*(v5 + 16))(v9, v34, v4);
    v35 = sub_27237725C();
    v36 = sub_272377E7C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2721E4000, v35, v36, "No keyword detected when StrategyLayerDefault.isRepeatedKeywordInConsecutiveStride called", v37, 2u);
      MEMORY[0x2743C69C0](v37, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  v13 = sub_2721F40F0(v42, &qword_2808819E0, &qword_27237D890);
  v14 = (*(*v1 + 248))(v13);
  if (!v14)
  {
    v38 = *(*v1 + 256);

    v38(v39);
    return 0;
  }

  v15 = v14;
  v41 = v4;
  type metadata accessor for VARequestContext(0);
  v16 = (*(*a1 + 152))();
  v17 = *(*v15 + 152);

  v19 = v17(v18);

  result = v16 - v19;
  if (v16 >= v19)
  {
    v21 = sub_2722310BC(result);
    v22 = sub_2722C389C();
    v23 = v41;
    (*(v5 + 16))(v12, v22, v41);

    v24 = sub_27237725C();
    v25 = sub_272377E7C();

    v26 = os_log_type_enabled(v24, v25);
    v27 = MEMORY[0x277D85000];
    if (v26)
    {
      v28 = swift_slowAlloc();
      *v28 = 134218240;
      *(v28 + 4) = v21;
      *(v28 + 12) = 2048;
      *(v28 + 14) = (*((*MEMORY[0x277D85000] & **(v2 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_strideConfig)) + 0x1A8))();
      _os_log_impl(&dword_2721E4000, v24, v25, "Elapsed time since last detection: %f secs, stride %f", v28, 0x16u);
      v29 = v28;
      v27 = MEMORY[0x277D85000];
      MEMORY[0x2743C69C0](v29, -1, -1);
    }

    v30 = (*(v5 + 8))(v12, v23);
    v31 = v21 <= (*((*v27 & **(v2 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_strideConfig)) + 0x1A8))(v30);
    v32 = *(*v2 + 256);

    v32(v33);

    return v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_27235C960()
{
  v1 = v0;
  v2 = sub_27237832C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2721F065C(&qword_280882B68, &unk_2723863E0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v26 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v26 - v16;
  v18 = v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters;
  if ((*(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters + 32) & 1) == 0)
  {
    v19 = *(v18 + 16);
    v26[0] = *(v18 + 24);
    v26[1] = v19;
    v20 = *(*v0 + 368);
    v26[2] = *v0 + 368;
    v27 = v20;
    v20(v15);
    v21 = *(v3 + 48);
    v22 = v21(v17, 1, v2);
    sub_2721F40F0(v17, &qword_280882B68, &unk_2723863E0);
    if (v22 != 1)
    {
      v23 = sub_27237830C();
      v27(v23);
      result = v21(v14, 1, v2);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      sub_27237831C();
      v25 = *(v3 + 8);
      v25(v6, v2);
      v25(v14, v2);
      if ((sub_27237881C() & 1) == 0)
      {
        return 1;
      }
    }

    sub_27237830C();
    (*(v3 + 56))(v11, 0, 1, v2);
    (*(*v1 + 376))(v11);
  }

  return 0;
}

uint64_t sub_27235CCA0()
{
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_currentKeywordResult);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_prevKeywordResult);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTask);

  sub_272216300(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated, &qword_280882B68, &unk_2723863E0);
  v4 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_clock;
  v5 = sub_27237834C();
  v6 = *(*(v5 - 8) + 8);

  return v6(v0 + v4, v5);
}

uint64_t sub_27235CD88()
{
  v0 = VAStrategyLayer.deinit();
  sub_272216BD8(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters);
  v1 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_currentKeywordResult);

  v2 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_prevKeywordResult);

  v3 = *(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTask);

  sub_272216300(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate);
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated, &qword_280882B68, &unk_2723863E0);
  v4 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_clock;
  v5 = sub_27237834C();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_27235CE70()
{
  v0 = *sub_27235CD88();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t VAStrategyProviderDefault.__allocating_init(strideConfig:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_27235CF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for VARuntimeParameters();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_272216374(a3, v9);
  v10 = *(v3 + 16);
  v11 = type metadata accessor for VAStrategyDefault();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = v10;
  v15 = swift_unknownObjectRetain();
  v16 = sub_27235D07C(v15, a2, v9, v14);
  swift_unknownObjectRelease();

  return v16;
}

uint64_t VAStrategyProviderDefault.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_27235D07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_27237834C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_resultTime) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_currentKeywordResult) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_prevKeywordResult) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTask) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_timerTaskDuration) = 0;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_numResultsBelowThresholdAfterSpeechEnd) = 0;
  v13 = v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate;
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_lastActivated;
  v15 = sub_27237832C();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  swift_beginAccess();
  *(v13 + 8) = a2;
  swift_unknownObjectWeakAssign();
  sub_272216374(a3, v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_runtimeParameters);
  *(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_strideConfig) = a4;
  v16 = a4;
  sub_27237833C();
  (*(v9 + 32))(v4 + OBJC_IVAR____TtC12VoiceActions17VAStrategyDefault_clock, v12, v8);
  v17 = sub_2722591B0();
  sub_272216BD8(a3);
  return v17;
}

uint64_t type metadata accessor for VAStrategyDefault()
{
  result = qword_2808934D8;
  if (!qword_2808934D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27235D2D0()
{
  v0 = type metadata accessor for VARuntimeParameters();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_2723022B8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_27237834C();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

id sub_27235D4F8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27235D54C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_27235D5A4()
{
  v1 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27235D5F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_27235D660()
{
  v1 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27235D6AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_27235D704()
{
  v1 = (v0 + OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_27235D75C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_27235D804(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_allocWithZone(v6);
  v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v13 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v14 = &v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v15 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = a1;
  swift_beginAccess();
  *&v11[v12] = a2;
  swift_beginAccess();
  *&v11[v13] = a3;
  swift_beginAccess();
  v16 = *(v14 + 1);
  *v14 = a4;
  *(v14 + 1) = a5;
  v17 = a1;
  v18 = a2;
  v19 = a3;

  swift_beginAccess();
  v20 = *&v11[v15];
  *&v11[v15] = a6;

  v25.receiver = v11;
  v25.super_class = v6;
  v21 = objc_msgSendSuper2(&v25, sel_init);

  return v21;
}

id static VAConfiguration.buildForFlexibleA2AAttentionDetection(_:)(uint64_t a1)
{
  type metadata accessor for VAStrideConfiguration();
  v2 = static VAStrideConfiguration.forFlexibleA2Av3()();
  type metadata accessor for VAResultGeneratorConfiguration();
  v3 = static VAResultGeneratorConfiguration.buildForA2AAttentionDetection()();
  v4 = type metadata accessor for VAConfiguration();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v7 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v8 = &v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v9 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v5[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v2;
  swift_beginAccess();
  *&v5[v6] = 0;
  swift_beginAccess();
  *&v5[v7] = v3;
  swift_beginAccess();
  v10 = *(v8 + 1);
  *v8 = xmmword_272387440;
  v11 = v2;
  v12 = v3;

  swift_beginAccess();
  v13 = *&v5[v9];
  *&v5[v9] = a1;

  v16.receiver = v5;
  v16.super_class = v4;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id sub_27235DC20(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  type metadata accessor for VAStrideConfiguration();
  v4 = a1();
  type metadata accessor for VAResultGeneratorConfiguration();
  v5 = a2();
  v6 = type metadata accessor for VAConfiguration();
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v9 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v10 = &v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v11 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v7[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v4;
  swift_beginAccess();
  *&v7[v8] = 0;
  swift_beginAccess();
  *&v7[v9] = v5;
  swift_beginAccess();
  v12 = *(v10 + 1);
  *v10 = xmmword_272387440;
  v13 = v4;
  v14 = v5;

  swift_beginAccess();
  v15 = *&v7[v11];
  *&v7[v11] = 0;

  v18.receiver = v7;
  v18.super_class = v6;
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

uint64_t sub_27235DDF4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = objc_allocWithZone(type metadata accessor for VAConfiguration());

  v5 = a2(v4);

  return v5;
}

uint64_t sub_27235DE64(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  v6 = a2(a1);

  return v6;
}

uint64_t static VAConfiguration.buildForFixedWithCustomModel(modelFilepath:vadGated:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for VAFixedSpotterModelConfiguration();
  v6 = static VAFixedSpotterModelConfiguration.buildForFixedA2T(modelFilepath:modelConfigJsonFilepath:vadGated:)(a1, a2, 0, 0);
  if (!v2)
  {
    v7 = v6;
    v23 = 0;
    type metadata accessor for VAStrideConfiguration();
    v8 = static VAStrideConfiguration.forFixedA2T(modelConfig:)(v7);
    type metadata accessor for VAResultGeneratorConfiguration();
    v9 = static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(v7, 1);
    v10 = type metadata accessor for VAConfiguration();
    v11 = objc_allocWithZone(v10);
    v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
    v13 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
    v14 = &v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
    *v14 = 0;
    *(v14 + 1) = 0;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
    v15 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
    *&v11[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v8;
    swift_beginAccess();
    *&v11[v12] = v7;
    swift_beginAccess();
    *&v11[v13] = v9;
    swift_beginAccess();
    v16 = *(v14 + 1);
    *v14 = xmmword_272387440;
    v17 = v8;
    v18 = v7;
    v19 = v9;

    swift_beginAccess();
    v20 = *&v11[v15];
    *&v11[v15] = 0;

    v22.receiver = v11;
    v22.super_class = v10;
    v5 = objc_msgSendSuper2(&v22, sel_init);
  }

  return v5;
}

uint64_t sub_27235E0D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VAFixedSpotterModelConfiguration();
  v5 = static VAFixedSpotterModelConfiguration.buildForFixedA2TDefault(vadGated:)();
  if (!v2)
  {
    v6 = v5;
    v22 = 0;
    type metadata accessor for VAStrideConfiguration();
    v7 = static VAStrideConfiguration.forFixedA2T(modelConfig:)(v6);
    type metadata accessor for VAResultGeneratorConfiguration();
    v8 = static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(v6, a2);
    v9 = type metadata accessor for VAConfiguration();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
    v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
    v13 = &v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
    *v13 = 0;
    *(v13 + 1) = 0;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
    v14 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
    *&v10[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v7;
    swift_beginAccess();
    *&v10[v11] = v6;
    swift_beginAccess();
    *&v10[v12] = v8;
    swift_beginAccess();
    v15 = *(v13 + 1);
    *v13 = xmmword_272387440;
    v16 = v7;
    v17 = v6;
    v18 = v8;

    swift_beginAccess();
    v19 = *&v10[v14];
    *&v10[v14] = 0;

    v21.receiver = v10;
    v21.super_class = v9;
    v4 = objc_msgSendSuper2(&v21, sel_init);
  }

  return v4;
}

id sub_27235E2C4(uint64_t (*a1)(void))
{
  type metadata accessor for VAStrideConfiguration();
  v2 = a1();
  v3 = type metadata accessor for VAConfiguration();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v7 = &v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v8 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v4[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v2;
  swift_beginAccess();
  *&v4[v5] = 0;
  swift_beginAccess();
  *&v4[v6] = 0;
  swift_beginAccess();
  v9 = *(v7 + 1);
  *v7 = 0;
  *(v7 + 1) = 0;
  v10 = v2;

  swift_beginAccess();
  v11 = *&v4[v8];
  *&v4[v8] = 0;

  v14.receiver = v4;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

unint64_t static VAConfiguration.buildFromConfigFile(jsonFile:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VAConfiguration();
  v5 = sub_27235FFD4(&qword_280883328, v4, type metadata accessor for VAConfiguration);
  sub_272254F78(v5, &v10);
  v6 = v10;
  if (v11)
  {
    if (v10 == 0x8000000000000000)
    {
      sub_27237820C();

      MEMORY[0x2743C4AD0](a1, a2);
      v6 = 0x8000000272389D30;
      sub_2722032B4();
      swift_allocError();
      *v7 = 0xD000000000000023;
      v7[1] = 0x8000000272389D30;
    }

    else
    {
      sub_272204304();
      swift_allocError();
      *v8 = v6;
    }

    swift_willThrow();
  }

  return v6;
}

uint64_t static VAConfiguration.buildForFixedBreakthrough()()
{
  v1 = type metadata accessor for VAFixedSpotterModelConfiguration();
  sub_2721F7EE4();
  v2 = static VAFixedSpotterModelConfiguration.buildForFixedA2TBreakthrough(vadGated:)();
  if (!v0)
  {
    v3 = v2;
    v20 = 0;
    type metadata accessor for VAStrideConfiguration();
    v4 = static VAStrideConfiguration.forFixedA2T(modelConfig:)(v3);
    type metadata accessor for VAResultGeneratorConfiguration();
    v5 = sub_27222CD4C();
    v6 = static VAResultGeneratorConfiguration.buildForFixedSpotter(fixedConfig:waitFrames:)(v3, v5);
    v7 = type metadata accessor for VAConfiguration();
    v8 = objc_allocWithZone(v7);
    v9 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
    *&v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
    *&v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
    v10 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
    *&v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
    v11 = &v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
    *v11 = 0;
    *(v11 + 1) = 0;
    *&v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
    v12 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
    *&v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
    *&v8[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v4;
    swift_beginAccess();
    *&v8[v9] = v3;
    swift_beginAccess();
    *&v8[v10] = v6;
    swift_beginAccess();
    v13 = *(v11 + 1);
    *v11 = xmmword_272387440;
    v14 = v4;
    v15 = v3;
    v16 = v6;

    swift_beginAccess();
    v17 = *&v8[v12];
    *&v8[v12] = 0;

    v19.receiver = v8;
    v19.super_class = v7;
    v1 = objc_msgSendSuper2(&v19, sel_init);
  }

  return v1;
}

id static VAConfiguration.buildForSpeechApiV2()()
{
  type metadata accessor for VAStrideConfiguration();
  v0 = static VAStrideConfiguration.forSpeechApiSpotterV2()();
  v1 = type metadata accessor for VAConfiguration();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v5 = &v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v6 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v0;
  swift_beginAccess();
  *&v2[v3] = 0;
  swift_beginAccess();
  *&v2[v4] = 0;
  swift_beginAccess();
  v7 = *(v5 + 1);
  *v5 = 0;
  *(v5 + 1) = 0;
  v8 = v0;

  swift_beginAccess();
  v9 = *&v2[v6];
  *&v2[v6] = 0;

  v12.receiver = v2;
  v12.super_class = v1;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

void *sub_27235E898()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  if (result)
  {
    v3 = result;
    v4 = (*((*v1 & *result) + 0xD8))();

    return (v4 & 1);
  }

  return result;
}

void *sub_27235E928()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
  if (result)
  {
    v3 = result;
    v4 = (*((*v1 & *result) + 0xF0))();

    return (v4 & 1);
  }

  return result;
}

unint64_t sub_27235E9B8()
{
  v1 = *v0;
  v2 = 0x6F43656469727473;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v3 = 0xD000000000000018;
  }

  if (v1 != 2)
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x6E6F436465786966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_27235EA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27236023C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27235EA94(uint64_t a1)
{
  v2 = sub_27235FD58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27235EAD0(uint64_t a1)
{
  v2 = sub_27235FD58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAConfiguration.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280883330, &qword_272387460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - v8;
  v43 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  v38 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  v42 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v10 = &v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v10 = 0;
  *(v10 + 1) = 0;
  v41 = v10;
  v39 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  v40 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig;
  *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  v11 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27235FD58();
  sub_2723787AC();
  if (v2)
  {
    v12 = v42;
    sub_2722039C8(a1);

    v15 = *&v1[v38];

    v16 = v41[1];

    v17 = *&v1[v39];

    v18 = *&v1[v40];

    type metadata accessor for VAConfiguration();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v37 = v6;
  type metadata accessor for VAStrideConfiguration();
  LOBYTE(v47) = 0;
  sub_27235FFD4(&qword_280883338, 255, type metadata accessor for VAStrideConfiguration);
  result = sub_27237848C();
  v14 = v42;
  if (v48)
  {
    v19 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig;
    *&v1[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = v48;
    type metadata accessor for VAFixedSpotterModelConfiguration();
    LOBYTE(v48) = 1;
    sub_27235FFD4(&qword_280882B58, 255, type metadata accessor for VAFixedSpotterModelConfiguration);
    sub_27237848C();
    v36[1] = v19;
    v20 = v47;
    v21 = v5;
    v22 = v43;
    swift_beginAccess();
    v23 = *&v3[v22];
    *&v3[v22] = v20;

    type metadata accessor for VAResultGeneratorConfiguration();
    LOBYTE(v47) = 2;
    sub_27235FFD4(&qword_280881C58, 255, type metadata accessor for VAResultGeneratorConfiguration);
    sub_27237848C();
    v24 = v46;
    swift_beginAccess();
    v25 = *&v3[v14];
    *&v3[v14] = v24;

    LOBYTE(v46) = 3;
    result = sub_27237843C();
    v27 = v37;
    if (v26)
    {
      v28 = result;
      v29 = v26;
      v30 = v41;
      swift_beginAccess();
      v31 = v30[1];
      *v30 = v28;
      v30[1] = v29;

      type metadata accessor for VAAttentionDetectionConfiguration();
      v45 = 4;
      sub_27235FFD4(&qword_280883340, 255, type metadata accessor for VAAttentionDetectionConfiguration);
      sub_27237848C();
      (*(v27 + 8))(v9, v21);
      v32 = v49;
      v33 = v40;
      swift_beginAccess();
      v34 = *&v3[v33];
      *&v3[v33] = v32;

      v35 = type metadata accessor for VAConfiguration();
      v44.receiver = v3;
      v44.super_class = v35;
      v3 = objc_msgSendSuper2(&v44, sel_init);
      sub_2722039C8(a1);
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27235F108(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280883348, &qword_272387468);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_27220300C(a1, a1[3]);
  sub_27235FD58();
  v11 = sub_2723787CC();
  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v3) + 0x88))(v11);
  v20 = v13;
  v22 = 0;
  type metadata accessor for VAStrideConfiguration();
  sub_27235FFD4(&qword_280883350, 255, type metadata accessor for VAStrideConfiguration);
  sub_2723785DC();
  if (v2)
  {
  }

  else
  {

    v14 = (*((*v12 & *v3) + 0xA0))();
    v20 = v14;
    v22 = 1;
    sub_2721F065C(&qword_280883358, &qword_272387470);
    sub_27235FDAC();
    sub_2723785DC();

    v16 = (*((*v12 & *v3) + 0xD0))();
    v20 = v16;
    v22 = 2;
    sub_2721F065C(&qword_280883368, &qword_272387478);
    sub_27235FE64();
    sub_2723785DC();

    v20 = (*((*v12 & *v3) + 0xE8))();
    v21 = v17;
    v22 = 3;
    sub_2721F065C(&qword_280881828, &qword_27237BF40);
    sub_27228F590();
    sub_2723785DC();

    v20 = (*((*v12 & *v3) + 0x118))(v18);
    v22 = 4;
    sub_2721F065C(&qword_280883378, &qword_272387480);
    sub_27235FF1C();
    sub_2723785DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_27235F574(uint64_t a1, uint64_t a2)
{
  sub_27235FFD4(&qword_280883328, a2, type metadata accessor for VAConfiguration);
  result = sub_27235F64C();
  if (v4)
  {
    if (result == 0x8000000000000000)
    {
      return 0xD00000000000001CLL;
    }

    else
    {
      v5 = result;
      v6 = v3;
      sub_27237836C();
      sub_27222F3E8(v5, v6, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_27235F64C()
{
  v0 = sub_27237788C();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_272376AFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = sub_272376B3C();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_272376B2C();
  sub_2721F065C(&qword_280881C70, &unk_27237D640);
  v8 = *(v3 + 72);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_27237AF90;
  sub_272376ADC();
  sub_272376ACC();
  sub_27235FFD4(&qword_280881C78, 255, MEMORY[0x277CC8718]);
  sub_2721F065C(&qword_280881C80, qword_27237D8B0);
  sub_27222F414();
  sub_27237815C();
  sub_272376B0C();
  type metadata accessor for VAConfiguration();
  sub_27235FFD4(&qword_280883388, v10, type metadata accessor for VAConfiguration);
  v11 = sub_272376B1C();
  v13 = v12;
  sub_27237787C();
  v14 = sub_27237784C();
  if (v15)
  {
    v16 = v14;
    sub_2721F05C8(v11, v13);

    return v16;
  }

  else
  {
    sub_2721F05C8(v11, v13);

    return 0;
  }
}

id VAConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VAConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VAConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27235FAA4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 344))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_27235FB3C(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  v4 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v5 = &v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v5 = 0;
  v5[1] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  swift_beginAccess();
  *&v2[v4] = a1;
  v6 = *(*a1 + 272);

  v8 = v6(v7);
  v10 = v9;
  swift_beginAccess();
  v11 = v5[1];
  *v5 = v8;
  v5[1] = v10;

  type metadata accessor for VAStrideConfiguration();
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = static VAStrideConfiguration.forTasrConfig(tasrConfig:)();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for VAConfiguration();
  return objc_msgSendSuper2(&v13, sel_init);
}

id sub_27235FC80(uint64_t a1)
{
  v2 = v1;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_fixedConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_tasrConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_resultGeneratorConfig] = 0;
  v4 = &v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_vadModelFilename];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_speechAPISpotterConfig] = 0;
  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_attentionDetectionConfig] = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  type metadata accessor for VAStrideConfiguration();

  *&v2[OBJC_IVAR____TtC12VoiceActions15VAConfiguration_strideConfig] = static VAStrideConfiguration.forSpeechAPIConfig()();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for VAConfiguration();
  return objc_msgSendSuper2(&v7, sel_init);
}

unint64_t sub_27235FD58()
{
  result = qword_2808934F0[0];
  if (!qword_2808934F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808934F0);
  }

  return result;
}

unint64_t sub_27235FDAC()
{
  result = qword_280883360;
  if (!qword_280883360)
  {
    sub_2721F214C(&qword_280883358, &qword_272387470);
    sub_27235FFD4(&qword_280882B60, 255, type metadata accessor for VAFixedSpotterModelConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883360);
  }

  return result;
}

unint64_t sub_27235FE64()
{
  result = qword_280883370;
  if (!qword_280883370)
  {
    sub_2721F214C(&qword_280883368, &qword_272387478);
    sub_27235FFD4(&qword_280881C90, 255, type metadata accessor for VAResultGeneratorConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883370);
  }

  return result;
}

unint64_t sub_27235FF1C()
{
  result = qword_280883380;
  if (!qword_280883380)
  {
    sub_2721F214C(&qword_280883378, &qword_272387480);
    sub_27235FFD4(&qword_280882528, 255, type metadata accessor for VAAttentionDetectionConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280883380);
  }

  return result;
}

uint64_t sub_27235FFD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_272360138()
{
  result = qword_280893700[0];
  if (!qword_280893700[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280893700);
  }

  return result;
}

unint64_t sub_272360190()
{
  result = qword_280893810;
  if (!qword_280893810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280893810);
  }

  return result;
}

unint64_t sub_2723601E8()
{
  result = qword_280893818[0];
  if (!qword_280893818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280893818);
  }

  return result;
}

uint64_t sub_27236023C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43656469727473 && a2 == 0xEC0000006769666ELL;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F436465786966 && a2 == 0xEB00000000676966 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x800000027238E510 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000272389A30 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002723924B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_272360468()
{
  v2 = sub_27237728C();
  *&v67 = *(v2 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 464);
  v66 = v0;
  v7 = *(v0 + 472);
  v8 = sub_2722CB8B0();
  v9 = *v8;
  sub_2722CB8C8();
  sub_2722CB8D0(v79);
  if (v1)
  {
    return v5;
  }

  v10 = v8;
  v11 = v67;
  v64 = v2;
  v65 = v5;
  v77[8] = v79[8];
  v77[9] = v79[9];
  v78 = v80;
  v77[4] = v79[4];
  v77[5] = v79[5];
  v77[6] = v79[6];
  v77[7] = v79[7];
  v77[0] = v79[0];
  v77[1] = v79[1];
  v77[2] = v79[2];
  v77[3] = v79[3];
  v12 = sub_2722CB8BC();
  v13 = *v12;
  sub_2722CB8C8();
  sub_2722CB8D0(&v81);
  v75[8] = v89;
  v75[9] = v90;
  v76 = v91;
  v75[4] = v85;
  v75[5] = v86;
  v75[6] = v87;
  v75[7] = v88;
  v75[0] = v81;
  v75[1] = v82;
  v75[2] = v83;
  v75[3] = v84;
  v14 = *(v66 + 384);
  v15 = *(v66 + 392);
  v16 = *v12;
  sub_2722CB8C8();
  sub_2722CB8D0(&v92);
  v17 = *v10;
  sub_2722CB8C8();
  sub_2722CB8D0(v93);
  v73[8] = v93[8];
  v73[9] = v93[9];
  v74 = v94;
  v73[4] = v93[4];
  v73[5] = v93[5];
  v73[6] = v93[6];
  v73[7] = v93[7];
  v73[0] = v93[0];
  v73[1] = v93[1];
  v73[2] = v93[2];
  v73[3] = v93[3];
  v18 = *v10;
  sub_2722CB8C8();
  sub_2722CB8D0(v95);
  v63 = 0;
  v71[7] = v95[7];
  v71[8] = v95[8];
  v71[9] = v95[9];
  v71[4] = v95[4];
  v71[5] = v95[5];
  v71[6] = v95[6];
  v71[0] = v95[0];
  v71[1] = v95[1];
  v71[2] = v95[2];
  v71[3] = v95[3];
  v104 = v88;
  v105 = v89;
  v106 = v90;
  v100 = v84;
  v101 = v85;
  v102 = v86;
  v103 = v87;
  v97 = v81;
  v98 = v82;
  v72 = v96;
  v107 = v91;
  v99 = v83;
  result = sub_2722CB4EC();
  if ((result & 0x8000000000000000) == 0)
  {
    v20 = v66;
    v21 = v11;
    if (result)
    {
      v22 = result;
      v23 = sub_272377B5C();
      *(v23 + 16) = v22;
      bzero((v23 + 32), 4 * v22);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v62 = v23;
    v70 = v23;
    v24 = (*v20 + 832);
    v25 = *v24;
    v26 = v24;
    v27 = *((*v24)() + 16);

    if (v27)
    {
      v29 = 0;
      v58 = (v21 + 8);
      v59 = (v21 + 16);
      v30 = 0.0;
      v5 = MEMORY[0x277D84F90];
      *(&v31 + 1) = 2;
      v67 = xmmword_27237AF80;
      *&v31 = 134217984;
      v57 = v31;
      v60 = v26;
      v61 = 0;
      while (1)
      {
        result = (v25)(v28);
        if (v29 >= *(result + 16))
        {
          break;
        }

        v35 = *(result + 8 * v29 + 32);

        sub_2721F065C(&qword_280881848, &unk_27237C250);
        v36 = swift_allocObject();
        v37 = v66;
        *(v36 + 16) = v67;
        v38 = *(*v37 + 880);
        *(v36 + 32) = v38();
        sub_2721F42A0(v77);

        v39 = v63;
        sub_2722CB800(v37[56]);
        if (v39)
        {

          return v5;
        }

        sub_2721FEE10(v75);
        v62 = v70;
        sub_2721F42A0(v73);
        sub_2721F42A0(v71);

        sub_2722CB800(*(v66 + 368));
        sub_2721F065C(&qword_280883390, &qword_272387620);
        v40 = sub_2722CB3F0(sub_272360D80);
        v63 = 0;
        v41 = v68;
        v30 = v30 + v69;
        if (!v68 || (v40 = (v38)(v40), v40 == v41))
        {
          v29 = v61 + 1;
          v56 = *((v25)(v40) + 16);

          if (v29 >= v56)
          {
            goto LABEL_28;
          }

          v61 = v29;
        }

        else
        {
          v42 = (*(*v66 + 544))();
          if (*(v42 + 16) && (v43 = sub_272200404(v41), (v44 & 1) != 0))
          {
            v45 = (*(v42 + 56) + 16 * v43);
            v46 = *v45;
            v47 = v45[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_2721FFBF8(0, *(v5 + 2) + 1, 1, v5);
            }

            v32 = v66;
            v49 = *(v5 + 2);
            v48 = *(v5 + 3);
            if (v49 >= v48 >> 1)
            {
              v5 = sub_2721FFBF8((v48 > 1), v49 + 1, 1, v5);
            }

            *(v5 + 2) = v49 + 1;
            v50 = &v5[16 * v49];
            *(v50 + 4) = v46;
            *(v50 + 5) = v47;
          }

          else
          {

            v51 = sub_2722C389C();
            v52 = v64;
            (*v59)(v65, v51, v64);
            v53 = sub_27237725C();
            v54 = sub_272377E8C();
            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              *v55 = v57;
              *(v55 + 4) = v41;
              _os_log_impl(&dword_2721E4000, v53, v54, "No symbol for %ld", v55, 0xCu);
              MEMORY[0x2743C69C0](v55, -1, -1);
            }

            (*v58)(v65, v52);
            v32 = v66;
          }

          v33 = (*(*v32 + 888))(v41);
          v34 = *((v25)(v33) + 16);

          v29 = v61;
          if (v61 >= v34)
          {
            goto LABEL_28;
          }
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v5 = MEMORY[0x277D84F90];
LABEL_28:

    return v5;
  }

LABEL_31:
  __break(1u);
  return result;
}

float *sub_272360D80@<X0>(float *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (result && a2)
  {
    v3 = *result;
    if (a2 == 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0;
      v6 = 4 * a2 - 4;
      v7 = 1;
      v8 = *result;
      do
      {
        v9 = result[v7];
        if (v8 < v9)
        {
          v4 = v7;
        }

        ++v7;
        if (v8 < v9)
        {
          v3 = v9;
          v8 = v9;
        }

        v6 -= 4;
      }

      while (v6);
    }

    *a3 = v4;
    *(a3 + 8) = v3;
  }

  else
  {
    sub_2722032B4();
    swift_allocError();
    *v5 = 0xD00000000000001BLL;
    v5[1] = 0x8000000272392510;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_272360E40()
{
  v1 = v0[50];
  v2 = v0[52];
  v3 = v0[54];

  v4 = v0[60];
  v5 = v0[62];
  v6 = v0[64];
}

void *VATransducer.deinit()
{
  v0 = VACTCEncoder.deinit();
  v1 = v0[50];
  v2 = v0[52];
  v3 = v0[54];

  v4 = v0[60];
  v5 = v0[62];
  v6 = v0[64];

  return v0;
}

uint64_t VATransducer.__deallocating_deinit()
{
  v0 = VACTCEncoder.deinit();
  v1 = v0[50];
  v2 = v0[52];
  v3 = v0[54];

  v4 = v0[60];
  v5 = v0[62];
  v6 = v0[64];

  return swift_deallocClassInstance();
}

uint64_t sub_272360FE4(uint64_t a1)
{
  v3 = v1;
  v5 = a1;
  v6 = (*(*a1 + 392))(a1);
  if (!v7)
  {
    v21 = 0x8000000272392530;
    sub_2722032B4();
    swift_allocError();
    v23 = 0xD000000000000021;
LABEL_7:
    *v22 = v23;
    v22[1] = v21;
    swift_willThrow();

    goto LABEL_8;
  }

  v8 = v7;
  v39 = v6;
  v5 = a1;
  v9 = (*(*a1 + 416))();
  if (!v10)
  {

    v21 = 0x8000000272392560;
    sub_2722032B4();
    swift_allocError();
    v23 = 0xD000000000000022;
    goto LABEL_7;
  }

  v11 = v9;
  v12 = v10;
  v48 = v3;
  v13 = type metadata accessor for VAEspressoUtils();
  v38 = *(*a1 + 344);
  v14 = v38(&v45);
  v44 = v45;
  v15 = *(*a1 + 368);
  v16 = v15(v14);
  v18 = v17;
  v19 = sub_2721F7EE4();
  v20 = v16;
  v5 = v13;
  static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v11, v12, &v44, v20, v18, v19 & 1, v46);
  if (!v2)
  {

    v26 = v48;
    v27 = v47[0];
    v48[25] = v46[2];
    v26[26] = v27;
    *(v26 + 425) = *(v47 + 9);
    v28 = v46[1];
    v26[23] = v46[0];
    v26[24] = v28;
    v29 = (v38)(&v41, v25);
    v40 = v41;
    v30 = v15(v29);
    v32 = v31;
    v33 = sub_2721F7EE4();
    static VAEspressoUtils.loadModel(_:computeUnits:espressoPrefix:debug:)(v39, v8, &v40, v30, v32, v33 & 1, v42);

    v34 = *v43;
    v26[30] = v42[2];
    v26[31] = v34;
    *(v26 + 505) = *&v43[9];
    v35 = v42[1];
    v26[28] = v42[0];
    v26[29] = v35;

    v36 = sub_2721F7EE4();
    v5 = sub_2721F7F44(a1, v36 & 1);
    v37 = *(*v5 + 864);

    v37(0x5F7265646F636E65, 0xEB0000000074756FLL);

    return v5;
  }

LABEL_8:
  type metadata accessor for VATransducer();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_272361838()
{
  qword_2808938A0 = objc_alloc_init(SiriTTSService_TTSAXResourceManager);

  return MEMORY[0x2821F96F8]();
}

double ConvertMachTimeToSeconds(unint64_t a1)
{
  if (qword_2808938C0 != -1)
  {
    dispatch_once(&qword_2808938C0, &unk_288190658);
  }

  return *&qword_2808938B0 * a1;
}

double sub_272362204()
{
  if (!mach_timebase_info(&dword_2808938B8))
  {
    LODWORD(result) = dword_2808938B8;
    LODWORD(v1) = *algn_2808938BC;
    result = *&result / v1 / 1000000000.0;
    qword_2808938B0 = *&result;
  }

  return result;
}

void sub_27236259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2723625BC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_272362BC4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_272362C20(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = a2;
  v5 = objc_autoreleasePoolPush();
  if ((*(*(a1 + 40) + 16))())
  {
    if (*(*(*(a1 + 48) + 8) + 24) < 0x3E8uLL)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v7 = [v19 givenName];
      v8 = [v7 length];

      if (v8)
      {
        v9 = [v19 givenName];
        [v6 setValue:v9 forKey:@"\\contact-first"];
      }

      v10 = [v19 familyName];
      v11 = [v10 length];

      if (v11)
      {
        v12 = [v19 familyName];
        [v6 setValue:v12 forKey:@"\\contact-last"];
      }

      v13 = [v19 middleName];
      v14 = [v13 length];

      if (v14)
      {
        v15 = [v19 middleName];
        [v6 setValue:v15 forKey:@"\\contact-middle"];
      }

      v16 = [v19 nickname];
      v17 = [v16 length];

      if (v17)
      {
        v18 = [v19 nickname];
        [v6 setValue:v18 forKey:@"\\contact-nickname"];
      }

      if ([v6 count])
      {
        [*(a1 + 32) addObject:v6];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      ++*(*(*(a1 + 56) + 8) + 24);
    }

    else
    {
      *a3 = 1;
    }
  }

  objc_autoreleasePoolPop(v5);
}

void sub_272362E30(uint64_t a1, void *a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v53 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a4;
  v11 = objc_autoreleasePoolPush();
  if (a3 == 2)
  {
    context = v11;
    v38 = v10;
    v39 = v9;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v29 = v10;
    v30 = [v29 countByEnumeratingWithState:&v41 objects:v51 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v42;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v42 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v41 + 1) + 8 * i);
          ++*(*(*(a1 + 48) + 8) + 24);
          v49 = @"\\contact-nickname";
          v50 = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:{1, context}];
          if (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < 0x3E8uLL)
          {
            [*(a1 + 32) addObject:v35];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            *a5 = 1;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v41 objects:v51 count:16];
      }

      while (v31);
    }

    goto LABEL_30;
  }

  if (a3 == 1)
  {
    context = v11;
    v38 = v10;
    v39 = v9;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v10;
    v12 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v46;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(obj);
          }

          if (*(*(*(a1 + 48) + 8) + 24) + *(*(*(a1 + 40) + 8) + 24) < 0x3E8uLL)
          {
            v16 = *(*(&v45 + 1) + 8 * j);
            v17 = objc_alloc_init(MEMORY[0x277CCAC08]);
            v18 = [v17 personNameComponentsFromString:v16];
            v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v20 = [v18 givenName];
            v21 = [v20 length];

            if (v21)
            {
              v22 = [v18 givenName];
              [v19 setValue:v22 forKey:@"\\contact-first"];
            }

            v23 = [v18 middleName];
            v24 = [v23 length];

            if (v24)
            {
              v25 = [v18 middleName];
              [v19 setValue:v25 forKey:@"\\contact-middle"];
            }

            v26 = [v18 familyName];
            v27 = [v26 length];

            if (v27)
            {
              v28 = [v18 familyName];
              [v19 setValue:v28 forKey:@"\\contact-last"];
            }

            ++*(*(*(a1 + 48) + 8) + 24);
            [*(a1 + 32) addObject:v19];
            ++*(*(*(a1 + 56) + 8) + 24);
          }

          else
          {
            *a5 = 1;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v13);
    }

LABEL_30:
    v10 = v38;

    v9 = v39;
    v11 = context;
  }

  objc_autoreleasePoolPop(v11);

  v36 = *MEMORY[0x277D85DE8];
}

void sub_272363208(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_AccessToContac.isa);
    v4 = v5;
  }

  if (v4)
  {
    NSLog(&stru_288190A08.isa, v4);
    v4 = v5;
  }
}

void sub_27236385C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  [v2 _fetchContactsWithKeepGoing:v3];
  v4[2]();
}

uint64_t sub_2723638BC(uint64_t a1)
{
  result = [qword_2808938D8 containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = qword_2808938D8;
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  return result;
}

void sub_272363924(uint64_t a1)
{
  v1 = qword_2808938D0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_272363D08;
  block[3] = &unk_279E40760;
  v3 = *(a1 + 32);
  dispatch_async(v1, block);
}

void sub_2723639B4(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
    printf("Timed out waiting on %s", [*(a1 + 32) UTF8String]);
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void sub_272363A34(uint64_t a1)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_272363B70;
  v5[3] = &unk_279E406C0;
  v2 = *(a1 + 56);
  v9 = *(a1 + 64);
  v3 = *(a1 + 32);
  v11 = *(a1 + 80);
  v4 = *(a1 + 72);
  v6 = v3;
  v10 = v4;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  (*(v2 + 16))(v2, v5);
}

uint64_t sub_272363B14(void *a1)
{
  v2 = a1[5];
  if ((*(a1[6] + 16))())
  {
    v3 = a1[4];
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_272363B70(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_272363C30;
  v3[3] = &unk_279E40698;
  v7 = *(a1 + 72);
  v6 = *(a1 + 64);
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

void sub_272363C30(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  [v2 systemUptime];
  v4 = v3 - *(a1 + 56);

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    printf("Fetch completed too late (%.2fsms) for %s\n", v4 * 1000.0, [*(a1 + 32) UTF8String]);
  }

  else
  {
    printf("Fetch completed for %s in %.2fms\n", [*(a1 + 32) UTF8String], v4 * 1000.0);
    dispatch_group_leave(*(a1 + 40));
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

uint64_t sub_272363D08(uint64_t a1)
{
  printf("Marking fetch available for %s", [*(a1 + 32) UTF8String]);
  result = [qword_2808938D8 containsObject:*(a1 + 32)];
  if (result)
  {
    v3 = qword_2808938D8;
    v4 = *(a1 + 32);

    return MEMORY[0x2821F9670](v3, sel_removeObject_);
  }

  return result;
}

uint64_t sub_272363D88()
{
  v0 = dispatch_queue_create("com.apple.embeddedspeech.FetchSerializer", 0);
  v1 = qword_2808938D0;
  qword_2808938D0 = v0;

  qword_2808938D8 = objc_alloc_init(MEMORY[0x277CBEB58]);

  return MEMORY[0x2821F96F8]();
}

void sub_272363E94(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_272363EE8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_272363EE8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 49);
    v3 -= 9;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void sub_2723640B4(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2723660D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, _Unwind_Exception *exception_object)
{
  if (v18)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_272366344(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_272367460();
}

BOOL sub_27236638C(uint64_t a1, int a2, char *a3, char *a4, int a5, int a6, _DWORD *a7, _DWORD *a8, float a9)
{
  v9 = *(a1 + 64);
  if (v9 >= a2)
  {
    __assert_rtn("VerifySilenceAfter", "OnlineFstSpottingDecoder.hpp", 437, "frame_num > speech_frame_offset");
  }

  v11 = a4;
  v12 = a3;
  if (a4 != a3)
  {
    v121 = a2;
    v122 = a5;
    v123 = a7;
    v124 = a8;
    v125 = a6;
    v14 = (a4 - a3) >> 2;
    v16 = *(a1 + 40);
    v15 = *(a1 + 48);
    v17 = v16 + v15;
    v18 = (v16 + v15) >> 10;
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = v20 - v19;
    if (v20 == v19)
    {
      v24 = 0;
      v22 = v16 >> 10;
    }

    else
    {
      v22 = v16 >> 10;
      v23 = *(v19 + 8 * (*(a1 + 40) >> 10)) + 4 * (*(a1 + 40) & 0x3FFLL);
      if (*(v19 + 8 * v18) + 4 * (v17 & 0x3FF) == v23)
      {
        v24 = 0;
      }

      else
      {
        *(v19 + 8 * v18);
        v24 = ((4 * (v17 & 0x3FF)) >> 2) + ((8 * v18 - 8 * v22) << 7) - ((v23 - *(v19 + 8 * v22)) >> 2);
      }
    }

    if (v24 < v15 - v24)
    {
      if (v14 > v16)
      {
        v25 = v20 - v19;
        if (v20 == v19)
        {
          v26 = 0;
        }

        else
        {
          v26 = (v21 << 7) - 1;
        }

        if (v20 == v19)
        {
          v27 = v14 - v16 + 1;
        }

        else
        {
          v27 = v14 - v16;
        }

        if ((v27 & 0x3FF) != 0)
        {
          v28 = (v27 >> 10) + 1;
        }

        else
        {
          v28 = v27 >> 10;
        }

        v29 = v26 - v17;
        v30 = (v26 - v17) >> 10;
        if (v28 >= v29 >> 10)
        {
          v31 = v30;
        }

        else
        {
          v31 = v28;
        }

        v126 = v14;
        if (v28 <= v29 >> 10)
        {
          for (*(a1 + 40) = v16 + (v31 << 10); v31; --v31)
          {
            v49 = *(a1 + 24);
            v130.n128_u64[0] = *(v49 - 8);
            *(a1 + 24) = v49 - 8;
            sub_272367554((a1 + 8), &v130);
          }
        }

        else
        {
          v32 = v28 - v31;
          v33 = *(a1 + 32) - *(a1 + 8);
          if (v28 - v31 > (v33 >> 3) - (v25 >> 3))
          {
            v34 = v25 >> 3;
            if (v33 >> 2 <= v32 + v34)
            {
              v35 = v32 + v34;
            }

            else
            {
              v35 = v33 >> 2;
            }

            v132 = a1 + 8;
            if (v35)
            {
              sub_272367404(v35);
            }

            v130 = 0uLL;
            v131 = 0uLL;
            operator new();
          }

          if (v32)
          {
            if (v19 != *(a1 + 8))
            {
              operator new();
            }

            operator new();
          }

          for (*(a1 + 40) = v16 + (v31 << 10); v31; --v31)
          {
            v51 = *(a1 + 24);
            v130.n128_u64[0] = *(v51 - 8);
            *(a1 + 24) = v51 - 8;
            sub_272367554((a1 + 8), &v130);
          }
        }

        v16 = *(a1 + 40);
        v19 = *(a1 + 16);
        v20 = *(a1 + 24);
        v22 = v16 >> 10;
        v14 = v126;
      }

      v52 = (v19 + 8 * v22);
      if (v20 == v19)
      {
        v53 = 0;
      }

      else
      {
        v53 = (*v52 + 4 * (v16 & 0x3FF));
      }

      if (v14 > v24)
      {
        v54 = &v12[4 * (v14 - v24)];
        if (v24 < v14 >> 1)
        {
          v54 = &v11[-4 * v24];
        }

        if (v54 == v12)
        {
          v55 = v53;
          v56 = v52;
        }

        else
        {
          v57 = *(a1 + 48);
          v58 = *v52;
          v59 = v54;
          v56 = v52;
          v55 = v53;
          do
          {
            if (v55 == v58)
            {
              v60 = *--v56;
              v58 = v60;
              v55 = (v60 + 4096);
            }

            v61 = *(v59 - 1);
            v59 -= 4;
            *(v55 - 1) = v61;
            v55 -= 4;
            --v16;
            ++v57;
          }

          while (v59 != v12);
          *(a1 + 40) = v16;
          *(a1 + 48) = v57;
        }

        v12 = v54;
        v14 = v24;
        if (!v24)
        {
          goto LABEL_145;
        }

        goto LABEL_83;
      }

      v55 = v53;
      v56 = (v19 + 8 * v22);
      if (v14)
      {
LABEL_83:
        v120 = v24;
        v62 = v14;
        v63 = sub_272366F18(v52, v53, v14);
        v65 = v64;
        if (v53 != v64)
        {
          v66 = *(a1 + 40);
          v67 = *v56;
          v68 = v63;
          v69 = v64;
          do
          {
            if (v55 == v67)
            {
              v70 = *--v56;
              v67 = v70;
              v55 = v70 + 4096;
            }

            if (v69 == *v68)
            {
              v71 = *--v68;
              v69 = (v71 + 4096);
            }

            v72 = *(v69 - 1);
            v69 -= 4;
            *(v55 - 1) = v72;
            v55 -= 4;
            v66 = vaddq_s64(v66, xmmword_2723876B0);
          }

          while (v69 != v53);
          *(a1 + 40) = v66;
        }

        v73.n128_u64[0] = v52;
        v73.n128_u64[1] = v53;
        if (v62 < v120)
        {
          v74 = v63;
          v128 = v73;
          v75 = sub_272366F18(v52, v53, v120);
          v130 = v128;
          sub_272366F6C(v74, v65, v75, v76, &v130);
          v53 = v130.n128_u64[1];
          v73.n128_u64[0] = v130.n128_u64[0];
        }

        if (v12 != v11)
        {
          v78 = (v73.n128_u64[0] + 8);
          v77 = *v73.n128_u64[0];
          while (1)
          {
            v79 = v77 - v53 + 4096;
            if ((v11 - v12) >> 2 >= v79 >> 2)
            {
              v80 = v79 >> 2;
            }

            else
            {
              v80 = (v11 - v12) >> 2;
            }

            if (v80)
            {
              memmove(v53, v12, 4 * v80);
            }

            v12 += 4 * v80;
            if (v12 == v11)
            {
              break;
            }

            v81 = *v78++;
            v77 = v81;
            v53 = v81;
          }
        }
      }

LABEL_145:
      v111 = *(a1 + 48) - *(a1 + 56);
      if (v111 < 1)
      {
        v9 = *(a1 + 64);
      }

      else
      {
        v112 = v111 + 1;
        do
        {
          *(a1 + 40) = vaddq_s64(*(a1 + 40), xmmword_2723876C0);
          sub_272366EC0(a1 + 8);
          v9 = *(a1 + 64) + 1;
          *(a1 + 64) = v9;
          --v112;
        }

        while (v112 > 1);
      }

      a6 = v125;
      a7 = v123;
      a8 = v124;
      a2 = v121;
      a5 = v122;
      goto LABEL_151;
    }

    v36 = (v21 << 7) - 1;
    v37 = v20 - v19;
    if (v20 == v19)
    {
      v36 = 0;
    }

    v38 = v36 - v17;
    v39 = v14 >= v38;
    v40 = v14 - v38;
    if (v40 != 0 && v39)
    {
      if (v20 == v19)
      {
        v41 = v40 + 1;
      }

      else
      {
        v41 = v40;
      }

      if ((v41 & 0x3FF) != 0)
      {
        v42 = (v41 >> 10) + 1;
      }

      else
      {
        v42 = v41 >> 10;
      }

      if (v42 >= v22)
      {
        v43 = v22;
      }

      else
      {
        v43 = v42;
      }

      v127 = v14;
      if (v42 <= v22)
      {
        for (*(a1 + 40) = v16 - (v43 << 10); v43; --v43)
        {
          v50 = *(a1 + 16);
          v130.n128_u64[0] = *v50;
          *(a1 + 16) = v50 + 1;
          sub_272367300((a1 + 8), &v130);
        }
      }

      else
      {
        v44 = v42 - v43;
        v45 = *(a1 + 32) - *(a1 + 8);
        if (v44 > (v45 >> 3) - (v37 >> 3))
        {
          v46 = v45 >> 2;
          if (v46 <= v44 + (v37 >> 3))
          {
            v47 = v44 + (v37 >> 3);
          }

          else
          {
            v47 = v46;
          }

          v48 = (v37 >> 3) - v43;
          v132 = a1 + 8;
          if (v47)
          {
            sub_272367404(v47);
          }

          v130.n128_u64[0] = 0;
          v130.n128_u64[1] = 8 * v48;
          v131 = 8 * v48;
          operator new();
        }

        if (v44)
        {
          if (*(a1 + 32) != *(a1 + 24))
          {
            operator new();
          }

          operator new();
        }

        for (*(a1 + 40) = v16 - (v43 << 10); v43; --v43)
        {
          v82 = *(a1 + 16);
          v130.n128_u64[0] = *v82;
          *(a1 + 16) = v82 + 1;
          sub_272367300((a1 + 8), &v130);
        }
      }

      v15 = *(a1 + 48);
      v19 = *(a1 + 16);
      v20 = *(a1 + 24);
      v17 = *(a1 + 40) + v15;
      v18 = v17 >> 10;
      v14 = v127;
    }

    v83 = (v19 + 8 * v18);
    if (v20 == v19)
    {
      v84 = 0;
    }

    else
    {
      v84 = (*v83 + 4 * (v17 & 0x3FF));
    }

    v85 = v15 - v24;
    if (v85 >= v14)
    {
      v89 = v84;
      v90 = (v19 + 8 * v18);
      if (!v14)
      {
        goto LABEL_145;
      }
    }

    else
    {
      if (v85 >= v14 >> 1)
      {
        v86 = v14;
      }

      else
      {
        v86 = 0;
      }

      if (v85 >= v14 >> 1)
      {
        v87 = v11;
      }

      else
      {
        v87 = v12;
      }

      v88 = &v87[4 * (v85 - v86)];
      if (v88 == v11)
      {
        v89 = v84;
        v90 = v83;
      }

      else
      {
        v91 = *v83;
        v92 = v88;
        v90 = v83;
        v89 = v84;
        do
        {
          *v89 = *v92;
          v89 += 4;
          if (&v89[-v91] == 4096)
          {
            v93 = v90[1];
            ++v90;
            v91 = v93;
            v89 = v93;
          }

          v92 += 4;
          ++v15;
        }

        while (v92 != v11);
        *(a1 + 48) = v15;
      }

      v11 = v88;
      v14 = v85;
      if (!v85)
      {
        goto LABEL_145;
      }
    }

    v129 = v14;
    v94 = sub_2723670AC(v83, v84, v14);
    if (v84 != v95)
    {
      v96 = *v90;
      v97 = v94;
      v98 = v95;
      do
      {
        *v89 = *v98;
        v89 += 4;
        if (v89 - v96 == 4096)
        {
          v99 = v90[1];
          ++v90;
          v96 = v99;
          v89 = v99;
        }

        v98 += 4;
        if (&v98[-*v97] == 4096)
        {
          v100 = v97[1];
          ++v97;
          v98 = v100;
        }

        ++v15;
      }

      while (v98 != v84);
      *(a1 + 48) = v15;
    }

    if (v129 < v85)
    {
      v101 = v94;
      v102 = v95;
      v103 = sub_2723670AC(v83, v84, v85);
      sub_272367104(&v130, v103, v104, v101, v102, v83, v84);
      v84 = *(&v131 + 1);
      v83 = v131;
    }

    if (v11 != v12)
    {
      v107 = *v83;
      v106 = v83 - 1;
      v105 = v107;
      while (1)
      {
        v108 = &v84[-v105];
        if ((v11 - v12) >> 2 >= v108 >> 2)
        {
          v109 = v108 >> 2;
        }

        else
        {
          v109 = (v11 - v12) >> 2;
        }

        v11 -= 4 * v109;
        if (v109)
        {
          memmove(&v84[-4 * v109], v11, 4 * v109);
        }

        if (v11 == v12)
        {
          break;
        }

        v110 = *v106--;
        v105 = v110;
        v84 = (v110 + 4096);
      }
    }

    goto LABEL_145;
  }

LABEL_151:
  LODWORD(v113) = a2 - v9;
  v114 = *(a1 + 48);
  if (v114 - (a2 - v9) < a6)
  {
    return 0;
  }

  *a7 = -1;
  v116 = 0;
  if ((a5 & 0x80000000) == 0)
  {
    v113 = v113;
    v117 = v113 + a5;
    if (v114 <= v113)
    {
      v114 = v113;
    }

    if (v117 <= v113)
    {
      v117 = v113;
    }

    v118 = v117 + 1;
    v119 = -1;
    do
    {
      if (v114 == v113)
      {
        break;
      }

      if (*(*(*(a1 + 16) + (((v113 + *(a1 + 40)) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v113 + *(a1 + 40)) & 0x3FF)) <= a9)
      {
        if (v119 == -1)
        {
          *a7 = v113;
          v119 = v113;
        }

        ++v116;
      }

      ++v113;
    }

    while (v118 != v113);
  }

  if (a8)
  {
    *a8 = v116;
  }

  return v116 >= a6;
}

void sub_272366E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_272366EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0x800)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }

  return v1 > 0x7FF;
}

uint64_t *sub_272366F18(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3 + ((a2 - *result) >> 2);
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
      v5 = *result;
    }

    else
    {
      result += v3 >> 10;
      v4 = *result;
    }
  }

  return result;
}

double sub_272366F6C(void *a1, _BYTE *a2, void *a3, _BYTE *a4, uint64_t a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = *(a5 + 8);
    v9 = a4;
  }

  else
  {
    v11 = a1 + 1;
    sub_272367494(&v23, a2, (*a1 + 4096), *a5, *(a5 + 8));
    *a5 = v24;
    v12 = *a5;
    v13 = *(a5 + 8);
    if (v11 != a3)
    {
      v22 = a4;
      do
      {
        v14 = 0;
        v15 = *v11;
        v16 = *v12;
        while (1)
        {
          v17 = v16 - v13 + 4096;
          if ((4096 - v14) >> 2 >= v17 >> 2)
          {
            v18 = v17 >> 2;
          }

          else
          {
            v18 = (4096 - v14) >> 2;
          }

          if (v18)
          {
            memmove(v13, &v15[v14], 4 * v18);
          }

          v14 += 4 * v18;
          if (v14 == 4096)
          {
            break;
          }

          v19 = v12[1];
          ++v12;
          v16 = v19;
          v13 = v19;
        }

        v13 += 4 * v18;
        if ((*v12 + 4096) == v13)
        {
          v20 = v12[1];
          ++v12;
          v13 = v20;
        }

        *a5 = v12;
        *(a5 + 8) = v13;
        ++v11;
      }

      while (v11 != a3);
      a4 = v22;
    }

    a2 = *v11;
    v9 = a4;
    v7 = v12;
    v8 = v13;
  }

  sub_272367494(&v23, a2, v9, v7, v8);
  result = *&v24;
  *a5 = v24;
  return result;
}

uint64_t *sub_2723670AC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = ((a2 - *result) >> 2) - a3;
    if (v3 < 1)
    {
      result -= (1023 - v3) >> 10;
      v5 = *result;
    }

    else
    {
      result += v3 >> 10;
      v4 = *result;
    }
  }

  return result;
}

__n128 sub_272367104(__n128 *a1, char **a2, char *a3, char **a4, char *a5, void *a6, char *a7)
{
  if (a2 == a4)
  {
    v11 = a3;
    v12 = a5;
    v13 = a6;
    v14 = a7;
  }

  else
  {
    v16 = a4 - 1;
    sub_272367244(&v27, *a4, a5, a6, a7);
    v18 = v28.n128_u64[1];
    v17 = v28.n128_u64[0];
    if (v16 != a2)
    {
      v19 = *v28.n128_u64[0];
      do
      {
        v20 = *v16;
        v21 = *v16 + 4096;
        while (1)
        {
          v22 = v18 - v19;
          if ((v21 - v20) >> 2 >= v22 >> 2)
          {
            v23 = v22 >> 2;
          }

          else
          {
            v23 = (v21 - v20) >> 2;
          }

          v21 -= 4 * v23;
          v18 -= 4 * v23;
          if (v23)
          {
            memmove(v18, v21, 4 * v23);
          }

          if (v21 == v20)
          {
            break;
          }

          v24 = *--v17;
          v19 = v24;
          v18 = v24 + 4096;
        }

        v19 = *v17;
        if ((*v17 + 4096) == v18)
        {
          v25 = v17[1];
          ++v17;
          v19 = v25;
          v18 = v25;
        }

        --v16;
      }

      while (v16 != a2);
    }

    v12 = *v16 + 4096;
    v11 = a3;
    v13 = v17;
    v14 = v18;
  }

  sub_272367244(&v27, v11, v12, v13, v14);
  result = v28;
  a1->n128_u64[0] = a4;
  a1->n128_u64[1] = a5;
  a1[1] = result;
  return result;
}

void *sub_272367244(void *result, char *a2, char *a3, void *a4, char *a5)
{
  v6 = a4;
  v8 = result;
  if (a2 == a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
    v10 = *a4;
    v11 = a3;
    while (1)
    {
      v12 = &a5[-v10];
      if ((v11 - a2) >> 2 >= v12 >> 2)
      {
        v13 = v12 >> 2;
      }

      else
      {
        v13 = (v11 - a2) >> 2;
      }

      v11 -= 4 * v13;
      a5 -= 4 * v13;
      if (v13)
      {
        result = memmove(a5, v11, 4 * v13);
      }

      if (v11 == a2)
      {
        break;
      }

      v14 = *--v6;
      v10 = v14;
      a5 = (v14 + 4096);
    }

    if ((*v6 + 4096) == a5)
    {
      v15 = v6[1];
      ++v6;
      a5 = v15;
    }
  }

  *v8 = v9;
  v8[1] = v6;
  v8[2] = a5;
  return result;
}

void *sub_272367300(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      sub_272367404(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void sub_272367404(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_272367460();
}

void sub_272367460()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void *sub_272367494(void *result, _BYTE *__src, _BYTE *a3, void *a4, char *__dst)
{
  v6 = a4;
  v8 = result;
  if (__src != a3)
  {
    v9 = __src;
    v10 = *a4;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      if ((a3 - v9) >> 2 >= v11 >> 2)
      {
        v12 = v11 >> 2;
      }

      else
      {
        v12 = (a3 - v9) >> 2;
      }

      if (v12)
      {
        result = memmove(__dst, v9, 4 * v12);
      }

      v9 += 4 * v12;
      if (v9 == a3)
      {
        break;
      }

      v13 = v6[1];
      ++v6;
      v10 = v13;
      __dst = v13;
    }

    __dst += 4 * v12;
    if ((*v6 + 4096) == __dst)
    {
      v14 = v6[1];
      ++v6;
      __dst = v14;
    }
  }

  *v8 = a3;
  v8[1] = v6;
  v8[2] = __dst;
  return result;
}

const void **sub_272367554(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_272367404(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void sub_27236765C(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_2723676B8(exception, a1);
  __cxa_throw(exception, off_279E3FC68, MEMORY[0x277D825F0]);
}

std::logic_error *sub_2723676B8(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_272368554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char *__p, void *a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  v41 = v37;
  *(v41 + 144) = v36;

  __p = &a23;
  sub_272363E94(&__p);
  if (v38)
  {
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void *sub_2723686B0(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2743C5B50](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_27236912C();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2743C5B60](v20);
  return a1;
}

void sub_272368958(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x2743C5B60](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x27236892CLL);
}

void *sub_2723689D8(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_272368A90(void *a1)
{
  v2 = a1[23];
  v3 = a1[24];
  if (v2 != v3)
  {
    v4 = voiceactions::kLogZero;
    v5 = voiceactions::kNolabel;
    do
    {
      *v2 = v5;
      *(v2 + 4) = v4;
      *(v2 + 8) = voiceactions::kNoTime;
      *(v2 + 20) = 0;
      *(v2 + 12) = 0;
      v2 += 32;
    }

    while (v2 != v3);
  }

  sub_272368B80((a1 + 26));
  for (i = a1[20]; i; i = *i)
  {
    sub_272368BD4(&v8, (i + 2));
    v11 = &v8;
    v7 = sub_272368C38(a1 + 18, v8);
    sub_272368B80((v7 + 3));
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_272368B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float sub_272368B80(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  result = *&voiceactions::kLogZero;
  *(a1 + 24) = voiceactions::kLogZero;
  *(a1 + 28) = result;
  v2 = voiceactions::kNoTime;
  *(a1 + 32) = voiceactions::kNoTime;
  *(a1 + 36) = v2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 60) = result;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_272368BD4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  if (*(a2 + 31) < 0)
  {
    sub_272369088(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    *(v4 + 16) = *(a2 + 24);
    *v4 = v5;
  }

  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return a1;
}

uint64_t *sub_272368C38(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void *sub_272369088(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_27236912C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

char *sub_272369144(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_272369088(v4, *v6, *(v6 + 1));
        v8 = v15;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
        v8 = v4;
      }

      v9 = *(v6 + 24);
      v10 = *(v6 + 40);
      *(v4 + 49) = *(v6 + 49);
      *(v4 + 40) = v10;
      *(v4 + 24) = v9;
      v6 = (v6 + 72);
      v4 = v8 + 72;
      v15 = v8 + 72;
    }

    while (v6 != a3);
  }

  v13 = 1;
  sub_27236927C(v12);
  return v4;
}

void sub_272369220(unint64_t a1)
{
  if (a1 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  sub_272367460();
}

uint64_t sub_27236927C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 49);
      v3 -= 9;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void *sub_2723692DC(void *result, __int128 *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = 0x8E38E38E38E38E39 * ((v5 - *result) >> 3);
    if (v7 + 1 > 0x38E38E38E38E38ELL)
    {
      sub_27236F7F0();
    }

    v8 = 0x8E38E38E38E38E39 * ((v4 - *result) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x1C71C71C71C71C7)
    {
      v10 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v10 = v9;
    }

    v28 = v3;
    if (v10)
    {
      sub_272369220(v10);
    }

    v14 = 72 * v7;
    v25 = 0;
    v26 = v14;
    v27 = v14;
    if (*(a2 + 23) < 0)
    {
      sub_272369088(v14, *a2, *(a2 + 1));
      v16 = v26;
      v17 = v27;
    }

    else
    {
      v15 = *a2;
      *(v14 + 16) = *(a2 + 2);
      *v14 = v15;
      v16 = v14;
      v17 = v14;
    }

    v18 = *(a2 + 49);
    v19 = *(a2 + 24);
    *(v14 + 40) = *(a2 + 40);
    *(v14 + 24) = v19;
    *(v14 + 49) = v18;
    *&v27 = v17 + 72;
    v20 = *(v3 + 8);
    v21 = v16 + *v3 - v20;
    sub_2723695B4(v3, *v3, v20, v21);
    v22 = *v3;
    *v3 = v21;
    v23 = *(v3 + 16);
    v24 = v27;
    *(v3 + 8) = v27;
    *&v27 = v22;
    *(&v27 + 1) = v23;
    v25 = v22;
    v26 = v22;
    result = sub_272369680(&v25);
    v13 = v24;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_272369088(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 40);
    *(v5 + 49) = *(a2 + 49);
    *(v5 + 40) = v12;
    *(v5 + 24) = v11;
    v13 = v5 + 72;
    *(v3 + 8) = v5 + 72;
  }

  *(v3 + 8) = v13;
  return result;
}

void sub_2723694A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_272369680(va);
  _Unwind_Resume(a1);
}

__n128 sub_2723694C0(uint64_t *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *v12 = a1[1];
  *&v12[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v10 = *(a1 + 3);
  *v11 = *(a1 + 5);
  *&v11[9] = *(a1 + 49);
  v5 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  v6 = *(a2 + 49);
  v7 = *(a2 + 40);
  *(a1 + 3) = *(a2 + 24);
  *(a1 + 5) = v7;
  *(a1 + 49) = v6;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *(a2 + 24) = v10;
  *a2 = v3;
  *(a2 + 8) = *v12;
  *(a2 + 15) = *&v12[7];
  *(a2 + 23) = v4;
  *(a2 + 40) = *v11;
  result = *&v11[9];
  *(a2 + 49) = *&v11[9];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2723695B4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v14 = a4;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    v12 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      v9 = *(v6 + 40);
      *(a4 + 49) = *(v6 + 49);
      *(a4 + 40) = v9;
      *(a4 + 24) = v8;
      v6 = (v6 + 72);
      a4 += 72;
    }

    while (v6 != a3);
    v14 = a4;
    v12 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 72);
    }

    while (v5 != a3);
  }

  return sub_27236927C(v11);
}

uint64_t sub_272369680(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 9;
      *(a1 + 16) = v2 - 9;
      if (*(v2 - 49) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_2723696E4(uint64_t result, float *a2, int a3, int a4, int a5, char a6, float a7)
{
  *(result + 4) = a2[1] + a7;
  v7 = a2[4];
  *(result + 16) = v7;
  v8 = *(a2 + 3);
  *(result + 12) = v8;
  v9 = *(a2 + 6);
  *(result + 24) = v9;
  if (a3 == a5)
  {
    *(result + 12) = v8 + 1;
    *(result + 16) = v7 + a7;
  }

  else if ((a6 & 1) == 0)
  {
    *(result + 24) = v9 + 1;
  }

  *(result + 8) = a2[2];
  v10 = *a2;
  if (a4)
  {
    v10 = *&a4;
  }

  *result = v10;
  *(result + 20) = *(a2 + 5) + 1;
  return result;
}

void *sub_272369758(void *a1, void *a2)
{
  v4 = sub_272369BE4(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_27236A034(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_272369BCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_27236A0A8(va);
  _Unwind_Resume(a1);
}

unint64_t sub_272369BE4(uint64_t a1)
{
  v1 = *(a1 + 23);
  v2 = *a1;
  if (v1 >= 0)
  {
    v2 = a1;
  }

  if (v1 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 8);
  }

  if (v3 > 0x20)
  {
    if (v3 > 0x40)
    {
      v33 = 0x9DDFEA08EB382D69;
      v43 = *(v2 + v3 - 48);
      v42 = *(v2 + v3 - 40);
      v44 = *(v2 + v3 - 24);
      v45 = *(v2 + v3 - 56);
      v46 = *(v2 + v3 - 16);
      v47 = *(v2 + v3 - 8);
      v48 = v45 + v46;
      v49 = 0x9DDFEA08EB382D69 * (v44 ^ ((0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v44 ^ (v43 + v3))));
      v50 = 0x9DDFEA08EB382D69 * (v49 ^ (v49 >> 47));
      v51 = *(v2 + v3 - 64) + v3;
      v52 = v51 + v45 + v43;
      v53 = __ROR8__(v52, 44) + v51;
      v54 = __ROR8__(v42 + v51 + v50, 21);
      v55 = v52 + v42;
      v56 = v53 + v54;
      v57 = v48 + *(v2 + v3 - 32) - 0x4B6D499041670D8DLL;
      v58 = v57 + v44 + v46;
      v59 = v58 + v47;
      v60 = __ROR8__(v58, 44) + v57 + __ROR8__(v57 + v42 + v47, 21);
      v62 = *v2;
      v61 = v2 + 4;
      v63 = v62 - 0x4B6D499041670D8DLL * v42;
      v64 = -((v3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v65 = *(v61 - 3);
        v66 = v63 + v55 + v48 + v65;
        v67 = v61[2];
        v68 = v61[3];
        v69 = v61[1];
        v48 = v69 + v55 - 0x4B6D499041670D8DLL * __ROR8__(v48 + v56 + v67, 42);
        v70 = v50 + v59;
        v71 = *(v61 - 2);
        v72 = *(v61 - 1);
        v73 = *(v61 - 4) - 0x4B6D499041670D8DLL * v56;
        v74 = v73 + v59 + v72;
        v75 = v73 + v65 + v71;
        v55 = v75 + v72;
        v76 = __ROR8__(v75, 44) + v73;
        v77 = (0xB492B66FBE98F273 * __ROR8__(v66, 37)) ^ v60;
        v63 = 0xB492B66FBE98F273 * __ROR8__(v70, 33);
        v56 = v76 + __ROR8__(v74 + v77, 21);
        v78 = v63 + v60 + *v61;
        v59 = v78 + v69 + v67 + v68;
        v60 = __ROR8__(v78 + v69 + v67, 44) + v78 + __ROR8__(v48 + v71 + v78 + v68, 21);
        v61 += 8;
        v50 = v77;
        v64 += 64;
      }

      while (v64);
      v79 = 0x9DDFEA08EB382D69 * (v59 ^ ((0x9DDFEA08EB382D69 * (v59 ^ v55)) >> 47) ^ (0x9DDFEA08EB382D69 * (v59 ^ v55)));
      v80 = v63 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) ^ ((0x9DDFEA08EB382D69 * (v60 ^ ((0x9DDFEA08EB382D69 * (v60 ^ v56)) >> 47) ^ (0x9DDFEA08EB382D69 * (v60 ^ v56)))) >> 47));
      v81 = 0x9DDFEA08EB382D69 * (v80 ^ (v77 - 0x4B6D499041670D8DLL * (v48 ^ (v48 >> 47)) - 0x622015F714C7D297 * (v79 ^ (v79 >> 47))));
      v34 = 0x9DDFEA08EB382D69 * (v80 ^ (v81 >> 47) ^ v81);
    }

    else
    {
      v8 = v2 + v3;
      v9 = *(v2 + v3 - 16);
      v10 = *(v2 + v3 - 8);
      v11 = v2[1];
      v12 = *v2 - 0x3C5A37A36834CED9 * (v9 + v3);
      v15 = v2 + 2;
      v13 = v2[2];
      v14 = v15[1];
      v16 = __ROR8__(v12 + v14, 52);
      v17 = __ROR8__(v12, 37);
      v18 = v12 + v11;
      v19 = __ROR8__(v18, 7);
      v20 = v18 + v13;
      v21 = v19 + v17;
      v22 = *(v8 - 4) + v13;
      v23 = v10 + v14;
      v24 = __ROR8__(v23 + v22, 52);
      v25 = v21 + v16;
      v26 = __ROR8__(v22, 37);
      v27 = *(v8 - 3) + v22;
      v28 = __ROR8__(v27, 7);
      v29 = v25 + __ROR8__(v20, 31);
      v30 = v27 + v9;
      v31 = v30 + v23;
      v32 = v20 + v14 + v26 + v28 + v24 + __ROR8__(v30, 31);
      v33 = 0x9AE16A3B2F90404FLL;
      v34 = v29 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) ^ ((0xC3A5C85C97CB3127 * (v31 + v29) - 0x651E95C4D06FBFB1 * v32) >> 47));
    }

    return (v34 ^ (v34 >> 47)) * v33;
  }

  else
  {
    if (v3 > 0x10)
    {
      v35 = v2[1];
      v36 = 0xB492B66FBE98F273 * *v2;
      v37 = 0x9AE16A3B2F90404FLL * *(v2 + v3 - 8);
      v38 = __ROR8__(v37, 30) + __ROR8__(v36 - v35, 43);
      v39 = v36 + v3 + __ROR8__(v35 ^ 0xC949D7C7509E6557, 20) - v37;
      v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v38 - 0x3C5A37A36834CED9 * *(v2 + v3 - 16)));
      v41 = v39 ^ (v40 >> 47) ^ v40;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    if (v3 >= 9)
    {
      v4 = *v2;
      v5 = *(v2 + v3 - 8);
      v6 = __ROR8__(v5 + v3, v3);
      return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ v4)))) >> 47))) ^ v5;
    }

    if (v3 >= 4)
    {
      v82 = *v2;
      v83 = *(v2 + v3 - 4);
      v84 = 0x9DDFEA08EB382D69 * ((v3 + (8 * v82)) ^ v83);
      v41 = v83 ^ (v84 >> 47) ^ v84;
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * v41) ^ ((0x9DDFEA08EB382D69 * v41) >> 47));
    }

    result = 0x9AE16A3B2F90404FLL;
    if (v3)
    {
      v85 = (0xC949D7C7509E6557 * (v3 | (4 * *(v2 + v3 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v2 | (*(v2 + (v3 >> 1)) << 8)));
      return 0x9AE16A3B2F90404FLL * (v85 ^ (v85 >> 47));
    }
  }

  return result;
}

BOOL sub_27236A034(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_27236A0A8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_27236A0F4(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_27236A0F4(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_27236A158(&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_27236A158(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27236A1AC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_27236A1AC(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *sub_27236A1FC(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_27236AEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, std::locale a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59)
{
  a36.__locale_ = &a18;
  sub_27236A158(&a36);
  a59 = &a39;
  sub_27236A158(&a59);

  _Unwind_Resume(a1);
}

_BYTE *sub_27236B1B4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_27236912C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

size_t *sub_27236B26C(size_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27236F7F0();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      sub_27236F808(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = v11 - v13;
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = sub_27236F860(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = v3 + 24;
  }

  v2[1] = v6;
  return result;
}

uint64_t sub_27236B398(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_27236F680(result, a4);
  }

  return result;
}

void sub_27236B400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_27236A158(&a9);
  _Unwind_Resume(a1);
}

void sub_27236B420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  if (a3 != a4)
  {
    v6 = a3;
    v106 = (a2 + 512);
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_272369088(&__dst, *v6, *(v6 + 8));
      }

      else
      {
        __dst = *v6;
      }

      voiceactions::StringSplit(&__dst, " \t", &__str);
      if (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) >= 2)
      {
        if (*(__str.__r_.__value_.__r.__words[0] + 23) < 0)
        {
          sub_272369088(&v110, *__str.__r_.__value_.__l.__data_, *(__str.__r_.__value_.__r.__words[0] + 8));
        }

        else
        {
          v7 = *__str.__r_.__value_.__l.__data_;
          v110.__r_.__value_.__r.__words[2] = *(__str.__r_.__value_.__r.__words[0] + 16);
          *&v110.__r_.__value_.__l.__data_ = v7;
        }

        v8 = std::string::find(&v110, 58, 0);
        if (v8 == -1)
        {
          v11 = -1.0;
        }

        else
        {
          v9 = v8;
          std::string::basic_string(&v118, __str.__r_.__value_.__l.__data_, 0, v8, &v109);
          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          v110 = v118;
          v10 = std::string::basic_string(&v118, __str.__r_.__value_.__l.__data_, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v109);
          v11 = std::stof(v10, 0);
          if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v118.__r_.__value_.__l.__data_);
          }

          std::string::operator=(__str.__r_.__value_.__l.__data_, &v110);
        }

        voiceactions::StringJoin(&__str, " ", &v109);
        v12 = v114;
        if (v114 >= v115)
        {
          v14 = 0xAAAAAAAAAAAAAAABLL * ((v114 - v113) >> 3) + 1;
          if (v14 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_27236F7F0();
          }

          if (0x5555555555555556 * ((v115 - v113) >> 3) > v14)
          {
            v14 = 0x5555555555555556 * ((v115 - v113) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v115 - v113) >> 3) >= 0x555555555555555)
          {
            v15 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v15 = v14;
          }

          v120 = &v113;
          if (v15)
          {
            sub_27236F808(v15);
          }

          size = (8 * ((v114 - v113) >> 3));
          v118.__r_.__value_.__r.__words[0] = 0;
          v118.__r_.__value_.__l.__size_ = size;
          v18 = 0;
          v118.__r_.__value_.__r.__words[2] = size;
          v119 = 0;
          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_272369088(size, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
            v20 = v118.__r_.__value_.__r.__words[2];
            size = v118.__r_.__value_.__l.__size_;
            v18 = v119;
          }

          else
          {
            v19 = *&v109.__r_.__value_.__l.__data_;
            *(8 * ((v114 - v113) >> 3) + 0x10) = *(&v109.__r_.__value_.__l + 2);
            *size = v19;
            v20 = size;
          }

          v16 = v20 + 24;
          v21 = &size[-(v114 - v113)];
          memcpy(v21, v113, v114 - v113);
          v22 = v113;
          v23 = v115;
          v113 = v21;
          v114 = v16;
          v115 = v18;
          v118.__r_.__value_.__r.__words[2] = v22;
          v119 = v23;
          v118.__r_.__value_.__r.__words[0] = v22;
          v118.__r_.__value_.__l.__size_ = v22;
          sub_27236F860(&v118);
        }

        else
        {
          if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_272369088(v114, v109.__r_.__value_.__l.__data_, v109.__r_.__value_.__l.__size_);
          }

          else
          {
            v13 = *&v109.__r_.__value_.__l.__data_;
            *(v114 + 2) = *(&v109.__r_.__value_.__l + 2);
            *v12 = v13;
          }

          v16 = v12 + 24;
        }

        v114 = v16;
        memset(&v118, 0, sizeof(v118));
        sub_27236CB74(&v118, __str.__r_.__value_.__r.__words[0] + 24, __str.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - (__str.__r_.__value_.__r.__words[0] + 24)) >> 3));
        voiceactions::StringJoin(&v118, "_", &__p);
        v117 = &v118;
        sub_27236A158(&v117);
        if (v11 != -1.0)
        {
          sub_2723686B0(MEMORY[0x277D82670], "Custom threshold ", 17);
          v24 = std::ostream::operator<<();
          v25 = sub_2723686B0(v24, " for ", 6);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = __dst.__r_.__value_.__l.__size_;
          }

          goto LABEL_99;
        }

        if (sub_27236CBFC((a2 + 440), &__p))
        {
          v118.__r_.__value_.__r.__words[0] = &__p;
          v11 = *(sub_27236CCF8((a2 + 440), &__p) + 10);
          sub_2723686B0(MEMORY[0x277D82670], "Threshold from file ", 20);
          v28 = std::ostream::operator<<();
          v25 = sub_2723686B0(v28, " for ", 6);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = __dst.__r_.__value_.__l.__size_;
          }

          goto LABEL_99;
        }

        sub_27236B1B4(&v118, "DEFAULT");
        v29 = sub_27236CBFC((a2 + 440), &v118);
        v30 = v29;
        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
          if (v30)
          {
LABEL_50:
            v31 = sub_27236B1B4(&v118, "DEFAULT");
            v32 = sub_272369BE4(v31);
            v33 = v32;
            v34 = *(a2 + 448);
            if (!*&v34)
            {
              goto LABEL_90;
            }

            v35 = vcnt_s8(v34);
            v35.i16[0] = vaddlv_u8(v35);
            v36 = v35.u32[0];
            if (v35.u32[0] > 1uLL)
            {
              v37 = v32;
              if (v32 >= *&v34)
              {
                v37 = v32 % *&v34;
              }
            }

            else
            {
              v37 = (*&v34 - 1) & v32;
            }

            v52 = *(*(a2 + 440) + 8 * v37);
            if (!v52 || (v53 = *v52) == 0)
            {
LABEL_90:
              operator new();
            }

            while (1)
            {
              v54 = *(v53 + 1);
              if (v54 == v33)
              {
                if (sub_27236A034(v53 + 2, &v118))
                {
                  v11 = v53[10];
                  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v118.__r_.__value_.__l.__data_);
                  }

                  sub_2723686B0(MEMORY[0x277D82670], "Using override threshold ", 25);
                  v55 = std::ostream::operator<<();
                  v25 = sub_2723686B0(v55, " for ", 6);
                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_dst = &__dst;
                  }

                  else
                  {
                    p_dst = __dst.__r_.__value_.__r.__words[0];
                  }

                  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v27 = __dst.__r_.__value_.__l.__size_;
                  }

                  goto LABEL_99;
                }
              }

              else
              {
                if (v36 > 1)
                {
                  if (v54 >= *&v34)
                  {
                    v54 %= *&v34;
                  }
                }

                else
                {
                  v54 &= *&v34 - 1;
                }

                if (v54 != v37)
                {
                  goto LABEL_90;
                }
              }

              v53 = *v53;
              if (!v53)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else if (v29)
        {
          goto LABEL_50;
        }

        v38 = __str.__r_.__value_.__r.__words[0];
        v11 = 0.0;
        if (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) >= 2)
        {
          v39 = 0;
          v40 = 1;
          do
          {
            v41 = v38 + v39;
            if (*(v41 + 47) < 0)
            {
              sub_272369088(&v118, *(v41 + 24), *(v41 + 32));
            }

            else
            {
              v42 = *(v41 + 24);
              v118.__r_.__value_.__r.__words[2] = *(v41 + 40);
              *&v118.__r_.__value_.__l.__data_ = v42;
            }

            if (sub_27236CBFC((a2 + 440), &v118))
            {
              v117 = &v118;
              v43 = (sub_27236CCF8((a2 + 440), &v118) + 5);
            }

            else
            {
              v44 = sub_2723686B0(MEMORY[0x277D82670], "Missing threshold for ", 22);
              if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v118;
              }

              else
              {
                v45 = v118.__r_.__value_.__r.__words[0];
              }

              if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v46 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v46 = v118.__r_.__value_.__l.__size_;
              }

              v47 = sub_2723686B0(v44, v45, v46);
              sub_2723686B0(v47, ", using default ", 16);
              v48 = *v106;
              v49 = std::ostream::operator<<();
              sub_2723686B0(v49, "\n", 1);
              v43 = v106;
            }

            v50 = *v43;
            if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v118.__r_.__value_.__l.__data_);
            }

            v11 = v11 + v50;
            ++v40;
            v38 = __str.__r_.__value_.__r.__words[0];
            v39 += 24;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3) > v40);
        }

        sub_2723686B0(MEMORY[0x277D82670], "Computed threshold ", 19);
        v51 = std::ostream::operator<<();
        v25 = sub_2723686B0(v51, " for ", 6);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v27 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v27 = __dst.__r_.__value_.__l.__size_;
        }

LABEL_99:
        v56 = sub_2723686B0(v25, p_dst, v27);
        sub_2723686B0(v56, "\n", 2);
        *&v118.__r_.__value_.__l.__data_ = v11;
        v119 = 0;
        *&v118.__r_.__value_.__r.__words[1] = 0uLL;
        sub_27236CB74(&v118.__r_.__value_.__l.__size_, __str.__r_.__value_.__r.__words[0] + 24, __str.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__str.__r_.__value_.__l.__size_ - (__str.__r_.__value_.__r.__words[0] + 24)) >> 3));
        v116 = &v110;
        v57 = sub_272369758((a2 + 400), &v110);
        *(v57 + 10) = v118.__r_.__value_.__l.__data_;
        sub_27236CF70((v57 + 6));
        *(v57 + 3) = *&v118.__r_.__value_.__r.__words[1];
        v57[8] = v119;
        v119 = 0;
        *&v118.__r_.__value_.__r.__words[1] = 0uLL;
        v117 = &v118.__r_.__value_.__r.__words[1];
        sub_27236A158(&v117);
        v118.__r_.__value_.__r.__words[0] = &v110;
        *(sub_27236CCF8(a1, &v110) + 10) = v11;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v109.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }
      }

      v118.__r_.__value_.__r.__words[0] = &__str;
      sub_27236A158(&v118);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v6 += 24;
    }

    while (v6 != a4);
  }

  v58 = (a1 + 16);
  v59 = MEMORY[0x277D82670];
  while (1)
  {
    v58 = *v58;
    if (!v58)
    {
      break;
    }

    sub_2723686B0(v59, "threshold[ ", 12);
    v60 = *(v58 + 39);
    if (v60 >= 0)
    {
      v61 = (v58 + 2);
    }

    else
    {
      v61 = v58[2];
    }

    if (v60 >= 0)
    {
      v62 = *(v58 + 39);
    }

    else
    {
      v62 = v58[3];
    }

    sub_2723686B0(v59, v61, v62);
    sub_2723686B0(v59, "] = ", 5);
    v63 = *(v58 + 10);
    v64 = std::ostream::operator<<();
    sub_2723686B0(v64, "\n", 1);
  }

  sub_27236CFB0((a2 + 80));
  if (*(a2 + 128))
  {
    v65 = *(a2 + 120);
    if (v65)
    {
      do
      {
        v66 = *v65;
        operator delete(v65);
        v65 = v66;
      }

      while (v66);
    }

    *(a2 + 120) = 0;
    v67 = *(a2 + 112);
    if (v67)
    {
      for (i = 0; i != v67; ++i)
      {
        *(*(a2 + 104) + 8 * i) = 0;
      }
    }

    *(a2 + 128) = 0;
  }

  sub_27236B1B4(&v118, "<eps>");
  sub_27236D008(a2, &v118);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  sub_27236B1B4(&v118, "<eps>");
  sub_27236D46C(a2, &v118);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  memset(&v118, 0, sizeof(v118));
  sub_27236D4E0(a2 + 80, &v118);
  if (v118.__r_.__value_.__r.__words[0])
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  if ((*(a2 + 511) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 496))
    {
      goto LABEL_132;
    }
  }

  else if (*(a2 + 511))
  {
LABEL_132:
    v69 = sub_27236D46C(a2, (a2 + 488));
    goto LABEL_135;
  }

  v69 = -1;
LABEL_135:
  *(a2 + 480) = v69;
  v70 = *(a2 + 80);
  v118.__r_.__value_.__r.__words[0] = 0;
  LODWORD(v118.__r_.__value_.__r.__words[1]) = v69;
  *(&v118.__r_.__value_.__r.__words[1] + 4) = 0;
  v118.__r_.__value_.__s.__data_[20] = 0;
  sub_27236D62C(v70, &v118);
  v72 = v113;
  v105 = v114;
  if (v113 == v114)
  {
    goto LABEL_180;
  }

  do
  {
    if (v72[23] < 0)
    {
      sub_272369088(&v118, *v72, *(v72 + 1));
    }

    else
    {
      v73 = *v72;
      v118.__r_.__value_.__r.__words[2] = *(v72 + 2);
      *&v118.__r_.__value_.__l.__data_ = v73;
    }

    if (std::string::find(&v118, 58, 0) != -1)
    {
      __assert_rtn("CompileFstFromProns", "OnlineFstSpottingDecoder.hpp", 821, "line.find(':') == std::string::npos");
    }

    voiceactions::StringSplit(&v118, " \t", &__dst);
    v74 = __dst.__r_.__value_.__r.__words[0];
    if (*(__dst.__r_.__value_.__r.__words[0] + 23) < 0)
    {
      sub_272369088(&__str, *__dst.__r_.__value_.__l.__data_, *(__dst.__r_.__value_.__r.__words[0] + 8));
      v74 = __dst.__r_.__value_.__r.__words[0];
    }

    else
    {
      v75 = *__dst.__r_.__value_.__l.__data_;
      __str.__r_.__value_.__r.__words[2] = *(__dst.__r_.__value_.__r.__words[0] + 16);
      *&__str.__r_.__value_.__l.__data_ = v75;
    }

    memset(&v110, 0, sizeof(v110));
    sub_27236CB74(&v110, v74 + 24, __dst.__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - (v74 + 24)) >> 3));
    v107 = v72;
    sub_27236CF70(&__dst);
    __dst = v110;
    memset(&v110, 0, sizeof(v110));
    v109.__r_.__value_.__r.__words[0] = &v110;
    sub_27236A158(&v109);
    v76 = -1431655765 * ((*(a2 + 88) - *(a2 + 80)) >> 3);
    v77 = __dst.__r_.__value_.__r.__words[0];
    if (__dst.__r_.__value_.__l.__size_ == __dst.__r_.__value_.__r.__words[0])
    {
      v90 = v76 - 1;
    }

    else
    {
      v78 = 0;
      v79 = 0;
      do
      {
        v80 = sub_27236D46C(a2, (v77 + v78));
        memset(&v110, 0, sizeof(v110));
        sub_27236D4E0(a2 + 80, &v110);
        if (v110.__r_.__value_.__r.__words[0])
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        v81 = *(a2 + 88) - 24;
        v82 = *(a2 + 480);
        LODWORD(v110.__r_.__value_.__l.__data_) = v76;
        *(v110.__r_.__value_.__r.__words + 4) = __PAIR64__(v82, v76);
        v110.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v81, &v110);
        v83 = *(a2 + 88) - 24;
        v84 = *(a2 + 480);
        if (v79)
        {
          v85 = v76 - 1;
        }

        else
        {
          v85 = 0;
        }

        v110.__r_.__value_.__r.__words[0] = __PAIR64__(v85, v76);
        LODWORD(v110.__r_.__value_.__r.__words[1]) = v84;
        *(&v110.__r_.__value_.__r.__words[1] + 4) = 0;
        v110.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v83, &v110);
        memset(&v110, 0, sizeof(v110));
        sub_27236D4E0(a2 + 80, &v110);
        if (v110.__r_.__value_.__r.__words[0])
        {
          operator delete(v110.__r_.__value_.__l.__data_);
        }

        v86 = *(a2 + 88) - 24;
        LODWORD(v110.__r_.__value_.__l.__data_) = v76 + 1;
        HIDWORD(v110.__r_.__value_.__r.__words[0]) = v76 + 1;
        LODWORD(v110.__r_.__value_.__r.__words[1]) = v80;
        *(&v110.__r_.__value_.__r.__words[1] + 4) = 0;
        v110.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v86, &v110);
        if (v79 + 1 == 0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 3))
        {
          v87 = sub_27236D008(a2, &__str);
        }

        else
        {
          v87 = 0;
        }

        v88 = *(a2 + 88) - 24;
        LODWORD(v110.__r_.__value_.__l.__data_) = v76 + 1;
        *(v110.__r_.__value_.__r.__words + 4) = __PAIR64__(v80, v85);
        *(&v110.__r_.__value_.__r.__words[1] + 4) = v87;
        v110.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v88, &v110);
        v89 = *(a2 + 88) - 24;
        LODWORD(v110.__r_.__value_.__l.__data_) = v76 + 1;
        *(v110.__r_.__value_.__r.__words + 4) = __PAIR64__(v80, v76);
        *(&v110.__r_.__value_.__r.__words[1] + 4) = v87;
        v110.__r_.__value_.__s.__data_[20] = 0;
        sub_27236D62C(v89, &v110);
        v77 = __dst.__r_.__value_.__r.__words[0];
        ++v79;
        v76 += 2;
        v78 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((__dst.__r_.__value_.__l.__size_ - __dst.__r_.__value_.__r.__words[0]) >> 3) > v79);
      v90 = -1 - 1431655765 * ((*(a2 + 88) - *(a2 + 80)) >> 3);
    }

    v91 = *(a2 + 112);
    if (!v91)
    {
      goto LABEL_174;
    }

    v92 = vcnt_s8(v91);
    v92.i16[0] = vaddlv_u8(v92);
    if (v92.u32[0] > 1uLL)
    {
      v93 = v90;
      if (v91 <= v90)
      {
        v93 = v90 % v91;
      }
    }

    else
    {
      v93 = (v91 - 1) & v90;
    }

    v94 = *(*(a2 + 104) + 8 * v93);
    if (!v94 || (v95 = *v94) == 0)
    {
LABEL_174:
      operator new();
    }

    while (1)
    {
      v96 = v95[1];
      if (v96 == v90)
      {
        break;
      }

      if (v92.u32[0] > 1uLL)
      {
        if (v96 >= v91)
        {
          v96 %= v91;
        }
      }

      else
      {
        v96 &= v91 - 1;
      }

      if (v96 != v93)
      {
        goto LABEL_174;
      }

LABEL_173:
      v95 = *v95;
      if (!v95)
      {
        goto LABEL_174;
      }
    }

    if (*(v95 + 4) != v90)
    {
      goto LABEL_173;
    }

    *(v95 + 5) = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    __str.__r_.__value_.__r.__words[0] = &__dst;
    sub_27236A158(&__str);
    if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v118.__r_.__value_.__l.__data_);
    }

    v72 += 24;
  }

  while (v107 + 24 != v105);
LABEL_180:
  v97 = *(a2 + 80);
  v98 = *(a2 + 88);
  if (v97 == v98)
  {
    v103 = *(a2 + 80);
  }

  else
  {
    do
    {
      v99 = *v97;
      v100 = v97[1];
      v97 += 3;
      v101 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v100 - v99) >> 3));
      if (v100 == v99)
      {
        v102 = 0;
      }

      else
      {
        v102 = v101;
      }

      v71 = sub_27236D760(v99, v100, v102, 1, v71);
    }

    while (v97 != v98);
    v97 = *(a2 + 80);
    v103 = *(a2 + 88);
  }

  sub_27236C8E0((a2 + 184), (-1431655765 * ((v103 - v97) >> 3)));
  sub_272368A90(a2);
  v118.__r_.__value_.__r.__words[0] = &v113;
  sub_27236A158(&v118);
}

void sub_27236C6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void **a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46)
{
  sub_27236F624(1, v46);
  if (*(v47 - 153) < 0)
  {
    operator delete(*(v47 - 176));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  a25 = &a32;
  sub_27236A158(&a25);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  a39 = &a45;
  sub_27236A158(&a39);
  sub_27236FFF0(a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27236C8E0(uint64_t *result, unint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  v4 = (v2 - *result) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      result[1] = v3 + 32 * a2;
    }
  }

  else
  {
    v5 = a2 - v4;
    v6 = result[2];
    if (v5 > (v6 - v2) >> 5)
    {
      if (!(a2 >> 59))
      {
        v7 = v6 - v3;
        v8 = (v6 - v3) >> 4;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFE0)
        {
          v9 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 59))
        {
          operator new();
        }

        sub_272367460();
      }

      sub_27236F7F0();
    }

    v10 = v2 + 32 * v5;
    v11 = voiceactions::kLogZero;
    v12 = voiceactions::kNolabel;
    do
    {
      *v2 = v12;
      *(v2 + 4) = v11;
      *(v2 + 8) = voiceactions::kNoTime;
      *(v2 + 20) = 0;
      *(v2 + 12) = 0;
      *(v2 + 28) = v11;
      v2 += 32;
    }

    while (v2 != v10);
    result[1] = v10;
  }

  return result;
}

void voiceactions::StringSplit(std::string *a1@<X0>, char *a2@<X1>, size_t *a3@<X8>)
{
  sub_27236B1B4(__p, a2);
  voiceactions::StringSplit(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27236CAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void voiceactions::StringJoin(std::string *a1@<X0>, char *a2@<X1>, std::string *a3@<X8>)
{
  sub_27236B1B4(__p, a2);
  voiceactions::StringJoin(a1, __p, a3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_27236CB58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_27236CB74(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_27236F680(result, a4);
  }

  return result;
}

void sub_27236CBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_27236A158(&a9);
  _Unwind_Resume(a1);
}

void *sub_27236CBFC(void *a1, void *a2)
{
  v4 = sub_272369BE4(a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (sub_27236A034(v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_27236CCF8(void *a1, void *a2)
{
  v4 = sub_272369BE4(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_27236A034(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_27236CF70(uint64_t a1)
{
  if (*a1)
  {
    sub_27236A1AC(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_27236CFB0(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

uint64_t sub_27236D008(void *a1, std::string *a2)
{
  if (!sub_27236CBFC(a1 + 40, a2))
  {
    v4 = a1[43];
    *(sub_27236EF68(a1 + 40, a2) + 10) = v4;
    v5 = a1[46];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
    if (v6.u32[0] > 1uLL)
    {
      v7 = v4;
      if (v5 <= v4)
      {
        v7 = v4 % v5;
      }
    }

    else
    {
      v7 = (v5 - 1) & v4;
    }

    v8 = *(a1[45] + 8 * v7);
    if (!v8 || (v9 = *v8) == 0)
    {
LABEL_19:
      operator new();
    }

    while (1)
    {
      size = v9->__r_.__value_.__l.__size_;
      if (size == v4)
      {
        if (LODWORD(v9->__r_.__value_.__r.__words[2]) == v4)
        {
          std::string::operator=(v9 + 1, a2);
          return *(sub_27236EF68(a1 + 40, a2) + 10);
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (size >= v5)
          {
            size %= v5;
          }
        }

        else
        {
          size &= v5 - 1;
        }

        if (size != v7)
        {
          goto LABEL_19;
        }
      }

      v9 = v9->__r_.__value_.__r.__words[0];
      if (!v9)
      {
        goto LABEL_19;
      }
    }
  }

  return *(sub_27236EF68(a1 + 40, a2) + 10);
}

uint64_t sub_27236D46C(uint64_t a1, void *a2)
{
  if (!sub_27236CBFC((a1 + 280), a2))
  {
    v4 = *(a1 + 304);
    *(sub_27236EF68((a1 + 280), a2) + 10) = v4;
  }

  return *(sub_27236EF68((a1 + 280), a2) + 10);
}

void sub_27236D4E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27236F7F0();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_272367460();
    }

    v10 = 24 * v6;
    *v10 = *a2;
    *(v10 + 16) = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = 24 * v6 + 24;
    v11 = *a1;
    v12 = *(a1 + 8) - *a1;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), *a1, v12);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = *a2;
    v3[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = (v3 + 3);
  }

  *(a1 + 8) = v5;
}

void sub_27236D62C(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = *a1;
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_27236F7F0();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v7) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_272367460();
    }

    v12 = 8 * (v8 >> 3);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    v6 = v12 + 24;
    v13 = v12 - v8;
    memcpy((v12 - v8), v7, v8);
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 24;
  }

  *(a1 + 8) = v6;
}

__n128 sub_27236D760(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 20) <= *(v12 + 4))
        {
          return result;
        }

LABEL_110:
        *&v163[16] = *(v12 + 16);
        *v163 = *v12;
        v81 = *v9;
        *(v12 + 13) = *(a2 - 11);
        *v12 = v81;
        result = *v163;
LABEL_111:
        *(a2 - 11) = *&v163[13];
        *v9 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v82 = *(v12 + 28);
      v83 = *(v12 + 52);
      if (v82 <= *(v12 + 4))
      {
        if (v83 > v82)
        {
          *v169 = *(v12 + 24);
          result = *v169;
          *&v169[16] = *(v12 + 40);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 37) = *(v12 + 61);
          *(v12 + 48) = *v169;
          *(v12 + 61) = *&v169[13];
          if (*(v12 + 28) > *(v12 + 4))
          {
            *&v170[16] = *(v12 + 16);
            *v170 = *v12;
            *v12 = *(v12 + 24);
            *(v12 + 13) = *(v12 + 37);
            result = *v170;
            *(v12 + 24) = *v170;
            *(v12 + 37) = *&v170[13];
          }
        }
      }

      else
      {
        if (v83 > v82)
        {
          *&v164[16] = *(v12 + 16);
          *v164 = *v12;
          *v12 = *(v12 + 48);
          *(v12 + 13) = *(v12 + 61);
          result = *v164;
          goto LABEL_189;
        }

        *&v173[16] = *(v12 + 16);
        *v173 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 13) = *(v12 + 37);
        result = *v173;
        *(v12 + 24) = *v173;
        *(v12 + 37) = *&v173[13];
        if (v83 > *(v12 + 28))
        {
          result = *(v12 + 24);
          *&v164[12] = result.n128_u32[3];
          *&v164[16] = *(v12 + 40);
          *(v12 + 24) = *(v12 + 48);
          *(v12 + 37) = *(v12 + 61);
LABEL_189:
          *(v12 + 48) = result;
          *(v12 + 61) = *&v164[13];
        }
      }

      if (*(a2 - 20) <= *(v12 + 52))
      {
        return result;
      }

      *v174 = *(v12 + 48);
      result = *v174;
      *&v174[16] = *(v12 + 64);
      v136 = *(a2 - 11);
      *(v12 + 48) = *v9;
      *(v12 + 61) = v136;
      *(a2 - 11) = *&v174[13];
      *v9 = *v174;
      if (*(v12 + 52) <= *(v12 + 28))
      {
        return result;
      }

      *v175 = *(v12 + 24);
      result = *v175;
      *&v175[16] = *(v12 + 40);
      *(v12 + 24) = *(v12 + 48);
      *(v12 + 37) = *(v12 + 61);
      *(v12 + 48) = *v175;
      *(v12 + 61) = *&v175[13];
LABEL_193:
      if (*(v12 + 28) > *(v12 + 4))
      {
        *&v176[16] = *(v12 + 16);
        *v176 = *v12;
        *v12 = *(v12 + 24);
        *(v12 + 13) = *(v12 + 37);
        result = *v176;
        *(v12 + 24) = *v176;
        *(v12 + 37) = *&v176[13];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = sub_27236E75C(v12, v12 + 24, v12 + 48, v12 + 72, a2 - 24, result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v84 = (v12 + 24);
      v86 = v12 == a2 || v84 == a2;
      if (a4)
      {
        if (!v86)
        {
          v87 = 0;
          v88 = v12;
          do
          {
            v89 = v84;
            v90 = v88[7];
            if (v90 > v88[1])
            {
              v91 = *v89;
              v165 = *(v88 + 2);
              v92 = v87;
              while (1)
              {
                v93 = v12 + v92;
                result = *(v12 + v92);
                *(v93 + 24) = result;
                *(v93 + 37) = *(v12 + v92 + 13);
                if (!v92)
                {
                  break;
                }

                v92 -= 24;
                if (v90 <= *(v93 - 20))
                {
                  v94 = v12 + v92 + 24;
                  goto LABEL_130;
                }
              }

              v94 = v12;
LABEL_130:
              *v94 = v91;
              *(v94 + 4) = v90;
              *(v94 + 8) = v165;
              *(v94 + 13) = *(&v165 + 5);
            }

            v84 = v89 + 6;
            v87 += 24;
            v88 = v89;
          }

          while (v89 + 6 != a2);
        }
      }

      else if (!v86)
      {
        do
        {
          v130 = v84;
          v131 = *(a1 + 28);
          if (v131 > *(a1 + 4))
          {
            v132 = *v84;
            v171 = *(a1 + 32);
            v133 = v130;
            do
            {
              result = *(v133 - 6);
              *v133 = result;
              *(v133 + 13) = *(v133 - 11);
              v134 = *(v133 - 11);
              v133 -= 6;
            }

            while (v131 > v134);
            *v133 = v132;
            v133[1] = v131;
            *(v133 + 13) = *(&v171 + 5);
            *(v133 + 1) = v171;
          }

          v84 = v130 + 6;
          a1 = v130;
        }

        while (v130 + 6 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v95 = (v14 - 2) >> 1;
        v96 = v95;
        do
        {
          v97 = v96;
          if (v95 >= v96)
          {
            v98 = (2 * v96) | 1;
            v99 = v12 + 24 * v98;
            if (2 * v97 + 2 < v14)
            {
              v100 = *(v99 + 4);
              v101 = *(v99 + 28);
              v102 = v100 <= v101;
              v103 = v100 <= v101 ? 0 : 24;
              v99 += v103;
              if (!v102)
              {
                v98 = 2 * v97 + 2;
              }
            }

            v104 = v12 + 24 * v97;
            v105 = *(v104 + 4);
            if (*(v99 + 4) <= v105)
            {
              v106 = *v104;
              v166 = *(v104 + 8);
              do
              {
                v107 = v104;
                v104 = v99;
                v108 = *v99;
                *(v107 + 13) = *(v99 + 13);
                *v107 = v108;
                if (v95 < v98)
                {
                  break;
                }

                v109 = (2 * v98) | 1;
                v99 = v12 + 24 * v109;
                v110 = 2 * v98 + 2;
                if (v110 < v14)
                {
                  v111 = *(v99 + 4);
                  v112 = *(v99 + 28);
                  v113 = v111 <= v112;
                  v114 = v111 <= v112 ? 0 : 24;
                  v99 += v114;
                  if (!v113)
                  {
                    v109 = v110;
                  }
                }

                v98 = v109;
              }

              while (*(v99 + 4) <= v105);
              *v104 = v106;
              *(v104 + 4) = v105;
              *(v104 + 8) = v166;
              *(v104 + 13) = *(&v166 + 5);
            }
          }

          v96 = v97 - 1;
        }

        while (v97);
        v115 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v116 = 0;
          *&v167[16] = *(v12 + 16);
          *v167 = *v12;
          v117 = v12;
          do
          {
            v118 = v117 + 24 * v116;
            v119 = v118 + 24;
            v120 = (2 * v116) | 1;
            v116 = 2 * v116 + 2;
            if (v116 >= v115)
            {
              v116 = v120;
            }

            else if (*(v118 + 28) <= *(v118 + 52))
            {
              v116 = v120;
            }

            else
            {
              v119 = v118 + 48;
            }

            v121 = *v119;
            *(v117 + 13) = *(v119 + 13);
            *v117 = v121;
            v117 = v119;
          }

          while (v116 <= ((v115 - 2) >> 1));
          a2 -= 24;
          if (v119 == a2)
          {
            result = *v167;
            *(v119 + 13) = *&v167[13];
            *v119 = *v167;
          }

          else
          {
            v122 = *a2;
            *(v119 + 13) = *(a2 + 13);
            *v119 = v122;
            result = *v167;
            *(a2 + 13) = *&v167[13];
            *a2 = *v167;
            v123 = v119 - v12 + 24;
            if (v123 >= 25)
            {
              v124 = (-2 - 0x5555555555555555 * (v123 >> 3)) >> 1;
              v125 = v12 + 24 * v124;
              v126 = *(v119 + 4);
              if (*(v125 + 4) > v126)
              {
                v127 = *v119;
                v139 = *(v119 + 8);
                do
                {
                  v128 = v119;
                  v119 = v125;
                  result = *v125;
                  *(v128 + 13) = *(v125 + 13);
                  *v128 = result;
                  if (!v124)
                  {
                    break;
                  }

                  v124 = (v124 - 1) >> 1;
                  v125 = v12 + 24 * v124;
                }

                while (*(v125 + 4) > v126);
                *v119 = v127;
                *(v119 + 4) = v126;
                *(v119 + 8) = v139;
                *(v119 + 13) = *(&v139 + 5);
              }
            }
          }

          v102 = v115-- <= 2;
        }

        while (!v102);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 24 * (v14 >> 1);
    v17 = *(a2 - 20);
    if (v13 >= 0xC01)
    {
      v18 = *(v16 + 4);
      if (v18 <= *(v12 + 4))
      {
        if (v17 > v18)
        {
          *&v142[16] = *(v16 + 16);
          *v142 = *v16;
          v22 = *v9;
          *(v16 + 13) = *(a2 - 11);
          *v16 = v22;
          *(a2 - 11) = *&v142[13];
          *v9 = *v142;
          if (*(v16 + 4) > *(v12 + 4))
          {
            *&v143[16] = *(v12 + 16);
            *v143 = *v12;
            v23 = *v16;
            *(v12 + 13) = *(v16 + 13);
            *v12 = v23;
            *(v16 + 13) = *&v143[13];
            *v16 = *v143;
          }
        }
      }

      else
      {
        if (v17 > v18)
        {
          *&v140[16] = *(v12 + 16);
          *v140 = *v12;
          v19 = *v9;
          *(v12 + 13) = *(a2 - 11);
          *v12 = v19;
          goto LABEL_26;
        }

        *&v146[16] = *(v12 + 16);
        *v146 = *v12;
        v26 = *v16;
        *(v12 + 13) = *(v16 + 13);
        *v12 = v26;
        *(v16 + 13) = *&v146[13];
        *v16 = *v146;
        if (*(a2 - 20) > *(v16 + 4))
        {
          *&v140[16] = *(v16 + 16);
          *v140 = *v16;
          v27 = *v9;
          *(v16 + 13) = *(a2 - 11);
          *v16 = v27;
LABEL_26:
          *(a2 - 11) = *&v140[13];
          *v9 = *v140;
        }
      }

      v28 = v12 + 24 * v15;
      v29 = v28 - 24;
      v30 = *(v28 - 20);
      v31 = *(a2 - 44);
      if (v30 <= *(v12 + 28))
      {
        if (v31 > v30)
        {
          *&v148[16] = *(v29 + 16);
          *v148 = *v29;
          v34 = *v10;
          *(v29 + 13) = *(a2 - 35);
          *v29 = v34;
          *(a2 - 35) = *&v148[13];
          *v10 = *v148;
          if (*(v29 + 4) > *(v12 + 28))
          {
            *v149 = *(v12 + 24);
            *&v149[16] = *(v12 + 40);
            v35 = *(v29 + 13);
            *(v12 + 24) = *v29;
            *(v12 + 37) = v35;
            *(v29 + 13) = *&v149[13];
            *v29 = *v149;
          }
        }
      }

      else
      {
        if (v31 > v30)
        {
          v32 = *(v12 + 24);
          *&v147[12] = HIDWORD(v32);
          *&v147[16] = *(v12 + 40);
          v33 = *(a2 - 35);
          *(v12 + 24) = *v10;
          *(v12 + 37) = v33;
          goto LABEL_38;
        }

        *v151 = *(v12 + 24);
        *&v151[16] = *(v12 + 40);
        v38 = *(v29 + 13);
        *(v12 + 24) = *v29;
        *(v12 + 37) = v38;
        *(v29 + 13) = *&v151[13];
        *v29 = *v151;
        if (*(a2 - 44) > *(v29 + 4))
        {
          *&v147[16] = *(v29 + 16);
          *v147 = *v29;
          v39 = *v10;
          *(v29 + 13) = *(a2 - 35);
          *v29 = v39;
          v32 = *v147;
LABEL_38:
          *(a2 - 35) = *&v147[13];
          *v10 = v32;
        }
      }

      v40 = v12 + 24 * v15;
      v41 = *(v40 + 28);
      v42 = *(a2 - 68);
      if (v41 <= *(v12 + 52))
      {
        if (v42 > v41)
        {
          *&v153[16] = *(v40 + 40);
          *v153 = *(v40 + 24);
          v45 = *v11;
          *(v40 + 37) = *(a2 - 59);
          *(v40 + 24) = v45;
          *(a2 - 59) = *&v153[13];
          *v11 = *v153;
          if (*(v40 + 28) > *(v12 + 52))
          {
            *v154 = *(v12 + 48);
            *&v154[16] = *(v12 + 64);
            v46 = *(v40 + 37);
            *(v12 + 48) = *(v40 + 24);
            *(v12 + 61) = v46;
            *(v40 + 37) = *&v154[13];
            *(v40 + 24) = *v154;
          }
        }
      }

      else
      {
        if (v42 > v41)
        {
          v43 = *(v12 + 48);
          *&v152[12] = HIDWORD(v43);
          *&v152[16] = *(v12 + 64);
          v44 = *(a2 - 59);
          *(v12 + 48) = *v11;
          *(v12 + 61) = v44;
          goto LABEL_47;
        }

        *v155 = *(v12 + 48);
        *&v155[16] = *(v12 + 64);
        v47 = *(v40 + 37);
        *(v12 + 48) = *(v40 + 24);
        *(v12 + 61) = v47;
        *(v40 + 37) = *&v155[13];
        *(v40 + 24) = *v155;
        if (*(a2 - 68) > *(v40 + 28))
        {
          *&v152[16] = *(v40 + 40);
          *v152 = *(v40 + 24);
          v48 = *v11;
          *(v40 + 37) = *(a2 - 59);
          *(v40 + 24) = v48;
          v43 = *v152;
LABEL_47:
          *(a2 - 59) = *&v152[13];
          *v11 = v43;
        }
      }

      v49 = *(v16 + 4);
      v50 = *(v40 + 28);
      if (v49 <= *(v29 + 4))
      {
        if (v50 > v49)
        {
          *&v157[16] = *(v16 + 16);
          *v157 = *v16;
          *v16 = *(v40 + 24);
          *(v16 + 13) = *(v40 + 37);
          *(v40 + 37) = *&v157[13];
          *(v40 + 24) = *v157;
          if (*(v16 + 4) > *(v29 + 4))
          {
            *&v158[16] = *(v29 + 16);
            *v158 = *v29;
            *v29 = *v16;
            *(v29 + 13) = *(v16 + 13);
            *(v16 + 13) = *&v158[13];
            *v16 = *v158;
          }
        }
      }

      else
      {
        if (v50 > v49)
        {
          *&v156[16] = *(v29 + 16);
          *v156 = *v29;
          *v29 = *(v40 + 24);
          *(v29 + 13) = *(v40 + 37);
          goto LABEL_56;
        }

        *&v159[16] = *(v29 + 16);
        *v159 = *v29;
        *v29 = *v16;
        *(v29 + 13) = *(v16 + 13);
        *(v16 + 13) = *&v159[13];
        *v16 = *v159;
        if (*(v40 + 28) > *(v16 + 4))
        {
          *&v156[16] = *(v16 + 16);
          *v156 = *v16;
          *v16 = *(v40 + 24);
          *(v16 + 13) = *(v40 + 37);
LABEL_56:
          *(v40 + 37) = *&v156[13];
          *(v40 + 24) = *v156;
        }
      }

      *&v160[16] = *(v12 + 16);
      *v160 = *v12;
      v51 = *v16;
      *(v12 + 13) = *(v16 + 13);
      *v12 = v51;
      *(v16 + 13) = *&v160[13];
      *v16 = *v160;
      goto LABEL_58;
    }

    v20 = *(v12 + 4);
    if (v20 <= *(v16 + 4))
    {
      if (v17 > v20)
      {
        *&v144[16] = *(v12 + 16);
        *v144 = *v12;
        v24 = *v9;
        *(v12 + 13) = *(a2 - 11);
        *v12 = v24;
        *(a2 - 11) = *&v144[13];
        *v9 = *v144;
        if (*(v12 + 4) > *(v16 + 4))
        {
          *&v145[16] = *(v16 + 16);
          *v145 = *v16;
          v25 = *v12;
          *(v16 + 13) = *(v12 + 13);
          *v16 = v25;
          *(v12 + 13) = *&v145[13];
          *v12 = *v145;
        }
      }

      goto LABEL_58;
    }

    if (v17 > v20)
    {
      *&v141[16] = *(v16 + 16);
      *v141 = *v16;
      v21 = *v9;
      *(v16 + 13) = *(a2 - 11);
      *v16 = v21;
LABEL_35:
      *(a2 - 11) = *&v141[13];
      *v9 = *v141;
      goto LABEL_58;
    }

    *&v150[16] = *(v16 + 16);
    *v150 = *v16;
    v36 = *v12;
    *(v16 + 13) = *(v12 + 13);
    *v16 = v36;
    *(v12 + 13) = *&v150[13];
    *v12 = *v150;
    if (*(a2 - 20) > *(v12 + 4))
    {
      *&v141[16] = *(v12 + 16);
      *v141 = *v12;
      v37 = *v9;
      *(v12 + 13) = *(a2 - 11);
      *v12 = v37;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v52 = *(v12 + 4);
LABEL_61:
      v53 = *v12;
      v54 = *(v12 + 8);
      v137 = v54;
      v55 = v12;
      do
      {
        v56 = v55;
        v55 += 24;
      }

      while (*(v56 + 28) > v52);
      v57 = a2;
      if (v56 == v12)
      {
        v60 = a2;
        while (v55 < v60)
        {
          v58 = v60 - 24;
          v61 = *(v60 - 20);
          v60 -= 24;
          if (v61 > v52)
          {
            goto LABEL_71;
          }
        }

        v58 = v60;
      }

      else
      {
        do
        {
          v58 = v57 - 24;
          v59 = *(v57 - 20);
          v57 -= 24;
        }

        while (v59 <= v52);
      }

LABEL_71:
      v12 = v55;
      if (v55 < v58)
      {
        v62 = v58;
        do
        {
          *v161 = *v12;
          v54 = *v12;
          *&v161[16] = *(v12 + 16);
          v63 = *(v62 + 13);
          *v12 = *v62;
          *(v12 + 13) = v63;
          *(v62 + 13) = *&v161[13];
          *v62 = v54;
          do
          {
            v64 = *(v12 + 28);
            v12 += 24;
          }

          while (v64 > v52);
          do
          {
            v65 = *(v62 - 20);
            v62 -= 24;
          }

          while (v65 <= v52);
        }

        while (v12 < v62);
      }

      if (v12 - 24 != a1)
      {
        v54 = *(v12 - 24);
        *(a1 + 13) = *(v12 - 11);
        *a1 = v54;
      }

      *(v12 - 24) = v53;
      *(v12 - 20) = v52;
      *(v12 - 11) = *(v137.n128_u64 + 5);
      *(v12 - 16) = v137.n128_u64[0];
      if (v55 < v58)
      {
        goto LABEL_82;
      }

      v66 = sub_27236EA28(a1, v12 - 24, v54);
      if (sub_27236EA28(v12, a2, v67))
      {
        a2 = v12 - 24;
        if (!v66)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v66)
      {
LABEL_82:
        sub_27236D760(a1, v12 - 24, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v52 = *(v12 + 4);
      if (*(v12 - 20) > v52)
      {
        goto LABEL_61;
      }

      v68 = *v12;
      result = *(v12 + 8);
      v138 = result;
      if (v52 <= *(a2 - 20))
      {
        v71 = v12 + 24;
        do
        {
          v12 = v71;
          if (v71 >= a2)
          {
            break;
          }

          v72 = *(v71 + 4);
          v71 += 24;
        }

        while (v52 <= v72);
      }

      else
      {
        v69 = v12;
        do
        {
          v12 = v69 + 24;
          v70 = *(v69 + 28);
          v69 += 24;
        }

        while (v52 <= v70);
      }

      v73 = a2;
      if (v12 < a2)
      {
        v74 = a2;
        do
        {
          v73 = v74 - 24;
          v75 = *(v74 - 20);
          v74 -= 24;
        }

        while (v52 > v75);
      }

      while (v12 < v73)
      {
        *&v162[16] = *(v12 + 16);
        *v162 = *v12;
        v76 = *v73;
        *(v12 + 13) = *(v73 + 13);
        *v12 = v76;
        result = *v162;
        *(v73 + 13) = *&v162[13];
        *v73 = *v162;
        do
        {
          v77 = *(v12 + 28);
          v12 += 24;
        }

        while (v52 <= v77);
        do
        {
          v78 = *(v73 - 20);
          v73 -= 24;
        }

        while (v52 > v78);
      }

      if (v12 - 24 != a1)
      {
        result = *(v12 - 24);
        *(a1 + 13) = *(v12 - 11);
        *a1 = result;
      }

      a4 = 0;
      *(v12 - 24) = v68;
      *(v12 - 20) = v52;
      *(v12 - 11) = *(v138.n128_u64 + 5);
      *(v12 - 16) = v138.n128_u64[0];
    }
  }

  v79 = *(v12 + 28);
  v80 = *(a2 - 20);
  if (v79 <= *(v12 + 4))
  {
    if (v80 <= v79)
    {
      return result;
    }

    *v168 = *(v12 + 24);
    result = *v168;
    *&v168[16] = *(v12 + 40);
    v129 = *(a2 - 11);
    *(v12 + 24) = *v9;
    *(v12 + 37) = v129;
    *(a2 - 11) = *&v168[13];
    *v9 = *v168;
    goto LABEL_193;
  }

  if (v80 > v79)
  {
    goto LABEL_110;
  }

  *&v172[16] = *(v12 + 16);
  *v172 = *v12;
  *v12 = *(v12 + 24);
  *(v12 + 13) = *(v12 + 37);
  result = *v172;
  *(v12 + 24) = *v172;
  *(v12 + 37) = *&v172[13];
  if (*(a2 - 20) > *(v12 + 28))
  {
    result = *(v12 + 24);
    *&v163[12] = result.n128_u32[3];
    *&v163[16] = *(v12 + 40);
    v135 = *(a2 - 11);
    *(v12 + 24) = *v9;
    *(v12 + 37) = v135;
    goto LABEL_111;
  }

  return result;
}

__n128 sub_27236E75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 4);
  v7 = *(a3 + 4);
  if (v6 <= *(a1 + 4))
  {
    if (v7 > v6)
    {
      *v21 = *a2;
      result = *a2;
      *&v21[16] = *(a2 + 16);
      v9 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v9;
      *a3 = result;
      *(a3 + 13) = *&v21[13];
      if (*(a2 + 4) > *(a1 + 4))
      {
        *v22 = *a1;
        result = *a1;
        *&v22[16] = *(a1 + 16);
        v10 = *(a2 + 13);
        *a1 = *a2;
        *(a1 + 13) = v10;
        *a2 = result;
        *(a2 + 13) = *&v22[13];
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *v20 = *a1;
      *&v20[16] = *(a1 + 16);
      v8 = *(a3 + 13);
      *a1 = *a3;
      *(a1 + 13) = v8;
LABEL_9:
      *a3 = result;
      *(a3 + 13) = *&v20[13];
      goto LABEL_10;
    }

    *v23 = *a1;
    result = *a1;
    *&v23[16] = *(a1 + 16);
    v11 = *(a2 + 13);
    *a1 = *a2;
    *(a1 + 13) = v11;
    *a2 = result;
    *(a2 + 13) = *&v23[13];
    if (*(a3 + 4) > *(a2 + 4))
    {
      result = *a2;
      *v20 = *a2;
      *&v20[16] = *(a2 + 16);
      v12 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 4) > *(a3 + 4))
  {
    *v24 = *a3;
    result = *a3;
    *&v24[16] = *(a3 + 16);
    v13 = *(a4 + 13);
    *a3 = *a4;
    *(a3 + 13) = v13;
    *a4 = result;
    *(a4 + 13) = *&v24[13];
    if (*(a3 + 4) > *(a2 + 4))
    {
      *v25 = *a2;
      result = *a2;
      *&v25[16] = *(a2 + 16);
      v14 = *(a3 + 13);
      *a2 = *a3;
      *(a2 + 13) = v14;
      *a3 = result;
      *(a3 + 13) = *&v25[13];
      if (*(a2 + 4) > *(a1 + 4))
      {
        *v26 = *a1;
        result = *a1;
        *&v26[16] = *(a1 + 16);
        v15 = *(a2 + 13);
        *a1 = *a2;
        *(a1 + 13) = v15;
        *a2 = result;
        *(a2 + 13) = *&v26[13];
      }
    }
  }

  if (*(a5 + 4) > *(a4 + 4))
  {
    *v27 = *a4;
    result = *a4;
    *&v27[16] = *(a4 + 16);
    v16 = *(a5 + 13);
    *a4 = *a5;
    *(a4 + 13) = v16;
    *a5 = result;
    *(a5 + 13) = *&v27[13];
    if (*(a4 + 4) > *(a3 + 4))
    {
      *v28 = *a3;
      result = *a3;
      *&v28[16] = *(a3 + 16);
      v17 = *(a4 + 13);
      *a3 = *a4;
      *(a3 + 13) = v17;
      *a4 = result;
      *(a4 + 13) = *&v28[13];
      if (*(a3 + 4) > *(a2 + 4))
      {
        *v29 = *a2;
        result = *a2;
        *&v29[16] = *(a2 + 16);
        v18 = *(a3 + 13);
        *a2 = *a3;
        *(a2 + 13) = v18;
        *a3 = result;
        *(a3 + 13) = *&v29[13];
        if (*(a2 + 4) > *(a1 + 4))
        {
          *v30 = *a1;
          result = *a1;
          *&v30[16] = *(a1 + 16);
          v19 = *(a2 + 13);
          *a1 = *a2;
          *(a1 + 13) = v19;
          *a2 = result;
          *(a2 + 13) = *&v30[13];
        }
      }
    }
  }

  return result;
}

BOOL sub_27236EA28(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a2 - 24);
      v7 = *(a1 + 28);
      v8 = *(a2 - 20);
      if (v7 > *(a1 + 4))
      {
        if (v8 <= v7)
        {
          *v48 = *a1;
          v23 = *a1;
          *&v48[16] = *(a1 + 16);
          *a1 = *(a1 + 24);
          *(a1 + 13) = *(a1 + 37);
          *(a1 + 24) = v23;
          *(a1 + 37) = *&v48[13];
          if (*(a2 - 20) <= *(a1 + 28))
          {
            return 1;
          }

          v9 = *(a1 + 24);
          *&v40[12] = HIDWORD(v9);
          *&v40[16] = *(a1 + 40);
          v24 = *(a2 - 11);
          *(a1 + 24) = *v6;
          *(a1 + 37) = v24;
        }

        else
        {
          v9 = *a1;
          *v40 = *a1;
          *&v40[16] = *(a1 + 16);
          v10 = *(a2 - 11);
          *a1 = *v6;
          *(a1 + 13) = v10;
        }

        *v6 = v9;
        *(a2 - 11) = *&v40[13];
        return 1;
      }

      if (v8 <= v7)
      {
        return 1;
      }

      *v43 = *(a1 + 24);
      *&v43[16] = *(a1 + 40);
      v20 = *(a2 - 11);
      *(a1 + 24) = *v6;
      *(a1 + 37) = v20;
      *v6 = *v43;
      *(a2 - 11) = *&v43[13];
LABEL_50:
      if (*(a1 + 28) > *(a1 + 4))
      {
        *v54 = *a1;
        v37 = *a1;
        *&v54[16] = *(a1 + 16);
        *a1 = *(a1 + 24);
        *(a1 + 13) = *(a1 + 37);
        *(a1 + 24) = v37;
        *(a1 + 37) = *&v54[13];
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_27236E75C(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 24, a3);
      return 1;
    }

    v16 = *(a1 + 28);
    v17 = *(a1 + 4);
    v18 = *(a1 + 52);
    if (v16 <= v17)
    {
      if (v18 > v16)
      {
        *v46 = *(a1 + 24);
        *&v46[16] = *(a1 + 40);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 37) = *(a1 + 61);
        *(a1 + 48) = *v46;
        *(a1 + 61) = *&v46[13];
        if (*(a1 + 28) > v17)
        {
          *v47 = *a1;
          v22 = *a1;
          *&v47[16] = *(a1 + 16);
          *a1 = *(a1 + 24);
          *(a1 + 13) = *(a1 + 37);
          *(a1 + 24) = v22;
          *(a1 + 37) = *&v47[13];
        }
      }

      goto LABEL_47;
    }

    if (v18 <= v16)
    {
      *v51 = *a1;
      v34 = *a1;
      *&v51[16] = *(a1 + 16);
      *a1 = *(a1 + 24);
      *(a1 + 13) = *(a1 + 37);
      *(a1 + 24) = v34;
      *(a1 + 37) = *&v51[13];
      if (v18 <= *(a1 + 28))
      {
        goto LABEL_47;
      }

      v19 = *(a1 + 24);
      *&v42[12] = HIDWORD(v19);
      *&v42[16] = *(a1 + 40);
      *(a1 + 24) = *(a1 + 48);
      *(a1 + 37) = *(a1 + 61);
    }

    else
    {
      v19 = *a1;
      *v42 = *a1;
      *&v42[16] = *(a1 + 16);
      *a1 = *(a1 + 48);
      *(a1 + 13) = *(a1 + 61);
    }

    *(a1 + 48) = v19;
    *(a1 + 61) = *&v42[13];
LABEL_47:
    if (*(a2 - 20) <= *(a1 + 52))
    {
      return 1;
    }

    v35 = a2 - 24;
    *v52 = *(a1 + 48);
    *&v52[16] = *(a1 + 64);
    v36 = *(a2 - 11);
    *(a1 + 48) = *(a2 - 24);
    *(a1 + 61) = v36;
    *v35 = *v52;
    *(v35 + 13) = *&v52[13];
    if (*(a1 + 52) <= *(a1 + 28))
    {
      return 1;
    }

    *v53 = *(a1 + 24);
    *&v53[16] = *(a1 + 40);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 37) = *(a1 + 61);
    *(a1 + 48) = *v53;
    *(a1 + 61) = *&v53[13];
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 20) > *(a1 + 4))
    {
      *v39 = *a1;
      v4 = *a1;
      *&v39[16] = *(a1 + 16);
      v5 = *(a2 - 11);
      *a1 = *(a2 - 24);
      *(a1 + 13) = v5;
      *(a2 - 24) = v4;
      *(a2 - 11) = *&v39[13];
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 48;
  v12 = *(a1 + 28);
  v13 = *(a1 + 4);
  v14 = *(a1 + 52);
  if (v12 <= v13)
  {
    if (v14 > v12)
    {
      *v44 = *(a1 + 24);
      *&v44[16] = *(a1 + 40);
      *(a1 + 24) = *v11;
      *(a1 + 37) = *(a1 + 61);
      *v11 = *v44;
      *(a1 + 61) = *&v44[13];
      if (*(a1 + 28) > v13)
      {
        *v45 = *a1;
        v21 = *a1;
        *&v45[16] = *(a1 + 16);
        *a1 = *(a1 + 24);
        *(a1 + 13) = *(a1 + 37);
        *(a1 + 24) = v21;
        *(a1 + 37) = *&v45[13];
      }
    }
  }

  else
  {
    if (v14 <= v12)
    {
      *v49 = *a1;
      v25 = *a1;
      *&v49[16] = *(a1 + 16);
      *a1 = *(a1 + 24);
      *(a1 + 13) = *(a1 + 37);
      *(a1 + 24) = v25;
      *(a1 + 37) = *&v49[13];
      if (v14 <= *(a1 + 28))
      {
        goto LABEL_33;
      }

      v15 = *(a1 + 24);
      *&v41[12] = HIDWORD(v15);
      *&v41[16] = *(a1 + 40);
      *(a1 + 24) = *v11;
      *(a1 + 37) = *(a1 + 61);
    }

    else
    {
      v15 = *a1;
      *v41 = *a1;
      *&v41[16] = *(a1 + 16);
      *a1 = *v11;
      *(a1 + 13) = *(a1 + 61);
    }

    *v11 = v15;
    *(a1 + 61) = *&v41[13];
  }

LABEL_33:
  v26 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v27 = 0;
  v28 = 0;
  while (1)
  {
    v29 = *(v26 + 4);
    if (v29 > *(v11 + 4))
    {
      v30 = *v26;
      v50 = *(v26 + 8);
      v31 = v27;
      while (1)
      {
        v32 = a1 + v31;
        *(v32 + 72) = *(a1 + v31 + 48);
        *(v32 + 85) = *(a1 + v31 + 61);
        if (v31 == -48)
        {
          break;
        }

        v31 -= 24;
        if (v29 <= *(v32 + 28))
        {
          v33 = a1 + v31 + 72;
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      *v33 = v30;
      *(v33 + 4) = v29;
      *(v33 + 8) = v50;
      *(v33 + 13) = *(&v50 + 5);
      if (++v28 == 8)
      {
        return v26 + 24 == a2;
      }
    }

    v11 = v26;
    v27 += 24;
    v26 += 24;
    if (v26 == a2)
    {
      return 1;
    }
  }
}

void *sub_27236EF68(void *a1, void *a2)
{
  v4 = sub_272369BE4(a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_27236A034(v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_27236F3C4(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_27236F420(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    sub_272367460();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void sub_27236F624(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_27236F680(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_27236F808(a2);
  }

  sub_27236F7F0();
}

char *sub_27236F6D0(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_272369088(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  sub_27236F790(v9);
  return v4;
}

uint64_t sub_27236F790(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void sub_27236F808(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_272367460();
}

uint64_t sub_27236F860(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

std::string *voiceactions::StringJoin@<X0>(std::string *result@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = *&result->__r_.__value_.__l.__data_;
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[0] != size)
  {
    v7 = result;
    v8 = 0;
    v9 = result->__r_.__value_.__r.__words[0];
    do
    {
      v10 = *(v9 + 23);
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v9 + 8);
      }

      v8 += v10;
      v9 += 24;
    }

    while (v9 != size);
    if (*(a2 + 23) >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    std::string::reserve(a3, v11 * (0xAAAAAAAAAAAAAAABLL * ((size - result->__r_.__value_.__r.__words[0]) >> 3) - 1) + v8);
    v12 = v7->__words[0];
    v13 = *(v7->__words[0] + 23);
    if ((v13 & 0x8000000000000000) != 0)
    {
      v14 = *v12;
      v13 = *(v12 + 8);
    }

    else
    {
      v14 = v7->__words[0];
    }

    result = std::string::append(a3, v14, v13);
    for (i = v12 + 24; i != v7->__words[1]; i += 24)
    {
      if (*(a2 + 23) >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      std::string::append(a3, v16, v11);
      v17 = *(i + 23);
      if ((v17 & 0x8000000000000000) != 0)
      {
        v18 = *i;
        v17 = *(i + 8);
      }

      else
      {
        v18 = i;
      }

      result = std::string::append(a3, v18, v17);
    }
  }

  return result;
}

void sub_27236F9F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void voiceactions::StringSplit(std::string *__str@<X0>, unsigned __int8 *a2@<X1>, size_t *a3@<X8>)
{
  v6 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = v6 < 0;
  if (v6 >= 0)
  {
    v8 = __str;
  }

  else
  {
    v8 = __str->__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v10 = a2[23];
  if ((v10 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 1);
  }

  if (size)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
LABEL_25:
    *a3 = 0;
    a3[1] = 0;
    v17 = -1;
    a3[2] = 0;
  }

  else
  {
    v13 = v8 + size;
    v14 = v8;
LABEL_17:
    v15 = v10;
    v16 = v11;
    while (v14->__r_.__value_.__s.__data_[0] != *v16)
    {
      ++v16;
      if (!--v15)
      {
        v14 = (v14 + 1);
        if (v14 != v13)
        {
          goto LABEL_17;
        }

        goto LABEL_25;
      }
    }

    if (v14 == v13)
    {
      goto LABEL_25;
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    v17 = v14 - v8;
    if (v14 == v8)
    {
      goto LABEL_30;
    }
  }

  std::string::basic_string(&__p, __str, 0, v17, &v30);
  sub_27236B26C(a3, &__p);
LABEL_27:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  while (v17 != -1)
  {
LABEL_30:
    v18 = v17 + 1;
    v19 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    if ((v19 & 0x80u) == 0)
    {
      v20 = __str;
    }

    else
    {
      v20 = __str->__r_.__value_.__r.__words[0];
    }

    if ((v19 & 0x80u) != 0)
    {
      v19 = __str->__r_.__value_.__l.__size_;
    }

    v21 = a2[23];
    if ((v21 & 0x80u) == 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a2 + 1);
    }

    if (v19 <= v18 || v21 == 0)
    {
      v17 = -1;
    }

    else
    {
      v24 = v20 + v19;
      v25 = v20 + v18;
LABEL_46:
      v26 = v21;
      v27 = v22;
      while (*v25 != *v27)
      {
        ++v27;
        if (!--v26)
        {
          if (++v25 != v24)
          {
            goto LABEL_46;
          }

          v25 = v24;
          break;
        }
      }

      v28 = v25 - v20;
      if (v25 == v24)
      {
        v17 = -1;
      }

      else
      {
        v17 = v28;
      }
    }

    if (v17 != v18)
    {
      std::string::basic_string(&__p, __str, v18, v17 - v18, &v30);
      sub_27236B26C(a3, &__p);
      goto LABEL_27;
    }
  }
}

void *sub_27236FC1C(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x2743C5B10](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    ++v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_27236FD80(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x27236FD40);
  }

  __cxa_rethrow();
}

void *sub_27236FE10(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x2743C5B00](a1 + 2);
  std::istream::~istream();
  MEMORY[0x2743C5C00](a1 + 53);
  return a1;
}

void sub_27236FEDC(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t sub_27236FF28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_27236A0F4((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27236FF88(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_27236FFF0(uint64_t a1)
{
  sub_27236FEDC(*(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_27237002C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_272370078(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_27236CFB0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_2723700CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_272370198(uint64_t a1)
{
  sub_2723701D0(a1);

  JUMPOUT(0x2743C5C30);
}

uint64_t sub_2723701D0(uint64_t a1)
{
  *a1 = &unk_2881906E8;
  if (*(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  sub_27236FFF0(a1 + 440);
  sub_27236FF28(a1 + 400);
  sub_27236FF88(a1 + 360);
  sub_27236FFF0(a1 + 320);
  sub_27236FFF0(a1 + 280);
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v2 = *(a1 + 184);
  if (v2)
  {
    *(a1 + 192) = v2;
    operator delete(v2);
  }

  sub_27236FF88(a1 + 144);
  sub_27237002C(a1 + 104);
  v4 = (a1 + 80);
  sub_272370078(&v4);
  sub_2723700CC(a1 + 8);
  return a1;
}

intptr_t sub_272370840(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (objc_opt_respondsToSelector())
  {
    [*(*(a1 + 32) + 24) keywordSpotterDidStop];
  }

  v3 = [*(a1 + 32) configuration];
  v4 = [v3 runtime];
  v5 = [v4 batchDecode];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 40);
    memset(v65, 0, 24);
    v7 = 0uLL;
    v8 = *(v6 + 160);
    if (v8)
    {
      do
      {
        sub_272368BD4(__p, (v8 + 2));
        sub_2723692DC(v65, &__p[1]);
        if (SBYTE7(v68) < 0)
        {
          operator delete(__p[1]);
        }

        v8 = *v8;
      }

      while (v8);
      v7 = v65[0];
    }

    v9 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((*(&v7 + 1) - v7) >> 3));
    if (*(&v7 + 1) == v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    sub_272370FCC(v7, *(&v7 + 1), v10, 1);
    v11 = *(&v65[0] + 1);
    v12 = 0x8E38E38E38E38E39 * ((*(&v65[0] + 1) - *&v65[0]) >> 3);
    v13 = v12;
    v14 = v12 >= v12;
    v15 = v12 - v12;
    if (v15 != 0 && v14)
    {
      if (0x8E38E38E38E38E39 * ((*&v65[1] - *(&v65[0] + 1)) >> 3) < v15)
      {
        if (v13 <= 0x38E38E38E38E38ELL)
        {
          *(&v68 + 1) = v65;
          v16 = 0x1C71C71C71C71C72 * ((*&v65[1] - *&v65[0]) >> 3);
          if (v16 <= v13)
          {
            v16 = v13;
          }

          if (0x8E38E38E38E38E39 * ((*&v65[1] - *&v65[0]) >> 3) >= 0x1C71C71C71C71C7)
          {
            v17 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v17 = v16;
          }

          sub_272369220(v17);
        }

        sub_27236F7F0();
      }

      v35 = *(&v65[0] + 1) + 72 * v15;
      v37 = voiceactions::kLogZero;
      v38 = voiceactions::kNoTime;
      do
      {
        *(v11 + 32) = 0uLL;
        *(v11 + 48) = 0uLL;
        *(v11 + 64) = 0;
        *v11 = 0uLL;
        *(v11 + 16) = 0uLL;
        *(v11 + 24) = v37;
        *(v11 + 28) = v37;
        *(v11 + 32) = v38;
        *(v11 + 36) = v38;
        *(v11 + 40) = 0;
        *(v11 + 48) = 0;
        *(v11 + 56) = 0;
        *(v11 + 60) = v37;
        v11 += 72;
      }

      while (v11 != v35);
    }

    else
    {
      if (v14)
      {
        v35 = *(&v65[0] + 1);
        goto LABEL_39;
      }

      v35 = *&v65[0] + 72 * v13;
      while (v11 != v35)
      {
        v36 = *(v11 - 49);
        v11 -= 72;
        if (v36 < 0)
        {
          operator delete(*v11);
        }
      }
    }

    *(&v65[0] + 1) = v35;
LABEL_39:
    v39 = *&v65[0];
    if (*&v65[0] != v35)
    {
      v40 = 1;
      v41 = MEMORY[0x277D85DF8];
      do
      {
        if (*(v39 + 23) < 0)
        {
          sub_272369088(__p, *v39, *(v39 + 1));
        }

        else
        {
          v42 = *v39;
          v67 = *(v39 + 2);
          *__p = v42;
        }

        v43 = *(v39 + 24);
        v44 = *(v39 + 40);
        *&v69[9] = *(v39 + 49);
        *v69 = v44;
        v68 = v43;
        if (v67 >= 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = __p[0];
        }

        fprintf(*v41, "Final Result %d %s %f %d %d %d\n", v40, v45, *&v68, DWORD2(v68), HIDWORD(v68), *&v69[12]);
        if (SHIBYTE(v67) < 0)
        {
          operator delete(__p[0]);
        }

        v39 = (v39 + 72);
        ++v40;
      }

      while (v39 != v35);
    }

    v46 = *(*(a1 + 32) + 24);
    if (objc_opt_respondsToSelector())
    {
      v64 = *(*(a1 + 32) + 24);
      v47 = objc_opt_new();
      v49 = *(&v65[0] + 1);
      for (i = *&v65[0]; i != v49; i = (i + 72))
      {
        if (*(i + 23) < 0)
        {
          sub_272369088(__p, *i, *(i + 1));
        }

        else
        {
          v50 = *i;
          v67 = *(i + 2);
          *__p = v50;
        }

        v51 = *(i + 24);
        v52 = *(i + 40);
        *&v69[9] = *(i + 49);
        *v69 = v52;
        v68 = v51;
        v53 = MEMORY[0x277CCACA8];
        v54 = SHIBYTE(v67);
        v55 = __p[0];
        v56 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
        if (v54 >= 0)
        {
          v57 = __p;
        }

        else
        {
          v57 = v55;
        }

        v58 = [v53 stringWithCString:v57 encoding:v56];
        v59 = [VATKeywordSpotterResult alloc];
        LODWORD(v60) = v68;
        LODWORD(v61) = *&v69[16];
        v62 = [(VATKeywordSpotterResult *)v59 initWithKeyword:v58 cost:DWORD2(v68) threshold:HIDWORD(v68) start:*&v69[12] end:v60 duration:v61];
        [(VATKeywordSpotterResult *)v62 set_isNbestEntry:1];
        [v47 addObject:v62];

        if (SHIBYTE(v67) < 0)
        {
          operator delete(__p[0]);
        }
      }

      [v64 keywordSpotted:0 nbestResults:v47 filePath:*(*(a1 + 32) + 96) fileByteCount:*(*(a1 + 32) + 120) fileDuration:*(*(a1 + 32) + 104)];
    }

    __p[0] = v65;
    sub_272363E94(__p);
    return dispatch_semaphore_signal(*(a1 + 40));
  }

  v18 = [*(a1 + 32) configuration];
  v19 = [v18 runtime];
  if ([v19 postKeywordSilence])
  {
    v20 = *(a1 + 32);
    v22 = *(v20 + 136);
    v21 = *(v20 + 144);

    if (v21 != v22)
    {
      LODWORD(__p[0]) = -1;
      LODWORD(v65[0]) = 0;
      v23 = *(a1 + 32);
      v24 = v23[5];
      v25 = *(v23[17] + 36);
      v26 = [v23 configuration];
      v27 = [v26 decoder];
      v28 = [v27 postKeywordSilence];
      [v28 silenceProbability];
      v30 = v29;
      v31 = [*(a1 + 32) configuration];
      v32 = [v31 decoder];
      v33 = [v32 postKeywordSilence];
      LODWORD(v24) = sub_27236638C(v24, v25, 0, 0, 8, [v33 minSilenceFrameCountAtEndOfKeyword], __p, v65, v30);

      if (v24)
      {
        *(*(*(a1 + 32) + 136) + 36) = __p[0];
      }

      v34 = _VATLoggingFacility(kVATLogCategoryFramework);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_2721E4000, v34, OS_LOG_TYPE_INFO, "Audio ended before we could get enough silence for keyword, triggering cached keyword", buf, 2u);
      }

      [*(a1 + 32) _handleValidResult:*(a1 + 32) + 136];
    }
  }

  else
  {
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}

void sub_272370FCC(uint64_t a1, float *a2, uint64_t a3, char a4)
{
  v195 = *MEMORY[0x277D85DE8];
LABEL_2:
  v162 = (a2 - 36);
  v164 = (a2 - 18);
  v161 = (a2 - 54);
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = a2 - v7;
    v9 = 0x8E38E38E38E38E39 * ((a2 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      break;
    }

    switch(v9)
    {
      case 3:
        v76 = *(a1 + 132);
        v77 = *(a2 - 3);
        if (v76 >= *(a1 + 60))
        {
          if (v77 < v76)
          {
            v74 = (a1 + 72);
            v75 = v164;
LABEL_206:
            sub_2723694C0(v74, v75);
            if (*(a1 + 132) < *(a1 + 60))
            {
              v147 = *MEMORY[0x277D85DE8];
              v80 = a1 + 72;
              v79 = a1;
              goto LABEL_126;
            }
          }
        }

        else
        {
          if (v77 < v76)
          {
            goto LABEL_124;
          }

          sub_2723694C0(a1, a1 + 72);
          if (*(a2 - 3) < *(a1 + 132))
          {
            v159 = *MEMORY[0x277D85DE8];
            v79 = (a1 + 72);
            goto LABEL_125;
          }
        }

LABEL_221:
        v160 = *MEMORY[0x277D85DE8];
        return;
      case 4:
        v81 = *MEMORY[0x277D85DE8];

        sub_272371F34(a1, a1 + 72, a1 + 144, v164);
        return;
      case 5:
        sub_272371F34(a1, a1 + 72, a1 + 144, a1 + 216);
        if (*(a2 - 3) >= *(a1 + 276))
        {
          goto LABEL_221;
        }

        sub_2723694C0((a1 + 216), v164);
        if (*(a1 + 276) >= *(a1 + 204))
        {
          goto LABEL_221;
        }

        sub_2723694C0((a1 + 144), a1 + 216);
        if (*(a1 + 204) >= *(a1 + 132))
        {
          goto LABEL_221;
        }

        v74 = (a1 + 72);
        v75 = a1 + 144;
        goto LABEL_206;
    }

LABEL_10:
    if (v8 <= 1727)
    {
      v82 = (a1 + 72);
      v84 = a1 == a2 || v82 == a2;
      if (a4)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = a1;
          do
          {
            v87 = v82;
            if (*(v86 + 132) < *(v86 + 60))
            {
              v88 = a2;
              v89 = *v82;
              *v188 = *(v86 + 80);
              *&v188[7] = *(v86 + 87);
              v90 = *(v86 + 95);
              *(v82 + 1) = 0;
              *(v82 + 2) = 0;
              *v82 = 0;
              v170 = *(v86 + 96);
              v176 = *(v86 + 112);
              v182 = *(v86 + 128);
              v91 = *(v86 + 132);
              v92 = *(v86 + 136);
              v93 = v85;
              while (1)
              {
                v94 = a1 + v93;
                if (*(a1 + v93 + 95) < 0)
                {
                  operator delete(*(v94 + 72));
                }

                *(v94 + 72) = *v94;
                *(v94 + 88) = *(v94 + 16);
                *(v94 + 23) = 0;
                *v94 = 0;
                v95 = *(v94 + 40);
                *(v94 + 96) = *(v94 + 24);
                *(v94 + 112) = v95;
                *(v94 + 121) = *(v94 + 49);
                if (!v93)
                {
                  break;
                }

                v96 = a1 + v93;
                v97 = *(a1 + v93 - 12);
                v93 -= 72;
                if (v91 >= v97)
                {
                  v98 = a1 + v93 + 72;
                  v99 = v96 + 24;
                  goto LABEL_149;
                }
              }

              v99 = a1 + 24;
              v98 = a1;
LABEL_149:
              if (*(v98 + 23) < 0)
              {
                operator delete(*v98);
              }

              *v98 = v89;
              *(v98 + 15) = *&v188[7];
              *(v98 + 8) = *v188;
              *(v98 + 23) = v90;
              *(v99 + 32) = v182;
              *v99 = v170;
              *(v99 + 16) = v176;
              *(v98 + 60) = v91;
              *(v98 + 64) = v92;
              a2 = v88;
            }

            v82 = v87 + 18;
            v85 += 72;
            v86 = v87;
          }

          while (v87 + 18 != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v148 = v82;
          if (*(a1 + 132) < *(a1 + 60))
          {
            v149 = a2;
            v150 = *v82;
            *v191 = *(a1 + 80);
            *&v191[7] = *(a1 + 87);
            v151 = *(a1 + 95);
            *(v82 + 1) = 0;
            *(v82 + 2) = 0;
            *v82 = 0;
            v173 = *(a1 + 96);
            v179 = *(a1 + 112);
            v184 = *(a1 + 128);
            v152 = *(a1 + 132);
            v153 = *(a1 + 136);
            v154 = v82;
            do
            {
              v155 = v154;
              if (*(v154 + 23) < 0)
              {
                operator delete(*v154);
              }

              *v154 = *(v154 - 18);
              v156 = *(v154 - 2);
              *(v154 + 6) = *(v154 - 3);
              *(v154 + 2) = *(v154 - 7);
              *(v154 - 72) = 0;
              v154 -= 18;
              *(v155 - 49) = 0;
              *(v155 + 10) = v156;
              v157 = *(v155 - 21);
              *(v155 + 49) = *(v155 - 23);
            }

            while (v152 < v157);
            if (*(v155 - 49) < 0)
            {
              operator delete(*v154);
            }

            v158 = v155 - 12;
            *v154 = v150;
            *(v155 - 57) = *&v191[7];
            *(v155 - 8) = *v191;
            *(v155 - 49) = v151;
            *(v158 + 8) = v184;
            *v158 = v173;
            *(v158 + 1) = v179;
            *(v155 - 3) = v152;
            *(v155 - 8) = v153;
            a2 = v149;
          }

          v82 = v148 + 18;
          a1 = v148;
        }

        while (v148 + 18 != a2);
      }

      goto LABEL_221;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v163 = a2;
        v100 = v10 >> 1;
        v101 = v10 >> 1;
        do
        {
          v102 = v101;
          if (v100 >= v101)
          {
            v103 = (2 * v101) | 1;
            v104 = a1 + 72 * v103;
            if (2 * v102 + 2 < v9 && *(v104 + 60) < *(v104 + 132))
            {
              v104 += 72;
              v103 = 2 * v102 + 2;
            }

            v105 = a1 + 72 * v102;
            v106 = *(v105 + 60);
            if (*(v104 + 60) >= v106)
            {
              v167 = *v105;
              *&v189[7] = *(v105 + 15);
              *v189 = *(v105 + 8);
              v165 = *(v105 + 23);
              *v105 = 0;
              *(v105 + 8) = 0;
              *(v105 + 16) = 0;
              v183 = *(v105 + 56);
              v171 = *(v105 + 24);
              v177 = *(v105 + 40);
              v107 = *(v105 + 64);
              do
              {
                v108 = v105;
                v105 = v104;
                if (*(v108 + 23) < 0)
                {
                  operator delete(*v108);
                }

                v109 = *v105;
                *(v108 + 16) = *(v105 + 16);
                *v108 = v109;
                *(v105 + 23) = 0;
                *v105 = 0;
                v110 = *(v105 + 24);
                v111 = *(v105 + 40);
                *(v108 + 49) = *(v105 + 49);
                *(v108 + 40) = v111;
                *(v108 + 24) = v110;
                if (v100 < v103)
                {
                  break;
                }

                v112 = 2 * v103;
                v103 = (2 * v103) | 1;
                v104 = a1 + 72 * v103;
                v113 = v112 + 2;
                if (v113 < v9 && *(v104 + 60) < *(v104 + 132))
                {
                  v104 += 72;
                  v103 = v113;
                }
              }

              while (*(v104 + 60) >= v106);
              if (*(v105 + 23) < 0)
              {
                operator delete(*v105);
              }

              *v105 = v167;
              *(v105 + 15) = *&v189[7];
              *(v105 + 8) = *v189;
              *(v105 + 23) = v165;
              *(v105 + 24) = v171;
              *(v105 + 40) = v177;
              *(v105 + 56) = v183;
              *(v105 + 60) = v106;
              *(v105 + 64) = v107;
            }
          }

          v101 = v102 - 1;
        }

        while (v102);
        v114 = 0x8E38E38E38E38E39 * (v8 >> 3);
        v115 = v163;
        do
        {
          if (v114 >= 2)
          {
            v116 = 0;
            v117 = *a1;
            *v185 = *(a1 + 8);
            *&v185[7] = *(a1 + 15);
            v118 = *(a1 + 23);
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *a1 = 0;
            v119 = *(a1 + 24);
            v172 = v119;
            *v178 = *(a1 + 40);
            *&v178[9] = *(a1 + 49);
            v120 = a1;
            do
            {
              v121 = v120 + 72 * v116;
              v122 = v121 + 72;
              if (2 * v116 + 2 >= v114)
              {
                v116 = (2 * v116) | 1;
              }

              else
              {
                v123 = *(v121 + 132);
                v124 = *(v121 + 204);
                v125 = v121 + 144;
                if (v123 >= v124)
                {
                  v116 = (2 * v116) | 1;
                }

                else
                {
                  v122 = v125;
                  v116 = 2 * v116 + 2;
                }
              }

              if (*(v120 + 23) < 0)
              {
                operator delete(*v120);
              }

              v126 = *v122;
              *(v120 + 16) = *(v122 + 16);
              *v120 = v126;
              *(v122 + 23) = 0;
              *v122 = 0;
              v127 = *(v122 + 24);
              v128 = *(v122 + 40);
              *(v120 + 49) = *(v122 + 49);
              *(v120 + 40) = v128;
              *(v120 + 24) = v127;
              v120 = v122;
            }

            while (v116 <= ((v114 - 2) >> 1));
            v129 = (v115 - 18);
            v130 = *(v122 + 23);
            if (v122 == v115 - 18)
            {
              if (v130 < 0)
              {
                operator delete(*v122);
              }

              *v122 = v117;
              *(v122 + 15) = *&v185[7];
              *(v122 + 8) = *v185;
              *(v122 + 23) = v118;
              *(v122 + 24) = v172;
              *(v122 + 40) = *v178;
              *(v122 + 49) = *&v178[9];
            }

            else
            {
              if (v130 < 0)
              {
                operator delete(*v122);
              }

              v131 = *v129;
              *(v122 + 16) = *(v115 - 7);
              *v122 = v131;
              *(v115 - 49) = 0;
              *(v115 - 72) = 0;
              v132 = *(v115 - 3);
              v133 = *(v115 - 2);
              *(v122 + 49) = *(v115 - 23);
              *(v122 + 40) = v133;
              *(v122 + 24) = v132;
              if (*(v115 - 49) < 0)
              {
                operator delete(*v129);
              }

              v134 = v115 - 12;
              *(v115 - 9) = v117;
              *(v115 - 57) = *&v185[7];
              *(v115 - 8) = *v185;
              *(v115 - 49) = v118;
              *(v134 + 25) = *&v178[9];
              *v134 = v172;
              *(v134 + 1) = *v178;
              v135 = v122 + 72 - a1;
              if (v135 >= 73)
              {
                v136 = (-2 - 0x71C71C71C71C71C7 * (v135 >> 3)) >> 1;
                v137 = a1 + 72 * v136;
                v138 = *(v122 + 60);
                if (*(v137 + 60) < v138)
                {
                  v139 = *v122;
                  *v194 = *(v122 + 8);
                  *&v194[7] = *(v122 + 15);
                  v140 = *(v122 + 23);
                  *(v122 + 8) = 0;
                  *(v122 + 16) = 0;
                  *v122 = 0;
                  v193 = *(v122 + 56);
                  v190 = *(v122 + 24);
                  v192 = *(v122 + 40);
                  v141 = *(v122 + 64);
                  do
                  {
                    v142 = v137;
                    if (*(v122 + 23) < 0)
                    {
                      operator delete(*v122);
                    }

                    v143 = *v142;
                    *(v122 + 16) = *(v142 + 16);
                    *v122 = v143;
                    *(v142 + 23) = 0;
                    *v142 = 0;
                    v144 = *(v142 + 24);
                    v145 = *(v142 + 40);
                    *(v122 + 49) = *(v142 + 49);
                    *(v122 + 40) = v145;
                    *(v122 + 24) = v144;
                    if (!v136)
                    {
                      break;
                    }

                    v136 = (v136 - 1) >> 1;
                    v137 = a1 + 72 * v136;
                    v122 = v142;
                  }

                  while (*(v137 + 60) < v138);
                  if (*(v142 + 23) < 0)
                  {
                    operator delete(*v142);
                  }

                  *v142 = v139;
                  *(v142 + 15) = *&v194[7];
                  *(v142 + 8) = *v194;
                  *(v142 + 23) = v140;
                  *(v142 + 24) = v190;
                  *(v142 + 40) = v192;
                  *(v142 + 56) = v193;
                  *(v142 + 60) = v138;
                  *(v142 + 64) = v141;
                }
              }
            }
          }

          v115 -= 18;
        }

        while (v114-- > 2);
      }

      goto LABEL_221;
    }

    v11 = v9 >> 1;
    v12 = a1 + 72 * (v9 >> 1);
    v13 = *(a2 - 3);
    if (v8 >= 0x2401)
    {
      v14 = *(v12 + 60);
      if (v14 >= *(a1 + 60))
      {
        if (v13 < v14)
        {
          sub_2723694C0(v12, v164);
          if (*(v12 + 60) < *(a1 + 60))
          {
            v15 = a1;
            v16 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = a1;
        if (v13 < v14)
        {
          goto LABEL_17;
        }

        sub_2723694C0(a1, v12);
        if (*(a2 - 3) < *(v12 + 60))
        {
          v15 = v12;
LABEL_17:
          v16 = v164;
LABEL_26:
          sub_2723694C0(v15, v16);
        }
      }

      v20 = a1 + 72 * v11;
      v21 = v20 - 72;
      v22 = *(v20 - 12);
      v23 = *(a2 - 21);
      if (v22 >= *(a1 + 132))
      {
        if (v23 < v22)
        {
          sub_2723694C0((v20 - 72), v162);
          if (*(v21 + 60) < *(a1 + 132))
          {
            v24 = (a1 + 72);
            v25 = v21;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v24 = (a1 + 72);
        if (v23 < v22)
        {
          goto LABEL_31;
        }

        sub_2723694C0(v24, v20 - 72);
        if (*(a2 - 21) < *(v21 + 60))
        {
          v24 = v21;
LABEL_31:
          v25 = v162;
LABEL_39:
          sub_2723694C0(v24, v25);
        }
      }

      v26 = a1 + 72 * v11;
      v27 = v26 + 72;
      v28 = *(v26 + 132);
      v29 = *(a2 - 39);
      if (v28 >= *(a1 + 204))
      {
        if (v29 < v28)
        {
          sub_2723694C0((v26 + 72), v161);
          if (*(v27 + 60) < *(a1 + 204))
          {
            v30 = (a1 + 144);
            v31 = v27;
            goto LABEL_48;
          }
        }
      }

      else
      {
        v30 = (a1 + 144);
        if (v29 < v28)
        {
          goto LABEL_44;
        }

        sub_2723694C0(v30, v26 + 72);
        if (*(a2 - 39) < *(v27 + 60))
        {
          v30 = v27;
LABEL_44:
          v31 = v161;
LABEL_48:
          sub_2723694C0(v30, v31);
        }
      }

      v32 = *(v12 + 60);
      v33 = *(v27 + 60);
      if (v32 >= *(v21 + 60))
      {
        if (v33 < v32)
        {
          sub_2723694C0(v12, v27);
          if (*(v12 + 60) < *(v21 + 60))
          {
            v34 = v21;
            v35 = v12;
            goto LABEL_57;
          }
        }
      }

      else
      {
        v34 = v21;
        if (v33 < v32)
        {
          goto LABEL_53;
        }

        sub_2723694C0(v21, v12);
        if (*(v27 + 60) < *(v12 + 60))
        {
          v34 = v12;
LABEL_53:
          v35 = v27;
LABEL_57:
          sub_2723694C0(v34, v35);
        }
      }

      sub_2723694C0(a1, v12);
      goto LABEL_59;
    }

    v17 = *(a1 + 60);
    if (v17 >= *(v12 + 60))
    {
      if (v13 >= v17)
      {
        goto LABEL_59;
      }

      sub_2723694C0(a1, v164);
      if (*(a1 + 60) >= *(v12 + 60))
      {
        goto LABEL_59;
      }

      v18 = v12;
      v19 = a1;
      goto LABEL_35;
    }

    v18 = v12;
    if (v13 < v17)
    {
      goto LABEL_22;
    }

    sub_2723694C0(v12, a1);
    if (*(a2 - 3) < *(a1 + 60))
    {
      v18 = a1;
LABEL_22:
      v19 = v164;
LABEL_35:
      sub_2723694C0(v18, v19);
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v36 = *(a1 + 60);
LABEL_62:
      v37 = *a1;
      *v186 = *(a1 + 8);
      *&v186[7] = *(a1 + 15);
      v38 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v180 = *(a1 + 56);
      v168 = *(a1 + 24);
      v174 = *(a1 + 40);
      v39 = a1;
      v40 = *(a1 + 64);
      do
      {
        v41 = v39;
        v39 += 72;
      }

      while (*(v41 + 132) < v36);
      v42 = a2;
      v43 = a2;
      if (v41 == a1)
      {
        v46 = a2;
        while (v39 < v46)
        {
          v44 = (v46 - 18);
          v47 = *(v46 - 3);
          v46 -= 18;
          if (v47 < v36)
          {
            goto LABEL_72;
          }
        }

        v44 = v46;
      }

      else
      {
        do
        {
          v44 = (v43 - 18);
          v45 = *(v43 - 3);
          v43 -= 18;
        }

        while (v45 >= v36);
      }

LABEL_72:
      if (v39 >= v44)
      {
        v7 = v39;
      }

      else
      {
        v48 = v44;
        v7 = v39;
        do
        {
          sub_2723694C0(v7, v48);
          do
          {
            v49 = *(v7 + 132);
            v7 += 72;
          }

          while (v49 < v36);
          do
          {
            v50 = *(v48 - 12);
            v48 -= 72;
          }

          while (v50 >= v36);
        }

        while (v7 < v48);
      }

      v51 = (v7 - 72);
      if (v7 - 72 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v52 = *v51;
        *(a1 + 16) = *(v7 - 56);
        *a1 = v52;
        *(v7 - 49) = 0;
        *(v7 - 72) = 0;
        v53 = *(v7 - 48);
        v54 = *(v7 - 32);
        *(a1 + 49) = *(v7 - 23);
        *(a1 + 40) = v54;
        *(a1 + 24) = v53;
      }

      if (*(v7 - 49) < 0)
      {
        operator delete(*v51);
      }

      *(v7 - 72) = v37;
      *(v7 - 57) = *&v186[7];
      *(v7 - 64) = *v186;
      *(v7 - 49) = v38;
      *(v7 - 16) = v180;
      *(v7 - 48) = v168;
      *(v7 - 32) = v174;
      *(v7 - 12) = v36;
      *(v7 - 8) = v40;
      v55 = v39 >= v44;
      a2 = v42;
      if (!v55)
      {
        goto LABEL_90;
      }

      v56 = sub_27237204C(a1, v7 - 72);
      if (sub_27237204C(v7, v42))
      {
        a2 = (v7 - 72);
        if (!v56)
        {
          goto LABEL_2;
        }

        goto LABEL_221;
      }

      if (!v56)
      {
LABEL_90:
        sub_272370FCC(a1, v7 - 72, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v36 = *(a1 + 60);
      if (*(a1 - 12) < v36)
      {
        goto LABEL_62;
      }

      v57 = *a1;
      *v187 = *(a1 + 8);
      *&v187[7] = *(a1 + 15);
      v58 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v59 = *(a1 + 24);
      v169 = v59;
      v175 = *(a1 + 40);
      v181 = *(a1 + 56);
      if (v36 >= *(a2 - 3))
      {
        v62 = a1 + 72;
        do
        {
          v7 = v62;
          if (v62 >= a2)
          {
            break;
          }

          v63 = *(v62 + 60);
          v62 += 72;
        }

        while (v36 >= v63);
      }

      else
      {
        v60 = a1;
        do
        {
          v7 = v60 + 72;
          v61 = *(v60 + 132);
          v60 += 72;
        }

        while (v36 >= v61);
      }

      v64 = a2;
      if (v7 < a2)
      {
        v65 = a2;
        do
        {
          v64 = (v65 - 18);
          v66 = *(v65 - 3);
          v65 -= 18;
        }

        while (v36 < v66);
      }

      v67 = *(a1 + 64);
      while (v7 < v64)
      {
        sub_2723694C0(v7, v64);
        do
        {
          v68 = *(v7 + 132);
          v7 += 72;
        }

        while (v36 >= v68);
        do
        {
          v69 = *(v64 - 12);
          v64 -= 72;
        }

        while (v36 < v69);
      }

      v70 = (v7 - 72);
      if (v7 - 72 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v71 = *v70;
        *(a1 + 16) = *(v7 - 56);
        *a1 = v71;
        *(v7 - 49) = 0;
        *(v7 - 72) = 0;
        v72 = *(v7 - 48);
        v73 = *(v7 - 32);
        *(a1 + 49) = *(v7 - 23);
        *(a1 + 40) = v73;
        *(a1 + 24) = v72;
      }

      if (*(v7 - 49) < 0)
      {
        operator delete(*v70);
      }

      a4 = 0;
      *(v7 - 72) = v57;
      *(v7 - 57) = *&v187[7];
      *(v7 - 64) = *v187;
      *(v7 - 49) = v58;
      *(v7 - 16) = v181;
      *(v7 - 48) = v169;
      *(v7 - 32) = v175;
      *(v7 - 12) = v36;
      *(v7 - 8) = v67;
    }
  }

  if (v9 < 2)
  {
    goto LABEL_221;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  if (*(a2 - 3) >= *(a1 + 60))
  {
    goto LABEL_221;
  }

LABEL_124:
  v78 = *MEMORY[0x277D85DE8];
  v79 = a1;
LABEL_125:
  v80 = v164;
LABEL_126:

  sub_2723694C0(v79, v80);
}

double sub_272371F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 60);
  v9 = *(a3 + 60);
  if (v8 >= *(a1 + 60))
  {
    if (v9 < v8)
    {
      v10 = sub_2723694C0(a2, a3);
      if (*(a2 + 60) < *(v7 + 60))
      {
        a1 = v7;
        v11 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v11 = a3;
LABEL_9:
      v10 = sub_2723694C0(a1, v11);
      goto LABEL_10;
    }

    v10 = sub_2723694C0(a1, a2);
    if (*(a3 + 60) < *(a2 + 60))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  v10.n128_u32[0] = *(a4 + 60);
  if (v10.n128_f32[0] < *(a3 + 60))
  {
    v10 = sub_2723694C0(a3, a4);
    v10.n128_u32[0] = *(a3 + 60);
    if (v10.n128_f32[0] < *(a2 + 60))
    {
      v10 = sub_2723694C0(a2, a3);
      v10.n128_u32[0] = *(a2 + 60);
      if (v10.n128_f32[0] < *(v7 + 60))
      {

        v10.n128_u64[0] = sub_2723694C0(v7, a2).n128_u64[0];
      }
    }
  }

  return v10.n128_f64[0];
}

BOOL sub_27237204C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v35 = *MEMORY[0x277D85DE8];
  v4 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 132);
        v9 = *(a2 - 12);
        if (v8 < *(a1 + 60))
        {
          if (v9 >= v8)
          {
            sub_2723694C0(a1, a1 + 72);
            if (*(a2 - 12) >= *(v3 + 132))
            {
              goto LABEL_50;
            }

            a1 = v3 + 72;
          }

          v5 = a2 - 72;
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
LABEL_50:
          result = 1;
          goto LABEL_51;
        }

        v6 = (a1 + 72);
        v7 = a2 - 72;
        break;
      case 4:
        sub_272371F34(a1, a1 + 72, a1 + 144, a2 - 72);
        goto LABEL_50;
      case 5:
        sub_272371F34(a1, a1 + 72, a1 + 144, a1 + 216);
        if (*(a2 - 12) >= *(v3 + 276))
        {
          goto LABEL_50;
        }

        sub_2723694C0((v3 + 216), a2 - 72);
        if (*(v3 + 276) >= *(v3 + 204))
        {
          goto LABEL_50;
        }

        sub_2723694C0((v3 + 144), v3 + 216);
        if (*(v3 + 204) >= *(v3 + 132))
        {
          goto LABEL_50;
        }

        v6 = (v3 + 72);
        v7 = v3 + 144;
        break;
      default:
        goto LABEL_16;
    }

    sub_2723694C0(v6, v7);
    if (*(v3 + 132) < *(v3 + 60))
    {
      v5 = v3 + 72;
      goto LABEL_24;
    }

    goto LABEL_50;
  }

  if (v4 < 2)
  {
    goto LABEL_50;
  }

  if (v4 == 2)
  {
    if (*(a2 - 12) < *(a1 + 60))
    {
      v5 = a2 - 72;
LABEL_24:
      a1 = v3;
LABEL_31:
      sub_2723694C0(a1, v5);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

LABEL_16:
  v10 = a1 + 144;
  v11 = *(a1 + 132);
  v12 = *(a1 + 204);
  if (v11 < *(a1 + 60))
  {
    if (v12 >= v11)
    {
      sub_2723694C0(a1, a1 + 72);
      if (*(v3 + 204) >= *(v3 + 132))
      {
        goto LABEL_36;
      }

      a1 = v3 + 72;
    }

    v13 = v3 + 144;
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    sub_2723694C0((a1 + 72), a1 + 144);
    if (*(v3 + 132) < *(v3 + 60))
    {
      v13 = v3 + 72;
      a1 = v3;
LABEL_35:
      sub_2723694C0(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 216;
  if (v3 + 216 == a2)
  {
    goto LABEL_50;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *(v14 + 60);
    if (v17 < *(v10 + 60))
    {
      v18 = *v14;
      *v34 = *(v14 + 8);
      *&v34[7] = *(v14 + 15);
      v19 = *(v14 + 23);
      *(v14 + 8) = 0;
      *(v14 + 16) = 0;
      *v14 = 0;
      v20 = *(v14 + 24);
      v31 = v20;
      v32 = *(v14 + 40);
      v33 = *(v14 + 56);
      v21 = v15;
      v22 = *(v14 + 64);
      while (1)
      {
        v23 = v3 + v21;
        if (*(v3 + v21 + 239) < 0)
        {
          operator delete(*(v23 + 216));
        }

        *(v23 + 216) = *(v23 + 144);
        *(v23 + 232) = *(v23 + 160);
        *(v23 + 167) = 0;
        *(v23 + 144) = 0;
        v24 = *(v23 + 184);
        *(v23 + 240) = *(v23 + 168);
        *(v23 + 256) = v24;
        *(v23 + 265) = *(v23 + 193);
        if (v21 == -144)
        {
          break;
        }

        v25 = v3 + v21;
        v26 = *(v3 + v21 + 132);
        v21 -= 72;
        if (v17 >= v26)
        {
          v27 = v3 + v21 + 216;
          v28 = v25 + 168;
          goto LABEL_46;
        }
      }

      v28 = v3 + 24;
      v27 = v3;
LABEL_46:
      if (*(v27 + 23) < 0)
      {
        operator delete(*v27);
      }

      *v27 = v18;
      *(v27 + 8) = *v34;
      *(v27 + 15) = *&v34[7];
      *(v27 + 23) = v19;
      *v28 = v31;
      *(v28 + 16) = v32;
      *(v28 + 32) = v33;
      *(v27 + 60) = v17;
      ++v16;
      *(v27 + 64) = v22;
      if (v16 == 8)
      {
        break;
      }
    }

    v10 = v14;
    v15 += 72;
    v14 += 72;
    if (v14 == a2)
    {
      goto LABEL_50;
    }
  }

  result = v14 + 72 == a2;
LABEL_51:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2723728D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_272372928(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = _VATLoggingFacility(kVATLogCategoryFramework);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_2721E4000, v9, OS_LOG_TYPE_FAULT, "Checking keyword failure in VATKeywordSpotter", buf, 2u);
    }

    exit(-1);
  }

  [WeakRetained _acousticCallback:v10 rows:a3 cols:a4];
}

void sub_272372E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  __p = &a10;
  sub_27236A158(&__p);
  __p = &a32;
  sub_27236A158(&__p);

  _Unwind_Resume(a1);
}

void sub_2723732A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = VATKeywordSpotter;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t voiceactions::GetResultSize(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (*a1 == v2)
  {
    v3 = 0;
  }

  else
  {
    LODWORD(v3) = 0;
    v4 = *a1;
    do
    {
      v5 = *(v4 + 23);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v4 + 8);
      }

      LODWORD(v3) = v3 + v5;
      v4 += 24;
    }

    while (v4 != v2);
    v3 = v3;
  }

  return v3 + (0xAAAAAAAAAAAAAAABLL * ((v2 - *a1) >> 3) - 1) * a2;
}

void voiceactions::StringJoin(std::string *a1@<X0>, unsigned __int8 a2@<W1>, std::string *a3@<X8>)
{
  v4 = 1;
  LOWORD(__p) = a2;
  voiceactions::StringJoin(a1, &__p, a3);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_2723735F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void voiceactions::StringSplit(std::string *a1@<X0>, unsigned __int8 a2@<W1>, size_t *a3@<X8>)
{
  v3[23] = 1;
  v3[0] = a2;
  v3[1] = 0;
  voiceactions::StringSplit(a1, v3, a3);
}

id _VATLoggingFacility(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2723738D8;
  block[3] = &unk_279E407A8;
  block[4] = a1;
  if (qword_2808938E8 != -1)
  {
    dispatch_once(&qword_2808938E8, block);
  }

  v1 = qword_2808938E0;

  return v1;
}

uint64_t sub_2723738D8(uint64_t a1)
{
  qword_2808938E0 = os_log_create("com.apple.voiceactions", *(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

id sub_272373A4C(void *a1, void *a2, char a3)
{
  v5 = a2;
  v6 = a1;
  v7 = [v6 stringByDeletingLastPathComponent];
  v8 = [v7 stringByAppendingPathComponent:@"ncs"];
  v9 = [v8 stringByAppendingPathComponent:@"en_US_napg.json"];
  v10 = [v8 stringByAppendingPathComponent:@"vocdelta.voc"];
  v11 = [v8 stringByAppendingPathComponent:@"pg.voc"];
  v12 = [v8 stringByAppendingPathComponent:@"mrec.psh"];
  LOBYTE(v15) = a3;
  v13 = [objc_alloc(MEMORY[0x277D07298]) initWithConfiguration:v6 language:v5 overrides:0 textNormalizationModelRoot:0 sdapiOverrides:v9 emptyVoc:v10 pgVoc:v11 paramsetHolder:v12 isJit:v15];

  return v13;
}

id sub_272374688()
{
  if (qword_2808938F8 != -1)
  {
    dispatch_once(&qword_2808938F8, &unk_288190708);
  }

  v1 = qword_2808938F0;

  return v1;
}

void sub_2723746DC(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v43 = a2;
  v4 = a3;
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = v4;
  v44 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v44)
  {
    v42 = *v61;
    do
    {
      v5 = 0;
      do
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v45 = v5;
        v6 = *(*(&v60 + 1) + 8 * v5);
        v50 = [MEMORY[0x277CBEB18] array];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v51 = v6;
        v7 = [v51 countByEnumeratingWithState:&v56 objects:v66 count:16];
        if (v7)
        {
          v8 = v7;
          v53 = *v57;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v57 != v53)
              {
                objc_enumerationMutation(v51);
              }

              v10 = *(*(&v56 + 1) + 8 * i);
              v11 = [v10 objectForKeyedSubscript:@"orthography"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v38 = sub_272374688();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  v39 = [v10 description];
                  v40 = [v39 UTF8String];
                  *buf = 136315138;
                  v65 = v40;
                  _os_log_error_impl(&dword_2721E4000, v38, OS_LOG_TYPE_ERROR, "Missing orthograpy for entry: %s\n", buf, 0xCu);
                }

                exit(1);
              }

              v12 = [v10 objectForKeyedSubscript:@"pronunciations"];
              v13 = sub_27237511C(v11, *(a1 + 32), v12);
              v14 = [v10 objectForKeyedSubscript:@"frequency"];
              v15 = v14;
              v16 = &unk_28819E788;
              if (v14)
              {
                v16 = v14;
              }

              v17 = v16;

              v18 = [v10 objectForKeyedSubscript:@"tag"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = v18;
                v20 = @"string";
              }

              else
              {
                v19 = v10;
                v20 = @"tag";
              }

              v21 = [v19 objectForKeyedSubscript:v20];
              if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![(__CFString *)v21 length])
              {
                if (*(a1 + 40) != 1)
                {
                  v22 = sub_272374688();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v23 = [v10 description];
                    v24 = [v23 UTF8String];
                    *buf = 136315138;
                    v65 = v24;
                    _os_log_error_impl(&dword_2721E4000, v22, OS_LOG_TYPE_ERROR, "Skipping entry without word tag: %s\n", buf, 0xCu);
                  }

                  goto LABEL_26;
                }

                v21 = @"\\contact-first";
              }

              if ([(__CFString *)v21 rangeOfString:@"phonetic"]== 0x7FFFFFFFFFFFFFFFLL)
              {
                v22 = [objc_alloc(MEMORY[0x277D072A8]) initWithOrthography:v11 pronunciations:v13 tagName:v21 frequency:{objc_msgSend(v17, "integerValue")}];
                [v50 addObject:v22];
LABEL_26:

                goto LABEL_28;
              }

              [v49 setObject:v11 forKeyedSubscript:v21];
LABEL_28:
            }

            v8 = [v51 countByEnumeratingWithState:&v56 objects:v66 count:16];
          }

          while (v8);
        }

        v25 = 0x277D07000uLL;
        v26 = v50;
        if ([v49 count] && objc_msgSend(v50, "count"))
        {
          v27 = 0;
          do
          {
            v28 = [v26 objectAtIndexedSubscript:v27];
            v29 = [v28 tagName];
            v48 = [v29 stringByAppendingString:@"-phonetic"];

            v47 = objc_alloc(*(v25 + 680));
            v54 = [v26 objectAtIndexedSubscript:v27];
            v46 = [v54 orthography];
            v52 = [v26 objectAtIndexedSubscript:v27];
            v30 = [v52 pronunciations];
            v31 = [v26 objectAtIndexedSubscript:v27];
            v32 = [v31 tagName];
            v33 = [v26 objectAtIndexedSubscript:v27];
            v34 = [v33 frequency];
            v35 = [v49 objectForKeyedSubscript:v48];
            v36 = [v47 initWithOrthography:v46 pronunciations:v30 tagName:v32 frequency:v34 phoneticOrthography:v35];
            [v50 setObject:v36 atIndexedSubscript:v27];

            v26 = v50;
            v25 = 0x277D07000;

            ++v27;
          }

          while ([v50 count] > v27);
        }

        [*(a1 + 32) addWordWithParts:v26 templateName:v43];

        v5 = v45 + 1;
      }

      while (v45 + 1 != v44);
      v44 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v44);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void sub_272374D38(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = a3;
  v29 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v29)
  {
    v27 = *v39;
    do
    {
      v4 = 0;
      do
      {
        if (*v39 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v4;
        v5 = *(*(&v38 + 1) + 8 * v4);
        v32 = [MEMORY[0x277CBEB18] array];
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v31 = v5;
        v6 = [v31 countByEnumeratingWithState:&v34 objects:v44 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v35;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v35 != v8)
              {
                objc_enumerationMutation(v31);
              }

              v10 = *(*(&v34 + 1) + 8 * i);
              v11 = [v10 objectForKeyedSubscript:@"orth"];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v23 = sub_272374688();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  v24 = [v10 description];
                  v25 = [v24 UTF8String];
                  *buf = 136315138;
                  v43 = v25;
                  _os_log_error_impl(&dword_2721E4000, v23, OS_LOG_TYPE_ERROR, "Missing orthograpy for entry: %s\n", buf, 0xCu);
                }

                exit(1);
              }

              v12 = [v10 objectForKeyedSubscript:@"prons"];
              v13 = sub_27237511C(v11, *(a1 + 32), v12);
              v14 = [v10 objectForKeyedSubscript:@"freq"];
              v15 = v14;
              v16 = &unk_28819E788;
              if (v14)
              {
                v16 = v14;
              }

              v17 = v16;

              v18 = [v10 objectForKeyedSubscript:@"tag"];
              if ([v18 length])
              {
                v19 = [objc_alloc(MEMORY[0x277D072A8]) initWithOrthography:v11 pronunciations:v13 tagName:v18 frequency:{objc_msgSend(v17, "integerValue")}];
                [v32 addObject:v19];
              }

              else
              {
                v19 = sub_272374688();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  v20 = [v10 description];
                  v21 = [v20 UTF8String];
                  *buf = 136315138;
                  v43 = v21;
                  _os_log_error_impl(&dword_2721E4000, v19, OS_LOG_TYPE_ERROR, "Skipping entry without word tag: %s\n", buf, 0xCu);
                }
              }
            }

            v7 = [v31 countByEnumeratingWithState:&v34 objects:v44 count:16];
          }

          while (v7);
        }

        [*(a1 + 32) addWordWithParts:v32 templateName:v28];
        v4 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v29);
  }

  v22 = *MEMORY[0x277D85DE8];
}

id sub_27237511C(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if ([v7 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v17 = sub_272374688();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              v18 = [v13 description];
              v19 = [v18 UTF8String];
              *buf = 136315138;
              v25 = v19;
              _os_log_error_impl(&dword_2721E4000, v17, OS_LOG_TYPE_ERROR, "Invalid pron for entry: %s\n", buf, 0xCu);
            }

            exit(1);
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CBEB98] setWithArray:{v8, v20}];
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t sub_272375308()
{
  qword_2808938F0 = os_log_create("com.apple.mind.mi.namex", "VoiceActions");

  return MEMORY[0x2821F96F8]();
}

void sub_272375B18(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x277D072A8];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x277CBEB98] set];
  v10 = qword_280893910;
  v11 = v5;
  v16 = v11;
  if (v10 == -1)
  {
    v12 = v11;
  }

  else
  {
    dispatch_once(&qword_280893910, &unk_288190728);
    v12 = v16;
  }

  v13 = [qword_280893908 objectForKeyedSubscript:v12];

  v14 = [v13 integerValue];
  v15 = [v8 initWithOrthography:v7 pronunciations:v9 tag:v14];

  [*(a1 + 32) addObject:v15];
}

void sub_272375C34()
{
  v0 = qword_280893908;
  qword_280893908 = &unk_28819E848;
}

id sub_272375E10(void *a1, void *a2)
{
  v3 = a1;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 firstObject];

  if (v5)
  {
    v6 = [v5 stringByAppendingPathComponent:@"/AttentionDetection"];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v7 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:a2];

    if (v8)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v13 = 0;
    }

    else
    {
      v10 = [v3 stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

      v11 = [v6 stringByAppendingPathComponent:@"SpeechProfile"];
      v12 = [v11 stringByAppendingString:@"_"];
      v13 = [v12 stringByAppendingString:v10];

      v3 = v10;
    }
  }

  else if (a2)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:0];
    *a2 = v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_2723765A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

BOOL sub_2723765BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained != 0;

  return v2;
}

void sub_2723765F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2723766A8;
  block[3] = &unk_279E40848;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

uint64_t sub_2723766A8(uint64_t a1)
{
  if (qword_280893900 && [qword_280893900 isEqual:*(a1 + 32)])
  {
    return printf("Skipping profile update for %s because user data has not actually changed", [*(*(a1 + 40) + 24) UTF8String]);
  }

  objc_storeStrong(&qword_280893900, *(a1 + 32));
  v3 = [MEMORY[0x277CCAC38] processInfo];
  [v3 systemUptime];
  v5 = v4;

  [*(a1 + 40) adaptUserProfileWithUserData:*(a1 + 32)];
  v6 = [MEMORY[0x277CCAC38] processInfo];
  [v6 systemUptime];
  v8 = v7 - v5;

  printf("Contacts added to profile in %.2fms\n", v8 * 1000.0);
  v9 = *(*(a1 + 48) + 16);

  return v9();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}